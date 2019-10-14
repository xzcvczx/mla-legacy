/******************************************************************************
    MASTERs 2008 USB Embedded Host POS Printer and Barcode Scanner Demo

  Summary:
    This is the demo used to highlight USB Embedded Host Printer Class and
    HID Class support at the Microchip MASTERs 2008.
    
  Description:    
    This is the demo used to highlight USB Embedded Host Printer Class and
    HID Class support at the Microchip MASTERs 2008.  The demo gave away a
    variety of prizes on the three primary days of MASTERs.  
    
    The demo is configured with no device attached.  Then the point-of-sale 
    printer was attached.
    
    Using a touch screen interface, a customer would draw or sign their name 
    on the screen.  When ready, the demo would then print their masterpiece on 
    a point-of-sale printer, along with some demonstration graphics and text.  
    At the bottom of the receipt, the demo would print two bar codes.  The 
    first indicates the time and date that the receipt was printed, using a 
    UPC-A barcode.  The second indicates the awarded prize, using a Code 39 
    barcode.  
    
    Next, the user would detach the printer and attach a barcode scanner.  
    After scanning a bar code, the pertinent information displays on the screen,
    including a picture of whatever prize the customer won.
    
    PRIZES: 
    
    The type of prizes is fixed (PIC24F Starter Kits, the book "Flying the 
    PIC24" written by Lucio DiJasio, and flex lights.  The demo stores the 
    number of prizes of each type that have been given, that are available,
    and a basic rate that the prizes should be awarded.  This allows the demo
    to be powered down and moved without the danger of awarding more prizes
    than we actually had on hand.  There is a password protected configuration
    screen, allowing one to increase the number of prizes available (which,
    thanks to Marketing, did happen, to several people's delight) and change 
    the rate of award to make sure we didn't have unawarded prizes at the end 
    of the day.
    
    The "random award" is not too sophisticated.  It's based off the last four
    bits of a running timer.  The prize rate can be set from 0 (never give away)
    to 16 (always give away).  If a higher tiered prize is awarded based on the
    timer but none are available, the next tier prize is awarded, if available.
    
    THE PRINTER:
    
    The demo is set up for the Epson TM-T88IV POS printer.  The header file
    describing the printer is included in usb_config.h.  To use a different
    POS printer:
        - ensure that the printer uses the ESC/POS printer language
        - obtain or create a header file that defines the parameters as shown 
            in the Epson's header file (usb_printer_pos_epson_tm_t88iv.h)
        - recreate usb_config.c and usb_config.h, specifying the VID and PID
            of the new printer and the header file for that printer.
    
    TIME AND DATE:
    
    The demo uses the RTCC module of the PIC24F to maintain the time and date.
    
******************************************************************************/

/******************************************************************************

* FileName:
* Dependencies:    USB Embedded Host library; Graphics library
* Processor:       PIC24F
* Compiler:        C30 v3.02c/C32 v0.00.18
* Company:         Microchip Technology, Inc.

Software License Agreement

The software supplied herewith by Microchip Technology Incorporated
(the “Company”) for its PICmicro® Microcontroller is intended and
supplied to you, the Company’s customer, for use solely and
exclusively on Microchip PICmicro Microcontroller products. The
software is owned by the Company and/or its supplier, and is
protected under applicable copyright laws. All rights are reserved.
Any use in violation of the foregoing restrictions may subject the
user to criminal sanctions under applicable laws, as well as to
civil liability for the breach of the terms and conditions of this
license.

THIS SOFTWARE IS PROVIDED IN AN “AS IS” CONDITION. NO WARRANTIES,
WHETHER EXPRESS, IMPLIED OR STATUTORY, INCLUDING, BUT NOT LIMITED
TO, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
PARTICULAR PURPOSE APPLY TO THIS SOFTWARE. THE COMPANY SHALL NOT,
IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL OR
CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.

Author          Date    Comments
--------------------------------------------------------------------------------
KO          15-Oct-2007 First release

*******************************************************************************/

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "GenericTypeDefs.h"
#include "HardwareProfile.h"
#include "uart2.h"
#include "rtcc.h"
#include "usb_config.h"
#include "GraphicsConfig.h"
#include "Graphics\Graphics.h"
#include "EEPROM.h"
#include "TouchScreen.h"
#include "USB\usb.h"
#include "USB\usb_host_hid.h"
#include "USB\usb_host_hid_appl_interface.h"
#include "USB\usb_host_printer.h"
#ifdef USB_PRINTER_LANGUAGE_ESCPOS
    #include "USB\usb_host_printer_esc_pos.h"
#endif
#include "USB\usb_host_printer_primitives.h"

#include "Main.h"


// *****************************************************************************
// *****************************************************************************
// Section: Configuration
// *****************************************************************************
// *****************************************************************************

// Uncomment this line if you want to see debug information via the UART.  You
// will also need to include the file \Microchip\Common\uart2.c in your project
//#define DEBUG_MODE


// *****************************************************************************
// *****************************************************************************
// Section: Constants
// *****************************************************************************
// *****************************************************************************

#define BARCODE_NO_PRIZE                "SORRY "
#define LOCATION_MIN_Y                  50
#define MAX_ALLOWED_CURRENT             250
#define MASTERS_DEMO_VERSION            0x0001
#define MASTERS_DEMO_VERSION_STRING     "v0.02"
#define MAX_PRIZE_LENGTH                20
#define MAX_PRIZES_AVAILABLE            20
#define MAX_SCAN_LENGTH                 30
#define NO_PRIZE_WON                    0xFF
#define NOT_A_PRIZE_DAY                 0xFF
#define NUM_PRIZE_DAYS                  3
#define NUM_PRIZES                      3
#define PASSWORD_LENGTH_MAX             30
#define PRIZE_ACCESS_PASSWORD           "0303**0815"
#define PRIZE_BARCODE_LENGTH            7               // Includes 0 / check digit
#define TIME_BARCODE_LENGTH             12              // Includes leading 0 and check digit
#define USAGE_MAX_MODIFIER_KEY          (0xE7)
#define USAGE_MAX_NORMAL_KEY            (0xFF)
#define USAGE_MIN_MODIFIER_KEY          (0xE0)
#define USAGE_MIN_NORMAL_KEY            (0x00)
#define USAGE_PAGE_KEY_CODES            (0x07)
#define USAGE_PAGE_LEDS                 (0x08)

// RTCC Format Correlation Constants
// The 16-bit and 32-bit architectures use two different formats for the RTCC.
// These constants can be used to access the byte in a four-byte date or time
// array.  Note: No constant is given for the weekday, because the weekday is
// stored in a different byte.  This is done to flag the user to take special
// care when writing code that utilizes the weekday.

#define DEFAULT_YEARS               0x0008
#define DEFAULT_MONTH_DAY           0x0721
#define DEFAULT_WEEKDAY_HOURS       0x0108
#define DEFAULT_MINUTES_SECONDS     0x8000

#define INDEX_HOURS                 2
#define INDEX_MINUTES               1
#define INDEX_SECONDS               0
#define INDEX_YEAR                  2
#define INDEX_MONTH                 1
#define INDEX_DAY                   0


enum
{
    ID_WINDOW_SIGNATURE             = 100,
    ID_BUTTON_CLEAR,
    ID_BUTTON_CANCEL,
    ID_BUTTON_PRINT,
    ID_BUTTON_OK,
    ID_BUTTON_SET_TIME,
    ID_BUTTON_CALIBRATE,
    ID_BUTTON_PRIZES,
    ID_TEXT_TOUCH,
    ID_TEXT_TITLE,
    ID_EDITBOX_PASSWORD,
    ID_BUTTON_PASSWORD_KEYPAD0,
    ID_BUTTON_PASSWORD_KEYPAD1,
    ID_BUTTON_PASSWORD_KEYPAD2,
    ID_BUTTON_PASSWORD_KEYPAD3,
    ID_BUTTON_PASSWORD_KEYPAD4,
    ID_BUTTON_PASSWORD_KEYPAD5,
    ID_BUTTON_PASSWORD_KEYPAD6,
    ID_BUTTON_PASSWORD_KEYPAD7,
    ID_BUTTON_PASSWORD_KEYPAD8,
    ID_BUTTON_PASSWORD_KEYPAD9,
    ID_BUTTON_PASSWORD_ASTERISK,
    ID_BUTTON_PASSWORD_POUND,
    ID_BUTTON_PASSWORD_BACKSPACE,
    ID_BUTTON_PASSWORD_OK,
    ID_TEXT_DAY,
    ID_LIST_DAY,
    ID_DAY_PLUS,
    ID_DAY_MINUS,
    ID_TEXT_PRIZE,
    ID_LIST_PRIZE,
    ID_PRIZE_PLUS,
    ID_PRIZE_MINUS,
    ID_TEXT_TOTAL,
    ID_LIST_TOTAL,
    ID_TOTAL_PLUS,
    ID_TOTAL_MINUS,
    ID_TEXT_GIVEN,
    ID_LIST_GIVEN,
    ID_GIVEN_PLUS,
    ID_GIVEN_MINUS,
    ID_TEXT_RATE,
    ID_LIST_RATE,
    ID_RATE_PLUS,
    ID_RATE_MINUS,
    ID_TEXT_PRINT_TIME1,
    ID_TEXT_PRINT_TIME2,
    ID_TIME_DATE_GROUP                  // This has to be the last one
} GRAPHIC_ID;

#define ID_START                    ID_TIME_DATE_GROUP
#define ID_MONTH                    (ID_START +  0)
#define ID_MONTH_PLUS               (ID_START +  1)
#define ID_MONTH_MINUS              (ID_START +  2)
#define ID_DAY                      (ID_START +  3)
#define ID_DAY_PLUS                 (ID_START +  4)
#define ID_DAY_MINUS                (ID_START +  5)
#define ID_YEAR                     (ID_START +  6)
#define ID_YEAR_PLUS                (ID_START +  7)
#define ID_YEAR_MINUS               (ID_START +  8)
#define ID_HOUR                     (ID_START +  9)
#define ID_HOUR_PLUS                (ID_START + 10)
#define ID_HOUR_MINUS               (ID_START + 11)
#define ID_MINUTE                   (ID_START + 12)
#define ID_MINUTE_PLUS              (ID_START + 13)
#define ID_MINUTE_MINUS             (ID_START + 14)

#define BUTTON_WIDTH                20
#define CONTROL_SPACING_X           20
#define CONTROL_SPACING_Y           20
#define LINE1_START_Y               (LOCATION_MIN_Y + 10)
#define LINE1_END_Y                 (LINE1_START_Y + textHeight )
#define LINE2_START_Y               (LINE1_END_Y + CONTROL_SPACING_Y)
#define LINE2_END_Y                 (LINE2_START_Y + textHeight )

#define MONTH_START_X               30
#define MONTH_END_X                 (MONTH_START_X + textCharWidth*3)
#define MONTH_START_Y               LINE1_START_Y
#define MONTH_END_Y                 LINE1_END_Y

#define MONTH_BUTTON_START_X        (MONTH_END_X + 1 )
#define MONTH_BUTTON_END_X          (MONTH_BUTTON_START_X + BUTTON_WIDTH)

#define DAY_START_X                 (MONTH_BUTTON_END_X + CONTROL_SPACING_X)
#define DAY_END_X                   (DAY_START_X + textCharWidth*2)
#define DAY_START_Y                 LINE1_START_Y
#define DAY_END_Y                   LINE1_END_Y

#define DAY_BUTTON_START_X          (DAY_END_X + 1)
#define DAY_BUTTON_END_X            (DAY_BUTTON_START_X + BUTTON_WIDTH)

#define YEAR_START_X                (DAY_BUTTON_END_X + CONTROL_SPACING_X)
#define YEAR_END_X                  (YEAR_START_X + textCharWidth*4)
#define YEAR_START_Y                LINE1_START_Y
#define YEAR_END_Y                  LINE1_END_Y

#define YEAR_BUTTON_START_X         (YEAR_END_X + 1)
#define YEAR_BUTTON_END_X           (YEAR_BUTTON_START_X + BUTTON_WIDTH)

#define HOUR_START_X                90
#define HOUR_END_X                  (HOUR_START_X + textCharWidth*2 )
#define HOUR_START_Y                LINE2_START_Y
#define HOUR_END_Y                  LINE2_END_Y

#define HOUR_BUTTON_START_X         (HOUR_END_X + 1)
#define HOUR_BUTTON_END_X           (HOUR_BUTTON_START_X + BUTTON_WIDTH)

#define MINUTE_START_X              (HOUR_BUTTON_END_X + CONTROL_SPACING_X)
#define MINUTE_END_X                (MINUTE_START_X + textCharWidth*2)
#define MINUTE_START_Y              LINE2_START_Y
#define MINUTE_END_Y                LINE2_END_Y

#define MINUTE_BUTTON_START_X       (MINUTE_END_X + 1)
#define MINUTE_BUTTON_END_X         (MINUTE_BUTTON_START_X + BUTTON_WIDTH)

// *****************************************************************************
// *****************************************************************************
// Section: Configuration Bits
// *****************************************************************************
// *****************************************************************************

#define PLL_96MHZ_OFF   0xFFFF
#define PLL_96MHZ_ON    0xF7FF


// Configuration Bit settings  for an Explorer 16 with USB PICtail Plus
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

_CONFIG2(FNOSC_PRIPLL & POSCMOD_HS & PLL_96MHZ_ON & PLLDIV_DIV2) // Primary HS OSC with PLL, USBPLL /2
_CONFIG1(JTAGEN_OFF & FWDTEN_OFF & ICS_PGx2)   // JTAG off, watchdog timer off


// *****************************************************************************
// *****************************************************************************
// Section: Data Structures
// *****************************************************************************
// *****************************************************************************

typedef struct
{
    BYTE    printer;
    BYTE    printerAttached : 1;
    BYTE    scannerAttached : 1;
    BYTE    timeInitialized : 1;
} DEMO_STATUS;


typedef struct _HID_REPORT_BUFFER
{
    WORD  reportID;
    WORD  reportSize;
    BYTE* reportData;
} HID_REPORT_BUFFER;


#if defined( __C30__ )
    // PIC24 RTCC Structure
    typedef union
    {
        struct
        {
            unsigned char   mday;       // BCD codification for day of the month, 01-31
            unsigned char   mon;        // BCD codification for month, 01-12
            unsigned char   year;       // BCD codification for years, 00-99
            unsigned char   reserved;   // reserved for future use. should be 0
        };                              // field access
        unsigned char       b[4];       // byte access
        unsigned short      w[2];       // 16 bits access
        unsigned long       l;          // 32 bits access
    } PIC24_RTCC_DATE;

    // PIC24 RTCC Structure
    typedef union
    {
        struct
        {
            unsigned char   sec;        // BCD codification for seconds, 00-59
            unsigned char   min;        // BCD codification for minutes, 00-59
            unsigned char   hour;       // BCD codification for hours, 00-24
            unsigned char   weekday;    // BCD codification for day of the week, 00-06
        };                              // field access
        unsigned char       b[4];       // byte access
        unsigned short      w[2];       // 16 bits access
        unsigned long       l;          // 32 bits access
    } PIC24_RTCC_TIME;
#endif


typedef struct {
    SHORT       available;
    SHORT       given;
    SHORT       rate;
} PRIZE_INFO;


typedef struct {
    char            name[MAX_PRIZE_LENGTH];
    BITMAP_FLASH    image;
    char            barcodeText[PRIZE_BARCODE_LENGTH];
    PRIZE_INFO      info[NUM_PRIZE_DAYS];
} PRIZE;


// States of the demo application's state machine.
typedef enum
{
    SCREEN_DISPLAY_MAIN,
    SCREEN_MAIN,
    SCREEN_DISPLAY_UTILITIES,
    SCREEN_UTILITIES,
    SCREEN_DISPLAY_TIME,
    SCREEN_TIME,
    SCREEN_DISPLAY_PASSWORD,
    SCREEN_PASSWORD,
    SCREEN_DISPLAY_PRIZES,
    SCREEN_PRIZES,
    SCREEN_DISPLAY_PRINTER,
    SCREEN_PRINTER,
    SCREEN_DISPLAY_SIGNATURE,
    SCREEN_DISPLAY_SIGNATURE_PANEL,
    SCREEN_SIGNATURE,
    SCREEN_DISPLAY_PRINT_DONE,
    SCREEN_PRINT_DONE,
    SCREEN_DISPLAY_SCANNER,
    SCREEN_SCANNER,
    SCREEN_DISPLAY_TIME_SCAN,
    SCREEN_TIME_SCAN,
    SCREEN_DISPLAY_PRIZE_SCAN,
    SCREEN_PRIZE_SCAN,
    SCREEN_DISPLAY_INVALID_BARCODE,
    SCREEN_INVALID_BARCODE,
    SCREEN_DISPLAY_DEVICE_ERROR,
    SCREEN_DEVICE_ERROR,
} SCREEN_STATES;


// *****************************************************************************
// *****************************************************************************
// Section: Internal Function Prototypes
// *****************************************************************************
// *****************************************************************************

void GivePrize( char *buffer );
WORD GOLDrawCallback( void );
WORD GOLMsgCallback( WORD objMsg, OBJ_HEADER* pObj, GOL_MSG* pMsg );
void MonitorVBUS( void );
#if defined( __C30__ )
    DWORD   PIC24RTCCGetTime( void );
    DWORD   PIC24RTCCGetDate( void );
    void    PIC24RTCCSetTime( WORD weekDay_hours, WORD minutes_seconds );
    void    PIC24RTCCSetDate( WORD xx_year, WORD month_day );
#endif
#ifdef DEBUG_MODE
    void PrintError( BYTE rc );
#endif
#if defined( __C30__ )
    void PrintImage( BYTE __prog__ *ptr, USB_PRINTER_IMAGE_INFO *imageInfo );
#elif defined( __PIC32MX__ )
    void PrintImage( const BYTE *ptr, USB_PRINTER_IMAGE_INFO *imageInfo );
#endif
void PrintReceipts( void );
WORD ProcessMessagePassword( WORD objMsg, OBJ_HEADER* pObj, GOL_MSG* pMsg );
WORD ProcessMessagePrizes( WORD objMsg, OBJ_HEADER* pObj, GOL_MSG* pMsg );
WORD ProcessMessageSignature( WORD objMsg, OBJ_HEADER* pObj, GOL_MSG* pMsg );
WORD ProcessMessageTime( WORD objMsg, OBJ_HEADER* pObj, GOL_MSG* pMsg );
WORD ProcessMessageUtilities( WORD objMsg, OBJ_HEADER* pObj, GOL_MSG* pMsg );
void ProcessScanner( void );
void ReadPrizeConfiguration( void );
void SavePrizeConfiguration( void );
void ScreenDissolve( void );
void ShowScreenDeviceError( void );
void ShowScreenInvalidBarcode( void );
void ShowScreenMain( void );
void ShowScreenPassword( void );
void ShowScreenPrintDone( void );
void ShowScreenPrizes( void );
void ShowScreenPrizeScan( void );
void ShowScreenScanner( void );
void ShowScreenSignature( void );
void ShowScreenTime( void );
void ShowScreenTimeScan( void );
void ShowScreenUtilities( void );
void TouchToContinue( GOL_SCHEME *scheme );
#if defined( __C30__ )
    void    UnlockRTCC( void );
#endif
void UpdateDateTime( void );


// *****************************************************************************
// *****************************************************************************
// Section: Macros
// *****************************************************************************
// *****************************************************************************

#define SCREEN_TOUCHED()    (TouchGetX() != -1)


// *****************************************************************************
// *****************************************************************************
// Section: Global Variables
// *****************************************************************************
// *****************************************************************************

