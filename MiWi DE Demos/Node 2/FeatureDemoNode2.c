/********************************************************************
* FileName:		FeatureDemoNode2.c
* Dependencies: none   
* Processor:	PIC18, PIC24, PIC32, dsPIC30, dsPIC33
*               tested with 18F4620, dsPIC33FJ256GP710	
* Complier:     Microchip C18 v3.04 or higher
*				Microchip C30 v2.03 or higher	
*               Microchip C32 v1.02 or higher
* Company:		Microchip Technology, Inc.
*
* Copyright and Disclaimer Notice for MiWi Software:
*
* Copyright © 2007-2010 Microchip Technology Inc.  All rights reserved.
*
* Microchip licenses to you the right to use, modify, copy and distribute 
* Software only when embedded on a Microchip microcontroller or digital 
* signal controller and used with a Microchip radio frequency transceiver, 
* which are integrated into your product or third party product (pursuant 
* to the terms in the accompanying license agreement).   
*
* You should refer to the license agreement accompanying this Software for 
* additional information regarding your rights and obligations.
*
* SOFTWARE AND DOCUMENTATION ARE PROVIDED “AS IS” WITHOUT WARRANTY OF ANY 
* KIND, EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY 
* WARRANTY OF MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A 
* PARTICULAR PURPOSE. IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE 
* LIABLE OR OBLIGATED UNDER CONTRACT, NEGLIGENCE, STRICT LIABILITY, 
* CONTRIBUTION, BREACH OF WARRANTY, OR OTHER LEGAL EQUITABLE THEORY ANY 
* DIRECT OR INDIRECT DAMAGES OR EXPENSES INCLUDING BUT NOT LIMITED TO 
* ANY INCIDENTAL, SPECIAL, INDIRECT, PUNITIVE OR CONSEQUENTIAL DAMAGES, 
* LOST PROFITS OR LOST DATA, COST OF PROCUREMENT OF SUBSTITUTE GOODS, 
* TECHNOLOGY, SERVICES, OR ANY CLAIMS BY THIRD PARTIES (INCLUDING BUT 
* NOT LIMITED TO ANY DEFENSE THEREOF), OR OTHER SIMILAR COSTS.
*
*********************************************************************
* File Description:
*
*  This is the sample application that demonstrate the rich features
*  of MiWi(TM) Development Environment (DE). This demo should be used 
*  with FeatureDemoNode1 together. In this demo, following MiWi(TM) 
*  DE features have been implemented:
*   - Network Freezer
*       This application demonstrate how to invoke Network Freezer
*       feature that restore the previous network configurations
*       after reset or power cycle.
*   - Active Scan 
*       This application will do an active scan to allocate all PANs
*       running in the neighborhood and choose the PAN that share the 
*       same PAN identifier to establish connection.
*   - Sleep Feature 
*       This application is able to put the radio and MCU into sleep 
*       mode to conserve power. After waking up from the sleep, this
*       application is also capable of sending out Data Request command
*       to retrieve possible data from its associated node. The sleeping
*       period for this application is roughly 8 seconds, depends on 
*       the MCU family and operating frequency setting.
*   - Enhanced Data Request
*       This application is able to demonstrate the Enhanced Data 
*       Request feature, which combines Data Request command and the 
*       data message sending out from the sleeping device together. The
*       benefit is to reduce the message exchanges from 6 to 4, with
*       the total active time saving up to 30%. To use the Enhanced
*       Data Request feature, the outgoing message needs to be prepared
*       before the transceiver wakes up.
*   - Time Synchronization
*       When large amount of sleeping devices are connected to a single
*       Full Function Device (FFD), Time Synchronization feature helps 
*       to synchronize the check-in timing for each sleeping device, 
*       thus avoid packet collision, retransmission and undelivered 
*       messages.
*   - Frequency Agility 
*       As a frequency agility follower, this application is able to 
*       change operating channel when receiving a Channel Hopping 
*       command. This application is also capable of resynchronize
*       the connection by scanning possible channels.
*
* Change History:
*  Rev   Date         Author    Description
*  0.1   03/01/2008   yfy       Initial revision
*  3.1   5/28/2010    yfy       MiWi DE 3.1
********************************************************************/

/************************ HEADERS **********************************/
#include "ConfigApp.h"
#include "WirelessProtocols/Console.h"
#include "Transceivers/Transceivers.h"
#include "WirelessProtocols/SymbolTime.h"
#include "Transceivers/Security.h"
#include "WirelessProtocols/MCHP_API.h"

/************************ VARIABLES ********************************/
#define LIGHT   0x01
#define SWITCH  0x02

/*******************************************************************/
// AdditionalNodeID variable array defines the additional 
// information to identify a device on a P2P connection. This array
// will be transmitted with the P2P_CONNECTION_REQUEST command to 
// initiate the connection between the two devices. Along with the 
// long address of this device, this variable array will be stored 
// in the P2P Connection Entry structure of the partner device. The 
// size of this array is ADDITIONAL_CONNECTION_PAYLOAD, defined in 
// P2PDefs.h.
// In this demo, this variable array is set to be empty.
/******************************************************************/
#if ADDITIONAL_NODE_ID_SIZE > 0
    BYTE AdditionalNodeID[ADDITIONAL_NODE_ID_SIZE] = {SWITCH};
#endif

/*******************************************************************/
// The variable myChannel defines the channel that the P2P connection
// is operate on. This variable will be only effective if energy scan
// (ENABLE_ED_SCAN) is not turned on. Once the energy scan is turned
// on, the operating channel will be one of the channels available 
// with least amount of energy (or noise).
/*******************************************************************/
BYTE myChannel = 10; 

