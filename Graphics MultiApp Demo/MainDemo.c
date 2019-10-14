/*****************************************************************************
 * Microchip Graphics Library Demo Application
 * This program shows how to use the Graphics Objects Layer.
 *****************************************************************************
 * FileName:        MainDemo.c
 * Dependencies:    MainDemo.h
 * Processor:       PIC24, PIC32
 * Compiler:       	MPLAB C30 V3.00, MPLAB C32
 * Linker:          MPLAB LINK30, MPLAB LINK32
 * Company:         Microchip Technology Incorporated
 *
 * Software LicenseJpeg
  Agreement
 *
 * Copyright © 2007 Microchip Technology Inc.  All rights reserved.
 * Microchip licenses to you the right to use, modify, copy and distribute
 * Software only when embedded on a Microchip microcontroller or digital
 * signal controller, which is integrated into your product or third party
 * product (pursuant to the sublicense terms in the accompanying license
 * agreement).  
 *
 * You should refer to the license agreement accompanying this Software
 * for additional information regarding your rights and obligations.
 *
 * SOFTWARE AND DOCUMENTATION ARE PROVIDED “AS IS” WITHOUT WARRANTY OF ANY
 * KIND, EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY
 * OF MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR
 * PURPOSE. IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE LIABLE OR
 * OBLIGATED UNDER CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION,
 * BREACH OF WARRANTY, OR OTHER LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT
 * DAMAGES OR EXPENSES INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL,
 * INDIRECT, PUNITIVE OR CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA,
 * COST OF PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY
 * CLAIMS BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF),
 * OR OTHER SIMILAR COSTS.
 *
 * Author               Date        Comment
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * Anton Alkhimenok
 * Paolo Tamayo         03/10/08    ...
 *****************************************************************************/

#include "MainDemo.h"
#include "MainDemoStrings.h"

// Configuration bits
#ifdef __PIC32MX__
	#if defined (__32MX460F512L__)
	    #pragma config UPLLEN   = ON            // USB PLL Enabled
	    #pragma config FPLLMUL  = MUL_18        // PLL Multiplier
	    #pragma config UPLLIDIV = DIV_2         // USB PLL Input Divider
	    #pragma config FPLLIDIV = DIV_2         // PLL Input Divider
	    #pragma config FPLLODIV = DIV_1         // PLL Output Divider
	    #pragma config FPBDIV   = DIV_2         // Peripheral Clock divisor
	    #pragma config FWDTEN   = OFF           // Watchdog Timer
	    #pragma config WDTPS    = PS1           // Watchdog Timer Postscale
	    #pragma config FCKSM    = CSDCMD        // Clock Switching & Fail Safe Clock Monitor
	    #pragma config OSCIOFNC = OFF           // CLKO Enable
	    #pragma config POSCMOD  = HS            // Primary Oscillator
	    #pragma config IESO     = OFF           // Internal/External Switch-over
	    #pragma config FSOSCEN  = ON           	// Secondary Oscillator Enable (KLO was off)
	    #pragma config FNOSC    = PRIPLL        // Oscillator Selection
	    #pragma config CP       = OFF           // Code Protect
	    #pragma config BWP      = OFF           // Boot Flash Write Protect
	    #pragma config PWP      = OFF           // Program Flash Write Protect
	    #pragma config ICESEL   = ICS_PGx2      // ICE/ICD Comm Channel Select
	    #pragma config DEBUG    = ON            // Background Debugger Enable
	#endif
	#if defined (__32MX360F512L__)
		#pragma config FPLLODIV = DIV_2, FPLLMUL = MUL_18, FPLLIDIV = DIV_1, FWDTEN = OFF, FCKSM = CSECME, FPBDIV = DIV_1
		#pragma config OSCIOFNC = ON, POSCMOD = XT, FSOSCEN = ON, FNOSC = PRIPLL
		#pragma config CP = OFF, BWP = OFF, PWP = OFF
	#endif
#else
	#if defined (__PIC24FJ256GB110__)
        _CONFIG1( JTAGEN_OFF & GCP_OFF & GWRP_OFF & COE_OFF & FWDTEN_OFF & ICS_PGx2) 
        _CONFIG2( 0xF7FF & IESO_OFF & FCKSM_CSDCMD & OSCIOFNC_OFF & POSCMOD_HS & FNOSC_PRIPLL & PLLDIV_DIV2 & IOL1WAY_OFF)
    #endif	
	#if defined (__PIC24FJ128GA010__)
		_CONFIG2(FNOSC_PRIPLL & POSCMOD_XT) // Primary XT OSC with PLL
		_CONFIG1(JTAGEN_OFF & FWDTEN_OFF)   // JTAG off, watchdog timer off
	#endif	
	#if defined (__PIC24FJ256GA110__)
        _CONFIG1( JTAGEN_OFF & GCP_OFF & GWRP_OFF & COE_OFF & FWDTEN_OFF & ICS_PGx2) 
        _CONFIG2( IESO_OFF & FCKSM_CSDCMD & OSCIOFNC_OFF & POSCMOD_HS & FNOSC_PRIPLL & IOL1WAY_OFF)
    #endif	
	
