/******************************************************************************/
/*                                                                            */
/* File:                                                                      */
/*      IperfApp.c                                                            */
/*                                                                            */
/* Description:                                                               */
/*      C file implenting the Iperf application.                              */
/*                                                                            */
/* DO NOT DELETE THIS LEGAL NOTICE:											  */
/*  2008 © ZeroG Wireless, Inc.  All Rights Reserved.                         */
/*  Confidential and proprietary software of ZeroG Wireless, Inc.             */
/*  Do no copy, forward or distribute.                                        */
/*                                                                            */
/******************************************************************************/
#include <string.h> /* for memcpy */

#include "TCPIP Stack/TCPIP.h"

#if defined (ZG_CONFIG_CONSOLE) && defined (STACK_USE_IPERF)

#include "TCPIP Stack/ZGDriverTypes.h" // HTON() NTOH(
#include "IperfApp.h"
#include "TCPIP Stack/ZGConsole.h"
#include "TCPIP Stack/ZGModuleAccessSys.h"

/*****************************************************************************/
/* Constants used internally by code in this file.                           */
/*****************************************************************************/	


#define LOCAL_PORT_START_NUMBER     (1024u)


//#define kIperfRxTimeOut 				1000    // 1 second.

#define kIperfUDPFinRetransmitCount		10u		// iperf retransmits 10 times the last UDP packet,
#define kIperfUDPFinRetransmitPeriod    10      // at 10ms apart.
#define kIperfTimingErrorMargin 		2		// Account for msec tick uncertainty.

enum {
    kStateStandby=1,

    kStateRxStart,
    kStateUdpRx,
    kStateUdpRxDrain,
    kStateUdpRxDone,
    kStateTcpRxListen,
    kStateTcpRx,
    kStateTcpRxDone,
    kStateRxDone,

    kStateTxStart,
    kStateTxArpResolve,

    kStateTcpTxOpen,
    kStateTcpTxConnect,
    kStateTcpTxSegment,
    kStateTcpTxDone,

    kStateUdpTxOpen,
    kStateUdpTxDatagram,
    kStateUdpTxDone

};

/*****************************************************************************/
/* Data types used internally by code in this file.                          */
/*****************************************************************************/

typedef enum {
    kIperfProtoUDP = 1,
    kIperfProtoTCP
} tIperfProto;

typedef struct
{
    tZGU32		mInterval;		// -i
    tZGU32		mAmount;		// -n
    tZGU32		mDuration;		// -t. Default = 10*TICK_SECOND msec
    tZGU32		mDatagramSize;	// -l
    tZGU16		mMSS;			// -M
    tZGBool		mServerMode;    // -s or -c
    tZGBool   	mBufLenSet;     // -l
    tIperfProto	mProtocol;		// -b or -u
    tZGU16		mServerPort;	// -p

    tZGU32		mTxRate;		// -b or
                                // -x: NONE-STANDARD IPERF OPTION. Max Tx bps rate for TCP.

    double		totalLen; // mTotalLen
    long 		pktId; 		// datagramID
    long		lastPktId; // lastDatagramID
    tZGU32		errorCount;
    tZGU32		outofOrder;

    TCP_SOCKET tcpServerSock;
    TCP_SOCKET tcpClientSock;

    UDP_SOCKET udpSock;

    SOCKET_INFO  remoteSide;
    tZGU16		 localPort;	

    //struct sockaddr_in remoteAddr;
   // int 		remoteAddrlen;
    //	tZGSocketAddr remoteAddr;

    // Calculated packet period, in msec, to reflect the target bit rate.
    tZGU32		mPktPeriod;
    
    tZGU32		startTime;
    tZGU32		stopTime;
    tZGU32		nextTxTime;
    //tZGU32		remoteStartTime;
    //tZGU32		remoteStopTime;
    
    tZGU8		nAttempts;
    tZGU32		pktCount;
    tZGBool		stopRequested;

    
    tZGU32		lastCheckPktCount;  // Check if pktCount changes within mInterval; or kIperfRxTimeOut.
    long		lastCheckPktId;
    tZGU32		lastCheckErrorCount;
    tZGU32		lastCheckTotalLen;
    tZGU32		lastCheckTime;
    tZGU8 		statusReported;
    
//	long		mPendingACK;		// number of outstanding TCP ACKs
//	tZGU8		mRetransmit;
    
    tZGU8 		state;

    tZGU32      timer;
    tZGU16      remainingTxData;
    tZGU16      availUDPTxSpace;

    tZGBool     isLastTransmit;


} tAppState;

typedef enum
{
    kIntervalReport,
    kSubtotalReport,
    kSessionReport
} tIperfReport;

// 
// Data structure used by iperf protocol
//

#define HEADER_VERSION1 0x80000000

typedef struct
{
    long id;
    tZGU32 tv_sec;
    tZGU32 tv_usec;
} tIperfPktInfo; 	// In the original Iperf, this is the "UDP_datagram" structure.

// tUDP_datagram
typedef struct 
{
    tZGU32 flags;
    tZGU32 total_len1;
    tZGU32 total_len2;
    tZGU32 stop_sec;
    tZGU32 stop_usec;
    tZGU32 error_cnt;
    tZGU32 outorder_cnt;
    tZGU32 datagrams;
    tZGU32 jitter1;
    tZGU32 jitter2;	
} tServerHdr;

typedef struct
{
    tZGU32 flags;
    tZGU32 numThreads;
    tZGU32 mPort;
    tZGU32 bufferlen;
    tZGU32 mWinBand;
    tZGU32 mAmount;	
} tClientHdr;

/*****************************************************************************/
/* Global variables used internally by code in this file.                    */
/*****************************************************************************/

#define MAX_BUFFER   (sizeof(tIperfPktInfo) + sizeof(tServerHdr))
tZGU8  g_bfr[ MAX_BUFFER ];


static tAppState gAppState;

#define APPCTX (gAppState)

//
// Helper utilities
//

/* On the Microchip v4.51 stack the MSS is a compile time setting and not within the control */
/* of the application to change on a per socket basis, nor is it even a runtime configurable */
/* setting.  Search tcp.c for TCP_MAX_SEG_SIZE.                                              */
/* However, TCP_MAX_SEG_SIZE is not a public macro.                                          */
/* RFC 879 specifies the default MSS to be 536. Hence we assume this number here.            */
/* (ZG_IPERF_TCP_MSS == TCP_MAX_SEG_SIZE) is desirable but not required.                     */

#define ZG_IPERF_TCP_MSS  536

static void
ResetIperfCounters(void)
{
    // APPCTX.mAmount = 0;
    // APPCTX.mDuration = 10*1000; // -t: default 10 sec
    // APPCTX.mInterval = 1000; 	// -i: default 1 sec
    APPCTX.mMSS = ZG_IPERF_TCP_MSS; 		
    APPCTX.mDatagramSize = 1470; // -l: default 1470 bytes. UDP datagram size.
    APPCTX.totalLen = 0;
    APPCTX.pktId = 0;
    APPCTX.lastPktId = 0;
    APPCTX.errorCount = 0;
    APPCTX.outofOrder = 0;
    APPCTX.pktCount = 0;
    APPCTX.statusReported = 0;
    APPCTX.startTime = 0;
    APPCTX.stopTime = 0;

    APPCTX.lastCheckPktCount = 0;
    APPCTX.lastCheckPktId = 0;
    APPCTX.lastCheckErrorCount = 0;
    APPCTX.lastCheckTotalLen = 0;
    APPCTX.lastCheckTime = 0;

    APPCTX.isLastTransmit = kZGBoolFalse;
    
//	APPCTX.mPendingACK = 0;
//	APPCTX.mRetransmit = 0;

}

