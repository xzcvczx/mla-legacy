*******************************************************************************
********************** Readme File for Low POwer Demo********************************************
*******************************************************************************

Copyright (c) Microchip Technology Inc.  All rights reserved.

******************************************************************************
This file contains the information related to the mTouch Capacitive Touch Software Library 
used for Low Power Demo using the Direct Key. 


*******************************************************************************
                            Release Information
*******************************************************************************
mTouch Cap Library v1.21:      	  Oct-2010
MPLAB version:                    	  8.56 or Later
C30 Compiler Version:	         	  3.24 or Later  
 

*******************************************************************************
    	mTouch Capacitive Touch Library Testing Details for Low Power Demo
*******************************************************************************
The mTouch Capacitive Touch Library software is tested using PIC24F CTMU Evaluation
boards(DM183026).

The mTouch Capacitive Touch Library software can be customized to customer's application-specific boards
using below mentioned set-Up details.

*******************************************************************************
    	mTouch Capacitive Touch Library Set-Up Details for Low Power Demo
*******************************************************************************


1) mTouchCap_LowPowerDemo project can be configured as per user's application by
    modifying two header files "HardwareProfile.h" and "Config.h".

2) "HardwareProfile.h" file defines the macros that are related to the hardware used. 
     Make changes to this file according to the target hardware.
     This file is located in each demo folder. It configures 
     system hardware related settings like  system clock, ports, max ADC channels.


3) "Config.h" file defines the configurations related to the library. 
     This file is located in each demo folder.


4) User should verify and modify the ADC module configuration bits when device is selected other than PIC24FJ128GB106. 
    "mTouchCap_PIC24_CTMU_Physical.h" file defines the configurations related to the ADC and CTMU Module. 

    The default path of the file is:
   
    C:\Microchip Solutions\Microchip\Include\mTouchCap\PIC18F & PIC24F CTMU Library

5) How to configure Directkeys?

Step 1:   In mTouchCap_PIC24F_DirectKeyDemo.c, call the function "mTouchCapApp_CreateDirectKeys". 
	This function definition is written in  mTouchCap_DirectKeys.c . Within the function, we have Directkey set-up function called  	                     "mTouchCapAPI_SetUpChannelDirectKey". Before using this function, first create an object for "DirectKey" structure.

		E.g.  a) DirectKey DirectKey1;
		       b) DirectKey DirectKey2;
		   

Step 2:  In the function "mTouchCapAPI_SetUpChannelDirectKey", pass the first parameter as Address of
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


Step 6:  After the set-up function is called, call "mTouchCapApp_DemoDirectKeys" function from 
mTouchCap_PIC24F_Low PowerDemo.c, which is defined in mTouchCap_DirectKeys.c.

Step 7:  Within the  "mTouchCapApp_DemoDirectKeys" function, call the API "mTouchCapAPI_GetStatusDirectButton" 
by passing the address of instance created using the "DirectKey" structure to get the information about touch 
on Directkey Pad.
	
		E.g. a) Key_Pressed =  mTouchCapAPI_GetStatusDirectButton(&DirectKey1);        
		      b) Key_Pressed =  mTouchCapAPI_GetStatusDirectButton(&DirectKey2);

	   Key_Pressed value can be "KEY_NOT_PRESSED" or "KEY_PRESSED"

*******************************************************************************
    	mTouch Capacitive Touch Library Demonstration for Low Power Demo
*******************************************************************************
The purpose of the Low Power Demo is to demonstrate the functionality of implementing a Low Power application
using the Direct Key Demo board. 

when the cap touch channels are pressed, an LED is lit to indicate the cap touch channel(s) are pressed. 

This demo uses 8 CTMU channels to perform 8 Directkeys functionality. 
Each key is directly connected to a CTMU Channel. When a touch is detected on the Key, corresponding
LED will lit-up to indicate the touch.


 
*******************************************************************************
 Concept of Low Power Demo 
*******************************************************************************
The Low Power demo is used to demonstrate the power saving technique while scanning the capsense
keys using a Direct key Demo board.
This will greatly help in reducing the power consumed when the device is Idle.
This can be acheived by switching between Primary and the FRC and also keeping the device in Sleep at
regular intervals depending on the need of the application.

The entire logic for the power saving method is implemented within a demo function called mTouchCapApp_LowPower_Process() .
The entire logic is implemented within the macro LOW_POWER_DEMO_ENABLE. 

