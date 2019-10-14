
/*****************************************************************************
 * FileName:        	mTouchCap_DirectKeys.c
 * Dependencies:
 * Processor:       	PIC18, PIC24
 * Compiler:       		C18, C30
 * Linker:          	MPLINK,MPLAB LINK30
 * Company:         	Microchip Technology Incorporated
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
 * Author               		Date        		Comment
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * BDB         					26 Jun 2008 		First Version for CTMU EVAL Board
 * SB							22 Oct 2008			Updates to First Version
 * Naveen. M				    14 Apr 2009			Version 0.1 Initial Draft
 * Sasha. M	/ Naveen. M			4 May 2009  		Version 0.2 Updates
 * Sasha. M	/ Naveen. M			11 Nov 2009  		Version 1.0 Release
 * Sasha. M	/ Nithin. 			10 April 2010  		Version 1.20 Release
 *****************************************************************************/


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Includes	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
#include "Config.h"
#include "mTouchCap_DirectKeys.h"
#include "mTouchCap_CtmuAPI.h"
#include "HardwareProfile.h"


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Variables	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

extern BYTE Decode_Method_Used;



/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Function Prototypes  ~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
#ifdef	USE_DIRECT_KEYS

extern void mTouchCapApp_CreateDirectKeys(void);

#endif
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~Instantiate or create an objects for DirectKey structure*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


#ifdef	USE_DIRECT_KEYS

DirectKey DirectKey1;
DirectKey DirectKey2;
DirectKey DirectKey3;
DirectKey DirectKey4;
DirectKey DirectKey5;
DirectKey DirectKey6;
DirectKey DirectKey7;
DirectKey DirectKey8;

#endif

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Function Definitions  ~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/********************************************************************
 * Function			:   void mTouchCapApp_CreateDirectKeys(void);
 *
 * PreCondition		:   None
 *
 * Input			:   None
 *
 * Output			:   None
 *
 * Side Effects		:   None
 *
 * Overview			:   This function will setup the channels and other related properties 
 *				  	 	that are associated with the corresonding Direct key.
 *
 *
 * Note				:
 *******************************************************************/
 #ifdef	USE_DIRECT_KEYS
 void mTouchCapApp_CreateDirectKeys(void)
 {

     mTouchCapAPI_SetUpChannelDirectKey(&DirectKey1,DIRECTKEY1_CHANNEL,DEFAULT_TRIP_VALUE,DECODE_METHOD_PRESS_ASSERT,FILTER_METHOD_SLOWAVERAGE);	
	 mTouchCapAPI_SetUpChannelDirectKey(&DirectKey2,DIRECTKEY2_CHANNEL,DEFAULT_TRIP_VALUE,DECODE_METHOD_PRESS_ASSERT,FILTER_METHOD_SLOWAVERAGE);	

	 mTouchCapAPI_SetUpChannelDirectKey(&DirectKey3,DIRECTKEY3_CHANNEL,DEFAULT_TRIP_VALUE,DECODE_METHOD_PRESS_ASSERT,FILTER_METHOD_SLOWAVERAGE);	
	 mTouchCapAPI_SetUpChannelDirectKey(&DirectKey4,DIRECTKEY4_CHANNEL,DEFAULT_TRIP_VALUE,DECODE_METHOD_PRESS_ASSERT,FILTER_METHOD_SLOWAVERAGE);	    

	 mTouchCapAPI_SetUpChannelDirectKey(&DirectKey5,DIRECTKEY5_CHANNEL,DEFAULT_TRIP_VALUE,DECODE_METHOD_PRESS_ASSERT,FILTER_METHOD_SLOWAVERAGE);	        
	 mTouchCapAPI_SetUpChannelDirectKey(&DirectKey6,DIRECTKEY6_CHANNEL,DEFAULT_TRIP_VALUE,DECODE_METHOD_PRESS_ASSERT,FILTER_METHOD_SLOWAVERAGE);
	 mTouchCapAPI_SetUpChannelDirectKey(&DirectKey7,DIRECTKEY7_CHANNEL,DEFAULT_TRIP_VALUE,DECODE_METHOD_PRESS_ASSERT,FILTER_METHOD_SLOWAVERAGE);
	 mTouchCapAPI_SetUpChannelDirectKey(&DirectKey8,DIRECTKEY8_CHANNEL,DEFAULT_TRIP_VALUE,DECODE_METHOD_PRESS_ASSERT,FILTER_METHOD_SLOWAVERAGE);
	 

}
 #endif
 
/********************************************************************
 * Function			:    void mTouchCapApp_DemoDirectKeys(void)
 *
 * PreCondition		:    None
 *
 * Input			:    None
 *
 * Output			:    None
 *
 * Side Effects		:    None
 *
 * Overview			:   This function will demonstrate the usage of the API's 
 *						that is associated with the Direct key Demo Board
 *
 * Note			:
 *******************************************************************/
#ifdef USE_DIRECT_KEYS

void mTouchCapApp_DemoDirectKeys(void)
{



     if(KEY_PRESSED == mTouchCapAPI_GetStatusDirectButton(&DirectKey1))
    {
        // Illuminate Keypad LEDs
        mTouchCapApp_SetEvalBoardLEDs(LED_1);
    }
    else if(KEY_PRESSED == mTouchCapAPI_GetStatusDirectButton(&DirectKey2))
    {
        // Illuminate Keypad LEDs
     mTouchCapApp_SetEvalBoardLEDs(LED_2);
    }
    else  if(KEY_PRESSED == mTouchCapAPI_GetStatusDirectButton(&DirectKey3))
    {

        // Illuminate Keypad LEDs
        mTouchCapApp_SetEvalBoardLEDs(LED_3);
    }
    else  if(KEY_PRESSED == mTouchCapAPI_GetStatusDirectButton(&DirectKey4))
    {

        // Illuminate Keypad LEDs
        mTouchCapApp_SetEvalBoardLEDs(LED_4);
    }
    else  if(KEY_PRESSED == mTouchCapAPI_GetStatusDirectButton(&DirectKey5))
    {

        // Illuminate Keypad LEDs
        mTouchCapApp_SetEvalBoardLEDs(LED_5);
    }

    else  if(KEY_PRESSED == mTouchCapAPI_GetStatusDirectButton(&DirectKey6))
    {

        // Illuminate Keypad LEDs
        mTouchCapApp_SetEvalBoardLEDs(LED_6);
    }
    
    else  if(KEY_PRESSED == mTouchCapAPI_GetStatusDirectButton(&DirectKey7))
    {

        // Illuminate Keypad LEDs
        mTouchCapApp_SetEvalBoardLEDs(LED_7);
    }
    
   else  if(KEY_PRESSED == mTouchCapAPI_GetStatusDirectButton(&DirectKey8))
    {

        // Illuminate Keypad LEDs
        mTouchCapApp_SetEvalBoardLEDs(LED_8);
    }         
   else
   {
	    if(Decode_Method_Used != DECODE_METHOD_PRESS_AND_RELEASE)
  		mTouchCapApp_SetEvalBoardLEDs(LED_NIL);	 
   }

}

#endif


