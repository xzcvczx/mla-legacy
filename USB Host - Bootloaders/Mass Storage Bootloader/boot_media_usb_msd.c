/*
********************************************************************************
                                                                                
Software License Agreement                                                      
                                                                                
Copyright © 2008 Microchip Technology Inc. and its licensors.  All         
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
                                                                                
********************************************************************************
*/

#include "GenericTypedefs.h"
#include "HardwareProfile.h"
#include "boot.h"
#include "Compiler.h"
#include "MDD File System\FSIO.h"
#include "USB\usb.h"
#include "USB\usb_host_msd.h"
#include "USB\usb_host_msd_scsi.h"
#include <stdio.h>
#include <string.h>


//*****************************************************************************
//*****************************************************************************
// Boot Loader Media Interface Definitions
//*****************************************************************************
//*****************************************************************************

// Check for definitions of required build parameters

// Maximum number of retries to mount the boot medium
#ifndef MAX_NUM_MOUNT_RETRIES
    #define MAX_NUM_MOUNT_RETRIES       10
#endif

// Defines the size of the buffer used to read the boot image file.
#ifndef BL_READ_BUFFER_SIZE
    #define BL_READ_BUFFER_SIZE        512
#endif


//******************************************************************************
//******************************************************************************
// Global Data
//******************************************************************************
//******************************************************************************

// Flag indicating media attached
BOOL            MediaPresent;

// Flag indicating file system volume valid
BOOL            VolumeValid;

// Buffer for reading image file data
BYTE            ReadBuffer[BL_READ_BUFFER_SIZE];

// Stores data and base address of data for use by the programming routine
FLASH_BLOCK    FlashBlock;


//******************************************************************************
//******************************************************************************
// USB Support Functions
//******************************************************************************
//******************************************************************************

/****************************************************************************
  Function:
    BOOL USB_ThumbDriveEventHandler( BYTE address, USB_EVENT event,
                void *data, DWORD size )

  Summary:
    This is the boot loader event handler.  It is called when the USB stack 
    has an event that needs to be handled by the boot loader rather than by
    the USB client driver.

  Precondition:
    The USB stack must have been initialized.

  Parameters:
    address - Address of device where event occurred
    event   - Identifies the event that occured
    data    - Pointer to event-specific data
    size    - Size of the event-specific data

  Return Values:
    TRUE    - The event was handled
    FALSE   - The event was not handled

  Remarks:
    None
  ***************************************************************************/

BOOL USB_ThumbDriveEventHandler( BYTE address, USB_EVENT event, void *data, DWORD size )
{
    switch( event )
    {        
    case EVENT_VBUS_REQUEST_POWER:
        // The data pointer points to a byte that represents the amount of power
        // requested in mA, divided by two.  If the device wants too much power,
        // we reject it.
        if (((USB_VBUS_POWER_EVENT_DATA*)data)->current <= (MAX_ALLOWED_CURRENT / 2))
        {
            return TRUE;
        }
        else
        {
            MediaPresent = FALSE;
            BLIO_ReportBootStatus( BL_USB_OC_ERR, "BL: USB Error - device requires too much current\r\n" );
        }
        break;

    case EVENT_VBUS_RELEASE_POWER:
        // The Explorer 16 cannot turn off Vbus through software.
        BLIO_ReportBootStatus( BL_MEDIUM_DETACH, "BL: USB - Boot medium detached\r\n" );
        return TRUE;

    case EVENT_HUB_ATTACH:
        BLIO_ReportBootStatus( BL_USB_HUB_ERR, "BL: USB Error - hubs are not supported\r\n" );
        return TRUE;

    case EVENT_UNSUPPORTED_DEVICE:
        BLIO_ReportBootStatus( BL_BAD_DEV_ERR, "BL: USB Error - device is not supported\r\n" );
        return TRUE;

    case EVENT_CANNOT_ENUMERATE:
        BLIO_ReportBootStatus( USB_ENUM_ERR,  "BL: USB Error - cannot enumerate device\r\n" );
        return TRUE;

    case EVENT_CLIENT_INIT_ERROR:
        BLIO_ReportBootStatus( USB_MSD_INIT_ERR, "BL: USB Error - msd client driver initialization error\r\n" );
        return TRUE;

    case EVENT_OUT_OF_MEMORY:
        BLIO_ReportBootStatus( OUT_OF_MEMORY_ERR, "BL: Error - out of heap memory\r\n" );
        return TRUE;

    case EVENT_UNSPECIFIED_ERROR:   // This should never be generated.
        BLIO_ReportBootStatus( USB_ERR, "BL: USB Error - unspecified\r\n" );
        return TRUE;
    default:
        break;
    }

    return FALSE;

} // USB_ThumbDriveEventHandler


