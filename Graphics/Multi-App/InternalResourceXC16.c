/*****************************************************************************
 * FileName:        InternalResourceXC16.c
 * Processor:       PIC24F, PIC24H, dsPIC
 * Compiler:        MPLAB C30/XC16 (see release notes for tested revision)
 * Linker:          MPLAB LINK30/XC16
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
 * Converted Resources
 * -------------------
 *
 * Bitmaps
 * -------
 * Engine1 - 73x55 pixels, 4-bits per pixel
 * Engine2 - 73x55 pixels, 4-bits per pixel
 * Engine3 - 73x55 pixels, 4-bits per pixel
 * Engine4 - 73x55 pixels, 4-bits per pixel
 * mchpLogo - 152x40 pixels, 4-bits per pixel
 * mchpIcon0 - 32x32 pixels, 1-bits per pixel
 * JpegIcon - 16x16 pixels, 4-bits per pixel
 * BitmapIcon - 16x16 pixels, 4-bits per pixel
 * FolderIcon - 16x16 pixels, 4-bits per pixel
 *
 * Fonts
 * -----
 * JapaneseFont - Height: 25 pixels, 1 bit per pixel, Range: '!' to '?'
 * ChineseFont - Height: 25 pixels, 1 bit per pixel, Range: '!' to '?'
 * KoreanFont - Height: 25 pixels, 1 bit per pixel, Range: '!' to '?'
 * RussianFont - Height: 25 pixels, 1 bit per pixel, Range: ' ' to '?'
 * GOLSmallFont - Height: 17 pixels, 1 bit per pixel, Range: ' ' to '~'
 * GOLMediumFont - Height: 19 pixels, 1 bit per pixel, Range: ' ' to '~'
 *****************************************************************************/

/*****************************************************************************
 * SECTION:  JapaneseFont
 *****************************************************************************/

const XCHAR JapaneseStr[] = {   0x0027, 0x0024, 0x0022, 0x0028, 0x0021, 0x0028, 0x0025, 0x0023, 0x0026, 0x0020, 0x0000    };    // In Japanese

/*****************************************************************************
 * SECTION:  ChineseFont
 *****************************************************************************/

const XCHAR ChineseStr[] = {   0x0022, 0x0023, 0x0021, 0x0024, 0x0020, 0x0000    };    // In Chinese

/*****************************************************************************
 * SECTION:  KoreanFont
 *****************************************************************************/

const XCHAR KoreanStr[] = {   0x0027, 0x0023, 0x002B, 0x0026, 0x0029, 0x0021, 0x0026, 0x0022, 0x002A, 0x0028, 0x0024, 0x0025, 0x0020, 0x0000    };    // In Korean

/*****************************************************************************
 * SECTION:  RussianFont
 *****************************************************************************/

const XCHAR RussianStr[] = {   0x0022, 0x0026, 0x0029, 0x0024, 0x0025, 0x002A, 0x002B, 0x0025, 0x002C, 0x0028, 0x0020, 0x0023, 0x0027, 0x0029, 0x0020, 0x0021, 0x0000    };    // In Russian

/*****************************************************************************
 * SECTION:  Fonts
 *****************************************************************************/

/*********************************
 * TTF Font File Structure
 * Label: JapaneseFont
 * Description:  Height: 25 pixels, 1 bit per pixel, Range: '!' to '?'
 * Comment Block:
 * ========================================================================== 
 *  
 * Created from AR PL New Sung font (fireflysung.ttf). 
 *  
 * AR PL New Sung font is 
 *     Copyright (c) 1994-1999, Arphic Technology Co., Ltd. 
 *     Copyright (C) 1999-2004, Firefly and Arphic Technology Co., Ltd. 
 * All Rights Reserved. 
 *  
 * NOTICE: This Truetype font contains embedded bitmap fonts made 
 *     by firefly and is released as a whole 
 *     under the ARPHIC PUBLIC LICENSE. 
 *     There are also seperate bitmap fonts made by Firefly and 
 *     released under the GENERAL PUBLIC LICENSE (GPL): 
 *     http://www.study-area.org/apt/firefly-font/bitmaps/ 
 *  
 * Copyright: 
 *     (Copied from 'license/english/ARPHICPL.TXT'. 
 *     See 'license/big5/ARPHICPL.TXT' or 'license/gb/ARPHICPL.TXT' 
 *     for the Chinese version.) 
 *  
 * ========================================================================== 
 *  
 * ARPHIC PUBLIC LICENSE 
 *  
 * Copyright (C) 1999 Arphic Technology Co., Ltd. 
 * 11Fl. No.168, Yung Chi Rd., Taipei, 110 Taiwan 
 * All rights reserved except as specified below. 
 *  
 * Everyone is permitted to copy and distribute verbatim copies of this 
 * license document, but changing it is forbidden. 
 *  
 * Preamble 
 *  
 *    The licenses for most software are designed to take away your freedom 
 * to share and change it. By contrast, the ARPHIC PUBLIC LICENSE 
 * specifically permits and encourages you to use this software, provided 
 * that you give the recipients all the rights that we gave you and make 
 * sure they can get the modifications of this software. 
 *  
 * Legal Terms 
 *  
 * 0. Definitions: 
 *    Throughout this License, "Font" means the TrueType fonts "AR PL 
 * Mingti2L Big5", "AR PL KaitiM Big5" (BIG-5 character set) and "AR PL 
 * SungtiL GB", "AR PL KaitiM GB" (GB character set) which are originally 
 * distributed by Arphic, and the derivatives of those fonts created 
 * through any modification including modifying glyph, reordering glyph, 
 * converting format, changing font name, or adding/deleting some 
 * characters in/from glyph table. 
 *  
 *    "PL" means "Public License". 
 *  
 *    "Copyright Holder" means whoever is named in the copyright or 
 * copyrights for the Font. 
 *  
 *    "You" means the licensee, or person copying, redistributing or 
 * modifying the Font. 
 *  
 *    "Freely Available" means that you have the freedom to copy or modify 
 * the Font as well as redistribute copies of the Font under the same 
 * conditions you received, not price. If you wish, you can charge for this 
 * service. 
 *  
 * 1. Copying & Distribution 
 *    You may copy and distribute verbatim copies of this Font in any 
 * medium, without restriction, provided that you retain this license file 
 * (ARPHICPL.TXT) unaltered in all copies. 
 *  
 * 2. Modification 
 *    You may otherwise modify your copy of this Font in any way, including 
 * modifying glyph, reordering glyph, converting format, changing font 
 * name, or adding/deleting some characters in/from glyph table, and copy 
 * and distribute such modifications under the terms of Section 1 above, 
 * provided that the following conditions are met: 
 *  
 *    a) You must insert a prominent notice in each modified file stating 
 * how and when you changed that file. 
 *  
 *    b) You must make such modifications Freely Available as a whole to 
 * all third parties under the terms of this License, such as by offering 
 * access to copy the modifications from a designated place, or 
 * distributing the modifications on a medium customarily used for software 
 * interchange. 
 *  
 *    c) If the modified fonts normally reads commands interactively when 
 * run, you must cause it, when started running for such interactive use in 
 * the most ordinary way, to print or display an announcement including an 
 * appropriate copyright notice and a notice that there is no warranty (or 
 * else, saying that you provide a warranty) and that users may 
 * redistribute the Font under these conditions, and telling the user how 
 * to view a copy of this License. 
 *  
 *    These requirements apply to the modified work as a whole. If 
 * identifiable sections of that work are not derived from the Font, and 
 * can be reasonably considered independent and separate works in 
 * themselves, then this License and its terms, do not apply to those 
 * sections when you distribute them as separate works. Therefore, mere 
 * aggregation of another work not based on the Font with the Font on a 
 * volume of a storage or distribution medium does not bring the other work 
 * under the scope of this License. 
 *  
 * 3. Condition Subsequent 
 *    You may not copy, modify, sublicense, or distribute the Font except 
 * as expressly provided under this License. Any attempt otherwise to copy, 
 * modify, sublicense or distribute the Font will automatically 
 * retroactively void your rights under this License. However, parties who 
 * have received copies or rights from you under this License will keep 
 * their licenses valid so long as such parties remain in full compliance. 
 *  
 * 4. Acceptance 
 *    You are not required to accept this License, since you have not 
 * signed it. However, nothing else grants you permission to copy, modify, 
 * sublicense or distribute the Font. These actions are prohibited by law 
 * if you do not accept this License. Therefore, by copying, modifying, 
 * sublicensing or distributing the Font, you indicate your acceptance of 
 * this License and all its terms and conditions. 
 *  
 * 5. Automatic Receipt 
 *    Each time you redistribute the Font, the recipient automatically 
 * receives a license from the original licensor to copy, distribute or 
 * modify the Font subject to these terms and conditions. You may not 
 * impose any further restrictions on the recipients' exercise of the 
 * rights granted herein. You are not responsible for enforcing compliance 
 * by third parties to this License. 
 *  
 * 6. Contradiction 
 *    If, as a consequence of a court judgment or allegation of patent 
 * infringement or for any other reason (not limited to patent issues), 
 * conditions are imposed on you (whether by court order, agreement or 
 * otherwise) that contradict the conditions of this License, they do not 
 * excuse you from the conditions of this License. If you cannot distribute 
 * so as to satisfy simultaneously your obligations under this License and 
 * any other pertinent obligations, then as a consequence you may not 
 * distribute the Font at all. For example, if a patent license would not 
 * permit royalty-free redistribution of the Font by all those who receive 
 * copies directly or indirectly through you, then the only way you could 
 * satisfy both it and this License would be to refrain entirely from 
 * distribution of the Font. 
 *  
 *    If any portion of this section is held invalid or unenforceable under 
 * any particular circumstance, the balance of the section is intended to 
 * apply and the section as a whole is intended to apply in other 
 * circumstances. 
 *  
 * 7. NO WARRANTY 
 *    BECAUSE THE FONT IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY FOR 
 * THE FONT, TO THE EXTENT PERMITTED BY APPLICABLE LAW. EXCEPT WHEN 
 * OTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS OR OTHER PARTIES 
 * PROVIDE THE FONT "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED 
 * OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF 
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. THE ENTIRE RISK AS 
 * TO THE QUALITY AND PERFORMANCE OF THE FONT IS WITH YOU. SHOULD THE FONT 
 * PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING, REPAIR 
 * OR CORRECTION. 
 *  
 * 8. DAMAGES WAIVER 
 *    UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING, IN NO 
 * EVENT WILL ANY COPYRIGHTT HOLDERS, OR OTHER PARTIES WHO MAY COPY, MODIFY 
 * OR REDISTRIBUTE THE FONT AS PERMITTED ABOVE, BE LIABLE TO YOU FOR ANY 
 * DIRECT, INDIRECT, CONSEQUENTIAL, INCIDENTAL, SPECIAL OR EXEMPLARY 
 * DAMAGES ARISING OUT OF THE USE OR INABILITY TO USE THE FONT (INCLUDING 
 * BUT NOT LIMITED TO PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF 
 * USE, DATA OR PROFITS; OR BUSINESS INTERRUPTION), EVEN IF SUCH HOLDERS OR 
 * OTHER PARTIES HAVE BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES. 
 *  
 * ====================================================================== 
 ***********************************/
#ifdef USE_GFX_FONT_IN_PROGRAM_SECTION
extern const char __JapaneseFont[] __attribute__((space(prog), aligned(2)));
#else
extern const char __JapaneseFont[] __attribute__((aligned(2)));
#endif

const FONT_FLASH JapaneseFont =
{
    (FLASH | COMP_NONE),
    (GFX_FONT_SPACE char *)__JapaneseFont
};

#ifdef USE_GFX_FONT_IN_PROGRAM_SECTION
asm(".section .text, code");
#else
asm(".section .const, psv, page");
#endif
asm(".global ___JapaneseFont");
asm(".align 2");
asm("___JapaneseFont:");
/****************************************
 * Font header
 ****************************************/
asm(".byte 0x00");           // Font ID
asm(".byte 0x00");           // Font information:  1 bit per pixel, Characters zero degress rotation
asm(".byte 0x20, 0x00");     // First Character
asm(".byte 0x28, 0x00");     // Last Character
asm(".byte 0x19, 0x00");     // Height
/****************************************
 * Font Glyph Table
 ****************************************/
asm(".byte 0x07");              // width of the glyph
asm(".byte 0x2C, 0x00, 0x00");       // Character - 33, offset (0x0000002C)
asm(".byte 0x16");              // width of the glyph
asm(".byte 0x45, 0x00, 0x00");       // Character - 12371, offset (0x00000045)
asm(".byte 0x16");              // width of the glyph
asm(".byte 0x90, 0x00, 0x00");       // Character - 12373, offset (0x00000090)
asm(".byte 0x16");              // width of the glyph
asm(".byte 0xDB, 0x00, 0x00");       // Character - 12385, offset (0x000000DB)
asm(".byte 0x16");              // width of the glyph
asm(".byte 0x26, 0x01, 0x00");       // Character - 12394, offset (0x00000126)
asm(".byte 0x16");              // width of the glyph
asm(".byte 0x71, 0x01, 0x00");       // Character - 12395, offset (0x00000171)
asm(".byte 0x16");              // width of the glyph
asm(".byte 0xBC, 0x01, 0x00");       // Character - 12399, offset (0x000001BC)
asm(".byte 0x16");              // width of the glyph
asm(".byte 0x07, 0x02, 0x00");       // Character - 12415, offset (0x00000207)
asm(".byte 0x16");              // width of the glyph
asm(".byte 0x52, 0x02, 0x00");       // Character - 12435, offset (0x00000252)
/***********************************
 * Font Characters
 ***********************************/
/***********************************
 * Character - 33
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x1C");        //   ***   
asm(".byte 0x0C");        //   **    
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 12371
 ***********************************/
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x20, 0x00, 0x00");        //      *                  
asm(".byte 0xC0, 0xFF, 0x00");        //       **********        
asm(".byte 0x00, 0x10, 0x00");        //             *           
asm(".byte 0x00, 0x08, 0x00");        //            *            
asm(".byte 0x00, 0x06, 0x00");        //          **             
asm(".byte 0x00, 0x01, 0x00");        //         *               
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x40, 0x00, 0x00");        //       *                 
asm(".byte 0x20, 0x00, 0x00");        //      *                  
asm(".byte 0x20, 0x00, 0x00");        //      *                  
asm(".byte 0x20, 0x00, 0x00");        //      *                  
asm(".byte 0x20, 0x00, 0x00");        //      *                  
asm(".byte 0xC0, 0xFF, 0x00");        //       **********        
asm(".byte 0x00, 0x0E, 0x01");        //          ***    *       
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         

/***********************************
 * Character - 12373
 ***********************************/
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x80, 0x03, 0x00");        //        ***              
asm(".byte 0x00, 0x02, 0x00");        //          *              
asm(".byte 0x00, 0x06, 0x00");        //          **             
asm(".byte 0x00, 0x64, 0x00");        //           *  **         
asm(".byte 0x00, 0x1C, 0x00");        //           ***           
asm(".byte 0x00, 0x0E, 0x00");        //          ***            
asm(".byte 0xE0, 0x09, 0x00");        //      ****  *            
asm(".byte 0x00, 0x10, 0x00");        //             *           
asm(".byte 0x00, 0x10, 0x00");        //             *           
asm(".byte 0x00, 0x24, 0x00");        //           *  *          
asm(".byte 0x80, 0x7B, 0x00");        //        *** ****         
asm(".byte 0x40, 0x40, 0x00");        //       *       *         
asm(".byte 0x60, 0x00, 0x00");        //      **                 
asm(".byte 0x20, 0x00, 0x00");        //      *                  
asm(".byte 0x40, 0x00, 0x00");        //       *                 
asm(".byte 0xC0, 0x00, 0x00");        //       **                
asm(".byte 0x80, 0x3F, 0x00");        //        *******          
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         

/***********************************
 * Character - 12385
 ***********************************/
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x01, 0x00");        //         *               
asm(".byte 0x00, 0x06, 0x00");        //          **             
asm(".byte 0x00, 0x06, 0x00");        //          **             
asm(".byte 0x00, 0x62, 0x00");        //          *   **         
asm(".byte 0x10, 0x1E, 0x00");        //     *    ****           
asm(".byte 0xE0, 0x03, 0x00");        //      *****              
asm(".byte 0x00, 0x01, 0x00");        //         *               
asm(".byte 0x00, 0x01, 0x00");        //         *               
asm(".byte 0x80, 0x70, 0x00");        //        *    ***         
asm(".byte 0x80, 0x8E, 0x00");        //        * ***   *        
asm(".byte 0x80, 0x03, 0x01");        //        ***      *       
asm(".byte 0xC0, 0x00, 0x01");        //       **        *       
asm(".byte 0x80, 0x00, 0x01");        //        *        *       
asm(".byte 0x00, 0x00, 0x01");        //                 *       
asm(".byte 0x00, 0x80, 0x01");        //                **       
asm(".byte 0x00, 0xC0, 0x00");        //               **        
asm(".byte 0x00, 0x60, 0x00");        //              **         
asm(".byte 0x80, 0x1F, 0x00");        //        ******           
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         

/***********************************
 * Character - 12394
 ***********************************/
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x02, 0x00");        //          *              
asm(".byte 0x00, 0x04, 0x00");        //           *             
asm(".byte 0x00, 0x02, 0x00");        //          *              
asm(".byte 0x10, 0x1E, 0x00");        //     *    ****           
asm(".byte 0xE0, 0x07, 0x00");        //      ******             
asm(".byte 0x00, 0xE1, 0x01");        //         *    ****       
asm(".byte 0x80, 0x80, 0x07");        //        *       ****     
asm(".byte 0x80, 0x60, 0x00");        //        *     **         
asm(".byte 0x40, 0x20, 0x00");        //       *      *          
asm(".byte 0x40, 0x20, 0x00");        //       *      *          
asm(".byte 0x20, 0x20, 0x00");        //      *       *          
asm(".byte 0x20, 0x20, 0x00");        //      *       *          
asm(".byte 0x10, 0x3E, 0x00");        //     *    *****          
asm(".byte 0x90, 0xE1, 0x00");        //     *  **    ***        
asm(".byte 0x80, 0xA0, 0x01");        //        *     * **       
asm(".byte 0x00, 0x31, 0x01");        //         *   **  *       
asm(".byte 0x00, 0x1E, 0x00");        //          ****           
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         

/***********************************
 * Character - 12395
 ***********************************/
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x30, 0x00, 0x00");        //     **                  
asm(".byte 0x20, 0x00, 0x00");        //      *                  
asm(".byte 0x60, 0xEE, 0x03");        //      **  *** *****      
asm(".byte 0x20, 0x30, 0x00");        //      *      **          
asm(".byte 0x10, 0x00, 0x00");        //     *                   
asm(".byte 0x10, 0x00, 0x00");        //     *                   
asm(".byte 0x10, 0x00, 0x00");        //     *                   
asm(".byte 0x10, 0x00, 0x00");        //     *                   
asm(".byte 0x48, 0x00, 0x00");        //    *  *                 
asm(".byte 0x28, 0x00, 0x00");        //    * *                  
asm(".byte 0x28, 0x02, 0x00");        //    * *   *              
asm(".byte 0x38, 0x02, 0x00");        //    ***   *              
asm(".byte 0x18, 0x04, 0x00");        //    **     *             
asm(".byte 0x10, 0xF8, 0x03");        //     *      *******      
asm(".byte 0x10, 0x00, 0x00");        //     *                   
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         

/***********************************
 * Character - 12399
 ***********************************/
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x10, 0x70, 0x00");        //     *       ***         
asm(".byte 0x20, 0xC0, 0x00");        //      *        **        
asm(".byte 0x20, 0x40, 0x00");        //      *        *         
asm(".byte 0x20, 0x40, 0x03");        //      *        * **      
asm(".byte 0x10, 0xF3, 0x00");        //     *   **  ****        
asm(".byte 0x10, 0x4C, 0x00");        //     *     **  *         
asm(".byte 0x10, 0x40, 0x00");        //     *         *         
asm(".byte 0x10, 0x40, 0x00");        //     *         *         
asm(".byte 0x08, 0x40, 0x00");        //    *          *         
asm(".byte 0x68, 0x40, 0x00");        //    * **       *         
asm(".byte 0x28, 0x40, 0x00");        //    * *        *         
asm(".byte 0x18, 0x7C, 0x00");        //    **     *****         
asm(".byte 0x18, 0xC3, 0x03");        //    **   **    ****      
asm(".byte 0x18, 0x41, 0x06");        //    **   *     *  **     
asm(".byte 0x10, 0x7E, 0x04");        //     *    ******   *     
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         

/***********************************
 * Character - 12415
 ***********************************/
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x10, 0x00");        //             *           
asm(".byte 0x40, 0x38, 0x00");        //       *    ***          
asm(".byte 0x80, 0x17, 0x00");        //        **** *           
asm(".byte 0x00, 0x18, 0x00");        //            **           
asm(".byte 0x00, 0x08, 0x00");        //            *            
asm(".byte 0x00, 0x48, 0x00");        //            *  *         
asm(".byte 0x00, 0x84, 0x01");        //           *    **       
asm(".byte 0x00, 0x04, 0x01");        //           *     *       
asm(".byte 0x00, 0x02, 0x01");        //          *      *       
asm(".byte 0xE0, 0xBF, 0x00");        //      ********* *        
asm(".byte 0x10, 0xC1, 0x00");        //     *   *     **        
asm(".byte 0x98, 0xC0, 0x03");        //    **  *      ****      
asm(".byte 0x48, 0x40, 0x06");        //    *  *       *  **     
asm(".byte 0x68, 0x20, 0x08");        //    * **      *     *    
asm(".byte 0x18, 0x10, 0x00");        //    **       *           
asm(".byte 0x00, 0x0C, 0x00");        //           **            
asm(".byte 0x00, 0x03, 0x00");        //         **              
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         

/***********************************
 * Character - 12435
 ***********************************/
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x01, 0x00");        //         *               
asm(".byte 0x00, 0x06, 0x00");        //          **             
asm(".byte 0x00, 0x04, 0x00");        //           *             
asm(".byte 0x00, 0x02, 0x00");        //          *              
asm(".byte 0x00, 0x03, 0x00");        //         **              
asm(".byte 0x00, 0x01, 0x00");        //         *               
asm(".byte 0x80, 0x00, 0x00");        //        *                
asm(".byte 0x80, 0x00, 0x00");        //        *                
asm(".byte 0x40, 0x0E, 0x00");        //       *  ***            
asm(".byte 0xE0, 0x19, 0x00");        //      ****  **           
asm(".byte 0x60, 0x10, 0x04");        //      **     *     *     
asm(".byte 0x30, 0x10, 0x04");        //     **      *     *     
asm(".byte 0x10, 0x08, 0x02");        //     *      *     *      
asm(".byte 0x18, 0x08, 0x02");        //    **      *     *      
asm(".byte 0x08, 0x08, 0x01");        //    *       *    *       
asm(".byte 0x08, 0xD8, 0x00");        //    *       ** **        
asm(".byte 0x08, 0x20, 0x00");        //    *         *          
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         

asm(".section .const, psv, page");
/*********************************
 * TTF Font File Structure
 * Label: ChineseFont
 * Description:  Height: 25 pixels, 1 bit per pixel, Range: '!' to '?'
 * Comment Block:
 * ========================================================================== 
 *  
 * Created from AR PL New Sung font (fireflysung.ttf). 
 *  
 * AR PL New Sung font is 
 *     Copyright (c) 1994-1999, Arphic Technology Co., Ltd. 
 *     Copyright (C) 1999-2004, Firefly and Arphic Technology Co., Ltd. 
 * All Rights Reserved. 
 *  
 * NOTICE: This Truetype font contains embedded bitmap fonts made 
 *     by firefly and is released as a whole 
 *     under the ARPHIC PUBLIC LICENSE. 
 *     There are also seperate bitmap fonts made by Firefly and 
 *     released under the GENERAL PUBLIC LICENSE (GPL): 
 *     http://www.study-area.org/apt/firefly-font/bitmaps/ 
 *  
 * Copyright: 
 *     (Copied from 'license/english/ARPHICPL.TXT'. 
 *     See 'license/big5/ARPHICPL.TXT' or 'license/gb/ARPHICPL.TXT' 
 *     for the Chinese version.) 
 *  
 * ========================================================================== 
 *  
 * ARPHIC PUBLIC LICENSE 
 *  
 * Copyright (C) 1999 Arphic Technology Co., Ltd. 
 * 11Fl. No.168, Yung Chi Rd., Taipei, 110 Taiwan 
 * All rights reserved except as specified below. 
 *  
 * Everyone is permitted to copy and distribute verbatim copies of this 
 * license document, but changing it is forbidden. 
 *  
 * Preamble 
 *  
 *    The licenses for most software are designed to take away your freedom 
 * to share and change it. By contrast, the ARPHIC PUBLIC LICENSE 
 * specifically permits and encourages you to use this software, provided 
 * that you give the recipients all the rights that we gave you and make 
 * sure they can get the modifications of this software. 
 *  
 * Legal Terms 
 *  
 * 0. Definitions: 
 *    Throughout this License, "Font" means the TrueType fonts "AR PL 
 * Mingti2L Big5", "AR PL KaitiM Big5" (BIG-5 character set) and "AR PL 
 * SungtiL GB", "AR PL KaitiM GB" (GB character set) which are originally 
 * distributed by Arphic, and the derivatives of those fonts created 
 * through any modification including modifying glyph, reordering glyph, 
 * converting format, changing font name, or adding/deleting some 
 * characters in/from glyph table. 
 *  
 *    "PL" means "Public License". 
 *  
 *    "Copyright Holder" means whoever is named in the copyright or 
 * copyrights for the Font. 
 *  
 *    "You" means the licensee, or person copying, redistributing or 
 * modifying the Font. 
 *  
 *    "Freely Available" means that you have the freedom to copy or modify 
 * the Font as well as redistribute copies of the Font under the same 
 * conditions you received, not price. If you wish, you can charge for this 
 * service. 
 *  
 * 1. Copying & Distribution 
 *    You may copy and distribute verbatim copies of this Font in any 
 * medium, without restriction, provided that you retain this license file 
 * (ARPHICPL.TXT) unaltered in all copies. 
 *  
 * 2. Modification 
 *    You may otherwise modify your copy of this Font in any way, including 
 * modifying glyph, reordering glyph, converting format, changing font 
 * name, or adding/deleting some characters in/from glyph table, and copy 
 * and distribute such modifications under the terms of Section 1 above, 
 * provided that the following conditions are met: 
 *  
 *    a) You must insert a prominent notice in each modified file stating 
 * how and when you changed that file. 
 *  
 *    b) You must make such modifications Freely Available as a whole to 
 * all third parties under the terms of this License, such as by offering 
 * access to copy the modifications from a designated place, or 
 * distributing the modifications on a medium customarily used for software 
 * interchange. 
 *  
 *    c) If the modified fonts normally reads commands interactively when 
 * run, you must cause it, when started running for such interactive use in 
 * the most ordinary way, to print or display an announcement including an 
 * appropriate copyright notice and a notice that there is no warranty (or 
 * else, saying that you provide a warranty) and that users may 
 * redistribute the Font under these conditions, and telling the user how 
 * to view a copy of this License. 
 *  
 *    These requirements apply to the modified work as a whole. If 
 * identifiable sections of that work are not derived from the Font, and 
 * can be reasonably considered independent and separate works in 
 * themselves, then this License and its terms, do not apply to those 
 * sections when you distribute them as separate works. Therefore, mere 
 * aggregation of another work not based on the Font with the Font on a 
 * volume of a storage or distribution medium does not bring the other work 
 * under the scope of this License. 
 *  
 * 3. Condition Subsequent 
 *    You may not copy, modify, sublicense, or distribute the Font except 
 * as expressly provided under this License. Any attempt otherwise to copy, 
 * modify, sublicense or distribute the Font will automatically 
 * retroactively void your rights under this License. However, parties who 
 * have received copies or rights from you under this License will keep 
 * their licenses valid so long as such parties remain in full compliance. 
 *  
 * 4. Acceptance 
 *    You are not required to accept this License, since you have not 
 * signed it. However, nothing else grants you permission to copy, modify, 
 * sublicense or distribute the Font. These actions are prohibited by law 
 * if you do not accept this License. Therefore, by copying, modifying, 
 * sublicensing or distributing the Font, you indicate your acceptance of 
 * this License and all its terms and conditions. 
 *  
 * 5. Automatic Receipt 
 *    Each time you redistribute the Font, the recipient automatically 
 * receives a license from the original licensor to copy, distribute or 
 * modify the Font subject to these terms and conditions. You may not 
 * impose any further restrictions on the recipients' exercise of the 
 * rights granted herein. You are not responsible for enforcing compliance 
 * by third parties to this License. 
 *  
 * 6. Contradiction 
 *    If, as a consequence of a court judgment or allegation of patent 
 * infringement or for any other reason (not limited to patent issues), 
 * conditions are imposed on you (whether by court order, agreement or 
 * otherwise) that contradict the conditions of this License, they do not 
 * excuse you from the conditions of this License. If you cannot distribute 
 * so as to satisfy simultaneously your obligations under this License and 
 * any other pertinent obligations, then as a consequence you may not 
 * distribute the Font at all. For example, if a patent license would not 
 * permit royalty-free redistribution of the Font by all those who receive 
 * copies directly or indirectly through you, then the only way you could 
 * satisfy both it and this License would be to refrain entirely from 
 * distribution of the Font. 
 *  
 *    If any portion of this section is held invalid or unenforceable under 
 * any particular circumstance, the balance of the section is intended to 
 * apply and the section as a whole is intended to apply in other 
 * circumstances. 
 *  
 * 7. NO WARRANTY 
 *    BECAUSE THE FONT IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY FOR 
 * THE FONT, TO THE EXTENT PERMITTED BY APPLICABLE LAW. EXCEPT WHEN 
 * OTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS OR OTHER PARTIES 
 * PROVIDE THE FONT "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED 
 * OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF 
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. THE ENTIRE RISK AS 
 * TO THE QUALITY AND PERFORMANCE OF THE FONT IS WITH YOU. SHOULD THE FONT 
 * PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING, REPAIR 
 * OR CORRECTION. 
 *  
 * 8. DAMAGES WAIVER 
 *    UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING, IN NO 
 * EVENT WILL ANY COPYRIGHTT HOLDERS, OR OTHER PARTIES WHO MAY COPY, MODIFY 
 * OR REDISTRIBUTE THE FONT AS PERMITTED ABOVE, BE LIABLE TO YOU FOR ANY 
 * DIRECT, INDIRECT, CONSEQUENTIAL, INCIDENTAL, SPECIAL OR EXEMPLARY 
 * DAMAGES ARISING OUT OF THE USE OR INABILITY TO USE THE FONT (INCLUDING 
 * BUT NOT LIMITED TO PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF 
 * USE, DATA OR PROFITS; OR BUSINESS INTERRUPTION), EVEN IF SUCH HOLDERS OR 
 * OTHER PARTIES HAVE BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES. 
 *  
 * ====================================================================== 
 ***********************************/
#ifdef USE_GFX_FONT_IN_PROGRAM_SECTION
extern const char __ChineseFont[] __attribute__((space(prog), aligned(2)));
#else
extern const char __ChineseFont[] __attribute__((aligned(2)));
#endif

const FONT_FLASH ChineseFont =
{
    (FLASH | COMP_NONE),
    (GFX_FONT_SPACE char *)__ChineseFont
};

#ifdef USE_GFX_FONT_IN_PROGRAM_SECTION
asm(".section .text, code");
#else
asm(".section .const, psv, page");
#endif
asm(".global ___ChineseFont");
asm(".align 2");
asm("___ChineseFont:");
/****************************************
 * Font header
 ****************************************/
asm(".byte 0x00");           // Font ID
asm(".byte 0x00");           // Font information:  1 bit per pixel, Characters zero degress rotation
asm(".byte 0x20, 0x00");     // First Character
asm(".byte 0x24, 0x00");     // Last Character
asm(".byte 0x19, 0x00");     // Height
/****************************************
 * Font Glyph Table
 ****************************************/
asm(".byte 0x07");              // width of the glyph
asm(".byte 0x1C, 0x00, 0x00");       // Character - 33, offset (0x0000001C)
asm(".byte 0x16");              // width of the glyph
asm(".byte 0x35, 0x00, 0x00");       // Character - 19990, offset (0x00000035)
asm(".byte 0x16");              // width of the glyph
asm(".byte 0x80, 0x00, 0x00");       // Character - 20320, offset (0x00000080)
asm(".byte 0x16");              // width of the glyph
asm(".byte 0xCB, 0x00, 0x00");       // Character - 22909, offset (0x000000CB)
asm(".byte 0x16");              // width of the glyph
asm(".byte 0x16, 0x01, 0x00");       // Character - 30028, offset (0x00000116)
/***********************************
 * Font Characters
 ***********************************/
/***********************************
 * Character - 33
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x1C");        //   ***   
asm(".byte 0x0C");        //   **    
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 19990
 ***********************************/
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x8C, 0x01");        //           **   **       
asm(".byte 0x10, 0x84, 0x00");        //     *     *    *        
asm(".byte 0x30, 0x84, 0x00");        //     **    *    *        
asm(".byte 0x10, 0x84, 0x00");        //     *     *    *        
asm(".byte 0x10, 0x84, 0x04");        //     *     *    *  *     
asm(".byte 0x10, 0x84, 0x0C");        //     *     *    *  **    
asm(".byte 0xFE, 0xFF, 0x13");        //  *****************  *   
asm(".byte 0x10, 0x84, 0x00");        //     *     *    *        
asm(".byte 0x10, 0x84, 0x00");        //     *     *    *        
asm(".byte 0x10, 0x84, 0x00");        //     *     *    *        
asm(".byte 0x10, 0x84, 0x00");        //     *     *    *        
asm(".byte 0x10, 0x84, 0x00");        //     *     *    *        
asm(".byte 0x10, 0x84, 0x00");        //     *     *    *        
asm(".byte 0x10, 0xFC, 0x00");        //     *     ******        
asm(".byte 0x10, 0x84, 0x00");        //     *     *    *        
asm(".byte 0x10, 0x00, 0x00");        //     *                   
asm(".byte 0x10, 0x00, 0x02");        //     *            *      
asm(".byte 0x10, 0x00, 0x0C");        //     *             **    
asm(".byte 0xF0, 0xFF, 0x03");        //     **************      
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         

/***********************************
 * Character - 20320
 ***********************************/
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x20, 0x00, 0x00");        //      *                  
asm(".byte 0xC0, 0x18, 0x00");        //       **   **           
asm(".byte 0x40, 0x08, 0x00");        //       *    *            
asm(".byte 0x20, 0x08, 0x00");        //      *     *            
asm(".byte 0x20, 0x04, 0x00");        //      *    *             
asm(".byte 0x10, 0xFC, 0x1F");        //     *     ***********   
asm(".byte 0x30, 0x42, 0x08");        //     **   *    *    *    
asm(".byte 0x68, 0x42, 0x04");        //    * **  *    *   *     
asm(".byte 0x28, 0x41, 0x02");        //    * *  *     *  *      
asm(".byte 0x24, 0x41, 0x00");        //   *  *  *     *         
asm(".byte 0xA2, 0x44, 0x01");        //  *   * *  *   * *       
asm(".byte 0x22, 0x4C, 0x02");        //  *   *    **  *  *      
asm(".byte 0x20, 0x44, 0x02");        //      *    *   *  *      
asm(".byte 0x20, 0x46, 0x04");        //      *   **   *   *     
asm(".byte 0x20, 0x42, 0x08");        //      *   *    *    *    
asm(".byte 0x20, 0x41, 0x08");        //      *  *     *    *    
asm(".byte 0x20, 0x41, 0x18");        //      *  *     *    **   
asm(".byte 0xA0, 0x40, 0x08");        //      * *      *    *    
asm(".byte 0x20, 0x40, 0x00");        //      *        *         
asm(".byte 0x20, 0x3C, 0x00");        //      *    ****          
asm(".byte 0x30, 0x30, 0x00");        //     **      **          
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         

/***********************************
 * Character - 22909
 ***********************************/
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x20, 0x00, 0x00");        //      *                  
asm(".byte 0x60, 0x00, 0x04");        //      **           *     
asm(".byte 0x20, 0xFE, 0x0F");        //      *   ***********    
asm(".byte 0x20, 0x00, 0x06");        //      *           **     
asm(".byte 0x20, 0x00, 0x02");        //      *           *      
asm(".byte 0xFE, 0x01, 0x01");        //  ********       *       
asm(".byte 0x10, 0xC3, 0x00");        //     *   **    **        
asm(".byte 0x10, 0xC1, 0x00");        //     *   *     **        
asm(".byte 0x90, 0x40, 0x00");        //     *  *      *         
asm(".byte 0x98, 0x40, 0x08");        //    **  *      *    *    
asm(".byte 0x88, 0xFE, 0x1F");        //    *   * ************   
asm(".byte 0x88, 0x40, 0x00");        //    *   *      *         
asm(".byte 0x88, 0x40, 0x00");        //    *   *      *         
asm(".byte 0x58, 0x40, 0x00");        //    ** *       *         
asm(".byte 0x60, 0x40, 0x00");        //      **       *         
asm(".byte 0xE0, 0x40, 0x00");        //      ***      *         
asm(".byte 0xA0, 0x41, 0x00");        //      * **     *         
asm(".byte 0x10, 0x41, 0x00");        //     *   *     *         
asm(".byte 0x08, 0x41, 0x00");        //    *    *     *         
asm(".byte 0x06, 0x78, 0x00");        //  **        ****         
asm(".byte 0x00, 0x60, 0x00");        //              **         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         

/***********************************
 * Character - 30028
 ***********************************/
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x10, 0x00, 0x03");        //     *           **      
asm(".byte 0xF0, 0xFF, 0x02");        //     ************ *      
asm(".byte 0x10, 0x04, 0x02");        //     *     *      *      
asm(".byte 0x10, 0x04, 0x02");        //     *     *      *      
asm(".byte 0xF0, 0xFF, 0x03");        //     **************      
asm(".byte 0x10, 0x04, 0x02");        //     *     *      *      
asm(".byte 0x10, 0x04, 0x02");        //     *     *      *      
asm(".byte 0xF0, 0xFF, 0x03");        //     **************      
asm(".byte 0x10, 0x16, 0x01");        //     *    ** *   *       
asm(".byte 0x00, 0x23, 0x00");        //         **   *          
asm(".byte 0x80, 0xC0, 0x00");        //        *      **        
asm(".byte 0xC0, 0x20, 0x07");        //       **     *  ***     
asm(".byte 0x30, 0x41, 0x1C");        //     **  *     *   ***   
asm(".byte 0x0C, 0x41, 0x00");        //   **    *     *         
asm(".byte 0x02, 0x41, 0x00");        //  *      *     *         
asm(".byte 0x80, 0x40, 0x00");        //        *      *         
asm(".byte 0x80, 0x40, 0x00");        //        *      *         
asm(".byte 0x40, 0x40, 0x00");        //       *       *         
asm(".byte 0x30, 0x40, 0x00");        //     **        *         
asm(".byte 0x0C, 0x20, 0x00");        //   **         *          
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         

