/********************************************************************
 FileName:		sc_config.h
 Dependencies:	See INCLUDES section
 Processor:		PIC18, PIC24 Microcontrollers
 Hardware:		This demo is natively intended to be used on Exp 16, LPC
 				& HPC Exp board. This demo can be modified for use on other hardware
 				platforms.
 Complier:  	Microchip C18 (for PIC18), C30 (for PIC24)
 Company:		Microchip Technology, Inc.

 Software License Agreement:

 The software supplied herewith by Microchip Technology Incorporated
 (the “Company”) for its PIC® Microcontroller is intended and
 supplied to you, the Company’s customer, for use solely and
 exclusively on Microchip PIC Microcontroller products. The
 software is owned by the Company and/or its supplier, and is
 protected under applicable copyright laws. All rights are reserved.
 Any use in violation of the foregoing restrictions may subject the
 user to criminal sanctions under applicable laws, as well as to
 civil liability for the breach of the terms and conditions of this
 license.

 THIS SOFTWARE IS PROVIDED IN AN “AS IS” CONDITION. NO WARRANTIES,
 WHETHER EXPRESS, IMPLIED OR STATUTORY, INCLUDING, BUT NOT LIMITED
 TO, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
 PARTICULAR PURPOSE APPLY TO THIS SOFTWARE. THE COMPANY SHALL NOT,
 IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL OR
 CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.

********************************************************************
 File Description:

 Change History:
  Rev   Description
  ----  -----------------------------------------
  1.0   Initial release
********************************************************************/

