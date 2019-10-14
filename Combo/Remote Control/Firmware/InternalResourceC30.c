/*****************************************************************************
 * FileName:        InternalResourceC30.c
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
 * AUTO-GENERATED CODE:  Graphics Resource Converter version: 3.16.46
 *****************************************************************************/

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
 * Converted Resources
 * -------------------
 *
 *
 * Palettes
 * --------
 * RemoteControlPalette - 256 Colors
 *
 * Fonts
 * -----
 * DroidSansMono_11 - Height: 15 pixels, 1 bit per pixel, Range: ' ' to '~'
 * DroidSansMono_22 - Height: 30 pixels, 1 bit per pixel, Range: ' ' to '~'
 * DroidSans_18 - Height: 22 pixels, 1 bit per pixel, Range: ' ' to '~'
 * DroidSans_Bold_14 - Height: 17 pixels, 1 bit per pixel, Range: ' ' to '~'
 * DroidSansMono_36 - Height: 48 pixels, 1 bit per pixel, Range: '+' to '9'
 *****************************************************************************/

/*****************************************************************************
 * SECTION:  Fonts
 *****************************************************************************/

/*********************************
 * TTF Font File Structure
 * Label: DroidSansMono_11
 * Description:  Height: 15 pixels, 1 bit per pixel, Range: ' ' to '~'
 ***********************************/

extern const char __DroidSansMono_11[] __attribute__((aligned(2)));

const FONT_FLASH DroidSansMono_11 =
{
    (FLASH | COMP_NONE),
    __DroidSansMono_11
};

