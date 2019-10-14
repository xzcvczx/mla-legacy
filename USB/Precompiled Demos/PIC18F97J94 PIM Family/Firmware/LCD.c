/********************************************************************
 FileName:      LCD.c
 Dependencies:  See INCLUDES section
 Processor:     PIC18F97J94 and PIC18F87J94
 Hardware:      This demo is natively intended to be used on Microchip USB demo
                boards supported by the MCHPFSUSB stack.  See release notes for
                support matrix.  This demo can be modified for use on other 
                hardware platforms.
 Complier:      Microchip C18 (for PIC18)
 Company:       Microchip Technology, Inc.

 Software License Agreement:

 The software supplied herewith by Microchip Technology Incorporated
 (the "Company") for its PIC® Microcontroller is intended and
 supplied to you, the Company's customer, for use solely and
 exclusively on Microchip PIC Microcontroller products. The
 software is owned by the Company and/or its supplier, and is
 protected under applicable copyright laws. All rights are reserved.
 Any use in violation of the foregoing restrictions may subject the
 user to criminal sanctions under applicable laws, as well as to
 civil liability for the breach of the terms and conditions of this
 license.

 THIS SOFTWARE IS PROVIDED IN AN "AS IS" CONDITION. NO WARRANTIES,
 WHETHER EXPRESS, IMPLIED OR STATUTORY, INCLUDING, BUT NOT LIMITED
 TO, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
 PARTICULAR PURPOSE APPLY TO THIS SOFTWARE. THE COMPANY SHALL NOT,
 IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL OR
 CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.

********************************************************************
 File Description:

 Change History:
  Rev   Description
  ----  -----------------------------------------
  1.0   Initial release
  1.1   Adding PIC18F87J94 part support
********************************************************************/

/** INCLUDES *******************************************************/
#include "HardwareProfile.h"


/** VARIABLES ******************************************************/
const ROM   char*   SPLASH = {"    Microchip   ""   PIC18F87J94  "};


/** PIC18F87J94 LCD code *******************************************/
#if defined(PIC18F87J94_PIM)

void UpdateBanner(BANRSTR* Banner)
{
	char* StrPtr = &Banner->String[Banner->CharStrtPt];

		
    LCDErase();
	if(*StrPtr)
	{
        strncpy((char*)LCDText, StrPtr, 16);
        LCDText[ 16 ] = 0x00;                   // null terminate
        LCDUpdate();
        Banner->CharStrtPt++;
	}
	else
	{
		Banner->ScrlCmplt = TRUE;
		Banner->CharStrtPt = 0;
	}			

} // end UpdateBanner()


void DisplayDate( DTVALUE* pCurrentDTV )
{
    LCDErase();

    if((pCurrentDTV -> Month>>4)==0)
    {
        LCDText[ 4 ]    = ' ';
    }
    else
    {
        LCDText[ 4 ]    = (( pCurrentDTV -> Month >> 4 )    + '0' );
    }  

    LCDText[ 5 ]        = (( pCurrentDTV -> Month & 0x0F )  + '0' );
    LCDText[ 6 ]        = '.';
    LCDText[ 7 ]        = (( pCurrentDTV -> Day >> 4 )      + '0' );
    LCDText[ 8 ]        = (( pCurrentDTV -> Day & 0x0F )    + '0' );
    LCDText[ 9 ]        = '.';
    LCDText[ 10 ]       = (( pCurrentDTV -> Year >> 4 )     + '0' );
    LCDText[ 11 ]       = (( pCurrentDTV -> Year & 0x0F )   + '0' );
    LCDUpdate();

} // end DisplayDate()


void DisplayTime( DTVALUE* pCurrentDTV )
{
    LCDErase();
    Nop();
    Nop();
    if((pCurrentDTV -> Hour>>4)==0)
    {
        LCDText[ 4 ]    = ' ';
    }
    else
    {
        LCDText[ 4 ]    = (( pCurrentDTV -> Hour >> 4 )     + '0' );
    }  

    LCDText[ 5 ]        = (( pCurrentDTV -> Hour & 0x0F )   + '0' );
    LCDText[ 6 ]        = ':';
    LCDText[ 7 ]        = (( pCurrentDTV -> Minute >> 4 )   + '0' );
    LCDText[ 8 ]        = (( pCurrentDTV -> Minute & 0x0F ) + '0' );
    LCDText[ 9 ]        = ':';
    LCDText[ 10 ]       = (( pCurrentDTV -> Second >> 4 )   + '0' );
    LCDText[ 11 ]       = (( pCurrentDTV -> Second & 0x0F ) + '0' );
    LCDUpdate();

} // end DisplayTime()


void DisplaySplash( void )
{

    strcpypgm2ram((char*)LCDText, SPLASH);
    LCDUpdate();

} // end DisplaySplash()



void LCDSetAll(void)
{
    // This function not available on the PIC18 Explorer
}	



void LCDToggleSpecialPixels(void)
{
    // This function not available on the PIC18 Explorer
}	



/** PIC18F87J94 LCD code *******************************************/
#else // !defined(PIC18F87J94_PIM)
void DisplayDate( DTVALUE* pCurrentDTV )
{

    if((pCurrentDTV -> Month>>4)==0)
    {
        Digit6(' ');
    }
    else
    {
        Digit6(pCurrentDTV -> Month>>4);
    }  
    Digit5(pCurrentDTV -> Month&0x0F);
    Col2('.');
    Digit4(pCurrentDTV -> Day>>4);
    Digit3(pCurrentDTV -> Day&0x0F);
    Col1('.');
    Digit2(pCurrentDTV -> Year>>4);
    Digit1(pCurrentDTV -> Year&0x0F);
    AMPM(0);

} // end DisplayDate()


void DisplayTime( DTVALUE* pCurrentDTV )
{
    switch(pCurrentDTV -> Hour)
    {

        case 0x01:
        case 0x13:
            Digit6(' ');
            Digit5(1);
            break;
        case 0x02:
        case 0x14:
            Digit6(' ');
            Digit5(2);
            break;
        case 0x03:
        case 0x15:
            Digit6(' ');
            Digit5(3);
            break;
        case 0x04:
        case 0x16:
            Digit6(' ');
            Digit5(4);
            break;
        case 0x05:
        case 0x17:
            Digit6(' ');
            Digit5(5);
            break;
        case 0x06:
        case 0x18:
            Digit6(' ');
            Digit5(6);
            break;
        case 0x07:
        case 0x19:
            Digit6(' ');
            Digit5(7);
            break;
        case 0x08:
        case 0x20:
            Digit6(' ');
            Digit5(8);
            break;
        case 0x09:
        case 0x21:
            Digit6(' ');
            Digit5(9);
            break;	
        case 0x10:
        case 0x22:
            Digit6(1);
            Digit5(0);
            break;
        case 0x11:
        case 0x23:	
            Digit6(1);
            Digit5(1);
            break;
        case 0x00:
        case 0x12:
            Digit6(1);
            Digit5(2);
            break;			    
    }
    Col2(':');
    Digit4(pCurrentDTV -> Minute>>4);
    Digit3(pCurrentDTV -> Minute&0x0F);
    Col1(':');
    Digit2(pCurrentDTV -> Second>>4);
    Digit1(pCurrentDTV -> Second&0x0F);
    if(pCurrentDTV -> Hour< 0x12)
    {
        AMPM('a');
    }
    else
    {
        AMPM('p');
    } 	

} // end DisplayTime()


void DisplaySplash( void )
{
    LCDMicrochip();
    LCDSetSpecialPixels();
} // end DisplaySplash()


void LCDInit(void)
{
	// Enable all segment pins
	S1=1; S2=1; S3=1; S4=1; S5=1; S6=1; S7=1; S8=1; S9=1; S10=1;
	S11=1;S12=1;S13=1;S14=1;S15=1;S16=1;S17=1;S18=1;S19=1;S20=1;
	S21=1;S22=1;S23=1;S24=1;S25=1;S26=1;S27=1;S28=1;S29=1;S30=1;
	S31=1;S32=1;S33=1;S34=1;S35=1;S36=1;

	// Clear all pixels
	LCDClearAll();
		
	//Internal resistor Ladder
	LCDREF=0xA0;// should be LCDREF
	LCDRL=0xF7;	//Should be LCDRL
	LCDPS=0x02;

	LCDCON=0x87;
} // end LCDInit()

void LCDSetAll(void)
{
	X1C37=1;X2C37=1;X3C37=1;X4C37=1;X5C37=1;X6C37=1;X7C37=1;
	X1C36=1;X2C36=1;X3C36=1;X4C36=1;X5C36=1;X6C36=1;X7C36=1;
	X1C35=1;X2C35=1;X3C35=1;X4C35=1;X5C35=1;X6C35=1;X7C35=1;
	X1C34=1;X2C34=1;X3C34=1;X4C34=1;X5C34=1;X6C34=1;X7C34=1;
	X1C33=1;X2C33=1;X3C33=1;X4C33=1;X5C33=1;X6C33=1;X7C33=1;
	X1C32=1;X2C32=1;X3C32=1;X4C32=1;X5C32=1;X6C32=1;X7C32=1;
	X1C31=1;X2C31=1;X3C31=1;X4C31=1;X5C31=1;X6C31=1;X7C31=1;
	X1C30=1;X2C30=1;X3C30=1;X4C30=1;X5C30=1;X6C30=1;X7C30=1;
	X1C29=1;X2C29=1;X3C29=1;X4C29=1;X5C29=1;X6C29=1;X7C29=1;RMB=1;
	X1C28=1;X2C28=1;X3C28=1;X4C28=1;X5C28=1;X6C28=1;X7C28=1;CENT=1;
	X1C27=1;X2C27=1;X3C27=1;X4C27=1;X5C27=1;X6C27=1;X7C27=1;MICROCHIP=1;
	X1C26=1;X2C26=1;X3C26=1;X4C26=1;X5C26=1;X6C26=1;X7C26=1;DEGFAR=1;
	X1C25=1;X2C25=1;X3C25=1;X4C25=1;X5C25=1;X6C25=1;X7C25=1;DEGCEL=1;
	X1C24=1;X2C24=1;X3C24=1;X4C24=1;X5C24=1;X6C24=1;X7C24=1;THERMO=1;
	X1C23=1;X2C23=1;X3C23=1;X4C23=1;X5C23=1;X6C23=1;X7C23=1;DROP=1;
	X1C22=1;X2C22=1;X3C22=1;X4C22=1;X5C22=1;X6C22=1;X7C22=1;BAT4=1;
	X1C21=1;X2C21=1;X3C21=1;X4C21=1;X5C21=1;X6C21=1;X7C21=1;BAT3=1;
	X1C20=1;X2C20=1;X3C20=1;X4C20=1;X5C20=1;X6C20=1;X7C20=1;BAT2=1;
	X1C19=1;X2C19=1;X3C19=1;X4C19=1;X5C19=1;X6C19=1;X7C19=1;BAT1=1;
	X1C18=1;X2C18=1;X3C18=1;X4C18=1;X5C18=1;X6C18=1;X7C18=1;STRIP=1;
	X1C17=1;X2C17=1;X3C17=1;X4C17=1;X5C17=1;X6C17=1;X7C17=1;HEART=1;
	X1C16=1;X2C16=1;X3C16=1;X4C16=1;X5C16=1;X6C16=1;X7C16=1;CLOUD=1;
	X1C15=1;X2C15=1;X3C15=1;X4C15=1;X5C15=1;X6C15=1;X7C15=1;ZIG=1;
	X1C14=1;X2C14=1;X3C14=1;X4C14=1;X5C14=1;X6C14=1;X7C14=1;WIFI=1;
	X1C13=1;X2C13=1;X3C13=1;X4C13=1;X5C13=1;X6C13=1;X7C13=1;PAN=1;
	X1C12=1;X2C12=1;X3C12=1;X4C12=1;X5C12=1;X6C12=1;X7C12=1;SUN=1;
	X1C11=1;X2C11=1;X3C11=1;X4C11=1;X5C11=1;X6C11=1;X7C11=1;WHEEL10=1;
	X1C10=1;X2C10=1;X3C10=1;X4C10=1;X5C10=1;X6C10=1;X7C10=1;WHEEL9=1;
	X1C9=1; X2C9=1; X3C9=1; X4C9=1; X5C9=1; X6C9=1; X7C9=1; WHEEL8=1;
	X1C8=1; X2C8=1; X3C8=1; X4C8=1; X5C8=1; X6C8=1; X7C8=1; WHEEL7=1;
	X1C7=1; X2C7=1; X3C7=1; X4C7=1; X5C7=1; X6C7=1; X7C7=1; WHEEL6=1;
	X1C6=1; X2C6=1; X3C6=1; X4C6=1; X5C6=1; X6C6=1; X7C6=1; WHEEL5=1;	
	X1C5=1; X2C5=1; X3C5=1; X4C5=1; X5C5=1; X6C5=1; X7C5=1; WHEEL4=1;
	X1C4=1; X2C4=1; X3C4=1; X4C4=1; X5C4=1; X6C4=1; X7C4=1; WHEEL3=1;	
	X1C3=1; X2C3=1; X3C3=1; X4C3=1; X5C3=1; X6C3=1; X7C3=1; WHEEL2=1;	
	X1C2=1; X2C2=1; X3C2=1; X4C2=1; X5C2=1; X6C2=1; X7C2=1; WHEEL1=1;
	X1C1=1; X2C1=1; X3C1=1; X4C1=1; X5C1=1; X6C1=1; X7C1=1; Dollar=1;

} // end LCDSetAll()


void LCDClearAll(void)
{
	X1C37=0;X2C37=0;X3C37=0;X4C37=0;X5C37=0;X6C37=0;X7C37=0;
	X1C36=0;X2C36=0;X3C36=0;X4C36=0;X5C36=0;X6C36=0;X7C36=0;
	X1C35=0;X2C35=0;X3C35=0;X4C35=0;X5C35=0;X6C35=0;X7C35=0;
	X1C34=0;X2C34=0;X3C34=0;X4C34=0;X5C34=0;X6C34=0;X7C34=0;
	X1C33=0;X2C33=0;X3C33=0;X4C33=0;X5C33=0;X6C33=0;X7C33=0;
	X1C32=0;X2C32=0;X3C32=0;X4C32=0;X5C32=0;X6C32=0;X7C32=0;
	X1C31=0;X2C31=0;X3C31=0;X4C31=0;X5C31=0;X6C31=0;X7C31=0;
	X1C30=0;X2C30=0;X3C30=0;X4C30=0;X5C30=0;X6C30=0;X7C30=0;
	X1C29=0;X2C29=0;X3C29=0;X4C29=0;X5C29=0;X6C29=0;X7C29=0;RMB=0;
	X1C28=0;X2C28=0;X3C28=0;X4C28=0;X5C28=0;X6C28=0;X7C28=0;CENT=0;
	X1C27=0;X2C27=0;X3C27=0;X4C27=0;X5C27=0;X6C27=0;X7C27=0;MICROCHIP=1;//Microchip logo always on
	X1C26=0;X2C26=0;X3C26=0;X4C26=0;X5C26=0;X6C26=0;X7C26=0;DEGFAR=0;
	X1C25=0;X2C25=0;X3C25=0;X4C25=0;X5C25=0;X6C25=0;X7C25=0;DEGCEL=0;
	X1C24=0;X2C24=0;X3C24=0;X4C24=0;X5C24=0;X6C24=0;X7C24=0;THERMO=0;
	X1C23=0;X2C23=0;X3C23=0;X4C23=0;X5C23=0;X6C23=0;X7C23=0;DROP=0;
	X1C22=0;X2C22=0;X3C22=0;X4C22=0;X5C22=0;X6C22=0;X7C22=0;BAT4=0;
	X1C21=0;X2C21=0;X3C21=0;X4C21=0;X5C21=0;X6C21=0;X7C21=0;BAT3=0;
	X1C20=0;X2C20=0;X3C20=0;X4C20=0;X5C20=0;X6C20=0;X7C20=0;BAT2=0;
	X1C19=0;X2C19=0;X3C19=0;X4C19=0;X5C19=0;X6C19=0;X7C19=0;BAT1=0;
	X1C18=0;X2C18=0;X3C18=0;X4C18=0;X5C18=0;X6C18=0;X7C18=0;STRIP=0;
	X1C17=0;X2C17=0;X3C17=0;X4C17=0;X5C17=0;X6C17=0;X7C17=0;HEART=0;
	X1C16=0;X2C16=0;X3C16=0;X4C16=0;X5C16=0;X6C16=0;X7C16=0;CLOUD=0;
	X1C15=0;X2C15=0;X3C15=0;X4C15=0;X5C15=0;X6C15=0;X7C15=0;ZIG=0;
	X1C14=0;X2C14=0;X3C14=0;X4C14=0;X5C14=0;X6C14=0;X7C14=0;WIFI=0;
	X1C13=0;X2C13=0;X3C13=0;X4C13=0;X5C13=0;X6C13=0;X7C13=0;PAN=0;
	X1C12=0;X2C12=0;X3C12=0;X4C12=0;X5C12=0;X6C12=0;X7C12=0;SUN=0;
	X1C11=0;X2C11=0;X3C11=0;X4C11=0;X5C11=0;X6C11=0;X7C11=0;WHEEL10=0;
	X1C10=0;X2C10=0;X3C10=0;X4C10=0;X5C10=0;X6C10=0;X7C10=0;WHEEL9=0;
	X1C9=0; X2C9=0; X3C9=0; X4C9=0; X5C9=0; X6C9=0; X7C9=0; WHEEL8=0;
	X1C8=0; X2C8=0; X3C8=0; X4C8=0; X5C8=0; X6C8=0; X7C8=0; WHEEL7=0;
	X1C7=0; X2C7=0; X3C7=0; X4C7=0; X5C7=0; X6C7=0; X7C7=0; WHEEL6=0;
	X1C6=0; X2C6=0; X3C6=0; X4C6=0; X5C6=0; X6C6=0; X7C6=0; WHEEL5=0;	
	X1C5=0; X2C5=0; X3C5=0; X4C5=0; X5C5=0; X6C5=0; X7C5=0; WHEEL4=0;
	X1C4=0; X2C4=0; X3C4=0; X4C4=0; X5C4=0; X6C4=0; X7C4=0; WHEEL3=0;	
	X1C3=0; X2C3=0; X3C3=0; X4C3=0; X5C3=0; X6C3=0; X7C3=0; WHEEL2=0;	
	X1C2=0; X2C2=0; X3C2=0; X4C2=0; X5C2=0; X6C2=0; X7C2=0; WHEEL1=0;
	X1C1=0; X2C1=0; X3C1=0; X4C1=0; X5C1=0; X6C1=0; X7C1=0; Dollar=0;

} // end LCDClearAll()

