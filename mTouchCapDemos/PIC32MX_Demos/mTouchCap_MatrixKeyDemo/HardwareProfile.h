/********************************************************************
* FileName:     HardwareProfile.h
* Dependencies: See INCLUDES section
* Processor:    PIC32MXF795F512
* Hardware:
* Complier:     Microchip C32
* Company:       Microchip Technology, Inc.
*
* Software License Agreement
*
* Copyright © 2011 Microchip Technology Inc.
* Microchip licenses this software to you solely for use with Microchip
* products, according to the terms of the accompanying click-wrap software
* license. Microchip and its licensors retain all right, title and interest in
* and to the software.  All rights reserved. This software and any accompanying
* information is for suggestion only. It shall not be deemed to modify
* Microchip’s standard warranty for its products.  It is your responsibility to
* ensure that this software meets your requirements.
*
* SOFTWARE IS PROVIDED “AS IS” WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESS OR
* IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY OF MERCHANTABILITY, TITLE,
* NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR PURPOSE. IN NO EVENT WILL
* MICROCHIP OR ITS LICENSORS BE LIABLE FOR ANY DIRECT OR INDIRECT DAMAGES OR
* EXPENSES INCLUDING BUT NOT LIMITED TO INCIDENTAL, SPECIAL, INDIRECT, PUNITIVE
* OR CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF PROCUREMENT OF
* SUBSTITUTE GOODS, TECHNOLOGY OR SERVICES, OR ANY CLAIMS BY THIRD PARTIES
* (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF), OR OTHER SIMILAR COSTS.
*
* The aggregate and cumulative liability of Microchip and its licensors for
* damages related to the use of the software will in no event exceed $1000 or
* the amount you paid Microchip for the software, whichever is greater.
*
* MICROCHIP PROVIDES THIS SOFTWARE CONDITIONALLY UPON YOUR ACCEPTANCE OF THESE
* TERMS AND THE TERMS OF THE ACCOMPANYING CLICK-WRAP SOFTWARE LICENSE.
*
*
********************************************************************
 File Description:

 Change History:
  Rev   Date         Description
  1.0   11/19/2004   Initial release
  2.1   02/26/2007   Updated for simplicity and to use common
                     coding style
  2.2    04/01/08    cleaned up hardware profile selection for PKS24
--------------------------------------------------------------------
NMS/NK      10-Feb-2009 Folder/Files restructuring
NK          24-Apr-2009 Porting for 18F46J50 Eval Board
MC          22-Ian-2010 Porting for PIC32MX795F512H
MWM         38 Mar 2011 Added defines for all buttons/sliders so that
                        this file can be used for all hardware configs
********************************************************************/

#ifndef __HARDWARE_PROFILE_H
#define __HARDWARE_PROFILE_H

#include "GenericTypeDefs.h"
#include "mTouchCap_PIC32MX_CVD_Physical.h"

//==========================================================
//==========================================================
//--- HARDWARE PROFILE:
//==========================================================
#define MTOUCH2
#define     MAX_ADC_CHANNELS            16
//------------------------------------------------

//----------------------------
//--- HARDWARE: MTOUCH2
//----------------------------
#if defined(MTOUCH2)


    #if defined(__32MX795F512H__)
        #define HARDWARE_PROFILE_OK
    #endif


#endif

#if !defined(HARDWARE_PROFILE_OK)
    #error "HARDWARE PROFILE INCONGRUENT WITH PROJECT"
#endif


//==========================================================
//==========================================================
#define     INIT_TRISB_VALUE        0x0000
#define     INIT_TRISC_VALUE        0x0000
#define     INIT_TRISD_VALUE        0x0000
#define     INIT_TRISE_VALUE        0x0000
#define     INIT_TRISF_VALUE        0x0000
#define     INIT_TRISG_VALUE        0x0000

#define     INIT_PORTB_VALUE        0x0000
#define     INIT_PORTC_VALUE        0x0000
#define     INIT_PORTD_VALUE        0x0000
#define     INIT_PORTE_VALUE        0x0000
#define     INIT_PORTF_VALUE        0x0000 // Not used
#define     INIT_PORTG_VALUE        0x0000



