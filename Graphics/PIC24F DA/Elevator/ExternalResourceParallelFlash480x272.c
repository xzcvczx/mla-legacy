/*****************************************************************************
 * FileName:        ExternalResourceParallelFlash480x272.c
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
 * AUTO-GENERATED CODE:  Graphics Resource Converter version: 3.17.47
 *****************************************************************************/

/*****************************************************************************
 * SECTION:  Includes
 *****************************************************************************/
#include <Graphics/Graphics.h>
#include "HardwareProfile.h"

/*****************************************************************************
 * SECTION:  Graphics Library Firmware Check
 *****************************************************************************/
#if(GRAPHICS_LIBRARY_VERSION != 0x0304)
#warning "It is suggested to use Graphics Library verson 3.04 with this version of GRC."
#endif

/*****************************************************************************
 * SECTION:  fireflysung_40
 *****************************************************************************/

const XCHAR strMaintainChn[] = {   0x004B, 0x0044, 0x003C, 0x0000    };    // maintenance

const XCHAR strOverLoadChn[] = {   0x0050, 0x0051, 0x0000    };    // overload

const XCHAR strTimeOutChn[] = {   0x0050, 0x0045, 0x0000    };    // time out

const XCHAR strRunTimeChn[] = {   0x0052, 0x004C, 0x003C, 0x0000    };    // running

const XCHAR strPauseChn[] = {   0x0046, 0x003F, 0x0000    };    // pause

const XCHAR strHaltChn[] = {   0x003F, 0x0048, 0x003E, 0x0049, 0x0000    };    // not in use or in service

const XCHAR strErrorChn[] = {   0x0053, 0x004E, 0x0000    };    // error

const XCHAR strNonStopChn[] = {   0x0047, 0x0042, 0x003B, 0x003F, 0x0000    };    // not stopping on this floor

const XCHAR strWaitChn[] = {   0x004F, 0x004A, 0x0041, 0x0000    };    // please wait

const XCHAR strClosingChn[] = {   0x0054, 0x004D, 0x0040, 0x003D, 0x0000    };    // door closing

const XCHAR strOpeningChn[] = {   0x0054, 0x004D, 0x0043, 0x003D, 0x0000    };    // door opening

const XCHAR strMaintainEng[] = {   0x0024, 0x002B, 0x0030, 0x0033, 0x0038, 0x002E, 0x0033, 0x002B, 0x0033, 0x002C, 0x002E, 0x0000    };    // maintenance 

const XCHAR strOverLoadEng[] = {   0x0026, 0x003A, 0x002E, 0x0036, 0x0031, 0x0034, 0x002B, 0x002D, 0x0000    };    // overload

const XCHAR strTimeOutEng[] = {   0x0029, 0x0030, 0x0032, 0x002E, 0x0034, 0x0039, 0x0038, 0x0000    };    // time out

const XCHAR strRunTimeEng[] = {   0x0024, 0x0034, 0x003A, 0x0030, 0x0033, 0x002F, 0x0000    };    // running

const XCHAR strPauseEng[] = {   0x0027, 0x002B, 0x0039, 0x0037, 0x002E, 0x0000    };    // pause

const XCHAR strHaltEng[] = {   0x0023, 0x0033, 0x0020, 0x0028, 0x002E, 0x0036, 0x003A, 0x0030, 0x002C, 0x002E, 0x0000    };    // not in use or in service

const XCHAR strErrorEng[] = {   0x0022, 0x0036, 0x0036, 0x0034, 0x0036, 0x0000    };    // error

const XCHAR strNonStopEng[] = {   0x0025, 0x0034, 0x0038, 0x0020, 0x0028, 0x0038, 0x0034, 0x0035, 0x0035, 0x0030, 0x0033, 0x002F, 0x0000    };    // not stopping on this floor

const XCHAR strWaitEng[] = {   0x0027, 0x0031, 0x002E, 0x002B, 0x0037, 0x002E, 0x0020, 0x002A, 0x002B, 0x0030, 0x0038, 0x0000    };    // please wait

const XCHAR strClosingEng[] = {   0x0021, 0x0031, 0x0034, 0x0037, 0x0030, 0x0033, 0x002F, 0x0000    };    // door closing

