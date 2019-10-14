/********************************************************************
* FileName:		MiWi PRO Test Interface.c
* Dependencies: none   
* Processor:	PIC18, PIC24F, PIC24H, dsPIC30, dsPIC33
*               tested with 18F4620, dsPIC33FJ256GP710	
* Hardware:		PICDEM Z, PIC18 Explorer, 8bit-WDK, Explorer 16
* Complier:     Microchip C18 v3.04 or higher
*				Microchip C30 v2.03 or higher
*               Microchip C32 v1.11 or higher	
* Company:		Microchip Technology, Inc.
*
* Copyright and Disclaimer Notice for P2P Software:
*
* Copyright � 2007-2011 Microchip Technology Inc.  All rights reserved.
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
* SOFTWARE AND DOCUMENTATION ARE PROVIDED �AS IS� WITHOUT WARRANTY OF ANY 
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
*  This is the testing interface that is written for MiWi PRO. 
*  Hyper terminal is used to display and select the testing
*  interface driven by menu. 
*
* Change History:
*  Rev   Date         Author    Description
*  4.1   06/01/2011   yfy       Initial release
********************************************************************/

/************************ HEADERS **********************************/
#include "WirelessProtocols\Console.h"
#include "Transceivers\Transceivers.h"
#include "WirelessProtocols\MCHP_API.h"
//#include "WirelessProtocols\SymbolTime.h"

/************************ VARIABLES ********************************/

/*******************************************************************/
// AdditionalConnectionPayload variable array defines the additional 
// information to identify a device on a P2P connection. This array
// will be transmitted with the P2P_CONNECTION_REQUEST command to 
// initiate the connection between the two devices. Along with the 
// long address of this device, this  variable array will be stored 
// in the P2P Connection Entry structure of the partner device. The 
// size of this array is ADDITIONAL_CONNECTION_PAYLOAD, defined in 
// P2PDefs.h.
// In this demo, this variable array is set to be empty.
/******************************************************************/
#if ADDITIONAL_NODE_ID_SIZE > 0
    BYTE AdditionalNodeID[ADDITIONAL_NODE_ID_SIZE] = {0x12};
#endif

/*******************************************************************/
// The variable myChannel defines the channel that the P2P connection
// is operate on. This variable will be only effective if energy scan
// (ENABLE_ED_SCAN) is not turned on. Once the energy scan is turned
// on, the operating channel will be one of the channels available with
// least amount of energy (or noise).
/*******************************************************************/
BYTE myChannel = 25;

BYTE TxNum = 0;
BYTE RxNum = 0;

#if defined(PROTOCOL_MIWI_PRO)
ROM char * const menu =
    "\r\n     1: Enable/Disable Join"
    "\r\n     2: Show Family Tree"
    "\r\n     3: Show Routing Table"
    "\r\n     4: Send Message"
    "\r\n     5: Set Family Tree"
    "\r\n     6: Set Routing Table"
    "\r\n     7: Set Neighbor Routing Table"
    "\r\n     8: Start Frequency Agility"
    "\r\n     9: Socket"
    "\r\n     z: Dump Connection"
    ;

extern BYTE RoutingTable[NUM_COORDINATOR/8];
extern BYTE FamilyTree[NUM_COORDINATOR];
extern BYTE NeighborRoutingTable[NUM_COORDINATOR][NUM_COORDINATOR/8];

extern void PHYSetShortRAMAddr(INPUT BYTE address, INPUT BYTE value);
extern void InitMRF24J40(void);


BYTE GetHexDigit( void )
{
    BYTE    c;

    while (!ConsoleIsGetReady());
    c = ConsoleGet();
    ConsolePut(c);

    if (('0' <= c) && (c <= '9'))
        c -= '0';
    else if (('a' <= c) && (c <= 'f'))
        c = c - 'a' + 10;
    else if (('A' <= c) && (c <= 'F'))
        c = c - 'A' + 10;
    else
        c = 0;

    return c;
}

BYTE GetMACByte( void )
{
    BYTE    oneByte;

    oneByte = GetHexDigit() << 4;
    oneByte += GetHexDigit();

    return oneByte;
}

BYTE GetTwoDigitDec(void)
{
    BYTE oneByte;
    
    oneByte = GetHexDigit() * 10;
    oneByte += GetHexDigit();
    
    return oneByte;
}


void PrintMenu( void )
{
    ConsolePutROMString(menu);
    ConsolePutROMString( (ROM char * const) "\r\nEnter a menu choice: " );
}





