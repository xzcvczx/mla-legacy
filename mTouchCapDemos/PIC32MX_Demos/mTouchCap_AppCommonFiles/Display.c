/*****************************************************************************
 * FileName:        	Display.c
 * Dependencies:
 * Processor:       	PIC32,
 * Compiler:       		C32
 * Linker:          	MPLINK,MPLAB LINK32
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
BDB          26-Jun-2008 First release
SB			 22-Oct-2008
NK			 24-Apr-2009 Porting for 18F46J50 Eval Board 
MC           22-Ian-2010 Porting for PIC32MX795F512H
*******************************************************************************/
#include	"mTouchCap_CvdAPI.h"
#include	"display.h"


static SHORT previousPort=0xFF;					//storage of the last state of the

static unsigned int LED_ARRAY1_IO[16] = 

	{
	 0x0001,0x0003,0x0007,0x000F,    //Green
     0x001F,0x003F,0x007F,0x00FF,	 //Yellow
	 0x0001,0x0003,0x0007,0x000F,    //Orange
     0x001F,0x003F,0x007F,0x00FF,	 //Red
     };

#if defined  (USE_DIRECT_KEYS) || defined (USE_MATRIX_KEYS)
static unsigned int LED_ARRAY2_IO[16] =  	
    {
	 0x1,0x2,0x4,0x8,    		
	 0x10,0x20,0x40,0x80,
	 0x1,0x2,0x4,0x8,    		
	 0x10,0x20,0x40,0x80,	
     };
#endif

// variables to store the prvious PORT values
unsigned int Store_previous_PortD;		
unsigned int Store_previous_PortE;


#if defined  (USE_DIRECT_KEYS) || defined (USE_MATRIX_KEYS)
	static int          tempPort = 0;   //storage of the last state of the keys
#endif


// Flag to check if finger is moved in slider
unsigned char   Slider_Pressed_Flag=0;
// flag which will suggest that LED chaser function is executed
unsigned char Led_Chaser_executed_flag = 0; 

/*....................................................................
. SetLEDDisplay(int input)
.
.		Sets the LEDs based on the position of the slider.
.		Input is percentage of slider calculation from 0 to 100 %
.
....................................................................*/

/******************************************************************************
 * Function:        void SetLEDDisplay(int input)
 *
 * PreCondition:    None
 *
 * Input:           The position of the touch from the 2ch and 4ch slider plug-in
                    Board
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        This funcion will turn on the LED's based on the position 
                    of the touch on the Slider plug-in board
                    

 * Note:            None
 *****************************************************************************/

