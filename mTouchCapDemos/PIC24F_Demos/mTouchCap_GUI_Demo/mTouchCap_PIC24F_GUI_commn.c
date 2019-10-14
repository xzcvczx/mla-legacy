//===================================================================== 
//--- COPYRIGHT
//===================================================================== 
// Copyright 2008 Microchip Technology Inc.
// 
// Microchip Technology Inc. ("Microchip") licenses this software to
// you solely for use with Microchip products. The software is owned
// by Microchip and is protected under applicable copyright laws. All
// rights reserved.
// 
// SOFTWARE IS PROVIDED IN AN "AS IS." MICROCHIP EXPRESSLY DISCLAIMS ANY
// WARRANTY OF ANY KIND, WHETHER EXPRESS OR IMPLIED, INCLUDING BUT NOT
// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
// PARTICULAR PURPOSE, OR NON-INFRINGEMENT. IN NO EVENT SHALL MICROCHIP
// BE LIABLE FOR ANY INCIDENTAL, SPECIAL, INDIRECT OR CONSEQUENTIAL
// DAMAGES, LOST PROFITS OR LOST DATA, HARM TO YOUR EQUIPMENT, COST OF
// PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY OR SERVICES, ANY CLAIMS
// BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF),
// ANY CLAIMS FOR INDEMNITY OR CONTRIBUTION, OR OTHER SIMILAR COSTS.
// 
//===================================================================== 
//--- TITLE
//===================================================================== 
//    Filename:            mt2_comm.c
//    Microcontroller:     PIC24FJ128GB106
//    Compiled using:      C30
//    Author:              Mark Enochson
//    Company:             Microchip Technology Inc.
//
//===================================================================== 
//--- DESCRIPTION
//===================================================================== 
//
//    PROVIDES DATA LINK BETWEEN HOST (PC) AND mTOUCH ALGORITHM/MODULES
//
//    USB HID DEVICE (DEVICE ID 0X50)
//    ACCEPTS 'COMMANDS' IN THE FORM OF 'TAGS' PROVIDED IN THE INCOMING
//    USB BUFFER
//
//    COMMANDS USED PRIMARILY TO READ AND/OR WRITE DATA USED BY mTOUCH
//    DATA IS RETURNED TO THE HOST AS DEFINED IN THE FIRMWARE SPEC
//    SUMMARY:
//    EACH 64-BYTE USB BUFFER STARTS WITH TAG AND BYTE COUNT 
//    ENCAPSULATING THE DATA CONTAINED IN THAT USB BUFFER
//
//    THE ENCAPSULATED DATA IS A SERIES OF DATASETS ...
//    THE FORMAT OF EACH DATASET IS DESCRIBED IN THE FIRMWARE SPEC
//
//    A REQUEST FOR DATA IDENTIFIES THE GROUP OF 'SENSORS' AND DATA
//    TYPE(S) FOR WHICH DATA IS REQUESTED
//    SENSOR 'GROUPS' REFER TO:
//    1. A SINGLE SENSOR IN THE RANGE 0-15
//    2. A PRE-DEFINED SENSOR GROUP
//       0x81 - ALL SENSORS
//       0x82 - SENSORS 0,1,2,3
//       0x83 - SENSORS 4,5,6,7,8,9,10,11,12
//       0x84 - SENSORS 13,14,15
//    3. A USER-DEFINED GROUP
//       DEFAULTS TO NO SENSORS UNTIL WRITTEN BY THE HOST
//    
//===================================================================== 
//--- HISTORY
//===================================================================== 
//
//    0101-01 - 04-14-08 - ME
//    - initial release
//
//    0101-03 - 04-16-08 - ME
//    - added processing for 
//       MTOUCHCAP_GUI__COMM_TAG_RD_STATUS
//       MTOUCHCAP_GUI__COMM_TAG_RD_DETECT
//       MTOUCHCAP_GUI__COMM_TAG_RD_USERGROUP
//    - re-arranged __DEBUG flags, now located in mt2_comm.h
//
//    0101-04 - 04-16-08 - ME
//    - moved common files from AMAD USB directories to project directory
//       usb_device.c
//       usb_function_hid.c
//       usb.h
//       usb_ch9.h
//       usb_common.h
//       usb_config.h
//       usb_device.h
//       usb_function_hid.h
//       usb_hal.h
//       usb_hal_pic24.h
//
//    0101-05 - 05-20-08 - ME
//    - modified sensor group definitions (0,1,2,3) (composition and order)
//
//    0101-06 - 06-20-08 - ME
//    - added tag MTOUCHCAP_GUI_COMM_TAG_WR_USEUSB     0x26
//
//===================================================================== 

//Change History:
//Author         Date    	Comments
//---------------------------------------------------------------------

//Nithin Kumar 	 02-Mar-2010   Interfacing the mTouch Library to the mTouch GUI plug-in
/**********************************************************************/

#ifndef __MTOUCHCAP_PIC24F_GUI_COMMN_C
#define __MTOUCHCAP_PIC24F_GUI_COMMN_C

#include "GenericTypeDefs.h"
#include "Compiler.h"
#include "usb_config.h"
#include "usb.h"
#include "HardwareProfile.h"
#include "usb_function_hid.h"

#include "mTouchCap_Timers.h"
#include "mTouchCap_PIC24F_GUI_commn.h"			//USB GUI
#include "mTouchCap_PIC24F_GUI_touch.h"
#include "mTouchCap_PIC24F_GUI_buf.h"

#ifndef MTOUCHCAP_GUI_HARDWARE_VERSION
#define MTOUCHCAP_GUI_HARDWARE_VERSION 0x01
#endif

//================================================
//--- DEFINE: RE-DIRECTIONS TO USB 
//================================================

