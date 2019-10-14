/*********************************************************************
 * Microchip Graphic Library Demo Application - with Cap Touch
 * The header file joins all header files used in the project.
 *********************************************************************
 * FileName:        DA210CapTouchDemo.h
 * Dependencies:    See INCLUDES section below
 * Processor:       PIC24F
 * Compiler:        C30
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
 * Author               Date        Comment
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * Bruce Bohn		01/17/2010
 ********************************************************************/
#ifndef _DA210CAPTOUCHDEMO_H
    #define _DA210CAPTOUCHDEMO_H

////////////////////////////// INCLUDES //////////////////////////////

    #include <p24Fxxxx.h>
    #include "GenericTypeDefs.h"
    #include "Graphics/Graphics.h"
    #include "EEPROM.h"
    #include "SST25VF016.h"    
    #include "ResTouchScreen.h"
//    #include "Beep.h"
	#include "Cap-mTouch.h"
	#include "mTouchCap_DirectKeys.h"
//	#include "mTouchCap_CtmuAPI.h"
//	#include "mTouchCap_PIC24_CTMU_Physical.h"


extern WORD update;

void mTouchCapApp_DemoDirectKeys(void);

void CapmTouchGetMsg(GOL_MSG *pMsg);

#endif