static tZGVoidReturn
ascii_to_u32s(tZGS8 *ptr, tZGU32 *values, tZGU8 count)
{
    tZGU8 i;
    tZGU32 tmp;
    
    // Convert "123.456_78_90k", with count set to 4,  to
    // unsigned 32-bit numbers 123, 456, 78 and 90000, and
    // store them in the values array.

    for (i = 0; i < count; i++)
    {
        tmp = 0;
        
        while ( (*ptr > (tZGS8)'9') || (*ptr < (tZGS8)'0') )
        {
            if ( (*ptr == (tZGS8)' ') || (*ptr == (tZGS8)0) ) return; // terminates at blank or NULL.
            
            ptr++;
        } 
        
        while ( (*ptr <= (tZGS8)'9') && (*ptr >= (tZGS8)'0') )
        {
            tmp = tmp*10 + *ptr - '0';
            ptr++;
        }
        if ( (*ptr == (tZGS8)'k') || (*ptr == (tZGS8)'K') )
        {
            tmp = tmp * 1000;
            ptr++;
        }
        else if ( (*ptr == (tZGS8)'m') || (*ptr == (tZGS8)'M') )
        {
            tmp = tmp * 1000 * 1000;
            ptr++;
        }		
        
        values[i] = tmp;
    }
}

//
// Report bandwith, jitter, and packet loss stastistics.
// Used by in both server and client modes.
//
// Todo: implement the jitter report.
//

static void 
ReportBW_Jitter_Loss(tIperfReport reportType)
{
    tZGU32 nAttempted;
    tZGU32 nDropped;
    double kbps;
    tZGU32 currentTime;
    tZGU32 sec;
	tZGU32 msec;
    
    currentTime = ZGSYS_MODULE_GET_MSEC_TICK_COUNT();

    switch ( reportType )
    {	
        case kIntervalReport:

            nDropped = APPCTX.errorCount - APPCTX.lastCheckErrorCount;
        
            // bits-per-msec == Kbps

            sec = (currentTime- APPCTX.lastCheckTime)/TICK_SECOND;
			msec = ((double) (currentTime - APPCTX.lastCheckTime)) / (((double)(TICK_SECOND))/1000);

            if ( APPCTX.state == (tZGU8)kStateUdpTxDone )
            {
               nAttempted = (APPCTX.lastPktId - APPCTX.lastCheckPktId) + nDropped;
            }
            else
            {
                nAttempted = APPCTX.pktId - APPCTX.lastCheckPktId;
            }

			if ( msec == 0u )
            {
                kbps = 0;
            }
            else
            {
				kbps = ((APPCTX.totalLen - APPCTX.lastCheckTotalLen)*((double) 8)) / msec;
            }
            
            sec = (APPCTX.lastCheckTime - APPCTX.startTime)/TICK_SECOND;

            sprintf( (char *) g_ConsoleContext.txBuf,"    - [%2lu- %2lu sec] %3lu/ %3lu (%2lu%%)    %4lu Kbps\n\r",
                      sec, sec+( (tZGU32) (APPCTX.mInterval/TICK_SECOND) ),
                      nDropped,
                      nAttempted,
                      nDropped*100/nAttempted,
                      (tZGU32) (kbps + ((double) 0.5)));

            ZG_PUTSUART( (char *) g_ConsoleContext.txBuf ); 
         
            break;


        case kSubtotalReport:
            // intentional fall-through
        case kSessionReport:
 
           nDropped = APPCTX.errorCount;

           if (APPCTX.state == (tZGU8)kStateUdpTxDone)  
            {
               nAttempted = APPCTX.lastPktId + nDropped;
            }
            else
            {
                nAttempted = APPCTX.lastPktId;
            }

			msec = ((double) (APPCTX.stopTime - APPCTX.startTime)) / (((double)(TICK_SECOND))/1000);

			if ( msec == 0u )
            {
                kbps = 0;
            }
            else
            {
   				kbps = (APPCTX.totalLen * ((double) 8)) / msec;
            }
            
            sprintf( (char *) g_ConsoleContext.txBuf, "    - [0.0- %lu.%lu sec] %3lu/ %3lu (%2lu%%)    %4lu Kbps\n\r",
                             (tZGU32) (msec/1000),
                             (tZGU32) ((msec%1000)/100),
                             nDropped,
                             nAttempted,
                             (nAttempted == 0u) ? 0 : (nDropped*100/nAttempted),
                             (tZGU32) (kbps + ((double) 0.5)));
                        
            ZG_PUTSUART( (char *) g_ConsoleContext.txBuf ); 

            break;
    }
    
    if ( reportType == 	kSessionReport )
    {
      ZG_PUTRSUART("    Session completed ...\n\r");
    }
        
    APPCTX.lastCheckPktId = APPCTX.pktId;
    APPCTX.lastCheckErrorCount = APPCTX.errorCount;
    APPCTX.lastCheckPktCount = APPCTX.pktCount;
    APPCTX.lastCheckTime = currentTime;
    APPCTX.lastCheckTotalLen = APPCTX.totalLen;
}

void IperfAppInit(void)
{

    memset( &APPCTX, 0, sizeof(tAppState) );

    APPCTX.state = kStateStandby;
    APPCTX.stopRequested = kZGBoolFalse;	

    APPCTX.tcpClientSock = INVALID_SOCKET;
    APPCTX.tcpServerSock = INVALID_SOCKET;
    APPCTX.udpSock = INVALID_SOCKET;

}

static tZGBool IperfAppKillRequested(void)
{
    tZGU8 argc;
    tZGS8 **argv;

    // Did user ask to "kill iperf"?
    
    
    if ( ZGConsoleIsConsoleMsgReceived() == kZGBoolFalse ) return kZGBoolFalse;
    
    argv = ZGConsoleGetCmdLineTokens(&argc);

    if (argc == 2u)
    {
        if ((memcmppgm2ram(argv[0], "kill",  4) == 0) &&
           (memcmppgm2ram(argv[1],  "iperf", 5) == 0))
        {
           //ZGCliServicePerformed();
           ZGConsoleReleaseConsoleMsg();
            
           APPCTX.stopRequested = kZGBoolTrue;
           return kZGBoolTrue;
        }    
    }
    putrsUART("Invalid commmand sequence\r\n");    
    ZGConsoleReleaseConsoleMsg();
    return kZGBoolFalse;

}


