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
 * Processor:       PIC18, PIC24F, PIC24H, dsPIC30F, dsPIC33F
 * Compiler:        Microchip C30 v3.12 or higher
 *					Microchip C18 v3.30 or higher
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
 * Author               Date    Comment
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * Elliott Wood     	6/18/07	Original
 ********************************************************************/
#define __CUSTOMHTTPAPP_C

#include "TCPIP Stack/TCPIP.h"
#include "NVStationStorage.h"
#include "NVConfigStorage.h"
#include "MP3Client.h"

#if defined(STACK_USE_HTTP2_SERVER)

#if defined(HTTP_USE_POST)
	#if defined(STACK_USE_APP_RECONFIG)
	static HTTP_IO_RESULT HTTPPostConfig(void);
	#endif
	static HTTP_IO_RESULT HTTPPostIndex(void);
	static HTTP_IO_RESULT HTTPPostMACAddress(void);
#endif

extern HTTP_CONN curHTTP;
extern HTTP_STUB httpStubs[MAX_HTTP_CONNECTIONS];
extern BYTE curHTTPID;
extern NVCONFIG_RECORD RadioConfig;
extern STATION_INFO stations[];
extern BYTE station;

extern BYTE stationHostName[MAX_LENGTH_HOST_NAME];    // Host name string of the server
extern BYTE stationMessage[MAX_LENGTH_MESSAGE];
extern BYTE stationName[MAX_LENGTH_HUMAN_NAME];
extern WORD stationPort;			                    // TCP Port the remote server daemon is listening on

extern BYTE genre;
extern GENRE_INFO genres[];
BYTE GetGenreCount(void);   //prototype, this function is declared in MainDemo.c
#define kZGIncrementStation (0)
#define kZGDecrementStation (1)
void ChangeStation(BYTE action);
void ClearStationDisplay(void);
extern IRADIO_INFO iRadioStatus;
extern BYTE strStationName[];
extern BYTE strSongName[];

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
	// Protect the management page
	if(memcmppgm2ram(cFile, (ROM void*)"manage.htm", 10) == 0)
		return 0x00;		// Authentication will be needed later

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

/*********************************************************************
 * Function:        HTTP_IO_RESULT HTTPExecuteGet(void)
 *
 * PreCondition:    curHTTP is loaded
 *
 * Input:           None
 *
 * Output:          HTTP_IO_DONE on success
 *					HTTP_IO_WAITING if waiting for asynchronous process
 *
 * Side Effects:    None
 *
 * Overview:        This function is called if data was read from the
 *					HTTP request from either the GET arguments, or
 *					any cookies sent.  curHTTP.data contains
 *					sequential pairs of strings representing the
 *					data received.  Any required authentication has 
 *					already been validated.
 *
 * Note:            In this simple example, HTTPGetROMArg is used to 
 *					search for values associated with argument names.
 *					At this point, the application may overwrite/modify
 *					curHTTP.data if additional storage associated with
 *					a connection is needed.  Cookies may be set; see
 *					HTTPExecutePostCookies for an example.  For 
 *					redirect functionality, set curHTTP.data to the 
 *					destination and change curHTTP.httpStatus to
 *					HTTP_REDIRECT.
 ********************************************************************/
