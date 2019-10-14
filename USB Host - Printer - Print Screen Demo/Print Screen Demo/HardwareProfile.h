/*********************************************************************
 *
 *	Hardware specific definitions
 *
 *********************************************************************
 * FileName:        HardwareProfile.h
 * Dependencies:    None
 * Processor:       PIC24F, PIC24H, PIC32MX
 * Compiler:        Microchip C32 v1.00 or higher
 *					Microchip C30 v3.01 or higher
 * Company:         Microchip Technology, Inc.
 *
 * Software License Agreement
 *
 * Copyright © 2002-2008 Microchip Technology Inc.  All rights 
 * reserved.
 *
 * Microchip licenses to you the right to use, modify, copy, and 
 * distribute: 
 * (i)  the Software when embedded on a Microchip microcontroller or 
 *      digital signal controller product (“Device”) which is 
 *      integrated into Licensee’s product; or
 * (ii) ONLY the Software driver source files ENC28J60.c and 
 *      ENC28J60.h ported to a non-Microchip device used in 
 *      conjunction with a Microchip ethernet controller for the 
 *      sole purpose of interfacing with the ethernet controller. 
 *
 * You should refer to the license agreement accompanying this 
 * Software for additional information regarding your rights and 
 * obligations.
 *
 * THE SOFTWARE AND DOCUMENTATION ARE PROVIDED “AS IS” WITHOUT 
 * WARRANTY OF ANY KIND, EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT 
 * LIMITATION, ANY WARRANTY OF MERCHANTABILITY, FITNESS FOR A 
 * PARTICULAR PURPOSE, TITLE AND NON-INFRINGEMENT. IN NO EVENT SHALL 
 * MICROCHIP BE LIABLE FOR ANY INCIDENTAL, SPECIAL, INDIRECT OR 
 * CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF 
 * PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY OR SERVICES, ANY CLAIMS 
 * BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE 
 * THEREOF), ANY CLAIMS FOR INDEMNITY OR CONTRIBUTION, OR OTHER 
 * SIMILAR COSTS, WHETHER ASSERTED ON THE BASIS OF CONTRACT, TORT 
 * (INCLUDING NEGLIGENCE), BREACH OF WARRANTY, OR OTHERWISE.
 *
 *
 * Author               Date		Comment
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * Howard Schlunder		10/03/06	Original, copied from Compiler.h
 ********************************************************************/
#ifndef __HARDWARE_PROFILE_H
#define __HARDWARE_PROFILE_H

/*********************************************************************
* GetSystemClock() returns system clock frequency.
*
* GetPeripheralClock() returns peripheral clock frequency.
*
* GetInstructionClock() returns instruction clock frequency.
*
********************************************************************/
#include "GraphicsConfig.h"

#if defined(__PIC24F__)	|| defined(__PIC24H__)
    // PIC24 processor
#define	GetSystemClock()            (32000000ul)         // 8 MHz x 4 PLL 
#define	GetPeripheralClock()		(GetSystemClock()/2)
#define	GetInstructionClock()		(GetSystemClock()/2)

#elif defined(__PIC32MX__)
	// PIC32MX processor
#define	GetSystemClock()            (72000000ul)         // 8 MHz/2 x 18 PLL
#define	GetPeripheralClock()		GetSystemClock()//(GetSystemClock()/(1<<OSCCONbits.PBDIV))
#define	GetInstructionClock()		(GetSystemClock()/PFMWSbits.CHECON)
#endif

/*********************************************************************
* FOR THE INTERFACE TYPE
*********************************************************************/
// Select your interface type
// This library currently only supports a single physical interface layer

//#define USE_SD_INTERFACE_WITH_SPI       // SD-SPI.c and .h
//#define USE_CF_INTERFACE_WITH_PMP       // CF-PMP.c and .h
//#define USE_MANUAL_CF_INTERFACE         // CF-Bit transaction.c and .h
#define USE_USB_INTERFACE               // USB host MSD library


/*********************************************************************
* FOR THE SD SPI Selection USE ONLY ONE OF THE TWO
*********************************************************************/
#ifdef USE_SD_INTERFACE_WITH_SPI
	#define USESDCARDPICTAILSPI1			// Use SPI1 on SD PICtail Plus
	//#define USESDCARDPICTAILSPI2			// Use SPI2 on SD PICtail Plus
#endif	
	
