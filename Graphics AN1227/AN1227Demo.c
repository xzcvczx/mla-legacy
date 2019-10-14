/*****************************************************************************
 * Microchip Graphics Library Demo Application
 * This program shows how to use a keyboard.
 *****************************************************************************
 * FileName:        AN1227Demo.c
 * Dependencies:    AN1227Demo.h
 * Processor:       PIC24, PIC32
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
 * Anton Alkhimenok		07/30/08	...
 *****************************************************************************/

#include "AN1227Demo.h"

// Configuration bits
#ifdef __PIC32MX__
#pragma config FPLLODIV = DIV_1, FPLLMUL = MUL_18, FPLLIDIV = DIV_2, FWDTEN = OFF, FCKSM = CSECME, FPBDIV = DIV_8
#pragma config OSCIOFNC = ON, POSCMOD = XT, FSOSCEN = ON, FNOSC = PRIPLL
#pragma config CP = OFF, BWP = OFF, PWP = OFF
#else
_CONFIG2(FNOSC_PRIPLL & POSCMOD_XT) // Primary XT OSC with PLL
_CONFIG1(JTAGEN_OFF & FWDTEN_OFF)   // JTAG off, watchdog timer off
#endif

/////////////////////////////////////////////////////////////////////////////
//                              OBJECT'S IDs
/////////////////////////////////////////////////////////////////////////////
#define BUTTON1_ID 1111 // button unique ID
#define BUTTON2_ID 2222 // button unique ID
#define BUTTON3_ID 3333 // button unique ID

/////////////////////////////////////////////////////////////////////////////
//                                  MAIN
/////////////////////////////////////////////////////////////////////////////
int main(void)
{
GOL_MSG msg; // message interface structure, should be
             // filled by the keyboard driver and
             // passed to the message manager

OBJ_HEADER* pFocusedObj; // temporary variable for the widget
                         // receiving the keyboard focus

BYTE previousKey1State; // previous state of the button 1
BYTE previousKey2State; // previous state of the button 2

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

// initialize the keyboard’s keys
TRISDbits.TRISD6 = 1; // set port RD6 to be an input
previousKey1State = PORTDbits.RD6; // previous state equals the current state
TRISDbits.TRISD13 = 1; // set port RD13 to be an input
previousKey2State = PORTDbits.RD13; // previous state equals the current state

	GOLInit(); // initialize the graphics library
 
	// create button widgets

	BtnCreate(
		BUTTON1_ID, // button unique ID
		10,40, // left, top corner coordinates
		110,90, // right, bottom corner
		0, // corner radius is zero, it’s a square button
		BTN_DRAW, // will be dislayed after creation
		NULL, // no bitmap
		"Released", // text for released state
		NULL // default color scheme is used
	);

	BtnCreate(
		BUTTON2_ID, // button unique ID
		10,100, // left, top corner coordinates
		110,150, // right, bottom corner
		0, // corner radius is zero, it’s a square button
		BTN_DRAW, // will be dislayed after creation
		NULL, // no bitmap
		"Button 2", // text
		NULL // default color scheme is used
	);

	BtnCreate(
		BUTTON3_ID, // button unique ID
		10,160, // left, top corner coordinates
		110,210, // right, bottom corner
		0, // corner radius is zero, it’s a square button
		BTN_DRAW|BTN_DISABLED, // will be dislayed and disabled after creation
		NULL, // no bitmap
		"Disabled", // text
		NULL // default color scheme is used
	);

	pFocusedObj = NULL; // there are no widgets in focus

	while(1)
	{
		if(GOLDraw()) // drawing manager to display widgets
		{
			// Keyboard driver
			if(GOLGetFocus() != NULL) // if there’s a widget in focus send a message
			{
				// check if the button has changed its state
				if(PORTDbits.RD6 != previousKey1State)
				{
					if(previousKey1State)
					{
						// if RD6 equals zero it means the button is pressed
						msg.type = TYPE_KEYBOARD;
						msg.uiEvent = EVENT_KEYSCAN;
						// the focused button will receive the message
						msg.param1 = GetObjID(GOLGetFocus());
						msg.param2 = SCAN_CR_PRESSED;
					}else{
						// if RD6 equals one it means the button is released
						msg.type = TYPE_KEYBOARD;
						msg.uiEvent = EVENT_KEYSCAN;
						// the focused button will receive the message
						msg.param1 = GetObjID(GOLGetFocus());
						msg.param2 = SCAN_CR_RELEASED;
					} // end of else

					// state of the button was changed
					previousKey1State = ! previousKey1State;

					// pass the message to the graphics ibrary
					GOLMsg(&msg);
					continue;
				} // end of if
			} // end of if

			// check if the button has changed its state
			if(PORTDbits.RD13 != previousKey2State)
			{
				if(previousKey2State)
				{
					// if RD13 equals zero it means the button is pressed
					// get the object can be focused next
					pFocusedObj = GOLGetFocusNext();

					// move focus
					GOLSetFocus(pFocusedObj);
				}else{

					// if RD13 equals one it means the button is released
				} // end of else

				// state of the button was changed
				previousKey2State = ! previousKey2State;

				// pass the message to the graphics library
				GOLMsg(&msg);
			} // end of if
		} // end of if
	} // end of while

	return 0;

} // end of main

/////////////////////////////////////////////////////////////////////////////
// Function: WORD GOLMsgCallback(WORD objMsg, OBJ_HEADER* pObj, GOL_MSG* pMsg)
// Input: objMsg - translated message for the object,
//        pObj - pointer to the object,
//        pMsg - pointer to the non-translated, raw GOL message 
// Output: if the function returns non-zero the message will be processed by default
// Overview: it's a user defined function. GOLMsg() function calls it each
//           time the valid message for the object received
/////////////////////////////////////////////////////////////////////////////
WORD GOLMsgCallback(WORD objMsg, OBJ_HEADER* pObj, GOL_MSG* pMsg)
{
	// Application should process messages here
	if(GetObjID(pObj) == BUTTON1_ID) // if the button with BUTTON_ID is receiving the message
	{
		if(objMsg == BTN_MSG_PRESSED)
		{
			BtnSetText((BUTTON*)pObj,"Pressed"); // set text for pressed state
		}

		if(objMsg == BTN_MSG_RELEASED)
		{
			BtnSetText((BUTTON*)pObj,"Released"); // set text for released state
		}
	}

	return 1; // process the message by default
} // end of GOLMessageCallback

/////////////////////////////////////////////////////////////////////////////
// Function: WORD GOLDrawCallback()
// Output: if the function returns non-zero the draw control will be passed to GOL
// Overview: it's a user defined function. GOLDraw() function calls it each
//           time when GOL objects drawing is completed. User drawing should be done here.
//           GOL will not change color, line type and clipping region settings while 
//           this function returns zero.
/////////////////////////////////////////////////////////////////////////////
WORD GOLDrawCallback(){

    return 1; // pass drawing control to the library				
} // end of GOLDrawCallback