HTTP_IO_RESULT HTTPExecuteGet(void)
{
    BYTE *val;
	BYTE filename[20];
	
	// Load the file name
	// Make sure BYTE filename[] above is large enough for your longest name
	MPFSGetFilename(curHTTP.file, filename, 20);
	
    if(!memcmppgm2ram(filename, "index.htm", 9))
    {
        if(HTTPGetROMArg(curHTTP.data, (ROM BYTE *)"btnVolDown"))
        {
            if(RadioConfig.vVolumeRight < 240u)
                RadioConfig.vVolumeRight += 5;
            if(RadioConfig.vVolumeLeft < 240u)
                RadioConfig.vVolumeLeft += 5;
            VLSI_SetVolume(RadioConfig.vVolumeRight, RadioConfig.vVolumeLeft);

        }

        if(HTTPGetROMArg(curHTTP.data, (ROM BYTE *)"btnVolUp"))
        {
            if(RadioConfig.vVolumeRight >= 5u)
                RadioConfig.vVolumeRight -= 5;
            if(RadioConfig.vVolumeLeft >= 5u)
                RadioConfig.vVolumeLeft -= 5;
            VLSI_SetVolume(RadioConfig.vVolumeRight, RadioConfig.vVolumeLeft);
        }

        val = HTTPGetROMArg(curHTTP.data, (ROM BYTE *)"genre");
        if(val)
        {
            //cycle through array, find a match, save array index to genre
            BYTE i;
            i = 0;

            //Browser sends R&B genre as R%26B, but the string pointed to by val is read as 'R&B', (find out why/how),
            //therefore, compare GET data against DisplayName, and not ShoutcastName.
            while(memcmppgm2ram(val, (const ROM BYTE*)genres[i].DisplayName, strlenpgm(genres[i].DisplayName)))
            {
                i++;
            }
            genre = i;
            ClearStationDisplay();
            MP3CloseStation();
            MP3GetStationList();
        }

        if(HTTPGetROMArg(curHTTP.data, (ROM BYTE *)"btnPrev"))
        {
            if (iRadioStatus.bStationsValid)
            {
                ChangeStation(kZGDecrementStation);
                ClearStationDisplay();
                MP3OpenStation(&stations[station]);
            }
        }

        if(HTTPGetROMArg(curHTTP.data, (ROM BYTE *)"btnNext"))
        {
            if (iRadioStatus.bStationsValid)
            {
                ChangeStation(kZGIncrementStation);
                ClearStationDisplay();
                MP3OpenStation(&stations[station]);
            }
        }
    }
	return HTTP_IO_DONE;
}

#if defined(HTTP_USE_POST)
/*********************************************************************
 * Function:        HTTP_IO_RESULT HTTPExecutePost(void)
 *
 * PreCondition:    curHTTP is loaded
 *
 * Input:           None
 *
 * Output:          HTTP_IO_DONE on success
 *					HTTP_IO_NEED_DATA if more data is requested
 *					HTTP_IO_WAITING if waiting for asynchronous process
 *
 * Side Effects:    None
 *
 * Overview:        This function is called if the request method was
 *					POST.  It is called after HTTPExecuteGet and 
 *					after any required authentication has been validated.
 *
 * Note:            In this example, this function calls additional
 *					helpers depending on which file was requested.
 ********************************************************************/
HTTP_IO_RESULT HTTPExecutePost(void)
{
	// Resolve which function to use and pass along
	BYTE filename[20];
	
	// Load the file name
	// Make sure BYTE filename[] above is large enough for your longest name
	MPFSGetFilename(curHTTP.file, filename, 20);

	if(!memcmppgm2ram(filename, "index.htm", 9))
		return HTTPPostIndex();

	if(!memcmppgm2ram(filename, "updatemac.htm", 13))
		return HTTPPostMACAddress();
	
#if defined(STACK_USE_APP_RECONFIG)
	if(!memcmppgm2ram(filename, "protect/config.htm", 18))
		return HTTPPostConfig();
#endif

	return HTTP_IO_DONE;
}



/*********************************************************************
 * Function:        static HTTP_IO_RESULT HTTPPostIndex(void)
 *
 * PreCondition:    curHTTP is loaded
 *
 * Input:           None
 *
 * Output:          HTTP_IO_DONE on success
 *					HTTP_IO_NEED_DATA if more data is requested
 *					HTTP_IO_WAITING if waiting for asynchronous process
 *
 * Side Effects:    None
 *
 * Overview:        This function reads an input parameter "lcd" from
 *					the POSTed data, and writes that string to the
 *					board's LCD display.
 *
 * Note:            None
 ********************************************************************/
