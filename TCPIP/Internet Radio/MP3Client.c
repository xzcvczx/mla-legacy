/*********************************************************************

   Shoutcast MP3/WAV Client
   Module for Microchip TCP/IP Stack
    -Downloads and plays MP3 audio streams from the Internet

 If this application is configured to allow genre selection, the
 available stations for a particular genre are obtained by sending:

 shoutcast.com/sbin/newxml.phtml?genre=<genre>

 where <genre> is a hard-coded, valid genre name.  We will then
 receive a list of stations in the general form (the string will
 contain other additional attributes):

 <station name="<station name>" mt="<audio format> id="<station ID>"></station>

 If <audio format> is "audio/mpeg", then we can support the station.
 We will save up to STATION_COUNT station ID's.

 When the user selects a station, we will get the station information
 by sending:

 shoutcast.com/sbin/tunein-station.pls?id=<station ID>

 We will then receive a list of URL's in the general form (other
 additional lines will also be present):

 numberofentries=<entries>
 File1=http://<URL>:<port><path>
 Title1=(#1 - <users>/<max users>) <station name>

 We will extract the URL, port, path, and station name from this
 information.  If we encounter no errors, we will try to connect to
 the station.

 *********************************************************************
 * FileName:        MP3Client.c
 * Dependencies:    Microchip TCP/IP Stack, SPISRAM2.c
 * Processor:       PIC18, PIC24F, PIC24H, dsPIC30F, dsPIC33F
 * Compiler:        Microchip C30 v3.12 or higher
 *					Microchip C18 v3.30 or higher
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
 * Author               Date        Comment
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * Francesco Volpe      12/??/2006  Original
 * Howard Schlunder     03/12/2007  Completely revamped
 * KO                   09/16/2008  Added support for genre selection
 ********************************************************************/

#include "TCPIP Stack/TCPIP.h"
#include "MP3Client.h"
#include "SPIRAM2.h"
#include "OLED.h"

//******************************************************************************
//******************************************************************************
// Section: Configuration
//******************************************************************************
//******************************************************************************

//#define MP3_DEBUG_PRINT_BUFFER_FILLED

//******************************************************************************
//******************************************************************************
// Section: Constants
//******************************************************************************
//******************************************************************************

// FIFO for MP3 data (in external SPI RAM chip)
// Note that you can shrink this length of move the start address
// if you want to use part of the RAM chip for something else
#define AUDIO_BUFFER_START          (0ul)
#define AUDIO_BUFFER_LEN            (32768ul)

#define MAX_RETRIES_STATIONS        5u
#define MAX_RETRIES_STREAMS         3u

#if defined(__18CXX)
    #define MP3_INTERRUPT_FREQ          1800ul  // Hz
#else
    #define MP3_INTERRUPT_FREQ          1250ul  // Hz
#endif

//******************************************************************************
//******************************************************************************
// Section: Data Types
//******************************************************************************
//******************************************************************************

typedef enum
{
    SM_IDLE = 0,
    SM_STATIONS_LIST_OPEN_SOCKET,
    SM_STATIONS_LIST_SOCKET_OBTAINED,
    SM_STATIONS_LIST_CHECK_REDIRECT,
    SM_STATIONS_LIST_DO_REDIRECT_1,
    SM_STATIONS_LIST_DO_REDIRECT_2,
    SM_STATIONS_LIST_SEARCH_STATION_HEADER,
    SM_STATIONS_LIST_SEARCH_STATION_INFO,
    SM_STATIONS_LIST_DISCONNECT,
    SM_STATIONS_STREAM_OPEN_SOCKET,
    SM_STATIONS_STREAM_SOCKET_OBTAINED,
    SM_STATIONS_STREAM_NUMBER_OF_ENTRIES,
    SM_STATIONS_STREAM_SEARCH_STREAM_1,
    SM_STATIONS_STREAM_SEARCH_STREAM_2,
    SM_STATIONS_STREAM_SEARCH_STREAM_3,
    SM_STATIONS_STREAM_SEARCH_STREAM_4,
    SM_STATIONS_STREAM_DISCONNECT,
    SM_DISCONNECTION_WAIT,
    SM_CONNECT,
    SM_CONNECT_WAIT,
    SM_GET_HEADERS,
    SM_PLAYING,
    SM_FOUND_METADATA,
    SM_GET_METADATA
} MP3_STATES;


//******************************************************************************
//******************************************************************************
// Section: Variables
//******************************************************************************
//******************************************************************************

static BOOL             bUnderrunOccured    = TRUE;
static BOOL             Opened              = FALSE;
static TCP_SOCKET       MySocket            = INVALID_SOCKET;
static MP3_STATES       smMP3State          = SM_IDLE;
static volatile WORD    wHeadPtr            = AUDIO_BUFFER_START;
static volatile WORD    wTailPtr            = AUDIO_BUFFER_START;

extern BYTE             genre;
static BYTE             genreRetryCount;
extern GENRE_INFO       genres[];
extern IRADIO_INFO      iRadioStatus;
extern BYTE             maxStationBitRate;
BYTE                    oneChar;
char                    shoutcastHost[20] = SHOUTCAST_HOST;         // Shoutcast host, in case it is redirected.
extern BYTE             station;                                    // Current selected station
extern BYTE             stationCount;                               // Number of available stations for the genre
#pragma udata SectionHostName
BYTE                    stationHostName[MAX_LENGTH_HOST_NAME];      // Host name string of the server
extern BYTE             stationMessage[MAX_LENGTH_MESSAGE];
#pragma udata SectionHostPath
BYTE                    stationPath[MAX_LENGTH_PATH];               // Stream path name
#pragma udata SectionDefault
WORD                    stationPort;                                // TCP Port the remote server daemon is listening on
extern STATION_INFO     stations[STATION_COUNT];

#if defined(__18CXX)
    #pragma udata SectionStationName
#endif
BYTE                    stationName[MAX_LENGTH_HUMAN_NAME];         // Readable station name
#if defined(__18CXX)
    #pragma udata
#endif

//******************************************************************************
//******************************************************************************
// Section: Macros
//******************************************************************************
//******************************************************************************

#define HIGH(a)                         (((a)>>8) & 0xFF)
#define LOW(a)                          ((a) & 0xFF)

#if defined( __18CXX )
    #define TIMER_INTERRUPT_DISABLE()   { PIE2bits.TMR3IE = 0; }
    #define TIMER_INTERRUPT_ENABLE()    { PIE2bits.TMR3IE = 1; }
#elif defined( __C30__ )
    #define TIMER_INTERRUPT_DISABLE()   { IEC0bits.T2IE = 0; }
    #define TIMER_INTERRUPT_ENABLE()    { IEC0bits.T2IE = 1; }
#else
    #error Specify timer information
#endif

#if defined (__18CXX)
    #define WaitForDataByte()   {while(!MP3_SPI_IF); MP3_SPI_IF = 0;}
    #define SPI_ON_BIT          (MP3_SPICON1bits.SSPEN)
#elif defined(__C30__)
    #define WaitForDataByte()   {while ((MP3_SPISTATbits.SPITBF == 1) || (MP3_SPISTATbits.SPIRBF == 0));}
    #define SPI_ON_BIT          (MP3_SPISTATbits.SPIEN)
