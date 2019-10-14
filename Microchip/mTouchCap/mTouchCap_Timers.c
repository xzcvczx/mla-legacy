
/*****************************************************************************
 * FileName:        	mTouchCap_Timers.c
 * Dependencies:
 * Processor:       	PIC18, PIC24
 * Compiler:       	C18, C30
 * Linker:          	MPLAB LINK30
 * Company:         Microchip Technology Incorporated
 *
 * Software License Agreement
 *
 * Copyright � 2009 Microchip Technology Inc.  
 * Microchip licenses this software to you solely for use with Microchip products, according to the terms of the  
 * accompanying click-wrap software license.  Microchip and its licensors retain all right, title and interest in 
 * and to the software.  All rights reserved. This software and any accompanying information is for suggestion only.  
 * It shall not be deemed to modify Microchip�s standard warranty for its products.  It is your responsibility to ensure 
 * that this software meets your requirements.

 * SOFTWARE IS PROVIDED �AS IS� WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESS OR IMPLIED, 
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
 * BDB          					26-Jun-2008 		First release
 * Naveen. M					14 Apr 2009		Version 0.1 Initial Draft
 * Nithin Kumar. M			     	14 May 2009		Version 0.2 Updates
 * Sasha. M	/ Naveen. M		4 June 2009  		Version 0.3 Updates
 * Bruce Bahn					10 Nov 2009  		Version 0.4 Updates
 * Sasha. M	/ Naveen. M		11 Nov 2009  			Version 1.0 Release
 *****************************************************************************/

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Includes	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

#include "mTouchCap_Timers.h"


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Variables	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
SHORT			T3counter;
SHORT			tick;
SHORT 			tickCount =0;
WORD			channelSelect = 0; 
CHAR 			dataReadyCTMU = 0;	

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Function Prototypes  ~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */





/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Declarations  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */






/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Function Definitions  ~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


/******************************************************************************
 * Function:        BYTE Delayms(void)
 *
 * PreCondition:    None
 *
 * Input:           BYTE millisecons   - Number of ms to delay
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        Delays the code- not necessairly accurate
 *
 * Note:            None.
 *****************************************************************************/


void Delayms(BYTE milliseconds)
{
   BYTE    ms;
   DWORD   count;
   
   ms = milliseconds;
   while (ms--)
   {
      count = MILLISECDELAY;

      while (count--)
      {
         ;
      }
   }
   Nop();
   return;
}


#ifdef __PIC24F__

/****************************************************************************
  Function:
    void T1Init( void )

  Description:
    This function sets up Timer 1 .

  Precondition:
    None

  Parameters:
    None

  Returns:
    None

  Remarks:
	Check Oscillator speed is correct
  ***************************************************************************/
#ifdef GUI_USB_INTERFACE

void T1Init( void )
{
 		IFS0bits.T1IF = 0;              //Clear flag
		IEC0bits.T1IE = 0;              //Enable T1 interrupt
		T1CONbits.TCKPS1=0; // 00 == 1:1
		T1CONbits.TCKPS0=0;

		T1CONbits.TCS=0;	/* Internal clock (Fosc/2)*/
		T1CONbits.TGATE=0;	/* Gated time accumalation disabled ?	*/

		PR1 = 0xFF; //Value after which interrupt to be generated.
    	TMR1 = 0x00;  /* Initialize the TIMER1 register */
    	/* start Timer1*/
		T1CONbits.TON = 1;
}

#endif	//#ifdef GUI_USB_INTERFACE
	
/*****************************************************************************/
/*               PIC24F related timer initializations                   */
/*****************************************************************************/
/****************************************************************************
  Function:
    void mTouchCapPhy_TickInit( void )

  Description:
    This function sets up Timer 4 to generate an interrupt every 1 ms.  This
	is the basic timer tick for the system.  The CTMU samples each channel 
	at a 1ms rate.  This yields 16ms to sample all of the channels.  This 
	timer is then disabled while the data gathered is updated by the main 
	program loop.

  Precondition:
    None

  Parameters:
    None

  Returns:
    None

  Remarks:
    The timer period and prescaler 
	values are dependent on the oscillator speed.
  ***************************************************************************/

void mTouchCapPhy_TickInit( void )
{
    	TMR4 = 0;
    	PR4 = TIMER_PERIOD;
    	T4CON = TIMER_ON | TIMER_SOURCE_INTERNAL | GATED_TIME_DISABLED | TIMER_16BIT_MODE | TIMER4_PRESCALER;
 			
		Set_ScanTimer_IF_Bit_State(DISABLE);              //Clear flag
    	Set_ScanTimer_IE_Bit_State(ENABLE);              //Enable interrupt
    	Set_ScanTimer_ON_Bit_State(ENABLE) ;              //Run timer
}



/****************************************************************************
  Function:
    void __attribute__((interrupt, shadow, auto_psv)) _T4Interrupt(void)

  Description:
    This function calls ReadCTMU() to monitor the
    touchpads.

  Precondition:
    Timer 4 and the Timer 4 interrupt must be enabled in order for
    this function to execute.  CTMUInit() must be called before
    Timer 4 and the Timer 4 interrupt are enabled.  The tickinit() function
	is called to setup timer 4

  Parameters:
    None

  Returns:
    None

  Remarks:
    None
  ***************************************************************************/
