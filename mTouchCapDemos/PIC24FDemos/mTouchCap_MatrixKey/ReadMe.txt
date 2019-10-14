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
mTouch Cap Library v1.31:      	  June-2011
MPLAB version:                    	  8.70 or Later
C30 Compiler Version:	         	  3.25 or Later 
MPLAB X version: 			  6.00.01 Beta 
 

*******************************************************************************
    	mTouch Capacitive Touch Library Testing Details for MatrixKeys Demo
*******************************************************************************
The mTouch Capacitive Touch Library software is tested using PIC24F CTMU Evaluation
boards(DM183026-2).

The mTouch Capacitive Touch Library software is compatible for all the controllers with CTMU.

The mTouch Capacitive Touch Library software can be customized to customer's application-specific boards
using below mentioned set-up details.


*******************************************************************************
    	mTouch Capacitive Touch Library Set-up Details for MatrixKeys Demo
*******************************************************************************


1) mTouchCap_MatrixKey project can be configured as per user's application by
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
   
    C:\Microchip Solutions v2011-06-02\Microchip\Include\mTouchCap\PIC18F_PIC24F CTMU Library

5) How to configure a Matrixkey?

Step 1:   In mTouchCap_PIC24F_MatrixKey.c, call the function "mTouchCapApp_CreateMatrixKeys". 
	This function definition is written in  mTouchCap_MatrixKeys.c . Within the function, 
	we have Matrixkey set-up function called "mTouchCapAPI_SetUpChannelMatrixKey". 
	Before using this function, first create an object for "MatrixKey" structure.

		E.g.  a) MatrixKey Matrix_Key0.
		       b) MatrixKey Matrix_Key1.

		   

Step 2:  In the function "mTouchCapAPI_SetUpChannelMatrixKey", pass the first parameter as Address of
            instance created using the "MatrixKey" structure. 
	
		E.g. a) &Matrix_Key0.
    		      b) &Matrix_Key1.	

Step 3: Pass the CTMU Channel number used by the specified Matrixkey multiplexed with 2 CTMU channels 
           as second and third parameter.

		E.g. a) MATRIXKEY0_ROW_CHANNEL,MATRIXKEY0_COLUMN_CHANNEL for Matrix_Key0.

          The aliasing for the channel definition of MATRIXKEY0_ROW_CHANNEL 
          and MATRIXKEY0_COLUMN_CHANNEL is defined in HardwareProfile.h

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


Step 6:  After the set-up function is called, call "mTouchCapApp_DemoMatrixKeys" function from 
	mTouchCap_PIC24F_MatrixKey.c, which is defined in mTouchCap_MatrixKeys.c.

Step 7:  Within the  "mTouchCapApp_DemoMatrixKeys" function, call the API 
	"mTouchCapAPI_GetStatusMatrixButton" by passing the address of instance created using the "MatrixKey" 
	structure to get the information about touch on Matrixkey Pad multiplexed with 2 CTMU channels.
	
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

C:\Microchip Solutions v2011-06-02\mTouchCapDemos\PIC24FDemos\mTouchCap_MatrixKey

The project files for MPLAB 8 and MPLAB X are also available in this directory.


*******************************************************************************
            Important Note
*******************************************************************************
1) User is requested to see the availability of port pins in the devices and initialise them accordingly in 
C:\Microchip Solutions v2011-06-02\mTouchCapDemos\PIC24FDemos\mTouchCap_MatrixKey.c
C:\Microchip Solutions v2011-06-02\mTouchCapDemos\PIC24FDemos\mTouchCap_AppCommonFiles\Display.c 

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