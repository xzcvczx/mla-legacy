typedef union {
    UINT8 raw_data[16];
    struct {
        UINT32 addressH;
        UINT32 addressL;
        UINT32 size;
        UINT32 code;
    } formatted_data;
} VALIDATION_TABLE_ENTRY;

void CustomBinWrite(BYTE *buffer, DWORD size);
BOOL CustomBinValidate(void);
