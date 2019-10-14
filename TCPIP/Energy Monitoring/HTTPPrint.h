/**************************************************************
 * HTTPPrint.h
 * Provides callback headers and resolution for user's custom
 * HTTP Application.
 * 
 * This file is automatically generated by the MPFS Utility
 * ALL MODIFICATIONS WILL BE OVERWRITTEN BY THE MPFS GENERATOR
 **************************************************************/

#ifndef __HTTPPRINT_H
#define __HTTPPRINT_H

#include "TCPIP Stack/TCPIP.h"

#if defined(STACK_USE_HTTP2_SERVER)

extern HTTP_STUB httpStubs[MAX_HTTP_CONNECTIONS];
extern BYTE curHTTPID;

void HTTPPrint(DWORD callbackID);
void HTTPPrint_cumulativePower(void);
void HTTPPrint_instPower(void);
void HTTPPrint_apparentPower(void);
void HTTPPrint_volts(void);
void HTTPPrint_amps(void);
void HTTPPrint_reactivePower(void);

void HTTPPrint(DWORD callbackID)
{
	switch(callbackID)
	{
        case 0x00000002:
			HTTPIncFile((ROM BYTE*)"footer.inc");
			break;
        case 0x00000033:
			HTTPIncFile((ROM BYTE*)"header.inc");
			break;
        case 0x00000059:
			HTTPPrint_cumulativePower();
			break;
        case 0x0000005a:
			HTTPPrint_instPower();
			break;
        case 0x0000005b:
			HTTPPrint_apparentPower();
			break;
        case 0x0000005c:
			HTTPPrint_volts();
			break;
        case 0x0000005d:
			HTTPPrint_amps();
			break;
        case 0x0000005e:
			HTTPPrint_reactivePower();
			break;
		default:
			// Output notification for undefined values
			TCPPutROMArray(sktHTTP, (ROM BYTE*)"!DEF", 4);
	}

	return;
}

void HTTPPrint_(void)
{
	TCPPut(sktHTTP, '~');
	return;
}

#endif

#endif
