/********************************************************************
 FileName:		SCpic18.c
 Dependencies:	See INCLUDES section
 Processor:		PIC18 Microcontrollers
 Hardware:		This demo is natively intended to be used on LPC & HPC Exp board.
 				This demo can be modified for use on other hardware platforms.
 Complier:  	Microchip C18 (for PIC18)
 Company:		Microchip Technology, Inc.

 Software License Agreement:

 The software supplied herewith by Microchip Technology Incorporated
 (the “Company”) for its PIC® Microcontroller is intended and
 supplied to you, the Company’s customer, for use solely and
 exclusively on Microchip PIC Microcontroller products. The
 software is owned by the Company and/or its supplier, and is
 protected under applicable copyright laws. All rights are reserved.
 Any use in violation of the foregoing restrictions may subject the
 user to criminal sanctions under applicable laws, as well as to
 civil liability for the breach of the terms and conditions of this
 license.

 THIS SOFTWARE IS PROVIDED IN AN “AS IS” CONDITION. NO WARRANTIES,
 WHETHER EXPRESS, IMPLIED OR STATUTORY, INCLUDING, BUT NOT LIMITED
 TO, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
 PARTICULAR PURPOSE APPLY TO THIS SOFTWARE. THE COMPANY SHALL NOT,
 IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL OR
 CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.

********************************************************************
 File Description:

 Change History:
  Rev   Description
  ----  -----------------------------------------
  1.0   Initial release
********************************************************************/

#include 	<p18cxxx.h>
#include	"stdio.h"
#include 	"Smart Card\pps18.h"
#include 	"string.h"
#include	"GenericTypeDefs.h"
#include	"Smart Card\SCpic18.h"
#include    "sc_config.h"

BOOL GenTxError 		= FALSE; 	//Force an Error on Transmit, and recover automatically
BOOL GenRxError 		= FALSE;	//Flag to create error on Data Receive
BOOL SysErrorDetected 	= FALSE; 	//I/O data line is permanently low
BYTE TxRetryCounter 	= 0;

unsigned int gBitTimeDelay;
unsigned int bitTime;
unsigned int initialBaudReg;
unsigned char refconVal;

unsigned long long baudRate;

////////////////////////////////////////
// Generate delay in microsec resolution
// 0 - 2  us
// 1 - 3 us
// 10 - 12 us
// ...
////////////////////////////////////////
void WaitMicroSec( WORD MicroSec )
{
	while( MicroSec )
	{
		Nop();
		MicroSec--;
	}
}	

void WaitMilliSec( WORD ms )
{
	while( ms-- )
		WaitMicroSec( 800 );
}

///////////////////////////////////
// precalculate 1 bit time microsec used for Delay counter 


////////////////////////////////////////////////////
////////////////////////////////////////////////////
void SCdrv_SendTxData( BYTE dat )
{
	BOOL NoErr = TRUE;
	
	//calculate parity
	_asm
     swapf    dat,0,0  //reducing byte to nibble
     xorwf    dat,0,0
     addlw    0x41    // bit 1 becomes B0^B1 and bit 7 becomes B6^B7
     iorlw    0x7C    // for carry propagation from bit 1 to bit 7
     addlw    2       // Done! the parity bit is bit 7 of W
	_endasm
	
	TXSTAbits.TX9D = WREG >> 7; //copy calc parity bit to the transmitter
	
	if( GenTxError )
	{
		GenTxError = 0;
		TXSTAbits.TX9D = !TXSTAbits.TX9D; //cause a parity error for testing
	}	
		
	TXREG = dat;		
	TXSTAbits.TXEN = 1;

	while( !TXSTAbits.TRMT ) //wait for Tx Complete
	{
		Nop();
	}	
	
	TXSTAbits.TXEN = 0;

	//turn off uart
	RCSTAbits.SPEN = 0;

//	LATBbits.LATB5 = 1;		
	
	if( !SCdrv_GetRxPinData() )  // The Receiver did not like our data. it is pulling line low 
	{					  // to indicate PE or FR errors
		NoErr = FALSE;
		WaitMicroSec( (WORD)gBitTimeDelay );  //wait two etu before repeating
	
		RCSTAbits.SPEN = 1;
//		LATBbits.LATB5 = 0;		
						
		//now retransmit the data
		if( TxRetryCounter < 5 )
		{
			TxRetryCounter++;
			SCdrv_SendTxData(dat);
		}
		else
			SysErrorDetected = TRUE;		//Line permanent collision (or held Low) detected
	}
	else
		WaitMicroSec(gBitTimeDelay );
	
	if( NoErr ) //no error detected
		TxRetryCounter = 0;

	RCSTAbits.SPEN = 1;
//	LATBbits.LATB5 = 0;		
	
	if( RCSTA & 0x6 )	//FERR or OERR occured
	{
		RCSTAbits.CREN = 0; //clear error flags
		RCSTAbits.CREN = 1;
	}	

	while(1)	// remove rx data recvd from our Tx line
	{
		BYTE temp;		
		if( PIR1bits.RCIF )
		{
			temp = RCREG;
		}	
		else
			break;
	}	
}

