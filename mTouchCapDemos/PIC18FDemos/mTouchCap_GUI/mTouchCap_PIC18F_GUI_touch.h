/******************************************************************************

  mt2_touch (Header File)

Description:
    This file contains defines and function prototypes 
	that are used in mt2_touch.c
*******************************************************************************/

/*******************************************************************************

* FileName:        mTouchCap_PIC18F_GUI_touch.h
* Dependencies:    See included files, below.
* Processor:       PIC18F46J50
* Compiler:        C18
* Company:         Microchip Technology, Inc.

 Software License Agreement.

Microchip licenses this software to you solely for use with Microchip 
products,according to the terms of the accompanying click-wrap software 
license.Microchip and its licensors retain all right, title and interest in and 
to the software.All rights reserved.

This software and any accompanying information is for suggestion only.  
It shall not be deemed to modify Microchip’s standard warranty for its
 products.It is your responsibility to ensure that this software meets your 
requirements.

SOFTWARE IS PROVIDED “AS IS” WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESS OR 
IMPLIED,INCLUDING WITHOUT LIMITATION, ANY WARRANTY OF MERCHANTABILITY, TITLE, 
NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR PURPOSE. IN NO EVENT WILL MICROCHIP 
OR ITS LICENSORS BE LIABLE FOR ANY DIRECT OR INDIRECT DAMAGES OR EXPENSES 
INCLUDING BUT NOT LIMITED TO INCIDENTAL, SPECIAL, INDIRECT, PUNITIVE OR 
CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF PROCUREMENT OF 
SUBSTITUTE GOODS, TECHNOLOGY OR SERVICES, OR ANY CLAIMS BY THIRD PARTIES 
(INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF), OR OTHER SIMILAR COSTS.  
The aggregate and cumulative liability of Microchip and its licensors for damages 
related to the use of the software will in no event exceed $1000 or the amount you 
paid Microchip for the software, whichever is greater.

MICROCHIP PROVIDES THIS SOFTWARE CONDITIONALLY UPON YOUR ACCEPTANCE OF THESE TERMS 
AND THE TERMS OF THE ACCOMPANYING CLICK-WRAP SOFTWARE LICENSE.

Author          Date       Comments
--------------------------------------------------------------------------------
BDB         26-Jun-2008 Initial release

Change History:

Nithin	Mar 1 2010     mTouch Library
*******************************************************************************/

#ifndef __MTOUCHCAP_PIC18F_GUI_TOUCH_H
#define __MTOUCHCAP_PIC18F_GUI_TOUCH_H

//#include "../Microchip/Include/CapTouchCTMUEvalBoard/CTMUcapsense.h"
#include "mTouchCap_PIC18_CTMU_Physical.h"

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
#define MTOUCHCAP_GUI_TOUCH_NSENSORS 13   //Total number of ADC channels in PIC18F which is used as cap touch keys
								

//----------------------------------------------------------
//--- MAP DUMMY VARIABLES TO ACTUAL MTOUCH2 VARIABLES
//----------------------------------------------------------
#ifdef MTOUCHCAP_GUI_MAP_VARIABLES
#define  mTouchCap_GUI_touch_raw     curRawData	 // the current ADC value of the selected channel  	//USB
#define  mTouchCap_GUI_touch_trip    tripValue	//trip value of  the selected channel
#define  mTouchCap_GUI_touch_avg     averageData //the reference untouched value of the selected channel	//USB
#define  mTouchCap_GUI_touch_gband   hystValue
#define  mTouchCap_GUI_touch_detect  ((unsigned char *)&pressedCount);   //useUSBTouchDetect)  //((unsigned char *)&Buttons) //USB
#define  MTOUCHCAP_GUI_TOUCH_DETECT_SIZEOF 4
#define  mTouchCap_GUI_touch_useusb  useUSBVals
#ifdef	USE_SLIDER_2CHNL		
	#define  mTouchCap_GUI_touch_slider2_pct pct_output_2Chl 		//USB
#endif
#ifdef	USE_SLIDER_4CHNL		
	#define  mTouchCap_GUI_touch_slider4_pct pct_output_4Chl 		//USB
#endif
#else
extern WORD mTouchCap_GUI_touch_raw[];
extern WORD mTouchCap_GUI_touch_trip[];
extern WORD mTouchCap_GUI_touch_avg[];
extern WORD mTouchCap_GUI_touch_gband[];
#define  MTOUCHCAP_GUI_TOUCH_DETECT_SIZEOF  4
extern BYTE mTouchCap_GUI_touch_detect[];
extern BYTE mTouchCap_GUI_touch_useusb;
#endif

extern WORD mTouchCap_GUI_touch_aux1[];
extern WORD  mTouchCap_GUI_touch_aux2[]; //USB

//==========================================================
//--- PROTOTYPES
//==========================================================
void mTouchCap_GUI_touch_init(void);    // ONE-TIME INITIALIZATION
void mTouchCap_GUI_touch(void);         // SERVICE - CALL FROM IDLE LOOP

#endif