asm(".section .const, psv, page");
/*********************************
 * TTF Font File Structure
 * Label: KoreanFont
 * Description:  Height: 25 pixels, 1 bit per pixel, Range: '!' to '?'
 * Comment Block:
 * http://www.gnu.org/copyleft/gpl.html 
 *  
 * 		    GNU GENERAL PUBLIC LICENSE 
 * 		       Version 2, June 1991 
 *  
 * Copyright (C) 1989, 1991 Free Software Foundation, Inc. 
 * 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA 
 * Everyone is permitted to copy and distribute verbatim copies 
 * of this license document, but changing it is not allowed. 
 *  
 * 			    Preamble 
 *  
 * The licenses for most software are designed to take away your 
 * freedom to share and change it.  By contrast, the GNU General Public 
 * License is intended to guarantee your freedom to share and change free 
 * software--to make sure the software is free for all its users.  This 
 * General Public License applies to most of the Free Software 
 * Foundation's software and to any other program whose authors commit to 
 * using it.  (Some other Free Software Foundation software is covered by 
 * the GNU Lesser General Public License instead.)  You can apply it to 
 * your programs, too. 
 *  
 * When we speak of free software, we are referring to freedom, not 
 * price.  Our General Public Licenses are designed to make sure that you 
 * have the freedom to distribute copies of free software (and charge for 
 * this service if you wish), that you receive source code or can get it 
 * if you want it, that you can change the software or use pieces of it 
 * in new free programs; and that you know you can do these things. 
 *  
 * To protect your rights, we need to make restrictions that forbid 
 * anyone to deny you these rights or to ask you to surrender the rights. 
 * These restrictions translate to certain responsibilities for you if you 
 * distribute copies of the software, or if you modify it. 
 *  
 * For example, if you distribute copies of such a program, whether 
 * gratis or for a fee, you must give the recipients all the rights that 
 * you have.  You must make sure that they, too, receive or can get the 
 * source code.  And you must show them these terms so they know their 
 * rights. 
 *  
 * We protect your rights with two steps: (1) copyright the software, and 
 * (2) offer you this license which gives you legal permission to copy, 
 * distribute and/or modify the software. 
 *  
 * Also, for each author's protection and ours, we want to make certain 
 * that everyone understands that there is no warranty for this free 
 * software.  If the software is modified by someone else and passed on, we 
 * want its recipients to know that what they have is not the original, so 
 * that any problems introduced by others will not reflect on the original 
 * authors' reputations. 
 *  
 * Finally, any free program is threatened constantly by software 
 * patents.  We wish to avoid the danger that redistributors of a free 
 * program will individually obtain patent licenses, in effect making the 
 * program proprietary.  To prevent this, we have made it clear that any 
 * patent must be licensed for everyone's free use or not licensed at all. 
 *  
 * The precise terms and conditions for copying, distribution and 
 * modification follow. 
 *  
 * 		    GNU GENERAL PUBLIC LICENSE 
 *    TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION 
 *  
 * 0. This License applies to any program or other work which contains 
 * a notice placed by the copyright holder saying it may be distributed 
 * under the terms of this General Public License.  The "Program", below, 
 * refers to any such program or work, and a "work based on the Program" 
 * means either the Program or any derivative work under copyright law: 
 * that is to say, a work containing the Program or a portion of it, 
 * either verbatim or with modifications and/or translated into another 
 * language.  (Hereinafter, translation is included without limitation in 
 * the term "modification".)  Each licensee is addressed as "you". 
 *  
 * Activities other than copying, distribution and modification are not 
 * covered by this License; they are outside its scope.  The act of 
 * running the Program is not restricted, and the output from the Program 
 * is covered only if its contents constitute a work based on the 
 * Program (independent of having been made by running the Program). 
 * Whether that is true depends on what the Program does. 
 *  
 * 1. You may copy and distribute verbatim copies of the Program's 
 * source code as you receive it, in any medium, provided that you 
 * conspicuously and appropriately publish on each copy an appropriate 
 * copyright notice and disclaimer of warranty; keep intact all the 
 * notices that refer to this License and to the absence of any warranty; 
 * and give any other recipients of the Program a copy of this License 
 * along with the Program. 
 *  
 * You may charge a fee for the physical act of transferring a copy, and 
 * you may at your option offer warranty protection in exchange for a fee. 
 *  
 * 2. You may modify your copy or copies of the Program or any portion 
 * of it, thus forming a work based on the Program, and copy and 
 * distribute such modifications or work under the terms of Section 1 
 * above, provided that you also meet all of these conditions: 
 *  
 *     a) You must cause the modified files to carry prominent notices 
 *     stating that you changed the files and the date of any change. 
 *  
 *     b) You must cause any work that you distribute or publish, that in 
 *     whole or in part contains or is derived from the Program or any 
 *     part thereof, to be licensed as a whole at no charge to all third 
 *     parties under the terms of this License. 
 *  
 *     c) If the modified program normally reads commands interactively 
 *     when run, you must cause it, when started running for such 
 *     interactive use in the most ordinary way, to print or display an 
 *     announcement including an appropriate copyright notice and a 
 *     notice that there is no warranty (or else, saying that you provide 
 *     a warranty) and that users may redistribute the program under 
 *     these conditions, and telling the user how to view a copy of this 
 *     License.  (Exception: if the Program itself is interactive but 
 *     does not normally print such an announcement, your work based on 
 *     the Program is not required to print an announcement.) 
 *  
 * These requirements apply to the modified work as a whole.  If 
 * identifiable sections of that work are not derived from the Program, 
 * and can be reasonably considered independent and separate works in 
 * themselves, then this License, and its terms, do not apply to those 
 * sections when you distribute them as separate works.  But when you 
 * distribute the same sections as part of a whole which is a work based 
 * on the Program, the distribution of the whole must be on the terms of 
 * this License, whose permissions for other licensees extend to the 
 * entire whole, and thus to each and every part regardless of who wrote it. 
 *  
 * Thus, it is not the intent of this section to claim rights or contest 
 * your rights to work written entirely by you; rather, the intent is to 
 * exercise the right to control the distribution of derivative or 
 * collective works based on the Program. 
 *  
 * In addition, mere aggregation of another work not based on the Program 
 * with the Program (or with a work based on the Program) on a volume of 
 * a storage or distribution medium does not bring the other work under 
 * the scope of this License. 
 *  
 * 3. You may copy and distribute the Program (or a work based on it, 
 * under Section 2) in object code or executable form under the terms of 
 * Sections 1 and 2 above provided that you also do one of the following: 
 *  
 *     a) Accompany it with the complete corresponding machine-readable 
 *     source code, which must be distributed under the terms of Sections 
 *     1 and 2 above on a medium customarily used for software interchange; or, 
 *  
 *     b) Accompany it with a written offer, valid for at least three 
 *     years, to give any third party, for a charge no more than your 
 *     cost of physically performing source distribution, a complete 
 *     machine-readable copy of the corresponding source code, to be 
 *     distributed under the terms of Sections 1 and 2 above on a medium 
 *     customarily used for software interchange; or, 
 *  
 *     c) Accompany it with the information you received as to the offer 
 *     to distribute corresponding source code.  (This alternative is 
 *     allowed only for noncommercial distribution and only if you 
 *     received the program in object code or executable form with such 
 *     an offer, in accord with Subsection b above.) 
 *  
 * The source code for a work means the preferred form of the work for 
 * making modifications to it.  For an executable work, complete source 
 * code means all the source code for all modules it contains, plus any 
 * associated interface definition files, plus the scripts used to 
 * control compilation and installation of the executable.  However, as a 
 * special exception, the source code distributed need not include 
 * anything that is normally distributed (in either source or binary 
 * form) with the major components (compiler, kernel, and so on) of the 
 * operating system on which the executable runs, unless that component 
 * itself accompanies the executable. 
 *  
 * If distribution of executable or object code is made by offering 
 * access to copy from a designated place, then offering equivalent 
 * access to copy the source code from the same place counts as 
 * distribution of the source code, even though third parties are not 
 * compelled to copy the source along with the object code. 
 *  
 * 4. You may not copy, modify, sublicense, or distribute the Program 
 * except as expressly provided under this License.  Any attempt 
 * otherwise to copy, modify, sublicense or distribute the Program is 
 * void, and will automatically terminate your rights under this License. 
 * However, parties who have received copies, or rights, from you under 
 * this License will not have their licenses terminated so long as such 
 * parties remain in full compliance. 
 *  
 * 5. You are not required to accept this License, since you have not 
 * signed it.  However, nothing else grants you permission to modify or 
 * distribute the Program or its derivative works.  These actions are 
 * prohibited by law if you do not accept this License.  Therefore, by 
 * modifying or distributing the Program (or any work based on the 
 * Program), you indicate your acceptance of this License to do so, and 
 * all its terms and conditions for copying, distributing or modifying 
 * the Program or works based on it. 
 *  
 * 6. Each time you redistribute the Program (or any work based on the 
 * Program), the recipient automatically receives a license from the 
 * original licensor to copy, distribute or modify the Program subject to 
 * these terms and conditions.  You may not impose any further 
 * restrictions on the recipients' exercise of the rights granted herein. 
 * You are not responsible for enforcing compliance by third parties to 
 * this License. 
 *  
 * 7. If, as a consequence of a court judgment or allegation of patent 
 * infringement or for any other reason (not limited to patent issues), 
 * conditions are imposed on you (whether by court order, agreement or 
 * otherwise) that contradict the conditions of this License, they do not 
 * excuse you from the conditions of this License.  If you cannot 
 * distribute so as to satisfy simultaneously your obligations under this 
 * License and any other pertinent obligations, then as a consequence you 
 * may not distribute the Program at all.  For example, if a patent 
 * license would not permit royalty-free redistribution of the Program by 
 * all those who receive copies directly or indirectly through you, then 
 * the only way you could satisfy both it and this License would be to 
 * refrain entirely from distribution of the Program. 
 *  
 * If any portion of this section is held invalid or unenforceable under 
 * any particular circumstance, the balance of the section is intended to 
 * apply and the section as a whole is intended to apply in other 
 * circumstances. 
 *  
 * It is not the purpose of this section to induce you to infringe any 
 * patents or other property right claims or to contest validity of any 
 * such claims; this section has the sole purpose of protecting the 
 * integrity of the free software distribution system, which is 
 * implemented by public license practices.  Many people have made 
 * generous contributions to the wide range of software distributed 
 * through that system in reliance on consistent application of that 
 * system; it is up to the author/donor to decide if he or she is willing 
 * to distribute software through any other system and a licensee cannot 
 * impose that choice. 
 *  
 * This section is intended to make thoroughly clear what is believed to 
 * be a consequence of the rest of this License. 
 *  
 * 8. If the distribution and/or use of the Program is restricted in 
 * certain countries either by patents or by copyrighted interfaces, the 
 * original copyright holder who places the Program under this License 
 * may add an explicit geographical distribution limitation excluding 
 * those countries, so that distribution is permitted only in or among 
 * countries not thus excluded.  In such case, this License incorporates 
 * the limitation as if written in the body of this License. 
 *  
 * 9. The Free Software Foundation may publish revised and/or new versions 
 * of the General Public License from time to time.  Such new versions will 
 * be similar in spirit to the present version, but may differ in detail to 
 * address new problems or concerns. 
 *  
 * Each version is given a distinguishing version number.  If the Program 
 * specifies a version number of this License which applies to it and "any 
 * later version", you have the option of following the terms and conditions 
 * either of that version or of any later version published by the Free 
 * Software Foundation.  If the Program does not specify a version number of 
 * this License, you may choose any version ever published by the Free Software 
 * Foundation. 
 *  
 * 10. If you wish to incorporate parts of the Program into other free 
 * programs whose distribution conditions are different, write to the author 
 * to ask for permission.  For software which is copyrighted by the Free 
 * Software Foundation, write to the Free Software Foundation; we sometimes 
 * make exceptions for this.  Our decision will be guided by the two goals 
 * of preserving the free status of all derivatives of our free software and 
 * of promoting the sharing and reuse of software generally. 
 *  
 * 			    NO WARRANTY 
 *  
 * 11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY 
 * FOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN 
 * OTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES 
 * PROVIDE THE PROGRAM "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED 
 * OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF 
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS 
 * TO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE 
 * PROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING, 
 * REPAIR OR CORRECTION. 
 *  
 * 12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING 
 * WILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR 
 * REDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES, 
 * INCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING 
 * OUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED 
 * TO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY 
 * YOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER 
 * PROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE 
 * POSSIBILITY OF SUCH DAMAGES. 
 *  
 * 		     END OF TERMS AND CONDITIONS 
 *  
 * 	    How to Apply These Terms to Your New Programs 
 *  
 *   If you develop a new program, and you want it to be of the greatest 
 * possible use to the public, the best way to achieve this is to make it 
 * free software which everyone can redistribute and change under these terms. 
 *  
 *   To do so, attach the following notices to the program.  It is safest 
 * to attach them to the start of each source file to most effectively 
 * convey the exclusion of warranty; and each file should have at least 
 * the "copyright" line and a pointer to where the full notice is found. 
 *  
 *     <one line to give the program's name and a brief idea of what it does.> 
 *     Copyright (C) <year>  <name of author> 
 *  
 *     This program is free software; you can redistribute it and/or modify 
 *     it under the terms of the GNU General Public License as published by 
 *     the Free Software Foundation; either version 2 of the License, or 
 *     (at your option) any later version. 
 *  
 *     This program is distributed in the hope that it will be useful, 
 *     but WITHOUT ANY WARRANTY; without even the implied warranty of 
 *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the 
 *     GNU General Public License for more details. 
 *  
 *     You should have received a copy of the GNU General Public License 
 *     along with this program; if not, write to the Free Software 
 *     Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301 
 *  USA 
 *  
 *  
 * Also add information on how to contact you by electronic and paper mail. 
 *  
 * If the program is interactive, make it output a short notice like this 
 * when it starts in an interactive mode: 
 *  
 *     Gnomovision version 69, Copyright (C) year name of author 
 *     Gnomovision comes with ABSOLUTELY NO WARRANTY; for details type `show w'. 
 *     This is free software, and you are welcome to redistribute it 
 *     under certain conditions; type `show c' for details. 
 *  
 * The hypothetical commands `show w' and `show c' should show the appropriate 
 * parts of the General Public License.  Of course, the commands you use may 
 * be called something other than `show w' and `show c'; they could even be 
 * mouse-clicks or menu items--whatever suits your program. 
 *  
 * You should also get your employer (if you work as a programmer) or your 
 * school, if any, to sign a "copyright disclaimer" for the program, if 
 * necessary.  Here is a sample; alter the names: 
 *  
 *   Yoyodyne, Inc., hereby disclaims all copyright interest in the program 
 *   `Gnomovision' (which makes passes at compilers) written by James Hacker. 
 *  
 *   <signature of Ty Coon>, 1 April 1989 
 *   Ty Coon, President of Vice 
 *  
 * This General Public License does not permit incorporating your program into 
 * proprietary programs.  If your program is a subroutine library, you may 
 * consider it more useful to permit linking proprietary applications with the 
 * library.  If this is what you want to do, use the GNU Lesser General 
 * Public License instead of this License. 
 ***********************************/
#ifdef USE_GFX_FONT_IN_PROGRAM_SECTION
extern const char __KoreanFont[] __attribute__((space(prog), aligned(2)));
#else
extern const char __KoreanFont[] __attribute__((aligned(2)));
#endif

const FONT_FLASH KoreanFont =
{
    (FLASH | COMP_NONE),
    (GFX_FONT_SPACE char *)__KoreanFont
};

#ifdef USE_GFX_FONT_IN_PROGRAM_SECTION
asm(".section .text, code");
#else
asm(".section .const, psv, page");
#endif
asm(".global ___KoreanFont");
asm(".align 2");
asm("___KoreanFont:");
/****************************************
 * Font header
 ****************************************/
asm(".byte 0x00");           // Font ID
asm(".byte 0x00");           // Font information:  1 bit per pixel, Characters zero degress rotation
asm(".byte 0x20, 0x00");     // First Character
asm(".byte 0x2B, 0x00");     // Last Character
asm(".byte 0x19, 0x00");     // Height
/****************************************
 * Font Glyph Table
 ****************************************/
asm(".byte 0x04");              // width of the glyph
asm(".byte 0x38, 0x00, 0x00");       // Character - 33, offset (0x00000038)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x51, 0x00, 0x00");       // Character - 46, offset (0x00000051)
asm(".byte 0x14");              // width of the glyph
asm(".byte 0x6A, 0x00, 0x00");       // Character - 44228, offset (0x0000006A)
asm(".byte 0x14");              // width of the glyph
asm(".byte 0xB5, 0x00, 0x00");       // Character - 45397, offset (0x000000B5)
asm(".byte 0x14");              // width of the glyph
asm(".byte 0x00, 0x01, 0x00");       // Character - 47084, offset (0x00000100)
asm(".byte 0x14");              // width of the glyph
asm(".byte 0x4B, 0x01, 0x00");       // Character - 48516, offset (0x0000014B)
asm(".byte 0x14");              // width of the glyph
asm(".byte 0x96, 0x01, 0x00");       // Character - 49464, offset (0x00000196)
asm(".byte 0x14");              // width of the glyph
asm(".byte 0xE1, 0x01, 0x00");       // Character - 50504, offset (0x000001E1)
asm(".byte 0x14");              // width of the glyph
asm(".byte 0x2C, 0x02, 0x00");       // Character - 50668, offset (0x0000022C)
asm(".byte 0x14");              // width of the glyph
asm(".byte 0x77, 0x02, 0x00");       // Character - 50836, offset (0x00000277)
asm(".byte 0x14");              // width of the glyph
asm(".byte 0xC2, 0x02, 0x00");       // Character - 51064, offset (0x000002C2)
asm(".byte 0x14");              // width of the glyph
asm(".byte 0x0D, 0x03, 0x00");       // Character - 54616, offset (0x0000030D)
/***********************************
 * Font Characters
 ***********************************/
/***********************************
 * Character - 33
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x06");        //  **     
asm(".byte 0x06");        //  **     
asm(".byte 0x06");        //  **     
asm(".byte 0x06");        //  **     
asm(".byte 0x06");        //  **     
asm(".byte 0x06");        //  **     
asm(".byte 0x06");        //  **     
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x00");        //         
asm(".byte 0x06");        //  **     
asm(".byte 0x0E");        //  ***    
asm(".byte 0x0E");        //  ***    
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 46
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x0E");        //  ***    
asm(".byte 0x0E");        //  ***    
asm(".byte 0x0E");        //  ***    
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 44228
 ***********************************/
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x20, 0x00");        //              *          
asm(".byte 0x00, 0xC0, 0x01");        //               ***       
asm(".byte 0x00, 0x1C, 0x01");        //           ***   *       
asm(".byte 0x00, 0x10, 0x01");        //             *   *       
asm(".byte 0xF8, 0x13, 0x01");        //    *******  *   *       
asm(".byte 0x00, 0x13, 0x01");        //         **  *   *       
asm(".byte 0x00, 0x11, 0x01");        //         *   *   *       
asm(".byte 0x80, 0x1F, 0x01");        //        ******   *       
asm(".byte 0x80, 0x10, 0x01");        //        *    *   *       
asm(".byte 0x40, 0x10, 0x01");        //       *     *   *       
asm(".byte 0x60, 0x10, 0x01");        //      **     *   *       
asm(".byte 0x20, 0x1F, 0x01");        //      *  *****   *       
asm(".byte 0x10, 0x10, 0x01");        //     *       *   *       
asm(".byte 0x08, 0x10, 0x01");        //    *        *   *       
asm(".byte 0x04, 0x10, 0x01");        //   *         *   *       
asm(".byte 0x00, 0x10, 0x01");        //             *   *       
asm(".byte 0x00, 0x10, 0x01");        //             *   *       
asm(".byte 0x00, 0x00, 0x01");        //                 *       
asm(".byte 0x00, 0x00, 0x01");        //                 *       
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         

/***********************************
 * Character - 45397
 ***********************************/
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0xE0, 0x00");        //              ***        
asm(".byte 0x00, 0x80, 0x00");        //                *        
asm(".byte 0x38, 0x80, 0x00");        //    ***         *        
asm(".byte 0x20, 0x80, 0x00");        //      *         *        
asm(".byte 0x20, 0xFC, 0x00");        //      *    ******        
asm(".byte 0x20, 0x80, 0x00");        //      *         *        
asm(".byte 0x20, 0x8C, 0x00");        //      *    **   *        
asm(".byte 0x20, 0xFB, 0x00");        //      *  ** *****        
asm(".byte 0xE0, 0x80, 0x00");        //      ***       *        
asm(".byte 0x00, 0x80, 0x00");        //                *        
asm(".byte 0x00, 0x90, 0x00");        //             *  *        
asm(".byte 0x00, 0x38, 0x00");        //            ***          
asm(".byte 0x00, 0x44, 0x00");        //           *   *         
asm(".byte 0x00, 0x82, 0x00");        //          *     *        
asm(".byte 0x00, 0x82, 0x00");        //          *     *        
asm(".byte 0x00, 0x82, 0x00");        //          *     *        
asm(".byte 0x00, 0x44, 0x00");        //           *   *         
asm(".byte 0x00, 0x38, 0x00");        //            ***          
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         

/***********************************
 * Character - 47084
 ***********************************/
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x60, 0x00");        //              **         
asm(".byte 0x00, 0xC0, 0x00");        //               **        
asm(".byte 0x00, 0x80, 0x00");        //                *        
asm(".byte 0x00, 0x80, 0x00");        //                *        
asm(".byte 0xF8, 0x87, 0x00");        //    ********    *        
asm(".byte 0x00, 0x82, 0x00");        //          *     *        
asm(".byte 0x00, 0x82, 0x00");        //          *     *        
asm(".byte 0x00, 0x81, 0x00");        //         *      *        
asm(".byte 0xFC, 0xFF, 0x00");        //   **************        
asm(".byte 0x10, 0x80, 0x00");        //     *          *        
asm(".byte 0x10, 0x80, 0x00");        //     *          *        
asm(".byte 0x10, 0x80, 0x00");        //     *          *        
asm(".byte 0x10, 0x8E, 0x00");        //     *    ***   *        
asm(".byte 0xF0, 0x81, 0x00");        //     *****      *        
asm(".byte 0x00, 0x80, 0x00");        //                *        
asm(".byte 0x00, 0x80, 0x00");        //                *        
asm(".byte 0x00, 0x80, 0x00");        //                *        
asm(".byte 0x00, 0x80, 0x00");        //                *        
asm(".byte 0x00, 0x80, 0x00");        //                *        
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         

/***********************************
 * Character - 48516
 ***********************************/
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x70, 0x00");        //             ***         
asm(".byte 0x70, 0x40, 0x00");        //     ***       *         
asm(".byte 0x40, 0x40, 0x00");        //       *       *         
asm(".byte 0xC0, 0x7F, 0x00");        //       *********         
asm(".byte 0x40, 0x40, 0x00");        //       *       *         
asm(".byte 0x40, 0x40, 0x00");        //       *       *         
asm(".byte 0x40, 0x40, 0x00");        //       *       *         
asm(".byte 0xC0, 0x7F, 0x00");        //       *********         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0xFE, 0xFF, 0x07");        //  ******************     
asm(".byte 0x00, 0x04, 0x00");        //           *             
asm(".byte 0x00, 0x04, 0x00");        //           *             
asm(".byte 0x70, 0x04, 0x00");        //     ***   *             
asm(".byte 0x40, 0x04, 0x00");        //       *   *             
asm(".byte 0x40, 0x00, 0x00");        //       *                 
asm(".byte 0x40, 0x00, 0x00");        //       *                 
asm(".byte 0x80, 0xFF, 0x00");        //        *********        
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         

/***********************************
 * Character - 49464
 ***********************************/
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x60, 0x00");        //              **         
asm(".byte 0x00, 0x80, 0x01");        //                **       
asm(".byte 0x00, 0x1C, 0x01");        //           ***   *       
asm(".byte 0x20, 0x10, 0x01");        //      *      *   *       
asm(".byte 0xC0, 0x11, 0x01");        //       ***   *   *       
asm(".byte 0x80, 0x11, 0x01");        //        **   *   *       
asm(".byte 0x80, 0x10, 0x01");        //        *    *   *       
asm(".byte 0xC0, 0x10, 0x01");        //       **    *   *       
asm(".byte 0xC0, 0x1E, 0x01");        //       ** ****   *       
asm(".byte 0x20, 0x11, 0x01");        //      *  *   *   *       
asm(".byte 0x10, 0x13, 0x01");        //     *   **  *   *       
asm(".byte 0x10, 0x12, 0x01");        //     *    *  *   *       
asm(".byte 0x08, 0x16, 0x01");        //    *     ** *   *       
asm(".byte 0x04, 0x10, 0x01");        //   *         *   *       
asm(".byte 0x00, 0x10, 0x01");        //             *   *       
asm(".byte 0x00, 0x10, 0x01");        //             *   *       
asm(".byte 0x00, 0x10, 0x01");        //             *   *       
asm(".byte 0x00, 0x10, 0x01");        //             *   *       
asm(".byte 0x00, 0x00, 0x01");        //                 *       
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         

/***********************************
 * Character - 50504
 ***********************************/
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0xE0, 0x00");        //              ***        
asm(".byte 0x00, 0x80, 0x00");        //                *        
asm(".byte 0x80, 0x80, 0x00");        //        *       *        
asm(".byte 0xE0, 0x81, 0x00");        //      ****      *        
asm(".byte 0x10, 0x82, 0x00");        //     *    *     *        
asm(".byte 0x08, 0x84, 0x00");        //    *      *    *        
asm(".byte 0x08, 0x84, 0x00");        //    *      *    *        
asm(".byte 0x08, 0x84, 0x0E");        //    *      *    * ***    
asm(".byte 0x10, 0x82, 0x01");        //     *    *     **       
asm(".byte 0xE0, 0x81, 0x00");        //      ****      *        
asm(".byte 0x00, 0x80, 0x00");        //                *        
asm(".byte 0x00, 0x80, 0x00");        //                *        
asm(".byte 0xE0, 0x80, 0x00");        //      ***       *        
asm(".byte 0x80, 0x40, 0x00");        //        *      *         
asm(".byte 0x80, 0x00, 0x00");        //        *                
asm(".byte 0x80, 0x00, 0x00");        //        *                
asm(".byte 0x00, 0xFF, 0x01");        //         *********       
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         

/***********************************
 * Character - 50668
 ***********************************/
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0xE0, 0x00");        //              ***        
asm(".byte 0x00, 0x80, 0x00");        //                *        
asm(".byte 0x00, 0x80, 0x00");        //                *        
asm(".byte 0x80, 0x80, 0x00");        //        *       *        
asm(".byte 0xC0, 0x81, 0x00");        //       ***      *        
asm(".byte 0x30, 0xFE, 0x00");        //     **   *******        
asm(".byte 0x08, 0x84, 0x00");        //    *      *    *        
asm(".byte 0x08, 0x84, 0x00");        //    *      *    *        
asm(".byte 0x08, 0x84, 0x00");        //    *      *    *        
asm(".byte 0x08, 0x84, 0x00");        //    *      *    *        
asm(".byte 0x10, 0xFA, 0x00");        //     *    * *****        
asm(".byte 0xE0, 0x81, 0x00");        //      ****      *        
asm(".byte 0x00, 0x80, 0x00");        //                *        
asm(".byte 0x00, 0x80, 0x00");        //                *        
asm(".byte 0x00, 0x80, 0x00");        //                *        
asm(".byte 0x00, 0x80, 0x00");        //                *        
asm(".byte 0x00, 0x80, 0x00");        //                *        
asm(".byte 0x00, 0x80, 0x00");        //                *        
asm(".byte 0x00, 0x80, 0x00");        //                *        
asm(".byte 0x00, 0x00, 0x00");        //                         

/***********************************
 * Character - 50836
 ***********************************/
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x02, 0x00");        //          *              
asm(".byte 0x00, 0x0F, 0x00");        //         ****            
asm(".byte 0xC0, 0x10, 0x00");        //       **    *           
asm(".byte 0x20, 0x20, 0x00");        //      *       *          
asm(".byte 0x20, 0x20, 0x00");        //      *       *          
asm(".byte 0x20, 0x20, 0x00");        //      *       *          
asm(".byte 0x40, 0x10, 0x00");        //       *     *           
asm(".byte 0x80, 0x0F, 0x00");        //        *****            
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0xC0, 0x71, 0x00");        //       ***   ***         
asm(".byte 0x80, 0x61, 0x00");        //        **    **         
asm(".byte 0x00, 0x21, 0x00");        //         *    *          
asm(".byte 0x00, 0x21, 0x00");        //         *    *          
asm(".byte 0xFC, 0xFF, 0x07");        //   *****************     
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         

/***********************************
 * Character - 51064
 ***********************************/
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0xE0, 0x00");        //              ***        
asm(".byte 0x80, 0x80, 0x00");        //        *       *        
asm(".byte 0xE0, 0x81, 0x00");        //      ****      *        
asm(".byte 0x10, 0x82, 0x00");        //     *    *     *        
asm(".byte 0x08, 0x84, 0x00");        //    *      *    *        
asm(".byte 0x08, 0x84, 0x00");        //    *      *    *        
asm(".byte 0x08, 0x84, 0x00");        //    *      *    *        
asm(".byte 0x08, 0x84, 0x00");        //    *      *    *        
asm(".byte 0x10, 0x82, 0x00");        //     *    *     *        
asm(".byte 0xE0, 0x81, 0x00");        //      ****      *        
asm(".byte 0x00, 0x80, 0x00");        //                *        
asm(".byte 0x00, 0x80, 0x00");        //                *        
asm(".byte 0xC0, 0x81, 0x00");        //       ***      *        
asm(".byte 0x00, 0x81, 0x00");        //         *      *        
asm(".byte 0x00, 0x01, 0x00");        //         *               
asm(".byte 0x00, 0x01, 0x00");        //         *               
asm(".byte 0x00, 0xFF, 0x03");        //         **********      
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         

/***********************************
 * Character - 54616
 ***********************************/
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x20, 0x00");        //              *          
asm(".byte 0x00, 0xC0, 0x00");        //               **        
asm(".byte 0xE0, 0x83, 0x00");        //      *****     *        
asm(".byte 0x00, 0x80, 0x00");        //                *        
asm(".byte 0x00, 0x80, 0x00");        //                *        
asm(".byte 0x00, 0x8C, 0x00");        //           **   *        
asm(".byte 0xFC, 0x9F, 0x00");        //   ***********  *        
asm(".byte 0x80, 0x80, 0x00");        //        *       *        
asm(".byte 0xC0, 0x81, 0x00");        //       ***      *        
asm(".byte 0x20, 0x86, 0x0F");        //      *   **    *****    
asm(".byte 0x10, 0x84, 0x00");        //     *     *    *        
asm(".byte 0x10, 0x84, 0x00");        //     *     *    *        
asm(".byte 0x30, 0x86, 0x00");        //     **   **    *        
asm(".byte 0xE0, 0x81, 0x00");        //      ****      *        
asm(".byte 0x00, 0x80, 0x00");        //                *        
asm(".byte 0x00, 0x80, 0x00");        //                *        
asm(".byte 0x00, 0x80, 0x00");        //                *        
asm(".byte 0x00, 0x80, 0x00");        //                *        
asm(".byte 0x00, 0x80, 0x00");        //                *        
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         

asm(".section .const, psv, page");
/*********************************
 * TTF Font File Structure
 * Label: RussianFont
 * Description:  Height: 25 pixels, 1 bit per pixel, Range: ' ' to '?'
 * Comment Block:
 * http://www.gnu.org/copyleft/gpl.html 
 *  
 * 		    GNU GENERAL PUBLIC LICENSE 
 * 		       Version 2, June 1991 
 *  
 * Copyright (C) 1989, 1991 Free Software Foundation, Inc. 
 * 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA 
 * Everyone is permitted to copy and distribute verbatim copies 
 * of this license document, but changing it is not allowed. 
 *  
 * 			    Preamble 
 *  
 * The licenses for most software are designed to take away your 
 * freedom to share and change it.  By contrast, the GNU General Public 
 * License is intended to guarantee your freedom to share and change free 
 * software--to make sure the software is free for all its users.  This 
 * General Public License applies to most of the Free Software 
 * Foundation's software and to any other program whose authors commit to 
 * using it.  (Some other Free Software Foundation software is covered by 
 * the GNU Lesser General Public License instead.)  You can apply it to 
 * your programs, too. 
 *  
 * When we speak of free software, we are referring to freedom, not 
 * price.  Our General Public Licenses are designed to make sure that you 
 * have the freedom to distribute copies of free software (and charge for 
 * this service if you wish), that you receive source code or can get it 
 * if you want it, that you can change the software or use pieces of it 
 * in new free programs; and that you know you can do these things. 
 *  
 * To protect your rights, we need to make restrictions that forbid 
 * anyone to deny you these rights or to ask you to surrender the rights. 
 * These restrictions translate to certain responsibilities for you if you 
 * distribute copies of the software, or if you modify it. 
 *  
 * For example, if you distribute copies of such a program, whether 
 * gratis or for a fee, you must give the recipients all the rights that 
 * you have.  You must make sure that they, too, receive or can get the 
 * source code.  And you must show them these terms so they know their 
 * rights. 
 *  
 * We protect your rights with two steps: (1) copyright the software, and 
 * (2) offer you this license which gives you legal permission to copy, 
 * distribute and/or modify the software. 
 *  
 * Also, for each author's protection and ours, we want to make certain 
 * that everyone understands that there is no warranty for this free 
 * software.  If the software is modified by someone else and passed on, we 
 * want its recipients to know that what they have is not the original, so 
 * that any problems introduced by others will not reflect on the original 
 * authors' reputations. 
 *  
 * Finally, any free program is threatened constantly by software 
 * patents.  We wish to avoid the danger that redistributors of a free 
 * program will individually obtain patent licenses, in effect making the 
 * program proprietary.  To prevent this, we have made it clear that any 
 * patent must be licensed for everyone's free use or not licensed at all. 
 *  
 * The precise terms and conditions for copying, distribution and 
 * modification follow. 
 *  
 * 		    GNU GENERAL PUBLIC LICENSE 
 *    TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION 
 *  
 * 0. This License applies to any program or other work which contains 
 * a notice placed by the copyright holder saying it may be distributed 
 * under the terms of this General Public License.  The "Program", below, 
 * refers to any such program or work, and a "work based on the Program" 
 * means either the Program or any derivative work under copyright law: 
 * that is to say, a work containing the Program or a portion of it, 
 * either verbatim or with modifications and/or translated into another 
 * language.  (Hereinafter, translation is included without limitation in 
 * the term "modification".)  Each licensee is addressed as "you". 
 *  
 * Activities other than copying, distribution and modification are not 
 * covered by this License; they are outside its scope.  The act of 
 * running the Program is not restricted, and the output from the Program 
 * is covered only if its contents constitute a work based on the 
 * Program (independent of having been made by running the Program). 
 * Whether that is true depends on what the Program does. 
 *  
 * 1. You may copy and distribute verbatim copies of the Program's 
 * source code as you receive it, in any medium, provided that you 
 * conspicuously and appropriately publish on each copy an appropriate 
 * copyright notice and disclaimer of warranty; keep intact all the 
 * notices that refer to this License and to the absence of any warranty; 
 * and give any other recipients of the Program a copy of this License 
 * along with the Program. 
 *  
 * You may charge a fee for the physical act of transferring a copy, and 
 * you may at your option offer warranty protection in exchange for a fee. 
 *  
 * 2. You may modify your copy or copies of the Program or any portion 
 * of it, thus forming a work based on the Program, and copy and 
 * distribute such modifications or work under the terms of Section 1 
 * above, provided that you also meet all of these conditions: 
 *  
 *     a) You must cause the modified files to carry prominent notices 
 *     stating that you changed the files and the date of any change. 
 *  
 *     b) You must cause any work that you distribute or publish, that in 
 *     whole or in part contains or is derived from the Program or any 
 *     part thereof, to be licensed as a whole at no charge to all third 
 *     parties under the terms of this License. 
 *  
 *     c) If the modified program normally reads commands interactively 
 *     when run, you must cause it, when started running for such 
 *     interactive use in the most ordinary way, to print or display an 
 *     announcement including an appropriate copyright notice and a 
 *     notice that there is no warranty (or else, saying that you provide 
 *     a warranty) and that users may redistribute the program under 
 *     these conditions, and telling the user how to view a copy of this 
 *     License.  (Exception: if the Program itself is interactive but 
 *     does not normally print such an announcement, your work based on 
 *     the Program is not required to print an announcement.) 
 *  
 * These requirements apply to the modified work as a whole.  If 
 * identifiable sections of that work are not derived from the Program, 
 * and can be reasonably considered independent and separate works in 
 * themselves, then this License, and its terms, do not apply to those 
 * sections when you distribute them as separate works.  But when you 
 * distribute the same sections as part of a whole which is a work based 
 * on the Program, the distribution of the whole must be on the terms of 
 * this License, whose permissions for other licensees extend to the 
 * entire whole, and thus to each and every part regardless of who wrote it. 
 *  
 * Thus, it is not the intent of this section to claim rights or contest 
 * your rights to work written entirely by you; rather, the intent is to 
 * exercise the right to control the distribution of derivative or 
 * collective works based on the Program. 
 *  
 * In addition, mere aggregation of another work not based on the Program 
 * with the Program (or with a work based on the Program) on a volume of 
 * a storage or distribution medium does not bring the other work under 
 * the scope of this License. 
 *  
 * 3. You may copy and distribute the Program (or a work based on it, 
 * under Section 2) in object code or executable form under the terms of 
 * Sections 1 and 2 above provided that you also do one of the following: 
 *  
 *     a) Accompany it with the complete corresponding machine-readable 
 *     source code, which must be distributed under the terms of Sections 
 *     1 and 2 above on a medium customarily used for software interchange; or, 
 *  
 *     b) Accompany it with a written offer, valid for at least three 
 *     years, to give any third party, for a charge no more than your 
 *     cost of physically performing source distribution, a complete 
 *     machine-readable copy of the corresponding source code, to be 
 *     distributed under the terms of Sections 1 and 2 above on a medium 
 *     customarily used for software interchange; or, 
 *  
 *     c) Accompany it with the information you received as to the offer 
 *     to distribute corresponding source code.  (This alternative is 
 *     allowed only for noncommercial distribution and only if you 
 *     received the program in object code or executable form with such 
 *     an offer, in accord with Subsection b above.) 
 *  
 * The source code for a work means the preferred form of the work for 
 * making modifications to it.  For an executable work, complete source 
 * code means all the source code for all modules it contains, plus any 
 * associated interface definition files, plus the scripts used to 
 * control compilation and installation of the executable.  However, as a 
 * special exception, the source code distributed need not include 
 * anything that is normally distributed (in either source or binary 
 * form) with the major components (compiler, kernel, and so on) of the 
 * operating system on which the executable runs, unless that component 
 * itself accompanies the executable. 
 *  
 * If distribution of executable or object code is made by offering 
 * access to copy from a designated place, then offering equivalent 
 * access to copy the source code from the same place counts as 
 * distribution of the source code, even though third parties are not 
 * compelled to copy the source along with the object code. 
 *  
 * 4. You may not copy, modify, sublicense, or distribute the Program 
 * except as expressly provided under this License.  Any attempt 
 * otherwise to copy, modify, sublicense or distribute the Program is 
 * void, and will automatically terminate your rights under this License. 
 * However, parties who have received copies, or rights, from you under 
 * this License will not have their licenses terminated so long as such 
 * parties remain in full compliance. 
 *  
 * 5. You are not required to accept this License, since you have not 
 * signed it.  However, nothing else grants you permission to modify or 
 * distribute the Program or its derivative works.  These actions are 
 * prohibited by law if you do not accept this License.  Therefore, by 
 * modifying or distributing the Program (or any work based on the 
 * Program), you indicate your acceptance of this License to do so, and 
 * all its terms and conditions for copying, distributing or modifying 
 * the Program or works based on it. 
 *  
 * 6. Each time you redistribute the Program (or any work based on the 
 * Program), the recipient automatically receives a license from the 
 * original licensor to copy, distribute or modify the Program subject to 
 * these terms and conditions.  You may not impose any further 
 * restrictions on the recipients' exercise of the rights granted herein. 
 * You are not responsible for enforcing compliance by third parties to 
 * this License. 
 *  
 * 7. If, as a consequence of a court judgment or allegation of patent 
 * infringement or for any other reason (not limited to patent issues), 
 * conditions are imposed on you (whether by court order, agreement or 
 * otherwise) that contradict the conditions of this License, they do not 
 * excuse you from the conditions of this License.  If you cannot 
 * distribute so as to satisfy simultaneously your obligations under this 
 * License and any other pertinent obligations, then as a consequence you 
 * may not distribute the Program at all.  For example, if a patent 
 * license would not permit royalty-free redistribution of the Program by 
 * all those who receive copies directly or indirectly through you, then 
 * the only way you could satisfy both it and this License would be to 
 * refrain entirely from distribution of the Program. 
 *  
 * If any portion of this section is held invalid or unenforceable under 
 * any particular circumstance, the balance of the section is intended to 
 * apply and the section as a whole is intended to apply in other 
 * circumstances. 
 *  
 * It is not the purpose of this section to induce you to infringe any 
 * patents or other property right claims or to contest validity of any 
 * such claims; this section has the sole purpose of protecting the 
 * integrity of the free software distribution system, which is 
 * implemented by public license practices.  Many people have made 
 * generous contributions to the wide range of software distributed 
 * through that system in reliance on consistent application of that 
 * system; it is up to the author/donor to decide if he or she is willing 
 * to distribute software through any other system and a licensee cannot 
 * impose that choice. 
 *  
 * This section is intended to make thoroughly clear what is believed to 
 * be a consequence of the rest of this License. 
 *  
 * 8. If the distribution and/or use of the Program is restricted in 
 * certain countries either by patents or by copyrighted interfaces, the 
 * original copyright holder who places the Program under this License 
 * may add an explicit geographical distribution limitation excluding 
 * those countries, so that distribution is permitted only in or among 
 * countries not thus excluded.  In such case, this License incorporates 
 * the limitation as if written in the body of this License. 
 *  
 * 9. The Free Software Foundation may publish revised and/or new versions 
 * of the General Public License from time to time.  Such new versions will 
 * be similar in spirit to the present version, but may differ in detail to 
 * address new problems or concerns. 
 *  
 * Each version is given a distinguishing version number.  If the Program 
 * specifies a version number of this License which applies to it and "any 
 * later version", you have the option of following the terms and conditions 
 * either of that version or of any later version published by the Free 
 * Software Foundation.  If the Program does not specify a version number of 
 * this License, you may choose any version ever published by the Free Software 
 * Foundation. 
 *  
 * 10. If you wish to incorporate parts of the Program into other free 
 * programs whose distribution conditions are different, write to the author 
 * to ask for permission.  For software which is copyrighted by the Free 
 * Software Foundation, write to the Free Software Foundation; we sometimes 
 * make exceptions for this.  Our decision will be guided by the two goals 
 * of preserving the free status of all derivatives of our free software and 
 * of promoting the sharing and reuse of software generally. 
 *  
 * 			    NO WARRANTY 
 *  
 * 11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY 
 * FOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN 
 * OTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES 
 * PROVIDE THE PROGRAM "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED 
 * OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF 
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS 
 * TO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE 
 * PROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING, 
 * REPAIR OR CORRECTION. 
 *  
 * 12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING 
 * WILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR 
 * REDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES, 
 * INCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING 
 * OUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED 
 * TO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY 
 * YOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER 
 * PROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE 
 * POSSIBILITY OF SUCH DAMAGES. 
 *  
 * 		     END OF TERMS AND CONDITIONS 
 *  
 * 	    How to Apply These Terms to Your New Programs 
 *  
 *   If you develop a new program, and you want it to be of the greatest 
 * possible use to the public, the best way to achieve this is to make it 
 * free software which everyone can redistribute and change under these terms. 
 *  
 *   To do so, attach the following notices to the program.  It is safest 
 * to attach them to the start of each source file to most effectively 
 * convey the exclusion of warranty; and each file should have at least 
 * the "copyright" line and a pointer to where the full notice is found. 
 *  
 *     <one line to give the program's name and a brief idea of what it does.> 
 *     Copyright (C) <year>  <name of author> 
 *  
 *     This program is free software; you can redistribute it and/or modify 
 *     it under the terms of the GNU General Public License as published by 
 *     the Free Software Foundation; either version 2 of the License, or 
 *     (at your option) any later version. 
 *  
 *     This program is distributed in the hope that it will be useful, 
 *     but WITHOUT ANY WARRANTY; without even the implied warranty of 
 *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the 
 *     GNU General Public License for more details. 
 *  
 *     You should have received a copy of the GNU General Public License 
 *     along with this program; if not, write to the Free Software 
 *     Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301 
 *  USA 
 *  
 *  
 * Also add information on how to contact you by electronic and paper mail. 
 *  
 * If the program is interactive, make it output a short notice like this 
 * when it starts in an interactive mode: 
 *  
 *     Gnomovision version 69, Copyright (C) year name of author 
 *     Gnomovision comes with ABSOLUTELY NO WARRANTY; for details type `show w'. 
 *     This is free software, and you are welcome to redistribute it 
 *     under certain conditions; type `show c' for details. 
 *  
 * The hypothetical commands `show w' and `show c' should show the appropriate 
 * parts of the General Public License.  Of course, the commands you use may 
 * be called something other than `show w' and `show c'; they could even be 
 * mouse-clicks or menu items--whatever suits your program. 
 *  
 * You should also get your employer (if you work as a programmer) or your 
 * school, if any, to sign a "copyright disclaimer" for the program, if 
 * necessary.  Here is a sample; alter the names: 
 *  
 *   Yoyodyne, Inc., hereby disclaims all copyright interest in the program 
 *   `Gnomovision' (which makes passes at compilers) written by James Hacker. 
 *  
 *   <signature of Ty Coon>, 1 April 1989 
 *   Ty Coon, President of Vice 
 *  
 * This General Public License does not permit incorporating your program into 
 * proprietary programs.  If your program is a subroutine library, you may 
 * consider it more useful to permit linking proprietary applications with the 
 * library.  If this is what you want to do, use the GNU Lesser General 
 * Public License instead of this License. 
 ***********************************/
