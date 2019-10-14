/******************************************************************************
 *
 *                Microchip Memory Disk Drive File System
 *
 ******************************************************************************
 * FileName:        Files.c
 * Dependencies:    None
 * Processor:       PIC18/PIC24/dsPIC30/dsPIC33
 * Compiler:        C18/C30
 *
 * Software License Agreement
 *
 * The software supplied herewith by Microchip Technology Incorporated
 * (the �Company�) for its PICmicro� Microcontroller is intended and
 * supplied to you, the Company�s customer, for use solely and
 * exclusively on Microchip PICmicro Microcontroller products. The
 * software is owned by the Company and/or its supplier, and is
 * protected under applicable copyright laws. All rights are reserved.
 * Any use in violation of the foregoing restrictions may subject the
 * user to criminal sanctions under applicable laws, as well as to
 * civil liability for the breach of the terms and conditions of this
 * license.
 *
 * THIS SOFTWARE IS PROVIDED IN AN �AS IS� CONDITION. NO WARRANTIES,
 * WHETHER EXPRESS, IMPLIED OR STATUTORY, INCLUDING, BUT NOT LIMITED
 * TO, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
 * PARTICULAR PURPOSE APPLY TO THIS SOFTWARE. THE COMPANY SHALL NOT,
 * IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL OR
 * CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
 *
*****************************************************************************/

#include "Compiler.h"
#include "GenericTypeDefs.h"
#include "FSconfig.h"
#include "MDD File System/Internal Flash.h"

#if defined(__18CXX)
    #pragma romdata Files=FILES_ADDRESS
#endif

#if (ERASE_BLOCK_SIZE > WRITE_BLOCK_SIZE)
    #define BLOCK_ALIGNMENT ERASE_BLOCK_SIZE
#else
    #define BLOCK_ALIGNMENT WRITE_BLOCK_SIZE
#endif


#if defined(__PIC32MX__)
    #define MBR_ATTRIBUTES __attribute__ ((aligned (ERASE_BLOCK_SIZE),section(".MDD_FILES")))
    #define PARTITION_ATTRIBUTES __attribute__ ((section(".MDD_FILES")))
#elif defined(__C30__) || defined __XC16__
    #define MBR_ATTRIBUTES __attribute__ ((aligned (ERASE_BLOCK_SIZE),section(".MDD_FILES"),address(FILES_ADDRESS),space(psv)))
    #define PARTITION_ATTRIBUTES __attribute__((section(".MDD_FILES"),space(psv)))
#elif defined(__18CXX)
    #define MBR_ATTRIBUTES
    #define PARTITION_ATTRIBUTES
#else
    #error "Compiler not supported."
#endif


ROM BYTE MBR_ATTRIBUTES MasterBootRecord[MEDIA_SECTOR_SIZE] =
{
//Code Area
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,	//0x0000
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, //0x0010
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, //0x0020
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, //0x0030
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, //0x0040
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, //0x0050
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, //0x0060
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, //0x0070
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, //0x0080
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, //0x0090
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, //0x00A0
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, //0x00B0
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, //0x00C0
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, //0x00D0
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, //0x00E0
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, //0x00F0
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, //0x0100
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, //0x0110
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, //0x0120
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, //0x0130
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, //0x0140
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, //0x0150
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, //0x0160
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, //0x0170
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,                                     //0x0180

//IBM 9 byte/entry x 4 entries primary partition table
0x00, 0x00, 0x00, 0x00, 0x00, 0x00,                                                             //0x018A
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, //0x0190
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,             //0x01A0

//???
0x00, 0x00,                                                                                     //0x01AE
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,                                                 //0x01B0

//Disk signature
0xF5, 0x8B, 0x16, 0xEA,                                                                         //0x01B8

//??? - usually 0x0000
0x00, 0x00,                                                                                     //0x01BC

//Table of Primary Partitions (16 bytes/entry x 4 entries)
//Entry 1                                                                                       //0x01BE
0x80,                   //Status - 0x80 (bootable), 0x00 (not bootable), other (error)
0x01, 0x01, 0x00,       //Cylinder-head-sector address of first sector in partition
0x01,                   //Partition type - 0x06 = FAT16 32MB+
0x07, 0xFF, 0xE6,       //Cylinder-head-sector address of last sector in partition
0x01, 0x00, 0x00, 0x00, //Logical block address of first sector in partition
0x10, 0x00, 0x00, 0x00, //Length of partition in sectors
//Entry 2
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, //0x01CE
//Entry 3
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, //0x01DE
//Entry 4
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, //0x01EE

//MBR signature
0x55, 0xAA                                                                                      //0x01FE
};

