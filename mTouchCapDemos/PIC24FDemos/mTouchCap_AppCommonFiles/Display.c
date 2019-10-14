
/*****************************************************************************
 * FileName:        	Display.c
 * Dependencies:
 * Processor:       	PIC24
 * Compiler:       		C30
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
 * Author               		Date        			Comment
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * Naveen. M					19 Oct 2009  			Version 0.1 Release
 * Sasha. M	/ Naveen. M			11 Nov 2009  			Version 1.0 Release
 * Sasha. M	/ Nithin. 			10 April 2010  			Version 1.20 Release
 * Arpitha P					08 June 2011			Version 1.31 Release
 *****************************************************************************/

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Includes	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
#include "Compiler.h"
#include "GenericTypeDefs.h"
#include "Display.h"
#include "mTouchCap_PIC24_CTMU_Physical.h"


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Variables	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */



static SHORT previousPort=0xFF;					//storage of the last state of the
	
// This array is used to define the digital port direction for port D
// Each pair of port pins has 2 LEDs connected with opposite polarity
// Port D  must have the correct configuration, as well as correct digital
// pin state (1 or 0) to get the correct LED to light.  This array is 
// used to set the correct tristate for the port.



#ifndef PIC24F_LOW_PIN_DEVICE
	static WORD LED_ARRAY1_IO[8] = 
	{
	  	0x0001,0x0003,0x0007,0x000F,    //Green	 
     		0x001F,0x003F,0x007F,0x00FF	 //Yellow
 	};

	static WORD LED_ARRAY2_IO[8] =  	
    {
	 	0x0001,0x0003,0x0007,0x000F,    //Orange
     		0x001F,0x003F,0x007F,0x00FF	 //Red
    };

#endif

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
 * Function			:    void mTouchCapApp_2ChDisplay(SHORT Percent_Display)
 *
 * PreCondition		:    None
 *
 * Input			:    Percent_Display - Percentage level of touch
 *				     	
 * Output			:    None
 *
 * Side Effects		:    None
 *
 * Overview			:    The function will average out the samples and will
 *				      	 send the filtered value of the finger position on the 
 *				      	 2 channel slider.	
 *
 * Note				:
 *******************************************************************/

#ifdef USE_SLIDER_2CHNL

void mTouchCapApp_2ChDisplay(SHORT Percent_Display)
{
	WORD Index;
		
			pct_output_2Chl = (SHORT)Percent_Display;
			pct_sum_2Chl = (SHORT)pct_array_2Chl[0];				// Establish sum initially with first
			for (Index=1; Index<AVG_INDEX_2CHDATA; Index++) 
			{
				pct_sum_2Chl += pct_array_2Chl[Index];				// Calculate sum over iterations
				pct_array_2Chl[Index-1] = pct_array_2Chl[Index];	// Shift values
			}
			pct_array_2Chl[AVG_INDEX_2CHDATA-1] = pct_output_2Chl;	
			
			pct_output_2Chl = pct_sum_2Chl/AVG_INDEX_2CHDATA;
			
				
			if(pct_output_2Chl < 1)
			{
				mTouchCapApp_SetLEDDisplay(0);
			}
			else
			{
				mTouchCapApp_SetLEDDisplay(pct_output_2Chl);    	// turn on the LED's based on the percentage
			}
			
}
#endif

/********************************************************************
 * Function			:    void mTouchCapApp_4ChDisplay(WORD Percent_Display)
 *
 * PreCondition		:    None
 *
 * Input			:    Percent_Display - Percentage level of touch
 *
 * Output			:    None
 *
 * Side Effects		:    None
 *
 * Overview			:	The function will average out the samples and will
 *				      	send the filtered value of the finger position on the 
 *				      	2 channel slider.
 *
 *
 * Note				:
 *******************************************************************/
#ifdef USE_SLIDER_4CHNL