void SetLEDDisplay(int input) 
{

	switch (input) 
	{
		// Turn on LED1
		case 1:	
		case 2:	
		case 3:	
		case 4:	
		case 5:	
		case 6:	
		case 7:
		case 8:	
		case 9:	
		case 10:
		case 11:	
		case 12:
		case 13:
		case 14:		
		{		
					PORTD = LED_ARRAY1_IO[0]; Nop();
					PORTE = 0;
		            break;
		}            

		// Turn on LED2
		case 15:
		case 16:
		case 17:
		case 18:
		case 19:
		{
					PORTD = LED_ARRAY1_IO[1]; Nop();
                    PORTE = 0;
		    		break;
		}    		

		// Turn on LED3
		case 20:
		case 21:
		case 22:
		case 23:
		case 24:
		{
					PORTD = LED_ARRAY1_IO[2]; Nop();
					PORTE = 0;	
		            break;
		}            

		// Turn on LED4
		case 25:	
		case 26:
		case 27:	
		case 28:
		case 29:
   		{
					PORTD = LED_ARRAY1_IO[3]; Nop();
                    PORTE = 0;
                    break;
        }                  

		// Turn on LED5
		case 30:
		case 31:	
		case 32:
		case 33:
		case 34:
        {
					PORTD = LED_ARRAY1_IO[4]; Nop();
		            PORTE = 0;			
            		break;
        }    		

		// Turn on LED6
		case 35:
		case 36:
		case 37:
		case 38:	
		case 39:

        {
					PORTD = LED_ARRAY1_IO[5]; Nop();	
		            PORTE = 0;
		            break;		
		}            	
					
		// Turn on LED7	
		case 40:
		case 41:	
		case 42:
		case 43:	
		case 44:
        {
					PORTD = LED_ARRAY1_IO[6]; Nop();
		            PORTE = 0;
		            break;
		}      

		// Turn on LED8	
		case 45:
		case 46:
		case 47:
		case 48:	
		case 49:	
       	{
					PORTD = LED_ARRAY1_IO[7]; Nop();	
		            PORTE = 0;
		            break;
		}            

		// Turn on LED9
		case 50:
		case 51:
		case 52:
		case 53:
		case 54:	
        {
					PORTE = LED_ARRAY1_IO[8]; Nop();
		    		break;
		}

		// Turn on LED10	
		case 55:
		case 56:
		case 57:
		case 58:
		case 59:
        {
					PORTE = LED_ARRAY1_IO[9]; Nop();
					break;
		}

		// Turn on LED11	
		case 60:
		case 61:
		case 62:
		case 63:
		case 64:
    	{
				    PORTE = LED_ARRAY1_IO[10]; Nop();
				    break;
		}		    

		// Turn on LED12
		case 65:
		case 66:
		case 67:
		case 68:	
		case 69:
    	{
	 				PORTE = LED_ARRAY1_IO[11]; Nop();		
	 				break;
	    }				

        // Turn on LED13	
		case 70:
		case 71:
		case 72:
		case 73:
		case 74:
        {
					PORTE = LED_ARRAY1_IO[12]; Nop();
	        		break;
		}

		// Turn on LED14	
		case 75:	
		case 76:
		case 77:
		case 78:
		case 79:
    	{	
		    		PORTE = LED_ARRAY1_IO[13]; Nop();		
			        break;
		}	        

		// Turn on LED15	
		case 80:
		case 81:
		case 82:
		case 83:
		case 84:
        {
					PORTE = LED_ARRAY1_IO[14]; Nop();
					break;
		}

	    // Turn on LED16
		case 85:	
		case 86:
		case 87:
		case 88:
		case 89:		
		case 90:	
		case 91:
		case 92:
		case 93:		
		case 94:	
		case 95:
		case 96:	
		case 97:
		case 98:
		case 99:
		case 100:	
        {
				    PORTE = LED_ARRAY1_IO[15]; Nop();
				    break;
	    }

		default:	break;
		
	} 
    // This function is also used for the LED Chaser sequence display
    // the Led_Chaser_executed_flag  will be set only once in the complete cycle.
    // since the LED chaser sequence is executed only once during the initial startup
    // The below code within the if condition should be done only when sliders are 		enabled
    if(Led_Chaser_executed_flag )					//NC2
    {
		
	    // set the flag to denote that finger touch is sensed for Slider.
	    Slider_Pressed_Flag =1;				
		// Store the current PORTD and PORTE values to make sure that
		// these values are stored even when the finger is removed from the slider
		// This is required because for the Matrix and Direct Keys plug-in board
		// the LED's will be turned off when the finger is removed
		Store_previous_PortD = PORTD;		
	   	Store_previous_PortE = PORTE;
 	}

} //end of void SetLEDDisplay(int input)

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
				pct_sum_2Chl += pct_array_2Chl[Index];			// Calculate sum over iterations
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
				mTouchCapApp_SetLEDDisplay(pct_output_2Chl);    			// turn on the LED's based on the percentage
			}
			
}
#endif

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
		mTouchCapApp_DisplayPIC32MX_MatrixKeyLEDs(input);
}

/********************************************************************
 * Function		:    void mTouchCapApp_DisplayPIC32MX_MatrixKeyLEDs(WORD MatLedInput) 
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
 *                   the LED in the PIC32MX CVD Eval Board.
 *
 *
 * Note			:
 *******************************************************************/