#ifdef USE_GFX_FONT_IN_PROGRAM_SECTION
extern const char __RussianFont[] __attribute__((space(prog), aligned(2)));
#else
extern const char __RussianFont[] __attribute__((aligned(2)));
#endif

const FONT_FLASH RussianFont =
{
    (FLASH | COMP_NONE),
    (GFX_FONT_SPACE char *)__RussianFont
};

#ifdef USE_GFX_FONT_IN_PROGRAM_SECTION
asm(".section .text, code");
#else
asm(".section .const, psv, page");
#endif
asm(".global ___RussianFont");
asm(".align 2");
asm("___RussianFont:");
/****************************************
 * Font header
 ****************************************/
asm(".byte 0x00");           // Font ID
asm(".byte 0x00");           // Font information:  1 bit per pixel, Characters zero degress rotation
asm(".byte 0x20, 0x00");     // First Character
asm(".byte 0x2C, 0x00");     // Last Character
asm(".byte 0x19, 0x00");     // Height
/****************************************
 * Font Glyph Table
 ****************************************/
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x3C, 0x00, 0x00");       // Character - 32, offset (0x0000003C)
asm(".byte 0x04");              // width of the glyph
asm(".byte 0x55, 0x00, 0x00");       // Character - 33, offset (0x00000055)
asm(".byte 0x0D");              // width of the glyph
asm(".byte 0x6E, 0x00, 0x00");       // Character - 1047, offset (0x0000006E)
asm(".byte 0x12");              // width of the glyph
asm(".byte 0xA0, 0x00, 0x00");       // Character - 1052, offset (0x000000A0)
asm(".byte 0x0B");              // width of the glyph
asm(".byte 0xEB, 0x00, 0x00");       // Character - 1072, offset (0x000000EB)
asm(".byte 0x0B");              // width of the glyph
asm(".byte 0x1D, 0x01, 0x00");       // Character - 1074, offset (0x0000011D)
asm(".byte 0x0B");              // width of the glyph
asm(".byte 0x4F, 0x01, 0x00");       // Character - 1076, offset (0x0000014F)
asm(".byte 0x0C");              // width of the glyph
asm(".byte 0x81, 0x01, 0x00");       // Character - 1080, offset (0x00000181)
asm(".byte 0x0C");              // width of the glyph
asm(".byte 0xB3, 0x01, 0x00");       // Character - 1081, offset (0x000001B3)
asm(".byte 0x0B");              // width of the glyph
asm(".byte 0xE5, 0x01, 0x00");       // Character - 1088, offset (0x000001E5)
asm(".byte 0x09");              // width of the glyph
asm(".byte 0x17, 0x02, 0x00");       // Character - 1089, offset (0x00000217)
asm(".byte 0x0A");              // width of the glyph
asm(".byte 0x49, 0x02, 0x00");       // Character - 1090, offset (0x00000249)
asm(".byte 0x0A");              // width of the glyph
asm(".byte 0x7B, 0x02, 0x00");       // Character - 1091, offset (0x0000027B)
/***********************************
 * Font Characters
 ***********************************/
/***********************************
 * Character - 32
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 33
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x06");        //  **     
asm(".byte 0x06");        //  **     
asm(".byte 0x06");        //  **     
asm(".byte 0x06");        //  **     
asm(".byte 0x06");        //  **     
asm(".byte 0x06");        //  **     
asm(".byte 0x06");        //  **     
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x00");        //         
asm(".byte 0x06");        //  **     
asm(".byte 0x0E");        //  ***    
asm(".byte 0x0E");        //  ***    
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 1047
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xE4, 0x01");        //   *  ****       
asm(".byte 0x1C, 0x03");        //   ***   **      
asm(".byte 0x0C, 0x06");        //   **     **     
asm(".byte 0x04, 0x06");        //   *      **     
asm(".byte 0x04, 0x06");        //   *      **     
asm(".byte 0x00, 0x06");        //          **     
asm(".byte 0x80, 0x03");        //        ***      
asm(".byte 0xF0, 0x01");        //     *****       
asm(".byte 0x00, 0x07");        //         ***     
asm(".byte 0x0C, 0x0E");        //   **     ***    
asm(".byte 0x0E, 0x0E");        //  ***     ***    
asm(".byte 0x0E, 0x0E");        //  ***     ***    
asm(".byte 0x02, 0x0E");        //  *       ***    
asm(".byte 0x04, 0x07");        //   *     ***     
asm(".byte 0xF8, 0x01");        //    ******       
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 1052
 ***********************************/
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x3E, 0xE0, 0x03");        //  *****       *****      
asm(".byte 0x38, 0xE0, 0x00");        //    ***       ***        
asm(".byte 0x78, 0xE0, 0x00");        //    ****      ***        
asm(".byte 0x68, 0xD0, 0x00");        //    * **     * **        
asm(".byte 0x68, 0xD0, 0x00");        //    * **     * **        
asm(".byte 0xE8, 0xD0, 0x00");        //    * ***    * **        
asm(".byte 0xC8, 0xC8, 0x00");        //    *  **   *  **        
asm(".byte 0xC8, 0xC8, 0x00");        //    *  **   *  **        
asm(".byte 0xC8, 0xC9, 0x00");        //    *  ***  *  **        
asm(".byte 0x88, 0xC5, 0x00");        //    *   ** *   **        
asm(".byte 0x88, 0xC5, 0x00");        //    *   ** *   **        
asm(".byte 0x08, 0xC7, 0x00");        //    *    ***   **        
asm(".byte 0x08, 0xC3, 0x00");        //    *    **    **        
asm(".byte 0x1C, 0xC3, 0x00");        //   ***   **    **        
asm(".byte 0x3E, 0xF2, 0x03");        //  *****   *  ******      
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         
asm(".byte 0x00, 0x00, 0x00");        //                         

/***********************************
 * Character - 1072
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xF8, 0x00");        //    *****        
asm(".byte 0x86, 0x01");        //  **    **       
asm(".byte 0x86, 0x01");        //  **    **       
asm(".byte 0x86, 0x01");        //  **    **       
asm(".byte 0xF0, 0x01");        //     *****       
asm(".byte 0x8C, 0x01");        //   **   **       
asm(".byte 0x86, 0x01");        //  **    **       
asm(".byte 0x83, 0x01");        // **     **       
asm(".byte 0xC6, 0x05");        //  **   *** *     
asm(".byte 0x3E, 0x03");        //  *****  **      
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 1074
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xFF, 0x01");        // *********       
asm(".byte 0x8C, 0x01");        //   **   **       
asm(".byte 0x0C, 0x01");        //   **    *       
asm(".byte 0x8C, 0x01");        //   **   **       
asm(".byte 0x7C, 0x00");        //   *****         
asm(".byte 0x8C, 0x03");        //   **   ***      
asm(".byte 0x0C, 0x03");        //   **    **      
asm(".byte 0x0C, 0x03");        //   **    **      
asm(".byte 0xFF, 0x01");        // *********       
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 1076
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xFC, 0x03");        //   ********      
asm(".byte 0x98, 0x01");        //    **  **       
asm(".byte 0x88, 0x01");        //    *   **       
asm(".byte 0x88, 0x01");        //    *   **       
asm(".byte 0x88, 0x01");        //    *   **       
asm(".byte 0x88, 0x01");        //    *   **       
asm(".byte 0x84, 0x01");        //   *    **       
asm(".byte 0x84, 0x01");        //   *    **       
asm(".byte 0xFF, 0x03");        // **********      
asm(".byte 0x03, 0x03");        // **      **      
asm(".byte 0x01, 0x02");        // *        *      
asm(".byte 0x01, 0x02");        // *        *      
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 1080
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xFF, 0x0F");        // ************    
asm(".byte 0x0C, 0x03");        //   **    **      
asm(".byte 0x8C, 0x03");        //   **   ***      
asm(".byte 0xCC, 0x03");        //   **  ****      
asm(".byte 0x6C, 0x03");        //   ** ** **      
asm(".byte 0x3C, 0x03");        //   ****  **      
asm(".byte 0x1C, 0x03");        //   ***   **      
asm(".byte 0x0C, 0x03");        //   **    **      
asm(".byte 0xFF, 0x0F");        // ************    
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 1081
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x98, 0x01");        //    **  **       
asm(".byte 0x98, 0x01");        //    **  **       
asm(".byte 0xF0, 0x00");        //     ****        
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xFF, 0x0F");        // ************    
asm(".byte 0x0C, 0x03");        //   **    **      
asm(".byte 0x8C, 0x03");        //   **   ***      
asm(".byte 0xCC, 0x03");        //   **  ****      
asm(".byte 0x6C, 0x03");        //   ** ** **      
asm(".byte 0x3C, 0x03");        //   ****  **      
asm(".byte 0x1C, 0x03");        //   ***   **      
asm(".byte 0x0C, 0x03");        //   **    **      
asm(".byte 0xFF, 0x0F");        // ************    
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 1088
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xEF, 0x00");        // **** ***        
asm(".byte 0x9C, 0x01");        //   ***  **       
asm(".byte 0x0C, 0x03");        //   **    **      
asm(".byte 0x0C, 0x03");        //   **    **      
asm(".byte 0x0C, 0x03");        //   **    **      
asm(".byte 0x0C, 0x03");        //   **    **      
asm(".byte 0x0C, 0x03");        //   **    **      
asm(".byte 0x0C, 0x03");        //   **    **      
asm(".byte 0x9C, 0x01");        //   ***  **       
asm(".byte 0xEC, 0x00");        //   ** ***        
asm(".byte 0x0C, 0x00");        //   **            
asm(".byte 0x0C, 0x00");        //   **            
asm(".byte 0x0C, 0x00");        //   **            
asm(".byte 0x1F, 0x00");        // *****           
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 1089
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xF0, 0x00");        //     ****        
asm(".byte 0x8C, 0x01");        //   **   **       
asm(".byte 0xC4, 0x01");        //   *   ***       
asm(".byte 0x86, 0x01");        //  **    **       
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0x06, 0x01");        //  **     *       
asm(".byte 0x8C, 0x01");        //   **   **       
asm(".byte 0x78, 0x00");        //    ****         
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 1090
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xFE, 0x01");        //  ********       
asm(".byte 0x33, 0x03");        // **  **  **      
asm(".byte 0x31, 0x02");        // *   **   *      
asm(".byte 0x31, 0x02");        // *   **   *      
asm(".byte 0x30, 0x00");        //     **          
asm(".byte 0x30, 0x00");        //     **          
asm(".byte 0x30, 0x00");        //     **          
asm(".byte 0x30, 0x00");        //     **          
asm(".byte 0xFC, 0x00");        //   ******        
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 1091
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xCF, 0x03");        // ****  ****      
asm(".byte 0x84, 0x01");        //   *    **       
asm(".byte 0x8C, 0x00");        //   **   *        
asm(".byte 0x8C, 0x00");        //   **   *        
asm(".byte 0x48, 0x00");        //    *  *         
asm(".byte 0x58, 0x00");        //    ** *         
asm(".byte 0x30, 0x00");        //     **          
asm(".byte 0x30, 0x00");        //     **          
asm(".byte 0x30, 0x00");        //     **          
asm(".byte 0x10, 0x00");        //     *           
asm(".byte 0x13, 0x00");        // **  *           
asm(".byte 0x0B, 0x00");        // ** *            
asm(".byte 0x07, 0x00");        // ***             
asm(".byte 0x00, 0x00");        //                 

asm(".section .const, psv, page");
/*********************************
 * TTF Font File Structure
 * Label: GOLSmallFont
 * Description:  Height: 17 pixels, 1 bit per pixel, Range: ' ' to '~'
 * Comment Block:
 * Created from Gentium font. 
 * Gentium font is Copyright (c) 2003-2005, SIL International (http://scripts.sil.org/). 
 * All Rights Reserved. 
 * Gentium font is licensed under the SIL Open Font License, Version 1.0. 
 * http://scripts.sil.org/OFL 
 ***********************************/
#ifdef USE_GFX_FONT_IN_PROGRAM_SECTION
extern const char __GOLSmallFont[] __attribute__((space(prog), aligned(2)));
#else
extern const char __GOLSmallFont[] __attribute__((aligned(2)));
#endif

const FONT_FLASH GOLSmallFont =
{
    (FLASH | COMP_NONE),
    (GFX_FONT_SPACE char *)__GOLSmallFont
};

#ifdef USE_GFX_FONT_IN_PROGRAM_SECTION
asm(".section .text, code");
#else
asm(".section .const, psv, page");
#endif
asm(".global ___GOLSmallFont");
asm(".align 2");
asm("___GOLSmallFont:");
/****************************************
 * Font header
 ****************************************/
asm(".byte 0x00");           // Font ID
asm(".byte 0x00");           // Font information:  1 bit per pixel, Characters zero degress rotation
asm(".byte 0x20, 0x00");     // First Character
asm(".byte 0x7E, 0x00");     // Last Character
asm(".byte 0x11, 0x00");     // Height
/****************************************
 * Font Glyph Table
 ****************************************/
asm(".byte 0x03");              // width of the glyph
asm(".byte 0x84, 0x01, 0x00");       // Character - 32, offset (0x00000184)
asm(".byte 0x04");              // width of the glyph
asm(".byte 0x95, 0x01, 0x00");       // Character - 33, offset (0x00000195)
asm(".byte 0x06");              // width of the glyph
asm(".byte 0xA6, 0x01, 0x00");       // Character - 34, offset (0x000001A6)
asm(".byte 0x07");              // width of the glyph
asm(".byte 0xB7, 0x01, 0x00");       // Character - 35, offset (0x000001B7)
asm(".byte 0x07");              // width of the glyph
asm(".byte 0xC8, 0x01, 0x00");       // Character - 36, offset (0x000001C8)
asm(".byte 0x0A");              // width of the glyph
asm(".byte 0xD9, 0x01, 0x00");       // Character - 37, offset (0x000001D9)
asm(".byte 0x0A");              // width of the glyph
asm(".byte 0xFB, 0x01, 0x00");       // Character - 38, offset (0x000001FB)
asm(".byte 0x04");              // width of the glyph
asm(".byte 0x1D, 0x02, 0x00");       // Character - 39, offset (0x0000021D)
asm(".byte 0x04");              // width of the glyph
asm(".byte 0x2E, 0x02, 0x00");       // Character - 40, offset (0x0000022E)
asm(".byte 0x04");              // width of the glyph
asm(".byte 0x3F, 0x02, 0x00");       // Character - 41, offset (0x0000023F)
asm(".byte 0x06");              // width of the glyph
asm(".byte 0x50, 0x02, 0x00");       // Character - 42, offset (0x00000250)
asm(".byte 0x06");              // width of the glyph
asm(".byte 0x61, 0x02, 0x00");       // Character - 43, offset (0x00000261)
asm(".byte 0x03");              // width of the glyph
asm(".byte 0x72, 0x02, 0x00");       // Character - 44, offset (0x00000272)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x83, 0x02, 0x00");       // Character - 45, offset (0x00000283)
asm(".byte 0x03");              // width of the glyph
asm(".byte 0x94, 0x02, 0x00");       // Character - 46, offset (0x00000294)
asm(".byte 0x07");              // width of the glyph
asm(".byte 0xA5, 0x02, 0x00");       // Character - 47, offset (0x000002A5)
asm(".byte 0x07");              // width of the glyph
asm(".byte 0xB6, 0x02, 0x00");       // Character - 48, offset (0x000002B6)
asm(".byte 0x07");              // width of the glyph
asm(".byte 0xC7, 0x02, 0x00");       // Character - 49, offset (0x000002C7)
asm(".byte 0x07");              // width of the glyph
asm(".byte 0xD8, 0x02, 0x00");       // Character - 50, offset (0x000002D8)
asm(".byte 0x07");              // width of the glyph
asm(".byte 0xE9, 0x02, 0x00");       // Character - 51, offset (0x000002E9)
asm(".byte 0x07");              // width of the glyph
asm(".byte 0xFA, 0x02, 0x00");       // Character - 52, offset (0x000002FA)
asm(".byte 0x07");              // width of the glyph
asm(".byte 0x0B, 0x03, 0x00");       // Character - 53, offset (0x0000030B)
asm(".byte 0x07");              // width of the glyph
asm(".byte 0x1C, 0x03, 0x00");       // Character - 54, offset (0x0000031C)
asm(".byte 0x07");              // width of the glyph
asm(".byte 0x2D, 0x03, 0x00");       // Character - 55, offset (0x0000032D)
asm(".byte 0x07");              // width of the glyph
asm(".byte 0x3E, 0x03, 0x00");       // Character - 56, offset (0x0000033E)
asm(".byte 0x07");              // width of the glyph
asm(".byte 0x4F, 0x03, 0x00");       // Character - 57, offset (0x0000034F)
asm(".byte 0x03");              // width of the glyph
asm(".byte 0x60, 0x03, 0x00");       // Character - 58, offset (0x00000360)
asm(".byte 0x03");              // width of the glyph
asm(".byte 0x71, 0x03, 0x00");       // Character - 59, offset (0x00000371)
asm(".byte 0x06");              // width of the glyph
asm(".byte 0x82, 0x03, 0x00");       // Character - 60, offset (0x00000382)
asm(".byte 0x06");              // width of the glyph
asm(".byte 0x93, 0x03, 0x00");       // Character - 61, offset (0x00000393)
asm(".byte 0x06");              // width of the glyph
asm(".byte 0xA4, 0x03, 0x00");       // Character - 62, offset (0x000003A4)
asm(".byte 0x06");              // width of the glyph
asm(".byte 0xB5, 0x03, 0x00");       // Character - 63, offset (0x000003B5)
asm(".byte 0x0C");              // width of the glyph
asm(".byte 0xC6, 0x03, 0x00");       // Character - 64, offset (0x000003C6)
asm(".byte 0x08");              // width of the glyph
asm(".byte 0xE8, 0x03, 0x00");       // Character - 65, offset (0x000003E8)
asm(".byte 0x08");              // width of the glyph
asm(".byte 0xF9, 0x03, 0x00");       // Character - 66, offset (0x000003F9)
asm(".byte 0x08");              // width of the glyph
asm(".byte 0x0A, 0x04, 0x00");       // Character - 67, offset (0x0000040A)
asm(".byte 0x08");              // width of the glyph
asm(".byte 0x1B, 0x04, 0x00");       // Character - 68, offset (0x0000041B)
asm(".byte 0x07");              // width of the glyph
asm(".byte 0x2C, 0x04, 0x00");       // Character - 69, offset (0x0000042C)
asm(".byte 0x07");              // width of the glyph
asm(".byte 0x3D, 0x04, 0x00");       // Character - 70, offset (0x0000043D)
asm(".byte 0x08");              // width of the glyph
asm(".byte 0x4E, 0x04, 0x00");       // Character - 71, offset (0x0000044E)
asm(".byte 0x09");              // width of the glyph
asm(".byte 0x5F, 0x04, 0x00");       // Character - 72, offset (0x0000045F)
asm(".byte 0x04");              // width of the glyph
asm(".byte 0x81, 0x04, 0x00");       // Character - 73, offset (0x00000481)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x92, 0x04, 0x00");       // Character - 74, offset (0x00000492)
asm(".byte 0x08");              // width of the glyph
asm(".byte 0xA3, 0x04, 0x00");       // Character - 75, offset (0x000004A3)
asm(".byte 0x07");              // width of the glyph
asm(".byte 0xB4, 0x04, 0x00");       // Character - 76, offset (0x000004B4)
asm(".byte 0x0B");              // width of the glyph
asm(".byte 0xC5, 0x04, 0x00");       // Character - 77, offset (0x000004C5)
asm(".byte 0x09");              // width of the glyph
asm(".byte 0xE7, 0x04, 0x00");       // Character - 78, offset (0x000004E7)
asm(".byte 0x08");              // width of the glyph
asm(".byte 0x09, 0x05, 0x00");       // Character - 79, offset (0x00000509)
asm(".byte 0x07");              // width of the glyph
asm(".byte 0x1A, 0x05, 0x00");       // Character - 80, offset (0x0000051A)
asm(".byte 0x08");              // width of the glyph
asm(".byte 0x2B, 0x05, 0x00");       // Character - 81, offset (0x0000052B)
asm(".byte 0x08");              // width of the glyph
asm(".byte 0x3C, 0x05, 0x00");       // Character - 82, offset (0x0000053C)
asm(".byte 0x07");              // width of the glyph
asm(".byte 0x4D, 0x05, 0x00");       // Character - 83, offset (0x0000054D)
asm(".byte 0x08");              // width of the glyph
asm(".byte 0x5E, 0x05, 0x00");       // Character - 84, offset (0x0000055E)
asm(".byte 0x09");              // width of the glyph
asm(".byte 0x6F, 0x05, 0x00");       // Character - 85, offset (0x0000056F)
asm(".byte 0x09");              // width of the glyph
asm(".byte 0x91, 0x05, 0x00");       // Character - 86, offset (0x00000591)
asm(".byte 0x0C");              // width of the glyph
asm(".byte 0xB3, 0x05, 0x00");       // Character - 87, offset (0x000005B3)
asm(".byte 0x09");              // width of the glyph
asm(".byte 0xD5, 0x05, 0x00");       // Character - 88, offset (0x000005D5)
asm(".byte 0x08");              // width of the glyph
asm(".byte 0xF7, 0x05, 0x00");       // Character - 89, offset (0x000005F7)
asm(".byte 0x07");              // width of the glyph
asm(".byte 0x08, 0x06, 0x00");       // Character - 90, offset (0x00000608)
asm(".byte 0x04");              // width of the glyph
asm(".byte 0x19, 0x06, 0x00");       // Character - 91, offset (0x00000619)
asm(".byte 0x07");              // width of the glyph
asm(".byte 0x2A, 0x06, 0x00");       // Character - 92, offset (0x0000062A)
asm(".byte 0x04");              // width of the glyph
asm(".byte 0x3B, 0x06, 0x00");       // Character - 93, offset (0x0000063B)
asm(".byte 0x07");              // width of the glyph
asm(".byte 0x4C, 0x06, 0x00");       // Character - 94, offset (0x0000064C)
asm(".byte 0x07");              // width of the glyph
asm(".byte 0x5D, 0x06, 0x00");       // Character - 95, offset (0x0000065D)
asm(".byte 0x04");              // width of the glyph
asm(".byte 0x6E, 0x06, 0x00");       // Character - 96, offset (0x0000066E)
asm(".byte 0x06");              // width of the glyph
asm(".byte 0x7F, 0x06, 0x00");       // Character - 97, offset (0x0000067F)
asm(".byte 0x07");              // width of the glyph
asm(".byte 0x90, 0x06, 0x00");       // Character - 98, offset (0x00000690)
asm(".byte 0x06");              // width of the glyph
asm(".byte 0xA1, 0x06, 0x00");       // Character - 99, offset (0x000006A1)
asm(".byte 0x07");              // width of the glyph
asm(".byte 0xB2, 0x06, 0x00");       // Character - 100, offset (0x000006B2)
asm(".byte 0x06");              // width of the glyph
asm(".byte 0xC3, 0x06, 0x00");       // Character - 101, offset (0x000006C3)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0xD4, 0x06, 0x00");       // Character - 102, offset (0x000006D4)
asm(".byte 0x07");              // width of the glyph
asm(".byte 0xE5, 0x06, 0x00");       // Character - 103, offset (0x000006E5)
asm(".byte 0x08");              // width of the glyph
asm(".byte 0xF6, 0x06, 0x00");       // Character - 104, offset (0x000006F6)
asm(".byte 0x04");              // width of the glyph
asm(".byte 0x07, 0x07, 0x00");       // Character - 105, offset (0x00000707)
asm(".byte 0x04");              // width of the glyph
asm(".byte 0x18, 0x07, 0x00");       // Character - 106, offset (0x00000718)
asm(".byte 0x07");              // width of the glyph
asm(".byte 0x29, 0x07, 0x00");       // Character - 107, offset (0x00000729)
asm(".byte 0x04");              // width of the glyph
asm(".byte 0x3A, 0x07, 0x00");       // Character - 108, offset (0x0000073A)
asm(".byte 0x0B");              // width of the glyph
asm(".byte 0x4B, 0x07, 0x00");       // Character - 109, offset (0x0000074B)
asm(".byte 0x08");              // width of the glyph
asm(".byte 0x6D, 0x07, 0x00");       // Character - 110, offset (0x0000076D)
asm(".byte 0x07");              // width of the glyph
asm(".byte 0x7E, 0x07, 0x00");       // Character - 111, offset (0x0000077E)
asm(".byte 0x07");              // width of the glyph
asm(".byte 0x8F, 0x07, 0x00");       // Character - 112, offset (0x0000078F)
asm(".byte 0x07");              // width of the glyph
asm(".byte 0xA0, 0x07, 0x00");       // Character - 113, offset (0x000007A0)
asm(".byte 0x06");              // width of the glyph
asm(".byte 0xB1, 0x07, 0x00");       // Character - 114, offset (0x000007B1)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0xC2, 0x07, 0x00");       // Character - 115, offset (0x000007C2)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0xD3, 0x07, 0x00");       // Character - 116, offset (0x000007D3)
asm(".byte 0x07");              // width of the glyph
asm(".byte 0xE4, 0x07, 0x00");       // Character - 117, offset (0x000007E4)
asm(".byte 0x07");              // width of the glyph
asm(".byte 0xF5, 0x07, 0x00");       // Character - 118, offset (0x000007F5)
asm(".byte 0x0A");              // width of the glyph
asm(".byte 0x06, 0x08, 0x00");       // Character - 119, offset (0x00000806)
asm(".byte 0x07");              // width of the glyph
asm(".byte 0x28, 0x08, 0x00");       // Character - 120, offset (0x00000828)
asm(".byte 0x07");              // width of the glyph
asm(".byte 0x39, 0x08, 0x00");       // Character - 121, offset (0x00000839)
asm(".byte 0x06");              // width of the glyph
asm(".byte 0x4A, 0x08, 0x00");       // Character - 122, offset (0x0000084A)
asm(".byte 0x04");              // width of the glyph
asm(".byte 0x5B, 0x08, 0x00");       // Character - 123, offset (0x0000085B)
asm(".byte 0x03");              // width of the glyph
asm(".byte 0x6C, 0x08, 0x00");       // Character - 124, offset (0x0000086C)
asm(".byte 0x04");              // width of the glyph
asm(".byte 0x7D, 0x08, 0x00");       // Character - 125, offset (0x0000087D)
asm(".byte 0x07");              // width of the glyph
asm(".byte 0x8E, 0x08, 0x00");       // Character - 126, offset (0x0000088E)
/***********************************
 * Font Characters
 ***********************************/
