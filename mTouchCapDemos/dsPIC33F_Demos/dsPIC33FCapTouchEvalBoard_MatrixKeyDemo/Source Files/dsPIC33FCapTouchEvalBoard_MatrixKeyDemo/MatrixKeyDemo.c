/*****************************************************************************
* FileName:         mTouchCap_PIC32MX_MatrixKeyDemo.c
* Dependencies:
* Processor:        dsPIC33FJ128GP706A
* Compiler:         C30
* Linker:           MPLAB LINK30
* Company:          Microchip Technology Incorporated
*
* Software License Agreement
*
* Copyright © 2011 Microchip Technology Inc.
* Microchip licenses this software to you solely for use with Microchip
* products, according to the terms of the accompanying click-wrap software
* license. Microchip and its licensors retain all right, title and interest in
* and to the software.  All rights reserved. This software and any accompanying
* information is for suggestion only. It shall not be deemed to modify
* Microchip’s standard warranty for its products.  It is your responsibility to
* ensure that this software meets your requirements.
*
* SOFTWARE IS PROVIDED “AS IS” WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESS OR
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

#include <p33Fxxxx.h>
#include <uart.h>

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

#define FIN  8000000                      //XT frequency
#define FCY  40000000                     //XT w/PLL
#define PWM_FREQ 20000                    //20KHz PWM Freq

#define PLLN1VALUE 2
#define PLLN2VALUE 2
#define PLLFBD_VALUE ((((FCY*2)*(PLLN1VALUE*PLLN2VALUE))/(FIN))-2)

void updatePICkitSerial(void);

/* Internal FRC Oscillator */
_FOSCSEL(FNOSC_FRC);

/*  Clock Switching is enabled and
**  Fail Safe Clock Monitor is disabled
**  OSC2 Pin Function: OSC2 is Clock Output
**  Primary Oscillator Mode: Disabled */
_FOSC(FCKSM_CSECMD & OSCIOFNC_ON  & POSCMD_XT);

/*Watchdog Timer Enabled/disabled by user software*/
_FWDT(FWDTEN_OFF);


/* Background Debug Enable Bit: Device will Reset in user mode
** Debugger/Emulator Enable Bit: Reset in operational mode
** JTAG Enable Bit: JTAG is disabled
** ICD communication channel select bits: communicate on PGC3/EMUC3 and PGD3/EMUD3 **/
_FICD(JTAGEN_OFF & ICS_PGD1);

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

    UINT16 BaudValue;   // Holds the value of baud register
    UINT16 U2ModeValue; // Holds the value of uart config reg
    UINT16 U2StatusValue;  // Status


    // Fosc= Fin*M/(N1*N2), Fcy=Fosc/2
    // Fosc= 8.0*40/(2*2)= 80.000Mhz for 8.00 input clock
    /****************** Clock definitions *********************************/
    PLLFBD = PLLFBD_VALUE;      // M=40
    CLKDIVbits.PLLPOST=0;       // N1=2
    CLKDIVbits.PLLPRE=0;        // N2=2
    OSCTUN=0;                   // Tune FRC oscillator, if FRC is used

    // Clock switch to incorporate PLL
    __builtin_write_OSCCONH(0x01);      // Initiate Clock Switch to
                                        // FRC with PLL (NOSC=0b001)
    __builtin_write_OSCCONL(0x01);      // Start clock switching
    while (OSCCONbits.COSC != 0b001);   // Wait for Clock switch to occur

    // Wait for PLL to lock
    while(OSCCONbits.LOCK!=1) {};

    // Configure UART2 for diagnostic dumps to ProfiLab
    BaudValue     = 80-1;
    U2ModeValue   = UART_EN & UART_IDLE_STOP & UART_IrDA_DISABLE &
                    UART_MODE_FLOW & UART_UEN_00 &
                    UART_DIS_WAKE & UART_DIS_LOOPBACK & UART_DIS_ABAUD &
                    UART_UXRX_IDLE_ZERO & UART_BRGH_FOUR & UART_NO_PAR_8BIT & UART_1STOPBIT;
    U2StatusValue = UART_INT_TX_BUF_EMPTY & UART_IrDA_POL_INV_ZERO  & UART_TX_ENABLE &
                    UART_INT_RX_BUF_FUL & UART_ADR_DETECT_DIS & UART_RX_OVERRUN_CLEAR &
                    UART_SYNC_BREAK_DISABLED;

    OpenUART2(U2ModeValue, U2StatusValue, BaudValue);

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

#if defined( TICKLE_LED1 )
    TRISFbits.TRISF0 = 0; // Use J2 Pin 5 as flag
    LATFbits.LATF0 = 0;
#endif//defined( TICKLE_LED1 )

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

            // Check for button asserts: If buttons were pressed before, but none pressed now
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
                        CurrentButtonStatus,CurrentButtonAsserts, 0, // Zero for slider value
                        CurRawData[iHF_Read][0],CurRawData[iHF_Read][5],CurRawData[iHF_Read][6], 0,
                        CurRawData[iHF_Read][1],CurRawData[iHF_Read][2],CurRawData[iHF_Read][3],CurRawData[iHF_Read][4],
                        0, 0, 0, 0,
                        iHF_Read+1);
                while(BusyUART2());
                putsUART2((unsigned int *)ButtonMeasString);
            }
#          endif

#if       defined( DUMP_DIAGNOSTICS_VIA_UART )
            // Format report string
            sprintf(ButtonMeasString,
                    "%05d,%05d,%05d,"
                    "%05d,%05d,%05d,%05d,"
                    "%05d,%05d,%05d,%05d\r\n",
                    CurrentButtonStatus, CurrentButtonAsserts, 0, // Zero for slider value
                    CurrentButtonMeasurements[0], //Row 1: AN14: Load #0
                    CurrentButtonMeasurements[5], //Row 2: AN13: Load #5
                    CurrentButtonMeasurements[6], //Row 3: AN12: Load #6
                                               0, //Placeholder for unused row
                    CurrentButtonMeasurements[1], //Col 1: AN8:  Load #1
                    CurrentButtonMeasurements[2], //Col 2: AN9:  Load #2
                    CurrentButtonMeasurements[3], //Col 3: AN10: Load #3
                    CurrentButtonMeasurements[4]);//Col 4: AN11: Load #4
            while(BusyUART2());
            putsUART2((unsigned int *)ButtonMeasString);
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
    //init the LED ports
    TRISC = 0xFFF9;
    TRISD = 0xFF00;
    TRISG = 0x0FFC;

    PORTB = 0xFF00;
    PORTC = 0xFFF9;
    PORTG = 0x0FFC;

    /***** Ports init for charging Chold and Discahrging Csensor ****/
    TRISB=0xFF0F;

#if defined(USE_SLIDER_2CHNL)  || defined(USE_SLIDER_4CHNL)
    LATB = 0xFFF0;
    PORTB = 0xFFF0;
#endif

#if defined(USE_DIRECT_KEY)  || defined(USE_MATRIX_KEYS)
    LATB = 0x00FF;
    PORTB = 0x00FF;
#endif

}
