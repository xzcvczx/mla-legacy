/*************************************************************************
 *  © 2011 Microchip Technology Inc.                                       
 *  
 *  Project Name:    mTouch CVD Framework v1.00.00
 *  FileName:        mTouchCVD_macroLibrary_PIC16F1.h
 *  Dependencies:    mTouchCVD.h
 *  Processor:       See documentation for supported PIC® microcontrollers 
 *  Compiler:        HI-TECH PRO Ver. 9.80 or later
 *  IDE:             MPLAB® IDE v8.50 (or later) or MPLAB® X                        
 *  Hardware:         
 *  Company:         
 * ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 *  Description:     mTouch CVD Framework Hardware Profile Header File
 *                   - Editting this file will make customer support for
 *                     your application extremely difficult. Be careful,
 *                     as it can also have a negative impact on your
 *                     system's noise susceptibility.
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
/** @file mTouchCVD_macroLibrary_PIC16F1.h
* @brief Defines the macros used to generate the acquisition method
*
* Stores all of the macros that are used in the acquisition file to create the
* mTouch scanning routine. These macros shouldn't be edited in most cases. If
* you do edit them, it could negatively impact the noise robustness of the
* final system.
*/
#ifndef __MTOUCHCVD_MACROLIBRARY_H
#define __MTOUCHCVD_MACROLIBRARY_H

/**
* @def MASKBANK(var,bank)
* @brief Masks the bank out of the variable address for ASM code usage
* @param var the variable address to mask
* @param bank the bank location of the variable
* @hideinitializer
*/
#define MASKBANK(var,bank)        ((var)^((bank)*80h))

/** @name Housekeeping Macros
* These macros perform basic ISR and timer module functions such as checking
* that the interrupt flag is set and reloading the TMR0 counter.
*/
//@{
/**
* @def SAVE_STATE()
* @brief Executes any required actions to save the current main-loop process
* @param[in] None
* @hideinitializer
* @ingroup Acquisition
*/
#define SAVE_STATE()                            \
do {                                            \
} while (0)
// The Enhanced Midrange Core does not require saving/restoring state on entering
// the ISR, so these macros have been left empty. They are implemented in the non-
// enhanced core version of the macroLibrary.

/**
* @def RESTORE_STATE()
* @brief Executes any required actions to save the current main-loop process
* @param[in] None
* @hideinitializer
* @ingroup Acquisition
*/
#define RESTORE_STATE()                         \
do {                                            \
} while (0)
// The Enhanced Midrange Core does not require saving/restoring state on entering
// the ISR, so these macros have been left empty. They are implemented in the non-
// enhanced core version of the macroLibrary.

/**
* @def CHECK_AND_CLEAR_TMR0IF()
* @brief Checks the TMR0IF and determines whether the mTouch ISR is executed
* @param[in] None
* @hideinitializer
* @ingroup Acquisition
*/
#define CHECK_AND_CLEAR_TMR0IF()                                                            \
do {                                                                                        \
    if (TMR0IF == 0)                                                                        \
    {                              /* T0IF is not set so,                               */  \
        asm("ljmp END_ISR");       /* exit the mTouch ISR                               */  \
    } else {                       /* T0IF is set, so                                   */  \
        TMR0IF = 0;                /* clear it and continue with mTouch ISR service     */  \
    }                                                                                       \
} while (0)

/**
* @def JITTER_START_TIME()
* @brief Calculates a random value and uses it to seed TMR0
*
* The implementation is based on the #CVD_JITTER_TYPE configuration option.
*
* If #CVD_JITTER_TYPE == 0, the LSb's of the ADRESL register will be used
* to seed TMR0 with a starting value.
*
* If #CVD_JITTER_TYPE == 1, a linear feedback shift register algorithm
* will be implemented to increase the randomness of the jitter function.
* This implementation costs an extra byte of ram and a slightly longer
* execution time.
* @param[in] None
* @hideinitializer
* @ingroup Acquisition
*/
#if defined(CVD_JITTER_ENABLE)                              // If jittering is enabled
#if (CVD_JITTER_TYPE == 0)                                  // Type 0: Using ADRESL as the random seed value
#define JITTER_START_TIME()                                                                                         \
do {                                                                                                                \
    asm("BANKSEL    _ADRESL");                              /* Make sure we're starting in the correct bank     */  \
    asm("movf   "   ___mkstr(MASKBANK(_ADRESL,1))    ",W"); /* Load ADRESL into the working register            */  \
    asm("andlw      0x3F");                                 /* Mask its value to look at only the 5 LSb's       */  \
    asm("movlb      0");                                    /* Move to Bank 0 to access TMR0 SFR                */  \
    asm("addwf      _TMR0");                                /* Add the masked ADRESL value as an offset to TMR0 */  \
} while (0)
#elif (CVD_JITTER_TYPE == 1)                                // Type 1: Using a linear feedback shift register to generate a random value
#define JITTER_START_TIME()                                                                                                 \
do {                                                                                                                        \
    asm("BANKSEL    _mTouchCVD_jitter");                            /* Make sure we're starting in the correct bank     */  \
    asm("bcf    "   ___mkstr(_STATUS)                        ",0"); /* Clear the carry bit                              */  \
    asm("rrf    "   ___mkstr(_mTouchCVD_jitter) ",W");              /* Right shift the current jitter seed value        */  \
    asm("btfsc  "   ___mkstr(_STATUS)                        ",0"); /* Check the carry bit - if set, perform XOR        */  \
    asm("xorlw      0xB4");                                         /* (cond) XOR the jitter seed with 0xB4             */  \
    asm("movwf  "   ___mkstr(_mTouchCVD_jitter)     );              /* Store the result as the new jitter seed value    */  \
    asm("andlw      0x3F");                                         /* Grab the 5 LSb's from the seed value             */  \
    asm("movlb      0");                                            /* Move to Bank 0 to access TMR0 SFR                */  \
    asm("addwf      _TMR0");                                        /* Add the masked LFSR value as an offset to TMR0   */  \
} while (0)
#endif
#else                                                       // Do not implement the jittering function
#define JITTER_START_TIME()                                                                             \
do {                                                                                                    \
    asm("movlb      0");                                    /* Move to Bank 0 to access TMR0 SFR    */  \
    asm("clrf       _TMR0");                                /* Clear TMR0                           */  \
} while (0)
#endif
/**
* @def WAIT_FOR_GODONE_BIT()
* @brief Implements a while loop waiting on the GO/DONE bit to be cleared.
* @param[in] None
* @hideinitializer
* @ingroup Acquisition
*/
#define WAIT_FOR_GODONE_BIT()                                       \
do {                                                                \
    while (GO_nDONE);                                               \
} while (0)

/**
* @def STORE_LAST_RESULT()
* @brief Stores the ADC result into the last_result variable
*
* This macro is called near the beginning of the mTouch ISR to store
* the previous ADC scan's result. Since this result is from Scan B of the 
* READ_SENSOR_EXPANDED() macro, we subtract the ADRES value from the
* current last_result value which stores the result from Scan A.
* @param[in] None
* @hideinitializer
* @ingroup Acquisition
*/
#define STORE_LAST_RESULT()                                                                                     \
do {                                                                                                            \
    last_result -= (unsigned int)((ADRESH << 8) + ADRESL);   /* last_result = last_result - ADC_Scan_Result */  \
} while (0)

/**
* @def IMPLEMENT_JUMP_TABLE()
* @brief Implements the jump table using the sensor index
* @param[in] None
* @hideinitializer
* @ingroup Acquisition
*/
#if (CVD_NUMBER_SENSORS > 1)
#define IMPLEMENT_JUMP_TABLE()                                                                                          \
do {                                                                                                                    \
    asm("BANKSEL 0");                                               /* Make sure we're in the right bank to start   */  \
    asm("movf   " ___mkstr(MASKBANK(_current_sensor,0)) ",W");      /* Grab the current sensor index value          */  \
    asm("andlw  0x1F"       );                                      /* Mask it to grab only the 4 LSb's             */  \
    asm("brw"               );                                      /* Jump through following table                 */  \
} while (0)
#else
#define IMPLEMENT_JUMP_TABLE()                                      // If only 1 sensor, no jump table is required.
#endif
//@}

/** @name Timing Critical CVD Scanning Routine Macros
* These macros implement the CVD scanning routine and basic acquistion-level
* filtering techniques. Editting these macros could reduce the noise
* immunity of the system.
*/
//@{
/**
* @def READ_SENSOR(indexSensor, indexRef)
* @brief Perform a differential CVD scan on the sensor
*
* This macro is used to abstract the READ_SENSOR_EXPANDED() macro. This allows us to
* use 6 arguments in the actual macro implementation, but only 2 are required in the
* mTouchCVD_Acquisition.c macro call.
*
* This macro will provide the correct ADCON0, Port, and Pin values for the
* READ_SENSOR_EXPANDED() macro based on the given sensor index.
* @param[in] indexSensor the index of the sensor to be scanned
* @param[in] indexRef the index of the sensor to be used as the reference
* @hideinitializer
* @ingroup Acquisition
*/
#define READ_SENSOR(indexSensor, indexRef)  READ_SENSOR_EXPANDED(__paste(CVD_SELECT_SENSOR,indexSensor),__paste(CVD_SELECT_SENSOR,indexRef),__paste(CVD_PORT_SENSOR,indexSensor),__paste(CVD_PIN_SENSOR,indexSensor),__paste(CVD_PORT_SENSOR,indexRef),__paste(CVD_PIN_SENSOR,indexRef))

// Example Dedicated-Reference-Sensor Implementation:
// #define READ_SENSOR(indexSensor, indexRef)  READ_SENSOR_EXPANDED(__paste(CVD_SELECT_SENSOR,indexSensor),CVD_SELECT_REFERENCE,__paste(CVD_PORT_SENSOR,indexSensor),__paste(CVD_PIN_SENSOR,indexSensor),CVD_PORT_REFERENCE,CVD_PIN_REFERENCE)