//******************************************************************************
//******************************************************************************
// Boot Loader Media Interface Functions
//******************************************************************************
//******************************************************************************

/****************************************************************************
  Function:
    BOOL BLMedia_InitializeTransport ( void )

  Description:
    This routine is called to initalize the media transport layer used to 
    access the boot medium.

  Precondition:
    None

  Parameters:
    None

  Returns:
    TRUE    - If able to initialize the boot medium's transport layer
    FALSE   - If not able to initialize the boot medium's transport layer

  Remarks:
    This routine can be implemented to inialize any desired boot medium.
***************************************************************************/

// Implemented as a macro to call USBInitialize()


/****************************************************************************
  Function:
    void BLMedia_DeinitializeTransport ( void )

  Description:
    This routine disables the media transport layer that was initialized by
    BLMedia_InitializeTransport.


  Precondition:
    None

  Parameters:
    None

  Returns:
    None

  Remarks:
    This routine must disable and clear any interrupts that were enabled
    by BLMedia_InitializeTransport.  Any stray pending interrupts (once the
    application boots) may cause the system to trigger an un-handled (or 
    incorrectly handled) interrupt.
***************************************************************************/

// Implemented as a macro to call USBShutdown()


/****************************************************************************
  Function:
    BOOL BLMedia_MonitorMedia( void )

  Description:
    This function calls the background tasks necessary to support USB Host
    operation.  Upon initial insertion of the media, it initializes the file
    system support.

  Precondition:
    The USB transport must have been initialized.

  Parameters:
    None

  Returns:
    TRUE    - As long as the media interface is active
    FALSE   - If for any reason the media interface needs to be 
              re-initialized.

  Remarks:
    Calls USBTasks() to maintain the USB MSD and FAT FS stack.
  ***************************************************************************/

BOOL BLMedia_MonitorMedia ( void )
{
    BYTE            mediaPresentNow;
    BYTE            mountTries;

    USBTasks();

    mediaPresentNow = USBHostMSDSCSIMediaDetect();
    if (mediaPresentNow != MediaPresent)
    {
        if (mediaPresentNow)
        {
            mountTries = MAX_NUM_MOUNT_RETRIES;
            while(!FSInit() && mountTries--);
            if (!mountTries)
            {
                BLIO_ReportBootStatus(BL_FS_INIT_ERR, "BL: USB Error - Could not initialize file system\r\n" );
                MediaPresent = FALSE;
            }
            else
            {
                MediaPresent = TRUE;
            }
        }
        else
        {
            MediaPresent    = FALSE;
            VolumeValid     = FALSE;
        }
    }

    return TRUE;

} // MonitorMedia


/****************************************************************************
  Function:
    BOOL BLMedia_MediumAttached ( void )

  Description:
    This routine determines if the boot medium is currently attached to the
    system.

  Precondition:
    BLMedia_InitializeTransport must have been called and the medium muust
    be maintained as needed.

  Parameters:
    None

  Returns:
    TRUE    - If the boot medium is currently attached and accessible
    FALSE   - If the boot medium is not currently attached

  Remarks:
    None
***************************************************************************/

// Implemented as a macro to call USBHostMSDSCSIMediaDetect()


