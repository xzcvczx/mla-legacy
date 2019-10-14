/*****************************************************************************
 *  Module for Microchip Graphics Library
 *  Solomon Systech. SSD1926 LCD controller driver
 *  to be used with GFX 3 PICtail board
 *****************************************************************************
 * FileName:        SSD1926.c
 * Dependencies:    Graphics.h
 * Processor:       PIC24, PIC32
 * Compiler:       	MPLAB C30, MPLAB C32
 * Linker:          MPLAB LINK30, MPLAB LINK32
 * Company:         Microchip Technology Incorporated
 *
 * Software License Agreement
 *
 * Copyright � 2008 Microchip Technology Inc.  All rights reserved.
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
 * Author               Date        Comment
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * Anton Alkhimenok     08/27/08
 *****************************************************************************/
#include "Graphics\Graphics.h"

// Color
WORD  _color;
// Clipping region control
SHORT _clipRgn;
// Clipping region borders
SHORT _clipLeft;
SHORT _clipTop;
SHORT _clipRight;
SHORT _clipBottom;

/////////////////////// LOCAL FUNCTIONS PROTOTYPES ////////////////////////////
void SetAddress(DWORD address);
void SetReg(WORD index, BYTE value);
BYTE GetReg(WORD index);

void PutImage1BPP(SHORT left, SHORT top, FLASH_BYTE* bitmap, BYTE stretch);
void PutImage4BPP(SHORT left, SHORT top, FLASH_BYTE* bitmap, BYTE stretch);
void PutImage8BPP(SHORT left, SHORT top, FLASH_BYTE* bitmap, BYTE stretch);
void PutImage16BPP(SHORT left, SHORT top, FLASH_BYTE* bitmap, BYTE stretch);

void PutImage1BPPExt(SHORT left, SHORT top, void* bitmap, BYTE stretch);
void PutImage4BPPExt(SHORT left, SHORT top, void* bitmap, BYTE stretch);
void PutImage8BPPExt(SHORT left, SHORT top, void* bitmap, BYTE stretch);
void PutImage16BPPExt(SHORT left, SHORT top, void* bitmap, BYTE stretch);


#if (DISPLAY_PANEL==TFT_G240320LTSW_118W_E)

#include "TCON_SSD1289.c"

#elif (DISPLAY_PANEL==TFT_G320240DTSW_69W_TP_E)

#include "TCON_HX8238.c"

#elif (DISPLAY_PANEL==PH480272T_005_I06Q)

#include "TCON_HX8257.c"

#else

#include "TCON_Custom.c"

#endif

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
* Note: delay is defined for 16MIPS
*
********************************************************************/
#ifdef __PIC32MX
void  DelayMs(WORD time)
{
    while(time--)
    {
        unsigned int int_status;

        int_status = INTDisableInterrupts();
        OpenCoreTimer(GetSystemClock() / 2000);     // core timer is at 1/2 system clock
        INTRestoreInterrupts(int_status);

        mCTClearIntFlag();

        while(!mCTGetIntFlag());

    }

    mCTClearIntFlag();
}
#else
#define DELAY_1MS 16000/5  // for 16MIPS
void  DelayMs(WORD time){
unsigned delay;
	while(time--)
		for(delay=0; delay<DELAY_1MS; delay++);	
}
#endif

/*********************************************************************
* Macros:  PMPWaitBusy()
*
* Overview: waits for PMP cycle end.
*
* PreCondition: none
*
* Input: none
*
* Output: none
*
* Side Effects: none
*
********************************************************************/
#ifdef __PIC32MX
#define PMPWaitBusy()  while(PMMODEbits.BUSY);
#else
#ifdef __PIC24F__
#define PMPWaitBusy()  Nop(); Nop(); Nop();
#else
#error CONTROLLER IS NOT SUPPORTED
#endif
#endif

/*********************************************************************
* Function:  void SetAddress(DWORD address)
*
* PreCondition: none
*
* Input: address - address 
*
* Output: none
*
* Side Effects: none
*
* Overview: sets the address for read/write operations
*
* Note: chip select should be enabled
*
********************************************************************/
void SetAddress(DWORD address){

#ifdef USE_16BIT_PMP

WORD_VAL temp;

    RS_LAT_BIT = 0;        // set RS line to low for command

    temp.v[0] = ((DWORD_VAL)address).v[1];
    temp.v[1] = ((DWORD_VAL)address).v[2]|0x80;
    PMDIN1 = temp.Val;
    PMPWaitBusy();         // wait for the transmission end

    temp.v[0] = 0x01;
    temp.v[1] = ((DWORD_VAL)address).v[0];
    PMDIN1 = temp.Val;
    PMPWaitBusy();         // wait for the transmission end

    RS_LAT_BIT = 1;        // set RS line to high for data

#else

    RS_LAT_BIT = 0;        // set RS line to low for command

    PMDIN1 = ((DWORD_VAL)address).v[2]|0x80;
    PMPWaitBusy();         // wait for the transmission end

    PMDIN1 = ((DWORD_VAL)address).v[1]; 
    PMPWaitBusy();         // wait for the transmission end

    PMDIN1 = ((DWORD_VAL)address).v[0]; 
    PMPWaitBusy();         // wait for the transmission end

    RS_LAT_BIT = 1;        // set RS line to high for data

#endif
}