/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~ SYSTEM CLOCK   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

// Clock speed for PIC32
#if defined (__PIC32MX__)
    #define GetSystemClock()     80000000UL
    #define SYS_FREQ            (80000000UL)
    #define GetPeripheralClock()        (GetSystemClock())
    #define GetInstructionClock()       (GetSystemClock())
#endif

////////////////////////////////////////////////////////////////////////////////
//                  CHANNEL ASSIGNMENT
//  Set the appropriate ADC Channel number to each Matrix Key
////////////////////////////////////////////////////////////////////////////////

/*
   Determining Channel Load Order:

   Button Layout:

         Column: Col 1  Col 2  Col 3  Col 4
                  AN8    AN9   AN10   AN11
    Row 1: AN14  Btn 0  Btn 1  Btn 2  Btn 3

    Row 2: AN13  Btn 4  Btn 5  Btn 6  Btn 7

    Row 3: AN12  Btn 8  Btn 9  Btn10  Btn11

   Resulting load Order
    (AN14,AN8), (AN14,AN9), (AN14,AN10), (AN14,AN11),
    (AN13,AN8), (AN13,AN9), (AN13,AN10), (AN14,AN11),
    (AN12,AN8), (AN13,AN9), (AN13,AN10), (AN14,AN11),

   Removing channels already loaded:
    (AN14,AN8), (---,AN9),  (---,AN10),  (---,AN11),
    (AN13,---), (---,---),  (---,---),   (---,---),
    (AN12,---), (---,---),  (---,---),   (---,---),

    Channel Load:  #1, #2, #3,  #4,  #5,  #6, #7
                 AN14,AN8,AN9,AN10,AN11,AN13,AN12

 */

//First Row
#define MATRIXKEY0_ROW_CHANNEL          CHANNEL_AN14
#define MATRIXKEY0_COLUMN_CHANNEL       CHANNEL_AN8

#define MATRIXKEY1_ROW_CHANNEL          CHANNEL_AN14
#define MATRIXKEY1_COLUMN_CHANNEL       CHANNEL_AN9

#define MATRIXKEY2_ROW_CHANNEL          CHANNEL_AN14
#define MATRIXKEY2_COLUMN_CHANNEL       CHANNEL_AN10

#define MATRIXKEY3_ROW_CHANNEL          CHANNEL_AN14
#define MATRIXKEY3_COLUMN_CHANNEL       CHANNEL_AN11

//Second Row
#define MATRIXKEY4_ROW_CHANNEL          CHANNEL_AN13
#define MATRIXKEY4_COLUMN_CHANNEL       CHANNEL_AN8

#define MATRIXKEY5_ROW_CHANNEL          CHANNEL_AN13
#define MATRIXKEY5_COLUMN_CHANNEL       CHANNEL_AN9

#define MATRIXKEY6_ROW_CHANNEL          CHANNEL_AN13
#define MATRIXKEY6_COLUMN_CHANNEL       CHANNEL_AN10

#define MATRIXKEY7_ROW_CHANNEL          CHANNEL_AN13
#define MATRIXKEY7_COLUMN_CHANNEL       CHANNEL_AN11

//Third Row
#define MATRIXKEY8_ROW_CHANNEL          CHANNEL_AN12
#define MATRIXKEY8_COLUMN_CHANNEL       CHANNEL_AN8

#define MATRIXKEY9_ROW_CHANNEL          CHANNEL_AN12
#define MATRIXKEY9_COLUMN_CHANNEL       CHANNEL_AN9

#define MATRIXKEY10_ROW_CHANNEL         CHANNEL_AN12
#define MATRIXKEY10_COLUMN_CHANNEL      CHANNEL_AN10

#define MATRIXKEY11_ROW_CHANNEL         CHANNEL_AN12
#define MATRIXKEY11_COLUMN_CHANNEL      CHANNEL_AN11


#endif  // __HARDWARE_PROFILE_H
