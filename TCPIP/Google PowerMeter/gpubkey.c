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

#include "ginsu.h"
#include "gpubkey.h"
#include "gcounter.h"
#include "gutility.h"

#include <ctype.h>
#include <string.h>

// True means the corresponding stored hash slot is available.
// False means don't use. We setup the flags here and mark the
// one that was used for the current https connection as in use
static INT8 hash_slot_available[MAX_NUM_PUBKEY_HASH];

// Place to hold the binary hash value while we are assembling it from
// the ascii bytes sent via the tcp connection and a count of how many
// bytes have been read in.
static INT8 update_hash[PUBKEY_HASH_SIZE];
static INT8 hash_spot;

// Since we read things in one ascii character at a time, need to
// save one of the chars so we can use a pair of hex ascii chars to
// form one binary byte. This is the high half of the pair (the high
// nybble).
static BYTE high_hex_ascii;

// If the hash list is updated, need to save to nvram when done.
static INT8 hash_changed;

// Handle public key hash management.

// NOTE: There are a lot of assumptions in this code that there is
// one and only one https connection to google being made with the
// device at a time. (i.e. won't have gsend and gstatus both active
// at the same time).

// We only have one https connection at a time, so only need to
// hang onto one hash.
INT8 hash_result[PUBKEY_HASH_SIZE];

void SetupCheckPubKeyHash(UINT8 socket) {
  memset(&(hash_result[0]), 0, sizeof(hash_result));

  SetupCalculatePubKeyHash(socket);
}

// Walk the hash
INT8 CompareHashToStored(INT8 *hash) {
  INT8 i;

  for (i = 0; i < MAX_NUM_PUBKEY_HASH; i++) {
    if (0 == memcmp(&(hash[0]), GetHashListEntry(i), PUBKEY_HASH_SIZE)) {
      return i;
    }
  }
  return -1;
}

// Validates that the current pubkey hash matches one of the
// ones on the list.
INT8 CheckPubKeyHash(UINT8 socket) {
  CalculatePubKeyHash(socket, &(hash_result[0]));

  INT8 hash_match = CompareHashToStored(hash_result);
  return (hash_match >= 0);
}

// There's gotta be a library routine that does this somewhere...
INT8 ConvertAsciiHexToInt(INT8 ascii_hex) {
  if ((ascii_hex >= '0') && (ascii_hex <= '9')) {
    return ascii_hex - '0';
  } else if ((ascii_hex >= 'a') && (ascii_hex <= 'f')) {
    return ascii_hex - ('a' - 10);
  } else if ((ascii_hex >= 'A') && (ascii_hex <= 'F')) {
    return ascii_hex - ('A' - 10);
  } else {
    return 0;
  }
}

// Handle the setup necessary for updating the hashes
// Should be called only once.
// Returns TRUE if the setup was successful, else FALSE to indicate
// there was an error of some sort.
INT8 SetupUpdatePubKeyHashes(UINT8 socket) {
  INT16 i;

  for (i = 0; i < MAX_NUM_PUBKEY_HASH; i++) {
    if (0 == memcmp(&(hash_result[0]),
                    GetHashListEntry(i),
                    PUBKEY_HASH_SIZE)) {
      hash_slot_available[i] = FALSE;
    } else {
      hash_slot_available[i] = TRUE;
    }
  }

  memset(&(update_hash[0]), 0, sizeof(update_hash));
  hash_spot = 0;
  high_hex_ascii = 0;

  hash_changed = FALSE;

  return TRUE;
}

// Update the list of public key hashes we accept. The routine
// will not overwrite whatever hash was used to make the current
// connection. The SetupUpdatePubKeyHashes() needs to be called first
// to discard the PUBKEY_HASH header and setup the state variables used
// by the routine below.
RESP_RETURN_CODE UpdatePubKeyHashes(UINT8 socket) {
  BYTE one_char;
  INT16 i;
  INT8 try_slot;
  INT8 hash_match;

  WORD w = TCPIsGetReady(socket);
  if (!w) {
    return RESP_SEARCHING;
  }

  for (i = 0; i < w; i++) {
    TCPGet(socket, &one_char);
    if (isspace(one_char)) {
      if ('\r' == one_char) {
        // CR means we are done. Do some sanity checks to see
        // if we expected to be done, or it is an unexpected done
        // which is an indication of a problem.
        break;
      }
    } else if (isxdigit(one_char)) {
      if (0 == high_hex_ascii) {
        high_hex_ascii = one_char;
      } else {
        update_hash[hash_spot] = (ConvertAsciiHexToInt(high_hex_ascii) << 4) +
            ConvertAsciiHexToInt(one_char);
        hash_spot++;
        high_hex_ascii = 0;

        if (PUBKEY_HASH_SIZE == hash_spot) {
          // we have a hash key, is it already there?
          hash_match = CompareHashToStored(update_hash);
          if (hash_match < 0) {
            // If not, search for an open slot and memcpy() it.
            for (try_slot = 0; try_slot < MAX_NUM_PUBKEY_HASH; try_slot++) {
              if (hash_slot_available[try_slot]) {
                // Found an open slot, so update that slot and mark it
                // as no longer available for updates.
                SetHashListEntry(update_hash, try_slot);
                hash_slot_available[try_slot] = FALSE;
                hash_changed = TRUE;
                break;
              }
            }
          }

          hash_spot = 0;
          high_hex_ascii = 0;
        }
      }
    } else if (',' == one_char) {
      // If we see a comma when we aren't on a hash boundary, that's bad...
      if (hash_spot) {
        return RESP_ERROR;
      }
    } else {
      // Problem. Only allowed hex, spaces and comma...
      return RESP_ERROR;
    }
  }

  // Only way out of the for loop is we either read all the
  // characters or we saw a CR.
  // Since it is possible for both to be true (the last char
  // read in was a CR), do the CR check first as that means
  // we are done.
  if ('\r' == one_char) {
    // If we exited because of CR it is either an error or it
    // is done, depending on whether there is still data left
    // in hash_spot
    if (0 == hash_spot) {
      // we're done. if we updated anything, save it in nvram.
      if (hash_changed) {
        GUpdateNVRam();
      }
      return RESP_FOUND;
    } else {
      return RESP_ERROR;
    }
  }

  // Ran out of characters, need more...
  return RESP_SEARCHING;
}
