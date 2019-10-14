/*********************************************************************
 *
 *      Soft Timers
 *
 *********************************************************************
 * FileName:        softTimers.c
 * Dependencies:	
 * 					    
 * Processor:       PIC32MX Family, PIC24F/H, dsPIC30/33
 * 					
 * Complier:        MPLAB C32,C30
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
 * Created: Dennis Lehman - 2/27/2008
 * Revisions:
 * 4/1/2010
 * - Changed AddSoftTimer to AddSoftTimer
 * - Changed RemoveSoftTimer to RemoveSoftTimer
 * - Added compile time selectable 8,16 or 32-bit softTimerControl struct
 * - 
 *********************************************************************
 * This file provides the Soft Timer functions.
 *
 * How To Use:
 * 1. Add this file "softTimers.c" to your project.
 * 2  Add #include "softTimers.h" to any any source file that will utilize
 *    a softTimer, typically, main.c and your timer's ISR, SEE next step.
 * 2. Choose a timer source that will provide the timer tick and count down
 *    mechanism required by the soft timers and add the SoftTimer Hook
 *    to your timer's ISR.  Typically as last call in ISR.
 * 3. The default number of soft timers is defined in "softTimers.h"
 *    MAX_SOFT_TIMERS   8
 *    Change as needed.
 *
 ********************************************************************/
#include "GenericTypeDefs.h"
#include "compiler.h"
#include "softTimers.h"
#include "HardwareProfile.h"

/*
You must define the softTimer structure size either in your hardware profile or softTimer.c/h

Examples are:
#define USE_SOFTTIMER_8
or
#define USE_SOFTTIMER_16
or
#define USE_SOFTTIMER_32
*/


#define USE_SOFTTIMER_16

#if defined USE_SOFTTIMER_8
#define MAX_SOFT_TIMERS					8
struct tag_softTimerControl
{
	UINT8 timerTable;
	UINT8 readyTable;
	UINT8 periodDivisor;
	UINT8 periodCount;
	SoftTimer timer[MAX_SOFT_TIMERS];
}userSoftTimers;

#elif defined USE_SOFTTIMER_16
#define MAX_SOFT_TIMERS					16
struct tag_softTimerControl
{
	UINT16 timerTable;
	UINT16 readyTable;
	UINT16 periodDivisor;
	UINT16 periodCount;
	SoftTimer timer[MAX_SOFT_TIMERS];
}userSoftTimers;

#elif defined USE_SOFTTIMER_32
#define MAX_SOFT_TIMERS					32
struct tag_softTimerControl
{
	UINT32 timerTable;
	UINT32 readyTable;
	UINT32 periodDivisor;
	UINT32 periodCount;
	SoftTimer timer[MAX_SOFT_TIMERS];
}userSoftTimers;

#elif defined USE_SOFTTIMER_64
#define MAX_SOFT_TIMERS					64
struct tag_softTimerControl
{
	UINT64 timerTable;
	UINT64 readyTable;
	UINT64 periodDivisor;
	UINT16 periodCount;
	SoftTimer timer[MAX_SOFT_TIMERS];
}userSoftTimers;

#else
#error "You must define USE_SOFTTIMER_8, USE_SOFTIMER_16 or USE_SOFTIMER32 in your hardware profile"
#endif

/******************************************************************************
 * Function:        void InitSoftTimers(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:		Zeros out all locations in the soft timer table
 *
 *****************************************************************************/
void InitSoftTimers()
{
	unsigned int i;

	for (i=0; i < (MAX_SOFT_TIMERS); i++)
	{
		// initialize all count values = 0
		userSoftTimers.timer[i].key = 0;
		userSoftTimers.timer[i].count = 0;
		userSoftTimers.timer[i].reload = 0;
		userSoftTimers.timer[i].func = NULL;
	}
	// clear all entire table entries
	userSoftTimers.timerTable = 0;
	userSoftTimers.readyTable = 0;
	userSoftTimers.periodDivisor = 1;
	userSoftTimers.periodCount = 1;
	
}	


/******************************************************************************
 * Function:        signed int AddSoftTimer(unsigned int count, BOOL enable, void (callback)(void))
 *
 * PreCondition:    None
 *
 * Input:           count - A value to initialize the counter
 *
 * Output:          Index to new timer in the soft timer table
 *					If table full, then returns -1
 *
 * Side Effects:    None
 *
 * Overview:		Adds a new soft timer to the soft timer table and initalizes
 *					the new counter with the value supplied by the caller.  If
 *					table is full, function returns -1
 *
 *****************************************************************************/
