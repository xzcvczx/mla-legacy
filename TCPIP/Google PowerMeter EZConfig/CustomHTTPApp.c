/*********************************************************************
 *
 *  Application to Demo HTTP2 Server
 *  Support for HTTP2 module in Microchip TCP/IP Stack
 *	 -Implements the application
 *	 -Reference: RFC 1002
 *
 *********************************************************************
 * FileName:        CustomHTTPApp.c
 * Dependencies:    TCP/IP stack
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
#define __CUSTOMHTTPAPP_C

#include "TCPIPConfig.h"

#if defined(STACK_USE_HTTP2_SERVER)

#include "TCPIP Stack/TCPIP.h"
#include "MainDemo.h"		// Needed for SaveAppConfig() prototype
#include "ginsu.h"
#include <ctype.h>

/****************************************************************************
  Section:
	Function Prototypes and Memory Globalizers
  ***************************************************************************/
#if defined(HTTP_USE_POST)

    static HTTP_IO_RESULT HTTPPostAuthInfo(void);
    static HTTP_IO_RESULT HTTPPostAuthenticate(void);
#endif

#if defined(STACK_USE_EZ_CONFIG)
	static HTTP_IO_RESULT HTTPPostWifiConfig(void);
#endif
    
static HTTP_IO_RESULT HTTPDeactivateDevice (void);
BOOL ConvertASCIIHexToBinary(INT8 *p_ascii, UINT16 *p_binary);
UINT8 HexToBin(UINT8 hexChar);
BOOL convertAsciiToHexInPlace( INT8 *p_string, UINT8 expectedHexBinSize );


// Sticky status message variable.
// This is used to indicated whether or not the previous POST operation was
// successful.  The application uses these to store status messages when a
// POST operation redirects.  This lets the application provide status messages
// after a redirect, when connection instance data has already been lost.
static BOOL lastSuccess = FALSE;

// Stick status message variable.  See lastSuccess for details.
static BOOL lastFailure = FALSE;

// First fragment of the activation URL.  Continues until manufacturer name is required.
static ROM char gActivationString1[]  = "https://www.google.com/powermeter/device/activate?mfg=";
// Second fragment of the activation URL.  Continues until model name is required.
static ROM char gActivationString2[]  = "&model=";
// Third fragment of the activation URL.  Continues until device ID is required.
static ROM char gActivationString3[]  = "&did=";
// Fourth fragment of the activation URL.  Continues until the number of cumulative variables is required.
static ROM char gActivationString4[]  = "&cvars=";
// Fifth fragment of the activation URL.  Continues until the return URL is required.
static ROM char gActivationString5[]  = "&rurl=http://";
// Sixth fragment of the activation URL.  Continues until the security nonce is required.  Contains the end of the return URL.
static ROM char gActivationString6[]  = "/return.htm&snonce=";

// First fragment of the activation confirmation URL.  Use gActivationString2 and gActivationString3 as the second and third fragments.
static ROM char gActivationConfirm[] = "https://www.google.com/powermeter/device/finish?mfg=";

extern POWER_METER_PREFERENCES gPowerMeterPreferences;
// bss descriptor fetched from on-chip
static tWFScanResult bssDesc;
static BOOL bssDescIsValid = FALSE;

// This is copied from the WiFi Console Message file
// so we don't have to include console functionality
/*****************************************************************************
 * FUNCTION: ConvertASCIIHexToBinary
 *
 * RETURNS: TRUE if conversion successful, else FALSE
 *
 * PARAMS:  p_ascii   -- ascii string to be converted
 *          p_binary  -- binary value if conversion successful
 *
 * NOTES:   Converts an input ascii hex string to binary value (up to 32-bit value)
 *****************************************************************************/
BOOL ConvertASCIIHexToBinary(INT8 *p_ascii, UINT16 *p_binary)
{
    INT8  i;
    UINT32 multiplier = 1;

    *p_binary = 0;

    // not allowed to have a string of more than 4 nibbles
    if (strlen((char*)p_ascii) > 8u)
    {
        return FALSE;
    }

    // first, ensure all characters are a hex digit
    for (i = (UINT8)strlen((char *)p_ascii) - 1; i >= 0 ; --i)
    {
        if (!isxdigit(p_ascii[i]))
        {
            return FALSE;
        }
        *p_binary += multiplier * HexToBin(p_ascii[i]);
        multiplier *= 16;
    }

    return TRUE;
}

/*****************************************************************************
 * FUNCTION: HexToBin
 *
 * RETURNS: binary value associated with ASCII hex input value
 *
 * PARAMS:  hexChar -- ASCII hex character
 *
 * NOTES:   Converts an input ascii hex character to its binary value.  Function
 *          does not error check; it assumes only hex characters are passed in.
 *****************************************************************************/
UINT8 HexToBin(UINT8 hexChar)
{
    if ((hexChar >= 'a') && (hexChar <= 'f'))
    {
        return (0x0a + (hexChar - 'a'));
    }
    else if ((hexChar >= 'A') && (hexChar <= 'F'))
    {
        return (0x0a + (hexChar - 'A'));
    }
    else //  ((hexChar >= '0') && (hexChar <= '9'))
    {
        return (0x00 + (hexChar - '0'));
    }

}

BOOL convertAsciiToHexInPlace( INT8 *p_string, UINT8 expectedHexBinSize )
{
    INT8  ascii_buffer[3];
    UINT8  hex_binary_index = 0;
    INT8  *hex_string_start = p_string;
    UINT16 hex_buffer = 0;

    /* gobble up any hex prefix */
    if ( memcmppgm2ram (hex_string_start, (const ROM FAR char*) "0x", 2) == 0 )
         hex_string_start+=2;

   if ( strlen( (char *) hex_string_start) != (expectedHexBinSize*2) )
      return FALSE;

    while ( hex_binary_index < expectedHexBinSize )
    {

      memcpy ( ascii_buffer, (const char*) hex_string_start, 2 );
      ascii_buffer[2] = '\0';

      /* convert the hex string to a machine hex value */
      if ( !ConvertASCIIHexToBinary( ascii_buffer,&hex_buffer) )
        return FALSE;

      p_string[hex_binary_index++] = (UINT8) hex_buffer;

      hex_string_start +=2;

    }
    return TRUE;
}

/****************************************************************************
  Section:
	Authorization Handlers
  ***************************************************************************/

/*****************************************************************************
  Function:
	BYTE HTTPNeedsAuth(BYTE* cFile)

  Internal:
  	See documentation in the TCP/IP Stack API or HTTP2.h for details.
  ***************************************************************************/
