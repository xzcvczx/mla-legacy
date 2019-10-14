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

#ifndef ENERGY_POWERMETER_EMBEDDED_TNG_SANDBOX_GPUBKEY_H_
#define ENERGY_POWERMETER_EMBEDDED_TNG_SANDBOX_GPUBKEY_H_

#ifdef __cplusplus
extern "C" {
#endif

#include "gutility.h"

// Handle public key hash management.

// Called when an https connection is about to be opened so the
// pubkey hash code can initialize and prepare.
void SetupCheckPubKeyHash(UINT8 socket);

// Validates that the current pubkey hash matches one of the
// ones on the list.
INT8 CheckPubKeyHash(UINT8 socket);

// Do the setup work in preparation for getting an update of the
// hash list. Returns TRUE if the prep work was successful, else
// returns FALSE if there was a problem.
INT8 SetupUpdatePubKeyHashes(UINT8 socket);

// Update the list of public key hashes we accept. The routine
// will not overwrite whatever hash was used to make the current
// connection. The routine expects the socket to be pointing to
// the first character in the hash response header.
// Because not all the bytes are going to be there when we need them,
// we need to send back the usual response code (done, searching, error).
RESP_RETURN_CODE UpdatePubKeyHashes(UINT8 socket);

#ifdef __cplusplus
}
#endif

#endif  // ENERGY_POWERMETER_EMBEDDED_TNG_SANDBOX_GPUBKEY_H_
