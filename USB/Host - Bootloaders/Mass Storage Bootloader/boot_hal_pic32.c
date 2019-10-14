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
#include "GenericTypeDefs.h"
#include "HardwareProfile.h"
#include "boot.h"

#define COUNT_PER_MICRO_SEC ((GetSystemClock()/1000000)/2)
#define NVMOP_WORD_PGM          0x4001      // Word program operation
#define NVMOP_PAGE_ERASE        0x4004      // Page erase operation
#define NVMOP_ROW_PGM           0x4003      // Row program operation
#define NVMOP_NOP               0x4000      // NOP operation

UINT NVMemWriteWord(void* address, UINT data);
UINT NVMemErasePage(void* address);
UINT NVMemWriteRow(void* address, void* data);
UINT NVMemClearError(void);


/********************************************************************
* Function: 	delay_us()
*
* Precondition: 
*
* Input: 		Micro second
*
* Output:		None.
*
* Side Effects:	Uses Core timer. This may affect other functions using core timers.
				For example, core timer interrupt may not work, or may loose precision.				
*
* Overview:     Provides Delay in microsecond.
*
*			
* Note:		 	None.
********************************************************************/
void delay_us(UINT us)
{
   
    UINT targetCount;  
    UINT bakupCount; 
    UINT8 loop = 0;
    // Assert us not zero. This must be caught during debug phase.
    //ASSERT(us!=0);
    
    if(us == 0)
    { 
        while(1);
    }    
    
    // backup current count of the core timer.
    bakupCount = ReadCoreTimer();
    // Core timer increments every 2 sys clock cycles.
    // Calculate the counts required to complete "us". 
    //targetCount = countPerMicroSec * us;      
    targetCount = COUNT_PER_MICRO_SEC * us;
    // Restart core timer.
    WriteCoreTimer(0);    
    // Wait till core timer completes the count.    
    while(ReadCoreTimer() < targetCount);
    
    // Restore count back.
    WriteCoreTimer(bakupCount + targetCount);       	
   
}  



/********************************************************************
* Function: 	NVMemOperation()
*
* Precondition: 
*
* Input: 		NV operation
*
* Output:		NV eror
*
* Side Effects:	This function must generate MIPS32 code only and 
				hence the attribute (nomips16)
*
* Overview:     Performs reuested operation.
*
*			
* Note:		 	None.
********************************************************************/
UINT __attribute__((nomips16)) NVMemOperation(UINT nvmop)
{
    int	int_status;
    int	susp;

    // Disable DMA & Disable Interrupts
	#ifdef _DMAC
	int_status = INTDisableInterrupts();
	susp = DmaSuspend();
	#else
	int_status = INTDisableInterrupts(); 
	#endif	// _DMAC

    // Enable Flash Write/Erase Operations
    NVMCON = NVMCON_WREN | nvmop;
    // Data sheet prescribes 6us delay for LVD to become stable.
    // To be on the safer side, we shall set 7us delay.
    delay_us(7);

    NVMKEY 		= 0xAA996655;
    NVMKEY 		= 0x556699AA;
    NVMCONSET 	= NVMCON_WR;

    // Wait for WR bit to clear
    while(NVMCON & NVMCON_WR);
    
    // Disable Flash Write/Erase operations
    NVMCONCLR = NVMCON_WREN;  


	// Enable DMA & Enable Interrupts
	#ifdef _DMAC
	DmaResume(susp);
	INTRestoreInterrupts(int_status);
	#else
	INTRestoreInterrupts(int_status);
	#endif // _DMAC

	// Return Error Status
    return(NVMIsError());
}


/*********************************************************************
 * Function:        unsigned int NVMMemErasePage(void* address)
 *
 * Description:     A page erase will erase a single page of program flash,
 *                  which equates to 1k instructions (4KBytes). The page to
 *                  be erased is selected using NVMADDR. The lower bytes of
 *                  the address given by NVMADDR are ignored in page selection.
 *
 * PreCondition:    None
 *
 * Inputs:          address:  Destination page address to Erase.
 *
 * Output:          '0' if operation completed successfully.
 *
 * Example:         NVMemErasePage((void*) 0xBD000000)
 ********************************************************************/
UINT NVMemErasePage(void* address)
{
    UINT res;

    // Convert Address to Physical Address
	NVMADDR = KVA_TO_PA((unsigned int)address);

	// Unlock and Erase Page
	res = NVMemOperation(NVMOP_PAGE_ERASE);

	// Return WRERR state.
	return res;

}


/*********************************************************************
 * Function:        unsigned int NVMMemWriteWord(void* address, unsigned int data)
 *
 * Description:     The smallest block of data that can be programmed in
 *                  a single operation is 1 instruction word (4 Bytes).  The word at
 *                  the location pointed to by NVMADDR is programmed.
 *
 * PreCondition:    None
 *
 * Inputs:          address:   Destination address to write.
 *                  data:      Word to write.
 *
 * Output:          '0' if operation completed successfully.
 *
 * Example:         NVMWriteWord((void*) 0xBD000000, 0x12345678)
 ********************************************************************/
