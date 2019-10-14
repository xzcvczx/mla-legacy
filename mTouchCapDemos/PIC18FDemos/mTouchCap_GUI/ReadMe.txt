*******************************************************************************
********************** Readme File for mTouchCap_GUI demos ***************************
*******************************************************************************

Copyright (c) Microchip Technology Inc.  All rights reserved.

This file contains information related to the mTouch Capacitive Touch Software Library
using the MPLAB mTouch Diagnostic Tool.

*******************************************************************************
           Release Information
*******************************************************************************
mTouch Cap Library v1.31:      	  June-2011
MPLAB version:                    	  8.70 or Later
C18 Compiler Version:	         	  3.38 or Later
MPLAB-X Version:			  6.00.01 Beta  

*******************************************************************************
           mTouch Capacitive Touch Library testing Details for GUI Demo
*******************************************************************************
The mTouch Capacitive Touch Library software with GUI is tested using PIC18F CTMU Evaluation 
board(DM183026-2)


*******************************************************************************
           mTouch Capacitive Touch Library Set-up Details for PIC18F GUI Demo
*******************************************************************************
The setup details for the selected Demo Boards are given in their respective Readme.txt file.

The setup details for GUI(MPLAB Diagnostic Tool) related testing is given below.

Step 1:Select the "mTouch diagnostic Tool" option in the "Tools" tab from the MPLAB IDE project window.
          As soon as the option is selected, there will be a new "mTouch Diagnostic Tool" tab that will 
          be added very next to the "Tools" tab in the MPLAB GUI.
Step 2:Select the "Settings" option in the mTouch Diagnostic Tool window.Within the "Settings" option
          the below changes have to be done. 
	a). Select the "Board" Tab and choose the "Custom" option from the Select Board dropdown menu.
	     Select the "Sensor Count" value based on the total number of Channels used by the application.
   	b). Select the "Communication" tab and select the USB option for communicating with the 
	     CTMU Eval Board.
	c). Select the "Logging" tab and mention the location to save the log history.

Note:
The Direct Key demo board is the Default Cap touch Demo Board that is selected in the GUI Demo.


*******************************************************************************
           Demonstration of the GUI demos using the mTouch Capacitive Touch Library
*******************************************************************************
The main purpose of the GUI Demo is to demonstrate the behaviour of the Capacitive touch keys when 
they are in the pressed state and the released state.It will also help in detemining the various trip 
threshold levels at different conditions.

After completing the set-up details as mentioned in the above section, a constantly moving vertical bar 
will be displayed in the mTouch Diagnostic Tool which will indicate the channels that are connected 
to the Demo Board.The Channel data is displayed in a sequence starting from Channel 0 to the maximum 
channels selected.The Sensor 1 in the Diagnostic tool will correspond to the Channel 0, Sensor 2 will 
correspond to Channel 1 and so on.
The vertical bar shows the sensor’s current state in terms of the A/D conversion value of its channel.
Values shown may be in the range of 0 to 65,535 and are dimensionless

The horizontal Yellow indicator represents the Current Raw value of the channel that is read from the ADC.
The horizontal Dark Blue indicator  will represent the Average value of the ADC of the channel
The horizontal light Green indicator will represent the trip value for that particular channel.

When a key is pressed in the Demo Board, the current raw value of the Channel which is connected to 
that key will vary and this is represented by the upward or downward movement of the vertical bar for that 
channel in the mTouch Diagnostic Tool.The Average ADC value is also displayed in the bar for every 
selected channel.The trip value is also displayed in the vertical bar.


The current Raw data and the Average data is displayed numerically just below the vertical Bar for every 
Channel.
Work -- Current Raw Data of the Channel
Avg  --  Average Data of the Channel

A color key for the indicators is provided at the top of the Diagnostic Tool window.
The A/D converter produces values of up to 1023 (10 bits). The CAP TOUCH –
CTMU Evaluation Board contains software algorithms that use scaled values of the raw
A/D reading to improve averaging and overall performance of the hardware and this value is sent to the 
mTouch Diagnostic Tool.

*******************************************************************************
            Limitations of the mTouch Software Library 
*******************************************************************************
1) The GUI demos will work only with the "Custom" option selected from the "Select Board" drop down menu
    in the "Settings" tab in the MPLAB mTouch Diagnostic Tool.

2) The GUI Demo software is compatible with the controllers having USB module support.

*******************************************************************************
            Demo projects for the mTouchCap Software Library 
*******************************************************************************
The software installed includes the complete source code for Combo Demo
application that can be loaded onto the Evalution board.  The default directory 
location is: 

C:\Microchip Solutions v2011-06-02\mTouchCapDemos\PIC18FDemos\mTouchCap_GUI 


The project files for  MPLAB-8 and MPLAB-X are also available in this directory.


*******************************************************************************
            Important Note
*******************************************************************************
1) User is requested to see the availability of port pins in the devices and initialize them accordingly in 
    C:\Microchip Solutions\mTouchCapDemos\PIC18FDemos\mTouchCap_PIC18F_GUI_Demo.c
    C:\Microchip Solutions\mTouchCapDemos\PIC18FDemos\mTouchCap_AppCommonFiles\Display.c 

2) If 3.37 Version compiler is used then, corresponding search path for Include,Library,Linker should be added manually 
    by user in Build Option for a Project 


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