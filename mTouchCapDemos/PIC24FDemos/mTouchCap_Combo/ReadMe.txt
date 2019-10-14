*******************************************************************************
********************** Readme File for Combo demo***********************************
*******************************************************************************

Copyright (c) Microchip Technology Inc.  All rights reserved.

******************************************************************************
This file contains the information related to the mTouch Capacitive Touch Software Library 
used for Combo Demo. 


*******************************************************************************
                            Release Information
*******************************************************************************
mTouch Cap Library v1.31:      	  June-2011
MPLAB version:                    	  8.70 or Later
C30 Compiler Version:	         	  3.25 or Later 
MPLAB X version: 			  6.00.01 Beta 
 

*******************************************************************************
    	mTouch Capacitive Touch Library Testing Details 
*******************************************************************************
The mTouch Capacitive Touch Library software is tested using PIC24F CTMU Evaluation
boards(DM183026-2).

The mTouch Capacitive Touch Library software is compatible for all the controllers with CTMU. 

The mTouch Capacitive Touch Library software can be customized to customer's application-specific boards
using below mentioned set-up details.

*******************************************************************************
    	mTouch Capacitive Touch Library Set-up Details  
*******************************************************************************


1) mTouchCap_Combo project can be configured as per user's application by
    modifying two header files "HardwareProfile.h" and "Config.h".

2) "HardwareProfile.h" file defines the macros that are related to the hardware used. 
     Controllers with CTMU module are defined in this file.
     Make changes to this file according to the target hardware.
     This file is located in each demo folder. 
     It configures system hardware related settings like system clock, ports, max ADC channels.


3) "Config.h" file defines the configurations related to the application. 
     This file is located in each demo folder.


4) "mTouchCap_PIC24_CTMU_Physical.h" file defines the configurations related to the ADC and CTMU Module. 
      ADC and CTMU module configuration bits with respect to the controllers are defined in this file .

    The default path of the file is:
   
    C:\Microchip Solutions v2011-06-02\Microchip\Include\mTouchCap\PIC18 _PIC24F CTMU Library

5) How to select the Demo?

Step 1:   In config.h, the macros are defined for each demo.
		// #define	USE_DIRECT_KEYS for DirectKeys demo
		// #define	USE_MATRIX_KEYS for MatixKeys demo
		// #define 	USE_SLIDER_2CHNL for 2-Ch Slider demo
		// #define	USE_SLIDER_4CHNL for 4-Ch Slider demo.
		   

Step 2:  Enable the Macro for required demo 
	
		E.g. a) #define	USE_DIRECT_KEYS for DirectKeys demonstration
	

Step 3:   For Directkey demo, please refer the readme.txt 
             C:\Microchip Solutions v2011-06-02\mTouchCapDemos\PIC24FDemos\mTouchCap_DirectKey

	For Matrixkey demo, please refer the readme.txt 
             C:\Microchip Solutions v2011-06-02\mTouchCapDemos\PIC24FDemos\mTouchCap_MatrixKey

	For 2-Ch Slider demo, please refer the readme.txt 
             C:\Microchip Solutions v2011-06-02\mTouchCapDemos\PIC24FDemos\mTouchCap_2ChSlider

	For 4-Ch Slider demo, please refer the readme.txt 
             C:\Microchip Solutions v2011-06-02\mTouchCapDemos\PIC24FDemos\mTouchCap_4ChSlider


*******************************************************************************
    	mTouch Capacitive Touch Library Demonstration for Combo Demo
*******************************************************************************
In this demo, we can select Directkey, MatrixKey, 2-ch Slider and 4-ch Slider demo by 
enabling the macro for each of these demo which is defined in config.h. 
The explanation for each demo is given in the readme.txt which is available in the individual demo folder..

 
*******************************************************************************
	Demo projects for Combo Demo
*******************************************************************************
The software installed includes the complete source code for Combo Demo
application that can be loaded onto the Evalution board.  
The default directory location is: 

C:\Microchip Solutions v2011-06-02\mTouchCapDemos\PIC24FDemos\mTouchCap_Combo

The project files for MPLAB 8 and MPLAB X are also available in this directory.


*******************************************************************************
            Important Note
*******************************************************************************
1) User is requested to see the availability of port pins in the devices and initialise them accordingly in 
C:\Microchip Solutions v2011-06-02\mTouchCapDemos\PIC24FDemos\mTouchCap_2ChSlider.c
C:\Microchip Solutions v2011-06-02\mTouchCapDemos\PIC24FDemos\mTouchCap_4ChSlider
C:\Microchip Solutions v2011-06-02\mTouchCapDemos\PIC24FDemos\mTouchCap_DirectKey
C:\Microchip Solutions v2011-06-02\mTouchCapDemos\PIC24FDemos\mTouchCap_MatrixKey
C:\Microchip Solutions v2011-06-02\mTouchCapDemos\PIC24FDemos\mTouchCap_AppCommonFiles\Display.c 

2)For 24FJ64GA106,24FJ64GA108 and 24FJ64GA110 devices, C30 Compiler  3.30 or later version 
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