
/*****************************************************************************
 * FileName:        mTouchCap_HardwareProfile.h
 * Dependencies:
 * Processor:       PIC24
 * Compiler:       C30
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
 * Naveen. M				     14 Apr 2009		Version 1.0 Initial Draft
 * Sasha. M	/ Naveen. M		4 May 2009  	Version 1.1.release
 * Sasha. M	/ Naveen. M		11 Nov 2009  			Version 1.0 Release
 *****************************************************************************/
#ifndef _MTOUCH_HARDWARE_PROFILE_H
#define _MTOUCH_HARDWARE_PROFILE_H
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Includes	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
#include "GenericTypeDefs.h"


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	PIC24 Constants / Macros ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~ Define the hardware settings as per your application board ~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* Total count of ADC channel in the PIC controller used */
#define 	MAX_ADC_CHANNELS			16 //there are 16 ADC channels on PIC24F 128GB or 64GB controllers


/** TRIS ***********************************************************/
#define INPUT_PIN          1
#define OUTPUT_PIN         0

/********************		Compiler Options  	*****************************************/
#define	GROUND_TEST				//use to ground all A/D input channels	//except channel of interest
#define 	CTMU_GND_ON 			//use for current source grounding

/********************		PORTS  	*****************************************/
/***********************************************************************/
/***********************************************************************/
#define 	INIT_CLKDIV_VALUE  		0x0000
#define 	INIT_PORTB_VALUE		0xFFFF
#define   MAKE_ALL_PINS_DIGITAL 0xFFFF

#define 	INIT_TRISF_VALUE		0x0000
#define 	INIT_TRISB_VALUE		0xFFFF		//All inputs
#define 	INIT_TRISC_VALUE		0x0000 //0xFFE1;		//Port Bits RC1,2,3,4 are LEDS for the wheel
#define 	INIT_TRISD_VALUE		0x0000 //0xCD3F;		//Port Bits RD1,2,3,4,5,8,9,10 are for
												//LED bar graph, RD6,7,12,13 are wheel LEDs
#define 	INIT_TRISE_VALUE		0x0000 //0xFC00;		//RE0,1,2,3,4,5,6,7,8 are Num Pad LEDs,
													//RE9 is Power LED
#define 	INIT_TRISG_VALUE		0x0000 //0xFF3F;		//RG6 is Wheel center LED, RG7 is Speaker
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

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Externs  	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */



/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Enums      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */



/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Function Prototypes  ~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */



#endif	// _MTOUCH_HARDWARE_PROFILE_H


