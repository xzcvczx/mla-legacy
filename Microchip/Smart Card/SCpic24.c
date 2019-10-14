/********************************************************************
 FileName:		SCpic24.c
 Dependencies:	See INCLUDES section
 Processor:		PIC24 Microcontrollers
 Hardware:		This demo is natively intended to be used on Exp 16 board.
 				This demo can be modified for use on other hardware platforms.
 Complier:  	Microchip C30 (for PIC24)
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

#include 	"string.h"
#include	"GenericTypeDefs.h"
#include 	"sc_config.h"
#include    "./Smart Card/pps-macro.h"
#include    "./Smart Card/SCpic24.h"

BOOL GenTxError 		= FALSE; 	//Force an Error on Transmit, and recover automatically
BOOL GenRxError 		= FALSE;	//Flag to create error on Data Receive
BOOL SysErrorDetected 	= FALSE; 	//I/O data line is permanently low
BYTE TxRetryCounter 	= 0;

unsigned long long baudRate;

////////////////////////////////////////////////////
////////////////////////////////////////////////////
void SCdrv_SendTxData( BYTE dat )
{
	if( GenTxError )
		U1MODEbits.PDSEL = 2;	//odd parity to generate transmit error
	
	U1STAbits.UTXEN = 1;
	U1TXREG = dat;		
	while( !U1STAbits.TRMT )
	{
		Nop();
		Nop();
	}	
	U1STAbits.UTXEN = 0;

	U1MODEbits.UARTEN = 0;

	if( GenTxError )
	{
		U1MODEbits.PDSEL = 1;	//switch back to normal even parity.
		GenTxError = FALSE;   //we have already caused the error, so clear this flag for correct transmission
	}
	
	BOOL NoErr = TRUE;
	WaitMicroSec( 1 );
	
	if( !SCdrv_GetRxPinData() )  // The Receiver did not like our data. it is pulling line low 
	{					  // to indicate PE or FR errors
		NoErr = FALSE;
//		LATAbits.LATA7 = 1;

		WaitMicroSec((U1BRG * 170)/371);  //wait two etu before repeating
		
//		LATAbits.LATA7 = 0;
		
		U1MODEbits.UARTEN = 1;
						
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
	{	
		WaitMicroSec((U1BRG * 140)/371);  //wait 1.5 etu
	}

	if( NoErr ) //no error detected
		TxRetryCounter = 0;

	U1MODEbits.UARTEN = 1;
	
	U1STAbits.OERR = 0;	//clear any overflow error that we caused
	
	while(1)	// remove rx data recvd from our Tx line
	{
		WORD temp;		
		if( U1STAbits.URXDA )
			temp = U1RXREG;
		else
			break;
	}	
}

/////////////////////////////////////////////
/////////////////////////////////////////////
BOOL SCdrv_GetRxData( BYTE* pDat, unsigned long nTrys )
{
	BOOL RxStart = FALSE;

	//wait for data byte
	while( !U1STAbits.URXDA && nTrys-- )
	{
		if( (SCdrv_GetRxPinData() == 0) && !RxStart )
		{
			RxStart = TRUE;
			//TIMER_4_off();	//Rx Reception has started. Turn off interrupts so we can scan the line at max speed
			
			if( GenRxError )  // Cause an error on Reception 
			{
				SCdrv_TxPin_Direction(0);	//pull line low to cause parity error
				WaitMicroSec(4*5);    //wait 5 etu @ 250kpbs
				SCdrv_TxPin_Direction(1);
				GenRxError = FALSE;
			}	
		}	
	}
	
	if( !U1STAbits.URXDA )
		return FALSE;
	
//	LATAbits.LATA7 = 1; // Logic analyzer sync signal 
	
	if( U1STAbits.PERR )	//Parity Error detected
	{
		SCdrv_TxPin_Direction(0);  //pull it low to tell the card that there was error receiving data
		U1MODEbits.RXINV = 1;  //do not recognize this low state as a valid start bit
					
		//Read the data from UART to clear the error flag
		*pDat = U1RXREG;		
	
		//TIMER_4_on(); // restart timer interrupts
		
		WaitMicroSec((U1BRG * 116)/371);  //for 9600 baud, 116 us. for 250kbps, 5us

		SCdrv_TxPin_Direction(1); //release RD10. Card should retransmit now.
//		LATAbits.LATA7   = 0;
		U1MODEbits.RXINV = 0;

		return SCdrv_GetRxData(pDat, 1000);	//Read the data from retransmission
	}
	else
	{
		//Read the data from UART
		*pDat = U1RXREG;
	}

//	LATAbits.LATA7 = 0;  // Logic analyzer sync signal 

	//TIMER_4_on();  // restart timer interrupts

	return TRUE;
}

///////////////////////////////////////////////////
//////////////////////////////////////////////////
void SCdrv_SetBRG( BYTE SpeedCode )
{
	float factorD = 1;
	unsigned int factorF = 372;
	BYTE tempCode;

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
			U1BRG = (unsigned int)((unsigned long)((unsigned long)FCY/(4 * (unsigned long)9600 * factorD)) - 1);   //Internal clk used in card
		}
		else	// If externa; clock used to drive Smart Card
		{
			baudRate = (unsigned long long)((unsigned long long)((unsigned long long)REF_CLOCK_TO_SMART_CARD * factorD)/factorF);

			U1BRG = (unsigned int)((unsigned long)((unsigned long)FCY/(4 * baudRate)) - 1);   //10752bps with 4Mhz clk to card
		}

	#else	// If internal clock used in Smart Card

		U1BRG = (unsigned int)((unsigned long)((unsigned long)FCY/(4 * (unsigned long)9600 * factorD)) - 1);   //Internal clk used in card

	#endif
}	
	
///////////////////////////////////////////////////
//////////////////////////////////////////////////
void SCdrv_CloseUART(void)
{
	SCdrv_DisableClock();		// turn off Clock
	U1MODEbits.UARTEN = 0;  // Turn off UART
	U1STAbits.OERR = 0;;

	SCdrv_DisableTxPinPullUp();

	SCdrv_DisableRxPinPullUp();	
}

///////////////////////////////////////////////////
//////////////////////////////////////////////////
void SCdrv_InitUART(void)
{
	#ifdef ENABLE_SC_POWER_THROUGH_PORT_PIN
		SCdrv_PowerPin_Direction(0);	//set RG8 as output to power the Smart Card
	#endif
	
	SCdrv_ResetPin_Direction(0);	//set RD0 as output for Smart Card Reset Pin
	SCdrv_CardPresent_Direction(1);   //RD3 Input Card Present - SmartCard Conn Active Hi
	SCdrv_SimPresent_Direction(1);   //RG12 Input Card Present - SimCard Conn Active Low
	
	SCdrv_SetTxPinData(0);
	SCdrv_TxPin_Direction(1);	// use as gpio to pull the line low

	//Turn on the pull-up on both RX and TX line for faster transitions.
	SCdrv_EnableTxPinPullUp();
	SCdrv_EnableRxPinPullUp();
	SCdrv_EnableCardPresentPinPullUp();
	SCdrv_EnableSimPresentPinPullUp();

	#ifdef ENABLE_SC_POWER_THROUGH_PORT_PIN
		SCdrv_SetSwitchCardPower(0);	//Turn off power to smart card
	#endif

	SCdrv_SetSwitchCardReset(0); //keep card in reset state		

	MapUART1RxPin();		// Map UART1 Rx pin
	MapUART1TxPin();		// Map UART1 Tx pin

	Scdrv_ClockSet();

	// Initial Baud Rate of Smart Card for external Clock
	#ifdef ENABLE_SC_EXTERNAL_CLOCK
	
		baudRate = (unsigned long long)REF_CLOCK_TO_SMART_CARD/372;

		U1BRG = (unsigned int)((unsigned long)((unsigned long)FCY/(4 * baudRate)) - 1);   //10752bps with 4Mhz clk to card
	
	#else
	
		U1BRG = (unsigned int)((unsigned long)((unsigned long)FCY/(4 * (unsigned int)9600)) - 1);   //Internal clk used in card

	#endif

	U1MODEbits.PDSEL	= 1;	//8bits + even parity
	U1MODEbits.STSEL	= 0;	//1 stop bit
	U1MODEbits.BRGH		= 1;
}





