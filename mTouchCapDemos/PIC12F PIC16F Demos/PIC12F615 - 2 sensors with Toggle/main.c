/*************************************************************************
 *  © 2012 Microchip Technology Inc.                                       
 *  
 *  Project Name:    mTouch Framework v2.1
 *  FileName:        main.c
 *  Dependencies:    mTouch.h
 *  Processor:       See documentation for supported PIC® microcontrollers 
 *  Compiler:        HI-TECH Ver. 9.81 or later
 *  IDE:             MPLAB® IDE v8.50 (or later) or MPLAB® X                        
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

            #define LED_ON  1
            #define LED_OFF 0
            
            #define LED0  GP3
            #define LED1  GP2
            
            if (mTouch_GetToggleState(0) == MTOUCH_TOGGLE_OFF) { LED0 = LED_OFF; } else { LED0 = LED_ON; }
            if (mTouch_GetToggleState(1) == MTOUCH_TOGGLE_OFF) { LED1 = LED_OFF; } else { LED1 = LED_ON; } 
            
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

    // EXAMPLE PORT INITIALIZATION
    //
    // mTouch sensor pins should be initialized as digital, output low.
    ANSEL   = 0b00000000;
    GPIO    = 0b00000000;
    TRISIO  = 0b00000000;
    
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
        
        if (mTouch_checkInterrupt())    // Checks if the TMRxIE and TMRxIF flags are both equal to 1.
        {
            mTouch_Scan();              // Required if running as ISR slave. The mTouch timer interrupt 
                                        // flag is cleared inside the mTouch_Scan() function.
        }
    
    RESTORE_STATE();                    // mTouch Framework-supplied general ISR restore state macro. 
                                        // Not required, but convienent.
}



