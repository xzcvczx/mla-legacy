/*************************************************************************
 *  © 2011 Microchip Technology Inc.                                       
 *  
 *  Project Name:    mTouch Library
 *  FileName:        PICFamilies.h
 *  Dependencies:    None.
 *  Processor:       PIC18,PIC24 
 *  Compiler:        MPLAB C18, HI-TECH PIC18, C30
 *  IDE:             MPLAB® IDE or MPLAB® X                        
 * ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 *  Description:     This header contains hardware depended definitions.
 *************************************************************************/
/**************************************************************************
 * MICROCHIP SOFTWARE NOTICE AND DISCLAIMER: You may use this software, and 
 * any derivatives created by any person or entity by or on your behalf, 
 * exclusively with Microchip's products in accordance with applicable
 * software license terms and conditions, a copy of which is provided for
 * your referencein accompanying documentation. Microchip and its licensors 
 * retain all ownership and intellectual property rights in the 
 * accompanying software and in all derivatives here to. 
 * 
 * This software and any accompanying information is for suggestion only. 
 * It does not modify Microchip's standard warranty for its products. You 
 * agree that you are solely responsible for testing the software and 
 * determining its suitability. Microchip has no obligation to modify, 
 * test, certify, or support the software. 
 * 
 * THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER 
 * EXPRESS, IMPLIED OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED 
 * WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A 
 * PARTICULAR PURPOSE APPLY TO THIS SOFTWARE, ITS INTERACTION WITH 
 * MICROCHIP'S PRODUCTS, COMBINATION WITH ANY OTHER PRODUCTS, OR USE IN ANY 
 * APPLICATION. 
 * 
 * IN NO EVENT, WILL MICROCHIP BE LIABLE, WHETHER IN CONTRACT, WARRANTY, 
 * TORT (INCLUDING NEGLIGENCE OR BREACH OF STATUTORY DUTY), STRICT 
 * LIABILITY, INDEMNITY, CONTRIBUTION, OR OTHERWISE, FOR ANY INDIRECT, 
 * SPECIAL, PUNITIVE, EXEMPLARY, INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, 
 * FOR COST OR EXPENSE OF ANY KIND WHATSOEVER RELATED TO THE SOFTWARE, 
 * HOWSOEVER CAUSED, EVEN IF MICROCHIP HAS BEEN ADVISED OF THE POSSIBILITY 
 * OR THE DAMAGES ARE FORESEEABLE. TO THE FULLEST EXTENT ALLOWABLE BY LAW, 
 * MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN ANY WAY RELATED TO THIS 
 * SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY, THAT YOU HAVE PAID 
 * DIRECTLY TO MICROCHIP FOR THIS SOFTWARE. 
 * 
 * MICROCHIP PROVIDES THIS SOFTWARE CONDITIONALLY UPON YOUR ACCEPTANCE OF 
 * THESE TERMS. 
 *************************************************************************/

#ifndef _PIC_FAMILIES_H_
#define _PIC_FAMILIES_H_
	
#if defined(__18F24J50) || defined(__18F25J50) || defined(__18F26J50) || defined(__18F44J50)  || defined(__18F45J50)\
|| defined(__18LF24J50) || defined(__18LF25J50)|| defined(__18LF26J50)|| defined(__18LF44J50)|| defined(__18LF45J50)\
|| defined(__18LF46J50) || defined(__18F46J50)

#define FAMILY_PIC18XXJ50

#elif defined(__18F26J53) || defined(__18F27J53) ||defined(__18F46J53) || defined(__18F47J53)\
|| defined(__18LF26J53) || defined(__18LF27J53)||defined(__18LF46J53) || defined(__18LF47J53)
	
#define FAMILY_PIC18XXJ53

#elif defined (__18F24J11) || defined(__18F25J11) || defined(__18F26J11)|| defined(__18F44J11)  || defined(__18F45J11) || defined(__18F46J11)\
|| defined(__18LF24J11) || defined(__18LF25J11)|| defined(__18LF26J11)|| defined(__18LF44J11) || defined(__18LF45J11)|| defined(__18LF46J11)

#define FAMILY_PIC18XXJ11

#elif defined(__18F26J13) || defined(__18F27J13) || defined(__18F46J13)|| defined(__18F47J13)\
|| defined(__18LF26J13) || defined(__18LF27J13)|| defined(__18LF46J13)|| defined(__18LF47J13) 

#define FAMILY_PIC18XXJ13

#elif defined(__18F65K22) || defined(__18F66K22) || defined(__18F67K22)\
|| defined(__18F85K22) || defined(__18F86K22) || defined(__18F87K22)

#define FAMILY_PIC18XXK22

