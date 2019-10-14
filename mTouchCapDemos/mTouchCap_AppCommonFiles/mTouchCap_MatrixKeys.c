
/*****************************************************************************
 * FileName:        mTouchCap_MatrixKeys.c
 * Dependencies:
 * Processor:       PIC18, PIC24
 * Compiler:       	C18, C30
 * Linker:          MPLAB LINK30
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
 * BDB         					26 Jun 2008 			First Version for CTMU EVAL Board
 * SB						22 Oct 2008			Updates to First Version
 * Naveen. M				      14 Apr 2009			Version 0.1 Initial Draft
 * Sasha. M	/ Naveen. M		4 May 2009  			Version 0.2 Updates
 * Bruce Bahn					10 Nov 2009  			Version 0.3 Updates
 * Sasha. M	/ Naveen. M		11 Nov 2009  			Version 1.0 Release
 *****************************************************************************/

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Includes	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
//#include	"mTouchCap_Config.h"
#include "mTouchCap_MatrixKeys.h"

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Variables	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */





/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Function Prototypes  ~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
 #ifdef	USE_MATRIX_KEYS
CHAR mTouchCapApp_IsMatrixKey (WORD ChannelNumber);
#endif


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Declarations  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */






/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Function Definitions  ~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/*****************************************************************************************
  Function:
          CHAR mTouchCapApp_IsMatrixKey (WORD ChannelNumber)

  PreCondition   :    All the channel numbers for Matrix key are defined in Config.h.

  Input:
    ChannelNumber -  The Channel number to be verified for Matrix key use.

  Return:
   	definedMatrixKey	YES	-- If the passed channel is a Matrix key for the application (Matrix key board)
						NO  -- Otherwise.
  Side Effects:
    None

  Description: Function verifies whether the passed channel is used for Matrix key board in the application.

  *****************************************************************************************/
 #ifdef	USE_MATRIX_KEYS
CHAR mTouchCapApp_IsMatrixKey (WORD ChannelNumber)
{
	CHAR definedMatrixKey = NO;

	if( (ChannelNumber == KEYROW1) || (ChannelNumber == KEYROW2) || (ChannelNumber == KEYROW3) ||
		(ChannelNumber == KEYROW4) || (ChannelNumber == KEYCOL1) || (ChannelNumber == KEYCOL2) ||
		(ChannelNumber == KEYCOL3) )/* Add any more keys used for Matrix key board. */
	{
		definedMatrixKey = YES;
	}

	return definedMatrixKey;
}
#endif


/********************************************************************
 * Function		:    void mTouchCapApp_DemoMatrixKeys(void)
 *
 * PreCondition	:    None
 *
 * Input			:    None
 *
 * Output			:    None
 *
 * Side Effects		:    None
 *
 * Overview		:  Demonstrates the APIs of Matrix keys.
 *
 *
 *
 *
 *
 * Note			:
 *******************************************************************/
#ifdef	USE_MATRIX_KEYS
void mTouchCapApp_DemoMatrixKeys(void)
{
/***************************************************************************
--------------- Demo of API "mTouchCapAPI_GetStatusMatrixButton" -----------------------		
Get the status of a Matrix key press using the API "mTouchCapAPI_GetStatusMatrixButton" whose Row and Column 
channel numbers is mentioned. . 
***************************************************************************/
/* Check if a direct key is pressed which is connected at the mentioned channel */
			if ( KEY_PRESSED == mTouchCapAPI_GetStatusMatrixButton(KEYROW1,KEYCOL1))
			{
				// Illuminate Keypad LEDs
				mTouchCapApp_DisplayMatrixKeyLEDs(LED_8);
			}
			else 		/* Check if a direct key is pressed which is connected at the mentioned channel */
			if ( KEY_PRESSED == mTouchCapAPI_GetStatusMatrixButton(KEYROW1,KEYCOL2))
			{
				// Illuminate Keypad LEDs
				mTouchCapApp_DisplayMatrixKeyLEDs(LED_4);
			}

			else 		/* Check if a direct key is pressed which is connected at the mentioned channel */
			if ( KEY_PRESSED == mTouchCapAPI_GetStatusMatrixButton(KEYROW1,KEYCOL3))
			{
				// Illuminate Keypad LEDs
				mTouchCapApp_DisplayMatrixKeyLEDs(LED_12);
			}
			else 		/* Check if a direct key is pressed which is connected at the mentioned channel */
			if ( KEY_PRESSED == mTouchCapAPI_GetStatusMatrixButton(KEYROW2,KEYCOL1))
			{
				// Illuminate Keypad LEDs
				mTouchCapApp_DisplayMatrixKeyLEDs(LED_9);
			}
			else 		/* Check if a direct key is pressed which is connected at the mentioned channel */
			if ( KEY_PRESSED == mTouchCapAPI_GetStatusMatrixButton(KEYROW2,KEYCOL2))
			{
				// Illuminate Keypad LEDs
				mTouchCapApp_DisplayMatrixKeyLEDs(LED_5);
			}
			else 		/* Check if a direct key is pressed which is connected at the mentioned channel */
			if ( KEY_PRESSED == mTouchCapAPI_GetStatusMatrixButton(KEYROW2,KEYCOL3))
			{
				// Illuminate Keypad LEDs
				mTouchCapApp_DisplayMatrixKeyLEDs(LED_1);
			}
			else 		/* Check if a direct key is pressed which is connected at the mentioned channel */
			if ( KEY_PRESSED == mTouchCapAPI_GetStatusMatrixButton(KEYROW3,KEYCOL1))
			{
				// Illuminate Keypad LEDs
				mTouchCapApp_DisplayMatrixKeyLEDs(LED_10);
			}
			else 		/* Check if a direct key is pressed which is connected at the mentioned channel */
			if ( KEY_PRESSED == mTouchCapAPI_GetStatusMatrixButton(KEYROW3,KEYCOL2))
			{
				// Illuminate Keypad LEDs
				mTouchCapApp_DisplayMatrixKeyLEDs(LED_6);
			}
			else 		/* Check if a direct key is pressed which is connected at the mentioned channel */
			if ( KEY_PRESSED == mTouchCapAPI_GetStatusMatrixButton(KEYROW3,KEYCOL3))
			{
				// Illuminate Keypad LEDs
				mTouchCapApp_DisplayMatrixKeyLEDs(LED_2);
			}
			else 		/* Check if a direct key is pressed which is connected at the mentioned channel */
			if ( KEY_PRESSED == mTouchCapAPI_GetStatusMatrixButton(KEYROW4,KEYCOL1))
			{
				// Illuminate Keypad LEDs
				mTouchCapApp_DisplayMatrixKeyLEDs(LED_11);
			}
			else 		/* Check if a direct key is pressed which is connected at the mentioned channel */
			if ( KEY_PRESSED == mTouchCapAPI_GetStatusMatrixButton(KEYROW4,KEYCOL2))
			{
				// Illuminate Keypad LEDs
				mTouchCapApp_DisplayMatrixKeyLEDs(LED_7);
			}
			else 		/* Check if a direct key is pressed which is connected at the mentioned channel */
			if ( KEY_PRESSED == mTouchCapAPI_GetStatusMatrixButton(KEYROW4,KEYCOL3))
			{
				// Illuminate Keypad LEDs
				mTouchCapApp_DisplayMatrixKeyLEDs(LED_3);
			}			
			else		mTouchCapApp_DisplayMatrixKeyLEDs(LED_NIL);  
}
#endif


