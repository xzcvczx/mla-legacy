
/*****************************************************************************
 * FileName:        mTouchCap_Display.c
 * Dependencies:
 * Processor:       	PIC18, PIC24
 * Compiler:       	C18, C30
 * Linker:          	MPLAB LINK30,
 * Company:         	Microchip Technology Incorporated
 *
 * Software License Agreement
 *
 * Copyright © 2009 Microchip Technology Inc.
 * Microchip licenses this software to you solely for use with Microchip products, according to the terms of the
 * accompanying click-wrap software license.  Microchip and its licensors retain all right, title and interest in
 * and to the software.  All rights reserved. This software and any accompanying information is for suggestion only.
 * It shall not be deemed to modify Microchip’s standard warranty for its products.  It is your responsibility to ensure
 * that this software meets your requirements.

 * SOFTWARE IS PROVIDED “AS IS” WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESS OR IMPLIED,
 * INCLUDING WITHOUT LIMITATION, ANY WARRANTY OF MERCHANTABILITY, TITLE, NON-INFRINGEMENT
 * AND FITNESS FOR A PARTICULAR PURPOSE. IN NO EVENT WILL MICROCHIP OR ITS LICENSORS BE LIABLE
 * FOR ANY DIRECT OR INDIRECT DAMAGES OR EXPENSES INCLUDING BUT NOT LIMITED TO INCIDENTAL,
 * SPECIAL, INDIRECT, PUNITIVE OR CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA,
 * COST OF PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY OR SERVICES, OR ANY CLAIMS BY THIRD PARTIES
 * (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF), OR OTHER SIMILAR COSTS.
 * The aggregate and cumulative liability of Microchip and its licensors for damages related to the use of the software
 * will in no event exceed $1000 or the amount you paid Microchip for the software, whichever is greater.

 * MICROCHIP PROVIDES THIS SOFTWARE CONDITIONALLY UPON YOUR ACCEPTANCE OF THESE TERMS AND
 * THE TERMS OF THE ACCOMPANYING CLICK-WRAP SOFTWARE LICENSE.
 *
 *
 * Author               	Date        	Comment
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * Naveen. M					19 Oct 2009  		Version 0.1 Release
 * Sasha. M	/ Naveen. M		11 Nov 2009  		Version 1.0 Release
 *****************************************************************************/
#ifndef _MTOUCH_DISPLAY_KEY_H
#define _MTOUCH_DISPLAY_KEY_H
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Includes	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
#include "GenericTypeDefs.h"
#include "Compiler.h"
#include	"mTouchCap_Config.h"	

#ifdef __PIC24F__
		#include "mTouchCap_PIC24_CTMU_Physical.h"
#else
		#include "mTouchCap_PIC18_CTMU_Physical.h"
#endif
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Function Prototypes  ~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

void mTouchCapApp_SetLEDDisplay(SHORT);
void mTouchCapApp_powerOnLEDSeq(void);
void mTouchCapApp_2ChDisplay(SHORT);
void mTouchCapApp_SetLEDDisplay(SHORT);
void mTouchCapApp_DisplayPIC18F_MatrixKeyLEDs(WORD MatLedInput);
void mTouchCapApp_DisplayPIC24F_MatrixKeyLEDs(WORD MatLedInput);
void mTouchCapApp_SetPIC24F_EvalBoardLEDs(WORD LedNum);
void mTouchCapApp_SetPIC18F_EvalBoardLEDs(WORD LedNum);
void mTouchCapApp_SetPIC24F_LEDDisplay(SHORT input);
void mTouchCapApp_SetPIC18F_LEDDisplay(SHORT input);
void mTouchCapApp_SetEvalBoardLEDs(WORD LedNum);
void mTouchCapApp_DisplayMatrixKeyLEDs(SHORT input);
void mTouchCapApp_4ChDisplay(WORD Percent_Display);


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Variables	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
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

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Constants / Macros ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


#endif

