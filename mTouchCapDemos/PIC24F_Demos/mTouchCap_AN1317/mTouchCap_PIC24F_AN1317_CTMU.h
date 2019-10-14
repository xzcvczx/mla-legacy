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

//*****************************************************************************
// Defines
//*****************************************************************************
#define READ_SAMP 			    16  	//number of samples taken for each channel

#define PRESS_DEBOUNCE 			8		// button press debounce value
#define DEPRESS_DEBOUNCE		8		// button depress debounce value

#define PRESS_THR 			    (UINT16)READ_SAMP*16	//button press threshold
#define DEPRESS_THR 		    (UINT16)READ_SAMP*12	//button depress threshold

#define WINNER_PCT			    60	//percentage from maximum deviation to invalidate a press

#define AVG_BITS 			    14	//average filter coefficient; larger means slower updating

#define ENV_ATTACK			    1	//envelope attack filter coefficient
#define ENV_DECAY			    2	//envelope decay filter coefficient

#define CHAN_VAL                (INT32)800*READ_SAMP	//desired value for each channel is around 80% of VDD

#define RAW_BITS 		        0  //raw data filer coefficient; no filtering on raw data in this case

#define T1PERIOD				PER_100SPS
#define CHANNEL_TIME			T1PERIOD/CHANNELS

#define CALIB_SAMPLES			64

#define CHARGE_TIME_16MIPS		36		//number of instructions cycles needed to charge pad (should be around 2-3us)
#define CHARGE_TIME				(UINT32)CLOCK_FREQ_KHZ*CHARGE_TIME_16MIPS/CLOCK_FREQ_KHZ_16MIPS
#define PREPARE_TIME			155		//number of instruction cycles to prepare acquisition
#define T1_PRESCALER			8
#define T1_ADJUST				(CHARGE_TIME+PREPARE_TIME)/T1_PRESCALER

#define JITTER_MASK				0xFF

#define TRIMBITS_NEG_LO		0x21
#define TRIMBITS_NEG_HI		0x40
#define TRIMBITS_POS_LO		0x00
#define TRIMBITS_POS_HI		0x20


//*****************************************************************************
// Function Prototypes
//*****************************************************************************
void            Calibrate           (void);

void            Decode				(void);

UINT16 ReadButton(UINT8 number, UINT8 avg);