//Physical Sector - 1, Logical Sector - 0
ROM BYTE PARTITION_ATTRIBUTES BootSector[MEDIA_SECTOR_SIZE]  =
{
0xEB, 0x3C, 0x90,			//Jump instruction
'M', 'S', 'D', 'O', 'S', '5', '.', '0',	//OEM Name "MSDOS5.0"
(MEDIA_SECTOR_SIZE&0xFF), (MEDIA_SECTOR_SIZE>>8),	        //Bytes per sector - MEDIA_SECTOR_SIZE
0x01,			    //Sectors per cluster
MDD_INTERNAL_FLASH_NUM_RESERVED_SECTORS, 0x00,			//Reserved sector count
0x01,			    //number of FATs
MDD_INTERNAL_FLASH_MAX_NUM_FILES_IN_ROOT, 0x00,			//Max number of root directory entries - 16 files allowed
0x00, 0x00,			//total sectors
0xF8,			    //Media Descriptor
MDD_INTERNAL_FLASH_NUM_FAT_SECTORS, 0x00,         //Sectors per FAT
0x3F, 0x00,	        //Sectors per track
0xFF, 0x00,         //Number of heads
0x01, 0x00, 0x00, 0x00,		//Hidden sectors
MDD_INTERNAL_FLASH_TOTAL_DISK_SIZE, 0x00, 0x00, 0x00,		//Total sectors

0x00,			//Physical drive number
0x00,			//Reserved("current head")
0x29,			//Signature
0x32, 0x67, 0x94, 0xC4,		//ID(serial number)
'N', 'O', ' ', 'N', 'A', 'M', 'E', ' ', ' ', ' ', ' ',	//Volume Label - "NO NAME    "
'F', 'A', 'T', '1', '6', ' ', ' ', ' ',	//FAT system "FAT16   "
//Operating system boot code
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
0x55, 0xAA			//End of sector (0x55AA)
};

ROM BYTE PARTITION_ATTRIBUTES FAT0[MEDIA_SECTOR_SIZE] =
{
    0xF8,0x0F,   //Copy of the media descriptor 0xFF8
    0x00,
    0xFF,0x0F    //FAT entry #2
};

ROM BYTE PARTITION_ATTRIBUTES RootDirectory0[MEDIA_SECTOR_SIZE] =
{
    //Root
    'D','r','i','v','e',' ','N','a','m','e',' ',   //Drive Name (11 characters, padded with spaces)
    0x08, //specify this entry as a volume label
    0x00, //Reserved
    0x00, 0x00, 0x00, 0x00, 0x11, //Create time
    0x00, 0x11, //Last Access
    0x00, 0x00, //EA-index
    0x00, 0x00, 0x00, 0x11, //Last modified time
    0x00, 0x00, //First FAT16 cluster
    0x00, 0x00, 0x00, 0x00, //File Size

    'F','I','L','E',' ',' ',' ',' ',    //File name (exactly 8 characters)
    'T','X','T',                        //File extension (exactly 3 characters)
    0x20, //specify this entry as a volume label
    0x00, //Reserved
    0x06, 0x28, 0x78, 0xDE, 0x38, //Create time
    0xDE, 0x38, //Last Access
    0x00, 0x00, //EA-index
    0x04, 0x77, 0xDE, 0x38, //Last modified
    0x02, 0x00, //First FAT16 cluster
    0x04, 0x00, 0x00, 0x00, //File Size
};

#if (MDD_INTERNAL_FLASH_MAX_NUM_FILES_IN_ROOT>16)
        ROM BYTE PARTITION_ATTRIBUTES RootDirectory1[MEDIA_SECTOR_SIZE] = 
        {0};
#endif

#if (MDD_INTERNAL_FLASH_MAX_NUM_FILES_IN_ROOT>32)
    ROM BYTE PARTITION_ATTRIBUTES RootDirectory2[MEDIA_SECTOR_SIZE] = 
    {0};
#endif

#if (MDD_INTERNAL_FLASH_MAX_NUM_FILES_IN_ROOT>48)
        ROM BYTE PARTITION_ATTRIBUTES RootDirectory3[MEDIA_SECTOR_SIZE] = 
    {0};
#endif

//********************* Data Sectors ************************