/*******************************************************************/
// the following two variable arrays are the data to be transmitted
// in this demo. They are bitmap of English word "MiWi" and "DE"
// respectively.
/*******************************************************************/
ROM const BYTE MiWi[5][21] = 
{
    {0x20,0xB2,0x20,0x20,0x20,0xB2,0x20,0x20,0xB2,0x20,0xB2,0x20,0x20,0x20,0x20,0x20,0xB2,0x20,0xB2,0x0D,0x0A},
    {0xB2,0x20,0xB2,0x20,0xB2,0x20,0xB2,0x20,0x20,0x20,0xB2,0x20,0x20,0xB2,0x20,0x20,0xB2,0x20,0x20,0x0D,0x0A},
    {0xB2,0x20,0x20,0xB2,0x20,0x20,0xB2,0x20,0xB2,0x20,0xB2,0x20,0x20,0xB2,0x20,0x20,0xB2,0x20,0xB2,0x0D,0x0A},
    {0xB2,0x20,0x20,0xB2,0x20,0x20,0xB2,0x20,0xB2,0x20,0x20,0xB2,0x20,0xB2,0x20,0xB2,0x20,0x20,0xB2,0x0D,0x0A},
    {0xB2,0x20,0x20,0xB2,0x20,0x20,0xB2,0x20,0xB2,0x20,0x20,0x20,0xB2,0x20,0xB2,0x20,0x20,0x20,0xB2,0x0D,0x0A}
};   

ROM const BYTE DE[5][11] = 
{
    {0xB2,0xB2,0xB2,0x20,0x20,0xB2,0xB2,0xB2,0xB2,0x0D,0x0A},
    {0xB2,0x20,0x20,0xB2,0x20,0xB2,0x20,0x20,0x20,0x0D,0x0A},
    {0xB2,0x20,0x20,0xB2,0x20,0xB2,0xB2,0xB2,0xB2,0x0D,0x0A},
    {0xB2,0x20,0x20,0xB2,0x20,0xB2,0x20,0x20,0x20,0x0D,0x0A},
    {0xB2,0xB2,0xB2,0x20,0x20,0xB2,0xB2,0xB2,0xB2,0x0D,0x0A}
};  



