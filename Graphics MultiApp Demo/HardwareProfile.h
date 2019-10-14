/*********************************************************************
 *
 *	Hardware specific definitions
 *
 *********************************************************************
 * FileName:        HardwareProfile.h
 * Dependencies:    None
 * Processor:       PIC24F, PIC24H, dsPIC, PIC32
 * Compiler:        Microchip C32 v1.00 or higher
 *					Microchip C30 v3.01 or higher
 * Company:         Microchip Technology, Inc.
 *
 * Software License Agreement
 *
 * Copyright � 2002-2008 Microchip Technology Inc.  All rights 
 * reserved.
 *
 * Microchip licenses to you the right to use, modify, copy, and 
 * distribute: 
 * (i)  the Software when embedded on a Microchip microcontroller or 
 *      digital signal controller product (�Device�) which is 
 *      integrated into Licensee�s product; or
 * (ii) ONLY the Software driver source files ENC28J60.c and 
 *      ENC28J60.h ported to a non-Microchip device used in 
 *      conjunction with a Microchip ethernet controller for the 
 *      sole purpose of interfacing with the ethernet controller. 
 *
 * You should refer to the license agreement accompanying this 
 * Software for additional information regarding your rights and 
 * obligations.
 *
 * THE SOFTWARE AND DOCUMENTATION ARE PROVIDED �AS IS� WITHOUT 
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
 * Jayanth Murthy       06/25/09    dsPIC & PIC24H support 
 * Pradeep Budagutta	15 Sep 2009 Added PIC24FJ256DA210 Development Board Support
 ********************************************************************/
#if defined(__dsPIC33F__) || defined(__PIC24H__)
	#error "This Demo is not supporting dsPIC or PIC24H devices!"
#endif	

#if defined (__PIC24F__)  

	#if defined (__PIC24FJ256DA210__)
		#include "Alternative Configurations\HardwareProfile_DA210_DEV_BOARD_16PMP_MCHP_DA210_USBMSD_HID_TFT_G240320LTSW_118W_E.h"
		//#include "Alternative Configurations\HardwareProfile_DA210_DEV_BOARD_16PMP_MCHP_DA210_USBMSD_HID_PH480272T_005_I11Q.h"

	#elif defined (__PIC24FJ256GB110__)

		#include "Alternative Configurations\HardwareProfile_GFX_PICTAIL_V3_8PMP_SSD1926_USBMSD_HID_TFT_G240320LTSW_118W_E.h"
		//#include "Alternative Configurations\HardwareProfile_GFX_PICTAIL_V3_8PMP_SSD1926_USBMSD_HID_PH480272T_005_I11Q.h"
		
		//#include "Alternative Configurations\HardwareProfile_GFX_PICTAIL_V3_8PMP_SSD1926_SDMSD_HID_TFT_G240320LTSW_118W_E.h"
		//#include "Alternative Configurations\HardwareProfile_GFX_PICTAIL_V3_8PMP_SSD1926_SDMSD_HID_PH480272T_005_I11Q.h"

	#elif defined (__PIC24FJ256GA110__) 

		#include "Alternative Configurations\HardwareProfile_GFX_PICTAIL_V3_8PMP_SSD1926_SDMSD_TFT_G240320LTSW_118W_E.h"
		//#include "Alternative Configurations\HardwareProfile_GFX_PICTAIL_V3_8PMP_SSD1926_SDMSD_PH480272T_005_I11Q.h"

		//#include "Alternative Configurations\HardwareProfile_GFX_PICTAIL_V2_8PMP_LGDP4531_SDMSD.h"

	#else // (for __PIC24FJ128GA010__)

		#include "Alternative Configurations\HardwareProfile_GFX_PICTAIL_V3_8PMP_SSD1926_TFT_G240320LTSW_118W_E.h"
		//#include "Alternative Configurations\HardwareProfile_GFX_PICTAIL_V3_8PMP_SSD1926_PH480272T_005_I11Q.h"
		
		//#include "Alternative Configurations\HardwareProfile_GFX_PICTAIL_V2_8PMP_LGDP4531.h"
		
	#endif

#elif defined (__PIC32MX__) 

	#if defined (__32MX460F512L__)

		#include "Alternative Configurations\HardwareProfile_GFX_PICTAIL_V3_8PMP_SSD1926_USBMSD_HID_TFT_G240320LTSW_118W_E.h"
		//#include "Alternative Configurations\HardwareProfile_GFX_PICTAIL_V3_8PMP_SSD1926_USBMSD_HID_PH480272T_005_I11Q.h"
		
		//#include "Alternative Configurations\HardwareProfile_GFX_PICTAIL_V3_8PMP_PIC32_USB_STK_SSD1926_USBMSD_HID_TFT_G240320LTSW_118W_E.h"
		//#include "Alternative Configurations\HardwareProfile_GFX_PICTAIL_V3_8PMP_PIC32_USB_STK_SSD1926_USBMSD_HID_PH480272T_005_I11Q.h"
		
	#else 
	
		#include "Alternative Configurations\HardwareProfile_GFX_PICTAIL_V3_8PMP_SSD1926_SDMSD_TFT_G240320LTSW_118W_E.h"
		//#include "Alternative Configurations\HardwareProfile_GFX_PICTAIL_V3_8PMP_SSD1926_SDMSD_PH480272T_005_I11Q.h"

		//#include "Alternative Configurations\HardwareProfile_GFX_PICTAIL_V3_8PMP_PIC32_STK_SSD1926_SDMSD_TFT_G240320LTSW_118W_E.h"
		//#include "Alternative Configurations\HardwareProfile_GFX_PICTAIL_V3_8PMP_PIC32_STK_SSD1926_SDMSD_PH480272T_005_I11Q.h"

		//#include "Alternative Configurations\HardwareProfile_GFX_PICTAIL_V2_8PMP_LGDP4531_SDMSD.h"
	
	#endif

#endif

    