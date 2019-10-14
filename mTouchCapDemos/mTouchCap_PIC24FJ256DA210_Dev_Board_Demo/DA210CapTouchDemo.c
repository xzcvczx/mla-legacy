/*****************************************************************************
 * Microchip Graphics Library Demo Application
 * This program shows how to use the Graphics Objects Layer.
 *****************************************************************************
 * FileName:        DA210CapTouchDemo.c
 * Dependencies:    DA210CapTouchDemo.h
 * Processor:       PIC24FJ256DA210
 * Compiler:       	MPLAB C30 V3.20
 * Linker:          MPLAB LINK30
 * Company:         Microchip Technology Incorporated
 *
 * Software License Agreement
 *
 * Copyright © 2010 Microchip Technology Inc.  All rights reserved.
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
 * Bruce Bohn			01/17/2010	...
 *****************************************************************************/
#include "DA210CapTouchDemo.h"

// Configuration bits
#if defined(__dsPIC33F__) || defined(__PIC24H__)
_FOSCSEL(FNOSC_PRI);
_FOSC(FCKSM_CSECMD &OSCIOFNC_OFF &POSCMD_XT);
_FWDT(FWDTEN_OFF);
#elif defined(__PIC32MX__)
    #pragma config FPLLODIV = DIV_1, FPLLMUL = MUL_18, FPLLIDIV = DIV_2, FWDTEN = OFF, FCKSM = CSECME, FPBDIV = DIV_8
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
_CONFIG2(FNOSC_PRIPLL & POSCMOD_XT)     // Primary XT OSC with PLL
_CONFIG1(JTAGEN_OFF & FWDTEN_OFF)       // JTAG off, watchdog timer off
    #endif
	#if defined (__PIC24FJ256DA210__)
_CONFIG1( WDTPS_PS32768 & FWPSA_PR128 & ALTVREF_ALTVREDIS & WINDIS_OFF & FWDTEN_OFF & ICS_PGx2 & GWRP_OFF & GCP_OFF & JTAGEN_OFF) 
_CONFIG2( POSCMOD_HS & IOL1WAY_OFF & OSCIOFNC_OFF & OSCIOFNC_OFF & FCKSM_CSDCMD & FNOSC_PRIPLL & PLL96MHZ_ON & PLLDIV_DIV2 & IESO_ON)
_CONFIG3( WPFP_WPFP255 & SOSCSEL_SOSC & WUTSEL_LEG & ALTPMP_ALTPMPEN /*ALTPMP_ALPMPDIS */      & WPDIS_WPDIS & WPCFG_WPCFGDIS & WPEND_WPENDMEM) 
	#endif	        
#endif

/////////////////////////////////////////////////////////////////////////////
//                              OBJECT'S IDs
/////////////////////////////////////////////////////////////////////////////
#define ID_BTN1 		10
#define ID_BTN2 		11
#define ID_SLD1 		20

/////////////////////////////////////////////////////////////////////////////
//                              OBJECT DIMENSIONS
/////////////////////////////////////////////////////////////////////////////
#define SLDR_XSTART		20
#define SLDR_YSTART		105
#define SLDR_WIDTH		(GetMaxX()-40)
#define SLDR_HEIGHT		45

#define BTN_WIDTH		130
#define BTN_YSTART		160
#define BTN1_XSTART		((GetMaxX()>>1)-10-BTN_WIDTH)
#define BTN2_XSTART		((GetMaxX()>>1)+10)
#define BTN_HEIGHT		50

#define BAR_XSTART		((GetMaxX()-200)>>1)
#define BAR_WIDTH		4

/////////////////////////////////////////////////////////////////////////////
//                            IMAGES USED
/////////////////////////////////////////////////////////////////////////////
extern const BITMAP_FLASH redRightArrow;
extern const BITMAP_FLASH redLeftArrow;

/////////////////////////////////////////////////////////////////////////////
//                                  MAIN
/////////////////////////////////////////////////////////////////////////////
GOL_SCHEME                  *altScheme; // alternative style scheme
SLIDER                      *pSld;      // pointer to the slider object
WORD                        update = 0; // variable to update customized graphics