UINT NVMemWriteWord(void* address, UINT data)
{
    UINT res;

    NVMADDR = KVA_TO_PA((unsigned int)address);

    // Load data into NVMDATA register
    NVMDATA = data;

    // Unlock and Write Word
    res = NVMemOperation(NVMOP_WORD_PGM);

	return res;
}




/*********************************************************************
 * Function:        unsigned int NVMWriteRow(void* address, void* data)
 *
 * Description:     The largest block of data that can be programmed in
 *                  a single operation is 1 row 128 instructions (512 Bytes).  The row at
 *                  the location pointed to by NVMADDR is programmed with the data buffer
 *                  pointed to by NVMSRCADDR.
 *
 * PreCondition:    The row of data must be pre-loaded into a buffer in RAM.
 *
 * Inputs:          address:  Destination Row address to write.
 *                  data:  Location of data to write.
 *
 * Output:          '0' if operation completed successfully.
 *
 * Example:         NVMWriteRow((void*) 0xBD000000, (void*) 0xA0000000)
 ********************************************************************/
UINT NVMemWriteRow(void* address, void* data)
{
    unsigned int res;

    // Set NVMADDR to Address of row t program
    NVMADDR = KVA_TO_PA((unsigned int)address);

    // Set NVMSRCADDR to the SRAM data buffer Address
    NVMSRCADDR = KVA_TO_PA((unsigned int)data);

    // Unlock and Write Row
    res = NVMemOperation(NVMOP_ROW_PGM);

    return res;
}



/*********************************************************************
 * Function:        unsigned int NVMClearError(void)
 *
 * Description:		Clears the NVMCON error flag.
 *
 * PreCondition:    None
 *
 * Inputs:			None
 *
 * Output:          '0' if operation completed successfully.
 *
 * Example:			NMVClearError()
 ********************************************************************/
UINT NVMemClearError(void)
{
    unsigned int res;

    res = NVMemOperation(NVMOP_NOP);

    return res;
}


/****************************************************************************
  Function:
    void EraseAllApplicationMemory(void)

  Description:
    This routine will erase the entire application memory space.

  Precondition:
    None

  Parameters:
    None

  Returns:
    None
***************************************************************************/
void EraseAllApplicationMemory(void)
{
    DWORD totalAddress;

    for(totalAddress=PROGRAM_FLASH_BASE; totalAddress<MAX_FLASH_ADDRESS; totalAddress+=(FLASH_BLOCK_SIZE))
    {
    	NVMemErasePage((void *)totalAddress);
    }
}

/****************************************************************************
  Function:
    BOOL ProgramHexRecord(RECORD_STRUCT* record, WORD extended_vector)

  Description:
    This routine will program and verify a hex file data record into program memory

  Precondition:
    The data record must contain data that is word aligned to the processor
    specified program word size.

  Parameters:
    record - pointer to the data record
    extended_vector - the value of the extended vector address.

  Returns:
    TRUE    - If the data was programmed and verified correctly
    FALSE   - If the data in the record was not formatted correctly or fails to 
              verify correctly.
***************************************************************************/
BOOL ProgramHexRecord(RECORD_STRUCT* record, WORD extended_vector)
{
    DWORD*           pData;
    DWORD_VAL       totalAddress;

    //Generic loop index.  Needs to be a WORD since a record could be 255 bytes
    //  and in this case written 4 bytes at a time.  Thus the counts for that loop
    //  would be 252 and 256.  Since 256 can't be represented in a byte, a loop
    //  counter of a byte could only count up to 252 bytes.
    WORD            i;

    totalAddress.word.HW = extended_vector;
    totalAddress.word.LW = record->LoadOffset;

    pData = (DWORD*)&record->data[0];
        
    if((record->RecordLength%4)!=0)
    {
        //not word aligned data
        BLIO_ReportBootStatus(LOADER_ALIGNMENT, "BL: Data record was not 32-bit word aligned.\r\n" );
        return FALSE;
    }
    
    for(i=0;i<record->RecordLength;i+=4)
    {
        //Program the data
        NVMemWriteWord( (void *)totalAddress.Val, *pData++ );
    
        totalAddress.Val+=4;
    }
    
    //verify that the contents were programmed correctly
    pData = (DWORD*)&record->data[0];
    totalAddress.Val-=(record->RecordLength);

    for(i=0;i<record->RecordLength;i+=4)
    {               
        if(*((DWORD *)PA_TO_KVA1(totalAddress.Val)) != *pData++)
        {
            //data in flash doesn't match expected value,
            //  close file and bail.
            BLIO_ReportBootStatus(LOADER_FLASH_VERIFY_ERR, "BL: Data in flash doesn't match expected value.\r\n" );
            return FALSE;
        }
        
        totalAddress.Val+=4;
    }

    //Everything programmed correctly
    return TRUE;
}





