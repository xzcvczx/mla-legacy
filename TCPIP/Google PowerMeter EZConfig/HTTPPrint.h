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

extern HTTP_CONN curHTTP;
extern HTTP_STUB httpStubs[MAX_HTTP_CONNECTIONS];
extern BYTE curHTTPID;

void HTTPPrint(DWORD callbackID);
void HTTPPrint_manu(void);
void HTTPPrint_model(void);
void HTTPPrint_devid(void);
void HTTPPrint_hash1(void);
void HTTPPrint_hash2(void);
void HTTPPrint_hash3(void);
void HTTPPrint_authtoken(void);
void HTTPPrint_authpath(void);
void HTTPPrint_status(void);
void HTTPPrint_num_sensor(void);
void HTTPPrint_cap_int(void);
void HTTPPrint_send_int(void);
void HTTPPrint_nextSSID(void);
void HTTPPrint_prevSSID(void);
void HTTPPrint_prevWLAN(void);
void HTTPPrint_nextWLAN(void);
void HTTPPrint_scan(void);
void HTTPPrint_fwver(void);
void HTTPPrint_bssCount(void);
void HTTPPrint_ssid(void);
void HTTPPrint_valid(void);
void HTTPPrint_name(void);
void HTTPPrint_privacy(void);
void HTTPPrint_wlan(void);
void HTTPPrint_strength(void);

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
        case 0x0000004a:
			HTTPPrint_manu();
			break;
        case 0x0000004b:
			HTTPPrint_model();
			break;
        case 0x0000004c:
			HTTPPrint_devid();
			break;
        case 0x0000004d:
			HTTPPrint_hash1();
			break;
        case 0x0000004e:
			HTTPPrint_hash2();
			break;
        case 0x0000004f:
			HTTPPrint_hash3();
			break;
        case 0x00000050:
			HTTPPrint_authtoken();
			break;
        case 0x00000051:
			HTTPPrint_authpath();
			break;
        case 0x00000052:
			HTTPPrint_status();
			break;
        case 0x00000053:
			HTTPPrint_num_sensor();
			break;
        case 0x00000054:
			HTTPPrint_cap_int();
			break;
        case 0x00000055:
			HTTPPrint_send_int();
			break;
        case 0x00000056:
			HTTPPrint_nextSSID();
			break;
        case 0x00000057:
			HTTPPrint_prevSSID();
			break;
        case 0x00000058:
			HTTPPrint_prevWLAN();
			break;
        case 0x00000059:
			HTTPPrint_nextWLAN();
			break;
        case 0x0000005a:
			HTTPPrint_scan();
			break;
        case 0x0000005d:
			HTTPPrint_fwver();
			break;
        case 0x0000005e:
			HTTPPrint_bssCount();
			break;
        case 0x0000005f:
			HTTPPrint_ssid();
			break;
        case 0x00000060:
			HTTPPrint_valid();
			break;
        case 0x00000061:
			HTTPPrint_name();
			break;
        case 0x00000062:
			HTTPPrint_privacy();
			break;
        case 0x00000063:
			HTTPPrint_wlan();
			break;
        case 0x00000064:
			HTTPPrint_strength();
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