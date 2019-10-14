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

#include "gcounter.h"
#include "ginsu.h"
#include "gutility.h"

#include <ctype.h>
#include <stdlib.h>
#include <string.h>

// This is allocated on the stack, so make sure we keep it small...
// But not too small as usually we need to send numbers and 2**32
// is a number that is at least 11 characters long...
#define SEND_STRING_BUFFER_MAX (MAX_TCP_SEND_BYTES - 1)

// NOTE: The microchip TCP documentation recommends using TCPWasReset()
// instead of TCPIsConnected() to determine if a connection has closed.
//
// NOTE2: For the microchip environment, always check for data before
// checking if the tcp connection has closed. It is possible for
// (TCPWasReset() == TRUE) and (TCPIsGetReady(socket) != 0) to both
// be true. Thus, check and do work for TCPIsGetReady() before checking
// for a closed TCP connection.
//
// NOTE3: There is a potential race condition between TCPWasReset() and
// TCPIsGetReady(). Specifically:
//
// a) TCPIsGetReady() == 0
// b) Data arrives as well as a reset
// c) TCPWasReset() is true (but now TCPIsGetReady() != 0)
//
// Better:
// a) INT8 was_reset = TCPWasReset()
// b) Check TCPIsGetReady() and handle
// c) React to was_reset
//
// NOTE4: TCPWasReset() is a self clearing boolean. Described as "has
// a reset been seen since the last call". Don't depend on two calls in
// a row returning TRUE (or FALSE for that matter).
//

SEND_RETURN_CODE SendTcpDataViaArray(TCP_SOCKET socket,
                                     SENDER_INFO *send_array,
                                     INT8 for_real,
                                     INT16 *current_index,
                                     INT32 *amt) {
  unsigned char send_string[SEND_STRING_BUFFER_MAX];
  INT16 send_len;

  SENDER_INFO *send_this = &(send_array[*current_index]);

  if ((NO_MORE == send_this->send_type) ||
      (NULL == send_this->send_data.data_string)) {
    return SEND_DONE;
  }

  switch (send_this->send_type) {
    case ROM_STRING:
      send_len = strlen((const char *)
                        (send_this->send_data.data_string));
      break;

    case FUNC_CALL:
      // Zero'ing the send data buffer helps prevent accidents
      // where the called function forgets to null terminate...
      // Also makes debugging easier as there is no risk of
      // accidently sending old data.
      memset(send_string, 0, sizeof(send_string));
      (*(send_this->send_data.data_function))(send_this->send_arg,
                                              sizeof(send_string) - 1,
                                              send_string);

      // Make sure we never go past the end of the buffer
      // in the code below. Sill the risk the function above
      // trashed things, but no risk the code below did...
      send_string[sizeof(send_string) - 1] = '\0';

      send_len = strlen((const char *) send_string);
      break;

    default:
      // This is an error. At least make it do no harm.
      IncCounter(G_ERROR_BAD_STATE);
      return SEND_ERROR;
  }

  if (for_real) {
    // Make sure we have room...
    if ((send_len + 1) >= MAX_TCP_SEND_BYTES) {
      IncCounter(G_ERROR_NO_SEND_SPACE);
      return SEND_ERROR;
    }

    if (TCPIsPutReady(socket) < (send_len + 1)) {
      return SEND_WAITING;
    }

    // If we got here, there was room to send data
    if (ROM_STRING == send_this->send_type) {
      ROM unsigned char *tmp;
      tmp = TCPPutROMString(socket, send_this->send_data.data_string);
      // Not pointing to '\0' means failure since we checked for space
      // before calling the put routine
      if (*tmp) {
        IncCounter(G_ERROR_NO_SEND_SPACE);
        return SEND_ERROR;
      }
    } else {
      unsigned char *tmp;
      tmp = TCPPutString(socket, send_string);
      // Not pointing to '\0' means failure since we checked for space
      // before calling the put routine
      if (*tmp) {
        IncCounter(G_ERROR_NO_SEND_SPACE);
        return SEND_ERROR;
      }
    }
  }

  if (amt) {
    *amt += send_len;
  }

  // Move to the next element to send and see if we are done.
  ++(*current_index);

  return SEND_SUCCESS;
}

