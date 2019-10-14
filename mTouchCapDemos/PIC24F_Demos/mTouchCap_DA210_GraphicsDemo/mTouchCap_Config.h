/*****************************************************************************
 * FileName:        	mTouchCap_Config.h
 * Dependencies:
 * Processor:      	PIC24
 * Compiler:       	C30
 * Linker:          	MPLAB LINK30
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
 * Naveen. M					14 Apr 2009		Version 1.0 Initial Draft
 * Sasha. M	/ Naveen. M		4 May 2009  		Version 1.1.release
 * Sasha. M	/ Naveen. M		11 Nov 2009  			Version 1.0 Release
 *****************************************************************************/
#ifndef _MTOUCH_PIC24_CONFIG_H
    #define _MTOUCH_PIC24_CONFIG_H

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Includes	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
    #include "Compiler.h"
    #include "GenericTypeDefs.h"
    #include "mTouchCap_HardwareProfile.h"

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Compiler Directives	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

/**************************************************************************************
* Enable this option to connect the "DIRECT KEY" board to CTMU EVAL BOARD. If enabled, assign
the appropriate channels to the board as per your application. These are listed below in the section "CHANNEL ASSIGNMENT".

***************************************************************************************/

#define	USE_DIRECT_KEYS

/************/


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
    #ifdef USE_DIRECT_KEYS
        #include "mTouchCap_DirectKeys.h"
    #endif
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Application specific COMPILER DIRECTIVE~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/****************************************************************************************
* Enable this option to have GUI interface using USB
*****************************************************************************************/

//#define GUI_USB_INETERFACE 		1

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
#define 	DEBOUNCECOUNT				3		// Defines How Many consecutive reads for

/* Allow Enough Time to initialize all channels */
#define 	INITIAL_STARTUP_COUNT	30	// first pass flag to reach steady state average //NC2

/* Speed control for LED Chaser during Power On */
//#define PIC24_POWER_ON_LED_SPEED_COUNT		((GetSystemClock()/1000000)*50)

/* loop count to charge the CTMU */
#define   CTMU_CHARGE_TIME_COUNT	 5    //n29jan2009 count=2	//loop count to charge the CTMU

#define    NUM_HF_READS     	    		4	 // number of reads in CTMU channel read routine 64 --> 10 
                                            				// each read takes 12uS. 1ms timeslice max.

/* PIC 24F related constants */
#define	KEYTRIPDIV			    		15 		// the divisors define the trip points for
										    	// each type of cap sensor.  The trip point
										    	// is defined as: trip = average/divisor

#define	HYSTERESIS_VALUE			2		// This is the minimum value which determines untouched condition


#define 	NUM_AVG					20		// Defines frequency of average update
#define	TRIPVAL						0		// Initial Value for startup

/* 75% of ADC Value to achieve on a channel using Auto adjust functionality */
#define	CTMU_CHARGE_VOLTAGE_TO_ACHIEVE	0x2FF  // (0x2FF = 2^10 * (75/100))  (75% of 10-bit ADC Ref Voltage)
											   // (0xBFF = 2^12 * (75/100))  (75% of 12-bit ADC Ref Voltage)

/* Allow 8% variations in ADC value to achieve on a channel using Auto adjust functionality */
#define	AUTO_ADJUST_BAND_PERCENT	8



#ifdef GUI_USB_INETERFACE
	#define 	DEFAULT_TRIP_VALUE	    	1024  //500	n30apr09   //default trip value for all channels //NC2
#else
	#define 	DEFAULT_TRIP_VALUE	    	16  //default trip value for all channels //NC2
#endif

////////////////////////////////////////////////////////////////////////////////
//					CHANNEL ASSIGNMENT
//	Set the appropriate ADC Channel number to which boards are connected
////////////////////////////////////////////////////////////////////////////////

//*************** Start Direct key (8 channel) Configuration ***********/
    #ifdef USE_DIRECT_KEYS

            #define DIRECTKEY1_CHANNEL  CHANNEL_AN19
            #define DIRECTKEY2_CHANNEL  CHANNEL_AN21
            #define DIRECTKEY3_CHANNEL  CHANNEL_AN5
	 /* If application can reserve all ADC channels, the Direct key configuration can go upto 16 channels (CH0 to CH15) for PIC24 
	     		and 13 channels (CH0 to CH12) for PIC18. */
    #endif //USE_DIRECT_KEYS
//*************** End Direct Key Configuration ***********/


/****************************************************************************************************
	Calculation of number of CTMU Channels used in the application based on settings in "mTouchCap_Config.h" settings.
*****************************************************************************************************/
/* ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^*/
//	DIRECT Key: Number of channels used
/* ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^*/
#ifdef	USE_DIRECT_KEYS
	#define	NUM_DIRECTKEYS	3		//3-channel Direct key
#else
	#define	NUM_DIRECTKEYS 	0		//default value when Direct keypad is disabled
#endif
/* ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^*/
//	Total number of channels. Add all the indivual board channel count. This is based on what board enabled. 
/* ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^*/
#define	NUM_CTMU_CH		NUM_DIRECTKEYS
//*************** End: Number of channel calc ***********/


#endif // _MTOUCH_PIC24_CONFIG_H