static HTTP_IO_RESULT HTTPPostIndex(void)
{
	BYTE *ptr;
	WORD len;

	// Look for the lcd string
	len = TCPFindROMArray(sktHTTP, (ROM BYTE *)"name=", 5, 0, FALSE);
	
	// If not found, then throw away almost all the data we have and ask for more
	if(len == 0xffff)
	{
		curHTTP.byteCount -= TCPGetArray(sktHTTP, NULL, TCPIsGetReady(sktHTTP) - 4);
		return HTTP_IO_NEED_DATA;
	}
	
	// Throw away all data preceeding the name string
	curHTTP.byteCount -= TCPGetArray(sktHTTP, NULL, len);
	
	// Look for end of name string
	len = TCPFind(sktHTTP, '&', 0, FALSE);
	if(len == 0xffff)
		len = curHTTP.byteCount;
	
	// If not found, ask for more data
	if(curHTTP.byteCount > TCPIsGetReady(sktHTTP))
		return HTTP_IO_NEED_DATA;
		
	// Prevent buffer overflows
	if(len > HTTP_MAX_DATA_LEN - 2)
		len = HTTP_MAX_DATA_LEN - 2;
		
	// Read entire name string into buffer and parse it
	len = TCPGetArray(sktHTTP, curHTTP.data, len);
	curHTTP.byteCount -= len;
	curHTTP.data[len] = '\0';
	ptr = HTTPURLDecode(curHTTP.data);
	ptr = HTTPGetROMArg(curHTTP.data, (ROM BYTE *)"name");
	/*
	// Copy up to 31 characters of the station name
	memset((void*)Station.vStationName, 0x00, sizeof(Station.vStationName));
	if(strlen((char*)curHTTP.data) < sizeof(Station.vStationName))
		strcpy((char*)Station.vStationName, (char*)ptr);
	else
		memcpy((void*)Station.vStationName, (void*)ptr, sizeof(Station.vStationName)-1);
	*/
	
	strcpypgm2ram((char*)curHTTP.data, (ROM void*)"index.htm");
	curHTTP.httpStatus = HTTP_REDIRECT;
	
	return HTTP_IO_DONE;
}

static HTTP_IO_RESULT HTTPPostMACAddress(void)
{
	BYTE vBuffer[64];
	HTTP_READ_STATUS ret;


	ret = HTTPReadPostValue(vBuffer, sizeof(vBuffer));
	if(ret == HTTP_READ_TRUNCATED)
	{
		strcpypgm2ram((char*)curHTTP.data, (ROM void*)"updatemacerror.htm");
		curHTTP.httpStatus = HTTP_REDIRECT;	
		return HTTP_IO_DONE;
	}

	if(ret == HTTP_READ_INCOMPLETE)
		return HTTP_IO_NEED_DATA;
		
	if(strcmppgm2ram((char*)&vBuffer[0], "txtMAC") == 0)
	{
		BYTE *ptr;
		WORD_VAL wv;
		BYTE i, j;
		WORD w;
		WORD len;
		

		ptr = vBuffer + sizeof("txtMAC");
		len = strlen((char*)ptr);

		// Find all hex characters
		i = 0;
		for(w = 0; w < len; w++)
		{
			j = *ptr++;
			if((j >= '0' && j <= '9') || (j >= 'A' && j <= 'F') || (j >= 'a' && j <= 'f'))
				vBuffer[i++] = j;
		}
		
		// Error out if we didn't find exactly 12 MAC address character after removing non-hex values
		if(i != 12u)
		{
			strcpypgm2ram((char*)curHTTP.data, (ROM void*)"updatemacerror.htm");
			curHTTP.httpStatus = HTTP_REDIRECT;	
			return HTTP_IO_DONE;
		}

		// Read MAC Address, one byte at a time
		for(i = 0; i < 6u; i++)
		{
			wv.v[1] = vBuffer[i*2];
			wv.v[0] = vBuffer[i*2+1];
			RadioConfig.vMACAddress[i] = hexatob(wv);
		}
		
		// Save new MAC radio config to Flash
		SetNVConfig(&RadioConfig);

		return HTTP_IO_DONE;
	}
	
	
	strcpypgm2ram((char*)curHTTP.data, (ROM void*)"updatemacerror.htm");
	curHTTP.httpStatus = HTTP_REDIRECT;	
	return HTTP_IO_DONE;
}


/*********************************************************************
 * Function:        HTTP_IO_RESULT HTTPPostConfig(void)
 *
 * PreCondition:    curHTTP is loaded
 *
 * Input:           None
 *
 * Output:          HTTP_IO_DONE on success
 *					HTTP_IO_NEED_DATA if more data is requested
 *					HTTP_IO_WAITING if waiting for asynchronous process
 *
 * Side Effects:    None
 *
 * Overview:        This function reads an input parameter "lcd" from
 *					the POSTed data, and writes that string to the
 *					board's LCD display.
 *
 * Note:            None
 ********************************************************************/
