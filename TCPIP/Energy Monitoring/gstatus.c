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
#include "gqueue.h"
#include "gsend.h"
#include "gstatus.h"
#include "gutility.h"

#include "Compiler.h"
#include "TCPIP Stack/TCPIP.h"

#include <stdio.h>

#define TCP_STATUS_TIMEOUT_SEC  10

extern ROM BYTE goog_host[];

static ROM BYTE status_url1[] = "/powermeter/device/status?mfg=";
static ROM BYTE status_url2[] = "&mdl=";
static ROM BYTE build_param[] = "&bld=";
static ROM BYTE device_param[] = "&did=";
static ROM BYTE uptime_param[] = "&up=";
static ROM BYTE reboot_param[] = "&rbt=1";
static ROM BYTE xfer_attempt_param[] = "&xa=";
static ROM BYTE xfer_success_param[] = "&xs=";
static ROM BYTE xfer_time_param[] = "&xt=";
static ROM BYTE xfer_result_param[] = "&xr=";
static ROM BYTE capture_attempt_param[] = "&ca=";
static ROM BYTE capture_success_param[] = "&cs=";

// Optional for debugging purposes
static ROM BYTE error_bad_param[] = "&eb=";
static ROM BYTE error_timeout_param[] = "&et=";
static ROM BYTE error_space_param[] = "&es=";
static ROM BYTE error_value_param[] = "&ev=";
static ROM BYTE error_socket_param[] = "&en=";
static ROM BYTE error_status_param[] = "&sr=";
static ROM BYTE error_batch_success_param[] = "&bs=";
static ROM BYTE error_batch_param[] = "&br=";
static ROM BYTE pub_hash_attempt_param[] = "&ka=";
static ROM BYTE pub_hash_success_param[] = "&ks=";

static ROM BYTE header_get[] = "GET ";
static ROM BYTE header_http_host[] = " HTTP/1.0\r\nHost: ";
static ROM BYTE header_agent_connection[] =
    "\r\nUser-Agent: powermeter\r\nConnection: close\r\n\r\n";

// Forward declare any functions we are going to need to call
// as part of the sending routine.
static void DeviceBuild(FUNC_ARG arg, INT32 max_size, unsigned char *data);
static void DeviceId(FUNC_ARG arg, INT32 max_size, unsigned char *did_str);
static void Uptime(FUNC_ARG arg, INT32 max_size, unsigned char *uptime_str);
static void MaybeReboot(FUNC_ARG arg, INT32 max_size, unsigned char *rbt_str);
static void SignalQuality(FUNC_ARG arg, INT32 max_size, unsigned char *sq_str);
static void GenCounter(FUNC_ARG arg, INT32 max_size, unsigned char *te_str);
static void QueueSize(FUNC_ARG arg, INT32 max_size, unsigned char *qs_str);
static void XferTime(FUNC_ARG arg, INT32 max_size, unsigned char *xfr_str);
static void PktCount(FUNC_ARG arg, INT32 max_size, unsigned char *sq_str);
static void PktSkip(FUNC_ARG arg, INT32 max_size, unsigned char *sq_str);
static void PubHashAttempt(FUNC_ARG arg, INT32 max_size, unsigned char *pk_str);
static void PubHashSuccess(FUNC_ARG arg, INT32 max_size, unsigned char *pk_str);

