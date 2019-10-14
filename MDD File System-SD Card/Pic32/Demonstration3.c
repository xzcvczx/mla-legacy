/*****************************************************************************
 
                Microchip Memory Disk Drive File System
 
 *****************************************************************************
 FileName:        Demonstration3.c
 Dependencies:    FSIO.h
 Processor:       PIC32
 Compiler:        C32 
 Company:         Microchip Technology, Inc.

 Software License Agreement

 The software supplied herewith by Microchip Technology Incorporated
 (the �Company�) for its PICmicro� Microcontroller is intended and
 supplied to you, the Company�s customer, for use solely and
 exclusively on Microchip PICmicro Microcontroller products. The
 software is owned by the Company and/or its supplier, and is
 protected under applicable copyright laws. All rights are reserved.
 Any use in violation of the foregoing restrictions may subject the
 user to criminal sanctions under applicable laws, as well as to
 civil liability for the breach of the terms and conditions of this
 license.

 THIS SOFTWARE IS PROVIDED IN AN �AS IS� CONDITION. NO WARRANTIES,
 WHETHER EXPRESS, IMPLIED OR STATUTORY, INCLUDING, BUT NOT LIMITED
 TO, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
 PARTICULAR PURPOSE APPLY TO THIS SOFTWARE. THE COMPANY SHALL NOT,
 IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL OR
 CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.


   Note:  This file is included to give you a basic demonstration of how the
           functions in this library work.  Prototypes for these functions,
           along with more information about them, can be found in FSIO.h
*****************************************************************************/

//DOM-IGNORE-BEGIN
/********************************************************************
 Change History:
  Rev            Description
  ----           -----------------------
  1.3.0   		Initial Revision to support Long File Name Format
********************************************************************/
//DOM-IGNORE-END

/*******************************************************************************
//NOTE : ENABLE MACRO "SUPPORT_LFN" IN "FSconfig.h" FILE TO WORK WITH THIS DEMO.
         THIS DEMO IS INTENDED TO SHOW THE UTF16 FILE NAME OPERATIONS
********************************************************************************/

#include "FSIO.h"

char sendBuffer[] = "This is test string 1";
char send2[] = "2";
char receiveBuffer[50];

#if defined (__PIC32MX__)
    #pragma config FPLLMUL  = MUL_20        // PLL Multiplier
    #pragma config FPLLIDIV = DIV_2         // PLL Input Divider
    #pragma config FPLLODIV = DIV_1         // PLL Output Divider
    #pragma config FPBDIV   = DIV_2         // Peripheral Clock divisor
    #pragma config FWDTEN   = OFF           // Watchdog Timer
    #pragma config WDTPS    = PS1           // Watchdog Timer Postscale
    #pragma config FCKSM    = CSDCMD        // Clock Switching & Fail Safe Clock Monitor
    #pragma config OSCIOFNC = OFF           // CLKO Enable
    #pragma config POSCMOD  = HS            // Primary Oscillator
    #pragma config IESO     = OFF           // Internal/External Switch-over
    #pragma config FSOSCEN  = OFF           // Secondary Oscillator Enable (KLO was off)
    #pragma config FNOSC    = PRIPLL        // Oscillator Selection
    #pragma config CP       = OFF           // Code Protect
    #pragma config BWP      = OFF           // Boot Flash Write Protect
    #pragma config PWP      = OFF           // Program Flash Write Protect
    #pragma config ICESEL   = ICS_PGx2      // ICE/ICD Comm Channel Select
    #pragma config DEBUG    = ON            // Background Debugger Enable
#endif

// FILE1.TXT
const	char str1[] = {'F',0x00,'I',0x00,'L',0x00,'E',0x00,'1',0x00,'.',0x00,'T',0x00,'X',0x00,'T',0x00,'\0',0x00};