//Create a place holder in flash for each of sector of data defined by 
//  the MDD_INTERNAL_FLASH_DRIVE_CAPACITY defintion up 32,000 bytes.
#if (MDD_INTERNAL_FLASH_DRIVE_CAPACITY>0)
ROM BYTE PARTITION_ATTRIBUTES slack0[MEDIA_SECTOR_SIZE] =
{
    'D','a','t','a'
};

#endif

#if (MDD_INTERNAL_FLASH_DRIVE_CAPACITY>1)
     ROM BYTE PARTITION_ATTRIBUTES slack1[MEDIA_SECTOR_SIZE] = 
     {0};
#endif

#if (MDD_INTERNAL_FLASH_DRIVE_CAPACITY>2)
        ROM BYTE PARTITION_ATTRIBUTES slack2[MEDIA_SECTOR_SIZE] = 
     {0};
#endif

#if (MDD_INTERNAL_FLASH_DRIVE_CAPACITY>3)
        ROM BYTE PARTITION_ATTRIBUTES slack3[MEDIA_SECTOR_SIZE] = 
     {0};
#endif

#if (MDD_INTERNAL_FLASH_DRIVE_CAPACITY>4)
        ROM BYTE PARTITION_ATTRIBUTES slack4[MEDIA_SECTOR_SIZE] = 
     {0};
#endif

#if (MDD_INTERNAL_FLASH_DRIVE_CAPACITY>5)
     ROM BYTE PARTITION_ATTRIBUTES slack5[MEDIA_SECTOR_SIZE] = 
     {0};
#endif

#if (MDD_INTERNAL_FLASH_DRIVE_CAPACITY>6)
     ROM BYTE PARTITION_ATTRIBUTES slack6[MEDIA_SECTOR_SIZE] = 
     {0};
#endif

#if (MDD_INTERNAL_FLASH_DRIVE_CAPACITY>7)
     ROM BYTE PARTITION_ATTRIBUTES slack7[MEDIA_SECTOR_SIZE] = 
     {0};
#endif

#if (MDD_INTERNAL_FLASH_DRIVE_CAPACITY>8)
     ROM BYTE PARTITION_ATTRIBUTES slack8[MEDIA_SECTOR_SIZE] = 
     {0};
#endif

#if (MDD_INTERNAL_FLASH_DRIVE_CAPACITY>9)
     ROM BYTE PARTITION_ATTRIBUTES slack9[MEDIA_SECTOR_SIZE] = 
     {0};
#endif
#if (MDD_INTERNAL_FLASH_DRIVE_CAPACITY>10)
     ROM BYTE PARTITION_ATTRIBUTES slack10[MEDIA_SECTOR_SIZE] = {0};
#endif
#if (MDD_INTERNAL_FLASH_DRIVE_CAPACITY>11)
     ROM BYTE PARTITION_ATTRIBUTES slack11[MEDIA_SECTOR_SIZE] = {0};
#endif
#if (MDD_INTERNAL_FLASH_DRIVE_CAPACITY>12)
     ROM BYTE PARTITION_ATTRIBUTES slack12[MEDIA_SECTOR_SIZE] = {0};
#endif
#if (MDD_INTERNAL_FLASH_DRIVE_CAPACITY>13)
     ROM BYTE PARTITION_ATTRIBUTES slack13[MEDIA_SECTOR_SIZE] = {0};
#endif
#if (MDD_INTERNAL_FLASH_DRIVE_CAPACITY>14)
     ROM BYTE PARTITION_ATTRIBUTES slack14[MEDIA_SECTOR_SIZE] = {0};
#endif
#if (MDD_INTERNAL_FLASH_DRIVE_CAPACITY>15)
     ROM BYTE PARTITION_ATTRIBUTES slack15[MEDIA_SECTOR_SIZE] = {0};
#endif
#if (MDD_INTERNAL_FLASH_DRIVE_CAPACITY>16)
     ROM BYTE PARTITION_ATTRIBUTES slack16[MEDIA_SECTOR_SIZE] = {0};
#endif
#if (MDD_INTERNAL_FLASH_DRIVE_CAPACITY>17)
     ROM BYTE PARTITION_ATTRIBUTES slack17[MEDIA_SECTOR_SIZE] = {0};
#endif
#if (MDD_INTERNAL_FLASH_DRIVE_CAPACITY>18)
     ROM BYTE PARTITION_ATTRIBUTES slack18[MEDIA_SECTOR_SIZE] = {0};
#endif
#if (MDD_INTERNAL_FLASH_DRIVE_CAPACITY>19)
     ROM BYTE PARTITION_ATTRIBUTES slack19[MEDIA_SECTOR_SIZE] = {0};