static SENDER_INFO to_send[] = {
  {(FUNC_OR_STRING) header_get, (FUNC_ARG) 0L, ROM_STRING},
  {(FUNC_OR_STRING) status_url1, (FUNC_ARG) 0L, ROM_STRING},
  {(FUNC_OR_STRING) (ROM BYTE *)DEVICE_MANUFACTURER, (FUNC_ARG) 0L, ROM_STRING},
  {(FUNC_OR_STRING) status_url2, (FUNC_ARG) 0L, ROM_STRING},
  {(FUNC_OR_STRING) (ROM BYTE *)DEVICE_MODEL, (FUNC_ARG) 0L, ROM_STRING},
  {(FUNC_OR_STRING) device_param, (FUNC_ARG) 0L, ROM_STRING},
  {(FUNC_OR_STRING) DeviceId, (FUNC_ARG) 0L, FUNC_CALL},
  {(FUNC_OR_STRING) build_param, (FUNC_ARG) 0L, ROM_STRING},
  {(FUNC_OR_STRING) DeviceBuild, (FUNC_ARG) 0L, FUNC_CALL},
  {(FUNC_OR_STRING) uptime_param, (FUNC_ARG) 0L, ROM_STRING},
  {(FUNC_OR_STRING) Uptime, (FUNC_ARG) 0L, FUNC_CALL},
  {(FUNC_OR_STRING) MaybeReboot, (FUNC_ARG) 0L, FUNC_CALL},
  {(FUNC_OR_STRING) SignalQuality, (FUNC_ARG) 0L, FUNC_CALL},
  {(FUNC_OR_STRING) xfer_attempt_param, (FUNC_ARG) 0L, ROM_STRING},
  {(FUNC_OR_STRING) GenCounter, (FUNC_ARG) (INT32) G_SEND_ATTEMPT0, FUNC_CALL},
  {(FUNC_OR_STRING) xfer_success_param, (FUNC_ARG) 0L, ROM_STRING},
  {(FUNC_OR_STRING) GenCounter, (FUNC_ARG) (INT32) G_SEND_SUCCESS, FUNC_CALL},
  {(FUNC_OR_STRING) xfer_time_param, (FUNC_ARG) 0L, ROM_STRING},
  {(FUNC_OR_STRING) XferTime, (FUNC_ARG) 0L, FUNC_CALL},
  {(FUNC_OR_STRING) xfer_result_param, (FUNC_ARG) 0L, ROM_STRING},
  {(FUNC_OR_STRING) GenCounter, (FUNC_ARG) (INT32) G_SEND_RESULT, FUNC_CALL},
  {(FUNC_OR_STRING) capture_attempt_param, (FUNC_ARG) 0L, ROM_STRING},
  {(FUNC_OR_STRING) GenCounter, (FUNC_ARG) (INT32) G_CAPTURE_ATTEMPT,
    FUNC_CALL},
  {(FUNC_OR_STRING) capture_success_param, (FUNC_ARG) 0L, ROM_STRING},
  {(FUNC_OR_STRING) GenCounter, (FUNC_ARG) (INT32) G_CAPTURE_SUCCESS,
    FUNC_CALL},
  {(FUNC_OR_STRING) error_bad_param, (FUNC_ARG) 0L, ROM_STRING},
  {(FUNC_OR_STRING) GenCounter, (FUNC_ARG) (INT32) G_ERROR_BAD_STATE,
    FUNC_CALL},
  {(FUNC_OR_STRING) error_timeout_param, (FUNC_ARG) 0L, ROM_STRING},
  {(FUNC_OR_STRING) GenCounter, (FUNC_ARG) (INT32) G_ERROR_TIMEOUT, FUNC_CALL},
  {(FUNC_OR_STRING) error_space_param, (FUNC_ARG) 0L, ROM_STRING},
  {(FUNC_OR_STRING) GenCounter, (FUNC_ARG) (INT32) G_ERROR_NO_SEND_SPACE,
    FUNC_CALL},
  {(FUNC_OR_STRING) error_value_param, (FUNC_ARG) 0L, ROM_STRING},
  {(FUNC_OR_STRING) GenCounter, (FUNC_ARG) (INT32) G_ERROR_BAD_VALUE,
    FUNC_CALL},
  {(FUNC_OR_STRING) error_socket_param, (FUNC_ARG) 0L, ROM_STRING},
  {(FUNC_OR_STRING) GenCounter, (FUNC_ARG) (INT32) G_ERROR_NO_SOCKET,
    FUNC_CALL},
  {(FUNC_OR_STRING) error_status_param, (FUNC_ARG) 0L, ROM_STRING},
  {(FUNC_OR_STRING) GenCounter, (FUNC_ARG) (INT32) G_STATUS_RESULT, FUNC_CALL},
  {(FUNC_OR_STRING) error_batch_success_param, (FUNC_ARG) 0L, ROM_STRING},
  {(FUNC_OR_STRING) GenCounter, (FUNC_ARG) (INT32) G_BATCH_SEND_SUCCESS,
    FUNC_CALL},
  {(FUNC_OR_STRING) error_batch_param, (FUNC_ARG) 0L, ROM_STRING},
  {(FUNC_OR_STRING) GenCounter, (FUNC_ARG) (INT32) G_BATCH_SEND_RESULT,
    FUNC_CALL},
  {(FUNC_OR_STRING) QueueSize, (FUNC_ARG) 0L, FUNC_CALL},
  {(FUNC_OR_STRING) PktCount, (FUNC_ARG) 0L, FUNC_CALL},
  {(FUNC_OR_STRING) PktSkip, (FUNC_ARG) 0L, FUNC_CALL},
  {(FUNC_OR_STRING) pub_hash_success_param, (FUNC_ARG) 0L, ROM_STRING},
  {(FUNC_OR_STRING) PubHashSuccess, (FUNC_ARG) 0L, FUNC_CALL},
  {(FUNC_OR_STRING) pub_hash_attempt_param, (FUNC_ARG) 0L, ROM_STRING},
  {(FUNC_OR_STRING) PubHashAttempt, (FUNC_ARG) 0L, FUNC_CALL},
  {(FUNC_OR_STRING) header_http_host, (FUNC_ARG) 0L, ROM_STRING},
  {(FUNC_OR_STRING) goog_host, (FUNC_ARG) 0L, ROM_STRING},
  {(FUNC_OR_STRING) header_agent_connection, (FUNC_ARG) 0L, ROM_STRING},
  {(FUNC_OR_STRING) ((ROM BYTE *) NULL), (FUNC_ARG) 0L, NO_MORE},
};

