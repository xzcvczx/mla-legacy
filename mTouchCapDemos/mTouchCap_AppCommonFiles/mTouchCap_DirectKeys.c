
/*****************************************************************************
 * FileName:        	mTouchCap_DirectKeys.c
 * Dependencies:
 * Processor:       	PIC18, PIC24
 * Compiler:       	C18, C30
 * Linker:          	MPLAB LINK30
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
 * Author               	Date        	Comment
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * BDB         					26 Jun 2008 			First Version for CTMU EVAL Board
 * SB						22 Oct 2008			Updates to First Version
 * Naveen. M				      14 Apr 2009			Version 0.1 Initial Draft
 * Sasha. M	/ Naveen. M		4 May 2009  			Version 0.2 Updates
 * Sasha. M	/ Naveen. M		11 Nov 2009  			Version 1.0 Release
 *****************************************************************************/


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Includes	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
//#include	"mTouchCap_Config.h"
#include "mTouchCap_DirectKeys.h"




/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Variables	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */





/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Function Prototypes  ~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
#ifdef	USE_DIRECT_KEYS
CHAR mTouchCapApp_IsDirectKey (WORD ChannelNumber);
#endif


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Declarations  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */






/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Function Definitions  ~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/*****************************************************************************************
  Function:
          CHAR mTouchCapApp_IsDirectKey (WORD ChannelNumber)

  PreCondition   :    All the channel numbers for Direct key are defined in Config.h.

  Input:
    ChannelNumber -  The Channel number to be verified for direct key use.

  Return:
   	definedDirectKey	YES	-- If the passed channel is a defined key for the application (Direct key board)
						NO  -- Otherwise.
  Side Effects:
    None

  Description: Function verifies whether the passed channel is used for Direct key board in the application.

  *****************************************************************************************/
#ifdef	USE_DIRECT_KEYS
CHAR mTouchCapApp_IsDirectKey (WORD ChannelNumber)
{
	CHAR definedDirectKey = NO;

	if( (ChannelNumber == DIRECTKEY1) || (ChannelNumber == DIRECTKEY2) || (ChannelNumber == DIRECTKEY3) ||
		(ChannelNumber == DIRECTKEY4) || (ChannelNumber == DIRECTKEY5) || (ChannelNumber == DIRECTKEY6) ||
		(ChannelNumber == DIRECTKEY7) || (ChannelNumber == DIRECTKEY8) ) /* Add any more keys used for DIRECT key board. */
	{	
		definedDirectKey = YES;
	}

	return definedDirectKey;
}
#endif



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
#ifdef USE_DIRECT_KEYS
void mTouchCapApp_DemoDirectKeys(void)
{

 /***************************************************************************
--------------- Demo of API "mTouchCapAPI_GetStatusDirectButton" -----------------------		
Get the status of a Direct key press using the API "mTouchCapAPI_GetStatusDirectButton" whose channel 
number is mentioned. . 
***************************************************************************/
    /* Check if the direct key is pressed which is connected at the mentioned channel */
    if(KEY_PRESSED == mTouchCapAPI_GetStatusDirectButton(DIRECTKEY1))
    {

        // Illuminate Keypad LEDs
        mTouchCapApp_SetEvalBoardLEDs(LED_8);
    }

    /* Check if the direct key is pressed which is connected at the mentioned channel */
    else if(KEY_PRESSED == mTouchCapAPI_GetStatusDirectButton(DIRECTKEY2))
    {

        // Illuminate Keypad LEDs
        mTouchCapApp_SetEvalBoardLEDs(LED_9);
    }

    /* Check if the direct key is pressed which is connected at the mentioned channel */
    else if(KEY_PRESSED == mTouchCapAPI_GetStatusDirectButton(DIRECTKEY3))
    {

        // Illuminate Keypad LEDs
        mTouchCapApp_SetEvalBoardLEDs(LED_10);
    }

    /* Check if the direct key is pressed which is connected at the mentioned channel */
    else if(KEY_PRESSED == mTouchCapAPI_GetStatusDirectButton(DIRECTKEY4))
    {

        // Illuminate Keypad LEDs
        mTouchCapApp_SetEvalBoardLEDs(LED_11);
    }

    /* Check if the direct key is pressed which is connected at the mentioned channel */
    else if(KEY_PRESSED == mTouchCapAPI_GetStatusDirectButton(DIRECTKEY5))
    {

        // Illuminate Keypad LEDs
        mTouchCapApp_SetEvalBoardLEDs(LED_12);
    }

    /* Check if the direct key is pressed which is connected at the mentioned channel */
    else if(KEY_PRESSED == mTouchCapAPI_GetStatusDirectButton(DIRECTKEY6))
    {

        // Illuminate Keypad LEDs
        mTouchCapApp_SetEvalBoardLEDs(LED_13);
    }

    /* Check if the direct key is pressed which is connected at the mentioned channel */
    else if(KEY_PRESSED == mTouchCapAPI_GetStatusDirectButton(DIRECTKEY7))
    {

        // Illuminate Keypad LEDs
        mTouchCapApp_SetEvalBoardLEDs(LED_14);
    }

    /* Check if the direct key is pressed which is connected at the mentioned channel */
    else if(KEY_PRESSED == mTouchCapAPI_GetStatusDirectButton(DIRECTKEY8))
    {

        // Illuminate Keypad LEDs
        mTouchCapApp_SetEvalBoardLEDs(LED_15);
    }

    else
   {
		mTouchCapApp_SetEvalBoardLEDs(LED_NIL );	 
   }
}

#endif