//--- USB
#define mTouchCap_GUI_comm_tx_packet()  USBTransferOnePacket(1,1,(BYTE*)hid_report_in,64)#define mTouchCap_GUI_comm_rx_packet()  USBTransferOnePacket(1,0,(BYTE*)hid_report_out,64)#define mTouchCap_GUI_comm_tx_buffer    hid_report_in
#define mTouchCap_GUI_comm_rx_buffer    hid_report_out
#define mTouchCap_GUI_comm_rx_busy()    USBHandleBusy(mTouchCap_GUI_comm_rx_h)
#define mTouchCap_GUI_comm_tx_busy()    USBHandleBusy(mTouchCap_GUI_comm_tx_h)

//--- USB 'HANDLES'
USB_HANDLE mTouchCap_GUI_comm_tx_h;
USB_HANDLE mTouchCap_GUI_comm_rx_h;

//==========================================================
//--- DEFINE: SENSOR 'GROUPS'
//==========================================================

//--------------------------------------
//--- HARD-CODED SENSOR GROUP(S)
//--------------------------------------
const BYTE mTouchCap_GUI_comm_group_0[] = 
   {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15};

const BYTE mTouchCap_GUI_comm_group_1[] = 
   {13,11,12,14};

const BYTE mTouchCap_GUI_comm_group_2[] = 
   {0,1,2,3,4,5,6,7,8};

const BYTE mTouchCap_GUI_comm_group_3[] = 
   {9,10,15};

const BYTE *mTouchCap_GUI_comm_groups[] = 
   {
   mTouchCap_GUI_comm_group_0,
   mTouchCap_GUI_comm_group_1,
   mTouchCap_GUI_comm_group_2,
   mTouchCap_GUI_comm_group_3
   };

const WORD mTouchCap_GUI_comm_group_sizes[] = 
   {
   sizeof(mTouchCap_GUI_comm_group_0),
   sizeof(mTouchCap_GUI_comm_group_1),
   sizeof(mTouchCap_GUI_comm_group_2),
   sizeof(mTouchCap_GUI_comm_group_3)
   };
   
//--------------------------------------
//--- SENSOR GROUP: USER-DEFINED (SOFT)
//--------------------------------------
#define MTOUCHCAP_GUI_COMM_GROUP_U_SIZE_MAX 16
BYTE mTouchCap_GUI_comm_group_u[MTOUCHCAP_GUI_COMM_GROUP_U_SIZE_MAX];
WORD mTouchCap_GUI_comm_group_u_size;

//--------------------------------------
//--- SENSOR GROUP: ACTIVE
//--------------------------------------
#define MTOUCHCAP_GUI_COMM_SENSOR_MAX         16
#define MTOUCHCAP_GUI_COMM_GROUP_X_SIZE_MAX   16
BYTE mTouchCap_GUI_comm_group_x[MTOUCHCAP_GUI_COMM_GROUP_X_SIZE_MAX];
WORD mTouchCap_GUI_comm_group_x_size;
BYTE mTouchCap_GUI_comm_group_x_id;

//==========================================================

//==========================================================
//--- USB BUFFER(S)
//==========================================================
#define MTOUCHCAP_GUI_COMM_TX_BUFFER_SIZE  64   
//volatile BYTE mTouchCap_GUI_comm_tx_buffer[MTOUCHCAP_GUI_COMM_TX_BUFFER_SIZE];

#define MTOUCHCAP_GUI_COMM_RX_BUFFER_SIZE  64   
//volatile BYTE mTouchCap_GUI_comm_rx_buffer[MTOUCHCAP_GUI_COMM_RX_BUFFER_SIZE];
WORD mTouchCap_GUI_comm_rx_buffer_avail;
BYTE *mTouchCap_GUI_comm_rx_buffer_p;

//--------------------------------------
//--- DATA BROADCAST PARAMETERS
//--------------------------------------
BYTE mTouchCap_GUI_comm_tx_sensor_id;
BYTE mTouchCap_GUI_comm_tx_datatype;
WORD_BITS mTouchCap_GUI_comm_tx_interval;

BYTE_BITS mTouchCap_GUI_comm_tx_rq;

//====================================================================
//--- TEST GROUNDS
//====================================================================
#ifdef   __DEBUG_MTOUCHCAP_GUI_COMM_TEST

/********************************************************************
 * Function			:   void mTouchCap_GUI_comm_test(void)
 *
 * PreCondition		:    None
 *
 * Input			:    None
 *
 * Output			:    None
 *
 * Side Effects		:    None
 *
 * Overview			:    Testing the GUI communication
 *
 *
 *******************************************************************/

