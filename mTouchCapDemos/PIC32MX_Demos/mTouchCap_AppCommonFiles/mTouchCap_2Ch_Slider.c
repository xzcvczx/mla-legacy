/*****************************************************************************
* FileName:         mTouchCap_2Ch_Slider.c
* Includes:
*   void mTouchCapApp_CreateTwoChannelSlider(void)
*   void mTouchCapApp_DemoTwoChannelSlider(void)
*   WORD mTouchCapApp_TwoChannelSliderLogic(SLIDER2CH *Slider)
*
* Dependencies:
* Processor:        PIC32MX
* Compiler:             C32
* Company:          Microchip Technology Incorporated
*
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
*
* Author                    Date                Comment
*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ *
*
* Author                Date            Comment
*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* BDB                           26 Jun 2008             First Version for CTMU EVAL Board
* Nithin. M                 22 Oct 2008             Updates to First Version
* Naveen. M                 14 Apr 2009             Version 0.1 Initial Draft
* Sasha. M  / Naveen. M         4 May 2009              Version 0.2 Updates
* Sasha. M  / Naveen. M         11 Nov 2009             Version 1.0 Release
* Sasha. M  / Nithin.           10 April 2010           Version 1.20 Release
*****************************************************************************/


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~    Includes    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~     */
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
#include    "config.h"
#include    "HardwareProfile.h"
#include    "mTouchCap_CvdAPI.h"    //must be before mTouchCap_2Ch_Slider.h
#include    "mTouchCap_2Ch_Slider.h"
#include    "display.h"
#include    "mTouchCap_PIC32MX_CVD_Physical.h"


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~    Declarations  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~   */
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */



/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~    Variables   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~     */
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
// from PIC32MX CVD Library\mTouchCap_PIC32MX_CVD_Physical.c
extern UINT16 CurFiltdData[MAX_ADC_CHANNELS]; // current filtered value for all channels

// from PIC32MX CVD Library\mTouchCap_CvdAPI.c
extern UINT16 averageData[MAX_ADC_CHANNELS];// running average of CVD channels


#if defined( USE_SLIDER_2CHNL )
long pct_output_2Chl;
long pct_sum_2Chl;
long pct_array_2Chl[AVG_INDEX_2CHDATA];
#endif//defined( USE_SLIDER_2CHNL )


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~    Function Prototypes  ~~~~~~~~~~~~~~~~~~~~~~~~~~     */
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
//extern void mTouchCapApp_SetLEDDisplay(SHORT input);

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~Instantiate or create an objects for SLIDER2CH structure~~*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

SLIDER2CH Volume;

/********************************************************************
 * Function         :    void mTouchCapApp_CreateTwoChannelSlider(void)
 *
 * PreCondition     :    None
 *
 * Input            :    None
 *
 * Output           :    None
 *
 * Side Effects     :    None
 *
 * Overview         :   It demonstrates the API related to setting up the channels associated
 *                      with the 2Channel Slider Demo board.
 *
 * Note             :
 *******************************************************************/

 void mTouchCapApp_CreateTwoChannelSlider(void)
 {

     /***************************************************************************
      --------------- Demo of API "mTouchCapAPI_SetUpChannelSlider2Ch" -----------------------
      Get the percentage level of touch on Slider mentioned using the API "mTouchCapAPI_GetStatusSlider".
      The below function intern calls the mentioned API.
     ***************************************************************************/
     mTouchCapAPI_SetUpChannelSlider2Ch(&Volume,
                                        TWO_CH_SLIDER1_CHANNEL0,
                                        TWO_CH_SLIDER1_CHANNEL1,
                                        DEFAULT_TRIP_VALUE,
                                        DECODE_METHOD_PRESS_ASSERT,
                                        FILTER_METHOD_GATEDAVERAGE);

}

/********************************************************************
 * Function         :    void mTouchCapApp_DemoTwoChannelSlider(void)
 *
 * PreCondition     :    None
 *
 * Input            :    None
 *
 * Output           :    None
 *
 * Side Effects     :    None
 *
 * Overview         :    It demonstrates the API related to 2Channel Slider board.
 *
 * Note             :
 *******************************************************************/

