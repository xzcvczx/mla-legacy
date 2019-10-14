/*****************************************************************************
 * FileName:        	mTouchCap_PIC24F_LowPower.c
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
 * Author               		Date        		Comment
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * Naveen. M				  	14 Apr 2009			Version 0.1 Initial Draft
 * Sasha. M	/ Naveen. M			4 May 2009  		Version 0.2 Updates
 * Sasha. M	/ Naveen. M			11 Nov 2009  		Version 1.0 Release
 * Sasha. M	/ Nithin. 			10 April 2010  		Version 1.20 Release
 * Nithin M						11 Aug 2010			Implemetation of Low Power Demo 
 * Arpitha P					08 June 2011		Version 1.31 Release
 *****************************************************************************/

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Includes	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
#include "Config.h"
#include "mTouchCap_PIC24F_LowPower.h"
#include "HardwareProfile.h"
#include "GenericTypeDefs.h"
#include "mTouchCap_CtmuAPI.h"
#include "mTouchCap_Timers.h"
#include "Compiler.h"
#include "Display.h"

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Variables	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
extern SHORT    T3counter;                              //timer 3 is used for the buzzer
extern WORD 	CapTouchkey_pressed_status;	//stores the count of the keys that were pressed
extern BYTE 	Timer4_Period_Clock_Switch_Flag;	//Flag to indicate if the timer4 period values are loaded


#ifdef LOW_POWER_DEMO_ENABLE
	WORD Timeout_select = TIMEOUT_10SEC_PRIPLL_CLOCK; //Initialize the timeout using Primary Clock
	BYTE Clock_Switch_Enable_Flag =0;	//FRC clock mode enable
	BYTE CapTouch_Sleep_Wakeup_Flag;	//flag to indicate that device is out of sleep
	BYTE OsciValue;
	BYTE temp;
	BYTE trimbitsReady_with_FRC;	//status of the trimbits calulated using the FRC clock
	BYTE Default_RawData_with_FRC_Flag; //load the Current Raw data to the Average Data array when FRC is selected
	extern BYTE trimbitsReady;
#endif
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Function Prototypes  ~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
void    mTouchCapApp_DemoDirectKeys(void);
void 	mTouchCapApp_CreateDirectKeys(void);


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Declarations  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Configuration setting~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
*           Watchdog Timer Disabled
*           Two Speed Start-up enabled
*           Oscillator Selection: HS oscillator + PLL
*           Clock switching and clock monitor both disabled
********************************************************************/
///If the selected device is as mentioned below, then apply below settings. User can edit this as per requirement.
#if defined(__PIC24F04KA200__ ) || defined(__PIC24F04KA201__ ) 
_FICD( ICS_PGx2)
_FWDT( FWDTEN_OFF )
_FPOR( MCLRE_ON & BOREN_BOR0)
_FDS( DSWDTEN_OFF & DSLPBOR_OFF)
_FOSCSEL( FNOSC_PRIPLL & IESO_OFF )
_FOSC( FCKSM_CSDCMD & POSCFREQ_HS & POSCMOD_HS )
#endif

//If the selected device is as mentioned below, then apply below settings. User can edit this as per requirement.
#if defined(__PIC24F08KA101__) || defined(__PIC24F08KA102__) || defined(__PIC24F16KA101__ )\
|| defined(__PIC24F16KA102__ )  
_FICD( ICS_PGx2)
_FWDT( FWDTEN_OFF )
_FPOR( MCLRE_ON & BOREN_BOR0)
_FDS( DSWDTEN_OFF & DSBOREN_OFF)
_FOSCSEL( FNOSC_PRIPLL & IESO_OFF )
_FOSC( FCKSM_CSDCMD & POSCFREQ_HS & POSCMOD_HS )
#endif

