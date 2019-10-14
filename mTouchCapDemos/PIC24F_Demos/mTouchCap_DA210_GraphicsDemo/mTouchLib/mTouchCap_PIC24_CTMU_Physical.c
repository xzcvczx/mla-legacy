
/*****************************************************************************
 * FileName:        	mTouchCap_PIC24_CTMU_Physical.c
 * Dependencies:
 * Processor:       	PIC18, PIC24
 * Compiler:      	C18, C30
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
 * Sasha. M	/ Naveen. M		4 May 2009  	Version 0.2 Updates
 * Sasha. M	/ Naveen. M		11 Nov 2009  			Version 1.0 Release
 *****************************************************************************/

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Includes	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
#include	"mTouchCap_CtmuAPI.h"
//#include "mTouchCap_PIC24_CTMU_Physical.h"


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Variables	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */



WORD	curRawData	   	[24] = {0,0,0,0,0,16,0,0,0,0,0,0,0,0,0,0,0,0,0,32,0,16,0,0};	//Storage for CTMU channel values	 
WORD	tripValue   	[24];	//Storage for the trip point for each channel	
WORD	hystValue   	[24];	//Storage for the hysterisis value for each channel
WORD	pressedCount   	[24];	//Storage for count of pressed value for each channel
WORD	unpressedCount  [24];	//Storage for count of unpressed value for each channel
WORD	avg_delay 		[24];//Storage for count for average update for each channel			
WORD	averageData [24];	// running average of CTMU channels	
WORD	smallAvg	[24];	// current button smallavg
WORD	actualValue	[24];	// actual raw A/D counts for each channel
WORD	channel_TRIM_value	[24];	// actual raw A/D counts for each channel
WORD	channel_IRNG_value	[24];	// actual raw A/D counts for each channel
BYTE	chFilterType	[24];	// Channel filter type
BYTE	chDecodeMethod	[24];	// decode method type
WORD 	channelIndex[MAX_ADC_CHANNELS];	//New channelIndex array for different analog channels
CHAR	trimbitsReady;
WORD	ChannelNum;




SHORT	startupCount;				// variable to 'discard' first N samples
WORD	immediateValue;			// current button value
WORD	scaledBigValue;				// current button bigval
SHORT	loopCount = CTMU_CHARGE_TIME_COUNT;   
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Function Prototypes  ~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */



/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Declarations  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */





/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Function Definitions  ~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


/////////////////////////////////////////////////////////////////////////////////////////////////////////////
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// 			Helper Functions
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/////////////////////////////////////////////////////////////////////////////////////////////////////////////


/********************************************************************
 * Function		:    void mTouchCapPhy_StablizeChannelData(void)
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
void mTouchCapPhy_StablizeChannelData(void)	
{
  	WORD Index;
 	startupCount	= INITIAL_STARTUP_COUNT;

	while (startupCount > 0)
	{
	//	while(!dataReadyCTMU);

		dataReadyCTMU = 0;			//clear flag

		Set_ScanTimer_IF_Bit_State(DISABLE);              //Clear timer 4 SHORT flag
		Set_ScanTimer_IE_Bit_State(DISABLE);              //Disable interrupt
		Set_ScanTimer_ON_Bit_State(DISABLE);              //Stop timer 4


		startupCount--;							// Decr. N # times to establish startup


		for(Index=0; Index<NUM_CTMU_CH; Index++)	
    		{
			averageData[channelIndex[Index]] = curRawData[channelIndex[Index]];		// During start up time, set Average each pass.
		}

		 
		Set_ScanTimer_IF_Bit_State(DISABLE);              //Clear flag
		Set_ScanTimer_IE_Bit_State(ENABLE);              //Enable interrupt
    		Set_ScanTimer_ON_Bit_State(ENABLE);              //Run timer
	}


}


/********************************************************************
 * Function		:    void mTouchCapPhy_Init(void) 
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
void mTouchCapPhy_Init(void) 
{
	WORD Index=0;

	/* Initialize Physical layer */
	mTouchCapPhy_InitCTMU();				// STD: Proper name required

	/* Initialize PulgIn Board ChIndex. 

	NOTE: This function must be called before setting up channel */
	mTouchCapPhy_SequenceChannels();

	/***************************************************************************
	--------------- Demo of API "mTouchCapAPI_SetUpCTMU_Default" -----------------------		
	Initialize the CTMU module to defaults using the API "mTouchCapAPI_SetUpCTMU_Default".
	***************************************************************************/
	trimbitsReady = 0;
	for (Index=0; Index < NUM_CTMU_CH; Index++) 		 
	{
		mTouchCapAPI_SetUpCTMU_Default(channelIndex[Index]);	
	}
	
	trimbitsReady = 1;
	mTouchCapPhy_TickInit();					// Initialize Timer for system tick

	 
        mTouchCapPhy_StablizeChannelData();


 }

