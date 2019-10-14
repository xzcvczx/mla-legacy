/*********************************************************************
 *
 *  VLSI VS1011 MP3 Decoder and VS1053 Ogg/MP3/AAC/WMA/MIDI
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
 ********************************************************************/
#ifndef __VLSICODEC_H
#define __VLSICODEC_H

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
WORD VLSI_GetBitrate(void);

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
void VLSI_Init(void);

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
void VLSI_SetBassBoost(BYTE bass, BYTE gfreq);

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
void VLSI_SetVolume(BYTE vRight, BYTE vLeft);

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
void VLSI_SineTest(void);
#endif

#endif
