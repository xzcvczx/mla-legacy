
/*****************************************************************************
 * FileName:        mTouchCap_4Ch_Slider.c
 * Dependencies:
 * Processor:       PIC18
 * Compiler:       	C18
 * Linker:          MPLINK
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
 * Author               		Date        	Comment
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * BDB         					26 Jun 2008 			First Version for CTMU EVAL Board
 * SB							22 Oct 2008				Updates to First Version
 * Naveen. M				    14 Apr 2009				Version 0.1 Initial Draft
 * Sasha. M	/ Naveen. M			4 May 2009  			Version 0.2 Updates
 * Sasha. M	/ Naveen. M			11 Nov 2009  			Version 1.0 Release
 * Sasha. M	/ Nithin. 			10 April 2010  			Version 1.20 Release
 *****************************************************************************/


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Includes	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
//#include	"mTouchCap_Config.h"

#include "mTouchCap_4Ch_Slider.h"
#include "mTouchCap_PIC18_CTMU_Physical.h"


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Variables	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
#ifdef USE_SLIDER_4CHNL    
	WORD calcPercent=0;
#endif


SHORT 	pct_output_4Chl;
long	pct_sum_4Chl;
    
long 	pct_array_4Chl[6];

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Function Prototypes  ~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
WORD mTouchCapApp_FourChannelSliderLogic(Slider4Ch *Slider);
extern void mTouchCapApp_SetLEDDisplay(SHORT input);
extern void mTouchCapApp_CreateFourChannelSlider(void);

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~Instantiate or create an objects for Slider4Ch structure */
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

#ifdef USE_SLIDER_4CHNL

Slider4Ch Volume1;


#endif

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Function Definitions  ~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/********************************************************************
 * Function			:    void mTouchCapApp_CreateFourChannelSlider(void)
 *
 * PreCondition		:    None
 *
 * Input			:    None
 *
 * Output			:    None
 *
 * Side Effects		:    None
 *
 * Overview			: 	 This function will set up the channels and other related feautres that are associated with the 
 *				         4 channel slider demo board
 *
 * Note				:
 *******************************************************************/
#ifdef USE_SLIDER_4CHNL
void mTouchCapApp_CreateFourChannelSlider(void)
{
	
	/***************************************************************************
	--------------- Demo of API "mTouchCapAPI_SetUpChannelSlider4Ch" -------------
	This API will set up all the variab les associated with the 4 channel slider
	***************************************************************************/
	mTouchCapAPI_SetUpChannelSlider4Ch(&Volume1,FOUR_CH_SLIDER1_CHANNEL0,FOUR_CH_SLIDER1_CHANNEL1,FOUR_CH_SLIDER1_CHANNEL2,FOUR_CH_SLIDER1_CHANNEL3,DEFAULT_TRIP_VALUE,DECODE_METHOD_PRESS_ASSERT,FILTER_METHOD_GATEDAVERAGE);
	
} 
 
#endif
/********************************************************************
 * Function			:    void mTouchCapApp_DemoFourChannelSlider(void)
 *
 * PreCondition		:    None
 *
 * Input			:    None
 *
 * Output			:    None
 *
 * Side Effects		:    None
 *
 * Overview			: It demonstrates the API related to 4Channel Slider board.
 *
 *
 * Note				:
 *******************************************************************/
#ifdef USE_SLIDER_4CHNL
	 
void mTouchCapApp_DemoFourChannelSlider(void)
{		
	SHORT sliderLevel;

	/***************************************************************************
	--------------- Demo of API "mTouchCapAPI_GetStatusSlider" -----------------------		
	Get the percentage level of touch on Slider mentioned using the API "mTouchCapAPI_GetStatusSlider". 
	***************************************************************************/
	
	sliderLevel = mTouchCapAPI_GetStatusSlider4Ch (&Volume1);
			
	if (sliderLevel != -1)
		{
		  /* Set the LED display only if the Slider level is more than Zero. */
	  	  if(sliderLevel >= 0)
		  {	
		     /* Display the 2channel readings on to Demo Board LEDs */
			 mTouchCapApp_4ChDisplay((WORD)sliderLevel);	
		  }
		  else
		  {
				/* Display the 4channel readings on to Demo Board LEDs */
					mTouchCapApp_SetLEDDisplay(0);
		  }
	    }  	
	       
}
#endif

