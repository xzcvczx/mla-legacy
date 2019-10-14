*******************************************************************************
******************* Readme File for mTouchCap_ProximityDemo *******************
*******************************************************************************

Copyright (c) Microchip Technology Inc.  All rights reserved.

This file contains information related to the mTouch Capacitive Touch Software
Library for Proximity Demo

*******************************************************************************
    Release Information
*******************************************************************************
mTouch Cap Library v1.20    April-2010
MPLAB version:               	8.40 or later
C30 Compiler Version	3.23  or later


*******************************************************************************
    mTouch Capacitive Touch Library testing Details for Proximity Demo
*******************************************************************************
The mTouch Capacitive Touch Library software is tested using PIC24F CTMU
Evaluation boards(DM183026) 


*******************************************************************************
    mTouch Capacitive Touch Library Set-Up Details for Proximity Demo
*******************************************************************************
The Proximity Demo software requires the Matrix key plug-in board be
connected to channels 8-16 on the PIC24F CTMU Evaluation board (DM183026).

Channel 6 & 7 on the PIC24F CTMU Evaluation board are shared with the debugger
connector making those channels unavailable during debug. Connecting the Matrix
key plug-in board to the upper channels allows all 8 channels to be utilized in
either debug or release modes.

 
*******************************************************************************
	Demo projects for the mTouchCap Software Library for MatrixKeys Demo
*******************************************************************************
The software installed includes the complete source code for Proximity Demo
application that can be loaded onto the Evalution board.  The default directory 
location is: 

C:\Microchip Solutions\mTouchCapDemos\PIC24F_Demos\mTouchCap_ProximityDemo

The project files for MPLAB are also available in this directory.


*******************************************************************************
            Help File
*******************************************************************************

For more information on mTouch Software Library, refer "mTouchCap Library Help" file.


*******************************************************************************
  Proximity Demonstration
*******************************************************************************
The purpose is to demonstrate proximity detection (detect fingers, hand or other
objects approaching the matrix keypad.)

Note:  In general, the Proximity mode can detect a person's hand within 1-2 inches.
However, the PIC24F CTMU Evaluation board running the Proximity demo software may be
sensitive to the surface material on which it is placed or objects in its vicinity,
so results may vary.

The demo operates in 2 modes; Proximity and Matrix key.

Proximity Mode
In Proximity mode (default at startup), 1 or more LEDs on the board will illuminate as
a finger, hand or other object approaches the keypad.  The closer the object, the more LEDs
illuminate.  When all the LEDs are illuminated for more than about 2 seconds, the demo
switches to Matrix key mode.

Matrix Mode
In the Matrix key mode, each button is scanned and if pressed, the corresponding LED will
illuminate.  Pressing keys 3, 7, 11 in order will cause the demo to return to Proximity mode.

Autozero Mode
When entering Proximity mode either at startup or after leaving Matrix key mode, the demo
will execute an "autozero" procedure that nullifies the capacitive coupling effects of
nearby surrounding objects or surfaces.  This is indicated by 2 orange and 2 yellow LEDs
illuminated for about 1 second.  After the orange and LEDs turn off, the demo is ready for
Proximity detection.  Occasionally, the autozero routine may execute if the baseline
has changed significantly since the last autozero.  This is indicated by 2 orange and 2
yellow LEDs illuminated for about 1 second.

If the PIC24F CTMU Evaluation board is handled or moved to a new surface while the demo
is running, it may be necessary to perform a manual auto zero procedure.  This can be done
by either cycling the power to the demo board or the preferred method is to press and hold
any buttons until the demo enters the Matrix key mode.  Pressing keys 3, 7, 11 in order will
force a new auto zero procedure and start Proximity mode detection.

*******************************************************************************
  Proximity Mode Detection (How it works)
*******************************************************************************
Proximity mode detection uses the same capTouch measurement technique used to detect a
button press (taking multiple measurements on each channel and averaging). But instead of
averaging these readings, proximity adds these measurements up to create a very large number.
This effectively multiples a channel's sensitivity making it possible to detect a change of
only a few counts in 10,000 counts or more, up to 64,000.  Taking a proximity measurement from
each of the buttons on the Matrix Key pad creates a large detection surface area.

Each time all the channels are measured, these channel measurements are then added together
creating a summation of all the channel readings into one very large number.  It is this
result that is monitored in the demo software and compared to a baseline measurement taken
at power-on reset.  The difference is calculated and displayed on the 16 LEDs.

Sensitivity
The sensitivity of the Proximity detection demo can be controlled by changing the value
NUM_HF_READS in "config.h". The default is 16.  Sensitivity increases when NUM_HF_READS is larger.
Useful range is 8 to 32.

Averaging Filter
The averaging filter can be controlled by changing the value FILTER_DEPTH
in "mTouchCap_PIC24F_Proximity.c."  The default is 10.  Averaging is improved (less jitter)
when FILTER_DEPTH is larger, but response is slower.
Useful range is 1 to 40.

Detection Duration
The demo will remain in the Proximity detection mode as long as the display LEDs are less than
full scale (not all LEDs turned on).  Once full scale is reached and maintained for 2 seconds
(default), only then will the demo switch to Matrix key mode.  This time can be controlled by
changing the value DETECT_TIME.  This time is 125 (default) and represents the number of 
measurement scan cycles.  Each measurement scan cycle takes 16msec.  So 125 x 16msec = 2sec.
Changing DETECT_TIME to a smaller number will allow the demo to switch to Matrix key mode faster.


*******************************************************************************

Note: This text file can be best viewed with the following settings
	Font: 		Verdana
	Font style:	Regular
             Size: 		10
	Format:               Word Wrap
