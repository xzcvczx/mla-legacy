/*****************************************************************************
 * GRAPHICS PICTail PLUS BOARD MEMORY PROGRAMMER
 * This program receives Intel HEX file from UART and programs
 * flash memory installed on Graphics PICTail board.
 *
 * Please read ReadMe file for details.
 *
 *****************************************************************************
 * FileName:        FlashProgrammer.c
 * Dependencies:    FlashProgrammer.h, MainDemo.h
 * Processor:       PIC24, PIC32
 * Compiler:       	MPLAB C30, MPLAB C32
 * Linker:          MPLAB LINK30, MPLAB LINK32
 * Company:         Microchip Technology Incorporated
 *
 * Software License Agreement
 *
 * Copyright © 2007 Microchip Technology Inc.  All rights reserved.
 * Microchip licenses to you the right to use, modify, copy and distribute
 * Software only when embedded on a Microchip microcontroller or digital
 * signal controller, which is integrated into your product or third party
 * product (pursuant to the sublicense terms in the accompanying license
 * agreement).  
 *
 * You should refer to the license agreement accompanying this Software
 * for additional information regarding your rights and obligations.
 *
 * SOFTWARE AND DOCUMENTATION ARE PROVIDED “AS IS” WITHOUT WARRANTY OF ANY
 * KIND, EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY
 * OF MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR
 * PURPOSE. IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE LIABLE OR
 * OBLIGATED UNDER CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION,
 * BREACH OF WARRANTY, OR OTHER LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT
 * DAMAGES OR EXPENSES INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL,
 * INDIRECT, PUNITIVE OR CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA,
 * COST OF PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY
 * CLAIMS BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF),
 * OR OTHER SIMILAR COSTS.
 *
 * Author               Date        Comment
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * Anton Alkhimenok		10/17/07	...
 * Anton Alkhimenok		02/05/08	PIC32 support is added
 * Paolo Tamayo			06/19/08	Modified to be a module
 *****************************************************************************/
#include "MainDemo.h"

/////////////////////////////////////////////////////////////////////////////
//                            LOCAL PROTOTYPES
/////////////////////////////////////////////////////////////////////////////
// Local functions prototypes
BYTE    ConvertRecord2Bin(BYTE *pBuffer);
BYTE    ProcessRecord(BYTE *pBuffer, DWORD_VAL *pAddr);
void    SetLED(BYTE status, BYTE whichOne);
void    SetPPSPorts(void);

#define UARTInit()          UART2Init()
#define UARTGetChar(ch)     UART2GetChar(ch)
#define UARTPutChar(ch)     UART2PutChar(ch)
#define UARTClrError()      UART2ClrError()
#define UARTDataReceived()  UART2DataReceived()
#define Char2Hex(ch)        UART2Char2Hex(ch)
#define Hex2Char(ch)        UART2Hex2Char(ch)

/////////////////////////////////////////////////////////////////////////////
//                            MACROS
/////////////////////////////////////////////////////////////////////////////
// Macros to interface with memory
#if (GRAPHICS_HARDWARE_PLATFORM != GFX_PICTAIL_V3) && (GRAPHICS_HARDWARE_PLATFORM != DA210_DEV_BOARD)
    #define FLASHInit()                     SST39Init();
    #define ChipErase()                     SST39ChipErase();
    #define WriteArray(address, pdata, len) SST39WriteArray(address, pdata, len)
#else
    #define FLASHInit()                     SST25Init();
    #define ChipErase()                     SST25ChipErase();
    #define WriteWord(data, address)        SST25WriteWord(data, address)
    #define ReadWord(address)               SST25ReadWord(address)
    #define WriteArray(address, pdata, len) SST25WriteArray(address, pdata, len)
#endif

// Acknowledgement
#define FLASH_PROG_ACK  'Y'
#define FLASH_PROG_NAK  'N'

// LED defines
#define LED_ON          1
#define LED_OFF         0
#define LED_SHIFT_INIT  0x0C

// Main state mashine
#define FLASH_PROG_STATE_START  0
#define FLASH_PROG_STATE_DATA   1

#define PROG_TICK_COUNT         300
#define WAIT_TICK_COUNT         5000

