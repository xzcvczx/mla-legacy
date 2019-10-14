/*********************************************************************
 *
 *  Main Application Entry Point and TCP/IP Stack Demo
 *  Module for Microchip TCP/IP Stack
 *   -Demonstrates how to call and use the Microchip TCP/IP stack
 *	 -Reference: Microchip TCP/IP Stack Help (TCPIP Stack Help.chm)
 *
 *********************************************************************
 * FileName:        MainDemo.c
 * Dependencies:    TCPIP.h
 * Processor:       PIC18F67J60
 * Compiler:        Microchip C18 v3.36 or higher
 * Company:         Microchip Technology, Inc.
 *
 * Software License Agreement
 *
 * Copyright (C) 2002-2010 Microchip Technology Inc.  All rights
 * reserved.
 *
 * Microchip licenses to you the right to use, modify, copy, and
 * distribute:
 * (i)  the Software when embedded on a Microchip microcontroller or
 *      digital signal controller product ("Device") which is
 *      integrated into Licensee's product; or
 * (ii) ONLY the Software driver source files ENC28J60.c, ENC28J60.h,
 *		ENCX24J600.c and ENCX24J600.h ported to a non-Microchip device
 *		used in conjunction with a Microchip ethernet controller for
 *		the sole purpose of interfacing with the ethernet controller.
 *
 * You should refer to the license agreement accompanying this
 * Software for additional information regarding your rights and
 * obligations.
 *
 * THE SOFTWARE AND DOCUMENTATION ARE PROVIDED "AS IS" WITHOUT
 * WARRANTY OF ANY KIND, EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT
 * LIMITATION, ANY WARRANTY OF MERCHANTABILITY, FITNESS FOR A
 * PARTICULAR PURPOSE, TITLE AND NON-INFRINGEMENT. IN NO EVENT SHALL
 * MICROCHIP BE LIABLE FOR ANY INCIDENTAL, SPECIAL, INDIRECT OR
 * CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF
 * PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY OR SERVICES, ANY CLAIMS
 * BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE
 * THEREOF), ANY CLAIMS FOR INDEMNITY OR CONTRIBUTION, OR OTHER
 * SIMILAR COSTS, WHETHER ASSERTED ON THE BASIS OF CONTRACT, TORT
 * (INCLUDING NEGLIGENCE), BREACH OF WARRANTY, OR OTHERWISE.
 *
 *
 * Author              Date         Comment
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * Nilesh Rajbharti		4/19/01		Original (Rev. 1.0)
 * Nilesh Rajbharti		2/09/02		Cleanup
 * Nilesh Rajbharti		5/22/02		Rev 2.0 (See version.log for detail)
 * Nilesh Rajbharti		7/9/02		Rev 2.1 (See version.log for detail)
 * Nilesh Rajbharti		4/7/03		Rev 2.11.01 (See version log for detail)
 * Howard Schlunder		10/1/04		Beta Rev 0.9 (See version log for detail)
 * Howard Schlunder		10/8/04		Beta Rev 0.9.1 Announce support added
 * Howard Schlunder		11/29/04	Beta Rev 0.9.2 (See version log for detail)
 * Howard Schlunder		2/10/05		Rev 2.5.0
 * Howard Schlunder		1/5/06		Rev 3.00
 * Howard Schlunder		1/18/06		Rev 3.01 ENC28J60 fixes to TCP, 
 *									UDP and ENC28J60 files
 * Howard Schlunder		3/01/06		Rev. 3.16 including 16-bit micro support
 * Howard Schlunder		4/12/06		Rev. 3.50 added LCD for Explorer 16
 * Howard Schlunder		6/19/06		Rev. 3.60 finished dsPIC30F support, added PICDEM.net 2 support
 * Howard Schlunder		8/02/06		Rev. 3.75 added beta DNS, NBNS, and HTTP client (GenericTCPClient.c) services
 * Howard Schlunder		12/28/06	Rev. 4.00RC added SMTP, Telnet, substantially modified TCP layer
 * Howard Schlunder     02/26/07    Rev. 4.01 added TCPPerformanceTest, UDPPerformanceTest, Reboot and fixed some bugs
 * Howard Schlunder     02/27/07    Converted to Internet Radio Application
 * KO                   09/16/2008  Added support for genre selection
 ********************************************************************/
/*
 * This macro uniquely defines this file as the main entry point.
 * There should only be one such definition in the entire project,
 * and this file must define the AppConfig variable as described below.
 */
#define THIS_IS_STACK_APPLICATION

// Include all headers for any enabled TCPIP Stack functions
#include "TCPIP Stack/TCPIP.h"

// Include functions specific to this stack application
#include "SPIRAM2.h"
#include "MP3Client.h"
#include "OLED.h"
#include "NVConfigStorage.h"
#include "NVStationStorage.h"


//******************************************************************************
//******************************************************************************
// Section: Constants
//******************************************************************************
//******************************************************************************

#define DEBOUNCE_TIME   (TICK_SECOND/4)

// various max bit rates for radio stations
#define kZG24kbps    (24u)
#define kZG32kbps    (32u)
#define kZG64kbps    (64u)
#define kZG96kbps    (96u)
#define kZG128kbps   (128u)

#define kZGIncrementStation (0u)
#define kZGDecrementStation (1u)

// Menu operations
#define MENU                    0u
#define STATION                 1u
#define BASS                    2u
#define VOLUME                  3u
#define IDLE                    4u
#define GENRE                   5u
#define GETTING_STATION_LIST    6u
#define AUDIO                   7u

#define BAUD_RATE       (19200u)     // bps


//******************************************************************************
//******************************************************************************
// Section: Function Prototypes
//******************************************************************************
//******************************************************************************

void            ChangeStation(BYTE action);
void            ClearStationDisplay( void );
static void     DetermineMaxAllowedChannelBitRate(void);
void            DisplayIPValue(IP_ADDR IPVal);
static void     InitializeBoard(void);
void            MainMenu(void);
BOOL            Unconnected( void );


//******************************************************************************
//******************************************************************************
// Section: Variables
//******************************************************************************
//******************************************************************************

// Declare AppConfig structure and some other supporting stack variables
APP_CONFIG  AppConfig;


//******************************************************************************
//******************************************************************************
// Section: Interrupt Service Routines
//******************************************************************************
//******************************************************************************

#if defined(__18CXX)

    // PIC18 Interrupt Service Routines
    //
    // NOTE: Several PICs, including the PIC18F4620 revision A3 have a RETFIE FAST/MOVFF bug
    // The interruptlow keyword is used to work around the bug when using C18

    #if defined(HI_TECH_C)
    void interrupt low_priority LowISR(void)
    #else
    #pragma interruptlow LowISR
    void LowISR(void)
    #endif
    {
        TickUpdate();
    }

    #if defined(HI_TECH_C)
    void interrupt HighISR(void)
    #else
    #pragma interrupt HighISR
    void HighISR(void)
    #endif
    {
        #if defined(STACK_USE_UART2TCP_BRIDGE)
        UART2TCPBridgeISR();
        #endif
        MP3Timer3Interrupt();
    }

    #if !defined(HI_TECH_C)
    #pragma code lowVector=0x18
    void LowVector(void){_asm goto LowISR _endasm}
    #pragma code highVector=0x8
    void HighVector(void){_asm goto HighISR _endasm}
    #pragma code // Return to default code section
    #endif

#elif defined(__C30__)
    // If your code gets here, you either tried to read or write
    // a NULL pointer, or your application overflowed the stack
    // by having too many local variables or parameters declared.

    void __attribute__((interrupt, auto_psv)) _DefaultInterrupt(void)
    {
        Nop();
        Nop();
    }

    void __attribute__((interrupt, auto_psv)) _OscillatorFail(void)
    {
        Nop();
        Nop();
    }
    void _ISR __attribute__((__no_auto_psv__)) _AddressError(void)
    {
        Nop();
        Nop();
    }
    void _ISR __attribute__((__no_auto_psv__)) _StackError(void)
    {
        Nop();
        Nop();
    }
    void __attribute__((interrupt, auto_psv)) _MathError(void)
    {
        Nop();
        Nop();
    }

