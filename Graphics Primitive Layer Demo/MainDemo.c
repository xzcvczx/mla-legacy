/*****************************************************************************
 * Microchip Graphics Library Demo Application
 * This program shows how to use the Graphics Primitives Layer.
 *****************************************************************************
 * FileName:        MainDemo.c
 * Dependencies:    MainDemo.h
 * Processor:       PIC24, PIC32
 * Compiler:       	MPLAB C30, MPLAB C32
 * Linker:          MPLAB LINK30, MPLAB LINK32
 * Company:         Microchip Technology Incorporated
 *
 * Software License Agreement
 *
 * Copyright © 2008 Microchip Technology Inc.  All rights reserved.
 * Microchip licenses to you the right to use, modify, copy and distribute
 * Software only when embedded on a Microchip microcontroller or digital
 * signal controller, which is integrated into your product or third party
 * product (pursuant to the sublicense terms in the accompanying license
 * agreement).  
 *
 * You should refer to the license agreement accompanying this Software
 * for additional information regarding your rights and obligations.
 *
 * SOFTWARE AND DOCUMENTATION ARE PROVIDED “AS IS” WITHOUT WARRANTY OF ANY
 * KIND, EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY
 * OF MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR
 * PURPOSE. IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE LIABLE OR
 * OBLIGATED UNDER CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION,
 * BREACH OF WARRANTY, OR OTHER LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT
 * DAMAGES OR EXPENSES INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL,
 * INDIRECT, PUNITIVE OR CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA,
 * COST OF PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY
 * CLAIMS BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF),
 * OR OTHER SIMILAR COSTS.
 *
 * Author               Date        Comment
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * Anton Alkhimenok		30/05/07	...
 *****************************************************************************/

#include "MainDemo.h"

// Configuration bits
#ifdef __PIC32MX
#pragma config FPLLODIV = DIV_1, FPLLMUL = MUL_18, FPLLIDIV = DIV_2, FWDTEN = OFF, FCKSM = CSECME, FPBDIV = DIV_1
#pragma config OSCIOFNC = ON, POSCMOD = XT, FSOSCEN = ON, FNOSC = PRIPLL
#pragma config CP = OFF, BWP = OFF, PWP = OFF
#else
	#if defined (__PIC24FJ256GA110__)
        _CONFIG1( JTAGEN_OFF & GCP_OFF & GWRP_OFF & COE_OFF & FWDTEN_OFF & ICS_PGx2) 
        _CONFIG2( IESO_OFF & FCKSM_CSDCMD & OSCIOFNC_OFF & POSCMOD_HS & FNOSC_PRIPLL & IOL1WAY_OFF)
    #endif	
	#if defined (__PIC24FJ128GA010__)
		_CONFIG2(FNOSC_PRIPLL & POSCMOD_XT) // Primary XT OSC with PLL
		_CONFIG1(JTAGEN_OFF & FWDTEN_OFF)   // JTAG off, watchdog timer off
	#endif	
#endif

///////////////////////////////// FONTS ///////////////////////////////////////
extern const FONT_FLASH Font25;
extern const FONT_FLASH Font35;

/////////////////////////////// PICTURES //////////////////////////////////////
extern const BITMAP_FLASH flower16bit;
extern const BITMAP_FLASH flower8bit;
extern const BITMAP_FLASH flower4bit;
extern const BITMAP_FLASH flower1bit;