#endif
#if (MDD_INTERNAL_FLASH_DRIVE_CAPACITY>20)
     ROM BYTE PARTITION_ATTRIBUTES slack20[MEDIA_SECTOR_SIZE] = {0};
#endif
#if (MDD_INTERNAL_FLASH_DRIVE_CAPACITY>21)
     ROM BYTE PARTITION_ATTRIBUTES slack21[MEDIA_SECTOR_SIZE] = {0};
#endif
#if (MDD_INTERNAL_FLASH_DRIVE_CAPACITY>22)
     ROM BYTE PARTITION_ATTRIBUTES slack22[MEDIA_SECTOR_SIZE] = {0};
#endif
#if (MDD_INTERNAL_FLASH_DRIVE_CAPACITY>23)
     ROM BYTE PARTITION_ATTRIBUTES slack23[MEDIA_SECTOR_SIZE] = {0};
#endif
#if (MDD_INTERNAL_FLASH_DRIVE_CAPACITY>24)
     ROM BYTE PARTITION_ATTRIBUTES slack24[MEDIA_SECTOR_SIZE] = {0};
#endif
#if (MDD_INTERNAL_FLASH_DRIVE_CAPACITY>25)
     ROM BYTE PARTITION_ATTRIBUTES slack25[MEDIA_SECTOR_SIZE] = {0};
#endif
#if (MDD_INTERNAL_FLASH_DRIVE_CAPACITY>26)
     ROM BYTE PARTITION_ATTRIBUTES slack26[MEDIA_SECTOR_SIZE] = {0};
#endif
#if (MDD_INTERNAL_FLASH_DRIVE_CAPACITY>27)
     ROM BYTE PARTITION_ATTRIBUTES slack27[MEDIA_SECTOR_SIZE] = {0};
#endif
#if (MDD_INTERNAL_FLASH_DRIVE_CAPACITY>28)
     ROM BYTE PARTITION_ATTRIBUTES slack28[MEDIA_SECTOR_SIZE] = {0};
#endif
#if (MDD_INTERNAL_FLASH_DRIVE_CAPACITY>29)
     ROM BYTE PARTITION_ATTRIBUTES slack29[MEDIA_SECTOR_SIZE] = {0};
#endif
#if (MDD_INTERNAL_FLASH_DRIVE_CAPACITY>30)
     ROM BYTE PARTITION_ATTRIBUTES slack30[MEDIA_SECTOR_SIZE] = {0};
#endif
#if (MDD_INTERNAL_FLASH_DRIVE_CAPACITY>31)
     ROM BYTE PARTITION_ATTRIBUTES slack31[MEDIA_SECTOR_SIZE] = {0};
#endif
#if (MDD_INTERNAL_FLASH_DRIVE_CAPACITY>32)
     ROM BYTE PARTITION_ATTRIBUTES slack32[MEDIA_SECTOR_SIZE] = {0};
#endif
#if (MDD_INTERNAL_FLASH_DRIVE_CAPACITY>33)
     ROM BYTE PARTITION_ATTRIBUTES slack33[MEDIA_SECTOR_SIZE] = {0};
#endif
#if (MDD_INTERNAL_FLASH_DRIVE_CAPACITY>34)
     ROM BYTE PARTITION_ATTRIBUTES slack34[MEDIA_SECTOR_SIZE] = {0};
#endif
#if (MDD_INTERNAL_FLASH_DRIVE_CAPACITY>35)
     ROM BYTE PARTITION_ATTRIBUTES slack35[MEDIA_SECTOR_SIZE] = {0};
#endif
#if (MDD_INTERNAL_FLASH_DRIVE_CAPACITY>36)
     ROM BYTE PARTITION_ATTRIBUTES slack36[MEDIA_SECTOR_SIZE] = {0};
#endif
#if (MDD_INTERNAL_FLASH_DRIVE_CAPACITY>37)
     ROM BYTE PARTITION_ATTRIBUTES slack37[MEDIA_SECTOR_SIZE] = {0};
#endif
#if (MDD_INTERNAL_FLASH_DRIVE_CAPACITY>38)
     ROM BYTE PARTITION_ATTRIBUTES slack38[MEDIA_SECTOR_SIZE] = {0};
#endif
#if (MDD_INTERNAL_FLASH_DRIVE_CAPACITY>39)
     ROM BYTE PARTITION_ATTRIBUTES slack39[MEDIA_SECTOR_SIZE] = {0};