PIC24_RTCC_DATE currentDate;
PIC24_RTCC_TIME currentTime;
PIC24_RTCC_TIME previousTime;

extern const FONT_FLASH GOLFontDefault;     // default GOL font

extern BITMAP_FLASH classHID;
extern BITMAP_FLASH classPrinter;
//extern BITMAP_FLASH comeBackTonight;
extern BITMAP_FLASH deviceError;
extern BITMAP_FLASH flexLight;
extern BITMAP_FLASH flyingPIC24;
extern BITMAP_FLASH intro;
extern BITMAP_FLASH logoMCHP;
extern BITMAP_FLASH mchpIcon0;
extern BITMAP_FLASH mchpLogo;
extern BITMAP_FLASH nothingConnected;
extern BITMAP_FLASH pic24FSK;



GOL_SCHEME              *altScheme;                  // alternative style scheme
HID_DATA_DETAILS        Appl_ModifierKeysDetails;
HID_DATA_DETAILS        Appl_NormalKeysDetails;
HID_USER_DATA_SIZE      Appl_BufferModifierKeys[8];
HID_USER_DATA_SIZE      Appl_BufferNormalKeys[6];
GOL_SCHEME              *blackScheme;                  // alternative style scheme
BYTE                    currentDayConfig;
BYTE                    currentPrizeConfig;
BYTE                    daysPerMonth[12] = {   31, 28, 31, 30, 31, 30,
                                               31, 31, 30, 31, 30, 31 };
XCHAR                   monthNames[12][3]  = {
                                                { 'J', 'a', 'n', },
                                                { 'F', 'e', 'b', },
                                                { 'M', 'a', 'r', },
                                                { 'A', 'p', 'r', },
                                                { 'M', 'a', 'y', },
                                                { 'J', 'u', 'n', },
                                                { 'J', 'u', 'l', },
                                                { 'A', 'u', 'g', },
                                                { 'S', 'e', 'p', },
                                                { 'O', 'c', 't', },
                                                { 'N', 'o', 'v', },
                                                { 'D', 'e', 'c'  } };
char                    password[PASSWORD_LENGTH_MAX];
BYTE                    passwordLength;
USB_PRINTER_DEVICE_ID   printerInfo;
char                    prizeDays[3][4]     = { "Wed", "Thu", "Fri" };
PRIZE                   prizes[NUM_PRIZES]  = {  // In descending order of "value".  Sum of rates must be <= 16 {available, given, rate}
                                                { "PIC24F Starter Kit", {0, (FLASH_BYTE*)0}, "P24SK ", {{ 1, 0,  1}, { 1, 0,  1}, { 1, 0,  1}} },
                                                { "Flying the PIC24",   {0, (FLASH_BYTE*)0}, "FLYING", {{ 8, 0,  2}, { 8, 0,  2}, { 8, 0,  2}} },
                                                { "Flex Light",         {0, (FLASH_BYTE*)0}, "LIGHTS", {{20, 0, 10}, {20, 0, 10}, {20, 0, 10}} } };
BYTE                    prizeWon;
HID_REPORT_BUFFER       reportScanner;
XCHAR                   scanBarcode[]       = "Scan a barcode...";
char                    scannerText[MAX_SCAN_LENGTH];
int                     scannerTextIndex    = 0;
SCREEN_STATES           screenState         = 0;
XCHAR                   signature[]         = "   Please sign";
DEMO_STATUS             status;
XCHAR                   textTitle[30];
XCHAR                   timeBuffer1[15];
XCHAR                   timeBuffer2[15];
WORD                    today;
XCHAR                   touchToContinue[]   = "Touch screen to continue";
XCHAR                   usbError[]          = "USB Error. Remove Device.";
XCHAR                   usbErrorText[50];
GOL_SCHEME              *whiteScheme;                  // alternative style scheme


//******************************************************************************
//******************************************************************************
// USB Support Functions
//******************************************************************************
//******************************************************************************

/****************************************************************************
  Function:
    BOOL USB_ApplicationEventHandler( BYTE address, USB_EVENT event,
                void *data, DWORD size )

  Summary:
    This is the application event handler.  It is called when the stack has
    an event that needs to be handled by the application layer rather than
    by the client driver.

  Description:
    This is the application event handler.  It is called when the stack has
    an event that needs to be handled by the application layer rather than
    by the client driver.  If the application is able to handle the event, it
    returns TRUE.  Otherwise, it returns FALSE.

  Precondition:
    None

  Parameters:
    BYTE address    - Address of device where event occurred
    USB_EVENT event - Identifies the event that occured
    void *data      - Pointer to event-specific data
    DWORD size      - Size of the event-specific data

  Return Values:
    TRUE    - The event was handled
    FALSE   - The event was not handled

  Remarks:
    The application may also implement an event handling routine if it
    requires knowledge of events.  To do so, it must implement a routine that
    matches this function signature and define the USB_HOST_APP_EVENT_HANDLER
    macro as the name of that function.
  ***************************************************************************/

BOOL USB_ApplicationEventHandler( BYTE address, USB_EVENT event, void *data, DWORD size )
{
    switch( event )
    {
        // --------------------------------------------------------------------------
        // Printer events

        case EVENT_PRINTER_ATTACH:
            status.printerAttached  = 1;
            printerInfo = *(USB_PRINTER_DEVICE_ID *)data;
            #ifdef DEBUG_MODE
                UART2PrintString( "APP:  Printer attached.  Support: " );
                UART2PutHex( printerInfo.support.val );
                UART2PrintString( "\r\n" );
            #endif
            break;

        case EVENT_PRINTER_DETACH:
            #ifdef DEBUG_MODE
                UART2PrintString( "APP:  Printer detached\r\n" );
            #endif
            status.printerAttached              = 0;
            printerInfo.deviceAddress           = 0;
            break;

        case EVENT_PRINTER_TX_DONE:
            #ifdef DEBUG_MODE
                UART2PrintString( "APP: OUT transfer complete\r\n" );
            #endif
            break;

        case EVENT_PRINTER_RX_DONE:
            #ifdef DEBUG_MODE
                UART2PrintString( "APP: IN transfer complete\r\n" );
            #endif
            break;

        case EVENT_PRINTER_REQUEST_DONE:
            #ifdef DEBUG_MODE
                UART2PrintString( "APP: Printer Status: " );
                UART2PutHex( status.printer );
                UART2PrintString( "\r\n" );
            #endif
            break;

        // --------------------------------------------------------------------------
        // Scanner (HID) events

        // We don't get attach/detach.  We'll poll for the barcode reading.

        // --------------------------------------------------------------------------
        // Host events

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
                screenState = SCREEN_DISPLAY_DEVICE_ERROR;
                strcpy( usbErrorText, "Device requires too much current." );
            }
            break;

        case EVENT_VBUS_RELEASE_POWER:
            // Turn off Vbus power.
            // The PIC24F with the Explorer 16 cannot turn off Vbus through software.
            return TRUE;
            break;

        case EVENT_HUB_ATTACH:
            screenState = SCREEN_DISPLAY_DEVICE_ERROR;
            strcpy( usbErrorText, "Hubs are not supported." );
            return TRUE;
            break;

        case EVENT_UNSUPPORTED_DEVICE:
            screenState = SCREEN_DISPLAY_DEVICE_ERROR;
            strcpy( usbErrorText, "Device is not supported." );
            return TRUE;
            break;

        case EVENT_CANNOT_ENUMERATE:
            screenState = SCREEN_DISPLAY_DEVICE_ERROR;
            strcpy( usbErrorText, "Cannot enumerate device." );
            return TRUE;
            break;

        case EVENT_CLIENT_INIT_ERROR:
            screenState = SCREEN_DISPLAY_DEVICE_ERROR;
            strcpy( usbErrorText, "Client driver initialization error." );
            return TRUE;
            break;

        case EVENT_OUT_OF_MEMORY:
            screenState = SCREEN_DISPLAY_DEVICE_ERROR;
            strcpy( usbErrorText, "Out of heap memory." );
            return TRUE;
            break;

        case EVENT_UNSPECIFIED_ERROR:   // This should never be generated.
            screenState = SCREEN_DISPLAY_DEVICE_ERROR;
            strcpy( usbErrorText, "Unspecified." );
            return TRUE;
            break;

        default:
            break;
    }

    return FALSE;
}


/****************************************************************************
  Function:
    BOOL USB_HID_DataCollectionHandler(void)
    
  Description:
    This function is invoked by HID client , purpose is to collect the
    details extracted from the report descriptor. HID client will store
    information extracted from the report descriptor in data structures.
    Application needs to create object for each report type it needs to
    extract.
    For ex: HID_DATA_DETAILS Appl_ModifierKeysDetails;
    HID_DATA_DETAILS is defined in file usb_host_hid_appl_interface.h
    Each member of the structure must be initialized inside this function.
    Application interface layer provides functions :
    USBHostHID_ApiFindBit()
    USBHostHID_ApiFindValue()
    These functions can be used to fill in the details as shown in the demo
    code.

  Precondition:
    None

  Parameters:
    None

  Return Values:
    TRUE    - If the report details are collected successfully.
    FALSE   - If the application does not find the the supported format.

  Remarks:
    This Function name should be entered in the USB configuration tool
    in the field "Parsed Data Collection handler".
    If the application does not define this function , then HID cient
    assumes that Application is aware of report format of the attached
    device.
***************************************************************************/
BOOL USB_HID_DataCollectionHandler(void)
{
  BYTE NumOfReportItem = 0;
  BYTE i;
  USB_HID_ITEM_LIST* pitemListPtrs;
  USB_HID_DEVICE_RPT_INFO* pDeviceRptinfo;
  HID_REPORTITEM *reportItem;
  HID_USAGEITEM *hidUsageItem;
  BYTE usageIndex;
  BYTE reportIndex;
  //BOOL foundLEDIndicator = FALSE;
  BOOL foundModifierKey = FALSE;
  BOOL foundNormalKey = FALSE;

  pDeviceRptinfo = USBHostHID_GetCurrentReportInfo(); // Get current Report Info pointer
  pitemListPtrs = USBHostHID_GetItemListPointers();   // Get pointer to list of item pointers

  BOOL status = FALSE;
   /* Find Report Item Index for Modifier Keys */
   /* Once report Item is located , extract information from data structures provided by the parser */
   NumOfReportItem = pDeviceRptinfo->reportItems;
   for(i=0;i<NumOfReportItem;i++)
    {
       reportItem = &pitemListPtrs->reportItemList[i];
       if((reportItem->reportType==hidReportInput) && (reportItem->dataModes == HIDData_Variable)&&
           (reportItem->globals.usagePage==USAGE_PAGE_KEY_CODES))
        {
           /* We now know report item points to modifier keys */
           /* Now make sure usage Min & Max are as per application */
            usageIndex = reportItem->firstUsageItem;
            hidUsageItem = &pitemListPtrs->usageItemList[usageIndex];
            if((hidUsageItem->usageMinimum == USAGE_MIN_MODIFIER_KEY)
                &&(hidUsageItem->usageMaximum == USAGE_MAX_MODIFIER_KEY)) //else application cannot suuport
            {
               reportIndex = reportItem->globals.reportIndex;
               Appl_ModifierKeysDetails.reportLength = (pitemListPtrs->reportList[reportIndex].inputBits + 7)/8;
               Appl_ModifierKeysDetails.reportID = (BYTE)reportItem->globals.reportID;
               Appl_ModifierKeysDetails.bitOffset = (BYTE)reportItem->startBit;
               Appl_ModifierKeysDetails.bitLength = (BYTE)reportItem->globals.reportsize;
               Appl_ModifierKeysDetails.count=(BYTE)reportItem->globals.reportCount;
               Appl_ModifierKeysDetails.interfaceNum= USBHostHID_ApiGetCurrentInterfaceNum();
               foundModifierKey = TRUE;
            }

        }
        else if((reportItem->reportType==hidReportInput) && (reportItem->dataModes == HIDData_Array)&&
           (reportItem->globals.usagePage==USAGE_PAGE_KEY_CODES))
        {
           /* We now know report item points to modifier keys */
           /* Now make sure usage Min & Max are as per application */
            usageIndex = reportItem->firstUsageItem;
            hidUsageItem = &pitemListPtrs->usageItemList[usageIndex];
            if((hidUsageItem->usageMinimum == USAGE_MIN_NORMAL_KEY)
                &&(hidUsageItem->usageMaximum <= USAGE_MAX_NORMAL_KEY)) //else application cannot suuport
            {
               reportIndex = reportItem->globals.reportIndex;
               Appl_NormalKeysDetails.reportLength = (pitemListPtrs->reportList[reportIndex].inputBits + 7)/8;
               Appl_NormalKeysDetails.reportID = (BYTE)reportItem->globals.reportID;
               Appl_NormalKeysDetails.bitOffset = (BYTE)reportItem->startBit;
               Appl_NormalKeysDetails.bitLength = (BYTE)reportItem->globals.reportsize;
               Appl_NormalKeysDetails.count=(BYTE)reportItem->globals.reportCount;
               Appl_NormalKeysDetails.interfaceNum= USBHostHID_ApiGetCurrentInterfaceNum();
               foundNormalKey = TRUE;
            }

        }
    }


   if(pDeviceRptinfo->reports == 1)
    {
        reportScanner.reportID = 0;
        reportScanner.reportSize = (pitemListPtrs->reportList[reportIndex].inputBits + 7)/8;
        reportScanner.reportData = (BYTE*)malloc(reportScanner.reportSize);
        if((foundNormalKey == TRUE)&&(foundModifierKey == TRUE))
        status = TRUE;
    }

    return(status);
}


//******************************************************************************
//******************************************************************************
// Section: Internal Functions
//******************************************************************************
//******************************************************************************

/****************************************************************************
  Function:
    BYTE ScannerHID2ASCII( BYTE a );
    
  Description:
    This function converts keyboard/scanner codes to their ASCII values.
    
  Precondition:
    None
    
  Parameters:
    BYTE a  - keyboard/scanner key code
    
  Returns:
    The ASCII value of the keyboard/scanner key code.
    
  Remarks:
  ***************************************************************************/

BYTE ScannerHID2ASCII( BYTE a )
{
    // Return
    if (a == 0x28)
    {
        return 0x0D;    //CR
    }

    // Space
    if (a == 0x2C)
    {
        return 0x20;    //Space
    }

    // 0 only
    if (a == 0x27)
    {
        return '0';
    }

    // Numbers 1-9
    if ((0x1E <= a) && (a <= 0x26))
    {
        return a - 0x1E + '1';
    }

    // Letters
    if((0x04 <= a) && (a <= 0x1D))
    {
        return a - 0x04 + 'A'; /* return capital */
        //return(a+0x5d); /* return small case */
    }

    return '*';     // Default - Not translated
}


/****************************************************************************
  Function:
    void GivePrize( char *buffer );
    
  Description:
    This function picks a prize.
    
  Precondition:
    Timer3 must be running.
    
  Parameters:
    char *buffer    - pointer to a character buffer for the prize
    
  Returns:
    Updates *buffer with the awarded prize.
    
  Remarks:
    The date must be one of the days that we are giving away a prize.  We
    can use any random number generator, but we'll use Timer3 since it's
    already running.  If we give away a prize, update the count of prizes
    given and the count of prizes available.
  ***************************************************************************/

void GivePrize( char *buffer )
{
    BYTE    currentPrizeLimit;
    int     i;
    BYTE    givingPrize;

    strcpy( buffer, BARCODE_NO_PRIZE );

    if (today != NOT_A_PRIZE_DAY)
    {
        // We'll use Timer 3, since we're already using it for the touch screen,
        // for our random value source.
        givingPrize = TMR3 & 0x0F;

        currentPrizeLimit = 0;
        for (i=0; i<NUM_PRIZES; i++)
        {
            currentPrizeLimit += prizes[i].info[today].rate;
            if (givingPrize < currentPrizeLimit)
            {
                if (prizes[i].info[today].given < prizes[i].info[today].available)
                {
                    prizes[i].info[today].given ++;
                    EEPROMWriteWord( prizes[i].info[today].given, EEPROM_PRIZE_INFO + (i*18) + (today*6) + 2 );
                    strcpy( buffer, prizes[i].barcodeText );
                    return;
                }
            }
        }
    }
}

/****************************************************************************
  Function:
    void InitializeScreen( void )

  Description:
    This function erases the current list of graphics objects and clears the
    screen

  Precondition:
    GOLInit() must be called prior to calling this function.

  Parameters:
    None

  Returns:
    None

  Remarks:
    The global list of graphics objects is destroyed and replaced.  Therefore,
    this function cannot be called during the message processing of
    GOLMsgCallback().  It must be called during GOLDrawCallback() processing.
  ***************************************************************************/

void InitializeScreen( GOL_SCHEME *scheme )
{
    GOLFree();
    if (scheme == NULL)
    {
        SetColor( COMMONBACKGROUNDCOLORDEFAULT );
    }
    else
    {
        SetColor( scheme->CommonBkColor );
    }
    ClearDevice();
}


/****************************************************************************
  Function:
    WORD GOLDrawCallback( void )

  Description:
    This callback is performed at the beginning of the GOLDraw() function.
    Processing that needs to be done on a regular basis and is not triggered
    by a message should be done here.

  Precondition:
    None

  Parameters:
    None

  Returns:
    None

  Remarks:
    All graphic control adding and removing must be done from this function,
    not from the message callback.
  ***************************************************************************/

// dimensions for signature box
#define SIGNATURE_PANEL_LEFT   30
#define SIGNATURE_PANEL_RIGHT  290
#define SIGNATURE_PANEL_TOP    50
#define SIGNATURE_PANEL_BOTTOM 190

#define SIGNATURE_STATE_SET   0
#define SIGNATURE_STATE_DRAW  1