#endif

/////////////////////////////////////////////////////////////////////////////
//                            LOCAL PROTOTYPES
/////////////////////////////////////////////////////////////////////////////

#define WAIT_UNTIL_FINISH(x) while(!x)

// Macros to interface with memory
#if (GRAPHICS_PICTAIL_VERSION != 3)

	#define FLASHInit() SST39Init();
	#define ReadArray(address, pdata, len) SST39ReadArray(address, pdata, len)

#else

	#define FLASHInit() SST25Init();
	#define ReadArray(address, pdata, len) SST25ReadArray(address, pdata, len)

#endif

/************************************************************************
 Macros: SST39PMPInit()
                                                                       
 Overview: Initializes PMP in preparation of access to the external flash.
 		   PMP access timing must be set up to meet the flash device specs.		
                                                                      
 Input: none                                                          
                                                                       
 Output: none
************************************************************************/
#define SST39PMPInit()  {while(PMMODEbits.BUSY); PMMODE = 0x0a49; PMAEN = 0x0003; PMCON = 0x9320;}

/************************************************************************
 Macros: LCDPMPInit()
                                                                       
 Overview: Initializes PMP in preparation for access to the display controller.
 		   PMP access timing must be set up to meet the display controller specs.		
                                                                       
 Input: none                                                          
                                                                       
 Output: none
************************************************************************/
#if (DISPLAY_CONTROLLER == LGDP4531)
	#define LCDPMPInit()  {while(PMMODEbits.BUSY); PMMODE = 0x0204; PMAEN = 0x0000; PMCON = 0x8300;}    // this is used for LGDP4531_R61505_S6D0129_S6D0139_SPFD5408
#elif (DISPLAY_CONTROLLER == SSD1906)	
	#define LCDPMPInit()  {while(PMMODEbits.BUSY); PMMODE = 0x0e09; PMAEN = 0x0003; PMCON = 0x9720;}	// this is used for SSD1906 
#endif
/************************************************************************
 Function: StartScreen()
                                                                       
 Overview: Draws the splash screen before the main menu starts.
                                                                       
 Input: none                                                          
                                                                       
 Output: none
************************************************************************/
void StartScreen();								

/************************************************************************
 Function: Init_CPUClocks()
                                                                       
 Overview: Initializes the CPU clocks and initialize registers.
                                                                       
 Input: none                                                          
                                                                       
 Output: none
************************************************************************/
void Init_CPUClocks();							

/************************************************************************
 Function: TickInit()
                                                                       
 Overview: Initializes the tick counter used for the demo.
                                                                       
 Input: none                                                          
                                                                       
 Output: none
************************************************************************/
void TickInit(void);                        	

/////////////////////////////////////////////////////////////////////////////
//                            IMAGES USED
/////////////////////////////////////////////////////////////////////////////

extern BITMAP_EXTERNAL intro;				// the following images are taken from
extern BITMAP_EXTERNAL mchpLogo;			// the external flash memory 
extern BITMAP_EXTERNAL mchpIcon0;

/////////////////////////////////////////////////////////////////////////////
//                       GLOBAL VARIABLES FOR DEMO
/////////////////////////////////////////////////////////////////////////////
SCREEN_STATES  screenState = CREATE_DEMOSELECTION; // current state of main demo state mashine 

GOL_SCHEME*    altScheme;					 // alternative style scheme
GOL_SCHEME*    iconScheme;					 // alternative icon style scheme
GOL_SCHEME*    meterScheme;					 // style scheme used to draw the meter 
GOL_SCHEME*    navScheme;		 			 // style scheme for the navigation
GOL_SCHEME*    gridScheme;					 // style scheme used to draw the grid
GOL_SCHEME*    graphScheme;					 // style scheme used for the graph demo
OBJ_HEADER*	   pNavList;					 // pointer to navigation list
BYTE		   usbErrorCode;				 // USB error
BYTE 		   usbHIDStatus;				 // HID device status
BYTE 		   usbMSDStatus;				 // MSD device status
volatile DWORD tick = 0;                     // tick counter
extern BOOL gEnableDemoFlag; 				 // flag for automatic demo mode

/////////////////////////////////////////////////////////////////////////////
//                            STRINGS USED
/////////////////////////////////////////////////////////////////////////////
const XCHAR ErrMsgStandard[]		= {'U','S','B',' ','E','r','r','o','r',0};
const XCHAR ErrNotSupported[]       = {'n','o','t',' ','s','u','p','p','o','r','t','e','d','!',0};
const XCHAR ErrMsgFailedStr[]  		= {'F','a','i','l','e','d',0};
const XCHAR ErrMsgHUBAttachedStr[]  = {'H','U','B',0};
const XCHAR ErrMsgUDAttachedStr[]   = {'D','e','v','i','c','e',0};
const XCHAR ErrMsgEnumerationStr[]  = {'E','n','u','m','e','r','a','t','i','o','n',0};
const XCHAR ErrMsgClientInitStr[]   = {'C','l','i','e','n','t',' ','I','n','i','t','i','a','l','i','z','a','t','i','o','n',0};
const XCHAR ErrMsgOutofMemoryStr[]  = {'O','u','t',' ','o','f',' ','M','e','m','o','r','y',0};
const XCHAR ErrMsgUnpecifiedErrStr[]= {'U','n','s','p','e','c','i','f','i','e','d',0};
const XCHAR MsgTouchToProceedStr[]  = {'T','o','u','c','h',' ','t','o',' ','p','r','o','c','e','e','d',0};

