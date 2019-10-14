// HardwareProfile.h

#ifndef _HARDWARE_PROFILE_H_
#define _HARDWARE_PROFILE_H_

#if defined( __C30__ )

    // Various clock values
    #define GetSystemClock()            32000000UL
    #define GetPeripheralClock()        (GetSystemClock())
    #define GetInstructionClock()       (GetSystemClock() / 2)

    // Clock values
    #define MILLISECONDS_PER_TICK       10
    #define TIMER_PRESCALER             TIMER_PRESCALER_8   // 8MHz: TIMER_PRESCALER_1
    #define TIMER_PERIOD                20000                // 10ms=20000, 1ms=2000

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

    // Clock values
    #define MILLISECONDS_PER_TICK       10                  // -0.000% error
    #define TIMER_PRESCALER             TIMER_PRESCALER_8   // At 60MHz
    #define TIMER_PERIOD                37500               // At 60MHz

#endif


//#define USE_USB_PLL

#if defined(__PIC32MX__)
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

/** TRIS ***********************************************************/
#define INPUT_PIN           1
#define OUTPUT_PIN          0


#define GRAPHICS_PICTAIL_VERSION  3

/*********************************************************************
 *********************************************************************
 * IOS FOR THE DISPLAY CONTROLLER
 ********************************************************************* 
*********************************************************************/
#if (GRAPHICS_PICTAIL_VERSION == 1)

	#error THIS DEMO WILL NOT RUN ON Graphics PICtail 1

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
		
	#endif	

#elif (GRAPHICS_PICTAIL_VERSION == 250)

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
	#define CS_FLASH_LAT_BIT   LATDbits.LATD11
	#define CS_FLASH_TRIS_BIT  TRISDbits.TRISD11
	
	// Definitions for POWER ON pin
	#define POWERON_LAT_BIT    LATGbits.LATG15
	#define POWERON_TRIS_BIT   TRISGbits.TRISG15

	#elif (DISPLAY_CONTROLLER == SSD1906)
	
		#if (DISPLAY_PANEL == TFT_G320240DTSW_69W_TP_E)
		
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
			#define A17_LAT_BIT        LATAbits.LATA9
			#define A17_TRIS_BIT       TRISAbits.TRISA9
	
		#else
			#error	PANEL USED with GFX2 IS NOT SUPPPORTED
		#endif	

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

/*********************************************************************
 *********************************************************************
 * IOS FOR THE TOUCH SCREEN
 ********************************************************************* 
*********************************************************************/
// ADC channel constants
#define ADC_TEMP        4
#define ADC_POT         5

#if (GRAPHICS_PICTAIL_VERSION == 1)

	#define ADC_XPOS        13
	#define ADC_YPOS        12
    
    // Y port definitions
    #define ADPCFG_XPOS     AD1PCFGbits.PCFG13
    #define LAT_XPOS        LATBbits.LATB13 
    #define LAT_XNEG        LATBbits.LATB11
    #define TRIS_XPOS       TRISBbits.TRISB13
    #define TRIS_XNEG       TRISBbits.TRISB11 
    
    // X port definitions
    #define ADPCFG_YPOS     AD1PCFGbits.PCFG12
    #define LAT_YPOS        LATBbits.LATB12  
    #define LAT_YNEG        LATBbits.LATB10 
    #define TRIS_YPOS       TRISBbits.TRISB12
    #define TRIS_YNEG       TRISBbits.TRISB10 

#elif (GRAPHICS_PICTAIL_VERSION == 2)

	#define ADC_XPOS        11
    #define ADC_YPOS        10
    
    // Y port definitions
    #define ADPCFG_XPOS     AD1PCFGbits.PCFG11
    #define LAT_XPOS        LATBbits.LATB11
    #define LAT_XNEG        LATGbits.LATG13
    #define TRIS_XPOS       TRISBbits.TRISB11
    #define TRIS_XNEG       TRISGbits.TRISG13
    
    // X port definitions
    #define ADPCFG_YPOS     AD1PCFGbits.PCFG10
    #define LAT_YPOS        LATBbits.LATB10  
    #define LAT_YNEG        LATGbits.LATG12 
    #define TRIS_YPOS       TRISBbits.TRISB10
    #define TRIS_YNEG       TRISGbits.TRISG12 

