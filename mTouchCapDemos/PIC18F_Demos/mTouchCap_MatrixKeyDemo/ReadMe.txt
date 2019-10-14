*******************************************************************************
********************** Readme File for MatrixKeys Demo********************************
*******************************************************************************

Copyright (c) Microchip Technology Inc.  All rights reserved.

******************************************************************************
This file contains the information related to the mTouch Capacitive Touch Software Library 
used for MatrixKeys Demo. 

*******************************************************************************
                            Release Information
*******************************************************************************
mTouch Cap Library v1.20:      	  April-2010
MPLAB version:                    	  8.40 or Later
C18 Compiler Version:	         	  3.34 or Later  
 

*******************************************************************************
    	mTouch Capacitive Touch Library Testing Details for MatrixKeys Demo
*******************************************************************************
The mTouch Capacitive Touch Library software is tested using PIC18F CTMU Evaluation
boards(DM183026).

The mTouch Capacitive Touch Library software can be customized to customer's application-specific boards
using below mentioned set-Up details.


*******************************************************************************
    	mTouch Capacitive Touch Library Set-Up Details for MatrixKeys Demo
*******************************************************************************


1) mTouchCap_MatrixKeyDemo project can be configured as per user's application by
    modifying two header files "HardwareProfile.h" and "Config.h".

2) "HardwareProfile.h" file defines the macros that are related to the hardware used. 
     Make changes to this file according to the target hardware.
     This file is located in each demo folder. It configures 
     system hardware related settings like  system clock, ports, max ADC channels.


3) "Config.h" file defines the configurations related to the library. 
     This file is located in each demo folder.


4) User should verify and modify the ADC module configuration bits when device is selected other than PIC18F46J50. 
    "mTouchCap_PIC18_CTMU_Physical.h" file defines the configurations related to the ADC and CTMU Module. 

     The default path of the file is:
   
    C:\Microchip Solutions\Microchip\Include\mTouchCap\PIC18F & PIC24F CTMU Library

5) How to configure a Matrixkey?

Step 1:   In mTouchCap_PIC18F_MatrixKeyDemo.c, call the function "mTouchCapApp_CreateMatrixKeys". 
	This function definition is written in  mTouchCap_MatrixKeys.c . Within the function, we have Matrixkey set-up function called  	                     "mTouchCapAPI_SetUpChannelMatrixKey". Before using this function, first create an object for "MatrixKey" structure.

		E.g.  a) MatrixKey Matrix_Key0.
		       b) MatrixKey Matrix_Key1.

		   

Step 2:  In the function "mTouchCapAPI_SetUpChannelMatrixKey", pass the first parameter as Address of
            instance created using the "MatrixKey" structure. 
	
		E.g. a) &Matrix_Key0.
    		      b) &Matrix_Key1.	

Step 3: Pass the CTMU Channel number used by the specified Matrixkey multiplexed with 2 CTMU channels as second and third parameter.

		E.g. a) MATRIXKEY0_ROW_CHANNEL,MATRIXKEY0_COLUMN_CHANNEL for Matrix_Key0.

	The aliasing for the channel definition of MATRIXKEY0_ROW_CHANNEL and MATRIXKEY0_COLUMN_CHANNEL is 	defined in HardwareProfile.h

	User can change the CTMU Channel definition based on the requirement.


Step 4: Pass the information about Decode Method used by the specified Matrixkey.

		E.g. a) DECODE_METHOD_PRESS_ASSERT.	
		      b) DECODE_METHOD_PRESS_AND_RELEASE.
     		      c) DECODE_METHOD_MOST_PRESSED.

	         Default option: "DECODE_METHOD_PRESS_ASSERT"


Step 5: Pass the information about Filter Method used by the specified Matrixkey.     
		E.g. a) FILTER_METHOD_SLOWAVERAGE.
     		      b) FILTER_METHOD_GATEDAVERAGE.	
		      c) FILTER_METHOD_FASTAVERAGE.

	   Default option: "FILTER_METHOD_SLOWAVERAGE"
     
     mTouchCapAPI_SetUpChannelMatrixKey( &Matrix_Key0,
				         MATRIXKEY0_ROW_CHANNEL,MATRIXKEY0_COLUMN_CHANNEL,
				         DEFAULT_TRIP_VALUE,
				         DECODE_METHOD_PRESS_ASSERT,
				         FILTER_METHOD_SLOWAVERAGE);


Step 6:  After the set-up function is called, call "mTouchCapApp_DemoMatrixKeys" function from 					mTouchCap_PIC18F_MatrixKeyDemo.c, which is defined in mTouchCap_MatrixKeys.c.

Step 7:  Within the  "mTouchCapApp_DemoMatrixKeys" function, call the API "mTouchCapAPI_GetStatusMatrixButton" by passing the address of 	instance created using the "MatrixKey" structure to get the information about touch on Matrixkey Pad multiplexed with 2 CTMU channels.
	
		E.g. a) Key_Pressed =  mTouchCapAPI_GetStatusMatrixButton(&Matrix_Key0);        
		      b) Key_Pressed =  mTouchCapAPI_GetStatusMatrixButton(&Matrix_Key1);
	   Key_Pressed value can be "KEY_NOT_PRESSED" or "KEY_PRESSED"

*******************************************************************************
    	mTouch Capacitive Touch Library Demonstration for MatrixKeys Demo
*******************************************************************************
The purpose of this demo is to show the presence of touch on the MatrixKeys. 

This demo uses 7 CTMU channels to perform 4x3 MatrixKeys functionality. 
Each Matrix key is multiplexed with 2 CTMU Channels. When a touch is detected on the Key, corresponding
LED will lit-up to indicate the touch.

 
*******************************************************************************
	Demo projects for MatrixKeys Demo
*******************************************************************************
The software installed includes the complete source code for MatrixKeys Demo
application that can be loaded onto the Evalution board.  The default directory 
location is: 

C:\Microchip Solutions\mTouchCapDemos\PIC18F_Demos\CTMU Demos\mTouchCap_MatrixKeyDemo

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