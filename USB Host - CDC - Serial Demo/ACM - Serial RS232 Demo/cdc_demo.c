/******************************************************************************

   USB Host CDC ACM-RS232 Demo

This is a simple demo to show how a embedded CDC host can be implemented. When a
CDC-RS232 device is attached onto the bus, the demo application polls for input data
and displays the data on the LCD mounted on the explorer 16 board. When a switch
SW6 on explorer 16 board is pressed a test string is sent to the device attached
to simulate the OUT transfer.

This demo runs on an Explorer 16 (DM240001) with a PIC24FJ256GB110 (USB) PIM
(MA240014) and a USB PICtail Plus Daughter Board (AC164127).

Off the shelf available USB-RS232 dongles available in the market generally
dont comply with the CDC specification, this demo is tested with Microchip
USB Device - CDC - Serial Emulator demo.

Program FSUSB board for Microchip "USB Device - CDC - Serial Emulator demo ".
FSUSB demo board acts as a device in this configuration. Connect serial port
from desk top to FSUSB board . Connect USB cable between FSUSB board and
PIC tail USB connector(In host mode). Open a Hyperterminal application to
transfer serial data to FSUSB board. Configure hyperterminal application for
the configuration same as on the embedded host controller. Connect the FSUSB board
and Explorer 16 demo board. The LCD display on Explorer 16 board shows
-----------------
|Host CDC Demo   |
|Device Attached |
-----------------

The device is now enumerated and ready for data transfers with the host.
Now enter any data on the Hyperterminal the same data is displayed on the LCD
mounted on the Explorer 16 demo board.

Press switch SW6 on Explorer 16 board and a test string " ****Test Data***** "
is displayed on the Hyperterminal window.

*******************************************************************************/
//DOM-IGNORE-BEGIN
/******************************************************************************

* File Name:       cdc_demo.c
* Dependencies:    None
* Processor:       PIC24FJ256GB110
* Compiler:        C30 v2.01
* Company:         Microchip Technology, Inc.

Software License Agreement

The software supplied herewith by Microchip Technology Incorporated
(the �Company�) for its PICmicro� Microcontroller is intended and
supplied to you, the Company�s customer, for use solely and
exclusively on Microchip PICmicro Microcontroller products. The
software is owned by the Company and/or its supplier, and is
protected under applicable copyright laws. All rights are reserved.
Any use in violation of the foregoing restrictions may subject the
user to criminal sanctions under applicable laws, as well as to
civil liability for the breach of the terms and conditions of this
license.

THIS SOFTWARE IS PROVIDED IN AN �AS IS� CONDITION. NO WARRANTIES,
WHETHER EXPRESS, IMPLIED OR STATUTORY, INCLUDING, BUT NOT LIMITED
TO, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
PARTICULAR PURPOSE APPLY TO THIS SOFTWARE. THE COMPANY SHALL NOT,
IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL OR
CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.

Author          Date    Comments
--------------------------------------------------------------------------------
ADG          15-Sep-2008 First release

*******************************************************************************/
//DOM-IGNORE-END
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "GenericTypeDefs.h"
#include "HardwareProfile.h"
#include "usb_config.h"
#include "LCDBlocking.h"
#include "USB\usb.h"
#include "USB\usb_host_cdc.h"
#include "USB\usb_host_cdc_interface.h"

#if defined( __PIC32MX__ )
#endif

//#define DEBUG_MODE
#ifdef DEBUG_MODE
    #include "uart2.h"
#endif
// *****************************************************************************
// *****************************************************************************
// Constants
// *****************************************************************************
// *****************************************************************************

// We are taking Timer 3  to schedule input report transfers

#define STOP_TIMER_IN_IDLE_MODE     0x2000
#define TIMER_SOURCE_INTERNAL       0x0000
#define TIMER_ON                    0x8000
#define GATED_TIME_DISABLED         0x0000
#define TIMER_16BIT_MODE            0x0000

#define TIMER_PRESCALER_1           0x0000
#define TIMER_PRESCALER_8           0x0010
#define TIMER_PRESCALER_64          0x0020
#define TIMER_PRESCALER_256         0x0030
#define TIMER_INTERRUPT_PRIORITY    0x0001


