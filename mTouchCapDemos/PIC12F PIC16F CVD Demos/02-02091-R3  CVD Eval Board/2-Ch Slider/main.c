/*************************************************************************
 *  � 2012 Microchip Technology Inc.                                       
 *  
 *  Project Name:    mTouch Framework v2.0
 *  FileName:        main.c
 *  Dependencies:    mTouch.h
 *  Processor:       See documentation for supported PIC� microcontrollers 
 *  Compiler:        HI-TECH Ver. 9.81 or later
 *  IDE:             MPLAB� IDE v8.50 (or later) or MPLAB� X                        
 *  Hardware:         
 *  Company:         
 * ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 *  Description:     Main routine
 *                   - Example implementation of the framework's API calls
 *                   - All application code should be implemented in this
 *                     or some other user-created file. This will allow
 *                     for better customer support and easier upgrades to
 *                     later firmware versions.
 *                   - See the documentation located in the docs/ folder
 *                     for a detailed guide on getting started with your
 *                     application and the mTouch framework.
 *************************************************************************/
/*************************************************************************
 * MICROCHIP SOFTWARE NOTICE AND DISCLAIMER: You may use this software, and
 * any derivatives created by any person or entity by or on your behalf,
 * exclusively with Microchip's products in accordance with applicable
 * software license terms and conditions, a copy of which is provided for
 * your referencein accompanying documentation. Microchip and its licensors
 * retain all ownership and intellectual property rights in the
 * accompanying software and in all derivatives hereto.
 *
 * This software and any accompanying information is for suggestion only.
 * It does not modify Microchip's standard warranty for its products. You
 * agree that you are solely responsible for testing the software and
 * determining its suitability. Microchip has no obligation to modify,
 * test, certify, or support the software.
 *
 * THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
 * EXPRESS, IMPLIED OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED
 * WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
 * PARTICULAR PURPOSE APPLY TO THIS SOFTWARE, ITS INTERACTION WITH
 * MICROCHIP'S PRODUCTS, COMBINATION WITH ANY OTHER PRODUCTS, OR USE IN ANY
 * APPLICATION.
 *
 * IN NO EVENT, WILL MICROCHIP BE LIABLE, WHETHER IN CONTRACT, WARRANTY,
 * TORT (INCLUDING NEGLIGENCE OR BREACH OF STATUTORY DUTY), STRICT
 * LIABILITY, INDEMNITY, CONTRIBUTION, OR OTHERWISE, FOR ANY INDIRECT,
 * SPECIAL, PUNITIVE, EXEMPLARY, INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE,
 * FOR COST OR EXPENSE OF ANY KIND WHATSOEVER RELATED TO THE SOFTWARE,
 * HOWSOEVER CAUSED, EVEN IF MICROCHIP HAS BEEN ADVISED OF THE POSSIBILITY
 * OR THE DAMAGES ARE FORESEEABLE. TO THE FULLEST EXTENT ALLOWABLE BY LAW,
 * MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN ANY WAY RELATED TO THIS
 * SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY, THAT YOU HAVE PAID
 * DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
 *
 * MICROCHIP PROVIDES THIS SOFTWARE CONDITIONALLY UPON YOUR ACCEPTANCE OF
 * THESE TERMS.
 *************************************************************************/
/** @file   main.c
*   @brief  Example implementation of the mTouch Framework's API calls
*/
/// @cond

#include "mTouch.h"                            // Required Include

// CONFIGURATION SETTINGS
#include "generic_processorConfigBits.h"        // Provided for ease-of-development. 
                                                // Should not be used in an actual 
                                                // application.

    // TIP: Valid configuration bit labels can be found in Hi-Tech's folder.
    //      C:\Program Files\HI-TECH Software\<COMPILER NAME>\<VERSION NUMBER>\include
    //      Open the 'pic' header file that corresponds to your microcontroller.
    //      Ex: 'pic16f1937.h'  --  NOT 'as16f1937.h' or 'cas16f1937.h'
    
    
// PROTOTYPES
    void            Example_System_Init (void);
    void interrupt  ISR                 (void);