#elif defined( __PIC32MX__ )
    #define WaitForDataByte()   {while (!MP3_SPISTATbits.SPITBE || !MP3_SPISTATbits.SPIRBF);}
    #define SPI_ON_BIT          (MP3_SPICON1bits.ON)
#else
    #error Determine SPI flag mechanism
#endif


//******************************************************************************
//******************************************************************************
// Section: Application Callable Functions
//******************************************************************************
//******************************************************************************


/****************************************************************************
  Function:
    void MP3ClientInit(void)

  Description:
    Sets up needed interrupts for the MP3 decoder (TMR3 for SPI idle detection
    and feeding MP3 decoder)

  Precondition:
    None

  Parameters:
    None - None

  Returns:
    None

  Remarks:
    None
  ***************************************************************************/
void MP3ClientInit(void)
{
    #if defined( __18CXX )
        // Set up Timer 3 to automatically feed the MP3 decoder periodically
        T3CON = 0xB1;   // 16-bit mode, 1:8 prescale, internal clock, timer enabled
        TMR3H = HIGH(-((GetPeripheralClock()/8 + MP3_INTERRUPT_FREQ/2)/MP3_INTERRUPT_FREQ));
        TMR3L = LOW(-((GetPeripheralClock()/8 + MP3_INTERRUPT_FREQ/2)/MP3_INTERRUPT_FREQ));
        IPR2bits.TMR3IP = 1;    // High priority interrupt
        PIR2bits.TMR3IF = 0;    // Clear interrupt flag
        PIE2bits.TMR3IE = 1;    // Enable the interrupt
    #elif defined( __C30__ ) && defined( INTERNET_RADIO )
        #define STOP_TIMER_IN_IDLE_MODE     0x2000
        #define TIMER_SOURCE_INTERNAL       0x0000
        #define TIMER_ON                    0x8000
        #define GATED_TIME_DISABLED         0x0000
        #define TIMER_16BIT_MODE            0x0000
        #define TIMER_PRESCALER_1           0x0000
        #define TIMER_PRESCALER_8           0x0010
        #define TIMER_PRESCALER_64          0x0020
        #define TIMER_PRESCALER_256         0x0030

        IFS0bits.T2IF = 0;

        TMR2 = 0;
        PR2 = ((GetPeripheralClock() + MP3_INTERRUPT_FREQ/2)/MP3_INTERRUPT_FREQ) & 0xFFFF;
        T2CON = TIMER_ON | STOP_TIMER_IN_IDLE_MODE | TIMER_SOURCE_INTERNAL |
                GATED_TIME_DISABLED | TIMER_16BIT_MODE | TIMER_PRESCALER_1;

        IEC0bits.T2IE = 1;
    #else
        #error Initialize timer
    #endif
}


/****************************************************************************
  Function:
    void MP3ClientTask(void)

  Description:
    Downloads an MP3 or WAV from a Shoutcast server or similar and plays it.

  Precondition:
    None

  Parameters:
    None - None

  Returns:
    None

  Remarks:
    None
  ***************************************************************************/
