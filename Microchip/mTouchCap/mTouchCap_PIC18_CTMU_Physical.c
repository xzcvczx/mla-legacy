
/*****************************************************************************
 * FileName:        mTouch_PIC18_CTMU_Physical.c
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
 * Naveen. M				     14 Apr 2009	Version 0.1 Initial Draft
 * Nithin Kumar. M			     14 May 2009	Version 0.2 Updates
 * Sasha. M	/ Naveen. M	      4 June 2009  	Version 0.3 Updates
 * Sasha. M	/ Naveen. M		11 Nov 2009  			Version 1.0 Release
 *****************************************************************************/

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Includes	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
//#pragma  physicaldata 	udata	//P18SF:  
#include "mTouchCap_PIC18_CTMU_Physical.h"


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Variables	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
WORD	curRawData	   	[MAX_ADC_CHANNELS];	//Storage for CTMU channel values
WORD	tripValue   		[MAX_ADC_CHANNELS];	//Storage for the trip point for each channel	
WORD	hystValue   		[MAX_ADC_CHANNELS];	//Storage for the hysterisis value for each channel
WORD	pressedCount   	[MAX_ADC_CHANNELS];	//Storage for count of pressed value for each channel
WORD	unpressedCount  [MAX_ADC_CHANNELS];	//Storage for count of unpressed value for each channel
WORD	avg_delay 		[MAX_ADC_CHANNELS];	//Storage for count for average update for each channel		
WORD	averageData 	[MAX_ADC_CHANNELS];	// running average of CTMU channels	
WORD	smallAvg		[MAX_ADC_CHANNELS];	// current button smallavg
WORD	actualValue		[MAX_ADC_CHANNELS];	// actual raw A/D counts for each channel
WORD	channel_TRIM_value	[MAX_ADC_CHANNELS];	// actual raw A/D counts for each channel
WORD	channel_IRNG_value	[MAX_ADC_CHANNELS];	// actual raw A/D counts for each channel
BYTE	chFilterType		[MAX_ADC_CHANNELS];	// Channel filter type
BYTE	chDecodeMethod	[MAX_ADC_CHANNELS];	// decode method type

WORD		immediateValue;			// current button value
WORD		scaledBigValue;				// current button bigval
SHORT		startupCount;				// variable to 'discard' first N samples
SHORT		loopCount;

/* CHANGE_MCHP created a new channelIndex array for different
   analog channels */
WORD 	channelIndex[MAX_ADC_CHANNELS];
CHAR	trimbitsReady;

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
 * Note			: Stablizes the CTMU channel data for the time defined by User. Change the count "INITIAL_STARTUP_COUNT"
 *					in mTouch_config.h file.
 *******************************************************************/
