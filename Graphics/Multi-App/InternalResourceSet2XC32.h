/*****************************************************************************
 * FileName:        InternalResourceSet2XC32.h
 * Processor:       PIC32MX
 * Compiler:        MPLAB C32/XC32 (see release notes for tested revision)
 * Linker:          MPLAB LINK32/XC32
 * Company:         Microchip Technology, Inc.
 *
 * Software License Agreement
 *
 * Copyright(c) 2012 Microchip Technology Inc.  All rights reserved.
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
 *
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * AUTO-GENERATED CODE:  Graphics Resource Converter version: 3.28.15
 *****************************************************************************/

#ifndef INTERNALRESOURCESET2XC32_H_FILE
#define INTERNALRESOURCESET2XC32_H_FILE
/*****************************************************************************
 * SECTION:  Includes
 *****************************************************************************/
#include <Graphics/Graphics.h>
#include "HardwareProfile.h"

/*****************************************************************************
 * SECTION:  Graphics Library Firmware Check
 *****************************************************************************/
#if(GRAPHICS_LIBRARY_VERSION != 0x0306)
#warning "It is suggested to use Graphics Library version 3.06 with this version of GRC."
#endif

/*****************************************************************************
 * SECTION:  Graphics Bitmap Padding Check
 *****************************************************************************/
#ifdef USE_BITMAP_NO_PADDING_LINE
#error These bitmap resources have been converted with padding of the horizontal lines, but USE_BITMAP_NO_PADDING_LINE is defined in GraphicsConfig.h.
#endif


/*****************************************************************************
 * This is an error check for the color depth
 *****************************************************************************/
#if (COLOR_DEPTH > 16)
#error "Color Depth needs to be 16 to correctly use these resources"
#endif



/*****************************************************************************
 * SECTION:  BITMAPS
 *****************************************************************************/

/*********************************
 * Bitmap Structure
 * Label: DateAndTime_mono_72x72
 * Description:  72x72 pixels, 4-bits per pixel
 ***********************************/
extern const IMAGE_FLASH DateAndTime_mono_72x72;
#define DateAndTime_mono_72x72_WIDTH     (72)
#define DateAndTime_mono_72x72_HEIGHT    (72)
#define DateAndTime_mono_72x72_SIZE      (2630)
/*********************************
 * Bitmap Structure
 * Label: DrawingScreen_4bpp_72x72
 * Description:  72x72 pixels, 4-bits per pixel
 ***********************************/
extern const IMAGE_FLASH DrawingScreen_4bpp_72x72;
#define DrawingScreen_4bpp_72x72_WIDTH     (72)
#define DrawingScreen_4bpp_72x72_HEIGHT    (72)
#define DrawingScreen_4bpp_72x72_SIZE      (2630)
/*********************************
 * Bitmap Structure
 * Label: DrawingScreen_mono_72x72
 * Description:  72x72 pixels, 4-bits per pixel
 ***********************************/
extern const IMAGE_FLASH DrawingScreen_mono_72x72;
#define DrawingScreen_mono_72x72_WIDTH     (72)
#define DrawingScreen_mono_72x72_HEIGHT    (72)
#define DrawingScreen_mono_72x72_SIZE      (2630)
/*********************************
 * Bitmap Structure
 * Label: ECG_4bpp_72x72
 * Description:  72x72 pixels, 4-bits per pixel
 ***********************************/
extern const IMAGE_FLASH ECG_4bpp_72x72;
#define ECG_4bpp_72x72_WIDTH     (72)
#define ECG_4bpp_72x72_HEIGHT    (72)
#define ECG_4bpp_72x72_SIZE      (2630)
/*********************************
 * Bitmap Structure
 * Label: ECG_mono_72x72
 * Description:  72x72 pixels, 4-bits per pixel
 ***********************************/
extern const IMAGE_FLASH ECG_mono_72x72;
#define ECG_mono_72x72_WIDTH     (72)
#define ECG_mono_72x72_HEIGHT    (72)
#define ECG_mono_72x72_SIZE      (2630)
/*********************************
 * Bitmap Structure
 * Label: FolderPhoto_4bpp_72x72
 * Description:  72x72 pixels, 4-bits per pixel
 ***********************************/
extern const IMAGE_FLASH FolderPhoto_4bpp_72x72;
#define FolderPhoto_4bpp_72x72_WIDTH     (72)
#define FolderPhoto_4bpp_72x72_HEIGHT    (72)
#define FolderPhoto_4bpp_72x72_SIZE      (2630)
/*********************************
 * Bitmap Structure
 * Label: FolderPhoto_mono_72x72
 * Description:  72x72 pixels, 4-bits per pixel
 ***********************************/
extern const IMAGE_FLASH FolderPhoto_mono_72x72;
#define FolderPhoto_mono_72x72_WIDTH     (72)
#define FolderPhoto_mono_72x72_HEIGHT    (72)
#define FolderPhoto_mono_72x72_SIZE      (2630)
/*********************************
 * Bitmap Structure
 * Label: intro
 * Description:  158x55 pixels, 16-bits per pixel
 ***********************************/
extern const IMAGE_FLASH intro;
#define intro_WIDTH     (158)
#define intro_HEIGHT    (55)
#define intro_SIZE      (17386)
/*********************************
 * Bitmap Structure
 * Label: Language_4bpp_72x72
 * Description:  72x72 pixels, 4-bits per pixel
 ***********************************/
