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

#ifndef MP3CLIENT_H
#define MP3CLIENT_H

#include "TCPIP Stack/TCPIP.h"
#include "VLSICodec.h"

//******************************************************************************
//******************************************************************************
// Section: Constants
//******************************************************************************
//******************************************************************************

#define MAX_LENGTH_HUMAN_NAME   256u
#define MAX_LENGTH_HOST_NAME    64u
#define MAX_LENGTH_MESSAGE      120u
#define MAX_LENGTH_ID           10u
#define MAX_LENGTH_PATH         64u

#define SHOUTCAST_HOST          "shoutcast.com"     // We may get redirected from here...
#define SHOUTCAST_PATH          "/sbin/newxml.phtml"
#define SHOUTCAST_PATH_GENRE    SHOUTCAST_PATH "?genre="
#define SHOUTCAST_PATH_STREAM   "/sbin/tunein-station.pls?id="
#define SHOUTCAST_PORT          80u

#define STATION_COUNT           12u

//******************************************************************************
//******************************************************************************
// Section: Data Types
//******************************************************************************
//******************************************************************************

// This structure contains information about the status of the connection to the
// SHOUTcast server.
typedef union _IRADIO_INFO
{
    DWORD    val;
    struct
    {
        BYTE    bStationOnce        : 1;
        BYTE    bNewStationName     : 1;
        BYTE    bNewSongName        : 1;
        BYTE    bStationsValid      : 1;

        BYTE    bShowError          : 1;
        BYTE    bEarlyTerm1         : 1;
        BYTE    bEarlyTerm2         : 1;
        BYTE    bDisconnectDisplay  : 1;

        BYTE    bConnect1Error      : 1;
        BYTE    bRedirect1Error     : 1;
        BYTE    bServerError        : 1;
        BYTE    bClientError        : 1;

        BYTE    bRedirect2Error     : 1;
        BYTE    bRedirect3Error     : 1;
        BYTE    bNoStationsReceived : 1;
        BYTE    bStationFormatError : 1;

        BYTE    bListDisconnect     : 1;
        BYTE    bConnect2Error      : 1;
        BYTE    bNoStreamReceived1  : 1;
        BYTE    bNoStreamReceived2  : 1;

        BYTE    bNoStreamReceived3  : 1;
        BYTE    bNoStreamReceived4  : 1;
    };
} IRADIO_INFO;

#define IRADIO_STATUS_INIT                  0x00000001u
#define IRADIO_STATUS_GETTING_STATION_LIST  0x00000001u
#define IRADIO_STATUS_CLEAR_ERRORS          0x0000000Fu

// This structure contains information about the availabe genres.
typedef struct _GENRE_INFO
{
    ROM BYTE    *DisplayName;
    ROM BYTE    *ShoutcastName;
    ROM BYTE    *XMLName;
} GENRE_INFO;

// This structure contains information about the stations for the
// selected genre.
typedef struct _STATION_INFO {
    BYTE ID[MAX_LENGTH_ID];                 // ID number string of the station
} STATION_INFO;


//******************************************************************************
//******************************************************************************
// Section: Function Prototypes
//******************************************************************************
//******************************************************************************

#define IRadioError()   ((iRadioStatus.val & 0xFFFFFF00u) != 0u)


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
void MP3ClientInit(void);

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
void MP3ClientTask(void);

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
void MP3CloseStation(void);

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
void MP3GetStationList( void );

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
void MP3OpenStation(STATION_INFO *lpStation);

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
void MP3Timer3Interrupt(void);


// Callback function to let the App know that we received new meta data
extern void NewStreamTitleProc(BYTE *strStreamTitle);
extern void NewServerTitleProc(BYTE *strServerTitle);

#endif

