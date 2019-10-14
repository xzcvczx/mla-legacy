/*****************************************************************************
* CODE OWNERSHIP AND DISCLAIMER OF LIABILITY
* 
* Microchip Technology Incorporated ("Microchip") retains all ownership and 
* intellectual property rights in the code accompanying this message and in 
* all derivatives hereto.  You may use this code, and any derivatives created 
* by any person or entity by or on your behalf, exclusively with Microchip’s 
* proprietary products.  Your acceptance and/or use of this code constitutes 
* agreement to the terms and conditions of this notice.
* 
* CODE ACCOMPANYING THIS MESSAGE IS SUPPLIED BY MICROCHIP "AS IS".  NO 
* WARRANTIES, WHETHER EXPRESS, IMPLIED OR STATUTORY, INCLUDING, BUT NOT 
* LIMITED TO, IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY AND 
* FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS CODE, ITS INTERACTION WITH 
* MICROCHIP’S PRODUCTS, COMBINATION WITH ANY OTHER PRODUCTS, OR USE IN ANY 
* APPLICATION. 
* 
* YOU ACKNOWLEDGE AND AGREE THAT, IN NO EVENT, SHALL MICROCHIP BE LIABLE, 
* WHETHER IN CONTRACT, WARRANTY, TORT (INCLUDING NEGLIGENCE OR BREACH OF 
* STATUTORY DUTY), STRICT LIABILITY, INDEMNITY, CONTRIBUTION, OR OTHERWISE, 
* FOR ANY INDIRECT, SPECIAL, PUNITIVE, EXEMPLARY, INCIDENTAL OR CONSEQUENTIAL 
* LOSS, DAMAGE, FOR COST OR EXPENSE OF ANY KIND WHATSOEVER RELATED TO THE 
* CODE, HOWSOEVER CAUSED, EVEN IF MICROCHIP HAS BEEN ADVISED OF THE 
* POSSIBILITY OR THE DAMAGES ARE FORESEEABLE.  TO THE FULLEST EXTENT ALLOWABLE 
* BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN ANY WAY RELATED TO THIS 
* CODE, SHALL NOT EXCEED THE PRICE YOU PAID DIRECTLY TO MICROCHIP SPECIFICALLY 
* TO HAVE THIS CODE DEVELOPED.
* 
* You agree that you are solely responsible for testing the code and 
* determining its suitability.  Microchip has no obligation to modify, test, 
* certify, or support the code.
*
* Author                Date        Comment
*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* Mihnea Rosu       November 2009   Reading and decoding moved on T1 interrupt
*									to allow multiple functionality	
******************************************************************************/

//*****************************************************************************
// Include and Header files
//*****************************************************************************

#include "Compiler.h"
#include "GenericTypeDefs.h"
#include "HardwareProfile.h"
#include "mTouchCap_PIC24F_AN1317_CTMU.h"
#include "mTouchCap_PIC24F_AN1317_Main.h"

//#include "rs232.h"				//uncomment if serial communication used

//*****************************************************************************
// Macros
//*****************************************************************************
#define NOP()   asm("NOP")


#define lo(x)   (x  &   0xFF)
#define hi(x)   (x  >>  8)

//*****************************************************************************
// Global Variables
//*****************************************************************************

UINT32          average[CHANNELS];	//average values for each channel
UINT8           trim[CHANNELS];		//CTMU current trim values calibrated for each channel
UINT8           chanord[CHANNELS]={5,4,3,2,1,0,6,7};	
//	capsense pads may not be connected to the analog channels in order to allow a better 
//	board layout. You need to enter actual order in this array for normal functionality

UINT8			cindex,maxindex;	// current button index and maximum deviation button index
INT32			maxpress;			// value of maximum deviation found
UINT16			temp_t1,temp_pr1;	//temporary storage for TIMER1 count and period

UINT16          bpress;		// button press flags

UINT8           ldb;	//last maximum index

UINT32          bigraw[CHANNELS];	//BIG button values used for LP filter

UINT16          raw[CHANNELS];		//raw button values

UINT8			db[CHANNELS];	//debouncing counters for each button

INT32           envelope[CHANNELS];	//envelope value calculated for each button

