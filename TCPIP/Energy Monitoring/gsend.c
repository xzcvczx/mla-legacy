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

// The code below is single threaded, not re-entrant and there are a lot
// of assumptions along that line. Thus, the only realistic way to send
// multiple queues of data is to call this routine multiple times - once
// for each queue and let it run to completion.

#include "TCPIP Stack/TCPIP.h"

#include "gcapture.h"
#include "gcounter.h"
#include "ginsu.h"
#include "gpubkey.h"
#include "gqueue.h"
#include "gsend.h"
#include "gstatus.h"
#include "gutility.h"

#define TCP_SEND_TIMEOUT_SEC    10

// Setup the minimum send interval based on the minimum capture interval
// Also trying to keep the number of seconds as a prime number to make sure
// we are grabbing at various times during the day.
#define SEND_LIMIT_SEC (CAPTURE_LIMIT_SEC + 10)

// These variables are used to store preferences while we go through
// the TCP data dump. Don't want the user changing preferences while
// we are in the middle of something...
// These values should be >= the values where preferences are stored
// (in this case SystemConfig.c). Don't forget the null terminator...
char local_auth_path[193];
char local_auth_token[65];

static INT32 est_total;

// NOTE: trickery here.
// The way we compute the Content-Length is to first pretend to send
// the data, count the bytes, and write the Content-Length and then
// actually send the data. This works as long as the data to be
// sent is stateless.

typedef enum _body_state {
  BODY_INIT = 0,
  BODY_PREAMBLE,
  BODY_GET_DATA,
  BODY_WRITE_DATA,
  BODY_POSTAMBLE,
  BODY_SUCCESS,
  BODY_FAIL,
} BODY_STATE;

#define MAX_BATCH_SEND  4

// NOTE: unless this struct is packed, there is wasted space due to
// the UINT8 flags at the end needing padding when this is used as an
// array. However, because the MAX_BATCH_SEND is small, not going to
// worry about the wasted space at the moment. Wasting 1 or 3 bytes
// (depending on if alignement is 2-byte aligned or 4 byte
// aligned) * MAX_BATCH_SEND = 4 or 12 bytes.
typedef struct _data_pair {
  INT64 value;
  INT32 timestamp;
  UINT8 flags;
} DATA_PAIR;

static INT64 watts;
static INT32 timestamp;
static UINT8 flags;

// Which queue is the current queue for sending. This variable should
// never be changed while in the middle of sending data.
static INT16 use_sensor = 0;

static DATA_PAIR data_hold[MAX_BATCH_SEND];
static INT8 num_data_hold;

// the # of batch response codes checke
static INT8 num_batch_responses_checked;
RESP_RETURN_CODE batch_res;
static INT16 batch_response_code;

extern ROM BYTE goog_host[];

// Break up the Header into chunks because we can not write all of it
// in one step
static ROM BYTE header_const1[] = "POST /powermeter/feeds/event HTTP/1.0\r\n";
static ROM BYTE header_const2[] = "Host: ";
// goog_host[] inserted here
static ROM BYTE header_const3[] = "\r\nUser-Agent: powermeter\r\nConnection: "
                                  "close\r\nAuthorization: AuthSub token=\"";
// auth_token[] inserted here
static ROM BYTE header_const4[] = "\"\r\nContent-Type: application/atom+xml"
                                  "\r\nX-powermeter-get-cert-hash: 1"
                                  "\r\n";

static ROM BYTE header_length[] = "Content-Length: ";
static ROM BYTE header_done[] = "\r\n\r\n";

// If we need to send a meter reset, this is the string to send
static ROM BYTE reset_const[] = "<meter:initial/>\n";

// Break up the Body into chunks because we can not write all of it
// in one step. Assume nothing over 100 bytes at a time
// and you'll likely be safe.
static ROM BYTE body_const1[] =
    "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n"
    "<feed xmlns=\"http://www.w3.org/2005/Atom\" ";
static ROM BYTE body_const1a[] =
    "xmlns:meter=\"http://schemas.google.com/meter/2008\">\n";
// 1 or more Data points here
static ROM BYTE body_const2[] = "\n</feed>\r\n\r\n";

// Not in use now.
const char kResetString[] = "<meter:initial/>\n";

// Break up the Body into chunks because we can not write all of it
// in one step. Assume nothing over 100 bytes at a time
// and you'll likely be safe.
static ROM BYTE data_const1[] =
    "<entry>\n"
    "<category scheme=\"http://schemas.google.com/g/2005#kind\" ";
static ROM BYTE data_const1a[] =
    "term=\"http://schemas.google.com/meter/2008#instMeasurement\"/>\n"
    "<meter:subject>\n"
    "https://";
