#ifndef __IPERFAPP_H__
#define __IPERFAPP_H__


/* these are the ports for this application */

#define IPERF_APP_SERVER_PORT (5001)
#define kIperfAppID (1100)

#if defined (STACK_USE_IPERF)
extern void IperfAppInit(void);
extern void IperfAppCall(void);
#else
#define IperfAppInit()
#define IperfAppCall()
#endif /* STACK_USE_IPERF */

#endif /* __IPERFAPP_H__ */