/////////////////////////////////////////////////////////////////////////////
//                                  MAIN
/////////////////////////////////////////////////////////////////////////////
int main(void){

GOL_MSG msg;        			// GOL message structure to interact with GOL

///////////////////////////////////////////////
///////////// Explorer 16 issue ///////////////
    LATBbits.LATB15 = 0;
    TRISBbits.TRISB15 = 0;
///////////////////////////////////////////////

	Init_CPUClocks();

	FLASHInit();				// initialize EEPROM SPI on GFX3 or flash Memory on GFX2 
	TickInit();     			// Start tick counter   
	#if defined (__32MX460F512L__) 

		// do not use beeper if using 32MX460F512L
	#else
    	BeepInit();     			// Initialize beeper
    #endif	

    // If S6 button on Explorer 16 board is pressed erase memory
    // display uses the same signals as the external flash memory so we cannot
    // use the display while programming the flash.
    if(PORTDbits.RD7 == 0){
        ProgramFlash();
    }
   
#if ((GRAPHICS_PICTAIL_VERSION == 2) || (GRAPHICS_PICTAIL_VERSION == 250))

    #if defined( ENABLE_SD_MSD_DEMO ) 
		/************************************************************************
		* For Explorer 16, SPI2 is used to connect to EEPROM.
		* When using ENABLE_SD_MSD_DEMO on SPI2 we need to set CS of 
		* SD Card PICtail (RB9) to 1 to prevent conflicts.
		************************************************************************/
		LATBbits.LATB9 = 1;		// set the value to 1 to disable chip select of SD PICtail
    	TRISBbits.TRISB9 = 0; 	// set to output
	#endif
	
    EEPROMInit();   					// initialize Exp.16 EEPROM SPI
#endif

    GOLInit();      			// Initialize graphics library and create default style scheme for GOL
    TouchInit();    			// Initialize touch screen
    
    RTCCInit(); 				// Setup the RTCC
    RTCCProcessEvents();

#ifdef ENABLE_SCREEN_CAPTURE
	UARTInit();
#endif	    

    // If S3 button on Explorer 16 board is pressed calibrate touch screen
    if(PORTDbits.RD6 == 0){
        TouchCalibration();
        TouchStoreCalibration();
    } else {
    
    	// If it's a new board (EEPROM_VERSION byte is not programed) calibrate touch screen
		#if ((GRAPHICS_PICTAIL_VERSION == 2) || (GRAPHICS_PICTAIL_VERSION == 250))
    		if(GRAPHICS_LIBRARY_VERSION != EEPROMReadWord(ADDRESS_VERSION)){
        		TouchCalibration();
        		TouchStoreCalibration();
    		}
		#else
    		if(GRAPHICS_LIBRARY_VERSION != SST25ReadWord(ADDRESS_VERSION)){
        		TouchCalibration();
        		TouchStoreCalibration();
    		}
		#endif	
	
	    // Load touch screen calibration parameters from EEPROM
	    TouchLoadCalibration();
	}
	#if defined(ENABLE_SD_MSD_DEMO) 
		// after calibration is done permanently disable the chip select of 
		// the Explorer 16 EEPROM
		#if defined(__PIC24FJ256GB110__) 
	        // This PIM has RD12 rerouted to RA15
			LATGbits.LATG0 = 1;
	    	TRISGbits.TRISG0 = 0;
    	#else
			LATDbits.LATD12 = 1;
    		TRISDbits.TRISD12 = 0;
    	#endif

	#endif	    

#if defined(ENABLE_USB_HOST_HID_DEMO) || defined(ENABLE_USB_MSD_DEMO) 
    USBInitialize(0);
#endif 

#ifdef ENABLE_SD_MSD_DEMO
	int temp;
	#if defined (__32MX360F512L__) || defined(__PIC24FJ256GB110__) || defined(__PIC24FJ256GA110__)
		Configure_SDSPI_PPS();
	#endif
		
	MDD_SDSPI_InitIO();
	if (MDD_MediaDetect()) {
		// check if SD Device is connected, but will not wait forever.
		temp = 500;
		while (temp) {
			if (FSInit())
				break;
			temp--;	
		}	
	}	
	
#endif    

#ifdef ENABLE_DEMO_MODE
	InitDemoMode();
#endif

    StartScreen();  					// Show intro screen and wait for touch

	// create the the style schemes
	navScheme 		= GOLCreateScheme(); 		
	altScheme 		= GOLCreateScheme(); 		
    meterScheme 	= GOLCreateScheme(); 	
    iconScheme 		= GOLCreateScheme(); 
    gridScheme 		= GOLCreateScheme(); 
    graphScheme 	= GOLCreateScheme(); 
    
	InitECGStyleScheme(altScheme);
	InitGamesStyleScheme(gridScheme);
	InitDemoSelectStyleScheme(iconScheme);
    InitAnimationStyleScheme(meterScheme);
	InitGraphDemoStyleScheme(graphScheme);

    while(1){

		#if defined(ENABLE_USB_HOST_HID_DEMO) || defined(ENABLE_USB_MSD_DEMO) 
			// call background task to update USB states (check if device was attached or not
			USBTasks();
		#endif

        if(GOLDraw()){             			// Draw GOL objects
            // Drawing is finished, we can now process new message
            TouchGetMsg(&msg);     			// Get message from touch screen
			#ifdef ENABLE_DEMO_MODE
				// when running in demo mode enabled fake the messages to perform
				// demo on selected screens
				if (gEnableDemoFlag == TRUE) { 
					UpdateDemoMode(&msg);		// update the next step of the automatic demo
				}	
			#endif
       
            GOLMsg(&msg);       			// Process message

		    // When USE_FOCUS is set, the Demo can be controlled using
            // Explorer 16 buttons. See SideButtons.h for details.
            #ifdef USE_FOCUS   				
            	SideButtonsMsg(&msg);
	            GOLMsg(&msg);          		// Process message
            #endif	
            
            // FOR DEBUG ONLY (holding down S6 of explorer 16 will pause the screen)
            while(PORTDbits.RD7 == 0);
            
        }
    } 

}

