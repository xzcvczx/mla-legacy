/*********************************************************************
 *
 *  VLSI VS1011 MP3 Decoder and VS1053 Ogg Vorbis/MP3/AAC/WMA/MIDI
 *  Encoder/Decoder Driver
 *  Module for Microchip TCP/IP Stack
 *   - Plays MP3 or other audio streams
 *
 *********************************************************************
 * FileName:        VLSICodec.c
 * Dependencies:    Microchip TCP/IP Stack
 * Processor:       PIC18, PIC24F, PIC24H, dsPIC30F, dsPIC33F
 * Compiler:        Microchip C30 v3.12 or higher
 *					Microchip C18 v3.30 or higher
 * Company:         Microchip Technology, Inc.
 *
 * Software License Agreement
 *
 * Copyright (C) 2002-2009 Microchip Technology Inc.  All rights
 * reserved.
 *
 * Microchip licenses to you the right to use, modify, copy, and
 * distribute:
 * (i)  the Software when embedded on a Microchip microcontroller or
 *      digital signal controller product ("Device") which is
 *      integrated into Licensee's product; or
 * (ii) ONLY the Software driver source files ENC28J60.c, ENC28J60.h,
 *		ENCX24J600.c and ENCX24J600.h ported to a non-Microchip device
 *		used in conjunction with a Microchip ethernet controller for
 *		the sole purpose of interfacing with the ethernet controller.
 *
 * You should refer to the license agreement accompanying this
 * Software for additional information regarding your rights and
 * obligations.
 *
 * THE SOFTWARE AND DOCUMENTATION ARE PROVIDED "AS IS" WITHOUT
 * WARRANTY OF ANY KIND, EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT
 * LIMITATION, ANY WARRANTY OF MERCHANTABILITY, FITNESS FOR A
 * PARTICULAR PURPOSE, TITLE AND NON-INFRINGEMENT. IN NO EVENT SHALL
 * MICROCHIP BE LIABLE FOR ANY INCIDENTAL, SPECIAL, INDIRECT OR
 * CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF
 * PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY OR SERVICES, ANY CLAIMS
 * BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE
 * THEREOF), ANY CLAIMS FOR INDEMNITY OR CONTRIBUTION, OR OTHER
 * SIMILAR COSTS, WHETHER ASSERTED ON THE BASIS OF CONTRACT, TORT
 * (INCLUDING NEGLIGENCE), BREACH OF WARRANTY, OR OTHERWISE.
 *
 *
 * Author               Date        Comment
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * Francesco Volpe      12/??/2006  Original
 * Howard Schlunder     03/12/2007  Completely revamped
 * Howard Schlunder     08/29/2008  Added VLSI VS1053 registers
 ********************************************************************/
#include "TCPIP Stack/TCPIP.h"
#include "VLSICodec.h"

//******************************************************************************
//******************************************************************************
// Section: Constants
//******************************************************************************
//******************************************************************************

#define VLSI_MODE           0x00
#define VLSI_STATUS         0x01
#define VLSI_BASS           0x02
#define VLSI_CLOCKF         0x03
#define VLSI_DECODE_TIME    0x04
#define VLSI_AUDATA         0x05
#define VLSI_WRAM           0x06
#define VLSI_WRAMADDR       0x07
#define VLSI_HDAT0          0x08
#define VLSI_HDAT1          0x09
#define VLSI_AIADDR         0x0A
#define VLSI_VOL            0x0B
#define VLSI_AICTRL0        0x0C
#define VLSI_AICTRL1        0x0D
#define VLSI_AICTRL2        0x0E
#define VLSI_AICTRL3        0x0F

#define VLSI_STATUS_VER     0x00F0u
#define VER_VS1001          (0u<<4)
#define VER_VS1011          (1u<<4)
#define VER_VS1002          (2u<<4)
#define VER_VS1011E         (2u<<4)
#define VER_VS1003          (3u<<4)
#define VER_VS1053          (4u<<4)
#define VER_VS1033          (5u<<4)
#define VER_VS1103          (7u<<4)

//******************************************************************************
//******************************************************************************
// Section: Function Prototypes
//******************************************************************************
//******************************************************************************