// Microchip File 1.TXT
const	char str2[] = {'M',0x00,'i',0x00,'c',0x00,'r',0x00,'o',0x00,'c',0x00,'h',0x00,'i',0x00,'p',0x00,' ',0x00,'F',0x00,'i',0x00,'l',0x00,'e',0x00,' ',0x00,'1',0x00,'.',0x00,'T',0x00,'X',0x00,'T',0x00,'\0',0x00};

// Microchip File 2.TXT
const	char str3[] = {'M',0x00,'i',0x00,'c',0x00,'r',0x00,'o',0x00,'c',0x00,'h',0x00,'i',0x00,'p',0x00,' ',0x00,'F',0x00,'i',0x00,'l',0x00,'e',0x00,' ',0x00,'2',0x00,'.',0x00,'T',0x00,'X',0x00,'T',0x00,'\0',0x00};

// CWD.TXT
const	char str4[] = {'C',0x00,'W',0x00,'D',0x00,'.',0x00,'T',0x00,'X',0x00,'T',0x00,'\0',0x00};

// Mic*.TXT
const	char str5[] = {'M',0x00,'i',0x00,'c',0x00,'*',0x00,'.',0x00,'T',0x00,'X',0x00,'T',0x00,'\0',0x00};

// .\\Mchp Directory 1\\Dir2\\Directory 3
char str6[] = 
{'.',0x00,
'\\',0x00,
'M',0x00,'c',0x00,'h',0x00,'p',0x00,' ',0x00,'D',0x00,'i',0x00,'r',0x00,'e',0x00,'c',0x00,'t',0x00,'o',0x00,'r',0x00,'y',0x00,' ',0x00,'1',0x00,
'\\',0x00,
'D',0x00,'i',0x00,'r',0x00,'2',0x00,
'\\',0x00,
'D',0x00,'i',0x00,'r',0x00,'e',0x00,'c',0x00,'t',0x00,'o',0x00,'r',0x00,'y',0x00,' ',0x00,'3',0x00,
'\0',0x00};

// Mchp Directory 1\\Dir2\\Directory 3
char str7[] = 
{'M',0x00,'c',0x00,'h',0x00,'p',0x00,' ',0x00,'D',0x00,'i',0x00,'r',0x00,'e',0x00,'c',0x00,'t',0x00,'o',0x00,'r',0x00,'y',0x00,' ',0x00,'1',0x00,
'\\',0x00,
'D',0x00,'i',0x00,'r',0x00,'2',0x00,
'\\',0x00,
'D',0x00,'i',0x00,'r',0x00,'e',0x00,'c',0x00,'t',0x00,'o',0x00,'r',0x00,'y',0x00,' ',0x00,'3',0x00,
'\0',0x00};

// Directory 4\\Directory 5\\Directory 6
char str8[] = 
{'D',0x00,'i',0x00,'r',0x00,'e',0x00,'c',0x00,'t',0x00,'o',0x00,'r',0x00,'y',0x00,' ',0x00,'4',0x00,
'\\',0x00,
'D',0x00,'i',0x00,'r',0x00,'e',0x00,'c',0x00,'t',0x00,'o',0x00,'r',0x00,'y',0x00,' ',0x00,'5',0x00,
'\\',0x00,
'D',0x00,'i',0x00,'r',0x00,'e',0x00,'c',0x00,'t',0x00,'o',0x00,'r',0x00,'y',0x00,' ',0x00,'6',0x00,
'\0',0x00};

