/*********************************************************************
 *
 *  Main Application Entry Point and TCP/IP Stack Demo
 *  Module for Microchip TCP/IP Stack
 *   -Demonstrates how to call and use the Microchip TCP/IP stack
 *	 -Reference: Microchip TCP/IP Stack Help (TCPIP Stack Help.chm)
 *
 *********************************************************************
 * FileName:        MainDemo.c
 * Dependencies:    TCPIP.h, ginsu.h
 * Processor:       PIC24F, PIC24H, dsPIC30F, dsPIC33F, PIC32
 * Compiler:        Microchip C32 v1.10b or higher
 *					Microchip C30 v3.21 or higher
 * Company:         Microchip Technology, Inc.
 *
 * Software License Agreement
 *
 * Microchip Demo Code for Google PowerMeter. Copyright 2010 Microchip
 * Technology Inc. and its licensors.  All rights reserved.
 *
 * Microchip licenses to you the right use, modify, copy, and distribute
 * the accompanying Microchip demo code only when used with or embedded on
 * a Microchip microcontroller or Microchip digital signal controller that
 * is integrated into your product or a third party product.  Any
 * redistributions of Microchip's demo code in compliance with the
 * foregoing must include a copy of this entire notice.
 *
 * THE MICROCHIP DEMO CODE AND DOCUMENTATION ARE PROVIDED "AS IS" WITHOUT
 * WARRANTY OF ANY KIND, EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT
 * LIMITATION, ANY WARRANTY OF MERCHANTABILITY, TITLE, NON-INFRINGEMENT,
 * AND FITNESS FOR A PARTICULAR PURPOSE. IN NO EVENT SHALL MICROCHIP OR ITS
 * LICENSORS BE LIABLE OR OBLIGATED UNDER CONTRACT, NEGLIGENCE, STRICT
 * LIABILITY, CONTRIBUTION, BREACH OF WARRANTY, OR OTHER LEGAL EQUITABLE
 * THEORY ANY DIRECT OR INDIRECT DAMAGES OR EXPENSES INCLUDING BUT NOT
 * LIMITED TO ANY INCIDENTAL, SPECIAL, INDIRECT, OR CONSEQUENTIAL DAMAGES,
 * LOST PROFITS OR LOST DATA, COST OF PROCUREMENT OF SUBSTITUTE GOODS,
 * TECHNOLOGY, SERVICES, ANY CLAIMS BY THIRD PARTIES (INCLUDING BUT NOT
 * LIMITED TO ANY DEFENSE THEREOF), OR OTHER SIMILAR COSTS.
 *
 * THIRD PARTY SOFTWARE:  Notwithstanding anything to the contrary, any
 * third party software accompanying this software - including but not
 * limited to Google's reference code - is subject to the terms and
 * conditions of license agreement of such third party, such as the Apache
 * License Version 2.0 (www.apache.org/licenses/).  To the extent required
 * by such third party licenses, the terms of the third party license will
 * apply in lieu of the terms provided herein.  To the extent the terms of
 * such third party licenses prohibit any of the restrictions described
 * herein, such restrictions will not apply to such third party software.
 * THIRD PARTY SOFTWARE  IS SUBJECT TO THE FOREGOING WARRANTY DISCLAIMER AND
 * LIMIT ON LIABILITY PROVIDED IN THE PARAGRAPH ABOVE.
 *
 ********************************************************************/
/*
 * This macro uniquely defines this file as the main entry point.
 * There should only be one such definition in the entire project,
 * and this file must define the AppConfig variable as described below.
 */
#define THIS_IS_STACK_APPLICATION

// Include all headers for any enabled TCPIP Stack functions
#include "TCPIP Stack/TCPIP.h"

#if defined(STACK_USE_ZEROCONF_LINK_LOCAL)
#include "TCPIP Stack/ZeroconfLinkLocal.h"
#endif
#if defined(STACK_USE_ZEROCONF_MDNS_SD)
#include "TCPIP Stack/ZeroconfMulticastDNS.h"
#endif

// Include functions specific to this stack application
#include "MainDemo.h"
#include "ginsu.h"
#include "HTTPTime.h"


// Declare AppConfig structure
APP_CONFIG AppConfig;
static unsigned short wOriginalAppConfigChecksum;	// Checksum of the ROM defaults for AppConfig
// Declare a variable to hold the stack's relative start time
DWORD StackStartTime = 0;
// Declare POWER_METER_PREFERENCES structure to contain required settings
POWER_METER_PREFERENCES gPowerMeterPreferences;
// Declare an INT64 to contain the cumulative power consumption of
// the device or circuit you're monitoring
INT64 gCumulativePower[3];
// Declare state tracking variables for buttons pushes and capture modes
PMCaptureMode captureMode;
PMButtonState buttonState;
// Representation of our LEDS
BYTE ledBits;
DWORD ButtonPushStart;

