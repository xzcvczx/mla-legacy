/*********************************************************************
 *
 *  Generic TCP Client Example Application
 *  Module for Microchip TCP/IP Stack
 *   -Implements an example HTTP client and should be used as a basis 
 *	  for creating new TCP client applications
 *	 -Reference: None.  Hopefully AN833 in the future.
 *
 *********************************************************************
 * FileName:        GenericTCPClient.c
 * Dependencies:    TCP, DNS, ARP, Tick
 * Processor:       PIC18, PIC24F, PIC24H, dsPIC30F, dsPIC33F, PIC32
 * Compiler:        Microchip C32 v1.05 or higher
 *					Microchip C30 v3.12 or higher
 *					Microchip C18 v3.30 or higher
 *					HI-TECH PICC-18 PRO 9.63PL2 or higher
 * Company:         Microchip Technology, Inc.
 *
 * Software License Agreement
 *
 * Copyright (C) 2002-2009 Microchip Technology Inc.  All rights
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
 * Howard Schlunder     8/01/06	Original
 ********************************************************************/
#define __GENERICTCPCLIENT_C

#include "TCPIPConfig.h"

#include "TCPIP Stack/TCPIP.h"
#include <string.h>
#include "HTTPTime.h"

// Defines the server to be accessed for this application
static BYTE ServerName[] =	"www.google.com";

// Defines the port to be accessed for this application
static WORD ServerPort = 80;

// Defines the URL to be requested by this HTTP client
static ROM BYTE RemoteURL[] = "/";

// Time counter
static DWORD dwHTTPTime;

// Tick count of last update
static DWORD dwLastUpdateTick = 0;

void ProcessTimeString (BYTE * buffer);

static enum
{
	SM_HOME = 0,
	SM_SOCKET_OBTAINED,
	SM_PROCESS_RESPONSE,
	SM_DISCONNECT,
	SM_DONE
} HTTPTimeState = SM_DONE;

void StartHTTPTimeStateMachine (void)
{
    HTTPTimeState = SM_HOME;    
}

BOOL IsHTTPTimeStateMachineRunning (void)
{
    return ((HTTPTimeState == SM_DONE)? FALSE : TRUE);
}

/*****************************************************************************
  Function:
	void HTTPTimeTask(void)

  Summary:
	Implements a simple HTTP client (over TCP).

  Description:
	This function implements a simple HTTP client, which operates over TCP.  
	The function is called periodically by the stack, and waits for BUTTON1 
	to be pressed.  When the button is pressed, the application opens a TCP
	connection to an Internet search engine, performs a search for the word
	"Microchip" on "microchip.com", and prints the resulting HTML page to
	the UART.
	
	This example can be used as a model for many TCP and HTTP client
	applications.

  Precondition:
	TCP is initialized.

  Parameters:
	None

  Returns:
  	None
  ***************************************************************************/
void HTTPTimeTask(void)
{
	WORD				w;
	BYTE				vBuffer[0x37];
	static DWORD		Timer;
	static TCP_SOCKET	MySocket = INVALID_SOCKET;

	switch(HTTPTimeState)
	{
		case SM_HOME:
			// Connect a socket to the remote TCP server
			MySocket = TCPOpen((DWORD)&ServerName[0], TCP_OPEN_RAM_HOST, ServerPort, TCP_PURPOSE_DEFAULT);
			
			// Abort operation if no TCP socket of type TCP_PURPOSE_GENERIC_TCP_CLIENT is available
			// If this ever happens, you need to go add one to TCPIPConfig.h
			if(MySocket == INVALID_SOCKET)
				break;

			#if defined(STACK_USE_UART)
			putrsUART((ROM char*)"\r\n\r\nConnecting using Microchip TCP API...\r\n");
			#endif

			HTTPTimeState++;
			Timer = TickGet();
			break;

		case SM_SOCKET_OBTAINED:
			// Wait for the remote server to accept our connection request
			if(!TCPIsConnected(MySocket))
			{
				// Time out if too much time is spent in this state
				if(TickGet()-Timer > 5*TICK_SECOND)
				{
					// Close the socket so it can be used by other modules
					TCPDisconnect(MySocket);
					MySocket = INVALID_SOCKET;
					HTTPTimeState--;
				}
				break;
			}

			Timer = TickGet();

			// Make certain the socket can be written to
			if(TCPIsPutReady(MySocket) < 125u)
				break;
			
			// Place the application protocol data into the transmit buffer.  For this example, we are connected to an HTTP server, so we'll send an HTTP GET request.
			TCPPutROMString(MySocket, (ROM BYTE*)"GET ");
			TCPPutROMString(MySocket, RemoteURL);
			TCPPutROMString(MySocket, (ROM BYTE*)" HTTP/1.0\r\nHost: ");
			TCPPutString(MySocket, ServerName);
			TCPPutROMString(MySocket, (ROM BYTE*)"\r\nConnection: close\r\n\r\n");

			// Send the packet
			TCPFlush(MySocket);
			HTTPTimeState++;
			break;

		case SM_PROCESS_RESPONSE:
			// Check to see if the remote node has disconnected from us or sent us any application data
			// If application data is available, write it to the UART
			if(!TCPIsConnected(MySocket))
			{
				HTTPTimeState = SM_DISCONNECT;
				// Do not break;  We might still have data in the TCP RX FIFO waiting for us
			}
	
			// Get count of RX bytes waiting
			w = TCPIsGetReady(MySocket);	
	
            if (w < 0x36)
                break;
			
            w -= TCPGetArray(MySocket, vBuffer, 0x36);
            vBuffer[0x36] = '\0';
			
		    HTTPTimeState = SM_DISCONNECT;
	
            ProcessTimeString (vBuffer);

			break;
	
		case SM_DISCONNECT:
			// Close the socket so it can be used by other modules
			// For this application, we wish to stay connected, but this state will still get entered if the remote server decides to disconnect
			TCPDisconnect(MySocket);
			MySocket = INVALID_SOCKET;
			HTTPTimeState = SM_DONE;
			break;
	
		case SM_DONE:
			break;
	}
}

