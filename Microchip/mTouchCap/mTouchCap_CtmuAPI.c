
/*****************************************************************************
 * FileName:        mTouchCap_CtmuAPI.c
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
 * Naveen. M				     14 Apr 2009		Version 0.1 Initial Draft
 * Sasha. M	/ Naveen. M		4 May 2009  		Version 0.2 Updates
 * Bruce Bahn					10 Nov 2009  		Version 0.3 Updates
 * Sasha. M	/ Naveen. M		11 Nov 2009  			Version 1.0 Release
 *****************************************************************************/

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Includes	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

#include 	"mTouchCap_CtmuAPI.h"
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Variables	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Function Prototypes  ~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */





/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Declarations  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */






/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Function Definitions  ~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */



/********************************************************************
Function		:   CHAR mTouchCapAPI_GetStatusDirectButton (WORD ChannelNumber)
 
PreCondition		:   Channel setup is complete. Direct key setup is complete. Configure these keys in "mTouchCAp_Config.h" file.

Parameters : ChannelNumber - The Channel number (must have enabled in "mTouchCAp_Config.h")
					* DIRECTKEY1
			  		* DIRECTKEY2
					* DIRECTKEY3 
					* DIRECTKEY4 
					* DIRECTKEY5 
					* DIRECTKEY6 
					* DIRECTKEY7 
					* DIRECTKEY8 etc.			
 
Output		:	
			      * -1 = NOT_AN_ACTIVE_CHANNEL
			      * 0 = KEY_NOT_PRESSED
			      * 1 = KEY_PRESSED
 
 
Overview		: This API gets the status of a particular key connected directly to a
 					channel. If application can reserve all ADC channels, the Direct key configuration can go upto 
 					16 channels (CH0 to CH15) for PIC24 and 13 channels (CH0 to CH12) for PIC18. 
 			 
 *******************************************************************/

#ifdef	USE_DIRECT_KEYS
CHAR mTouchCapAPI_GetStatusDirectButton (WORD ChannelNumber)
{
	CHAR DirectKey = KEY_NOT_PRESSED;

	/* Check if the channel is used for Direct key */
	if ( mTouchCapApp_IsDirectKey(ChannelNumber) == YES)
	{
		//Now check to see if the requested key is pressed
		if( KEY_PRESSED == getChannelTouchStatus(ChannelNumber))
		{

			DirectKey = KEY_PRESSED;
		}
		else
		{
			//Channel requested is not detected as pressed.
			DirectKey = KEY_NOT_PRESSED;
		}
	}
	else
	{
		//Channel requested is not the detected active channel.
		DirectKey = NOT_AN_ACTIVE_CHANNEL;
	}

	return DirectKey;
}
#endif
 /*********   	End of Function 	*********************/


/*****************************************************************************************
  Function:
          CHAR mTouchCapAPI_GetStatusMatrixButton (WORD RowChannelNum, WORD ColChannelNum)
    
  PreCondition   :    Channel setup is complete. Matrix key setup is complete. Configure these keys in "mTouchCAp_Config.h" file.
    
    
  Input:
    RowChannelNum -  The row channel number
    ColChannelNum -  The column channel number
    
  Return:
    MatrixKey -
			      * -1 = NOT_AN_ACTIVE_CHANNEL
			      * 0 = KEY_NOT_PRESSED
			      * 1 = KEY_PRESSED
      
  Side Effects:
    None
    
  Description:
    This API gets the status of a particular key connected to a row channel
    and column channel. Currently 4x3 pattern is demonstrated. If application can reserve ADC channels, the Matrix key configuration 
    can go upto 8 channels (CH0 to CH7) i.e 4x4 matrix pattern.
                                                                       
  *****************************************************************************************/
 #ifdef	USE_MATRIX_KEYS