/************************************************************************
 Function: WORD GOLMsgCallback(WORD objMsg, OBJ_HEADER* pObj, GOL_MSG* pMsg)

 Overview: This function must be implemented by user. GOLMsg() function 
 		   calls it each time the valid message for the object received.
           
 Input: objMsg - translated message for the object,
        pObj - pointer to the object,
        pMsg - pointer to the non-translated, raw GOL message 

 Output: If the function returns non-zero the message will 
 		 be processed by the object directly affected by the message.
 		 Default action on the object based on the message will be 
 		 performed.
************************************************************************/
WORD GOLMsgCallback(WORD objMsg, OBJ_HEADER* pObj, GOL_MSG* pMsg){

    if(objMsg == BTN_MSG_PRESSED)
    {
        Beep();
    }
   
    // Process messages for demo screens. Each of the 
    // demo screens will have its own corresponding message callback
    // functions. 
    switch(screenState){
	    
    	case DISPLAY_TIMEDATE:
    		return TimeDateDemoMsgCallback(objMsg, pObj, pMsg);        
 		case DISPLAY_MULTIFONT:
 			return MultiFontDemoMsgCallback(objMsg, pObj, pMsg);
        case DISPLAY_RGB:
        	return RGBDemoMsgCallback(objMsg, pObj, pMsg);
        case DISPLAY_SNAKE:
            return ProcessMessageSnake(objMsg, pObj, pMsg);
        case DISPLAY_SNAKE_SCORE:
            return ProcessMessageSnake(objMsg, pObj, pMsg);
            return 1;
        case DISPLAY_SCALE:
            return MsgDrawTool(objMsg, pObj, pMsg);
        case DISPLAY_ANIMATION:
            return MsgAnimation(objMsg, pObj, pMsg);
        case DISPLAY_DEMOSELECTION:
            return MsgDemoSelection(objMsg, pObj, pMsg);
        case DISPLAY_ECG:
            return MsgECG(objMsg, pObj, pMsg);
        case DISPLAY_SLIDESHOW:
            return SlideShowDemoMsgCallback(objMsg, pObj, pMsg);
#ifdef ENABLE_USB_MSD_DEMO            
        case DISPLAY_JPEGDEMO:
            return JPEGMsgCallback(objMsg, pObj, pMsg);			// see JPEGDemo.c for this implementation
#endif
#ifdef ENABLE_SD_MSD_DEMO            
        case DISPLAY_SDCARDDEMO:
            return JPEGMsgCallback(objMsg, pObj, pMsg);			// see SDCardDemo.c for this implementation
#endif
        case DISPLAY_GRAPHSHOW:
            return GraphMsgCallback(objMsg, pObj, pMsg);
        default:
            return 1; // process message by default
    }
}