typedef  enum _status_state {
  S_START,
  S_SOCKET_OBTAINED,
  S_SSL_START,
  S_SSL_HANDSHAKE,
  S_HEADER_SEND_START,
  S_HEADER_SEND,
  S_RESPONSE_START,
  S_RESPONSE,
  S_DISCONNECT,
  S_DONE
} STATUS_STATE;


static STATUS_STATE current_status_state = S_DONE;

static INT16 status_response;

#define MAX_STRING_BUFFER       33

void GStatus(void) {
  // Only kick the status state machine if it isn't already in the middle
  // of something (don't let status and send happen at the same time).
  if (!(GStatusHasWork() || GSendHasWork())) {
    current_status_state = S_START;
  }
}

INT8 GReadyToStatus(void) {
  INT32 time_delta;
  time_delta = GetUtcTimeSec();
  time_delta -= GetTimestamp(G_STATUS_ATTEMPT);

  return (time_delta > GSTATUS_INTERVAL_SECS);
}

// Only reason this isn't static is so that the unittests
// can easily reset things to a known state.
void GStatusResetState(void) {
  current_status_state = S_DONE;
}

// If we are in the S_DONE state, then there is no work to do.
INT8 GStatusHasWork(void) {
 return current_status_state != S_DONE;
}

void GStatusDoWork(void) {
  static INT32 timeout_timer;
  static TCP_SOCKET status_socket = INVALID_SOCKET;
  static INT16 send_index;

  switch (current_status_state) {
    case S_START:
      // If we are here, we've made an attempt to send a status.
      IncCounter(G_STATUS_ATTEMPT);
      status_response = 0;

      status_socket = TCPOpen((DWORD) goog_host, TCP_OPEN_RAM_HOST,
                              GOOGLE_STATUS_PORT, TCP_PURPOSE_DEFAULT);

      // Abort operation if no TCP socket of type TCP_PURPOSE_DEFAULT
      // is available.
      if (INVALID_SOCKET == status_socket) {
        // Try again later. Need to set to S_DONE so later is not the
        // next time in the main() loop, but a while later.
        IncCounter(G_ERROR_NO_SOCKET);
        SetCounter(G_STATUS_RESULT, 1);
        current_status_state = S_DONE;
        break;
      }

      // Clear any pending resets as we've just opened the socket
      TCPWasReset(status_socket);

      // Make sure we don't try sending status for too long...
      timeout_timer = GetUtcTimeSec();
      current_status_state = S_SOCKET_OBTAINED;
      break;

    case S_SOCKET_OBTAINED:
      // Wait for the remote server to accept our connection request
      if (!TCPIsConnected(status_socket)) {
        // Time out if too much time is spent in this state
        if ((GetUtcTimeSec() - timeout_timer) > TCP_STATUS_TIMEOUT_SEC) {
          IncCounter(G_ERROR_TIMEOUT);
          SetCounter(G_STATUS_RESULT, 2);
          current_status_state = S_DISCONNECT;
        }
        break;
      }

      // Reset the timeout timer and onto the next state.
      timeout_timer = GetUtcTimeSec();
#if defined(LOCAL_TESTING)
      current_status_state = S_HEADER_SEND_START;
#else
      current_status_state = S_SSL_START;
#endif
      break;

    case S_SSL_START:
      // NOTE: The microchip stack ignores the host name certificate check.
      if (!TCPStartSSLClientEx(
          status_socket, (unsigned char *) "google.com",
          (void *) &gpkey_info, SSL_SUPPLEMENTARY_DATA_CERT_PUBLIC_KEY)) {
        IncCounter(G_ERROR_NO_SOCKET);
        SetCounter(G_STATUS_RESULT, 9);
        current_status_state = S_DISCONNECT;
        break;
      }

      timeout_timer = GetUtcTimeSec();
      current_status_state = S_SSL_HANDSHAKE;
      break;

    case S_SSL_HANDSHAKE:
      if (TCPSSLIsHandshaking(status_socket)) {
        // Time out if too much time is spent in this state
        // Setting up an https connection takes time so increase the timeout...
        if ((GetUtcTimeSec() - timeout_timer) > TCP_STATUS_TIMEOUT_SEC) {
          IncCounter(G_ERROR_TIMEOUT);
          SetCounter(G_STATUS_RESULT, 10);
          current_status_state = S_DISCONNECT;
        }
        break;
      }

      timeout_timer = GetUtcTimeSec();
      current_status_state = S_HEADER_SEND_START;
      break;

    // Prep for sending a header
    case S_HEADER_SEND_START:
      send_index = 0;
      timeout_timer = GetUtcTimeSec();
      current_status_state = S_HEADER_SEND;
      break;

    case S_HEADER_SEND:
      {
        SEND_RETURN_CODE res;
        res = SendTcpDataViaArray(status_socket, to_send, TRUE,
                                  &send_index, NULL);
        switch (res) {
          case SEND_SUCCESS:
            timeout_timer = GetUtcTimeSec();
            break;

          case SEND_WAITING:
            if ((GetUtcTimeSec() - timeout_timer) > TCP_STATUS_TIMEOUT_SEC) {
              IncCounter(G_ERROR_TIMEOUT);
              SetCounter(G_STATUS_RESULT, 3);
              current_status_state = S_DISCONNECT;
            }
            break;

          case SEND_DONE:
            timeout_timer = GetUtcTimeSec();
            current_status_state = S_RESPONSE_START;
            break;

          case SEND_ERROR:
          default:
            IncCounter(G_ERROR_BAD_STATE);
            SetCounter(G_STATUS_RESULT, 4);
            current_status_state = S_DISCONNECT;
        }
      }
      break;

    // Prep for getting a response
    case S_RESPONSE_START:
      // Make sure all of our status information has been sent
      TCPFlush(status_socket);

      // and setup for getting a response.
      status_response = 0;
      timeout_timer = GetUtcTimeSec();
      current_status_state = S_RESPONSE;
      break;

    case S_RESPONSE:
      {
        RESP_RETURN_CODE res;
        res = GetStatusResponse(status_socket, &status_response);
        switch (res) {
          case RESP_FOUND:
            // If we found a response, then note if it was a success
            // but in either case, we can close the connection now.
            if ((200 == status_response) || (204 == status_response)) {
              IncCounter(G_STATUS_SUCCESS);
            }
            SetCounter(G_STATUS_RESULT, status_response);
            // TODO(css): Is there any advantage to draining the
            // connection before closing it? If so, then we should add
            // an S_DRAIN state and transition to that from here instead
            // of transitioning to S_DISCONNECT.
            current_status_state = S_DISCONNECT;
            break;

          case RESP_SEARCHING:
            if ((GetUtcTimeSec() - timeout_timer) > TCP_STATUS_TIMEOUT_SEC) {
              IncCounter(G_ERROR_TIMEOUT);
              SetCounter(G_STATUS_RESULT, 5);
              current_status_state = S_DISCONNECT;
            }
            break;

          case RESP_CLOSED:
            SetCounter(G_STATUS_RESULT, 6);
            current_status_state = S_DISCONNECT;
            break;

          case RESP_ERROR:
          default:
            IncCounter(G_ERROR_BAD_STATE);
            SetCounter(G_STATUS_RESULT, 7);
            current_status_state = S_DISCONNECT;
        }
      }
      break;

    case S_DISCONNECT:
      // Close the socket so it can be used by other modules
      // For this application, we wish to stay connected, but this state
      // will still get entered if the remote server decides to disconnect
      TCPDisconnect(status_socket);
      status_socket = INVALID_SOCKET;
      current_status_state = S_DONE;
      break;

    case S_DONE:
      // S_DONE means do nothing. Shouldn't get here, but no harm
      // in having a no op for it.
      break;

    default:
      // Getting here is an actual mistake. Alas in the embedded world,
      // not always a good way to indicate a mistake.
      // Mostly helps for debug, less for production...
      IncCounter(G_ERROR_BAD_STATE);
      SetCounter(G_STATUS_RESULT, 8);

      // Abort and hope the next time through the loop we do better.
      if (INVALID_SOCKET != status_socket) {
        TCPDisconnect(status_socket);
        status_socket = INVALID_SOCKET;
      }
      current_status_state = S_DONE;
  }
}