/*********************************************************************
 *********************************************************************
 * IOS FOR THE DISPLAY CONTROLLER
 ********************************************************************* 
*********************************************************************/
#if (GRAPHICS_PICTAIL_VERSION == 1)

	#error THIS DEMO WILL NOT RUN ON Graphics PICtail 1

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
 ********************************************************************* 
*********************************************************************/
#if ((GRAPHICS_PICTAIL_VERSION == 2) || (GRAPHICS_PICTAIL_VERSION == 250))

#if defined (__C30__)
    #if defined( __PIC24FJ256GB110__ )
        // This PIM has RD12 rerouted to RA15
        #define EEPROM_CS_TRIS       TRISGbits.TRISG0
        #define EEPROM_CS_PORT       PORTGbits.RG0
    #else
        #define EEPROM_CS_TRIS       TRISDbits.TRISD12
        #define EEPROM_CS_PORT       PORTDbits.RD12
    #endif
#elif defined( __PIC32MX__ )
    #define EEPROM_CS_TRIS       TRISDbits.TRISD12
    #define EEPROM_CS_PORT       PORTDbits.RD12
#endif
#define EEPROM_SCK_TRIS      TRISGbits.TRISG6
#define EEPROM_SDO_TRIS      TRISGbits.TRISG8
#define EEPROM_SDI_TRIS      TRISGbits.TRISG7

#else

#define SST25_CS_LAT        LATDbits.LATD1
#define SST25_CS_TRIS       TRISDbits.TRISD1
#define SST25_CS_PORT       PORTDbits.RD1
//#define SST25_CS_TRIS       TRISDbits.TRISD11
//#define SST25_CS_PORT       PORTDbits.RD11

#define SST25_SCK_TRIS      TRISGbits.TRISG6
#define SST25_SDO_TRIS      TRISGbits.TRISG8
#define SST25_SDI_TRIS      TRISGbits.TRISG7

#endif


/*********************************************************************
 *********************************************************************
 * IOS FOR THE TOUCH SCREEN
 ********************************************************************* 
*********************************************************************/

// ADC channel constants
#ifdef __PIC32MX__
    #define ADC_TEMP        ADC_CH0_POS_SAMPLEA_AN4
    #define ADC_POT         ADC_CH0_POS_SAMPLEA_AN5
#else
    #define ADC_TEMP        4
    #define ADC_POT         5
#endif

#if (GRAPHICS_PICTAIL_VERSION == 1)

    #ifdef __PIC32MX__
        #define ADC_XPOS        ADC_CH0_POS_SAMPLEA_AN13
        #define ADC_YPOS        ADC_CH0_POS_SAMPLEA_AN12
    #else
        #define ADC_XPOS        13
        #define ADC_YPOS        12
    #endif
    
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

#elif (GRAPHICS_PICTAIL_VERSION == 250)

    #ifdef __PIC32MX__
        #define ADC_XPOS        ADC_CH0_POS_SAMPLEA_AN11
        #define ADC_YPOS        ADC_CH0_POS_SAMPLEA_AN10
    #else
        #define ADC_XPOS        11
        #define ADC_YPOS        10
    #endif
    
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

    #ifdef __PIC32MX__
        #define ADC_XPOS        ADC_CH0_POS_SAMPLEA_AN11
        #define ADC_YPOS        ADC_CH0_POS_SAMPLEA_AN10
    #else
        #define ADC_XPOS        11
        #define ADC_YPOS        10
    #endif
    
    // Y port definitions
    #define ADPCFG_XPOS     AD1PCFGbits.PCFG11
    #define LAT_XPOS        LATBbits.LATB11
    #define TRIS_XPOS       TRISBbits.TRISB11

    #if defined(__32MX460F512L__) || defined(__32MX795F512L__)
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
 * IOS FOR THE GFX ONBOARD FLASH MEMORY
 ********************************************************************* 
*********************************************************************/
#if (GRAPHICS_PICTAIL_VERSION == 1)

	#error THIS DEMO WILL NOT RUN ON GFX1. FLASH DEVICE ON GFX1 CANNOT BE USED. 