#elif (GRAPHICS_PICTAIL_VERSION == 250)

	#define ADC_XPOS        11
	#define ADC_YPOS        10
    
    #if (DISPLAY_CONTROLLER	== SSD1906)
    	#if (DISPLAY_PANEL == TFT_G320240DTSW_69W_TP_E)
		    // Y port definitions
		    #define ADPCFG_XPOS     AD1PCFGbits.PCFG11
		    #define LAT_XPOS        LATBbits.LATB11
			#define LAT_XNEG        LATDbits.LATD9
		    #define TRIS_XPOS       TRISBbits.TRISB11
			#define TRIS_XNEG       TRISDbits.TRISD9
	    
		    // X port definitions
		    #define ADPCFG_YPOS     AD1PCFGbits.PCFG10
		    #define LAT_YPOS        LATBbits.LATB10  
			#define LAT_YNEG        LATDbits.LATD8 
		    #define TRIS_YPOS       TRISBbits.TRISB10
			#define TRIS_YNEG       TRISDbits.TRISD8 		    
			
		#endif // #if (DISPLAY_PANEL == TFT_G320240DTSW_69W_TP_E)
    #else
	    // Y port definitions
	    #define ADPCFG_XPOS     AD1PCFGbits.PCFG11
	    #define LAT_XPOS        LATBbits.LATB11
		#define LAT_XNEG 		LATDbits.LATD9
	    #define TRIS_XPOS       TRISBbits.TRISB11
		#define TRIS_XNEG 		TRISDbits.TRISD9
    
	    // X port definitions
	    #define ADPCFG_YPOS     AD1PCFGbits.PCFG10
	    #define LAT_YPOS        LATBbits.LATB10  
		#define LAT_YNEG 		LATDbits.LATD8
	    #define TRIS_YPOS       TRISBbits.TRISB10
		#define TRIS_YNEG 		TRISDbits.TRISD8
	    
    #endif

#elif (GRAPHICS_PICTAIL_VERSION == 3)

	#define ADC_XPOS        11
    #define ADC_YPOS        10
    
    // Y port definitions
    #define ADPCFG_XPOS     AD1PCFGbits.PCFG11
    #define LAT_XPOS        LATBbits.LATB11
    #define LAT_XNEG        LATDbits.LATD9
    #define TRIS_XPOS       TRISBbits.TRISB11
    #define TRIS_XNEG       TRISDbits.TRISD9
    
    // X port definitions
    #define ADPCFG_YPOS     AD1PCFGbits.PCFG10
    #define LAT_YPOS        LATBbits.LATB10  
    #define LAT_YNEG        LATDbits.LATD8 
    #define TRIS_YPOS       TRISBbits.TRISB10
    #define TRIS_YNEG       TRISDbits.TRISD8 
    
#endif

/*********************************************************************
 *********************************************************************
 * IOS FOR THE SIDE BUTTONS
 ********************************************************************* 
*********************************************************************/
#define BTN_S3 PORTDbits.RD6
#define BTN_S4 PORTDbits.RD13
#define BTN_S5 PORTAbits.RA7
#define BTN_S6 PORTDbits.RD7

/*********************************************************************
 *********************************************************************
* IOS FOR THE UART
 *********************************************************************
*********************************************************************/
#define TX_TRIS         TRISFbits.TRISF5
#define RX_TRIS         TRISFbits.TRISF4


/*********************************************************************
 *********************************************************************
 * IO FOR THE BEEPER PWM
 ********************************************************************* 
*********************************************************************/
#define BEEP_TRIS_BIT         TRISDbits.TRISD0
#define BEEP_LAT_BIT          LATDbits.LATD0

