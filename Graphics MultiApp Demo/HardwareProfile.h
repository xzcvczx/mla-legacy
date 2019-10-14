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
 * Paolo  Tamayo		02/13/09    Modified for GMAP demo
 ********************************************************************/
#ifndef __HARDWARE_PROFILE_H
#define __HARDWARE_PROFILE_H

#include "GraphicsConfig.h"
#include "usb_config.h"

/*********************************************************************
* FOR THE INTERFACE TYPE
*********************************************************************/
// Select your interface type
// This library currently only supports a single physical interface layer
// Here is the selection matrix:
// PIC Device 		Demo Combo
// PIC24FJ256GB110 	USE_SD_INTERFACE_WITH_SPI or USE_USB_INTERFACE
// PIC24FJ256GA110  USE_SD_INTERFACE_WITH_SPI only
// PIC24FJ128GA010  SPI SD is not enabled because of space and USB is not enabled because it is not a USB device

#if defined(__PIC24FJ256GA110__)
	#define USE_SD_INTERFACE_WITH_SPI       // SD-SPI MSD Library(SD-SPI.c and .h)

#elif defined (__PIC24FJ256GB110__)
	// Use one of the two
	//#define USE_SD_INTERFACE_WITH_SPI     	// SD-SPI MSD Library(SD-SPI.c and .h)
	#define USE_USB_INTERFACE               // USB host MSD library

#elif defined (__32MX360F512L__)	
	#define USE_SD_INTERFACE_WITH_SPI     	// SD-SPI MSD Library(SD-SPI.c and .h)

#elif defined (__32MX460F512L__)	
	#define USE_USB_INTERFACE               // USB host MSD library

	/*********************************************************************
	* SELECT THE HARDWARE USED (PIM or Starter Kits)
	*********************************************************************/
	//#define PIC32USB_STARTERKIT
	
#endif


/*********************************************************************
* SELECT THE HARDPROFILE FOR THE APPROPRIATE MICRO
*********************************************************************/
    #if defined(__PIC32MX__)
        #if defined(__32MX460F512L__)
            #include "HardwareProfile - GMAP PIC32MX460F512L PIM.h"
        #elif defined(__32MX360F512L__)
            #include "HardwareProfile - GMAP PIC32MX360F512L PIM.h"
        #endif
    #endif

    #if defined(__C30__)
        #if defined(__PIC24FJ256GB110__)
            #include "HardwareProfile - GMAP PIC24FJ256GB110 PIM.h"
        #elif defined(__PIC24FJ256GA110__)
            #include "HardwareProfile - GMAP PIC24FJ256GA110 PIM.h"
        #elif defined(__PIC24FJ128GA010__)
            #include "HardwareProfile - GMAP PIC24FJ128GA010 PIM.h"
        #endif
    #endif


#endif // __HARDWARE_PROFILE_H
