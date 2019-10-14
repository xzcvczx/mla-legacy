
/*****************************************************************************
 * FileName:        	HardwareProfile.h
 * Dependencies:
 * Processor:       	PIC24
 * Compiler:       		C30
 * Linker:          	MPLAB LINK30
 * Company:         	Microchip Technology Incorporated
 *
 * Software License Agreement
 *
 * Copyright � 2009 Microchip Technology Inc.  
 * Microchip licenses this software to you solely for use with Microchip products, according to the terms of the  
 * accompanying click-wrap software license.  Microchip and its licensors retain all right, title and interest in 
 * and to the software.  All rights reserved. This software and any accompanying information is for suggestion only.  
 * It shall not be deemed to modify Microchip�s standard warranty for its products.  It is your responsibility to ensure 
 * that this software meets your requirements.

 * SOFTWARE IS PROVIDED �AS IS� WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESS OR IMPLIED, 
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
 * Author               			Date        	Comment
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * Naveen. M				    14 Apr 2009			Version 1.0 Initial Draft
 * Sasha. M	/ Naveen. M			4 May 2009  		Version 1.1.release
 * Sasha. M	/ Naveen. M			11 Nov 2009  		Version 1.0 Release
 * Sasha. M	/ Nithin. 			10 April 2010  		Version 1.20 Release
 * Arpitha P					08 June 2011		Version 1.31 Release
 *****************************************************************************/
#ifndef _MTOUCH_HARDWARE_PROFILE_H
#define _MTOUCH_HARDWARE_PROFILE_H
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Includes	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
#include "GenericTypeDefs.h"


/* Devices having AD1PCFG register name.User can edit this as per requirement*/
#if defined(__PIC24F04KA200__) || defined(__PIC24F04KA201__)\
||  defined(__PIC24F08KA101__) || defined(__PIC24F08KA102__)\
|| defined(__PIC24F16KA101__)  || defined(__PIC24F16KA102__)\
|| defined(__PIC24FJ32GA102__) || defined(__PIC24FJ32GA104__)\
|| defined(__PIC24FJ64GA102__) || defined(__PIC24FJ64GA104__)\
|| defined(__PIC24FJ32GB002__) || defined(__PIC24FJ32GB004__)\
|| defined(__PIC24FJ64GB002__) || defined(__PIC24FJ64GB004__)\
|| defined(__PIC24FJ64GA106__) || defined(__PIC24FJ64GA108__)  || defined(__PIC24FJ64GA110__)\
|| defined(__PIC24FJ128GA106__)|| defined(__PIC24FJ128GA108__) || defined(__PIC24FJ128GA110__)\
|| defined(__PIC24FJ192GA106__)|| defined(__PIC24FJ192GA108__) || defined(__PIC24FJ192GA110__)\
|| defined(__PIC24FJ256GA106__)|| defined(__PIC24FJ256GA108__) || defined(__PIC24FJ256GA110__)\
|| defined(__PIC24FJ64GB106__) || defined(__PIC24FJ64GB108__)  || defined(__PIC24FJ64GB110__)\
|| defined(__PIC24FJ128GB106__)|| defined(__PIC24FJ128GB108__) || defined(__PIC24FJ128GB110__)\
|| defined(__PIC24FJ192GB106__)|| defined(__PIC24FJ192GB108__) || defined(__PIC24FJ192GB110__)\
|| defined(__PIC24FJ256GB106__)|| defined(__PIC24FJ256GB108__) || defined(__PIC24FJ256GB110__)
   
#define ADC_LEGACY

#endif

/* Devices having ANSEL & ANSA  register name.User can edit this as per requirement*/
#if defined(__PIC24FJ128DA106__) || defined(__PIC24FJ128DA110__)\
||  defined(__PIC24FJ128DA206__) || defined(__PIC24FJ128DA210__)\
||  defined(__PIC24FJ256DA106__) || defined(__PIC24FJ256DA110__)\
||  defined(__PIC24FJ256DA206__) || defined(__PIC24FJ256DA210__ )\
||  defined(__PIC24FJ128GB206__) || defined (__PIC24FJ128GB210__)\
||  defined(__PIC24FJ256GB206__) || defined (__PIC24FJ256GB210__)\
||  defined(__PIC24F16KA301__)   || defined (__PIC24F16KA302__)  || defined(__PIC24F16KA304__)\
||  defined(__PIC24F32KA301__)   || defined (__PIC24F32KA302__)  || defined(__PIC24F32KA304__)\
||  defined(__PIC24FV16KA301__)  || defined (__PIC24FV16KA302__) || defined(__PIC24FV16KA304__)\
||  defined(__PIC24FV32KA301__)  || defined (__PIC24FV32KA302__) || defined(__PIC24FV32KA304__)

#define ADC_NEW

#endif

/* Devices having CTMU Version 1*/
#if defined(__PIC24F16KA301__)   || defined (__PIC24F16KA302__)  || defined(__PIC24F16KA304__)\
||  defined(__PIC24F32KA301__)   || defined (__PIC24F32KA302__)  || defined(__PIC24F32KA304__)\
||  defined(__PIC24FV16KA301__)  || defined (__PIC24FV16KA302__) || defined(__PIC24FV16KA304__)\
||  defined(__PIC24FV32KA301__)  || defined (__PIC24FV32KA302__) || defined(__PIC24FV32KA304__)

#define CTMU_v2

#else 

/* Devices having CTMU Version 2*/
#define CTMU_v1

#endif

