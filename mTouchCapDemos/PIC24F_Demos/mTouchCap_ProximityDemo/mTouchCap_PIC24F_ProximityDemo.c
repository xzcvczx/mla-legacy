/*****************************************************************************
 * FileName:        	mTouchCap_PIC24F_ProximityDemo.c
 * Dependencies:	
 * Processor:       	PIC24
 * Compiler:       	 	C30
 * Linker:          	MPLAB LINK30
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
 * Author               	Date        	Comment
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * C11842					4/1/2010		Initial Release
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * The purpose of this demo is to demonstrate proximity detection.
 * (detecting fingers or hand approaching the matrix keypad)

 * Note:  The PIC24F CTMU Evaluation board running the Proximity demo software may be sensitive
 * to the surface material on which it is placed or objects in its vicinity.  Your results
 * may be vary.
 * 
 * 1. Power the demo board
 * 2. The power ON led sequence displays.
 * 3. The demo executes an "autozero" feature displayed as 2 orange and 2 yellow leds. 
 * 4. When the orange and yellow leds go out, the demo board is ready for proximity detection.
 * 5. Place your hand near (approx 2-3 inches) away from the keypad.  The closer your hand,
 *    the more leds will illuminate.
 * 6. When your hand is very close or touching any of the buttons, all the leds will illuminate.
 * 7. Maintaining all the leds ON for more than 2 seconds causes the demo to switch to the
 *	  Matrix key mode. In this mode, touch one or more buttons and see the corresponding led illuminate.
 * 8. To return to proximity mode, press buttons 3, 7, then 11 in order.
 * 9. The power on sequence will repeat and the demo board will be proximity mode.
 *
 * Note 1:
 *    Occasionally the leds may illuminate on their own if the demo board is moved or handled.
 *    Performing a manual "autozero" calibration will correct this behavior.
 *    This can be done by performing steps 6 through 9 above.
 *
 * Note 2: The sensitivity of the Proximity can be controlled by changing the NUM_HF_READS
 *    define in "config.h" The default is 16.  Sensitivity increases when NUM_HF_READS is larger.
 
 *****************************************************************************/
#include "HardwareProfile.h"
#include "GenericTypeDefs.h"
#include "Compiler.h"
#include "Config.h"
#include "mTouchCap_PIC24F_Proximity.h"
#include "mTouchCap_CtmuAPI.h"
#include "mTouchCap_Timers.h"
#include "Display.h"

extern void mTouchCapApp_CreateMatrixKeys(void);
extern void mTouchCapApp_DemoMatrixKeys(void);

typedef enum _appState{PROXIMITY_MODE, MATRIX_KEY_MODE}appState;
typedef enum _keyState{KEY_N, KEY_3, KEY_7}keyState;


int main(void)
{
	
	
 	/* Instantiate the MatrixKeys */
	mTouchCapApp_CreateMatrixKeys();
 
    /* This is mandatory function call to initilize physical layer.
       Call this function before any application layer code.
     */
    mTouchCap_Init();                            

    /* Run "Chaser" LED sequence on slider LEDs */
    mTouchCapApp_powerOnLEDSeq();
    
    appState ApplicationState = PROXIMITY_MODE;
    keyState KeyState = KEY_N;
	BYTE keys;
	InitProximity();	
    
    while(1)
    {

        /* This flag is set by Timer 4 ISR when all channels have been read so valid data is available*/
      	if (dataReadyCTMU == 1)
        {
            dataReadyCTMU = 0;
            
            /* CRITICAL macro temporarily disables the Timer 4 interrupts so we can retrieve the data */
            CRITICAL;
            switch(ApplicationState)
            {
            	case PROXIMITY_MODE:
            	{
            		if(mTouchCap_Proximity() == 1)
            			ApplicationState = MATRIX_KEY_MODE;
            		
            	break;
            	}
	            case MATRIX_KEY_MODE:
				{
	           		mTouchCapApp_DemoMatrixKeys();
	  	           		 
	           		keys = pollMatrixKeys();
	            	
	            	switch(KeyState)
	            	{
		            	case KEY_N:
	                	{
	                		if(keys == 3)
	                		KeyState = KEY_3;
	            
	                		break;   	        	
	                	}
	            		case KEY_3:
	            		{
	            			if(keys == 7)
	            			KeyState = KEY_7;
	            			
	            			break;
	            		}
	            		case KEY_7:
	            	   	{
		            		if(keys == 11)
		            		{
	            			KeyState = KEY_N;
	            			ApplicationState = PROXIMITY_MODE;
	            			mTouchCapApp_powerOnLEDSeq();
	            			}
	            			break;
	            	    }
	                	
	            	}// END SWITCH
	            	
	   			}// END MATRIX_KEY_MODE CASE         	
            
            }//END SWITCH
            
            /* SAFE macro enables the Timer 4 interrupts */
			SAFE;

        }// end if(dataReadyCTMU)
     }//end while (1)
}// end main()


/********************************************************************
 * Function			:    void mTouchCapApp_PortSetup(void)
 *
 * PreCondition		:    None
 *
 * Input			:    None
 *
 * Output			:    None
 *
 * Side Effects		:    None
 *
 * Overview		: Initialize the Ports. Set the appropriate value of initialization in HardwareProfile.h file.

 * Note			: User can define the right values of Ports pins here.
 *******************************************************************/
void mTouchCapApp_PortSetup(void)
{
    CLKDIV = INIT_CLKDIV_VALUE;

    TRISB = INIT_TRISB_VALUE;    
    TRISC = INIT_TRISC_VALUE;
    TRISD = INIT_TRISD_VALUE;
    TRISE = INIT_TRISE_VALUE;
    TRISF = INIT_TRISF_VALUE;
    TRISG = INIT_TRISG_VALUE;

    PORTB = INIT_PORTB_VALUE;
    PORTC = INIT_PORTC_VALUE;
    PORTD = INIT_PORTD_VALUE;
    PORTE = INIT_PORTE_VALUE;
    PORTG = INIT_PORTG_VALUE;

     
    PORTE = 0x0000;
    PORTD = 0x0000;
}



/********************************************************************
 * Function			:    BYTE pollMatrixKeys(void)
 *
 * PreCondition		:    None
 *
 * Input			:    None
 *
 * Output			: 	 BYTE
 *
 * Side Effects		:    None
 *
 * Overview			:    Returns the key# of the key pressed on the matrix keypad
 *******************************************************************/
 
// Had to declare this extern since the MatrixKey structures are not global
extern MatrixKey Matrix_Key0;

BYTE pollMatrixKeys(void)
{
	UINT8 key_num;
	UINT8 value[16];
	
	// create a MatrixKey pointer and assign the know
		MatrixKey* pKey = &Matrix_Key0;
	
	for(key_num=0; key_num < 12; key_num++)
	{
		if(mTouchCapAPI_GetStatusMatrixButton(pKey++) == 1)
		{
			value[key_num] = 1;
			return(key_num);
		}	
		else
			value[key_num]=0;
			
	}	
		return(99);
}
