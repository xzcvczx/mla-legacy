

*******************************************************************************
*******************************************************************************
******************* Readme File for mTouchCap_DA210_GraphicsDemo **************
*******************************************************************************
*******************************************************************************

Copyright (c) Microchip Technology Inc.  All rights reserved.

This file contains information related to the mTouch Capacitive Touch Software
Library for Cap Touch on the DA210 Demo Board, with integration with the 
Microchip Graphics Library.

*******************************************************************************
    Release Information
*******************************************************************************
mTouch Cap Library v1.21:    October-2010
MPLAB version:                    8.40 or later
C30 Compiler Version:	  3.23 or later  


*******************************************************************************
    mTouch Capacitive Touch Library testing Details for DA210 Demo
*******************************************************************************
The mTouch Capacitive Touch Library software is tested using the PIC24FJ256DA210
Development Board, and Graphics Display Truly 3.2" 240 x 320 Board.  

*******************************************************************************
    mTouch Capacitive Touch Library Set-Up Details for Da210 Graphics Demo
*******************************************************************************

Please see the User's Guide for the DA210 Development Board for the correct 
jumper settings.  All settings are the default settings except for jumpers 
JP13, JP14, and JP15.  All three of these must have pins 1 & 2 connected for 
the cap touch pads to operate.  Note that this will disable pushbutton switches
S1, S2, and S3.  The DA210 Demo software requires that the Graphics Display 
Powertip 4.3" 480 x 272 Board be connected to Display Connector V1 on the DA210
Development Board.

This Demo is an extension of the "Graphics AN1136" Demo.  Please see application 
note AN1136 for details of the Graphics Library implementation in this demo.  
Note that the Touchscreen located on the graphics display is also enabled for this demo.

*******************************************************************************
  Cap Touch Demonstration
*******************************************************************************
The purpose of this demo is to interact with the graphics display objects on the
display screen, and be able to change the display using either the Cap Touch keys
located on the DA210 Demo Board, or the display screen.

Cap Touch input is done by reading the cap touch keys, and then creating events that are fed 
to the graphics library code to change the display based on the cap touch key pressed.

There are 5 keys on the DA210 Demo Board; Left, Right, Up, Down, and Select.
These keys are either single cap touch channels or a combination of two cap touch
channels.  These are as follows:
	Up 	= 	Cap Touch Channel 2
	Down	= 	Cap Touch Channel 3
	Left	=	Cap Touch Channel 1 + 2
	Right	=	Cap Touch Channel 1 + 3
	Select	=	Cap Touch Channel 2 + 3

Notice that when the cap touch channels are pressed, an LED lights to indicate
the cap touch channel(s) are pressed. LED D1 = channel 1, D2 = channel 2, and
D3 = channel 3.

Each key on the DA210 Demo board has a specific action on the display.
	- The Left key sends a message that the "LEFT" button on the screen is
	  pressed. This moves the slider on the display a fixed amount to the left
	  and the bar graph is adjusted accordingly.
	- The Right key sends a message that the "RIGHT" button on the screen is
	  pressed. This moves the slider on the display a fixed amount to the right
	  and the bar graph is adjusted accordingly. 
	- The Up key sends a message that the slider on the screen has been
	  moved all the way to the right. This moves the slider on the display all 
	  the way to the right and the bar graph shows its maximum value. 
	- The Down key sends a message that the slider on the screen has been
	  moved all the way to the left. This moves the slider on the display all 
	  the way to the left and the bar graph shows its minimum value. 
	- The Select key sends a message that the slider on the screen has been
	  moved to the middle. This moves the slider on the display to the center
	  of its travel and the bar graph shows a "50%" value. 

*******************************************************************************
  Key Features of the DA210 Graphics Cap Touch Demo
*******************************************************************************
The LEDs that indicate when the cap touch channels are touched are actually 
connected to the cap touch pads.  The connections to the PIC24FJ256DA210 are pins
that can operate as standard I/O pins as well as A/D converter inputs.  When the
pin is not reading the cap touch pad using the CTMU to detect if it is touched, the
pin is switched to an output, and it displays the status of the cap touch pad.
This can be accomplished because the reading of the cap touch pad only takes about
150-200us. This small amount of time is not perceptible.  It should be noted that 
the LED and current limiting resistor reduce the sensitivity of the cap touch pad
sensors.  This would make this type of implementation not practical if a thicker
overlay was needed to be placed over the cap touch keys.

The DA210 Graphics Cap Touch Demo is intended to show that a graphics display
may be used along with a touchscreen overlay on the display.  This can help with
applications that need both "hard" defined keys as well as "software" defined
keys (keys created by the display).

*******************************************************************************
  Some Limitations of the DA210 Graphics Cap Touch Demo
*******************************************************************************
When detecting the "Up" and "Down" keys, a slight delay may be seen.
This has been done to insure that a key that is the combination of 2 cap touch
channels has time to be detected.  There is less sensitivity on the keys that are
a combination of 2 cap touch channels (Left, Right, Select).  This is due to fact
that the surface area of the pad cap touch channels if 1/2 of that for the single
channel keys (the keys using 2 cap touch channels have an interleaved pattern of
each of the 2 cap touch channels).

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

