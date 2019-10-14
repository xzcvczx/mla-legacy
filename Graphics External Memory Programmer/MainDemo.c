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

/*********************************************************************
* Function:  void  DelayMs(WORD time)
*
* PreCondition: none
*
* Input: time - delay in ms
*
* Output: none
*
* Side Effects: none
*
* Overview: delays execution on time specified in ms
*
* Note: none
*
********************************************************************/
#ifdef __PIC32MX

/* */
void DelayMs(WORD time)
{
    while(time--)
    {
        unsigned int    int_status;

        int_status = INTDisableInterrupts();
        OpenCoreTimer(GetSystemClock() / 2000); // core timer is at 1/2 system clock
        INTRestoreInterrupts(int_status);

        mCTClearIntFlag();

        while(!mCTGetIntFlag());
    }

    mCTClearIntFlag();
}

#else
    #define DELAY_1MS   16000 / 5               // for 16MIPS

/* */
void DelayMs(WORD time)
{
    unsigned    delay;
    while(time--)
        for(delay = 0; delay < DELAY_1MS; delay++);
}

#endif

// Configuration bits
#if defined(__dsPIC33F__) || defined(__PIC24H__)
_FOSCSEL(FNOSC_PRI);
_FOSC(FCKSM_CSECMD &OSCIOFNC_OFF &POSCMD_XT);
_FWDT(FWDTEN_OFF);
#elif defined(__PIC32MX__)
    #pragma config FPLLODIV = DIV_1, FPLLMUL = MUL_18, FPLLIDIV = DIV_2, FWDTEN = OFF, FCKSM = CSECME, FPBDIV = DIV_1
    #pragma config OSCIOFNC = ON, POSCMOD = XT, FSOSCEN = ON, FNOSC = PRIPLL
    #pragma config CP = OFF, BWP = OFF, PWP = OFF
#else
    #if defined(__PIC24FJ256GB110__)
_CONFIG1(JTAGEN_OFF & GCP_OFF & GWRP_OFF & COE_OFF & FWDTEN_OFF & ICS_PGx2)
_CONFIG2(0xF7FF & IESO_OFF & FCKSM_CSDCMD & OSCIOFNC_OFF & POSCMOD_HS & FNOSC_PRIPLL & PLLDIV_DIV2 & IOL1WAY_OFF)
    #endif
    #if defined(__PIC24FJ256GA110__)
_CONFIG1(JTAGEN_OFF & GCP_OFF & GWRP_OFF & COE_OFF & FWDTEN_OFF & ICS_PGx2)
_CONFIG2(IESO_OFF & FCKSM_CSDCMD & OSCIOFNC_OFF & POSCMOD_HS & FNOSC_PRIPLL & IOL1WAY_OFF)
    #endif
    #if defined(__PIC24FJ128GA010__)
_CONFIG2(FNOSC_PRIPLL & POSCMOD_XT) // Primary XT OSC with PLL
_CONFIG1(JTAGEN_OFF & FWDTEN_OFF)   // JTAG off, watchdog timer off
    #endif
	#if defined (__PIC24FJ256GB210__)
_CONFIG1( WDTPS_PS32768 & FWPSA_PR128 & ALTVREF_ALTVREDIS & WINDIS_OFF & FWDTEN_OFF & ICS_PGx2 & GWRP_OFF & GCP_OFF & JTAGEN_OFF) 
_CONFIG2( POSCMOD_HS & IOL1WAY_OFF & OSCIOFNC_OFF & OSCIOFNC_OFF & FCKSM_CSDCMD & FNOSC_PRIPLL & PLL96MHZ_ON & PLLDIV_DIV2 & IESO_OFF)
_CONFIG3( WPFP_WPFP255 & SOSCSEL_SOSC & WUTSEL_LEG & WPDIS_WPDIS & WPCFG_WPCFGDIS & WPEND_WPENDMEM) 
	#endif
	#if defined (__PIC24FJ256DA210__)
_CONFIG1( WDTPS_PS32768 & FWPSA_PR128 & ALTVREF_ALTVREDIS & WINDIS_OFF & FWDTEN_OFF & ICS_PGx2 & GWRP_OFF & GCP_OFF & JTAGEN_OFF) 
_CONFIG2( POSCMOD_HS & IOL1WAY_OFF & OSCIOFNC_OFF & OSCIOFNC_OFF & FCKSM_CSDCMD & FNOSC_PRIPLL & PLL96MHZ_ON & PLLDIV_DIV2 & IESO_OFF)
_CONFIG3( WPFP_WPFP255 & SOSCSEL_SOSC & WUTSEL_LEG & ALTPMP_ALTPMPEN & WPDIS_WPDIS & WPCFG_WPCFGDIS & WPEND_WPENDMEM) 
	#endif	
#endif

// Local functions prototypes
BYTE ConvertRecord2Bin (void);
BYTE    ProcessRecord(void);

// Macros to interface with memory
#if defined (GFX_PICTAIL_V1) || defined (GFX_PICTAIL_V2)
    #define FLASHInit()                     SST39Init();
    #define ChipErase()                     SST39ChipErase();
    #define WriteArray(address, pdata, len) SST39WriteArray(address, pdata, len)
#elif defined (GFX_PICTAIL_V3) 
    #define FLASHInit()                     SST25Init();
    #define ChipErase()                     SST25ChipErase();
    #define WriteArray(address, pdata, len) SST25WriteArray(address, pdata, len)