UINT16 mTouchCapApp_DemoTwoChannelSlider(void)
{
    CHAR sliderLevel;
    UINT16 ButtonStatus = 0;

    /***************************************************************************
    --------------- Demo of API "mTouchCapAPI_GetStatusSlider" -----------------------
    Get the percentage level of touch on Slider mentioned using the API "mTouchCapAPI_GetStatusSlider".
    **************************************************************************/
    sliderLevel =  mTouchCapAPI_GetStatusSlider2Ch(&Volume);

         /* Set the LED display only if the Slider level is more than Zero. \\NSC: */
    if(sliderLevel != -1)
    {
        if(sliderLevel >= 0)
        {
            /* Display the 2channel readings on to Demo Board LEDs */
            mTouchCapApp_2ChDisplay(sliderLevel);
            ButtonStatus = sliderLevel;
        }
    }
    else
    {
        /* Display the 2channel readings on to Demo Board LEDs */
        mTouchCapApp_SetLEDDisplay(0);
    }

    return ButtonStatus;

 }


/********************************************************************
 * Function         :    WORD mTouchCapApp_TwoChannelSliderLogic(SLIDER2CH *Slider)
 *
 * PreCondition     :    None
 *
 * Input            :    Address of instance created using the SLIDER2CH structure
 *
 * Output           :    Percentage Level
 *
 * Side Effects     :    None
 *
 * Overview         :    This is the two channel slider algorithm. This can be changed
 *                       based on the need of the application and the type of the slider.
 *
 * Note             :
 *******************************************************************/

WORD mTouchCapApp_TwoChannelSliderLogic(SLIDER2CH *Slider)
{
    WORD Channel_sum;
    float Percent_Level = 0;
    float Percent_R = 0;
    float Percent_L = 0;
    WORD Channel_L;
    WORD Channel_R;

    Channel_L = averageData[Slider->Channel_Num[0]] - CurFiltdData[Slider->Channel_Num[0]];
    Channel_R = averageData[Slider->Channel_Num[1]] - CurFiltdData[Slider->Channel_Num[1]];

    Channel_sum = (Channel_L + Channel_R);

    if(Channel_sum <= 0)        // to avoid divide by zero factor
    {
            Percent_L =0;
            Percent_R =0;
            Percent_Level =0;
    }
    else
    {
        /* To check the Right Sensor values( channel 1) */
        if (Channel_R == 0)
        {
            Percent_R = 0;
        }
        else
        {
            Percent_R = ((float)Channel_R)/(Channel_sum);
            Percent_R = 100 * Percent_R;
        }

        /* To check the Left Sensor values( channel 0) */
        if (Channel_L == 0)  Percent_L = 0;
        else
        {
            Percent_L = ((float)Channel_L/Channel_sum);
            Percent_L = 100* Percent_L;
        }

        if ((Percent_R >= 0) && (Percent_R <= TOLERANCE_LIMIT_MAX_UNTOUCH) ) // Tolerance for interference in RIGHT channel while measuring LEFT
        {
            if(Percent_L <= MAX_LEFT_CHANNEL_SCALE_OF_SLIDER)   Percent_Level = (  MAX_LEFT_CHANNEL_SCALE_OF_SLIDER - Percent_L); // sliding from MAX area of LEFT channel towards mid
            else                                                Percent_Level = (  100 - Percent_L);
        }
        else if( (Percent_L >= 0) && (Percent_L <= TOLERANCE_LIMIT_MAX_UNTOUCH) ) // Tolerance for interference in LEFT channel while measuring RIGHT
        {
            if(Percent_R >= MAX_LEFT_CHANNEL_SCALE_OF_SLIDER)
            {
                Percent_Level = (  Percent_R - MAX_LEFT_CHANNEL_SCALE_OF_SLIDER); // sliding from MAX area of LEFT channel towards mid
                Percent_Level += MAX_LEFT_CHANNEL_SCALE_OF_SLIDER;
            }
            else                                                Percent_Level = Percent_R;
        }
        else if(Percent_L !=0 && Percent_R !=0)
        {
            if(Percent_L < Percent_R)
            {
                Percent_Level = Percent_R ;
            }
            else if (Percent_L > Percent_R)
            {
                Percent_Level = ( 100 - Percent_L);
            }
            else if (Percent_L == Percent_R)
            {
                Percent_Level = (Percent_R + (MAX_LEFT_CHANNEL_SCALE_OF_SLIDER - Percent_L))/2 ;
            }

            if( (Percent_Level >= MAX_LEFT_CHANNEL_SCALE_OF_SLIDER) )
            {
                Percent_Level = Percent_Level - (100-MAX_LEFT_CHANNEL_SCALE_OF_SLIDER);
            }
            if( (Percent_Level <= MIN_RIGHT_CHANNEL_SCALE_OF_SLIDER) )
            {
                Percent_Level = Percent_Level + MIN_RIGHT_CHANNEL_SCALE_OF_SLIDER;
            }

        }
    }

  return Percent_Level;
}