// Directory 4\\Directory 5\\Directory 7\\..\\Directory 8\\..\\..\\DIRNINE\\Directory 10\\..\\Directory 11\\..\\Directory 12
char str9[] = 
{'D',0x00,'i',0x00,'r',0x00,'e',0x00,'c',0x00,'t',0x00,'o',0x00,'r',0x00,'y',0x00,' ',0x00,'4',0x00,
'\\',0x00,
'D',0x00,'i',0x00,'r',0x00,'e',0x00,'c',0x00,'t',0x00,'o',0x00,'r',0x00,'y',0x00,' ',0x00,'5',0x00,
'\\',0x00,
'D',0x00,'i',0x00,'r',0x00,'e',0x00,'c',0x00,'t',0x00,'o',0x00,'r',0x00,'y',0x00,' ',0x00,'7',0x00,
'\\',0x00,
'.',0x00,'.',0x00,
'\\',0x00,
'D',0x00,'i',0x00,'r',0x00,'e',0x00,'c',0x00,'t',0x00,'o',0x00,'r',0x00,'y',0x00,' ',0x00,'8',0x00,
'\\',0x00,
'.',0x00,'.',0x00,
'\\',0x00,
'.',0x00,'.',0x00,
'\\',0x00,
'D',0x00,'I',0x00,'R',0x00,'N',0x00,'I',0x00,'N',0x00,'E',0x00,
'\\',0x00,
'D',0x00,'i',0x00,'r',0x00,'e',0x00,'c',0x00,'t',0x00,'o',0x00,'r',0x00,'y',0x00,' ',0x00,'1',0x00,'0',0x00,
'\\',0x00,
'.',0x00,'.',0x00,
'\\',0x00,
'D',0x00,'i',0x00,'r',0x00,'e',0x00,'c',0x00,'t',0x00,'o',0x00,'r',0x00,'y',0x00,' ',0x00,'1',0x00,'1',0x00,
'\\',0x00,
'.',0x00,'.',0x00,
'\\',0x00,
'D',0x00,'i',0x00,'r',0x00,'e',0x00,'c',0x00,'t',0x00,'o',0x00,'r',0x00,'y',0x00,' ',0x00,'1',0x00,'2',0x00,
'\0',0x00};

// \\Mchp Directory 1\\Dir2\\Directory 3\\Directory 4\\Directory 5\\Directory 8
char str10[] = 
{'\\',0x00,
'M',0x00,'c',0x00,'h',0x00,'p',0x00,' ',0x00,'D',0x00,'i',0x00,'r',0x00,'e',0x00,'c',0x00,'t',0x00,'o',0x00,'r',0x00,'y',0x00,' ',0x00,'1',0x00,
'\\',0x00,
'D',0x00,'i',0x00,'r',0x00,'2',0x00,
'\\',0x00,
'D',0x00,'i',0x00,'r',0x00,'e',0x00,'c',0x00,'t',0x00,'o',0x00,'r',0x00,'y',0x00,' ',0x00,'3',0x00,
'\\',0x00,
'D',0x00,'i',0x00,'r',0x00,'e',0x00,'c',0x00,'t',0x00,'o',0x00,'r',0x00,'y',0x00,' ',0x00,'4',0x00,
'\\',0x00,
'D',0x00,'i',0x00,'r',0x00,'e',0x00,'c',0x00,'t',0x00,'o',0x00,'r',0x00,'y',0x00,' ',0x00,'5',0x00,
'\\',0x00,
'D',0x00,'i',0x00,'r',0x00,'e',0x00,'c',0x00,'t',0x00,'o',0x00,'r',0x00,'y',0x00,' ',0x00,'8',0x00,
'\0',0x00};

// Directory 4\\DIRNINE
char str11[] = 
{'D',0x00,'i',0x00,'r',0x00,'e',0x00,'c',0x00,'t',0x00,'o',0x00,'r',0x00,'y',0x00,' ',0x00,'4',0x00,
'\\',0x00,
'D',0x00,'I',0x00,'R',0x00,'N',0x00,'I',0x00,'N',0x00,'E',0x00,
'\0',0x00};

char str12[] = {'\\',0x00,'\0',0x00};
char path1[80];