#elif defined(__C32__)
    // If your code gets here, you either tried to read or write
    // a NULL pointer, or your application overflowed the stack
    // by having too many local variables or parameters declared.

    void _general_exception_handler(unsigned cause, unsigned status)
    {
        Nop();
        Nop();
    }
#endif


//******************************************************************************
//******************************************************************************
// Section: Variables
//
// Note that for PIC18, the variables are broken into different RAM sections
// so the linker can place them correctly.
//******************************************************************************
//******************************************************************************

#ifdef __18CXX
    #pragma udata RAMsection1
#endif
BYTE                strStationName[31];

#ifdef __18CXX
    #pragma udata RAMsection2
#endif
BYTE                strSongName[51];

#ifdef __18CXX
    #pragma udata RAMsection3
#endif
STATION_INFO stations[STATION_COUNT];

#ifdef __18CXX
    #pragma udata RAMsection4
#endif

BYTE                bitrate;
BYTE                genre = 0;
BYTE                gPtr;
IRADIO_INFO         iRadioStatus;
BYTE                lenSongName;
BYTE                lenStationName;
BYTE                maxStationBitRate;
NVCONFIG_RECORD     RadioConfig;
BYTE                station = 0;
BYTE                stationCount;
BYTE                stationMessage[MAX_LENGTH_MESSAGE];
BYTE                tPtr;

GENRE_INFO          genres[]    = {
                            { "Alternative",    "Alternative",  "Alternative" },
                            { "Arabic",         "Arabic",       "Arabic" },
                            { "Asian",          "Asian",        "Asian" },
                            { "Celtic",         "Celtic",       "Celtic" },
                            { "Chinese",        "Chinese",      "Chinese" },
                            { "Classical",      "Classical",    "Classical" },
                            { "Electronic",     "Electronic",   "Electronic" },
                            { "Euro",           "Euro",         "Euro" },
                            { "French",         "French",       "French" },
                            { "German",         "German",       "German" },
                            { "Hindi",          "Hindi",        "Hindi" },
                            { "Japanese",       "Japanese",     "Japanese" },
                            { "Jazz",           "Jazz",         "Jazz" },
                            { "Latin",          "Latin",        "Latin" },
                            { "New Age",        "New",          "New Age" },
                            { "News",           "News",         "News" },
                            { "Pop",            "Pop",          "Pop" },
                            { "R&B",            "R%26B",        "R&amp;B" },
                            { "Rock",           "Rock",         "Rock" },
                            { "Spanish",        "Spanish",      "Spanish" },
                            { "Techno",         "Techno",       "Techno" },
                            { "World",          "World",        "World" }
                          };
#define GENRE_COUNT         (sizeof(genres)/sizeof(genres[0]))


//******************************************************************************
//******************************************************************************
//******************************************************************************
// Section: Main
//******************************************************************************
//******************************************************************************
//******************************************************************************