// *****************************************************************************
// *****************************************************************************
// Configuration Bits
// *****************************************************************************
// *****************************************************************************

// Configuration Bit settings
//      Primary Oscillator:             HS
//      Internal USB 3.3v Regulator:    Disabled
//      IOLOCK:                         Set Once
//      Primary Oscillator Output:      Digital I/O
//      Clock Switching and Monitor:    Both disabled
//      Oscillator:                     Primary with PLL
//      USB 96MHz PLL Prescale:         Divide by 2
//      Internal/External Switch Over:  Enabled
//      WDT Postscaler:                 1:32768
//      WDT Prescaler:                  1:128
//      WDT Window:                     Non-window Mode
//      Comm Channel:                   EMUC2/EMUD2
//      Clip on Emulation Mode:         Reset into Operation Mode
//      Write Protect:                  Disabled
//      Code Protect:                   Disabled
//      JTAG Port Enable:               Disabled

#define PLL_96MHZ_OFF   0xFFFF
#define PLL_96MHZ_ON    0xF7FF

_CONFIG2(FNOSC_PRIPLL & POSCMOD_HS & PLL_96MHZ_ON & PLLDIV_DIV2) // Primary HS OSC with PLL, USBPLL /2
_CONFIG1(JTAGEN_OFF & FWDTEN_OFF & ICS_PGx2)   // JTAG off, watchdog timer off


// *****************************************************************************
// *****************************************************************************
// Data Structures
// *****************************************************************************
// *****************************************************************************

typedef enum _APPL_STATE
{
    DEMO_INITIALIZE,
    DEVICE_NOT_CONNECTED,
    DEVICE_CONNECTED, /* Device Enumerated  - Report Descriptor Parsed */
    READY_TO_TX_RX,
    GET_IN_DATA,
    GET_IN_DATA_WAIT,
    SEND_OUT_DATA,
    SEND_OUT_DATA_WAIT,
    ERROR_REPORTED      /* need to add application states for data interface */
} APPL_STATE;


// *****************************************************************************
// *****************************************************************************
// Internal Function Prototypes
// *****************************************************************************
// *****************************************************************************
void InitializeTimer( void );
BOOL InitializeSystem ( void );

// *****************************************************************************
// *****************************************************************************
// Macros
// *****************************************************************************
// *****************************************************************************
#define MAX_ALLOWED_CURRENT             (500)         // Maximum power we can supply in mA

#define MAX_NO_OF_IN_BYTES  64
#define MAX_NO_OF_OUT_BYTES 64 // Application can modify this macro beyond 64 bytes, client driver
                               // will take care of completing the transfer in multiple transactions

// Macro to fill a line of LCD data.
#define FILL_LCD_LINE(l,p) {int i; for(i=0;i<16;i++)LcdData[(l)-1][i]=(p)[i];}

// *****************************************************************************
// *****************************************************************************
// Global Variables
// *****************************************************************************
// *****************************************************************************

volatile APPL_STATE  APPL_Demo_State;

BYTE USB_CDC_IN_Data_Array[MAX_NO_OF_IN_BYTES];
BYTE USB_CDC_OUT_Data_Array[MAX_NO_OF_OUT_BYTES];

BYTE        LCDIndex;
BYTE        LcdData[2][16]; // LCD Display data
WORD        SwitchState;    // Bitmap of Switch states (only 3 & 6 are used)
BOOL displayOnce = FALSE;

// Initial data for the LCD display.
const char *LcdDeviceAttached[] = { "Host CDC Demo   ","Device Attached "};
const char *LcdDeviceDetached[] = { "Host CDC Demo   ","Device Detached "};

const char *LcdDeviceNotSupported[] = { "Attached Device","Not Supported"};

// Test data being sent out
const char OutData[] = { " ****Test Data***** "};

/*************************************************************************
 * Function:        InitializeSystem
 *
 * Preconditions:   None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Returns:         TRUE if successful, FALSE if not.
 *
 * Side Effects:    See below
 *
 * Overview:        This routine initializes the processor and peripheral,
 *                  setting clock speeds and enabling any required
 *                  features.
 *************************************************************************/