#elif defined (PIC24FJ256DA210_DEV_BOARD)
	#if defined (USE_PARALLEL_FLASH)
		// parallel flash
	    #define FLASHInit()             		SST39LF400Init();
	    #define ChipErase()                     SST39LF400ChipErase();
	    #define WriteArray(address, pdata, len) SST39LF400WriteArray(address, pdata, len)
	#else	    
		// serial flash
	    #define FLASHInit()                     SST25Init();
	    #define ChipErase()                     SST25ChipErase();
	    #define WriteArray(address, pdata, len) SST25WriteArray(address, pdata, len)
	#endif 	    
#endif

// Acknowledgement
#define ACK 'Y'
#define NAK 'N'

// Current memory address
DWORD_VAL   address;

// Buffer for incoming data
BYTE        buffer[1024];

// Main state mashine
#define START   0
#define DATA    1

BYTE        state;

///////////////////////////////////// MAIN ////////////////////////////////////
int main(void)
{
    BYTE    *pointer = NULL;
    BYTE    byte;

 	#if defined (PIC24FJ256DA210_DEV_BOARD)
    
    // Make all the analog pins digital.
	ANSA = 0x0000;
    ANSB = 0x0000;		
    ANSC = 0x0000;		
    ANSD = 0x0000;
    ANSE = 0x0000;
    ANSF = 0x0000;
    ANSG = 0x0000;		
    
    #else

		#if defined (__PIC24FJ256GB210__)
		    // Make all the analog pins digital.
			ANSA = 0x0000;
		    ANSB = 0x0000;		
		    ANSC = 0x0000;		
		    ANSD = 0x0000;
		    ANSE = 0x0000;
		    ANSF = 0x0000;
		    ANSG = 0x0000;		
		#endif

    /////////////////////////////////////////////////////////////////////////////
    // ADC Explorer 16 Development Board Errata (work around 2)
    // RB15 should be output
    /////////////////////////////////////////////////////////////////////////////
    LATBbits.LATB15 = 0;
    TRISBbits.TRISB15 = 0;
	#endif
	
    /////////////////////////////////////////////////////////////////////////////
    #ifdef __PIC32MX__
    INTEnableSystemMultiVectoredInt();
    #endif

	#if defined (GFX_PICTAIL_V1) || defined (GFX_PICTAIL_V2)
    	BeepInit();
    #endif //#if defined (GFX_PICTAIL_V1) || defined (GFX_PICTAIL_V2)
    
   	FLASHInit();
    UARTInit();
    
    #if defined (EXPLORER_16)
	    #if defined(__dsPIC33FJ128GP804__) || defined(__PIC24HJ128GP504__)
		    // If S3 button on Explorer 16 board is pressed erase memory
		    TRISAbits.TRISA9 = 1;
		    if(PORTAbits.RA9 == 0)
		    {
		        TRISAbits.TRISA9 = 0;
		        ChipErase();
				#if defined (GFX_PICTAIL_V1) || defined (GFX_PICTAIL_V2)
			        Beep();
		        #endif

		    }
		    TRISAbits.TRISA9 = 0;
		#else		    
		    // If S3 button on Explorer 16 board is pressed erase memory
		    if(PORTDbits.RD6 == 0)
		    {
		        ChipErase();
	            #if defined (GFX_PICTAIL_V1) || defined (GFX_PICTAIL_V2)
			        Beep();
	            #endif
		    }
	    #endif


	#elif defined (PIC24FJ256DA210_DEV_BOARD)
	    // If S1 button on the PIC24FJ256DA210 Development board is pressed erase memory
	    if(BTN_S1 == 0)
	    {
	        ChipErase();
	    }
    #endif

    state = START;
    address.Val = 0;
	
    while(1)
    {
        byte = UARTWaitChar();

        switch(state)
        {
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

                    if(!ConvertRecord2Bin())
                    {

                        // checksum is wrong
                        UARTPutChar(NAK);
                        break;
                    }

                    if(!ProcessRecord())
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
        }   // end of switch
    }       // end of while

    return (0);
}

/* */
BYTE ConvertRecord2Bin(void)
{
    BYTE    *pIn;
    BYTE    *pOut;
    WORD    checksum = 0;
    BYTE    byte;

    pIn = pOut = buffer;

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

BYTE ProcessRecord(void)
{
    BYTE            *pData;
    RECORD_HEADER   *pRecord;

    pRecord = (RECORD_HEADER *)buffer;
    pData = buffer + sizeof(RECORD_HEADER);

    switch(pRecord->rectype)
    {

        // data record
        case REC_DATA:

            // set lower 16 bit of the linear address
            address.v[1] = pRecord->msbOffset;
            address.v[0] = pRecord->lsbOffset;
            return (WriteArray(address.Val, pData, pRecord->reclen));

        // end of file record
        case REC_EOF:
            return (1);

        // extended linear address record
        case REC_UPPERADDR:

            // set upper 16 bit of the linear address
            address.v[3] = *pData++;
            address.v[2] = *pData;
            return (1);

        // start linear address record
        case REC_STARTADDR:

            // set full address
            address.v[3] = *pData++;
            address.v[2] = *pData++;
            address.v[1] = *pData++;
            address.v[0] = *pData;
            return (1);

        default:
            return (1);
    }   // end of switch

    return (0);
}
