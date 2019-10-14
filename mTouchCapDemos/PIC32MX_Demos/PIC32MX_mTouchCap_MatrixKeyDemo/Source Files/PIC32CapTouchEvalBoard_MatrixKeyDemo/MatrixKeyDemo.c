/*****************************************************************************
* FileName:         mTouchCap_PIC32MX_MatrixKeyDemo.c
* Dependencies:
* Processor:        PIC32
* Compiler:         C32
* Linker:           MPLAB LINK32
* Company:          Microchip Technology Incorporated
*
* Software License Agreement
*
* Copyright � 2011 Microchip Technology Inc.
* Microchip licenses this software to you solely for use with Microchip
* products, according to the terms of the accompanying click-wrap software
* license. Microchip and its licensors retain all right, title and interest in
* and to the software.  All rights reserved. This software and any accompanying
* information is for suggestion only. It shall not be deemed to modify
* Microchip�s standard warranty for its products.  It is your responsibility to
* ensure that this software meets your requirements.
*
* SOFTWARE IS PROVIDED �AS IS� WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESS OR
* IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY OF MERCHANTABILITY, TITLE,
* NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR PURPOSE. IN NO EVENT WILL
* MICROCHIP OR ITS LICENSORS BE LIABLE FOR ANY DIRECT OR INDIRECT DAMAGES OR
* EXPENSES INCLUDING BUT NOT LIMITED TO INCIDENTAL, SPECIAL, INDIRECT, PUNITIVE
* OR CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF PROCUREMENT OF
* SUBSTITUTE GOODS, TECHNOLOGY OR SERVICES, OR ANY CLAIMS BY THIRD PARTIES
* (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF), OR OTHER SIMILAR COSTS.
*
* The aggregate and cumulative liability of Microchip and its licensors for
* damages related to the use of the software will in no event exceed $1000 or
* the amount you paid Microchip for the software, whichever is greater.
*
* MICROCHIP PROVIDES THIS SOFTWARE CONDITIONALLY UPON YOUR ACCEPTANCE OF THESE
* TERMS AND THE TERMS OF THE ACCOMPANYING CLICK-WRAP SOFTWARE LICENSE.
*
*
* Author                    Date                Comment
*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* BDB          26-Jun-2008 First release
* SB           22-Oct-2008
* NK           24-Apr-2009 Porting for 18F46J50 Eval Board
* MC           22-Ian-2010 Porting for PIC32MX795F51
* MWM          28 Mar 2011 Added support for mTouch/PICKit3 Serial Analyzer
*******************************************************************************/

#include    "mTouchConfig.h"
#include    "mTouchCapLED.h"
#include    "mTouchCapAPI.h"
#include    "MatrixKeyDemo.h"
#include    "mTouchCapApp_MatrixKeys.h"

/** External Variables **/
// From mTouchCapAPI.c
extern volatile UINT8 EmTouchDataReady;//global indicating the reading of all channels finished

// From mTouchCapPhy.c
#if   defined( UART_DUMP_RAW_COUNTS )
UINT16 CurRawData[  NUM_HF_READS][MAX_ADC_CHANNELS]; // Scratch storage for UART dump
#elif defined( UART_DUMP_ALL_COUNTS )
UINT16 CurRawData[3*NUM_HF_READS][MAX_ADC_CHANNELS]; // Scratch storage for UART dump
#endif

// Device setup
#pragma config FNOSC    = PRIPLL   // Oscillator Selection: Primary oscillator (XT, HS, EC) w/ PL
#pragma config FPLLIDIV = DIV_2    // PLL Input Divider: Divide by 2
#pragma config FPLLMUL  = MUL_20   // PLL Multiplier: Multiply by 20
#pragma config FPLLODIV = DIV_1    // PLL Output Divider: Divide by 1
#pragma config POSCMOD  = HS       // Primary Oscillator: HS oscillator
#pragma config FCKSM    = CSDCMD   // Clock Switching & Fail Safe Monitor: Clock Switching Disabled, Clock Monitoring Disabled
#pragma config OSCIOFNC = OFF      // CLKO Enable: Disabled
#pragma config IESO     = OFF      // Internal/External Switch-over: Disabled
#pragma config FSOSCEN  = OFF      // Secondary Oscillator Enable: Disabled

#pragma config FPBDIV   = DIV_1    // Peripheral Clock divisor: Divide by 1

#pragma config UPLLEN   = OFF      // USB PLL Disabled
#pragma config UPLLIDIV = DIV_2    // USB PLL Input Divider

#pragma config FWDTEN   = OFF       // Watchdog Timer: Disabled
#pragma config WDTPS    = PS1      // Watchdog Timer Postscale: 1:1

#pragma config CP       = OFF      // Code Protect: OFF
#pragma config BWP      = OFF      // Boot Flash Write Protect: OFF
#pragma config PWP      = OFF      // Program Flash Write Protect: OFF

