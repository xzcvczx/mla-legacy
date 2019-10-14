/********************************************************************
 FileName:     	ccid-cmds.c
 Dependencies:	See INCLUDES section
 Processor:		PIC18 or PIC24 USB Microcontrollers
 Hardware:		The code is natively intended to be used on the following
 				hardware platforms: PICDEM™ FS USB Demo Board,
 				PIC18F87J50 FS USB Plug-In Module, or
 				Explorer 16 + PIC24 USB PIM.  The firmware may be
 				modified for use on other USB platforms by editing the
 				HardwareProfile.h file.
 Complier:  	Microchip C18 (for PIC18) or C30 (for PIC24)
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

*********************************************************************/


#include "HardwareProfile.h"
#include "USB/usb.h"
#include "USB/usb_function_ccid.h"
#include "./Smart Card/SClib.h"
#include "sc_config.h"


extern unsigned char OUTPacket[64];	//User application buffer for receiving and holding OUT packets sent from the host
extern unsigned char INPacket[64];		//User application buffer for sending IN packets to the host
#pragma udata
extern USB_HANDLE USBBulkOutHandle;
extern USB_HANDLE USBBulkInHandle;
extern USB_HANDLE USBInterruptInHandle;
#pragma udata

/** PRIVATE PROTOTYPES *********************************************/
void UsbCcidPcToRdrXfrBlock(void);


/******************************************************************************
    Function:
        void USB_CCID_SetParameters(void)

    Summary:
        This macro is used set the CCID parameters.

    Description:
        This macro is used set the CCID parameters as and when there is request from the host.

        Typical Usage:
        <code>
            USB_CCID_SetParameters();
        </code>

        This function is not used  for CDC devices that do not support PC_to_RDR_SetParameters Command.

    PreCondition:
        None

    Parameters:
        None

    Return Values:
        None

    Remarks:
        None

 *****************************************************************************/
#define USB_CCID_SetParameters()    SC_DoPPS()

/******************************************************************************
    Function:
        void USB_CCID_ResetParameters(void)

    Summary:
        This macro is used Reset the CCID parameters.

    Description:
        This macro is used Reset the CCID parameters as and when there is request from the host.

        Typical Usage:
        <code>
            USB_CCID_ResetParameters();
        </code>

        This function is not used  for CDC devices that do not support PC_to_RDR_ResetParameters Command.

    PreCondition:
        None

    Parameters:
        None

    Return Values:
        None

    Remarks:
        None

 *****************************************************************************/
#define USB_CCID_ResetParameters()  SC_DoPPS()


/******************************************************************************
    Function:
        void USB_CCID_RestartClock(void)

    Summary:
        This macro is used to restart the Clock to the Smart Card

    Description:
        This macro is used to restart the Clock to the Smart Card as and when there is request from the host.

        Typical Usage:
        <code>
            USB_CCID_RestartClock();
        </code>

        This function is not used for CDC devices that do not support PC_to_RDR_IccClock  Command.

    PreCondition:
        None

    Parameters:
        None

    Return Values:
        None

    Remarks:
        None

 *****************************************************************************/
#define USB_CCID_RestartClock()     SCdrv_EnableClock()


/******************************************************************************
    Function:
        void USB_CCID_StopClockWithPinHigh(void)
        void USB_CCID_StopClockWithPinLow (void)

    Summary:
        These macros are used to disbale the Clock to the Smart Card

    Description:
        These macros are used to disbale the Clock to the Smart Card as and when there is request from the host.

        Typical Usage:
        <code>
            USB_CCID_StopClockWithPinHigh();
        </code>

        These functions are not used for CDC devices that do not support PC_to_RDR_IccClock  Command.

    PreCondition:
        None

    Parameters:
        None

    Return Values:
        None

    Remarks:
        None

 *****************************************************************************/