void MP3ClientTask(void)
{
    static DWORD dwMetaDataInterval;
    static DWORD dwNextMetaData;
    BOOL            lastPacket = TRUE;
    static BYTE     *rstrMessage;
    BYTE            stationBitrate;
    static TICK     Timer;
    WORD            wRemaining;
    WORD            wLen;
    WORD            wLengthStationEntry;
    static DWORD dwTimer;
    static enum
    {
        SM_FIND_HEADERS = 0,
        SM_FOUND_NAME,
        SM_FOUND_METAINT,
        SM_FOUND_LOCATION_REDIRECTION
    } smHeaderParser;
    #if defined( __18CXX )
        BYTE vBuffer[32];
    #else
        BYTE vBuffer[128];
    #endif
    BYTE strHeader[65];
    BYTE *strTitle;
    WORD w, wMin, wSpace;
    BYTE i;
    WORD wHeadPtrShadow;
    WORD wTailPtrShadow;

    // Reconnect if we lost our connection to the remote server -- a
    // common task that needs to be done in almost every state
    if((BYTE)smMP3State >= (BYTE)SM_GET_HEADERS)
    {
        if(!TCPIsConnected(MySocket))
        {
	        static WORD wLastRXDataWaitingLen = 0xFFFF;

			// Close socket on our end after giving a chance for any remaining 
			// RX data to be consumed.  If the RX data count doesn't change 
			// between two iterations, then we can assume that the application 
			// doesn't need any of the RX data, so we can close the socket on 
			// our end now.
	        w = TCPIsGetReady(MySocket);
	        if(w == wLastRXDataWaitingLen)
	        {
	            TCPDisconnect(MySocket);
	            TCPDisconnect(MySocket);
	            MySocket = INVALID_SOCKET;
	            smMP3State = SM_DISCONNECTION_WAIT;
	            dwTimer = TickGet() + 3*TICK_SECOND;
	            oledPutROMString((ROM BYTE*)"Disconnect ", 0xB1, 0, 2);
	            wLastRXDataWaitingLen = 0xFFFF;
	            return;
			}
			wLastRXDataWaitingLen = w;
        }
    }

    // Get buffer head and tail shadows (interrupt safe)
    TIMER_INTERRUPT_DISABLE();
    wHeadPtrShadow = wHeadPtr;
    wTailPtrShadow = wTailPtr;
    TIMER_INTERRUPT_ENABLE();

    // Show buffered data count on OLED display
    #if defined(MP3_DEBUG_PRINT_BUFFER_FILLED)
    {
        static BYTE strSize[6];
        BYTE i;
        WORD wSpace;

        // Only do an update if we have changed by 128 bytes or more
        if(wHeadPtrShadow >= wTailPtrShadow)
            wSpace = wHeadPtrShadow - wTailPtrShadow;
        else
            wSpace = AUDIO_BUFFER_LEN - (wTailPtrShadow - wHeadPtrShadow);

        uitoa(wSpace, strSize);

        for(i = strlen(strSize); i < sizeof(strSize)-1; i++)
            strSize[i] = ' ';
        strSize[sizeof(strSize)-1] = 0;
        oledPutString(strSize, 0xB4, 92, 1);
    }
    #endif


    while (lastPacket)
    {
        lastPacket = FALSE;

        switch(smMP3State)
        {
            case SM_IDLE:
                break;

            case SM_STATIONS_LIST_OPEN_SOCKET:
                // Initialize station list
                stationCount = 0;
                for (i = 0; i<STATION_COUNT;  i++)
                {
                    stations[i].ID[0] = 0;
                }

                MySocket = TCPOpen((DWORD)(PTR_BASE)(BYTE *)shoutcastHost, TCP_OPEN_RAM_HOST, SHOUTCAST_PORT, TCP_PURPOSE_MP3_CLIENT);
                if(MySocket == INVALID_SOCKET)
                    return;

                Timer = TickGet();
                genreRetryCount = 0;
                smMP3State++;
                break;

            case SM_STATIONS_LIST_SOCKET_OBTAINED:
                // Wait for the remote server to accept our connection request
                if(!TCPIsConnected(MySocket))
                {
                    // Time out if too much time is spent in this state
                    if(TickGet() - Timer > 5*TICK_SECOND)
                    {
                        iRadioStatus.bConnect1Error = 1;
                        iRadioStatus.bShowError = 1;
                        stationCount = 0;
                        smMP3State = SM_STATIONS_STREAM_DISCONNECT;
                    }
                    break;
                }

                // Ensure it is safe to write
                if(TCPIsPutReady(MySocket) < 125u)
                    break;

                Timer = TickGet();

                // Make the HTTP request
                TCPPutROMString( MySocket, (ROM BYTE*)"GET " );
                TCPPutROMString( MySocket, (ROM BYTE*)SHOUTCAST_PATH_GENRE );   // Path
                TCPPutROMString( MySocket, (ROM BYTE*)(genres[genre].ShoutcastName) );
                TCPPutROMString( MySocket, (ROM BYTE*)" HTTP/1.0\r\nHost: " );
                TCPPutString   ( MySocket, (BYTE *)shoutcastHost );                     // Host
                TCPPutROMString( MySocket, (ROM BYTE*)"\r\nConnection: close\r\n\r\n" );
                TCPFlush(MySocket);

                smMP3State++;
                break;

            case SM_STATIONS_LIST_CHECK_REDIRECT:
                // Must consume all pending data for last packet
                if(!TCPIsConnected(MySocket))
                    lastPacket = TRUE;

                wLen = TCPIsGetReady(MySocket);
                if (wLen < 12u)
                {
                    // Time out if too much time is spent in this state
                    if(TickGet() - Timer > 5*TICK_SECOND)
                    {
                        if (++genreRetryCount < MAX_RETRIES_STATIONS)
                        {
                            // Disconnect current socket
                            TCPDisconnect(MySocket);
                            MySocket = INVALID_SOCKET;

                            // Try again.
                            smMP3State = SM_STATIONS_LIST_OPEN_SOCKET;
                        }
                        else
                        {
                            iRadioStatus.bRedirect1Error = 1;
                            iRadioStatus.bShowError = 1;
                            smMP3State = SM_STATIONS_STREAM_DISCONNECT;
                        }
                    }
                    break;
                }

                Timer = TickGet();

                // Check for errors
                TCPGetArray( MySocket, stationMessage, 12 );
                if (stationMessage[9] == '5')
                {
                    // 5xx error message - fatal server error
                    // Usually, the server is just busy.  Try again if we can.
                    if (++genreRetryCount < MAX_RETRIES_STATIONS)
                    {
                        // Disconnect current socket
                        TCPDisconnect(MySocket);
                        MySocket = INVALID_SOCKET;

                        // Try again.
                        smMP3State = SM_STATIONS_LIST_OPEN_SOCKET;
                    }
                    else
                    {
                        iRadioStatus.bServerError = 1;
                        iRadioStatus.bShowError = 1;
                        smMP3State = SM_STATIONS_STREAM_DISCONNECT;
                    }
                }
                else if (stationMessage[9] == '4')
                {
                    // 4xx error message - fatal client error
                    iRadioStatus.bClientError = 1;
                    iRadioStatus.bShowError = 1;
                    smMP3State = SM_STATIONS_STREAM_DISCONNECT;
                }
                else if (stationMessage[9] == '3')
                {
                    // 3xx error message - we need to connect to a different location.
                    smMP3State = SM_STATIONS_LIST_DO_REDIRECT_1;
                }
                else
                {
                    // The connection is good.
                    smMP3State = SM_STATIONS_LIST_SEARCH_STATION_HEADER;
                }
                break;

            case SM_STATIONS_LIST_DO_REDIRECT_1:
                // Must consume all pending data for last packet
                if(!TCPIsConnected(MySocket))
                    lastPacket = TRUE;

                // Get the new redirection location.
                wLen = TCPFindROMArray(MySocket, (ROM BYTE*)"Location: http://", 17, 0, TRUE);
                if (wLen == 0xFFFF)
                {
                    // Time out if too much time is spent in this state
                    if(TickGet() - Timer > 5*TICK_SECOND)
                    {
                        // The returned data does not have a redirect location.
                        iRadioStatus.bRedirect2Error = 1;
                        iRadioStatus.bShowError = 1;
                        smMP3State = SM_STATIONS_STREAM_DISCONNECT;
                        break;
                    }
                }
                Timer = TickGet();
                TCPGetArray(MySocket, NULL, wLen + 17);
                smMP3State ++;
                break;

            case SM_STATIONS_LIST_DO_REDIRECT_2:
                // Must consume all pending data for last packet
                if(!TCPIsConnected(MySocket))
                    lastPacket = TRUE;

                wLen = TCPFind(MySocket, '/', 0, FALSE);
                if(wLen == 0xffff)
                {
                    // Time out if too much time is spent in this state
                    if(TickGet() - Timer > 5*TICK_SECOND)
                    {
                        iRadioStatus.bRedirect3Error = 1;
                        iRadioStatus.bShowError = 1;
                        smMP3State = SM_STATIONS_STREAM_DISCONNECT;
                        break;
                    }
                }
                wLen = TCPGetArray(MySocket, (BYTE *)shoutcastHost, wLen);
                shoutcastHost[wLen] = '\0';

                // Disconnect current socket
                TCPDisconnect(MySocket);
                MySocket = INVALID_SOCKET;

                // Try again with the new host address.
                smMP3State = SM_STATIONS_LIST_OPEN_SOCKET;
                break;

            case SM_STATIONS_LIST_SEARCH_STATION_HEADER:
                // Must consume all pending data for last packet
                if(!TCPIsConnected(MySocket))
                    lastPacket = TRUE;

                // Look for a "station" element.
                wLen = TCPFindROMArray(MySocket, (ROM BYTE*)"<station", 8, 0, TRUE);
                if(wLen == 0xffff)
                {
                    // Time out if too much time is spent in this state
                    if(TickGet() - Timer > 5*TICK_SECOND)
                    {
                        stationCount = 0;
                        iRadioStatus.bNoStationsReceived = 1;
                        iRadioStatus.bShowError = 1;
                        smMP3State = SM_STATIONS_STREAM_DISCONNECT;
                        break;
                    }

                    wLen = TCPIsGetReady(MySocket);
                    if(wLen > 8u)
                        TCPGetArray(MySocket, NULL, wLen - 8);
                    lastPacket = FALSE;
                    break;
                }

                // Remove the station element portion.
                Timer = TickGet();
                TCPGetArray(MySocket, NULL, wLen + 8);
                smMP3State ++;
                break;

            case SM_STATIONS_LIST_SEARCH_STATION_INFO:
                // Must consume all pending data for last packet
                if(!TCPIsConnected(MySocket))
                    lastPacket = TRUE;

                // Look for the end of the element.
                wLengthStationEntry = TCPFindROMArray(MySocket, (ROM BYTE*)"</station>", 10, 0, FALSE);
                if(wLengthStationEntry == 0xffff)
                {
                    // Wait until the buffer has the tag terminator.
                    // Time out if too much time is spent in this state.
                    if(TickGet() - Timer > 5*TICK_SECOND)
                    {
                        stationCount = 0;
                        iRadioStatus.bStationFormatError = 1;
                        iRadioStatus.bShowError = 1;
                        smMP3State = SM_STATIONS_STREAM_DISCONNECT;
                        break;
                    }
                    break;
                }

                // At this point, we have the entire station element, so we don't have
                // to check if we need return to the main loop to grab more data.

                // Check the encoding type within this element.
                wLen = TCPFindROMArrayEx(MySocket, (ROM BYTE*)"mt=\"audio/mpeg\"", 15, 0, wLengthStationEntry, FALSE);
                if (wLen == 0xFFFF)
                {
                    // It's not mpeg, so we cannot play it.  Remove the entry and try to find another entry.
                    lastPacket = FALSE;
                    TCPGetArray(MySocket, NULL, wLengthStationEntry);
                    smMP3State = SM_STATIONS_LIST_SEARCH_STATION_HEADER;
                    break;
                }

                // Look for an "id" attribute.
                wLen = TCPFindROMArrayEx(MySocket, (ROM BYTE*)"id=\"", 4, 0, wLengthStationEntry, TRUE);
                if (wLen == 0xFFFF)
                {
                    // error in format
                }

                // Remove, and look for the end of the attribute value.
                TCPGetArray(MySocket, NULL, wLen + 4);
                wRemaining = wLengthStationEntry - (wLen + 4);
                wLen = TCPFindEx(MySocket, 0x22, 0, wLengthStationEntry, FALSE); // double quote
                if (wLen == 0xFFFF)
                {
                    // error in format
                }

                // Extract the station ID.
                if(wLen > MAX_LENGTH_ID - 1)
                    wLen = MAX_LENGTH_ID - 1;
                wLen = TCPGetArray(MySocket, stations[stationCount].ID, wLen);
                wRemaining -= wLen;
                stations[stationCount].ID[wLen] = '\0';

                // Check the bit rate of this station.
                wLen = TCPFindROMArrayEx(MySocket, (ROM BYTE*)"br=\"", 4, 0, wRemaining, TRUE);
                if (wLen == 0xFFFF)
                {
                    // error in format
                }
                {
                    BYTE    i;
                    char    oneByte;

                    wRemaining -= TCPGetArray(MySocket, NULL, wLen + 4);

                    stationBitrate = 0;
                    for (i=0; i<3u; i++)
                    {
                        wRemaining -= TCPGetArray( MySocket, &oneByte, 1 );
                        if (('0' <= oneByte) && (oneByte <= '9'))
                        {
                            stationBitrate = stationBitrate * 10 + (oneByte - '0');
                        }
                    }
                }
                if (stationBitrate > maxStationBitRate)
                {
                    // The bit rate is too high, so we cannot play it.  Remove the entry and try to find another entry.
                    lastPacket = FALSE;
                    TCPGetArray(MySocket, NULL, wRemaining);
                    smMP3State = SM_STATIONS_LIST_SEARCH_STATION_HEADER;
                    break;
                }

                // If we have room, go back and get the next station.
                // Otherwise, disconnect and get the streams.
                stationCount ++;
                if (stationCount < STATION_COUNT)
                {
                    smMP3State = SM_STATIONS_LIST_SEARCH_STATION_HEADER;
                }
                else
                {
                    smMP3State++;
                }
                break;

            case SM_STATIONS_LIST_DISCONNECT:
                // Close the socket so it can be reused
                TCPDisconnect(MySocket);
                MySocket = INVALID_SOCKET;

                if (stations[0].ID[0] == 0u)
                {
                    // If we couldn't get any stations, set a flag and
                    // exit this attempt.
                    iRadioStatus.bListDisconnect = 1;
                    iRadioStatus.bShowError = 1;
                    smMP3State = SM_IDLE;
                }
                else
                {
                    // Open the first station.  This also sets smMP3State.
                    iRadioStatus.bStationsValid = 1;
                    station = 0;
                    MP3OpenStation(&stations[station]);
                }
                break;

            case SM_STATIONS_STREAM_OPEN_SOCKET:
                // Open a socket so we can request station information.
                MySocket = TCPOpen((DWORD)(PTR_BASE)(BYTE *)shoutcastHost, TCP_OPEN_RAM_HOST, SHOUTCAST_PORT, TCP_PURPOSE_MP3_CLIENT);
                if(MySocket == INVALID_SOCKET)
                    return;

                Timer = TickGet();
                genreRetryCount = 0;
                smMP3State++;
                break;

            case SM_STATIONS_STREAM_SOCKET_OBTAINED:
                // Wait for the remote server to accept our connection request
                if(!TCPIsConnected(MySocket))
                {
                    // Time out if too much time is spent in this state
                    if(TickGet() - Timer > 5*TICK_SECOND)
                    {
                        iRadioStatus.bConnect2Error = 1;
                        iRadioStatus.bShowError = 1;
                        smMP3State = SM_STATIONS_STREAM_DISCONNECT;
                    }
                    break;
                }

                // Ensure it is safe to write
                if(TCPIsPutReady(MySocket) < 125u)
                    break;

                Timer = TickGet();

                // Make the HTTP request
                TCPPutROMString( MySocket, (ROM BYTE*)"GET " );
                TCPPutROMString( MySocket, (ROM BYTE*)SHOUTCAST_PATH_STREAM );  // Path
                TCPPutString   ( MySocket, stations[station].ID );
                TCPPutROMString( MySocket, (ROM BYTE*)" HTTP/1.0\r\nHost: " );
                TCPPutString   ( MySocket, (BYTE *)shoutcastHost );           // Host
                TCPPutROMString( MySocket, (ROM BYTE*)"\r\nConnection: close\r\n\r\n" );
                TCPFlush(MySocket);

                smMP3State++;
                break;

            case SM_STATIONS_STREAM_NUMBER_OF_ENTRIES:
                // Must consume all pending data for last packet
                if(!TCPIsConnected(MySocket))
                    lastPacket = TRUE;

                wLen = TCPIsGetReady(MySocket);
                if (wLen < 17u)
                {
                    // Time out if too much time is spent in this state
                    if(TickGet() - Timer > 5*TICK_SECOND)
                    {
                        // Sometimes we get a 503 Service Temporarily Unavailable here.  Try again if we can.
                        if (++genreRetryCount < MAX_RETRIES_STREAMS)
                        {
                            // Disconnect current socket
                            TCPDisconnect(MySocket);
                            MySocket = INVALID_SOCKET;

                            // Try again.
                            smMP3State = SM_STATIONS_STREAM_OPEN_SOCKET;
                        }
                        else
                        {
                            iRadioStatus.bNoStreamReceived1 = 1;
                            iRadioStatus.bShowError = 1;
                            smMP3State = SM_STATIONS_STREAM_DISCONNECT;
                        }
                    }
                    break;
                }

                // Make sure there is at least one entry.  Otherwise, disconnect.
                wLen = TCPFindROMArray(MySocket, (ROM BYTE*)"numberofentries=", 16, 0, TRUE);
                if(wLen == 0xffff)
                {// Not found
                    wLen = TCPIsGetReady(MySocket);
                    if(wLen > 16u)
                        TCPGetArray(MySocket, NULL, wLen - 16);
                    lastPacket = FALSE;
                    break;
                }
                TCPGetArray(MySocket, NULL, wLen + 16);
                TCPGetArray(MySocket, &oneChar, 1 );
                if (oneChar == '0')
                {
                    iRadioStatus.bNoStreamReceived2 = 1;
                    iRadioStatus.bShowError = 1;
                    smMP3State = SM_STATIONS_STREAM_DISCONNECT;
                }
                else
                {
                    Timer = TickGet();
                    smMP3State ++;
                }
                break;

            case SM_STATIONS_STREAM_SEARCH_STREAM_1:
                // Must consume all pending data for last packet
                if(!TCPIsConnected(MySocket))
                    lastPacket = TRUE;

                // Look for a URL for the audio stream.
                wLen = TCPFindROMArray(MySocket, (ROM BYTE*)"http://", 7, 0, TRUE);
                if (wLen == 0xffff)
                {
                    // Time out if too much time is spent in this state
                    if(TickGet() - Timer > 5*TICK_SECOND)
                    {
                        iRadioStatus.bNoStreamReceived3 = 1;
                        iRadioStatus.bShowError = 1;
                        smMP3State = SM_STATIONS_STREAM_DISCONNECT;
                    }

                    wLen = TCPIsGetReady(MySocket);
                    if(wLen > 7u)
                        TCPGetArray(MySocket, NULL, wLen - 7);
                    lastPacket = FALSE;
                    break;
                }

                Timer = TickGet();
                TCPGetArray(MySocket, NULL, wLen + 7);
                smMP3State ++;
                break;

            case SM_STATIONS_STREAM_SEARCH_STREAM_2:
                // Must consume all pending data for last packet
                if(!TCPIsConnected(MySocket))
                    lastPacket = TRUE;

                // Look for the end of the line with the host URL
                wLen = TCPFind(MySocket, 0x0A, 0, FALSE);
                if (wLen == 0xffff)
                {
                    // Time out if too much time is spent in this state
                    if(TickGet() - Timer > 5*TICK_SECOND)
                    {
                        iRadioStatus.bNoStreamReceived4 = 1;
                        iRadioStatus.bShowError = 1;
                        smMP3State = SM_STATIONS_STREAM_DISCONNECT;
                    }
                    lastPacket = FALSE;
                    break;
                }

                // We now have the host URL, the port, and the path in memory,
                // so we do not have to check for going back to the main loop.

                // Extract the host name.
                // Note: Ensure that MAX_LENGTH_HOST_NAME is big enough for all the
                // host names, or we will not be able to connect.
                wLen = TCPFind(MySocket, ':', 0, FALSE);
                wLen = TCPGetArray(MySocket, stationHostName, wLen);
                stationHostName[wLen] = '\0';

                TCPGetArray(MySocket, NULL, 1 );    // Skip the ':'

                // Extract the port.  NOTE: If the application is operating behind a
                // firewall, some ports may be blocked, and we will not be able to
                // receive the audio.
                stationPort = 0;
                oneChar     = '0';
                do
                {
                    stationPort *= 10;
                    stationPort += oneChar - '0';
                    TCPGetArray(MySocket, &oneChar, 1 );
                } while (('0' <= oneChar) && (oneChar <= '9'));

                // See if there is a stream path.  If so, extract the path.
                stationPath[0] = '\0';
                if (oneChar != 0x0Au)
                {
                    wLen = TCPFind(MySocket, 0x0a, 0, FALSE);
                    if(wLen != 0xFFFFu)
                    {
                        TCPGetArray( MySocket, stationPath, wLen );
                        stationPath[wLen] = '\0';
                    }
                }
                smMP3State ++;
                break;

            case SM_STATIONS_STREAM_SEARCH_STREAM_3:
                // Must consume all pending data for last packet
                if(!TCPIsConnected(MySocket))
                    lastPacket = TRUE;

                // Look for the end of the first portion of the Title entry.
                wLen = TCPFind(MySocket, 0x29, 0, FALSE);       // ')'
                if (wLen == 0xFFFFu)
                {
                    // Time out if too much time is spent in this state
                    if(TickGet() - Timer > 5*TICK_SECOND)
                    {
                        // We have the URL and port, but we don't have the name.
                        // We should still be able to connect to the station.
                        //iRadioStatus.bNoStreamReceived = 1;
                        //iRadioStatus.bShowError = 1;
                        smMP3State = SM_STATIONS_STREAM_DISCONNECT;
                    }
                    lastPacket = FALSE;
                    break;
                }

                TCPGetArray( MySocket, NULL, wLen + 1 );    // Discard the first portion.

                smMP3State ++;
                break;

            case SM_STATIONS_STREAM_SEARCH_STREAM_4:
                // Must consume all pending data for last packet
                if (!TCPIsConnected(MySocket))
                    lastPacket = TRUE;

                // Extract the readable station name.

                // Clear leading whitespace
                while (TCPFindEx( MySocket, ' ', 0, 1, FALSE ) == 0u )
                {
                    TCPGet( MySocket, NULL );
                }

                // Look for the end of the Title entry.
                wLen = TCPFind(MySocket, 0x0A, 0, FALSE);
                if (wLen == 0xFFFFu)
                {
                    // Time out if too much time is spent in this state
                    if(TickGet() - Timer > 5*TICK_SECOND)
                    {
                        // We have the URL and port, but we don't have the name.
                        // We should still be able to connect to the station.
                        //iRadioStatus.bNoStreamReceived = 1;
                        //iRadioStatus.bShowError = 1;
                        smMP3State = SM_STATIONS_STREAM_DISCONNECT;
                    }
                    lastPacket = FALSE;
                    break;
                }

                // Extract the station name.
                if(wLen > MAX_LENGTH_HUMAN_NAME - 1)
                    wLen = MAX_LENGTH_HUMAN_NAME - 1;
                wLen = TCPGetArray(MySocket, stationName, wLen);
                stationName[wLen] = '\0';

                // Quick Fix to make string XML friendly; '&' and '<' are reserved symbols in XML
                {
                    BYTE i;
                    i = 0;
                    while(i < wLen)
                    {
                        if(stationName[i] == '&')
                        {
                            stationName[i] = '*';
                        }
                        else if(stationName[i] == '<')
                        {
                            stationName[i] = '(';
                        }
                        i++;
                    }
                }//end Quick Fix

                smMP3State ++;
                break;

            case SM_STATIONS_STREAM_DISCONNECT:
                // Close the socket so it can be reused
                TCPDisconnect(MySocket);
                MySocket = INVALID_SOCKET;

                // Connect to the first station if we have no errors.
                // Otherwise, go to the idle state.
                if (IRadioError())
                {
                    smMP3State = SM_IDLE;
                }
                else
                {
                    smMP3State = SM_CONNECT;
                }
                break;

            case SM_DISCONNECTION_WAIT:
                if((LONG)(TickGet() - dwTimer) >= (LONG)0)
                    smMP3State = SM_CONNECT;
                break;

            // Initiate TCP connection
            case SM_CONNECT:
                if(!DHCPIsBound(0))
                    break;

                // Since this string has a C comment delimiter embedded in it, we have to stick it here.
                // Otherwise, if the #ifdef is false, the compiler sees this as a comment.
                #define ACCEPT_STRING           "\r\nAccept: */*\r\nIcy-MetaData:1\r\nConnection: close\r\n\r\n"

                MySocket = TCPOpen((DWORD)(PTR_BASE)&stationHostName[0], TCP_OPEN_RAM_HOST, stationPort, TCP_PURPOSE_MP3_CLIENT);
                if(MySocket == INVALID_SOCKET)
                    return;

                // Clear out the display, in case the stream doesn't send back the song title.
                oledFillLine(0x00,0);
                oledFillLine(0x00,1);
                oledFillLine(0x00,2);
                oledFillLine(0x00,3);

                strcpypgm2ram( (char *)stationMessage, "GET /" );
                strcat( (char *)stationMessage, (char *)stationPath );
                strcatpgm2ram( (char *)stationMessage, " HTTP/1.0\r\nHost: " );
                strcat( (char *)stationMessage, (char *)stationHostName );
                strcatpgm2ram( (char *)stationMessage, ACCEPT_STRING );

                rstrMessage = stationMessage;
                smMP3State = SM_CONNECT_WAIT;
                break;

            // Wait for connection to be established
            case SM_CONNECT_WAIT:
                if(TCPIsConnected(MySocket))
                {
                    if(TCPIsPutReady(MySocket))
                    {
                        rstrMessage = TCPPutString(MySocket, rstrMessage);
                        TCPFlush(MySocket);
                        if(*rstrMessage == 0u)
                        {
                            wHeadPtrShadow = AUDIO_BUFFER_START;
                            wTailPtrShadow = AUDIO_BUFFER_START;
                            TIMER_INTERRUPT_DISABLE();
                            wHeadPtr = wHeadPtrShadow;
                            wTailPtr = wTailPtrShadow;
                            TIMER_INTERRUPT_ENABLE();
                            dwMetaDataInterval = 0;
                            smHeaderParser = SM_FIND_HEADERS;
                            smMP3State = SM_GET_HEADERS;
                        }
                    }
                }
                break;

            case SM_GET_HEADERS:
                switch(smHeaderParser)
                {
                    case SM_FIND_HEADERS:
                        wMin = 0xFFFF;

                        // Look for the "Location: " server redirection URL header
						// This is a highest priority header, if found, ignore 
						// all others and immediately handle the redirection.
                        w = TCPFindROMArray(MySocket, (ROM BYTE*)"\nLocation: http://", 18, 0, TRUE);
                        if(w < wMin)
                        {
                            smHeaderParser = SM_FOUND_LOCATION_REDIRECTION;

                            // Throw away all data up to and including the first header string (but not data)
                            TCPGetArray(MySocket, NULL, w + 18);

			                // Must consume all pending data for last packet
			                if(!TCPIsConnected(MySocket))
			                    lastPacket = TRUE;
                            break;	
                        }

                        // Look for the "icy-name" Server Name header
                        w = TCPFindROMArray(MySocket, (ROM BYTE*)"\nicy-name:", 10, 0, TRUE);
                        if(w < wMin)
                        {
                            wMin = w + 10;
                            smHeaderParser = SM_FOUND_NAME;
                        }

                        // Look for the "icy-metaint" meta data interval field
                        w = TCPFindROMArray(MySocket, (ROM BYTE*)"\nicy-metaint:", 13, 0, TRUE);
                        if(w < wMin)
                        {
                            wMin = w + 13;
                            smHeaderParser = SM_FOUND_METAINT;
                        }

                        // Look for the end of headers marker (two carraige return line feeds)
                        w = TCPFindROMArray(MySocket, (ROM BYTE*)"\r\n\r\n", 4, 0, FALSE);
                        if(w < wMin)
                        {
                            wMin = w + 4;
                            dwNextMetaData = dwMetaDataInterval;
                            smMP3State = SM_PLAYING;
                        }

                        // See if we found at least one header
                        if(wMin != 0xFFFF)
                        {
                            // Throw away all data up to and including the first header string (but not data)
                            TCPGetArray(MySocket, NULL, wMin);
                        }
                        else
                        {
                            // More headers to parse: throw away unneeded headers
                            // 13 is maximum header name field length.  Increase this if you have a bigger header name to find.
                            w = TCPIsGetReady(MySocket);
                            if(w > 13u)
                                TCPGetArray(MySocket, NULL, w - 13);
                        }

                        break;

                    case SM_FOUND_LOCATION_REDIRECTION:
                        // Look for the terminator characters
                        w = TCPFindROMArray(MySocket, (ROM BYTE*)"\r\n", 2, 0, FALSE);
                        if(w == 0xFFFF)
                            break;

		                // We now have the host URL, the port, and the path in memory,
		                // so we do not have to check for going back to the main loop.
		
		                // Extract the host name.
		                // Note: Ensure that MAX_LENGTH_HOST_NAME is big enough for all the
		                // host names, or we will not be able to connect.
		                wLen = TCPFind(MySocket, ':', 0, FALSE);
		                
		                // Error out if we would cause a buffer overflow
						if(wLen >= sizeof(stationHostName))
						{
							iRadioStatus.bRedirect1Error = 1;
							iRadioStatus.bShowError = 1;
							smMP3State = SM_STATIONS_STREAM_DISCONNECT;
							break;
						}
		                
		                wLen = TCPGetArray(MySocket, stationHostName, wLen);
		                stationHostName[wLen] = '\0';
		
		                TCPGetArray(MySocket, NULL, 1 );    // Skip the ':'
		
		                // Extract the port.  NOTE: If the application is operating behind a
		                // firewall, some ports may be blocked, and we will not be able to
		                // receive the audio.
		                stationPort = 0;
		                oneChar     = '0';
		                do
		                {
		                    stationPort *= 10;
		                    stationPort += oneChar - '0';
		                    TCPGetArray(MySocket, &oneChar, 1 );
		                } while (('0' <= oneChar) && (oneChar <= '9'));
		
		                // See if there is a stream path.  If so, extract the path.
		                stationPath[0] = '\0';
		                if (oneChar != 0x0Au)	// Line Feed
		                {
		                    wLen = TCPFind(MySocket, 0x0a, 0, FALSE);
		                    if(wLen != 0xFFFFu)
		                    {
				                // Error out if we would cause a buffer overflow
								if(wLen >= sizeof(stationPath))
								{
									iRadioStatus.bRedirect1Error = 1;
									iRadioStatus.bShowError = 1;
									smMP3State = SM_STATIONS_STREAM_DISCONNECT;
									break;
								}

		                        TCPGetArray( MySocket, stationPath, wLen );
		                        stationPath[wLen] = '\0';

		                        // Strip trailing carriage return if server is using Carriage Return + Line Feed pairs
		                        if(wLen)
		                        {
		                        	if(stationPath[wLen-1] == 0x0Du)	// Carriage Return
		                        		stationPath[wLen-1] = '\0';
		                        }
			                       
		                    }
		                }

						// Disconnect from this server and reconnect with the new redirection URL
			            TCPDisconnect(MySocket);
			            TCPDisconnect(MySocket);
			            MySocket = INVALID_SOCKET;
			            smMP3State = SM_CONNECT;
			            oledPutROMString((ROM BYTE*)"Redirect   ", 0xB1, 0, 2);
                        break;

                    case SM_FOUND_NAME:
                        // Look for the terminator characters
                        w = TCPFindROMArray(MySocket, (ROM BYTE*)"\r\n", 2, 0, FALSE);
                        if(w == 0xFFFF)
                            break;

                        // Obtain the icy-name header data
                        if(sizeof(strHeader)-1 < w)
                            w = sizeof(strHeader);
                        TCPGetArray(MySocket, strHeader, w);
                        strHeader[w] = 0;

                        // Remove any spaces in front
                        strTitle = strHeader;
                        while(*strTitle == ' ')
                        {
                            strTitle++;
                        }

                        // Call user callback to let us know that we have this data
                        NewServerTitleProc(strTitle);

                        smHeaderParser = SM_FIND_HEADERS;
                        break;

                    case SM_FOUND_METAINT:
                        // Look for the terminator characters
                        w = TCPFindROMArray(MySocket, (ROM BYTE*)"\r\n", 2, 0, FALSE);
                        if(w == 0xFFFF)
                            break;

                        // Obtain and convert the meta interval to a DWORD (from ASCII string)
                        if(sizeof(strHeader)-1 < w)
                            w = sizeof(strHeader);
                        TCPGetArray(MySocket, strHeader, w);
                        strHeader[w] = 0;
                        dwMetaDataInterval = atol((char *)strHeader);

                        smHeaderParser = SM_FIND_HEADERS;
                        break;
                }
                break;

            case SM_PLAYING:
                // Write incoming TCP data to vBuffer
                while(1)
                {
                    // Calculate the free space in our ring buffer
                    if(wHeadPtrShadow >= wTailPtrShadow)
                        wSpace = (AUDIO_BUFFER_LEN - 1) - (wHeadPtrShadow - wTailPtrShadow);
                    else
                        wSpace = wTailPtrShadow - wHeadPtrShadow - 1;

                    if(wSpace == 0u)
                        break;

                    // Find the number of bytes waiting in the TCP FIFO
                    w = TCPIsGetReady(MySocket);
                    if(w == 0u)
                        break;

                    // Don't fetch more bytes that we can store
                    if(w > wSpace)
                        w = wSpace;
                    if(w > sizeof(vBuffer))
                        w = sizeof(vBuffer);

                    // Don't fetch meta data bytes
                    if(dwMetaDataInterval)
                    {
                        if(w > dwNextMetaData)
                            w = dwNextMetaData;
                    }

                    // Don't fetch more bytes than can fit in the FIFO
                    // without causing a wrapparound
                    if(w >= AUDIO_BUFFER_START + AUDIO_BUFFER_LEN - wHeadPtrShadow)
                    {
                        // Fetch the bytes
                        w = AUDIO_BUFFER_START + AUDIO_BUFFER_LEN - wHeadPtrShadow;
                        TCPGetArray(MySocket, vBuffer, w);
                        SPIRAM2PutArray(wHeadPtrShadow, vBuffer, w);
                        wHeadPtrShadow = AUDIO_BUFFER_START;
                    }
                    else
                    {
                        // Fetch the bytes
                        TCPGetArray(MySocket, vBuffer, w);
                        SPIRAM2PutArray(wHeadPtrShadow, vBuffer, w);
                        wHeadPtrShadow += w;
                    }

                    // Retrieve meta data if it is coming up
                    if(dwMetaDataInterval)
                    {
                        dwNextMetaData -= w;
                        if(dwNextMetaData == 0u)
                        {
                            smMP3State = SM_FOUND_METADATA;
                            break;
                        }
                    }
                }
                break;

            case SM_FOUND_METADATA:
                if(!TCPIsGetReady(MySocket))
                    break;

                // Get the meta data length (/16) and calculate actual value
                *((WORD*)&dwNextMetaData) = 0;
                TCPGet(MySocket, (BYTE*)&dwNextMetaData);
                *((WORD*)&dwNextMetaData) <<= (WORD)4;  // Multiply by 16

                smMP3State = SM_GET_METADATA;
                // No break

            case SM_GET_METADATA:
                if(TCPIsGetReady(MySocket) < (WORD)dwNextMetaData)
                    break;

                w = (WORD)dwNextMetaData;
                if(w > sizeof(strHeader) - 1)
                    w = sizeof(strHeader) - 1;

                // Retrieve the meta data and null terminate it
                TCPGetArray(MySocket, strHeader, w);
                strHeader[w] = 0;

                // Throw away any other meta data bytes that we don't
                // have space to store
                if((WORD)dwNextMetaData > w)
                    TCPGetArray(MySocket, NULL, (WORD)dwNextMetaData - w);

                if(w)
                {
                    #if defined( __18CXX )
                        strTitle = (BYTE *)strstrrampgm(strHeader, (far ROM BYTE*)"StreamTitle='");
                    #else
                        strTitle = (BYTE *)strstrrampgm((char *)strHeader, (ROM char*)"StreamTitle='");
                    #endif
                    if(strTitle)
                    {
                        // Stringify the stream title and call
                        // NewStreamTitleProc application callback
                        strTitle += 13;
                        for(i = 0; i < strlen((char *)strTitle); i++)
                        {
                            if(strTitle[i] == '\'')
                            {
                                strTitle[i] = 0;
                                NewStreamTitleProc(strTitle);
                                break;
                            }
                        }
                    }
                }

                dwNextMetaData = dwMetaDataInterval;
                smMP3State = SM_PLAYING;
                break;
        }

        // Check for termination when nothing was found
        if (!TCPIsConnected(MySocket) && !lastPacket)
        {
            if ((smMP3State >= SM_STATIONS_LIST_SEARCH_STATION_HEADER) && (smMP3State <= SM_STATIONS_LIST_SEARCH_STATION_INFO))
            {
                iRadioStatus.bEarlyTerm1 = 1;
                smMP3State = SM_STATIONS_LIST_DISCONNECT;
            }
            else if ((smMP3State >= SM_STATIONS_STREAM_NUMBER_OF_ENTRIES) && (smMP3State <= SM_STATIONS_STREAM_SEARCH_STREAM_2))
            {
                iRadioStatus.bEarlyTerm2 = 1;
                smMP3State = SM_STATIONS_STREAM_DISCONNECT;
            }
        }
    }

    TIMER_INTERRUPT_DISABLE();
    wHeadPtr = wHeadPtrShadow;
    TIMER_INTERRUPT_ENABLE();
}