WORD GOLDrawCallback( void )
{
    static BYTE     state       = SIGNATURE_STATE_SET;

    switch (screenState)
    {
        case SCREEN_DISPLAY_MAIN:
            // Show the main screen when we have nothing plugged in.
            ShowScreenMain();
            TouchToContinue( whiteScheme );
            screenState = SCREEN_MAIN;
            break;

        case SCREEN_MAIN:
            if (SCREEN_TOUCHED())
            {
                ScreenDissolve();
                if (status.printerAttached)
                {
                    screenState = SCREEN_DISPLAY_PRINTER;
                }
                else if (status.scannerAttached)
                {
                    screenState = SCREEN_DISPLAY_SCANNER;
                }
                else
                {
                    screenState = SCREEN_DISPLAY_UTILITIES;
                }
            }
            break;

        case SCREEN_DISPLAY_UTILITIES:
            ShowScreenUtilities();
            screenState = SCREEN_UTILITIES;
            break;

        case SCREEN_UTILITIES:
            // No extra drawing is done here.
            break;

        case SCREEN_DISPLAY_TIME:
            ShowScreenTime();
            screenState = SCREEN_TIME;
            break;

        case SCREEN_TIME:
            // No extra drawing is done here.
            break;

        case SCREEN_DISPLAY_PASSWORD:
            ShowScreenPassword();
            screenState = SCREEN_PASSWORD;
            break;

        case SCREEN_PASSWORD:
            // No extra drawing is done here.
            break;

        case SCREEN_DISPLAY_PRIZES:
            ShowScreenPrizes();
            screenState = SCREEN_PRIZES;
            break;

        case SCREEN_PRIZES:
            // No extra drawing is done here.
            break;

        case SCREEN_DISPLAY_PRINTER:
            // A printer is plugged in.
            InitializeScreen( whiteScheme );

            PutImage( 0, 50, (void*)&classPrinter, IMAGE_X2 );
            TouchToContinue( whiteScheme );

            screenState = SCREEN_PRINTER;
            break;

        case SCREEN_PRINTER:
            if (SCREEN_TOUCHED())
            {
                ScreenDissolve();
                screenState = SCREEN_DISPLAY_SIGNATURE;
            }
            break;

        case SCREEN_DISPLAY_SIGNATURE:
            ShowScreenSignature();
            screenState = SCREEN_DISPLAY_SIGNATURE_PANEL;
            break;

        case SCREEN_DISPLAY_SIGNATURE_PANEL:
            if (state == SIGNATURE_STATE_SET)
            { // set data for panel drawing
                GOLPanelDraw( SIGNATURE_PANEL_LEFT, SIGNATURE_PANEL_TOP,
                        SIGNATURE_PANEL_RIGHT, SIGNATURE_PANEL_BOTTOM,
                        0, WHITE,
                        altScheme->EmbossLtColor,
                        altScheme->EmbossDkColor,
                        NULL, GOL_EMBOSS_SIZE );

                state = SIGNATURE_STATE_DRAW; // change state
            }

            if(!GOLPanelDrawTsk())
            {
                return 0; // drawing is not completed
            }
            else
            {
                state       = SIGNATURE_STATE_SET; // set state to initial
                screenState = SCREEN_SIGNATURE;
            }
            break;

        case SCREEN_SIGNATURE:
            // No extra drawing is done here.
            break;

        case SCREEN_DISPLAY_PRINT_DONE:
            // Ask the customer to come back to Ask The Experts to see if he's a winner
            ShowScreenPrintDone();
            screenState = SCREEN_PRINT_DONE;
            break;

        case SCREEN_PRINT_DONE:
            // No extra drawing is done here.
            break;

        case SCREEN_DISPLAY_SCANNER:
            // A scanner is plugged in.  Display the screen and wait for input.
            scannerTextIndex = 0;
            ShowScreenScanner();
            screenState = SCREEN_SCANNER;
            break;

        case SCREEN_SCANNER:
            ProcessScanner();
            break;

        case SCREEN_DISPLAY_TIME_SCAN:
            ShowScreenTimeScan();
            screenState = SCREEN_TIME_SCAN;
            break;

        case SCREEN_TIME_SCAN:
            // No extra drawing is done here.
            break;

        case SCREEN_DISPLAY_PRIZE_SCAN:
            ShowScreenPrizeScan();
            screenState = SCREEN_PRIZE_SCAN;
            break;

        case SCREEN_PRIZE_SCAN:
            // No extra drawing is done here.
            break;

        case SCREEN_DISPLAY_INVALID_BARCODE:
            ShowScreenInvalidBarcode();
            screenState = SCREEN_INVALID_BARCODE;
            break;

        case SCREEN_INVALID_BARCODE:
            // No extra drawing is done here.
            break;

        case SCREEN_DISPLAY_DEVICE_ERROR:
            // We have a USB error.
            ShowScreenDeviceError();
            screenState = SCREEN_DEVICE_ERROR;
            break;

        case SCREEN_DEVICE_ERROR:
            if (SCREEN_TOUCHED())
            {
                ScreenDissolve();
                screenState = SCREEN_DISPLAY_MAIN;
            }
            break;
    }

    return 1;
}


/****************************************************************************
  Function:
    WORD GOLMsgCallback( WORD translatedMsg, OBJ_HEADER* pObj, GOL_MSG* pMsg )

  Description:
    This callback is executed when a graphics message is being processed.
    Based on the currently displayed screen, we determine the next operation.

  Precondition:
    None

  Parameters:
    WORD translatedMsg  - The message as translated by the processing
                            routine for the object type.
    OBJ_HEADER* pObj    - Pointer to the graphics object header.
    GOL_MSG* pMsg       - Original graphics message.

  Return Values:
    0 - Do not call the default message processing routine for the object.
    1 - Call the default message processing routine for the object.

  Remarks:
    This function is called before the default processing.  If default
    processing is required before other processing, it must be done
    explicitly in this function, and 0 must be returned.  If default
    processing can be performed after this function, simply return 1.
  ***************************************************************************/

WORD GOLMsgCallback( WORD objMsg, OBJ_HEADER* pObj, GOL_MSG* pMsg )
{
    switch( screenState )
    {
        case SCREEN_DISPLAY_MAIN:
            // No messages are processed in this state.
            break;

        case SCREEN_MAIN:
            // A generic touch is detected in the Draw callback.
            break;

        case SCREEN_DISPLAY_UTILITIES:
            // No messages are processed in this state.
            break;

        case SCREEN_UTILITIES:
            return ProcessMessageUtilities( objMsg, pObj, pMsg );
            break;

        case SCREEN_DISPLAY_TIME:
            // No messages are processed in this state.
            break;

        case SCREEN_TIME:
            ProcessMessageTime( objMsg, pObj, pMsg );
            break;

        case SCREEN_DISPLAY_PASSWORD:
            // No messages are processed in this state.
            break;

        case SCREEN_PASSWORD:
            return ProcessMessagePassword( objMsg, pObj, pMsg );
            break;

        case SCREEN_DISPLAY_PRIZES:
            // No messages are processed in this state.
            break;

        case SCREEN_PRIZES:
            return ProcessMessagePrizes( objMsg, pObj, pMsg );
            break;

        case SCREEN_DISPLAY_PRINTER:
            // No messages are processed in this state.
            break;

        case SCREEN_PRINTER:
            // A generic touch is detected in the Draw callback.
            break;

        case SCREEN_DISPLAY_SIGNATURE:
            // No messages are processed in this state.
            break;

        case SCREEN_DISPLAY_SIGNATURE_PANEL:
            // No messages are processed in this state.
            break;

        case SCREEN_SIGNATURE:
            return ProcessMessageSignature( objMsg, pObj, pMsg );
            break;

        case SCREEN_DISPLAY_PRINT_DONE:
            // No messages are processed in this state.
            break;

        case SCREEN_PRINT_DONE:
            if ((GetObjID(pObj) == ID_BUTTON_OK) &&
                 (objMsg == BTN_MSG_RELEASED))
            {
                ScreenDissolve();
                screenState = SCREEN_DISPLAY_MAIN;
            }
            break;

        case SCREEN_DISPLAY_SCANNER:
            // No messages are processed in this state.
            break;

        case SCREEN_SCANNER:
            // We can exit either here or by scanning something.
            if ((GetObjID(pObj) == ID_BUTTON_CANCEL) &&
                 (objMsg == BTN_MSG_RELEASED))
            {
                ScreenDissolve();
                screenState = SCREEN_DISPLAY_MAIN;
            }
            break;

        case SCREEN_DISPLAY_TIME_SCAN:
            // No messages are processed in this state.
            break;

        case SCREEN_TIME_SCAN:
            if ((GetObjID(pObj) == ID_BUTTON_OK) &&
                 (objMsg == BTN_MSG_RELEASED))
            {
                ScreenDissolve();
                screenState = SCREEN_DISPLAY_MAIN;
            }
            break;

        case SCREEN_DISPLAY_PRIZE_SCAN:
            // No messages are processed in this state.
            break;

        case SCREEN_PRIZE_SCAN:
            if ((GetObjID(pObj) == ID_BUTTON_OK) &&
                 (objMsg == BTN_MSG_RELEASED))
            {
                ScreenDissolve();
                screenState = SCREEN_DISPLAY_MAIN;
            }
            break;

        case SCREEN_DISPLAY_INVALID_BARCODE:
            // No messages are processed in this state.
            break;

        case SCREEN_INVALID_BARCODE:
            if ((GetObjID(pObj) == ID_BUTTON_OK) &&
                 (objMsg == BTN_MSG_RELEASED))
            {
                ScreenDissolve();
                screenState = SCREEN_DISPLAY_SCANNER;
            }
            break;

        case SCREEN_DISPLAY_DEVICE_ERROR:
            // No messages are processed in this state.
            break;

        case SCREEN_DEVICE_ERROR:
            // A generic touch is detected in the Draw callback.
            break;
    }
    return 1;
}


/****************************************************************************
  Function:
     void InitializeVbusMonitor( void )

  Description:
    This function initializes the monitoring of the Vbus voltage.

  Precondition:
    None

  Parameters:
    None

  Returns:
    None

  Remarks:
    Sorry, this never got implemented.  A released USB Embedded Host product 
    should contain some method of monitoring Vbus.  The trick is integrating 
    this monitoring with the touch screen.
  ***************************************************************************/

void InitializeVbusMonitor( void )
{
    return;
}


/****************************************************************************
  Function:
    void MonitorVBUS( void )

  Description:
    This routine monitors VBUS to check for overcurrent conditions.  The
    Explorer 16 with the PIC24FJ256GA110 PIM and USB PICtail Plus has an
    analog input dedicated to monitoring Vbus.  The voltage on Vbus is
    divided by two and fed into RB8/AN8.  The valid range for Vbus is
    4.4V - 5.25V.  If we are in an overcurrent condition, Vbus will be
    lower than 4.4V.  Full range on the A/D is 0x3FF for 3.3V.  So any
    value lower than 0xnnn on AN8 is overcurrent.  Otherwise, the current
    level is fine.

  Precondition:
    None

  Parameters:
    None

  Return Values:
    TRUE    - An overcurrent situation exists. USB shut down.
    FALSE   - Normal USB operation.

  Remarks:
    Since Vbus monitoring is application-specific, it is the application's
    responsibility.

    If we get an overcurrent, we must shut down immediately to avoid brownout
    or blackout.   If we get the overcurrent while writing to a flash drive,
    the flash drive could be corrupted, because we cannot properly close the
    file.

    Sorry, this never got implemented.  A released USB Embedded Host product 
    should contain some method of monitoring Vbus.  The trick is integrating 
    this monitoring with the touch screen.  The commented out code is a 
    demonstration of how to check the values and what to do when they go in
    and out of range.
  ***************************************************************************/

#define OVERCURRENT_RESET_VOLTAGE   4800ul        // In millivolts
#define OVERCURRENT_TRIP_VOLTAGE    4750ul        // In millivolts
#define SYSTEM_VOLTAGE              3300ul        // In millivolts
#define OVERCURRENT_RESET_READING   (1023ul * (OVERCURRENT_RESET_VOLTAGE/2) / SYSTEM_VOLTAGE)
#define OVERCURRENT_TRIP_READING    (1023ul * (OVERCURRENT_TRIP_VOLTAGE/2) / SYSTEM_VOLTAGE)

void MonitorVBUS( void )
{
//    Get ADC reading here - ADC_READING_VBUS

//    if (ADC_READING_VBUS < OVERCURRENT_TRIP_READING)
//    {
//        // We have an overcurrent condition.  Shut down the bus.
//        if (loggerStatus.mediaPresent)
//        {
//            USBHostVbusEvent( EVENT_VBUS_OVERCURRENT, USB_ROOT_HUB, 0 );
//        }
//        if (!loggerStatus.overcurrentStateUSB)
//        {
//            UART2PrintString( "\r\n***** USB Error - overcurrent detected *****\r\n" );
//            loggerStatus.overcurrentStateUSB    = TRUE;
//        }
//    }
//    else if (ADC_READING_VBUS > OVERCURRENT_RESET_READING)
//    {
//        if (loggerStatus.overcurrentStateUSB)
//        {
//            USBHostVbusEvent( EVENT_VBUS_POWER_AVAILABLE, USB_ROOT_HUB, 0 );
//            UART2PrintString( "\r\n***** USB overcurrent condition removed *****\r\n" );
//        }
//        loggerStatus.overcurrentStateUSB    = FALSE;
//    }
}


/****************************************************************************
  Function:
    DWORD   PIC24RTCCGetDate( void )

  Description:
    This routine reads the date from the RTCC module.

  Precondition:
    The RTCC module has been initialized.


  Parameters:
    None

  Returns:
    DWORD in the format <xx><YY><MM><DD>

  Remarks:
    To catch roll-over, we do two reads.  If the readings match, we return
    that value.  If the two do not match, we read again until we get two
    matching values.

    For the PIC32MX, we use library routines, which return the date in the
    PIC32MX format.
  ***************************************************************************/

#if defined( __C30__ )
DWORD   PIC24RTCCGetDate( void )
{
    DWORD_VAL   date1;
    DWORD_VAL   date2;

    do
    {
        while (RCFGCALbits.RTCSYNC);

        RCFGCALbits.RTCPTR0 = 1;
        RCFGCALbits.RTCPTR1 = 1;
        date1.w[1] = RTCVAL;
        date1.w[0] = RTCVAL;

        RCFGCALbits.RTCPTR0 = 1;
        RCFGCALbits.RTCPTR1 = 1;
        date2.w[1] = RTCVAL;
        date2.w[0] = RTCVAL;

    } while (date1.Val != date2.Val);

    return date1.Val;
}
#endif


/****************************************************************************
  Function:
    DWORD   PIC24RTCCGetTime( void )

  Description:
    This routine reads the time from the RTCC module.

  Precondition:
    The RTCC module has been initialized.

  Parameters:
    None

  Returns:
    DWORD in the format <xx><HH><MM><SS>

  Remarks:
    To catch roll-over, we do two reads.  If the readings match, we return
    that value.  If the two do not match, we read again until we get two
    matching values.

    For the PIC32MX, we use library routines, which return the time in the
    PIC32MX format.
  ***************************************************************************/

#if defined( __C30__ )
DWORD   PIC24RTCCGetTime( void )
{
    DWORD_VAL   time1;
    DWORD_VAL   time2;

    do
    {
        while (RCFGCALbits.RTCSYNC);

        RCFGCALbits.RTCPTR0 = 1;
        RCFGCALbits.RTCPTR1 = 0;
        time1.w[1] = RTCVAL;
        time1.w[0] = RTCVAL;

        RCFGCALbits.RTCPTR0 = 1;
        RCFGCALbits.RTCPTR1 = 0;
        time2.w[1] = RTCVAL;
        time2.w[0] = RTCVAL;

    } while (time1.Val != time2.Val);

    return time1.Val;
}
#endif


/****************************************************************************
  Function:
    void PIC24RTCCSetDate( WORD xx_year, WORD month_day )

  Description:
    This routine sets the RTCC date to the specified value.


  Precondition:
    The RTCC module has been initialized.

  Parameters:
    WORD xx_year    - BCD year in the lower byte
    WORD month_day  - BCD month in the upper byte, BCD day in the lower byte

  Returns:
    None

  Remarks:
    For the PIC32MX, we use library routines.
  ***************************************************************************/

#if defined( __C30__ )
void PIC24RTCCSetDate( WORD xx_year, WORD month_day )
{
    UnlockRTCC();
    RCFGCALbits.RTCPTR0 = 1;
    RCFGCALbits.RTCPTR1 = 1;
    RTCVAL = xx_year;
    RTCVAL = month_day;
}
#endif


/****************************************************************************
  Function:
    void PIC24RTCCSetTime( WORD weekDay_hours, WORD minutes_seconds )

  Description:
    This routine sets the RTCC time to the specified value.

  Precondition:
    The RTCC module has been initialized.

  Parameters:
    WORD weekDay_hours      - BCD weekday in the upper byte, BCD hours in the
                                lower byte
    WORD minutes_seconds    - BCD minutes in the upper byte, BCD seconds in
                                the lower byte

  Returns:
    None

  Remarks:
    For the PIC32MX, we use library routines.
  ***************************************************************************/

#if defined( __C30__ )
void PIC24RTCCSetTime( WORD weekDay_hours, WORD minutes_seconds )
{
    UnlockRTCC();
    RCFGCALbits.RTCPTR0 = 1;
    RCFGCALbits.RTCPTR1 = 0;
    RTCVAL = weekDay_hours;
    RTCVAL = minutes_seconds;
}
#endif


/****************************************************************************
  Function:
    void PrintError( BYTE rc )
    
  Description:
    This function can be used to debug problems when printing.  After a call
    to USBHostPrinterCommand() or USBHostPrinterCommandWithReadyWait(), feed 
    the return code into this function.
    
  Precondition:
    UART2 must be initialized.
    
  Parameters:
    BYTE rc - printer command return code.
    
  Returns:
    None
    
  Remarks:
    None
  ***************************************************************************/
#ifdef DEBUG_MODE
void PrintError( BYTE rc )
{
    switch( rc )
    {
        case USB_PRINTER_SUCCESS:
            UART2PrintString( "." );
            break;

        case USB_PRINTER_BUSY:
            UART2PrintString( "Error - busy on " );
            break;

        case USB_PRINTER_UNKNOWN_COMMAND:
            UART2PrintString( "Error - unknown command on " );
            break;

        case USB_PRINTER_UNKNOWN_DEVICE:
            UART2PrintString( "Error - unknown device on " );
            break;

        case USB_PRINTER_OUT_OF_MEMORY:
            UART2PrintString( "Error - out of memory on " );
            break;

        case USB_PRINTER_TOO_MANY_DEVICES:
            UART2PrintString( "Error - Too many devices on " );
            break;

        case USB_PRINTER_BAD_PARAMETER:
            UART2PrintString( "Error - bad parameter on " );
            break;

        default:
            UART2PrintString( "Error - low level error on " );
            break;
    }
}
#endif

/****************************************************************************
  Function:
    #if defined( __C30__ )
        void PrintImage( BYTE __prog__ *ptr, USB_PRINTER_IMAGE_INFO *imageInfo )
    #elif defined( __PIC32MX__ )
        void PrintImage( const BYTE *ptr, USB_PRINTER_IMAGE_INFO *imageInfo )
    #endif

  Description:
    This function prints a graphics image on the printer.
    
  Precondition:
    A USB printer must be attached.
    
  Parameters:
    BYTE __prog__ *ptr                  - pointer to the image data
    USB_PRINTER_IMAGE_INFO *imageInfo   - pointer to the image information
    
  Returns:
    None
    
  Remarks:
    This routine is written generically for a full-sheet or a POS printer.
    
    See the Help information for the routine USBHostPrinterPOSImageDataFormat()
    for more information on formatting images for printin on a POS printer.    
  ***************************************************************************/

#if defined( __C30__ )
    void PrintImage( BYTE __prog__ *ptr, USB_PRINTER_IMAGE_INFO *imageInfo )
#elif defined( __PIC32MX__ )
    void PrintImage( const BYTE *ptr, USB_PRINTER_IMAGE_INFO *imageInfo )