void mTouchCapApp_4ChDisplay(WORD Percent_Display)
{
	WORD Index;
			pct_output_4Chl = (SHORT)Percent_Display;
			pct_sum_4Chl = pct_array_4Chl[0];						// Establish sum initially with first
			for (Index=1; Index<6; Index++) 
			{
				pct_sum_4Chl += pct_array_4Chl[Index];				// Calculate sum over iterations
				pct_array_4Chl[Index-1] = pct_array_4Chl[Index];	// Shift values
			}
			pct_array_4Chl[5] = pct_output_4Chl;	
			
			pct_output_4Chl = pct_sum_4Chl/6;
			
		
			if(pct_output_4Chl < 1)
			{
				mTouchCapApp_SetLEDDisplay(1);
			}
			else
			{
				mTouchCapApp_SetLEDDisplay(pct_output_4Chl); 
			}
}
#endif

/********************************************************************
 * Function			:    void mTouchCapApp_SetLEDDisplay(SHORT input) 
 *
 * PreCondition		:    None
 *
 * Input			:    input - Position of the finger on the slider in terms of percentage(0-100)
 *
 * Output			:    None
 *
 * Side Effects		:    None
 *
 * Overview			: 	 Invokes the appropriate LED display function based on PIC controller selected.
 *
 *
 *
 * Note				:
 *******************************************************************/

void mTouchCapApp_SetLEDDisplay(SHORT input) 
{
	
	/* Call PIC24 LED display function */
	mTouchCapApp_SetPIC24F_LEDDisplay(input);
	

}


/********************************************************************
 * Function			:    void mTouchCapApp_SetPIC24F_LEDDisplay(SHORT input) 
 *
 * PreCondition		:    None
 *
 * Input			:    Position of the finger on the slider in terms of percentage(0-100)
 *
 * Output			:    None
 *
 * Side Effects		:    None
 *
 * Overview			: 	Sets the LEDs based on the position of the slider. 
 * 						Input is percentage of slider calculation from 0 to 100 %
 *
 *
 *
 * Note				:
 *******************************************************************/