/*********************************************************************
* Macros:  WriteData(data)
*
* PreCondition:  SetAddress(...) must be called before
*
* Input: data - 16 bit value to be written to RAM
*
* Output: none
*
* Side Effects: none
*
* Overview: writes data into controller's RAM
*
* Note: chip select should be enabled
*
********************************************************************/
#ifdef USE_16BIT_PMP
#define WriteData(data) {PMDIN1 = data; PMPWaitBusy();}
#else
#define WriteData(data) {PMDIN1 = ((WORD_VAL)data).v[1]; PMPWaitBusy();\
PMDIN1 = ((WORD_VAL)data).v[0]; PMPWaitBusy();}
#endif

/*********************************************************************
* Function:  void  SetReg(WORD index, BYTE value)
*
* PreCondition: none
*
* Input: index - register number
*        value - value to be set
*
* Output: none
*
* Side Effects: none
*
* Overview: sets graphics controller register (byte access)
*
* Note: none
*
********************************************************************/
void  SetReg(WORD index, BYTE value){

#ifdef USE_16BIT_PMP

    RS_LAT_BIT = 0;        // set RS line to low for command
    CS_LAT_BIT = 0;        // enable SSD1926 

    PMPWaitBusy();         // wait for the transmission end

    PMDIN1 = ((WORD_VAL)index).v[1]; 
    PMPWaitBusy();         // wait for the transmission end

    PMDIN1 = index<<8; 
    PMPWaitBusy();         // wait for the transmission end

    RS_LAT_BIT = 1;        // set RS line to high for data

    if(index&0x0001)
        PMDIN1 = value; 
    else
        PMDIN1 = value<<8; 

    PMPWaitBusy();         // wait for the transmission end  

    CS_LAT_BIT = 1;        // disable SSD1926

#else

    RS_LAT_BIT = 0;        // set RS line to low for command
    CS_LAT_BIT = 0;        // enable SSD1926 

    PMPWaitBusy();         // wait for the transmission end

    PMDIN1 = 0x00;         // register access
    PMPWaitBusy();         // wait for the transmission end

    PMDIN1 = ((WORD_VAL)index).v[1]; 
    PMPWaitBusy();         // wait for the transmission end

    PMDIN1 = ((WORD_VAL)index).v[0]; 
    PMPWaitBusy();         // wait for the transmission end

    RS_LAT_BIT = 1;        // set RS line to high for data

    PMDIN1 = value; 
    PMPWaitBusy();         // wait for the transmission end  

    CS_LAT_BIT = 1;        // disable SSD1926

#endif
}

/*********************************************************************
* Function:  BYTE GetReg(WORD index)
*
* PreCondition: none
*
* Input: index - register number
*
* Output: none
*
* Side Effects: none
*
* Overview: returns graphics controller register value (byte access)
*
* Note: none
*
********************************************************************/
BYTE  GetReg(WORD index){
WORD value;

#ifdef USE_16BIT_PMP

    RS_LAT_BIT = 0;        // set RS line to low for command
    CS_LAT_BIT = 0;        // enable SSD1926 

    PMPWaitBusy();         // wait for the transmission end

    PMDIN1 = ((WORD_VAL)index).v[1]; 
    PMPWaitBusy();         // wait for the transmission end

    PMDIN1 = index<<8; 
    PMPWaitBusy();         // wait for the transmission end

    RS_LAT_BIT = 1;        // set RS line to high for data

    value = PMDIN1; 
    PMPWaitBusy();         // wait for the transmission end

    value = PMDIN1; 
    PMPWaitBusy();         // wait for the transmission end
  
    CS_LAT_BIT = 1;        // disable SSD1926

    PMCONbits.PMPEN  = 0;  // suspend PMP
    value = PMDIN1;        // read value
    PMCONbits.PMPEN  = 1;  // resume PMP

	if(index&0x0001)
        value &= 0x00ff; 
    else
        value = (value>>8)&0x00ff; 
#else

    RS_LAT_BIT = 0;        // set RS line to low for command
    CS_LAT_BIT = 0;        // enable SSD1926 

    PMPWaitBusy();         // wait for the transmission end

    PMDIN1 = 0x00;         // register access
    PMPWaitBusy();         // wait for the transmission end

    PMDIN1 = ((WORD_VAL)index).v[1]; 
    PMPWaitBusy();         // wait for the transmission end

    PMDIN1 = ((WORD_VAL)index).v[0]; 
    PMPWaitBusy();         // wait for the transmission end

    RS_LAT_BIT = 1;        // set RS line to high for data

    value = PMDIN1; 
    PMPWaitBusy();         // wait for the transmission end

    value = PMDIN1; 
    PMPWaitBusy();         // wait for the transmission end
  
    CS_LAT_BIT = 1;        // disable SSD1926

    PMCONbits.PMPEN  = 0;  // suspend PMP
    value = PMDIN1;        // read value
    PMCONbits.PMPEN  = 1;  // resume PMP

#endif

    return value;
}