static void StateMachineStandby(void)
{
    //tZGCliArguments *args;
    tZGU8 argc;
    tZGS8 **argv;
    tZGU8 i;
    tZGS8 *ptr;
    tZGU32 values[4];
    tZGU16 payloadSize;
    float pktRate;
    
    //if ( ZGCliServiceRequested() == kZGBoolFalse ) return;
    //if ( !(args = ZGCliGetArguments()) ) return;
    
    if ( ZGConsoleIsConsoleMsgReceived() == kZGBoolFalse ) return;
    argv = ZGConsoleGetCmdLineTokens(&argc);	
    
    if ( (argc == 2u)                             &&
         (memcmppgm2ram(argv[0], "kill", 4) == 0) && 
         (memcmppgm2ram(argv[1], "iperf", 5) == 0) )
    {    
       ZG_PUTRSUART("Iperf not started for the kill...\n\r");
       ZGConsoleReleaseConsoleMsg();
       return;
    }

    if ((memcmppgm2ram(argv[0], "kill", 4) == 0) && (argc == 1u))
    {
        ZG_PUTRSUART("'kill iperf' is the only valid kill command\r\n");
        ZGConsoleReleaseConsoleMsg();
    }    


    
    if ( (argc == 2u)                             &&
         (memcmppgm2ram(argv[0], "kill", 4) == 0) && 
         (memcmppgm2ram(argv[1], "iperf", 5) != 0) )
    {
       ZG_PUTRSUART("Invalid command sequence...\n\r");
       ZGConsoleReleaseConsoleMsg();
       return;
    }    
    
    
    if ( memcmppgm2ram(argv[0], "iperf", 5) ) return;	

    // OK, we will handle the "iperf" command.

    APPCTX.mServerMode = kZGBoolFalse;
    APPCTX.mProtocol = kIperfProtoTCP;   			// default is TCP mode.
    APPCTX.stopRequested = kZGBoolFalse;	

    APPCTX.mServerPort = IPERF_APP_SERVER_PORT;		// -p. default: server port 5001



    APPCTX.mTxRate = ((tZGU32) 500)*((tZGU32) 1000);		// -b or -x. Target tx rate.
    // KS: default tx rate for iperf is actually 1Mbps. Here we set it to 500Kbps instead.

    APPCTX.mAmount = 0;			// -n: default 0.
    APPCTX.mDuration = ((tZGU32) 10)*((tZGU32) TICK_SECOND); // -t: default 10 sec.
    APPCTX.mInterval =  TICK_SECOND; 	// -i: default 1 sec.
    
    // Initialize statistics

    ResetIperfCounters();
        
    for (i = 1; i < argc; i++)
    {
        if ((memcmppgm2ram(argv[i], "-s", 2) == 0) ||
            (memcmppgm2ram(argv[i], "--server", 5) == 0) )
        {
            // Function as an iperf server.
            
            APPCTX.mServerMode = kZGBoolTrue;
        }
        else if ((memcmppgm2ram(argv[i], "-u", 2) == 0) ||
                 (memcmppgm2ram(argv[i], "--udp", 5) == 0) )
        {
            // iperf UDP mode.
            
            APPCTX.mProtocol = kIperfProtoUDP;
        }
        else if ((memcmppgm2ram(argv[i], "-b", 2) == 0) ||
                 (memcmppgm2ram(argv[i], "--bandwidth", 5) == 0) )
        {
            // iperf UDP mode.
            
            APPCTX.mProtocol = kIperfProtoUDP;
        
            // Next argument should be the target rate, in bps.
            
            i++;
            ptr = argv[i];

            ascii_to_u32s(ptr, values, 1);
            
            APPCTX.mTxRate = values[0];				
        }
        else if ((memcmppgm2ram(argv[i], "-x", 2) == 0) ||
                 (memcmppgm2ram(argv[i], "--xmitrate", 5) == 0) )
        {
            // NON-STANDARD IPERF OPTION. Set the max TCP tx rate.		
            // Next argument should be the target rate, in bps.
            
            i++;
            ptr = argv[i];

            ascii_to_u32s(ptr, values, 1);
            
            APPCTX.mTxRate = values[0];				
        }
        else if ((memcmppgm2ram(argv[i], "-c", 2) == 0) || 
                 (memcmppgm2ram(argv[i], "--client", 5) == 0) )
        {
            // Function as an iperf client.
            
            APPCTX.mServerMode = kZGBoolFalse;
        
            // Next argument should be the server IP, such as "192.168.1.100".
            
            i++;
            ptr = argv[i];

            ascii_to_u32s(ptr, values, 4);

            APPCTX.remoteSide.remote.IPAddr.v[0] = values[0];
            APPCTX.remoteSide.remote.IPAddr.v[1] = values[1];
            APPCTX.remoteSide.remote.IPAddr.v[2] = values[2];
            APPCTX.remoteSide.remote.IPAddr.v[3] = values[3];
            
        }
        else if ((memcmppgm2ram(argv[i], "-t", 2) == 0) || 
                 (memcmppgm2ram(argv[i], "--time", 5) == 0) )
        {
            // Next argument should be the (client tx) duration, in seconds.
            
            i++;
            ptr = argv[i];

            ascii_to_u32s(ptr, values, 1);
            
            APPCTX.mDuration = values[0]*TICK_SECOND;
            APPCTX.mAmount = 0;
        }
        else if ((memcmppgm2ram(argv[i], "-n", 2) == 0) ||
                 (memcmppgm2ram(argv[i], "--num", 5) == 0) )
        {
            // Next argument should be the (client tx) size, in bytes.
            
            i++;
            ptr = argv[i];

            ascii_to_u32s(ptr, values, 1);
            
            APPCTX.mAmount = values[0];
            APPCTX.mDuration = 0;
        }	

    /* On the Microchip v4.51 stack the MSS is a compile time setting and not within the control */
    /* of the application to change on a per socket basis, nor is it even a runtime configurable */
    /* setting.  Search tcp.c for TCP_MAX_SEG_SIZE  */ 
   
    //	else if ((memcmppgm2ram(argv[i], "-M", 2) == 0) ||
    //			 (memcmppgm2ram(argv[i], "--mss", 5) == 0) )
    //	{
    //		// Next argument should be the (client tcp tx) MSS size, in bytes.
    //		
    //		i++;
    //		ptr = argv[i];
    //
    //		ascii_to_u32s(ptr, values, 1);
    //		
    //		APPCTX.mMSS = values[0];
    //	}	
    
        else if ((memcmppgm2ram(argv[i], "-i", 2) == 0) ||
                 (memcmppgm2ram(argv[i], "--interval", 5) == 0) )
        {
            // Next argument should be the report interval, in seconds.
            
            i++;
            ptr = argv[i];

            ascii_to_u32s(ptr, values, 1);
            
            APPCTX.mInterval = values[0]*TICK_SECOND; // Convert to msec
        }
        else if ((memcmppgm2ram(argv[i], "-l", 2) == 0) ||
                 (memcmppgm2ram(argv[i], "--len", 5) == 0) )
        {
            // Next argument should be the buffer length, in bytes. 
            // This is used as the UDP datagram size.
            
            i++;
            ptr = argv[i];

            ascii_to_u32s(ptr, values, 1);
            
            if ( values[0] <  MAX_BUFFER  )
            {
               sprintf( (char *) g_ConsoleContext.txBuf,"The minimum datagram size is %d\n\r", MAX_BUFFER);     
               ZG_PUTSUART( (char *) g_ConsoleContext.txBuf);

               ZGConsoleReleaseConsoleMsg();
               return;
            }

            APPCTX.mDatagramSize = values[0];
        }				
    }

    //ZGCliServicePerformed();
    ZGConsoleReleaseConsoleMsg();

    switch (APPCTX.mServerMode)
    {
        case 0:
            // iperf client
            
            payloadSize = 	(APPCTX.mProtocol == kIperfProtoUDP) ? 
                            APPCTX.mDatagramSize : APPCTX.mMSS;

            pktRate =  (float) (APPCTX.mTxRate / 8) / (float) payloadSize;
            APPCTX.mPktPeriod =  (tZGU32) ( (float) TICK_SECOND / pktRate );
            
            APPCTX.state = kStateTxStart;
            break;
        
        case 1:
            // iperf server

            ZG_PUTRSUART("---------------------------------------------------------\n\r");


            sprintf((char *) g_ConsoleContext.txBuf,
#if defined( __18CXX)
                    (ROM FAR char *) "Server listening on %HS port %u\n\r",
#else
                    "Server listening on %s port %u\n\r",
#endif
                        ( (APPCTX.mProtocol == kIperfProtoUDP) ?
                          "UDP" : "TCP" ),
                          APPCTX.mServerPort);

            ZG_PUTSUART( (char*) g_ConsoleContext.txBuf); 

            APPCTX.state = kStateRxStart;
            
            break;
    }
}

