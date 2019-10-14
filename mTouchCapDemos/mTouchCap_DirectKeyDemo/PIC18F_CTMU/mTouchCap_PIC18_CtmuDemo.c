
/*****************************************************************************
 * FileName:        mTouchCap_PIC18_CtmuDemo.c
 * Dependencies:
 * Processor:       	PIC18, PIC24
 * Compiler:       	C18, C30
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
 * Naveen. M				14 Apr 2009		Version 1.0 Initial Draft
 * Sasha. M	/ Naveen. M		22 Apr 2009  	Version 1.1.release
 * Sasha. M	/ Naveen. M		11 Nov 2009  	Version 1.0 Release
 *****************************************************************************/

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Includes	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

#include	"mTouchCap_Config.h"
#include	"mTouchCap_PIC18_CtmuDemo.h"
#include 	"mTouchCap_HardwareProfile.h"
#include 	"GenericTypeDefs.h"
#include	"mTouchCap_CtmuAPI.h"
#include	"mTouchCap_Timers.h"
#include 	"Compiler.h"
#include 	"mTouchCap_2Ch_Slider.h"
#include	"mTouchCap_Display.h"

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
#if defined(__18F46J50)     //If the selected device is PIC18F46J50, then apply below settings. User can edit this as per requirement.
#pragma config WDTEN = OFF, PLLDIV = 2, XINST = OFF, CPUDIV = OSC1
#pragma config OSC=HSPLL, DSBOREN = OFF, DSWDTEN = OFF, IOL1WAY = OFF
#endif


#if defined(__18F46J11)     //If the selected device is PIC18F46J11, then apply below settings. User can edit this as per requirement.
#pragma config WDTEN = OFF, XINST = OFF
#pragma config OSC=HSPLL, DSBOREN = OFF, DSWDTEN = OFF, IOL1WAY = OFF
#endif


#if defined(__18F87K90)     //If the selected device is PIC18F46J50, then apply below settings. User can edit this as per requirement.
#pragma config XINST = OFF, FOSC = HS1, PLLCFG = ON, BOREN = OFF
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
void mTouchCapApp_CapSenseInit(void);
void mTouchCapApp_SetLEDDisplay(SHORT);
void mTouchCapApp_DemoDirectKeys(void);
void mTouchCapApp_DemoMatrixKeys(void);
void mTouchCapApp_DemoTwoChannelSlider(void);
void mTouchCapApp_DemoFourChannelSlider(void);
void mTouchCapApp_2ChDisplay(SHORT);

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Declarations  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Function Definitions  ~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

/********************************************************************
 * Function		:    SHORT main(void)
 *
 * PreCondition	:    None
 *
 * Input			:    None
 *
 * Output			:    None
 *
 * Side Effects		:    None
 *
 * Overview		: The Application main function
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
	WORD ChannelAdcData, AdcValueToAchieve, DemoChannel;
	WORD AdcValueToAchieve_DataRangeMax, AdcValueToAchieve_DataRangeMin;

	/* PLL Settings */
	OSCTUNEbits.PLLEN = 1;



#if GUI_USB_INTERFACE
	mt2_comm_init();