/*********************************************************************
* Function:  void ResetDevice()
*
* PreCondition: none
*
* Input: none
*
* Output: none
*
* Side Effects: none
*
* Overview: resets LCD, initializes PMP
*
* Note: none
*
********************************************************************/
void ResetDevice(void){

    RST_LAT_BIT = 0;       // hold in reset by default
    RST_TRIS_BIT = 0;      // enable RESET line

    RS_TRIS_BIT = 0;       // enable RS line 

    CS_LAT_BIT = 1;        // SSD1926 is not selected by default
    CS_TRIS_BIT = 0;       // enable 1926 CS line    
    
    // PMP setup 
    PMMODE = 0; PMAEN = 0; PMCON = 0;
    PMMODEbits.MODE   = 2;  // Intel 80 master interface

    PMMODEbits.WAITB  = 0;
#ifdef __PIC32MX
    PMMODEbits.WAITM  = 3;
#else
    PMMODEbits.WAITM  = 2;
#endif
    PMMODEbits.WAITE  = 0;

#ifdef USE_16BIT_PMP
    PMMODEbits.MODE16 = 1;  // 16 bit mode
#else
    PMMODEbits.MODE16 = 0;  // 8 bit mode
#endif

    PMCONbits.PTRDEN = 1;  // enable RD line
    PMCONbits.PTWREN = 1;  // enable WR line
    PMCONbits.PMPEN  = 1;  // enable PMP

    DelayMs(40);
    RST_LAT_BIT = 1;       // release from reset
    DelayMs(400);

/////////////////////////////////////////////////////////////////////
// PLL SETUP
// Crystal frequency x M / N = 80 MHz 
// for 4 MHz crystal:
/////////////////////////////////////////////////////////////////////
    SetReg(REG_PLL_CONFIG_0, 0x0a); // set N = 10
    SetReg(REG_PLL_CONFIG_1, 0xc8); // set M = 200
    SetReg(REG_PLL_CONFIG_2, 0xae); // must be programmed to 0xAE   
    SetReg(REG_PLL_CONFIG_0, 0x8a); // enable PLL

/////////////////////////////////////////////////////////////////////
// VIDEO BUFFER MEMORY CLOCK SETUP
// Memory frequency = PLL frequency / (MCLK + 1)
/////////////////////////////////////////////////////////////////////
    SetReg(REG_MEMCLK_CONFIG, 0x00); // set MCLK = 0 (80 MHz)

/////////////////////////////////////////////////////////////////////
// PIXEL OUTPUT CLOCK SETUP (LCD_SHIFT SIGNAL)
// Pixel clock = Memory frequency * (PCLK + 1) / 0x100000
/////////////////////////////////////////////////////////////////////
    SetReg(REG_PCLK_FREQ_RATIO_0, 0x00); // set PCLK = 0x020000
    SetReg(REG_PCLK_FREQ_RATIO_1, 0x00); // Pixel clock = 10 MHz 
    SetReg(REG_PCLK_FREQ_RATIO_2, 0x02);

/////////////////////////////////////////////////////////////////////
// Panel Configuration (reg 10h)
// TFT display with 18 bit or 24-bit RGB parallel interface.
/////////////////////////////////////////////////////////////////////
#if (DISP_DATA_WIDTH == 18)
	SetReg(REG_PANEL_TYPE,0x61);
#else
	SetReg(REG_PANEL_TYPE,0x71);
#endif

/////////////////////////////////////////////////////////////////////
// Horizontal total HT (reg 12h)
/////////////////////////////////////////////////////////////////////
#define HT (DISP_HOR_PULSE_WIDTH+DISP_HOR_BACK_PORCH+DISP_HOR_FRONT_PORCH+DISP_HOR_RESOLUTION)
	SetReg(REG_HORIZ_TOTAL_0,	HT/8);
	SetReg(REG_HORIZ_TOTAL_1,	HT%8);
		
/////////////////////////////////////////////////////////////////////
// Horizontal display period HDP (reg 14h)
/////////////////////////////////////////////////////////////////////
    SetReg(REG_HDP,	DISP_HOR_RESOLUTION/8-1);	

/////////////////////////////////////////////////////////////////////
// Horizontal display period start HDPS (regs 16h, 17h)
/////////////////////////////////////////////////////////////////////
#define HDPS (DISP_HOR_PULSE_WIDTH+DISP_HOR_BACK_PORCH)
	SetReg(REG_HDP_START_POS0, HDPS&0x00FF);
	SetReg(REG_HDP_START_POS1, (HDPS>>8)&0x00FF);

/////////////////////////////////////////////////////////////////////
// Horizontal syncronization pulse width HPW (reg 20h)
/////////////////////////////////////////////////////////////////////
	SetReg(REG_HSYNC_PULSE_WIDTH, DISP_HOR_PULSE_WIDTH-1);

/////////////////////////////////////////////////////////////////////
// Vertical total VT (regs 18h, 19h)
/////////////////////////////////////////////////////////////////////
#define VT  (DISP_VER_PULSE_WIDTH+DISP_VER_BACK_PORCH+DISP_VER_FRONT_PORCH+DISP_VER_RESOLUTION)
	SetReg(REG_VERT_TOTAL0,	VT&0x00FF);
	SetReg(REG_VERT_TOTAL1, (VT>>8)&0x00FF);

/////////////////////////////////////////////////////////////////////
// Vertical display period VDP (regs 1ch, 1dh)
/////////////////////////////////////////////////////////////////////
#define VDP (DISP_VER_RESOLUTION-1)
	SetReg(REG_VDP0, VDP&0x00FF);
	SetReg(REG_VDP1, (VDP>>8)&0x00FF);

/////////////////////////////////////////////////////////////////////
// Vertical display period start VDPS (regs 1eh, 1fh)
/////////////////////////////////////////////////////////////////////
#define VDPS  (DISP_VER_PULSE_WIDTH+DISP_VER_BACK_PORCH)
	SetReg(REG_VDP_START_POS0, VDPS&0x00FF);
	SetReg(REG_VDP_START_POS1, (VDPS>>8)&0x00FF);

/////////////////////////////////////////////////////////////////////
// Vertical syncronization pulse width VPW (reg 24h)
/////////////////////////////////////////////////////////////////////
	SetReg(REG_VSYNC_PULSE_WIDTH, DISP_VER_PULSE_WIDTH-1);

/////////////////////////////////////////////////////////////////////
// ROTATION MODE
#if (DISP_ORIENTATION == 0)

#define  WIN_START_ADDR		0ul
#define  ROTATION           0

#elif (DISP_ORIENTATION == 90)

#define  WIN_START_ADDR		( ((DWORD)GetMaxX()+1) / 2 - 1 )
#define  ROTATION           1

#elif (DISP_ORIENTATION == 180)

#define  WIN_START_ADDR		( ( ((DWORD)GetMaxX()+1)*(GetMaxY()+1) )/2-1 )	
#define  ROTATION           2

#elif (DISP_ORIENTATION == 270)

#define  WIN_START_ADDR		( ( ((DWORD)GetMaxX()+1)* GetMaxY() )/2 )
#define  ROTATION           3

#endif

/////////////////////////////////////////////////////////////////////
// Special Effects Register (reg 71h)
/////////////////////////////////////////////////////////////////////
	SetReg(REG_SPECIAL_EFFECTS,0x40|ROTATION);

/////////////////////////////////////////////////////////////////////
// Main Window Display Start Address (regs 74h, 75h, 76h)
/////////////////////////////////////////////////////////////////////
	SetReg(REG_MAIN_WIN_DISP_START_ADDR0, WIN_START_ADDR&0x00FF);
	SetReg(REG_MAIN_WIN_DISP_START_ADDR1, (WIN_START_ADDR>>8)&0x00FF);
	SetReg(REG_MAIN_WIN_DISP_START_ADDR2, (WIN_START_ADDR>>16)&0x00FF);

/////////////////////////////////////////////////////////////////////
// Main Window Display Offset (regs 78h, 79h)
/////////////////////////////////////////////////////////////////////
#define WIN_OFFSET  ( (GetMaxX()+1)/2 )
	SetReg(REG_MAIN_WIN_ADDR_OFFSET0, WIN_OFFSET&0x00FF);
	SetReg(REG_MAIN_WIN_ADDR_OFFSET1, (WIN_OFFSET>>8)&0x00FF);

/////////////////////////////////////////////////////////////////////
// Display Mode Register (reg 70h)
/////////////////////////////////////////////////////////////////////
    SetReg(REG_DISPLAY_MODE,0x04);  // 16 BPP, enable RAM content to screen

/////////////////////////////////////////////////////////////////////
// RGB Settings Register (reg 1a4h)
/////////////////////////////////////////////////////////////////////
    SetReg(REG_RGB_SETTING,0xc0);   // RGB format

/////////////////////////////////////////////////////////////////////
// Power Saving Configuration Register (reg a0h)
/////////////////////////////////////////////////////////////////////
	SetReg(REG_POWER_SAVE_CONFIG,0x00);  //  wake up

/////////////////////////////////////////////////////////////////////
// LSHIFT Polarity Register (reg 38h)
/////////////////////////////////////////////////////////////////////
#ifdef DISP_INV_LSHIFT
    SetReg(REG_LSHIFT_POLARITY,0x01); // 1 means falling trigger
#endif

/////////////////////////////////////////////////////////////////////
// LCD Power Control Register (reg adh)
// If LCD_POWER is connected to the glass DISPON or RESET
/////////////////////////////////////////////////////////////////////
    SetReg(REG_GPIO_STATUS_CONTROL1,0x80); // release the glass from reset

/////////////////////////////////////////////////////////////////////
// Panel TCON Programming
/////////////////////////////////////////////////////////////////////
	TCON_Init();
}