// We are looking for the "HTTP/1.0 204 No Content"
// header response. So skip all data through to the space
// and then atoi the data after the space. Hopefully
// that will be an HTTP status value.
RESP_RETURN_CODE GetStatusResponse(TCP_SOCKET socket, INT16 *status_response) {
  INT8 was_reset = TCPWasReset(socket);

  // Always chomp characters until we get to a space
  RESP_RETURN_CODE res = SkipToChar(socket, ' ');

  if (RESP_FOUND == res) {
    BYTE status_text[5];
    // Status response is the space plus three characters for
    // the status code.
    TCPGetArray(socket, status_text, 4);

    // Make sure there are no accidents...
    status_text[sizeof(status_text) - 1] = '\0';
    *status_response = atoi((const char *) status_text);
    return RESP_FOUND;
  }

  if (was_reset) {
    return RESP_CLOSED;
  }

  return RESP_SEARCHING;
}

// Due to the way TCPWasReset() is implemented, the check for a
// closed connection should be done by the caller of this routine.
// Don't want to put TCPWasReset() in this routine as reading it
// can cause the state to change which makes it painful to do
// distributed RCPWasReset() calls. Calling TCPIsGetReady() on
// a "closed" socket simply returns 0 if there is no data, so
// no harm in not checking for reset/close in these routines.
RESP_RETURN_CODE SkipToChar(TCP_SOCKET socket, char want) {
  WORD w = TCPIsGetReady(socket);
  if (!w) {
    return RESP_SEARCHING;
  }

  WORD spot = TCPFindEx(socket, want, 0, 0, FALSE);
  if (0xffff == spot) {
    TCPGetArray(socket, NULL, w);
    return RESP_SEARCHING;
  } else {
    TCPGetArray(socket, NULL, spot);
    return RESP_FOUND;
  }
}

// We are looking for the string "status code='xxx'" in the response
RESP_RETURN_CODE GetBatchStatusResponse(TCP_SOCKET socket,
                                        INT16 *status_response) {
  INT16 i;
  INT8 which_one;
  INT8 was_reset = TCPWasReset(socket);

  RESP_RETURN_CODE res = SearchAndEat(socket, &which_one,
                                      "status code=", NULL);
  if (RESP_FOUND == res) {
    BYTE status_text[4];

    // skip the char after the equal
    TCPGet(socket, &(status_text[0]));

    // get the numbers (up to three of them)
    for (i = 0; i < 3; i++) {
      TCPGet(socket, &(status_text[i]));
    }

    // Make sure there are no accidents...
    status_text[sizeof(status_text) - 1] = '\0';
    *status_response = atoi((const char *) status_text);
    return RESP_FOUND;
  }

  if (was_reset) {
    return RESP_CLOSED;
  }

  return RESP_SEARCHING;
}

BYTE tcp_match_buffer[MAX_MATCH_SIZE];