void LCDMicrochip(void)
{
	X1C37=0;X2C37=0;X3C37=0;X4C37=1;X5C37=0;X6C37=0;X7C37=0;
	X1C36=0;X2C36=0;X3C36=1;X4C36=0;X5C36=1;X6C36=0;X7C36=0;
	X1C35=0;X2C35=0;X3C35=1;X4C35=0;X5C35=1;X6C35=0;X7C35=0;
	X1C34=0;X2C34=0;X3C34=1;X4C34=1;X5C34=1;X6C34=1;X7C34=1;
	X1C33=0;X2C33=0;X3C33=0;X4C33=0;X5C33=0;X6C33=0;X7C33=0;
	X1C32=0;X2C32=0;X3C32=1;X4C32=1;X5C32=1;X6C32=1;X7C32=1;
	X1C31=0;X2C31=0;X3C31=0;X4C31=0;X5C31=0;X6C31=0;X7C31=0;
	X1C30=0;X2C30=0;X3C30=1;X4C30=1;X5C30=1;X6C30=1;X7C30=1;
	X1C29=0;X2C29=0;X3C29=0;X4C29=0;X5C29=1;X6C29=0;X7C29=0;RMB=0;
	X1C28=0;X2C28=0;X3C28=0;X4C28=0;X5C28=1;X6C28=0;X7C28=0;CENT=0;
	X1C27=0;X2C27=0;X3C27=1;X4C27=1;X5C27=1;X6C27=1;X7C27=1;MICROCHIP=1;
	X1C26=0;X2C26=0;X3C26=0;X4C26=0;X5C26=0;X6C26=0;X7C26=0;DEGFAR=0;
	X1C25=0;X2C25=0;X3C25=1;X4C25=0;X5C25=0;X6C25=0;X7C25=1;DEGCEL=0;
	X1C24=0;X2C24=0;X3C24=1;X4C24=0;X5C24=0;X6C24=0;X7C24=1;THERMO=0;
	X1C23=0;X2C23=0;X3C23=0;X4C23=1;X5C23=1;X6C23=1;X7C23=0;DROP=0;
	X1C22=0;X2C22=0;X3C22=0;X4C22=0;X5C22=0;X6C22=0;X7C22=0;BAT4=0;
	X1C21=0;X2C21=0;X3C21=0;X4C21=1;X5C21=1;X6C21=1;X7C21=0;BAT3=0;
	X1C20=0;X2C20=0;X3C20=1;X4C20=0;X5C20=0;X6C20=0;X7C20=1;BAT2=0;
	X1C19=0;X2C19=0;X3C19=1;X4C19=0;X5C19=0;X6C19=0;X7C19=1;BAT1=0;
	X1C18=0;X2C18=0;X3C18=0;X4C18=1;X5C18=1;X6C18=1;X7C18=0;STRIP=0;
	X1C17=0;X2C17=0;X3C17=0;X4C17=0;X5C17=0;X6C17=0;X7C17=0;HEART=0;
	X1C16=0;X2C16=0;X3C16=0;X4C16=1;X5C16=1;X6C16=0;X7C16=1;CLOUD=0;
	X1C15=0;X2C15=0;X3C15=1;X4C15=0;X5C15=1;X6C15=1;X7C15=0;ZIG=0;
	X1C14=0;X2C14=0;X3C14=1;X4C14=0;X5C14=1;X6C14=0;X7C14=0;WIFI=0;
	X1C13=0;X2C13=0;X3C13=1;X4C13=1;X5C13=1;X6C13=1;X7C13=1;PAN=0;
	X1C12=0;X2C12=0;X3C12=0;X4C12=0;X5C12=0;X6C12=0;X7C12=0;SUN=0;
	X1C11=0;X2C11=0;X3C11=1;X4C11=0;X5C11=0;X6C11=0;X7C11=1;WHEEL10=0;
	X1C10=0;X2C10=0;X3C10=1;X4C10=0;X5C10=0;X6C10=0;X7C10=1;WHEEL9=0;
	X1C9=0; X2C9=0; X3C9=0; X4C9=1; X5C9=1; X6C9=1; X7C9=0; WHEEL8=0;
	X1C8=0; X2C8=0; X3C8=0; X4C8=0; X5C8=0; X6C8=0; X7C8=0; WHEEL7=0;
	X1C7=0; X2C7=0; X3C7=1; X4C7=1; X5C7=1; X6C7=1; X7C7=1; WHEEL6=0;
	X1C6=0; X2C6=0; X3C6=0; X4C6=0; X5C6=0; X6C6=0; X7C6=0; WHEEL5=0;	
	X1C5=1; X2C5=1; X3C5=1; X4C5=1; X5C5=1; X6C5=1; X7C5=1; WHEEL4=0;
	X1C4=0; X2C4=1; X3C4=0; X4C4=0; X5C4=0; X6C4=0; X7C4=0; WHEEL3=0;	
	X1C3=0; X2C3=0; X3C3=1; X4C3=0; X5C3=0; X6C3=0; X7C3=0; WHEEL2=0;	
	X1C2=0; X2C2=1; X3C2=0; X4C2=0; X5C2=0; X6C2=0; X7C2=0; WHEEL1=0;
	X1C1=1; X2C1=1; X3C1=1; X4C1=1; X5C1=1; X6C1=1; X7C1=1; Dollar=0;

} // end LCDMicrochip()

void LCDSetSpecialPixels(void)
{
	RMB=1;CENT=1;DEGFAR=1;DEGCEL=1;THERMO=1;DROP=1;
	BAT4=1;BAT3=1;BAT2=1;BAT1=1;STRIP=1;HEART=1;
	CLOUD=1;ZIG=1;WIFI=1;PAN=1;SUN=1;WHEEL10=1;
	WHEEL9=1;WHEEL8=1;WHEEL7=1;WHEEL6=1;WHEEL5=1;
	WHEEL4=1;WHEEL3=1;WHEEL2=1;WHEEL1=1;Dollar=1;
} // end LCDSetSpecialPixels()

void LCDClearSpecialPixels(void)
{
	RMB=0;CENT=0;DEGFAR=0;DEGCEL=0;THERMO=0;DROP=0;
	BAT4=0;BAT3=0;BAT2=0;BAT1=0;STRIP=0;HEART=0;
	CLOUD=0;ZIG=0;WIFI=0;PAN=0;SUN=0;WHEEL10=0;
	WHEEL9=0;WHEEL8=0;WHEEL7=0;WHEEL6=0;WHEEL5=0;
	WHEEL4=0;WHEEL3=0;WHEEL2=0;WHEEL1=0;Dollar=0;
} // end LCDClearSpecialPixels()

void LCDToggleSpecialPixels(void)
{
	RMB^=1;CENT^=1;DEGFAR^=1;DEGCEL^=1;THERMO^=1;DROP^=1;
	BAT4^=1;BAT3^=1;BAT2^=1;BAT1^=1;STRIP^=1;HEART^=1;
	CLOUD^=1;ZIG^=1;WIFI^=1;PAN^=1;SUN^=1;WHEEL10^=1;
	WHEEL9^=1;WHEEL8^=1;WHEEL7^=1;WHEEL6^=1;WHEEL5^=1;
	WHEEL4^=1;WHEEL3^=1;WHEEL2^=1;WHEEL1^=1;Dollar^=1;
} // end LCDToggleSpecialPixels()

void Digit6(BYTE a)
{
	X1C5=0;X2C5=0;X3C5=0;X4C5=0;X5C5=0;X6C5=0;X7C5=0;
	
	switch(a)
	{
		case 0:
			X1C4=0;X2C4=1;X3C4=1;X4C4=1;X5C4=1;X6C4=1;X7C4=0;
			X1C3=1;X2C3=0;X3C3=0;X4C3=0;X5C3=0;X6C3=0;X7C3=1;
			X1C2=1;X2C2=0;X3C2=0;X4C2=0;X5C2=0;X6C2=0;X7C2=1;
			X1C1=0;X2C1=1;X3C1=1;X4C1=1;X5C1=1;X6C1=1;X7C1=0;
		break;
		case 1:
			X1C4=0;X2C4=0;X3C4=0;X4C4=0;X5C4=0;X6C4=0;X7C4=0;
			X1C3=1;X2C3=1;X3C3=1;X4C3=1;X5C3=1;X6C3=1;X7C3=1;
			X1C2=0;X2C2=1;X3C2=0;X4C2=0;X5C2=0;X6C2=0;X7C2=0;
			X1C1=0;X2C1=0;X3C1=0;X4C1=0;X5C1=0;X6C1=0;X7C1=0;
		break;
		case 2:			
			X1C4=0;X2C4=1;X3C4=1;X4C4=0;X5C4=0;X6C4=0;X7C4=1;
			X1C3=1;X2C3=0;X3C3=0;X4C3=1;X5C3=0;X6C3=0;X7C3=1;
			X1C2=1;X2C2=0;X3C2=0;X4C2=0;X5C2=1;X6C2=0;X7C2=1;
			X1C1=0;X2C1=1;X3C1=0;X4C1=0;X5C1=0;X6C1=1;X7C1=1;
		break;
		case 3:			
			X1C4=0;X2C4=1;X3C4=1;X4C4=0;X5C4=1;X6C4=1;X7C4=0;
			X1C3=1;X2C3=0;X3C3=0;X4C3=1;X5C3=0;X6C3=0;X7C3=1;
			X1C2=1;X2C2=0;X3C2=0;X4C2=1;X5C2=0;X6C2=0;X7C2=1;
			X1C1=0;X2C1=1;X3C1=0;X4C1=0;X5C1=0;X6C1=1;X7C1=0;
		break;
		case 4:			
			X1C4=1;X2C4=1;X3C4=1;X4C4=1;X5C4=1;X6C4=1;X7C4=1;
			X1C3=0;X2C3=1;X3C3=0;X4C3=0;X5C3=1;X6C3=0;X7C3=0;
			X1C2=0;X2C2=0;X3C2=1;X4C2=0;X5C2=1;X6C2=0;X7C2=0;
			X1C1=0;X2C1=0;X3C1=0;X4C1=1;X5C1=1;X6C1=0;X7C1=0;
		break;
		case 5:				
			X1C4=1;X2C4=0;X3C4=0;X4C4=0;X5C4=1;X6C4=1;X7C4=0;
			X1C3=1;X2C3=0;X3C3=0;X4C3=1;X5C3=0;X6C3=0;X7C3=1;
			X1C2=1;X2C2=0;X3C2=0;X4C2=1;X5C2=0;X6C2=0;X7C2=1;
			X1C1=1;X2C1=1;X3C1=1;X4C1=0;X5C1=0;X6C1=1;X7C1=0;
		break;
		case 6:			
			X1C4=0;X2C4=1;X3C4=0;X4C4=0;X5C4=1;X6C4=1;X7C4=0;
			X1C3=1;X2C3=0;X3C3=0;X4C3=1;X5C3=0;X6C3=0;X7C3=1;
			X1C2=1;X2C2=0;X3C2=0;X4C2=1;X5C2=0;X6C2=0;X7C2=1;
			X1C1=0;X2C1=1;X3C1=1;X4C1=1;X5C1=1;X6C1=1;X7C1=0;
		break;
		case 7:			
			X1C4=1;X2C4=1;X3C4=1;X4C4=0;X5C4=0;X6C4=0;X7C4=0;
			X1C3=1;X2C3=0;X3C3=0;X4C3=1;X5C3=0;X6C3=0;X7C3=0;
			X1C2=1;X2C2=0;X3C2=0;X4C2=0;X5C2=1;X6C2=1;X7C2=1;
			X1C1=1;X2C1=1;X3C1=0;X4C1=0;X5C1=0;X6C1=0;X7C1=0;
		break;
		case 8:			
			X1C4=0;X2C4=1;X3C4=1;X4C4=0;X5C4=1;X6C4=1;X7C4=0;
			X1C3=1;X2C3=0;X3C3=0;X4C3=1;X5C3=0;X6C3=0;X7C3=1;
			X1C2=1;X2C2=0;X3C2=0;X4C2=1;X5C2=0;X6C2=0;X7C2=1;
			X1C1=0;X2C1=1;X3C1=1;X4C1=0;X5C1=1;X6C1=1;X7C1=0;
		break;
		case 9:			
			X1C4=0;X2C4=1;X3C4=1;X4C4=1;X5C4=1;X6C4=1;X7C4=0;
			X1C3=1;X2C3=0;X3C3=0;X4C3=1;X5C3=0;X6C3=0;X7C3=1;
			X1C2=1;X2C2=0;X3C2=0;X4C2=1;X5C2=0;X6C2=0;X7C2=1;
			X1C1=0;X2C1=1;X3C1=1;X4C1=0;X5C1=0;X6C1=1;X7C1=0;
		break;
		default:			
			X1C4=0;X2C4=0;X3C4=0;X4C4=0;X5C4=0;X6C4=0;X7C4=0;
			X1C3=0;X2C3=0;X3C3=0;X4C3=0;X5C3=0;X6C3=0;X7C3=0;
			X1C2=0;X2C2=0;X3C2=0;X4C2=0;X5C2=0;X6C2=0;X7C2=0;
			X1C1=0;X2C1=0;X3C1=0;X4C1=0;X5C1=0;X6C1=0;X7C1=0;
		break;
	}
} // end Digit6()

void Digit5(BYTE a)
{
	X1C10=0;X2C10=0;X3C10=0;X4C10=0;X5C10=0;X6C10=0;X7C10=0;
	
	switch(a)
	{
		case 0:
			X1C9=0;X2C9=1;X3C9=1;X4C9=1;X5C9=1;X6C9=1;X7C9=0;
			X1C8=1;X2C8=0;X3C8=0;X4C8=0;X5C8=0;X6C8=0;X7C8=1;
			X1C7=1;X2C7=0;X3C7=0;X4C7=0;X5C7=0;X6C7=0;X7C7=1;
			X1C6=0;X2C6=1;X3C6=1;X4C6=1;X5C6=1;X6C6=1;X7C6=0;
		break;
		case 1:
			X1C9=0;X2C9=0;X3C9=0;X4C9=0;X5C9=0;X6C9=0;X7C9=0;
			X1C8=1;X2C8=1;X3C8=1;X4C8=1;X5C8=1;X6C8=1;X7C8=1;
			X1C7=0;X2C7=1;X3C7=0;X4C7=0;X5C7=0;X6C7=0;X7C7=0;
			X1C6=0;X2C6=0;X3C6=0;X4C6=0;X5C6=0;X6C6=0;X7C6=0;
		break;
		case 2:			
			X1C9=0;X2C9=1;X3C9=1;X4C9=0;X5C9=0;X6C9=0;X7C9=1;
			X1C8=1;X2C8=0;X3C8=0;X4C8=1;X5C8=0;X6C8=0;X7C8=1;
			X1C7=1;X2C7=0;X3C7=0;X4C7=0;X5C7=1;X6C7=0;X7C7=1;
			X1C6=0;X2C6=1;X3C6=0;X4C6=0;X5C6=0;X6C6=1;X7C6=1;
		break;
		case 3:			
			X1C9=0;X2C9=1;X3C9=1;X4C9=0;X5C9=1;X6C9=1;X7C9=0;
			X1C8=1;X2C8=0;X3C8=0;X4C8=1;X5C8=0;X6C8=0;X7C8=1;
			X1C7=1;X2C7=0;X3C7=0;X4C7=1;X5C7=0;X6C7=0;X7C7=1;
			X1C6=0;X2C6=1;X3C6=0;X4C6=0;X5C6=0;X6C6=1;X7C6=0;
		break;
		case 4:			
			X1C9=1;X2C9=1;X3C9=1;X4C9=1;X5C9=1;X6C9=1;X7C9=1;
			X1C8=0;X2C8=1;X3C8=0;X4C8=0;X5C8=1;X6C8=0;X7C8=0;
			X1C7=0;X2C7=0;X3C7=1;X4C7=0;X5C7=1;X6C7=0;X7C7=0;
			X1C6=0;X2C6=0;X3C6=0;X4C6=1;X5C6=1;X6C6=0;X7C6=0;
		break;
		case 5:				
			X1C9=1;X2C9=0;X3C9=0;X4C9=0;X5C9=1;X6C9=1;X7C9=0;
			X1C8=1;X2C8=0;X3C8=0;X4C8=1;X5C8=0;X6C8=0;X7C8=1;
			X1C7=1;X2C7=0;X3C7=0;X4C7=1;X5C7=0;X6C7=0;X7C7=1;
			X1C6=1;X2C6=1;X3C6=1;X4C6=0;X5C6=0;X6C6=1;X7C6=0;
		break;
		case 6:			
			X1C9=0;X2C9=1;X3C9=0;X4C9=0;X5C9=1;X6C9=1;X7C9=0;
			X1C8=1;X2C8=0;X3C8=0;X4C8=1;X5C8=0;X6C8=0;X7C8=1;
			X1C7=1;X2C7=0;X3C7=0;X4C7=1;X5C7=0;X6C7=0;X7C7=1;
			X1C6=0;X2C6=1;X3C6=1;X4C6=1;X5C6=1;X6C6=1;X7C6=0;
		break;
		case 7:			
			X1C9=1;X2C9=1;X3C9=1;X4C9=0;X5C9=0;X6C9=0;X7C9=0;
			X1C8=1;X2C8=0;X3C8=0;X4C8=1;X5C8=0;X6C8=0;X7C8=0;
			X1C7=1;X2C7=0;X3C7=0;X4C7=0;X5C7=1;X6C7=1;X7C7=1;
			X1C6=1;X2C6=1;X3C6=0;X4C6=0;X5C6=0;X6C6=0;X7C6=0;
		break;
		case 8:			
			X1C9=0;X2C9=1;X3C9=1;X4C9=0;X5C9=1;X6C9=1;X7C9=0;
			X1C8=1;X2C8=0;X3C8=0;X4C8=1;X5C8=0;X6C8=0;X7C8=1;
			X1C7=1;X2C7=0;X3C7=0;X4C7=1;X5C7=0;X6C7=0;X7C7=1;
			X1C6=0;X2C6=1;X3C6=1;X4C6=0;X5C6=1;X6C6=1;X7C6=0;
		break;
		case 9:			
			X1C9=0;X2C9=1;X3C9=1;X4C9=1;X5C9=1;X6C9=1;X7C9=0;
			X1C8=1;X2C8=0;X3C8=0;X4C8=1;X5C8=0;X6C8=0;X7C8=1;
			X1C7=1;X2C7=0;X3C7=0;X4C7=1;X5C7=0;X6C7=0;X7C7=1;
			X1C6=0;X2C6=1;X3C6=1;X4C6=0;X5C6=0;X6C6=1;X7C6=0;
		break;
		default:			
			X1C9=0;X2C9=0;X3C9=0;X4C9=0;X5C9=0;X6C9=0;X7C9=0;
			X1C8=0;X2C8=0;X3C8=0;X4C8=0;X5C8=0;X6C8=0;X7C8=0;
			X1C7=0;X2C7=0;X3C7=0;X4C7=0;X5C7=0;X6C7=0;X7C7=0;
			X1C6=0;X2C6=0;X3C6=0;X4C6=0;X5C6=0;X6C6=0;X7C6=0;
		break;
	}
} // end Digit5()