/***********************************
 * Character - 32
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 33
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x06");        //  **     
asm(".byte 0x06");        //  **     
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 34
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x12");        //  *  *   
asm(".byte 0x12");        //  *  *   
asm(".byte 0x12");        //  *  *   
asm(".byte 0x12");        //  *  *   
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 35
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x28");        //    * *  
asm(".byte 0x28");        //    * *  
asm(".byte 0x28");        //    * *  
asm(".byte 0x7E");        //  ****** 
asm(".byte 0x14");        //   * *   
asm(".byte 0x3E");        //  *****  
asm(".byte 0x0A");        //  * *    
asm(".byte 0x0A");        //  * *    
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 36
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x08");        //    *    
asm(".byte 0x3C");        //   ****  
asm(".byte 0x2A");        //  * * *  
asm(".byte 0x0A");        //  * *    
asm(".byte 0x1C");        //   ***   
asm(".byte 0x28");        //    * *  
asm(".byte 0x2A");        //  * * *  
asm(".byte 0x2A");        //  * * *  
asm(".byte 0x1C");        //   ***   
asm(".byte 0x08");        //    *    
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 37
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x84, 0x00");        //   *    *        
asm(".byte 0x4A, 0x00");        //  * *  *         
asm(".byte 0x4A, 0x00");        //  * *  *         
asm(".byte 0xE6, 0x00");        //  **  ***        
asm(".byte 0x30, 0x01");        //     **  *       
asm(".byte 0x28, 0x01");        //    * *  *       
asm(".byte 0x24, 0x01");        //   *  *  *       
asm(".byte 0xC6, 0x00");        //  **   **        
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 38
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x38, 0x00");        //    ***          
asm(".byte 0x24, 0x00");        //   *  *          
asm(".byte 0x24, 0x00");        //   *  *          
asm(".byte 0x14, 0x00");        //   * *           
asm(".byte 0xCC, 0x03");        //   **  ****      
asm(".byte 0x9A, 0x00");        //  * **  *        
asm(".byte 0x92, 0x00");        //  *  *  *        
asm(".byte 0xA2, 0x00");        //  *   * *        
asm(".byte 0xC2, 0x00");        //  *    **        
asm(".byte 0xBC, 0x01");        //   **** **       
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 39
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 40
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x08");        //    *    
asm(".byte 0x04");        //   *     
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x04");        //   *     
asm(".byte 0x08");        //    *    
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 41
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x02");        //  *      
asm(".byte 0x04");        //   *     
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x02");        //  *      
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 42
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x08");        //    *    
asm(".byte 0x15");        // * * *   
asm(".byte 0x36");        //  ** **  
asm(".byte 0x1C");        //   ***   
asm(".byte 0x27");        // ***  *  
asm(".byte 0x08");        //    *    
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 43
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x1F");        // *****   
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 44
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x04");        //   *     
asm(".byte 0x06");        //  **     
asm(".byte 0x04");        //   *     
asm(".byte 0x02");        //  *      
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 45
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x0F");        // ****    
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 46
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 47
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x20");        //      *  
asm(".byte 0x20");        //      *  
asm(".byte 0x10");        //     *   
asm(".byte 0x10");        //     *   
asm(".byte 0x10");        //     *   
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x01");        // *       
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 48
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x1C");        //   ***   
asm(".byte 0x12");        //  *  *   
asm(".byte 0x22");        //  *   *  
asm(".byte 0x22");        //  *   *  
asm(".byte 0x22");        //  *   *  
asm(".byte 0x22");        //  *   *  
asm(".byte 0x22");        //  *   *  
asm(".byte 0x14");        //   * *   
asm(".byte 0x1C");        //   ***   
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 49
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x08");        //    *    
asm(".byte 0x0E");        //  ***    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x3E");        //  *****  
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 50
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x38");        //    ***  
asm(".byte 0x24");        //   *  *  
asm(".byte 0x22");        //  *   *  
asm(".byte 0x20");        //      *  
asm(".byte 0x10");        //     *   
asm(".byte 0x08");        //    *    
asm(".byte 0x04");        //   *     
asm(".byte 0x24");        //   *  *  
asm(".byte 0x3E");        //  *****  
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 51
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x1C");        //   ***   
asm(".byte 0x12");        //  *  *   
asm(".byte 0x10");        //     *   
asm(".byte 0x08");        //    *    
asm(".byte 0x1E");        //  ****   
asm(".byte 0x20");        //      *  
asm(".byte 0x20");        //      *  
asm(".byte 0x22");        //  *   *  
asm(".byte 0x1C");        //   ***   
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 52
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x10");        //     *   
asm(".byte 0x18");        //    **   
asm(".byte 0x14");        //   * *   
asm(".byte 0x14");        //   * *   
asm(".byte 0x12");        //  *  *   
asm(".byte 0x12");        //  *  *   
asm(".byte 0x3E");        //  *****  
asm(".byte 0x11");        // *   *   
asm(".byte 0x38");        //    ***  
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 53
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x3C");        //   ****  
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x1C");        //   ***   
asm(".byte 0x22");        //  *   *  
asm(".byte 0x20");        //      *  
asm(".byte 0x22");        //  *   *  
asm(".byte 0x1C");        //   ***   
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 54
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x30");        //     **  
asm(".byte 0x0C");        //   **    
asm(".byte 0x04");        //   *     
asm(".byte 0x02");        //  *      
asm(".byte 0x1E");        //  ****   
asm(".byte 0x22");        //  *   *  
asm(".byte 0x22");        //  *   *  
asm(".byte 0x22");        //  *   *  
asm(".byte 0x1C");        //   ***   
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 55
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x3E");        //  *****  
asm(".byte 0x12");        //  *  *   
asm(".byte 0x10");        //     *   
asm(".byte 0x10");        //     *   
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 56
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x1C");        //   ***   
asm(".byte 0x22");        //  *   *  
asm(".byte 0x22");        //  *   *  
asm(".byte 0x16");        //  ** *   
asm(".byte 0x1C");        //   ***   
asm(".byte 0x22");        //  *   *  
asm(".byte 0x22");        //  *   *  
asm(".byte 0x22");        //  *   *  
asm(".byte 0x1C");        //   ***   
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 57
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x1C");        //   ***   
asm(".byte 0x32");        //  *  **  
asm(".byte 0x22");        //  *   *  
asm(".byte 0x22");        //  *   *  
asm(".byte 0x22");        //  *   *  
asm(".byte 0x3C");        //   ****  
asm(".byte 0x10");        //     *   
asm(".byte 0x10");        //     *   
asm(".byte 0x0E");        //  ***    
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 58
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 59
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x04");        //   *     
asm(".byte 0x06");        //  **     
asm(".byte 0x04");        //   *     
asm(".byte 0x02");        //  *      
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 60
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x30");        //     **  
asm(".byte 0x0E");        //  ***    
asm(".byte 0x07");        // ***     
asm(".byte 0x38");        //    ***  
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 61
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x3F");        // ******  
asm(".byte 0x00");        //         
asm(".byte 0x3F");        // ******  
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 62
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x03");        // **      
asm(".byte 0x1C");        //   ***   
asm(".byte 0x38");        //    ***  
asm(".byte 0x07");        // ***     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 63
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x0C");        //   **    
asm(".byte 0x12");        //  *  *   
asm(".byte 0x12");        //  *  *   
asm(".byte 0x10");        //     *   
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 64
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xF0, 0x01");        //     *****       
asm(".byte 0x0C, 0x03");        //   **    **      
asm(".byte 0x02, 0x02");        //  *       *      
asm(".byte 0xF1, 0x04");        // *   ****  *     
asm(".byte 0x89, 0x04");        // *  *   *  *     
asm(".byte 0x89, 0x04");        // *  *   *  *     
asm(".byte 0x89, 0x04");        // *  *   *  *     
asm(".byte 0x89, 0x02");        // *  *   * *      
asm(".byte 0xF1, 0x01");        // *   *****       
asm(".byte 0x02, 0x00");        //  *              
asm(".byte 0x0C, 0x03");        //   **    **      
asm(".byte 0xF8, 0x00");        //    *****        
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 65
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x10");        //     *   
asm(".byte 0x18");        //    **   
asm(".byte 0x18");        //    **   
asm(".byte 0x24");        //   *  *  
asm(".byte 0x24");        //   *  *  
asm(".byte 0x3C");        //   ****  
asm(".byte 0x42");        //  *    * 
asm(".byte 0x42");        //  *    * 
asm(".byte 0xE7");        // ***  ***
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 66
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x1F");        // *****   
asm(".byte 0x22");        //  *   *  
asm(".byte 0x22");        //  *   *  
asm(".byte 0x22");        //  *   *  
asm(".byte 0x3E");        //  *****  
asm(".byte 0x62");        //  *   ** 
asm(".byte 0x42");        //  *    * 
asm(".byte 0x42");        //  *    * 
asm(".byte 0x3F");        // ******  
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 67
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x78");        //    **** 
asm(".byte 0x44");        //   *   * 
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x44");        //   *   * 
asm(".byte 0x38");        //    ***  
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 68
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x1F");        // *****   
asm(".byte 0x22");        //  *   *  
asm(".byte 0x42");        //  *    * 
asm(".byte 0x42");        //  *    * 
asm(".byte 0x42");        //  *    * 
asm(".byte 0x42");        //  *    * 
asm(".byte 0x42");        //  *    * 
asm(".byte 0x22");        //  *   *  
asm(".byte 0x1F");        // *****   
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 69
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x3F");        // ******  
asm(".byte 0x22");        //  *   *  
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x1E");        //  ****   
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x22");        //  *   *  
asm(".byte 0x3F");        // ******  
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 70
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x3F");        // ******  
asm(".byte 0x22");        //  *   *  
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x1E");        //  ****   
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x07");        // ***     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 71
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x78");        //    **** 
asm(".byte 0x26");        //  **  *  
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0xE1");        // *    ***
asm(".byte 0x41");        // *     * 
asm(".byte 0x42");        //  *    * 
asm(".byte 0x3C");        //   ****  
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 72
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xC7, 0x01");        // ***   ***       
asm(".byte 0x82, 0x00");        //  *     *        
asm(".byte 0x82, 0x00");        //  *     *        
asm(".byte 0x82, 0x00");        //  *     *        
asm(".byte 0xFE, 0x00");        //  *******        
asm(".byte 0x82, 0x00");        //  *     *        
asm(".byte 0x82, 0x00");        //  *     *        
asm(".byte 0x82, 0x00");        //  *     *        
asm(".byte 0xC7, 0x01");        // ***   ***       
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 73
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x0E");        //  ***    
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x0E");        //  ***    
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 74
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x1C");        //   ***   
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x04");        //   *     
asm(".byte 0x07");        // ***     
asm(".byte 0x00");        //         

/***********************************
 * Character - 75
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0xE7");        // ***  ***
asm(".byte 0x22");        //  *   *  
asm(".byte 0x12");        //  *  *   
asm(".byte 0x0A");        //  * *    
asm(".byte 0x0E");        //  ***    
asm(".byte 0x1A");        //  * **   
asm(".byte 0x12");        //  *  *   
asm(".byte 0x22");        //  *   *  
asm(".byte 0xC7");        // ***   **
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 76
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x07");        // ***     
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x22");        //  *   *  
asm(".byte 0x3F");        // ******  
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 77
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x07, 0x07");        // ***     ***     
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x8A, 0x02");        //  * *   * *      
asm(".byte 0x8A, 0x02");        //  * *   * *      
asm(".byte 0x5A, 0x02");        //  * ** *  *      
asm(".byte 0x52, 0x02");        //  *  * *  *      
asm(".byte 0x52, 0x02");        //  *  * *  *      
asm(".byte 0x22, 0x02");        //  *   *   *      
asm(".byte 0x27, 0x07");        // ***  *  ***     
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 78
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xC3, 0x01");        // **    ***       
asm(".byte 0x86, 0x00");        //  **    *        
asm(".byte 0x8E, 0x00");        //  ***   *        
asm(".byte 0x8A, 0x00");        //  * *   *        
asm(".byte 0x92, 0x00");        //  *  *  *        
asm(".byte 0xA2, 0x00");        //  *   * *        
asm(".byte 0xE2, 0x00");        //  *   ***        
asm(".byte 0xC2, 0x00");        //  *    **        
asm(".byte 0x87, 0x00");        // ***    *        
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 79
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x1C");        //   ***   
asm(".byte 0x22");        //  *   *  
asm(".byte 0x41");        // *     * 
asm(".byte 0x41");        // *     * 
asm(".byte 0x41");        // *     * 
asm(".byte 0x41");        // *     * 
asm(".byte 0x41");        // *     * 
asm(".byte 0x22");        //  *   *  
asm(".byte 0x1C");        //   ***   
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 80
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x1F");        // *****   
asm(".byte 0x22");        //  *   *  
asm(".byte 0x22");        //  *   *  
asm(".byte 0x22");        //  *   *  
asm(".byte 0x22");        //  *   *  
asm(".byte 0x1E");        //  ****   
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x07");        // ***     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 81
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x1C");        //   ***   
asm(".byte 0x22");        //  *   *  
asm(".byte 0x41");        // *     * 
asm(".byte 0x41");        // *     * 
asm(".byte 0x41");        // *     * 
asm(".byte 0x41");        // *     * 
asm(".byte 0x41");        // *     * 
asm(".byte 0x22");        //  *   *  
asm(".byte 0x1C");        //   ***   
asm(".byte 0xB0");        //     ** *
asm(".byte 0xC0");        //       **
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 82
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x3F");        // ******  
asm(".byte 0x42");        //  *    * 
asm(".byte 0x42");        //  *    * 
asm(".byte 0x42");        //  *    * 
asm(".byte 0x3E");        //  *****  
asm(".byte 0x1A");        //  * **   
asm(".byte 0x32");        //  *  **  
asm(".byte 0x62");        //  *   ** 
asm(".byte 0xC7");        // ***   **
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 83
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x1C");        //   ***   
asm(".byte 0x32");        //  *  **  
asm(".byte 0x02");        //  *      
asm(".byte 0x04");        //   *     
asm(".byte 0x18");        //    **   
asm(".byte 0x20");        //      *  
asm(".byte 0x20");        //      *  
asm(".byte 0x22");        //  *   *  
asm(".byte 0x1E");        //  ****   
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 84
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x7F");        // ******* 
asm(".byte 0x49");        // *  *  * 
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x1C");        //   ***   
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 85
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xC7, 0x01");        // ***   ***       
asm(".byte 0x82, 0x00");        //  *     *        
asm(".byte 0x82, 0x00");        //  *     *        
asm(".byte 0x82, 0x00");        //  *     *        
asm(".byte 0x82, 0x00");        //  *     *        
asm(".byte 0x82, 0x00");        //  *     *        
asm(".byte 0x82, 0x00");        //  *     *        
asm(".byte 0x46, 0x00");        //  **   *         
asm(".byte 0x3C, 0x00");        //   ****          
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 86
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xC7, 0x01");        // ***   ***       
asm(".byte 0x86, 0x00");        //  **    *        
asm(".byte 0x44, 0x00");        //   *   *         
asm(".byte 0x44, 0x00");        //   *   *         
asm(".byte 0x2C, 0x00");        //   ** *          
asm(".byte 0x28, 0x00");        //    * *          
asm(".byte 0x28, 0x00");        //    * *          
asm(".byte 0x10, 0x00");        //     *           
asm(".byte 0x10, 0x00");        //     *           
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 87
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x27, 0x0E");        // ***  *   ***    
asm(".byte 0x62, 0x02");        //  *   **  *      
asm(".byte 0x62, 0x02");        //  *   **  *      
asm(".byte 0x54, 0x02");        //   * * *  *      
asm(".byte 0x94, 0x02");        //   * *  * *      
asm(".byte 0x94, 0x02");        //   * *  * *      
asm(".byte 0x8C, 0x01");        //   **   **       
asm(".byte 0x08, 0x01");        //    *    *       
asm(".byte 0x08, 0x01");        //    *    *       
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 88
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xE7, 0x00");        // ***  ***        
asm(".byte 0x46, 0x00");        //  **   *         
asm(".byte 0x24, 0x00");        //   *  *          
asm(".byte 0x18, 0x00");        //    **           
asm(".byte 0x10, 0x00");        //     *           
asm(".byte 0x38, 0x00");        //    ***          
asm(".byte 0x64, 0x00");        //   *  **         
asm(".byte 0x42, 0x00");        //  *    *         
asm(".byte 0xE7, 0x00");        // ***  ***        
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 89
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0xC7");        // ***   **
asm(".byte 0x44");        //   *   * 
asm(".byte 0x28");        //    * *  
asm(".byte 0x28");        //    * *  
asm(".byte 0x10");        //     *   
asm(".byte 0x10");        //     *   
asm(".byte 0x10");        //     *   
asm(".byte 0x10");        //     *   
asm(".byte 0x38");        //    ***  
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 90
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x7E");        //  ****** 
asm(".byte 0x22");        //  *   *  
asm(".byte 0x10");        //     *   
asm(".byte 0x10");        //     *   
asm(".byte 0x08");        //    *    
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x42");        //  *    * 
asm(".byte 0x7F");        // ******* 
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 91
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x0E");        //  ***    
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x0E");        //  ***    
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 92
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x01");        // *       
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x10");        //     *   
asm(".byte 0x10");        //     *   
asm(".byte 0x10");        //     *   
asm(".byte 0x20");        //      *  
asm(".byte 0x20");        //      *  
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 93
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x07");        // ***     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x07");        // ***     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 94
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x14");        //   * *   
asm(".byte 0x14");        //   * *   
asm(".byte 0x12");        //  *  *   
asm(".byte 0x22");        //  *   *  
asm(".byte 0x22");        //  *   *  
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 95
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x3F");        // ******  
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 96
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x03");        // **      
asm(".byte 0x02");        //  *      
asm(".byte 0x04");        //   *     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 97
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x1C");        //   ***   
asm(".byte 0x12");        //  *  *   
asm(".byte 0x11");        // *   *   
asm(".byte 0x1E");        //  ****   
asm(".byte 0x12");        //  *  *   
asm(".byte 0x3E");        //  *****  
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 98
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x03");        // **      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x1E");        //  ****   
asm(".byte 0x26");        //  **  *  
asm(".byte 0x22");        //  *   *  
asm(".byte 0x22");        //  *   *  
asm(".byte 0x22");        //  *   *  
asm(".byte 0x1C");        //   ***   
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 99
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x3C");        //   ****  
asm(".byte 0x22");        //  *   *  
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x22");        //  *   *  
asm(".byte 0x1C");        //   ***   
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 100
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x30");        //     **  
asm(".byte 0x20");        //      *  
asm(".byte 0x20");        //      *  
asm(".byte 0x20");        //      *  
asm(".byte 0x20");        //      *  
asm(".byte 0x3C");        //   ****  
asm(".byte 0x22");        //  *   *  
asm(".byte 0x22");        //  *   *  
asm(".byte 0x22");        //  *   *  
asm(".byte 0x22");        //  *   *  
asm(".byte 0x7C");        //   ***** 
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 101
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x1C");        //   ***   
asm(".byte 0x22");        //  *   *  
asm(".byte 0x3E");        //  *****  
asm(".byte 0x02");        //  *      
asm(".byte 0x22");        //  *   *  
asm(".byte 0x1C");        //   ***   
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 102
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x18");        //    **   
asm(".byte 0x16");        //  ** *   
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x0F");        // ****    
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x07");        // ***     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 103
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x7E");        //  ****** 
asm(".byte 0x21");        // *    *  
asm(".byte 0x21");        // *    *  
asm(".byte 0x1E");        //  ****   
asm(".byte 0x06");        //  **     
asm(".byte 0x3A");        //  * ***  
asm(".byte 0x41");        // *     * 
asm(".byte 0x41");        // *     * 
asm(".byte 0x3E");        //  *****  
asm(".byte 0x00");        //         

/***********************************
 * Character - 104
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x03");        // **      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x7A");        //  * **** 
asm(".byte 0x46");        //  **   * 
asm(".byte 0x42");        //  *    * 
asm(".byte 0x42");        //  *    * 
asm(".byte 0x42");        //  *    * 
asm(".byte 0xE7");        // ***  ***
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 105
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x02");        //  *      
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x03");        // **      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x07");        // ***     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 106
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x08");        //    *    
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x0C");        //   **    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x07");        // ***     
asm(".byte 0x00");        //         

/***********************************
 * Character - 107
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x03");        // **      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x32");        //  *  **  
asm(".byte 0x0A");        //  * *    
asm(".byte 0x06");        //  **     
asm(".byte 0x0A");        //  * *    
asm(".byte 0x12");        //  *  *   
asm(".byte 0x77");        // *** *** 
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 108
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x03");        // **      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x07");        // ***     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 109
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xBB, 0x03");        // ** *** ***      
asm(".byte 0x66, 0x02");        //  **  **  *      
asm(".byte 0x22, 0x02");        //  *   *   *      
asm(".byte 0x22, 0x02");        //  *   *   *      
asm(".byte 0x22, 0x02");        //  *   *   *      
asm(".byte 0x77, 0x07");        // *** *** ***     
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 110
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x72");        //  *  *** 
asm(".byte 0x4F");        // ****  * 
asm(".byte 0x42");        //  *    * 
asm(".byte 0x42");        //  *    * 
asm(".byte 0x42");        //  *    * 
asm(".byte 0xE7");        // ***  ***
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 111
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x1C");        //   ***   
asm(".byte 0x22");        //  *   *  
asm(".byte 0x22");        //  *   *  
asm(".byte 0x22");        //  *   *  
asm(".byte 0x22");        //  *   *  
asm(".byte 0x1C");        //   ***   
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 112
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x1B");        // ** **   
asm(".byte 0x26");        //  **  *  
asm(".byte 0x22");        //  *   *  
asm(".byte 0x22");        //  *   *  
asm(".byte 0x22");        //  *   *  
asm(".byte 0x1E");        //  ****   
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x07");        // ***     
asm(".byte 0x00");        //         

/***********************************
 * Character - 113
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x3C");        //   ****  
asm(".byte 0x22");        //  *   *  
asm(".byte 0x22");        //  *   *  
asm(".byte 0x22");        //  *   *  
asm(".byte 0x22");        //  *   *  
asm(".byte 0x3C");        //   ****  
asm(".byte 0x20");        //      *  
asm(".byte 0x20");        //      *  
asm(".byte 0x70");        //     *** 
asm(".byte 0x00");        //         

/***********************************
 * Character - 114
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x1B");        // ** **   
asm(".byte 0x16");        //  ** *   
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x07");        // ***     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 115
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x06");        //  **     
asm(".byte 0x0E");        //  ***    
asm(".byte 0x06");        //  **     
asm(".byte 0x08");        //    *    
asm(".byte 0x0A");        //  * *    
asm(".byte 0x0E");        //  ***    
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 116
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x0F");        // ****    
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x0E");        //  ***    
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 117
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x33");        // **  **  
asm(".byte 0x22");        //  *   *  
asm(".byte 0x22");        //  *   *  
asm(".byte 0x22");        //  *   *  
asm(".byte 0x22");        //  *   *  
asm(".byte 0x7E");        //  ****** 
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 118
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x67");        // ***  ** 
asm(".byte 0x22");        //  *   *  
asm(".byte 0x14");        //   * *   
asm(".byte 0x14");        //   * *   
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 119
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x27, 0x03");        // ***  *  **      
asm(".byte 0x32, 0x01");        //  *  **  *       
asm(".byte 0xB2, 0x00");        //  *  ** *        
asm(".byte 0xCC, 0x00");        //   **  **        
asm(".byte 0xCC, 0x00");        //   **  **        
asm(".byte 0xC8, 0x00");        //    *  **        
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 120
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x77");        // *** *** 
asm(".byte 0x16");        //  ** *   
asm(".byte 0x08");        //    *    
asm(".byte 0x1C");        //   ***   
asm(".byte 0x22");        //  *   *  
asm(".byte 0x77");        // *** *** 
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 121
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x77");        // *** *** 
asm(".byte 0x22");        //  *   *  
asm(".byte 0x14");        //   * *   
asm(".byte 0x14");        //   * *   
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x04");        //   *     
asm(".byte 0x03");        // **      
asm(".byte 0x00");        //         

/***********************************
 * Character - 122
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x3E");        //  *****  
asm(".byte 0x12");        //  *  *   
asm(".byte 0x08");        //    *    
asm(".byte 0x04");        //   *     
asm(".byte 0x22");        //  *   *  
asm(".byte 0x3E");        //  *****  
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 123
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x08");        //    *    
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x02");        //  *      
asm(".byte 0x05");        // * *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x08");        //    *    
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 124
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x00");        //         

/***********************************
 * Character - 125
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x01");        // *       
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x0C");        //   **    
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x01");        // *       
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 126
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x6E");        //  *** ** 
asm(".byte 0x39");        // *  ***  
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

asm(".section .const, psv, page");
/*********************************
 * TTF Font File Structure
 * Label: GOLMediumFont
 * Description:  Height: 19 pixels, 1 bit per pixel, Range: ' ' to '~'
 * Comment Block:
 * Created from Gentium font. 
 * Gentium font is Copyright (c) 2003-2005, SIL International (http://scripts.sil.org/). 
 * All Rights Reserved. 
 * Gentium font is licensed under the SIL Open Font License, Version 1.0. 
 * http://scripts.sil.org/OFL 
 ***********************************/
#ifdef USE_GFX_FONT_IN_PROGRAM_SECTION
extern const char __GOLMediumFont[] __attribute__((space(prog), aligned(2)));
#else
extern const char __GOLMediumFont[] __attribute__((aligned(2)));
#endif

const FONT_FLASH GOLMediumFont =
{
    (FLASH | COMP_NONE),
    (GFX_FONT_SPACE char *)__GOLMediumFont
};

#ifdef USE_GFX_FONT_IN_PROGRAM_SECTION
asm(".section .text, code");
#else
asm(".section .const, psv, page");
#endif
asm(".global ___GOLMediumFont");
asm(".align 2");
asm("___GOLMediumFont:");
/****************************************
 * Font header
 ****************************************/
asm(".byte 0x00");           // Font ID
asm(".byte 0x00");           // Font information:  1 bit per pixel, Characters zero degress rotation
asm(".byte 0x20, 0x00");     // First Character
asm(".byte 0x7E, 0x00");     // Last Character
asm(".byte 0x13, 0x00");     // Height
/****************************************
 * Font Glyph Table
 ****************************************/
asm(".byte 0x04");              // width of the glyph
asm(".byte 0x84, 0x01, 0x00");       // Character - 32, offset (0x00000184)
asm(".byte 0x04");              // width of the glyph
asm(".byte 0x97, 0x01, 0x00");       // Character - 33, offset (0x00000197)
asm(".byte 0x07");              // width of the glyph
asm(".byte 0xAA, 0x01, 0x00");       // Character - 34, offset (0x000001AA)
asm(".byte 0x08");              // width of the glyph
asm(".byte 0xBD, 0x01, 0x00");       // Character - 35, offset (0x000001BD)
asm(".byte 0x08");              // width of the glyph
asm(".byte 0xD0, 0x01, 0x00");       // Character - 36, offset (0x000001D0)
asm(".byte 0x0B");              // width of the glyph
asm(".byte 0xE3, 0x01, 0x00");       // Character - 37, offset (0x000001E3)
asm(".byte 0x0B");              // width of the glyph
asm(".byte 0x09, 0x02, 0x00");       // Character - 38, offset (0x00000209)
asm(".byte 0x04");              // width of the glyph
asm(".byte 0x2F, 0x02, 0x00");       // Character - 39, offset (0x0000022F)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x42, 0x02, 0x00");       // Character - 40, offset (0x00000242)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x55, 0x02, 0x00");       // Character - 41, offset (0x00000255)
asm(".byte 0x07");              // width of the glyph
asm(".byte 0x68, 0x02, 0x00");       // Character - 42, offset (0x00000268)
asm(".byte 0x07");              // width of the glyph
asm(".byte 0x7B, 0x02, 0x00");       // Character - 43, offset (0x0000027B)
asm(".byte 0x04");              // width of the glyph
asm(".byte 0x8E, 0x02, 0x00");       // Character - 44, offset (0x0000028E)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0xA1, 0x02, 0x00");       // Character - 45, offset (0x000002A1)
asm(".byte 0x04");              // width of the glyph
asm(".byte 0xB4, 0x02, 0x00");       // Character - 46, offset (0x000002B4)
asm(".byte 0x08");              // width of the glyph
asm(".byte 0xC7, 0x02, 0x00");       // Character - 47, offset (0x000002C7)
asm(".byte 0x08");              // width of the glyph
asm(".byte 0xDA, 0x02, 0x00");       // Character - 48, offset (0x000002DA)
asm(".byte 0x08");              // width of the glyph
asm(".byte 0xED, 0x02, 0x00");       // Character - 49, offset (0x000002ED)
asm(".byte 0x07");              // width of the glyph
asm(".byte 0x00, 0x03, 0x00");       // Character - 50, offset (0x00000300)
asm(".byte 0x08");              // width of the glyph
asm(".byte 0x13, 0x03, 0x00");       // Character - 51, offset (0x00000313)
asm(".byte 0x08");              // width of the glyph
asm(".byte 0x26, 0x03, 0x00");       // Character - 52, offset (0x00000326)
asm(".byte 0x08");              // width of the glyph
asm(".byte 0x39, 0x03, 0x00");       // Character - 53, offset (0x00000339)
asm(".byte 0x08");              // width of the glyph
asm(".byte 0x4C, 0x03, 0x00");       // Character - 54, offset (0x0000034C)
asm(".byte 0x08");              // width of the glyph
asm(".byte 0x5F, 0x03, 0x00");       // Character - 55, offset (0x0000035F)
asm(".byte 0x07");              // width of the glyph
asm(".byte 0x72, 0x03, 0x00");       // Character - 56, offset (0x00000372)
asm(".byte 0x08");              // width of the glyph
asm(".byte 0x85, 0x03, 0x00");       // Character - 57, offset (0x00000385)
asm(".byte 0x04");              // width of the glyph
asm(".byte 0x98, 0x03, 0x00");       // Character - 58, offset (0x00000398)
asm(".byte 0x04");              // width of the glyph
asm(".byte 0xAB, 0x03, 0x00");       // Character - 59, offset (0x000003AB)
asm(".byte 0x07");              // width of the glyph
asm(".byte 0xBE, 0x03, 0x00");       // Character - 60, offset (0x000003BE)
asm(".byte 0x07");              // width of the glyph
asm(".byte 0xD1, 0x03, 0x00");       // Character - 61, offset (0x000003D1)
asm(".byte 0x07");              // width of the glyph
asm(".byte 0xE4, 0x03, 0x00");       // Character - 62, offset (0x000003E4)
asm(".byte 0x07");              // width of the glyph
asm(".byte 0xF7, 0x03, 0x00");       // Character - 63, offset (0x000003F7)
asm(".byte 0x0D");              // width of the glyph
asm(".byte 0x0A, 0x04, 0x00");       // Character - 64, offset (0x0000040A)
asm(".byte 0x0A");              // width of the glyph
asm(".byte 0x30, 0x04, 0x00");       // Character - 65, offset (0x00000430)
asm(".byte 0x09");              // width of the glyph
asm(".byte 0x56, 0x04, 0x00");       // Character - 66, offset (0x00000456)
asm(".byte 0x09");              // width of the glyph
asm(".byte 0x7C, 0x04, 0x00");       // Character - 67, offset (0x0000047C)
asm(".byte 0x09");              // width of the glyph
asm(".byte 0xA2, 0x04, 0x00");       // Character - 68, offset (0x000004A2)
asm(".byte 0x08");              // width of the glyph
asm(".byte 0xC8, 0x04, 0x00");       // Character - 69, offset (0x000004C8)
asm(".byte 0x08");              // width of the glyph
asm(".byte 0xDB, 0x04, 0x00");       // Character - 70, offset (0x000004DB)
asm(".byte 0x09");              // width of the glyph
asm(".byte 0xEE, 0x04, 0x00");       // Character - 71, offset (0x000004EE)
asm(".byte 0x0A");              // width of the glyph
asm(".byte 0x14, 0x05, 0x00");       // Character - 72, offset (0x00000514)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x3A, 0x05, 0x00");       // Character - 73, offset (0x0000053A)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x4D, 0x05, 0x00");       // Character - 74, offset (0x0000054D)
asm(".byte 0x09");              // width of the glyph
asm(".byte 0x60, 0x05, 0x00");       // Character - 75, offset (0x00000560)
asm(".byte 0x08");              // width of the glyph
asm(".byte 0x86, 0x05, 0x00");       // Character - 76, offset (0x00000586)
asm(".byte 0x0D");              // width of the glyph
asm(".byte 0x99, 0x05, 0x00");       // Character - 77, offset (0x00000599)
asm(".byte 0x0A");              // width of the glyph
asm(".byte 0xBF, 0x05, 0x00");       // Character - 78, offset (0x000005BF)
asm(".byte 0x0A");              // width of the glyph
asm(".byte 0xE5, 0x05, 0x00");       // Character - 79, offset (0x000005E5)
asm(".byte 0x08");              // width of the glyph
asm(".byte 0x0B, 0x06, 0x00");       // Character - 80, offset (0x0000060B)
asm(".byte 0x0A");              // width of the glyph
asm(".byte 0x1E, 0x06, 0x00");       // Character - 81, offset (0x0000061E)
asm(".byte 0x09");              // width of the glyph
asm(".byte 0x44, 0x06, 0x00");       // Character - 82, offset (0x00000644)
asm(".byte 0x08");              // width of the glyph
asm(".byte 0x6A, 0x06, 0x00");       // Character - 83, offset (0x0000066A)
asm(".byte 0x09");              // width of the glyph
asm(".byte 0x7D, 0x06, 0x00");       // Character - 84, offset (0x0000067D)
asm(".byte 0x0A");              // width of the glyph
asm(".byte 0xA3, 0x06, 0x00");       // Character - 85, offset (0x000006A3)
asm(".byte 0x0A");              // width of the glyph
asm(".byte 0xC9, 0x06, 0x00");       // Character - 86, offset (0x000006C9)
asm(".byte 0x0E");              // width of the glyph
asm(".byte 0xEF, 0x06, 0x00");       // Character - 87, offset (0x000006EF)
asm(".byte 0x0A");              // width of the glyph
asm(".byte 0x15, 0x07, 0x00");       // Character - 88, offset (0x00000715)
asm(".byte 0x0A");              // width of the glyph
asm(".byte 0x3B, 0x07, 0x00");       // Character - 89, offset (0x0000073B)
asm(".byte 0x08");              // width of the glyph
asm(".byte 0x61, 0x07, 0x00");       // Character - 90, offset (0x00000761)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x74, 0x07, 0x00");       // Character - 91, offset (0x00000774)
asm(".byte 0x08");              // width of the glyph
asm(".byte 0x87, 0x07, 0x00");       // Character - 92, offset (0x00000787)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x9A, 0x07, 0x00");       // Character - 93, offset (0x0000079A)
asm(".byte 0x08");              // width of the glyph
asm(".byte 0xAD, 0x07, 0x00");       // Character - 94, offset (0x000007AD)
asm(".byte 0x08");              // width of the glyph
asm(".byte 0xC0, 0x07, 0x00");       // Character - 95, offset (0x000007C0)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0xD3, 0x07, 0x00");       // Character - 96, offset (0x000007D3)
asm(".byte 0x07");              // width of the glyph
asm(".byte 0xE6, 0x07, 0x00");       // Character - 97, offset (0x000007E6)
asm(".byte 0x08");              // width of the glyph
asm(".byte 0xF9, 0x07, 0x00");       // Character - 98, offset (0x000007F9)
asm(".byte 0x07");              // width of the glyph
asm(".byte 0x0C, 0x08, 0x00");       // Character - 99, offset (0x0000080C)
asm(".byte 0x08");              // width of the glyph
asm(".byte 0x1F, 0x08, 0x00");       // Character - 100, offset (0x0000081F)
asm(".byte 0x07");              // width of the glyph
asm(".byte 0x32, 0x08, 0x00");       // Character - 101, offset (0x00000832)
asm(".byte 0x07");              // width of the glyph
asm(".byte 0x45, 0x08, 0x00");       // Character - 102, offset (0x00000845)
asm(".byte 0x07");              // width of the glyph
asm(".byte 0x58, 0x08, 0x00");       // Character - 103, offset (0x00000858)
asm(".byte 0x09");              // width of the glyph
asm(".byte 0x6B, 0x08, 0x00");       // Character - 104, offset (0x0000086B)
asm(".byte 0x04");              // width of the glyph
asm(".byte 0x91, 0x08, 0x00");       // Character - 105, offset (0x00000891)
asm(".byte 0x04");              // width of the glyph
asm(".byte 0xA4, 0x08, 0x00");       // Character - 106, offset (0x000008A4)
asm(".byte 0x08");              // width of the glyph
asm(".byte 0xB7, 0x08, 0x00");       // Character - 107, offset (0x000008B7)
asm(".byte 0x04");              // width of the glyph
asm(".byte 0xCA, 0x08, 0x00");       // Character - 108, offset (0x000008CA)
asm(".byte 0x0C");              // width of the glyph
asm(".byte 0xDD, 0x08, 0x00");       // Character - 109, offset (0x000008DD)
asm(".byte 0x09");              // width of the glyph
asm(".byte 0x03, 0x09, 0x00");       // Character - 110, offset (0x00000903)
asm(".byte 0x08");              // width of the glyph
asm(".byte 0x29, 0x09, 0x00");       // Character - 111, offset (0x00000929)
asm(".byte 0x08");              // width of the glyph
asm(".byte 0x3C, 0x09, 0x00");       // Character - 112, offset (0x0000093C)
asm(".byte 0x08");              // width of the glyph
asm(".byte 0x4F, 0x09, 0x00");       // Character - 113, offset (0x0000094F)
asm(".byte 0x06");              // width of the glyph
asm(".byte 0x62, 0x09, 0x00");       // Character - 114, offset (0x00000962)
asm(".byte 0x06");              // width of the glyph
asm(".byte 0x75, 0x09, 0x00");       // Character - 115, offset (0x00000975)
asm(".byte 0x06");              // width of the glyph
asm(".byte 0x88, 0x09, 0x00");       // Character - 116, offset (0x00000988)
asm(".byte 0x08");              // width of the glyph
asm(".byte 0x9B, 0x09, 0x00");       // Character - 117, offset (0x0000099B)
asm(".byte 0x08");              // width of the glyph
asm(".byte 0xAE, 0x09, 0x00");       // Character - 118, offset (0x000009AE)
asm(".byte 0x0B");              // width of the glyph
asm(".byte 0xC1, 0x09, 0x00");       // Character - 119, offset (0x000009C1)
asm(".byte 0x08");              // width of the glyph
asm(".byte 0xE7, 0x09, 0x00");       // Character - 120, offset (0x000009E7)
asm(".byte 0x08");              // width of the glyph
asm(".byte 0xFA, 0x09, 0x00");       // Character - 121, offset (0x000009FA)
asm(".byte 0x07");              // width of the glyph
asm(".byte 0x0D, 0x0A, 0x00");       // Character - 122, offset (0x00000A0D)
asm(".byte 0x04");              // width of the glyph
asm(".byte 0x20, 0x0A, 0x00");       // Character - 123, offset (0x00000A20)
asm(".byte 0x04");              // width of the glyph
asm(".byte 0x33, 0x0A, 0x00");       // Character - 124, offset (0x00000A33)
asm(".byte 0x04");              // width of the glyph
asm(".byte 0x46, 0x0A, 0x00");       // Character - 125, offset (0x00000A46)
asm(".byte 0x08");              // width of the glyph
asm(".byte 0x59, 0x0A, 0x00");       // Character - 126, offset (0x00000A59)
/***********************************
 * Font Characters
 ***********************************/
