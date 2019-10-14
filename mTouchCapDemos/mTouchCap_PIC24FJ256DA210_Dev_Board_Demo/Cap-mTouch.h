/*****************************************************************************
 * Cap Touch Buttons Driver
 *****************************************************************************
 * FileName:        Cap-mTouch.h
 * Dependencies:    
 * Processor:       PIC24F
 * Compiler:       	MPLAB C30
 * Linker:          MPLAB LINK30
 * Company:         Microchip Technology Incorporated
 *
 * Software License Agreement
 *
 * Copyright © 2008 Microchip Technology Inc.  All rights reserved.
 * Microchip licenses to you the right to use, modify, copy and distribute
 * Software only when embedded on a Microchip microcontroller or digital
 * signal controller, which is integrated into your product or third party
 * product (pursuant to the sublicense terms in the accompanying license
 * agreement).  
 *
 * You should refer to the license agreement accompanying this Software
 * for additional information regarding your rights and obligations.
 *
 * SOFTWARE AND DOCUMENTATION ARE PROVIDED “AS IS” WITHOUT WARRANTY OF ANY
 * KIND, EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY
 * OF MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR
 * PURPOSE. IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE LIABLE OR
 * OBLIGATED UNDER CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION,
 * BREACH OF WARRANTY, OR OTHER LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT
 * DAMAGES OR EXPENSES INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL,
 * INDIRECT, PUNITIVE OR CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA,
 * COST OF PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY
 * CLAIMS BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF),
 * OR OTHER SIMILAR COSTS.
 *
 * Author               Date        Comment
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * Bruce Bohn			01/17/10	...
 * 
 *****************************************************************************/
#ifndef _CAPMTOUCH_H
    #define _CAPMTOUCH_H

#include "GenericTypeDefs.h"
#include <p24Fxxxx.h>
#include "mTouchCap_Config.h"


/* Function Protoypes */

void mTouchCapApp_PortSetup(void);
void SaveIOsettings(void);
void RestoreIOsettings(void);

/* Defines */

	#define STOP_TIMER_IN_IDLE_MODE     0x2000
	#define TIMER_SOURCE_INTERNAL       	0x0000
	#define TIMER_ON                    			0x8000
	#define GATED_TIME_DISABLED         	0x0000
	#define TIMER_16BIT_MODE            	0x0000
	#define TIMER_PRESCALER_1           	0x0000
	#define TIMER_PRESCALER_8           	0x0010
	#define TIMER_PRESCALER_64          	0x0020
	#define TIMER_PRESCALER_256         	0x0030
	#define TIMER_INTERRUPT_PRIORITY    0x1000
	
	#define TIMER4_PRESCALER			TIMER_PRESCALER_64		  // User needs notto modify these two variables for different prescalar	
	#define TIMER_PRESCALER_VALUE		64                         // This value is used to calculate TIMER_PERIOD 
	#define TIMER3_PERIOD				500




/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	PIC24 Constants / Macros ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~ Define the hardware settings as per your application board ~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* Total count of ADC channel in the PIC controller used */
//#define 	MAX_ADC_CHANNELS			24 //there are 24 ADC channels on PIC24F DA210


/** TRIS ***********************************************************/
#define INPUT_PIN          1
#define OUTPUT_PIN         0

/********************		Compiler Options  	*****************************************/
#define	GROUND_TEST				//use to ground all A/D input channels	//except channel of interest
#define CTMU_GND_ON 			//use for current source grounding

/********************		PORTS  	*****************************************/
/***********************************************************************/
/***********************************************************************/
#define 	INIT_CLKDIV_VALUE  		0x0000
#define 	INIT_PORTB_VALUE		0xFFFF
//#define   MAKE_ALL_PINS_DIGITAL 0xFFFF

#define 	INIT_TRISF_VALUE		0x0000
#define 	INIT_TRISB_VALUE		0x0000		//All inputs
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



#endif	// _CAPMTOUCH_H


