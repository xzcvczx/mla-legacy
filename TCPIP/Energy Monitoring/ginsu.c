/*********************************************************************
 *
 *  Interface for Google PowerMeter Demo
 *
 *********************************************************************
 * FileName:        ginsu.c
 * Dependencies:    TCP/IP stack
 *                  Google PowerMeter reference code
 * Processor:       PIC24F, PIC24H, dsPIC30F, dsPIC33F, PIC32
 * Compiler:        Microchip C32 v1.10b or higher
 *					Microchip C30 v3.21 or higher
 * Company:         Microchip Technology, Inc.
 *
 * Software License Agreement
 *
 * Microchip Demo Code for Google PowerMeter. Copyright 2010 Microchip
 * Technology Inc. and its licensors.  All rights reserved.
 *
 * Microchip licenses to you the right use, modify, copy, and distribute
 * the accompanying Microchip demo code only when used with or embedded on
 * a Microchip microcontroller or Microchip digital signal controller that
 * is integrated into your product or a third party product.  Any
 * redistributions of Microchip's demo code in compliance with the
 * foregoing must include a copy of this entire notice.
 *
 * THE MICROCHIP DEMO CODE AND DOCUMENTATION ARE PROVIDED "AS IS" WITHOUT
 * WARRANTY OF ANY KIND, EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT
 * LIMITATION, ANY WARRANTY OF MERCHANTABILITY, TITLE, NON-INFRINGEMENT,
 * AND FITNESS FOR A PARTICULAR PURPOSE. IN NO EVENT SHALL MICROCHIP OR ITS
 * LICENSORS BE LIABLE OR OBLIGATED UNDER CONTRACT, NEGLIGENCE, STRICT
 * LIABILITY, CONTRIBUTION, BREACH OF WARRANTY, OR OTHER LEGAL EQUITABLE
 * THEORY ANY DIRECT OR INDIRECT DAMAGES OR EXPENSES INCLUDING BUT NOT
 * LIMITED TO ANY INCIDENTAL, SPECIAL, INDIRECT, OR CONSEQUENTIAL DAMAGES,
 * LOST PROFITS OR LOST DATA, COST OF PROCUREMENT OF SUBSTITUTE GOODS,
 * TECHNOLOGY, SERVICES, ANY CLAIMS BY THIRD PARTIES (INCLUDING BUT NOT
 * LIMITED TO ANY DEFENSE THEREOF), OR OTHER SIMILAR COSTS.
 *
 * THIRD PARTY SOFTWARE:  Notwithstanding anything to the contrary, any
 * third party software accompanying this software - including but not
 * limited to Google's reference code - is subject to the terms and
 * conditions of license agreement of such third party, such as the Apache
 * License Version 2.0 (www.apache.org/licenses/).  To the extent required
 * by such third party licenses, the terms of the third party license will
 * apply in lieu of the terms provided herein.  To the extent the terms of
 * such third party licenses prohibit any of the restrictions described
 * herein, such restrictions will not apply to such third party software.
 * THIRD PARTY SOFTWARE  IS SUBJECT TO THE FOREGOING WARRANTY DISCLAIMER AND
 * LIMIT ON LIABILITY PROVIDED IN THE PARAGRAPH ABOVE.
 *
 ********************************************************************/

#include "GenericTypeDefs.h"
#include "TCPIP Stack/TCPIP.h"
#include "ginsu.h"
#include "gutility.h"
#include "gqueue.h"
#include "gcapture.h"
#include "gsend.h"
#include "gstatus.h"
#include "MainDemo.h"
#include "gcounter.h"
#include "HTTPTime.h"

// Definition of the Google host name; used in data and status messages
ROM BYTE goog_host[] = GOOGLE_HOST;

// Stack start time
extern DWORD StackStartTime;

// Pointer to the authorization path
const char * auth_path = (const char *)gPowerMeterPreferences.auth_path;

// Pointer to the authorization token
const char * auth_token = (const char *)gPowerMeterPreferences.auth_token;

// Public Key Structure Information
G_PKEY_INFO gpkey_info;

void PadBuffer (DWORD value, BYTE * buffer);