#if defined(HTTP_USE_AUTHENTICATION)
BYTE HTTPNeedsAuth(BYTE* cFile)
{
	#if defined(HTTP_MPFS_UPLOAD_REQUIRES_AUTH)
	if(memcmppgm2ram(cFile, (ROM void*)"mpfsupload", 10) == 0)
		return 0x00;
	#endif

	// You can match additional strings here to password protect other files.
	// You could switch this and exclude files from authentication.
	// You could also always return 0x00 to require auth for all files.
	// You can return different values (0x00 to 0x79) to track "realms" for below.

	return 0x80;			// No authentication required
}
#endif

/*****************************************************************************
  Function:
	BYTE HTTPCheckAuth(BYTE* cUser, BYTE* cPass)

  Internal:
  	See documentation in the TCP/IP Stack API or HTTP2.h for details.
  ***************************************************************************/
#if defined(HTTP_USE_AUTHENTICATION)
BYTE HTTPCheckAuth(BYTE* cUser, BYTE* cPass)
{
	if(strcmppgm2ram((char *)cUser,(ROM char *)"admin") == 0
		&& strcmppgm2ram((char *)cPass, (ROM char *)"microchip") == 0)
		return 0x80;		// We accept this combination
	
	// You can add additional user/pass combos here.
	// If you return specific "realm" values above, you can base this 
	//   decision on what specific file or folder is being accessed.
	// You could return different values (0x80 to 0xff) to indicate 
	//   various users or groups, and base future processing decisions
	//   in HTTPExecuteGet/Post or HTTPPrint callbacks on this value.
	
	return 0x00;			// Provided user/pass is invalid
}
#endif

/****************************************************************************
  Section:
	GET Form Handlers
  ***************************************************************************/
  
/*****************************************************************************
  Function:
	HTTP_IO_RESULT HTTPExecuteGet(void)
	
  Internal:
  	See documentation in the TCP/IP Stack API or HTTP2.h for details.
  ***************************************************************************/
HTTP_IO_RESULT HTTPExecuteGet(void)
{
	BYTE filename[20];
    BYTE * ptr, *ptr1;

	BYTE bssIdx;
	WORD_VAL bssIdxStr;

	// Load the file name
	// Make sure BYTE filename[] above is large enough for your longest name
	MPFSGetFilename(curHTTP.file, filename, 20);
	if(!memcmppgm2ram(filename, "index.htm", 9))
    {
        if (CFGCXT.isWifiDoneConfigure)
        {
    		strcpypgm2ram((char*)curHTTP.data, (ROM void*)"/info.htm");
    		curHTTP.httpStatus = HTTP_REDIRECT;
        }
        else
        {
    		strcpypgm2ram((char*)curHTTP.data, (ROM void*)"/configure.htm");
    		curHTTP.httpStatus = HTTP_REDIRECT;
        }
    }
	else if(!memcmppgm2ram(filename, "activated.htm", 14))
	{
		ptr = HTTPGetROMArg(curHTTP.data, (ROM BYTE *)"activate_button");

        if (*ptr == 'D')
            return HTTPDeactivateDevice();
        else if (*ptr == 'R')
            return HTTPPostAuthenticate();
        else if (*ptr == 'T')
        {
            if (gPowerMeterPreferences.send_status)
                gPowerMeterPreferences.send_status = FALSE;
            else
                gPowerMeterPreferences.send_status = TRUE;
            SaveNVMemContents();
        }
    }
    else if (!memcmppgm2ram(filename, "terms.htm", 9))
    {
        // This section will enable automatic redirection.  The "Sample User Page" link
        // actually links to /terms.htm?, which will trigger a GET.  We can then check
        // the auth path and token to determine if the device has been authenticated.
        // If it has, we can assume the user has accepted the terms and just skip to
        // the Activated Device page.
        if (*(gPowerMeterPreferences.auth_token) && *(gPowerMeterPreferences.auth_token))
        {
    		strcpypgm2ram((char*)curHTTP.data, (ROM void*)"/activated.htm");
    		curHTTP.httpStatus = HTTP_REDIRECT;
        }
    }
	else if(!memcmppgm2ram(filename, "scan.cgi", 9))
	{
		ptr = HTTPGetROMArg(curHTTP.data, (ROM BYTE *)"scan");
		ptr1 = HTTPGetROMArg(curHTTP.data, (ROM BYTE *)"getBss");

		if ((ptr != NULL) && (ptr1 == NULL))
		{
			bssDescIsValid = FALSE;
			// scan request
			if (WFStartScan() == WF_SUCCESS)
			{
				SCAN_SET_DISPLAY(SCANCXT.scanState);
				SCANCXT.displayIdx = 0;
			}
		}
		else if ((ptr == NULL) && (ptr1 != NULL))
		{
			// getBss request
			// use the value to get the nth bss stored on chip
			bssDescIsValid = FALSE;
			bssIdxStr.v[1] = *ptr1;
			bssIdxStr.v[0] = *(ptr1+1);	
			bssIdx = hexatob(bssIdxStr);
			WFRetrieveScanResult(bssIdx, &bssDesc);

			bssDescIsValid = TRUE;
		}
		else
		{
			// impossible to get here
		}			  	
	}
	return HTTP_IO_DONE;
}


/****************************************************************************
  Section:
	POST Form Handlers
  ***************************************************************************/
#if defined(HTTP_USE_POST)

/*****************************************************************************
  Function:
	HTTP_IO_RESULT HTTPExecutePost(void)
	
  Internal:
  	See documentation in the TCP/IP Stack API or HTTP2.h for details.
  ***************************************************************************/
HTTP_IO_RESULT HTTPExecutePost(void)
{
	// Resolve which function to use and pass along
	BYTE filename[20];
	
	// Load the file name
	// Make sure BYTE filename[] above is large enough for your longest name
	MPFSGetFilename(curHTTP.file, filename, sizeof(filename));

    if(!memcmppgm2ram(filename, "return.htm", 11))
		return HTTPPostAuthInfo();

    if(!memcmppgm2ram(filename, "terms.htm", 10))
		return HTTPPostAuthenticate();

#if defined(STACK_USE_EZ_CONFIG)
	if(!memcmppgm2ram(filename, "configure.htm", 14))
		return HTTPPostWifiConfig();
#endif


	return HTTP_IO_DONE;
}


/*****************************************************************************
  Function:
	static HTTP_IO_RESULT HTTPPostWifiConfig(void)

  Summary:
	Processes the wifi config data

  Description:
	Accepts wireless configuration data from the www site and saves them to a
	structure to be applied by the ZG configuration manager.

    The following configurations are possible:
         i) Mode: adhoc or infrastructure
        ii) Security:
               - None
               - WPA/WPA2 passphrase
               - WPA/WPA2 pre-calculated key
               - WEP 64-bit
               - WEP 128-bit
       iii) Key material
	
	If an error occurs, such as data is invalid they will be redirected to a page
    informing the user of such results.  

    NOTE: This code for modified originally from HTTPPostWifiConfig as distributed
          by Microchip.

  Precondition:
	None

  Parameters:
	None

  Return Values:
  	HTTP_IO_DONE - all parameters have been processed
  	HTTP_IO_NEED_DATA - data needed by this function has not yet arrived
  ***************************************************************************/