#if defined(STACK_USE_APP_RECONFIG)
extern APP_CONFIG AppConfig;
#define HTTP_POST_CONFIG_MAX_LEN	(HTTP_MAX_DATA_LEN - sizeof(AppConfig) - 3)
static HTTP_IO_RESULT HTTPPostConfig(void)
{
	APP_CONFIG *app;
	BYTE *ptr;
	WORD len;

	// Set app config pointer to use data array
	app = (APP_CONFIG*)&curHTTP.data[HTTP_POST_CONFIG_MAX_LEN];
	
	// Use data[0] as a state machine.  0x01 is initialized, 0x02 is error, else uninit
	if(curHTTP.data[0] != 0x01 && curHTTP.data[0] != 0x02) 
	{
		// First run, so use current config as defaults
		memcpy((void*)app, (void*)&AppConfig, sizeof(AppConfig));
		app->Flags.bIsDHCPEnabled = 0;
		curHTTP.data[0] = 0x01;
	}

	// Loop over all parameters
	while(curHTTP.byteCount) 
	{	
		// Find end of next parameter string
		len = TCPFind(sktHTTP, '&', 0, FALSE);
		if(len == 0xffff && TCPIsGetReady(sktHTTP) == curHTTP.byteCount)
			len = TCPIsGetReady(sktHTTP);
		
		// If there's no end in sight, then ask for more data
		if(len == 0xffff)
			return HTTP_IO_NEED_DATA;
			
		// Read in as much data as we can
		if(len > HTTP_MAX_DATA_LEN-sizeof(AppConfig))
		{// If there's too much, read as much as possible
			curHTTP.byteCount -= TCPGetArray(sktHTTP, curHTTP.data+1, HTTP_POST_CONFIG_MAX_LEN);
			curHTTP.byteCount -= TCPGetArray(sktHTTP, NULL, len - HTTP_POST_CONFIG_MAX_LEN);
			curHTTP.data[HTTP_POST_CONFIG_MAX_LEN-1] = '\0';
		}
		else
		{// Otherwise, read as much as we wanted to
			curHTTP.byteCount -= TCPGetArray(sktHTTP, curHTTP.data+1, len);
			curHTTP.data[len+1] = '\0';
		}
	
		// Decode the string
		HTTPURLDecode(curHTTP.data+1);
	
		// Compare the string to those we're looking for
		if(!memcmppgm2ram(curHTTP.data+1, "ip\0", 3))
		{
			if(StringToIPAddress(&curHTTP.data[3+1], &(app->MyIPAddr)))
				memcpy((void*)&(app->DefaultIPAddr), (void*)&(app->MyIPAddr), sizeof(IP_ADDR));
			else
				curHTTP.data[0] = 0x02;
		}
		else if(!memcmppgm2ram(curHTTP.data+1, "gw\0", 3))
		{
			if(!StringToIPAddress(&curHTTP.data[3+1], &(app->MyGateway)))
				curHTTP.data[0] = 0x02;	
		}
		else if(!memcmppgm2ram(curHTTP.data+1, "subnet\0", 7))
		{
			if(StringToIPAddress(&curHTTP.data[7+1], &(app->MyMask)))
				memcpy((void*)&(app->DefaultMask), (void*)&(app->MyMask), sizeof(IP_ADDR));
			else
				curHTTP.data[0] = 0x02;
		}
		else if(!memcmppgm2ram(curHTTP.data+1, "dns1\0", 5))
		{
			if(!StringToIPAddress(&curHTTP.data[5+1], &(app->PrimaryDNSServer)))
				curHTTP.data[0] = 0x02;	
		}
		else if(!memcmppgm2ram(curHTTP.data+1, "dns2\0", 5))
		{
			if(!StringToIPAddress(&curHTTP.data[5+1], &(app->SecondaryDNSServer)))
				curHTTP.data[0] = 0x02;
		}
		else if(!memcmppgm2ram(curHTTP.data+1, "mac\0", 4))
		{
			WORD_VAL w;
			BYTE i, mac[12];

			ptr = &curHTTP.data[4+1];

			for(i = 0; i < 12; i++)
			{// Read the MAC address
				
				// Skip non-hex bytes
				while( *ptr != 0x00 && !(*ptr >= '0' && *ptr < '9') && !(*ptr >= 'A' && *ptr <= 'F') && !(*ptr >= 'a' && *ptr <= 'f') )
					ptr++;

				// MAC string is over, so zeroize the rest
				if(*ptr == 0x00)
				{
					for(; i < 12; i++)
						mac[i] = '0';
					break;
				}
				
				// Save the MAC byte
				mac[i] = *ptr++;
			}
			
			// Read MAC Address, one byte at a time
			for(i = 0; i < 6; i++)
			{				
				w.v[1] = mac[i*2];
				w.v[0] = mac[i*2+1];
				app->MyMACAddr.v[i] = hexatob(w);
			}
		}
		else if(!memcmppgm2ram(curHTTP.data+1, "host\0", 5))
		{
			memset(app->NetBIOSName, ' ', 15);
			app->NetBIOSName[15] = 0x00;
			memcpy((void*)app->NetBIOSName, (void*)&curHTTP.data[5+1], strlen((char*)&curHTTP.data[5+1]));
			strupr((char*)app->NetBIOSName);
		}
		else if(!memcmppgm2ram(curHTTP.data+1, "dhcpenabled\0", 12))
		{
			if(curHTTP.data[12+1] == '1')
				app->Flags.bIsDHCPEnabled = 1;
			else
				app->Flags.bIsDHCPEnabled = 0;
		}
		
		// Trash the separator character
		while( TCPFind(sktHTTP, '&', 0, FALSE)  == 0 || 
			   TCPFind(sktHTTP, '\r', 0, FALSE) == 0 || 
			   TCPFind(sktHTTP, '\n', 0, FALSE) == 0	 )
		{
			curHTTP.byteCount -= TCPGet(sktHTTP, NULL);
		}

	}
	
	// Check if all settings were successful
	if(curHTTP.data[0] == 0x01)
	{// Save the new AppConfig
		// If DCHP, then disallow editing of DefaultIP and DefaultMask
		if(app->Flags.bIsDHCPEnabled)
		{
			// If DHCP is enabled, then reset the default IP and mask
			app->DefaultIPAddr.v[0] = MY_DEFAULT_IP_ADDR_BYTE1;
			app->DefaultIPAddr.v[1] = MY_DEFAULT_IP_ADDR_BYTE2;
			app->DefaultIPAddr.v[2] = MY_DEFAULT_IP_ADDR_BYTE3;
			app->DefaultIPAddr.v[3] = MY_DEFAULT_IP_ADDR_BYTE4;
			app->DefaultMask.v[0] = MY_DEFAULT_MASK_BYTE1;
			app->DefaultMask.v[1] = MY_DEFAULT_MASK_BYTE2;
			app->DefaultMask.v[2] = MY_DEFAULT_MASK_BYTE3;
			app->DefaultMask.v[3] = MY_DEFAULT_MASK_BYTE4;
		}
		ptr = (BYTE*)app;
		#if defined(MPFS_USE_EEPROM)
	    XEEBeginWrite(0x0000);
	    XEEWrite(0x60);
	    for (len = 0; len < sizeof(AppConfig); len++ )
	        XEEWrite(*ptr++);
	    XEEEndWrite();
        while(XEEIsBusy());
        #endif
		
		// Set the board to reboot to the new address
		strcpypgm2ram((char*)curHTTP.data, (ROM char*)"/protect/reboot.htm?");
		memcpy((void*)(curHTTP.data+20), (void*)app->NetBIOSName, 16);
		ptr = curHTTP.data;
		while(*ptr != ' ' && *ptr != '\0')
			ptr++;
		*ptr = '\0';
	}
	else
	{// Error parsing IP, so don't save to avoid errors
		strcpypgm2ram((char*)curHTTP.data, (ROM void*)"/protect/config_error.htm");
	}
			
	curHTTP.httpStatus = HTTP_REDIRECT;
	
	return HTTP_IO_DONE;
}
#endif	// #if defined(STACK_USE_APP_RECONFIG)

