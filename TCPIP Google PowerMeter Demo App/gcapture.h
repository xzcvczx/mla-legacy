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

#ifndef ENERGY_POWERMETER_EMBEDDED_TNG_SANDBOX_GCAPTURE_H_
#define ENERGY_POWERMETER_EMBEDDED_TNG_SANDBOX_GCAPTURE_H_

#ifdef __cplusplus
extern "C" {
#endif

#include "GenericTypeDefs.h"

#define GCAPTURE_MIN_TIMESTAMP  1248245820L

void GCapture(void);

INT8 GReadyToCapture(void);

// Make sure that no matter what is entered via preferences, the
// absolute minimum capture time is defined below (~7 minutes).
#define CAPTURE_LIMIT_SEC 421

#ifdef __cplusplus
}
#endif

#endif  // ENERGY_POWERMETER_EMBEDDED_TNG_SANDBOX_GCAPTURE_H_
