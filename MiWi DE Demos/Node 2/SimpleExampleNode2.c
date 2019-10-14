/********************************************************************
* FileName:		SimpleExampleNode2.c
* Dependencies: none   
* Processor:	PIC18, PIC24, PIC32, dsPIC30, dsPIC33
*               tested with 18F4620, dsPIC33FJ256GP710
* Complier:     Microchip C18 v3.04 or higher
*				Microchip C30 v2.03 or higher
*               Microchip C32 v1.02 or higher	
* Company:		Microchip Technology, Inc.
*
* Copyright and Disclaimer Notice for P2P Software:
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
*  This is the simple example that demonstrate the simple programming
*  interface of MiWi Development Environment (DE). As you may see in
*  the demo code, besides application specific code, all wireless
*  communicate code is less than 30 lines. This simple example must be 
*  used with node 1 of simple example.
*  In this simple example, following features have been demonstrated:
*   - Hand Shake
*       A hand-shaking process has been demonstrated by establishing
*       connection with a peer device.
*   - Receiving Message
*       This example demonstrate how to check received message and 
*       available information for the received data. Finally, this
*       example also show how to process the message
*   - Transmitting Message
*       This example demonstrate how to transmit message by broadcast
*       or unicast
*   - Security
*       This example demonstrate how to require the protocol stack
*       to encrypt the outgoing message. It also shows how the 
*       protocol stack automatically decrypt the incoming message
*       and provide the security status to the application layer.
*   
* Change History:
*  Rev   Date         Author    Description
*  0.1   1/03/2008    yfy       Initial revision
*  2.0   4/15/2009    yfy       MiMAC and MiApp revision
*  3.1   5/28/2010    yfy       MiWi DE 3.1
********************************************************************/

/************************ HEADERS **********************************/
#include "WirelessProtocols/Console.h"
#include "ConfigApp.h"
#include "HardwareProfile.h"
#include "WirelessProtocols/MCHP_API.h"
#include "WirelessProtocols/LCDBlocking.h"

/************************ VARIABLES ********************************/
#define LIGHT   0x01
#define SWITCH  0x02

/*******************************************************************/
// AdditionalNodeID variable array defines the additional 
// information to identify a device on a PAN. This array
// will be transmitted when initiate the connection between 
// the two devices. This  variable array will be stored in 
// the Connection Entry structure of the partner device. The 
// size of this array is ADDITIONAL_NODE_ID_SIZE, defined in 
// ConfigApp.h.
// In this demo, this variable array is set to be empty.
/******************************************************************/
#if ADDITIONAL_NODE_ID_SIZE > 0
    BYTE AdditionalNodeID[ADDITIONAL_NODE_ID_SIZE] = {SWITCH};
#endif

/*******************************************************************/
// The variable myChannel defines the channel that the P2P connection
// is operate on. This variable will be only effective if energy scan
// (ENABLE_ED_SCAN) is not turned on. Once the energy scan is turned
// on, the operating channel will be one of the channels available with
// least amount of energy (or noise).
/*******************************************************************/
BYTE myChannel = 25;

/*******************************************************************/
// the following two variable arrays are the data to be transmitted
// in this demo. They are bit map of English word "MiWi" and "DE"
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