static void
StateMachineRxStart(void)
{
  if ( !APPCTX.mServerMode )
  {
     ZG_PUTRSUART("Unsupported Configuration\n\r");
     APPCTX.state = kStateStandby;
     return;
  }
                    

 switch ( APPCTX.mProtocol ) 
 {
      case kIperfProtoTCP:	// TCP	


            /* TCP Server sockets are allocated for entire runtime duration, a call to disconnect does not free them */
            /* therefore a subsequent N+1 open will fail */
            if ( (APPCTX.tcpServerSock == INVALID_SOCKET) && 
                 (APPCTX.tcpServerSock = TCPOpen(0, TCP_OPEN_SERVER,  APPCTX.mServerPort, TCP_PURPOSE_GENERIC_TCP_SERVER)) == INVALID_SOCKET )
            {
               /* error case */
               ZG_PUTRSUART("Create TCP socket failed\n\r");
               APPCTX.state = kStateStandby;
               return;
            }

            TCPAdjustFIFOSize(APPCTX.tcpServerSock, 1, 0,TCP_ADJUST_PRESERVE_RX | TCP_ADJUST_GIVE_REST_TO_RX);
    
            APPCTX.state = kStateTcpRxListen;
            break;
                
      case kIperfProtoUDP:	// UDP

           if ( (APPCTX.udpSock = UDPOpen(APPCTX.mServerPort, NULL, APPCTX.mServerPort)) == INVALID_UDP_SOCKET )
           {
               /* error case */
               ZG_PUTRSUART("Create UDP socket failed\n\r");
               APPCTX.state = kStateStandby;
               return;
           }

           APPCTX.state = kStateUdpRx;
        break;

      default:
           ZG_PUTRSUART("Protocol error\n\r");
           APPCTX.state = kStateStandby;
           return;
  }
    
}


static void 
StateMachineTcpListen(void)
{

   if ( IperfAppKillRequested() == kZGBoolTrue )
   {
        APPCTX.state = kStateRxDone;
        return;
   }		

   if( TCPIsConnected(APPCTX.tcpServerSock) )
   {
      SOCKET_INFO* ptrSocketInfo = TCPGetRemoteInfo( APPCTX.tcpServerSock );
      memcpy ( (void *) &APPCTX.remoteSide, (void *) ptrSocketInfo, sizeof ( SOCKET_INFO) ); 
      APPCTX.state = kStateTcpRx; 

      /* clear the stack's reset flag */
      TCPWasReset(APPCTX.tcpServerSock);
   }
}


static void 
StateMachineTcpRx(void)
{
    tZGS16 length;

    if( (length = TCPIsGetReady(APPCTX.tcpServerSock)) == 0 )
    {

      if ( TCPWasReset(APPCTX.tcpServerSock)  )
      {
          APPCTX.stopTime = ZGSYS_MODULE_GET_MSEC_TICK_COUNT();
          APPCTX.state = kStateTcpRxDone;
          return;
      }

    }
    else
    {  
       if ( APPCTX.pktId == 0)
       {
          // This is the first rx pkt.
          ZG_PUTRSUART("\n\r    Session started ...\n\r");

          APPCTX.startTime = ZGSYS_MODULE_GET_MSEC_TICK_COUNT();
          APPCTX.lastCheckTime = 	APPCTX.startTime;
                
          APPCTX.lastCheckPktId = APPCTX.pktId;
            
          sprintf((char *) g_ConsoleContext.txBuf, "    - Local  %u.%u.%u.%u port %u connected with \n\r",
                   AppConfig.MyIPAddr.v[0],
                   AppConfig.MyIPAddr.v[1],
                   AppConfig.MyIPAddr.v[2],
                   AppConfig.MyIPAddr.v[3],
                   APPCTX.mServerPort);

          ZG_PUTSUART( (char *) g_ConsoleContext.txBuf ); 
        
          sprintf( (char *) g_ConsoleContext.txBuf,"    - Remote %u.%u.%u.%u port %u\n\r",
                   APPCTX.remoteSide.remote.IPAddr.v[0],
                   APPCTX.remoteSide.remote.IPAddr.v[1],
                   APPCTX.remoteSide.remote.IPAddr.v[2],
                   APPCTX.remoteSide.remote.IPAddr.v[3],
                   APPCTX.remoteSide.remotePort.Val );
    
          ZG_PUTSUART( (char *) g_ConsoleContext.txBuf ); 

       }

       APPCTX.pktId++;
       APPCTX.pktCount++;
       APPCTX.lastPktId = APPCTX.pktId;
       APPCTX.totalLen += length;

       /* read the remaining datagram payload */
       /* a UdpDiscard would be disingenuous, because it would not reflect the bandwidth at L7 */
       while ( length > 0 )
       {
          tZGS16 chunk;

          if ( length <  (tZGS16)MAX_BUFFER )
            chunk = length;
          else
            chunk = MAX_BUFFER;
         
          TCPGetArray( APPCTX.tcpServerSock, (BYTE*)g_bfr, chunk);
          length -= chunk;
       }

    } 

    if ((APPCTX.pktId != (long)0) &&
       (ZGSYS_MODULE_GET_MSEC_TICK_COUNT() > (APPCTX.lastCheckTime + APPCTX.mInterval)) )
    {
         // Time to report statistics
         ReportBW_Jitter_Loss(kIntervalReport);
    }

    if ( IperfAppKillRequested() == kZGBoolTrue )
    {
       APPCTX.state = kStateTcpRxDone;
       APPCTX.stopTime = ZGSYS_MODULE_GET_MSEC_TICK_COUNT();
        
       return;
    }		
}