/********************************************************************
 * Function		:   void mTouchCapPhy_CTMUSetup(void)
 *
 * PreCondition	:    None
 *
 * Input			:    None
 *
 * Output			:    None
 *
 * Side Effects		:    None
 *
 * Overview		: Does setup and initialization related to CTMU module of PIC.
 *
 *
 *
 *
 *
 * Note			:
 *******************************************************************/

void mTouchCapPhy_CTMUSetup(void)
{

 //CTMUCON
	Set_CTMU_ENABLE_Status(DISABLE);		//make sure CTMU is disabled 
	Idle_Mode_CTMU_Operation(DISABLE);		//CTMU continues to run in idle mode
	Set_CTMU_Time_Generation(DISABLE);		//disable edge delay generation mode of the CTMU
	Block_CTMU_Edge(DISABLE);		//edges are blocked
	Set_Edge_Sequence(DISABLE);		//edge sequence not needed
	Disble_CTMU_CurrentDischarge;		//Do not ground the current source
	Set_CTMU_Trigger_Control(DISABLE);		//Trigger Output is disabled
	Enble_CTMU_Negative_Edge2_Polarity;
	CTMU_Edge2_Source_Select(TRIGGER_SOURCE_EXTERNAL1);
	Enble_CTMU_Negative_Edge1_Polarity;
	CTMU_Edge1_Source_Select(TRIGGER_SOURCE_EXTERNAL1);
	
//CTMUICON

/***************************************************************************
--------------- Demo of API "mTouchCapAPI_CTMU_SetupCurrentSource" -----------------------		
		Setup the current source using the API "mTouchCapAPI_SetUpCTMU_Default". Pass the current source 
		range and Trim value as parameters.
***************************************************************************/
	mTouchCapAPI_CTMU_SetupCurrentSource(CURRENT_RANGE_100XBASE_CURRENT,0x00);

}

 /*********   	End of Function 	*********************/


