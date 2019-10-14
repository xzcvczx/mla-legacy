
/*****************************************************************************
 * FileName:        mTouchCap_MatrixKeys.c
 * Dependencies:
 * Processor:       PIC24
 * Compiler:       	C30
 * Linker:          MPLINK,MPLAB LINK30
 * Company:         Microchip Technology Incorporated
 *
 * Software License Agreement
 *
 * Copyright © 2009 Microchip Technology Inc.  
 * Microchip licenses this software to you solely for use with Microchip products, according to the terms of the  
 * accompanying click-wrap software license.  Microchip and its licensors retain all right, title and interest in 
 * and to the software.  All rights reserved. This software and any accompanying information is for suggestion only.  
 * It shall not be deemed to modify Microchip’s standard warranty for its products.  It is your responsibility to ensure 
 * that this software meets your requirements.

 * SOFTWARE IS PROVIDED “AS IS” WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESS OR IMPLIED, 
 * INCLUDING WITHOUT LIMITATION, ANY WARRANTY OF MERCHANTABILITY, TITLE, NON-INFRINGEMENT 
 * AND FITNESS FOR A PARTICULAR PURPOSE. IN NO EVENT WILL MICROCHIP OR ITS LICENSORS BE LIABLE 
 * FOR ANY DIRECT OR INDIRECT DAMAGES OR EXPENSES INCLUDING BUT NOT LIMITED TO INCIDENTAL, 
 * SPECIAL, INDIRECT, PUNITIVE OR CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, 
 * COST OF PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY OR SERVICES, OR ANY CLAIMS BY THIRD PARTIES 
 * (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF), OR OTHER SIMILAR COSTS.  
 * The aggregate and cumulative liability of Microchip and its licensors for damages related to the use of the software 
 * will in no event exceed $1000 or the amount you paid Microchip for the software, whichever is greater.

 * MICROCHIP PROVIDES THIS SOFTWARE CONDITIONALLY UPON YOUR ACCEPTANCE OF THESE TERMS AND 
 * THE TERMS OF THE ACCOMPANYING CLICK-WRAP SOFTWARE LICENSE.
 * 
 *
 * Author               			Date        			Comment
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * BDB         						26 Jun 2008 			First Version for CTMU EVAL Board
 * SB								22 Oct 2008				Updates to First Version
 * Naveen. M				      	14 Apr 2009				Version 0.1 Initial Draft
 * Sasha. M	/ Naveen. M				4 May 2009  			Version 0.2 Updates
 * Bruce Bohn						10 Nov 2009  			Version 0.3 Updates
 * Sasha. M	/ Naveen. M				11 Nov 2009  			Version 1.0 Release
 * Sasha. M	/ Nithin. 				10 April 2010  			Version 1.20 Release
 *****************************************************************************/

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Includes	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
#include "mTouchCap_MatrixKeys.h"

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Variables	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

extern BYTE Decode_Method_Used;



/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Function Prototypes  ~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
 #ifdef	USE_MATRIX_KEYS
CHAR mTouchCapApp_IsMatrixKey (WORD ChannelNumber);
extern void mTouchCapApp_CreateMatrixKeys(void);
#endif


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~Instantiate or create an objects for MatrixKey structure*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

#ifdef USE_MATRIX_KEYS
MatrixKey Matrix_Key0;
MatrixKey Matrix_Key1;
MatrixKey Matrix_Key2;
MatrixKey Matrix_Key3;
MatrixKey Matrix_Key4;
MatrixKey Matrix_Key5;
MatrixKey Matrix_Key6;
MatrixKey Matrix_Key7;
MatrixKey Matrix_Key8;
MatrixKey Matrix_Key9;
MatrixKey Matrix_Key10;
MatrixKey Matrix_Key11;
#endif

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Function Definitions  ~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

/********************************************************************
 * Function			:    void mTouchCapApp_CreateMatrixKeys(void)
 *
 * PreCondition		:    None
 *
 * Input			:    None
 *
 * Output			:    None
 *
 * Side Effects		:    None
 *
 * Overview			: 	This function will setup the channels and other related properties 
 *				  	 	that are associated with the corresonding Direct key.
 *
 * Note			:
 *******************************************************************/
 #ifdef USE_MATRIX_KEYS