static void 
StateMachineUdpRx(void)
{
    tZGS16 length =0;
    tIperfPktInfo *pPktInfo;

    // Do nothing if no data is waiting
    if( (length = UDPIsGetReady(APPCTX.udpSock)) >= (tZGS16)(sizeof(tIperfPktInfo)) )
    {   
   
       /* The GetArray should not fail... */
       if ( UDPGetArray((BYTE*)g_bfr, sizeof(tIperfPktInfo)) != sizeof(tIperfPktInfo) )
       {
          ZG_PUTRSUART("      UDP Get Array Failed\n\r");
          APPCTX.state = kStateUdpRxDrain;
          return;
       }

       pPktInfo = (tIperfPktInfo *) g_bfr;
       APPCTX.pktId = ZGTOHL(pPktInfo->id);

       if ( (APPCTX.pktCount == (tZGU32)0) && (APPCTX.pktId < (long)0) )
       {
          // Ignore retransmits from previous session.
          UDPDiscard(); 
          return;
       }

       APPCTX.pktCount++;
       if (APPCTX.pktCount == (tZGU32)1 )
       {
          // The first pkt is used to set up the server,
          // does not count as a data pkt.
            
          ZG_PUTRSUART("\n\r    Session started ...\n\r");
   
          if ( APPCTX.pktId != 0 )
          {
             // We have lost a few packets before the first pkt arrived.	
             sprintf((char *) g_ConsoleContext.txBuf, "    - First pkt id = %ld (should be 0)\n\r", 
                              APPCTX.pktId);

             ZG_PUTSUART((char *) g_ConsoleContext.txBuf ); 

                            
             // The first data pkt starts with id = 1.
             APPCTX.errorCount	+= 	APPCTX.pktId - 1;					
          }
            
          APPCTX.lastPktId = APPCTX.pktId; 					
        
          sprintf((char *) g_ConsoleContext.txBuf, "    - Local  %u.%u.%u.%u port %u connected with \n\r",
                           AppConfig.MyIPAddr.v[0],
                           AppConfig.MyIPAddr.v[1],
                           AppConfig.MyIPAddr.v[2],
                           AppConfig.MyIPAddr.v[3],
                           APPCTX.mServerPort);

          ZG_PUTSUART( (char *) g_ConsoleContext.txBuf ); 

          sprintf((char *) g_ConsoleContext.txBuf,"    - Remote %u.%u.%u.%u port %u\n\r",
                           UDPSocketInfo[APPCTX.udpSock].remoteNode.IPAddr.v[0],
                           UDPSocketInfo[APPCTX.udpSock].remoteNode.IPAddr.v[1],
                           UDPSocketInfo[APPCTX.udpSock].remoteNode.IPAddr.v[2],
                           UDPSocketInfo[APPCTX.udpSock].remoteNode.IPAddr.v[3],
                           UDPSocketInfo[APPCTX.udpSock].remotePort );

          ZG_PUTSUART( (char *) g_ConsoleContext.txBuf ); 

          // Store the remote info so we can send the iperf "UDP-FIN-ACK" msg
          APPCTX.remoteSide.remote.IPAddr.v[0] = UDPSocketInfo[APPCTX.udpSock].remoteNode.IPAddr.v[0];
          APPCTX.remoteSide.remote.IPAddr.v[1] = UDPSocketInfo[APPCTX.udpSock].remoteNode.IPAddr.v[1];
          APPCTX.remoteSide.remote.IPAddr.v[2] = UDPSocketInfo[APPCTX.udpSock].remoteNode.IPAddr.v[2];
          APPCTX.remoteSide.remote.IPAddr.v[3] = UDPSocketInfo[APPCTX.udpSock].remoteNode.IPAddr.v[3];

          APPCTX.remoteSide.remotePort.Val =  UDPSocketInfo[APPCTX.udpSock].remotePort; 

          APPCTX.startTime = ZGSYS_MODULE_GET_MSEC_TICK_COUNT();
          //APPCTX.remoteStartTime = ZGTOHL(pPktInfo->tv_sec);

          APPCTX.lastCheckTime = 	APPCTX.startTime;
            
          APPCTX.lastCheckPktId = APPCTX.pktId;
          APPCTX.lastCheckPktCount = APPCTX.pktCount;
          APPCTX.lastCheckErrorCount = APPCTX.errorCount;

          UDPDiscard(); 

          return;
                                
      }	

      APPCTX.totalLen += length;
            
      if ( APPCTX.pktId < 0 ) 
      {
         // this is the last datagram
         APPCTX.pktId = - APPCTX.pktId;
    
         APPCTX.stopTime = ZGSYS_MODULE_GET_MSEC_TICK_COUNT();
        //APPCTX.remoteStopTime = ZGTOHL(pPktInfo->tv_sec);
                                        
        APPCTX.nAttempts = 0;
        APPCTX.state = kStateUdpRxDrain;
      } 
            
      if ( APPCTX.pktId != APPCTX.lastPktId+1 ) 
      {
         if ( APPCTX.pktId < APPCTX.lastPktId+1 ) 
         {
            APPCTX.outofOrder++; 
         } 
         else 
         {
            APPCTX.errorCount += APPCTX.pktId - (APPCTX.lastPktId+1); 
         } 
      }

      // never decrease pktId (e.g. if we get an out-of-order packet) 
      if ( APPCTX.pktId == APPCTX.lastPktId ) 
      {
         ZG_PUTRSUART("      Recv duplicated pkt\n\r");
      }
        
      if ( APPCTX.pktId > APPCTX.lastPktId ) 
      {
         APPCTX.lastPktId = APPCTX.pktId; 
      }

      /* read the remaining datagram payload - the full payload */
      /* a UdpDiscard would be disingenuous, because it would not reflect the bandwidth at L7 */
      length -=  sizeof(tIperfPktInfo);
      while ( length > 0 )
      {
         tZGU16 chunk;

         if ( length <  (tZGS16)MAX_BUFFER )
            chunk = length;
         else
            chunk = MAX_BUFFER;
         
         UDPGetArray((BYTE*)g_bfr, chunk);
         length -= chunk;
      }


    }  /* end got a datagram */  
            
    if ( (APPCTX.pktCount != (tZGU32)0) && 
         (ZGSYS_MODULE_GET_MSEC_TICK_COUNT() > (APPCTX.lastCheckTime + APPCTX.mInterval)) )
    {
        if ( APPCTX.pktCount == APPCTX.lastCheckPktCount )
        {
          // No events in APPCTX.mInterval msec, we timed out
          ZG_PUTRSUART("    Rx timed out\n\r");
            
          APPCTX.stopTime = ZGSYS_MODULE_GET_MSEC_TICK_COUNT();

          APPCTX.nAttempts = 0;
          APPCTX.state = kStateUdpRxDrain;
        }
        else
        {
          ReportBW_Jitter_Loss(kIntervalReport);
        }
    }
    
    if ( IperfAppKillRequested() == kZGBoolTrue )
    {
        APPCTX.state = kStateUdpRxDrain; 
        return;
    }	

}		

static void 
StateMachineUdpRxDrain(void)
{
    if( UDPIsGetReady(APPCTX.udpSock) > (WORD)0 )
    { 
         UDPDiscard(); 
         return; 
    }

   /* If iperf kill was done, just jump to closing the socket */
   if ( APPCTX.stopRequested )
     APPCTX.state = kStateRxDone;
   else /* go ahead an generate reports, etc */
     APPCTX.state = kStateUdpRxDone;

}


static void 
StateMachineUdpRxDone(void)
{
    tIperfPktInfo *pPktInfo;
    tServerHdr *pServer_hdr;
    tZGU16  tmp;
    float tmp2;


    if ( APPCTX.statusReported == 0u )
    {
        ReportBW_Jitter_Loss(kSessionReport);
        APPCTX.statusReported = 1;
    }
    
    /* Drain any waiting pkts */
    if (  UDPIsGetReady(APPCTX.udpSock)  )
    {
        UDPDiscard(); 
        return;
    }

    // Send the iperf UDP "FIN-ACK" 10 times.
    if ( APPCTX.nAttempts++ > 10u )
    {
        APPCTX.state = kStateRxDone; 
        return;
    }

     /* Make sure space is available to TX the ACK packet of 128 bytes */
    if ( UDPIsPutReady(APPCTX.udpSock ) > 0u )
    { 

      pPktInfo = (tIperfPktInfo *) g_bfr;
      pServer_hdr = (tServerHdr *) (pPktInfo +1);
   
      pPktInfo->id = HTOZGL( -APPCTX.lastPktId );
      pPktInfo->tv_sec = 0;
      pPktInfo->tv_usec = 0;
    
      pServer_hdr->flags = HTOZGL(HEADER_VERSION1);
      pServer_hdr->total_len1 = 0;
      pServer_hdr->total_len2 = HTOZGL( (tZGU32) APPCTX.totalLen);
                    
      pServer_hdr->stop_sec =  HTOZGL( (tZGU32) (APPCTX.stopTime - APPCTX.startTime)/TICK_SECOND);

      /* get the remainder of the ticks using modulus */
      tmp2 = ((APPCTX.stopTime - APPCTX.startTime)%TICK_SECOND);
     
      /* normalize  to uSecs */
      tmp2 =  TickConvertToMilliseconds( tmp2 );
      tmp2 *= 1000;   /* 1000 uSecs per mSec */


      pServer_hdr->stop_usec = HTOZGL( (tZGU32) tmp2 );
      pServer_hdr->error_cnt = HTOZGL( (tZGU32)  APPCTX.errorCount);;
      pServer_hdr->outorder_cnt = HTOZGL( (tZGU32) APPCTX.outofOrder);
      pServer_hdr->datagrams = HTOZGL( (tZGU32) APPCTX.lastPktId);
      pServer_hdr->jitter1 = 0;
      pServer_hdr->jitter2 = 0; 
  
      UDPPutArray((BYTE*)g_bfr, MAX_BUFFER);

      for ( tmp=0; tmp < (128 - MAX_BUFFER); tmp++)
        UDPPut(0x00);
  
      UDPFlush( );     

    }

}

