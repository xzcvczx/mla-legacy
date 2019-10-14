/*****************************************************************************
 * FileName:        comm_pkt.c
 * Dependencies:    See Include Section
 * Processor:       PIC24F, PIC24H, dsPIC, PIC32
 * Compiler:       	MPLAB C30, MPLAB C32
 * Linker:          MPLAB LINK30, MPLAB LINK32
 * Company:         Microchip Technology Incorporated
 *
 * Software License Agreement
 *
 * Copyright � 2010 Microchip Technology Inc.  All rights reserved.
 * Microchip licenses to you the right to use, modify, copy and distribute
 * Software only when embedded on a Microchip microcontroller or digital
 * signal controller, which is integrated into your product or third party
 * product (pursuant to the sublicense terms in the accompanying license
 * agreement).  
 *
 * You should refer to the license agreement accompanying this Software
 * for additional information regarding your rights and obligations.
 *
 * SOFTWARE AND DOCUMENTATION ARE PROVIDED �AS IS� WITHOUT WARRANTY OF ANY
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
 * Date        Comment
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * 09/01/10	   ...
 *****************************************************************************/
/*****************************************************************************
 * Section: Includes
 *****************************************************************************/
#include "GenericTypeDefs.h"
#include "UART.h"
#include "MainDemo.h"
#include "comm_pkt.h"

/*****************************************************************************
 * COMM_PKT_Update
 *****************************************************************************/
BOOL COMM_PKT_DataAvailable(COMM_PKT_MEDIA media)
{
    if(media == COMM_PKT_MEDIA_SERIAL_PORT)
        return UARTIsDA();

    return FALSE;
}
/*****************************************************************************
 * COMM_PKT_Update
 *****************************************************************************/
WORD COMM_PKT_GetData(COMM_PKT_MEDIA media, BYTE *buffer, WORD offset)
{
    if(offset >= (COMM_PKT_RX_MAX_SIZE + sizeof(COMM_PKT_HDR)))
        return offset;

    if(media == COMM_PKT_MEDIA_SERIAL_PORT)
    {
        while(UARTIsDA())
        {
            buffer[offset] = UARTGetChar();
            offset++;
        }
    }

    return offset;
}
/*****************************************************************************
 * COMM_PKT_Update
 *****************************************************************************/
void COMM_PKT_SendData(COMM_PKT_MEDIA media, BYTE *data, WORD size)
{
    if(media == COMM_PKT_MEDIA_SERIAL_PORT)
    {
        while(size)
        {
            UARTPutChar(*data);
            data++;
            size--;
        }
    }
}
