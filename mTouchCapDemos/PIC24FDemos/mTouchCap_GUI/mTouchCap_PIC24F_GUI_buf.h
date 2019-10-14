//==================================================================== 
//--- COPYRIGHT
//==================================================================== 
// Copyright 2006 Microchip Technology Inc.
// 
// Microchip Technology Inc. ("Microchip") licenses this software to
// you solely for use with Microchip products. The software is owned
// by Microchip and is protected under applicable copyright laws. All
// rights reserved.
// 
// SOFTWARE IS PROVIDED IN AN "AS IS." MICROCHIP EXPRESSLY DISCLAIMS ANY
// WARRANTY OF ANY KIND, WHETHER EXPRESS OR IMPLIED, INCLUDING BUT NOT
// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
// PARTICULAR PURPOSE, OR NON-INFRINGEMENT. IN NO EVENT SHALL MICROCHIP
// BE LIABLE FOR ANY INCIDENTAL, SPECIAL, INDIRECT OR CONSEQUENTIAL
// DAMAGES, LOST PROFITS OR LOST DATA, HARM TO YOUR EQUIPMENT, COST OF
// PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY OR SERVICES, ANY CLAIMS
// BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF),
// ANY CLAIMS FOR INDEMNITY OR CONTRIBUTION, OR OTHER SIMILAR COSTS.
// 
//==================================================================== 
//--- TITLE
//==================================================================== 
//    Filename:            mTouchCap_PIC24F_GUI_buf.h
//    Author:              Mark Enochson
//    Company:             Microchip Technology Inc.
//
//==================================================================== 
//--- DESCRIPTION
//==================================================================== 
//    CIRCULAR CHARACTER BUFFER(S) (i.e. FIFO(S))
//
//==================================================================== 
//--- HISTORY
//==================================================================== 
//
//    0001 - 08-01-06 - ME
//    - initial release
//
//==================================================================== 
//Change History:
//Author         Date    	Comments
//---------------------------------------------------------------------

//Nithin Kumar 	 02-Mar-2010   Interfacing the mTouch Library to the mTouch GUI plug-in
/**********************************************************************/

#ifndef __MTOUCHCAP_PIC24F_GUI_BUF_H
#define __MTOUCHCAP_PIC24F_GUI_BUF_H

#include "GenericTypeDefs.h"
//----------------------------
//--- TYPEDEF
//----------------------------
typedef struct _CBUF
{
   WORD   write;   // WRITE INDEX
   WORD   read;    // READ INDEX
   WORD   used;    // # BYTES USED
   WORD   unused;  // # BYTES UNUSED/AVAILABLE
} CBUF;

//--------------------------------------
//--------------------------------------
//--- CBUF1: START
//--------------------------------------
//--------------------------------------

//----------------------------
//--- DEFINES
//----------------------------
extern CBUF cbuf1;
#define CBUF1_LEN 256         // max: 65535
extern BYTE cbuf1_data[CBUF1_LEN];

//----------------------------
//--- PROTOTYPES
//----------------------------
void cbuf1_init(void);
BYTE cbuf1_get(void);
void cbuf1_put(BYTE data);

//--------------------------------------
//--------------------------------------
//--- CBUF1: END
//--------------------------------------
//--------------------------------------

#endif // __CBUF_H