void mTouchCap_GUI_comm_test(void)
{
   BYTE i;

   mTouchCap_GUI_comm_reset();
   
   i = 0;
//   mTouchCap_GUI_comm_rx_buffer[i++] = 0x12;
//   mTouchCap_GUI_comm_rx_buffer[i++] = 17;
   mTouchCap_GUI_comm_rx_buffer[i++] = MTOUCHCAP_GUI_COMM_TAG_RD ;
   mTouchCap_GUI_comm_rx_buffer[i++] = 0x84;
   mTouchCap_GUI_comm_rx_buffer[i++] = 0x05;
   mTouchCap_GUI_comm_rx_buffer[i++] = MTOUCHCAP_GUI_COMM_TAG_END_OF_DATA ;
   Nop();
   mTouchCap_GUI_comm_rx_proc();

   mTouchCap_GUI_comm_rx_buffer[i++] = MTOUCHCAP_GUI_COMM_TAG_RD_USERGROUP ;
   mTouchCap_GUI_comm_rx_buffer[i++] = MTOUCHCAP_GUI_COMM_TAG_WR_USERGROUP ;
   mTouchCap_GUI_comm_rx_buffer[i++] = 0x03;
   mTouchCap_GUI_comm_rx_buffer[i++] = 0x06;
   mTouchCap_GUI_comm_rx_buffer[i++] = 0x08;
   mTouchCap_GUI_comm_rx_buffer[i++] = 0x04;
   mTouchCap_GUI_comm_rx_buffer[i++] = MTOUCHCAP_GUI_COMM_TAG_WR_GBAND;
   mTouchCap_GUI_comm_rx_buffer[i++] = 0x80;
   mTouchCap_GUI_comm_rx_buffer[i++] = 6;
   mTouchCap_GUI_comm_rx_buffer[i++] = 0x11;
   mTouchCap_GUI_comm_rx_buffer[i++] = 0x99;
   mTouchCap_GUI_comm_rx_buffer[i++] = 0x22;
   mTouchCap_GUI_comm_rx_buffer[i++] = 0x99;
   mTouchCap_GUI_comm_rx_buffer[i++] = 0x33;
   mTouchCap_GUI_comm_rx_buffer[i++] = 0x99;
   mTouchCap_GUI_comm_rx_buffer[i++] = MTOUCHCAP_GUI_COMM_TAG_RD;
   mTouchCap_GUI_comm_rx_buffer[i++] = 0x80;
   mTouchCap_GUI_comm_rx_buffer[i++] = 0xD5;
   mTouchCap_GUI_comm_rx_buffer[i++] = 2;
   Nop();
   mTouchCap_GUI_comm_rx_proc();
   
   cbuf1_put(0x01);
   cbuf1_put(0x02);
   cbuf1_put(0x03);
   cbuf1_put(0x04);
   cbuf1_put(0x05);
   cbuf1_put(0x06);
   mTouchCap_GUI_comm_tx_proc();
}

#endif // __DEBUG

//====================================================================



/********************************************************************
 * Function			:   void mTouchCap_GUI_comm(void)
 *
 * PreCondition		:    None
 *
 * Input			:    None
 *
 * Output			:    None
 *
 * Side Effects		:    None
 *
 * Overview			:     mTouchCap_GUI_comm service - call from idle
 *
 *
 *******************************************************************/

void mTouchCap_GUI_comm(void)
{

   //---------------------------------------------
   //--- USB SERVICE
   //---------------------------------------------
   USBDeviceTasks();     // service USB

   //---------------------------------------------
   //--- USB CONNECTION OK ?
   //---------------------------------------------
   if((USBDeviceState < CONFIGURED_STATE)||(USBSuspendControl==1)) 
     return;
      
   //---------------------------------------------
   //--- RX DATA BUFFER AVAILABLE (USB OUT)
   //---------------------------------------------
   if(mTouchCap_GUI_comm_rx_busy() == 0)
   {
      mTouchCap_GUI_comm_rx_proc();
      mTouchCap_GUI_comm_rx_h = mTouchCap_GUI_comm_rx_packet();
   }
    
   //---------------------------------------------
   //--- AUTO BROADCAST ?
   //---------------------------------------------
   if(mTouchCap_GUI_comm_tx_interval.Val)
   {
      if(TIMER1_IF)
      {
         mTouchCapPhy_Timer1Set(mTouchCap_GUI_comm_tx_interval.Val);
         mTouchCap_GUI_comm_tx_data(mTouchCap_GUI_comm_tx_sensor_id, mTouchCap_GUI_comm_tx_datatype);
      }
   }
               
   //---------------------------------------------
   //--- TX DATA BUFFER AVAILABLE (USB IN)
   //---------------------------------------------
   if(mTouchCap_GUI_comm_tx_busy() == 0)
   {
      //--- DATA PENDING ?
      if(cbuf1.used)
      {
         mTouchCap_GUI_comm_tx_proc();
         mTouchCap_GUI_comm_tx_h = mTouchCap_GUI_comm_tx_packet();
      }
   }         
}



/********************************************************************
 * Function			:   void mTouchCap_GUI_comm_init(void)
 *
 * PreCondition		:    None
 *
 * Input			:    None
 *
 * Output			:    None
 *
 * Side Effects		:    None
 *
 * Overview			:     initialize/reset GUI comm module
 *
 *
 *******************************************************************/

void mTouchCap_GUI_comm_init(void)
{
   
	mTouchCap_GUI_Default_Channel_Data();//Initialize all channels to zero
	//--- INIT USB
   USBDeviceInit();           // INIT USB (See usbd.h)

   //--- CLEAR/INIT DATA I/O
   mTouchCap_GUI_comm_reset();          // RESET COMM MODULE

   //--- SET 1ST LOCATION IN RX BUFFER TO "END"
   mTouchCap_GUI_comm_rx_buffer[0] = MTOUCHCAP_GUI_COMM_TAG_END_OF_DATA;
   
   //--- USB HANDLES
   mTouchCap_GUI_comm_tx_h = 0;
   mTouchCap_GUI_comm_rx_h = 0;

   //--- CLEAR 'BROADCAST' PARAMETERS
   mTouchCap_GUI_comm_tx_sensor_id = 0;
   mTouchCap_GUI_comm_tx_datatype = 0;
   mTouchCap_GUI_comm_tx_interval.Val = 0;   
}


/********************************************************************
 * Function			:   void mTouchCap_GUI_comm_reset(void)
 *
 * PreCondition		:    None
 *
 * Input			:    None
 *
 * Output			:    None
 *
 * Side Effects		:    None
 *
 * Overview			:    reset the comm module ...
 *						 kills all data I/O
 *
 *******************************************************************/

void mTouchCap_GUI_comm_reset(void)
{

   //--- CLEAR 'BROADCAST' PARAMETERS
//   mTouchCap_GUI_comm_tx_sensor_id = 0;
//   mTouchCap_GUI_comm_tx_datatype = 0;
   mTouchCap_GUI_comm_tx_interval.Val = 0;
   
   //--- CLEAR DATA RQ FLAGS
   mTouchCap_GUI_comm_tx_rq.Val = 0;
   
   //--- CLEAR CIRCULAR DATA BUFFER
   cbuf1_init();
   
}



