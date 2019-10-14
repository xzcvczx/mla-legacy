/*****************************************************************************
 * FileName:        	Config.h
 * Dependencies:
 * Processor:      		PIC24
 * Compiler:       		C30
 * Linker:          	MPLAB LINK30
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
 * Naveen. M					14 Apr 2009		Version 1.0 Initial Draft
 * Sasha. M	/ Naveen. M		4 May 2009  		Version 1.1.release
 * Sasha. M	/ Naveen. M		11 Nov 2009  			Version 1.0 Release
 *****************************************************************************/
#ifndef _MTOUCH_PIC24_CONFIG_H
    #define _MTOUCH_PIC24_CONFIG_H

#include "Compiler.h"
#include "GenericTypeDefs.h"
#include "HardwareProfile.h"

/***************************************************************************************
* Enable this option to connect the "Matrix KEY" board to CTMU EVAL BOARD. If enabled,
* assign the appropriate channels to the board as per your application. These are listed
* below in the section "CHANNEL ASSIGNMENT".
****************************************************************************************/

#define	USE_MATRIX_KEYS
#ifdef USE_MATRIX_KEYS
   #include "mTouchCap_MatrixKeys.h"
#endif

/************************************************************************************
* Enable this option to have DEBUG information. 

NOTE: If this option enabld, then ADC channel 6 and 7 cannot be used for 
CTMU board purpose. This is beacuse the same pins are used as PGD/PGC for Debugging.
*************************************************************************************/

//#define DEBUG	

/*..............................................
Enable this option to have GUI interface using USB
...............................................*/
//#define GUI_USB_INTERFACE 							1

/*..............................................
Enable this option to support PROXIMITY detection
using the Matrix keypad
...............................................*/
#define PROXIMITY


/*..............................................
Constants / Macros
...............................................*/ 

/* Debug count for key press */
// Defines How Many consecutive reads for
#define 	DEBOUNCECOUNT								7		

/* Allow Enough Time to initialize all channels */
/* first pass flag to reach steady state average */
#define 	INITIAL_STARTUP_COUNT						30

/* Speed control for LED Chaser during Power On */
#define 	PIC24_POWER_ON_LED_SPEED_COUNT				((GetSystemClock()/1000000)*50)

/* loop count to charge the CTMU */
#define   	CTMU_CHARGE_TIME_COUNT	 					3

// number of reads in CTMU channel read routine
// each read takes 12uS. 1ms timeslice max.        
#define    	NUM_HF_READS     	    					16	/*change this value to control sensitivity */ 
 
/* PIC 24F related constants */
/* the divisors define the trip points for each
   type of cap sensor.  The trip pointis defined
   as: trip = average/divisor */
#define		KEYTRIPDIV			    					100
										    		
// This is the minimum value which determines untouched condition
#define		HYSTERESIS_VALUE							5

// Defines frequency of average update
#define 	NUM_AVG										10

/* 75% of ADC Value to achieve on a channel using Auto adjust functionality */
#define	CTMU_CHARGE_VOLTAGE_TO_ACHIEVE	0x2FF  // (0x2FF = 2^10 * (75/100))  (75% of 10-bit ADC Ref Voltage)
											   // (0xBFF = 2^12 * (75/100))  (75% of 12-bit ADC Ref Voltage)

/* Allow 8% variations in ADC value to achieve on a channel using Auto adjust functionality */
#define	AUTO_ADJUST_BAND_PERCENT	8


#ifdef GUI_USB_INTERFACE
  /* default trip value for all channels */
  #define 	DEFAULT_TRIP_VALUE	    					1024
#else
 /* default trip value for all channels */
  #define 	DEFAULT_TRIP_VALUE	   						16 
#endif

//#define USE_STATIC_TRIP_VALUE

#ifdef USE_STATIC_TRIP_VALUE

	#define STATIC_TRIP_VALUE_CHANNEL0		0x07
	#define STATIC_TRIP_VALUE_CHANNEL1		0x07
	#define STATIC_TRIP_VALUE_CHANNEL2		0x07
	#define STATIC_TRIP_VALUE_CHANNEL3		0x07
	#define STATIC_TRIP_VALUE_CHANNEL4		0x07
	#define STATIC_TRIP_VALUE_CHANNEL5		0x07
	#define STATIC_TRIP_VALUE_CHANNEL6		0x07
	#define STATIC_TRIP_VALUE_CHANNEL7		0x07
	#define STATIC_TRIP_VALUE_CHANNEL8		0x07
	#define STATIC_TRIP_VALUE_CHANNEL9		0x07
	#define STATIC_TRIP_VALUE_CHANNEL10		0x07	
	#define STATIC_TRIP_VALUE_CHANNEL11		0x07	
	#define STATIC_TRIP_VALUE_CHANNEL12		0x07	
	#define STATIC_TRIP_VALUE_CHANNEL13		0x07	
	#define STATIC_TRIP_VALUE_CHANNEL14		0x07	
	#define STATIC_TRIP_VALUE_CHANNEL15		0x07
	
#if defined(__PIC24FJ_DAXXX__)

	#define STATIC_TRIP_VALUE_CHANNEL16		0x07	
	#define STATIC_TRIP_VALUE_CHANNEL17		0x07	
	#define STATIC_TRIP_VALUE_CHANNEL18		0x07	
	#define STATIC_TRIP_VALUE_CHANNEL19		0x07	
	#define STATIC_TRIP_VALUE_CHANNEL20		0x07	
	#define STATIC_TRIP_VALUE_CHANNEL21		0x07
	#define STATIC_TRIP_VALUE_CHANNEL22		0x07
	#define STATIC_TRIP_VALUE_CHANNEL23		0x07
	
#endif

#endif 

#endif // _MTOUCH_PIC24_CONFIG_H