#define USB_CCID_StopClockWithPinHigh() SCdrv_DisableClock(); SCdrv_SetClockPinHigh()
#define USB_CCID_StopClockWithPinLow()  SCdrv_DisableClock(); SCdrv_SetClockPinLow()


BYTE ccid_clockstatus;

//CCID Smart Card IFD Slot Status Definition
union SLOT_STATUS
{
	struct {
		BYTE ICC_Status:2;	// 0 Card Present and Active, 1 Present and inactive, 2 Not Present, 3 Rsvd
		BYTE RFU:4;			// = 0
		BYTE CmdStatus:2;	// 0 Processed without error, 1 Failed (error code in error reg), 2 Time extension is requested
	};
	BYTE Val;
};


//////////////////////////////////////////////////////////////////
// bStatus - 0 Card Present and active,
//           1 Card Present and inactive,
//			 2 Not Present
//
BYTE GetCardStatus(void)
{
	if( !SC_CardPresent() )
		return 2;
	else if( SC_GetCardState() == SC_STATE_CARD_ACTIVE )
		return 0;
	else
		return 1;
}

//////////////////////////////////////////////////////////////////
void CCID_Init()
{
	//mInitAllSwitches();

	//Start smart card stack
	SC_Initialize();

}

#define S3_PRESS	(!sw2)
#define S6_PRESS	(!sw3)
//////////////////////////////////////////////////////////////////
void ProcessCCID()
{
	static WORD CardPresentVerifyCounter = 0;
	static BOOL CardON = FALSE;
	BYTE i;

	////// Detect Card Insertion and removal and transmit 	/////////////
	////// the status on interrupt endpoint 				/////////////

    if( !CardON && SC_CardPresent() )
    {
	    if( CardPresentVerifyCounter > 100 )
	    {
		    INPacket[0] = 0x50; //Msg Type
			INPacket[1] = 3;	//card present, change

		    USBInterruptInHandle = USBTxOnePacket(USB_EP_INT_IN, (BYTE*)&INPacket, 2);
		    CardON = TRUE;
		}
		else
			CardPresentVerifyCounter++;
	}
	else if( CardON && !SC_CardPresent() )
    {
	    SC_Shutdown();	//reset SC_Lib states and turn off hardware

	    INPacket[0] = 0x50; //Msg Type
		INPacket[1] = 2;	//card not present, change

	    USBInterruptInHandle = USBTxOnePacket(USB_EP_INT_IN, (BYTE*)&INPacket, 2);
	    CardON = FALSE;
	}
	else
		CardPresentVerifyCounter = 0;

	///// Process commands received on Bulk Endoint 		//////////////

    if(!USBHandleBusy(USBBulkOutHandle))		//Check if the endpoint has received any data from the host.
    {
		union SLOT_STATUS card_st;
		BYTE ErrCode;

		card_st.Val = 0;
		ErrCode     = 0; //clear error code

		//pre fill the data to host
		INPacket[1] = INPacket[2] = INPacket[3] = INPacket[4] = 0;	// Data Len 0
		INPacket[5] = OUTPacket[5];	//slot#
		INPacket[6] = OUTPacket[6];	//seq#

        switch(OUTPacket[0])		//Data arrived, check what kind of command might be in the packet of data.
		{
			////////////////////////////////////////////////////////////////////////////////////
			case PC_to_RDR_IccPowerOn:
			{
				if( !SC_CardPresent() )
				{
					//Card not present. send error reply
					card_st.Val 		= 0;
					card_st.ICC_Status	= GetCardStatus();
					card_st.CmdStatus	= 1; //Command Failed Code

					INPacket[0] = RDR_to_PC_DataBlock; 		//Msg Type
					INPacket[7] = card_st.Val;  //bStatus
					INPacket[8] = ICC_MUTE;			//bError ICC_MUTE
					INPacket[9] = 0;

					USBBulkInHandle = USBTxOnePacket(USB_EP_BULK_IN, (BYTE*)&INPacket, 10);
				}
				else
				{
					SC_Initialize();
					if( SC_PowerOnATR() ) //Get ATR
					{
						SC_DoPPS();	//switch baud rate based on ATR setting
						if( (SC_ATRLen+10) > USB_EP_SIZE )	//make sure the EP buffer is sufficient
						{
							// Reply with Error response
							card_st.ICC_Status	= 1;  // from CCID Rev 1.1 page 28.  Error codes for Hardware Error
							card_st.CmdStatus	= 1;  // Command Failed
							ErrCode     		= HW_ERROR;  // Hardware Error

							INPacket[0] = RDR_to_PC_DataBlock; 		//Msg Type
							INPacket[7] = card_st.Val;  //bStatus
							INPacket[8] = ErrCode;		//bError
							INPacket[9] = 0;

							USBBulkInHandle = USBTxOnePacket(USB_EP_BULK_IN, (BYTE*)&INPacket, 10);
						}
						else
						{
							card_st.Val 		= 0;
							card_st.ICC_Status	= GetCardStatus();
							card_st.CmdStatus	= 0; //processed without error

							// ATR success
							INPacket[0] = RDR_to_PC_DataBlock; 		//Msg Type

							INPacket[1] = SC_ATRLen;
							INPacket[2] = SC_ATRLen >> 8;
							INPacket[3] = INPacket[4] = 0;

							INPacket[7] = card_st.Val;  //bStatus
							INPacket[8] = 0;			//bError
							INPacket[9] = 0;  //no extended APDU support

							//memcpy( &INPacket[10], SC_CardATR, SC_ATRLen );

							for (i = 0; i < SC_ATRLen; i++)
							    INPacket[10 + i] = SC_CardATR[i];
							USBBulkInHandle = USBTxOnePacket(USB_EP_BULK_IN, (BYTE*)&INPacket, SC_ATRLen+10);
						}
					}
					else // ATR Failed
					{
						// Reply with Error response
						card_st.ICC_Status	= 1;  // from CCID Rev 1.1 page 28.  Error codes for Hardware Error
						card_st.CmdStatus	= 1;  // Command Failed
						ErrCode     		= HW_ERROR;  // Hardware Error

						INPacket[0] = RDR_to_PC_DataBlock; 		//Msg Type
						INPacket[7] = card_st.Val;  //bStatus
						INPacket[8] = ErrCode;		//bError
						INPacket[9] = 0;

						USBBulkInHandle = USBTxOnePacket(USB_EP_BULK_IN, (BYTE*)&INPacket, 10);
					}
				}
			}
			break;

			////////////////////////////////////////////////////////////////////////////////////
			case PC_to_RDR_IccPowerOff:
			    if( OUTPacket[5] == 0 )	// must be slot 0 (for 1 slot reader)
			    {
				    //Do power off sequence if required
				    SC_Shutdown();
				    card_st.ICC_Status	= GetCardStatus();	// bStatus - 0 Card Present and active,
														        //           1 Card Present and inactive,
														        //			 2 Not Present
			    }
			    else //slot # out of range
			    {
				    card_st.ICC_Status	= 2;  // from CCID Rev 1.1 page 28.  Error codes for bad slot umber
				    card_st.CmdStatus	= 1;  // Command Failed
				    ErrCode     		= 5;  // bError Slot Does not exist
			    }

			    INPacket[0] = 0x81; //Msg Type
			    INPacket[7] = card_st.Val;  //bStatus
			    INPacket[8] = ErrCode;		//bError
			    INPacket[9] = (SC_GetCardState()==SC_STATE_CARD_ACTIVE)?0:1;  //Clock Status: 0 Running, 1 Stopped L, 2 Stopped H

			    USBBulkInHandle = USBTxOnePacket(USB_EP_BULK_IN, (BYTE*)&INPacket, 10);
            break;

            ////////////////////////////////////////////////////////////////////////////////////
            case PC_to_RDR_GetSlotStatus:
                if( OUTPacket[5] == 0 )	// must be slot 0 (for 1 slot reader)
			    {
				    card_st.ICC_Status	= GetCardStatus();	// bStatus - 0 Card Present and active,
														//           1 Card Present and inactive,
														//			 2 Not Present
			    }
			    else //slot # out of range
			    {
				    card_st.ICC_Status	= 2;  // from CCID Rev 1.1 page 28.  Error codes for bad slot umber
				    card_st.CmdStatus	= 1;  // Command Failed
				    ErrCode     		= 5;  // bError Slot Does not exist
			    }

			    INPacket[0] = RDR_to_PC_SlotStatus; //Msg Type
			    INPacket[7] = card_st.Val;  //bStatus
			    INPacket[8] = ErrCode;		//bError
			    INPacket[9] = (SC_GetCardState()==SC_STATE_CARD_ACTIVE)?0:1;  //Clock Status: 0 Running, 1 Stopped L, 2 Stopped H
			    USBBulkInHandle = USBTxOnePacket(USB_EP_BULK_IN, (BYTE*)&INPacket, 10);
            break;

            ////////////////////////////////////////////////////////////////////////////////////
			case PC_to_RDR_XfrBlock:
			    UsbCcidPcToRdrXfrBlock();
			break;

            ////////////////////////////////////////////////////////////////////////////////////
			case PC_to_RDR_GetParameters:

				if( SC_GetCardState() == SC_STATE_CARD_ACTIVE )
				{
					card_st.Val 		= 0;
					card_st.ICC_Status	= GetCardStatus();
					card_st.CmdStatus	= 0; //processed without error

					INPacket[0] = RDR_to_PC_Parameters; 		//Msg Type RDR_to_PC_Parameters
					INPacket[1] = 5; //protocol data struct length

					INPacket[7] = card_st.Val;  //bStatus
					INPacket[8] = 0;  //bError none
					INPacket[9] = 0;  // T0 Protocol

					// Protocol Data Structure
					INPacket[10] = SC_TA1;	//Fi and Di codes
					INPacket[11] = 0;		//no inversion
					INPacket[12] = SC_TC1;	//Extra gaurd time
					INPacket[13] = SC_TC2;	//WI for T0, wwt = 960 * WI * (Fi / f)
					INPacket[14] = 0;		//Does not Allow clock stopping

					USBBulkInHandle = USBTxOnePacket(USB_EP_BULK_IN, (BYTE*)&INPacket, 15);
				}
				else
				{
					//Card not present or not active
					card_st.Val 		= 0;
					card_st.ICC_Status	= GetCardStatus();
					card_st.CmdStatus	= 1; //Command Failed Code

					INPacket[0] = RDR_to_PC_Parameters; 		//Msg Type RDR_to_PC_Parameters
					INPacket[7] = card_st.Val;  //bStatus
					INPacket[8] = 0xFE;			//bError ICC_MUTE
					INPacket[9] = 0;

					USBBulkInHandle = USBTxOnePacket(USB_EP_BULK_IN, (BYTE*)&INPacket, 10);
				}

			break;
			////////////////////////////////////////////////////////////////////////////////////
			case PC_to_RDR_ResetParameters :
			    if( SC_GetCardState() == SC_STATE_CARD_ACTIVE )
				{
			        SC_TA1 = DEFAULT_FI_DI;
			        SC_TC1 = DEFAULT_GUARD_TIME;
			        SC_TC2 = DEFAULT_WI;
			        USB_CCID_ResetParameters();
			        card_st.Val 		= 0;
					card_st.ICC_Status	= GetCardStatus();
					card_st.CmdStatus	= 0; //processed without error

					INPacket[0] = RDR_to_PC_Parameters; 		//Msg Type RDR_to_PC_Parameters
					INPacket[1] = 5; //protocol data struct length

					INPacket[7] = card_st.Val;  //bStatus
					INPacket[8] = 0;  //bError none
					INPacket[9] = 0;  // T0 Protocol


					INPacket[10] = SC_TA1;	//Fi and Di codes

					INPacket[11] = 0;		//no inversion
					INPacket[12] = SC_TC1;	//Extra gaurd time
					INPacket[13] = SC_TC2;	//WI for T0, wwt = 960 * WI * (Fi / f)
					INPacket[14] = 0;		//Does not Allow clock stopping

					USBBulkInHandle = USBTxOnePacket(USB_EP_BULK_IN, (BYTE*)&INPacket, 15);
				}
				else
				{
					//Card not present or not active
					card_st.Val 		= 0;
					card_st.ICC_Status	= GetCardStatus();
					card_st.CmdStatus	= 1; //Command Failed Code

					INPacket[0] = RDR_to_PC_Parameters; 		//Msg Type RDR_to_PC_Parameters
					INPacket[7] = card_st.Val;  //bStatus
					INPacket[8] = 0xFE;			//bError ICC_MUTE
					INPacket[9] = 0;

					USBBulkInHandle = USBTxOnePacket(USB_EP_BULK_IN, (BYTE*)&INPacket, 10);
				}

			break;
			////////////////////////////////////////////////////////////////////////////////////
			case PC_to_RDR_SetParameters :
			    if( SC_GetCardState() == SC_STATE_CARD_ACTIVE )
				{
					if (OUTPacket[7] == 0) //if T=0 protocol
					{
    					SC_TA1 = OUTPacket[10]; //Read FI Index
    					SC_TC1 = OUTPacket[12]; // Read Guard Time
    					SC_TC2 = OUTPacket[13]; // Read WI
    					ccid_clockstatus = OUTPacket[14]; // Read Clock Stop Status
    					USB_CCID_SetParameters();

    					card_st.Val 		= 0;
    					card_st.ICC_Status	= GetCardStatus();
    					card_st.CmdStatus	= 0; //processed without error

    					INPacket[0] = RDR_to_PC_Parameters; 		//Msg Type RDR_to_PC_Parameters
    					INPacket[1] = 5; //protocol data struct length

    					INPacket[7] = card_st.Val;  //bStatus
    					INPacket[8] = 0;  //bError none
    					INPacket[9] = 0;  // T0 Protocol


    					INPacket[10] = SC_TA1;	//Fi and Di codes

    					INPacket[11] = 0;		//no inversion
    					INPacket[12] = SC_TC1;	//Extra gaurd time
    					INPacket[13] = SC_TC2;	//WI for T0, wwt = 960 * WI * (Fi / f)
    					INPacket[14] = 0;		//Does not Allow clock stopping

    					USBBulkInHandle = USBTxOnePacket(USB_EP_BULK_IN, (BYTE*)&INPacket, 15);
    	            }
				}
				else
				{
					//Card not present or not active
					card_st.Val 		= 0;
					card_st.ICC_Status	= GetCardStatus();
					card_st.CmdStatus	= 1; //Command Failed Code

					INPacket[0] = RDR_to_PC_Parameters; 		//Msg Type RDR_to_PC_Parameters
					INPacket[7] = card_st.Val;  //bStatus
					INPacket[8] = 0xFE;			//bError ICC_MUTE
					INPacket[9] = 0;

					USBBulkInHandle = USBTxOnePacket(USB_EP_BULK_IN, (BYTE*)&INPacket, 10);
				}

			break;
            ////////////////////////////////////////////////////////////////////////////////////
            case PC_to_RDR_Escape:
                // This Command is not supoprted
                INPacket[0] = RDR_to_PC_Escape;
                card_st.Val 		= 0;
				card_st.ICC_Status	= GetCardStatus();
				card_st.CmdStatus	= 1; //Command Failed Code
				INPacket[7] = card_st.Val;  //bStatus
                INPacket[8] = 0x00; //bError, Command not supported
                USBBulkInHandle = USBTxOnePacket(USB_EP_BULK_IN, (BYTE*)&INPacket, 10);
            break;
            ////////////////////////////////////////////////////////////////////////////////////
            case PC_to_RDR_IccClock:
                    if( OUTPacket[5] == 0 )	// must be slot 0 (for 1 slot reader)
			        {
				        //Do power off sequence if required
				        if (OUTPacket[7] == 0)
				        {
				            USB_CCID_RestartClock();//Restart Clock
				        }
				        else if (OUTPacket[7] == 1)
				        {
				            if (ccid_clockstatus == 1)
				            {
				                USB_CCID_StopClockWithPinLow(); // Stop with Clock signal Low
				            }
				            else if (ccid_clockstatus == 2)
				            {
				                USB_CCID_StopClockWithPinHigh();// Stop with Clock signal High
				            }
				            else if (ccid_clockstatus == 3)
				            {
    				            USB_CCID_StopClockWithPinLow(); // Stop with Clock either High or Low
    				        }
				        }
				        card_st.ICC_Status	= GetCardStatus();	// bStatus - 0 Card Present and active,
														        //           1 Card Present and inactive,
														        //			 2 Not Present
			        }
			        else //slot # out of range
			        {
				        card_st.ICC_Status	= 2;  // from CCID Rev 1.1 page 28.  Error codes for bad slot umber
				        card_st.CmdStatus	= 1;  // Command Failed
				        ErrCode     		= 5;  // bError Slot Does not exist
			        }
			        INPacket[0] = RDR_to_PC_SlotStatus; //Msg Type
			        INPacket[7] = card_st.Val;  //bStatus
			        INPacket[8] = ErrCode;		//bError
			        INPacket[9] = (SC_GetCardState()==SC_STATE_CARD_ACTIVE)?0:1;  //Clock Status: 0 Running, 1 Stopped L, 2 Stopped H

			        USBBulkInHandle = USBTxOnePacket(USB_EP_BULK_IN, (BYTE*)&INPacket, 10);
            break;
            ////////////////////////////////////////////////////////////////////////////////////
            case PC_to_RDR_T0APDU:
                // This Command is not supoprted
                INPacket[0] = RDR_to_PC_SlotStatus;
                card_st.Val 		= 0;
				card_st.ICC_Status	= GetCardStatus();
				card_st.CmdStatus	= 1; //Command Failed Code
				INPacket[7] = card_st.Val;  //bStatus
                INPacket[8] = 0x00; //bError, Command not supported
                USBBulkInHandle = USBTxOnePacket(USB_EP_BULK_IN, (BYTE*)&INPacket, 10);
            break;
            ////////////////////////////////////////////////////////////////////////////////////
            case PC_to_RDR_Secure:
                // This Command is not supoprted
                INPacket[0] = RDR_to_PC_DataBlock;
                card_st.Val 		= 0;
				card_st.ICC_Status	= GetCardStatus();
				card_st.CmdStatus	= 1; //Command Failed Code
				INPacket[7] = card_st.Val;  //bStatus
                INPacket[8] = 0x00; //bError, Command not supported
                USBBulkInHandle = USBTxOnePacket(USB_EP_BULK_IN, (BYTE*)&INPacket, 10);
            break;
            ////////////////////////////////////////////////////////////////////////////////////
            case PC_to_RDR_Mechanical:
                // This Command is not supoprted
            ////////////////////////////////////////////////////////////////////////////////////
            case PC_to_RDR_Abort:
                // This Command is not supoprted
            ////////////////////////////////////////////////////////////////////////////////////
            case PC_to_RDR_SetDataRateAndClockFrequency:
                // This Command is not supoprted
            default:
                INPacket[0] = RDR_to_PC_SlotStatus;
                card_st.Val 		= 0;
				card_st.ICC_Status	= GetCardStatus();
				card_st.CmdStatus	= 1; //Command Failed Code
				INPacket[7] = card_st.Val;  //bStatus
                INPacket[8] = 0x00; //bError, Command not supported
                USBBulkInHandle = USBTxOnePacket(USB_EP_BULK_IN, (BYTE*)&INPacket, 10);
            break;
        }

        USBBulkOutHandle = USBRxOnePacket(USB_EP_BULK_OUT,(BYTE*)&OUTPacket,USB_EP_SIZE);
    }
}