static void DeviceBuild(FUNC_ARG arg, INT32 max_size,
                        unsigned char *build_str) {
  INT32 lbuild;
  // The largest an INT32 can be is 2 ** 32 = 4 294 967 296
  // which is 10 characters. Play it safe - if we don't
  // have enough room, don't bother trying.
  if (max_size > 12) {
    lbuild = GetBuildNumber();
    sprintf((char *) build_str, "%ld", lbuild);
  } else {
    // Not enough room. Increment a failure counter?
    // Or hope we catch this during debug since it shouldn't
    // happen in real life for values this small.
    *build_str = '\0';
  }
}

static void Uptime(FUNC_ARG arg, INT32 max_size,
                   unsigned char *uptime_str) {
  INT32 uptime;
  // The largest an INT32 can be is 2 ** 32 = 4 294 967 296
  // which is 10 characters. Play it safe - if we don't
  // have enough room, don't bother trying.
  if (max_size > 12) {
    uptime = GetUptimeSec();
    sprintf((char *) uptime_str, "%ld", uptime);
  } else {
    // Not enough room. Increment a failure counter?
    // Or hope we catch this during debug since it shouldn't
    // happen in real life for values this small.
    *uptime_str = '\0';
  }
}

static void MaybeReboot(FUNC_ARG arg, INT32 max_size, unsigned char *rbt_str) {
  *rbt_str = '\0';
  if (max_size > 7) {
    if (GetCounter(G_STATUS_SUCCESS) < 1) {
      sprintf((char *) rbt_str, "%s", reboot_param);
    }
  }
}