/////////////////////////////////////////////////////////////////////////////
//                            GLOBALS
/////////////////////////////////////////////////////////////////////////////
extern DWORD    tick;

/************************************************************************
 Function: void ProgramFlash(void)
                                                                       
 Overview: Programs the flash data. Data is coming from UART connected
 		   to the host PC. System reset must be performed after 
 		   programming.
 		                                                                          
 Input: none
                                                                       
 Output: none
************************************************************************/
void ProgramFlash(void)
{
    BYTE        state;
    DWORD       progTick, waitTick;

    BYTE        *pointer = NULL;
    BYTE        byte;
    CHAR        shift = LED_SHIFT_INIT;

#if (GRAPHICS_HARDWARE_PLATFORM == GFX_PICTAIL_V3) || (GRAPHICS_HARDWARE_PLATFORM == DA210_DEV_BOARD)
    WORD        xCalMin, xCalMax, yCalMin, yCalMax;
#endif

    BYTE        progBuffer[1024];   // progBuffer for incoming data
    DWORD_VAL   address;            // Current memory address

#if (GRAPHICS_HARDWARE_PLATFORM <= GFX_PICTAIL_V3)
    // USE Explorer 16 LEDs as status
    TRISA = 0xFFF3;                 // set IO pins (2:3) to output mode
    LATA = 0x0000;                  // initialize all to be off
    SetLED(LED_ON, 0x08);
#endif


#if defined(__PIC24FJ256GB110__) || defined(__PIC24FJ256GA110__) || defined (__PIC24FJ256DA210__)
    SetPPSPorts();
#endif

    UARTInit();
    FLASHInit();

#if (GRAPHICS_HARDWARE_PLATFORM == GFX_PICTAIL_V3) || (GRAPHICS_HARDWARE_PLATFORM == DA210_DEV_BOARD)

    // get the calibration data first and save into temp variables.
    // note that the addresses used here is dependent on the definition
    // made in the touch screen module.
    xCalMin = ReadWord((unsigned long)0xFFFFFFFC);
    xCalMax = ReadWord((unsigned long)0xFFFFFFFA);
    yCalMin = ReadWord((unsigned long)0xFFFFFFF8);
    yCalMax = ReadWord((unsigned long)0xFFFFFFF6);
#endif

    // erase the whole flash
    ChipErase();

#if (GRAPHICS_HARDWARE_PLATFORM == GFX_PICTAIL_V250)
	    // Beeper exist only in Graphics PICtail 2 and its variants.
    	Beep();
#endif	

#if (GRAPHICS_HARDWARE_PLATFORM == GFX_PICTAIL_V3) || (GRAPHICS_HARDWARE_PLATFORM == DA210_DEV_BOARD)

    // now write back the calibration data
    WriteWord(GRAPHICS_LIBRARY_VERSION, (unsigned long)0xFFFFFFFE);
    WriteWord(xCalMin, (unsigned long)0xFFFFFFFC);
    WriteWord(xCalMax, (unsigned long)0xFFFFFFFA);
    WriteWord(yCalMin, (unsigned long)0xFFFFFFF8);
    WriteWord(yCalMax, (unsigned long)0xFFFFFFF6);
#endif
    state = FLASH_PROG_STATE_START;
    address.Val = 0;
    progTick = tick;



	while(1)
    {

        // clear any errors before we wait for new character	
        UARTClrError();

        waitTick = tick;
        while(UARTDataReceived() == 0)
        {
#if (GRAPHICS_HARDWARE_PLATFORM <= GFX_PICTAIL_V3)    
            if((tick - waitTick) >= WAIT_TICK_COUNT)
            {
                // set LED to signify waiting
                SetLED(LED_ON, LED_SHIFT_INIT);
            }
#endif            
        }

        byte = UARTGetChar();

        //byte = UARTWaitChar();
        if((tick - progTick) >= PROG_TICK_COUNT)
        {
            if(shift == LED_SHIFT_INIT)
                shift = 0;
            else
                shift = LED_SHIFT_INIT;
#if (GRAPHICS_HARDWARE_PLATFORM <= GFX_PICTAIL_V3)                
            SetLED(LED_OFF, 0x0C);
            SetLED(LED_ON, shift);
#endif            
            progTick = tick;
        }

        switch(state)
        {
            case FLASH_PROG_STATE_START:

                // start of record is detected
                if(byte == ':')
                {
                    pointer = progBuffer;
                    state = FLASH_PROG_STATE_DATA;
                }

                if(byte == '\r')
                {
                    UARTPutChar(FLASH_PROG_NAK);
                }

                break;

            case FLASH_PROG_STATE_DATA:

                // end of record
                if(byte == '\r')
                {

                    // end of string
                    *pointer++ = 0;
                    *pointer++ = 0;

                    state = FLASH_PROG_STATE_START;

                    if(!ConvertRecord2Bin(progBuffer))
                    {

                        // checksum is wrong
                        UARTPutChar(FLASH_PROG_NAK);
                        break;
                    }

                    if(!ProcessRecord(progBuffer, &address))
                    {

                        // programming error
                        UARTPutChar(FLASH_PROG_NAK);
                        UARTPutChar('P');
                        break;
                    }

                    // record is processed successfully
                    UARTPutChar(FLASH_PROG_ACK);
                    break;
                }

                *pointer++ = byte;
                break;

            default:
                break;
        }                           // end of switch
    }                               // end of while
}

