/********************************************************************
 FileName:     HardwareProfile.h
 Dependencies: See INCLUDES section
 Processor:    PIC32 USB Microcontrollers
 Hardware:
 Complier:     Microchip C32
 Company:		Microchip Technology, Inc.

 Software License Agreement:

 The software supplied herewith by Microchip Technology Incorporated
 (the �Company�) for its PIC� Microcontroller is intended and
 supplied to you, the Company�s customer, for use solely and
 exclusively on Microchip PIC Microcontroller products. The
 software is owned by the Company and/or its supplier, and is
 protected under applicable copyright laws. All rights are reserved.
 Any use in violation of the foregoing restrictions may subject the
 user to criminal sanctions under applicable laws, as well as to
 civil liability for the breach of the terms and conditions of this
 license.

 THIS SOFTWARE IS PROVIDED IN AN �AS IS� CONDITION. NO WARRANTIES,
 WHETHER EXPRESS, IMPLIED OR STATUTORY, INCLUDING, BUT NOT LIMITED
 TO, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
 PARTICULAR PURPOSE APPLY TO THIS SOFTWARE. THE COMPANY SHALL NOT,
 IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL OR
 CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
 

********************************************************************
 File Description:

 Change History:
  Rev   Date         Description
  1.0   11/19/2004   Initial release
  2.1   02/26/2007   Updated for simplicity and to use common
                     coding style
  2.2    04/01/08    cleaned up hardware profile selection for PKS24
--------------------------------------------------------------------
NMS/NK		10-Feb-2009 Folder/Files restructuring
NK			 24-Apr-2009 Porting for 18F46J50 Eval Board
MC          22-Ian-2010 Porting for PIC32MX795F512H
********************************************************************/

#ifndef __HARDWARE_PROFILE_H
#define __HARDWARE_PROFILE_H

#include "GenericTypeDefs.h"

//==========================================================
//==========================================================
//--- HARDWARE PROFILE:
//==========================================================
#define MTOUCH2

//------------------------------------------------

//----------------------------
//--- HARDWARE: MTOUCH2
//----------------------------
#if defined(MTOUCH2)

        #if defined(__32MX795F512H__)
                #define HARDWARE_PROFILE_OK
        #endif

#endif

#if !defined(HARDWARE_PROFILE_OK)
    #error "HARDWARE PROFILE INCONGRUENT WITH PROJECT"
#endif

#define 	MAX_ADC_CHANNELS			16 


//==========================================================
//==========================================================
#define 	INIT_TRISF_VALUE		0x0000
#define 	INIT_TRISB_VALUE		0xFFFF		
#define 	INIT_TRISC_VALUE		0x0000      
#define 	INIT_TRISD_VALUE		0x0000      
#define 	INIT_TRISE_VALUE		0x0000      
#define 	INIT_TRISG_VALUE		0x0000    
#define 	INIT_PORTG_VALUE		0xFFFF
#define 	INIT_PORTC_VALUE		0xFFFF
#define 	INIT_PORTD_VALUE		0x30C0
#define 	INIT_PORTE_VALUE		0xFFFF
#define 	INIT_PORTB_VALUE		0xFFFF

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~ SYSTEM CLOCK	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  	*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

// Clock speed for PIC32
#if defined (__PIC32MX__)
    #define GetSystemClock()        80000000
     #define SYS_FREQ 			(80000000L)   
#endif

////////////////////////////////////////////////////////////////////////////////
//					CHANNEL ASSIGNMENT
//	Set the appropriate ADC Channel number to 2 Channel Slider
////////////////////////////////////////////////////////////////////////////////

#define TWO_CH_SLIDER1_CHANNEL0    CHANNEL_AN0
#define TWO_CH_SLIDER1_CHANNEL1    CHANNEL_AN1

#endif  // __HARDWARE_PROFILE_H