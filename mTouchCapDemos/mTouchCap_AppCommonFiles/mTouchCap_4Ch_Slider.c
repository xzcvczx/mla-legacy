
/*****************************************************************************
 * FileName:        mTouchCap_4Ch_Slider.c
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
#include "mTouchCap_4Ch_Slider.h"
#ifdef __PIC24F__
		#include "mTouchCap_PIC24_CTMU_Physical.h"
#else
		#include "mTouchCap_PIC18_CTMU_Physical.h"
#endif

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

extern void mTouchCapApp_SetLEDDisplay(SHORT input);

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Declarations  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */






/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Function Definitions  ~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

/********************************************************************
 * Function		:    WORD mTouchCapApp_FourChannelSliderLogic(float deltaCh0,float deltaCh1,float deltaCh2,float deltaCh3 )
 *
 * PreCondition	:    None
 *
 * Input			:    None
 *
 * Output			:    None
 *
 * Side Effects		:    None
 *
 * Overview		: This is the four channel slider algorithm. This can be changed as per your board design.
 *
 *
 *
 *
 *
 * Note			:
 *******************************************************************/
#ifdef USE_SLIDER_4CHNL
WORD mTouchCapApp_FourChannelSliderLogic(float deltaCh0,float deltaCh1,float deltaCh2,float deltaCh3 )
{
//	WORD delta, AvrgCh0Data,AvrgCh1Data,AvrgCh2Data,AvrgCh3Data;
	WORD Index,i;
	static float delta;
//	static float Ch4Delta[4];
	static float avgdeltaCh[4];
	static WORD	PercentLevel=0;
	static WORD prevpercent=0;
	static WORD calcPercent=0;
	static WORD AvrgCh0Data; 
	static WORD AvrgCh1Data;
	static WORD AvrgCh2Data;
	static WORD AvrgCh3Data;
	int calc,min,max;
	
	
  
		delta=(deltaCh0 + deltaCh1 + deltaCh2 + deltaCh3);
		
		AvrgCh0Data = averageData[SLDR4CHNL1];    
		AvrgCh1Data = averageData[SLDR4CHNL2];	
		AvrgCh2Data = averageData[SLDR4CHNL3];
		AvrgCh3Data = averageData[SLDR4CHNL4];
		
		avgdeltaCh[0] = (deltaCh0*100)/AvrgCh0Data;
		avgdeltaCh[1] = (deltaCh1*100)/AvrgCh1Data;
		avgdeltaCh[2] = (deltaCh2*100)/AvrgCh2Data;
		avgdeltaCh[3] = (deltaCh3*100)/AvrgCh3Data;
		

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
		
//		if(PercentLevel<50)
//		PercentLevel=PercentLevel+3;
//		else
//		PercentLevel=PercentLevel-3;
		
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

/********************************************************************
 * Function		:    void mTouchCapApp_DemoFourChannelSlider(void)
 *
 * PreCondition	:    None
 *
 * Input			:    None
 *
 * Output			:    None
 *
 * Side Effects		:    None
 *
 * Overview		: It demonstrates the API related to 4Channel Slider board.
 *
 *
 *
 *
 *
 * Note			:
 *******************************************************************/
#ifdef USE_SLIDER_4CHNL

void mTouchCapApp_DemoFourChannelSlider(void)
{		
		WORD sliderLevel;
		
/***************************************************************************
--------------- Demo of API "mTouchCapAPI_GetStatusSlider" -----------------------		
Get the percentage level of touch on Slider mentioned using the API "mTouchCapAPI_GetStatusSlider". 
***************************************************************************/
	sliderLevel = mTouchCapAPI_GetStatusSlider (FOUR_CHANNEL_SLIDER);

	/* Set the LED display only if the Slider level is more than Zero. */
	if(   (KEY_PRESSED == getChannelTouchStatus(SLDR4CHNL1)) || 
		(KEY_PRESSED == getChannelTouchStatus(SLDR4CHNL2)) ||
		(KEY_PRESSED == getChannelTouchStatus(SLDR4CHNL3)) || 
		(KEY_PRESSED == getChannelTouchStatus(SLDR4CHNL4)) 	)
	{
	   	 /* Set the LED display only if the Slider level is more than Zero. */
		if(sliderLevel >= 0)
		{	
		        /* Display the 2channel readings on to Demo Board LEDs */
			mTouchCapApp_4ChDisplay(sliderLevel);	
	       }
	       else
	    	{
			/* Display the 4channel readings on to Demo Board LEDs */
		        mTouchCapApp_SetLEDDisplay(0);
	    	}	
}
}
#endif

 /*********   	End of Function 	*********************/


