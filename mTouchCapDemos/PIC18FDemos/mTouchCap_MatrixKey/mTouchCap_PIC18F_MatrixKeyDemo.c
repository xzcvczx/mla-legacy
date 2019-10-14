
/*****************************************************************************
 * FileName:        	mTouchCap_PIC18F_MatrixKeyDemo.c
 * Dependencies:
 * Processor:       	PIC18
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
 * Author               		Date        	Comment
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * Naveen. M					14 Apr 2009		Version 1.0 Initial Draft
 * Sasha. M	/ Naveen. M			22 Apr 2009  	Version 1.0 Initial Draft
 * Sasha. M	/ Naveen. M			11 Nov 2009  	Version 1.0 Release
 * Sasha. M	/ Nithin. 			10 April 2010  	Version 1.20 Release
 * Prasad A			            08 June 2011    Version 1.31 Release
 *****************************************************************************/

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Includes	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

#include	"Config.h"
#include	"mTouchCap_PIC18F_MatrixKeyDemo.h"
#include 	"HardwareProfile.h"
#include 	"GenericTypeDefs.h"
#include	"mTouchCap_CtmuAPI.h"
#include	"mTouchCap_Timers.h"
#include 	"Compiler.h"
#include 	"mTouchCap_2Ch_Slider.h"
#include	"Display.h"

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Configuration setting~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * Oscillator is configured as HS
 * Watch dog timer is disabled
 * Extended instruction mode is disabled
 * Internal/External Oscillator switch over is enabled 
 * CPU clock is not divided
 * The IOLOCK bit (PPSCON<0>) can be set and cleared as needed 
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
 //If the selected device is under this then apply below settings. User can edit this as per requirement.
#if defined(__18F24J50) || defined(__18F25J50) || defined(__18F26J50) || defined(__18F44J50)  || defined(__18F45J50)\
 || defined(__18LF24J50) || defined(__18LF25J50)|| defined(__18LF26J50)|| defined(__18LF44J50)|| defined(__18LF45J50)|| defined(__18LF46J50)\
 || defined(__18F46J50) || defined(__18F26J53)  || defined(__18F27J53) ||defined(__18F46J53) || defined(__18F47J53)\
 || defined(__18LF26J53) || defined(__18LF27J53)||defined(__18LF46J53) || defined(__18LF47J53)
#pragma config WDTEN = OFF, XINST = OFF, PLLDIV = 2, CPUDIV = OSC1 
#pragma config OSC=HSPLL, DSBOREN = OFF, IOL1WAY = OFF 
#endif

//If the selected device is under this then apply below settings. User can edit this as per requirement.
#if defined (__18F24J11)  || defined(__18F25J11) || defined(__18F26J11)|| defined(__18F44J11)  || defined(__18F45J11) || defined(__18F46J11)\
|| defined(__18LF24J11) || defined(__18LF25J11)|| defined(__18LF26J11)|| defined(__18LF44J11) || defined(__18LF45J11)|| defined(__18LF46J11)\
|| defined(__18F26J13)  || defined(__18F27J13) || defined(__18F46J13)|| defined(__18F47J13)\
|| defined(__18LF26J13) || defined(__18LF27J13)|| defined(__18LF46J13)|| defined(__18LF47J13) 
#pragma config WDTEN = OFF, XINST = OFF 
#pragma config OSC=HSPLL, DSBOREN = OFF, IOL1WAY = OFF 
#endif

#if defined	ADC_ADCON_LEGACY     //If the selected device is under this MACRO, then apply below settings. User can edit this as per requirement.
#pragma config WDTEN = OFF, XINST = OFF, OSC=HSPLL 
#endif


#if defined	ADC_ANSEL_NEW     //If the selected device is under this MACRO, then apply below settings. User can edit this as per requirement.
#pragma config XINST = OFF, FOSC = HSMP, BOREN = OFF
#pragma config WDTEN = OFF, MCLRE = EXTMCLR
#endif