void mTouchCapPhy_StablizeChannelData(void)	 
{
  	BYTE Index;
 	startupCount	= INITIAL_STARTUP_COUNT;

	while (startupCount > 0)
	{

		while(!dataReadyCTMU);

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




 /*********   	End of Function 	*********************/


/********************************************************************
 * Function		:    void mTouchCapPhy_Init(void) 
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
 * Note			:  Initializes the entire physical layer. This is mandatory function call to initilize physical layer. 
 *					Call this function before any application layer code. 
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
	for (Index=0; Index < NUM_CTMU_CH; Index++) 		   //NSC
	{
		mTouchCapAPI_SetUpCTMU_Default(channelIndex[Index]);
	}

	trimbitsReady = 1;
	mTouchCapPhy_TickInit();					// Initialize Timer for system tick

	 
        mTouchCapPhy_StablizeChannelData();

	 

 }

 /*********   	End of Function 	*********************/

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
 * Note			: Does the necessary CTMU setup. 
 *******************************************************************/

void mTouchCapPhy_CTMUSetup(void)
{


	Set_CTMU_ENABLE_Status(DISABLE);		//make sure CTMU is disabled 
	Idle_Mode_CTMU_Operation(DISABLE);		//CTMU continues to run in idle mode
	Set_CTMU_Time_Generation(DISABLE);		//disable edge delay generation mode of the CTMU
	Block_CTMU_Edge(DISABLE);		//edges are blocked
	Set_Edge_Sequence(DISABLE);		//edge sequence not needed
	Disable_CTMU_CurrentDischarge;	 	//Do not ground the current source
	Set_CTMU_Trigger_Control(DISABLE);		//Trigger Output is disabled
	Enable_CTMU_Negative_Edge2_Polarity;
	CTMU_Edge2_Source_Select(TRIGGER_SOURCE_EXTERNAL1);
	Enable_CTMU_Negative_Edge1_Polarity;
	CTMU_Edge1_Source_Select(TRIGGER_SOURCE_EXTERNAL1);
	

/***************************************************************************
--------------- Demo of API "mTouchCapAPI_CTMU_SetupCurrentSource" -----------------------		
		Setup the current source using the API "mTouchCapAPI_SetUpCTMU_Default". Pass the current source 
		range and Trim value as parameters.
***************************************************************************/
 
	mTouchCapAPI_CTMU_SetupCurrentSource(CURRENT_RANGE_BASE_CURRENT,0x00);

}




 /*********   	End of Function 	*********************/



/********************************************************************
 * Function		:    void mTouchCapPhy_AdcSetup(void)
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
 * Note			:	Does the necessary CTMU port setup.
 *******************************************************************/
void mTouchCapPhy_ChannelSetup(WORD ChannelNum)
{
         WORD chanvar;

#if defined(__18CXX)  		
        // Make sure that only selected channel is made input while the other port pins remain configured as output.
        //The following If-else needed becasue on PIC18F46J50, the CTMU channels are on PortA, PORTB, PORTC and PORTE

        // configure the port pins of the respective channels as input and as Analog
        // Update the current channel number which has to be processed by the ADC
        // configurations for the Channel 0

        if(ChannelNum == 0)	// compare not with reference to ChIndex but just with ChannelNum
        {
            TRISAbits.TRISA0 = 1;               //make the channel 0 as input based on the Index
            ANCON0 = 0xFE;                      //make the channels 0 as analog and other channels as Digital
            ANCON1 = 0x1F;                      //make the channel 8-12 as Digital
        }

        // configurations for the Channel 1
        else if(ChannelNum == 1)
        {
            TRISAbits.TRISA1 = 1;               //make the channel 1 as input based on the Index
            ANCON0 = 0xFD;                      //make the channels 1 as analog and other channels as Digital
            ANCON1 = 0x1F;                      //make the channel 8-12 as Digital
        }

        // configurations for the Channel 2
        else if(ChannelNum == 2)
        {
            TRISAbits.TRISA2 = 1;               //make the channel 2 as input based on the Index
            ANCON0 = 0xFB;                      //make the channel 2 as analog and other channels as Digital
            ANCON1 = 0x1F;                      //make the channel 8-12 as Digital
        }

        // configurations for the Channel 3
        else if(ChannelNum == 3)
        {
            TRISAbits.TRISA3 = 1;               //make the channel3 as input based on the Index
            ANCON0 = 0xF7;                      //make the channels 3 as analog and other channels as Digital
            ANCON1 = 0x1F;                      //make the channel 8-12 as Digital
        }

        // configurations for the Channel 4
        else if(ChannelNum == 4)
        {
            TRISAbits.TRISA5 = 1;               //make the channel4 as input based on the Index
            ANCON0 = 0xEF;                      //make the channels 4 as analog and other channels as Digital
            ANCON1 = 0x1F;                      //make the channel 8-12 as Digital
        }

        // configurations for the Channel 5
        else if(ChannelNum == 5)
        {
            TRISEbits.TRISE0 = 1;               //make the channel5 as input based on the Index
            ANCON0 = 0xDF;                      //make the channels 5 as analog and other channels as Digital
            ANCON1 = 0x1F;                      //make the channel 8-12 as Digital
        }

        // configurations for the Channel 6
        else if(ChannelNum == 6)
        {
            TRISEbits.TRISE1 = 1;               //make the channel6 as input based on the Index
            ANCON0 = 0xBF;                      //make the channels 6 as analog and other channels as Digital
            ANCON1 = 0x1F;                      //make the channel 8-12 as Digital
        }

        // configurations for the Channel 7
        else if(ChannelNum == 7)
        {       
            TRISEbits.TRISE2 = 1;               //make the channel7 as input based on the Index
            ANCON0 = 0x7F;                      //make the channels 7 as analog and other channels as Digital
            ANCON1 = 0x1F;                      //make the channel 8-12 as Digital
        }

        // channel 8,9,10, 12 are connected to RB2,RB3, RB1, and RB0 respectively.
        // configurations for the Channel 8
        else if(ChannelNum == 8)
        {
            TRISBbits.TRISB2 = 1;               //make the channel8 as input based on the Index
            ANCON0 = 0xFF;                      //make the channels 0-7 as Digital
            ANCON1 = 0x1E;                      //make the channel 8 as Analog and other channels as Digital
        }

        // configurations for the Channel 9
        else if(ChannelNum == 9)
        {
            TRISBbits.TRISB3 = 1;               //make the channel9 as input based on the Index
            ANCON0 = 0xFF;                      //make the channels 0-7 as Digital
            ANCON1 = 0x1D;                      //make the channel9 as Analog and other channels as Digital
        }

        // configurations for the Channel 10
        else if(ChannelNum == 0x0A)
        {
            TRISBbits.TRISB1 = 1;               //make the channel10 as input based on the Index
            ANCON0 = 0xFF;                      //make the channels 0-7 as Digital
            ANCON1 = 0x1B;                      //make the channel10 as Analog and other channels as Digital
        }
        // configurations for the Channel 11
        else if(ChannelNum == 0x0B)
        {

            // channel 11 is connected to RC2
            TRISCbits.TRISC2 = 1;               //make the channel11 as input based on the Index
            ANCON0 = 0xFF;                      //make the channels 0-7 as Digital
            ANCON1 = 0x17;                      //make the channel 11 as Analog and other channels as Digital
        }

        // configurations for the Channel 12
        else if(ChannelNum == 0x0C)
        {
            TRISBbits.TRISB0 = 1;               //make the selected channel12 as input based on the Index
            ANCON0 = 0xFF;                      //make the channels 0-7 as Digital
            ANCON1 = 0x0F;                      //make the channel 12 as Analog and other channels as Digital
        }

	  /* Connect the selected channel to ADC MUX */
         //load the channel number that has to be read
        mTouchCapADC_SetChannelADC(ChannelNum);

		ADCON1bits.ADCS = 0x02;
		ADCON1bits.ACQT = 0x01;
		ADCON1bits.ADCAL = 0;
		ADCON1bits.ADFM = 1;

#endif

}

 /*********   	End of Function 	*********************/

 

/********************************************************************
 * Function		:    void mTouchCapPhy_AdcSetup(void)
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
 * Note			: Does the necessary ADC peripheral setup.
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
 
 * 	 					 CURRENT_RANGE_100XBASE_CURRENT //Current source Range is 100*Base current (55uA) 
 *						 CURRENT_RANGE_10XBASE_CURRENT  //Current source Range is 10*Base current (5.5uA)
 *						 CURRENT_RANGE_BASE_CURRENT     //Current source Range is Base current (0.55uA)
 *						 CURRENT_SRC_DISABLED      //Current source disabled
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
 * Note			: Sets up the CTMU current source.
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
 * Overview		:
 *
 *
 *
 *
 *
 * Note			: Set the proper Trim  value of the current source as passed in the argument.
 *******************************************************************/

void	mTouchCapPhy_SetTrimValue( WORD TrimValue)
{

    CTMU_Trim_Value (TrimValue);

	
}



/********************************************************************
 * Function		:    void	mTouchCapPhy_Discharge_Current (void)
 * PreCondition	:    None
 *
 * Input		:    None
 *
 * Output		:    None
 *
 * Side Effects	:    None
 *
 * Overview		: Discharges the current source.
 *
 *
 *
 *
 *
 * Note			:
 *******************************************************************/

void	mTouchCapPhy_Discharge_Current (void)
{
		Enable_CTMU_CurrentDischarge;
		Nop(); Nop();    Nop();    Nop();    Nop();
		Nop(); Nop();    Nop();    Nop();    Nop();
		Nop();	 // Delay for CTMU charge time
		Disable_CTMU_CurrentDischarge;  
	
}

/*********   	End of Function 	*********************/



/********************************************************************
 * Function		:    void	mTouchCapPhy_Charge_Current (void)
 * PreCondition	:    None
 *
 * Input		:    None
 *
 * Output		:    None
 *
 * Side Effects	:    None
 *
 * Overview		: Charges the cusrrent for the time as per the value given to "CTMU_CHARGE_TIME_COUNT"
 * 					in mTouchCap_Config.h file.
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
 
#ifdef CTMU_GND_ON
       Enable_CTMU_CurrentDischarge; //CTMUCONHbits.IDISSEN = 1;               // Drain any charge on the circuit
        Nop();
        Nop();
        Nop();
        Nop();
        Nop();
        Nop();
        Nop();
        Nop();
        Nop();
        Nop();
        Nop();                      // Delay for CTMU charge time
       Disable_CTMU_CurrentDischarge;// CTMUCONHbits.IDISSEN = 0;
 #endif
		
		ADC1_Clear_Intr_Status_Bit;
		 
		Disbl_CTMUEdge2;
		Enable_CTMUEdge1;

	
		/* When we require to enaable EDGE1 or EDGE2, should we pass as a param*/
		for (loopIndex = 0; loopIndex < loopCount; loopIndex++)
		{ 
		 	Nop();	 // Delay for CTMU charge time  // PIC18 - 4 TCY to execute Nop(); //PIC24 - 2 TCY to execute Nop();		
		}     

   		Disbl_CTMUEdge1;

}




/*********************************************************************
 * Function		:    WORD mTouchCapPhy_Read_ADC()
 * PreCondition	:    None
 *
 * Input		:    None
 *
 * Output		:    None
 *
 * Side Effects	:    None
 *
 * Overview		:	Reads the ADC data of CTMU Channel.
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
        Enable_ADC_Sampling;    //ADCON0bits.GO = 1;          // Manually start the conversion
        // Wait for the A/D conversion to finish
         
		while(ADC_GO_Bit );
      
       Channel_Data  = mTouchCapADC_ReadADCBuff(0);	// Read the value from the A/D conversion
 
       ADC1_Clear_Intr_Status_Bit;                                      // Disable the interrupt flag

/*
	Disable_ADC_Sampling;
	ADC1_Clear_Intr_Status_Bit;
	ADC_Done_Bit      = 0; */
	
	 
         #ifdef GROUND_TEST                              

        // A/D mux must connect to channel for CTMU to drain charge
         
        Enable_CTMU_CurrentDischarge;//CTMUCONHbits.IDISSEN = 1;                               // Drain any charge on the circuit
        Nop();
        Nop();
        Nop();
        Nop();
        Nop();
        Nop();
        Nop();
        Nop();
        Nop();
        Nop();
        Nop();
         
        Disable_CTMU_CurrentDischarge;//CTMUCONHbits.IDISSEN = 0;
        Nop();
        Nop();
        Nop();
        Nop();
        Nop();
        Nop();
        Nop();
        Nop();
                
        #endif
	 return Channel_Data;
		
	
}


 /*********   	End of Function 	*********************/