/* */
int main(void)
{
    GOL_MSG msg;                    // GOL message structure to interact with GOL
    
    #if (GRAPHICS_HARDWARE_PLATFORM == DA210_DEV_BOARD)
    
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

//ANSA = 0x0000;
//ANSC = 0x0000;
//ANSE = 0x0000;

    GOLInit();                      // initialize graphics library &

    #if (GRAPHICS_HARDWARE_PLATFORM < GFX_PICTAIL_V3)
    EEPROMInit();                   // initialize Exp.16 EEPROM SPI
    BeepInit();
    #else
    SST25Init();                    // initialize GFX3 SST25 flash SPI
    #endif
    
//    TouchInit();                    // initialize touch screen

    mTouchCapPhy_Init(); 
    
//	TRISEbits.TRISE8 = 0;
//	LATEbits.LATE8 = 0;
//
//	PMCS1CFbits.CSDIS = 1;      // enable CS
//	PMCS1CFbits.CSPTEN = 0;//1;     // enable CS port
//
//
    // create default style scheme for GOL
    #if defined(__dsPIC33FJ128GP804__) || defined(__PIC24HJ128GP504__)

    // If S3 button on Explorer 16 board is pressed calibrate touch screen
    TRISAbits.TRISA9 = 1;
    if(PORTAbits.RA9 == 0)
    {
        TRISAbits.TRISA9 = 0;
        TouchCalibration();
        TouchStoreCalibration();
    }

    TRISAbits.TRISA9 = 0;
    #elif defined(__PIC24FJ256DA210__)

    // If S1 button on the PIC24FJ256DA210 Development board is pressed calibrate touch screen
    if(BTN_S1 == 0)
    {
  //      TouchCalibration();
  //      TouchStoreCalibration();
    }
    
    #else

    // If S3 button on Explorer 16 board is pressed calibrate touch screen
    if(BTN_S3 == 0)
    {
        TouchCalibration();
        TouchStoreCalibration();
    }

    #endif

    // If it's a new board (EEPROM_VERSION byte is not programed) calibrate touch screen
//    #if (GRAPHICS_HARDWARE_PLATFORM < GFX_PICTAIL_V3)
//    if(GRAPHICS_LIBRARY_VERSION != EEPROMReadWord(ADDRESS_VERSION))
//    {
//        TouchCalibration();
//        TouchStoreCalibration();
//    }
//
//    #else
//    if(GRAPHICS_LIBRARY_VERSION != SST25ReadWord(ADDRESS_VERSION))
//    {
    //    TouchCalibration();
    //    TouchStoreCalibration();
//    }

//    #endif

//	ANSEbits.ANSE9 = 0;
//	TRISEbits.TRISE9 = 0;

//	while(1);

    // Load touch screen calibration parameters from memory
//    TouchLoadCalibration();

    altScheme = GOLCreateScheme();  // create alternative style scheme
    altScheme->TextColor0 = BLACK;
    altScheme->TextColor1 = BRIGHTBLUE;

    BtnCreate
    (
        ID_BTN1,                    // object’s ID
        BTN1_XSTART,
        BTN_YSTART,
        BTN1_XSTART+BTN_WIDTH,
        BTN_YSTART+BTN_HEIGHT,      // object’s dimension
        0,                          // radius of the rounded edge
        BTN_DRAW,                   // draw the object after creation
        NULL,                       // no bitmap used
        "LEFT",                     // use this text
        altScheme
    );                              // use alternative style scheme

    BtnCreate
    (
    	ID_BTN2, 
    	BTN2_XSTART, 
    	BTN_YSTART, 
    	BTN2_XSTART+BTN_WIDTH, 
    	BTN_YSTART+BTN_HEIGHT, 
    	0, 
    	BTN_DRAW, 
    	NULL, 
    	"RIGHT", 
    	altScheme
    );

    pSld = SldCreate
        (
            ID_SLD1,                // object’s ID
            SLDR_XSTART,
            SLDR_YSTART,
            SLDR_XSTART+SLDR_WIDTH,
            SLDR_YSTART+SLDR_HEIGHT,// object’s dimension
            SLD_DRAW,               // draw the object after creation
            100,                    // range
            1,                      // page
            50,                     // initial position
            NULL
        );                          // use default style scheme


    update = 1;                     // to initialize the user graphics
    while(1)
    {

        if(dataReadyCTMU == 1)                      // This flag is set by Timer 4 ISR //when all channels have been read
        {
            dataReadyCTMU = 0;  

            Set_ScanTimer_IF_Bit_State(DISABLE);    //Clear timer 4 SHORT flag
            Set_ScanTimer_IE_Bit_State(DISABLE);    //Disable interrupt
            Set_ScanTimer_ON_Bit_State(DISABLE);    //Stop timer 4

            mTouchCapApp_DemoDirectKeys();

            Set_ScanTimer_IF_Bit_State(DISABLE);    //Clear flag
            Set_ScanTimer_IE_Bit_State(ENABLE);     //Enable interrupt
            Set_ScanTimer_ON_Bit_State(ENABLE);     //Run timer
		}

        if(GOLDraw())
        {                           // Draw GOL object
			CapmTouchGetMsg(&msg);

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
    SLIDER  *pSldObj;

    objectID = GetObjID(pObj);

    if(objectID == ID_BTN1)
    {
        if(objMsg == BTN_MSG_PRESSED)
        {   // check if button is pressed
            BtnSetBitmap(pObj, (void *) &redLeftArrow);     // set bitmap to show
            SetState(pObj, BTN_TEXTRIGHT);                  // move the text to the right
            pSldObj = (SLIDER *)GOLFindObject(ID_SLD1);     // find slider pointer
            SldDecPos(pSldObj);                             // decrement the slider position
            SetState(pSldObj, SLD_DRAW_THUMB);              // redraw only the thumb
        }
        else
        {
            BtnSetBitmap(pObj, NULL);                       // remove the bitmap
            ClrState(pObj, BTN_TEXTRIGHT);                  // place the text back in the middle
        }

        update = 1;
    }

    if(objectID == ID_BTN2)
    {
        if(objMsg == BTN_MSG_PRESSED)
        {
            BtnSetBitmap(pObj, (void *) &redRightArrow);    // set bitmap to show
            SetState(pObj, BTN_TEXTLEFT);                   // move the text to the left
            pSldObj = (SLIDER *)GOLFindObject(ID_SLD1);     // find slider pointer
            SldIncPos(pSldObj);                             // increment the slider position
            SetState(pSldObj, SLD_DRAW_THUMB);              // redraw only the thumb
        }
        else
        {
            BtnSetBitmap(pObj, NULL);                       // remove the bitmap
            ClrState(pObj, BTN_TEXTLEFT);                   // place the text back in the middle
        }

        update = 1;
    }

    if(objectID == ID_SLD1)
    {
        if((objMsg == SLD_MSG_INC) || (objMsg == SLD_MSG_DEC))
        {
            update = 1;
        }
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
    WORD        value, y, x;    // variables for the slider position
    static WORD prevValue = 0;

    if(update)
    {

        /* User defined graphics:	
		    This draws a series of bars indicating the value/position of the 
			slider's thumb. The height of the bars follows the equation of a 
			parabola "(y-k)^2 = 4a(x-h) with vertex at (k, h) at (60,100) on 
			the display. The value 110 is the 4*a constant. x & y are calculated
			based on the value of the slider thumb. The bars are drawn from 
			60 to 260 in the x-axis and 10 to 100 in the y-axis. Bars are drawn
			every 6 pixels with width of 4 pixels.
			
			Only the bars that are added or removed are drawn. Thus resulting 
			in an efficient customized drawing. 
		*/

        // check the value of slider
        value = SldGetPos(pSld);

        // remove bars if there the new value is less
        // than the previous
        SetColor(BLACK);
        if(value < prevValue)
        {
            while(prevValue > value)
            {

                // get the height of the bar to be removed
                y = (prevValue * prevValue) / 110;

                // bars are drawn every 6 pixels with width = 4 pixels.
                x = (prevValue * 2);
                x = x - (x % 6);

                // draw a BLACK colored bar to remove the current bar drawn
                Bar(x+BAR_XSTART, 100-y, x+BAR_XSTART+BAR_WIDTH, 100);

                // decrement by three since we are drawing every 6 pixels
                prevValue -= 3;
            }
        }

        // Draw bars if there the new value is greater
        // than the previous
        else
        {
            while(prevValue < value)
            {
                if(prevValue < 60)
                {
                    SetColor(BRIGHTGREEN);
                }
                else if((prevValue < 80) && (prevValue >= 60))
                {
                    SetColor(BRIGHTYELLOW);
                }
                else if(prevValue >= 80)
                {
                    SetColor(BRIGHTRED);
                }

                // get the height of the bar to be drawn
                y = (prevValue * prevValue) / 110;

                // bars are drawn every 6 pixels with width = 4 pixels.
                x = (prevValue * 2);
                x = x - (x % 6);

                // draw a bar to increase in value
                Bar(x+BAR_XSTART, 100-y, x+BAR_XSTART+BAR_WIDTH, 100);

                // increment by three since we are drawing every 6 pixels
                prevValue += 3;
            }
        }

        // prevValue will have the current value after drawing or removing bars.
        // reset the update flag
        update = 0;
    }

    return (1);
}


///*********************************************************************
//* Function: void CapmTouchGetMsg(GOL_MSG* pMsg)
//*
//* PreCondition: none
//*
//* Input: pointer to the message structure to be populated
//*
//* Output: none
//*
//* Side Effects: none
//*
//* Overview: populates GOL message structure
//*
//* Note: none
//*
//********************************************************************/
void CapmTouchGetMsg(GOL_MSG *pMsg)
{
  
	static WORD touched = 0;
	static WORD lastPosSlider;
	static float curPosSlider;
	static WORD temp;	

    pMsg->type = TYPE_TOUCHSCREEN;
    pMsg->uiEvent = EVENT_INVALID;

	if(mTouchKeyStatus[0])	//pad 1
	{
		if(mTouchKeyStatus[1])	//pad 2
		{
 			pMsg->param1  = BTN1_XSTART+2;
		    pMsg->param2  = BTN_YSTART+2;
			pMsg->uiEvent = EVENT_PRESS;
			pMsg->type = TYPE_TOUCHSCREEN;
			touched = 1;
		}
		else if(mTouchKeyStatus[2])	//pad 3
		{
 			pMsg->param1  = BTN2_XSTART+2;
		    pMsg->param2  = BTN_YSTART+2;
			pMsg->uiEvent = EVENT_PRESS;
			pMsg->type = TYPE_TOUCHSCREEN;
			touched = 2;
		}
		//return;
	}
	else
	{
		if(touched == 1)
		{
 			pMsg->param1  = BTN1_XSTART+2;
		    pMsg->param2  = BTN_YSTART+2;
			pMsg->uiEvent = EVENT_RELEASE;
			pMsg->type = TYPE_TOUCHSCREEN;
			touched = 0;
			//SetColor(BRIGHTRED);
			//Bar(10,10,50,50);
		}
		 if(touched == 2)
		{
 			pMsg->param1  = BTN2_XSTART+2;
		    pMsg->param2  = BTN_YSTART+2;
			pMsg->uiEvent = EVENT_RELEASE;
			pMsg->type = TYPE_TOUCHSCREEN;
			touched = 0;
			//SetColor(BRIGHTBLUE);
			//Bar(10,10,50,50);
		}
	}


	if(0) //(mTouchKeyStatus[1]==1) && (mTouchKeyStatus[0]==0) && (mTouchKeyStatus[2]==0) )
	{
		SldIncPos(pSld);
		SetState(pSld, SLD_DRAW_THUMB); 
		//SldIncPos(pSld);
		//SldSetPos(curPosSlider+1);
			SetColor(BRIGHTBLUE);
			Bar(10,10,50,50);
		//temp = (SLDR_XSTART + SLDR_WIDTH);
		//pMsg->param1  = ((SLDR_XSTART + SLDR_WIDTH)*(curPosSlider/100)+3);
	    //pMsg->param2  = SLDR_YSTART+2;
		//pMsg->uiEvent = EVENT_PRESS;
		//pMsg->type = TYPE_TOUCHSCREEN;	
		touched = 3;
	//	return;	
	}
		
//	else
//	{
//		if(touched == 3)
//		{
////		pMsg->param1  = ((SLDR_XSTART + SLDR_WIDTH)*(curPosSlider/100));
////	    pMsg->param2  = SLDR_YSTART+2;
////		pMsg->uiEvent = EVENT_RELEASE;
////		pMsg->type = TYPE_TOUCHSCREEN;	
////			SetColor(BLACK);
////			Bar(10,10,50,50);	
//		}
//	}
//
	

}
//    if((prevX == x) && (prevY == y))
//    {
//        pMsg->uiEvent = EVENT_STILLPRESS;
//        pMsg->param1 = x;
//        pMsg->param2 = y;
//        return;
//    }
//
//    if((prevX != -1) || (prevY != -1))
//    {
//        if((x != -1) && (y != -1))
//        {
//
//            // Move
//            pMsg->uiEvent = EVENT_MOVE;
//        }
//        else
//        {
//
//            // Released
//            pMsg->uiEvent = EVENT_RELEASE;
//            pMsg->param1 = prevX;
//            pMsg->param2 = prevY;
//            prevX = x;
//            prevY = y;
//            return;
//        }
//    }
//    else
//    {
//        if((x != -1) && (y != -1))
//        {
//
//            // Pressed
//            pMsg->uiEvent = EVENT_PRESS;
//        }
//        else
//        {
//
//            // No message
//            pMsg->uiEvent = EVENT_INVALID;
//        }
//    }
//
//    pMsg->param1 = x;
//    pMsg->param2 = y;
//    prevX = x;
//    prevY = y;
//}
//
