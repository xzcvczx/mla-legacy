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

static INT32 status_counters[G_TOTAL_STATUS_COUNTERS];
static INT32 status_timestamp[G_TOTAL_STATUS_COUNTERS];

#define IS_VALID_COUNTER(x) (((x) >= 0) && ((x) < G_TOTAL_STATUS_COUNTERS))

INT32 GetTimestamp(GSTATUS_COUNTERS which) {
  if (IS_VALID_COUNTER(which)) {
    return status_timestamp[which];
  } else {
    return -1;
  }
}

void SetTimestamp(GSTATUS_COUNTERS which, INT32 timestamp) {
  if (IS_VALID_COUNTER(which)) {
    status_timestamp[which] = timestamp;
  }
}

INT32 GetCounter(GSTATUS_COUNTERS which) {
  if (IS_VALID_COUNTER(which)) {
    return status_counters[which];
  } else {
    return -1;
  }
}

void SetCounter(GSTATUS_COUNTERS which, INT32 value) {
  if (IS_VALID_COUNTER(which)) {
    status_counters[which] = value;
    status_timestamp[which] = GetUtcTimeSec();
  }
}

void IncCounter(GSTATUS_COUNTERS which) {
  if (IS_VALID_COUNTER(which)) {
    ++status_counters[which];
    status_timestamp[which] = GetUtcTimeSec();
  }
}