//goog_host
static ROM BYTE data_const2[] = "/powermeter/feeds";
// auth path

// variable (.c1, .c2, etc)
static ROM BYTE data_const3[] =
    "\n</meter:subject>\n"
    "<meter:occurTime meter:uncertainty=\"1.0\">";
// UTC time in RFC XXX format here
static ROM BYTE data_const4[] =
    "</meter:occurTime>\n";

// optional kResetString for overflow

static ROM BYTE data_const5[] =
    "<meter:quantity meter:uncertainty=\"0.001\" "
    "meter:unit=\"kW h\">";
// cumulative power (Kwh) here
static ROM BYTE data_const6[] = "</meter:quantity>\n</entry>\n";

static SEND_STATE current_send_state = SM_DONE;

// Forward declare any functions we are going to need to call
// as part of the sending routine.
static void GetUtc(FUNC_ARG arg, INT32 max_size, unsigned char *data);
static void MaybeSendReset(FUNC_ARG arg, INT32 max_size, unsigned char *data);
static void VariableSuffix(FUNC_ARG arg, INT32 max_size, unsigned char *data);

static SENDER_INFO header_to_send[] = {
  {(FUNC_OR_STRING) header_const1, (FUNC_ARG) 0L, ROM_STRING},
  {(FUNC_OR_STRING) header_const2, (FUNC_ARG) 0L, ROM_STRING},
  {(FUNC_OR_STRING) goog_host, (FUNC_ARG) 0L, ROM_STRING},
  {(FUNC_OR_STRING) header_const3, (FUNC_ARG) 0L, ROM_STRING},
  {(FUNC_OR_STRING) UtilitySendStr, (FUNC_ARG) (void *) local_auth_token,
    FUNC_CALL},
  {(FUNC_OR_STRING) header_const4, (FUNC_ARG) 0L, ROM_STRING},

  // no more to send
  {(FUNC_OR_STRING) ((ROM BYTE *) NULL), (FUNC_ARG) 0L, NO_MORE},
};

static SENDER_INFO length_to_send[] = {
  {(FUNC_OR_STRING) header_length, (FUNC_ARG) 0L, ROM_STRING},
  {(FUNC_OR_STRING) UtilitySendInt32Ptr, (FUNC_ARG) (void *) &est_total,
    FUNC_CALL},
  {(FUNC_OR_STRING) header_done, (FUNC_ARG) 0L, ROM_STRING},
  // no more to send
  {(FUNC_OR_STRING) ((ROM BYTE *) NULL), (FUNC_ARG) 0L, NO_MORE},
};

static SENDER_INFO body_preamble_to_send[] = {
  {(FUNC_OR_STRING) body_const1, (FUNC_ARG) 0L, ROM_STRING},
  {(FUNC_OR_STRING) body_const1a, (FUNC_ARG) 0L, ROM_STRING},
  // no more to send
  {(FUNC_OR_STRING) ((ROM BYTE *) NULL), (FUNC_ARG) 0L, NO_MORE},
};

static SENDER_INFO body_postamble_to_send[] = {
  {(FUNC_OR_STRING) body_const2, (FUNC_ARG) 0L, ROM_STRING},
  // no more to send
  {(FUNC_OR_STRING) ((ROM BYTE *) NULL), (FUNC_ARG) 0L, NO_MORE},
};

static SENDER_INFO data_to_send[] = {
  {(FUNC_OR_STRING) data_const1, (FUNC_ARG) 0L, ROM_STRING},
  {(FUNC_OR_STRING) data_const1a, (FUNC_ARG) 0L, ROM_STRING},
  {(FUNC_OR_STRING) goog_host, (FUNC_ARG) 0L, ROM_STRING},
  {(FUNC_OR_STRING) data_const2, (FUNC_ARG) 0L, ROM_STRING},
  {(FUNC_OR_STRING) UtilitySendStr, (FUNC_ARG) (void *) local_auth_path,
    FUNC_CALL},
  {(FUNC_OR_STRING) VariableSuffix, (FUNC_ARG) (void *) &use_sensor,
    FUNC_CALL},
  {(FUNC_OR_STRING) data_const3, (FUNC_ARG) 0L, ROM_STRING},
  {(FUNC_OR_STRING) GetUtc, (FUNC_ARG) 0L, FUNC_CALL},
  {(FUNC_OR_STRING) data_const4, (FUNC_ARG) 0L, ROM_STRING},
  {(FUNC_OR_STRING) MaybeSendReset, (FUNC_ARG) (void *) &flags,
    FUNC_CALL},
  {(FUNC_OR_STRING) data_const5, (FUNC_ARG) 0L, ROM_STRING},
  {(FUNC_OR_STRING) UtilitySendInt64FixedPoint3Ptr,
    (FUNC_ARG) (void *) &watts, FUNC_CALL},
  {(FUNC_OR_STRING) data_const6, (FUNC_ARG) 0L, ROM_STRING},
  // no more to send
  {(FUNC_OR_STRING) ((ROM BYTE *) NULL), (FUNC_ARG) 0L, NO_MORE},
};