BOOL InitializeSystem ( void )
{
    #if defined( __PIC24FJ256GB110__ )
        // Configure U2RX - put on pin 49 (RP10)
        RPINR19bits.U2RXR = 10;

        // Configure U2TX - put on pin 50 (RP17)
        RPOR8bits.RP17R = 5;
    #endif
    OSCCON = 0x3302;    // Enable secondary oscillator
    CLKDIV = 0x0000;    // Set PLL prescaler (1:1)

    TRISA = 0x0000;
    TRISD = 0x00C0;

    // Init LCD
    LCDInit();

    // Init LEDs
    mInitAllLEDs();
    mLED_3_Off();
    mLED_4_Off();

    // Init Switches
    mInitAllSwitches();
    SwitchState = sw6;

    // Init UART
    UART2Init();

    InitializeTimer(); // start 10ms timer to schedule input reports

    // Set Default demo state

    return TRUE;
} // InitializeSystem



/*************************************************************************
 * Function:        Switch6WasPressed
 *
 * Preconditions:   Assumes SwitchState & Switches have been initialized
 *
 * Input:           None
 *
 * Output:          None
 *
 * Returns:         TRUE if the switch has been pressed, FALSE otherwise
 *
 * Side Effects:    SwitchState has been updated
 *
 * Overview:        Determines if the switched named has been pressed
 *                  since last time the routine was called.
 *************************************************************************/
BOOL Switch6WasPressed(void)
{
    WORD sw6_state;

    sw6_state = sw6;
  
    if( sw6_state != SwitchState)
    {
        SwitchState = sw6_state;

        if(SwitchState)
            return TRUE;                // Was pressed
    }

    return FALSE;                       // Was not pressed

} // Switch6WasPressed


/****************************************************************************
  Function:
     void InitializeTimer( void )

  Description:
    This function initializes the tick timer.  It configures and starts the
    timer, and enables the timer interrupt.

  Precondition:
    None

  Parameters:
    None

  Returns:
    None

  Remarks:
    None
  ***************************************************************************/
void InitializeTimer( void )
{
    WORD timerPeriod;

    IPC2bits.T3IP = TIMER_INTERRUPT_PRIORITY;
    IFS0bits.T3IF = 0;

    TMR3 = 0;

     // TIMER_PERIOD is equivalent to 10micro sec , appl needs to calculate
     // the timerPeriod from the expected BAUD Rate of the device.
     // timerPeriod = TIMER_PERIOD *(100000/Baudrate in Bytes perSec)
    timerPeriod = TIMER_PERIOD*(100000/(USB_CDC_BAUDRATE_SUPPORTED/8));
        // adjust the timer presaclar if poll rate is too high
        // 20000 counts correspond to 10ms , so current pre sacaler setting will 
        // allow maximum 30ms poll interval
    PR3 = timerPeriod;
    T3CON = TIMER_ON | STOP_TIMER_IN_IDLE_MODE | TIMER_SOURCE_INTERNAL |
            GATED_TIME_DISABLED | TIMER_16BIT_MODE | TIMER_PRESCALER;

    IEC0bits.T3IE = 1;

    return;
}

/****************************************************************************
  Function:
    void __attribute__((__interrupt__, auto_psv)) _T3Interrupt(void)

  Description:
    Timer ISR, used to update application state. If no transfers are pending
    new input request is scheduled.
  Precondition:
    None

  Parameters:
    None

  Return Values:
    None

  Remarks:
    None
  ***************************************************************************/

void __attribute__((__interrupt__, auto_psv)) _T3Interrupt( void )
{
    if (IFS0bits.T3IF)
    {
        IFS0bits.T3IF   = 0;
        if(READY_TO_TX_RX == APPL_Demo_State)
        {
            APPL_Demo_State = GET_IN_DATA; // If no report is pending schedule new request
        }
    }
}

//******************************************************************************
//******************************************************************************
// USB Support Functions
//******************************************************************************
//******************************************************************************

