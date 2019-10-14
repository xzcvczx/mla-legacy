/** @file */
/*********************************************************************
 *
 *      Soft Timer Interface
 *
 *********************************************************************
 * FileName:        softTimers.h
 * Dependencies:	
 * 					    
 * Processor:       PIC32MX, PIC24F, PIC24H, PIC18F
 * 					
 * Complier:        MPLAB C32, MPLAB C30, MPLAB C18
 *                  MPLAB IDE
 * Company:         Microchip Technology, Inc.
 *
 * Software License Agreement
 *
 * The software supplied herewith by Microchip Technology Incorporated
 * (the “Company”) for its PIC32MX Microcontroller is intended
 * and supplied to you, the Company’s customer, for use solely and
 * exclusively on Microchip Microcontroller products.
 * The software is owned by the Company and/or its supplier, and is
 * protected under applicable copyright laws. All rights are reserved.
 * Any use in violation of the foregoing restrictions may subject the
 * user to criminal sanctions under applicable laws, as well as to
 * civil liability for the breach of the terms and conditions of this
 * license.
 *
 * THIS SOFTWARE IS PROVIDED IN AN “AS IS” CONDITION. NO WARRANTIES,
 * WHETHER EXPRESS, IMPLIED OR STATUTORY, INCLUDING, BUT NOT LIMITED
 * TO, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
 * PARTICULAR PURPOSE APPLY TO THIS SOFTWARE. THE COMPANY SHALL NOT,
 * IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL OR
 * CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
 *
 *********************************************************************
 * This file provides the project defines and interfaces to the 
 * soft timer functions.  For details regarding the configuration and
 * operation of the soft timers, please see the file "softTimers.c"
 ********************************************************************/
#ifndef SOFT_TIMERS_H
#define SOFT_TIMERS_H

#include "GenericTypeDefs.h"
#include "compiler.h"

// place "SOFT_TIMER_USER_HOOK" in your timer's ISR
#define SOFT_TIMER_DISPATCHER()			SoftTimerDispatcher()
#define SOFT_TIMER_SCHEDULER()  		SoftTimerScheduler()

//#define RESUME							1
#define RUNNING							1
#define RUN								1
#define SUSPENDED						0
#define SUSPEND							0
#define STOP							0
#define STOPPED							0
#define TIMER_INVALID					-1
#define NEW_TASK						S_TIMER

// convenient typedef for soft timer handle
typedef unsigned int S_TIMER;

// convenient typedef for any function pointer returning void, no args passed
typedef void (*callback) (void);

/**
 Structure:      SoftTimerControl
 
 This is the structure for each softTimer that is created.
 key		= the timer's ID
 count 		= the timer's counter
 reload 	= the timer's reload value
 func 		= the (optional) callback function associated with this timer
*/
struct tag_softTimer
{
	unsigned int key;
	unsigned int count;
	unsigned int reload;
	callback func;
};
typedef struct tag_softTimer SoftTimer;

/*..............................................
PUBLIC FUNCTION DECLARATIONS
...............................................*/
void InitSoftTimers();
void SoftTimerWait(unsigned int);
void RemoveSoftTimer(unsigned int);
void RestartSoftTimer(unsigned int);
void ResumeSoftTimer(unsigned int);
void SuspendSoftTimer(unsigned int);
signed int AddSoftTimer(unsigned int, BOOL, void (*callback)(void));
SoftTimer* GetSoftTimer(unsigned int);
void SetSoftTimerCount(unsigned int, unsigned int);
void SetSoftTimerReload(unsigned int, unsigned int);
unsigned int GetSoftTimerCount(unsigned int);
signed int GetSoftTimerStatus(unsigned int);
void ReloadSoftTimerCount(unsigned int);
BOOL SoftTimerExpired(unsigned int);
void SoftTimerScheduler(void);
void SoftTimerDispatcher(void);
unsigned int GetSoftTimerDivisor(void);
void SetSoftTimerDivisor(UINT16);

#endif



