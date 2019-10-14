//*****************************************************************************
// Include and Header files
//*****************************************************************************

#include "mTouchCap_PIC24F_AN1317_RS232.h"

/******************************************************************************
 * Function: UARTSendNewLine()
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Note:	Sends CR+LF over the UART
 *
 *****************************************************************************/
void UARTSendNewLine()
{
	while(U2STAbits.UTXBF);
	U2TXREG = 0x0D;
	while(U2STAbits.UTXBF);
	U2TXREG = 0x0A;
}

/******************************************************************************
 * Function: InitSerCon()
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Note:            
 *
 *****************************************************************************/
void InitSerCon()
{
	_TRISD0  = 1; 	//RX
	_TRISD11 = 0;	//TX

	__builtin_write_OSCCONL(OSCCON & 0xbf); //unlock OSCCON register
	RPOR6bits.RP12R = 5;		//RP12 TX	configure PPS to get UART functionality on
	RPINR19			= 11; 		//RP11 RX	desired pins
	__builtin_write_OSCCONL(OSCCON | 0x40); //lock OSCCON register

	U2MODEbits.BRGH     = 1;
	U2BRG               = BRG_VALUE_16MIPS_38400;
	U2MODEbits.UARTEN   = 1;
	U2STAbits.UTXEN     = 1;	//configure and enable UART
}

/******************************************************************************
 * Function:		bin2hex()
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Note:            
 *
 *****************************************************************************/
void bin2hex(UINT16 val)
{
    const char hex[] = {'0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F'};
	UINT8 nib;

	//sending hexadecimal values instead of decimal over the UART saves a bit of time

	while(U2STAbits.UTXBF);    
	nib = (val >> 12) & 0x0F;
	if( nib ) U2TXREG = hex[ nib ]; // nibble 1 sent only if non-zero

	while(U2STAbits.UTXBF);  
	nib = (val >> 8) & 0x0F;  
	U2TXREG = hex[ nib ]; 			// nibble 2

    while(U2STAbits.UTXBF);    
	nib = (val >> 4) & 0x0F;
	U2TXREG = hex[ nib ]; 			// nibble 3

    while(U2STAbits.UTXBF);    
	nib = val & 0x0F;
	U2TXREG = hex[ nib ];			// nibble 4
}

/******************************************************************
For connecting to the PC GUI initialize serial connection and insert
this code into the main loop

if(U2STAbits.URXDA)
		{
			a=U2RXREG;
			if(a==0x00) pp=1;
			if(a==0x01)
			{
				while(!U2STAbits.URXDA);
				logb=U2RXREG;
			}
			
			
		}

		if(t1m>=scan_interval)
		{
			t1m=0;

			ReadButtons(CHANNELS);

			if(pp)
			{
				while(U2STAbits.UTXBF);	
				U2TXREG=lo(bpress);
				while(U2STAbits.UTXBF);	
				U2TXREG=hi(bpress);
	
				while(U2STAbits.UTXBF);	
				U2TXREG=lo(raw[logb]);
				while(U2STAbits.UTXBF);	
				U2TXREG=hi(raw[logb]);

				while(U2STAbits.UTXBF);	
				U2TXREG=lo(envelope[logb]);
				while(U2STAbits.UTXBF);	
				U2TXREG=hi(envelope[logb]);

				while(U2STAbits.UTXBF);	
				U2TXREG=lo(average[logb]>>AVG_BITS);
				while(U2STAbits.UTXBF);	
				U2TXREG=hi(average[logb]>>AVG_BITS);

				pp--;
			}
*/