#endif
{
    WORD                    currentRow;
    BYTE                    depthBytes;
    BYTE                    *imageDataPOS;
    BYTE                    returnCode;
    WORD                    widthBytes;

    imageInfo->width    = ((WORD)ptr[5] << 8) + ptr[4];
    imageInfo->height   = ((WORD)ptr[3] << 8) + ptr[2];

    ptr += 10; // skip the header info (??, bits per pixel, Y size, X size, pallete[0], pallete[1] )
    
    if (printerInfo.support.supportFlags.supportsPOS)
    {
        depthBytes = (imageInfo->densityVertical + 7) / 8;     // Must be 1, 3, or 5.
    
        imageDataPOS = (BYTE *)malloc( imageInfo->width * depthBytes );
        if (imageDataPOS == NULL)
        {
            #ifdef DEBUG_MODE
                UART2PrintString( "No memory for POS image print\r\n" );
            #endif
            return;
        }
    
        USBHostPrinterCommandWithReadyWait( &returnCode, printerInfo.deviceAddress, USB_PRINTER_IMAGE_START, USB_DATA_POINTER_RAM(imageInfo), sizeof(USB_PRINTER_IMAGE_INFO), 0 );
    
        // This algorithm supports depths that are a multiple of 8.  Therefore, it supports 8 and 24-bit
        // depth printing, but not 36-bit depth printing.
        currentRow = 0;
        while (currentRow < imageInfo->height)
        {
            USBHostPrinterCommandWithReadyWait( &returnCode, printerInfo.deviceAddress, USB_PRINTER_IMAGE_DATA_HEADER, USB_NULL, imageInfo->width, 0 );
    
            ptr = USBHostPrinterPOSImageDataFormat( USB_DATA_POINTER_ROM(ptr), USB_PRINTER_TRANSFER_FROM_ROM, imageInfo->height, imageInfo->width, &currentRow, depthBytes, imageDataPOS ).pointerROM;
            USBHostPrinterCommandWithReadyWait( &returnCode, printerInfo.deviceAddress, USB_PRINTER_IMAGE_DATA, USB_DATA_POINTER_RAM(imageDataPOS), imageInfo->width, USB_PRINTER_TRANSFER_COPY_DATA);
        }
    
        free( imageDataPOS );

        USBHostPrinterCommandWithReadyWait( &returnCode, printerInfo.deviceAddress, USB_PRINTER_IMAGE_STOP, USB_NULL, 0, 0 );
    }
    else
    {
        widthBytes = (imageInfo->width + 7) / 8;

        USBHostPrinterCommandWithReadyWait( &returnCode, printerInfo.deviceAddress, USB_PRINTER_IMAGE_START, USB_DATA_POINTER_RAM(imageInfo), sizeof(USB_PRINTER_IMAGE_INFO), 0 );

        for (currentRow=0; currentRow<imageInfo->height; currentRow++)
        {
            USBHostPrinterCommandWithReadyWait( &returnCode, printerInfo.deviceAddress, USB_PRINTER_IMAGE_DATA_HEADER, USB_NULL, imageInfo->width, 0 );
            USBHostPrinterCommandWithReadyWait( &returnCode, printerInfo.deviceAddress, USB_PRINTER_IMAGE_DATA, USB_DATA_POINTER_ROM(ptr), imageInfo->width, USB_PRINTER_TRANSFER_FROM_ROM );
            ptr += widthBytes;
        }

        USBHostPrinterCommandWithReadyWait( &returnCode, printerInfo.deviceAddress, USB_PRINTER_IMAGE_STOP, USB_NULL, 0, 0 );
    }
}


/****************************************************************************
  Function:
    void PrintReceipts( void )

  Description:
    This function prints the two receipts, one for the customer and one
    for the demo area to retain.
    
  Precondition:
    The USB printer must be attached.
    
  Parameters:
    None
    
  Returns:
    None
    
  Remarks:
    None
  ***************************************************************************/

void PrintReceipts( void )
{
    char                            bufferTime[50];
    char                            bufferPrize[50];
    USB_PRINTER_IMAGE_INFO          imageInfo;
    int                             i;
    USB_PRINTER_GRAPHICS_PARAMETERS params;
    static USB_PRINT_SCREEN_INFO    printScreen;
    BYTE                            returnCode;

    //--------------------------------------------------------------------------
    // Customer copy

    // Initialize
    USBHostPrinterCommandWithReadyWait( &returnCode, printerInfo.deviceAddress, USB_PRINTER_JOB_START, USB_NULL, 0, 0 );

    // Center
    USBHostPrinterCommandWithReadyWait( &returnCode, printerInfo.deviceAddress, USB_PRINTER_POS_JUSTIFICATION_CENTER, USB_NULL, 0, 0 );

    imageInfo.densityVertical   = 24;   // Specific to the Epson TM-T88IV
    imageInfo.densityHorizontal = 2;    // Double density
    imageInfo.positionX         = 0;
    imageInfo.positionY         = 0;
    PrintImage( (BYTE __prog__ *)logoMCHP.address, &imageInfo );

    // Font A
    USBHostPrinterCommandWithReadyWait( &returnCode, printerInfo.deviceAddress, USB_PRINTER_FONT_NAME, USB_NULL, USB_PRINTER_FONT_POS_18x36, 0 );

    // Text
    USBHostPrinterCommandWithReadyWait( &returnCode, printerInfo.deviceAddress, USB_PRINTER_POS_TEXT_LINE, USB_DATA_POINTER_RAM("\n\nMicrochip Technology Inc."), 3, USB_PRINTER_TRANSFER_COPY_DATA );

    // Left
    USBHostPrinterCommandWithReadyWait( &returnCode, printerInfo.deviceAddress, USB_PRINTER_POS_JUSTIFICATION_LEFT, USB_NULL, 0, 0 );

    // Font B
    USBHostPrinterCommandWithReadyWait( &returnCode, printerInfo.deviceAddress, USB_PRINTER_FONT_NAME, USB_NULL, USB_PRINTER_FONT_POS_12x24, 0 );

    // Text
    USBHostPrinterCommandWithReadyWait( &returnCode, printerInfo.deviceAddress, USB_PRINTER_POS_TEXT_LINE, USB_DATA_POINTER_RAM("DM240001 Explorer 16 Demo Board                 $129.99"), 1, USB_PRINTER_TRANSFER_COPY_DATA );
    USBHostPrinterCommandWithReadyWait( &returnCode, printerInfo.deviceAddress, USB_PRINTER_POS_TEXT_LINE, USB_DATA_POINTER_RAM("MA240014 PIC24F USB PIM                          $25.00"), 1, USB_PRINTER_TRANSFER_COPY_DATA );
    USBHostPrinterCommandWithReadyWait( &returnCode, printerInfo.deviceAddress, USB_PRINTER_POS_TEXT_LINE, USB_DATA_POINTER_RAM("AC164131 USB PICtail Plus Daughter Board         $60.00"), 1, USB_PRINTER_TRANSFER_COPY_DATA );
    USBHostPrinterCommandWithReadyWait( &returnCode, printerInfo.deviceAddress, USB_PRINTER_POS_TEXT_LINE, USB_DATA_POINTER_RAM("AC164127 Graphics PICtail Plus Daughter Board   $135.00"), 2, USB_PRINTER_TRANSFER_COPY_DATA );

    // Double height
    USBHostPrinterCommandWithReadyWait( &returnCode, printerInfo.deviceAddress, USB_PRINTER_FONT_NAME, USB_NULL, USB_PRINTER_FONT_POS_12x48, 0 );

    // Center
    USBHostPrinterCommandWithReadyWait( &returnCode, printerInfo.deviceAddress, USB_PRINTER_POS_JUSTIFICATION_CENTER, USB_NULL, 0, 0 );

    // Text
    USBHostPrinterCommandWithReadyWait( &returnCode, printerInfo.deviceAddress, USB_PRINTER_POS_TEXT_LINE, USB_DATA_POINTER_RAM("Supporting POS Printers and Barcode Scanners..."), 3, USB_PRINTER_TRANSFER_COPY_DATA );

    // Bold
    USBHostPrinterCommandWithReadyWait( &returnCode, printerInfo.deviceAddress, USB_PRINTER_FONT_BOLD, USB_NULL, 0, 0 );

    // Largest internal font
    USBHostPrinterCommandWithReadyWait( &returnCode, printerInfo.deviceAddress, USB_PRINTER_FONT_NAME, USB_NULL, USB_PRINTER_FONT_POS_36x72, 0 );

    // Text
    USBHostPrinterCommandWithReadyWait( &returnCode, printerInfo.deviceAddress, USB_PRINTER_POS_TEXT_LINE, USB_DATA_POINTER_RAM("PRICELESS!"), 3, USB_PRINTER_TRANSFER_COPY_DATA );

    // Normal
    USBHostPrinterCommandWithReadyWait( &returnCode, printerInfo.deviceAddress, USB_PRINTER_FONT_MEDIUM, USB_NULL, 0, 0 );

    // Original font
    USBHostPrinterCommandWithReadyWait( &returnCode, printerInfo.deviceAddress, USB_PRINTER_FONT_NAME, USB_NULL, USB_PRINTER_FONT_POS_18x36, 0 );

    // Reversed
    USBHostPrinterCommandWithReadyWait( &returnCode, printerInfo.deviceAddress, USB_PRINTER_POS_FONT_REVERSE, USB_NULL, 1, 0 );

    // Text
    USBHostPrinterCommandWithReadyWait( &returnCode, printerInfo.deviceAddress, USB_PRINTER_POS_TEXT_LINE, USB_DATA_POINTER_RAM("*** MASTERs Discounts are available ***"), 1, USB_PRINTER_TRANSFER_COPY_DATA );
    USBHostPrinterCommandWithReadyWait( &returnCode, printerInfo.deviceAddress, USB_PRINTER_POS_TEXT_LINE, USB_DATA_POINTER_RAM("*** at the Development Tools Store ***"), 1, USB_PRINTER_TRANSFER_COPY_DATA );

    // Not reversed
    USBHostPrinterCommandWithReadyWait( &returnCode, printerInfo.deviceAddress, USB_PRINTER_POS_FONT_REVERSE, USB_NULL, 0, 0 );

    // Signature
    printScreen.xL                              = SIGNATURE_PANEL_LEFT+GOL_EMBOSS_SIZE+1;
    printScreen.yT                              = SIGNATURE_PANEL_TOP+GOL_EMBOSS_SIZE+1;
    printScreen.xR                              = SIGNATURE_PANEL_RIGHT-GOL_EMBOSS_SIZE-1;
    printScreen.yB                              = SIGNATURE_PANEL_BOTTOM-GOL_EMBOSS_SIZE-1;
    printScreen.colorBlack                      = BRIGHTRED;
    printScreen.printerType                     = printerInfo.support;
    printScreen.printerInfo.densityVertical     = 24;
    printScreen.printerInfo.densityHorizontal   = 2;
    PrintScreen( printerInfo.deviceAddress, &printScreen );

    RTCCProcessEvents();

    // Bar Code date/time
    bufferTime[ 0] = '0';
    bufferTime[ 1] = _date_str[4];
    bufferTime[ 2] = _date_str[5];
    for (i=1; i<=12; i++)
    {
        if ((monthNames[i-1][0] == _date_str[0]) &&
            (monthNames[i-1][1] == _date_str[1]) &&
            (monthNames[i-1][2] == _date_str[2]))
        {
            if (i < 10)
            {
                bufferTime[ 3] = '0';
                bufferTime[ 4] = i + '0';
            }
            else
            {
                bufferTime[ 3] = '1';
                bufferTime[ 4] = (10 - i) + '0';
            }
            break;
        }
    }
    bufferTime[ 5] = _date_str[10];
    bufferTime[ 6] = _date_str[11];
    bufferTime[ 7] = _time_str[4];
    bufferTime[ 8] = _time_str[5];
    bufferTime[ 9] = _time_str[7];
    bufferTime[10] = _time_str[8];

    params.sBarCode.height                      = 75;                               // Bar code height in dots.
    params.sBarCode.type                        = USB_PRINTER_POS_BARCODE_UPC_A;    // Bar code type.  See the USB_PRINTER_POS_BARCODE_FORMAT enumeration.
    params.sBarCode.textPosition                = BARCODE_TEXT_BELOW;               // Position of the readable text.  Valid values are BARCODE_TEXT_OMIT, BARCODE_TEXT_ABOVE, BARCODE_TEXT_BELOW, BARCODE_TEXT_ABOVE_AND_BELOW.
    params.sBarCode.textFont                    = BARCODE_TEXT_12x24;               // Font of the readable text.  Valid values are dependent on the particular POS printer.
    params.sBarCode.data                        = (BYTE *)bufferTime;               // Pointer to the barcode data.
    params.sBarCode.dataLength                  = 11;                               // Number of bytes of barcode data.
    USBHostPrinterCommandWithReadyWait( &returnCode, printerInfo.deviceAddress, USB_PRINTER_POS_BARCODE, USB_DATA_POINTER_RAM(&params.sBarCode), sizeof(params.sBarCode), 0 );

    // Feed
    USBHostPrinterCommandWithReadyWait( &returnCode, printerInfo.deviceAddress, USB_PRINTER_POS_FEED, USB_NULL, 1, USB_PRINTER_TRANSFER_COPY_DATA );

    // Bar Code prize
    GivePrize( bufferPrize );

    params.sBarCode.height                      = 75;                               // Bar code height in dots.
    params.sBarCode.type                        = USB_PRINTER_POS_BARCODE_CODE39;   // Bar code type.  See the USB_PRINTER_POS_BARCODE_FORMAT enumeration.
    params.sBarCode.flags.bits.bPrintCheckDigit = 0;                                // Do not print a check digit for this bar code format.
    params.sBarCode.textPosition                = BARCODE_TEXT_OMIT;                // Position of the readable text.  Valid values are BARCODE_TEXT_OMIT, BARCODE_TEXT_ABOVE, BARCODE_TEXT_BELOW, BARCODE_TEXT_ABOVE_AND_BELOW.
    params.sBarCode.textFont                    = BARCODE_TEXT_12x24;               // Font of the readable text.  Valid values are dependent on the particular POS printer.
    params.sBarCode.data                        = (BYTE *)bufferPrize;              // Pointer to the barcode data.
    params.sBarCode.dataLength                  = strlen(bufferPrize);              // Number of bytes of barcode data.
    USBHostPrinterCommandWithReadyWait( &returnCode, printerInfo.deviceAddress, USB_PRINTER_POS_BARCODE, USB_DATA_POINTER_RAM(&params.sBarCode), sizeof(params.sBarCode), 0 );

    // Feed and Text
    USBHostPrinterCommandWithReadyWait( &returnCode, printerInfo.deviceAddress, USB_PRINTER_POS_FEED, USB_NULL, 2, USB_PRINTER_TRANSFER_COPY_DATA );
    USBHostPrinterCommandWithReadyWait( &returnCode, printerInfo.deviceAddress, USB_PRINTER_POS_TEXT_LINE, USB_DATA_POINTER_RAM("Bring your receipt to Grand Canyon 6"), 1, USB_PRINTER_TRANSFER_COPY_DATA );
    USBHostPrinterCommandWithReadyWait( &returnCode, printerInfo.deviceAddress, USB_PRINTER_POS_TEXT_LINE, USB_DATA_POINTER_RAM("to see the USB Barcode Scanner Demo."), 2, USB_PRINTER_TRANSFER_COPY_DATA );

    if (today != NOT_A_PRIZE_DAY)
    {
        USBHostPrinterCommandWithReadyWait( &returnCode, printerInfo.deviceAddress, USB_PRINTER_TEXT, USB_DATA_POINTER_RAM("And see if you win a PRIZE!!!"), 2, USB_PRINTER_TRANSFER_COPY_DATA );
    }

    // Feed and cut
    USBHostPrinterCommandWithReadyWait( &returnCode, printerInfo.deviceAddress, USB_PRINTER_POS_CUT, USB_NULL, 2, 0 );

    //--------------------------------------------------------------------------
    // Microchip copy

    // Initialize
    USBHostPrinterCommandWithReadyWait( &returnCode, printerInfo.deviceAddress, USB_PRINTER_JOB_START, USB_NULL, 0, 0 );

    // Center
    USBHostPrinterCommandWithReadyWait( &returnCode, printerInfo.deviceAddress, USB_PRINTER_POS_JUSTIFICATION_CENTER, USB_NULL, 0, 0 );

    PrintImage( (BYTE __prog__ *)logoMCHP.address, &imageInfo );

    // Feed
    USBHostPrinterCommandWithReadyWait( &returnCode, printerInfo.deviceAddress, USB_PRINTER_POS_FEED, USB_NULL, 2, USB_PRINTER_TRANSFER_COPY_DATA );

    // Signature
    printScreen.xL                      = SIGNATURE_PANEL_LEFT+GOL_EMBOSS_SIZE+1;
    printScreen.yT                      = SIGNATURE_PANEL_TOP+GOL_EMBOSS_SIZE+1;
    printScreen.xR                      = SIGNATURE_PANEL_RIGHT-GOL_EMBOSS_SIZE-1;
    printScreen.yB                      = SIGNATURE_PANEL_BOTTOM-GOL_EMBOSS_SIZE-1;
    printScreen.colorBlack              = BRIGHTRED;
    //printScreen.printerInfo.positionX   = 0;
    //printScreen.printerInfo.positionY   = 0;
    printScreen.printerType                     = printerInfo.support;
    printScreen.printerInfo.densityVertical     = 24;
    printScreen.printerInfo.densityHorizontal   = 2;
    PrintScreen( printerInfo.deviceAddress, &printScreen );

    // Feed
    USBHostPrinterCommandWithReadyWait( &returnCode, printerInfo.deviceAddress, USB_PRINTER_POS_FEED, USB_NULL, 1, USB_PRINTER_TRANSFER_COPY_DATA );

    params.sBarCode.height                      = 75;                               // Bar code height in dots.
    params.sBarCode.type                        = USB_PRINTER_POS_BARCODE_UPC_A;    // Bar code type.  See the USB_PRINTER_POS_BARCODE_FORMAT enumeration.
    params.sBarCode.textPosition                = BARCODE_TEXT_BELOW;               // Position of the readable text.  Valid values are BARCODE_TEXT_OMIT, BARCODE_TEXT_ABOVE, BARCODE_TEXT_BELOW, BARCODE_TEXT_ABOVE_AND_BELOW.
    params.sBarCode.textFont                    = BARCODE_TEXT_12x24;               // Font of the readable text.  Valid values are dependent on the particular POS printer.
    params.sBarCode.data                        = (BYTE *)bufferTime;               // Pointer to the barcode data.
    params.sBarCode.dataLength                  = 11;                               // Number of bytes of barcode data.
    USBHostPrinterCommandWithReadyWait( &returnCode, printerInfo.deviceAddress, USB_PRINTER_POS_BARCODE, USB_DATA_POINTER_RAM(&params.sBarCode), sizeof(params.sBarCode), 0 );

    // Feed
    USBHostPrinterCommandWithReadyWait( &returnCode, printerInfo.deviceAddress, USB_PRINTER_POS_FEED, USB_NULL, 1, USB_PRINTER_TRANSFER_COPY_DATA );

    params.sBarCode.height                      = 75;                               // Bar code height in dots.
    params.sBarCode.type                        = USB_PRINTER_POS_BARCODE_CODE39;   // Bar code type.  See the USB_PRINTER_POS_BARCODE_FORMAT enumeration.
    params.sBarCode.flags.bits.bPrintCheckDigit = 0;                                // Do not print a check digit for this bar code format.
    params.sBarCode.textPosition                = BARCODE_TEXT_OMIT;                // Position of the readable text.  Valid values are BARCODE_TEXT_OMIT, BARCODE_TEXT_ABOVE, BARCODE_TEXT_BELOW, BARCODE_TEXT_ABOVE_AND_BELOW.
    params.sBarCode.textFont                    = BARCODE_TEXT_12x24;               // Font of the readable text.  Valid values are dependent on the particular POS printer.
    params.sBarCode.data                        = (BYTE *)bufferPrize;              // Pointer to the barcode data.
    params.sBarCode.dataLength                  = strlen(bufferPrize);              // Number of bytes of barcode data.
    USBHostPrinterCommandWithReadyWait( &returnCode, printerInfo.deviceAddress, USB_PRINTER_POS_BARCODE, USB_DATA_POINTER_RAM(&params.sBarCode), sizeof(params.sBarCode), 0 );

    // Feed and cut
    USBHostPrinterCommandWithReadyWait( &returnCode, printerInfo.deviceAddress, USB_PRINTER_POS_CUT, USB_NULL, 100, 0 );

    // Terminate
    USBHostPrinterCommandWithReadyWait( &returnCode, printerInfo.deviceAddress, USB_PRINTER_JOB_STOP, USB_NULL, 0, 0 );
}


