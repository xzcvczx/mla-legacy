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

#include "gqueue.h"

// The actual queue
// NOTE: because we are using UINT8 for the queue index, the
// max queue size is 255 entries.
static INT64 gq_cumulative_watts[GQ_NUM_QUEUES][GQ_SIZE];
static INT32 gq_timestamp[GQ_NUM_QUEUES][GQ_SIZE];
static UINT8 gq_flags[GQ_NUM_QUEUES][GQ_SIZE];

// The C language specification says that static variables are automatically
// initialized to zero, so we don't have to do it ourselves.
static UINT8 gq_front[GQ_NUM_QUEUES];
static UINT8 gq_back[GQ_NUM_QUEUES];

// Playing with the queue index
#define GQINC(x) (((x) + 1) & GQ_MODULO)
#define GQDEC(x) ((x) ? (x) - 1 : GQ_MODULO)

// Empty the queue
// Returns true if successful.
// If an invalid queue is passed in, then returns false.
INT8 GEmptyQue(INT16 which_queue) {
  if (which_queue >= GQ_NUM_QUEUES || which_queue < 0) {
    return FALSE;
  }
  gq_front[which_queue] = gq_back[which_queue];
  return TRUE;
}

// Add to the tail of the queue.
// Returns true if successful.
// If an invalid queue is passed in, then returns false.
// If the queue is full, dump the oldest at the
// front of the queue.
INT8 GAddTail(INT16 which_queue, INT32 timestamp, INT64 watts, UINT8 flags) {
  if (which_queue >= GQ_NUM_QUEUES || which_queue < 0) {
    return FALSE;
  }
  if (GIsQueFull(which_queue)) {
    gq_front[which_queue] = GQINC(gq_front[which_queue]);
  }

  gq_timestamp[which_queue][gq_back[which_queue]] = timestamp;
  gq_cumulative_watts[which_queue][gq_back[which_queue]] = watts;
  gq_flags[which_queue][gq_back[which_queue]] = flags;
  gq_back[which_queue] = GQINC(gq_back[which_queue]);

  return TRUE;
}

// Add to the head of the queue. Can fail if the queue is full.
// If an invalid queue is passed in, then returns false.
// True means successful add, false means wasn't added.
INT8 GAddHead(INT16 which_queue, INT32 timestamp, INT64 watts, UINT8 flags) {
  if (which_queue >= GQ_NUM_QUEUES || which_queue < 0) {
    return FALSE;
  }
  if (GIsQueFull(which_queue)) {
    return FALSE;
  }

  gq_front[which_queue] = GQDEC(gq_front[which_queue]);
  gq_timestamp[which_queue][gq_front[which_queue]] = timestamp;
  gq_cumulative_watts[which_queue][gq_front[which_queue]] = watts;
  gq_flags[which_queue][gq_front[which_queue]] = flags;

  return TRUE;
}

// Remove from the queue, Can fail if the queue is empty.
// If an invalid queue is passed in, then returns false.
INT8 GRemoveHead(INT16 which_queue, INT32 *ptimestamp, INT64 *pwatts,
                 UINT8 *pflags) {
  if (which_queue >= GQ_NUM_QUEUES || which_queue < 0) {
    return FALSE;
  }
  if (ptimestamp && pwatts && pflags && !GIsQueEmpty(which_queue)) {
    *ptimestamp = gq_timestamp[which_queue][gq_front[which_queue]];
    *pwatts = gq_cumulative_watts[which_queue][gq_front[which_queue]];
    *pflags = gq_flags[which_queue][gq_front[which_queue]];
    gq_front[which_queue] = GQINC(gq_front[which_queue]);

    return TRUE;
  }
  return FALSE;
}

// Boolean - true if the queue is full
// If an invalid queue is passed in, then returns false.
// TODO(cheryla): Consider returning enumerated response code instead?
INT8 GIsQueFull(INT16 which_queue) {
  if (which_queue >= GQ_NUM_QUEUES || which_queue < 0) {
    return FALSE;
  }
  return GQINC(gq_back[which_queue]) == gq_front[which_queue];
}

// Boolean - true if the queue is empty
// If an invalid queue is passed in, then returns false.
// TODO(cheryla): Consider returning enumerated response code instead?
// It may make sense that an invalid queue is always empty, in which case we
// should return true instead.
INT8 GIsQueEmpty(INT16 which_queue) {
  if (which_queue >= GQ_NUM_QUEUES || which_queue < 0) {
    return FALSE;
  }
  return gq_front[which_queue] == gq_back[which_queue];
}

// Number of elements in the queue
// If an invalid queue is passed in, then returns -1.
// TODO(cheryla): Consider returning enumerated response code instead?
// It may make sense that an invalid queue is always empty, in which case we
// should return 0 instead.
INT8 GNumQue(INT16 which_queue) {
  UINT16 delta;

  if (which_queue >= GQ_NUM_QUEUES || which_queue < 0) {
    return -1;
  }
  if (gq_front[which_queue] > gq_back[which_queue]) {
    delta = gq_back[which_queue] + GQ_SIZE;
    delta -= gq_front[which_queue];
  } else {
    delta = gq_back[which_queue] - gq_front[which_queue];
  }

  return delta;
}