static void 
StateMachineTcpRxDone(void)
{
    if ( APPCTX.statusReported == 0u )
    {
        ReportBW_Jitter_Loss(kSessionReport);
        APPCTX.statusReported = 1;
    }

    APPCTX.state = kStateRxDone;
}

static void 
StateMachineRxDone(void)
{

   if ( APPCTX.mProtocol == kIperfProtoUDP ) 
   {
     UDPClose(  APPCTX.udpSock );
   }
   else
   {

     /* 2 disconnects on purpose not mistake */
     TCPDisconnect( APPCTX.tcpServerSock );
     TCPDisconnect( APPCTX.tcpServerSock );
   }

    ZG_PUTRSUART("\n\r    Rx done. Socket closed.\n\r");


    // Clear statistics
    ResetIperfCounters();
    
    // In server mode, continue to accept new session requests ...

    if ((APPCTX.mServerMode == kZGBoolTrue) 	&&
        (APPCTX.stopRequested == kZGBoolFalse) )
    {
        ZG_PUTRSUART("    Ready for the next session.\n\n\r");
          
        APPCTX.state = kStateRxStart; 
    }
    else 
    {
        ZG_PUTRSUART("    Iperf completed.\n\n\r");
        APPCTX.state = kStateStandby;
    }
        
}




/******************************/
/* TX CLIENT CODE BEGINS HERE */
/******************************/


static void
StateMachineTxStart(void)
{
    
   ARPResolve(&APPCTX.remoteSide.remote.IPAddr);	
   APPCTX.state = kStateTxArpResolve;  
   APPCTX.timer = TickGet();
                                            
}

static void
StateMachineTxArpResolve(void)
{ 

  if ( IperfAppKillRequested() == kZGBoolTrue )
  { 
     ZG_PUTRSUART("Iperf client session closed.\n\r");
     APPCTX.state = kStateStandby;
     return;
  }

  if(!ARPIsResolved(&APPCTX.remoteSide.remote.IPAddr, &APPCTX.remoteSide.remote.MACAddr))
  {
      /* every 3 seconds print a warning */
      if( TickGet()- APPCTX.timer > 5*TICK_SECOND )
      {
         ZG_PUTRSUART("ARP unable to resolve the MAC address of remote side.\n\r");
         APPCTX.timer = TickGet();
      } 
      return;
  }

  if ( APPCTX.mProtocol == kIperfProtoUDP )
     APPCTX.state = kStateUdpTxOpen;
  else
     APPCTX.state = kStateTcpTxOpen; 
                            
}

static void
StateMachineUDPTxOpen(void)
{

    if ( (APPCTX.udpSock = UDPOpen(0, &APPCTX.remoteSide.remote, APPCTX.mServerPort)) == INVALID_UDP_SOCKET )
    {
        /* error case */
        ZG_PUTRSUART("Create UDP socket failed\n\r");
        APPCTX.state = kStateStandby;
        return;
    }


    APPCTX.localPort = UDPSocketInfo[APPCTX.udpSock].localPort;

    ZG_PUTRSUART("---------------------------------------------------------\n\r");
    sprintf( (char *) g_ConsoleContext.txBuf, 
             "Client connecting to %u.%u.%u.%u, UDP port %u\n\r",
              APPCTX.remoteSide.remote.IPAddr.v[0],
              APPCTX.remoteSide.remote.IPAddr.v[1],
              APPCTX.remoteSide.remote.IPAddr.v[2],
              APPCTX.remoteSide.remote.IPAddr.v[3],
              APPCTX.mServerPort );

    ZG_PUTSUART( (char *) g_ConsoleContext.txBuf );
        
    APPCTX.state = kStateUdpTxDatagram;
    
    APPCTX.startTime = ZGSYS_MODULE_GET_MSEC_TICK_COUNT();

     // Wait for a few seconds before first TCP tx, so we can resolve ARP.
    APPCTX.nextTxTime = APPCTX.startTime + APPCTX.mPktPeriod;

}

static void
StateMachineTCPTxOpen(void)
{

   if  ( (APPCTX.tcpClientSock = TCPOpen( (DWORD) &APPCTX.remoteSide.remote, TCP_OPEN_NODE_INFO,  APPCTX.mServerPort, TCP_PURPOSE_GENERIC_TCP_CLIENT)) == INVALID_SOCKET )
   {
       /* error case */
        ZG_PUTRSUART("Create TCP socket failed\n\r");
        APPCTX.state = kStateStandby;
        return;
    }

    APPCTX.localPort = LOCAL_PORT_START_NUMBER;
    
    ZG_PUTRSUART("---------------------------------------------------------\n\r");
    sprintf( (char *) g_ConsoleContext.txBuf, 
             "Client connecting to %u.%u.%u.%u, TCP port %u\n\r",
              APPCTX.remoteSide.remote.IPAddr.v[0],
              APPCTX.remoteSide.remote.IPAddr.v[1],
              APPCTX.remoteSide.remote.IPAddr.v[2],
              APPCTX.remoteSide.remote.IPAddr.v[3],
              APPCTX.mServerPort );

    ZG_PUTSUART( (char *) g_ConsoleContext.txBuf ); 
        
    APPCTX.state =  kStateTcpTxConnect;
   
    TCPAdjustFIFOSize(APPCTX.tcpClientSock, 10, 1,TCP_ADJUST_GIVE_REST_TO_TX);

    APPCTX.timer = TickGet();
}


static void
StateMachineTCPTxConnect(void)
{

 if ( IperfAppKillRequested() == kZGBoolTrue )
 { 
     APPCTX.state = kStateTcpTxDone;
     return;
 }

  if( !TCPIsConnected(APPCTX.tcpClientSock) )
  {

    // Time out if too much time is spent in this state
    if(TickGet()- APPCTX.timer > 5*TICK_SECOND)
    {
       TCPDisconnect(APPCTX.tcpClientSock);
       APPCTX.tcpClientSock = INVALID_SOCKET;
       ZG_PUTRSUART("TCP Client connection timeout\n\r");
       APPCTX.state = kStateTcpTxDone;
    }
    
    return; 
  }

  /* reset the reset flag so we don't get a false positive */
  TCPWasReset(APPCTX.tcpClientSock);

  APPCTX.startTime = ZGSYS_MODULE_GET_MSEC_TICK_COUNT();
  APPCTX.nextTxTime = APPCTX.startTime + APPCTX.mPktPeriod;
  APPCTX.state = kStateTcpTxSegment;
}