CHAR mTouchCapAPI_GetStatusMatrixButton (WORD RowChannelNum, WORD ColChannelNum)
{
	CHAR MatrixKey = KEY_NOT_PRESSED;

		//WORD ChIndex=0;//,touchVar=0;
		WORD RowFlag = KEY_NOT_PRESSED, ColFlag = KEY_NOT_PRESSED;

//First check if the RowChannelNum is a valid argument
/* Check if the channel is used for Matrix key */
	if ( mTouchCapApp_IsMatrixKey(RowChannelNum) == YES)
	{
		if(RowChannelNum >= KEYROW1  && RowChannelNum < (KEYROW1+NUM_ROWS))
		{
			//Now check to see if the requested row is pressed
			if( KEY_PRESSED == getChannelTouchStatus(RowChannelNum))
			{
				RowFlag=KEY_PRESSED;
			}
			else
			{
				//Channel requested is not detected as pressed.
				RowFlag= KEY_NOT_PRESSED; // Used for determining ROW/COL match
			}
		}
	}
	else
	{
			//if we get here the RowChannelNum passed to the function was not valid
			RowFlag = NOT_AN_ACTIVE_CHANNEL;
	}

	/* Check if the channel is used for Direct key */
	if ( mTouchCapApp_IsMatrixKey(ColChannelNum) == YES)
	{
        //Now check to see if the requested row is pressed
		if( KEY_PRESSED == getChannelTouchStatus(ColChannelNum))
		{
		     ColFlag=KEY_PRESSED;
		}
		else
		{
			//Channel requested is not detected as pressed.
		    ColFlag= KEY_NOT_PRESSED; // Used for determining ROW/COL match
		}
	}
	else
	{
		//if we get here the RowChannelNum passed to the function was not valid
				RowFlag = NOT_AN_ACTIVE_CHANNEL;
	}

	if( (ColFlag == NOT_AN_ACTIVE_CHANNEL) || (RowFlag == NOT_AN_ACTIVE_CHANNEL) )
		MatrixKey = NOT_AN_ACTIVE_CHANNEL;
	if( (ColFlag == KEY_PRESSED) && (RowFlag == KEY_PRESSED) )
		MatrixKey = KEY_PRESSED;
	else
		MatrixKey = KEY_NOT_PRESSED;

	return MatrixKey;
}

#endif

 /*********   	End of Function 	*********************/

/********************************************************************
 Function		:    WORD  mTouchCapAPI_GetStatusSlider (BYTE NoOfSliderChannels)
 
 PreCondition	:    Channel setup is complete.
 					 Slider setup is complete.

Input         	: 	NoOfSliderChannels-  Number of Channels the slider uses
 
 
 Output		:   sliderLevel gives the Slider percent level of the touch.
 
 Side Effects	:    None
 
 Overview		: This API gets the percentage level of a particular slider connected directly to a
  					channel.
 
 *******************************************************************/
 #if defined(USE_SLIDER_2CHNL) || defined(USE_SLIDER_4CHNL)	

WORD  mTouchCapAPI_GetStatusSlider (BYTE NoOfSliderChannels)
{
		
	WORD SliderState;
#ifdef USE_SLIDER_2CHNL
	WORD TwoChDelta[2];
#endif

#ifdef USE_SLIDER_4CHNL
 
	float FourChDelta[4];
#endif

 
	WORD Percent_Level = 0;


		if (TWO_CHANNEL_SLIDER == NoOfSliderChannels) //if it is 2 ch slider
		{
		#ifdef USE_SLIDER_2CHNL
			 
			if( (KEY_PRESSED == getChannelTouchStatus(SLDR2CHNL1)) || (KEY_PRESSED == getChannelTouchStatus(SLDR2CHNL2)) )
			{
				
					TwoChDelta[0] = (float)averageData[SLDR2CHNL1] - (float)curRawData[SLDR2CHNL1];
					TwoChDelta[1] = (float)averageData[SLDR2CHNL2] - (float)curRawData[SLDR2CHNL2];
					#ifdef USE_SLIDER_2CHNL
					/* Use the 2ch slider algorithm to get the Slider Level */
					Percent_Level = mTouchCapApp_TwoChannelSliderLogic(TwoChDelta[0],TwoChDelta[1]);
					#endif
			}				
		#endif // USE_SLIDER_2CHNL
						
		}
		else if (FOUR_CHANNEL_SLIDER== NoOfSliderChannels) //if it is 4 ch slider
		{
			#ifdef USE_SLIDER_4CHNL
				 
			if(   (KEY_PRESSED == getChannelTouchStatus(SLDR4CHNL1)) || 
				(KEY_PRESSED == getChannelTouchStatus(SLDR4CHNL2)) ||
				(KEY_PRESSED == getChannelTouchStatus(SLDR4CHNL3)) || 
				(KEY_PRESSED == getChannelTouchStatus(SLDR4CHNL4)) 
			)
			{
					
					FourChDelta[0] = (float)averageData[SLDR4CHNL1] - (float)curRawData[SLDR4CHNL1];
					FourChDelta[1] = (float)averageData[SLDR4CHNL2] - (float)curRawData[SLDR4CHNL2];
					FourChDelta[2] = (float)averageData[SLDR4CHNL3] - (float)curRawData[SLDR4CHNL3];
					FourChDelta[3] = (float)averageData[SLDR4CHNL4] - (float)curRawData[SLDR4CHNL4];	
									
				/* Use the 4ch slider algorithm to get the Slider Level */
				Percent_Level = mTouchCapApp_FourChannelSliderLogic(FourChDelta[0],FourChDelta[1],FourChDelta[2],FourChDelta[3]);
			}
			#endif			
		}
		/* If not 2Ch or 4 Channel handle here */
		else 
		{
			Percent_Level = 0;
		}

		/* Get the Level */
		SliderState = Percent_Level;

	return SliderState;
}
#endif

 /*********   	End of Function 	*********************/