void Col2(BYTE a)
{
	X1C12=0;X2C12=0;X3C12=0;X4C12=0;X5C12=0;X6C12=0;X7C12=0;
	
	switch(a)
	{
		case ':':
			X1C11=0;X2C11=0;X3C11=1;X4C11=0;X5C11=1;X6C11=0;X7C11=0;
		break;
		case '.':
			X1C11=0;X2C11=0;X3C11=0;X4C11=0;X5C11=0;X6C11=0;X7C11=1;
		break;
		default:			
			X1C11=0;X2C11=0;X3C11=0;X4C11=0;X5C11=0;X6C11=0;X7C11=0;
		break;
	}
} // end Col2()

void Digit4(BYTE a)
{
	X1C17=0;X2C17=0;X3C17=0;X4C17=0;X5C17=0;X6C17=0;X7C17=0;
	
	switch(a)
	{
		case 0:
			X1C16=0;X2C16=1;X3C16=1;X4C16=1;X5C16=1;X6C16=1;X7C16=0;
			X1C15=1;X2C15=0;X3C15=0;X4C15=0;X5C15=0;X6C15=0;X7C15=1;
			X1C14=1;X2C14=0;X3C14=0;X4C14=0;X5C14=0;X6C14=0;X7C14=1;
			X1C13=0;X2C13=1;X3C13=1;X4C13=1;X5C13=1;X6C13=1;X7C13=0;
		break;
		case 1:
			X1C16=0;X2C16=0;X3C16=0;X4C16=0;X5C16=0;X6C16=0;X7C16=0;
			X1C15=1;X2C15=1;X3C15=1;X4C15=1;X5C15=1;X6C15=1;X7C15=1;
			X1C14=0;X2C14=1;X3C14=0;X4C14=0;X5C14=0;X6C14=0;X7C14=0;
			X1C13=0;X2C13=0;X3C13=0;X4C13=0;X5C13=0;X6C13=0;X7C13=0;
		break;
		case 2:			
			X1C16=0;X2C16=1;X3C16=1;X4C16=0;X5C16=0;X6C16=0;X7C16=1;
			X1C15=1;X2C15=0;X3C15=0;X4C15=1;X5C15=0;X6C15=0;X7C15=1;
			X1C14=1;X2C14=0;X3C14=0;X4C14=0;X5C14=1;X6C14=0;X7C14=1;
			X1C13=0;X2C13=1;X3C13=0;X4C13=0;X5C13=0;X6C13=1;X7C13=1;
		break;
		case 3:			
			X1C16=0;X2C16=1;X3C16=1;X4C16=0;X5C16=1;X6C16=1;X7C16=0;
			X1C15=1;X2C15=0;X3C15=0;X4C15=1;X5C15=0;X6C15=0;X7C15=1;
			X1C14=1;X2C14=0;X3C14=0;X4C14=1;X5C14=0;X6C14=0;X7C14=1;
			X1C13=0;X2C13=1;X3C13=0;X4C13=0;X5C13=0;X6C13=1;X7C13=0;
		break;
		case 4:			
			X1C16=1;X2C16=1;X3C16=1;X4C16=1;X5C16=1;X6C16=1;X7C16=1;
			X1C15=0;X2C15=1;X3C15=0;X4C15=0;X5C15=1;X6C15=0;X7C15=0;
			X1C14=0;X2C14=0;X3C14=1;X4C14=0;X5C14=1;X6C14=0;X7C14=0;
			X1C13=0;X2C13=0;X3C13=0;X4C13=1;X5C13=1;X6C13=0;X7C13=0;
		break;
		case 5:				
			X1C16=1;X2C16=0;X3C16=0;X4C16=0;X5C16=1;X6C16=1;X7C16=0;
			X1C15=1;X2C15=0;X3C15=0;X4C15=1;X5C15=0;X6C15=0;X7C15=1;
			X1C14=1;X2C14=0;X3C14=0;X4C14=1;X5C14=0;X6C14=0;X7C14=1;
			X1C13=1;X2C13=1;X3C13=1;X4C13=0;X5C13=0;X6C13=1;X7C13=0;
		break;
		case 6:			
			X1C16=0;X2C16=1;X3C16=0;X4C16=0;X5C16=1;X6C16=1;X7C16=0;
			X1C15=1;X2C15=0;X3C15=0;X4C15=1;X5C15=0;X6C15=0;X7C15=1;
			X1C14=1;X2C14=0;X3C14=0;X4C14=1;X5C14=0;X6C14=0;X7C14=1;
			X1C13=0;X2C13=1;X3C13=1;X4C13=1;X5C13=1;X6C13=1;X7C13=0;
		break;
		case 7:			
			X1C16=1;X2C16=1;X3C16=1;X4C16=0;X5C16=0;X6C16=0;X7C16=0;
			X1C15=1;X2C15=0;X3C15=0;X4C15=1;X5C15=0;X6C15=0;X7C15=0;
			X1C14=1;X2C14=0;X3C14=0;X4C14=0;X5C14=1;X6C14=1;X7C14=1;
			X1C13=1;X2C13=1;X3C13=0;X4C13=0;X5C13=0;X6C13=0;X7C13=0;
		break;
		case 8:			
			X1C16=0;X2C16=1;X3C16=1;X4C16=0;X5C16=1;X6C16=1;X7C16=0;
			X1C15=1;X2C15=0;X3C15=0;X4C15=1;X5C15=0;X6C15=0;X7C15=1;
			X1C14=1;X2C14=0;X3C14=0;X4C14=1;X5C14=0;X6C14=0;X7C14=1;
			X1C13=0;X2C13=1;X3C13=1;X4C13=0;X5C13=1;X6C13=1;X7C13=0;
		break;
		case 9:			
			X1C16=0;X2C16=1;X3C16=1;X4C16=1;X5C16=1;X6C16=1;X7C16=0;
			X1C15=1;X2C15=0;X3C15=0;X4C15=1;X5C15=0;X6C15=0;X7C15=1;
			X1C14=1;X2C14=0;X3C14=0;X4C14=1;X5C14=0;X6C14=0;X7C14=1;
			X1C13=0;X2C13=1;X3C13=1;X4C13=0;X5C13=0;X6C13=1;X7C13=0;
		break;
		default:			
			X1C16=0;X2C16=0;X3C16=0;X4C16=0;X5C16=0;X6C16=0;X7C16=0;
			X1C15=0;X2C15=0;X3C15=0;X4C15=0;X5C15=0;X6C15=0;X7C15=0;
			X1C14=0;X2C14=0;X3C14=0;X4C14=0;X5C14=0;X6C14=0;X7C14=0;
			X1C13=0;X2C13=0;X3C13=0;X4C13=0;X5C13=0;X6C13=0;X7C6=0;
		break;
	}
} // end Digit4()

void Digit3(BYTE a)
{
	X1C22=0;X2C22=0;X3C22=0;X4C22=0;X5C22=0;X6C22=0;X7C22=0;
	
	switch(a)
	{
		case 0:
			X1C21=0;X2C21=1;X3C21=1;X4C21=1;X5C21=1;X6C21=1;X7C21=0;
			X1C20=1;X2C20=0;X3C20=0;X4C20=0;X5C20=0;X6C20=0;X7C20=1;
			X1C19=1;X2C19=0;X3C19=0;X4C19=0;X5C19=0;X6C19=0;X7C19=1;
			X1C18=0;X2C18=1;X3C18=1;X4C18=1;X5C18=1;X6C18=1;X7C18=0;
		break;
		case 1:
			X1C21=0;X2C21=0;X3C21=0;X4C21=0;X5C21=0;X6C21=0;X7C21=0;
			X1C20=1;X2C20=1;X3C20=1;X4C20=1;X5C20=1;X6C20=1;X7C20=1;
			X1C19=0;X2C19=1;X3C19=0;X4C19=0;X5C19=0;X6C19=0;X7C19=0;
			X1C18=0;X2C18=0;X3C18=0;X4C18=0;X5C18=0;X6C18=0;X7C18=0;
		break;
		case 2:			
			X1C21=0;X2C21=1;X3C21=1;X4C21=0;X5C21=0;X6C21=0;X7C21=1;
			X1C20=1;X2C20=0;X3C20=0;X4C20=1;X5C20=0;X6C20=0;X7C20=1;
			X1C19=1;X2C19=0;X3C19=0;X4C19=0;X5C19=1;X6C19=0;X7C19=1;
			X1C18=0;X2C18=1;X3C18=0;X4C18=0;X5C18=0;X6C18=1;X7C18=1;
		break;
		case 3:			
			X1C21=0;X2C21=1;X3C21=1;X4C21=0;X5C21=1;X6C21=1;X7C21=0;
			X1C20=1;X2C20=0;X3C20=0;X4C20=1;X5C20=0;X6C20=0;X7C20=1;
			X1C19=1;X2C19=0;X3C19=0;X4C19=1;X5C19=0;X6C19=0;X7C19=1;
			X1C18=0;X2C18=1;X3C18=0;X4C18=0;X5C18=0;X6C18=1;X7C18=0;
		break;
		case 4:			
			X1C21=1;X2C21=1;X3C21=1;X4C21=1;X5C21=1;X6C21=1;X7C21=1;
			X1C20=0;X2C20=1;X3C20=0;X4C20=0;X5C20=1;X6C20=0;X7C20=0;
			X1C19=0;X2C19=0;X3C19=1;X4C19=0;X5C19=1;X6C19=0;X7C19=0;
			X1C18=0;X2C18=0;X3C18=0;X4C18=1;X5C18=1;X6C18=0;X7C18=0;
		break;
		case 5:				
			X1C21=1;X2C21=0;X3C21=0;X4C21=0;X5C21=1;X6C21=1;X7C21=0;
			X1C20=1;X2C20=0;X3C20=0;X4C20=1;X5C20=0;X6C20=0;X7C20=1;
			X1C19=1;X2C19=0;X3C19=0;X4C19=1;X5C19=0;X6C19=0;X7C19=1;
			X1C18=1;X2C18=1;X3C18=1;X4C18=0;X5C18=0;X6C18=1;X7C18=0;
		break;
		case 6:			
			X1C21=0;X2C21=1;X3C21=0;X4C21=0;X5C21=1;X6C21=1;X7C21=0;
			X1C20=1;X2C20=0;X3C20=0;X4C20=1;X5C20=0;X6C20=0;X7C20=1;
			X1C19=1;X2C19=0;X3C19=0;X4C19=1;X5C19=0;X6C19=0;X7C19=1;
			X1C18=0;X2C18=1;X3C18=1;X4C18=1;X5C18=1;X6C18=1;X7C18=0;
		break;
		case 7:			
			X1C21=1;X2C21=1;X3C21=1;X4C21=0;X5C21=0;X6C21=0;X7C21=0;
			X1C20=1;X2C20=0;X3C20=0;X4C20=1;X5C20=0;X6C20=0;X7C20=0;
			X1C19=1;X2C19=0;X3C19=0;X4C19=0;X5C19=1;X6C19=1;X7C19=1;
			X1C18=1;X2C18=1;X3C18=0;X4C18=0;X5C18=0;X6C18=0;X7C18=0;
		break;
		case 8:			
			X1C21=0;X2C21=1;X3C21=1;X4C21=0;X5C21=1;X6C21=1;X7C21=0;
			X1C20=1;X2C20=0;X3C20=0;X4C20=1;X5C20=0;X6C20=0;X7C20=1;
			X1C19=1;X2C19=0;X3C19=0;X4C19=1;X5C19=0;X6C19=0;X7C19=1;
			X1C18=0;X2C18=1;X3C18=1;X4C18=0;X5C18=1;X6C18=1;X7C18=0;
		break;
		case 9:			
			X1C21=0;X2C21=1;X3C21=1;X4C21=1;X5C21=1;X6C21=1;X7C21=0;
			X1C20=1;X2C20=0;X3C20=0;X4C20=1;X5C20=0;X6C20=0;X7C20=1;
			X1C19=1;X2C19=0;X3C19=0;X4C19=1;X5C19=0;X6C19=0;X7C19=1;
			X1C18=0;X2C18=1;X3C18=1;X4C18=0;X5C18=0;X6C18=1;X7C18=0;
		break;
		default:			
			X1C21=0;X2C21=0;X3C21=0;X4C21=0;X5C21=0;X6C21=0;X7C21=0;
			X1C20=0;X2C20=0;X3C20=0;X4C20=0;X5C20=0;X6C20=0;X7C20=0;
			X1C19=0;X2C19=0;X3C19=0;X4C19=0;X5C19=0;X6C19=0;X7C19=0;
			X1C18=0;X2C18=0;X3C18=0;X4C18=0;X5C18=0;X6C18=0;X7C6=0;
		break;
	}
} // end Digit3()

void Col1(BYTE a)
{
	X1C24=0;X2C24=0;X3C24=0;X4C24=0;X5C24=0;X6C24=0;X7C24=0;
	
	switch(a)
	{
		case ':':
			X1C23=0;X2C23=0;X3C23=1;X4C23=0;X5C23=1;X6C23=0;X7C23=0;
		break;
		case '.':
			X1C23=0;X2C23=0;X3C23=0;X4C23=0;X5C23=0;X6C23=0;X7C23=1;
		break;
		default:			
			X1C23=0;X2C23=0;X3C23=0;X4C23=0;X5C23=0;X6C23=0;X7C23=0;
		break;
	}
} // end Col1()