signed int AddSoftTimer(unsigned int count, BOOL enable, void (*callback)(void))
{
	unsigned int i;
		
	// scan through the table and find first available location
	for (i = 0; i < (MAX_SOFT_TIMERS); i++)
	{
		if(!(userSoftTimers.timerTable & (1 << i)))
		{
			// assign a key to the timer and store in its structure
			userSoftTimers.timer[i].key = i;
			
			// initialize the count value
			userSoftTimers.timer[i].count = count;
			
			// initialize the reload count value (assume it is same as count)
			userSoftTimers.timer[i].reload = count;
			
			// initialize the callback function
			userSoftTimers.timer[i].func = callback;
			
			// next add the new timer into the table entry
			userSoftTimers.timerTable |= (1 << i);
			
			// finally, enable/disable timer to start as directed
			userSoftTimers.readyTable += (enable << i);
			
			// return the address of timer structure in the control block
			return(i);
		}
	}
	return(-1);		
}
/******************************************************************************
 * Function:        void RemoveSoftTimer(unsigned int* timer)
 *
 * PreCondition:    None
 *
 * Input:           timer* - Pointer to timer to kill
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:		Deletes a timer entry from the soft timer table effectively
 *					disabling it.
 *
 *****************************************************************************/
void RemoveSoftTimer(unsigned int key)
{
			
	// delete the table entry
	userSoftTimers.timerTable &= (~(1<<key));
	userSoftTimers.readyTable &= (~(1<<key));
		
}	
/******************************************************************************
 * Function:        void SoftTimerWait(unsigned int count)
 *
 * PreCondition:    None
 *
 * Input:           count - Value to initialize the timer
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:		BLOCKING - Creates a temporary soft timer, initializes the
 *					timer count value, then waits until the count is = 0 and
 *					returns to the caller.
 *
 *****************************************************************************/
void SoftTimerWait(unsigned int count)
{
	// delare a local pointer
	unsigned int localTimer;
	
	// create a temporary timer for our use
	localTimer = AddSoftTimer(count, RUN,  NULL);
	
	//  (BLOCKING) sit and wait
	while(GetSoftTimerCount(localTimer));
		
	// destroy it when we are done
	RemoveSoftTimer(localTimer);
	
		
}
/******************************************************************************
 * Function:        H_TIMER GetSoftTimer(unsigned int key)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          Returns current timer value
 *
 * Side Effects:    None
 *
 * Overview:		User passes address of desired soft timer; function returns
 *					current timer value;
 *
 *****************************************************************************/
SoftTimer* GetSoftTimer(unsigned int key)
{
	if(userSoftTimers.timerTable & (1<<key))
		return(&userSoftTimers.timer[key]);
	else
		return(NULL);
}
		
/******************************************************************************
 * Function:        unsigned int GetSoftTimerCount(unsigned int sTimer)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          Returns current timer value
 *
 * Side Effects:    None
 *
 * Overview:		User passes address of desired soft timer; function returns
 *					current timer value;
 *
 *****************************************************************************/
unsigned int GetSoftTimerCount(unsigned int key)
{
	return(userSoftTimers.timer[key].count);
}

/******************************************************************************
 * Function:        SetSoftTimerDivisor(unsigned int)
 *
 * PreCondition:    None
 *
 * Input:           System Tick divisor
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:		Sets the system tick divisor.  Used when switching between
 *					2 or more different system clocks.
 *
 *****************************************************************************/
void SetSoftTimerDivisor(UINT16 divisor)
{
	// MAKE SURE DIVISOR > 1
	if(divisor == 0)
		divisor = 1;
		
	userSoftTimers.periodDivisor = divisor;
	userSoftTimers.periodCount = divisor;
}

/******************************************************************************
 * Function:        unsigned int GetSoftTimerDivisor(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          Returns current soft timer Period Divisor
 *
 * Side Effects:    None
 *
 * Overview:
 *
 *****************************************************************************/
unsigned int GetSoftTimerDivisor(void)
{
	return(userSoftTimers.periodDivisor);
}

/******************************************************************************
 * Function:        BOOL SoftTimerExpired(unsigned int sTimer)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          Returns TRUE if sTimer count = 0; else returns FALSE
 *
 * Side Effects:    None
 *
 * Overview:		User passes address of desired soft timer; function returns
 *					TRUE or FALSE;
 *
 *****************************************************************************/
BOOL SoftTimerExpired(unsigned int key)
{
	//CRITICAL;
	if(userSoftTimers.timer[key].count ==0)
	{
		//SAFE;
		return(TRUE);
	}	
	else
	{
	//	SAFE;
		return(FALSE);
	}	
}

/******************************************************************************
 * Function:        void setSoftTimerCount(unsigned int* sTimer, unsigned int count)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          Returns current timer value
 *
 * Side Effects:    None
 *
 * Overview:		User passes address of desired soft timer; function returns
 *					current timer value;
 *
 *****************************************************************************/
void SetSoftTimerCount(unsigned int key, unsigned int count)
{
		userSoftTimers.timer[key].count = count;		
}