/************************************************************************
 Function: WORD GOLDrawCallback()

 Overview: This function must be implemented by user. GOLDraw() function 
 		   calls it each time when GOL objects drawing is completed. User 
 		   drawing should be done here. GOL will not change color, line 
 		   type and clipping region settings while  this function 
 		   returns zero.

 Input: none

 Output: If the function returns non-zero the draw control will be passed 
		to GOL. GOLDraw() can proceed and re-draw objects that needs 
		to be redrawn.
************************************************************************/
WORD GOLDrawCallback(){
static DWORD prevTick  = 0;  		// keeps previous value of tick
//static DWORD prevTime  = 0;  		// keeps previous value of time tick

#ifdef ENABLE_SCREEN_CAPTURE		
	    if(PORTDbits.RD6 == 0){		// used to capture screen to PC through UART.
        GetBMP();
    }
#endif    


    switch(screenState){
        case CREATE_DEMOSELECTION:
            CreateDemoSelection();						// create demo selection screen
            screenState = DISPLAY_DEMOSELECTION;		// switch to next state
            return 1; 									// draw objects created

        case DISPLAY_DEMOSELECTION:
        	CheckDemoStatus();
            return 1; 									// redraw objects if needed

    	case CREATE_TIMEDATE:
 			CreateTimeDateDemo();
            screenState = DISPLAY_TIMEDATE;				// switch to next state
 			return 1;

    	case DISPLAY_TIMEDATE:
    		TimeDateDemoDrawCallback();
    		return 1;

 		case CREATE_MULTIFONT:
 			CreateMultiFontsDemo();
            screenState = DISPLAY_MULTIFONT;			// switch to next state
 			return 1;

    	case DISPLAY_MULTIFONT:
    		MultiFontDemoDrawCallback(tick);
    		return 1;

        case CREATE_RGB:
            CreateRGBDemo();							// create RGB demo
            screenState = DISPLAY_RGB;	        		// switch to next state
            return 1;

        case DISPLAY_RGB:
    		RGBDemoDrawCallback();						// RGB demo draw callback
            return 1;
            
        case CREATE_SLIDESHOW:
            CreateSlideShowDemo();						// create slide show demo
            screenState = DISPLAY_SLIDESHOW;	        // switch to next state
            return 1;

#ifdef ENABLE_USB_MSD_DEMO
        case CREATE_JPEGDEMO:
            if (CreateJPEGDemo() == 1)					// create JPEG demo (see JPEGDemo.c)
            	screenState = DISPLAY_JPEGDEMO;	        // switch to next state
            else 	
            	screenState = CREATE_DEMOSELECTION;	    // go back to demo selection
            return 1;
            
        case DISPLAY_JPEGDEMO:
        	JPEGDrawCallback();							// see JPEGDemo.c
        	return 1;    
#endif

#ifdef ENABLE_SD_MSD_DEMO            
        case CREATE_SDCARDDEMO:
            if (CreateJPEGDemo() == 1)					// create JPEG demo (see SDCardDemo.c)
            	screenState = DISPLAY_SDCARDDEMO;	    // switch to next state
            else 	
            	screenState = CREATE_DEMOSELECTION;	    // go back to demo selection
            return 1;
            
        case DISPLAY_SDCARDDEMO:
        	JPEGDrawCallback();							// see SDCardDemo.c
        	return 1;    
#endif


        case CREATE_ANIMATION:
            CreateAnimation();
            screenState = DISPLAY_ANIMATION;	        // switch to next state
            return 1;

        case DISPLAY_ANIMATION:
            NextAnimation(tick);
            return 1;

        case CREATE_SCALE:
            CreateDrawTool();
            screenState = DISPLAY_SCALE;      			// switch to next state
            return 1;

        case DISPLAY_SCALE:
            return 1;

        case CREATE_SNAKE:
            ShowScreenSnake();
            screenState = DISPLAY_SNAKE;                // switch to next state
            return 1;

        case DISPLAY_SNAKE:
            DrawSnake(tick);
            return 1;

        case CREATE_SNAKE_SCORE:
            ShowScreenScore();
            prevTick = tick;
            while((tick-prevTick) < 1000);				// delay the switching of state so that score can be read
            screenState = DISPLAY_SNAKE_SCORE;          // switch to next state
            return 1;

        case DISPLAY_SNAKE_SCORE:
            return 1;

        case CREATE_ECG:
            CreateECG(); 								// create window
            screenState = BOX_DRAW_ECG; 				// switch to next state
            return 1; 									// draw objects created

        case BOX_DRAW_ECG:
            if(0 == PanelECG()) 						// draw box for ECG graph
                return 0;  								// drawing is not completed, don't pass 
                										// drawing control to GOL, try it again
            screenState = DISPLAY_ECG; 					// switch to next state
            return 1; 									// pass drawing control to GOL, redraw objects if needed

        case DISPLAY_ECG:
            UpdateECG(tick);
            return 1; 									// redraw objects if needed

        case CREATE_GRAPHSHOW:
            CreateGraphDemo();
            screenState = DISPLAY_GRAPHSHOW;	        // switch to next state
            return 1;

        case DISPLAY_GRAPHSHOW:
            UpdateGraphDemo(tick);
            return 1;

		case CREATE_GAME:
		case DISPLAY_GAME:
		case DISPLAY_SLIDESHOW:
		case DEMO_MODE:
		default:
			break;

    }

    return 1;    										// release drawing control to GOL

}

/************************************************************************
 Function: void StartScreen()

 Overview: Shows the splash screen for introduction.
 
 Input: none

 Output: none
 ************************************************************************/
