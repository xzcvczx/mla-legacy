
/*****************************************************************************
 * FileName:        mTouchCAp_Config.h
 * Dependencies:
 * Processor:       PIC18,
 * Compiler:       	C18
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
 * Naveen. M				14 Apr 2009		Version 1.0 Initial Draft
 * Sasha. M	/ Naveen. M		22 Apr 2009  		Version 1.1.release
 * Sasha. M	/ Naveen. M		11 Nov 2009  			Version 1.0 Release
 *****************************************************************************/
#ifndef _MTOUCH_PIC18_CONFIG_H
#define _MTOUCH_PIC18_CONFIG_H
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
* Enable this option to connect the "DIRECT KEY" board to CTMU EVAL BOARD
***************************************************************************************/
#define	USE_DIRECT_KEYS

/**************************/

/***************************************************************************************
* Enable this option to connect the "Matrix KEY" board to CTMU EVAL BOARD
****************************************************************************************/
//#define	USE_MATRIX_KEYS
/**************************/

/****************************************************************************************
* Enable this option to connect the "2-Channel Slider" board to CTMU EVAL BOARD
*****************************************************************************************/
//#define	USE_SLIDER_2CHNL
/**************************/

/****************************************************************************************
* Enable this option to connect the "4-Channel KEY" board to CTMU EVAL BOARD
*****************************************************************************************/
//#define	USE_SLIDER_4CHNL
/**************************/


/****************************************************************************************
* Enable this option to connect the "1-Channel KEY" board to CTMU EVAL BOARD
*****************************************************************************************/
//#define	USE_ONE_CHANNEL_BOARD		//Adding a new channel to stack  
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
#ifdef USE_DIRECT_KEYS
	#include "mTouchCap_DirectKeys.h"	
#endif

#ifdef USE_MATRIX_KEYS
	#include "mTouchCap_MatrixKeys.h"
#endif

#ifdef USE_SLIDER_2CHNL
	#include "mTouchCap_2Ch_Slider.h"
#endif

#ifdef USE_SLIDER_4CHNL
	#include "mTouchCap_4Ch_Slider.h"
#endif	

#ifdef USE_ONE_CHANNEL_BOARD
	// include if any specific header file for the new application specific board
#endif
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Application specific COMPILER DIRECTIVE~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


/****************************************************************************************
* Enable this option to have GUI interface using USB
*****************************************************************************************/
//#define GUI_USB_INTERFACE 		1

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
#define 	DEBOUNCECOUNT						5			// Defines How Many consecutive reads for

/* Allow Enough Time to initialize all channels */
#define 	INITIAL_STARTUP_COUNT					20			// first pass flag to reach steady state average  

/* Speed control for LED Chaser during Power On */
#define PIC18_POWER_ON_LED_SPEED_COUNT				((GetSystemClock()/1000000)*30)

/* loop count to charge the CTMU */
#define   CTMU_CHARGE_TIME_COUNT	   				2 	

/* number of reads in CTMU channel read routine */
#define 	NUM_HF_READS        	   				16			

/* The divisors define the trip points for each type of cap sensor.  
   The trip point is defined as: trip = average/divisor*/
#define	KEYTRIPDIV			    					50 		

/* This is the minimum value which determines untouched condition */
#define	HYSTERESIS_VALUE							5		

/* default trip value for all channels */
#ifdef GUI_USB_INTERFACE
	#define 	DEFAULT_TRIP_VALUE	    			1000  
#else
	#define 	DEFAULT_TRIP_VALUE	    			16   
#endif

/* To accomodate the entire range of integer */
#define 	BIG_VALUE								64				

/* Defines frequency of average updater */
#define 	NUM_AVG									50	

/* Initial Value for startup */	
#define	TRIPVAL										0		

////////////////////////////////////////////////////////////////////////////////
//	Set the appropriate ADC Channel number to which boards are connected
////////////////////////////////////////////////////////////////////////////////

//*************** Start 2-Channel Configuration ***********/
#ifdef USE_SLIDER_2CHNL
    #define	SLDR2CHNL1	CHANNEL_AN0
    #define	SLDR2CHNL2	CHANNEL_AN1
#endif
//*************** End 2-Channel Configuration ***********/


//*************** Start 4-Channel Configuration ***********/
#ifdef USE_SLIDER_4CHNL
	#define	SLDR4CHNL1	CHANNEL_AN0	
   	#define	SLDR4CHNL2	CHANNEL_AN1
	#define	SLDR4CHNL3	CHANNEL_AN2
    #define	SLDR4CHNL4	CHANNEL_AN3
