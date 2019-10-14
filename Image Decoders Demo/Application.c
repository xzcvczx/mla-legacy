/******************************************************************************

* FileName:        Application.c
* Dependencies:    Image decoding library;
* Processor:       PIC24/dsPIC30/dsPIC33/PIC32MX
* Compiler:        C30 v2.01/C32 v0.00.18
* Company:         Microchip Technology, Inc.

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

Author                 Date           Comments
--------------------------------------------------------------------------------
Pradeep Budagutta    25-Jun-2008    First release
*******************************************************************************/
// Configuration bits

#include "Graphics\Graphics.h"
#include "Image Decoders\ImageDecoder.h"
#include "FlashImage.h"

#ifdef __PIC32MX__
#pragma config FPLLODIV = DIV_1, FPLLMUL = MUL_18, FPLLIDIV = DIV_2, FWDTEN = OFF, FCKSM = CSECME, FPBDIV = DIV_8
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


#define DELAY_MS 1500
#define DELAY_NEXT 3000

void PixelOutput(IMG_PIXEL_XY_RGB_888 *pPix)
{
    SetColor(RGB565CONVERT(pPix->R, pPix->G, pPix->B));
    if(pPix->X <= GetMaxX() && pPix->Y <= GetMaxY())
    {
        PutPixel(pPix->X, pPix->Y);
    }    
    if(pPix->X > GetMaxX() && pPix->Y > GetMaxY())
    {
        ImageAbort();
    }    
}