// Use UART2 instead of UART1 for stdout (printf functions).  Explorer 16
// serial port hardware is on PIC UART2 module.
#if defined(EXPLORER_16) || defined(PIC24FJ256DA210_DEV_BOARD)
	int __C30_UART = 2;
#endif

// Private helper functions.
// These may or may not be present in all applications.

static void InitNVMemContents(void);
static void InitializeBoard(void);
static void ProcessIO(void);
#if defined(WF_CS_TRIS)
    static void WF_Connect(void);
#endif    

//
// PIC18 Interrupt Service Routines
//
// NOTE: Several PICs, including the PIC18F4620 revision A3 have a RETFIE FAST/MOVFF bug
// The interruptlow keyword is used to work around the bug when using C18
#if defined(__18CXX)
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
	#pragma interruptlow HighISR
	void HighISR(void)
	#endif
	{
	    #if defined(STACK_USE_UART2TCP_BRIDGE)
			UART2TCPBridgeISR();
		#endif

		#if defined(WF_CS_TRIS)
			WFEintISR();
		#endif // WF_CS_TRIS
	}

	#if !defined(HI_TECH_C)
	#pragma code lowVector=0x18
	void LowVector(void){_asm goto LowISR _endasm}
	#pragma code highVector=0x8
	void HighVector(void){_asm goto HighISR _endasm}
	#pragma code // Return to default code section
	#endif

// C30 and C32 Exception Handlers
// If your code gets here, you either tried to read or write
// a NULL pointer, or your application overflowed the stack
// by having too many local variables or parameters declared.
#elif defined(__C30__)
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

#elif defined(__C32__)
	void _general_exception_handler(unsigned cause, unsigned status)
	{
		Nop();
		Nop();
	}
#endif

#if defined( WF_CS_TRIS )
    /* used for WiFi assertions */
    #ifdef WF_DEBUG
        #define WF_MODULE_NUMBER   WF_MODULE_MAIN_DEMO
    #endif
#endif /* WF_CS_TRIS */

