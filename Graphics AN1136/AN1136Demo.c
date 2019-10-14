/*****************************************************************************
 * Microchip Graphics Library Demo Application
 * This program shows how to use the Graphics Objects Layer.
 *****************************************************************************
 * FileName:        AN1136Demo.c
 * Dependencies:    AN1136Demo.h
 * Processor:       PIC24, PIC32
 * Compiler:       	MPLAB C30 V3.00, MPLAB C32
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
 * Paolo A. Tamayo		07/20/07	...
 *****************************************************************************/

#include "AN1136Demo.h"

// Configuration bits
#ifdef __PIC32MX__
#pragma config FPLLODIV = DIV_1, FPLLMUL = MUL_18, FPLLIDIV = DIV_2, FWDTEN = OFF, FCKSM = CSECME, FPBDIV = DIV_8
#pragma config OSCIOFNC = ON, POSCMOD = XT, FSOSCEN = ON, FNOSC = PRIPLL
#pragma config CP = OFF, BWP = OFF, PWP = OFF
#else
	#if defined (__PIC24FJ256GA110__)
        _CONFIG1( JTAGEN_OFF & GCP_OFF & GWRP_OFF & COE_OFF & FWDTEN_OFF & ICS_PGx2) 
        _CONFIG2( IESO_OFF & FCKSM_CSDCMD & OSCIOFNC_OFF & POSCMOD_HS & FNOSC_PRIPLL & IOL1WAY_OFF)
    #endif	
	#if defined (__PIC24FJ128GA010__)
		_CONFIG2(FNOSC_PRIPLL & POSCMOD_XT) // Primary XT OSC with PLL
		_CONFIG1(JTAGEN_OFF & FWDTEN_OFF)   // JTAG off, watchdog timer off
	#endif	
#endif

/////////////////////////////////////////////////////////////////////////////
//                              OBJECT'S IDs
/////////////////////////////////////////////////////////////////////////////

#define ID_BTN1 	    10
#define ID_BTN2     	11
#define ID_SLD1	    	20

/////////////////////////////////////////////////////////////////////////////
//                            IMAGES USED
/////////////////////////////////////////////////////////////////////////////
extern const BITMAP_FLASH redRightArrow;
extern const BITMAP_FLASH redLeftArrow;

/////////////////////////////////////////////////////////////////////////////
//                                  MAIN
/////////////////////////////////////////////////////////////////////////////
GOL_SCHEME	*altScheme;                 // alternative style scheme
SLIDER 		*pSld;					    // pointer to the slider object
WORD    	update = 0;				    // variable to update customized graphics

