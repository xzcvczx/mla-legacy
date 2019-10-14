/********************************************************************
 FileName:     	HardwareProfile - GMAP PIC32MX460F512L PIM.h
 Dependencies:  See INCLUDES section
 Processor:     PIC32MX460F512L
 Hardware:      PIC32MX460F512L PIM
 Compiler:      Microchip C32
 Company:       Microchip Technology, Inc.

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
  1.0   02/20/2009   Broke out each hardware platform into its own
                     "HardwareProfile - xxx.h" file
********************************************************************/

#ifndef HARDWARE_PROFILE_GMAP_PIC32MX460F512L_PIM_H
#define HARDWARE_PROFILE_GMAP_PIC32MX460F512L_PIM_H


/*********************************************************************
* GetSystemClock() returns system clock frequency.
*
* GetPeripheralClock() returns peripheral clock frequency.
*
* GetInstructionClock() returns instruction clock frequency.
*
********************************************************************/
    #define GetSystemClock()            (72000000ul)
    #define GetPeripheralClock()        (GetSystemClock()/2) 
    #define GetInstructionClock()       (GetSystemClock())

    #define MILLISECONDS_PER_TICK       10                  // Definition for use with a tick timer
    #define TIMER_PRESCALER             TIMER_PRESCALER_8   // Definition for use with a tick timer
    #define TIMER_PERIOD                37500               // Definition for use with a tick timer

	#define BAUDRATE2					115200UL
	#define BRG_DIV2					4
	#define BRGH2						1

/*********************************************************************
* Hardware Check
* For PIC32MX460F512L - SD-SPI Demo using the SD/MMC PICtail cannot 
*						be used with Graphics PICtail Version 3
*********************************************************************/
	#if (GRAPHICS_PICTAIL_VERSION == 3) 
		#if defined (USE_SD_INTERFACE_WITH_SPI)
			#error SD/MMC PICtail cannot be used with Graphics PICtail 3 board
		#endif
	#endif	

	#if (GRAPHICS_PICTAIL_VERSION == 2) 
		#error This demo cannot work with Graphics PICtail 2 board. Set GRAPHICS_PICTAIL_VERSION to 3
	#endif	

/*********************************************************************
* Set USB MSD Demo Selection
* If USE_USB_INTERFACE is defined USB MSD is enabled.
*********************************************************************/
#if defined (USE_USB_INTERFACE)			// USB MSD cannot be used without this defined
	#define ENABLE_USB_MSD_DEMO			// enable USB MSD demo
#endif

/*********************************************************************
* Set USB HID Demo Selection 
*********************************************************************/
#define ENABLE_USB_HOST_HID_DEMO		// enable USB HID demo

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
		
		#if defined (__32MX460F512L__)
			// Definitions for POWER ON pin
			#define POWERON_LAT_BIT    LATCbits.LATC3
			#define POWERON_TRIS_BIT   TRISCbits.TRISC3
		#else		
			// Definitions for POWER ON pin
			#define POWERON_LAT_BIT    LATGbits.LATG15
			#define POWERON_TRIS_BIT   TRISGbits.TRISG15
		#endif	

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
// ADC channel constants (ADC_POT is mapped to Explorer 16 Potentiometer)
#define ADC_TEMP        ADC_CH0_POS_SAMPLEA_AN4
#define ADC_POT         ADC_CH0_POS_SAMPLEA_AN2 