void mTouchCapApp_SetPIC24F_LEDDisplay(SHORT input) 
{
#ifndef PIC24F_LOW_PIN_DEVICE
	if(previousPort != input)		//check for new value to prevent flicker of LEDS	 
	{
		switch (input) 
		{
			// Led  D58 ON RD10 LOW RD4 HI 1-6% Slider Value
			case 1:	
			case 2:	
			case 3:	
			case 4:	
			case 5:	
			case 6:	
			case 7:
						LATD = LED_ARRAY1_IO[0]; Nop();
						LATE = 0x0000;	
			break;

			// Led  D64 ON RD10 HI RD4 LOW 7-9% Slider Value

				
			case 8:	
			case 9:	
			case 10:	
			case 11:	
			case 12:
			case 13:		
			case 14:
						LATD = LED_ARRAY1_IO[1]; Nop();
						LATE = 0x0000;	
			break;

			// Led  D63 ON RD10 HI RD3 LOW 13-15% Slider Value

			case 15:
			case 16:
			case 17:			
			case 18:
			case 19:	
			case 20:	
						LATD = LED_ARRAY1_IO[2]; Nop();
						LATE = 0x0000;	
			break;

			// Led  D59 ON RD10 HI RD2 LOW 19-21% Slider Value	

			case 21:
			case 22:	
			case 23:	
			case 24:
			case 25:	
			case 26:
						LATD = LED_ARRAY1_IO[3]; Nop();
						LATE = 0x0000;	
			break;

			// Led  D57 ON RD10 HI RD1 LOW 25-27% Slider Value	

			case 27:
			case 28:	
			case 29:
			case 30:
			case 31:	
			case 32:	
						LATD = LED_ARRAY1_IO[4]; Nop();	
						LATE = 0x0000;	
			break;

			// Led  D56 ON RD9 HI RD4 LOW 31-33% Slider Value	

			case 33:
			case 34:
			case 35:
			case 36:
			case 37:
			case 38:	
						LATD = LED_ARRAY1_IO[5]; Nop();	
						LATE = 0x0000;	
			break;

			// Led  D55 ON RD9 HI RD3 LOW 37-39% Slider Value	

			case 39:
			case 40:	
			case 41:	
			case 42:
			case 43:	
			case 44:
						LATD = LED_ARRAY1_IO[6]; Nop();
						LATE = 0x0000;	
			break;

			// Led  D51 ON RD9 HI RD2 LOW 43-45% Slider Value	

			case 45:
			case 46:
			case 47:
			case 48:
			case 49:	
			case 50:		
						LATD = LED_ARRAY1_IO[7]; Nop();	
						LATE = 0x0000;	
			break;

			// Led  D49 ON RD9 HI RD1 LOW 49-51% Slider Value	

			case 51:
			case 52:
			case 54:	
			case 55:
			case 53:
			case 56:
						LATD = LED_ARRAY1_IO[7]; Nop();
						LATE = LED_ARRAY2_IO[0]; Nop();	
			break;

			// Led  D47 ON RD8 LOW RD4 HI 52-54% Slider Value	
			

			case 57:
			case 58:
			case 59:
			case 60:		
			case 61:
			case 62:
						LATD = LED_ARRAY1_IO[7]; Nop();
						LATE = LED_ARRAY2_IO[1]; Nop();	
			break;

			// Led  D45 ON RD8 LOW RD3 HI 58-60% Slider Value	

			case 63:
			case 64:
			case 65:
			case 66:	
			case 67:
			case 68:
						LATD = LED_ARRAY1_IO[7]; Nop();		
						LATE = LED_ARRAY2_IO[2]; Nop();
			break;

			// Led  D17 ON RD8 LOW RD2 HI 64-66% Slider Value	

			case 69:
			case 70:
			case 71:	
			case 72:
			case 73:
			case 74:
						LATD = LED_ARRAY1_IO[7]; Nop();		
						LATE = LED_ARRAY2_IO[3]; Nop();
			break;

			// Led  D16 ON RD8 LOW RD1 HI 70-72% Slider Value	
			case 75:
			case 76:
			case 77:
			case 78:
			case 79:
			case 80:

						LATD = LED_ARRAY1_IO[7]; Nop();		
						LATE = LED_ARRAY2_IO[4]; Nop();
			break;

			// Led  D15 ON RD5 LOW RD4 HI 76-78% Slider Value	
			case 81:
			case 82:	
			case 83:	
			case 84:				
			case 85:		
			case 86:

			case 87:	
			case 88:	
			case 89:
			case 90:	
				
						LATD = LED_ARRAY1_IO[7]; Nop();		
						LATE = LED_ARRAY2_IO[5]; Nop();
			break;

			// Led  D14 ON RD5 LOW RD3 HI 82-84% Slider Value	
		
			case 91:	
			case 92:
			case 93:
			case 94:
			case 95:
			
						LATD = LED_ARRAY1_IO[7]; Nop();		
						LATE = LED_ARRAY2_IO[6]; Nop();
			break;

			// Led  D41 ON RD5 HI RD3 LOW 85-87% Slider Value
			case 96:	
			case 97:
			case 98:	
			case 99:
			case 100:	
						LATD = LED_ARRAY1_IO[7]; Nop();		
						LATE = LED_ARRAY2_IO[7]; Nop();
			break;


			default:	
					break;
			
		} 

		/* Back it up*/
		previousPort = input;  
	}
#endif
} 

/********************************************************************
 * Function			:    void mTouchCapApp_SetEvalBoardLEDs(WORD LedNum) 
 *
 * PreCondition		:    None
 *
 * Input			:    The LED number that has to be displayed.
 *
 * Output			:    None
 *
 * Side Effects		:    None
 *
 * Overview			: Invokes the appropriate display function based on PIC controller selected.
 *
 *
 * Note				:
 *******************************************************************/

