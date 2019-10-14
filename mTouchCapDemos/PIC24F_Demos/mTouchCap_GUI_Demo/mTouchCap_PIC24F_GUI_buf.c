//===================================================================== 
//--- COPYRIGHT
//===================================================================== 
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
//===================================================================== 
//--- TITLE
//===================================================================== 
//    Filename:            MTOUCHCAP_PIC24F_GUI_BUF.c
//    Microcontroller:     PIC24FJ128GB106
//    Compiled using:      C30 v3.02c
//
//    Author:              Mark Enochson
//    Company:             Microchip Technology Inc.
//
//===================================================================== 
//--- DESCRIPTION
//===================================================================== 
//
//--- CIRCULAR BUFFER
//    
//    get & put byte from a circular buffer
//    buffer definition structure (CBUF) defines:
//       read_p   read pointer
//       write_p  write pointer
//       used     # bytes used
//       unused   # bytes unused
//    caller must check data/buffer availability
//    prior to calling "get"/"put"
//
//    multiple buffers can be defined by
//    duplicating "CBUF1" sections in cbuf.c & cbuf.h
//       change duplicate: "cbuf1" -> "cbuf2"
//       change duplicate: "CBUF1" -> "CBUF2"
//       etc.
//===================================================================== 
//--- HISTORY
//===================================================================== 
//
//    0001 - 08-01-06 - ME
//    - initial release
//
//===================================================================== 
//Change History:
//Author         Date    	Comments
//---------------------------------------------------------------------

//Nithin Kumar 	 02-Mar-2010   Interfacing the mTouch Library to the mTouch GUI plug-in
/**********************************************************************/
#ifndef  __MTOUCHCAP_PIC24F_GUI_BUF_C
#define  __MTOUCHCAP_PIC24F_GUI_BUF_C

#include "mTouchCap_PIC24F_GUI_buf.h"

//--------------------------------------
//--------------------------------------
//--- CBUF1: START
//--------------------------------------
//--------------------------------------
CBUF cbuf1;
BYTE cbuf1_data[CBUF1_LEN];

/********************************************************************
 * Function			:   void cbuf1_init()
 *
 * PreCondition		:    None
 *
 * Input			:    None
 *
 * Output			:    None
 *
 * Side Effects		:    None
 *
 * Overview			:    Initializes the buffer variables
 *
 *

 *******************************************************************/
void cbuf1_init()
{
   cbuf1.write = 0;
   cbuf1.read = 0;
   cbuf1.used = 0;
   cbuf1.unused = CBUF1_LEN;
}

/********************************************************************
 * Function			:    BYTE cbuf1_get(void)
 *
 * PreCondition		:    None
 *
 * Input			:    None
 *
 * Output			:    Returns the buffer data
 *
 * Side Effects		:    None
 *
 * Overview			:  
 *
 *

 *******************************************************************/
BYTE cbuf1_get(void)
{
   if(cbuf1.used)
   {
      cbuf1.read += 1;
      if(cbuf1.read == CBUF1_LEN)
         cbuf1.read = 0;
      cbuf1.used--;
      cbuf1.unused++;
   }
   return cbuf1_data[cbuf1.read];
}

/********************************************************************
 * Function			:   void cbuf1_put(BYTE data)
 *
 * PreCondition		:    None
 *
 * Input			:   data - The data that has to be stored in buffer
 *
 * Output			:    Returns the buffer data
 *
 * Side Effects		:    None
 *
 * Overview			:  	This function will store the buffer data
 *	
 *

 *******************************************************************/
void cbuf1_put(BYTE data)
{
   if(cbuf1.unused)
   {
      cbuf1.write++;
      if(cbuf1.write == CBUF1_LEN)
         cbuf1.write = 0;
      cbuf1_data[cbuf1.write] = data;
      cbuf1.used++;
      cbuf1.unused--;
   }
   return ;
}
//--------------------------------------
//--------------------------------------
//--- CBUF1: END
//--------------------------------------
//--------------------------------------


#endif // __MTOUCHCAP_PIC24F_GUI_BUF_C