#pragma udata apdu_data
    BYTE APDUData[256];
#pragma udata

/********************************************************************
 * Function:        void PcToRdrXfrBlock(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None

 *
 * Overview:        This function handles data transfer
 *                  between host and the Smart Card
 *
 * Note:
 *******************************************************************/
void UsbCcidPcToRdrXfrBlock(void)
{
    static SC_APDU_Cmd 	CardCmd;
	static SC_APDU_Resp CardResp;
	UINT16 temp;
	union SLOT_STATUS card_st;
	BYTE ErrCode;

	card_st.Val = 0;
	ErrCode     = 0; //clear error code

    memset( APDUData, 0, sizeof(APDUData) ) ;
    if( SC_GetCardState() == SC_STATE_CARD_ACTIVE )
    {
        CardCmd.CLA = OUTPacket[10];
        CardCmd.INS = OUTPacket[11];
		    CardCmd.P1 	= OUTPacket[12];
		    CardCmd.P2  = OUTPacket[13];

		if (OUTPacket[14] == 0) // if APDU P3 is zero
		{
			//case 1: no data to exchange with ICC, only header
		    CardCmd.LC = 0;
		    CardCmd.LE = 0;
		}
		else if ( OUTPacket[1] == 5) // if dwLength field is eaqual to Length of (CLA + INS + P1 + P2 + P3)
		{
			//case 2: data expected from ICC:
		    CardCmd.LE  = OUTPacket[14];
		    CardCmd.LC  = 0;
		}
		else if (OUTPacket[1] == OUTPacket[14]+5) // if dwLength field is eaqual to P3 + Length of (CLA + INS + P1 + P2 + P3)
		{
			// case 3: data are to be sent to the ICC:
		    CardCmd.LC  = OUTPacket[14];
		    CardCmd.LE  = 0;
		    for( temp = 0; temp < CardCmd.LC; temp++ )
		        APDUData[temp] = OUTPacket[temp+15];
		}
		else if ( OUTPacket[1] == 5+OUTPacket[14]+1) // if dwLength field is eaqual to P3 + Length of (CLA + INS + P1 + P2 + P3 + LE)
		{
		    // case 4: Data is transferred to the card and is also returned from the card as a result of the command.
			CardCmd.LC  = OUTPacket[14];
			CardCmd.LE  = OUTPacket[14+CardCmd.LC+1];
			for( temp = 0; temp < CardCmd.LC; temp++ )
			    APDUData[temp] = OUTPacket[temp+15];
		}
		else
		{
	        //Bad dwLength
			card_st.CmdStatus	= 1; //Command Failed Code
			ErrCode 			= 1; //bad len
		}

		if(( !SC_Transact( &CardCmd, &CardResp, APDUData ) ) && (!ErrCode))
		{
			//error exec command
			card_st.ICC_Status	= 1;
			card_st.CmdStatus	= 1;   //Command Failed Code
			ErrCode 			= -5;  //hardware error
		}

    }
    else // Card not present or not active
    {
	    card_st.ICC_Status	= GetCardStatus();
		card_st.CmdStatus	= 1; //Command Failed Code
		ErrCode 			= 0xFE;	 //bError ICC_MUTE
    }
    if( card_st.CmdStatus == 0 ) //no error
    {
		card_st.ICC_Status	= GetCardStatus();
		card_st.CmdStatus	= 0; //processed without error
		INPacket[0] = RDR_to_PC_DataBlock; 		//Msg Type
		INPacket[1] = CardCmd.LE+2;	//response size + SW1 and SW2
		INPacket[7] = card_st.Val;  //bStatus
		INPacket[8] = 0;			//bError none
		INPacket[9] = 0;  			//RFU
        for( temp = 0; temp < CardCmd.LE; temp++ )
			INPacket[10+temp] = APDUData[temp];
   		INPacket[10+CardCmd.LE]   = CardResp.SW1;
		INPacket[10+CardCmd.LE+1] = CardResp.SW2;
		USBBulkInHandle = USBTxOnePacket( USB_EP_BULK_IN, INPacket, 10+CardCmd.LE+2 );
    }
    else
    {
	    INPacket[0] = RDR_to_PC_DataBlock; 		//Msg Type
		INPacket[7] = card_st.Val;  //bStatus
		INPacket[8] = ErrCode;		//bError
		INPacket[9] = SC_LastError;
        USBBulkInHandle = USBTxOnePacket(USB_EP_BULK_IN, (BYTE*)&INPacket, 10);
	}
}
/********************************************************************
 * Function:        void UsbCcidAbortRequestHandler(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    If either the USBEP0SendRAMPtr() or USBEP0Receive()
 *                  functions are not called in this function then the
 *                  requesting the ABORT request will be STALLed
 *
 * Overview:        This function is called by the CCID function driver
 *                  in response to a ABORT Request.
 *
 * Note:            This function is called from the stack in
 *                  response of a EP0 packet.  The response to this
 *                  packet should be fast in order to clear EP0 for
 *                  any potential SETUP packets.  Do not call any
 *                  functions or run any algorithms that take a long time
 *                  to execute (>50uSec).  Have any data that would be
 *                  read using one of these commands pre-calculated
 *                  from the main line code and just use this function
 *                  to transfer the data.
 *******************************************************************/
 #if defined USB_CCID_SUPPORT_ABORT_REQUEST
 void UsbCcidAbortRequestHandler(void)
 {
 }
 #endif

