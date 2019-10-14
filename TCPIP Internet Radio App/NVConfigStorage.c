/*********************************************************************
 *
 *	Internet Radio Non-Volatile Configuration Storage
 *  Module for Microchip TCP/IP Stack
 *	 -Provides non-volatile Flash storage for MAC address, volume 
 *	  level, last station tuned, etc.
 *	 -Reference: None
 *
 *********************************************************************
 * FileName:        NVConfigStorage.c
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
 * Howard Schlunder		02/27/08	Original
 ********************************************************************/
#define __NVCONFIGSTORAGE_C

#include "TCPIP Stack/TCPIP.h"
#include "NVConfigStorage.h"

// Processor specific options.  Sizes must match device ability.
#define FLASH_ERASE_SIZE	1024ul
#define FLASH_WRITE_SIZE	64ul

// Automatically calculated structure size with padding to meet 
// FLASH_WRITE_SIZE alignment.  Do not modify.
#define NVCONFIG_RECORD_ROMSIZE	(((sizeof(NVCONFIG_RECORD)+FLASH_WRITE_SIZE-1)/FLASH_WRITE_SIZE)*FLASH_WRITE_SIZE)


// Declare Flash memory for the NVM storage.  
// These default settings allocate 2048 bytes of Flash at address 
// 0x00F400 for the NVM data.  Note that the start address MUST be 
// aligned to a Flash erase boundary 
// (i.e. &vConfigData[0] % FLASH_ERASE_SIZE == 0). Similarly, the 
// vConfigData[] array must be an exact integer multiple of 
// FLASH_ERASE_SIZE is length to ensure that this module doesn't 
// erase other elements in Flash (such as your firmware).
#pragma romdata ROM_CONFIG_SECT=0xF400
static ROM BYTE vConfigData[2*FLASH_ERASE_SIZE];
#pragma romdata



/*********************************************************************
 * Function:        void SetNVConfig(NVCONFIG_RECORD *Config)
 *
 * PreCondition:    None
 *
 * Input:           *Config - Pointer to a NVCONFIG_RECORD structure 
 *						which contains all of the data to save
 *
 * Output:          None
 *
 * Side Effects:    Takes 3ms or so, or much longer if it must first 
 *					perform erase operation(s).
 *
 * Overview:        None
 *
 * Note:            None
 ********************************************************************/