/********************************************************************
 * Function			:   void mTouchCap_GUI_comm_tx_proc(void)
 *
 * PreCondition		:    None
 *
 * Input			:    None
 *
 * Output			:    None
 *
 * Side Effects		:    None
 *
 * Overview			:    prepare outgoing USB packet
 *                      pull data from circular data buffer
 *                      load as many data bytes as possible
 *                      or available ...
 *                      3 bytes of overhead for each USB
 *                      packet to 'encapsulate' the data
 *                      i.e.
 *                      preface data with:
 *                         - TAG_DATABLOCK
 *                         - byte count
 *                      terminate with: 
 *                         - TAG_END_OF_DATA
 *
 *******************************************************************/

void mTouchCap_GUI_comm_tx_proc(void)
{
   BYTE *p, count;
   
   p = (BYTE *)mTouchCap_GUI_comm_tx_buffer;
   count = cbuf1.used;
   if(count > (MTOUCHCAP_GUI_COMM_TX_BUFFER_SIZE - 3))
      count = (MTOUCHCAP_GUI_COMM_TX_BUFFER_SIZE - 3);
      
   *p++ = MTOUCHCAP_GUI_COMM_TAG_DATABLOCK;
   *p++ = count;
   while(count--)
      *p++ = cbuf1_get();      
   *p++ = MTOUCHCAP_GUI_COMM_TAG_END_OF_DATA;      
}

/********************************************************************
 * Function			:   void mTouchCap_GUI_comm_rx_proc()
 *
 * PreCondition		:    None
 *
 * Input			:    None
 *
 * Output			:    None
 *
 * Side Effects		:    None
 *
 * Overview			:    process incoming (received) USB packet
 *						 
 *
 *******************************************************************/

void mTouchCap_GUI_comm_rx_proc()
{
   BYTE data;
   BYTE id, datatype;

   BYTE ok, count;
   BYTE *p;
      
   //-----------------------------------
   //--- INIT PAYLOAD DATA FETCH
   //-----------------------------------
   mTouchCap_GUI_comm_rx_get_prep();
   
/* NO PREAMBLE ... STRICTLY DATA
   //-----------------------------------
   //--- PAYLOAD TAG
   //-----------------------------------
   data = mTouchCap_GUI_comm_rx_get();  //--- POSSIBLE RESET IF != TAG_DATABLOCK

   //-----------------------------------
   //--- PAYLOAD BYTE COUNT
   //-----------------------------------
   mTouchCap_GUI_comm_rx_buffer_avail = mTouchCap_GUI_comm_rx_get();
   if(mTouchCap_GUI_comm_rx_buffer_avail > 62)
      mTouchCap_GUI_comm_rx_buffer_avail = 62;
*/
         
   do
   {
      //--------------------------------
      //--- FETCH TAG
      //--------------------------------
      if(mTouchCap_GUI_comm_rx_buffer_avail)
      {
         data = mTouchCap_GUI_comm_rx_get();
         ok = 1;
      }
      else
      {
         data = MTOUCHCAP_GUI_COMM_TAG_END_OF_DATA;
         ok = 0;
      }
         
      //------------------------------------------
      //--- PROCESS TAG
      //------------------------------------------
      switch(data)
      {
         //-----------------------------
         //--- TAG: RESET
         //-----------------------------
         case MTOUCHCAP_GUI_COMM_TAG_RESET:
            mTouchCap_GUI_comm_reset();
            break;

         //-----------------------------
         //--- TAG: ARCHIVE
         //-----------------------------
         case MTOUCHCAP_GUI_COMM_TAG_ARCHIVE:
            //--- CALL ARCHIVE ROUTINE
            break;

         //-----------------------------
         //--- TAG: READ STATUS
         //-----------------------------
         case MTOUCHCAP_GUI_COMM_TAG_RD_STATUS:
            mTouchCap_GUI_comm_tx_status();
            break;
            
         //-----------------------------
         //--- TAG: READ DETECT
         //-----------------------------
         case MTOUCHCAP_GUI_COMM_TAG_RD_DETECT:
            mTouchCap_GUI_comm_tx_detect();
            break;
            
         //-----------------------------
         //--- TAG: READ USERGROUP
         //-----------------------------
         case MTOUCHCAP_GUI_COMM_TAG_RD_USERGROUP:
            count = mTouchCap_GUI_comm_group_u_size;
            if(cbuf1.unused >= (count + 3))
            {
               cbuf1_put(MTOUCHCAP_GUI_COMM_TAG_DATA_USERGROUP);
               cbuf1_put(MTOUCHCAP_GUI_COMM_SENSOR_ID_UGROUP);
               cbuf1_put(count);
               p = mTouchCap_GUI_comm_group_u;
               while(count--)
               {
                  cbuf1_put((BYTE)*p++);
               }
            }
            break;
            
         //-----------------------------
         //--- TAG: READ
         //-----------------------------
         case MTOUCHCAP_GUI_COMM_TAG_RD:
            if(mTouchCap_GUI_comm_rx_buffer_avail < 2)
               ok = 0;
            else
            {
               id = mTouchCap_GUI_comm_rx_get();
               datatype = mTouchCap_GUI_comm_rx_get();
               mTouchCap_GUI_comm_tx_data(id, datatype);
            } 
            mTouchCap_GUI_comm_tx_interval.Val = 0;                 
            break;

         //-----------------------------
         //--- TAG: READ_AUTO
         //-----------------------------
         case MTOUCHCAP_GUI_COMM_TAG_RD_AUTO:
            if(mTouchCap_GUI_comm_rx_buffer_avail < 4)
               ok = 0;
            else
            {
               mTouchCap_GUI_comm_tx_sensor_id = mTouchCap_GUI_comm_rx_get();
               mTouchCap_GUI_comm_tx_datatype = mTouchCap_GUI_comm_rx_get();
               mTouchCap_GUI_comm_tx_interval.byte.LB = mTouchCap_GUI_comm_rx_get();
               mTouchCap_GUI_comm_tx_interval.byte.HB = mTouchCap_GUI_comm_rx_get();
               mTouchCapPhy_Timer1Set(mTouchCap_GUI_comm_tx_interval.Val);
            }
            break;
            
         //-----------------------------
         //--- TAG: WRITE USERGROUP
         //-----------------------------
         case MTOUCHCAP_GUI_COMM_TAG_WR_USERGROUP:
            if(mTouchCap_GUI_comm_rx_buffer_avail)
               count = mTouchCap_GUI_comm_rx_get();
            if(mTouchCap_GUI_comm_rx_buffer_avail < count)
               ok = 0;
            else
            {
               p = mTouchCap_GUI_comm_group_u;
               mTouchCap_GUI_comm_group_u_size = count;
               while(count--)
                  *p++ = mTouchCap_GUI_comm_rx_get();
            }
             break;

         //-----------------------------
         //--- TAG: WRITE TRIP VALUES
         //-----------------------------
         case MTOUCHCAP_GUI_COMM_TAG_WR_TRIP:
            ok = mTouchCap_GUI_comm_rx_dataset(mTouchCap_GUI_touch_trip);
            break;                  

         //-----------------------------
         //--- TAG: WRITE GUARDBAND
         //-----------------------------
         case MTOUCHCAP_GUI_COMM_TAG_WR_GBAND:
            ok = mTouchCap_GUI_comm_rx_dataset(mTouchCap_GUI_touch_gband);
            break;                  

         //-----------------------------
         //--- TAG: WRITE AUX1
         //-----------------------------
         case MTOUCHCAP_GUI_COMM_TAG_WR_AUX1:
            ok = mTouchCap_GUI_comm_rx_dataset(mTouchCap_GUI_touch_aux1);
            break;                  

         //-----------------------------
         //--- TAG: WRITE AUX2
         //-----------------------------
         case MTOUCHCAP_GUI_COMM_TAG_WR_AUX2:
            ok = mTouchCap_GUI_comm_rx_dataset(mTouchCap_GUI_touch_aux2);
            break;                  

         //-----------------------------
         //--- TAG: WRITE USEUSB
         //-----------------------------
         case MTOUCHCAP_GUI_COMM_TAG_WR_USEUSB:
            if(mTouchCap_GUI_comm_rx_buffer_avail)
               mTouchCap_GUI_touch_useusb = mTouchCap_GUI_comm_rx_get();
            break;                  

         //-----------------------------
         //--- TAG: END OF DATA
         //-----------------------------
         case MTOUCHCAP_GUI_COMM_TAG_END_OF_DATA:
            ok = 0;
            break;
            
         default:
            ok = 0;
      }

   } while (ok);
}