#if defined	ADC_ANCON_NEW     //If the selected device is under this MACRO, then apply below settings. User can edit this as per requirement.
#pragma config XINST = OFF, FOSC = HS1,PLLCFG = ON, BOREN = OFF
#pragma config WDTEN = OFF, MCLRE = ON
#endif
/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~END OF CONFIG settings ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Variables	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
extern SHORT T3counter;					//timer 3 is used for the buzzer 

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Function Prototypes  ~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


	
void mTouchCapApp_DemoMatrixKeys(void);	
void mTouchCapApp_CreateMatrixKeys(void);
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Declarations  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Function Definitions  ~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

/********************************************************************
 * Function			:    void main(void)
 *
 * PreCondition		:    None
 *
 * Input			:    None
 *
 * Output			:    None
 *
 * Side Effects		:    None
 *
 * Overview			: 	 The Application main function
 *
 *
 *
 *
 *
 * Note			:
 *******************************************************************/
void main(void)
{

	CHAR Index;	
	
	#ifdef PLL_ENABLED
	/* PLL Settings */
	PLL_EN_BIT = 1;
	#endif

		

	/***************************************************************************
	--------------- mTouchCapApp_CreateMatrixKeys" -----------------------		

	***************************************************************************/
	#ifdef USE_MATRIX_KEYS
		
	mTouchCapApp_CreateMatrixKeys();
	#endif





	/***************************************************************************
		--------------- Demo of API "mTouchCapAPI_SetUpCTMU_Default" -----------------------		
		Initialize the application using the API "mTouchCapAPI_SetUpCTMU_Default". The below function 
		"mTouchCapPhy_Init" intern calls the mentioned API.
	***************************************************************************/
	/* This is mandatory function call to initilize physical layer. Call this function before any application layer code. */
	mTouchCap_Init();					// Launch Device Initializations  

	mTouchCapApp_powerOnLEDSeq();		// Run "Chaser" LED sequence on slider LEDs


	while(1) 
	{	


		if(dataReadyCTMU == 1)			// This flag is set by Timer 4 ISR //when all channels have been read										
		{
			dataReadyCTMU = 0;			//clear flag

	    	Set_ScanTimer_IF_Bit_State(DISABLE);              //Clear timer 4 SHORT flag
    		Set_ScanTimer_IE_Bit_State(DISABLE);              //Disable interrupt
    		Set_ScanTimer_ON_Bit_State(DISABLE) ;              //Stop timer 4

				
			/***************************************************************************
			--------------- Demo of API "mTouchCapAPI_GetStatusMatrixButton" -----------------------		
			Get the status of a Matrix key press using the API "mTouchCapAPI_GetStatusMatrixButton" whose Row and Column 
			channel numbers is mentioned. The below function intern calls the mentioned API.
			***************************************************************************/
			#ifdef USE_MATRIX_KEYS		
			/* Demo Direct Keys */
			mTouchCapApp_DemoMatrixKeys();			
			#endif

		    Set_ScanTimer_IF_Bit_State(DISABLE);              //Clear flag
    		Set_ScanTimer_IE_Bit_State(ENABLE);              //Enable interrupt
    		Set_ScanTimer_ON_Bit_State(ENABLE) ;              //Run timer

				
		} // end if(dataReadyCTMU)
	} //end while (1)

}  // end main()

 /*********   	End of Function 	*********************/


 /********************************************************************
 * Function			:    void mTouchCapApp_PortSetup(void)
 *
 * PreCondition		:    None
 *
 * Input			:    None
 *
 * Output			:    None
 *
 * Side Effects		:    None
 *
 * Overview			: 	 Initialize the Ports. Set the appropriate value of initialization in HardwareProfile.h file.
 *
 *
 *
 *
 *
 * Note			:User can define the right values of Ports pins here.
 *******************************************************************/

void mTouchCapApp_PortSetup(void)
{

	TRISB=	INIT_TRISB_VALUE;
	PORTB=	INIT_PORTB_VALUE;   			
	TRISB = INIT_TRISB_VALUE;
	TRISC = INIT_TRISC_VALUE; 	
	PORTC = INIT_PORTC_VALUE;

	#ifndef PIC18F_LOW_PIN_DEVICE

		TRISD = INIT_TRISD_VALUE; 
		TRISE = INIT_TRISE_VALUE ;
		
		LATD = INIT_PORTD_VALUE ;
		PORTE = INIT_PORTE_VALUE ;
	#endif

}




/*********   	End of Function 	*********************/