void Digit2(BYTE a)
{
	X1C29=0;X2C29=0;X3C29=0;X4C29=0;X5C29=0;X6C29=0;X7C29=0;
	
	switch(a)
	{
		case 0:
			X1C28=0;X2C28=1;X3C28=1;X4C28=1;X5C28=1;X6C28=1;X7C28=0;
			X1C27=1;X2C27=0;X3C27=0;X4C27=0;X5C27=0;X6C27=0;X7C27=1;
			X1C26=1;X2C26=0;X3C26=0;X4C26=0;X5C26=0;X6C26=0;X7C26=1;
			X1C25=0;X2C25=1;X3C25=1;X4C25=1;X5C25=1;X6C25=1;X7C25=0;
		break;
		case 1:
			X1C28=0;X2C28=0;X3C28=0;X4C28=0;X5C28=0;X6C28=0;X7C28=0;
			X1C27=1;X2C27=1;X3C27=1;X4C27=1;X5C27=1;X6C27=1;X7C27=1;
			X1C26=0;X2C26=1;X3C26=0;X4C26=0;X5C26=0;X6C26=0;X7C26=0;
			X1C25=0;X2C25=0;X3C25=0;X4C25=0;X5C25=0;X6C25=0;X7C25=0;
		break;
		case 2:			
			X1C28=0;X2C28=1;X3C28=1;X4C28=0;X5C28=0;X6C28=0;X7C28=1;
			X1C27=1;X2C27=0;X3C27=0;X4C27=1;X5C27=0;X6C27=0;X7C27=1;
			X1C26=1;X2C26=0;X3C26=0;X4C26=0;X5C26=1;X6C26=0;X7C26=1;
			X1C25=0;X2C25=1;X3C25=0;X4C25=0;X5C25=0;X6C25=1;X7C25=1;
		break;
		case 3:			
			X1C28=0;X2C28=1;X3C28=1;X4C28=0;X5C28=1;X6C28=1;X7C28=0;
			X1C27=1;X2C27=0;X3C27=0;X4C27=1;X5C27=0;X6C27=0;X7C27=1;
			X1C26=1;X2C26=0;X3C26=0;X4C26=1;X5C26=0;X6C26=0;X7C26=1;
			X1C25=0;X2C25=1;X3C25=0;X4C25=0;X5C25=0;X6C25=1;X7C25=0;
		break;
		case 4:			
			X1C28=1;X2C28=1;X3C28=1;X4C28=1;X5C28=1;X6C28=1;X7C28=1;
			X1C27=0;X2C27=1;X3C27=0;X4C27=0;X5C27=1;X6C27=0;X7C27=0;
			X1C26=0;X2C26=0;X3C26=1;X4C26=0;X5C26=1;X6C26=0;X7C26=0;
			X1C25=0;X2C25=0;X3C25=0;X4C25=1;X5C25=1;X6C25=0;X7C25=0;
		break;
		case 5:				
			X1C28=1;X2C28=0;X3C28=0;X4C28=0;X5C28=1;X6C28=1;X7C28=0;
			X1C27=1;X2C27=0;X3C27=0;X4C27=1;X5C27=0;X6C27=0;X7C27=1;
			X1C26=1;X2C26=0;X3C26=0;X4C26=1;X5C26=0;X6C26=0;X7C26=1;
			X1C25=1;X2C25=1;X3C25=1;X4C25=0;X5C25=0;X6C25=1;X7C25=0;
		break;
		case 6:			
			X1C28=0;X2C28=1;X3C28=0;X4C28=0;X5C28=1;X6C28=1;X7C28=0;
			X1C27=1;X2C27=0;X3C27=0;X4C27=1;X5C27=0;X6C27=0;X7C27=1;
			X1C26=1;X2C26=0;X3C26=0;X4C26=1;X5C26=0;X6C26=0;X7C26=1;
			X1C25=0;X2C25=1;X3C25=1;X4C25=1;X5C25=1;X6C25=1;X7C25=0;
		break;
		case 7:			
			X1C28=1;X2C28=1;X3C28=1;X4C28=0;X5C28=0;X6C28=0;X7C28=0;
			X1C27=1;X2C27=0;X3C27=0;X4C27=1;X5C27=0;X6C27=0;X7C27=0;
			X1C26=1;X2C26=0;X3C26=0;X4C26=0;X5C26=1;X6C26=1;X7C26=1;
			X1C25=1;X2C25=1;X3C25=0;X4C25=0;X5C25=0;X6C25=0;X7C25=0;
		break;
		case 8:			
			X1C28=0;X2C28=1;X3C28=1;X4C28=0;X5C28=1;X6C28=1;X7C28=0;
			X1C27=1;X2C27=0;X3C27=0;X4C27=1;X5C27=0;X6C27=0;X7C27=1;
			X1C26=1;X2C26=0;X3C26=0;X4C26=1;X5C26=0;X6C26=0;X7C26=1;
			X1C25=0;X2C25=1;X3C25=1;X4C25=0;X5C25=1;X6C25=1;X7C25=0;
		break;
		case 9:			
			X1C28=0;X2C28=1;X3C28=1;X4C28=1;X5C28=1;X6C28=1;X7C28=0;
			X1C27=1;X2C27=0;X3C27=0;X4C27=1;X5C27=0;X6C27=0;X7C27=1;
			X1C26=1;X2C26=0;X3C26=0;X4C26=1;X5C26=0;X6C26=0;X7C26=1;
			X1C25=0;X2C25=1;X3C25=1;X4C25=0;X5C25=0;X6C25=1;X7C25=0;
		break;
		default:			
			X1C28=0;X2C28=0;X3C28=0;X4C28=0;X5C28=0;X6C28=0;X7C28=0;
			X1C27=0;X2C27=0;X3C27=0;X4C27=0;X5C27=0;X6C27=0;X7C27=0;
			X1C26=0;X2C26=0;X3C26=0;X4C26=0;X5C26=0;X6C26=0;X7C26=0;
			X1C25=0;X2C25=0;X3C25=0;X4C25=0;X5C25=0;X6C25=0;X7C25=0;
		break;
	}
} // end Digit2()

void Digit1(BYTE a)
{
	X1C34=0;X2C34=0;X3C34=0;X4C34=0;X5C34=0;X6C34=0;X7C34=0;
	
	switch(a)
	{
		case 0:
			X1C33=0;X2C33=1;X3C33=1;X4C33=1;X5C33=1;X6C33=1;X7C33=0;
			X1C32=1;X2C32=0;X3C32=0;X4C32=0;X5C32=0;X6C32=0;X7C32=1;
			X1C31=1;X2C31=0;X3C31=0;X4C31=0;X5C31=0;X6C31=0;X7C31=1;
			X1C30=0;X2C30=1;X3C30=1;X4C30=1;X5C30=1;X6C30=1;X7C30=0;
		break;
		case 1:
			X1C33=0;X2C33=0;X3C33=0;X4C33=0;X5C33=0;X6C33=0;X7C33=0;
			X1C32=1;X2C32=1;X3C32=1;X4C32=1;X5C32=1;X6C32=1;X7C32=1;
			X1C31=0;X2C31=1;X3C31=0;X4C31=0;X5C31=0;X6C31=0;X7C31=0;
			X1C30=0;X2C30=0;X3C30=0;X4C30=0;X5C30=0;X6C30=0;X7C30=0;
		break;
		case 2:			
			X1C33=0;X2C33=1;X3C33=1;X4C33=0;X5C33=0;X6C33=0;X7C33=1;
			X1C32=1;X2C32=0;X3C32=0;X4C32=1;X5C32=0;X6C32=0;X7C32=1;
			X1C31=1;X2C31=0;X3C31=0;X4C31=0;X5C31=1;X6C31=0;X7C31=1;
			X1C30=0;X2C30=1;X3C30=0;X4C30=0;X5C30=0;X6C30=1;X7C30=1;
		break;
		case 3:			
			X1C33=0;X2C33=1;X3C33=1;X4C33=0;X5C33=1;X6C33=1;X7C33=0;
			X1C32=1;X2C32=0;X3C32=0;X4C32=1;X5C32=0;X6C32=0;X7C32=1;
			X1C31=1;X2C31=0;X3C31=0;X4C31=1;X5C31=0;X6C31=0;X7C31=1;
			X1C30=0;X2C30=1;X3C30=0;X4C30=0;X5C30=0;X6C30=1;X7C30=0;
		break;
		case 4:			
			X1C33=1;X2C33=1;X3C33=1;X4C33=1;X5C33=1;X6C33=1;X7C33=1;
			X1C32=0;X2C32=1;X3C32=0;X4C32=0;X5C32=1;X6C32=0;X7C32=0;
			X1C31=0;X2C31=0;X3C31=1;X4C31=0;X5C31=1;X6C31=0;X7C31=0;
			X1C30=0;X2C30=0;X3C30=0;X4C30=1;X5C30=1;X6C30=0;X7C30=0;
		break;
		case 5:				
			X1C33=1;X2C33=0;X3C33=0;X4C33=0;X5C33=1;X6C33=1;X7C33=0;
			X1C32=1;X2C32=0;X3C32=0;X4C32=1;X5C32=0;X6C32=0;X7C32=1;
			X1C31=1;X2C31=0;X3C31=0;X4C31=1;X5C31=0;X6C31=0;X7C31=1;
			X1C30=1;X2C30=1;X3C30=1;X4C30=0;X5C30=0;X6C30=1;X7C30=0;
		break;
		case 6:			
			X1C33=0;X2C33=1;X3C33=0;X4C33=0;X5C33=1;X6C33=1;X7C33=0;
			X1C32=1;X2C32=0;X3C32=0;X4C32=1;X5C32=0;X6C32=0;X7C32=1;
			X1C31=1;X2C31=0;X3C31=0;X4C31=1;X5C31=0;X6C31=0;X7C31=1;
			X1C30=0;X2C30=1;X3C30=1;X4C30=1;X5C30=1;X6C30=1;X7C30=0;
		break;
		case 7:			
			X1C33=1;X2C33=1;X3C33=1;X4C33=0;X5C33=0;X6C33=0;X7C33=0;
			X1C32=1;X2C32=0;X3C32=0;X4C32=1;X5C32=0;X6C32=0;X7C32=0;
			X1C31=1;X2C31=0;X3C31=0;X4C31=0;X5C31=1;X6C31=1;X7C31=1;
			X1C30=1;X2C30=1;X3C30=0;X4C30=0;X5C30=0;X6C30=0;X7C30=0;
		break;
		case 8:			
			X1C33=0;X2C33=1;X3C33=1;X4C33=0;X5C33=1;X6C33=1;X7C33=0;
			X1C32=1;X2C32=0;X3C32=0;X4C32=1;X5C32=0;X6C32=0;X7C32=1;
			X1C31=1;X2C31=0;X3C31=0;X4C31=1;X5C31=0;X6C31=0;X7C31=1;
			X1C30=0;X2C30=1;X3C30=1;X4C30=0;X5C30=1;X6C30=1;X7C30=0;
		break;
		case 9:			
			X1C33=0;X2C33=1;X3C33=1;X4C33=1;X5C33=1;X6C33=1;X7C33=0;
			X1C32=1;X2C32=0;X3C32=0;X4C32=1;X5C32=0;X6C32=0;X7C32=1;
			X1C31=1;X2C31=0;X3C31=0;X4C31=1;X5C31=0;X6C31=0;X7C31=1;
			X1C30=0;X2C30=1;X3C30=1;X4C30=0;X5C30=0;X6C30=1;X7C30=0;
		break;
		default:			
			X1C33=0;X2C33=0;X3C33=0;X4C33=0;X5C33=0;X6C33=0;X7C33=0;
			X1C32=0;X2C32=0;X3C32=0;X4C32=0;X5C32=0;X6C32=0;X7C32=0;
			X1C31=0;X2C31=0;X3C31=0;X4C31=0;X5C31=0;X6C31=0;X7C31=0;
			X1C30=0;X2C30=0;X3C30=0;X4C30=0;X5C30=0;X6C30=0;X7C6=0;
		break;
	}
} // end Digit1()

void AMPM(BYTE a)
{

	switch(a)
	{
		case 'a':
		case 'A':
			X1C37=1;X2C37=1;X3C37=1;X4C37=1;X5C37=1;X6C37=0;X7C37=0;
			X1C36=1;X2C36=0;X3C36=1;X4C36=0;X5C36=0;X6C36=0;X7C36=0;
			X1C35=1;X2C35=1;X3C35=1;X4C35=1;X5C35=1;X6C35=0;X7C35=0;
		break;
		case 'p':
		case 'P':
			X1C37=1;X2C37=1;X3C37=1;X4C37=0;X5C37=0;X6C37=0;X7C37=0;
			X1C36=1;X2C36=0;X3C36=1;X4C36=0;X5C36=0;X6C36=0;X7C36=0;
			X1C35=1;X2C35=1;X3C35=1;X4C35=1;X5C35=1;X6C35=0;X7C35=0;
		break;
		default:			
			X1C37=0;X2C37=0;X3C37=0;X4C37=0;X5C37=0;X6C37=0;X7C37=0;
			X1C36=0;X2C36=0;X3C36=0;X4C36=0;X5C36=0;X6C36=0;X7C36=0;
			X1C35=0;X2C35=0;X3C35=0;X4C35=0;X5C35=0;X6C35=0;X7C35=0;
		break;
	}
} // end AMPM()