/****************************************************************************
  Function:
    void MP3CloseStation(void)

  Description:
    Stops playing the current station, and disconnects if any.

  Precondition:
    None

  Parameters:
    None - None

  Returns:
    None

  Remarks:
    None
  ***************************************************************************/
void MP3CloseStation(void)
{
    Opened = FALSE;

    if(MySocket != INVALID_SOCKET)
    {
        TCPDisconnect(MySocket);    // Send out a FIN disconnection request
        TCPDisconnect(MySocket);    // Do this a second time to force an immediate disconnect via a RST packet.  This keeps the user interface snappy by not waiting for the remote node to send us a FIN as well.
        MySocket = INVALID_SOCKET;
        smMP3State = SM_IDLE;
    }
}

/****************************************************************************
  Function:
    void MP3GetStationList( void )

  Description:
    Begins the process of getting a list of stations with the selected genre.
    Up to numStations stations will be stored at lpStation.

  Precondition:
    genre must contain the index of the desired genre in the genres[] array

  Parameters:
    None - None

  Returns:
    None

  Remarks:
    None
  ***************************************************************************/
void MP3GetStationList( void )
{
    oledPutROMString((ROM BYTE*)"Getting stations...", 0xB1, 0, 2);
    iRadioStatus.val = IRADIO_STATUS_GETTING_STATION_LIST;
    smMP3State = SM_STATIONS_LIST_OPEN_SOCKET;
}