/**
* @def READ_SENSOR_EXPANDED(indexSensor, indexRef)
* @brief Expanded utility macro called by READ_SENSOR(). Do not use directly.
*
* This is the full implementation routine for the CVD acquisition. The algorithm steps
* will changed based on the processor core being used, but the general steps should
* remain the same:
*
* @section ReadSensorExpanded Reference-Sensor CVD Scanning Algorithm Steps:
* <b>1. Scan A - Sensor High, Reference Low</b>
* @li To begin, ADCON0 is set so that the mux will point to the reference sensor.
* The reference sensor is already output low. 
* @li The reference sensor is then set low (just in case) and the sensor to be scanned
* is set high.
* @li The new ADCON0 value which will point to the scanning sensor is loaded into
* the working register and a short delay is implemented to allow the internal hold
* capacitor enough time to discharge.
* @li The sensor's port is set as an input and ADCON0 is immediately loaded with
* the new mux value.
* @li After a short delay to allow the charges to settle, the Go/Done bit is set to
* begin the ADC conversion. The sensor port is then set back to an output to
* minimize noise.
*
* <b>2. Execute Math while ADC Performs Conversion</b>
* @li The CVD_DECIMATE(), CVD_SENSOR_SMALLER(), and CVD_DECIMATE_END() macros are
* now used to perform calculations based on the previous ISR's results. The result
* of Scan A is also stored into the last_result variable to later have Scan B's 
* result subtracted from it.
*
* <b>3. Scan B - Sensor Low, Reference High</b><br>
* The exact process as Scan A is repeated, but with the voltage levels of the
* sensor and the reference reversed.
* @li ADCON0 mux is set to the reference sensor.
* @li Reference sensor is set to output high, sensor is output low.
* @li After a short delay, sensor is set to an input.
* @li ADCON0 mux is set to the sensor.
* @li After a short settling delay, the Go/Done bit is set.
* @li Sensor is set to an output.
*
* <b>4. The ISR then exits and stores the ADC result at the start of the next ISR.</b>
*
* @section ReadSensorExpanded1Sensor Single-Sensor CVD Scanning Algorithm Steps:
* Since we are now going to be using the same sensor to charge the internal ADC
* capacitor and perform our scan, the steps are going to change slightly. The
* overall, algorithmic process is the same as above, however. First we scan with
* the internal hold capacitor as a high reference, then we perform math on the 
* previous ISR's result, and then we scan in the opposite direction - internal 
* hold capacitor is low, sensor is high.
* @li Sensor is output low to begin
* @li ADCON0 is set to point to the sensor and the Go/Done bit is set. This
* provides a very small window that allows the internal hold capacitor to
* gain some charge from the external sensor. Since the Go/Done bit is set at
* the same time, the internal hold capacitor will be disconnected from the 
* sensor.
* @li The ADCON0 register is then set to point to an isolated, unimplemented
* ADC channel option and the Go/Done bit is cleared. This stops the conversion
* that just begin and isolates the now-charged hold capacitor from the sensor.
* @li The sensor is then set output low to remove all charge.
* @li The sensor is set to an input and ADCON0 is set to point to the sensor.
* @li After some settling time, the ADCON0 register then points to an isolated
* sensor option and begins the conversion.
*
* @param[in] current_channel    the ADCON0 value that points to the sensor to be scanned
* @param[in] ref_channel        the ADCON0 value that points to the sensor to be used as a reference
* @param[in] port               the sensor's port register
* @param[in] pin                the sensor's pin assignment
* @param[in] ref_port           the reference's port register
* @param[in] ref_pin            the reference's pin assignment
* @hideinitializer
* @ingroup Acquisition
*/
#if CVD_NUMBER_SENSORS == 1
#warning Development Build Note: The noise performance of the single-sensor acquisition method has not yet been tested. We will be performing it soon.
#define READ_SENSOR_EXPANDED(current_channel, ref_channel, port, pin, ref_port, ref_pin)                                                            \
do {                                                                        /*                   SINGLE SENSOR SCAN METHOD                      */  \
    asm("movlb    1                      ");                                /* Make sure we start off in the correct bank                       */  \
    asm("movlw "  ___mkstr(current_channel | 0x02)                      );  /* Load the sensor's ADCON0 value and set the GO/DONE bit           */  \
    asm("movwf "  ___mkstr(MASKBANK(_ADCON0,1))                         );  /* Write the value to the ADCON0 register                           */  \
    asm("movlw "  ___mkstr(CVD_SELECT_ISO_NOGO)   );                        /* Load an ADCON0 value that will point to an unimplemented channel */  \
    asm("movwf "  ___mkstr(MASKBANK(_ADCON0,1))                         );  /* Write the value to the ADCON0 register                           */  \
    asm("movlb    2                      ");                                /*                                                                  */  \
    asm("bsf   "  ___mkstr(port)         ","      ___mkstr(pin)         );  /* Set the sensor's LAT bit                                         */  \
    asm("movlb    1                      ");                                /*                                                                  */  \
    asm("movlw "  ___mkstr(current_channel)                             );  /* Load the sensor's ADCON0 value (do not set GO/DONE)              */  \
    asm("bsf   "  ___mkstr(port)         ","      ___mkstr(pin)         );  /* Set the sensor to an input                                       */  \
    asm("movwf "  ___mkstr(MASKBANK(_ADCON0,1))                         );  /* Write the sensor's ADCON0 value to ADCON0                        */  \
    asm("nop");                                                             /*                                                                  */  \
    asm("nop");                                                             /* Delay while capacitance voltages settle                          */  \
    asm("nop");                                                             /*                                                                  */  \
    asm("bsf   "  ___mkstr(MASKBANK(_ADCON0,1))    ", 1"                );  /* Begin the conversion by setting the GO/DONE bit                  */  \
    asm("bcf   "  ___mkstr(port)         ","      ___mkstr(pin)         );  /* Set the sensor to an output                                      */  \
    asm("global   decimate               ");                                /*                                                                  */  \
    asm("call     decimate               ");                                /* Perform math on the previous scan while conversion completes     */  \
    asm("movlb    1                      ");                                /*                                                                  */  \
    asm("movlw "  ___mkstr(current_channel | 0x02)                      );  /* |                                                                */  \
    asm("movwf "  ___mkstr(MASKBANK(_ADCON0,1))                         );  /* | Same commands as                                               */  \
    asm("movlw "  ___mkstr(CVD_SELECT_ISO_NOGO)   );                        /* |                  the scan, above.                              */  \
    asm("movwf "  ___mkstr(MASKBANK(_ADCON0,1))                         );  /* |                                                                */  \
    asm("movlb    2                      ");                                /*                                                                  */  \
    asm("bcf   "  ___mkstr(port)         ","      ___mkstr(pin)         );  /* Clear the sensor's LAT bit                                       */  \
    asm("movlb    1                      ");                                /*                                                                  */  \
    asm("movlw "  ___mkstr(current_channel)                             );  /* |                                                                */  \
    asm("bsf   "  ___mkstr(port)         ","      ___mkstr(pin)         );  /* |                                                                */  \
    asm("movwf "  ___mkstr(MASKBANK(_ADCON0,1))                         );  /* |                                                                */  \
    asm("nop");                                                             /* | Same commands as                                               */  \
    asm("nop");                                                             /* |                  the scan, above.                              */  \
    asm("nop");                                                             /* |                                                                */  \
    asm("bsf   "  ___mkstr(MASKBANK(_ADCON0,1))    ", 1"                );  /* |                                                                */  \
    asm("bcf   "  ___mkstr(port)         ","      ___mkstr(pin)         );  /*                                                                  */  \
} while(0)
#else
#define READ_SENSOR_EXPANDED(current_channel, ref_channel, port, pin, ref_port, ref_pin)                       \
do {                                                                        /*                              */ \
    asm("movlw LOW  "   ___mkstr(ref_port)                              );  /* Set FSR's                    */ \
    asm("movwf      "   ___mkstr(_FSR1L)                                );  /* " FSR1 = LAT for Reference   */ \
    asm("movlw          0x01"                                           );  /* " FSR0 = LAT for Sensor      */ \
    asm("addlw HIGH "   ___mkstr(ref_port)                              );  /* "                            */ \
    asm("movwf      "   ___mkstr(_FSR1H)                                );  /* "                            */ \
    asm("movlw LOW  "   ___mkstr(port)                                  );  /* "                            */ \
    asm("movwf      "   ___mkstr(_FSR0L)                                );  /* "                            */ \
    asm("movlw          0x01"                                           );  /* "                            */ \
    asm("addlw HIGH "   ___mkstr(port)                                  );  /* "                            */ \
    asm("movwf      "   ___mkstr(_FSR0H)                                );  /* "                            */ \
    asm("movlb      "   ___mkstr(CVD_ADCON0_BANK)                       );  /*                              */ \
    asm("movlw      "   ___mkstr(ref_channel)                           );  /* Set ADC Mux to Reference     */ \
    asm("movwf      "   ___mkstr(MASKBANK(_ADCON0,CVD_ADCON0_BANK))     );  /*                              */ \
    asm("bcf        "   ___mkstr(_INDF1)    ","    ___mkstr(ref_pin)    );  /* Set LAT registers            */ \
    asm("bsf        "   ___mkstr(_INDF0)    ","    ___mkstr(pin)        );  /*                              */ \
    asm("decf       "   ___mkstr(_FSR0H)                                );  /* Set FSR0 = TRIS for Sensor   */ \
    asm("movlw LOW  "   ___mkstr(port)                                  );  /* "                            */ \
    asm("addlw          0x80"                                           );  /* " (PORT + 0x80 is TRIS)      */ \
    asm("movwf      "   ___mkstr(_FSR0L)                                );  /* "                            */ \
    asm("btfsc      "   ___mkstr(_STATUS)   ",0"                        );  /* "                            */ \
    asm("incf       "   ___mkstr(_FSR0H)                                );  /* "                            */ \
    asm("movlw      "   ___mkstr(current_channel)                       );  /* Perform scan                 */ \
    asm("bsf        "   ___mkstr(_INDF0)    ","    ___mkstr(pin)        );  /*                              */ \
    asm("movwf      "   ___mkstr(MASKBANK(_ADCON0,CVD_ADCON0_BANK))     );  /*                              */ \
    _delay(3);                                                              /*                              */ \
    asm("bsf        "   ___mkstr(MASKBANK(_ADCON0,CVD_ADCON0_BANK)) ",1");  /*                              */ \
    _delay(3);                                                              /*                              */ \
    asm("bcf        "   ___mkstr(_INDF0)    ","    ___mkstr(pin)        );  /*                              */ \
    asm("global         decimate"                                       );  /* Perform math on the previous */ \
    asm("call           decimate"                                       );  /* sensor while completing scan */ \
    asm("movlw LOW  "   ___mkstr(ref_port)                              );  /* Set FSR's                    */ \
    asm("movwf      "   ___mkstr(_FSR1L)                                );  /* " FSR1 = LAT for Reference   */ \
    asm("movlw          0x01"                                           );  /* " FSR0 = LAT for Sensor      */ \
    asm("addlw HIGH "   ___mkstr(ref_port)                              );  /* "                            */ \
    asm("movwf      "   ___mkstr(_FSR1H)                                );  /* "                            */ \
    asm("movlw LOW  "   ___mkstr(port)                                  );  /* "                            */ \
    asm("movwf      "   ___mkstr(_FSR0L)                                );  /* "                            */ \
    asm("movlw          0x01"                                           );  /* "                            */ \
    asm("addlw HIGH "   ___mkstr(port)                                  );  /* "                            */ \
    asm("movwf      "   ___mkstr(_FSR0H)                                );  /* "                            */ \
    asm("movlb      "   ___mkstr(CVD_ADCON0_BANK)                       );  /*                              */ \
    asm("movlw      "   ___mkstr(ref_channel)                           );  /* Set ADC Mux to Reference     */ \
    asm("movwf      "   ___mkstr(MASKBANK(_ADCON0,CVD_ADCON0_BANK))     );  /*                              */ \
    asm("bsf        "   ___mkstr(_INDF1)    ","    ___mkstr(ref_pin)    );  /* Set LAT registers            */ \
    asm("bcf        "   ___mkstr(_INDF0)    ","    ___mkstr(pin)        );  /*                              */ \
    asm("decf       "   ___mkstr(_FSR0H)                                );  /* Set FSR0 to sensor's TRIS    */ \
    asm("movlw LOW  "   ___mkstr(port)                                  );  /* "                            */ \
    asm("addlw          0x80"                                           );  /* " (PORT + 0x80 is TRIS)      */ \
    asm("movwf      "   ___mkstr(_FSR0L)                                );  /* "                            */ \
    asm("btfsc      "   ___mkstr(_STATUS)   ",0"                        );  /* "                            */ \
    asm("incf       "   ___mkstr(_FSR0H)                                );  /* "                            */ \
    asm("movlw      "   ___mkstr(current_channel)                       );  /* Perform scan                 */ \
    asm("bsf        "   ___mkstr(_INDF0)    ","    ___mkstr(pin)        );  /*                              */ \
    asm("movwf      "   ___mkstr(MASKBANK(_ADCON0,CVD_ADCON0_BANK))     );  /*                              */ \
    _delay(3);                                                              /*                              */ \
    asm("bsf        "   ___mkstr(MASKBANK(_ADCON0,CVD_ADCON0_BANK)) ",1");  /*                              */ \
    _delay(3);                                                              /*                              */ \
    asm("bcf        "   ___mkstr(_INDF0)    ","    ___mkstr(pin)        );  /* Set sensor as input          */ \
    asm("bcf        "   ___mkstr(_INDF1)    ","    ___mkstr(ref_pin)    );  /* Clear reference LAT register */ \
} while(0)
#endif


/**
* @def CVD_DECIMATE()
* @brief Generates ASM code to compare the previous sensor's scan result with its decimate-filtered latch register, #sensor_data.
* @param[in] None
* @hideinitializer
* @ingroup Acquisition
*/
/**
* @def CVD_SENSOR_SMALLER()
* @brief Generates ASM code to decrement the decimate-filtered #sensor_data latch register
* @param[in] None
* @hideinitializer
* @ingroup Acquisition
*/
/**
* @def CVD_DECIMATE_END()
* @brief Generates ASM code to decrement the decimate-filtered #sensor_data latch register
* @param[in] None
* @hideinitializer
* @ingroup Acquisition
*/
#if (CVD_NUMBER_SENSORS > 1)
#define CVD_DECIMATE()                                                                                                                  \
do {                                                                /*                                                              */  \
    asm("BANKSEL    _current_sensor");                              /* Use the current_sensor variable as an index                  */  \
    asm("lslf   "   ___mkstr(MASKBANK(_current_sensor,0))   ",W");  /* Multiplying by two because int's take up 2 bytes each        */  \
    asm("addlw LOW  _sensor_data");                                 /* Adding the index to the sensor_data variable address         */  \
    asm("movwf      _FSR0L");                                       /* Pointing the FSR to the correct array location               */  \
    asm("movlw HIGH _sensor_data");                                 /*                                                              */  \
    asm("movwf      _FSR0H");                                       /* Same as above, this time for the high byte of the address    */  \
    asm("movf       _INDF0,W");                                     /* Getting the value from the memory location                   */  \
    asm("subwf      _last_result,F");                               /* Subtract the stored value from the latest reading result     */  \
    asm("incf       _FSR0L,F");                                     /*                                                              */  \
    asm("movf       _INDF0,W");                                     /*                                                              */  \
    asm("subwfb     _last_result+1,W");                             /* Same as above, now just handling the high byte               */  \
    asm("decf       _FSR0L,F");                                     /*                                                              */  \
    asm("btfss      _STATUS,0");                                    /* Check the result of the subtraction                          */  \
    asm("ljmp       sensor_smaller");                               /* If the latest reading was smaller, jump.                     */  \
    asm("iorwf      _last_result,W");                               /*                                                              */  \
    asm("btfss      _STATUS,2");                                    /* If the two are equal, load nothing.                          */  \
    asm("movlw      1");                                            /* Otherwise (latest reading is larger), load 1 into W          */  \
    asm("addwf      _INDF0,F");                                     /* Add 1 (or nothing) to the stored value                       */  \
    asm("movf       _INDF0,W");                                     /* Now take the stored value and load it into last_result       */  \
    asm("movwf      _last_result,F");                               /*   for easy access                                            */  \
    asm("incf       _FSR0L,F");                                     /* Point to the high byte of the stored value                   */  \
    asm("btfsc      _STATUS,0");                                    /* If we had an overflow from the addition,                     */  \
    asm("incf       _INDF0,F");                                     /*   increment the higher byte                                  */  \
    asm("movf       _INDF0,W");                                     /* Now take the high byte of the stored value and load it into  */  \
    asm("movwf      _last_result+1");                               /*   last_result for easy access.                               */  \
    asm("ljmp       decimate_end");                                 /* Jump (avoid 'smaller' case code)                             */  \
} while (0)                                                 