#elif defined (__18F23K22) || defined (__18F24K22) || defined(__18F25K22) || defined(__18F26K22)|| defined(__18F43K22) || defined(__18F44K22)  || defined(__18F45K22) || defined(__18F46K22)\
|| defined (__18LF23K22) || defined(__18LF24K22) || defined(__18LF25K22)|| defined(__18LF26K22)|| defined(__18LF43K22) || defined(__18LF44K22) || defined(__18LF45K22)|| defined(__18LF46K22)

#define FAMILY_PIC18_2x_4xK22

#elif defined(__18F66J90) || defined(__18F67J90) || defined(__18F86J90) || defined(__18F87J90)

#define FAMILY_PIC18XXJ90

#elif defined(__18F66J93) || defined(__18F67J93) || defined(__18F86J93) || defined(__18F87J93)

#define FAMILY_PIC18XXJ93

#elif defined(__18F86J72) || defined(__18F87J72)

#define FAMILY_PIC18XXJ72

#elif defined(__18F65K90) || defined(__18F66K90) || defined(__18F67K90)\
|| defined(__18F85K90) || defined(__18F86K90) || defined(__18F87K90)

#define FAMILY_PIC18XXK90

#elif defined(__PIC24F04KA200__) || defined(__PIC24F04KA201__) 

#define FAMILY_PIC24F04KA20X

#elif defined(__PIC24F08KA101__) || defined(__PIC24F08KA102__) || defined(__PIC24F16KA101__ ) || defined(__PIC24F16KA102__ )

#define FAMILY_PIC24FXXKA10X

#elif defined(__PIC24F16KA301__)|| defined (__PIC24F16KA302__) || defined(__PIC24F16KA304__)\
|| defined(__PIC24F32KA301__) || defined (__PIC24F32KA302__) || defined(__PIC24F32KA304__)\
|| defined(__PIC24FV16KA301__)|| defined (__PIC24FV16KA302__)|| defined(__PIC24FV16KA304__)\
|| defined(__PIC24FV32KA301__)|| defined (__PIC24FV32KA302__)|| defined(__PIC24FV32KA304__)

#define FAMILY_PIC24FXXKA30X

#elif defined(__PIC24FJ32GA102__) || defined(__PIC24FJ32GA104__) || defined(__PIC24FJ64GA102__) || defined(__PIC24FJ64GA104__)

#define FAMILY_PIC24FJXXGA10X

#elif defined(__PIC24FJ32GB002__) || defined(__PIC24FJ32GB004__) || defined(__PIC24FJ64GB002__) || defined(__PIC24FJ64GB004__)

#define FAMILY_PIC24FJXXGB10X

#elif defined(__PIC24FJ64GA106__) || defined(__PIC24FJ64GA108__)  || defined(__PIC24FJ64GA110__)\
|| defined(__PIC24FJ128GA106__)|| defined(__PIC24FJ128GA108__) || defined(__PIC24FJ128GA110__)\
|| defined(__PIC24FJ192GA106__)|| defined(__PIC24FJ192GA108__) || defined(__PIC24FJ192GA110__)\
|| defined(__PIC24FJ256GA106__)|| defined(__PIC24FJ256GA108__) || defined(__PIC24FJ256GA110__)

#define FAMILY_PIC24FJXXXGA1XX

#elif defined(__PIC24FJ64GB106__) || defined(__PIC24FJ64GB108__)  || defined(__PIC24FJ64GB110__)\
|| defined(__PIC24FJ128GB106__)|| defined(__PIC24FJ128GB108__) || defined(__PIC24FJ128GB110__)\
|| defined(__PIC24FJ192GB106__)|| defined(__PIC24FJ192GB108__) || defined(__PIC24FJ192GB110__)\
|| defined(__PIC24FJ256GB106__)|| defined(__PIC24FJ256GB108__) || defined(__PIC24FJ256GB110__)

#define FAMILY_PIC24FJXXXGB1XX

#elif defined(__PIC24FJ128GB206__) || defined (__PIC24FJ128GB210__)	|| defined(__PIC24FJ256GB206__) || defined (__PIC24FJ256GB210__)

#define FAMILY_PIC24FJXXXGB2XX

#elif defined(__PIC24FJ128DA106__) || defined(__PIC24FJ128DA110__) ||  defined(__PIC24FJ128DA206__)\
|| defined(__PIC24FJ128DA210__) ||  defined(__PIC24FJ256DA106__)|| defined(__PIC24FJ256DA110__)\
|| defined(__PIC24FJ256DA206__) || defined(__PIC24FJ256DA210__ ) 

#define FAMILY_PIC24FJXXXDAXXX

#elif defined(__PIC24FJ64GA306__)   ||  defined(__PIC24FJ64GA308__)  ||  defined(__PIC24FJ64GA310__)\
||  defined(__PIC24FJ128GA306__)  ||  defined(__PIC24FJ128GA308__) || defined(__PIC24FJ128GA310__)

#define FAMILY_PIC24FJXXXGA3XX

#else

#error The selected PIC device is not supported in this demo.

#endif

#endif
