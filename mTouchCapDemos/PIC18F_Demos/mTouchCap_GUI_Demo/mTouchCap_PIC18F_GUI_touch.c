//===================================================================================== 
//--- COPYRIGHT
//===================================================================================== 
// Software License Agreement.

//Microchip licenses this software to you solely for use with Microchip 
//products,according to the terms of the accompanying click-wrap software 
//license.Microchip and its licensors retain all right, title and interest in and 
//to the software.All rights reserved.

//This software and any accompanying information is for suggestion only.  
//It shall not be deemed to modify Microchip’s standard warranty for its
// products.It is your responsibility to ensure that this software meets your 
//requirements.

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

//MICROCHIP PROVIDES THIS SOFTWARE CONDITIONALLY UPON YOUR ACCEPTANCE OF THESE TERMS 
//AND THE TERMS OF THE ACCOMPANYING CLICK-WRAP SOFTWARE LICENSE.
// 
//===================================================================================== 
//--- TITLE
//===================================================================================== 
//    Filename:            mTouchCap_PIC18F_GUI_touch.c
//    Microcontroller:     PIC18F46J50
//    Compiled using:      C18
//    Author:              Mark Enochson
//    Company:             Microchip Technology Inc.
//
//===================================================================== 
//===================================================================== 

//Change History:
//Author         Date    	Comments
//---------------------------------------------------------------------

//NK			 24-Apr-2009  Porting for 18F46J50 Eval Board
//Nithin Kumar 	 02-Mar-2010   Interfacing the mTouch Library to the mTouch GUI plug-in
//---------------------------------------------------------------------

#ifndef __MTOUCHCAP_PIC18F_GUI_TOUCH_C
#define __MTOUCHCAP_PIC18F_GUI_TOUCH_C

#include	"mTouchCap_PIC18F_GUI_touch.h"
//================================================
//--- DATA
//================================================

#ifndef MTOUCHCAP_GUI_MAP_VARIABLES

WORD mTouchCap_GUI_touch_trip[] = 
{
   0x0100, 0x0101, 0x0102, 0x0103,
   0x0104, 0x0105, 0x0106, 0x0107,
   0x0108, 0x0109, 0x010A, 0x010B,
   0x010C, 0x010D, 0x010E, 0x010F
};

WORD mTouchCap_GUI_touch_gband[] = 
{
   0x0200, 0x0201, 0x0202, 0x0203,
   0x0204, 0x0205, 0x0206, 0x0207,
   0x0208, 0x0209, 0x020A, 0x020B,
   0x020C, 0x020D, 0x020E, 0x020F
};

 WORD mTouchCap_GUI_touch_raw[] = 
{
   0x0300, 0x0301, 0x0302, 0x0303,
   0x0304, 0x0305, 0x0306, 0x0307,
   0x0308, 0x0309, 0x030A, 0x030B,
   0x030C, 0x030D, 0x030E, 0x030F
};

WORD mTouchCap_GUI_touch_avg[] = 
{
   0x0400, 0x0401, 0x0402, 0x0403,
   0x0404, 0x0405, 0x0406, 0x0407,
   0x0408, 0x0409, 0x040A, 0x040B,
   0x040C, 0x040D, 0x040E, 0x040F
};
BYTE mTouchCap_GUI_touch_detect[] = 
{
   0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88
};

WORD mTouchCap_GUI_touch_aux1[] = 
{
   0x0500, 0x0501, 0x0502, 0x0503,
   0x0504, 0x0505, 0x0506, 0x0507,
   0x0508, 0x0509, 0x050A, 0x050B,
   0x050C, 0x050D, 0x050E, 0x050F
};

WORD mTouchCap_GUI_touch_aux2[] = 
{
   0x0600, 0x0601, 0x0602, 0x0603,
   0x0604, 0x0605, 0x0606, 0x0607,
   0x0608, 0x0609, 0x060A, 0x060B,
   0x060C, 0x060D, 0x060E, 0x060F
};

BYTE mTouchCap_GUI_touch_useusb;
BYTE   useUSBVals;   //USB
BYTE useUSBTouchDetect; //USB

#endif // #ifndef MTOUCHCAP_GUI__MAP_VARIABLES

WORD  mTouchCap_GUI_touch_aux1[] = 
{
   0x0500, 0x0501, 0x0502, 0x0503,
   0x0504, 0x0505, 0x0506, 0x0507,
   0x0508, 0x0509, 0x050A, 0x050B,
   0x050C, 0x050D, 0x050E, 0x050F
};

WORD  mTouchCap_GUI_touch_aux2[] = 
{
   0x0600, 0x0601, 0x0602, 0x0603,
   0x0604, 0x0605, 0x0606, 0x0607,
   0x0608, 0x0609, 0x060A, 0x060B,
   0x060C, 0x060D, 0x060E, 0x060F
};

BYTE mTouchCap_GUI_touch_useusb;
BYTE   useUSBVals;   //USB
BYTE useUSBTouchDetect; //USB
void mTouchCap_GUI_touch_init(void)
{

}

void mTouchCap_GUI_touch(void)
{

}

#endif