/////////////////////////////////////////////
/////////////////////////////////////////////
BOOL SCdrv_GetRxData( BYTE* pDat, unsigned long nTrys )
{
	BYTE dat=0;
	BOOL RxStart = FALSE;

	if( GenRxError )
	{
		GenRxError = 0;	
		goto __RcvWithError;
	}
	
	//wait for data byte
	while( !(PIR1 & 0x20) )
	{
		if( nTrys-- == 0 )
			return FALSE;
	}
	
	//calculate parity
	_asm
     swapf    RCREG,0,0  //reducing byte to nibble
     xorwf    RCREG,0,0
     addlw    0x41    // bit 1 becomes B0^B1 and bit 7 becomes B6^B7
     iorlw    0x7C    // for carry propagation from bit 1 to bit 7
     addlw    2       // Done! the parity bit is bit 7 of W
     RLNCF    WREG,0,0		//rotate left W reg
     xorwf    RCSTA,0,0
	_endasm

	if( WREG & 1 )	//Parity Error detected
	{
		RCSTAbits.SPEN = 0;
		SCdrv_TxPin_Direction(0);  //pull it low to tell the card that there was error receiving data
		//?LATBbits.LATB5 = 1; // Logic analyzer sync signal 
		
		WaitMicroSec(gBitTimeDelay );
				
		SCdrv_TxPin_Direction(1); //release line. Card should retransmit now.
		//?LATBbits.LATB5 = 0;
				
		RCSTAbits.SPEN = 1;
		return SCdrv_GetRxData( pDat, nTrys );	//Read the data from retransmission 
	}
	goto __Done;
///////////////////////////////
__RcvWithError:  //the code below is used to recv data with an error so it can tell the card to retry transmission.  for testing only

	//wait for data byte
	while( !(PIR1 & 0x20) )
	{
		if( nTrys-- == 0 )
			return FALSE;
	}
	
//	LATBbits.LATB5 = 1; // Logic analyzer sync signal 
		
	//calculate parity
	_asm
     swapf    RCREG,0,0  //reducing byte to nibble
     xorwf    RCREG,0,0
     addlw    0x41    // bit 1 becomes B0^B1 and bit 7 becomes B6^B7
     iorlw    0x7C    // for carry propagation from bit 1 to bit 7
     addlw    2       // Done! the parity bit is bit 7 of W
     RLNCF    WREG,0,0		//rotate left W reg
     xorwf    RCSTA,0,0
	_endasm

	if( !(WREG & 1) )	//Parity Error detected 
	{
		RCSTAbits.SPEN = 0;
		SCdrv_TxPin_Direction(0);  //pull it low to tell the card that there was error receiving data

		WaitMicroSec(gBitTimeDelay );
				
		SCdrv_TxPin_Direction(1); //release line. Card should retransmit now.
//		LATBbits.LATB5 = 0;
		
		RCSTAbits.SPEN = 1;
		return SCdrv_GetRxData( pDat, nTrys );	//Read the data from retransmission 
	}

__Done:	
	*pDat = RCREG;
	return TRUE;
}


