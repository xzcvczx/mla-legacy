*******************************************************************************
********************** Readme File for 4 Channel-Slider Demo ***************************
*******************************************************************************

Copyright (c) Microchip Technology Inc.  All rights reserved.

******************************************************************************
This file contains the information related to the mTouch Capacitive Touch Software Library 
used for 4 Channel-Slider Demo. 

*******************************************************************************
                            Release Information
*******************************************************************************
mTouch Cap Library v1.20:      	  April-2010
MPLAB version:                    	  8.40 or Later
C18 Compiler Version:	         	  3.34 or Later  
 

*******************************************************************************
    	mTouch Capacitive Touch Library Testing Details for 4 Channel-Slider Demo
*******************************************************************************
The mTouch Capacitive Touch Library software is tested using PIC18F CTMU Evaluation
boards(DM183026).

The mTouch Capacitive Touch Library software can be customized to customer's application-specific boards
using below mentioned set-Up details.

*******************************************************************************
    	mTouch Capacitive Touch Library Set-Up Details for 4 Channel-Slider Demo
*******************************************************************************


1) mTouchCap_4Ch_SliderDemo project can be configured as per user's application by
    modifying two header files "HardwareProfile.h" and "Config.h".

2) "HardwareProfile.h" file defines the macros that are related to the hardware used. 
     Make changes to this file according to the target hardware.
     This file is located in each demo folder. It configures 
     system hardware related settings like  system clock, ports, max ADC channels.


3) "Config.h" file defines the configurations related to the library. 
     This file is located in each demo folder.


4) User should verify and modify the ADC module configuration bits when device is selected other than PIC18F46J50 Family devices.  
    "mTouchCap_PIC18_CTMU_Physical.h" file defines the configurations related to the ADC and CTMU Module. 

    The default path of the file is:
   
    C:\Microchip Solutions\Microchip\Include\mTouchCap\PIC18F & PIC24F CTMU Library


5) How to configure 4-Channel Slider?

Step 1:   In mTouchCap_PIC18F_4ChSliderDemo.c, call the function "mTouchCapApp_CreateFourChannelSlider". 
	This function definition is written in  mTouchCap_4Ch_Slider.c. Within the function, we have 4-Channel slider set-up function called  	                     mTouchCapAPI_SetUpChannelSlider4Ch. Before using this function, first create an objects for Slider4Ch structure.

		E.g.  a) Slider4Ch Volume.
		       b) Slider4Ch Volume1.

Step 2:  In the function mTouchCapAPI_SetUpChannelSlider4Ch, pass the first parameter as Address of
            instance created using the Slider4Ch structure. 
	
		E.g. a) &Volume.
    		      b) &Volume1.	

Step 3: Pass the CTMU Channel numbers used by the specified 2-Channel Slider as next parameters.

		E.g. a) FOUR_CH_SLIDER1_CHANNEL0,FOUR_CH_SLIDER1_CHANNEL1,
		          FOUR_CH_SLIDER1_CHANNEL2,FOUR_CH_SLIDER1_CHANNEL3, for Volume Slider.

           The aliasing for the channel definition of FOUR_CH_SLIDER1_CHANNEL0,FOUR_CH_SLIDER1_CHANNEL1,
           FOUR_CH_SLIDER1_CHANNEL2 and FOUR_CH_SLIDER1_CHANNEL3, is defined in HardwareProfile.h.

           User can change the CTMU Channel definition based on the requirement.


           Default option: CHANNEL_AN0,CHANNEL_AN1,CHANNEL_AN2,CHANNEL_AN3

Step 4: Pass the information about Decode Method used by the slider.

		E.g. a) DECODE_METHOD_PRESS_ASSERT.	
		      b) DECODE_METHOD_PRESS_AND_RELEASE.
     		      c) DECODE_METHOD_MOST_PRESSED.

	Default option: "DECODE_METHOD_PRESS_ASSERT"


Step 5: Pass the information about Filter Method used by the slider.     
		E.g. a) FILTER_METHOD_SLOWAVERAGE.
     		      b) FILTER_METHOD_GATEDAVERAGE.	
		      c) FILTER_METHOD_FASTAVERAGE.

	Default option: "FILTER_METHOD_GATEDAVERAGE"
     
             In short, the mTouchCapAPI_SetUpChannelSlider4Ch function looks like 						   	   	
  	mTouchCapAPI_SetUpChannelSlider4Ch (&Volume1,
					    FOUR_CH_SLIDER1_CHANNEL0,FOUR_CH_SLIDER1_CHANNEL1,
					    FOUR_CH_SLIDER1_CHANNEL2,FOUR_CH_SLIDER1_CHANNEL3,
					    DEFAULT_TRIP_VALUE,
					    DECODE_METHOD_PRESS_ASSERT,
					    FILTER_METHOD_GATEDAVERAGE);


Step 6:  After the set-up function is called, call "mTouchCapApp_DemoFourChannelSlider" function from 					mTouchCap_PIC18F_4ChSliderDemo.c, which is defined in mTouchCap_4Ch_Slider.c.

Step 7:  Within the  "mTouchCapApp_DemoFourChannelSlider" function, call the API "mTouchCapAPI_GetStatusSlider4Ch" 
	by passing the address of instance created using the Slider4Ch structure to get the percentage level of touch on Slider mentioned.
	
		E.g. a) sliderLevel =  mTouchCapAPI_GetStatusSlider4Ch(&Volume).        
		      b) sliderLevel =  mTouchCapAPI_GetStatusSlider4Ch(&Volume1).


*******************************************************************************
    	mTouch Capacitive Touch Library Demonstration for 4 Channel-Slider Demo
*******************************************************************************
The purpose of this demo is to show the presence of touch on the 4 Channel-Slider. 

Based on the cap touch key pressed on the slider, change in the LED display on PIC18F CTMU Evaluation
board will indicate the movement of touch in the slider.

This demo uses 4 CTMU channels to perform a slider functionality. 
The output is ratio-metrically calculated from 0% to 100% proportional to the finger on the slider.


 
*******************************************************************************
	Demo projects for 4 Channel-Slider Demo
*******************************************************************************
The software installed includes the complete source code for 4 Channel-Slider Demo 
applications that can be loaded onto the Evaluation board.  The default directory 
location is: 

C:\Microchip Solutions\mTouchCapDemos\PIC18F_Demos\mTouchCap_4Ch_SliderDemo

The project files for MPLAB are also available in this directory.

*******************************************************************************
            Help File
*******************************************************************************

For more information on mTouch Software Library, refer "mTouchCap Library Help" file.


*******************************************************************************

Note: This text file can be best viewed with the following settings
	Font: 		Verdana
	Font style:	Regular
             Size: 		10
	Format:               Word Wrap