static void DeviceId(FUNC_ARG arg, INT32 max_size, unsigned char *did_str) {
  if (max_size > 14) {
    const UINT8 *mac = GetMac();
    sprintf((char *) did_str, "m%02X%02X%02X%02X%02X%02X",
       mac[0], mac[1], mac[2], mac[3], mac[4], mac[5]);
  } else {
    *did_str = '\0';
  }
}

// Output 32-bit counter values. The enum of the counter to show is
// passed in as an INT32 in arg.
static void GenCounter(FUNC_ARG arg, INT32 max_size, unsigned char *te_str) {
  INT32 val;
  UINT8 i;
  if (max_size > 14) {
    if (arg.generic_data != G_SEND_ATTEMPT0) {
      val = GetCounter(arg.generic_data);
    } else {
      val = 0;
      for (i = 0; i < GQ_NUM_QUEUES; i++) {
        val += GetCounter(G_SEND_ATTEMPT0 + i);
      }
    }
    sprintf((char *) te_str, "%ld", val);
  } else {
    *te_str = '\0';
  }
}

static void QueueSize(FUNC_ARG arg, INT32 max_size, unsigned char *qs_str) {
  if (max_size > 20) {
    // Always print out the zero'th entry and any non-zero entries
    INT16 which = (INT16) arg.generic_data;
    INT32 val = GNumQue(which);
    if ((val) || (0 == which)) {
      sprintf((char *) qs_str, "&qs%d=%ld", which, val);
    }
  } else {
    *qs_str = '\0';
  }
}

