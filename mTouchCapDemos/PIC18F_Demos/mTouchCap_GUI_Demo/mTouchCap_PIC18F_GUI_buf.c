//===================================================================================== 
//--- COPYRIGHT
//=====================================================================================
// Software License Agreement.
//
//Microchip licenses this software to you solely for use with Microchip 
//products,according to the terms of the accompanying click-wrap software 
//license.Microchip and its licensors retain all right, title and interest in and 
//to the software.All rights reserved.
//
//This software and any accompanying information is for suggestion only.  
//It shall not be deemed to modify Microchip’s standard warranty for its
// products.It is your responsibility to ensure that this software meets your 
//requirements.
//
//SOFTWARE IS PROVIDED “AS IS” WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESS OR 
//IMPLIED,INCLUDING WITHOUT LIMITATION, ANY WARRANTY OF MERCHANTABILITY, TITLE, 
//NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR PURPOSE. IN NO EVENT WILL MICROCHIP 
//OR ITS LICENSORS BE LIABLE FOR ANY DIRECT OR INDIRECT DAMAGES OR EXPENSES 
//INCLUDING BUT NOT LIMITED TO INCIDENTAL, SPECIAL, INDIRECT, PUNITIVE OR 
//CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF PROCUREMENT OF 
//SUBSTITUTE GOODS, TECHNOLOGY OR SERVICES, OR ANY CLAIMS BY THIRD PARTIES 
//(INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF), OR OTHER SIMILAR COSTS.  
//The aggregate and cumulative liability of Microchip and its licensors for damages 
//related to the use of the software will in no event exceed $1000 or the amount you 
//paid Microchip for the software, whichever is greater.
//
//MICROCHIP PROVIDES THIS SOFTWARE CONDITIONALLY UPON YOUR ACCEPTANCE OF THESE TERMS 
//AND THE TERMS OF THE ACCOMPANYING CLICK-WRAP SOFTWARE LICENSE.
// 
//===================================================================================== 
//--- TITLE
//===================================================================================== 
//    Filename:            mTouchCap_PIC18F_GUI_buf.c
//    Microcontroller:     PIC18F46J50
//    Compiled using:      C18 
//
//    Author:              Mark Enochson
//    Company:             Microchip Technology Inc.
//
//===================================================================================== 
//--- DESCRIPTION
//===================================================================================== 
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
//===================================================================== 

//Change History:
//Author         Date    	Comments
//---------------------------------------------------------------------

//Nithin Kumar 	 02-Mar-2010   Interfacing the mTouch Library to the mTouch GUI plug-in
/**********************************************************************/
//
//===================================================================== 
#ifndef  __MTOUCHCAP_PIC18F_GUI_BUF_C
#define  __MTOUCHCAP_PIC18F_GUI_BUF_C

#include "mTouchCap_PIC18F_GUI_buf.h"


CBUF cbuf1;
unsigned char cbuf1_data[CBUF1_LEN];

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



#endif // __MTOUCHCAP_PIC18F_GUI_BUF_C
