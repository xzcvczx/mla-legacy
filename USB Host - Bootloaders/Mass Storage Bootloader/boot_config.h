/*
*******************************************************************************
                                                                                
Software License Agreement                                                      
                                                                                
Copyright © 2007-2008 Microchip Technology Inc. and its licensors.  All         
rights reserved.                                                                
                                                                                
Microchip licenses to you the right to: (1) install Software on a single        
computer and use the Software with Microchip 16-bit microcontrollers and        
16-bit digital signal controllers ("Microchip Product"); and (2) at your        
own discretion and risk, use, modify, copy and distribute the device            
driver files of the Software that are provided to you in Source Code;           
provided that such Device Drivers are only used with Microchip Products         
and that no open source or free software is incorporated into the Device        
Drivers without Microchip's prior written consent in each instance.             
                                                                                
You should refer to the license agreement accompanying this Software for        
additional information regarding your rights and obligations.                   
                                                                                
SOFTWARE AND DOCUMENTATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY         
KIND, EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY              
WARRANTY OF MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A          
PARTICULAR PURPOSE. IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE             
LIABLE OR OBLIGATED UNDER CONTRACT, NEGLIGENCE, STRICT LIABILITY,               
CONTRIBUTION, BREACH OF WARRANTY, OR OTHER LEGAL EQUITABLE THEORY ANY           
DIRECT OR INDIRECT DAMAGES OR EXPENSES INCLUDING BUT NOT LIMITED TO ANY         
INCIDENTAL, SPECIAL, INDIRECT OR CONSEQUENTIAL DAMAGES, LOST PROFITS OR         
LOST DATA, COST OF PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY,                 
SERVICES, ANY CLAIMS BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY         
DEFENSE THEREOF), OR OTHER SIMILAR COSTS.                                       
                                                                                
*******************************************************************************

The boot loader uses three interfaces to define and customize its behavior.

Boot Loader IO Interface:

The boot loader IO interface definitions provide control inputs and status
outputs that the boot loader can use to determine when it should load a new
application image and how it should report its status.

Boot Loader Media Interface:

The boot loader media interface definitions provide access to the boot image 
medium and the ability to read the file.

Boot Loader Interface

The Loader interface definitions provide any data translation and Flash 
programming necessary to load the boot image into program Flash memory.

These interface routines can be implemented via macros or functions as 
required.
*******************************************************************************
*/

/* Boot Status Codes
**************************************************************************
BOOT_STATUS is used to identify the current status of the boot loader.
**************************************************************************
*/

typedef enum
{
    // Boot loader status
    BL_RESET = 0,           // Device has been reset
    BL_LOADING,             // Loading of a new application image activated
    BL_TRANSPORT_INIT,      // Boot loader transport layer initialized
    BL_MEDIUM_DETACH,       // Indicates that the boot medium has been detached
    BL_FOUND_FILE,          // New application image file has been found
    BL_PROGRAMMED,          // The application image has been programmed to Flash
    BL_BOOTING,             // Booting application image

    // Transport-specific errors
    BL_USB_OC_ERR,          // USB Over-current error detected
    BL_FS_INIT_ERR,         // Unable to initialize the boot medium's file system
    BL_USB_HUB_ERR,         // USB hub error (hubs not supported)
    BL_BAD_DEV_ERR,         // Unsupported USB device attached
    USB_ENUM_ERR,           // Unable to enumerate USB device
    USB_MSD_INIT_ERR,       // Unable to initialize USB MSD client driver
    OUT_OF_MEMORY_ERR,      // Attempted to malloc memory and failed
    BL_FILE_ERR,            // Unable to open the boot image file
    USB_ERR,                // Unspecified USB error

    // Loader Errors
    LOADER_ADDRESS_LOW,     // Flash block address is out of range, low
    LOADER_ADDRESS_HIGH,    // Flash block address is out of range, high
    LOADER_CHECKSUM_ERR,    // Hex record checksum didn't match
    LOADER_FLASH_ERASE_ERR, // Erase had an error
    LOADER_FLASH_WRITE_ERR, // Unable to write to Flash
    LOADER_FLASH_VERIFY_ERR,// Data written to Flash did not match buffer data

    // General errors
    BL_BOOT_FAIL,           // Application not valid or failed to launch
    BL_FILE_NOT_FOUND       // Application image file not found

} BOOT_STATUS; 


/*
*******************************************************************************
Boot Loader IO Configuration
*******************************************************************************
*/

// Selects the switch pressed to load a new image.
#define BOOT_SWITCH             BIT_13


/* Boot Loader IO Call Out Interfaces
*******************************************************************************
The following interfaces are defined by macros and called from the boot loader 
to customize and define its control and status IO behavior.
*******************************************************************************
*/

#define BLIO_LoaderEnabled()    (sw2==0)

extern volatile BOOT_STATUS BootStatus;
#define BLIO_ReportBootStatus(s,z)            (BootStatus=(s))


//*****************************************************************************
// Boot Loader Media Interface Configuration
//*****************************************************************************

// Application Image File Name
#define BOOT_FILE_NAME          "image.hex"

// Defines the size of the buffer used to read the boot image file.
#define BL_READ_BUFFER_SIZE     512


/* Boot Loader Media Interface Call Outs
*******************************************************************************
The following interface routines are called from the boot loader to access new
application image file and program it to Flash.
*******************************************************************************
*/

#define BLMedia_InitializeTransport()       USBInitialize(0)

//TODO: verify port to PIC24
#if defined(__PIC32__)
#define BLMedia_DeinitializeTransport()     (USBHostShutdown(),IFS1CLR = 0x02000000)
#else
#define BLMedia_DeinitializeTransport()     (USBHostShutdown())
#endif

#define BLMedia_MediumAttached()            USBHostMSDSCSIMediaDetect()


/* "Loader" Interface Call Outs
*******************************************************************************
The following interface is used by the media layer to decode and program the 
image file to memory.
*******************************************************************************
*/

#define APPLICATION_ADDRESS         0xA000

// These macros define the maximum size of a Flash block.
#define PROGRAM_FLASH_BASE          0x0000A000          // Physical address
//#define PROGRAM_FLASH_LENGTH        0x00020C00          // Length in bytes - this includes the configuration words
#define PROGRAM_FLASH_LENGTH        0x00020800          // Length in bytes - this does not include the configuration words

#define FLASH_BLOCK_SIZE            (1024)          // Size in bytes

// Optional Record Type Support (Necessary if EXTENDED_HEXFILE_SUPPORT is defined)
#define Loader_ValidateSerialNumber(d,l)    RECORD_NON_DATA
#define Loader_ValidateRevisionNumber(d,l)  RECORD_NON_DATA
#define Loader_CheckErrorDetection(d,l)     RECORD_NON_DATA

#define Loader_PermitProgramming()          TRUE


/*
*******************************************************************************
EOF
*******************************************************************************
*/