int main(void){
SHORT width, height;
SHORT counter;
const SHORT polyPoints[] = {
160,60,
240,120,
160,180,
80,120,
160,60,
};

#ifdef __PIC32MX__
    INTEnableSystemMultiVectoredInt();
    SYSTEMConfigPerformance(GetSystemClock());
#endif

/////////////////////////////////////////////////////////////////////////////
// ADC Explorer 16 Development Board Errata (work around 2)
// RB15 should be output
/////////////////////////////////////////////////////////////////////////////
	LATBbits.LATB15 = 0;
	TRISBbits.TRISB15 = 0;
/////////////////////////////////////////////////////////////////////////////

    InitGraph();

    while(1){

		SetColor(WHITE);

        for(counter=0; counter<GetMaxX(); counter+=20){
            Line(counter,0,GetMaxX()-1-counter,GetMaxY()-1);
        }

        DelayMs(4000);  

        SetColor(BRIGHTRED);

        for(counter=10; counter<GetMaxY()>>1; counter+=10){
            Circle(GetMaxX()>>1,GetMaxY()>>1,counter);
        }

        DelayMs(4000);  

        SetColor(BRIGHTBLUE);
        FillCircle(GetMaxX()>>1,GetMaxY()>>1,60);
        SetColor(BRIGHTGREEN);
        FillCircle(GetMaxX()>>1,GetMaxY()>>1,40);
        SetColor(BRIGHTRED);
        FillCircle(GetMaxX()>>1,GetMaxY()>>1,20);

        DelayMs(4000);  

        SetColor(BLACK);
        ClearDevice();

        SetColor(BRIGHTBLUE);
        Bevel((GetMaxX()>>1)-60,(GetMaxY()>>1)-60,(GetMaxX()>>1)+60,(GetMaxY()>>1)+60,30);
        SetColor(BRIGHTGREEN);
        Bevel((GetMaxX()>>1)-40,(GetMaxY()>>1)-40,(GetMaxX()>>1)+40,(GetMaxY()>>1)+40,30);
        SetColor(BRIGHTRED);
        Bevel((GetMaxX()>>1)-20,(GetMaxY()>>1)-20,(GetMaxX()>>1)+20,(GetMaxY()>>1)+20,30);

        DelayMs(4000);  

        SetColor(BLACK);
        ClearDevice();

        SetColor(BRIGHTBLUE);
        Arc((GetMaxX()>>1)-60,(GetMaxY()>>1)-60,(GetMaxX()>>1)+60,(GetMaxY()>>1)+60,20,30,0xFF);
        SetColor(BRIGHTGREEN);
        Arc((GetMaxX()>>1)-40,(GetMaxY()>>1)-40,(GetMaxX()>>1)+40,(GetMaxY()>>1)+40,20,30,0xFF);
        SetColor(BRIGHTRED);
        Arc((GetMaxX()>>1)-20,(GetMaxY()>>1)-20,(GetMaxX()>>1)+20,(GetMaxY()>>1)+20,20,30,0xFF);

        DelayMs(4000);  

        SetColor(BRIGHTBLUE);
        FillBevel((GetMaxX()>>1)-60,(GetMaxY()>>1)-60,(GetMaxX()>>1)+60,(GetMaxY()>>1)+60,30);
        SetColor(BRIGHTGREEN);
        FillBevel((GetMaxX()>>1)-40,(GetMaxY()>>1)-40,(GetMaxX()>>1)+40,(GetMaxY()>>1)+40,30);
        SetColor(BRIGHTRED);
        FillBevel((GetMaxX()>>1)-20,(GetMaxY()>>1)-20,(GetMaxX()>>1)+20,(GetMaxY()>>1)+20,30);

        DelayMs(4000);  

        SetColor(BLACK);
        ClearDevice();

        SetColor(BRIGHTBLUE);
        Arc((GetMaxX()>>1),(GetMaxY()>>1)-50,(GetMaxX()>>1),(GetMaxY()>>1)+50,50,60,0x11);
        SetColor(BRIGHTGREEN);
        Arc((GetMaxX()>>1),(GetMaxY()>>1)-50,(GetMaxX()>>1),(GetMaxY()>>1)+50,50,60,0x22);
        SetColor(BRIGHTRED);
        Arc((GetMaxX()>>1),(GetMaxY()>>1)-50,(GetMaxX()>>1),(GetMaxY()>>1)+50,50,60,0x44);
        SetColor(BRIGHTYELLOW);
        Arc((GetMaxX()>>1),(GetMaxY()>>1)-50,(GetMaxX()>>1),(GetMaxY()>>1)+50,50,60,0x88);

        SetColor(BRIGHTBLUE);
        Arc((GetMaxX()>>1),(GetMaxY()>>1)-30,(GetMaxX()>>1),(GetMaxY()>>1)+30,35,45,0x11);
        SetColor(BRIGHTGREEN);
        Arc((GetMaxX()>>1),(GetMaxY()>>1)-30,(GetMaxX()>>1),(GetMaxY()>>1)+30,35,45,0x22);
        SetColor(BRIGHTRED);
        Arc((GetMaxX()>>1),(GetMaxY()>>1)-30,(GetMaxX()>>1),(GetMaxY()>>1)+30,35,45,0x44);
        SetColor(BRIGHTYELLOW);
        Arc((GetMaxX()>>1),(GetMaxY()>>1)-30,(GetMaxX()>>1),(GetMaxY()>>1)+30,35,45,0x88);

        SetColor(BRIGHTBLUE);
        Arc((GetMaxX()>>1),(GetMaxY()>>1),(GetMaxX()>>1),(GetMaxY()>>1),20,30,0x11);
        SetColor(BRIGHTGREEN);
        Arc((GetMaxX()>>1),(GetMaxY()>>1),(GetMaxX()>>1),(GetMaxY()>>1),20,30,0x22);
        SetColor(BRIGHTRED);
        Arc((GetMaxX()>>1),(GetMaxY()>>1),(GetMaxX()>>1),(GetMaxY()>>1),20,30,0x44);
        SetColor(BRIGHTYELLOW);
        Arc((GetMaxX()>>1),(GetMaxY()>>1),(GetMaxX()>>1),(GetMaxY()>>1),20,30,0x88);

        DelayMs(4000);  

        SetColor(BLACK);
        ClearDevice();

        SetColor(BRIGHTBLUE);

        for(counter=0; counter<GetMaxY()>>1; counter+=20){
            Rectangle(GetMaxX()/2-counter,
                      GetMaxY()/2-counter,
                      GetMaxX()/2+counter,
                      GetMaxY()/2+counter);
        }

        DelayMs(4000);  

        SetColor(BRIGHTBLUE);
        Bar(GetMaxX()/2-80,GetMaxY()/2-80,
            GetMaxX()/2+80,GetMaxY()/2+80);
        SetColor(BRIGHTGREEN);
        Bar(GetMaxX()/2-60,GetMaxY()/2-60,
            GetMaxX()/2+60,GetMaxY()/2+60);
        SetColor(BRIGHTRED);
        Bar(GetMaxX()/2-40,GetMaxY()/2-40,
            GetMaxX()/2+40,GetMaxY()/2+40);


        DelayMs(4000);  
        SetColor(BLACK);
        ClearDevice();

        SetColor(WHITE);
        DrawPoly(5,(SHORT*)polyPoints);

        DelayMs(4000);  
        SetColor(BLACK);
        ClearDevice();


        SetFont((void*)&Font25);
        SetColor(BRIGHTGREEN);
        width = GetTextWidth("Microchip Technology Inc.",(void*)&Font25);
        height = GetTextHeight((void*)&Font25);

        OutTextXY( (GetMaxX()-width)>>1,
                   (GetMaxY()-height)>>1,
                    "Microchip Technology Inc.");

        DelayMs(4000);  
        SetColor(BLACK);
        ClearDevice();

        SetFont((void*)&Font35);
        SetColor(WHITE);
        width = GetTextWidth("Microchip Tech.",(void*)&Font35);
        height = GetTextHeight((void*)&Font35);

        OutTextXY( (GetMaxX()-width)>>1,
                   (GetMaxY()-height)>>1,
                    "Microchip Tech.");

        DelayMs(4000);  
        SetColor(BLACK);
        ClearDevice();

        PutImage(0,0,(void*)&flower1bit,2);
        SetColor(WHITE);
        OutTextXY(200,0,"1BPP");
        DelayMs(8000);  
        SetColor(BLACK);
        ClearDevice();

        PutImage(0,0,(void*)&flower4bit,2);
        SetColor(WHITE);
        OutTextXY(200,0,"4BPP");
        DelayMs(8000);  
        SetColor(BLACK);
        ClearDevice();

        PutImage(0,0,(void*)&flower8bit,2);
        SetColor(WHITE);
        OutTextXY(200,0,"8BPP");
        DelayMs(8000);  
        SetColor(BLACK);
        ClearDevice();

        PutImage(0,0,(void*)&flower16bit,2);
        SetColor(WHITE);
        OutTextXY(200,0,"16BPP");
        DelayMs(8000);  
        SetColor(BLACK);
        ClearDevice();

        PutImage(84,0,(void*)&flower1bit,1);
        PutImage(169,0,(void*)&flower4bit,1);
        PutImage(84,114,(void*)&flower8bit,1);
        PutImage(169,114,(void*)&flower16bit,1);
        DelayMs(16000);  
        SetColor(BLACK);
        ClearDevice();
    } 

}
