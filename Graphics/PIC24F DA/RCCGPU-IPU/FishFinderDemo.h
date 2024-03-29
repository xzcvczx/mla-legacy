/*********************************************************************
 * Microchip Graphic Library Demo Application
 * The header file joins all header files used in the project.
 *********************************************************************
 * FileName:        FishFinderDemo.h
 * Dependencies:    See INCLUDES section below
 * Processor:       PIC24F, PIC24H, dsPIC, PIC32
 * Compiler:        C30/C32
 * Company:         Microchip Technology, Inc.
 *
 * Software License Agreement
 *
 * Copyright � 2010 Microchip Technology Inc.  All rights reserved.
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
 * Date         Comment
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * 01/11/10	    ...
 *****************************************************************************/
#ifndef _FISHFINDERDEMO_H
    #define _FISHFINDERDEMO_H

////////////////////////////// INCLUDES //////////////////////////////
    #include "Compiler.h"
    #include "GenericTypeDefs.h"
    #include "Graphics/Graphics.h"
    #include "SST25VF016.h"
    #include "TouchScreen.h"
    
    
WORD CreateFishFinderDemo(void);
WORD FishFinderDrawCallback(void);
WORD FishFinderMsgCallback(WORD objMsg, OBJ_HEADER *pObj, GOL_MSG *pMsg);
    
    
#endif //FISHFINDERDEMO
