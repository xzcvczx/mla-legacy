/*****************************************************************************
 * Microchip Graphics Library Demo Application
 * This program shows how to use the Graphics Objects Layer.
 *****************************************************************************
 * FileName:        AN1246Demo.c
 * Dependencies:    AN1246Demo.h
 * Processor:       PIC24F, PIC24H, dsPIC, PIC32
 * Compiler:       	MPLAB C30 V3.00, MPLAB C32
 * Linker:          MPLAB LINK30, MPLAB LINK32
 * Company:         Microchip Technology Incorporated
 *
 * Software License Agreement
 *
 * Copyright © 2008 Microchip Technology Inc.  All rights reserved.
 * Microchip licenses to you the right to use, modify, copy and distribute
 * Software only when embedded on a Microchip microcontroller or digital
 * signal controller, which is integrated into your product or third party
 * product (pursuant to the sublicense terms in the accompanying license
 * agreement).  
 *
 * You should refer to the license agreement accompanying this Software
 * for additional information regarding your rights and obligations.
 *
 * SOFTWARE AND DOCUMENTATION ARE PROVIDED “AS IS” WITHOUT WARRANTY OF ANY
 * KIND, EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY
 * OF MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR
 * PURPOSE. IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE LIABLE OR
 * OBLIGATED UNDER CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION,
 * BREACH OF WARRANTY, OR OTHER LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT
 * DAMAGES OR EXPENSES INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL,
 * INDIRECT, PUNITIVE OR CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA,
 * COST OF PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY
 * CLAIMS BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF),
 * OR OTHER SIMILAR COSTS.
 *
 * Author               Date        Comment
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * Paolo A. Tamayo		01/23/09	...
 *****************************************************************************/
#include "AN1246Demo.h"

// Configuration bits
#if defined(__dsPIC33F__) || defined(__PIC24H__)
_FOSCSEL(FNOSC_PRI);
_FOSC(FCKSM_CSECMD &OSCIOFNC_OFF &POSCMD_XT);
_FWDT(FWDTEN_OFF);
#elif defined(__PIC32MX__)
    #pragma config FPLLODIV = DIV_1, FPLLMUL = MUL_18, FPLLIDIV = DIV_2, FWDTEN = OFF, FCKSM = CSECME, FPBDIV = DIV_1
    #pragma config OSCIOFNC = ON, POSCMOD = XT, FSOSCEN = ON, FNOSC = PRIPLL
    #pragma config CP = OFF, BWP = OFF, PWP = OFF
#else
    #if defined(__PIC24FJ256GB110__)
_CONFIG1(JTAGEN_OFF & GCP_OFF & GWRP_OFF & COE_OFF & FWDTEN_OFF & ICS_PGx2)
_CONFIG2(0xF7FF & IESO_OFF & FCKSM_CSDCMD & OSCIOFNC_OFF & POSCMOD_HS & FNOSC_PRIPLL & PLLDIV_DIV2 & IOL1WAY_OFF)
    #endif
    #if defined(__PIC24FJ256GA110__)
_CONFIG1(JTAGEN_OFF & GCP_OFF & GWRP_OFF & COE_OFF & FWDTEN_OFF & ICS_PGx2)
_CONFIG2(IESO_OFF & FCKSM_CSDCMD & OSCIOFNC_OFF & POSCMOD_HS & FNOSC_PRIPLL & IOL1WAY_OFF)
    #endif
    #if defined(__PIC24FJ128GA010__)
_CONFIG2(FNOSC_PRIPLL & POSCMOD_XT) // Primary XT OSC with PLL
_CONFIG1(JTAGEN_OFF & FWDTEN_OFF)   // JTAG off, watchdog timer off
    #endif
	#if defined (__PIC24FJ256GB210__)