#if defined(__18CXX)
void main(void)
#else
int main(void)
#endif
{
    BYTE i;
    BYTE j;
    BYTE menuState;
    DWORD t              = 0;
	static DWORD dwLastIP = 0;
    DWORD tdisp          = 0;
    DWORD tpress         = 0;

    // Initialize global variables.
    menuState           = MENU;
    lenStationName      = 0;
    lenSongName         = 0;
    tPtr                = 0;
    gPtr                = 0;
    iRadioStatus.val    = IRADIO_STATUS_INIT;

    // Load RadioConfig from Flash, or save configuration
    // defaults to Flash if NVCONFIG_RECORD is absent from Flash
    if(GetNVConfig(&RadioConfig) == NULL)
    {
        RadioConfig.vMACAddress[0] = MY_DEFAULT_MAC_BYTE1;
        RadioConfig.vMACAddress[1] = MY_DEFAULT_MAC_BYTE2;
        RadioConfig.vMACAddress[2] = MY_DEFAULT_MAC_BYTE3;
        RadioConfig.vMACAddress[3] = MY_DEFAULT_MAC_BYTE4;
        RadioConfig.vMACAddress[4] = MY_DEFAULT_MAC_BYTE5;
        RadioConfig.vMACAddress[5] = MY_DEFAULT_MAC_BYTE6;
        RadioConfig.vVolumeLeft = 0x3B;
        RadioConfig.vVolumeRight = 0x3B;
        RadioConfig.vBase = 0;
        RadioConfig.wLastStation = 0;
        SetNVConfig(&RadioConfig);
    }
    strStationName[0]           = ' ';        
    strStationName[1]           = 0;    

    // Load up the AppConfig defaults
    AppConfig.Flags.bIsDHCPEnabled = TRUE;
    AppConfig.Flags.bInConfigMode = TRUE;
    AppConfig.MyMACAddr.v[0] = RadioConfig.vMACAddress[0];
    AppConfig.MyMACAddr.v[1] = RadioConfig.vMACAddress[1];
    AppConfig.MyMACAddr.v[2] = RadioConfig.vMACAddress[2];
    AppConfig.MyMACAddr.v[3] = RadioConfig.vMACAddress[3];
    AppConfig.MyMACAddr.v[4] = RadioConfig.vMACAddress[4];
    AppConfig.MyMACAddr.v[5] = RadioConfig.vMACAddress[5];
    AppConfig.MyIPAddr.Val = MY_DEFAULT_IP_ADDR_BYTE1 | MY_DEFAULT_IP_ADDR_BYTE2<<8ul | MY_DEFAULT_IP_ADDR_BYTE3<<16ul | MY_DEFAULT_IP_ADDR_BYTE4<<24ul;
    AppConfig.MyMask.Val = MY_DEFAULT_MASK_BYTE1 | MY_DEFAULT_MASK_BYTE2<<8ul | MY_DEFAULT_MASK_BYTE3<<16ul | MY_DEFAULT_MASK_BYTE4<<24ul;
    AppConfig.DefaultIPAddr.Val = AppConfig.MyIPAddr.Val;
    AppConfig.DefaultMask.Val = AppConfig.MyMask.Val;
    AppConfig.MyGateway.Val = MY_DEFAULT_GATE_BYTE1 | MY_DEFAULT_GATE_BYTE2<<8ul | MY_DEFAULT_GATE_BYTE3<<16ul | MY_DEFAULT_GATE_BYTE4<<24ul;
    AppConfig.PrimaryDNSServer.Val = MY_DEFAULT_PRIMARY_DNS_BYTE1 | MY_DEFAULT_PRIMARY_DNS_BYTE2<<8ul  | MY_DEFAULT_PRIMARY_DNS_BYTE3<<16ul  | MY_DEFAULT_PRIMARY_DNS_BYTE4<<24ul;
    AppConfig.SecondaryDNSServer.Val = MY_DEFAULT_SECONDARY_DNS_BYTE1 | MY_DEFAULT_SECONDARY_DNS_BYTE2<<8ul  | MY_DEFAULT_SECONDARY_DNS_BYTE3<<16ul  | MY_DEFAULT_SECONDARY_DNS_BYTE4<<24ul;
    memcpypgm2ram(AppConfig.NetBIOSName, (ROM void*)MY_DEFAULT_HOST_NAME, 16);
    FormatNetBIOSName(AppConfig.NetBIOSName);

    // Initialize application specific hardware
    InitializeBoard();

    #if defined(USE_LCD)
        // Initialize and display the stack version on the LCD
        LCDInit();
        DelayMs(100);
        strcpypgm2ram((char*)LCDText, "TCPStack " TCPIP_STACK_VERSION "  "
            "                ");
        LCDUpdate();
    #endif

    // Initialize stack-related hardware components that may be
    // required by the UART configuration routines
    TickInit();
    #if defined(STACK_USE_MPFS2)
        MPFSInit();
    #endif

    // Initialize core stack layers (MAC, ARP, TCP, UDP) and
    // application modules (HTTP, SNMP, etc.)
    StackInit();

    // Initialize any application-specific modules or functions/
    // For this demo application, this only includes the
    // UART 2 TCP Bridge
    #if defined(STACK_USE_UART2TCP_BRIDGE)
        UART2TCPBridgeInit();
    #endif

    // Initialize the OLED display
    oledInitDisplay();
    oledPutImage((ROM BYTE*)&Microchip,128,8,0,0);
    t = TickGet();

    // Initialize VLSI Audio Codec and DAC
    // If communication with VLSI chip is broken, the init function will lock up and never return (i.e. you need to fix your hardware)
    VLSI_Init();

    // Set volume and boost levels
    VLSI_SetVolume(RadioConfig.vVolumeRight, RadioConfig.vVolumeLeft);
    VLSI_SetBassBoost(RadioConfig.vBase, 15);

    // Initialize the MP3 client module and try to connect to the first radio station
    MP3ClientInit();

    DetermineMaxAllowedChannelBitRate();

    // Do a preliminary main() loop while waiting for splash screen to time out
    while(TickGet() - t < 2*TICK_SECOND)
    {
        StackTask();
        MP3ClientTask();
    }

    // Clear the OLED and display the default menu
    oledFillDisplay(0x00);
    MainMenu();


    // Now that all items are initialized, begin the co-operative
    // multitasking loop.  This infinite loop will continuously
    // execute all stack-related tasks, as well as your own
    // application's functions.  Custom functions should be added
    // at the end of this loop.
    // Note that this is a "co-operative mult-tasking" mechanism
    // where every task performs its tasks (whether all in one shot
    // or part of it) and returns so that other tasks can do their
    // job.
    // If a task needs very long time to do its job, it must be broken
    // down into smaller pieces so that other tasks can have CPU time.
    while(1)
    {
        // Blink LED0 (right most one) every second.
        if(TickGet() - t >= TICK_SECOND/2ul)
        {
            t = TickGet();
            LED0_IO ^= 1;
        }

        // This task performs normal stack task including checking
        // for incoming packet, type of packet and calling
        // appropriate stack entity to process it.
        StackTask();

        // This tasks invokes each of the core stack application tasks
        StackApplications();

        // Process application specific tasks here.

        // Call Client task to read received data into buffer
        MP3ClientTask();

        // Update the display if we have an error
        if (IRadioError() && iRadioStatus.bShowError)
        {
            oledFillLine(0x00,0);
            oledFillLine(0x00,1);
            oledFillLine(0x00,2);
            oledFillLine(0x00,3);
            if (iRadioStatus.bConnect1Error)
            {
                oledPutROMString((ROM BYTE*)"<Cannot connect 1>", 0xB1, 0, 2);
            }
            else if (iRadioStatus.bRedirect1Error)
            {
                oledPutROMString((ROM BYTE*)"<Redirect error 1>", 0xB1, 0, 2);
            }
            else if (iRadioStatus.bServerError)
            {
                oledPutROMString((ROM BYTE*)"<Server error>", 0xB1, 0, 2);
            }
            else if (iRadioStatus.bClientError)
            {
                oledPutROMString((ROM BYTE*)"<Client error>", 0xB1, 0, 2);
            }

            else if (iRadioStatus.bRedirect2Error)
            {
                oledPutROMString((ROM BYTE*)"<Redirect error 2>", 0xB1, 0, 2);
            }
            else if (iRadioStatus.bRedirect3Error)
            {
                oledPutROMString((ROM BYTE*)"<Redirect error 3>", 0xB1, 0, 2);
            }
            else if (iRadioStatus.bNoStationsReceived)
            {
                oledPutROMString((ROM BYTE*)"<No stations>", 0xB1, 0, 2);
            }
            else if (iRadioStatus.bStationFormatError)
            {
                oledPutROMString((ROM BYTE*)"<Station format>", 0xB1, 0, 2);
            }

            else if (iRadioStatus.bListDisconnect)
            {
                oledPutROMString((ROM BYTE*)"<List disconnect>", 0xB1, 0, 2);
            }
            else if (iRadioStatus.bConnect2Error)
            {
                oledPutROMString((ROM BYTE*)"<Cannot connect 2>", 0xB1, 0, 2);
            }
            else if (iRadioStatus.bNoStreamReceived1)
            {
                oledPutROMString((ROM BYTE*)"<No streams 1>", 0xB1, 0, 2);
            }
            else if (iRadioStatus.bNoStreamReceived2)
            {
                oledPutROMString((ROM BYTE*)"<Zero entries>", 0xB1, 0, 2);
            }

            else if (iRadioStatus.bNoStreamReceived3)
            {
                oledPutROMString((ROM BYTE*)"<No streams 3>", 0xB1, 0, 2);
            }
            else if (iRadioStatus.bNoStreamReceived4)
            {
                oledPutROMString((ROM BYTE*)"<No streams 4>", 0xB1, 0, 2);
            }

            else
            {
                oledPutROMString((ROM BYTE*)"<Other error>", 0xB1, 0, 2);
            }
            iRadioStatus.bShowError = 0;

            // Return to the main menu
            menuState = MENU;
            oledFillLine(0x00,5);
            oledFillLine(0x00,6);
            oledFillLine(0x00,7);
            DisplayIPValue(AppConfig.MyIPAddr);
            MainMenu();
        }

        // If we're done getting a list of stations, return to the main menu.
        if (menuState == GETTING_STATION_LIST && iRadioStatus.bStationsValid)
        {
            menuState = MENU;
            MainMenu();
        }

        // Return to the root menu after 16 seconds of idle
        if(menuState != MENU && menuState != IDLE)
        {
            if(TickGet() - tpress >= TICK_SECOND*16)
            {
                menuState = MENU;
                if (Unconnected())
                {
                    oledPutROMString((ROM BYTE*)"Not Connected     ", 0xB1, 0, 2);
                }
                else if (!iRadioStatus.bStationsValid && !IRadioError())
                {
                    oledFillLine(0x00,0);
                    oledFillLine(0x00,1);
                    oledFillLine(0x00,2);
                    oledFillLine(0x00,3);
                    oledPutROMString((ROM BYTE*)"Select Genre ", 0xB1, 0, 2);
                }
                oledFillLine(0x00,5);
                oledFillLine(0x00,6);
                oledFillLine(0x00,7);
                MainMenu();
            }
        }

        // If idle for long enough, start the screensaver
        if(menuState != IDLE)
        {
            if(TickGet() - tpress >= TICK_SECOND*180)
            {
                menuState = IDLE;
                if (Unconnected())
                {
                    oledPutROMString((ROM BYTE*)"Not Connected     ", 0xB1, 0, 2);
                }
                else if (!iRadioStatus.bStationsValid && !IRadioError())
                {
                    oledFillLine(0x00,0);
                    oledFillLine(0x00,1);
                    oledFillLine(0x00,2);
                    oledFillLine(0x00,3);
                    oledPutROMString((ROM BYTE*)"Select Genre ", 0xB1, 0, 2);
                }
                oledFillLine(0x00,4);
                oledFillLine(0x00,5);
                oledFillLine(0x00,6);
                oledFillLine(0x00,7);
            }
        }

        // Rotate song title and station name every second
        if(TickGet() - tdisp >= TICK_SECOND)
        {
            if (Unconnected())
            {
                if (!iRadioStatus.bDisconnectDisplay)
                {
                    iRadioStatus.bDisconnectDisplay = 1;
                    oledFillLine(0x00,0);
                    oledFillLine(0x00,1);
                    oledFillLine(0x00,2);
                    oledFillLine(0x00,3);
                    oledPutROMString((ROM BYTE*)"Not Connected     ", 0xB1, 0, 2);
                }
            }
            else
            {
                iRadioStatus.bDisconnectDisplay = 0;
                tdisp = TickGet();

                if(iRadioStatus.bNewStationName && iRadioStatus.bStationOnce)
                    iRadioStatus.bStationOnce = 0;

                if(lenStationName > 21u)
                {
                    if(lenStationName - tPtr < 21u)
                        tPtr = 0;
                    if(tPtr + 21 > lenStationName)
                        tPtr = 0;
                    for(i=0+tPtr,j=0;i<21+tPtr;i++,j+=6)
                        oledWriteChar2x(strStationName[i],0xB2,j);
                    tPtr++;
                    iRadioStatus.bNewStationName = 0;
                }
                else
                {
                    if(iRadioStatus.bNewStationName)
                    {
                        oledFillLine(0x00,2);
                        oledFillLine(0x00,3);
                        oledPutString(strStationName,0xB2,0,2);
                        iRadioStatus.bNewStationName = 0;
                    }
                }

                if(lenSongName > 21u)
                {
                    if(lenSongName - gPtr < 21u)
                        gPtr = 0;
                    if(gPtr + 21 > lenSongName)
                        gPtr = 0;
                    for(i=0+gPtr,j=0;i<21+gPtr;i++,j+=6)
                        oledWriteChar2x(strSongName[i],0xB0,j);
                    gPtr++;
                    iRadioStatus.bNewSongName = 0;
                }
                else
                {
                    if(iRadioStatus.bNewSongName)
                    {
                        oledFillLine(0x00,0);
                        oledFillLine(0x00,1);
                        oledPutString(strSongName,0xB0,0,2);
                        iRadioStatus.bNewSongName = 0;
                    }
                }

                if ((lenStationName == 0u) && (menuState == MENU))
                {
                    oledPutROMString((ROM BYTE*)"Select Genre ", 0xB1, 0, 2);
                }
            }
        }

        // Process BUTTON0 (SW2) presses, including debouncing
        {
            static BOOL SwitchBouncing = TRUE;
            static DWORD SwitchTime = 0;

            if(SwitchBouncing)
            {
                if(BUTTON0_IO == 0u)
                    SwitchTime = TickGet();
                else if(SwitchTime - TickGet() >= DEBOUNCE_TIME)
                    SwitchBouncing = FALSE;
            }
            else if(BUTTON0_IO == 0u)
            {
                SwitchBouncing = TRUE;
                tpress = TickGet();

                switch(menuState)
                {
                    case MENU:
                        menuState = AUDIO;
                        oledFillLine(0x00,5);
                        oledFillLine(0x00,6);
                        oledFillLine(0x00,7);
                        oledPutROMString((ROM BYTE*)"Bass", 0xB6, 0, 2);
                        oledPutROMString((ROM BYTE*)"Volume", 0xB6, 47, 2);
                        oledPutROMString((ROM BYTE*)"Exit", 0xB6, 100, 2);
                        break;

                    case AUDIO:
                        menuState = MENU;
                        MainMenu();
                        break;

                    case GENRE:
                        // Increment genre. Wrap if necessary.
                        if(++genre >= GENRE_COUNT)
                            genre = 0;

                        oledFillLine(0x00,0);
                        oledFillLine(0x00,1);
                        oledFillLine(0x00,2);
                        oledFillLine(0x00,3);
                        oledPutROMString( (ROM BYTE*)genres[genre].DisplayName, 0xB1, 0, 2 );
                        break;

                    case STATION:
                        // increment station #
                        // if less than 0, reset to 3
                        if (iRadioStatus.bStationsValid)
                        {
                            ChangeStation(kZGIncrementStation);
                            ClearStationDisplay();
                            MP3OpenStation(&stations[station]);
                        }
                        break;

                    case BASS:
                        if(RadioConfig.vBase < 15u)
                            RadioConfig.vBase++;
                        VLSI_SetBassBoost(RadioConfig.vBase, 15);
                        break;

                    case VOLUME:
                        if(RadioConfig.vVolumeRight >= 5u)
                            RadioConfig.vVolumeRight -= 5;
                        if(RadioConfig.vVolumeLeft >= 5u)
                            RadioConfig.vVolumeLeft -= 5;
                        VLSI_SetVolume(RadioConfig.vVolumeRight, RadioConfig.vVolumeLeft);
                        break;

                    case IDLE:
                        menuState = MENU;
                        DisplayIPValue(AppConfig.MyIPAddr);
                        MainMenu();
                        break;

                    default:
                        break;
                }
            }
        }

        // Process BUTTON1 (SW3) presses, including debouncing
        {
            static BOOL SwitchBouncing = TRUE;
            static DWORD SwitchTime = 0;

            if(SwitchBouncing)
            {
                if(BUTTON1_IO == 0u)
                    SwitchTime = TickGet();
                else if(SwitchTime - TickGet() >= DEBOUNCE_TIME)
                    SwitchBouncing = FALSE;
            }
            else if(BUTTON1_IO == 0u)
            {
                SwitchBouncing = TRUE;
                tpress = TickGet();

                switch(menuState)
                {
                    case GENRE:
                        station = 0;
                        MP3GetStationList();
                        oledFillLine(0x00,5);       // Clear line 6
                        oledFillLine(0x00,6);       // Clear line 7
                        oledFillLine(0x00,7);       // Clear line 8
                        menuState = GETTING_STATION_LIST;
                        break;

                    case MENU:
                        if (iRadioStatus.bStationsValid)
                        {
                            menuState = STATION;
                            oledFillLine(0x00,5);       // Clear line 6
                            oledFillLine(0x00,6);       // Clear line 7
                            oledFillLine(0x00,7);       // Clear line 8
                            oledPutROMString((ROM BYTE*)"Station", 0xB5, 0, 1);
                            oledPutROMString((ROM BYTE*)"Station", 0xB5, 87, 1);
                            oledPutROMString((ROM BYTE*)"Prev", 0xB6,  0, 2);
                            oledPutROMString((ROM BYTE*)"Exit", 0xB6, 50, 2);
                            oledPutROMString((ROM BYTE*)"Next", 0xB6,105, 2);
                            ClearStationDisplay();
                        }
                        break;

                    case AUDIO:
                        menuState = VOLUME;
                        oledFillLine(0x00,5);
                        oledFillLine(0x00,6);
                        oledFillLine(0x00,7);
                        oledPutROMString((ROM BYTE*)"Volume", 0xB5, 0, 1);
                        oledPutROMString((ROM BYTE*)"Volume", 0xB5,93, 1);
                        oledWriteChar2x('-',0xB6,12);
                        oledPutROMString((ROM BYTE*)"Exit", 0xB6, 50, 2);
                        oledWriteChar2x('+',0xB6,110);
                        break;

                    case STATION:
                    case BASS:
                    case VOLUME:
                        menuState = MENU;
                        MainMenu();
                        break;

                    case IDLE:
                        menuState = MENU;
                        DisplayIPValue(AppConfig.MyIPAddr);
                        MainMenu();
                        break;

                    default:
                        break;
                }

            }
        }

        // Process BUTTON2 (SW1) presses, including debouncing
        {
            static BOOL SwitchBouncing = TRUE;
            static DWORD SwitchTime = 0;

            if(SwitchBouncing)
            {
                if(BUTTON2_IO == 0u)
                    SwitchTime = TickGet();
                else if(SwitchTime - TickGet() >= DEBOUNCE_TIME)
                    SwitchBouncing = FALSE;
            }
            else if(BUTTON2_IO == 0u)
            {
                SwitchBouncing = TRUE;
                tpress = TickGet();

                switch(menuState)
                {
                    case MENU:
                        // Turn off the current station.
                        MP3CloseStation();
                        ClearStationDisplay();

                        menuState = GENRE;
                        oledFillLine(0x00,0);
                        oledFillLine(0x00,1);
                        oledFillLine(0x00,2);
                        oledFillLine(0x00,3);
                        oledFillLine(0x00,5);       // Clear line 6
                        oledFillLine(0x00,6);       // Clear line 7
                        oledFillLine(0x00,7);       // Clear line 8

                        oledPutROMString( (ROM BYTE*)genres[genre].DisplayName, 0xB1, 0, 2 );

                        oledPutROMString((ROM BYTE*)"Genre", 0xB5, 0, 1);
                        oledPutROMString((ROM BYTE*)"Genre", 0xB5, 95, 1);
                        oledPutROMString((ROM BYTE*)"Prev", 0xB6,  0, 2);
                        oledPutROMString((ROM BYTE*)"Select", 0xB6, 45, 2);
                        oledPutROMString((ROM BYTE*)"Next", 0xB6,105, 2);
                        break;

                    case AUDIO:
                        menuState = BASS;
                        oledFillLine(0x00,5);       // Clear line 6
                        oledFillLine(0x00,6);       // Clear line 7
                        oledFillLine(0x00,7);       // Clear line 8
                        oledPutROMString((ROM BYTE*)"Bass", 0xB5, 3, 1);
                        oledPutROMString((ROM BYTE*)"Bass", 0xB5, 102, 1);
                        oledWriteChar2x('-',0xB6,12);
                        oledPutROMString((ROM BYTE*)"Exit", 0xB6, 50, 2);
                        oledWriteChar2x('+',0xB6,110);
                        break;

                    case GENRE:
                        // Decrement genre. Wrap if necessary.
                        if(genre == 0u)
                            genre = GENRE_COUNT-1;
                        else
                            genre--;

                        oledFillLine(0x00,0);
                        oledFillLine(0x00,1);
                        oledFillLine(0x00,2);
                        oledFillLine(0x00,3);
                        oledPutROMString( (ROM BYTE*)genres[genre].DisplayName, 0xB1, 0, 2 );
                        break;

                    case STATION:
                        // decrement station #
                        // if less than 0, reset to 3
                        if (iRadioStatus.bStationsValid)
                        {
                            ChangeStation(kZGDecrementStation);
                            ClearStationDisplay();
                            MP3OpenStation(&stations[station]);
                        }
                        break;

                    case BASS:
                        if(RadioConfig.vBase > 0u)
                            RadioConfig.vBase--;
                        VLSI_SetBassBoost(RadioConfig.vBase, 15);
                        break;

                    case VOLUME:
                        if(RadioConfig.vVolumeRight < 240u)
                            RadioConfig.vVolumeRight += 5;
                        if(RadioConfig.vVolumeLeft < 240u)
                            RadioConfig.vVolumeLeft += 5;
                        VLSI_SetVolume(RadioConfig.vVolumeRight, RadioConfig.vVolumeLeft);
                        break;

                    case IDLE:
                        menuState = MENU;
                        DisplayIPValue(AppConfig.MyIPAddr);
                        MainMenu();
                        break;

                    default:
                        break;
                }

            }
        }


        // If the local IP address has changed (ex: due to DHCP lease change)
        // write the new IP address to the LCD display, UART, and Announce 
        // service
		if(dwLastIP != AppConfig.MyIPAddr.Val)
		{
			dwLastIP = AppConfig.MyIPAddr.Val;
			
            if(menuState != IDLE)
                DisplayIPValue(AppConfig.MyIPAddr);

            #if defined(STACK_USE_ANNOUNCE)
                AnnounceIP();
            #endif
        }

    }
}

