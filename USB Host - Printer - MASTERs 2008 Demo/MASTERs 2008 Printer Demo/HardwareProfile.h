// HardwareProfile.h

#ifndef _HARDWARE_PROFILE_H_
#define _HARDWARE_PROFILE_H_

#if defined( __C30__ )

    // Various clock values
    #define GetSystemClock()            32000000UL
    #define GetPeripheralClock()        (GetSystemClock())
    #define GetInstructionClock()       (GetSystemClock() / 2)

#elif defined( __PIC32MX__)

    #define USB_A0_SILICON_WORK_AROUND
    //#define RUN_AT_48MHZ
    //#define RUN_AT_24MHZ
    #define RUN_AT_60MHZ

    // Various clock values
    #if defined(RUN_AT_48MHZ)
        #define GetSystemClock()            48000000UL
        #define GetPeripheralClock()        48000000UL
        #define GetInstructionClock()       (GetSystemClock() / 2) ???
    #elif defined(RUN_AT_24MHZ)
        #define GetSystemClock()            24000000UL
        #define GetPeripheralClock()        24000000UL
        #define GetInstructionClock()       (GetSystemClock() / 2) ???
    #elif defined(RUN_AT_60MHZ)
        #define GetSystemClock()            60000000UL
        #define GetPeripheralClock()        30000000UL  // Will be divided down
        #define GetInstructionClock()       (GetSystemClock() / 2) ???
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
    #define BAUDRATE2       57600UL
    #define BRG_DIV2        4
    #define BRGH2           1
#endif

// Define the RTCC default initialization.
#define RTCC_DEFAULT_DAY        21        // 21
#define RTCC_DEFAULT_MONTH      7         // July
#define RTCC_DEFAULT_YEAR       8         // 2008
#define RTCC_DEFAULT_WEEKDAY    01        // Monday
#define RTCC_DEFAULT_HOUR       8         // 8:00:00
#define RTCC_DEFAULT_MINUTE     0
#define RTCC_DEFAULT_SECOND     0


#if defined(__PIC24F__)
    #include <p24fxxxx.h>
    #include <uart2.h>
#elif defined(__PIC24H__)
    #include <p24hxxxx.h>
    #include <uart2.h>
#else
    #include <p32xxxx.h>
    #include <plib.h>
    #include <uart2.h>
#endif


/*********************************************************************
* IOS FOR THE DISPLAY CONTROLLER
*********************************************************************/
#if (GRAPHICS_PICTAIL_VERSION == 1)

    // Definitions for reset pin
    #define RST_TRIS_BIT       TRISCbits.TRISC1
    #define RST_LAT_BIT        LATCbits.LATC1
    
    // Definitions for RS pin
    #define RS_TRIS_BIT        TRISBbits.TRISB15
    #define RS_LAT_BIT         LATBbits.LATB15
    
    // Definitions for CS pin
    #define CS_TRIS_BIT        TRISDbits.TRISD8
    #define CS_LAT_BIT         LATDbits.LATD8
    
    // Definitions for FLASH CS pin 
    #define CS_FLASH_LAT_BIT   LATDbits.LATD9
    #define CS_FLASH_TRIS_BIT  TRISDbits.TRISD9

#elif (GRAPHICS_PICTAIL_VERSION == 2)

    #if  (DISPLAY_CONTROLLER == LGDP4531)
    
        // Definitions for reset pin
        #define RST_TRIS_BIT       TRISCbits.TRISC1
        #define RST_LAT_BIT        LATCbits.LATC1
        
        // Definitions for RS pin
        #define RS_TRIS_BIT        TRISCbits.TRISC2
        #define RS_LAT_BIT         LATCbits.LATC2
        
        // Definitions for CS pin
        #define CS_TRIS_BIT        TRISDbits.TRISD10
        #define CS_LAT_BIT         LATDbits.LATD10
        
        // Definitions for FLASH CS pin 
        #define CS_FLASH_LAT_BIT   LATDbits.LATD1
        #define CS_FLASH_TRIS_BIT  TRISDbits.TRISD1
        
        // Definitions for POWER ON pin
        #define POWERON_LAT_BIT    LATCbits.LATC3
        #define POWERON_TRIS_BIT   TRISCbits.TRISC3
    
    #elif (DISPLAY_CONTROLLER == SSD1906)
    
        // Definitions for reset line
        #define RST_TRIS_BIT       TRISCbits.TRISC1
        #define RST_LAT_BIT        LATCbits.LATC1
        
        // Definitions for RS line
        #define RS_TRIS_BIT        TRISCbits.TRISC2
        #define RS_LAT_BIT         LATCbits.LATC2
        
        // Definitions for CS line
        #define CS_TRIS_BIT        TRISDbits.TRISD10
        #define CS_LAT_BIT         LATDbits.LATD10
        
        // Definitions for A0 line
        #define A0_LAT_BIT         LATDbits.LATD3
        #define A0_TRIS_BIT        TRISDbits.TRISD3
        
        // Definitions for A17 line 
        #define A17_LAT_BIT        LATGbits.LATG14
        #define A17_TRIS_BIT       TRISGbits.TRISG14
    
    #else
    
        #error	GRAPHICS CONTROLLER IS NOT SUPPORTED
    
    #endif  // (DISPLAY_CONTROLLER == ...

#elif (GRAPHICS_PICTAIL_VERSION == 3)

    // Definitions for reset line
    #define RST_TRIS_BIT       TRISCbits.TRISC1
    #define RST_LAT_BIT        LATCbits.LATC1
    
    // Definitions for RS line
    #define RS_TRIS_BIT        TRISCbits.TRISC2
    #define RS_LAT_BIT         LATCbits.LATC2
    
    // Definitions for CS line
    #define CS_TRIS_BIT        TRISDbits.TRISD10
    #define CS_LAT_BIT         LATDbits.LATD10

#endif // (GRAPHICS_PICTAIL_VERSION == ...


#endif