// START PROGRAM
void main(void)
{
    Example_System_Init();          // Your System Initialization Function

    //================================================================================================
    //  ____                  _              _           _____                _          _    ____ ___ 
    // |  _ \ ___  __ _ _   _(_)_ __ ___  __| |  _ __ __|_   _|__  _   _  ___| |__      / \  |  _ \_ _|
    // | |_) / _ \/ _` | | | | | '__/ _ \/ _` | | '_ ` _ \| |/ _ \| | | |/ __| '_ \    / _ \ | |_) | | 
    // |  _ <  __/ (_| | |_| | | | |  __/ (_| | | | | | | | | (_) | |_| | (__| | | |  / ___ \|  __/| | 
    // |_| \_\___|\__, |\__,_|_|_|  \___|\__,_| |_| |_| |_|_|\___/ \__,_|\___|_| |_| /_/   \_\_|  |___|
    //               |_|                    
    //================================================================================================                                                           
    
    mTouch_Init();                  // mTouch Initialization (Required)
    mComm_Init();                   // mComm Initialization  (Required for communications)
      
    INTCONbits.GIE = 1;             // Initialization complete. Begin servicing interrupts.
    
    while(1)
    {    
    
        if (mTouch_isDataReady())   // Is new information ready?
        {
            mTouch_Service();       // Decode the newly captured data and transmit new data updates.

    //------------------------------------------------------------------------------------------------
    //                              REQUIRED MTOUCH API ENDS HERE
    //
    // NOTE: The below API examples show some possible ways to integrate your application with
    //       the mTouch framework. These are not required, but may be helpful.
    //------------------------------------------------------------------------------------------------
            
            // The mTouch framework does not have an automated, board-level output system. 
            // All system responses to sensor state changes must be programmed by you, as shown below.

            #define LED_ON  0
            #define LED_OFF 1
            
            #define LED0  LATC2
            #define LED1  LATC1
            #define LED2  LATC0
            #define LED3  LATA7
            #define LED4  LATA6
            #define LED5  LATA4
            #define LED6  LATD7
            #define LED7  LATD6
            #define LED8  LATD5
            #define LED9  LATD4
            #define LED10 LATD3
            #define LED11 LATD2
            #define LED12 LATD1
            #define LED13 LATD0
            
            //  ____  _ _     _                _    ____ ___ 
            // / ___|| (_) __| | ___ _ __     / \  |  _ \_ _|
            // \___ \| | |/ _` |/ _ \ '__|   / _ \ | |_) | | 
            //  ___) | | | (_| |  __/ |     / ___ \|  __/| | 
            // |____/|_|_|\__,_|\___|_|    /_/   \_\_|  |___|
             
            // Example slider output code
            #if defined(MTOUCH_SLIDER_SCALING_ENABLED)
                
                // Scaling Enabled: mTouch_GetSlider(i) returns a value between 0 and 255.
                
                    if (mTouch_GetSlider(0) >=  17) { LED0  = LED_ON; } else { LED0  = LED_OFF; }
                    if (mTouch_GetSlider(0) >=  34) { LED1  = LED_ON; } else { LED1  = LED_OFF; }
                    if (mTouch_GetSlider(0) >=  51) { LED2  = LED_ON; } else { LED2  = LED_OFF; }
                    if (mTouch_GetSlider(0) >=  68) { LED3  = LED_ON; } else { LED3  = LED_OFF; }
                    if (mTouch_GetSlider(0) >=  85) { LED4  = LED_ON; } else { LED4  = LED_OFF; }
                    if (mTouch_GetSlider(0) >= 102) { LED5  = LED_ON; } else { LED5  = LED_OFF; }
                    if (mTouch_GetSlider(0) >= 119) { LED6  = LED_ON; } else { LED6  = LED_OFF; }
                    if (mTouch_GetSlider(0) >= 136) { LED7  = LED_ON; } else { LED7  = LED_OFF; }
                    if (mTouch_GetSlider(0) >= 153) { LED8  = LED_ON; } else { LED8  = LED_OFF; }
                    if (mTouch_GetSlider(0) >= 170) { LED9  = LED_ON; } else { LED9  = LED_OFF; }
                    if (mTouch_GetSlider(0) >= 187) { LED10 = LED_ON; } else { LED10 = LED_OFF; }
                    if (mTouch_GetSlider(0) >= 204) { LED11 = LED_ON; } else { LED11 = LED_OFF; }     
                    if (mTouch_GetSlider(0) >= 221) { LED12 = LED_ON; } else { LED12 = LED_OFF; }     
                    if (mTouch_GetSlider(0) >= 238) { LED13 = LED_ON; } else { LED13 = LED_OFF; }
                
            #else
            
                // Scaling Disabled: mTouch_GetSlider(0) returns a value between 0 and MTOUCH_SLIDER0_MAX_VALUE.
                
                    #define MTOUCH_SLIDER0_MAX_VALUE     ((MTOUCH_NUMBER_SLIDER0_SENSORS - 1) * 256)
                    if (mTouch_GetSlider(0) >= (uint16_t)(  1/15 * MTOUCH_SLIDER0_MAX_VALUE)) { LED0  = LED_ON; } else { LED0  = LED_OFF; }
                    if (mTouch_GetSlider(0) >= (uint16_t)(  2/15 * MTOUCH_SLIDER0_MAX_VALUE)) { LED1  = LED_ON; } else { LED1  = LED_OFF; }
                    if (mTouch_GetSlider(0) >= (uint16_t)(  3/15 * MTOUCH_SLIDER0_MAX_VALUE)) { LED2  = LED_ON; } else { LED2  = LED_OFF; }
                    if (mTouch_GetSlider(0) >= (uint16_t)(  4/15 * MTOUCH_SLIDER0_MAX_VALUE)) { LED3  = LED_ON; } else { LED3  = LED_OFF; }
                    if (mTouch_GetSlider(0) >= (uint16_t)(  5/15 * MTOUCH_SLIDER0_MAX_VALUE)) { LED4  = LED_ON; } else { LED4  = LED_OFF; }
                    if (mTouch_GetSlider(0) >= (uint16_t)(  6/15 * MTOUCH_SLIDER0_MAX_VALUE)) { LED5  = LED_ON; } else { LED5  = LED_OFF; }
                    if (mTouch_GetSlider(0) >= (uint16_t)(  7/15 * MTOUCH_SLIDER0_MAX_VALUE)) { LED6  = LED_ON; } else { LED6  = LED_OFF; }
                    if (mTouch_GetSlider(0) >= (uint16_t)(  8/15 * MTOUCH_SLIDER0_MAX_VALUE)) { LED7  = LED_ON; } else { LED7  = LED_OFF; }
                    if (mTouch_GetSlider(0) >= (uint16_t)(  9/15 * MTOUCH_SLIDER0_MAX_VALUE)) { LED8  = LED_ON; } else { LED8  = LED_OFF; }
                    if (mTouch_GetSlider(0) >= (uint16_t)( 10/15 * MTOUCH_SLIDER0_MAX_VALUE)) { LED9  = LED_ON; } else { LED9  = LED_OFF; }
                    if (mTouch_GetSlider(0) >= (uint16_t)( 11/15 * MTOUCH_SLIDER0_MAX_VALUE)) { LED10 = LED_ON; } else { LED10 = LED_OFF; }
                    if (mTouch_GetSlider(0) >= (uint16_t)( 12/15 * MTOUCH_SLIDER0_MAX_VALUE)) { LED11 = LED_ON; } else { LED11 = LED_OFF; }   
                    if (mTouch_GetSlider(0) >= (uint16_t)( 13/15 * MTOUCH_SLIDER0_MAX_VALUE)) { LED12 = LED_ON; } else { LED12 = LED_OFF; }   
                    if (mTouch_GetSlider(0) >= (uint16_t)( 14/15 * MTOUCH_SLIDER0_MAX_VALUE)) { LED13 = LED_ON; } else { LED13 = LED_OFF; }
                    // NOTE: This is an example of a slider using 8 LEDs to display its current value.
                    //       By defining it like this, the number of sensors in slider 0 can be adjusted 
                    //       without changing how the slider's output is displayed.
            #endif
            
            
        } // end - mTouch_isDataReady() check
    } // end - while(1) main loop
} // end - main() function


