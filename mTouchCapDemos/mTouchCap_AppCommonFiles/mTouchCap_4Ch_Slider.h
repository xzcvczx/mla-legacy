
/*****************************************************************************
 * FileName:        mTouchCap_4Ch_Slider.h
 * Dependencies:
 * Processor:       PIC18, PIC24
 * Compiler:       	C18, C30
 * Linker:          MPLAB LINK30
 * Company:         Microchip Technology Incorporated
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
 * BDB         					26 Jun 2008 			First Version for CTMU EVAL Board
 * SB						22 Oct 2008			Updates to First Version
 * Naveen. M				      14 Apr 2009			Version 0.1 Initial Draft
 * Sasha. M	/ Naveen. M		4 May 2009  			Version 0.2 Updates
 * Sasha. M	/ Naveen. M		11 Nov 2009  			Version 1.0 Release
 *****************************************************************************/

#ifndef _MTOUCH_4CHANNEL_SLIDER_H
#define _MTOUCH_4CHANNEL_SLIDER_H
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Includes	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
//#include "mTouchCap_Config.h"			//FR2-19022009
#include "mTouchCap_CtmuAPI.h"
#include "mTouchCap_Display.h"

#ifdef __PIC24F__
		#include "mTouchCap_PIC24_CTMU_Physical.h"
#else
		#include "mTouchCap_PIC18_CTMU_Physical.h"
#endif
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Constants / Macros ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

#ifdef	USE_SLIDER_4CHNL
//Function Prototypes //
    
	#ifdef __PIC24F__
		#define MIN_PERCENT_DISPLAY	1	//minimum step which will be displayed //NC3
	#else	//if defined(__18CXX)
		#define MIN_PERCENT_DISPLAY	5	//minimum percentage step which will be displayed
	#endif

#endif


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Externs  	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


extern SHORT 	pct_output_4Chl;
extern long		pct_sum_4Chl;
extern long 	pct_array_4Chl[];

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Function Prototypes  ~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


#ifdef USE_SLIDER_4CHNL    
	WORD mTouchCapApp_FourChannelSliderLogic(float deltaCh0,float deltaCh1,float deltaCh2,float deltaCh3 );
 #endif



/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Enums      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
#endif	// _MTOUCH_4CHANNEL_SLIDER_H