_CONFIG1( WDTPS_PS32768 & FWPSA_PR128 & ALTVREF_ALTVREDIS & WINDIS_OFF & FWDTEN_OFF & ICS_PGx2 & GWRP_OFF & GCP_OFF & JTAGEN_OFF) 
_CONFIG2( POSCMOD_HS & IOL1WAY_OFF & OSCIOFNC_OFF & OSCIOFNC_OFF & FCKSM_CSDCMD & FNOSC_PRIPLL & PLL96MHZ_ON & PLLDIV_DIV2 & IESO_OFF)
_CONFIG3( WPFP_WPFP255 & SOSCSEL_SOSC & WUTSEL_LEG & WPDIS_WPDIS & WPCFG_WPCFGDIS & WPEND_WPENDMEM) 
	#endif
	#if defined (__PIC24FJ256DA210__)
_CONFIG1( WDTPS_PS32768 & FWPSA_PR128 & ALTVREF_ALTVREDIS & WINDIS_OFF & FWDTEN_OFF & ICS_PGx2 & GWRP_OFF & GCP_OFF & JTAGEN_OFF) 
_CONFIG2( POSCMOD_HS & IOL1WAY_OFF & OSCIOFNC_OFF & OSCIOFNC_OFF & FCKSM_CSDCMD & FNOSC_PRIPLL & PLL96MHZ_ON & PLLDIV_DIV2 & IESO_OFF)
_CONFIG3( WPFP_WPFP255 & SOSCSEL_SOSC & WUTSEL_LEG & ALTPMP_ALTPMPEN & WPDIS_WPDIS & WPCFG_WPCFGDIS & WPEND_WPENDMEM) 
	#endif	
#endif

/////////////////////////////////////////////////////////////////////////////
//                              OBJECT'S IDs
/////////////////////////////////////////////////////////////////////////////
#define ID_TE1  20

/////////////////////////////////////////////////////////////////////////////
//                              USED MACROS
/////////////////////////////////////////////////////////////////////////////
#define PASSWORD_LEN    4                       // Password length
#define DELCHKEYINDEX   3                       // index number of the enter key
#define SPACEKEYINDEX   7                       // index number of the enter key
#define ENTERKEYINDEX   11                      // index number of the enter key
#define MODEKEYINDEX    12                      // index number of the mode key
#define CLEARKEYINDEX   14                      // index number of the clear display key
#define TEBUFFERSIZE    15                      // buffer size used in the text entry
#define CHECKDELAY      1000

/////////////////////////////////////////////////////////////////////////////
//                            DEMO STATES
/////////////////////////////////////////////////////////////////////////////
typedef enum
{
    INIT_SECURE_ST  = 0,
    ENTER_SECURE_ST,
    RESET_SECURE_ST,
    CLEAR_SECURE_ST,
    SHOW_SECURE_ST,
} SECURE_STATE;

/////////////////////////////////////////////////////////////////////////////
//                            LOCAL PROTOTYPES
/////////////////////////////////////////////////////////////////////////////
void            CheckCalibration(void);         // check if calibration is needed
void            initKeys(void);                 // initializes the keys
void            SetCommandKeys(TEXTENTRY *pTe); // add commands to keys
void            TickInit(void);                 // starts tick counter
void            CreateKeyPad(void);             // creates the KeyEntry object

// XCHAR string compare
int             XcharStrCmp(XCHAR *pCmp1, XCHAR *pCmp2, int len);

// callback utility for the object
WORD            SecurityMsgCallback(WORD objMsg, OBJ_HEADER *pObj, GOL_MSG *pMsg);

SECURE_STATE    ViewState = INIT_SECURE_ST;

/////////////////////////////////////////////////////////////////////////////
//                                  MAIN
/////////////////////////////////////////////////////////////////////////////
GOL_SCHEME      *altScheme;                     // alternative style scheme
TEXTENTRY       *pTe;                           // pointer to the text entry object
volatile DWORD  tick = 0, prevTick;             // tick counter,
XCHAR           delKey[] = {'d','e','l',0};
XCHAR           spaceKey[] = {'s','p','c',0};
XCHAR           enterKey[] = {'e','n','t','e','r',0};
XCHAR           key1[] = {'1',0};
XCHAR           key2[] = {'2',0};
XCHAR           key3[] = {'3',0};
XCHAR           key4[] = {'4',0};
XCHAR           key5[] = {'5',0};
XCHAR           key6[] = {'6',0};
XCHAR           key7[] = {'7',0};
XCHAR           key8[] = {'8',0};
XCHAR           key9[] = {'9',0};
XCHAR           key0[] = {'0',0};
XCHAR           keystar[] = {'*',0};
XCHAR           keypound[] = {'#',0};

