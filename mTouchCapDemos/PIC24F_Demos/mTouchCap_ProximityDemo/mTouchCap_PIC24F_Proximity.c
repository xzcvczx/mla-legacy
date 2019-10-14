/*****************************************************************************
 * FileName:        	mTouchCap_PIC24F_Proximity.c
 * Dependencies:
 * Processor:       	PIC24
 * Compiler:       		C30
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
 *****************************************************************************/
#include "GenericTypeDefs.h"
#include "Compiler.h"

/*
CONFIGURATION BIT SETTINGS
*/

//If the selected device is as mentioned below, then apply below settings. User can edit this as per requirement.
#if defined (__PIC24FJ256GB110__) || defined (__PIC24FJ192GB110__) || defined (__PIC24FJ128GB110__) || defined (__PIC24FJ64GB110__)\
|| defined(__PIC24FJ256GB108__) || defined(__PIC24FJ192GB108__) || defined(__PIC24FJ128GB108__) || defined(__PIC24FJ64GB108__)\
|| defined(__PIC24FJ256GB106__) || defined(__PIC24FJ192GB106__) || defined(__PIC24FJ128GB106__) || defined(__PIC24FJ64GB106__)
 
	_CONFIG1( JTAGEN_OFF & GCP_OFF & GWRP_OFF & ICS_PGx2 & FWDTEN_OFF)
	_CONFIG2( IESO_OFF & PLLDIV_DIV2 & FNOSC_PRIPLL & FCKSM_CSDCMD & IOL1WAY_OFF & DISUVREG_ON & POSCMOD_HS)
	
#elif defined (__PIC24FJ64GB004__) || defined (__PIC24FJ32GB004__)
	_CONFIG1(WDTPS_PS1 & FWPSA_PR32 & WINDIS_OFF & FWDTEN_OFF & ICS_PGx1 & GWRP_OFF & GCP_OFF & JTAGEN_OFF)
	_CONFIG2(POSCMOD_HS & I2C1SEL_PRI & IOL1WAY_OFF & OSCIOFNC_ON & FCKSM_CSDCMD & FNOSC_PRIPLL & PLL96MHZ_ON & PLLDIV_DIV2 & IESO_ON)
	_CONFIG3(WPFP_WPFP0 & SOSCSEL_SOSC & WUTSEL_LEG & WPDIS_WPDIS & WPCFG_WPCFGDIS & WPEND_WPENDMEM)
	_CONFIG4(DSWDTPS_DSWDTPS3 & DSWDTOSC_LPRC & RTCOSC_SOSC & DSBOREN_OFF & DSWDTEN_OFF)


#elif defined (__PIC24FJ256GA110__) || defined (__PIC24FJ192GA110__) || defined (__PIC24FJ128GA110__) || defined (__PIC24FJ64GA110__)\
|| defined(__PIC24FJ256GA108__) || defined(__PIC24FJ192GA108__) || defined(__PIC24FJ128GA108__) || defined(__PIC24FJ64GA108__)\
|| defined(__PIC24FJ256GA106__) || defined(__PIC24FJ192GA106__) || defined(__PIC24FJ128GA106__) || defined(__PIC24FJ64GA106__) 

	_CONFIG1( JTAGEN_OFF & GCP_OFF & GWRP_ON & ICS_PGx2 & FWDTEN_OFF)
	_CONFIG2( IESO_OFF & FNOSC_PRIPLL & FCKSM_CSDCMD & IOL1WAY_OFF & POSCMOD_HS)

#elif defined(__PIC24F16KA101__ ) || defined(__PIC24F16KA102__ ) || defined(__PIC24F04KA200__ ) || defined(__PIC24F04KA201__ ) 
	_FDS( DSWDTEN_OFF & DSBOREN_OFF)
	_FICD( ICS_PGx2)
	_FPOR( MCLRE_ON & BOREN_BOR0)
	_FWDT( FWDTEN_OFF )
	_FOSC( FCKSM_CSDCMD & POSCFREQ_HS & POSCMOD_HS )
	_FOSCSEL( FNOSC_PRIPLL & IESO_OFF )