/*********************************************************************
 *********************************************************************
 * IOS FOR THE EEPROM SPI
 * If using GFX PICtail 2 and 250(modified 2) EEPROM is in Explorer 16
 * If using GFX PICtail 3 SPI Flash in GFX 3 is used.
 ********************************************************************* 
*********************************************************************/
#if ((GRAPHICS_PICTAIL_VERSION == 2) || (GRAPHICS_PICTAIL_VERSION == 250))
	// This PIM has RD12 rerouted to RA15
	#define EEPROM_CS_TRIS       TRISGbits.TRISG0
	#define EEPROM_CS_LAT        LATGbits.LATG0

	#define EEPROM_SCK_TRIS      TRISGbits.TRISG6
	#define EEPROM_SDO_TRIS      TRISGbits.TRISG8
	#define EEPROM_SDI_TRIS      TRISGbits.TRISG7

#else // if (GRAPHICS_PICTAIL_VERSION == 3)
	#define SST25_CS_TRIS       TRISDbits.TRISD1
	#define SST25_CS_LAT        LATDbits.LATD1

	#define SST25_SCK_TRIS      TRISGbits.TRISG6
	#define SST25_SDO_TRIS      TRISGbits.TRISG8
	#define SST25_SDI_TRIS      TRISGbits.TRISG7

#endif

/*********************************************************************
 *********************************************************************
 * IOS FOR THE GFX ONBOARD FLASH MEMORY
 * This is only used GFX PICtail 2 and 250(modified 2) 
 ********************************************************************* 
*********************************************************************/
#if (GRAPHICS_PICTAIL_VERSION == 1)

	#error THIS DEMO WILL NOT RUN ON GFX1. FLASH DEVICE ON GFX1 CANNOT BE USED. 

#elif (GRAPHICS_PICTAIL_VERSION == 2)

	//#define SST39_CS_TRIS    TRISDbits.TRISD11
	//#define SST39_CS_LAT     LATDbits.LATD11
	#define SST39_CS_TRIS    TRISDbits.TRISD1
	#define SST39_CS_LAT     LATDbits.LATD1
	#define SST39_A18_TRIS   TRISCbits.TRISC2
	#define SST39_A18_LAT    LATCbits.LATC2
	
	#define SST39_A17_TRIS   TRISGbits.TRISG15
	#define SST39_A17_LAT    LATGbits.LATG15
	#define SST39_A16_TRIS   TRISGbits.TRISG14
	#define SST39_A16_LAT    LATGbits.LATG14	

#elif (GRAPHICS_PICTAIL_VERSION == 250)

	#define SST39_CS_TRIS    TRISDbits.TRISD1
	#define SST39_CS_LAT     LATDbits.LATD1
	//#define SST39_CS_TRIS    TRISDbits.TRISD11
	//#define SST39_CS_LAT     LATDbits.LATD11
	#define SST39_A18_TRIS   TRISCbits.TRISC2
	#define SST39_A18_LAT    LATCbits.LATC2
	
	#define SST39_A17_TRIS   TRISAbits.TRISA10
	#define SST39_A17_LAT    LATAbits.LATA10
	#define SST39_A16_TRIS   TRISAbits.TRISA9
	#define SST39_A16_LAT    LATAbits.LATA9

#elif (GRAPHICS_PICTAIL_VERSION == 3)

	// already defined in SPI Flash above
	//#define SST25_CS_TRIS       TRISDbits.TRISD1
	//#define SST25_CS_LAT        LATDbits.LATD1
	//#define SST25_SCK_TRIS      TRISGbits.TRISG6
	//#define SST25_SDO_TRIS      TRISGbits.TRISG8
	//#define SST25_SDI_TRIS      TRISGbits.TRISG7

#endif // GRAPHICS_PICTAIL_VERSION




#endif

