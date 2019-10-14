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

// Front is for consumers, back is for produceers (usually).
//
// Producer adds elements to the back_ (back_ is newest), while consumers
// remove elements from the front_ (front_ is oldest). If a consumer
// grabs something they can't use, allow for a GAddHead() which puts
// the item back on the front of the queue (if there is room).
//
// When the queue is full, oldest elements (front of the queue) are
// discarded.
//
// Front points to a non-empty entry unless the queue is empty.
// Back always points to an empty entry.


#ifndef ENERGY_POWERMETER_EMBEDDED_TNG_SANDBOX_GQUEUE_H_
#define ENERGY_POWERMETER_EMBEDDED_TNG_SANDBOX_GQUEUE_H_

#ifdef __cplusplus
extern "C" {
#endif

#include "GenericTypeDefs.h"

// Code below assumes a max queue size of 255 (since
// all the code indices are 8-bits). And since the
// queue needs to be a power of two, that means the max
// queue size is 128.  And since we can support up to 4
// queues, the actual size of each queue is 128/4 = 32.
// Since the queue is implemented as a circular queue and there
// must always be an empty slot to make it easy to distinguish
// between a full queue and an empty queue, the actual number
// of elements this queue can hold is really 31.

// Must be a multiple of 2
#define GQ_SIZE 32
#define GQ_MODULO (GQ_SIZE - 1)

// the number of queues we can support
#define GQ_NUM_QUEUES 3

// This is a bitmap. All enum's should be assigned.
typedef enum _gqflags {
  G_METER_RESET = 1
} GQ_FLAGS;

// Empty the queue
// Returns true if successful.
// If an invalid queue is passed in, then returns false.
INT8 GEmptyQue(INT16 which_queue);

// Add to the tail of the queue
// Returns true if successful.
// If an invalid queue is passed in, then returns false.
// If the queue is full, dump the oldest at the
// front of the queue.
INT8 GAddTail(INT16 which_queue, INT32 timestamp, INT64 watts, UINT8 flags);

// Add to the head of the queue. Can fail if the queue is full.
// If an invalid queue is passed in, then returns false.
// True means successful add, false means wasn't added.
INT8 GAddHead(INT16 which_queue, INT32 timestamp, INT64 watts, UINT8 flags);

// Remove from the queue, Can fail if the queue is empty.
// If an invalid queue is passed in, then returns false.
INT8 GRemoveHead(INT16 which_queue, INT32 *ptimestamp, INT64 *pwatts,
                 UINT8 *pflags);

// Boolean - true if the queue is full
// If an invalid queue is passed in, then returns false.
// TODO(cheryla): Consider returning enumerated response code instead?
INT8 GIsQueFull(INT16 which_queue);

// Boolean - true if the queue is empty
// If an invalid queue is passed in, then returns false.
// TODO(cheryla): Consider returning enumerated response code instead?
// It may make sense that an invalid queue is always empty, in which case we
// should return true instead.
INT8 GIsQueEmpty(INT16 which_queue);

// Number of elements in the queue
// If an invalid queue is passed in, then returns -1.
// TODO(cheryla): Consider returning enumerated response code instead?
// // It may make sense that an invalid queue is always empty, in which case we
// should return 0 instead.
INT8 GNumQue(INT16 which_queue);

#ifdef __cplusplus
}
#endif

#endif  // ENERGY_POWERMETER_EMBEDDED_TNG_SANDBOX_GQUEUE_H_
