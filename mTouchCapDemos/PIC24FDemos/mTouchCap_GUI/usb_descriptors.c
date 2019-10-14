/**************************************************************************************
 FileName:     usb_descriptors.c
 Dependencies: See INCLUDES section
 Processor:    PIC18 ,PIC24 USB Microcontrollers
 Hardware:
 Complier:     Microchip C18 ,C30
 Company:	   Microchip Technology, Inc.

 Software License Agreement.

Microchip licenses this software to you solely for use with Microchip 
products,according to the terms of the accompanying click-wrap software 
license.Microchip and its licensors retain all right, title and interest in and 
to the software.All rights reserved.

This software and any accompanying information is for suggestion only.  
It shall not be deemed to modify Microchip’s standard warranty for its
products.It is your responsibility to ensure that this software meets your 
requirements.

SOFTWARE IS PROVIDED “AS IS” WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESS OR 
IMPLIED,INCLUDING WITHOUT LIMITATION, ANY WARRANTY OF MERCHANTABILITY, TITLE, 
NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR PURPOSE. IN NO EVENT WILL MICROCHIP 
OR ITS LICENSORS BE LIABLE FOR ANY DIRECT OR INDIRECT DAMAGES OR EXPENSES 
INCLUDING BUT NOT LIMITED TO INCIDENTAL, SPECIAL, INDIRECT, PUNITIVE OR 
CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF PROCUREMENT OF 
SUBSTITUTE GOODS, TECHNOLOGY OR SERVICES, OR ANY CLAIMS BY THIRD PARTIES 
(INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF), OR OTHER SIMILAR COSTS.  
The aggregate and cumulative liability of Microchip and its licensors for damages 
related to the use of the software will in no event exceed $1000 or the amount you 
paid Microchip for the software, whichever is greater.

MICROCHIP PROVIDES THIS SOFTWARE CONDITIONALLY UPON YOUR ACCEPTANCE OF THESE TERMS 
AND THE TERMS OF THE ACCOMPANYING CLICK-WRAP SOFTWARE LICENSE.

***************************************************************************************
 File Description:

 Change History:
  Rev   Date         Description
  1.0   11/19/2004   Initial release
  2.1   02/26/2007   Updated for simplicity and to use common
                     coding style
*******************************************************************/

/*********************************************************************
 * Descriptor specific type definitions are defined in: usbd.h
 * Configuration information is defined in: usbcfg.h
 ********************************************************************/

#ifndef __USB_DESCRIPTORS_C
#define __USB_DESCRIPTORS_C

/** INCLUDES *******************************************************/
#include "GenericTypeDefs.h"
#include "Compiler.h"
#include "usb.h"
#include "usb_function_hid.h"

/** CONSTANTS ******************************************************/
#if defined(__18CXX)
#pragma romdata
#endif

//==========================================================
//--- DESCRIPTOR: DEVICE
//==========================================================
ROM USB_DEVICE_DESCRIPTOR device_dsc=
{
   sizeof(USB_DEVICE_DESCRIPTOR),  // SIZE OF DESCRIPTOR
   USB_DESCRIPTOR_DEVICE,  // DEVICE descriptor type
   0x0101,                 // USB Spec Release Number in BCD format
   0x00,                   // Class Code
   0x00,                   // Subclass code
   0x00,                   // Protocol code
   8, //EP0_BUFF_SIZE,          // Max packet size for EP0, see usbcfg.h
   0x04D8,                 // Vendor ID
   0x0050,                 // Product ID:
   0x0100,                 // Device release number in BCD format
   0x01,                   // Manufacturer string index
   0x02,                   // Product string index
   0x00,                   // Device serial number string index
   0x01                    // Number of possible configurations
};