/********************************************************************
 * Function		:    void mTouchCapPhy_AdcSetup(void)
 *
 * PreCondition	:    None
 *
 * Input			:    ChannelNum
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
void mTouchCapPhy_ChannelSetup(WORD Channel_Num)	 
{
        WORD ChMask;

//		Adc_PortA_Configuration(MAKE_ALL_PINS_DIGITAL);		
		ANSB = 0x0000;
		//Adc_PortB_Configuration(0xFFDF);	// A/D mux must connect to channel for CTMU to drain charge
//		Adc_PortC_Configuration(MAKE_ALL_PINS_DIGITAL);
//		Adc_PortD_Configuration(MAKE_ALL_PINS_DIGITAL);
		ANSE = 0x0000;
		//Adc_PortE_Configuration(0xFFDF);
//		Adc_PortF_Configuration(MAKE_ALL_PINS_DIGITAL);
		ANSG = 0x0000;
		//Adc_PortG_Configuration(0xFEFF);		

//all pins need not be output. Change as per application.  

//		TRISA = 0x0000;
		TRISB = TRISB & 0xFFDF; 	//RB5 = AN5 =  CTMU Pad 3
		LATB = 0x0000;
		PORTB = 0x0000;
//		TRISC = 0x0000;
//		TRISD = 0x0000;
		TRISE = TRISE & 0xFDFF;  	//RE9 = AN21 = CTMU Pad 2
		LATE = 0x0000;
		PORTE = 0x0000;
//		TRISF = 0x0000;
		TRISG = TRISG & 0xFEFF;		//RG8 = AN19 = CTMU Pad 1
		LATG = 0x0000;
		PORTG = 0x0000;

//		LATA = 0x0000;
		
//		LATC = 0x0000;
//		LATD = 0x0000;

//		LATF = 0x0000;


//		PORTA = 0x0000;

//		PORTC = 0x0000;
//		PORTD = 0x0000;

//		PORTF = 0x0000;


		Nop();    Nop();    Nop();    Nop();    Nop();    Nop();    Nop();    Nop();

//		ChMask=1;
//            	ChMask=ChMask << ChannelNum;
//            	TRISB = TRISB | ChMask;
//            	AD1PCFGL = AD1PCFGL & (~ChMask);

		ANSGbits.ANSG8 = 1;
		ANSEbits.ANSE9 = 1;
		ANSBbits.ANSB5 = 1;

		TRISB = TRISB | 0x0020;
		TRISE = TRISE | 0x0200;
		TRISG = TRISG | 0x0100;

		switch(Channel_Num)
		{
			case 19:
				AD1CHS = 19;
				break;

			case 21:
				 
				AD1CHS = 21;
				break;

			case 5:
				 
				AD1CHS = 5;
				break;

			default:
				break;
		}				

}

 /*********   	End of Function 	*********************/

/********************************************************************
 * Function		:    void mTouchCapPhy_AdcSetup(void)
 *
 * PreCondition	:    None
 *
 * Input			:    None
 *
 * Output			:    None
 *
 * Side Effects		:    None
 *
 * Overview		: Does ADC setup for selected PIC.
 *
 *
 *
 *
 *
 * Note			:
 *******************************************************************/
void mTouchCapPhy_AdcSetup(void)
{
	mTouchCapADC_SetChannelADC (0x00);
	mTouchCapADC_OpenADC();	
}

 /*********   	End of Function 	*********************/
 
/********************************************************************
 * Function		:    void mTouchCapPhy_SetupCurrentSourceRange(WORD CurrentSourceRange);
 *
 * PreCondition	:    None
 *
 * Input			:    
 
 * 	 					 CURRENT_RANGE_100XBASE_CURRENT //urrent source Range is 100*Base current (55uA) 
 *						 CURRENT_RANGE_10XBASE_CURRENT  //Current source Range is 10*Base current (5.5uA)
 *						 CURRENT_RANGE_BASE_CURRENT     //Current source Range is Base current (0.55uA)
 *						 CURRENT_SRC_DISABLED      //Current source disabled
 *
 * Output			:    None
 *
 * Side Effects		:    None
 *
 * Overview		: Sets the current source range.
 *
 *
 *
 *
 *
 * Note			:
 *******************************************************************/
void mTouchCapPhy_SetupCurrentSourceRange(WORD CurrentSourceRange)
{
	CTMU_Select_Current_Source(CurrentSourceRange);
 }

 /*********   	End of Function 	*********************/

 /********************************************************************
 * Function		:    void	mTouchCapPhy_SetTrimValue( WORD TrimValue);
 * PreCondition	:    None
 *
 * Input			:    None
 *
 * Output			:    None
 *
 * Side Effects		:    None
 *
 * Overview		: Sets the Trim bit value as desired.
 *
 *
 *
 *
 *
 * Note			:
 *******************************************************************/

void	mTouchCapPhy_SetTrimValue( WORD TrimValue)
{

    CTMU_Trim_Value (TrimValue);
	
}