void mTouchCapApp_DisplayPIC32MX_MatrixKeyLEDs(WORD MatLedInput) 
{
#ifdef USE_MATRIX_KEYS
 

if(previousPort != MatLedInput)		//check for new value to prevent flicker of LEDS
	{
		 
	    previousPort = MatLedInput;
	/* There are 7 LEDs to indicate a press of any 8 keys (8 to 15)*/
	switch(MatLedInput)	 
	{	
		case LED_1:
			PORTE=0x0000;
			PORTD=0x0001;
			break;
				
		case LED_2:
			PORTE=0x0000;
			PORTD=0x0002;
			break;

		case LED_3:
			PORTE=0x0000;
			PORTD=0x0004;	
			break;	

		case LED_4:
			PORTE=0x0000;
			PORTD=0x0008;
			break;		
		
		case LED_5:
			PORTE=0x0000;
			PORTD=0x0010;
			break;

		case LED_6:
			PORTE=0x0000;
			PORTD=0x0020;
			break;
			
		case LED_7:
			PORTE=0x0000;
			PORTD=0x0040;
			break;

		case LED_8:
			PORTE=0x0000;
			PORTD=0x0080;
			break;

		case LED_9:
			PORTE=0x0001;
			PORTD=0x0000;
			break;
			
		case LED_10:
			PORTE=0x0002;
			PORTD=0x0000;
			break;
			
		case LED_11:
			PORTE=0x0004;
			PORTD=0x0000;
			break;
			
		case LED_12:
			PORTE=0x0008;
			PORTD=0x0000;
			break;

		case LED_NIL:
		default:
		 
			PORTE=0x0000;  
			PORTD=0x0000;
			break;
		}
	
	MatLedInput=previousPort;
	}
 	
else
{
	if( previousPort != MatLedInput)		//check for new value to prevent flicker of LEDS //nsc
	{
		 
		previousPort = MatLedInput;
			PORTE=0x0000;
			PORTD=0x0000;
		MatLedInput=previousPort;
	}
					
}
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

	ApplicationLimit = PIC32_POWER_ON_LED_SPEED_COUNT;	


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
				PORTD=0x0000;
				PORTE=0x0000;

			}			
			
		}	


}

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

		/* Call PIC32MX LED display function */
		mTouchCapApp_SetPIC32MX_LEDDisplay(input);

}

void mTouchCapApp_SetPIC32MX_LEDDisplay(SHORT input) 
{

	switch (input) 
	{
		// Turn on LED1
		case 1:	
		case 2:	
		case 3:	
		case 4:	
		case 5:	
		case 6:	
		case 7:
		case 8:	
		case 9:	
		case 10:
		case 11:	
		case 12:
		case 13:
		case 14:		
		{		
					PORTD = LED_ARRAY1_IO[0]; Nop();
					PORTE = 0;
		            break;
		}            

		// Turn on LED2
		case 15:
		case 16:
		case 17:
		case 18:
		case 19:
		{
					PORTD = LED_ARRAY1_IO[1]; Nop();
                    PORTE = 0;
		    		break;
		}    		

		// Turn on LED3
		case 20:
		case 21:
		case 22:
		case 23:
		case 24:
		{
					PORTD = LED_ARRAY1_IO[2]; Nop();
					PORTE = 0;	
		            break;
		}            

		// Turn on LED4
		case 25:	
		case 26:
		case 27:	
		case 28:
		case 29:
   		{
					PORTD = LED_ARRAY1_IO[3]; Nop();
                    PORTE = 0;
                    break;
        }                  

		// Turn on LED5
		case 30:
		case 31:	
		case 32:
		case 33:
		case 34:
        {
					PORTD = LED_ARRAY1_IO[4]; Nop();
		            PORTE = 0;			
            		break;
        }    		

		// Turn on LED6
		case 35:
		case 36:
		case 37:
		case 38:	
		case 39:

        {
					PORTD = LED_ARRAY1_IO[5]; Nop();	
		            PORTE = 0;
		            break;		
		}            	
					
		// Turn on LED7	
		case 40:
		case 41:	
		case 42:
		case 43:	
		case 44:
        {
					PORTD = LED_ARRAY1_IO[6]; Nop();
		            PORTE = 0;
		            break;
		}      

		// Turn on LED8	
		case 45:
		case 46:
		case 47:
		case 48:	
		case 49:	
       	{
					PORTD = LED_ARRAY1_IO[7]; Nop();	
		            PORTE = 0;
		            break;
		}            

		// Turn on LED9
		case 50:
		case 51:
		case 52:
		case 53:
		case 54:	
        {
					PORTE = LED_ARRAY1_IO[8]; Nop();
		    		break;
		}

		// Turn on LED10	
		case 55:
		case 56:
		case 57:
		case 58:
		case 59:
        {
					PORTE = LED_ARRAY1_IO[9]; Nop();
					break;
		}

		// Turn on LED11	
		case 60:
		case 61:
		case 62:
		case 63:
		case 64:
    	{
				    PORTE = LED_ARRAY1_IO[10]; Nop();
				    break;
		}		    

		// Turn on LED12
		case 65:
		case 66:
		case 67:
		case 68:	
		case 69:
    	{
	 				PORTE = LED_ARRAY1_IO[11]; Nop();		
	 				break;
	    }				

        // Turn on LED13	
		case 70:
		case 71:
		case 72:
		case 73:
		case 74:
        {
					PORTE = LED_ARRAY1_IO[12]; Nop();
	        		break;
		}

		// Turn on LED14	
		case 75:	
		case 76:
		case 77:
		case 78:
		case 79:
    	{	
		    		PORTE = LED_ARRAY1_IO[13]; Nop();		
			        break;
		}	        

		// Turn on LED15	
		case 80:
		case 81:
		case 82:
		case 83:
		case 84:
        {
					PORTE = LED_ARRAY1_IO[14]; Nop();
					break;
		}

	    // Turn on LED16
		case 85:	
		case 86:
		case 87:
		case 88:
		case 89:		
		case 90:	
		case 91:
		case 92:
		case 93:		
		case 94:	
		case 95:
		case 96:	
		case 97:
		case 98:
		case 99:
		case 100:	
        {
				    PORTE = LED_ARRAY1_IO[15]; Nop();
				    break;
	    }

		default:	break;
		
	} 
 

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

		mTouchCapApp_SetPIC32MX_EvalBoardLEDs(LedNum);

}

