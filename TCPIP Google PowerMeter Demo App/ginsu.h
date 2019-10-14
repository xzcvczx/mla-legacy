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

/*******************************************************************************
* MODIFIED by Microchip Technology, Inc.                                       *
*                                                                              *
* - Changed DEVICE_MANUFACTURER and DEVICE MODEL macros                        *
*******************************************************************************/

#ifndef ENERGY_POWERMETER_EMBEDDED_TNG_SANDBOX_GINSU_H_
#define ENERGY_POWERMETER_EMBEDDED_TNG_SANDBOX_GINSU_H_

#ifdef __cplusplus
extern "C" {
#endif

#include "GenericTypeDefs.h"

#define DEVICE_MANUFACTURER     "Microchip_Technology"
#define DEVICE_MODEL            "Explorer16_Demo"

// Routines that the google code will use to talk to the outside world.

// Get the current UTC time in seconds since 1970 (standard unix definition).
INT32 GetUtcTimeSec(void);

// Get uptime in seconds.
INT32 GetUptimeSec(void);

// Convert a UTC time in seconds to a string following the RFC XXX format.
void ConvertUtcSecToString(INT32 utc, char* time_str);

// Get the current cumulative power value for a given mtu
void GetCumulativePower(INT16 which, INT32 *timestamp, INT64 *watts);

// Get the build number.
INT32 GetBuildNumber(void);

// Get the local ipv4 address.
// x.y.z.w  where x is the most significant byte and w is the least.
UINT32 GetIpv4(void);

// Get the port that the webserver is on.
UINT16 GetWebPort(void);

// Get the mac address of the device.
// byte[0] is most significant byte, byte[5] is least significant byte
// Not null terminated, just 6 sequential bytes.
const UINT8 *GetMac(void);

// Get a signal quality value. The definition of this is somewhat
// device dependant.  The which parameter indicates which mtu we
// are interested in.
// This function returns non-zero if the sensor is active.  If zero is returned,
// then assume there is no sensor.  It's possible that the packet error count is
// high so we are getting some packets but the math still ends up as zero.
// But in this case, it's ok to just treat it as a missing sensor.
UINT32 GetSQ(INT16 which);

// Get details on the signal quality. For the moment, assume the
// details includes a count of attempts and a number of skipped problems.
// The which parameter indicates which mtu we are interested in.
void GetSQDetails(INT16 which, UINT32 *count, UINT32 *skipped);

// Returns TRUE if the sensor is active, FALSE otherwise
INT8 SensorStillActive(INT16 which_sensor);

typedef enum _pref_list {
  AUTH_TOKEN_STR,       // Authorization token
  AUTH_PATH_STR,        // Authorization path
  CAPTURE_SEC_INT,      // Frequency of capturing data (seconds)
  SEND_SEC_INT,         // Frequency of sending data to google (seconds)
  SEND_STATUS_INT,      // boolean - send status to google (true) or not.
} PREF_LIST;

#define PUBKEY_HASH_SIZE        20
#define MAX_NUM_PUBKEY_HASH     3

// To hash the public key information, we need to actually get
// the public key information...
// 1024 bit key at 8 bits/byte = 128 bytes needed for the public key.
typedef struct _g_pkey_info {
  INT16 pub_size_bytes;
  INT8 pub_key[128];
  INT8 pub_e[3];
  UINT8 pub_guid;    // This is used as a TCP_SOCKET which is a BYTE
} G_PKEY_INFO;

// Setup the check of the public key from google.
void SetupCalculatePubKeyHash(UINT8 socket);

// Calculate the public key hash based on the current https socket info.
void CalculatePubKeyHash(UINT8 socket, INT8 *current_hash);

// Get a particular preference (string).
const char *GetPreferenceStr(PREF_LIST which);

// Get a particular preference (int32).
INT32 GetPreferenceInt32(PREF_LIST which);

// Handle the get/set of the pubkey hash list
const INT8 *GetHashListEntry(INT8 hash_slot);

void SetHashListEntry(INT8 *hash, INT8 hash_slot);

// Once we've updated the hash keys, update the nvram
// with the new hash values.
void GUpdateNVRam(void);

// Routines that the outside world will use to talk to the google code.

// Call into this code every so often to check for whether it is time
// to send data and (in the case of this tcp/ip stack), poll for
// for send/receive of tcp data.
void GPollForWork(void);

// Call into this code once at the beginning when the system is booting.
// It should be called after everything is initialized (like the ethernet,
// the sensors, etc). Basically, it should be called just before entering
// the polling loop.
void GInitForWork(void);

// Call into this code whenever the GSend() should treat the next
// communication with google as an initial communication (for example,
// upon power on or setting changes).
// The send_now parameter says to send what data is queued during the
// next GSend() loop instead of waiting for the regular send time.
void GSendInit(UINT8 send_now);

// Try to capture an MTU now. If we need the init flag, then we also need
// the mtu (so we know which mtu gets the initial). If we don't need the init
// flag, then let the regular GCapture() code handle grabbing the mtu's.
void GCaptureNow(INT8 need_initial, INT16 which);

extern G_PKEY_INFO gpkey_info;

//#define LOCAL_TESTING 1

#if defined(LOCAL_TESTING)
#define GOOGLE_HOST         "www.google.com"
#define GOOGLE_DATA_PORT    80
#define GOOGLE_STATUS_PORT  80
#else
#define GOOGLE_HOST         "www.google.com"
#define GOOGLE_DATA_PORT    443     // data is on https
#define GOOGLE_STATUS_PORT  443     // status is on https
#endif

#ifdef __cplusplus
}
#endif

#endif  // ENERGY_POWERMETER_EMBEDDED_TNG_SANDBOX_GINSU_H_
