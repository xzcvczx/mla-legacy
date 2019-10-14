/******************************************************************************

  PIC232 MTOUCH CVD Eval Board configuration file (Header File)

Description:
    This file defines variables of interest to the way the touch sense
    keys operate.

******************************************************************************/

/*****************************************************************************

* FileName:        config.h
* Dependencies:    None.
* Processor:       PIC32MX795F512H
* Compiler:        C32
* Company:         Microchip Technology, Inc.

 Software License Agreement:

 The software supplied herewith by Microchip Technology Incorporated
 (the “Company”) for its PIC® Microcontroller is intended and
 supplied to you, the Company’s customer, for use solely and
 exclusively on Microchip PIC Microcontroller products. The
 software is owned by the Company and/or its supplier, and is
 protected under applicable copyright laws. All rights are reserved.
 Any use in violation of the foregoing restrictions may subject the
 user to criminal sanctions under applicable laws, as well as to
 civil liability for the breach of the terms and conditions of this
 license.

 THIS SOFTWARE IS PROVIDED IN AN “AS IS” CONDITION. NO WARRANTIES,
 WHETHER EXPRESS, IMPLIED OR STATUTORY, INCLUDING, BUT NOT LIMITED
 TO, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
 PARTICULAR PURPOSE APPLY TO THIS SOFTWARE. THE COMPANY SHALL NOT,
 IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL OR
 CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.

Change History:
Author          Date       Comments
-------------------------------------------------------------------------------
BDB          26-Jun-2008 Initial release
SB           22-Oct-2008
NMS/NK       10-Feb-2009 Folder/Files restructuring
MC           22-Ian-2009 Porting for PIC32MX795F512
MWM          28 Mar 2011 Moved key performance #define's up to this file
******************************************************************************/
#ifndef __CONFIG_H
#define __CONFIG_H

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~    Includes    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
    #include "Compiler.h"
    #include "GenericTypeDefs.h"
    #include "HardwareProfile.h"

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~    Compiler Directives ~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
#define  USE_SLIDER_4CHNL

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~    Includes    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~    Application specific COMPILER DIRECTIVE~~~~~~~~  */
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~    Externs     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  */
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~    Function Prototypes  ~~~~~~~~~~~~~~~~~~~~~~~~~~  */
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~    Enums      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */



/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~    Constants / Macros ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* Debug count for key press */
#define DEBOUNCECOUNT            3   // Defines How Many consecutive reads for

/* Allow Enough Time to initialize all channels */
#define INITIAL_STARTUP_COUNT    5  // first pass flag to reach steady state average //NC2

/* Speed control for LED Chaser during Power On */
//#define PIC32_POWER_ON_LED_SPEED_COUNT      ((GetSystemClock()/1000000)*50)
#define PIC32_POWER_ON_LED_SPEED_COUNT      ((GetSystemClock()/1000000)*200)

#define REF_CHANNEL             15 // Use AN15/RB15 as reference channel

#define TIMER4_PERIOD         3000  // Timer4 clock ticks between button scans

#define NUM_HF_READS            32  // number of reads in CVD Channels
                                    // that are averaged to produce "current" value

#define ALPHA_INVERSE          128  // Weight in updating average based on current value
#define LOG2_ALPHA_INVERSE       7  // Equivalent bit shift to averaging weight
#define KEYTRIPDIV              40
#define HYSTERESIS_VALUE        40
/*
    "Average" data is calculated using the algorithm

        Average[new] = (1 - alpha)*Average[old] + alpha*CurFiltdData[new]

    implemented in C code such as

        averageData[iChannel] = averageData[iChannel]
                                - (averageData[iChannel]>>Log2AlphaInverse)
                                + (CurFiltdData[iChannel]>>Log2AlphaInverse);

    The "current" raw data value is based on ADC measurements taken in
    the Timer 4 ISR call back function, "Timer4CallbackFunc2", found in
    mTouchCap_Timers.c, with additional filtering and averaging done by
    "mTouchCapPhy_UpdateData" in mTouchCap_PIC32MX_CVD_Physical.c .

    Trip value and hysteris value are defined by
        tripValue[iChannel] = averageData[iChannel] / KEYTRIPDIV;
        hystValue[iChannel] = tripValue[iChannel] / HYSTERESIS_VALUE;

    A button is "pressed" if
        CurFiltdData[iChannel] < averageData[iChannel] - tripValue[iChannel]

    A button is "released" if
        CurFiltdData[iChannel] > averageData[iChannel] - tripValue[iChannel] + hystValue[iChannel]
 */

/*
  Charge/discharge cycles

  Multiple cycles needed because ADC's sample and hold (SAH)
  capacitor is much smaller than typical button capacitor.

 */
#define CHARGE_DISCHARGE_CYCLE_1
#define CHARGE_DISCHARGE_CYCLE_2
#define CHARGE_DISCHARGE_CYCLE_3
#define CHARGE_DISCHARGE_CYCLE_4

//Button charge cycles for Rev 3
#define BUTTON_CHARGE_CYCLE_1
#define BUTTON_CHARGE_CYCLE_2
//#define BUTTON_CHARGE_CYCLE_3
//#define BUTTON_CHARGE_CYCLE_4

#define DEFAULT_TRIP_VALUE      100  //default trip value for all channels

#define DEFAULT_DECODE_METHOD   DECODE_METHOD_PRESS_ASSERT

#define DEFAULT_FILTER_METHOD   FILTER_METHOD_GATEDAVERAGE

// Limit change between consecutive voltage measurements to +/- 1 ADC LSB ?
#define LIMIT_SLEW_RATE
//#undef LIMIT_SLEW_RATE

// Use differential instead of single-ended measurements ?
#define  USE_DIFFERENTIAL_MEASUREMENTS
//#undef USE_DIFFERENTIAL_MEASUREMENTS

// Dump raw ADC counts out UART?
#define UART_DUMP_RAW_COUNTS
#undef  UART_DUMP_RAW_COUNTS

#ifndef UART_DUMP_RAW_COUNTS
#   define UART_DUMP_ALL_COUNTS // Dump Vpos, Vneg, Vmeas
#    undef UART_DUMP_ALL_COUNTS
#endif

#endif // _CONFIG_H