XCHAR           *pKeyNames[] = {"1","2","3", (XCHAR*)delKey,
    "4","5","6", (XCHAR*)spaceKey,
    "7","8","9", (XCHAR*)enterKey,
    "*","0","#","" };

const XCHAR     TESTEnterCodeText1[] = {'1','2','3',0};
const XCHAR     TESTEnterCodeText2[] = {'1','2','3',0,'1','2','3',0};
XCHAR           EnterCodeText[TEBUFFERSIZE] = {'E','n','t','e','r',' ','I','D',' ','C','o','d','e', 0};
XCHAR           ErrorCodeText[TEBUFFERSIZE] = {'I','n','v','a','l','i','d',' ','c','o','d','e',0};
XCHAR           CorrectCodeText[TEBUFFERSIZE] = {'C','o','d','e',' ','a','c','c','e','p','t','e','d',0};
XCHAR           PassWord[PASSWORD_LEN + 1] = {'3','6','5','4',0};

// this is the user entered keys buffer
XCHAR           CodeEntered[TEBUFFERSIZE + 1] = "";

/////////////////////////////////////////////////////////////////////////////

/*
    This demo code shows how the TextEntry widget is used. The following 
    definitions of the keys are used:
    del - this is the delete character key
    spc - this key inserts a space character
    enter - this key functions as an enter key to process the entered code
    # - this key clears the text area (or more specifically, it clears the
        buffer that receives the user inputted texts)
    * - this toggles the feature hide echo.
    
    When pressing the "enter" key it compares the current contents of the
    buffer to the predetermined password. See definition of PassWord[] array 
    above. If the contents does not match it outputs the ErrorCodeText[].
    If it matches it outputs the CorrectCodeText[]. After that it reverts to
    EnterCodeText[] and program awaits for user inputs again.
    The key at the lower right corner is a dummy key. It has not function.
*/

/////////////////////////////////////////////////////////////////////////////


/////////////////////////////////////////////////////////////////////////////