void UpdateBanner(BANRSTR* Banner)
{
	BANRCOL Column;
	char* StrPtr;
	BYTE ColIndex;
	
	StrPtr = &Banner->String[Banner->CharStrtPt];
	ColIndex = Banner->ColStrtPt;

	Column = GetBanrCol(*StrPtr, ColIndex);
	X1C1= Column.Row.R1;  X2C1= Column.Row.R2;  X3C1= Column.Row.R3;  X4C1= Column.Row.R4;  X5C1= Column.Row.R5;  X6C1= Column.Row.R6;  X7C1= Column.Row.R7;
	if(ColIndex > 4)
	{
		if(*StrPtr)
		{
			StrPtr++;
		}	
		ColIndex = 0;
	}
	else
	{
		ColIndex++;
	}	
	Column = GetBanrCol(*StrPtr, ColIndex);
	X1C2= Column.Row.R1;  X2C2= Column.Row.R2;  X3C2= Column.Row.R3;  X4C2= Column.Row.R4;  X5C2= Column.Row.R5;  X6C2= Column.Row.R6;  X7C2= Column.Row.R7;
	if(ColIndex > 4)
	{
		if(*StrPtr)
		{
			StrPtr++;
		}	
		ColIndex = 0;
	}
	else
	{
		ColIndex++;
	}	
	Column = GetBanrCol(*StrPtr, ColIndex);
	X1C3= Column.Row.R1;  X2C3= Column.Row.R2;  X3C3= Column.Row.R3;  X4C3= Column.Row.R4;  X5C3= Column.Row.R5;  X6C3= Column.Row.R6;  X7C3= Column.Row.R7;
	if(ColIndex > 4)
	{
		if(*StrPtr)
		{
			StrPtr++;
		}	
		ColIndex = 0;
	}
	else
	{
		ColIndex++;
	}
	Column = GetBanrCol(*StrPtr, ColIndex);
	X1C4= Column.Row.R1;  X2C4= Column.Row.R2;  X3C4= Column.Row.R3;  X4C4= Column.Row.R4;  X5C4= Column.Row.R5;  X6C4= Column.Row.R6;  X7C4= Column.Row.R7;
	if(ColIndex > 4)
	{
		if(*StrPtr)
		{
			StrPtr++;
		}	
		ColIndex = 0;
	}
	else
	{
		ColIndex++;
	}
	Column = GetBanrCol(*StrPtr, ColIndex);
	X1C5= Column.Row.R1;  X2C5= Column.Row.R2;  X3C5= Column.Row.R3;  X4C5= Column.Row.R4;  X5C5= Column.Row.R5;  X6C5= Column.Row.R6;  X7C5= Column.Row.R7;
	if(ColIndex > 4)
	{
		if(*StrPtr)
		{
			StrPtr++;
		}	
		ColIndex = 0;
	}
	else
	{
		ColIndex++;
	}
	Column = GetBanrCol(*StrPtr, ColIndex);
	X1C6= Column.Row.R1;  X2C6= Column.Row.R2;  X3C6= Column.Row.R3;  X4C6= Column.Row.R4;  X5C6= Column.Row.R5;  X6C6= Column.Row.R6;  X7C6= Column.Row.R7;
	if(ColIndex > 4)
	{
		if(*StrPtr)
		{
			StrPtr++;
		}	
		ColIndex = 0;
	}
	else
	{
		ColIndex++;
	}
	Column = GetBanrCol(*StrPtr, ColIndex);
	X1C7= Column.Row.R1;  X2C7= Column.Row.R2;  X3C7= Column.Row.R3;  X4C7= Column.Row.R4;  X5C7= Column.Row.R5;  X6C7= Column.Row.R6;  X7C7= Column.Row.R7;
	if(ColIndex > 4)
	{
		if(*StrPtr)
		{
			StrPtr++;
		}	
		ColIndex = 0;
	}
	else
	{
		ColIndex++;
	}
	Column = GetBanrCol(*StrPtr, ColIndex);
	X1C8= Column.Row.R1;  X2C8= Column.Row.R2;  X3C8= Column.Row.R3;  X4C8= Column.Row.R4;  X5C8= Column.Row.R5;  X6C8= Column.Row.R6;  X7C8= Column.Row.R7;
	if(ColIndex > 4)
	{
		if(*StrPtr)
		{
			StrPtr++;
		}	
		ColIndex = 0;
	}
	else
	{
		ColIndex++;
	}
	Column = GetBanrCol(*StrPtr, ColIndex);
	X1C9= Column.Row.R1;  X2C9= Column.Row.R2;  X3C9= Column.Row.R3;  X4C9= Column.Row.R4;  X5C9= Column.Row.R5;  X6C9= Column.Row.R6;  X7C9= Column.Row.R7;
	if(ColIndex > 4)
	{
		if(*StrPtr)
		{
			StrPtr++;
		}	
		ColIndex = 0;
	}
	else
	{
		ColIndex++;
	}
	Column = GetBanrCol(*StrPtr, ColIndex);
	X1C10= Column.Row.R1;  X2C10= Column.Row.R2;  X3C10= Column.Row.R3;  X4C10= Column.Row.R4;  X5C10= Column.Row.R5;  X6C10= Column.Row.R6;  X7C10= Column.Row.R7;
	if(ColIndex > 4)
	{
		if(*StrPtr)
		{
			StrPtr++;
		}	
		ColIndex = 0;
	}
	else
	{
		ColIndex++;
	}
	Column = GetBanrCol(*StrPtr, ColIndex);
	X1C11= Column.Row.R1;  X2C11= Column.Row.R2;  X3C11= Column.Row.R3;  X4C11= Column.Row.R4;  X5C11= Column.Row.R5;  X6C11= Column.Row.R6;  X7C11= Column.Row.R7;
	if(ColIndex > 4)
	{
		if(*StrPtr)
		{
			StrPtr++;
		}	
		ColIndex = 0;
	}
	else
	{
		ColIndex++;
	}
	Column = GetBanrCol(*StrPtr, ColIndex);
	X1C12= Column.Row.R1;  X2C12= Column.Row.R2;  X3C12= Column.Row.R3;  X4C12= Column.Row.R4;  X5C12= Column.Row.R5;  X6C12= Column.Row.R6;  X7C12= Column.Row.R7;
	if(ColIndex > 4)
	{
		if(*StrPtr)
		{
			StrPtr++;
		}	
		ColIndex = 0;
	}
	else
	{
		ColIndex++;
	}
	Column = GetBanrCol(*StrPtr, ColIndex);
	X1C13= Column.Row.R1;  X2C13= Column.Row.R2;  X3C13= Column.Row.R3;  X4C13= Column.Row.R4;  X5C13= Column.Row.R5;  X6C13= Column.Row.R6;  X7C13= Column.Row.R7;
	if(ColIndex > 4)
	{
		if(*StrPtr)
		{
			StrPtr++;
		}	
		ColIndex = 0;
	}
	else
	{
		ColIndex++;
	}
	Column = GetBanrCol(*StrPtr, ColIndex);
	X1C14= Column.Row.R1;  X2C14= Column.Row.R2;  X3C14= Column.Row.R3;  X4C14= Column.Row.R4;  X5C14= Column.Row.R5;  X6C14= Column.Row.R6;  X7C14= Column.Row.R7;
	if(ColIndex > 4)
	{
		if(*StrPtr)
		{
			StrPtr++;
		}	
		ColIndex = 0;
	}
	else
	{
		ColIndex++;
	}
	Column = GetBanrCol(*StrPtr, ColIndex);
	X1C15= Column.Row.R1;  X2C15= Column.Row.R2;  X3C15= Column.Row.R3;  X4C15= Column.Row.R4;  X5C15= Column.Row.R5;  X6C15= Column.Row.R6;  X7C15= Column.Row.R7;
	if(ColIndex > 4)
	{
		if(*StrPtr)
		{
			StrPtr++;
		}	
		ColIndex = 0;
	}
	else
	{
		ColIndex++;
	}
	Column = GetBanrCol(*StrPtr, ColIndex);
	X1C16= Column.Row.R1;  X2C16= Column.Row.R2;  X3C16= Column.Row.R3;  X4C16= Column.Row.R4;  X5C16= Column.Row.R5;  X6C16= Column.Row.R6;  X7C16= Column.Row.R7;
	if(ColIndex > 4)
	{
		if(*StrPtr)
		{
			StrPtr++;
		}	
		ColIndex = 0;
	}
	else
	{
		ColIndex++;
	}
	Column = GetBanrCol(*StrPtr, ColIndex);
	X1C17= Column.Row.R1;  X2C17= Column.Row.R2;  X3C17= Column.Row.R3;  X4C17= Column.Row.R4;  X5C17= Column.Row.R5;  X6C17= Column.Row.R6;  X7C17= Column.Row.R7;
	if(ColIndex > 4)
	{
		if(*StrPtr)
		{
			StrPtr++;
		}	
		ColIndex = 0;
	}
	else
	{
		ColIndex++;
	}
	Column = GetBanrCol(*StrPtr, ColIndex);
	X1C18= Column.Row.R1;  X2C18= Column.Row.R2;  X3C18= Column.Row.R3;  X4C18= Column.Row.R4;  X5C18= Column.Row.R5;  X6C18= Column.Row.R6;  X7C18= Column.Row.R7;
	if(ColIndex > 4)
	{
		if(*StrPtr)
		{
			StrPtr++;
		}	
		ColIndex = 0;
	}
	else
	{
		ColIndex++;
	}
	Column = GetBanrCol(*StrPtr, ColIndex);
	X1C19= Column.Row.R1;  X2C19= Column.Row.R2;  X3C19= Column.Row.R3;  X4C19= Column.Row.R4;  X5C19= Column.Row.R5;  X6C19= Column.Row.R6;  X7C19= Column.Row.R7;
	if(ColIndex > 4)
	{
		if(*StrPtr)
		{
			StrPtr++;
		}	
		ColIndex = 0;
	}
	else
	{
		ColIndex++;
	}
	Column = GetBanrCol(*StrPtr, ColIndex);
	X1C20= Column.Row.R1;  X2C20= Column.Row.R2;  X3C20= Column.Row.R3;  X4C20= Column.Row.R4;  X5C20= Column.Row.R5;  X6C20= Column.Row.R6;  X7C20= Column.Row.R7;
	if(ColIndex > 4)
	{
		if(*StrPtr)
		{
			StrPtr++;
		}	
		ColIndex = 0;
	}
	else
	{
		ColIndex++;
	}
	Column = GetBanrCol(*StrPtr, ColIndex);
	X1C21= Column.Row.R1;  X2C21= Column.Row.R2;  X3C21= Column.Row.R3;  X4C21= Column.Row.R4;  X5C21= Column.Row.R5;  X6C21= Column.Row.R6;  X7C21= Column.Row.R7;
	if(ColIndex > 4)
	{
		if(*StrPtr)
		{
			StrPtr++;
		}	
		ColIndex = 0;
	}
	else
	{
		ColIndex++;
	}
	Column = GetBanrCol(*StrPtr, ColIndex);
	X1C22= Column.Row.R1;  X2C22= Column.Row.R2;  X3C22= Column.Row.R3;  X4C22= Column.Row.R4;  X5C22= Column.Row.R5;  X6C22= Column.Row.R6;  X7C22= Column.Row.R7;
	if(ColIndex > 4)
	{
		if(*StrPtr)
		{
			StrPtr++;
		}	
		ColIndex = 0;
	}
	else
	{
		ColIndex++;
	}
	Column = GetBanrCol(*StrPtr, ColIndex);
	X1C23= Column.Row.R1;  X2C23= Column.Row.R2;  X3C23= Column.Row.R3;  X4C23= Column.Row.R4;  X5C23= Column.Row.R5;  X6C23= Column.Row.R6;  X7C23= Column.Row.R7;
	if(ColIndex > 4)
	{
		if(*StrPtr)
		{
			StrPtr++;
		}	
		ColIndex = 0;
	}
	else
	{
		ColIndex++;
	}
	Column = GetBanrCol(*StrPtr, ColIndex);
	X1C24= Column.Row.R1;  X2C24= Column.Row.R2;  X3C24= Column.Row.R3;  X4C24= Column.Row.R4;  X5C24= Column.Row.R5;  X6C24= Column.Row.R6;  X7C24= Column.Row.R7;
	if(ColIndex > 4)
	{
		if(*StrPtr)
		{
			StrPtr++;
		}	
		ColIndex = 0;
	}
	else
	{
		ColIndex++;
	}
	Column = GetBanrCol(*StrPtr, ColIndex);
	X1C25= Column.Row.R1;  X2C25= Column.Row.R2;  X3C25= Column.Row.R3;  X4C25= Column.Row.R4;  X5C25= Column.Row.R5;  X6C25= Column.Row.R6;  X7C25= Column.Row.R7;
	if(ColIndex > 4)
	{
		if(*StrPtr)
		{
			StrPtr++;
		}	
		ColIndex = 0;
	}
	else
	{
		ColIndex++;
	}
	Column = GetBanrCol(*StrPtr, ColIndex);
	X1C26= Column.Row.R1;  X2C26= Column.Row.R2;  X3C26= Column.Row.R3;  X4C26= Column.Row.R4;  X5C26= Column.Row.R5;  X6C26= Column.Row.R6;  X7C26= Column.Row.R7;
	if(ColIndex > 4)
	{
		if(*StrPtr)
		{
			StrPtr++;
		}	
		ColIndex = 0;
	}
	else
	{
		ColIndex++;
	}
	Column = GetBanrCol(*StrPtr, ColIndex);
	X1C27= Column.Row.R1;  X2C27= Column.Row.R2;  X3C27= Column.Row.R3;  X4C27= Column.Row.R4;  X5C27= Column.Row.R5;  X6C27= Column.Row.R6;  X7C27= Column.Row.R7;
	if(ColIndex > 4)
	{
		if(*StrPtr)
		{
			StrPtr++;
		}	
		ColIndex = 0;
	}
	else
	{
		ColIndex++;
	}
	Column = GetBanrCol(*StrPtr, ColIndex);
	X1C28= Column.Row.R1;  X2C28= Column.Row.R2;  X3C28= Column.Row.R3;  X4C28= Column.Row.R4;  X5C28= Column.Row.R5;  X6C28= Column.Row.R6;  X7C28= Column.Row.R7;
	if(ColIndex > 4)
	{
		if(*StrPtr)
		{
			StrPtr++;
		}	
		ColIndex = 0;
	}
	else
	{
		ColIndex++;
	}
	Column = GetBanrCol(*StrPtr, ColIndex);
	X1C29= Column.Row.R1;  X2C29= Column.Row.R2;  X3C29= Column.Row.R3;  X4C29= Column.Row.R4;  X5C29= Column.Row.R5;  X6C29= Column.Row.R6;  X7C29= Column.Row.R7;
	if(ColIndex > 4)
	{
		if(*StrPtr)
		{
			StrPtr++;
		}	
		ColIndex = 0;
	}
	else
	{
		ColIndex++;
	}
	Column = GetBanrCol(*StrPtr, ColIndex);
	X1C30= Column.Row.R1;  X2C30= Column.Row.R2;  X3C30= Column.Row.R3;  X4C30= Column.Row.R4;  X5C30= Column.Row.R5;  X6C30= Column.Row.R6;  X7C30= Column.Row.R7;
	if(ColIndex > 4)
	{
		if(*StrPtr)
		{
			StrPtr++;
		}	
		ColIndex = 0;
	}
	else
	{
		ColIndex++;
	}
	Column = GetBanrCol(*StrPtr, ColIndex);
	X1C31= Column.Row.R1;  X2C31= Column.Row.R2;  X3C31= Column.Row.R3;  X4C31= Column.Row.R4;  X5C31= Column.Row.R5;  X6C31= Column.Row.R6;  X7C31= Column.Row.R7;
	if(ColIndex > 4)
	{
		if(*StrPtr)
		{
			StrPtr++;
		}	
		ColIndex = 0;
	}
	else
	{
		ColIndex++;
	}
	Column = GetBanrCol(*StrPtr, ColIndex);
	X1C32= Column.Row.R1;  X2C32= Column.Row.R2;  X3C32= Column.Row.R3;  X4C32= Column.Row.R4;  X5C32= Column.Row.R5;  X6C32= Column.Row.R6;  X7C32= Column.Row.R7;
	if(ColIndex > 4)
	{
		if(*StrPtr)
		{
			StrPtr++;
		}	
		ColIndex = 0;
	}
	else
	{
		ColIndex++;
	}
	Column = GetBanrCol(*StrPtr, ColIndex);
	X1C33= Column.Row.R1;  X2C33= Column.Row.R2;  X3C33= Column.Row.R3;  X4C33= Column.Row.R4;  X5C33= Column.Row.R5;  X6C33= Column.Row.R6;  X7C33= Column.Row.R7;
	if(ColIndex > 4)
	{
		if(*StrPtr)
		{
			StrPtr++;
		}	
		ColIndex = 0;
	}
	else
	{
		ColIndex++;
	}
	Column = GetBanrCol(*StrPtr, ColIndex);
	X1C34= Column.Row.R1;  X2C34= Column.Row.R2;  X3C34= Column.Row.R3;  X4C34= Column.Row.R4;  X5C34= Column.Row.R5;  X6C34= Column.Row.R6;  X7C34= Column.Row.R7;
	if(ColIndex > 4)
	{
		if(*StrPtr)
		{
			StrPtr++;
		}	
		ColIndex = 0;
	}
	else
	{
		ColIndex++;
	}
	Column = GetBanrCol(*StrPtr, ColIndex);
	X1C35= Column.Row.R1;  X2C35= Column.Row.R2;  X3C35= Column.Row.R3;  X4C35= Column.Row.R4;  X5C35= Column.Row.R5;  X6C35= Column.Row.R6;  X7C35= Column.Row.R7;
	if(ColIndex > 4)
	{
		if(*StrPtr)
		{
			StrPtr++;
		}	
		ColIndex = 0;
	}
	else
	{
		ColIndex++;
	}
	Column = GetBanrCol(*StrPtr, ColIndex);
	X1C36= Column.Row.R1;  X2C36= Column.Row.R2;  X3C36= Column.Row.R3;  X4C36= Column.Row.R4;  X5C36= Column.Row.R5;  X6C36= Column.Row.R6;  X7C36= Column.Row.R7;
	if(ColIndex > 4)
	{
		if(*StrPtr)
		{
			StrPtr++;
		}	
		ColIndex = 0;
	}
	else
	{
		ColIndex++;
	}
	Column = GetBanrCol(*StrPtr, ColIndex);
	X1C37= Column.Row.R1;  X2C37= Column.Row.R2;  X3C37= Column.Row.R3;  X4C37= Column.Row.R4;  X5C37= Column.Row.R5;  X6C37= Column.Row.R6;  X7C37= Column.Row.R7;
	if(ColIndex > 4)
	{
		if(*StrPtr)
		{
			StrPtr++;
		}	
		ColIndex = 0;
	}
	else
	{
		ColIndex++;
	}
		
	if(Banner->String[Banner->CharStrtPt])
	{
		if(Banner->ColStrtPt > 4)
		{
			Banner->ColStrtPt = 0;
			Banner->CharStrtPt++;
		}
		else
		{
			Banner->ColStrtPt++;
		}	
	}
	else
	{
		Banner->ScrlCmplt = TRUE;
		Banner->CharStrtPt = 0;
	}			
} // end UpdateBanner()