/********************************************************************
 Function		:    BYTE mTouchCapAPI_SetUpChannel (WORD ChannelNum, BYTE TripThreshold, BYTE DecodeMethod, BYTE FilterType)
 
 PreCondition	:    None

Parameters    : 
			ChannelNum - Channel number (must have enabled in "mTouchCAp_Config.h")
			
                     TripThreshold - Trip threshold in percentage of the average value 
                     
                     DecodeMethod - The decoding method used
                     *	DECODE_METHOD_MOST_PRESSED - most pressed	(Future exapansion pending)
                     *	DECODE_METHOD_MULTIPLE_PRESS - multiple presses detected at the same time (Future exapansion pending)
                     *	DECODE_METHOD_PRESS_AND_RELEASE - press-and-release asserts the press (Future exapansion pending)
                     *	DECODE_METHOD_PRESS_ASSERT - press it self assert the press (Implemented)
          	     	*	DECODE_METHOD_KEY_PRESS_FREEZ - key press freezes the key board, until it is released (Future exapansion pending)
          	     	
		     FilterType - Filter type selection
                     *	FILTER_METHOD_1BY20 - Slow moving average 1/20
                     *	FILTER_METHOD_GATEDAVEARAGE - Gated average (as soon as the press stop averaging)
                     *	FILTER_METHOD_FASTAVERAGE - Fast average (average every sample)   							

 Output		:    None
 
 Side Effects	:    None
 
 Overview	: This API is used to setup the channel based on the parameter passed 

 *******************************************************************/
BYTE mTouchCapAPI_SetUpChannel (WORD ChannelNum, BYTE TripThreshold, BYTE DecodeMethod, BYTE FilterType)
 {

	BYTE setupErrorStatus = SETUP_SUCCESS;	/* Defualt status SUCCESS */

	/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
	/* Setup the trip value as passed */
	/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
	tripValue[ChannelNum] = TripThreshold;

	/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
	/* Check the opted filter type of the channel. Copy if within limits. Else, the default type would be "1BY20" method. */
	/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
	if ( (FilterType <= FILTER_METHOD_FASTAVERAGE) )
	{   		
		/* Channel specefic filter type */
		chFilterType	[ChannelNum] = 	FilterType;
	}
	else
	{
		/* Report the Error */
		setupErrorStatus = SETUP_ERROR;	/* Error in the setup */

		/* Setup the default filter type */
		chFilterType	[ChannelNum] = 	FILTER_METHOD_1BY20;
	}

	/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
	/* Filter type for each channel */
	/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
	/* Only the implemented decoce method is "DECODE_METHOD_PRESS_ASSERT" */
	if (DecodeMethod == DECODE_METHOD_PRESS_ASSERT)
	{
		/* Decode Method for each Channel */
		chDecodeMethod	[ChannelNum] = 	DecodeMethod;
	}
	else
	{
		/* report the Error */
		setupErrorStatus = SETUP_ERROR;	/* Error in the setup */

		/* Default Decode Method for each Channel */
		chDecodeMethod	[ChannelNum] = 	DECODE_METHOD_PRESS_ASSERT;
	}

	/* return the error in setup */
	return setupErrorStatus;
}



 /*********   	End of Function 	*********************/