const XCHAR strOpeningEng[] = {   0x0026, 0x0035, 0x002E, 0x0033, 0x0030, 0x0033, 0x002F, 0x0000    };    // door opening

/*****************************************************************************
 * SECTION:  BITMAPS
 *****************************************************************************/

/*********************************
 * Bitmap Structure
 * Label: arrowDownComposite
 * Description:  100x230 pixels, 4-bits per pixel
 ***********************************/
IMAGE_EXTERNAL arrowDownComposite = 
{
    (EDS_EPMP | IMAGE_MBITMAP | COMP_NONE),
    0x0002,
    (0x00000000 + GFX_EPMP_CS2_BASE_ADDRESS)
};
/*********************************
 * Bitmap Structure
 * Label: arrowUpComposite
 * Description:  100x230 pixels, 4-bits per pixel
 ***********************************/
IMAGE_EXTERNAL arrowUpComposite = 
{
    (EDS_EPMP | IMAGE_MBITMAP | COMP_NONE),
    0x0002,
    (0x00002D20 + GFX_EPMP_CS2_BASE_ADDRESS)
};
/*********************************
 * Bitmap Structure
 * Label: Background480x272
 * Description:  480x272 pixels, 16-bits per pixel
 ***********************************/
IMAGE_EXTERNAL Background480x272 = 
{
    (EDS_EPMP | IMAGE_MBITMAP | COMP_NONE),
    0x0002,
    (0x00005A40 + GFX_EPMP_CS2_BASE_ADDRESS)
};
/*****************************************************************************
 * SECTION:  FONTS
 *****************************************************************************/