#define CVD_SENSOR_SMALLER()                                                                                                            \
do {                                                                /*                                                              */  \
    asm("movlw      1");                                            /* Perform the exact same commands as above, but this time      */  \
    asm("subwf      _INDF0,F");                                     /*   subtract instead of add. The stored value is then loaded   */  \
    asm("movf       _INDF0,W");                                     /*   into last_result for easy access.                          */  \
    asm("movwf      _last_result");                                 /*                                                              */  \
    asm("incf       _FSR0L,F");                                     /*                                                              */  \
    asm("btfss      _STATUS,0");                                    /*                                                              */  \
    asm("decf       _INDF0,F");                                     /*                                                              */  \
    asm("movf       _INDF0,W");                                     /*                                                              */  \
    asm("movwf      _last_result+1");                               /*                                                              */  \
} while (0)                                                 

#define CVD_DECIMATE_END()                                                                                                              \
do {                                                                /*                                                              */  \
    asm("lslf       _current_sensor,W");                            /* Use the current_sensor variable as an index. Since the       */  \
    asm("addwf      _current_sensor,W");                            /*   CVD_Acq_Filtered_Data array is of 24-bit values, we        */  \
    asm("addlw LOW  _CVD_Acq_Filtered_Data");                       /*   are multiplying the index by 3, then adding it to the      */  \
    asm("movwf      _FSR0L");                                       /*   address of the accumulator array.                          */  \
    asm("movlw HIGH _CVD_Acq_Filtered_Data");                       /*                                                              */  \
    asm("movwf      _FSR0H");                                       /*                                                              */  \
    asm("movf       _last_result,W");                               /* Take the value in last_result (aka sensor_data, now) and     */  \
    asm("addwf      _INDF0,F");                                     /*   add it to the accumulator array.                           */  \
    asm("incf       _FSR0L,F");                                     /*                                                              */  \
    asm("movf       _last_result+1,W");                             /*                                                              */  \
    asm("addwfc     _INDF0,F");                                     /* Add with carry handles possible overflow condition.          */  \
    asm("incf       _FSR0L,F");                                     /*                                                              */  \
    asm("btfsc      _STATUS,0");                                    /* Handle possible overflow condition one more time since this  */  \
    asm("incf       _INDF0,F");                                     /*   is a 24-bit array.                                         */  \
    asm("BANKSEL    _ADCON0");                                      /*                                                              */  \
    asm("btfsc    " ___mkstr(MASKBANK(_ADCON0,1)) ",1");            /* Has the ADC scan completed?                                  */  \
    asm("goto       $-1");                                          /* If not, we're going to wait until it is.                     */  \
    asm("movf     " ___mkstr(MASKBANK(_ADRESH,1)) ",W");            /* Grab the result and offset it by 1024. This makes sure we    */  \
    asm("addlw      4");                                            /*   never have to handle negative numbers later when we        */  \
    asm("BANKSEL    _last_result");                                 /*   subtract another ADC result from this one.                 */  \
    asm("movwf    " ___mkstr(MASKBANK(_last_result+1,0)));          /*                                                              */  \
    asm("BANKSEL    _ADRESL");                                      /* Finally, store the low byte as well.                         */  \
    asm("movf     " ___mkstr(MASKBANK(_ADRESL,1)) ",W");            /*                                                              */  \
    asm("BANKSEL    _last_result");                                 /*                                                              */  \
    asm("movwf    " ___mkstr(MASKBANK(_last_result,0)));            /*                                                              */  \
    asm("return");                                                  /* Finished! Now go start the next ADC scan in READ_SENSOR().   */  \
} while(0)
        
#else                                           // Only one sensor, so no index variable manipulation is required
                                                // Otherwise, code below mirrors code above.
#define CVD_DECIMATE()                                              \
do {                                                                \
    asm("BANKSEL    0");                                            \
    asm("movlw LOW  _sensor_data");                                 \
    asm("movwf      _FSR0L");                                       \
    asm("movlw HIGH _sensor_data");                                 \
    asm("movwf      _FSR0H");                                       \
    asm("movf       _INDF0,W");                                     \
    asm("subwf      _last_result,F");                               \
    asm("incf       _FSR0L,F");                                     \
    asm("movf       _INDF0,W");                                     \
    asm("subwfb     _last_result+1,W");                             \
    asm("decf       _FSR0L,F");                                     \
    asm("btfss      _STATUS,0");                                    \
    asm("ljmp       sensor_smaller");                               \
    asm("iorwf      _last_result,W");                               \
    asm("btfss      _STATUS,2");                                    \
    asm("movlw      1");                                            \
    asm("addwf      _INDF0,F");                                     \
    asm("movf       _INDF0,W");                                     \
    asm("movwf      _last_result,F");                               \
    asm("incf       _FSR0L,F");                                     \
    asm("btfsc      _STATUS,0");                                    \
    asm("incf       _INDF0,F");                                     \
    asm("movf       _INDF0,W");                                     \
    asm("movwf      _last_result+1");                               \
    asm("ljmp       decimate_end");                                 \
} while (0)                                                 

#define CVD_SENSOR_SMALLER()                                        \
do {                                                                \
    asm("movlw      1");                                            \
    asm("subwf      _INDF0,F");                                     \
    asm("movf       _INDF0,W");                                     \
    asm("movwf      _last_result");                                 \
    asm("incf       _FSR0L,F");                                     \
    asm("btfss      _STATUS,0");                                    \
    asm("decf       _INDF0,F");                                     \
    asm("movf       _INDF0,W");                                     \
    asm("movwf      _last_result+1");                               \
} while (0)                                                 

#define CVD_DECIMATE_END()                                          \
do {                                                                \
    asm("movlw LOW  _CVD_Acq_Filtered_Data");                       \
    asm("movwf      _FSR0L");                                       \
    asm("movlw HIGH _CVD_Acq_Filtered_Data");                       \
    asm("movwf      _FSR0H");                                       \
    asm("movf       _last_result,W");                               \
    asm("addwf      _INDF0,F");                                     \
    asm("incf       _FSR0L,F");                                     \
    asm("movf       _last_result+1,W");                             \
    asm("addwfc     _INDF0,F");                                     \
    asm("incf       _FSR0L,F");                                     \
    asm("btfsc      _STATUS,0");                                    \
    asm("incf       _INDF0,F");                                     \
    asm("BANKSEL    _ADCON0");                                      \
    asm("btfsc    " ___mkstr(MASKBANK(_ADCON0,1)) ",1");            \
    asm("goto       $-1");                                          \
    asm("movf     " ___mkstr(MASKBANK(_ADRESH,1)) ",W");            \
    asm("addlw      4");                                            \
    asm("BANKSEL    _last_result");                                 \
    asm("movwf    " ___mkstr(MASKBANK(_last_result+1,0)));          \
    asm("BANKSEL    _ADRESL");                                      \
    asm("movf     " ___mkstr(MASKBANK(_ADRESL,1)) ",W");            \
    asm("BANKSEL    _last_result");                                 \
    asm("movwf    " ___mkstr(MASKBANK(_last_result,0)));            \
    asm("return");                                                  \
} while(0)
#endif
//@}
/** @name Polishing/Finishing Macros
* These macros perform scaling and final operations before setting the 
* #mTouchCVD_dataReady flag and allowing the main loop application to process
* the new data.
*/
//@{
/**
* @def STORE_SENSOR_SCALE_256(index)
* @brief Do not use directly. Expanded utility macro called by STORE_SENSOR(index). 
* @param[in] index the index of the sensor to be scaled and stored
* @hideinitializer
*/
#define STORE_SENSOR_SCALE_256(index)                                               \
do {                                                                                \
    CVDSensorData[index-1] = (unsigned int)(CVD_Acq_Filtered_Data[index] >> 8);     \
    CVD_Acq_Filtered_Data[index] = 0;                                               \
} while(0)
/**
* @def STORE_LAST_SENSOR_SCALE_256(index)
* @brief Do not use directly. Expanded utility macro called by STORE_SENSOR(index). 
* @param[in] index the index of the sensor to be scaled and stored
* @hideinitializer
*/
#define STORE_LAST_SENSOR_SCALE_256(index)                                                      \
do {                                                                                            \
    CVDSensorData[CVD_NUMBER_SENSORS-1] = (unsigned int)(CVD_Acq_Filtered_Data[index] >> 8);    \
    CVD_Acq_Filtered_Data[index] = 0;                                                           \
} while(0)
/**
* @def STORE_SINGLE_SENSOR_SCALE_256(index)
* @brief Do not use directly. Expanded utility macro called by STORE_SENSOR(index) if there is only one sensor in the mTouch application. 
* @param[in] index the index of the sensor to be scaled and stored
* @hideinitializer
*/
#define STORE_SINGLE_SENSOR_SCALE_256(index)                                                    \
do {                                                                                            \
    CVDSensorData[0] = (unsigned int)(CVD_Acq_Filtered_Data[0] >> 8);                           \
    CVD_Acq_Filtered_Data[0] = 0;                                                               \
} while(0)
/**
* @def STORE_SENSOR_SCALE_16(index)
* @brief Do not use directly. Expanded utility macro called by STORE_SENSOR(index). 
* @param[in] index the index of the sensor to be scaled and stored
* @hideinitializer
*/
#define STORE_SENSOR_SCALE_16(index)                                                \
do {                                                                                \
    CVDSensorData[index-1] = (unsigned int)(CVD_Acq_Filtered_Data[index] >> 4);     \
    CVD_Acq_Filtered_Data[index] = 0;                                               \
} while(0)
/**
* @def STORE_LAST_SENSOR_SCALE_16(index)
* @brief Do not use directly. Expanded utility macro called by STORE_SENSOR(index). 
* @param[in] index the index of the sensor to be scaled and stored
* @hideinitializer
*/
#define STORE_LAST_SENSOR_SCALE_16(index)                                                       \
do {                                                                                            \
    CVDSensorData[CVD_NUMBER_SENSORS-1] = (unsigned int)(CVD_Acq_Filtered_Data[index] >> 4);    \
    CVD_Acq_Filtered_Data[index] = 0;                                                           \
} while(0)
/**
* @def STORE_SINGLE_SENSOR_SCALE_16(index)
* @brief Do not use directly. Expanded utility macro called by STORE_SENSOR(index) if there is only one sensor in the mTouch application. 
* @param[in] index the index of the sensor to be scaled and stored
* @hideinitializer
*/
#define STORE_SINGLE_SENSOR_SCALE_16(index)                                                     \
do {                                                                                            \
    CVDSensorData[0] = (unsigned int)(CVD_Acq_Filtered_Data[0] >> 4);                           \
    CVD_Acq_Filtered_Data[0] = 0;                                                               \
} while(0)
/**
* @def STORE_SENSOR_SCALE_1(index)
* @brief Do not use directly. Expanded utility macro called by STORE_SENSOR(index). 
* @param[in] index the index of the sensor to be scaled and stored
* @hideinitializer
*/
#define STORE_SENSOR_SCALE_1(index)                                                 \
do {                                                                                \
    CVDSensorData[index-1] = (unsigned int)(CVD_Acq_Filtered_Data[index]);          \
    CVD_Acq_Filtered_Data[index] = 0;                                               \
} while(0)
/**
* @def STORE_LAST_SENSOR_SCALE_1(index)
* @brief Do not use directly. Expanded utility macro called by STORE_SENSOR(index). 
* @param[in] index the index of the sensor to be scaled and stored
* @hideinitializer
*/
#define STORE_LAST_SENSOR_SCALE_1(index)                                                        \
do {                                                                                            \
    CVDSensorData[CVD_NUMBER_SENSORS-1] = (unsigned int)(CVD_Acq_Filtered_Data[index]);         \
    CVD_Acq_Filtered_Data[index] = 0;                                                           \
} while(0)
/**
* @def STORE_SINGLE_SENSOR_SCALE_1(index)
* @brief Do not use directly. Expanded utility macro called by STORE_SENSOR(index) if there is only one sensor in the mTouch application. 
* @param[in] index the index of the sensor to be scaled and stored
* @hideinitializer
*/
#define STORE_SINGLE_SENSOR_SCALE_1(index)                                                      \
do {                                                                                            \
    CVDSensorData[0] = (unsigned int)(CVD_Acq_Filtered_Data[0]);                                \
    CVD_Acq_Filtered_Data[0] = 0;                                                               \
} while(0)
/**
* @def STORE_SENSOR(index)
* @brief Scales the accumulated result of the CVD acquisition and stores it for main-application access
*
* This macro uses the CVD_SCALING configuration option to determine which scaling option to choose.
* This is achieved by calling one of three macros:
* CVD_SENSOR_SCALE_1(), CVD_SENSOR_SCALE_16(), and CVD_SENSOR_SCALE_256()
* @param[in] index the index of the sensor to be scaled and stored
* @hideinitializer
* @ingroup Acquisition
*/
#if (CVD_NUMBER_SENSORS > 1)
#if (CVD_SCALING == 1)
    #define STORE_SENSOR(index)         STORE_SENSOR_SCALE_1(index) 
    #define STORE_LAST_SENSOR(index)    STORE_LAST_SENSOR_SCALE_1(index) 