static UINT8 ever_sent[GQ_NUM_QUEUES];

void GSendInitialFlag(UINT8 send_now) {
  INT16 i;

  for (i = 0; i < GQ_NUM_QUEUES; i++) {
    ever_sent[i] = FALSE;
  }

  if (send_now) {
    SetTimestamp(G_SEND_ATTEMPT0 + use_sensor, 0);
  }
}

INT16 GSendNextVariable(void) {
  // Never touch the use_sensor variable if we are in the middle of work.
  if (!GSendHasWork()) {
    use_sensor++;
    if (use_sensor >= GQ_NUM_QUEUES) {
      use_sensor = 0;
    }
  }

  return use_sensor;
}

// Send the data to google via the gdata api.
void GSend(void) {
  // Empty queue means nothing to do.
  if (GIsQueEmpty(use_sensor)) {
    return;
  }

  // Don't start up a data send if we're still in the process of doing
  // either a status send or a data send.
  if (!(GSendHasWork() || GStatusHasWork())) {
    current_send_state = SM_HOME;
  }
}

INT8 GReadyToSend(void) {
  INT32 time_delta;
  INT32 send_interval_secs;

  // Cycle through the sensors
  GSendNextVariable();

  // Empty queue means there is nothing to send.
  if (GIsQueEmpty(use_sensor)) {
    return FALSE;
  }

  // Otherwise see if it is time to make another send attempt.
  send_interval_secs = GetPreferenceInt32(SEND_SEC_INT);
  if (send_interval_secs < SEND_LIMIT_SEC) {
    send_interval_secs = SEND_LIMIT_SEC;
  }

  // NOTE: Implicit assumption that there is one G_SEND_ATTEMPT + N for
  // every sensor N.
  time_delta = GetUtcTimeSec();
  time_delta -= GetTimestamp(G_SEND_ATTEMPT0 + use_sensor);

  return (time_delta >= send_interval_secs);
}

void GSendResetState(void) {
  current_send_state = SM_DONE;
  use_sensor = 0;
}

// If we are in the SM_DONE state, then there is no work to be done.
INT8 GSendHasWork(void) {
  return current_send_state != SM_DONE;
}

// Used primarily for testing.
SEND_STATE GetCurrentTCPClientState(void) {
  return current_send_state;
}

// Put the data that we held onto back into the queue to be sent later.
// Generally called when there was an error of some sort while
// transferring data to google.
static void PutDataBackOnQue(INT16 num_data, DATA_PAIR *data) {
  INT16 i;
  for (i = num_data; i > 0; --i) {
    GAddHead(use_sensor,
             data[i - 1].timestamp,
             data[i - 1].value,
             data[i - 1].flags);
  }
}

