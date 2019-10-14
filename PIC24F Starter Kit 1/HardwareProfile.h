/******************************************************************************

HardwareProfile.h

This file defines all of the hardware-specific information for the project.

******************************************************************************/

#ifndef _HARDWARE_PROFILE_H_
#define _HARDWARE_PROFILE_H_

#define USE_SH1101A
//#define USE_SSD1303
//#define USE_FRC - incompatible with USB operation
//#define GO_SLOW - incompatible with USB host operation

#if defined( __C30__ )
    #ifdef USE_FRC
        #define GetSystemClock()            32000000UL
        #define GetPeripheralClock()        (GetSystemClock())
        #define GetInstructionClock()       (GetSystemClock() / 2)
        #define MILLISECONDS_PER_TICK       10
        #define TIMER_PRESCALER             TIMER_PRESCALER_8 //TIMER_PRESCALER_1
        #define TIMER_PERIOD                20000 //40000
    #else
        #ifdef GO_SLOW
            #define GetSystemClock()            8000000UL
            #define GetPeripheralClock()        (GetSystemClock())
            #define GetInstructionClock()       (GetSystemClock() / 2)
            #define MILLISECONDS_PER_TICK       10
            #define TIMER_PRESCALER             TIMER_PRESCALER_1
            #define TIMER_PERIOD                40000
        #else
            #define GetSystemClock()            32000000UL
            #define GetPeripheralClock()        (GetSystemClock())
            #define GetInstructionClock()       (GetSystemClock() / 2)
            #define MILLISECONDS_PER_TICK       10
            #define TIMER_PRESCALER             TIMER_PRESCALER_8   // 8MHz: TIMER_PRESCALER_1
            #define TIMER_PERIOD                20000                // 10ms=20000, 1ms=2000
        #endif
    #endif
#elif defined( __PIC32MX__)
    #define USB_A0_SILICON_WORK_AROUND
    //#define RUN_AT_48MHZ
    //#define RUN_AT_24MHZ
    #define RUN_AT_60MHZ
    // Clock values
    #define MILLISECONDS_PER_TICK       10                  // -0.000% error
    #define TIMER_PRESCALER             TIMER_PRESCALER_8   // At 60MHz
    #define TIMER_PERIOD                37500               // At 60MHz
#endif


//#define USE_USB_PLL

#if defined(__PIC32MX__)
    #if defined(RUN_AT_48MHZ)
        #define FCY_SPEED               48000000
        #define PERIPHERAL_BUS_SPEED    48000000
    #elif defined(RUN_AT_24MHZ)
        #define FCY_SPEED               24000000
        #define PERIPHERAL_BUS_SPEED    24000000
    #elif defined(RUN_AT_60MHZ)
        #define FCY_SPEED               60000000
        #define PERIPHERAL_BUS_SPEED    30000000    // Will be divided down
    #else
        #error Choose a speed
    #endif
#endif


// Define the baud rate constants
#if defined(__C30__)
    #define BAUDRATE2       57600UL
    #define BRG_DIV2        4
    #define BRGH2           1
#elif defined (__PIC32MX__)
    #define BAUDRATE2       115200ul
    #define BRG_DIV2        4
    #define BRGH2           1
#endif


// Define the RTCC default initialization.
#define RTCC_DEFAULT_DAY        13        // 13
#define RTCC_DEFAULT_MONTH      11        // November
#define RTCC_DEFAULT_YEAR       07        // 2007
#define RTCC_DEFAULT_WEEKDAY    02        // Tuesday
#define RTCC_DEFAULT_HOUR       10        // 10:10:01
#define RTCC_DEFAULT_MINUTE     10
#define RTCC_DEFAULT_SECOND     01

#if defined(__PIC24F__)
    #include <p24fxxxx.h>
//    #include <uart2.h>
#elif defined(__PIC24H__)
    #include <p24hxxxx.h>
//    #include <uart2.h>
#else
    #include <p32xxxx.h>
    #include <plib.h>
//    #include <uart2.h>
#endif


/** TRIS ***********************************************************/
#define INPUT_PIN           1
#define OUTPUT_PIN          0


/** CTMU Related****************************************************/
//	- See text in TouchSense.c for details -
//  - Only use 1 of the following 2 #define statements - 
#define TOUCHPAD_DIRECT_TOUCH 	//No covering on the buttons
//#define TOUCHPAD_USE_OVERLAY		//Settings for acrylic overlay 

#define TOUCHPAD_LO_PASS			//Filtering for touchpads

#if defined TOUCHPAD_DIRECT_TOUCH 
	#if defined TOUCHPAD_USE_OVERLAY
		#error Cannot use both direct touch and overlay at the same time
	#endif
#endif

/** MDD File System Configuration *********************************************/
#define USE_USB_INTERFACE

// Determines processor type automatically
#ifdef __18CXX
	#define USE_PIC18
#elif defined __PIC24F__
	#define USE_16BIT
	#define USE_PIC24F
#elif defined __PIC24H__
	#define USE_16BIT
	#define USE_PIC24H
#elif defined __dsPIC30F__
	#define USE_16BIT
	#define USE_PIC30
#elif defined __dsPIC33F__
	#define USE_16BIT
	#define USE_PIC33
#elif defined __PIC32MX__
	#define USE_32BIT
	#define USE_PIC32
#else
	#error "Use PIC18, PIC24, dsPIC30, dsPIC33 or PIC32 processor"
#endif


/*********************************************************************
* IOS FOR THE DISPLAY CONTROLLER
*********************************************************************/
// Definitions for reset pin
#define RST_TRIS_BIT       TRISDbits.TRISD2
#define RST_LAT_BIT        LATDbits.LATD2

#define CS_TRIS_BIT 	   TRISDbits.TRISD11
#define CS_LAT_BIT 		   LATDbits.LATD11  

#endif