#endif //(use_post)

/*********************************************************************
 * Function:        void HTTPPrint_varname(TCP_SOCKET sktHTTP, 
 *							DWORD callbackPos, BYTE *data)
 *
 * PreCondition:    None
 *
 * Input:           sktHTTP: the TCP socket to which to write
 *					callbackPos: 0 initially
 *						return value of last call for subsequent callbacks
 *					data: this connection's data buffer
 *
 * Output:          0 if output is complete
 *					application-defined otherwise
 *
 * Side Effects:    None
 *
 * Overview:        Outputs a variable to the HTTP client.
 *
 * Note:            Return zero to indicate that this callback function 
 *					has finished writing data to the TCP socket.  A 
 *					non-zero return value indicates that more data 
 *					remains to be written, and this callback should 
 *					be called again when more space is available in 
 *					the TCP TX FIFO.  This non-zero return value will 
 *					be the value of the parameter callbackPos for the 
 *					next call.
 ********************************************************************/

ROM BYTE HTML_UP_ARROW[] = "up";
ROM BYTE HTML_DOWN_ARROW[] = "dn";

void HTTPPrint_stations(void)
{
//	ROM BYTE *vResponsePtr = (ROM BYTE*)"<tr><td>Not implemented yet</td><td>&nbsp;</td><td><input type=""submit"" value=""Delete""></td></tr>";
//	TCPPutROMArray(sktHTTP, vResponsePtr, strlenpgm((ROM char*)vResponsePtr));
}