extern const IMAGE_FLASH Language_4bpp_72x72;
#define Language_4bpp_72x72_WIDTH     (72)
#define Language_4bpp_72x72_HEIGHT    (72)
#define Language_4bpp_72x72_SIZE      (2630)
/*********************************
 * Bitmap Structure
 * Label: Language_mono_72x72
 * Description:  72x72 pixels, 4-bits per pixel
 ***********************************/
extern const IMAGE_FLASH Language_mono_72x72;
#define Language_mono_72x72_WIDTH     (72)
#define Language_mono_72x72_HEIGHT    (72)
#define Language_mono_72x72_SIZE      (2630)
/*********************************
 * Bitmap Structure
 * Label: PCGaming2_4bpp_72x72
 * Description:  72x72 pixels, 4-bits per pixel
 ***********************************/
extern const IMAGE_FLASH PCGaming2_4bpp_72x72;
#define PCGaming2_4bpp_72x72_WIDTH     (72)
#define PCGaming2_4bpp_72x72_HEIGHT    (72)
#define PCGaming2_4bpp_72x72_SIZE      (2630)
/*********************************
 * Bitmap Structure
 * Label: PCGaming2_mono_72x72
 * Description:  72x72 pixels, 4-bits per pixel
 ***********************************/
extern const IMAGE_FLASH PCGaming2_mono_72x72;
#define PCGaming2_mono_72x72_WIDTH     (72)
#define PCGaming2_mono_72x72_HEIGHT    (72)
#define PCGaming2_mono_72x72_SIZE      (2630)
/*********************************
 * Bitmap Structure
 * Label: RGBLighting_4bpp_72x72
 * Description:  72x72 pixels, 4-bits per pixel
 ***********************************/
extern const IMAGE_FLASH RGBLighting_4bpp_72x72;
#define RGBLighting_4bpp_72x72_WIDTH     (72)
#define RGBLighting_4bpp_72x72_HEIGHT    (72)
#define RGBLighting_4bpp_72x72_SIZE      (2630)
/*********************************
 * Bitmap Structure
 * Label: RGBLighting_mono_72x72
 * Description:  72x72 pixels, 4-bits per pixel
 ***********************************/
extern const IMAGE_FLASH RGBLighting_mono_72x72;
#define RGBLighting_mono_72x72_WIDTH     (72)
#define RGBLighting_mono_72x72_HEIGHT    (72)
#define RGBLighting_mono_72x72_SIZE      (2630)
/*********************************
 * Bitmap Structure
 * Label: rose
 * Description:  113x85 pixels, 16-bits per pixel
 ***********************************/
extern const IMAGE_FLASH rose;
#define rose_WIDTH     (113)
#define rose_HEIGHT    (85)
#define rose_SIZE      (19216)
/*********************************
 * Bitmap Structure
 * Label: Animation_4bpp_72x72
 * Description:  72x72 pixels, 4-bits per pixel
 ***********************************/
extern const IMAGE_FLASH Animation_4bpp_72x72;
#define Animation_4bpp_72x72_WIDTH     (72)
#define Animation_4bpp_72x72_HEIGHT    (72)
#define Animation_4bpp_72x72_SIZE      (2630)
/*********************************
 * Bitmap Structure
 * Label: Animation_mono_72x72
 * Description:  72x72 pixels, 4-bits per pixel
 ***********************************/
extern const IMAGE_FLASH Animation_mono_72x72;
#define Animation_mono_72x72_WIDTH     (72)
#define Animation_mono_72x72_HEIGHT    (72)
#define Animation_mono_72x72_SIZE      (2630)
/*********************************
 * Bitmap Structure
 * Label: DateAndTime_4bpp_72x72
 * Description:  72x72 pixels, 4-bits per pixel
 ***********************************/
extern const IMAGE_FLASH DateAndTime_4bpp_72x72;
#define DateAndTime_4bpp_72x72_WIDTH     (72)
#define DateAndTime_4bpp_72x72_HEIGHT    (72)
#define DateAndTime_4bpp_72x72_SIZE      (2630)
/*********************************
 * Bitmap Structure
 * Label: head
 * Description:  24x24 pixels, 16-bits per pixel
 ***********************************/
extern const IMAGE_FLASH head;
#define head_WIDTH     (24)
#define head_HEIGHT    (24)
#define head_SIZE      (1158)
/*********************************
 * Bitmap Structure
 * Label: body
 * Description:  24x24 pixels, 16-bits per pixel
 ***********************************/
extern const IMAGE_FLASH body;
#define body_WIDTH     (24)
#define body_HEIGHT    (24)
#define body_SIZE      (1158)
/*********************************
 * Bitmap Structure
 * Label: food
 * Description:  24x24 pixels, 8-bits per pixel
 ***********************************/
extern const IMAGE_FLASH food;
#define food_WIDTH     (24)
#define food_HEIGHT    (24)
#define food_SIZE      (1094)
/*****************************************************************************
 * SECTION:  Fonts
 *****************************************************************************/

/*********************************
 * TTF Font File Structure
 * Label: BigFonts
 * Description:  Height: 58 pixels, 1 bit per pixel, Range: ' ' to ':'
 * Comment Block:
 * Created from Gentium font. 
 * Gentium font is Copyright (c) 2003-2005, SIL International (http://scripts.sil.org/). 
 * All Rights Reserved. 
 * Gentium font is licensed under the SIL Open Font License, Version 1.0. 
 * http://scripts.sil.org/OFL 
 ***********************************/
extern const FONT_FLASH BigFonts;
#define BigFonts_SIZE    (4582)
#endif

