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
#include "mTouchCap_CtmuAPI.h"
//#include "mTouchCap_PIC24_CTMU_Physical.h"
#include "mTouchCap_PIC24F_DA210CapTouchDemo.h"
//#include "HardwareProfile.h"
#include "mTouchCap_HardwareProfile.h"
#include "Config.h"
#include "softTimers.h"



// Configuration bits

_CONFIG1( WDTPS_PS32768 & FWPSA_PR128 & ALTVREF_ALTVREDIS & WINDIS_OFF & FWDTEN_OFF & ICS_PGx2 & GWRP_OFF & GCP_OFF & JTAGEN_OFF) 
_CONFIG2( POSCMOD_HS & IOL1WAY_OFF & OSCIOFNC_OFF & OSCIOFNC_OFF & FCKSM_CSDCMD & FNOSC_PRIPLL & PLL96MHZ_ON & PLLDIV_DIV2 & IESO_OFF)
_CONFIG3( WPFP_WPFP255 & SOSCSEL_SOSC & ALTPMP_ALTPMPEN /*ALTPMP_ALPMPDIS */      & WPDIS_WPDIS & WPCFG_WPCFGDIS & WPEND_WPENDMEM) 


DirectKey Pad1;
DirectKey Pad2;
DirectKey Pad3;

WORD	mTouchKeyStatus[3];



#define USE_MTOUCH_AND_GRAPHICS

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
//                            LOCAL PROTOTYPES
/////////////////////////////////////////////////////////////////////////////
void            TickInit(void);                 // starts tick counter
void	readmTouch(void);

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
/////////////////////////////////////////////////////////////////////////////
//                                  STRUCTURES USED FOR CAP TOUCH
/////////////////////////////////////////////////////////////////////////////


//////////////////////// GLOBAL VARIABLES ////////////////////////////
	int mTouch_ON = 0;
	int CapmTouchIdle = 0;