void HTTPPrint_btn0(void)
{
	TCPPutROMArray(sktHTTP, (BUTTON0_IO?HTML_UP_ARROW:HTML_DOWN_ARROW), 2);
	return;
}

void HTTPPrint_btn1(void)
{
	TCPPutROMArray(sktHTTP, (BUTTON1_IO?HTML_UP_ARROW:HTML_DOWN_ARROW), 2);
	return;
}
	
void HTTPPrint_btn2(void)
{
	TCPPutROMArray(sktHTTP, (BUTTON2_IO?HTML_UP_ARROW:HTML_DOWN_ARROW), 2);
	return;
}

void HTTPPrint_version(void)
{
	TCPPutROMArray(sktHTTP,(ROM void*)TCPIP_STACK_VERSION, strlenpgm((ROM char*)TCPIP_STACK_VERSION));
}

void HTTPPrint_hiddenLED0(void)
{
	TCPPut(sktHTTP, (LED0_IO?'1':'0'));
	return;
}

void HTTPPrint_builddate(void)
{
	TCPPutROMArray(sktHTTP,(ROM void*)__DATE__" "__TIME__, strlenpgm((ROM char*)__DATE__" "__TIME__));
}

extern APP_CONFIG AppConfig;


void HTTPPrint_config_hostname(void)
{
	TCPPutArray(sktHTTP, AppConfig.NetBIOSName, strlen((char*)AppConfig.NetBIOSName));
	return;
}

void HTTPPrint_config_mac(void)
{
	BYTE i;
	
	if(TCPIsPutReady(sktHTTP) < 18u)
	{//need 17 bytes to write a MAC
		curHTTP.callbackPos = 0x01;
		return;
	}	
	
	// Write each byte
	for(i = 0; i < 6u; i++)
	{
		if(i != 0u)
			TCPPut(sktHTTP, ':');
		TCPPut(sktHTTP, btohexa_high(RadioConfig.vMACAddress[i]));
		TCPPut(sktHTTP, btohexa_low(RadioConfig.vMACAddress[i]));
	}
	
	// Indicate that we're done
	curHTTP.callbackPos = 0x00;
	return;
}

void HTTPPrint_CurrentStationName(void)
{
	WORD w;

	w = TCPIsPutReady(sktHTTP);

    if(strStationName[1])
    {
    	if(*TCPPutString(sktHTTP, &stationName[curHTTP.callbackPos]) == 0x00u)
    	{
    		// We have successfully copied all data if we have reached the null terminator
    		curHTTP.callbackPos = 0;
    		return;
    	}
    	
    	curHTTP.callbackPos += w;
    }
    else
    {
        //Invalid station, send an empty string back
        TCPPutROMString(sktHTTP, (ROM BYTE*)"...");
    }
}

void HTTPPrint_CurrentSongName(void)
{
	WORD w;

	w = TCPIsPutReady(sktHTTP);

    if(strStationName[1])
    {
    	if(*TCPPutString(sktHTTP, &strSongName[curHTTP.callbackPos]) == 0x00u)
    	{
    		// We have successfully copied all data if we have reached the null terminator
    		curHTTP.callbackPos = 0;
    		return;
    	}
    	
    	curHTTP.callbackPos += w;
    }
    else
    {
        //Invalid station, send an empty string back
        TCPPutROMString(sktHTTP, (ROM BYTE*)"...");
    }
}