//                                  MAIN
/////////////////////////////////////////////////////////////////////////////					 		
int main(void)
{
    GOL_MSG msg;                    // GOL message structure to interact with GOL
    
    #if (GRAPHICS_HARDWARE_PLATFORM  == DA210_DEV_BOARD)
    
    _ANSG8 = 0; /* S1 */
    _ANSE9 = 0; /* S2 */
    _ANSB5 = 0; /* S3 */
        
    #else

    /////////////////////////////////////////////////////////////////////////////
    // ADC Explorer 16 Development Board Errata (work around 2)
    // RB15 should be output
    /////////////////////////////////////////////////////////////////////////////
    LATBbits.LATB15 = 0;
    TRISBbits.TRISB15 = 0;

    #endif

    /////////////////////////////////////////////////////////////////////////////

    #if defined(__dsPIC33F__) || defined(__PIC24H__)

    // Configure Oscillator to operate the device at 40Mhz
    // Fosc= Fin*M/(N1*N2), Fcy=Fosc/2
    // Fosc= 8M*40(2*2)=80Mhz for 8M input clock
    PLLFBD = 38;                    // M=40
    CLKDIVbits.PLLPOST = 0;         // N1=2
    CLKDIVbits.PLLPRE = 0;          // N2=2
    OSCTUN = 0;                     // Tune FRC oscillator, if FRC is used

    // Disable Watch Dog Timer
    RCONbits.SWDTEN = 0;

    // Clock switching to incorporate PLL
    __builtin_write_OSCCONH(0x03);  // Initiate Clock Switch to Primary

    // Oscillator with PLL (NOSC=0b011)
    __builtin_write_OSCCONL(0x01);  // Start clock switching
    while(OSCCONbits.COSC != 0b011);

    // Wait for Clock switch to occur	
    // Wait for PLL to lock
    while(OSCCONbits.LOCK != 1)
    { };    
    
    // Set PMD0 pin functionality to digital
    AD1PCFGL = AD1PCFGL | 0x1000;
    
    #elif defined(__PIC32MX__)
    INTEnableSystemMultiVectoredInt();
    SYSTEMConfigPerformance(GetSystemClock());
    #endif
    
	GOLInit();                      // initialize graphics library &

    #if (GRAPHICS_HARDWARE_PLATFORM < GFX_PICTAIL_V3)
    EEPROMInit();                   // initialize Exp.16 EEPROM SPI
    BeepInit();
    #else
    SST25Init();                    // initialize GFX3 SST25 flash SPI
    #endif
        
    TouchInit();                    // initialize touch screen

    // create default style scheme for GOL
    TickInit();                     // initialize tick counter (for random number generation)

    // Clear screen
    SetColor(WHITE);
    ClearDevice();

    #if defined(__dsPIC33FJ128GP804__) || defined(__PIC24HJ128GP504__)

    // If S3 button on Explorer 16 board is pressed calibrate touch screen
    TRISAbits.TRISA9 = 1;
    if(PORTAbits.RA9 == 0)
    {
        TRISAbits.TRISA9 = 0;
        TouchCalibration();
        TouchStoreCalibration();
    }

    #elif defined(__PIC24FJ256DA210__)

    // If S1 button on the PIC24FJ256DA210 Development board is pressed calibrate touch screen
    if(BTN_S1 == 0)
    {
        TouchCalibration();
        TouchStoreCalibration();
    }

    #else

    // If S3 button on Explorer 16 board is pressed calibrate touch screen
    if(PORTDbits.RD6 == 0)
    {
        TouchCalibration();
        TouchStoreCalibration();
    }

    #endif
    else
    {

        // If it's a new board (EEPROM_VERSION byte is not programed) calibrate touch screen
        #if (GRAPHICS_HARDWARE_PLATFORM < GFX_PICTAIL_V3)
        if(GRAPHICS_LIBRARY_VERSION != EEPROMReadWord(ADDRESS_VERSION))
        {
            TouchCalibration();
            TouchStoreCalibration();
        }

        #else
        if(GRAPHICS_LIBRARY_VERSION != SST25ReadWord(ADDRESS_VERSION))
        {
            TouchCalibration();
            TouchStoreCalibration();
        }

        #endif

        // Load touch screen calibration parameters from EEPROM
        TouchLoadCalibration();
    }

    // create alternative style scheme
    altScheme = GOLCreateScheme();

    // set the colors that will be used by the Widget
    altScheme->Color0 = RGB565CONVERT(0x4C, 0x8E, 0xFF);
    altScheme->Color1 = RGB565CONVERT(0xFF, 0xBB, 0x4C);
    altScheme->EmbossDkColor = RGB565CONVERT(0x1E, 0x00, 0xE5);
    altScheme->EmbossLtColor = RGB565CONVERT(0xA9, 0xDB, 0xEF);
    altScheme->TextColor1 = BRIGHTBLUE;
    altScheme->TextColor0 = RGB565CONVERT(0xFF, 0xBB, 0x4C);
    altScheme->TextColorDisabled = RGB565CONVERT(0xB8, 0xB9, 0xBC);
    altScheme->ColorDisabled = RGB565CONVERT(0x4C, 0x8E, 0xFF);
    altScheme->CommonBkColor = RGB565CONVERT(0x4C, 0x8E, 0xFF);

    ViewState = INIT_SECURE_ST;

    while(1)
    {
        if(GOLDraw())
        {                           // Draw GOL object
            TouchGetMsg(&msg);      // Get message from touch screen
            GOLMsg(&msg);           // Process message
        }
    }
}

/////////////////////////////////////////////////////////////////////////////
// Function: WORD GOLMsgCallback(WORD objMsg, OBJ_HEADER* pObj, GOL_MSG* pMsg)
// Input: objMsg - translated message for the object,
//        pObj - pointer to the object,
//        pMsg - pointer to the non-translated, raw GOL message
// Output: if the function returns non-zero the message will be processed by default
// Overview: it's a user defined function. GOLMsg() function calls it each