/****************************************************************************
  Function:
    void MP3OpenStation(STATION_INFO *lpStation)

  Description:
    Begins connected to the remote station

  Precondition:
    None

  Parameters:
    STATION_INFO *lpStation - STATION_INFO filled will ip address, port,
                                and message

  Returns:
    None

  Remarks:
    None
  ***************************************************************************/
void MP3OpenStation(STATION_INFO *lpStation)
{
    if(Opened)
	{
        MP3CloseStation();
    }

    Opened = TRUE;

    oledFillLine(0x00,0);
    oledFillLine(0x00,1);
    oledFillLine(0x00,2);
    oledFillLine(0x00,3);
    oledPutROMString((ROM BYTE*)"Connecting...", 0xB1, 0, 2);
    stationHostName[0]  = 0;
    stationName[0]      = 0;
    stationPath[0]      = 0;
    stationPort         = 0;
    iRadioStatus.val    &= IRADIO_STATUS_CLEAR_ERRORS;
    smMP3State          = SM_STATIONS_STREAM_OPEN_SOCKET;
}


//******************************************************************************
//******************************************************************************
// Section: Interrupt Service Routines
//******************************************************************************
//******************************************************************************

/****************************************************************************
  Function:
    void MP3Interrupt(void)

  Description:
    Periodically copies data into the VLSI audio decoder chip when the DREQ
    signal (INT0) is asserted (active high)

  Precondition:
    None

  Parameters:
    None - None

  Returns:
    None

  Remarks:
    This is meant for the interrupt context only.  Do not call from main
    line code.
  ***************************************************************************/
