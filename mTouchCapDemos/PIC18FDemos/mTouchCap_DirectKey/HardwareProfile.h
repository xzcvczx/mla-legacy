
/*****************************************************************************
 * FileName:        	HardwareProfile.h
 * Dependencies:
 * Processor:       	PIC18,
 * Compiler:       		C18
 * Linker:          	MPLINK
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
 * Naveen. M				14 Apr 2009		Version 1.0 Initial Draft
 * Sasha. M	/ Naveen. M		4 May 2009  	Version 1.0 Initial Draft
 * Sasha. M	/ Naveen. M		11 Nov 2009  	Version 1.0 Release
 * Sasha. M	/ Nithin. 		10 April 2010  	Version 1.20 Release
 * Prasad A                 08 June 2011    Version 1.31 Release
 *****************************************************************************/

#ifndef HARDWARE_PROFILE_PIC18F46J50_PIM_H
#define HARDWARE_PROFILE_PIC18F46J50_PIM_H
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Includes	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
#include "GenericTypeDefs.h"
#include "Compiler.h"


/* Different group of controllers have different ADC registers configuration. Depending on the controller selected specific ADC registers will be assigned  */

#if defined(__18F24J50) || defined(__18F25J50) || defined(__18F26J50) || defined(__18F44J50)  || defined(__18F45J50) || defined(__18F46J50)\
 || defined(__18LF24J50) || defined(__18LF25J50)|| defined(__18LF26J50)|| defined(__18LF44J50)|| defined(__18LF45J50)|| defined(__18LF46J50)\
 || defined(__18F26J53)  || defined(__18F27J53) ||defined(__18F46J53)  || defined(__18F47J53)\
 || defined(__18LF26J53) || defined(__18LF27J53)||defined(__18LF46J53) || defined(__18LF47J53)\
 || defined(__18F24J11)  || defined(__18F25J11) || defined(__18F26J11) || defined(__18F44J11)  || defined(__18F45J11) || defined(__18F46J11)\
 || defined(__18LF24J11) || defined(__18LF25J11)|| defined(__18LF26J11)|| defined(__18LF44J11) || defined(__18LF45J11)|| defined(__18LF46J11)\
 || defined(__18F26J13)  || defined(__18F27J13) || defined(__18F46J13) || defined(__18F47J13)\
 || defined(__18LF26J13) || defined(__18LF27J13)|| defined(__18LF46J13)|| defined(__18LF47J13)


	#define ADC_ANCON_LEGACY	//ANCONx register will be selected for Configuring Port pin as Analog or Digital and ADCON0 and ADCON1 register settings are used for ADC configuration				

#endif

#if defined(__18F66J90) || defined(__18F67J90) || defined(__18F86J90) || defined(__18F87J90)\
|| defined(__18F66J93)  || defined(__18F67J93) || defined(__18F86J93) || defined(__18F87J93)\
|| defined(__18F86J72)  || defined(__18F87J72) 


	#define ADC_ADCON_LEGACY	//ADCON register will be selected for Configuring Port pin as Analog or Digital and ADCON1 and ADCON2 register settings are used for ADC configuration	

#endif

#if defined(__18F43K22)  || defined(__18F44K22) || defined(__18F45K22) || defined(__18F46K22)\
 || defined (__18F23K22) || defined(__18F24K22) || defined(__18F25K22) || defined(__18F26K22)\
 ||	defined(__18LF43K22) || defined(__18LF44K22) || defined(__18LF45K22) || defined(__18LF46K22)\
 || defined (__18LF23K22)|| defined(__18LF24K22) || defined(__18LF25K22) || defined(__18LF26K22)

	#define ADC_ANSEL_NEW		//ADSEL register will be selected for Configuring Port pin as Analog or Digital and ADCON1 and ADCON2 register settings are used for ADC configuration

#endif


#if defined(__18F65K22) || defined(__18F66K22) || defined(__18F67K22)\
|| defined(__18F85K22)  || defined(__18F86K22) || defined(__18F87K22)\
|| defined(__18F65K90)  || defined(__18F66K90) || defined(__18F67K90)\
|| defined(__18F85K90)  || defined(__18F86K90) || defined(__18F87K90)

	#define ADC_ANCON_NEW		//ADCON register will be selected for Configuring Port pin as Analog or Digital and ADCON1 and ADCON2 register settings are used for ADC configuration