// As part of the http POST protocol, the sender of the data must
// include a content length for the body of the data getting sent
// as part of the header. So, one must know what is going to be
// sent as part of the POST before hand and one can't create the POST
// data on the fly. For most normal environment, this translates into
// a buffer somewhere that gets the post data and a "strlen()" style
// function to generate the required Content-Length header. However, in
// our world, we don't have a reasonable sized buffer available to us, so
// instead, we generate the POST body data twice - the first time
// we don't actually output anything, we just count how many characters
// we would output and then the second time we actually output the body.
//
// The for_real flag is used to indicate whether we want the data to
// actually be sent out via TCP/IP - true means send the data, false means
// don't send the data.
// The number of bytes written (or would be written) is stored in the
// amt paramter. If the amt paramter is NULL, no counting of bytes is
// done.
static void SendBody(TCP_SOCKET body_socket, BODY_STATE *body_state,
                     INT8 num_data, DATA_PAIR *data,
                     INT8 for_real, INT32 *amt) {
  static INT32 body_timer;
  static INT8 which_data;
  static INT16 body_index;

  SEND_RETURN_CODE res;

  switch(*body_state) {
    case BODY_INIT:
      body_index = 0;
      which_data = 0;
      body_timer = GetUtcTimeSec();
      *body_state = BODY_PREAMBLE;
      break;

    case BODY_PREAMBLE:
      res = SendTcpDataViaArray(body_socket, body_preamble_to_send,
                                for_real, &body_index, amt);
      switch (res) {
        case SEND_SUCCESS:
          body_timer = GetUtcTimeSec();
          break;

        case SEND_WAITING:
          if ((GetUtcTimeSec() - body_timer) > TCP_SEND_TIMEOUT_SEC) {
            IncCounter(G_ERROR_TIMEOUT);
            SetCounter(G_SEND_RESULT, 5);
            *body_state = BODY_FAIL;
          }
          break;

        case SEND_DONE:
          // reset the timer and move onto the next state
          body_index = 0;
          body_timer = GetUtcTimeSec();
          *body_state = BODY_GET_DATA;
          break;

        case SEND_ERROR:
        default:
          IncCounter(G_ERROR_BAD_STATE);
          SetCounter(G_SEND_RESULT, 6);
          *body_state = BODY_FAIL;
      }
      break;

    case BODY_GET_DATA:
      // reset the timer and move onto the next state
      body_index = 0;
      body_timer = GetUtcTimeSec();
      watts = data[which_data].value;
      timestamp = data[which_data].timestamp;
      flags = data[which_data].flags;
      *body_state = BODY_WRITE_DATA;
      break;

    case BODY_WRITE_DATA:
      // send the data
      res = SendTcpDataViaArray(body_socket, data_to_send, for_real,
                                &body_index, amt);
      switch (res) {
        case SEND_SUCCESS:
          body_timer = GetUtcTimeSec();
          break;

        case SEND_WAITING:
          if ((GetUtcTimeSec() - body_timer) > TCP_SEND_TIMEOUT_SEC) {
            IncCounter(G_ERROR_TIMEOUT);
            SetCounter(G_SEND_RESULT, 8);
            *body_state = BODY_FAIL;
          }
          break;

        case SEND_DONE:
          // reset the timer
          body_index = 0;
          body_timer = GetUtcTimeSec();
          ++which_data;
          if (which_data < num_data) {
            *body_state = BODY_GET_DATA;
          } else {
            *body_state = BODY_POSTAMBLE;
          }
          break;

        case SEND_ERROR:
        default:
          IncCounter(G_ERROR_BAD_STATE);
          SetCounter(G_SEND_RESULT, 10);
          *body_state = BODY_FAIL;
      }
      break;

    case BODY_POSTAMBLE:
      res = SendTcpDataViaArray(body_socket, body_postamble_to_send,
                                for_real, &body_index, amt);
      switch (res) {
        case SEND_SUCCESS:
          body_timer = GetUtcTimeSec();
          break;

        case SEND_WAITING:
          if ((GetUtcTimeSec() - body_timer) > TCP_SEND_TIMEOUT_SEC) {
            IncCounter(G_ERROR_TIMEOUT);
            SetCounter(G_SEND_RESULT, 11);
            *body_state = BODY_FAIL;
          }
          break;

        case SEND_DONE:
          // reset the timer and move onto the next state
          body_index = 0;
          body_timer = GetUtcTimeSec();
          *body_state = BODY_SUCCESS;
          break;

        case SEND_ERROR:
        default:
          IncCounter(G_ERROR_BAD_STATE);
          SetCounter(G_SEND_RESULT, 12);
          *body_state = BODY_FAIL;
      }
      break;
    default:
      IncCounter(G_ERROR_BAD_STATE);
      SetCounter(G_SEND_RESULT, 17);
      *body_state = BODY_FAIL;
  }
}