/********************************************************************
 * Function			:   WORD mTouchCap_GUI_comm_rx_dataset(WORD *p)
 *
 * PreCondition		:    None
 *
 * Input			:    Data
 *
 * Output			:    Decoded data
 *
 * Side Effects		:    None
 *
 * Overview			:    decode 'dataset write' in incoming USB buffer 
 *						 
 *
 *******************************************************************/

WORD mTouchCap_GUI_comm_rx_dataset(WORD *p)
{
   BYTE id, count, group_index;
   WORD_BITS data;
   
   //-----------------------------------
   //--- FETCH/DECODE SENSOR_ID
   //-----------------------------------
   if(mTouchCap_GUI_comm_rx_buffer_avail<2)
      return 0;
   id = mTouchCap_GUI_comm_rx_get();
   mTouchCap_GUI_comm_sensor_id_decode(id);
   
   //-----------------------------------
   //--- FETCH/DECODE BYTE COUNT
   //-----------------------------------
   count = mTouchCap_GUI_comm_rx_get();
   if(mTouchCap_GUI_comm_rx_buffer_avail < count)
      return 0;

   //-----------------------------------
   //--- LOAD DATA ARRAY WITH INCOMING DATASET
   //-----------------------------------
   count >>= 1;            // change from byte count to word count
   group_index = 0;        // index into sensor group
   while(count--)
   {
      data.byte.LB = mTouchCap_GUI_comm_rx_get();
      data.byte.HB = mTouchCap_GUI_comm_rx_get();
      if(group_index < mTouchCap_GUI_comm_group_x_size)
      {
         *(p + mTouchCap_GUI_comm_group_x[group_index]) = data.Val;
         group_index++;
      }
   }
   return 1;
}

/********************************************************************
 * Function			:   void mTouchCap_GUI_comm_tx_data(BYTE id, BYTE flags)
 *
 * PreCondition		:    None
 *
 * Input			:    Byte ID and the status
 *
 * Output			:    None
 *
 * Side Effects		:    None
 *
 * Overview			:    load output buffer with requested data 
 *						 
 *
 *******************************************************************/