/****************************************************************************
  Function:
    void ChangeStation(BYTE action)

  Summary:
    This function goes to the next or the previous station.

  Description:
    This function goes to the next or the previous station.

  Precondition:
    None

  Parameters:
    BYTE action - Action to perform
                    * kZGIncrementStation = next station
                    * kZGDecrementStation = previous station

  Returns:
    None

  Remarks:
    None
  ***************************************************************************/
void ChangeStation(BYTE action)
{
//    BYTE stationBitRate;
    BYTE stationFound = 0;

    while (!stationFound)

    {
        if (action == kZGIncrementStation)
        {
            if(++station >= STATION_COUNT)
            {
               station = 0;
            }
        }
        else
        {
            if(station == 0u)
            {
                station = STATION_COUNT-1;
            }
            else
            {
                station--;
            }
        }

        //stationBitRate = stations[station].bitRate;

        //if (stationBitRate <= maxStationBitRate)
        {
            stationFound = 1;
        }
    }

}

/****************************************************************************
  Function:
    void ClearStationDisplay( void )

  Description:
    This function clears the station information display.

  Precondition:
    None

  Parameters:
    None - None

  Returns:
    None

  Remarks:
    None
  ***************************************************************************/
void ClearStationDisplay( void )
{
    oledFillLine(0x00,0);
    oledFillLine(0x00,1);
    oledFillLine(0x00,2);
    oledFillLine(0x00,3);
    strStationName[0]           = ' ';
    strStationName[1]           = 0;
    lenStationName              = 1;
    strSongName[0]              = ' ';
    strSongName[1]              = 0;
    lenSongName                 = 1;
    iRadioStatus.bStationOnce   = 1;
}

