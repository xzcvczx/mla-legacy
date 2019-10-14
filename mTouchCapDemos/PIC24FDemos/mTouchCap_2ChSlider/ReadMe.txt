*******************************************************************************
********************** Readme File for 2 Channel-Slider Demo ***************************
*******************************************************************************

Copyright (c) Microchip Technology Inc.  All rights reserved.

******************************************************************************
This file contains the information related to the mTouch Capacitive Touch Software Library 
used for 2 Channel-Slider Demo. 


*******************************************************************************
                            Release Information
*******************************************************************************
mTouch Cap Library v1.31:      	  June-2011
MPLAB version:                    	  8.70 or Later
C30 Compiler Version:	               3.25 or Later 
MPLAB X version: 			  6.00.01 Beta 
 

*******************************************************************************
    	mTouch Capacitive Touch Library Testing Details for 2 Channel-Slider Demo
*******************************************************************************
The mTouch Capacitive Touch Library software is tested using PIC24F CTMU Evaluation
boards(DM183026-2).

The mTouch Capacitive Touch Library software is compatible for all the controllers with CTMU. 


The mTouch Capacitive Touch Library software can be customized to customer's application-specific boards
using below mentioned set-up details.

*******************************************************************************
    	mTouch Capacitive Touch Library Set-up Details for 2 Channel-Slider Demo
*******************************************************************************


1) mTouchCap_2ChSlider project can be configured as per user's application by
    modifying two header files "HardwareProfile.h" and "Config.h".

2) "HardwareProfile.h" file defines the macros that are related to the hardware used. 
     Controllers with CTMU module are defined in this file.
     Make changes to this file according to the target hardware.
     This file is located in each demo folder. 
     It configures system hardware related settings like  system clock, ports, max ADC channels.


3) "Config.h" file defines the configurations related to the application. 
     This file is located in each demo folder.


4) "mTouchCap_PIC24_CTMU_Physical.h" file defines the configurations related to the ADC and CTMU Module. 
     ADC and CTMU module configuration bits with respect to the controllers are defined in this file .

    The default path of the file is:
   
    C:\Microchip Solutionsv2011-06-02\Microchip\Include\mTouchCap\PIC18F_PIC24F CTMU Library
  
5) How to configure 2-Channel Slider?

Step 1:   In mTouchCap_PIC24F_2ChSlider.c, call the function "mTouchCapApp_CreateTwoChannelSlider". 
	This function definition is written in  mTouchCap_2Ch_Slider.c. Within the function, 
	we have 2-Channel slider set-up function called "mTouchCapAPI_SetUpChannelSlider2Ch". 
	Before using this function, first create an objects for Slider2Ch structure.

		E.g.  a) Slider2Ch Volume.
		       b) Slider2Ch Volume1.

Step 2:  In the function "mTouchCapAPI_SetUpChannelSlider2Ch", pass the first parameter as Address of
            instance created using the Slider2Ch structure. 
	
		E.g. a) &Volume.
    		      b) &Volume1.	

Step 3: Pass the CTMU Channel numbers used by the specified 2-Channel Slider as second and third parameter.

		E.g. a) TWO_CH_SLIDER1_CHANNEL0,TWO_CH_SLIDER1_CHANNEL1 for Volume Slider.

	The aliasing for the channel definition of TWO_CH_SLIDER1_CHANNEL0 and TWO_CH_SLIDER1_CHANNEL1
	 is defined in HardwareProfile.h.User can change the CTMU Channel definition based on the requirement.

                     	Default option: CHANNEL_AN0,CHANNEL_AN1

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
     
            In short, the mTouchCapAPI_SetUpChannelSlider2Ch function looks like 					   	   	   					            mTouchCapAPI_SetUpChannelSlider2Ch( & Volume,
                 	           			  TWO_CH_SLIDER1_CHANNEL0,TWO_CH_SLIDER1_CHANNEL1,
		           			  DEFAULT_TRIP_VALUE,
		          			  DECODE_METHOD_PRESS_ASSERT,
		           			  FILTER_METHOD_GATEDAVERAGE);

Step 6:   After the set-up function is called, call "mTouchCapApp_DemoTwoChannelSlider" function from 							
	mTouchCap_PIC24F_2ChSliderDemo.c, which is defined in mTouchCap_2Ch_Slider.c.

Step 7:  Within the  "mTouchCapApp_DemoTwoChannelSlider" function, call the API 
	mTouchCapAPI_GetStatusSlider2Ch by passing the address of instance created using the
	Slider2Ch structure to get the percentage level of touch 	on Slider mentioned.
	
		E.g. a) sliderLevel =  mTouchCapAPI_GetStatusSlider2Ch(&Volume);        
		      b) sliderLevel =  mTouchCapAPI_GetStatusSlider2Ch(&Volume1);


*******************************************************************************
    	mTouch Capacitive Touch Library Demonstration for 2 Channel-Slider Demo
*******************************************************************************
The purpose of this demo is to show the presence of touch on the 2 Channel-Slider. 

Based on the cap touch key pressed on the slider, change in the LED display on PIC24F CTMU Evaluation
board will indicate the movement of touch in the slider.

This demo uses 2 CTMU channels to perform a slider functionality. 
The output is ratio-metrically calculated from 0% to 100% proportional to the finger on the slider.

*******************************************************************************
	Demo project for 2 Channel-Slider Demo
*******************************************************************************
The software installed includes the complete source code for 2 Channel-Slider Demo 
applications that can be loaded onto the Evaluation board. 
The default directory location is: 

C:\Microchip Solutions v2011-06-02\mTouchCapDemos\PIC24FDemos\mTouchCap_2ChSlider


The project files for MPLAB 8 and MPLAB X  are also available in this directory.

*******************************************************************************
            Important Note
*******************************************************************************
1) User is requested to see the availability of port pins in the devices and initialise them accordingly in 
C:\Microchip Solutionsv2011-06-02\mTouchCapDemos\PIC24FDemos\mTouchCap_2ChSlider.c
C:\Microchip Solutionsv2011-06-02\mTouchCapDemos\PIC24FDemos\mTouchCap_AppCommonFiles\Display.c 

2)For 24FJ64GA106,24FJ64GA108 and 24FJ64GA110 devices, C30 Compiler 3.30 or later version
   should be used for error free compilation


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