//================================================================================================
//  _____                           _        ____            _                   ___       _ _   
// | ____|_  ____ _ _ __ ___  _ __ | | ___  / ___| _   _ ___| |_ ___ _ __ ___   |_ _|_ __ (_) |_ 
// |  _| \ \/ / _` | '_ ` _ \| '_ \| |/ _ \ \___ \| | | / __| __/ _ \ '_ ` _ \   | || '_ \| | __|
// | |___ >  < (_| | | | | | | |_) | |  __/  ___) | |_| \__ \ ||  __/ | | | | |  | || | | | | |_ 
// |_____/_/\_\__,_|_| |_| |_| .__/|_|\___| |____/ \__, |___/\__\___|_| |_| |_| |___|_| |_|_|\__|
//                           |_|                   |___/                          
//================================================================================================               

void Example_System_Init() 
{
    // The mTouch framework controls these modules:
    // *  TMR0  - YOU MUST INIT THE OPTION REGISTER / TMR0 PRESCALER
    //            Do not choose 1:1 prescaling.
    //
    // *  ADC   - automatic initialization
    // *  UART  - automatic initialization (if enabled and available)
    //
    // mTouch performs better as Fosc increases.    
    
    // NOTE: Update the configuration file if Fosc is changed!
    OSCCON  = 0b01110000;       // 32 MHz Fosc w/ PLLEN_ON (config bit)  
    
    
    // EXAMPLE PORT INITIALIZATION
    //
    // mTouch sensor pins should be initialized as digital, output low.
    ANSELA  = 0b00000000;
    ANSELB  = 0b00000000;
    ANSELD  = 0b00000000;
    ANSELE  = 0b00000000;
    LATA    = 0b11010000;
    LATB    = 0b00000000;
    LATC    = 0b00000111;
    LATD    = 0b11111111;
    LATE    = 0b00000000;
    TRISA   = 0b00000000;
    TRISB   = 0b00000000;
    TRISC   = 0b10000000;   // RX set to input
    TRISD   = 0b00000000;
    TRISE   = 0b00000000;
    
    // EXAMPLE TIMER INITIALIZATION 
    //
    // Only an 8-bit timer may be used as the mTouch framework timer. 
    // TMR1/3/5 are not currently able to be used for this purpose.
    OPTION_REG  = 0b10000000;   // TMR0 Prescaler  = 1:2
}