int main(void)
{
    IMG_FILE_SYSTEM_API FlashFileApi;
    BYTE bTextHeight;
    WORD X, Y;

/////////////////////////////////////////////////////////////////////////////
// ADC Explorer 16 Development Board Errata (work around 2)
// RB15 should be output
/////////////////////////////////////////////////////////////////////////////
	LATBbits.LATB15 = 0;
	TRISBbits.TRISB15 = 0;
/////////////////////////////////////////////////////////////////////////////

#ifdef __PIC32MX__
    INTEnableSystemMultiVectoredInt();
    SYSTEMConfigPerformance(GetSystemClock());	
#endif

    InitGraph();
    ImageDecoderInit();
    SetClipRgn(0,0,GetMaxX(),GetMaxY());
    SetClip(CLIP_ENABLE);

    FlashFileApi.pFread = FlashImage_fread;
    FlashFileApi.pFseek = FlashImage_fseek;
    FlashFileApi.pFtell = FlashImage_ftell;
    FlashFileApi.pFeof = FlashImage_feof;

    SetFont((void*)&GOLFontDefault);
    bTextHeight = GetTextHeight((void*)&GOLFontDefault);

    SetColor(BLACK);
    ClearDevice();
    Y = (GetMaxY()+1-(3*bTextHeight))/2;
    SetColor(LIGHTRED);
    X = GetMaxX()+1-GetTextWidth("Welcome to the demo", (void*)&GOLFontDefault);
    OutTextXY(X/2, Y, "Welcome to the demo");
    DelayMs(DELAY_MS/3);
    X = GetMaxX()+1-GetTextWidth("of", (void*)&GOLFontDefault);
    OutTextXY(X/2, Y + bTextHeight, "of");
    DelayMs(DELAY_MS/3);
    X = GetMaxX()+1-GetTextWidth("Image Decoding Library", (void*)&GOLFontDefault);
    OutTextXY(X/2, Y + 2*bTextHeight, "Image Decoding Library");
    DelayMs(DELAY_NEXT);

    while(1)
    {
        SetColor(BLACK);
        ClearDevice();
        SetColor(LIGHTRED);
        OutTextXY(0, 0, "1. Full screen decoding of");
        DelayMs(DELAY_MS);
        SetColor(YELLOW);
        OutTextXY(0, bTextHeight + 2, "MchpIcon.bmp");
        DelayMs(DELAY_MS);
        SetColor(WHITE);
        OutTextXY(0, 240 - 1*(bTextHeight + 2), "(w/o Double Buffering)");
        DelayMs(DELAY_MS);
        ImageFullScreenDecode(FlashImage_fopen(MCHPICON_BMP), IMG_BMP, &FlashFileApi, PixelOutput);
        DelayMs(DELAY_NEXT);

        SetColor(BLACK);
        ClearDevice();
        SetColor(YELLOW);
        OutTextXY(0, 240 - 4*(bTextHeight + 2), "2. Decoding of MchpIcon.bmp");
        DelayMs(DELAY_MS);
        SetColor(LIGHTRED);
        OutTextXY(0, 240 - 3*(bTextHeight + 2), "Flags = 0");
        DelayMs(DELAY_MS);
        SetColor(LIGHTBLUE);
        OutTextXY(0, 240 - 2*(bTextHeight + 2), "Rect = (0, 0) to (320, 240)");
        DelayMs(DELAY_MS);
        SetColor(WHITE);
        OutTextXY(0, 240 - 1*(bTextHeight + 2), "(w/o Double Buffering)");
        DelayMs(DELAY_MS);
        ImageDecode(FlashImage_fopen(MCHPICON_BMP), IMG_BMP, 0, 0, 320, 240, 0, &FlashFileApi, PixelOutput);
        DelayMs(DELAY_NEXT);

        SetColor(BLACK);
        ClearDevice();
        SetColor(YELLOW);
        OutTextXY(0, 240 - 5*(bTextHeight - 1), "3. Decoding of MchpLogo.jpg");
        DelayMs(DELAY_MS);
        SetColor(LIGHTRED);
        OutTextXY(0, 240 - 4*(bTextHeight - 1), "Flags = 0");
        DelayMs(DELAY_MS);
        SetColor(LIGHTBLUE);
        OutTextXY(0, 240 - 3*(bTextHeight - 1), "Rect = (0, 0) to (320, 240)");
        DelayMs(DELAY_MS);
        SetColor(LIGHTGREEN);
        OutTextXY(0, 240 - 2*(bTextHeight - 1), "(w/o Double Buffering)");
        DelayMs(DELAY_MS);
        SetColor(WHITE);
        OutTextXY(0, 240 - 1*(bTextHeight - 1), "(Image is larger than 320x240)");
        DelayMs(DELAY_MS);
        ImageDecode(FlashImage_fopen(MCHPLOGO_JPG), IMG_JPEG, 0, 0, 320, 240, 0, &FlashFileApi, PixelOutput);
        DelayMs(DELAY_NEXT);

        SetColor(BLACK);
        ClearDevice();
        SetColor(YELLOW);
        OutTextXY(0, 240 - 5*(bTextHeight + 2), "4. Decoding of MchpLogo.jpg");
        DelayMs(DELAY_MS);
        SetColor(LIGHTRED);
        OutTextXY(0, 240 - 4*(bTextHeight + 2), "Flags = IMG_DOWN_SCALE");
        DelayMs(DELAY_MS);
        SetColor(LIGHTBLUE);
        OutTextXY(0, 240 - 3*(bTextHeight + 2), "Rect = (0, 0) to (320, 240)");
        DelayMs(DELAY_MS);
        SetColor(LIGHTGREEN);
        OutTextXY(0, 240 - 2*(bTextHeight + 2), "(w/o Double Buffering)");
        DelayMs(DELAY_MS);
        SetColor(WHITE);
        OutTextXY(0, 240 - 1*(bTextHeight + 2), "(Image is larger than 320x240)");
        DelayMs(DELAY_MS);
        ImageDecode(FlashImage_fopen(MCHPLOGO_JPG), IMG_JPEG, 0, 0, 320, 240, IMG_DOWN_SCALE, &FlashFileApi, PixelOutput);
        DelayMs(DELAY_NEXT);

        SetColor(BLACK);
        ClearDevice();
        SetColor(YELLOW);
        OutTextXY(0, 0, "5. Decoding of MchpLogo.jpg");
        DelayMs(DELAY_MS);
        SetColor(LIGHTRED);
        OutTextXY(0, bTextHeight + 2, "Flags = (IMG_DOWN_SCALE |");
        OutTextXY(0, 2*(bTextHeight + 2), "IMG_ALIGN_CENTER)");
        DelayMs(DELAY_MS);
        SetColor(LIGHTBLUE);
        OutTextXY(0, 240 - 3*(bTextHeight + 2), "Rect = (0, 0) to (320, 240)");
        DelayMs(DELAY_MS);
        SetColor(LIGHTGREEN);
        OutTextXY(0, 240 - 2*(bTextHeight + 2), "(w/o Double Buffering)");
        DelayMs(DELAY_MS);
        SetColor(WHITE);
        OutTextXY(0, 240 - 1*(bTextHeight + 2), "(Image is larger than 320x240)");
        DelayMs(DELAY_MS);
        ImageDecode(FlashImage_fopen(MCHPLOGO_JPG), IMG_JPEG, 0, 0, 320, 240, IMG_DOWN_SCALE | IMG_ALIGN_CENTER, &FlashFileApi, PixelOutput);
        DelayMs(DELAY_NEXT);

        SetColor(BLACK);
        ClearDevice();
        SetColor(YELLOW);
        OutTextXY(0, 0, "6. Decoding of MchpLogo.jpg");
        DelayMs(DELAY_MS);
        SetColor(LIGHTRED);
        OutTextXY(0, bTextHeight + 2, "Flags = (IMG_DOWN_SCALE |");
        OutTextXY(0, 2*(bTextHeight + 2), "IMG_ALIGN_CENTER)");
        DelayMs(DELAY_MS);
        SetColor(LIGHTBLUE);
        OutTextXY(0, 3*(bTextHeight + 2), "Rect = (160, 120) to (320, 240)");
        DelayMs(DELAY_MS);
        SetColor(LIGHTGREEN);
        OutTextXY(0, 4*(bTextHeight + 2), "(w/o Double Buffering)");
        DelayMs(DELAY_MS);
        SetColor(WHITE);
        OutTextXY(0, 240 - (bTextHeight + 2), "(Image is larger than 320x240)");
        DelayMs(DELAY_MS);
        ImageDecode(FlashImage_fopen(MCHPLOGO_JPG), IMG_JPEG, 160, 120, 160, 120, IMG_DOWN_SCALE | IMG_ALIGN_CENTER, &FlashFileApi, PixelOutput);
        DelayMs(DELAY_NEXT);
    }

    return 0;
}