/********************************************************************
  Function		:   void mTouchCapAPI_SetUpCTMU_Default(WORD ChannelNum)
 
  PreCondition	:    TBD


Input         : 			ChannelNum-  Channel Number
 
  Input			:  ChannelNum – Channel Number
 
  Output		:    None
 
  Side Effects	:    None
 
  Overview		: This API is for those who want to use the cap-touch application without having to tweak much.
 					The API sets up the channel in a predefined default method with known configuration settings.
 

 *******************************************************************/
void mTouchCapAPI_SetUpCTMU_Default(WORD ChannelNum)
{
	
	startupCount	= INITIAL_STARTUP_COUNT;
	actualValue [ChannelNum] = 0;
	avg_delay [ChannelNum] = 0;	
	curRawData[ChannelNum] = 0;
	averageData[ChannelNum] = 0;
	tripValue[ChannelNum] = DEFAULT_TRIP_VALUE;
	hystValue[ChannelNum] = 0;	 	
	channel_TRIM_value[ChannelNum] = 0;	 
	channel_IRNG_value [ChannelNum] = 0;
	/* Initialize Trip Value */
	mTouchCapPhy_ChargeTimeInit();

	/***************************************************************************
	--------------- Demo of API "mTouchCapAPI_AutoAdjustChannel" -----------------------		
	Automatically adjust the charge voltage channel using the API "mTouchCapAPI_AutoAdjustChannel". 
	***************************************************************************/
	if (FAILED == mTouchCapAPI_AutoAdjustChannel(ChannelNum,0x2FF)  )  //0x2FF, 75% of charging of ADC Value  1024*0.75
	{
		// DO THE ERROR HANDLING HERE
//		while(1);
	}
		
}


 /*********   	End of Function 	*********************/


/********************************************************************
  Function			:   WORD mTouchCapAPI_CTMU_GetChannelReading(WORD ChannelNum)
 
  PreCondition		:   Channel setup is complete 
 
  Input			:    ChannelNum - Channel number (must have enabled in "mTouchCAp_Config.h")
  							CHANNEL_AN0 ,
							CHANNEL_AN1 ,
							CHANNEL_AN2 ,
							CHANNEL_AN3 ,
							CHANNEL_AN4 ,
							CHANNEL_AN5 ,
							CHANNEL_AN6 ,
							CHANNEL_AN7 ,
							CHANNEL_AN8 ,
							CHANNEL_AN9 ,
							CHANNEL_AN10 ,
							CHANNEL_AN11 ,
							CHANNEL_AN12 ,
							CHANNEL_AN13 ,	// for PIC24. Not available in PIC18
							CHANNEL_AN14 ,	// for PIC24. Not available in PIC18
							CHANNEL_AN15 	// for PIC24. Not available in PIC18

 
  Output		: 	ADC result (CTMU)
 
  Side Effects	: 	None
 
  Overview		: 	This API is used to get the channel reading, to ascertain if a high or low capacitance pad
 				 	is connected. This will simply return the data for the channel. Example: ADC result (CTMU)
 				 	
 *******************************************************************/
WORD mTouchCapAPI_CTMU_GetChannelReading(WORD ChannelNum)
{
	WORD ChannelData;

	/* Check for valid channel number being passed */
	if ( (ChannelNum >= CHANNEL_AN0) &&  (ChannelNum < MAX_ADC_CHANNELS))
	{
		mTouchCapPhy_ChannelSetup (ChannelNum);

		 
		 // CTMUICONbits.ITRIM  configurations for all the 4 boards so as to have a 
      		 // common voltage levels 
	        CTMU_Current_trim_config(ChannelNum); 

		mTouchCapPhy_Discharge_Current ();
		 
		 
		mTouchCapPhy_Charge_Current ();
		
		/* Disable CTMU Edge*/
		Disbl_CTMUEdge1;

		ChannelData = mTouchCapPhy_Read_ADC();
	}
	else
	{
		/* Error: exceeded available channel numbers */
		ChannelData = ADC_UNTOUCHED_VALUE_10_BIT;	//Indicates untouched value for 12-bit ADC
	}
				
	return ChannelData;
 }

