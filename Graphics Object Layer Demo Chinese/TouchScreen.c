/*****************************************************************************
 *
 * Simple 4 wire touch screen driver
 *
 *****************************************************************************
 * FileName:        TouchScreen.c
 * Dependencies:    Beep.h, TouchScreen.h
 * Processor:       PIC24F, PIC24H, dsPIC, PIC32
 * Compiler:       	MPLAB C30, MPLAB C32
 * Linker:          MPLAB LINK30, MPLAB LINK32
 * Company:         Microchip Technology Incorporated
 *
 * Software License Agreement
 *
 * Copyright � 2008 Microchip Technology Inc.  All rights reserved.
 * Microchip licenses to you the right to use, modify, copy and distribute
 * Software only when embedded on a Microchip microcontroller or digital
 * signal controller, which is integrated into your product or third party
 * product (pursuant to the sublicense terms in the accompanying license
 * agreement).  
 *
 * You should refer to the license agreement accompanying this Software
 * for additional information regarding your rights and obligations.
 *
 * SOFTWARE AND DOCUMENTATION ARE PROVIDED �AS IS� WITHOUT WARRANTY OF ANY
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
 * Anton Alkhimenok		01/08/07	...
 * Anton Alkhimenok		06/06/07	Basic calibration and GOL messaging are added
 * Anton Alkhimenok     02/05/08    new PICtail support, portrait orientation is added
 * Sean Justice         02/07/08    PIC32 support
 * Anton Alkhimenok     05/27/08    More robust algorithm
 * Anton Alkhimenok     01/07/09    Graphics PICtail Version 3 support is added
 * Jayanth Murthy       06/25/09    dsPIC & PIC24H support 
 * PAT					06/29/09	Added event EVENT_STILLPRESS to support continuous press
 *****************************************************************************/

#include "Beep.h"
#include "TouchScreen.h"

//////////////////////// LOCAL PROTOTYPES ////////////////////////////
void TouchGetCalPoints(void);

#define WAIT_UNTIL_FINISH(x) while(!x)

//////////////////////// GLOBAL VARIABLES ////////////////////////////
#define  SAMPLE_PERIOD      100     // us
#define  PRESS_THRESHOULD   256     // between 0-0x03ff than less this value than harder screen must be pressed

// Max/Min ADC values for each derection
volatile WORD _calXMin = XMINCAL;
volatile WORD _calXMax = XMAXCAL;
volatile WORD _calYMin = YMINCAL;
volatile WORD _calYMax = YMAXCAL;

// Current ADC values for X and Y channels
volatile SHORT adcX     = -1;
volatile SHORT adcY     = -1;
volatile SHORT adcPot   = 0;

typedef enum{
SET_X,
RUN_X,
GET_X,
RUN_CHECK_X,
CHECK_X,
SET_Y,
RUN_Y,
GET_Y,
CHECK_Y,
SET_VALUES,
GET_POT,
RUN_POT
} TOUCH_STATES;

volatile TOUCH_STATES state = SET_X;
/*********************************************************************
* Function: Timer3 ISR
*
* PreCondition: none
*
* Input: none
*
* Output: none
*
* Side Effects: none
*
* Overview: Timer3 ISR
*
* Note: none
*
********************************************************************/
#ifdef __PIC32MX__
#define __T3_ISR    __ISR(_TIMER_3_VECTOR, ipl4)
#else
#define __T3_ISR    __attribute__((interrupt, shadow, auto_psv))
#endif
    