//==========================================================
//--- DESCRIPTOR: CONFIGURATION
//==========================================================
ROM BYTE configDescriptor1[]={

   //-------------------------
   //--- CONFIGURATION
   //-------------------------
   0x09,                   // SIZE OF DESCRIPTOR
   USB_DESCRIPTOR_CONFIGURATION,   // DESCRIPTOR TYPE
   0x29,0x00,              // TOTAL LENGTH OF CONFIGURATION DESC
   1,                      // NUMBER OF INTF
   1,                      // INDEX VALUE (THIS CONFIG)
   0,                      // CONFIGURATION STRING INDEX
//   _DEFAULT|_SELF,         // ATTRIBUTES (see usbd.h)
   0x80,                   // ATTRIBUTES (see usbd.h)
   50,                     // MAX POWER CONSUMPTION (2X mA)

   //-------------------------
   //--- INTERFACE
   //-------------------------
   0x09,                   // sizeof(USB_INTF_DSC)
   USB_DESCRIPTOR_INTERFACE, // INTERFACE descriptor type
   0,                      // INTERFACE NUMBER
   0,                      // ALTERNATE SETTING NUMBER
   2,                      // NUMBER OF ENDPOINTS
   3, //HID_INTF,               // CLASS CODE (3: HID)
   0,                      // SUBCLASS CODE
   0,                      // PROTOCOL
   0,                      // INTERFACE STRING
   
   //-------------------------
   //--- HID, CLASS SPECIFIC
   //-------------------------
   0x09,                   // sizeof(USB_HID_DSC)+3
   DSC_HID,                // HID descriptor type
//   0x11,0x01,              // HID Spec Release Number in BCD format (1.11)
   0x01,0x00,              // HID Spec Release Number in BCD format (1.11)
   0x00,                   // Country Code (0x00 for Not supported)
   HID_NUM_OF_DSC,         // Number of class descriptors, see usbcfg.h
   DSC_RPT,                // Report descriptor type
//   50,0x00,                // sizeof(hid_rpt01)
   29,0x00,                // sizeof(hid_rpt01)
    
   //-------------------------
   //--- ENDPOINT 1 - IN
   //-------------------------
   0x07,                      // sizeof(USB_EP_DSC)
   USB_DESCRIPTOR_ENDPOINT,   // DESCRIPTOR TYPE
   HID_EP | _EP_IN,           // ENDPOINT #/ADDRESS
   _INT,                      // ATTRIBUTES
   0x40,0x00,                 // SIZE
   0x0A,                      // POLLING INTERVAL

   //-------------------------
   //--- ENDPOINT 1 - OUT
   //-------------------------
   0x07,                      // sizeof(USB_EP_DSC)
   USB_DESCRIPTOR_ENDPOINT,   // DESCRIPTOR TYPE
   HID_EP | _EP_OUT,          // ENDPOINT #/ADDRESS
   _INT,                      // ATTRIBUTES
   0x40,0x00,                 // SIZE
   0x0A                       // POLLING INTERVAL

};


//==========================================================
//--- DESCRIPTOR: STRINGS
//==========================================================

   //-------------------------
   //--- LANGUAGE CODE
   //-------------------------
ROM struct{BYTE bLength;BYTE bDscType;WORD string[1];}sd000={
sizeof(sd000),USB_DESCRIPTOR_STRING,{0x0409
}};

   //-------------------------
   //--- MANUFACTURER
   //-------------------------
ROM struct{BYTE bLength;BYTE bDscType;WORD string[25];}sd001={
sizeof(sd001),USB_DESCRIPTOR_STRING,
{'M','i','c','r','o','c','h','i','p',' ',
'T','e','c','h','n','o','l','o','g','y',' ','I','n','c','.'
}};

   //-------------------------
   //--- PRODUCT
   //-------------------------
ROM struct{BYTE bLength;BYTE bDscType;WORD string[12];}sd002={
sizeof(sd002),USB_DESCRIPTOR_STRING,
{
'm','T','o','u','c','h','2',' ','D','e','m','o'
}};

//==========================================================
//--- REPORT
//==========================================================
ROM struct{BYTE report[HID_RPT01_SIZE];}hid_rpt01={
    {
   0x06, 0x00, 0xFF,          // usage page
   0x09, 0x01,                // usage
   0xA1, 0x01,                // collection
   0x19, 0x01,                // usage (min)
   0x29, 0x40,                // usage (max)
   0x15, 0x00,                // logical (min)
   0x26, 0xFF, 0x00,          // logical (max)
   0x75, 0x08,                // report size (bits)
   0x95, 0x40,                // report count (fields)
   0x81, 0x02,                // input (data, varb, absol)
   0x19, 0x01,                // usage (min)
   0x29, 0x40,                // usage (max)
   0x91, 0x02,                // output (data, varb, absol)
   0xC0

    }
};/* End Collection,End Collection            */

//================================================
//--- DESCRIPTOR ARRAY: CONFIGURATION
//================================================
ROM BYTE *ROM USB_CD_Ptr[]=
{
    (ROM BYTE *ROM)&configDescriptor1
};

//================================================
//--- DESCRIPTOR ARRAY: STRINGS
//================================================
ROM BYTE *ROM USB_SD_Ptr[]=
{
    (ROM BYTE *ROM)&sd000,
    (ROM BYTE *ROM)&sd001,
    (ROM BYTE *ROM)&sd002
};

#endif // __USB_DESCRIPTORS_C