// Routines that the google code will use to talk to the outside world.

/*****************************************************************************
  Function:
    INT32 GetUtcTimeSec(void)

  Summary:
    Returns a UTC timestamp

  Description:
    This function returns a UTC timestamp to the Google PowerMeter code.

  Precondition:
    None

  Parameters:
    None

  Return Values:
    INT32 - The UTC timestamp
  ***************************************************************************/
INT32 GetUtcTimeSec(void)
{
    INT32 retVal;

    if ((retVal = SNTPGetUTCSeconds()) > 1248245820)
        return retVal;
    else if ((retVal = HTTPTimeGetUTCSeconds()) > 1248245820)
        return retVal;
    else
        return 0;
}

/*****************************************************************************
  Function:
    INT32 GetUptimeSec(void)

  Summary:
    Returns the time that the stack has been active

  Description:
    This function returns that amount of time that has passed since the
    stack began running.

  Precondition:
    None

  Parameters:
    None.

  Return Values:
    INT32- The number of seconds the stack has been running.
  ***************************************************************************/
INT32 GetUptimeSec(void)
{
    INT32 retVal;
    if (StackStartTime < 1248245820)
        return 1;
    else
    {
        if ((retVal = SNTPGetUTCSeconds()) > 1248245820)
            return retVal - StackStartTime;
        else if ((retVal = HTTPTimeGetUTCSeconds()) > 1248245820)
            return retVal - StackStartTime;
        else
            return 1;
    }
}

/*****************************************************************************
  Function:
    void ConvertUtcSecToString(INT32 utc, char* time_str)

  Summary:
    Converts a UTC timestamp to a string

  Description:
    This function will convert a UTC timestamp to an RFC-specified
    string format representation of that value.

  Precondition:
    None

  Parameters:
    utc - The UTC timestamp to be converted
    time_str - A string pointing to the buffer that will contain the result.

  Return Values:
    None
  ***************************************************************************/
