/******************************************************************************

  display (Header File)

Description:
    This file contains function prototypes that are used in display.c
*******************************************************************************/

/*******************************************************************************

* FileName:        display.h
* Dependencies:    See included files, below.
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
--------------------------------------------------------------------------------
BDB         26-Jun-2008 Initial release
NK			24-Apr-2009 Porting for 18F46J50 Eval Board 
MC          22-Ian-2010 Porting for PIC32MX795F512H

*******************************************************************************/
#ifndef __DISPLAY_H     
#define __DISPLAY_H

#include "config.h"
#include "GenericTypeDefs.h"
#include "Compiler.h"
#include "mTouchCap_PIC32MX_CVD_Physical.h"


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Function Prototypes  ~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
void SetLEDDisplay(int);

void powerOnLEDSeq(void);

void mTouchCapApp_SetPIC32MX_LEDDisplay(SHORT input);
void mTouchCapApp_SetLEDDisplay(SHORT);
void mTouchCapApp_powerOnLEDSeq(void);
void mTouchCapApp_SetPIC32MX_EvalBoardLEDs(WORD LedNum); 
void mTouchCapApp_DisplayPIC32MX_MatrixKeyLEDs(WORD MatLedInput);
enum{
	LED_1=0,
	LED_2,
	LED_3,
	LED_4,
	LED_5,
	LED_6,
	LED_7,
	LED_8,
	LED_9,
	LED_10,
	LED_11,
	LED_12,
	LED_13,
	LED_14,
	LED_15,
	LED_16,
	LED_NIL
};

#endif	//end of #ifndef __DISPLAY_H
