/********************************************************************
 FileName:		SClib.c
 Dependencies:	See INCLUDES section
 Processor:		PIC18, PIC24 Microcontrollers
 Hardware:		This demo is natively intended to be used on Exp 16, LPC
 				& HPC Exp board. This demo can be modified for use on other hardware
 				platforms.
 Complier:  	Microchip C18 (for PIC18), C30 (for PIC24)
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

#include <string.h>
#include "./Smart Card/SClib.h"
#include "sc_config.h"

#ifdef __PIC24F__
	#include "./Smart Card/SCpic24.h"
#elif defined(__PIC32MX__)
	#include "./Smart Card/SCpic32.h"
#else
	#ifdef __18CXX
	#include "./Smart Card/SCpic18.h"
	#else
	#error "Only PIC18 and PIC24F currently supported by SmartCard Library"
	#endif
#endif

#define MAX_ATR_LEN 25

BYTE SC_CardATR[MAX_ATR_LEN];
WORD SC_ATRLen = 0;

BYTE SC_TA1, SC_TA2, SC_TA3;
BYTE SC_TB1, SC_TB2, SC_TB3;
BYTE SC_TC1, SC_TC2, SC_TC3;
BYTE SC_TD1, SC_TD2, SC_TD3;

BYTE* SC_ATR_HistBfr = NULL;
BYTE  SC_ATR_HistLen = 0;

typedef enum
{
	UNKNOWN,
	ATR_ON
} SC_STATUS;

SC_STATUS gCardState = UNKNOWN;
SC_ERROR SC_LastError = SC_ERR_NONE;

// Work Wait time for T=0 Protocol in units of etu's
unsigned long waitWorkTime;

unsigned long waitTime;	

//extern void WaitMicroSec( WORD MicroSec );
//#define WaitMilliSec(Waitms)  WaitMicroSec(Waitms*1000u)

#define SC_PROTO_T0		0

#ifdef TEST_RETRANSMISSION			
extern BOOL GenTxError; 	//Force an Error on Transmit, and recover automatically
extern BOOL GenRxError;	//Flag to create error on Data Receive
#endif

static void SC_WaitTime(void);

// CLA set to '00' = no command chaining, 
//                   no secure messaging, 
//					 basic logical channel.

/*******************************************************************************
  Function:
    void SC_Initialize(void)
	
  Description:
    This function initializes the smart card library

  Precondition:
    None

  Parameters:
    None

  Return Values:
    None
	
  Remarks:
    None
  *****************************************************************************/
void SC_Initialize()
{
	//Initialize the low level driver
	SCdrv_InitUART();
}

/*******************************************************************************
  Function:
	BOOL SC_CardPresent(void)	
  
  Description:
    This macro checks if card is inserted in the socket

  Precondition:
    SC_Initialize() is called

  Parameters:
    None

  Return Values:
    TRUE if Card is inserted, otherwise return FALSE
	
  Remarks:
    None
  *****************************************************************************/
BOOL SC_CardPresent()
{
	return SCdrv_CardPresent();
}	

/*******************************************************************************
  Function:
	BOOL SC_PowerOnATR(void)	
  
  Description:
    This function performs the power on sequence of the SmartCard and 
	interprets the Answer-to-Reset data received from the card.

  Precondition:
    SC_Initialize() is called, and card is present

  Parameters:
    None

  Return Values:
    TRUE if Answer to Reset (ATR) was successfuly received and processed
	
  Remarks:
    None
  *****************************************************************************/
