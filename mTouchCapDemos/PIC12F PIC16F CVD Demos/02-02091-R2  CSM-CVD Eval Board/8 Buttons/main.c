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
    
    //uint8_t     matrixOutput[2];
    
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
            
            #define LED0  LATC0
            #define LED1  LATA6
            #define LED2  LATA7
            #define LED3  LATE2
            #define LED4  LATE1
            #define LED5  LATE0
            #define LED6  LATA3
            #define LED7  LATA2
            #define LED8  LATA1
            #define LED9  LATB7     // ICSPDAT
            #define LED10 LATB6     // ICSPCLK
            #define LED11 LATC7     // RX - Don't use.
            #define LED12 LATC6     // TX - Don't use.
            #define LED13 LATC5
            #define LED14 LATC2
            #define LED15 LATC1
            
            if (mTouch_GetButtonState(0) < MTOUCH_PRESSED) { LED0 = LED_OFF; } else { LED0 = LED_ON; }  // Sensor0 - Labeled '8'
            if (mTouch_GetButtonState(1) < MTOUCH_PRESSED) { LED1 = LED_OFF; } else { LED1 = LED_ON; }  // Sensor1 - Labeled '9'
            if (mTouch_GetButtonState(2) < MTOUCH_PRESSED) { LED2 = LED_OFF; } else { LED2 = LED_ON; }  // Sensor2 - Labeled 'A'
            if (mTouch_GetButtonState(3) < MTOUCH_PRESSED) { LED3 = LED_OFF; } else { LED3 = LED_ON; }  // Sensor3 - Labeled 'B'
            if (mTouch_GetButtonState(4) < MTOUCH_PRESSED) { LED4 = LED_OFF; } else { LED4 = LED_ON; }  // Sensor4 - Labeled 'C'
            if (mTouch_GetButtonState(5) < MTOUCH_PRESSED) { LED5 = LED_OFF; } else { LED5 = LED_ON; }  // Sensor5 - Labeled 'D'
                                                                                                        // 'E' is not connected to an analog channel
            if (mTouch_GetButtonState(6) < MTOUCH_PRESSED) { LED6 = LED_OFF; } else { LED6 = LED_ON; }  // Sensor6 - Labeled 'F'
            
            
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
    LATA    = 0b11001110;
    LATB    = 0b11000000;
    LATC    = 0b11100111;
    LATD    = 0b00000000;
    LATE    = 0b00000111;
    TRISA   = 0b00000000;
    TRISB   = 0b00000000;
    TRISC   = 0b00000000;
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