#if defined(STACK_USE_EZ_CONFIG)
static HTTP_IO_RESULT HTTPPostWifiConfig(void)
{
	// Check to see if the browser is attempting to submit more data than we 
	// can parse at once.  This function needs to receive all updated 
	// parameters and validate them all before committing them to memory so that
	// orphaned configuration parameters do not get written (for example, if a 
	// static IP address is given, but the subnet mask fails parsing, we 
	// should not use the static IP address).  Everything needs to be processed 
	// in a single transaction.  If this is impossible, fail and notify the user.
	// As a web devloper, if you add parameters to AppConfig and run into this 
	// problem, you could fix this by to splitting your update web page into two 
	// seperate web pages (causing two transactional writes).  Alternatively, 
	// you could fix it by storing a static shadow copy of AppConfig someplace 
	// in memory and using it instead of newAppConfig.  Lastly, you could 
	// increase the TCP RX FIFO size for the HTTP server.  This will allow more 
	// data to be POSTed by the web browser before hitting this limit.

    UINT8 ConnectionProfileID;
    UINT8 ConnectionState;
    UINT8 ssidLen;

    WF_CMGetConnectionState(&ConnectionState, &ConnectionProfileID);

	if(curHTTP.byteCount > TCPIsGetReady(sktHTTP) + TCPGetRxFIFOFree(sktHTTP))
		goto ConfigFailure;
	
	// Ensure that all data is waiting to be parsed.  If not, keep waiting for 
	// all of it to arrive.
	if(TCPIsGetReady(sktHTTP) < curHTTP.byteCount)
		return HTTP_IO_NEED_DATA;
	
	// Read all browser POST data
	while(curHTTP.byteCount)
	{
		// Read a form field name
		if(HTTPReadPostName(curHTTP.data, 6) != HTTP_READ_OK)
			goto ConfigFailure;
			
		// Read a form field value
		if(HTTPReadPostValue(curHTTP.data + 6, sizeof(curHTTP.data)-6-2) != HTTP_READ_OK)
			goto ConfigFailure;
			
		// Parse the value that was read
		if(!strcmppgm2ram((char*)curHTTP.data, (ROM char*)"sec"))
		{// Read security type
            char   security_type[7];

            if (strlen((char*)(curHTTP.data+6)) > 6) /* Sanity check */
                goto ConfigFailure;

            memcpy(security_type, (void*)(curHTTP.data+6), strlen((char*)(curHTTP.data+6)));
            security_type[strlen((char*)(curHTTP.data+6))] = 0; /* Terminate string */

		    if(!strcmppgm2ram((char*)security_type, (ROM char*)"no"))
            {
                CFGCXT.security = WF_SECURITY_OPEN;
                //putrsUART((ROM char*)"\r\nSelect open on www! ");
            }
		    else if(!strcmppgm2ram((char*)security_type, (ROM char*)"wpa")) 
            {
                CFGCXT.security = WF_SECURITY_WPA_AUTO_WITH_PASS_PHRASE;
                //putrsUART((ROM char*)"\r\nWPA passphrase! ");
            }
		    else if(!strcmppgm2ram((char*)security_type, (ROM char*)"calc")) 
            {   /* Pre-calculated key */
                CFGCXT.security = WF_SECURITY_WPA_AUTO_WITH_KEY;
            }
		    else if(!strcmppgm2ram((char*)security_type, (ROM char*)"wep40"))
            {
                CFGCXT.security = WF_SECURITY_WEP_40;
                //putrsUART((ROM char*)"\r\nSelect wep64 on www! ");
            }
		    else if(!strcmppgm2ram((char*)security_type, (ROM char*)"wep104"))
            {
                CFGCXT.security = WF_SECURITY_WEP_104;
                //putrsUART((ROM char*)"\r\nSelect wep128 on www! ");
            }
		    else 
            {   //Security type no good  :-(
				//memset(LCDText, ' ', 32);
                //strcpy((char*)LCDText, (char*)security_type);
                //LCDUpdate();
                //putrsUART((ROM char*)"\r\nUnknown key type on www! ");
                goto ConfigFailure;
            }				
		}
		else if(!strcmppgm2ram((char*)curHTTP.data, (ROM char*)"key"))
		{// Read new key material
            BYTE key_size = 0, ascii_key = 0;

            switch ((BYTE)CFGCXT.security) {
                case WF_SECURITY_OPEN:   //keep compiler happy, nothing to do here!
                    break;
                case WF_SECURITY_WPA_AUTO_WITH_PASS_PHRASE:  //wpa passphrase
                    //putrsUART((ROM char*)"\r\nPassphrase type of key! ");
                    ascii_key = 1;
                    key_size = strlen((char *)(curHTTP.data+6));
                    //between 8-63 characters, passphrase
                    if ((key_size < 8 ) || (key_size > 63))
                          goto ConfigFailure;
                    break;
                case WF_SECURITY_WPA_AUTO_WITH_KEY: //wpa pre-calculated key!!!
                    key_size = 64;
				//memset(LCDText, ' ', 32);
                //strcpy((char*)LCDText, (char*)(curHTTP.data+6));
                //LCDUpdate();
                    break;
                case WF_SECURITY_WEP_40:
                    key_size = 10; /* Assume hex size */
                    if (strlen((char *)(curHTTP.data+6)) == 5) {
                        key_size = 5;  /* ASCII key support */
                        ascii_key = 1;
                     } 
                    CFGCXT.defaultWepKey = 0; /* Example uses only key idx 0 (sometimes called 1) */
                    break;
                case WF_SECURITY_WEP_104:
                    key_size = 26; /* Assume hex size */
                    if (strlen((char *)(curHTTP.data+6)) == 13) {
                        key_size = 13;  /* ASCII key support */
                        ascii_key = 1;
                    } 
                    CFGCXT.defaultWepKey = 0; /* Example uses only key idx 0 (sometimes called 1) */
                    break;
            }
			if (strlen((char *)(curHTTP.data+6)) != key_size) {
                //putrsUART((ROM char*)"\r\nIncomplete key received! ");
                goto ConfigFailure;
            }
            memcpy(CFGCXT.key, (void*)(curHTTP.data+6), key_size);
            CFGCXT.key[key_size] = 0; /* terminate string */
            if (!ascii_key) {
                //if ((cfg.security == sec_wep64) || (cfg.security == sec_wep128))
                    key_size /= 2;
                if (!convertAsciiToHexInPlace((INT8 *)&CFGCXT.key[0], key_size)) {
                    //putrsUART((ROM char*)"\r\nFailed to convert ASCII to hex! ");
                    goto ConfigFailure;
                }
            }
		}
		else if(!strcmppgm2ram((char*)curHTTP.data, (ROM char*)"ssid"))
		{// Get new ssid and make sure it is valid
			if(strlen((char*)(curHTTP.data+6)) < 33u)
			{
                memcpy(CFGCXT.ssid, (void*)(curHTTP.data+6), strlen((char*)(curHTTP.data+6)));
                CFGCXT.ssid[strlen((char*)(curHTTP.data+6))] = 0; /* Terminate string */

                /* save current profile SSID for displaying later */
                WF_CPGetSsid(ConnectionProfileID, (UINT8*)&CFGCXT.prevSSID, &ssidLen);
                CFGCXT.prevSSID[ssidLen] = 0;
			}
			else
			{   //Invalid SSID... fail :-(
				goto ConfigFailure;
			}
		}
		else if(!strcmppgm2ram((char*)curHTTP.data, (ROM char*)"wlan"))
		{// Get the wlan mode: adhoc or infrastructure
            char mode[6];

            if (strlen((char*)(curHTTP.data+6)) > 5) /* Sanity check */
                goto ConfigFailure;

            memcpy(mode, (void*)(curHTTP.data+6), strlen((char*)(curHTTP.data+6)));
            mode[strlen((char*)(curHTTP.data+6))] = 0; /* Terminate string */
		    if(!strcmppgm2ram((char*)mode, (ROM char*)"infra"))
            {
                CFGCXT.type = WF_INFRASTRUCTURE;
            }
		    else if(!strcmppgm2ram((char*)mode, (ROM char*)"adhoc")) 
            {
                //putrsUART((ROM char*)"\r\nSetting mode to adhoc! ");
                CFGCXT.type = WF_ADHOC;

                // always setup adhoc to attempt to connect first, then start
                WF_CPSetAdHocBehavior(ConnectionProfileID, WF_ADHOC_CONNECT_THEN_START);
            }
		    else 
            {   //Mode type no good  :-(
				//memset(LCDText, ' ', 32);
                //putrsUART((ROM char*)"\r\nUnknown mode type on www! ");
                //strcpy((char*)LCDText, (char*)mode);
                //LCDUpdate();
                goto ConfigFailure;
            }

            // save old WLAN mode
            WF_CPGetNetworkType(ConnectionProfileID, &CFGCXT.prevWLAN);				
		}
	}

    /* Check if WPA hasn't been selected with adhoc, if it has we choke! */
    if ((CFGCXT.type == WF_ADHOC) &&
      ((CFGCXT.security == WF_SECURITY_WPA_AUTO_WITH_PASS_PHRASE) || (CFGCXT.security == WF_SECURITY_WPA_AUTO_WITH_KEY)))
        goto ConfigFailure;

	/* 
     * All parsing complete!  If we have got to here all data has been validated and
     * We can handle what is necessary to start the reconfigure process of the WiFi device
     */
#if defined ( EZ_CONFIG_STORE )
    /* Copy wifi cfg data to be committed to NVM */
    memcpy(AppConfig.MySSID, CFGCXT.ssid, strlen((char*)(CFGCXT.ssid)));
    AppConfig.SsidLength = strlen((char*)(CFGCXT.ssid));
    /* Going to set security type */
    AppConfig.SecurityMode = CFGCXT.security; 
    /* Going to save the key, if required */
    if (CFGCXT.security != WF_SECURITY_OPEN) {
        BYTE  key_size =0;

        switch ((BYTE)CFGCXT.security) {
            case WF_SECURITY_WPA_AUTO_WITH_PASS_PHRASE:  //wpa passphrase
                key_size = strlen((char*)(CFGCXT.key)); //ascii so use strlen
                break;
            case WF_SECURITY_WPA_AUTO_WITH_KEY: //wpa pre-calculated key!!!
                key_size = 32;
                break;
            case WF_SECURITY_WEP_40:
                key_size = 5;
                break;
            case WF_SECURITY_WEP_104:
                key_size = 13;
                break;

        }
        memcpy(AppConfig.SecurityKey, CFGCXT.key, key_size);
        AppConfig.SecurityKey[strlen((char*)(CFGCXT.key))] = 0;
    }
    /* Going to save the network type */
    AppConfig.networkType = CFGCXT.type;

    AppConfig.dataValid = 1; /* Validate wifi configuration */

#endif // EZ_CONFIG_STORE
	
	// Set the board to reboot and display reconnecting information
	strcpypgm2ram((char*)curHTTP.data, (ROM char*)"/reconnect.htm");
	curHTTP.httpStatus = HTTP_REDIRECT;	

    /*
     * Set state here to inform that the Wifi device has config data and it is ready
     * to be acted upon.
     */
    //putrsUART((ROM char*)"\r\nFLaggin to start config change! ");
	WF_START_EASY_CONFIG();

	return HTTP_IO_DONE;


ConfigFailure:
	lastFailure = TRUE;
	strcpypgm2ram((char*)curHTTP.data, (ROM char*)"/error.htm");
	curHTTP.httpStatus = HTTP_REDIRECT;		

	return HTTP_IO_DONE;
}
#endif	