void __T3_ISR _T3Interrupt(void)
{
static SHORT tempX, tempY;
SHORT temp;

    switch(state){

        case SET_VALUES:
            if(!AD1CON1bits.DONE)
                break;

            if( (WORD)PRESS_THRESHOULD < (WORD)ADC1BUF0 ){
                adcX = -1; adcY = -1;
            }else{
                adcX = tempX; adcY = tempY;
            }
            state = RUN_POT;

        case RUN_POT:
#if defined(__dsPIC33F__) || defined(__PIC24H__)
			AD1CHS0 = ADC_POT;     // switch ADC channel
#else
    		AD1CHS = ADC_POT;      // switch ADC channel
#endif
            AD1CON1bits.SAMP = 1;  // run conversion
            state = GET_POT;
            break;
        
        case GET_POT:
            if(!AD1CON1bits.DONE)
                break;

            adcPot = ADC1BUF0;
            state  = SET_X;

        case SET_X:
#if defined(__dsPIC33F__) || defined(__PIC24H__)
			AD1CHS0 = ADC_XPOS;     // switch ADC channel
#else
    		AD1CHS = ADC_XPOS;      // switch ADC channel
#endif     

            ADPCFG_XPOS = 0;       // analog
            ADPCFG_YPOS = 1;       // digital

            TRIS_XPOS = 1;
            TRIS_YPOS = 1;
            TRIS_XNEG = 1;
            LAT_YNEG = 0;
            TRIS_YNEG = 0;

            AD1CON1bits.SAMP = 1;  // run conversion
            state = CHECK_X;
            break;

        case CHECK_X:
            if(!AD1CON1bits.DONE)
                break;

            if( (WORD)PRESS_THRESHOULD > (WORD)ADC1BUF0 ){
                LAT_YPOS  = 1;
                TRIS_YPOS = 0;
                tempX = -1;
                state = RUN_X;
            }else{
                adcX = -1; adcY = -1;
                state = RUN_POT;
                break;
            }

        case RUN_X:
            AD1CON1bits.SAMP = 1;
            state = GET_X;
            break;

        case GET_X:
            if(!AD1CON1bits.DONE)
                break;

            temp = ADC1BUF0;
            if(temp != tempX){
                tempX = temp;
                state = RUN_X;
                break;                                
            }
            TRIS_YPOS = 1;
            AD1CON1bits.SAMP = 1;
            state = SET_Y;
            break;

        case SET_Y:
            if(!AD1CON1bits.DONE)
                break;

            if( (WORD)PRESS_THRESHOULD < (WORD)ADC1BUF0 ){
                adcX = -1; adcY = -1;
                state = RUN_POT;
                break;
            }

#if defined(__dsPIC33F__) || defined(__PIC24H__)
			AD1CHS0 = ADC_YPOS;     // switch ADC channel
#else
    		AD1CHS = ADC_YPOS;      // switch ADC channel
#endif 
          
            ADPCFG_XPOS = 1;       // digital
            ADPCFG_YPOS = 0;       // analog

            TRIS_XPOS = 1;
            TRIS_YPOS = 1;
            LAT_XNEG = 0;
            TRIS_XNEG = 0;
            TRIS_YNEG = 1;

            AD1CON1bits.SAMP = 1;  // run conversion
            state = CHECK_Y;
            break;

        case CHECK_Y:
            if(!AD1CON1bits.DONE)
                break;

            if( (WORD)PRESS_THRESHOULD > (WORD)ADC1BUF0 ){
                LAT_XPOS  = 1;
                TRIS_XPOS = 0;
                tempY = -1;
                state = RUN_Y;
            }else{
                adcX = -1; adcY = -1;
                state = RUN_POT;
                break;
            }

        case RUN_Y:
            AD1CON1bits.SAMP = 1;
            state = GET_Y;
            break;

        case GET_Y:
            // Get Y value
            if(!AD1CON1bits.DONE)
                break;

            temp = ADC1BUF0;
            if(temp != tempY){
                tempY = temp;
                state = RUN_Y;
                break;                                
            }
            TRIS_XPOS = 1;
            AD1CON1bits.SAMP = 1;
            state = SET_VALUES;
            break;

        default:
            state = SET_X;
    }
    // Clear flag
#ifdef __PIC32MX__
    mT3ClearIntFlag();
#else
    IFS0bits.T3IF = 0;
#endif

}

