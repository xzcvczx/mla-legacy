/*****************************************************************************
 * FileName:        AN1182 Pictures C30.h
 * Processor:       PIC24F, PIC24H, dsPIC
 * Compiler:        MPLAB C30 (see release notes for tested revision)
 * Linker:          MPLAB LINK30
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
 * AUTO-GENERATED CODE:  Graphics Resource Converter version: 3.16.45
 *****************************************************************************/

#ifndef AN1182_PICTURES_C30_H_FILE
#define AN1182_PICTURES_C30_H_FILE
/*****************************************************************************
 * SECTION:  Includes
 *****************************************************************************/
#include <Graphics/Graphics.h>

/*****************************************************************************
 * SECTION:  Graphics Library Firmware Check
 *****************************************************************************/
#if(GRAPHICS_LIBRARY_VERSION != 0x0304)
#warning "It is suggested to use Graphics Library verson 3.04 with this version of GRC."
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
 * Label: redLArrow
 * Description:  45x40 pixels, 4-bits per pixel
 ***********************************/
extern const IMAGE_FLASH redLArrow;
#define redLArrow_WIDTH     (45)
#define redLArrow_HEIGHT    (40)
#define redLArrow_SIZE      (958)
/*********************************
 * Bitmap Structure
 * Label: redRArrow
 * Description:  45x40 pixels, 4-bits per pixel
 ***********************************/
extern const IMAGE_FLASH redRArrow;
#define redRArrow_WIDTH     (45)
#define redRArrow_HEIGHT    (40)
#define redRArrow_SIZE      (958)
#endif