#elif (CVD_SCALING == 16)
    #define STORE_SENSOR(index)         STORE_SENSOR_SCALE_16(index) 
    #define STORE_LAST_SENSOR(index)    STORE_LAST_SENSOR_SCALE_16(index) 
#elif (CVD_SCALING == 256)
    #define STORE_SENSOR(index)         STORE_SENSOR_SCALE_256(index) 
    #define STORE_LAST_SENSOR(index)    STORE_LAST_SENSOR_SCALE_256(index) 
#else
    #warning CVD_SCALING set to an invalid value. Defaulting to 16:1 scaling.
    #define STORE_SENSOR(index)         STORE_SENSOR_SCALE_16(index) 
    #define STORE_LAST_SENSOR(index)    STORE_LAST_SENSOR_SCALE_16(index)
#endif
#else
#if (CVD_SCALING == 1)
    #define STORE_SENSOR(index)         STORE_SINGLE_SENSOR_SCALE_1(index) 
#elif (CVD_SCALING == 16)
    #define STORE_SENSOR(index)         STORE_SINGLE_SENSOR_SCALE_16(index) 
#elif (CVD_SCALING == 256)
    #define STORE_SENSOR(index)         STORE_SINGLE_SENSOR_SCALE_256(index) 
#else
    #warning CVD_SCALING set to an invalid value. Defaulting to 16:1 scaling.
    #define STORE_SENSOR(index)         STORE_SENSOR_SCALE_16(index) 
#endif
#endif
/**
* @def EXIT_SENSOR(index)
* @brief Increments the given index variable and exits the ISR
* @param[in] index the index variable to increment
* @hideinitializer
* @ingroup Acquisition
*/
#define EXIT_SENSOR(index)                                                                          \
do {                                                                                                \
    index++;                                                                                        \
    asm("ljmp END_ISR");                            /* Exit the ISR                             */  \
} while(0)

/**
* @def EXIT_LAST_SENSOR(index)
* @brief Performs several important functions after all sensors have been scanned
*
* Resets the index variable to 0 for the next scan, decrements the oversampling
* counter to determine if it is time to complete the sample and store the result,
* and then exits the ISR.
* @param[in] index the index variable to reset to 0
* @hideinitializer
* @ingroup Acquisition
*/
/**
* @def EXIT_LAST_SENSOR_DECINDEX(index)
* @brief Do not use directly. Utility macro used by EXIT_LAST_SENSOR() to reset the index variable. 
* @param[in] index the index variable to reset to 0
* @hideinitializer
*/
/**
* @def EXIT_LAST_SENSOR_MAIN()
* @brief Do not use directly. Utility macro used by EXIT_LAST_SENSOR() to decrement the oversampling counter. 
* @param[in] None
* @hideinitializer
*/
#if (CVD_NUMBER_SENSORS > 1)
    #define EXIT_LAST_SENSOR(index)     EXIT_LAST_SENSOR_DECINDEX(index); EXIT_LAST_SENSOR_MAIN()       // First resets the index, then updates the sample counter
#else
    #define EXIT_LAST_SENSOR(index)     EXIT_LAST_SENSOR_MAIN()                                         // Only one sensor, so only updates the sample counter
#endif

#define EXIT_LAST_SENSOR_MAIN()                                                                                                 \
do {                                                                                                                            \
    if (--sample_counter != 0)                            /* Decrement the sample counter and check if it's equal to 0      */  \
        asm("ljmp END_ISR");                              /* If not equal to 0, exit the ISR                                */  \
    sample_counter = CVD_SAMPLES_PER_SCAN;                /* If equal to 0, reset the sample counter continue with storage  */  \
} while(0)
    
#define EXIT_LAST_SENSOR_DECINDEX(index)                                                                    \
do {                                                                                                        \
    index = 0;                                                                                              \
} while(0)
/**
* @def SET_DATA_READY_FLAG()
* @brief Sets the dataReady flag to signal the main application of a new reading
* @param[in] None
* @hideinitializer
* @ingroup Acquisition
*/
#define SET_DATA_READY_FLAG()                                       \
do {                                                                \
    mTouchCVD_dataReady = 1;                                        \
} while(0)
//@}


/**
* @def GENERATE_JUMP_TABLE()
* @brief Generates a jump table in ASM used by the acquisition ISR. Do not use directly.
* @param[in] None
* @hideinitializer
* @ingroup Acquisition
*/
/**
* @def GENERATE_STORAGE_FUNCTION()
* @brief Generates the storage macro calls for the acquisition ISR. Do not use directly.
* @param[in] None
* @hideinitializer
* @ingroup Acquisition
*/
#if (CVD_NUMBER_SENSORS == 1)
#define GENERATE_JUMP_TABLE()                                                                                       \
do {                                                                                                                \
    asm("global   sensor_0               ");          /* Required by assembler to know 'sensor_0' is a label    */  \
    asm("ljmp     sensor_0               ");          /* Jump to the sensor_0 scanning function                 */  \
} while (0)
    
#define GENERATE_STORAGE_FUNCTION()                                 \
do {                                                                \
    STORE_SENSOR(0);                                                \
} while (0)
#endif
#if (CVD_NUMBER_SENSORS == 2)
    #define GENERATE_JUMP_TABLE()                                           \
        do {                                                                \
            asm("global   sensor_0,sensor_1      ");                        \
            asm("ljmp     sensor_0               ");                        \
            asm("ljmp     sensor_1               ");                        \
        } while (0)
        
    #define GENERATE_STORAGE_FUNCTION()                                     \
        do {                                                                \
            STORE_LAST_SENSOR(0);                                           \
            STORE_SENSOR(1);                                                \
        } while (0)
#endif
#if (CVD_NUMBER_SENSORS == 3)
    #define GENERATE_JUMP_TABLE()                                           \
        do {                                                                \
            asm("global   sensor_0,sensor_1,sensor_2                    "); \
            asm("ljmp     sensor_0               ");                        \
            asm("ljmp     sensor_1               ");                        \
            asm("ljmp     sensor_2               ");                        \
        } while (0)
        
    #define GENERATE_STORAGE_FUNCTION()                                     \
        do {                                                                \
            STORE_LAST_SENSOR(0);                                           \
            STORE_SENSOR(1);                                                \
            STORE_SENSOR(2);                                                \
        } while (0)
#endif
#if (CVD_NUMBER_SENSORS == 4)
    #define GENERATE_JUMP_TABLE()                                           \
        do {                                                                \
            asm("global   sensor_0,sensor_1,sensor_2,sensor_3           "); \
            asm("ljmp     sensor_0               ");                        \
            asm("ljmp     sensor_1               ");                        \
            asm("ljmp     sensor_2               ");                        \
            asm("ljmp     sensor_3               ");                        \
        } while (0)
        
    #define GENERATE_STORAGE_FUNCTION()                                     \
        do {                                                                \
            STORE_LAST_SENSOR(0);                                           \
            STORE_SENSOR(1);                                                \
            STORE_SENSOR(2);                                                \
            STORE_SENSOR(3);                                                \
        } while (0)
#endif
#if (CVD_NUMBER_SENSORS == 5)
    #define GENERATE_JUMP_TABLE()                                           \
        do {                                                                \
            asm("global   sensor_0,sensor_1,sensor_2,sensor_3,sensor_4  "); \
            asm("ljmp     sensor_0               ");                        \
            asm("ljmp     sensor_1               ");                        \
            asm("ljmp     sensor_2               ");                        \
            asm("ljmp     sensor_3               ");                        \
            asm("ljmp     sensor_4               ");                        \
        } while (0)
        
    #define GENERATE_STORAGE_FUNCTION()                                     \
        do {                                                                \
            STORE_LAST_SENSOR(0);                                           \
            STORE_SENSOR(1);                                                \
            STORE_SENSOR(2);                                                \
            STORE_SENSOR(3);                                                \
            STORE_SENSOR(4);                                                \
        } while (0)
#endif
#if (CVD_NUMBER_SENSORS == 6)
    #define GENERATE_JUMP_TABLE()                                           \
        do {                                                                \
            asm("global   sensor_0,sensor_1,sensor_2,sensor_3,sensor_4,sensor_5"); \
            asm("ljmp     sensor_0               ");                        \
            asm("ljmp     sensor_1               ");                        \
            asm("ljmp     sensor_2               ");                        \
            asm("ljmp     sensor_3               ");                        \
            asm("ljmp     sensor_4               ");                        \
            asm("ljmp     sensor_5               ");                        \
        } while (0)
        
    #define GENERATE_STORAGE_FUNCTION()                                     \
        do {                                                                \
            STORE_LAST_SENSOR(0);                                           \
            STORE_SENSOR(1);                                                \
            STORE_SENSOR(2);                                                \
            STORE_SENSOR(3);                                                \
            STORE_SENSOR(4);                                                \
            STORE_SENSOR(5);                                                \
        } while (0)
#endif
#if (CVD_NUMBER_SENSORS == 7)
    #define GENERATE_JUMP_TABLE()                                           \
        do {                                                                \
            asm("global   sensor_0,sensor_1,sensor_2,sensor_3,sensor_4,sensor_5,sensor_6"); \
            asm("ljmp     sensor_0               ");                        \
            asm("ljmp     sensor_1               ");                        \
            asm("ljmp     sensor_2               ");                        \
            asm("ljmp     sensor_3               ");                        \
            asm("ljmp     sensor_4               ");                        \
            asm("ljmp     sensor_5               ");                        \
            asm("ljmp     sensor_6               ");                        \
        } while (0)
        
    #define GENERATE_STORAGE_FUNCTION()                                     \
        do {                                                                \
            STORE_LAST_SENSOR(0);                                           \
            STORE_SENSOR(1);                                                \
            STORE_SENSOR(2);                                                \
            STORE_SENSOR(3);                                                \
            STORE_SENSOR(4);                                                \
            STORE_SENSOR(5);                                                \
            STORE_SENSOR(6);                                                \
        } while (0)
#endif
#if (CVD_NUMBER_SENSORS == 8)
    #define GENERATE_JUMP_TABLE()                                           \
        do {                                                                \
            asm("global   sensor_0,sensor_1,sensor_2,sensor_3,sensor_4,sensor_5,sensor_6,sensor_7"); \
            asm("ljmp     sensor_0               ");                        \
            asm("ljmp     sensor_1               ");                        \
            asm("ljmp     sensor_2               ");                        \
            asm("ljmp     sensor_3               ");                        \
            asm("ljmp     sensor_4               ");                        \
            asm("ljmp     sensor_5               ");                        \
            asm("ljmp     sensor_6               ");                        \
            asm("ljmp     sensor_7               ");                        \
        } while (0)
        
    #define GENERATE_STORAGE_FUNCTION()                                     \
        do {                                                                \
            STORE_LAST_SENSOR(0);                                           \
            STORE_SENSOR(1);                                                \
            STORE_SENSOR(2);                                                \
            STORE_SENSOR(3);                                                \
            STORE_SENSOR(4);                                                \
            STORE_SENSOR(5);                                                \
            STORE_SENSOR(6);                                                \
            STORE_SENSOR(7);                                                \
        } while (0)
#endif
#if (CVD_NUMBER_SENSORS == 9)
    #define GENERATE_JUMP_TABLE()                                           \
        do {                                                                \
            asm("global   sensor_0,sensor_1,sensor_2,sensor_3,sensor_4,sensor_5,sensor_6,sensor_7,sensor_8"); \
            asm("ljmp     sensor_0               ");                        \
            asm("ljmp     sensor_1               ");                        \
            asm("ljmp     sensor_2               ");                        \
            asm("ljmp     sensor_3               ");                        \
            asm("ljmp     sensor_4               ");                        \
            asm("ljmp     sensor_5               ");                        \
            asm("ljmp     sensor_6               ");                        \
            asm("ljmp     sensor_7               ");                        \
            asm("ljmp     sensor_8               ");                        \
        } while (0)
        
    #define GENERATE_STORAGE_FUNCTION()                                     \
        do {                                                                \
            STORE_LAST_SENSOR(0);                                           \
            STORE_SENSOR(1);                                                \
            STORE_SENSOR(2);                                                \
            STORE_SENSOR(3);                                                \
            STORE_SENSOR(4);                                                \
            STORE_SENSOR(5);                                                \
            STORE_SENSOR(6);                                                \
            STORE_SENSOR(7);                                                \
            STORE_SENSOR(8);                                                \
        } while (0)