/*********************************************************************
* Function: void TouchInit(void)
*
* PreCondition: none
*
* Input: none
*
* Output: none
*
* Side Effects: none
*
* Overview: sets ADC 
*
* Note: none
*
********************************************************************/
void TouchInit(void){
#define TIME_BASE (GetPeripheralClock()*SAMPLE_PERIOD)/4000000

    // Initialize ADC
	AD1CON1 = 0x080E0;  			// Turn on, auto-convert
	AD1CON2 = 0;					// AVdd, AVss, int every conversion, MUXA only
	AD1CON3 = 0x1FFF;			    // 31 Tad auto-sample, Tad = 256*Tcy
#if defined(__dsPIC33F__) || defined(__PIC24H__)
	AD1CHS0 = ADC_POT;
	AD1PCFGL = 0;                   // All inputs are analog  
	AD1PCFGLbits.PCFG11 = AD1PCFGLbits.PCFG12 = 1;    
#else
    AD1CHS = ADC_POT;  
    AD1PCFG = 0;                    // All inputs are analog   
#endif 
	AD1CSSL = 0;					// No scanned inputs
  
#ifdef __PIC32MX__
    OpenTimer3(T3_ON | T3_PS_1_8, TIME_BASE);
    ConfigIntTimer3(T3_INT_ON | T3_INT_PRIOR_4);
#else
    // Initialize Timer3
    TMR3 = 0;
    PR3 = TIME_BASE;
    T3CONbits.TCKPS = 1;         // Set prescale to 1:8
    IFS0bits.T3IF = 0;           // Clear flag
    IEC0bits.T3IE = 1;           // Enable interrupt
    T3CONbits.TON = 1;           // Run timer  
#endif
}

/*********************************************************************
* Function: SHORT TouchGetX()
*
* PreCondition: none
*
* Input: none
*
* Output: x coordinate
*
* Side Effects: none
*
* Overview: returns x coordinate if touch screen is pressed
*           and -1 if not
*
* Note: none
*
********************************************************************/
SHORT TouchGetX(){
long result;

#ifdef SWAP_X_AND_Y
    result = ADCGetY();
#else
    result = ADCGetX();
#endif

    if(result>=0){

#ifdef SWAP_X_AND_Y
        result = (GetMaxX()*(result - _calYMin))/(_calYMax - _calYMin);
#else
        result = (GetMaxX()*(result- _calXMin))/(_calXMax - _calXMin);
#endif

#ifdef FLIP_X
        result = GetMaxX()- result;
#endif

    }
    return result;
}

/*********************************************************************
* Function: SHORT TouchGetY()
*
* PreCondition: none
*
* Input: none
*
* Output: y coordinate
*
* Side Effects: none
*
* Overview: returns y coordinate if touch screen is pressed
*           and -1 if not
*
* Note: none
*
********************************************************************/
SHORT TouchGetY(){
long result;

#ifdef SWAP_X_AND_Y
    result = ADCGetX();
#else
    result = ADCGetY();
#endif

    if(result>=0){

#ifdef SWAP_X_AND_Y
        result = (GetMaxY()*(result- _calXMin))/(_calXMax - _calXMin);
#else
        result = (GetMaxY()*(result - _calYMin))/(_calYMax - _calYMin);
#endif

#ifdef FLIP_Y
        result = GetMaxY()- result;
#endif

    }
    
    return result;
}

/*********************************************************************
* Function: void TouchGetMsg(GOL_MSG* pMsg)
*
* PreCondition: none
*
* Input: pointer to the message structure to be populated
*
* Output: none
*
* Side Effects: none
*
* Overview: populates GOL message structure
*
* Note: none
*
********************************************************************/
void TouchGetMsg(GOL_MSG* pMsg){
static SHORT prevX = -1;
static SHORT prevY = -1;

SHORT x,y;

    x = TouchGetX();  y = TouchGetY();
    pMsg->type    = TYPE_TOUCHSCREEN;
    pMsg->uiEvent = EVENT_INVALID;

    if( x == -1 ){
        y = -1;
    }else{
        if( y == -1 )
            x = -1;
    }

    if( (prevX == x) && (prevY == y) ) {
        pMsg->uiEvent = EVENT_STILLPRESS;
        pMsg->param1 = x;
        pMsg->param2 = y;
        return;
    }    

    if( (prevX != -1) || (prevY != -1) ){

        if( (x != -1) && (y != -1) ){
            // Move
            pMsg->uiEvent = EVENT_MOVE;
        }else{
            // Released
            pMsg->uiEvent = EVENT_RELEASE;
            pMsg->param1 = prevX;
            pMsg->param2 = prevY;
            prevX = x;
            prevY = y;
            return;
        }

    }else{

        if( (x != -1) && (y != -1) ){
            // Pressed
            pMsg->uiEvent = EVENT_PRESS;
        }else{
            // No message
            pMsg->uiEvent = EVENT_INVALID;
        }

    }

    pMsg->param1 = x;
    pMsg->param2 = y;
    prevX = x;
    prevY = y;

}

