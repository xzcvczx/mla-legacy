/******************************************************************************

  mTouchCap_PIC24F_GUI_touch (Header File)

Description:
    This file contains defines and function prototypes 
	that are used in mTouchCap_GUI_touch.c
*******************************************************************************/

/*******************************************************************************

* FileName:        mTouchCap_PIC24F_GUI_touch.h
* Dependencies:    See included files, below.
* Processor:       PIC24FJ128GB106
* Compiler:        C30 v3.25
* Company:         Microchip Technology, Inc.

Software License Agreement

The software supplied herewith by Microchip Technology Incorporated
(the “Company”) for its PICmicro® Microcontroller is intended and
supplied to you, the Company’s customer, for use solely and
exclusively on Microchip PICmicro Microcontroller products. The
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
--------------------------------------------------------------------------------
BDB         26-Jun-2008 Initial release
NK			15-may-2009 Updation of actual channel numbers in GUI


*******************************************************************************/

#ifndef __MTOUCHCAP_PIC24F_GUI_TOUCH_H
#define __MTOUCHCAP_PIC24F_GUI_TOUCH_H

#include "mTouchCap_PIC24_CTMU_Physical.h"

#ifdef	USE_SLIDER_4CHNL
#include 	"mTouchCap_4Ch_Slider.h"
#endif
#ifdef	USE_SLIDER_2CHNL
#include 	"mTouchCap_2Ch_Slider.h"
#endif
//==========================================================
//--- DEFINITIONS
//==========================================================
#define  MTOUCHCAP_GUI_TOUCH_VERSION  0x3344     // FIRMWARE VERSION
#define  MTOUCHCAP_GUI_MAP_VARIABLES

//==========================================================
//--- DATA
//==========================================================
#define MTOUCHCAP_GUI_TOUCH_NSENSORS 16

//----------------------------------------------------------
//--- MAP DUMMY VARIABLES TO ACTUAL MTOUCH2 VARIABLES
//----------------------------------------------------------
#ifdef MTOUCHCAP_GUI_MAP_VARIABLES
#define  mTouchCap_GUI_touch_raw     curRawData   // the current ADC value of the selected channel  	//USB
#define  mTouchCap_GUI_touch_trip    tripValue	//trip value of  the selected channel
#define  mTouchCap_GUI_touch_avg     averageData	//the reference untouched value of the selected channel	//USB
#define  mTouchCap_GUI_touch_gband   hystValue
#define  mTouchCap_GUI_touch_detect  ((BYTE *)&pressedCount); 
#define  MTOUCHCAP_GUI_TOUCH_DETECT_SIZEOF 4
#define  mTouchCap_GUI_touch_useusb  useUSBVals
#ifdef	USE_SLIDER_2CHNL		
#define  mTouchCap_GUI_touch_slider2_pct pct_output_2Chl
#endif
#ifdef	USE_SLIDER_4CHNL		
#define  mTouchCap_GUI_touch_slider4_pct pct_output_4Chl
#endif
#else
extern WORD mTouchCap_GUI_touch_raw[];
extern WORD mTouchCap_GUI_touch_trip[];
extern WORD mTouchCap_GUI_touch_avg[];
extern WORD mTouchCap_GUI_touch_gband[];
#define  MTOUCHCAP_GUI_TOUCH_DETECT_SIZEOF  4
extern BYTE mTouchCap_GUI_touch_detect[];
extern BYTE mTouchCap_GUI_touch_useusb
#endif

extern WORD mTouchCap_GUI_touch_aux1[];
extern WORD mTouchCap_GUI_touch_aux2[];

//==========================================================
//--- PROTOTYPES
//==========================================================
void mTouchCap_GUI_touch_init(void);    // ONE-TIME INITIALIZATION
void mTouchCap_GUI_touch(void);         // SERVICE - CALL FROM IDLE LOOP

#endif //end of MTOUCHCAP_PIC24F_GUI_TOUCH_H