/******************************************************************************
 * Function:        void setSoftTimerReload(unsigned int* sTimer, unsigned int count)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          Returns current timer value
 *
 * Side Effects:    None
 *
 * Overview:		User passes address of desired soft timer; function returns
 *					current timer value;
 *
 *****************************************************************************/
void SetSoftTimerReload(unsigned int key, unsigned int reload)
{
		userSoftTimers.timer[key].reload = reload;		
}

/******************************************************************************
 * Function:        void reloadSoftTimer(unsigned int sTimer)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          Returns current timer value
 *
 * Side Effects:    None
 *
 * Overview:		User passes address of desired soft timer; function returns
 *					current timer value;
 *
 *****************************************************************************/
void ReloadSoftTimerCount(unsigned int key)
{
	userSoftTimers.timer[key].count = userSoftTimers.timer[key].reload;		
}

/******************************************************************************
 * Function:        void ResumeSoftTimer(unsigned int sTimer)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:		Use this fuction to resume a suspended timer from the current
 *					count value.
 *
 *****************************************************************************/
void ResumeSoftTimer(unsigned int key)
{
	// show that this timer is ready again
	userSoftTimers.readyTable |= (1<<key);
}

/******************************************************************************
 * Function:        void RestartSoftTimer(unsigned int sTimer)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:		Use this function to start a suspended timer.
 *					Count is loaded with reload value before starting.
 *
 *****************************************************************************/
void RestartSoftTimer(unsigned int key)
{
	// reload the timer so it starts from know value
	userSoftTimers.timer[key].count = userSoftTimers.timer[key].reload;
	
	// show that this timer is ready again
	userSoftTimers.readyTable |= (1<<key);
}

/******************************************************************************
 * Function:        void SuspendSoftTimer(unsigned int sTimer)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          Returns current timer value
 *
 * Side Effects:    None
 *
 * Overview:		User passes address of desired soft timer; function returns
 *					current timer value;
 *
 *****************************************************************************/
void SuspendSoftTimer(unsigned int key)
{
	// show that this timer is not ready
	userSoftTimers.readyTable &= ~(1<<key);				
}

/******************************************************************************
 * Function:        signed int GetSoftTimerStatus(unsigned int sTimer)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          Returns TRUE if sTimer is running(not suspended);
 *					else returns FALSE (suspended);
 *					else (-1) if invalid timer selected
 *
 * Side Effects:    None
 *
 * Overview:		User passes desired soft timer; function returns
 *					TRUE or FALSE or -1;
 *
 *****************************************************************************/
signed int GetSoftTimerStatus(unsigned int key)
{
	if((userSoftTimers.timerTable & (1 << key)) == 0)
		return(-1);
		
	if((userSoftTimers.readyTable & (1 << key)) == RUNNING)
		return(TRUE);
	else
		return(FALSE);
}

/******************************************************************************
 * Function:        void _softTimerHander(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:		This is the ISR for the soft timers.
 *
 *****************************************************************************/
void SoftTimerScheduler(void)
{
    unsigned int key;
   
    unsigned int readyList = userSoftTimers.readyTable;
    
    for (key=0; key < (MAX_SOFT_TIMERS); key++)
	{	
		// If no more soft timers running in the list, exit early
		if(readyList == 0)	
			break;
		
		// else, is present soft timer running?
		if(readyList & 1)
		{
			// If the soft timer's count is already zero, don't decrement it
			if(userSoftTimers.timer[key].count != 0)
			{
				// else, decrement the soft timer's count
				userSoftTimers.timer[key].count--;

			}
		}
		readyList >>= 1;
	}// end for-next
}

/******************************************************************************
 * Function:        void SoftTimerDispatcher(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:		This is the handler that performs the soft timer scheduling
 *					and executes callback functions.
 *
 *****************************************************************************/
void SoftTimerDispatcher(void)
{
    unsigned int key;
    unsigned int readyList = userSoftTimers.readyTable;
    
    if(--userSoftTimers.periodCount)
    	return;
    else
    	userSoftTimers.periodCount = userSoftTimers.periodDivisor;
    
    for (key=0; key < (MAX_SOFT_TIMERS); key++)
	{	
		// If no more soft timers running in the list, exit early
		if(readyList == 0)	
			break;
		
		// else, is present soft timer running?
		if(readyList & 1)
		{
			// If the current soft timer's count is already zero, don't decrement it
			if(userSoftTimers.timer[key].count != 0)
			{
				// else, decrement the soft timer's count
				userSoftTimers.timer[key].count--;
				
				// Finally, if the soft timer count is zero and the user is requesting a callback, then call it
				if((userSoftTimers.timer[key].count == 0) && (userSoftTimers.timer[key].func != NULL))
				{
					userSoftTimers.timer[key].func();
					ReloadSoftTimerCount(key);
				}	
			}
		}
		readyList >>= 1;
	}// end for-next
}