/********************************************************************
 Function		:    CHAR  mTouchCapAPI_AutoAdjustChannel (WORD ChannelNum, WORD AdcValueToAchieve)
 
 PreCondition	:    Channel setup is complete.

 Input			:    ChannelNum - Channel number (must have enabled in "mTouchCAp_Config.h")
  							CHANNEL_AN0 ,
							CHANNEL_AN1 ,
							CHANNEL_AN2 ,
							CHANNEL_AN3 ,
							CHANNEL_AN4 ,
							CHANNEL_AN5 ,
							CHANNEL_AN6 ,
							CHANNEL_AN7 ,
							CHANNEL_AN8 ,
							CHANNEL_AN9 ,
							CHANNEL_AN10 ,
							CHANNEL_AN11 ,
							CHANNEL_AN12 ,
							CHANNEL_AN13 ,	// for PIC24. Not available in PIC18
							CHANNEL_AN14 ,	// for PIC24. Not available in PIC18
							CHANNEL_AN15 	// for PIC24. Not available in PIC18
							
 				     AdcValueToAchieve - ADC Value to be achieved
 
 Output		:    CHAR ChannelAdjResult
 					  * -1 : FAILED
 					  * 1 : PASSED
 
 
 Side Effects	:    None
 
 Overview		: This API is used to automatically adjust the voltage reading on a channel(charge level). This will read the 
 				ADC reading after charging the channel, and then adjust the CTMU current source Trim bits 
  				to read the value +/- 2 %.
 
 *******************************************************************/

CHAR  mTouchCapAPI_AutoAdjustChannel (WORD ChannelNum, WORD AdcValueToAchieve)
 {
	CHAR ChannelAdjResult = FAILED;  
	WORD AdcValueToAchieve_DataRangeMax;
	WORD AdcValueToAchieve_DataRangeMin;
	WORD ChannelAdcData;
	CHAR Trim_Value;
	CHAR Currrent_range_value;
	BYTE DelayLoop;
	
	Trim_Value = 0;
	Currrent_range_value = CURRENT_RANGE_100XBASE_CURRENT;
	/* Check for valid channel number being passed */
	if (! ( (ChannelNum >= CHANNEL_AN0) &&  (ChannelNum < MAX_ADC_CHANNELS)) )
	{
		/* return the error value if not a valid channel number */
		ChannelAdjResult = FAILED; 
	}
	else	 //Handle the Auto adjustment for a valid channel
	{

			do {

	/*			mTouchCapPhy_SetTrimValue(Trim_Value);*/
				mTouchCapAPI_CTMU_SetupCurrentSource(Currrent_range_value,Trim_Value);
				for (DelayLoop=0; DelayLoop<= 5; DelayLoop++)
				{
					Nop();	 
					Nop();
					Nop();
					Nop();
				}	
				
				ChannelAdcData = mTouchCapAPI_CTMU_GetChannelReading(ChannelNum);

				AdcValueToAchieve_DataRangeMax = (AdcValueToAchieve + (AdcValueToAchieve*AUTO_ADJUST_BAND_PERCENT/100));	 
				AdcValueToAchieve_DataRangeMin = (AdcValueToAchieve - (AdcValueToAchieve*AUTO_ADJUST_BAND_PERCENT/100));
				
				if( ChannelAdcData>=AdcValueToAchieve_DataRangeMin && ChannelAdcData<=AdcValueToAchieve_DataRangeMax )
				 {
				 	ChannelAdjResult = PASSED;
				 	channel_TRIM_value[ChannelNum] =Trim_Value; 
					channel_IRNG_value[ChannelNum] = CTMU_Get_Current_Source;
					break;
				 }
				else
				{
					//Current achived value is stil LESSER than ADC value to achieve. So increase the trim bit/Current range.
					if( ChannelAdcData<AdcValueToAchieve_DataRangeMin) 
					{
						if (Trim_Value >= CURRENT_SOURCE_TRIM_BITS_MIN_NEGATIVE)
						{
							Trim_Value = CURRENT_SOURCE_TRIM_BITS_NOMINAL; 	 // Special increment at the center.	
						}
						else 
						{
							Trim_Value = Trim_Value+AUTO_ADJUST_STEP_SIZE;
						}

						
						Trim_Value = Trim_Value&CURRENT_SOURCE_TRIM_BITS_NEGATIVE_RANGE_MASK;
						
						if(Trim_Value>=CURRENT_SOURCE_TRIM_BITS_MAX_POSITIVE)
						{
						    if ( CTMU_Get_Current_Source == CURRENT_RANGE_100XBASE_CURRENT)
							{
								Trim_Value = CURRENT_SOURCE_TRIM_BITS_NOMINAL;
								Currrent_range_value = CURRENT_RANGE_10XBASE_CURRENT;
							}
							else if ( CTMU_Get_Current_Source == CURRENT_RANGE_10XBASE_CURRENT)
							{
								Trim_Value = CURRENT_SOURCE_TRIM_BITS_NOMINAL;
								Currrent_range_value = CURRENT_RANGE_BASE_CURRENT;
							}
							
							else
							{
							 	ChannelAdjResult = FAILED;
								break;
							}
						}			
					}
				    else //Current achived value is stil GREATER than ADC value to achieve. So reduce the trim bit/Current range.
				    {
						if (Trim_Value <= CURRENT_SOURCE_TRIM_BITS_NOMINAL)
						{
							Trim_Value = CURRENT_SOURCE_TRIM_BITS_MIN_NEGATIVE; 	  //Special decrement at the center.	
						}
						else 
						{
							Trim_Value = Trim_Value-AUTO_ADJUST_STEP_SIZE;
						}
						
						Trim_Value = Trim_Value&CURRENT_SOURCE_TRIM_BITS_POSITIVE_RANGE_MASK;
						if(Trim_Value<=CURRENT_SOURCE_TRIM_BITS_MAX_NEGATIVE)  
						{

						    if ( CTMU_Get_Current_Source == CURRENT_RANGE_100XBASE_CURRENT)
							{
								Trim_Value = CURRENT_SOURCE_TRIM_BITS_MIN_NEGATIVE;
								Currrent_range_value = CURRENT_RANGE_10XBASE_CURRENT;
							}
							else if ( CTMU_Get_Current_Source == CURRENT_RANGE_10XBASE_CURRENT)
							{
								Trim_Value = CURRENT_SOURCE_TRIM_BITS_MIN_NEGATIVE;
								Currrent_range_value = CURRENT_RANGE_BASE_CURRENT;
							}
							else
							{
							 	ChannelAdjResult = FAILED;
								break;
							}
						}
					}
				  }			 			 
		
			    }while(1);
}

	return ChannelAdjResult;
 }
 
 /*********   	End of Function 	*********************/


 /*********   	End of Function 	*********************/