#endif
#if (CVD_NUMBER_SENSORS == 10)
    #define GENERATE_JUMP_TABLE()                                           \
        do {                                                                \
            asm("global   sensor_0,sensor_1,sensor_2,sensor_3,sensor_4,sensor_5,sensor_6,sensor_7,sensor_8,sensor_9"); \
            asm("ljmp     sensor_0               ");                        \
            asm("ljmp     sensor_1               ");                        \
            asm("ljmp     sensor_2               ");                        \
            asm("ljmp     sensor_3               ");                        \
            asm("ljmp     sensor_4               ");                        \
            asm("ljmp     sensor_5               ");                        \
            asm("ljmp     sensor_6               ");                        \
            asm("ljmp     sensor_7               ");                        \
            asm("ljmp     sensor_8               ");                        \
            asm("ljmp     sensor_9               ");                        \
        } while (0)
        
    #define GENERATE_STORAGE_FUNCTION()                                     \
        do {                                                                \
            STORE_LAST_SENSOR(0);                                           \
            STORE_SENSOR(1);                                                \
            STORE_SENSOR(2);                                                \
            STORE_SENSOR(3);                                                \
            STORE_SENSOR(4);                                                \
            STORE_SENSOR(5);                                                \
            STORE_SENSOR(6);                                                \
            STORE_SENSOR(7);                                                \
            STORE_SENSOR(8);                                                \
            STORE_SENSOR(9);                                                \
        } while (0)
#endif
#if (CVD_NUMBER_SENSORS == 11)
    #define GENERATE_JUMP_TABLE()                                           \
        do {                                                                \
            asm("global   sensor_0,sensor_1,sensor_2,sensor_3,sensor_4,sensor_5,sensor_6,sensor_7,sensor_8,sensor_9,sensor_10"); \
            asm("ljmp     sensor_0               ");                        \
            asm("ljmp     sensor_1               ");                        \
            asm("ljmp     sensor_2               ");                        \
            asm("ljmp     sensor_3               ");                        \
            asm("ljmp     sensor_4               ");                        \
            asm("ljmp     sensor_5               ");                        \
            asm("ljmp     sensor_6               ");                        \
            asm("ljmp     sensor_7               ");                        \
            asm("ljmp     sensor_8               ");                        \
            asm("ljmp     sensor_9               ");                        \
            asm("ljmp     sensor_10              ");                        \
        } while (0)
        
    #define GENERATE_STORAGE_FUNCTION()                                     \
        do {                                                                \
            STORE_LAST_SENSOR(0);                                           \
            STORE_SENSOR(1);                                                \
            STORE_SENSOR(2);                                                \
            STORE_SENSOR(3);                                                \
            STORE_SENSOR(4);                                                \
            STORE_SENSOR(5);                                                \
            STORE_SENSOR(6);                                                \
            STORE_SENSOR(7);                                                \
            STORE_SENSOR(8);                                                \
            STORE_SENSOR(9);                                                \
            STORE_SENSOR(10);                                               \
        } while (0)
#endif
#if (CVD_NUMBER_SENSORS == 12)
    #define GENERATE_JUMP_TABLE()                                           \
        do {                                                                \
            asm("global   sensor_0,sensor_1,sensor_2,sensor_3,sensor_4,sensor_5,sensor_6,sensor_7,sensor_8,sensor_9,sensor_10,sensor_11"); \
            asm("ljmp     sensor_0               ");                        \
            asm("ljmp     sensor_1               ");                        \
            asm("ljmp     sensor_2               ");                        \
            asm("ljmp     sensor_3               ");                        \
            asm("ljmp     sensor_4               ");                        \
            asm("ljmp     sensor_5               ");                        \
            asm("ljmp     sensor_6               ");                        \
            asm("ljmp     sensor_7               ");                        \
            asm("ljmp     sensor_8               ");                        \
            asm("ljmp     sensor_9               ");                        \
            asm("ljmp     sensor_10              ");                        \
            asm("ljmp     sensor_11              ");                        \
        } while (0)
        
    #define GENERATE_STORAGE_FUNCTION()                                     \
        do {                                                                \
            STORE_LAST_SENSOR(0);                                           \
            STORE_SENSOR(1);                                                \
            STORE_SENSOR(2);                                                \
            STORE_SENSOR(3);                                                \
            STORE_SENSOR(4);                                                \
            STORE_SENSOR(5);                                                \
            STORE_SENSOR(6);                                                \
            STORE_SENSOR(7);                                                \
            STORE_SENSOR(8);                                                \
            STORE_SENSOR(9);                                                \
            STORE_SENSOR(10);                                               \
            STORE_SENSOR(11);                                               \
        } while (0)
#endif
#if (CVD_NUMBER_SENSORS == 13)
    #define GENERATE_JUMP_TABLE()                                           \
        do {                                                                \
            asm("global   sensor_0,sensor_1,sensor_2,sensor_3,sensor_4,sensor_5,sensor_6,sensor_7,sensor_8,sensor_9,sensor_10,sensor_11,sensor_12"); \
            asm("ljmp     sensor_0               ");                        \
            asm("ljmp     sensor_1               ");                        \
            asm("ljmp     sensor_2               ");                        \
            asm("ljmp     sensor_3               ");                        \
            asm("ljmp     sensor_4               ");                        \
            asm("ljmp     sensor_5               ");                        \
            asm("ljmp     sensor_6               ");                        \
            asm("ljmp     sensor_7               ");                        \
            asm("ljmp     sensor_8               ");                        \
            asm("ljmp     sensor_9               ");                        \
            asm("ljmp     sensor_10              ");                        \
            asm("ljmp     sensor_11              ");                        \
            asm("ljmp     sensor_12              ");                        \
        } while (0)
        
    #define GENERATE_STORAGE_FUNCTION()                                     \
        do {                                                                \
            STORE_LAST_SENSOR(0);                                           \
            STORE_SENSOR(1);                                                \
            STORE_SENSOR(2);                                                \
            STORE_SENSOR(3);                                                \
            STORE_SENSOR(4);                                                \
            STORE_SENSOR(5);                                                \
            STORE_SENSOR(6);                                                \
            STORE_SENSOR(7);                                                \
            STORE_SENSOR(8);                                                \
            STORE_SENSOR(9);                                                \
            STORE_SENSOR(10);                                               \
            STORE_SENSOR(11);                                               \
            STORE_SENSOR(12);                                               \
        } while (0)
#endif
#if (CVD_NUMBER_SENSORS == 14)
    #define GENERATE_JUMP_TABLE()                                           \
        do {                                                                \
            asm("global   sensor_0,sensor_1,sensor_2,sensor_3,sensor_4,sensor_5,sensor_6,sensor_7,sensor_8,sensor_9,sensor_10,sensor_11,sensor_12,sensor_13"); \
            asm("ljmp     sensor_0               ");                        \
            asm("ljmp     sensor_1               ");                        \
            asm("ljmp     sensor_2               ");                        \
            asm("ljmp     sensor_3               ");                        \
            asm("ljmp     sensor_4               ");                        \
            asm("ljmp     sensor_5               ");                        \
            asm("ljmp     sensor_6               ");                        \
            asm("ljmp     sensor_7               ");                        \
            asm("ljmp     sensor_8               ");                        \
            asm("ljmp     sensor_9               ");                        \
            asm("ljmp     sensor_10              ");                        \
            asm("ljmp     sensor_11              ");                        \
            asm("ljmp     sensor_12              ");                        \
            asm("ljmp     sensor_13              ");                        \
        } while (0)
        
    #define GENERATE_STORAGE_FUNCTION()                                     \
        do {                                                                \
            STORE_LAST_SENSOR(0);                                           \
            STORE_SENSOR(1);                                                \
            STORE_SENSOR(2);                                                \
            STORE_SENSOR(3);                                                \
            STORE_SENSOR(4);                                                \
            STORE_SENSOR(5);                                                \
            STORE_SENSOR(6);                                                \
            STORE_SENSOR(7);                                                \
            STORE_SENSOR(8);                                                \
            STORE_SENSOR(9);                                                \
            STORE_SENSOR(10);                                               \
            STORE_SENSOR(11);                                               \
            STORE_SENSOR(12);                                               \
            STORE_SENSOR(13);                                               \
        } while (0)
#endif
#if (CVD_NUMBER_SENSORS == 15)
    #define GENERATE_JUMP_TABLE()                                           \
        do {                                                                \
            asm("global   sensor_0,sensor_1,sensor_2,sensor_3,sensor_4,sensor_5,sensor_6,sensor_7,sensor_8,sensor_9,sensor_10,sensor_11,sensor_12,sensor_13,sensor_14"); \
            asm("ljmp     sensor_0               ");                        \
            asm("ljmp     sensor_1               ");                        \
            asm("ljmp     sensor_2               ");                        \
            asm("ljmp     sensor_3               ");                        \
            asm("ljmp     sensor_4               ");                        \
            asm("ljmp     sensor_5               ");                        \
            asm("ljmp     sensor_6               ");                        \
            asm("ljmp     sensor_7               ");                        \
            asm("ljmp     sensor_8               ");                        \
            asm("ljmp     sensor_9               ");                        \
            asm("ljmp     sensor_10              ");                        \
            asm("ljmp     sensor_11              ");                        \
            asm("ljmp     sensor_12              ");                        \
            asm("ljmp     sensor_13              ");                        \
            asm("ljmp     sensor_14              ");                        \
        } while (0)
        
    #define GENERATE_STORAGE_FUNCTION()                                     \
        do {                                                                \
            STORE_LAST_SENSOR(0);                                           \
            STORE_SENSOR(1);                                                \
            STORE_SENSOR(2);                                                \
            STORE_SENSOR(3);                                                \
            STORE_SENSOR(4);                                                \
            STORE_SENSOR(5);                                                \
            STORE_SENSOR(6);                                                \
            STORE_SENSOR(7);                                                \
            STORE_SENSOR(8);                                                \
            STORE_SENSOR(9);                                                \
            STORE_SENSOR(10);                                               \
            STORE_SENSOR(11);                                               \
            STORE_SENSOR(12);                                               \
            STORE_SENSOR(13);                                               \
            STORE_SENSOR(14);                                               \
        } while (0)
#endif
#if (CVD_NUMBER_SENSORS == 16)
    #define GENERATE_JUMP_TABLE()                                           \
        do {                                                                \
            asm("global   sensor_0,sensor_1,sensor_2,sensor_3,sensor_4,sensor_5,sensor_6,sensor_7,sensor_8,sensor_9,sensor_10,sensor_11,sensor_12,sensor_13,sensor_14,sensor_15"); \
            asm("ljmp     sensor_0               ");                        \
            asm("ljmp     sensor_1               ");                        \
            asm("ljmp     sensor_2               ");                        \
            asm("ljmp     sensor_3               ");                        \
            asm("ljmp     sensor_4               ");                        \
            asm("ljmp     sensor_5               ");                        \
            asm("ljmp     sensor_6               ");                        \
            asm("ljmp     sensor_7               ");                        \
            asm("ljmp     sensor_8               ");                        \
            asm("ljmp     sensor_9               ");                        \
            asm("ljmp     sensor_10              ");                        \
            asm("ljmp     sensor_11              ");                        \
            asm("ljmp     sensor_12              ");                        \
            asm("ljmp     sensor_13              ");                        \
            asm("ljmp     sensor_14              ");                        \
            asm("ljmp     sensor_15              ");                        \
        } while (0)
        
    #define GENERATE_STORAGE_FUNCTION()                                     \
        do {                                                                \
            STORE_LAST_SENSOR(0);                                           \
            STORE_SENSOR(1);                                                \
            STORE_SENSOR(2);                                                \
            STORE_SENSOR(3);                                                \
            STORE_SENSOR(4);                                                \
            STORE_SENSOR(5);                                                \
            STORE_SENSOR(6);                                                \
            STORE_SENSOR(7);                                                \
            STORE_SENSOR(8);                                                \
            STORE_SENSOR(9);                                                \
            STORE_SENSOR(10);                                               \
            STORE_SENSOR(11);                                               \
            STORE_SENSOR(12);                                               \
            STORE_SENSOR(13);                                               \
            STORE_SENSOR(14);                                               \
            STORE_SENSOR(15);                                               \
        } while (0)
#endif
#if (CVD_NUMBER_SENSORS == 17)
    #define GENERATE_JUMP_TABLE()                                           \
        do {                                                                \
            asm("global   sensor_0,sensor_1,sensor_2,sensor_3,sensor_4,sensor_5,sensor_6,sensor_7,sensor_8,sensor_9,sensor_10,sensor_11,sensor_12,sensor_13,sensor_14,sensor_15,sensor_16"); \
            asm("ljmp     sensor_0               ");                        \
            asm("ljmp     sensor_1               ");                        \
            asm("ljmp     sensor_2               ");                        \
            asm("ljmp     sensor_3               ");                        \
            asm("ljmp     sensor_4               ");                        \
            asm("ljmp     sensor_5               ");                        \
            asm("ljmp     sensor_6               ");                        \
            asm("ljmp     sensor_7               ");                        \
            asm("ljmp     sensor_8               ");                        \
            asm("ljmp     sensor_9               ");                        \
            asm("ljmp     sensor_10              ");                        \
            asm("ljmp     sensor_11              ");                        \
            asm("ljmp     sensor_12              ");                        \
            asm("ljmp     sensor_13              ");                        \
            asm("ljmp     sensor_14              ");                        \
            asm("ljmp     sensor_15              ");                        \
            asm("ljmp     sensor_16              ");                        \
        } while (0)
        
    #define GENERATE_STORAGE_FUNCTION()                                     \
        do {                                                                \
            STORE_LAST_SENSOR(0);                                           \
            STORE_SENSOR(1);                                                \
            STORE_SENSOR(2);                                                \
            STORE_SENSOR(3);                                                \
            STORE_SENSOR(4);                                                \
            STORE_SENSOR(5);                                                \
            STORE_SENSOR(6);                                                \
            STORE_SENSOR(7);                                                \
            STORE_SENSOR(8);                                                \
            STORE_SENSOR(9);                                                \
            STORE_SENSOR(10);                                               \
            STORE_SENSOR(11);                                               \
            STORE_SENSOR(12);                                               \
            STORE_SENSOR(13);                                               \
            STORE_SENSOR(14);                                               \
            STORE_SENSOR(15);                                               \
            STORE_SENSOR(16);                                               \
        } while (0)
