/******************************************************************************

  mTouchCap_PIC24F_GUI_commn (Header File)

Description:
    This file contains defines, external variables, and
	function prototypes that are used in mTouchCap_GUI_comm.c
*******************************************************************************/

/*******************************************************************************

* FileName:        mTouchCap_PIC24F_GUI_commn.h
* Dependencies:    See included files, below.
* Processor:       PIC24FJ128GB106
* Compiler:        C30 v3.01
* Company:         Microchip Technology, Inc.

Software License Agreement

The software supplied herewith by Microchip Technology Incorporated
(the “Company”) for its PICmicro® Microcontroller is intended and
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

Author          Date       Comments
--------------------------------------------------------------------------------
BDB         26-Jun-2008 Initial release

Change History:

*******************************************************************************/

#ifndef __MTOUCHCAP_PIC24F_GUI_COMMN_H
#define __MTOUCHCAP_PIC24F_GUI_COMMN_H

#include "GenericTypeDefs.h"
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
#endif // __MTOUCHCAP_PIC24F_GUI_COMMN_H