/********************************************************************
  Function		:    void mTouchCapAPI_CTMU_SetupCurrentSource (BYTE CurrentSourceRange, BYTE TrimValue)
 
  PreCondition	:    None
 
  Input			:     CurrentSourceRange - Current source range 
 						* CURRENT_RANGE_100XBASE_CURRENT 	//urrent source Range is 100*Base current (55uA) 
 						* CURRENT_RANGE_10XBASE_CURRENT  	//Current source Range is 10*Base current (5.5uA)
 						* CURRENT_RANGE_BASE_CURRENT     	//Current source Range is Base current (0.55uA)
 						* CURRENT_SRC_DISABLED      		//Current source disabled
 						
 					   TrimValue - Trim settings
 
  Output		:    None
 
  Side Effects	:    None
 
  Overview		: This API sets the current source and trim level selection for a particular channel.
 					 
 *******************************************************************/
void mTouchCapAPI_CTMU_SetupCurrentSource (BYTE CurrentSourceRange, BYTE TrimValue)
{

 mTouchCapPhy_SetupCurrentSourceRange(CurrentSourceRange);
 mTouchCapPhy_SetTrimValue( TrimValue);

}


 /*********   	End of Function 	*********************/

/********************************************************************
  Function			:    WORD mTouchCapAPI_ScanChannelIterative (WORD ChannelNum, BYTE SampleCount)
 
  PreCondition		:    Channel setup is complete.
 
  Input			:    ChannelNum - Channel number (must have enabled in "mTouchCAp_Config.h")
    							CHANNEL_AN0 ,
							CHANNEL_AN1 ,
							CHANNEL_AN2 ,
							CHANNEL_AN3 ,
							CHANNEL_AN4 ,
							CHANNEL_AN5 ,
							CHANNEL_AN6 ,
							CHANNEL_AN7 ,
							CHANNEL_AN8 ,
							CHANNEL_AN9 ,
							CHANNEL_AN10 ,
							CHANNEL_AN11 ,
							CHANNEL_AN12 ,
							CHANNEL_AN13 ,	// for PIC24. Not available in PIC18
							CHANNEL_AN14 ,	// for PIC24. Not available in PIC18
							CHANNEL_AN15 	// for PIC24. Not available in PIC18
 					 SampleCount - Count of Samples to be taken per scan

 
  Output		:    WORD RawData (Channel Raw data)
 
  Side Effects	:    None
 
  Overview	: This API is used for scanning the channels, one at a time. This should be called in the 
 				  Timer tick in the application, preferably in an interrupt. This will return one sample.
 
 *******************************************************************/