#elif defined(__PIC24FJ256DA210__ ) || defined(__PIC24FJ128DA210__)\
|| defined(__PIC24FJ256DA110__) || defined(__PIC24FJ128DA110__) || defined(__PIC24FJ128DA106__)\
|| defined(__PIC24FJ128DA206__) || defined(__PIC24FJ256DA106__) || defined(__PIC24FJ128DA106__) 
	
	 #define  __PIC24FJ_DAXXX__
	 
	_CONFIG1( WDTPS_PS32768 & FWPSA_PR128 & FWDTEN_OFF & ICS_PGx2 & GWRP_OFF & GCP_OFF & JTAGEN_OFF) 
	_CONFIG2( POSCMOD_HS & IOL1WAY_OFF & OSCIOFNC_OFF & OSCIOFNC_OFF & FCKSM_CSDCMD & FNOSC_PRIPLL & PLL96MHZ_ON & PLLDIV_DIV2 & IESO_ON)
	_CONFIG3( WPFP_WPFP255 & SOSCSEL_SOSC & WUTSEL_LEG & WPDIS_WPDIS & WPCFG_WPCFGDIS & WPEND_WPENDMEM) 


#else
#warning "wrong device selected"
#endif

/*
INCLUDES
*/
#include "mTouchCap_PIC24_CTMU_Physical.h"
#include "mTouchCap_PIC24F_Proximity.h"


/*
PRIVATE DECLARATIONS
*/
void DisplayAutoZeroLEDs(BYTE);
BYTE pollMatrixKeys(void);

/*
PRIVATE DEFINES
*/
typedef enum _prox_state{AUTOZERO, AUTOZERO_HIGH, AUTOZERO_LOW, AUTOZERO_MODE, PROXIMITY_MODE}PROX_STATE;
/*
If Matrix key pad is conneced to channels 0-7, set MATRIX_KEY_START_CHANNEL = 0, else = 8 */
#define MATRIX_KEY_START_CHANNEL			MATRIXKEY0_ROW_CHANNEL

#define AUTOZERO_SAMPLE_LIMIT				100		/* Default = 100; change this value to provide better baseline */
#define FILTER_DEPTH						10		/* Default = 10; change this value to control stability */
#define DETECT_TIME							75		/* Default = 125; change this value to control how fast proximity switches to Maxtrix mode
																	  (number of 16ms measurement cycles, 125 = 2 seconds) */
/*
PRIVATE VARIABLES
*/
PROX_STATE ProximityState = AUTOZERO;
UINT32 baseline;
UINT32 proximity;
UINT32 sum_channels;
INT32 difference;
UINT32 filter[FILTER_DEPTH];
UINT32 prox_count;
UINT16 measure_count;
UINT16 autozero_count;
UINT16 overrange_count;
UINT16 underrange_count;
UINT8 j;
WORD curBigData[MAX_ADC_CHANNELS];

/********************************************************************
 * Function			:    BYTE mTouchCap_Proximity(void)
 *
 * PreCondition		:    None
 *
 * Input			:    None
 *
 * Output			:    0 = PROXIMITY mode; 1 = MATRIX_KEY_MODE mode
 *
 * Side Effects		:    None
 *
 * Overview			: 	
 * There are 7 channels to read on the Matrix Keypad, however, the library
 * scans all 16 channels.  Each channel is read 16 times (or as defined by NUM_HF_READS in config.h).
 * taking about 250us to complete.  A different channel is scanned every 1msec.
 * Therefore, it takes 16ms to scan all 16 channels.
  * 
 * Each LED on the display represents a change in 1 ADC count.  The maximum
 * number to be displayed is 100.
 *
 * The sensitivity of the Proximity detection can be controlled by changing the value for
 * NUM_HF_READS in "config.h". The default is 16.
 * Sensitivity increases when NUM_HF_READS is larger.
 * Useful range is 8 to 32.
 *
 * The averaging filter can be controlled by changing the value for FILTER_DEPTH
 * in this file (see above).  The default is 10.
 * Averaging is improved (less jitter) when FILTER_DEPTH is larger, but response is slower
 * Useful range is 1 to 40.
 *
 *******************************************************************/
  