/*****************************************************************************
  Function:
    static HTTP_IO_RESULT HTTPPostAuthenticate(void)

  Summary:
    Redirects a browser to the activation URL on Google's site.

  Description:
    This function will load the activation URL into the curHTTP.data buffer
    and then queue up an HTTP redirect action for the browser that caused
    this function to be called.  This will cause the activation information
    for the device to be submitted to Google.

  Precondition:
    None

  Parameters:
    None

  Return Values:
    HTTP_IO_DONE - the parameter has been found and saved
    HTTP_IO_WAITING - the function is pausing to continue later
    HTTP_IO_NEED_DATA - data needed by this function has not yet arrived
  ***************************************************************************/

static HTTP_IO_RESULT HTTPPostAuthenticate(void)
{
    unsigned int i = 0;
    unsigned char j,k;
    unsigned long snonce = LFSRRand();
    char buffer[9];

    // Check to see if the Status update checkbox was checked
    if (curHTTP.byteCount == 0)
    {
        // There were no parameters avaiable (checkbox was unchecked)
        gPowerMeterPreferences.send_status = FALSE;
    }
    else
    {
        // A parameter was available (checkbox was checked)
        gPowerMeterPreferences.send_status = TRUE;
    }
    SaveNVMemContents();

    // Write the first activation string fragment to curHTTP.data
	strcpypgm2ram((char*)curHTTP.data, (ROM void*)gActivationString1);
    i += strlen (gActivationString1);

    // Write the manufacturer ID to curHTTP.data
	strcpypgm2ram((char*)curHTTP.data + i, (ROM void*)DEVICE_MANUFACTURER);
    i += strlen (DEVICE_MANUFACTURER);

    // Write the second activation string fragment to curHTTP.data
	strcpypgm2ram((char*)curHTTP.data + i, (ROM void*)gActivationString2);
    i += strlen (gActivationString2);

    // Write the device model to curHTTP_data
	strcpypgm2ram((char*)curHTTP.data + i, (ROM void*)DEVICE_MODEL);
    i += strlen (DEVICE_MODEL);

    // Write the third activation string fragment to curHTTP.data
	strcpypgm2ram((char*)curHTTP.data + i, (ROM void*)gActivationString3);
    i += strlen (gActivationString3);

    // Write the device ID to curHTTP.data (use the MAC address, begin with 'm')
    *(curHTTP.data + i) = 'm';
    i++;
    for (j = 0; j < 6; j++)
    {
        *(curHTTP.data + i + j + j) = btohexa_high (AppConfig.MyMACAddr.v[j]);
        *(curHTTP.data + i + j + j + 1) = btohexa_low (AppConfig.MyMACAddr.v[j]);
    }
    i += 12;

    // Write the fourth activation string fragment to curHTTP.data
	strcpypgm2ram((char*)curHTTP.data + i, (ROM void*)gActivationString4);
    i += strlen (gActivationString4);

    // Write the desired number of sensors to curHTTP_data
    // Assume sensors are limited to 9 max to save code space
    *(curHTTP.data + i) = DEVICE_NUM_SENSORS + '0';
    i++;;

    // Write the fifth activation string fragment to curHTTP.data
	strcpypgm2ram((char*)curHTTP.data + i, (ROM void*)gActivationString5);
    i += strlen (gActivationString5);

    // Write the return URL to curHTTP.data
	for(j = 0; j < sizeof(IP_ADDR); j++)
	{
	    uitoa((WORD)AppConfig.MyIPAddr.v[j], (BYTE *)buffer);
        k = strlen (buffer);
        if (j != sizeof(IP_ADDR)-1)
        {
            buffer[k] = '.';
            buffer [++k] = 0;
        }
        memcpy ((char *)(curHTTP.data + i), buffer, k);
        i += k;
	}

    // Write the sixth activation string fragment to curHTTP.data
	strcpypgm2ram((char*)curHTTP.data + i, (ROM void*)gActivationString6);
    i += strlen (gActivationString6);

    // Write the security nonce to curHTTP.data
    ultoa (snonce, (unsigned char *)buffer);
    memcpy ((char*)(curHTTP.data + i), buffer, strlen (buffer));
    gPowerMeterPreferences.snonce = snonce;

    // Redirect the browser to the activation URL
	curHTTP.httpStatus = HTTP_REDIRECT;
    return HTTP_IO_DONE;
}