//
// Main application entry point.
//
#if defined(__18CXX)
void main(void)
#else
int main(void)
#endif
{
	static DWORD t = 0;
	static DWORD dwLastIP = 0;
    DWORD SNTPTimeTimeout = 0;

    #if defined (EZ_CONFIG_STORE)
    //static DWORD ButtonPushStart = 0;
    #endif

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

	// Initialize Stack and application related NV variables
    InitNVMemContents();

    gCumulativePower[0] = 0;
    gCumulativePower[1] = 0;
    gCumulativePower[2] = 0;
    ledBits = 0x00;
    LED_PUT (ledBits);

    // Initiates board setup process if button is depressed
	// on startup
    if(BUTTON0_IO == 0u)
    {
		#if defined(EEPROM_CS_TRIS) || defined(SPIFLASH_CS_TRIS)
		// Invalidate the EEPROM contents if BUTTON0 is held down for more than 4 seconds
		DWORD StartTime = TickGet();
		LED_PUT(0x00);

		while(BUTTON0_IO == 0u)
		{
			if(TickGet() - StartTime > 4*TICK_SECOND)
			{
				#if defined(EEPROM_CS_TRIS)
			    XEEBeginWrite(identifierOffset);
			    XEEWrite(0xFF);
			    XEEWrite(0xFF);
			    XEEEndWrite();
			    #elif defined(SPIFLASH_CS_TRIS)
			    SPIFlashBeginWrite(identifierOffset);
			    SPIFlashWrite(0xFF);
			    SPIFlashWrite(0xFF);
			    #endif

				#if defined(STACK_USE_UART)
				putrsUART("\r\n\r\nBUTTON0 held for more than 4 seconds.  Default settings restored.\r\n\r\n");
				#endif

				LED_PUT(0x0F);
				while((LONG)(TickGet() - StartTime) <= (LONG)(9*TICK_SECOND/2));
				LED_PUT(0x00);
				while(BUTTON0_IO == 0u);
				Reset();
				break;
			}
		}
		#endif

    }

	// Initialize core stack layers (MAC, ARP, TCP, UDP) and
	// application modules (HTTP, SNMP, etc.)
    StackInit();

    #if defined ( EZ_CONFIG_SCAN )
    WFInitScan();
    #endif

    #if defined(WF_CS_TRIS)
    WF_Connect();
    #endif

	// Initialize any application-specific modules or functions/
	// For this demo application, this only includes the
	// UART 2 TCP Bridge
	#if defined(STACK_USE_UART2TCP_BRIDGE)
	UART2TCPBridgeInit();
	#endif

	#if defined(STACK_USE_ZEROCONF_LINK_LOCAL)
    ZeroconfLLInitialize();
	#endif

	#if defined(STACK_USE_ZEROCONF_MDNS_SD)
	mDNSInitialize(MY_DEFAULT_HOST_NAME);
	mDNSServiceRegister(
		(const char *) "DemoWebServer",	// base name of the service
		"_http._tcp.local",			    // type of the service
		80,				                // TCP or UDP port, at which this service is available
		((const BYTE *)"path=/index.htm"),	// TXT info
		1,								    // auto rename the service when if needed
		NULL,							    // no callback function
		NULL							    // no application context
		);

    mDNSMulticastFilterRegister();			
	#endif

    StackStartTime = 0;

    GInitForWork();

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
		#if defined (EZ_CONFIG_STORE)
		// Hold button3 for 4 seconds to reset to defaults.
		if (BUTTON3_IO == 0u) {  // Button is pressed
			if (ButtonPushStart == 0)  //Just pressed
				ButtonPushStart = TickGet();
			else
				if(TickGet() - ButtonPushStart > 4*TICK_SECOND)
					RestoreWifiConfig();
		} 
		else 
		{
			ButtonPushStart = 0; //Button release reset the clock
		} 

		if (AppConfig.saveSecurityInfo)
		{
			// set true by WF_ProcessEvent after connecting to a new network
			// get the security info, and if required, push the PSK to EEPROM
			if ((AppConfig.SecurityMode == WF_SECURITY_WPA_WITH_PASS_PHRASE) ||
				(AppConfig.SecurityMode == WF_SECURITY_WPA2_WITH_PASS_PHRASE) ||
				(AppConfig.SecurityMode == WF_SECURITY_WPA_AUTO_WITH_PASS_PHRASE))
			{
				// only need to save when doing passphrase
				tWFCPElements profile;
				UINT8 connState;
				UINT8 connID;
				WF_CMGetConnectionState(&connState, &connID);
				WF_CPGetElements(connID, &profile);

				memcpy((char*)AppConfig.SecurityKey, (char*)profile.securityKey, 32);
				AppConfig.SecurityMode--; // the calc psk is exactly one below for each passphrase option
				AppConfig.SecurityKeyLength = 32;                

				SaveNVMemContents();
			}

			AppConfig.saveSecurityInfo = FALSE;
		}
		#endif // EZ_CONFIG_STORE
        // Get the current time from the SNTP module until
        // we get a reasonable time (which will indicate that
        // the state machine has received a valid time from
        // a time server)
        // If we can't get a reasonable SNTP time within a certain timeout,
        // try to parse the time from an HTTP packet with the HTTPTime
        // application module
        if (StackStartTime < 1248245820)
        {
            StackStartTime = SNTPGetUTCSeconds();
            if (SNTPTimeTimeout == 0)
            {
                // 10-second timeout
                SNTPTimeTimeout = TickGet() + (TICK_SECOND * 10);
            }
            else if (StackStartTime < 1248245820)
            {
                if ((long)(TickGet() - SNTPTimeTimeout) > 0)
                    if (!IsHTTPTimeStateMachineRunning())
                        StartHTTPTimeStateMachine();
                StackStartTime = HTTPTimeGetUTCSeconds();
            }
        }

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

        #if defined(STACK_USE_ZEROCONF_LINK_LOCAL)
		ZeroconfLLProcess();
        #endif

        #if defined(STACK_USE_ZEROCONF_MDNS_SD)
        mDNSProcess();
		// Use this function to exercise service update function
		// HTTPUpdateRecord();
        #endif

		// Process application specific tasks here.
		// For this demo app, this will include the Generic TCP 
		// client and servers, and the SNMP, Ping, and SNMP Trap
		// demos.  Following that, we will process any IO from
		// the inputs on the board itself.
		// Any custom modules or processing you need to do should
		// go here.
		#if defined(STACK_USE_GENERIC_TCP_CLIENT_EXAMPLE)
		GenericTCPClient();
		#endif
		
		#if defined ( WF_CONSOLE ) && defined ( EZ_CONFIG_SCAN ) 
        WFDisplayScanMgr();
        #endif

		ProcessIO();

        if (*(gPowerMeterPreferences.auth_token) && StackStartTime > 124824582)
            GPollForWork();

        // If the local IP address has changed (ex: due to DHCP lease change)
        // write the new IP address to the LCD display, UART, and Announce 
        // service
		if(dwLastIP != AppConfig.MyIPAddr.Val)
		{
			dwLastIP = AppConfig.MyIPAddr.Val;
			
			#if defined(STACK_USE_UART)
				putrsUART((ROM char*)"\r\nNew IP Address: ");
			#endif

			DisplayIPValue(AppConfig.MyIPAddr);

			#if defined(STACK_USE_UART)
				putrsUART((ROM char*)"\r\n");
			#endif


			#if defined(STACK_USE_ANNOUNCE)
				AnnounceIP();
			#endif

            #if defined(STACK_USE_ZEROCONF_MDNS_SD)
				mDNSFillHostRecord();
			#endif
		}

        if (IsHTTPTimeStateMachineRunning())
            HTTPTimeTask();
	}
}