static void
GenericTxHeaderPreparation(tZGU8 *pData, tZGBool isTheLastTransmit)
{
    tIperfPktInfo *pPktInfo = NULL;
    tZGU32 currentTime;
    tClientHdr *pClientHdr = NULL;
    long tmp2;
    
    if ( APPCTX.pktId == 0 ) {
        // The first tx packet
    }
    
    switch ( APPCTX.mProtocol )
    {
        case kIperfProtoTCP: // TCP

            // Required by iperf.
            pClientHdr = (tClientHdr *) pData;
            
            // We borrow the same tIperfPktInfo structure to embed
            // some useful (non-standard iperf) meta info.
            // Unfortunately, the order has to be reversed.
            
            pPktInfo = (tIperfPktInfo *) (pClientHdr + 1);
            
            break;
            
        case kIperfProtoUDP: // UDP

            // Both are required by iperf.

            pPktInfo = (tIperfPktInfo *) pData;
            pClientHdr = (tClientHdr *) (pPktInfo + 1);
        
            break;
    }

    // Client header:
    // Needed for all UDP packets.
    // For TCP, only the first two segments need this info. However, 
    // there seems to be no harm to put it to all segments though.

    pClientHdr->flags = HTOZGL( (tZGU32) 0);
    pClientHdr->numThreads = HTOZGL((tZGU32) 1);
    pClientHdr->mPort = HTOZGL((tZGU32) APPCTX.mServerPort);
    pClientHdr->bufferlen = HTOZGL( (tZGU32) 0);
    pClientHdr->mWinBand = HTOZGL(APPCTX.mTxRate);
            
    if ( APPCTX.mAmount != 0u ) 
    {
        pClientHdr->mAmount = HTOZGL(APPCTX.mAmount);
    }
    else 
    {
        pClientHdr->mAmount = HTOZGL( - (long) (APPCTX.mDuration/10) );
    }

    // Additional info: needed for UDP only.
    // No harm to put it to all TCP segments though.
    
    if ( isTheLastTransmit == kZGBoolTrue )
    {
        // The last UDP tx packet. Some caveats:
        // 1. Iperf uses a negative Id for the last tx packet.
        // 2. Its id should not change during retransmit.
        
        pPktInfo->id = - ( (long) (APPCTX.pktId - APPCTX.nAttempts) );
    }
    else
    {
        pPktInfo->id = APPCTX.pktId;
    }
        
    pPktInfo->id = HTOZGL(pPktInfo->id);
    
    currentTime = ZGSYS_MODULE_GET_MSEC_TICK_COUNT();
    
    pPktInfo->tv_sec = HTOZGL(currentTime / TICK_SECOND);

    /* get the remainder of the ticks using modulus */
    tmp2 = ((APPCTX.stopTime - APPCTX.startTime)%TICK_SECOND);
     
    /* normalize  to uSecs */
    tmp2 =  TickConvertToMilliseconds( tmp2 );
    tmp2 *= 1000;   /* 1000 uSecs per mSec */


    pPktInfo->tv_usec = HTOZGL( tmp2 );
                            
    return;
}



static tZGBool
GenericTxStart(void)
{
    tZGU32 currentTime;

    currentTime = ZGSYS_MODULE_GET_MSEC_TICK_COUNT();

    if ( currentTime < (APPCTX.nextTxTime - kIperfTimingErrorMargin))
    {
        // Wait until we are scheduled to Tx.
        return kZGBoolFalse;
    }
   
    if ((IperfAppKillRequested() == kZGBoolTrue) ||
        ((APPCTX.mDuration != 0u) && 
         (currentTime > (APPCTX.startTime + APPCTX.mDuration))) ||
        ((APPCTX.mAmount != 0u) &&
         (APPCTX.totalLen > APPCTX.mAmount)))
    {
        // Prepare to transmit the last packet. 
        // Although the last packet needs to be retransmitted kIperfUDPFinRetransmitCount times, 
        // if we are in UDP mode.
        
         APPCTX.isLastTransmit = kZGBoolTrue;
    }

    if ( APPCTX.pktId == 0 )
    {
        // The first pkt is going out ...
        
        // Reset startTime, to get a more accurate report.
        
        APPCTX.startTime = currentTime;
        APPCTX.nextTxTime = APPCTX.startTime;
        
        APPCTX.lastCheckTime = 	APPCTX.startTime;
            
        APPCTX.lastCheckPktId = APPCTX.pktId;
        APPCTX.lastCheckPktCount = APPCTX.pktCount;
        APPCTX.lastCheckErrorCount = APPCTX.errorCount;
        APPCTX.nAttempts = 0;
    }
    
    if ( APPCTX.mProtocol == kIperfProtoTCP )
    {
       /* Manage socket */
       if( TCPIsGetReady(APPCTX.tcpClientSock) > 0u )
       { 
          TCPDiscard(APPCTX.tcpClientSock);
          return kZGBoolFalse;
       }

       if ( TCPWasReset(APPCTX.tcpClientSock) )
       {
         // We don't close the socket. We wait for user to "kill iperf" explicitly.
         ZG_PUTRSUART("\n\r    Warning, TCP client detected diconnect\n\r");  
       } 

       if  ( TCPIsPutReady(APPCTX.tcpClientSock) <= APPCTX.mMSS )
          return kZGBoolFalse;

    } 
    else
    {
       /* Manage socket */
       if( UDPIsGetReady(APPCTX.udpSock) > 0u )
       { 
          UDPDiscard();
          return kZGBoolFalse;
       }

       if ( UDPIsPutReady(APPCTX.udpSock) <= APPCTX.mDatagramSize )
       {
          return kZGBoolFalse;
       }

    }
       
    
    // One Tx per mPktPeriod msec.
    APPCTX.nextTxTime = currentTime + APPCTX.mPktPeriod;

    GenericTxHeaderPreparation(g_bfr, APPCTX.isLastTransmit);

    if ( APPCTX.mProtocol == kIperfProtoUDP )
    {    

        APPCTX.remainingTxData = (APPCTX.mDatagramSize - MAX_BUFFER);

        if ( UDPPutArray(g_bfr, MAX_BUFFER) != MAX_BUFFER )
        {
            ZG_PUTRSUART("Socket send failed\n\r");
            APPCTX.errorCount++;
            return kZGBoolFalse;
        }

    } 
    else
    {

        APPCTX.remainingTxData = (APPCTX.mMSS - MAX_BUFFER);

        if ( TCPPutArray(APPCTX.tcpClientSock, (BYTE*) g_bfr, MAX_BUFFER) != MAX_BUFFER )
        {
            ZG_PUTRSUART("Socket send failed\n\r");
            APPCTX.errorCount++;
            return kZGBoolFalse;  
        }

    }

     return kZGBoolTrue;

}


/* This routine does a piecewise send, because the entire RAM buffer may not be available for putArray */
static void 
TcpTxFillSegment(void)
{
  tZGU16 chunk;
  
  /* Fill the buffer with ASCII char T */
  memset( g_bfr, 0x54, MAX_BUFFER);
  
  while( APPCTX.remainingTxData > 0u )
  {
    chunk = MAX_BUFFER;

    /* finish case where we get more than is needed */
    if ( APPCTX.remainingTxData < MAX_BUFFER )
      chunk = APPCTX.remainingTxData;
      
    APPCTX.remainingTxData -= chunk;

    if ( TCPPutArray( APPCTX.tcpClientSock, (BYTE *) g_bfr, chunk) != chunk )
      return;

  }

}

/* This routine does a piece wis send, because the entire RAM pkt buffer may not be available for putArray */
static void 
UdpTxFillDatagram(void)
{

  tZGU16 chunk;

  /* Fill the buffer with ASCII char U */
  memset( g_bfr, 0x55, MAX_BUFFER);
  
  while( APPCTX.remainingTxData > 0u )
  { 
    chunk = MAX_BUFFER;

    /* finish case where we get more than is needed */
    if ( APPCTX.remainingTxData < MAX_BUFFER )
      chunk = APPCTX.remainingTxData;
      
    APPCTX.remainingTxData -= chunk;

    if (  UDPPutArray( (BYTE *) g_bfr, chunk) != chunk ) 
     return;

  }

}