/***********************************
 * Character - 32
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 33
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x04");        //   *     
asm(".byte 0x06");        //  **     
asm(".byte 0x06");        //  **     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x00");        //         
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 34
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x36");        //  ** **  
asm(".byte 0x16");        //  ** *   
asm(".byte 0x16");        //  ** *   
asm(".byte 0x16");        //  ** *   
asm(".byte 0x12");        //  *  *   
asm(".byte 0x12");        //  *  *   
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 35
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x50");        //     * * 
asm(".byte 0x48");        //    *  * 
asm(".byte 0x28");        //    * *  
asm(".byte 0xFC");        //   ******
asm(".byte 0x24");        //   *  *  
asm(".byte 0x7E");        //  ****** 
asm(".byte 0x14");        //   * *   
asm(".byte 0x12");        //  *  *   
asm(".byte 0x12");        //  *  *   
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 36
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x08");        //    *    
asm(".byte 0x3C");        //   ****  
asm(".byte 0x2A");        //  * * *  
asm(".byte 0x0A");        //  * *    
asm(".byte 0x0E");        //  ***    
asm(".byte 0x1C");        //   ***   
asm(".byte 0x38");        //    ***  
asm(".byte 0x48");        //    *  * 
asm(".byte 0x4A");        //  * *  * 
asm(".byte 0x4A");        //  * *  * 
asm(".byte 0x3C");        //   ****  
asm(".byte 0x08");        //    *    
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 37
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x0C, 0x03");        //   **    **      
asm(".byte 0x92, 0x01");        //  *  *  **       
asm(".byte 0x92, 0x00");        //  *  *  *        
asm(".byte 0x52, 0x00");        //  *  * *         
asm(".byte 0x2A, 0x00");        //  * * *          
asm(".byte 0xAC, 0x01");        //   ** * **       
asm(".byte 0x50, 0x02");        //     * *  *      
asm(".byte 0x48, 0x02");        //    *  *  *      
asm(".byte 0x4C, 0x02");        //   **  *  *      
asm(".byte 0x84, 0x01");        //   *    **       
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 38
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x38, 0x00");        //    ***          
asm(".byte 0x44, 0x00");        //   *   *         
asm(".byte 0x44, 0x00");        //   *   *         
asm(".byte 0x44, 0x00");        //   *   *         
asm(".byte 0x34, 0x00");        //   * **          
asm(".byte 0x9C, 0x07");        //   ***  ****     
asm(".byte 0x12, 0x01");        //  *  *   *       
asm(".byte 0x22, 0x01");        //  *   *  *       
asm(".byte 0x62, 0x01");        //  *   ** *       
asm(".byte 0xC2, 0x00");        //  *    **        
asm(".byte 0x3C, 0x07");        //   ****  ***     
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 39
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x06");        //  **     
asm(".byte 0x06");        //  **     
asm(".byte 0x06");        //  **     
asm(".byte 0x06");        //  **     
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 40
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x08");        //    *    
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x08");        //    *    
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 41
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x02");        //  *      
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x02");        //  *      
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 42
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x08");        //    *    
asm(".byte 0x2A");        //  * * *  
asm(".byte 0x5C");        //   *** * 
asm(".byte 0x1C");        //   ***   
asm(".byte 0x2A");        //  * * *  
asm(".byte 0x08");        //    *    
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 43
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x3E");        //  *****  
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 44
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x06");        //  **     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x02");        //  *      
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 45
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x1F");        // *****   
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 46
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 47
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x40");        //       * 
asm(".byte 0x60");        //      ** 
asm(".byte 0x20");        //      *  
asm(".byte 0x20");        //      *  
asm(".byte 0x30");        //     **  
asm(".byte 0x10");        //     *   
asm(".byte 0x10");        //     *   
asm(".byte 0x18");        //    **   
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x03");        // **      
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 48
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x38");        //    ***  
asm(".byte 0x24");        //   *  *  
asm(".byte 0x42");        //  *    * 
asm(".byte 0x42");        //  *    * 
asm(".byte 0x42");        //  *    * 
asm(".byte 0x42");        //  *    * 
asm(".byte 0x42");        //  *    * 
asm(".byte 0x42");        //  *    * 
asm(".byte 0x24");        //   *  *  
asm(".byte 0x18");        //    **   
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 49
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x10");        //     *   
asm(".byte 0x1C");        //   ***   
asm(".byte 0x10");        //     *   
asm(".byte 0x10");        //     *   
asm(".byte 0x10");        //     *   
asm(".byte 0x10");        //     *   
asm(".byte 0x10");        //     *   
asm(".byte 0x10");        //     *   
asm(".byte 0x10");        //     *   
asm(".byte 0x7C");        //   ***** 
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 50
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x38");        //    ***  
asm(".byte 0x24");        //   *  *  
asm(".byte 0x22");        //  *   *  
asm(".byte 0x20");        //      *  
asm(".byte 0x10");        //     *   
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x04");        //   *     
asm(".byte 0x22");        //  *   *  
asm(".byte 0x3E");        //  *****  
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 51
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x38");        //    ***  
asm(".byte 0x24");        //   *  *  
asm(".byte 0x22");        //  *   *  
asm(".byte 0x10");        //     *   
asm(".byte 0x18");        //    **   
asm(".byte 0x20");        //      *  
asm(".byte 0x40");        //       * 
asm(".byte 0x40");        //       * 
asm(".byte 0x42");        //  *    * 
asm(".byte 0x3C");        //   ****  
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 52
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x20");        //      *  
asm(".byte 0x30");        //     **  
asm(".byte 0x28");        //    * *  
asm(".byte 0x28");        //    * *  
asm(".byte 0x24");        //   *  *  
asm(".byte 0x22");        //  *   *  
asm(".byte 0x7E");        //  ****** 
asm(".byte 0x20");        //      *  
asm(".byte 0x20");        //      *  
asm(".byte 0x78");        //    **** 
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 53
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x20");        //      *  
asm(".byte 0x3C");        //   ****  
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x1E");        //  ****   
asm(".byte 0x22");        //  *   *  
asm(".byte 0x20");        //      *  
asm(".byte 0x20");        //      *  
asm(".byte 0x22");        //  *   *  
asm(".byte 0x1C");        //   ***   
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 54
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x30");        //     **  
asm(".byte 0x08");        //    *    
asm(".byte 0x04");        //   *     
asm(".byte 0x02");        //  *      
asm(".byte 0x3E");        //  *****  
asm(".byte 0x42");        //  *    * 
asm(".byte 0x42");        //  *    * 
asm(".byte 0x42");        //  *    * 
asm(".byte 0x24");        //   *  *  
asm(".byte 0x38");        //    ***  
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 55
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x7E");        //  ****** 
asm(".byte 0x22");        //  *   *  
asm(".byte 0x20");        //      *  
asm(".byte 0x10");        //     *   
asm(".byte 0x10");        //     *   
asm(".byte 0x10");        //     *   
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x04");        //   *     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 56
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x1C");        //   ***   
asm(".byte 0x22");        //  *   *  
asm(".byte 0x22");        //  *   *  
asm(".byte 0x12");        //  *  *   
asm(".byte 0x1C");        //   ***   
asm(".byte 0x32");        //  *  **  
asm(".byte 0x22");        //  *   *  
asm(".byte 0x22");        //  *   *  
asm(".byte 0x22");        //  *   *  
asm(".byte 0x1C");        //   ***   
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 57
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x38");        //    ***  
asm(".byte 0x66");        //  **  ** 
asm(".byte 0x42");        //  *    * 
asm(".byte 0x42");        //  *    * 
asm(".byte 0x42");        //  *    * 
asm(".byte 0x46");        //  **   * 
asm(".byte 0x7C");        //   ***** 
asm(".byte 0x20");        //      *  
asm(".byte 0x10");        //     *   
asm(".byte 0x0C");        //   **    
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 58
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 59
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x06");        //  **     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x02");        //  *      
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 60
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x60");        //      ** 
asm(".byte 0x1C");        //   ***   
asm(".byte 0x02");        //  *      
asm(".byte 0x1D");        // * ***   
asm(".byte 0x60");        //      ** 
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 61
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x7E");        //  ****** 
asm(".byte 0x01");        // *       
asm(".byte 0x7F");        // ******* 
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 62
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x03");        // **      
asm(".byte 0x1C");        //   ***   
asm(".byte 0x60");        //      ** 
asm(".byte 0x1C");        //   ***   
asm(".byte 0x03");        // **      
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 63
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x1C");        //   ***   
asm(".byte 0x22");        //  *   *  
asm(".byte 0x22");        //  *   *  
asm(".byte 0x20");        //      *  
asm(".byte 0x20");        //      *  
asm(".byte 0x10");        //     *   
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x00");        //         
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 64
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xE0, 0x01");        //      ****       
asm(".byte 0x18, 0x06");        //    **    **     
asm(".byte 0x04, 0x04");        //   *       *     
asm(".byte 0xC2, 0x09");        //  *    ***  *    
asm(".byte 0x32, 0x09");        //  *  **  *  *    
asm(".byte 0x12, 0x09");        //  *  *   *  *    
asm(".byte 0x12, 0x09");        //  *  *   *  *    
asm(".byte 0x12, 0x09");        //  *  *   *  *    
asm(".byte 0x12, 0x05");        //  *  *   * *     
asm(".byte 0xE4, 0x03");        //   *  *****      
asm(".byte 0x04, 0x00");        //   *             
asm(".byte 0x18, 0x06");        //    **    **     
asm(".byte 0xF0, 0x01");        //     *****       
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 65
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x10, 0x00");        //     *           
asm(".byte 0x30, 0x00");        //     **          
asm(".byte 0x28, 0x00");        //    * *          
asm(".byte 0x28, 0x00");        //    * *          
asm(".byte 0x68, 0x00");        //    * **         
asm(".byte 0x44, 0x00");        //   *   *         
asm(".byte 0x7C, 0x00");        //   *****         
asm(".byte 0xC4, 0x00");        //   *   **        
asm(".byte 0x82, 0x00");        //  *     *        
asm(".byte 0xC7, 0x01");        // ***   ***       
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 66
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x3E, 0x00");        //  *****          
asm(".byte 0x44, 0x00");        //   *   *         
asm(".byte 0x44, 0x00");        //   *   *         
asm(".byte 0x44, 0x00");        //   *   *         
asm(".byte 0x7C, 0x00");        //   *****         
asm(".byte 0xC4, 0x00");        //   *   **        
asm(".byte 0x84, 0x00");        //   *    *        
asm(".byte 0x84, 0x00");        //   *    *        
asm(".byte 0x84, 0x00");        //   *    *        
asm(".byte 0x7E, 0x00");        //  ******         
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 67
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x78, 0x00");        //    ****         
asm(".byte 0xC4, 0x00");        //   *   **        
asm(".byte 0x02, 0x00");        //  *              
asm(".byte 0x02, 0x00");        //  *              
asm(".byte 0x02, 0x00");        //  *              
asm(".byte 0x02, 0x00");        //  *              
asm(".byte 0x02, 0x00");        //  *              
asm(".byte 0x02, 0x00");        //  *              
asm(".byte 0x84, 0x00");        //   *    *        
asm(".byte 0x78, 0x00");        //    ****         
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 68
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x3E, 0x00");        //  *****          
asm(".byte 0x44, 0x00");        //   *   *         
asm(".byte 0x84, 0x00");        //   *    *        
asm(".byte 0x84, 0x00");        //   *    *        
asm(".byte 0x84, 0x00");        //   *    *        
asm(".byte 0x84, 0x00");        //   *    *        
asm(".byte 0x84, 0x00");        //   *    *        
asm(".byte 0x84, 0x00");        //   *    *        
asm(".byte 0x44, 0x00");        //   *   *         
asm(".byte 0x3E, 0x00");        //  *****          
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 69
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x7E");        //  ****** 
asm(".byte 0x44");        //   *   * 
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x3C");        //   ****  
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x84");        //   *    *
asm(".byte 0x7E");        //  ****** 
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 70
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x7E");        //  ****** 
asm(".byte 0x44");        //   *   * 
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x3C");        //   ****  
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x0E");        //  ***    
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 71
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xF0, 0x00");        //     ****        
asm(".byte 0x4C, 0x00");        //   **  *         
asm(".byte 0x02, 0x00");        //  *              
asm(".byte 0x02, 0x00");        //  *              
asm(".byte 0x02, 0x00");        //  *              
asm(".byte 0xE2, 0x01");        //  *   ****       
asm(".byte 0x82, 0x00");        //  *     *        
asm(".byte 0x82, 0x00");        //  *     *        
asm(".byte 0x84, 0x00");        //   *    *        
asm(".byte 0x78, 0x00");        //    ****         
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 72
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xCE, 0x01");        //  ***  ***       
asm(".byte 0x84, 0x00");        //   *    *        
asm(".byte 0x84, 0x00");        //   *    *        
asm(".byte 0x84, 0x00");        //   *    *        
asm(".byte 0xFC, 0x00");        //   ******        
asm(".byte 0x84, 0x00");        //   *    *        
asm(".byte 0x84, 0x00");        //   *    *        
asm(".byte 0x84, 0x00");        //   *    *        
asm(".byte 0x84, 0x00");        //   *    *        
asm(".byte 0xCE, 0x01");        //  ***  ***       
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 73
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x0E");        //  ***    
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x0E");        //  ***    
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 74
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x1E");        //  ****   
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x04");        //   *     
asm(".byte 0x03");        // **      
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 75
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xEE, 0x01");        //  *** ****       
asm(".byte 0x44, 0x00");        //   *   *         
asm(".byte 0x24, 0x00");        //   *  *          
asm(".byte 0x14, 0x00");        //   * *           
asm(".byte 0x0C, 0x00");        //   **            
asm(".byte 0x1C, 0x00");        //   ***           
asm(".byte 0x34, 0x00");        //   * **          
asm(".byte 0x24, 0x00");        //   *  *          
asm(".byte 0x44, 0x00");        //   *   *         
asm(".byte 0x8E, 0x01");        //  ***   **       
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 76
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x0E");        //  ***    
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x84");        //   *    *
asm(".byte 0x7E");        //  ****** 
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 77
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x06, 0x0E");        //  **      ***    
asm(".byte 0x0C, 0x06");        //   **     **     
asm(".byte 0x0C, 0x06");        //   **     **     
asm(".byte 0x1C, 0x05");        //   ***   * *     
asm(".byte 0x14, 0x05");        //   * *   * *     
asm(".byte 0x94, 0x04");        //   * *  *  *     
asm(".byte 0xA4, 0x04");        //   *  * *  *     
asm(".byte 0x62, 0x04");        //  *   **   *     
asm(".byte 0x62, 0x04");        //  *   **   *     
asm(".byte 0x4F, 0x0E");        // ****  *  ***    
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 78
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xC6, 0x01");        //  **   ***       
asm(".byte 0x8C, 0x00");        //   **   *        
asm(".byte 0x8C, 0x00");        //   **   *        
asm(".byte 0x94, 0x00");        //   * *  *        
asm(".byte 0x94, 0x00");        //   * *  *        
asm(".byte 0xA4, 0x00");        //   *  * *        
asm(".byte 0xA4, 0x00");        //   *  * *        
asm(".byte 0xC4, 0x00");        //   *   **        
asm(".byte 0xC4, 0x00");        //   *   **        
asm(".byte 0x8E, 0x00");        //  ***   *        
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 79
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x78, 0x00");        //    ****         
asm(".byte 0x84, 0x00");        //   *    *        
asm(".byte 0x02, 0x01");        //  *      *       
asm(".byte 0x02, 0x01");        //  *      *       
asm(".byte 0x02, 0x01");        //  *      *       
asm(".byte 0x02, 0x01");        //  *      *       
asm(".byte 0x02, 0x01");        //  *      *       
asm(".byte 0x82, 0x00");        //  *     *        
asm(".byte 0x84, 0x00");        //   *    *        
asm(".byte 0x78, 0x00");        //    ****         
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 80
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x3E");        //  *****  
asm(".byte 0x44");        //   *   * 
asm(".byte 0x44");        //   *   * 
asm(".byte 0x44");        //   *   * 
asm(".byte 0x44");        //   *   * 
asm(".byte 0x3C");        //   ****  
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x0E");        //  ***    
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 81
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x78, 0x00");        //    ****         
asm(".byte 0x84, 0x00");        //   *    *        
asm(".byte 0x02, 0x01");        //  *      *       
asm(".byte 0x02, 0x01");        //  *      *       
asm(".byte 0x02, 0x01");        //  *      *       
asm(".byte 0x02, 0x01");        //  *      *       
asm(".byte 0x02, 0x01");        //  *      *       
asm(".byte 0x82, 0x00");        //  *     *        
asm(".byte 0x84, 0x00");        //   *    *        
asm(".byte 0x78, 0x00");        //    ****         
asm(".byte 0xC0, 0x02");        //       ** *      
asm(".byte 0x80, 0x03");        //        ***      
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 82
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x3E, 0x00");        //  *****          
asm(".byte 0x44, 0x00");        //   *   *         
asm(".byte 0x44, 0x00");        //   *   *         
asm(".byte 0x44, 0x00");        //   *   *         
asm(".byte 0x3C, 0x00");        //   ****          
asm(".byte 0x14, 0x00");        //   * *           
asm(".byte 0x24, 0x00");        //   *  *          
asm(".byte 0x24, 0x00");        //   *  *          
asm(".byte 0x44, 0x00");        //   *   *         
asm(".byte 0xCE, 0x01");        //  ***  ***       
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 83
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x3C");        //   ****  
asm(".byte 0x62");        //  *   ** 
asm(".byte 0x02");        //  *      
asm(".byte 0x06");        //  **     
asm(".byte 0x1C");        //   ***   
asm(".byte 0x20");        //      *  
asm(".byte 0x40");        //       * 
asm(".byte 0x42");        //  *    * 
asm(".byte 0x42");        //  *    * 
asm(".byte 0x3E");        //  *****  
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 84
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xFE, 0x01");        //  ********       
asm(".byte 0x91, 0x00");        // *   *  *        
asm(".byte 0x10, 0x00");        //     *           
asm(".byte 0x10, 0x00");        //     *           
asm(".byte 0x10, 0x00");        //     *           
asm(".byte 0x10, 0x00");        //     *           
asm(".byte 0x10, 0x00");        //     *           
asm(".byte 0x10, 0x00");        //     *           
asm(".byte 0x10, 0x00");        //     *           
asm(".byte 0x38, 0x00");        //    ***          
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 85
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xCE, 0x01");        //  ***  ***       
asm(".byte 0x84, 0x00");        //   *    *        
asm(".byte 0x84, 0x00");        //   *    *        
asm(".byte 0x84, 0x00");        //   *    *        
asm(".byte 0x84, 0x00");        //   *    *        
asm(".byte 0x84, 0x00");        //   *    *        
asm(".byte 0x84, 0x00");        //   *    *        
asm(".byte 0x84, 0x00");        //   *    *        
asm(".byte 0x4C, 0x00");        //   **  *         
asm(".byte 0x78, 0x00");        //    ****         
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 86
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x8F, 0x03");        // ****   ***      
asm(".byte 0x04, 0x01");        //   *     *       
asm(".byte 0x84, 0x00");        //   *    *        
asm(".byte 0x8C, 0x00");        //   **   *        
asm(".byte 0x88, 0x00");        //    *   *        
asm(".byte 0x48, 0x00");        //    *  *         
asm(".byte 0x58, 0x00");        //    ** *         
asm(".byte 0x50, 0x00");        //     * *         
asm(".byte 0x30, 0x00");        //     **          
asm(".byte 0x20, 0x00");        //      *          
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 87
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x4F, 0x1C");        // ****  *   ***   
asm(".byte 0x42, 0x08");        //  *    *    *    
asm(".byte 0xC6, 0x08");        //  **   **   *    
asm(".byte 0xA4, 0x08");        //   *  * *   *    
asm(".byte 0xA4, 0x05");        //   *  * ** *     
asm(".byte 0x24, 0x05");        //   *  *  * *     
asm(".byte 0x1C, 0x05");        //   ***   * *     
asm(".byte 0x18, 0x07");        //    **   ***     
asm(".byte 0x18, 0x02");        //    **    *      
asm(".byte 0x08, 0x02");        //    *     *      
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 88
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xCF, 0x01");        // ****  ***       
asm(".byte 0x86, 0x00");        //  **    *        
asm(".byte 0x4C, 0x00");        //   **  *         
asm(".byte 0x38, 0x00");        //    ***          
asm(".byte 0x30, 0x00");        //     **          
asm(".byte 0x30, 0x00");        //     **          
asm(".byte 0x68, 0x00");        //    * **         
asm(".byte 0xC4, 0x00");        //   *   **        
asm(".byte 0x84, 0x00");        //   *    *        
asm(".byte 0xCF, 0x03");        // ****  ****      
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 89
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xC3, 0x01");        // **    ***       
asm(".byte 0x44, 0x00");        //   *   *         
asm(".byte 0x4C, 0x00");        //   **  *         
asm(".byte 0x28, 0x00");        //    * *          
asm(".byte 0x38, 0x00");        //    ***          
asm(".byte 0x10, 0x00");        //     *           
asm(".byte 0x10, 0x00");        //     *           
asm(".byte 0x10, 0x00");        //     *           
asm(".byte 0x10, 0x00");        //     *           
asm(".byte 0x38, 0x00");        //    ***          
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 90
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0xFE");        //  *******
asm(".byte 0x42");        //  *    * 
asm(".byte 0x21");        // *    *  
asm(".byte 0x30");        //     **  
asm(".byte 0x10");        //     *   
asm(".byte 0x08");        //    *    
asm(".byte 0x0C");        //   **    
asm(".byte 0x84");        //   *    *
asm(".byte 0x82");        //  *     *
asm(".byte 0xFF");        // ********
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 91
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x0E");        //  ***    
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x0E");        //  ***    
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 92
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x03");        // **      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x10");        //     *   
asm(".byte 0x10");        //     *   
asm(".byte 0x30");        //     **  
asm(".byte 0x20");        //      *  
asm(".byte 0x20");        //      *  
asm(".byte 0x40");        //       * 
asm(".byte 0x40");        //       * 
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 93
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x0E");        //  ***    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x0E");        //  ***    
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 94
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x10");        //     *   
asm(".byte 0x18");        //    **   
asm(".byte 0x18");        //    **   
asm(".byte 0x34");        //   * **  
asm(".byte 0x24");        //   *  *  
asm(".byte 0x22");        //  *   *  
asm(".byte 0x62");        //  *   ** 
asm(".byte 0x42");        //  *    * 
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 95
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x7F");        // ******* 
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 96
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x03");        // **      
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 97
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x38");        //    ***  
asm(".byte 0x26");        //  **  *  
asm(".byte 0x20");        //      *  
asm(".byte 0x3C");        //   ****  
asm(".byte 0x22");        //  *   *  
asm(".byte 0x32");        //  *  **  
asm(".byte 0x6E");        //  *** ** 
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 98
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x03");        // **      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x3A");        //  * ***  
asm(".byte 0x66");        //  **  ** 
asm(".byte 0x42");        //  *    * 
asm(".byte 0x42");        //  *    * 
asm(".byte 0x42");        //  *    * 
asm(".byte 0x22");        //  *   *  
asm(".byte 0x1C");        //   ***   
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 99
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x38");        //    ***  
asm(".byte 0x26");        //  **  *  
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x66");        //  **  ** 
asm(".byte 0x1C");        //   ***   
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 100
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x60");        //      ** 
asm(".byte 0x40");        //       * 
asm(".byte 0x40");        //       * 
asm(".byte 0x40");        //       * 
asm(".byte 0x40");        //       * 
asm(".byte 0x78");        //    **** 
asm(".byte 0x46");        //  **   * 
asm(".byte 0x42");        //  *    * 
asm(".byte 0x42");        //  *    * 
asm(".byte 0x42");        //  *    * 
asm(".byte 0x66");        //  **  ** 
asm(".byte 0xDC");        //   *** **
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 101
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x3C");        //   ****  
asm(".byte 0x42");        //  *    * 
asm(".byte 0x7E");        //  ****** 
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x46");        //  **   * 
asm(".byte 0x3C");        //   ****  
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 102
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x30");        //     **  
asm(".byte 0x68");        //    * ** 
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x1E");        //  ****   
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x1E");        //  ****   
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 103
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x7E");        //  ****** 
asm(".byte 0x21");        // *    *  
asm(".byte 0x21");        // *    *  
asm(".byte 0x23");        // **   *  
asm(".byte 0x1E");        //  ****   
asm(".byte 0x02");        //  *      
asm(".byte 0x1E");        //  ****   
asm(".byte 0x61");        // *    ** 
asm(".byte 0x41");        // *     * 
asm(".byte 0x61");        // *    ** 
asm(".byte 0x1E");        //  ****   
asm(".byte 0x00");        //         

/***********************************
 * Character - 104
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0x04, 0x00");        //   *             
asm(".byte 0x04, 0x00");        //   *             
asm(".byte 0x04, 0x00");        //   *             
asm(".byte 0x04, 0x00");        //   *             
asm(".byte 0xE4, 0x00");        //   *  ***        
asm(".byte 0x9C, 0x00");        //   ***  *        
asm(".byte 0x84, 0x00");        //   *    *        
asm(".byte 0x84, 0x00");        //   *    *        
asm(".byte 0x84, 0x00");        //   *    *        
asm(".byte 0x84, 0x00");        //   *    *        
asm(".byte 0xCE, 0x01");        //  ***  ***       
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 105
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x06");        //  **     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x0E");        //  ***    
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 106
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x0C");        //   **    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x04");        //   *     
asm(".byte 0x03");        // **      
asm(".byte 0x00");        //         

/***********************************
 * Character - 107
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x06");        //  **     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0xE4");        //   *  ***
asm(".byte 0x24");        //   *  *  
asm(".byte 0x1C");        //   ***   
asm(".byte 0x14");        //   * *   
asm(".byte 0x34");        //   * **  
asm(".byte 0x64");        //   *  ** 
asm(".byte 0xCE");        //  ***  **
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 108
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x06");        //  **     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x0E");        //  ***    
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 109
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x76, 0x07");        //  ** *** ***     
asm(".byte 0xCC, 0x04");        //   **  **  *     
asm(".byte 0x44, 0x04");        //   *   *   *     
asm(".byte 0x44, 0x04");        //   *   *   *     
asm(".byte 0x44, 0x04");        //   *   *   *     
asm(".byte 0x44, 0x04");        //   *   *   *     
asm(".byte 0xEE, 0x0E");        //  *** *** ***    
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 110
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xE4, 0x00");        //   *  ***        
asm(".byte 0x9E, 0x00");        //  ****  *        
asm(".byte 0x84, 0x00");        //   *    *        
asm(".byte 0x84, 0x00");        //   *    *        
asm(".byte 0x84, 0x00");        //   *    *        
asm(".byte 0x84, 0x00");        //   *    *        
asm(".byte 0xCE, 0x01");        //  ***  ***       
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 111
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x38");        //    ***  
asm(".byte 0x66");        //  **  ** 
asm(".byte 0x42");        //  *    * 
asm(".byte 0x42");        //  *    * 
asm(".byte 0x42");        //  *    * 
asm(".byte 0x26");        //  **  *  
asm(".byte 0x1C");        //   ***   
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 112
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x36");        //  ** **  
asm(".byte 0x4C");        //   **  * 
asm(".byte 0x44");        //   *   * 
asm(".byte 0x44");        //   *   * 
asm(".byte 0x44");        //   *   * 
asm(".byte 0x24");        //   *  *  
asm(".byte 0x3C");        //   ****  
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x0E");        //  ***    
asm(".byte 0x00");        //         

/***********************************
 * Character - 113
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x78");        //    **** 
asm(".byte 0x44");        //   *   * 
asm(".byte 0x42");        //  *    * 
asm(".byte 0x42");        //  *    * 
asm(".byte 0x42");        //  *    * 
asm(".byte 0x66");        //  **  ** 
asm(".byte 0x5C");        //   *** * 
asm(".byte 0x40");        //       * 
asm(".byte 0x40");        //       * 
asm(".byte 0x40");        //       * 
asm(".byte 0xE0");        //      ***
asm(".byte 0x00");        //         

/***********************************
 * Character - 114
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x36");        //  ** **  
asm(".byte 0x2C");        //   ** *  
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x0E");        //  ***    
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 115
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x0C");        //   **    
asm(".byte 0x12");        //  *  *   
asm(".byte 0x02");        //  *      
asm(".byte 0x0C");        //   **    
asm(".byte 0x12");        //  *  *   
asm(".byte 0x12");        //  *  *   
asm(".byte 0x0E");        //  ***    
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 116
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x1F");        // *****   
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x1E");        //  ****   
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 117
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x63");        // **   ** 
asm(".byte 0x42");        //  *    * 
asm(".byte 0x42");        //  *    * 
asm(".byte 0x42");        //  *    * 
asm(".byte 0x42");        //  *    * 
asm(".byte 0x62");        //  *   ** 
asm(".byte 0xDC");        //   *** **
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 118
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0xE7");        // ***  ***
asm(".byte 0x46");        //  **   * 
asm(".byte 0x24");        //   *  *  
asm(".byte 0x24");        //   *  *  
asm(".byte 0x18");        //    **   
asm(".byte 0x18");        //    **   
asm(".byte 0x18");        //    **   
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 119
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x27, 0x06");        // ***  *   **     
asm(".byte 0x62, 0x02");        //  *   **  *      
asm(".byte 0x64, 0x02");        //   *  **  *      
asm(".byte 0x54, 0x02");        //   * * *  *      
asm(".byte 0x94, 0x01");        //   * *  **       
asm(".byte 0x8C, 0x01");        //   **   **       
asm(".byte 0x88, 0x01");        //    *   **       
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 120
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0xEF");        // **** ***
asm(".byte 0x24");        //   *  *  
asm(".byte 0x18");        //    **   
asm(".byte 0x18");        //    **   
asm(".byte 0x34");        //   * **  
asm(".byte 0x62");        //  *   ** 
asm(".byte 0xE7");        // ***  ***
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 121
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0xE7");        // ***  ***
asm(".byte 0x46");        //  **   * 
asm(".byte 0x24");        //   *  *  
asm(".byte 0x24");        //   *  *  
asm(".byte 0x2C");        //   ** *  
asm(".byte 0x18");        //    **   
asm(".byte 0x18");        //    **   
asm(".byte 0x08");        //    *    
asm(".byte 0x08");        //    *    
asm(".byte 0x04");        //   *     
asm(".byte 0x03");        // **      
asm(".byte 0x00");        //         

/***********************************
 * Character - 122
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x3E");        //  *****  
asm(".byte 0x22");        //  *   *  
asm(".byte 0x10");        //     *   
asm(".byte 0x08");        //    *    
asm(".byte 0x04");        //   *     
asm(".byte 0x22");        //  *   *  
asm(".byte 0x3E");        //  *****  
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 123
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x08");        //    *    
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x03");        // **      
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x08");        //    *    
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 124
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 125
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x01");        // *       
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x0C");        //   **    
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x01");        // *       
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 126
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x4C");        //   **  * 
asm(".byte 0x33");        // **  **  
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

asm(".section .const, psv, page");
/*****************************************************************************
 * SECTION:  BITMAPS
 *****************************************************************************/

/*********************************
 * Bitmap Structure
 * Label: Engine1
 * Description:  73x55 pixels, 4-bits per pixel
 ***********************************/
#if defined (__C30__) && (__C30_VERSION__ <= 325)
asm(".section .const, psv");
#else
asm(".section .const, psv, page");
#endif


extern const char __Engine1[] __attribute__((space(prog), aligned(2)));

const IMAGE_FLASH Engine1 =
{
    (FLASH | IMAGE_MBITMAP | COMP_NONE),
    (FLASH_BYTE *)__Engine1
};
asm(".section .text, code");
asm(".global ___Engine1");
asm(".align 2");
asm("___Engine1:");
/****************************************
 * Bitmap header
 ****************************************/
asm(".byte 0x00");           // Compresssion
asm(".byte 0x04");           // Color Depth
asm(".byte 0x37, 0x00");     // Height
asm(".byte 0x49, 0x00");     // Width
/***********************************
 * Color Palette for the image
 **********************************/
asm(".byte 0x21, 0x40");
asm(".byte 0x41, 0xAB");
asm(".byte 0xC2, 0xC3");
asm(".byte 0xC9, 0xD4");
asm(".byte 0xB1, 0xD5");
asm(".byte 0x80, 0x51");
asm(".byte 0x80, 0x18");
asm(".byte 0x61, 0x7A");
asm(".byte 0xC2, 0x92");
asm(".byte 0x0B, 0x9C");
asm(".byte 0xE0, 0x30");
asm(".byte 0xE1, 0x61");
asm(".byte 0xA6, 0xA3");
asm(".byte 0x21, 0x59");
asm(".byte 0xFF, 0xFF");
asm(".byte 0x00, 0x00");
/********************************
 * Bitmap Image Body
 *********************************/
asm(".byte 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44");
asm(".byte 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44");
asm(".byte 0x44, 0x44, 0x44, 0x44, 0xF4, 0x33, 0x33, 0x23, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22");
asm(".byte 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22");
asm(".byte 0x22, 0x22, 0x22, 0x22, 0x22, 0x32, 0x33, 0x33, 0x33, 0xF3, 0x22, 0x81, 0xB7, 0xBB, 0x55, 0x55");
asm(".byte 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55");
asm(".byte 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0xB5, 0x7B, 0x18, 0x22, 0x22, 0xA2, 0x11");
asm(".byte 0xB8, 0xA5, 0x6A, 0x66, 0x6A, 0x6A, 0x6A, 0x6A, 0x6A, 0x6A, 0x6A, 0x6A, 0x6A, 0x6A, 0x6A, 0x6A");
asm(".byte 0x6A, 0x6A, 0x6A, 0x6A, 0x6A, 0x6A, 0x6A, 0x6A, 0x6A, 0x6A, 0x6A, 0x6A, 0x6A, 0x6A, 0x6A, 0xAA");
asm(".byte 0x7B, 0x18, 0x22, 0xF2, 0x81, 0x57, 0x55, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB");
asm(".byte 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB");
asm(".byte 0xBB, 0xBB, 0xBB, 0xBB, 0xAB, 0xBA, 0x18, 0x21, 0xF1, 0x81, 0xBB, 0xAB, 0xAA, 0xAD, 0x5A, 0xB5");
asm(".byte 0x7C, 0x78, 0x5B, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0x55, 0xC7, 0xC8, 0x57, 0xA5, 0xAA, 0xAA, 0xAA");
asm(".byte 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0x7A, 0x55, 0x17, 0x21, 0xF2, 0x81, 0x77");
asm(".byte 0x06, 0x00, 0x66, 0x60, 0x7B, 0x98, 0xBC, 0xAA, 0xAA, 0xAA, 0x6A, 0x66, 0x66, 0x66, 0xCA, 0x99");
asm(".byte 0x78, 0x00, 0x60, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x60, 0x5B");
asm(".byte 0x87, 0x11, 0xF1, 0x81, 0xD1, 0x06, 0x00, 0xDD, 0x00, 0x22, 0x22, 0xB8, 0xB5, 0x5B, 0x55, 0xAA");
asm(".byte 0xAA, 0x66, 0x66, 0xBA, 0x3C, 0x33, 0x07, 0xBD, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00");
asm(".byte 0x00, 0x00, 0x00, 0x60, 0xBB, 0x87, 0x11, 0xF2, 0x11, 0xD1, 0x00, 0x00, 0x41, 0x34, 0x23, 0x23");
asm(".byte 0x57, 0xB7, 0xBB, 0x55, 0x55, 0xAA, 0x66, 0x66, 0x56, 0x38, 0x33, 0x44, 0x34, 0x0D, 0x00, 0x00");
asm(".byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x60, 0x7D, 0x87, 0x21, 0xF1, 0x11, 0xD2, 0x00");
asm(".byte 0x00, 0xB7, 0x98, 0x33, 0x12, 0x77, 0x77, 0x57, 0x87, 0x11, 0xB1, 0xAA, 0x66, 0x66, 0x37, 0x43");
asm(".byte 0x83, 0xB7, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x7B, 0x87");
asm(".byte 0x11, 0xF1, 0x11, 0x52, 0x00, 0x00, 0xD0, 0x75, 0x21, 0x12, 0x8B, 0x78, 0x8B, 0x22, 0x22, 0x22");
asm(".byte 0xA8, 0x6A, 0x66, 0x15, 0x23, 0x71, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00");
asm(".byte 0x00, 0x00, 0x00, 0x7B, 0x88, 0x11, 0x91, 0x11, 0xD1, 0x00, 0x00, 0x00, 0x2B, 0x22, 0x82, 0x88");
asm(".byte 0x78, 0x28, 0x22, 0x22, 0x22, 0x82, 0xAA, 0x66, 0x1A, 0x23, 0x83, 0x00, 0x00, 0x00, 0x00, 0x00");
asm(".byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x60, 0x8B, 0x87, 0x11, 0xF1, 0x11, 0xD2, 0x00, 0x00");
asm(".byte 0xDD, 0x28, 0x22, 0x72, 0x81, 0x88, 0x21, 0x22, 0xB7, 0x21, 0x22, 0x65, 0x6A, 0x8A, 0x32, 0x23");
asm(".byte 0xD7, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x7D, 0x87, 0x11");
asm(".byte 0xF1, 0x11, 0xD1, 0x00, 0x80, 0x43, 0x34, 0x22, 0x82, 0x11, 0x88, 0x22, 0x82, 0x66, 0x25, 0x22");
asm(".byte 0xA7, 0x66, 0x8A, 0x32, 0x43, 0x44, 0xDC, 0x00, 0x00, 0x00, 0x00, 0x7D, 0x0D, 0x00, 0x00, 0x00");
asm(".byte 0x00, 0x60, 0x8B, 0x87, 0x11, 0x91, 0x11, 0xD2, 0x00, 0x70, 0xB7, 0x7B, 0x18, 0x82, 0x11, 0x11");
asm(".byte 0x22, 0x72, 0x66, 0x25, 0x22, 0xA8, 0x6A, 0x1A, 0x22, 0x71, 0xBB, 0x08, 0x00, 0xD0, 0xDC, 0x00");
asm(".byte 0x3B, 0x0C, 0x00, 0x8C, 0x00, 0x00, 0x00, 0x7B, 0x87, 0x11, 0xF1, 0x11, 0x51, 0x00, 0x00, 0xD0");
asm(".byte 0x8B, 0x88, 0x12, 0x11, 0x11, 0x22, 0x22, 0xB7, 0x21, 0x22, 0xA7, 0xAA, 0x2A, 0x22, 0x82, 0xD0");
asm(".byte 0x00, 0x00, 0x80, 0x13, 0x00, 0x37, 0x01, 0xB0, 0xC3, 0x00, 0x00, 0x00, 0x7B, 0x87, 0x18, 0xF1");
asm(".byte 0x11, 0xD1, 0x00, 0x00, 0x00, 0x1D, 0x18, 0xC2, 0x11, 0x11, 0x21, 0x22, 0x22, 0x22, 0x22, 0x55");
asm(".byte 0xAA, 0x25, 0x22, 0x82, 0x00, 0xD0, 0x0D, 0xB0, 0x22, 0x0B, 0x2C, 0xB2, 0x30, 0x73, 0x00, 0xB0");
asm(".byte 0x60, 0x7D, 0x87, 0x11, 0xF1, 0x81, 0xD1, 0x00, 0x00, 0xD0, 0x3C, 0x11, 0x31, 0x21, 0x11, 0x21");
asm(".byte 0x22, 0x22, 0x22, 0x72, 0x55, 0xA5, 0x28, 0x22, 0x33, 0x07, 0x3D, 0x03, 0xD0, 0x22, 0x43, 0x34");
asm(".byte 0x43, 0x34, 0x72, 0x00, 0x4C, 0x08, 0x7B, 0x87, 0x18, 0xF8, 0x11, 0xD1, 0x00, 0x00, 0x3C, 0xC3");
asm(".byte 0xBB, 0x37, 0x21, 0x11, 0x11, 0x22, 0x22, 0x22, 0xB8, 0x55, 0x5A, 0x22, 0x78, 0x37, 0x34, 0x1B");
asm(".byte 0xC3, 0x37, 0x34, 0x44, 0x44, 0x44, 0x44, 0x32, 0x8C, 0x14, 0x0D, 0x7B, 0x87, 0x88, 0xF1, 0x81");
asm(".byte 0xD1, 0x00, 0x00, 0x77, 0x55, 0x7B, 0xC7, 0x13, 0x12, 0x11, 0x18, 0x11, 0x71, 0xBB, 0x5B, 0x85");
asm(".byte 0x13, 0x18, 0xAB, 0x85, 0xBD, 0x31, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x43, 0x44, 0xBC, 0x60");
asm(".byte 0x7B, 0x77, 0x18, 0xF1, 0x88, 0xD1, 0x00, 0x00, 0xDD, 0xD0, 0x77, 0x87, 0xC3, 0x21, 0x11, 0x11");
asm(".byte 0x88, 0x77, 0x77, 0x5B, 0x38, 0x11, 0x81, 0x7B, 0xD8, 0xD0, 0x33, 0x44, 0x44, 0x34, 0xC3, 0x31");
asm(".byte 0x33, 0x34, 0x34, 0x82, 0x00, 0x7B, 0x77, 0x88, 0xF8, 0x81, 0xD1, 0x00, 0x00, 0x00, 0x00, 0x18");
asm(".byte 0x58, 0x37, 0x13, 0x12, 0x11, 0x88, 0x78, 0x77, 0x8B, 0x13, 0x8B, 0x32, 0xCD, 0x34, 0x37, 0x34");
asm(".byte 0x44, 0x83, 0x5B, 0xAA, 0x55, 0x7B, 0x42, 0x33, 0x33, 0x78, 0xBC, 0x77, 0x18, 0xF8, 0x88, 0x51");
asm(".byte 0x00, 0x00, 0x00, 0x80, 0x13, 0x55, 0x75, 0x33, 0x11, 0x11, 0x11, 0x88, 0x77, 0x3C, 0x7C, 0xB7");
asm(".byte 0x37, 0x73, 0x37, 0x44, 0x44, 0xC3, 0xAB, 0x66, 0x66, 0x66, 0xA6, 0x8B, 0x32, 0x33, 0x94, 0x77");
asm(".byte 0x77, 0x88, 0xF8, 0x88, 0xD1, 0x00, 0x00, 0x00, 0x37, 0xB8, 0xBB, 0xBB, 0x9B, 0x34, 0xCC, 0x81");
asm(".byte 0xC1, 0x33, 0x83, 0x77, 0x77, 0x55, 0xC3, 0x8B, 0x43, 0x44, 0x58, 0x66, 0x66, 0x66, 0x66, 0x66");
asm(".byte 0x56, 0x28, 0x33, 0xB3, 0x77, 0x7B, 0x88, 0xF8, 0x88, 0xD1, 0x00, 0x00, 0x00, 0xBD, 0xDD, 0xBD");
asm(".byte 0xB7, 0x55, 0x9B, 0x43, 0x44, 0x33, 0x89, 0x5B, 0x1B, 0xB8, 0xD0, 0xD5, 0x3D, 0x33, 0x13, 0x65");
asm(".byte 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x8A, 0x33, 0x81, 0xB8, 0x7B, 0x88, 0xF8, 0x88, 0xD1, 0x00");
asm(".byte 0x00, 0x00, 0xD0, 0x00, 0x10, 0x52, 0x55, 0x55, 0x5A, 0x7B, 0x5B, 0xB5, 0xB5, 0x85, 0xD3, 0xCD");
asm(".byte 0xC9, 0x3C, 0x33, 0xBC, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x56, 0x21, 0x12, 0x78, 0x7B");
asm(".byte 0x88, 0xF8, 0x78, 0x51, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3B, 0xB8, 0x55, 0x5B, 0x55, 0x5A, 0x55");
asm(".byte 0x75, 0xBB, 0xBB, 0xC3, 0xCB, 0x43, 0x44, 0x34, 0xA7, 0x66, 0x66, 0xA6, 0xBB, 0x5B, 0x6A, 0xAA");
asm(".byte 0x6A, 0x27, 0x12, 0xB1, 0x7B, 0x87, 0xF8, 0x78, 0xD1, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0xDB");
asm(".byte 0x70, 0xB1, 0xA5, 0xB5, 0x55, 0x85, 0xD2, 0xD0, 0xC7, 0xDB, 0x7B, 0x32, 0x23, 0x6B, 0xA6, 0xAA");
asm(".byte 0x27, 0x22, 0x22, 0x58, 0xAA, 0xAA, 0x2A, 0x82, 0xB8, 0x7B, 0x87, 0xF8, 0x88, 0xD8, 0x00, 0x00");
asm(".byte 0x00, 0x00, 0x00, 0xBD, 0xBB, 0x10, 0x82, 0xDA, 0x18, 0x57, 0x8B, 0xD3, 0x00, 0xBD, 0x00, 0x80");
asm(".byte 0x23, 0x13, 0xA5, 0xAA, 0x7A, 0x22, 0x22, 0x22, 0x12, 0x55, 0x55, 0x8A, 0x72, 0xB8, 0x7B, 0x87");
asm(".byte 0xF7, 0x78, 0xD1, 0x00, 0x00, 0x00, 0x70, 0x08, 0x00, 0x48, 0x18, 0x71, 0xBC, 0x28, 0x07, 0x70");
asm(".byte 0x72, 0x00, 0x00, 0x00, 0x20, 0x33, 0x82, 0xA5, 0xA5, 0x2B, 0x22, 0x12, 0x22, 0x22, 0x57, 0x55");
asm(".byte 0x75, 0x72, 0xB8, 0x7B, 0x77, 0xA8, 0x78, 0xD8, 0x00, 0x00, 0x00, 0x80, 0xB4, 0x00, 0x37, 0xBC");
asm(".byte 0x87, 0xC3, 0x27, 0x0D, 0xB0, 0x77, 0x00, 0x00, 0x98, 0x43, 0x33, 0x73, 0x55, 0x55, 0x28, 0x22");
asm(".byte 0x67, 0x1A, 0x22, 0xB1, 0xBB, 0xB5, 0x82, 0xB8, 0x7B, 0x77, 0xF7, 0x77, 0xD8, 0x00, 0xD0, 0x00");
asm(".byte 0xB0, 0x33, 0xD0, 0x38, 0x0C, 0x1B, 0x83, 0x7D, 0xDB, 0x00, 0x00, 0x00, 0xD0, 0x33, 0xC9, 0x23");
asm(".byte 0x82, 0x55, 0x55, 0x21, 0x22, 0x6A, 0x86, 0x22, 0x72, 0x7B, 0x7B, 0x72, 0xB7, 0xBB, 0x87, 0xF7");
asm(".byte 0x78, 0xD8, 0x00, 0x37, 0x0C, 0xB0, 0x4C, 0x33, 0x32, 0x44, 0x23, 0xD3, 0x00, 0x31, 0x0B, 0x00");
asm(".byte 0x00, 0x00, 0x5D, 0x75, 0x21, 0x12, 0xBB, 0xBB, 0x21, 0x22, 0x67, 0x1A, 0x22, 0x72, 0x77, 0x77");
asm(".byte 0xB2, 0xB7, 0xBB, 0x77, 0xF7, 0x77, 0xD8, 0x00, 0xCB, 0xC4, 0x27, 0x41, 0x44, 0x43, 0x44, 0x34");
asm(".byte 0x34, 0x17, 0x22, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x10, 0x22, 0x22, 0x7B, 0x77, 0x28, 0x22, 0x12");
asm(".byte 0x22, 0x22, 0x81, 0x88, 0x87, 0xB3, 0xB7, 0xBB, 0x77, 0xF7, 0x77, 0xD8, 0x06, 0xB0, 0x4C, 0x33");
asm(".byte 0x32, 0x43, 0x43, 0x44, 0x44, 0x44, 0x24, 0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x22, 0x22");
asm(".byte 0x78, 0x77, 0x18, 0x22, 0x22, 0x22, 0x22, 0x81, 0x88, 0xC8, 0xB2, 0xB8, 0xBB, 0x77, 0xF7, 0x77");
asm(".byte 0x78, 0x00, 0x70, 0x38, 0x33, 0x33, 0x33, 0xC2, 0x33, 0x43, 0x44, 0x44, 0xB3, 0x00, 0x77, 0x00");
asm(".byte 0x00, 0x70, 0x43, 0x23, 0x21, 0x71, 0x88, 0x18, 0x22, 0x22, 0x22, 0x12, 0x11, 0x11, 0x38, 0x58");
asm(".byte 0xB7, 0xB5, 0x77, 0xF7, 0x77, 0x17, 0x99, 0x27, 0x22, 0x33, 0x12, 0x78, 0x5B, 0xB5, 0xC7, 0x44");
asm(".byte 0x44, 0x44, 0xC7, 0x33, 0x0D, 0x00, 0x3B, 0x79, 0x87, 0x11, 0x82, 0x11, 0x18, 0x11, 0x22, 0x12");
asm(".byte 0x11, 0x11, 0x11, 0x3C, 0x5B, 0xB7, 0xB5, 0x77, 0xF7, 0xB7, 0x78, 0x47, 0x23, 0x22, 0x22, 0x58");
asm(".byte 0x6A, 0x66, 0x66, 0x5A, 0xCB, 0x44, 0x44, 0x24, 0x72, 0x00, 0x00, 0x7D, 0xDD, 0x17, 0x11, 0x22");
asm(".byte 0x18, 0x11, 0x11, 0x11, 0x21, 0x21, 0x21, 0x11, 0x84, 0x5B, 0x57, 0xB5, 0x7B, 0xA7, 0x77, 0xB7");
asm(".byte 0x75, 0x33, 0x22, 0xB1, 0xAA, 0xAA, 0xAA, 0x66, 0x66, 0x5A, 0x41, 0x44, 0x23, 0x07, 0x00, 0x00");
asm(".byte 0x00, 0x00, 0x1D, 0x22, 0x38, 0x12, 0x21, 0x21, 0x22, 0x22, 0x22, 0x22, 0x41, 0xB1, 0xB8, 0xB7");
asm(".byte 0xB5, 0xB7, 0xF7, 0xB7, 0xD7, 0x1B, 0x28, 0x22, 0xAB, 0x55, 0xA5, 0xAA, 0xAA, 0x66, 0x66, 0x85");
asm(".byte 0x44, 0x44, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x48, 0x7C, 0x87, 0x33, 0x21, 0x22, 0x22, 0x22, 0x22");
asm(".byte 0xC2, 0xC4, 0x55, 0x8B, 0x51, 0xB5, 0xBB, 0xF7, 0xB7, 0x78, 0x18, 0x11, 0x72, 0xB5, 0x55, 0x55");
asm(".byte 0xAA, 0x6A, 0x6A, 0x66, 0x56, 0x4C, 0x44, 0x73, 0x3C, 0x0D, 0x00, 0x80, 0xC4, 0x75, 0x78, 0x38");
asm(".byte 0xC3, 0x22, 0x22, 0x22, 0x22, 0x43, 0x5C, 0xBB, 0x55, 0x58, 0xB5, 0x7B, 0xFB, 0xB7, 0xC7, 0x1C");
asm(".byte 0x21, 0x51, 0xBB, 0x5B, 0x55, 0x7B, 0xAB, 0x6A, 0x66, 0xA6, 0x37, 0x44, 0x34, 0x33, 0x07, 0x00");
asm(".byte 0xC0, 0x58, 0x7D, 0x17, 0x57, 0x38, 0x34, 0x33, 0x33, 0x44, 0xBC, 0xB5, 0xBB, 0xAB, 0x57, 0xB5");
asm(".byte 0xBB, 0xF7, 0xB7, 0x77, 0x27, 0x22, 0xB7, 0x77, 0xBB, 0x28, 0x22, 0x12, 0xAB, 0x6A, 0x66, 0xC5");
asm(".byte 0x44, 0x13, 0xB8, 0x00, 0x00, 0xD0, 0x0D, 0xD0, 0x22, 0x75, 0x7B, 0xC7, 0x3C, 0xC9, 0xB7, 0x55");
asm(".byte 0xB5, 0x71, 0x00, 0xBB, 0xB5, 0xBB, 0x9B, 0xBB, 0x77, 0x77, 0x22, 0x8B, 0x77, 0x1B, 0x22, 0x22");
asm(".byte 0x22, 0x72, 0xA6, 0x66, 0x8A, 0x33, 0xC3, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x73, 0x7B, 0x7B");
asm(".byte 0x55, 0x55, 0x55, 0xB5, 0x55, 0xB5, 0x22, 0x6D, 0x5B, 0x55, 0xBB, 0xFB, 0x77, 0x78, 0x87, 0xC2");
asm(".byte 0x87, 0x77, 0x28, 0x22, 0x12, 0x22, 0x22, 0xA5, 0x6A, 0x76, 0x43, 0x34, 0x0D, 0x00, 0x00, 0x00");
asm(".byte 0x00, 0x3D, 0x5C, 0xBD, 0x88, 0x55, 0xB5, 0x55, 0xB5, 0xB7, 0xBD, 0x28, 0x08, 0xBD, 0xB5, 0xBB");
asm(".byte 0xFB, 0x77, 0x88, 0x87, 0x13, 0x88, 0x78, 0x22, 0x22, 0x65, 0x2B, 0x22, 0xA7, 0xAA, 0xB6, 0x43");
asm(".byte 0x44, 0x93, 0xD8, 0x00, 0x00, 0x00, 0x8D, 0xDB, 0xD0, 0x83, 0xBB, 0x1B, 0x5B, 0x85, 0x82, 0x00");
asm(".byte 0x7B, 0x0B, 0xBB, 0xB5, 0xBB, 0x9B, 0x9B, 0x8C, 0x77, 0xC3, 0x88, 0x88, 0x21, 0x82, 0x66, 0x2A");
asm(".byte 0x22, 0xA8, 0xAA, 0xBA, 0x32, 0x33, 0x33, 0xD3, 0x00, 0x00, 0x00, 0x00, 0x0D, 0xB0, 0x72, 0x0D");
asm(".byte 0x28, 0xD8, 0x70, 0x12, 0x00, 0xD0, 0x60, 0xBB, 0xBB, 0xBB, 0xFB, 0xC7, 0xC9, 0x5B, 0x8C, 0x77");
asm(".byte 0x77, 0x11, 0x81, 0x66, 0x15, 0x11, 0xA7, 0x6A, 0xB6, 0x21, 0x82, 0x55, 0x0D, 0x00, 0x00, 0x00");
asm(".byte 0x00, 0x60, 0xB0, 0x58, 0x60, 0x1D, 0x07, 0x00, 0x77, 0x00, 0x60, 0x00, 0x7C, 0xBB, 0xBB, 0x9B");
asm(".byte 0x97, 0x49, 0xC3, 0x33, 0x3C, 0xCC, 0x32, 0x3C, 0xC2, 0x3C, 0x32, 0xCC, 0xCC, 0xCC, 0x33, 0x33");
asm(".byte 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC");
asm(".byte 0xCC, 0xC9, 0xB7, 0xBB, 0x9B, 0x7B, 0x99, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44");
asm(".byte 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44");
asm(".byte 0x44, 0x44, 0x44, 0x44, 0x44, 0x94, 0x79, 0xB7, 0x5B, 0xFB, 0xBB, 0x99, 0x99, 0x44, 0x44, 0x44");
asm(".byte 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44");
asm(".byte 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x99, 0x99, 0xBB, 0xB5, 0xFB, 0xBB");
asm(".byte 0xBB, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99");
asm(".byte 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99");
asm(".byte 0x5B, 0xB5, 0xBB, 0xF5, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55");
asm(".byte 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55");
asm(".byte 0x55, 0x55, 0x55, 0xA5, 0xA5, 0x55, 0x55, 0x55, 0xF5, 0xAA, 0xAA, 0x6A, 0xAA, 0xAA, 0xAA, 0xAA");
asm(".byte 0xAA, 0xAA, 0xA6, 0x6A, 0xAA, 0xA6, 0x6A, 0xAA, 0xA6, 0x6A, 0xAA, 0xA6, 0x6A, 0xAA, 0xA6, 0xAA");
asm(".byte 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0x6A, 0x6A, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xFA, 0x66, 0x66");
asm(".byte 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66");
asm(".byte 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66");
asm(".byte 0x66, 0x66, 0xF6");
#if defined (__C30__) && (__C30_VERSION__ <= 325)
asm(".section .const, psv");
#else
asm(".section .const, psv, page");
#endif

