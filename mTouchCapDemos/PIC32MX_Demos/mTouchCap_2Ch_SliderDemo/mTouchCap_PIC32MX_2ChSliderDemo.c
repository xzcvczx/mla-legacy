/*****************************************************************************
* FileName:        	mTouchCap_PIC32MX_2ChSliderDemo.c
* Dependencies:	
* Processor:       	PIC32
* Compiler:       	C32
* Linker:          	MPLAB LINK32
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
* Author               		Date        		Comment
*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
BDB          26-Jun-2008 First release
SB			 22-Oct-2008
NK			 24-Apr-2009 Porting for 18F46J50 Eval Board
MC           22-Ian-2010 Porting for PIC32MX795F512
*******************************************************************************/
#include	"config.h"
#include    "HardwareProfile.h"
#include	"mTouchCap_PIC32MX_2ChSliderDemo.h"  
#include	"display.h"
#include	"mTouchCap_CvdAPI.h"
#include    "mTouchCap_Timers.h"
#include     "Compiler.h"

/** External Variables **/
extern unsigned int 	dataReadyCVD;


#pragma config FPLLMUL = MUL_20, FPLLIDIV = DIV_2, FPLLODIV = DIV_1, FWDTEN = OFF
#pragma config POSCMOD = HS, FNOSC = PRIPLL, FPBDIV = DIV_2

#pragma config UPLLEN   = ON            // USB PLL Enabled
#pragma config UPLLIDIV = DIV_2         // USB PLL Input Divider

/*===========================================================================
========================  PROGRAM CODE  =====================================
============================================================================*/


/****************************************************************************
  Function:
    int main(void)

  Summary:
    Main loop of Program

  Description:
    Performs necessary hardware initialization, and enters an infinite while
	loop that processes system data in a round-robin setup.
 
    Timer 4 is set up to interrupt
    ADC is set up to interrupt

  Precondition:
    None.

  Parameters:
    None.

  Returns:
    None.

  Remarks:
    None.
    
  ***************************************************************************/

/*....................................................................
. 	main()
.
.		Entry point of program.
....................................................................*/

int main(void)
{
	
    //initalize global interrupt enable
    INTEnableSystemMultiVectoredInt();

	// Configure the device for maximum performance
	// Given the options, this function will change the flash wait states, RAM
	// wait state and enable prefetch cache but will not change the PBDIV.
	// The PBDIV value is already set via the pragma FPBDIV option.
	SYSTEMConfig(SYS_FREQ, SYS_CFG_WAIT_STATES | SYS_CFG_PCACHE);

	/***************************************************************************
	--------------- mTouchCapApp_CreateTwoChannelSlider" -----------------------		

	***************************************************************************/
	#ifdef USE_SLIDER_2CHNL
		
	mTouchCapApp_CreateTwoChannelSlider();
	#endif

    /* This is mandatory function call to initilize physical layer. Call this function before any application layer code. */
    mTouchCap_Init();
  
    // Run "Chaser" LED sequence on slider LEDs
    mTouchCapApp_powerOnLEDSeq();
	
	while(1) 
	{	
		
    	if(dataReadyCVD == 1)			//This flag is set by ADC ISR 
										//when all channels have been read
		{
			dataReadyCVD = 0;			//clear flag
						
            Set_ScanTimer_IF_Bit_State(DISABLE);    //Clear timer 4 SHORT flag
            Set_ScanTimer_IE_Bit_State(DISABLE);    //Disable interrupt
            Set_ScanTimer_ON_Bit_State(DISABLE);    //Stop timer 4
            
            /***************************************************************************
			--------------- Demo of API "mTouchCapAPI_GetStatusSlider" -----------------------		
			Get the percentage level of touch on Slider mentioned using the API "mTouchCapAPI_GetStatusSlider". 
			The below function intern calls the mentioned API.
	        ***************************************************************************/
            #ifdef USE_SLIDER_2CHNL

            /* Demo 2 Channel Slider */
            mTouchCapApp_DemoTwoChannelSlider();
            #endif

            Set_ScanTimer_IF_Bit_State(DISABLE);    //Clear flag
            Set_ScanTimer_IE_Bit_State(ENABLE);     //Enable interrupt
            Set_ScanTimer_ON_Bit_State(ENABLE);     //Run timer


				       
		} // end if(dataReadyCVD)
	} //end while (1) 
}  // end main()

/******************************************************************************
 * Function:       void mTouchCapApp_PortSetup(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:       	Initialize the in/out ports
 *
 * Note:            None
 *****************************************************************************/
void mTouchCapApp_PortSetup(void)
{

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
 
   //necessary for standalone execution - disable JTAG 
    DDPCONbits.JTAGEN = 0;

}