void GSendDoWork(void) {
  static INT32 timeout_timer;
  static TCP_SOCKET send_socket = INVALID_SOCKET;
  static INT16 send_index;
  static INT16 response_code;
  static BODY_STATE body_state;
  static INT32 actual_total;

  SEND_RETURN_CODE res;

  switch(current_send_state) {
    case SM_HOME:
      // If we are here, we've made an attempt to send data
      IncCounter(G_SEND_ATTEMPT0 + use_sensor);
      response_code = 0;

      // Each time we go through the send loop, grab the preferences.
      // This allows the preferences to change, but only before we initiate
      // the connection. After we've started sending data, ignore
      // any preference changes until the next data send.

      // So start with the token.
      strncpy(local_auth_token, GetPreferenceStr(AUTH_TOKEN_STR),
              sizeof(local_auth_token));
      local_auth_token[sizeof(local_auth_token) - 1] = '\0';

      // Then the path
      strncpy(local_auth_path, GetPreferenceStr(AUTH_PATH_STR),
              sizeof(local_auth_path));
      local_auth_path[sizeof(local_auth_path) - 1] = '\0';

      // If there is no path or there is no token, or if the path
      // doesn't start with a slash, assume the user doesn't want to
      // send data to google and just leave.
      // We count these as attempts so that we don't accidently end up
      // in a loop of SM_HOME -> SM_DONE -> SM_HOME -> SM_DONE... every
      // time through the loop which causes the status to never get
      // sent (status is only sent if the data is not being attempted
      // and checking for whether to send data always is done first as
      // sending data is more important than sending status).
      if (!(*local_auth_token && *local_auth_path) ||
          (*local_auth_path != '/')) {
        SetCounter(G_SEND_RESULT, 19);
        current_send_state = SM_DONE;
        break;
      }

      // Connect a socket to the remote TCP server
      send_socket = TCPOpen((DWORD) goog_host, TCP_OPEN_RAM_HOST,
                            GOOGLE_DATA_PORT, TCP_PURPOSE_DEFAULT);

      // Abort operation if no TCP socket of the appropriate type is available.
      // If this ever happens, you need to go add one to TCPIPConfig.h
      if (INVALID_SOCKET == send_socket) {
        IncCounter(G_ERROR_NO_SOCKET);
        SetCounter(G_SEND_RESULT, 1);
        current_send_state = SM_DONE;
        break;
      }

      // Clear any old reset flags.
      TCPWasReset(send_socket);

      // reset the timer and move onto the next state
      timeout_timer = GetUtcTimeSec();
      current_send_state = SM_SOCKET_OBTAINED;
      break;

    case SM_SOCKET_OBTAINED:
      // Wait for the remote server to accept our connection request
      if(!TCPIsConnected(send_socket)) {
        // Time out if too much time is spent in this state
        if ((GetUtcTimeSec() - timeout_timer) > TCP_SEND_TIMEOUT_SEC) {
          // record a timeout error, then disconnect
          IncCounter(G_ERROR_TIMEOUT);
          SetCounter(G_SEND_RESULT, 2);
          current_send_state = SM_DISCONNECT;
        }
        break;
      }

      // reset the timer and move onto the next state
      timeout_timer = GetUtcTimeSec();
#if defined(LOCAL_TESTING)
      current_send_state = SM_PRE_HEADER;
#else
      current_send_state = SM_SSL_START;
#endif
      break;

    case SM_SSL_START:
      // NOTE: SM_SSL_START doesn't really have a timeout case as the
      // TCPStartSSLClient() call will return either success or failure
      // so we will always only be in SM_SSL_START for one "cycle" before
      // transitioning into either SM_DISCONNECT or SM_SSL_HANDSHAKE

      // Setup the check on the google public key bits
      SetupCheckPubKeyHash(send_socket);

      // NOTE: The microchip stack ignores the host name certificate check.
      if (!TCPStartSSLClientEx(
          send_socket, (unsigned char *) "google.com",
          (void *) &gpkey_info, SSL_SUPPLEMENTARY_DATA_CERT_PUBLIC_KEY)) {
        IncCounter(G_ERROR_NO_SOCKET);
        SetCounter(G_SEND_RESULT, 20);
        current_send_state = SM_DISCONNECT;
        break;
      }

      // reset the timer and move onto the next state
      timeout_timer = GetUtcTimeSec();
      current_send_state = SM_SSL_HANDSHAKE;
      break;

    case SM_SSL_HANDSHAKE:
      if (TCPSSLIsHandshaking(send_socket)) {
        // Time out if too much time is spent in this state
        // Setting up an https connection takes time so increase the timeout...
        if ((GetUtcTimeSec() - timeout_timer) > TCP_SEND_TIMEOUT_SEC) {
          IncCounter(G_ERROR_TIMEOUT);
          SetCounter(G_SEND_RESULT, 21);
          current_send_state = SM_DISCONNECT;
        }
        break;
      }

      // If we fail the comparison for the hash of the public key
      // then assume something is wrong (man in the middle?) and
      // abort the connection...
      if (!CheckPubKeyHash(send_socket)) {
        IncCounter(G_ERROR_BAD_STATE);
        SetCounter(G_SEND_RESULT, 22);
        current_send_state = SM_DISCONNECT;
        break;
      }

      timeout_timer = GetUtcTimeSec();
      current_send_state = SM_PRE_HEADER;
      break;

    case SM_PRE_HEADER:
      send_index = 0;
      // reset the timer and move onto the next state
      timeout_timer = GetUtcTimeSec();
      current_send_state = SM_WRITE_HEADER;

      num_data_hold = 0;
      while ((num_data_hold < MAX_BATCH_SEND) && (!GIsQueEmpty(use_sensor))) {
        GRemoveHead(use_sensor, &(data_hold[num_data_hold].timestamp),
            &(data_hold[num_data_hold].value),
            &(data_hold[num_data_hold].flags));
        ++num_data_hold;
      }
      if (!ever_sent[use_sensor]) {
        // Regardless of the sensor number, if this is the first
        // conversation with google, the 0'th entry gets the
        // reset flag.
        data_hold[0].flags |= G_METER_RESET;
      }
      body_state = BODY_INIT;
      est_total = 0;
      break;

    case SM_WRITE_HEADER:
      res = SendTcpDataViaArray(send_socket, header_to_send, TRUE,
                                &send_index, NULL);
      switch (res) {
        case SEND_SUCCESS:
          timeout_timer = GetUtcTimeSec();
          break;

        case SEND_WAITING:
          if ((GetUtcTimeSec() - timeout_timer) > TCP_SEND_TIMEOUT_SEC) {
            IncCounter(G_ERROR_TIMEOUT);
            SetCounter(G_SEND_RESULT, 3);
            current_send_state = SM_DISCONNECT;
          }
          break;

        case SEND_DONE:
          // reset the timer and move onto the next state
          send_index = 0;
          timeout_timer = GetUtcTimeSec();
          current_send_state = SM_COMPUTE_BODY;
          break;

        case SEND_ERROR:
        default:
          IncCounter(G_ERROR_BAD_STATE);
          SetCounter(G_SEND_RESULT, 4);
          current_send_state = SM_DISCONNECT;
      }
      break;

    case SM_COMPUTE_BODY:
      // The Content-Length: header must be filled in as part of a POST
      // So we need to compute the size of the body. This code does a
      // pretend send of the body (for_real is FALSE) so that we can
      // count how many characters we will be sending later.
      SendBody(send_socket, &body_state, num_data_hold, data_hold,
               FALSE, &est_total);
      if (BODY_SUCCESS == body_state) {
        send_index = 0;
        timeout_timer = GetUtcTimeSec();
        current_send_state = SM_WRITE_LENGTH;
      } else if (BODY_FAIL == body_state) {
        current_send_state = SM_DISCONNECT;
      }
      break;

    case SM_WRITE_LENGTH:
      // Now that we have a count of how many characters we will be
      // sending, send out the Content-Length: header.
      res = SendTcpDataViaArray(send_socket, length_to_send, TRUE,
                                &send_index, NULL);
      switch (res) {
        case SEND_SUCCESS:
          timeout_timer = GetUtcTimeSec();
          break;

        case SEND_WAITING:
          if ((GetUtcTimeSec() - timeout_timer) > TCP_SEND_TIMEOUT_SEC) {
            IncCounter(G_ERROR_TIMEOUT);
            SetCounter(G_SEND_RESULT, 3);
            current_send_state = SM_DISCONNECT;
          }
          break;

        case SEND_DONE:
          // reset the timer and move onto the next state
          send_index = 0;
          timeout_timer = GetUtcTimeSec();
          current_send_state = SM_WRITE_BODY;
          body_state = BODY_INIT;
          actual_total = 0;
          break;

        case SEND_ERROR:
        default:
          IncCounter(G_ERROR_BAD_STATE);
          SetCounter(G_SEND_RESULT, 4);
          current_send_state = SM_DISCONNECT;
      }
      break;

    case SM_WRITE_BODY:
      // We've sent out the Content-Length, so now it's time
      // to actually send the bits that were promised.
      SendBody(send_socket, &body_state, num_data_hold, data_hold,
               TRUE, &actual_total);
      if (BODY_SUCCESS == body_state) {
        timeout_timer = GetUtcTimeSec();
        current_send_state = SM_PROCESS_RESPONSE;
        // If the actual number of bytes sent doesn't match
        // the estimated number of bytes (which was sent as part
        // of the Content-Length header), we have a problem.
        if (actual_total != est_total) {
            IncCounter(G_ERROR_BAD_STATE);
            SetCounter(G_SEND_RESULT, 18);
            current_send_state = SM_DISCONNECT;
        }
      } else if (BODY_FAIL == body_state) {
        current_send_state = SM_DISCONNECT;
      }
      break;

    // Do we need to check for anything other than response code in the
    // response?
    case SM_PROCESS_RESPONSE:
      {
        RESP_RETURN_CODE res;
        res = GetStatusResponse(send_socket, &response_code);
        switch (res) {
          case RESP_FOUND:
            // If we found a response, then note if it was a success

            // report the send response code
            SetCounter(G_SEND_RESULT, response_code);
            if ((200 == response_code) || (204 == response_code)) {
              // indicate that the send succeeded
              IncCounter(G_SEND_SUCCESS);

              // advance on to the next state, which checks individual batch
              // status codes
              num_batch_responses_checked = 0;
              timeout_timer = GetUtcTimeSec();
              current_send_state = SM_PROCESS_RESPONSE_HEADER;
            } else {
              // Failed, so put the data back and try again later
              PutDataBackOnQue(num_data_hold, data_hold);
              num_data_hold = 0;
              current_send_state = SM_DISCONNECT;
            }
            break;

          case RESP_SEARCHING:
            if ((GetUtcTimeSec() - timeout_timer) > TCP_SEND_TIMEOUT_SEC) {
              IncCounter(G_ERROR_TIMEOUT);
              SetCounter(G_SEND_RESULT, 13);
              // If we timeout waiting for a response, assume
              // the data didn't make it and we want to try again.
              PutDataBackOnQue(num_data_hold, data_hold);
              num_data_hold = 0;
              current_send_state = SM_DISCONNECT;
            }
            break;

          case RESP_CLOSED:
            SetCounter(G_SEND_RESULT, 14);
            current_send_state = SM_DISCONNECT;
            // A close could mean the data made it and it could mean
            // the data didn't. For the moment, assume a close means
            // success.
            break;

          case RESP_ERROR:
          default:
            IncCounter(G_ERROR_BAD_STATE);
            SetCounter(G_SEND_RESULT, 15);
            // Error means something bad happened. Make sure it
            // wasn't something wrong with the data by discarding it.
            current_send_state = SM_DISCONNECT;
        }
      }
      break;

    case SM_PROCESS_RESPONSE_HEADER:
      {
        INT8 found_xheader;
        RESP_RETURN_CODE res;
        res = GetXHeader(send_socket, &found_xheader);
        switch (res) {
          case RESP_FOUND:
            // Found means we either found the header or there was no
            // header. Assume no header which means our next state
            // is the BATCH_REPONSE state.
            num_batch_responses_checked = 0;
            timeout_timer = GetUtcTimeSec();
            current_send_state = SM_PROCESS_BATCH_RESPONSE;

            if (found_xheader) {
              IncCounter(G_PUBKEY_ATTEMPT);
              // Found the pubkey header, so get ready to start
              // updating the pubkeys. If there is an error, skip
              // the update and just do a BATCH_RESPONSE (which is
              // what we've already setup for).
              if (SetupUpdatePubKeyHashes(send_socket)) {
                current_send_state = SM_PROCESS_RESPONSE_PUBKEY;
              }
            }
            break;

          case RESP_SEARCHING:
            if ((GetUtcTimeSec() - timeout_timer) > TCP_SEND_TIMEOUT_SEC) {
              IncCounter(G_ERROR_TIMEOUT);
              SetCounter(G_SEND_RESULT, 23);
              // If we timeout waiting for a response, assume
              // the data didn't make it and we want to try again.
              PutDataBackOnQue(num_data_hold, data_hold);
              num_data_hold = 0;
              current_send_state = SM_DISCONNECT;
            }
            break;

          case RESP_CLOSED:
            SetCounter(G_SEND_RESULT, 24);
            current_send_state = SM_DISCONNECT;
            // A close could mean the data made it and it could mean
            // the data didn't. For the moment, assume a close means
            // success.
            break;

          case RESP_ERROR:
          default:
            IncCounter(G_ERROR_BAD_STATE);
            SetCounter(G_SEND_RESULT, 25);
            // Error means something bad happened. Make sure it
            // wasn't something wrong with the data by discarding it.
            current_send_state = SM_DISCONNECT;
        }
      }
      break;

    case SM_PROCESS_RESPONSE_PUBKEY:
      {
        RESP_RETURN_CODE res;
        res = UpdatePubKeyHashes(send_socket);
        switch (res) {
          case RESP_FOUND:
            // Found means we are done with the hash update.
            // So on to the next state...
            IncCounter(G_PUBKEY_SUCCESS);

            num_batch_responses_checked = 0;
            timeout_timer = GetUtcTimeSec();
            current_send_state = SM_PROCESS_BATCH_RESPONSE;
            break;

          case RESP_SEARCHING:
            if ((GetUtcTimeSec() - timeout_timer) > TCP_SEND_TIMEOUT_SEC) {
              IncCounter(G_ERROR_TIMEOUT);
              SetCounter(G_SEND_RESULT, 26);
              // If we timeout waiting for a response, assume
              // the data didn't make it and we want to try again.
              PutDataBackOnQue(num_data_hold, data_hold);
              num_data_hold = 0;
              current_send_state = SM_DISCONNECT;
            }
            break;

          case RESP_CLOSED:
            SetCounter(G_SEND_RESULT, 27);
            current_send_state = SM_DISCONNECT;
            // A close could mean the data made it and it could mean
            // the data didn't. For the moment, assume a close means
            // success.
            break;

          case RESP_ERROR:
          default:
            IncCounter(G_ERROR_BAD_STATE);
            SetCounter(G_SEND_RESULT, 28);
            // Error means something bad happened. Make sure it
            // wasn't something wrong with the data by discarding it.
            current_send_state = SM_DISCONNECT;
        }
      }
      break;

    case SM_PROCESS_BATCH_RESPONSE:
      {
        batch_res = GetBatchStatusResponse(send_socket, &batch_response_code);

        switch (batch_res) {
          case RESP_FOUND:
            SetCounter(G_BATCH_SEND_RESULT, batch_response_code);
            num_batch_responses_checked++;

            // if we get one "fail" response code, declare all are bad
            if (batch_response_code < 200 || batch_response_code >= 300) {
              // Failed, so put the data back and try again later
              PutDataBackOnQue(num_data_hold, data_hold);
              num_data_hold = 0;
              current_send_state = SM_DISCONNECT;
              break;
            }

            // If any of the batch response codes says OK, then
            // assume the data was sent.
            ever_sent[use_sensor] = TRUE;

            // are there more data points to check?
            if (num_batch_responses_checked >= num_data_hold) {
              // if we got here, then all batch responses were successes,
              // therefore increment the counter
              IncCounter(G_BATCH_SEND_SUCCESS);

              // advance to the next state
              current_send_state = SM_DISCONNECT;
            }
            break;

          case RESP_SEARCHING:
            if ((GetUtcTimeSec() - timeout_timer) > TCP_SEND_TIMEOUT_SEC) {
              IncCounter(G_ERROR_TIMEOUT);
              SetCounter(G_BATCH_SEND_RESULT, 3);
              // If we timeout waiting for a response, assume
              // the data was sent successfully and
              // advance to the next state machine state.
              current_send_state = SM_DISCONNECT;
            }
            break;

          case RESP_CLOSED:
            SetCounter(G_BATCH_SEND_RESULT, 1);
            current_send_state = SM_DISCONNECT;
            // A close could mean the data made it and it could mean
            // the data didn't. For the moment, assume a close means
            // success.
            break;

          case RESP_ERROR:
          default:
            IncCounter(G_ERROR_BAD_STATE);
            SetCounter(G_BATCH_SEND_RESULT, 2);
            // Error means something bad happened.
            // Assume the data was sent succesfully and advance to the
            // next state machine state.
            current_send_state = SM_DISCONNECT;
        }
      }
      break;

    case SM_DISCONNECT:
      // Close the socket so it can be used by other modules
      // For this application, we wish to stay connected, but this state will
      // still get entered if the remote server decides to disconnect
      TCPDisconnect(send_socket);
      send_socket = INVALID_SOCKET;
      current_send_state = SM_DONE;
      break;

    case SM_DONE:
      // Nothig to do. No harm in having this here.
      break;

    default:
      // Getting here is an actual mistake. Alas in the embedded world,
      // not always a good way to indicate a mistake.
      // Mostly helps for debug, less for production...
      IncCounter(G_ERROR_BAD_STATE);
      SetCounter(G_SEND_RESULT, 16);

      // Abort and hope the next time through the loop we do better.
      if (INVALID_SOCKET != send_socket) {
        TCPDisconnect(send_socket);
        send_socket = INVALID_SOCKET;
      }
      current_send_state = SM_DONE;
  }
}

static void GetUtc(FUNC_ARG arg, INT32 max_size, unsigned char *data) {
  //  UTC date string format: YYYY-MM-DDThh:mm:ss.sTZD
  //  which is max 24 chars long + 1 for the '\0'
  if (max_size > 25) {
    ConvertUtcSecToString(timestamp, (char *)data);
  } else {
    // Not enough room. Increment a failure counter?
    // Or hope we catch this during debug since it shouldn't
    // happen in real life for values this small.
    *data = '\0';
  }
}

static void MaybeSendReset(FUNC_ARG arg, INT32 max_size, unsigned char *data) {
  UINT8 *pflags = arg.generic_ptr;
  if (*pflags & G_METER_RESET) {
    strncpy((char *) data, (const char *) reset_const, max_size);
  } else {
    *data = '\0';
  }
}

static void VariableSuffix(FUNC_ARG arg, INT32 max_size, unsigned char *data) {
  INT16 *which = arg.generic_ptr;
  if (max_size > 4) {
    sprintf((char *) data, ".c%d", *which + 1);
  } else {
    *data = '\0';
  }
}
