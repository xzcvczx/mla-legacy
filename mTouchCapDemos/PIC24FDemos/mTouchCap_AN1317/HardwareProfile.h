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
* Mihnea Rosu       October 2009    Initial Version
******************************************************************************/

#ifndef HARDWARE_PROFILE_H
#define HARDWARE_PROFILE_H

#define EMCTEST_V2

#if defined(EMCTEST_V2)
	#define CHANNELS			8
	#define CLOCK_FREQ			32000000
	#define CLOCK_FREQ_KHZ		32000		//this is needed for timing calculations that would otherwise overflow
	//#define CLOCK_FREQ		16000000
	//#define CLOCK_FREQ_KHZ	16000		//this is needed for timing calculations that would otherwise overflow
#endif


/** TRIS ***************************************************************/
#define INPUT_PIN           1
#define OUTPUT_PIN          0

#if defined(EMCTEST_V2)
	/** USB ************************************************************/
	//No USB
	/** LED ************************************************************/
	#define D0		PORTGbits.RG8
	#define D1		PORTGbits.RG7
	#define D2		PORTGbits.RG6
	#define D3		PORTEbits.RE7
	#define D4		PORTEbits.RE6
	#define D5		PORTEbits.RE5
	#define D6		PORTEbits.RE4
	#define D7		PORTEbits.RE3

	#define CTL		PORTEbits.RE2

	#define ON		0
	#define OFF		1
	/** SWITCH *********************************************************/
    // No switches
	/** MUX ************************************************************/
	// No MUXes

	//******************************************************************
	// Timing
	//******************************************************************

	#define CLOCK_FREQ_KHZ_16MIPS	32000
	#define PER_100SPS_16MIPS		(UINT32)20000
	#define PER_200SPS_16MIPS		(UINT32)10000
	#define PER_400SPS_16MIPS		(UINT32)5000
	#define PER_500SPS_16MIPS		(UINT32)4000
	#define PER_100SPS				(UINT32)CLOCK_FREQ_KHZ*PER_100SPS_16MIPS/CLOCK_FREQ_KHZ_16MIPS
#endif

#endif  //HARDWARE_PROFILE_H