BOOL SC_PowerOnATR()
{
	if( !SCdrv_CardPresent() )  //check card present
	{
		gCardState = UNKNOWN;
		return FALSE;
	}
		
	SCdrv_SetSwitchCardReset(0);  //make sure card in reset
	WaitMilliSec(10);
	
	gCardState = UNKNOWN;
	SC_LastError = SC_ERR_NONE;
	memset( SC_CardATR, 0xFF, sizeof SC_CardATR );
	SC_ATR_HistLen = 0;
	SC_ATR_HistBfr = NULL;
		
	#ifdef ENABLE_SC_POWER_THROUGH_PORT_PIN
		SCdrv_SetSwitchCardPower(1);	//Turn on power
	#endif

	WaitMilliSec(40);

	//Start the clock
	SCdrv_EnableClock();	
	
	WaitMilliSec(50);

	SCdrv_SetSwitchCardReset(1);  //Release card reset line. set to high state

	SC_ATRLen = 0;

	while(1)  ///////////////// Read Answer to RESET
	{
		if( SCdrv_GetRxData( &SC_CardATR[SC_ATRLen], 50000 ) ) //wait for data byte from CARD
		{
			SC_ATRLen++;
			if( SC_ATRLen == MAX_ATR_LEN )
				break;
		}
		else
			break;	//no data
	}
		
	//decode the ATR values
	if( SC_ATRLen >= 3 ) //min TS, T0 and setup byte
	{
		BYTE T0 = SC_CardATR[1];	
		BYTE atrIdx = 2;
		
		//Extract Interface bytes TAx TBx TCx and TDx from ATR
		
		SC_TA1 = SC_TB1 = SC_TC1 = SC_TD1 = 0;
		SC_TA2 = SC_TB2 = SC_TC2 = SC_TD2 = 0;
		SC_TA3 = SC_TB3 = SC_TC3 = SC_TD3 = 0;
		
		// Read the global interface bytes
		
		if( T0 & 0x10 )
			SC_TA1 = SC_CardATR[atrIdx++];
			
		if( T0 & 0x20 )
			SC_TB1 = SC_CardATR[atrIdx++];
			
		if( T0 & 0x40 )
			SC_TC1 = SC_CardATR[atrIdx++];
			
		if( T0 & 0x80 )
			SC_TD1 = SC_CardATR[atrIdx++];
			
		if( (SC_TD1 & 0x0F) != SC_PROTO_T0 )
		{
			SC_LastError = SC_ERR_CARD_NOT_SUPPORTED;
			SC_Shutdown();
			return FALSE;	//only support T0 protocol
		}
		
		//read the next set of interface bytes if present
		if( SC_TD1 & 0xF0 )
		{
			if( SC_TD1 & 0x10 )
				SC_TA2 = SC_CardATR[atrIdx++];
				
			if( SC_TD1 & 0x20 )
				SC_TB2 = SC_CardATR[atrIdx++];
				
			if( SC_TD1 & 0x40 )
				SC_TC2 = SC_CardATR[atrIdx++];
			else
				SC_TC2 = 10;	//Default value for WI
				
			if( SC_TD1 & 0x80 )
				SC_TD2 = SC_CardATR[atrIdx++];
				
			if( SC_TD2 & 0xF0 )
			{
				if( SC_TD2 & 0x10 )
					SC_TA3 = SC_CardATR[atrIdx++];
					
				if( SC_TD2 & 0x20 )
					SC_TB3 = SC_CardATR[atrIdx++];
					
				if( SC_TD2 & 0x40 )
					SC_TC3 = SC_CardATR[atrIdx++];
					
				if( SC_TD2 & 0x80 )
					SC_TD3 = SC_CardATR[atrIdx++];				
			}
		}
		else
		{
			SC_TC2 = 10;	//Default value for WI
		}
		
		SC_ATR_HistLen = T0 & 0x0F;
		SC_ATR_HistBfr = (SC_ATR_HistLen)?(&SC_CardATR[atrIdx]):NULL;
		SC_WaitTime();
		gCardState = ATR_ON;
		return TRUE;
	}
	else
	{
		// Not a Valid ATR Reponse
		SC_LastError = SC_ERR_BAR_OR_NO_ATR_RESPONSE;
		gCardState = UNKNOWN;	
		SC_Shutdown();	
		return FALSE;
	}	
}


/*******************************************************************************
  Function:
	BOOL SC_DoPPS(void)	
  
  Description:
    This function configures the baud rate of the PIC uart to match with
	Answer-to-Reset data from smartcard.

  Precondition:
    SC_PowerOnATR was success

  Parameters:
    None

  Return Values:
    TRUE if Baud rate is supported by the PIC
	
  Remarks:
    This function is called when SC_PowerOnATR() returns TRUE.  If the Baud 
	rate configration file inside the card is changed, these function should 
	be called again for the new baud to take effect.
  *****************************************************************************/