#endif

#if defined (__18F23K22) || defined(__18F24K22) || defined(__18F25K22) || defined(__18F26K22)\
|| defined (__18LF23K22)|| defined(__18LF24K22) || defined(__18LF25K22) || defined(__18LF26K22)\
|| defined(__18F24J50) || defined(__18F25J50) || defined(__18F26J50) || defined(__18LF24J50) || defined(__18LF25J50) || defined(__18LF26J50)\
|| defined(__18F26J53)  || defined(__18F27J53) || defined(__18LF26J53)|| defined(__18LF27J53) \
|| defined(__18F26J13)  || defined(__18F27J13) || defined(__18LF26J13)|| defined(__18LF27J13) \
|| defined(__18F24J11)  || defined(__18F25J11) || defined(__18F26J11) || defined(__18LF24J11)  || defined(__18LF25J11) || defined(__18LF26J11)

	#define PIC18F_LOW_PIN_DEVICE	//Controllers without PORTD, PORTE are defined under these. 

#endif

//Configure only the number of Analog channels present with respect to controllers 

#if defined(__18F65K22) || defined(__18F66K22) || defined(__18F67K22)|| defined(__18F65K90)  || defined(__18F66K90) || defined(__18F67K90)
	#define _18F6XK22	//These controllers have 15 Analog channels. To intialize only the number of channels present the definition is used.
#endif

#if defined(__18F23K22)  || defined(__18F24K22) || defined(__18F25K22) || defined(__18F26K22)\
 || defined(__18LF23K22) || defined(__18LF24K22) || defined(__18LF25K22) || defined(__18LF26K22)
	#define _18XF2XK22	//These controllers have 24 Analog channels. To intialize only the number of channels present this definition is used.
#endif
	


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	PIC18 Constants / Macros ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~ Define the hardware settings as per your application board ~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

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

#define 	MAX_ADC_CHANNELS	    	13 
 /** I/O pin definitions ********************************************/
#define INPUT_PIN 		1
#define OUTPUT_PIN 		0


#define	GROUND_TEST			//use to ground all A/D input channels	//except channel of interest
//#define 	CTMU_GND_ON 			//use for current source grounding
/***********************************************************************/
/********************		PORTS  	*****************************************/
/***********************************************************************/
/***********************************************************************/


#define 	INIT_CLKDIV_VALUE  		0x00
#define 	INIT_PORTB_VALUE		0xFF
#define     MAKE_ALL_DIGITAL_PINS  	0xFF

#define 	INIT_TRISF_VALUE		0x00
#define 	INIT_TRISB_VALUE		0xFF		//All inputs
#define 	INIT_TRISC_VALUE		0x00 //0xFFE1;		//Port Bits RC1,2,3,4 are LEDS for the wheel
#define 	INIT_TRISD_VALUE		0x00 //0xCD3F;		//Port Bits RD1,2,3,4,5,8,9,10 are for 
						//LED bar graph, RD6,7,12,13 are wheel LEDs
#define 	INIT_TRISE_VALUE		0x00 //0xFC00;		//RE0,1,2,3,4,5,6,7,8 are Num Pad LEDs,
						//RE9 is Power LED
#define 	INIT_TRISG_VALUE		0x00 //0xFF3F;		//RG6 is Wheel center LED, RG7 is Speaker
#define 	INIT_PORTG_VALUE		0xFF
#define 	INIT_PORTC_VALUE		0xFF
#define 	INIT_PORTD_VALUE		0xFF
#define 	INIT_PORTE_VALUE		0xFF
/***********************************************************************/
/********************	End of PORTS  	*****************************************/
/***********************************************************************/
/***********************************************************************/


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~ SYSTEM CLOCK	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


// Clock speed for PIC18
#if defined (__18CXX)
	 #ifdef PLL_ENABLED
	    	#define GetSystemClock()        48000000                        // System clock frequency (Hz) when PLL enabled.
	#else 
		#define GetSystemClock()        8000000                        // System clock frequency (Hz) when PLL disabled.
	#endif
#endif

 // Defined for Timer Interrupt
 #define TIMER_INTERRUPT_TIME        1000                   		// Required time to generate timer interrupt 2000 = 0.5ms,1000 = 1ms,  500 = 2ms .......
	
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

#endif  //HARDWARE_PROFILE_PIC18F46J50_PIM_H