/* */
void SetLED(BYTE status, BYTE whichOne)
{
    if(status == LED_OFF)
        LATA &= ~(whichOne);
    else
        LATA |= whichOne;
}

/* */
BYTE ConvertRecord2Bin(BYTE *pBuffer)
{
    BYTE    *pIn;
    BYTE    *pOut;
    WORD    checksum = 0;
    BYTE    byte;

    pIn = pOut = pBuffer;

    while(*pIn)
    {

        // Get first nibble
        byte = Char2Hex(*pIn++);
        byte <<= 4;

        // Get second nibble
        byte |= Char2Hex(*pIn++);
        checksum += byte;
        *pOut++ = byte;
    }

    checksum &= 0x00ff;

    // last byte was a transmitted checksum, compare with calculated
    if(checksum)
        return (0); // error
    return (1);     // good
}

typedef struct _RECORD_HEADER_
{
    BYTE    reclen;
    BYTE    msbOffset;
    BYTE    lsbOffset;
    BYTE    rectype;
} RECORD_HEADER;

#define REC_DATA        0
#define REC_EOF         1
#define REC_UPPERADDR   4
#define REC_STARTADDR   5

/* */

BYTE ProcessRecord(BYTE *pBuffer, DWORD_VAL *pAddr)
{
    BYTE            *pData;
    RECORD_HEADER   *pRecord;

    pRecord = (RECORD_HEADER *)pBuffer;
    pData = pBuffer + sizeof(RECORD_HEADER);

    switch(pRecord->rectype)
    {

        // data record
        case REC_DATA:

            // set lower 16 bit of the linear address
            pAddr->v[1] = pRecord->msbOffset;
            pAddr->v[0] = pRecord->lsbOffset;
            return (WriteArray(pAddr->Val, pData, pRecord->reclen));

        // end of file record
        case REC_EOF:
            return (1);

        // extended linear address record
        case REC_UPPERADDR:

            // set upper 16 bit of the linear address
            pAddr->v[3] = *pData++;
            pAddr->v[2] = *pData;
            return (1);

        // start linear address record
        case REC_STARTADDR:

            // set full address
            pAddr->v[3] = *pData++;
            pAddr->v[2] = *pData++;
            pAddr->v[1] = *pData++;
            pAddr->v[0] = *pData;
            return (1);

        default:
            return (1);
    }   // end of switch

    return (0);
}

/* */
void SetPPSPorts(void)
{
#if defined(__PIC24FJ256GB110__) || defined(__PIC24FJ256GA110__) 
    __builtin_write_OSCCONL(OSCCON & 0xbf);

    RPINR19bits.U2RXR = 10; // assign RP10 to RX
    RPOR8bits.RP17R = 5;    // assign RP17 to TX
    __builtin_write_OSCCONL(OSCCON | 0x40);
#endif

#if defined(__PIC24FJ256DA210__)
	__builtin_write_OSCCONL(OSCCON & 0xbf);
	_U2RXR = 37;			// Bring RX2 Input to RPI37/RC14
	_RP16R = 5;
	__builtin_write_OSCCONL(OSCCON | 0x40); 
#endif    
    
}
