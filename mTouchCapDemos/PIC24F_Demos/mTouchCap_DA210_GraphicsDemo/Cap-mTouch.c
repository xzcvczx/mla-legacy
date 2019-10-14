/*****************************************************************************
 *
 * Handler for cap touch keys
 *
 *****************************************************************************
 * FileName:        Cap-mTouch.c
 * Dependencies:    Cap-mTouch.h
 * Processor:       PIC24F
 * Compiler:       	MPLAB C30
 * Linker:          MPLAB LINK30
 * Company:         Microchip Technology Incorporated
 *
 * Software License Agreement
 *
 * Copyright © 2008 Microchip Technology Inc.  All rights reserved.
 * Microchip licenses to you the right to use, modify, copy and distribute
 * Software only when embedded on a Microchip microcontroller or digital
 * signal controller, which is integrated into your product or third party
 * product (pursuant to the sublicense terms in the accompanying license
 * agreement).  
 *
 * You should refer to the license agreement accompanying this Software
 * for additional information regarding your rights and obligations.
 *
 * SOFTWARE AND DOCUMENTATION ARE PROVIDED “AS IS” WITHOUT WARRANTY OF ANY
 * KIND, EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY
 * OF MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR
 * PURPOSE. IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE LIABLE OR
 * OBLIGATED UNDER CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION,
 * BREACH OF WARRANTY, OR OTHER LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT
 * DAMAGES OR EXPENSES INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL,
 * INDIRECT, PUNITIVE OR CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA,
 * COST OF PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY
 * CLAIMS BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF),
 * OR OTHER SIMILAR COSTS.
 *
 * Author               Date        Comment
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * Bruce Bohn			01/17/10	...
 * 
 *****************************************************************************/
#include "Cap-mTouch.h"
#include "p24Fxxxx.h"
#include "mTouchCap_PIC24F_DA210CapTouchDemo.h"

//////////////////////// LOCAL PROTOTYPES ////////////////////////////


//////////////////////// GLOBAL VARIABLES ////////////////////////////
	int tempANSB;
	int tempANSE;
	int tempANSG;
	int tempTRISB;
	int tempTRISG;
	int tempTRISE;
	int tempLATB;
	int tempLATE;
	int tempLATG;
	int tempPORTB;
	int tempPORTE;
	int tempPORTG;



/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Variables	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
SHORT			T3counter;
SHORT			tick;
SHORT 			tickCount =0;
WORD			channelSelect = 0; 
CHAR 			dataReadyCTMU = 0;	





/********************************************************************
 * Function		:    void mTouchCapApp_PortSetup(void)
 *
 * PreCondition	:    None
 *
 * Input			:    None
 *
 * Output			:    None
 *
 * Side Effects		:    None
 *
 * Overview		: Initialize the Ports. Set the appropriate value of initialization in HardwareProfile.h file.
 *
 *
 *
 *
 *
 * Note			: User can define the right values of Ports pins here.
 *******************************************************************/
void mTouchCapApp_PortSetup(void)
{
    CLKDIV = INIT_CLKDIV_VALUE;

    TRISB = INIT_TRISB_VALUE;   //RNT1:
//    TRISC = INIT_TRISC_VALUE;
    TRISD = INIT_TRISD_VALUE;
    TRISE = INIT_TRISE_VALUE;
    TRISF = INIT_TRISF_VALUE;
    TRISG = INIT_TRISG_VALUE;

    PORTB = INIT_PORTB_VALUE;
    PORTC = INIT_PORTC_VALUE;
    PORTD = INIT_PORTD_VALUE;
    PORTE = INIT_PORTE_VALUE;
    PORTG = INIT_PORTG_VALUE;


    PORTE = 0x0008;
    PORTD = 0x0000;
}


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
//if(update == 0)
//{
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

				SaveIOsettings();
				/* Scans the CTMU channel for ADC voltage. It updates the "curRawData" and "actualValue" buffers. */
		   		mTouchCapPhy_ReadCTMU(channelIndex[channelSelect]);

				/* Periodically average the channel data based on User configuration. */
				mTouchCapPhy_AverageData(channelIndex[channelSelect]);		
				RestoreIOsettings();
				/* Set the channel number for scanning */
				channelSelect++;
			}
			
			/* Clear the interrupt Flag */
			IFS1bits.T4IF = LOW;
	   	}
//}
}


void SaveIOsettings(void)
{
	tempANSB = ANSB;
	tempANSE = ANSE;
	tempANSG = ANSG;
	tempTRISB = TRISB;
	tempTRISG = TRISG;
	tempTRISE = TRISE;
	tempLATB = LATB;
	tempLATE = LATE;
	tempLATG = LATG;
	tempPORTB = PORTB;
	tempPORTE = PORTE;
	tempPORTG = PORTG;
}


void RestoreIOsettings(void) 
{
	ANSB = tempANSB;
	ANSE = tempANSE;
	ANSG = tempANSG;
	TRISB = tempTRISB;
	TRISG = tempTRISG;
	TRISE = tempTRISE;
	LATB = tempLATB;
	LATE = tempLATE;
	LATG = tempLATG;
	PORTB = tempPORTB;
	PORTE = tempPORTE;
	PORTG = tempPORTG;
}