WORD mTouchCapAPI_ScanChannelIterative (WORD ChannelNum, BYTE SampleCount)
{
	WORD RawData;
	WORD RawIterativeData = 0;

	DWORD total = 0;
	BYTE sample;

	/* Check for valid channel number being passed */
	if (! ( (ChannelNum >= CHANNEL_AN0) &&  (ChannelNum < MAX_ADC_CHANNELS)) )
	{
		/* return the error value if not a valid channel number */
		RawData = ADC_UNTOUCHED_VALUE_10_BIT; 
	}
	else	 //Handle the scan for a valid channel
	{

		// Get the raw sensor reading.
		for(sample=0; sample< SampleCount; sample++)
		{
			RawIterativeData = mTouchCapAPI_CTMU_GetChannelReading(ChannelNum);
			
			total = total + RawIterativeData;
		}	

		/* Error Check */
		if (total != 0)
		{
			RawData = total/ SampleCount;
		}
		else
		{
			RawData = 0;
		}
	}

	
	return RawData;
}



 /*********   	End of Function 	*********************/


 ////////////////////////////////////////////////////////////////////////
///////////////////         Helper functions       ///////////////////////////
////////////////////////////////////////////////////////////////////////
/********************************************************************
 * Function		:    void ... (void)
 *
 * PreCondition	:    None
 *
 * Input		:    None
 *
 * Output		:    None
 *
 * Side Effects	:    None
 *
 * Overview		:
 *
 *
 *
 *
 *
 * Note			:
 *******************************************************************/
///////////////////////////////
void InitAvgDelay(void)
{
	WORD Index;
	for(Index=0; Index<NUM_CTMU_CH; Index++)	//Initialize delay count to 0 for all channels	 
	{
		avg_delay[channelIndex[Index]] = 0;
	}
}

/********************************************************************
 * Function		:    BYTE getChannelTouchStatus(void)
 *
 * PreCondition	:    None
 *
 * Input		:    None
 *
 * Output		:    Touch Status
 *
 * Side Effects	:    None
 *
 * Overview		:
 *
 *
 *
 *
 *
 * Note			: //NSC
 *******************************************************************/
///////////////////////////////
BYTE getChannelTouchStatus(WORD ChIndex)
{

	BYTE TouchStatus = KEY_NOT_PRESSED;

	/* Check for valid channel number being passed */
	if (! ( (ChIndex >= CHANNEL_AN0) &&  (ChIndex < MAX_ADC_CHANNELS)) )
	{
		/* return the error value if not a valid channel number */
		TouchStatus = KEY_NOT_PRESSED;
	}
	else	 //Handle the touch status for a valid channel
	{

			// 3. Is a keypad button pressed?
				if (curRawData[ChIndex] < (averageData[ChIndex] - tripValue[ChIndex])) 
				{
					unpressedCount[ChIndex] = 0;
					pressedCount[ChIndex] = pressedCount[ChIndex] + 1;
					// Single-Button Only (Lockout other keys option)
					if(pressedCount[ChIndex] > DEBOUNCECOUNT) 
					{
						TouchStatus = KEY_PRESSED;				
					}
				}else
				{
					pressedCount[ChIndex] = 0;
				}

				// 5. Is a button unpressed?
				if (curRawData[ChIndex] > (averageData[ChIndex] - tripValue[ChIndex] + hystValue[ChIndex])) 
				{		// Is scaledBigValue above { average - (trip + hysteresis) } ? .. Yes
						// Button is up.
					unpressedCount[ChIndex] = unpressedCount[ChIndex] + 1;
					if (unpressedCount[ChIndex] > DEBOUNCECOUNT)
					{ 	
						TouchStatus = KEY_NOT_PRESSED;
					}

				}
				else
				{
					unpressedCount[ChIndex] = 0;
				}
				
		 		// 6. Implement quick-release for a released button
		 		/* Untouched value - used as a average data */
				if (curRawData[ChIndex]  > averageData[ChIndex])
				{
					averageData[ChIndex] = curRawData[ChIndex];				// If curRawData is above Average, reset to high average.
				}
	}
	return TouchStatus;
}