//If the selected device is as mentioned below, then apply below settings. User can edit this as per requirement.
#if defined(__PIC24F16KA301__)|| defined (__PIC24F16KA302__) || defined(__PIC24F16KA304__)\
|| defined(__PIC24F32KA301__) || defined (__PIC24F32KA302__) || defined(__PIC24F32KA304__)\
|| defined(__PIC24FV16KA301__)|| defined (__PIC24FV16KA302__)|| defined(__PIC24FV16KA304__)\
|| defined(__PIC24FV32KA301__)|| defined (__PIC24FV32KA302__)|| defined(__PIC24FV32KA304__)
_FICD( ICS_PGx2)
_FPOR( MCLRE_ON & BOREN_BOR0)
_FDS( DSWDTEN_OFF & DSBOREN_OFF)
_FOSCSEL( FNOSC_PRIPLL & IESO_OFF )
_FOSC( FCKSM_CSDCMD & POSCFREQ_HS & POSCMOD_HS )
#endif

//If the selected device is as mentioned below, then apply below settings. User can edit this as per requirement.
#if defined(__PIC24FJ32GA102__) || defined(__PIC24FJ32GA104__)\
||  defined(__PIC24FJ64GA102__) || defined(__PIC24FJ64GA104__)
_CONFIG1( JTAGEN_OFF & GCP_OFF & GWRP_OFF & ICS_PGx2 & FWDTEN_OFF)
_CONFIG2( IESO_OFF & FNOSC_PRIPLL & FCKSM_CSDCMD & IOL1WAY_OFF & POSCMOD_HS )
_CONFIG4( DSWDTEN_OFF & DSBOREN_OFF)
#endif

//If the selected device is as mentioned below, then apply below settings. User can edit this as per requirement.
#if defined(__PIC24FJ32GB002__) || defined(__PIC24FJ32GB004__)\
|| defined(__PIC24FJ64GB002__) || defined(__PIC24FJ64GB004__)
_CONFIG1( JTAGEN_OFF & GCP_OFF & GWRP_OFF & ICS_PGx2 & FWDTEN_OFF)
_CONFIG2( IESO_OFF & PLLDIV_DIV2 & FNOSC_PRIPLL & FCKSM_CSDCMD & IOL1WAY_OFF & POSCMOD_HS )
_CONFIG4( DSWDTEN_OFF & DSBOREN_OFF)
#endif

//If the selected device is as mentioned below, then apply below settings. User can edit this as per requirement.
#if defined(__PIC24FJ64GA106__) || defined(__PIC24FJ64GA108__)  || defined(__PIC24FJ64GA110__)
_CONFIG1( JTAGEN_OFF & GCP_OFF & GWRP_OFF & ICS_PGx2 & FWDTEN_OFF)
_CONFIG2( IESO_OFF & FNOSC_PRIPLL & FCKSM_CSDCMD & IOL1WAY_OFF & POSCMOD_HS )
#endif

//If the selected device is as mentioned below, then apply below settings. User can edit this as per requirement.
#if defined(__PIC24FJ128GA106__)|| defined(__PIC24FJ128GA108__) || defined(__PIC24FJ128GA110__)\
|| defined(__PIC24FJ192GA106__)|| defined(__PIC24FJ192GA108__) || defined(__PIC24FJ192GA110__)\
|| defined(__PIC24FJ256GA106__)|| defined(__PIC24FJ256GA108__) || defined(__PIC24FJ256GA110__)
_CONFIG1( JTAGEN_OFF & GCP_OFF & GWRP_OFF & COE_OFF & ICS_PGx2 & FWDTEN_OFF)
_CONFIG2( IESO_OFF & FNOSC_PRIPLL & FCKSM_CSDCMD & IOL1WAY_OFF & POSCMOD_HS )
#endif

//If the selected device is as mentioned below, then apply below settings. User can edit this as per requirement.
#if defined(__PIC24FJ64GB106__) || defined(__PIC24FJ64GB108__)  || defined(__PIC24FJ64GB110__)\
|| defined(__PIC24FJ128GB106__)|| defined(__PIC24FJ128GB108__) || defined(__PIC24FJ128GB110__)\
|| defined(__PIC24FJ192GB106__)|| defined(__PIC24FJ192GB108__) || defined(__PIC24FJ192GB110__)\
|| defined(__PIC24FJ256GB106__)|| defined(__PIC24FJ256GB108__) || defined(__PIC24FJ256GB110__)
_CONFIG1( JTAGEN_OFF & GCP_OFF & GWRP_OFF & ICS_PGx2 & FWDTEN_OFF& WINDIS_ON & FWPSA_PR128 & WDT_TIMEOUT)
_CONFIG2( IESO_OFF & PLLDIV_DIV2 & FNOSC_PRIPLL & FCKSM_CSECME & IOL1WAY_OFF & DISUVREG_ON & POSCMOD_HS)
#endif 

