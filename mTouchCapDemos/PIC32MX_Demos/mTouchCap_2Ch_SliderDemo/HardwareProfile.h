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
//  Set the appropriate ADC Channel number to 2 Channel Slider
////////////////////////////////////////////////////////////////////////////////

#define TWO_CH_SLIDER1_CHANNEL0    CHANNEL_AN0
#define TWO_CH_SLIDER1_CHANNEL1    CHANNEL_AN1

#endif  // __HARDWARE_PROFILE_H