//           time the valid message for the object received
/////////////////////////////////////////////////////////////////////////////
WORD GOLMsgCallback(WORD objMsg, OBJ_HEADER *pObj, GOL_MSG *pMsg)
{
    WORD    objectID;

    objectID = GetObjID(pObj);

    switch(ViewState)
    {
        case INIT_SECURE_ST:
        case CLEAR_SECURE_ST:
            break;

        case ENTER_SECURE_ST:

            // process key strokes only when in this state
            if(objectID == ID_TE1)
            {
                if(!SecurityMsgCallback(objMsg, pObj, pMsg))
                    return (0);
            }

            break;

        case RESET_SECURE_ST:
            break;

        case SHOW_SECURE_ST:
            break;
    }

    return (1);
}

/////////////////////////////////////////////////////////////////////////////
// Function: WORD GOLDrawCallback()
// Output: if the function returns non-zero the draw control will be passed to GOL
// Overview: it's a user defined function. GOLDraw() function calls it each
//           time when GOL objects drawing is completed. User drawing should be done here.
//           GOL will not change color, line type and clipping region settings while

//           this function returns zero.
/////////////////////////////////////////////////////////////////////////////
WORD GOLDrawCallback(void)
{
    TEXTENTRY   *pTe = (TEXTENTRY *)GOLFindObject(ID_TE1);

    #ifdef SCREENCAPTURE
    if(PORTDbits.RD6 == 0)
    {
        GetBMP();
    }

    #endif
    switch(ViewState)
    {
        case INIT_SECURE_ST:
            GOLFree();
            CreateKeyPad();
            ViewState = ENTER_SECURE_ST;
            return (1);

        case ENTER_SECURE_ST:
            TeSetBuffer(pTe, CodeEntered, TEBUFFERSIZE);
            return (1);

        case RESET_SECURE_ST:

            // remove the hide feature to show messages
            if(GetState(pTe, TE_ECHO_HIDE))
            {
                ClrState(pTe, TE_ECHO_HIDE);
            }

            // re-initialize the keys, this randomizes the key positions
            TeDelKeyMembers(pTe);
            initKeys();
            TeCreateKeyMembers(pTe, pKeyNames);
            SetCommandKeys(pTe);

            ViewState = CLEAR_SECURE_ST;
            return (1);

        case CLEAR_SECURE_ST:
            if((tick - prevTick) > CHECKDELAY)
            {

                // in this case, we do not restart but rather clear
                // the disabled state, revert the buffer to the user
                // buffer and redraw the object 	
                // return to user buffer to clear the buffer
                TeSetBuffer(pTe, CodeEntered, TEBUFFERSIZE);
                TeClearBuffer(pTe);

                // set the message to enter the code
                TeSetBuffer(pTe, EnterCodeText, TEBUFFERSIZE);
                ClrState(pTe, TE_DISABLED);
                SetState(pTe, TE_DRAW);

                // set the next state
                ViewState = ENTER_SECURE_ST;
            }

            return (1);

        case SHOW_SECURE_ST:
            if((tick - prevTick) > CHECKDELAY)
            {

                // return to the user buffer
                TeSetBuffer(pTe, CodeEntered, TEBUFFERSIZE);

                // clear the previously entered keys
                TeClearBuffer(pTe);

                // restart the demo by going to init state
                ViewState = INIT_SECURE_ST;
            }

            return (1);
    }

    return (1);
}

/////////////////////////////////////////////////////////////////////////////
// Function: WORD SecurityMsgCallback(WORD objMsg, OBJ_HEADER* pObj, GOL_MSG* pMsg)
// Input: objMsg - translated message for the object,
//        pObj - pointer to the object,
//        pMsg - pointer to the non-translated, raw GOL message
// Output: if the function returns non-zero the message will be processed by default