#endif
#if (CVD_NUMBER_SENSORS == 18)
    #define GENERATE_JUMP_TABLE()                                           \
        do {                                                                \
            asm("global   sensor_0,sensor_1,sensor_2,sensor_3,sensor_4,sensor_5,sensor_6,sensor_7,sensor_8,sensor_9,sensor_10,sensor_11,sensor_12,sensor_13,sensor_14,sensor_15,sensor_16,sensor_17"); \
            asm("ljmp     sensor_0               ");                        \
            asm("ljmp     sensor_1               ");                        \
            asm("ljmp     sensor_2               ");                        \
            asm("ljmp     sensor_3               ");                        \
            asm("ljmp     sensor_4               ");                        \
            asm("ljmp     sensor_5               ");                        \
            asm("ljmp     sensor_6               ");                        \
            asm("ljmp     sensor_7               ");                        \
            asm("ljmp     sensor_8               ");                        \
            asm("ljmp     sensor_9               ");                        \
            asm("ljmp     sensor_10              ");                        \
            asm("ljmp     sensor_11              ");                        \
            asm("ljmp     sensor_12              ");                        \
            asm("ljmp     sensor_13              ");                        \
            asm("ljmp     sensor_14              ");                        \
            asm("ljmp     sensor_15              ");                        \
            asm("ljmp     sensor_16              ");                        \
            asm("ljmp     sensor_17              ");                        \
        } while (0)
        
    #define GENERATE_STORAGE_FUNCTION()                                     \
        do {                                                                \
            STORE_LAST_SENSOR(0);                                           \
            STORE_SENSOR(1);                                                \
            STORE_SENSOR(2);                                                \
            STORE_SENSOR(3);                                                \
            STORE_SENSOR(4);                                                \
            STORE_SENSOR(5);                                                \
            STORE_SENSOR(6);                                                \
            STORE_SENSOR(7);                                                \
            STORE_SENSOR(8);                                                \
            STORE_SENSOR(9);                                                \
            STORE_SENSOR(10);                                               \
            STORE_SENSOR(11);                                               \
            STORE_SENSOR(12);                                               \
            STORE_SENSOR(13);                                               \
            STORE_SENSOR(14);                                               \
            STORE_SENSOR(15);                                               \
            STORE_SENSOR(16);                                               \
            STORE_SENSOR(17);                                               \
        } while (0)
#endif
#if (CVD_NUMBER_SENSORS == 19)
    #define GENERATE_JUMP_TABLE()                                           \
        do {                                                                \
            asm("global   sensor_0,sensor_1,sensor_2,sensor_3,sensor_4,sensor_5,sensor_6,sensor_7,sensor_8,sensor_9,sensor_10,sensor_11,sensor_12,sensor_13,sensor_14,sensor_15,sensor_16,sensor_17,sensor_18"); \
            asm("ljmp     sensor_0               ");                        \
            asm("ljmp     sensor_1               ");                        \
            asm("ljmp     sensor_2               ");                        \
            asm("ljmp     sensor_3               ");                        \
            asm("ljmp     sensor_4               ");                        \
            asm("ljmp     sensor_5               ");                        \
            asm("ljmp     sensor_6               ");                        \
            asm("ljmp     sensor_7               ");                        \
            asm("ljmp     sensor_8               ");                        \
            asm("ljmp     sensor_9               ");                        \
            asm("ljmp     sensor_10              ");                        \
            asm("ljmp     sensor_11              ");                        \
            asm("ljmp     sensor_12              ");                        \
            asm("ljmp     sensor_13              ");                        \
            asm("ljmp     sensor_14              ");                        \
            asm("ljmp     sensor_15              ");                        \
            asm("ljmp     sensor_16              ");                        \
            asm("ljmp     sensor_17              ");                        \
            asm("ljmp     sensor_18              ");                        \
        } while (0)
        
    #define GENERATE_STORAGE_FUNCTION()                                     \
        do {                                                                \
            STORE_LAST_SENSOR(0);                                           \
            STORE_SENSOR(1);                                                \
            STORE_SENSOR(2);                                                \
            STORE_SENSOR(3);                                                \
            STORE_SENSOR(4);                                                \
            STORE_SENSOR(5);                                                \
            STORE_SENSOR(6);                                                \
            STORE_SENSOR(7);                                                \
            STORE_SENSOR(8);                                                \
            STORE_SENSOR(9);                                                \
            STORE_SENSOR(10);                                               \
            STORE_SENSOR(11);                                               \
            STORE_SENSOR(12);                                               \
            STORE_SENSOR(13);                                               \
            STORE_SENSOR(14);                                               \
            STORE_SENSOR(15);                                               \
            STORE_SENSOR(16);                                               \
            STORE_SENSOR(17);                                               \
            STORE_SENSOR(18);                                               \
        } while (0)
#endif
#if (CVD_NUMBER_SENSORS == 20)
    #define GENERATE_JUMP_TABLE()                                           \
        do {                                                                \
            asm("global   sensor_0,sensor_1,sensor_2,sensor_3,sensor_4,sensor_5,sensor_6,sensor_7,sensor_8,sensor_9,sensor_10,sensor_11,sensor_12,sensor_13,sensor_14,sensor_15,sensor_16,sensor_17,sensor_18,sensor_19"); \
            asm("ljmp     sensor_0               ");                        \
            asm("ljmp     sensor_1               ");                        \
            asm("ljmp     sensor_2               ");                        \
            asm("ljmp     sensor_3               ");                        \
            asm("ljmp     sensor_4               ");                        \
            asm("ljmp     sensor_5               ");                        \
            asm("ljmp     sensor_6               ");                        \
            asm("ljmp     sensor_7               ");                        \
            asm("ljmp     sensor_8               ");                        \
            asm("ljmp     sensor_9               ");                        \
            asm("ljmp     sensor_10              ");                        \
            asm("ljmp     sensor_11              ");                        \
            asm("ljmp     sensor_12              ");                        \
            asm("ljmp     sensor_13              ");                        \
            asm("ljmp     sensor_14              ");                        \
            asm("ljmp     sensor_15              ");                        \
            asm("ljmp     sensor_16              ");                        \
            asm("ljmp     sensor_17              ");                        \
            asm("ljmp     sensor_18              ");                        \
            asm("ljmp     sensor_19              ");                        \
        } while (0)
        
    #define GENERATE_STORAGE_FUNCTION()                                     \
        do {                                                                \
            STORE_LAST_SENSOR(0);                                           \
            STORE_SENSOR(1);                                                \
            STORE_SENSOR(2);                                                \
            STORE_SENSOR(3);                                                \
            STORE_SENSOR(4);                                                \
            STORE_SENSOR(5);                                                \
            STORE_SENSOR(6);                                                \
            STORE_SENSOR(7);                                                \
            STORE_SENSOR(8);                                                \
            STORE_SENSOR(9);                                                \
            STORE_SENSOR(10);                                               \
            STORE_SENSOR(11);                                               \
            STORE_SENSOR(12);                                               \
            STORE_SENSOR(13);                                               \
            STORE_SENSOR(14);                                               \
            STORE_SENSOR(15);                                               \
            STORE_SENSOR(16);                                               \
            STORE_SENSOR(17);                                               \
            STORE_SENSOR(18);                                               \
            STORE_SENSOR(19);                                               \
        } while (0)
#endif
#if (CVD_NUMBER_SENSORS == 21)
    #define GENERATE_JUMP_TABLE()                                           \
        do {                                                                \
            asm("global   sensor_0,sensor_1,sensor_2,sensor_3,sensor_4,sensor_5,sensor_6,sensor_7,sensor_8,sensor_9,sensor_10,sensor_11,sensor_12,sensor_13,sensor_14,sensor_15,sensor_16,sensor_17,sensor_18,sensor_19,sensor_20"); \
            asm("ljmp     sensor_0               ");                        \
            asm("ljmp     sensor_1               ");                        \
            asm("ljmp     sensor_2               ");                        \
            asm("ljmp     sensor_3               ");                        \
            asm("ljmp     sensor_4               ");                        \
            asm("ljmp     sensor_5               ");                        \
            asm("ljmp     sensor_6               ");                        \
            asm("ljmp     sensor_7               ");                        \
            asm("ljmp     sensor_8               ");                        \
            asm("ljmp     sensor_9               ");                        \
            asm("ljmp     sensor_10              ");                        \
            asm("ljmp     sensor_11              ");                        \
            asm("ljmp     sensor_12              ");                        \
            asm("ljmp     sensor_13              ");                        \
            asm("ljmp     sensor_14              ");                        \
            asm("ljmp     sensor_15              ");                        \
            asm("ljmp     sensor_16              ");                        \
            asm("ljmp     sensor_17              ");                        \
            asm("ljmp     sensor_18              ");                        \
            asm("ljmp     sensor_19              ");                        \
            asm("ljmp     sensor_20              ");                        \
        } while (0)
        
    #define GENERATE_STORAGE_FUNCTION()                                     \
        do {                                                                \
            STORE_LAST_SENSOR(0);                                           \
            STORE_SENSOR(1);                                                \
            STORE_SENSOR(2);                                                \
            STORE_SENSOR(3);                                                \
            STORE_SENSOR(4);                                                \
            STORE_SENSOR(5);                                                \
            STORE_SENSOR(6);                                                \
            STORE_SENSOR(7);                                                \
            STORE_SENSOR(8);                                                \
            STORE_SENSOR(9);                                                \
            STORE_SENSOR(10);                                               \
            STORE_SENSOR(11);                                               \
            STORE_SENSOR(12);                                               \
            STORE_SENSOR(13);                                               \
            STORE_SENSOR(14);                                               \
            STORE_SENSOR(15);                                               \
            STORE_SENSOR(16);                                               \
            STORE_SENSOR(17);                                               \
            STORE_SENSOR(18);                                               \
            STORE_SENSOR(19);                                               \
            STORE_SENSOR(20);                                               \
        } while (0)
#endif
#if (CVD_NUMBER_SENSORS == 22)
    #define GENERATE_JUMP_TABLE()                                           \
        do {                                                                \
            asm("global   sensor_0,sensor_1,sensor_2,sensor_3,sensor_4,sensor_5,sensor_6,sensor_7,sensor_8,sensor_9,sensor_10,sensor_11,sensor_12,sensor_13,sensor_14,sensor_15,sensor_16,sensor_17,sensor_18,sensor_19,sensor_20,sensor_21"); \
            asm("ljmp     sensor_0               ");                        \
            asm("ljmp     sensor_1               ");                        \
            asm("ljmp     sensor_2               ");                        \
            asm("ljmp     sensor_3               ");                        \
            asm("ljmp     sensor_4               ");                        \
            asm("ljmp     sensor_5               ");                        \
            asm("ljmp     sensor_6               ");                        \
            asm("ljmp     sensor_7               ");                        \
            asm("ljmp     sensor_8               ");                        \
            asm("ljmp     sensor_9               ");                        \
            asm("ljmp     sensor_10              ");                        \
            asm("ljmp     sensor_11              ");                        \
            asm("ljmp     sensor_12              ");                        \
            asm("ljmp     sensor_13              ");                        \
            asm("ljmp     sensor_14              ");                        \
            asm("ljmp     sensor_15              ");                        \
            asm("ljmp     sensor_16              ");                        \
            asm("ljmp     sensor_17              ");                        \
            asm("ljmp     sensor_18              ");                        \
            asm("ljmp     sensor_19              ");                        \
            asm("ljmp     sensor_20              ");                        \
            asm("ljmp     sensor_21              ");                        \
        } while (0)
        
    #define GENERATE_STORAGE_FUNCTION()                                     \
        do {                                                                \
            STORE_LAST_SENSOR(0);                                           \
            STORE_SENSOR(1);                                                \
            STORE_SENSOR(2);                                                \
            STORE_SENSOR(3);                                                \
            STORE_SENSOR(4);                                                \
            STORE_SENSOR(5);                                                \
            STORE_SENSOR(6);                                                \
            STORE_SENSOR(7);                                                \
            STORE_SENSOR(8);                                                \
            STORE_SENSOR(9);                                                \
            STORE_SENSOR(10);                                               \
            STORE_SENSOR(11);                                               \
            STORE_SENSOR(12);                                               \
            STORE_SENSOR(13);                                               \
            STORE_SENSOR(14);                                               \
            STORE_SENSOR(15);                                               \
            STORE_SENSOR(16);                                               \
            STORE_SENSOR(17);                                               \
            STORE_SENSOR(18);                                               \
            STORE_SENSOR(19);                                               \
            STORE_SENSOR(20);                                               \
            STORE_SENSOR(21);                                               \
        } while (0)