/*********************************************************************
* Function: void PutPixel(SHORT x, SHORT y)
*
* PreCondition: none
*
* Input: x,y - pixel coordinates
*
* Output: none
*
* Side Effects: none
*
* Overview: puts pixel
*
* Note: none
*
********************************************************************/
void PutPixel(SHORT x, SHORT y){
DWORD address;

    if(_clipRgn){
        if(x<_clipLeft)
            return;
        if(x>_clipRight)
            return;
        if(y<_clipTop)
            return;
        if(y>_clipBottom)
            return;
    }

    address = (((DWORD)(GetMaxX()+1))*y + x)<<1;
 
    CS_LAT_BIT = 0;
    SetAddress(address);
    WriteData(_color);
    CS_LAT_BIT = 1;
}

/*********************************************************************
* Function: WORD GetPixel(SHORT x, SHORT y)
*
* PreCondition: none
*
* Input: x,y - pixel coordinates 
*
* Output: pixel color
*
* Side Effects: none
*
* Overview: returns pixel color at x,y position
*
* Note: none
*
********************************************************************/
WORD GetPixel(SHORT x, SHORT y){
DWORD address;

    address = (((DWORD)(GetMaxX()+1))*y + x)<<1;

#ifdef USE_16BIT_PMP
WORD  value;

    CS_LAT_BIT = 0;
    SetAddress(address);

    value = PMDIN1; 
    PMPWaitBusy();         // wait for the transmission end

    value = PMDIN1; 
    PMPWaitBusy();         // wait for the transmission end
  
    CS_LAT_BIT = 1;

    PMCONbits.PMPEN  = 0;  // suspend PMP
    value = PMDIN1;        // read value
    PMCONbits.PMPEN  = 1;  // resume PMP

    return value;
#else
WORD_VAL value;

    CS_LAT_BIT = 0;
    SetAddress(address);

    value.Val = PMDIN1; 
    PMPWaitBusy();         // wait for the transmission end

    value.Val = PMDIN1; 
    PMPWaitBusy();         // wait for the transmission end

    value.v[1] = PMDIN1; 
    PMPWaitBusy();         // wait for the transmission end
  
    CS_LAT_BIT = 1;

    PMCONbits.PMPEN  = 0;  // suspend PMP
    value.v[0] = PMDIN1; 
    PMCONbits.PMPEN  = 1;  // resume PMP

    return value.Val;
#endif
}