void mTouchCapApp_CreateMatrixKeys(void)
{

/**************************************************************************************************************
--------------- Demo of API "mTouchCapAPI_SetUpChannelMatrixKey" -----------------------		
set up the channels of the matrix keys using API "mTouchCapAPI_GetStatusMatrixButton" whose Row and Column 
channel numbers is mentioned. . 
**************************************************************************************************************/
	//objects of Matrix key structure

    mTouchCapAPI_SetUpChannelMatrixKey( &Matrix_Key0,MATRIXKEY0_ROW_CHANNEL,MATRIXKEY0_COLUMN_CHANNEL,DEFAULT_TRIP_VALUE,DECODE_METHOD_PRESS_ASSERT,FILTER_METHOD_SLOWAVERAGE);
    mTouchCapAPI_SetUpChannelMatrixKey( &Matrix_Key1,MATRIXKEY1_ROW_CHANNEL,MATRIXKEY1_COLUMN_CHANNEL,DEFAULT_TRIP_VALUE,DECODE_METHOD_PRESS_ASSERT,FILTER_METHOD_SLOWAVERAGE);
	mTouchCapAPI_SetUpChannelMatrixKey( &Matrix_Key2,MATRIXKEY2_ROW_CHANNEL,MATRIXKEY2_COLUMN_CHANNEL,DEFAULT_TRIP_VALUE,DECODE_METHOD_PRESS_ASSERT,FILTER_METHOD_SLOWAVERAGE);
    mTouchCapAPI_SetUpChannelMatrixKey( &Matrix_Key3,MATRIXKEY3_ROW_CHANNEL,MATRIXKEY3_COLUMN_CHANNEL,DEFAULT_TRIP_VALUE,DECODE_METHOD_PRESS_ASSERT,FILTER_METHOD_SLOWAVERAGE);
	mTouchCapAPI_SetUpChannelMatrixKey( &Matrix_Key4,MATRIXKEY4_ROW_CHANNEL,MATRIXKEY4_COLUMN_CHANNEL,DEFAULT_TRIP_VALUE,DECODE_METHOD_PRESS_ASSERT,FILTER_METHOD_SLOWAVERAGE);
    mTouchCapAPI_SetUpChannelMatrixKey( &Matrix_Key5,MATRIXKEY5_ROW_CHANNEL,MATRIXKEY5_COLUMN_CHANNEL,DEFAULT_TRIP_VALUE,DECODE_METHOD_PRESS_ASSERT,FILTER_METHOD_SLOWAVERAGE);
	mTouchCapAPI_SetUpChannelMatrixKey( &Matrix_Key6,MATRIXKEY6_ROW_CHANNEL,MATRIXKEY6_COLUMN_CHANNEL,DEFAULT_TRIP_VALUE,DECODE_METHOD_PRESS_ASSERT,FILTER_METHOD_SLOWAVERAGE);
    mTouchCapAPI_SetUpChannelMatrixKey( &Matrix_Key7,MATRIXKEY7_ROW_CHANNEL,MATRIXKEY7_COLUMN_CHANNEL,DEFAULT_TRIP_VALUE,DECODE_METHOD_PRESS_ASSERT,FILTER_METHOD_SLOWAVERAGE);
	mTouchCapAPI_SetUpChannelMatrixKey( &Matrix_Key8,MATRIXKEY8_ROW_CHANNEL,MATRIXKEY8_COLUMN_CHANNEL,DEFAULT_TRIP_VALUE,DECODE_METHOD_PRESS_ASSERT,FILTER_METHOD_SLOWAVERAGE);
    mTouchCapAPI_SetUpChannelMatrixKey( &Matrix_Key9,MATRIXKEY9_ROW_CHANNEL,MATRIXKEY9_COLUMN_CHANNEL,DEFAULT_TRIP_VALUE,DECODE_METHOD_PRESS_ASSERT,FILTER_METHOD_SLOWAVERAGE);
	mTouchCapAPI_SetUpChannelMatrixKey( &Matrix_Key10,MATRIXKEY10_ROW_CHANNEL,MATRIXKEY10_COLUMN_CHANNEL,DEFAULT_TRIP_VALUE,DECODE_METHOD_PRESS_ASSERT,FILTER_METHOD_SLOWAVERAGE);
    mTouchCapAPI_SetUpChannelMatrixKey( &Matrix_Key11,MATRIXKEY11_ROW_CHANNEL,MATRIXKEY11_COLUMN_CHANNEL,DEFAULT_TRIP_VALUE,DECODE_METHOD_PRESS_ASSERT,FILTER_METHOD_SLOWAVERAGE);
}	
#endif

/********************************************************************
 * Function			:    void mTouchCapApp_DemoMatrixKeys(void)
 *
 * PreCondition		:    None
 *
 * Input			:    None
 *
 * Output			:    None
 *
 * Side Effects		:    None
 *
 * Overview			:    Demonstrates the APIs of Matrix keys.
 *
 * Note				:
 *******************************************************************/