/*********************************************************************
* Function: void TouchStoreCalibration(void)
*
* PreCondition: EEPROMInit() must be called before
*
* Input: none
*
* Output: none
*
* Side Effects: none
*
* Overview: stores calibration parameters into EEPROM
*
* Note: none
*
********************************************************************/
void TouchStoreCalibration(void){
#if ((GRAPHICS_PICTAIL_VERSION == 2) || (GRAPHICS_PICTAIL_VERSION == 250))
    EEPROMWriteWord(_calXMin, ADDRESS_XMIN);
    EEPROMWriteWord(_calXMax, ADDRESS_XMAX);
    EEPROMWriteWord(_calYMin, ADDRESS_YMIN);
    EEPROMWriteWord(_calYMax, ADDRESS_YMAX);
    EEPROMWriteWord(GRAPHICS_LIBRARY_VERSION,ADDRESS_VERSION);
#else
    SST25SectorErase(ADDRESS_XMIN); // erase 4K sector
    SST25WriteWord(_calXMin, ADDRESS_XMIN);
    SST25WriteWord(_calXMax, ADDRESS_XMAX);
    SST25WriteWord(_calYMin, ADDRESS_YMIN);
    SST25WriteWord(_calYMax, ADDRESS_YMAX);
    SST25WriteWord(GRAPHICS_LIBRARY_VERSION,ADDRESS_VERSION);
#endif
}

/*********************************************************************
* Function: void TouchLoadCalibration(void)
*
* PreCondition: EEPROMInit() must be called before
*
* Input: none
*
* Output: none
*
* Side Effects: none
*
* Overview: loads calibration parameters from EEPROM
*
* Note: none
*
********************************************************************/
void TouchLoadCalibration(void){
#if ((GRAPHICS_PICTAIL_VERSION == 2) || (GRAPHICS_PICTAIL_VERSION == 250))
    _calXMin = EEPROMReadWord(ADDRESS_XMIN);
    _calXMax = EEPROMReadWord(ADDRESS_XMAX);
    _calYMin = EEPROMReadWord(ADDRESS_YMIN);
    _calYMax = EEPROMReadWord(ADDRESS_YMAX);
#else
    _calXMin = SST25ReadWord(ADDRESS_XMIN);
    _calXMax = SST25ReadWord(ADDRESS_XMAX);
    _calYMin = SST25ReadWord(ADDRESS_YMIN);
    _calYMax = SST25ReadWord(ADDRESS_YMAX);
#endif
}