void mTouchCap_GUI_comm_tx_data(BYTE id, BYTE flags)
{

   //-----------------------------------
   //--- DECODE SENSOR ID
   //-----------------------------------
   mTouchCap_GUI_comm_sensor_id_decode(id);
   
   //-----------------------------------
   //--- LOAD DATA RQ FLAGS
   //-----------------------------------
   mTouchCap_GUI_comm_tx_rq = (BYTE_BITS)flags;
   
   //-----------------------------------
   //--- BUILD & SUBMIT RQ'D DATASETS
   //-----------------------------------
   if(MTOUCHCAP_GUI_COMM_TX_RQ_TRIP_FLAG)
   {   
      mTouchCap_GUI_comm_tx_dataset(MTOUCHCAP_GUI_COMM_TAG_DATA_TRIP, mTouchCap_GUI_touch_trip);
      MTOUCHCAP_GUI_COMM_TX_RQ_TRIP_FLAG = 0;
   }

   if(MTOUCHCAP_GUI_COMM_TX_RQ_GBAND_FLAG)
   {
      mTouchCap_GUI_comm_tx_dataset(MTOUCHCAP_GUI_COMM_TAG_DATA_GBAND, mTouchCap_GUI_touch_gband);
      MTOUCHCAP_GUI_COMM_TX_RQ_GBAND_FLAG = 0;
   }
      
   if(MTOUCHCAP_GUI_COMM_TX_RQ_RAW_FLAG)
   {
      mTouchCap_GUI_comm_tx_dataset(MTOUCHCAP_GUI_COMM_TAG_DATA_RAW, mTouchCap_GUI_touch_raw);
      MTOUCHCAP_GUI_COMM_TX_RQ_RAW_FLAG = 0;
   }
      
   if(MTOUCHCAP_GUI_COMM_TX_RQ_AVG_FLAG)
   {
      mTouchCap_GUI_comm_tx_dataset(MTOUCHCAP_GUI_COMM_TAG_DATA_AVG, mTouchCap_GUI_touch_avg);
      MTOUCHCAP_GUI_COMM_TX_RQ_AVG_FLAG = 0;
   } 
      
   if(MTOUCHCAP_GUI_COMM_TX_RQ_AUX1_FLAG)
   {
      mTouchCap_GUI_comm_tx_dataset(MTOUCHCAP_GUI_COMM_TAG_DATA_AUX1, mTouchCap_GUI_touch_aux1);
      MTOUCHCAP_GUI_COMM_TX_RQ_AUX1_FLAG = 0;
   }

   if(MTOUCHCAP_GUI_COMM_TX_RQ_AUX2_FLAG)
   {
      mTouchCap_GUI_comm_tx_dataset(MTOUCHCAP_GUI_COMM_TAG_DATA_AUX2, mTouchCap_GUI_touch_aux2);
      MTOUCHCAP_GUI_COMM_TX_RQ_AUX2_FLAG = 0;
   }

   if(MTOUCHCAP_GUI_COMM_TX_RQ_STATUS_FLAG)
   {
      mTouchCap_GUI_comm_tx_status();
      MTOUCHCAP_GUI_COMM_TX_RQ_STATUS_FLAG = 0;
   }
   
   if(MTOUCHCAP_GUI_COMM_TX_RQ_DETECT_FLAG)
   {
      mTouchCap_GUI_comm_tx_detect();
      MTOUCHCAP_GUI_COMM_TX_RQ_DETECT_FLAG = 0;
   }
   
}


/********************************************************************
 * Function			:   WORD mTouchCap_GUI_comm_tx_dataset(BYTE tag, WORD *p)
 *
 * PreCondition		:    None
 *
 * Input			:    Dataset Tag and Data
 *
 * Output			:    None
 *
 * Side Effects		:    None
 *
 * Overview			:    build dataset and place in outgoing buffer
 *                      calling arguments designate the
 *                      dataset TAG and pointer to source data
 *						 
 *
 *******************************************************************/

WORD mTouchCap_GUI_comm_tx_dataset(BYTE tag, WORD *p)
{
   WORD i, j;
   WORD_BITS data;
   
   j = mTouchCap_GUI_comm_group_x_size << 1;     // DATA BYTE COUNT
   i = j + 3;                          // DATASET SIZE (W/ OVERHEAD)
   
   //---------------------------------------------
   //--- IF ROOM IN PACKET, BUILD DATA SET
   //---------------------------------------------
   if(cbuf1.unused > i)
   {
      cbuf1_put(tag);
      cbuf1_put((BYTE)mTouchCap_GUI_comm_group_x_id);
      cbuf1_put((BYTE)j);
      for(i=0; i < mTouchCap_GUI_comm_group_x_size; i++)
      {
         data.Val = p[mTouchCap_GUI_comm_group_x[i]];
         cbuf1_put(data.byte.LB);
         cbuf1_put(data.byte.HB);
      }
      return 0;
   }
   else
   {
      return 1;
   } 
}

/********************************************************************
 * Function			:   void mTouchCap_GUI_comm_tx_status(void)
 *
 * PreCondition		:    None
 *
 * Input			:    None
 *
 * Output			:    None
 *
 * Side Effects		:    None
 *
 * Overview			:   prepare data block: STATUS
 *						 
 *
 *******************************************************************/

void mTouchCap_GUI_comm_tx_status(void)
{
   if(cbuf1.unused >= MTOUCHCAP_GUI_COMM_STATUS_SIZE)
   {
      cbuf1_put(MTOUCHCAP_GUI_COMM_TAG_DATA_STATUS);
      cbuf1_put(MTOUCHCAP_GUI_COMM_STATUS_SIZE - 2);
      cbuf1_put((BYTE)(MTOUCHCAP_GUI_COMM_VERSION & 0xFF));
      cbuf1_put((BYTE)(MTOUCHCAP_GUI_COMM_VERSION >> 8));
      cbuf1_put((BYTE)(MTOUCHCAP_GUI_TOUCH_VERSION & 0xFF));
      cbuf1_put((BYTE)(MTOUCHCAP_GUI_TOUCH_VERSION >> 8));
      cbuf1_put(MTOUCHCAP_GUI_HARDWARE_VERSION);     // SEE HardwareProfile.h
      cbuf1_put(MTOUCHCAP_GUI_COMM_SENSOR_MAX);
      cbuf1_put(TIMER1_USEC);
      cbuf1_put(mTouchCap_GUI_comm_tx_sensor_id);
      cbuf1_put(mTouchCap_GUI_comm_tx_datatype);
      cbuf1_put(mTouchCap_GUI_comm_tx_interval.byte.LB);
      cbuf1_put(mTouchCap_GUI_comm_tx_interval.byte.HB);
      cbuf1_put(0x11);
      cbuf1_put(0x22);
      cbuf1_put(0x33);
   }
}