/*****************************************************************************
  Function:
	static HTTP_IO_RESULT HTTPDeactivateDevice(void)

  Summary:
    Deactivates a device.

  Description:
    This function will invalidate the token value in the Google
    PowerMeter preferences structure.  This will prevent the device from
    uploading data.  This function will not remove the device from the
    Google PowerMeter Gadget on the user's iGoogle page.

  Precondition:
	None

  Parameters:
	None

  Return Values:
  	HTTP_IO_DONE - the parameter has been found and saved
  ***************************************************************************/

static HTTP_IO_RESULT HTTPDeactivateDevice (void)
{
    BYTE i;

    for (i = 0; i < sizeof(gPowerMeterPreferences.auth_token); i++)
        gPowerMeterPreferences.auth_token[i] = 0x00;

    for (i = 0; i < sizeof(gPowerMeterPreferences.auth_path); i++)
        gPowerMeterPreferences.auth_path[i] = 0x00;

    for (i = 0; i < sizeof(gPowerMeterPreferences.pKeyHashes[0]); i++)
    {
        gPowerMeterPreferences.pKeyHashes[0][i] = 0x00;
        gPowerMeterPreferences.pKeyHashes[1][i] = 0x00;
        gPowerMeterPreferences.pKeyHashes[2][i] = 0x00;
    }

    SaveNVMemContents();

	strcpypgm2ram((char*)curHTTP.data, (ROM void*)"/deactivated.htm");
	curHTTP.httpStatus = HTTP_REDIRECT;
    return HTTP_IO_DONE;

}


/*****************************************************************************
  Function:
    static HTTP_IO_RESULT HTTPPostAuthInfo(void)

  Summary:
    Parses data from a post-activation POST message.

  Description:
    After activation, Google will redirect the browser back to the return
    URL provided to them with a message containing POST data.  This function
    will parse the data to check the security nonce, read the authentication
    token and path, and read the server certificate hashes.  If these values
    were received successfully, the function will load the URL that completes
    the activation process into curHTTP.data and then redirect the browser to
    that URL.

  Precondition:
    None

  Parameters:
    None

  Return Values:
    HTTP_IO_DONE - the parameter has been found and saved
    HTTP_IO_WAITING - the function is pausing to continue later
    HTTP_IO_NEED_DATA - data needed by this function has not yet arrived
  ***************************************************************************/