int main(void){

	GOL_MSG msg;        				// GOL message structure to interact with GOL

/////////////////////////////////////////////////////////////////////////////
// ADC Explorer 16 Development Board Errata (work around 2)
// RB15 should be output
/////////////////////////////////////////////////////////////////////////////
	LATBbits.LATB15 = 0;
	TRISBbits.TRISB15 = 0;
/////////////////////////////////////////////////////////////////////////////

#ifdef __PIC32MX__
    INTEnableSystemMultiVectoredInt();
    SYSTEMConfigPerformance(GetSystemClock());	
#endif

#if (GRAPHICS_PICTAIL_VERSION < 3)
    EEPROMInit();   					// initialize Exp.16 EEPROM SPI
    BeepInit();
#else
    SST25Init();       					// initialize GFX3 SST25 flash SPI
#endif

    TouchInit();    					// initialize touch screen
    GOLInit();      					// initialize graphics library & 
    									// create default style scheme for GOL

    // If S3 button on Explorer 16 board is pressed calibrate touch screen
    if(PORTDbits.RD6 == 0){
        TouchCalibration();
        TouchStoreCalibration();
    }

    // If it's a new board (EEPROM_VERSION byte is not programed) calibrate touch screen
#if (GRAPHICS_PICTAIL_VERSION < 3)
    if(GRAPHICS_LIBRARY_VERSION != EEPROMReadWord(ADDRESS_VERSION)){
        TouchCalibration();
        TouchStoreCalibration();
    }
#else
    if(GRAPHICS_LIBRARY_VERSION != SST25ReadWord(ADDRESS_VERSION)){
        TouchCalibration();
        TouchStoreCalibration();
    }
#endif

    // Load touch screen calibration parameters from memory
    TouchLoadCalibration();

    altScheme = GOLCreateScheme(); 		// create alternative style scheme
    altScheme->TextColor0 = BLACK;
    altScheme->TextColor1 = BRIGHTBLUE;

	BtnCreate(	ID_BTN1,	 			// object�s ID
				20, 160, 150, 210,		// object�s dimension
                0,                      // radius of the rounded edge
				BTN_DRAW,				// draw the object after creation
				NULL,					// no bitmap used
				"LEFT",					// use this text
				altScheme);				// use alternative style scheme

	BtnCreate(	ID_BTN2, 
				170, 160, 300, 210,
                0,
				BTN_DRAW,
				NULL,
				"RIGHT",
				altScheme);

	pSld = SldCreate(ID_SLD1,		    // object�s ID
				20, 105, 300, 150,		// object�s dimension
				SLD_DRAW,				// draw the object after creation
				100,					// range
				5,						// page 
				50,						// initial position
				NULL);					// use default style scheme
		
	update = 1;							// to initialize the user graphics

	while(1){
	    
        if (GOLDraw()) {				// Draw GOL object
        	TouchGetMsg(&msg);   		// Get message from touch screen
        	GOLMsg(&msg);        		// Process message

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
WORD GOLMsgCallback(WORD objMsg, OBJ_HEADER* pObj, GOL_MSG* pMsg){
	WORD objectID;
	SLIDER *pSldObj;
	
    objectID = GetObjID(pObj);
	
	if (objectID == ID_BTN1) {
		if (objMsg == BTN_MSG_PRESSED) {				// check if button is pressed

 			BtnSetBitmap(pObj, (void*)&redLeftArrow);          // set bitmap to show
			SetState(pObj, BTN_TEXTRIGHT);				// move the text to the right

 			pSldObj = (SLIDER*)GOLFindObject(ID_SLD1);	// find slider pointer
			SldDecPos(pSldObj);							// decrement the slider position
			SetState(pSldObj, SLD_DRAW_THUMB);			// redraw only the thumb
		}
		else {
			 BtnSetBitmap(pObj, NULL);					// remove the bitmap
			 ClrState(pObj, BTN_TEXTRIGHT);				// place the text back in the middle
		}
		update = 1;
	}

	if (objectID == ID_BTN2) {
		if (objMsg == BTN_MSG_PRESSED) {

 			BtnSetBitmap(pObj, (void*)&redRightArrow);  // set bitmap to show
			SetState(pObj, BTN_TEXTLEFT);				// move the text to the left

			pSldObj = (SLIDER*)GOLFindObject(ID_SLD1);	// find slider pointer
			SldIncPos(pSldObj);							// increment the slider position
			SetState(pSldObj, SLD_DRAW_THUMB);			// redraw only the thumb
		}
		else {
			 BtnSetBitmap(pObj, NULL);					// remove the bitmap
			 ClrState(pObj, BTN_TEXTLEFT);				// place the text back in the middle
		}
		update = 1;
	}
	
	if (objectID == ID_SLD1) {
		if ((objMsg == SLD_MSG_INC) || (objMsg == SLD_MSG_DEC)) {
			update = 1;
		}
	}
	return 1;
}

/////////////////////////////////////////////////////////////////////////////
// Function: WORD GOLDrawCallback()
// Output: if the function returns non-zero the draw control will be passed to GOL
// Overview: it's a user defined function. GOLDraw() function calls it each
//           time when GOL objects drawing is completed. User drawing should be done here.
//           GOL will not change color, line type and clipping region settings while 
//           this function returns zero.
/////////////////////////////////////////////////////////////////////////////
WORD GOLDrawCallback(){

WORD value, y, x;							// variables for the slider position
static WORD prevValue = 0;

	if (update) {
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
		if (value < prevValue) {
			while (prevValue > value) {
				// get the height of the bar to be removed
				y = (prevValue*prevValue)/110;

				// bars are drawn every 6 pixels with width = 4 pixels.
				x = (prevValue*2);
				x = x - (x%6);

				// draw a BLACK colored bar to remove the current bar drawn
				Bar(x+60,100-y, x+64,100);
				// decrement by three since we are drawing every 6 pixels
				prevValue -= 3;
			}
		}
		// Draw bars if there the new value is greater 
		// than the previous
		else {
			while (prevValue < value) {
				if (prevValue < 60) {
					SetColor(BRIGHTGREEN); 	
				} else if ((prevValue < 80) && (prevValue >= 60)) {
					SetColor(BRIGHTYELLOW); 	
				} else if (prevValue >= 80) {
					SetColor(BRIGHTRED); 	
				}
				// get the height of the bar to be drawn
				y = (prevValue*prevValue)/110;

				// bars are drawn every 6 pixels with width = 4 pixels.
				x = (prevValue*2);
				x = x - (x%6);

				// draw a bar to increase in value
				Bar(x+60,100-y, x+64,100);
				// increment by three since we are drawing every 6 pixels
				prevValue += 3;
			}
		}
		// prevValue will have the current value after drawing or removing bars.
		// reset the update flag
		update = 0;
	}

    return 1; 				
}