/********************************************************************
 * Function		:    void	mTouchCapPhy_Discharge_Current (void)
 * PreCondition	:    None
 *
 * Input			:    None
 *
 * Output			:    None
 *
 * Side Effects		:    None
 *
 * Overview		: Discharges current source.
 *
 *
 *
 *
 *
 * Note			:
 *******************************************************************/

void	mTouchCapPhy_Discharge_Current (void)
{		
		Enble_CTMU_CurrentDischarge;
		Nop(); Nop();    Nop();    Nop();    Nop();
		Nop(); Nop();    Nop();    Nop();    Nop();
		Nop();	 // Delay for CTMU charge time
		Disble_CTMU_CurrentDischarge;
	
}

 /*********   	End of Function 	*********************/

/********************************************************************
 * Function		:    void	mTouchCapPhy_Charge_Current (void)
 * PreCondition	:    None
 *
 * Input			:    None
 *
 * Output			:    None
 *
 * Side Effects		:    None
 *
 * Overview		: Charges the current source for the duration controlled by "loopCount" value.
 *
 *
 *
 *
 *
 * Note			:
 *******************************************************************/

void	mTouchCapPhy_Charge_Current (void)
{		
		WORD loopIndex;
		
		ADC1_Clear_Intr_Status_Bit;
		Enable_ADC_Sampling;
		Disbl_CTMUEdge2;
		Enble_CTMUEdge1;

		if (0 != loopCount) //n:ref
		{		
			/* When we require to enaable EDGE1 or EDGE2, should we pass as a param*/
			for (loopIndex = 0; loopIndex < loopCount; loopIndex++) 
			Nop();	 // Delay for CTMU charge time  // PIC18 - 4 TCY to execute Nop(); //PIC24 - 2 TCY to execute Nop();
		}
   		Disbl_CTMUEdge1;
	
}

/*********************************************************************
 * Function		:    WORD mTouchCapPhy_Read_ADC()
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

WORD mTouchCapPhy_Read_ADC(void)
{

	WORD Channel_Data;

	ADC1_Clear_Intr_Status_Bit;
	Disable_ADC_Sampling;	
	while(!ADC1_IF_Bit);             // Wait for the A/D conversion to finish
	
	Channel_Data  = mTouchCapADC_ReadADCBuff(0);	// Read the value from the A/D conversion

	Disable_ADC_Sampling;
	ADC1_Clear_Intr_Status_Bit;
	ADC_Done_Bit      = 0; 

	 return Channel_Data;
		
	
}

 /*********   	End of Function 	*********************/



/********************************************************************
 * Function		:    void mTouchCapPhy_InitCTMU(void) 
 *
 * PreCondition	:    None
 *
 * Input			:    None
 *
 * Output			:    None
 *
 * Side Effects		:    None
 *
 * Overview		: Initialization Routine to set up part's variables and peripherals.
 *
 *
 *
 *
 *
 * Note			:
 *******************************************************************/
void mTouchCapPhy_InitCTMU(void) 
{
	/* Initialize PORTs  */
	mTouchCapApp_PortSetup();
	
 	/* Initialize CTMU  */
	mTouchCapPhy_CTMUSetup();

	/* Initialize ADC  */
	mTouchCapPhy_AdcSetup();

	Set_Adc_Enable_State(ENABLE);

	Enable_ADC_Sampling;
	
	Set_CTMU_ENABLE_Status (ENABLE);

	Enble_CTMU_CurrentDischarge;        // Drain any charge on the circuit
	Nop(); Nop();    Nop();    Nop();    Nop();	
	Disble_CTMU_CurrentDischarge;
	Nop(); Nop();    Nop();    Nop();    Nop();						
}

/********************************************************************
 * Function		:    void mTouchCapPhy_ChargeTimeInit(void)
 *
 * PreCondition	:    None
 *
 * Input			:    None
 *
 * Output			:    None
 *
 * Side Effects		:    None
 *
 * Overview		: Loads the charge-time duration. The value "CTMU_CHARGE_TIME_COUNT" can be adjusted as per your application.
 *
 *
 *
 *
 *
 * Note			:
 *******************************************************************/