/****************************************************************************
  Function:
    static void DetermineMaxAllowedChannelBitRate(void)

  Description:
    Checks for button pressed on powerup, which will be used to
    limit the max channel bitrate the player will select from.

  Precondition:
    None

  Parameters:
    None - None

  Returns:
    None

  Remarks:
    None
  ***************************************************************************/
static void DetermineMaxAllowedChannelBitRate(void)
{
    // if rightmost button pressed on powerup
    if (BUTTON0_IO == 0u)
    {
        maxStationBitRate = kZG96kbps;
    }
    // else if middle button pressed on powerup
    else if (BUTTON1_IO == 0u)
    {
        maxStationBitRate = kZG64kbps;
    }
    // else if first button pressed on powerup
    else if (BUTTON2_IO == 0u)
    {
        maxStationBitRate = kZG32kbps;
    }
    // else no buttons pressed on powerup
    else
    {
        maxStationBitRate = kZG128kbps;
    }
}


/****************************************************************************
  Function:
    void DisplayIPValue(IP_ADDR IPVal)

  Summary:
    This function displays the assigned IP address on the display.

  Description:
    This function displays the assigned IP address on the display.

  Precondition:
    None

  Parameters:
    IP_ADDR IPVal - IP address

  Returns:
    None

  Remarks:
    None
  ***************************************************************************/
void DisplayIPValue(IP_ADDR IPVal)
{
    BYTE IPDigit[4];
    BYTE i,j;
    BYTE pos;

    pos = 18;
    // Erase the old IP address stored here
    oledPutROMString((ROM BYTE*)"IP:               ", 0xB4, 0, 1);
    for(i = 0; i < sizeof(IP_ADDR); i++)
    {
        uitoa((WORD)IPVal.v[i], IPDigit);

        if(i != 0u)
        {
            oledWriteChar1x('.',0xB4,pos);
            pos += 6;
        }

        for(j = 0; j < strlen((char*)IPDigit); j++)
        {
            oledWriteChar1x(IPDigit[j],0xB4,pos);
            pos += 6;
        }
    }
}


/****************************************************************************
  Function:
    static void InitializeBoard(void)

  Description:
    This routine initializes the hardware.  It is a generic initialization
    routine for many of the Microchip development boards, using definitions
    in HardwareProfile.h to determine specific initialization.

  Precondition:
    None

  Parameters:
    None - None

  Returns:
    None

  Remarks:
    None
  ***************************************************************************/