/********************************************************************
 * Function			:   void mTouchCap_GUI_comm_tx_detect(void)
 *
 * PreCondition		:    None
 *
 * Input			:    None
 *
 * Output			:    None
 *
 * Side Effects		:    None
 *
 * Overview			:   prepare data block: DETECT flags
 *						 
 *
 *******************************************************************/

void mTouchCap_GUI_comm_tx_detect(void)
{
   BYTE i, *p;
   
   if(cbuf1.unused > 8)
   {
      p = mTouchCap_GUI_touch_detect;
      cbuf1_put(MTOUCHCAP_GUI_COMM_TAG_DATA_DETECT);
      cbuf1_put(MTOUCHCAP_GUI_TOUCH_DETECT_SIZEOF + 1);
      i = MTOUCHCAP_GUI_TOUCH_DETECT_SIZEOF;
      while(i--)
         cbuf1_put(*p++);
#ifdef USE_SLIDER_2CHNL
      p = (BYTE *)&mTouchCap_GUI_touch_slider2_pct;
#endif      
#ifdef USE_SLIDER_4CHNL
      p = (BYTE *)&mTouchCap_GUI_touch_slider4_pct;
#endif      
      cbuf1_put(*p);
   }
}   



/********************************************************************
 * Function			:   void mTouchCap_GUI_comm_sensor_id_decode(BYTE id)
 *
 * PreCondition		:    None
 *
 * Input			:    ID of the sensor
 *
 * Output			:    None
 *
 * Side Effects		:    None
 *
 * Overview			:   To decode the ID of the sensor
 *						 
 *
 *******************************************************************/

void mTouchCap_GUI_comm_sensor_id_decode(BYTE id)
{
   WORD i;
   const BYTE *p;

   mTouchCap_GUI_comm_group_x_size = 0;
   mTouchCap_GUI_comm_group_x_id = id;

   //-----------------------------------
   //--- SINGLE SENSOR
   //-----------------------------------
   if(id < MTOUCHCAP_GUI_COMM_SENSOR_MAX)
   {
      mTouchCap_GUI_comm_group_x[0] = id;
      mTouchCap_GUI_comm_group_x_size = 1;
   }

   //-----------------------------------
   //--- GROUP: USER-DEFINED
   //-----------------------------------
   else if (id == MTOUCHCAP_GUI_COMM_SENSOR_ID_UGROUP)
   {
      mTouchCap_GUI_comm_group_x_size = 0;
      while(mTouchCap_GUI_comm_group_x_size < mTouchCap_GUI_comm_group_u_size)
      {
         mTouchCap_GUI_comm_group_x[mTouchCap_GUI_comm_group_x_size] = 
            mTouchCap_GUI_comm_group_u[mTouchCap_GUI_comm_group_x_size];
         mTouchCap_GUI_comm_group_x_size++;
      }
   }

   //-----------------------------------
   //--- GROUP: HARD-CODED
   //-----------------------------------
   else if((id > 0x80) && (id < 0x85))
   {
      id -= 0x81;
      mTouchCap_GUI_comm_group_x_size = mTouchCap_GUI_comm_group_sizes[id];
      p = mTouchCap_GUI_comm_groups[id];
      for(i=0; i<mTouchCap_GUI_comm_group_x_size; i++)
         mTouchCap_GUI_comm_group_x[i] = *p++;
   }
}


/********************************************************************
 * Function			:  void mTouchCap_GUI_comm_rx_get_prep(void)
 *
 * PreCondition		:    None
 *
 * Input			:    None
 *
 * Output			:    None
 *
 * Side Effects		:    None
 *
 * Overview			:   prepare RX for 
 *                      reading/interpretting incoming USB
 *                      packet
 *						 
 *******************************************************************/

void mTouchCap_GUI_comm_rx_get_prep(void)
{
   mTouchCap_GUI_comm_rx_buffer_p = (BYTE *)mTouchCap_GUI_comm_rx_buffer;
   mTouchCap_GUI_comm_rx_buffer_avail = MTOUCHCAP_GUI_COMM_RX_BUFFER_SIZE;
}   


/********************************************************************
 * Function			:  BYTE mTouchCap_GUI_comm_rx_get(void)
 *
 * PreCondition		:    None
 *
 * Input			:    None
 *
 * Output			:    Next byte of the USB packet
 *
 * Side Effects		:    None
 *
 * Overview			:   get/retrieve next byte 
 *                    from incoming USB packet buffer
 *
 *						 
 *******************************************************************/

BYTE mTouchCap_GUI_comm_rx_get(void)
{
   BYTE data;
   data = *mTouchCap_GUI_comm_rx_buffer_p++;
   mTouchCap_GUI_comm_rx_buffer_avail--;
   return data;
}   

/********************************************************************
 * Function			:  void mTouchCap_GUI_Default_Channel_Data(void)
 *
 * PreCondition		:    None
 *
 * Input			:    None
 *
 * Output			:    None
 *
 * Side Effects		:    None
 *
 * Overview			:  To reset the values of the arrays that are used
 *					   by the GUI to display the default values of
 *					   the CTMUchannels  
 *                    
 
 *******************************************************************/

void mTouchCap_GUI_Default_Channel_Data(void)
{
	BYTE ChannelNumber;
	//Initialize the current rawdata and Average Data of all the channels to Zero so that the GUI does
	//not read any junk values stored in any of the channels which are not active.
	for(ChannelNumber =0;ChannelNumber<MAX_ADC_CHANNELS;ChannelNumber++)
		{
			curRawData[ChannelNumber] = 0;
			averageData[ChannelNumber] = 0;
		}
}