void mTouchCapPhy_ChargeTimeInit(void)
{
	loopCount 	= CTMU_CHARGE_TIME_COUNT;	//Loop counter - determines charge time for each 									

}


/********************************************************************
 * Function		:    void mTouchCapPhy_ReadCTMU(WORD ChannelNumber) 
 *
 * PreCondition	:    None
 *
 * Input			:    ChannelNumber
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
 *
 * Output			:    None
 *
 * Side Effects		    None
 *
 * Overview		: Scans the CTMU channel for ADC voltage. It updates the "curRawData" and "actualValue" buffers.
 *
 *
 *
 *
 *
 * Note			:
 *******************************************************************/		
void mTouchCapPhy_ReadCTMU(WORD ChannelNumber) 
{

#ifdef DETAILED_CALCULATION
	DWORD total = 0;
	SHORT chrd;
	// Get the raw sensor reading.
	for(chrd=0; chrd< NUM_HF_READS; chrd++)
	{
		
	/***************************************************************************
	--------------- Demo of API "mTouchCapAPI_CTMU_GetChannelReading" -----------------------		
		Get the channdel ADC data using the API "mTouchCapAPI_CTMU_GetChannelReading". 
	***************************************************************************/
		immediateValue = mTouchCapAPI_CTMU_GetChannelReading(ChannelNumber);
		//End of CTMU read
		total = total + immediateValue;
	}

	
	#ifdef GROUND_TEST					// Note: A/D conversion not used 
		/* CHANGE_MCHP */				// A/D mux must connect to channel for CTMU to drain charge
		mTouchCapPhy_Discharge_Current ();
	#endif

	/* Error check */
	if (total != 0) 
	{
		immediateValue = total/NUM_HF_READS;
	}
	else
	{
		immediateValue = 0;
	}
	
#else /* One shot calculation using Iterative method */
		/***************************************************************************
		--------------- Demo of API "mTouchCapAPI_ScanChannelIterative" -----------------------
		
		Read the channel Rawdata in an iterative fashion for the mentioned sample count using the 
		API "mTouchCapAPI_ScanChannelIterative". 
	***************************************************************************/
	immediateValue = mTouchCapAPI_ScanChannelIterative(ChannelNumber,NUM_HF_READS);
#endif

	//For debug - channels 6&7 are not enabled. They are clk & data lines for ICSP. use dummy values
	#ifdef DEBUG
	if(channelIndex[ChannelNumber] == CHANNEL_AN6 || channelIndex[ChannelNumber] == CHANNEL_AN7) //RNT1
	{
		immediateValue = 0x240;
	}
	// ...
	#endif

#ifdef GUI_USB_INTERFACE 
	scaledBigValue   = immediateValue  * 64; 	// BIGVAL is current measurement left shifted 4 bits for GUI display
#else
	scaledBigValue   =  immediateValue;			// Copy the ADC value of the channel
#endif

	curRawData[ChannelNumber] = scaledBigValue;								// curRawData array holds the most recent BIGVAL values
	actualValue[ChannelNumber] = immediateValue;
	
} //end ReadCTMU()




/******************************************************************************
 * Function:       void CTMU_Current_trim_config(int channel_no)
 *
 * PreCondition:    None
 *
 * Input:           current Channel number that is being processed by ADC
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:       	This function will set the trim bits for 2 channel slider
 *					4 channel slider, Direct key and MAtrix key board
 *
 * Note:            None
 *****************************************************************************/
void CTMU_Current_trim_config(int channel_no)
{

	if(trimbitsReady)
	{
		mTouchCapAPI_CTMU_SetupCurrentSource(channel_IRNG_value[channel_no],channel_TRIM_value[channel_no]);
	}

}  //end of void CTMU_Current_trim_config(int channel_no)