/*********************************************************************
* Function: void Bar(SHORT left, SHORT top, SHORT right, SHORT bottom)
*
* PreCondition: none
*
* Input: left,top - top left corner coordinates,
*        right,bottom - bottom right corner coordinates
*
* Output: none
*
* Side Effects: none
*
* Overview: draws rectangle filled with current color
*
* Note: none
*
********************************************************************/
void Bar(SHORT left, SHORT top, SHORT right, SHORT bottom){
DWORD address;
register SHORT  x,y;

    if(_clipRgn){
        if(left<_clipLeft)
           left = _clipLeft;
        if(right>_clipRight)
           right= _clipRight;
        if(top<_clipTop)
           top = _clipTop;
        if(bottom>_clipBottom)
           bottom = _clipBottom;
    }

    address = ((DWORD)(GetMaxX( )+1)*top + left)<<1;

    CS_LAT_BIT = 0;
    for(y=top; y<bottom+1; y++){
        SetAddress(address);
        for(x=left; x<right+1; x++){
            WriteData(_color);
        }
        address += (GetMaxX()+1)<<1;
    }
    CS_LAT_BIT = 1;
}

/*********************************************************************
* Function: void ClearDevice(void)
*
* PreCondition: none
*
* Input: none
*
* Output: none
*
* Side Effects: none
*
* Overview: clears screen with current color 
*
* Note: none
*
********************************************************************/
void ClearDevice(void){
DWORD     counter;

    CS_LAT_BIT = 0;
    SetAddress(0);
    SetAddress(0);
    for(counter=0; counter<(DWORD)(GetMaxX()+1)*(GetMaxY()+1); counter++){
        WriteData(_color);
    }
    CS_LAT_BIT = 1;
}

/*********************************************************************
* Function: void PutImage(SHORT left, SHORT top, void* bitmap, BYTE stretch)
*
* PreCondition: none
*
* Input: left,top - left top image corner,
*        bitmap - image pointer,
*        stretch - image stretch factor
*
* Output: none
*
* Side Effects: none
*
* Overview: outputs image starting from left,top coordinates
*
* Note: image must be located in flash
*
********************************************************************/
void PutImage(SHORT left, SHORT top, void* bitmap, BYTE stretch){
FLASH_BYTE* flashAddress;
BYTE colorDepth;
WORD colorTemp;

    // Save current color
    colorTemp = _color;

    switch(*((SHORT*)bitmap))
    {
#ifdef USE_BITMAP_FLASH
        case FLASH:
            // Image address
            flashAddress = ((BITMAP_FLASH*)bitmap)->address;
            // Read color depth
            colorDepth = *(flashAddress+1);
            // Draw picture
            switch(colorDepth){
                case 1:
                    PutImage1BPP(left, top, flashAddress, stretch);
                    break;
                case 4:
                    PutImage4BPP(left, top, flashAddress, stretch);
                    break;
                case 8:
                    PutImage8BPP(left, top, flashAddress, stretch);
                    break;
                case 16:
                    PutImage16BPP(left, top, flashAddress, stretch);
                    break;
            }
            break;
#endif
#ifdef USE_BITMAP_EXTERNAL
        case EXTERNAL:
            // Get color depth
            ExternalMemoryCallback(bitmap, 1, 1, &colorDepth);
            // Draw picture
            switch(colorDepth){
                case 1:
                    PutImage1BPPExt(left, top, bitmap, stretch);
                    break;
                case 4:
                    PutImage4BPPExt(left, top, bitmap, stretch);
                    break;
                case 8:
                    PutImage8BPPExt(left, top, bitmap, stretch);
                    break;
                case 16:
                    PutImage16BPPExt(left, top, bitmap, stretch);
                    break;
                default:
                    break;
            }
            break;
#endif
        default:
            break;
    }

    // Restore current color
    _color = colorTemp;
}

#ifdef USE_BITMAP_FLASH
/*********************************************************************
* Function: void PutImage1BPP(SHORT left, SHORT top, FLASH_BYTE* bitmap, BYTE stretch)
*
* PreCondition: none
*
* Input: left,top - left top image corner,
*        bitmap - image pointer,
*        stretch - image stretch factor
*
* Output: none
*
* Side Effects: none
*
* Overview: outputs monochrome image starting from left,top coordinates
*
* Note: image must be located in flash
*
********************************************************************/
void PutImage1BPP(SHORT left, SHORT top, FLASH_BYTE* bitmap, BYTE stretch){
register DWORD address;
register FLASH_BYTE* flashAddress;
register FLASH_BYTE* tempFlashAddress;
BYTE temp;
WORD sizeX, sizeY;
WORD x,y;
BYTE stretchX,stretchY;
WORD pallete[2];
BYTE mask;

    // Move pointer to size information
    flashAddress = bitmap + 2;

    // Set start address
    address = ((DWORD)(GetMaxX()+1)*top+left)<<1;

    // Read image size
    sizeY = *((FLASH_WORD*)flashAddress);
    flashAddress += 2;
    sizeX = *((FLASH_WORD*)flashAddress);
    flashAddress += 2;
    pallete[0] = *((FLASH_WORD*)flashAddress);
    flashAddress += 2;
    pallete[1] = *((FLASH_WORD*)flashAddress);
    flashAddress += 2;

    CS_LAT_BIT = 0;
    for(y=0; y<sizeY; y++){
        tempFlashAddress = flashAddress;
        for(stretchY = 0; stretchY<stretch; stretchY++){
            flashAddress = tempFlashAddress;
            SetAddress(address);
            mask = 0;
            for(x=0; x<sizeX; x++){

                // Read 8 pixels from flash
                if(mask == 0){
                    temp = *flashAddress;
                    flashAddress++;
                    mask = 0x80;
                }
                
                // Set color
                if(mask&temp){
                    SetColor(pallete[1]);
                }else{
                    SetColor(pallete[0]);
                }

                // Write pixel to screen
                for(stretchX=0; stretchX<stretch; stretchX++){
                    WriteData(_color);
                }

                // Shift to the next pixel
                mask >>= 1;
           }
           address += (GetMaxX()+1)<<1; 
        }
    }
    CS_LAT_BIT = 1;
}