/*********************************************************************
* Function:  void TouchCalibration()
*
* PreCondition: InitGraph() must be called before
*
* Input: none
*
* Output: none
*
* Side Effects: none
*
* Overview: calibrates touch screen
*
* Note: none
*
********************************************************************/
void TouchCalibration(){
static const XCHAR scr1StrLn1[] = {'I','M','P','O','R','T','A','N','T','.',0};
static const XCHAR scr1StrLn2[] = {'N','o','w',' ','t','o','u','c','h',' ','s','c','r','e','e','n',' ','c','a','l','i','b','r','a','t','i','o','n',0};
static const XCHAR scr1StrLn3[] = {'w','i','l','l',' ','b','e',' ','p','e','r','f','o','m','e','d','.','T','o','u','c','h',' ','p','o','i','n','t','s',0};
static const XCHAR scr1StrLn4[] = {'E','X','A','C','T','L','Y',' ','a','t',' ','t','h','e',' ','p','o','s','i','t','i','o','n','s',0};
static const XCHAR scr1StrLn5[] = {'s','h','o','w','n',' ','b','y',' ','a','r','r','o','w','s','.',0};
static const XCHAR scr1StrLn6[] = {'T','o','u','c','h',' ','s','c','r','e','e','n',' ','t','o',' ','c','o','n','t','i','n','u','e','.',0};

static const XCHAR scr2StrLn1[] = {'H','o','l','d',' ','S','3',' ','b','u','t','t','o','n',' ','a','n','d',0};
static const XCHAR scr2StrLn2[] = {'p','r','e','s','s',' ','M','C','L','R',' ','r','e','s','e','t','(','S','1',')',0};
static const XCHAR scr2StrLn3[] = {'t','o',' ','R','E','P','E','A','T',' ','t','h','e',' ','c','a','l','i','b','r','a','t','i','o','n',0};
static const XCHAR scr2StrLn4[] = {'p','r','o','c','e','d','u','r','e','.',0};


SHORT counter;
SHORT x,y;

SHORT textHeight;

    SetFont((void*)&GOLFontDefault);
    textHeight = GetTextHeight((void*)&GOLFontDefault);

    SetColor(WHITE);
    ClearDevice();

    SetColor(BRIGHTRED);
    WAIT_UNTIL_FINISH(OutTextXY(0,0*textHeight, (XCHAR*)scr1StrLn1));
    SetColor(BLACK);
    WAIT_UNTIL_FINISH(OutTextXY(0,1*textHeight, (XCHAR*)scr1StrLn2));
    WAIT_UNTIL_FINISH(OutTextXY(0,2*textHeight, (XCHAR*)scr1StrLn3));
    WAIT_UNTIL_FINISH(OutTextXY(0,3*textHeight, (XCHAR*)scr1StrLn4));
    WAIT_UNTIL_FINISH(OutTextXY(0,4*textHeight, (XCHAR*)scr1StrLn5));
    SetColor(BRIGHTRED);
    WAIT_UNTIL_FINISH(OutTextXY(0,6*textHeight, (XCHAR*)scr1StrLn6));

    // Wait for touch
    do{
        x=ADCGetX(); y=ADCGetY();
    }while((y==-1)||(x==-1));

    Beep();

    DelayMs(500);

    SetColor(WHITE);
    ClearDevice();

    SetColor(BRIGHTRED);

#ifdef SWAP_X_AND_Y

    WAIT_UNTIL_FINISH(Line(GetMaxX()-5,5,GetMaxX()-5,15));
    WAIT_UNTIL_FINISH(Line(GetMaxX()-4,5,GetMaxX()-4,15));
    WAIT_UNTIL_FINISH(Line(GetMaxX()-6,5,GetMaxX()-6,15));

    WAIT_UNTIL_FINISH(Line(GetMaxX()-5,5,GetMaxX()-15,5));
    WAIT_UNTIL_FINISH(Line(GetMaxX()-5,4,GetMaxX()-15,4));
    WAIT_UNTIL_FINISH(Line(GetMaxX()-5,6,GetMaxX()-15,6));

    WAIT_UNTIL_FINISH(Line(GetMaxX()-5,6,GetMaxX()-15,16));
    WAIT_UNTIL_FINISH(Line(GetMaxX()-5,4,GetMaxX()-15,14));
    WAIT_UNTIL_FINISH(Line(GetMaxX()-5,5,GetMaxX()-15,15));

#else

    WAIT_UNTIL_FINISH(Line(5,5,5,15));
    WAIT_UNTIL_FINISH(Line(4,5,4,15));
    WAIT_UNTIL_FINISH(Line(6,5,6,15));

    WAIT_UNTIL_FINISH(Line(5,5,15,5));
    WAIT_UNTIL_FINISH(Line(5,4,15,4));
    WAIT_UNTIL_FINISH(Line(5,6,15,6));

    WAIT_UNTIL_FINISH(Line(5,6,15,16));
    WAIT_UNTIL_FINISH(Line(5,4,15,14));
    WAIT_UNTIL_FINISH(Line(5,5,15,15));

#endif

    _calXMin = 0xFFFF;
    _calXMax = 0;
    _calYMin = 0xFFFF;
    _calYMax = 0;

    TouchGetCalPoints();

    SetColor(WHITE);
    ClearDevice();

    SetColor(BRIGHTRED);

#ifdef SWAP_X_AND_Y

    WAIT_UNTIL_FINISH(Line(5,5,5,15));
    WAIT_UNTIL_FINISH(Line(4,5,4,15));
    WAIT_UNTIL_FINISH(Line(6,5,6,15));

    WAIT_UNTIL_FINISH(Line(5,5,15,5));
    WAIT_UNTIL_FINISH(Line(5,4,15,4));
    WAIT_UNTIL_FINISH(Line(5,6,15,6));

    WAIT_UNTIL_FINISH(Line(5,6,15,16));
    WAIT_UNTIL_FINISH(Line(5,4,15,14));
    WAIT_UNTIL_FINISH(Line(5,5,15,15));

#else

    WAIT_UNTIL_FINISH(Line(5,GetMaxY()-5,5,GetMaxY()-15));
    WAIT_UNTIL_FINISH(Line(4,GetMaxY()-5,4,GetMaxY()-15));
    WAIT_UNTIL_FINISH(Line(6,GetMaxY()-5,6,GetMaxY()-15));

    WAIT_UNTIL_FINISH(Line(5,GetMaxY()-5,15,GetMaxY()-5));
    WAIT_UNTIL_FINISH(Line(5,GetMaxY()-4,15,GetMaxY()-4));
    WAIT_UNTIL_FINISH(Line(5,GetMaxY()-6,15,GetMaxY()-6));

    WAIT_UNTIL_FINISH(Line(5,GetMaxY()-6,15,GetMaxY()-16));
    WAIT_UNTIL_FINISH(Line(5,GetMaxY()-4,15,GetMaxY()-14));
    WAIT_UNTIL_FINISH(Line(5,GetMaxY()-5,15,GetMaxY()-15));

#endif

    TouchGetCalPoints();

    SetColor(WHITE);
    ClearDevice();

    SetColor(BRIGHTRED);    


#ifdef SWAP_X_AND_Y

    WAIT_UNTIL_FINISH(Line(GetMaxX()/2-5,GetMaxY()-5,GetMaxX()/2-5,GetMaxY()-15));
    WAIT_UNTIL_FINISH(Line(GetMaxX()/2-4,GetMaxY()-5,GetMaxX()/2-4,GetMaxY()-15));
    WAIT_UNTIL_FINISH(Line(GetMaxX()/2-6,GetMaxY()-5,GetMaxX()/2-6,GetMaxY()-15));

    WAIT_UNTIL_FINISH(Line(GetMaxX()/2-5,GetMaxY()-5,GetMaxX()/2-15,GetMaxY()-5));
    WAIT_UNTIL_FINISH(Line(GetMaxX()/2-5,GetMaxY()-4,GetMaxX()/2-15,GetMaxY()-4));
    WAIT_UNTIL_FINISH(Line(GetMaxX()/2-5,GetMaxY()-6,GetMaxX()/2-15,GetMaxY()-6));

    WAIT_UNTIL_FINISH(Line(GetMaxX()/2-5,GetMaxY()-6,GetMaxX()/2-15,GetMaxY()-16));
    WAIT_UNTIL_FINISH(Line(GetMaxX()/2-5,GetMaxY()-4,GetMaxX()/2-15,GetMaxY()-14));
    WAIT_UNTIL_FINISH(Line(GetMaxX()/2-5,GetMaxY()-5,GetMaxX()/2-15,GetMaxY()-15));

#else

    WAIT_UNTIL_FINISH(Line(GetMaxX()-5,GetMaxY()/2-5,GetMaxX()-5,GetMaxY()/2-15));
    WAIT_UNTIL_FINISH(Line(GetMaxX()-4,GetMaxY()/2-5,GetMaxX()-4,GetMaxY()/2-15));
    WAIT_UNTIL_FINISH(Line(GetMaxX()-6,GetMaxY()/2-5,GetMaxX()-6,GetMaxY()/2-15));

    WAIT_UNTIL_FINISH(Line(GetMaxX()-5,GetMaxY()/2-5,GetMaxX()-15,GetMaxY()/2-5));
    WAIT_UNTIL_FINISH(Line(GetMaxX()-5,GetMaxY()/2-4,GetMaxX()-15,GetMaxY()/2-4));
    WAIT_UNTIL_FINISH(Line(GetMaxX()-5,GetMaxY()/2-6,GetMaxX()-15,GetMaxY()/2-6));

    WAIT_UNTIL_FINISH(Line(GetMaxX()-5,GetMaxY()/2-6,GetMaxX()-15,GetMaxY()/2-16));
    WAIT_UNTIL_FINISH(Line(GetMaxX()-5,GetMaxY()/2-4,GetMaxX()-15,GetMaxY()/2-14));
    WAIT_UNTIL_FINISH(Line(GetMaxX()-5,GetMaxY()/2-5,GetMaxX()-15,GetMaxY()/2-15));

#endif

    TouchGetCalPoints();

    SetColor(WHITE);
    ClearDevice();

    SetColor(BLACK);
    WAIT_UNTIL_FINISH(OutTextXY(10,1*textHeight,(XCHAR*)scr2StrLn1));
    WAIT_UNTIL_FINISH(OutTextXY(10,2*textHeight,(XCHAR*)scr2StrLn2));
    WAIT_UNTIL_FINISH(OutTextXY(10,3*textHeight,(XCHAR*)scr2StrLn3));
    WAIT_UNTIL_FINISH(OutTextXY(10,4*textHeight,(XCHAR*)scr2StrLn4));
    SetColor(BRIGHTRED);
    WAIT_UNTIL_FINISH(OutTextXY(10,6*textHeight,(XCHAR*)scr1StrLn6));

    // Wait for touch
    do{
        x=ADCGetX(); y=ADCGetY();
    }while((y==-1)||(x==-1));

    Beep();

    DelayMs(500);

    SetColor(BLACK);
    ClearDevice();

}