void ProcessMenu( void )
{

    BYTE        c;
    BYTE        i;

    // Get the key value.
    c = ConsoleGet();
    ConsolePut( c );
    switch (c)
    {
        case '1':
            ConsolePutROMString((ROM char * const)"\r\n1=ENABLE_ALL 2=ENABLE PREV 3=ENABLE SCAN 4=DISABLE: ");
            while( !ConsoleIsGetReady());
        	c = ConsoleGet();
        	ConsolePut(c);
        	switch(c)
        	{
        		case '1':
        		    MiApp_ConnectionMode(ENABLE_ALL_CONN);
        		    break;
        		
        		case '2':
        		    MiApp_ConnectionMode(ENABLE_PREV_CONN);
        		    break;
        		    
        		case '3':
        		    MiApp_ConnectionMode(ENABLE_ACTIVE_SCAN_RSP);
        		    break;
        		    
        		case '4':
        		    MiApp_ConnectionMode(DISABLE_ALL_CONN);
        		    break;
        		
        	    default:
        	        break;	
            }
            break;
            
        case '2':
            Printf("\r\nFamily Tree: ");
            for(i = 0; i < NUM_COORDINATOR; i++)
            {
                PrintChar(FamilyTree[i]);
                Printf(" ");
            }
            break;
            
        case '3':
            Printf("\r\nMy Routing Table: ");
            for(i = 0; i < NUM_COORDINATOR/8; i++)
            {
                PrintChar(RoutingTable[i]);
            }
            Printf("\r\nNeighbor Routing Table: ");
            for(i = 0; i < NUM_COORDINATOR; i++)
            {
                BYTE j;
                for(j = 0; j < NUM_COORDINATOR/8; j++)
                {
                    PrintChar(NeighborRoutingTable[i][j]);
                }
                Printf(" ");
            }
            break;
            
        case '4':
            {   
                WORD_VAL tempShortAddr;
                Printf("\r\n1=Broadcast 2=Unicast Connection 3=Unicast Addr: ");
                while( !ConsoleIsGetReady());
            	c = ConsoleGet();
            	ConsolePut(c);
            	
    	        MiApp_FlushTx();
    	        MiApp_WriteData('T');
    	        MiApp_WriteData('e');
    	        MiApp_WriteData('s');
    	        MiApp_WriteData('t');
    	        MiApp_WriteData(0x0D);
    	        MiApp_WriteData(0x0A);
        	    switch(c)
        	    {
            	    case '1':
            	        MiApp_BroadcastPacket(FALSE);
            	        TxNum++;
            	        break;
            	        
            	    case '2':
            	        Printf("\r\nConnection Index: ");
            	        while( !ConsoleIsGetReady());
            	        c = GetHexDigit();
                        MiApp_UnicastConnection(c, FALSE);
                        TxNum++;
                        break;
                        
                    case '3':
                        Printf("\r\n1=Long Address 2=Short Address: ");
                        while( !ConsoleIsGetReady());
                    	c = ConsoleGet();
                    	ConsolePut(c);
                    	switch(c)
                    	{
                        	case '1':
                        	    Printf("\r\nDestination Long Address: ");
                        	    for(i = 0; i < MY_ADDRESS_LENGTH; i++)
                        	    {
                            	    tempLongAddress[MY_ADDRESS_LENGTH-1-i] = GetMACByte();
                            	}
                            	MiApp_UnicastAddress(tempLongAddress, TRUE, FALSE);
                            	TxNum++;
                            	break;
                        	
                        	case '2':
                        	    Printf("\r\nDestination Short Address: ");
                        	    tempLongAddress[1] = GetMACByte();
                        	    tempLongAddress[0] = GetMACByte();
                        	    MiApp_UnicastAddress(tempLongAddress, FALSE, FALSE);
                        	    TxNum++;
                        	    break;
                        	
                        	default:
                        	    break;
                        }
                        break;
                        
                    default:
                        break;
            	}
            }
            LCDTRXCount(TxNum, RxNum);
            break;
            
        case '5':
            {
                Printf("\r\nMSB of the Coordinator: ");
                i = GetMACByte();
                Printf("\r\nSet MSB of this Node's Parent: ");
                FamilyTree[i] = GetMACByte();
            }
            break;
            
        case '6':
            {
                Printf("\r\nSet my Routing Table: ");
                for(i = 0; i < NUM_COORDINATOR/8; i++)
                {
                    RoutingTable[i] = GetMACByte();
                    Printf(" ");
                }
            }
            break;
            
        case '7':
            {
                BYTE j;
                
                Printf("\r\nNode Number: ");
                i = GetMACByte();
                Printf("\r\nContent of Neighbor Routing Table: ");
                for(j = 0; j < NUM_COORDINATOR/8; j++)
                {
                    NeighborRoutingTable[i][j] = GetMACByte();
                    Printf(" ");
                }
            }
            break;
        
        case '8':
            {
                MiApp_InitChannelHopping(0xFFFFFFFF);
            }
            break;    
        
        
        case '9':
            {
                Printf("\r\nSocket: ");
                PrintChar(MiApp_EstablishConnection(0xFF, CONN_MODE_INDIRECT));
            }
            break;
        
        
        case 'z':
        case 'Z':
            {
                DumpConnection(0xFF);
            }    
        
        default:
            break;
    }
    PrintMenu();
}

