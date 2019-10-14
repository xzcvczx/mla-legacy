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

#include "gcapture.h"
#include "gcounter.h"
#include "gqueue.h"
#include "ginsu.h"

void GCapture(void) {
  INT64 watts;
  INT32 timestamp;
  INT16 i;

  IncCounter(G_CAPTURE_ATTEMPT);
  // if the sensor is active, capture data to send
  for (i = 0; i < GQ_NUM_QUEUES; i++) {
    if (SensorStillActive(i)) {
      GetCumulativePower(i, &timestamp, &watts);
      // Make sure the time is the second half of 2009
      // otherwise it is a bogus entry and we should skip it.
      if (timestamp > GCAPTURE_MIN_TIMESTAMP) {
        GAddTail(i, timestamp, watts, 0);
        if (0 == i) {
          IncCounter(G_CAPTURE_SUCCESS);
        }
      }
    }
  }
}

INT8 GReadyToCapture(void) {
  INT32 time_delta;
  INT32 capture_interval_secs;

  capture_interval_secs = GetPreferenceInt32(CAPTURE_SEC_INT);
  if (capture_interval_secs < CAPTURE_LIMIT_SEC) {
    capture_interval_secs = CAPTURE_LIMIT_SEC;
  }

  time_delta = GetUtcTimeSec();
  time_delta -= GetTimestamp(G_CAPTURE_ATTEMPT);

  return (time_delta >= capture_interval_secs);
}
