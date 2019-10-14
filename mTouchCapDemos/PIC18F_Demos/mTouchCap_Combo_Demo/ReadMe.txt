*******************************************************************************
********************** Readme File for Combo demo********************************************
*******************************************************************************

Copyright (c) Microchip Technology Inc.  All rights reserved.

******************************************************************************
This file contains the information related to the mTouch Capacitive Touch Software Library 
used for Combo Demo. 


*******************************************************************************
                            Release Information
*******************************************************************************
mTouch Cap Library v1.20:      	  April-2010
MPLAB version:                    	  8.40 or Later
C18 Compiler Version:	         	  3.34 or Later   
 

*******************************************************************************
    	mTouch Capacitive Touch Library Testing Details 
*******************************************************************************
The mTouch Capacitive Touch Library software is tested using PIC18F CTMU Evaluation
boards(DM183026).

The mTouch Capacitive Touch Library software can be customized to customer's application-specific boards
using below mentioned set-Up details.

*******************************************************************************
    	mTouch Capacitive Touch Library Set-Up Details  
*******************************************************************************


1) mTouchCap_Combo_Demo project can be configured as per user's application by
    modifying two header files "HardwareProfile.h" and "Config.h".

2) "HardwareProfile.h" file defines the macros that are related to the hardware used. 
     Make changes to this file according to the target hardware.
     This file is located in each demo folder. It configures 
     system hardware related settings like  system clock, ports, max ADC channels.


3) "Config.h" file defines the configurations related to the library. 
     This file is located in each demo folder.


4) User should verify and modify the ADC module configuration bits when device is selected other than PIC18F46J50. 
    The "mTouchCap_PIC18_CTMU_Physical.h" file defines the configurations related to the ADC and CTMU Module. 

    The default path of the file is:
   
    C:\Microchip Solutions\Microchip\Include\mTouchCap\PIC18F & PIC24F CTMU Library

5) How to select the Demo?

Step 1:   In config.h, the macros are defined for each demo.
		// #define	USE_DIRECT_KEYS for DirectKeys demo
		// #define	USE_MATRIX_KEYS for MatixKeys demo
		// #define 	USE_SLIDER_2CHNL for 2-Ch Slider demo
		// #define	USE_SLIDER_4CHNL for 4-Ch Slider demo.
		   

Step 2:  Enable the Macro for required demo 
	
		E.g. a) #define	USE_DIRECT_KEYS for DirectKeys demonstration
	

Step 3:   For Directkey demo, please refer the readme.txt 
             C:\Microchip Solutions\mTouchCapDemos\PIC18F_Demos\CTMU Demos\mTouchCap_DirectKeyDemo

	For Matrixkey demo, please refer the readme.txt 
             C:\Microchip Solutions\mTouchCapDemos\PIC18F_Demos\CTMU Demos\mTouchCap_MatrixKeyDemo

	For 2-Ch Slider demo, please refer the readme.txt 
             C:\Microchip Solutions\mTouchCapDemos\PIC18F_Demos\CTMU Demos\mTouchCap_2Ch_SliderDemo

	For 4-Ch Slider demo, please refer the readme.txt 
             C:\Microchip Solutions\mTouchCapDemos\PIC18F_Demos\CTMU Demos\mTouchCap_4Ch_SliderDemo


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
application that can be loaded onto the Evalution board.  The default directory 
location is: 

C:\Microchip Solutions\mTouchCapDemos\PIC18F_Demos\mTouchCap_Combo_Demo

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