/*************************************************************************
 *  � 2012 Microchip Technology Inc.                                       
 *  
 *  Project Name:    mTouch Framework v2.3
 *  FileName:        mTouch_config_slider.h
 *  Dependencies:    
 *  Processor:       See documentation for supported PIC� microcontrollers 
 *  Compiler:        HI-TECH Ver. 9.81 or later
 *  IDE:             MPLAB� IDE v8.50 (or later) or MPLAB� X                        
 *  Hardware:         
 *  Company:         
 * ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 *  Description:     mTouch Framework Configuration File
 *                   - See documentation for better explanations of all
 *                     configuration options.
 *************************************************************************/
/***********************************************************************
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
/** @file   mTouch_config_slider.h
*   @brief  Framework Configuration! Slider and Wheel Configuration Options
*/

//****************************************************************************************************
//  ____  _ _     _             ____       _               
// / ___|| (_) __| | ___ _ __  / ___|  ___| |_ _   _ _ __  
// \___ \| | |/ _` |/ _ \ '__| \___ \ / _ \ __| | | | '_ \ 
//  ___) | | | (_| |  __/ |     ___) |  __/ |_| |_| | |_) |
// |____/|_|_|\__,_|\___|_|    |____/ \___|\__|\__,_| .__/ 
//                                                  |_|    
//****************************************************************************************************
    #define MTOUCH_NUMBER_OF_SLIDERS        1   // <-- Number of individual sliders to decode
    
    #define MTOUCH_SLIDER_STEP_SIZE         10  // <-- Maximum change allowed during one slider calculation
    
    #define MTOUCH_SLIDER_SCALING_ENABLED       // <-- Scales the slider's output result to always fall
                                                //     between 0 and 255. If this is turned off, the maximum
                                                //     value will be: 255+256(MTOUCH_NUMBER_SLIDER#_SENSORS-2) 
                                                //     Enabling this increases the number of division 
                                                //     operations in the decoding algorithm by 1.
    
    
    
    
    // mTouch Slider0 Configuration
    //:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
    #define MTOUCH_NUMBER_SLIDER0_SENSORS   2   // <-- Number of sensors that make up slider 0

    #define MTOUCH_SLIDER0_SENSOR0          1   // <-- MTOUCH_SENSOR# of the pin to treat as sensor 0 of slide 0
    #define MTOUCH_SLIDER0_SENSOR1          0   // <-- MTOUCH_SENSOR# of the pin to treat as sensor 1 of slide 0

    //#define MTOUCH_SLIDER0_WHEEL_ENABLE       // <-- If defined, slider 0 will be decoded as a wheel
    
    
    