/* */
int main(void)
{
			//Set up the mTouch Cap Touch Keys
     mTouchCapAPI_SetUpChannelDirectKey(&Pad1,DIRECTKEY1_CHANNEL,DEFAULT_TRIP_VALUE,DECODE_METHOD_PRESS_ASSERT,FILTER_METHOD_GATEDAVERAGE);	
     mTouchCapAPI_SetUpChannelDirectKey(&Pad2,DIRECTKEY2_CHANNEL,DEFAULT_TRIP_VALUE,DECODE_METHOD_PRESS_ASSERT,FILTER_METHOD_GATEDAVERAGE);	
     mTouchCapAPI_SetUpChannelDirectKey(&Pad3,DIRECTKEY3_CHANNEL,DEFAULT_TRIP_VALUE,DECODE_METHOD_PRESS_ASSERT,FILTER_METHOD_GATEDAVERAGE);	

    GOL_MSG msg;                    // GOL message structure to interact with GOL
    
    _ANSG8 = 0; /* S1 */
    _ANSE9 = 0; /* S2 */
    _ANSB5 = 0; /* S3 */
        

    GOLInit();                      // initialize graphics library &


    #if defined (GFX_PICTAIL_V1) || defined (GFX_PICTAIL_V2)
    EEPROMInit();                   // initialize Exp.16 EEPROM SPI
    BeepInit();
    #else
    SST25Init();                    // initialize GFX3 SST25 flash SPI
    #endif
    
    // If S1 button on the PIC24FJ256DA210 Development board is pressed calibrate touch screen
//    if(BTN_S1 == 0)
//    {
//        TouchCalibration();
//        TouchStoreCalibration();
//    }
    

    // If it's a new board (EEPROM_VERSION byte is not programed) calibrate touch screen
    #if defined (GFX_PICTAIL_V1) || defined (GFX_PICTAIL_V2)
    if(GRAPHICS_LIBRARY_VERSION != EEPROMReadWord(ADDRESS_VERSION))
    {
  		TickInit(); 
        TouchCalibration();
        TouchStoreCalibration();
    }

    #else
    if(GRAPHICS_LIBRARY_VERSION != SST25ReadWord(ADDRESS_VERSION))
    {
        TickInit(); 
        TouchCalibration();
        TouchStoreCalibration();
    }

    #endif


    // Load touch screen calibration parameters from memory
   	TouchLoadCalibration();

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
            5,                      // page
            50,                     // initial position
            NULL
        );                          // use default style scheme




    update = 1;                     // to initialize the user graphics



	LATBbits.LATB5 = 0;
	LATEbits.LATE9 = 0;
	LATGbits.LATG8 = 0;

    mTouchCapPhy_InitCTMU(); 
	InitSoftTimers(1);
    TickInit(); 

    AddSoftTimer(1, RUN, &TouchProcessTouch); 
    AddSoftTimer(100, RUN, &readmTouch);

	mTouch_ON = 1;
    while(1)
    {

        if(dataReadyCTMU == 1)                      // This flag is set by Timer 4 ISR //when all channels have been read
        {
            dataReadyCTMU = 0;  
            mTouchCapApp_DemoDirectKeys();
		}

        if(GOLDraw())
        {                           // Draw GOL object
			CapmTouchGetMsg(&msg);
			if(CapmTouchIdle)
			{
				TouchGetMsg(&msg);
			}
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

	#if defined (GFX_PICTAIL_V1) || defined (GFX_PICTAIL_V2)
	    #if !defined (__PIC32MX__)
	    if(objMsg == BTN_MSG_PRESSED)
	    {
	        Beep();
	    }
		#endif
	#endif
	
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
                while(!Bar(x+BAR_XSTART, 100-y, x+BAR_XSTART+BAR_WIDTH, 100));

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
                while(!Bar(x+BAR_XSTART, 100-y, x+BAR_XSTART+BAR_WIDTH, 100));

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
	static WORD lastKeyStatus[3];


    typedef enum
   	{
       	IDLE,
       	LEFTPRESSED,
       	RIGHTPRESSED,
       	ZEROBARPRESSED,
       	HALFBARPRESSED,
       	FULLBARPRESSED,
		LEFTRIGHTWAIT,
       	ZEROBARWAIT,
       	FULLBARWAIT
   	} TOUCH_STATES;

	static TOUCH_STATES padState = IDLE;
	
    pMsg->type = TYPE_TOUCHSCREEN;
//    pMsg->uiEvent = EVENT_INVALID;
	CapmTouchIdle = 0;
	
	switch(padState)
	{
		case IDLE:

		if(mTouchKeyStatus[0])	//pad 1
		{	
			padState = LEFTRIGHTWAIT;
		}
			
		else if(mTouchKeyStatus[1])
		{
			padState = FULLBARWAIT;
			DelayMs(50);
		}

		else if(mTouchKeyStatus[2])
		{
			padState = ZEROBARWAIT;
			DelayMs(50);
		}
		else
		{
			CapmTouchIdle = 1;
		}
		break;

		case RIGHTPRESSED:

		if(!mTouchKeyStatus[0] && !mTouchKeyStatus[2])
		{
	 			pMsg->param1  = BTN2_XSTART+2;
			    pMsg->param2  = BTN_YSTART+2;
				pMsg->uiEvent = EVENT_RELEASE;
				pMsg->type = TYPE_TOUCHSCREEN;
				padState = IDLE;
		}
		break;

		case LEFTPRESSED:

		if(!mTouchKeyStatus[0] && !mTouchKeyStatus[1])
		{
 			pMsg->param1  = BTN1_XSTART+2;
		    pMsg->param2  = BTN_YSTART+2;
			pMsg->uiEvent = EVENT_RELEASE;
			pMsg->type = TYPE_TOUCHSCREEN;
			padState = IDLE;
		}
		break;


		case ZEROBARPRESSED:
		if(!mTouchKeyStatus[2])
		{
			pMsg->param1  = SLDR_XSTART+5;
		    pMsg->param2  = SLDR_YSTART+(SLDR_HEIGHT/2);
			pMsg->uiEvent = EVENT_PRESS;
			pMsg->type = TYPE_TOUCHSCREEN;
			padState = IDLE;
		}
		break;

		case HALFBARPRESSED:
		if(!mTouchKeyStatus[1] && !mTouchKeyStatus[2])
		{
			pMsg->param1  = SLDR_XSTART+ (SLDR_WIDTH/2);
		    pMsg->param2  = SLDR_YSTART+(SLDR_HEIGHT/2);
			pMsg->uiEvent = EVENT_RELEASE;
			pMsg->type = TYPE_TOUCHSCREEN;
			padState = IDLE;		
		}
		break;
		
		case FULLBARPRESSED:
		if(!mTouchKeyStatus[1])		
		{
			pMsg->param1  = SLDR_XSTART+SLDR_WIDTH - 5;
		    pMsg->param2  = SLDR_YSTART+(SLDR_HEIGHT/2);
			pMsg->uiEvent = EVENT_RELEASE;
			pMsg->type = TYPE_TOUCHSCREEN;
			padState = IDLE;
		}
		break;

		case ZEROBARWAIT:
		if(!mTouchKeyStatus[2])
		{
			pMsg->param1  = SLDR_XSTART+2;
		    pMsg->param2  = SLDR_YSTART+2;
			pMsg->uiEvent = EVENT_RELEASE;
			pMsg->type = TYPE_TOUCHSCREEN;
			padState = IDLE;
		}
		else
		{
			if(mTouchKeyStatus[1])
			{
				pMsg->param1  = SLDR_XSTART+ (SLDR_WIDTH/2);
			    pMsg->param2  = SLDR_YSTART+(SLDR_HEIGHT/2);
				pMsg->uiEvent = EVENT_PRESS;
				pMsg->type = TYPE_TOUCHSCREEN;
				padState = HALFBARPRESSED;
			}
			else if(mTouchKeyStatus[0])
			{
	 			pMsg->param1  = BTN2_XSTART+2;
			    pMsg->param2  = BTN_YSTART+2;
				pMsg->uiEvent = EVENT_PRESS;
				pMsg->type = TYPE_TOUCHSCREEN;
				padState = RIGHTPRESSED;
			}
			else
			{
				pMsg->param1  = SLDR_XSTART+5;
			    pMsg->param2  = SLDR_YSTART+(SLDR_HEIGHT/2);
				pMsg->uiEvent = EVENT_PRESS;
				pMsg->type = TYPE_TOUCHSCREEN;
				padState = ZEROBARPRESSED;
			}
		}
		break;

		case FULLBARWAIT:
		if(!mTouchKeyStatus[1])			
		{
			pMsg->param1  = SLDR_XSTART+SLDR_WIDTH - 5;
		    pMsg->param2  = SLDR_YSTART+(SLDR_HEIGHT/2);
			pMsg->uiEvent = EVENT_RELEASE;
			pMsg->type = TYPE_TOUCHSCREEN;
			padState = IDLE;
		}
		else
		{
			if(mTouchKeyStatus[0])
			{
	 			pMsg->param1  = BTN1_XSTART+2;
			    pMsg->param2  = BTN_YSTART+2;
				pMsg->uiEvent = EVENT_PRESS;
				pMsg->type = TYPE_TOUCHSCREEN;
				padState = LEFTPRESSED;
			}
			else if(mTouchKeyStatus[2])
			{
	 			pMsg->param1  = SLDR_XSTART+(SLDR_WIDTH/2) - 5;
			    pMsg->param2  = SLDR_YSTART+(SLDR_HEIGHT/2);
				pMsg->uiEvent = EVENT_PRESS;
				pMsg->type = TYPE_TOUCHSCREEN;
				padState = HALFBARPRESSED;
			}
			else
			{
				pMsg->param1  = SLDR_XSTART+SLDR_WIDTH - 5;
			    pMsg->param2  = SLDR_YSTART+(SLDR_HEIGHT/2);
				pMsg->uiEvent = EVENT_PRESS;
				pMsg->type = TYPE_TOUCHSCREEN;
				padState = FULLBARPRESSED;
			}
		}
		break;

		case LEFTRIGHTWAIT:
		if(!mTouchKeyStatus[0])			
		{
			pMsg->param1  = BTN1_XSTART+2;
		    pMsg->param2  = BTN_YSTART+2;		
			pMsg->uiEvent = EVENT_RELEASE;
			pMsg->type = TYPE_TOUCHSCREEN;
			padState = IDLE;
		}
		else
		{
			if(mTouchKeyStatus[1])
			{
	 			pMsg->param1  = BTN1_XSTART+2;
			    pMsg->param2  = BTN_YSTART+2;
				pMsg->uiEvent = EVENT_PRESS;
				pMsg->type = TYPE_TOUCHSCREEN;
				padState = LEFTPRESSED;
			}
			else if(mTouchKeyStatus[2])
			{
	 			pMsg->param1  = BTN2_XSTART+2;
			    pMsg->param2  = BTN_YSTART+2;
				pMsg->uiEvent = EVENT_PRESS;
				pMsg->type = TYPE_TOUCHSCREEN;
				padState = RIGHTPRESSED;
			}
		}
		break;	

		default:
		break;
	}	//end switch padState
//	if(padState == IDLE)
//	{
//		CapmTouchIdle = 1;
//	}
//	else
//	{
//		CapmTouchIdle = 0;
//	}
		
}

/********************************************************************
 * Function		:    void mTouchCapApp_DemoDirectKeys(void)
 *
 * PreCondition	:    None
 *
 * Input			:    None
 *
 * Output			:    None
 *
 * Side Effects		:    None
 *
 * Overview		:
 *
 *
 *
 *
 *
 * Note			:
 *******************************************************************/
void mTouchCapApp_DemoDirectKeys(void)
{

    /* Check if the direct key is pressed which is connected at the mentioned channel */
    if(KEY_PRESSED == mTouchCapAPI_GetStatusDirectButton(&Pad1))
    {
        // Illuminate LED D1
		PORTGbits.RG8 = 1;
		mTouchKeyStatus[0] = 1;
    }
	else
	{
		PORTGbits.RG8 = 0;
		mTouchKeyStatus[0] = 0;
	}

    /* Check if the direct key is pressed which is connected at the mentioned channel */
    if(KEY_PRESSED == mTouchCapAPI_GetStatusDirectButton(&Pad2))
    {
        // Illuminate LED D2
		PORTEbits.RE9 = 1;
		mTouchKeyStatus[1] =1;
    }
	else
	{
		PORTEbits.RE9 = 0;
		mTouchKeyStatus[1] =0;
	}

    /* Check if the direct key is pressed which is connected at the mentioned channel */
    if(KEY_PRESSED == mTouchCapAPI_GetStatusDirectButton(&Pad3))
    {

        // Illuminate LED D3
		TRISBbits.TRISB5 = 0;
		PORTBbits.RB5 = 1;
		mTouchKeyStatus[2] = 1;
    }
    else
   {
		PORTBbits.RB5 = 0;
		mTouchKeyStatus[2] = 0;
   }
}


/////////////////////////////////////////////////////////////////////////////
// Function: Timer3 ISR
// Input: none
// Output: none
// Overview: increments tick counter. Tick is approx. 1 ms.
/////////////////////////////////////////////////////////////////////////////

#define __T3_ISR    __attribute__((interrupt, shadow, auto_psv))

/* */
void __T3_ISR _T3Interrupt(void)
{	


    IFS0bits.T3IF = 0;
	T3CONbits.TON = 0;	//stop the timer while the channel is read

    SOFT_TIMER_DISPATCHER();

	//readmTouch();
	//TouchProcessTouch();  
    T3CONbits.TON = 1;	
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
#define SAMPLE_PERIOD       500 // us
#define TICK_PERIOD			(GetPeripheralClock() * SAMPLE_PERIOD) / 4000000

/* */
void TickInit(void)
{

    // Initialize Timer3
    TMR3 = 0;
    PR3 = TICK_PERIOD;
    IFS0bits.T3IF = 0;  //Clear flag
    IEC0bits.T3IE = 1;  //Enable interrupt
    T3CONbits.TON = 1;  //Run timer
}





void readmTouch(void)
{
	static BYTE mTouchChCount = 0;
	static BYTE mTouchTimeCount = 0;

	if(mTouch_ON)
	{
	 	//if(mTouchTimeCount > 100)
		//{
		   
		//	mTouchTimeCount = 0;
//			SwitchIOADCVals();
		if(mTouchChCount >= 2)
		{
			//read ch
			/* Scans the CTMU channel for ADC voltage. It updates the "curRawData" and "actualValue" buffers. */
	   		mTouchCapPhy_ReadCTMU(ScanChannels[mTouchChCount]);  //NK_DIRKEY

			/* Periodically average the channel data based on User configuration. */
			mTouchCapPhy_AverageData(ScanChannels[mTouchChCount]); 	//NK_DIRKEY	
			

			mTouchChCount = 0;
			dataReadyCTMU = 1;
		}
		else
		{
			//read ch
			/* Scans the CTMU channel for ADC voltage. It updates the "curRawData" and "actualValue" buffers. */
	   		mTouchCapPhy_ReadCTMU(ScanChannels[mTouchChCount]);  //NK_DIRKEY

			/* Periodically average the channel data based on User configuration. */
			mTouchCapPhy_AverageData(ScanChannels[mTouchChCount]); 	//NK_DIRKEY	
			
			mTouchChCount++;
		}
	
		
	}
}










