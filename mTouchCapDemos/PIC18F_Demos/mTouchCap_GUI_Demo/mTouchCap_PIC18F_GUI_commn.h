/******************************************************************************

  mt2_comm (Header File)

Description:
    This file contains defines, external variables, and
	function prototypes that are used in mt2_comm.c
*******************************************************************************/

/*******************************************************************************

* FileName:        mt2_comm.h
* Dependencies:    See included files, below.
* Processor:       PIC18F46J50
* Compiler:        C18
* Company:         Microchip Technology, Inc.

// Software License Agreement.

Microchip licenses this software to you solely for use with Microchip 
products,according to the terms of the accompanying click-wrap software 
license.Microchip and its licensors retain all right, title and interest in and 
to the software.All rights reserved.

This software and any accompanying information is for suggestion only.  
It shall not be deemed to modify Microchip’s standard warranty for its
 products.It is your responsibility to ensure that this software meets your 
requirements.

SOFTWARE IS PROVIDED “AS IS” WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESS OR 
IMPLIED,INCLUDING WITHOUT LIMITATION, ANY WARRANTY OF MERCHANTABILITY, TITLE, 
NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR PURPOSE. IN NO EVENT WILL MICROCHIP 
OR ITS LICENSORS BE LIABLE FOR ANY DIRECT OR INDIRECT DAMAGES OR EXPENSES 
INCLUDING BUT NOT LIMITED TO INCIDENTAL, SPECIAL, INDIRECT, PUNITIVE OR 
CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF PROCUREMENT OF 
SUBSTITUTE GOODS, TECHNOLOGY OR SERVICES, OR ANY CLAIMS BY THIRD PARTIES 
(INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF), OR OTHER SIMILAR COSTS.  
The aggregate and cumulative liability of Microchip and its licensors for damages 
related to the use of the software will in no event exceed $1000 or the amount you 
paid Microchip for the software, whichever is greater.

MICROCHIP PROVIDES THIS SOFTWARE CONDITIONALLY UPON YOUR ACCEPTANCE OF THESE TERMS 
AND THE TERMS OF THE ACCOMPANYING CLICK-WRAP SOFTWARE LICENSE.

Author          Date       Comments
--------------------------------------------------------------------------------
BDB         26-Jun-2008 Initial release

Change History: 
Nithin Kumar 	02-Mar-2010   Interfacing the mTouch Library to the mTouch GUI plug-in

*******************************************************************************/

#ifndef __MTOUCHCAP_PIC18F_GUI_COMMN_H
#define __MTOUCHCAP_PIC18F_GUI_COMMN_H

//==========================================================
//--- DEFINITIONS
//==========================================================
#ifdef   __DEBUG
#define  __DEBUG_MTOUCHCAP_GUI_COMM_TEST
#define  __DEBUG_MTOUCHCAP_GUI_COMM_TEST_CALL
#endif

#define  MTOUCHCAP_GUI_COMM_VERSION              0x1122

#define  MTOUCHCAP_GUI_COMM_STATUS_SIZE          16
#define  MTOUCHCAP_GUI_COMM_SENSOR_ID_UGROUP     0x80

#define  MTOUCHCAP_GUI_COMM_TAG_DATABLOCK        0x86  // COMPATIBLE WITH GUI DLL

#define  MTOUCHCAP_GUI_COMM_TAG_END_OF_DATA      0x00
#define  MTOUCHCAP_GUI_COMM_TAG_RESET            0x01
#define  MTOUCHCAP_GUI_COMM_TAG_ARCHIVE          0x02

#define  MTOUCHCAP_GUI_COMM_TAG_RD_STATUS        0x11
#define  MTOUCHCAP_GUI_COMM_TAG_RD_DETECT        0x12
#define  MTOUCHCAP_GUI_COMM_TAG_RD_USERGROUP     0x13
#define  MTOUCHCAP_GUI_COMM_TAG_RD               0x14
#define  MTOUCHCAP_GUI_COMM_TAG_RD_AUTO          0x15

#define  MTOUCHCAP_GUI_COMM_TAG_WR_USERGROUP     0x21
#define  MTOUCHCAP_GUI_COMM_TAG_WR_TRIP          0x22
#define  MTOUCHCAP_GUI_COMM_TAG_WR_GBAND         0x23
#define  MTOUCHCAP_GUI_COMM_TAG_WR_AUX1          0x24
#define  MTOUCHCAP_GUI_COMM_TAG_WR_AUX2          0x25
#define  MTOUCHCAP_GUI_COMM_TAG_WR_USEUSB        0x26