BANRCOL GetBanrCol(unsigned char BanrChar, BYTE SubCol)
{
	BANRCOL Decode;
	
	Decode.Col = 0;
	switch(BanrChar)
	{
		case 'A':
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x7C;
					break;
				case 1:
					Decode.Col = 0x12;
				break;
				case 2:
					Decode.Col = 0x11;
				break;
				case 3:
					Decode.Col = 0x12;
				break;
				case 4:
					Decode.Col = 0x7C;
				break;
				default:
					Decode.Col = 0x00;
			}	
			break;
		case 'a':
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x20;
					break;
				case 1:
					Decode.Col = 0x54;
				break;
				case 2:
					Decode.Col = 0x54;
				break;
				case 3:
					Decode.Col = 0x54;
				break;
				case 4:
					Decode.Col = 0x78;
				break;
				default:
					Decode.Col = 0x00;
			}	
			break;
	    case 'B':
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x7F;
					break;
				case 1:
					Decode.Col = 0x49;
				break;
				case 2:
					Decode.Col = 0x49;
				break;
				case 3:
					Decode.Col = 0x49;
				break;
				case 4:
					Decode.Col = 0x36;
				break;
				default:
					Decode.Col = 0x00;
			}	
			break;
	    case 'b':
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x7F;
					break;
				case 1:
					Decode.Col = 0x48;
				break;
				case 2:
					Decode.Col = 0x44;
				break;
				case 3:
					Decode.Col = 0x44;
				break;
				case 4:
					Decode.Col = 0x38;
				break;
				default:
					Decode.Col = 0x00;
			}	
			break;
	    case 'C':
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x3E;
					break;
				case 1:
					Decode.Col = 0x41;
					break;
				case 2:
					Decode.Col = 0x41;
				break;
				case 3:
					Decode.Col = 0x41;
				break;
				case 4:
					Decode.Col = 0x22;
				break;
				default:
					Decode.Col = 0x00;
			}
			break;	
	    case 'c':
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x38;
					break;
				case 1:
					Decode.Col = 0x44;
					break;
				case 2:
					Decode.Col = 0x44;
				break;
				case 3:
					Decode.Col = 0x44;
				break;
				case 4:
					Decode.Col = 0x20;
				break;
				default:
					Decode.Col = 0x00;
			}
			break;
	    case 'D':
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x7F;
					break;
				case 1:
					Decode.Col = 0x41;
					break;
				case 2:
					Decode.Col = 0x41;
				break;
				case 3:
					Decode.Col = 0x22;
				break;
				case 4:
					Decode.Col = 0x1C;
				break;
				default:
					Decode.Col = 0x00;
			}
			break;
	    case 'd':	
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x38;
					break;
				case 1:
					Decode.Col = 0x44;
					break;
				case 2:
					Decode.Col = 0x44;
				break;
				case 3:
					Decode.Col = 0x48;
				break;
				case 4:
					Decode.Col = 0x7F;
				break;
				default:
					Decode.Col = 0x00;
			}
			break;
	    case 'E':
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x7F;
					break;
				case 1:
					Decode.Col = 0x49;
					break;
				case 2:
					Decode.Col = 0x49;
				break;
				case 3:
					Decode.Col = 0x49;
				break;
				case 4:
					Decode.Col = 0x41;
				break;
				default:
					Decode.Col = 0x00;
			}
			break;
	    case 'e':
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x38;
					break;
				case 1:
					Decode.Col = 0x54;
					break;
				case 2:
					Decode.Col = 0x54;
				break;
				case 3:
					Decode.Col = 0x54;
				break;
				case 4:
					Decode.Col = 0x18;
				break;
				default:
					Decode.Col = 0x00;
			}
			break;
	    case 'F':
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x7F;
					break;
				case 1:
					Decode.Col = 0x09;
					break;
				case 2:
					Decode.Col = 0x09;
				break;
				case 3:
					Decode.Col = 0x09;
				break;
				case 4:
					Decode.Col = 0x01;
				break;
				default:
					Decode.Col = 0x00;
			}
			break;
	    case 'f':	
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x08;
					break;
				case 1:
					Decode.Col = 0x7E;
					break;
				case 2:
					Decode.Col = 0x09;
				break;
				case 3:
					Decode.Col = 0x01;
				break;
				case 4:
					Decode.Col = 0x02;
				break;
				default:
					Decode.Col = 0x00;
			}
			break;
	    case 'G':
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x3E;
					break;
				case 1:
					Decode.Col = 0x41;
					break;
				case 2:
					Decode.Col = 0x49;
				break;
				case 3:
					Decode.Col = 0x49;
				break;
				case 4:
					Decode.Col = 0x7A;
				break;
				default:
					Decode.Col = 0x00;
			}
			break;
	    case 'g':	
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x08;
					break;
				case 1:
					Decode.Col = 0x54;
					break;
				case 2:
					Decode.Col = 0x54;
				break;
				case 3:
					Decode.Col = 0x54;
				break;
				case 4:
					Decode.Col = 0x3C;
				break;
				default:
					Decode.Col = 0x00;
			}
			break;
	    case 'H':	
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x7F;
					break;
				case 1:
					Decode.Col = 0x08;
					break;
				case 2:
					Decode.Col = 0x08;
				break;
				case 3:
					Decode.Col = 0x08;
				break;
				case 4:
					Decode.Col = 0x7F;
				break;
				default:
					Decode.Col = 0x00;
			}
			break;
	    case 'h':	
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x7F;
					break;
				case 1:
					Decode.Col = 0x08;
					break;
				case 2:
					Decode.Col = 0x04;
				break;
				case 3:
					Decode.Col = 0x04;
				break;
				case 4:
					Decode.Col = 0x78;
				break;
				default:
					Decode.Col = 0x00;
			}
			break;
	    case 'I':	
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x00;
					break;
				case 1:
					Decode.Col = 0x41;
					break;
				case 2:
					Decode.Col = 0x7F;
				break;
				case 3:
					Decode.Col = 0x41;
				break;
				case 4:
					Decode.Col = 0x00;
				break;
				default:
					Decode.Col = 0x00;
			}
			break;
	    case 'i':
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x00;
					break;
				case 1:
					Decode.Col = 0x48;
					break;
				case 2:
					Decode.Col = 0x7D;
				break;
				case 3:
					Decode.Col = 0x40;
				break;
				case 4:
					Decode.Col = 0x00;
				break;
				default:
					Decode.Col = 0x00;
			}
			break;	
	    case 'J':	
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x20;
					break;
				case 1:
					Decode.Col = 0x40;
					break;
				case 2:
					Decode.Col = 0x41;
				break;
				case 3:
					Decode.Col = 0x3F;
				break;
				case 4:
					Decode.Col = 0x01;
				break;
				default:
					Decode.Col = 0x00;
			}
			break;
	    case 'j':	
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x20;
					break;
				case 1:
					Decode.Col = 0x40;
					break;
				case 2:
					Decode.Col = 0x44;
				break;
				case 3:
					Decode.Col = 0x3D;
				break;
				case 4:
					Decode.Col = 0x00;
				break;
				default:
					Decode.Col = 0x00;
			}
			break;
	    case 'K':	
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x7F;
					break;
				case 1:
					Decode.Col = 0x08;
					break;
				case 2:
					Decode.Col = 0x14;
				break;
				case 3:
					Decode.Col = 0x22;
				break;
				case 4:
					Decode.Col = 0x41;
				break;
				default:
					Decode.Col = 0x00;
			}
			break;
	    case 'k':	
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x7F;
					break;
				case 1:
					Decode.Col = 0x10;
					break;
				case 2:
					Decode.Col = 0x28;
				break;
				case 3:
					Decode.Col = 0x44;
				break;
				case 4:
					Decode.Col = 0x00;
				break;
				default:
					Decode.Col = 0x00;
			}
			break;
	    case 'L':	
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x7F;
					break;
				case 1:
					Decode.Col = 0x40;
					break;
				case 2:
					Decode.Col = 0x40;
				break;
				case 3:
					Decode.Col = 0x40;
				break;
				case 4:
					Decode.Col = 0x40;
				break;
				default:
					Decode.Col = 0x00;
			}
			break;
	    case 'l':	
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x00;
					break;
				case 1:
					Decode.Col = 0x41;
					break;
				case 2:
					Decode.Col = 0x7F;
				break;
				case 3:
					Decode.Col = 0x40;
				break;
				case 4:
					Decode.Col = 0x00;
				break;
				default:
					Decode.Col = 0x00;
			}
			break;
		case 'M':
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x7F;
					break;
				case 1:
					Decode.Col = 0x02;
					break;
				case 2:
					Decode.Col = 0x0C;
				break;
				case 3:
					Decode.Col = 0x02;
				break;
				case 4:
					Decode.Col = 0x7F;
				break;
				default:
					Decode.Col = 0x00;
			}
			break;
		case 'm':
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x7C;
					break;
				case 1:
					Decode.Col = 0x04;
					break;
				case 2:
					Decode.Col = 0x78;
				break;
				case 3:
					Decode.Col = 0x04;
				break;
				case 4:
					Decode.Col = 0x78;
				break;
				default:
					Decode.Col = 0x00;
			}
			break;
	    case 'N':	
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x7F;
					break;
				case 1:
					Decode.Col = 0x04;
					break;
				case 2:
					Decode.Col = 0x08;
				break;
				case 3:
					Decode.Col = 0x10;
				break;
				case 4:
					Decode.Col = 0x7F;
				break;
				default:
					Decode.Col = 0x00;
			}
			break;
	    case 'n':	
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x7C;
					break;
				case 1:
					Decode.Col = 0x08;
					break;
				case 2:
					Decode.Col = 0x04;
				break;
				case 3:
					Decode.Col = 0x04;
				break;
				case 4:
					Decode.Col = 0x78;
				break;
				default:
					Decode.Col = 0x00;
			}
			break;
	    case 'O':	
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x3E;
					break;
				case 1:
					Decode.Col = 0x41;
					break;
				case 2:
					Decode.Col = 0x41;
				break;
				case 3:
					Decode.Col = 0x41;
				break;
				case 4:
					Decode.Col = 0x3E;
				break;
				default:
					Decode.Col = 0x00;
			}
			break;
	    case 'o':	
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x38;
					break;
				case 1:
					Decode.Col = 0x44;
					break;
				case 2:
					Decode.Col = 0x44;
				break;
				case 3:
					Decode.Col = 0x44;
				break;
				case 4:
					Decode.Col = 0x38;
				break;
				default:
					Decode.Col = 0x00;
			}
			break;
	    case 'P':	
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x7F;
					break;
				case 1:
					Decode.Col = 0x09;
					break;
				case 2:
					Decode.Col = 0x09;
				break;
				case 3:
					Decode.Col = 0x09;
				break;
				case 4:
					Decode.Col = 0x06;
				break;
				default:
					Decode.Col = 0x00;
			}
			break;
	    case 'p':	
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x7C;
					break;
				case 1:
					Decode.Col = 0x14;
					break;
				case 2:
					Decode.Col = 0x14;
				break;
				case 3:
					Decode.Col = 0x14;
				break;
				case 4:
					Decode.Col = 0x08;
				break;
				default:
					Decode.Col = 0x00;
			}
			break;
	    case 'Q':
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x3E;
					break;
				case 1:
					Decode.Col = 0x41;
					break;
				case 2:
					Decode.Col = 0x51;
				break;
				case 3:
					Decode.Col = 0x21;
				break;
				case 4:
					Decode.Col = 0x5E;
				break;
				default:
					Decode.Col = 0x00;
			}
			break;
	    case 'q':	
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x08;
					break;
				case 1:
					Decode.Col = 0x14;
					break;
				case 2:
					Decode.Col = 0x14;
				break;
				case 3:
					Decode.Col = 0x18;
				break;
				case 4:
					Decode.Col = 0x7C;
				break;
				default:
					Decode.Col = 0x00;
			}
			break;
	    case 'R':	
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x7F;
					break;
				case 1:
					Decode.Col = 0x09;
					break;
				case 2:
					Decode.Col = 0x19;
				break;
				case 3:
					Decode.Col = 0x29;
				break;
				case 4:
					Decode.Col = 0x46;
				break;
				default:
					Decode.Col = 0x00;
			}
			break;
	    case 'r':	
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x7C;
					break;
				case 1:
					Decode.Col = 0x08;
					break;
				case 2:
					Decode.Col = 0x04;
				break;
				case 3:
					Decode.Col = 0x04;
				break;
				case 4:
					Decode.Col = 0x08;
				break;
				default:
					Decode.Col = 0x00;
			}
			break;
	    case 'S':	
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x46;
					break;
				case 1:
					Decode.Col = 0x49;
					break;
				case 2:
					Decode.Col = 0x49;
				break;
				case 3:
					Decode.Col = 0x49;
				break;
				case 4:
					Decode.Col = 0x31;
				break;
				default:
					Decode.Col = 0x00;
			}
			break;
	    case 's':
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x48;
					break;
				case 1:
					Decode.Col = 0x54;
					break;
				case 2:
					Decode.Col = 0x54;
				break;
				case 3:
					Decode.Col = 0x54;
				break;
				case 4:
					Decode.Col = 0x20;
				break;
				default:
					Decode.Col = 0x00;
			}
			break;
	    case 'T':
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x01;
					break;
				case 1:
					Decode.Col = 0x01;
					break;
				case 2:
					Decode.Col = 0x7F;
				break;
				case 3:
					Decode.Col = 0x01;
				break;
				case 4:
					Decode.Col = 0x01;
				break;
				default:
					Decode.Col = 0x00;
			}
			break;
	    case 't':
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x04;
					break;
				case 1:
					Decode.Col = 0x3F;
					break;
				case 2:
					Decode.Col = 0x44;
				break;
				case 3:
					Decode.Col = 0x40;
				break;
				case 4:
					Decode.Col = 0x20;
				break;
				default:
					Decode.Col = 0x00;
			}
			break;
	    case 'U':
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x3F;
					break;
				case 1:
					Decode.Col = 0x40;
					break;
				case 2:
					Decode.Col = 0x40;
				break;
				case 3:
					Decode.Col = 0x40;
				break;
				case 4:
					Decode.Col = 0x3F;
				break;
				default:
					Decode.Col = 0x00;
			}
			break;
	    case 'u':	
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x3C;
					break;
				case 1:
					Decode.Col = 0x40;
					break;
				case 2:
					Decode.Col = 0x40;
				break;
				case 3:
					Decode.Col = 0x20;
				break;
				case 4:
					Decode.Col = 0x7C;
				break;
				default:
					Decode.Col = 0x00;
			}
			break;
	    case 'V':	
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x1F;
					break;
				case 1:
					Decode.Col = 0x20;
					break;
				case 2:
					Decode.Col = 0x40;
				break;
				case 3:
					Decode.Col = 0x20;
				break;
				case 4:
					Decode.Col = 0x1F;
				break;
				default:
					Decode.Col = 0x00;
			}
			break;
	    case 'v':	
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x1C;
					break;
				case 1:
					Decode.Col = 0x20;
					break;
				case 2:
					Decode.Col = 0x40;
				break;
				case 3:
					Decode.Col = 0x20;
				break;
				case 4:
					Decode.Col = 0x1C;
				break;
				default:
					Decode.Col = 0x00;
			}
			break;
	    case 'W':	
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x3F;
					break;
				case 1:
					Decode.Col = 0x40;
					break;
				case 2:
					Decode.Col = 0x38;
				break;
				case 3:
					Decode.Col = 0x40;
				break;
				case 4:
					Decode.Col = 0x3F;
				break;
				default:
					Decode.Col = 0x00;
			}
			break;
	    case 'w':
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x3C;
					break;
				case 1:
					Decode.Col = 0x40;
					break;
				case 2:
					Decode.Col = 0x38;
				break;
				case 3:
					Decode.Col = 0x40;
				break;
				case 4:
					Decode.Col = 0x3C;
				break;
				default:
					Decode.Col = 0x00;
			}
			break;
	    case 'X':
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x63;
					break;
				case 1:
					Decode.Col = 0x14;
					break;
				case 2:
					Decode.Col = 0x08;
				break;
				case 3:
					Decode.Col = 0x14;
				break;
				case 4:
					Decode.Col = 0x63;
				break;
				default:
					Decode.Col = 0x00;
			}
			break;
	    case 'x':
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x44;
					break;
				case 1:
					Decode.Col = 0x28;
					break;
				case 2:
					Decode.Col = 0x10;
				break;
				case 3:
					Decode.Col = 0x28;
				break;
				case 4:
					Decode.Col = 0x44;
				break;
				default:
					Decode.Col = 0x00;
			}
			break;
	    case 'Y':
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x07;
					break;
				case 1:
					Decode.Col = 0x08;
					break;
				case 2:
					Decode.Col = 0x70;
				break;
				case 3:
					Decode.Col = 0x08;
				break;
				case 4:
					Decode.Col = 0x07;
				break;
				default:
					Decode.Col = 0x00;
			}
			break;
	    case 'y':	
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x0C;
					break;
				case 1:
					Decode.Col = 0x50;
					break;
				case 2:
					Decode.Col = 0x50;
				break;
				case 3:
					Decode.Col = 0x50;
				break;
				case 4:
					Decode.Col = 0x3C;
				break;
				default:
					Decode.Col = 0x00;
			}
			break;
	    case 'Z':	
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x61;
					break;
				case 1:
					Decode.Col = 0x51;
					break;
				case 2:
					Decode.Col = 0x49;
				break;
				case 3:
					Decode.Col = 0x45;
				break;
				case 4:
					Decode.Col = 0x43;
				break;
				default:
					Decode.Col = 0x00;
			}
			break;
	    case 'z':	
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x44;
					break;
				case 1:
					Decode.Col = 0x64;
					break;
				case 2:
					Decode.Col = 0x54;
				break;
				case 3:
					Decode.Col = 0x4C;
				break;
				case 4:
					Decode.Col = 0x44;
				break;
				default:
					Decode.Col = 0x00;
			}
			break;
	    case '1':	
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x00;
					break;
				case 1:
					Decode.Col = 0x42;
					break;
				case 2:
					Decode.Col = 0x7F;
				break;
				case 3:
					Decode.Col = 0x40;
				break;
				case 4:
					Decode.Col = 0x00;
				break;
				default:
					Decode.Col = 0x00;
			}
			break;
	    case '2':	
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x42;
					break;
				case 1:
					Decode.Col = 0x61;
					break;
				case 2:
					Decode.Col = 0x51;
				break;
				case 3:
					Decode.Col = 0x49;
				break;
				case 4:
					Decode.Col = 0x46;
				break;
				default:
					Decode.Col = 0x00;
			}
			break;	
	    case '3':
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x21;
					break;
				case 1:
					Decode.Col = 0x41;
					break;
				case 2:
					Decode.Col = 0x45;
				break;
				case 3:
					Decode.Col = 0x4B;
				break;
				case 4:
					Decode.Col = 0x31;
				break;
				default:
					Decode.Col = 0x00;
			}
			break;
	    case '4':	
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x18;
					break;
				case 1:
					Decode.Col = 0x14;
					break;
				case 2:
					Decode.Col = 0x12;
				break;
				case 3:
					Decode.Col = 0x7F;
				break;
				case 4:
					Decode.Col = 0x10;
				break;
				default:
					Decode.Col = 0x00;
			}
			break;
	    case '5':	
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x27;
					break;
				case 1:
					Decode.Col = 0x45;
					break;
				case 2:
					Decode.Col = 0x45;
				break;
				case 3:
					Decode.Col = 0x45;
				break;
				case 4:
					Decode.Col = 0x39;
				break;
				default:
					Decode.Col = 0x00;
			}
			break;
	    case '6':
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x3C;
					break;
				case 1:
					Decode.Col = 0x4A;
					break;
				case 2:
					Decode.Col = 0x49;
				break;
				case 3:
					Decode.Col = 0x49;
				break;
				case 4:
					Decode.Col = 0x30;
				break;
				default:
					Decode.Col = 0x00;
			}
			break;
	    case '7':	
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x03;
					break;
				case 1:
					Decode.Col = 0x01;
					break;
				case 2:
					Decode.Col = 0x71;
				break;
				case 3:
					Decode.Col = 0x09;
				break;
				case 4:
					Decode.Col = 0x07;
				break;
				default:
					Decode.Col = 0x00;
			}
			break;
	    case '8':	
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x36;
					break;
				case 1:
					Decode.Col = 0x49;
					break;
				case 2:
					Decode.Col = 0x49;
				break;
				case 3:
					Decode.Col = 0x49;
				break;
				case 4:
					Decode.Col = 0x36;
				break;
				default:
					Decode.Col = 0x00;
			}
			break;
	    case '9':	
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x06;
					break;
				case 1:
					Decode.Col = 0x49;
					break;
				case 2:
					Decode.Col = 0x49;
				break;
				case 3:
					Decode.Col = 0x29;
				break;
				case 4:
					Decode.Col = 0x1E;
				break;
				default:
					Decode.Col = 0x00;
			}
			break;
	    case '0':
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x3E;
					break;
				case 1:
					Decode.Col = 0x51;
					break;
				case 2:
					Decode.Col = 0x49;
				break;
				case 3:
					Decode.Col = 0x45;
				break;
				case 4:
					Decode.Col = 0x3E;
				break;
				default:
					Decode.Col = 0x00;
			}
			break;	    
		case ';':
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x00;
					break;
				case 1:
					Decode.Col = 0x56;
					break;
				case 2:
					Decode.Col = 0x36;
				break;
				case 3:
					Decode.Col = 0x00;
				break;
				case 4:
					Decode.Col = 0x00;
				break;
				default:
					Decode.Col = 0x00;
			}
			break;
	    case ',':	
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x40;
					break;
				case 1:
					Decode.Col = 0x30;
					break;
				case 2:
					Decode.Col = 0x00;
				break;
				case 3:
					Decode.Col = 0x00;
				break;
				case 4:
					Decode.Col = 0x00;
				break;
				default:
					Decode.Col = 0x00;
			}
			break;
	    case ':':
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x00;
					break;
				case 1:
					Decode.Col = 0x36;
					break;
				case 2:
					Decode.Col = 0x36;
				break;
				case 3:
					Decode.Col = 0x00;
				break;
				case 4:
					Decode.Col = 0x00;
				break;
				default:
					Decode.Col = 0x00;
			}
			break;
		case '!':
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x5F;
					break;
				case 1:
					Decode.Col = 0x00;
					break;
				case 2:
					Decode.Col = 0x00;
				break;
				case 3:
					Decode.Col = 0x00;
				break;
				case 4:
					Decode.Col = 0x00;
				break;
				default:
					Decode.Col = 0x00;
			}
			break;
		case '+':
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x08;
					break;
				case 1:
					Decode.Col = 0x08;
					break;
				case 2:
					Decode.Col = 0x3E;
				break;
				case 3:
					Decode.Col = 0x08;
				break;
				case 4:
					Decode.Col = 0x08;
				break;
				default:
					Decode.Col = 0x00;
			}
			break;
	    case '-':
			switch(SubCol)
			{
				case 0:
					Decode.Col = 0x08;
					break;
				case 1:
					Decode.Col = 0x08;
					break;
				case 2:
					Decode.Col = 0x08;
				break;
				case 3:
					Decode.Col = 0x08;
				break;
				case 4:
					Decode.Col = 0x08;
				break;
				default:
					Decode.Col = 0x00;
			}
			break;
	    case ' ':
			Decode.Col = 0;	
			break;
		case '/':
			Decode.Col = 0;	
			break;
		case 0:
			Decode.Col = 0;
			break;
		default:
			Decode.Col = 0;
			break;
	}// End Switch
	return Decode;
} // end GetBanrCol()