static WORD VLSIReadReg(BYTE vAddress);
static void VLSIWriteReg(BYTE vAddress, WORD wValue);
static BYTE WriteSPI(BYTE output);

//******************************************************************************
//******************************************************************************
//******************************************************************************
// Section: Application Callable Functions
//******************************************************************************
//******************************************************************************
//******************************************************************************

/****************************************************************************
  Function:
    WORD VLSI_GetBitrate(void)

  Description:
    Get bitrate of currently playing stream

  Precondition:
    None

  Parameters:
    None - None

  Returns:
    None

  Remarks:
    None
  ***************************************************************************/
WORD VLSI_GetBitrate(void)
{
    //BYTE temph,templ;
    BYTE bitrate,streamid;
    WORD wTemp;

    // Get bitrate
    wTemp = VLSIReadReg(VLSI_HDAT0);

    // Extract bitrate
    bitrate = (wTemp & 0xF000) >> 12;

    // Get stream id
    wTemp = VLSIReadReg(VLSI_HDAT1);

    // Extract stream id
    streamid = ((BYTE)wTemp & 0x18) >> 3;

    // Use matching table, according to stream id
    if(streamid == 3u)
    {   switch(bitrate)
        {
            case 14:
                return 320;
                break;
            case 13:
                return 256;
                break;
            case 12:
                return 224;
                break;
            case 11:
                return 192;
                break;
            case 10:
                return 160;
                break;
            case 9:
                return 128;
                break;
            case 8:
                return 112;
                break;
            case 7:
                return 96;
                break;
            case 6:
                return 80;
                break;
            case 5:
                return 64;
                break;
            case 4:
                return 56;
                break;
            case 3:
                return 48;
                break;
            case 2:
                return 40;
                break;
            case 1:
                return 32;
                break;
            default:
                return 0;
                break;
        }
    }
    else
    {
        switch(bitrate)
        {
            case 14:
                return 160;
                break;
            case 13:
                return 144;
                break;
            case 12:
                return 128;
                break;
            case 11:
                return 112;
                break;
            case 10:
                return 96;
                break;
            case 9:
                return 80;
                break;
            case 8:
                return 64;
                break;
            case 7:
                return 56;
                break;
            case 6:
                return 48;
                break;
            case 5:
                return 40;
                break;
            case 4:
                return 32;
                break;
            case 3:
                return 24;
                break;
            case 2:
                return 16;
                break;
            case 1:
                return 8;
                break;
            default:
                return 0;
                break;
        }
    }
}

/****************************************************************************
  Function:
    void VLSI_Init(void)

  Description:
    This routine configures the VLSI codec.  If basic SPI communication with
    the codec is not working, this function will NOT return.

  Precondition:
    None

  Parameters:
    None - None

  Returns:
    None

  Remarks:
    None
  ***************************************************************************/