// Always eats at least one character before starting the search.
// because of the simplistic implementation, always eats at
// least max(strlen(match1),strlen(match2)) characters in order
// to find a match.
// Simplistic implementation is fine because not time critical.
RESP_RETURN_CODE SearchAndEat(TCP_SOCKET socket,
                              INT8 *which_match,
                              const char *match1,
                              const char *match2) {
  WORD i;
  INT16 match1_size = 0;
  INT16 match2_size = 0;

  if (match1) {
    match1_size = strlen(match1);
  }

  if (match2) {
    match2_size = strlen(match2);
  }

  // Our matching buffer is limited in size.
  if ((match1_size >= MAX_MATCH_SIZE) || (match2_size >= MAX_MATCH_SIZE)) {
    return RESP_ERROR;
  }

  // Either match1 or match2 must be comparable or there's no
  // point to being here.
  if (!(match2_size || match1_size)) {
    return RESP_ERROR;
  }

  // Only rotate as many characters as we can possibly match.
  // Means less time spent rotating and don't eat characters
  // unless they are needed for comparison.
  INT16 max_match = match1_size;
  if (max_match < match2_size) {
    max_match = match2_size;
  }

  WORD w = TCPIsGetReady(socket);

  for (i = 0; i < w; i++) {
    memmove(&(tcp_match_buffer[0]),
            &(tcp_match_buffer[1]),
            max_match - 1);
    TCPGet(socket, &(tcp_match_buffer[max_match - 1]));

    if (match1_size) {
      if (0 == memcmp(tcp_match_buffer, match1, match1_size)) {
        *which_match = 1;
        return RESP_FOUND;
      }
    }

    if (match2_size) {
      if (0 == memcmp(tcp_match_buffer, match2, match2_size)) {
        *which_match = 2;
        return RESP_FOUND;
      }
    }
  }

  return RESP_SEARCHING;
}

// We are looking for HEADER_PUBKEY_HASH as a header in the response. Since
// this is an optional header, we need to search for it as well as the
// header termination sequence HEADER_END. If we see the header, use
// it. If we see HEADER_END, we've come to the end of the headers which
// implies the header we want isn't there.
//
// We need at least sizeof(HEADER_END) bytes in the buffer to check
// for the header end sequence and at least sizeof(HEADER_PUBKEY_HASH)
// bytes in the buffer to make it easier to search for the
// desired header.
RESP_RETURN_CODE GetXHeader(TCP_SOCKET socket, INT8 *found_xheader) {
  INT8 which_one;
  INT8 was_reset = TCPWasReset(socket);

  RESP_RETURN_CODE res = SearchAndEat(socket, &which_one,
                                      HEADER_END, HEADER_PUBKEY_HASH);
  if (RESP_FOUND == res) {
    *found_xheader = (2 == which_one);
    return RESP_FOUND;
  }

  if (was_reset) {
    return RESP_CLOSED;
  }

  return RESP_SEARCHING;
}

// arg is a char *
void UtilitySendStr(FUNC_ARG arg, INT32 max_size, unsigned char *data) {
  strncpy((char *) data, (const char *) arg.generic_ptr, max_size);
  data[max_size - 1] = '\0';
}

// arg is a pointer to an INT32 variable
void UtilitySendInt32Ptr(FUNC_ARG arg, INT32 max_size, unsigned char *data) {
  if (max_size > 15) {
    sprintf((char *) data, "%ld", *((INT32 *) arg.generic_ptr));
  } else {
    *data = '\0';
  }
}

// arg is an INT32 value
void UtilitySendInt32Val(FUNC_ARG arg, INT32 max_size, unsigned char *data) {
  if (max_size > 15) {
    sprintf((char *) data, "%ld", (INT32) arg.generic_data);
  } else {
    *data = '\0';
  }
}


// arg is a pointer to an INT32 variable, fixed point is 3 decimal places
// In essence, if we have watts, print out kilowatts...
void UtilitySendInt64FixedPoint3Ptr(FUNC_ARG arg, INT32 max_size,
                                    unsigned char *data) {
  INT64 val;
  INT64 ipart;
  INT32 fpart;
  char sign = '+';

  val = *((INT64 *) arg.generic_ptr);

  if (val < 0) {
    sign = '-';
    val = val * -1;
  }

  ipart = val / 1000;
  fpart = val % 1000;

  if (max_size > 28) {
    sprintf((char *) data, "%c%lld.%03ld", sign, ipart, fpart);
  } else {
    *data = '\0';
  }
}

// arg is an INT32 value
void UtilitySendPrefInt32Val(FUNC_ARG arg, INT32 max_size,
    unsigned char *data) {
  if (max_size > 15) {
    INT32 val = (INT32) arg.generic_data;
    sprintf((char *) data, "%ld", (INT32) GetPreferenceInt32(val));
  } else {
    *data = '\0';
  }
}
