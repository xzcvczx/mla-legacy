
/*****************************************************************************
* FileName:         mTouchCap_DirectKeys.c
* Includes:
*   void mTouchCapApp_DemoDirectKeys(void)
*   void mTouchCapApp_CreateDirectKeys(void)
*
* Dependencies:
* Processor:        PIC32
* Compiler:         C32
* Company:          Microchip Technology Incorporated
*
* Software License Agreement
*
* Copyright © 2011 Microchip Technology Inc.
* Microchip licenses this software to you solely for use with Microchip
* products, according to the terms of the accompanying click-wrap software
* license. Microchip and its licensors retain all right, title and interest in
* and to the software.  All rights reserved. This software and any accompanying
* information is for suggestion only. It shall not be deemed to modify
* Microchip’s standard warranty for its products.  It is your responsibility to
* ensure that this software meets your requirements.
*
* SOFTWARE IS PROVIDED “AS IS” WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESS OR
* IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY OF MERCHANTABILITY, TITLE,
* NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR PURPOSE. IN NO EVENT WILL
* MICROCHIP OR ITS LICENSORS BE LIABLE FOR ANY DIRECT OR INDIRECT DAMAGES OR
* EXPENSES INCLUDING BUT NOT LIMITED TO INCIDENTAL, SPECIAL, INDIRECT, PUNITIVE
* OR CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF PROCUREMENT OF
* SUBSTITUTE GOODS, TECHNOLOGY OR SERVICES, OR ANY CLAIMS BY THIRD PARTIES
* (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF), OR OTHER SIMILAR COSTS.
*
* The aggregate and cumulative liability of Microchip and its licensors for
* damages related to the use of the software will in no event exceed $1000 or
* the amount you paid Microchip for the software, whichever is greater.
*
* MICROCHIP PROVIDES THIS SOFTWARE CONDITIONALLY UPON YOUR ACCEPTANCE OF THESE
* TERMS AND THE TERMS OF THE ACCOMPANYING CLICK-WRAP SOFTWARE LICENSE.
*
* Author                Date           Comment
*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* BDB                   26 Jun 2008    First Version for CTMU EVAL Board
* SB                    22 Oct 2008    Updates to First Version
* Naveen. M             14 Apr 2009    Version 0.1 Initial Draft
* Sasha. M  / Naveen. M 4 May 2009     Version 0.2 Updates
* Sasha. M  / Naveen. M 11 Nov 2009    Version 1.0 Release
* Sasha. M  / Nithin.   10 April 2010  Version 1.20 Release
* MWM                      March 2011
*   Changed mTouchCapApp_DemoDirectKeys to support multi-touch
*   Simplified mTouchCapApp_CreateDirectKeys
*****************************************************************************/


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~    Includes    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~     */
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
#include    "config.h"
#include    "HardwareProfile.h"
#include    "mTouchCap_DirectKeys.h"
#include    "mTouchCap_CvdAPI.h"
#include    "display.h"
#include    "mTouchCap_PIC32MX_CVD_Physical.h"

DIRECTKEY DirectKey1;
DIRECTKEY DirectKey2;
DIRECTKEY DirectKey3;
DIRECTKEY DirectKey4;
DIRECTKEY DirectKey5;
DIRECTKEY DirectKey6;
DIRECTKEY DirectKey7;
DIRECTKEY DirectKey8;

/********************************************************************
 * Function         :    void mTouchCapApp_DemoDirectKeys(void)
 *
 * PreCondition     :    None
 *
 * Input            :    None
 *
 * Output           :    None
 *
 * Side Effects     :    None
 *
 * Overview         :   This function will demonstrate the usage of the API's
 *                      that is associated with the Direct key Demo Board
 *
 * Note         :
 *******************************************************************/
