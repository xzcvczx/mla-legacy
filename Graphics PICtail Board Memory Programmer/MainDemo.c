 /*****************************************************************************
 * GRAPHICS PICTail PLUS BOARD MEMORY PROGRAMMER
 * This program receives Intel HEX file from UART and programs
 * flash memory installed on Graphics PICTail board.
 *
 * Please read ReadMe file for details.
 *
 *****************************************************************************
 * FileName:        MainDemo.c
 * Dependencies:    MainDemo.h
 * Processor:       PIC24F, PIC24H, dsPIC, PIC32
 * Compiler:       	MPLAB C30, MPLAB C32
 * Linker:          MPLAB LINK30, MPLAB LINK32
 * Company:         Microchip Technology Incorporated
 *
 * Software License Agreement
 *
 * Copyright © 2008 Microchip Technology Inc.  All rights reserved.
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
 * Jayanth Murthy       06/25/09    dsPIC & PIC24H support 
 *****************************************************************************/
#include "MainDemo.h"
// Configuration bits
#if defined(__dsPIC33F__) || defined(__PIC24H__)
_FOSCSEL(FNOSC_PRI);			
_FOSC(FCKSM_CSECMD & OSCIOFNC_OFF  & POSCMD_XT);  
_FWDT(FWDTEN_OFF);              
#elif defined(__PIC32MX__)
#pragma config FPLLODIV = DIV_1, FPLLMUL = MUL_18, FPLLIDIV = DIV_2, FWDTEN = OFF, FCKSM = CSECME, FPBDIV = DIV_8
#pragma config OSCIOFNC = ON, POSCMOD = XT, FSOSCEN = ON, FNOSC = PRIPLL
#pragma config CP = OFF, BWP = OFF, PWP = OFF
#else
	#if defined (__PIC24FJ256GB110__)
        _CONFIG1( JTAGEN_OFF & GCP_OFF & GWRP_OFF & COE_OFF & FWDTEN_OFF & ICS_PGx2) 
        _CONFIG2( 0xF7FF & IESO_OFF & FCKSM_CSDCMD & OSCIOFNC_OFF & POSCMOD_HS & FNOSC_PRIPLL & PLLDIV_DIV2 & IOL1WAY_OFF)
    #endif	
	#if defined (__PIC24FJ256GA110__)
        _CONFIG1( JTAGEN_OFF & GCP_OFF & GWRP_OFF & COE_OFF & FWDTEN_OFF & ICS_PGx2) 
        _CONFIG2( IESO_OFF & FCKSM_CSDCMD & OSCIOFNC_OFF & POSCMOD_HS & FNOSC_PRIPLL & IOL1WAY_OFF)
    #endif	
	#if defined (__PIC24FJ128GA010__)
		_CONFIG2(FNOSC_PRIPLL & POSCMOD_XT) // Primary XT OSC with PLL
		_CONFIG1(JTAGEN_OFF & FWDTEN_OFF)   // JTAG off, watchdog timer off
	#endif	
#endif

// Local functions prototypes
BYTE ConvertRecord2Bin(void);
BYTE ProcessRecord(void);

// Macros to interface with memory
#if (GRAPHICS_PICTAIL_VERSION < 3)

#define FLASHInit() SST39Init();
#define ChipErase() SST39ChipErase();
#define WriteArray(address, pdata, len) SST39WriteArray(address, pdata, len)

#else

#define FLASHInit() SST25Init();
#define ChipErase() SST25ChipErase();
#define WriteArray(address, pdata, len) SST25WriteArray(address, pdata, len)

#endif

// Acknowledgement
#define ACK     'Y'
#define NAK     'N'

// Current memory address
DWORD_VAL       address;

// Buffer for incoming data
BYTE            buffer[1024];

// Main state mashine 
#define START   0
#define DATA    1
BYTE    state;