extern BYTE myLongAddress[];
/***************************************************************************
* Function:         void main(void)
*
* PreCondition:     none
*
* Input:		    none
*
* Output:		    none
*
* Side Effects:	    none
*
* Overview:		    This is the main function that runs the demo.  
*                   The device will first search for a P2P connection
*                   Once the connection is established, pressing 
*                   button one (RB5 on PICDEM Z or RD6 on Explorer 16) 
*                   or button two (RB4 on PICDEM Z or RD7 on Explorer16) 
*                   will send out broadcast and unicast packets.
*
* Note:			    
****************************************************************************/
#if defined(__18CXX)
void main(void)
#else
int main(void)
#endif
{   
    BYTE i, j;
    BYTE OperatingChannel = 0xFF;
    BYTE TxSynCount = 0;
    BYTE TxSynCount2 = 0;
    MIWI_TICK t1, t2;
    BYTE TxPersistFailures = 0;
    BOOL ReadyToSleep = FALSE;
    BYTE TxNum = 0;
    BYTE RxNum = 0;
    BYTE PressedButton = 0;
    
    /*******************************************************************/
    // Initialize the system
    /*******************************************************************/
    BoardInit();         
    ConsoleInit();  
    
    #if defined(PROTOCOL_P2P)
        Printf("\r\nStarting Node 2 of Feature Demo for MiWi(TM) P2P Stack ...");
    #endif
    #if defined(PROTOCOL_MIWI)
        Printf("\r\nStarting Node 2 of Feature Demo for MiWi(TM) Stack ...");
    #endif
    #if defined(PICDEMZ) 
        Printf("\r\nInput Configuration:");
        Printf("\r\n           Button 1: RB5");
        Printf("\r\n           Button 2: RB4");
        Printf("\r\nOutput Configuration:");
        Printf("\r\n                     RS232 port");
        Printf("\r\n              LED 1: RA0");
        Printf("\r\n              LED 2: RA1");
    #endif
    #if defined(PIC18_EXPLORER) 
        Printf("\r\nInput Configuration:");
        Printf("\r\n           Button 1: RB0");
        Printf("\r\n           Button 2: RA5");
        Printf("\r\nOutput Configuration:");
        Printf("\r\n                     RS232 port");
        Printf("\r\n                     USB port");
        Printf("\r\n              LED 1: D8");
        Printf("\r\n              LED 2: D7");
    #endif
    #if defined(EIGHT_BIT_WIRELESS_BOARD) 
        Printf("\r\nInput Configuration:");
        Printf("\r\n           Button 1: RB0");
        Printf("\r\n           Button 2: RB2");
        Printf("\r\nOutput Configuration:");
        Printf("\r\n              LED 1: RA2");
        Printf("\r\n              LED 2: RA3");
    #endif
    #if defined(EXPLORER16) 
        Printf("\r\nInput Configuration:");
        Printf("\r\n           Button 1: RD6");
        Printf("\r\n           Button 2: RD7");
        Printf("\r\nOutput Configuration:");
        Printf("\r\n                     RS232 port");
        Printf("\r\n              LED 1: D10");
        Printf("\r\n              LED 2: D9");
    #endif
    #if defined(MRF24J40)
    Printf("\r\n     RF Transceiver: MRF24J40");
    #elif defined(MRF49XA)
    Printf("\r\n     RF Transceiver: MRF49XA");
    #elif defined(MRF89XA)
    Printf("\r\n     RF Transceiver: MRF89XA");
    #endif
    Printf("\r\n   Demo Instruction:");
    Printf("\r\n                     Power on the board until LED 1 lights up");
    Printf("\r\n                     to indicate it is connected to the peer.");
    Printf("\r\n                     Push Button 1 to broadcast a message. Push");
    Printf("\r\n                     Button 2 to unicast encrypted message on");
    Printf("\r\n                     PICDEM Z or Explorer 16 demo boards. LED 2");
    Printf("\r\n                     will be toggled upon receiving messages.");
    Printf("\r\n\r\n");
    
    LED_1 = 0;
    LED_2 = 0;
    
    
    /*******************************************************************/
    // Following block display demo information on LCD of demo board.
    /*******************************************************************/    
    #if defined(MRF49XA)
        #if defined(PROTOCOL_P2P)
            LCDDisplay((char *)"Feature P2P Demo MRF49XA Node 2", 0, TRUE); 
        #endif
        #if defined(PROTOCOL_MIWI)
            LCDDisplay((char *)"Feature MiWi Dem MRF49XA Node 2", 0, TRUE); 
        #endif
    #elif defined(MRF24J40)
        #if defined(PROTOCOL_P2P)
            LCDDisplay((char *)"Feature P2P DemoMRF24J40 Node 2", 0, TRUE);
        #endif
        #if defined(PROTOCOL_MIWI)
            LCDDisplay((char *)"Feature MiWi DemMRF24J40 Node 2", 0, TRUE);
        #endif
    #elif defined(MRF89XA)
        #if defined(PROTOCOL_P2P)
            LCDDisplay((char *)"Feature P2P Demo MRF89XA Node 2", 0, TRUE); 
        #endif
        #if defined(PROTOCOL_MIWI)
            LCDDisplay((char *)"Feature MiWi Dem MRF89XA Node 2", 0, TRUE); 
        #endif
    #endif

    /*******************************************************************/
    // If button 1 on the demo board is pressed and hold during the
    // reset or power on process, Network Freezer feature is invoked
    // to restore all previous network configurations. If Network 
    // Freezer feature is invoked, there is no requirement to re-
    // establish new connection
    /*******************************************************************/
    if( PUSH_BUTTON_1 == 0 )
    {  
        while(PUSH_BUTTON_1 == 0 );
        
        /*********************************************************************/
        // Function MiApp_ProtocolInit intialize the protocol stack.
        // The return value is a boolean to indicate the status of the 
        //      operation.
        // The only parameter indicates if Network Freezer should be invoked.
        //      When Network Freezer feature is invoked, all previous network
        //      configurations will be restored to the states before the 
        //      reset or power cycle
        //
        // In this example, we assume that the user wants to apply Network
        //      Freezer feature and restore the network configuration if
        //      button 1 is pressed and hold when powering up.
        /*********************************************************************/
        MiApp_ProtocolInit(TRUE);

        LCDDisplay((char *)" Network Freezer    ENABLED", 0, TRUE); 
        Printf("\r\nNetwork Freezer Feature is enabled. There will be no hand-shake process.\r\n");

        DumpConnection(0xFF);
    }
    else
    {
        /*********************************************************************/
        // Function MiApp_ProtocolInit intialize the protocol stack.
        // The return value is a boolean to indicate the status of the 
        //      operation.
        // The only parameter indicates if Network Freezer should be invoked.
        //      When Network Freezer feature is invoked, all previous network
        //      configurations will be restored to the states before the 
        //      reset or power cycle
        //
        // In this example, we assume that the user wants to start from
        // scratch and ignore previous network configuration if button 1
        // is released when powering up.
        /*********************************************************************/
        MiApp_ProtocolInit(FALSE);   
        
        #ifdef ENABLE_ACTIVE_SCAN
        
            ConsolePutROMString((ROM char*)"\r\nStarting Active Scan...");    
            
            LCDDisplay((char *)"Active Scanning", 0, FALSE);
            
            while(1)
            {
                /*********************************************************************/
                // Function MiApp_SearchConnection will return the number of existing 
                // connections in all channels. It will help to decide which channel 
                // to operate on and which connection to add
                // The return value is the number of connections. The connection data
                //     are stored in global variable ActiveScanResults. Maximum active
                //     scan result is defined as ACTIVE_SCAN_RESULT_SIZE
                // The first parameter is the scan duration, which has the same 
                //     definition in Energy Scan. 10 is roughly 1 second. 9 is a half 
                //     second and 11 is 2 seconds. Maximum scan duration is 14, or 
                //     roughly 16 seconds.
                // The second parameter is the channel map. Bit 0 of the double
                //     word parameter represents channel 0. For the 2.4GHz frequency
                //     band, all possible channels are channel 11 to channel 26.
                //     As the result, the bit map is 0x07FFF800. Stack will filter
                //     out all invalid channels, so the application only needs to pay
                //     attention to the channels that are not preferred.
                /*********************************************************************/
                j = MiApp_SearchConnection(10, 0xFFFFFFFF);
                
                if( j > 0 )
                {
                    // now print out the scan result.
                    Printf("\r\nActive Scan Results: \r\n");
                    for(i = 0; i < j; i++)
                    {
                        Printf("Channel: ");
                        PrintDec(ActiveScanResults[i].Channel);
                        Printf("   RSSI: ");
                        PrintChar(ActiveScanResults[i].RSSIValue);
                        #if defined(IEEE_802_15_4)
                            #if ADDITIONAL_NODE_ID_SIZE > 0
                                Printf("   PeerInfo: ");
                                for(j = 0; j < ADDITIONAL_NODE_ID_SIZE; j++)
                                {
                                    PrintChar(ActiveScanResults[i].PeerInfo[j]);
                                }
                            #endif
                            Printf("    PANID: ");
                            PrintChar(ActiveScanResults[i].PANID.v[1]);
                            PrintChar(ActiveScanResults[i].PANID.v[0]);
                            Printf("\r\n");
                        #endif
                        OperatingChannel = ActiveScanResults[i].Channel;
                    }
                }
            
                if( OperatingChannel != 0xFF )
                {
                    /*******************************************************************/
                    // Function MiApp_SetChannel assign the operation channel(frequency)
                    // for the transceiver. Channels 0 - 31 has been defined for the 
                    // wireless protocols, but not all channels are valid for all 
                    // transceivers, depending on their hardware design, operating
                    // frequency band, data rate and other RF parameters
                    /*******************************************************************/
                    MiApp_SetChannel(OperatingChannel);
                    break;
                }
                
                Printf("\r\nNo Suitable PAN, Rescanning...");
            }
        #endif
        
        
        
        /*********************************************************************/
        // Function MiApp_ConnectionMode sets the connection mode for the 
        // protocol stack. Possible connection modes are:
        //  - ENABLE_ALL_CONN       accept all connection request
        //  - ENABLE_PREV_CONN      accept only known device to connect
        //  - ENABL_ACTIVE_SCAN_RSP do not accept connection request, but allow
        //                          response to active scan
        //  - DISABLE_ALL_CONN      disable all connection request, including
        //                          active scan request
        /*********************************************************************/
        MiApp_ConnectionMode(ENABLE_ALL_CONN);
        
        /*******************************************************************/
        // Function MiApp_EstablishConnection establish connections between
        // two devices. It has two input parameters:
        // The first parameter is the index of the target device in the 
        //     active scan table. It requires a MiApp_SearchConnection call
        //     before hand. If seraching connection is not performed in 
        //     advance, user can apply 0xFF to the first parameter to 
        //     indicate that it is OK to establish connection with any 
        //     device.
        // The second parameter is the connection mode, either directly or
        //     indirectly. Direct connection is a connection in the radio
        //     range. All protocol stack support this connection mode. 
        //     Indirect connection is the connection out of radio range. 
        //     An indirect connection has to rely on other device to route 
        //     the messages between two connected devices. Indirect 
        //     connection is also called "Socket" connection in MiWi 
        //     Protocol. Since MiWi P2P protocol only handles connection 
        //     of one hop, indirect connection is not supported in MiWi 
        //     P2P protocol, but supported in other networking protocols.
        // Function MiApp_EstablishConnection returns the index of the 
        //     connected device in the connection table. If no connection 
        //     is established after predefined retry times 
        //     CONNECTION_RETRY_TIMES, it will return 0xFF. If multiple 
        //     connections have been established, it will return the one 
        //     of the indexes of the connected device.
        /*******************************************************************/
        i = MiApp_EstablishConnection(0, CONN_MODE_DIRECT);
        Printf("\r\nConnection Created");
        
        /*******************************************************************/
        // Display current opertion on LCD of demo board, if applicable
        /*******************************************************************/
        LCDDisplay((char *)" Connected Peer  on Channel %d", currentChannel, TRUE);

        
        /*******************************************************************/
        // Function DumpConnection is used to print out the content of the
        // P2P Connection Entry on the hyperterminal. It may be useful in 
        // the debugging phase.
        // The only parameter of this function is the index of the P2P 
        // Connection Entry. The value of 0xFF means to print out all
        // valid P2P Connection Entry; otherwise, the P2P Connection Entry
        // of the input index will be printed out.
        /*******************************************************************/
        #ifdef ENABLE_DUMP
            DumpConnection(0xFF);
        #endif
    }
    
    // Turn on LED 1 to indicate P2P connection established
    LED_1 = 1;

    /*******************************************************************/
    // Following block display demo instructions on LCD based on the
    // demo board used. 
    /*******************************************************************/
    #if defined(EXPLORER16)
        LCDDisplay((char *)"RD6: Broadcast  RD7: Unicast", 0, FALSE); 
    #elif defined(PIC18_EXPLORER)
        LCDDisplay((char *)"RB0: Broadcast", 0, FALSE); 
    #elif defined(EIGHT_BIT_WIRELESS_BOARD)
        LCDDisplay((char *)"RB0: Broadcast  RB2: Unicast", 0, FALSE);
    #endif

    while(1)
    {   
        /*******************************************************************/
        // Function MiApp_MessageAvailable will return a boolean to indicate 
        // if a message for application layer has been received by the 
        // transceiver. If a message has been received, all information will 
        // be stored in rxMessage, structure of RECEIVED_MESSAGE.
        /*******************************************************************/
        if( MiApp_MessageAvailable() )
        {
            /*******************************************************************/
            // If a packet has been received, following code prints out some of
            // the information available in rxMessage.
            /*******************************************************************/
            #ifdef ENABLE_SECURITY
                if( rxMessage.flags.bits.secEn )
                {
                    ConsolePutROMString((ROM char *)"Secured ");
                }
            #endif
            #ifndef TARGET_SMALL
                if( rxMessage.flags.bits.broadcast )
                {
                    ConsolePutROMString((ROM char *)"Broadcast Packet with RSSI ");
                }
                else
                {
                    ConsolePutROMString((ROM char *)"Unicast Packet with RSSI ");
                }
                PrintChar(rxMessage.PacketRSSI);
                if( rxMessage.flags.bits.srcPrsnt )
                {
                    ConsolePutROMString((ROM char *)" from ");
                    if( rxMessage.flags.bits.altSrcAddr )
                    {
                        PrintChar( rxMessage.SourceAddress[1] );
                        PrintChar( rxMessage.SourceAddress[0] );
                    }
                    else
                    {    
                        for(i = 0; i < MY_ADDRESS_LENGTH; i++)
                        {
                            PrintChar(rxMessage.SourceAddress[MY_ADDRESS_LENGTH-1-i]);
                        }
                    }    
                }
            #endif
            ConsolePutROMString((ROM char *)": ");

            for(i = 0; i < rxMessage.PayloadSize; i++)
            {
                ConsolePut(rxMessage.Payload[i]);
            }
            
            // Toggle LED2 to indicate receiving a packet.
            LED_2 ^= 1;

            /*******************************************************************/
            // Function MiApp_DiscardMessage is used to release the current 
            // received message. After calling this function, the stack can 
            // start to process the next received message.
            /*******************************************************************/ 
            MiApp_DiscardMessage();
            
            /*******************************************************************/
            // Following block update the total received and transmitted 
            // messages on the LCD of the demo board. 
            /*******************************************************************/
            LCDTRXCount(TxNum, ++RxNum);
        }
        else 
        {
            #ifdef ENABLE_FREQUENCY_AGILITY
                /***********************************************************************/
                // TxPersistFailures is the local variable to track the transmission 
                // failure because no acknowledgement frame is received. Typically,
                // this is the indication of either very strong noise, or the PAN
                // has hopped to another channel. 
                /***********************************************************************/
                if( TxPersistFailures > 3 )
                {
                    /***********************************************************************/
                    // Display the resynchronization message on LCD of demo board, if 
                    // applicable 
                    /***********************************************************************/
                    LCDDisplay((char *)"Resynchronizing the Connection", 0, FALSE); 
                    ConsolePutROMString((ROM char*)"\r\nResynchronizing the Connection...");
                    
                    /*******************************************************************/
                    // Function MiApp_TransceiverPowerState is used to set the power state
                    // of RF transceiver. There are three possible states:
                    //   - POWER_STATE_SLEEP        Put transceiver into sleep
                    //   - POWER_STATE_WAKEUP       Wake up the transceiver only
                    //   - POWER_STATE_WAKEUP_DR    Wake up and send Data Request command
                    /*******************************************************************/
                    MiApp_TransceiverPowerState(POWER_STATE_WAKEUP);
                    
                    /***********************************************************************/
                    // Function MiApp_ResyncConnection is used to synchronized connection
                    // if one side of communication jumped to another channel, when 
                    // frequency agility is performed. Usually, this is done by the 
                    // sleeping device, since the sleeping device cannot hear the broadcast 
                    // of channel hopping command.
                    //
                    // The first parameter is the index of connection table for the peer 
                    // node, which we would like to resynchronize to.
                    // The second parameter is the bit map of channels to be scanned
                    /***********************************************************************/
                    MiApp_ResyncConnection(0, 0xFFFFFFFF);    
                    TxPersistFailures = 0;
                    ReadyToSleep = FALSE;
                    /***********************************************************************/
                    // Display the resynchronization result on the LCD of demo board, if 
                    // applicable
                    /***********************************************************************/
                    LCDDisplay((char *)" Resynchronized  to Channel %d", currentChannel, FALSE);
                }
                else
                {
                    #ifdef ENABLE_SLEEP
                        ReadyToSleep = TRUE;
                    #endif
                }    
            
            #endif
            
            #ifdef ENABLE_SLEEP
                /*******************************************************************/
                // If Data Request command and data transmision has been handled,
                // as the RFD device, it is time to consider put both the radio and 
                // MCU into sleep mode to conserve power.
                /*******************************************************************/
                if( ReadyToSleep )
                {   
                    #if defined(ENABLE_TIME_SYNC)
                        DWORD_VAL    delayTick;
                    #endif
                    ReadyToSleep = FALSE;
                    
                    /*******************************************************************/
                    // Function MiApp_TransceiverPowerState is used to set the power 
                    // state of RF transceiver. There are three possible states:
                    //   - POWER_STATE_SLEEP        Put transceiver into sleep
                    //   - POWER_STATE_WAKEUP       Wake up the transceiver only
                    //   - POWER_STATE_WAKEUP_DR    Wake up and send Data Request 
                    //                              command
                    /*******************************************************************/
                    MiApp_TransceiverPowerState(POWER_STATE_SLEEP);
                                        
                    /*******************************************************************/
                    // Prepare the condition to wake up the MCU. The MCU can either be
                    // waken up by the timeout of watch dog timer (Time Synchronization 
                    // off), timeout of counter with external 32KHz crystal (Time 
                    // Synchronization on), or by the pin change notification interrupt 
                    // by pushing the button.
                    /*******************************************************************/
                    #if defined(ENABLE_TIME_SYNC)
                        /******************************************************************/
                        // When Time Synchronization feature is enabled, a counter with 
                        // external 32KHz crystal will be used to keep the precise timing
                        // when the MCU is in sleep. we need to update the counter with 
                        // proper value. The timeout of the counter will wake up the MCU.
                        /******************************************************************/
                        
                        /******************************************************************/
                        // Following block is used to update the CounterValue with more
                        // precise timing control. This block is useful if very precise 
                        // timing is required, such as time slot is very short (<< 1 second)
                        // or application spends considerable, unpredictable time performing
                        // other operations
                        /******************************************************************/
                        #if 1
                            delayTick.Val = 0;
                            
                            #if defined(__18CXX)
                                delayTick.v[0] = TMR3L;
                                delayTick.v[1] = TMR3H;
                            #elif defined(__dsPIC33F__) || defined(__PIC24F__) || defined(__PIC24FK__) ||defined(__PIC24H__)
                                delayTick.w[0] = TMR1;
                            #elif defined(__PIC32MX__)
                                delayTick.w[0] = TMR1;
                            #endif
                            delayTick.Val += CounterValue.Val;
                            if( delayTick.v[2] > 0 )
                            {
                                if( WakeupTimes.Val > 0 )
                                {
                                    WakeupTimes.Val--;
                                }
                                else
                                {
                                    delayTick.Val = CounterValue.Val;
                                }    
                            }
                            CounterValue.v[0] = delayTick.v[0];
                            CounterValue.v[1] = delayTick.v[1];   
                        #endif 
                        
                        /******************************************************************/
                        // The total sleeping time of the device is controlled by two 16bit
                        // parameters: WakeupTimes and CouterValue. Both values are referred
                        // from the protocol stack.
                        // The counter with external 32KHz crystal can provide wakeup time 
                        // up to around 16 seconds. 
                        // If the intended sleep period is less than 16 second, only 
                        // CounterValue will be loaded to the counter, the device
                        // will wake up by the counter timeout. 
                        // If the intended sleep period is longer than 16 seconds, 
                        // WakeupTimes will store the total number of 16-second wakeup and 
                        // the rest remaining time will be loaded into CounterValue. When
                        // the counter with external 32KHz crystal timeout and wake up the
                        // MCU, the MCU will reduce WakeupTimes by one and keep the radio
                        // in sleep. When the WakeupTimes are reduced to be zero, 
                        // CounterValue will be loaded to the counter. The whole device
                        // will wake up once the counter timeout this time.
                        /******************************************************************/
                        while(1)
                        {
                            #if defined(__18CXX)
                                if( WakeupTimes.Val > 0 )
                                {
                                    LED_2 = 0;
                                    TMR3H = 0;
                                    TMR3L = 0;
                                }    
                                else
                                {
                                    LED_2 = 1;
                                    
                                    TMR3H = CounterValue.v[1];
                                    TMR3L = CounterValue.v[0];
                                }    
                                PIR2bits.TMR3IF = 0;
                                while( !ConsoleIsPutReady() );
                                #if defined(PIC18_EXPLORER)
                                    INTCONbits.INT0IF = 0;
                                    INTCON2bits.INTEDG0 = 0;
                                    INTCONbits.INT0IE = 1;
                                #elif defined(EIGHT_BIT_WIRELESS_BOARD)
                                    INTCONbits.INT0IF = 0;
                                    INTCON2bits.INTEDG0 = 0;
                                    INTCONbits.INT0IE = 1;
                                    INTCON3bits.INT2IF = 0;
                                    INTCON2bits.INTEDG2 = 0;
                                    INTCON3bits.INT2IE = 1;
                                #elif defined(PICDEMZ)
                                    INTCONbits.RBIF = 0;        // clear pin change notification interrupt
                                    INTCONbits.RBIE = 1;        // enable pin change notification interrupt
                                #endif
                            #elif defined(__dsPIC33F__) || defined(__PIC24F__) || defined(__PIC24FK__) || defined(__PIC24H__)
                                
                                if( WakeupTimes.Val > 0 )
                                {
                                    LED_2 = 0;
                                    TMR1 = 0;
                                }    
                                else
                                {
                                    LED_2 = 1;
                                    
                                    TMR1 = CounterValue.Val;
                                }  
                                IFS0bits.T1IF = 0;

                                IFS1bits.CNIF = 0;
                                IEC1bits.CNIE = 1;          // enable pin change notification interrupt
                            #elif defined(__PIC32MX__)
                                if( WakeupTimes.Val > 0 )
                                {
                                    LED_2 = 0;
                                    TMR1 = 0;
                                }    
                                else
                                {
                                    LED_2 = 1;
                                    while(T1CONbits.TWIP) ;
                                    TMR1 = CounterValue.Val;
                                }  
                                IFS0bits.T1IF = 0;
                              
                                Enable_PB_1_2_Interrupts(); // enable pin change notification interrupt
                            #endif
                            
                            // make sure UART has nothing to output
                            while(ConsoleIsPutReady() == 0);
                    
                            // Put MCU into sleep mode
                            Sleep();
                            
                            #if defined(__18CXX)
                                #if defined(PIC18_EXPLORER)
                                    INTCONbits.INT0IE = 0;
                                #elif defined(EIGHT_BIT_WIRELESS_BOARD)
                                    INTCONbits.INT0IE = 0;
                                    INTCON3bits.INT2IE = 0;    
                                #elif defined(PICDEMZ)
                                    INTCONbits.RBIE = 0;        // disable pin change notification interrupt
                                #endif
                            #elif defined(__dsPIC33F__) || defined(__PIC24F__) || defined(__PIC24FK__) || defined(__PIC24H__)
                                //IEC1bits.CNIE = 0;          // disable pin change notification interrupt
                            #elif defined(__PIC32MX__)
                                RCONCLR = RCON_SLEEP_MASK | RCON_IDLE_MASK;   // clear the Sleep and Idle bits
                            #endif
                            
                            if( WakeupTimes.Val == 0 )
                            {
                                break;
                            }    
                            WakeupTimes.Val--;
                        } 
                    
                    #else
                    
                        /******************************************************************/
                        // When Time Synchronization is not enabled, watch dog timer is 
                        // used to wake up the device periodically.
                        /******************************************************************/
                        #if defined(__18CXX)
                            ClrWdt();
                            WDTCONbits.SWDTEN = 1;      // enable watch dog timer
                            #if defined(PIC18_EXPLORER)
                                INTCONbits.INT0IF = 0;
                                INTCON2bits.INTEDG0 = 0;
                                INTCONbits.INT0IE = 1;
                            #elif defined(EIGHT_BIT_WIRELESS_BOARD)
                                INTCONbits.INT0IF = 0;
                                INTCON2bits.INTEDG0 = 0;
                                INTCONbits.INT0IE = 1;
                                INTCON3bits.INT2IF = 0;
                                INTCON2bits.INTEDG2 = 0;
                                INTCON3bits.INT2IE = 1;
                            #elif defined(PICDEMZ)
                                INTCONbits.RBIF = 0;        // clear pin change notification interrupt
                                INTCONbits.RBIE = 1;        // enable pin change notification interrupt
                            #endif
                        #elif defined(__dsPIC33F__) || defined(__PIC24F__) || defined(__PIC24FK__) || defined(__PIC24H__)
                            ClrWdt();
                            RCONbits.SWDTEN = 1;        // enable watch dog timer
                            IFS1bits.CNIF = 0;
                            IEC1bits.CNIE = 1;          // enable pin change notification interrupt
                        #elif defined(__PIC32MX__)
                            Enable_PB_1_2_Interrupts(); // enable pin change notification interrupt
                            EnableWDT();                // enable watch dog timer
                            ClearWDT();                 // clear watch dog timer
                        #endif
                        
                        // make sure UART has nothing to output
                        while(ConsoleIsPutReady() == 0);
                        
                        // Put MCU into sleep mode
                        Sleep();
                        
                        #if defined(__18CXX)
                            #if defined(PIC18_EXPLORER)
                                INTCONbits.INT0IE = 0;
                            #elif defined(EIGHT_BIT_WIRELESS_BOARD)
                                INTCONbits.INT0IE = 0;
                                INTCON3bits.INT2IE = 0;    
                            #elif defined(PICDEMZ)
                                INTCONbits.RBIE = 0;        // disable pin change notification interrupt
                            #endif
                            WDTCONbits.SWDTEN = 0;      // disable watch dog timer
                        #elif defined(__dsPIC33F__) || defined(__PIC24F__) || defined(__PIC24FK__) || defined(__PIC24H__)
                            RCONbits.SWDTEN = 0;        // disable watch dog timer                           
                        #elif defined(__PIC32MX__)
                            RCONCLR = RCON_SLEEP_MASK | RCON_IDLE_MASK;   // clear the Sleep and Idle bits
                            DisableWDT();
                        #endif
                    #endif

                    
                    /*******************************************************************/
                    // Function ButtonPressed will return if any of the two buttons
                    // (RB5 and RB4 on PICDEM Z or RD6 and RD7 on Explorer 16) has been
                    // pushed.
                    /*******************************************************************/
                    PressedButton = ButtonPressed();   

                    #if defined(ENABLE_ENHANCED_DATA_REQUEST) 
                        /*******************************************************************/
                        // The handling of Enhanced Data Request feature depends on when
                        // to send out message. If Enhanced Data Request feature is enabled,
                        // The message should be sent out before transceiver wakes up and
                        // sends out the Data Reqeust. Otherwise, the message should be 
                        // sent after transceiver wakes up and sends out the Data Reqeust 
                        // command.
                        // When Enhanced Data Request feature is enabled, only unicast 
                        // message can be sent with Data Request. Broadcast, however, has 
                        // a different destination address, thus must be sent after the 
                        // normal Data Request procedure in the normal way. 
                        /*******************************************************************/         
                        switch( PressedButton )
                        {
                            case 1: 
                                /*******************************************************************/                
                                // Button 1 pressed
                                // First use MiApp_FlushTx to reset the Transmit buffer. Then fill 
                                // the TX buffer by calling function MiApp_WriteData
                                /*******************************************************************/
                                MiApp_FlushTx();
                                if( (TxSynCount % 6 ) == 0 )
                                {
                                    MiApp_WriteData(0x0D);
                                    MiApp_WriteData(0x0A);
                                }
                                else
                                {                     
                                    for(i = 0; i < 21; i++)
                                    {
                                        MiApp_WriteData(MiWi[(TxSynCount%6)-1][i]);
                                    }
                                }
                                TxSynCount++;
                                
                                /*******************************************************************/
                                // Function MiApp_UnicastConnection is one of the functions to 
                                // unicast a message.
                                //    The first parameter is the index of connection table for 
                                //       the peer device. In this demo, since there are only two
                                //       devices involved, the peer device must be stored in the 
                                //       first P2P Connection Entry in the connection table.
                                //    The second parameter is the boolean to indicate if we need 
                                //       to secure the frame. If encryption is applied, the 
                                //       security level and security key are defined in the 
                                //       configuration file for the transceiver
                                //
                                // Another way to unicast a message is by calling function
                                // MiApp_UnicastAddress. Instead of supplying the index of the 
                                // connection table of the peer device, this function requires 
                                // the input parameter of destination address directly.
                                /*******************************************************************/
                                if( MiApp_UnicastConnection(0, FALSE) == FALSE )
                                {
                                    Printf("\r\nUnicast Failed\r\n");
                                    /*******************************************************************/
                                    // Following block display error message on LCD of demo board.
                                    /*******************************************************************/
                                    LCDDisplay((char *)" Unicast Failed", 0, TRUE);
                                }
                                else
                                {
                                    TxNum++;
                                }
                                
                                /*******************************************************************/
                                // Following block update the total received and transmitted messages
                                // on the LCD of the demo board. 
                                /*******************************************************************/
                                LCDTRXCount(TxNum, RxNum);   

                                break;
              
                            case 2:
                                /*******************************************************************/                
                                // Button 2 pressed.
                                // First use MiApp_FlushTx to reset the Transmit buffer. Then fill 
                                // the TX buffer by calling function MiApp_WriteData
                                /*******************************************************************/
                                MiApp_FlushTx();
                                if( (TxSynCount2 % 6 ) == 0 )
                                {
                                    MiApp_WriteData(0x0D);
                                    MiApp_WriteData(0x0A);
                                }
                                else
                                {                     
                                    for(i = 0; i < 11; i++)
                                    {
                                        MiApp_WriteData(DE[(TxSynCount2%6)-1][i]);
                                    }
                                }
                                TxSynCount2++;
                                
                                /*******************************************************************/
                                // Function MiApp_UnicastConnection is one of the functions to 
                                // unicast a message.
                                //    The first parameter is the index of connection table for 
                                //       the peer device. In this demo, since there are only two
                                //       devices involved, the peer device must be stored in the 
                                //       first P2P Connection Entry in the connection table.
                                //    The second parameter is the boolean to indicate if we need 
                                //       to secure the frame. If encryption is applied, the 
                                //       security level and security key are defined in the 
                                //       configuration file for the transceiver
                                //
                                // Another way to unicast a message is by calling function
                                // MiApp_UnicastAddress. Instead of supplying the index of the 
                                // connection table of the peer device, this function requires 
                                // the input parameter of destination address directly.
                                /*******************************************************************/
                                if( MiApp_UnicastConnection(0, TRUE) == FALSE )
                                {
                                    Printf("\r\nUnicast Failed\r\n");
                                    /*******************************************************************/
                                    // Following block display error message on LCD of demo board.
                                    /*******************************************************************/
                                    LCDDisplay((char *)" Unicast Failed", 0, TRUE);
                                }
                                else
                                {
                                    TxNum++;
                                }
                                
                                /*******************************************************************/
                                // Following block update the total received and transmitted messages
                                // on the LCD of the demo board. 
                                /*******************************************************************/
                                LCDTRXCount(TxNum, RxNum);
                                break;
                                
                            default:
                                MiApp_FlushTx();
                                break;
                        }
   
                    #endif
                    
                    /*******************************************************************/
                    // Function MiApp_TransceiverPowerState is used to set the power 
                    // state of RF transceiver. There are three possible states:
                    //   - POWER_STATE_SLEEP        Put transceiver into sleep
                    //   - POWER_STATE_WAKEUP       Wake up the transceiver only
                    //   - POWER_STATE_WAKEUP_DR    Wake up and send Data Request 
                    //                              command
                    /*******************************************************************/
                    if( MiApp_TransceiverPowerState(POWER_STATE_WAKEUP_DR) > SUCCESS )
                    {
                        Printf("\r\nData Request Failed");
                        TxPersistFailures++;
                        LCDDisplay((char *)"Connection Lost     %d Times", TxPersistFailures, FALSE);
                    }
                    else
                    {
                        if( TxPersistFailures > 0 )
                        {
                            LCDTRXCount(TxNum, RxNum);
                        }
                        TxPersistFailures = 0;
                        
                    }
                    
                    #if !defined(ENABLE_ENHANCED_DATA_REQUEST)
                        /*******************************************************************/
                        // The handling of Enhanced Data Request feature depends on when
                        // to send out message. If Enhanced Data Request feature is enabled,
                        // The message should be sent out before transceiver wakes up and
                        // sends out the Data Reqeust. Otherwise, the message should be 
                        // sent after transceiver wakes up and sends out the Data Reqeust 
                        // command.
                        /*******************************************************************/
                        switch( PressedButton )
                        {
                            case 1: 
                                /*******************************************************************/                
                                // Button 1 pressed.
                                // First use MiApp_FlushTx to reset the Transmit buffer. Then fill 
                                // the TX buffer by calling function MiApp_WriteData
                                /*******************************************************************/
                                MiApp_FlushTx();
                                if( (TxSynCount % 6 ) == 0 )
                                {
                                    // insert an empty line for every complete bitmap
                                    MiApp_WriteData(0x0D);
                                    MiApp_WriteData(0x0A);
                                }
                                else
                                {                     
                                    for(i = 0; i < 21; i++)
                                    {
                                        MiApp_WriteData(MiWi[(TxSynCount%6)-1][i]);
                                    }
                                }
                                TxSynCount++;
                                
                                /*******************************************************************/
                                // Function MiApp_BroadcastPacket is used to broadcast a message
                                //    The only parameter is the boolean to indicate if we need to
                                //    secure the message
                                /*******************************************************************/
                                MiApp_BroadcastPacket(FALSE);
                                
                                /*******************************************************************/
                                // Following block update the total received and transmitted 
                                // messages on the LCD of the demo board. 
                                /*******************************************************************/
                                LCDTRXCount(++TxNum, RxNum);   
                                break;
              
                            case 2:
                                /*******************************************************************/                
                                // Button 2 pressed.
                                // First use MiApp_FlushTx to reset the Transmit buffer. Then fill 
                                // the TX buffer by calling function MiApp_WriteData
                                /*******************************************************************/
                                MiApp_FlushTx();
                                if( (TxSynCount2 % 6 ) == 0 )
                                {
                                    // insert an empty line for every complete bitmap
                                    MiApp_WriteData(0x0D);
                                    MiApp_WriteData(0x0A);
                                }
                                else
                                {                     
                                    for(i = 0; i < 11; i++)
                                    {
                                        MiApp_WriteData(DE[(TxSynCount2%6)-1][i]);
                                    }
                                }
                                TxSynCount2++;
                                
                                /*******************************************************************/
                                // Function MiApp_UnicastConnection is one of the functions to 
                                // unicast a message.
                                //    The first parameter is the index of connection table for 
                                //       the peer device. In this demo, since there are only two
                                //       devices involved, the peer device must be stored in the 
                                //       first P2P Connection Entry in the connection table.
                                //    The second parameter is the boolean to indicate if we need 
                                //       to secure the frame. If encryption is applied, the 
                                //       security level and security key are defined in the 
                                //       configuration file for the transceiver
                                //
                                // Another way to unicast a message is by calling function
                                // MiApp_UnicastAddress. Instead of supplying the index of the 
                                // connection table of the peer device, this function requires the 
                                // input parameter of destination address directly.
                                /*******************************************************************/
                                if( MiApp_UnicastConnection(0, TRUE) == FALSE )
                                {
                                    Printf("\r\nUnicast Failed\r\n");
                                    /*******************************************************************/
                                    // Following block display error message on LCD of demo board.
                                    /*******************************************************************/
                                    LCDDisplay((char *)" Unicast Failed", 0, TRUE);
                                }
                                else
                                {
                                    TxNum++;
                                }
                                
                                /*******************************************************************/
                                // Following block update the total received and transmitted 
                                // messages on the LCD of the demo board. 
                                /*******************************************************************/
                                LCDTRXCount(TxNum, RxNum);
                                break;
                                
                            default:
                                break;
                        }

                    #endif

                }
            #endif   
             
        }
    }
}


