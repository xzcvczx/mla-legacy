/*********************************************************************
 *
 *                  Headers for TCPIP Demo App
 *
 *********************************************************************
 * FileName:        MainDemo.h
 * Dependencies:    gqueue.h, TCPIP.h
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
#ifndef _MAINDEMO_H
#define _MAINDEMO_H

#include "TCPIP Stack\TCPIP.h"
#include "gqueue.h"

#define BAUD_RATE       (19200)		// bps
#if !defined(THIS_IS_STACK_APPLICATION)
	extern BYTE AN0String[8];
#endif
void DoUARTConfig(void);

#if defined(EEPROM_CS_TRIS) || defined(SPIFLASH_CS_TRIS)
	void SaveAppConfig(void);
    void SavePowerMeterPreferences(void);
    void SaveNVMemContents(void);
#else
	#define SaveAppConfig()
    #define SavePowerMeterPreferences()
    #define SaveNVMemContents()
#endif

// Structure defining Google PowerMeter Preferences (configuration options)
typedef struct __attribute__((__packed__))
{
    BYTE auth_token[65];        // The user identification value
    BYTE auth_path[193];        // The data upload path
    DWORD snonce;               // A security nonce
    BYTE pKeyHashes[3][20];     // SHA-1 hashes of potential Google SSL certificaties
    WORD cap_sec_interval;      // Data capture interval (in seconds)
    WORD send_sec_interval;     // Data transmission interval (in seconds)
    BOOL send_status;           // Boolean - indicates whether to send status information
} POWER_METER_PREFERENCES;

// Defines an enumeration that corresponds to our sensors
typedef enum
{
    CM_TRIANGLE = 0u,       // Triangle wave sample sensor
    CM_POT,                 // Potentiometer-based sample sensor
    CM_LEDS                 // LED-based sample sensor
} PMCaptureMode;

// Define an enumeration to handle our button-press state machine
typedef enum
{
    SM_IDLE = 0u,
    SM_DEBOUNCE_DOWN,
    SM_RELEASE_WAIT,
    SM_DEBOUNCE_UP
} PMButtonState;

extern POWER_METER_PREFERENCES gPowerMeterPreferences;
extern PMCaptureMode captureMode;

void GenericTCPClient(void);
void GenericTCPServer(void);
void BerkeleyTCPClientDemo(void);
void BerkeleyTCPServerDemo(void);
void BerkeleyUDPClientDemo(void);


// Defines the number of sensors the device is using
// This value is based on the GQ_NUM_QUEUES macro, defined in gqueue.h
#define DEVICE_NUM_SENSORS      GQ_NUM_QUEUES


// Defines the build number
#define APPLICATION_BUILD       0x62

// Defines the reserved block for web pages in non-volatile memory
#define NV_MEM_RESERVE_BLOCK        (MPFS_RESERVE_BLOCK)

// Enumeration for non-volatile memory allocation
typedef enum
{
    identifierOffset = 0,
    appConfigOffset = 1,
    powerMeterPreferencesOffset = sizeof (APP_CONFIG) + 1,
    structureEndOffset = powerMeterPreferencesOffset + sizeof (POWER_METER_PREFERENCES),
} NV_MEM_STRUCTURE_OFFSETS;

// An actual function defined in MainDemo.c for displaying the current IP
// address on the UART and/or LCD.
void DisplayIPValue(IP_ADDR IPVal);


#endif // _MAINDEMO_H
