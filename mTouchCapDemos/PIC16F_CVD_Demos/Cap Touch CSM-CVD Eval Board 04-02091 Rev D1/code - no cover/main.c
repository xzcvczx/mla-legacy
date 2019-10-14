/*************************************************************************
 *  © 2011 Microchip Technology Inc.                                       
 *  
 *  Project Name:    mTouch CVD Framework v1.1
 *  FileName:        main.c
 *  Dependencies:    mTouchCVD.h
 *  Processor:       
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
 
/** @file main.c
* @brief An example implementation of the mTouch CVD Framework's API calls
*/
/// @cond

#include "mTouchCVD.h"              // Required Include

// CONFIGURATION SETTINGS
#include "generic_processorConfigBits.h"        // Provided for ease-of-development. 
                                                // Should not be used in an actual 
                                                // application.

    // TIP: Valid configuration bit labels can be found in Hi-Tech's folder.
    //      C:\Program Files\HI-TECH Software\<COMPILER NAME>\<VERSION NUMBER>\include
    //      Open the 'pic' header file that corresponds to your microcontroller.
    //      Ex: 'pic16f1937.h'  --  NOT 'as16f1937.h' or 'cas16f1937.h'

// PROTOTYPES
void Example_System_Init(void);

void main(void)
{

    Example_System_Init();          // Your System Initialization Function

    mTouchCVD_Init();               // mTouch Initialization

    //----------------------------
    // Example mTouch API Usage
    //----------------------------
    while(1)
    {
        if (mTouchCVD_isDataReady())    // Is new information ready?
        {
            mTouchCVD_Service();        // Decode the newly captured data and transmit new data updates.
        }

        //----------------------------
        // Example LED Handling Code
        //----------------------------
        // The mTouch framework does not have an automated, board-level output system yet. 
        // All system responses to sensor state changes must be programmed by you.
        
        #define LED0 LATC0
        #define LED1 LATA6
        #define LED2 LATA7
        #define LED3 LATE2
        #define LED4 LATE1
        #define LED5 LATE0
        #define LED6 LATA3

        #define LED_ON  0
        #define LED_OFF 1

        if (CVD_GetButtonState(0) < CVD_PRESSED) { LED0 = LED_OFF; } else { LED0 = LED_ON; } // Sensor0
        if (CVD_GetButtonState(1) < CVD_PRESSED) { LED1 = LED_OFF; } else { LED1 = LED_ON; } // Sensor1
        if (CVD_GetButtonState(2) < CVD_PRESSED) { LED2 = LED_OFF; } else { LED2 = LED_ON; } // Sensor2
        if (CVD_GetButtonState(3) < CVD_PRESSED) { LED3 = LED_OFF; } else { LED3 = LED_ON; } // Sensor3
        if (CVD_GetButtonState(4) < CVD_PRESSED) { LED4 = LED_OFF; } else { LED4 = LED_ON; } // Sensor4
        if (CVD_GetButtonState(5) < CVD_PRESSED) { LED5 = LED_OFF; } else { LED5 = LED_ON; } // Sensor5
        if (CVD_GetButtonState(6) < CVD_PRESSED) { LED6 = LED_OFF; } else { LED6 = LED_ON; } // Sensor6
    }
}

void Example_System_Init() 
{
    // SYSTEM INITIALIZATION
    //
    // The mTouch framework controls these modules:
    // *  TMR0  - YOU MUST INIT THE OPTION REGISTER / TMR0 PRESCALER
    //            Do not choose 1:1 prescaling.
    //
    // *  ADC   - automatic initialization
    // *  UART  - automatic initialization (if enabled and available)
    //
    // mTouch performs better as Fosc increases.    
    OSCCON      = 0b01110000;       // 32 MHz Fosc w/ PLLEN_ON (config)  (UPDATE CONFIG FILE IF CHANGED)
	OPTION_REG  = 0b10000000;       // Set TMR0 Prescaler (NOT 1:1)      (UPDATE CONFIG FILE IF CHANGED)
    
    // PORT INITIALIZATION
    //
    // mTouch sensor pins should be set as digital, output low.
#if   defined(_16F1937)
    ANSELA      = 0b00000000;       
    ANSELB      = 0b00000000;       
    ANSELD      = 0b00000000;
    ANSELE      = 0b00000000;
    TRISA       = 0b00000000;
    TRISB       = 0b00000000;
    TRISC       = 0b00000000;
    TRISD       = 0b00000000;
    TRISE       = 0b00000000;
    PORTA       = 0b11001110;    
    PORTB       = 0b00000000;    
    PORTC       = 0b10100111;    
    PORTD       = 0b00000000;    
    PORTE       = 0b00000111; 
#endif
}

/// @endcond