#endif

	/***************************************************************************
		--------------- Demo of API "mTouchCapAPI_SetUpCTMU_Default" -----------------------
		Initialize the application using the API "mTouchCapAPI_SetUpCTMU_Default". The below function
		"mTouchCapPhy_Init" intern calls the mentioned API.
	***************************************************************************/
	/* This is mandatory function call to initilize physical layer. Call this function before any application layer code. */
	mTouchCapPhy_Init();					// Launch Device Initializations  :

	mTouchCapApp_powerOnLEDSeq();		// Run "Chaser" LED sequence on slider LEDs

	while(1)
	{
#if GUI_USB_INTERFACE
		mt2_comm();
#endif

		if(dataReadyCTMU == 1)			// This flag is set by Timer 4 ISR //when all channels have been read
		{
			dataReadyCTMU = 0;			//clear flag

	    		Set_ScanTimer_IF_Bit_State(DISABLE);              //Clear timer 4 SHORT flag
    			Set_ScanTimer_IE_Bit_State(DISABLE);              //Disable interrupt
    			Set_ScanTimer_ON_Bit_State(DISABLE) ;              //Stop timer 4

			/***************************************************************************
			--------------- Demo of API "mTouchCapAPI_GetStatusDirectButton" -----------------------
			Get the status of a Direct key press using the API "mTouchCapAPI_GetStatusDirectButton" whose channel
			number is mentioned. The below function intern calls the mentioned API.
			***************************************************************************/
			#ifdef USE_DIRECT_KEYS				// Number pad is 4x5 matrix
			/* Demo Matrix Keys */
			mTouchCapApp_DemoDirectKeys();
			#endif

			/* Allocate one of the channel number for demonstrating other APIs. Precondition is that the channel number is
			assigned/initalized in "Config.h" file. Also enable "USE_ONE_CHANNEL_BOARD" option in configuration */
			#ifdef USE_ONE_CHANNEL_BOARD
				DemoChannel = SINGLE_KEY;
				AdcValueToAchieve = 0x260;	//Sample ADC count to achieve

				/***************************************************************************
				--------------- Demo of API "mTouchCapAPI_AutoAdjustChannel" -----------------------
				Automatically adjust the charge voltage channel using the API "mTouchCapAPI_AutoAdjustChannel".
				***************************************************************************/
				if (FAILED == mTouchCapAPI_AutoAdjustChannel (DemoChannel,AdcValueToAchieve) )
				{
					// DO THE ERROR HANDLING HERE
				}

				/***************************************************************************
				--------------- Demo of API "mTouchCapAPI_CTMU_GetChannelReading" -----------------------
				It reads the ADC data present on the channel number passed. This data varies based on the touch/untouch
				on the board sensor connected to channel.
				***************************************************************************/
				ChannelAdcData = mTouchCapAPI_CTMU_GetChannelReading(DemoChannel);

				/* Calcluate the band of variation allowed. */
				AdcValueToAchieve_DataRangeMax = (ChannelAdcData + (ChannelAdcData*AUTO_ADJUST_BAND_PERCENT/100));
				AdcValueToAchieve_DataRangeMin = (ChannelAdcData - (ChannelAdcData*AUTO_ADJUST_BAND_PERCENT/100));

				//Is it within specified range ?
				if( ChannelAdcData>=AdcValueToAchieve_DataRangeMin && ChannelAdcData<=AdcValueToAchieve_DataRangeMax )
		 		{
					//PASSED
				}
				else
				{
				   // DO THE ERROR HANDLING HERE
				}

			#endif

			    Set_ScanTimer_IF_Bit_State(DISABLE);              //Clear flag
    			Set_ScanTimer_IE_Bit_State(ENABLE);              //Enable interrupt
    			Set_ScanTimer_ON_Bit_State(ENABLE) ;              //Run timer


		} // end if(dataReadyCTMU)
	} //end while (1)
}  // end main()

 /*********   	End of Function 	*********************/


 /********************************************************************
 * Function		:    void mTouchCapApp_PortSetup(void)
 *
 * PreCondition	:    None
 *
 * Input			:    None
 *
 * Output			:    None
 *
 * Side Effects		:    None
 *
 * Overview		: Initialize the Ports. Set the appropriate value of initialization in HardwareProfile.h file.
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
	TRISD = INIT_TRISD_VALUE;
	TRISE = INIT_TRISE_VALUE ;
	PORTC = INIT_PORTC_VALUE ;
	PORTD = INIT_PORTD_VALUE ;
	PORTE = INIT_PORTE_VALUE ;

}



/********************************************************************
 * Function		:    void mTouchCapApp_CapSenseInit(void)
 *
 * PreCondition	:    None
 *
 * Input			:    None
 *
 * Output			:    None
 *
 * Side Effects		:    None
 *
 * Overview		: Performs Initializations for capacitive sensing.
 *
 *
 *
 *
 *
 * Note			:
 *******************************************************************/
void mTouchCapApp_CapSenseInit(void)
{
	WORD	Index;		// Index of what button is being checked.

	// Load defaults for buttons
	for (Index=0; Index < NUM_CTMU_CH; Index++)
	{			// Load Default GB/TRP
			curRawData[channelIndex[Index]]		= 0;
			averageData[channelIndex[Index]] 	= 0;
			tripValue[channelIndex[Index]] = DEFAULT_TRIP_VALUE;
	}
	startupCount	= INITIAL_STARTUP_COUNT;									// first pass flag to reach steady state average before enabling detection
}

/*********   	End of Function 	*********************/


