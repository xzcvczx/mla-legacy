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
C18 Compiler Version:	         	  3.38 or Later
MPLAB-X Version:			  6.00.01 Beta  
 

*******************************************************************************
    	mTouch Capacitive Touch Library Testing Details 
*******************************************************************************
The mTouch Capacitive Touch Library software is tested using PIC18F CTMU Evaluation
boards(DM183026-2).

The mTouch Capacitive Touch Library software can be customized to customer's application-specific boards
using below mentioned set-Up details.

*******************************************************************************
    	mTouch Capacitive Touch Library Set-Up Details  
*******************************************************************************


1) mTouchCap_Combo project can be configured as per user's application by
    modifying two header files "HardwareProfile.h" and "Config.h".

2) "HardwareProfile.h" file defines the macros that are related to the hardware used
     and Controllers with CTMU module are defined in this file.  
     Make changes to this file according to the target hardware.        
     This file is located in each demo folder. It configures 
     system hardware related settings like  system clock, ports, max ADC channels.


3) "Config.h" file defines the configurations related to the Application. 
     This file is located in each demo folder.


4) "mTouchCap_PIC18_CTMU_Physical.h" file defines the configurations related to the ADC and CTMU Module. 
      ADC module configuration bits with respect to controllers are defined in this file
    
    The default path of the file is:
   
    C:\Microchip Solutions v2011-06-02\Microchip\Include\mTouchCap\PIC18F_PIC24F CTMU Library

5) How to select the Demo?

Step 1:   In config.h, the macros are defined for each demo.
		// #define	USE_DIRECT_KEYS for DirectKeys demo
		// #define	USE_MATRIX_KEYS for MatixKeys demo
		// #define 	USE_SLIDER_2CHNL for 2-Ch Slider demo
		// #define	USE_SLIDER_4CHNL for 4-Ch Slider demo.
		   

Step 2:  Enable the Macro for required demo 
	
		E.g. a) #define	USE_DIRECT_KEYS for DirectKeys demonstration
	

Step 3:   For Directkey demo, please refer the readme.txt 
             C:\Microchip Solutions\mTouchCapDemos\PIC18F\mTouchCap_DirectKey

	For Matrixkey demo, please refer the readme.txt 
             C:\Microchip Solutions\mTouchCapDemos\PIC18F\mTouchCap_MatrixKey

	For 2-Ch Slider demo, please refer the readme.txt 
             C:\Microchip Solutions\mTouchCapDemos\PIC18F\mTouchCap_2Ch_Slider

	For 4-Ch Slider demo, please refer the readme.txt 
             C:\Microchip Solutions\mTouchCapDemos\PIC18F\mTouchCap_4Ch_Slider


*******************************************************************************
    	mTouch Capacitive Touch Library Demonstration for Combo Demo
*******************************************************************************
In this demo, we can select Directkey, MatrixKey, 2-ch Slider and 4-ch Slider demo by enabling the macro 
for each of these demo which is defined in config.h. By Default Directkey Demo will be selected.
The explanation for each demo is given in the readme.txt which is available in the individual demo folder..

 
*******************************************************************************
	Demo projects for Combo Demo
*******************************************************************************
The software installed includes the complete source code for Combo Demo
application that can be loaded onto the Evalution board.  The default directory 
location is: 

C:\Microchip Solutions v2011-06-02\mTouchCapDemos\PIC18F_Demos\mTouchCap_Combo_Demo

The project files for MPLAB-8 and MPLAB-X are also available in this directory.


*******************************************************************************
             Important Note
*******************************************************************************
1) User is requested to see the availability of port pins in the devices and initialize them accordingly in 
    C:\Microchip Solutions\mTouchCapDemos\PIC18FDemos\mTouchCap_PIC18F_ComboDemo.c
    C:\Microchip Solutions\mTouchCapDemos\PIC18FDemos\mTouchCap_AppCommonFiles\Display.c 

2)  If 3.37 Version compiler is used then, corresponding search path for Include,Library,Linker should be 
     added manually by user in Build Option for a Project 

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