BOOL SC_DoPPS()
{
	if( !SCdrv_CardPresent() || gCardState != ATR_ON )
		return FALSE;
	
	if( SC_TA1 == 0x11 )	//card using 9600 baud.  no need to configure
		return TRUE;

	SCdrv_SendTxData( 0xFF );
	SCdrv_SendTxData( 0x10 );
	SCdrv_SendTxData( SC_TA1 );
	SCdrv_SendTxData( 0xFF ^ 0x10 ^ SC_TA1 );

	WaitMilliSec(12);

	SCdrv_SetBRG( SC_TA1 );	//tell the driver to configure baud rate
	waitTime = (waitWorkTime * (FCY/baudRate))/4;
	return TRUE;
}

/*******************************************************************************
  Function:
    int SC_GetCardState(void)
	
  Description:
    This function returns the current state of SmartCard

  Precondition:
    SC_Initialize is called.

  Parameters:
    None

  Return Values:
    SC_STATE_CARD_NOT_PRESENT:		No Card Detected
    SC_STATE_CARD_ACTIVE:			Card is powered and ATR received
    SC_STATE_CARD_INACTIVE:			Card present but not powered
	
  Remarks:
    None
  *****************************************************************************/
int SC_GetCardState()
{
	if( !SCdrv_CardPresent() )
		return SC_STATE_CARD_NOT_PRESENT;
	else if( gCardState == ATR_ON )
		return SC_STATE_CARD_ACTIVE;
	else
		return SC_STATE_CARD_INACTIVE;
}		

/*******************************************************************************
  Function:
    void SC_Shutdown(void)
	
  Description:
    This function Performs the Power Down sequence of the SmartCard

  Precondition:
    SC_Initialize is called.

  Parameters:
    None

  Return Values:
    None
	
  Remarks:
    None
  *****************************************************************************/
void SC_Shutdown()
{
	SCdrv_SetSwitchCardReset(0);	//bring reset line low
	WaitMilliSec(1);
	SCdrv_CloseUART();			//shut down UART and remove any pullups
	#ifdef ENABLE_SC_POWER_THROUGH_PORT_PIN
		SCdrv_SetSwitchCardPower(0);   //Turn Off Card Power
	#endif
	gCardState = UNKNOWN;
}	


/*******************************************************************************
  Function:
    void SC_WaitTime(void)
	
  Description:
    This function calculates the work wait time for T=0 Protocol

  Precondition:
    SC_PowerOnATR is called.

  Parameters:
    None

  Return Values:
    None
	
  Remarks:
    This function is planned to calculate CWT & BWT for T=1 protocol in future.
  *****************************************************************************/
static void SC_WaitTime(void)
{
	BYTE dCode;
	float factorD = 1;
	
	dCode = SC_TA1 & 0x0F;
	
	// Calculate Factor 'D' from TA1 value
	switch(dCode)
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
	
	// If SC_TC2 is transmitted by the card then calculate work wait time
	// or else use default value
	if (SC_TC2 != 0)
	{
		waitWorkTime = (unsigned long)(SC_TC2 * factorD * 960);
	}
	else
	{
		waitWorkTime = (unsigned int)960 * 10;
	}

	waitTime = (waitWorkTime * (FCY/baudRate))/4;
}	
	
/*******************************************************************************
  Function:
	BOOL SC_Transact(SC_APDU_Cmd* pAPDU, SC_APDU_Resp* pAPDUResp, BYTE* pAPDUData)	
  
  Description:
    This function Sends the ISO 7816-4 compaliant APDU commands to the card.  
	It also receive the expected response from the card as defined by the 
	command data.

  Precondition:
    SC_DoPPS was success

  Parameters:
    SC_APDU_Cmd* pAPDU	- Pointer to APDU Command Structure 
	SC_APDU_Resp* pResp - Pointer to APDU Response structure
			BYTE* pResp - Pointer to the Command/Response Data buffer

  Return Values:
    TRUE if transaction was success, and followed the ISO 7816-4 protocol. 
	
  Remarks:
    In the APDU command structure, the LC field defines the number of bytes to 
	transmit from the APDUdat array.  This array can hold max 256 bytes, which 
	can be redefined by the user.  The LE field in APDU command defines the number
	of bytes to receive from the card.  This array can hold max 256 bytes, which 
	can be redefined by the user.
	
  *****************************************************************************/
