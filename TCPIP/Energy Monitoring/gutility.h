/*
 * Copyright 2010 Google Inc. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */

#ifndef ENERGY_POWERMETER_EMBEDDED_TNG_SANDBOX_GUTILITY_H_
#define ENERGY_POWERMETER_EMBEDDED_TNG_SANDBOX_GUTILITY_H_

#ifdef __cplusplus
extern "C" {
#endif

#include "GenericTypeDefs.h"

#include "Compiler.h"
#include "TCPIP Stack/TCPIP.h"

// Based on TCPIPConfig and using the TCP_PURPOSE_DEFAULT
// we can send at most 200 bytes at a time... Play it safe and complain
// if we try to send more than 198 bytes at once.
#define MAX_TCP_SEND_BYTES  198

// The headers we care about (including the termination of headers)...
// Technically a header must be at the beginining of a line
// so validate the cr/lf before the text we care about.
#define HEADER_END              "\r\n\r\n"
#define HEADER_PUBKEY_HASH      "\r\nX-powermeter-hash:"

#define MAX_MATCH_SIZE          32

// The follow emumerations, typedefs and structures are intended to make
// sending data via tcp/ip on the microchip hardware a little easier.
// With the structures below, code can create an array of data to be
// sent that is either in ROM or generated via a function call. That
// array can then be passed to the SendTcpDataViaArray() function which
// will handle the low level details of checking for space in the tcp/ip
// buffer and sending the data if there is enough space.

// Since all pointers look alike, use an enumeration to tell the
// function whether the pointer is pointing to a ROM string or whether
// it is pointing to a function that should be called.
typedef enum _send_type {
  ROM_STRING,
  FUNC_CALL,
  NO_MORE,
} SEND_TYPE;

// The argument to the function needs to be large enough to handle
// pointers or 32-bit data.
typedef union _u2 {
  void *generic_ptr;
  INT32 generic_data;
} FUNC_ARG;

// For functions that get called, we pass in an argument of the user's
// choosing, the maximum size the output string is allowed to be
// and the data area where the resulting string should be placed.
typedef void (*DATA_FUNC)(FUNC_ARG arg, INT32 max_size, unsigned char *data);

// Allow either a pointer to a ROM string, or a pointer to a function
// that will generate a string for us.
typedef union _u {
  ROM BYTE *data_string;
  DATA_FUNC data_function;
} FUNC_OR_STRING;

// The structure that is used to for sending either a ROM string or
// calling a function to generate the string to be sent.
typedef struct _sender_info {
  FUNC_OR_STRING send_data;
  FUNC_ARG send_arg;
  SEND_TYPE send_type;
} SENDER_INFO;

typedef enum _send_return {
  SEND_SUCCESS,         // Data was sent.
  SEND_WAITING,         // Waiting for space in the TCP/IP buffer
  SEND_DONE,            // All done - reached the end of the array
  SEND_ERROR,           // An error occured.
} SEND_RETURN_CODE;

// The SendTcpDataViaArray() function will attempt to send the data
// associated with the current_index to the provided socket. It checks
// to see if there is space available in the socket buffer before
// trying to send. To allow this function to be used by different state
// machines (such as the status sender and the data sender), it does not
// store any state. Thus, it may call the function provided in the
// SENDER_INFO array multiple times to generate the string to be sent
// in order to get the length of the data.
// Timeout issues are left to the caller. The SEND_RETURN_CODE can be used
// to determine when to call this routine again (call again on SEND_SUCCESS
// or SEND_WAITING).
//
// NOTE: the size of the tcp buffer for the microchip is limitied. To
// be safe, make sure there is never an attempt to send more than ~100
// bytes of data at one time. The function call has even more significant
// limits due to using stack space to store the string. Head the max_size
// argument in the DATA_FUNC function call or prepare to spend a lot of time
// debugging painful stack corruption issues...
SEND_RETURN_CODE SendTcpDataViaArray(TCP_SOCKET socket,
                                     SENDER_INFO *send_array,
                                     INT8 for_real,
                                     INT16 *current_index,
                                     INT32 *amt);

typedef enum _resp_return {
  RESP_FOUND,           // Found the character requested
  RESP_SEARCHING,       // Still searching
  RESP_CLOSED,          // Connection closed. This may or may not be an error
                        // depending on conext.
  RESP_ERROR,           // An error occured.
} RESP_RETURN_CODE;

// Get the status response from an HTTP transaction.
//
// We are looking for the "HTTP/1.0 204 No Content" header response.
// and will return the status value (204 in the example above).
//
// This routine will not discard the rest of the line after the response
// has been received. It is up to the caller to decide what to do with
// the data (and the connection) after the response code has been seen.
RESP_RETURN_CODE GetStatusResponse(TCP_SOCKET socket, INT16 *response_code);

// Function to look for batch status response, i.e. "batch:status code='400'"
RESP_RETURN_CODE GetBatchStatusResponse(TCP_SOCKET socket,
                                        INT16 *response_code);

// The microchip tcp/ip does not provide any guarantees about when new data
// will be available to routines like TCPIsGetReady() and TCPFindArrayEx().
// The only guarantee is that when the internal buffer is empty, the library
// will attempt to fill it which means that routines like:
// foo() {
//  if (TCPIsGetReady() > N) {
//    result = TCPFindArrayEx(...);
//  }
// }
// may never do anything since only consumption of data is guaranteed to
// change the TCPIsGetReady() value (either positive or negative).
//
// This means we need to do our own comparison routine. Probably not
// a bad thing anyway since TCPFindArrayEx() is buggy... But that's another
// story.
//
// A very simple (and slow) comparison routine. Speed is not what's
// important here, accuracy is.
//
// This routine will always consume at least one character before doing
// a comparison.
//
// The which_match argument indicates which of the two match strings matched.
// A value of 1 means it matched match1 and a value of 2 means it
// matched match2. If no match was found (searching, done, error), the
// which_match argument is left unchanged.
//
// Either match1 or match2 can be NULL (or an empty string), but not both.
//
// Returns value is error/searching/found depending on the match status.
RESP_RETURN_CODE SearchAndEat(TCP_SOCKET socket,
                              INT8 *which_match,
                              const char *match1,
                              const char *match2);

// Look for the powermeter public key hash header in the http
// response. The routine consumes the headers while it is looking
// for the desired header and stops at either the desired header
// or the cr/lf/cr/lf that is used to indicate the headers are done.
// Since the header is optional, the *found_xheader is true
// if the routine found the header otherwise it is false.
RESP_RETURN_CODE GetXHeader(TCP_SOCKET socket, INT8 *found_xheader);

// Discards all characters until the selected character has been seen. It
// is the caller's responsibility to check for a closed connection.
// The selected character is read in and discarded as well.
RESP_RETURN_CODE SkipToChar(TCP_SOCKET socket, char want);

// Helper functions for sending common data types.
// arg is a char *
void UtilitySendStr(FUNC_ARG arg, INT32 max_size, unsigned char *data);

// arg is a pointer to an INT32 variable
void UtilitySendInt32Ptr(FUNC_ARG arg, INT32 max_size, unsigned char *data);

// arg is an INT32 value
void UtilitySendInt32Val(FUNC_ARG arg, INT32 max_size, unsigned char *data);

// arg is a pointer to an INT64 variable, fixed point is 3 decimal places
// In essence, if we have watts, print out kilowatts...
void UtilitySendInt64FixedPoint3Ptr(FUNC_ARG arg, INT32 max_size,
                                    unsigned char *data);
// arg is an INT32 preference
void UtilitySendPrefInt32Val(FUNC_ARG arg, INT32 max_size,
                             unsigned char *data);
#ifdef __cplusplus
}
#endif

#endif  // ENERGY_POWERMETER_EMBEDDED_TNG_SANDBOX_GUTILITY_H_