void mTouchCapApp_SetEvalBoardLEDs(WORD LedNum) 
{	
	/* Call PIC24 LED display function */
	mTouchCapApp_SetPIC24F_EvalBoardLEDs(LedNum);
	

}

	

/********************************************************************
 * Function			:    void mTouchCapApp_SetPIC24F_EvalBoardLEDs(WORD LedNum) 
 *
 * PreCondition		:    None
 *
 * Input			:    The LED number that has to be displayed.
 *
 * Output			:    None
 *
 * Side Effects		:    None
 *
 * Overview			:    This function will turn on the LED in the PIC24F CTMU Eval Board
 *				      	 based on the input that is passed to the function
 *
 *
 * Note				:
 *******************************************************************/
void mTouchCapApp_SetPIC24F_EvalBoardLEDs(WORD LedNum) 
{

#if defined(USE_DIRECT_KEYS) 
	#ifndef PIC24F_LOW_PIN_DEVICE
	if(previousPort != LedNum)		//check for new value to prevent flicker of LEDS
	{
		switch(LedNum)
		{	
			
		case LED_1:
			LATE=0x0000;
			LATD=0x0001;
			break;
				
		case LED_2:
			LATE=0x0000;
			LATD=0x0002;
			break;

		case LED_3:
			LATE=0x0000;
			LATD=0x0004;	
			break;	

		case LED_4:
			LATE=0x0000;
			LATD=0x0008;
			break;		
		
		case LED_5:
			LATE=0x0000;
			LATD=0x0010;
			break;

		case LED_6:
			LATE=0x0000;
			LATD=0x0020;
			break;
			
		case LED_7:
			LATE=0x0000;
			LATD=0x0040;
			break;

		case LED_8:
			LATE=0x0000;
			LATD=0x0080;
			break;

		case LED_9:
			LATE=0x0001;
			LATD=0x0000;
			break;
			
		case LED_10:
			LATE=0x0002;
			LATD=0x0000;
			break;
			
		case LED_11:
			LATE=0x0004;
			LATD=0x0000;
			break;
		

		case LED_12:
			LATE=0x0008;
			LATD=0x0000;
			break;
			
		case LED_13:
			LATE=0x0010;
			LATD=0x0000;
			break;
			
		case LED_14:
			LATE=0x0020;
			LATD=0x0000;
			break;
			
		case LED_15:
			LATE=0x0040;
			LATD=0x0000;
			break;
			

		default:
			LATE=0x0000; //RNT2
			LATD=0x0000;
			break;

		}

		/* Back it up  */  
		previousPort = LedNum;
	}
#endif
#endif
}


/********************************************************************
 * Function		:    void mTouchCapApp_DisplayMatrixKeyLEDs(SHORT input) 
 *
 * PreCondition	:    None
 *
 * Input		:    The LED number corresponding the Matrix key that is pressed.
 *
 * Output		:    None
 *
 * Side Effects	:    None
 *
 * Overview		: 	invokes the appropriate display function for the Matrix key Demo board 
 *				  	based on PIC controller selected.
 *
 * Note			:
 *******************************************************************/

void mTouchCapApp_DisplayMatrixKeyLEDs(SHORT input) 
{
	
	
	/* Call PIC24 LED display function */
	mTouchCapApp_DisplayPIC24F_MatrixKeyLEDs(input);
	
}
/********************************************************************
 * Function		:    void mTouchCapApp_DisplayPIC24F_MatrixKeyLEDs(WORD MatLedInput) 
 *
 * PreCondition	:    None
 *
 * Input		:    The LED number corresponding the Matrix key that is pressed.
 *
 * Output		:    None
 *
 * Side Effects	:    None
 *
 * Overview		:	 This function will turn on the LED based on the LED number corresponding to the pressed 
 *				  	 matrix key which is  passed as the argument to this function.This function will turn ON
 *                   the LED in the PIC24F CTMU Eval Board.
 *
 * Note			:
 *******************************************************************/
