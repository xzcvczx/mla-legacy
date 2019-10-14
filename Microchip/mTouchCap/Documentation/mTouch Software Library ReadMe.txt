*******************************************************************************
********************** mTouch Capacitive Library Readme File **********************
*******************************************************************************

(C) Copyright Microchip Technology, Inc. 2009

This file contains information related to the mTouch Capacitive Touch Software Library.

*******************************************************************************
    Release Information
*******************************************************************************
mTouch Cap Library v1.0           18-Nov-2009
MPLAB version:                    8.40
C18 Compiler Version	          3.34    
C30 Compiler Version	          3.21  


*******************************************************************************
    mTouch Capacitive Touch Library testing Details
*******************************************************************************
The mTouch Capacitive Touch Library software is tested using PIC18F and PIC24F 
CTMU Evaluation boards(DM183026).


*******************************************************************************
    mTouch Capacitive Touch Library Installation Details
*******************************************************************************

The default installation directory for the mTouch software library files is
C:\Microchip Solutions\Microchip\mTouchCap.

Please see the help file "mTouchCap Library Help.chm" in the 
C:\Microchip Solutions\Microchip\Help for details on using the mTouch Software Library.  


*******************************************************************************
		Software Folder and File structure
*******************************************************************************

<<Microchip Solutions>>
	  |
	  | 
	  |
	  |------> <<Microchip>>
	  |	     |
	  |	     |
	  |	     |
	  |	     |------> <<mTouchCap>>
	  |	     |		|
	  |	     |		|
	  |	     |		|------> <<Documentation>> (mTouchSoftwareLibraryReadMe.txt) 	  
	  |	     |		|
	  |	     |		|
	  |	     |		|------> .c (Core mTouch Capacitive Touch Library files for PIC18F and PIC24F)
          |	     |
 	  |	     |
          |          |------> <<Include>>
	  |	     |		|
	  |	     |		|
	  |	     |		|------> <<mTouchCap>>	  
	  |	     |		|	   |
	  |	     |          |          |
	  |	     |          |          |------> .h (Core mTouch Capacitive Touch Library files for PIC18F and PIC24F)
	  |	     |          |          
	  |	     |		|
	  |	     |		|------> .h (common files)	
	  |	     |
	  |	     |
	  |	     |------> <<Help>> (mTouchCap Library Help)
	  |	     			  	     		
	  |	     
	  |------> <<mTouchCapDemos>>
	  |	      |
	  |	      |
	  |           |------> <<mTouchCap_2Ch_SliderDemo>>
	  |	      |		  |
	  |	      |		  |
	  |	      |           |------> <<PIC18F_CTMU>> (config,hardware and PIC18F Demo files) 
	  |	      |           |
	  |	      |           |------> <<PIC24F_CTMU>> (config,hardware and PIC24F Demo files)
	  |           |           |	  	  
	  |	      |	          |------> Demo Source files/MPLAB files
          |           |           |
          |           |------> <<mTouchCap_4Ch_SliderDemo>>
	  |	      |		  |
	  |	      |		  |
	  |	      |           |------> <<PIC18F_CTMU>> (config,hardware and PIC18F Demo files) 
	  |	      |           |
	  |	      |           |------> <<PIC24F_CTMU>> (config,hardware and PIC24F Demo files)
	  |           |           |	  	  
	  |	      |	          |------> Demo Source files/MPLAB files
          |  	      |	          |
 	  |	      |------> <<mTouchCap_Combo_Demo>>
	  |	      |		  |
	  |	      |		  |
	  |	      |           |------> <<PIC18F_CTMU>> (config,hardware and PIC18F Demo files) 
	  |	      |           |
	  |	      |           |------> <<PIC24F_CTMU>> (config,hardware and PIC24F Demo files)
	  |           |           |	  	  
	  |	      |	          |------> Demo Source files/MPLAB files
	  |           |           |
	  |	      |------> <<mTouchCap_DirectKeyDemo>>
	  |	      |		  |
	  |	      |		  |
	  |	      |           |------> <<PIC18F_CTMU>> (config,hardware and PIC18F Demo files) 
	  |	      |           |
	  |	      |           |------> <<PIC24F_CTMU>> (config,hardware and PIC24F Demo files)
	  |           |           |	  	  
	  |	      |	          |------> Demo Source files/MPLAB files
	  |           |           |
	  |	      |------> <<mTouchCap_MatrixKeyDemo>>
	  |	      |		  |
	  |	      |		  |
	  |	      |           |------> <<PIC18F_CTMU>> (config,hardware and PIC18F Demo files) 
	  |	      |           |
	  |	      |           |------> <<PIC24F_CTMU>> (config,hardware and PIC24F Demo files)
	  |           |           |	  	  
	  |	      |	          |------> Demo Source files/MPLAB files
	  |           |           |	  
	  |	      |------> <<mTouchCap_AppCommonFiles>>
	  |	      |		  |
	  |	      |		  |------> .c/.h (Demo Application related source and header files)



