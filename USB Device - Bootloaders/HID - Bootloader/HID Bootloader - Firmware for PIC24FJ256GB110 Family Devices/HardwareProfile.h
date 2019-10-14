/********************************************************************
 FileName:     	HardwareProfile.h
 Dependencies:	See INCLUDES section
 Processor:		PIC18 or PIC24 USB Microcontrollers
 Hardware:		The code is natively intended to be used on the following
 				hardware platforms: PICDEM™ FS USB Demo Board, 
 				PIC18F87J50 FS USB Plug-In Module, or
 				Explorer 16 + PIC24 USB PIM.  The firmware may be
 				modified for use on other USB platforms by editing this
 				file (HardwareProfile.h).
 Complier:  	Microchip C18 (for PIC18) or C30 (for PIC24)
 Company:		Microchip Technology, Inc.

 Software License Agreement:

 The software supplied herewith by Microchip Technology Incorporated
 (the “Company”) for its PIC® Microcontroller is intended and
 supplied to you, the Company’s customer, for use solely and
 exclusively on Microchip PIC Microcontroller products. The
 software is owned by the Company and/or its supplier, and is
 protected under applicable copyright laws. All rights are reserved.
 Any use in violation of the foregoing restrictions may subject the
 user to criminal sanctions under applicable laws, as well as to
 civil liability for the breach of the terms and conditions of this
 license.

 THIS SOFTWARE IS PROVIDED IN AN “AS IS” CONDITION. NO WARRANTIES,
 WHETHER EXPRESS, IMPLIED OR STATUTORY, INCLUDING, BUT NOT LIMITED
 TO, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
 PARTICULAR PURPOSE APPLY TO THIS SOFTWARE. THE COMPANY SHALL NOT,
 IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL OR
 CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.

********************************************************************
 File Description:

 Change History:
  Rev   Date         Description
  1.0   11/19/2004   Initial release
  2.1   02/26/2007   Updated for simplicity and to use common
                     coding style

********************************************************************/

#ifndef HARDWARE_PROFILE_H
#define HARDWARE_PROFILE_H

//#define DEMO_BOARD USER_DEFINED_BOARD

#if !defined(DEMO_BOARD)
    #if defined(__C30__)
        #if defined(__PIC24FJ256GB110__)
            #define DEMO_BOARD PIC24FJ256GB110_PIM
            #define EXPLORER_16
			#define PIC24FJ256GB110_PIM
            #define CLOCK_FREQ 32000000
        #endif
    #endif

    #if defined(__18CXX)
        #if defined(__18F4550)
            #define DEMO_BOARD PICDEM_FS_USB
            #define PICDEM_FS_USB
            #define CLOCK_FREQ 48000000
        #elif defined(__18F87J50) || defined(__18F85J50)
            #define DEMO_BOARD PIC18F87J50_PIM
            #define PIC18F87J50_PIM
            #define CLOCK_FREQ 48000000
        #endif
    #endif
#endif

#if !defined(DEMO_BOARD)
    #error "Demo board not defined.  Either define DEMO_BOARD for a custom board or select the correct processor for the demo board."
#endif

//#define ENABLE_CONSOLE

/** TRIS ***********************************************************/
#define INPUT_PIN           1
#define OUTPUT_PIN          0

/** USB ************************************************************/
#if defined(PIC24FJ256GB110_PIM)
	//#define USE_SELF_POWER_SENSE_IO
	//#define USE_USB_BUS_SENSE_IO

    #define tris_usb_bus_sense  TRISBbits.TRISB5    // Input

    #define USB_BUS_SENSE       1
   
    #define tris_self_power     TRISAbits.TRISA2    // Input

    #define self_power          1
    
    /** LED ************************************************************/
    #define mInitAllLEDs()      LATA &= 0x00; TRISA &= 0xFF00;
    
    #define mLED_1              LATAbits.LATA0
    #define mLED_2              LATAbits.LATA1
    #define mLED_3              LATAbits.LATA2
    #define mLED_4              LATAbits.LATA3
    
    #define mLED_1_On()         mLED_1 = 1;
    #define mLED_2_On()         mLED_2 = 1;
    #define mLED_3_On()         mLED_3 = 1;
    #define mLED_4_On()         mLED_4 = 1;
    
    #define mLED_1_Off()        mLED_1 = 0;
    #define mLED_2_Off()        mLED_2 = 0;
    #define mLED_3_Off()        mLED_3 = 0;
    #define mLED_4_Off()        mLED_4 = 0;
    
    #define mLED_1_Toggle()     mLED_1 = !mLED_1;
    #define mLED_2_Toggle()     mLED_2 = !mLED_2;
    #define mLED_3_Toggle()     mLED_3 = !mLED_3;
    #define mLED_4_Toggle()     mLED_4 = !mLED_4;
    
    /** SWITCH *********************************************************/
    #define mInitSwitch2()      TRISDbits.TRISD6=1;
    #define mInitSwitch3()      TRISDbits.TRISD7=1;
    #define mInitAllSwitches()  mInitSwitch2();mInitSwitch3();
    #define sw2                 PORTDbits.RD6
    #define sw3                 PORTDbits.RD7
    
#endif

#endif  //HARDWARE_PROFILE_H