#endif
//*************** End 4-Channel Configuration ***********/

//*************** Start Matrix (7 channels)  Configuration ***********/
#ifdef	USE_MATRIX_KEYS
	#define	KEYROW1	CHANNEL_AN0
	#define	KEYROW2	CHANNEL_AN1
	#define	KEYROW3	CHANNEL_AN2
	#define	KEYROW4	CHANNEL_AN3
	#define	KEYCOL1	CHANNEL_AN4
	#define	KEYCOL2	CHANNEL_AN5
	#define	KEYCOL3	CHANNEL_AN6
	/* NOTE: Currently 4x3 pattern is demonstrated. If application can reserve ADC channels, the Matrix key configuration can 
	     		go upto 8 channels (CH0 to CH7) i.e 4x4 matrix pattern */
#endif //USE_MATRIX_KEYS
//*************** End Matrix Configuration ***********/

//*************** Start Direct key (8 channel) Configuration ***********/
#ifdef	USE_DIRECT_KEYS	
   	#define	DIRECTKEY1 CHANNEL_AN0
   	#define	DIRECTKEY2 CHANNEL_AN1
   	#define	DIRECTKEY3 CHANNEL_AN2
   	#define	DIRECTKEY4 CHANNEL_AN3
   	#define	DIRECTKEY5 CHANNEL_AN4
   	#define	DIRECTKEY6 CHANNEL_AN5
   	#define	DIRECTKEY7 CHANNEL_AN6
   	#define	DIRECTKEY8 CHANNEL_AN7
	 /* If application can reserve all ADC channels, the Direct key configuration can go upto 16 channels (CH0 to CH15) for PIC24 
	     		and 13 channels (CH0 to CH12) for PIC18. */
#endif //USE_DIRECT_KEYS
//*************** End Direct key (8 channel) Configuration ***********/


//*************** Start Single-Channel Configuration ***********/
#ifdef	USE_ONE_CHANNEL_BOARD			//Adding a new channel to stack  
       #define	SINGLE_KEY CHANNEL_AN0
#endif

//*************** End Single-Channel Configuration ***********/


/****************************************************************************************************
	Calculation of number of CTMU Channels used in the application based on settings in "mTouchCap_Config.h" settings.
*****************************************************************************************************/
/* ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^*/
//	DIRECT Key: Number of channels used
/* ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^*/
#ifdef	USE_DIRECT_KEYS
	#define	NUM_DIRECTKEYS	8		//8-channel Direct key
#else
	#define	NUM_DIRECTKEYS 	0		//default value when Direct keypad is disabled
#endif

/* ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^*/
//	2-Ch Slider: Number of channels used
/* ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^*/
#ifdef	USE_SLIDER_2CHNL
	#define NUM_SLDR2CHL	2		//2-channel Slider
#else
	#define NUM_SLDR2CHL	0		//default value when 2 Channel Slider keypad is disabled		
#endif

/* ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^*/
//	4-Ch Slider: Number of channels used
/* ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^*/
#ifdef	USE_SLIDER_4CHNL
	#define NUM_SLDR4CHL	4		//4-channel Slider
#else
	#define NUM_SLDR4CHL	0		//default value when 4 Channel Slider keypad is disabled
#endif

/* ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^*/
//	MATRIX Key: Number of channels used
/* ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^*/
#ifdef	USE_MATRIX_KEYS		
	#define NUM_ROWS 4	//4 //Rows		//7-channel Direct key
	#define NUM_COLS 3	//3 //columns	
#else
	#define NUM_ROWS 0				//default value when Matrix keypad is disabled
	#define NUM_COLS 0	
#endif				

/* ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^*/
//	SINGLE CHANNEL Key board: Number of channels used
/* ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^*/
#ifdef	USE_ONE_CHANNEL_BOARD			//Adding a new channel to stack. Example SINGLE key board.  
       #define	NUM_SINGLE_KEY 	1
#else
	#define 	NUM_SINGLE_KEY	 0
#endif

/* ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^*/
//	Total number of channels. Add all the indivual board channel count. This is based on what board enabled. 
/* ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^*/
#define	NUM_CTMU_CH		NUM_ROWS+NUM_COLS+NUM_DIRECTKEYS+NUM_SLDR4CHL+NUM_SLDR2CHL+NUM_SINGLE_KEY
//*************** End: Number of channel calc ***********/



/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Variables	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */



#endif	// _MTOUCH_PIC18_CONFIG_H