There are 3 different modes that is implemented in the Low power logic.

ACTIVE Mode: This mode will execute the logic using a Primary clock(8MHz * PLL).

SLEEP mode  : In this mode, the device will be placed in Sleep for a duration which is determined by the
	        WDT timeout.
LOW POWER mode: This mode will execute the logic using the FRC(8MHz) clock.

The steps involved in the implementation of the logic is given below:

1). The Low Power Demo will initially scan all the keys for any touch condition using the Primary clock 
     for a fixed period of time(10sec).
2). If any of the key is pressed, then the timeout will be reset and will restart the timeout.
3). If none of the keys are pressed during this period, the device will be placed in SLEEP mode for a period 
     of 2 sec.
4). The device will come out of Sleep condition using a WDT interrupt which is active in Sleep Mode 
     if it enabled.After it comes out of the Sleep,the system is switched to the FRC clock which is selected 
     as 8MHz.
5). A LED D15 will be lit to indicate that the device has comes out of the Sleep mode and it will be lit as long 
     as the application is in FRC clock mode which is the LOW POWER mode which is selected as 3 sec.
6). If the low power logic does not sense any key press during the low power mode, then the logic switches 
     the device back to the Sleep mode and the LED D15 will be turned OFF.
7). This process will be repeated as long as there is no Key press.
8). If the logic senses any key press during this process, the logic will shift to the ACTIVE mode where the 
     FRC clock is switched back to the Primary clock(32 MHz = 8MHz * PLL).
9). Repeat the Steps 1 to 8.

---------------------------------------------------------------------------------------------------------
The Low Power Demo can be tested as below.
---------------------------------------------------------------------------------------------------------

When the PIC24F CTMU Eval Board is powered, the LEDs starting from D1 to D16 and back to D1 will be lit in a 
sequence which is called as chaser LED sequence.This will happen at every reset.

Press any of the keys on the Direct key board. The corresponding LED will be lit  
The 10 sec timeout begins as long as there is any key press during this period.
If any of the key is pressed, the corresponding LED which is assigned in the function mTouchCapApp_DemoDirectKeys()
will be lit.
If none of the keys are pressed for a period of 10sec, the device goes to the sleep mode.
After the device comes out of the Sleep, a LED D15 will be lit.
If any of the key is pressed, then the corresponding LED will be lit and the LED D15  will be turned OFF.
Now the device is in the ACTIVE mode and the process continues.


---------------------------------------------------------------------------------------------------------
The different macros that are used in this Demo is given below.
---------------------------------------------------------------------------------------------------------

LOW_POWER_DEMO_ENABLE --> This macro is used to enable the entire Low power demo is enabled .If this macro is 
			      disabled, the project will behave as a Direct Key Demo.

TIMEOUT_10SEC_PRIPLL_CLOCK -- > This macro will provide a timeout of 10sec in the ACTIVE mode. The value is
				determined based on the Timer4 Interrupt which will occur every 1msec.

TIMEOUT_AFTER_FRC_CLOCK_SWITCH -->This macro will provide a timeout of 3sec in the LOW POWER mode. The value  
				      is determined based on the Timer4 Interrupt which will occur every 4msec.

NUM_HF_READS_SWITCHED_CLOCK --> This macro will give the number of samples of a Analog channel in the 
				   LOW POWER mode.



The limitation of this Low power demo  is that it is implemented for a FRC of 8MHz in Low power mode.
If the lower FRC value is selected, then the corresponding changes have to be implemented in the Library.

The important variables that are required to be changed for selecting different FRC is given below.

	a). Update the CLKDIV with the required FRC settings in the mTouchCapApp_LowPower_Process().
	b). Change the Current source settings for the selected FRC in the CTMU_Current_trim_config().
	c). Change the charging time for the selected Current source in the mTouchCapPhy_Charge_Current(). 


The period for the device to be in Sleep, Active or Low power mode(with FRC clock) is decided based 
on the need of the Application.


*******************************************************************************
	Demo projects for LowPower Demo
*******************************************************************************
The software installed includes the complete source code for Directkeys Demo
application that can be loaded onto the Evalution board.  The default directory 
location is: 

C:\Microchip Solutions\mTouchCapDemos\PIC24F_Demos\mTouchCap_LowPowerDemo

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