//================================================================================================
//  _____                           _        ___ ____  ____  
// | ____|_  ____ _ _ __ ___  _ __ | | ___  |_ _/ ___||  _ \ 
// |  _| \ \/ / _` | '_ ` _ \| '_ \| |/ _ \  | |\___ \| |_) |
// | |___ >  < (_| | | | | | | |_) | |  __/  | | ___) |  _ < 
// |_____/_/\_\__,_|_| |_| |_| .__/|_|\___| |___|____/|_| \_\
//                           |_|                                                                                     
//================================================================================================

void interrupt ISR(void)
{
    // EXAMPLE INTERRUPT SERVICE ROUTINE

    SAVE_STATE();                       // mTouch Framework-supplied general ISR save state macro. 
                                        // Not required, but convenient. 

        if (MCOMM_UART_RCIE && MCOMM_UART_RCIF)     // Check UART for new data
        {
            mComm_Receive();            // Two-way Communication Receive Service Function
        }
        
        if (mTouch_checkInterrupt())    // Checks if the TMRxIE and TMRxIF flags are both equal to 1.
        {
            mTouch_Scan();              // Required if running as ISR slave. The mTouch timer interrupt 
                                        // flag is cleared inside the mTouch_Scan() function.
        }
    
    RESTORE_STATE();                    // mTouch Framework-supplied general ISR restore state macro. 
                                        // Not required, but convienent.
}