static void XferTime(FUNC_ARG arg, INT32 max_size, unsigned char *xfr_str) {
  if (max_size > 14) {
    INT32 val = GetTimestamp(G_SEND_SUCCESS);
    sprintf((char *) xfr_str, "%ld", val);
  } else {
    *xfr_str = '\0';
  }
}

static void SignalQuality(FUNC_ARG arg, INT32 max_size, unsigned char *sq_str) {
  if (max_size > 20) {
    UINT32 val = GetSQ((INT16) arg.generic_data);
    // Always print out the zero'th entry and any non-zero entries
    if ((val) || (0 == arg.generic_data)) {
      sprintf((char *) sq_str, "&sq%d=%ld", (INT16) arg.generic_data, val);
    }
  } else {
    *sq_str = '\0';
  }
}

static void PktCount(FUNC_ARG arg, INT32 max_size, unsigned char *sq_str) {
  if (max_size > 20) {
    UINT32 count;
    // Always print out the zero'th entry and any non-zero entries
    GetSQDetails((INT16) arg.generic_data, &count, NULL);
    if ((count) || (0 == arg.generic_data)) {
      sprintf((char *) sq_str, "&pc%d=%ld", (INT16) arg.generic_data, count);
    }
  } else {
    *sq_str = '\0';
  }
}

static void PktSkip(FUNC_ARG arg, INT32 max_size, unsigned char *sq_str) {
  if (max_size > 20) {
    UINT32 skip;
    // Always print out the zero'th entry and any non-zero entries
    GetSQDetails((INT16) arg.generic_data, NULL, &skip);
    if ((skip) || (0 == arg.generic_data)) {
      sprintf((char *) sq_str, "&ps%d=%ld", (INT16) arg.generic_data, skip);
    }
  } else {
    *sq_str = '\0';
  }
}

static void PubHashAttempt(FUNC_ARG arg, INT32 max_size,
                           unsigned char *pk_str) {
  if (max_size > 14) {
    INT32 val = GetCounter(G_PUBKEY_ATTEMPT);
    sprintf((char *) pk_str, "%ld", val);
  } else {
    *pk_str = '\0';
  }
}

static void PubHashSuccess(FUNC_ARG arg, INT32 max_size,
                           unsigned char *pk_str) {
  if (max_size > 14) {
    INT32 val = GetCounter(G_PUBKEY_SUCCESS);
    sprintf((char *) pk_str, "%ld", val);
  } else {
    *pk_str = '\0';
  }
}
