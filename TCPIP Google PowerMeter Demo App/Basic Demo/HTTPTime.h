
void HTTPTimeTask(void);
void StartHTTPTimeStateMachine (void);
BOOL IsHTTPTimeStateMachineRunning (void);
DWORD HTTPTimeGetUTCSeconds(void);

// The current number of leap seconds
#define LEAP_SECONDS            24

// PIC24 RTCC Structure
typedef union
{
    struct
    {
        unsigned char   mday;       // BCD codification for day of the month, 01-31
        unsigned char   mon;        // BCD codification for month, 01-12
        unsigned char   year;       // BCD codification for years, 00-99
        unsigned char   reserved;   // reserved for future use. should be 0
    };                              // field access
    unsigned char       b[4];       // byte access
    unsigned short      w[2];       // 16 bits access
    unsigned long       l;          // 32 bits access
} PIC24_RTCC_DATE;

// PIC24 RTCC Structure
typedef union
{
    struct
    {
        unsigned char   sec;        // BCD codification for seconds, 00-59
        unsigned char   min;        // BCD codification for minutes, 00-59
        unsigned char   hour;       // BCD codification for hours, 00-24
        unsigned char   weekday;    // BCD codification for day of the week, 00-06
    };                              // field access
    unsigned char       b[4];       // byte access
    unsigned short      w[2];       // 16 bits access
    unsigned long       l;          // 32 bits access
} PIC24_RTCC_TIME;



