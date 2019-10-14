**********************************************************************************
************************* Readme File for Directkeys Demo********************************
**********************************************************************************

Copyright (c) Microchip Technology Inc.  All rights reserved.

*********************************************************************************
This file contains the information related to the mTouch Capacitive Touch Software Library 
used for Directkeys Demo. 


**********************************************************************************
             Release Information
**********************************************************************************
mTouch Cap Library v1.31:      	  June-2011
MPLAB version:                    	  8.70 or Later
C18 Compiler Version:	         	  3.38 or Later
MPLAB-X Version:			  6.00.01 Beta  
 

**********************************************************************************
    	mTouch Capacitive Touch Library Testing Details for Directkeys Demo
**********************************************************************************
The mTouch Capacitive Touch Library software is tested using PIC18F CTMU Evaluation
boards(DM183026-2).

The mTouch Capacitive Touch Library software can be customized to customer's application-specific boards
using below mentioned set-Up details.

**********************************************************************************
    	mTouch Capacitive Touch Library Set-up Details for Directkeys Demo
**********************************************************************************


1) mTouchCap_DirectKey project can be configured as per user's application by
    modifying two header files "HardwareProfile.h" and "Config.h".

2) "HardwareProfile.h" file defines the macros that are related to the hardware used
     and Controllers with CTMU module are defined in this file.  
     Make changes to this file according to the target hardware.        
     This file is located in each demo folder. It configures 
     system hardware related settings like  system clock, ports, max ADC channels.


3) "Config.h" file defines the configurations related to the application. 
     This file is located in each demo folder.


4) "mTouchCap_PIC18_CTMU_Physical.h" file defines the configurations related to the ADC and CTMU Module. 
      ADC module configuration bits with respect to controllers are defined in this file

    The default path of the file is:
   
    C:\Microchip Solutions v2011-06-02\Microchip\Include\mTouchCap\PIC18F_PIC24F CTMU Library

5) How to configure Directkeys?

Step 1: In mTouchCap_PIC18F_DirectKeyDemo.c, call the function "mTouchCapApp_CreateDirectKeys". 
           This function definition is written in  mTouchCap_DirectKeys.c . Within the function, we have
           Directkey set-up function called "mTouchCapAPI_SetUpChannelDirectKey". Before using this function,
           first create an object for "DirectKey" structure.

		E.g.  a) DirectKey DirectKey1;
		       b) DirectKey DirectKey2;
		   

Step 2: In the function "mTouchCapAPI_SetUpChannelDirectKey", pass the first parameter as Address of
           instance created using the "DirectKey" structure. 
	
		E.g. a) &DirectKey1.
    		      b) &DirectKey2.	

Step 3: Pass the CTMU Channel number used by the specified Directkey as second parameter.

		E.g. a) DIRECTKEY1_CHANNEL for DirectKey1.

           The aliasing for the channel definition of DIRECTKEY1_CHANNEL is defined in HardwareProfile.h
           User can change the CTMU Channel definition based on the requirement.


Step 4: Pass the information about Decode Method used by the specified Directkey.

		E.g. a) DECODE_METHOD_PRESS_ASSERT.	
		      b) DECODE_METHOD_PRESS_AND_RELEASE.
     		      c) DECODE_METHOD_MOST_PRESSED.

	         Default option: "DECODE_METHOD_PRESS_ASSERT"


Step 5: Pass the information about Filter Method used by the specified Directkey.     
		E.g. a) FILTER_METHOD_SLOWAVERAGE.
     		      b) FILTER_METHOD_GATEDAVERAGE.	
		      c) FILTER_METHOD_FASTAVERAGE.

            Default option: "FILTER_METHOD_SLOWAVERAGE"
     
            mTouchCapAPI_SetUpChannelDirectKey (&DirectKey1,
				         DIRECTKEY1_CHANNEL,
				         DEFAULT_TRIP_VALUE,
				         DECODE_METHOD_PRESS_ASSERT,
				         FILTER_METHOD_SLOWAVERAGE);


Step 6: After the set-up function is called, call "mTouchCapApp_DemoDirectKeys" function from 
           mTouchCap_PIC18F_DirectKeyDemo.c, which is defined in mTouchCap_DirectKeys.c.

Step 7: Within the  "mTouchCapApp_DemoDirectKeys" function, call the API "mTouchCapAPI_GetStatusDirectButton" 
           by passing the address of instance created using the "DirectKey" structure to get the information about
           touch on Directkey Pad.
	
		E.g. a) Key_Pressed =  mTouchCapAPI_GetStatusDirectButton(&DirectKey1);        
		      b) Key_Pressed =  mTouchCapAPI_GetStatusDirectButton(&DirectKey2);

            Key_Pressed value can be "KEY_NOT_PRESSED" or "KEY_PRESSED"

**********************************************************************************
    	mTouch Capacitive Touch Library Demonstration for DirectKeys Demo
**********************************************************************************
The purpose of this demo is to show the presence of touch on the Cap Touch keys. 

when the cap touch channels are pressed, an LED lights to indicate
the cap touch channel(s) are pressed. 

This demo uses 8 CTMU channels to perform 8 Directkeys functionality. 
Each key is directly connected to a CTMU Channel. When a touch is detected on the Key, corresponding
LED will lit-up to indicate the touch.


 
**********************************************************************************
             Demo projects for Directkeys Demo
**********************************************************************************
The software installed includes the complete source code for Directkeys Demo
application that can be loaded onto the Evalution board.  The default directory 
location is: 

C:\Microchip Solutions v2011-06-02\mTouchCapDemos\PIC18F_Demos\mTouchCap_DirectKeyDemo

The project files for  MPLAB-8 and MPLAB-X are also available in this directory.


**********************************************************************************
            Important Note
**********************************************************************************
1) User is requested to see the availability of port pins in the devices and initialize them accordingly in 
    C:\Microchip Solutions\mTouchCapDemos\PIC18FDemos\mTouchCap_PIC18F_DirectKeyDemo.c
    C:\Microchip Solutions\mTouchCapDemos\PIC18FDemos\mTouchCap_AppCommonFiles\Display.c 

2)  If 3.37 Version compiler is used then, corresponding search path for Include,Library,Linker should be 
    added manually by user in Build Option for a Project 
**********************************************************************************
            Help File
**********************************************************************************

For more information on mTouch Software Library, refer "mTouchCap Library Help" file.



**********************************************************************************

Note: This text file can be best viewed with the following settings
	Font: 		Verdana
	Font style:	Regular
             Size: 		10
	Format:               Word Wrap