/* Devices with low pins .User can edit this as per requirement*/
#if defined(__PIC24F04KA200__) || defined(__PIC24F04KA201__) || defined(__PIC24F08KA101__)\
|| defined(__PIC24F08KA102__)  || defined(__PIC24F16KA101__)  || defined(__PIC24F16KA102__)\
|| defined(__PIC24F16KA301__)  || defined (__PIC24F16KA302__)  || defined(__PIC24F16KA304__)\
|| defined(__PIC24F32KA301__)  || defined (__PIC24F32KA302__)  || defined(__PIC24F32KA304__)\
|| defined(__PIC24FV16KA301__) || defined (__PIC24FV16KA302__) || defined(__PIC24FV16KA304__)\
|| defined(__PIC24FV32KA301__) || defined (__PIC24FV32KA302__) || defined(__PIC24FV32KA304__)

#define PIC24F_LOW_PIN_DEVICE
#define __PIC24F__

#endif

/* Devices with low pins .User can edit this as per requirement*/
#if defined(__PIC24FJ32GA102__) || defined(__PIC24FJ32GA104__)\
|| defined(__PIC24FJ64GA102__) || defined(__PIC24FJ64GA104__)\
|| defined(__PIC24FJ32GB002__) || defined(__PIC24FJ32GB004__)\
|| defined(__PIC24FJ64GB002__) || defined(__PIC24FJ64GB004__)
#define PIC24F_LOW_PIN_DEVICE
#endif

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	PIC24 Constants / Macros ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~ Define the hardware settings as per your application board ~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


////////////////////////////////////////////////////////////////////////////////
//					CHANNEL ASSIGNMENT
//	Set the appropriate ADC Channel number to each Direct Key
////////////////////////////////////////////////////////////////////////////////


#ifdef USE_DIRECT_KEYS

	#define DIRECTKEY1_CHANNEL    CHANNEL_AN0
	#define DIRECTKEY2_CHANNEL    CHANNEL_AN1
	#define DIRECTKEY3_CHANNEL    CHANNEL_AN2
	#define DIRECTKEY4_CHANNEL    CHANNEL_AN3
	#define DIRECTKEY5_CHANNEL    CHANNEL_AN4
	#define DIRECTKEY6_CHANNEL    CHANNEL_AN5
	#define DIRECTKEY7_CHANNEL    CHANNEL_AN6
	#define DIRECTKEY8_CHANNEL    CHANNEL_AN7

#endif


/* Total count of ADC channel in the PIC controller used */
#if defined(__PIC24FJ128DA110__) || defined(__PIC24FJ128DA210__)|| defined(__PIC24FJ256DA110__)\
 || defined(__PIC24FJ256DA210__) ||defined(__PIC24FJ128GB110__) || defined(__PIC24FJ128GB210__)
	#define 	MAX_ADC_CHANNELS			24 //there are 24 ADC channels on PIC24F_DA110 & 210 Family

#elif defined(__PIC24F16KA301__) || defined (__PIC24F16KA302__)  || defined(__PIC24F16KA304__)\
||  defined(__PIC24F32KA301__)   || defined (__PIC24F32KA302__)  || defined(__PIC24F32KA304__)\
||  defined(__PIC24FV16KA301__)  || defined (__PIC24FV16KA302__) || defined(__PIC24FV16KA304__)\
||  defined(__PIC24FV32KA301__)  || defined (__PIC24FV32KA302__) || defined(__PIC24FV32KA304__)
	#define 	MAX_ADC_CHANNELS			12 //there are 12 ADC channels on PIC24F16KA304 & FV16KA304 Family

#else
	#define 	MAX_ADC_CHANNELS			16 //there are 16 ADC channels on PIC24F __GB or __GA controllers 
#endif

/** TRIS ***********************************************************/
#define 	INPUT_PIN          			1
#define 	OUTPUT_PIN         			0

/********************		Compiler Options  	*****************************************/
#define		GROUND_TEST				//use to ground all A/D input channels	//except channel of interest
#define 	CTMU_GND_ON 			//use for current source grounding

/********************		PORTS  	*************************************/
/***********************************************************************/
/***********************************************************************/
#define 	INIT_CLKDIV_VALUE  		0x0000	
#define 	INIT_PORTB_VALUE		0xFFFF

#ifdef ADC_LEGACY
#define   	MAKE_ALL_PINS_DIGITAL 	0xFFFF
#endif

#ifdef ADC_NEW
#define   	MAKE_ALL_PINS_DIGITAL 	0x0000
#endif

#define 	INIT_TRISF_VALUE		0x0000
#define 	INIT_TRISB_VALUE		0xFFFF		//All inputs
#define 	INIT_TRISC_VALUE		0x0000 		//Port Bits RC1,2,3,4 are LEDS for the wheel
#define 	INIT_TRISD_VALUE		0x0000 		//Port Bits RD1,2,3,4,5,8,9,10 are for 
												//LED bar graph, RD6,7,12,13 are wheel LEDs
#define 	INIT_TRISE_VALUE		0x0000 		//RE0,1,2,3,4,5,6,7,8 are Num Pad LEDs,
												//RE9 is Power LED
#define 	INIT_TRISG_VALUE		0x0000 		//RG6 is Wheel center LED, RG7 is Speaker
#define 	INIT_PORTG_VALUE		0xFFFF
#define 	INIT_PORTC_VALUE		0xFFFF
#define 	INIT_PORTD_VALUE		0x30C0
#define 	INIT_PORTE_VALUE		0xFFFF

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~ SYSTEM CLOCK	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

// Clock speed for PIC24
#if defined (__C30__)
    #define GetSystemClock()        32000000   
#endif

// Defined for Timer Interrupt
#define TIMER_INTERRUPT_TIME        1000          // Required time to generate timer interrupt 2000 = 0.5ms,1000 = 1ms,  500 = 2ms .......
	
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

#endif	// _MTOUCH_HARDWARE_PROFILE_H


