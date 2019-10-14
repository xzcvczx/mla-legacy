/*****************************************************************************
* FileName:         FourChSliderDemo.c
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
#include    "mTouchCapApp_FourChanSlider.h"
#include    "FourChSliderDemo.h"

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

void SendDataBuffer(const char *buffer, UINT32 size);

int main(void)
{
#if defined( DUMP_DIAGNOSTICS_VIA_UART )
    char   ButtonMeasString[133];
# if defined( UART_DUMP_RAW_COUNTS ) || \
    defined( UART_DUMP_ALL_COUNTS )
    UINT16 iHF_Read;
# endif//defined( UART_DUMP_RAW_COUNTS )...
#endif// defined( DUMP_DIAGNOSTICS_VIA_UART )

    UINT16 ButtonStatus,
           CurrentButtonMeasurements[MAX_ADC_CHANNELS],
           CurrentAveragedMeasurements[MAX_ADC_CHANNELS];
    UINT16 CurrentWeights[MAX_ADC_CHANNELS]; // Normalized percentage of button presses,
                                             // 256 = 100% of average voltage, i.e. no press

#if defined( DUMP_DIAGNOSTICS_VIA_UART )
    UINT16 BaudValue;   // Holds the value of baud register
    UINT16 U2ModeValue; // Holds the value of uart config reg
    UINT16 U2StatusValue;  // Status
#endif//defined( DUMP_DIAGNOSTICS_VIA_UART )

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

#if defined( DUMP_DIAGNOSTICS_VIA_UART )
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
#endif//defined( DUMP_DIAGNOSTICS_VIA_UART )

    // Setup data structures for using Direct Keys
    mTouchCapApp_FourChannelSlider_Create();

    /* This is mandatory function call to initilize physical layer.
       Call this function before any application layer code. */
    mTouchCapAPI_Init();

    // Run "Chaser" LED sequence on slider LEDs to announce start of application
    mTouchCapLED_PowerUpSequence();

    // Start button measurements
    Set_ScanTimer_IE_Bit_State(ENABLE);  //Enable interrupt
    Set_ScanTimer_ON_Bit_State(ENABLE);  //Run timer

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
            ButtonStatus = mTouchCapApp_FourChannelSlider_Demo();

#          if defined( UART_DUMP_RAW_COUNTS )
            for ( iHF_Read = 0; iHF_Read <   NUM_HF_READS; iHF_Read++ )
#          elif defined( UART_DUMP_ALL_COUNTS )
            for ( iHF_Read = 0; iHF_Read < 3*NUM_HF_READS; iHF_Read++ )
#          endif
#          if defined( UART_DUMP_RAW_COUNTS ) || defined( UART_DUMP_ALL_COUNTS )
            {
                sprintf(ButtonMeasString,
                        "%05d,%05d,%05d"
                        "%05d,%05d,%05d,%05d,"
                        "%05d,%05d,%05d,%05d,"
                        "%05d,%05d,%05d,%05d,"
                        "%05d\r\n",
                        0,0,256*ButtonStatus/100,
                        CurRawData[iHF_Read][0],CurRawData[iHF_Read][1],CurRawData[iHF_Read][2],CurRawData[iHF_Read][3],
                        0,0,0,0,
                        0,0,0,0,
                        iHF_Read+1);
                while(BusyUART2());
                putsUART2((unsigned int *)ButtonMeasString);
            }
#          endif//defined( DUMP_DIAGNOSTICS_VIA_UART )

#          if defined( DUMP_DIAGNOSTICS_VIA_UART )
            // Format report string
            sprintf(ButtonMeasString,
                    "%05d,%05d,%05d,"
                    "%05d,%05d,%05d,%05d,"
                    "%05d,%05d,%05d,%05d,"
                    "\r\n",
                    0,0,256*ButtonStatus/100,
                    CurrentButtonMeasurements[0],CurrentAveragedMeasurements[0],
                    CurrentButtonMeasurements[1],CurrentAveragedMeasurements[1],
                    CurrentButtonMeasurements[2],CurrentAveragedMeasurements[2],
                    CurrentButtonMeasurements[3],CurrentAveragedMeasurements[3]);
            while(BusyUART2());
            putsUART2((unsigned int *)ButtonMeasString);
#          endif//defined( DUMP_DIAGNOSTICS_VIA_UART )

            EmTouchDataReady = 0;                   //clear flag
            Set_ScanTimer_IE_Bit_State(ENABLE);     //Enable interrupt
            Set_ScanTimer_ON_Bit_State(ENABLE);     //Run timer

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