/********************************************************************
 Function		:    void  mTouchCapPhy_SequenceChannels(void)
 
 PreCondition	:   None

 Input         	:   None
  
 Output		:   None
 
 Side Effects	:    None
 
 Overview		: This function initializes the ChIndex based on boards connected/Enabled.
 
 
 
  Note			: Here the code takes the input from the mTouch_Config.h file for the selection of different 
				  analog channels and stores the appropriate channel number.
				 
 *******************************************************************/
void  mTouchCapPhy_SequenceChannels(void)
{
	WORD Index;
	
	Index=0; //Reinitialize

/*Do not change the sequence of loading below .*/
#ifdef	USE_MATRIX_KEYS
#ifdef KEYROW1
	channelIndex[Index]=KEYROW1;	
	Index++;
#endif
#ifdef KEYROW2
	channelIndex[Index]=KEYROW2;
	Index++;
#endif
#ifdef KEYROW3	
	channelIndex[Index]=KEYROW3;
	Index++;
#endif
#ifdef KEYROW4	
	channelIndex[Index]=KEYROW4;
	Index++;
#endif
#ifdef KEYCOL1	
	channelIndex[Index]=KEYCOL1;
	Index++;
#endif
#ifdef KEYCOL2	
	channelIndex[Index]=KEYCOL2;
	Index++;
#endif
#ifdef KEYCOL3	
	channelIndex[Index]=KEYCOL3;	
	Index++;
#endif
#ifdef KEYCOL4
	channelIndex[Index]=KEYCOL4;	
	Index++;
#endif
#endif //#ifdef	USE_MATRIX_KEYS


#ifdef USE_SLIDER_2CHNL
	channelIndex[Index]=SLDR2CHNL1;	
	Index++;
	channelIndex[Index]=SLDR2CHNL2;	
	Index++;
#endif


#ifdef USE_SLIDER_4CHNL	
	channelIndex[Index]=SLDR4CHNL1;	
	Index++;
	channelIndex[Index]=SLDR4CHNL2;	
	Index++;
	channelIndex[Index]=SLDR4CHNL3;	
	Index++;
	channelIndex[Index]=SLDR4CHNL4;	
	Index++;			
#endif


#ifdef DIRECTKEY1		
	channelIndex[Index]=DIRECTKEY1;
	Index++;
#endif
#ifdef DIRECTKEY2	
	channelIndex[Index]=DIRECTKEY2;	
	Index++;
#endif
#ifdef DIRECTKEY3		
	channelIndex[Index]=DIRECTKEY3;	
	Index++;
#endif
#ifdef DIRECTKEY4	
	channelIndex[Index]=DIRECTKEY4;	
	Index++;
#endif
#ifdef DIRECTKEY5
	channelIndex[Index]=DIRECTKEY5;	
	Index++;
#endif
#ifdef DIRECTKEY6	
	channelIndex[Index]=DIRECTKEY6;	
	Index++;
#endif
#ifdef DIRECTKEY7		
	channelIndex[Index]=DIRECTKEY7;	
	Index++;
#endif
#ifdef DIRECTKEY8	
	channelIndex[Index]=DIRECTKEY8;	
	Index++;
#endif
#ifdef DIRECTKEY9		
	channelIndex[Index]=DIRECTKEY9;
	Index++;
#endif
#ifdef DIRECTKEY10	
	channelIndex[Index]=DIRECTKEY10;	
	Index++;
#endif
#ifdef DIRECTKEY11		
	channelIndex[Index]=DIRECTKEY11;	
	Index++;
#endif
#ifdef DIRECTKEY12	
	channelIndex[Index]=DIRECTKEY12;	
	Index++;
#endif
#ifdef DIRECTKEY13
	channelIndex[Index]=DIRECTKEY13;	
	Index++;
#endif
#ifdef DIRECTKEY14	
	channelIndex[Index]=DIRECTKEY14;	
	Index++;
#endif
#ifdef DIRECTKEY15		
	channelIndex[Index]=DIRECTKEY15;	
	Index++;
#endif
#ifdef DIRECTKEY16	
	channelIndex[Index]=DIRECTKEY16;	
	Index++;
#endif

/* end change */
}