/****************************************************************************
  Function:
    WORD ProcessMessagePassword( WORD objMsg, OBJ_HEADER* pObj, GOL_MSG* pMsg )

  Description:
    This function processes touch messages for the password screen.
    
  Precondition:
    The correct screen must be displayed.
    
  Parameters:
    WORD objMsg         - Translated message for an object.
    OBJ_HEADER* pObj    - Pointer to the object.
    GOL_MSG* pMsg       - Pointer to the GOL message from the user.
    
  Return Values:
    1 - Perform default processing for this object and message.
    0 - Do not perform default processing for this object and message.
    
  Remarks:
    None
  ***************************************************************************/

WORD ProcessMessagePassword( WORD objMsg, OBJ_HEADER* pObj, GOL_MSG* pMsg )
{
    SHORT       id;
    EDITBOX*    pEb;

    id = GetObjID(pObj);

    // If number key is pressed
    if(objMsg != BTN_MSG_PRESSED)
    {
        return 1;
    }


    if ((id >= ID_BUTTON_PASSWORD_KEYPAD0) && (id <= ID_BUTTON_PASSWORD_KEYPAD9))
    {
        password[passwordLength++] = '0' + (id - ID_BUTTON_PASSWORD_KEYPAD0);
        pEb = (EDITBOX*)GOLFindObject(ID_EDITBOX_PASSWORD);
        EbAddChar(pEb,'?');
        SetState(pEb, EB_DRAW);
    }

    if (id == ID_BUTTON_PASSWORD_ASTERISK)
    {
        password[passwordLength++] = '*';
        pEb = (EDITBOX*)GOLFindObject(ID_EDITBOX_PASSWORD);
        EbAddChar(pEb,'?');
        SetState(pEb, EB_DRAW);
    }

    if (id == ID_BUTTON_PASSWORD_POUND)
    {
        password[passwordLength++] = '#';
        pEb = (EDITBOX*)GOLFindObject(ID_EDITBOX_PASSWORD);
        EbAddChar(pEb,'?');
        SetState(pEb, EB_DRAW);
    }

    if (id ==ID_BUTTON_PASSWORD_BACKSPACE)
    {
        if (passwordLength)
        {
            passwordLength--;
            pEb = (EDITBOX*)GOLFindObject(ID_EDITBOX_PASSWORD);
            EbDeleteChar(pEb);
            SetState(pEb, EB_DRAW);
        }
    }

    if (id == ID_BUTTON_PASSWORD_OK)
    {
        password[passwordLength] = 0;
        if (!strcmp( password, PRIZE_ACCESS_PASSWORD ))
        {
            screenState = SCREEN_DISPLAY_PRIZES;
        }
        else
        {
            screenState = SCREEN_DISPLAY_MAIN;
        }
    }

    return 1;
}

/****************************************************************************
  Function:
    WORD ProcessMessagePrizes( WORD objMsg, OBJ_HEADER* pObj, GOL_MSG* pMsg );
    
  Description:
    This function processes touch messages for the prize configuration screen.
    
  Precondition:
    The correct screen must be displayed.
    
  Parameters:
    WORD objMsg         - Translated message for an object.
    OBJ_HEADER* pObj    - Pointer to the object.
    GOL_MSG* pMsg       - Pointer to the GOL message from the user.
    
  Return Values:
    1 - Perform default processing for this object and message.
    0 - Do not perform default processing for this object and message.
    
  Remarks:
    None
  ***************************************************************************/

WORD ProcessMessagePrizes( WORD objMsg, OBJ_HEADER* pObj, GOL_MSG* pMsg )
{
    XCHAR   buffer[MAX_PRIZE_LENGTH];
    EDITBOX *editbox;
    BOOL    updateNumbers;

    // If number key is pressed
    if(objMsg != BTN_MSG_PRESSED)
    {
        return 1;
    }

    updateNumbers = FALSE;

    switch(GetObjID(pObj))
    {
        case ID_DAY_PLUS:
            if (currentDayConfig < NUM_PRIZE_DAYS-1)
            {
                currentDayConfig ++;
                editbox = (EDITBOX *)GOLFindObject( ID_LIST_DAY );
                EbSetText( editbox, &(prizeDays[currentDayConfig][0]) );
                SetState( editbox, EB_DRAW );
                updateNumbers = TRUE;
            }
            break;

        case ID_DAY_MINUS:
            if (currentDayConfig > 0)
            {
                currentDayConfig --;
                editbox = (EDITBOX *)GOLFindObject( ID_LIST_DAY );
                EbSetText( editbox, &(prizeDays[currentDayConfig][0]) );
                SetState( editbox, EB_DRAW );
                updateNumbers = TRUE;
            }
            break;

        case ID_PRIZE_PLUS:
            if (currentPrizeConfig < NUM_PRIZES-1)
            {
                currentPrizeConfig ++;
                editbox = (EDITBOX *)GOLFindObject( ID_LIST_PRIZE );
                EbSetText( editbox, &(prizes[currentPrizeConfig].name[0]) );
                SetState( editbox, EB_DRAW );
                updateNumbers = TRUE;
            }
            break;

        case ID_PRIZE_MINUS:
            if (currentPrizeConfig > 0)
            {
                currentPrizeConfig --;
                editbox = (EDITBOX *)GOLFindObject( ID_LIST_PRIZE );
                EbSetText( editbox, &(prizes[currentPrizeConfig].name[0]) );
                SetState( editbox, EB_DRAW );
                updateNumbers = TRUE;
            }
            break;

        case ID_TOTAL_PLUS:
            if (prizes[currentPrizeConfig].info[currentDayConfig].available < MAX_PRIZES_AVAILABLE)
            {
                prizes[currentPrizeConfig].info[currentDayConfig].available ++;
                updateNumbers = TRUE;
            }
            break;

        case ID_TOTAL_MINUS:
            if (prizes[currentPrizeConfig].info[currentDayConfig].available > 0)
            {
                prizes[currentPrizeConfig].info[currentDayConfig].available --;
                updateNumbers = TRUE;
            }
            break;

        case ID_GIVEN_PLUS:
            if (prizes[currentPrizeConfig].info[currentDayConfig].given < prizes[currentPrizeConfig].info[currentDayConfig].available)
            {
                prizes[currentPrizeConfig].info[currentDayConfig].given ++;
                updateNumbers = TRUE;
            }
            break;

        case ID_GIVEN_MINUS:
            if (prizes[currentPrizeConfig].info[currentDayConfig].given > 0)
            {
                prizes[currentPrizeConfig].info[currentDayConfig].given --;
                updateNumbers = TRUE;
            }
            break;

        case ID_RATE_PLUS:
            if (prizes[currentPrizeConfig].info[currentDayConfig].rate < 16)
            {
                prizes[currentPrizeConfig].info[currentDayConfig].rate ++;
                updateNumbers = TRUE;
            }
            break;

        case ID_RATE_MINUS:
            if (prizes[currentPrizeConfig].info[currentDayConfig].rate > 0)
            {
                prizes[currentPrizeConfig].info[currentDayConfig].rate --;
                updateNumbers = TRUE;
            }
            break;

        case ID_BUTTON_CANCEL:
            // Reread the original values
            ReadPrizeConfiguration();
            screenState = SCREEN_DISPLAY_MAIN;
            break;

        case ID_BUTTON_OK:
            // Save the new configuration
            SavePrizeConfiguration();
            screenState = SCREEN_DISPLAY_MAIN;
            break;
    }

    if (updateNumbers)
    {
        sprintf( buffer, "%d", prizes[currentPrizeConfig].info[currentDayConfig].available );
        editbox = (EDITBOX *)GOLFindObject( ID_LIST_TOTAL );
        EbSetText( editbox, buffer );
        SetState( editbox, EB_DRAW );

        sprintf( buffer, "%d", prizes[currentPrizeConfig].info[currentDayConfig].given );
        editbox = (EDITBOX *)GOLFindObject( ID_LIST_GIVEN );
        EbSetText( editbox, buffer );
        SetState( editbox, EB_DRAW );

        sprintf( buffer, "%d", prizes[currentPrizeConfig].info[currentDayConfig].rate );
        editbox = (EDITBOX *)GOLFindObject( ID_LIST_RATE );
        EbSetText( editbox, buffer );
        SetState( editbox, EB_DRAW );
    }

    return 1;
}


/****************************************************************************
  Function:
    WORD ProcessMessageSignature( WORD objMsg, OBJ_HEADER* pObj, GOL_MSG* pMsg );
    
  Description:
    This function processes touch messages for the signature screen.
    
  Precondition:
    The correct screen must be displayed.
    
  Parameters:
    WORD objMsg         - Translated message for an object.
    OBJ_HEADER* pObj    - Pointer to the object.
    GOL_MSG* pMsg       - Pointer to the GOL message from the user.
    
  Return Values:
    1 - Perform default processing for this object and message.
    0 - Do not perform default processing for this object and message.
    
  Remarks:
    None
  ***************************************************************************/

WORD ProcessMessageSignature( WORD objMsg, OBJ_HEADER* pObj, GOL_MSG* pMsg )
{
    static SHORT                    previousX   = -1;
    static SHORT                    previousY   = -1;
    SHORT                           x;
    SHORT                           y;

    switch(GetObjID(pObj))
    {
        case ID_WINDOW_SIGNATURE:
            // get touched position
            x = pMsg->param1;
            y = pMsg->param2;

            // Check if it falls in the signature box
            if( ( (SIGNATURE_PANEL_LEFT+GOL_EMBOSS_SIZE) < x) &&
                ( (SIGNATURE_PANEL_RIGHT-GOL_EMBOSS_SIZE) > x) &&
                ( (SIGNATURE_PANEL_TOP+GOL_EMBOSS_SIZE) < y) &&
                ( (SIGNATURE_PANEL_BOTTOM-GOL_EMBOSS_SIZE) > y) )
            {
                SetColor( BRIGHTRED );

                // if previous position is not valid or event is PRESS
                if ((pMsg->uiEvent == EVENT_PRESS) || (previousX < 0) )
                {
                    PutPixel( x, y );                  // draw pixel
                }
                else
                {
                    Line( previousX,   previousY,   x,   y );          // connect with thick line previous and current points
                    Line( previousX-1, previousY,   x-1, y );
                    Line( previousX+1, previousY,   x+1, y );
                    Line( previousX,   previousY-1, x,   y-1 );
                    Line( previousX,   previousY+1, x,   y+1 );
                }

                previousX = x;
                previousY = y;               // store position
            }
            else
            {
                // reset if outside of box
                previousX = -1;
            }
            return 1; // process by default
            break;

        case ID_BUTTON_CANCEL:
            if(objMsg == BTN_MSG_RELEASED)
            {
                screenState = SCREEN_DISPLAY_MAIN;
            }
            return 1; // process by default
            break;

        case ID_BUTTON_CLEAR:
            if(objMsg == BTN_MSG_RELEASED)
            {
                screenState = SCREEN_DISPLAY_SIGNATURE;
            }
            return 1; // process by default
            break;

        case ID_BUTTON_PRINT:
            if(objMsg == BTN_MSG_RELEASED)
            {
                PrintReceipts();
                screenState = SCREEN_DISPLAY_PRINT_DONE;
            }
            return 1; // process by default
            break;

        default:
            return 1; // process by default
    }
}


/****************************************************************************
  Function:
    WORD ProcessMessageTime( WORD objMsg, OBJ_HEADER* pObj, GOL_MSG* pMsg )

  Description:
    This function processes the messages for the time and date screen.  It
    allows the user to set the current time and date of the RTCC module.

  Precondition:
    Call ShowScreenTime() prior to using this function to display the correct
    screen.

  Parameters:
    WORD objMsg  - The translated control-level message
    OBJ_HEADER* pObj    - Object to which the message applies
    GOL_MSG* pMsg       - The original system message information

  Return Values:
    0   - Do not call the default message handler.
    1   - Call the default message handler.

  Remarks:
    None
  ***************************************************************************/

WORD ProcessMessageTime( WORD objMsg, OBJ_HEADER* pObj, GOL_MSG* pMsg )
{
    WORD        controlID;
    signed char day;
    signed char dayMax;
    signed char hour;
    signed char minute;
    signed char month;
    signed char year;


    if (objMsg != BTN_MSG_RELEASED)
    {
        return 1;
    }

    // Update the selected field.

    RTCCProcessEvents();
    hour    = RTCCGetBinHour();
    minute  = RTCCGetBinMin();
    day     = RTCCGetBinDay();
    month   = RTCCGetBinMonth();
    year    = RTCCGetBinYear();

    dayMax  = daysPerMonth[month-1];

    // February has one day more for a leap year, unless it is on the thousands
    if ((month == 2) && ((year % 4) == 0) && (year != 0))
    {
        dayMax ++;
    }

    controlID = GetObjID(pObj);
    switch (controlID)
    {
        case ID_BUTTON_OK:
            today = NOT_A_PRIZE_DAY;
            if ((month == 7) && (year == 8))
            {
                if (day == 23)  // Wed, July 23, 2008)
                {
                    today = 0;
                }
                if (day == 24)  // Thu, July 24, 2008
                {
                    today = 1;
                }
                if (day == 25)  // Thu, July 24, 2008
                {
                    today = 2;
                }
            }
            screenState = SCREEN_DISPLAY_MAIN;
            return 1;
            break;

        case ID_DAY_PLUS:
            day ++;
            if (day > dayMax)
            {
                day = 1;
            }
            break;

        case ID_MONTH_PLUS:
            month ++;
            if (month > 12)
            {
                month = 1;
            }
            break;

        case ID_YEAR_PLUS:
            year ++;
            if (year > 99)
            {
                year = 0;
            }
            break;

        case ID_HOUR_PLUS:
            hour ++;
            if (hour > 23)
            {
                hour = 0;
            }
            break;

        case ID_MINUTE_PLUS:
            minute ++;
            if (minute > 59)
            {
                minute = 0;
            }
            break;

        case ID_DAY_MINUS:
            day --;
            if (day < 1)
            {
                day = dayMax;
            }
            break;

        case ID_MONTH_MINUS:
            month --;
            if (month < 1)
            {
                month = 12;
            }
            break;

        case ID_YEAR_MINUS:
            year --;
            if (year < 0)
            {
                year = 99;
            }
            break;

        case ID_HOUR_MINUS:
            hour --;
            if (hour < 0)
            {
                hour = 23;
            }
            break;

        case ID_MINUTE_MINUS:
            minute --;
            if (minute < 0)
            {
                minute = 59;
            }
            break;
    }

    RTCCOff();
    RTCCSetBinHour( hour );
    RTCCSetBinMin( minute );
    RTCCSetBinSec( 0 );
    RTCCSetBinDay( day );
    RTCCSetBinMonth( month );
    RTCCSetBinYear( year );
    RTCCCalculateWeekDay();
    RTCCSet();                      // Copy the new values to the RTCC registers
    UpdateDateTime();               // Update the display.

    return 1;   // Call the default handler to show the button state.
}


/****************************************************************************
  Function:
    WORD ProcessMessageUtilities( WORD objMsg, OBJ_HEADER* pObj, GOL_MSG* pMsg );
    
  Description:
    This function processes touch messages for the utilities screen.
    
  Precondition:
    The correct screen must be displayed.
    
  Parameters:
    WORD objMsg         - Translated message for an object.
    OBJ_HEADER* pObj    - Pointer to the object.
    GOL_MSG* pMsg       - Pointer to the GOL message from the user.
    
  Return Values:
    1 - Perform default processing for this object and message.
    0 - Do not perform default processing for this object and message.
    
  Remarks:
    None
  ***************************************************************************/

WORD ProcessMessageUtilities( WORD objMsg, OBJ_HEADER* pObj, GOL_MSG* pMsg )
{
    switch(GetObjID(pObj))
    {
        case ID_BUTTON_SET_TIME:
            if(objMsg == BTN_MSG_RELEASED)
            {
                screenState = SCREEN_DISPLAY_TIME;
            }
            break;

        case ID_BUTTON_CALIBRATE:
            if(objMsg == BTN_MSG_RELEASED)
            {
                TouchCalibration();
                TouchStoreCalibration();
                screenState = SCREEN_DISPLAY_MAIN;
            }
            break;

        case ID_BUTTON_PRIZES:
            if(objMsg == BTN_MSG_RELEASED)
            {
                screenState = SCREEN_DISPLAY_PASSWORD;
            }
            break;

        case ID_BUTTON_CANCEL:
            if(objMsg == BTN_MSG_RELEASED)
            {
                screenState = SCREEN_DISPLAY_MAIN;
            }
            break;
    }

    return 1;
}


/****************************************************************************
  Function:
    void ProcessScanner( void );
    
  Description:
    This function processes scanner input.  If it reads a valid bar code, 
    the screen state is set appropriately.
    
  Precondition:
    None
    
  Parameters:
    None
    
  Returns:
    None
    
  Remarks:
    There is a built-in delay in this routine.  If we scan too fast, 
    everything locks up.  If we don't scan fast enough, the scanner beeps to 
    indicate a possible error.
  ***************************************************************************/
#define DELAY_LOOPS         100

void ProcessScanner( void )
{
    BYTE            byteCount;
    static WORD     delay       = DELAY_LOOPS;
    BYTE            errorCode;
    SHORT           i;
    static BOOL     processed   = FALSE;

    // If the user unplugs the scanner, return to the main screen.
    if (!USBHostHID_ApiDeviceDetect())
    {
        screenState = SCREEN_DISPLAY_MAIN;
        return;
    }

    if (USBHostHID_ApiTransferIsComplete( &errorCode, &byteCount ))
    {
        if (byteCount && !processed)
        {
            processed = TRUE;

            /* process input report received from device */
            USBHostHID_ApiImportData(reportScanner.reportData, reportScanner.reportSize,
                                  Appl_BufferModifierKeys, &Appl_ModifierKeysDetails);
            USBHostHID_ApiImportData(reportScanner.reportData, reportScanner.reportSize,
                                  Appl_BufferNormalKeys, &Appl_NormalKeysDetails);

            // This is stripped down for the barcode scanner.
            if(Appl_BufferNormalKeys[0] != 0)
            {
                if (scannerTextIndex < MAX_SCAN_LENGTH)
                {
                    scannerText[scannerTextIndex] = ScannerHID2ASCII(Appl_BufferNormalKeys[0]);  // convert data to ascii

                    if (scannerText[scannerTextIndex] == 0x0D)
                    {
                        // We have a complete line.
                        scannerText[scannerTextIndex] = 0;
                        #ifdef DEBUG_MODE
                            UART2PrintString( scannerText );
                            UART2PrintString( "\r\n" );
                        #endif
                        if (scannerText[0] == '0')
                        {
                            // See if it looks like a valid time.
                            for (i=1; i<11; i++)
                            {
                                if (!(('0' <= scannerText[i]) && (scannerText[i] <= '9')))
                                {
                                    screenState = SCREEN_DISPLAY_INVALID_BARCODE;
                                    return;
                                }
                            }
                            screenState = SCREEN_DISPLAY_TIME_SCAN;
                            return;
                        }
                        else
                        {
                            // See if it is a valid prize.
                            // Terminate the string after the valid prize text.
                            scannerText[PRIZE_BARCODE_LENGTH-1] = 0;
                            for (i=0; i<NUM_PRIZES; i++)
                            {
                                if (!strcmp( scannerText, prizes[i].barcodeText ))
                                {
                                    prizeWon = i;
                                    screenState = SCREEN_DISPLAY_PRIZE_SCAN;
                                    return;
                                }
                            }
                            if (!strcmp( scannerText, BARCODE_NO_PRIZE ))
                            {
                                prizeWon = NO_PRIZE_WON;
                                screenState = SCREEN_DISPLAY_PRIZE_SCAN;
                                return;
                            }
                        }

                        // Invalid barcode
                        screenState = SCREEN_DISPLAY_INVALID_BARCODE;
                        return;
                    }
                    scannerTextIndex ++;
                }
                else
                {
                    // Reset, or we'll never be able to read a valid barcode.
                    scannerTextIndex = 0;
                }
            }

        }

        // Get next bar code
        if (!delay)
        {
            USBHostHID_ApiGetReport( reportScanner.reportID, Appl_ModifierKeysDetails.interfaceNum,
                    reportScanner.reportSize, reportScanner.reportData );
            delay = DELAY_LOOPS;
            processed = FALSE;
        }
        else
        {
            delay--;
        }
    }
}