static void InitializeBoard(void)
{	
	// LEDs
	LED0_TRIS = 0;
	LED1_TRIS = 0;
	LED2_TRIS = 0;
	LED3_TRIS = 0;
	LED4_TRIS = 0;
	LED5_TRIS = 0;
	LED6_TRIS = 0;
	LED7_TRIS = 0;
	LED_PUT(0x00);

#if defined(__18CXX)
	// Enable 4x/5x/96MHz PLL on PIC18F87J10, PIC18F97J60, PIC18F87J50, etc.
    OSCTUNE = 0x40;

	// Set up analog features of PORTA

	// PICDEM.net 2 board has POT on AN2, Temp Sensor on AN3
	#if defined(PICDEMNET2)
		ADCON0 = 0x09;		// ADON, Channel 2
		ADCON1 = 0x0B;		// Vdd/Vss is +/-REF, AN0, AN1, AN2, AN3 are analog
	#elif defined(PICDEMZ)
		ADCON0 = 0x81;		// ADON, Channel 0, Fosc/32
		ADCON1 = 0x0F;		// Vdd/Vss is +/-REF, AN0, AN1, AN2, AN3 are all digital
	#elif defined(__18F87J11) || defined(_18F87J11) || defined(__18F87J50) || defined(_18F87J50)
		ADCON0 = 0x01;		// ADON, Channel 0, Vdd/Vss is +/-REF
		WDTCONbits.ADSHR = 1;
		ANCON0 = 0xFC;		// AN0 (POT) and AN1 (temp sensor) are anlog
		ANCON1 = 0xFF;
		WDTCONbits.ADSHR = 0;		
	#else
		ADCON0 = 0x01;		// ADON, Channel 0
		ADCON1 = 0x0E;		// Vdd/Vss is +/-REF, AN0 is analog
	#endif
	ADCON2 = 0xBE;		// Right justify, 20TAD ACQ time, Fosc/64 (~21.0kHz)


    // Enable internal PORTB pull-ups
    INTCON2bits.RBPU = 0;

	// Configure USART
    TXSTA = 0x20;
    RCSTA = 0x90;

	// See if we can use the high baud rate setting
	#if ((GetPeripheralClock()+2*BAUD_RATE)/BAUD_RATE/4 - 1) <= 255
		SPBRG = (GetPeripheralClock()+2*BAUD_RATE)/BAUD_RATE/4 - 1;
		TXSTAbits.BRGH = 1;
	#else	// Use the low baud rate setting
		SPBRG = (GetPeripheralClock()+8*BAUD_RATE)/BAUD_RATE/16 - 1;
	#endif


	// Enable Interrupts
	RCONbits.IPEN = 1;		// Enable interrupt priorities
    INTCONbits.GIEH = 1;
    INTCONbits.GIEL = 1;

    // Do a calibration A/D conversion
	#if defined(__18F87J10) || defined(__18F86J15) || defined(__18F86J10) || defined(__18F85J15) || defined(__18F85J10) || defined(__18F67J10) || defined(__18F66J15) || defined(__18F66J10) || defined(__18F65J15) || defined(__18F65J10) || defined(__18F97J60) || defined(__18F96J65) || defined(__18F96J60) || defined(__18F87J60) || defined(__18F86J65) || defined(__18F86J60) || defined(__18F67J60) || defined(__18F66J65) || defined(__18F66J60) || \
	     defined(_18F87J10) ||  defined(_18F86J15) || defined(_18F86J10)  ||  defined(_18F85J15) ||  defined(_18F85J10) ||  defined(_18F67J10) ||  defined(_18F66J15) ||  defined(_18F66J10) ||  defined(_18F65J15) ||  defined(_18F65J10) ||  defined(_18F97J60) ||  defined(_18F96J65) ||  defined(_18F96J60) ||  defined(_18F87J60) ||  defined(_18F86J65) ||  defined(_18F86J60) ||  defined(_18F67J60) ||  defined(_18F66J65) ||  defined(_18F66J60)
		ADCON0bits.ADCAL = 1;
	    ADCON0bits.GO = 1;
		while(ADCON0bits.GO);
		ADCON0bits.ADCAL = 0;
	#elif defined(__18F87J11) || defined(__18F86J16) || defined(__18F86J11) || defined(__18F67J11) || defined(__18F66J16) || defined(__18F66J11) || \
		   defined(_18F87J11) ||  defined(_18F86J16) ||  defined(_18F86J11) ||  defined(_18F67J11) ||  defined(_18F66J16) ||  defined(_18F66J11) || \
		  defined(__18F87J50) || defined(__18F86J55) || defined(__18F86J50) || defined(__18F67J50) || defined(__18F66J55) || defined(__18F66J50) || \
		   defined(_18F87J50) ||  defined(_18F86J55) ||  defined(_18F86J50) ||  defined(_18F67J50) ||  defined(_18F66J55) ||  defined(_18F66J50)
		ADCON1bits.ADCAL = 1;
	    ADCON0bits.GO = 1;
		while(ADCON0bits.GO);
		ADCON1bits.ADCAL = 0;
	#endif

#else	// 16-bit C30 and and 32-bit C32
	#if defined(__PIC32MX__)
	{
		// Enable multi-vectored interrupts
		INTEnableSystemMultiVectoredInt();
		
		// Enable optimal performance
		SYSTEMConfigPerformance(GetSystemClock());
		mOSCSetPBDIV(OSC_PB_DIV_1);				// Use 1:1 CPU Core:Peripheral clocks
		
		// Disable JTAG port so we get our I/O pins back, but first
		// wait 50ms so if you want to reprogram the part with 
		// JTAG, you'll still have a tiny window before JTAG goes away.
		// The PIC32 Starter Kit debuggers use JTAG and therefore must not 
		// disable JTAG.
		DelayMs(50);
		#if !defined(__MPLAB_DEBUGGER_PIC32MXSK) && !defined(__MPLAB_DEBUGGER_FS2)
			DDPCONbits.JTAGEN = 0;
		#endif
		LED_PUT(0x00);				// Turn the LEDs off
		
		CNPUESET = 0x00098000;		// Turn on weak pull ups on CN15, CN16, CN19 (RD5, RD7, RD13), which is connected to buttons on PIC32 Starter Kit boards
	}
	#endif

	#if defined(__dsPIC33F__) || defined(__PIC24H__)
		// Crank up the core frequency
		PLLFBD = 38;				// Multiply by 40 for 160MHz VCO output (8MHz XT oscillator)
		CLKDIV = 0x0000;			// FRC: divide by 2, PLLPOST: divide by 2, PLLPRE: divide by 2
	
		// Port I/O
		AD1PCFGHbits.PCFG23 = 1;	// Make RA7 (BUTTON1) a digital input
		AD1PCFGHbits.PCFG20 = 1;	// Make RA12 (INT1) a digital input for MRF24WB0M PICtail Plus interrupt

		// ADC
	    AD1CHS0 = 0;				// Input to AN0 (potentiometer)
		AD1PCFGLbits.PCFG5 = 0;		// Disable digital input on AN5 (potentiometer)
		AD1PCFGLbits.PCFG4 = 0;		// Disable digital input on AN4 (TC1047A temp sensor)
	#else	//defined(__PIC24F__) || defined(__PIC32MX__)
		#if defined(__PIC24F__)
			CLKDIVbits.RCDIV = 0;		// Set 1:1 8MHz FRC postscalar
		#endif
		
		// ADC
	    #if defined(__PIC24FJ256DA210__) || defined(__PIC24FJ256GB210__)
	    	// Disable analog on all pins
	    	ANSA = 0x0000;
	    	ANSB = 0x0000;
	    	ANSC = 0x0000;
	    	ANSD = 0x0000;
	    	ANSE = 0x0000;
	    	ANSF = 0x0000;
	    	ANSG = 0x0000;
		#else
		    AD1CHS = 0;					// Input to AN0 (potentiometer)
			AD1PCFGbits.PCFG4 = 0;		// Disable digital input on AN4 (TC1047A temp sensor)
			#if defined(__32MX460F512L__) || defined(__32MX795F512L__)	// PIC32MX460F512L and PIC32MX795F512L PIMs has different pinout to accomodate USB module
				AD1PCFGbits.PCFG2 = 0;		// Disable digital input on AN2 (potentiometer)
			#else
				AD1PCFGbits.PCFG5 = 0;		// Disable digital input on AN5 (potentiometer)
			#endif
		#endif
	#endif

	// ADC
	AD1CON1 = 0x84E4;			// Turn on, auto sample start, auto-convert, 12 bit mode (on parts with a 12bit A/D)
	AD1CON2 = 0x0404;			// AVdd, AVss, int every 2 conversions, MUXA only, scan
	AD1CON3 = 0x1003;			// 16 Tad auto-sample, Tad = 3*Tcy
	#if defined(__32MX460F512L__) || defined(__32MX795F512L__)	// PIC32MX460F512L and PIC32MX795F512L PIMs has different pinout to accomodate USB module
		AD1CSSL = 1<<2;				// Scan pot
	#else
		AD1CSSL = 1<<5;				// Scan pot
	#endif

	// UART
	#if defined(STACK_USE_UART)
		UARTTX_TRIS = 0;
		UARTRX_TRIS = 1;
		UMODE = 0x8000;			// Set UARTEN.  Note: this must be done before setting UTXEN

		#if defined(__C30__)
			USTA = 0x0400;		// UTXEN set
			#define CLOSEST_UBRG_VALUE ((GetPeripheralClock()+8ul*BAUD_RATE)/16/BAUD_RATE-1)
			#define BAUD_ACTUAL (GetPeripheralClock()/16/(CLOSEST_UBRG_VALUE+1))
		#else	//defined(__C32__)
			USTA = 0x00001400;		// RXEN set, TXEN set
			#define CLOSEST_UBRG_VALUE ((GetPeripheralClock()+8ul*BAUD_RATE)/16/BAUD_RATE-1)
			#define BAUD_ACTUAL (GetPeripheralClock()/16/(CLOSEST_UBRG_VALUE+1))
		#endif
	
		#define BAUD_ERROR ((BAUD_ACTUAL > BAUD_RATE) ? BAUD_ACTUAL-BAUD_RATE : BAUD_RATE-BAUD_ACTUAL)
		#define BAUD_ERROR_PRECENT	((BAUD_ERROR*100+BAUD_RATE/2)/BAUD_RATE)
		#if (BAUD_ERROR_PRECENT > 3)
			#warning UART frequency error is worse than 3%
		#elif (BAUD_ERROR_PRECENT > 2)
			#warning UART frequency error is worse than 2%
		#endif
	
		UBRG = CLOSEST_UBRG_VALUE;
	#endif

#endif

// Deassert all chip select lines so there isn't any problem with 
// initialization order.  Ex: When ENC28J60 is on SPI2 with Explorer 16, 
// MAX3232 ROUT2 pin will drive RF12/U2CTS ENC28J60 CS line asserted, 
// preventing proper 25LC256 EEPROM operation.
#if defined(ENC_CS_TRIS)
	ENC_CS_IO = 1;
	ENC_CS_TRIS = 0;
#endif
#if defined(ENC100_CS_TRIS)
	ENC100_CS_IO = (ENC100_INTERFACE_MODE == 0);
	ENC100_CS_TRIS = 0;
#endif
#if defined(EEPROM_CS_TRIS)
	EEPROM_CS_IO = 1;
	EEPROM_CS_TRIS = 0;
#endif
#if defined(SPIRAM_CS_TRIS)
	SPIRAM_CS_IO = 1;
	SPIRAM_CS_TRIS = 0;
#endif
#if defined(SPIFLASH_CS_TRIS)
	SPIFLASH_CS_IO = 1;
	SPIFLASH_CS_TRIS = 0;
#endif
#if defined(WF_CS_TRIS)
	WF_CS_IO = 1;
	WF_CS_TRIS = 0;
#endif

#if defined(PIC24FJ64GA004_PIM)
	__builtin_write_OSCCONL(OSCCON & 0xBF);  // Unlock PPS

	// Remove some LED outputs to regain other functions
	LED1_TRIS = 1;		// Multiplexed with BUTTON0
	LED5_TRIS = 1;		// Multiplexed with EEPROM CS
	LED7_TRIS = 1;		// Multiplexed with BUTTON1
	
	// Inputs
	RPINR19bits.U2RXR = 19;			//U2RX = RP19
	RPINR22bits.SDI2R = 20;			//SDI2 = RP20
	RPINR20bits.SDI1R = 17;			//SDI1 = RP17
	
	// Outputs
	RPOR12bits.RP25R = U2TX_IO;		//RP25 = U2TX  
	RPOR12bits.RP24R = SCK2OUT_IO; 	//RP24 = SCK2
	RPOR10bits.RP21R = SDO2_IO;		//RP21 = SDO2
	RPOR7bits.RP15R = SCK1OUT_IO; 	//RP15 = SCK1
	RPOR8bits.RP16R = SDO1_IO;		//RP16 = SDO1
	
	AD1PCFG = 0xFFFF;				//All digital inputs - POT and Temp are on same pin as SDO1/SDI1, which is needed for ENC28J60 commnications

	__builtin_write_OSCCONL(OSCCON | 0x40); // Lock PPS
#endif

#if defined(__PIC24FJ256DA210__)
	__builtin_write_OSCCONL(OSCCON & 0xBF);  // Unlock PPS

	// Inputs
	RPINR19bits.U2RXR = 11;	// U2RX = RP11
	RPINR20bits.SDI1R = 0;	// SDI1 = RP0
	RPINR0bits.INT1R = 34;	// Assign RE9/RPI34 to INT1 (input) for MRF24WB0M Wi-Fi PICtail Plus interrupt
	
	// Outputs
	RPOR8bits.RP16R = 5;	// RP16 = U2TX
	RPOR1bits.RP2R = 8; 	// RP2 = SCK1
	RPOR0bits.RP1R = 7;		// RP1 = SDO1

	__builtin_write_OSCCONL(OSCCON | 0x40); // Lock PPS
#endif

#if defined(__PIC24FJ256GB110__) || defined(__PIC24FJ256GB210__)
	__builtin_write_OSCCONL(OSCCON & 0xBF);  // Unlock PPS
	
	// Configure SPI1 PPS pins (ENC28J60/ENCX24J600/MRF24WB0M or other PICtail Plus cards)
	RPOR0bits.RP0R = 8;		// Assign RP0 to SCK1 (output)
	RPOR7bits.RP15R = 7;	// Assign RP15 to SDO1 (output)
	RPINR20bits.SDI1R = 23;	// Assign RP23 to SDI1 (input)

	// Configure SPI2 PPS pins (25LC256 EEPROM on Explorer 16)
	RPOR10bits.RP21R = 11;	// Assign RG6/RP21 to SCK2 (output)
	RPOR9bits.RP19R = 10;	// Assign RG8/RP19 to SDO2 (output)
	RPINR22bits.SDI2R = 26;	// Assign RG7/RP26 to SDI2 (input)
	
	// Configure UART2 PPS pins (MAX3232 on Explorer 16)
	#if !defined(ENC100_INTERFACE_MODE) || (ENC100_INTERFACE_MODE == 0) || defined(ENC100_PSP_USE_INDIRECT_RAM_ADDRESSING)
	RPINR19bits.U2RXR = 10;	// Assign RF4/RP10 to U2RX (input)
	RPOR8bits.RP17R = 5;	// Assign RF5/RP17 to U2TX (output)
	#endif
	
	// Configure INT1 PPS pin (MRF24WB0M Wi-Fi PICtail Plus interrupt signal when in SPI slot 1)
	RPINR0bits.INT1R = 33;	// Assign RE8/RPI33 to INT1 (input)

	// Configure INT3 PPS pin (MRF24WB0M Wi-Fi PICtail Plus interrupt signal when in SPI slot 2)
	RPINR1bits.INT3R = 40;	// Assign RC3/RPI40 to INT3 (input)

	__builtin_write_OSCCONL(OSCCON | 0x40); // Lock PPS
#endif

#if defined(__PIC24FJ256GA110__)
	__builtin_write_OSCCONL(OSCCON & 0xBF);  // Unlock PPS
	
	// Configure SPI2 PPS pins (25LC256 EEPROM on Explorer 16 and ENC28J60/ENCX24J600/MRF24WB0M or other PICtail Plus cards)
	// Note that the ENC28J60/ENCX24J600/MRF24WB0M PICtails SPI PICtails must be inserted into the middle SPI2 socket, not the topmost SPI1 slot as normal.  This is because PIC24FJ256GA110 A3 silicon has an input-only RPI PPS pin in the ordinary SCK1 location.  Silicon rev A5 has this fixed, but for simplicity all demos will assume we are using SPI2.
	RPOR10bits.RP21R = 11;	// Assign RG6/RP21 to SCK2 (output)
	RPOR9bits.RP19R = 10;	// Assign RG8/RP19 to SDO2 (output)
	RPINR22bits.SDI2R = 26;	// Assign RG7/RP26 to SDI2 (input)
	
	// Configure UART2 PPS pins (MAX3232 on Explorer 16)
	RPINR19bits.U2RXR = 10;	// Assign RF4/RP10 to U2RX (input)
	RPOR8bits.RP17R = 5;	// Assign RF5/RP17 to U2TX (output)
	
	// Configure INT3 PPS pin (MRF24WB0M PICtail Plus interrupt signal)
	RPINR1bits.INT3R = 36;	// Assign RA14/RPI36 to INT3 (input)

	__builtin_write_OSCCONL(OSCCON | 0x40); // Lock PPS
#endif


#if defined(DSPICDEM11)
	// Deselect the LCD controller (PIC18F252 onboard) to ensure there is no SPI2 contention
	LCDCTRL_CS_TRIS = 0;
	LCDCTRL_CS_IO = 1;

	// Hold the codec in reset to ensure there is no SPI2 contention
	CODEC_RST_TRIS = 0;
	CODEC_RST_IO = 0;
#endif

#if defined(SPIRAM_CS_TRIS)
	SPIRAMInit();
#endif
#if defined(SPIRAM2_CS_TRIS)
	SPIRAM2Init();
#endif
#if defined(EEPROM_CS_TRIS)
	XEEInit();
#endif
#if defined(SPIFLASH_CS_TRIS)
	SPIFlashInit();
#endif
}