BOOL USB_ApplicationEventHandler( BYTE address, USB_EVENT event, void *data, DWORD size )
{
    switch( event )
    {
        case EVENT_VBUS_REQUEST_POWER:
            // The data pointer points to a byte that represents the amount of power
            // requested in mA, divided by two.  If the device wants too much power,
            // we reject it.
            if (((USB_VBUS_POWER_EVENT_DATA*)data)->current <= (MAX_ALLOWED_CURRENT / 2))
            {
                return TRUE;
            }
            else
            {
                UART2PrintString( "\r\n***** USB Error - device requires too much current *****\r\n" );
            }
            break;

        case EVENT_VBUS_RELEASE_POWER:
            // Turn off Vbus power.
            // The PIC24F with the Explorer 16 cannot turn off Vbus through software.
            return TRUE;
            break;

        case EVENT_HUB_ATTACH:
            UART2PrintString( "\r\n***** USB Error - hubs are not supported *****\r\n" );
            return TRUE;
            break;

        case EVENT_UNSUPPORTED_DEVICE:
            UART2PrintString( "\r\n***** USB Error - device is not supported *****\r\n" );
            // Init LCD message
            FILL_LCD_LINE(1, &LcdDeviceNotSupported[0][0]);
            FILL_LCD_LINE(2, &LcdDeviceNotSupported[1][0]);
            
            // display message
            LCDWriteLine(1, (char *)&LcdData[0][0] );
            LCDWriteLine(2, (char *)&LcdData[1][0] );
            return TRUE;
            break;

        case EVENT_CANNOT_ENUMERATE:
            UART2PrintString( "\r\n***** USB Error - cannot enumerate device *****\r\n" );
            return TRUE;
            break;

        case EVENT_CLIENT_INIT_ERROR:
            UART2PrintString( "\r\n***** USB Error - client driver initialization error *****\r\n" );
            return TRUE;
            break;

        case EVENT_OUT_OF_MEMORY:
            UART2PrintString( "\r\n***** USB Error - out of heap memory *****\r\n" );
            return TRUE;
            break;

        case EVENT_UNSPECIFIED_ERROR:   // This should never be generated.
            UART2PrintString( "\r\n***** USB Error - unspecified *****\r\n" );
            return TRUE;
            break;

        case EVENT_DETACH:                   // USB cable has been detached (data: BYTE, address of device)
            #ifndef MINIMUM_BUILD
           displayOnce = FALSE;
//                UART2PrintString( "API: Device detached.\r\n" );
            #endif
            return TRUE;
            break;

// CDC Specific events

        case EVENT_CDC_NONE:
        case EVENT_CDC_ATTACH:
        case EVENT_CDC_COMM_READ_DONE:
        case EVENT_CDC_COMM_WRITE_DONE:
        case EVENT_CDC_DATA_READ_DONE:
        case EVENT_CDC_DATA_WRITE_DONE:
            return TRUE;
            break;
        case EVENT_CDC_NAK_TIMEOUT:
                APPL_Demo_State = READY_TO_TX_RX;
                return TRUE;
            break;
        
        case EVENT_CDC_RESET:
            #ifndef MINIMUM_BUILD
//                UART2PrintString( "API: CDC Reset performed.\r\n" );
            #endif
            return TRUE;
            break;
        default :
            break;
    }
    return FALSE;
}

void USBHostCDC_Clear_Out_DATA_Array(void)
{
    BYTE i;

    for(i=0;i<=MAX_NO_OF_OUT_BYTES;i++)
        USB_CDC_OUT_Data_Array[i] = 0;
}


//******************************************************************************
//******************************************************************************
// Main
//******************************************************************************
//******************************************************************************
BYTE ErrorDriver;
BYTE NumOfBytesRcvd;