void SetNVConfig(NVCONFIG_RECORD *Config)
{
	ROM NVCONFIG_RECORD *ROMConfig;
	ROM BYTE *ROMPtr;
	BYTE *RAMPtr;
	WORD w;
	BOOL bRecordEmpty;
	DWORD dwFreeRecordROMPtr;

	// Skip the write if the data to write is already stored in Flash
	ROMConfig = GetNVConfig(NULL);
	if(ROMConfig)
	{
		if(memcmppgm2ram((void*)Config, (ROM void*)ROMConfig, sizeof(NVCONFIG_RECORD)) == 0)
			return;
	}

	// Find the first empty record to write to
	ROMPtr = vConfigData;
	for(dwFreeRecordROMPtr = (DWORD)vConfigData; dwFreeRecordROMPtr < (DWORD)vConfigData + (sizeof(vConfigData)/NVCONFIG_RECORD_ROMSIZE*NVCONFIG_RECORD_ROMSIZE); dwFreeRecordROMPtr += NVCONFIG_RECORD_ROMSIZE)
	{
		bRecordEmpty = TRUE;
		ROMPtr = (ROM BYTE*)dwFreeRecordROMPtr;
		for(w = 0; w < NVCONFIG_RECORD_ROMSIZE; w++)
		{
			if(*ROMPtr++ != 0xFF)
			{
				bRecordEmpty = FALSE;
				break;
			}
		}
		if(bRecordEmpty)
			break;
	}
	
	// If there are no empty records, then erase the first page and use the first record
	if(!bRecordEmpty)
	{
		dwFreeRecordROMPtr = (DWORD)vConfigData;
		TBLPTR = dwFreeRecordROMPtr;
		EECON1bits.FREE = 1;
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

	// Write the data to Flash
	TBLPTR = dwFreeRecordROMPtr;
	RAMPtr = (BYTE*)Config;
	for(w = 0; w < NVCONFIG_RECORD_ROMSIZE; w++)
	{
		if(w < sizeof(NVCONFIG_RECORD))
			TABLAT = *RAMPtr++;
		else
			TABLAT = 0xFF;
		_asm TBLWTPOSTINC _endasm
		if((w+1) % FLASH_WRITE_SIZE == 0u)
		{
			// Copy the holding registers into FLASH.  This takes approximately 3ms.
			TBLPTR--;
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
			TBLPTR++;
		}
	}


	// If we erased the first page, make sure to erase all of the other pages that have 
	// data on them so that the GetNVConfig() function can properly find this new record.
	// This is done after performing the write so we don't accidentally lose data if 
	// power is lost during an erase opeartion.
	if(!bRecordEmpty)
	{
		for(dwFreeRecordROMPtr = (DWORD)vConfigData + FLASH_ERASE_SIZE; dwFreeRecordROMPtr < (DWORD)vConfigData + sizeof(vConfigData); dwFreeRecordROMPtr += FLASH_ERASE_SIZE)
		{
			TBLPTR = dwFreeRecordROMPtr;
			EECON1bits.FREE = 1;
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
	}
}



/*********************************************************************
 * Function:        ROM NVCONFIG_RECORD *GetNVConfig(NVCONFIG_RECORD *Config)
 *
 * PreCondition:    None
 *
 * Input:           Config - pointer to a NVCONFIG_RECORD in RAM to 
 *						save the read data to.  This pointer can be NULL 
 *						if the record is not needed.
 *
 * Output:          NULL - Configuration not found in ROM
 *					ROM NVCONFIG_RECORD* - pointer to the most 
 *						up-to-date NVCONFIG_RECORD stored in ROM.
 *
 * Side Effects:    None
 *
 * Overview:        None
 *
 * Note:            None
 ********************************************************************/
ROM NVCONFIG_RECORD *GetNVConfig(NVCONFIG_RECORD *Config)
{
	ROM BYTE *ROMPtr;
	BOOL bRecordEmpty;
	WORD w;
	DWORD dwLastROMBytePtr;
	
	// Find last ROM record written (searching from the end of the 
	// vConfigData[] array towards the beginning)
	for(dwLastROMBytePtr = (DWORD)vConfigData + (sizeof(vConfigData)/NVCONFIG_RECORD_ROMSIZE*NVCONFIG_RECORD_ROMSIZE) - NVCONFIG_RECORD_ROMSIZE; dwLastROMBytePtr >= (DWORD)vConfigData; dwLastROMBytePtr -= NVCONFIG_RECORD_ROMSIZE)
	{
		bRecordEmpty = TRUE;
		ROMPtr = (ROM BYTE*)dwLastROMBytePtr;
		for(w = 0; w < NVCONFIG_RECORD_ROMSIZE; w++)
		{
			if(*ROMPtr++ != 0xFFu)
			{
				bRecordEmpty = FALSE;
				break;
			}
		}
		if(!bRecordEmpty)
			break;
	}
	if(bRecordEmpty)
		return NULL;

	// Do a full zero check of vConfigData[] array to ensure that this isn't 
	// the first time powering up.  The C linker will auto-fill the array with 0x00 
	// bytes, which aren't valid records, but need to be erased first before we can 
	// write NVM data.
	bRecordEmpty = TRUE;
	for(ROMPtr = vConfigData; ROMPtr < vConfigData + sizeof(vConfigData); ROMPtr++)
	{
		if(*ROMPtr != 0x00u)
		{
			bRecordEmpty = FALSE;
			break;
		}
	}
	if(bRecordEmpty)
		return NULL;

	// Copy ROM record to RAM (if needed) and return ROM pointer
	if(Config)
		memcpypgm2ram((void*)Config, (ROM void*)dwLastROMBytePtr, sizeof(NVCONFIG_RECORD));
	return (ROM NVCONFIG_RECORD*)dwLastROMBytePtr;
}