/*********************************************************************
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
* Overview:		    This is the main function that runs the simple 
*                   example demo. The purpose of this example is to
*                   demonstrate the simple application programming
*                   interface for the MiWi(TM) Development 
*                   Environment. By virtually total of less than 30 
*                   lines of code, we can develop a complete 
*                   application using MiApp interface. The 
*                   application will first try to establish a P2P 
*                   link with another device and then process the 
*                   received information as well as transmit its own 
*                   information.
*                   MiWi(TM) DE also support a set of rich 
*                   features. Example code FeatureExample will
*                   demonstrate how to implement the rich features 
*                   through MiApp programming interfaces.
*
* Note:			    
**********************************************************************/
#if defined(__18CXX)
void main(void)
#else
int main(void)
#endif
{   
    BYTE i;
    BYTE TxSynCount = 0;
    BYTE TxSynCount2 = 0;
    BYTE TxNum = 0;
    BYTE RxNum = 0;
        
    /*******************************************************************/
    // Initialize the system
    /*******************************************************************/
    BoardInit();         
    ConsoleInit();  
    
    /*******************************************************************/
    // Following block display demo information on LCD of Explore 16 or 
    // PIC18 Explorer demo board.
    /*******************************************************************/
    #if defined(MRF49XA)
        #if defined(PROTOCOL_P2P)
            LCDDisplay((char *)"Simple P2P Demo  MRF49XA Node 2", 0, TRUE); 
        #endif
        #if defined(PROTOCOL_MIWI)
            LCDDisplay((char *)"Simple MiWi Demo MRF49XA Node 2", 0, TRUE); 
        #endif
    #elif defined(MRF24J40)
        #if defined(PROTOCOL_P2P)
            LCDDisplay((char *)"Simple P2P Demo MRF24J40 Node 2", 0, TRUE);
        #endif
        #if defined(PROTOCOL_MIWI)
            LCDDisplay((char *)"Simple MiWi DemoMRF24J40 Node 2", 0, TRUE);
        #endif
    #elif defined(MRF89XA)
        #if defined(PROTOCOL_P2P)
            LCDDisplay((char *)"Simple P2P Demo  MRF89XA Node 2", 0, TRUE); 
        #endif
        #if defined(PROTOCOL_MIWI)
            LCDDisplay((char *)"Simple MiWi Demo MRF89XA Node 2", 0, TRUE); 
        #endif
    #endif
    
    #if defined(PROTOCOL_P2P)
        Printf("\r\nStarting Node 2 of Simple Demo for MiWi(TM) P2P Stack ...");  
    #endif
    #if defined(PROTOCOL_MIWI)
        Printf("\r\nStarting Node 2 of Simple Demo for MiWi(TM) Stack ...");  
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
    #endif 
    
    Printf("\r\n   Demo Instruction:");
    Printf("\r\n                     Power on the board until LED 1 lights up");
    Printf("\r\n                     to indicate connecting with peer. Push");
    Printf("\r\n                     Button 1 to broadcast message. Push Button");
    Printf("\r\n                     2 to unicast encrypted message. LED 2 will");
    Printf("\r\n                     be toggled upon receiving messages. ");
    Printf("\r\n\r\n");
    LED_1 = 0;
    LED_2 = 0;



     /*******************************************************************/
    // Initialize Microchip proprietary protocol. Which protocol to use
    // depends on the configuration in ConfigApp.h
    /*******************************************************************/
    /*******************************************************************/
    // Function MiApp_ProtocolInit initialize the protocol stack. The
    // only input parameter indicates if previous network configuration
    // should be restored. In this simple example, we assume that the 
    // network starts from scratch.
    /*******************************************************************/
    MiApp_ProtocolInit(FALSE);   

    // Set default channel
    if( MiApp_SetChannel(myChannel) == FALSE )
    {
        Printf("\r\nSelection of channel ");
        PrintDec(myChannel);
        Printf(" is not supported in current condition.\r\n");
        #if defined(__18CXX)
            return;
        #else
            return 0;
        #endif
    }
    
    /*******************************************************************/
    // Function MiApp_ConnectionMode defines the connection mode. The
    // possible connection modes are:
    //  ENABLE_ALL_CONN:    Enable all kinds of connection
    //  ENABLE_PREV_CONN:   Only allow connection already exists in 
    //                      connection table
    //  ENABL_ACTIVE_SCAN_RSP:  Allow response to Active scan
    //  DISABLE_ALL_CONN:   Disable all connections. 
    /*******************************************************************/
    MiApp_ConnectionMode(ENABLE_ALL_CONN);
    
    /*******************************************************************/
    // Display current opertion on LCD of demo board, if applicable
    /*******************************************************************/
    LCDDisplay((char *)"Connecting Peer  on Channel %d ", myChannel, FALSE);
    
    /*******************************************************************/
    // Function MiApp_EstablishConnection try to establish a new 
    // connection with peer device. 
    // The first parameter is the index to the active scan result, which 
    //      is acquired by discovery process (active scan). If the value 
    //      of the index is 0xFF, try to establish a connection with any 
    //      peer.
    // The second parameter is the mode to establish connection, either 
    //      direct or indirect. Direct mode means connection within the 
    //      radio range; Indirect mode means connection may or may not 
    //      in the radio range. 
    /*******************************************************************/
    while( (i = MiApp_EstablishConnection(0xFF, CONN_MODE_DIRECT)) == 0xFF );

    /*******************************************************************/
    // Display current opertion on LCD of demo board, if applicable
    /*******************************************************************/
    LCDDisplay((char *)" Connected Peer  on Channel %d", myChannel, TRUE);
    
    /*******************************************************************/
    // Function DumpConnection is used to print out the content of the
    //  Connection Entry on the hyperterminal. It may be useful in 
    // the debugging phase.
    // The only parameter of this function is the index of the  
    // Connection Entry. The value of 0xFF means to print out all
    //  valid Connection Entry; otherwise, the Connection Entry
    // of the input index will be printed out.
    /*******************************************************************/
    #ifdef ENABLE_DUMP
        DumpConnection(0xFF);
    #endif

    // Turn on LED 1 to indicate P2P connection established
    LED_1 = 1;


    /*******************************************************************/
    // Following block display demo instructions on LCD based on the
    // demo board used. 
    /*******************************************************************/
    #if defined(EXPLORER16)
        LCDDisplay((char *)"RD6: Broadcast  RD7: Unicast", 0, FALSE); 
    #elif defined(PIC18_EXPLORER)
        LCDDisplay((char *)"RB0: Broadcast  RA5: Unicast", 0, FALSE); 
    #elif defined(EIGHT_BIT_WIRELESS_BOARD)
        LCDDisplay((char *)"RB0: Broadcast  RB2: Unicast", 0, FALSE); 
    #endif

    while(1)
    {
        /*******************************************************************/
        // Function MiApp_MessageAvailable returns a boolean to indicate if 
        //  a packet has been received by the transceiver. If a packet has
        //  been received, all information will be stored in the rxFrame, 
        //  structure of RECEIVED_MESSAGE.
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
                        PrintChar(rxMessage.SourceAddress[1]);
                        PrintChar(rxMessage.SourceAddress[0]);
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
            //  received packet.
            // After calling this function, the stack can start to process the
            //  next received frame 
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
            /*******************************************************************/
            // If no packet received, now we can check if we want to send out
            // any information.
            // Function ButtonPressed will return if any of the two buttons
            // pushed.
            /*******************************************************************/
            BYTE PressedButton = ButtonPressed();
            
            switch( PressedButton )
            {
                case 1: 
                    /*******************************************************************/ 
                    // Button 1 pressed. We need to send out the bitmap of word "MiWi"
                    // First call MiApp_FlushTx to reset the Transmit buffer. Then fill 
                    // the buffer one byte by one byte by calling function 
                    // MiApp_WriteData
                    /*******************************************************************/
                    MiApp_FlushTx();
                    if( (TxSynCount % 6 ) == 0 )
                    {
                        // transmit an empty line after each word bitmap is done
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
                    //       secure the frame
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
                    // Button 2 pressed. We need to send out the bitmap of word "DE" 
                    // encrypted.
                    // First call function MiApp_FlushTx to reset the Transmit buffer. 
                    //  Then fill the buffer one byte by one byte by calling function 
                    //  MiApp_WriteData
                    /*******************************************************************/
                    MiApp_FlushTx();
                    if( (TxSynCount2 % 6 ) == 0 )
                    {
                        // write an empty line after each bitmap
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
                    //  unicast a message.
                    //    The first parameter is the index of Connection Entry for 
                    //       the peer device. In this demo, since there are only two
                    //       devices involved, the peer device must be stored in the 
                    //       first Connection Entry
                    //    The second parameter is the boolean to indicate if we need to
                    //       secure the frame. If encryption is applied, the security 
                    //       key are defined in ConfigApp.h
                    //
                    // Another way to unicast a message is by calling function
                    //  MiApp_UnicastAddress. Instead of supplying the index of the 
                    //  Connection Entry of the peer device, this function requires the 
                    //  input parameter of destination address.
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
                    break;
            }    
        }
    }
}