#endif
#if (CVD_NUMBER_SENSORS == 23)
    #define GENERATE_JUMP_TABLE()                                           \
        do {                                                                \
            asm("global   sensor_0,sensor_1,sensor_2,sensor_3,sensor_4,sensor_5,sensor_6,sensor_7,sensor_8,sensor_9,sensor_10,sensor_11,sensor_12,sensor_13,sensor_14,sensor_15,sensor_16,sensor_17,sensor_18,sensor_19,sensor_20,sensor_21,sensor_22"); \
            asm("ljmp     sensor_0               ");                        \
            asm("ljmp     sensor_1               ");                        \
            asm("ljmp     sensor_2               ");                        \
            asm("ljmp     sensor_3               ");                        \
            asm("ljmp     sensor_4               ");                        \
            asm("ljmp     sensor_5               ");                        \
            asm("ljmp     sensor_6               ");                        \
            asm("ljmp     sensor_7               ");                        \
            asm("ljmp     sensor_8               ");                        \
            asm("ljmp     sensor_9               ");                        \
            asm("ljmp     sensor_10              ");                        \
            asm("ljmp     sensor_11              ");                        \
            asm("ljmp     sensor_12              ");                        \
            asm("ljmp     sensor_13              ");                        \
            asm("ljmp     sensor_14              ");                        \
            asm("ljmp     sensor_15              ");                        \
            asm("ljmp     sensor_16              ");                        \
            asm("ljmp     sensor_17              ");                        \
            asm("ljmp     sensor_18              ");                        \
            asm("ljmp     sensor_19              ");                        \
            asm("ljmp     sensor_20              ");                        \
            asm("ljmp     sensor_21              ");                        \
            asm("ljmp     sensor_22              ");                        \
        } while (0)
        
    #define GENERATE_STORAGE_FUNCTION()                                     \
        do {                                                                \
            STORE_LAST_SENSOR(0);                                           \
            STORE_SENSOR(1);                                                \
            STORE_SENSOR(2);                                                \
            STORE_SENSOR(3);                                                \
            STORE_SENSOR(4);                                                \
            STORE_SENSOR(5);                                                \
            STORE_SENSOR(6);                                                \
            STORE_SENSOR(7);                                                \
            STORE_SENSOR(8);                                                \
            STORE_SENSOR(9);                                                \
            STORE_SENSOR(10);                                               \
            STORE_SENSOR(11);                                               \
            STORE_SENSOR(12);                                               \
            STORE_SENSOR(13);                                               \
            STORE_SENSOR(14);                                               \
            STORE_SENSOR(15);                                               \
            STORE_SENSOR(16);                                               \
            STORE_SENSOR(17);                                               \
            STORE_SENSOR(18);                                               \
            STORE_SENSOR(19);                                               \
            STORE_SENSOR(20);                                               \
            STORE_SENSOR(21);                                               \
            STORE_SENSOR(22);                                               \
        } while (0)
#endif
#if (CVD_NUMBER_SENSORS == 24)
    #define GENERATE_JUMP_TABLE()                                           \
        do {                                                                \
            asm("global   sensor_0,sensor_1,sensor_2,sensor_3,sensor_4,sensor_5,sensor_6,sensor_7,sensor_8,sensor_9,sensor_10,sensor_11,sensor_12,sensor_13,sensor_14,sensor_15,sensor_16,sensor_17,sensor_18,sensor_19,sensor_20,sensor_21,sensor_22,sensor_23"); \
            asm("ljmp     sensor_0               ");                        \
            asm("ljmp     sensor_1               ");                        \
            asm("ljmp     sensor_2               ");                        \
            asm("ljmp     sensor_3               ");                        \
            asm("ljmp     sensor_4               ");                        \
            asm("ljmp     sensor_5               ");                        \
            asm("ljmp     sensor_6               ");                        \
            asm("ljmp     sensor_7               ");                        \
            asm("ljmp     sensor_8               ");                        \
            asm("ljmp     sensor_9               ");                        \
            asm("ljmp     sensor_10              ");                        \
            asm("ljmp     sensor_11              ");                        \
            asm("ljmp     sensor_12              ");                        \
            asm("ljmp     sensor_13              ");                        \
            asm("ljmp     sensor_14              ");                        \
            asm("ljmp     sensor_15              ");                        \
            asm("ljmp     sensor_16              ");                        \
            asm("ljmp     sensor_17              ");                        \
            asm("ljmp     sensor_18              ");                        \
            asm("ljmp     sensor_19              ");                        \
            asm("ljmp     sensor_20              ");                        \
            asm("ljmp     sensor_21              ");                        \
            asm("ljmp     sensor_22              ");                        \
            asm("ljmp     sensor_23              ");                        \
        } while (0)
        
    #define GENERATE_STORAGE_FUNCTION()                                     \
        do {                                                                \
            STORE_LAST_SENSOR(0);                                           \
            STORE_SENSOR(1);                                                \
            STORE_SENSOR(2);                                                \
            STORE_SENSOR(3);                                                \
            STORE_SENSOR(4);                                                \
            STORE_SENSOR(5);                                                \
            STORE_SENSOR(6);                                                \
            STORE_SENSOR(7);                                                \
            STORE_SENSOR(8);                                                \
            STORE_SENSOR(9);                                                \
            STORE_SENSOR(10);                                               \
            STORE_SENSOR(11);                                               \
            STORE_SENSOR(12);                                               \
            STORE_SENSOR(13);                                               \
            STORE_SENSOR(14);                                               \
            STORE_SENSOR(15);                                               \
            STORE_SENSOR(16);                                               \
            STORE_SENSOR(17);                                               \
            STORE_SENSOR(18);                                               \
            STORE_SENSOR(19);                                               \
            STORE_SENSOR(20);                                               \
            STORE_SENSOR(21);                                               \
            STORE_SENSOR(22);                                               \
            STORE_SENSOR(23);                                               \
        } while (0)
#endif
#if (CVD_NUMBER_SENSORS == 25)
    #define GENERATE_JUMP_TABLE()                                           \
        do {                                                                \
            asm("global   sensor_0,sensor_1,sensor_2,sensor_3,sensor_4,sensor_5,sensor_6,sensor_7,sensor_8,sensor_9,sensor_10,sensor_11,sensor_12,sensor_13,sensor_14,sensor_15,sensor_16,sensor_17,sensor_18,sensor_19,sensor_20,sensor_21,sensor_22,sensor_23,sensor_24"); \
            asm("ljmp     sensor_0               ");                        \
            asm("ljmp     sensor_1               ");                        \
            asm("ljmp     sensor_2               ");                        \
            asm("ljmp     sensor_3               ");                        \
            asm("ljmp     sensor_4               ");                        \
            asm("ljmp     sensor_5               ");                        \
            asm("ljmp     sensor_6               ");                        \
            asm("ljmp     sensor_7               ");                        \
            asm("ljmp     sensor_8               ");                        \
            asm("ljmp     sensor_9               ");                        \
            asm("ljmp     sensor_10              ");                        \
            asm("ljmp     sensor_11              ");                        \
            asm("ljmp     sensor_12              ");                        \
            asm("ljmp     sensor_13              ");                        \
            asm("ljmp     sensor_14              ");                        \
            asm("ljmp     sensor_15              ");                        \
            asm("ljmp     sensor_16              ");                        \
            asm("ljmp     sensor_17              ");                        \
            asm("ljmp     sensor_18              ");                        \
            asm("ljmp     sensor_19              ");                        \
            asm("ljmp     sensor_20              ");                        \
            asm("ljmp     sensor_21              ");                        \
            asm("ljmp     sensor_22              ");                        \
            asm("ljmp     sensor_23              ");                        \
            asm("ljmp     sensor_24              ");                        \
        } while (0)
        
    #define GENERATE_STORAGE_FUNCTION()                                     \
        do {                                                                \
            STORE_LAST_SENSOR(0);                                           \
            STORE_SENSOR(1);                                                \
            STORE_SENSOR(2);                                                \
            STORE_SENSOR(3);                                                \
            STORE_SENSOR(4);                                                \
            STORE_SENSOR(5);                                                \
            STORE_SENSOR(6);                                                \
            STORE_SENSOR(7);                                                \
            STORE_SENSOR(8);                                                \
            STORE_SENSOR(9);                                                \
            STORE_SENSOR(10);                                               \
            STORE_SENSOR(11);                                               \
            STORE_SENSOR(12);                                               \
            STORE_SENSOR(13);                                               \
            STORE_SENSOR(14);                                               \
            STORE_SENSOR(15);                                               \
            STORE_SENSOR(16);                                               \
            STORE_SENSOR(17);                                               \
            STORE_SENSOR(18);                                               \
            STORE_SENSOR(19);                                               \
            STORE_SENSOR(20);                                               \
            STORE_SENSOR(21);                                               \
            STORE_SENSOR(22);                                               \
            STORE_SENSOR(23);                                               \
            STORE_SENSOR(24);                                               \
        } while (0)
#endif
#if (CVD_NUMBER_SENSORS == 26)
    #define GENERATE_JUMP_TABLE()                                           \
        do {                                                                \
            asm("global   sensor_0,sensor_1,sensor_2,sensor_3,sensor_4,sensor_5,sensor_6,sensor_7,sensor_8,sensor_9,sensor_10,sensor_11,sensor_12,sensor_13,sensor_14,sensor_15,sensor_16,sensor_17,sensor_18,sensor_19,sensor_20,sensor_21,sensor_22,sensor_23,sensor_24,sensor_25"); \
            asm("ljmp     sensor_0               ");                        \
            asm("ljmp     sensor_1               ");                        \
            asm("ljmp     sensor_2               ");                        \
            asm("ljmp     sensor_3               ");                        \
            asm("ljmp     sensor_4               ");                        \
            asm("ljmp     sensor_5               ");                        \
            asm("ljmp     sensor_6               ");                        \
            asm("ljmp     sensor_7               ");                        \
            asm("ljmp     sensor_8               ");                        \
            asm("ljmp     sensor_9               ");                        \
            asm("ljmp     sensor_10              ");                        \
            asm("ljmp     sensor_11              ");                        \
            asm("ljmp     sensor_12              ");                        \
            asm("ljmp     sensor_13              ");                        \
            asm("ljmp     sensor_14              ");                        \
            asm("ljmp     sensor_15              ");                        \
            asm("ljmp     sensor_16              ");                        \
            asm("ljmp     sensor_17              ");                        \
            asm("ljmp     sensor_18              ");                        \
            asm("ljmp     sensor_19              ");                        \
            asm("ljmp     sensor_20              ");                        \
            asm("ljmp     sensor_21              ");                        \
            asm("ljmp     sensor_22              ");                        \
            asm("ljmp     sensor_23              ");                        \
            asm("ljmp     sensor_24              ");                        \
            asm("ljmp     sensor_25              ");                        \
        } while (0)
        
    #define GENERATE_STORAGE_FUNCTION()                                     \
        do {                                                                \
            STORE_LAST_SENSOR(0);                                           \
            STORE_SENSOR(1);                                                \
            STORE_SENSOR(2);                                                \
            STORE_SENSOR(3);                                                \
            STORE_SENSOR(4);                                                \
            STORE_SENSOR(5);                                                \
            STORE_SENSOR(6);                                                \
            STORE_SENSOR(7);                                                \
            STORE_SENSOR(8);                                                \
            STORE_SENSOR(9);                                                \
            STORE_SENSOR(10);                                               \
            STORE_SENSOR(11);                                               \
            STORE_SENSOR(12);                                               \
            STORE_SENSOR(13);                                               \
            STORE_SENSOR(14);                                               \
            STORE_SENSOR(15);                                               \
            STORE_SENSOR(16);                                               \
            STORE_SENSOR(17);                                               \
            STORE_SENSOR(18);                                               \
            STORE_SENSOR(19);                                               \
            STORE_SENSOR(20);                                               \
            STORE_SENSOR(21);                                               \
            STORE_SENSOR(22);                                               \
            STORE_SENSOR(23);                                               \
            STORE_SENSOR(24);                                               \
            STORE_SENSOR(25);                                               \
        } while (0)