BYTE mTouchCap_Proximity(void)
{


	switch(ProximityState)
	{
		case AUTOZERO:
		{	
			DisplayAutoZeroLEDs(3);
			ProximityState = AUTOZERO_MODE;
			break;
		}
		
		case AUTOZERO_HIGH:
		{	
			DisplayAutoZeroLEDs(1);
			ProximityState = AUTOZERO_MODE;
			break;
		}
		
		case AUTOZERO_LOW:
		{
			DisplayAutoZeroLEDs(2);
			ProximityState = AUTOZERO_MODE;
			break;	
		}
		
		case AUTOZERO_MODE:
		{

			// scan all 7 the channels and add them together
			for(j=0; j < 7; j++)
       		{	
           		sum_channels+= curBigData[j+MATRIX_KEY_START_CHANNEL];
			}
  
       		if(++autozero_count == AUTOZERO_SAMPLE_LIMIT)
       		{
	       		DisplayAutoZeroLEDs(0);
	       		
	       		// calculate the new baseline
           		baseline = sum_channels/AUTOZERO_SAMPLE_LIMIT;
   	  			autozero_count = 0;
   	  			sum_channels = 0;
   	  			
   	  			// prepare to switch to PROXIMITY_MODE
   	  			prox_count = 0;
				ProximityState = PROXIMITY_MODE;
			}
			break;
		}

		case PROXIMITY_MODE:
		{
			_RF0 = 1;
			prox_count++;
			proximity = 0;
			// scan all 7 the channels and add them together
			for(j=0; j<7; j++)
        	{	
	       		proximity+= curBigData[j+MATRIX_KEY_START_CHANNEL];
			}
			
			// populate the filter
			filter[measure_count++] = proximity;
			
			if(measure_count == FILTER_DEPTH)
        	{
        		measure_count = 0;
        	}	
       	
            // ignore the first 10..25 or (LOOP_COUNT) readings to allow the filter to populate    		
           	if(prox_count < FILTER_DEPTH)	
           	{
	        	break;
	        }	
	        
	        proximity = 0;
           	for(j=0; j < FILTER_DEPTH; j++)
           	{
           		proximity+= filter[j];
           	
        	}	
           	proximity /= FILTER_DEPTH; 
           	
           	// Calculate the change to see if a hand/finger is near
           	difference = baseline - proximity;
           	
     		
           	if(difference < -20)
           	// check if baseline has drifted below current proximity level
     		// If lower by 100 counts, perform an autozero	
           	{   
	           	// 125 x 16ms = 2sec		
           	   	if(underrange_count++ == 125)
				{
					DisplayAutoZeroLEDs(2);
					ProximityState = AUTOZERO_HIGH;
					underrange_count = 0;
				}
				else	
          	   		difference = 0;
           	} 
           	
           	
           	else if (difference > 100)
           	// Next check if the difference is too large to display on the LEDs  	
           	{
				if(overrange_count++ == DETECT_TIME)
				{
					ProximityState = AUTOZERO;

					return(1);
				}
				else	
           			difference= 100;
           		// Leaving PROXIMITY_MODE...transition to MATRIX_KEY_MODE.
           		// Setup for AUTOZERO when we return here.
           		//ProximityState = AUTOZERO;
           		//return(1);
           		
           	}
           	else if(overrange_count)
           	// If we made it here, the difference is > 0 and < 100, so we can display it.
           	// Also, decrement the overrange if previous values incremented this counter	 
           		overrange_count--;
           	
           	mTouchCapApp_SetLEDDisplay(difference);	 		
           	//last_prox = proximity;
     		proximity = 0;	 	
           	
  			break;
			}
	}// end switch
	_RF0 = 0;
	return(0);
}

/********************************************************************
 * Function			:    void InitProximity(void)
 *
 * PreCondition		:    None
 *
 * Input			:    None
 *
 * Output			:    None
 *
 * Side Effects		:    None
 *
 * Overview			: 
 *
 * Note				:
 *******************************************************************/
void InitProximity(void)   			
{

	ProximityState = AUTOZERO;
	baseline = 0;
	proximity = 0;
	sum_channels = 0;
	prox_count = 0;
	measure_count = 0;
	autozero_count = 0;
	
}
/********************************************************************
 * Function			:    void DisplayAutoZeroLEDs(void)
 *
 * PreCondition		:    None
 *
 * Input			:    None
 *
 * Output			:    None
 *
 * Side Effects		:    None
 *
 * Overview			:
 *
 * Note				: 
 *******************************************************************/
void DisplayAutoZeroLEDs(unsigned char mode)
{
	if(mode == 1)
	    PORTD = 0xc0;
	else if(mode == 2)
		PORTE = 0x03;
	else if(mode == 3)
		{
		PORTD = 0xc0;
		PORTE = 0x03;
		}
	else
	{
	PORTD = 0;
	PORTE = 0;
	}
}