/********************************************************************
 * Function:        void UsbCcidGetClockFrequenciesRequestHandler(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    If either the USBEP0SendRAMPtr() or USBEP0Receive()
 *                  functions are not called in this function then the
 *                  requesting the GET_CLOCK_FREQUENCIES request will be STALLed
 *
 * Overview:        This function is called by the CCID function driver
 *                  in response to a GET_CLOCK_FREQUENCIES Request.
 *
 * Note:            This function is called from the stack in
 *                  response of a EP0 packet.  The response to this
 *                  packet should be fast in order to clear EP0 for
 *                  any potential SETUP packets.  Do not call any
 *                  functions or run any algorithms that take a long time
 *                  to execute (>50uSec).  Have any data that would be
 *                  read using one of these commands pre-calculated
 *                  from the main line code and just use this function
 *                  to transfer the data.
 *******************************************************************/
 #if defined USB_CCID_SUPPORT_GET_CLOCK_FREQUENCIES_REQUEST
 void UsbCcidGetClockFrequenciesRequestHandler(void)
 {
 }
 #endif


 /********************************************************************
 * Function:        void UsbCcidGetDataRatesRequestHandler(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    If either the USBEP0SendRAMPtr() or USBEP0Receive()
 *                  functions are not called in this function then the
 *                  requesting the GET_DATA_RATES request will be STALLed
 *
 * Overview:        This function is called by the CCID function driver
 *                  in response to a GET_DATA_RATES Request.
 *
 * Note:            This function is called from the stack in
 *                  response of a EP0 packet.  The response to this
 *                  packet should be fast in order to clear EP0 for
 *                  any potential SETUP packets.  Do not call any
 *                  functions or run any algorithms that take a long time
 *                  to execute (>50uSec).  Have any data that would be
 *                  read using one of these commands pre-calculated
 *                  from the main line code and just use this function
 *                  to transfer the data.
 *******************************************************************/
 #if defined USB_CCID_SUPPORT_GET_DATA_RATES_REQUEST
 void UsbCcidGetDataRatesRequestHandler(void)
 {
 }
 #endif