void mTouchCapApp_DisplayPIC24F_MatrixKeyLEDs(WORD MatLedInput) 
{
#ifdef USE_MATRIX_KEYS
 
#ifndef PIC24F_LOW_PIN_DEVICE
if(previousPort != MatLedInput)		//check for new value to prevent flicker of LEDS
	{
		 
	    previousPort = MatLedInput;
	/* There are 7 LEDs to indicate a press of any 8 keys (8 to 15)*/
	switch(MatLedInput)	 
	{	
		case LED_1:
			LATE=0x0000;
			LATD=0x0001;
			break;
				
		case LED_2:
			LATE=0x0000;
			LATD=0x0002;
			break;

		case LED_3:
			LATE=0x0000;
			LATD=0x0004;	
			break;	

		case LED_4:
			LATE=0x0000;
			LATD=0x0008;
			break;		
		
		case LED_5:
			LATE=0x0000;
			LATD=0x0010;
			break;

		case LED_6:
			LATE=0x0000;
			LATD=0x0020;
			break;
			
		case LED_7:
			LATE=0x0000;
			LATD=0x0040;
			break;

		case LED_8:
			LATE=0x0000;
			LATD=0x0080;
			break;

		case LED_9:
			LATE=0x0001;
			LATD=0x0000;
			break;
			
		case LED_10:
			LATE=0x0002;
			LATD=0x0000;
			break;
			
		case LED_11:
			LATE=0x0004;
			LATD=0x0000;
			break;
			
		case LED_12:
			LATE=0x0008;
			LATD=0x0000;
			break;

		case LED_NIL:
		default:
		 
			LATE=0x0000;  
			LATD=0x0000;
			break;
		}
	
	MatLedInput=previousPort;
	}
 	
else
{
	if( previousPort != MatLedInput)		//check for new value to prevent flicker of LEDS //nsc
	{
		 
		previousPort = MatLedInput;
			LATE=0x0000;
			LATD=0x0000;
		MatLedInput=previousPort;
	}
					
}
#endif
#endif

}



/********************************************************************
 * Function			:    void mTouchCapApp_powerOnLEDSeq(void)
 *
 * PreCondition		:    None
 *
 * Input			:    None
 *
 * Output			:    None
 *
 * Side Effects		:    None
 *
 * Overview			:   This function will turn ON the LEDs in the chaser sequence
 *
 * Note				:
 *******************************************************************/
void mTouchCapApp_powerOnLEDSeq(void)
{
	SHORT calcflag=0;
	SHORT ApplicationLimit = 0;
	SHORT chaserCount=1; 
	SHORT runFlag = TRUE;
	 int display_delay_count = 0;     

	ApplicationLimit = PIC24_POWER_ON_LED_SPEED_COUNT;	
	

		while(runFlag)
		{
			
			if(calcflag==0)
			{
				if(display_delay_count >= ApplicationLimit)
				{
					mTouchCapApp_SetLEDDisplay(chaserCount);
					display_delay_count=0;
					chaserCount++;
					if(chaserCount==100)
					calcflag=1;
				}
								
			}else
			{
				if(display_delay_count >= ApplicationLimit)
				{
					mTouchCapApp_SetLEDDisplay(chaserCount);
					display_delay_count=0;
					chaserCount--;
				    	if(chaserCount == 0)
                   			 {
                        			runFlag = FALSE;
                    			}
				}
			}		
			
			display_delay_count++;		
	
			if(runFlag == FALSE)
			{
				previousPort = 0xFF;
				#ifndef PIC24F_LOW_PIN_DEVICE
					LATD=0x0000;
					LATE=0x0000;
				#endif
				
			}			
			
		}	


}