int main (void)
{
    BYTE i;
        
    // Initialize the processor and peripherals.
    if ( InitializeSystem() != TRUE )
    {
        UART2PrintString( "\r\n\r\nCould not initialize USB Custom Demo App - system.  Halting.\r\n\r\n" );
        while (1);
    }
    // Initialize USB layers
    USBInitialize( 0 );

    while(1)
    {
        USBTasks();
        if(!USBHostCDC_ApiDeviceDetect()) /* TRUE if device is enumerated without error */
        {
           APPL_Demo_State = DEVICE_NOT_CONNECTED;
//           displayOnce = FALSE;
        }

        switch(APPL_Demo_State)
        {
            case DEMO_INITIALIZE:
                        APPL_Demo_State = DEVICE_NOT_CONNECTED;
                        break;


            case DEVICE_NOT_CONNECTED:
                         USBTasks();
                         if(displayOnce == FALSE)
                         {
                            // Init LCD message
                            FILL_LCD_LINE(1, &LcdDeviceDetached[0][0]);
                            FILL_LCD_LINE(2, &LcdDeviceDetached[1][0]);
                         
                            // display message
                            LCDWriteLine(1, (char *)&LcdData[0][0] );
                            LCDWriteLine(2, (char *)&LcdData[1][0] );
                            displayOnce = TRUE;
                         }
                         if(USBHostCDC_ApiDeviceDetect()) /* TRUE if device is enumerated without error */
                         {
                            APPL_Demo_State = DEVICE_CONNECTED;
                         }

//                       }

                break;
            case DEVICE_CONNECTED:
                            // Init LCD message
                            FILL_LCD_LINE(1, &LcdDeviceAttached[0][0]);
                            FILL_LCD_LINE(2, &LcdDeviceAttached[1][0]);
                         
                            // display message
                            LCDWriteLine(1, (char *)&LcdData[0][0] );
                            LCDWriteLine(2, (char *)&LcdData[1][0] );
                            APPL_Demo_State = READY_TO_TX_RX;
               break;

            case GET_IN_DATA:
                            if(USBHostCDC_Api_Get_IN_Data(MAX_NO_OF_IN_BYTES, USB_CDC_IN_Data_Array))
                            {
                                APPL_Demo_State = GET_IN_DATA_WAIT;
                            }
                            else
                            { 
                                APPL_Demo_State = READY_TO_TX_RX;
                            }
                break;
            
            case GET_IN_DATA_WAIT:
                        if(USBHostCDC_ApiTransferIsComplete(&ErrorDriver,&NumOfBytesRcvd))
                        {   /* check for error */
                            if(!ErrorDriver)
                            {
                                if(NumOfBytesRcvd > 0)
                                {
                                   for(i=0; i<NumOfBytesRcvd; i++)
                                    {
                                       UART2PutChar(USB_CDC_IN_Data_Array[i]);
                                       // update LCD  Buffer
                                           if(LCDIndex >= 32)
                                            {
                                               LCDIndex = 0;
                                               // Clear Display
                                               FILL_LCD_LINE(1, "                  ");
                                               FILL_LCD_LINE(2, "                  ");
//                                             ClearLCDBuffers();
                                               LCDErase();
                                            }
                                       if(LCDIndex < 16)
                                        {
                                           LcdData[0][LCDIndex] = USB_CDC_IN_Data_Array[i];
                                           LCDIndex++;
                                        }
                                        else
                                        {
                                           LcdData[1][LCDIndex-16] = USB_CDC_IN_Data_Array[i];
                                           LCDIndex++;
                                        }
                                    }
                                        // display message
                                        LCDWriteLine(1, (char *)&LcdData[0][0] );
                                        LCDWriteLine(2, (char *)&LcdData[1][0] );
                                }
                                APPL_Demo_State = READY_TO_TX_RX;
                            }
                            else
                            {
    #ifdef DEBUG_MODE
                             UART2PrintString( "!" );
    #endif
                                APPL_Demo_State = READY_TO_TX_RX;

                            }
                        }   
                break;

            case SEND_OUT_DATA:
                            if(USBHostCDC_Api_Send_OUT_Data((sizeof(OutData)/sizeof(OutData[0]))
                                                             ,USB_CDC_OUT_Data_Array))
                            {
                                APPL_Demo_State = SEND_OUT_DATA_WAIT;

                            }
                            else
                            { 
                                APPL_Demo_State = READY_TO_TX_RX; //TODO : Check error
                            }
               break;

            case SEND_OUT_DATA_WAIT:
                        if(USBHostCDC_ApiTransferIsComplete(&ErrorDriver,&NumOfBytesRcvd))
                        {
                             USBHostCDC_Clear_Out_DATA_Array();    
                             APPL_Demo_State = READY_TO_TX_RX;
                        }
               break;

            case READY_TO_TX_RX:
                        if(Switch6WasPressed())
                        {
                             APPL_Demo_State = SEND_OUT_DATA;
                             for( i=0; i<=(sizeof(OutData)/sizeof(OutData[0]));i++)
                             USB_CDC_OUT_Data_Array[i] = OutData[i]; // Copy data to be transmitted into output buffer
                        }
                   break;

                default :
                   break;
            }

        }
}