void HTTPPrint_CurrentStationURL(void)
{
	BYTE vBuffer[12];
    BYTE *RAMptr, *RAMptr2;

    //If station string is empty, no station selected..
    if(strStationName[1])
    {
    	switch(((BYTE*)&curHTTP.callbackPos)[0])
    	{
    		case 0:
    			TCPPutROMString(sktHTTP, (ROM BYTE*)"http://");
    			break;
    
    		case 1:
    			if(TCPIsPutReady(sktHTTP) < 64u)
    				return;
    		    TCPPutString(sktHTTP, stationHostName);
    			break;
    
    		case 2:
    			TCPPut(sktHTTP, ':');
    			uitoa(stationPort, vBuffer);
    			TCPPutString(sktHTTP, vBuffer);
    			break;
    
    		case 3:
    			if(TCPIsPutReady(sktHTTP) < 64u)
    				return;
    
    			RAMptr = stationMessage;
    			while(*RAMptr != '/')
    				RAMptr++;
    			RAMptr2 = RAMptr + 1;
    			while(*RAMptr2 != ' ')
    				RAMptr2++;
    			TCPPutArray(sktHTTP, RAMptr, RAMptr2-RAMptr);
            
    			// Stop callbacks
    			curHTTP.callbackPos = 0;
    			return;
    	}
    	
    	((BYTE*)&curHTTP.callbackPos)[0]++;
    }
    else
    {
        //Invalid station, send an empty string back
        TCPPutROMString(sktHTTP, (ROM BYTE*)"...");
    }
}

void HTTPPrint_vol_level(void)
{
    unsigned char temp;
    unsigned char tempChar[3];
    temp = RadioConfig.vVolumeRight;

    //For VLSI, lower value is louder, for end user, reverse it to make more human sense
    temp = 0xFF - temp;

    //convert unsigned char to ascii
    tempChar[2] = (temp % 10)+0x30; 
    temp = temp / 10;
    tempChar[1] = (temp % 10)+0x30; 
    temp = temp / 10;
    tempChar[0] = (temp % 10)+0x30; 

	TCPPutArray(sktHTTP, tempChar, 3);
	return;
}

void HTTPPrint_genre_list(void)
{
	//Will only write at most 16 bytes at a time

    static BYTE genre_list_state;

    if(curHTTP.callbackPos == 0u)
    {
        genre_list_state = 0;
	    curHTTP.callbackPos++;
    }
	
    if(genre_list_state == 0u)
    {
        if(genre == (curHTTP.callbackPos-1))
        {
            TCPPutROMString(sktHTTP, (ROM BYTE*)"<option SELECTED>");
        }
        else
        {
            TCPPutROMString(sktHTTP, (ROM BYTE*)"<option>");
        }
        genre_list_state++;
    }
    else if(genre_list_state == 1u)
    {
        TCPPutROMString(sktHTTP, (ROM BYTE*)genres[curHTTP.callbackPos-1].DisplayName);
        genre_list_state++;
    }
    else
    {
        TCPPutROMString(sktHTTP, (ROM BYTE*)"</option>");
        curHTTP.callbackPos++;
        genre_list_state = 0;
    }

    if((curHTTP.callbackPos > GetGenreCount())&&(genre_list_state == 0u))
	{
        // We have sent all genres, and the last html tag has been sent.
		curHTTP.callbackPos = 0;
		return;
	}

}

void HTTPPrint_selected_genre(void)
{
    //Will only write at most 16 bytes at a time
    //selected_genre is sent as part of XML data, must use XML name, since '&' and '<' are reserved.
    //So 'R&B' must be sent as 'R&amp;B'
    TCPPutROMString(sktHTTP, (ROM BYTE*)genres[genre].XMLName);
}

void HTTPPrint_reboot(void)
{
	// This is not so much a print function, but causes the board to reboot
	// when the configuration is changed.  If called via an AJAX call, this
	// will gracefully reset the board and bring it back online immediately
	Reset();
}

#endif