void ConvertUtcSecToString(INT32 utc, char* time_str)
{
    WORD seconds;
    WORD minutes;
    WORD hours;
    DWORD days;
    WORD year;
    BYTE monthArray[] = { 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 };
    WORD month = 0;
    BYTE buffer[5];
    BYTE counter = 0;

    days = utc / 86400;
    utc -= (days * 86400);
    hours = utc / 3600;
    utc -= ((DWORD)hours * 3600);
    minutes = utc / 60;
    utc -= (minutes * 60);
    seconds = utc;

    year = 1970;
    // This algorithm will iteratively determine how many years have passed
    // There is a mathematical way to determine how many years have passed,
    // but the equation is complicated by the lack of a leap day on years
    // divisible by 100 (except if the year is also divisible by 400)
    while (((year % 4 == 0) && (days >= 366)) || ((year % 4 != 0) && (days >= 365)))
    {
        if (((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0))
        {
            // It's a Leap Year
            days -= 366;
        }
        else
        {
            // Not Leap Year
            days -= 365;
        }
        year++;
    }
    // If the current year is a leap year, add another day to February
    if (((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0))
    {
        monthArray[1]++;
    }
    // Determine the current month
    while (days >= monthArray[month])
    {
        days -= monthArray[month];
        month++;
    }
    month++;
    days++;

    // Convert to standard YYYY-MM-DDThh:mm:ss.sTZD form
    uitoa (year, buffer);
    buffer[4] = '-';
    memcpy (time_str, buffer, 5);
    counter += 5;
    uitoa (month, buffer);
    PadBuffer (month, buffer);
    buffer[2] = '-';
    memcpy (time_str + counter, buffer, 3);
    counter += 3;
    ultoa (days, buffer);
    PadBuffer (days, buffer);
    buffer[2] = 'T';
    memcpy (time_str + counter, buffer, 3);
    counter += 3;
    uitoa (hours, buffer);
    PadBuffer (hours, buffer);
    buffer[2] = ':';
    memcpy (time_str + counter, buffer, 3);
    counter += 3;
    uitoa (minutes, buffer);
    PadBuffer (minutes, buffer);
    buffer[2] = ':';
    memcpy (time_str + counter, buffer, 3);
    counter += 3;
    uitoa (seconds, buffer);
    PadBuffer (seconds, buffer);
    buffer[2] = '.';
    memcpy (time_str + counter, buffer, 3);
    counter += 3;
    *(time_str + counter++) = '0';
    *(time_str + counter++) = '0';
    *(time_str + counter++) = '0';
    *(time_str + counter++) = 'Z';
    *(time_str + counter++) = 0;
}

/*****************************************************************************
  Function:
    void PadBuffer (DWORD value, BYTE * buffer)

  Summary:
    Pads a hour/minute/second value to include a leading zero

  Description:
    This function will check a time value to determine if it's a single
    digit value.  If so, it will insert a leading zero.

  Precondition:
    None

  Parameters:
    value - The time value
    buffer - The string to be updated

  Return Values:
    None
  ***************************************************************************/
void PadBuffer (DWORD value, BYTE * buffer)
{
    if (value < 10)
    {
        *(buffer + 1) = *buffer;
        *buffer = '0';
    }
}

/*****************************************************************************
  Function:
    void GetCumulativePower(INT15 which, INT32 *timestamp, INT64 *watts)

  Summary:
    Gets the current cumulative power for a given MTU.

  Description:
    This function will obtain a reading of the current cumulative power
    consumed by the MTU, in watt-hours.  This function will sample the
    'meter' sources, correct the readings based on the capture interval,
    and add them to the cumulative reading.

  Precondition:
    None

  Parameters:
    which - Indicates which MTU to return the power value for
    timestamp - Pointer to the INT32 into which the current UTC time should
        be copied
    watts - Pointer to the INT64 into which the current cumulative power
        should be copied

  Return Values:
    None
  ***************************************************************************/
void GetCumulativePower(INT16 which, INT32 *timestamp, INT64 *watts)
{
    // Store the current time stamp in the variable pointed to by 'timestamp'
    *timestamp = GetUtcTimeSec();

    if (which != 0)
        return;

    gCumulativePower += gCumulativePowerInSamplingPeriod / 10000;

    gCumulativePowerInSamplingPeriod %= 10000;

    // Set the varaible pointed to by 'watts' to the new, updated cumulative power
    *watts = gCumulativePower;
}

/*****************************************************************************
  Function:
    INT32 GetBuildNumber(void)

  Summary:
    Returns the build number

  Description:
    Returns the build number

  Precondition:
    None

  Parameters:
    None

  Return Values:
    INT32 - The build number for this demo.
  ***************************************************************************/
INT32 GetBuildNumber(void)
{
    return APPLICATION_BUILD;
}

/*****************************************************************************
  Function:
    UINT32 GetIpv4(void)

  Summary:
    Returns the device's IPv4 address

  Description:
    Returns the device's IPv4 address

  Precondition:
    None

  Parameters:
    None

  Return Values:
    UINT32 - The device's IPv4 address
  ***************************************************************************/
UINT32 GetIpv4(void)
{
    return AppConfig.MyIPAddr.Val;
}

/*****************************************************************************
  Function:
    UINT16 GetWebPort(void)

  Summary:
    Returns the web port to use to communicate

  Description:
    Returns the web port to use to communicate

  Precondition:
    None

  Parameters:
    None

  Return Values:
    UINT16 - The web port
  ***************************************************************************/
UINT16 GetWebPort(void)
{
    return HTTP_PORT;
}

/*****************************************************************************
  Function:
    const UINT8 *GetMac(void)

  Summary:
    Returns the device's MAC address

  Description:
    Returns the device's MAC address.  Byte[0] is the most significant
    byte; byte[5] is the keast significant byte.  This value is not
    null-terminated.

  Precondition:
    None

  Parameters:
    None

  Return Values:
    UINT8* - Pointer to the MAC address
  ***************************************************************************/
const UINT8 *GetMac(void)
{
    static UINT8 macAddr[6];

    memcpy(macAddr, &AppConfig.MyMACAddr, 6);

    return (const UINT8 *)&macAddr;
}

/*****************************************************************************
  Function:
    UINT32 GetSQ(INT16 which)

  Summary:
    Returns a signal quality value for the MTU.

  Description:
    Returns a signal quality value for the MTU.  This function returns non-
    zero if the sensor is active.  If zero is returned, then assume there
    is no sensor.  If the packet error count is high, it may be possible to
    get some packets but end up with a zero signal quality value.  In this
    case, the sensor can be treated as missing.

  Precondition:
    None

  Parameters:
    which - Indicates which MTU quality to check.

  Return Values:
    UINT32 - The signal quality value.
  ***************************************************************************/
UINT32 GetSQ(INT16 which)
{
    UINT32 value = 0;
    UINT32 value2 = 0;

    // All three sensors are using the same connection.  Because of this,
    // we'll just sum the number of attemps from each sensor.
    // Calculate a signal quality value
    value = GetCounter (G_SEND_ATTEMPT0);

    if (value == 0)
        return 1000;

    value2 =   (GetCounter (G_ERROR_TIMEOUT) + GetCounter (G_ERROR_BAD_STATE) + GetCounter (G_ERROR_NO_SEND_SPACE) +
                 GetCounter (G_ERROR_BAD_VALUE) + GetCounter (G_ERROR_NO_SOCKET));
    value = ((value - value2) / value);
    value *= 1000;

    return value;
}

/*****************************************************************************
  Function:
    void GetSQDetails(INT16 which, UINT32 *count, UINT32 *skipped)

  Summary:
    Returns details about the signal quality value.

  Description:
    This function returns the count of transmission attemps and the number
    of problems that have occured.

  Precondition:
    None

  Parameters:
    which - Indicates which MTU to check.
    count - Return value for the count of packet transmission attempts.
    skipped - Return value for the number of packet transmission failures.

  Return Values:
    None
  ***************************************************************************/
void GetSQDetails(INT16 which, UINT32 *count, UINT32 *skipped)
{
    UINT32 val;

    if (count != NULL)
    {
        val = GetCounter (G_SEND_ATTEMPT0);

        *count = val;
    }

    // At this point, we don't keep a seperate count of errors for each MTU.
    // They should be low enough that it shouldn't significantly affect the value
    if (skipped != NULL)
    {
        val =   GetCounter (G_ERROR_TIMEOUT) + GetCounter (G_ERROR_BAD_STATE) + GetCounter (G_ERROR_NO_SEND_SPACE) +
                     GetCounter (G_ERROR_BAD_VALUE) + GetCounter (G_ERROR_NO_SOCKET);

        *skipped = val;
    }
}

/*****************************************************************************
  Function:
    INT8 SensorStillActive(INT16 which_sensor)

  Summary:
    Determines if a given sensor is still active.

  Description:
    Determines if a given sensor is still active.

  Precondition:
    None

  Parameters:
    which_sensor - The sensor to check

  Return Values:
    TRUE - The sensor is active
    FALSE - The sensor is inactive
  ***************************************************************************/
INT8 SensorStillActive(INT16 which_sensor)
{
    return TRUE;
}

/*****************************************************************************
  Function:
    void SetupCalculatePubKeyHash(UINT8 socket)

  Summary:
    Sets up the check of the public key hash from Google

  Description:
    Sets up the check of the public key hash from Google.  This function
    will clear the G_PUBKEY_INFO structure.

  Precondition:
    None

  Parameters:
    socket - The socket to set up the hash for.

  Return Values:
    None.
  ***************************************************************************/
void SetupCalculatePubKeyHash(UINT8 socket)
{
    memset (&gpkey_info, 0, sizeof(gpkey_info));
}

/*****************************************************************************
  Function:
    void CalculatePubKeyHash(UINT8 socket, INT8 *current_hash)

  Summary:
    Calculate the public key hash for the current HTTPS socket.

  Description:
    Calculates the public key hash for the specified socket.  When the
    HTTPS socket was opened, its public key information was copied into
    the local G_PUBKEY_INFO structure.  This function will hash that data.

  Precondition:
    None

  Parameters:
    socket - The socket that will be hashed.
    current_hash - Pointer to the return value for the hash calculation.

  Return Values:
    None
  ***************************************************************************/
void CalculatePubKeyHash(UINT8 socket, INT8 *current_hash)
{
    HASH_SUM local_hash;
    BYTE temp;

    SHA1Initialize(&local_hash);

    temp = gpkey_info.pub_size_bytes >> 8;
    SHA1AddData(&local_hash, &temp, 1);

    temp = gpkey_info.pub_size_bytes & 0xFF;
    SHA1AddData(&local_hash, &temp, 1);

    SHA1AddData(&local_hash, (BYTE *) &gpkey_info.pub_e[0], sizeof(gpkey_info.pub_e));

    SHA1AddData (&local_hash, (BYTE *) &gpkey_info.pub_key[0], gpkey_info.pub_size_bytes);

    SHA1Calculate(&local_hash, (BYTE *) &current_hash[0]);
}

/*****************************************************************************
  Function:
    const char *GetPreferenceStr(PREF_LIST which)

  Summary:
    Returns a string-type power meter preference

  Description:
    This function returns a string-type power meter preference.

  Precondition:
    None

  Parameters:
    which - The preference to return
            - AUTH_TOKEN_STR - The authorization token
            - AUTH_PATH_STR - The authorization path

  Return Values:
    const char * - Pointer to the preference string.
  ***************************************************************************/
const char *GetPreferenceStr(PREF_LIST which)
{
    switch (which)
    {
        case AUTH_TOKEN_STR:        // Authorization token
            return (const char *)gPowerMeterPreferences.auth_token;
            break;
        case AUTH_PATH_STR:         // Authorization path
            return (const char *)gPowerMeterPreferences.auth_path;
            break;
        default:
            return NULL;
            break;
    }
}

/*****************************************************************************
  Function:
    INT32 GetPreferenceInt32(PREF_LIST which)

  Summary:
    Returns an INT32-type power meter preference

  Description:
    This function returns an INT32-type power meter preference.

  Precondition:
    None

  Parameters:
    which - Specified which preference to return.
            - CAPTURE_SEC_INT - The capture interval frequency (seconds)
            - SEND_SEC_INT - The data transmission frequency (seconds)
            - SEND_STATUS_INT - The status transmission frequency (seconds)

  Return Values:
    INT32 - The preference value.
  ***************************************************************************/
INT32 GetPreferenceInt32(PREF_LIST which)
{
    switch (which)
    {
        case CAPTURE_SEC_INT:       // Frequency of capturing data (seconds)
            return gPowerMeterPreferences.cap_sec_interval;
            break;
        case SEND_SEC_INT:          // Frequency of sending data to google (seconds)
            return gPowerMeterPreferences.send_sec_interval;
            break;
        case SEND_STATUS_INT:
            return (INT16)gPowerMeterPreferences.send_status;
            break;
        default:
            return 0;
            break;
    }
}

/*****************************************************************************
  Function:
    const INT8 *GetHashListEntry(INT8 hash_slot)

  Summary:
    Returns a pointer to a public key hash.

  Description:
    Returns a pointer to a public key hash.

  Precondition:
    None

  Parameters:
    hash_slot - Specifies the hash to locate.

  Return Values:
    const INT8 * - The hash value pointer
  ***************************************************************************/
const INT8 *GetHashListEntry(INT8 hash_slot)
{
    if ((unsigned char) hash_slot >= 3)
        return NULL;

    return (const INT8 *)gPowerMeterPreferences.pKeyHashes[hash_slot];
}

/*****************************************************************************
  Function:
    void SetHashListEntry(INT8 *hash, INT8 hash_slot)

  Summary:
    Sets the value of a public key hash

  Description:
    Sets the value of a public key hash

  Precondition:
    None

  Parameters:
    hash - Pointer to the new hash value.
    hash_slot - The hash to replace with the new value.

  Return Values:
    None
  ***************************************************************************/
void SetHashListEntry(INT8 *hash, INT8 hash_slot)
{
    INT8 i = 0;

    if ((unsigned char) hash_slot >= 3)
        return;

    while (i < 20 && *(hash + i) != 0)
    {
        gPowerMeterPreferences.pKeyHashes[hash_slot][i] = *(hash + i);
        i++;
    }
}

/*****************************************************************************
  Function:
    void GUpdateNVRam(void)

  Summary:
    Updates non-volatile memory with the current hash values

  Description:
    Updates non-volatile memory with the current hash values

  Precondition:
    None

  Parameters:
    None

  Return Values:
    None
  ***************************************************************************/
void GUpdateNVRam(void)
{
    SavePowerMeterPreferences();
}

/*****************************************************************************
  Function:
    void GPollForWork(void)

  Summary:
    Task for the Google PowerMeter application

  Description:
    This function checks if any Google PowerMeter subtasks must be executed.
    If so, it will execute them.  This function must be called periodically
    to enable the Google PowerMeter functionality.

  Precondition:
    None

  Parameters:
    None

  Return Values:
    None
  ***************************************************************************/
void GPollForWork(void)
{
    static BOOL bUpdateInterval = FALSE;

    if (GReadyToCapture())
    {
        GCapture();
    }

    if (GSendHasWork())
    {
        GSendDoWork();
        bUpdateInterval = TRUE;
    }

    if (GStatusHasWork())
    {
        GStatusDoWork();
    }

    if (*auth_path && *auth_token && GReadyToSend())
    {
        GSend();
        if ((gPowerMeterPreferences.cap_sec_interval != gPowerMeterPreferences.send_sec_interval) && bUpdateInterval)
            gPowerMeterPreferences.cap_sec_interval = gPowerMeterPreferences.send_sec_interval;
    }

    if (GetPreferenceInt32(SEND_STATUS_INT) && GReadyToStatus())
        GStatus();
}

/*****************************************************************************
  Function:
    void GInitForWork(void)

  Summary:
    Initializes the PowerMeter state machine.

  Description:
    This code will initialize the PowerMeter state machine.  It will
    set the initial capture attempt timestamp and set the flag indicating
    that the next transmission will be an initial transmission.  This
    function should be called while the system is booting after the
    device modules (like the TCP/IP stack and sensors) are initialized.

  Precondition:
    None

  Parameters:
    None

  Return Values:
    None
  ***************************************************************************/
void GInitForWork(void)
{
    GCaptureNow(FALSE, -1);

    GSendInitialFlag(FALSE);
}

/*****************************************************************************
  Function:
    void GSendInit(UINT8 send_now)

  Summary:
    Sets the next communication to an initial communication.

  Description:
    This function forces GSend() to treat the next communication as an
    initial communication.

  Precondition:
    None

  Parameters:
    send_now - Forces the module to send any queued data immediately.

  Return Values:
    None
  ***************************************************************************/
void GSendInit(UINT8 send_now)
{
    GSendInitialFlag (send_now);
}

/*****************************************************************************
  Function:
    void GCaptureNow(INT8 need_initial, INT16 which)

  Summary:
    Captures the latest MTU values now.

  Description:
    This function will capture the latest MTU values immediately.

  Precondition:
    None

  Parameters:
    need_initial - If TRUE, forces an immediate capture. Otherwise
                    initializes the capture timestamp.
    which_sensor - The sensor to check

  Return Values:
    None
  ***************************************************************************/
void GCaptureNow(INT8 need_initial, INT16 which)
{
    if (need_initial)
    {
        INT16 i;
        INT32 timestamp;
        INT64 watts;
        INT16 low, high;
        if ((which < 0) || (which >= GQ_NUM_QUEUES))
        {
          // If which is not valid, do all the sensors
          low = 0;
          high = GQ_NUM_QUEUES;
        } else {
          // otherwise force the for loop below to execute only once
          // using the sensor we care about.
          low = which;
          high = which + 1;
        }

        for (i = low; i < high; i++)
        {
            if (SensorStillActive(i))
            {
                GetCumulativePower (i, &timestamp, &watts);
                if (timestamp > GCAPTURE_MIN_TIMESTAMP)
                {
                    GAddTail (i, timestamp - 1, watts, G_METER_RESET);
                    GAddTail (i, timestamp, watts, G_METER_RESET);
                }
            }
        }
    }
    else
    {
        SetTimestamp (G_CAPTURE_ATTEMPT, 0);
    }
}

