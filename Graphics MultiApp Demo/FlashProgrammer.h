/*********************************************************************
 * GRAPHICS PICTail PLUS BOARD MEMORY PROGRAMMER
 * This program receives Intel HEX file from UART and programs
 * flash memory installed on Graphics PICTail board.
 *
 * The header file joins all header files used in the project.
 *********************************************************************
 * FileName:        FlashProgrammer.h
 * Dependencies:    See INCLUDES section below
 * Processor:       PIC24/PIC30/PIC32
 * Compiler:        C30/C32
 * Company:         Microchip Technology, Inc.
 *
 * Software License Agreement
 *
 * Copyright © 2007 Microchip Technology Inc.  All rights reserved.
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
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * Anton Alkhimenok		10/18/2007
 * Anton Alkhimenok		02/05/08	PIC32 support is added
 * Paolo Tamayo			06/19/08	Modified to be a module
 ********************************************************************/
#ifndef _FLASHPROGRAMMER_H
#define _FLASHPROGRAMMER_H

////////////////////////////// INCLUDES //////////////////////////////
#ifdef __PIC32MX
#include <plib.h>
#else
#include <p24Fxxxx.h>
#endif

#include "GenericTypeDefs.h"
#include "GraphicsConfig.h"
#include "uart2.h"

/************************************************************************
 Function: void ProgramFlash(void)
                                                                       
 Overview: Programs the flash data. Data is coming from UART connected
 		   to the host PC. System reset must be performed after 
 		   programming.
 		                                                                          
 Input: none
                                                                       
 Output: none
************************************************************************/
void ProgramFlash(void);

/************************************************************************
 Function: void SetPPSPorts(void)
                                                                       
 Overview: Set up the Peripheral Pin Select ports to map UART signals.
		   This is only specific to PIC24FJ256GB110 and PIC24FJ256GA110
		   devices.
 		                                                                          
 Input: none
                                                                       
 Output: none
************************************************************************/
void SetPPSPorts(void);

#endif // _FLASHPROGRAMMER_H
