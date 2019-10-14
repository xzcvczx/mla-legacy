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

#include "mTouchCap_PIC24F_AN1317_Main.h"
#include "Compiler.h"
#include "GenericTypeDefs.h"
#include "mTouchCap_PIC24F_AN1317_CTMU.h"
#include "HardwareProfile.h"

//#include "rs232.h"				//uncomment if serial communication used

//*****************************************************************************
// PIC Configuration
//*****************************************************************************
#ifdef __C30__
    _CONFIG1( JTAGEN_OFF & GCP_OFF & GWRP_OFF & COE_OFF & FWDTEN_OFF & ICS_PGx2);
	_CONFIG2( IESO_OFF & PLLDIV_DIV2 & FNOSC_PRIPLL & FCKSM_CSDCMD & OSCIOFNC_OFF & POSCMOD_HS & IOL1WAY_ON)
    _CONFIG3( 0xFFFF );
#else
    #error This code has not been tested with your compiler.
#endif

//*****************************************************************************
// Macros
//*****************************************************************************
#define NOP()   asm("NOP")


#define lo(x)   (x  &   0xFF)
#define hi(x)   (x  >>  8)

//*****************************************************************************
// Defines
//*****************************************************************************


//*****************************************************************************
// Global Variables
//*****************************************************************************

//*****************************************************************************
// Compiler Declarations
//*****************************************************************************
#pragma code

/********************************************************************
 * Function:        void main(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        Main program entry point.
 *
 * Note:            None
 *******************************************************************/
int main(void)
{   

    InitializeSystem();

    while(1)
    {
        // it's magic!

    }
    // End Main Loop
}


/********************************************************************
 * Function:        InitializeSystem
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        InitializeSystem is a centralized initialization
 *                  routine.
 *
 *                  User application initialization routine should
 *                  also be called from here.                  
 *
 * Note:            None
 *******************************************************************/
void InitializeSystem(void)
{  
	//		5432109876543210
	TRISG=0b1111111000111111;
	TRISE=0b1111111100000011;
	TRISD=0xFFFF;	
	TRISB=0x0000;
	PORTB=0x0000;

    InitCTMU();
	InitADC();
	//InitSerCon();		//uncomment if using serial communication
	ServiceLEDs(0);
	
	Calibrate();	

    UserInit();

	InitT1();
}


/******************************************************************************
 * Function:        UserInit()
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    
 *
 * Note:            
 *
 *****************************************************************************/
void UserInit(void)
{
	
    
}//end UserInit


/******************************************************************************
 * Function:	_T1Interrupt(void)
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
void __attribute__((interrupt, no_auto_psv)) _T1Interrupt(void)
{
	_T1IF	= 0;
	Decode();
}

/******************************************************************************
 * Function:	InitCTMU()
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
void InitCTMU()
{
	//configure CTMU on highest current setting (55uA) for best noise immunity
	CTMUICON    = 0x0300;
	_IDISSEN    = 0;
	_CTTRIG     = 0;
	_EDGEN      = 0;
	_EDG1POL    = 1;
	_EDG2POL    = 1;
	_EDG1STAT   = 0;	//edge bits will be set/cleared manually 
	_EDG2STAT   = 0;
	_CTMUIF     = 0;
	_CTMUEN     = 1; 	
}

/******************************************************************************
 * Function:        InitADC()
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Note:            Do not modify ADC initialization values unless you know 
 *					what you are doing
 *
 *****************************************************************************/
void InitADC()
{
	AD1CON1bits.ADON    = 1;
	AD1CON1bits.ASAM    = 0;		//automatic sampling off; SAMP bit will start/stop sampling
	AD1CON3             = 0x1F01;	//	
	AD1CHS              = 0x0000;
	AD1PCFGL            = 0xFFFF;	//configure analog channels, but pins are still set on output
	AD1CON1bits.SAMP    = 1;		// to digital "0" to drain charge on pads
}

/******************************************************************************
 * Function: InitT1()
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
void InitT1()
{

	T1CON               = 0x00; 
	TMR1                = 0x00; 
	PR1                 = CHANNEL_TIME; //divide sample rate by number of channels
	T1CONbits.TCKPS1    = 0;
	T1CONbits.TCKPS0    = 1; 		    //prescaler 8
	IFS0bits.T1IF       = 0;
	_T1IE               = 1;
	T1CONbits.TON       = 1; 		    //enable Timer1 and interrupt
}

/******************************************************************************
 * Function:	ServiceLEDs();
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
void ServiceLEDs(UINT16 val)
{
	if(val&0b00000001) D0=ON; else D0=OFF;
	if(val&0b00000010) D1=ON; else D1=OFF;
	if(val&0b00000100) D2=ON; else D2=OFF;
	if(val&0b00001000) D3=ON; else D3=OFF;
	if(val&0b00010000) D4=ON; else D4=OFF;
	if(val&0b00100000) D5=ON; else D5=OFF;
	if(val&0b01000000) D6=ON; else D6=OFF;
	if(val&0b10000000) D7=ON; else D7=OFF;
}


/** EOF main.c *************************************************/