/****************************************************************************
  Function:
    void MainMenu(void)

  Description:
    This routine displays the main menu.

  Precondition:
    None

  Parameters:
    None

  Returns:
    None

  Remarks:
    None
  ***************************************************************************/
void MainMenu(void)
{
    oledFillLine(0x00,5);
    oledFillLine(0x00,6);
    oledFillLine(0x00,7);

    oledPutROMString((ROM BYTE*)"Genre", 0xB6, 0, 2);
    if (iRadioStatus.bStationsValid)
    {
        oledPutROMString((ROM BYTE*)"Station", 0xB6, 42, 2);
    }
    oledPutROMString((ROM BYTE*)"Audio", 0xB6, 95, 2);
}

/****************************************************************************
  Function:
    void NewServerTitleProc( BYTE *strServerTitle )

  Description:
    This is a callback function.  The MP3ClientTask() automatically calls
    this function when the server sends the icy-name header (just before
    playing any data).

  Precondition:
    None

  Parameters:
    BYTE *strServerTitle - Pointer to a null terminated string containing
                            the server name/title

  Returns:
    None

  Remarks:
    The string is volatile, so you must copy it if you wish to use it later
    after returning from this callback.
  ***************************************************************************/
void NewServerTitleProc(BYTE *strServerTitle)
{
    BYTE i;

    if(!iRadioStatus.bStationOnce)
        return;

    for(i = 0; i < 31u; i++)
    {
        strStationName[i] = *strServerTitle;
        strServerTitle++;
    }

    for(i = 0; i < 31u; i++)
    {
        if(!strStationName[i])
        {
            if(i < 30u)
            {
                if(strStationName[i+1] == ';')
                    break;

                strStationName[i] = ' ';
            }
        }

        if(strStationName[i] == ';')
        {
            strStationName[i] = 0;
            break;
        }
    }

    if(i < 31u)
        lenStationName = i;
    else
    {
        lenStationName = 30;
        strStationName[30] = 0;
    }

    tPtr = 0;
    iRadioStatus.bNewStationName = 1;
}