/*********************************
 * TTF Font File Structure
 * Label: DroidSans_Bold_150
 * Description:  Height: 176 pixels, 1 bit per pixel, Range: '0' to '9'
 * Comment Block:
 *  
 *                                  Apache License 
 *                            Version 2.0, January 2004 
 *                         http://www.apache.org/licenses/ 
 *  
 *    TERMS AND CONDITIONS FOR USE, REPRODUCTION, AND DISTRIBUTION 
 *  
 *    1. Definitions. 
 *  
 *       "License" shall mean the terms and conditions for use, reproduction, 
 *       and distribution as defined by Sections 1 through 9 of this document. 
 *  
 *       "Licensor" shall mean the copyright owner or entity authorized by 
 *       the copyright owner that is granting the License. 
 *  
 *       "Legal Entity" shall mean the union of the acting entity and all 
 *       other entities that control, are controlled by, or are under common 
 *       control with that entity. For the purposes of this definition, 
 *       "control" means (i) the power, direct or indirect, to cause the 
 *       direction or management of such entity, whether by contract or 
 *       otherwise, or (ii) ownership of fifty percent (50%) or more of the 
 *       outstanding shares, or (iii) beneficial ownership of such entity. 
 *  
 *       "You" (or "Your") shall mean an individual or Legal Entity 
 *       exercising permissions granted by this License. 
 *  
 *       "Source" form shall mean the preferred form for making modifications, 
 *       including but not limited to software source code, documentation 
 *       source, and configuration files. 
 *  
 *       "Object" form shall mean any form resulting from mechanical 
 *       transformation or translation of a Source form, including but 
 *       not limited to compiled object code, generated documentation, 
 *       and conversions to other media types. 
 *  
 *       "Work" shall mean the work of authorship, whether in Source or 
 *       Object form, made available under the License, as indicated by a 
 *       copyright notice that is included in or attached to the work 
 *       (an example is provided in the Appendix below). 
 *  
 *       "Derivative Works" shall mean any work, whether in Source or Object 
 *       form, that is based on (or derived from) the Work and for which the 
 *       editorial revisions, annotations, elaborations, or other modifications 
 *       represent, as a whole, an original work of authorship. For the purposes 
 *       of this License, Derivative Works shall not include works that remain 
 *       separable from, or merely link (or bind by name) to the interfaces of, 
 *       the Work and Derivative Works thereof. 
 *  
 *       "Contribution" shall mean any work of authorship, including 
 *       the original version of the Work and any modifications or additions 
 *       to that Work or Derivative Works thereof, that is intentionally 
 *       submitted to Licensor for inclusion in the Work by the copyright owner 
 *       or by an individual or Legal Entity authorized to submit on behalf of 
 *       the copyright owner. For the purposes of this definition, "submitted" 
 *       means any form of electronic, verbal, or written communication sent 
 *       to the Licensor or its representatives, including but not limited to 
 *       communication on electronic mailing lists, source code control systems, 
 *       and issue tracking systems that are managed by, or on behalf of, the 
 *       Licensor for the purpose of discussing and improving the Work, but 
 *       excluding communication that is conspicuously marked or otherwise 
 *       designated in writing by the copyright owner as "Not a Contribution." 
 *  
 *       "Contributor" shall mean Licensor and any individual or Legal Entity 
 *       on behalf of whom a Contribution has been received by Licensor and 
 *       subsequently incorporated within the Work. 
 *  
 *    2. Grant of Copyright License. Subject to the terms and conditions of 
 *       this License, each Contributor hereby grants to You a perpetual, 
 *       worldwide, non-exclusive, no-charge, royalty-free, irrevocable 
 *       copyright license to reproduce, prepare Derivative Works of, 
 *       publicly display, publicly perform, sublicense, and distribute the 
 *       Work and such Derivative Works in Source or Object form. 
 *  
 *    3. Grant of Patent License. Subject to the terms and conditions of 
 *       this License, each Contributor hereby grants to You a perpetual, 
 *       worldwide, non-exclusive, no-charge, royalty-free, irrevocable 
 *       (except as stated in this section) patent license to make, have made, 
 *       use, offer to sell, sell, import, and otherwise transfer the Work, 
 *       where such license applies only to those patent claims licensable 
 *       by such Contributor that are necessarily infringed by their 
 *       Contribution(s) alone or by combination of their Contribution(s) 
 *       with the Work to which such Contribution(s) was submitted. If You 
 *       institute patent litigation against any entity (including a 
 *       cross-claim or counterclaim in a lawsuit) alleging that the Work 
 *       or a Contribution incorporated within the Work constitutes direct 
 *       or contributory patent infringement, then any patent licenses 
 *       granted to You under this License for that Work shall terminate 
 *       as of the date such litigation is filed. 
 *  
 *    4. Redistribution. You may reproduce and distribute copies of the 
 *       Work or Derivative Works thereof in any medium, with or without 
 *       modifications, and in Source or Object form, provided that You 
 *       meet the following conditions: 
 *  
 *       (a) You must give any other recipients of the Work or 
 *           Derivative Works a copy of this License; and 
 *  
 *       (b) You must cause any modified files to carry prominent notices 
 *           stating that You changed the files; and 
 *  
 *       (c) You must retain, in the Source form of any Derivative Works 
 *           that You distribute, all copyright, patent, trademark, and 
 *           attribution notices from the Source form of the Work, 
 *           excluding those notices that do not pertain to any part of 
 *           the Derivative Works; and 
 *  
 *       (d) If the Work includes a "NOTICE" text file as part of its 
 *           distribution, then any Derivative Works that You distribute must 
 *           include a readable copy of the attribution notices contained 
 *           within such NOTICE file, excluding those notices that do not 
 *           pertain to any part of the Derivative Works, in at least one 
 *           of the following places: within a NOTICE text file distributed 
 *           as part of the Derivative Works; within the Source form or 
 *           documentation, if provided along with the Derivative Works; or, 
 *           within a display generated by the Derivative Works, if and 
 *           wherever such third-party notices normally appear. The contents 
 *           of the NOTICE file are for informational purposes only and 
 *           do not modify the License. You may add Your own attribution 
 *           notices within Derivative Works that You distribute, alongside 
 *           or as an addendum to the NOTICE text from the Work, provided 
 *           that such additional attribution notices cannot be construed 
 *           as modifying the License. 
 *  
 *       You may add Your own copyright statement to Your modifications and 
 *       may provide additional or different license terms and conditions 
 *       for use, reproduction, or distribution of Your modifications, or 
 *       for any such Derivative Works as a whole, provided Your use, 
 *       reproduction, and distribution of the Work otherwise complies with 
 *       the conditions stated in this License. 
 *  
 *    5. Submission of Contributions. Unless You explicitly state otherwise, 
 *       any Contribution intentionally submitted for inclusion in the Work 
 *       by You to the Licensor shall be under the terms and conditions of 
 *       this License, without any additional terms or conditions. 
 *       Notwithstanding the above, nothing herein shall supersede or modify 
 *       the terms of any separate license agreement you may have executed 
 *       with Licensor regarding such Contributions. 
 *  
 *    6. Trademarks. This License does not grant permission to use the trade 
 *       names, trademarks, service marks, or product names of the Licensor, 
 *       except as required for reasonable and customary use in describing the 
 *       origin of the Work and reproducing the content of the NOTICE file. 
 *  
 *    7. Disclaimer of Warranty. Unless required by applicable law or 
 *       agreed to in writing, Licensor provides the Work (and each 
 *       Contributor provides its Contributions) on an "AS IS" BASIS, 
 *       WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or 
 *       implied, including, without limitation, any warranties or conditions 
 *       of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A 
 *       PARTICULAR PURPOSE. You are solely responsible for determining the 
 *       appropriateness of using or redistributing the Work and assume any 
 *       risks associated with Your exercise of permissions under this License. 
 *  
 *    8. Limitation of Liability. In no event and under no legal theory, 
 *       whether in tort (including negligence), contract, or otherwise, 
 *       unless required by applicable law (such as deliberate and grossly 
 *       negligent acts) or agreed to in writing, shall any Contributor be 
 *       liable to You for damages, including any direct, indirect, special, 
 *       incidental, or consequential damages of any character arising as a 
 *       result of this License or out of the use or inability to use the 
 *       Work (including but not limited to damages for loss of goodwill, 
 *       work stoppage, computer failure or malfunction, or any and all 
 *       other commercial damages or losses), even if such Contributor 
 *       has been advised of the possibility of such damages. 
 *  
 *    9. Accepting Warranty or Additional Liability. While redistributing 
 *       the Work or Derivative Works thereof, You may choose to offer, 
 *       and charge a fee for, acceptance of support, warranty, indemnity, 
 *       or other liability obligations and/or rights consistent with this 
 *       License. However, in accepting such obligations, You may act only 
 *       on Your own behalf and on Your sole responsibility, not on behalf 
 *       of any other Contributor, and only if You agree to indemnify, 
 *       defend, and hold each Contributor harmless for any liability 
 *       incurred by, or claims asserted against, such Contributor by reason 
 *       of your accepting any such warranty or additional liability. 
 *  
 *    END OF TERMS AND CONDITIONS 
 *  
 *    APPENDIX: How to apply the Apache License to your work. 
 *  
 *       To apply the Apache License to your work, attach the following 
 *       boilerplate notice, with the fields enclosed by brackets "[]" 
 *       replaced with your own identifying information. (Don't include 
 *       the brackets!)  The text should be enclosed in the appropriate 
 *       comment syntax for the file format. We also recommend that a 
 *       file or class name and description of purpose be included on the 
 *       same "printed page" as the copyright notice for easier 
 *       identification within third-party archives. 
 *  
 *    Copyright [yyyy] [name of copyright owner] 
 *  
 *    Licensed under the Apache License, Version 2.0 (the "License"); 
 *    you may not use this file except in compliance with the License. 
 *    You may obtain a copy of the License at 
 *  
 *        http://www.apache.org/licenses/LICENSE-2.0 
 *  
 *    Unless required by applicable law or agreed to in writing, software 
 *    distributed under the License is distributed on an "AS IS" BASIS, 
 *    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. 
 *    See the License for the specific language governing permissions and 
 *    limitations under the License. 
 ***********************************/
FONT_EXTERNAL DroidSans_Bold_150 = 
{
    (EDS_EPMP | COMP_NONE),
    0x0002,
    (0x00045650 + GFX_EPMP_CS2_BASE_ADDRESS)
};
/*********************************
 * TTF Font File Structure
 * Label: fireflysung_40
 * Description:  Height: 44 pixels, 1 bit per pixel, Range: ' ' to '?'
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
FONT_EXTERNAL fireflysung_40 = 
{
    (EDS_EPMP | COMP_NONE),
    0x0002,
    (0x0004A220 + GFX_EPMP_CS2_BASE_ADDRESS)
};