/****************************************************************************
  Function:
    BOOL BLMedia_LocateFile ( char *file_name )

  Description:
    Searches the thumb drive's root directory and identifies if 
    the given file is present.

  Precondition:
    The USB transport must have been initialized.

  Parameters:
    file_name - Pointer to a null-terminated character string giving the 
                name of the application's image file.

  Returns:
    TRUE      - If the application's image file named by the file_name string
                is able to be found on the boot medium.
    FALSE     - If the file cannot be found.

  Remarks:
    None
  ***************************************************************************/

BOOL BLMedia_LocateFile ( char *file_name )
{
    //BOOL        fileFound;
    SearchRec   searchRecord;

    if (FindFirst( file_name, 
                   ATTR_DIRECTORY | ATTR_ARCHIVE | ATTR_READ_ONLY | ATTR_HIDDEN, 
                   &searchRecord ) == 0 )
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }

} // BLMedia_LocateFile


/****************************************************************************
  Function:
    BOOL BLMedia_LoadFile (  char *file_name )

  Description:
    Accesses the boot image file, reads it over the transport, and programs
    it to Flash.

  Precondition:
    The boot medium and file system must have been initialized and
    maintained as needed.

  Parameters:
    file_name - Pointer to a null-terminated character string giving the 
                name of the application's image file.

  Returns:
    TRUE      - If a valid application image was read from the thumb drive
                and programmed into Flash at the APPLICATION_ADDRESS.
    FALSE     - If the application image was not valid or if unable to 
                program a valid application to Flash for any reason.

  Remarks:
    This routine calls the loader layer to translate and program the boot
    image file.
    
    This routine can be modified to account for differences in how the medium
    and file format must be processed.
  ***************************************************************************/
#define AsciiToHexByte(m,l) ( (AsciiToHexNibble(m) << 4 ) | AsciiToHexNibble(l) )
unsigned char AsciiToHexNibble(unsigned char data);
BYTE recordData[256];
typedef enum
{
    START_CODE,
    BYTE_COUNT_B1,
    BYTE_COUNT_B2,
    ADDRESS_B1,
    ADDRESS_B2,
    ADDRESS_B3,
    ADDRESS_B4,
} RECORD_STATE;

typedef enum
{
    RECORD_TYPE_DATA_RECORD = 0x00,
    RECORD_TYPE_EOF = 0x01,
    RECORD_TYPE_EXTENDED_ADDRESS = 0x04
} RECORD_TYPE;