#elif (GRAPHICS_PICTAIL_VERSION == 250)

	#if defined (__C30__)
    	#if defined( __PIC24FJ256GB110__ )
    		#define SST39_CS_TRIS    TRISDbits.TRISD1
			#define SST39_CS_LAT     PORTDbits.RD1
			//#define SST39_CS_TRIS    TRISDbits.TRISD11
			//#define SST39_CS_LAT     PORTDbits.RD11
			#define SST39_A18_TRIS   TRISCbits.TRISC2
			#define SST39_A18_LAT    LATCbits.LATC2
	
			#define SST39_A17_TRIS   TRISAbits.TRISA10
			#define SST39_A17_LAT    LATAbits.LATA10
			#define SST39_A16_TRIS   TRISAbits.TRISA9
			#define SST39_A16_LAT    LATAbits.LATA9
			
		#endif //	#if defined( __PIC24FJ256GB110__ )
	#endif	// 	#if defined (__C30__)

#elif (GRAPHICS_PICTAIL_VERSION == 3)

	#define SST25_CS_LAT        LATDbits.LATD1
	#define SST25_CS_TRIS       TRISDbits.TRISD1
	#define SST25_CS_PORT       PORTDbits.RD1
	#define SST25_SCK_TRIS      TRISGbits.TRISG6
	#define SST25_SDO_TRIS      TRISGbits.TRISG8
	#define SST25_SDI_TRIS      TRISGbits.TRISG7

#endif // GRAPHICS_PICTAIL_VERSION

/*********************************************************************
 *********************************************************************
 * IOS FOR THE SD Card INTERFACE
 ********************************************************************* 
*********************************************************************/
/* SD Card definitions: Change these to fit your application when using
   an SD-card-based physical layer                                   */

//#ifdef USE_SD_INTERFACE_WITH_SPI

    #if defined __PIC24F__

	// PIC24FJ256GB110
	// Use SPI1 (USE this when SD/MMC PICtail is used with USB PICtail)
#if defined(USESDCARDPICTAILSPI1)

        // Description: SD-SPI Chip Select Output bit
        #define SD_CS               PORTBbits.RB1
        // Description: SD-SPI Chip Select TRIS bit
        #define SD_CS_TRIS          TRISBbits.TRISB1
        
        // Description: SD-SPI Card Detect Input bit
        #define SD_CD               PORTFbits.RF0
        // Description: SD-SPI Card Detect TRIS bit
        #define SD_CD_TRIS          TRISFbits.TRISF0
        
        // Description: SD-SPI Write Protect Check Input bit
        #define SD_WE               PORTFbits.RF1
        // Description: SD-SPI Write Protect Check TRIS bit
        #define SD_WE_TRIS          TRISFbits.TRISF1

      // Registers for the SPI module you want to use

        // Description: The main SPI control register
        #define SPICON1             SPI1CON1
        // Description: The SPI status register
        #define SPISTAT             SPI1STAT
        // Description: The SPI Buffer
        #define SPIBUF              SPI1BUF
        // Description: The receive buffer full bit in the SPI status register
        #define SPISTAT_RBF         SPI1STATbits.SPIRBF
        // Description: The bitwise define for the SPI control register (i.e. _____bits)
        #define SPICON1bits         SPI1CON1bits
        // Description: The bitwise define for the SPI status register (i.e. _____bits)
        #define SPISTATbits         SPI1STATbits
        // Description: The enable bit for the SPI module
        #define SPIENABLE           SPISTATbits.SPIEN

        // Tris pins for SCK/SDI/SDO lines

        // for (PIC24FJ256GB110 SPI 1)
        // Description: The TRIS bit for the SCK pin 
        #define SPICLOCK            TRISBbits.TRISB0
        // Description: The TRIS bit for the SDI pin
        #define SPIIN               TRISDbits.TRISD2
        // Description: The TRIS bit for the SDO pin
        #define SPIOUT              TRISFbits.TRISF8