#endif
#if (MDD_INTERNAL_FLASH_DRIVE_CAPACITY>40)
     ROM BYTE PARTITION_ATTRIBUTES slack40[MEDIA_SECTOR_SIZE] = {0};
#endif
#if (MDD_INTERNAL_FLASH_DRIVE_CAPACITY>41)
     ROM BYTE PARTITION_ATTRIBUTES slack41[MEDIA_SECTOR_SIZE] = {0};
#endif
#if (MDD_INTERNAL_FLASH_DRIVE_CAPACITY>42)
     ROM BYTE PARTITION_ATTRIBUTES slack42[MEDIA_SECTOR_SIZE] = {0};
#endif
#if (MDD_INTERNAL_FLASH_DRIVE_CAPACITY>43)
     ROM BYTE PARTITION_ATTRIBUTES slack43[MEDIA_SECTOR_SIZE] = {0};
#endif
#if (MDD_INTERNAL_FLASH_DRIVE_CAPACITY>44)
     ROM BYTE PARTITION_ATTRIBUTES slack44[MEDIA_SECTOR_SIZE] = {0};
#endif
#if (MDD_INTERNAL_FLASH_DRIVE_CAPACITY>45)
     ROM BYTE PARTITION_ATTRIBUTES slack45[MEDIA_SECTOR_SIZE] = {0};
#endif
#if (MDD_INTERNAL_FLASH_DRIVE_CAPACITY>46)
     ROM BYTE PARTITION_ATTRIBUTES slack46[MEDIA_SECTOR_SIZE] = {0};
#endif
#if (MDD_INTERNAL_FLASH_DRIVE_CAPACITY>47)
     ROM BYTE PARTITION_ATTRIBUTES slack47[MEDIA_SECTOR_SIZE] = {0};
#endif
#if (MDD_INTERNAL_FLASH_DRIVE_CAPACITY>48)
     ROM BYTE PARTITION_ATTRIBUTES slack48[MEDIA_SECTOR_SIZE] = {0};
#endif
#if (MDD_INTERNAL_FLASH_DRIVE_CAPACITY>49)
     ROM BYTE PARTITION_ATTRIBUTES slack49[MEDIA_SECTOR_SIZE] = {0};
#endif
#if (MDD_INTERNAL_FLASH_DRIVE_CAPACITY>50)
     ROM BYTE PARTITION_ATTRIBUTES slack50[MEDIA_SECTOR_SIZE] = {0};
#endif
#if (MDD_INTERNAL_FLASH_DRIVE_CAPACITY>51)
     ROM BYTE PARTITION_ATTRIBUTES slack51[MEDIA_SECTOR_SIZE] = {0};
#endif
#if (MDD_INTERNAL_FLASH_DRIVE_CAPACITY>52)
     ROM BYTE PARTITION_ATTRIBUTES slack52[MEDIA_SECTOR_SIZE] = {0};
#endif
#if (MDD_INTERNAL_FLASH_DRIVE_CAPACITY>53)
     ROM BYTE PARTITION_ATTRIBUTES slack53[MEDIA_SECTOR_SIZE] = {0};
#endif
#if (MDD_INTERNAL_FLASH_DRIVE_CAPACITY>54)
     ROM BYTE PARTITION_ATTRIBUTES slack54[MEDIA_SECTOR_SIZE] = {0};
#endif
#if (MDD_INTERNAL_FLASH_DRIVE_CAPACITY>55)
     ROM BYTE PARTITION_ATTRIBUTES slack55[MEDIA_SECTOR_SIZE] = {0};
#endif
#if (MDD_INTERNAL_FLASH_DRIVE_CAPACITY>56)
     ROM BYTE PARTITION_ATTRIBUTES slack56[MEDIA_SECTOR_SIZE] = {0};
#endif
#if (MDD_INTERNAL_FLASH_DRIVE_CAPACITY>57)
     ROM BYTE PARTITION_ATTRIBUTES slack57[MEDIA_SECTOR_SIZE] = {0};
#endif
#if (MDD_INTERNAL_FLASH_DRIVE_CAPACITY>58)
     ROM BYTE PARTITION_ATTRIBUTES slack58[MEDIA_SECTOR_SIZE] = {0};
#endif
#if (MDD_INTERNAL_FLASH_DRIVE_CAPACITY>59)
     ROM BYTE PARTITION_ATTRIBUTES slack59[MEDIA_SECTOR_SIZE] = {0};
#endif