/********************************************************************
 * Function		:    void DynamicTripValueCalculation(WORD Index)
 *
 * PreCondition	:    None
 *
 * Input		:    
 *
 * Output		:    
 *
 * Side Effects	:    None
 *
 * Overview		: calculate the dynamic trip value.
 *
 *
 *
 *
 *
 * Note			: //NSC
 *******************************************************************/
void DynamicTripValueCalculation(WORD Index)
{

    		tripValue[Index] = (averageData[Index] / KEYTRIPDIV);
    		hystValue[Index] = (tripValue[Index] / HYSTERESIS_VALUE);

}

/********************************************************************
 * Function		:    void mTouchCapPhy_AverageData(WORD Index)
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
 
void mTouchCapPhy_AverageData(WORD Index)
{

     BYTE Filter_type; 

	 /* Filtering based on channel specefic filter type */
	Filter_type = chFilterType[Index];

	/* Check the opted filter type of the channel. Copy if within limits. Else, the default type would be "1BY20" method. */
	if ( (Filter_type > FILTER_METHOD_FASTAVERAGE) )
	{
   		 Filter_type = FILTER_METHOD_1BY20; 
	}



	/* Process the average based on filter type selected by user in APi-mTouchCapAPI_SetUpChannel*/
	switch(Filter_type)
	{
	case FILTER_METHOD_1BY20:
		// 7. Average in the new value (channel based delay)
				// Always Average (all buttons one after the other in a loop)

		if (curRawData[Index]  > averageData[Index])
		{
			averageData[Index] = curRawData[Index];				// If curRawData is above Average, reset to high average.
		}

		if(avg_delay[Index] < NUM_AVG)
		{
			avg_delay[Index]++;						// Counting 0..8 has effect of every 9th count cycling the next button.
		}
		else
		{
			avg_delay[Index] = 0;					// Counting 0..4 will average faster and also can use 0..4*m, m=0,1,2,3..
		}

		if(avg_delay[Index] == NUM_AVG)
		{
				smallAvg[Index] = averageData[Index] / NUM_AVG; 	// SMALLAVG is the current average right shifted 4 bits
				// Average in raw value.
				averageData[Index] = averageData[Index] + ((curRawData[Index] / NUM_AVG) - smallAvg[Index]);
		}
	break;


	case FILTER_METHOD_GATEDAVEARAGE:
		//Filter Method CASE: Gated Average
		// 7. Average in the new value (channel based delay)
		// Always Average (all buttons one after the other in a loop)

		if(avg_delay[Index] < NUM_AVG)
		{
			avg_delay[Index]++;						// Counting 0..8 has effect of every 9th count cycling the next button.
		}
		else
		{
			avg_delay[Index] = 0;					// Counting 0..4 will average faster and also can use 0..4*m, m=0,1,2,3..
		}
		if(avg_delay[Index] == NUM_AVG)
		{
			/* Gated average only of no key pressed. */
			/* Stop averaging when press is being sensed. //STD:*/
			if ( KEY_NOT_PRESSED == getChannelTouchStatus(Index))
			{
				smallAvg[Index] = averageData[Index] / NUM_AVG; 	// SMALLAVG is the current average right shifted 4 bits
				// Average in raw value.
				averageData[Index] = averageData[Index] + ((curRawData[Index] / NUM_AVG) - smallAvg[Index]);
			}
		}

	break;

	case FILTER_METHOD_FASTAVERAGE:
			/* The latest current raw data would be the latest average data */
		if (curRawData[Index]  > averageData[Index])
		{
			averageData[Index] = curRawData[Index];				// If curRawData is above Average, reset to high average.
		}

	break;

}

	/* Dynamic trip value calculation . STD: */
	DynamicTripValueCalculation(Index);

}