static HTTP_IO_RESULT HTTPPostAuthInfo(void)
{
    BYTE * ptr;
    BYTE i = 0;
    BYTE j;
    BYTE k;

    #define SM_GOOG_AUTH_READ_NAME      (0u)
    #define SM_GOOG_AUTH_READ_VALUE     (1u)

    switch (curHTTP.smPost)
    {
        case SM_GOOG_AUTH_READ_NAME:
            // If all parameters have been read, end
            if (curHTTP.byteCount == 0u)
            {
                SaveNVMemContents();
                if (*(gPowerMeterPreferences.auth_token) && *(gPowerMeterPreferences.auth_path))
                {
                    // Write the first activation confirmation string fragment
                	strcpypgm2ram((char*)curHTTP.data, (ROM void*)gActivationConfirm);
                    i += strlen (gActivationConfirm);

                    // Write the manufacturer ID to curHTTP.data
                	strcpypgm2ram((char*)curHTTP.data + i, (ROM void*)DEVICE_MANUFACTURER);
                    i += strlen (DEVICE_MANUFACTURER);

                    // Write the second activation string fragment to curHTTP.data
                	strcpypgm2ram((char*)curHTTP.data + i, (ROM void*)gActivationString2);
                    i += strlen (gActivationString2);

                    // Write the device model to curHTTP_data
                	strcpypgm2ram((char*)curHTTP.data + i, (ROM void*)DEVICE_MODEL);
                    i += strlen (DEVICE_MODEL);

                    // Write the third activation string fragment to curHTTP.data
                	strcpypgm2ram((char*)curHTTP.data + i, (ROM void*)gActivationString3);
                    i += strlen (gActivationString3);

                    *(curHTTP.data + i) = 'm';
                    i++;
                    for (j = 0; j < 6; j++)
                    {
                        *(curHTTP.data + i + j + j) = btohexa_high (AppConfig.MyMACAddr.v[j]);
                        *(curHTTP.data + i + j + j + 1) = btohexa_low (AppConfig.MyMACAddr.v[j]);
                    }
                    i += 12;
                    *(curHTTP.data + i) = 0;
    	    		curHTTP.httpStatus = HTTP_REDIRECT;
                }
                return HTTP_IO_DONE;
            }

            // Try to read a POST name
            if (HTTPReadPostName(curHTTP.data, sizeof(curHTTP.data) -2) == HTTP_READ_INCOMPLETE)
                return HTTP_IO_NEED_DATA;

            curHTTP.smPost = SM_GOOG_AUTH_READ_VALUE;

        case SM_GOOG_AUTH_READ_VALUE:
            if (HTTPReadPostValue(curHTTP.data + 6, sizeof(curHTTP.data)-2-6) == HTTP_READ_INCOMPLETE)
                return HTTP_IO_NEED_DATA;

            ptr = curHTTP.data + 6;

            // Reset the state machine to read the next name
            curHTTP.smPost = SM_GOOG_AUTH_READ_NAME;

            if (!strncmp ((char *)curHTTP.data, (ROM char *)"snonce", 6))
            {
                if (gPowerMeterPreferences.snonce != atol ((const char *)ptr))
                {
                    gPowerMeterPreferences.auth_token[0] = 0;
                    gPowerMeterPreferences.auth_path[0] = 0;
                    SaveNVMemContents();
                    return HTTP_IO_DONE;
                }
            }
            else if (!strncmp ((char *)curHTTP.data, (ROM char *)"hash", 4))
            {
                BYTE result[20];
                WORD_VAL w;
                j = 0;
                k = 0;
                do
                {
                    while (*(ptr + j) != ',' && *(ptr + j) != 0x00)
                        j++;
                    if (j == 0 || j % 2 || j > 40)
                        break;
                    j /= 2;
                    for (i = 0; i < j; i++)
                    {
                        w.v[1] = *ptr;
                        w.v[0] = *(ptr + 1);
                        ptr += 2;
                        result[i] = hexatob(w);
                    }
                    memcpy (gPowerMeterPreferences.pKeyHashes[k++], result, j);
                } while (*ptr++ != 0x00 && k < 3);

                while (k < 3)
                    gPowerMeterPreferences.pKeyHashes[k++][0] = 0;
            }
            else if (!strncmp ((char *)curHTTP.data, (ROM char *)"token", 5))
            {
                i = 0;
                while (*(ptr + i) != 0x00)
                {
                    gPowerMeterPreferences.auth_token[i] = *(ptr + i);
                    i++;
                }
                gPowerMeterPreferences.auth_token[i] = 0x00;
            }
            else if (!strncmp ((char *)curHTTP.data, (ROM char *)"path", 4))
            {
                i = 0;
                while (*(ptr + i) != 0x00)
                {
                    gPowerMeterPreferences.auth_path[i] = *(ptr + i);
                    i++;
                }
                gPowerMeterPreferences.auth_path[i] = 0x00;
            }

            break;
    }

    return HTTP_IO_WAITING;
}

#endif //(use_post)


/****************************************************************************
  Section:
	Dynamic Variable Callback Functions
  ***************************************************************************/

/*****************************************************************************
  Function:
	void HTTPPrint_varname(void)
	
  Internal:
  	See documentation in the TCP/IP Stack API or HTTP2.h for details.
  ***************************************************************************/

void HTTPPrint_pot(void)
{
	BYTE AN0String[8];
	WORD ADval;

#if defined(__18CXX)
    // Wait until A/D conversion is done
    ADCON0bits.GO = 1;
    while(ADCON0bits.GO);

    // Convert 10-bit value into ASCII string
    ADval = (WORD)ADRES;
    //ADval *= (WORD)10;
    //ADval /= (WORD)102;
    uitoa(ADval, AN0String);
#else
	ADval = (WORD)ADC1BUF0;
	//ADval *= (WORD)10;
	//ADval /= (WORD)102;
    uitoa(ADval, (BYTE*)AN0String);
#endif

   	TCPPutString(sktHTTP, AN0String);
}

extern APP_CONFIG AppConfig;

void HTTPPrintIP(IP_ADDR ip)
{
	BYTE digits[4];
	BYTE i;
	
	for(i = 0; i < 4u; i++)
	{
		if(i)
			TCPPut(sktHTTP, '.');
		uitoa(ip.v[i], digits);
		TCPPutString(sktHTTP, digits);
	}
}

void HTTPPrint_config_hostname(void)
{
	TCPPutString(sktHTTP, AppConfig.NetBIOSName);
	return;
}

void HTTPPrint_ddns_user(void)
{
	#if defined(STACK_USE_DYNAMICDNS_CLIENT)
	if(DDNSClient.ROMPointers.Username || !DDNSClient.Username.szRAM)
		return;
	if(curHTTP.callbackPos == 0x00u)
		curHTTP.callbackPos = (PTR_BASE)DDNSClient.Username.szRAM;
	curHTTP.callbackPos = (PTR_BASE)TCPPutString(sktHTTP, (BYTE*)(PTR_BASE)curHTTP.callbackPos);
	if(*(BYTE*)(PTR_BASE)curHTTP.callbackPos == '\0')
		curHTTP.callbackPos = 0x00;
	#endif
}

void HTTPPrint_ddns_pass(void)
{
	#if defined(STACK_USE_DYNAMICDNS_CLIENT)
	if(DDNSClient.ROMPointers.Password || !DDNSClient.Password.szRAM)
		return;
	if(curHTTP.callbackPos == 0x00u)
		curHTTP.callbackPos = (PTR_BASE)DDNSClient.Password.szRAM;
	curHTTP.callbackPos = (PTR_BASE)TCPPutString(sktHTTP, (BYTE*)(PTR_BASE)curHTTP.callbackPos);
	if(*(BYTE*)(PTR_BASE)curHTTP.callbackPos == '\0')
		curHTTP.callbackPos = 0x00;
	#endif
}

void HTTPPrint_ddns_host(void)
{
	#if defined(STACK_USE_DYNAMICDNS_CLIENT)
	if(DDNSClient.ROMPointers.Host || !DDNSClient.Host.szRAM)
		return;
	if(curHTTP.callbackPos == 0x00u)
		curHTTP.callbackPos = (PTR_BASE)DDNSClient.Host.szRAM;
	curHTTP.callbackPos = (PTR_BASE)TCPPutString(sktHTTP, (BYTE*)(PTR_BASE)curHTTP.callbackPos);
	if(*(BYTE*)(PTR_BASE)curHTTP.callbackPos == '\0')
		curHTTP.callbackPos = 0x00;
	#endif
}

