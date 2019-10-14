/*$6*/



#include "MainDemo.h"

#ifdef ENABLE_SCREEN_CAPTURE
typedef struct tagBITMAPFILEHEADER
{
    WORD    bfType;
    DWORD   bfSize;
    WORD    bfReserved1;
    WORD    bfReserved2;
    DWORD   bfOffBits;
} BITMAPFILEHEADER;

typedef struct tagBITMAPINFOHEADER
{
    DWORD   biSize;
    LONG    biWidth;
    LONG    biHeight;
    WORD    biPlanes;
    WORD    biBitCount;
    DWORD   biCompression;
    DWORD   biSizeImage;
    LONG    biXPelsPerMeter;
    LONG    biYPelsPerMeter;
    DWORD   biClrUsed;
    DWORD   biClrImportant;
} BITMAPINFOHEADER;

/* */

void GetBMP(void)
{
    int                 x, y, counter;
    char                *pointer;
    WORD                pixel;

    BITMAPFILEHEADER    bfh;
    BITMAPINFOHEADER    bih;

    bfh.bfType = 0x4D42;
    bfh.bfReserved1 = 0;
    bfh.bfReserved2 = 0;
    bfh.bfOffBits = (long)(sizeof(bfh) + sizeof(bih));
    bfh.bfSize = (long)(bfh.bfOffBits + 2ul * (GetMaxX() + 1ul) * (GetMaxY() + 1ul));

    bih.biSize = 40;
    bih.biWidth = (GetMaxX() + 1);
    bih.biHeight = -(GetMaxY() + 1);
    bih.biPlanes = 1;
    bih.biBitCount = 16;
    bih.biClrUsed = 0;
    bih.biCompression = 0;
    bih.biSizeImage = 2ul * (GetMaxX() + 1ul) * (GetMaxY() + 1ul);
    bih.biXPelsPerMeter = 0;
    bih.biYPelsPerMeter = 0;
    bih.biClrImportant = 0;

    pointer = (char *) &bfh;
    for(counter = 0; counter < sizeof(bfh); counter++)
    {
        UARTPutChar(*pointer++);
    }

    pointer = (char *) &bih;
    for(counter = 0; counter < sizeof(bih); counter++)
    {
        UARTPutChar(*pointer++);
    }

    for(y = 0; y < (GetMaxY() + 1); y++)
    {
        for(x = 0; x < (GetMaxX() + 1); x++)
        {
            pixel = GetPixel(x, y);
            pixel = (pixel & 0b0000000000011111) | ((pixel >> 1) & 0b0111111111100000);
            UARTPutChar(((WORD_VAL) pixel).v[0]);
            UARTPutChar(((WORD_VAL) pixel).v[1]);
        }
    }
}

#endif
