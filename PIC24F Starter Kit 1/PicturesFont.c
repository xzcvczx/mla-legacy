/*****************************************************************************
 * FileName:        PicturesFont.c
 * Processor:       PIC24F, PIC24H, dsPIC
 * Compiler:        MPLAB C30 (see release notes for tested revision)
 * Linker:          MPLAB LINK30
 * Company:         Microchip Technology, Inc.
 *
 * Software License Agreement
 *
 * Copyright © 2010 Microchip Technology Inc.  All rights reserved.
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
 *
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * AUTO-GENERATED CODE:  Graphics Resource Converter version: 3.8.16
 *****************************************************************************/

/*****************************************************************************
 * SECTION:  Includes
 *****************************************************************************/
#include <Graphics/Graphics.h>

/*****************************************************************************
 * Converted Resources
 * -------------------
 *
 * Bitmaps
 * -------
 * snakeBody - 8x8 pixels, 1-bits per pixel
 * snakeFood - 8x8 pixels, 1-bits per pixel
 * snakeHead - 8x8 pixels, 1-bits per pixel
 * ballCircle - 8x8 pixels, 1-bits per pixel
 * ballCross - 8x8 pixels, 1-bits per pixel
 * ballMarking - 8x8 pixels, 1-bits per pixel
 * ballSquare - 8x8 pixels, 1-bits per pixel
 * ballTriangle - 8x8 pixels, 1-bits per pixel
 * iconFolderSmall - 12x10 pixels, 1-bits per pixel
 * iconMicrochip - 16x16 pixels, 1-bits per pixel
 * intro - 128x64 pixels, 1-bits per pixel
 * introDevice - 128x64 pixels, 1-bits per pixel
 *
 * Fonts
 * -----
 * GOLFontDefault - Height: 14 pixels, range: '' to ''
 *****************************************************************************/

/*****************************************************************************
 * SECTION:  Fonts
 *****************************************************************************/

/*********************************
 * Font File Structure
 * Label: GOLFontDefault
 * Description:  Height: 14 pixels, range: '' to ''
 ***********************************/

extern const char __GOLFontDefault[] __attribute__((aligned(2)));

const FONT_FLASH GOLFontDefault =
{
    (FLASH | COMP_NONE),
    __GOLFontDefault
};