///////////////////////////////////// MAIN ////////////////////////////////////
int main(void){
BYTE* pointer;
BYTE  byte;

/////////////////////////////////////////////////////////////////////////////
// ADC Explorer 16 Development Board Errata (work around 2)
// RB15 should be output
/////////////////////////////////////////////////////////////////////////////
	LATBbits.LATB15 = 0;
	TRISBbits.TRISB15 = 0;
/////////////////////////////////////////////////////////////////////////////

#ifdef __PIC32MX__
    INTEnableSystemMultiVectoredInt();
#endif

#if (GRAPHICS_PICTAIL_VERSION < 3)
    BeepInit();
#endif

    FLASHInit();  
    UARTInit();


#if defined(__dsPIC33FJ128GP804__) || defined(__PIC24HJ128GP504__)
    // If S3 button on Explorer 16 board is pressed calibrate touch screen
    TRISAbits.TRISA9 = 1; 
    if(PORTAbits.RA9 == 0)
	{
		TRISAbits.TRISA9 = 0; 
        ChipErase();
#if (GRAPHICS_PICTAIL_VERSION < 3)
        Beep();
#endif
    }
    TRISAbits.TRISA9 = 0;
#else
    // If S3 button on Explorer 16 board is pressed erase memory
    if(PORTDbits.RD6 == 0){
        ChipErase();
#if (GRAPHICS_PICTAIL_VERSION < 3)
        Beep();
#endif
    }
#endif

    state = START;
    address.Val = 0;
    
    while(1){
        byte = UARTWaitChar();

        switch(state){

            case START:
                // start of record is detected
                if(byte == ':')
                {
                    pointer = buffer;
                    state = DATA;
                }
/*
                if(byte == '\r')
                {
                    UARTPutChar(NAK);
                }
*/
                break;

            case DATA:
                // end of record
                if(byte == '\r')
                {
                    // end of string
                    *pointer++ = 0;
                    *pointer++ = 0;

                    state = START;

                    if( !ConvertRecord2Bin() )
                    {
                        // checksum is wrong
                        UARTPutChar(NAK);
                        break;
                    }

                    if( !ProcessRecord() )
                    {
                        // programming error
                        UARTPutChar(NAK);
                        UARTPutChar('P');
                        break;
                    }
                    // record is processed successfully
                    UARTPutChar(ACK);
                    break;
                }
                *pointer++ = byte;
                break;

            default:
                break;

        }// end of switch

    }// end of while

    return 0;
}

BYTE ConvertRecord2Bin(void)
{
BYTE* pIn;
BYTE* pOut;
WORD  checksum = 0;
BYTE  byte;

    pIn = pOut = buffer;

    while(*pIn){
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
        return 0; // error
    
    return 1; // good
}


typedef struct _RECORD_HEADER_{
BYTE reclen;
BYTE msbOffset;
BYTE lsbOffset;
BYTE rectype;
} RECORD_HEADER;

#define REC_DATA        0
#define REC_EOF         1
#define REC_UPPERADDR   4
#define REC_STARTADDR   5

BYTE ProcessRecord(void)
{
BYTE*           pData;
RECORD_HEADER*  pRecord;


    pRecord = (RECORD_HEADER*) buffer;
    pData   = buffer + sizeof(RECORD_HEADER);

    switch(pRecord->rectype){

        // data record
        case REC_DATA:
            // set lower 16 bit of the linear address
            address.v[1] = pRecord->msbOffset;
            address.v[0] = pRecord->lsbOffset;
            return WriteArray(address.Val, pData, pRecord->reclen);
            
        // end of file record
        case REC_EOF:
            return 1;

        // extended linear address record
        case REC_UPPERADDR:
            // set upper 16 bit of the linear address
            address.v[3] = *pData++;
            address.v[2] = *pData;
            return 1;

        // start linear address record
        case REC_STARTADDR:
            // set full address
            address.v[3] = *pData++;
            address.v[2] = *pData++;
            address.v[1] = *pData++;
            address.v[0] = *pData;
            return 1;
        
        default:
            return 1;

    }// end of switch

    return 0;
}
