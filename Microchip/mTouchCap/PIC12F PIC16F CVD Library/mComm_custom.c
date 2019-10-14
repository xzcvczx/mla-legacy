/*************************************************************************
 *  © 2012 Microchip Technology Inc.                                       
 *  
 *  Project Name:    mTouch Framework v2.0
 *  FileName:        mComm_custom.c
 *  Dependencies:    mComm.h, mTouch.h
 *  Processor:       See documentation for supported PIC® microcontrollers 
 *  Compiler:        HI-TECH Ver. 9.81 or later
 *  IDE:             MPLAB® IDE v8.50 (or later) or MPLAB® X                        
 *  Hardware:         
 *  Company:         
 * ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 *  Description:     
 *************************************************************************/
/**************************************************************************
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
/** @file   mComm_custom.c
*   @brief  Example mComm custom opcode implementation. By default,
*           implements an onChange state notification packet and a 
*           software reset command.
*/
#include "mTouch.h"
#include "mComm.h"

#if defined(MCOMM_ENABLE_CUSTOM_OPCODE) && defined(MCOMM_TWO_WAY_ENABLED)

    // 
    // Custom Output Buffer
    //
    uint8_t mComm_myCustomBuffer[MTOUCH_STATEMASK_BYTES + 1];
    uint8_t mComm_GUICustomVariable;

    //
    // Custom Callback Function
    //
    // This function is an example of a custom callback used in UART
    // two-way communications when the application wants to send a
    // special packet based on custom conditions.
    //
    // The callback function should return either a 1 or 0 to tell
    // the mComm_Service() function whether or not there is custom
    // data to be sent at this time.
    //
    // This function is set as the callback function in mComm_config.h
    // by setting the MCOMM_CUSTOM_CALLBACK value.
    //
    uint8_t mComm_CustomCallback(void)
    {
        #define MCOMM_GUICUSTOM_STATE_BIT   0x01    // Use bit 0 to turn on/off sensor state 'onChange' packets
        
        return mTouch_state.buttonStateChange && (mComm_GUICustomVariable & MCOMM_GUICUSTOM_STATE_BIT);      
        // This mTouch flag is updated after each decode. If any sensors have changed 
        // state, we will return a 1 - signalling that we wish to send out a custom packet.
        // Also note - our custom variable must be equal to '1' as well. This allows
        // the master to turn off the custom output packet if desired.
    }

    //
    // Custom Process Function
    //
    // This function's is an example of a custom process function used
    // for any supported two-way protocol.
    //
    // The process function should process the input buffer and
    // prepare to either process a custom write request or custom read 
    // request using an iterator function. Which iterator function is
    // used will determine what variables should be initialized.
    //
    // In this example, the mComm_ramReadIterator() is used. This 
    // mComm function will output whatever variable is pointed to by
    // the output vector - so we need to initialize the output vector 
    // to tell the iterator what to output.
    //
    // Note: Which iterator function to use is determined by the
    //       MCOMM_CUSTOM_READ_ITERATOR and MCOMM_CUSTOM_WRITE_ITERATOR
    //       values in mComm_config.h. By using the already-implemented
    //       mComm_ramReadIterator() function, we are saving on program
    //       memory.
    //
    // In this example, the output vector is pointed to my custom buffer
    //       which is loaded with a custom opcode of my choosing and
    //       the data I want to output.
    //
    void mComm_CustomProcess(void)
    {
        mComm_myCustomBuffer[0]     = 0x00;     // My custom opcode value telling the master
                                                // that I am sending an 'onChange' mTouch_stateMask
                                                // update.
        
        #if MTOUCH_STATEMASK_BYTES > 0
        mComm_myCustomBuffer[1] = (uint8_t) mTouch_stateMask;
        #endif
        #if MTOUCH_STATEMASK_BYTES > 1
        mComm_myCustomBuffer[2] = (uint8_t) (mTouch_stateMask >> 8);
        #endif
        #if MTOUCH_STATEMASK_BYTES > 2
        mComm_myCustomBuffer[3] = (uint8_t) (mTouch_stateMask >> 16);
        #endif
        #if MTOUCH_STATEMASK_BYTES > 3
        mComm_myCustomBuffer[4] = (uint8_t) (mTouch_stateMask >> 24);
        #endif
    
        mComm_output.vector.pointer = (uint8_t*) (&mComm_myCustomBuffer);
        mComm_output.vector.length  = MTOUCH_STATEMASK_BYTES + 1;
        
        mTouch_state.buttonStateChange = 0;
    }
    
    uint8_t mComm_CustomWriteIterator(void)
    {
        RESET();
        return 0;
    }
    
    //
    // CUSTOM RESULT:
    //
    // This is the packet the PIC will output with the above example, assuming less than 8 sensors are enabled.
    //
    //  Byte0       Byte1       Byte2       Byte3       Byte4       Byte5
    //  ------------------------------------------------------------------
    //  [BREAK]     [0x04]      [0x07]      [0x00]      [0x01]      [0x00]
    //  ------------------------------------------------------------------
    //  |           |           |           |           |           |
    //  |           |           |           |           |           Checksum of the packet minus the byte length
    //  |           |           |           |           mTouch_stateMask value showing Sensor0 is pressed
    //  |           |           |           Custom opcode value stored at location 0 of mComm_myCustomBuffer
    //  |           |           mComm's opcode value for a 'custom read' command
    //  |           Byte length of the packet (not including the byte-length byte)
    //  Start of a packet using UART two way communications
    //
    
#endif