// Shows intro screen and waits for touch
void StartScreen(void){
	
SHORT counter;
static const XCHAR text[] = {'W','e','l','c','o','m','e','!',0};
WORD i, j, k;
//WORD m;
WORD ytemp, xtemp, srRes = 0x0001; 

    SetColor(WHITE); 
    ClearDevice();      

    WAIT_UNTIL_FINISH(PutImage(0,0,(void*)&mchpLogo,IMAGE_NORMAL));
    WAIT_UNTIL_FINISH(PutImage(2,60,(void*)&intro,IMAGE_X2));

    for(counter=0;counter<320-32;counter++){  // move Microchip icon
        WAIT_UNTIL_FINISH(PutImage(counter,205,(void*)&mchpIcon0,IMAGE_NORMAL));
    }
    SetColor(BRIGHTRED);
    SetFont((void*)&FONTDEFAULT);

    MoveTo((GetMaxX()-GetTextWidth((XCHAR*)text,(void*)&FONTDEFAULT))>>1,182);
    WAIT_UNTIL_FINISH(OutText((XCHAR*)text));

   	DelayMs(1200);
	
	// random fade effect using a Linear Feedback Shift Register (LFSR)
    SetColor(WHITE);
    for (i = 1800; i > 0 ; i--) {
		// for a 16 bit LFSR variable the taps are at bits: 1, 2, 4, and 15
   		srRes = (srRes >> 1) ^ (-(int)(srRes & 1) & 0x8006);  
    	xtemp = (srRes & 0x00FF)%40;
    	ytemp = (srRes >> 8)%30;
    
    	// by replicating the white (1x1) bars into 8 areas fading is faster
		for (j = 0; j < 8; j++) {
    		for (k = 0; k < 8; k++)
	    		PutPixel(xtemp+(j*40), ytemp+(k*30)); 
	    }		
	}    
}

/************************************************************************
 Function: void CreateCtrlButtons(XCHAR *pTextA, XCHAR *pTextB, 
 								  XCHAR *pTextC, XCHAR *pTextD)

 Overview: Creates the navigation and control buttons of the menu.
 
 Input: pTextA - pointer to button A label.
		pTextB - pointer to button B label.
		pTextC - pointer to button C label.
		pTextB - pointer to button D label.

 Output: none
************************************************************************/
void CreateCtrlButtons(XCHAR *pTextA, XCHAR *pTextB, XCHAR *pTextC, XCHAR *pTextD) {
WORD state;

    state = BTN_DRAW;
    if(pTextA == NULL)
        state = BTN_DRAW|BTN_DISABLED;
    BtnCreate(ID_BUTTON_A,
              CtrlBtnLeft(0),
              CtrlBtnTop(),
              CtrlBtnRight(0),
              CtrlBtnBottom(),
              0,
              state,
              NULL,
              pTextA,
              altScheme );

    state = BTN_DRAW;
    if(pTextB == NULL)
        state = BTN_DRAW|BTN_DISABLED;
    BtnCreate(ID_BUTTON_B,
              CtrlBtnLeft(1),
              CtrlBtnTop(),
              CtrlBtnRight(1),
              CtrlBtnBottom(),
              0,
              state,
              NULL,
              pTextB,
              altScheme );

    state = BTN_DRAW;
    if(pTextC == NULL)
        state = BTN_DRAW|BTN_DISABLED;
    BtnCreate(ID_BUTTON_C,
              CtrlBtnLeft(2),
              CtrlBtnTop(),
              CtrlBtnRight(2),
              CtrlBtnBottom(),
              0,
              state,
              NULL,
              pTextC,
              altScheme );

    state = BTN_DRAW;
    if(pTextD == NULL)
        state = BTN_DRAW|BTN_DISABLED;
    BtnCreate(ID_BUTTON_D,
              CtrlBtnLeft(3),
              CtrlBtnTop(),
              CtrlBtnRight(3),
              CtrlBtnBottom(),
              0,
              state,
              NULL,
              pTextD,
              altScheme );         
}


///////////////////////////////////////////////////////////////////////////////
////                            USB Related Functions
///////////////////////////////////////////////////////////////////////////////
#if defined(ENABLE_USB_HOST_HID_DEMO) || defined(ENABLE_USB_MSD_DEMO) 

/****************************************************************************
  Function:
    BOOL USB_ApplicationEventHandler( BYTE address, USB_EVENT event,
                    void *data, DWORD size )

  Description:
    This routine handles USB events sent from the USB Embedded Host stack.

  Precondition:
    None

  Parameters:
    BYTE address    - Address of the USB device generating the event
    USB_EVENT event - Event that has occurred
    void *data      - Pointer to the data associated with the event
    DWORD size      - Size of the data pointed to by *data

  Return Values:
    TRUE    - The event was handled successfully
    FALSE   - The even was not handled successfully

  Remarks:
    We will default to returning TRUE for unknown events, and let operation
    proceed.  Other applications may wish to return FALSE, since we are not
    really handling the event.
  ***************************************************************************/