const char __DroidSansMono_11[] __attribute__((aligned(2))) =
{
/****************************************
 * Font header
 ****************************************/
    0x00,           // Font ID
    0x00,           // Font information:  1 bit per pixel, Characters zero degress rotation
    0x20, 0x00,     // First Character
    0x7E, 0x00,     // Last Character
    0x0F, 0x00,     // Height
/****************************************
 * Font Glyph Table
 ****************************************/
    0x07,              // width of the glyph
    0x84, 0x01, 0x00,  // Character - 32, offset (0x00000184)
    0x07,              // width of the glyph
    0x93, 0x01, 0x00,  // Character - 33, offset (0x00000193)
    0x07,              // width of the glyph
    0xA2, 0x01, 0x00,  // Character - 34, offset (0x000001A2)
    0x07,              // width of the glyph
    0xB1, 0x01, 0x00,  // Character - 35, offset (0x000001B1)
    0x07,              // width of the glyph
    0xC0, 0x01, 0x00,  // Character - 36, offset (0x000001C0)
    0x07,              // width of the glyph
    0xCF, 0x01, 0x00,  // Character - 37, offset (0x000001CF)
    0x07,              // width of the glyph
    0xDE, 0x01, 0x00,  // Character - 38, offset (0x000001DE)
    0x07,              // width of the glyph
    0xED, 0x01, 0x00,  // Character - 39, offset (0x000001ED)
    0x07,              // width of the glyph
    0xFC, 0x01, 0x00,  // Character - 40, offset (0x000001FC)
    0x07,              // width of the glyph
    0x0B, 0x02, 0x00,  // Character - 41, offset (0x0000020B)
    0x07,              // width of the glyph
    0x1A, 0x02, 0x00,  // Character - 42, offset (0x0000021A)
    0x07,              // width of the glyph
    0x29, 0x02, 0x00,  // Character - 43, offset (0x00000229)
    0x07,              // width of the glyph
    0x38, 0x02, 0x00,  // Character - 44, offset (0x00000238)
    0x07,              // width of the glyph
    0x47, 0x02, 0x00,  // Character - 45, offset (0x00000247)
    0x07,              // width of the glyph
    0x56, 0x02, 0x00,  // Character - 46, offset (0x00000256)
    0x07,              // width of the glyph
    0x65, 0x02, 0x00,  // Character - 47, offset (0x00000265)
    0x07,              // width of the glyph
    0x74, 0x02, 0x00,  // Character - 48, offset (0x00000274)
    0x07,              // width of the glyph
    0x83, 0x02, 0x00,  // Character - 49, offset (0x00000283)
    0x07,              // width of the glyph
    0x92, 0x02, 0x00,  // Character - 50, offset (0x00000292)
    0x07,              // width of the glyph
    0xA1, 0x02, 0x00,  // Character - 51, offset (0x000002A1)
    0x07,              // width of the glyph
    0xB0, 0x02, 0x00,  // Character - 52, offset (0x000002B0)
    0x07,              // width of the glyph
    0xBF, 0x02, 0x00,  // Character - 53, offset (0x000002BF)
    0x07,              // width of the glyph
    0xCE, 0x02, 0x00,  // Character - 54, offset (0x000002CE)
    0x07,              // width of the glyph
    0xDD, 0x02, 0x00,  // Character - 55, offset (0x000002DD)
    0x07,              // width of the glyph
    0xEC, 0x02, 0x00,  // Character - 56, offset (0x000002EC)
    0x07,              // width of the glyph
    0xFB, 0x02, 0x00,  // Character - 57, offset (0x000002FB)
    0x07,              // width of the glyph
    0x0A, 0x03, 0x00,  // Character - 58, offset (0x0000030A)
    0x07,              // width of the glyph
    0x19, 0x03, 0x00,  // Character - 59, offset (0x00000319)
    0x07,              // width of the glyph
    0x28, 0x03, 0x00,  // Character - 60, offset (0x00000328)
    0x07,              // width of the glyph
    0x37, 0x03, 0x00,  // Character - 61, offset (0x00000337)
    0x07,              // width of the glyph
    0x46, 0x03, 0x00,  // Character - 62, offset (0x00000346)
    0x06,              // width of the glyph
    0x55, 0x03, 0x00,  // Character - 63, offset (0x00000355)
    0x07,              // width of the glyph
    0x64, 0x03, 0x00,  // Character - 64, offset (0x00000364)
    0x07,              // width of the glyph
    0x73, 0x03, 0x00,  // Character - 65, offset (0x00000373)
    0x07,              // width of the glyph
    0x82, 0x03, 0x00,  // Character - 66, offset (0x00000382)
    0x07,              // width of the glyph
    0x91, 0x03, 0x00,  // Character - 67, offset (0x00000391)
    0x07,              // width of the glyph
    0xA0, 0x03, 0x00,  // Character - 68, offset (0x000003A0)
    0x07,              // width of the glyph
    0xAF, 0x03, 0x00,  // Character - 69, offset (0x000003AF)
    0x07,              // width of the glyph
    0xBE, 0x03, 0x00,  // Character - 70, offset (0x000003BE)
    0x07,              // width of the glyph
    0xCD, 0x03, 0x00,  // Character - 71, offset (0x000003CD)
    0x07,              // width of the glyph
    0xDC, 0x03, 0x00,  // Character - 72, offset (0x000003DC)
    0x07,              // width of the glyph
    0xEB, 0x03, 0x00,  // Character - 73, offset (0x000003EB)
    0x07,              // width of the glyph
    0xFA, 0x03, 0x00,  // Character - 74, offset (0x000003FA)
    0x07,              // width of the glyph
    0x09, 0x04, 0x00,  // Character - 75, offset (0x00000409)
    0x07,              // width of the glyph
    0x18, 0x04, 0x00,  // Character - 76, offset (0x00000418)
    0x07,              // width of the glyph
    0x27, 0x04, 0x00,  // Character - 77, offset (0x00000427)
    0x07,              // width of the glyph
    0x36, 0x04, 0x00,  // Character - 78, offset (0x00000436)
    0x07,              // width of the glyph
    0x45, 0x04, 0x00,  // Character - 79, offset (0x00000445)
    0x07,              // width of the glyph
    0x54, 0x04, 0x00,  // Character - 80, offset (0x00000454)
    0x07,              // width of the glyph
    0x63, 0x04, 0x00,  // Character - 81, offset (0x00000463)
    0x07,              // width of the glyph
    0x72, 0x04, 0x00,  // Character - 82, offset (0x00000472)
    0x07,              // width of the glyph
    0x81, 0x04, 0x00,  // Character - 83, offset (0x00000481)
    0x07,              // width of the glyph
    0x90, 0x04, 0x00,  // Character - 84, offset (0x00000490)
    0x07,              // width of the glyph
    0x9F, 0x04, 0x00,  // Character - 85, offset (0x0000049F)
    0x07,              // width of the glyph
    0xAE, 0x04, 0x00,  // Character - 86, offset (0x000004AE)
    0x07,              // width of the glyph
    0xBD, 0x04, 0x00,  // Character - 87, offset (0x000004BD)
    0x07,              // width of the glyph
    0xCC, 0x04, 0x00,  // Character - 88, offset (0x000004CC)
    0x07,              // width of the glyph
    0xDB, 0x04, 0x00,  // Character - 89, offset (0x000004DB)
    0x07,              // width of the glyph
    0xEA, 0x04, 0x00,  // Character - 90, offset (0x000004EA)
    0x07,              // width of the glyph
    0xF9, 0x04, 0x00,  // Character - 91, offset (0x000004F9)
    0x07,              // width of the glyph
    0x08, 0x05, 0x00,  // Character - 92, offset (0x00000508)
    0x07,              // width of the glyph
    0x17, 0x05, 0x00,  // Character - 93, offset (0x00000517)
    0x07,              // width of the glyph
    0x26, 0x05, 0x00,  // Character - 94, offset (0x00000526)
    0x07,              // width of the glyph
    0x35, 0x05, 0x00,  // Character - 95, offset (0x00000535)
    0x07,              // width of the glyph
    0x44, 0x05, 0x00,  // Character - 96, offset (0x00000544)
    0x07,              // width of the glyph
    0x53, 0x05, 0x00,  // Character - 97, offset (0x00000553)
    0x07,              // width of the glyph
    0x62, 0x05, 0x00,  // Character - 98, offset (0x00000562)
    0x07,              // width of the glyph
    0x71, 0x05, 0x00,  // Character - 99, offset (0x00000571)
    0x07,              // width of the glyph
    0x80, 0x05, 0x00,  // Character - 100, offset (0x00000580)
    0x07,              // width of the glyph
    0x8F, 0x05, 0x00,  // Character - 101, offset (0x0000058F)
    0x07,              // width of the glyph
    0x9E, 0x05, 0x00,  // Character - 102, offset (0x0000059E)
    0x07,              // width of the glyph
    0xAD, 0x05, 0x00,  // Character - 103, offset (0x000005AD)
    0x07,              // width of the glyph
    0xBC, 0x05, 0x00,  // Character - 104, offset (0x000005BC)
    0x07,              // width of the glyph
    0xCB, 0x05, 0x00,  // Character - 105, offset (0x000005CB)
    0x07,              // width of the glyph
    0xDA, 0x05, 0x00,  // Character - 106, offset (0x000005DA)
    0x07,              // width of the glyph
    0xE9, 0x05, 0x00,  // Character - 107, offset (0x000005E9)
    0x07,              // width of the glyph
    0xF8, 0x05, 0x00,  // Character - 108, offset (0x000005F8)
    0x07,              // width of the glyph
    0x07, 0x06, 0x00,  // Character - 109, offset (0x00000607)
    0x07,              // width of the glyph
    0x16, 0x06, 0x00,  // Character - 110, offset (0x00000616)
    0x07,              // width of the glyph
    0x25, 0x06, 0x00,  // Character - 111, offset (0x00000625)
    0x07,              // width of the glyph
    0x34, 0x06, 0x00,  // Character - 112, offset (0x00000634)
    0x07,              // width of the glyph
    0x43, 0x06, 0x00,  // Character - 113, offset (0x00000643)
    0x07,              // width of the glyph
    0x52, 0x06, 0x00,  // Character - 114, offset (0x00000652)
    0x07,              // width of the glyph
    0x61, 0x06, 0x00,  // Character - 115, offset (0x00000661)
    0x07,              // width of the glyph
    0x70, 0x06, 0x00,  // Character - 116, offset (0x00000670)
    0x07,              // width of the glyph
    0x7F, 0x06, 0x00,  // Character - 117, offset (0x0000067F)
    0x07,              // width of the glyph
    0x8E, 0x06, 0x00,  // Character - 118, offset (0x0000068E)
    0x07,              // width of the glyph
    0x9D, 0x06, 0x00,  // Character - 119, offset (0x0000069D)
    0x07,              // width of the glyph
    0xAC, 0x06, 0x00,  // Character - 120, offset (0x000006AC)
    0x07,              // width of the glyph
    0xBB, 0x06, 0x00,  // Character - 121, offset (0x000006BB)
    0x07,              // width of the glyph
    0xCA, 0x06, 0x00,  // Character - 122, offset (0x000006CA)
    0x07,              // width of the glyph
    0xD9, 0x06, 0x00,  // Character - 123, offset (0x000006D9)
    0x07,              // width of the glyph
    0xE8, 0x06, 0x00,  // Character - 124, offset (0x000006E8)
    0x07,              // width of the glyph
    0xF7, 0x06, 0x00,  // Character - 125, offset (0x000006F7)
    0x07,              // width of the glyph
    0x06, 0x07, 0x00,  // Character - 126, offset (0x00000706)
/***********************************
 * Font Characters
 ***********************************/
/***********************************
 * Character - 32
 ***********************************/
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

/***********************************
 * Character - 33
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x00,         //         
    0x00,         //         
    0x08,         //    *    
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 34
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x12,         //  *  *   
    0x12,         //  *  *   
    0x12,         //  *  *   
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 35
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x14,         //   * *   
    0x14,         //   * *   
    0x3F,         // ******  
    0x14,         //   * *   
    0x0A,         //  * *    
    0x3F,         // ******  
    0x0A,         //  * *    
    0x0A,         //  * *    
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 36
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x08,         //    *    
    0x3C,         //   ****  
    0x0A,         //  * *    
    0x0A,         //  * *    
    0x0C,         //   **    
    0x38,         //    ***  
    0x28,         //    * *  
    0x28,         //    * *  
    0x1E,         //  ****   
    0x08,         //    *    
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 37
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x22,         //  *   *  
    0x15,         // * * *   
    0x15,         // * * *   
    0x0A,         //  * *    
    0x28,         //    * *  
    0x54,         //   * * * 
    0x54,         //   * * * 
    0x22,         //  *   *  
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 38
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x1E,         //  ****   
    0x12,         //  *  *   
    0x12,         //  *  *   
    0x0C,         //   **    
    0x2A,         //  * * *  
    0x32,         //  *  **  
    0x32,         //  *  **  
    0x7C,         //   ***** 
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 39
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 40
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x10,         //     *   
    0x08,         //    *    
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x08,         //    *    
    0x10,         //     *   
    0x00,         //         

/***********************************
 * Character - 41
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x04,         //   *     
    0x08,         //    *    
    0x10,         //     *   
    0x10,         //     *   
    0x10,         //     *   
    0x10,         //     *   
    0x10,         //     *   
    0x10,         //     *   
    0x08,         //    *    
    0x04,         //   *     
    0x00,         //         

/***********************************
 * Character - 42
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x08,         //    *    
    0x08,         //    *    
    0x3E,         //  *****  
    0x14,         //   * *   
    0x14,         //   * *   
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 43
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x08,         //    *    
    0x08,         //    *    
    0x3E,         //  *****  
    0x08,         //    *    
    0x08,         //    *    
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 44
 ***********************************/
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
    0x08,         //    *    
    0x08,         //    *    
    0x04,         //   *     
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 45
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x1E,         //  ****   
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 46
 ***********************************/
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
    0x08,         //    *    
    0x08,         //    *    
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 47
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x20,         //      *  
    0x10,         //     *   
    0x10,         //     *   
    0x08,         //    *    
    0x08,         //    *    
    0x04,         //   *     
    0x04,         //   *     
    0x02,         //  *      
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 48
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x1C,         //   ***   
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x1C,         //   ***   
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 49
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x0C,         //   **    
    0x0A,         //  * *    
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 50
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x1C,         //   ***   
    0x20,         //      *  
    0x20,         //      *  
    0x20,         //      *  
    0x10,         //     *   
    0x08,         //    *    
    0x04,         //   *     
    0x3E,         //  *****  
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 51
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x1C,         //   ***   
    0x20,         //      *  
    0x20,         //      *  
    0x1C,         //   ***   
    0x20,         //      *  
    0x20,         //      *  
    0x20,         //      *  
    0x1E,         //  ****   
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 52
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x10,         //     *   
    0x18,         //    **   
    0x14,         //   * *   
    0x14,         //   * *   
    0x12,         //  *  *   
    0x3E,         //  *****  
    0x10,         //     *   
    0x10,         //     *   
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 53
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x3E,         //  *****  
    0x02,         //  *      
    0x02,         //  *      
    0x1E,         //  ****   
    0x20,         //      *  
    0x20,         //      *  
    0x20,         //      *  
    0x1E,         //  ****   
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 54
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x38,         //    ***  
    0x04,         //   *     
    0x02,         //  *      
    0x1E,         //  ****   
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x1C,         //   ***   
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 55
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x3E,         //  *****  
    0x20,         //      *  
    0x10,         //     *   
    0x10,         //     *   
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x04,         //   *     
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 56
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x1C,         //   ***   
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x1C,         //   ***   
    0x12,         //  *  *   
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x1C,         //   ***   
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 57
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x1C,         //   ***   
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x3C,         //   ****  
    0x20,         //      *  
    0x10,         //     *   
    0x0E,         //  ***    
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 58
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x08,         //    *    
    0x08,         //    *    
    0x00,         //         
    0x00,         //         
    0x08,         //    *    
    0x08,         //    *    
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 59
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x08,         //    *    
    0x08,         //    *    
    0x00,         //         
    0x00,         //         
    0x08,         //    *    
    0x08,         //    *    
    0x04,         //   *     
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 60
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x20,         //      *  
    0x1C,         //   ***   
    0x02,         //  *      
    0x1C,         //   ***   
    0x20,         //      *  
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 61
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x3E,         //  *****  
    0x00,         //         
    0x3E,         //  *****  
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 62
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x02,         //  *      
    0x1C,         //   ***   
    0x20,         //      *  
    0x1C,         //   ***   
    0x02,         //  *      
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 63
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x0E,         //  ***    
    0x10,         //     *   
    0x10,         //     *   
    0x08,         //    *    
    0x04,         //   *     
    0x00,         //         
    0x04,         //   *     
    0x04,         //   *     
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 64
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x1C,         //   ***   
    0x22,         //  *   *  
    0x59,         // *  ** * 
    0x55,         // * * * * 
    0x55,         // * * * * 
    0x55,         // * * * * 
    0x2D,         // * ** *  
    0x02,         //  *      
    0x3C,         //   ****  
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 65
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x08,         //    *    
    0x14,         //   * *   
    0x14,         //   * *   
    0x14,         //   * *   
    0x22,         //  *   *  
    0x3E,         //  *****  
    0x22,         //  *   *  
    0x41,         // *     * 
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 66
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x1E,         //  ****   
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x1E,         //  ****   
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x1E,         //  ****   
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 67
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x3C,         //   ****  
    0x04,         //   *     
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x04,         //   *     
    0x3C,         //   ****  
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 68
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x1E,         //  ****   
    0x12,         //  *  *   
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x12,         //  *  *   
    0x0E,         //  ***    
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 69
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x3E,         //  *****  
    0x02,         //  *      
    0x02,         //  *      
    0x3E,         //  *****  
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x3E,         //  *****  
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 70
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x3E,         //  *****  
    0x02,         //  *      
    0x02,         //  *      
    0x3E,         //  *****  
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 71
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x3C,         //   ****  
    0x04,         //   *     
    0x02,         //  *      
    0x32,         //  *  **  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x24,         //   *  *  
    0x3C,         //   ****  
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 72
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x3E,         //  *****  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 73
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x3E,         //  *****  
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x3E,         //  *****  
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 74
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x10,         //     *   
    0x10,         //     *   
    0x10,         //     *   
    0x10,         //     *   
    0x10,         //     *   
    0x10,         //     *   
    0x10,         //     *   
    0x0E,         //  ***    
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 75
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x22,         //  *   *  
    0x12,         //  *  *   
    0x0A,         //  * *    
    0x06,         //  **     
    0x0A,         //  * *    
    0x12,         //  *  *   
    0x12,         //  *  *   
    0x22,         //  *   *  
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 76
 ***********************************/
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
    0x3E,         //  *****  
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 77
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x36,         //  ** **  
    0x36,         //  ** **  
    0x36,         //  ** **  
    0x36,         //  ** **  
    0x2A,         //  * * *  
    0x2A,         //  * * *  
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 78
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x22,         //  *   *  
    0x26,         //  **  *  
    0x26,         //  **  *  
    0x2A,         //  * * *  
    0x2A,         //  * * *  
    0x32,         //  *  **  
    0x32,         //  *  **  
    0x22,         //  *   *  
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 79
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x1C,         //   ***   
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x1C,         //   ***   
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 80
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x1E,         //  ****   
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x1E,         //  ****   
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 81
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x1C,         //   ***   
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x1C,         //   ***   
    0x10,         //     *   
    0x20,         //      *  
    0x00,         //         

/***********************************
 * Character - 82
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x1E,         //  ****   
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x1E,         //  ****   
    0x12,         //  *  *   
    0x22,         //  *   *  
    0x42,         //  *    * 
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 83
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x3C,         //   ****  
    0x02,         //  *      
    0x02,         //  *      
    0x0C,         //   **    
    0x30,         //     **  
    0x20,         //      *  
    0x20,         //      *  
    0x1E,         //  ****   
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 84
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x3E,         //  *****  
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 85
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x1C,         //   ***   
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 86
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x41,         // *     * 
    0x41,         // *     * 
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x14,         //   * *   
    0x14,         //   * *   
    0x14,         //   * *   
    0x08,         //    *    
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 87
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x41,         // *     * 
    0x41,         // *     * 
    0x49,         // *  *  * 
    0x49,         // *  *  * 
    0x55,         // * * * * 
    0x36,         //  ** **  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 88
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x41,         // *     * 
    0x22,         //  *   *  
    0x14,         //   * *   
    0x08,         //    *    
    0x08,         //    *    
    0x14,         //   * *   
    0x22,         //  *   *  
    0x41,         // *     * 
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 89
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x41,         // *     * 
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x14,         //   * *   
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 90
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x3E,         //  *****  
    0x20,         //      *  
    0x10,         //     *   
    0x08,         //    *    
    0x08,         //    *    
    0x04,         //   *     
    0x02,         //  *      
    0x3E,         //  *****  
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 91
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x1C,         //   ***   
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x1C,         //   ***   
    0x00,         //         

/***********************************
 * Character - 92
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x02,         //  *      
    0x04,         //   *     
    0x04,         //   *     
    0x08,         //    *    
    0x08,         //    *    
    0x10,         //     *   
    0x10,         //     *   
    0x20,         //      *  
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 93
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x1C,         //   ***   
    0x10,         //     *   
    0x10,         //     *   
    0x10,         //     *   
    0x10,         //     *   
    0x10,         //     *   
    0x10,         //     *   
    0x10,         //     *   
    0x10,         //     *   
    0x1C,         //   ***   
    0x00,         //         

/***********************************
 * Character - 94
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x08,         //    *    
    0x14,         //   * *   
    0x14,         //   * *   
    0x14,         //   * *   
    0x22,         //  *   *  
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 95
 ***********************************/
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
    0x7F,         // ******* 
    0x00,         //         

/***********************************
 * Character - 96
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x08,         //    *    
    0x10,         //     *   
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

/***********************************
 * Character - 97
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x1E,         //  ****   
    0x20,         //      *  
    0x3C,         //   ****  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x3C,         //   ****  
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 98
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x02,         //  *      
    0x02,         //  *      
    0x1E,         //  ****   
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x1E,         //  ****   
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 99
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x3C,         //   ****  
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x3C,         //   ****  
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 100
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x20,         //      *  
    0x20,         //      *  
    0x3C,         //   ****  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x3C,         //   ****  
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 101
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x1C,         //   ***   
    0x22,         //  *   *  
    0x3E,         //  *****  
    0x02,         //  *      
    0x02,         //  *      
    0x3C,         //   ****  
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 102
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x38,         //    ***  
    0x08,         //    *    
    0x3E,         //  *****  
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 103
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x7C,         //   ***** 
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x1C,         //   ***   
    0x02,         //  *      
    0x3E,         //  *****  
    0x42,         //  *    * 
    0x42,         //  *    * 
    0x3C,         //   ****  

/***********************************
 * Character - 104
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x02,         //  *      
    0x02,         //  *      
    0x1E,         //  ****   
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 105
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x08,         //    *    
    0x00,         //         
    0x0C,         //   **    
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x3E,         //  *****  
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 106
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x10,         //     *   
    0x00,         //         
    0x1C,         //   ***   
    0x10,         //     *   
    0x10,         //     *   
    0x10,         //     *   
    0x10,         //     *   
    0x10,         //     *   
    0x10,         //     *   
    0x10,         //     *   
    0x0E,         //  ***    

/***********************************
 * Character - 107
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x02,         //  *      
    0x02,         //  *      
    0x22,         //  *   *  
    0x12,         //  *  *   
    0x0E,         //  ***    
    0x12,         //  *  *   
    0x22,         //  *   *  
    0x42,         //  *    * 
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 108
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x0C,         //   **    
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x3E,         //  *****  
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 109
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x3E,         //  *****  
    0x2A,         //  * * *  
    0x2A,         //  * * *  
    0x2A,         //  * * *  
    0x2A,         //  * * *  
    0x2A,         //  * * *  
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 110
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x1E,         //  ****   
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 111
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x1C,         //   ***   
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x1C,         //   ***   
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 112
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x1E,         //  ****   
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x1E,         //  ****   
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      

/***********************************
 * Character - 113
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x3C,         //   ****  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x3C,         //   ****  
    0x20,         //      *  
    0x20,         //      *  
    0x20,         //      *  

/***********************************
 * Character - 114
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x3C,         //   ****  
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 115
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x3C,         //   ****  
    0x02,         //  *      
    0x0E,         //  ***    
    0x30,         //     **  
    0x20,         //      *  
    0x1E,         //  ****   
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 116
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x08,         //    *    
    0x08,         //    *    
    0x3E,         //  *****  
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x38,         //    ***  
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 117
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x3C,         //   ****  
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 118
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x14,         //   * *   
    0x14,         //   * *   
    0x14,         //   * *   
    0x08,         //    *    
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 119
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x49,         // *  *  * 
    0x55,         // * * * * 
    0x55,         // * * * * 
    0x55,         // * * * * 
    0x32,         //  *  **  
    0x22,         //  *   *  
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 120
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x22,         //  *   *  
    0x14,         //   * *   
    0x08,         //    *    
    0x08,         //    *    
    0x14,         //   * *   
    0x22,         //  *   *  
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 121
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x14,         //   * *   
    0x14,         //   * *   
    0x18,         //    **   
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x06,         //  **     

/***********************************
 * Character - 122
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x3E,         //  *****  
    0x10,         //     *   
    0x08,         //    *    
    0x08,         //    *    
    0x04,         //   *     
    0x3E,         //  *****  
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 123
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x30,         //     **  
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x06,         //  **     
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x30,         //     **  
    0x00,         //         

/***********************************
 * Character - 124
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    

/***********************************
 * Character - 125
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x06,         //  **     
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x30,         //     **  
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x06,         //  **     
    0x00,         //         

/***********************************
 * Character - 126
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x0E,         //  ***    
    0x38,         //    ***  
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

};

/*********************************
 * TTF Font File Structure
 * Label: DroidSansMono_22
 * Description:  Height: 30 pixels, 1 bit per pixel, Range: ' ' to '~'
 ***********************************/

extern const char __DroidSansMono_22[] __attribute__((aligned(2)));

const FONT_FLASH DroidSansMono_22 =
{
    (FLASH | COMP_NONE),
    __DroidSansMono_22
};

const char __DroidSansMono_22[] __attribute__((aligned(2))) =
{
/****************************************
 * Font header
 ****************************************/
    0x00,           // Font ID
    0x00,           // Font information:  1 bit per pixel, Characters zero degress rotation
    0x20, 0x00,     // First Character
    0x7E, 0x00,     // Last Character
    0x1E, 0x00,     // Height
/****************************************
 * Font Glyph Table
 ****************************************/
    0x0D,              // width of the glyph
    0x84, 0x01, 0x00,  // Character - 32, offset (0x00000184)
    0x0D,              // width of the glyph
    0xC0, 0x01, 0x00,  // Character - 33, offset (0x000001C0)
    0x0D,              // width of the glyph
    0xFC, 0x01, 0x00,  // Character - 34, offset (0x000001FC)
    0x0D,              // width of the glyph
    0x38, 0x02, 0x00,  // Character - 35, offset (0x00000238)
    0x0D,              // width of the glyph
    0x74, 0x02, 0x00,  // Character - 36, offset (0x00000274)
    0x0D,              // width of the glyph
    0xB0, 0x02, 0x00,  // Character - 37, offset (0x000002B0)
    0x0D,              // width of the glyph
    0xEC, 0x02, 0x00,  // Character - 38, offset (0x000002EC)
    0x0D,              // width of the glyph
    0x28, 0x03, 0x00,  // Character - 39, offset (0x00000328)
    0x0D,              // width of the glyph
    0x64, 0x03, 0x00,  // Character - 40, offset (0x00000364)
    0x0D,              // width of the glyph
    0xA0, 0x03, 0x00,  // Character - 41, offset (0x000003A0)
    0x0D,              // width of the glyph
    0xDC, 0x03, 0x00,  // Character - 42, offset (0x000003DC)
    0x0D,              // width of the glyph
    0x18, 0x04, 0x00,  // Character - 43, offset (0x00000418)
    0x0D,              // width of the glyph
    0x54, 0x04, 0x00,  // Character - 44, offset (0x00000454)
    0x0D,              // width of the glyph
    0x90, 0x04, 0x00,  // Character - 45, offset (0x00000490)
    0x0D,              // width of the glyph
    0xCC, 0x04, 0x00,  // Character - 46, offset (0x000004CC)
    0x0D,              // width of the glyph
    0x08, 0x05, 0x00,  // Character - 47, offset (0x00000508)
    0x0D,              // width of the glyph
    0x44, 0x05, 0x00,  // Character - 48, offset (0x00000544)
    0x0D,              // width of the glyph
    0x80, 0x05, 0x00,  // Character - 49, offset (0x00000580)
    0x0D,              // width of the glyph
    0xBC, 0x05, 0x00,  // Character - 50, offset (0x000005BC)
    0x0D,              // width of the glyph
    0xF8, 0x05, 0x00,  // Character - 51, offset (0x000005F8)
    0x0D,              // width of the glyph
    0x34, 0x06, 0x00,  // Character - 52, offset (0x00000634)
    0x0D,              // width of the glyph
    0x70, 0x06, 0x00,  // Character - 53, offset (0x00000670)
    0x0D,              // width of the glyph
    0xAC, 0x06, 0x00,  // Character - 54, offset (0x000006AC)
    0x0D,              // width of the glyph
    0xE8, 0x06, 0x00,  // Character - 55, offset (0x000006E8)
    0x0D,              // width of the glyph
    0x24, 0x07, 0x00,  // Character - 56, offset (0x00000724)
    0x0D,              // width of the glyph
    0x60, 0x07, 0x00,  // Character - 57, offset (0x00000760)
    0x0D,              // width of the glyph
    0x9C, 0x07, 0x00,  // Character - 58, offset (0x0000079C)
    0x0D,              // width of the glyph
    0xD8, 0x07, 0x00,  // Character - 59, offset (0x000007D8)
    0x0D,              // width of the glyph
    0x14, 0x08, 0x00,  // Character - 60, offset (0x00000814)
    0x0D,              // width of the glyph
    0x50, 0x08, 0x00,  // Character - 61, offset (0x00000850)
    0x0D,              // width of the glyph
    0x8C, 0x08, 0x00,  // Character - 62, offset (0x0000088C)
    0x0D,              // width of the glyph
    0xC8, 0x08, 0x00,  // Character - 63, offset (0x000008C8)
    0x0D,              // width of the glyph
    0x04, 0x09, 0x00,  // Character - 64, offset (0x00000904)
    0x0D,              // width of the glyph
    0x40, 0x09, 0x00,  // Character - 65, offset (0x00000940)
    0x0D,              // width of the glyph
    0x7C, 0x09, 0x00,  // Character - 66, offset (0x0000097C)
    0x0D,              // width of the glyph
    0xB8, 0x09, 0x00,  // Character - 67, offset (0x000009B8)
    0x0D,              // width of the glyph
    0xF4, 0x09, 0x00,  // Character - 68, offset (0x000009F4)
    0x0D,              // width of the glyph
    0x30, 0x0A, 0x00,  // Character - 69, offset (0x00000A30)
    0x0D,              // width of the glyph
    0x6C, 0x0A, 0x00,  // Character - 70, offset (0x00000A6C)
    0x0D,              // width of the glyph
    0xA8, 0x0A, 0x00,  // Character - 71, offset (0x00000AA8)
    0x0D,              // width of the glyph
    0xE4, 0x0A, 0x00,  // Character - 72, offset (0x00000AE4)
    0x0D,              // width of the glyph
    0x20, 0x0B, 0x00,  // Character - 73, offset (0x00000B20)
    0x0D,              // width of the glyph
    0x5C, 0x0B, 0x00,  // Character - 74, offset (0x00000B5C)
    0x0D,              // width of the glyph
    0x98, 0x0B, 0x00,  // Character - 75, offset (0x00000B98)
    0x0D,              // width of the glyph
    0xD4, 0x0B, 0x00,  // Character - 76, offset (0x00000BD4)
    0x0D,              // width of the glyph
    0x10, 0x0C, 0x00,  // Character - 77, offset (0x00000C10)
    0x0D,              // width of the glyph
    0x4C, 0x0C, 0x00,  // Character - 78, offset (0x00000C4C)
    0x0D,              // width of the glyph
    0x88, 0x0C, 0x00,  // Character - 79, offset (0x00000C88)
    0x0D,              // width of the glyph
    0xC4, 0x0C, 0x00,  // Character - 80, offset (0x00000CC4)
    0x0D,              // width of the glyph
    0x00, 0x0D, 0x00,  // Character - 81, offset (0x00000D00)
    0x0D,              // width of the glyph
    0x3C, 0x0D, 0x00,  // Character - 82, offset (0x00000D3C)
    0x0D,              // width of the glyph
    0x78, 0x0D, 0x00,  // Character - 83, offset (0x00000D78)
    0x0D,              // width of the glyph
    0xB4, 0x0D, 0x00,  // Character - 84, offset (0x00000DB4)
    0x0D,              // width of the glyph
    0xF0, 0x0D, 0x00,  // Character - 85, offset (0x00000DF0)
    0x0D,              // width of the glyph
    0x2C, 0x0E, 0x00,  // Character - 86, offset (0x00000E2C)
    0x0D,              // width of the glyph
    0x68, 0x0E, 0x00,  // Character - 87, offset (0x00000E68)
    0x0D,              // width of the glyph
    0xA4, 0x0E, 0x00,  // Character - 88, offset (0x00000EA4)
    0x0D,              // width of the glyph
    0xE0, 0x0E, 0x00,  // Character - 89, offset (0x00000EE0)
    0x0D,              // width of the glyph
    0x1C, 0x0F, 0x00,  // Character - 90, offset (0x00000F1C)
    0x0D,              // width of the glyph
    0x58, 0x0F, 0x00,  // Character - 91, offset (0x00000F58)
    0x0D,              // width of the glyph
    0x94, 0x0F, 0x00,  // Character - 92, offset (0x00000F94)
    0x0D,              // width of the glyph
    0xD0, 0x0F, 0x00,  // Character - 93, offset (0x00000FD0)
    0x0D,              // width of the glyph
    0x0C, 0x10, 0x00,  // Character - 94, offset (0x0000100C)
    0x0D,              // width of the glyph
    0x48, 0x10, 0x00,  // Character - 95, offset (0x00001048)
    0x0D,              // width of the glyph
    0x84, 0x10, 0x00,  // Character - 96, offset (0x00001084)
    0x0D,              // width of the glyph
    0xC0, 0x10, 0x00,  // Character - 97, offset (0x000010C0)
    0x0D,              // width of the glyph
    0xFC, 0x10, 0x00,  // Character - 98, offset (0x000010FC)
    0x0D,              // width of the glyph
    0x38, 0x11, 0x00,  // Character - 99, offset (0x00001138)
    0x0D,              // width of the glyph
    0x74, 0x11, 0x00,  // Character - 100, offset (0x00001174)
    0x0D,              // width of the glyph
    0xB0, 0x11, 0x00,  // Character - 101, offset (0x000011B0)
    0x0D,              // width of the glyph
    0xEC, 0x11, 0x00,  // Character - 102, offset (0x000011EC)
    0x0D,              // width of the glyph
    0x28, 0x12, 0x00,  // Character - 103, offset (0x00001228)
    0x0D,              // width of the glyph
    0x64, 0x12, 0x00,  // Character - 104, offset (0x00001264)
    0x0D,              // width of the glyph
    0xA0, 0x12, 0x00,  // Character - 105, offset (0x000012A0)
    0x0D,              // width of the glyph
    0xDC, 0x12, 0x00,  // Character - 106, offset (0x000012DC)
    0x0D,              // width of the glyph
    0x18, 0x13, 0x00,  // Character - 107, offset (0x00001318)
    0x0D,              // width of the glyph
    0x54, 0x13, 0x00,  // Character - 108, offset (0x00001354)
    0x0D,              // width of the glyph
    0x90, 0x13, 0x00,  // Character - 109, offset (0x00001390)
    0x0D,              // width of the glyph
    0xCC, 0x13, 0x00,  // Character - 110, offset (0x000013CC)
    0x0D,              // width of the glyph
    0x08, 0x14, 0x00,  // Character - 111, offset (0x00001408)
    0x0D,              // width of the glyph
    0x44, 0x14, 0x00,  // Character - 112, offset (0x00001444)
    0x0D,              // width of the glyph
    0x80, 0x14, 0x00,  // Character - 113, offset (0x00001480)
    0x0D,              // width of the glyph
    0xBC, 0x14, 0x00,  // Character - 114, offset (0x000014BC)
    0x0D,              // width of the glyph
    0xF8, 0x14, 0x00,  // Character - 115, offset (0x000014F8)
    0x0D,              // width of the glyph
    0x34, 0x15, 0x00,  // Character - 116, offset (0x00001534)
    0x0D,              // width of the glyph
    0x70, 0x15, 0x00,  // Character - 117, offset (0x00001570)
    0x0D,              // width of the glyph
    0xAC, 0x15, 0x00,  // Character - 118, offset (0x000015AC)
    0x0D,              // width of the glyph
    0xE8, 0x15, 0x00,  // Character - 119, offset (0x000015E8)
    0x0D,              // width of the glyph
    0x24, 0x16, 0x00,  // Character - 120, offset (0x00001624)
    0x0D,              // width of the glyph
    0x60, 0x16, 0x00,  // Character - 121, offset (0x00001660)
    0x0D,              // width of the glyph
    0x9C, 0x16, 0x00,  // Character - 122, offset (0x0000169C)
    0x0D,              // width of the glyph
    0xD8, 0x16, 0x00,  // Character - 123, offset (0x000016D8)
    0x0D,              // width of the glyph
    0x14, 0x17, 0x00,  // Character - 124, offset (0x00001714)
    0x0D,              // width of the glyph
    0x50, 0x17, 0x00,  // Character - 125, offset (0x00001750)
    0x0D,              // width of the glyph
    0x8C, 0x17, 0x00,  // Character - 126, offset (0x0000178C)
/***********************************
 * Font Characters
 ***********************************/
/***********************************
 * Character - 32
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 33
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xE0, 0x00,         //      ***        
    0xE0, 0x00,         //      ***        
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x40, 0x00,         //       *         
    0x40, 0x00,         //       *         
    0x40, 0x00,         //       *         
    0x40, 0x00,         //       *         
    0x40, 0x00,         //       *         
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x60, 0x00,         //      **         
    0xE0, 0x00,         //      ***        
    0x60, 0x00,         //      **         
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 34
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x38, 0x07,         //    ***  ***     
    0x18, 0x03,         //    **   **      
    0x18, 0x03,         //    **   **      
    0x18, 0x03,         //    **   **      
    0x18, 0x03,         //    **   **      
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 35
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x30, 0x06,         //     **   **     
    0x30, 0x06,         //     **   **     
    0x30, 0x06,         //     **   **     
    0x10, 0x02,         //     *    *      
    0x18, 0x03,         //    **   **      
    0xFE, 0x0F,         //  ***********    
    0xFE, 0x0F,         //  ***********    
    0x18, 0x01,         //    **   *       
    0x08, 0x01,         //    *    *       
    0x8C, 0x01,         //   **   **       
    0xFF, 0x07,         // ***********     
    0xFF, 0x07,         // ***********     
    0x84, 0x00,         //   *    *        
    0x84, 0x00,         //   *    *        
    0xC6, 0x00,         //  **   **        
    0xC6, 0x00,         //  **   **        
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 36
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x20, 0x00,         //      *          
    0x20, 0x00,         //      *          
    0xF8, 0x03,         //    *******      
    0xFC, 0x03,         //   ********      
    0x26, 0x00,         //  **  *          
    0x26, 0x00,         //  **  *          
    0x26, 0x00,         //  **  *          
    0x2C, 0x00,         //   ** *          
    0x78, 0x00,         //    ****         
    0xE0, 0x01,         //      ****       
    0x20, 0x07,         //      *  ***     
    0x20, 0x06,         //      *   **     
    0x20, 0x06,         //      *   **     
    0x20, 0x07,         //      *  ***     
    0xFE, 0x03,         //  *********      
    0xFC, 0x00,         //   ******        
    0x20, 0x00,         //      *          
    0x20, 0x00,         //      *          
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 37
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x1E, 0x06,         //  ****    **     
    0x33, 0x02,         // **  **   *      
    0x33, 0x03,         // **  **  **      
    0xB3, 0x01,         // **  ** **       
    0xB3, 0x01,         // **  ** **       
    0xF3, 0x00,         // **  ****        
    0xDE, 0x00,         //  **** **        
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0xB0, 0x07,         //     ** ****     
    0xF0, 0x0C,         //     ****  **    
    0xD8, 0x0C,         //    ** **  **    
    0xD8, 0x0C,         //    ** **  **    
    0xCC, 0x0C,         //   **  **  **    
    0xC4, 0x0C,         //   *   **  **    
    0x86, 0x07,         //  **    ****     
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 38
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xF8, 0x00,         //    *****        
    0xFC, 0x01,         //   *******       
    0x8C, 0x01,         //   **   **       
    0x8C, 0x01,         //   **   **       
    0x8C, 0x01,         //   **   **       
    0xD8, 0x00,         //    ** **        
    0xF8, 0x00,         //    *****        
    0x78, 0x00,         //    ****         
    0x7C, 0x0C,         //   *****   **    
    0xEC, 0x0C,         //   ** ***  **    
    0xC6, 0x05,         //  **   *** *     
    0x86, 0x07,         //  **    ****     
    0x06, 0x07,         //  **     ***     
    0x0E, 0x07,         //  ***    ***     
    0xFC, 0x0F,         //   **********    
    0x78, 0x1C,         //    ****   ***   
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 39
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xE0, 0x00,         //      ***        
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 40
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x80, 0x01,         //        **       
    0xC0, 0x00,         //       **        
    0xE0, 0x00,         //      ***        
    0x60, 0x00,         //      **         
    0x30, 0x00,         //     **          
    0x30, 0x00,         //     **          
    0x18, 0x00,         //    **           
    0x18, 0x00,         //    **           
    0x18, 0x00,         //    **           
    0x18, 0x00,         //    **           
    0x18, 0x00,         //    **           
    0x18, 0x00,         //    **           
    0x18, 0x00,         //    **           
    0x30, 0x00,         //     **          
    0x30, 0x00,         //     **          
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0xC0, 0x00,         //       **        
    0x80, 0x01,         //        **       
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 41
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x30, 0x00,         //     **          
    0x60, 0x00,         //      **         
    0xE0, 0x00,         //      ***        
    0xC0, 0x00,         //       **        
    0x80, 0x01,         //        **       
    0x80, 0x01,         //        **       
    0x00, 0x03,         //         **      
    0x00, 0x03,         //         **      
    0x00, 0x03,         //         **      
    0x00, 0x03,         //         **      
    0x00, 0x03,         //         **      
    0x00, 0x03,         //         **      
    0x00, 0x03,         //         **      
    0x80, 0x01,         //        **       
    0x80, 0x01,         //        **       
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0x60, 0x00,         //      **         
    0x30, 0x00,         //     **          
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 42
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xC0, 0x00,         //       **        
    0x40, 0x00,         //       *         
    0x40, 0x00,         //       *         
    0x44, 0x0C,         //   *   *   **    
    0xFE, 0x0F,         //  ***********    
    0xE0, 0x00,         //      ***        
    0xA0, 0x00,         //      * *        
    0xB0, 0x01,         //     ** **       
    0x18, 0x03,         //    **   **      
    0x10, 0x01,         //     *   *       
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 43
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0xFE, 0x07,         //  **********     
    0xFE, 0x07,         //  **********     
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 44
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xE0, 0x00,         //      ***        
    0xE0, 0x00,         //      ***        
    0x60, 0x00,         //      **         
    0x70, 0x00,         //     ***         
    0x30, 0x00,         //     **          
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 45
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xF8, 0x03,         //    *******      
    0xF8, 0x03,         //    *******      
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 46
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xE0, 0x00,         //      ***        
    0xE0, 0x00,         //      ***        
    0xE0, 0x00,         //      ***        
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 47
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x06,         //          **     
    0x00, 0x03,         //         **      
    0x00, 0x03,         //         **      
    0x00, 0x01,         //         *       
    0x80, 0x01,         //        **       
    0x80, 0x01,         //        **       
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x30, 0x00,         //     **          
    0x30, 0x00,         //     **          
    0x10, 0x00,         //     *           
    0x18, 0x00,         //    **           
    0x18, 0x00,         //    **           
    0x0C, 0x00,         //   **            
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 48
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xF0, 0x00,         //     ****        
    0xF8, 0x01,         //    ******       
    0x0C, 0x03,         //   **    **      
    0x0C, 0x03,         //   **    **      
    0x06, 0x06,         //  **      **     
    0x06, 0x06,         //  **      **     
    0x06, 0x06,         //  **      **     
    0x06, 0x06,         //  **      **     
    0x06, 0x06,         //  **      **     
    0x06, 0x06,         //  **      **     
    0x06, 0x06,         //  **      **     
    0x06, 0x06,         //  **      **     
    0x0C, 0x03,         //   **    **      
    0x0C, 0x03,         //   **    **      
    0xF8, 0x01,         //    ******       
    0xF0, 0x00,         //     ****        
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 49
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xC0, 0x00,         //       **        
    0xF0, 0x00,         //     ****        
    0xF8, 0x00,         //    *****        
    0xDC, 0x00,         //   *** **        
    0xC8, 0x00,         //    *  **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 50
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xF0, 0x01,         //     *****       
    0xF8, 0x03,         //    *******      
    0x08, 0x07,         //    *    ***     
    0x00, 0x06,         //          **     
    0x00, 0x06,         //          **     
    0x00, 0x06,         //          **     
    0x00, 0x07,         //         ***     
    0x00, 0x03,         //         **      
    0x80, 0x01,         //        **       
    0xC0, 0x00,         //       **        
    0xE0, 0x00,         //      ***        
    0x60, 0x00,         //      **         
    0x30, 0x00,         //     **          
    0x18, 0x00,         //    **           
    0xFC, 0x0F,         //   **********    
    0xFC, 0x0F,         //   **********    
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 51
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xF0, 0x01,         //     *****       
    0xFC, 0x03,         //   ********      
    0x08, 0x07,         //    *    ***     
    0x00, 0x06,         //          **     
    0x00, 0x06,         //          **     
    0x00, 0x06,         //          **     
    0x00, 0x03,         //         **      
    0xF0, 0x00,         //     ****        
    0xF0, 0x03,         //     ******      
    0x00, 0x07,         //         ***     
    0x00, 0x06,         //          **     
    0x00, 0x06,         //          **     
    0x00, 0x06,         //          **     
    0x00, 0x07,         //         ***     
    0xFC, 0x03,         //   ********      
    0xF8, 0x00,         //    *****        
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 52
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x03,         //         **      
    0x80, 0x03,         //        ***      
    0xC0, 0x03,         //       ****      
    0xC0, 0x03,         //       ****      
    0x60, 0x03,         //      ** **      
    0x30, 0x03,         //     **  **      
    0x30, 0x03,         //     **  **      
    0x18, 0x03,         //    **   **      
    0x08, 0x03,         //    *    **      
    0x0C, 0x03,         //   **    **      
    0x06, 0x03,         //  **     **      
    0xFE, 0x0F,         //  ***********    
    0xFE, 0x0F,         //  ***********    
    0x00, 0x03,         //         **      
    0x00, 0x03,         //         **      
    0x00, 0x03,         //         **      
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 53
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xF8, 0x03,         //    *******      
    0xFC, 0x03,         //   ********      
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0xFC, 0x00,         //   ******        
    0xFC, 0x03,         //   ********      
    0x00, 0x07,         //         ***     
    0x00, 0x06,         //          **     
    0x00, 0x06,         //          **     
    0x00, 0x06,         //          **     
    0x00, 0x06,         //          **     
    0x00, 0x03,         //         **      
    0xFC, 0x03,         //   ********      
    0xF8, 0x00,         //    *****        
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 54
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xE0, 0x03,         //      *****      
    0xF0, 0x03,         //     ******      
    0x18, 0x00,         //    **           
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x06, 0x00,         //  **             
    0xF6, 0x01,         //  ** *****       
    0xFE, 0x03,         //  *********      
    0x0E, 0x07,         //  ***    ***     
    0x06, 0x06,         //  **      **     
    0x06, 0x06,         //  **      **     
    0x06, 0x06,         //  **      **     
    0x06, 0x06,         //  **      **     
    0x0C, 0x03,         //   **    **      
    0xF8, 0x03,         //    *******      
    0xF0, 0x00,         //     ****        
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 55
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xFE, 0x07,         //  **********     
    0xFE, 0x07,         //  **********     
    0x00, 0x06,         //          **     
    0x00, 0x03,         //         **      
    0x00, 0x03,         //         **      
    0x80, 0x01,         //        **       
    0x80, 0x01,         //        **       
    0x80, 0x01,         //        **       
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x30, 0x00,         //     **          
    0x30, 0x00,         //     **          
    0x30, 0x00,         //     **          
    0x18, 0x00,         //    **           
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 56
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xF0, 0x00,         //     ****        
    0xF8, 0x01,         //    ******       
    0x0C, 0x03,         //   **    **      
    0x0C, 0x03,         //   **    **      
    0x0C, 0x03,         //   **    **      
    0x0C, 0x03,         //   **    **      
    0xB8, 0x01,         //    *** **       
    0xF0, 0x00,         //     ****        
    0xF8, 0x01,         //    ******       
    0x0C, 0x03,         //   **    **      
    0x06, 0x06,         //  **      **     
    0x06, 0x06,         //  **      **     
    0x06, 0x06,         //  **      **     
    0x06, 0x07,         //  **     ***     
    0xFC, 0x03,         //   ********      
    0xF8, 0x01,         //    ******       
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 57
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xF0, 0x00,         //     ****        
    0xFC, 0x01,         //   *******       
    0x0C, 0x03,         //   **    **      
    0x06, 0x02,         //  **      *      
    0x06, 0x06,         //  **      **     
    0x06, 0x06,         //  **      **     
    0x06, 0x06,         //  **      **     
    0x0E, 0x07,         //  ***    ***     
    0xFC, 0x07,         //   *********     
    0xF8, 0x06,         //    ***** **     
    0x00, 0x06,         //          **     
    0x00, 0x03,         //         **      
    0x00, 0x03,         //         **      
    0x80, 0x01,         //        **       
    0xFC, 0x00,         //   ******        
    0x7C, 0x00,         //   *****         
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 58
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xE0, 0x00,         //      ***        
    0xE0, 0x00,         //      ***        
    0xE0, 0x00,         //      ***        
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xE0, 0x00,         //      ***        
    0xE0, 0x00,         //      ***        
    0xE0, 0x00,         //      ***        
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 59
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xE0, 0x00,         //      ***        
    0xE0, 0x00,         //      ***        
    0xE0, 0x00,         //      ***        
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xE0, 0x00,         //      ***        
    0xE0, 0x00,         //      ***        
    0x60, 0x00,         //      **         
    0x70, 0x00,         //     ***         
    0x30, 0x00,         //     **          
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 60
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x04,         //           *     
    0x00, 0x07,         //         ***     
    0xC0, 0x01,         //       ***       
    0x70, 0x00,         //     ***         
    0x1C, 0x00,         //   ***           
    0x1C, 0x00,         //   ***           
    0x70, 0x00,         //     ***         
    0xC0, 0x01,         //       ***       
    0x00, 0x07,         //         ***     
    0x00, 0x04,         //           *     
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 61
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xFC, 0x07,         //   *********     
    0xFC, 0x07,         //   *********     
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xFC, 0x07,         //   *********     
    0xFC, 0x07,         //   *********     
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 62
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x04, 0x00,         //   *             
    0x1C, 0x00,         //   ***           
    0x70, 0x00,         //     ***         
    0xC0, 0x01,         //       ***       
    0x00, 0x07,         //         ***     
    0x00, 0x07,         //         ***     
    0xC0, 0x01,         //       ***       
    0x70, 0x00,         //     ***         
    0x1C, 0x00,         //   ***           
    0x04, 0x00,         //   *             
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 63
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xF8, 0x01,         //    ******       
    0xFC, 0x03,         //   ********      
    0x00, 0x06,         //          **     
    0x00, 0x06,         //          **     
    0x00, 0x06,         //          **     
    0x00, 0x06,         //          **     
    0x00, 0x03,         //         **      
    0x80, 0x01,         //        **       
    0xC0, 0x00,         //       **        
    0x40, 0x00,         //       *         
    0x60, 0x00,         //      **         
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xE0, 0x00,         //      ***        
    0xE0, 0x00,         //      ***        
    0xE0, 0x00,         //      ***        
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 64
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xF0, 0x01,         //     *****       
    0x38, 0x07,         //    ***  ***     
    0x0C, 0x0C,         //   **      **    
    0x06, 0x08,         //  **        *    
    0x02, 0x18,         //  *         **   
    0xE3, 0x1B,         // **   ***** **   
    0x33, 0x1B,         // **  **  ** **   
    0x1B, 0x1B,         // ** **   ** **   
    0x1B, 0x1B,         // ** **   ** **   
    0x1B, 0x1B,         // ** **   ** **   
    0x1B, 0x1B,         // ** **   ** **   
    0xBB, 0x0A,         // ** *** * * *    
    0xF3, 0x0E,         // **  **** ***    
    0x02, 0x00,         //  *              
    0x06, 0x00,         //  **             
    0x0C, 0x00,         //   **            
    0x38, 0x07,         //    ***  ***     
    0xF0, 0x03,         //     ******      
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 65
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xE0, 0x00,         //      ***        
    0xE0, 0x00,         //      ***        
    0xA0, 0x00,         //      * *        
    0xB0, 0x01,         //     ** **       
    0xB0, 0x01,         //     ** **       
    0x10, 0x01,         //     *   *       
    0x18, 0x03,         //    **   **      
    0x18, 0x03,         //    **   **      
    0x08, 0x02,         //    *     *      
    0xFC, 0x07,         //   *********     
    0xFC, 0x07,         //   *********     
    0x04, 0x04,         //   *       *     
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x03, 0x18,         // **         **   
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 66
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xFE, 0x03,         //  *********      
    0xFE, 0x07,         //  **********     
    0x06, 0x0E,         //  **      ***    
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x06, 0x06,         //  **      **     
    0xFE, 0x03,         //  *********      
    0xFE, 0x07,         //  **********     
    0x06, 0x0E,         //  **      ***    
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x06, 0x0E,         //  **      ***    
    0xFE, 0x07,         //  **********     
    0xFE, 0x01,         //  ********       
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 67
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xE0, 0x07,         //      ******     
    0xF0, 0x0F,         //     ********    
    0x18, 0x00,         //    **           
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x06, 0x00,         //  **             
    0x06, 0x00,         //  **             
    0x06, 0x00,         //  **             
    0x06, 0x00,         //  **             
    0x06, 0x00,         //  **             
    0x06, 0x00,         //  **             
    0x0E, 0x00,         //  ***            
    0x0C, 0x00,         //   **            
    0x1C, 0x00,         //   ***           
    0xF8, 0x0F,         //    *********    
    0xE0, 0x0F,         //      *******    
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 68
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xFE, 0x00,         //  *******        
    0xFE, 0x01,         //  ********       
    0x06, 0x03,         //  **     **      
    0x06, 0x06,         //  **      **     
    0x06, 0x06,         //  **      **     
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x06, 0x06,         //  **      **     
    0x06, 0x06,         //  **      **     
    0x86, 0x03,         //  **    ***      
    0xFE, 0x01,         //  ********       
    0x7E, 0x00,         //  ******         
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 69
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xFC, 0x0F,         //   **********    
    0xFC, 0x0F,         //   **********    
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0xFC, 0x0F,         //   **********    
    0xFC, 0x0F,         //   **********    
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0xFC, 0x0F,         //   **********    
    0xFC, 0x0F,         //   **********    
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 70
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xFC, 0x0F,         //   **********    
    0xFC, 0x0F,         //   **********    
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0xFC, 0x0F,         //   **********    
    0xFC, 0x0F,         //   **********    
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 71
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xE0, 0x07,         //      ******     
    0xF8, 0x07,         //    ********     
    0x18, 0x00,         //    **           
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x06, 0x00,         //  **             
    0x06, 0x00,         //  **             
    0x86, 0x0F,         //  **    *****    
    0x86, 0x0F,         //  **    *****    
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x0E, 0x0C,         //  ***      **    
    0x0C, 0x0C,         //   **      **    
    0x1C, 0x0C,         //   ***     **    
    0xF8, 0x0F,         //    *********    
    0xE0, 0x07,         //      ******     
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 72
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0xFE, 0x0F,         //  ***********    
    0xFE, 0x0F,         //  ***********    
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 73
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xFC, 0x03,         //   ********      
    0xFC, 0x03,         //   ********      
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0xFC, 0x03,         //   ********      
    0xFC, 0x03,         //   ********      
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 74
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x03,         //         **      
    0x00, 0x03,         //         **      
    0x00, 0x03,         //         **      
    0x00, 0x03,         //         **      
    0x00, 0x03,         //         **      
    0x00, 0x03,         //         **      
    0x00, 0x03,         //         **      
    0x00, 0x03,         //         **      
    0x00, 0x03,         //         **      
    0x00, 0x03,         //         **      
    0x00, 0x03,         //         **      
    0x00, 0x03,         //         **      
    0x00, 0x03,         //         **      
    0x80, 0x01,         //        **       
    0xFE, 0x01,         //  ********       
    0x7E, 0x00,         //  ******         
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 75
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x0C, 0x0C,         //   **      **    
    0x0C, 0x06,         //   **     **     
    0x0C, 0x03,         //   **    **      
    0x8C, 0x01,         //   **   **       
    0x8C, 0x01,         //   **   **       
    0xCC, 0x00,         //   **  **        
    0x6C, 0x00,         //   ** **         
    0x7C, 0x00,         //   *****         
    0x5C, 0x00,         //   *** *         
    0xCC, 0x00,         //   **  **        
    0x8C, 0x01,         //   **   **       
    0x8C, 0x01,         //   **   **       
    0x0C, 0x03,         //   **    **      
    0x0C, 0x06,         //   **     **     
    0x0C, 0x06,         //   **     **     
    0x0C, 0x0C,         //   **      **    
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 76
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0xFC, 0x0F,         //   **********    
    0xFC, 0x0F,         //   **********    
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 77
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x06, 0x0C,         //  **       **    
    0x0E, 0x0E,         //  ***     ***    
    0x0E, 0x0E,         //  ***     ***    
    0x0E, 0x0E,         //  ***     ***    
    0x0E, 0x0E,         //  ***     ***    
    0x16, 0x0D,         //  ** *   * **    
    0x16, 0x0D,         //  ** *   * **    
    0x16, 0x0D,         //  ** *   * **    
    0x16, 0x0D,         //  ** *   * **    
    0xB6, 0x0D,         //  ** ** ** **    
    0xA6, 0x0C,         //  **  * *  **    
    0xA6, 0x0C,         //  **  * *  **    
    0xA6, 0x0C,         //  **  * *  **    
    0xE6, 0x0C,         //  **  ***  **    
    0xE6, 0x0C,         //  **  ***  **    
    0x46, 0x0C,         //  **   *   **    
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 78
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x06, 0x0C,         //  **       **    
    0x0E, 0x0C,         //  ***      **    
    0x0E, 0x0C,         //  ***      **    
    0x1E, 0x0C,         //  ****     **    
    0x16, 0x0C,         //  ** *     **    
    0x36, 0x0C,         //  ** **    **    
    0x66, 0x0C,         //  **  **   **    
    0x66, 0x0C,         //  **  **   **    
    0xC6, 0x0C,         //  **   **  **    
    0xC6, 0x0C,         //  **   **  **    
    0x86, 0x0D,         //  **    ** **    
    0x06, 0x0D,         //  **     * **    
    0x06, 0x0F,         //  **     ****    
    0x06, 0x0E,         //  **      ***    
    0x06, 0x0E,         //  **      ***    
    0x06, 0x0C,         //  **       **    
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 79
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xF0, 0x01,         //     *****       
    0xF8, 0x03,         //    *******      
    0x1C, 0x07,         //   ***   ***     
    0x0C, 0x06,         //   **     **     
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x0C, 0x06,         //   **     **     
    0x1C, 0x07,         //   ***   ***     
    0xF8, 0x03,         //    *******      
    0xF0, 0x01,         //     *****       
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 80
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xFC, 0x01,         //   *******       
    0xFC, 0x07,         //   *********     
    0x0C, 0x0E,         //   **     ***    
    0x0C, 0x0C,         //   **      **    
    0x0C, 0x0C,         //   **      **    
    0x0C, 0x0C,         //   **      **    
    0x0C, 0x0C,         //   **      **    
    0x0C, 0x06,         //   **     **     
    0xFC, 0x03,         //   ********      
    0xFC, 0x00,         //   ******        
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 81
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xF0, 0x01,         //     *****       
    0xF8, 0x03,         //    *******      
    0x1C, 0x07,         //   ***   ***     
    0x0C, 0x06,         //   **     **     
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x0C, 0x06,         //   **     **     
    0x1C, 0x07,         //   ***   ***     
    0xF8, 0x03,         //    *******      
    0xF0, 0x01,         //     *****       
    0x00, 0x03,         //         **      
    0x00, 0x07,         //         ***     
    0x00, 0x0E,         //          ***    
    0x00, 0x04,         //           *     
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 82
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xFC, 0x01,         //   *******       
    0xFC, 0x07,         //   *********     
    0x0C, 0x0E,         //   **     ***    
    0x0C, 0x0C,         //   **      **    
    0x0C, 0x0C,         //   **      **    
    0x0C, 0x0C,         //   **      **    
    0x0C, 0x0C,         //   **      **    
    0x0C, 0x06,         //   **     **     
    0xFC, 0x03,         //   ********      
    0xFC, 0x01,         //   *******       
    0x8C, 0x03,         //   **   ***      
    0x0C, 0x03,         //   **    **      
    0x0C, 0x06,         //   **     **     
    0x0C, 0x0E,         //   **     ***    
    0x0C, 0x0C,         //   **      **    
    0x0C, 0x18,         //   **       **   
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 83
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xF0, 0x03,         //     ******      
    0xF8, 0x07,         //    ********     
    0x1C, 0x00,         //   ***           
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x38, 0x00,         //    ***          
    0xF0, 0x00,         //     ****        
    0xE0, 0x03,         //      *****      
    0x00, 0x07,         //         ***     
    0x00, 0x06,         //          **     
    0x00, 0x06,         //          **     
    0x00, 0x06,         //          **     
    0x00, 0x07,         //         ***     
    0xFC, 0x03,         //   ********      
    0xF8, 0x01,         //    ******       
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 84
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xFE, 0x07,         //  **********     
    0xFE, 0x07,         //  **********     
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 85
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x0C, 0x06,         //   **     **     
    0xFC, 0x07,         //   *********     
    0xF0, 0x01,         //     *****       
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 86
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x03, 0x18,         // **         **   
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x0C, 0x06,         //   **     **     
    0x0C, 0x06,         //   **     **     
    0x0C, 0x06,         //   **     **     
    0x18, 0x03,         //    **   **      
    0x18, 0x03,         //    **   **      
    0x18, 0x03,         //    **   **      
    0xB0, 0x01,         //     ** **       
    0xB0, 0x01,         //     ** **       
    0xB0, 0x01,         //     ** **       
    0xA0, 0x00,         //      * *        
    0xE0, 0x00,         //      ***        
    0xE0, 0x00,         //      ***        
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 87
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x03, 0x18,         // **         **   
    0x03, 0x18,         // **         **   
    0x03, 0x18,         // **         **   
    0x02, 0x18,         //  *         **   
    0x02, 0x08,         //  *         *    
    0x46, 0x08,         //  **   *    *    
    0xE6, 0x0C,         //  **  ***  **    
    0xA6, 0x0C,         //  **  * *  **    
    0xA6, 0x0C,         //  **  * *  **    
    0xA6, 0x0C,         //  **  * *  **    
    0xB4, 0x0D,         //   * ** ** **    
    0x14, 0x05,         //   * *   * *     
    0x14, 0x05,         //   * *   * *     
    0x14, 0x05,         //   * *   * *     
    0x0C, 0x06,         //   **     **     
    0x0C, 0x06,         //   **     **     
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 88
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x06, 0x0C,         //  **       **    
    0x0C, 0x06,         //   **     **     
    0x0C, 0x06,         //   **     **     
    0x18, 0x03,         //    **   **      
    0xB8, 0x01,         //    *** **       
    0xB0, 0x01,         //     ** **       
    0xE0, 0x00,         //      ***        
    0xE0, 0x00,         //      ***        
    0xE0, 0x00,         //      ***        
    0xE0, 0x00,         //      ***        
    0xB0, 0x01,         //     ** **       
    0x98, 0x03,         //    **  ***      
    0x18, 0x03,         //    **   **      
    0x0C, 0x07,         //   **    ***     
    0x0C, 0x06,         //   **     **     
    0x06, 0x0E,         //  **      ***    
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 89
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x03, 0x0C,         // **        **    
    0x06, 0x06,         //  **      **     
    0x06, 0x06,         //  **      **     
    0x0C, 0x03,         //   **    **      
    0x0C, 0x03,         //   **    **      
    0x98, 0x01,         //    **  **       
    0x98, 0x01,         //    **  **       
    0xF0, 0x00,         //     ****        
    0xF0, 0x00,         //     ****        
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 90
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xFE, 0x0F,         //  ***********    
    0xFE, 0x0F,         //  ***********    
    0x00, 0x06,         //          **     
    0x00, 0x06,         //          **     
    0x00, 0x03,         //         **      
    0x80, 0x01,         //        **       
    0xC0, 0x01,         //       ***       
    0xC0, 0x00,         //       **        
    0x60, 0x00,         //      **         
    0x70, 0x00,         //     ***         
    0x30, 0x00,         //     **          
    0x18, 0x00,         //    **           
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0xFE, 0x0F,         //  ***********    
    0xFE, 0x0F,         //  ***********    
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 91
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xE0, 0x03,         //      *****      
    0xE0, 0x03,         //      *****      
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0xE0, 0x03,         //      *****      
    0xE0, 0x03,         //      *****      
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 92
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x0C, 0x00,         //   **            
    0x18, 0x00,         //    **           
    0x18, 0x00,         //    **           
    0x10, 0x00,         //     *           
    0x30, 0x00,         //     **          
    0x30, 0x00,         //     **          
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0x80, 0x01,         //        **       
    0x80, 0x01,         //        **       
    0x00, 0x01,         //         *       
    0x00, 0x03,         //         **      
    0x00, 0x03,         //         **      
    0x00, 0x06,         //          **     
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 93
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xF8, 0x00,         //    *****        
    0xF8, 0x00,         //    *****        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xF8, 0x00,         //    *****        
    0xF8, 0x00,         //    *****        
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 94
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x40, 0x00,         //       *         
    0xE0, 0x00,         //      ***        
    0xA0, 0x00,         //      * *        
    0xB0, 0x01,         //     ** **       
    0x10, 0x01,         //     *   *       
    0x18, 0x03,         //    **   **      
    0x08, 0x02,         //    *     *      
    0x0C, 0x06,         //   **     **     
    0x04, 0x04,         //   *       *     
    0x06, 0x0C,         //  **       **    
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 95
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xFF, 0x1F,         // *************   
    0xFF, 0x1F,         // *************   
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 96
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xE0, 0x00,         //      ***        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0x80, 0x01,         //        **       
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 97
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xF8, 0x01,         //    ******       
    0xFC, 0x03,         //   ********      
    0x00, 0x06,         //          **     
    0x00, 0x06,         //          **     
    0x00, 0x06,         //          **     
    0xF0, 0x07,         //     *******     
    0x3C, 0x06,         //   ****   **     
    0x06, 0x06,         //  **      **     
    0x06, 0x06,         //  **      **     
    0x06, 0x07,         //  **     ***     
    0xFC, 0x07,         //   *********     
    0x78, 0x06,         //    ****  **     
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 98
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0xEC, 0x03,         //   ** *****      
    0xFC, 0x07,         //   *********     
    0x1C, 0x06,         //   ***    **     
    0x0C, 0x0C,         //   **      **    
    0x0C, 0x0C,         //   **      **    
    0x0C, 0x0C,         //   **      **    
    0x0C, 0x0C,         //   **      **    
    0x0C, 0x0C,         //   **      **    
    0x0C, 0x0C,         //   **      **    
    0x1C, 0x06,         //   ***    **     
    0xFC, 0x07,         //   *********     
    0xEC, 0x03,         //   ** *****      
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 99
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xE0, 0x07,         //      ******     
    0xF0, 0x07,         //     *******     
    0x18, 0x00,         //    **           
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x18, 0x00,         //    **           
    0xF0, 0x07,         //     *******     
    0xE0, 0x07,         //      ******     
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 100
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x06,         //          **     
    0x00, 0x06,         //          **     
    0x00, 0x06,         //          **     
    0x00, 0x06,         //          **     
    0x00, 0x06,         //          **     
    0xF0, 0x06,         //     **** **     
    0xFC, 0x07,         //   *********     
    0x0C, 0x07,         //   **    ***     
    0x06, 0x06,         //  **      **     
    0x06, 0x06,         //  **      **     
    0x06, 0x06,         //  **      **     
    0x06, 0x06,         //  **      **     
    0x06, 0x06,         //  **      **     
    0x06, 0x06,         //  **      **     
    0x0C, 0x07,         //   **    ***     
    0xFC, 0x07,         //   *********     
    0xF8, 0x06,         //    ***** **     
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 101
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xF0, 0x01,         //     *****       
    0xF8, 0x07,         //    ********     
    0x0C, 0x06,         //   **     **     
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0xFE, 0x0F,         //  ***********    
    0xFE, 0x0F,         //  ***********    
    0x06, 0x00,         //  **             
    0x06, 0x00,         //  **             
    0x0C, 0x00,         //   **            
    0xF8, 0x07,         //    ********     
    0xF0, 0x07,         //     *******     
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 102
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x80, 0x0F,         //        *****    
    0xC0, 0x0F,         //       ******    
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0xFC, 0x07,         //   *********     
    0xFC, 0x07,         //   *********     
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 103
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xF0, 0x0F,         //     ********    
    0xB8, 0x03,         //    *** ***      
    0x0C, 0x06,         //   **     **     
    0x0C, 0x06,         //   **     **     
    0x0C, 0x06,         //   **     **     
    0x0C, 0x06,         //   **     **     
    0x18, 0x03,         //    **   **      
    0xF0, 0x01,         //     *****       
    0x18, 0x00,         //    **           
    0x18, 0x00,         //    **           
    0xF8, 0x07,         //    ********     
    0xFC, 0x0F,         //   **********    
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0xFC, 0x07,         //   *********     
    0xF8, 0x01,         //    ******       
    0x00, 0x00,         //                 

/***********************************
 * Character - 104
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0xEC, 0x01,         //   ** ****       
    0xFC, 0x03,         //   ********      
    0x1C, 0x06,         //   ***    **     
    0x0C, 0x06,         //   **     **     
    0x0C, 0x06,         //   **     **     
    0x0C, 0x06,         //   **     **     
    0x0C, 0x06,         //   **     **     
    0x0C, 0x06,         //   **     **     
    0x0C, 0x06,         //   **     **     
    0x0C, 0x06,         //   **     **     
    0x0C, 0x06,         //   **     **     
    0x0C, 0x06,         //   **     **     
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 105
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xF8, 0x00,         //    *****        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xE0, 0x00,         //      ***        
    0xFC, 0x0F,         //   **********    
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 106
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x80, 0x01,         //        **       
    0x80, 0x01,         //        **       
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xFC, 0x01,         //   *******       
    0xC0, 0x01,         //       ***       
    0x80, 0x01,         //        **       
    0x80, 0x01,         //        **       
    0x80, 0x01,         //        **       
    0x80, 0x01,         //        **       
    0x80, 0x01,         //        **       
    0x80, 0x01,         //        **       
    0x80, 0x01,         //        **       
    0x80, 0x01,         //        **       
    0x80, 0x01,         //        **       
    0x80, 0x01,         //        **       
    0x80, 0x01,         //        **       
    0x80, 0x01,         //        **       
    0x80, 0x01,         //        **       
    0xFE, 0x00,         //  *******        
    0x7E, 0x00,         //  ******         
    0x00, 0x00,         //                 

/***********************************
 * Character - 107
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x06,         //   **     **     
    0x0C, 0x03,         //   **    **      
    0x8C, 0x01,         //   **   **       
    0xCC, 0x00,         //   **  **        
    0x6C, 0x00,         //   ** **         
    0x7C, 0x00,         //   *****         
    0xFC, 0x00,         //   ******        
    0xCC, 0x00,         //   **  **        
    0x8C, 0x01,         //   **   **       
    0x0C, 0x03,         //   **    **      
    0x0C, 0x06,         //   **     **     
    0x0C, 0x0E,         //   **     ***    
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 108
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xF8, 0x00,         //    *****        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xE0, 0x00,         //      ***        
    0xFC, 0x0F,         //   **********    
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 109
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x36, 0x03,         //  ** **  **      
    0xFE, 0x07,         //  **********     
    0x66, 0x06,         //  **  **  **     
    0x66, 0x06,         //  **  **  **     
    0x66, 0x06,         //  **  **  **     
    0x66, 0x06,         //  **  **  **     
    0x66, 0x06,         //  **  **  **     
    0x66, 0x06,         //  **  **  **     
    0x66, 0x06,         //  **  **  **     
    0x66, 0x06,         //  **  **  **     
    0x66, 0x06,         //  **  **  **     
    0x66, 0x06,         //  **  **  **     
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 110
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xEC, 0x01,         //   ** ****       
    0xFC, 0x03,         //   ********      
    0x1C, 0x06,         //   ***    **     
    0x0C, 0x06,         //   **     **     
    0x0C, 0x06,         //   **     **     
    0x0C, 0x06,         //   **     **     
    0x0C, 0x06,         //   **     **     
    0x0C, 0x06,         //   **     **     
    0x0C, 0x06,         //   **     **     
    0x0C, 0x06,         //   **     **     
    0x0C, 0x06,         //   **     **     
    0x0C, 0x06,         //   **     **     
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 111
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xF0, 0x01,         //     *****       
    0xF8, 0x03,         //    *******      
    0x0C, 0x06,         //   **     **     
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x0C, 0x06,         //   **     **     
    0xF8, 0x03,         //    *******      
    0xF0, 0x01,         //     *****       
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 112
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xEC, 0x03,         //   ** *****      
    0xFC, 0x07,         //   *********     
    0x1C, 0x06,         //   ***    **     
    0x0C, 0x0C,         //   **      **    
    0x0C, 0x0C,         //   **      **    
    0x0C, 0x0C,         //   **      **    
    0x0C, 0x0C,         //   **      **    
    0x0C, 0x0C,         //   **      **    
    0x0C, 0x0C,         //   **      **    
    0x1C, 0x06,         //   ***    **     
    0xFC, 0x07,         //   *********     
    0xEC, 0x03,         //   ** *****      
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x00, 0x00,         //                 

/***********************************
 * Character - 113
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xF8, 0x06,         //    ***** **     
    0xFC, 0x07,         //   *********     
    0x0C, 0x07,         //   **    ***     
    0x06, 0x06,         //  **      **     
    0x06, 0x06,         //  **      **     
    0x06, 0x06,         //  **      **     
    0x06, 0x06,         //  **      **     
    0x06, 0x06,         //  **      **     
    0x06, 0x06,         //  **      **     
    0x0C, 0x07,         //   **    ***     
    0xFC, 0x07,         //   *********     
    0xF8, 0x06,         //    ***** **     
    0x00, 0x06,         //          **     
    0x00, 0x06,         //          **     
    0x00, 0x06,         //          **     
    0x00, 0x06,         //          **     
    0x00, 0x06,         //          **     
    0x00, 0x00,         //                 

/***********************************
 * Character - 114
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x98, 0x07,         //    **  ****     
    0xF8, 0x07,         //    ********     
    0x38, 0x00,         //    ***          
    0x18, 0x00,         //    **           
    0x18, 0x00,         //    **           
    0x18, 0x00,         //    **           
    0x18, 0x00,         //    **           
    0x18, 0x00,         //    **           
    0x18, 0x00,         //    **           
    0x18, 0x00,         //    **           
    0x18, 0x00,         //    **           
    0x18, 0x00,         //    **           
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 115
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xF0, 0x03,         //     ******      
    0xF8, 0x07,         //    ********     
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x1C, 0x00,         //   ***           
    0xF0, 0x00,         //     ****        
    0xC0, 0x03,         //       ****      
    0x00, 0x07,         //         ***     
    0x00, 0x06,         //          **     
    0x00, 0x06,         //          **     
    0xFC, 0x03,         //   ********      
    0xF8, 0x01,         //    ******       
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 116
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x40, 0x00,         //       *         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0xFC, 0x07,         //   *********     
    0xFC, 0x07,         //   *********     
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0xE0, 0x07,         //      ******     
    0xC0, 0x07,         //       *****     
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 117
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x0C, 0x06,         //   **     **     
    0x0C, 0x06,         //   **     **     
    0x0C, 0x06,         //   **     **     
    0x0C, 0x06,         //   **     **     
    0x0C, 0x06,         //   **     **     
    0x0C, 0x06,         //   **     **     
    0x0C, 0x06,         //   **     **     
    0x0C, 0x06,         //   **     **     
    0x0C, 0x06,         //   **     **     
    0x0C, 0x07,         //   **    ***     
    0xF8, 0x07,         //    ********     
    0xF0, 0x06,         //     **** **     
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 118
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x06, 0x0C,         //  **       **    
    0x0C, 0x06,         //   **     **     
    0x0C, 0x06,         //   **     **     
    0x0C, 0x06,         //   **     **     
    0x18, 0x03,         //    **   **      
    0x18, 0x03,         //    **   **      
    0x18, 0x03,         //    **   **      
    0xB0, 0x01,         //     ** **       
    0xB0, 0x01,         //     ** **       
    0xB0, 0x01,         //     ** **       
    0xA0, 0x00,         //      * *        
    0xE0, 0x00,         //      ***        
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 119
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x43, 0x18,         // **    *    **   
    0xE3, 0x18,         // **   ***   **   
    0xA2, 0x08,         //  *   * *   *    
    0xA2, 0x08,         //  *   * *   *    
    0xA6, 0x0C,         //  **  * *  **    
    0xB6, 0x0D,         //  ** ** ** **    
    0xB6, 0x0D,         //  ** ** ** **    
    0x14, 0x05,         //   * *   * *     
    0x14, 0x05,         //   * *   * *     
    0x14, 0x05,         //   * *   * *     
    0x1C, 0x07,         //   ***   ***     
    0x08, 0x02,         //    *     *      
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 120
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x0C, 0x06,         //   **     **     
    0x0C, 0x06,         //   **     **     
    0x18, 0x03,         //    **   **      
    0xB0, 0x01,         //     ** **       
    0xB0, 0x01,         //     ** **       
    0xE0, 0x00,         //      ***        
    0xE0, 0x00,         //      ***        
    0xB0, 0x01,         //     ** **       
    0x30, 0x03,         //     **  **      
    0x18, 0x03,         //    **   **      
    0x0C, 0x06,         //   **     **     
    0x06, 0x0C,         //  **       **    
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 121
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x06, 0x0C,         //  **       **    
    0x0C, 0x06,         //   **     **     
    0x0C, 0x06,         //   **     **     
    0x0C, 0x06,         //   **     **     
    0x18, 0x03,         //    **   **      
    0x18, 0x03,         //    **   **      
    0x10, 0x03,         //     *   **      
    0xB0, 0x01,         //     ** **       
    0xB0, 0x01,         //     ** **       
    0xA0, 0x00,         //      * *        
    0xE0, 0x00,         //      ***        
    0xE0, 0x00,         //      ***        
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x30, 0x00,         //     **          
    0x3E, 0x00,         //  *****          
    0x1E, 0x00,         //  ****           
    0x00, 0x00,         //                 

/***********************************
 * Character - 122
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xFC, 0x07,         //   *********     
    0xFC, 0x07,         //   *********     
    0x00, 0x03,         //         **      
    0x00, 0x03,         //         **      
    0x80, 0x01,         //        **       
    0xC0, 0x00,         //       **        
    0x60, 0x00,         //      **         
    0x30, 0x00,         //     **          
    0x30, 0x00,         //     **          
    0x18, 0x00,         //    **           
    0xFC, 0x07,         //   *********     
    0xFC, 0x07,         //   *********     
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 123
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x07,         //         ***     
    0x80, 0x07,         //        ****     
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0x70, 0x00,         //     ***         
    0x1C, 0x00,         //   ***           
    0x70, 0x00,         //     ***         
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0x80, 0x07,         //        ****     
    0x00, 0x07,         //         ***     
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 124
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0x00, 0x00,         //                 

/***********************************
 * Character - 125
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x1C, 0x00,         //   ***           
    0x3C, 0x00,         //   ****          
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0xC0, 0x01,         //       ***       
    0x00, 0x07,         //         ***     
    0xC0, 0x01,         //       ***       
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x3C, 0x00,         //   ****          
    0x1C, 0x00,         //   ***           
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 126
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x38, 0x00,         //    ***          
    0xFC, 0x07,         //   *********     
    0x80, 0x03,         //        ***      
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

};

/*********************************
 * TTF Font File Structure
 * Label: DroidSans_18
 * Description:  Height: 22 pixels, 1 bit per pixel, Range: ' ' to '~'
 ***********************************/

extern const char __DroidSans_18[] __attribute__((aligned(2)));

const FONT_FLASH DroidSans_18 =
{
    (FLASH | COMP_NONE),
    __DroidSans_18
};

const char __DroidSans_18[] __attribute__((aligned(2))) =
{
/****************************************
 * Font header
 ****************************************/
    0x00,           // Font ID
    0x00,           // Font information:  1 bit per pixel, Characters zero degress rotation
    0x20, 0x00,     // First Character
    0x7E, 0x00,     // Last Character
    0x16, 0x00,     // Height
/****************************************
 * Font Glyph Table
 ****************************************/
    0x05,              // width of the glyph
    0x84, 0x01, 0x00,  // Character - 32, offset (0x00000184)
    0x04,              // width of the glyph
    0x9A, 0x01, 0x00,  // Character - 33, offset (0x0000019A)
    0x07,              // width of the glyph
    0xB0, 0x01, 0x00,  // Character - 34, offset (0x000001B0)
    0x0C,              // width of the glyph
    0xC6, 0x01, 0x00,  // Character - 35, offset (0x000001C6)
    0x0A,              // width of the glyph
    0xF2, 0x01, 0x00,  // Character - 36, offset (0x000001F2)
    0x0F,              // width of the glyph
    0x1E, 0x02, 0x00,  // Character - 37, offset (0x0000021E)
    0x0D,              // width of the glyph
    0x4A, 0x02, 0x00,  // Character - 38, offset (0x0000024A)
    0x04,              // width of the glyph
    0x76, 0x02, 0x00,  // Character - 39, offset (0x00000276)
    0x05,              // width of the glyph
    0x8C, 0x02, 0x00,  // Character - 40, offset (0x0000028C)
    0x05,              // width of the glyph
    0xA2, 0x02, 0x00,  // Character - 41, offset (0x000002A2)
    0x0A,              // width of the glyph
    0xB8, 0x02, 0x00,  // Character - 42, offset (0x000002B8)
    0x0A,              // width of the glyph
    0xE4, 0x02, 0x00,  // Character - 43, offset (0x000002E4)
    0x04,              // width of the glyph
    0x10, 0x03, 0x00,  // Character - 44, offset (0x00000310)
    0x06,              // width of the glyph
    0x26, 0x03, 0x00,  // Character - 45, offset (0x00000326)
    0x04,              // width of the glyph
    0x3C, 0x03, 0x00,  // Character - 46, offset (0x0000033C)
    0x07,              // width of the glyph
    0x52, 0x03, 0x00,  // Character - 47, offset (0x00000352)
    0x0A,              // width of the glyph
    0x68, 0x03, 0x00,  // Character - 48, offset (0x00000368)
    0x0A,              // width of the glyph
    0x94, 0x03, 0x00,  // Character - 49, offset (0x00000394)
    0x0A,              // width of the glyph
    0xC0, 0x03, 0x00,  // Character - 50, offset (0x000003C0)
    0x0A,              // width of the glyph
    0xEC, 0x03, 0x00,  // Character - 51, offset (0x000003EC)
    0x0A,              // width of the glyph
    0x18, 0x04, 0x00,  // Character - 52, offset (0x00000418)
    0x0A,              // width of the glyph
    0x44, 0x04, 0x00,  // Character - 53, offset (0x00000444)
    0x0A,              // width of the glyph
    0x70, 0x04, 0x00,  // Character - 54, offset (0x00000470)
    0x0A,              // width of the glyph
    0x9C, 0x04, 0x00,  // Character - 55, offset (0x0000049C)
    0x0A,              // width of the glyph
    0xC8, 0x04, 0x00,  // Character - 56, offset (0x000004C8)
    0x0A,              // width of the glyph
    0xF4, 0x04, 0x00,  // Character - 57, offset (0x000004F4)
    0x04,              // width of the glyph
    0x20, 0x05, 0x00,  // Character - 58, offset (0x00000520)
    0x04,              // width of the glyph
    0x36, 0x05, 0x00,  // Character - 59, offset (0x00000536)
    0x0A,              // width of the glyph
    0x4C, 0x05, 0x00,  // Character - 60, offset (0x0000054C)
    0x0A,              // width of the glyph
    0x78, 0x05, 0x00,  // Character - 61, offset (0x00000578)
    0x0A,              // width of the glyph
    0xA4, 0x05, 0x00,  // Character - 62, offset (0x000005A4)
    0x08,              // width of the glyph
    0xD0, 0x05, 0x00,  // Character - 63, offset (0x000005D0)
    0x10,              // width of the glyph
    0xE6, 0x05, 0x00,  // Character - 64, offset (0x000005E6)
    0x0B,              // width of the glyph
    0x12, 0x06, 0x00,  // Character - 65, offset (0x00000612)
    0x0B,              // width of the glyph
    0x3E, 0x06, 0x00,  // Character - 66, offset (0x0000063E)
    0x0B,              // width of the glyph
    0x6A, 0x06, 0x00,  // Character - 67, offset (0x0000066A)
    0x0C,              // width of the glyph
    0x96, 0x06, 0x00,  // Character - 68, offset (0x00000696)
    0x0A,              // width of the glyph
    0xC2, 0x06, 0x00,  // Character - 69, offset (0x000006C2)
    0x09,              // width of the glyph
    0xEE, 0x06, 0x00,  // Character - 70, offset (0x000006EE)
    0x0C,              // width of the glyph
    0x1A, 0x07, 0x00,  // Character - 71, offset (0x0000071A)
    0x0D,              // width of the glyph
    0x46, 0x07, 0x00,  // Character - 72, offset (0x00000746)
    0x06,              // width of the glyph
    0x72, 0x07, 0x00,  // Character - 73, offset (0x00000772)
    0x05,              // width of the glyph
    0x88, 0x07, 0x00,  // Character - 74, offset (0x00000788)
    0x0A,              // width of the glyph
    0x9E, 0x07, 0x00,  // Character - 75, offset (0x0000079E)
    0x09,              // width of the glyph
    0xCA, 0x07, 0x00,  // Character - 76, offset (0x000007CA)
    0x10,              // width of the glyph
    0xF6, 0x07, 0x00,  // Character - 77, offset (0x000007F6)
    0x0D,              // width of the glyph
    0x22, 0x08, 0x00,  // Character - 78, offset (0x00000822)
    0x0D,              // width of the glyph
    0x4E, 0x08, 0x00,  // Character - 79, offset (0x0000084E)
    0x0B,              // width of the glyph
    0x7A, 0x08, 0x00,  // Character - 80, offset (0x0000087A)
    0x0D,              // width of the glyph
    0xA6, 0x08, 0x00,  // Character - 81, offset (0x000008A6)
    0x0B,              // width of the glyph
    0xD2, 0x08, 0x00,  // Character - 82, offset (0x000008D2)
    0x09,              // width of the glyph
    0xFE, 0x08, 0x00,  // Character - 83, offset (0x000008FE)
    0x0A,              // width of the glyph
    0x2A, 0x09, 0x00,  // Character - 84, offset (0x0000092A)
    0x0D,              // width of the glyph
    0x56, 0x09, 0x00,  // Character - 85, offset (0x00000956)
    0x0A,              // width of the glyph
    0x82, 0x09, 0x00,  // Character - 86, offset (0x00000982)
    0x10,              // width of the glyph
    0xAE, 0x09, 0x00,  // Character - 87, offset (0x000009AE)
    0x0A,              // width of the glyph
    0xDA, 0x09, 0x00,  // Character - 88, offset (0x000009DA)
    0x0A,              // width of the glyph
    0x06, 0x0A, 0x00,  // Character - 89, offset (0x00000A06)
    0x0A,              // width of the glyph
    0x32, 0x0A, 0x00,  // Character - 90, offset (0x00000A32)
    0x05,              // width of the glyph
    0x5E, 0x0A, 0x00,  // Character - 91, offset (0x00000A5E)
    0x07,              // width of the glyph
    0x74, 0x0A, 0x00,  // Character - 92, offset (0x00000A74)
    0x05,              // width of the glyph
    0x8A, 0x0A, 0x00,  // Character - 93, offset (0x00000A8A)
    0x0A,              // width of the glyph
    0xA0, 0x0A, 0x00,  // Character - 94, offset (0x00000AA0)
    0x07,              // width of the glyph
    0xCC, 0x0A, 0x00,  // Character - 95, offset (0x00000ACC)
    0x0A,              // width of the glyph
    0xE2, 0x0A, 0x00,  // Character - 96, offset (0x00000AE2)
    0x0A,              // width of the glyph
    0x0E, 0x0B, 0x00,  // Character - 97, offset (0x00000B0E)
    0x0B,              // width of the glyph
    0x3A, 0x0B, 0x00,  // Character - 98, offset (0x00000B3A)
    0x08,              // width of the glyph
    0x66, 0x0B, 0x00,  // Character - 99, offset (0x00000B66)
    0x0B,              // width of the glyph
    0x7C, 0x0B, 0x00,  // Character - 100, offset (0x00000B7C)
    0x0A,              // width of the glyph
    0xA8, 0x0B, 0x00,  // Character - 101, offset (0x00000BA8)
    0x07,              // width of the glyph
    0xD4, 0x0B, 0x00,  // Character - 102, offset (0x00000BD4)
    0x0A,              // width of the glyph
    0xEA, 0x0B, 0x00,  // Character - 103, offset (0x00000BEA)
    0x0B,              // width of the glyph
    0x16, 0x0C, 0x00,  // Character - 104, offset (0x00000C16)
    0x05,              // width of the glyph
    0x42, 0x0C, 0x00,  // Character - 105, offset (0x00000C42)
    0x05,              // width of the glyph
    0x58, 0x0C, 0x00,  // Character - 106, offset (0x00000C58)
    0x09,              // width of the glyph
    0x6E, 0x0C, 0x00,  // Character - 107, offset (0x00000C6E)
    0x05,              // width of the glyph
    0x9A, 0x0C, 0x00,  // Character - 108, offset (0x00000C9A)
    0x10,              // width of the glyph
    0xB0, 0x0C, 0x00,  // Character - 109, offset (0x00000CB0)
    0x0B,              // width of the glyph
    0xDC, 0x0C, 0x00,  // Character - 110, offset (0x00000CDC)
    0x0A,              // width of the glyph
    0x08, 0x0D, 0x00,  // Character - 111, offset (0x00000D08)
    0x0B,              // width of the glyph
    0x34, 0x0D, 0x00,  // Character - 112, offset (0x00000D34)
    0x0B,              // width of the glyph
    0x60, 0x0D, 0x00,  // Character - 113, offset (0x00000D60)
    0x07,              // width of the glyph
    0x8C, 0x0D, 0x00,  // Character - 114, offset (0x00000D8C)
    0x09,              // width of the glyph
    0xA2, 0x0D, 0x00,  // Character - 115, offset (0x00000DA2)
    0x06,              // width of the glyph
    0xCE, 0x0D, 0x00,  // Character - 116, offset (0x00000DCE)
    0x0B,              // width of the glyph
    0xE4, 0x0D, 0x00,  // Character - 117, offset (0x00000DE4)
    0x0A,              // width of the glyph
    0x10, 0x0E, 0x00,  // Character - 118, offset (0x00000E10)
    0x0D,              // width of the glyph
    0x3C, 0x0E, 0x00,  // Character - 119, offset (0x00000E3C)
    0x09,              // width of the glyph
    0x68, 0x0E, 0x00,  // Character - 120, offset (0x00000E68)
    0x0A,              // width of the glyph
    0x94, 0x0E, 0x00,  // Character - 121, offset (0x00000E94)
    0x08,              // width of the glyph
    0xC0, 0x0E, 0x00,  // Character - 122, offset (0x00000EC0)
    0x06,              // width of the glyph
    0xD6, 0x0E, 0x00,  // Character - 123, offset (0x00000ED6)
    0x0A,              // width of the glyph
    0xEC, 0x0E, 0x00,  // Character - 124, offset (0x00000EEC)
    0x06,              // width of the glyph
    0x18, 0x0F, 0x00,  // Character - 125, offset (0x00000F18)
    0x0A,              // width of the glyph
    0x2E, 0x0F, 0x00,  // Character - 126, offset (0x00000F2E)
/***********************************
 * Font Characters
 ***********************************/
/***********************************
 * Character - 32
 ***********************************/
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
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 33
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x00,         //         
    0x06,         //  **     
    0x06,         //  **     
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 34
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x36,         //  ** **  
    0x36,         //  ** **  
    0x36,         //  ** **  
    0x12,         //  *  *   
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

/***********************************
 * Character - 35
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x10, 0x02,         //     *    *      
    0x10, 0x02,         //     *    *      
    0x10, 0x03,         //     *   **      
    0x18, 0x01,         //    **   *       
    0xFE, 0x0F,         //  ***********    
    0x08, 0x01,         //    *    *       
    0x08, 0x01,         //    *    *       
    0x08, 0x01,         //    *    *       
    0xFF, 0x07,         // ***********     
    0x8C, 0x01,         //   **   **       
    0x8C, 0x00,         //   **   *        
    0x84, 0x00,         //   *    *        
    0x84, 0x00,         //   *    *        
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 36
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x10, 0x00,         //     *           
    0x10, 0x00,         //     *           
    0xFC, 0x00,         //   ******        
    0xDE, 0x00,         //  **** **        
    0x16, 0x00,         //  ** *           
    0x16, 0x00,         //  ** *           
    0x1C, 0x00,         //   ***           
    0x78, 0x00,         //    ****         
    0xD0, 0x00,         //     * **        
    0x90, 0x01,         //     *  **       
    0x90, 0x01,         //     *  **       
    0xD6, 0x00,         //  ** * **        
    0x7E, 0x00,         //  ******         
    0x10, 0x00,         //     *           
    0x10, 0x00,         //     *           
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 37
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x1C, 0x0C,         //   ***     **    
    0x36, 0x04,         //  ** **    *     
    0x22, 0x06,         //  *   *   **     
    0x22, 0x02,         //  *   *   *      
    0x22, 0x01,         //  *   *  *       
    0xB6, 0x01,         //  ** ** **       
    0x9C, 0x1C,         //   ***  *  ***   
    0xC0, 0x36,         //       ** ** **  
    0x40, 0x22,         //       *  *   *  
    0x20, 0x22,         //      *   *   *  
    0x30, 0x22,         //     **   *   *  
    0x10, 0x36,         //     *    ** **  
    0x18, 0x1C,         //    **     ***   
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 38
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xF8, 0x00,         //    *****        
    0xDC, 0x01,         //   *** ***       
    0x8C, 0x01,         //   **   **       
    0x8C, 0x01,         //   **   **       
    0xCC, 0x00,         //   **  **        
    0x78, 0x00,         //    ****         
    0x38, 0x00,         //    ***          
    0x6C, 0x0C,         //   ** **   **    
    0xC6, 0x0C,         //  **   **  **    
    0x86, 0x07,         //  **    ****     
    0x06, 0x03,         //  **     **      
    0xCC, 0x07,         //   **  *****     
    0xF8, 0x0C,         //    *****  **    
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 39
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
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
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 40
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x18,         //    **   
    0x08,         //    *    
    0x0C,         //   **    
    0x04,         //   *     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x04,         //   *     
    0x0C,         //   **    
    0x08,         //    *    
    0x18,         //    **   
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 41
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x03,         // **      
    0x02,         //  *      
    0x06,         //  **     
    0x04,         //   *     
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x04,         //   *     
    0x06,         //  **     
    0x02,         //  *      
    0x03,         // **      
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 42
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x30, 0x00,         //     **          
    0x30, 0x00,         //     **          
    0x30, 0x00,         //     **          
    0xFE, 0x01,         //  ********       
    0x30, 0x00,         //     **          
    0x78, 0x00,         //    ****         
    0xCC, 0x00,         //   **  **        
    0xCC, 0x00,         //   **  **        
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 43
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x10, 0x00,         //     *           
    0x10, 0x00,         //     *           
    0x10, 0x00,         //     *           
    0xFE, 0x01,         //  ********       
    0x10, 0x00,         //     *           
    0x10, 0x00,         //     *           
    0x10, 0x00,         //     *           
    0x10, 0x00,         //     *           
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 44
 ***********************************/
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
    0x06,         //  **     
    0x06,         //  **     
    0x03,         // **      
    0x01,         // *       
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 45
 ***********************************/
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
    0x1E,         //  ****   
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

/***********************************
 * Character - 46
 ***********************************/
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
    0x06,         //  **     
    0x06,         //  **     
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 47
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x60,         //      ** 
    0x20,         //      *  
    0x30,         //     **  
    0x30,         //     **  
    0x10,         //     *   
    0x18,         //    **   
    0x08,         //    *    
    0x0C,         //   **    
    0x04,         //   *     
    0x06,         //  **     
    0x02,         //  *      
    0x03,         // **      
    0x03,         // **      
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 48
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x78, 0x00,         //    ****         
    0xCC, 0x00,         //   **  **        
    0x84, 0x00,         //   *    *        
    0x86, 0x01,         //  **    **       
    0x86, 0x01,         //  **    **       
    0x86, 0x01,         //  **    **       
    0x86, 0x01,         //  **    **       
    0x86, 0x01,         //  **    **       
    0x86, 0x01,         //  **    **       
    0x86, 0x01,         //  **    **       
    0x84, 0x00,         //   *    *        
    0xCC, 0x00,         //   **  **        
    0x78, 0x00,         //    ****         
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 49
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x60, 0x00,         //      **         
    0x70, 0x00,         //     ***         
    0x7C, 0x00,         //   *****         
    0x64, 0x00,         //   *  **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 50
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x7C, 0x00,         //   *****         
    0xEE, 0x00,         //  *** ***        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0x60, 0x00,         //      **         
    0x30, 0x00,         //     **          
    0x10, 0x00,         //     *           
    0x18, 0x00,         //    **           
    0x0C, 0x00,         //   **            
    0x06, 0x00,         //  **             
    0xFE, 0x01,         //  ********       
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 51
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x7C, 0x00,         //   *****         
    0xCE, 0x01,         //  ***  ***       
    0x80, 0x01,         //        **       
    0x80, 0x01,         //        **       
    0x80, 0x01,         //        **       
    0xF8, 0x00,         //    *****        
    0xF8, 0x00,         //    *****        
    0x80, 0x01,         //        **       
    0x80, 0x01,         //        **       
    0x80, 0x01,         //        **       
    0x80, 0x01,         //        **       
    0xC6, 0x00,         //  **   **        
    0x7E, 0x00,         //  ******         
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 52
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xC0, 0x00,         //       **        
    0xE0, 0x00,         //      ***        
    0xF0, 0x00,         //     ****        
    0xD8, 0x00,         //    ** **        
    0xC8, 0x00,         //    *  **        
    0xCC, 0x00,         //   **  **        
    0xC6, 0x00,         //  **   **        
    0xC2, 0x00,         //  *    **        
    0xC3, 0x00,         // **    **        
    0xFF, 0x01,         // *********       
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 53
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xFE, 0x00,         //  *******        
    0x06, 0x00,         //  **             
    0x06, 0x00,         //  **             
    0x06, 0x00,         //  **             
    0x06, 0x00,         //  **             
    0x7E, 0x00,         //  ******         
    0xE0, 0x00,         //      ***        
    0x80, 0x01,         //        **       
    0x80, 0x01,         //        **       
    0x80, 0x01,         //        **       
    0x80, 0x01,         //        **       
    0xE6, 0x00,         //  **  ***        
    0x7E, 0x00,         //  ******         
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 54
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xF0, 0x00,         //     ****        
    0x18, 0x00,         //    **           
    0x0C, 0x00,         //   **            
    0x04, 0x00,         //   *             
    0x06, 0x00,         //  **             
    0x76, 0x00,         //  ** ***         
    0xCE, 0x00,         //  ***  **        
    0x86, 0x01,         //  **    **       
    0x86, 0x01,         //  **    **       
    0x86, 0x01,         //  **    **       
    0x84, 0x01,         //   *    **       
    0xCC, 0x00,         //   **  **        
    0x78, 0x00,         //    ****         
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 55
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xFE, 0x01,         //  ********       
    0x80, 0x01,         //        **       
    0x80, 0x01,         //        **       
    0x80, 0x00,         //        *        
    0xC0, 0x00,         //       **        
    0x40, 0x00,         //       *         
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x20, 0x00,         //      *          
    0x30, 0x00,         //     **          
    0x10, 0x00,         //     *           
    0x18, 0x00,         //    **           
    0x18, 0x00,         //    **           
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 56
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x78, 0x00,         //    ****         
    0xCE, 0x01,         //  ***  ***       
    0x86, 0x01,         //  **    **       
    0x86, 0x01,         //  **    **       
    0x86, 0x01,         //  **    **       
    0xFC, 0x00,         //   ******        
    0x78, 0x00,         //    ****         
    0xCC, 0x00,         //   **  **        
    0x86, 0x01,         //  **    **       
    0x86, 0x01,         //  **    **       
    0x86, 0x01,         //  **    **       
    0xCC, 0x00,         //   **  **        
    0x78, 0x00,         //    ****         
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 57
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x78, 0x00,         //    ****         
    0xCC, 0x00,         //   **  **        
    0x86, 0x00,         //  **    *        
    0x86, 0x01,         //  **    **       
    0x86, 0x01,         //  **    **       
    0x86, 0x01,         //  **    **       
    0xCC, 0x01,         //   **  ***       
    0xB8, 0x01,         //    *** **       
    0x80, 0x01,         //        **       
    0x80, 0x00,         //        *        
    0xC0, 0x00,         //       **        
    0x60, 0x00,         //      **         
    0x3C, 0x00,         //   ****          
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 58
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x06,         //  **     
    0x06,         //  **     
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x06,         //  **     
    0x06,         //  **     
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 59
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x06,         //  **     
    0x06,         //  **     
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x06,         //  **     
    0x06,         //  **     
    0x03,         // **      
    0x01,         // *       
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 60
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x01,         //         *       
    0xC0, 0x01,         //       ***       
    0x70, 0x00,         //     ***         
    0x1C, 0x00,         //   ***           
    0x06, 0x00,         //  **             
    0x1C, 0x00,         //   ***           
    0x70, 0x00,         //     ***         
    0xC0, 0x01,         //       ***       
    0x00, 0x01,         //         *       
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 61
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xFE, 0x01,         //  ********       
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xFE, 0x01,         //  ********       
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 62
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x02, 0x00,         //  *              
    0x0E, 0x00,         //  ***            
    0x38, 0x00,         //    ***          
    0xE0, 0x00,         //      ***        
    0x80, 0x01,         //        **       
    0xE0, 0x00,         //      ***        
    0x38, 0x00,         //    ***          
    0x0E, 0x00,         //  ***            
    0x02, 0x00,         //  *              
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 63
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x1E,         //  ****   
    0x33,         // **  **  
    0x60,         //      ** 
    0x60,         //      ** 
    0x60,         //      ** 
    0x60,         //      ** 
    0x30,         //     **  
    0x18,         //    **   
    0x0C,         //   **    
    0x0C,         //   **    
    0x00,         //         
    0x0C,         //   **    
    0x0C,         //   **    
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 64
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xC0, 0x07,         //       *****     
    0x30, 0x18,         //     **     **   
    0x18, 0x30,         //    **       **  
    0x0C, 0x20,         //   **         *  
    0x84, 0x67,         //   *    ****  ** 
    0x46, 0x44,         //  **   *   *   * 
    0x62, 0x44,         //  *   **   *   * 
    0x22, 0x44,         //  *   *    *   * 
    0x22, 0x66,         //  *   *   **  ** 
    0x62, 0x26,         //  *   **  **  *  
    0xC6, 0x19,         //  **   ***  **   
    0x04, 0x00,         //   *             
    0x0C, 0x00,         //   **            
    0x38, 0x0C,         //    ***    **    
    0xE0, 0x07,         //      ******     
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 65
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x20, 0x00,         //      *          
    0x70, 0x00,         //     ***         
    0x50, 0x00,         //     * *         
    0xD8, 0x00,         //    ** **        
    0xD8, 0x00,         //    ** **        
    0x88, 0x00,         //    *   *        
    0x8C, 0x01,         //   **   **       
    0x8C, 0x01,         //   **   **       
    0xFE, 0x03,         //  *********      
    0x06, 0x03,         //  **     **      
    0x02, 0x02,         //  *       *      
    0x03, 0x06,         // **       **     
    0x03, 0x06,         // **       **     
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 66
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xFC, 0x00,         //   ******        
    0x8C, 0x01,         //   **   **       
    0x0C, 0x03,         //   **    **      
    0x0C, 0x03,         //   **    **      
    0x0C, 0x03,         //   **    **      
    0x0C, 0x01,         //   **    *       
    0xFC, 0x00,         //   ******        
    0x8C, 0x01,         //   **   **       
    0x0C, 0x03,         //   **    **      
    0x0C, 0x03,         //   **    **      
    0x0C, 0x03,         //   **    **      
    0x8C, 0x01,         //   **   **       
    0xFC, 0x00,         //   ******        
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 67
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xF0, 0x01,         //     *****       
    0x38, 0x03,         //    ***  **      
    0x0C, 0x00,         //   **            
    0x06, 0x00,         //  **             
    0x06, 0x00,         //  **             
    0x06, 0x00,         //  **             
    0x06, 0x00,         //  **             
    0x06, 0x00,         //  **             
    0x06, 0x00,         //  **             
    0x06, 0x00,         //  **             
    0x0C, 0x00,         //   **            
    0x38, 0x03,         //    ***  **      
    0xF0, 0x03,         //     ******      
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 68
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xFC, 0x00,         //   ******        
    0x8C, 0x01,         //   **   **       
    0x0C, 0x03,         //   **    **      
    0x0C, 0x06,         //   **     **     
    0x0C, 0x06,         //   **     **     
    0x0C, 0x06,         //   **     **     
    0x0C, 0x06,         //   **     **     
    0x0C, 0x06,         //   **     **     
    0x0C, 0x06,         //   **     **     
    0x0C, 0x06,         //   **     **     
    0x0C, 0x03,         //   **    **      
    0xCC, 0x01,         //   **  ***       
    0xFC, 0x00,         //   ******        
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 69
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xFC, 0x01,         //   *******       
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0xFC, 0x01,         //   *******       
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0xFC, 0x01,         //   *******       
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 70
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xFC, 0x01,         //   *******       
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0xFC, 0x01,         //   *******       
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 71
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xF0, 0x03,         //     ******      
    0x38, 0x02,         //    ***   *      
    0x0C, 0x00,         //   **            
    0x04, 0x00,         //   *             
    0x06, 0x00,         //  **             
    0x06, 0x00,         //  **             
    0x86, 0x07,         //  **    ****     
    0x06, 0x06,         //  **      **     
    0x06, 0x06,         //  **      **     
    0x06, 0x06,         //  **      **     
    0x0C, 0x06,         //   **     **     
    0x38, 0x06,         //    ***   **     
    0xF0, 0x03,         //     ******      
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 72
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x0C, 0x06,         //   **     **     
    0x0C, 0x06,         //   **     **     
    0x0C, 0x06,         //   **     **     
    0x0C, 0x06,         //   **     **     
    0x0C, 0x06,         //   **     **     
    0xFC, 0x07,         //   *********     
    0x0C, 0x06,         //   **     **     
    0x0C, 0x06,         //   **     **     
    0x0C, 0x06,         //   **     **     
    0x0C, 0x06,         //   **     **     
    0x0C, 0x06,         //   **     **     
    0x0C, 0x06,         //   **     **     
    0x0C, 0x06,         //   **     **     
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 73
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x1E,         //  ****   
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x1E,         //  ****   
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 74
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x18,         //    **   
    0x18,         //    **   
    0x18,         //    **   
    0x18,         //    **   
    0x18,         //    **   
    0x18,         //    **   
    0x18,         //    **   
    0x18,         //    **   
    0x18,         //    **   
    0x18,         //    **   
    0x18,         //    **   
    0x18,         //    **   
    0x18,         //    **   
    0x18,         //    **   
    0x0C,         //   **    
    0x07,         // ***     
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 75
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x0C, 0x03,         //   **    **      
    0x8C, 0x01,         //   **   **       
    0x8C, 0x00,         //   **   *        
    0xCC, 0x00,         //   **  **        
    0x6C, 0x00,         //   ** **         
    0x3C, 0x00,         //   ****          
    0x3C, 0x00,         //   ****          
    0x6C, 0x00,         //   ** **         
    0xCC, 0x00,         //   **  **        
    0xCC, 0x00,         //   **  **        
    0x8C, 0x01,         //   **   **       
    0x0C, 0x01,         //   **    *       
    0x0C, 0x03,         //   **    **      
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 76
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0xFC, 0x01,         //   *******       
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 77
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x1C, 0x38,         //   ***      ***  
    0x14, 0x38,         //   * *      ***  
    0x1C, 0x38,         //   ***      ***  
    0x3C, 0x3C,         //   ****    ****  
    0x2C, 0x34,         //   ** *    * **  
    0x2C, 0x34,         //   ** *    * **  
    0x6C, 0x36,         //   ** **  ** **  
    0x6C, 0x32,         //   ** **  *  **  
    0x4C, 0x32,         //   **  *  *  **  
    0xCC, 0x33,         //   **  ****  **  
    0xCC, 0x31,         //   **  ***   **  
    0x8C, 0x31,         //   **   **   **  
    0x8C, 0x31,         //   **   **   **  
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 78
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x0C, 0x06,         //   **     **     
    0x1C, 0x06,         //   ***    **     
    0x1C, 0x06,         //   ***    **     
    0x3C, 0x06,         //   ****   **     
    0x2C, 0x06,         //   ** *   **     
    0x6C, 0x06,         //   ** **  **     
    0x4C, 0x06,         //   **  *  **     
    0xCC, 0x06,         //   **  ** **     
    0x8C, 0x06,         //   **   * **     
    0x8C, 0x07,         //   **   ****     
    0x0C, 0x07,         //   **    ***     
    0x0C, 0x07,         //   **    ***     
    0x0C, 0x06,         //   **     **     
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 79
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xF0, 0x01,         //     *****       
    0x18, 0x03,         //    **   **      
    0x0C, 0x06,         //   **     **     
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x0C, 0x06,         //   **     **     
    0x18, 0x03,         //    **   **      
    0xF0, 0x01,         //     *****       
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 80
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xFC, 0x00,         //   ******        
    0x8C, 0x01,         //   **   **       
    0x0C, 0x03,         //   **    **      
    0x0C, 0x03,         //   **    **      
    0x0C, 0x03,         //   **    **      
    0x0C, 0x03,         //   **    **      
    0xCC, 0x01,         //   **  ***       
    0xFC, 0x00,         //   ******        
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 81
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xF0, 0x01,         //     *****       
    0x18, 0x03,         //    **   **      
    0x0C, 0x06,         //   **     **     
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x06, 0x0C,         //  **       **    
    0x0C, 0x06,         //   **     **     
    0x18, 0x03,         //    **   **      
    0xF0, 0x01,         //     *****       
    0x80, 0x01,         //        **       
    0x00, 0x03,         //         **      
    0x00, 0x06,         //          **     
    0x00, 0x02,         //          *      
    0x00, 0x00,         //                 

/***********************************
 * Character - 82
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x7C, 0x00,         //   *****         
    0xCC, 0x00,         //   **  **        
    0x8C, 0x01,         //   **   **       
    0x8C, 0x01,         //   **   **       
    0x8C, 0x01,         //   **   **       
    0x8C, 0x01,         //   **   **       
    0xCC, 0x00,         //   **  **        
    0x7C, 0x00,         //   *****         
    0x4C, 0x00,         //   **  *         
    0xCC, 0x00,         //   **  **        
    0x8C, 0x01,         //   **   **       
    0x8C, 0x01,         //   **   **       
    0x0C, 0x03,         //   **    **      
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 83
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x78, 0x00,         //    ****         
    0x4E, 0x00,         //  ***  *         
    0x06, 0x00,         //  **             
    0x06, 0x00,         //  **             
    0x06, 0x00,         //  **             
    0x0C, 0x00,         //   **            
    0x38, 0x00,         //    ***          
    0x60, 0x00,         //      **         
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0x66, 0x00,         //  **  **         
    0x3E, 0x00,         //  *****          
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 84
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xFF, 0x03,         // **********      
    0x30, 0x00,         //     **          
    0x30, 0x00,         //     **          
    0x30, 0x00,         //     **          
    0x30, 0x00,         //     **          
    0x30, 0x00,         //     **          
    0x30, 0x00,         //     **          
    0x30, 0x00,         //     **          
    0x30, 0x00,         //     **          
    0x30, 0x00,         //     **          
    0x30, 0x00,         //     **          
    0x30, 0x00,         //     **          
    0x30, 0x00,         //     **          
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 85
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x0C, 0x06,         //   **     **     
    0x0C, 0x06,         //   **     **     
    0x0C, 0x06,         //   **     **     
    0x0C, 0x06,         //   **     **     
    0x0C, 0x06,         //   **     **     
    0x0C, 0x06,         //   **     **     
    0x0C, 0x06,         //   **     **     
    0x0C, 0x06,         //   **     **     
    0x0C, 0x06,         //   **     **     
    0x0C, 0x06,         //   **     **     
    0x0C, 0x06,         //   **     **     
    0x18, 0x03,         //    **   **      
    0xF0, 0x01,         //     *****       
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 86
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x03, 0x03,         // **      **      
    0x03, 0x03,         // **      **      
    0x02, 0x01,         //  *      *       
    0x86, 0x01,         //  **    **       
    0x86, 0x01,         //  **    **       
    0x84, 0x00,         //   *    *        
    0xCC, 0x00,         //   **  **        
    0xCC, 0x00,         //   **  **        
    0x48, 0x00,         //    *  *         
    0x78, 0x00,         //    ****         
    0x78, 0x00,         //    ****         
    0x30, 0x00,         //     **          
    0x30, 0x00,         //     **          
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 87
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x83, 0xC1,         // **     **     **
    0x83, 0xC1,         // **     **     **
    0xC3, 0x41,         // **    ***     * 
    0xC6, 0x63,         //  **   ****   ** 
    0x46, 0x62,         //  **   *  *   ** 
    0x46, 0x62,         //  **   *  *   ** 
    0x64, 0x22,         //   *  **  *   *  
    0x6C, 0x36,         //   ** **  ** **  
    0x2C, 0x34,         //   ** *    * **  
    0x28, 0x14,         //    * *    * *   
    0x28, 0x14,         //    * *    * *   
    0x38, 0x1C,         //    ***    ***   
    0x18, 0x08,         //    **      *    
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 88
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x03, 0x03,         // **      **      
    0x06, 0x01,         //  **     *       
    0x84, 0x01,         //   *    **       
    0xCC, 0x00,         //   **  **        
    0x78, 0x00,         //    ****         
    0x30, 0x00,         //     **          
    0x30, 0x00,         //     **          
    0x78, 0x00,         //    ****         
    0x48, 0x00,         //    *  *         
    0xCC, 0x00,         //   **  **        
    0x86, 0x01,         //  **    **       
    0x82, 0x01,         //  *     **       
    0x03, 0x03,         // **      **      
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 89
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x03, 0x03,         // **      **      
    0x02, 0x01,         //  *      *       
    0x86, 0x01,         //  **    **       
    0x84, 0x00,         //   *    *        
    0xCC, 0x00,         //   **  **        
    0x68, 0x00,         //    * **         
    0x38, 0x00,         //    ***          
    0x30, 0x00,         //     **          
    0x30, 0x00,         //     **          
    0x30, 0x00,         //     **          
    0x30, 0x00,         //     **          
    0x30, 0x00,         //     **          
    0x30, 0x00,         //     **          
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 90
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xFE, 0x01,         //  ********       
    0x80, 0x01,         //        **       
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0x60, 0x00,         //      **         
    0x20, 0x00,         //      *          
    0x30, 0x00,         //     **          
    0x10, 0x00,         //     *           
    0x18, 0x00,         //    **           
    0x0C, 0x00,         //   **            
    0x0C, 0x00,         //   **            
    0x06, 0x00,         //  **             
    0xFE, 0x01,         //  ********       
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 91
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x1E,         //  ****   
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x1E,         //  ****   
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 92
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x03,         // **      
    0x03,         // **      
    0x02,         //  *      
    0x06,         //  **     
    0x04,         //   *     
    0x0C,         //   **    
    0x08,         //    *    
    0x18,         //    **   
    0x10,         //     *   
    0x30,         //     **  
    0x30,         //     **  
    0x20,         //      *  
    0x60,         //      ** 
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 93
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x0F,         // ****    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0F,         // ****    
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 94
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x30, 0x00,         //     **          
    0x30, 0x00,         //     **          
    0x58, 0x00,         //    ** *         
    0xC8, 0x00,         //    *  **        
    0x8C, 0x00,         //   **   *        
    0x86, 0x01,         //  **    **       
    0x02, 0x01,         //  *      *       
    0x03, 0x03,         // **      **      
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 95
 ***********************************/
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
    0x00,         //         
    0x7F,         // ******* 
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 96
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x18, 0x00,         //    **           
    0x10, 0x00,         //     *           
    0x20, 0x00,         //      *          
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 97
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x7C, 0x00,         //   *****         
    0xE6, 0x00,         //  **  ***        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xFC, 0x00,         //   ******        
    0xCE, 0x00,         //  ***  **        
    0xC3, 0x00,         // **    **        
    0xC3, 0x00,         // **    **        
    0xA7, 0x00,         // ***  * *        
    0x9E, 0x00,         //  ****  *        
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 98
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x06, 0x00,         //  **             
    0x06, 0x00,         //  **             
    0x06, 0x00,         //  **             
    0x06, 0x00,         //  **             
    0xF6, 0x00,         //  ** ****        
    0x8E, 0x01,         //  ***   **       
    0x06, 0x03,         //  **     **      
    0x06, 0x03,         //  **     **      
    0x06, 0x03,         //  **     **      
    0x06, 0x03,         //  **     **      
    0x06, 0x03,         //  **     **      
    0x06, 0x03,         //  **     **      
    0x8E, 0x01,         //  ***   **       
    0xF2, 0x00,         //  *  ****        
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 99
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x7C,         //   ***** 
    0x6E,         //  *** ** 
    0x03,         // **      
    0x03,         // **      
    0x03,         // **      
    0x03,         // **      
    0x03,         // **      
    0x03,         // **      
    0x6E,         //  *** ** 
    0x7C,         //   ***** 
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 100
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x80, 0x01,         //        **       
    0x80, 0x01,         //        **       
    0x80, 0x01,         //        **       
    0x80, 0x01,         //        **       
    0xBC, 0x01,         //   **** **       
    0xC6, 0x01,         //  **   ***       
    0x83, 0x01,         // **     **       
    0x83, 0x01,         // **     **       
    0x83, 0x01,         // **     **       
    0x83, 0x01,         // **     **       
    0x83, 0x01,         // **     **       
    0x83, 0x01,         // **     **       
    0xC6, 0x01,         //  **   ***       
    0x3C, 0x01,         //   ****  *       
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 101
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x7C, 0x00,         //   *****         
    0xCE, 0x00,         //  ***  **        
    0x82, 0x01,         //  *     **       
    0x83, 0x01,         // **     **       
    0xFF, 0x01,         // *********       
    0x03, 0x00,         // **              
    0x03, 0x00,         // **              
    0x02, 0x00,         //  *              
    0xCE, 0x01,         //  ***  ***       
    0xF8, 0x00,         //    *****        
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 102
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x78,         //    **** 
    0x4C,         //   **  * 
    0x0C,         //   **    
    0x0C,         //   **    
    0x3F,         // ******  
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 103
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xFC, 0x01,         //   *******       
    0xC6, 0x00,         //  **   **        
    0xC6, 0x00,         //  **   **        
    0xC6, 0x00,         //  **   **        
    0xCE, 0x00,         //  ***  **        
    0x7C, 0x00,         //   *****         
    0x06, 0x00,         //  **             
    0x02, 0x00,         //  *              
    0xFE, 0x00,         //  *******        
    0xC6, 0x01,         //  **   ***       
    0x83, 0x01,         // **     **       
    0x83, 0x01,         // **     **       
    0xC3, 0x00,         // **    **        
    0x7E, 0x00,         //  ******         
    0x00, 0x00,         //                 

/***********************************
 * Character - 104
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x06, 0x00,         //  **             
    0x06, 0x00,         //  **             
    0x06, 0x00,         //  **             
    0x06, 0x00,         //  **             
    0xF6, 0x00,         //  ** ****        
    0xCE, 0x01,         //  ***  ***       
    0x86, 0x01,         //  **    **       
    0x86, 0x01,         //  **    **       
    0x86, 0x01,         //  **    **       
    0x86, 0x01,         //  **    **       
    0x86, 0x01,         //  **    **       
    0x86, 0x01,         //  **    **       
    0x86, 0x01,         //  **    **       
    0x86, 0x01,         //  **    **       
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 105
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x06,         //  **     
    0x06,         //  **     
    0x00,         //         
    0x00,         //         
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 106
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x0C,         //   **    
    0x0C,         //   **    
    0x00,         //         
    0x00,         //         
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x04,         //   *     
    0x07,         // ***     
    0x00,         //         

/***********************************
 * Character - 107
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x06, 0x00,         //  **             
    0x06, 0x00,         //  **             
    0x06, 0x00,         //  **             
    0x06, 0x00,         //  **             
    0x86, 0x01,         //  **    **       
    0xC6, 0x00,         //  **   **        
    0x66, 0x00,         //  **  **         
    0x36, 0x00,         //  ** **          
    0x1A, 0x00,         //  * **           
    0x3E, 0x00,         //  *****          
    0x66, 0x00,         //  **  **         
    0x66, 0x00,         //  **  **         
    0xC6, 0x00,         //  **   **        
    0x86, 0x01,         //  **    **       
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 108
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 109
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x72, 0x1E,         //  *  ***  ****   
    0xCE, 0x3B,         //  ***  **** ***  
    0x86, 0x31,         //  **    **   **  
    0x86, 0x30,         //  **    *    **  
    0x86, 0x30,         //  **    *    **  
    0x86, 0x30,         //  **    *    **  
    0x86, 0x30,         //  **    *    **  
    0x86, 0x30,         //  **    *    **  
    0x86, 0x30,         //  **    *    **  
    0x86, 0x30,         //  **    *    **  
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 110
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xF2, 0x00,         //  *  ****        
    0xCE, 0x01,         //  ***  ***       
    0x86, 0x01,         //  **    **       
    0x86, 0x01,         //  **    **       
    0x86, 0x01,         //  **    **       
    0x86, 0x01,         //  **    **       
    0x86, 0x01,         //  **    **       
    0x86, 0x01,         //  **    **       
    0x86, 0x01,         //  **    **       
    0x86, 0x01,         //  **    **       
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 111
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x7C, 0x00,         //   *****         
    0xC6, 0x00,         //  **   **        
    0x83, 0x01,         // **     **       
    0x83, 0x01,         // **     **       
    0x83, 0x01,         // **     **       
    0x83, 0x01,         // **     **       
    0x83, 0x01,         // **     **       
    0x82, 0x01,         //  *     **       
    0xC6, 0x00,         //  **   **        
    0x7C, 0x00,         //   *****         
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 112
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xF2, 0x00,         //  *  ****        
    0x8E, 0x01,         //  ***   **       
    0x06, 0x03,         //  **     **      
    0x06, 0x03,         //  **     **      
    0x06, 0x03,         //  **     **      
    0x06, 0x03,         //  **     **      
    0x06, 0x03,         //  **     **      
    0x06, 0x03,         //  **     **      
    0x8E, 0x01,         //  ***   **       
    0xF6, 0x00,         //  ** ****        
    0x06, 0x00,         //  **             
    0x06, 0x00,         //  **             
    0x06, 0x00,         //  **             
    0x06, 0x00,         //  **             
    0x00, 0x00,         //                 

/***********************************
 * Character - 113
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x3C, 0x01,         //   ****  *       
    0xC6, 0x01,         //  **   ***       
    0x83, 0x01,         // **     **       
    0x83, 0x01,         // **     **       
    0x83, 0x01,         // **     **       
    0x83, 0x01,         // **     **       
    0x83, 0x01,         // **     **       
    0x83, 0x01,         // **     **       
    0xC6, 0x01,         //  **   ***       
    0xBC, 0x01,         //   **** **       
    0x80, 0x01,         //        **       
    0x80, 0x01,         //        **       
    0x80, 0x01,         //        **       
    0x80, 0x01,         //        **       
    0x00, 0x00,         //                 

/***********************************
 * Character - 114
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x32,         //  *  **  
    0x2A,         //  * * *  
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 115
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x3C, 0x00,         //   ****          
    0x66, 0x00,         //  **  **         
    0x06, 0x00,         //  **             
    0x06, 0x00,         //  **             
    0x1C, 0x00,         //   ***           
    0x30, 0x00,         //     **          
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x62, 0x00,         //  *   **         
    0x3E, 0x00,         //  *****          
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 116
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x06,         //  **     
    0x06,         //  **     
    0x3F,         // ******  
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x3C,         //   ****  
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 117
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x86, 0x01,         //  **    **       
    0x86, 0x01,         //  **    **       
    0x86, 0x01,         //  **    **       
    0x86, 0x01,         //  **    **       
    0x86, 0x01,         //  **    **       
    0x86, 0x01,         //  **    **       
    0x86, 0x01,         //  **    **       
    0x86, 0x01,         //  **    **       
    0xCE, 0x01,         //  ***  ***       
    0x3C, 0x01,         //   ****  *       
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 118
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x83, 0x01,         // **     **       
    0x83, 0x01,         // **     **       
    0x82, 0x00,         //  *     *        
    0xC6, 0x00,         //  **   **        
    0xC6, 0x00,         //  **   **        
    0x44, 0x00,         //   *   *         
    0x6C, 0x00,         //   ** **         
    0x28, 0x00,         //    * *          
    0x28, 0x00,         //    * *          
    0x38, 0x00,         //    ***          
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 119
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x63, 0x08,         // **   **    *    
    0x63, 0x0C,         // **   **   **    
    0xE3, 0x0C,         // **   ***  **    
    0xF2, 0x04,         //  *  ****  *     
    0x92, 0x04,         //  *  *  *  *     
    0x96, 0x06,         //  ** *  * **     
    0x9E, 0x07,         //  ****  ****     
    0x9E, 0x07,         //  ****  ****     
    0x0C, 0x03,         //   **    **      
    0x0C, 0x03,         //   **    **      
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 120
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xC3, 0x00,         // **    **        
    0x66, 0x00,         //  **  **         
    0x24, 0x00,         //   *  *          
    0x3C, 0x00,         //   ****          
    0x18, 0x00,         //    **           
    0x18, 0x00,         //    **           
    0x3C, 0x00,         //   ****          
    0x24, 0x00,         //   *  *          
    0x66, 0x00,         //  **  **         
    0xC3, 0x00,         // **    **        
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 121
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x83, 0x01,         // **     **       
    0x83, 0x01,         // **     **       
    0x82, 0x00,         //  *     *        
    0xC6, 0x00,         //  **   **        
    0xC4, 0x00,         //   *   **        
    0x4C, 0x00,         //   **  *         
    0x6C, 0x00,         //   ** **         
    0x28, 0x00,         //    * *          
    0x28, 0x00,         //    * *          
    0x30, 0x00,         //     **          
    0x10, 0x00,         //     *           
    0x18, 0x00,         //    **           
    0x0C, 0x00,         //   **            
    0x07, 0x00,         // ***             
    0x00, 0x00,         //                 

/***********************************
 * Character - 122
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x7F,         // ******* 
    0x60,         //      ** 
    0x30,         //     **  
    0x10,         //     *   
    0x18,         //    **   
    0x0C,         //   **    
    0x04,         //   *     
    0x06,         //  **     
    0x03,         // **      
    0x7F,         // ******* 
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 123
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x30,         //     **  
    0x18,         //    **   
    0x18,         //    **   
    0x18,         //    **   
    0x18,         //    **   
    0x18,         //    **   
    0x08,         //    *    
    0x06,         //  **     
    0x0C,         //   **    
    0x18,         //    **   
    0x18,         //    **   
    0x18,         //    **   
    0x18,         //    **   
    0x18,         //    **   
    0x18,         //    **   
    0x30,         //     **  
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 124
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x10, 0x00,         //     *           
    0x10, 0x00,         //     *           
    0x10, 0x00,         //     *           
    0x10, 0x00,         //     *           
    0x10, 0x00,         //     *           
    0x10, 0x00,         //     *           
    0x10, 0x00,         //     *           
    0x10, 0x00,         //     *           
    0x10, 0x00,         //     *           
    0x10, 0x00,         //     *           
    0x10, 0x00,         //     *           
    0x10, 0x00,         //     *           
    0x10, 0x00,         //     *           
    0x10, 0x00,         //     *           
    0x10, 0x00,         //     *           
    0x10, 0x00,         //     *           
    0x10, 0x00,         //     *           
    0x10, 0x00,         //     *           
    0x00, 0x00,         //                 

/***********************************
 * Character - 125
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x03,         // **      
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x04,         //   *     
    0x18,         //    **   
    0x0C,         //   **    
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x03,         // **      
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 126
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x1C, 0x00,         //   ***           
    0x32, 0x01,         //  *  **  *       
    0xE0, 0x00,         //      ***        
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

};

/*********************************
 * TTF Font File Structure
 * Label: DroidSans_Bold_14
 * Description:  Height: 17 pixels, 1 bit per pixel, Range: ' ' to '~'
 ***********************************/

extern const char __DroidSans_Bold_14[] __attribute__((aligned(2)));

const FONT_FLASH DroidSans_Bold_14 =
{
    (FLASH | COMP_NONE),
    __DroidSans_Bold_14
};

const char __DroidSans_Bold_14[] __attribute__((aligned(2))) =
{
/****************************************
 * Font header
 ****************************************/
    0x00,           // Font ID
    0x00,           // Font information:  1 bit per pixel, Characters zero degress rotation
    0x20, 0x00,     // First Character
    0x7E, 0x00,     // Last Character
    0x11, 0x00,     // Height
/****************************************
 * Font Glyph Table
 ****************************************/
    0x04,              // width of the glyph
    0x84, 0x01, 0x00,  // Character - 32, offset (0x00000184)
    0x04,              // width of the glyph
    0x95, 0x01, 0x00,  // Character - 33, offset (0x00000195)
    0x07,              // width of the glyph
    0xA6, 0x01, 0x00,  // Character - 34, offset (0x000001A6)
    0x09,              // width of the glyph
    0xB7, 0x01, 0x00,  // Character - 35, offset (0x000001B7)
    0x08,              // width of the glyph
    0xD9, 0x01, 0x00,  // Character - 36, offset (0x000001D9)
    0x0C,              // width of the glyph
    0xEA, 0x01, 0x00,  // Character - 37, offset (0x000001EA)
    0x0A,              // width of the glyph
    0x0C, 0x02, 0x00,  // Character - 38, offset (0x0000020C)
    0x04,              // width of the glyph
    0x2E, 0x02, 0x00,  // Character - 39, offset (0x0000022E)
    0x05,              // width of the glyph
    0x3F, 0x02, 0x00,  // Character - 40, offset (0x0000023F)
    0x05,              // width of the glyph
    0x50, 0x02, 0x00,  // Character - 41, offset (0x00000250)
    0x08,              // width of the glyph
    0x61, 0x02, 0x00,  // Character - 42, offset (0x00000261)
    0x08,              // width of the glyph
    0x72, 0x02, 0x00,  // Character - 43, offset (0x00000272)
    0x04,              // width of the glyph
    0x83, 0x02, 0x00,  // Character - 44, offset (0x00000283)
    0x05,              // width of the glyph
    0x94, 0x02, 0x00,  // Character - 45, offset (0x00000294)
    0x04,              // width of the glyph
    0xA5, 0x02, 0x00,  // Character - 46, offset (0x000002A5)
    0x06,              // width of the glyph
    0xB6, 0x02, 0x00,  // Character - 47, offset (0x000002B6)
    0x08,              // width of the glyph
    0xC7, 0x02, 0x00,  // Character - 48, offset (0x000002C7)
    0x08,              // width of the glyph
    0xD8, 0x02, 0x00,  // Character - 49, offset (0x000002D8)
    0x08,              // width of the glyph
    0xE9, 0x02, 0x00,  // Character - 50, offset (0x000002E9)
    0x08,              // width of the glyph
    0xFA, 0x02, 0x00,  // Character - 51, offset (0x000002FA)
    0x08,              // width of the glyph
    0x0B, 0x03, 0x00,  // Character - 52, offset (0x0000030B)
    0x08,              // width of the glyph
    0x1C, 0x03, 0x00,  // Character - 53, offset (0x0000031C)
    0x08,              // width of the glyph
    0x2D, 0x03, 0x00,  // Character - 54, offset (0x0000032D)
    0x08,              // width of the glyph
    0x3E, 0x03, 0x00,  // Character - 55, offset (0x0000033E)
    0x08,              // width of the glyph
    0x4F, 0x03, 0x00,  // Character - 56, offset (0x0000034F)
    0x08,              // width of the glyph
    0x60, 0x03, 0x00,  // Character - 57, offset (0x00000360)
    0x04,              // width of the glyph
    0x71, 0x03, 0x00,  // Character - 58, offset (0x00000371)
    0x04,              // width of the glyph
    0x82, 0x03, 0x00,  // Character - 59, offset (0x00000382)
    0x08,              // width of the glyph
    0x93, 0x03, 0x00,  // Character - 60, offset (0x00000393)
    0x08,              // width of the glyph
    0xA4, 0x03, 0x00,  // Character - 61, offset (0x000003A4)
    0x08,              // width of the glyph
    0xB5, 0x03, 0x00,  // Character - 62, offset (0x000003B5)
    0x06,              // width of the glyph
    0xC6, 0x03, 0x00,  // Character - 63, offset (0x000003C6)
    0x0C,              // width of the glyph
    0xD7, 0x03, 0x00,  // Character - 64, offset (0x000003D7)
    0x09,              // width of the glyph
    0xF9, 0x03, 0x00,  // Character - 65, offset (0x000003F9)
    0x09,              // width of the glyph
    0x1B, 0x04, 0x00,  // Character - 66, offset (0x0000041B)
    0x09,              // width of the glyph
    0x3D, 0x04, 0x00,  // Character - 67, offset (0x0000043D)
    0x0A,              // width of the glyph
    0x5F, 0x04, 0x00,  // Character - 68, offset (0x0000045F)
    0x08,              // width of the glyph
    0x81, 0x04, 0x00,  // Character - 69, offset (0x00000481)
    0x08,              // width of the glyph
    0x92, 0x04, 0x00,  // Character - 70, offset (0x00000492)
    0x0A,              // width of the glyph
    0xA3, 0x04, 0x00,  // Character - 71, offset (0x000004A3)
    0x0A,              // width of the glyph
    0xC5, 0x04, 0x00,  // Character - 72, offset (0x000004C5)
    0x06,              // width of the glyph
    0xE7, 0x04, 0x00,  // Character - 73, offset (0x000004E7)
    0x05,              // width of the glyph
    0xF8, 0x04, 0x00,  // Character - 74, offset (0x000004F8)
    0x09,              // width of the glyph
    0x09, 0x05, 0x00,  // Character - 75, offset (0x00000509)
    0x08,              // width of the glyph
    0x2B, 0x05, 0x00,  // Character - 76, offset (0x0000052B)
    0x0D,              // width of the glyph
    0x3C, 0x05, 0x00,  // Character - 77, offset (0x0000053C)
    0x0A,              // width of the glyph
    0x5E, 0x05, 0x00,  // Character - 78, offset (0x0000055E)
    0x0B,              // width of the glyph
    0x80, 0x05, 0x00,  // Character - 79, offset (0x00000580)
    0x09,              // width of the glyph
    0xA2, 0x05, 0x00,  // Character - 80, offset (0x000005A2)
    0x0B,              // width of the glyph
    0xC4, 0x05, 0x00,  // Character - 81, offset (0x000005C4)
    0x09,              // width of the glyph
    0xE6, 0x05, 0x00,  // Character - 82, offset (0x000005E6)
    0x07,              // width of the glyph
    0x08, 0x06, 0x00,  // Character - 83, offset (0x00000608)
    0x08,              // width of the glyph
    0x19, 0x06, 0x00,  // Character - 84, offset (0x00000619)
    0x0A,              // width of the glyph
    0x2A, 0x06, 0x00,  // Character - 85, offset (0x0000062A)
    0x09,              // width of the glyph
    0x4C, 0x06, 0x00,  // Character - 86, offset (0x0000064C)
    0x0D,              // width of the glyph
    0x6E, 0x06, 0x00,  // Character - 87, offset (0x0000066E)
    0x09,              // width of the glyph
    0x90, 0x06, 0x00,  // Character - 88, offset (0x00000690)
    0x08,              // width of the glyph
    0xB2, 0x06, 0x00,  // Character - 89, offset (0x000006B2)
    0x07,              // width of the glyph
    0xC3, 0x06, 0x00,  // Character - 90, offset (0x000006C3)
    0x05,              // width of the glyph
    0xD4, 0x06, 0x00,  // Character - 91, offset (0x000006D4)
    0x06,              // width of the glyph
    0xE5, 0x06, 0x00,  // Character - 92, offset (0x000006E5)
    0x05,              // width of the glyph
    0xF6, 0x06, 0x00,  // Character - 93, offset (0x000006F6)
    0x07,              // width of the glyph
    0x07, 0x07, 0x00,  // Character - 94, offset (0x00000707)
    0x06,              // width of the glyph
    0x18, 0x07, 0x00,  // Character - 95, offset (0x00000718)
    0x08,              // width of the glyph
    0x29, 0x07, 0x00,  // Character - 96, offset (0x00000729)
    0x08,              // width of the glyph
    0x3A, 0x07, 0x00,  // Character - 97, offset (0x0000073A)
    0x09,              // width of the glyph
    0x4B, 0x07, 0x00,  // Character - 98, offset (0x0000074B)
    0x07,              // width of the glyph
    0x6D, 0x07, 0x00,  // Character - 99, offset (0x0000076D)
    0x09,              // width of the glyph
    0x7E, 0x07, 0x00,  // Character - 100, offset (0x0000077E)
    0x08,              // width of the glyph
    0xA0, 0x07, 0x00,  // Character - 101, offset (0x000007A0)
    0x05,              // width of the glyph
    0xB1, 0x07, 0x00,  // Character - 102, offset (0x000007B1)
    0x08,              // width of the glyph
    0xC2, 0x07, 0x00,  // Character - 103, offset (0x000007C2)
    0x09,              // width of the glyph
    0xD3, 0x07, 0x00,  // Character - 104, offset (0x000007D3)
    0x04,              // width of the glyph
    0xF5, 0x07, 0x00,  // Character - 105, offset (0x000007F5)
    0x04,              // width of the glyph
    0x06, 0x08, 0x00,  // Character - 106, offset (0x00000806)
    0x08,              // width of the glyph
    0x17, 0x08, 0x00,  // Character - 107, offset (0x00000817)
    0x04,              // width of the glyph
    0x28, 0x08, 0x00,  // Character - 108, offset (0x00000828)
    0x0E,              // width of the glyph
    0x39, 0x08, 0x00,  // Character - 109, offset (0x00000839)
    0x09,              // width of the glyph
    0x5B, 0x08, 0x00,  // Character - 110, offset (0x0000085B)
    0x09,              // width of the glyph
    0x7D, 0x08, 0x00,  // Character - 111, offset (0x0000087D)
    0x09,              // width of the glyph
    0x9F, 0x08, 0x00,  // Character - 112, offset (0x0000089F)
    0x09,              // width of the glyph
    0xC1, 0x08, 0x00,  // Character - 113, offset (0x000008C1)
    0x06,              // width of the glyph
    0xE3, 0x08, 0x00,  // Character - 114, offset (0x000008E3)
    0x07,              // width of the glyph
    0xF4, 0x08, 0x00,  // Character - 115, offset (0x000008F4)
    0x07,              // width of the glyph
    0x05, 0x09, 0x00,  // Character - 116, offset (0x00000905)
    0x09,              // width of the glyph
    0x16, 0x09, 0x00,  // Character - 117, offset (0x00000916)
    0x08,              // width of the glyph
    0x38, 0x09, 0x00,  // Character - 118, offset (0x00000938)
    0x0B,              // width of the glyph
    0x49, 0x09, 0x00,  // Character - 119, offset (0x00000949)
    0x08,              // width of the glyph
    0x6B, 0x09, 0x00,  // Character - 120, offset (0x0000096B)
    0x08,              // width of the glyph
    0x7C, 0x09, 0x00,  // Character - 121, offset (0x0000097C)
    0x07,              // width of the glyph
    0x8D, 0x09, 0x00,  // Character - 122, offset (0x0000098D)
    0x05,              // width of the glyph
    0x9E, 0x09, 0x00,  // Character - 123, offset (0x0000099E)
    0x08,              // width of the glyph
    0xAF, 0x09, 0x00,  // Character - 124, offset (0x000009AF)
    0x05,              // width of the glyph
    0xC0, 0x09, 0x00,  // Character - 125, offset (0x000009C0)
    0x08,              // width of the glyph
    0xD1, 0x09, 0x00,  // Character - 126, offset (0x000009D1)
/***********************************
 * Font Characters
 ***********************************/
/***********************************
 * Character - 32
 ***********************************/
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

/***********************************
 * Character - 33
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x00,         //         
    0x06,         //  **     
    0x06,         //  **     
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 34
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x36,         //  ** **  
    0x36,         //  ** **  
    0x36,         //  ** **  
    0x36,         //  ** **  
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

/***********************************
 * Character - 35
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x78, 0x00,         //    ****         
    0x68, 0x00,         //    * **         
    0xFF, 0x00,         // ********        
    0xFF, 0x00,         // ********        
    0x2C, 0x00,         //   ** *          
    0x34, 0x00,         //   * **          
    0xFF, 0x00,         // ********        
    0xFF, 0x00,         // ********        
    0x16, 0x00,         //  ** *           
    0x1E, 0x00,         //  ****           
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 36
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x08,         //    *    
    0x08,         //    *    
    0x3E,         //  *****  
    0x3F,         // ******  
    0x0B,         // ** *    
    0x1F,         // *****   
    0x7C,         //   ***** 
    0x68,         //    * ** 
    0x7F,         // ******* 
    0x3F,         // ******  
    0x08,         //    *    
    0x08,         //    *    
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 37
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x0E, 0x01,         //  ***    *       
    0x9B, 0x00,         // ** **  *        
    0xDB, 0x00,         // ** ** **        
    0x5B, 0x00,         // ** ** *         
    0xFB, 0x03,         // ** *******      
    0xEE, 0x06,         //  *** *** **     
    0xD0, 0x06,         //     * ** **     
    0xD8, 0x06,         //    ** ** **     
    0xC8, 0x06,         //    *  ** **     
    0x84, 0x03,         //   *    ***      
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 38
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x38, 0x00,         //    ***          
    0x7C, 0x00,         //   *****         
    0x6C, 0x00,         //   ** **         
    0x6C, 0x00,         //   ** **         
    0x38, 0x00,         //    ***          
    0x3C, 0x03,         //   ****  **      
    0xF6, 0x01,         //  ** *****       
    0xE6, 0x01,         //  **  ****       
    0xFE, 0x01,         //  ********       
    0xFC, 0x03,         //   ********      
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 39
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
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

/***********************************
 * Character - 40
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x18,         //    **   
    0x0C,         //   **    
    0x0C,         //   **    
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x0C,         //   **    
    0x0C,         //   **    
    0x18,         //    **   
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 41
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x03,         // **      
    0x06,         //  **     
    0x04,         //   *     
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x04,         //   *     
    0x06,         //  **     
    0x03,         // **      
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 42
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x18,         //    **   
    0x18,         //    **   
    0x7E,         //  ****** 
    0x7E,         //  ****** 
    0x3C,         //   ****  
    0x3C,         //   ****  
    0x24,         //   *  *  
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 43
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x18,         //    **   
    0x18,         //    **   
    0x18,         //    **   
    0x7F,         // ******* 
    0x7F,         // ******* 
    0x18,         //    **   
    0x18,         //    **   
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 44
 ***********************************/
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
    0x06,         //  **     
    0x02,         //  *      
    0x03,         // **      
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 45
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x0F,         // ****    
    0x0F,         // ****    
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 46
 ***********************************/
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
    0x06,         //  **     
    0x06,         //  **     
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 47
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x30,         //     **  
    0x30,         //     **  
    0x18,         //    **   
    0x18,         //    **   
    0x0C,         //   **    
    0x0C,         //   **    
    0x06,         //  **     
    0x06,         //  **     
    0x03,         // **      
    0x03,         // **      
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 48
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x1C,         //   ***   
    0x3E,         //  *****  
    0x63,         // **   ** 
    0x63,         // **   ** 
    0x63,         // **   ** 
    0x63,         // **   ** 
    0x63,         // **   ** 
    0x63,         // **   ** 
    0x3E,         //  *****  
    0x1C,         //   ***   
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 49
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x18,         //    **   
    0x1E,         //  ****   
    0x1F,         // *****   
    0x1A,         //  * **   
    0x18,         //    **   
    0x18,         //    **   
    0x18,         //    **   
    0x18,         //    **   
    0x18,         //    **   
    0x18,         //    **   
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 50
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x3E,         //  *****  
    0x7F,         // ******* 
    0x62,         //  *   ** 
    0x60,         //      ** 
    0x30,         //     **  
    0x38,         //    ***  
    0x1C,         //   ***   
    0x06,         //  **     
    0x7F,         // ******* 
    0x7F,         // ******* 
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 51
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x3E,         //  *****  
    0x7F,         // ******* 
    0x60,         //      ** 
    0x60,         //      ** 
    0x1C,         //   ***   
    0x78,         //    **** 
    0x60,         //      ** 
    0x60,         //      ** 
    0x7F,         // ******* 
    0x1F,         // *****   
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 52
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x30,         //     **  
    0x38,         //    ***  
    0x3C,         //   ****  
    0x3C,         //   ****  
    0x36,         //  ** **  
    0x33,         // **  **  
    0x7F,         // ******* 
    0x7F,         // ******* 
    0x30,         //     **  
    0x30,         //     **  
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 53
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x3E,         //  *****  
    0x3E,         //  *****  
    0x06,         //  **     
    0x06,         //  **     
    0x3E,         //  *****  
    0x7E,         //  ****** 
    0x60,         //      ** 
    0x60,         //      ** 
    0x7F,         // ******* 
    0x1F,         // *****   
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 54
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x3C,         //   ****  
    0x3E,         //  *****  
    0x06,         //  **     
    0x03,         // **      
    0x3F,         // ******  
    0x7F,         // ******* 
    0x63,         // **   ** 
    0x63,         // **   ** 
    0x7E,         //  ****** 
    0x3C,         //   ****  
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 55
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x7F,         // ******* 
    0x7F,         // ******* 
    0x30,         //     **  
    0x30,         //     **  
    0x38,         //    ***  
    0x18,         //    **   
    0x18,         //    **   
    0x0C,         //   **    
    0x0C,         //   **    
    0x06,         //  **     
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 56
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x3E,         //  *****  
    0x7F,         // ******* 
    0x63,         // **   ** 
    0x77,         // *** *** 
    0x3E,         //  *****  
    0x3E,         //  *****  
    0x73,         // **  *** 
    0x63,         // **   ** 
    0x7F,         // ******* 
    0x3E,         //  *****  
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 57
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x1E,         //  ****   
    0x3F,         // ******  
    0x63,         // **   ** 
    0x63,         // **   ** 
    0x7F,         // ******* 
    0x7E,         //  ****** 
    0x60,         //      ** 
    0x30,         //     **  
    0x3E,         //  *****  
    0x1E,         //  ****   
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 58
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x06,         //  **     
    0x06,         //  **     
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x06,         //  **     
    0x06,         //  **     
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 59
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x06,         //  **     
    0x06,         //  **     
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x06,         //  **     
    0x02,         //  *      
    0x03,         // **      
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 60
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x40,         //       * 
    0x70,         //     *** 
    0x1C,         //   ***   
    0x06,         //  **     
    0x1C,         //   ***   
    0x70,         //     *** 
    0x40,         //       * 
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 61
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x7E,         //  ****** 
    0x7E,         //  ****** 
    0x00,         //         
    0x7E,         //  ****** 
    0x7E,         //  ****** 
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 62
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x02,         //  *      
    0x0E,         //  ***    
    0x38,         //    ***  
    0x60,         //      ** 
    0x38,         //    ***  
    0x0E,         //  ***    
    0x02,         //  *      
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 63
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x0E,         //  ***    
    0x1F,         // *****   
    0x18,         //    **   
    0x18,         //    **   
    0x0C,         //   **    
    0x06,         //  **     
    0x06,         //  **     
    0x00,         //         
    0x06,         //  **     
    0x06,         //  **     
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 64
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xF0, 0x01,         //     *****       
    0x18, 0x03,         //    **   **      
    0x0C, 0x06,         //   **     **     
    0xE6, 0x06,         //  **  *** **     
    0xB6, 0x06,         //  ** ** * **     
    0xB6, 0x06,         //  ** ** * **     
    0xF6, 0x06,         //  ** **** **     
    0xE6, 0x03,         //  **  *****      
    0x04, 0x00,         //   *             
    0x1C, 0x01,         //   ***   *       
    0xF0, 0x01,         //     *****       
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 65
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x38, 0x00,         //    ***          
    0x28, 0x00,         //    * *          
    0x6C, 0x00,         //   ** **         
    0x6C, 0x00,         //   ** **         
    0x6C, 0x00,         //   ** **         
    0xC6, 0x00,         //  **   **        
    0xFE, 0x00,         //  *******        
    0xFE, 0x00,         //  *******        
    0x83, 0x01,         // **     **       
    0x83, 0x01,         // **     **       
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 66
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x7E, 0x00,         //  ******         
    0xFE, 0x00,         //  *******        
    0xC6, 0x00,         //  **   **        
    0xC6, 0x00,         //  **   **        
    0x7E, 0x00,         //  ******         
    0xFE, 0x00,         //  *******        
    0xC6, 0x00,         //  **   **        
    0xC6, 0x00,         //  **   **        
    0xFE, 0x00,         //  *******        
    0x7E, 0x00,         //  ******         
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 67
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xF8, 0x00,         //    *****        
    0xFC, 0x00,         //   ******        
    0x0C, 0x00,         //   **            
    0x06, 0x00,         //  **             
    0x06, 0x00,         //  **             
    0x06, 0x00,         //  **             
    0x06, 0x00,         //  **             
    0x0E, 0x00,         //  ***            
    0xFC, 0x00,         //   ******        
    0xF8, 0x00,         //    *****        
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 68
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x3E, 0x00,         //  *****          
    0xFE, 0x00,         //  *******        
    0xC6, 0x01,         //  **   ***       
    0x86, 0x01,         //  **    **       
    0x86, 0x01,         //  **    **       
    0x86, 0x01,         //  **    **       
    0x86, 0x01,         //  **    **       
    0xC6, 0x00,         //  **   **        
    0xFE, 0x00,         //  *******        
    0x3E, 0x00,         //  *****          
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 69
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x7E,         //  ****** 
    0x7E,         //  ****** 
    0x06,         //  **     
    0x06,         //  **     
    0x7E,         //  ****** 
    0x7E,         //  ****** 
    0x06,         //  **     
    0x06,         //  **     
    0x7E,         //  ****** 
    0x7E,         //  ****** 
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 70
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x7E,         //  ****** 
    0x7E,         //  ****** 
    0x06,         //  **     
    0x06,         //  **     
    0x7E,         //  ****** 
    0x7E,         //  ****** 
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 71
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xF0, 0x01,         //     *****       
    0xFC, 0x01,         //   *******       
    0x0C, 0x00,         //   **            
    0x06, 0x00,         //  **             
    0xE6, 0x01,         //  **  ****       
    0xE6, 0x01,         //  **  ****       
    0x86, 0x01,         //  **    **       
    0x8E, 0x01,         //  ***   **       
    0xFC, 0x01,         //   *******       
    0xF8, 0x01,         //    ******       
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 72
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x86, 0x01,         //  **    **       
    0x86, 0x01,         //  **    **       
    0x86, 0x01,         //  **    **       
    0x86, 0x01,         //  **    **       
    0xFE, 0x01,         //  ********       
    0xFE, 0x01,         //  ********       
    0x86, 0x01,         //  **    **       
    0x86, 0x01,         //  **    **       
    0x86, 0x01,         //  **    **       
    0x86, 0x01,         //  **    **       
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 73
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x1E,         //  ****   
    0x1E,         //  ****   
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x1E,         //  ****   
    0x1E,         //  ****   
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 74
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x18,         //    **   
    0x18,         //    **   
    0x18,         //    **   
    0x18,         //    **   
    0x18,         //    **   
    0x18,         //    **   
    0x18,         //    **   
    0x18,         //    **   
    0x18,         //    **   
    0x18,         //    **   
    0x18,         //    **   
    0x1F,         // *****   
    0x0F,         // ****    
    0x00,         //         

/***********************************
 * Character - 75
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x86, 0x01,         //  **    **       
    0xC6, 0x00,         //  **   **        
    0x66, 0x00,         //  **  **         
    0x36, 0x00,         //  ** **          
    0x1E, 0x00,         //  ****           
    0x3E, 0x00,         //  *****          
    0x76, 0x00,         //  ** ***         
    0x66, 0x00,         //  **  **         
    0xC6, 0x00,         //  **   **        
    0x86, 0x01,         //  **    **       
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 76
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x7E,         //  ****** 
    0x7E,         //  ****** 
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 77
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x0E, 0x0E,         //  ***     ***    
    0x0E, 0x0E,         //  ***     ***    
    0x1E, 0x0F,         //  ****   ****    
    0x1E, 0x0F,         //  ****   ****    
    0x16, 0x0D,         //  ** *   * **    
    0xB6, 0x0D,         //  ** ** ** **    
    0xB6, 0x0D,         //  ** ** ** **    
    0xA6, 0x0C,         //  **  * *  **    
    0xE6, 0x0C,         //  **  ***  **    
    0x66, 0x0C,         //  **  **   **    
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 78
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x86, 0x01,         //  **    **       
    0x8E, 0x01,         //  ***   **       
    0x9E, 0x01,         //  ****  **       
    0x9E, 0x01,         //  ****  **       
    0xB6, 0x01,         //  ** ** **       
    0xB6, 0x01,         //  ** ** **       
    0xE6, 0x01,         //  **  ****       
    0xC6, 0x01,         //  **   ***       
    0xC6, 0x01,         //  **   ***       
    0x86, 0x01,         //  **    **       
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 79
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xF8, 0x00,         //    *****        
    0xFC, 0x01,         //   *******       
    0x8E, 0x03,         //  ***   ***      
    0x06, 0x03,         //  **     **      
    0x06, 0x03,         //  **     **      
    0x06, 0x03,         //  **     **      
    0x06, 0x03,         //  **     **      
    0x8E, 0x03,         //  ***   ***      
    0xFC, 0x01,         //   *******       
    0xF8, 0x00,         //    *****        
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 80
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x7E, 0x00,         //  ******         
    0xFE, 0x00,         //  *******        
    0xC6, 0x00,         //  **   **        
    0xC6, 0x00,         //  **   **        
    0xFE, 0x00,         //  *******        
    0x3E, 0x00,         //  *****          
    0x06, 0x00,         //  **             
    0x06, 0x00,         //  **             
    0x06, 0x00,         //  **             
    0x06, 0x00,         //  **             
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 81
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xF8, 0x00,         //    *****        
    0xFC, 0x01,         //   *******       
    0x8E, 0x03,         //  ***   ***      
    0x06, 0x03,         //  **     **      
    0x06, 0x03,         //  **     **      
    0x06, 0x03,         //  **     **      
    0x06, 0x03,         //  **     **      
    0x8E, 0x03,         //  ***   ***      
    0xFC, 0x01,         //   *******       
    0xF8, 0x00,         //    *****        
    0xC0, 0x01,         //       ***       
    0x80, 0x03,         //        ***      
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 82
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x7E, 0x00,         //  ******         
    0xFE, 0x00,         //  *******        
    0xC6, 0x00,         //  **   **        
    0xC6, 0x00,         //  **   **        
    0x7E, 0x00,         //  ******         
    0x3E, 0x00,         //  *****          
    0x66, 0x00,         //  **  **         
    0xE6, 0x00,         //  **  ***        
    0xC6, 0x00,         //  **   **        
    0x86, 0x01,         //  **    **       
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 83
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x3C,         //   ****  
    0x3E,         //  *****  
    0x06,         //  **     
    0x06,         //  **     
    0x1E,         //  ****   
    0x3C,         //   ****  
    0x30,         //     **  
    0x30,         //     **  
    0x3E,         //  *****  
    0x1E,         //  ****   
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 84
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0xFF,         // ********
    0xFF,         // ********
    0x18,         //    **   
    0x18,         //    **   
    0x18,         //    **   
    0x18,         //    **   
    0x18,         //    **   
    0x18,         //    **   
    0x18,         //    **   
    0x18,         //    **   
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 85
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x86, 0x01,         //  **    **       
    0x86, 0x01,         //  **    **       
    0x86, 0x01,         //  **    **       
    0x86, 0x01,         //  **    **       
    0x86, 0x01,         //  **    **       
    0x86, 0x01,         //  **    **       
    0x86, 0x01,         //  **    **       
    0x86, 0x01,         //  **    **       
    0xFC, 0x00,         //   ******        
    0x78, 0x00,         //    ****         
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 86
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x83, 0x01,         // **     **       
    0x83, 0x01,         // **     **       
    0xC6, 0x00,         //  **   **        
    0xC6, 0x00,         //  **   **        
    0xC6, 0x00,         //  **   **        
    0x6C, 0x00,         //   ** **         
    0x6C, 0x00,         //   ** **         
    0x6C, 0x00,         //   ** **         
    0x38, 0x00,         //    ***          
    0x38, 0x00,         //    ***          
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 87
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x43, 0x18,         // **    *    **   
    0xE3, 0x18,         // **   ***   **   
    0xE3, 0x18,         // **   ***   **   
    0xA6, 0x0C,         //  **  * *  **    
    0xB6, 0x0D,         //  ** ** ** **    
    0xB6, 0x0D,         //  ** ** ** **    
    0xB4, 0x05,         //   * ** ** *     
    0x14, 0x05,         //   * *   * *     
    0x1C, 0x07,         //   ***   ***     
    0x1C, 0x07,         //   ***   ***     
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 88
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xC7, 0x01,         // ***   ***       
    0xC6, 0x00,         //  **   **        
    0x6C, 0x00,         //   ** **         
    0x6C, 0x00,         //   ** **         
    0x38, 0x00,         //    ***          
    0x38, 0x00,         //    ***          
    0x6C, 0x00,         //   ** **         
    0xEE, 0x00,         //  *** ***        
    0xC6, 0x00,         //  **   **        
    0x83, 0x01,         // **     **       
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 89
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0xC3,         // **    **
    0x66,         //  **  ** 
    0x66,         //  **  ** 
    0x3C,         //   ****  
    0x3C,         //   ****  
    0x18,         //    **   
    0x18,         //    **   
    0x18,         //    **   
    0x18,         //    **   
    0x18,         //    **   
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 90
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x7F,         // ******* 
    0x7F,         // ******* 
    0x30,         //     **  
    0x38,         //    ***  
    0x18,         //    **   
    0x0C,         //   **    
    0x0E,         //  ***    
    0x06,         //  **     
    0x7F,         // ******* 
    0x7F,         // ******* 
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 91
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x0E,         //  ***    
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x0E,         //  ***    
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 92
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x03,         // **      
    0x03,         // **      
    0x06,         //  **     
    0x06,         //  **     
    0x0C,         //   **    
    0x0C,         //   **    
    0x18,         //    **   
    0x18,         //    **   
    0x30,         //     **  
    0x30,         //     **  
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 93
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x0E,         //  ***    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0E,         //  ***    
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 94
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x08,         //    *    
    0x1C,         //   ***   
    0x14,         //   * *   
    0x36,         //  ** **  
    0x22,         //  *   *  
    0x63,         // **   ** 
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 95
 ***********************************/
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
    0x3F,         // ******  
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 96
 ***********************************/
    0x00,         //         
    0x1C,         //   ***   
    0x18,         //    **   
    0x30,         //     **  
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

/***********************************
 * Character - 97
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x3C,         //   ****  
    0x7C,         //   ***** 
    0x60,         //      ** 
    0x7C,         //   ***** 
    0x66,         //  **  ** 
    0x66,         //  **  ** 
    0x7E,         //  ****** 
    0x6C,         //   ** ** 
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 98
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x06, 0x00,         //  **             
    0x06, 0x00,         //  **             
    0x06, 0x00,         //  **             
    0x76, 0x00,         //  ** ***         
    0xFE, 0x00,         //  *******        
    0xC6, 0x00,         //  **   **        
    0xC6, 0x00,         //  **   **        
    0xC6, 0x00,         //  **   **        
    0xC6, 0x00,         //  **   **        
    0xFE, 0x00,         //  *******        
    0x76, 0x00,         //  ** ***         
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 99
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x3C,         //   ****  
    0x3E,         //  *****  
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x3E,         //  *****  
    0x3C,         //   ****  
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 100
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xDC, 0x00,         //   *** **        
    0xFC, 0x00,         //   ******        
    0xC6, 0x00,         //  **   **        
    0xC6, 0x00,         //  **   **        
    0xC6, 0x00,         //  **   **        
    0xC6, 0x00,         //  **   **        
    0xFE, 0x00,         //  *******        
    0xDC, 0x00,         //   *** **        
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 101
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x3C,         //   ****  
    0x7C,         //   ***** 
    0x66,         //  **  ** 
    0x7E,         //  ****** 
    0x06,         //  **     
    0x06,         //  **     
    0x7C,         //   ***** 
    0x78,         //    **** 
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 102
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x1C,         //   ***   
    0x1E,         //  ****   
    0x06,         //  **     
    0x0F,         // ****    
    0x0F,         // ****    
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 103
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0xFC,         //   ******
    0x66,         //  **  ** 
    0x66,         //  **  ** 
    0x66,         //  **  ** 
    0x3C,         //   ****  
    0x06,         //  **     
    0x7E,         //  ****** 
    0xFE,         //  *******
    0xC6,         //  **   **
    0xE6,         //  **  ***
    0x7C,         //   ***** 
    0x00,         //         

/***********************************
 * Character - 104
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x06, 0x00,         //  **             
    0x06, 0x00,         //  **             
    0x06, 0x00,         //  **             
    0x76, 0x00,         //  ** ***         
    0xFE, 0x00,         //  *******        
    0xC6, 0x00,         //  **   **        
    0xC6, 0x00,         //  **   **        
    0xC6, 0x00,         //  **   **        
    0xC6, 0x00,         //  **   **        
    0xC6, 0x00,         //  **   **        
    0xC6, 0x00,         //  **   **        
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 105
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x06,         //  **     
    0x06,         //  **     
    0x00,         //         
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 106
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x0C,         //   **    
    0x0C,         //   **    
    0x00,         //         
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0F,         // ****    
    0x07,         // ***     
    0x00,         //         

/***********************************
 * Character - 107
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0xE6,         //  **  ***
    0x66,         //  **  ** 
    0x36,         //  ** **  
    0x1E,         //  ****   
    0x3E,         //  *****  
    0x36,         //  ** **  
    0x66,         //  **  ** 
    0xC6,         //  **   **
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 108
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 109
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x76, 0x0E,         //  ** ***  ***    
    0xFE, 0x1F,         //  ************   
    0xC6, 0x18,         //  **   **   **   
    0xC6, 0x18,         //  **   **   **   
    0xC6, 0x18,         //  **   **   **   
    0xC6, 0x18,         //  **   **   **   
    0xC6, 0x18,         //  **   **   **   
    0xC6, 0x18,         //  **   **   **   
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 110
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x76, 0x00,         //  ** ***         
    0xFE, 0x00,         //  *******        
    0xC6, 0x00,         //  **   **        
    0xC6, 0x00,         //  **   **        
    0xC6, 0x00,         //  **   **        
    0xC6, 0x00,         //  **   **        
    0xC6, 0x00,         //  **   **        
    0xC6, 0x00,         //  **   **        
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 111
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x38, 0x00,         //    ***          
    0x7C, 0x00,         //   *****         
    0xC6, 0x00,         //  **   **        
    0xC6, 0x00,         //  **   **        
    0xC6, 0x00,         //  **   **        
    0xC6, 0x00,         //  **   **        
    0x7C, 0x00,         //   *****         
    0x38, 0x00,         //    ***          
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 112
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x76, 0x00,         //  ** ***         
    0xFE, 0x00,         //  *******        
    0xC6, 0x00,         //  **   **        
    0xC6, 0x00,         //  **   **        
    0xC6, 0x00,         //  **   **        
    0xC6, 0x00,         //  **   **        
    0x7E, 0x00,         //  ******         
    0x76, 0x00,         //  ** ***         
    0x06, 0x00,         //  **             
    0x06, 0x00,         //  **             
    0x06, 0x00,         //  **             
    0x00, 0x00,         //                 

/***********************************
 * Character - 113
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xDC, 0x00,         //   *** **        
    0xFC, 0x00,         //   ******        
    0xC6, 0x00,         //  **   **        
    0xC6, 0x00,         //  **   **        
    0xC6, 0x00,         //  **   **        
    0xC6, 0x00,         //  **   **        
    0xFE, 0x00,         //  *******        
    0xDC, 0x00,         //   *** **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0xC0, 0x00,         //       **        
    0x00, 0x00,         //                 

/***********************************
 * Character - 114
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x36,         //  ** **  
    0x3E,         //  *****  
    0x0E,         //  ***    
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 115
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x3C,         //   ****  
    0x3E,         //  *****  
    0x06,         //  **     
    0x1E,         //  ****   
    0x38,         //    ***  
    0x30,         //     **  
    0x3E,         //  *****  
    0x1E,         //  ****   
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 116
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x08,         //    *    
    0x0C,         //   **    
    0x3E,         //  *****  
    0x3E,         //  *****  
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x3C,         //   ****  
    0x38,         //    ***  
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 117
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xC6, 0x00,         //  **   **        
    0xC6, 0x00,         //  **   **        
    0xC6, 0x00,         //  **   **        
    0xC6, 0x00,         //  **   **        
    0xC6, 0x00,         //  **   **        
    0xC6, 0x00,         //  **   **        
    0xFE, 0x00,         //  *******        
    0xDC, 0x00,         //   *** **        
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 118
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0xC3,         // **    **
    0xC3,         // **    **
    0x66,         //  **  ** 
    0x66,         //  **  ** 
    0x3C,         //   ****  
    0x3C,         //   ****  
    0x3C,         //   ****  
    0x18,         //    **   
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 119
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x23, 0x06,         // **   *   **     
    0x53, 0x06,         // **  * *  **     
    0x53, 0x02,         // **  * *  *      
    0x56, 0x03,         //  ** * * **      
    0xDE, 0x03,         //  **** ****      
    0xDE, 0x03,         //  **** ****      
    0x8C, 0x01,         //   **   **       
    0x8C, 0x01,         //   **   **       
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

/***********************************
 * Character - 120
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0xE7,         // ***  ***
    0x66,         //  **  ** 
    0x3C,         //   ****  
    0x18,         //    **   
    0x38,         //    ***  
    0x3C,         //   ****  
    0x66,         //  **  ** 
    0xC3,         // **    **
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 121
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0xC3,         // **    **
    0xE7,         // ***  ***
    0x66,         //  **  ** 
    0x66,         //  **  ** 
    0x7C,         //   ***** 
    0x3C,         //   ****  
    0x3C,         //   ****  
    0x18,         //    **   
    0x18,         //    **   
    0x0F,         // ****    
    0x07,         // ***     
    0x00,         //         

/***********************************
 * Character - 122
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x3E,         //  *****  
    0x3E,         //  *****  
    0x18,         //    **   
    0x18,         //    **   
    0x0C,         //   **    
    0x0C,         //   **    
    0x3E,         //  *****  
    0x3E,         //  *****  
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 123
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x18,         //    **   
    0x1C,         //   ***   
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x07,         // ***     
    0x0F,         // ****    
    0x0C,         //   **    
    0x0C,         //   **    
    0x0C,         //   **    
    0x1C,         //   ***   
    0x18,         //    **   
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 124
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x18,         //    **   
    0x18,         //    **   
    0x18,         //    **   
    0x18,         //    **   
    0x18,         //    **   
    0x18,         //    **   
    0x18,         //    **   
    0x18,         //    **   
    0x18,         //    **   
    0x18,         //    **   
    0x18,         //    **   
    0x18,         //    **   
    0x18,         //    **   
    0x18,         //    **   
    0x00,         //         

/***********************************
 * Character - 125
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x03,         // **      
    0x07,         // ***     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x1C,         //   ***   
    0x1E,         //  ****   
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x07,         // ***     
    0x03,         // **      
    0x00,         //         
    0x00,         //         

/***********************************
 * Character - 126
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x0C,         //   **    
    0x7E,         //  ****** 
    0x30,         //     **  
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

};

/*********************************
 * TTF Font File Structure
 * Label: DroidSansMono_36
 * Description:  Height: 48 pixels, 1 bit per pixel, Range: '+' to '9'
 ***********************************/

extern const char __DroidSansMono_36[] __attribute__((aligned(2)));

const FONT_FLASH DroidSansMono_36 =
{
    (FLASH | COMP_NONE),
    __DroidSansMono_36
};

const char __DroidSansMono_36[] __attribute__((aligned(2))) =
{
/****************************************
 * Font header
 ****************************************/
    0x00,           // Font ID
    0x00,           // Font information:  1 bit per pixel, Characters zero degress rotation
    0x2B, 0x00,     // First Character
    0x39, 0x00,     // Last Character
    0x30, 0x00,     // Height
/****************************************
 * Font Glyph Table
 ****************************************/
    0x16,              // width of the glyph
    0x44, 0x00, 0x00,  // Character - 43, offset (0x00000044)
    0x16,              // width of the glyph
    0xD4, 0x00, 0x00,  // Character - 44, offset (0x000000D4)
    0x16,              // width of the glyph
    0x64, 0x01, 0x00,  // Character - 45, offset (0x00000164)
    0x16,              // width of the glyph
    0xF4, 0x01, 0x00,  // Character - 46, offset (0x000001F4)
    0x16,              // width of the glyph
    0x84, 0x02, 0x00,  // Character - 47, offset (0x00000284)
    0x16,              // width of the glyph
    0x14, 0x03, 0x00,  // Character - 48, offset (0x00000314)
    0x16,              // width of the glyph
    0xA4, 0x03, 0x00,  // Character - 49, offset (0x000003A4)
    0x16,              // width of the glyph
    0x34, 0x04, 0x00,  // Character - 50, offset (0x00000434)
    0x16,              // width of the glyph
    0xC4, 0x04, 0x00,  // Character - 51, offset (0x000004C4)
    0x16,              // width of the glyph
    0x54, 0x05, 0x00,  // Character - 52, offset (0x00000554)
    0x16,              // width of the glyph
    0xE4, 0x05, 0x00,  // Character - 53, offset (0x000005E4)
    0x16,              // width of the glyph
    0x74, 0x06, 0x00,  // Character - 54, offset (0x00000674)
    0x16,              // width of the glyph
    0x04, 0x07, 0x00,  // Character - 55, offset (0x00000704)
    0x16,              // width of the glyph
    0x94, 0x07, 0x00,  // Character - 56, offset (0x00000794)
    0x16,              // width of the glyph
    0x24, 0x08, 0x00,  // Character - 57, offset (0x00000824)
/***********************************
 * Font Characters
 ***********************************/
/***********************************
 * Character - 43
 ***********************************/
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x0E, 0x00,         //          ***            
    0x00, 0x0E, 0x00,         //          ***            
    0x00, 0x0E, 0x00,         //          ***            
    0x00, 0x0E, 0x00,         //          ***            
    0x00, 0x0E, 0x00,         //          ***            
    0x00, 0x0E, 0x00,         //          ***            
    0x00, 0x0E, 0x00,         //          ***            
    0xFC, 0xFF, 0x03,         //   ****************      
    0xFC, 0xFF, 0x03,         //   ****************      
    0xFC, 0xFF, 0x03,         //   ****************      
    0x00, 0x0E, 0x00,         //          ***            
    0x00, 0x0E, 0x00,         //          ***            
    0x00, 0x0E, 0x00,         //          ***            
    0x00, 0x0E, 0x00,         //          ***            
    0x00, 0x0E, 0x00,         //          ***            
    0x00, 0x0E, 0x00,         //          ***            
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         

/***********************************
 * Character - 44
 ***********************************/
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x3C, 0x00,         //           ****          
    0x00, 0x3C, 0x00,         //           ****          
    0x00, 0x1E, 0x00,         //          ****           
    0x00, 0x1E, 0x00,         //          ****           
    0x00, 0x1E, 0x00,         //          ****           
    0x00, 0x0E, 0x00,         //          ***            
    0x00, 0x0E, 0x00,         //          ***            
    0x00, 0x0E, 0x00,         //          ***            
    0x00, 0x07, 0x00,         //         ***             
    0x00, 0x07, 0x00,         //         ***             
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         

/***********************************
 * Character - 45
 ***********************************/
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0xE0, 0xFF, 0x01,         //      ************       
    0xE0, 0xFF, 0x01,         //      ************       
    0xE0, 0xFF, 0x01,         //      ************       
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         

/***********************************
 * Character - 46
 ***********************************/
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x0E, 0x00,         //          ***            
    0x00, 0x1F, 0x00,         //         *****           
    0x00, 0x1F, 0x00,         //         *****           
    0x00, 0x1F, 0x00,         //         *****           
    0x00, 0x1F, 0x00,         //         *****           
    0x00, 0x0E, 0x00,         //          ***            
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         

/***********************************
 * Character - 47
 ***********************************/
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x80, 0x03,         //                ***      
    0x00, 0xC0, 0x01,         //               ***       
    0x00, 0xC0, 0x01,         //               ***       
    0x00, 0xE0, 0x01,         //              ****       
    0x00, 0xE0, 0x00,         //              ***        
    0x00, 0xE0, 0x00,         //              ***        
    0x00, 0x70, 0x00,         //             ***         
    0x00, 0x70, 0x00,         //             ***         
    0x00, 0x38, 0x00,         //            ***          
    0x00, 0x38, 0x00,         //            ***          
    0x00, 0x3C, 0x00,         //           ****          
    0x00, 0x1C, 0x00,         //           ***           
    0x00, 0x1C, 0x00,         //           ***           
    0x00, 0x0E, 0x00,         //          ***            
    0x00, 0x0E, 0x00,         //          ***            
    0x00, 0x0F, 0x00,         //         ****            
    0x00, 0x07, 0x00,         //         ***             
    0x00, 0x07, 0x00,         //         ***             
    0x80, 0x03, 0x00,         //        ***              
    0x80, 0x03, 0x00,         //        ***              
    0xC0, 0x01, 0x00,         //       ***               
    0xC0, 0x01, 0x00,         //       ***               
    0xE0, 0x01, 0x00,         //      ****               
    0xE0, 0x00, 0x00,         //      ***                
    0xE0, 0x00, 0x00,         //      ***                
    0x70, 0x00, 0x00,         //     ***                 
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         

/***********************************
 * Character - 48
 ***********************************/
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x3F, 0x00,         //         ******          
    0xC0, 0x7F, 0x00,         //       *********         
    0xC0, 0xFF, 0x00,         //       **********        
    0xE0, 0xE1, 0x01,         //      ****    ****       
    0xF0, 0xC0, 0x03,         //     ****      ****      
    0x70, 0x80, 0x03,         //     ***        ***      
    0x70, 0x80, 0x03,         //     ***        ***      
    0x78, 0x80, 0x07,         //    ****        ****     
    0x78, 0x80, 0x07,         //    ****        ****     
    0x38, 0x00, 0x07,         //    ***          ***     
    0x38, 0x00, 0x07,         //    ***          ***     
    0x38, 0x00, 0x07,         //    ***          ***     
    0x38, 0x00, 0x07,         //    ***          ***     
    0x38, 0x00, 0x07,         //    ***          ***     
    0x38, 0x00, 0x07,         //    ***          ***     
    0x38, 0x00, 0x07,         //    ***          ***     
    0x38, 0x00, 0x07,         //    ***          ***     
    0x78, 0x80, 0x07,         //    ****        ****     
    0x70, 0x80, 0x07,         //     ***        ****     
    0x70, 0x80, 0x03,         //     ***        ***      
    0x70, 0x80, 0x03,         //     ***        ***      
    0xF0, 0xC0, 0x03,         //     ****      ****      
    0xE0, 0xE1, 0x01,         //      ****    ****       
    0xC0, 0xFF, 0x00,         //       **********        
    0x80, 0x7F, 0x00,         //        ********         
    0x00, 0x3F, 0x00,         //         ******          
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         

/***********************************
 * Character - 49
 ***********************************/
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x1C, 0x00,         //           ***           
    0x00, 0x1F, 0x00,         //         *****           
    0x80, 0x1F, 0x00,         //        ******           
    0xC0, 0x1F, 0x00,         //       *******           
    0xE0, 0x1D, 0x00,         //      **** ***           
    0x70, 0x1C, 0x00,         //     ***   ***           
    0x20, 0x1C, 0x00,         //      *    ***           
    0x00, 0x1C, 0x00,         //           ***           
    0x00, 0x1C, 0x00,         //           ***           
    0x00, 0x1C, 0x00,         //           ***           
    0x00, 0x1C, 0x00,         //           ***           
    0x00, 0x1C, 0x00,         //           ***           
    0x00, 0x1C, 0x00,         //           ***           
    0x00, 0x1C, 0x00,         //           ***           
    0x00, 0x1C, 0x00,         //           ***           
    0x00, 0x1C, 0x00,         //           ***           
    0x00, 0x1C, 0x00,         //           ***           
    0x00, 0x1C, 0x00,         //           ***           
    0x00, 0x1C, 0x00,         //           ***           
    0x00, 0x1C, 0x00,         //           ***           
    0x00, 0x1C, 0x00,         //           ***           
    0x00, 0x1C, 0x00,         //           ***           
    0x00, 0x1C, 0x00,         //           ***           
    0x00, 0x1C, 0x00,         //           ***           
    0x00, 0x1C, 0x00,         //           ***           
    0x00, 0x1C, 0x00,         //           ***           
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         

/***********************************
 * Character - 50
 ***********************************/
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x80, 0x3F, 0x00,         //        *******          
    0xE0, 0xFF, 0x00,         //      ***********        
    0xF0, 0xFF, 0x01,         //     *************       
    0x70, 0xE0, 0x01,         //     ***      ****       
    0x20, 0xC0, 0x03,         //      *        ****      
    0x00, 0x80, 0x03,         //                ***      
    0x00, 0x80, 0x03,         //                ***      
    0x00, 0x80, 0x03,         //                ***      
    0x00, 0x80, 0x03,         //                ***      
    0x00, 0xC0, 0x03,         //               ****      
    0x00, 0xC0, 0x01,         //               ***       
    0x00, 0xE0, 0x01,         //              ****       
    0x00, 0xE0, 0x00,         //              ***        
    0x00, 0x70, 0x00,         //             ***         
    0x00, 0x78, 0x00,         //            ****         
    0x00, 0x3C, 0x00,         //           ****          
    0x00, 0x1E, 0x00,         //          ****           
    0x00, 0x0F, 0x00,         //         ****            
    0x80, 0x07, 0x00,         //        ****             
    0xC0, 0x03, 0x00,         //       ****              
    0xC0, 0x01, 0x00,         //       ***               
    0xE0, 0x00, 0x00,         //      ***                
    0x70, 0x00, 0x00,         //     ***                 
    0xF8, 0xFF, 0x07,         //    ****************     
    0xF8, 0xFF, 0x07,         //    ****************     
    0xF8, 0xFF, 0x07,         //    ****************     
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         

/***********************************
 * Character - 51
 ***********************************/
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0xC0, 0x3F, 0x00,         //       ********          
    0xF0, 0xFF, 0x00,         //     ************        
    0xFC, 0xFF, 0x01,         //   ***************       
    0x38, 0xE0, 0x01,         //    ***       ****       
    0x00, 0xC0, 0x03,         //               ****      
    0x00, 0x80, 0x03,         //                ***      
    0x00, 0x80, 0x03,         //                ***      
    0x00, 0x80, 0x03,         //                ***      
    0x00, 0xC0, 0x03,         //               ****      
    0x00, 0xE0, 0x01,         //              ****       
    0x00, 0xF0, 0x00,         //             ****        
    0xC0, 0x3F, 0x00,         //       ********          
    0xC0, 0x3F, 0x00,         //       ********          
    0xC0, 0xFF, 0x00,         //       **********        
    0x00, 0xE0, 0x03,         //              *****      
    0x00, 0x80, 0x03,         //                ***      
    0x00, 0x80, 0x07,         //                ****     
    0x00, 0x00, 0x07,         //                 ***     
    0x00, 0x00, 0x07,         //                 ***     
    0x00, 0x00, 0x07,         //                 ***     
    0x00, 0x80, 0x07,         //                ****     
    0x00, 0x80, 0x03,         //                ***      
    0x0C, 0xE0, 0x03,         //   **         *****      
    0xFC, 0xFF, 0x01,         //   ***************       
    0xFC, 0xFF, 0x00,         //   **************        
    0xF0, 0x1F, 0x00,         //     *********           
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         

/***********************************
 * Character - 52
 ***********************************/
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0xF0, 0x00,         //             ****        
    0x00, 0xF0, 0x00,         //             ****        
    0x00, 0xF8, 0x00,         //            *****        
    0x00, 0xFC, 0x00,         //           ******        
    0x00, 0xEC, 0x00,         //           ** ***        
    0x00, 0xEE, 0x00,         //          *** ***        
    0x00, 0xE7, 0x00,         //         ***  ***        
    0x00, 0xE7, 0x00,         //         ***  ***        
    0x80, 0xE3, 0x00,         //        ***   ***        
    0xC0, 0xE1, 0x00,         //       ***    ***        
    0xC0, 0xE1, 0x00,         //       ***    ***        
    0xE0, 0xE0, 0x00,         //      ***     ***        
    0x70, 0xE0, 0x00,         //     ***      ***        
    0x78, 0xE0, 0x00,         //    ****      ***        
    0x38, 0xE0, 0x00,         //    ***       ***        
    0x1C, 0xE0, 0x00,         //   ***        ***        
    0x0E, 0xE0, 0x00,         //  ***         ***        
    0xFE, 0xFF, 0x0F,         //  *******************    
    0xFE, 0xFF, 0x0F,         //  *******************    
    0xFE, 0xFF, 0x0F,         //  *******************    
    0x00, 0xE0, 0x00,         //              ***        
    0x00, 0xE0, 0x00,         //              ***        
    0x00, 0xE0, 0x00,         //              ***        
    0x00, 0xE0, 0x00,         //              ***        
    0x00, 0xE0, 0x00,         //              ***        
    0x00, 0xE0, 0x00,         //              ***        
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         

/***********************************
 * Character - 53
 ***********************************/
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0xE0, 0xFF, 0x01,         //      ************       
    0xE0, 0xFF, 0x01,         //      ************       
    0xE0, 0xFF, 0x01,         //      ************       
    0xE0, 0x00, 0x00,         //      ***                
    0xE0, 0x00, 0x00,         //      ***                
    0xE0, 0x00, 0x00,         //      ***                
    0x70, 0x00, 0x00,         //     ***                 
    0x70, 0x00, 0x00,         //     ***                 
    0x70, 0x00, 0x00,         //     ***                 
    0x70, 0x00, 0x00,         //     ***                 
    0xF0, 0x3F, 0x00,         //     **********          
    0xF0, 0xFF, 0x00,         //     ************        
    0xE0, 0xFF, 0x01,         //      ************       
    0x00, 0xE0, 0x03,         //              *****      
    0x00, 0x80, 0x03,         //                ***      
    0x00, 0x80, 0x07,         //                ****     
    0x00, 0x00, 0x07,         //                 ***     
    0x00, 0x00, 0x07,         //                 ***     
    0x00, 0x00, 0x07,         //                 ***     
    0x00, 0x00, 0x07,         //                 ***     
    0x00, 0x80, 0x07,         //                ****     
    0x00, 0x80, 0x03,         //                ***      
    0x18, 0xE0, 0x03,         //    **        *****      
    0xF8, 0xFF, 0x01,         //    **************       
    0xF8, 0xFF, 0x00,         //    *************        
    0xE0, 0x1F, 0x00,         //      ********           
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         

/***********************************
 * Character - 54
 ***********************************/
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0xFC, 0x01,         //           *******       
    0x00, 0xFF, 0x01,         //         *********       
    0x80, 0xFF, 0x01,         //        **********       
    0xC0, 0x03, 0x00,         //       ****              
    0xE0, 0x01, 0x00,         //      ****               
    0xE0, 0x00, 0x00,         //      ***                
    0xF0, 0x00, 0x00,         //     ****                
    0x70, 0x00, 0x00,         //     ***                 
    0x70, 0x00, 0x00,         //     ***                 
    0x78, 0x00, 0x00,         //    ****                 
    0x78, 0x7E, 0x00,         //    ****  ******         
    0x38, 0xFF, 0x01,         //    ***  *********       
    0xB8, 0xFF, 0x01,         //    *** **********       
    0xF8, 0xC0, 0x03,         //    *****      ****      
    0x78, 0x80, 0x07,         //    ****        ****     
    0x78, 0x00, 0x07,         //    ****         ***     
    0x38, 0x00, 0x07,         //    ***          ***     
    0x38, 0x00, 0x07,         //    ***          ***     
    0x38, 0x00, 0x07,         //    ***          ***     
    0x70, 0x00, 0x07,         //     ***         ***     
    0x70, 0x80, 0x07,         //     ***        ****     
    0xF0, 0x80, 0x03,         //     ****       ***      
    0xE0, 0xC1, 0x03,         //      ****     ****      
    0xC0, 0xFF, 0x01,         //       ***********       
    0x80, 0xFF, 0x00,         //        *********        
    0x00, 0x3F, 0x00,         //         ******          
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         

/***********************************
 * Character - 55
 ***********************************/
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0xF8, 0xFF, 0x07,         //    ****************     
    0xF8, 0xFF, 0x07,         //    ****************     
    0xF8, 0xFF, 0x07,         //    ****************     
    0x00, 0x80, 0x07,         //                ****     
    0x00, 0x80, 0x03,         //                ***      
    0x00, 0x80, 0x03,         //                ***      
    0x00, 0xC0, 0x01,         //               ***       
    0x00, 0xC0, 0x01,         //               ***       
    0x00, 0xE0, 0x01,         //              ****       
    0x00, 0xE0, 0x00,         //              ***        
    0x00, 0xE0, 0x00,         //              ***        
    0x00, 0x70, 0x00,         //             ***         
    0x00, 0x70, 0x00,         //             ***         
    0x00, 0x78, 0x00,         //            ****         
    0x00, 0x38, 0x00,         //            ***          
    0x00, 0x3C, 0x00,         //           ****          
    0x00, 0x1C, 0x00,         //           ***           
    0x00, 0x1C, 0x00,         //           ***           
    0x00, 0x0E, 0x00,         //          ***            
    0x00, 0x0E, 0x00,         //          ***            
    0x00, 0x0F, 0x00,         //         ****            
    0x00, 0x07, 0x00,         //         ***             
    0x80, 0x07, 0x00,         //        ****             
    0x80, 0x03, 0x00,         //        ***              
    0x80, 0x03, 0x00,         //        ***              
    0xC0, 0x03, 0x00,         //       ****              
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         

/***********************************
 * Character - 56
 ***********************************/
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x3F, 0x00,         //         ******          
    0xC0, 0xFF, 0x00,         //       **********        
    0xE0, 0xFF, 0x01,         //      ************       
    0xE0, 0xC0, 0x01,         //      ***      ***       
    0x70, 0x80, 0x03,         //     ***        ***      
    0x70, 0x80, 0x03,         //     ***        ***      
    0x70, 0x80, 0x03,         //     ***        ***      
    0x70, 0x80, 0x03,         //     ***        ***      
    0xF0, 0xC0, 0x01,         //     ****      ***       
    0xE0, 0xE1, 0x01,         //      ****    ****       
    0xC0, 0xF3, 0x00,         //       ****  ****        
    0x80, 0x7F, 0x00,         //        ********         
    0x00, 0x3F, 0x00,         //         ******          
    0xC0, 0xFF, 0x00,         //       **********        
    0xE0, 0xF1, 0x01,         //      ****   *****       
    0xF0, 0xC0, 0x03,         //     ****      ****      
    0x70, 0x80, 0x03,         //     ***        ***      
    0x38, 0x00, 0x07,         //    ***          ***     
    0x38, 0x00, 0x07,         //    ***          ***     
    0x38, 0x00, 0x07,         //    ***          ***     
    0x38, 0x00, 0x07,         //    ***          ***     
    0x78, 0x80, 0x07,         //    ****        ****     
    0xF0, 0xC0, 0x03,         //     ****      ****      
    0xF0, 0xFF, 0x01,         //     *************       
    0xE0, 0xFF, 0x00,         //      ***********        
    0x00, 0x3F, 0x00,         //         ******          
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         

/***********************************
 * Character - 57
 ***********************************/
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x3F, 0x00,         //         ******          
    0xC0, 0x7F, 0x00,         //       *********         
    0xE0, 0xFF, 0x00,         //      ***********        
    0xF0, 0xE0, 0x01,         //     ****     ****       
    0x70, 0xC0, 0x03,         //     ***       ****      
    0x78, 0x80, 0x03,         //    ****        ***      
    0x38, 0x80, 0x03,         //    ***         ***      
    0x38, 0x00, 0x07,         //    ***          ***     
    0x38, 0x00, 0x07,         //    ***          ***     
    0x38, 0x00, 0x07,         //    ***          ***     
    0x38, 0x80, 0x07,         //    ***         ****     
    0x78, 0x80, 0x07,         //    ****        ****     
    0xF0, 0xC0, 0x07,         //     ****      *****     
    0xF0, 0x7F, 0x07,         //     *********** ***     
    0xE0, 0x3F, 0x07,         //      *********  ***     
    0x80, 0x9F, 0x07,         //        ******  ****     
    0x00, 0x80, 0x07,         //                ****     
    0x00, 0x80, 0x03,         //                ***      
    0x00, 0x80, 0x03,         //                ***      
    0x00, 0xC0, 0x03,         //               ****      
    0x00, 0xC0, 0x01,         //               ***       
    0x00, 0xE0, 0x01,         //              ****       
    0x00, 0xF0, 0x00,         //             ****        
    0xE0, 0x7F, 0x00,         //      **********         
    0xE0, 0x3F, 0x00,         //      *********          
    0xE0, 0x0F, 0x00,         //      *******            
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         

};

/*****************************************************************************
 * SECTION:  Palettes
 *****************************************************************************/

/*********************************
 * PALETTE Structure
 * Label: RemoteControlPalette
 * Description:  256 Colors
 ***********************************/

extern const PALETTE_ENTRY RemoteControlPalette_Data[];

const PALETTE_FLASH RemoteControlPalette =
{
    (FLASH | COMP_NONE),
    {
        0x9B3A,        // id
        256             // number of entries
    },
    (void *)RemoteControlPalette_Data       // entry address
};

const PALETTE_ENTRY RemoteControlPalette_Data[] =
{
/***********************************
 * Color Palette Entries
 **********************************/
    { .value = 0x0000},
    { .value = 0x0020},
    { .value = 0x0043},
    { .value = 0x0040},
    { .value = 0x0840},
    { .value = 0x0083},
    { .value = 0x0861},
    { .value = 0x1080},
    { .value = 0x1082},
    { .value = 0x0084},
    { .value = 0x10A2},
    { .value = 0x08A2},
    { .value = 0x10A0},
    { .value = 0x10A3},
    { .value = 0x18A0},
    { .value = 0x10C2},
    { .value = 0x00E7},
    { .value = 0x10C4},
    { .value = 0x20E0},
    { .value = 0x18E4},
    { .value = 0x1903},
    { .value = 0x2103},
    { .value = 0x1924},
    { .value = 0x2124},
    { .value = 0x014A},
    { .value = 0x50C2},
    { .value = 0x2125},
    { .value = 0x3140},
    { .value = 0x2925},
    { .value = 0x7882},
    { .value = 0x1948},
    { .value = 0x2942},
    { .value = 0x2965},
    { .value = 0x3145},
    { .value = 0x018D},
    { .value = 0x3983},
    { .value = 0x3185},
    { .value = 0x3184},
    { .value = 0x31A6},
    { .value = 0x41A0},
    { .value = 0x41C2},
    { .value = 0x39C6},
    { .value = 0x29E8},
    { .value = 0x0231},
    { .value = 0x0A30},
    { .value = 0x3A07},
    { .value = 0xC0E2},
    { .value = 0x3A08},
    { .value = 0x4A03},
    { .value = 0x4207},
    { .value = 0x5221},
    { .value = 0x3A26},
    { .value = 0x5A01},
    { .value = 0x4228},
    { .value = 0x1A6E},
    { .value = 0x0295},
    { .value = 0x4249},
    { .value = 0x6A40},
    { .value = 0x5246},
    { .value = 0x5A80},
    { .value = 0x428A},
    { .value = 0xE924},
    { .value = 0x4A8C},
    { .value = 0x4A89},
    { .value = 0x02F7},
    { .value = 0x62A3},
    { .value = 0x5289},
    { .value = 0x52AB},
    { .value = 0x52AA},
    { .value = 0x52CB},
    { .value = 0x3B0E},
    { .value = 0x5AEB},
    { .value = 0x62CA},
    { .value = 0x037B},
    { .value = 0x3B4D},
    { .value = 0x5B0B},
    { .value = 0x5B0C},
    { .value = 0x630C},
    { .value = 0x7303},
    { .value = 0x8B00},
    { .value = 0x6B0A},
    { .value = 0x6329},
    { .value = 0x7340},
    { .value = 0x632C},
    { .value = 0x2376},
    { .value = 0x03BF},
    { .value = 0x3374},
    { .value = 0x732C},
    { .value = 0x03DF},
    { .value = 0x239F},
    { .value = 0x9B40},
    { .value = 0x03FF},
    { .value = 0x8382},
    { .value = 0x736C},
    { .value = 0x041D},
    { .value = 0x53CB},
    { .value = 0x7B89},
    { .value = 0x6B8D},
    { .value = 0x1BFF},
    { .value = 0x6B8E},
    { .value = 0x043F},
    { .value = 0x6BAC},
    { .value = 0xA381},
    { .value = 0x145C},
    { .value = 0x3C80},
    { .value = 0xF2AA},
    { .value = 0x8BC4},
    { .value = 0x73D1},
    { .value = 0xABC0},
    { .value = 0x8BE9},
    { .value = 0x7BEF},
    { .value = 0x9402},
    { .value = 0x3C5A},
    { .value = 0x840F},
    { .value = 0x8BEE},
    { .value = 0x7431},
    { .value = 0x6451},
    { .value = 0x1CBF},
    { .value = 0x8430},
    { .value = 0x4C98},
    { .value = 0x7C51},
    { .value = 0x9C60},
    { .value = 0x942D},
    { .value = 0xBC20},
    { .value = 0x54B6},
    { .value = 0xAC62},
    { .value = 0x6C92},
    { .value = 0xA464},
    { .value = 0x8472},
    { .value = 0x9C68},
    { .value = 0x54D5},
    { .value = 0x6C96},
    { .value = 0x84AA},
    { .value = 0x9470},
    { .value = 0x946F},
    { .value = 0xA486},
    { .value = 0x8C92},
    { .value = 0x9492},
    { .value = 0x451F},
    { .value = 0x9493},
    { .value = 0xBCA2},
    { .value = 0x94D4},
    { .value = 0xD4C0},
    { .value = 0x9509},
    { .value = 0x7D2F},
    { .value = 0xDCC0},
    { .value = 0xBD04},
    { .value = 0x6D73},
    { .value = 0x94F4},
    { .value = 0xBD07},
    { .value = 0xCD00},
    { .value = 0xA513},
    { .value = 0xC522},
    { .value = 0xFC51},
    { .value = 0xA513},
    { .value = 0xA512},
    { .value = 0xA514},
    { .value = 0x5D7F},
    { .value = 0xC540},
    { .value = 0x9D34},
    { .value = 0x757C},
    { .value = 0x857A},
    { .value = 0xB551},
    { .value = 0xC54B},
    { .value = 0xAD55},
    { .value = 0xA575},
    { .value = 0x9578},
    { .value = 0x9599},
    { .value = 0xBD6E},
    { .value = 0x95ED},
    { .value = 0x6DDF},
    { .value = 0xE581},
    { .value = 0xB5E6},
    { .value = 0xB595},
    { .value = 0x7E65},
    { .value = 0xC5E0},
    { .value = 0xAD97},
    { .value = 0xFD60},
    { .value = 0xB5B6},
    { .value = 0xBDB4},
    { .value = 0xFD80},
    { .value = 0xD5C7},
    { .value = 0x9634},
    { .value = 0xDDE3},
    { .value = 0xB5D8},
    { .value = 0xE620},
    { .value = 0xD5ED},
    { .value = 0xFDE0},
    { .value = 0xBE18},
    { .value = 0x8E5F},
    { .value = 0xA63C},
    { .value = 0xEE22},
    { .value = 0xFD96},
    { .value = 0xC618},
    { .value = 0xDE2B},
    { .value = 0xBE6C},
    { .value = 0xFE21},
    { .value = 0xB63B},
    { .value = 0xC636},
    { .value = 0xBE88},
    { .value = 0xC659},
    { .value = 0xE6A0},
    { .value = 0xD6A5},
    { .value = 0xE651},
    { .value = 0xA6BF},
    { .value = 0xE674},
    { .value = 0xDE96},
    { .value = 0xFEA2},
    { .value = 0xCEBB},
    { .value = 0xCEBA},
    { .value = 0xC6F4},
    { .value = 0xBEF9},
    { .value = 0xD6BA},
    { .value = 0xFEC3},
    { .value = 0xDEB8},
    { .value = 0xFEC6},
    { .value = 0xB6FF},
    { .value = 0xFF00},
    { .value = 0xFEE8},
    { .value = 0xFE7A},
    { .value = 0xDEDB},
    { .value = 0xFF0C},
    { .value = 0xFF40},
    { .value = 0xCF5A},
    { .value = 0xC73F},
    { .value = 0xFF11},
    { .value = 0xFF64},
    { .value = 0xDF1C},
    { .value = 0xCF5D},
    { .value = 0xEF18},
    { .value = 0xFF80},
    { .value = 0xEF3A},
    { .value = 0xE73C},
    { .value = 0xCF7F},
    { .value = 0xEF5D},
    { .value = 0xFF57},
    { .value = 0xFFAA},
    { .value = 0xD77F},
    { .value = 0xEF91},
    { .value = 0xFF55},
    { .value = 0xFF90},
    { .value = 0xFFAD},
    { .value = 0xFF93},
    { .value = 0xEF9E},
    { .value = 0xFF9A},
    { .value = 0xF7BD},
    { .value = 0xF7D8},
    { .value = 0xFFD6},
    { .value = 0xFFDC},
    { .value = 0xFFFF},
    { .value = 0x7E65},
    { .value = 0x3C80},
    { .value = 0xFEA2},
    { .value = 0xAD55},
    { .value = 0x10C2},
    { .value = 0xA000},
};