#endif // !defined(PIC18F87J94_PIM)


//Global Variables
//BANRCOL C1,C2,C3,C4,C5,C6,C7,C8,C9,C10,C11,C12,C13,C14,C15,C16,C17,C18,C19,C20,C21,C22,C23,C24,C25,C26,C27,C28,C29,C30,C31,C32,C33,C34,C35,C36,C37;
//
//unsigned char LCD_Banner[LCDBANRMAX];
//unsigned char Alp[6];
//char STR1[30] = {"Presenting PIC18F97J94/0"};
//char STR2[30] = {"With USB and LCD/0"};
//char STR3[30] = {"VBAT on VDD Loss/0"};
//unsigned char Length,StLength;
//unsigned int X1,X2;
//unsigned char Str[150];
//unsigned char *Strptr;
//unsigned int Counter,Rate;
//unsigned char LineComplete;
//unsigned int MaxLength;

//void UpdateBanner(void)
//{
//	C1.Col= LCD_Banner[0]; C2.Col= LCD_Banner[1]; C3.Col= LCD_Banner[2]; C4.Col= LCD_Banner[3]; C5.Col= LCD_Banner[4];
//	C6.Col= LCD_Banner[5]; C7.Col= LCD_Banner[6]; C8.Col= LCD_Banner[7]; C9.Col= LCD_Banner[8]; C10.Col=LCD_Banner[9];
//	C11.Col=LCD_Banner[10];C12.Col=LCD_Banner[11];C13.Col=LCD_Banner[12];C14.Col=LCD_Banner[13];C15.Col=LCD_Banner[14];
//	C16.Col=LCD_Banner[15];C17.Col=LCD_Banner[16];C18.Col=LCD_Banner[17];C19.Col=LCD_Banner[18];C20.Col=LCD_Banner[19];
//	C21.Col=LCD_Banner[20];C22.Col=LCD_Banner[21];C23.Col=LCD_Banner[22],C24.Col=LCD_Banner[23];C25.Col=LCD_Banner[24];
//	C26.Col=LCD_Banner[25];C27.Col=LCD_Banner[26];C28.Col=LCD_Banner[27];C29.Col=LCD_Banner[28];C30.Col=LCD_Banner[29];
//	C31.Col=LCD_Banner[30],C32.Col=LCD_Banner[31];C33.Col=LCD_Banner[32];C34.Col=LCD_Banner[33];C35.Col=LCD_Banner[34];
//	C36.Col=LCD_Banner[35];C37.Col=LCD_Banner[36];
//
//	X1C1= C1.Row.R1;  X2C1= C1.Row.R2;  X3C1= C1.Row.R3;  X4C1= C1.Row.R4;  X5C1= C1.Row.R5;  X6C1= C1.Row.R6;  X7C1= C1.Row.R7;//  Dollar=1;
//	X1C2= C2.Row.R1;  X2C2= C2.Row.R2;  X3C2= C2.Row.R3;  X4C2= C2.Row.R4;  X5C2= C2.Row.R5;  X6C2= C2.Row.R6;  X7C2= C2.Row.R7;//  WHEEL1=1;
//	X1C3= C3.Row.R1;  X2C3= C3.Row.R2;  X3C3= C3.Row.R3;  X4C3= C3.Row.R4;  X5C3= C3.Row.R5;  X6C3= C3.Row.R6;  X7C3= C3.Row.R7;//  WHEEL2=1;
//	X1C4= C4.Row.R1;  X2C4= C4.Row.R2;  X3C4= C4.Row.R3;  X4C4= C4.Row.R4;  X5C4= C4.Row.R5;  X6C4= C4.Row.R6;  X7C4= C4.Row.R7;//  WHEEL3=1;
//	X1C5= C5.Row.R1;  X2C5= C5.Row.R2;  X3C5= C5.Row.R3;  X4C5= C5.Row.R4;  X5C5= C5.Row.R5;  X6C5= C5.Row.R6;  X7C5= C5.Row.R7;//  WHEEL4=1;
//	X1C6= C6.Row.R1;  X2C6= C6.Row.R2;  X3C6= C6.Row.R3;  X4C6= C6.Row.R4;  X5C6= C6.Row.R5;  X6C6= C6.Row.R6;  X7C6= C6.Row.R7;//  WHEEL5=1;
//	X1C7= C7.Row.R1;  X2C7= C7.Row.R2;  X3C7= C7.Row.R3;  X4C7= C7.Row.R4;  X5C7= C7.Row.R5;  X6C7= C7.Row.R6;  X7C7= C7.Row.R7;//  WHEEL6=1;
//	X1C8= C8.Row.R1;  X2C8= C8.Row.R2;  X3C8= C8.Row.R3;  X4C8= C8.Row.R4;  X5C8= C8.Row.R5;  X6C8= C8.Row.R6;  X7C8= C8.Row.R7;//  WHEEL7=1;
//	X1C9= C9.Row.R1;  X2C9= C9.Row.R2;  X3C9= C9.Row.R3;  X4C9= C9.Row.R4;  X5C9= C9.Row.R5;  X6C9= C9.Row.R6;  X7C9= C9.Row.R7;//  WHEEL8=1;
//
//	X1C10=C10.Row.R1; X2C10=C10.Row.R2; X3C10=C10.Row.R3; X4C10=C10.Row.R4; X5C10=C10.Row.R5; X6C10=C10.Row.R6; X7C10=C10.Row.R7;// WHEEL9=1;
//	X1C11=C11.Row.R1; X2C11=C11.Row.R2; X3C11=C11.Row.R3; X4C11=C11.Row.R4; X5C11=C11.Row.R5; X6C11=C11.Row.R6; X7C11=C11.Row.R7;// WHEEL10=1;
//	X1C12=C12.Row.R1; X2C12=C12.Row.R2; X3C12=C12.Row.R3; X4C12=C12.Row.R4; X5C12=C12.Row.R5; X6C12=C12.Row.R6; X7C12=C12.Row.R7;// SUN=1;
//	X1C13=C13.Row.R1; X2C13=C13.Row.R2; X3C13=C13.Row.R3; X4C13=C13.Row.R4; X5C13=C13.Row.R5; X6C13=C13.Row.R6; X7C13=C13.Row.R7;// PAN=1;
//	X1C14=C14.Row.R1; X2C14=C14.Row.R2; X3C14=C14.Row.R3; X4C14=C14.Row.R4; X5C14=C14.Row.R5; X6C14=C14.Row.R6; X7C14=C14.Row.R7;// WIFI=1;
//	X1C15=C15.Row.R1; X2C15=C15.Row.R2; X3C15=C15.Row.R3; X4C15=C15.Row.R4; X5C15=C15.Row.R5; X6C15=C15.Row.R6; X7C15=C15.Row.R7;// ZIG=1;
//	X1C16=C16.Row.R1; X2C16=C16.Row.R2; X3C16=C16.Row.R3; X4C16=C16.Row.R4; X5C16=C16.Row.R5; X6C16=C16.Row.R6; X7C16=C16.Row.R7;// CLOUD=1;
//	X1C17=C17.Row.R1; X2C17=C17.Row.R2; X3C17=C17.Row.R3; X4C17=C17.Row.R4; X5C17=C17.Row.R5; X6C17=C17.Row.R6; X7C17=C17.Row.R7;// HEART=1;
//	X1C18=C18.Row.R1; X2C18=C18.Row.R2; X3C18=C18.Row.R3; X4C18=C18.Row.R4; X5C18=C18.Row.R5; X6C18=C18.Row.R6; X7C18=C18.Row.R7;// STRIP=1;
//	X1C19=C19.Row.R1; X2C19=C19.Row.R2; X3C19=C19.Row.R3; X4C19=C19.Row.R4; X5C19=C19.Row.R5; X6C19=C19.Row.R6; X7C19=C19.Row.R7;// BAT1=1;
//
//	X1C20=C20.Row.R1; X2C20=C20.Row.R2; X3C20=C20.Row.R3; X4C20=C20.Row.R4; X5C20=C20.Row.R5; X6C20=C20.Row.R6; X7C20=C20.Row.R7;// BAT2=1;
//	X1C21=C21.Row.R1; X2C21=C21.Row.R2; X3C21=C21.Row.R3; X4C21=C21.Row.R4; X5C21=C21.Row.R5; X6C21=C21.Row.R6; X7C21=C21.Row.R7;// BAT3=1;
//	X1C22=C22.Row.R1; X2C22=C22.Row.R2; X3C22=C22.Row.R3; X4C22=C22.Row.R4; X5C22=C22.Row.R5; X6C22=C22.Row.R6; X7C22=C22.Row.R7;// BAT4=1;
//	X1C23=C23.Row.R1; X2C23=C23.Row.R2; X3C23=C23.Row.R3; X4C23=C23.Row.R4; X5C23=C23.Row.R5; X6C23=C23.Row.R6; X7C23=C23.Row.R7;// DROP=1;
//	X1C24=C24.Row.R1; X2C24=C24.Row.R2; X3C24=C24.Row.R3; X4C24=C24.Row.R4; X5C24=C24.Row.R5; X6C24=C24.Row.R6; X7C24=C24.Row.R7;// THERMO=1;
//	X1C25=C25.Row.R1; X2C25=C25.Row.R2; X3C25=C25.Row.R3; X4C25=C25.Row.R4; X5C25=C25.Row.R5; X6C25=C25.Row.R6; X7C25=C25.Row.R7;// CEL=1;
//	X1C26=C26.Row.R1; X2C26=C26.Row.R2; X3C26=C26.Row.R3; X4C26=C26.Row.R4; X5C26=C26.Row.R5; X6C26=C26.Row.R6; X7C26=C26.Row.R7;// FAR=1;
//	X1C27=C27.Row.R1; X2C27=C27.Row.R2; X3C27=C27.Row.R3; X4C27=C27.Row.R4; X5C27=C27.Row.R5; X6C27=C27.Row.R6; X7C27=C27.Row.R7;// MICROCHIP=1;
//	X1C28=C28.Row.R1; X2C28=C28.Row.R2; X3C28=C28.Row.R3; X4C28=C28.Row.R4; X5C28=C28.Row.R5; X6C28=C28.Row.R6; X7C28=C28.Row.R7;// CENT=1;
//	X1C29=C29.Row.R1; X2C29=C29.Row.R2; X3C29=C29.Row.R3; X4C29=C29.Row.R4; X5C29=C29.Row.R5; X6C29=C29.Row.R6; X7C29=C29.Row.R7;// RMB=1;
//
//	X1C30=C30.Row.R1; X2C30=C30.Row.R2; X3C30=C30.Row.R3; X4C30=C30.Row.R4; X5C30=C30.Row.R5; X6C30=C30.Row.R6; X7C30=C30.Row.R7;
//	X1C31=C31.Row.R1; X2C31=C31.Row.R2; X3C31=C31.Row.R3; X4C31=C31.Row.R4; X5C31=C31.Row.R5; X6C31=C31.Row.R6; X7C31=C31.Row.R7;
//	X1C32=C32.Row.R1; X2C32=C32.Row.R2; X3C32=C32.Row.R3; X4C32=C32.Row.R4; X5C32=C32.Row.R5; X6C32=C32.Row.R6; X7C32=C32.Row.R7;
//	X1C33=C33.Row.R1; X2C33=C33.Row.R2; X3C33=C33.Row.R3; X4C33=C33.Row.R4; X5C33=C33.Row.R5; X6C33=C33.Row.R6; X7C33=C33.Row.R7;
//	X1C34=C34.Row.R1; X2C34=C34.Row.R2; X3C34=C34.Row.R3; X4C34=C34.Row.R4; X5C34=C34.Row.R5; X6C34=C34.Row.R6; X7C34=C34.Row.R7;
//	X1C35=C35.Row.R1; X2C35=C35.Row.R2; X3C35=C35.Row.R3; X4C35=C35.Row.R4; X5C35=C35.Row.R5; X6C35=C35.Row.R6; X7C35=C35.Row.R7;
//	X1C36=C36.Row.R1; X2C36=C36.Row.R2; X3C36=C36.Row.R3; X4C36=C36.Row.R4; X5C36=C36.Row.R5; X6C36=C36.Row.R6; X7C36=C36.Row.R7;
//	X1C37=C37.Row.R1; X2C37=C37.Row.R2; X3C37=C37.Row.R3; X4C37=C37.Row.R4; X5C37=C37.Row.R5; X6C37=C37.Row.R6; X7C37=C37.Row.R7;
//}
//
///*****************************************************************************
//* Function: BannerInit
//*
//* Preconditions: None.
//*
//* Overview: 
//*
//* Input: None.
//*
//* Output: None.
//*
//******************************************************************************/
//void BannerInit(void)
//{
//	MaxLength=0;
//}
//
//void Banner(void)
//{
//	Counter=0;
//	Rate=0;
//	LineComplete=0;
//}
//
//void BannerDisplay(unsigned char StringNumber)
//{
//	unsigned char Chnum,Stnum;
//	unsigned int Mlength;
//	char *FillPtr;
//	Stnum=StringNumber;
//	
//	switch(Stnum)
//	{
//		case 0:
//			FillPtr=&STR1[0];
//			break;
//		case 1:
//			FillPtr=&STR2[0];
//			break;
//		case 2:
//			FillPtr=&STR3[0];
//			break;
//	}
//	
//	Banner();
//	Length=0;
//	Chnum=1;
//	X1=0;
//	X2=0;
//	for(Mlength=0;Mlength<=(MaxLength*6) ;Mlength++)//erase the buffer
//	{
//		Str[Mlength]=0;
//	}
//	while(Chnum!='/')
//	{
//		Chnum=*FillPtr;
//		FillPtr++;
//		UpdateChar(Chnum);
//		Length++;
//		if(Length==44)
//		{
//			Nop();
//		}
//		Str[X1+X2]=Alp[X1];X1++;// array of 1000 bytes for the string
//		Str[X1+X2]=Alp[X1];X1++;
//		Str[X1+X2]=Alp[X1];X1++;
//		Str[X1+X2]=Alp[X1];X1++;
//		Str[X1+X2]=Alp[X1];X1++;
//		Str[X1+X2]=Alp[X1];X1++;
//		X2=X2+6;
//		X1=0;
//		if(Chnum=='/')
//		{
//			Length--;
//			Nop();
//			if(MaxLength<Length)
//			{
//				MaxLength=Length;
//			}
//		}
//	}
//}
//
//void BannerUpdate(void)
//{
//	unsigned int i = 0;
//	if(Rate==(6*Length)) // check for the lengh for char in Str[]
//	{
//		Rate=0;
//		LineComplete=1; 		//one Line display complete
//	}
//	if(LineComplete==0)		//Skip when the one line display is complete
//	{
//		Strptr=&Str[Rate];
//		Counter=0;
//		while(Counter<=36)
//		{
//			LCD_Banner[Counter]=*Strptr;
//			Strptr++;
//			Counter++;
//			if(&Str[149] < Strptr)
//			{
//				Strptr = &Str[149];
//			}
//		}
//		UpdateBanner();
//		Rate++;
//		VariableDelay();
//	}
//	if(Rate==255)
//	{
//		Nop();
//	}
//}
///*****************************************************************************
//* Function: UpdateChar
//*
//* Preconditions: None.
//*
//* Overview: Update the character set-Not all characters are updated , user 
//* can modify each case depending on what format they need for the font or character
//*
//* Input: None.
//*
//* Output: None.
//*
//*Note each case statement has 6 values , each reptesenting one column.
//*There are seven row 
//*
//*000000--->1
//*000000--->2
//*000000--->3
//*000000--->4
//*000000--->5
//*000000--->6
//*000000--->7
//*||||||
//*......
//*123456
//*
//*So Alp[0]=  Column[1] Row[1-7] 
//*Example of representing A
//*
//*00x000--->1 00x00
//*0x0x00--->2 0xxx0
//*x000x0--->3 0xxx0
//*x000x0--->4 0xxx0
//*xxxxx0--->5 00x00
//*x000x0--->6 00000
//*x000x0--->7 0xxx0
//*||||||
//*123456
//*Alp[0]=  Column[1] Row[1-7] =0x7C
//*Alp[1]=  Column[2] Row[1-7] =0x12
//*Alp[2]=  Column[3] Row[1-7] =0x22
//*Alp[3]=  Column[4] Row[1-7] =0x23
//*Alp[4]=  Column[5] Row[1-7] =0x7C
//*Alp[5]=  Column[6] Row[1-7] =0x00 always maintain this zero for the spacing between character
//*Note that in each row , row 1 is the lsb and row 7 is the msb, the 8th bit should always be 
//*maintained zero
//*******************************************************************************/
//void UpdateChar(unsigned char ch)
//{
//	switch(ch)
//	{
//		case 'A':
//			Alp[0]=0x7C;
//			Alp[1]=0x12;
//			Alp[2]=0x11;
//			Alp[3]=0x12;
//			Alp[4]=0x7C;
//			Alp[5]=0x0;	
//			break;
//		case 'a':
//			Alp[0]=0x20;
//			Alp[1]=0x54;
//			Alp[2]=0x54;
//			Alp[3]=0x54;
//			Alp[4]=0x78;
//			Alp[5]=0x0;	
//			break;
//	    case 'B':
//			Alp[0]=0x7F;
//			Alp[1]=0x49;
//			Alp[2]=0x49;
//			Alp[3]=0x49;
//			Alp[4]=0x36;
//			Alp[5]=0x0;	
//			break;
//	    case 'b':
//			Alp[0]=0x7F;
//			Alp[1]=0x48;
//			Alp[2]=0x44;
//			Alp[3]=0x44;
//			Alp[4]=0x38;
//			Alp[5]=0x0;	
//			break;
//	    case 'C':
//			Alp[0]=0x3E;
//			Alp[1]=0x41;
//			Alp[2]=0x41;
//			Alp[3]=0x41;
//			Alp[4]=0x22;
//			Alp[5]=0x0;	
//			break;	
//	    case 'c':
//			Alp[0]=0x38;
//			Alp[1]=0x44;
//			Alp[2]=0x44;
//			Alp[3]=0x44;
//			Alp[4]=0x20;
//			Alp[5]=0x0;	
//			break;
//	    case 'D':
//			Alp[0]=0x7F;
//			Alp[1]=0x41;
//			Alp[2]=0x41;
//			Alp[3]=0x22;
//			Alp[4]=0x1C;
//			Alp[5]=0x0;	
//			break;
//	    case 'd':
//			Alp[0]=0x38;
//			Alp[1]=0x44;
//			Alp[2]=0x44;
//			Alp[3]=0x48;
//			Alp[4]=0x7F;
//			Alp[5]=0x0;	
//			break;
//	    case 'E':
//			Alp[0]=0x7F;
//			Alp[1]=0x49;
//			Alp[2]=0x49;
//			Alp[3]=0x49;
//			Alp[4]=0x41;
//			Alp[5]=0x0;	
//			break;
//	    case 'e':
//			Alp[0]=0x38;
//			Alp[1]=0x54;
//			Alp[2]=0x54;
//			Alp[3]=0x54;
//			Alp[4]=0x18;
//			Alp[5]=0x0;	
//			break;
//	    case 'F':
//			Alp[0]=0x7F;
//			Alp[1]=0x09;
//			Alp[2]=0x09;
//			Alp[3]=0x09;
//			Alp[4]=0x01;
//			Alp[5]=0x0;	
//			break;
//	    case 'f':
//			Alp[0]=0x08;
//			Alp[1]=0x7E;
//			Alp[2]=0x09;
//			Alp[3]=0x01;
//			Alp[4]=0x02;
//			Alp[5]=0x0;	
//			break;
//	    case 'G':
//			Alp[0]=0x3E;
//			Alp[1]=0x41;
//			Alp[2]=0x49;
//			Alp[3]=0x49;
//			Alp[4]=0x7A;
//			Alp[5]=0x0;	
//			break;
//	    case 'g':
//			Alp[0]=0x08;
//			Alp[1]=0x54;
//			Alp[2]=0x54;
//			Alp[3]=0x54;
//			Alp[4]=0x3C;
//			Alp[5]=0x0;	
//			break;
//	    case 'H':
//			Alp[0]=0x7F;
//			Alp[1]=0x08;
//			Alp[2]=0x08;
//			Alp[3]=0x08;
//			Alp[4]=0x7F;
//			Alp[5]=0x0;	
//			break;
//	    case 'h':
//			Alp[0]=0x7F;
//			Alp[1]=0x08;
//			Alp[2]=0x04;
//			Alp[3]=0x04;
//			Alp[4]=0x78;
//			Alp[5]=0x0;	
//			break;
//	    case 'I':
//			Alp[0]=0x00;
//			Alp[1]=0x41;
//			Alp[2]=0x7F;
//			Alp[3]=0x41;
//			Alp[4]=0x00;
//			Alp[5]=0x0;	
//			break;
//	    case 'i':
//			Alp[0]=0x00;
//			Alp[1]=0x48;
//			Alp[2]=0x7D;
//			Alp[3]=0x40;
//			Alp[4]=0x00;
//			Alp[5]=0x0;	
//			break;	
//	    case 'J':
//			Alp[0]=0x20;
//			Alp[1]=0x40;
//			Alp[2]=0x41;
//			Alp[3]=0x3F;
//			Alp[4]=0x01;
//			Alp[5]=0x0;	
//			break;
//	    case 'j':
//			Alp[0]=0x20;
//			Alp[1]=0x40;
//			Alp[2]=0x44;
//			Alp[3]=0x3D;
//			Alp[4]=0x00;
//			Alp[5]=0x0;	
//			break;
//	    case 'K':
//			Alp[0]=0x7F;
//			Alp[1]=0x08;
//			Alp[2]=0x14;
//			Alp[3]=0x22;
//			Alp[4]=0x41;
//			Alp[5]=0x0;	
//			break;
//	    case 'k':
//			Alp[0]=0x7F;
//			Alp[1]=0x10;
//			Alp[2]=0x28;
//			Alp[3]=0x44;
//			Alp[4]=0x00;
//			Alp[5]=0x0;	
//			break;
//	    case 'L':
//			Alp[0]=0x7F;
//			Alp[1]=0x40;
//			Alp[2]=0x40;
//			Alp[3]=0x40;
//			Alp[4]=0x40;
//			Alp[5]=0x0;	
//			break;
//	    case 'l':
//			Alp[0]=0x00;
//			Alp[1]=0x41;
//			Alp[2]=0x7F;
//			Alp[3]=0x40;
//			Alp[4]=0x00;
//			Alp[5]=0x0;	
//			break;
//		case 'M':
//			Alp[0]=0x7F;
//			Alp[1]=0x02;
//			Alp[2]=0x0C;
//			Alp[3]=0x02;
//			Alp[4]=0x7F;
//			Alp[5]=0x0;	
//			break;
//		case 'm':
//			Alp[0]=0x7C;
//			Alp[1]=0x04;
//			Alp[2]=0x78;
//			Alp[3]=0x04;
//			Alp[4]=0x78;
//			Alp[5]=0x0;	
//			break;
//	    case 'N':
//			Alp[0]=0x7F;
//			Alp[1]=0x04;
//			Alp[2]=0x08;
//			Alp[3]=0x10;
//			Alp[4]=0x7F;
//			Alp[5]=0x0;	
//			break;
//	    case 'n':
//			Alp[0]=0x7C;
//			Alp[1]=0x08;
//			Alp[2]=0x04;
//			Alp[3]=0x04;
//			Alp[4]=0x78;
//			Alp[5]=0x0;	
//			break;
//	    case 'O':
//			Alp[0]=0x3E;
//			Alp[1]=0x41;
//			Alp[2]=0x41;
//			Alp[3]=0x41;
//			Alp[4]=0x3E;
//			Alp[5]=0x0;	
//			break;
//	    case 'o':
//			Alp[0]=0x38;
//			Alp[1]=0x44;
//			Alp[2]=0x44;
//			Alp[3]=0x44;
//			Alp[4]=0x38;
//			Alp[5]=0x0;	
//			break;
//	    case 'P':
//			Alp[0]=0x7F;
//			Alp[1]=0x09;
//			Alp[2]=0x09;
//			Alp[3]=0x09;
//			Alp[4]=0x06;
//			Alp[5]=0x0;	
//			break;
//	    case 'p':
//			Alp[0]=0x7C;
//			Alp[1]=0x14;
//			Alp[2]=0x14;
//			Alp[3]=0x14;
//			Alp[4]=0x08;
//			Alp[5]=0x0;	
//			break;
//	    case 'Q':
//			Alp[0]=0x3E;
//			Alp[1]=0x41;
//			Alp[2]=0x51;
//			Alp[3]=0x21;
//			Alp[4]=0x5E;
//			Alp[5]=0x0;	
//			break;
//	    case 'q':
//			Alp[0]=0x08;
//			Alp[1]=0x14;
//			Alp[2]=0x14;
//			Alp[3]=0x18;
//			Alp[4]=0x7C;
//			Alp[5]=0x0;	
//			break;
//	    case 'R':
//			Alp[0]=0x7F;
//			Alp[1]=0x09;
//			Alp[2]=0x19;
//			Alp[3]=0x29;
//			Alp[4]=0x46;
//			Alp[5]=0x0;	
//			break;
//	    case 'r':
//			Alp[0]=0x7C;
//			Alp[1]=0x08;
//			Alp[2]=0x04;
//			Alp[3]=0x04;
//			Alp[4]=0x08;
//			Alp[5]=0x0;	
//			break;
//	    case 'S':
//			Alp[0]=0x46;
//			Alp[1]=0x49;
//			Alp[2]=0x49;
//			Alp[3]=0x49;
//			Alp[4]=0x31;
//			Alp[5]=0x0;	
//			break;
//	    case 's':
//			Alp[0]=0x48;
//			Alp[1]=0x54;
//			Alp[2]=0x54;
//			Alp[3]=0x54;
//			Alp[4]=0x20;
//			Alp[5]=0x0;	
//			break;
//	    case 'T':
//			Alp[0]=0x01;
//			Alp[1]=0x01;
//			Alp[2]=0x7F;
//			Alp[3]=0x01;
//			Alp[4]=0x01;
//			Alp[5]=0x0;	
//			break;
//	    case 't':
//			Alp[0]=0x04;
//			Alp[1]=0x3F;
//			Alp[2]=0x44;
//			Alp[3]=0x40;
//			Alp[4]=0x20;
//			Alp[5]=0x0;	
//			break;
//	    case 'U':
//			Alp[0]=0x3F;
//			Alp[1]=0x40;
//			Alp[2]=0x40;
//			Alp[3]=0x40;
//			Alp[4]=0x3F;
//			Alp[5]=0x0;	
//			break;
//	    case 'u':
//			Alp[0]=0x3C;
//			Alp[1]=0x40;
//			Alp[2]=0x40;
//			Alp[3]=0x20;
//			Alp[4]=0x7C;
//			Alp[5]=0x0;	
//			break;
//	    case 'V':
//			Alp[0]=0x1F;
//			Alp[1]=0x20;
//			Alp[2]=0x40;
//			Alp[3]=0x20;
//			Alp[4]=0x1F;
//			Alp[5]=0x0;	
//			break;
//	    case 'v':
//			Alp[0]=0x1C;
//			Alp[1]=0x20;
//			Alp[2]=0x40;
//			Alp[3]=0x20;
//			Alp[4]=0x1C;
//			Alp[5]=0x0;	
//			break;
//	    case 'W':
//			Alp[0]=0x3F;
//			Alp[1]=0x40;
//			Alp[2]=0x38;
//			Alp[3]=0x40;
//			Alp[4]=0x3F;
//			Alp[5]=0x0;	
//			break;
//	    case 'w':
//			Alp[0]=0x3C;
//			Alp[1]=0x40;
//			Alp[2]=0x38;
//			Alp[3]=0x40;
//			Alp[4]=0x3C;
//			Alp[5]=0x0;	
//			break;
//	    case 'X':
//			Alp[0]=0x63;
//			Alp[1]=0x14;
//			Alp[2]=0x08;
//			Alp[3]=0x14;
//			Alp[4]=0x63;
//			Alp[5]=0x0;	
//			break;
//	    case 'x':
//			Alp[0]=0x44;
//			Alp[1]=0x28;
//			Alp[2]=0x10;
//			Alp[3]=0x28;
//			Alp[4]=0x44;
//			Alp[5]=0x0;	
//			break;
//	    case 'Y':
//			Alp[0]=0x07;
//			Alp[1]=0x08;
//			Alp[2]=0x70;
//			Alp[3]=0x08;
//			Alp[4]=0x07;
//			Alp[5]=0x0;	
//			break;
//	    case 'y':
//			Alp[0]=0x0C;
//			Alp[1]=0x50;
//			Alp[2]=0x50;
//			Alp[3]=0x50;
//			Alp[4]=0x3C;
//			Alp[5]=0x0;	
//			break;
//	    case 'Z':
//			Alp[0]=0x61;
//			Alp[1]=0x51;
//			Alp[2]=0x49;
//			Alp[3]=0x45;
//			Alp[4]=0x43;
//			Alp[5]=0x0;	
//			break;
//	    case 'z':
//			Alp[0]=0x44;
//			Alp[1]=0x64;
//			Alp[2]=0x54;
//			Alp[3]=0x4C;
//			Alp[4]=0x44;
//			Alp[5]=0x0;	
//			break;
//	    case '1':
//			Alp[0]=0x00;
//			Alp[1]=0x42;
//			Alp[2]=0x7F;
//			Alp[3]=0x40;
//			Alp[4]=0x00;
//			Alp[5]=0x0;	
//			break;
//	    case '2':
//			Alp[0]=0x42;
//			Alp[1]=0x61;
//			Alp[2]=0x51;
//			Alp[3]=0x49;
//			Alp[4]=0x46;
//			Alp[5]=0x0;	
//			break;	
//	    case '3':
//			Alp[0]=0x21;
//			Alp[1]=0x41;
//			Alp[2]=0x45;
//			Alp[3]=0x4B;
//			Alp[4]=0x31;
//			Alp[5]=0x0;	
//			break;
//	    case '4':
//			Alp[0]=0x18;
//			Alp[1]=0x14;
//			Alp[2]=0x12;
//			Alp[3]=0x7F;
//			Alp[4]=0x10;
//			Alp[5]=0x0;	
//			break;
//	    case '5':
//			Alp[0]=0x27;
//			Alp[1]=0x45;
//			Alp[2]=0x45;
//			Alp[3]=0x45;
//			Alp[4]=0x39;
//			Alp[5]=0x0;	
//			break;
//	    case '6':
//			Alp[0]=0x3C;
//			Alp[1]=0x4A;
//			Alp[2]=0x49;
//			Alp[3]=0x49;
//			Alp[4]=0x30;
//			Alp[5]=0x0;	
//			break;
//	    case '7':
//			Alp[0]=0x03;
//			Alp[1]=0x01;
//			Alp[2]=0x71;
//			Alp[3]=0x09;
//			Alp[4]=0x07;
//			Alp[5]=0x0;	
//			break;
//	    case '8':
//			Alp[0]=0x36;
//			Alp[1]=0x49;
//			Alp[2]=0x49;
//			Alp[3]=0x49;
//			Alp[4]=0x36;
//			Alp[5]=0x0;	
//			break;
//	    case '9':
//			Alp[0]=0x06;
//			Alp[1]=0x49;
//			Alp[2]=0x49;
//			Alp[3]=0x29;
//			Alp[4]=0x1E;
//			Alp[5]=0x0;	
//			break;
//	    case '0':
//			Alp[0]=0x3E;
//			Alp[1]=0x51;
//			Alp[2]=0x49;
//			Alp[3]=0x45;
//			Alp[4]=0x3E;
//			Alp[5]=0x0;	
//			break;	    
//		case ';':
//			Alp[0]=0x00;
//			Alp[1]=0x56;
//			Alp[2]=0x36;
//			Alp[3]=0x00;
//			Alp[4]=0x00;
//			Alp[5]=0x0;	
//			break;
//	    case ',':
//			Alp[0]=0x00;
//			Alp[1]=0x50;
//			Alp[2]=0x30;
//			Alp[3]=0x00;
//			Alp[4]=0x00;
//			Alp[5]=0x0;	
//			break;
//	    case ':':
//			Alp[0]=0x00;
//			Alp[1]=0x36;
//			Alp[2]=0x36;
//			Alp[3]=0x00;
//			Alp[4]=0x00;
//			Alp[5]=0x0;	
//			break;
//		case '+':
//			Alp[0]=0x08;
//			Alp[1]=0x08;
//			Alp[2]=0x3E;
//			Alp[3]=0x08;
//			Alp[4]=0x08;
//			Alp[5]=0;
//			break;
//	    case '-':
//			Alp[0]=0x08;
//			Alp[1]=0x08;
//			Alp[2]=0x08;
//			Alp[3]=0x08;
//			Alp[4]=0x08;
//			Alp[5]=0x0;	
//			break;
//	    case ' ':
//			Alp[0]=0;
//			Alp[1]=0;
//			Alp[2]=0;
//			Alp[3]=0;
//			Alp[4]=0;
//			Alp[5]=0;	
//			break;
//		case '/':
//			Alp[0]=0;
//			Alp[1]=0;
//			Alp[2]=0;
//			Alp[3]=0;
//			Alp[4]=0;
//			Alp[5]=0;	
//			break;
//		case 0:
//			Alp[0]=0;
//			Alp[1]=0;
//			Alp[2]=0;
//			Alp[3]=0;
//			Alp[4]=0;
//			Alp[5]=0;
//			break;
//		default:
//			Alp[0]=0;
//			Alp[1]=0;
//			Alp[2]=0;
//			Alp[3]=0;
//			Alp[4]=0;
//			Alp[5]=0;
//			break;
//	}// End Switch
//}// End UpdateChar()
//