/******************************************************************************
 * Function:	unsigned int ReadButton(UINT8 number, UINT8 avg)
 *
 * PreCondition:    None
 *
 * Input:           ADC channel and number of samples to add
 *
 * Output:          sum of acquired samples
 *
 * Side Effects:    
 *
 * Note:            
 *
 *****************************************************************************/
UINT16 ReadButton(UINT8 number, UINT8 avg)
{
	unsigned int index,chanmask;
	unsigned long temp;

	index = number;
	number=chanord[index];	//get proper channel value from "descrambling" list

	//since board layout is critical for noise immunity, it's very important to 
	//have good trace geometry from the uC to the pads and to keep them short and without vias
	//sometimes it's necessary to connect analog channels in a different order but this can be
	//easily fixed in the firmware

	chanmask=(1<<number);
	AD1PCFGL^=chanmask;		
	AD1CHS=number;			//set ADC channel

	TRISB=0x0000;

	_ITRIM=trim[index];		//set current trim for channel to calibration value

	temp_t1 = TMR1;
	temp_pr1 = PR1;
	T1CONbits.TON = 0;
	T1CONbits.TCKPS0 = 0;	//set prescaler to 1
	PR1 = CHARGE_TIME;
	_T1IE = 0;
	
	temp=0;
	for(index=0;index<avg;index++)
	{
		_SAMP=1;			//turn on ADC sampling (and drain charge on ADC storage cap)
		_IPL=0b111;			//set processor priority to maximum so we don't get interrupts during the measurement
		TRISB^=chanmask;	//set the desired channel to input mode	

		TMR1 = 0;
		IFS0bits.T1IF       = 0;
		T1CONbits.TON = 1;

		_EDG1STAT=1;		//start injecting current

		while(!IFS0bits.T1IF);

		_EDG2STAT=1;	//stop injecting current

		T1CONbits.TON = 0;
	
		_SAMP=0;
	
		while(!_DONE);	//get ADC reading
		
		TRISB^=chanmask;	//drain charge on sensor
		
		_CTMUEN=0;
		_EDG1STAT=0;
		_EDG2STAT=0;
		_CTMUIF=0;
		_CTMUEN=1;		//reset CTMU

		_IPL=0b000;			//restore processor priority

		temp+=ADC1BUF0;
	}

	TMR1 = temp_t1 + READ_SAMP * T1_ADJUST;
	PR1 = temp_pr1;
	T1CONbits.TCKPS0 = 1;	//set prescaler back to 8
	IFS0bits.T1IF = 0;
	_T1IE = 1;
	T1CONbits.TON = 1;

	AD1PCFGL^=chanmask;
	return(temp);
}

/******************************************************************************
 * Function:	Decode(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Note:            
 *
 *****************************************************************************/