#if defined(WF_CS_TRIS)
/*****************************************************************************
 * FUNCTION: WF_Connect
 *
 * RETURNS:  None
 *
 * PARAMS:   None
 *
 *  NOTES:   Connects to an 802.11 network.  Customize this function as needed 
 *           for your application.
 *****************************************************************************/
static void WF_Connect(void)
{
    UINT8 ConnectionProfileID;
    UINT8 channelList[] = MY_DEFAULT_CHANNEL_LIST;
    #if defined(WF_USE_POWER_SAVE_FUNCTIONS)
    BOOL  PsPollEnabled;
    #endif
    
    /* create a Connection Profile */
    WF_CPCreate(&ConnectionProfileID);

    #if defined(STACK_USE_UART)
    putrsUART("Set SSID (");
    putsUART(AppConfig.MySSID);
    putrsUART(")\r\n");
    #endif
    WF_CPSetSsid(ConnectionProfileID, 
                 AppConfig.MySSID, 
                 AppConfig.SsidLength);
    #if defined (EZ_CONFIG_STORE)
    WF_CPSetNetworkType(ConnectionProfileID, AppConfig.networkType);
	if (AppConfig.networkType == WF_ADHOC)
	{
		WF_CPSetAdHocBehavior(ConnectionProfileID, WF_ADHOC_CONNECT_THEN_START);
	}
    #else
    WF_CPSetNetworkType(ConnectionProfileID, MY_DEFAULT_NETWORK_TYPE);
	if (MY_DEFAULT_NETWORK_TYPE == WF_ADHOC)
	{
		WF_CPSetAdHocBehavior(ConnectionProfileID, WF_ADHOC_CONNECT_THEN_START);
	}
    #endif
    
	switch(AppConfig.SecurityMode) {
		case WF_SECURITY_OPEN:
			WF_CPSetSecurity(ConnectionProfileID, WF_SECURITY_OPEN, 0, NULL, 0);
			break;
		case WF_SECURITY_WEP_40:
			// assume key 0
			WF_CPSetSecurity(ConnectionProfileID, AppConfig.SecurityMode, 0, AppConfig.SecurityKey, 5);
			break;
		case WF_SECURITY_WEP_104:
			// assume key 0
			WF_CPSetSecurity(ConnectionProfileID, AppConfig.SecurityMode, 0, AppConfig.SecurityKey, 13);
			break;
		case WF_SECURITY_WPA_AUTO_WITH_PASS_PHRASE:
			WF_CPSetSecurity(ConnectionProfileID, WF_SECURITY_WPA_AUTO_WITH_PASS_PHRASE, 
							 0, AppConfig.SecurityKey, strlen((char*)AppConfig.SecurityKey));
			break;
		case WF_SECURITY_WPA_AUTO_WITH_KEY:
			WF_CPSetSecurity(ConnectionProfileID, WF_SECURITY_WPA_AUTO_WITH_KEY,
							 0, AppConfig.SecurityKey, 32);
			break;
		default:
            break;
	}
        
	WF_CASetScanType(MY_DEFAULT_SCAN_TYPE);
    WF_CASetChannelList(channelList, sizeof(channelList));
    
    #if defined(STACK_USE_UART)
    putrsUART("Set list retry count\r\n");
    #endif
    // The Retry Count parameter tells the WiFi Connection manager how many attempts to make when trying
    // to connect to an existing network.  In the Infrastructure case, the default is to retry forever so that
    // if the AP is turned off or out of range, the radio will continue to attempt a connection until the
    // AP is eventually back on or in range.  In the Adhoc case, the default is to retry 3 times since the 
    // purpose of attempting to establish a network in the Adhoc case is only to verify that one does not
    // initially exist.  If the retry count was set to WF_RETRY_FOREVER in the AdHoc mode, an AdHoc network
    // would never be established.  The constants MY_DEFAULT_LIST_RETRY_COUNT_ADHOC and 
    // MY_DEFAULT_LIST_RETRY_COUNT_INFRASTRUCTURE have been created specifically for the June 2011 MAL release.
    #if defined(EZ_CONFIG_STORE)
        if (AppConfig.networkType == WF_ADHOC)
            WF_CASetListRetryCount(MY_DEFAULT_LIST_RETRY_COUNT_ADHOC);
        else
            WF_CASetListRetryCount(MY_DEFAULT_LIST_RETRY_COUNT_INFRASTRUCTURE);
    #else
        #if (MY_DEFAULT_NETWORK_TYPE == WF_ADHOC)
            WF_CASetListRetryCount(MY_DEFAULT_LIST_RETRY_COUNT_ADHOC);
        #else
            WF_CASetListRetryCount(MY_DEFAULT_LIST_RETRY_COUNT_INFRASTRUCTURE);
        #endif
    #endif

    #if defined(STACK_USE_UART)        
    putrsUART("Set Event Notify\r\n");    
    #endif
    WF_CASetEventNotificationAction(MY_DEFAULT_EVENT_NOTIFICATION_LIST);
    
#if defined(WF_USE_POWER_SAVE_FUNCTIONS)
    PsPollEnabled = (MY_DEFAULT_PS_POLL == WF_ENABLED);
    if (!PsPollEnabled)
    {    
        /* disable low power (PS-Poll) mode */
        #if defined(STACK_USE_UART)
        putrsUART("Disable PS-Poll\r\n");        
        #endif
        WF_PsPollDisable();
    }    
    else
    {
        /* Enable low power (PS-Poll) mode */
        #if defined(STACK_USE_UART)
        putrsUART("Enable PS-Poll\r\n");        
        #endif
        WF_PsPollEnable(TRUE);
    }    
#endif
    
    WF_CMConnect(ConnectionProfileID);
}   
#endif /* WF_CS_TRIS */