#pragma config ICESEL   = ICS_PGx2 // ICE/ICD Comm Channel Select: ICE pins shared with PGC1,PGD1
#pragma config DEBUG    = OFF      // Background Debugger Enable: OFF

/* NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE

    Be sure the clock setups, as defined by above, are compatible with the
    clock definitions macros ("GetSystemClock()","GetPeripheralClock()", and
    "GetInstructionClock()") in HardwareProfile.h and the ADC clock setup in
    "mTouchCapADC_InitADC" found in mTouchCap_ADC.c .

   NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE */


void SendDataBuffer(const char *buffer, UINT32 size);

int main(void)
{
#if defined( DUMP_DIAGNOSTICS_VIA_UART )
    char   ButtonMeasString[133];
# if defined( UART_DUMP_RAW_COUNTS ) || \
    defined( UART_DUMP_ALL_COUNTS )
    UINT16 iHF_Read;
# endif//defined( UART_DUMP_RAW_COUNTS )...
#endif//defined( DUMP_DIAGNOSTICS_VIA_UART )

    UINT16 CurrentButtonStatus, LastButtonStatus, CurrentButtonAsserts = 0,
           CurrentButtonMeasurements[MAX_ADC_CHANNELS],
           CurrentAveragedMeasurements[MAX_ADC_CHANNELS];
    UINT16 CurrentWeights[MAX_ADC_CHANNELS];

    DDPCONbits.JTAGEN = 0; // Disable JTAG

    // Initalize global interrupt enable
    INTEnableSystemMultiVectoredInt();

    // Configure the device for maximum performance
    // Given the options, this function will change the flash wait states, RAM
    // wait state and enable prefetch cache but will not change the PBDIV.
    // The PBDIV value is already set via the pragma FPBDIV option.
    SYSTEMConfig(SYS_FREQ, SYS_CFG_WAIT_STATES | SYS_CFG_PCACHE);

    // Setup UART2 for transmission of button data.
    // Taken from C:\Program Files\Microchip\mplabc32\v1.12\examples\plib_examples\uart\uart_basic
    UARTConfigure(UART2, UART_ENABLE_PINS_TX_RX_ONLY);
    UARTSetFifoMode(UART2, UART_INTERRUPT_ON_TX_NOT_FULL | UART_INTERRUPT_ON_RX_NOT_EMPTY);
    UARTSetLineControl(UART2, UART_DATA_SIZE_8_BITS | UART_PARITY_NONE | UART_STOP_BITS_1);
    UARTSetDataRate(UART2, GetPeripheralClock(), 115200);
    UARTEnable(UART2, UART_ENABLE_FLAGS(UART_PERIPHERAL | UART_RX | UART_TX));

    // Setup data structures for using Direct Keys
    mTouchCapApp_MatrixKeys_Create();

    /* This is mandatory function call to initilize physical layer.
       Call this function before any application layer code. */
    mTouchCapAPI_Init();

    // Run "Chaser" LED sequence on slider LEDs to announce start of application
    mTouchCapLED_PowerUpSequence();

    // Start button measurements
    Set_ScanTimer_IE_Bit_State(ENABLE);  //Enable interrupt
    Set_ScanTimer_ON_Bit_State(ENABLE);  //Run timer

    // Setup for detection/interpretation
    LastButtonStatus = 0;

    while(1)
    {
        if(EmTouchDataReady == 1)  //This flag is set by Timer ISR when all channels have been read
        {
            //  Calculate new button values and return the measurement updates
            mTouchCapPhy_UpdateData(CurrentButtonMeasurements,
                                    CurrentAveragedMeasurements,
                                    CurrentWeights,
                                    TRUE, FILTER_METHOD_USECHANNEL);

            // Update button and LED status and return button status for use with mTouch GUI on PC
            CurrentButtonStatus = mTouchCapApp_MatrixKeys_Demo();

            if ( LastButtonStatus > 0 && CurrentButtonStatus == 0 )
            {
                CurrentButtonAsserts = LastButtonStatus; //Buttons have fired.
            }
            else
            { // Commented out to provide memory of last button asserted.
              //ButtonAsserts = 0;
            }

            /*
               Determining Channel Load Order:

               Button Layout:

                     Column: Col 1  Col 2  Col 3  Col 4
                              AN8    AN9   AN10   AN11
                Row 1: AN14  Btn 0  Btn 1  Btn 2  Btn 3

                Row 2: AN13  Btn 4  Btn 5  Btn 6  Btn 7

                Row 3: AN12  Btn 8  Btn 9  Btn10  Btn11

               Resulting load Order
                (AN14,AN8), (AN14,AN9), (AN14,AN10), (AN14,AN11),
                (AN13,AN8), (AN13,AN9), (AN13,AN10), (AN14,AN11),
                (AN12,AN8), (AN13,AN9), (AN13,AN10), (AN14,AN11),

               Removing channels already loaded:
                (AN14,AN8), (---,AN9),  (---,AN10),  (---,AN11),
                (AN13,---), (---,---),  (---,---),   (---,---),
                (AN12,---), (---,---),  (---,---),   (---,---),

               So the channels are loaded into memory in this order:
                Channel Load:  #0,   #1,   #2,   #3,   #4,   #5,  #6
                ADC Channel: AN14,  AN8,  AN9, AN10, AN11, AN13, AN12
                Button Func: Row1, Col1, Col2, Col3, Col4, Row2, Row3

               Sorting to output rows in order followed by columns:
                Channel Load:  #0,   #5,   #6,   #1,   #2,   #3,   #4,
                Button Func: Row1, Row2, Row3, Col1, Col2, Col3, Col4,

               This order is used below to output measurements to the mTouch GUI
               or to a hyperterminal for later analysis.
             */

#          if defined( UART_DUMP_RAW_COUNTS )
            for ( iHF_Read = 0; iHF_Read <   NUM_HF_READS; iHF_Read++ )
#          elif defined( UART_DUMP_ALL_COUNTS )
            for ( iHF_Read = 0; iHF_Read < 3*NUM_HF_READS; iHF_Read++ )
#          endif
#          if defined( UART_DUMP_RAW_COUNTS ) || defined( UART_DUMP_ALL_COUNTS )
            {
                sprintf(ButtonMeasString,
                        "%05d,%05d,%05d,"
                        "%05d,%05d,%05d,%05d,"
                        "%05d,%05d,%05d,%05d,"
                        "%05d,%05d,%05d,%05d,"
                        "%05d\r\n",
                        CurrentButtonStatus,CurrentButtonAsserts,0,
                        CurRawData[iHF_Read][0],CurRawData[iHF_Read][5],CurRawData[iHF_Read][6], 0,
                        CurRawData[iHF_Read][1],CurRawData[iHF_Read][2],CurRawData[iHF_Read][3],CurRawData[iHF_Read][4],
                        0,0,0,0,
                        iHF_Read+1);
                SendDataBuffer(ButtonMeasString, strlen(ButtonMeasString) );
            }
#          endif

#if       defined( DUMP_DIAGNOSTICS_VIA_UART )
            // Format report string
            sprintf(ButtonMeasString,
                    "%05d,%05d,%05d,"
                    "%05d,%05d,%05d,%05d,"
                    "%05d,%05d,%05d,%05d\r\n",
                    CurrentButtonStatus,
                    CurrentButtonAsserts,
                    0, // Zero for slider value
                    CurrentButtonMeasurements[0], //Row 1: AN14: Load #0
                    CurrentButtonMeasurements[5], //Row 2: AN13: Load #5
                    CurrentButtonMeasurements[6], //Row 3: AN12: Load #6
                                               0, //Placeholder for unused row
                    CurrentButtonMeasurements[1], //Col 1: AN8:  Load #1
                    CurrentButtonMeasurements[2], //Col 2: AN9:  Load #2
                    CurrentButtonMeasurements[3], //Col 3: AN10: Load #3
                    CurrentButtonMeasurements[4]);//Col 4: AN11: Load #4

            // Send report string back to mTouch GUI via UART #2
            SendDataBuffer(ButtonMeasString, strlen(ButtonMeasString) );
#         endif//defined( DUMP_DIAGNOSTICS_VIA_UART )

            LastButtonStatus = CurrentButtonStatus;

            EmTouchDataReady = 0;                  //clear flag
            Set_ScanTimer_IE_Bit_State(ENABLE);    //Enable interrupt
            Set_ScanTimer_ON_Bit_State(ENABLE);    //Run timer

        } // end if(EmTouchDataReady)
    } //end while (1)
}  // end main()

void mTouchCapApp_PortSetup(void)
{

    TRISB = INIT_TRISB_VALUE;
    TRISC = INIT_TRISC_VALUE;
    TRISD = INIT_TRISD_VALUE;
    TRISE = INIT_TRISE_VALUE;
    TRISF = INIT_TRISF_VALUE;
    TRISG = INIT_TRISG_VALUE;

    PORTB = INIT_PORTB_VALUE;
    PORTC = INIT_PORTC_VALUE;
    PORTD = INIT_PORTD_VALUE;
    PORTE = INIT_PORTE_VALUE;
    PORTG = INIT_PORTG_VALUE;

    PORTE = 0x0000;
    PORTD = 0x0000;

}

// Taken from C:\Program Files\Microchip\mplabc32\v1.12\examples\plib_examples\uart\uart_basic
void SendDataBuffer(const char *buffer, UINT32 size)
{
    while(size)
    {
        while(!UARTTransmitterIsReady(UART2))
            ;

        UARTSendDataByte(UART2, *buffer);

        buffer++;
        size--;
    }

    while(!UARTTransmissionHasCompleted(UART2))
        ;
}

