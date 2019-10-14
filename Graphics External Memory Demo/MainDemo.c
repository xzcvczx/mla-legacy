/*****************************************************************************
 * Microchip Graphics Library Demo Application
 * This program shows how to use the external memory to store fonts and bitmaps.
 * 
 * To run this demo:
 * external.hex file in "Fonts and Bitmaps" folder must be programmed into external
 * flash memory installed on Graphics PICTail Plus board. To do this
 * "Graphics PICTail Board Memory Programmer" project can be used. Please refer to
 * "Getting started -> Graphics External Memory Demo" section in the help file for more information.
 *
 * To create a new hex file containing data for font and bitmap to be located in
 * the external flash memory use 'Bitmap and Font converter.exe' utility included in the Graphics Library.
 * With hex file the utility will create a C file containing structures for referencing
 * the font and bitmap in the hex file. This C file must be included in the project.
 * Please refer to the help built in the utility.
 *
 * In applications with external memory USE_BITMAP_EXTERNAL and USE_FONT_EXTERNAL
 * must be defined in GraphicsConfig.h. 
 *
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
 * Anton Alkhimenok		10/22/07	...
 * Anton Alkhimenok		02/05/07	ported to PICtail 2
 * Anton Alkhimenok		01/09/09	ported to PICtail 3
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

///////////////////////////// FONTS AND BITMAPS ///////////////////////////////
// This font is located in internal flash
extern const FONT_FLASH internalfont;
// This picture is located in internal flash
extern const BITMAP_FLASH internalbitmap;

// This font must be stored in external flash memory installed on
// Graphics PICTail Plus board 
extern FONT_EXTERNAL externalfont;
// This bitmap must be stored in external flash memory installed on
// Graphics PICTail Plus board 
extern BITMAP_EXTERNAL externalbitmap;

/************************************************************************
* Macros: SST39PMPInit()
*                                                                       
* Overview: initializes PMP only
*                                                                       
* Input: none                                                          
*                                                                       
* Output: none
*                                                                       
************************************************************************/
#define SST39PMPInit()  {while(PMMODEbits.BUSY); PMMODE = 0x0a49; PMAEN = 0x0003; PMCON = 0x9320;}

/************************************************************************
* Macros: LCDPMPInit()
*                                                                       
* Overview: initializes PMP only
*                                                                       
* Input: none                                                          
*                                                                       
* Output: none
*                                                                       
************************************************************************/
#define LCDPMPInit()  {while(PMMODEbits.BUSY); PMMODE = 0x0204; PMAEN = 0x0000; PMCON = 0x8300;}

int main(void){
SHORT width, height;

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

#if (GRAPHICS_PICTAIL_VERSION == 3)
    // Initialize flash installed on Graphics PICTail Plus board 3
    SST25Init();
#else
    // Initialize IOs related to parallel flash memory
    // installed on Graphics PICTail Plus board 2
    SST39Init();
#endif

    // Initialize graphics    
    InitGraph();

    while(1){
        
        // Display text with font located in internal flash

        // Set current font   
        SetFont((void*)&internalfont);
        // Get text width and height
        width = GetTextWidth("Font from internal flash",(void*)&internalfont);
        height = GetTextHeight((void*)&internalfont);
        // Put green text in the center
        SetColor(BRIGHTGREEN);
        OutTextXY( (GetMaxX()-width)>>1,
                   (GetMaxY()-height)>>1,
                    "Font from internal flash");
        // Wait a couple of seconds and clean screen

        DelayMs(4000);  
        SetColor(BLACK);
        ClearDevice();

        // Display text with font located in external memory

        // Set current font   
        SetFont((void*)&externalfont);
        // Get text width and height
        width = GetTextWidth("Font from external flash",(void*)&externalfont);
        height = GetTextHeight((void*)&externalfont);
        // Put red text in the center
        SetColor(BRIGHTRED);
        OutTextXY( (GetMaxX()-width)>>1,
                   (GetMaxY()-height)>>1,
                    "Font from external flash");
        // Wait a couple of seconds and clean screen
        DelayMs(4000);  
        SetColor(BLACK);
        ClearDevice();

        // Display picture located in internal memory

        // Get bitmap width and height
        width = GetImageWidth((void*)&internalbitmap);
        height = GetImageHeight((void*)&internalbitmap);
        // Put bitmap in the center
        PutImage( (GetMaxX()-width)>>1,
                  (GetMaxY()-height)>>1,
                  (void*)&internalbitmap,1);
        // Display some white text
        SetColor(WHITE);
        OutTextXY(0,0,"Internal");
        // Wait a couple of seconds and clean screen
        DelayMs(4000);  
        SetColor(BLACK);
        ClearDevice();

        // Display picture located in external memory

        // Get bitmap width and height
        width = GetImageWidth((void*)&externalbitmap);
        height = GetImageHeight((void*)&externalbitmap);
        // Put bitmap in the center
        PutImage( (GetMaxX()-width)>>1,
                  (GetMaxY()-height)>>1,
                  (void*)&externalbitmap,1);
        // Display some white text
        SetColor(WHITE);
        OutTextXY(0,0,"External");
        // Wait a couple of seconds and clean screen
        DelayMs(4000);  
        SetColor(BLACK);
        ClearDevice();

    } 

}

/*********************************************************************
* Function: WORD ExternalMemoryCallback(EXTDATA* memory, LONG offset, WORD nCount, void* buffer)
*
* PreCondition: none
*
* Input:  memory - pointer to the bitmap or font external memory structures
*                  (FONT_EXTERNAL or BITMAP_EXTERNAL)
*         offset - data offset
*         nCount - number of bytes to be transferred to the buffer
*         buffer - pointer to the buffer
*
* Output: number of bytes were transferred.
*
* Side Effects: none
*
* Overview: this function must be implemented in application. Graphics Library calls it
*           each time the data from external memory is required. The application must copy 
*           required data to the buffer provided.
*
* Note: none
*
********************************************************************/

// If there are several memories in the system they can be selected by IDs.
// In this demo ID for memory chip installed on Graphics PICTail board is assumed to be 0.
#define SST39_MEMORY 0

WORD ExternalMemoryCallback(EXTDATA* memory, LONG offset, WORD nCount, void* buffer){

    if(memory->ID == SST39_MEMORY){
        // Read data requested into buffer provided
#if (GRAPHICS_PICTAIL_VERSION == 3)
        SST25ReadArray(memory->address+offset, // address to read from
                   (BYTE*)buffer,
                    nCount);
#else
        SST39PMPInit();
        SST39ReadArray(memory->address+offset, // address to read from
                   (BYTE*)buffer,
                    nCount);
        LCDPMPInit();
#endif
    }

    return nCount;
}
