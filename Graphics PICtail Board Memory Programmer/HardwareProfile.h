/*********************************************************************
 *
 *	Hardware specific definitions
 *
 *********************************************************************
 * FileName:        HardwareProfile.h
 * Dependencies:    None
 * Processor:       PIC24F, PIC24H, PIC32MX
 * Compiler:        Microchip C32 v1.00 or higher
 *					Microchip C30 v3.01 or higher
 * Company:         Microchip Technology, Inc.
 *
 * Software License Agreement
 *
 * Copyright © 2002-2008 Microchip Technology Inc.  All rights 
 * reserved.
 *
 * Microchip licenses to you the right to use, modify, copy, and 
 * distribute: 
 * (i)  the Software when embedded on a Microchip microcontroller or 
 *      digital signal controller product (“Device”) which is 
 *      integrated into Licensee’s product; or
 * (ii) ONLY the Software driver source files ENC28J60.c and 
 *      ENC28J60.h ported to a non-Microchip device used in 
 *      conjunction with a Microchip ethernet controller for the 
 *      sole purpose of interfacing with the ethernet controller. 
 *
 * You should refer to the license agreement accompanying this 
 * Software for additional information regarding your rights and 
 * obligations.
 *
 * THE SOFTWARE AND DOCUMENTATION ARE PROVIDED “AS IS” WITHOUT 
 * WARRANTY OF ANY KIND, EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT 
 * LIMITATION, ANY WARRANTY OF MERCHANTABILITY, FITNESS FOR A 
 * PARTICULAR PURPOSE, TITLE AND NON-INFRINGEMENT. IN NO EVENT SHALL 
 * MICROCHIP BE LIABLE FOR ANY INCIDENTAL, SPECIAL, INDIRECT OR 
 * CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF 
 * PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY OR SERVICES, ANY CLAIMS 
 * BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE 
 * THEREOF), ANY CLAIMS FOR INDEMNITY OR CONTRIBUTION, OR OTHER 
 * SIMILAR COSTS, WHETHER ASSERTED ON THE BASIS OF CONTRACT, TORT 
 * (INCLUDING NEGLIGENCE), BREACH OF WARRANTY, OR OTHERWISE.
 *
 *
 * Author               Date		Comment
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * Howard Schlunder		10/03/06	Original, copied from Compiler.h
 ********************************************************************/
#ifndef __HARDWARE_PROFILE_H
#define __HARDWARE_PROFILE_H

/*********************************************************************
* GetSystemClock() returns system clock frequency.
*
* GetPeripheralClock() returns peripheral clock frequency.
*
* GetInstructionClock() returns instruction clock frequency.
*
********************************************************************/

#if defined(__PIC24F__)	|| defined(__PIC24H__)
    // PIC24 processor
#define	GetSystemClock()            (32000000ul)         // 8 MHz x 4 PLL 
#define	GetPeripheralClock()		(GetSystemClock()/2)
#define	GetInstructionClock()		(GetSystemClock()/2)

#elif defined(__PIC32MX__)
	// PIC32MX processor
#define	GetSystemClock()            (72000000ul)         // 8 MHz/2 x 18 PLL
#define	GetPeripheralClock()		(GetSystemClock()/(1<<OSCCONbits.PBDIV))
#define	GetInstructionClock()		(GetSystemClock()/PFMWSbits.CHECON)
#endif

/*********************************************************************
* IOS FOR THE GRAPHICS PICTAIL FLASH MEMORY
*********************************************************************/

#if (GRAPHICS_PICTAIL_VERSION == 1)

#define SST39_CS_TRIS    TRISDbits.TRISD9
#define SST39_CS_LAT     LATDbits.LATD9
#define SST39_A18_TRIS   TRISBbits.TRISB11
#define SST39_A18_LAT    LATBbits.LATB11
#define SST39_A17_TRIS   TRISBbits.TRISB10
#define SST39_A17_LAT    LATBbits.LATB10
#define SST39_A16_TRIS   TRISDbits.TRISD3
#define SST39_A16_LAT    LATDbits.LATD3

#elif (GRAPHICS_PICTAIL_VERSION == 2)

#define SST39_CS_TRIS    TRISDbits.TRISD1
#define SST39_CS_LAT     LATDbits.LATD1
#define SST39_A18_TRIS   TRISCbits.TRISC2
#define SST39_A18_LAT    LATCbits.LATC2
#define SST39_A17_TRIS   TRISGbits.TRISG15
#define SST39_A17_LAT    LATGbits.LATG15
#define SST39_A16_TRIS   TRISGbits.TRISG14
#define SST39_A16_LAT    LATGbits.LATG14

#elif (GRAPHICS_PICTAIL_VERSION == 3)

#define SST25_CS_TRIS       TRISDbits.TRISD1
#define SST25_CS_LAT        LATDbits.LATD1
#define SST25_SCK_TRIS      TRISGbits.TRISG6
#define SST25_SDO_TRIS      TRISGbits.TRISG8
#define SST25_SDI_TRIS      TRISGbits.TRISG7

#endif // GRAPHICS_PICTAIL_VERSION


/*********************************************************************
* IOS FOR THE UART
*********************************************************************/

#define TX_TRIS         TRISFbits.TRISF5
#define RX_TRIS         TRISFbits.TRISF4


/*********************************************************************
* IO FOR THE BEEPER
*********************************************************************/

#define BEEP_TRIS_BIT     TRISDbits.TRISD0
#define BEEP_LAT_BIT      LATDbits.LATD0


#endif // __HARDWARE_PROFILE_H
