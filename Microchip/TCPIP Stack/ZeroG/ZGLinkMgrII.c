/******************************************************************************

 ZG2100 Driver daemon like task that directs calls to the ZG Library using a 
   selected state machine table.   This daemon is agnostic to how the table is
   built.  The daemon will select it's next state using a runtime next_callback
   or a statically ( in the table ) defined next_callback.
 Module for Microchip TCP/IP Stack

*******************************************************************************
 FileName:		ZGLinkMgrII.c
 Dependencies:	TCP/IP Stack header files
 Processor:		PIC18, PIC24F, PIC24H, dsPIC30F, dsPIC33F, PIC32
 Compiler:		Microchip C32 v1.10b or higher
				Microchip C30 v3.22 or higher
				Microchip C18 v3.34 or higher
 Company:		Microchip Technology, Inc.

 Software License Agreement

 Copyright (C) 2002-2010 Microchip Technology Inc.  All rights reserved.

 Microchip licenses to you the right to use, modify, copy, and distribute:
 (i)  the Software when embedded on a Microchip microcontroller or digital 
      signal controller product ("Device") which is integrated into 
      Licensee's product; or
 (ii) ONLY the Software driver source files ENC28J60.c, ENC28J60.h,
      ENCX24J600.c and ENCX24J600.h ported to a non-Microchip device used in 
	  conjunction with a Microchip ethernet controller for the sole purpose 
	  of interfacing with the ethernet controller.

 You should refer to the license agreement accompanying this Software for 
 additional information regarding your rights and obligations.

 THE SOFTWARE AND DOCUMENTATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY
 KIND, EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY
 OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, TITLE AND
 NON-INFRINGEMENT. IN NO EVENT SHALL MICROCHIP BE LIABLE FOR ANY INCIDENTAL,
 SPECIAL, INDIRECT OR CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST
 OF PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY OR SERVICES, ANY CLAIMS BY
 THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF), ANY CLAIMS
 FOR INDEMNITY OR CONTRIBUTION, OR OTHER SIMILAR COSTS, WHETHER ASSERTED ON
 THE BASIS OF CONTRACT, TORT (INCLUDING NEGLIGENCE), BREACH OF WARRANTY, OR
 OTHERWISE.


 Author				Date		Comment
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 SG					12/12/08
******************************************************************************/

#include "HardwareProfile.h"

#if defined(ZG_CS_TRIS)

#include <string.h> /* for memcpy */

#include "TCPIP Stack/ZGLinkMgrII.h"

#if defined (ZG_CONFIG_LINKMGRII)

#include "TCPIP Stack/ZGWifiMgrII.h"
#include "TCPIP Stack/ZGAdhocMgrII.h"

/* These FSM tables are intended for ROM */
ROM tFSMState g_emptyFSM[2] =
{
    /* kNULL */
    FSM_STATE( kNULL, kNULL, kNULL, kNULL, kNULL, kNULL ),

    /* kSTIdle */
    FSM_STATE( kNULL, kNULL, kNULL, genericIdleNextState, kNULL, kNULL )
};


/* System Globals */
tZGLinkMgrCtx g_linkMgrCtx;

tZGVoidReturn
ZGLinkMgrSetMode( tZGLMNetworkMode mode )
{

  APPCXT.FSM.currentMode =  mode;

  switch ( mode )
  {
     case   kZGLMNetworkModeIdle:
            APPCXT.FSMSelector   =  g_emptyFSM;
            break;

#if !defined (ZG_CONFIG_NO_WIFIMGRII)
     case   kZGLMNetworkModeInfrastructure:
            APPCXT.FSMSelector   = g_mangedFSM;
            break;
#endif

#if !defined (ZG_CONFIG_NO_ADHOCMGRII)
     case   kZGLMNetworkModeAdhoc:
           APPCXT.FSMSelector   = g_adhocFSM;
            break;
#endif /* ADHOC MODE */

      default:
           ZGErrorHandler((ROM FAR char*) "BAD MODE");

  }

   APPCXT.FSM.stateStatus  = kSUCCESS;
   APPCXT.FSM.currentState = kSTIdle;
   APPCXT.bRetryBSSConnect = kZGBoolTrue;
   APPCXT.nJoinRetryState = 0;
   APPCXT.nRetryBSSConnect = 0;
   APPCXT.nAssocRetryState = 0;
   APPCXT.nAuthRetryState = 0;
   APPCXT.nScanRetryState = 0;

}