/*********************************************************************
* Function: void PutImage4BPP(SHORT left, SHORT top, FLASH_BYTE* bitmap, BYTE stretch)
*
* PreCondition: none
*
* Input: left,top - left top image corner, bitmap - image pointer,
*        stretch - image stretch factor
*
* Output: none
*
* Side Effects: none
*
* Overview: outputs 16 color image starting from left,top coordinates
*
* Note: image must be located in flash
*
********************************************************************/
void PutImage4BPP(SHORT left, SHORT top, FLASH_BYTE* bitmap, BYTE stretch){
register DWORD address;
register FLASH_BYTE* flashAddress;
register FLASH_BYTE* tempFlashAddress;
WORD sizeX, sizeY;
register WORD x,y;
BYTE temp;
register BYTE stretchX,stretchY;
WORD pallete[16];
WORD counter;

    // Move pointer to size information
    flashAddress = bitmap + 2;

    // Set start address
    address = ((DWORD)(GetMaxX()+1)*top+left)<<1;

    // Read image size
    sizeY = *((FLASH_WORD*)flashAddress);
    flashAddress += 2;
    sizeX = *((FLASH_WORD*)flashAddress);
    flashAddress += 2;

    // Read pallete
    for(counter=0;counter<16;counter++){
        pallete[counter] = *((FLASH_WORD*)flashAddress);
        flashAddress += 2;
    }

    CS_LAT_BIT = 0;     
    for(y=0; y<sizeY; y++){
        tempFlashAddress = flashAddress;
        for(stretchY = 0; stretchY<stretch; stretchY++){
            flashAddress = tempFlashAddress;
            SetAddress(address);
            for(x=0; x<sizeX; x++){
                // Read 2 pixels from flash
                if(x&0x0001){
                    // second pixel in byte
                    SetColor(pallete[temp>>4]);
                }else{
                    temp = *flashAddress;
                    flashAddress++;
                    // first pixel in byte
                    SetColor(pallete[temp&0x0f]);
                }

                // Write pixel to screen       
                for(stretchX=0; stretchX<stretch; stretchX++){
                    WriteData(_color);
                }

                // Shift to the next pixel
                //temp >>= 4;
            }
            address += (GetMaxX()+1)<<1;
        }
    }
    CS_LAT_BIT = 1;
}

/*********************************************************************
* Function: void PutImage8BPP(SHORT left, SHORT top, FLASH_BYTE* bitmap, BYTE stretch)
*
* PreCondition: none
*
* Input: left,top - left top image corner, bitmap - image pointer,
*        stretch - image stretch factor
*
* Output: none
*
* Side Effects: none
*
* Overview: outputs 256 color image starting from left,top coordinates
*
* Note: image must be located in flash
*
********************************************************************/
void PutImage8BPP(SHORT left, SHORT top, FLASH_BYTE* bitmap, BYTE stretch){
register DWORD address;
register FLASH_BYTE* flashAddress;
register FLASH_BYTE* tempFlashAddress;
WORD sizeX, sizeY;
WORD x,y;
BYTE temp;
BYTE stretchX, stretchY;
WORD pallete[256];
WORD counter;

    // Move pointer to size information
    flashAddress = bitmap + 2;

    // Set start address
    address = ((DWORD)(GetMaxX()+1)*top+left)<<1;

    // Read image size
    sizeY = *((FLASH_WORD*)flashAddress);
    flashAddress += 2;
    sizeX = *((FLASH_WORD*)flashAddress);
    flashAddress += 2;

    // Read pallete
    for(counter=0;counter<256;counter++){
        pallete[counter] = *((FLASH_WORD*)flashAddress);
        flashAddress += 2;
    }

    CS_LAT_BIT = 0;     
    for(y=0; y<sizeY; y++){
        tempFlashAddress = flashAddress;
        for(stretchY = 0; stretchY<stretch; stretchY++){
            flashAddress = tempFlashAddress;
            SetAddress(address);
            for(x=0; x<sizeX; x++){
                // Read pixels from flash
                temp = *flashAddress;
                flashAddress++;

                // Set color
                SetColor(pallete[temp]);

                // Write pixel to screen       
                for(stretchX=0; stretchX<stretch; stretchX++){
                    WriteData(_color);
                }
            }
            address += (GetMaxX()+1)<<1;
        }
    }
    CS_LAT_BIT = 1;
}