/*********************************************************************
* Function: void TouchGetCalPoints(void)
*
* PreCondition: InitGraph() must be called before
*
* Input: none
*
* Output: none
*
* Side Effects: none
*
* Overview: gets values for 3 touches
*
* Note: none
*
********************************************************************/
void TouchGetCalPoints(void){
static const XCHAR calStr[] = {'C','A','L','I','B','R','A','T','I','O','N',0};
XCHAR calTouchLeft[] = {'3',' ','t','o','u','c','h','e','s',' ','l','e','f','t',0};
SHORT counter;
SHORT x,y;
WORD  ax[3],ay[3];

    SetFont((void*)&GOLFontDefault);

    SetColor(BRIGHTRED);

    WAIT_UNTIL_FINISH(OutTextXY((GetMaxX()-GetTextWidth((XCHAR*)calStr,(void*)&GOLFontDefault))>>1,
              (GetMaxY()-GetTextHeight((void*)&GOLFontDefault))>>1,
              (XCHAR*)calStr));

    for(counter=0; counter<3; counter++){

        SetColor(BRIGHTRED);

        calTouchLeft[0] = '3' - counter;

        WAIT_UNTIL_FINISH(OutTextXY((GetMaxX()-GetTextWidth(calTouchLeft,(void*)&GOLFontDefault))>>1,
                  (GetMaxY()+GetTextHeight((void*)&GOLFontDefault))>>1,
                   calTouchLeft));

        // Wait for press
        do{
            x=ADCGetX(); y=ADCGetY();
        }while((y==-1)||(x==-1));

        Beep();

        ax[counter] = x; ay[counter] = y;
     
        // Wait for release
        do{
            x=ADCGetX(); y=ADCGetY();
        }while((y!=-1)&&(x!=-1));

        SetColor(WHITE);

        WAIT_UNTIL_FINISH(OutTextXY((GetMaxX()-GetTextWidth(calTouchLeft,(void*)&GOLFontDefault))>>1,
                  (GetMaxY()+GetTextHeight((void*)&GOLFontDefault))>>1,
                   calTouchLeft));

        DelayMs(500);
    }

    for(counter=0; counter<3; counter++){
        if(_calXMax < ax[counter])
            _calXMax = ax[counter];

        if(_calYMin > ay[counter])
            _calYMin = ay[counter];

        if(_calYMax < ay[counter])
            _calYMax = ay[counter];

        if(_calXMin > ax[counter])
            _calXMin = ax[counter];
    }

}
