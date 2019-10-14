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

#ifndef ENERGY_POWERMETER_EMBEDDED_TNG_SANDBOX_GSTATUS_H_
#define ENERGY_POWERMETER_EMBEDDED_TNG_SANDBOX_GSTATUS_H_

#ifdef __cplusplus
extern "C" {
#endif

#include "GenericTypeDefs.h"

// TODO(css): Set to something more reasonable - like every 30 minutes.
#define GSTATUS_INTERVAL_SECS     1801

// Send the status information to google.
void GStatus(void);

void GStatusResetState(void);

INT8 GStatusHasWork(void);

void GStatusDoWork(void);

// Check if it is time for another status send attempt.
// Non-zero means it's time to send status, zero means wait longer.
INT8 GReadyToStatus(void);

#ifdef __cplusplus
}
#endif

#endif  // ENERGY_POWERMETER_EMBEDDED_TNG_SANDBOX_GSTATUS_H_