#else
	// PIC24FJ256GB110
	// Use SPI2

        // Description: SD-SPI Chip Select Output bit
        #define SD_CS               PORTBbits.RB9
        // Description: SD-SPI Chip Select TRIS bit
        #define SD_CS_TRIS          TRISBbits.TRISB9
        
        // Description: SD-SPI Card Detect Input bit
        #define SD_CD               PORTGbits.RG2
        // Description: SD-SPI Card Detect TRIS bit
        #define SD_CD_TRIS          TRISGbits.TRISG2
        
        // Description: SD-SPI Write Protect Check Input bit
        #define SD_WE               PORTGbits.RG3
        // Description: SD-SPI Write Protect Check TRIS bit
        #define SD_WE_TRIS          TRISGbits.TRISG3

        // Registers for the SPI module you want to use

        // Description: The main SPI control register
        #define SPICON1             SPI2CON1
        // Description: The SPI status register
        #define SPISTAT             SPI2STAT
        // Description: The SPI Buffer
        #define SPIBUF              SPI2BUF
        // Description: The receive buffer full bit in the SPI status register
        #define SPISTAT_RBF         SPI2STATbits.SPIRBF
        // Description: The bitwise define for the SPI control register (i.e. _____bits)
        #define SPICON1bits         SPI2CON1bits
        // Description: The bitwise define for the SPI status register (i.e. _____bits)
        #define SPISTATbits         SPI2STATbits
        // Description: The enable bit for the SPI module
        #define SPIENABLE           SPISTATbits.SPIEN

        // Tris pins for SCK/SDI/SDO lines

        
        // Description: The TRIS bit for the SCK pin 
        #define SPICLOCK            TRISGbits.TRISG6
        // Description: The TRIS bit for the SDI pin
        #define SPIIN               TRISGbits.TRISG7
        // Description: The TRIS bit for the SDO pin
        #define SPIOUT              TRISGbits.TRISG8

#endif

		
//		//for (PIC24FJ256GB106)
//        // Description: The TRIS bit for the SCK pin 
//        #define SPICLOCK            TRISFbits.TRISF6
//        // Description: The TRIS bit for the SDI pin
//        #define SPIIN               TRISFbits.TRISF7
//        // Description: The TRIS bit for the SDO pin
//        #define SPIOUT              TRISFbits.TRISF8

        // Will generate an error if the clock speed is too low to interface to the card
        #if (GetSystemClock() < 100000)
            #error Clock speed must exceed 100 kHz
        #endif    

    #elif defined (__PIC32MX__)

        // Description: SD-SPI Chip Select Output bit
        #define SD_CS               PORTBbits.RB1
        // Description: SD-SPI Chip Select TRIS bit
        #define SD_CS_TRIS          TRISBbits.TRISB1
        
        // Description: SD-SPI Card Detect Input bit
        #define SD_CD               PORTFbits.RF0
        // Description: SD-SPI Card Detect TRIS bit
        #define SD_CD_TRIS          TRISFbits.TRISF0

        // Description: SD-SPI Write Protect Check Input bit
        #define SD_WE               PORTFbits.RF1
        // Description: SD-SPI Write Protect Check TRIS bit
        #define SD_WE_TRIS          TRISFbits.TRISF1
        
        // Registers for the SPI module you want to use

        // Description: The main SPI control register
        #define SPICON1             SPI1CON
        // Description: The SPI status register
        #define SPISTAT             SPI1STAT
        // Description: The SPI Buffer
        #define SPIBUF              SPI1BUF
        // Description: The receive buffer full bit in the SPI status register
        #define SPISTAT_RBF         SPI1STATbits.SPIRBF
        // Description: The bitwise define for the SPI control register (i.e. _____bits)
        #define SPICON1bits         SPI1CONbits
        // Description: The bitwise define for the SPI status register (i.e. _____bits)
        #define SPISTATbits         SPI1STATbits
        // Description: The enable bit for the SPI module
        #define SPIENABLE           SPICON1bits.ON
        // Description: The definition for the SPI baud rate generator register (PIC32)
        #define SPIBRG			    SPI1BRG

        // Tris pins for SCK/SDI/SDO lines

        // Description: The TRIS bit for the SCK pin
        #define SPICLOCK            TRISFbits.TRISF6
        // Description: The TRIS bit for the SDI pin
        #define SPIIN               TRISFbits.TRISF7
        // Description: The TRIS bit for the SDO pin
        #define SPIOUT              TRISFbits.TRISF8

        // Will generate an error if the clock speed is too low to interface to the card
        #if (GetSystemClock() < 100000)
            #error Clock speed must exceed 100 kHz
        #endif    
    
    #endif

//#endif


// Define the baud rate constants
#if defined(__C30__)
    #define BAUDRATE2       57600UL
    #define BRG_DIV2        4
    #define BRGH2           1
#elif defined (__PIC32MX__)
    #define BAUDRATE2       115200ul    //57600UL
    #define BRG_DIV2        4 
    #define BRGH2           1 
#endif


#if defined(__PIC24FJ256GB110__) || defined(__PIC32MX__)
    #define Switch3() PORTDbits.RD6
#elif defined(__PIC24FJ64GB004__)
    #define Switch3() PORTAbits.RA10
#endif

#endif // __HARDWARE_PROFILE_H