//If the selected device is as mentioned below, then apply below settings. User can edit this as per requirement.
#if defined(__PIC24FJ128GB206__) || defined (__PIC24FJ128GB210__)\
||  defined(__PIC24FJ256GB206__) || defined (__PIC24FJ256GB210__)
_CONFIG1( JTAGEN_OFF & GCP_OFF & GWRP_OFF & ICS_PGx2 & FWDTEN_OFF)
_CONFIG2( IESO_OFF & PLLDIV_DIV2 & FNOSC_PRIPLL & FCKSM_CSDCMD & IOL1WAY_OFF & POSCMOD_HS )
#endif

//If the selected device is as mentioned below, then apply below settings. User can edit this as per requirement.
#if defined(__PIC24FJ128DA106__) || defined(__PIC24FJ128DA110__) ||  defined(__PIC24FJ128DA206__)\
||  defined(__PIC24FJ128DA210__) ||  defined(__PIC24FJ256DA106__)|| defined(__PIC24FJ256DA110__)\
||  defined(__PIC24FJ256DA206__) || defined(__PIC24FJ256DA210__ ) 
_CONFIG1( WDTPS_PS32768 & FWPSA_PR128 & FWDTEN_OFF & ICS_PGx2 & GWRP_OFF & GCP_OFF & JTAGEN_OFF) 
_CONFIG2( POSCMOD_HS & IOL1WAY_OFF & OSCIOFNC_OFF & FCKSM_CSDCMD & FNOSC_PRIPLL & PLL96MHZ_ON & PLLDIV_DIV2 & IESO_ON)
_CONFIG3( WPFP_WPFP255 & SOSCSEL_SOSC & WUTSEL_LEG & WPDIS_WPDIS & WPCFG_WPCFGDIS & WPEND_WPENDMEM) 
#endif


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Function Definitions  ~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


/********************************************************************
 * Function		:    int main(void)
 *
 * PreCondition	:    None
 *
 * Input		:    None
 *
 * Output		:    None
 *
 * Side Effects	:    None
 *
 * Overview		: The Application main function
 *
 *
 * Note			:
 *******************************************************************/
int main(void)
{
	


  	/***************************************************************************
	--------------- mTouchCapApp_CreateDirectKeys" -----------------------		

	***************************************************************************/
	#ifdef USE_DIRECT_KEYS	

	mTouchCapApp_CreateDirectKeys();
	#endif


    /* This is mandatory function call to initilize physical layer. Call this function before any application layer code. */
    mTouchCap_Init();                            	// Launch Device Initializations  

    mTouchCapApp_powerOnLEDSeq();                   // Run "Chaser" LED sequence on slider LEDs
    
    while(1)
    {

        if (dataReadyCTMU == 1)                      // This flag is set by Timer 4 ISR when all channels have been read										
        {
            dataReadyCTMU = 0;                      //clear flag


            Set_ScanTimer_IF_Bit_State(DISABLE);    //Clear timer 4 SHORT flag
            Set_ScanTimer_IE_Bit_State(DISABLE);    //Disable interrupt
            Set_ScanTimer_ON_Bit_State(DISABLE);    //Stop timer 4


            /****************************************************************************************
			--------------- Demo of API "mTouchCapAPI_GetStatusDirectButton" -----------------------		
			Get the status of a Direct key press using the API "mTouchCapAPI_GetStatusDirectButton" 
			whose channel number is mentioned. The below function intern calls the mentioned API.
	        ****************************************************************************************/
            #ifdef USE_DIRECT_KEYS                  // Number pad is 4x5 matrix

            /* Demo Matrix Keys */
            mTouchCapApp_DemoDirectKeys();
            #endif
			
			#ifdef LOW_POWER_DEMO_ENABLE
				//Function to implement the low power demo logic
				mTouchCapApp_LowPower_Process();
			#endif

            Set_ScanTimer_IF_Bit_State(DISABLE);    //Clear flag
            Set_ScanTimer_IE_Bit_State(ENABLE);     //Enable interrupt
            Set_ScanTimer_ON_Bit_State(ENABLE);     //Run timer
        }   // end if(dataReadyCTMU)
     }       //end while (1)
}           // end main()

