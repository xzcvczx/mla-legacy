
/*****************************************************************************
 * FileName:        Config.h
 * Dependencies:
 * Processor:       PIC18
 * Compiler:       	C18
 * Linker:          MPLINK
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
 * Author               		Date        		Comment
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * Naveen. M					14 Apr 2009			Version 1.0 Initial Draft
 * Sasha. M	/ Naveen. M			22 Apr 2009  		Version 1.1.release
 * Sasha. M	/ Naveen. M			11 Nov 2009  		Version 1.0 Release
 * Sasha. M	/ Nithin. 			10 April 2010  		Version 1.20 Release
 *****************************************************************************/
#ifndef _MTOUCH_PIC18_CONFIG_H
#define _MTOUCH_PIC18_CONFIG_H
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Includes	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
#include "Compiler.h"
#include "GenericTypeDefs.h"
//#include "HardwareProfile.h"

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Compiler Directives	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


/****************************************************************************************
* Enable this option to connect the "4-Channel KEY" board to CTMU EVAL BOARD
*****************************************************************************************/
#define	USE_SLIDER_4CHNL
/**************************/


/************************************************************************************
* Enable this option to have DEBUG information. 

NOTE: If this option enabld, then ADC channel 6 and 7 cannot be used for 
CTMU board purpose. This is beacuse the same pins are used as PGD/PGC for Debugging.
*************************************************************************************/
//#define DEBUG	
/**************************/


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Includes	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

#ifdef USE_SLIDER_4CHNL
	#include "mTouchCap_4Ch_Slider.h"
#endif	


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Application specific COMPILER DIRECTIVE~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */



/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Externs  	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */





/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Function Prototypes  ~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */





/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Enums      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */




/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Constants / Macros ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

/* Debug count for key press */
#define 	DEBOUNCECOUNT								7			// Defines How Many consecutive reads for

/* Allow Enough Time to initialize all channels */
#define 	INITIAL_STARTUP_COUNT					20			// first pass flag to reach steady state average  

/* Speed control for LED Chaser during Power On */
#define PIC18_POWER_ON_LED_SPEED_COUNT			((GetSystemClock()/1000000)*30)

/* loop count to charge the CTMU */
#define   CTMU_CHARGE_TIME_COUNT	   				5 	

/* number of reads in CTMU channel read routine */
#define 	NUM_HF_READS        	   						16			

/* The divisors define the trip points for each type of cap sensor.  
   The trip point is defined as: trip = average/divisor*/
#define	KEYTRIPDIV			    						50 		

/* This is the minimum value which determines untouched condition */
#define	HYSTERESIS_VALUE							5		

/* default trip value for all channels */
#ifdef GUI_USB_INTERFACE
	#define 	DEFAULT_TRIP_VALUE	    				1000  
#else
	#define 	DEFAULT_TRIP_VALUE	    				16   
#endif

//#define USE_STATIC_TRIP_VALUE

#ifdef USE_STATIC_TRIP_VALUE

#define STATIC_TRIP_VALUE_CHANNEL0				16
#define STATIC_TRIP_VALUE_CHANNEL1				16
#define STATIC_TRIP_VALUE_CHANNEL2				16
#define STATIC_TRIP_VALUE_CHANNEL3				16
#define STATIC_TRIP_VALUE_CHANNEL4				16
#define STATIC_TRIP_VALUE_CHANNEL5				16
#define STATIC_TRIP_VALUE_CHANNEL6				16
#define STATIC_TRIP_VALUE_CHANNEL7				16
#define STATIC_TRIP_VALUE_CHANNEL8				16
#define STATIC_TRIP_VALUE_CHANNEL9				16
#define STATIC_TRIP_VALUE_CHANNEL10				16	
#define STATIC_TRIP_VALUE_CHANNEL11				16	
#define STATIC_TRIP_VALUE_CHANNEL12				16	

#endif 

/* To accomodate the entire range of integer */
#define 	BIG_VALUE								64				

/* Defines frequency of average updater */
#define 	NUM_AVG									20	


/* 75% of ADC Value to achieve on a channel using Auto adjust functionality */
#define	CTMU_CHARGE_VOLTAGE_TO_ACHIEVE	0x2FF  // (0x2FF = 2^10 * (75/100))  (75% of 10-bit ADC Ref Voltage)
											   // (0xBFF = 2^12 * (75/100))  (75% of 12-bit ADC Ref Voltage)

/* Allow 8% variations in ADC value to achieve on a channel using Auto adjust functionality */
#define	AUTO_ADJUST_BAND_PERCENT	8


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Variables	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */



#endif	// _MTOUCH_PIC18_CONFIG_H

