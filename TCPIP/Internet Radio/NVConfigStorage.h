/*********************************************************************
 *
 *	Internet Radio Non-Volatile Configuration Storage
 *  Module for Microchip TCP/IP Stack
 *	 -Provides non-volatile Flash storage for MAC address, volume 
 *	  level, last station tuned, etc.
 *	 -Reference: None
 *
 *********************************************************************
 * FileName:        ConfigStorage.c
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
#ifndef __NVCONFIGSTORAGE_H
#define __NVCONFIGSTORAGE_H

#include "TCPIP Stack/TCPIP.h"


typedef struct
{
	BYTE vMACAddress[6];
	BYTE vVolumeLeft;
	BYTE vVolumeRight;
	BYTE vBase;
	WORD wLastStation;
} NVCONFIG_RECORD;

void SetNVConfig(NVCONFIG_RECORD *Config);
ROM NVCONFIG_RECORD *GetNVConfig(NVCONFIG_RECORD *Config);


#endif