void VLSI_Init(void)
{
    #if defined( __18CXX)
        WORD bSPICONSave, bSPISTATSave;
    #elif defined( __C30__ )
        WORD wSPICONSave, wSPISTATSave;
    #else
        #error Define temporaries to save SPI configuration
    #endif

    // Set up SPI port pins
    MP3_XDCS_IO = 1;            // Make the Data CS pin high
    MP3_XCS_IO = 1;             // Make the Control CS pin high
    MP3_XRESET_IO = 0;

    MP3_XRESET_TRIS = 0;
    MP3_DREQ_TRIS = 1;
    MP3_XDCS_TRIS = 0;          // Make the Data CS pin an output
    MP3_XCS_TRIS = 0;           // Make the Control CS pin an output
    MP3_SDI_TRIS = 1;           // Make the DIN pin an input
    MP3_SDO_TRIS = 0;           // Make the DOUT pin an output
    MP3_SCK_TRIS = 0;           // Make the SCK pin an output

    // Set up SPI module
    #if defined( __18CXX)
        bSPISTATSave = MP3_SPISTAT;
        bSPICONSave = MP3_SPICON1;

        MP3_SPISTATbits.SMP = 0;    // Sample at middle
        MP3_SPISTATbits.CKE = 1;    // Transmit data on rising edge of clock

        // Use slow SPI speed first, will bump up later
        MP3_SPICON1 = 0x22;         // SSPEN = 1, CKP = 0, CLK = Fosc/64, this one doesn't go as fast

    #elif defined( __C30__ )
        wSPISTATSave = MP3_SPISTAT;
        wSPICONSave = MP3_SPICON1;

        MP3_SPISTAT = 0x0000;       // Turn off SPI
        MP3_SPICON1 = 0x0263;       // Fcy Primary prescaler 8:1, secondary prescaler 1:1, CPK=1, CKE=0, SMP=1
        MP3_SPICON2 = 0x0000;
        MP3_SPISTAT = 0x8000;       // Turn on SPI
    #else
        #error Define SPI initialization
    #endif
    MP3_SPI_IF = 0;

    // Deassert RESET (active low)
    DelayMs(1);
    MP3_XRESET_IO = 1;

    // Write configuration MODE register in a loop to verify that the chip is
    // connected and running correctly
    do
    {
        VLSIWriteReg(VLSI_MODE, 0x0820);
    }while(VLSIReadReg(VLSI_MODE) != 0x0820u);

    if((VLSIReadReg(VLSI_STATUS) & VLSI_STATUS_VER) == VER_VS1053)
    {
        // Set the clock to maximum speed (VS1053 only) to allow all audio formats
        // to be decoded without glitching.  Note that this increases power
        // consumption.
        // SC_MULT = XTALI*5.0, SC_ADD = 2.0x, SC_FREQ = 0 (12.288MHz)
        VLSIWriteReg(VLSI_CLOCKF, 0xE000 | 0x1800 | 0x0000);
    }
    else if ((VLSIReadReg(VLSI_STATUS) & VLSI_STATUS_VER) == VER_VS1011E)
    {
        // Nothing special to do
        Nop();
    }
    else
    {
        // VLSI Chip version not tested, not supported, halt program execution.
        // This trap should be caught during the design phase.
        while(1);
    }

    #if defined( __18CXX)
        MP3_SPICON1 = bSPICONSave;
        MP3_SPISTAT = bSPISTATSave;
        MP3_SPICON1 = 0x21;         // SSPEN = 1, CKP = 0, CLK = Fosc/16 (2.604MHz)
    #elif defined( __C30__ )
        MP3_SPISTAT = 0x0000;   // Turn off SPI
        MP3_SPICON1 = wSPICONSave;
        MP3_SPISTAT = wSPISTATSave;
    #else
        #error Define SPI restoration
    #endif
}

/****************************************************************************
  Function:
    void VLSI_SetBassBoost(BYTE bass, BYTE gfreq)

  Description:
    This function sets the bass boost.

  Precondition:
    None

  Parameters:
    BYTE bass   - Bass gain in dB, range from 0 to 15
    BYTE gfreq  - Limit frequency for bass boost, 10 Hz steps (range from
                    0 to 15)

  Returns:
    None

  Remarks:
    None
  ***************************************************************************/
void VLSI_SetBassBoost(BYTE bass, BYTE gfreq)
{
    BYTE templ;

    // Make sure values are in the allowed range
    if(bass > 15u)
        bass = 15;
    if(gfreq > 15u)
        gfreq = 15;

    // put gfreq into the lower 4 bit
    templ = gfreq;

    // put bass boost value into the upper 4 bit
    templ |= (bass << 4);

    VLSIWriteReg(VLSI_BASS, 0xFF00 | templ);
}


/****************************************************************************
  Function:
    void VLSI_SetVolume(BYTE vRight, BYTE vLeft)

  Description:
    This function set volume for analog outputs on the VLSI codec.

  Precondition:
    None

  Parameters:
    BYTE vRight - right channel attenuation from maximum volume, 0.5dB steps
                        (0x00 = full volume, 0xFF = muted)
    BYTE vLeft  - left channel attenuation from maximum volume, 0.5dB steps
                        (0x00 = full volume, 0xFF = muted)

  Returns:
    None

  Remarks:
    None
  ***************************************************************************/