/* These routines set & get the FSM */
tZGLMNetworkMode
ZGLinkMgrGetMode( tZGVoidInput )
{
    return APPCXT.FSM.currentMode;
}

tZGLMNetworkMode
ZGLinkMgrGetNextMode( tZGVoidInput )
{
    return APPCXT.nextMode;
}

tZGVoidReturn
ZGLinkMgrSetNextMode( tZGLMNetworkMode mode )
{
    APPCXT.nextMode = mode;
}

tZGBool
ZGLinkMgrIsConnected( tZGVoidInput)
{
  return ( APPCXT.bConnected );
}


void
ZGLinkMgrInit(void)
{
   /* File global zeroing should not be necessary per ANSI C, but some emulator/loaders */
   /* seem to leave garbage around, when the variable's values should be zero'd */
   memset(&APPCXT,0, sizeof(tZGLinkMgrCtx));

   /* Setup the initial states */
   ZG_SET_MODE( kZGLMNetworkModeIdle);

   /* Want to come up in managed mode initially (optional preference) */
#if defined (MY_DEFAULT_LINK_MGMT)
   ZG_SETNEXT_MODE( MY_DEFAULT_LINK_MGMT );
#endif
}


void
ZGLinkMgr(void)
{

  tDispatchZGLib        appLibFuncPtr = kNULL;
  tDispatchComplete     appCompleteHandler = kNULL;
  tDispatchRequest      appRequestHandler = kNULL;
  tDispatchNext         appNextStateHandler = APPCXT.FSMSelector[APPCXT.FSM.currentState].next_state_func;
  enum tFSMValidStates  tempNext = kNULL;



 /* This is an optional runtime override to the static pass/fail next states in a FSM table */
 /* The next state is useful when the decission process for a next state is based on random user input */
 /* or there are multiple edges to the next state in the FSM graph */
 if (  appNextStateHandler != kNULL )
 {
     /* If the nextState handler returns null, it does not want to override */
    tempNext =  DISPATCH_NEXT(appNextStateHandler);
 }

  switch ( APPCXT.FSM.stateStatus )
  {

      case kSUCCESS:
          /* Does the next state hander have a runtime overide? of the static pass entry  */
          if ( tempNext != kNULL )
            APPCXT.FSM.currentState = tempNext;
          else
            APPCXT.FSM.currentState = APPCXT.FSMSelector[ APPCXT.FSM.currentState ].next_success;

          break;

      case kFAILURE:
          /* Does the next state hander have a runtime overide? of the static fail entry  */
          if ( tempNext != kNULL )
            APPCXT.FSM.currentState = tempNext;
          else
           /* The pass or fail next states are defined in FSM tables */
           APPCXT.FSM.currentState = APPCXT.FSMSelector[ APPCXT.FSM.currentState ].next_fail;

          break;

      case kRETRY:
          /* call the same state again */
          break;

      case kPENDING:
          /* wait for driver to complete call*/
          return;

      default:

          ZGErrorHandler((ROM FAR char*) "Unknown FSM status");
          break;
   }

   appLibFuncPtr = APPCXT.FSMSelector[APPCXT.FSM.currentState].zg_library_func;

   if ( appLibFuncPtr != kNULL )
   {
     /* iniate the call to the ZeroG library */
     appCompleteHandler = APPCXT.FSMSelector[APPCXT.FSM.currentState].complete_func;
     appRequestHandler = APPCXT.FSMSelector[APPCXT.FSM.currentState].request_func;

     g_linkMgrCtx.FSM.stateStatus = kPENDING;

     /* This call can fail, if another library call has been made or there is no memory for a new call */
     if ( DISPATCH_ZGLIB (appLibFuncPtr, appRequestHandler, appCompleteHandler, kNULL) !=  kZGSuccess )
     {
        g_linkMgrCtx.FSM.stateStatus = kRETRY;
     }
   }
  }  /* end switch */


#endif /* ZG_CONFIG_LINKMGRII */

#endif // #if defined(ZG_CS_TRIS)