/*********************************************************************
* Function: void PutImage16BPP(SHORT left, SHORT top, FLASH_BYTE* bitmap, BYTE stretch)
*
* PreCondition: none
*
* Input: left,top - left top image corner, bitmap - image pointer,
*        stretch - image stretch factor
*
* Output: none
*
* Side Effects: none
*
* Overview: outputs hicolor image starting from left,top coordinates
*
* Note: image must be located in flash
*
********************************************************************/
void PutImage16BPP(SHORT left, SHORT top, FLASH_BYTE* bitmap, BYTE stretch){
register DWORD address;
register FLASH_WORD* flashAddress;
register FLASH_WORD* tempFlashAddress;
WORD sizeX, sizeY;
register WORD x,y;
WORD temp;
register BYTE stretchX,stretchY;

    // Move pointer to size information
    flashAddress = (FLASH_WORD*)bitmap + 1;

    // Set start address
    address = ((DWORD)(GetMaxX()+1)*top+left)<<1;

    // Read image size
    sizeY = *flashAddress;
    flashAddress++;
    sizeX = *flashAddress;
    flashAddress++;

    CS_LAT_BIT = 0;     
    for(y=0; y<sizeY; y++){
        tempFlashAddress = flashAddress;
        for(stretchY = 0; stretchY<stretch; stretchY++){
            flashAddress = tempFlashAddress;
            SetAddress(address);
            for(x=0; x<sizeX; x++){
                // Read pixels from flash
                temp = *flashAddress;
                flashAddress++;

                // Set color
                SetColor(temp);

                // Write pixel to screen       
                for(stretchX=0; stretchX<stretch; stretchX++){
                    WriteData(_color);
                }
            }
            address += (GetMaxX()+1)<<1;
        }
    }
    CS_LAT_BIT = 1;
}
#endif

#ifdef USE_BITMAP_EXTERNAL
/*********************************************************************
* Function: void PutImage1BPPExt(SHORT left, SHORT top, void* bitmap, BYTE stretch)
*
* PreCondition: none
*
* Input: left,top - left top image corner, bitmap - image pointer,
*        stretch - image stretch factor
*
* Output: none
*
* Side Effects: none
*
* Overview: outputs monochrome image starting from left,top coordinates
*
* Note: image must be located in external memory
*
********************************************************************/
void PutImage1BPPExt(SHORT left, SHORT top, void* bitmap, BYTE stretch){
register DWORD      address;
register DWORD      memOffset;
BITMAP_HEADER       bmp;
WORD                pallete[2];
BYTE                lineBuffer[((GetMaxX()+1)/8)+1];
BYTE*               pData; 
SHORT               byteWidth;

BYTE                temp;
BYTE                mask;
WORD                sizeX, sizeY;
WORD                x,y;
BYTE                stretchX, stretchY;

    // Set start address
    address = ((DWORD)(GetMaxX()+1)*top+left)<<1;

    // Get bitmap header
    ExternalMemoryCallback(bitmap, 0, sizeof(BITMAP_HEADER), &bmp);

    // Get pallete (2 entries)
    ExternalMemoryCallback(bitmap, sizeof(BITMAP_HEADER), 2*sizeof(WORD), pallete);

    // Set offset to the image data
    memOffset = sizeof(BITMAP_HEADER) + 2*sizeof(WORD);

    // Line width in bytes
    byteWidth = bmp.width>>3;
    if(bmp.width&0x0007)
        byteWidth++;

    // Get size
    sizeX = bmp.width;
    sizeY = bmp.height;

    for(y=0; y<sizeY; y++){
        // Get line
        ExternalMemoryCallback(bitmap, memOffset, byteWidth, lineBuffer);
        memOffset += byteWidth;

        CS_LAT_BIT = 0;
        for(stretchY = 0; stretchY<stretch; stretchY++){
            pData = lineBuffer;
            SetAddress(address);
            mask = 0;
            for(x=0; x<sizeX; x++){

                // Read 8 pixels from flash
                if(mask == 0){
                    temp = *pData++;
                    mask = 0x80;
                }
                
                // Set color
                if(mask&temp){
                    SetColor(pallete[1]);
                }else{
                    SetColor(pallete[0]);
                }

                // Write pixel to screen
                for(stretchX=0; stretchX<stretch; stretchX++){
                    WriteData(_color);
                }

                // Shift to the next pixel
                mask >>= 1;
           }
           address += (GetMaxX()+1)<<1; 
        }
        CS_LAT_BIT = 1;
    }

}