void VLSI_SetVolume(BYTE vRight, BYTE vLeft)
{
    VLSIWriteReg(VLSI_VOL, ((WORD)vLeft)<<8 | vRight);
}


/****************************************************************************
  Function:
    void VLSI_SineTest()

  Description:
    SDI Test Mode must be enabled in MODE Register (0x00). Enters infinite
    loop, should only be used for VLSI function test

  Precondition:
    None

  Parameters:
    None - None

  Returns:
    None

  Remarks:
    This function is for debug purposes.  To enable compilation, define the
    label VLSI_SINE_TEST.
  ***************************************************************************/
#if defined VLSI_SINE_TEST
void VLSI_SineTest()
{
    // Send Test Sequence
    while(1)
    {
        while(!MP3_DREQ_IO);
        MP3_XDCS_IO = 0;
        // Start Sine Test
        WriteSPI(0x53);
        WriteSPI(0xEF);
        WriteSPI(0x6E);
        WriteSPI(0x7D);
        WriteSPI(0x00);
        WriteSPI(0x00);
        WriteSPI(0x00);
        WriteSPI(0x00);
        MP3_XDCS_IO = 1;
    }
}
#endif

//******************************************************************************
//******************************************************************************
//******************************************************************************
// Section: Internal Functions
//******************************************************************************
//******************************************************************************
//******************************************************************************


/****************************************************************************
  Function:
    static WORD VLSIReadReg(BYTE vAddress)

  Description:
    This function reads one register from the VLSI code

  Precondition:
    None

  Parameters:
    BYTE vAddress - register address

  Returns:
    WORD value of the register

  Remarks:
    None
  ***************************************************************************/
static WORD VLSIReadReg(BYTE vAddress)
{
    WORD wValue;

    while(!MP3_DREQ_IO);
    MP3_XCS_IO = 0;
    WriteSPI(0x03);     // Read
    WriteSPI(vAddress); // Register address
    ((BYTE*)&wValue)[1] = WriteSPI(0xFF);   // 16 bit value high byte
    ((BYTE*)&wValue)[0] = WriteSPI(0xFF);   // 16 bit value low byte
    MP3_XCS_IO = 1;

    return wValue;
}

/****************************************************************************
  Function:
    static void VLSIWriteReg(BYTE vAddress, WORD wValue)

  Description:
    This function writes one register from the VLSI code

  Precondition:
    None

  Parameters:
    BYTE vAddress   - address of register
    WORD wValue     - value to write to the register

  Returns:
    None

  Remarks:
    None
  ***************************************************************************/
static void VLSIWriteReg(BYTE vAddress, WORD wValue)
{
    while(!MP3_DREQ_IO);
    MP3_XCS_IO = 0;
    WriteSPI(0x02);     // Write
    WriteSPI(vAddress); // Register address
    WriteSPI(((BYTE*)&wValue)[1]);      // 16 bit value to write high byte
    WriteSPI(((BYTE*)&wValue)[0]);      // 16 bit value to write low byte
    MP3_XCS_IO = 1;
}

/****************************************************************************
  Function:
    static BYTE WriteSPI(BYTE output)

  Description:
    This function writes one byte out the MP3 SPI port, as defined by the
    configuration file, HardwareProfile.h.  Since we are the master, we do
    an SPI read by doing an SPI write and checking the SPI buffer register.
    This routine returns that value, so it can also be used to perform an
    SPI read.  For an SPI read, the value output byte is irrelevant.

  Precondition:
    None

  Parameters:
    None - None

  Returns:
    None

  Remarks:
    Different architectures have different methods of determining when the
    SPI write is complete.
  ***************************************************************************/
static BYTE WriteSPI(BYTE output)
{
    #if defined( __18CXX )
        MP3_SPI_IF = 0;
        MP3_SSPBUF = output;
        while(!MP3_SPI_IF);
    #elif defined( __C30__ )
        MP3_SPI_IF = 0;
        MP3_SSPBUF = output;
        while(!MP3_SPI_IF);
        MP3_SPI_IF = 0;
    #else
        #error Define SPI Write mechanism
    #endif
    return MP3_SSPBUF;
}

