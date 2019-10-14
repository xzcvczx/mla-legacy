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

#ifndef ENERGY_POWERMETER_EMBEDDED_TNG_SANDBOX_GCOUNTER_H_
#define ENERGY_POWERMETER_EMBEDDED_TNG_SANDBOX_GCOUNTER_H_

#ifdef __cplusplus
extern "C" {
#endif

#include "GenericTypeDefs.h"

// These are the various events we want to keep track of. It is assumed there
// is a 4 byte entity behind each counter. In theory the counter can also
// be used to hold a value instead (such as a failure code) by using get/set
// instead of increment.
typedef enum gstatus_counters_type {
  G_SEND_ATTEMPT0,              // NOTE: Need to have one G_SEND_ATTEMPT
  G_SEND_ATTEMPT1,              // for each sensor. This demo has 3 sensors
  G_SEND_ATTEMPT2,              // so G_SEND_ATTEMPT needs to go to 2...
  G_SEND_SUCCESS,
  G_SEND_RESULT,
  G_BATCH_SEND_SUCCESS,
  G_BATCH_SEND_RESULT,
  G_STATUS_ATTEMPT,
  G_STATUS_SUCCESS,
  G_STATUS_RESULT,
  G_PUBKEY_ATTEMPT,
  G_PUBKEY_SUCCESS,
  G_ERROR_TIMEOUT,
  G_ERROR_BAD_STATE,
  G_ERROR_NO_SEND_SPACE,
  G_ERROR_BAD_VALUE,
  G_ERROR_NO_SOCKET,
  G_CAPTURE_ATTEMPT,
  G_CAPTURE_SUCCESS,
  G_TOTAL_STATUS_COUNTERS    // Must always be the last enum
} GSTATUS_COUNTERS;

// Get the timestamp for when the counter was last touched.
INT32 GetTimestamp(GSTATUS_COUNTERS which);

// Set the timestamp for a counter. If you want to set both the counter
// value and its timestamp, set the value first (which will set the
// timestamp to the current time) and then set the timestamp to the
// desired time.
void SetTimestamp(GSTATUS_COUNTERS which, INT32 timestamp);

// Get the value of a counter.
INT32 GetCounter(GSTATUS_COUNTERS which);

// Set a counter to a specific value.
void SetCounter(GSTATUS_COUNTERS which, INT32 value);

// Increment a counter.
void IncCounter(GSTATUS_COUNTERS which);

#ifdef __cplusplus
}
#endif

#endif  // ENERGY_POWERMETER_EMBEDDED_TNG_SANDBOX_GCOUNTER_H_