#ifdef	USE_MATRIX_KEYS
void mTouchCapApp_DemoMatrixKeys(void)
{


/**************************************************************************************************************
--------------- Demo of API "mTouchCapAPI_GetStatusMatrixButton" -----------------------		
Get the status of a Matrix key press using the API "mTouchCapAPI_GetStatusMatrixButton" whose Row and Column 
channel numbers is mentioned. . 
****************************************************************************************************************/
/* Check if a Matrix key is pressed which is connected at the mentioned channel */
		
			if ( KEY_PRESSED == mTouchCapAPI_GetStatusMatrixButton(&Matrix_Key0))
			{
				// Illuminate Keypad LEDs
				mTouchCapApp_DisplayMatrixKeyLEDs(LED_1);
			}
				/* Check if the Matrix key is pressed l */
			else if ( KEY_PRESSED == mTouchCapAPI_GetStatusMatrixButton(&Matrix_Key1))
			{
				// Illuminate Keypad LEDs
				mTouchCapApp_DisplayMatrixKeyLEDs(LED_2);
			}
			 		/* Check if the Matrix key is pressed l */
			else if ( KEY_PRESSED == mTouchCapAPI_GetStatusMatrixButton(&Matrix_Key2))
			{
				// Illuminate Keypad LEDs
				mTouchCapApp_DisplayMatrixKeyLEDs(LED_3);
			}		
			 		/* Check if the Matrix key is pressed l */
			else if ( KEY_PRESSED == mTouchCapAPI_GetStatusMatrixButton(&Matrix_Key3))
			{
				// Illuminate Keypad LEDs
				mTouchCapApp_DisplayMatrixKeyLEDs(LED_4);
			}
			 		/* Check if the Matrix key is pressed l */
			else if ( KEY_PRESSED == mTouchCapAPI_GetStatusMatrixButton(&Matrix_Key4))
			{
				// Illuminate Keypad LEDs
				mTouchCapApp_DisplayMatrixKeyLEDs(LED_5);
			}	
			 		/* Check if the Matrix key is pressed l */
			else if ( KEY_PRESSED == mTouchCapAPI_GetStatusMatrixButton(&Matrix_Key5))
			{
				// Illuminate Keypad LEDs
				mTouchCapApp_DisplayMatrixKeyLEDs(LED_6);
			}
					/* Check if the Matrix key is pressed l */
			else if ( KEY_PRESSED == mTouchCapAPI_GetStatusMatrixButton(&Matrix_Key6))
			{
				// Illuminate Keypad LEDs
				mTouchCapApp_DisplayMatrixKeyLEDs(LED_7);
			}	
			 		/* Check if the Matrix key is pressed l */
			else if ( KEY_PRESSED == mTouchCapAPI_GetStatusMatrixButton(&Matrix_Key7))
			{
				// Illuminate Keypad LEDs
				mTouchCapApp_DisplayMatrixKeyLEDs(LED_8);
			}
			 		/* Check if the Matrix key is pressed l */
			else if ( KEY_PRESSED == mTouchCapAPI_GetStatusMatrixButton(&Matrix_Key8))
			{
				// Illuminate Keypad LEDs
				mTouchCapApp_DisplayMatrixKeyLEDs(LED_9);
			}
			 		/* Check if the Matrix key is pressed l */
			else if ( KEY_PRESSED == mTouchCapAPI_GetStatusMatrixButton(&Matrix_Key9))
			{
				// Illuminate Keypad LEDs
				mTouchCapApp_DisplayMatrixKeyLEDs(LED_10);
			}
			 		/* Check if the Matrix key is pressed l */
			else if ( KEY_PRESSED == mTouchCapAPI_GetStatusMatrixButton(&Matrix_Key10))
			{
				// Illuminate Keypad LEDs
				mTouchCapApp_DisplayMatrixKeyLEDs(LED_11);
			}	
			 		/* Check if the Matrix key is pressed l */
			else if ( KEY_PRESSED == mTouchCapAPI_GetStatusMatrixButton(&Matrix_Key11))
			{
				// Illuminate Keypad LEDs
				mTouchCapApp_DisplayMatrixKeyLEDs(LED_12);
			}													
			else		
			{
				if(Decode_Method_Used != DECODE_METHOD_PRESS_AND_RELEASE)
				mTouchCapApp_DisplayMatrixKeyLEDs(LED_NIL);		
		    }   
			
			
}
#endif