#define  MTOUCHCAP_GUI_COMM_TAG_DATA_STATUS      0x41
#define  MTOUCHCAP_GUI_COMM_TAG_DATA_DETECT      0x42
#define  MTOUCHCAP_GUI_COMM_TAG_DATA_USERGROUP   0x43
#define  MTOUCHCAP_GUI_COMM_TAG_DATA_TRIP        0x44
#define  MTOUCHCAP_GUI_COMM_TAG_DATA_GBAND       0x45
#define  MTOUCHCAP_GUI_COMM_TAG_DATA_RAW         0x46
#define  MTOUCHCAP_GUI_COMM_TAG_DATA_AVG         0x47
#define  MTOUCHCAP_GUI_COMM_TAG_DATA_AUX1        0x48
#define  MTOUCHCAP_GUI_COMM_TAG_DATA_AUX2        0x49

#define  MTOUCHCAP_GUI_COMM_TX_RQ_TRIP_FLAG      (mTouchCap_GUI_comm_tx_rq.bits.b0)
#define  MTOUCHCAP_GUI_COMM_TX_RQ_GBAND_FLAG     (mTouchCap_GUI_comm_tx_rq.bits.b1)
#define  MTOUCHCAP_GUI_COMM_TX_RQ_RAW_FLAG       (mTouchCap_GUI_comm_tx_rq.bits.b2)
#define  MTOUCHCAP_GUI_COMM_TX_RQ_AVG_FLAG       (mTouchCap_GUI_comm_tx_rq.bits.b3)
#define  MTOUCHCAP_GUI_COMM_TX_RQ_DETECT_FLAG    (mTouchCap_GUI_comm_tx_rq.bits.b4)
#define  MTOUCHCAP_GUI_COMM_TX_RQ_AUX1_FLAG      (mTouchCap_GUI_comm_tx_rq.bits.b5)
#define  MTOUCHCAP_GUI_COMM_TX_RQ_AUX2_FLAG      (mTouchCap_GUI_comm_tx_rq.bits.b6)
#define  MTOUCHCAP_GUI_COMM_TX_RQ_STATUS_FLAG    (mTouchCap_GUI_comm_tx_rq.bits.b7)

//==========================================================
//--- DATA
//==========================================================
extern const BYTE mTouchCap_GUI_comm_group_0[];
extern const BYTE mTouchCap_GUI_comm_group_1[];
extern const BYTE mTouchCap_GUI_comm_group_2[];
extern const BYTE mTouchCap_GUI_comm_group_3[];
extern const WORD *mTouchCap_GUI_comm_group[];
extern const WORD mTouchCap_GUI_comm_group_size[];

extern BYTE mTouchCap_GUI_comm_tx_sensor_id;
extern BYTE mTouchCap_GUI_comm_tx_datatype;
extern WORD_BITS mTouchCap_GUI_comm_tx_interval;

extern BYTE_BITS mTouchCap_GUI_comm_tx_rq;
extern BYTE   useUSBVals;   //USB
extern BYTE useUSBTouchDetect; //USB

//==========================================================
//--- PROTOTYPES
//==========================================================
void mTouchCap_GUI_comm_test(void);
void mTouchCap_GUI_comm_init(void);
void mTouchCap_GUI_comm_reset(void);
void mTouchCap_GUI_comm(void);
void mTouchCap_GUI_comm_sensor_id_decode(BYTE id);
WORD mTouchCap_GUI_comm_tx_dataset(BYTE tag, WORD *p);

void mTouchCap_GUI_comm_tx_proc(void);
void mTouchCap_GUI_comm_tx_status(void);
void mTouchCap_GUI_comm_tx_detect(void);
void mTouchCap_GUI_comm_tx_data(BYTE id, BYTE flags);

void mTouchCap_GUI_comm_rx_proc(void);
void mTouchCap_GUI_comm_rx_get_prep(void);
BYTE mTouchCap_GUI_comm_rx_get(void);
WORD mTouchCap_GUI_comm_rx_get_word(void);
WORD mTouchCap_GUI_comm_rx_dataset(WORD *p);
void mTouchCap_GUI_Default_Channel_Data(void);
extern void mTouchCapPhy_Timer1Set(WORD time);

#endif // __MTOUCHCAP_PIC18F_GUI_COMMN_H