/*********   	End of Function 	*********************/


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
 * Overview			: 	Initialize the Ports. Set the appropriate value of initialization in HardwareProfile.h file.
 *
 * Note				: 	User can define the right values of Ports pins here.
 *******************************************************************/
void mTouchCapApp_PortSetup(void)
{
    CLKDIV = INIT_CLKDIV_VALUE;

    #ifdef PIC24F_LOW_PIN_DEVICE    // Initialise ports for low pin devices

	TRISB = INIT_TRISB_VALUE;
	PORTB = INIT_PORTB_VALUE;

	#else     
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
	#endif
}




/******************************************************************************
 * Function:       mTouchCapApp_LowPower_Process(void)
 *
 * PreCondition:    The updateCTMU() function should be called before invoking
					this function to get the status of the keys
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:       	This function is used for the Low power demo. This will
					help in reducing the power consumption by keeping the
					device in Sleep mode for 2sec using the WDT if none of the 
 					keys are pressed within the 10sec timeout. 
					If the key press is sensed before the 10sec timeout is elapsed
					reset the 10sec timeout counter and restart the timeout.
					
	
 * Note:            None
 *****************************************************************************/
#ifdef LOW_POWER_DEMO_ENABLE

void mTouchCapApp_LowPower_Process(void)
{
		CHAR Osc_value;
 					
		//if there is any key touch sensed, reset the key pressed counter and the timeout logic will not be enabled
		//if any of the Cap touch keys are not touched, then start the timeout for about 10sec so that if none of the 
		//keys are pressed within the timeout period, go to the sleep mode for about 2sec using a WDT timer.
		//after the device comes out of the sleep scan all the keys to detect if there is any touch and repeat 
		//the process
		// If none of the Captouch keys are pressed after the devices comes out of the sleep, switch the clock from
		//Primary to the lower clock value(FRC without PLL) .The subsequent timeout is selected as 4 sec when the 
		// system clock is switched to FRC
		//If there is any key press sensed after the clock is switched from Primary to FRC, then switch back the 
		//system clock to the Primary clock and continue the normal process

		//The 10sec timeout is calculated based on the current clock selection
		//Timeout_counter is incremented for evert Timer4 interrupt 
		
			if(Timeout_Counter > Timeout_select)	// check the status of the keys after 10sec timeout is acheived
			{
		
				Timeout_Counter =0;		//reset the 10sec timeout counter since the key was pressed within 
												// the 10sec timeouts
							
				if(CapTouchkey_pressed_status)	//if any of the Cap touch keys are pressed
				{
					CapTouchkey_pressed_status =0;	 //reset the counter which indicates the keys pressed status
				}
				else
				{
					//start a time out for 10sec if there is no touch sensed in any of the keys
					//if there is any touch sensed within the timeout period reset the timer
					//if none of the keys are pressed within the 10sec timeout, put the device in
					//sleep mode and it comes out of the Sleep using a WDT timeout.


					//Turn off all the modules and make the port pin as output when the device goes to sleep
					#ifndef PIC24F_LOW_PIN_DEVICE
					
					AD1PCFG = 0xFFFF;		//make the analog channels as digital only for sleep conditions

					PMD1 = 0xBFFE;			//ADC and Timer4 is not turned OFF
					PMD2 = 0xFFFF;
					PMD3 = 0xFFFF;
					PMD4 = 0xFFFB;			//CTMU is not turned OFF
					PMD5 = 0xFFFF;
					PMD6 = 0xFFFF;



					TRISB = 0;	
					TRISC = 0;
					TRISD = 0;
					TRISE = 0;
					TRISF = 0;
					TRISG = 0;


					LATB = 0;		
					LATC = 0;
					LATD = 0;
					LATE = 0;
					LATF = 0;
					LATG = 0;

					

					//Set the WDT to wake up the device from CPU
					//The WDT time out is set to 128msec (1:32) when the WDT Prescalar ratio is 1:128(7 bit)
					RCONbits.SWDTEN = 1;		//enable the WDT 
					Nop();
					// the device is placed in sleep for the duration which is selected by the WDT postscalar bits
					Sleep();
					Nop();

					RCONbits.SWDTEN = 0;		//Disable the WDT so that the system is not reset for every WDT timeout
				

					//turn on all the modules after device comes out of sleep

					PMD1 = 0x0000;
					PMD2 = 0x0000;
					PMD3 = 0x0000;
					PMD4 = 0x0000;
					PMD5 = 0x0000;
					PMD6 = 0x0000;
					//The FRC clock switch mode will be implemented only when the macro is enabled
					//If the macro is disabled, then the clock is not switched to FRC from Primary
					#ifdef CLOCK_SWITCH_DURING_SLEEP_ENABLE
						//if the device has entered the sleep mode, it indicates that none of the 
						// captouch keys were pressed and it would be better to shift the system clock to the
						//lowest possible value so as to reduce the power consumption.
						//The original system clock configurations will be restored if any of the captouch keys are
						//pressed after the device wakes up from the sleep.
						CapTouch_Sleep_Wakeup_Flag = HIGH;	//flag to indicate that device is out of sleep mode.
						//The System clock should be switched from Primary to FRC
						//The Clock_Switch_Enable_Flag is used from avoiding re-initialization of the oscilator.
						//The Initialization should be done only once
						if(!Clock_Switch_Enable_Flag)
						{
							//Disable the interrupts before the clock switch
							Set_ScanTimer_IF_Bit_State(DISABLE);    //Clear timer 4 SHORT flag
			            	Set_ScanTimer_IE_Bit_State(DISABLE);    //Disable interrupt
			            	Set_ScanTimer_ON_Bit_State(DISABLE);    //Stop timer 4
							
							Osc_value =FRCDIV_CLOCK; 
							//select FRC for the scanning after the device icomes out of the sleep
							UnlockOscillator(Osc_value);
							//The FRC clock is 8Mhz. 
							//RCDIV<2:0> = 011 -- divide by 8
							CLKDIV = FRC_POSTSCALAR_DIVIDE_1; //FRC_POSTSCALAR_DIVIDE_8; //FRC_POSTSCALAR_DIVIDE_2;
							//Charge the selected Capsense keys when the FRC clock is used
							Clock_Switch_Enable_Flag = HIGH;	//testing

							//This flag is required to load the CurRawData to the AverageData when the FRC clock is selected
							Default_RawData_with_FRC_Flag = HIGH;
						}
						
						//The flag is used just to make sure that the initialization of the timer happens only once when the 
						//system clock is selected as FRC clock
						if(!Timer4_Period_Clock_Switch_Flag)
						{
							mTouchCapPhy_TickInit();
											

						}
						
						//change the Timeout count based on the swtiched clock value(FRC)
						Timeout_select= TIMEOUT_AFTER_FRC_CLOCK_SWITCH ;



					#endif 	//end of #ifdef CLOCK_SWITCH_DURING_SLEEP_ENABLE
					
					//testing
					PORTD = 0x0000; Nop(); //display LED D15 to indicate that device has come out of sleep
					PORTE = 0x0040;
					#endif
					//turn on all the modules after device comes out of sleep
//
//					PMD1 = 0x0000;
//					PMD2 = 0x0000;
//					PMD3 = 0x0000;
//					PMD4 = 0x0000;
//					PMD5 = 0x0000;
//					PMD6 = 0x0000;
				

				
				}//end of if(CapTouchkey_pressed_status)

			}
			else
			{
				//if the 10sec timeout is not elapsed and if one of the keys are pressed, then reset the 
				//10sec timeout counter since there was a touch in one or more keys and hence the timeout should 
				//be reset
				if(CapTouchkey_pressed_status)		//if any of the Cap touch keys are pressed
				{
					Timeout_Counter = 0;			//reset the 10sec timeout counter since the key was pressed within 
													// the 10sec timeout
					CapTouchkey_pressed_status =LOW;//reset the pressed status 

				
					// If any of the Captouch keys were pressed after the device was in sleep mode
					//and it was released by the WDT timer interrupt, then restore the actual system clock settings
				
				#ifdef CLOCK_SWITCH_DURING_SLEEP_ENABLE
					if(CapTouch_Sleep_Wakeup_Flag)
					{
						CapTouch_Sleep_Wakeup_Flag = LOW;	
						Timer4_Period_Clock_Switch_Flag =LOW;		//disable the flag for loading the values for Timer4 period 
						Clock_Switch_Enable_Flag =LOW;				//Disable the flag for enabling FRC clock
						//Disable the timer so that the interrupt is not generated during clock switch
						Set_ScanTimer_IF_Bit_State(DISABLE);    	//Clear timer 4 interrupt flag
	            		Set_ScanTimer_IE_Bit_State(DISABLE);    	//Disable interrupt
	            		Set_ScanTimer_ON_Bit_State(DISABLE);    	//Stop timer 4
						
						//switch back to the actual system clock settings if any of the 
						//captouch key is pressed
						Osc_value = PRIMARY_PLL_CLOCK;
						UnlockOscillator(Osc_value);
						//Restore the Primary clock postscalar settings which was changed when
						// the system clock was switched to  FRC
						CLKDIV = 0x0000; //FRC_POSTSCALAR_DIVIDE_1;
						
						//Restore the Timer1 values based on Primary clock 
						mTouchCapPhy_TickInit();
						//restore the 10sec timeout value for Primary clock
						Timeout_select= TIMEOUT_10SEC_PRIPLL_CLOCK;

					}
				#endif	//end of #ifdef CLOCK_SWITCH_DURING_SLEEP_ENABLE
					
				}	
		
			
			}//end of if(Timeout_Counter >= 10000)



}	//end of void mTouchCapApp_LowPower_Process(void)