//==========================================================
//==========================================================
//--- USB STUFF
//==========================================================
//==========================================================

//---
void USBCBSuspend(void)
{
/* CHANGE_MCHP commented this particular USB function */
/*	
    #if defined(__C30__)
    #if 0
        U1EIR = 0xFFFF;
        U1IR = 0xFFFF;
        U1OTGIR = 0xFFFF;
        IFS5bits.USB1IF = 0;
        IEC5bits.USB1IE = 1;
        U1OTGIEbits.ACTVIE = 1;
        U1OTGIRbits.ACTVIF = 1;
        TRISA &= 0xFF3F;
        LATAbits.LATA6 = 1;
        Sleep();
        LATAbits.LATA6 = 0;
    #endif
    #endif
*/
}


void USBCBWakeFromSuspend(void)
{
}

/********************************************************************
 * Function:        void USBCB_SOF_Handler(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        The USB host sends out a SOF packet to full-speed
 *                  devices every 1 ms. This interrupt may be useful
 *                  for isochronous pipes. End designers should
 *                  implement callback routine as necessary.
 *
 * Note:            None
 *******************************************************************/
void USBCB_SOF_Handler(void)
{
    // No need to clear UIRbits.SOFIF to 0 here.
    // Callback caller is already doing that.
}

/*******************************************************************
 * Function:        void USBCBErrorHandler(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        The purpose of this callback is mainly for
 *                  debugging during development. Check UEIR to see
 *                  which error causes the interrupt.
 *
 * Note:            None
 *******************************************************************/
void USBCBErrorHandler(void)
{
    // No need to clear UEIR to 0 here.
    // Callback caller is already doing that.
}

/*******************************************************************
 * Function:        void USBCBErrorHandler(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        The purpose of this callback is mainly for
 *                  debugging during development. Check UEIR to see
 *                  which error causes the interrupt.
 *
 * Note:            None
 *******************************************************************/
void USBCBCheckOtherReq(void)
{
    USBCheckHIDRequest();
}//end

void USBCBStdSetDscHandler(void)
{
    // Must claim session ownership if supporting this request
}//end

/*******************************************************************
 * Function:        void USBCBInitEP(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        This function is called when the device becomes
 *                  initialized.  This should initialize the endpoints
 *                  for the device's usage according to the current
 *                  configuration.
 *
 * Note:            None
 *******************************************************************/
void USBCBInitEP(void)
{
    USBEnableEndpoint(HID_EP,USB_IN_ENABLED|USB_OUT_ENABLED|USB_HANDSHAKE_ENABLED|USB_DISALLOW_SETUP);
}

/********************************************************************
 * Function:        void USBCBSendResume(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        This callback should send a RESUME signal that
 *                  has the period of 1-15ms.
 *
 * Note:            Interrupt vs. Polling
 *                  -Primary clock
 *                  -Secondary clock ***** MAKE NOTES ABOUT THIS *******
 *                   > Can switch to primary first by calling USBCBWakeFromSuspend()
 
 *                  The modifiable section in this routine should be changed
 *                  to meet the application needs. Current implementation
 *                  temporary blocks other functions from executing for a
 *                  period of 1-13 ms depending on the core frequency.
 *
 *                  According to USB 2.0 specification section 7.1.7.7,
 *                  "The remote wakeup device must hold the resume signaling
 *                  for at lest 1 ms but for no more than 15 ms."
 *                  The idea here is to use a delay counter loop, using a
 *                  common value that would work over a wide range of core
 *                  frequencies.
 *                  That value selected is 1800. See table below:
 *                  ==========================================================
 *                  Core Freq(MHz)      MIP         RESUME Signal Period (ms)
 *                  ==========================================================
 *                      48              12          1.05
 *                       4              1           12.6
 *                  ==========================================================
 *                  * These timing could be incorrect when using code
 *                    optimization or extended instruction mode,
 *                    or when having other interrupts enabled.
 *                    Make sure to verify using the MPLAB SIM's Stopwatch
 *                    and verify the actual signal on an oscilloscope.
 *******************************************************************/
void USBCBSendResume(void)
{
    static WORD delay_count;
    
    USBResumeControl = 1;                // Start RESUME signaling
    
    delay_count = 1800U;                // Set RESUME line for 1-13 ms
    do
    {
        delay_count--;
    }while(delay_count);
    USBResumeControl = 0;
}


/*******************************************************************
 * Function:        BOOL USER_USB_CALLBACK_EVENT_HANDLER(
 *                        USB_EVENT event, void *pdata, WORD size)
 *
 * PreCondition:    None
 *
 * Input:           USB_EVENT event - the type of event
 *                  void *pdata - pointer to the event data
 *                  WORD size - size of the event data
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        This function is called from the USB stack to
 *                  notify a user application that a USB event
 *                  occured.  This callback is in interrupt context
 *                  when the USB_INTERRUPT option is selected.
 *
 * Note:            None
 *******************************************************************/
BOOL USER_USB_CALLBACK_EVENT_HANDLER(USB_EVENT event, void *pdata, WORD size)
{
    switch(event)
    {
        case EVENT_CONFIGURED: 
            USBCBInitEP();
            break;
        case EVENT_SET_DESCRIPTOR:
            USBCBStdSetDscHandler();
            break;
        case EVENT_EP0_REQUEST:
            USBCBCheckOtherReq();
            break;
        case EVENT_SOF:
            USBCB_SOF_Handler();
            break;
        case EVENT_SUSPEND:
            USBCBSuspend();
            break;
        case EVENT_RESUME:
            USBCBWakeFromSuspend();
            break;
        case EVENT_BUS_ERROR:
            USBCBErrorHandler();
            break;
        case EVENT_TRANSFER:
            Nop();
            break;
        default:
            break;
    }      
    return TRUE; 
}

#endif //__MTOUCHCAP_PIC24F_GUI_COMMN_C