void Decode(void)
{	
	UINT8 	index;
	INT32 	temp,winner_thr;
	INT32 	bt;	

		PR1		= CHANNEL_TIME + (raw[cindex] & JITTER_MASK); //jitter

		index = cindex;

		bt  = ReadButton(index, READ_SAMP);
		
		//first acquisition needs to initialize average and envelope to the instantaneous button value
		//you can do this or start from 0 and have a "warmup time"

		if (!bigraw[index]) bigraw[index]   = bt << RAW_BITS; 	
  		if (!raw[index]) raw[index]      	= bt;				
  
		bigraw[index] += (INT32) bt - (bigraw[index] >> RAW_BITS);	//filter raw button data if needed
		raw[index]	= bigraw[index] >> RAW_BITS;

		if (!average[index]) average[index] = ((INT32) bt << AVG_BITS);
        
		temp = (average[index] >> AVG_BITS);

		if (!envelope[index]) envelope[index] = temp;

		bt  = temp - raw[index];		//determine if raw value is over the average
		if (bt < 0) bt = temp + bt;		// and mirror it
        	else bt = raw[index];

		if (bt < envelope[index]) 
			envelope[index] += ((INT32) bt-envelope[index]) >> ENV_ATTACK;
        else if (envelope[index] < temp) 
			envelope[index] += ((INT32) bt-envelope[index]) >> ENV_DECAY;

		temp = temp - envelope[index];
		if (temp < 0) temp=0;	// no negative values allowed

		if (maxpress < temp)	//determine the "most pressed" button
		{
			maxindex  = index;
			maxpress = temp;
		}

		//update average only if deviation is less than the depress threshold
		if (temp < DEPRESS_THR) average[index] += (INT32) raw[index] - (average[index] >> AVG_BITS);

	cindex++;

	if(cindex == CHANNELS)
	{
		cindex   = 0;

		//if there is no valid press clear all button debounce counters except the one with the highest deviation
		if (!bpress) 
	        for (index = 0; index < CHANNELS; index++)
	        {
	            if (index != maxindex) db[index]=0;
	        }
	
		//see if any button has a deviation higher than a percentage of the most pressed one
		//this is useful in noise conditions to determine a valid press
		winner_thr = maxpress * WINNER_PCT/100;
		for (index = 0; index < CHANNELS; index++)
		{
			temp = (average[index] >> AVG_BITS);
			temp = temp - envelope[index];
			if (temp < 0) temp=0;
			if (index != maxindex && temp > winner_thr) break;			
		}
	
		if (maxpress > PRESS_THR && index == CHANNELS) //the percentage test was passed
		{
			if (!bpress) //no valid press yet
			{
				if (db[maxindex] == PRESS_DEBOUNCE) //debounce test passed, set button as pressed
				{
					bpress  = (1 << maxindex);
					ldb     = maxindex;
				} 
	            else if (db[maxindex] < PRESS_DEBOUNCE) db[maxindex]++; //increment debounce counter for button
			} 
	        else //there is a valid press
			{
				//keep the most pressed button to avoid flickering and increment debounce counter
				maxindex  = ldb;
				if (db[maxindex] < PRESS_DEBOUNCE) db[maxindex]++;
			}
		} 
		//if most pressed button under depress threshold or percentage test failed
		//start debouncing down
	    else if (maxpress < DEPRESS_THR || index < CHANNELS) 
		{
			//it is possible to set a lower debounce down value for a quicker release
			if (db[maxindex] > DEPRESS_DEBOUNCE) 
	        {
	            db[maxindex] = DEPRESS_DEBOUNCE;
	        } 
			if (db[maxindex] == 0) bpress = 0;	//clear button if counter is 0
	        	else if (db[maxindex]) db[maxindex]--;	//or decrement down to 0
		}
	
		#ifdef __DEBUG__
			bpress &= (~(0b11 << 6)); //debug mode uses AN6 & AN7
		#endif

		ServiceLEDs(bpress);

		CTL ^= 1;	//blink control LED to measure sample rate

		maxpress = 0;
    	maxindex = 0;
	}
}

/******************************************************************************
 * Function:        
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Note:            
 *
 *****************************************************************************/
void Calibrate()
{
	UINT8 index,trimbits,avnum;
	UINT32 sum;
	
	for (index = 0; index < CHANNELS; index++)
	{
		for (trimbits = TRIMBITS_NEG_LO; trimbits < TRIMBITS_NEG_HI; trimbits++)
		{
			trim[index] = trimbits;
			sum          = 0;

			//average 64 samples for a better precision
			for (avnum = 0; avnum < CALIB_SAMPLES; avnum++) sum += ReadButton(index, READ_SAMP);

			sum /= CALIB_SAMPLES;
			if (sum > CHAN_VAL) break; //stop if the preset 800 (of 1024) value is reached
		}
        
		if (trimbits == TRIMBITS_NEG_HI) //use positive trim values if nominal value not reached yet
        {
            for (trimbits = TRIMBITS_POS_LO; trimbits < TRIMBITS_POS_HI; trimbits++)
            {
                trim[index] = trimbits;
                sum          = 0;

				//average 64 samples for a better precision
                for(avnum = 0; avnum < CALIB_SAMPLES; avnum++) sum += ReadButton(index, READ_SAMP);

                sum /= CALIB_SAMPLES;
                if (sum > CHAN_VAL) break; //stop if the preset 800 (of 1024) value is reached
            }
        }
 
		CTL ^= 1; //blink LED while calibrating
	}

	CTL = OFF;

	for (index = 0; index < CHANNELS; index++) 
	{
		average[index]  	= 0;
		raw[index]      	= 0;
		envelope[index]     = 0;
		bigraw[index]   	= 0;
		db[index]       	= 0;
	}
	maxindex = 0;
	maxpress = 0;
	ldb      = 0;
	cindex	 = 0;
}

/** EOF main.c *************************************************/