#if (GRAPHICS_PICTAIL_VERSION == 2)

	#define ADC_XPOS        ADC_CH0_POS_SAMPLEA_AN11
    #define ADC_YPOS        ADC_CH0_POS_SAMPLEA_AN10
    
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

    #define ADC_XPOS        ADC_CH0_POS_SAMPLEA_AN11
    #define ADC_YPOS        ADC_CH0_POS_SAMPLEA_AN10
    
    #if (DISPLAY_CONTROLLER	== SSD1906)
    	#if (DISPLAY_PANEL == TFT_G320240DTSW_69W_TP_E)
		    // Y port definitions
		    #define ADPCFG_XPOS     AD1PCFGbits.PCFG11
		    #define LAT_XPOS        LATBbits.LATB11
		    #define TRIS_XPOS       TRISBbits.TRISB11

		    #if defined(__32MX460F512L__)
    	    	//If this is the USB PIM
        		#define TRIS_XNEG       TRISGbits.TRISG15
        		#define LAT_XNEG        LATGbits.LATG15
		    #else
		        //If this is the general purpose PIC32 PIM
	    	    #define TRIS_XNEG       TRISDbits.TRISD9
	        	#define LAT_XNEG        LATDbits.LATD9
		    #endif	    
	    
		    // X port definitions
		    #define ADPCFG_YPOS     AD1PCFGbits.PCFG10
		    #define LAT_YPOS        LATBbits.LATB10  
			#define LAT_YNEG        LATDbits.LATD8 
		    #define TRIS_YPOS       TRISBbits.TRISB10
			#define TRIS_YNEG       TRISDbits.TRISD8 		    
			
		#endif // #if (DISPLAY_PANEL == TFT_G320240DTSW_69W_TP_E)
    #else
	    // Y port definitions
	    
	    // Y port definitions
	    #define ADPCFG_XPOS     AD1PCFGbits.PCFG11
	    #define LAT_XPOS        LATBbits.LATB11
	    #define TRIS_XPOS       TRISBbits.TRISB11
	
	    #if defined(__32MX460F512L__)
        	//If this is the USB PIM
        	#define TRIS_XNEG       TRISGbits.TRISG15
        	#define LAT_XNEG        LATGbits.LATG15
	    #else
	        //If this is the general purpose PIC32 PIM
	        #define TRIS_XNEG       TRISDbits.TRISD9
	        #define LAT_XNEG        LATDbits.LATD9
	    #endif	    
		    
	    // X port definitions
	    #define ADPCFG_YPOS     AD1PCFGbits.PCFG10
	    #define LAT_YPOS        LATBbits.LATB10  
		#define LAT_YNEG 		LATDbits.LATD8
	    #define TRIS_YPOS       TRISBbits.TRISB10
		#define TRIS_YNEG 		TRISDbits.TRISD8
	    
    #endif

#elif (GRAPHICS_PICTAIL_VERSION == 3)

    #define ADC_XPOS        ADC_CH0_POS_SAMPLEA_AN11
    #define ADC_YPOS        ADC_CH0_POS_SAMPLEA_AN10
    
    // Y port definitions
    #define ADPCFG_XPOS     AD1PCFGbits.PCFG11
    #define LAT_XPOS        LATBbits.LATB11
    #define TRIS_XPOS       TRISBbits.TRISB11

    #if defined(__32MX460F512L__)
    	#if defined (PIC32USB_STARTERKIT)
	        //Use PIC32 USB Starter Kit
	        #define TRIS_XNEG       TRISDbits.TRISD9
    	    #define LAT_XNEG        LATDbits.LATD9
    	#else
        	//If this is the USB PIM
        	#define TRIS_XNEG       TRISGbits.TRISG15
        	#define LAT_XNEG        LATGbits.LATG15
        #endif	
    #else
        //If this is the general purpose PIC32 PIM
        #define TRIS_XNEG       TRISDbits.TRISD9
        #define LAT_XNEG        LATDbits.LATD9
    #endif

    
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

	#if defined (__32MX460F512L__)
		#define EEPROM_CS_TRIS       TRISDbits.TRISD12
    	#define EEPROM_CS_LAT        LATDbits.LATD12
	#else
		#define EEPROM_CS_TRIS       TRISGbits.TRISG0
		#define EEPROM_CS_LAT        LATGbits.LATG0
	#endif

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

#endif  //HARDWARE_PROFILE_GMAP_PIC32MX460F512L_PIM_H


