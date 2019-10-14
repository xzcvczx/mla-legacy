/*************************************************************************
 *  � 2011 Microchip Technology Inc.                                       
 *  
 *  Project Name:    mTouch CVD Framework v1.1
 *  FileName:        main_example.c
 *  Dependencies:    mTouchCVD.h
 *  Processor:       
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
 
/** @file main_example.c
* @brief An example implementation of the mTouch CVD Framework's API calls
*/
/// @cond

#include "includes/mTouchCVD.h"              // Required Include

// CONFIGURATION SETTINGS
#if   defined(_16F193x)
  #ifdef __DEBUG
    __CONFIG(FOSC_INTOSC & WDTE_OFF & PWRTE_OFF & MCLRE_OFF & CP_OFF & CPD_OFF & BOREN_ON & CLKOUTEN_OFF & IESO_OFF & FCMEN_OFF);
    __CONFIG(WRT_OFF & PLLEN_ON & STVREN_OFF & BORV_25 & LVP_OFF);
  #else
    __CONFIG(FOSC_INTOSC & WDTE_OFF & PWRTE_ON & MCLRE_OFF & CP_OFF & CPD_OFF & BOREN_ON & CLKOUTEN_OFF & IESO_OFF & FCMEN_OFF);
    __CONFIG(WRT_OFF & PLLEN_ON & STVREN_OFF & BORV_25 & LVP_OFF);
  #endif
//__CONFIG(FOSC_INTOSC & WDTE_OFF & PWRTE_ON & MCLRE_OFF & CP_OFF & CPD_OFF & BOREN_ON & CLKOUTEN_OFF & IESO_OFF & FCMEN_OFF);
//__CONFIG(WRT_OFF & PLLEN_ON & STVREN_OFF & BORV_25 & LVP_OFF);
#elif defined(_16F1823)
__CONFIG(FOSC_INTOSC & WDTE_OFF & PWRTE_ON & MCLRE_OFF & CP_OFF & CPD_OFF & BOREN_OFF & CLKOUTEN_OFF & IESO_OFF & FCMEN_OFF);
__CONFIG(WRT_OFF & PLLEN_ON & STVREN_OFF & BORV_25 & LVP_OFF);
#elif defined(_16F182x)
__CONFIG(FOSC_INTOSC & WDTE_OFF & PWRTE_ON & MCLRE_OFF & CP_OFF & CPD_OFF & BOREN_ON & CLKOUTEN_OFF & IESO_OFF & FCMEN_OFF);
__CONFIG(WRT_OFF & PLLEN_ON & STVREN_OFF & BORV_25 & LVP_OFF);
#elif defined(_16F152x)
__CONFIG(FOSC_INTOSC & WDTE_OFF & PWRTE_ON & MCLRE_OFF & CP_OFF & BOREN_ON & CLKOUTEN_OFF & IESO_OFF & FCMEN_OFF);
__CONFIG(WRT_OFF & VCAPEN_OFF & STVREN_OFF & BORV_25 & ULPBOR_OFF & LVP_OFF);
#elif defined(_16F194x)
__CONFIG(FOSC_INTOSC & WDTE_OFF & PWRTE_ON & MCLRE_OFF & CP_OFF & CPD_OFF & BOREN_ON & CLKOUTEN_OFF & IESO_OFF & FCMEN_OFF);
__CONFIG(WRT_OFF & VCAPEN_OFF & PLLEN_ON & STVREN_OFF & BORV_25 & LVP_OFF);
#elif defined(_12F617)
__CONFIG(FOSC_INTOSCIO & WDTE_OFF & PWRTE_OFF & MCLRE_ON & CP_OFF & IOSCFS_8MHZ & BOREN_OFF & WRT_OFF);
#elif defined(_12F615) || defined(_12HV615)
__CONFIG(FOSC_INTOSCIO & WDTE_OFF & PWRTE_OFF & MCLRE_OFF & CP_OFF & IOSCFS_8MHZ & BOREN_OFF);
#endif

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
            
            //----------------------------
            // Example LED Handling Code
            //----------------------------
            // The mTouch framework does not have an automated, board-level output system yet. 
            // All system responses to sensor state changes must be programmed by you.
            
            // #define LED0 GP4
            // #define LED1 GP5
    
            // #define LED_ON  1
            // #define LED_OFF 0
    
            // if (CVD_GetButtonState(0) < CVD_PRESSED) { LED0 = LED_OFF; } else { LED0 = LED_ON; } // Sensor0
            // if (CVD_GetButtonState(1) < CVD_PRESSED) { LED1 = LED_OFF; } else { LED1 = LED_ON; } // Sensor1
        }
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
    
    // (The 12F615 and 12F617 do not have an OSCCON register)
    #if !defined(_12F61x)           
    OSCCON      = 0b01110000;       // 32 MHz Fosc w/ PLLEN_ON (config)  (UPDATE CONFIG FILE IF CHANGED)
    #endif
    
	OPTION_REG  = 0b10000000;       // Set TMR0 Prescaler (NOT 1:1)      (UPDATE CONFIG FILE IF CHANGED)
    
    // PORT INITIALIZATION
    //
    // mTouch sensor pins should be set as digital, output low.
#if     defined(_16F1936)
    ANSELA      = 0b00000000;       
    ANSELB      = 0b00000000; 
    TRISA       = 0b00000000;
    TRISB       = 0b00000000;
    TRISC       = 0b00000000;
    TRISE       = 0b00000000;
    PORTA       = 0b00000000;
    PORTB       = 0b00000000;
    PORTC       = 0b00000000;
    PORTE       = 0b00000000;
#elif   defined(_16F1937)
    ANSELA      = 0b00000000;       
    ANSELB      = 0b00000000;       
    ANSELD      = 0b00000000;
    ANSELE      = 0b00000000;
    TRISA       = 0b00000000;
    TRISB       = 0b00000000;
    TRISC       = 0b00000000;
    TRISD       = 0b00000000;
    TRISE       = 0b00000000;
    PORTA       = 0b00000000;
    PORTB       = 0b00000000;
    PORTC       = 0b00000000;
    PORTD       = 0b00000000;
    PORTE       = 0b00000000;
#elif   defined(_12F61x)
    #if defined(CVD_DEBUG_UART_ENABLED)
    GPIO        = 0b00000100;
    TRISIO      = 0b00000000;
    #else
    GPIO        = 0b00000000;
    TRISIO      = 0b00000000;
    #endif
#endif


}

/// @endcond