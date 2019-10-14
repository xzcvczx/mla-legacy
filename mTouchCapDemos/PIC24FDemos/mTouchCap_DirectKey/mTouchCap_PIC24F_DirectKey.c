/*****************************************************************************
 * FileName:        	mTouchCap_PIC24F_DirectKey.c
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
 * Arpitha P					08 June 2011		Version 1.31 Release
 *****************************************************************************/

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Includes	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
#include "Config.h"
#include "mTouchCap_PIC24F_DirectKey.h"
#include "HardwareProfile.h"
#include "GenericTypeDefs.h"
#include "mTouchCap_CtmuAPI.h"
#include "mTouchCap_Timers.h"
#include "Compiler.h"
#include "Display.h"

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~	Variables	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
extern SHORT    T3counter;                     //timer 3 is used for the buzzer

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
//If the selected device is as mentioned below, then apply below settings. User can edit this as per requirement.
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
_CONFIG1( JTAGEN_OFF & GCP_OFF & GWRP_OFF & ICS_PGx2 & FWDTEN_OFF)
_CONFIG2( IESO_OFF & PLLDIV_DIV2 & FNOSC_PRIPLL & FCKSM_CSDCMD & IOL1WAY_OFF & POSCMOD_HS & DISUVREG_ON )
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
    mTouchCap_Init();                                // Launch Device Initializations  

    mTouchCapApp_powerOnLEDSeq();                    // Run "Chaser" LED sequence on slider LEDs
    
    while(1)
    {

        if (dataReadyCTMU == 1)                      // This flag is set by Timer 4 ISR //when all channels have been read										
        {
            dataReadyCTMU = 0;                      //clear flag


            Set_ScanTimer_IF_Bit_State(DISABLE);    //Clear timer 4 SHORT flag
            Set_ScanTimer_IE_Bit_State(DISABLE);    //Disable interrupt
            Set_ScanTimer_ON_Bit_State(DISABLE);    //Stop timer 4


            /**************************************************************************************
			--------------- Demo of API "mTouchCapAPI_GetStatusDirectButton" -----------------------		
			Get the status of a Direct key press using the API "mTouchCapAPI_GetStatusDirectButton" 
			whose channel number is mentioned. The below function intern calls the mentioned API.
	        **************************************************************************************/
            #ifdef USE_DIRECT_KEYS                  // Number pad is 4x5 matrix

            /* Demo Matrix Keys */
            mTouchCapApp_DemoDirectKeys();
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

    #ifdef PIC24F_LOW_PIN_DEVICE  // Initialise ports for low pin devices

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

/*********   	End of Function 	*********************/