const char __GOLFontDefault[] __attribute__((aligned(2))) =
{
/****************************************
 * Font header
 ****************************************/
    0x00,           // Information
    0x00,           // ID
    0x1C, 0x00,     // First Character
    0x7F, 0x00,     // Last Character
    0x0E,           // Height
    0x00,           // Reserved
/****************************************
 * Font Glyph Table
 ****************************************/
    0x07, 0x98, 0x01, 0x00,           // width, MSB Offset, LSB offset
    0x07, 0xA6, 0x01, 0x00,           // width, MSB Offset, LSB offset
    0x09, 0xB4, 0x01, 0x00,           // width, MSB Offset, LSB offset
    0x09, 0xD0, 0x01, 0x00,           // width, MSB Offset, LSB offset
    0x02, 0xEC, 0x01, 0x00,           // width, MSB Offset, LSB offset
    0x03, 0xFA, 0x01, 0x00,           // width, MSB Offset, LSB offset
    0x05, 0x08, 0x02, 0x00,           // width, MSB Offset, LSB offset
    0x05, 0x16, 0x02, 0x00,           // width, MSB Offset, LSB offset
    0x06, 0x24, 0x02, 0x00,           // width, MSB Offset, LSB offset
    0x08, 0x32, 0x02, 0x00,           // width, MSB Offset, LSB offset
    0x07, 0x40, 0x02, 0x00,           // width, MSB Offset, LSB offset
    0x03, 0x4E, 0x02, 0x00,           // width, MSB Offset, LSB offset
    0x03, 0x5C, 0x02, 0x00,           // width, MSB Offset, LSB offset
    0x03, 0x6A, 0x02, 0x00,           // width, MSB Offset, LSB offset
    0x05, 0x78, 0x02, 0x00,           // width, MSB Offset, LSB offset
    0x05, 0x86, 0x02, 0x00,           // width, MSB Offset, LSB offset
    0x03, 0x94, 0x02, 0x00,           // width, MSB Offset, LSB offset
    0x04, 0xA2, 0x02, 0x00,           // width, MSB Offset, LSB offset
    0x03, 0xB0, 0x02, 0x00,           // width, MSB Offset, LSB offset
    0x05, 0xBE, 0x02, 0x00,           // width, MSB Offset, LSB offset
    0x05, 0xCC, 0x02, 0x00,           // width, MSB Offset, LSB offset
    0x05, 0xDA, 0x02, 0x00,           // width, MSB Offset, LSB offset
    0x06, 0xE8, 0x02, 0x00,           // width, MSB Offset, LSB offset
    0x05, 0xF6, 0x02, 0x00,           // width, MSB Offset, LSB offset
    0x05, 0x04, 0x03, 0x00,           // width, MSB Offset, LSB offset
    0x05, 0x12, 0x03, 0x00,           // width, MSB Offset, LSB offset
    0x05, 0x20, 0x03, 0x00,           // width, MSB Offset, LSB offset
    0x05, 0x2E, 0x03, 0x00,           // width, MSB Offset, LSB offset
    0x05, 0x3C, 0x03, 0x00,           // width, MSB Offset, LSB offset
    0x05, 0x4A, 0x03, 0x00,           // width, MSB Offset, LSB offset
    0x03, 0x58, 0x03, 0x00,           // width, MSB Offset, LSB offset
    0x03, 0x66, 0x03, 0x00,           // width, MSB Offset, LSB offset
    0x05, 0x74, 0x03, 0x00,           // width, MSB Offset, LSB offset
    0x05, 0x82, 0x03, 0x00,           // width, MSB Offset, LSB offset
    0x05, 0x90, 0x03, 0x00,           // width, MSB Offset, LSB offset
    0x05, 0x9E, 0x03, 0x00,           // width, MSB Offset, LSB offset
    0x0A, 0xAC, 0x03, 0x00,           // width, MSB Offset, LSB offset
    0x07, 0xC8, 0x03, 0x00,           // width, MSB Offset, LSB offset
    0x07, 0xD6, 0x03, 0x00,           // width, MSB Offset, LSB offset
    0x06, 0xE4, 0x03, 0x00,           // width, MSB Offset, LSB offset
    0x07, 0xF2, 0x03, 0x00,           // width, MSB Offset, LSB offset
    0x05, 0x00, 0x04, 0x00,           // width, MSB Offset, LSB offset
    0x05, 0x0E, 0x04, 0x00,           // width, MSB Offset, LSB offset
    0x06, 0x1C, 0x04, 0x00,           // width, MSB Offset, LSB offset
    0x07, 0x2A, 0x04, 0x00,           // width, MSB Offset, LSB offset
    0x03, 0x38, 0x04, 0x00,           // width, MSB Offset, LSB offset
    0x03, 0x46, 0x04, 0x00,           // width, MSB Offset, LSB offset
    0x06, 0x54, 0x04, 0x00,           // width, MSB Offset, LSB offset
    0x05, 0x62, 0x04, 0x00,           // width, MSB Offset, LSB offset
    0x09, 0x70, 0x04, 0x00,           // width, MSB Offset, LSB offset
    0x07, 0x8C, 0x04, 0x00,           // width, MSB Offset, LSB offset
    0x07, 0x9A, 0x04, 0x00,           // width, MSB Offset, LSB offset
    0x06, 0xA8, 0x04, 0x00,           // width, MSB Offset, LSB offset
    0x07, 0xB6, 0x04, 0x00,           // width, MSB Offset, LSB offset
    0x06, 0xC4, 0x04, 0x00,           // width, MSB Offset, LSB offset
    0x05, 0xD2, 0x04, 0x00,           // width, MSB Offset, LSB offset
    0x06, 0xE0, 0x04, 0x00,           // width, MSB Offset, LSB offset
    0x07, 0xEE, 0x04, 0x00,           // width, MSB Offset, LSB offset
    0x07, 0xFC, 0x04, 0x00,           // width, MSB Offset, LSB offset
    0x09, 0x0A, 0x05, 0x00,           // width, MSB Offset, LSB offset
    0x07, 0x26, 0x05, 0x00,           // width, MSB Offset, LSB offset
    0x07, 0x34, 0x05, 0x00,           // width, MSB Offset, LSB offset
    0x06, 0x42, 0x05, 0x00,           // width, MSB Offset, LSB offset
    0x03, 0x50, 0x05, 0x00,           // width, MSB Offset, LSB offset
    0x05, 0x5E, 0x05, 0x00,           // width, MSB Offset, LSB offset
    0x04, 0x6C, 0x05, 0x00,           // width, MSB Offset, LSB offset
    0x05, 0x7A, 0x05, 0x00,           // width, MSB Offset, LSB offset
    0x05, 0x88, 0x05, 0x00,           // width, MSB Offset, LSB offset
    0x04, 0x96, 0x05, 0x00,           // width, MSB Offset, LSB offset
    0x05, 0xA4, 0x05, 0x00,           // width, MSB Offset, LSB offset
    0x06, 0xB2, 0x05, 0x00,           // width, MSB Offset, LSB offset
    0x05, 0xC0, 0x05, 0x00,           // width, MSB Offset, LSB offset
    0x06, 0xCE, 0x05, 0x00,           // width, MSB Offset, LSB offset
    0x05, 0xDC, 0x05, 0x00,           // width, MSB Offset, LSB offset
    0x03, 0xEA, 0x05, 0x00,           // width, MSB Offset, LSB offset
    0x06, 0xF8, 0x05, 0x00,           // width, MSB Offset, LSB offset
    0x06, 0x06, 0x06, 0x00,           // width, MSB Offset, LSB offset
    0x03, 0x14, 0x06, 0x00,           // width, MSB Offset, LSB offset
    0x03, 0x22, 0x06, 0x00,           // width, MSB Offset, LSB offset
    0x06, 0x30, 0x06, 0x00,           // width, MSB Offset, LSB offset
    0x03, 0x3E, 0x06, 0x00,           // width, MSB Offset, LSB offset
    0x09, 0x4C, 0x06, 0x00,           // width, MSB Offset, LSB offset
    0x06, 0x68, 0x06, 0x00,           // width, MSB Offset, LSB offset
    0x06, 0x76, 0x06, 0x00,           // width, MSB Offset, LSB offset
    0x06, 0x84, 0x06, 0x00,           // width, MSB Offset, LSB offset
    0x06, 0x92, 0x06, 0x00,           // width, MSB Offset, LSB offset
    0x04, 0xA0, 0x06, 0x00,           // width, MSB Offset, LSB offset
    0x04, 0xAE, 0x06, 0x00,           // width, MSB Offset, LSB offset
    0x04, 0xBC, 0x06, 0x00,           // width, MSB Offset, LSB offset
    0x06, 0xCA, 0x06, 0x00,           // width, MSB Offset, LSB offset
    0x05, 0xD8, 0x06, 0x00,           // width, MSB Offset, LSB offset
    0x08, 0xE6, 0x06, 0x00,           // width, MSB Offset, LSB offset
    0x06, 0xF4, 0x06, 0x00,           // width, MSB Offset, LSB offset
    0x05, 0x02, 0x07, 0x00,           // width, MSB Offset, LSB offset
    0x05, 0x10, 0x07, 0x00,           // width, MSB Offset, LSB offset
    0x04, 0x1E, 0x07, 0x00,           // width, MSB Offset, LSB offset
    0x03, 0x2C, 0x07, 0x00,           // width, MSB Offset, LSB offset
    0x05, 0x3A, 0x07, 0x00,           // width, MSB Offset, LSB offset
    0x05, 0x48, 0x07, 0x00,           // width, MSB Offset, LSB offset
    0x02, 0x56, 0x07, 0x00,           // width, MSB Offset, LSB offset
/***********************************
 * Font Characters
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x30,         //     **  
    0x38,         //    ***  
    0x0C,         //   **    
    0x06,         //  **     
    0x02,         //  *      
    0x06,         //  **     
    0x0C,         //   **    
    0x38,         //    ***  
    0x30,         //     **  
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x06,         //  **     
    0x0E,         //  ***    
    0x18,         //    **   
    0x30,         //     **  
    0x20,         //      *  
    0x30,         //     **  
    0x18,         //    **   
    0x0E,         //  ***    
    0x06,         //  **     
    0x00,         //         
    0x00,         //         

    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x10, 0x00,         //     *           
    0x10, 0x00,         //     *           
    0x38, 0x00,         //    ***          
    0x6C, 0x00,         //   ** **         
    0x44, 0x00,         //   *   *         
    0xC6, 0x00,         //  **   **        
    0xC6, 0x00,         //  **   **        
    0xC6, 0x00,         //  **   **        
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xC6, 0x00,         //  **   **        
    0xC6, 0x00,         //  **   **        
    0xC6, 0x00,         //  **   **        
    0x44, 0x00,         //   *   *         
    0x6C, 0x00,         //   ** **         
    0x38, 0x00,         //    ***          
    0x10, 0x00,         //     *           
    0x10, 0x00,         //     *           
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x00,         //         
    0x02,         //  *      
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x0A,         //  * *    
    0x0A,         //  * *    
    0x0A,         //  * *    
    0x0A,         //  * *    
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x14,         //   * *   
    0x0C,         //   **    
    0x1E,         //  ****   
    0x0A,         //  * *    
    0x1E,         //  ****   
    0x07,         // ***     
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x0E,         //  ***    
    0x1D,         // * ***   
    0x05,         // * *     
    0x06,         //  **     
    0x1C,         //   ***   
    0x15,         // * * *   
    0x0E,         //  ***    
    0x04,         //   *     
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x66,         //  **  ** 
    0x29,         // *  * *  
    0x19,         // *  **   
    0x6E,         //  *** ** 
    0x54,         //   * * * 
    0x54,         //   * * * 
    0x62,         //  *   ** 
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x18,         //    **   
    0x14,         //   * *   
    0x14,         //   * *   
    0x7C,         //   ***** 
    0x2F,         // **** *  
    0x39,         // *  ***  
    0x11,         // *   *   
    0x6E,         //  *** ** 
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x04,         //   *     
    0x04,         //   *     
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x04,         //   *     
    0x04,         //   *     
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x02,         //  *      
    0x02,         //  *      
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x02,         //  *      
    0x02,         //  *      
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x04,         //   *     
    0x1F,         // *****   
    0x0E,         //  ***    
    0x05,         // * *     
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x04,         //   *     
    0x1F,         // *****   
    0x04,         //   *     
    0x04,         //   *     
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x07,         // ***     
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x02,         //  *      
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x10,         //     *   
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x01,         // *       
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x06,         //  **     
    0x09,         // *  *    
    0x09,         // *  *    
    0x09,         // *  *    
    0x09,         // *  *    
    0x09,         // *  *    
    0x06,         //  **     
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x04,         //   *     
    0x07,         // ***     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x0E,         //  ***    
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x18,         //    **   
    0x16,         //  ** *   
    0x10,         //     *   
    0x08,         //    *    
    0x04,         //   *     
    0x12,         //  *  *   
    0x1E,         //  ****   
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x0C,         //   **    
    0x0A,         //  * *    
    0x08,         //    *    
    0x0C,         //   **    
    0x10,         //     *   
    0x10,         //     *   
    0x0E,         //  ***    
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x08,         //    *    
    0x0C,         //   **    
    0x0A,         //  * *    
    0x09,         // *  *    
    0x1F,         // *****   
    0x08,         //    *    
    0x1C,         //   ***   
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x1C,         //   ***   
    0x02,         //  *      
    0x02,         //  *      
    0x1E,         //  ****   
    0x10,         //     *   
    0x10,         //     *   
    0x0E,         //  ***    
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x18,         //    **   
    0x04,         //   *     
    0x02,         //  *      
    0x0E,         //  ***    
    0x0A,         //  * *    
    0x0A,         //  * *    
    0x04,         //   *     
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x1E,         //  ****   
    0x0A,         //  * *    
    0x08,         //    *    
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x02,         //  *      
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x0F,         // ****    
    0x09,         // *  *    
    0x09,         // *  *    
    0x0F,         // ****    
    0x09,         // *  *    
    0x09,         // *  *    
    0x06,         //  **     
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x04,         //   *     
    0x0A,         //  * *    
    0x0A,         //  * *    
    0x0A,         //  * *    
    0x0E,         //  ***    
    0x04,         //   *     
    0x03,         // **      
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x02,         //  *      
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x02,         //  *      
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x02,         //  *      
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x18,         //    **   
    0x06,         //  **     
    0x03,         // **      
    0x1C,         //   ***   
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x1F,         // *****   
    0x0F,         // ****    
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x03,         // **      
    0x0C,         //   **    
    0x1C,         //   ***   
    0x03,         // **      
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x06,         //  **     
    0x09,         // *  *    
    0x09,         // *  *    
    0x08,         //    *    
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x78, 0x00,         //    ****         
    0x86, 0x00,         //  **    *        
    0x39, 0x01,         // *  ***  *       
    0x25, 0x01,         // * *  *  *       
    0x25, 0x01,         // * *  *  *       
    0x25, 0x01,         // * *  *  *       
    0xFB, 0x00,         // ** *****        
    0x86, 0x00,         //  **    *        
    0x7C, 0x00,         //   *****         
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x08,         //    *    
    0x0C,         //   **    
    0x0C,         //   **    
    0x12,         //  *  *   
    0x1E,         //  ****   
    0x12,         //  *  *   
    0x33,         // **  **  
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x1F,         // *****   
    0x12,         //  *  *   
    0x12,         //  *  *   
    0x1E,         //  ****   
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x1F,         // *****   
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x1E,         //  ****   
    0x01,         // *       
    0x01,         // *       
    0x01,         // *       
    0x01,         // *       
    0x13,         // **  *   
    0x0E,         //  ***    
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x1F,         // *****   
    0x32,         //  *  **  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x12,         //  *  *   
    0x1F,         // *****   
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x1F,         // *****   
    0x12,         //  *  *   
    0x02,         //  *      
    0x0E,         //  ***    
    0x02,         //  *      
    0x12,         //  *  *   
    0x1F,         // *****   
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x1F,         // *****   
    0x12,         //  *  *   
    0x02,         //  *      
    0x0E,         //  ***    
    0x02,         //  *      
    0x02,         //  *      
    0x07,         // ***     
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x1C,         //   ***   
    0x03,         // **      
    0x01,         // *       
    0x39,         // *  ***  
    0x11,         // *   *   
    0x11,         // *   *   
    0x0E,         //  ***    
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x77,         // *** *** 
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x3E,         //  *****  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x77,         // *** *** 
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x07,         // ***     
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x07,         // ***     
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x07,         // ***     
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x01,         // *       
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x37,         // *** **  
    0x0A,         //  * *    
    0x06,         //  **     
    0x06,         //  **     
    0x0A,         //  * *    
    0x12,         //  *  *   
    0x37,         // *** **  
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x07,         // ***     
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x12,         //  *  *   
    0x1F,         // *****   
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xC3, 0x00,         // **    **        
    0xC6, 0x00,         //  **   **        
    0xA6, 0x00,         //  **  * *        
    0xAA, 0x00,         //  * * * *        
    0x9A, 0x00,         //  * **  *        
    0x92, 0x00,         //  *  *  *        
    0xD3, 0x00,         // **  * **        
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x73,         // **  *** 
    0x22,         //  *   *  
    0x26,         //  **  *  
    0x2A,         //  * * *  
    0x2A,         //  * * *  
    0x32,         //  *  **  
    0x27,         // ***  *  
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x1C,         //   ***   
    0x33,         // **  **  
    0x21,         // *    *  
    0x21,         // *    *  
    0x21,         // *    *  
    0x13,         // **  *   
    0x0E,         //  ***    
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x0F,         // ****    
    0x12,         //  *  *   
    0x12,         //  *  *   
    0x0E,         //  ***    
    0x02,         //  *      
    0x02,         //  *      
    0x07,         // ***     
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x1C,         //   ***   
    0x33,         // **  **  
    0x21,         // *    *  
    0x21,         // *    *  
    0x21,         // *    *  
    0x13,         // **  *   
    0x0E,         //  ***    
    0x10,         //     *   
    0x60,         //      ** 
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x0F,         // ****    
    0x12,         //  *  *   
    0x12,         //  *  *   
    0x0E,         //  ***    
    0x0A,         //  * *    
    0x0A,         //  * *    
    0x37,         // *** **  
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x06,         //  **     
    0x06,         //  **     
    0x02,         //  *      
    0x04,         //   *     
    0x08,         //    *    
    0x0A,         //  * *    
    0x06,         //  **     
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x1F,         // *****   
    0x15,         // * * *   
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x0E,         //  ***    
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x77,         // *** *** 
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x1C,         //   ***   
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x63,         // **   ** 
    0x22,         //  *   *  
    0x12,         //  *  *   
    0x14,         //   * *   
    0x14,         //   * *   
    0x08,         //    *    
    0x08,         //    *    
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x93, 0x01,         // **  *  **       
    0x92, 0x00,         //  *  *  *        
    0xAA, 0x00,         //  * * * *        
    0xAA, 0x00,         //  * * * *        
    0xAA, 0x00,         //  * * * *        
    0x44, 0x00,         //   *   *         
    0x44, 0x00,         //   *   *         
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x37,         // *** **  
    0x12,         //  *  *   
    0x0C,         //   **    
    0x08,         //    *    
    0x14,         //   * *   
    0x22,         //  *   *  
    0x77,         // *** *** 
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x63,         // **   ** 
    0x14,         //   * *   
    0x14,         //   * *   
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x1C,         //   ***   
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x1E,         //  ****   
    0x09,         // *  *    
    0x08,         //    *    
    0x04,         //   *     
    0x02,         //  *      
    0x12,         //  *  *   
    0x1F,         // *****   
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x06,         //  **     
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x06,         //  **     
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x01,         // *       
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x10,         //     *   
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x07,         // ***     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x07,         // ***     
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x04,         //   *     
    0x0A,         //  * *    
    0x0A,         //  * *    
    0x0A,         //  * *    
    0x12,         //  *  *   
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x1F,         // *****   
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x03,         // **      
    0x02,         //  *      
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x0E,         //  ***    
    0x09,         // *  *    
    0x0E,         //  ***    
    0x09,         // *  *    
    0x1F,         // *****   
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x03,         // **      
    0x02,         //  *      
    0x02,         //  *      
    0x0E,         //  ***    
    0x12,         //  *  *   
    0x12,         //  *  *   
    0x12,         //  *  *   
    0x0E,         //  ***    
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x0E,         //  ***    
    0x09,         // *  *    
    0x01,         // *       
    0x09,         // *  *    
    0x06,         //  **     
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x18,         //    **   
    0x10,         //     *   
    0x10,         //     *   
    0x1E,         //  ****   
    0x11,         // *   *   
    0x11,         // *   *   
    0x11,         // *   *   
    0x3E,         //  *****  
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x0E,         //  ***    
    0x09,         // *  *    
    0x0F,         // ****    
    0x09,         // *  *    
    0x06,         //  **     
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x04,         //   *     
    0x02,         //  *      
    0x02,         //  *      
    0x07,         // ***     
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x07,         // ***     
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x3E,         //  *****  
    0x11,         // *   *   
    0x11,         // *   *   
    0x0E,         //  ***    
    0x02,         //  *      
    0x3D,         // * ****  
    0x21,         // *    *  
    0x1E,         //  ****   
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x03,         // **      
    0x02,         //  *      
    0x02,         //  *      
    0x1A,         //  * **   
    0x16,         //  ** *   
    0x12,         //  *  *   
    0x12,         //  *  *   
    0x3F,         // ******  
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x02,         //  *      
    0x00,         //         
    0x03,         // **      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x07,         // ***     
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x02,         //  *      
    0x00,         //         
    0x03,         // **      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x01,         // *       
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x03,         // **      
    0x02,         //  *      
    0x02,         //  *      
    0x1A,         //  * **   
    0x06,         //  **     
    0x06,         //  **     
    0x0A,         //  * *    
    0x37,         // *** **  
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x03,         // **      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x07,         // ***     
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xDA, 0x00,         //  * ** **        
    0xB7, 0x00,         // *** ** *        
    0x92, 0x00,         //  *  *  *        
    0x92, 0x00,         //  *  *  *        
    0xFF, 0x01,         // *********       
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x1A,         //  * **   
    0x17,         // *** *   
    0x12,         //  *  *   
    0x12,         //  *  *   
    0x3F,         // ******  
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x0E,         //  ***    
    0x11,         // *   *   
    0x11,         // *   *   
    0x11,         // *   *   
    0x0E,         //  ***    
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x1B,         // ** **   
    0x16,         //  ** *   
    0x12,         //  *  *   
    0x12,         //  *  *   
    0x0E,         //  ***    
    0x02,         //  *      
    0x02,         //  *      
    0x07,         // ***     
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x1E,         //  ****   
    0x11,         // *   *   
    0x11,         // *   *   
    0x11,         // *   *   
    0x1E,         //  ****   
    0x10,         //     *   
    0x10,         //     *   
    0x38,         //    ***  
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x0B,         // ** *    
    0x06,         //  **     
    0x02,         //  *      
    0x02,         //  *      
    0x07,         // ***     
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x02,         //  *      
    0x06,         //  **     
    0x04,         //   *     
    0x06,         //  **     
    0x06,         //  **     
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x02,         //  *      
    0x02,         //  *      
    0x0F,         // ****    
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x0E,         //  ***    
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x1B,         // ** **   
    0x12,         //  *  *   
    0x12,         //  *  *   
    0x12,         //  *  *   
    0x3E,         //  *****  
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x13,         // **  *   
    0x0A,         //  * *    
    0x0A,         //  * *    
    0x0C,         //   **    
    0x04,         //   *     
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0xCB,         // ** *  **
    0x5A,         //  * ** * 
    0x5A,         //  * ** * 
    0x36,         //  ** **  
    0x26,         //  **  *  
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x1B,         // ** **   
    0x0A,         //  * *    
    0x04,         //   *     
    0x0A,         //  * *    
    0x1B,         // ** **   
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x13,         // **  *   
    0x0A,         //  * *    
    0x0A,         //  * *    
    0x0C,         //   **    
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x03,         // **      
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x0E,         //  ***    
    0x05,         // * *     
    0x04,         //   *     
    0x0A,         //  * *    
    0x0F,         // ****    
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x08,         //    *    
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x02,         //  *      
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x08,         //    *    
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x02,         //  *      
    0x04,         //   *     
    0x04,         //   *     
    0x02,         //  *      
    0x02,         //  *      
    0x04,         //   *     
    0x02,         //  *      
    0x02,         //  *      
    0x04,         //   *     
    0x04,         //   *     
    0x02,         //  *      
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x16,         //  ** *   
    0x0D,         // * **    
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x00,         //         
    0x00,         //         
    0x00,         //         

};

/*****************************************************************************
 * SECTION:  BITMAPS
 *****************************************************************************/

/*********************************
 * Bitmap Structure
 * Label: snakeBody
 * Description:  8x8 pixels, 1-bits per pixel
 ***********************************/
asm(".section .const, psv");

extern const char __snakeBody[] __attribute__((space(prog), aligned(2)));

const IMAGE_FLASH snakeBody =
{
    (FLASH | IMAGE_MBITMAP | COMP_NONE),
    (FLASH_BYTE *)__snakeBody
};
asm(".section *, code");
asm(".global ___snakeBody");
asm(".align 2");
asm("___snakeBody:");
/****************************************
 * Bitmap header
 ****************************************/
asm(".byte 0x00");           // Compresssion
asm(".byte 0x01");           // Color Depth
asm(".byte 0x08, 0x00");     // Height
asm(".byte 0x08, 0x00");     // Width
/***********************************
 * Color Palette for the image
 **********************************/
asm(".byte 0x00, 0x00");
asm(".byte 0xFF, 0xFF");
/********************************
 * Bitmap Image Body
 *********************************/
asm(".byte 0x7E, 0xC3, 0x81, 0x81, 0x81, 0x81, 0xC3, 0x7E");
asm(".section .const, psv");

/*********************************
 * Bitmap Structure
 * Label: snakeFood
 * Description:  8x8 pixels, 1-bits per pixel
 ***********************************/
asm(".section .const, psv");

extern const char __snakeFood[] __attribute__((space(prog), aligned(2)));

const IMAGE_FLASH snakeFood =
{
    (FLASH | IMAGE_MBITMAP | COMP_NONE),
    (FLASH_BYTE *)__snakeFood
};
asm(".section *, code");
asm(".global ___snakeFood");
asm(".align 2");
asm("___snakeFood:");
/****************************************
 * Bitmap header
 ****************************************/
asm(".byte 0x00");           // Compresssion
asm(".byte 0x01");           // Color Depth
asm(".byte 0x08, 0x00");     // Height
asm(".byte 0x08, 0x00");     // Width
/***********************************
 * Color Palette for the image
 **********************************/
asm(".byte 0x00, 0x00");
asm(".byte 0xFF, 0xFF");
/********************************
 * Bitmap Image Body
 *********************************/
asm(".byte 0x00, 0x00, 0x04, 0x42, 0xFC, 0x38, 0x44, 0x00");
asm(".section .const, psv");

/*********************************
 * Bitmap Structure
 * Label: snakeHead
 * Description:  8x8 pixels, 1-bits per pixel
 ***********************************/
asm(".section .const, psv");

extern const char __snakeHead[] __attribute__((space(prog), aligned(2)));

const IMAGE_FLASH snakeHead =
{
    (FLASH | IMAGE_MBITMAP | COMP_NONE),
    (FLASH_BYTE *)__snakeHead
};
asm(".section *, code");
asm(".global ___snakeHead");
asm(".align 2");
asm("___snakeHead:");
/****************************************
 * Bitmap header
 ****************************************/
asm(".byte 0x00");           // Compresssion
asm(".byte 0x01");           // Color Depth
asm(".byte 0x08, 0x00");     // Height
asm(".byte 0x08, 0x00");     // Width
/***********************************
 * Color Palette for the image
 **********************************/
asm(".byte 0x00, 0x00");
asm(".byte 0xFF, 0xFF");
/********************************
 * Bitmap Image Body
 *********************************/
asm(".byte 0x7E, 0xC3, 0xA5, 0xA5, 0x81, 0x99, 0xC3, 0x7E");
asm(".section .const, psv");

/*********************************
 * Bitmap Structure
 * Label: ballCircle
 * Description:  8x8 pixels, 1-bits per pixel
 ***********************************/
asm(".section .const, psv");

extern const char __ballCircle[] __attribute__((space(prog), aligned(2)));

const IMAGE_FLASH ballCircle =
{
    (FLASH | IMAGE_MBITMAP | COMP_NONE),
    (FLASH_BYTE *)__ballCircle
};
asm(".section *, code");
asm(".global ___ballCircle");
asm(".align 2");
asm("___ballCircle:");
/****************************************
 * Bitmap header
 ****************************************/
asm(".byte 0x00");           // Compresssion
asm(".byte 0x01");           // Color Depth
asm(".byte 0x08, 0x00");     // Height
asm(".byte 0x08, 0x00");     // Width
/***********************************
 * Color Palette for the image
 **********************************/
asm(".byte 0x00, 0x00");
asm(".byte 0xFF, 0xFF");
/********************************
 * Bitmap Image Body
 *********************************/
asm(".byte 0x00, 0x18, 0x3C, 0x7E, 0x7E, 0x3C, 0x18, 0x00");
asm(".section .const, psv");

/*********************************
 * Bitmap Structure
 * Label: ballCross
 * Description:  8x8 pixels, 1-bits per pixel
 ***********************************/
asm(".section .const, psv");

extern const char __ballCross[] __attribute__((space(prog), aligned(2)));

const IMAGE_FLASH ballCross =
{
    (FLASH | IMAGE_MBITMAP | COMP_NONE),
    (FLASH_BYTE *)__ballCross
};
asm(".section *, code");
asm(".global ___ballCross");
asm(".align 2");
asm("___ballCross:");
/****************************************
 * Bitmap header
 ****************************************/
asm(".byte 0x00");           // Compresssion
asm(".byte 0x01");           // Color Depth
asm(".byte 0x08, 0x00");     // Height
asm(".byte 0x08, 0x00");     // Width
/***********************************
 * Color Palette for the image
 **********************************/
asm(".byte 0x00, 0x00");
asm(".byte 0xFF, 0xFF");
/********************************
 * Bitmap Image Body
 *********************************/
asm(".byte 0x00, 0x18, 0x18, 0x7E, 0x7E, 0x18, 0x18, 0x00");
asm(".section .const, psv");

/*********************************
 * Bitmap Structure
 * Label: ballMarking
 * Description:  8x8 pixels, 1-bits per pixel
 ***********************************/
asm(".section .const, psv");

extern const char __ballMarking[] __attribute__((space(prog), aligned(2)));

const IMAGE_FLASH ballMarking =
{
    (FLASH | IMAGE_MBITMAP | COMP_NONE),
    (FLASH_BYTE *)__ballMarking
};
asm(".section *, code");
asm(".global ___ballMarking");
asm(".align 2");
asm("___ballMarking:");
/****************************************
 * Bitmap header
 ****************************************/
asm(".byte 0x00");           // Compresssion
asm(".byte 0x01");           // Color Depth
asm(".byte 0x08, 0x00");     // Height
asm(".byte 0x08, 0x00");     // Width
/***********************************
 * Color Palette for the image
 **********************************/
asm(".byte 0x00, 0x00");
asm(".byte 0xFF, 0xFF");
/********************************
 * Bitmap Image Body
 *********************************/
asm(".byte 0xFF, 0xE7, 0xC3, 0x81, 0x81, 0xC3, 0xE7, 0xFF");
asm(".section .const, psv");

/*********************************
 * Bitmap Structure
 * Label: ballSquare
 * Description:  8x8 pixels, 1-bits per pixel
 ***********************************/
asm(".section .const, psv");

extern const char __ballSquare[] __attribute__((space(prog), aligned(2)));

const IMAGE_FLASH ballSquare =
{
    (FLASH | IMAGE_MBITMAP | COMP_NONE),
    (FLASH_BYTE *)__ballSquare
};
asm(".section *, code");
asm(".global ___ballSquare");
asm(".align 2");
asm("___ballSquare:");
/****************************************
 * Bitmap header
 ****************************************/
asm(".byte 0x00");           // Compresssion
asm(".byte 0x01");           // Color Depth
asm(".byte 0x08, 0x00");     // Height
asm(".byte 0x08, 0x00");     // Width
/***********************************
 * Color Palette for the image
 **********************************/
asm(".byte 0x00, 0x00");
asm(".byte 0xFF, 0xFF");
/********************************
 * Bitmap Image Body
 *********************************/
asm(".byte 0x00, 0x7E, 0x7E, 0x7E, 0x7E, 0x7E, 0x7E, 0x00");
asm(".section .const, psv");

/*********************************
 * Bitmap Structure
 * Label: ballTriangle
 * Description:  8x8 pixels, 1-bits per pixel
 ***********************************/
asm(".section .const, psv");

extern const char __ballTriangle[] __attribute__((space(prog), aligned(2)));

const IMAGE_FLASH ballTriangle =
{
    (FLASH | IMAGE_MBITMAP | COMP_NONE),
    (FLASH_BYTE *)__ballTriangle
};
asm(".section *, code");
asm(".global ___ballTriangle");
asm(".align 2");
asm("___ballTriangle:");
/****************************************
 * Bitmap header
 ****************************************/
asm(".byte 0x00");           // Compresssion
asm(".byte 0x01");           // Color Depth
asm(".byte 0x08, 0x00");     // Height
asm(".byte 0x08, 0x00");     // Width
/***********************************
 * Color Palette for the image
 **********************************/
asm(".byte 0x00, 0x00");
asm(".byte 0xFF, 0xFF");
/********************************
 * Bitmap Image Body
 *********************************/
asm(".byte 0x00, 0x18, 0x18, 0x3C, 0x3C, 0x7E, 0x7E, 0x00");
asm(".section .const, psv");

/*********************************
 * Bitmap Structure
 * Label: iconFolderSmall
 * Description:  12x10 pixels, 1-bits per pixel
 ***********************************/
asm(".section .const, psv");

extern const char __iconFolderSmall[] __attribute__((space(prog), aligned(2)));

const IMAGE_FLASH iconFolderSmall =
{
    (FLASH | IMAGE_MBITMAP | COMP_NONE),
    (FLASH_BYTE *)__iconFolderSmall
};
asm(".section *, code");
asm(".global ___iconFolderSmall");
asm(".align 2");
asm("___iconFolderSmall:");
/****************************************
 * Bitmap header
 ****************************************/
asm(".byte 0x00");           // Compresssion
asm(".byte 0x01");           // Color Depth
asm(".byte 0x0A, 0x00");     // Height
asm(".byte 0x0C, 0x00");     // Width
/***********************************
 * Color Palette for the image
 **********************************/
asm(".byte 0x00, 0x00");
asm(".byte 0xFF, 0xFF");
/********************************
 * Bitmap Image Body
 *********************************/
asm(".byte 0x00, 0x00, 0x38, 0x00, 0x44, 0x00, 0x83, 0xF0, 0x80, 0x10, 0x80, 0x10, 0x80, 0x30, 0x80, 0x50");
asm(".byte 0x80, 0xB0, 0xFF, 0xF0");
asm(".section .const, psv");

/*********************************
 * Bitmap Structure
 * Label: iconMicrochip
 * Description:  16x16 pixels, 1-bits per pixel
 ***********************************/
asm(".section .const, psv");

extern const char __iconMicrochip[] __attribute__((space(prog), aligned(2)));

const IMAGE_FLASH iconMicrochip =
{
    (FLASH | IMAGE_MBITMAP | COMP_NONE),
    (FLASH_BYTE *)__iconMicrochip
};
asm(".section *, code");
asm(".global ___iconMicrochip");
asm(".align 2");
asm("___iconMicrochip:");
/****************************************
 * Bitmap header
 ****************************************/
asm(".byte 0x00");           // Compresssion
asm(".byte 0x01");           // Color Depth
asm(".byte 0x10, 0x00");     // Height
asm(".byte 0x10, 0x00");     // Width
/***********************************
 * Color Palette for the image
 **********************************/
asm(".byte 0x00, 0x00");
asm(".byte 0xFF, 0xFF");
/********************************
 * Bitmap Image Body
 *********************************/
asm(".byte 0x03, 0xC0, 0x1F, 0xF0, 0x3F, 0xF8, 0x7F, 0xF8, 0x7B, 0xDC, 0xF1, 0x8C, 0xF1, 0xC6, 0xD8, 0xC7");
asm(".byte 0xD8, 0x63, 0x8C, 0x61, 0x0E, 0x30, 0x1E, 0x78, 0x3F, 0xF8, 0x3F, 0xFC, 0x1F, 0xF8, 0x03, 0xC0");
asm(".section .const, psv");

/*********************************
 * Bitmap Structure
 * Label: intro
 * Description:  128x64 pixels, 1-bits per pixel
 ***********************************/
asm(".section .const, psv");

extern const char __intro[] __attribute__((space(prog), aligned(2)));

const IMAGE_FLASH intro =
{
    (FLASH | IMAGE_MBITMAP | COMP_NONE),
    (FLASH_BYTE *)__intro
};
asm(".section *, code");
asm(".global ___intro");
asm(".align 2");
asm("___intro:");
/****************************************
 * Bitmap header
 ****************************************/
asm(".byte 0x00");           // Compresssion
asm(".byte 0x01");           // Color Depth
asm(".byte 0x40, 0x00");     // Height
asm(".byte 0x80, 0x00");     // Width
/***********************************
 * Color Palette for the image
 **********************************/
asm(".byte 0x00, 0x00");
asm(".byte 0xFF, 0xFF");
/********************************
 * Bitmap Image Body
 *********************************/
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xF0, 0x0F, 0xC1, 0xF8, 0x18, 0x1F, 0xE0, 0xE0, 0x0F, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xF0, 0x03, 0xC1, 0xE0, 0x18, 0x07, 0xE0, 0xE0, 0x0F, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xF0, 0x00, 0xC1, 0xC0, 0x18, 0x03, 0xE0, 0xE0, 0x0F, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xF0, 0x00, 0xC1, 0x80, 0x18, 0x03, 0xE0, 0xE0, 0x0F, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xF0, 0x00, 0x41, 0x80, 0x18, 0x03, 0x00, 0xE0, 0x0F, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xF0, 0x00, 0x41, 0x00, 0x18, 0x03, 0x00, 0xE0, 0x0F, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xF0, 0x70, 0x41, 0x00, 0x1F, 0x03, 0x00, 0xE0, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xF0, 0x70, 0x41, 0x01, 0xFF, 0x07, 0x00, 0xE0, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xF0, 0x70, 0x41, 0x03, 0xFF, 0x07, 0x00, 0xE0, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xF0, 0x60, 0xC1, 0x07, 0xFF, 0x0E, 0x20, 0xE0, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xF0, 0x00, 0xC1, 0x07, 0xFE, 0x1E, 0x20, 0xE0, 0x1F, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xF0, 0x03, 0xC1, 0x87, 0xFE, 0x3E, 0x00, 0x00, 0x3F, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xF0, 0x0F, 0xC1, 0x81, 0xFC, 0x3C, 0x00, 0x20, 0x3F, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xF0, 0x7F, 0xC1, 0xC0, 0x1C, 0x07, 0xE0, 0xE0, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xF0, 0x7F, 0xC1, 0xE0, 0x38, 0x0F, 0xE0, 0xE0, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xF0, 0x7F, 0xC1, 0xF8, 0x38, 0x0F, 0xE0, 0xE0, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xE0, 0xC0, 0x70, 0xE0, 0x70, 0x18, 0x30, 0x3F, 0x1B, 0x8C, 0x07, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xC0, 0xC0, 0x70, 0xE0, 0x30, 0x18, 0x30, 0x1F, 0x10, 0x8C, 0x07, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xC0, 0xC0, 0x60, 0xE0, 0x10, 0x18, 0x30, 0x0F, 0x11, 0x8C, 0x07, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xC3, 0xF1, 0xE0, 0xE3, 0x1C, 0x78, 0xF1, 0x8F, 0x11, 0x8F, 0x1F, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xC3, 0xF1, 0xE0, 0x63, 0x1C, 0x78, 0xF1, 0x8F, 0x03, 0x8F, 0x1F, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xE1, 0xF1, 0xE0, 0x63, 0x1C, 0x78, 0x31, 0x8F, 0x03, 0x8F, 0x1F, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xF8, 0xF1, 0xE4, 0x60, 0x3C, 0x78, 0x30, 0x1F, 0x07, 0x8F, 0x1F, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xF8, 0xF1, 0xEC, 0x60, 0x7C, 0x78, 0xF0, 0x3F, 0x03, 0x8F, 0x1F, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xE0, 0xF1, 0xC0, 0x22, 0x3C, 0x78, 0x31, 0x1F, 0x11, 0x8F, 0x1F, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xE1, 0xF1, 0xC6, 0x23, 0x1C, 0x78, 0x31, 0x8F, 0x10, 0x8F, 0x1F, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xBF, 0xFF, 0xFF, 0xDF, 0xFB, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".section .const, psv");