UINT16 mTouchCapApp_DemoDirectKeys(void)
{
    UINT16 ButtonStatus = 0;

    if(KEY_PRESSED ==
         mTouchCapAPI_getChannelTouchStatus(DirectKey1.Channel_Num,
                                            DirectKey1.DecodeMethod) )
    {
        // Illuminate Keypad LEDs
        mTouchCapApp_SetEvalBoardLEDs(LED_8);
        ButtonStatus += 1;
    }

    if(KEY_PRESSED ==
         mTouchCapAPI_getChannelTouchStatus(DirectKey2.Channel_Num,
                                            DirectKey2.DecodeMethod) )
    {
        // Illuminate Keypad LEDs
        mTouchCapApp_SetEvalBoardLEDs(LED_9);
        ButtonStatus += 2;
    }

    if(KEY_PRESSED ==
         mTouchCapAPI_getChannelTouchStatus(DirectKey3.Channel_Num,
                                            DirectKey3.DecodeMethod) )
    {
        // Illuminate Keypad LEDs
        mTouchCapApp_SetEvalBoardLEDs(LED_10);
        ButtonStatus += 4;
    }

    if(KEY_PRESSED ==
         mTouchCapAPI_getChannelTouchStatus(DirectKey4.Channel_Num,
                                            DirectKey4.DecodeMethod) )
    {
        // Illuminate Keypad LEDs
        mTouchCapApp_SetEvalBoardLEDs(LED_11);
        ButtonStatus += 8;
    }

    if(KEY_PRESSED ==
         mTouchCapAPI_getChannelTouchStatus(DirectKey5.Channel_Num,
                                            DirectKey5.DecodeMethod) )
    {
        // Illuminate Keypad LEDs
        mTouchCapApp_SetEvalBoardLEDs(LED_12);
        ButtonStatus += 16;
    }

    if(KEY_PRESSED ==
         mTouchCapAPI_getChannelTouchStatus(DirectKey6.Channel_Num,
                                            DirectKey6.DecodeMethod) )
    {
        // Illuminate Keypad LEDs
        mTouchCapApp_SetEvalBoardLEDs(LED_13);
        ButtonStatus += 32;
    }

    if(KEY_PRESSED ==
         mTouchCapAPI_getChannelTouchStatus(DirectKey7.Channel_Num,
                                            DirectKey7.DecodeMethod) )
    {
        // Illuminate Keypad LEDs
        mTouchCapApp_SetEvalBoardLEDs(LED_14);
        ButtonStatus += 64;
    }

    if(KEY_PRESSED ==
         mTouchCapAPI_getChannelTouchStatus(DirectKey8.Channel_Num,
                                            DirectKey8.DecodeMethod) )
    {
        // Illuminate Keypad LEDs
        mTouchCapApp_SetEvalBoardLEDs(LED_15);
        ButtonStatus += 128;
    }

    if ( ButtonStatus == 0 )
    {
        mTouchCapApp_SetEvalBoardLEDs(LED_NIL);
    }

    return ButtonStatus;
}

/********************************************************************
 * Function         :     void mTouchCapApp_CreateDirectKeys(void)
 *
 * PreCondition     :    None
 *
 * Input            :    None
 *
 * Output           :    None
 *
 * Side Effects     :    None
 *
 * Overview         :   This function fills the direct keys conf struct
 *
 * Note         :
 *******************************************************************/
 #define SETUP_DIRECT_KEY(AddrDirectKey,DirectKeyChannelNumber) \
           mTouchCapAPI_SetUpChannelDirectKey((AddrDirectKey), \
                                              (DirectKeyChannelNumber), \
                                              DEFAULT_TRIP_VALUE, \
                                              DEFAULT_DECODE_METHOD, \
                                              DEFAULT_FILTER_METHOD);
 void mTouchCapApp_CreateDirectKeys(void)
 {
     SETUP_DIRECT_KEY(&DirectKey1,DIRECTKEY1_CHANNEL);
     SETUP_DIRECT_KEY(&DirectKey2,DIRECTKEY2_CHANNEL);
     SETUP_DIRECT_KEY(&DirectKey3,DIRECTKEY3_CHANNEL);
     SETUP_DIRECT_KEY(&DirectKey4,DIRECTKEY4_CHANNEL);
     SETUP_DIRECT_KEY(&DirectKey5,DIRECTKEY5_CHANNEL);
     SETUP_DIRECT_KEY(&DirectKey6,DIRECTKEY6_CHANNEL);
     SETUP_DIRECT_KEY(&DirectKey7,DIRECTKEY7_CHANNEL);
     SETUP_DIRECT_KEY(&DirectKey8,DIRECTKEY8_CHANNEL);
}