/********************************************************************
 * Function			:    WORD mTouchCapApp_FourChannelSliderLogic(Slider4Ch *Slider)
 *
 * PreCondition		:    None
 *
 * Input		    :	 Address of instance created using the Slider4Ch structure 
 *
 * Output			:    Percentage Level
 *
 * Side Effects		:    None
 *
 * Overview			: 	 This is the four channel slider algorithm. This can be changed 
 *						 based on the need of the application and the type of the slider.
 *
 * Note				:
 *******************************************************************/
#ifdef USE_SLIDER_4CHNL
WORD mTouchCapApp_FourChannelSliderLogic(Slider4Ch *Slider)
{
	WORD Index,i;
	static float delta;
	float FourChDelta[4];
	static float avgdeltaCh[4];
	static WORD	PercentLevel=0;
	static WORD prevpercent=0;
	static WORD calcPercent=0;
	static WORD AvrgCh0Data; 
	static WORD AvrgCh1Data;
	static WORD AvrgCh2Data;
	static WORD AvrgCh3Data;
	int calc,min,max;
	
	
	FourChDelta[0] = (float)averageData[Slider->Channel_Num[0]] - (float)curRawData[Slider->Channel_Num[0]];
	FourChDelta[1] = (float)averageData[Slider->Channel_Num[1]] - (float)curRawData[Slider->Channel_Num[1]];
	FourChDelta[2] = (float)averageData[Slider->Channel_Num[2]] - (float)curRawData[Slider->Channel_Num[2]];
	FourChDelta[3] = (float)averageData[Slider->Channel_Num[3]] - (float)curRawData[Slider->Channel_Num[3]];	

 
	delta=(FourChDelta[0] + FourChDelta[1] + FourChDelta[2] + FourChDelta[3]);
	
	AvrgCh0Data = averageData[Slider->Channel_Num[0]];    
	AvrgCh1Data = averageData[Slider->Channel_Num[1]];	
	AvrgCh2Data = averageData[Slider->Channel_Num[2]];
	AvrgCh3Data = averageData[Slider->Channel_Num[3]];
	
	avgdeltaCh[0] = (FourChDelta[0]*100)/AvrgCh0Data;
	avgdeltaCh[1] = (FourChDelta[1]*100)/AvrgCh1Data;
	avgdeltaCh[2] = (FourChDelta[2]*100)/AvrgCh2Data;
	avgdeltaCh[3] = (FourChDelta[3]*100)/AvrgCh3Data;
	

	i=0;
	delta=0;
	max=0;
	min=0;
	
	while(i<4)
	{
		if(delta < (avgdeltaCh[i]))
		{
			delta=avgdeltaCh[i];
			max=i;
		}
		i=i+1;
	}
	
	if((max!=0)&&(max!=3))
	{
		if(avgdeltaCh[max-1]>avgdeltaCh[max+1])
			min=max-1;
		else
			min=max+1;
	}else
	if(max==0)
	min=1;
	else
	min=2;

	delta=avgdeltaCh[max]+avgdeltaCh[min];
	avgdeltaCh[max]=(avgdeltaCh[max]*100)/delta;
	avgdeltaCh[min]=(avgdeltaCh[min]*100)/delta;


	if((avgdeltaCh[max]>80)&&(avgdeltaCh[min]<10))
	{
		calc=max*5+1;
	}else			
	if((avgdeltaCh[max]>80)&&(avgdeltaCh[min]>10))
	{
		calc=max*5+2;
	}else
	if((avgdeltaCh[max]>60)&&(max<min))
	{
		calc=max*5+3;
	}else
	if((avgdeltaCh[max]>30)&&(avgdeltaCh[min]<60)&&(max<min))
	{
		calc=max*5+4;
	}else
	if((avgdeltaCh[max]>30)&&(avgdeltaCh[min]<60)&&(max>min))		
	{
		calc=(max-1)*5+5;
	}
	
	calcPercent=calc*6+2;
	PercentLevel=(PercentLevel+calcPercent)/2;
	
	if(PercentLevel<=0)
	PercentLevel=0;
	if(PercentLevel>100)
	PercentLevel=100;
	
	Nop();			
	Nop();
	Nop();
	
	if(PercentLevel>prevpercent)
		PercentLevel=prevpercent+MIN_PERCENT_DISPLAY;
	else
		PercentLevel=prevpercent-MIN_PERCENT_DISPLAY;

		prevpercent=PercentLevel;
		
#ifdef __PIC24F__
	for (Index=1; Index<6; Index++) 
	{
		pct_sum_4Chl += pct_array_4Chl[Index];		// Calculate sum over iterations
		pct_array_4Chl[Index-1] = pct_array_4Chl[Index];	// Shift values
	}
#endif


	return PercentLevel;
	
}
#endif
 /*********   	End of Function 	*********************/