/*********************************
 * Bitmap Structure
 * Label: Engine2
 * Description:  73x55 pixels, 4-bits per pixel
 ***********************************/
#if defined (__C30__) && (__C30_VERSION__ <= 325)
asm(".section .const, psv");
#else
asm(".section .const, psv, page");
#endif


extern const char __Engine2[] __attribute__((space(prog), aligned(2)));

const IMAGE_FLASH Engine2 =
{
    (FLASH | IMAGE_MBITMAP | COMP_NONE),
    (FLASH_BYTE *)__Engine2
};
asm(".section .text, code");
asm(".global ___Engine2");
asm(".align 2");
asm("___Engine2:");
/****************************************
 * Bitmap header
 ****************************************/
asm(".byte 0x00");           // Compresssion
asm(".byte 0x04");           // Color Depth
asm(".byte 0x37, 0x00");     // Height
asm(".byte 0x49, 0x00");     // Width
/***********************************
 * Color Palette for the image
 **********************************/
asm(".byte 0x21, 0x40");
asm(".byte 0x41, 0xAB");
asm(".byte 0xC2, 0xC3");
asm(".byte 0xE9, 0xD4");
asm(".byte 0xB1, 0xD5");
asm(".byte 0x80, 0x51");
asm(".byte 0x80, 0x18");
asm(".byte 0xE1, 0x61");
asm(".byte 0x61, 0x7A");
asm(".byte 0xC2, 0x92");
asm(".byte 0x0B, 0x9C");
asm(".byte 0xE0, 0x30");
asm(".byte 0xA6, 0xAB");
asm(".byte 0x21, 0x59");
asm(".byte 0xFF, 0xFF");
asm(".byte 0x00, 0x00");
/********************************
 * Bitmap Image Body
 *********************************/
asm(".byte 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44");
asm(".byte 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44");
asm(".byte 0x44, 0x44, 0x44, 0x44, 0x04, 0x33, 0x33, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22");
asm(".byte 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22");
asm(".byte 0x22, 0x22, 0x22, 0x22, 0x22, 0x32, 0x33, 0x33, 0x33, 0x03, 0x22, 0x91, 0x88, 0x57, 0x55, 0x55");
asm(".byte 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55");
asm(".byte 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x75, 0x87, 0x19, 0x22, 0x22, 0x02, 0x11");
asm(".byte 0x79, 0xB5, 0xB6, 0xB6, 0xB6, 0xB6, 0x66, 0x6B, 0xB6, 0xB6, 0xB6, 0xB6, 0xB6, 0xB6, 0xB6, 0x66");
asm(".byte 0x6B, 0xB6, 0x66, 0x6B, 0x6B, 0x6B, 0x6B, 0x6B, 0x6B, 0x6B, 0x6B, 0x6B, 0x6B, 0x6B, 0x6B, 0xBB");
asm(".byte 0x87, 0x19, 0x21, 0x02, 0x91, 0x58, 0x55, 0x77, 0x77, 0x77, 0x57, 0x77, 0x77, 0x77, 0x77, 0x77");
asm(".byte 0x77, 0x77, 0x77, 0x77, 0x77, 0x77, 0x77, 0x77, 0x77, 0x77, 0x77, 0x77, 0x77, 0x77, 0x77, 0x77");
asm(".byte 0x77, 0x77, 0x77, 0x77, 0xB7, 0x7B, 0x19, 0x12, 0x01, 0x91, 0x77, 0xB7, 0xBB, 0x0B, 0x0B, 0x75");
asm(".byte 0x98, 0x99, 0x57, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0x55, 0x98, 0x99, 0x9C, 0x78, 0xB5, 0xBB, 0xBB");
asm(".byte 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0x7B, 0x55, 0x18, 0x21, 0x02, 0x91, 0x88");
asm(".byte 0x06, 0x00, 0x80, 0x0D, 0xC7, 0x99, 0x7C, 0xBB, 0xBB, 0xBB, 0x6B, 0x66, 0x66, 0x66, 0xCB, 0xAA");
asm(".byte 0x8A, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x60, 0x57");
asm(".byte 0x98, 0x11, 0x01, 0x91, 0xD1, 0x06, 0x00, 0xC7, 0x44, 0x23, 0x32, 0x79, 0x75, 0x57, 0x55, 0xBB");
asm(".byte 0xBB, 0x66, 0x66, 0x7B, 0x33, 0xC2, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00");
asm(".byte 0x00, 0x00, 0x00, 0x60, 0x77, 0x98, 0x11, 0x02, 0x11, 0xD1, 0x00, 0x00, 0x5D, 0x97, 0x33, 0x23");
asm(".byte 0x58, 0x78, 0x77, 0x55, 0x55, 0xBB, 0x66, 0x66, 0x56, 0x39, 0x33, 0x0C, 0xD0, 0x00, 0x00, 0x00");
asm(".byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x8D, 0x98, 0x11, 0x01, 0x11, 0x71, 0x00");
asm(".byte 0x00, 0x00, 0x8D, 0x29, 0x12, 0x87, 0x88, 0x58, 0x98, 0x11, 0x71, 0xBB, 0x66, 0x66, 0x28, 0x33");
asm(".byte 0x43, 0x33, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x60, 0x87, 0x98");
asm(".byte 0x11, 0x01, 0x11, 0xD2, 0x00, 0x00, 0x00, 0x2D, 0x22, 0x92, 0x98, 0x89, 0x97, 0x22, 0x22, 0x22");
asm(".byte 0xB9, 0x6B, 0x66, 0x25, 0x33, 0xC3, 0x9C, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00");
asm(".byte 0x00, 0x00, 0x00, 0x87, 0x99, 0x11, 0x01, 0x11, 0xD2, 0x00, 0xD0, 0x98, 0x2C, 0x22, 0x92, 0x99");
asm(".byte 0x89, 0x29, 0x22, 0x22, 0x22, 0x92, 0xBB, 0x66, 0x9B, 0x23, 0x81, 0x05, 0x00, 0x00, 0x00, 0x00");
asm(".byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x97, 0x98, 0x11, 0x01, 0x11, 0xD1, 0x00, 0x90");
asm(".byte 0x43, 0x34, 0x22, 0x82, 0x91, 0x99, 0x21, 0x22, 0x78, 0x21, 0x22, 0x65, 0x6B, 0x9B, 0x22, 0x23");
asm(".byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x60, 0x8D, 0x98, 0x11");
asm(".byte 0x01, 0x11, 0xD2, 0x00, 0xD0, 0x55, 0x85, 0x11, 0x92, 0x11, 0x99, 0x22, 0x82, 0x66, 0x25, 0x22");
asm(".byte 0xB8, 0x66, 0x96, 0x22, 0x22, 0x0D, 0x00, 0x00, 0x00, 0x00, 0xD0, 0xD8, 0x00, 0x00, 0x00, 0x00");
asm(".byte 0x00, 0x00, 0x97, 0x98, 0x11, 0x01, 0x11, 0x51, 0x00, 0x00, 0x00, 0x18, 0x19, 0x92, 0x11, 0x11");
asm(".byte 0x22, 0x82, 0x66, 0x25, 0x22, 0xB9, 0xBB, 0x1B, 0x32, 0x43, 0x44, 0x0C, 0x00, 0xD0, 0x00, 0xC0");
asm(".byte 0x73, 0x00, 0x37, 0x09, 0x00, 0x00, 0x00, 0x87, 0x98, 0x11, 0x01, 0x11, 0xD1, 0x00, 0x00, 0x00");
asm(".byte 0x17, 0x11, 0x12, 0x11, 0x19, 0x22, 0x22, 0x78, 0x21, 0x22, 0xB8, 0xBB, 0x2B, 0x22, 0x89, 0x98");
asm(".byte 0xD1, 0x00, 0x3C, 0x0D, 0x10, 0x92, 0x00, 0x3C, 0x09, 0x00, 0x0D, 0x60, 0x87, 0x98, 0x19, 0x01");
asm(".byte 0x11, 0x71, 0x00, 0x00, 0x9D, 0x23, 0x12, 0xC2, 0x11, 0x11, 0x21, 0x22, 0x22, 0x22, 0x22, 0x55");
asm(".byte 0xBB, 0x25, 0x12, 0x82, 0xDD, 0x00, 0x00, 0x29, 0x02, 0xC0, 0x22, 0xDD, 0x23, 0x07, 0x80, 0x83");
asm(".byte 0x00, 0x8D, 0x98, 0x11, 0x01, 0x91, 0xD1, 0x00, 0xD0, 0x33, 0x9A, 0x77, 0x21, 0x21, 0x11, 0x21");
asm(".byte 0x22, 0x22, 0x22, 0x82, 0x55, 0xB5, 0x28, 0x22, 0x72, 0x00, 0xD8, 0x00, 0x27, 0x32, 0x43, 0x33");
asm(".byte 0x44, 0x23, 0xD9, 0x4D, 0x7C, 0x60, 0x87, 0x98, 0x19, 0x09, 0x11, 0xD1, 0x00, 0xD0, 0x58, 0x75");
asm(".byte 0x88, 0x39, 0x21, 0x11, 0x11, 0x21, 0x22, 0x22, 0x79, 0x57, 0x5B, 0x22, 0x21, 0xC3, 0xD0, 0x33");
asm(".byte 0x0D, 0x39, 0x43, 0x44, 0x44, 0x44, 0x34, 0x34, 0x34, 0xD8, 0x00, 0x87, 0x98, 0x99, 0x01, 0x91");
asm(".byte 0xD1, 0x00, 0x00, 0x00, 0x70, 0x88, 0xC9, 0x13, 0x12, 0x11, 0x11, 0x11, 0x89, 0x77, 0x57, 0x95");
asm(".byte 0x92, 0x88, 0x4C, 0x94, 0x29, 0x33, 0x44, 0x44, 0x44, 0x44, 0x44, 0x34, 0x43, 0x14, 0x08, 0x00");
asm(".byte 0x89, 0x88, 0x99, 0x01, 0x99, 0xD1, 0x00, 0x00, 0x00, 0xD0, 0x12, 0x78, 0xC3, 0x21, 0x11, 0x91");
asm(".byte 0x99, 0x88, 0x88, 0x57, 0x38, 0x92, 0x89, 0x55, 0x99, 0x1D, 0x43, 0x44, 0x44, 0x34, 0xCC, 0x3C");
asm(".byte 0x33, 0x44, 0x23, 0x93, 0xA8, 0x7C, 0x88, 0x19, 0x09, 0x91, 0xD1, 0x00, 0x00, 0x00, 0x38, 0x73");
asm(".byte 0x75, 0x38, 0x13, 0x11, 0x11, 0x99, 0x99, 0x88, 0x97, 0x13, 0x19, 0x89, 0x9D, 0xDD, 0x3D, 0x43");
asm(".byte 0x44, 0x93, 0x57, 0x55, 0x55, 0x97, 0x3C, 0x33, 0x43, 0x94, 0x87, 0x88, 0x99, 0x09, 0x99, 0xD1");
asm(".byte 0x00, 0x00, 0xD0, 0xCC, 0x57, 0x77, 0x97, 0x33, 0x12, 0x11, 0x11, 0x89, 0x88, 0x3C, 0x71, 0x17");
asm(".byte 0x83, 0x39, 0x93, 0x43, 0x33, 0xC4, 0xB7, 0x66, 0x66, 0x66, 0xB6, 0x97, 0x33, 0x33, 0x5C, 0x78");
asm(".byte 0x88, 0x99, 0x09, 0x99, 0xD1, 0x00, 0x00, 0xD0, 0x58, 0xDD, 0x77, 0x58, 0xC5, 0x34, 0x1C, 0x91");
asm(".byte 0xC9, 0x33, 0x93, 0x87, 0x57, 0x3C, 0x89, 0x4C, 0x44, 0x34, 0x58, 0x66, 0x66, 0x66, 0x66, 0x66");
asm(".byte 0x56, 0x28, 0x23, 0x92, 0x88, 0x87, 0x99, 0x09, 0x99, 0xD1, 0x00, 0x00, 0x00, 0x00, 0x00, 0x29");
asm(".byte 0x57, 0x55, 0xA8, 0x43, 0x34, 0x34, 0x9A, 0x75, 0x79, 0x78, 0xC5, 0x73, 0x28, 0x43, 0xC3, 0x65");
asm(".byte 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x9B, 0x32, 0x12, 0x79, 0x88, 0x99, 0x09, 0x99, 0xD1, 0x00");
asm(".byte 0x00, 0x00, 0x00, 0xD0, 0x13, 0x57, 0x55, 0xB5, 0x5B, 0x78, 0x55, 0x57, 0x55, 0x11, 0x07, 0x5D");
asm(".byte 0x07, 0x3C, 0x33, 0x7C, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x56, 0x21, 0xC2, 0x71, 0x87");
asm(".byte 0x99, 0x09, 0x89, 0x51, 0x00, 0x00, 0x00, 0x00, 0x10, 0x81, 0x5D, 0x87, 0x55, 0x55, 0x55, 0x55");
asm(".byte 0x57, 0x57, 0x38, 0x08, 0xCD, 0x89, 0x33, 0x33, 0xB8, 0x66, 0x66, 0xB6, 0x77, 0x57, 0x6B, 0xBB");
asm(".byte 0x6B, 0x28, 0x93, 0x79, 0x87, 0x98, 0x09, 0x89, 0xD1, 0x00, 0x00, 0x00, 0x00, 0x70, 0xD7, 0x00");
asm(".byte 0x21, 0x57, 0x5B, 0x57, 0xB5, 0x99, 0xD7, 0xC7, 0x0C, 0x39, 0x44, 0x34, 0x23, 0x67, 0xB6, 0xBB");
asm(".byte 0x18, 0x22, 0x22, 0x59, 0xBB, 0xBB, 0x2B, 0x81, 0x79, 0x87, 0x98, 0x09, 0x99, 0xD9, 0x00, 0x00");
asm(".byte 0x00, 0x00, 0x00, 0xDD, 0xDD, 0x12, 0xD8, 0x97, 0x71, 0x75, 0x21, 0x0D, 0x8D, 0xD1, 0x7D, 0x97");
asm(".byte 0x32, 0x13, 0xB5, 0xBB, 0x8B, 0x22, 0x22, 0x22, 0x12, 0x55, 0x55, 0x9B, 0x92, 0x79, 0x87, 0x98");
asm(".byte 0x08, 0x89, 0xD9, 0x00, 0x00, 0x00, 0xDD, 0x00, 0xC0, 0x83, 0x91, 0xA9, 0x19, 0xD2, 0xD0, 0x29");
asm(".byte 0x0D, 0xD0, 0x0D, 0x00, 0x1D, 0x22, 0x92, 0xBB, 0xB5, 0x27, 0x22, 0x12, 0x22, 0x22, 0x58, 0x55");
asm(".byte 0x85, 0x92, 0x79, 0x87, 0x88, 0x09, 0x89, 0xD1, 0x00, 0x00, 0xD0, 0x3C, 0x00, 0x9D, 0x73, 0x7D");
asm(".byte 0x31, 0x99, 0xD1, 0x00, 0x18, 0x0D, 0x00, 0x00, 0x00, 0x20, 0x33, 0x92, 0x55, 0x55, 0x29, 0x22");
asm(".byte 0x68, 0x1B, 0x22, 0x71, 0x77, 0x75, 0x82, 0x79, 0x87, 0x98, 0x08, 0x88, 0x59, 0x00, 0x00, 0xD0");
asm(".byte 0x49, 0x08, 0x9D, 0xC3, 0x7D, 0x32, 0xD7, 0x18, 0xDA, 0xDD, 0x00, 0x00, 0x00, 0x9D, 0x3A, 0x33");
asm(".byte 0x92, 0x75, 0x55, 0x21, 0x22, 0x6B, 0x86, 0x22, 0x82, 0x87, 0x87, 0x72, 0x78, 0x77, 0x88, 0x08");
asm(".byte 0x89, 0xD9, 0x00, 0x08, 0x00, 0xC7, 0xC4, 0x2C, 0x44, 0x34, 0x32, 0x08, 0x28, 0xD3, 0x00, 0x00");
asm(".byte 0x00, 0xD0, 0x43, 0x33, 0x2C, 0x12, 0x77, 0x77, 0x21, 0x22, 0x68, 0x1B, 0x22, 0x82, 0x88, 0x88");
asm(".byte 0x82, 0x78, 0x77, 0x88, 0x08, 0x88, 0xD9, 0x80, 0xA3, 0x00, 0x19, 0x34, 0x34, 0x43, 0x34, 0x44");
asm(".byte 0x34, 0x22, 0x01, 0x00, 0x00, 0x00, 0x00, 0x58, 0x75, 0x21, 0x12, 0x88, 0x88, 0x29, 0x22, 0x12");
asm(".byte 0x22, 0x22, 0x91, 0x99, 0x98, 0x83, 0x79, 0x77, 0x88, 0x08, 0x88, 0xD9, 0xD0, 0x49, 0x23, 0x23");
asm(".byte 0x43, 0x33, 0x44, 0x44, 0x44, 0x44, 0x33, 0x07, 0x70, 0x09, 0x00, 0x00, 0x00, 0x9D, 0x22, 0x22");
asm(".byte 0x88, 0x88, 0x19, 0x22, 0x22, 0x22, 0x22, 0x91, 0x99, 0xC9, 0x51, 0x78, 0x77, 0x88, 0x08, 0x88");
asm(".byte 0xD9, 0x00, 0x97, 0x34, 0x22, 0x33, 0x33, 0xC2, 0x32, 0x44, 0x44, 0x44, 0x73, 0x39, 0xD3, 0x00");
asm(".byte 0x00, 0x00, 0x80, 0x22, 0x22, 0x91, 0x99, 0x99, 0x22, 0x22, 0x22, 0x12, 0x19, 0x11, 0x39, 0x59");
asm(".byte 0x78, 0x75, 0x88, 0x08, 0x88, 0x79, 0x06, 0x98, 0x3C, 0x33, 0x12, 0x79, 0x77, 0x77, 0xC8, 0x43");
asm(".byte 0x44, 0x44, 0x22, 0x01, 0x00, 0x00, 0x00, 0x49, 0x23, 0x19, 0x92, 0x19, 0x11, 0x11, 0x22, 0x12");
asm(".byte 0x11, 0x11, 0x11, 0x3C, 0x58, 0x78, 0x75, 0x88, 0x08, 0x78, 0xC8, 0x8A, 0x22, 0x22, 0x22, 0x59");
asm(".byte 0x6B, 0x66, 0x66, 0x5B, 0xC7, 0x44, 0x44, 0x12, 0x00, 0x00, 0x00, 0xC0, 0xC4, 0x87, 0x11, 0x22");
asm(".byte 0x19, 0x11, 0x11, 0x11, 0x21, 0x21, 0x21, 0x11, 0x93, 0x78, 0x78, 0x75, 0x87, 0x08, 0x88, 0x98");
asm(".byte 0x4A, 0x22, 0x22, 0x72, 0xBB, 0xBB, 0xBB, 0x66, 0x66, 0x5B, 0x41, 0x44, 0xC4, 0x00, 0xD0, 0x00");
asm(".byte 0x90, 0x57, 0x1D, 0x19, 0x31, 0x12, 0x11, 0x21, 0x21, 0x22, 0x22, 0x22, 0x41, 0x5C, 0x85, 0x59");
asm(".byte 0x75, 0x78, 0x08, 0x78, 0x79, 0x15, 0x22, 0x22, 0xB7, 0x55, 0xB5, 0xBB, 0xBB, 0x66, 0x66, 0x95");
asm(".byte 0x44, 0x44, 0xCC, 0xC3, 0x00, 0x00, 0x00, 0x80, 0x21, 0x89, 0x33, 0x21, 0x22, 0x22, 0x22, 0x22");
asm(".byte 0xC1, 0xC4, 0x75, 0xB7, 0x78, 0x75, 0x77, 0x08, 0x78, 0x78, 0x98, 0x21, 0x82, 0x75, 0x55, 0x55");
asm(".byte 0xBB, 0x6B, 0x6B, 0x66, 0x56, 0x4C, 0x44, 0x34, 0xC2, 0x0D, 0x00, 0x00, 0xC0, 0x93, 0x87, 0x28");
asm(".byte 0xC3, 0x22, 0x22, 0x22, 0x22, 0x43, 0x79, 0x78, 0x57, 0x58, 0x75, 0x87, 0x07, 0x78, 0x98, 0x19");
asm(".byte 0x21, 0x51, 0x77, 0x57, 0x55, 0x87, 0xB7, 0x6B, 0x66, 0xB6, 0x38, 0x34, 0x12, 0x07, 0x00, 0x00");
asm(".byte 0x00, 0x4C, 0x78, 0x88, 0x89, 0x39, 0x33, 0xC3, 0x33, 0x44, 0x7C, 0x55, 0x98, 0x07, 0x7D, 0x75");
asm(".byte 0x77, 0x08, 0x78, 0x18, 0x19, 0x21, 0x78, 0x88, 0x77, 0x29, 0x22, 0x12, 0xB7, 0x6B, 0x66, 0xC5");
asm(".byte 0x34, 0x94, 0x00, 0x00, 0x00, 0xD0, 0x8C, 0xD5, 0x98, 0x71, 0x77, 0xC8, 0xAC, 0xC3, 0x78, 0x57");
asm(".byte 0x55, 0x27, 0x61, 0x57, 0x75, 0x77, 0x07, 0x77, 0x88, 0x19, 0x22, 0x97, 0x88, 0x17, 0x22, 0x22");
asm(".byte 0x22, 0x82, 0xB6, 0x66, 0x9B, 0x43, 0xA4, 0x0D, 0x00, 0x00, 0x00, 0xDD, 0x00, 0x3D, 0x59, 0x77");
asm(".byte 0x57, 0x55, 0xB5, 0x55, 0x77, 0x75, 0x97, 0x72, 0x7D, 0x55, 0x77, 0x07, 0x88, 0x89, 0x87, 0xC2");
asm(".byte 0x98, 0x88, 0x29, 0x22, 0x12, 0x22, 0x22, 0xB5, 0x6B, 0x86, 0x43, 0x44, 0x33, 0xD3, 0x00, 0x00");
asm(".byte 0x00, 0x00, 0x3C, 0x77, 0x87, 0x59, 0x55, 0x57, 0x55, 0x17, 0x09, 0x80, 0x78, 0x77, 0x75, 0x77");
asm(".byte 0x07, 0x88, 0x89, 0x98, 0xC2, 0x99, 0x89, 0x22, 0x22, 0x65, 0x27, 0x22, 0xB8, 0xBB, 0x76, 0x32");
asm(".byte 0x33, 0xCC, 0xDC, 0x00, 0x00, 0x00, 0x00, 0x93, 0x07, 0x2D, 0x51, 0x77, 0x89, 0x55, 0x19, 0xD1");
asm(".byte 0x00, 0x0D, 0x77, 0x75, 0x77, 0x07, 0xA7, 0x9C, 0x97, 0x13, 0x99, 0x99, 0x21, 0x92, 0x66, 0x2B");
asm(".byte 0x22, 0xB9, 0xBB, 0x7B, 0x32, 0x23, 0x78, 0x0D, 0x00, 0x00, 0x00, 0xD0, 0x77, 0x00, 0x2D, 0x79");
asm(".byte 0x80, 0x12, 0x07, 0x1D, 0xD2, 0x00, 0x60, 0x77, 0x77, 0x77, 0x07, 0xC8, 0xCA, 0x78, 0x9C, 0x88");
asm(".byte 0x88, 0x11, 0x91, 0x66, 0x15, 0x19, 0xB8, 0x6B, 0x76, 0x3C, 0xC2, 0x00, 0x06, 0x00, 0x00, 0x00");
asm(".byte 0x60, 0x00, 0x00, 0x10, 0x08, 0x00, 0x91, 0x60, 0x70, 0x07, 0x06, 0x00, 0x8C, 0x77, 0x77, 0x07");
asm(".byte 0xA8, 0x4A, 0xC3, 0xC3, 0x3C, 0xCC, 0xC2, 0x32, 0xC2, 0x2C, 0x23, 0xCC, 0xCC, 0xCC, 0x33, 0x33");
asm(".byte 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC");
asm(".byte 0xA9, 0x9A, 0x78, 0x77, 0x07, 0x87, 0xAA, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44");
asm(".byte 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44");
asm(".byte 0x44, 0x44, 0x44, 0x44, 0x44, 0xA4, 0xAA, 0x77, 0x57, 0x07, 0x77, 0xAA, 0xAA, 0x44, 0x44, 0x44");
asm(".byte 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44");
asm(".byte 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0xAA, 0x8A, 0x77, 0x77, 0x07, 0x77");
asm(".byte 0x77, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA");
asm(".byte 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA");
asm(".byte 0x77, 0x77, 0x75, 0x05, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55");
asm(".byte 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55");
asm(".byte 0x55, 0x55, 0x55, 0x55, 0x5B, 0x55, 0x55, 0x55, 0x05, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB");
asm(".byte 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xB6, 0x6B, 0xBB, 0xB6, 0x6B, 0xBB, 0xB6");
asm(".byte 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0x6B, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0x0B, 0x66, 0x66");
asm(".byte 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66");
asm(".byte 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66");
asm(".byte 0x66, 0x66, 0x06");
#if defined (__C30__) && (__C30_VERSION__ <= 325)
asm(".section .const, psv");
#else
asm(".section .const, psv, page");
#endif

/*********************************
 * Bitmap Structure
 * Label: Engine3
 * Description:  73x55 pixels, 4-bits per pixel
 ***********************************/
#if defined (__C30__) && (__C30_VERSION__ <= 325)
asm(".section .const, psv");
#else
asm(".section .const, psv, page");
#endif


extern const char __Engine3[] __attribute__((space(prog), aligned(2)));

const IMAGE_FLASH Engine3 =
{
    (FLASH | IMAGE_MBITMAP | COMP_NONE),
    (FLASH_BYTE *)__Engine3
};
asm(".section .text, code");
asm(".global ___Engine3");
asm(".align 2");
asm("___Engine3:");
/****************************************
 * Bitmap header
 ****************************************/
asm(".byte 0x00");           // Compresssion
asm(".byte 0x04");           // Color Depth
asm(".byte 0x37, 0x00");     // Height
asm(".byte 0x49, 0x00");     // Width
/***********************************
 * Color Palette for the image
 **********************************/
asm(".byte 0x21, 0x40");
asm(".byte 0x41, 0xAB");
asm(".byte 0xC2, 0xC3");
asm(".byte 0xC9, 0xD4");
asm(".byte 0xB1, 0xD5");
asm(".byte 0xE0, 0x30");
asm(".byte 0x80, 0x18");
asm(".byte 0xE1, 0x61");
asm(".byte 0x41, 0x7A");
asm(".byte 0xC1, 0x8A");
asm(".byte 0x0B, 0x9C");
asm(".byte 0x86, 0xA3");
asm(".byte 0x80, 0x51");
asm(".byte 0xC1, 0x50");
asm(".byte 0xFF, 0xFF");
asm(".byte 0x00, 0x00");
/********************************
 * Bitmap Image Body
 *********************************/