/****************************************************************************
  Function:
    SHORT ReadAndQualify( WORD address, SHORT max );
    
  Description:
    This function is used to read a prize configuration value from the 
    EEPROM and make sure it its within an allowable range.
    
  Precondition:
    None
    
  Parameters:
    WORD address    - Address of the desired value on the EEPROM.
    SHORT max       - Maximum value of the parameter
    
  Returns:
    The 16-bit signed value read from the EEPROM at the indicated address.
    
  Remarks:
    Only non-negative values are allowed.
  ***************************************************************************/
SHORT ReadAndQualify( WORD address, SHORT max )
{
    SHORT   value;

    value = EEPROMReadWord( address );
    if (value < 0)   value = 0;
    if (value > max) value = max;
    return value;
}

/****************************************************************************
  Function:
    void ReadPrizeConfiguration( void );
    
  Description:
    This routine loads the stored prize information, so we can turn off the
    demo and still know how many prizes of what type we've given away.
    
  Precondition:
    None
    
  Parameters:
    None
    
  Returns:
    None.  The global prizes variable is updated.
    
  Remarks:
    None
  ***************************************************************************/
void ReadPrizeConfiguration( void )
{
    SHORT   prize;
    SHORT   day;

    for (prize=0; prize<NUM_PRIZES; prize++)
    {
        for (day=0; day<NUM_PRIZE_DAYS; day++)
        {
            prizes[prize].info[day].available    = ReadAndQualify( EEPROM_PRIZE_INFO + (prize*18) + (day*6) + 0, 20 );
            prizes[prize].info[day].given        = ReadAndQualify( EEPROM_PRIZE_INFO + (prize*18) + (day*6) + 2, 20 );
            prizes[prize].info[day].rate         = ReadAndQualify( EEPROM_PRIZE_INFO + (prize*18) + (day*6) + 4, 16 );
        }
    }
}


/****************************************************************************
  Function:
    void SavePrizeConfiguration( void );
    
  Description:
    This routine saves the current prize information, so we can turn off the
    demo and still know how many prizes of what type we've given away.

  Precondition:
    None
    
  Parameters:
    None
    
  Returns:
    None
    
  Remarks:
    None
  ***************************************************************************/

void SavePrizeConfiguration( void )
{
    int prize;
    int day;

    for (prize=0; prize<NUM_PRIZES; prize++)
    {
        for (day=0; day<NUM_PRIZE_DAYS; day++)
        {
            EEPROMWriteWord( prizes[prize].info[day].available, EEPROM_PRIZE_INFO + (prize*18) + (day*6) + 0 );
            EEPROMWriteWord( prizes[prize].info[day].given,     EEPROM_PRIZE_INFO + (prize*18) + (day*6) + 2 );
            EEPROMWriteWord( prizes[prize].info[day].rate,      EEPROM_PRIZE_INFO + (prize*18) + (day*6) + 4 );
        }
    }
}


/****************************************************************************
  Function:
    void ScreenDissolve( void );
    
  Description:
    This routine creates a nice fade transition between screens.  It's not
    required, but it makes a nice effect.
    
  Precondition:
    None
    
  Parameters:
    None
    
  Returns:
    None
    
  Remarks:
    None
  ***************************************************************************/

void ScreenDissolve( void )
{
    SHORT   i;
    SHORT   j;
    SHORT   k;
    WORD    srRes       = 0x0001;
    WORD    xtemp;
    WORD    ytemp;

    // random fade effect using a Linear Feedback Shift Register (LFSR)
    SetColor(WHITE);
    for (i = 1800; i > 0 ; i--)
    {
        // for a 16 bit LFSR variable the taps are at bits: 1, 2, 4, and 15
        srRes = (srRes >> 1) ^ (-(int)(srRes & 1) & 0x8006);
        xtemp = (srRes & 0x00FF)%40;
        ytemp = (srRes >> 8)%30;

        // by replicating the white (1x1) bars into 8 areas fading is faster
        for (j = 0; j < 8; j++) {
            for (k = 0; k < 8; k++)
                PutPixel(xtemp+(j*40), ytemp+(k*30));
        }
    }
}


/****************************************************************************
  Function:
    void ShowScreenDeviceError( void );
    
  Description:
    This function is used to display the screen for a USB device error.
    
  Precondition:
    None
    
  Parameters:
    None
    
  Returns:
    None
    
  Remarks:
    None
  ***************************************************************************/

void ShowScreenDeviceError( void )
{
    InitializeScreen( NULL );

    StCreate( ID_TEXT_TITLE,
            (GetMaxX()-GetTextWidth((XCHAR*)usbErrorText, (void*)&FONTDEFAULT))>>1, 2, GetMaxX(), 2+GetTextHeight( (void *)&FONTDEFAULT )-1,
            ST_DRAW,
            usbErrorText,
            NULL );

    PutImage( 0, 50, (void*)&deviceError, IMAGE_X2 );
    TouchToContinue( NULL );
}


/****************************************************************************
  Function:
    void ShowScreenInvalidBarcode( void );
    
  Description:
    This function is used to display the screen for an invalid barcode.
    
  Precondition:
    None
    
  Parameters:
    None
    
  Returns:
    None
    
  Remarks:
    None
  ***************************************************************************/

void ShowScreenInvalidBarcode( void )
{
    InitializeScreen( blackScheme );

    PutImage( 0, 10, (void*)&intro, IMAGE_X2 );

    strcpy( textTitle, "Invalid demo barcode." );
    StCreate( ID_TEXT_TITLE,
            (GetMaxX()-GetTextWidth((XCHAR*)textTitle, (void*)&FONTDEFAULT))>>1, 150,
            GetMaxX(), 150+GetTextHeight( (void *)&FONTDEFAULT )-1,
            ST_DRAW, textTitle, blackScheme );

    BtnCreate( ID_BUTTON_OK,                 // button ID
              (GetMaxX()-70)/2, GetMaxY()-35,                  // left, top corner
              (GetMaxX()-70)/2 + 70,GetMaxY()-5, 5,                // right, bottom corner (with radius = 5)
              BTN_DRAW,                         // will be dislayed and disabled after creation
              NULL,                             // no bitmap
              "OK",                             // button text
              NULL );                           // use navigation scheme
}


/****************************************************************************
  Function:
    void ShowScreenMain( void );

  Description:
    This function is used to display the main screen.
    
  Precondition:
    None
    
  Parameters:
    None
    
  Returns:
    None
    
  Remarks:
    None
  ***************************************************************************/

void ShowScreenMain( void )
{
    InitializeScreen( whiteScheme );

    PutImage( 0, 0, (void*)&mchpLogo, IMAGE_NORMAL );
    PutImage( (320-200)/2, 50, (void*)&nothingConnected, IMAGE_NORMAL );
}


/****************************************************************************
  Function:
    void ShowScreenPassword( void );
    
  Description:
    This function is used to display the screen for configuration password
    entry.
    
  Precondition:
    None
    
  Parameters:
    None
    
  Returns:
    None
    
  Remarks:
    None
  ***************************************************************************/

#define KEYSTARTX   50
#define KEYSTARTY   43
#define KEYSIZEX    53
#define KEYSIZEY    39
#define MAXCHARSIZE 20

void ShowScreenPassword( void )
{
    InitializeScreen( NULL );

    passwordLength = 0;

    strcpy( textTitle, "Prize Configuration Password" );
    StCreate( ID_TEXT_TITLE,
            (GetMaxX()-GetTextWidth((XCHAR*)textTitle, (void*)&FONTDEFAULT))>>1, 2, GetMaxX(), 2+GetTextHeight( (void *)&FONTDEFAULT )-1,
            ST_DRAW, textTitle, NULL );

    EbCreate(ID_EDITBOX_PASSWORD,               // ID
              35,KEYSTARTY+1,GetMaxX()-35,KEYSTARTY+1*KEYSIZEY-GOL_EMBOSS_SIZE,  // dimension
              EB_DRAW|EB_CARET|EB_FOCUSED, // will be dislayed after creation
              NULL,
              MAXCHARSIZE,
              NULL);               // default GOL scheme

    BtnCreate(ID_BUTTON_PASSWORD_KEYPAD0,               // ID
              KEYSTARTX+1*KEYSIZEX,
              KEYSTARTY+4*KEYSIZEY,
              KEYSTARTX+2*KEYSIZEX,
              KEYSTARTY+5*KEYSIZEY,     // dimension
              0,
              BTN_DRAW,                 // will be dislayed after creation
              NULL,                     // no bitmap
              "0",          // text
              NULL);                // alternative GOL scheme

    BtnCreate(ID_BUTTON_PASSWORD_KEYPAD1,               // ID
              KEYSTARTX+0*KEYSIZEX,
              KEYSTARTY+1*KEYSIZEY,
              KEYSTARTX+1*KEYSIZEX,
              KEYSTARTY+2*KEYSIZEY,     // dimension
              0,
              BTN_DRAW,                 // will be dislayed after creation
              NULL,                     // no bitmap
              "1",          // text
              NULL);                // alternative GOL scheme

    BtnCreate(ID_BUTTON_PASSWORD_KEYPAD2,               // ID
              KEYSTARTX+1*KEYSIZEX,
              KEYSTARTY+1*KEYSIZEY,
              KEYSTARTX+2*KEYSIZEX,
              KEYSTARTY+2*KEYSIZEY,     // dimension
              0,
              BTN_DRAW,                 // will be dislayed after creation
              NULL,                     // no bitmap
              "2",          // text
              NULL);                // alternative GOL scheme

    BtnCreate(ID_BUTTON_PASSWORD_KEYPAD3,               // ID
              KEYSTARTX+2*KEYSIZEX,
              KEYSTARTY+1*KEYSIZEY,
              KEYSTARTX+3*KEYSIZEX,
              KEYSTARTY+2*KEYSIZEY,     // dimension
              0,
              BTN_DRAW,                 // will be dislayed after creation
              NULL,                     // no bitmap
              "3",          // text
              NULL);                // alternative GOL scheme

    BtnCreate(ID_BUTTON_PASSWORD_KEYPAD4,               // ID
              KEYSTARTX+0*KEYSIZEX,
              KEYSTARTY+2*KEYSIZEY,
              KEYSTARTX+1*KEYSIZEX,
              KEYSTARTY+3*KEYSIZEY,     // dimension
              0,
              BTN_DRAW,                 // will be dislayed after creation
              NULL,                     // no bitmap
              "4",          // text
              NULL);                // alternative GOL scheme

    BtnCreate(ID_BUTTON_PASSWORD_KEYPAD5,               // ID
              KEYSTARTX+1*KEYSIZEX,
              KEYSTARTY+2*KEYSIZEY,
              KEYSTARTX+2*KEYSIZEX,
              KEYSTARTY+3*KEYSIZEY,     // dimension
              0,
              BTN_DRAW,                 // will be dislayed after creation
              NULL,                     // no bitmap
              "5",          // text
              NULL);                // alternative GOL scheme

    BtnCreate(ID_BUTTON_PASSWORD_KEYPAD6,               // ID
              KEYSTARTX+2*KEYSIZEX,
              KEYSTARTY+2*KEYSIZEY,
              KEYSTARTX+3*KEYSIZEX,
              KEYSTARTY+3*KEYSIZEY,     // dimension
              0,
              BTN_DRAW,                 // will be dislayed after creation
              NULL,                     // no bitmap
              "6",          // text
              NULL);                // alternative GOL scheme

    BtnCreate(ID_BUTTON_PASSWORD_KEYPAD7,               // ID
              KEYSTARTX+0*KEYSIZEX,
              KEYSTARTY+3*KEYSIZEY,
              KEYSTARTX+1*KEYSIZEX,
              KEYSTARTY+4*KEYSIZEY,     // dimension
              0,
              BTN_DRAW,                 // will be dislayed after creation
              NULL,                     // no bitmap
              "7",          // text
              NULL);                // alternative GOL scheme

    BtnCreate(ID_BUTTON_PASSWORD_KEYPAD8,               // ID
              KEYSTARTX+1*KEYSIZEX,
              KEYSTARTY+3*KEYSIZEY,
              KEYSTARTX+2*KEYSIZEX,
              KEYSTARTY+4*KEYSIZEY,     // dimension
              0,
              BTN_DRAW,                 // will be dislayed after creation
              NULL,                     // no bitmap
              "8",          // text
              NULL);                // alternative GOL scheme

    BtnCreate(ID_BUTTON_PASSWORD_KEYPAD9,               // ID
              KEYSTARTX+2*KEYSIZEX,
              KEYSTARTY+3*KEYSIZEY,
              KEYSTARTX+3*KEYSIZEX,
              KEYSTARTY+4*KEYSIZEY,     // dimension
              0,
              BTN_DRAW,                 // will be dislayed after creation
              NULL,                     // no bitmap
              "9",          // text
              NULL);                // alternative GOL scheme

    BtnCreate(ID_BUTTON_PASSWORD_ASTERISK,              // ID
              KEYSTARTX+0*KEYSIZEX,
              KEYSTARTY+4*KEYSIZEY,
              KEYSTARTX+1*KEYSIZEX,
              KEYSTARTY+5*KEYSIZEY,     // dimension
              0,
              BTN_DRAW,                 // will be dislayed after creation
              NULL,                     // no bitmap
              "*",          // text
              NULL);                // alternative GOL scheme

    BtnCreate(ID_BUTTON_PASSWORD_POUND,                 // ID
              KEYSTARTX+2*KEYSIZEX,
              KEYSTARTY+4*KEYSIZEY,
              KEYSTARTX+3*KEYSIZEX,
              KEYSTARTY+5*KEYSIZEY,     // dimension
              0,
              BTN_DRAW,                 // will be dislayed after creation
              NULL,                     // no bitmap
              "#",          // text
              NULL);                // alternative GOL scheme

    BtnCreate(ID_BUTTON_PASSWORD_BACKSPACE,             // ID
              KEYSTARTX+3*KEYSIZEX,
              KEYSTARTY+1*KEYSIZEY,
              KEYSTARTX+4*KEYSIZEX,
              KEYSTARTY+3*KEYSIZEY,     // dimension
              0,
              BTN_DRAW,                 // will be dislayed after creation
              NULL,                     // no bitmap
              "<",          // Left Arrow
              altScheme);               // alternative GOL scheme

    BtnCreate(ID_BUTTON_PASSWORD_OK,                    // ID
              KEYSTARTX+3*KEYSIZEX,
              KEYSTARTY+3*KEYSIZEY,
              KEYSTARTX+4*KEYSIZEX,
              KEYSTARTY+5*KEYSIZEY,     // dimension
              0,
              BTN_DRAW,                 // will be dislayed after creation
              NULL,                     // no bitmap
              "OK",                     // "Hld"
              altScheme);               // alternative GOL scheme

}


/****************************************************************************
  Function:
    void ShowScreenPrintDone( void );
    
  Description:
    This function is used to display the screen after printing the receipts.
    
  Precondition:
    None
    
  Parameters:
    None
    
  Returns:
    None
    
  Remarks:
    None
  ***************************************************************************/

void ShowScreenPrintDone( void )
{
    InitializeScreen( blackScheme );

    PutImage( 0, 10, (void*)&intro, IMAGE_X2 );

    strcpy( textTitle, "Prize awards in Grand Canyon 6!" );
    StCreate( ID_TEXT_TITLE,
            (GetMaxX()-GetTextWidth((XCHAR*)textTitle, (void*)&FONTDEFAULT))>>1, 150,
            GetMaxX(), 150+GetTextHeight( (void *)&FONTDEFAULT )-1,
            ST_DRAW, textTitle, blackScheme );

    BtnCreate(ID_BUTTON_OK,                     // button ID
              GetMaxX()/2 - 35, GetMaxY()-35,   // left, top corner
              GetMaxX()/2 + 35, GetMaxY()-5, 5, // right, bottom corner (with radius = 5)
              BTN_DRAW,                         // will be dislayed after creation
              NULL,                             // no bitmap
              "OK",                             // button text
              NULL );                           // use navigation scheme
}


/****************************************************************************
  Function:
    void ShowScreenPrizes( void );

  Description:
    This function is used to display the screen for configuring prizes.
    
  Precondition:
    None
    
  Parameters:
    None
    
  Returns:
    None
    
  Remarks:
    None
  ***************************************************************************/

#define PRIZE_LABEL_WIDTH           60
#define PRIZE_NAME_WIDTH            200
#define PRIZE_LIST_WIDTH            (70-BUTTON_WIDTH)
#define PRIZE_LIST_HEIGHT           (textHeight - 1)
#define PRIZE_LINE1_START_Y         (LOCATION_MIN_Y)
#define PRIZE_LINE1_END_Y           (PRIZE_LINE1_START_Y + textHeight)
#define PRIZE_LINE1_LIST_END_Y      (PRIZE_LINE1_START_Y + PRIZE_LIST_HEIGHT)
#define PRIZE_LINE2_START_Y         (PRIZE_LINE1_END_Y + CONTROL_SPACING_Y)
#define PRIZE_LINE2_END_Y           (PRIZE_LINE2_START_Y + textHeight)
#define PRIZE_LINE2_LIST_END_Y      (PRIZE_LINE2_START_Y + PRIZE_LIST_HEIGHT)
#define PRIZE_LINE3_START_Y         (PRIZE_LINE2_END_Y + CONTROL_SPACING_Y)
#define PRIZE_LINE3_END_Y           (PRIZE_LINE3_START_Y + textHeight)
#define PRIZE_LINE3_LIST_END_Y      (PRIZE_LINE3_START_Y + PRIZE_LIST_HEIGHT)
#define PRIZE_COLUMN1               20
#define PRIZE_COLUMN2               (GetMaxX()/2)

#define PRIZE_START_X               (PRIZE_COLUMN1 + PRIZE_LABEL_WIDTH)
#define PRIZE_START_Y               PRIZE_LINE1_START_Y
#define PRIZE_END_X                 (PRIZE_START_X + PRIZE_NAME_WIDTH)
#define PRIZE_END_Y                 PRIZE_LINE1_LIST_END_Y
#define PRIZE_BUTTON_START_X        (PRIZE_END_X + 1 )
#define PRIZE_BUTTON_END_X          (PRIZE_BUTTON_START_X + BUTTON_WIDTH)

#define PDAY_START_X                (PRIZE_COLUMN1 + PRIZE_LABEL_WIDTH)
#define PDAY_START_Y                PRIZE_LINE2_START_Y
#define PDAY_END_X                  (PDAY_START_X + PRIZE_LIST_WIDTH)
#define PDAY_END_Y                  PRIZE_LINE2_LIST_END_Y
#define PDAY_BUTTON_START_X         (PDAY_END_X + 1 )
#define PDAY_BUTTON_END_X           (PDAY_BUTTON_START_X + BUTTON_WIDTH)

#define GIVEN_START_X               (PRIZE_COLUMN2 + PRIZE_LABEL_WIDTH)
#define GIVEN_START_Y               PRIZE_LINE2_START_Y
#define GIVEN_END_X                 (GIVEN_START_X + PRIZE_LIST_WIDTH)
#define GIVEN_END_Y                 PRIZE_LINE2_LIST_END_Y
#define GIVEN_BUTTON_START_X        (GIVEN_END_X + 1 )
#define GIVEN_BUTTON_END_X          (GIVEN_BUTTON_START_X + BUTTON_WIDTH)