const ROM BYTE HTTP_CONN_OK[] = "HTTP/1.0 200 OK\r\nDate: ";


#define DATE_FORMAT_1       1
#define DATE_FORMAT_2       2
#define DATE_FORMAT_3       3

void ProcessTimeString (BYTE * buffer)
{
    unsigned char i = 23;
    unsigned char format;
    unsigned long years = 0, months = 0, days = 0, hours = 0, minutes = 0, seconds = 0;
    DWORD counter;
    DWORD UTCTime;

    if (!strncmp((char *)HTTP_CONN_OK, (char *)buffer, i))
    {
        // Determine the date's format and skip past the day-of-week (i.e. Sun, Tue, Friday)
        // Then initialize the date to 0 (format 2) or load the correct value
        switch (*(buffer + i + 3))
        {
            // Date format: Sun, 27 Jun 2010 08:49:37 GMT
            case ',':
                format = DATE_FORMAT_1;
                i += 5;
                days = ((*(buffer + i++)) - '0') * 10;
                days += (*(buffer + i++)) - '0';
                i++;
                break;
            // Date format: Sun Jun 27 08:49:37 2010
            case ' ':
                format = DATE_FORMAT_2;
                i += 4;
                days = 0;
                break;
            // Date format: Sunday, 27-Jun-10 08:49:37 GMT
            default:
                format = DATE_FORMAT_3;
                switch (*(buffer + i + 1))
                {
                    // Monday and Friday
                    case 'o':
                    case 'r':
                        i += 8;
                        break;
                    // Wednesday
                    case 'e':
                        i += 11;
                        break;                
                    // Thursday and Saturday
                    case 'h':
                    case 'a':
                        i += 10;
                        break;                
                    // Sunday/Tuesday
                    case 'u':
                        if (*(buffer + i) == 'S')
                            i += 8;
                        else
                            i += 9;
                        break;                
                }
                days = ((*(buffer + i++)) - '0') * 10;
                days += (*(buffer + i++)) - '0';
                i++;
                years = 0;
                break;
        }

        // Calculate the month
        switch (*(buffer + i + 1))
        {
            // Jan, Mar, May
            case 'a':
                switch (*(buffer + i + 2))
                {
                    case 'n':
                        months = 1;
                        break;
                    case 'r':
                        months = 3;
                        break;
                    case 'y':
                        months = 5;
                        break;
                }
                break;
            // Feb, Sep, Dec
            case 'e':
                switch (*(buffer + i))
                {
                    case 'F':
                        months = 2;
                        break;
                    case 'S':
                        months = 9;
                        break;
                    case 'D':
                        months = 12;
                        break;
                }
               
                break;
            // Apr
            case 'p':
                months = 4;
                break;
            // Jun, Jul, Aug
            case 'u':
               switch (*(buffer + i + 2))
                {
                    case 'n':
                        months = 6;
                        break;
                    case 'l':
                        months = 7;
                        break;
                    case 'g':
                        months = 8;
                        break;
                }
                 break;
            // Oct
            case 'c':
                months = 10;
                break;
            // Nov
            case 'o':
                months = 11;
                break;
        }

        i += 4;

        switch (format)
        {
            // For format 1 and 3 process the year and time next
            case DATE_FORMAT_1:
                years = (*(buffer + i++) - '0') * 1000;
                years += (*(buffer + i++) - '0') * 100;
                // Fall-through
            case DATE_FORMAT_3:
                years += (*(buffer + i++) - '0') * 10;
                years += *(buffer + i++) - '0';
                // Format 3 only has a 2-digit year, so autocorrect it
                // This format has been deprecated, so it shouldn't be in use anymore, but 
                // we're processing it just in case
                // It's not likely it will be in use after 2070, so this probably won't fail
                if (years < 100)
                {
                    if (years >= 70)
                        years += 1900;
                    else
                        years += 2000;
                }
                i++;
                hours = (*(buffer + i++) - '0') * 10;
                hours += *(buffer + i++) - '0';
                i++;
                minutes = (*(buffer + i++) - '0') * 10;
                minutes += *(buffer + i++) - '0';
                i++;
                seconds = (*(buffer + i++) - '0') * 10;
                seconds += *(buffer + i++) - '0';
                break;
            case DATE_FORMAT_2:
                if (*(buffer + i) == ' ')
                    days = 0;
                else
                    days = ((*(buffer + i++)) - '0') * 10;
                days += (*(buffer + i++)) - '0';
                i++;
                hours = (*(buffer + i++) - '0') * 10;
                hours += *(buffer + i++) - '0';
                i++;
                minutes = (*(buffer + i++) - '0') * 10;
                minutes += *(buffer + i++) - '0';
                i++;
                seconds = (*(buffer + i++) - '0') * 10;
                seconds += *(buffer + i++) - '0';
                i ++;
                years = (*(buffer + i++) - '0') * 1000;
                years = (*(buffer + i++) - '0') * 100;
                years = (*(buffer + i++) - '0') * 10;
                years += *(buffer + i++) - '0';
                break;
        }

        // Calculate UTC time from HTTP time

        // Add leap days
        for (counter = 1972; counter < years; counter += 4)
        {
            // Add a leap day if the counter is not evenly divisible by 100 or if it is evenly divisibly by 400
            if ((!(counter % 400)) || (counter % 100))
                days++;
        }

        // Add 'years' * a year of seconds
        UTCTime = 31536000 * (years - 1970);
        // Add in the seconds for each month until the current month
        switch (months)
        {
            case 1:
                // It's January, add 0 seconds
                break;
            case 2:
                // It's February, add 1 January's worth of seconds
                UTCTime += 2678400;
                break;
            case 3:
                // March - Add Jan - Feb
                UTCTime += 2678400 + 2419200;
                break;
            case 4:
                // April - Add Jan - Mar
                UTCTime += 2678400 + 2419200 + 2678400;
                break;
            case 5:
                // May - Add Jan - April
                UTCTime += 2678400 + 2419200 + 2678400 + 2592000;
                break;
            case 6:
                // June - Add Jan - May
                UTCTime += 2678400 + 2419200 + 2678400 + 2592000 + 2678400;
                break;
            case 7:
                // July - Add Jan - Jun
                UTCTime += 2678400 + 2419200 + 2678400 + 2592000 + 2678400 + 2592000;
                break;
            case 8:
                // August - Add Jan - Jul
                UTCTime += 2678400 + 2419200 + 2678400 + 2592000 + 2678400 + 2592000 + 2678400;
                break;
            case 9:
                // September - Add Jan - Aug
                UTCTime += 2678400 + 2419200 + 2678400 + 2592000 + 2678400 + 2592000 + 2678400 + 2678400;
                break;
            case 10:
                // October - Add Jan - Sep
                UTCTime += 2678400 + 2419200 + 2678400 + 2592000 + 2678400 + 2592000 + 2678400 + 2678400 + 2592000;
                break;
            case 11:
                // November - Add Jan - Oct
                UTCTime += 2678400 + 2419200 + 2678400 + 2592000 + 2678400 + 2592000 + 2678400 + 2678400 + 2592000 + 2678400;
                break;
            case 12:
                // December - Add Jan - Nov
                UTCTime += 2678400 + 2419200 + 2678400 + 2592000 + 2678400 + 2592000 + 2678400 + 2678400 + 2592000 + 2678400 + 2592000;
                break;
        }

        // Add in this year's leap day if we're past February and it's a leap year
        if ((months > 2) && ((((years % 4) == 0) && (years % 100)) || ((years % 400) == 0)))
            days++;

        // Add days and accumulated leap days
        // Don't add the current day
        UTCTime += (--days * 86400);

        // Add Hours
        UTCTime += (hours * 3600);

        // Add Minutes
        UTCTime += (minutes * 60);

        // Add Seconds
        UTCTime += seconds;

        // Don't add leap seconds
        // The normal SNTP servers don't seem to
        //UTCTime += LEAP_SECONDS;
        dwHTTPTime = UTCTime;
    }
}

DWORD HTTPTimeGetUTCSeconds(void)
{
	DWORD dwTickDelta;
	DWORD dwTick;

	// Update the dwSNTPSeconds variable with the number of seconds 
	// that has elapsed
	dwTick = TickGet();
	dwTickDelta = dwTick - dwLastUpdateTick;
	while(dwTickDelta > TICK_SECOND)
	{
		dwHTTPTime++;
		dwTickDelta -= TICK_SECOND;
	}
	
	// Save the tick and residual fractional seconds for the next call
	dwLastUpdateTick = dwTick - dwTickDelta;

	return dwHTTPTime;
}