BOOL SC_Transact(SC_APDU_Cmd* pAPDU, SC_APDU_Resp* pAPDUResp, BYTE* pAPDUData)
{
	BYTE* pBfr;
	WORD Idx, RespIdx = 0;
	BYTE rsDat;

	memset( pAPDUResp, 0, sizeof(SC_APDU_Resp) );	
	
	if( !SCdrv_CardPresent() || gCardState != ATR_ON )
	{
		SC_LastError = SC_ERR_RSV1;
		return FALSE;	
	}	
	
	pBfr = (BYTE*)pAPDU;
	
	//Send the Command Bytes: CLA INS P1 P2
	for( Idx = 0; Idx < 4; Idx++ )
	{
#ifdef TEST_RETRANSMISSION					
		if( Idx == 1 )
		{
			GenTxError = TRUE;	//Testing Retransmission
		}
#endif

		SCdrv_SendTxData( pBfr[Idx] );
	}	
	
	//Now transmit LE or LC field if non zero
	if( pAPDU->LC )
		SCdrv_SendTxData( pAPDU->LC );
	else if( pAPDU->LE )
		SCdrv_SendTxData( pAPDU->LE );

	//Get the initial response
	if( SCdrv_GetRxData( &rsDat, waitTime ) ) //wait for data byte from CARD
	{
		if( (rsDat & 0xF0) == 0x60 || (rsDat & 0xF0) == 0x90 ) //rcvd status codes
		{
			pAPDUResp->SW1 = rsDat; //save SW1
			
			//now receive SW2
			if( SCdrv_GetRxData( &rsDat, 10000 ) ) //wait for data byte from CARD
				pAPDUResp->SW2 = rsDat;
				
			return TRUE; //done
		}
		//else   no not need to write the ack to user buffer.
		//	pAPDUResp->RespDat[RespIdx++] = rsDat; //save the ack
	}
	else
	{
		SC_LastError = SC_ERR_RSV2;
		return FALSE;	//no response received
	}	
		
	if( pAPDU->LC )		//transmit app data if any
	{
		WaitMicroSec( 700 );	//cannot send the message data right away after the initial response
		
		for( Idx = 0; Idx < pAPDU->LC; Idx++ )
			SCdrv_SendTxData( pAPDUData[Idx] );
	}
	else if( pAPDU->LE ) //or rcv response if any
	{
		for( Idx = 0; Idx < pAPDU->LE; Idx++ )
		{
#ifdef TEST_RETRANSMISSION			
			if( Idx == 2 )
			{
				GenRxError = TRUE;	//Testing Error Detection and Retransmission
			}
#endif
			if( SCdrv_GetRxData( &rsDat, 10000 ) ) //wait for data byte from CARD
				pAPDUData[RespIdx++] = rsDat;	
		}		
	}	

WaitResp:
	//recive staus SW1 and SW2
	if( SCdrv_GetRxData( &rsDat, waitTime ) )
	{
		if( (rsDat & 0xF0) == 0x60 || (rsDat & 0xF0) == 0x90 ) //rcvd status codes
		{
			pAPDUResp->SW1 = rsDat; //save SW1

			if( pAPDUResp->SW1 == 0x60 ) //card wants us to wait
				goto WaitResp;
			
			//now receive SW2
			if( SCdrv_GetRxData( &rsDat, 10000 ) ) //wait for data byte from CARD
				pAPDUResp->SW2 = rsDat;
			
			return TRUE; //done
		}
		else
		{
			SC_LastError = SC_ERR_RSV3;
			return FALSE;
		}	
	}
	else
	{
		SC_LastError = SC_ERR_RSV5;
		return FALSE;
	}	

}
	 