void __attribute__((interrupt, shadow, auto_psv)) _T4Interrupt(void)
{
	   /* Check the interrupt Flag */
	   if (IFS1bits.T4IF == HIGH)
	   {				
			if(channelSelect >= NUM_CTMU_CH)
			{
				/* Count upto MAX ADC channel though the actual scan happen only for channels which are enabled. 
				This helps to maintain the same interval for any channel when enabled or disabled. */
				if(channelSelect>= MAX_ADC_CHANNELS)
				{
					channelSelect = 0;	 
					dataReadyCTMU = 1;
				}
				else	
				{
					channelSelect++;
				}
			}
			else
			{
				/* Scans the CTMU channel for ADC voltage. It updates the "curRawData" and "actualValue" buffers. */
		   		mTouchCapPhy_ReadCTMU(channelIndex[channelSelect]);

				/* Periodically average the channel data based on User configuration. */
				mTouchCapPhy_AverageData(channelIndex[channelSelect]);		
				
				/* Set the channel number for scanning */
				channelSelect++;
			}
			
			/* Clear the interrupt Flag */
			IFS1bits.T4IF = LOW;
	   	}
}

/*****************************************************************************/
/*               PIC18F related timer initializations                   */
/*****************************************************************************/
#else //(__18CXX)

	//#define TIMER_PRESCALER		TIMER_PRESCALER_4 	//divide by 8
//	#define TIMER_PERIOD		2000; //@ 8MHz clock with 4x PLL = 32MHz
									  // 8MHz instruction cycle 1/8000000 * 4x 
									  // prescale * 2000 = 1mS


/****************************************************************************
  Function:
    void mTouchCapPhy_TickInit( void )

  Description:
    This function sets up Timer 4 to generate an interrupt every 1 ms.  This
	is the basic timer tick for the system.  The CTMU samples each channel 
	at a 1ms rate.  This yields 16ms to sample all of the channels.  This 
	timer is then disabled while the data gathered is updated by the main 
	program loop.

  Precondition:
    None

  Parameters:
    None

  Returns:
    None

  Remarks:
    The timer period and prescaler 
	values are dependent on the oscillator speed.
  ***************************************************************************/

	void mTouchCapPhy_TickInit( void )
	{   	  
		TMR2 = 0x00;
		PR2  = TIMER_PERIOD;
		T2CON  = TIMER_ON | TIMER_PRESCALER_4 | TIMER_POSTSCALER;			//about every 8 ms scan for Switch
	
		INTCONbits.GIE = 1;									//Enable Global Interrupt
		INTCONbits.PEIE = 1;								//Enable Peripheral Interrupt
	    	PIR1bits.TMR2IF = 0;	//Clear flag
		PIE1bits.TMR2IE = 1;	//Enable Timer2 interrupt		// TMR2ON =1; 		
	}

	/*******************************************************************************
	*  Interrupt service routine for timer 2
	*******************************************************************************/

	
	#pragma code InterruptVectorHigh = 0x08
	void
	InterruptVectorHigh (void)
	{
	  _asm
	    goto InterruptHandlerHigh //jump to interrupt routine
	  _endasm
	} //isr



/****************************************************************************
  Function:
 Timer2 Initialization 
  Description:
    This function calls ReadCTMU() to monitor the
    touchpads.

  Precondition:
    Timer 2 and the Timer 2 interrupt must be enabled in order for
    this function to execute.  CTMUInit() must be called before
    Timer 2 and the Timer 2 interrupt are enabled.  The tickinit() function
	is called to setup timer 2

  Parameters:
    None

  Returns:
    None

  Remarks:
    None
  ***************************************************************************/
//----------------------------------------------------------------------------
	#pragma code
	#pragma interrupt InterruptHandlerHigh

void InterruptHandlerHigh ()
{
		 /* Check the interrupt Flag */
		if (PIR1bits.TMR2IF == HIGH)
		{
			if(channelSelect >= NUM_CTMU_CH)
			{
				/* Count upto MAX ADC channel though the actual scan happen only for channels which are enabled. 
				This helps to maintain the same interval for any channel when enabled or disabled. */
				if(channelSelect>= MAX_ADC_CHANNELS)
				{
					channelSelect = 0;	 
					dataReadyCTMU = 1;
				}
				else	
				{
					channelSelect++;
				}
			}
			else
			{
				/* Scans the CTMU channel for ADC voltage. It updates the "curRawData" and "actualValue" buffers. */
		   		mTouchCapPhy_ReadCTMU(channelIndex[channelSelect]);

				/* Periodically average the channel data based on User configuration. */
				mTouchCapPhy_AverageData(channelIndex[channelSelect]);		
				
				/* Set the channel number for scanning */
				channelSelect++;
			}
			
		     /* Clear the interrupt Flag */
		     PIR1bits.TMR2IF =LOW;
		}
		
}

	#endif  //end of #else //(__18CXX)





