/*****************************************************************************
 * Microchip Graphics Library Demo Application
 * This program shows how to use the Graphics Primitives Layer.
 *****************************************************************************
 * FileName:        MainDemo.c
 * Dependencies:    MainDemo.h
 * Processor:       PIC24F, PIC24H, dsPIC, PIC32
 * Compiler:       	MPLAB C30, MPLAB C32
 * Linker:          MPLAB LINK30, MPLAB LINK32
 * Company:         Microchip Technology Incorporated
 *
 * Software License Agreement
 *
 * Copyright � 2008 Microchip Technology Inc.  All rights reserved.
 * Microchip licenses to you the right to use, modify, copy and distribute
 * Software only when embedded on a Microchip microcontroller or digital
 * signal controller, which is integrated into your product or third party
 * product (pursuant to the sublicense terms in the accompanying license
 * agreement).  
 *
 * You should refer to the license agreement accompanying this Software
 * for additional information regarding your rights and obligations.
 *
 * SOFTWARE AND DOCUMENTATION ARE PROVIDED �AS IS� WITHOUT WARRANTY OF ANY
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
#if defined(__dsPIC33F__) || defined(__PIC24H__)
_FOSCSEL(FNOSC_PRI);
_FOSC(FCKSM_CSECMD &OSCIOFNC_OFF &POSCMD_XT);
_FWDT(FWDTEN_OFF);
#elif defined(__PIC32MX__)
    #pragma config FPLLODIV = DIV_1, FPLLMUL = MUL_20, FPLLIDIV = DIV_2, FWDTEN = OFF, FCKSM = CSECME, FPBDIV = DIV_1
    #pragma config OSCIOFNC = ON, POSCMOD = XT, FSOSCEN = ON, FNOSC = PRIPLL
    #pragma config CP = OFF, BWP = OFF, PWP = OFF
#else
    #if defined(__PIC24FJ256GB110__)
_CONFIG1(JTAGEN_OFF & GCP_OFF & GWRP_OFF & COE_OFF & FWDTEN_OFF & ICS_PGx2)
_CONFIG2(0xF7FF & IESO_OFF & FCKSM_CSDCMD & OSCIOFNC_OFF & POSCMOD_HS & FNOSC_PRIPLL & PLLDIV_DIV2 & IOL1WAY_OFF)
    #endif
    #if defined(__PIC24FJ256GA110__)
_CONFIG1(JTAGEN_OFF & GCP_OFF & GWRP_OFF & COE_OFF & FWDTEN_OFF & ICS_PGx2)
_CONFIG2(IESO_OFF & FCKSM_CSDCMD & OSCIOFNC_OFF & POSCMOD_HS & FNOSC_PRIPLL & IOL1WAY_OFF)
    #endif
    #if defined(__PIC24FJ128GA010__)
_CONFIG2(FNOSC_PRIPLL & POSCMOD_XT) // Primary XT OSC with PLL
_CONFIG1(JTAGEN_OFF & FWDTEN_OFF)   // JTAG off, watchdog timer off
    #endif
	#if defined (__PIC24FJ256DA210__)
_CONFIG1( WDTPS_PS32768 & FWPSA_PR128 & ALTVREF_ALTVREDIS & WINDIS_OFF & FWDTEN_OFF & ICS_PGx2 & GWRP_OFF & GCP_OFF & JTAGEN_OFF) 
_CONFIG2( POSCMOD_HS & IOL1WAY_OFF & OSCIOFNC_OFF & OSCIOFNC_OFF & FCKSM_CSDCMD & FNOSC_PRIPLL & PLL96MHZ_ON & PLLDIV_DIV2 & IESO_OFF)
_CONFIG3( WPFP_WPFP255 & SOSCSEL_SOSC & WUTSEL_LEG & ALTPMP_ALTPMPEN & WPDIS_WPDIS & WPCFG_WPCFGDIS & WPEND_WPENDMEM) 
	#endif	  
	#if defined (__PIC24FJ256GB210__)
_CONFIG1( WDTPS_PS32768 & FWPSA_PR128 & ALTVREF_ALTVREDIS & WINDIS_OFF & FWDTEN_OFF & ICS_PGx2 & GWRP_OFF & GCP_OFF & JTAGEN_OFF) 
_CONFIG2( POSCMOD_HS & IOL1WAY_OFF & OSCIOFNC_OFF & OSCIOFNC_OFF & FCKSM_CSDCMD & FNOSC_PRIPLL & PLL96MHZ_ON & PLLDIV_DIV2 & IESO_OFF)
_CONFIG3( WPFP_WPFP255 & SOSCSEL_SOSC & WUTSEL_LEG & WPDIS_WPDIS & WPCFG_WPCFGDIS & WPEND_WPENDMEM) 
	#endif
#endif

///////////////////////////////// FONTS ///////////////////////////////////////
extern const FONT_FLASH     Font25;
extern const FONT_FLASH     Font35;

/////////////////////////////// PICTURES //////////////////////////////////////
extern const IMAGE_FLASH   flower16bit;
extern const IMAGE_FLASH   flower8bit;
extern const IMAGE_FLASH   flower4bit;
extern const IMAGE_FLASH   flower1bit;

#define WAIT_UNTIL_FINISH(x)    while(!x)
#define MIN(x,y)                ((x > y)? y: x)
#define DEMODELAY				1000
    /* */
    int main(void)
{
    SHORT       width, height;
    SHORT       counter;
    const SHORT polyPoints[] = {
        (GetMaxX()+1)/2,    (GetMaxY()+1)/4,
        (GetMaxX()+1)*3/4,  (GetMaxY()+1)/2,
        (GetMaxX()+1)/2,    (GetMaxY()+1)*3/4,
        (GetMaxX()+1)/4,    (GetMaxY()+1)/2,
        (GetMaxX()+1)/2,    (GetMaxY()+1)/4,
    };
    
    #if defined(__dsPIC33F__) || defined(__PIC24H__)

    // Configure Oscillator to operate the device at 40Mhz
    // Fosc= Fin*M/(N1*N2), Fcy=Fosc/2
    // Fosc= 8M*40(2*2)=80Mhz for 8M input clock
    PLLFBD = 38;                    // M=40
    CLKDIVbits.PLLPOST = 0;         // N1=2
    CLKDIVbits.PLLPRE = 0;          // N2=2
    OSCTUN = 0;                     // Tune FRC oscillator, if FRC is used

    // Disable Watch Dog Timer
    RCONbits.SWDTEN = 0;

    // Clock switching to incorporate PLL
    __builtin_write_OSCCONH(0x03);  // Initiate Clock Switch to Primary

    // Oscillator with PLL (NOSC=0b011)
    __builtin_write_OSCCONL(0x01);  // Start clock switching
    while(OSCCONbits.COSC != 0b011);

    // Wait for Clock switch to occur	
    // Wait for PLL to lock
    while(OSCCONbits.LOCK != 1)
    { };
    #elif defined(__PIC32MX__)
    INTEnableSystemMultiVectoredInt();
    SYSTEMConfigPerformance(GetSystemClock());
    #ifdef MULTI_MEDIA_BOARD_DM00123
    CPLDInitialize();
    CPLDSetGraphicsConfiguration(GRAPHICS_HW_CONFIG);
    CPLDSetSPIFlashConfiguration(SPI_FLASH_CHANNEL);
    #endif
    #endif


    /////////////////////////////////////////////////////////////////////////////
    // ADC Explorer 16 Development Board Errata (work around 2)
    // RB15 should be output
    /////////////////////////////////////////////////////////////////////////////
    #ifdef EXPLORER_16
    LATBbits.LATB15 = 0;
    TRISBbits.TRISB15 = 0;
    #endif

    /////////////////////////////////////////////////////////////////////////////
    #if defined(__dsPIC33FJ128GP804__) || defined(__PIC24HJ128GP504__)
    AD1PCFGL = 0xffff;
    #endif
    InitGraph();

    while(1)
    {
	    // draw border lines to show the limits of the 
	    // left, right, top and bottom pixels of the screen
	    // draw the top most horizontal line
        SetColor(BRIGHTRED);
        WAIT_UNTIL_FINISH(Line(0,0,GetMaxX(),0));
        // draw the right most vertical line
        SetColor(BRIGHTYELLOW);
        WAIT_UNTIL_FINISH(Line(GetMaxX(),0,GetMaxX(),GetMaxY()));
	    // draw the bottom most horizontal line
        SetColor(BRIGHTGREEN);
        WAIT_UNTIL_FINISH(Line(0,GetMaxY(),GetMaxX(),GetMaxY()));
        // draw the left most vertical line
        SetColor(BRIGHTBLUE);
        WAIT_UNTIL_FINISH(Line(0,0,0,GetMaxY()));

        DelayMs(DEMODELAY);

		// draw WHITE lines intersecting in the middle of the screen
        SetColor(WHITE);
        for(counter = 0; counter < GetMaxX(); counter += 20)
        {
            WAIT_UNTIL_FINISH(Line(counter, 0, GetMaxX() - 1 - counter, GetMaxY() - 1));
        }

        DelayMs(DEMODELAY);

		// draw concentric RED circles in the middle of the screen
        SetColor(BRIGHTRED);
        for(counter = 10; counter < MIN(GetMaxX(), GetMaxY()) >> 1; counter += 10)
        {
            WAIT_UNTIL_FINISH(Circle(GetMaxX() >> 1, GetMaxY() >> 1, counter));
        }

        DelayMs(DEMODELAY);

		// draw concentric filled circles in the middle of the screen
        SetColor(BRIGHTBLUE);
        WAIT_UNTIL_FINISH(FillCircle(GetMaxX() >> 1, GetMaxY() >> 1, 60));
        SetColor(BRIGHTGREEN);
        WAIT_UNTIL_FINISH(FillCircle(GetMaxX() >> 1, GetMaxY() >> 1, 40));
        SetColor(BRIGHTRED);
        WAIT_UNTIL_FINISH(FillCircle(GetMaxX() >> 1, GetMaxY() >> 1, 20));

        DelayMs(DEMODELAY);

        SetColor(BLACK);
        ClearDevice();

		// draw concentric beveled objects in the middle of the screen
        SetColor(BRIGHTBLUE);
        WAIT_UNTIL_FINISH(Bevel((GetMaxX() >> 1) - 60, (GetMaxY() >> 1) - 60, (GetMaxX() >> 1) + 60, (GetMaxY() >> 1) + 60, 30));
        SetColor(BRIGHTGREEN);
        WAIT_UNTIL_FINISH(Bevel((GetMaxX() >> 1) - 40, (GetMaxY() >> 1) - 40, (GetMaxX() >> 1) + 40, (GetMaxY() >> 1) + 40, 30));
        SetColor(BRIGHTRED);
        WAIT_UNTIL_FINISH(Bevel((GetMaxX() >> 1) - 20, (GetMaxY() >> 1) - 20, (GetMaxX() >> 1) + 20, (GetMaxY() >> 1) + 20, 30));

        DelayMs(DEMODELAY);

        SetColor(BLACK);
        ClearDevice();

		// draw concentric thick beveled objects in the middle of the screen
        SetColor(BRIGHTBLUE);
        WAIT_UNTIL_FINISH
        (
            Arc
                (
                    (GetMaxX() >> 1) - 60,
                    (GetMaxY() >> 1) - 60,
                    (GetMaxX() >> 1) + 60,
                    (GetMaxY() >> 1) + 60,
                    20,
                    30,
                    0xFF
                )
        );
        SetColor(BRIGHTGREEN);
        WAIT_UNTIL_FINISH
        (
            Arc
                (
                    (GetMaxX() >> 1) - 40,
                    (GetMaxY() >> 1) - 40,
                    (GetMaxX() >> 1) + 40,
                    (GetMaxY() >> 1) + 40,
                    20,
                    30,
                    0xFF
                )
        );
        SetColor(BRIGHTRED);
        WAIT_UNTIL_FINISH
        (
            Arc
                (
                    (GetMaxX() >> 1) - 20,
                    (GetMaxY() >> 1) - 20,
                    (GetMaxX() >> 1) + 20,
                    (GetMaxY() >> 1) + 20,
                    20,
                    30,
                    0xFF
                )
        );

        DelayMs(DEMODELAY);

		// draw concentric filled beveled objects in the middle of the screen
        SetColor(BRIGHTBLUE);
        WAIT_UNTIL_FINISH
        (
            FillBevel
                (
                    (GetMaxX() >> 1) - 60,
                    (GetMaxY() >> 1) - 60,
                    (GetMaxX() >> 1) + 60,
                    (GetMaxY() >> 1) + 60,
                    30
                )
        );
        SetColor(BRIGHTGREEN);
        WAIT_UNTIL_FINISH
        (
            FillBevel
                (
                    (GetMaxX() >> 1) - 40,
                    (GetMaxY() >> 1) - 40,
                    (GetMaxX() >> 1) + 40,
                    (GetMaxY() >> 1) + 40,
                    30
                )
        );
        SetColor(BRIGHTRED);
        WAIT_UNTIL_FINISH
        (
            FillBevel
                (
                    (GetMaxX() >> 1) - 20,
                    (GetMaxY() >> 1) - 20,
                    (GetMaxX() >> 1) + 20,
                    (GetMaxY() >> 1) + 20,
                    30
                )
        );

        DelayMs(DEMODELAY);

        SetColor(BLACK);
        ClearDevice();

		// draw concentric thick beveled objects in the middle of the screen
        SetColor(BRIGHTBLUE);
        WAIT_UNTIL_FINISH(Arc((GetMaxX() >> 1), (GetMaxY() >> 1) - 50, (GetMaxX() >> 1), (GetMaxY() >> 1) + 50, 50, 60, 0x11));
        SetColor(BRIGHTGREEN);
        WAIT_UNTIL_FINISH(Arc((GetMaxX() >> 1), (GetMaxY() >> 1) - 50, (GetMaxX() >> 1), (GetMaxY() >> 1) + 50, 50, 60, 0x22));
        SetColor(BRIGHTRED);
        WAIT_UNTIL_FINISH(Arc((GetMaxX() >> 1), (GetMaxY() >> 1) - 50, (GetMaxX() >> 1), (GetMaxY() >> 1) + 50, 50, 60, 0x44));
        SetColor(BRIGHTYELLOW);
        WAIT_UNTIL_FINISH(Arc((GetMaxX() >> 1), (GetMaxY() >> 1) - 50, (GetMaxX() >> 1), (GetMaxY() >> 1) + 50, 50, 60, 0x88));

        SetColor(BRIGHTBLUE);
        WAIT_UNTIL_FINISH(Arc((GetMaxX() >> 1), (GetMaxY() >> 1) - 30, (GetMaxX() >> 1), (GetMaxY() >> 1) + 30, 35, 45, 0x11));
        SetColor(BRIGHTGREEN);
        WAIT_UNTIL_FINISH(Arc((GetMaxX() >> 1), (GetMaxY() >> 1) - 30, (GetMaxX() >> 1), (GetMaxY() >> 1) + 30, 35, 45, 0x22));
        SetColor(BRIGHTRED);
        WAIT_UNTIL_FINISH(Arc((GetMaxX() >> 1), (GetMaxY() >> 1) - 30, (GetMaxX() >> 1), (GetMaxY() >> 1) + 30, 35, 45, 0x44));
        SetColor(BRIGHTYELLOW);
        WAIT_UNTIL_FINISH(Arc((GetMaxX() >> 1), (GetMaxY() >> 1) - 30, (GetMaxX() >> 1), (GetMaxY() >> 1) + 30, 35, 45, 0x88));

        SetColor(BRIGHTBLUE);
        WAIT_UNTIL_FINISH(Arc((GetMaxX() >> 1), (GetMaxY() >> 1), (GetMaxX() >> 1), (GetMaxY() >> 1), 20, 30, 0x11));
        SetColor(BRIGHTGREEN);
        WAIT_UNTIL_FINISH(Arc((GetMaxX() >> 1), (GetMaxY() >> 1), (GetMaxX() >> 1), (GetMaxY() >> 1), 20, 30, 0x22));
        SetColor(BRIGHTRED);
        WAIT_UNTIL_FINISH(Arc((GetMaxX() >> 1), (GetMaxY() >> 1), (GetMaxX() >> 1), (GetMaxY() >> 1), 20, 30, 0x44));
        SetColor(BRIGHTYELLOW);
        WAIT_UNTIL_FINISH(Arc((GetMaxX() >> 1), (GetMaxY() >> 1), (GetMaxX() >> 1), (GetMaxY() >> 1), 20, 30, 0x88));

        DelayMs(DEMODELAY);

        SetColor(BLACK);
        ClearDevice();


		// draw rectangles in the middle of the screen
        SetColor(BRIGHTBLUE);
        for(counter = 0; counter < MIN(GetMaxX(), GetMaxY()) >> 1; counter += 20)
        {
            WAIT_UNTIL_FINISH
            (
                Rectangle
                    (
                        GetMaxX() / 2 - counter,
                        GetMaxY() / 2 - counter,
                        GetMaxX() / 2 + counter,
                        GetMaxY() / 2 + counter
                    )
            );
        }

        DelayMs(DEMODELAY);

        SetColor(BRIGHTBLUE);
        WAIT_UNTIL_FINISH(Bar(GetMaxX() / 2 - 80, GetMaxY() / 2 - 80, GetMaxX() / 2 + 80, GetMaxY() / 2 + 80));
        SetColor(BRIGHTGREEN);
        WAIT_UNTIL_FINISH(Bar(GetMaxX() / 2 - 60, GetMaxY() / 2 - 60, GetMaxX() / 2 + 60, GetMaxY() / 2 + 60));
        SetColor(BRIGHTRED);
        WAIT_UNTIL_FINISH(Bar(GetMaxX() / 2 - 40, GetMaxY() / 2 - 40, GetMaxX() / 2 + 40, GetMaxY() / 2 + 40));

        DelayMs(DEMODELAY);
        SetColor(BLACK);
        ClearDevice();

		// draw ploygon shape in the middle of the screen
        SetColor(WHITE);
        WAIT_UNTIL_FINISH(DrawPoly(5, (SHORT *)polyPoints));

        DelayMs(DEMODELAY);
        SetColor(BLACK);
        ClearDevice();

		// draw fonts in the screen
        SetFont((void *) &Font25);
        SetColor(BRIGHTGREEN);
        width = GetTextWidth("Microchip Technology Inc.", (void *) &Font25);
        height = GetTextHeight((void *) &Font25);

        OutTextXY((GetMaxX() - width) >> 1, (GetMaxY() - height) >> 1, "Microchip Technology Inc.");

        DelayMs(DEMODELAY);
        SetColor(BLACK);
        ClearDevice();

        SetFont((void *) &Font35);
        SetColor(WHITE);
        width = GetTextWidth("Microchip Tech.", (void *) &Font35);
        height = GetTextHeight((void *) &Font35);

        OutTextXY((GetMaxX() - width) >> 1, (GetMaxY() - height) >> 1, "Microchip Tech.");

        DelayMs(DEMODELAY);
        SetColor(BLACK);
        ClearDevice();

		// draw pictures in the screen with different bits per pixel
        WAIT_UNTIL_FINISH(PutImage(0, 0, (void *) &flower1bit, 2));
        SetColor(WHITE);
        OutTextXY(200, 0, "1BPP");
        DelayMs(DEMODELAY);
        SetColor(BLACK);
        ClearDevice();

        WAIT_UNTIL_FINISH(PutImage(0, 0, (void *) &flower4bit, 2));
        SetColor(WHITE);
        OutTextXY(200, 0, "4BPP");
        DelayMs(DEMODELAY);
        SetColor(BLACK);
        ClearDevice();

        WAIT_UNTIL_FINISH(PutImage(0, 0, (void *) &flower8bit, 2));
        SetColor(WHITE);
        OutTextXY(200, 0, "8BPP");
        DelayMs(DEMODELAY);
        SetColor(BLACK);
        ClearDevice();

        WAIT_UNTIL_FINISH(PutImage(0, 0, (void *) &flower16bit, 2));
        SetColor(WHITE);
        OutTextXY(200, 0, "16BPP");
        DelayMs(DEMODELAY);
        SetColor(BLACK);
        ClearDevice();

        width = GetImageWidth((void *) &flower1bit);
        height = GetImageHeight((void *) &flower1bit);

        WAIT_UNTIL_FINISH(PutImage((GetMaxX() + 1) / 2 - width  , (GetMaxY() + 1) / 2 - height  , (void *) &flower1bit,  1));
        WAIT_UNTIL_FINISH(PutImage((GetMaxX() + 1) / 2          , (GetMaxY() + 1) / 2 - height  , (void *) &flower4bit,  1));
        WAIT_UNTIL_FINISH(PutImage((GetMaxX() + 1) / 2 - width  , (GetMaxY() + 1) / 2           , (void *) &flower8bit,  1));
        WAIT_UNTIL_FINISH(PutImage((GetMaxX() + 1) / 2          , (GetMaxY() + 1) / 2           , (void *) &flower16bit, 1));
        DelayMs(DEMODELAY*2);
        SetColor(BLACK);
        ClearDevice();
    }
}
