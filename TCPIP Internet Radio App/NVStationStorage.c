/*********************************************************************
 *
 *	Shoutcast Station Storage
 *  Module for Microchip TCP/IP Stack
 *	 -Provides non-volatile Flash storage of an array of Shoutcast 
 *	  stations for the MP3 client
 *	 -Reference: None
 *
 *********************************************************************
 * FileName:        StationStorage.c
 * Dependencies:    TCPIP.h
 * Processor:       PIC18
 * Compiler:        Microchip C18 v3.30 or higher
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
 * Author               Date    	Comment
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * Howard Schlunder		10/23/07	Original
 ********************************************************************/
#define __STATIONSTORAGE_C

#include "TCPIP Stack/TCPIP.h"
#include "NVStationStorage.h"

//
//  EXTREMELY IMPORTANT!!!
//  THIS CODE HAS NOT BEEN TESTED YET, WHICH MEANS IT IS BROKEN AND BUGGY.
//  This file is not supported at this time.
//	HS - 10/24/2007
//
#if 0


#pragma romdata ROM_STATIONS_SECT=0xFC00
static ROM BYTE vStationData[4096];
#pragma romdata

#pragma udata STATION_SECTION
NVSTATION_RECORD Station;
#pragma udata

#define FLASH_ERASE_SIZE	1024ul
#define FLASH_WRITE_SIZE	64ul


/*********************************************************************
 * Function:        void StationEraseAll(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          Entire station storage is erased from Flash
 *
 * Side Effects:    Takes a long time (~160ms)
 *
 * Overview:        None
 *
 * Note:            None
 ********************************************************************/
void StationEraseAll(void)
{
	BYTE i;
	
	TBLPTR = (DWORD)&vStationData[0];
	for(i = 0; i < sizeof(vStationData)/FLASH_ERASE_SIZE; i++)
	{	
		EECON1bits.WREN = 1;
		EECON1bits.FREE = 1;
		_asm
			movlw	0x55
			movwf	EECON2, ACCESS
			movlw	0xAA
			movwf	EECON2, ACCESS
			bsf		EECON1, 1, ACCESS	//WR
		_endasm
		EECON1bits.WREN = 0;
		TBLPTR += FLASH_ERASE_SIZE;
	}
}

/*********************************************************************
 * Function:        void StationErase(WORD index)
 *
 * PreCondition:    None
 *
 * Input:           index - station number in the list to delete
 *
 * Output:          Station is marked as deleted, if found
 *
 * Side Effects:    Performs a self Flash write, which can take 3+ms
 *
 * Overview:        None
 *
 * Note:            None
 ********************************************************************/
void StationErase(WORD index)
{
	ROM NVSTATION_RECORD *station;

	WORD w;
	BYTE i;
	
	// Find the station corresponding to the given index
	for(w = 0; w < sizeof(vStationData); w += sizeof(NVSTATION_RECORD))
	{
		if(vStationData[w] != 0x01)
			continue;

		station = (ROM NVSTATION_RECORD*)&vStationData[w];
		if(station->vRecordDeleted[0] != 0xFF)
			continue;

		if(index-- == 0)
		{			
			TBLPTR = (DWORD)&(station->vRecordDeleted[0]);

			// Load up the internal Flash holding registers in preperation for the write
			TBLPTR = (DWORD)&(station->vRecordDeleted[0]);
			for(w = 0; w < FLASH_WRITE_SIZE; w++)
			{
				TABLAT = 0x00;
				_asm TBLWTPOSTINC _endasm
			}
			TBLPTR = (DWORD)&(station->vRecordDeleted[0]);
	
			// Copy the holding registers into FLASH.  This takes approximately 2.8ms.
			EECON1bits.FREE = 0;
			EECON1bits.WREN = 1;
			_asm
				movlw	0x55
				movwf	EECON2, ACCESS
				movlw	0xAA
				movwf	EECON2, ACCESS
				bsf		EECON1, 1, ACCESS	//WR
			_endasm
			EECON1bits.WREN = 0;
			
			return;
		}
	}
}