#if defined( __18CXX )
#pragma tmpdata MP3ISRTemp
void MP3Timer3Interrupt(void)
#elif defined( __C30__ ) && defined( INTERNET_RADIO )
    void __attribute__((interrupt, auto_psv)) _T2Interrupt(void)
#else
    #error Define Timer interrupt handler
#endif

{
    static BYTE     i;
    static BYTE     vBuffer[32];
    volatile BYTE   vDummy;
    static WORD     wSpace;

    #if defined( __18CXX )
        // Reset Timer 3 so that we can poll for a time when the SPI is free
        TMR3H = HIGH(-((GetPeripheralClock()/8 + MP3_INTERRUPT_FREQ/2)/MP3_INTERRUPT_FREQ));
        TMR3L = LOW(-((GetPeripheralClock()/8 + MP3_INTERRUPT_FREQ/2)/MP3_INTERRUPT_FREQ));

        // Clear Timer 3 intrrupt flag
        PIR2bits.TMR3IF = 0;
    #elif defined( __C30__ ) && defined( INTERNET_RADIO )
        IFS0bits.T2IF = 0;
    #else
        #error Reset the timer interrupt flag.
    #endif

    // Return immediately if there is nothing to do
    if(!MP3_DREQ_IO)
        return;

    // Return immediately if we can't process this interrupt
    // because something else is using the SPI right now
    if((SPIRAM_CS_IO == 0u) || (SPIRAM2_CS_IO == 0u) || (MP3_XCS_IO == 0u))
        return;

    // Ensure we have at least 32 bytes in the ring buffer to copy
    if(wHeadPtr >= wTailPtr)
        wSpace = wHeadPtr - wTailPtr;
    else
        wSpace = AUDIO_BUFFER_LEN - (wTailPtr - wHeadPtr);

    if(wSpace < 32u)
    {
        bUnderrunOccured = TRUE;
        return;
    }

    // After an underrun condition, do not start playing again
    // until we have at least half a second of buffered data (or a full buffer
    // if we have only a small buffer)
    if(bUnderrunOccured)
    {
        if(wSpace < (AUDIO_BUFFER_LEN > 8192u ? 8192u : AUDIO_BUFFER_LEN-1))
            return;
        bUnderrunOccured = FALSE;
    }

    // Read bytes from the audio buffer
    SPIRAM2GetArray(wTailPtr, vBuffer, sizeof(vBuffer));
    wTailPtr += sizeof(vBuffer);
    if(wTailPtr >= AUDIO_BUFFER_START + AUDIO_BUFFER_LEN)
        wTailPtr = AUDIO_BUFFER_START;

    // Write the bytes to the MP3 decoder
    {
        BYTE vSPIONSave;
    	#if defined(__18CXX)
    	BYTE MP3SPICONSave;
        BYTE MP3SPISTATSave;
    	#elif defined(__C30__)
    	WORD MP3SPICONSave;
        WORD MP3SPISTATSave
    	#else
    	DWORD MP3SPICONSave;
        DWORD MP3SPISTATSave;
    	#endif

        // Save SPI context
        MP3SPISTATSave = MP3_SPISTAT;
        MP3SPICONSave = MP3_SPICON1;
        vSPIONSave = SPI_ON_BIT;

        #if defined( __18CXX)
            MP3_SPISTATbits.SMP = 0;    // Sample at middle
            MP3_SPISTATbits.CKE = 1;    // Transmit data on rising edge of clock
            MP3_SPICON1 = 0x21;			// SSPEN = 1, CKP = 0, CLK = Fosc/16 (2.604MHz)
        #elif defined( __C30__ )
            SPI_ON_BIT = 0;             // Turn off SPI
            MP3_SPICON1 = 0x0263;       // Fcy Primary prescaler 8:1, secondary prescaler 1:1, CPK=1, CKE=0, SMP=1
            SPI_ON_BIT = 1;             // Turn on SPI
        #else
            #error Define SPI initialization
        #endif

        // Carry out write operation
        MP3_XDCS_IO = 0;                  // Set the data CS pin low
        MP3_SPI_IF = 0;
        for(i = 0; i < sizeof(vBuffer); i++)
        {
    
            MP3_SSPBUF = vBuffer[i];
            WaitForDataByte();
            vDummy = MP3_SSPBUF;
        }
        MP3_XDCS_IO = 1;                  // Set the data CS pin high

        // Restore SPI context
        #if defined( __C30__ )
            SPI_ON_BIT = 0;             // for PIC24, turn off SPI first before changing SPI configuration
        #endif
    	MP3_SPICON1 = MP3SPICONSave;
        MP3_SPISTAT = MP3SPISTATSave;
        SPI_ON_BIT = vSPIONSave;
    }
}

#if defined( __18CXX )
    #pragma tmpdata
#endif