/****************************************************************************
  Function:
    void NewStreamTitleProc( BYTE *strStreamTitle )

  Description:
    This is a callback function.  The MP3ClientTask() automatically calls
    this function when the server sends the StreamTitle meta data (typically
    shortly after connection startup and whenever the song changes).

  Precondition:
    None

  Parameters:
    BYTE *strStreamTitle - Pointer to a null terminated string containing the
                            stream/song title

  Returns:
    None

  Remarks:
    The string is non-volatile, so you can continue to use the strStreamTitle
    pointer without being in this function.
  ***************************************************************************/
void NewStreamTitleProc(BYTE *strStreamTitle)
{
    BYTE i;

    for(i = 0; i < 51u; i++)
    {
        strSongName[i] = *strStreamTitle;
        strStreamTitle++;
    }

    for(i = 0; i < 51u; i++)
    {
        if(!strSongName[i])
        {
            if(i < 50u)
            {
                if(strSongName[i+1] == ';')
                    break;
                strSongName[i] = ' ';
            }
        }

        if(strSongName[i] == ';')
        {
            strSongName[i] = 0;
            break;
        }
    }

    if(i < 51u)
        lenSongName = i;
    else
    {
        lenSongName = 50;
        strSongName[50] = 0;
    }

    gPtr = 0;
    iRadioStatus.bNewSongName = 1;

    // Quick Fix to make string XML friendly; '&' and '<' are reserved symbols in XML
    {
        BYTE i;
        i = 0;
        while(i < strlen(strSongName))
        {
            if(strSongName[i] == '&')
            {
                strSongName[i] = '*';
            }
            else if(strSongName[i] == '<')
            {
                strSongName[i] = '(';
            }
            i++;
        }
    }//end Quick Fix

    bitrate = VLSI_GetBitrate();
}


/****************************************************************************
  Function:
    static BOOL Unconnected( void )

  Summary:
    This function determines whether or not the board is connected to the
    internet.

  Description:
    This function determines whether or not the board is connected to the
    internet.  It does this by looking at the board's current IP address.  If
    we are connected to the internet, our IP address is the value that was
    assigned to us.  If we are not connected, it is set to the initialization
    default.

  Precondition:
    None

  Parameters:
    None - None

  Return Values:
    TRUE    - We are not connected to the internet
    FALSE   - We are connected to the internet

  Example:
  <code>
  if (Unconnected())
  {
    // We are not connected to the internet any more
    oledPutROMString((ROM BYTE*)"Not Connected", 0xB1, 0, 2);
  }
  </code>

  Remarks:
    If we disconnect after being connected, the TCP/IP stack will
    set the IP address back to the initialization default.
  ***************************************************************************/
BOOL Unconnected( void )
{
    return  AppConfig.MyIPAddr.Val == (MY_DEFAULT_IP_ADDR_BYTE1 | MY_DEFAULT_IP_ADDR_BYTE2<<8ul | MY_DEFAULT_IP_ADDR_BYTE3<<16ul | MY_DEFAULT_IP_ADDR_BYTE4<<24ul);
}

/****************************************************************************
  Function:
    BYTE GetGenreCount( void )
    
  Description:
    This routine returns the compiled time definition GENRE_COUNT.

  Precondition:
    None

  Parameters:
    None

  Returns:
    Value of GENRE_COUNT

  Remarks:
    None
  ***************************************************************************/
BYTE GetGenreCount(void)
{
    return GENRE_COUNT;
}