#else
    #define PrintMenu()
    #define ProcessMenu()
#endif





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
* Overview:		    This is the main function that runs the demo.  
*                   The device will first search for an existing
*                   network.  If a network exists and the parameters 
*                   of the network are acceptable to the device (in 
*                   this example simple RSSI minimum) then the device
*                   will join the existing network.  If the device 
*                   does not find an acceptable network and is a 
*                   coordinator then the device will perform an 
*                   energy scan on all of the channels available and 
*                   determine which channel has the lowest noise.  
*                   It will form a new network on this channel as 
*                   the PAN coordinator.
*
* Note:			    
********************************************************************/
#if defined(__18CXX)
void main(void)
#else
int main(void)
#endif
{   
    BYTE i, j;
    BYTE TxSynCount = 0;
    BOOL bReceivedMessage = FALSE;
    
    /*******************************************************************/
    // Initialize the system
    /*******************************************************************/
    BoardInit();         
    ConsoleInit();   
        
    Printf("\r\nStarting Testing Interface for MiWi(TM) PRO Stack ...");
    #if defined(MRF24J40)
    Printf("\r\n     RF Transceiver: MRF24J40");
    #elif defined(MRF49XA)
    Printf("\r\n     RF Transceiver: MRF49XA");
    #elif defined(MRF89XA)
    Printf("\r\n     RF Transceiver: MRF89XA");
    #endif
    Printf("\r\n   Demo Instruction:");
    Printf("\r\n                     Press Enter to bring up the menu.");
    Printf("\r\n                     Type in hyper terminal to choose");
    Printf("\r\n                     menu item. ");
    Printf("\r\n\r\n");
   
    /*******************************************************************/
    // Following block display demo information on LCD of Explore 16 or 
    // PIC18 Explorer demo board.
    /*******************************************************************/
    #if defined(MRF49XA)
        LCDDisplay((char *)"MiWi PRO Test Interface MRF49XA", 0, TRUE); 
    #elif defined(MRF24J40)
        LCDDisplay((char *)"MiWi PRO Test Interface MRF24J40", 0, TRUE);
    #elif defined(MRF89XA)
        LCDDisplay((char *)"MiWi PRO Test Interface MRF89XA", 0, TRUE); 
    #endif
    
    if( (PUSH_BUTTON_1 == 0) || ( MiApp_ProtocolInit(TRUE) == FALSE ) )
    {  
        MiApp_ProtocolInit(FALSE);   

        LED_1 = 0;
        LED_2 = 0;

        #ifdef ENABLE_ACTIVE_SCAN
        
            myChannel = 0xFF;
            ConsolePutROMString((ROM char *)"\r\nStarting Active Scan...");
            
            LCDDisplay((char *)"Active Scanning", 0, FALSE);
    
            /*******************************************************************/
            // Function MiApp_SearchConnection will return the number of 
            // existing connections in all channels. It will help to decide 
            // which channel to operate on and which connection to add.
            // The return value is the number of connections. The connection 
            //     data are stored in global variable ActiveScanResults. 
            //     Maximum active scan result is defined as 
            //     ACTIVE_SCAN_RESULT_SIZE
            // The first parameter is the scan duration, which has the same 
            //     definition in Energy Scan. 10 is roughly 1 second. 9 is a 
            //     half second and 11 is 2 seconds. Maximum scan duration is 14, 
            //     or roughly 16 seconds.
            // The second parameter is the channel map. Bit 0 of the 
            //     double word parameter represents channel 0. For the 2.4GHz 
            //     frequency band, all possible channels are channel 11 to 
            //     channel 26. As the result, the bit map is 0x07FFF800. Stack 
            //     will filter out all invalid channels, so the application 
            //     only needs to pay attention to the channels that are not 
            //     preferred.
            /*******************************************************************/
            i = MiApp_SearchConnection(10, 0x02000000);
            
            if( i > 0 )
            {
                // now print out the scan result.
                Printf("\r\nActive Scan Results: \r\n");
                for(j = 0; j < i; j++)
                {
                    Printf("Channel: ");
                    PrintDec(ActiveScanResults[j].Channel );
                    Printf("   RSSI: ");
                    PrintChar(ActiveScanResults[j].RSSIValue);
                    Printf("\r\n");
                    myChannel = ActiveScanResults[j].Channel;
                    Printf("PeerInfo: ");
                    PrintChar( ActiveScanResults[j].PeerInfo[0]);
                }
            }
        #endif

    

        /*******************************************************************/
        // Function MiApp_ConnectionMode sets the connection mode for the 
        // protocol stack. Possible connection modes are:
        //  - ENABLE_ALL_CONN       accept all connection request
        //  - ENABLE_PREV_CONN      accept only known device to connect
        //  - ENABL_ACTIVE_SCAN_RSP do not accept connection request, but 
        //                          allow response to active scan
        //  - DISABLE_ALL_CONN      disable all connection request, including
        //                          active scan request
        /*******************************************************************/
        MiApp_ConnectionMode(ENABLE_ALL_CONN);
    
    
        if( i > 0 )
        {
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
            if( MiApp_EstablishConnection(0, CONN_MODE_DIRECT) == 0xFF )
            {
                Printf("\r\nJoin Fail");
            }
        }    
        else
        {
            /*******************************************************************/
            // Function MiApp_StartConnection tries to start a new network 
            //
            // The first parameter is the mode of start connection. There are 
            // two valid connection modes:
            //   - START_CONN_DIRECT        start the connection on current 
            //                              channel
            //   - START_CONN_ENERGY_SCN    perform an energy scan first, 
            //                              before starting the connection on 
            //                              the channel with least noise
            //   - START_CONN_CS_SCN        perform a carrier sense scan 
            //                              first, before starting the 
            //                              connection on the channel with 
            //                              least carrier sense noise. Not 
            //                              supported on currrent radios
            //
            // The second parameter is the scan duration, which has the same 
            //     definition in Energy Scan. 10 is roughly 1 second. 9 is a 
            //     half second and 11 is 2 seconds. Maximum scan duration is 
            //     14, or roughly 16 seconds.
            //
            // The third parameter is the channel map. Bit 0 of the 
            //     double word parameter represents channel 0. For the 2.4GHz 
            //     frequency band, all possible channels are channel 11 to 
            //     channel 26. As the result, the bit map is 0x07FFF800. Stack 
            //     will filter out all invalid channels, so the application 
            //     only needs to pay attention to the channels that are not 
            //     preferred.
            /*******************************************************************/
            #ifdef ENABLE_ED_SCAN
                LCDDisplay((char *)"Active Scanning Energy Scanning", 0, FALSE);
                MiApp_StartConnection(START_CONN_ENERGY_SCN, 10, 0x02000000);
            #endif
        }
        
        // Turn on LED 1 to indicate ready to accept new connections
        LED_1 = 1;
    }
    else
    {
        LCDDisplay((char *)" Network Freezer    ENABLED", 0, TRUE); 
        Printf("\r\nNetwork Freezer Feature is enabled. There will be no hand-shake process.\r\n");
        LED_1 = 1;
        DumpConnection(0xFF);
    }
                   
    LCDDisplay((char *)"Start Connection on Channel %d", currentChannel, TRUE);
    LCDDisplay((char *)"Testing Menu on  Hyper Terminal", 0, FALSE);

    while(1)
    {
        /*******************************************************************/
        // Function MiApp_MessageAvailable will return a boolean to indicate 
        // if a message for application layer has been received by the 
        // transceiver. If a message has been received, all information will 
        // be stored in the rxMessage, structure of RECEIVED_MESSAGE.
        /*******************************************************************/
        if( MiApp_MessageAvailable() )
        {
            /*******************************************************************/
            // If a packet has been received, following code prints out some of
            // the information available in rxFrame.
            /*******************************************************************/
            if( rxMessage.flags.bits.secEn )
            {
                ConsolePutROMString((ROM char *)"Secured ");
            }

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
            
            bReceivedMessage = TRUE;
            
            /*******************************************************************/
            // Following block update the total received and transmitted messages
            // on the LCD of the demo board. 
            /*******************************************************************/
            LCDTRXCount(TxNum, ++RxNum);
        }
        else
        {
            if ( ConsoleIsGetReady() )
            {
                ProcessMenu();
            } 
        }
    }
}