BOOL USB_ApplicationEventHandler( BYTE address, USB_EVENT event, void *data, DWORD size )
{
	WORD yPos, TextHeight;
	
    switch( event )
    {
        case EVENT_VBUS_REQUEST_POWER:
            // We will let everything attach.
            return TRUE;

        case EVENT_VBUS_RELEASE_POWER:
            // We are not monitoring power allocation, so we have
            // nothing to update.
            return TRUE;
            
        case EVENT_HUB_ATTACH:
        case EVENT_UNSUPPORTED_DEVICE:
        case EVENT_CANNOT_ENUMERATE:
        case EVENT_CLIENT_INIT_ERROR:
        case EVENT_OUT_OF_MEMORY:
        case EVENT_UNSPECIFIED_ERROR: // This should never occur
            usbErrorCode = USBHostDeviceStatus(1);
            // Shut down the USB.
            //USBHostShutdown();
            break;
        default:
            return TRUE;
    }

	// USB error messages will only appear when in the Menu Screens.
	if (screenState != DISPLAY_DEMOSELECTION) 
		return TRUE;
		
    // go back to demo selection when exiting this function.
    screenState = CREATE_DEMOSELECTION;	    		
    
    // The following code displays the different USB errors that can
    // occur. Example, inserting an unsupported device or device
    // does not enumerate.
    
    // clear the screen
    SetColor(WHITE);
    ClearDevice();
    // set up the font to display the error messages
    SetFont((void*)&GOLFontDefault);
    SetColor(BRIGHTBLUE);
    TextHeight = GetTextHeight((void*)&GOLFontDefault);
    yPos = TextHeight*2;
    
    // output the standard USB error string
    MoveTo((GetMaxX()-GetTextWidth((XCHAR*)ErrMsgStandard,(void*)&GOLFontDefault))>>1,yPos);
	WAIT_UNTIL_FINISH(OutText((XCHAR*)ErrMsgStandard));
	yPos += TextHeight;

 	switch( event )
    {
        case EVENT_HUB_ATTACH:
	   	    MoveTo((GetMaxX()-GetTextWidth((XCHAR*)ErrMsgHUBAttachedStr,(void*)&GOLFontDefault))>>1,yPos);
		    WAIT_UNTIL_FINISH(OutText((XCHAR*)ErrMsgHUBAttachedStr));
			yPos += TextHeight;
	   	    MoveTo((GetMaxX()-GetTextWidth((XCHAR*)ErrNotSupported,(void*)&GOLFontDefault))>>1,yPos);
		    WAIT_UNTIL_FINISH(OutText((XCHAR*)ErrNotSupported));
		    break;

        case EVENT_UNSUPPORTED_DEVICE:
	   	    MoveTo((GetMaxX()-GetTextWidth((XCHAR*)ErrMsgUDAttachedStr,(void*)&GOLFontDefault))>>1,yPos);
		    WAIT_UNTIL_FINISH(OutText((XCHAR*)ErrMsgUDAttachedStr));
			yPos += TextHeight;
	   	    MoveTo((GetMaxX()-GetTextWidth((XCHAR*)ErrNotSupported,(void*)&GOLFontDefault))>>1,yPos);
		    WAIT_UNTIL_FINISH(OutText((XCHAR*)ErrNotSupported));
		    break;

        case EVENT_CANNOT_ENUMERATE:
	   	    MoveTo((GetMaxX()-GetTextWidth((XCHAR*)ErrMsgEnumerationStr,(void*)&GOLFontDefault))>>1,yPos);
		    WAIT_UNTIL_FINISH(OutText((XCHAR*)ErrMsgEnumerationStr));
			yPos += TextHeight;
	   	    MoveTo((GetMaxX()-GetTextWidth((XCHAR*)ErrMsgFailedStr,(void*)&GOLFontDefault))>>1,yPos);
		    WAIT_UNTIL_FINISH(OutText((XCHAR*)ErrMsgFailedStr));
		    break;

        case EVENT_CLIENT_INIT_ERROR:
	   	    MoveTo((GetMaxX()-GetTextWidth((XCHAR*)ErrMsgClientInitStr,(void*)&GOLFontDefault))>>1,yPos);
		    WAIT_UNTIL_FINISH(OutText((XCHAR*)ErrMsgClientInitStr));
			yPos += TextHeight;
	   	    MoveTo((GetMaxX()-GetTextWidth((XCHAR*)ErrMsgFailedStr,(void*)&GOLFontDefault))>>1,yPos);
		    WAIT_UNTIL_FINISH(OutText((XCHAR*)ErrMsgFailedStr));
		    break;

        case EVENT_OUT_OF_MEMORY:
	   	    MoveTo((GetMaxX()-GetTextWidth((XCHAR*)ErrMsgOutofMemoryStr,(void*)&GOLFontDefault))>>1,yPos);
		    WAIT_UNTIL_FINISH(OutText((XCHAR*)ErrMsgOutofMemoryStr));
        	break;
        	
        case EVENT_UNSPECIFIED_ERROR:
	   	    MoveTo((GetMaxX()-GetTextWidth((XCHAR*)ErrMsgUnpecifiedErrStr,(void*)&GOLFontDefault))>>1,yPos);
		    WAIT_UNTIL_FINISH(OutText((XCHAR*)ErrMsgUnpecifiedErrStr));
		    break;
        
        default:
        	return TRUE;
	}
	
	yPos += TextHeight;
	MoveTo((GetMaxX()-GetTextWidth((XCHAR*)MsgTouchToProceedStr,(void*)&GOLFontDefault))>>1,yPos);
	WAIT_UNTIL_FINISH(OutText((XCHAR*)MsgTouchToProceedStr));
    
    // wait for touch
    while(TouchGetX() == -1); 

    return TRUE;
}
#endif // #if defined(ENABLE_USB_HOST_HID_DEMO) || defined(ENABLE_USB_MSD_DEMO) 
/*********************************************************************************/
/*********************************************************************************/
/*********************************************************************************/