static void 
GenericTxEnd(void)
{
                        
  if(  APPCTX.remainingTxData  > 0u )
  {
     /* unhandled error */
     ZG_PUTRSUART("Socket send failed\n\r");
     APPCTX.errorCount++;
  }
  else
  {
     // send successful.

     if ( APPCTX.pktCount == 0u )
     {
        // first tx pkt
                
        ZG_PUTRSUART("\n\r    Session started ...\n\r");


        sprintf( (char *) g_ConsoleContext.txBuf, 
                 "    - Local  %u.%u.%u.%u port %u connected with\n\r",
                 AppConfig.MyIPAddr.v[0],
                 AppConfig.MyIPAddr.v[1],
                 AppConfig.MyIPAddr.v[2],
                 AppConfig.MyIPAddr.v[3],
                 APPCTX.localPort);

        ZG_PUTSUART( (char *) g_ConsoleContext.txBuf ); 

        sprintf( (char *) g_ConsoleContext.txBuf, 
                 "    - Remote %u.%u.%u.%u port %u\n\r",
                 APPCTX.remoteSide.remote.IPAddr.v[0],
                 APPCTX.remoteSide.remote.IPAddr.v[1],
                 APPCTX.remoteSide.remote.IPAddr.v[2],
                 APPCTX.remoteSide.remote.IPAddr.v[3],
                 APPCTX.mServerPort );

        ZG_PUTSUART( (char *) g_ConsoleContext.txBuf ); 

        sprintf( (char *) g_ConsoleContext.txBuf, 
                "    - Target rate = %ld bps, period = %ld ms\n\r",
                APPCTX.mTxRate, TickConvertToMilliseconds(APPCTX.mPktPeriod) );

        ZG_PUTSUART( (char *) g_ConsoleContext.txBuf ); 

     }
            
     APPCTX.pktId++;
     APPCTX.pktCount++;

     if ( APPCTX.mProtocol == kIperfProtoUDP )
     {
        APPCTX.totalLen += APPCTX.mDatagramSize;
     } 
     else
     {

        APPCTX.totalLen += APPCTX.mMSS;
     }		

        
  }
    
  APPCTX.lastPktId = APPCTX.pktId - 1; 



  if ( ZGSYS_MODULE_GET_MSEC_TICK_COUNT() > (APPCTX.lastCheckTime + APPCTX.mInterval - kIperfTimingErrorMargin) )
  {
        // Time to report statistics
        ReportBW_Jitter_Loss(kIntervalReport);
            
        //APPCTX.lastCheckPktCount = APPCTX.pktCount;
  }


  if ( APPCTX.isLastTransmit == kZGBoolTrue )
  {
      if ((APPCTX.mProtocol == (tIperfProto)kIperfProtoUDP) && 
          (++APPCTX.nAttempts < kIperfUDPFinRetransmitCount) ) {

          if ( APPCTX.nAttempts == 1u )
          {
              // So the normal pkt statistics is not mixed with the retransmited last pkt.
              APPCTX.stopTime = ZGSYS_MODULE_GET_MSEC_TICK_COUNT();

              ReportBW_Jitter_Loss(kSubtotalReport);
              ZG_PUTRSUART("    -----------------------------------------\n\r");
          }


          // Don't follow the same transmision rate during retransmit.
          APPCTX.mPktPeriod = kIperfUDPFinRetransmitPeriod;
      }
      else
      {		 
          APPCTX.state = (APPCTX.mProtocol == kIperfProtoUDP) ? kStateUdpTxDone : kStateTcpTxDone;
          APPCTX.stopTime = ZGSYS_MODULE_GET_MSEC_TICK_COUNT();
      }
  }
                
}

static void 
StateMachineTcpTxSegment(void)
{

    if ( GenericTxStart() == kZGBoolTrue )
    {
       TcpTxFillSegment();
       TCPFlush(APPCTX.tcpClientSock); 
       GenericTxEnd();
    } 
}

static void 
StateMachineUdpTxDatagram(void)
{  

    if ( GenericTxStart() == kZGBoolTrue )
    {
       UdpTxFillDatagram();
       UDPFlush();
       GenericTxEnd();
    }
}


static void 
GenericTxDone(void)
{
    if ( APPCTX.statusReported == 0u )
    {
        ReportBW_Jitter_Loss(kSessionReport);
        APPCTX.statusReported = 1;
    }
        
    APPCTX.state = kStateStandby;

    ZG_PUTRSUART("    Tx done. Socket closed.\n\r");

    // Clear statistics
    ResetIperfCounters();
    
    //ZGConsolePrintf("    Back to standby mode.\n");
    ZG_PUTRSUART("    Iperf completed.\n\n\r");

}


static void 
StateMachineTcpTxDone(void)
{
    GenericTxDone();

    //No calling this API twice is NOT redundant...  The 2nd time forces a RST per Microchip's own doc for v4.51
    TCPDisconnect(APPCTX.tcpClientSock); 
    TCPDisconnect(APPCTX.tcpClientSock);
    APPCTX.tcpClientSock = INVALID_SOCKET;
}

static void 
StateMachineUdpTxDone(void)
{
    
    GenericTxDone();

    UDPClose(APPCTX.udpSock );
}

            
void IperfAppCall(void)
{

    /* This check is for duplicate iperf app calls */
    /* the only legitimate state that is ready for */
    /* iperf server or client is standby           */
    if ( (APPCTX.state != (tZGU8)kStateStandby) &&
         (ZGConsoleIsConsoleMsgReceived() == kZGBoolTrue) )
    {
        tZGS8 **argv;
        tZGU8 argc;

        argv = ZGConsoleGetCmdLineTokens(&argc);

        if ( memcmppgm2ram(argv[0], "iperf", 5) == 0 )
        {
            ZG_PUTRSUART("\n\rError, Iperf session already started\n");
            ZGConsoleReleaseConsoleMsg();
        }
    }

    switch ( APPCTX.state )
    {
        case kStateStandby:

            StateMachineStandby();			

            break;
            
        /********************/
        /* RX Client States */
        /********************/

        case kStateRxStart:

            StateMachineRxStart();
    
            break;
            
        case kStateUdpRx:
        
            StateMachineUdpRx();
            
            break;

        case kStateUdpRxDrain:
        
            StateMachineUdpRxDrain();

            break;


        case kStateUdpRxDone:
        
            StateMachineUdpRxDone();

            break;


        case kStateTcpRxListen:
        
            StateMachineTcpListen();
            
            break;
            
        case kStateTcpRx:
        
            StateMachineTcpRx();
            
            break;
            
        case kStateTcpRxDone:
        
            StateMachineTcpRxDone();
            
            break;
            
        case kStateRxDone:
        
            StateMachineRxDone();
            
            break;


       /********************/
       /* TX Client states */
       /********************/

            
        case kStateTxStart:
        
            StateMachineTxStart();
            
            break;


        case kStateTxArpResolve:

           StateMachineTxArpResolve();

           break;

        case kStateUdpTxOpen:

            StateMachineUDPTxOpen();
            
            break;

        case kStateTcpTxOpen:
            
            StateMachineTCPTxOpen();
            
            break;

        case kStateTcpTxConnect:

            StateMachineTCPTxConnect();
            
            break;
        
        case kStateTcpTxSegment:
        
            StateMachineTcpTxSegment();
            
            break;

        case kStateUdpTxDatagram:
        
            StateMachineUdpTxDatagram();
            
            break;

        case kStateTcpTxDone:
        
            StateMachineTcpTxDone();
            
            break;


        case kStateUdpTxDone:
        
            StateMachineUdpTxDone();
            
            break;

        }
}

#endif /* ZG_CONFIG_CONSOLE */