/********************************************************************
 * Function		:   void mTouchCapPhy_InitCTMU(void) 
 *
 * PreCondition	:    None
 *
 * Input			:    None
 *
 * Output			:    None
 *
 * Side Effects		:    None
 *
 * Overview		: Does the initialization of all peripherals/ports necessary for CTMU operation.
 *
 *
 *
 *
 *
 * Note			:
 *******************************************************************/
/*....................................................................
. Init()
.
.		Initialization Routine to set up part's variables and
.	peripherals.
....................................................................*/
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
	
	Set_CTMU_ENABLE_Status(ENABLE);

	Enable_CTMU_CurrentDischarge;        // Drain any charge on the circuit
	Nop(); Nop();    Nop();    Nop();    Nop();	
	 
	Disable_CTMU_CurrentDischarge;
	Nop(); Nop();    Nop();    Nop();    Nop();	
					// Initialize Capacitive Sensing	
//	InitAvgDelay();				// Zero out the slow averaging function

}



/********************************************************************
 * Function		:   void mTouchCapPhy_ChargeTimeInit(void)
 *
 * PreCondition	:    None
 *
 * Input		:    None
 *
 * Output		:    None
 *
 * Side Effects	:    None
 *
 * Overview		: Initializes the charge time. User can change this by modifying the value given for "CTMU_CHARGE_TIME_COUNT"
 * 					in mTouchCap_Config.h file.
 *
 *
 *
 *
 *
 * Note			:
 *******************************************************************/