/*********************************************************************
* Function: Init_CPUClocks()
*
* PreCondition: none
*
* Input: none
*
* Output: none
*
* Side Effects: none
*
* Overview: Initialize the CPU settings, clocks and registers for interrupts.
*
* Note: none
*
********************************************************************/
void Init_CPUClocks() {

	#if defined (__C30__)
		#if defined(ENABLE_USB_HOST_HID_DEMO) || defined(ENABLE_USB_MSD_DEMO) 
			// set up USB clock source
			OSCCON = 0x3302;    // Enable secondary oscillator
	        CLKDIV = 0x0000;    // Set PLL prescaler (1:1)
		#endif
	#elif defined(__PIC32MX__)
    	{
        	int  value;

			// this also enables the cache
       		value = SYSTEMConfigPerformance(GetSystemClock());
	    	mOSCSetPBDIV(OSC_PB_DIV_2);

            //value = SYSTEMConfigWaitStatesAndPB( GetSystemClock() );
            //// Enable the cache for the best performance
            //CheKseg0CacheOn();
    
            INTEnableSystemMultiVectoredInt();
    
            value = OSCCON;
            while (!(value & 0x00000020))
            {
                value = OSCCON;    // Wait for PLL lock to stabilize
            }
        }
        
        AD1PCFG = 0xFFFF;   // Set analog pins to digital.
        TRISF   = 0x00;
	#else
    	#error Cannot initialize
	#endif
	
}

/*********************************************************************
* Function: Timer4 ISR
*
* PreCondition: none
*
* Input: none
*
* Output: none
*
* Side Effects: none
*
* Overview: increments tick counter. Tick is approx. 1 ms.
*
* Note: none
*
********************************************************************/
#ifdef __PIC32MX__
#define __T4_ISR    __ISR(_TIMER_4_VECTOR, ipl1)
#else
#define __T4_ISR    __attribute__((interrupt, shadow, auto_psv))
#endif

void  __T4_ISR _T4Interrupt(void)
{
    tick++;    
    // Clear flag
#ifdef __PIC32MX__
    mT4ClearIntFlag();
#else
    IFS1bits.T4IF = 0;
#endif
}

/*********************************************************************
* Function: void TickInit(void)
*
* PreCondition: none
*
* Input: none
*
* Output: none
*
* Side Effects: none
*
* Overview: sets tick timer
*
* Note: none
*
********************************************************************/
/*********************************************************************
 * Section: Tick Delay
 *********************************************************************/
// for a system clock of 72 MHz
#ifdef __PIC32MX__
#define TICK_PERIOD     (72000 / 8)       
#else
// for a system clock of 32 MHz
#define TICK_PERIOD    16000
#endif

void TickInit(void){
    // Initialize Timer4
#ifdef __PIC32MX__
    OpenTimer4(T4_ON | T4_PS_1_8, TICK_PERIOD);
    ConfigIntTimer4(T4_INT_ON | T4_INT_PRIOR_1);
#else
    TMR4 = 0;
    PR4 = TICK_PERIOD;
    IFS1bits.T4IF = 0;              //Clear flag
    IEC1bits.T4IE = 1;              //Enable interrupt
    T4CONbits.TON = 1;              //Run timer  
#endif
}
/*********************************************************************
* Function: WORD ExternalMemoryCallback(EXTDATA* memory, LONG offset, WORD nCount, void* buffer)
*
* PreCondition: none
*
* Input:  memory - pointer to the bitmap or font external memory structures
*                  (FONT_EXTERNAL or BITMAP_EXTERNAL)
*         offset - data offset
*         nCount - number of bytes to be transferred to the buffer
*         buffer - pointer to the buffer
*
* Output: number of bytes were transferred.
*
* Side Effects: none
*
* Overview: this function must be implemented in application. Graphics Library calls it
*           each time the data from external memory is required. The application must copy 
*           required data to the buffer provided.
*
* Note: none
*
********************************************************************/

// If there are several memories in the system they can be selected by IDs.
// In this demo ID for memory chip installed on Graphics PICTail board is assumed to be 0.
#define SST39_MEMORY 0

WORD ExternalMemoryCallback(EXTDATA* memory, LONG offset, WORD nCount, void* buffer){

    if(memory->ID == SST39_MEMORY){
        // Read data requested into buffer provided
#if (GRAPHICS_PICTAIL_VERSION == 3)
        SST25ReadArray(memory->address+offset, // address to read from
                   (BYTE*)buffer,
                    nCount);
#else
        SST39PMPInit();
        SST39ReadArray(memory->address+offset, // address to read from
                   (BYTE*)buffer,
                    nCount);
        LCDPMPInit();
#endif
    }


    return nCount;
}