/*********************************************************************
 * Function:        BOOL StationAdd(void)
 *
 * PreCondition:    None
 *
 * Input:           Station needs to be set correctly.
 *
 * Output:          TRUE - station record was written
 *					FALSE - could not find space for the record
 *
 * Side Effects:    Takes 13ms or so
 *
 * Overview:        None
 *
 * Note:            None
 ********************************************************************/
BOOL StationAdd(void)
{
	WORD w, w2, w3;
	
	// Generate the correct record in memory
	Station.vRecordValid = 0x01;
	for(w = strlen(Station.vStationName); w < sizeof(Station.vStationName); w++)
	{
		Station.vStationName[w] = 0xFF;
	}
	for(w = strlen(Station.vStationURL); w < sizeof(Station.vStationURL); w++)
	{
		Station.vStationURL[w] = 0xFF;
	}
	
	// Find the first free record in ROM to write to
	for(w = 0; w < sizeof(vStationData); w += sizeof(NVSTATION_RECORD))
	{
		if(vStationData[w] == 0xFF)
		{
			for(w2 = 0; w2 < sizeof(NVSTATION_RECORD) - sizeof(Station.vRecordDeleted); w2 += FLASH_WRITE_SIZE)
			{
				// Load up the internal Flash holding registers in preperation for the write
				TBLPTR = (DWORD)&vStationData[w] + w2;
				for(w3 = 0; w3 < FLASH_WRITE_SIZE; w3++)
				{
					TABLAT = ((BYTE*)&Station)[w2+w3];
					_asm TBLWTPOSTINC _endasm
				}
				TBLPTR = (DWORD)&vStationData[w] + w2;

				// Copy the holding registers into FLASH.  This takes approximately 2.8ms.
				EECON1bits.FREE = 0;
				EECON1bits.WREN = 1;
				_asm
					movlw	0x55
					movwf	EECON2, ACCESS
					movlw	0xAA
					movwf	EECON2, ACCESS
					bsf		EECON1, 1, ACCESS	//WR
				_endasm
				EECON1bits.WREN = 0;
			}
			return TRUE;
		}
	}
	
	return FALSE;
}

/*********************************************************************
 * Function:        WORD StationGetCount(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          Returns the count of valid station records in the 
 *					station storage
 *
 * Side Effects:    None
 *
 * Overview:        None
 *
 * Note:            None
 ********************************************************************/
WORD StationGetCount(void)
{
	ROM NVSTATION_RECORD *station;
	WORD wStationCount = 0;
	WORD w;
	
	// Enumerate the entire station list
	for(w = 0; w < sizeof(vStationData); w += sizeof(NVSTATION_RECORD))
	{
		if(vStationData[w] != 0x01)
			continue;

		station = (ROM NVSTATION_RECORD*)&vStationData[w];
		if(station->vRecordDeleted[0] != 0xFF)
			continue;
			
		wStationCount++;
	}
	
	return wStationCount;
}

/*********************************************************************
 * Function:        ROM NVSTATION_RECORD *StationGet(WORD index)
 *
 * PreCondition:    None
 *
 * Input:           index - station to read from the non-volatile storage
 *
 * Output:          ROM pointer to the station record in Flash memory
 *
 * Side Effects:    None
 *
 * Overview:        None
 *
 * Note:            None
 ********************************************************************/
ROM NVSTATION_RECORD *StationGet(WORD index)
{
	ROM NVSTATION_RECORD *station;
	WORD w;
	
	// Find the first free record in ROM to write to
	for(w = 0; w < sizeof(vStationData); w += sizeof(NVSTATION_RECORD))
	{
		if(vStationData[w] != 0x01)
			continue;

		station = (ROM NVSTATION_RECORD*)&vStationData[w];
		if(station->vRecordDeleted[0] != 0xFF)
			continue;

		if(index-- == 0)
		{
			memcpypgm2ram((void*)&Station, (ROM void*)station, sizeof(Station));
			return station;
		}
	}
	
	return NULL;
}

#endif