#ifndef SCCFG_H
#define SCCFG_H

	#ifdef __PIC24FJ256GB110__

		#define EXPLORER_16

		// Note : SYS_FREQ denotes the System clock frequency
		#define SYS_FREQ 32000000UL

		// Note : FCY denotes the instruction cycle clock frequency (SYS_FREQ/2)"
		#define FCY (SYS_FREQ/2)

		#include "p24Fxxxx.h"
		#include "libpic30.h"
		#include <math.h>

		#define  WaitMicroSec(MicroSec)    __delay_us(MicroSec)
		#define  WaitMilliSec(Waitms)      __delay_ms(Waitms)

		// Enable Port Pin of Micro as Vcc for Smart Card
		#define  ENABLE_SC_POWER_THROUGH_PORT_PIN

		// Provide clock from the Micro to the Smart Card
		#define  ENABLE_SC_EXTERNAL_CLOCK

		// Set Clock Freq to drive Smart Card
		#define Scdrv_ClockSet()            (REFOCON = 0x0300) 

		// Enable Clock to drive Smart Card
		#define SCdrv_EnableClock()	    	(REFOCONbits.ROON = 1,U1MODEbits.UARTEN = 1)

		// Disable Clock used to drive Smart Card
		#define SCdrv_DisableClock()	    (REFOCONbits.ROON = 0)

		#define REF_CLOCK_TO_SMART_CARD     ((unsigned long long)((unsigned long long)FCY * 2)/(pow(2,REFOCONbits.RODIV)))

		//Turn on 1/off 0 card power
		#define SCdrv_SetSwitchCardPower(x) 			(LATBbits.LATB9=(x))
		
		//set reset state to the value x
		#define SCdrv_SetSwitchCardReset(x) 			(LATEbits.LATE8=(x))
		
		//set tx pin to the value x
		#define SCdrv_SetTxPinData(x) 					(LATFbits.LATF2=(x))
		
		//Get Smart Card Present status
		#define SCdrv_CardPresent()	      				(PORTAbits.RA14 || !PORTBbits.RB1)

		//Get Rx Pin Data
		#define SCdrv_GetRxPinData()               		(PORTCbits.RC4)
		
		//Set Tx Pin direction
		#define SCdrv_TxPin_Direction(flag)    			(TRISFbits.TRISF2 = flag)
		
		//Set Power Pin direction connected to the smart card
		#define SCdrv_PowerPin_Direction(flag) 			(TRISBbits.TRISB9 = flag)
		
		//Set Reset Pin direction connected to the smart card
		#define SCdrv_ResetPin_Direction(flag) 			(TRISEbits.TRISE8 = flag)
		
		//Set Card Present Pin direction connected to the smart card
		#define SCdrv_CardPresent_Direction(flag) 		(TRISAbits.TRISA14 = flag)
		
		//Set Sim Present Pin direction connected to the smart card
		#define SCdrv_SimPresent_Direction(flag) 		(TRISBbits.TRISB1 = flag)
		
		// Enable Pull up at Tx Pin
		#define SCdrv_EnableTxPinPullUp()				(_CN48PUE = 1)
		
		// Enable Pull up at Rx Pin
		#define SCdrv_EnableRxPinPullUp()				(_CN70PUE = 1)
		
		// Enable Pull up for SMART_CARD_DETECTION
		#define SCdrv_EnableCardPresentPinPullUp()		(_CN43PUE = 1)
		
		// Enable Pull up for SIM_CARD_DETECTION
		#define SCdrv_EnableSimPresentPinPullUp()		(_CN3PUE = 1)
		
		// Disable Pull up at Tx Pin
		#define SCdrv_DisableTxPinPullUp()				(_CN48PUE = 0)
		
		// Disable Pull up at Rx Pin
		#define SCdrv_DisableRxPinPullUp()				(_CN70PUE = 0)
		
		// MAP UART Rx Pin
		#define MapUART1RxPin()							PPSIn( RPI41, U1RX_FUNC )
		
		// MAP UART Tx Pin
		#define MapUART1TxPin()							PPSOut( RP30, U1TX_FUNC )

	#elif defined(__18F46J50)

		#define HPC_EXPLORER
	
		// Note : SYS_FREQ denotes the System clock frequency
		#define SYS_FREQ 48000000UL

		// Note : FCY denotes the instruction cycle clock frequency (SYS_FREQ/4)"
		#define FCY (SYS_FREQ/4)

		#include <p18cxxx.h>
		#include <delays.h>
		#include <math.h>

		// Enable Port Pin of Micro as Vcc for Smart Card
		#define  ENABLE_SC_POWER_THROUGH_PORT_PIN

		// Provide clock from the Micro to the Smart Card
		#define  ENABLE_SC_EXTERNAL_CLOCK

		// Set Clock Freq to drive Smart Card
		#define Scdrv_ClockSet()            (REFOCON = 0x04) 

		// Enable Clock to drive Smart Card
		#define SCdrv_EnableClock()	    	(REFOCONbits.ROON = 1,RCSTA1bits.SPEN = 1)

		// Disable Clock used to drive Smart Card
		#define SCdrv_DisableClock()	    (REFOCONbits.ROON = 0)

		#define REF_CLOCK_TO_SMART_CARD     (unsigned long)((FCY * 4)/(pow(2,REFOCONbits.RODIV)))

		//Turn on 1/off 0 card power
		#define SCdrv_SetSwitchCardPower(x) 			(LATBbits.LATB0=(x))

		//set reset state to the value x
		#define SCdrv_SetSwitchCardReset(x) 			(LATBbits.LATB4=(x))

		//set tx pin to value x
		#define SCdrv_SetTxPinData(x) 					(LATCbits.LATC6=(x))

		//Get Smart Card Present status
		#define SCdrv_CardPresent()	      				(PORTBbits.RB3 || !PORTBbits.RB1)

		//Get Rx Pin Data
		#define SCdrv_GetRxPinData()               		(PORTCbits.RC7)

		//Set Tx Pin direction
		#define SCdrv_TxPin_Direction(flag)    			(TRISCbits.TRISC6 = flag)

		//Set Rx Pin direction
		#define SCdrv_RxPin_Direction(flag)    			(TRISCbits.TRISC7 = flag)

		//Set Power Pin direction connected to the smart card
		#define SCdrv_PowerPin_Direction(flag) 			(TRISBbits.TRISB0 = flag)

		//Set Reset Pin direction connected to the smart card
		#define SCdrv_ResetPin_Direction(flag) 			(TRISBbits.TRISB4 = flag)

		//Set Card Present Pin direction connected to the smart card
		#define SCdrv_CardPresent_Direction(flag) 		(TRISBbits.TRISB3 = flag)

		//Set Sim Present Pin direction connected to the smart card
		#define SCdrv_SimPresent_Direction(flag) 		(TRISBbits.TRISB1 = flag)

		// Enable Pull up for SMART_CARD_DETECTION & SIM_CARD_DETECTION
		#define SCdrv_EnableCardSimPresentPinPullUp()	(ANCON1 = (ANCON1 | 0x1F),INTCON2bits.RBPU = 0)

		// Disable Pull up for SMART_CARD_DETECTION & SIM_CARD_DETECTION
		#define SCdrv_DisbleCardSimPresentPinPullUp()	(INTCON2bits.RBPU = 1)
	
	#elif defined(__18F87J50)

		#define HPC_EXPLORER
	
		// Note : SYS_FREQ denotes the System clock frequency
		#define SYS_FREQ 48000000UL

		// Note : FCY denotes the instruction cycle clock frequency (SYS_FREQ/4)"
		#define FCY (SYS_FREQ/4)

		#include <p18cxxx.h>
		#include <delays.h>
		#include <math.h>

		// Enable Port Pin of Micro as Vcc for Smart Card
		#define  ENABLE_SC_POWER_THROUGH_PORT_PIN

		// Provide clock from the Micro to the Smart Card
		#define  ENABLE_SC_EXTERNAL_CLOCK

		// Select Alternate SFR's of the micro
		#define  Select_Alt_SFR()		WDTCONbits.ADSHR = 1	

		// Select Default SFR's of the micro
		#define  Select_Default_SFR()	WDTCONbits.ADSHR = 0

		// Set Clock Freq to drive Smart Card
		#define Scdrv_ClockSet()            (Select_Alt_SFR(),REFOCON = 0x04,refconVal = REFOCON,Select_Default_SFR()) 

		// Enable Clock to drive Smart Card
		#define SCdrv_EnableClock()	    	(Select_Alt_SFR(),REFOCONbits.ROON = 1,Select_Default_SFR(),RCSTA1bits.SPEN = 1)

		// Disable Clock used to drive Smart Card
		#define SCdrv_DisableClock()	    (Select_Alt_SFR(),REFOCONbits.ROON = 0,Select_Default_SFR())

		#define REF_CLOCK_TO_SMART_CARD     (unsigned long)((FCY * 4)/(pow(2,(refconVal & 0x0F))))

		//Turn on 1/off 0 card power
		#define SCdrv_SetSwitchCardPower(x) 			(LATBbits.LATB0=(x))

		//set reset state to the value x
		#define SCdrv_SetSwitchCardReset(x) 			(LATBbits.LATB4=(x))

		//set tx pin to value x
		#define SCdrv_SetTxPinData(x) 					(LATCbits.LATC6=(x))

		//Get Smart Card Present status
		#define SCdrv_CardPresent()	      				(PORTBbits.RB3 || !PORTBbits.RB1)

		//Get Rx Pin Data
		#define SCdrv_GetRxPinData()               		(PORTCbits.RC7)

		//Set Tx Pin direction
		#define SCdrv_TxPin_Direction(flag)    			(TRISCbits.TRISC6 = flag)

		//Set Rx Pin direction
		#define SCdrv_RxPin_Direction(flag)    			(TRISCbits.TRISC7 = flag)

		//Set Power Pin direction connected to the smart card
		#define SCdrv_PowerPin_Direction(flag) 			(TRISBbits.TRISB0 = flag)

		//Set Reset Pin direction connected to the smart card
		#define SCdrv_ResetPin_Direction(flag) 			(TRISBbits.TRISB4 = flag)

		//Set Card Present Pin direction connected to the smart card
		#define SCdrv_CardPresent_Direction(flag) 		(TRISBbits.TRISB3 = flag)

		//Set Sim Present Pin direction connected to the smart card
		#define SCdrv_SimPresent_Direction(flag) 		(TRISBbits.TRISB1 = flag)

		// Enable Pull up's for SMART_CARD_DETECTION & SIM_CARD_DETECTION
		#define SCdrv_EnableCardSimPresentPinPullUp()	(ANCON1 = (ANCON1 | 0x1F),INTCON2bits.RBPU = 0)

		// Disable Pull up's for SMART_CARD_DETECTION & SIM_CARD_DETECTION
		#define SCdrv_DisbleCardSimPresentPinPullUp()	(INTCON2bits.RBPU = 1)

	#elif defined(__18F14K50)

		#define LOW_PIN_COUNT_USB_DEVELOPMENT_KIT

		// Note : SYS_FREQ denotes the System clock frequency
		#define SYS_FREQ 48000000UL

		// Note : FCY denotes the instruction cycle clock frequency (SYS_FREQ/4)"
		#define FCY (SYS_FREQ/4)

		#include <p18cxxx.h>
		#include <delays.h>
		#include <math.h>

		// Enable Port Pin of Micro as Vcc for Smart Card
		#define  ENABLE_SC_POWER_THROUGH_PORT_PIN

		// Provide clock from the Micro to the Smart Card
		#define  ENABLE_SC_EXTERNAL_CLOCK

		// Set Clock Freq to drive Smart Card
		#define Scdrv_ClockSet()            (TMR2 = 0,T2CON = 0x00,PR2 = 3,CCPR1L = 2,PSTRCON = 0x01,TRISCbits.TRISC5 = 0,CCP1CON = 0x00) 

		// Enable Clock to drive Smart Card
		#define SCdrv_EnableClock()	    	(CCP1CON = 0x0C,T2CONbits.TMR2ON = 1,RCSTAbits.SPEN = 1)

		// Disable Clock used to drive Smart Card
		#define SCdrv_DisableClock()	    (CCP1CON = 0x00,T2CONbits.TMR2ON = 0,TMR2 = 0)

		#define REF_CLOCK_TO_SMART_CARD     (unsigned long)(FCY/(PR2 + 1))

		//Turn on 1/off 0 card power
		#define SCdrv_SetSwitchCardPower(x) 			(LATCbits.LATC0=(x))

		//set reset state to the value x
		#define SCdrv_SetSwitchCardReset(x) 			(LATCbits.LATC4=(x))

		//set tx pin to the value x
		#define SCdrv_SetTxPinData(x) 					(LATBbits.LATB7=(x))

		//Get Smart Card Present status
		#define SCdrv_CardPresent()	      				(PORTBbits.RB6 || !PORTBbits.RB4)

		//Get Rx Pin Data
		#define SCdrv_GetRxPinData()               		(PORTBbits.RB5)

		//Set Tx Pin direction
		#define SCdrv_TxPin_Direction(flag)    			(TRISBbits.TRISB7 = flag)

		//Set Rx Pin direction
		#define SCdrv_RxPin_Direction(flag)    			(ANSELH = 0,TRISBbits.TRISB5 = flag)

		//Set Power Pin direction connected to the smart card
		#define SCdrv_PowerPin_Direction(flag) 			(TRISCbits.TRISC0 = flag)

		//Set Reset Pin direction connected to the smart card
		#define SCdrv_ResetPin_Direction(flag) 			(TRISCbits.TRISC4 = flag)

		//Set Card Present Pin direction connected to the smart card
		#define SCdrv_CardPresent_Direction(flag) 		(TRISBbits.TRISB6 = flag)

		//Set Sim Present Pin direction connected to the smart card
		#define SCdrv_SimPresent_Direction(flag) 		(TRISBbits.TRISB4 = flag)

		// Enable Pull up's for SMART_CARD_DETECTION & SIM_CARD_DETECTION
		#define SCdrv_EnableCardSimPresentPinPullUp()	(WPUB = 0xE0,INTCON2bits.RABPU = 0)

		// Disable Pull up's for SMART_CARD_DETECTION & SIM_CARD_DETECTION
		#define SCdrv_DisbleCardSimPresentPinPullUp()	(INTCON2bits.RABPU = 1)

	#elif defined(__18F4550)
	
		#define PICDEM_FS_USB
	
		// Note : SYS_FREQ denotes the System clock frequency
		#define SYS_FREQ 48000000UL

		// Note : FCY denotes the instruction cycle clock frequency (SYS_FREQ/4)"
		#define FCY (SYS_FREQ/4)

		#include <p18cxxx.h>
		#include <delays.h>
		#include <math.h>

		// Enable Port Pin of Micro as Vcc for Smart Card
		#define  ENABLE_SC_POWER_THROUGH_PORT_PIN

		// Provide clock from the Micro to the Smart Card
		#define  ENABLE_SC_EXTERNAL_CLOCK

		// Set Clock Freq to drive Smart Card
		#define Scdrv_ClockSet()            (TMR2 = 0,T2CON = 0x00,PR2 = 3,CCPR1L = 2,TRISCbits.TRISC2 = 0,CCP1CON = 0x00) 

		// Enable Clock to drive Smart Card
		#define SCdrv_EnableClock()	    	(CCP1CON = 0x0C,T2CONbits.TMR2ON = 1,RCSTAbits.SPEN = 1)

		// Disable Clock used to drive Smart Card
		#define SCdrv_DisableClock()	    (CCP1CON = 0x00,T2CONbits.TMR2ON = 0,TMR2 = 0)

		#define REF_CLOCK_TO_SMART_CARD     (unsigned long)(FCY/(PR2 + 1))

		//Turn on 1/off 0 card power
		#define SCdrv_SetSwitchCardPower(x) 			(LATBbits.LATB0=(x))

		//set reset state to the value x
		#define SCdrv_SetSwitchCardReset(x) 			(LATBbits.LATB4=(x))

		//set tx pin to value x
		#define SCdrv_SetTxPinData(x) 					(LATCbits.LATC6=(x))

		//Get Smart Card Present status
		#define SCdrv_CardPresent()	      				(PORTBbits.RB3 || !PORTBbits.RB1)

		//Get Rx Pin Data
		#define SCdrv_GetRxPinData()               		(PORTCbits.RC7)

		//Set Tx Pin direction
		#define SCdrv_TxPin_Direction(flag)    			(TRISCbits.TRISC6 = flag)

		//Set Rx Pin direction
		#define SCdrv_RxPin_Direction(flag)    			(TRISCbits.TRISC7 = flag)

		//Set Power Pin direction connected to the smart card
		#define SCdrv_PowerPin_Direction(flag) 			(TRISBbits.TRISB0 = flag)

		//Set Reset Pin direction connected to the smart card
		#define SCdrv_ResetPin_Direction(flag) 			(TRISBbits.TRISB4 = flag)

		//Set Card Present Pin direction connected to the smart card
		#define SCdrv_CardPresent_Direction(flag) 		(TRISBbits.TRISB3 = flag)

		//Set Sim Present Pin direction connected to the smart card
		#define SCdrv_SimPresent_Direction(flag) 		(TRISBbits.TRISB1 = flag)

		// Enable Pull up for SMART_CARD_DETECTION & SIM_CARD_DETECTION
		#define SCdrv_EnableCardSimPresentPinPullUp()	(INTCON2bits.RBPU = 0)

		// Disable Pull up for SMART_CARD_DETECTION & SIM_CARD_DETECTION
		#define SCdrv_DisbleCardSimPresentPinPullUp()	(INTCON2bits.RBPU = 1)

	#else

	#endif

#endif //SCCFG_H