void mTouchCapPhy_ChargeTimeInit(void)
{
	loopCount = CTMU_CHARGE_TIME_COUNT;						//Loop counter - determines charge time for each 
}



/********************************************************************
 * Function		:    void mTouchCapPhy_ReadCTMU(WORD ChannelNumber) 
 *
 * PreCondition	:    None
 *
 * Input			:    Channel Number to be scanned. 				
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
 *
 * Output			:    None
 *
 * Side Effects		:    None
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

	/***************************************************************************
	--------------- Demo of API "mTouchCapAPI_ScanChannelIterative" -----------------------
		
	Read the channel Rawdata in an iterative fashion for the mentioned sample count using the 
	API "mTouchCapAPI_ScanChannelIterative". 
	***************************************************************************/
	immediateValue = mTouchCapAPI_ScanChannelIterative(ChannelNumber,NUM_HF_READS);


	//For debug - channels 6&7 are not enabled. They are clk & data lines for ICSP. use dummy values
	#ifdef DEBUG
	if(channelIndex[ChannelNumber] == CHANNEL_AN6 || channelIndex[ChannelNumber]  == CHANNEL_AN7)
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

	curRawData[ChannelNumber] = scaledBigValue;													// curRawData array holds the most recent BIGVAL values
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
 * Overview:       	This function necessary to maintain a constant default voltage levels in all the channels.
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

/*Do not change the sequence of loading below . */
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

/* end change */
}