///////////////////////////////////////////////////
//////////////////////////////////////////////////
void SCdrv_SetBRG( BYTE SpeedCode )
{
	float factorD = 1;
	unsigned int factorF = 372;
	BYTE tempCode;
	unsigned int baudReg;

	tempCode = SpeedCode & 0x0F;
	
	// Calculate Factor 'D' from TA1 value
	switch(tempCode)
	{
		case 0x00:
		case 0x07:
		case 0x01:
					break;

		case 0x02:
					factorD = 2;
					break;

		case 0x03:
					factorD = 4;
					break;

		case 0x04:
					factorD = 8;
					break;

		case 0x05:
					factorD = 16;
					break;

		case 0x06:
					factorD = 32;
					break;

		case 0x08:
					factorD = 12;
					break;

		case 0x09:
					factorD = 20;
					break;

		case 0x0A:
					factorD = 0.5;
					break;

		case 0x0B:
					factorD = 0.25;
					break;

		case 0x0C:
					factorD = 0.125;
					break;

		case 0x0D:
					factorD = 0.0625;
					break;

		case 0x0E:
					factorD = 0.03125;
					break;

		case 0x0F:
					factorD = 0.015625;
					break;
	}

	// If you are not using internal clock in Smart Card & are 
	// using external clock to drive Smart Card than calculate 
	// factor 'F' from TA1 value
	#ifdef ENABLE_SC_EXTERNAL_CLOCK

		tempCode = (SpeedCode & 0xF0) >> 4;
		
	// Calculate Factor 'F' from TA1 value
		switch(tempCode)
		{
			case 0x00:
			case 0x07:
			case 0x08:
			case 0x0E:
			case 0x0F:
						break;
	
			case 0x01:
						factorF = 372;
						break;
	
			case 0x02:
						factorF = 558;
						break;

			case 0x03:
						factorF = 744;
						break;
	
			case 0x04:
						factorF = 1116;
						break;
	
			case 0x05:
						factorF = 1488;
						break;
	
			case 0x06:
						factorF = 1860;
						break;
	
			case 0x09:
						factorF = 512;
						break;
	
			case 0x0A:
						factorF = 768;
						break;
	
			case 0x0B:
						factorF = 1024;
						break;
	
			case 0x0C:
						factorF = 1536;
						break;
	
			case 0x0D:
						factorF = 2048;
						break;	
		}

		if(tempCode == 0x00)	// If internal clock used in Smart Card
		{
			baudReg = (unsigned int)(FCY/(9600 * factorD) - 1);
			SPBRG = (unsigned char)baudReg;
			SPBRGH = (unsigned char)(baudReg >> 8);
		}
		else	// If externa; clock used to drive Smart Card
		{
			baudRate = (REF_CLOCK_TO_SMART_CARD * factorD)/factorF;
			baudReg = (unsigned int)((FCY/baudRate) - 1);
			SPBRG = (unsigned char)baudReg;
			SPBRGH = (unsigned char)(baudReg >> 8);
		}

	#else	// If internal clock used in Smart Card

		baudReg = (unsigned char)(FCY/(9600 * factorD) - 1);
		SPBRG = (unsigned char)baudReg;
		SPBRGH = (unsigned char)(baudReg >> 8);

	#endif
	
	//recalculate bit time
	gBitTimeDelay = baudReg;
	gBitTimeDelay *= bitTime;	//micro sec for 1 bit @ 9.6kbps
	gBitTimeDelay /= initialBaudReg; 		
}	

///////////////////////////////////////////////////
//////////////////////////////////////////////////
void SCdrv_CloseUART(void)
{
	SCdrv_DisableClock();	//turn off Clock
	RCSTAbits.SPEN = 0;		//turn off UART
	RCSTAbits.CREN = 0;
}


///////////////////////////////////////////////////
//////////////////////////////////////////////////
void SCdrv_InitUART(void)
{
	SCdrv_PowerPin_Direction(0);	//set RB0 as output to power the Smart Card
	SCdrv_ResetPin_Direction(0);	//set RB4 as output for Smart Card Reset Pin
	SCdrv_CardPresent_Direction(1);  //RB3 Input Card Present
	SCdrv_SimPresent_Direction(1);   //RB1 Input Card Present
	
//	LATBbits.LATB5 	 = 0;
//	TRISBbits.TRISB5 = 0;   //RB5 Logic Analyzer

	SCdrv_SetTxPinData(0);
	SCdrv_TxPin_Direction(1);	// TX1 also act as gpio to pull the line low
	SCdrv_RxPin_Direction(1);	
	
	SCdrv_EnableCardSimPresentPinPullUp();	//enable pull up, active low

	SCdrv_SetSwitchCardPower(0);	//Turn off power to smart card
	SCdrv_SetSwitchCardReset(0); //keep card in reset state		

	// Set the clock value that you want to trigger the smart card.
	// Dont enable the clock,only set it.
	Scdrv_ClockSet();

	baudRate = REF_CLOCK_TO_SMART_CARD/(unsigned int)372;

	initialBaudReg = ((FCY/baudRate) - 1);
	SPBRG = (unsigned char)initialBaudReg;
	SPBRGH = (unsigned char)(initialBaudReg >> 8);
	bitTime = (1000000UL)/baudRate + 1;

	gBitTimeDelay = initialBaudReg;
	gBitTimeDelay *= bitTime;	//micro sec for 9.6k baud
	gBitTimeDelay /= initialBaudReg;  

	
	TXSTAbits.TX9  = 1; //select 9 bit transmission
	TXSTAbits.SYNC = 0; //Async mode	
	TXSTAbits.BRGH = 1;
	BAUDCONbits.BRG16 = 1;

	RCSTAbits.CREN = 1;
	RCSTAbits.RX9  = 1;
}