extern ROM char * ROM ddnsServiceHosts[];
void HTTPPrint_ddns_service(WORD i)
{
	#if defined(STACK_USE_DYNAMICDNS_CLIENT)
	if(!DDNSClient.ROMPointers.UpdateServer || !DDNSClient.UpdateServer.szROM)
		return;
	if((ROM char*)DDNSClient.UpdateServer.szROM == ddnsServiceHosts[i])
		TCPPutROMString(sktHTTP, (ROM BYTE*)"selected");
	#endif
}


void HTTPPrint_ddns_status(void)
{
	#if defined(STACK_USE_DYNAMICDNS_CLIENT)
	DDNS_STATUS s;
	s = DDNSGetLastStatus();
	if(s == DDNS_STATUS_GOOD || s == DDNS_STATUS_UNCHANGED || s == DDNS_STATUS_NOCHG)
		TCPPutROMString(sktHTTP, (ROM BYTE*)"ok");
	else if(s == DDNS_STATUS_UNKNOWN)
		TCPPutROMString(sktHTTP, (ROM BYTE*)"unk");
	else
		TCPPutROMString(sktHTTP, (ROM BYTE*)"fail");
	#else
	TCPPutROMString(sktHTTP, (ROM BYTE*)"fail");
	#endif
}

void HTTPPrint_ddns_status_msg(void)
{
	if(TCPIsPutReady(sktHTTP) < 75u)
	{
		curHTTP.callbackPos = 0x01;
		return;
	}

	#if defined(STACK_USE_DYNAMICDNS_CLIENT)
	switch(DDNSGetLastStatus())
	{
		case DDNS_STATUS_GOOD:
		case DDNS_STATUS_NOCHG:
			TCPPutROMString(sktHTTP, (ROM BYTE*)"The last update was successful.");
			break;
		case DDNS_STATUS_UNCHANGED:
			TCPPutROMString(sktHTTP, (ROM BYTE*)"The IP has not changed since the last update.");
			break;
		case DDNS_STATUS_UPDATE_ERROR:
		case DDNS_STATUS_CHECKIP_ERROR:
			TCPPutROMString(sktHTTP, (ROM BYTE*)"Could not communicate with DDNS server.");
			break;
		case DDNS_STATUS_INVALID:
			TCPPutROMString(sktHTTP, (ROM BYTE*)"The current configuration is not valid.");
			break;
		case DDNS_STATUS_UNKNOWN:
			TCPPutROMString(sktHTTP, (ROM BYTE*)"The Dynamic DNS client is pending an update.");
			break;
		default:
			TCPPutROMString(sktHTTP, (ROM BYTE*)"An error occurred during the update.<br />The DDNS Client is suspended.");
			break;
	}
	#else
	TCPPutROMString(sktHTTP, (ROM BYTE*)"The Dynamic DNS Client is not enabled.");
	#endif

	curHTTP.callbackPos = 0x00;
}

void HTTPPrint_status_ok(void)
{
	if(lastSuccess)
		TCPPutROMString(sktHTTP, (ROM BYTE*)"block");
	else
		TCPPutROMString(sktHTTP, (ROM BYTE*)"none");
	lastSuccess = FALSE;
}

void HTTPPrint_status_fail(void)
{
	if(lastFailure)
		TCPPutROMString(sktHTTP, (ROM BYTE*)"block");
	else
		TCPPutROMString(sktHTTP, (ROM BYTE*)"none");
	lastFailure = FALSE;
}

void HTTPPrint_manu(void)
{
    WORD len;
    WORD len2;

    len = TCPIsPutReady (sktHTTP);
    len2 = strlen (DEVICE_MANUFACTURER);

    if (curHTTP.callbackPos == 0)
        curHTTP.callbackPos = len2;

    while (len && curHTTP.callbackPos)
    {
        len -= TCPPut(sktHTTP, *(DEVICE_MANUFACTURER + (len2 - curHTTP.callbackPos)));
        curHTTP.callbackPos--;
    }

	return;
}

void HTTPPrint_model(void)
{
    WORD len;
    WORD len2;

    len = TCPIsPutReady (sktHTTP);
    len2 = strlen (DEVICE_MODEL);

    if (curHTTP.callbackPos == 0)
        curHTTP.callbackPos = len2;

    while (len && curHTTP.callbackPos)
    {
        len -= TCPPut(sktHTTP, *(DEVICE_MODEL + (len2 - curHTTP.callbackPos)));
        curHTTP.callbackPos--;
    }
	return;
}

void HTTPPrint_devid(void)
{
    BYTE buffer[14];
    BYTE i;

    buffer[0] = 'm';
    for (i = 0; i < 6; i++)
    {
        buffer[i+i+1] = btohexa_high (AppConfig.MyMACAddr.v[i]);
        buffer[i+i+2] = btohexa_low (AppConfig.MyMACAddr.v[i]);
    }

    buffer[13] = 0;

    // You can put up to 16 chars at a time
	TCPPutString(sktHTTP, buffer);
	return;
}


void HTTPPrint_status(void)
{
    if (gPowerMeterPreferences.send_status)
        TCPPutROMString(sktHTTP, "TRUE");
    else
        TCPPutROMString(sktHTTP, "FALSE");
}

void HTTPPrint_scan(void)
{
	BYTE scanInProgressString[4];
	
	uitoa(IS_SCAN_IN_PROGRESS(SCANCXT.scanState), scanInProgressString);
	TCPPutString(sktHTTP, scanInProgressString);
}

void HTTPPrint_fwver(void)
{
	tWFDeviceInfo deviceInfo;
	BYTE fwVerString[8];
	
	WF_GetDeviceInfo(&deviceInfo);
	
	uitoa((deviceInfo.romVersion << 8) | deviceInfo.patchVersion, fwVerString);
	TCPPutString(sktHTTP, fwVerString);
}

void HTTPPrint_ssid(void)
{
	BYTE ssidString[33];
	BYTE ssidLength;
	
	BYTE connState;
	BYTE currCpId;
	
	WF_CMGetConnectionState(&connState, &currCpId);
	
	// we don't need to check the connection state as the only way this function
	// is called is from the webserver.  if the webserver is requesting this,
	// then you can infer that we should be connected to the network
	WF_CPGetSsid(currCpId, ssidString, &ssidLength);		
	
	TCPPutArray(sktHTTP, ssidString, ssidLength);
}	

void HTTPPrint_bssCount(void)
{
	BYTE bssCountString[4];
	
	uitoa(SCANCXT.numScanResults, bssCountString);
	TCPPutString(sktHTTP, bssCountString);
}

void HTTPPrint_valid(void)
{
	BYTE bssDescIsValidString[4];
	
	uitoa((BYTE)bssDescIsValid, bssDescIsValidString);
	TCPPutString(sktHTTP, bssDescIsValidString);
}	