#define TOTAL_START_X               (PRIZE_COLUMN1 + PRIZE_LABEL_WIDTH)
#define TOTAL_START_Y               PRIZE_LINE3_START_Y
#define TOTAL_END_X                 (TOTAL_START_X + PRIZE_LIST_WIDTH)
#define TOTAL_END_Y                 PRIZE_LINE3_LIST_END_Y
#define TOTAL_BUTTON_START_X        (TOTAL_END_X + 1 )
#define TOTAL_BUTTON_END_X          (TOTAL_BUTTON_START_X + BUTTON_WIDTH)

#define RATE_START_X                (PRIZE_COLUMN2 + PRIZE_LABEL_WIDTH)
#define RATE_START_Y                PRIZE_LINE3_START_Y
#define RATE_END_X                  (RATE_START_X + PRIZE_LIST_WIDTH)
#define RATE_END_Y                  PRIZE_LINE3_LIST_END_Y
#define RATE_BUTTON_START_X         (RATE_END_X + 1 )
#define RATE_BUTTON_END_X           (RATE_BUTTON_START_X + BUTTON_WIDTH)

void ShowScreenPrizes( void )
{
    XCHAR       buffer[3];
    WORD        textHeight;

    InitializeScreen( NULL );

    textHeight          = GetTextHeight( (void *)&FONTDEFAULT ) + 2*GOL_EMBOSS_SIZE;
    currentPrizeConfig  = 0;
    currentDayConfig    = 0;

    strcpy( textTitle, "Set Prize Information" );
    StCreate( ID_TEXT_TITLE,
            (GetMaxX()-GetTextWidth((XCHAR*)textTitle, (void*)&FONTDEFAULT))>>1, 2, GetMaxX(), 2+GetTextHeight( (void *)&FONTDEFAULT )-1,
            ST_DRAW, textTitle, NULL );


    StCreate( ID_TEXT_PRIZE,
            PRIZE_COLUMN1, PRIZE_LINE1_START_Y,  PRIZE_COLUMN1 + PRIZE_LABEL_WIDTH, PRIZE_LINE1_END_Y,
            ST_DRAW, "Prize", NULL );
    EbCreate( ID_LIST_PRIZE,
            PRIZE_START_X, PRIZE_START_Y, PRIZE_END_X, PRIZE_END_Y,
            EB_DRAW, prizes[currentPrizeConfig].name, MAX_PRIZE_LENGTH, NULL );
    BtnCreate( ID_PRIZE_PLUS,
            PRIZE_BUTTON_START_X, PRIZE_START_Y, PRIZE_BUTTON_END_X, PRIZE_START_Y + (textHeight >> 1),
            0, BTN_DRAW, NULL, "+", NULL );
    BtnCreate( ID_PRIZE_MINUS,
            PRIZE_BUTTON_START_X, PRIZE_START_Y + (textHeight >> 1), PRIZE_BUTTON_END_X, PRIZE_END_Y,
            0, BTN_DRAW, NULL, "-", NULL );



    StCreate( ID_TEXT_DAY,
            PRIZE_COLUMN1, PRIZE_LINE2_START_Y,  PRIZE_COLUMN1 + PRIZE_LABEL_WIDTH, PRIZE_LINE2_END_Y,
            ST_DRAW, "Day", NULL );
    EbCreate( ID_LIST_DAY,
            PDAY_START_X, PDAY_START_Y, PDAY_END_X, PDAY_END_Y,
            EB_DRAW, prizeDays[currentDayConfig], 4, NULL );
    BtnCreate( ID_DAY_PLUS,
            PDAY_BUTTON_START_X, PDAY_START_Y, PDAY_BUTTON_END_X, PDAY_START_Y + (textHeight >> 1),
            0, BTN_DRAW, NULL, "+", NULL );
    BtnCreate( ID_DAY_MINUS,
            PDAY_BUTTON_START_X, PDAY_START_Y + (textHeight >> 1), PDAY_BUTTON_END_X, PDAY_END_Y,
            0, BTN_DRAW, NULL, "-", NULL );


    sprintf( buffer, "%d", prizes[currentPrizeConfig].info[currentDayConfig].given );
    StCreate( ID_TEXT_GIVEN,
            PRIZE_COLUMN2, PRIZE_LINE2_START_Y,  PRIZE_COLUMN2 + PRIZE_LABEL_WIDTH, PRIZE_LINE2_END_Y,
            ST_DRAW, "Given", NULL );
    EbCreate( ID_LIST_GIVEN,
            GIVEN_START_X, GIVEN_START_Y, GIVEN_END_X, GIVEN_END_Y,
            EB_DRAW, buffer, 3, NULL );
    BtnCreate( ID_GIVEN_PLUS,
            GIVEN_BUTTON_START_X, GIVEN_START_Y, GIVEN_BUTTON_END_X, GIVEN_START_Y + (textHeight >> 1),
            0, BTN_DRAW, NULL, "+", NULL );
    BtnCreate( ID_GIVEN_MINUS,
            GIVEN_BUTTON_START_X, GIVEN_START_Y + (textHeight >> 1), GIVEN_BUTTON_END_X, GIVEN_END_Y,
            0, BTN_DRAW, NULL, "-", NULL );


    sprintf( buffer, "%d", prizes[currentPrizeConfig].info[currentDayConfig].available );
    StCreate( ID_TEXT_TOTAL,
            PRIZE_COLUMN1, PRIZE_LINE3_START_Y,  PRIZE_COLUMN1 + PRIZE_LABEL_WIDTH, PRIZE_LINE3_END_Y,
            ST_DRAW, "Total", NULL );
    EbCreate( ID_LIST_TOTAL,
            TOTAL_START_X, TOTAL_START_Y, TOTAL_END_X, TOTAL_END_Y,
            EB_DRAW, buffer, 3, NULL );
    BtnCreate( ID_TOTAL_PLUS,
            TOTAL_BUTTON_START_X, TOTAL_START_Y, TOTAL_BUTTON_END_X, TOTAL_START_Y + (textHeight >> 1),
            0, BTN_DRAW, NULL, "+", NULL );
    BtnCreate( ID_TOTAL_MINUS,
            TOTAL_BUTTON_START_X, TOTAL_START_Y + (textHeight >> 1), TOTAL_BUTTON_END_X, TOTAL_END_Y,
            0, BTN_DRAW, NULL, "-", NULL );


    sprintf( buffer, "%d", prizes[currentPrizeConfig].info[currentDayConfig].rate );
    StCreate( ID_TEXT_RATE,
            PRIZE_COLUMN2, PRIZE_LINE3_START_Y,  PRIZE_COLUMN2 + PRIZE_LABEL_WIDTH, PRIZE_LINE3_END_Y,
            ST_DRAW, "Rate", NULL );
    EbCreate( ID_LIST_RATE,
            RATE_START_X, RATE_START_Y, RATE_END_X, RATE_END_Y,
            EB_DRAW, buffer, 3, NULL );
    BtnCreate( ID_RATE_PLUS,
            RATE_BUTTON_START_X, RATE_START_Y, RATE_BUTTON_END_X, RATE_START_Y + (textHeight >> 1),
            0, BTN_DRAW, NULL, "+", NULL );
    BtnCreate( ID_RATE_MINUS,
            RATE_BUTTON_START_X, RATE_START_Y + (textHeight >> 1), RATE_BUTTON_END_X, RATE_END_Y,
            0, BTN_DRAW, NULL, "-", NULL );


    BtnCreate(ID_BUTTON_CANCEL,                 // button ID
              5, GetMaxY()-35,                  // left, top corner
              75,GetMaxY()-5, 5,                // right, bottom corner (with radius = 5)
              BTN_DRAW,                         // will be dislayed after creation
              NULL,                             // no bitmap
              "Cancel",                     // button text
              NULL );                           // use navigation scheme

    BtnCreate( ID_BUTTON_OK,                 // button ID
              GetMaxX()-75, GetMaxY()-35,       // left, top corner
              GetMaxX()-5,  GetMaxY()-5, 5,     // right, bottom corner (with radius = 5)
              BTN_DRAW,                         // will be dislayed and disabled after creation
              NULL,                             // no bitmap
              "OK",                             // button text
              NULL );                           // use navigation scheme

}


/****************************************************************************
  Function:
    void ShowScreenPrizeScan( void );

  Description:
    This function is used to display the screen for informing the user
    of what prize, if any, he has won.
    
  Precondition:
    None
    
  Parameters:
    None
    
  Returns:
    None
    
  Remarks:
    None
  ***************************************************************************/

void ShowScreenPrizeScan( void )
{
    if (prizeWon == NO_PRIZE_WON)
    {
        InitializeScreen( blackScheme );
        PutImage( 0, 10, (void*)&intro, IMAGE_X2 );

        strcpy( textTitle, "Sorry! Try again tomorrow!" );
        StCreate( ID_TEXT_TITLE,
            (GetMaxX()-GetTextWidth((XCHAR*)textTitle, (void*)&FONTDEFAULT))>>1, 150,
            GetMaxX(), 150+GetTextHeight( (void *)&FONTDEFAULT )-1,
            ST_DRAW, textTitle, blackScheme );
    }
    else
    {
        InitializeScreen( whiteScheme );

        strcpy( textTitle, "You WIN!!!" );
        StCreate( ID_TEXT_TITLE,
                (GetMaxX()-GetTextWidth((XCHAR*)textTitle, (void*)&FONTDEFAULT))>>1, 2,
                GetMaxX(), 2+GetTextHeight( (void *)&FONTDEFAULT )-1,
                ST_DRAW,
                textTitle,
                whiteScheme );

       PutImage( 0, 50, (void*)&prizes[prizeWon].image, IMAGE_X2 );
    }

    BtnCreate( ID_BUTTON_OK,                 // button ID
              (GetMaxX()-70)/2, GetMaxY()-35,                  // left, top corner
              (GetMaxX()-70)/2 + 70,GetMaxY()-5, 5,                // right, bottom corner (with radius = 5)
              BTN_DRAW,                         // will be dislayed and disabled after creation
              NULL,                             // no bitmap
              "OK",                             // button text
              NULL );                           // use navigation scheme
}


/****************************************************************************
  Function:
    void ShowScreenScanner( void );
    
  Description:
    This function is used to display the screen when a scanner is attached.
    
  Precondition:
    None
    
  Parameters:
    None
    
  Returns:
    None
    
  Remarks:
    None
  ***************************************************************************/

void ShowScreenScanner( void )
{
    InitializeScreen( whiteScheme);

    PutImage( 0, 50, (void*)&classHID, IMAGE_X2 );

    StCreate(       ID_TEXT_TITLE,
                    (GetMaxX()-GetTextWidth((XCHAR*)scanBarcode, (void*)&FONTDEFAULT))>>1, 175, GetMaxX(), 175+GetTextHeight( (void *)&FONTDEFAULT )-1,
                    ST_DRAW,
                    scanBarcode,
                    whiteScheme );

    BtnCreate(ID_BUTTON_CANCEL,                 // button ID
              (GetMaxX()-70)/2, GetMaxY()-35,                  // left, top corner
              (GetMaxX()-70)/2 + 70,GetMaxY()-5, 5,                // right, bottom corner (with radius = 5)
              BTN_DRAW,                         // will be dislayed after creation
              NULL,                             // no bitmap
              "Cancel",                         // button text
              NULL );                           // use navigation scheme
}


/****************************************************************************
  Function:
    void ShowScreenSignature( void );

  Description:
    This function is used to display the signature screen.
    
  Precondition:
    None
    
  Parameters:
    None
    
  Returns:
    None
    
  Remarks:
    None
  ***************************************************************************/

void ShowScreenSignature( void )
{
    InitializeScreen( NULL );

    WndCreate( ID_WINDOW_SIGNATURE,             // Window ID
              0,0,GetMaxX(),GetMaxY(),          // dimension
              WND_DRAW,                         // will be dislayed after creation
              (void*)&mchpLogo,                 // icon
              signature,                        // set text
              NULL );                           // default GOL scheme

    BtnCreate(ID_BUTTON_CANCEL,                 // button ID
              5, GetMaxY()-35,                  // left, top corner
              75,GetMaxY()-5, 5,                // right, bottom corner (with radius = 5)
              BTN_DRAW,                         // will be dislayed after creation
              NULL,                             // no bitmap
              "Cancel",                     // button text
              NULL );                           // use navigation scheme

    BtnCreate(ID_BUTTON_CLEAR,                  // button ID
              GetMaxX()/2 - 35, GetMaxY()-35,   // left, top corner
              GetMaxX()/2 + 35, GetMaxY()-5, 5, // right, bottom corner (with radius = 5)
              BTN_DRAW,                         // will be dislayed after creation
              NULL,                             // no bitmap
              "Clear",                      // button text
              NULL );                           // use navigation scheme

    BtnCreate( ID_BUTTON_PRINT,                 // button ID
              GetMaxX()-75, GetMaxY()-35,       // left, top corner
              GetMaxX()-5,  GetMaxY()-5, 5,     // right, bottom corner (with radius = 5)
              BTN_DRAW,                         // will be dislayed and disabled after creation
              NULL,                             // no bitmap
              "Print",                      // button text
              NULL );                           // use navigation scheme
}


/****************************************************************************
  Function:
    void ShowScreenTime( void )

  Description:
    This function erases the currently displayed screen and replaces it with
    the screen that allows the user to set the current date and time of the
    RTCC module.

  Precondition:
    None

  Parameters:
    None

  Returns:
    None

  Remarks:
    The global list of graphics objects is destroyed and replaced. Therefore,
    this function cannot be called during the message processing of
    GOLMsgCallback().  It must be called during GOLDrawCallback() processing.
  ***************************************************************************/

void ShowScreenTime( void )
{
    WORD    textHeight;
    WORD    textCharWidth;

    InitializeScreen( NULL );

    RTCCProcessEvents();

    strcpy( textTitle, "Set Date and Time" );
    StCreate( ID_TEXT_TITLE,
            (GetMaxX()-GetTextWidth((XCHAR*)textTitle, (void*)&FONTDEFAULT))>>1, 2, GetMaxX(), 2+GetTextHeight( (void *)&FONTDEFAULT )-1,
            ST_DRAW,
            textTitle,
            NULL );

    // Calculate the text height and width of the various boxes

    textHeight    = GetTextHeight( (void *)&FONTDEFAULT ) * 2; // + 2*GOL_EMBOSS_SIZE;
    textCharWidth = GetTextWidth( "M", (void *)&FONTDEFAULT );


    // -------------------------------------------------------------------------
    // Create Month, Day and Year Edit Boxes and Buttons

    // Create the month components

    EbCreate(
                ID_MONTH,
                MONTH_START_X,
                MONTH_START_Y,
                MONTH_END_X,
                MONTH_END_Y,
                EB_DRAW,                    // will be dislayed after creation
                &_date_str[0],              // use the month string value
                3,                          // max characters is 3
                NULL );                     // default GOL scheme

    BtnCreate(
                ID_MONTH_PLUS,
                MONTH_BUTTON_START_X,
                MONTH_START_Y,
                MONTH_BUTTON_END_X,
                MONTH_START_Y + (textHeight >> 1),
                0,                          // draw rectangular button
                BTN_DRAW,                   // will be dislayed after creation
                NULL,                       // no bitmap
                "+",                        // DOWN arrow as text
                NULL );                     // use navigation scheme

    BtnCreate(  ID_MONTH_MINUS,
                MONTH_BUTTON_START_X,
                MONTH_START_Y + (textHeight >> 1),
                MONTH_BUTTON_END_X,
                MONTH_END_Y,
                0,                          // draw rectangular button
                BTN_DRAW,                   // will be dislayed after creation
                NULL,                       // no bitmap
                "-",                        // DOWN arrow as text
                NULL );                     // use navigation scheme

    // Create the day components

    EbCreate(
                ID_DAY,
                DAY_START_X,
                DAY_START_Y,
                DAY_END_X,
                DAY_END_Y,
                EB_DRAW,                    // will be dislayed after creation
                &_date_str[4],              // use the day string value
                2,                          // max characters is 3
                NULL );                     // default GOL scheme

    BtnCreate(
                ID_DAY_PLUS,
                DAY_BUTTON_START_X,
                DAY_START_Y,
                DAY_BUTTON_END_X,
                DAY_START_Y + (textHeight >> 1),
                0,                          // draw rectangular button
                BTN_DRAW,                   // will be dislayed after creation
                NULL,                       // no bitmap
                "+",                        // DOWN arrow as text
                NULL );                     // use navigation scheme

    BtnCreate(  ID_DAY_MINUS,
                DAY_BUTTON_START_X,
                DAY_START_Y + (textHeight >> 1),
                DAY_BUTTON_END_X,
                DAY_END_Y,
                0,                          // draw rectangular button
                BTN_DRAW,                   // will be dislayed after creation
                NULL,                       // no bitmap
                "-",                        // DOWN arrow as text
                NULL );                     // use navigation scheme

    // Create the year components

    EbCreate(
                ID_YEAR,
                YEAR_START_X,
                YEAR_START_Y,
                YEAR_END_X,
                YEAR_END_Y,
                EB_DRAW,                // will be dislayed after creation
                &_date_str[8],          // use the year string value
                4,                      // max characters is 4
                NULL );                 // default GOL scheme

    BtnCreate(
                ID_YEAR_PLUS,
                YEAR_BUTTON_START_X,
                YEAR_START_Y,
                YEAR_BUTTON_END_X,
                YEAR_START_Y + (textHeight >> 1),
                0,                          // draw rectangular button
                BTN_DRAW,                   // will be dislayed after creation
                NULL,                       // no bitmap
                "+",                        // DOWN arrow as text
                NULL );                     // use navigation scheme

    BtnCreate(  ID_YEAR_MINUS,
                YEAR_BUTTON_START_X,
                YEAR_START_Y + (textHeight >> 1),
                YEAR_BUTTON_END_X,
                YEAR_END_Y,
                0,                          // draw rectangular button
                BTN_DRAW,                   // will be dislayed after creation
                NULL,                       // no bitmap
                "-",                        // DOWN arrow as text
                NULL );                     // use navigation scheme

    // -------------------------------------------------------------------------
    // Create the Hour and Minute Edit Boxes and Buttons

    // Create the hour components

    EbCreate(
                ID_HOUR,
                HOUR_START_X,
                HOUR_START_Y,
                HOUR_END_X,
                HOUR_END_Y,
                EB_DRAW,
                &_time_str[4],
                2,
                NULL );

    BtnCreate(
                ID_HOUR_PLUS,
                HOUR_BUTTON_START_X,
                HOUR_START_Y,
                HOUR_BUTTON_END_X,
                HOUR_START_Y + (textHeight >> 1),
                0,
                BTN_DRAW,
                NULL,
                "+",
                NULL );

    BtnCreate(  ID_HOUR_MINUS,
                HOUR_BUTTON_START_X,
                HOUR_START_Y + (textHeight >> 1),
                HOUR_BUTTON_END_X,
                HOUR_END_Y,
                0,
                BTN_DRAW,
                NULL,
                "-",
                NULL );

    // Create the minute components

    EbCreate(
                ID_MINUTE,
                MINUTE_START_X,
                MINUTE_START_Y,
                MINUTE_END_X,
                MINUTE_END_Y,
                EB_DRAW,                // will be dislayed after creation
                &_time_str[7],          // use minute string value
                2,                      // max characters is 2
                NULL );                 // default GOL scheme

    BtnCreate(
                ID_MINUTE_PLUS,
                MINUTE_BUTTON_START_X,
                MINUTE_START_Y,
                MINUTE_BUTTON_END_X,
                MINUTE_START_Y + (textHeight >> 1),
                0,                          // draw rectangular button
                BTN_DRAW,                   // will be dislayed after creation
                NULL,                       // no bitmap
                "+",                        // DOWN arrow as text
                NULL );                     // use navigation scheme

    BtnCreate(  ID_MINUTE_MINUS,
                MINUTE_BUTTON_START_X,
                MINUTE_START_Y + (textHeight >> 1),
                MINUTE_BUTTON_END_X,
                MINUTE_END_Y,
                0,                          // draw rectangular button
                BTN_DRAW,                   // will be dislayed after creation
                NULL,                       // no bitmap
                "-",                        // DOWN arrow as text
                NULL );                     // use navigation scheme

    // Exit button

    BtnCreate(ID_BUTTON_OK,                     // button ID
              GetMaxX()/2 - 35, GetMaxY()-35,   // left, top corner
              GetMaxX()/2 + 35, GetMaxY()-5, 5, // right, bottom corner (with radius = 5)
              BTN_DRAW,                         // will be dislayed after creation
              NULL,                             // no bitmap
              "OK",                         // button text
              NULL );                           // use navigation scheme
}


