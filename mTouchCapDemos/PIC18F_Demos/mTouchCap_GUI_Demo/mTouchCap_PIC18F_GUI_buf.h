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
//===================================================================================== 
//--- TITLE
//===================================================================================== 
//    Filename:            mTouchCap_PIC18F_GUI_buf.h
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
//
//===================================================================== 

#ifndef __MTOUCHCAP_PIC18F_GUI_BUF_H
#define __MTOUCHCAP_PIC18F_GUI_BUF_H

#include 	"GenericTypeDefs.h"
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
#define CBUF1_LEN  220    //256   // max: 65535
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

#endif // __MTOUCHCAP_PIC18F_GUI_BUF_H