#endif
#if (CVD_NUMBER_SENSORS == 27)
    #define GENERATE_JUMP_TABLE()                                           \
        do {                                                                \
            asm("global   sensor_0,sensor_1,sensor_2,sensor_3,sensor_4,sensor_5,sensor_6,sensor_7,sensor_8,sensor_9,sensor_10,sensor_11,sensor_12,sensor_13,sensor_14,sensor_15,sensor_16,sensor_17,sensor_18,sensor_19,sensor_20,sensor_21,sensor_22,sensor_23,sensor_24,sensor_25,sensor_26"); \
            asm("ljmp     sensor_0               ");                        \
            asm("ljmp     sensor_1               ");                        \
            asm("ljmp     sensor_2               ");                        \
            asm("ljmp     sensor_3               ");                        \
            asm("ljmp     sensor_4               ");                        \
            asm("ljmp     sensor_5               ");                        \
            asm("ljmp     sensor_6               ");                        \
            asm("ljmp     sensor_7               ");                        \
            asm("ljmp     sensor_8               ");                        \
            asm("ljmp     sensor_9               ");                        \
            asm("ljmp     sensor_10              ");                        \
            asm("ljmp     sensor_11              ");                        \
            asm("ljmp     sensor_12              ");                        \
            asm("ljmp     sensor_13              ");                        \
            asm("ljmp     sensor_14              ");                        \
            asm("ljmp     sensor_15              ");                        \
            asm("ljmp     sensor_16              ");                        \
            asm("ljmp     sensor_17              ");                        \
            asm("ljmp     sensor_18              ");                        \
            asm("ljmp     sensor_19              ");                        \
            asm("ljmp     sensor_20              ");                        \
            asm("ljmp     sensor_21              ");                        \
            asm("ljmp     sensor_22              ");                        \
            asm("ljmp     sensor_23              ");                        \
            asm("ljmp     sensor_24              ");                        \
            asm("ljmp     sensor_25              ");                        \
            asm("ljmp     sensor_26              ");                        \
        } while (0)
        
    #define GENERATE_STORAGE_FUNCTION()                                     \
        do {                                                                \
            STORE_LAST_SENSOR(0);                                           \
            STORE_SENSOR(1);                                                \
            STORE_SENSOR(2);                                                \
            STORE_SENSOR(3);                                                \
            STORE_SENSOR(4);                                                \
            STORE_SENSOR(5);                                                \
            STORE_SENSOR(6);                                                \
            STORE_SENSOR(7);                                                \
            STORE_SENSOR(8);                                                \
            STORE_SENSOR(9);                                                \
            STORE_SENSOR(10);                                               \
            STORE_SENSOR(11);                                               \
            STORE_SENSOR(12);                                               \
            STORE_SENSOR(13);                                               \
            STORE_SENSOR(14);                                               \
            STORE_SENSOR(15);                                               \
            STORE_SENSOR(16);                                               \
            STORE_SENSOR(17);                                               \
            STORE_SENSOR(18);                                               \
            STORE_SENSOR(19);                                               \
            STORE_SENSOR(20);                                               \
            STORE_SENSOR(21);                                               \
            STORE_SENSOR(22);                                               \
            STORE_SENSOR(23);                                               \
            STORE_SENSOR(24);                                               \
            STORE_SENSOR(25);                                               \
            STORE_SENSOR(26);                                               \
        } while (0)
#endif
#if (CVD_NUMBER_SENSORS == 28)
    #define GENERATE_JUMP_TABLE()                                           \
        do {                                                                \
            asm("global   sensor_0,sensor_1,sensor_2,sensor_3,sensor_4,sensor_5,sensor_6,sensor_7,sensor_8,sensor_9,sensor_10,sensor_11,sensor_12,sensor_13,sensor_14,sensor_15,sensor_16,sensor_17,sensor_18,sensor_19,sensor_20,sensor_21,sensor_22,sensor_23,sensor_24,sensor_25,sensor_26,sensor_27"); \
            asm("ljmp     sensor_0               ");                        \
            asm("ljmp     sensor_1               ");                        \
            asm("ljmp     sensor_2               ");                        \
            asm("ljmp     sensor_3               ");                        \
            asm("ljmp     sensor_4               ");                        \
            asm("ljmp     sensor_5               ");                        \
            asm("ljmp     sensor_6               ");                        \
            asm("ljmp     sensor_7               ");                        \
            asm("ljmp     sensor_8               ");                        \
            asm("ljmp     sensor_9               ");                        \
            asm("ljmp     sensor_10              ");                        \
            asm("ljmp     sensor_11              ");                        \
            asm("ljmp     sensor_12              ");                        \
            asm("ljmp     sensor_13              ");                        \
            asm("ljmp     sensor_14              ");                        \
            asm("ljmp     sensor_15              ");                        \
            asm("ljmp     sensor_16              ");                        \
            asm("ljmp     sensor_17              ");                        \
            asm("ljmp     sensor_18              ");                        \
            asm("ljmp     sensor_19              ");                        \
            asm("ljmp     sensor_20              ");                        \
            asm("ljmp     sensor_21              ");                        \
            asm("ljmp     sensor_22              ");                        \
            asm("ljmp     sensor_23              ");                        \
            asm("ljmp     sensor_24              ");                        \
            asm("ljmp     sensor_25              ");                        \
            asm("ljmp     sensor_26              ");                        \
            asm("ljmp     sensor_27              ");                        \
        } while (0)
        
    #define GENERATE_STORAGE_FUNCTION()                                     \
        do {                                                                \
            STORE_LAST_SENSOR(0);                                           \
            STORE_SENSOR(1);                                                \
            STORE_SENSOR(2);                                                \
            STORE_SENSOR(3);                                                \
            STORE_SENSOR(4);                                                \
            STORE_SENSOR(5);                                                \
            STORE_SENSOR(6);                                                \
            STORE_SENSOR(7);                                                \
            STORE_SENSOR(8);                                                \
            STORE_SENSOR(9);                                                \
            STORE_SENSOR(10);                                               \
            STORE_SENSOR(11);                                               \
            STORE_SENSOR(12);                                               \
            STORE_SENSOR(13);                                               \
            STORE_SENSOR(14);                                               \
            STORE_SENSOR(15);                                               \
            STORE_SENSOR(16);                                               \
            STORE_SENSOR(17);                                               \
            STORE_SENSOR(18);                                               \
            STORE_SENSOR(19);                                               \
            STORE_SENSOR(20);                                               \
            STORE_SENSOR(21);                                               \
            STORE_SENSOR(22);                                               \
            STORE_SENSOR(23);                                               \
            STORE_SENSOR(24);                                               \
            STORE_SENSOR(25);                                               \
            STORE_SENSOR(26);                                               \
            STORE_SENSOR(27);                                               \
        } while (0)
#endif
#if (CVD_NUMBER_SENSORS == 29)
    #define GENERATE_JUMP_TABLE()                                           \
        do {                                                                \
            asm("global   sensor_0,sensor_1,sensor_2,sensor_3,sensor_4,sensor_5,sensor_6,sensor_7,sensor_8,sensor_9,sensor_10,sensor_11,sensor_12,sensor_13,sensor_14,sensor_15,sensor_16,sensor_17,sensor_18,sensor_19,sensor_20,sensor_21,sensor_22,sensor_23,sensor_24,sensor_25,sensor_26,sensor_27,sensor_28"); \
            asm("ljmp     sensor_0               ");                        \
            asm("ljmp     sensor_1               ");                        \
            asm("ljmp     sensor_2               ");                        \
            asm("ljmp     sensor_3               ");                        \
            asm("ljmp     sensor_4               ");                        \
            asm("ljmp     sensor_5               ");                        \
            asm("ljmp     sensor_6               ");                        \
            asm("ljmp     sensor_7               ");                        \
            asm("ljmp     sensor_8               ");                        \
            asm("ljmp     sensor_9               ");                        \
            asm("ljmp     sensor_10              ");                        \
            asm("ljmp     sensor_11              ");                        \
            asm("ljmp     sensor_12              ");                        \
            asm("ljmp     sensor_13              ");                        \
            asm("ljmp     sensor_14              ");                        \
            asm("ljmp     sensor_15              ");                        \
            asm("ljmp     sensor_16              ");                        \
            asm("ljmp     sensor_17              ");                        \
            asm("ljmp     sensor_18              ");                        \
            asm("ljmp     sensor_19              ");                        \
            asm("ljmp     sensor_20              ");                        \
            asm("ljmp     sensor_21              ");                        \
            asm("ljmp     sensor_22              ");                        \
            asm("ljmp     sensor_23              ");                        \
            asm("ljmp     sensor_24              ");                        \
            asm("ljmp     sensor_25              ");                        \
            asm("ljmp     sensor_26              ");                        \
            asm("ljmp     sensor_27              ");                        \
            asm("ljmp     sensor_28              ");                        \
        } while (0)
        
    #define GENERATE_STORAGE_FUNCTION()                                     \
        do {                                                                \
            STORE_LAST_SENSOR(0);                                           \
            STORE_SENSOR(1);                                                \
            STORE_SENSOR(2);                                                \
            STORE_SENSOR(3);                                                \
            STORE_SENSOR(4);                                                \
            STORE_SENSOR(5);                                                \
            STORE_SENSOR(6);                                                \
            STORE_SENSOR(7);                                                \
            STORE_SENSOR(8);                                                \
            STORE_SENSOR(9);                                                \
            STORE_SENSOR(10);                                               \
            STORE_SENSOR(11);                                               \
            STORE_SENSOR(12);                                               \
            STORE_SENSOR(13);                                               \
            STORE_SENSOR(14);                                               \
            STORE_SENSOR(15);                                               \
            STORE_SENSOR(16);                                               \
            STORE_SENSOR(17);                                               \
            STORE_SENSOR(18);                                               \
            STORE_SENSOR(19);                                               \
            STORE_SENSOR(20);                                               \
            STORE_SENSOR(21);                                               \
            STORE_SENSOR(22);                                               \
            STORE_SENSOR(23);                                               \
            STORE_SENSOR(24);                                               \
            STORE_SENSOR(25);                                               \
            STORE_SENSOR(26);                                               \
            STORE_SENSOR(27);                                               \
            STORE_SENSOR(28);                                               \
        } while (0)
#endif
#if (CVD_NUMBER_SENSORS == 30)
    #define GENERATE_JUMP_TABLE()                                           \
        do {                                                                \
            asm("global   sensor_0,sensor_1,sensor_2,sensor_3,sensor_4,sensor_5,sensor_6,sensor_7,sensor_8,sensor_9,sensor_10,sensor_11,sensor_12,sensor_13,sensor_14,sensor_15,sensor_16,sensor_17,sensor_18,sensor_19,sensor_20,sensor_21,sensor_22,sensor_23,sensor_24,sensor_25,sensor_26,sensor_27,sensor_28,sensor_29"); \
            asm("global   sensor_0,sensor_1,sensor_2,sensor_3,sensor_4,sensor_5,sensor_6,sensor_7,sensor_8,sensor_9,sensor_10,sensor_11,sensor_12,sensor_13,sensor_14,sensor_15,sensor_16,sensor_17,sensor_18,sensor_19,sensor_20,sensor_21,sensor_22,sensor_23,sensor_24,sensor_25,sensor_26,sensor_27,sensor_28,sensor_29"); \
            asm("ljmp     sensor_0               ");                        \
            asm("ljmp     sensor_1               ");                        \
            asm("ljmp     sensor_2               ");                        \
            asm("ljmp     sensor_3               ");                        \
            asm("ljmp     sensor_4               ");                        \
            asm("ljmp     sensor_5               ");                        \
            asm("ljmp     sensor_6               ");                        \
            asm("ljmp     sensor_7               ");                        \
            asm("ljmp     sensor_8               ");                        \
            asm("ljmp     sensor_9               ");                        \
            asm("ljmp     sensor_10              ");                        \
            asm("ljmp     sensor_11              ");                        \
            asm("ljmp     sensor_12              ");                        \
            asm("ljmp     sensor_13              ");                        \
            asm("ljmp     sensor_14              ");                        \
            asm("ljmp     sensor_15              ");                        \
            asm("ljmp     sensor_16              ");                        \
            asm("ljmp     sensor_17              ");                        \
            asm("ljmp     sensor_18              ");                        \
            asm("ljmp     sensor_19              ");                        \
            asm("ljmp     sensor_20              ");                        \
            asm("ljmp     sensor_21              ");                        \
            asm("ljmp     sensor_22              ");                        \
            asm("ljmp     sensor_23              ");                        \
            asm("ljmp     sensor_24              ");                        \
            asm("ljmp     sensor_25              ");                        \
            asm("ljmp     sensor_26              ");                        \
            asm("ljmp     sensor_27              ");                        \
            asm("ljmp     sensor_28              ");                        \
            asm("ljmp     sensor_29              ");                        \
        } while (0)
        
    #define GENERATE_STORAGE_FUNCTION()                                     \
        do {                                                                \
            STORE_LAST_SENSOR(0);                                           \
            STORE_SENSOR(1);                                                \
            STORE_SENSOR(2);                                                \
            STORE_SENSOR(3);                                                \
            STORE_SENSOR(4);                                                \
            STORE_SENSOR(5);                                                \
            STORE_SENSOR(6);                                                \
            STORE_SENSOR(7);                                                \
            STORE_SENSOR(8);                                                \
            STORE_SENSOR(9);                                                \
            STORE_SENSOR(10);                                               \
            STORE_SENSOR(11);                                               \
            STORE_SENSOR(12);                                               \
            STORE_SENSOR(13);                                               \
            STORE_SENSOR(14);                                               \
            STORE_SENSOR(15);                                               \
            STORE_SENSOR(16);                                               \
            STORE_SENSOR(17);                                               \
            STORE_SENSOR(18);                                               \
            STORE_SENSOR(19);                                               \
            STORE_SENSOR(20);                                               \
            STORE_SENSOR(21);                                               \
            STORE_SENSOR(22);                                               \
            STORE_SENSOR(23);                                               \
            STORE_SENSOR(24);                                               \
            STORE_SENSOR(25);                                               \
            STORE_SENSOR(26);                                               \
            STORE_SENSOR(27);                                               \
            STORE_SENSOR(28);                                               \
            STORE_SENSOR(29);                                               \
        } while (0)
#endif
#if (CVD_NUMBER_SENSORS > 30)
    #error This version of the framework macro library unable to support > 30 sensors at this time.
#endif

#endif