int main (void)
{
   FSFILE * pointer;
   #if defined(SUPPORT_LFN)
   char count = 80;
   #endif
   char * pointer2;
   SearchRec rec;
   unsigned char attributes;
   unsigned char size = 0, i;

#ifdef __PIC24__
   // Turn on the secondary oscillator
   __asm__ ("MOV #OSCCON,w1");
   __asm__ ("MOV.b #0x02, w0");
   __asm__ ("MOV #0x46, w2");
   __asm__ ("MOV #0x57, w3");
   __asm__ ("MOV.b w2, [w1]");
   __asm__ ("MOV.b w3, [w1]");
   __asm__ ("MOV.b w0, [w1]");

   // Activate the RTCC module
   __asm__ ("mov #NVMKEY,W0");
   __asm__ ("mov #0x55,W1");
   __asm__ ("mov #0xAA,W2");
   __asm__ ("mov W1,[W0]");
   __asm__ ("nop");
   __asm__ ("mov W2,[W0]");
   __asm__ ("bset RCFGCAL,#13");
   __asm__ ("nop");
   __asm__ ("nop");
   RCFGCALbits.RTCPTR0 = 1;
   RCFGCALbits.RTCPTR1 = 1;
   // Set it to the correct time
   // These values won't be accurate
   RTCVAL = 0x0007;   
   RTCVAL = 0x0717;
   RTCVAL = 0x0208;
   RTCVAL = 0x2137;
   RCFGCAL = 0x8000;
#elif defined (__PIC32MX__)
   // Turn on the interrupts
   INTEnableSystemMultiVectoredInt();
   SYSTEMConfigPerformance(GetSystemClock());
   mOSCSetPBDIV(OSC_PB_DIV_2);
   //Initialize the RTCC
   RtccInit();
   while(RtccGetClkStat()!=RTCC_CLK_ON);// wait for the SOSC to be actually running and RTCC to have its clock source
							            // could wait here at most 32ms
   RtccOpen(0x10073000, 0x07011602, 0);
#endif

   while (!MDD_MediaDetect());

   // Initialize the library
   while (!FSInit());

#ifdef ALLOW_WRITES
   // Create a file
   pointer = wFSfopen ((const unsigned short int * )&str1[0], "w");
   if (pointer == NULL)
      while(1);

   // Write 21 1-byte objects from sendBuffer into the file
   if (FSfwrite (sendBuffer, 1, 21, pointer) != 21)
      while(1);

   // FSftell returns the file's current position
   if (FSftell (pointer) != 21)
      while(1);

   // FSfseek sets the position one byte before the end
   // It can also set the position of a file forward from the
   // beginning or forward from the current position
   if (FSfseek(pointer, 1, SEEK_END))
      while(1);

   // Write a 2 at the end of the string
   if (FSfwrite (send2, 1, 1, pointer) != 1)
      while(1);

   // Close the file
   if (FSfclose (pointer))
      while(1);

   // Create a second file
   pointer = wFSfopen ((const unsigned short int * )&str2[0], "w");
   if (pointer == NULL)
      while(1);

   // Write the string to it again
   if (FSfwrite ((void *)sendBuffer, 1, 21, pointer) != 21)
      while(1);

   // Close the file
   if (FSfclose (pointer))
      while(1);
#endif

   // Open file 1 in read mode
   pointer = wFSfopen ((const unsigned short int * )&str1[0], "r");
   if (pointer == NULL)
      while(1);

   if (wFSrename ((const unsigned short int * )&str3[0], pointer))
      while(1);

   // Read one four-byte object
   if (FSfread (receiveBuffer, 4, 1, pointer) != 1)
      while(1);

   // Check if this is the end of the file- it shouldn't be
   if (FSfeof (pointer))
      while(1);

   // Close the file
   if (FSfclose (pointer))
      while(1);

   // Make sure we read correctly
   if ((receiveBuffer[0] != 'T') ||
         (receiveBuffer[1] != 'h')  ||
         (receiveBuffer[2] != 'i')  ||
         (receiveBuffer[3] != 's'))
   {
      while(1);
   }

#ifdef ALLOW_DIRS
   // Create a small directory tree
   // Beginning the path string with a '.' will create the tree in
   // the current directory.  Beginning with a '..' would create the
   // tree in the previous directory.  Beginning with just a '\' would
   // create the tree in the root directory.  Beginning with a dir name
   // would also create the tree in the current directory
   if (wFSmkdir ((unsigned short int *)&str6[0]))
      while(1);

   // Change to 'Directory 3' in our new tree
   if (wFSchdir ((unsigned short int *)&str7[0]))
      while(1);

   // Create another tree in 'Directory 3'
   if (wFSmkdir ((unsigned short int *)&str8[0]))
      while(1);

   // Create a third file in directory THREE
   pointer = wFSfopen ((const unsigned short int * )&str4[0], "w");
   if (pointer == NULL)
      while(1);

   #if defined(SUPPORT_LFN)
   // Get the name of the current working directory
   /* it should be "\Microchip Directory 1\Dir2\Directory 3" */
   pointer2 = wFSgetcwd ((unsigned short int *)path1, count);
   #endif

   if (pointer2 != path1)
      while(1);

   // Simple string length calculation
   i = 0;
   while(*((unsigned short int *)path1 + i) != 0x00)
   {
      size++;
      size++;
      i++;
   }
   // Write the name to CWD.TXT
   if (FSfwrite (path1, size, 1, pointer) != 1)
      while(1);

   // Close the file
   if (FSfclose (pointer))
      while(1);

   // Create some more directories
   if (wFSmkdir ((unsigned short int *)&str9[0]))
      while(1);

   /*******************************************************************
      Now our tree looks like this

 \ -> Mchp Directory 1 -> Dir2 -> Directory 3 -> Directory 4 -> Directory 5 -> Directory 6
                                                                                 -> Directory 7
                                                                                 -> Directory 8

                                                                    DIRNINE -> Directory 10
                                                                            -> Directory 11
                                                                            -> Directory 12
   ********************************************************************/

   // This will delete only Directory 8
   // If we tried to delete Directory 5 with this call, the FSrmdir
   // function would return -1, since Directory 5 is non-empty
   if (wFSrmdir ((unsigned short int *)&str10[0], FALSE))
      while(1);

   // This will delete DIRNINE and all three of its sub-directories
   if (wFSrmdir ((unsigned short int *)&str11[0], TRUE))
      while(1);

   // Change directory to the root dir
   if (wFSchdir ((unsigned short int *)&str12[0]))
      while(1);
#endif

#ifdef ALLOW_FILESEARCH
   // Set attributes
   attributes = ATTR_ARCHIVE | ATTR_READ_ONLY | ATTR_HIDDEN;

   // Functions "wFindFirst" & "FindNext" can be used to find files
   // and directories with required attributes in the current working directory.

   // Find the first TXT file with any (or none) of those attributes that
   // has a name beginning with the letters "Mic"
   // These functions are more useful for finding out which files are
   // in your current working directory
   if (wFindFirst ((const unsigned short int *)&str5[0], attributes, &rec))
      while(1);

 //   Find file to get "Microchip File 2.TXT"
      if (FindNext (&rec))
         while(1);

   // Delete file 2
   #if defined(SUPPORT_LFN) 
   // If the file name is long
   if(rec.utf16LFNfoundLength)
   {
      // NOTE : "wFSremove" function deletes specific file not directory.
      //        To delete directories use "wFSrmdir" function
      if (wFSremove (rec.utf16LFNfound))
         while(1);
   }
   else
   #endif
   {
      // NOTE : "FSremove" function deletes specific file not directory.
      //        To delete directories use "FSrmdir" function
      if (FSremove (rec.filename))
         while(1);
   }

#endif


/*********************************************************************
   The final contents of our card should look like this:
   \ -> Microchip File 1.TXT
      -> Mchp Directory 1 -> Dir2 -> Directory 3 -> CWD.TXT
                                                 -> Directory 4 -> Directory 5 -> Directory 6
                                                                               -> Directory 7

*********************************************************************/


   while(1);
}