/****************************************************************************
  Function:
    void ShowScreenTimeScan( void );
    
  Description:
    This function is used to display the screen showing the result of 
    scanning a time barcode.
    
  Precondition:
    None
    
  Parameters:
    None
    
  Returns:
    None
    
  Remarks:
    None
  ***************************************************************************/

void ShowScreenTimeScan( void )
{
    BYTE    month;

    InitializeScreen( blackScheme );

    PutImage( 0, 10, (void*)&intro, IMAGE_X2 );

    strcpy( textTitle, "USB Printer Demo receipt from" );
    StCreate( ID_TEXT_TITLE,
            (GetMaxX()-GetTextWidth((XCHAR*)textTitle, (void*)&FONTDEFAULT))>>1, 115, GetMaxX(), 115+GetTextHeight( (void *)&FONTDEFAULT )-1,
            ST_DRAW,
            textTitle,
            blackScheme );

    month = scannerText[4] - '0';
    if (scannerText[3] == '1')
    {
        month += 10;
    }
    month--;    // Decrement for array index.

    timeBuffer1[ 0] = scannerText[1];
    timeBuffer1[ 1] = scannerText[2];
    timeBuffer1[ 2] = ' ';
    timeBuffer1[ 3] = monthNames[month][0];
    timeBuffer1[ 4] = monthNames[month][1];
    timeBuffer1[ 5] = monthNames[month][2];
    timeBuffer1[ 6] = ' ';
    timeBuffer1[ 7] = '2';
    timeBuffer1[ 8] = '0';
    timeBuffer1[ 9] = scannerText[5];
    timeBuffer1[10] = scannerText[6];
    timeBuffer1[11] = 0;

    timeBuffer2[ 0] = 'a';
    timeBuffer2[ 1] = 't';
    timeBuffer2[ 2] = ' ';
    timeBuffer2[ 3] = scannerText[7];
    timeBuffer2[ 4] = scannerText[8];
    timeBuffer2[ 5] = ':';
    timeBuffer2[ 6] = scannerText[9];
    timeBuffer2[ 7] = scannerText[10];
    timeBuffer2[ 8] = 0;

    StCreate( ID_TEXT_PRINT_TIME1,
            (GetMaxX()-GetTextWidth((XCHAR*)timeBuffer1, (void*)&FONTDEFAULT))>>1, 115+30, GetMaxX(), 115+30 + GetTextHeight( (void *)&FONTDEFAULT )-1,
            ST_DRAW,
            timeBuffer1,
            blackScheme );

    StCreate( ID_TEXT_PRINT_TIME2,
            (GetMaxX()-GetTextWidth((XCHAR*)timeBuffer2, (void*)&FONTDEFAULT))>>1, 115+30+30, GetMaxX(), 115+30+30 + GetTextHeight( (void *)&FONTDEFAULT )-1,
            ST_DRAW,
            timeBuffer2,
            blackScheme );

    BtnCreate( ID_BUTTON_OK,                 // button ID
              (GetMaxX()-70)/2, GetMaxY()-35,                  // left, top corner
              (GetMaxX()-70)/2 + 70,GetMaxY()-5, 5,                // right, bottom corner (with radius = 5)
              BTN_DRAW,                         // will be dislayed and disabled after creation
              NULL,                             // no bitmap
              "OK",                             // button text
              NULL );                           // use navigation scheme
}

/****************************************************************************
  Function:
    void ShowScreenUtilities( void );
    
  Description:
    This function is used to display the screen for utilities.
    
  Precondition:
    None
    
  Parameters:
    None
    
  Returns:
    None
    
  Remarks:
    None
  ***************************************************************************/

void ShowScreenUtilities( void )
{
    InitializeScreen( NULL );

    strcpy( textTitle, "USB Host Demo Utilities" );
    StCreate( ID_TEXT_TITLE,
            (GetMaxX()-GetTextWidth((XCHAR*)textTitle, (void*)&FONTDEFAULT))>>1, 2, GetMaxX(), 2+GetTextHeight( (void *)&FONTDEFAULT )-1,
            ST_DRAW,
            textTitle,
            NULL );

    BtnCreate(ID_BUTTON_SET_TIME,                 // button ID
              10, 50,                  // left, top corner
              GetMaxX()-10, 80, 5,                // right, bottom corner (with radius = 5)
              BTN_DRAW,                         // will be dislayed after creation
              NULL,                             // no bitmap
              "Set Time/Date",                     // button text
              NULL );                           // use navigation scheme

    BtnCreate(ID_BUTTON_CALIBRATE,                 // button ID
              10, 85,                  // left, top corner
              GetMaxX()-10, 115, 5,                // right, bottom corner (with radius = 5)
              BTN_DRAW,                         // will be dislayed after creation
              NULL,                             // no bitmap
              "Calibrate Screen",                     // button text
              NULL );                           // use navigation scheme

    BtnCreate(ID_BUTTON_PRIZES,                 // button ID
              10, 120,                  // left, top corner
              GetMaxX()-10, 150, 5,                // right, bottom corner (with radius = 5)
              BTN_DRAW,                         // will be dislayed after creation
              NULL,                             // no bitmap
              "Prize Configuration",                     // button text
              NULL );                           // use navigation scheme

    BtnCreate(ID_BUTTON_CANCEL,                 // button ID
              (GetMaxX()-70)/2, GetMaxY()-35,                  // left, top corner
              (GetMaxX()-70)/2 + 70,GetMaxY()-5, 5,                // right, bottom corner (with radius = 5)
              BTN_DRAW,                         // will be dislayed after creation
              NULL,                             // no bitmap
              "Cancel",                     // button text
              NULL );                           // use navigation scheme
}


/****************************************************************************
  Function: 
    void SplashScreen( void );
    
  Description:
    This routine displays the initial splash screen.
    
  Precondition:
    None
    
  Parameters:
    None
    
  Returns:
    None
    
  Remarks:
    None
  ***************************************************************************/

void SplashScreen( void )
{
    SHORT               i;

    SetColor(WHITE);
    ClearDevice();

    PutImage( 0,  0, (void*)&mchpLogo, IMAGE_NORMAL );
    PutImage( 0, 60, (void*)&intro,    IMAGE_X2);
    for (i=0; i<320-32; i++)
    {  // move Microchip icon
        PutImage( i, 205, (void*)&mchpIcon0, IMAGE_NORMAL );
    }

    SetColor( BRIGHTRED );
    SetFont( (void*)&FONTDEFAULT );

    MoveTo( (GetMaxX()-GetTextWidth((XCHAR*)touchToContinue, (void*)&FONTDEFAULT))>>1, 182 );
    while (!OutText( (XCHAR*)touchToContinue) );

    while (!SCREEN_TOUCHED());

    ScreenDissolve();
}


/****************************************************************************
  Function:
    void TouchToContinue( GOL_SCHEME *scheme );

  Description:
    This routine displays the "Touch To Continue" message.
    
  Precondition:
    None
    
  Parameters:
    GOL_SCHEME *scheme  - graphics scheme to use
    
  Returns:
    None
    
  Remarks:
    None
  ***************************************************************************/

void TouchToContinue( GOL_SCHEME *scheme )
{
    StCreate(       ID_TEXT_TOUCH,
                    (GetMaxX()-GetTextWidth((XCHAR*)touchToContinue, (void*)&FONTDEFAULT))>>1, GetMaxY() - GetTextHeight( (void *)&FONTDEFAULT ),
                    GetMaxX(), GetMaxY(),
                    ST_DRAW,
                    touchToContinue,
                    scheme );

}


/****************************************************************************
  Function:
    void UnlockRTCC( void )

  Description:
    This function unlocks the RTCC so we can write a value to it.

  Precondition:
    None

  Parameters:
    None

  Return Values:
    None

  Remarks:
    For the PIC32MX, we use library routines.
  ***************************************************************************/

#if !defined(TEST_PIC24)
    #define RTCC_INTERRUPT_REGISTER IEC5
    #define RTCC_INTERRUPT_VALUE    0x0040
#else
    #define RTCC_INTERRUPT_REGISTER IEC3
    #define RTCC_INTERRUPT_VALUE    0x2000
#endif

#if defined( __C30__ )
void UnlockRTCC( void )
{
    BOOL interruptsWereOn;

    interruptsWereOn = FALSE;
    if ((RTCC_INTERRUPT_REGISTER & RTCC_INTERRUPT_VALUE) == RTCC_INTERRUPT_VALUE)
    {
        interruptsWereOn = TRUE;
        RTCC_INTERRUPT_REGISTER &= ~RTCC_INTERRUPT_VALUE;
    }

    // Unlock the RTCC module
    __asm__ ("mov #NVMKEY,W0");
    __asm__ ("mov #0x55,W1");
    __asm__ ("mov #0xAA,W2");
    __asm__ ("mov W1,[W0]");
    __asm__ ("nop");
    __asm__ ("mov W2,[W0]");
    __asm__ ("bset RCFGCAL,#13");
    __asm__ ("nop");
    __asm__ ("nop");

    if (interruptsWereOn)
    {
        RTCC_INTERRUPT_REGISTER |= RTCC_INTERRUPT_VALUE;
    }
}
#endif


/****************************************************************************
  Function:
    void UpdateDateTime( void )

  Description:
    This function updates the displayed time and date to match the value
    currently in the RTCC.

  Precondition:
    ShowScreenTime() must be called before calling this routine to display
    the correct controls.

  Parameters:
    None

  Returns:
    None

  Remarks:
    None
  ***************************************************************************/

void UpdateDateTime( void )
{
    OBJ_HEADER* obj;

    RTCCProcessEvents();                // update the time and date

    // update time edit boxes
    obj = GOLFindObject(ID_HOUR);
    EbSetText((EDITBOX*)obj, &_time_str[4]);
    SetState(obj, EB_DRAW);
    obj = GOLFindObject(ID_MINUTE);
    EbSetText((EDITBOX*)obj, &_time_str[7]);
    SetState(obj, EB_DRAW);

    // update date edit boxes
    obj = GOLFindObject(ID_MONTH);
    EbSetText((EDITBOX*)obj, &_date_str[0]);
    SetState(obj, EB_DRAW);
    obj = GOLFindObject(ID_DAY);
    EbSetText((EDITBOX*)obj, &_date_str[4]);
    SetState(obj, EB_DRAW);
    obj = GOLFindObject(ID_YEAR);
    EbSetText((EDITBOX*)obj, &_date_str[8]);
    SetState(obj, EB_DRAW);
}

//******************************************************************************
//******************************************************************************
//******************************************************************************
// Section: Main Application
//******************************************************************************
//******************************************************************************
//******************************************************************************

int main (void)
{
    GOL_MSG msg;                                    // GOL message structure to interact with GOL


    #if defined (__C30__)
        #if defined( __PIC24FJ256GB110__ )
            // Configure U2RX - put on pin 49 (RP10)
            RPINR19bits.U2RXR = 10;
            // Configure U2TX - put on pin 50 (RP17)
            RPOR8bits.RP17R = 5;



            // Configure SPI2 Data In - put on pin 11 (RP26)
            RPINR22bits.SDI2R = 26;

            // Configure SPI2 Clock Out - put on pin 10 (RP21)
            RPOR10bits.RP21R = 11;

            // Configure SPI2 Data Out - put on pin 12 (RP19)
            RPOR9bits.RP19R = 10;

        #endif
        OSCCON = 0x3302;    // Enable secondary oscillator
        CLKDIV = 0x0000;    // Set PLL prescaler (1:1)
    #else
        #error Init...
    #endif

    #ifdef DEBUG_MODE
        UART2Init();
        UART2PrintString( "\r\n\r\nMASTERs USB Embedded Host POS Printer and Barcode Scanner Demo\r\n" );
    #endif

    // Initialize USB Embedded Host
    USBInitialize( 0 );

    // Initialize the graphics library
    EEPROMInit();
    TouchInit();
    GOLInit();


    // Initialize prize information, after we initialize the EEPROM.  Make sure they match!
    prizes[0].image = pic24FSK;
    prizes[1].image = flyingPIC24;
    prizes[2].image = flexLight;
    ReadPrizeConfiguration();

     // If S3 button on Explorer 16 board is pressed calibrate touch screen
    if(PORTDbits.RD6 == 0)
    {
        TouchCalibration();
        TouchStoreCalibration();
    }
    // If it's a new board (EEPROM_VERSION byte is not programed) calibrate touch screen
    if (MASTERS_DEMO_VERSION != EEPROMReadWord( EEPROM_VERSION ))
    {
        TouchCalibration();
        TouchStoreCalibration();
        EEPROMWriteWord( MASTERS_DEMO_VERSION, EEPROM_VERSION );
    }

    // Load touch screen calibration parameters from EEPROM
    TouchLoadCalibration();

    SplashScreen();

    // Initialize the RTCC
    // Turn on the secondary oscillator
    __asm__ ("MOV #OSCCON,w1");
    __asm__ ("MOV.b #0x02, w0");
    __asm__ ("MOV #0x46, w2");
    __asm__ ("MOV #0x57, w3");
    __asm__ ("MOV.b w2, [w1]");
    __asm__ ("MOV.b w3, [w1]");
    __asm__ ("MOV.b w0, [w1]");

    PIC24RTCCSetDate( DEFAULT_YEARS, DEFAULT_MONTH_DAY );
    PIC24RTCCSetTime( DEFAULT_WEEKDAY_HOURS, DEFAULT_MINUTES_SECONDS );

    RCFGCAL = 0x8000;

    // Turn on the A/D converter to monitor Vbus.
    InitializeVbusMonitor();


    altScheme = GOLCreateScheme();      // create alternative 1 style scheme
    #if (GRAPHICS_PICTAIL_VERSION == 1)
        /* for Microtips display */
        altScheme->Color0 = RGB565CONVERT(0x4C, 0x7E, 0xFF);
        altScheme->Color1 = RGB565CONVERT(0xFF, 0xCB, 0x3C);
        altScheme->EmbossDkColor = RGB565CONVERT(0x1E, 0x00, 0xE5);
        altScheme->EmbossLtColor = RGB565CONVERT(0xA9, 0xDB, 0xEF);
        altScheme->ColorDisabled = RGB565CONVERT(0xD4, 0xE1, 0xF7);
        altScheme->TextColor1 = RGB565CONVERT(0x4C, 0x7E, 0xFF);
        altScheme->TextColor0 = RGB565CONVERT(0xFF, 0xCB, 0x3C);
        altScheme->TextColorDisabled = RGB565CONVERT(0xB8, 0xB9, 0xBC);
    #elif (GRAPHICS_PICTAIL_VERSION == 2)
        /* for Truly display */
        altScheme->Color0 = RGB565CONVERT(0x4C, 0x8E, 0xFF);
        altScheme->Color1 = RGB565CONVERT(0xFF, 0xBB, 0x4C);
        altScheme->EmbossDkColor = RGB565CONVERT(0x1E, 0x00, 0xE5);
        altScheme->EmbossLtColor = RGB565CONVERT(0xA9, 0xDB, 0xEF);
        altScheme->ColorDisabled = RGB565CONVERT(0xD4, 0xE1, 0xF7);
        altScheme->TextColor1 = BRIGHTBLUE;
        altScheme->TextColor0 = RGB565CONVERT(0xFF, 0xBB, 0x4C);
        altScheme->TextColorDisabled = RGB565CONVERT(0xB8, 0xB9, 0xBC);
    #endif // GRAPHICS_PICTAIL_VERSION

    blackScheme = GOLCreateScheme();      // create alternative 1 style scheme
    blackScheme->Color0 = GRAY1;
    blackScheme->Color1 = GRAY4;
    blackScheme->ColorDisabled = GRAY6;
    blackScheme->EmbossDkColor = GRAY5;
    blackScheme->EmbossLtColor = GRAY2;
    blackScheme->TextColor1 = GRAY3;
    blackScheme->TextColor0 = GRAY0;
    blackScheme->TextColorDisabled = GRAY5;
    blackScheme->CommonBkColor = BLACK;

    whiteScheme = GOLCreateScheme();      // create alternative 1 style scheme
    whiteScheme->Color0 = altScheme->Color0;
    whiteScheme->Color1 = altScheme->Color1;
    whiteScheme->ColorDisabled = altScheme->ColorDisabled;
    whiteScheme->EmbossDkColor = altScheme->EmbossDkColor;
    whiteScheme->EmbossLtColor = altScheme->EmbossLtColor;
    whiteScheme->TextColor1 = DARKGRAY;
    whiteScheme->TextColor0 = BLACK;
    whiteScheme->TextColorDisabled = LIGHTGRAY;
    whiteScheme->CommonBkColor = WHITE;


    // Make sure the user sets the time when we first power up.
    screenState = SCREEN_DISPLAY_TIME;

    while(1)
    {
        MonitorVBUS();
        USBTasks();
        status.scannerAttached = USBHostHID_ApiDeviceDetect();

        if (GOLDraw())                          // Draw the screen
        {
            {
                TouchGetMsg( &msg);
                GOLMsg( &msg );                 // Process the message
            }
        }
    }
}


/*******************************************************************************
Function:       void __attribute__((__interrupt__, auto_psv)) _XXX(void)

These are just here to catch any interrupts that we see during debugging.

*******************************************************************************/
void __attribute__((interrupt, auto_psv)) _DefaultInterrupt(void)
{
    #ifdef DEBUG_MODE
        UART2PrintString( "!!! Default interrupt handler !!!\r\n" );
    #endif
    while (1)
    {
        Nop();
        Nop();
        Nop();
    }
}

void __attribute__((interrupt, auto_psv)) _OscillatorFail(void)
{
    #ifdef DEBUG_MODE
        UART2PrintString( "!!! Oscillator Fail interrupt handler !!!\r\n" );
    #endif
    while (1)
    {
        Nop();
        Nop();
        Nop();
    }
}

void __attribute__((interrupt, auto_psv)) _AddressError(void)
{
    #ifdef DEBUG_MODE
        UART2PrintString( "!!! Address Error interrupt handler !!!\r\n" );
    #endif
    while (1)
    {
        Nop();
        Nop();
        Nop();
    }
}

void __attribute__((interrupt, auto_psv)) _StackError(void)
{
    #ifdef DEBUG_MODE
        UART2PrintString( "!!! Stack Error interrupt handler !!!\r\n" );
    #endif
    while (1)
    {
        Nop();
        Nop();
        Nop();
    }
}
void __attribute__((interrupt, auto_psv)) _MathError(void)
{
    #ifdef DEBUG_MODE
        UART2PrintString( "!!! Math Error interrupt handler !!!\r\n" );
    #endif
    while (1)
    {
        Nop();
        Nop();
        Nop();
    }
}