// Overview: Called by GOLMsg() and will function similar to GOLMsg().
/////////////////////////////////////////////////////////////////////////////
WORD SecurityMsgCallback(WORD objMsg, OBJ_HEADER *pObj, GOL_MSG *pMsg)
{
    WORD    objectID;

    objectID = GetObjID(pObj);

    if(objectID == ID_TE1)
    {
        if(objMsg == TE_MSG_ENTER)
        {

            // 	check first if this is for the key with enter label
            if(((TEXTENTRY *)pObj)->pActiveKey->index == ENTERKEYINDEX)
            {
                if(XcharStrCmp(TeGetBuffer((TEXTENTRY *)pObj), (XCHAR *)PassWord, PASSWORD_LEN) == 1)
                {

                    // the code is correct, display the code correct message
                    TeSetBuffer((TEXTENTRY *)pObj, (XCHAR *)CorrectCodeText, TEBUFFERSIZE);
                    ViewState = SHOW_SECURE_ST;
                    SetState(pObj, TE_DISABLED | TE_DRAW);
                    prevTick = tick;
                }
                else
                {

                    // code not correct, display code incorrect message.
                    TeSetBuffer((TEXTENTRY *)pObj, (XCHAR *)ErrorCodeText, TEBUFFERSIZE);
                    ViewState = RESET_SECURE_ST;
                    prevTick = tick;
                    SetState(pObj, TE_DISABLED | TE_DRAW);
                }

                SetState(pObj, TE_UPDATE_TEXT);
                return (1);
            }

            // 	check first if this is for the key with mode label
            if(((TEXTENTRY *)pObj)->pActiveKey->index == MODEKEYINDEX)
            {
                if(GetState(pObj, TE_ECHO_HIDE))
                {
                    ClrState(pObj, TE_ECHO_HIDE);
                }
                else
                {
                    SetState(pObj, TE_ECHO_HIDE);
                }

                SetState(pObj, TE_UPDATE_TEXT);
                return (1);
            }

            if(((TEXTENTRY *)pObj)->pActiveKey->index == CLEARKEYINDEX)
            {
                TeClearBuffer((TEXTENTRY *)pObj);
                SetState(pObj, TE_UPDATE_TEXT);
                return (1);
            }
        }
    }

    return (1);
}

/////////////////////////////////////////////////////////////////////////////
// Function: void  CreateKeyPad(void)
// Input: none
// Output: none

// Overview: Creates the KeyEntry object and initializes the keys used.
/////////////////////////////////////////////////////////////////////////////
void CreateKeyPad(void)
{

    // create the keypad interface
    // initialize the keys
    initKeys();

    // create the object
    pTe = TeCreate
        (
            ID_TE1,                 // object’s ID
            0,
            0,
            GetMaxX(),
            GetMaxY(),              // object’s dimension
            TE_DRAW,                // draw the object after creation
            4,                      // number of horizontal keys
            4,                      // number of vertical keys
            pKeyNames,              // pointer to the array of key names
            (XCHAR *)EnterCodeText, // pointer to the string that will be displayed in the object
            TEBUFFERSIZE,
            NULL,                   // pointer to the font of the diplayed text					
            altScheme
        );                          // use default style scheme

    // assign command keys
    SetCommandKeys(pTe);
}

/////////////////////////////////////////////////////////////////////////////
// Function: void  XcharStrCmp(XCHAR *pCmp1, XCHAR *pCmp2, int len)
// Input: pCmp1 - pointer to first string to compare
//        pCmp1 - pointer to second string to compare
//        len - how many characters to compare
// Output: 1 if the two strings are the same and 0 if not.

// Overview: Similar to StrCmp().
/////////////////////////////////////////////////////////////////////////////
int XcharStrCmp(XCHAR *pCmp1, XCHAR *pCmp2, int len)
{
    int counter = 0;

    while(counter < len)
    {
        if(*pCmp1++ != *pCmp2++)
            return (0);
        counter++;
    }

    return (1);
}

/////////////////////////////////////////////////////////////////////////////
// Function: void SetCommandKeys(TEXTENTRY *pTe)
// Input: pTe - pointer to the TextEntry object
// Output: none

// Overview: Sets the commands for the selected keys.
/////////////////////////////////////////////////////////////////////////////
void SetCommandKeys(TEXTENTRY *pTe)
{
    TeSetKeyCommand(pTe, DELCHKEYINDEX, TE_DELETE_COM); //assign the 6th key to be a Delete command
    TeSetKeyCommand(pTe, SPACEKEYINDEX, TE_SPACE_COM);  //assign the 5th key to be a Space command
    TeSetKeyCommand(pTe, ENTERKEYINDEX, TE_ENTER_COM);  //assign the Enter command to Enter key
    TeSetKeyCommand(pTe, MODEKEYINDEX, TE_ENTER_COM);   //assign the Enter command to Mode key
    TeSetKeyCommand(pTe, CLEARKEYINDEX, TE_ENTER_COM);  //assign the Enter command to Clear text key
}