// Writes an IP address to the LCD display and the UART as available
void DisplayIPValue(IP_ADDR IPVal)
{
//	printf("%u.%u.%u.%u", IPVal.v[0], IPVal.v[1], IPVal.v[2], IPVal.v[3]);
    BYTE IPDigit[4];
	BYTE i;
#ifdef USE_LCD
	BYTE j;
	BYTE LCDPos=16;
#endif

	for(i = 0; i < sizeof(IP_ADDR); i++)
	{
	    uitoa((WORD)IPVal.v[i], IPDigit);

		#if defined(STACK_USE_UART)
			putsUART((char *) IPDigit);
		#endif

		#ifdef USE_LCD
			for(j = 0; j < strlen((char*)IPDigit); j++)
			{
				LCDText[LCDPos++] = IPDigit[j];
			}
			if(i == sizeof(IP_ADDR)-1)
				break;
			LCDText[LCDPos++] = '.';
		#else
			if(i == sizeof(IP_ADDR)-1)
				break;
		#endif

		#if defined(STACK_USE_UART)
			while(BusyUART());
			WriteUART('.');
		#endif
	}

	#ifdef USE_LCD
		if(LCDPos < 32u)
			LCDText[LCDPos] = 0;
		LCDUpdate();
	#endif
}

// Processes A/D data from the potentiometer
static void ProcessIO(void)
{
    switch (buttonState)
    {
        case SM_IDLE:
            if (BUTTON0_IO == 0u || BUTTON1_IO == 0u || BUTTON2_IO == 0u || BUTTON3_IO == 0u)
                buttonState = SM_DEBOUNCE_DOWN;
            break;
        case SM_DEBOUNCE_DOWN:
            if (BUTTON0_IO == 0u || BUTTON1_IO == 0u || BUTTON2_IO == 0u || BUTTON3_IO == 0u)
            {
                if (BUTTON0_IO == 0u)
                {
                    ledBits ^= 0b00000010;
                }
                else if (BUTTON1_IO == 0u)
                {
                    ledBits ^= 0b00000100;
                }
                else if (BUTTON2_IO == 0)
                {
                    ledBits ^= 0b00001000;
                }
                else if (BUTTON3_IO == 0)
                {
                    ledBits ^= 0b00010000;
                }
                else
                {
                    buttonState = SM_IDLE;
                    break;
                }
                LED_PUT (ledBits);
                buttonState = SM_RELEASE_WAIT;
            }
            else
                buttonState = SM_IDLE;
            break;
        case SM_RELEASE_WAIT:
			// Continue if all buttons are up
			if(BUTTON0_IO == 1u && BUTTON1_IO == 1u && BUTTON2_IO == 1u && BUTTON3_IO == 1u)
				buttonState = SM_DEBOUNCE_UP;
            break;
        case SM_DEBOUNCE_UP:
			// Make sure all buttons were released
			if(BUTTON0_IO == 1u && BUTTON1_IO == 1u && BUTTON2_IO == 1u && BUTTON3_IO == 1u)
                buttonState = SM_IDLE;
            else
                buttonState = SM_RELEASE_WAIT;
            break;
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
#if defined(EEPROM_CS_TRIS)
	XEEInit();
#endif
#if defined(SPIFLASH_CS_TRIS)
	SPIFlashInit();
#endif
}

/*********************************************************************
 * Function:        void InitNVMemContents(void)
 *
 * PreCondition:    MPFSInit() is already called.
 *
 * Input:           None
 *
 * Output:          Write/Read non-volatile config variables.
 *
 * Side Effects:    None
 *
 * Overview:        None
 *
 * Note:            None
 ********************************************************************/
// MAC Address Serialization using a MPLAB PM3 Programmer and 
// Serialized Quick Turn Programming (SQTP). 
// The advantage of using SQTP for programming the MAC Address is it
// allows you to auto-increment the MAC address without recompiling 
// the code for each unit.  To use SQTP, the MAC address must be fixed
// at a specific location in program memory.  Uncomment these two pragmas
// that locate the MAC address at 0x1FFF0.  Syntax below is for MPLAB C 
// Compiler for PIC18 MCUs. Syntax will vary for other compilers.
//#pragma romdata MACROM=0x1FFF0
static ROM BYTE SerializedMACAddress[6] = {MY_DEFAULT_MAC_BYTE1, MY_DEFAULT_MAC_BYTE2, MY_DEFAULT_MAC_BYTE3, MY_DEFAULT_MAC_BYTE4, MY_DEFAULT_MAC_BYTE5, MY_DEFAULT_MAC_BYTE6};
//#pragma romdata

static void InitNVMemContents(void)
{
#if defined(EEPROM_CS_TRIS) || defined(SPIFLASH_CS_TRIS)
	unsigned char vNeedToSaveDefaults = 0;
#endif

    // Initialize AppConfig Structure
	while(1)
	{
		// Start out zeroing all AppConfig bytes to ensure all fields are 
		// deterministic for checksum generation
		memset((void*)&AppConfig, 0x00, sizeof(AppConfig));
		
		AppConfig.Flags.bIsDHCPEnabled = TRUE;
		AppConfig.Flags.bInConfigMode = TRUE;
		memcpypgm2ram((void*)&AppConfig.MyMACAddr, (ROM void*)SerializedMACAddress, sizeof(AppConfig.MyMACAddr));
//		{
//			_prog_addressT MACAddressAddress;
//			MACAddressAddress.next = 0x157F8;
//			_memcpy_p2d24((char*)&AppConfig.MyMACAddr, MACAddressAddress, sizeof(AppConfig.MyMACAddr));
//		}
		AppConfig.MyIPAddr.Val = MY_DEFAULT_IP_ADDR_BYTE1 | MY_DEFAULT_IP_ADDR_BYTE2<<8ul | MY_DEFAULT_IP_ADDR_BYTE3<<16ul | MY_DEFAULT_IP_ADDR_BYTE4<<24ul;
		AppConfig.DefaultIPAddr.Val = AppConfig.MyIPAddr.Val;
		AppConfig.MyMask.Val = MY_DEFAULT_MASK_BYTE1 | MY_DEFAULT_MASK_BYTE2<<8ul | MY_DEFAULT_MASK_BYTE3<<16ul | MY_DEFAULT_MASK_BYTE4<<24ul;
		AppConfig.DefaultMask.Val = AppConfig.MyMask.Val;
		AppConfig.MyGateway.Val = MY_DEFAULT_GATE_BYTE1 | MY_DEFAULT_GATE_BYTE2<<8ul | MY_DEFAULT_GATE_BYTE3<<16ul | MY_DEFAULT_GATE_BYTE4<<24ul;
		AppConfig.PrimaryDNSServer.Val = MY_DEFAULT_PRIMARY_DNS_BYTE1 | MY_DEFAULT_PRIMARY_DNS_BYTE2<<8ul  | MY_DEFAULT_PRIMARY_DNS_BYTE3<<16ul  | MY_DEFAULT_PRIMARY_DNS_BYTE4<<24ul;
		AppConfig.SecondaryDNSServer.Val = MY_DEFAULT_SECONDARY_DNS_BYTE1 | MY_DEFAULT_SECONDARY_DNS_BYTE2<<8ul  | MY_DEFAULT_SECONDARY_DNS_BYTE3<<16ul  | MY_DEFAULT_SECONDARY_DNS_BYTE4<<24ul;
	
		// Load the default NetBIOS Host Name
		memcpypgm2ram(AppConfig.NetBIOSName, (ROM void*)MY_DEFAULT_HOST_NAME, 16);
		FormatNetBIOSName(AppConfig.NetBIOSName);
	
		#if defined(WF_CS_TRIS)
			// Load the default SSID Name
			WF_ASSERT(sizeof(MY_DEFAULT_SSID_NAME) <= sizeof(AppConfig.MySSID));
			memcpypgm2ram(AppConfig.MySSID, (ROM void*)MY_DEFAULT_SSID_NAME, sizeof(MY_DEFAULT_SSID_NAME));
			AppConfig.SsidLength = sizeof(MY_DEFAULT_SSID_NAME) - 1;
	
        
			#if defined (EZ_CONFIG_STORE)
			AppConfig.SecurityMode = WF_SECURITY_OPEN;
			AppConfig.networkType = WF_ADHOC;
			AppConfig.dataValid = 0;
			#endif // EZ_CONFIG_STORE

		#endif
	
	    // Initialize Google PowerMeter Preferences
	    gPowerMeterPreferences.cap_sec_interval = 590;
	    gPowerMeterPreferences.send_sec_interval = 600;
	    gPowerMeterPreferences.send_status = FALSE;
	    gPowerMeterPreferences.auth_path[0] = 0x00;
	    gPowerMeterPreferences.auth_token[0] = 0x00;
	    gPowerMeterPreferences.pKeyHashes[0][0] = 0x00;
	    gPowerMeterPreferences.pKeyHashes[1][0] = 0x00;
	    gPowerMeterPreferences.pKeyHashes[2][0] = 0x00;


		// Compute the checksum of the AppConfig defaults as loaded from ROM
		wOriginalAppConfigChecksum = CalcIPChecksum((BYTE*)&AppConfig, sizeof(AppConfig));

		#if defined(EEPROM_CS_TRIS) || defined(SPIFLASH_CS_TRIS)
		{
			NVM_VALIDATION_STRUCT NVMValidationStruct;

			// Check to see if we have a flag set indicating that we need to 
			// save the ROM default AppConfig values.
			if(vNeedToSaveDefaults)
	            SaveNVMemContents();
		
			// Read the NVMValidation record and AppConfig struct out of EEPROM/Flash
			#if defined(EEPROM_CS_TRIS)
			{
				XEEReadArray(identifierOffset, (BYTE*)&NVMValidationStruct, sizeof(NVMValidationStruct));
				XEEReadArray(identifierOffset + sizeof(NVMValidationStruct), (BYTE*)&AppConfig, sizeof(AppConfig));
	        	XEEReadArray(powerMeterPreferencesOffset, (BYTE*)&gPowerMeterPreferences, sizeof(gPowerMeterPreferences));
			}
			#elif defined(SPIFLASH_CS_TRIS)
			{
				SPIFlashReadArray(identifierOffset, (BYTE*)&NVMValidationStruct, sizeof(NVMValidationStruct));
				SPIFlashReadArray(identifierOffset + sizeof(NVMValidationStruct), (BYTE*)&AppConfig, sizeof(AppConfig));
				SPIFlashReadArray(powerMeterPreferencesOffset, (BYTE*)&gPowerMeterPreferences, sizeof(gPowerMeterPreferences));
			}
			#endif
	
			// Check EEPROM/Flash validitity.  If it isn't valid, set a flag so 
			// that we will save the ROM default values on the next loop 
			// iteration.
			if((NVMValidationStruct.wConfigurationLength != sizeof(AppConfig)) ||
			   (NVMValidationStruct.wOriginalChecksum != wOriginalAppConfigChecksum) ||
			   (NVMValidationStruct.wCurrentChecksum != CalcIPChecksum((BYTE*)&AppConfig, sizeof(AppConfig))))
			{
				// Check to ensure that the vNeedToSaveDefaults flag is zero, 
				// indicating that this is the first iteration through the do 
				// loop.  If we have already saved the defaults once and the 
				// EEPROM/Flash still doesn't pass the validity check, then it 
				// means we aren't successfully reading or writing to the 
				// EEPROM/Flash.  This means you have a hardware error and/or 
				// SPI configuration error.
				if(vNeedToSaveDefaults)
				{
					while(1);
				}
				
				// Set flag and restart loop to load ROM defaults and save them
				vNeedToSaveDefaults = 1;
				continue;
			}
			
			// If we get down here, it means the EEPROM/Flash has valid contents 
			// and either matches the ROM defaults or previously matched and 
			// was run-time reconfigured by the user.  In this case, we shall 
			// use the contents loaded from EEPROM/Flash.
			break;
		}
		#endif
		break;
	}
}

#if defined(EEPROM_CS_TRIS) || defined(SPIFLASH_CS_TRIS)

/*********************************************************************
 * Function:        void SaveNVMemContents(void)
 *
 * PreCondition:    Valid config values have been loaded or
 *                  generated
 *
 * Input:           None
 *
 * Output:          None.
 *
 * Side Effects:    None
 *
 * Overview:        Writes configuration values to non-volatile
 *                  memory
 *
 * Note:            None
 ********************************************************************/
void SaveNVMemContents(void)
{
	// Ensure adequate space has been reserved in non-volatile storage to 
	// store the entire AppConfig structure.  If you get stuck in this while(1) 
	// trap, it means you have a design time misconfiguration in TCPIPConfig.h.
	// You must increase MPFS_RESERVE_BLOCK to allocate more space.
	#if defined(STACK_USE_MPFS2)
		if(structureEndOffset > NV_MEM_RESERVE_BLOCK)
			while(1);
	#endif

    SaveAppConfig(&AppConfig);
    SavePowerMeterPreferences();
}


/*********************************************************************
 * Function:        void SaveAppConfig(const APP_CONFIG *ptrAppConfig)
 *
 * PreCondition:    Valid AppConfig values have been loaded or
 *                  generated
 *
 * Input:           None
 *
 * Output:          None.
 *
 * Side Effects:    None
 *
 * Overview:        Writes AppConfig values to non-volatile
 *
 * Note:            None
 ********************************************************************/
void SaveAppConfig(const APP_CONFIG *ptrAppConfig)
{
	NVM_VALIDATION_STRUCT NVMValidationStruct;

	// Ensure adequate space has been reserved in non-volatile storage to 
	// store the entire AppConfig structure.  If you get stuck in this while(1) 
	// trap, it means you have a design time misconfiguration in TCPIPConfig.h.
	// You must increase MPFS_RESERVE_BLOCK to allocate more space.
	#if defined(STACK_USE_MPFS2)
		if(identifierOffset + sizeof(NVMValidationStruct) + sizeof(AppConfig) > MPFS_RESERVE_BLOCK)
			while(1);
	#endif

	// Get proper values for the validation structure indicating that we can use 
	// these EEPROM/Flash contents on future boot ups
	NVMValidationStruct.wOriginalChecksum = wOriginalAppConfigChecksum;
	NVMValidationStruct.wCurrentChecksum = CalcIPChecksum((BYTE*)ptrAppConfig, sizeof(APP_CONFIG));
	NVMValidationStruct.wConfigurationLength = sizeof(APP_CONFIG);

	// Write the validation struct and current AppConfig contents to EEPROM/Flash
	#if defined(EEPROM_CS_TRIS)
	    XEEBeginWrite(identifierOffset);
	    XEEWriteArray((BYTE*)&NVMValidationStruct, sizeof(NVMValidationStruct));
		XEEWriteArray((BYTE*)ptrAppConfig, sizeof(APP_CONFIG));
    #else
		SPIFlashBeginWrite(identifierOffset);
		SPIFlashWriteArray((BYTE*)&NVMValidationStruct, sizeof(NVMValidationStruct));
		SPIFlashWriteArray((BYTE*)ptrAppConfig, sizeof(APP_CONFIG));
    #endif
}



/*********************************************************************
 * Function:        void SavePowerMeterPreferences(void)
 *
 * PreCondition:    Valid Power Meter preferences have been loaded or
 *                  generated
 *
 * Input:           None
 *
 * Output:          None.
 *
 * Side Effects:    None
 *
 * Overview:        Writes Power Meter preferences to non-volatile
 *                  storage
 *
 * Note:            None
 ********************************************************************/
void SavePowerMeterPreferences(void)
{
	#if defined(EEPROM_CS_TRIS)
	    XEEBeginWrite(identifierOffset + sizeof(NVM_VALIDATION_STRUCT) + sizeof(AppConfig));
	    XEEWriteArray((BYTE*)&gPowerMeterPreferences, sizeof(gPowerMeterPreferences));
        XEEEndWrite();
    #else
	    SPIFlashBeginWrite(identifierOffset + sizeof(NVM_VALIDATION_STRUCT) + sizeof(AppConfig));
	    SPIFlashWriteArray((BYTE*)&gPowerMeterPreferences, sizeof(gPowerMeterPreferences));
    #endif
}
#endif

#if defined (EZ_CONFIG_STORE)
void RestoreWifiConfig(void)
{
#if defined(EEPROM_CS_TRIS)
    XEEBeginWrite(identifierOffset);
    XEEWrite(0xFF);
    XEEWrite(0xFF);
    XEEEndWrite();
#elif defined(SPIFLASH_CS_TRIS)
    SPIFlashBeginWrite(identifierOffset);
    SPIFlashWrite(0xFF);
    SPIFlashWrite(0xFF);
#elif defined(ATMEL_SPIFLASH_CS_IO)
    AtmelSPIFlashBeginWrite(identifierOffset);
    AtmelSPIFlashWrite(0xFF);
    AtmelSPIFlashWrite(0xFF);
#endif

    Reset();
}

#endif // EZ_CONFIG_STORE