asm(".byte 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44");
asm(".byte 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44");
asm(".byte 0x44, 0x44, 0x44, 0x44, 0xF4, 0x33, 0x33, 0x23, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22");
asm(".byte 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22");
asm(".byte 0x22, 0x22, 0x22, 0x22, 0x22, 0x32, 0x33, 0x33, 0x33, 0xF3, 0x22, 0x91, 0x88, 0x77, 0xCC, 0xCC");
asm(".byte 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC");
asm(".byte 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0x7C, 0x87, 0x19, 0x22, 0x22, 0xA2, 0x11");
asm(".byte 0x79, 0x5C, 0x66, 0x65, 0x65, 0x65, 0x65, 0x65, 0x65, 0x65, 0x65, 0x65, 0x65, 0x65, 0x65, 0x65");
asm(".byte 0x65, 0x65, 0x65, 0x65, 0x65, 0x65, 0x65, 0x65, 0x65, 0x65, 0x65, 0x65, 0x65, 0x65, 0x65, 0x55");
asm(".byte 0x87, 0x11, 0x22, 0xF2, 0x11, 0xC8, 0xCC, 0x77, 0x77, 0x7C, 0x77, 0x77, 0x77, 0x77, 0x77, 0x77");
asm(".byte 0x77, 0x77, 0x77, 0x77, 0x77, 0x77, 0x77, 0x7C, 0x77, 0x77, 0x77, 0x77, 0x77, 0x77, 0x77, 0x77");
asm(".byte 0x77, 0x77, 0x77, 0x77, 0x57, 0x75, 0x19, 0x21, 0xF1, 0x91, 0x77, 0xD7, 0xDD, 0x75, 0x79, 0x8D");
asm(".byte 0x89, 0x99, 0xC7, 0x55, 0xC5, 0x55, 0x55, 0x55, 0xCC, 0xB8, 0x99, 0xC9, 0x8C, 0xD8, 0xDD, 0xDD");
asm(".byte 0xDD, 0xDD, 0xDD, 0xDD, 0xDD, 0xDD, 0xDD, 0xDD, 0x5D, 0x8D, 0xCC, 0x18, 0x21, 0xF2, 0x91, 0x89");
asm(".byte 0x66, 0x60, 0x70, 0xAB, 0xBA, 0xBB, 0x7B, 0x55, 0x55, 0x55, 0x55, 0x66, 0x66, 0x56, 0x95, 0xAA");
asm(".byte 0xAA, 0xAA, 0xD8, 0x06, 0x66, 0x60, 0x06, 0x66, 0x60, 0x06, 0x66, 0x60, 0x06, 0x06, 0x66, 0xC7");
asm(".byte 0x18, 0x11, 0xF1, 0x91, 0xC1, 0x00, 0x00, 0xD0, 0x7C, 0x3A, 0x33, 0x79, 0x7C, 0xC7, 0xCC, 0x55");
asm(".byte 0x55, 0x66, 0x66, 0x75, 0x33, 0x34, 0xC9, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00");
asm(".byte 0x00, 0x00, 0x00, 0x60, 0x77, 0x98, 0x21, 0xF2, 0x11, 0xC1, 0x00, 0x00, 0x00, 0x8D, 0x21, 0x23");
asm(".byte 0xC8, 0x88, 0x77, 0x5C, 0xCC, 0x55, 0x65, 0x66, 0xC6, 0x39, 0x23, 0xD1, 0x00, 0x00, 0x00, 0x00");
asm(".byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x87, 0x18, 0x11, 0xF1, 0x11, 0xC2, 0x00");
asm(".byte 0x00, 0x00, 0x10, 0x22, 0x12, 0x87, 0x88, 0x78, 0x18, 0x11, 0x81, 0x55, 0x66, 0x66, 0x28, 0x33");
asm(".byte 0xC3, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x97, 0x98");
asm(".byte 0x11, 0xF2, 0x12, 0xC2, 0x00, 0x70, 0xAB, 0x3A, 0x22, 0x12, 0x98, 0x89, 0x97, 0x22, 0x22, 0x22");
asm(".byte 0x51, 0x65, 0x66, 0x2C, 0x33, 0x33, 0x3A, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00");
asm(".byte 0x00, 0x00, 0x00, 0x87, 0x19, 0x11, 0x91, 0x11, 0xC2, 0x00, 0x80, 0xAB, 0x33, 0x23, 0x92, 0x99");
asm(".byte 0x99, 0x29, 0x22, 0x22, 0x22, 0x92, 0x55, 0x66, 0x15, 0x33, 0x33, 0xBA, 0xDB, 0x00, 0x00, 0x00");
asm(".byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x60, 0x97, 0x98, 0x11, 0xF1, 0x11, 0xC2, 0x00, 0xD0");
asm(".byte 0xCC, 0x8C, 0x11, 0x92, 0x11, 0x99, 0x21, 0x22, 0x78, 0x21, 0x22, 0x6C, 0x65, 0x95, 0x22, 0x82");
asm(".byte 0xCC, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x97, 0x18, 0x11");
asm(".byte 0xF1, 0x11, 0xC1, 0x00, 0x00, 0x00, 0x18, 0x11, 0x92, 0x11, 0x19, 0x22, 0x92, 0x66, 0x2C, 0x22");
asm(".byte 0x58, 0x65, 0x95, 0x22, 0x22, 0x0D, 0x00, 0x00, 0x00, 0x00, 0xCD, 0x00, 0xD0, 0x07, 0x00, 0x00");
asm(".byte 0x00, 0x00, 0x87, 0x98, 0x11, 0x91, 0x11, 0xC2, 0x00, 0x00, 0x00, 0x19, 0x21, 0x92, 0x11, 0x11");
asm(".byte 0x22, 0x82, 0x66, 0x2C, 0x22, 0x59, 0x65, 0x15, 0x22, 0x22, 0x0D, 0x00, 0x00, 0x00, 0xD0, 0x33");
asm(".byte 0x0D, 0xB0, 0x83, 0x00, 0x00, 0x00, 0x00, 0x97, 0x98, 0x11, 0xF1, 0x11, 0xC1, 0x00, 0xD0, 0x39");
asm(".byte 0x23, 0x22, 0x12, 0x11, 0x11, 0x22, 0x22, 0x78, 0x21, 0x22, 0x58, 0x55, 0x25, 0x32, 0x43, 0xA4");
asm(".byte 0x07, 0x80, 0x0B, 0xD0, 0x22, 0x08, 0x30, 0x72, 0x00, 0xB7, 0x0D, 0x60, 0x87, 0x98, 0x11, 0xF1");
asm(".byte 0x11, 0x71, 0x00, 0x80, 0xA3, 0x89, 0x88, 0xB2, 0x11, 0x11, 0x21, 0x22, 0x22, 0x22, 0x22, 0xCC");
asm(".byte 0x55, 0x2C, 0x11, 0x89, 0xBB, 0x02, 0x3D, 0x83, 0x00, 0x22, 0xC1, 0x39, 0x72, 0xD0, 0x33, 0x08");
asm(".byte 0x00, 0x97, 0x98, 0x11, 0xF1, 0x11, 0xC1, 0x00, 0xD0, 0xDC, 0x8C, 0x99, 0x31, 0x21, 0x11, 0x21");
asm(".byte 0x22, 0x22, 0x22, 0x92, 0xCC, 0x5C, 0x29, 0x11, 0x71, 0xCC, 0x0C, 0x90, 0x22, 0xA8, 0x33, 0x43");
asm(".byte 0x34, 0x32, 0xB8, 0x93, 0x0D, 0x60, 0x87, 0x98, 0x19, 0xF1, 0x11, 0xC1, 0x00, 0x00, 0xD0, 0x80");
asm(".byte 0x89, 0x31, 0x11, 0x12, 0x11, 0x22, 0x22, 0x22, 0x79, 0xCC, 0xC5, 0x22, 0x12, 0xD1, 0x90, 0x07");
asm(".byte 0x70, 0x32, 0x44, 0x44, 0x44, 0x44, 0x43, 0x44, 0x8B, 0x00, 0x8D, 0x88, 0x98, 0x91, 0xF1, 0x91");
asm(".byte 0xC1, 0x00, 0x00, 0x00, 0xB0, 0x12, 0xB8, 0x13, 0x12, 0x11, 0x11, 0x11, 0x81, 0x78, 0xC7, 0xBC");
asm(".byte 0x92, 0x22, 0x73, 0x3C, 0x93, 0xAD, 0x33, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x32, 0xD8, 0xA3");
asm(".byte 0x89, 0x98, 0x19, 0xF1, 0x91, 0x71, 0x00, 0x00, 0x70, 0x33, 0xCB, 0x8C, 0xB3, 0x21, 0x11, 0x91");
asm(".byte 0x99, 0x88, 0x88, 0xC7, 0x38, 0x91, 0x97, 0x43, 0x9B, 0x32, 0x44, 0x44, 0x44, 0x34, 0xBB, 0x3B");
asm(".byte 0x33, 0x34, 0x33, 0x43, 0xD3, 0x88, 0x98, 0x99, 0xF9, 0x91, 0xC1, 0x00, 0x00, 0xBD, 0x8B, 0x7C");
asm(".byte 0x77, 0x49, 0x13, 0x12, 0x11, 0x91, 0x99, 0x88, 0x97, 0x23, 0x99, 0x79, 0x8D, 0x83, 0x29, 0x44");
asm(".byte 0x44, 0x93, 0xC7, 0xCC, 0xCC, 0x97, 0x32, 0x33, 0x34, 0x58, 0x87, 0x88, 0x19, 0xF9, 0x91, 0xC1");
asm(".byte 0x00, 0x00, 0x70, 0xDC, 0x7D, 0x87, 0x87, 0x33, 0x11, 0x11, 0x11, 0x99, 0x98, 0x3B, 0x7B, 0x91");
asm(".byte 0xC9, 0x78, 0xDD, 0x33, 0x43, 0xB4, 0xC7, 0x66, 0x66, 0x66, 0x56, 0x97, 0x43, 0x23, 0x72, 0x8C");
asm(".byte 0x98, 0x99, 0xF1, 0x99, 0xC1, 0x00, 0x00, 0x00, 0x00, 0x80, 0x92, 0xCC, 0xAC, 0x34, 0x1B, 0x91");
asm(".byte 0xB1, 0x33, 0x93, 0x77, 0x28, 0xCB, 0x43, 0xBB, 0x44, 0x34, 0xC9, 0x66, 0x66, 0x66, 0x66, 0x66");
asm(".byte 0xD6, 0x29, 0x32, 0xB3, 0x89, 0x88, 0x99, 0xF9, 0x99, 0xC1, 0x00, 0x00, 0x00, 0x00, 0x3D, 0x72");
asm(".byte 0xCC, 0xCC, 0xA8, 0x43, 0x34, 0x34, 0x9A, 0x87, 0x87, 0x9C, 0xB4, 0x18, 0x43, 0x34, 0x13, 0x6C");
asm(".byte 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x95, 0x32, 0xB2, 0x7B, 0x97, 0x99, 0xF9, 0x99, 0xC1, 0x00");
asm(".byte 0x00, 0x00, 0x00, 0x21, 0x78, 0xCC, 0x77, 0x55, 0x7C, 0x77, 0x77, 0xCC, 0x9C, 0x78, 0xC7, 0x39");
asm(".byte 0x77, 0x39, 0x43, 0x72, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0xC6, 0x21, 0xB3, 0x88, 0x87");
asm(".byte 0x99, 0xF9, 0x99, 0xC1, 0x00, 0x00, 0x00, 0x00, 0x87, 0x0C, 0x9D, 0xC1, 0xCC, 0xCC, 0xCC, 0x75");
asm(".byte 0xCC, 0x9C, 0x72, 0xD0, 0x7C, 0xD0, 0x33, 0x33, 0x58, 0x66, 0x66, 0x56, 0x87, 0xC7, 0x55, 0x55");
asm(".byte 0x65, 0x28, 0x92, 0x79, 0x88, 0x99, 0xF9, 0x99, 0xC1, 0x00, 0x00, 0x00, 0x00, 0xD0, 0x00, 0x2D");
asm(".byte 0x71, 0xCC, 0x77, 0x5C, 0x9C, 0xC7, 0x8C, 0x93, 0x00, 0x8C, 0x9D, 0x33, 0x23, 0x67, 0x55, 0x55");
asm(".byte 0x28, 0x22, 0x22, 0x59, 0x55, 0x55, 0x1D, 0x92, 0x79, 0x87, 0x99, 0xF9, 0x99, 0xC9, 0x00, 0x00");
asm(".byte 0x00, 0x00, 0x00, 0xDD, 0x28, 0x89, 0x8D, 0x11, 0xC7, 0x17, 0xD2, 0x7D, 0xB1, 0x00, 0x4B, 0x44");
asm(".byte 0x34, 0x13, 0x5C, 0x55, 0x85, 0x22, 0x22, 0x22, 0x12, 0xCC, 0xCC, 0x15, 0x92, 0x71, 0x87, 0x98");
asm(".byte 0xF9, 0x89, 0xC1, 0x00, 0x00, 0x00, 0x00, 0x70, 0xB3, 0x87, 0xB8, 0x83, 0x12, 0x0D, 0x18, 0x02");
asm(".byte 0xD0, 0x88, 0xDD, 0x89, 0xB9, 0x32, 0x93, 0x5D, 0x5C, 0x27, 0x22, 0x12, 0x22, 0x22, 0xC9, 0xCC");
asm(".byte 0x8C, 0x92, 0x79, 0x87, 0x98, 0xA9, 0x99, 0xC9, 0x00, 0x00, 0x9D, 0x07, 0xC0, 0x3B, 0x0D, 0x27");
asm(".byte 0x93, 0x91, 0x89, 0x97, 0xD1, 0x00, 0x0D, 0x00, 0xD0, 0x1C, 0x22, 0x92, 0xCC, 0xCC, 0x29, 0x22");
asm(".byte 0x68, 0x15, 0x22, 0x71, 0x77, 0x7C, 0x72, 0x79, 0x87, 0x88, 0xF9, 0x89, 0xC9, 0x00, 0x00, 0x37");
asm(".byte 0xD4, 0xD0, 0x41, 0xD9, 0x29, 0xC3, 0x9D, 0x32, 0x7D, 0x07, 0x00, 0x00, 0x00, 0x00, 0x20, 0x23");
asm(".byte 0x92, 0xCC, 0xCC, 0x21, 0x22, 0x65, 0x96, 0x22, 0x82, 0x88, 0x87, 0x82, 0x79, 0x87, 0x98, 0xF9");
asm(".byte 0x89, 0x79, 0x00, 0x00, 0x8D, 0xB4, 0xB8, 0x41, 0x44, 0x33, 0xB4, 0x18, 0xB2, 0x00, 0x00, 0x00");
asm(".byte 0x00, 0x00, 0xD0, 0x39, 0x33, 0x12, 0x77, 0x77, 0x21, 0x22, 0x69, 0x15, 0x22, 0x82, 0x88, 0x88");
asm(".byte 0x92, 0x79, 0x77, 0x88, 0xF8, 0x88, 0xC9, 0x80, 0x0D, 0x70, 0x4B, 0x33, 0x33, 0x44, 0x33, 0x44");
asm(".byte 0x24, 0x83, 0x00, 0x9C, 0x00, 0x00, 0xD0, 0x4B, 0x34, 0x22, 0x22, 0x88, 0x88, 0x29, 0x22, 0x12");
asm(".byte 0x22, 0x22, 0x91, 0x99, 0x99, 0x73, 0x78, 0x87, 0x88, 0xF9, 0x89, 0xC9, 0x37, 0xD4, 0x2C, 0x31");
asm(".byte 0x34, 0x33, 0x44, 0x44, 0x44, 0x34, 0xA4, 0x8D, 0x33, 0x08, 0x00, 0x00, 0x91, 0x77, 0x11, 0x22");
asm(".byte 0x98, 0x98, 0x29, 0x22, 0x22, 0x22, 0x22, 0x91, 0x19, 0xB9, 0xC1, 0x78, 0x7C, 0x88, 0xF8, 0x88");
asm(".byte 0xC9, 0x8D, 0x43, 0x32, 0x32, 0x33, 0x33, 0x23, 0x32, 0x44, 0x44, 0x44, 0x24, 0x12, 0x0D, 0x00");
asm(".byte 0x00, 0xDD, 0x8D, 0x22, 0x22, 0x91, 0x99, 0x99, 0x22, 0x22, 0x22, 0x12, 0x11, 0x11, 0x39, 0x79");
asm(".byte 0x78, 0x77, 0x88, 0xF8, 0x88, 0xC9, 0xC0, 0x38, 0x23, 0x23, 0x22, 0x89, 0xCC, 0x77, 0xB9, 0x43");
asm(".byte 0x44, 0x34, 0xD2, 0x00, 0x00, 0x00, 0x00, 0xD0, 0x21, 0x22, 0x92, 0x11, 0x11, 0x11, 0x22, 0x22");
asm(".byte 0x11, 0x11, 0x11, 0x3B, 0x79, 0x79, 0x7C, 0x88, 0xF8, 0x88, 0xC9, 0x76, 0x11, 0x33, 0x22, 0xC9");
asm(".byte 0x65, 0x66, 0x66, 0xC6, 0xB8, 0x44, 0x44, 0xD3, 0xD0, 0x07, 0x00, 0x00, 0xAD, 0x24, 0x99, 0x22");
asm(".byte 0x19, 0x11, 0x11, 0x11, 0x11, 0x12, 0x22, 0x11, 0x93, 0x7C, 0x79, 0x7C, 0x88, 0xA8, 0x78, 0xB9");
asm(".byte 0x18, 0x22, 0x22, 0x72, 0x55, 0x55, 0x55, 0x66, 0x66, 0x76, 0x49, 0x44, 0xA4, 0x3B, 0x83, 0x00");
asm(".byte 0xC0, 0x33, 0x79, 0x19, 0x39, 0x12, 0x12, 0x22, 0x22, 0x22, 0x22, 0x22, 0x41, 0x7B, 0x57, 0x77");
asm(".byte 0x7C, 0x87, 0xF8, 0x88, 0xB8, 0x33, 0x22, 0x22, 0x57, 0xCC, 0xCC, 0x55, 0x55, 0x66, 0x66, 0x1C");
asm(".byte 0x44, 0x44, 0x23, 0x7B, 0x00, 0xC0, 0x7B, 0x8C, 0x91, 0x11, 0x33, 0x21, 0x22, 0x22, 0x22, 0x22");
asm(".byte 0xB2, 0xB4, 0x78, 0xC7, 0x78, 0x7C, 0x87, 0xF8, 0x78, 0x79, 0xB7, 0x22, 0x82, 0x7C, 0xCC, 0x5C");
asm(".byte 0x55, 0x55, 0x65, 0x66, 0xC6, 0x4B, 0x34, 0x92, 0x0D, 0x00, 0x00, 0xDD, 0xD0, 0x29, 0x71, 0x28");
asm(".byte 0xB3, 0x22, 0x22, 0x22, 0x22, 0x43, 0xC9, 0x97, 0xD8, 0xC7, 0x7C, 0x78, 0xF8, 0x78, 0x98, 0x98");
asm(".byte 0x21, 0xC1, 0x77, 0xC7, 0xCC, 0x88, 0x5C, 0x55, 0x66, 0x56, 0x38, 0x44, 0x73, 0x00, 0x00, 0x00");
asm(".byte 0x00, 0xD0, 0x33, 0x87, 0x88, 0x3B, 0x33, 0x33, 0x33, 0x44, 0x8A, 0xCC, 0x8C, 0x82, 0x7C, 0x7C");
asm(".byte 0x87, 0xF7, 0x78, 0x98, 0x19, 0x21, 0x88, 0x88, 0x77, 0x29, 0x22, 0x12, 0x57, 0x65, 0x66, 0x2C");
asm(".byte 0x44, 0xB4, 0xCD, 0x0C, 0x00, 0x00, 0xA0, 0x73, 0x87, 0x98, 0x77, 0xB8, 0xAB, 0xAA, 0xC8, 0x7C");
asm(".byte 0xC7, 0x87, 0xB9, 0xC9, 0x7C, 0x77, 0x98, 0x78, 0x18, 0x19, 0x22, 0x97, 0x88, 0x18, 0x22, 0x22");
asm(".byte 0x22, 0x82, 0x55, 0x66, 0x95, 0x43, 0x44, 0x34, 0xD3, 0x00, 0x00, 0x27, 0xC8, 0x8D, 0x11, 0x7C");
asm(".byte 0x77, 0xCC, 0xCC, 0xCC, 0xCC, 0x79, 0xDC, 0x78, 0xC8, 0x7C, 0x77, 0xF7, 0x88, 0x99, 0x99, 0xB2");
asm(".byte 0x98, 0x89, 0x29, 0x22, 0x12, 0x22, 0x22, 0x5C, 0x65, 0x86, 0x43, 0x23, 0x91, 0xD9, 0x00, 0x00");
asm(".byte 0xC0, 0x0C, 0x70, 0x93, 0x7C, 0x87, 0xCC, 0x7C, 0xCC, 0x8C, 0x21, 0x00, 0xD0, 0x77, 0xCC, 0x77");
asm(".byte 0xF7, 0x88, 0x8B, 0x87, 0x13, 0x99, 0x99, 0x21, 0x22, 0x6C, 0x28, 0x22, 0x58, 0x55, 0x76, 0x32");
asm(".byte 0x33, 0xD7, 0x00, 0x00, 0x00, 0x00, 0x00, 0xB0, 0x73, 0xC7, 0x11, 0xC7, 0x97, 0x79, 0x8C, 0x21");
asm(".byte 0x07, 0x00, 0x77, 0x7C, 0x77, 0x97, 0xB8, 0x9B, 0x87, 0xB2, 0x19, 0x99, 0x22, 0x92, 0x66, 0x25");
asm(".byte 0x22, 0x51, 0x55, 0x75, 0x33, 0x33, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0xBD, 0xC9, 0x00, 0x12");
asm(".byte 0xD8, 0x27, 0x81, 0x00, 0x19, 0x08, 0x60, 0x87, 0x77, 0x77, 0xF7, 0xA8, 0xBA, 0x78, 0x9B, 0x89");
asm(".byte 0x88, 0x19, 0x11, 0x66, 0x1D, 0x11, 0x58, 0x65, 0x76, 0x3B, 0x33, 0xD8, 0x00, 0x00, 0x00, 0x00");
asm(".byte 0x00, 0xD0, 0x0D, 0x00, 0x91, 0x0D, 0x80, 0xC1, 0x06, 0xD0, 0x00, 0xD6, 0x8B, 0x78, 0x77, 0x97");
asm(".byte 0xA8, 0x4A, 0xB3, 0x33, 0x3B, 0xB2, 0x23, 0x23, 0xB3, 0x23, 0x23, 0xBB, 0xBB, 0xBB, 0x33, 0x33");
asm(".byte 0x34, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xB2, 0xBB, 0xBB, 0xBB");
asm(".byte 0xAB, 0xBA, 0x78, 0x77, 0x97, 0x87, 0xAA, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44");
asm(".byte 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44");
asm(".byte 0x44, 0x44, 0x44, 0x44, 0x44, 0xA4, 0xBA, 0x77, 0x77, 0xF7, 0x77, 0xAA, 0xAA, 0x44, 0x44, 0x44");
asm(".byte 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44");
asm(".byte 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0xAA, 0x8A, 0x78, 0xC7, 0xF7, 0x77");
asm(".byte 0x77, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA");
asm(".byte 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA");
asm(".byte 0x77, 0x77, 0x7C, 0xF7, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC");
asm(".byte 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC");
asm(".byte 0xCC, 0xCC, 0xCC, 0x5C, 0x5C, 0xCC, 0xCC, 0xCC, 0xFC, 0x55, 0x55, 0x55, 0x65, 0x55, 0x55, 0x56");
asm(".byte 0x65, 0x55, 0x56, 0x55, 0x55, 0x55, 0x55, 0x56, 0x65, 0x55, 0x56, 0x65, 0x55, 0x56, 0x65, 0x55");
asm(".byte 0x56, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x56, 0x55, 0x55, 0x55, 0x55, 0x55, 0xF5, 0x66, 0x66");
asm(".byte 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66");
asm(".byte 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66");
asm(".byte 0x66, 0x66, 0xF6");
#if defined (__C30__) && (__C30_VERSION__ <= 325)
asm(".section .const, psv");
#else
asm(".section .const, psv, page");
#endif

/*********************************
 * Bitmap Structure
 * Label: Engine4
 * Description:  73x55 pixels, 4-bits per pixel
 ***********************************/
#if defined (__C30__) && (__C30_VERSION__ <= 325)
asm(".section .const, psv");
#else
asm(".section .const, psv, page");
#endif


extern const char __Engine4[] __attribute__((space(prog), aligned(2)));

const IMAGE_FLASH Engine4 =
{
    (FLASH | IMAGE_MBITMAP | COMP_NONE),
    (FLASH_BYTE *)__Engine4
};
asm(".section .text, code");
asm(".global ___Engine4");
asm(".align 2");
asm("___Engine4:");
/****************************************
 * Bitmap header
 ****************************************/
asm(".byte 0x00");           // Compresssion
asm(".byte 0x04");           // Color Depth
asm(".byte 0x37, 0x00");     // Height
asm(".byte 0x49, 0x00");     // Width
/***********************************
 * Color Palette for the image
 **********************************/
asm(".byte 0x21, 0x40");
asm(".byte 0xA1, 0xC3");
asm(".byte 0x41, 0xAB");
asm(".byte 0xC1, 0x92");
asm(".byte 0x26, 0xC4");
asm(".byte 0x0A, 0xD5");
asm(".byte 0xD1, 0xD5");
asm(".byte 0x80, 0x18");
asm(".byte 0x61, 0x7A");
asm(".byte 0x0B, 0x9C");
asm(".byte 0xE1, 0x61");
asm(".byte 0x66, 0x9B");
asm(".byte 0xE0, 0x30");
asm(".byte 0x60, 0x51");
asm(".byte 0xFF, 0xFF");
asm(".byte 0x00, 0x00");
/********************************
 * Bitmap Image Body
 *********************************/
asm(".byte 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66");
asm(".byte 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66");
asm(".byte 0x66, 0x66, 0x66, 0x66, 0xF6, 0x55, 0x45, 0x44, 0x14, 0x14, 0x14, 0x14, 0x14, 0x14, 0x14, 0x14");
asm(".byte 0x14, 0x14, 0x14, 0x14, 0x14, 0x14, 0x14, 0x14, 0x14, 0x14, 0x14, 0x14, 0x14, 0x14, 0x14, 0x14");
asm(".byte 0x14, 0x14, 0x14, 0x14, 0x14, 0x44, 0x55, 0x55, 0x55, 0xF5, 0x11, 0x22, 0x88, 0xDA, 0xDD, 0xDD");
asm(".byte 0xDD, 0xDD, 0xDD, 0xDD, 0xDD, 0xDD, 0xDD, 0xDD, 0xDD, 0xDD, 0xDD, 0xDD, 0xDD, 0xDD, 0xDD, 0xDD");
asm(".byte 0xDD, 0xDD, 0xDD, 0xDD, 0xDD, 0xDD, 0xDD, 0xDD, 0xDD, 0xAD, 0x8A, 0x23, 0x12, 0x14, 0xF4, 0x22");
asm(".byte 0xA3, 0xCC, 0xC7, 0xC7, 0x77, 0x77, 0x77, 0x77, 0xC7, 0x77, 0x7C, 0xC7, 0x77, 0x7C, 0xC7, 0x77");
asm(".byte 0x77, 0x77, 0x7C, 0xC7, 0x77, 0x7C, 0xC7, 0x77, 0x7C, 0xC7, 0x77, 0x7C, 0xC7, 0x77, 0x7C, 0xCC");
asm(".byte 0x8A, 0x22, 0x12, 0xF1, 0x32, 0xD8, 0xAD, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA");
asm(".byte 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA");
asm(".byte 0xAA, 0xAA, 0xAA, 0xAA, 0xCA, 0xAC, 0x23, 0x21, 0xF1, 0x32, 0xAA, 0xCA, 0xCC, 0xDC, 0x8A, 0xBB");
asm(".byte 0x38, 0x83, 0xDA, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xDD, 0xB8, 0x8B, 0xD8, 0xCC, 0xCC, 0xCC, 0xDC");
asm(".byte 0xCC, 0xCD, 0xDC, 0xCC, 0xCD, 0xDC, 0xCC, 0xCD, 0xCC, 0xAD, 0xDD, 0x28, 0x12, 0xF2, 0x32, 0x88");
asm(".byte 0x77, 0x00, 0x00, 0xCC, 0x9D, 0xB9, 0xAB, 0xCC, 0xCC, 0xCC, 0x7C, 0x77, 0x77, 0x77, 0xBC, 0xBB");
asm(".byte 0xB9, 0xD0, 0xD8, 0x00, 0x70, 0x00, 0x07, 0x70, 0x00, 0x07, 0x70, 0x00, 0x07, 0x00, 0x77, 0xDA");
asm(".byte 0x38, 0x22, 0xF1, 0x32, 0xD2, 0x00, 0x00, 0x00, 0xD0, 0x23, 0x54, 0xA3, 0xAD, 0xDA, 0xDD, 0xCC");
asm(".byte 0xCC, 0x77, 0x77, 0xAC, 0x54, 0x55, 0x56, 0xB9, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00");
asm(".byte 0x00, 0x00, 0x00, 0x70, 0xAA, 0x38, 0x12, 0x72, 0x22, 0xD2, 0x00, 0x00, 0x00, 0x80, 0x14, 0x11");
asm(".byte 0xD8, 0xA8, 0xAA, 0xCD, 0xDD, 0xCC, 0x77, 0x77, 0xD7, 0x53, 0x55, 0x8B, 0xDA, 0x00, 0x00, 0x00");
asm(".byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x8D, 0x38, 0x22, 0xF1, 0x22, 0xD1, 0x00");
asm(".byte 0xD0, 0x64, 0x55, 0x41, 0x21, 0x8A, 0x88, 0xD8, 0x28, 0x22, 0xA2, 0xCC, 0x77, 0x77, 0x48, 0x45");
asm(".byte 0xA1, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x70, 0x8A, 0x38");
asm(".byte 0x22, 0x02, 0x22, 0xD1, 0x00, 0xD0, 0x83, 0x5B, 0x55, 0x31, 0x38, 0x83, 0x3A, 0x11, 0x11, 0x11");
asm(".byte 0xC3, 0x7C, 0x77, 0x1D, 0x44, 0x85, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00");
asm(".byte 0x00, 0x00, 0x00, 0x3A, 0x33, 0x22, 0x02, 0x22, 0xD1, 0x00, 0x00, 0xD0, 0x8D, 0x12, 0x31, 0x33");
asm(".byte 0x83, 0x13, 0x11, 0x11, 0x11, 0x31, 0xC7, 0x77, 0x2C, 0x54, 0x54, 0xBB, 0x08, 0x00, 0x00, 0x00");
asm(".byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x8A, 0x38, 0x22, 0x02, 0x22, 0xD1, 0x00, 0x00");
asm(".byte 0x00, 0x18, 0x22, 0x81, 0x23, 0x33, 0x11, 0x11, 0xA8, 0x11, 0x11, 0xCD, 0x77, 0x3C, 0x54, 0x55");
asm(".byte 0x55, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x70, 0x3A, 0x38, 0x22");
asm(".byte 0x02, 0x22, 0xD2, 0x00, 0x00, 0x00, 0x13, 0x11, 0x31, 0x32, 0x33, 0x11, 0x31, 0x77, 0x1D, 0x11");
asm(".byte 0xC8, 0x7C, 0x37, 0x11, 0x82, 0xDD, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0xAA, 0x00, 0x00, 0x00");
asm(".byte 0x00, 0x00, 0x8A, 0x38, 0x22, 0x02, 0x22, 0xD1, 0x00, 0xA0, 0x55, 0x46, 0x11, 0x31, 0x22, 0x22");
asm(".byte 0x11, 0x81, 0x77, 0x1D, 0x11, 0xC8, 0xCC, 0x2C, 0x11, 0x21, 0x0D, 0x00, 0x00, 0x00, 0x5D, 0x0B");
asm(".byte 0x00, 0x45, 0x0D, 0xD0, 0x0D, 0x00, 0x00, 0x3A, 0x38, 0x22, 0x02, 0x22, 0xD2, 0x00, 0x80, 0x8B");
asm(".byte 0x88, 0x33, 0x24, 0x22, 0x22, 0x11, 0x11, 0xA8, 0x12, 0x11, 0xC8, 0xCC, 0x1C, 0x11, 0x21, 0x00");
asm(".byte 0x00, 0x00, 0x00, 0x4A, 0xD1, 0xA0, 0x25, 0x0D, 0x40, 0xD5, 0x00, 0x70, 0x8A, 0x38, 0x23, 0x02");
asm(".byte 0x22, 0xA2, 0x00, 0xD0, 0xDD, 0x3D, 0x33, 0x24, 0x22, 0x22, 0x12, 0x11, 0x11, 0x11, 0x11, 0xDD");
asm(".byte 0xCC, 0x1D, 0x44, 0x55, 0x89, 0xD0, 0x44, 0x00, 0x1D, 0x31, 0xBD, 0x14, 0x0A, 0x58, 0x03, 0x00");
asm(".byte 0x00, 0x8A, 0x38, 0x22, 0x02, 0x32, 0xD2, 0x00, 0x00, 0x00, 0x8D, 0x33, 0x42, 0x12, 0x22, 0x12");
asm(".byte 0x11, 0x11, 0x11, 0x31, 0xDD, 0xCC, 0x18, 0x32, 0xB8, 0x55, 0x03, 0x44, 0x0B, 0x48, 0x54, 0x66");
asm(".byte 0x45, 0x95, 0x45, 0x08, 0x00, 0x08, 0x8A, 0x38, 0x23, 0x03, 0x22, 0xD2, 0x00, 0x00, 0x00, 0x48");
asm(".byte 0x31, 0x53, 0x22, 0x21, 0x22, 0x11, 0x11, 0x11, 0xA3, 0xDD, 0xDD, 0x14, 0x22, 0xD3, 0xAC, 0x0A");
asm(".byte 0x18, 0x55, 0x66, 0x65, 0x66, 0x56, 0x66, 0x46, 0xD2, 0x90, 0xA5, 0x8A, 0x38, 0x33, 0x02, 0x32");
asm(".byte 0xD2, 0x00, 0x00, 0x40, 0x45, 0xA8, 0xBA, 0x25, 0x21, 0x22, 0x23, 0x22, 0x82, 0xAA, 0xDA, 0x3D");
asm(".byte 0x14, 0x22, 0x03, 0x8B, 0x00, 0x1A, 0x65, 0x66, 0x66, 0x66, 0x66, 0x66, 0x55, 0x55, 0x65, 0xC8");
asm(".byte 0x8A, 0x38, 0x23, 0x02, 0x33, 0xA2, 0x00, 0x00, 0xB8, 0xD8, 0x8D, 0x8A, 0x45, 0x12, 0x22, 0x22");
asm(".byte 0x33, 0x88, 0x88, 0xDA, 0x58, 0x83, 0x41, 0xDB, 0x54, 0xAB, 0x65, 0x65, 0x66, 0x56, 0xB4, 0x4B");
asm(".byte 0x55, 0x55, 0x55, 0x36, 0x0A, 0x8A, 0x88, 0x33, 0x03, 0x32, 0xD2, 0x00, 0x00, 0xA0, 0x0D, 0xAA");
asm(".byte 0x88, 0x58, 0x24, 0x21, 0x22, 0x33, 0x33, 0x88, 0x3A, 0x25, 0x88, 0xBA, 0x46, 0x28, 0x65, 0x66");
asm(".byte 0x66, 0xB5, 0xDA, 0xDD, 0xDD, 0x8A, 0x54, 0x65, 0x14, 0x73, 0x8A, 0x3A, 0x33, 0x02, 0x33, 0xD2");
asm(".byte 0x00, 0x00, 0x00, 0x00, 0x2D, 0xA2, 0x8D, 0x55, 0x22, 0x22, 0x22, 0x33, 0x88, 0x54, 0x32, 0x88");
asm(".byte 0xD8, 0x4A, 0x8B, 0x51, 0x66, 0xB5, 0xCA, 0x77, 0x77, 0x77, 0xC7, 0x3A, 0x54, 0x54, 0x84, 0x83");
asm(".byte 0x88, 0x33, 0x03, 0x33, 0xD2, 0x00, 0x00, 0x00, 0x00, 0x5B, 0xD8, 0xDD, 0x9A, 0x56, 0x24, 0x32");
asm(".byte 0xB3, 0x54, 0x85, 0x3D, 0x32, 0xDA, 0xAD, 0xBD, 0x55, 0x56, 0xD3, 0x77, 0x77, 0x77, 0x77, 0x77");
asm(".byte 0xD7, 0x18, 0x45, 0x95, 0xAB, 0x8A, 0x33, 0x03, 0x33, 0xD2, 0x00, 0x00, 0x00, 0x30, 0x84, 0xAA");
asm(".byte 0xAD, 0xCA, 0xBA, 0x65, 0x65, 0x55, 0xB9, 0xAA, 0xDA, 0x44, 0xB0, 0x95, 0x5B, 0x55, 0x35, 0x7A");
asm(".byte 0x77, 0x77, 0x77, 0x77, 0x77, 0x77, 0x3C, 0x51, 0x35, 0x88, 0x8A, 0x33, 0x03, 0x33, 0xD2, 0x00");
asm(".byte 0x00, 0x00, 0xA0, 0xD8, 0xD0, 0x38, 0xDD, 0xCD, 0xDD, 0xAA, 0xDA, 0xDD, 0xA8, 0xDA, 0x5A, 0x3B");
asm(".byte 0x5B, 0x66, 0x65, 0xA4, 0x77, 0x77, 0x77, 0x77, 0x77, 0x77, 0x77, 0xD7, 0x42, 0x31, 0xA3, 0x88");
asm(".byte 0x33, 0x03, 0x83, 0xD2, 0x00, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x11, 0xDA, 0xDC, 0xDD, 0xDC, 0xDD");
asm(".byte 0xCD, 0x38, 0xDA, 0x8D, 0xA4, 0xAD, 0x52, 0x55, 0xC8, 0x77, 0x77, 0xC7, 0x8D, 0xDA, 0x7C, 0xCC");
asm(".byte 0x7C, 0x18, 0x31, 0xA3, 0x8A, 0x38, 0x03, 0x33, 0xD3, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x34");
asm(".byte 0xDA, 0x3A, 0xCA, 0xDC, 0xD8, 0xDD, 0x43, 0x0A, 0xA0, 0x08, 0x30, 0x44, 0x25, 0x7A, 0x7C, 0xCC");
asm(".byte 0x18, 0x11, 0x11, 0xD3, 0xCC, 0xCC, 0x2C, 0x21, 0xA2, 0x8A, 0x33, 0x03, 0x83, 0xD2, 0x00, 0x00");
asm(".byte 0x00, 0x00, 0x00, 0x30, 0x83, 0x0A, 0x13, 0xA3, 0x8D, 0x32, 0xDD, 0x48, 0x03, 0x00, 0x00, 0xB0");
asm(".byte 0x55, 0x25, 0xCD, 0xCC, 0x8C, 0x11, 0x11, 0x11, 0x21, 0xDD, 0xDD, 0x3C, 0x31, 0xA3, 0x8A, 0x38");
asm(".byte 0x08, 0x83, 0xD3, 0x00, 0x00, 0x00, 0x00, 0x58, 0x0D, 0x8D, 0xB5, 0x13, 0xD3, 0x30, 0x21, 0x00");
asm(".byte 0x3A, 0x0B, 0x00, 0x54, 0x56, 0x55, 0x34, 0xCC, 0xCD, 0x1A, 0x11, 0x21, 0x11, 0x11, 0xD8, 0xDD");
asm(".byte 0x8D, 0x81, 0xA8, 0x8A, 0x38, 0x03, 0x83, 0xD2, 0x00, 0x00, 0x00, 0x00, 0x5A, 0x09, 0xA0, 0x44");
asm(".byte 0x38, 0x58, 0x8B, 0x32, 0x00, 0xA0, 0x0D, 0xD0, 0xBB, 0x4B, 0x44, 0x31, 0xDD, 0xDD, 0x13, 0x11");
asm(".byte 0x78, 0x2C, 0x11, 0xA2, 0xAA, 0xAD, 0x81, 0xA3, 0x8A, 0x88, 0x08, 0x83, 0xD3, 0x00, 0xA0, 0x85");
asm(".byte 0x00, 0xBA, 0xD5, 0x3D, 0x54, 0xD0, 0x42, 0xDB, 0xAA, 0x00, 0x00, 0x00, 0x00, 0xD0, 0x3D, 0x11");
asm(".byte 0x31, 0xAD, 0xDD, 0x12, 0x11, 0x7C, 0x37, 0x11, 0x81, 0x8A, 0x8A, 0x31, 0xA3, 0xAA, 0x88, 0x03");
asm(".byte 0x88, 0xD3, 0x00, 0xA0, 0x64, 0x0D, 0x23, 0x56, 0x45, 0x65, 0xB5, 0x41, 0x03, 0xD0, 0x08, 0x00");
asm(".byte 0x00, 0x00, 0x00, 0x10, 0x11, 0x21, 0xAA, 0xAA, 0x12, 0x11, 0x78, 0x2C, 0x11, 0x81, 0x88, 0x88");
asm(".byte 0x84, 0xA8, 0x8A, 0x88, 0x08, 0x88, 0xD3, 0x00, 0x00, 0x5A, 0x46, 0x15, 0x66, 0x56, 0x65, 0x66");
asm(".byte 0x54, 0x0B, 0x1D, 0x85, 0x00, 0x00, 0x00, 0x00, 0x4D, 0x45, 0x14, 0x8A, 0x88, 0x13, 0x11, 0x21");
asm(".byte 0x11, 0x11, 0x32, 0x33, 0x38, 0xD4, 0xA8, 0xAA, 0x88, 0x08, 0x88, 0xA3, 0x0A, 0x00, 0x38, 0x56");
asm(".byte 0x55, 0x55, 0x56, 0x66, 0x66, 0x66, 0x96, 0x41, 0xD1, 0x00, 0x00, 0x00, 0x5A, 0x66, 0x14, 0x11");
asm(".byte 0x83, 0x88, 0x13, 0x11, 0x11, 0x11, 0x11, 0x32, 0x23, 0x48, 0xA2, 0xA8, 0xAA, 0x88, 0x08, 0x88");
asm(".byte 0x83, 0x6B, 0x88, 0x11, 0x54, 0x55, 0x54, 0x44, 0x54, 0x66, 0x66, 0x66, 0x14, 0x0A, 0x00, 0x00");
asm(".byte 0x00, 0x92, 0xA3, 0x28, 0x12, 0x32, 0x33, 0x33, 0x11, 0x11, 0x11, 0x21, 0x22, 0x22, 0x53, 0xA2");
asm(".byte 0xA8, 0xAD, 0x88, 0x08, 0x88, 0xA3, 0x4D, 0x56, 0x41, 0x51, 0x24, 0xA3, 0xDA, 0xAD, 0x28, 0x65");
asm(".byte 0x66, 0x55, 0x0A, 0x80, 0x0D, 0x00, 0xDD, 0xDD, 0x12, 0x12, 0x31, 0x23, 0x22, 0x22, 0x11, 0x11");
asm(".byte 0x22, 0x22, 0x32, 0x44, 0xDA, 0xA3, 0xAD, 0x88, 0x08, 0xA8, 0xD3, 0xAC, 0x5B, 0x11, 0x11, 0xD3");
asm(".byte 0x7C, 0x77, 0x77, 0xDC, 0x4A, 0x66, 0x66, 0x36, 0x54, 0x04, 0x00, 0x00, 0x00, 0x18, 0x21, 0x44");
asm(".byte 0x23, 0x22, 0x22, 0x22, 0x22, 0x21, 0x11, 0x22, 0x35, 0xDA, 0xAA, 0xAD, 0x8A, 0x08, 0xA8, 0xD3");
asm(".byte 0x20, 0x12, 0x15, 0xA1, 0xCC, 0xCC, 0xCC, 0x77, 0x77, 0xD7, 0x63, 0x66, 0x56, 0x14, 0x0A, 0x00");
asm(".byte 0x00, 0xD0, 0x55, 0x83, 0x43, 0x24, 0x21, 0x11, 0x11, 0x11, 0x11, 0x11, 0x62, 0xA4, 0xDA, 0xA8");
asm(".byte 0xAD, 0xA8, 0x08, 0xA8, 0x83, 0x28, 0x21, 0x11, 0xCA, 0xDD, 0xCD, 0xCC, 0xCC, 0x77, 0x77, 0x2D");
asm(".byte 0x66, 0x46, 0xD2, 0x00, 0x00, 0x00, 0x6A, 0xA5, 0x38, 0x33, 0x45, 0x12, 0x11, 0x11, 0x11, 0x11");
asm(".byte 0xB1, 0xB6, 0x8D, 0xD3, 0xAA, 0xAD, 0xAA, 0x08, 0xA8, 0x48, 0x14, 0x11, 0x81, 0xAD, 0xDD, 0xCD");
asm(".byte 0xCC, 0x7C, 0x7C, 0x77, 0xD7, 0x6B, 0x65, 0x05, 0x00, 0x00, 0x00, 0xB3, 0xDD, 0x38, 0x23, 0x48");
asm(".byte 0x45, 0x12, 0x11, 0x11, 0x41, 0x65, 0xD3, 0xDA, 0xB3, 0xD3, 0xAD, 0x8A, 0x0A, 0xA8, 0x88, 0x48");
asm(".byte 0x11, 0xD2, 0xAA, 0xDA, 0xAD, 0x8A, 0xCA, 0x7C, 0x77, 0xC7, 0x58, 0x66, 0x85, 0xB8, 0x0A, 0x00");
asm(".byte 0xD0, 0x00, 0x2D, 0x81, 0xAA, 0x5B, 0x55, 0x45, 0x54, 0x56, 0xA9, 0xDA, 0xDA, 0x8A, 0xD2, 0xAD");
asm(".byte 0xAA, 0x08, 0xA8, 0x88, 0x3A, 0x42, 0xA8, 0x88, 0xAA, 0x13, 0x11, 0x21, 0xCA, 0x7C, 0x77, 0x4D");
asm(".byte 0x66, 0x66, 0x55, 0x04, 0x00, 0x00, 0x00, 0x5A, 0xDB, 0x88, 0xA8, 0xBA, 0x59, 0xB9, 0xA3, 0xDD");
asm(".byte 0x8A, 0xAA, 0xDD, 0xD8, 0xAD, 0xAA, 0x0A, 0xA8, 0x38, 0x38, 0x41, 0x3A, 0x88, 0x2A, 0x11, 0x11");
asm(".byte 0x11, 0x81, 0xC7, 0x77, 0x3C, 0x55, 0x15, 0x83, 0x0A, 0x00, 0x00, 0x00, 0x45, 0xAA, 0x88, 0xD3");
asm(".byte 0xDA, 0xCD, 0xDD, 0xDD, 0xDD, 0x2A, 0x02, 0x00, 0xAA, 0xAD, 0xAA, 0x0A, 0xA8, 0x33, 0x33, 0x24");
asm(".byte 0x38, 0x88, 0x13, 0x11, 0x21, 0x11, 0x11, 0xCD, 0x7C, 0xA7, 0x54, 0x45, 0x0D, 0x00, 0x00, 0x00");
asm(".byte 0xA0, 0xAB, 0x0D, 0x4A, 0xD3, 0xAA, 0xD8, 0xDD, 0xAA, 0xDD, 0x28, 0xA1, 0x70, 0xAA, 0xDD, 0xAA");
asm(".byte 0x0A, 0x88, 0x3B, 0x38, 0xB4, 0x33, 0x33, 0x11, 0x11, 0x7D, 0x1A, 0x11, 0xC8, 0xCC, 0x87, 0x54");
asm(".byte 0x55, 0x00, 0x00, 0x00, 0x00, 0x00, 0xDD, 0x00, 0x5A, 0xA8, 0x8D, 0xA2, 0xAD, 0x23, 0x08, 0x3D");
asm(".byte 0x31, 0x00, 0xAD, 0xAD, 0xAA, 0x0A, 0xB8, 0x8B, 0x8D, 0x24, 0x33, 0x33, 0x11, 0x31, 0x77, 0x1C");
asm(".byte 0x11, 0xC3, 0xCC, 0xAC, 0x64, 0x65, 0x89, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1B, 0x08, 0x20");
asm(".byte 0x81, 0xDD, 0x12, 0x03, 0xD0, 0xD8, 0x70, 0x8A, 0xAA, 0xAA, 0x0A, 0x98, 0x49, 0xAA, 0x3B, 0x38");
asm(".byte 0x88, 0x23, 0x32, 0x77, 0x2D, 0x22, 0xC8, 0x7C, 0xA7, 0x42, 0x45, 0x59, 0x09, 0x00, 0x00, 0x00");
asm(".byte 0x00, 0x00, 0xAA, 0x70, 0x80, 0xD2, 0x70, 0x3D, 0x0A, 0x07, 0x00, 0x00, 0x8B, 0xAA, 0xAA, 0x0A");
asm(".byte 0xB8, 0x69, 0xB5, 0x45, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0xB4, 0xBB, 0x4B, 0x44, 0xB4");
asm(".byte 0xB4, 0x44, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0x4B, 0xB4, 0xBB, 0x4B, 0xB4, 0xBB, 0xBB");
asm(".byte 0x4B, 0xB9, 0xA8, 0xAA, 0x0A, 0xBA, 0x99, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66");
asm(".byte 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66");
asm(".byte 0x66, 0x66, 0x66, 0x66, 0x66, 0x96, 0xB9, 0xAA, 0xDA, 0x0A, 0xAA, 0x9B, 0x99, 0x66, 0x66, 0x66");
asm(".byte 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66");
asm(".byte 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x99, 0xB9, 0xAA, 0xAA, 0x0A, 0xAA");
asm(".byte 0xAA, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99");
asm(".byte 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0xB9");
asm(".byte 0xDA, 0xAA, 0xDA, 0x0A, 0xDD, 0xDD, 0xDD, 0xDD, 0xDD, 0xDD, 0xDD, 0xDD, 0xDD, 0xDD, 0xDD, 0xDD");
asm(".byte 0xDD, 0xDD, 0xDD, 0xDD, 0xDD, 0xDD, 0xDD, 0xDD, 0xDD, 0xDD, 0xDD, 0xDD, 0xDD, 0xDD, 0xDD, 0xDD");
asm(".byte 0xDD, 0xDD, 0xDD, 0xDD, 0xDC, 0xDD, 0xDD, 0xDD, 0x0D, 0xCC, 0xCC, 0xC7, 0x7C, 0x7C, 0x7C, 0x7C");
asm(".byte 0x7C, 0x7C, 0x7C, 0x7C, 0xCC, 0xC7, 0x7C, 0xCC, 0xC7, 0x7C, 0xCC, 0xC7, 0xCC, 0xC7, 0xCC, 0xC7");
asm(".byte 0xCC, 0xCC, 0xC7, 0xCC, 0xCC, 0xC7, 0xCC, 0xC7, 0xC7, 0xCC, 0xCC, 0xC7, 0xCC, 0x0C, 0x77, 0x77");
asm(".byte 0x77, 0x77, 0x77, 0x77, 0x77, 0x77, 0x77, 0x77, 0x77, 0x77, 0x77, 0x77, 0x77, 0x77, 0x77, 0x77");
asm(".byte 0x77, 0x77, 0x77, 0x77, 0x77, 0x77, 0x77, 0x77, 0x77, 0x77, 0x77, 0x77, 0x77, 0x77, 0x77, 0x77");
asm(".byte 0x77, 0x77, 0x07");
#if defined (__C30__) && (__C30_VERSION__ <= 325)
asm(".section .const, psv");
#else
asm(".section .const, psv, page");
#endif