/*********************************************************************
* Function: void PutImage4BPPExt(SHORT left, SHORT top, void* bitmap, BYTE stretch)
*
* PreCondition: none
*
* Input: left,top - left top image corner, bitmap - image pointer,
*        stretch - image stretch factor
*
* Output: none
*
* Side Effects: none
*
* Overview: outputs monochrome image starting from left,top coordinates
*
* Note: image must be located in external memory
*
********************************************************************/
void PutImage4BPPExt(SHORT left, SHORT top, void* bitmap, BYTE stretch){
register DWORD      address;
register DWORD      memOffset;
BITMAP_HEADER       bmp;
WORD                pallete[16];
BYTE                lineBuffer[((GetMaxX()+1)/2)+1];
BYTE*               pData; 
SHORT               byteWidth;

BYTE                temp;
WORD                sizeX, sizeY;
WORD                x,y;
BYTE                stretchX, stretchY;

    // Set start address
    address = ((DWORD)(GetMaxX()+1)*top+left)<<1;

    // Get bitmap header
    ExternalMemoryCallback(bitmap, 0, sizeof(BITMAP_HEADER), &bmp);

    // Get pallete (16 entries)
    ExternalMemoryCallback(bitmap, sizeof(BITMAP_HEADER), 16*sizeof(WORD), pallete);

    // Set offset to the image data
    memOffset = sizeof(BITMAP_HEADER) + 16*sizeof(WORD);

    // Line width in bytes
    byteWidth = bmp.width>>1;
    if(bmp.width&0x0001)
        byteWidth++;

    // Get size
    sizeX = bmp.width;
    sizeY = bmp.height;

    for(y=0; y<sizeY; y++){

        // Get line
        ExternalMemoryCallback(bitmap, memOffset, byteWidth, lineBuffer);
        memOffset += byteWidth;
        CS_LAT_BIT = 0;
        for(stretchY = 0; stretchY<stretch; stretchY++){

            pData = lineBuffer;
            SetAddress(address);

            for(x=0; x<sizeX; x++){

                // Read 2 pixels from flash
                if(x&0x0001){
                    // second pixel in byte
                    SetColor(pallete[temp>>4]);
                }else{
                    temp = *pData++;
                    // first pixel in byte
                    SetColor(pallete[temp&0x0f]);
                }

                // Write pixel to screen       
                for(stretchX=0; stretchX<stretch; stretchX++){
                    WriteData(_color);
                }
           }
           address += (GetMaxX()+1)<<1; 
        }
        CS_LAT_BIT = 1;
    }
}

/*********************************************************************
* Function: void PutImage8BPPExt(SHORT left, SHORT top, void* bitmap, BYTE stretch)
*
* PreCondition: none
*
* Input: left,top - left top image corner, bitmap - image pointer,
*        stretch - image stretch factor
*
* Output: none
*
* Side Effects: none
*
* Overview: outputs monochrome image starting from left,top coordinates
*
* Note: image must be located in external memory
*
********************************************************************/
void PutImage8BPPExt(SHORT left, SHORT top, void* bitmap, BYTE stretch){
register DWORD      address;
register DWORD      memOffset;
BITMAP_HEADER       bmp;
WORD                pallete[256];
BYTE                lineBuffer[(GetMaxX()+1)];
BYTE*               pData; 

BYTE                temp;
WORD                sizeX, sizeY;
WORD                x,y;
BYTE                stretchX, stretchY;

    // Set start address
    address = ((DWORD)(GetMaxX()+1)*top+left)<<1;

    // Get bitmap header
    ExternalMemoryCallback(bitmap, 0, sizeof(BITMAP_HEADER), &bmp);

    // Get pallete (256 entries)
    ExternalMemoryCallback(bitmap, sizeof(BITMAP_HEADER), 256*sizeof(WORD), pallete);

    // Set offset to the image data
    memOffset = sizeof(BITMAP_HEADER) + 256*sizeof(WORD);

    // Get size
    sizeX = bmp.width;
    sizeY = bmp.height;

    for(y=0; y<sizeY; y++){

        // Get line
        ExternalMemoryCallback(bitmap, memOffset, sizeX, lineBuffer);
        memOffset += sizeX;
        CS_LAT_BIT = 0;
        for(stretchY = 0; stretchY<stretch; stretchY++){

            pData = lineBuffer;
            SetAddress(address);

            for(x=0; x<sizeX; x++){

                temp = *pData++;
                SetColor(pallete[temp]);                    

                // Write pixel to screen       
                for(stretchX=0; stretchX<stretch; stretchX++){
                    WriteData(_color);
                }
           }
           address += (GetMaxX()+1)<<1; 
        }
        CS_LAT_BIT = 1;
    }
}

/*********************************************************************
* Function: void PutImage16BPPExt(SHORT left, SHORT top, void* bitmap, BYTE stretch)
*
* PreCondition: none
*
* Input: left,top - left top image corner, bitmap - image pointer,
*        stretch - image stretch factor
*
* Output: none
*
* Side Effects: none
*
* Overview: outputs monochrome image starting from left,top coordinates
*
* Note: image must be located in external memory
*
********************************************************************/
void PutImage16BPPExt(SHORT left, SHORT top, void* bitmap, BYTE stretch){
register DWORD      address;
register DWORD      memOffset;
BITMAP_HEADER       bmp;
WORD                lineBuffer[(GetMaxX()+1)];
WORD*               pData; 
WORD                byteWidth;

WORD                temp;
WORD                sizeX, sizeY;
WORD                x,y;
BYTE                stretchX, stretchY;

    // Set start address
    address = ((DWORD)(GetMaxX()+1)*top+ left)<<1;

    // Get bitmap header
    ExternalMemoryCallback(bitmap, 0, sizeof(BITMAP_HEADER), &bmp);

    // Set offset to the image data
    memOffset = sizeof(BITMAP_HEADER);

    // Get size
    sizeX = bmp.width;
    sizeY = bmp.height;

    byteWidth = sizeX<<1;

    for(y=0; y<sizeY; y++){
        // Get line
        ExternalMemoryCallback(bitmap, memOffset, byteWidth, lineBuffer);
        memOffset += byteWidth;
        CS_LAT_BIT = 0;
        for(stretchY = 0; stretchY<stretch; stretchY++){

            pData = lineBuffer;
            SetAddress(address);

            for(x=0; x<sizeX; x++){

                temp = *pData++;
                SetColor(temp);                    

                // Write pixel to screen       
                for(stretchX=0; stretchX<stretch; stretchX++){
                    WriteData(_color);
                }

           }

           address += (GetMaxX()+1)<<1; 

        }
        CS_LAT_BIT = 1;
    }
}
#endif