/////////////////////////////////////////////////////////////////////////////
// Function: void initKeys(void)
// Input: none
// Output: none
// Overview: Randomizes the key positions.
/////////////////////////////////////////////////////////////////////////////
#define MAXITEMS    10
#define MAXENTRY    (MAXITEMS - 1)

/* */
void initKeys(void)
{
    int     randomVal, item, adj;
    XCHAR   *pVarLbl[10] = {(XCHAR*)key1, (XCHAR*)key2, (XCHAR*)key3,
        (XCHAR*)key4, (XCHAR*)key5, (XCHAR*)key6,
        (XCHAR*)key7, (XCHAR*)key8, (XCHAR*)key9,
        (XCHAR*)key0 };

    adj = 0;

    #if 0

    // Use this code to initialize the keys normally
    // randomVal here is not random at all
    for(randomVal = 0; randomVal < MAXITEMS; randomVal++)
    {
        pKeyNames[randomVal + adj] = pVarLbl[randomVal];
        if((randomVal == 5) || (randomVal == 2))
            adj++;
        if(randomVal == 8)
            adj = adj + 2;
    }

    return;
    #else

    // Use this code to randomize the key numbers
    // generate seed for random generation
    srand(tick);

    // this randomizes the positions of the 0-9 keys
    for(item = 0; item < MAXITEMS; item++)
    {

        // random number generator
        randomVal = (rand() % (MAXENTRY - item + 1));

        // assign the key character to a position in the array
        pKeyNames[item + adj] = pVarLbl[randomVal];

        // adjust the list of available pointers
        while(randomVal < (MAXENTRY - item + 1))
        {
            pVarLbl[randomVal] = pVarLbl[randomVal + 1];
            randomVal++;
        }

        // This is to compensate on the position of the keys.
        // The location of the *, #, delete, space and enter characters
        // are fixed. Only the numbers are randomized.
        switch(item)
        {
            case 2:
            case 5:
                adj++;
                break;

            case 8:
                adj = adj + 2;
                break;

            default:
                break;
        }   // end of switch()	
    }       // end of for ()
    #endif
}

/////////////////////////////////////////////////////////////////////////////
// Function: Timer4 ISR
// Input: none
// Output: none
// Overview: increments tick counter. Tick is approx. 1 ms.
/////////////////////////////////////////////////////////////////////////////
#ifdef __PIC32MX__
    #define __T4_ISR    __ISR(_TIMER_4_VECTOR, ipl1)
#else
    #define __T4_ISR    __attribute__((interrupt, shadow, auto_psv))
#endif

/* */
void __T4_ISR _T4Interrupt(void)
{
    tick++;

    // Clear flag
    #ifdef __PIC32MX__
    mT4ClearIntFlag();
    #else
    IFS1bits.T4IF = 0;
    #endif
}

/////////////////////////////////////////////////////////////////////////////
// Function: void TickInit(void)
// Input: none
// Output: none
// Overview: Initilizes the tick timer.
/////////////////////////////////////////////////////////////////////////////

/*********************************************************************
 * Section: Tick Delay
 *********************************************************************/
#if defined(__dsPIC33F__) || defined(__PIC24H__)

// for a system clock of 40 MHz
    #define TICK_PERIOD 40000
#elif defined(__PIC32MX__)
    #define TICK_PERIOD (72000 / 8)
#else

// for a system clock of 32 MHz
    #define TICK_PERIOD 16000
#endif

/* */
void TickInit(void)
{

    // Initialize Timer4
    #ifdef __PIC32MX__
    OpenTimer4(T4_ON | T4_PS_1_8, TICK_PERIOD);
    ConfigIntTimer4(T4_INT_ON | T4_INT_PRIOR_1);
    #else
    TMR4 = 0;
    PR4 = TICK_PERIOD;
    IFS1bits.T4IF = 0;  //Clear flag
    IEC1bits.T4IE = 1;  //Enable interrupt
    T4CONbits.TON = 1;  //Run timer
    #endif
}
