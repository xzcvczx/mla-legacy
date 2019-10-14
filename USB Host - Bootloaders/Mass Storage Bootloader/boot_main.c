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

#include "Compiler.h"
#include "GenericTypedefs.h"
#include "HardwareProfile.h"
#include "boot.h"
#include "MDD File System\FSIO.h"
#include "USB\usb.h"
#include "USB\usb_host_msd_scsi.h"

// *****************************************************************************
// *****************************************************************************
// Configuration Bits
// *****************************************************************************
// *****************************************************************************

#define PLL_96MHZ_OFF   0xFFFF
#define PLL_96MHZ_ON    0xF7FF


// Configuration Bit settings  for an Explorer 16 with USB PICtail Plus
//      Primary Oscillator:             HS
//      Internal USB 3.3v Regulator:    Disabled
//      IOLOCK:                         Set Once
//      Primary Oscillator Output:      Digital I/O
//      Clock Switching and Monitor:    Both disabled
//      Oscillator:                     Primary with PLL
//      USB 96MHz PLL Prescale:         Divide by 2
//      Internal/External Switch Over:  Enabled
//      WDT Postscaler:                 1:32768
//      WDT Prescaler:                  1:128
//      WDT Window:                     Non-window Mode
//      Comm Channel:                   EMUC2/EMUD2
//      Clip on Emulation Mode:         Reset into Operation Mode
//      Write Protect:                  Disabled
//      Code Protect:                   Disabled
//      JTAG Port Enable:               Disabled

_CONFIG2(FNOSC_PRIPLL & POSCMOD_HS & PLL_96MHZ_ON & PLLDIV_DIV2) // Primary HS OSC with PLL, USBPLL /2
_CONFIG1(JTAGEN_OFF & FWDTEN_OFF & ICS_PGx2)   // JTAG off, watchdog timer off

// Macro used to call main application
/****************************************************************************
  Function:
    int BootApplication ( void )

  Description:
    This macro is used to launch the application.

  Precondition:
    The application image must be correctly programmed into Flash at the 
    appropriate entry point.

  Parameters:
    None

  Returns:
    This call does not normally return.

  Remarks:
    The application's entry point is defined by the APPLICATION_ADDRESS
    macro in the boot_config.h header file.
***************************************************************************/

#define BootApplication()       (((int(*)(void))(APPLICATION_ADDRESS))())


/****************************************************************************
  Function:
    void LoadApplication ( void )

  Description:
    This routine attempts to initialize and attach to the boot medium, locate
    the boot image file, and load and program it to the flash.

  Precondition:
    The boot loader IO must have been initialized.

  Parameters:
    None

  Returns:
    None

  Remarks:
    None
***************************************************************************/
void LoadApplication ( void )
{
    BOOL    LoadingApplication      = TRUE;
    BOOL    TransportInitialized    = FALSE;
    //BOOL    FileSystemInitialized   = FALSE;
    BOOL    BootMediumAttached      = FALSE;
    BOOL    BootImageFileFound      = FALSE;
    BOOL    BootImageFileError      = FALSE;
    int     ErrCount                = 0;

    // Loader main loop
    while (LoadingApplication)
    {
        if (TransportInitialized)
        {
            // Keep the boot medium alive
            TransportInitialized = BLMedia_MonitorMedia();
            
            // Check for the boot medium to attach
            BootMediumAttached = BLMedia_MediumAttached();
            if (BootMediumAttached)
            {
                if (!BootImageFileError)
                {
                    // Attempt to locate the boot image file
                    BootImageFileFound = BLMedia_LocateFile(BOOT_FILE_NAME);
                    if (BootImageFileFound)
                    {
                        BLIO_ReportBootStatus(BL_FOUND_FILE, "BL: Application image file has been found\r\n");

                        // Read the boot image file and program it to Flash
                        if (BLMedia_LoadFile(BOOT_FILE_NAME))
                        {
                            LoadingApplication = FALSE;
                            BLIO_ReportBootStatus(BL_PROGRAMMED, "BL: Application image has been programmed\r\n");
                        }
                        else
                        {
                            // Error reported by lower layer
                            BootImageFileError = TRUE;
                        }
                    }
                    else
                    {
                        // Count and, if necessary, report the errors locating the file
                        ErrCount++;
                        if (ErrCount > MAX_LOCATE_RETRYS)
                        {
                            ErrCount = 0;
                            BootImageFileError = TRUE;
                            BLIO_ReportBootStatus(BL_FILE_NOT_FOUND, "BL: Application image not found\r\n");
                        }
                    }
                }
            }
            else
            {
                BootImageFileError = FALSE;
            }
        }
        else
        {
            // Initialize transport layer used to access the boot image's file system
            TransportInitialized = BLMedia_InitializeTransport();
            if (TransportInitialized)
            {
                BLIO_ReportBootStatus(BL_TRANSPORT_INIT, "BL: Transport initialized\r\n");
            }
        }

        // Watch for user to abort the load
        if (BLIO_AbortLoad())
        {
            LoadingApplication = FALSE;
        }
    }

} // LoadApplication


/****************************************************************************
  Function:
    int main(void)

  Description:
    This is the boot loader's main C-language entry point.  It initializes 
    the boot loader's IO, and uses it to determine if the boot loader should
    be invoked.  If so, it attempts to load the application.  After loading
    and programming the boot image (or immediately, if the boot loader is
    not invoked), it checks the to see if the image in Flash is valid and, 
    if so, calls the application's main entry point.

  Precondition:
    The appropriate startup code must have been executed.

  Parameters:
    None

  Returns:
    Integer exit code (0)

  Remarks:
    This routine is executed only once, after a reset.
***************************************************************************/
int main ( void )
{
    // Initialize the boot loader IO
    BLIO_InitializeIO();
    BLIO_ReportBootStatus(BL_RESET, "BL: ***** Reset *****\r\n");

    // Check to see if the user requested loading of a new application
    if (BLIO_LoaderEnabled())
    {
        INTCON2bits.ALTIVT = 1;
        mLED_3_On();
        BLIO_ReportBootStatus(BL_LOADING, "BL: Loading new application image\r\n");
        LoadApplication();
    }

    // Launch the application if the image in Flash is valid
    if (BL_ApplicationIsValid())
    {
        BLIO_ReportBootStatus(BL_BOOTING, "BL: Launching application\r\n");

        // Must disable all interrupts
        BLMedia_DeinitializeTransport();
        BLIO_DeinitializeIO();

        U1IE = 0;
        U1IR = 0xFF;
        IEC5 = 0;
        IFS5 = 0;
        INTCON2bits.ALTIVT = 0;

        ////////////////////////////
        // Launch the application //
        ////////////////////////////
        BootApplication();
    }

    // Should never get here if a valid application was loaded.
    BLIO_ReportBootStatus(BL_BOOT_FAIL, "BL: Application failed to launch\r\n");
    BL_ApplicationFailedToLaunch();

    // Hang system
    while (1)
        ;

    return 0;

} // main

/*
*******************************************************************************
EOF
*******************************************************************************
*/

