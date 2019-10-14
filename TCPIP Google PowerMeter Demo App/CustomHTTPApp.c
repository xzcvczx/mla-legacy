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

/****************************************************************************
  Section:
	Function Prototypes and Memory Globalizers
  ***************************************************************************/
#if defined(HTTP_USE_POST)

    static HTTP_IO_RESULT HTTPPostAuthInfo(void);
    static HTTP_IO_RESULT HTTPPostAuthenticate(void);
#endif

static HTTP_IO_RESULT HTTPDeactivateDevice (void);

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
    BYTE * ptr;

	// Load the file name
	// Make sure BYTE filename[] above is large enough for your longest name
	MPFSGetFilename(curHTTP.file, filename, 20);
	if(!memcmppgm2ram(filename, "activated.htm", 14))
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
            SavePowerMeterPreferences();
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

    if(!memcmppgm2ram(filename, "return.htm", 10))
		return HTTPPostAuthInfo();

    if(!memcmppgm2ram(filename, "terms.htm", 10))
		return HTTPPostAuthenticate();

	return HTTP_IO_DONE;
}


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
    unsigned long snonce = rand();\
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
    SavePowerMeterPreferences();

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

    SavePowerMeterPreferences();

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
                SavePowerMeterPreferences();
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
                    SavePowerMeterPreferences();
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

#endif