BOOL BLMedia_LoadFile (  char *file_name )
{
    FSFILE         *fp;             // File pointer
    size_t          nBuffer;        // Number of bytes in the read buffer
    size_t          iBuffer;        // Index into the read buffer
    unsigned int    nRemaining;     // Number of bytes remaining to decode
    unsigned int    Result;         // Result code from "GetFlashBlock" operation

    WORD_VAL        byteCountASCII;
    DWORD_VAL       addressASCII;
    DWORD_VAL       extendedAddressASCII;
    WORD_VAL        recordTypeASCII;
    WORD_VAL        checksumASCII;
    WORD_VAL        dataByteASCII;
    DWORD_VAL       totalAddress;

    BYTE_VAL        byteCount;
    WORD_VAL        address;
    WORD_VAL        extendedAddress;
    BYTE_VAL        recordType;
    BYTE_VAL        checksum;
    BYTE_VAL        dataByte;

    BYTE            recordDataCounter;
    BYTE            byteEvenVsOdd;

    WORD            byteCountCopy;
    WORD*           pData;
    BYTE            i;
    WORD            numSectorsRead;
    DWORD           numRecordsProcessed;

    // Attempt to open the file
    if ( (fp=FSfopen( file_name, "r" )) == NULL )
    {
        BLIO_ReportBootStatus(BL_FILE_ERR, "BL: USB Error - Unable to open file\r\n" );
        return FALSE;
    }
    else
    {
        numSectorsRead = 0;
        numRecordsProcessed = 0;

        for(totalAddress.Val=PROGRAM_FLASH_BASE;(totalAddress.Val/1)<(PROGRAM_FLASH_BASE+PROGRAM_FLASH_LENGTH);totalAddress.Val+=(FLASH_BLOCK_SIZE))
        {
        	NVMCON = 0x4042;				//Erase page on next WR
    
    	    TBLPAG = totalAddress.word.HW;
    	    __builtin_tblwtl(totalAddress.word.LW, 0xFFFF);
            
    	    asm("DISI #16");					//Disable interrupts for next few instructions for unlock sequence
    	    __builtin_write_NVM();
            while(NVMCONbits.WR == 1){}
        }


        Loader_Initialize(&FlashBlock);


        // Read the file and program it to Flash
        iBuffer     = 0;
        nRemaining  = 0;
        nBuffer     = 0;

        while(1)
        {
            if(nRemaining == 0)
            {
                nRemaining = FSfread(&ReadBuffer[0], 1, BL_READ_BUFFER_SIZE, fp );
                if(nRemaining == 0)
                {   
                    //unable to read data from the file
                    FSfclose( fp );
                    return FALSE;
                }
                numSectorsRead++;
                iBuffer = 0;
            }

            switch(nBuffer)
            {
                case 0: //start code
                    if(ReadBuffer[iBuffer] != ':')
                    {
                        //ignore line feeds and line returns
                        if((ReadBuffer[iBuffer] != 0x0D) || (ReadBuffer[iBuffer] != 0x0A))
                        {
                            iBuffer++; 
                            nRemaining--;
                            //end of line of the last line
                            continue;
                        }
                        else
                        {
                            FSfclose( fp );
                            return FALSE;
                        }
                    }    
                    iBuffer++;        
                    break;
                case 1: //byte count byte 1
                    byteCountASCII.v[1] = ReadBuffer[iBuffer++];
                    break;
                case 2: //byte count byte 2
                    byteCountASCII.v[0] = ReadBuffer[iBuffer++];
                    byteCount.Val = AsciiToHexByte(byteCountASCII.v[1],byteCountASCII.v[0]);
                    byteCountCopy = byteCount.Val;
                    byteEvenVsOdd = 0;
                    recordDataCounter = 0;
                    break;
                case 3: //address byte 1
                    addressASCII.v[3] = ReadBuffer[iBuffer++];
                    break;
                case 4: //address byte 2
                    addressASCII.v[2] = ReadBuffer[iBuffer++];
                    break;
                case 5: //address byte 3
                    addressASCII.v[1] = ReadBuffer[iBuffer++];
                    break;
                case 6: //address byte 4
                    addressASCII.v[0] = ReadBuffer[iBuffer++];
                    address.v[0] = AsciiToHexByte(addressASCII.v[1],addressASCII.v[0]);
                    address.v[1] = AsciiToHexByte(addressASCII.v[3],addressASCII.v[2]);
                    break;
                case 7: //record type byte 1
                    recordTypeASCII.v[1] = ReadBuffer[iBuffer++];
                    break;
                case 8: //record type byte 2
                    recordTypeASCII.v[0] = ReadBuffer[iBuffer++];
                    recordType.Val = AsciiToHexByte(recordTypeASCII.v[1],recordTypeASCII.v[0]);
                    break;
                case 9: //data
                    if(byteCountCopy != 0)
                    {
                        if(byteEvenVsOdd == 0)
                        {
                            dataByteASCII.v[1] = ReadBuffer[iBuffer++];
                            byteEvenVsOdd = 1;
                        }
                        else
                        {
                            dataByteASCII.v[0] = ReadBuffer[iBuffer++];
                            dataByte.Val = AsciiToHexByte(dataByteASCII.v[1],dataByteASCII.v[0]);
                            recordData[recordDataCounter++] = dataByte.Val;
                            byteCountCopy--;
                            byteEvenVsOdd = 0;
                        }
                        break;
                    }
                    else
                    {
                        nBuffer = 10;
                    }
                case 10: //checksum byte 1
                    checksumASCII.v[1] = ReadBuffer[iBuffer++];
                    break;
                case 11: //checksum byte 2
                    checksumASCII.v[0] = ReadBuffer[iBuffer++];
                    checksum.Val = AsciiToHexByte(checksumASCII.v[1],checksumASCII.v[0]);
                    numRecordsProcessed++;

                    switch(recordType.Val)
                    {
                        case RECORD_TYPE_DATA_RECORD:
                            if(numRecordsProcessed == 0xA34)
                            {
                                Nop();
                            }

                            //check the address here
                            totalAddress.word.HW = extendedAddress.Val;
                            totalAddress.word.LW = address.Val;
                            totalAddress.Val = totalAddress.Val / 2;
                            if(totalAddress.Val < PROGRAM_FLASH_BASE)
                            {
                                //invalid address - below base - don't program the requested address
                                break;
                            }

                            if(totalAddress.Val >= (PROGRAM_FLASH_BASE + PROGRAM_FLASH_LENGTH))
                            {
                                break;
                            }

                            pData = &recordData[0];

                        	NVMCON = 0x4003;		//Perform WORD write next time WR gets set = 1.
                        
                        	TBLPAG = totalAddress.word.HW;
                
                            if((byteCount.Val%4)!=0)
                            {
                                //not word aligned data
                                FSfclose( fp );
                                return FALSE;
                            }

                            //Program the data
                            for(i=0;i<byteCount.Val;i+=4)
                            {                 
                        	    TBLPAG = totalAddress.word.HW;

      		                    //Write the low word to the latch
                        	    __builtin_tblwtl(totalAddress.word.LW, *pData++);	
                                //Write the high word to the latch (8 bits of 
                                //  data + 8 bits of "phantom data")	
                        	    __builtin_tblwth(totalAddress.word.LW, *pData++);	
                                
                                totalAddress.Val+=2;

                                //Disable interrupts for next few instructions for unlock sequence
                            	asm("DISI #16");					
                            	__builtin_write_NVM();
                                while(NVMCONbits.WR == 1){}
                            }
                            //Good practice to clear WREN bit anytime we are not
                            //  expecting to do erase/write operations, further 
                            //  reducing probability of accidental activation.
                        	NVMCONbits.WREN = 0;		

                            //verify that the contents were programmed correctly
                            pData = &recordData[0];
                            totalAddress.Val-=(byteCount.Val/2);
                            for(i=0;i<byteCount.Val;i+=4)
                            {       
                                TBLPAG = totalAddress.word.HW;
                                     
                        	    if(__builtin_tblrdl(totalAddress.word.LW) != *pData++)
                                {
                                    //data in flash doesn't match expected value,
                                    //  close file and bail.
                                    FSfclose( fp );
                                    return FALSE;
                                }

                        	    if(__builtin_tblrdh(totalAddress.word.LW) != *pData++)
                                {
                                    //data in flash doesn't match expected value,
                                    //  close file and bail.
                                    FSfclose( fp );
                                    return FALSE;
                                }
                                
                                totalAddress.Val+=2;
                            }

                            break;
                        case RECORD_TYPE_EOF:
                            FSfclose( fp );
                            return TRUE;
                            break;
                        case RECORD_TYPE_EXTENDED_ADDRESS:
                            extendedAddress.v[1] = recordData[0];
                            extendedAddress.v[0] = recordData[1];
                            break;
                    }
                    break;
                default:
                    FSfclose( fp );
                    return FALSE;
            }

            if(nBuffer != 9)
            {
                nBuffer++;
            }

            if(nBuffer == 12)
            {
                nBuffer = 0;
            }

            nRemaining--;
        }

        FSfclose( fp );
    }

    return TRUE;

} // BLMedia_LoadFile

/*
*******************************************************************************
EOF
*******************************************************************************
*/

