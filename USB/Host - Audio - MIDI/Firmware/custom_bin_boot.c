/*******************************************************************************

    USB Android Accessory basic demo with accessory in host mode

*******************************************************************************/
//DOM-IGNORE-BEGIN
/******************************************************************************

FileName:        main.c
Dependencies:    None
Processor:       PIC24/dsPIC30/dsPIC33/PIC32MX
Compiler:        C30/C32
Company:         Microchip Technology, Inc.

Software License Agreement

The software supplied herewith by Microchip Technology Incorporated
(the "Company") for its PICmicro(R) Microcontroller is intended and
supplied to you, the Company’s customer, for use solely and
exclusively on Microchip PICmicro Microcontroller products. The
software is owned by the Company and/or its supplier, and is
protected under applicable copyright laws. All rights are reserved.
Any use in violation of the foregoing restrictions may subject the
user to criminal sanctions under applicable laws, as well as to
civil liability for the breach of the terms and conditions of this
license.

THIS SOFTWARE IS PROVIDED IN AN “AS IS” CONDITION. NO WARRANTIES,
WHETHER EXPRESS, IMPLIED OR STATUTORY, INCLUDING, BUT NOT LIMITED
TO, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
PARTICULAR PURPOSE APPLY TO THIS SOFTWARE. THE COMPANY SHALL NOT,
IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL OR
CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.

Change History
  Rev      Description
  -----    ----------------------------------
  2.9      Initial revision
*******************************************************************************/

// Include files
#include "Compiler.h"
#include "GenericTypeDefs.h"

#include "custom_bin_boot.h"

#define ERASE_BLOCK_SIZE 1024
#define VALIDATION_TABLE_ADDRESS 0x1000

#if defined(__PIC32MX__)
    #define TABLE_ATTRIBUTES __attribute__ ((aligned (ERASE_BLOCK_SIZE),section(".VALIDATION_TABLE")))
#elif defined(__C30__)
    #define TABLE_ATTRIBUTES __attribute__ ((aligned (ERASE_BLOCK_SIZE),section(".VALIDATION_TABLE"),address(VALIDATION_TABLE_ADDRESS),space(prog)))
#else
    #error "Compiler not supported."
#endif

#define NUM_SECTION_TABLE_ENTRIES 10

typedef enum
{
    START_OF_FILE,
    USER_HEADER,
    TABLE_ENTRY_START,
    TABLE_ENTRY_INCOMPLETE,
    BLOCK_START,
    BLOCK_INCOMPLETE
} CUSTOM_BIN_STATE;

static CUSTOM_BIN_STATE state;
static DWORD user_header_remaining;

//static VALIDATION_TABLE_ENTRY TABLE_ATTRIBUTES validation_table[NUM_SECTION_TABLE_ENTRIES];
static VALIDATION_TABLE_ENTRY validation_table[NUM_SECTION_TABLE_ENTRIES];

static VALIDATION_TABLE_ENTRY current_entry;
static UINT8 current_table_offset = 0;
static UINT32 byte_count;

void ProcessUserHeader(BYTE *buffer, DWORD size);
BYTE WriteBlock(VALIDATION_TABLE_ENTRY *entry, DWORD offset, BYTE *buffer, DWORD size);
void EraseDevice(void);

void CustomBinInit(void)
{
    state = START_OF_FILE;
    user_header_remaining = 0;
}

void CustomBinWrite(BYTE *buffer, DWORD size){
    while(size)
    {
        switch(state)
        {
            case START_OF_FILE:
                user_header_remaining = *((DWORD*)buffer);
                buffer+=4;
                size-=4;
                ProcessUserHeader(buffer, user_header_remaining);
                state = USER_HEADER;
                //Fall-through

            case USER_HEADER:
                if(user_header_remaining > size)
                {
                    user_header_remaining -= size;
                    size = 0;
                }
                else
                {
                    state = TABLE_ENTRY_START;
                    buffer += size;
                    size -= user_header_remaining;
                    user_header_remaining = 0;
                }
                break;

            case TABLE_ENTRY_START:
                current_table_offset = 0;
                state = TABLE_ENTRY_INCOMPLETE;
                //EraseDevice();
                //Fall-through

            case TABLE_ENTRY_INCOMPLETE:
                {
                    BYTE num_bytes = sizeof(VALIDATION_TABLE_ENTRY);
                    
                    if(size < sizeof(VALIDATION_TABLE_ENTRY))
                    {
                        num_bytes = size;
                        size = 0;
                        state = BLOCK_START;
                    }
                    else
                    {
                        size -= sizeof(VALIDATION_TABLE_ENTRY);
                    }

                    for(current_table_offset=0; current_table_offset<num_bytes; current_table_offset++)
                    {
                        current_entry.raw_data[current_table_offset] = *buffer++;
                    }

                    if(current_table_offset == sizeof(VALIDATION_TABLE_ENTRY))
                    {
                        //TODO: write the table to memory
                        state = BLOCK_START;
                    }
                }
                break;

            case BLOCK_START:
                byte_count = 0;
                state = BLOCK_INCOMPLETE;
                //Fall-through

            case BLOCK_INCOMPLETE:
                {
                    DWORD num_bytes;

                    if(size < current_entry.formatted_data.size)
                    {
                        num_bytes = size;
                        size = 0;
                    }
                    else
                    {
                        num_bytes = current_entry.formatted_data.size;
                        size -= current_entry.formatted_data.size;
                    }

                    //TODO: capture failure codes?
                    //WriteBlock(&current_entry, byte_count, buffer, num_bytes);
                    byte_count += 64;
                }
                break;
        }
    }
}

BOOL CustomBinValidate(void)
{
    UINT8 i;
    UINT32 j;

    for(i=0; i<NUM_SECTION_TABLE_ENTRIES; i++)
    {
        for(j=0; j<validation_table[i].formatted_data.size; j++)
        {
            
        }
    }

    //TODO:
    return FALSE;
}