/*********************************
 * Bitmap Structure
 * Label: mchpLogo
 * Description:  152x40 pixels, 4-bits per pixel
 ***********************************/
#if defined (__C30__) && (__C30_VERSION__ <= 325)
asm(".section .const, psv");
#else
asm(".section .const, psv, page");
#endif


extern const char __mchpLogo[] __attribute__((space(prog), aligned(2)));

const IMAGE_FLASH mchpLogo =
{
    (FLASH | IMAGE_MBITMAP | COMP_NONE),
    (FLASH_BYTE *)__mchpLogo
};
asm(".section .text, code");
asm(".global ___mchpLogo");
asm(".align 2");
asm("___mchpLogo:");
/****************************************
 * Bitmap header
 ****************************************/
asm(".byte 0x00");           // Compresssion
asm(".byte 0x04");           // Color Depth
asm(".byte 0x28, 0x00");     // Height
asm(".byte 0x98, 0x00");     // Width
/***********************************
 * Color Palette for the image
 **********************************/
asm(".byte 0x00, 0x00");
asm(".byte 0x00, 0x80");
asm(".byte 0x00, 0x04");
asm(".byte 0x00, 0x84");
asm(".byte 0x10, 0x00");
asm(".byte 0x10, 0x80");
asm(".byte 0x10, 0x04");
asm(".byte 0x10, 0x84");
asm(".byte 0x18, 0xC6");
asm(".byte 0x00, 0xF8");
asm(".byte 0xE0, 0x07");
asm(".byte 0xE0, 0xFF");
asm(".byte 0x1F, 0x00");
asm(".byte 0x1F, 0xF8");
asm(".byte 0xFF, 0x07");
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
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x8F, 0x99, 0x99, 0x99, 0x99, 0x89");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x98, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0xFF, 0x7F, 0x70");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0x98, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0xF9, 0x7F, 0x70, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x9F, 0x99, 0x99, 0x99, 0x99");
asm(".byte 0x99, 0x99, 0x99, 0x99, 0x99, 0x89, 0x7F, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99");
asm(".byte 0x99, 0x99, 0xFF, 0xF8, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0x9F, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0xF9, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x99, 0x99");
asm(".byte 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x89, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0x00, 0x80, 0xFF, 0xFF, 0xFF, 0xFF, 0x07, 0xF0, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x9F, 0x99, 0x99, 0x99, 0x89, 0x7F, 0x99");
asm(".byte 0x99, 0x99, 0x99, 0x99, 0xFF, 0x99, 0x99, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x7F, 0x00, 0x00");
asm(".byte 0xFF, 0xFF, 0xFF, 0x7F, 0x00, 0x70, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x98, 0x99, 0x99, 0x99, 0xF8, 0xFF, 0x99, 0x99, 0x99, 0x99, 0xF9");
asm(".byte 0xFF, 0x98, 0x99, 0xF9, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x7F, 0x00, 0x00, 0xF8, 0xFF, 0xFF, 0x0F");
asm(".byte 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0x99, 0x99, 0x99, 0x99, 0xFF, 0xFF, 0x9F, 0x99, 0x99, 0x99, 0xF8, 0xFF, 0x9F, 0x99, 0x89");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x0F, 0x00, 0x00, 0xF7, 0xFF, 0xFF, 0x07, 0x00, 0x00, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x7F, 0x99, 0x99, 0x99");
asm(".byte 0xF9, 0xFF, 0xFF, 0x8F, 0x99, 0x99, 0x99, 0xFF, 0xFF, 0xFF, 0x99, 0x99, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0x0F, 0x00, 0x00, 0xF0, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0xFF, 0x08, 0x00, 0xFF, 0x7F, 0x00");
asm(".byte 0x00, 0x00, 0x00, 0xF7, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x77, 0xFF, 0xFF, 0x07, 0x00, 0x00, 0x00");
asm(".byte 0x87, 0xFF, 0xFF, 0x07, 0x00, 0x00, 0x00, 0x70, 0x8F, 0x00, 0xF7, 0xFF, 0xFF, 0x07, 0x70, 0x7F");
asm(".byte 0x00, 0xF7, 0x00, 0x00, 0x00, 0x00, 0x70, 0xF8, 0x9F, 0x99, 0x99, 0x99, 0xF8, 0xFF, 0xFF, 0xFF");
asm(".byte 0x99, 0x99, 0xF9, 0xFF, 0xFF, 0xFF, 0x98, 0x99, 0xF7, 0xFF, 0xFF, 0xFF, 0xFF, 0x0F, 0x00, 0x00");
asm(".byte 0x70, 0xFF, 0x8F, 0x00, 0x00, 0x00, 0xFF, 0x08, 0x00, 0xFF, 0x07, 0x00, 0x00, 0x00, 0x00, 0x70");
asm(".byte 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF7, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF8, 0x0F, 0x00");
asm(".byte 0x00, 0x00, 0x00, 0x00, 0x8F, 0x00, 0xF0, 0xFF, 0xFF, 0x07, 0x70, 0x0F, 0x00, 0xF7, 0x00, 0x00");
asm(".byte 0x00, 0x00, 0x00, 0x80, 0x98, 0x99, 0x99, 0x99, 0xFF, 0xFF, 0xFF, 0xFF, 0x98, 0x99, 0xF8, 0xFF");
asm(".byte 0xFF, 0xFF, 0x9F, 0x99, 0x89, 0xFF, 0xFF, 0xFF, 0xFF, 0x0F, 0x00, 0x00, 0x00, 0xFF, 0x7F, 0x00");
asm(".byte 0x00, 0x00, 0xF8, 0x08, 0x00, 0x8F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x70, 0x00, 0x00, 0x00, 0x00");
asm(".byte 0x00, 0x00, 0xF0, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF7, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00");
asm(".byte 0x88, 0x00, 0xF0, 0xFF, 0xFF, 0x07, 0x70, 0x0F, 0x00, 0xF7, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00");
asm(".byte 0x99, 0x99, 0x99, 0x99, 0xF8, 0xFF, 0xFF, 0xFF, 0x7F, 0x99, 0xF9, 0xFF, 0xFF, 0xFF, 0xFF, 0x99");
asm(".byte 0x99, 0xFF, 0xFF, 0xFF, 0xFF, 0x08, 0x00, 0x00, 0x00, 0xF8, 0x0F, 0x00, 0x00, 0x00, 0xF8, 0x08");
asm(".byte 0x00, 0x8F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x70, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF0, 0x07");
asm(".byte 0x00, 0x00, 0x00, 0x00, 0x00, 0xF0, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x88, 0x00, 0xF0, 0xFF");
asm(".byte 0xFF, 0x07, 0x70, 0x0F, 0x00, 0xF7, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x99, 0x99, 0x99, 0x99");
asm(".byte 0xF9, 0xFF, 0xFF, 0xFF, 0xFF, 0x99, 0x99, 0xFF, 0xFF, 0xFF, 0xFF, 0x98, 0x99, 0xF8, 0xFF, 0xFF");
asm(".byte 0xFF, 0x08, 0x00, 0x07, 0x00, 0xF7, 0x07, 0x00, 0x07, 0x00, 0xF8, 0x08, 0x00, 0x7F, 0x00, 0x80");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0x0F, 0x00, 0xFF, 0xFF, 0x8F, 0x00, 0xF0, 0x00, 0x00, 0xFF, 0xFF, 0x7F");
asm(".byte 0x00, 0xF0, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x8F, 0x00, 0xF0, 0xFF, 0xFF, 0x07, 0x70, 0x0F");
asm(".byte 0x00, 0xF7, 0x00, 0xF0, 0xFF, 0xFF, 0x08, 0x00, 0x99, 0x99, 0x89, 0x99, 0x99, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0x98, 0x99, 0xF8, 0xFF, 0xFF, 0xFF, 0x9F, 0x99, 0xF9, 0xFF, 0xFF, 0xFF, 0x08, 0x00, 0x0F");
asm(".byte 0x00, 0xF0, 0x00, 0x00, 0x0F, 0x00, 0xF7, 0x08, 0x00, 0x7F, 0x00, 0xF0, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0x0F, 0x00, 0xFF, 0xFF, 0xFF, 0x00, 0xF0, 0x00, 0x70, 0xFF, 0xFF, 0x8F, 0x00, 0xF0, 0x00, 0x70");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0x8F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x70, 0x0F, 0x00, 0xF7, 0x00, 0xF0");
asm(".byte 0xFF, 0xFF, 0x0F, 0x00, 0x99, 0x99, 0xF9, 0x9F, 0x99, 0xF8, 0xFF, 0xFF, 0xFF, 0x9F, 0x99, 0xF9");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0x99, 0x99, 0xFF, 0xFF, 0xFF, 0x07, 0x00, 0x7F, 0x00, 0x70, 0x00, 0x70");
asm(".byte 0x0F, 0x00, 0xF7, 0x08, 0x00, 0x7F, 0x00, 0xF0, 0xFF, 0xFF, 0xFF, 0xFF, 0x0F, 0x00, 0x88, 0x88");
asm(".byte 0x78, 0x00, 0xF0, 0x00, 0x70, 0xFF, 0xFF, 0xFF, 0x00, 0xF0, 0x00, 0x70, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0x8F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x70, 0x0F, 0x00, 0xF7, 0x00, 0xF0, 0xFF, 0xFF, 0x08, 0x00");
asm(".byte 0x99, 0x99, 0xFF, 0x8F, 0x99, 0xF9, 0xFF, 0xFF, 0xFF, 0xFF, 0x99, 0x89, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0x98, 0x99, 0xF8, 0xFF, 0xFF, 0x07, 0x00, 0x8F, 0x00, 0x00, 0x00, 0x80, 0x0F, 0x00, 0xF0, 0x08");
asm(".byte 0x00, 0x7F, 0x00, 0xF0, 0xFF, 0xFF, 0xFF, 0xFF, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF7, 0x00");
asm(".byte 0x70, 0xFF, 0xFF, 0xFF, 0x00, 0xF0, 0x00, 0x70, 0xFF, 0xFF, 0xFF, 0xFF, 0x8F, 0x00, 0x00, 0x00");
asm(".byte 0x00, 0x00, 0x70, 0x0F, 0x00, 0xF7, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x99, 0x89, 0xFF, 0xFF");
asm(".byte 0x99, 0x99, 0xFF, 0xFF, 0xFF, 0xFF, 0x98, 0x99, 0xFF, 0xFF, 0xFF, 0xFF, 0x9F, 0x99, 0xF9, 0xFF");
asm(".byte 0xFF, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0xF0, 0x7F, 0x00, 0xF0, 0x08, 0x00, 0x7F, 0x00, 0xF0");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF8, 0x00, 0x70, 0xFF, 0xFF, 0xFF");
asm(".byte 0x00, 0xF0, 0x00, 0x70, 0xFF, 0xFF, 0xFF, 0xFF, 0x8F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x70, 0x0F");
asm(".byte 0x00, 0xF7, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x99, 0xF7, 0xFF, 0xFF, 0x9F, 0x99, 0xF8, 0xFF");
asm(".byte 0xFF, 0xFF, 0x9F, 0x99, 0xF9, 0xFF, 0xFF, 0xFF, 0x8F, 0x99, 0x89, 0xFF, 0xFF, 0x00, 0x00, 0xFF");
asm(".byte 0x07, 0x00, 0x00, 0xF7, 0x7F, 0x00, 0xF0, 0x08, 0x00, 0x7F, 0x00, 0xF0, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF7, 0x00, 0x70, 0xFF, 0xFF, 0x8F, 0x00, 0xF0, 0x00, 0x70");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0x8F, 0x00, 0xF0, 0xFF, 0xFF, 0x07, 0x70, 0x0F, 0x00, 0xF7, 0x00, 0x00");
asm(".byte 0x00, 0x00, 0x00, 0x80, 0x99, 0xFF, 0xFF, 0xFF, 0x8F, 0x99, 0xF9, 0xFF, 0xFF, 0xFF, 0xFF, 0x99");
asm(".byte 0x89, 0xFF, 0xFF, 0xFF, 0xFF, 0x99, 0xF9, 0xFF, 0xFF, 0x00, 0x70, 0xFF, 0x0F, 0x00, 0x00, 0xF8");
asm(".byte 0x7F, 0x00, 0xF0, 0x08, 0x00, 0x7F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x70, 0x0F, 0x00, 0x77, 0x77");
asm(".byte 0x77, 0x00, 0xF0, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF0, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00");
asm(".byte 0x88, 0x00, 0xF0, 0xFF, 0xFF, 0x07, 0x70, 0x0F, 0x00, 0xF7, 0x00, 0x70, 0x77, 0x77, 0x77, 0xF8");
asm(".byte 0xF9, 0xFF, 0xFF, 0xFF, 0xFF, 0x99, 0x89, 0xFF, 0xFF, 0xFF, 0xFF, 0x98, 0x99, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0x9F, 0xF9, 0xFF, 0xFF, 0x00, 0x70, 0xFF, 0x7F, 0x00, 0x70, 0xFF, 0x7F, 0x00, 0xF0, 0x08");
asm(".byte 0x00, 0x8F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x70, 0x0F, 0x00, 0xFF, 0xFF, 0x8F, 0x00, 0xF0, 0x07");
asm(".byte 0x00, 0x00, 0x00, 0x00, 0x00, 0xF0, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x88, 0x00, 0xF0, 0xFF");
asm(".byte 0xFF, 0x07, 0x70, 0x0F, 0x00, 0xF7, 0x00, 0xF0, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0x8F, 0x99, 0x99, 0xF8, 0xFF, 0xFF, 0xFF, 0x9F, 0x99, 0xF9, 0xFF, 0xFF, 0xFF, 0x8F, 0xF8, 0xFF");
asm(".byte 0xFF, 0x00, 0x70, 0xFF, 0xFF, 0x00, 0x80, 0xFF, 0x8F, 0x00, 0x80, 0x08, 0x00, 0xFF, 0x00, 0x00");
asm(".byte 0x00, 0x00, 0x00, 0x70, 0x0F, 0x00, 0xFF, 0xFF, 0x8F, 0x00, 0xF0, 0x0F, 0x00, 0x00, 0x00, 0x00");
asm(".byte 0x00, 0xF8, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x88, 0x00, 0xF0, 0xFF, 0xFF, 0x07, 0x70, 0x0F");
asm(".byte 0x00, 0xF7, 0x00, 0xF0, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x9F, 0x99, 0x99, 0xF9");
asm(".byte 0xFF, 0xFF, 0xFF, 0x9F, 0x99, 0x89, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x8F, 0x00, 0x80, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0x8F, 0x00, 0x80, 0x08, 0x00, 0xFF, 0x7F, 0x00, 0x00, 0x00, 0x00, 0xF7");
asm(".byte 0x0F, 0x00, 0xFF, 0xFF, 0x8F, 0x00, 0xF7, 0x8F, 0x07, 0x00, 0x00, 0x00, 0x80, 0xFF, 0x8F, 0x07");
asm(".byte 0x00, 0x00, 0x00, 0x70, 0x8F, 0x00, 0xF7, 0xFF, 0xFF, 0x07, 0x70, 0x7F, 0x00, 0xF7, 0x00, 0xF0");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x99, 0x99, 0x99, 0x89, 0xFF, 0xFF, 0xFF, 0x99");
asm(".byte 0x99, 0x99, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0x8F, 0x99, 0x99, 0x99, 0x99, 0xFF, 0xFF, 0x8F, 0x99, 0x99, 0x99, 0xF9, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x98");
asm(".byte 0x99, 0x99, 0x99, 0x99, 0xF9, 0xFF, 0x9F, 0x99, 0x99, 0x99, 0x89, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x99, 0x99, 0x99, 0x99, 0x99");
asm(".byte 0x89, 0xFF, 0x99, 0x99, 0x99, 0x99, 0x99, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x9F, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x98, 0x99, 0x99");
asm(".byte 0x99, 0x99, 0x99, 0xF8, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0x9F, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0xF9");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x99");
asm(".byte 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0xF9, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x9F, 0x99, 0x99, 0x99, 0x99");
asm(".byte 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x98, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99");
asm(".byte 0x99, 0x99, 0xF8, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x98, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0xF8, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF, 0x8F, 0x99, 0x99, 0x99, 0x99, 0x89, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF");
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
#if defined (__C30__) && (__C30_VERSION__ <= 325)
asm(".section .const, psv");
#else
asm(".section .const, psv, page");
#endif

/*********************************
 * Bitmap Structure
 * Label: mchpIcon0
 * Description:  32x32 pixels, 1-bits per pixel
 ***********************************/
#if defined (__C30__) && (__C30_VERSION__ <= 325)
asm(".section .const, psv");
#else
asm(".section .const, psv, page");
#endif


extern const char __mchpIcon0[] __attribute__((space(prog), aligned(2)));

const IMAGE_FLASH mchpIcon0 =
{
    (FLASH | IMAGE_MBITMAP | COMP_NONE),
    (FLASH_BYTE *)__mchpIcon0
};
asm(".section .text, code");
asm(".global ___mchpIcon0");
asm(".align 2");
asm("___mchpIcon0:");
/****************************************
 * Bitmap header
 ****************************************/
asm(".byte 0x00");           // Compresssion
asm(".byte 0x01");           // Color Depth
asm(".byte 0x20, 0x00");     // Height
asm(".byte 0x20, 0x00");     // Width
/***********************************
 * Color Palette for the image
 **********************************/
asm(".byte 0x00, 0xF8");
asm(".byte 0xFF, 0xFF");
/********************************
 * Bitmap Image Body
 *********************************/
asm(".byte 0xFF, 0x3F, 0xFC, 0xFF, 0xFF, 0x03, 0xC0, 0xFF, 0xFF, 0x00, 0x80, 0xFF, 0x7F, 0x00, 0x80, 0xFF");
asm(".byte 0x1F, 0x00, 0x00, 0xFF, 0x0F, 0x00, 0x00, 0xFE, 0x0F, 0x00, 0x00, 0xFE, 0x07, 0x1C, 0x70, 0xFC");
asm(".byte 0x03, 0x1E, 0xF0, 0xF8, 0x03, 0x3E, 0xF8, 0xF9, 0x01, 0x7F, 0xFC, 0xF1, 0x81, 0x7F, 0xFC, 0xE3");
asm(".byte 0x81, 0xFF, 0xFC, 0xE3, 0x00, 0xFF, 0xF8, 0xC7, 0x20, 0xFF, 0xF9, 0x8F, 0x70, 0xFE, 0xF3, 0x8F");
asm(".byte 0x78, 0xFC, 0xE3, 0x1F, 0xF8, 0xFC, 0xE7, 0x3F, 0xFC, 0xF9, 0xC7, 0x3F, 0xFF, 0xF1, 0xCF, 0xFF");
asm(".byte 0xFF, 0xE3, 0x8F, 0xFF, 0xFF, 0xE1, 0x07, 0xFF, 0xFF, 0xC0, 0x07, 0xFF, 0x7F, 0xC0, 0x03, 0xFE");
asm(".byte 0x7F, 0x80, 0x01, 0xFC, 0x3F, 0x00, 0x00, 0xFC, 0x0F, 0x00, 0x00, 0xF0, 0x1F, 0x00, 0x00, 0xF8");
asm(".byte 0x7F, 0x00, 0x00, 0xFE, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x03, 0xC0, 0xFF, 0xFF, 0x3F, 0xFC, 0xFF");
#if defined (__C30__) && (__C30_VERSION__ <= 325)
asm(".section .const, psv");
#else
asm(".section .const, psv, page");
#endif

/*********************************
 * Bitmap Structure
 * Label: JpegIcon
 * Description:  16x16 pixels, 4-bits per pixel
 ***********************************/
#if defined (__C30__) && (__C30_VERSION__ <= 325)
asm(".section .const, psv");
#else
asm(".section .const, psv, page");
#endif


extern const char __JpegIcon[] __attribute__((space(prog), aligned(2)));

const IMAGE_FLASH JpegIcon =
{
    (FLASH | IMAGE_MBITMAP | COMP_NONE),
    (FLASH_BYTE *)__JpegIcon
};
asm(".section .text, code");
asm(".global ___JpegIcon");
asm(".align 2");
asm("___JpegIcon:");
/****************************************
 * Bitmap header
 ****************************************/
asm(".byte 0x00");           // Compresssion
asm(".byte 0x04");           // Color Depth
asm(".byte 0x10, 0x00");     // Height
asm(".byte 0x10, 0x00");     // Width
/***********************************
 * Color Palette for the image
 **********************************/
asm(".byte 0xF9, 0x74");
asm(".byte 0x7C, 0xBE");
asm(".byte 0x3E, 0xDF");
asm(".byte 0x9F, 0xEF");
asm(".byte 0xF3, 0xAD");
asm(".byte 0x49, 0xFF");
asm(".byte 0xE4, 0xDD");
asm(".byte 0xC5, 0xCB");
asm(".byte 0xB7, 0xF6");
asm(".byte 0x1A, 0xF7");
asm(".byte 0x7C, 0xFF");
asm(".byte 0xC0, 0xCA");
asm(".byte 0x6F, 0xE5");
asm(".byte 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF");
asm(".byte 0x00, 0x00");
/********************************
 * Bitmap Image Body
 *********************************/
asm(".byte 0xEE, 0xEE, 0xEE, 0xCE, 0x88, 0x88, 0x88, 0xEC, 0xCE, 0xB7, 0xBB, 0xC7, 0x00, 0x00, 0x00, 0xEC");
asm(".byte 0xBB, 0xBB, 0xBB, 0xCB, 0x00, 0x00, 0x04, 0xCC, 0xBB, 0xBB, 0xBB, 0xCB, 0x00, 0x50, 0x05, 0xBC");
asm(".byte 0xBB, 0x5B, 0x55, 0xC5, 0x00, 0x50, 0x05, 0xBC, 0xBB, 0x5B, 0x55, 0xC5, 0x00, 0x00, 0x00, 0xBC");
asm(".byte 0xBB, 0x5B, 0x55, 0xC5, 0x00, 0x0B, 0x00, 0xBC, 0xBB, 0x5B, 0x55, 0xC5, 0x70, 0x0B, 0x00, 0xBC");
asm(".byte 0xBB, 0x5B, 0x55, 0xC5, 0xB0, 0xBB, 0x07, 0xBC, 0xBB, 0x5B, 0x65, 0xC6, 0xBB, 0xBB, 0xBB, 0xBC");
asm(".byte 0xBB, 0x5B, 0x66, 0xC6, 0xEE, 0xEE, 0xEE, 0xBC, 0xBB, 0x6B, 0x66, 0x66, 0x66, 0x66, 0x66, 0xB6");
asm(".byte 0xBB, 0x6B, 0x66, 0x66, 0x66, 0x66, 0x66, 0xB6, 0xBB, 0x6B, 0x66, 0x66, 0x66, 0x66, 0xBB, 0xEB");
asm(".byte 0xB8, 0x66, 0xB6, 0xBB, 0xCB, 0xEE, 0xEE, 0xEE, 0xCE, 0xEC, 0xEE, 0xEE, 0xEE, 0xEE, 0xEE, 0xEE");
#if defined (__C30__) && (__C30_VERSION__ <= 325)
asm(".section .const, psv");
#else
asm(".section .const, psv, page");
#endif

/*********************************
 * Bitmap Structure
 * Label: BitmapIcon
 * Description:  16x16 pixels, 4-bits per pixel
 ***********************************/
#if defined (__C30__) && (__C30_VERSION__ <= 325)
asm(".section .const, psv");
#else
asm(".section .const, psv, page");
#endif


extern const char __BitmapIcon[] __attribute__((space(prog), aligned(2)));

const IMAGE_FLASH BitmapIcon =
{
    (FLASH | IMAGE_MBITMAP | COMP_NONE),
    (FLASH_BYTE *)__BitmapIcon
};
asm(".section .text, code");
asm(".global ___BitmapIcon");
asm(".align 2");
asm("___BitmapIcon:");
/****************************************
 * Bitmap header
 ****************************************/
asm(".byte 0x00");           // Compresssion
asm(".byte 0x04");           // Color Depth
asm(".byte 0x10, 0x00");     // Height
asm(".byte 0x10, 0x00");     // Width
/***********************************
 * Color Palette for the image
 **********************************/
asm(".byte 0xF9, 0x74");
asm(".byte 0x7C, 0xBE");
asm(".byte 0x3E, 0xDF");
asm(".byte 0x9F, 0xEF");
asm(".byte 0xF3, 0xAD");
asm(".byte 0x49, 0xFF");
asm(".byte 0xE4, 0xDD");
asm(".byte 0xC5, 0xCB");
asm(".byte 0xB7, 0xF6");
asm(".byte 0x1A, 0xF7");
asm(".byte 0x7C, 0xFF");
asm(".byte 0xC0, 0xCA");
asm(".byte 0x6F, 0xE5");
asm(".byte 0xFF, 0xFF");
asm(".byte 0xFF, 0xFF");
asm(".byte 0x00, 0x00");
/********************************
 * Bitmap Image Body
 *********************************/
asm(".byte 0x8C, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0xC8, 0x3C, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0xC3");
asm(".byte 0x2C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC2, 0x2C, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0xC2");
asm(".byte 0x2C, 0x00, 0x00, 0x00, 0x54, 0x55, 0x04, 0xC2, 0x2C, 0x00, 0x00, 0x00, 0x55, 0x55, 0x05, 0xC2");
asm(".byte 0x2C, 0x00, 0x00, 0x00, 0x54, 0x55, 0x04, 0xC2, 0x2C, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0xC2");
asm(".byte 0x2C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC2, 0x2C, 0x00, 0x00, 0x7B, 0x00, 0x00, 0x00, 0xC2");
asm(".byte 0x2C, 0x00, 0xB0, 0xBB, 0x00, 0x00, 0x00, 0xC2, 0x2C, 0x00, 0xBB, 0xBB, 0x0B, 0x00, 0x00, 0xC2");
asm(".byte 0x2C, 0x40, 0xBB, 0xBB, 0x0B, 0xB0, 0x0B, 0xC2, 0x2C, 0xB4, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xC2");
asm(".byte 0x8C, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xCC, 0xEC, 0xEE, 0xEE, 0xEE, 0xEE, 0xEE, 0xEE, 0xCD");
#if defined (__C30__) && (__C30_VERSION__ <= 325)
asm(".section .const, psv");
#else
asm(".section .const, psv, page");
#endif

/*********************************
 * Bitmap Structure
 * Label: FolderIcon
 * Description:  16x16 pixels, 4-bits per pixel
 ***********************************/
#if defined (__C30__) && (__C30_VERSION__ <= 325)
asm(".section .const, psv");
#else
asm(".section .const, psv, page");
#endif


extern const char __FolderIcon[] __attribute__((space(prog), aligned(2)));

const IMAGE_FLASH FolderIcon =
{
    (FLASH | IMAGE_MBITMAP | COMP_NONE),
    (FLASH_BYTE *)__FolderIcon
};
asm(".section .text, code");
asm(".global ___FolderIcon");
asm(".align 2");
asm("___FolderIcon:");
/****************************************
 * Bitmap header
 ****************************************/
asm(".byte 0x00");           // Compresssion
asm(".byte 0x04");           // Color Depth
asm(".byte 0x10, 0x00");     // Height
asm(".byte 0x10, 0x00");     // Width
/***********************************
 * Color Palette for the image
 **********************************/
asm(".byte 0x48, 0xDE");
asm(".byte 0x47, 0xBD");
asm(".byte 0x29, 0xFF");
asm(".byte 0x4B, 0xFF");
asm(".byte 0x94, 0xFF");
asm(".byte 0x50, 0xFF");
asm(".byte 0x47, 0xDC");
asm(".byte 0xE1, 0xC2");
asm(".byte 0x4F, 0xE5");
asm(".byte 0x3A, 0xFF");
asm(".byte 0x76, 0xF6");
asm(".byte 0x9D, 0xFF");
asm(".byte 0xBE, 0xFF");
asm(".byte 0x5C, 0xFF");
asm(".byte 0xFF, 0xFF");
asm(".byte 0x00, 0x00");
/********************************
 * Bitmap Image Body
 *********************************/
asm(".byte 0xEE, 0xEE, 0xAE, 0xEE, 0xEE, 0xEE, 0xEE, 0xEE, 0xEE, 0xEE, 0x87, 0x87, 0xEE, 0xEE, 0xEE, 0xEE");
asm(".byte 0xCE, 0x77, 0xEA, 0x8E, 0xB7, 0xEE, 0xEE, 0xEE, 0x8E, 0x77, 0xEE, 0xEE, 0x78, 0x77, 0x77, 0xEA");
asm(".byte 0x8E, 0x87, 0xEE, 0xEE, 0xCE, 0x77, 0x77, 0xE7, 0x7E, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x62");
asm(".byte 0x6E, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x62, 0x7E, 0x22, 0x22, 0x22, 0x22, 0x22, 0x02, 0x80");
asm(".byte 0x6B, 0x22, 0x22, 0x22, 0x22, 0x00, 0x00, 0x80, 0x7A, 0x22, 0x22, 0x22, 0x00, 0x00, 0x10, 0xA1");
asm(".byte 0x7E, 0x22, 0x22, 0x02, 0x00, 0x00, 0x01, 0x91, 0x7E, 0x22, 0x02, 0x00, 0x00, 0x01, 0x11, 0xE7");
asm(".byte 0x6E, 0x02, 0x00, 0x10, 0x11, 0x11, 0x11, 0xE7, 0x6E, 0x02, 0x00, 0x01, 0x11, 0x11, 0x11, 0xE7");
asm(".byte 0xBE, 0x77, 0x77, 0x77, 0x77, 0x77, 0x77, 0xE7, 0xEE, 0xEE, 0xEE, 0xEE, 0xEE, 0xCC, 0xEC, 0xEE");
#if defined (__C30__) && (__C30_VERSION__ <= 325)
asm(".section .const, psv");
#else
asm(".section .const, psv, page");
#endif