#endif //end of #ifdef LOW_POWER_DEMO_ENABLE

/******************************************************************************
 * Function:       void  UnlockOscillator(BYTE Switch_Osc_value)
 *
 * PreCondition:    This function is used for the low power demo 

 *
 * Input:           the value of the oscillator that has to be set 
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:       	This function is used to switch the clock source 
					during runtime
					
	
 * Note:            None
 *****************************************************************************/
#ifdef LOW_POWER_DEMO_ENABLE

	void  UnlockOscillator(BYTE Switch_Osc_value)
	{
	            OsciValue = Switch_Osc_value ; //NewOscillatorValue;
	
				temp=OsciValue;
	
	//            asm ("MOV _OsciValue,W0");
	            asm ("MOV _temp,W0");	
				//asm ("MOV #5,W0");
				asm ("MOV #OSCCON+1, w1");
	            asm ("MOV #0x78, w2");
	            asm ("MOV #0x9A, w3");
	            asm ("MOV.b w2, [w1]");
	            asm ("MOV.b w3, [w1]");
	            asm ("MOV.b WREG, OSCCON+1");
	//;OSCCONL (low byte) unlock sequence
	
	            asm ("MOV #OSCCON, w1");
	            asm ("MOV #0x46, w2");
	            asm ("MOV #0x57, w3");
	            asm ("MOV.b w2, [w1]");
	            asm ("MOV.b w3, [w1]");
	            asm ("BSET OSCCON,#0");
	
	            while(OSCCONbits.OSWEN);
	}

#endif //end of #ifdef LOW_POWER_DEMO_ENABLE



/*********   	End of Function 	*********************/