void HTTPPrint_name(void)
{
	if (bssDescIsValid)
	{
		TCPPutString(sktHTTP, bssDesc.ssid);
	}
	else
	{
		TCPPutROMString(sktHTTP, (ROM BYTE *)"0");
	}		
}	

void HTTPPrint_privacy(void)
{
	BYTE security = (bssDesc.apConfig & 0xd0) >> 4;
	BYTE secString[4];
	
	if (bssDescIsValid)
	{
		uitoa(security, secString);
		TCPPutString(sktHTTP, secString);
	}
	else
	{
		TCPPutROMString(sktHTTP, (ROM BYTE*)"0");
	}	
}	

void HTTPPrint_wlan(void)
{
	BYTE bssTypeString[4];
	if (bssDescIsValid)
	{
		uitoa(bssDesc.bssType, bssTypeString);
		TCPPutString(sktHTTP, bssTypeString);
	}
	else
	{	
		TCPPutROMString(sktHTTP, (ROM BYTE*)"0");
	}	
}	

void HTTPPrint_strength(void)
{
	BYTE strVal;
	BYTE strString[4];
	
	if (bssDescIsValid)
	{
		if (bssDesc.rssi < 121)
		{
			strVal = 1;
		}
		else if (bssDesc.rssi < 141)
		{
			strVal = 2;
		}
		else if (bssDesc.rssi < 161)
		{
			strVal = 3;
		}
		else
		{
			strVal = 4;
		}
		
		uitoa(strVal, strString);
		TCPPutString(sktHTTP, strString);
	}
	else
	{				
		TCPPutROMString(sktHTTP, (ROM BYTE*)"0");
	}
}

void HTTPPrint_nextSSID(void)
{
    TCPPutString(sktHTTP, (BYTE*)CFGCXT.ssid);
}

void HTTPPrint_prevSSID(void)
{
    TCPPutString(sktHTTP, (BYTE*)CFGCXT.prevSSID);
}

void HTTPPrint_prevWLAN(void)
{
    if (CFGCXT.prevWLAN == WF_INFRASTRUCTURE)
    {
        TCPPutROMString(sktHTTP, (ROM BYTE*)"infrastructure (BSS)");
    }
    else
    {
        TCPPutROMString(sktHTTP, (ROM BYTE*)"adhoc (IBSS)");
    }
}

void HTTPPrint_nextWLAN(void)
{
    if (CFGCXT.type == WF_INFRASTRUCTURE)
    {
        TCPPutROMString(sktHTTP, (ROM BYTE*)"infrastructure (BSS)");
    }
    else if (CFGCXT.type == WF_ADHOC)
    {
        TCPPutROMString(sktHTTP, (ROM BYTE*)"adhoc (IBSS)");
    }
    else
    {
        TCPPutROMString(sktHTTP, (ROM BYTE*)"unknown");
    }
}

void HTTPPrint_hash1(void)
{
    BYTE buffer[41];
    BYTE i;
    WORD len;

    len = TCPIsPutReady (sktHTTP);

    if (curHTTP.callbackPos == 0)
        curHTTP.callbackPos = 40;

    for (i = 0; i < 20; i++)
    {
        buffer[i+i] = btohexa_high (gPowerMeterPreferences.pKeyHashes[0][i]);
        buffer[i+i+1] = btohexa_low (gPowerMeterPreferences.pKeyHashes[0][i]);
    }

    buffer[40] = 0;

    while (len && curHTTP.callbackPos)
    {
        len -= TCPPut(sktHTTP, buffer[40 - curHTTP.callbackPos]);
        curHTTP.callbackPos--;
    }
}

void HTTPPrint_hash2(void)
{
    BYTE buffer[41];
    BYTE i;
    WORD len;

    len = TCPIsPutReady (sktHTTP);

    if (curHTTP.callbackPos == 0)
        curHTTP.callbackPos = 40;

    for (i = 0; i < 20; i++)
    {
        buffer[i+i] = btohexa_high (gPowerMeterPreferences.pKeyHashes[1][i]);
        buffer[i+i+1] = btohexa_low (gPowerMeterPreferences.pKeyHashes[1][i]);
    }

    buffer[40] = 0;

    while (len && curHTTP.callbackPos)
    {
        len -= TCPPut(sktHTTP, buffer[40 - curHTTP.callbackPos]);
        curHTTP.callbackPos--;
    }
}

void HTTPPrint_hash3(void)
{
    BYTE buffer[41];
    BYTE i;
    WORD len;

    len = TCPIsPutReady (sktHTTP);

    if (curHTTP.callbackPos == 0)
        curHTTP.callbackPos = 40;

    for (i = 0; i < 20; i++)
    {
        buffer[i+i] = btohexa_high (gPowerMeterPreferences.pKeyHashes[2][i]);
        buffer[i+i+1] = btohexa_low (gPowerMeterPreferences.pKeyHashes[2][i]);
    }

    buffer[40] = 0;

    while (len && curHTTP.callbackPos)
    {
        len -= TCPPut(sktHTTP, buffer[40 - curHTTP.callbackPos]);
        curHTTP.callbackPos--;
    }
}

void HTTPPrint_authtoken(void)
{
    WORD len;
    WORD len2;

    len = TCPIsPutReady (sktHTTP);
    len2 = strlen ((char *)gPowerMeterPreferences.auth_token);

    if (curHTTP.callbackPos == 0)
        curHTTP.callbackPos = len2;

    while (len && curHTTP.callbackPos)
    {
        len -= TCPPut(sktHTTP, gPowerMeterPreferences.auth_token[len2 - curHTTP.callbackPos]);
        curHTTP.callbackPos--;
    }
}

void HTTPPrint_authpath(void)
{
    WORD len;
    WORD len2;

    len = TCPIsPutReady (sktHTTP);
    len2 = strlen ((char *)gPowerMeterPreferences.auth_path);

    if (curHTTP.callbackPos == 0)
        curHTTP.callbackPos = len2;

    while (len > 12 && curHTTP.callbackPos)
    {
        len -= TCPPut(sktHTTP, gPowerMeterPreferences.auth_path[len2 - curHTTP.callbackPos]);
        curHTTP.callbackPos--;
    }
}

void HTTPPrint_num_sensor(void)
{
    TCPPut (sktHTTP, DEVICE_NUM_SENSORS + '0');
}

void HTTPPrint_cap_int(void)
{
    char buffer[16];

    sprintf((char *) buffer, "%ld", (long)gPowerMeterPreferences.cap_sec_interval);
    TCPPutString (sktHTTP, (BYTE *)buffer);
}

void HTTPPrint_send_int(void)
{
    char buffer[16];

    sprintf((char *) buffer, "%ld", (long)gPowerMeterPreferences.send_sec_interval);
    TCPPutString (sktHTTP, (BYTE *)buffer);
}

#endif