/*********************************
 * Bitmap Structure
 * Label: introDevice
 * Description:  128x64 pixels, 1-bits per pixel
 ***********************************/
asm(".section .const, psv");

extern const char __introDevice[] __attribute__((space(prog), aligned(2)));

const IMAGE_FLASH introDevice =
{
    (FLASH | IMAGE_MBITMAP | COMP_NONE),
    (FLASH_BYTE *)__introDevice
};
asm(".section *, code");
asm(".global ___introDevice");
asm(".align 2");
asm("___introDevice:");
/****************************************
 * Bitmap header
 ****************************************/
asm(".byte 0x00");           // Compresssion
asm(".byte 0x01");           // Color Depth
asm(".byte 0x40, 0x00");     // Height
asm(".byte 0x80, 0x00");     // Width
/***********************************
 * Color Palette for the image
 **********************************/
asm(".byte 0x00, 0x00");
asm(".byte 0xFF, 0xFF");
/********************************
 * Bitmap Image Body
 *********************************/
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFE, 0x1F, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xF0, 0x07, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xE0, 0x03, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xC0, 0x03, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xC2, 0x11, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x87, 0x39, 0xFF");
asm(".byte 0xF0, 0x0F, 0xC1, 0xF8, 0x18, 0x1F, 0xE0, 0xE0, 0x0F, 0xFF, 0xFF, 0xFF, 0xFF, 0x87, 0x1C, 0xFF");
asm(".byte 0xF0, 0x03, 0xC1, 0xE0, 0x18, 0x07, 0xE0, 0xE0, 0x0F, 0xFF, 0xFF, 0xFF, 0xFF, 0x93, 0x9C, 0x7F");
asm(".byte 0xF0, 0x00, 0xC1, 0xC0, 0x18, 0x03, 0xE0, 0xE0, 0x0F, 0xFF, 0xFF, 0xFF, 0xFF, 0x93, 0xCE, 0x7F");
asm(".byte 0xF0, 0x00, 0xC1, 0x80, 0x18, 0x03, 0xE0, 0xE0, 0x0F, 0xFF, 0xFF, 0xFF, 0xFF, 0xB9, 0xCF, 0x7F");
asm(".byte 0xF0, 0x00, 0x41, 0x80, 0x18, 0x03, 0x00, 0xE0, 0x0F, 0xFF, 0xFF, 0xFF, 0xFF, 0xF8, 0xE7, 0xFF");
asm(".byte 0xF0, 0x00, 0x41, 0x00, 0x18, 0x03, 0x00, 0xE0, 0x0F, 0xFF, 0xFF, 0xFF, 0xFF, 0xF0, 0xC3, 0xFF");
asm(".byte 0xF0, 0x70, 0x41, 0x00, 0x1F, 0x03, 0x00, 0xE0, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xE0, 0x03, 0xFF");
asm(".byte 0xF0, 0x70, 0x41, 0x01, 0xFF, 0x07, 0x00, 0xE0, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xE0, 0x01, 0xFF");
asm(".byte 0xF0, 0x70, 0x41, 0x03, 0xFF, 0x07, 0x00, 0xE0, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xF0, 0x03, 0xFF");
asm(".byte 0xF0, 0x60, 0xC1, 0x07, 0xFF, 0x0E, 0x20, 0xE0, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFE, 0x1F, 0xFF");
asm(".byte 0xF0, 0x00, 0xC1, 0x07, 0xFE, 0x1E, 0x20, 0xE0, 0x1F, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xF0, 0x03, 0xC1, 0x87, 0xFE, 0x3E, 0x00, 0x00, 0x3F, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xF0, 0x0F, 0xC1, 0x81, 0xFC, 0x3C, 0x00, 0x20, 0x3F, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xF0, 0x7F, 0xC1, 0xC0, 0x1C, 0x07, 0xE0, 0xE0, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xF0, 0x7F, 0xC1, 0xE0, 0x38, 0x0F, 0xE0, 0xE0, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xF0, 0x7F, 0xC1, 0xF8, 0x38, 0x0F, 0xE0, 0xE0, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xE0, 0xC0, 0x70, 0xE0, 0x70, 0x18, 0x30, 0x3F, 0x1B, 0x8C, 0x07, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xC0, 0xC0, 0x70, 0xE0, 0x30, 0x18, 0x30, 0x1F, 0x10, 0x8C, 0x07, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xC0, 0xC0, 0x60, 0xE0, 0x10, 0x18, 0x30, 0x0F, 0x11, 0x8C, 0x07, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xC3, 0xF1, 0xE0, 0xE3, 0x1C, 0x78, 0xF1, 0x8F, 0x11, 0x8F, 0x1F, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xC3, 0xF1, 0xE0, 0x63, 0x1C, 0x78, 0xF1, 0x8F, 0x03, 0x8F, 0x1F, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xE1, 0xF1, 0xE0, 0x63, 0x1C, 0x78, 0x31, 0x8F, 0x03, 0x8F, 0x1F, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xF8, 0xF1, 0xE4, 0x60, 0x3C, 0x78, 0x30, 0x1F, 0x07, 0x8F, 0x1F, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xF8, 0xF1, 0xEC, 0x60, 0x7C, 0x78, 0xF0, 0x3F, 0x03, 0x8F, 0x1F, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xE0, 0xF1, 0xC0, 0x22, 0x3C, 0x78, 0x31, 0x1F, 0x11, 0x8F, 0x1F, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xE1, 0xF1, 0xC6, 0x23, 0x1C, 0x78, 0x31, 0x8F, 0x10, 0x8F, 0x1F, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xBF, 0xFF, 0xFF, 0xDF, 0xFB, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".section .const, psv");

