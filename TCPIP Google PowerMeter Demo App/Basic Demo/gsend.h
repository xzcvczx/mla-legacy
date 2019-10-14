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

#ifndef ENERGY_POWERMETER_EMBEDDED_TNG_SANDBOX_GSEND_H_
#define ENERGY_POWERMETER_EMBEDDED_TNG_SANDBOX_GSEND_H_
#ifdef __cplusplus
extern "C" {
#endif

#include "GenericTypeDefs.h"

// for testing/debugging
typedef enum _send_state {
    SM_HOME = 0,
    SM_SOCKET_OBTAINED,
    SM_SSL_START,
    SM_SSL_HANDSHAKE,
    SM_PRE_HEADER,
    SM_WRITE_HEADER,
    SM_COMPUTE_BODY,
    SM_WRITE_LENGTH,
    SM_WRITE_BODY,
    SM_PROCESS_RESPONSE,
    SM_PROCESS_RESPONSE_HEADER,
    SM_PROCESS_RESPONSE_PUBKEY,
    SM_PROCESS_BATCH_RESPONSE,
    SM_DISCONNECT,
    SM_DONE
} SEND_STATE;

// For testing/debugging
SEND_STATE GetCurrentTCPClientState(void);

// Send the data to google.
void GSend(void);

// Mostly for testing. Resets the state machine and sensor number
// to known default values.
void GSendResetState(void);

// Moves to the new sensor. Allows movement only if there is no send work
// going on. Used internally, but made available here for testing.
INT16 GSendNextVariable(void);

INT8 GSendHasWork(void);

void GSendDoWork(void);

// Check if it is time for another data send attempt.
// Non-zero means it is time to send data, zero means wait longer.
INT8 GReadyToSend(void);

// Need to send the IsInitial when the system boots and when
// the auth token/path changes. This will tell the GSend() routine
// that it should treat the next send as though it's never talked to
// Google before to prevent initial spikes in data.
// If send_now is true, tells the GSend() routine to attempt to send
// data on the next loop.
void GSendInitialFlag(UINT8 send_now);

#ifdef __cplusplus
}
#endif

#endif  // ENERGY_POWERMETER_EMBEDDED_TNG_SANDBOX_GSEND_H_