/********************************************************************
 * Function			:    void mTouchCapApp_SetPIC32MX_EvalBoardLEDs(WORD LedNum) 
 *
 * PreCondition		:    None
 *
 * Input			:    The LED number that has to be displayed.
 *
 * Output			:    None
 *
 * Side Effects		:    None
 *
 * Overview			:    This function will turn on the LED in the PIC32 CVD Eval Board
 *				      	 based on the input that is passed to the function
 *
 *
 * Note				:
 *******************************************************************/
void mTouchCapApp_SetPIC32MX_EvalBoardLEDs(WORD LedNum) 
{

 
	if(previousPort != LedNum)		//check for new value to prevent flicker of LEDS
	{
		switch(LedNum)
		{	
			
		case LED_1:
			PORTE=0x0000;
			PORTD=0x0001;
			break;
				
		case LED_2:
			PORTE=0x0000;
			PORTD=0x0002;
			break;

		case LED_3:
			PORTE=0x0000;
			PORTD=0x0004;	
			break;	

		case LED_4:
			PORTE=0x0000;
			PORTD=0x0008;
			break;		
		
		case LED_5:
			PORTE=0x0000;
			PORTD=0x0010;
			break;

		case LED_6:
			PORTE=0x0000;
			PORTD=0x0020;
			break;
			
		case LED_7:
			PORTE=0x0000;
			PORTD=0x0040;
			break;

			case LED_8:
				PORTE=0x0000;
				PORTD=0x0080;
				break;

			case LED_9:
				PORTE=0x0001;
				PORTD=0x0000;
				break;
				
			case LED_10:
				PORTE=0x0002;
				PORTD=0x0000;
				break;
				
			case LED_11:
				PORTE=0x0004;
				PORTD=0x0000;
				break;
			

			case LED_12:
				PORTE=0x0008;
				PORTD=0x0000;
				break;
				
			case LED_13:
				PORTE=0x0010;
				PORTD=0x0000;
				break;
				
			case LED_14:
				PORTE=0x0020;
				PORTD=0x0000;
				break;
				
			case LED_15:
				PORTE=0x0040;
				PORTD=0x0000;
				break;
				
			default:
				PORTE=0x0000; 
				PORTD=0x0000;
				break;

		}

		/* Back it up  */  
		previousPort = LedNum;
	}

}

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
			pct_sum_4Chl = pct_array_4Chl[0];			// Establish sum initially with first
			for (Index=1; Index<6; Index++) 
			{
				pct_sum_4Chl += pct_array_4Chl[Index];		// Calculate sum over iterations
				pct_array_4Chl[Index-1] = pct_array_4Chl[Index];// Shift values
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