*******************************************************************************
    mTouch Capacitive Touch Library Setup Details
*******************************************************************************
There are many Capacitive touch Demo projects supplied along with this library. 
These demo projects can be configured to user's application by
modifying two header files "mTouchCap_HardwareProfile.h" and "mTouchCap_Config.h".


"mTouchCap_HardwareProfile.h" file defines the macros that are related to the hardware used. 
Make changes to this file according to the target hardware.
This file is located in each demo folder. It configures 
system hardware related settings like  system clock, ports, Max ADC channels.

"mTouchCap_Config.h" file defines the configurstions releated to the library. 
This file is located in each demo folder.
*******************************************************************************




*******************************************************************************
	Limitations of the mTouch Software Library (Final Release)
*******************************************************************************
This release has limitations on the usage of the library.  Some combinations
of functionality are not supported (such as more than one instance of either
a 2-channel or 4-channel slider).  The mTouch software Library currently only
supports PIC18 and PIC24F devices that have a CTMU module.  

Also the maximum number of channels that can be interfaced to the the Demo projects
are given below:

	Matrix Key Demo       : 4 Rows X 4 Columns ( for both PIC18F and PIC24F)
			       : Any 8 CTMU channels can be choosen for the Matrix demo
	
	Direct Key Demo       : 16 Channels ( for PIC24F )
			     	     13 Channels ( for PIC18F )
	2 Channel Slider Demo : 2 Channels ( for both PIC18F and PIC24F)
			       : Any 2 CTMU channels can be choosen for the demo
	4 channel Slider Demo : 4 Channels ( for both PIC18F and PIC24F)
			       : Any 4 CTMU channels can be choosen for the demo
			 
The mTouch Diagnostic Tool support is not provided with the mTouch Cap Library v1.0 
software release.

*******************************************************************************

*******************************************************************************
	Demo projects for the mTouchCap Software Library
*******************************************************************************
The software installed includes the complete source code for several demo
applications that can be loaded onto the demo board.  The default directory 
location is: C:\Microchip Solutions\mTouchCapDemos. The project
files for MPLAB are also available in these directories.


*******************************************************************************

The latest release of MPLAB (Version 8.40 or higher) should be used with the 
mTouch Capaitive Touch Library files. The Newest release is available at:
http://www.microchip.com 

Please note that the MPLAB C30/C18 C compiler is required to build the project 
is available for download/purchase from the Microchip website.

*******************************************************************************

More mTouch Software Library specific information is located in the
"mTouchCap Library Help" file.

*******************************************************************************

*******************************************************************************
Note:
The linker file for PIC18 devices should be selected from the PIC18F_CTMU 
folder which is located within the individual mTouchCapDemo folders.
The linker file change is required for every PIC18 device to support the requirement 
of variables crossing a bank of Data memory (RAM). The linker script file provided 
along with the software library has the necessary change. Similarly, user has to 
modify the linker script for any other PIC18F device used.

*******************************************************************************