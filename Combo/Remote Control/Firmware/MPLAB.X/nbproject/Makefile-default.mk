#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
include Makefile

# Environment
SHELL=cmd.exe
# Adding MPLAB X bin directory to path
PATH:=C:/Program Files (x86)/Microchip/MPLABX/mplab_ide/mplab_ide/modules/../../bin/:$(PATH)
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/2020629477/TouchScreen.o ${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o ${OBJECTDIR}/_ext/2020629477/drv_spi.o ${OBJECTDIR}/_ext/2020629477/MCHP25AA02E48.o ${OBJECTDIR}/_ext/2020629477/SST25VF016.o ${OBJECTDIR}/_ext/2048740170/TimeDelay.o ${OBJECTDIR}/_ext/1847857110/GOL.o ${OBJECTDIR}/_ext/1847857110/Primitive.o ${OBJECTDIR}/_ext/1847857110/Palette.o ${OBJECTDIR}/_ext/1847857110/Button.o ${OBJECTDIR}/_ext/1847857110/ProgressBar.o ${OBJECTDIR}/_ext/1847857110/Picture.o ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o ${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o ${OBJECTDIR}/_ext/366188474/TCON_HX8238.o ${OBJECTDIR}/_ext/1847857110/ListBox.o ${OBJECTDIR}/_ext/1847857110/EditBox.o ${OBJECTDIR}/_ext/1847857110/StaticText.o ${OBJECTDIR}/_ext/1472/usb_callback.o ${OBJECTDIR}/_ext/1472/usb_descriptors.o ${OBJECTDIR}/_ext/841123503/comm_pkt.o ${OBJECTDIR}/_ext/841123503/comm_pkt_callback.o ${OBJECTDIR}/_ext/841123503/FlashProgrammer.o ${OBJECTDIR}/_ext/1744090058/mTouch2ChSlider.o ${OBJECTDIR}/_ext/1744090058/mTouch4ChSlider.o ${OBJECTDIR}/_ext/1744090058/mTouchAcquistion.o ${OBJECTDIR}/_ext/1744090058/mTouchButton.o ${OBJECTDIR}/_ext/1744090058/mTouchControl.o ${OBJECTDIR}/_ext/1744090058/mTouchDebug.o ${OBJECTDIR}/_ext/1744090058/mTouchMarixButton.o ${OBJECTDIR}/_ext/1744090058/mTouchSensor.o ${OBJECTDIR}/_ext/2065199231/usb_function_generic.o ${OBJECTDIR}/_ext/926206843/usb_device.o ${OBJECTDIR}/_ext/1667312156/MSPI.o ${OBJECTDIR}/_ext/1667312156/RF4CE.o ${OBJECTDIR}/_ext/1667312156/MRF24J40_RF4CE.o ${OBJECTDIR}/_ext/546296802/Console.o ${OBJECTDIR}/_ext/546296802/SymbolTime.o ${OBJECTDIR}/_ext/1472/main.o ${OBJECTDIR}/_ext/1472/RF4CEController.o ${OBJECTDIR}/_ext/1472/GraphicsUserInterface.o ${OBJECTDIR}/_ext/1472/joystick.o ${OBJECTDIR}/_ext/1472/RemotePlayDiscInterface.o ${OBJECTDIR}/_ext/1472/RemoteFavoritesInterface.o ${OBJECTDIR}/_ext/1472/RemoteInternetInterface.o ${OBJECTDIR}/_ext/1472/rtcc.o ${OBJECTDIR}/_ext/1472/battery.o ${OBJECTDIR}/_ext/1472/sleep.o ${OBJECTDIR}/_ext/1472/RemoteSettingsInterface.o ${OBJECTDIR}/_ext/1472/RemoteWatchTVInterface.o ${OBJECTDIR}/_ext/1472/led.o ${OBJECTDIR}/_ext/1472/InternalResourceC30.o ${OBJECTDIR}/_ext/1472/ExternalResource.o ${OBJECTDIR}/_ext/1472/mTouchKeys.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/2020629477/TouchScreen.o.d ${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o.d ${OBJECTDIR}/_ext/2020629477/drv_spi.o.d ${OBJECTDIR}/_ext/2020629477/MCHP25AA02E48.o.d ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.d ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.d ${OBJECTDIR}/_ext/1847857110/GOL.o.d ${OBJECTDIR}/_ext/1847857110/Primitive.o.d ${OBJECTDIR}/_ext/1847857110/Palette.o.d ${OBJECTDIR}/_ext/1847857110/Button.o.d ${OBJECTDIR}/_ext/1847857110/ProgressBar.o.d ${OBJECTDIR}/_ext/1847857110/Picture.o.d ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.d ${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o.d ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.d ${OBJECTDIR}/_ext/366188474/TCON_HX8238.o.d ${OBJECTDIR}/_ext/1847857110/ListBox.o.d ${OBJECTDIR}/_ext/1847857110/EditBox.o.d ${OBJECTDIR}/_ext/1847857110/StaticText.o.d ${OBJECTDIR}/_ext/1472/usb_callback.o.d ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d ${OBJECTDIR}/_ext/841123503/comm_pkt.o.d ${OBJECTDIR}/_ext/841123503/comm_pkt_callback.o.d ${OBJECTDIR}/_ext/841123503/FlashProgrammer.o.d ${OBJECTDIR}/_ext/1744090058/mTouch2ChSlider.o.d ${OBJECTDIR}/_ext/1744090058/mTouch4ChSlider.o.d ${OBJECTDIR}/_ext/1744090058/mTouchAcquistion.o.d ${OBJECTDIR}/_ext/1744090058/mTouchButton.o.d ${OBJECTDIR}/_ext/1744090058/mTouchControl.o.d ${OBJECTDIR}/_ext/1744090058/mTouchDebug.o.d ${OBJECTDIR}/_ext/1744090058/mTouchMarixButton.o.d ${OBJECTDIR}/_ext/1744090058/mTouchSensor.o.d ${OBJECTDIR}/_ext/2065199231/usb_function_generic.o.d ${OBJECTDIR}/_ext/926206843/usb_device.o.d ${OBJECTDIR}/_ext/1667312156/MSPI.o.d ${OBJECTDIR}/_ext/1667312156/RF4CE.o.d ${OBJECTDIR}/_ext/1667312156/MRF24J40_RF4CE.o.d ${OBJECTDIR}/_ext/546296802/Console.o.d ${OBJECTDIR}/_ext/546296802/SymbolTime.o.d ${OBJECTDIR}/_ext/1472/main.o.d ${OBJECTDIR}/_ext/1472/RF4CEController.o.d ${OBJECTDIR}/_ext/1472/GraphicsUserInterface.o.d ${OBJECTDIR}/_ext/1472/joystick.o.d ${OBJECTDIR}/_ext/1472/RemotePlayDiscInterface.o.d ${OBJECTDIR}/_ext/1472/RemoteFavoritesInterface.o.d ${OBJECTDIR}/_ext/1472/RemoteInternetInterface.o.d ${OBJECTDIR}/_ext/1472/rtcc.o.d ${OBJECTDIR}/_ext/1472/battery.o.d ${OBJECTDIR}/_ext/1472/sleep.o.d ${OBJECTDIR}/_ext/1472/RemoteSettingsInterface.o.d ${OBJECTDIR}/_ext/1472/RemoteWatchTVInterface.o.d ${OBJECTDIR}/_ext/1472/led.o.d ${OBJECTDIR}/_ext/1472/InternalResourceC30.o.d ${OBJECTDIR}/_ext/1472/ExternalResource.o.d ${OBJECTDIR}/_ext/1472/mTouchKeys.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/2020629477/TouchScreen.o ${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o ${OBJECTDIR}/_ext/2020629477/drv_spi.o ${OBJECTDIR}/_ext/2020629477/MCHP25AA02E48.o ${OBJECTDIR}/_ext/2020629477/SST25VF016.o ${OBJECTDIR}/_ext/2048740170/TimeDelay.o ${OBJECTDIR}/_ext/1847857110/GOL.o ${OBJECTDIR}/_ext/1847857110/Primitive.o ${OBJECTDIR}/_ext/1847857110/Palette.o ${OBJECTDIR}/_ext/1847857110/Button.o ${OBJECTDIR}/_ext/1847857110/ProgressBar.o ${OBJECTDIR}/_ext/1847857110/Picture.o ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o ${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o ${OBJECTDIR}/_ext/366188474/TCON_HX8238.o ${OBJECTDIR}/_ext/1847857110/ListBox.o ${OBJECTDIR}/_ext/1847857110/EditBox.o ${OBJECTDIR}/_ext/1847857110/StaticText.o ${OBJECTDIR}/_ext/1472/usb_callback.o ${OBJECTDIR}/_ext/1472/usb_descriptors.o ${OBJECTDIR}/_ext/841123503/comm_pkt.o ${OBJECTDIR}/_ext/841123503/comm_pkt_callback.o ${OBJECTDIR}/_ext/841123503/FlashProgrammer.o ${OBJECTDIR}/_ext/1744090058/mTouch2ChSlider.o ${OBJECTDIR}/_ext/1744090058/mTouch4ChSlider.o ${OBJECTDIR}/_ext/1744090058/mTouchAcquistion.o ${OBJECTDIR}/_ext/1744090058/mTouchButton.o ${OBJECTDIR}/_ext/1744090058/mTouchControl.o ${OBJECTDIR}/_ext/1744090058/mTouchDebug.o ${OBJECTDIR}/_ext/1744090058/mTouchMarixButton.o ${OBJECTDIR}/_ext/1744090058/mTouchSensor.o ${OBJECTDIR}/_ext/2065199231/usb_function_generic.o ${OBJECTDIR}/_ext/926206843/usb_device.o ${OBJECTDIR}/_ext/1667312156/MSPI.o ${OBJECTDIR}/_ext/1667312156/RF4CE.o ${OBJECTDIR}/_ext/1667312156/MRF24J40_RF4CE.o ${OBJECTDIR}/_ext/546296802/Console.o ${OBJECTDIR}/_ext/546296802/SymbolTime.o ${OBJECTDIR}/_ext/1472/main.o ${OBJECTDIR}/_ext/1472/RF4CEController.o ${OBJECTDIR}/_ext/1472/GraphicsUserInterface.o ${OBJECTDIR}/_ext/1472/joystick.o ${OBJECTDIR}/_ext/1472/RemotePlayDiscInterface.o ${OBJECTDIR}/_ext/1472/RemoteFavoritesInterface.o ${OBJECTDIR}/_ext/1472/RemoteInternetInterface.o ${OBJECTDIR}/_ext/1472/rtcc.o ${OBJECTDIR}/_ext/1472/battery.o ${OBJECTDIR}/_ext/1472/sleep.o ${OBJECTDIR}/_ext/1472/RemoteSettingsInterface.o ${OBJECTDIR}/_ext/1472/RemoteWatchTVInterface.o ${OBJECTDIR}/_ext/1472/led.o ${OBJECTDIR}/_ext/1472/InternalResourceC30.o ${OBJECTDIR}/_ext/1472/ExternalResource.o ${OBJECTDIR}/_ext/1472/mTouchKeys.o


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

# Path to java used to run MPLAB X when this makefile was created
MP_JAVA_PATH="C:\Program Files\Java\jre6/bin/"
OS_CURRENT="$(shell uname -s)"
############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
MP_CC="C:\Program Files (x86)\Microchip\mplabc30\v3.31\bin\pic30-gcc.exe"
# MP_BC is not defined
MP_AS="C:\Program Files (x86)\Microchip\mplabc30\v3.31\bin\pic30-as.exe"
MP_LD="C:\Program Files (x86)\Microchip\mplabc30\v3.31\bin\pic30-ld.exe"
MP_AR="C:\Program Files (x86)\Microchip\mplabc30\v3.31\bin\pic30-ar.exe"
DEP_GEN=${MP_JAVA_PATH}java -jar "C:/Program Files (x86)/Microchip/MPLABX/mplab_ide/mplab_ide/modules/../../bin/extractobjectdependencies.jar" 
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps
MP_CC_DIR="C:\Program Files (x86)\Microchip\mplabc30\v3.31\bin"
# MP_BC_DIR is not defined
MP_AS_DIR="C:\Program Files (x86)\Microchip\mplabc30\v3.31\bin"
MP_LD_DIR="C:\Program Files (x86)\Microchip\mplabc30\v3.31\bin"
MP_AR_DIR="C:\Program Files (x86)\Microchip\mplabc30\v3.31\bin"
# MP_BC_DIR is not defined

.build-conf:  ${BUILD_SUBPROJECTS}
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ256DA210
MP_LINKER_FILE_OPTION=,-Tp24FJ256DA210.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/2020629477/TouchScreen.o: ../../../../Board\ Support\ Package/TouchScreen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2020629477 
	@${RM} ${OBJECTDIR}/_ext/2020629477/TouchScreen.o.d 
	@${RM} ${OBJECTDIR}/_ext/2020629477/TouchScreen.o.ok ${OBJECTDIR}/_ext/2020629477/TouchScreen.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2020629477/TouchScreen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/2020629477/TouchScreen.o.d" -o ${OBJECTDIR}/_ext/2020629477/TouchScreen.o "../../../../Board Support Package/TouchScreen.c"  
	
${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o: ../../../../Board\ Support\ Package/TouchScreenResistive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2020629477 
	@${RM} ${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o.d 
	@${RM} ${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o.ok ${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o.d" -o ${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o "../../../../Board Support Package/TouchScreenResistive.c"  
	
${OBJECTDIR}/_ext/2020629477/drv_spi.o: ../../../../Board\ Support\ Package/drv_spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2020629477 
	@${RM} ${OBJECTDIR}/_ext/2020629477/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/2020629477/drv_spi.o.ok ${OBJECTDIR}/_ext/2020629477/drv_spi.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2020629477/drv_spi.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/2020629477/drv_spi.o.d" -o ${OBJECTDIR}/_ext/2020629477/drv_spi.o "../../../../Board Support Package/drv_spi.c"  
	
${OBJECTDIR}/_ext/2020629477/MCHP25AA02E48.o: ../../../../Board\ Support\ Package/MCHP25AA02E48.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2020629477 
	@${RM} ${OBJECTDIR}/_ext/2020629477/MCHP25AA02E48.o.d 
	@${RM} ${OBJECTDIR}/_ext/2020629477/MCHP25AA02E48.o.ok ${OBJECTDIR}/_ext/2020629477/MCHP25AA02E48.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2020629477/MCHP25AA02E48.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/2020629477/MCHP25AA02E48.o.d" -o ${OBJECTDIR}/_ext/2020629477/MCHP25AA02E48.o "../../../../Board Support Package/MCHP25AA02E48.c"  
	
${OBJECTDIR}/_ext/2020629477/SST25VF016.o: ../../../../Board\ Support\ Package/SST25VF016.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2020629477 
	@${RM} ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.d 
	@${RM} ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.ok ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2020629477/SST25VF016.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/2020629477/SST25VF016.o.d" -o ${OBJECTDIR}/_ext/2020629477/SST25VF016.o "../../../../Board Support Package/SST25VF016.c"  
	
${OBJECTDIR}/_ext/2048740170/TimeDelay.o: ../../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2048740170 
	@${RM} ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.ok ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2048740170/TimeDelay.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/2048740170/TimeDelay.o.d" -o ${OBJECTDIR}/_ext/2048740170/TimeDelay.o ../../../../Microchip/Common/TimeDelay.c  
	
${OBJECTDIR}/_ext/1847857110/GOL.o: ../../../../Microchip/Graphics/GOL.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	@${RM} ${OBJECTDIR}/_ext/1847857110/GOL.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847857110/GOL.o.ok ${OBJECTDIR}/_ext/1847857110/GOL.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847857110/GOL.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1847857110/GOL.o.d" -o ${OBJECTDIR}/_ext/1847857110/GOL.o ../../../../Microchip/Graphics/GOL.c  
	
${OBJECTDIR}/_ext/1847857110/Primitive.o: ../../../../Microchip/Graphics/Primitive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	@${RM} ${OBJECTDIR}/_ext/1847857110/Primitive.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847857110/Primitive.o.ok ${OBJECTDIR}/_ext/1847857110/Primitive.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847857110/Primitive.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1847857110/Primitive.o.d" -o ${OBJECTDIR}/_ext/1847857110/Primitive.o ../../../../Microchip/Graphics/Primitive.c  
	
${OBJECTDIR}/_ext/1847857110/Palette.o: ../../../../Microchip/Graphics/Palette.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	@${RM} ${OBJECTDIR}/_ext/1847857110/Palette.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847857110/Palette.o.ok ${OBJECTDIR}/_ext/1847857110/Palette.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847857110/Palette.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1847857110/Palette.o.d" -o ${OBJECTDIR}/_ext/1847857110/Palette.o ../../../../Microchip/Graphics/Palette.c  
	
${OBJECTDIR}/_ext/1847857110/Button.o: ../../../../Microchip/Graphics/Button.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	@${RM} ${OBJECTDIR}/_ext/1847857110/Button.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847857110/Button.o.ok ${OBJECTDIR}/_ext/1847857110/Button.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847857110/Button.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1847857110/Button.o.d" -o ${OBJECTDIR}/_ext/1847857110/Button.o ../../../../Microchip/Graphics/Button.c  
	
${OBJECTDIR}/_ext/1847857110/ProgressBar.o: ../../../../Microchip/Graphics/ProgressBar.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	@${RM} ${OBJECTDIR}/_ext/1847857110/ProgressBar.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847857110/ProgressBar.o.ok ${OBJECTDIR}/_ext/1847857110/ProgressBar.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847857110/ProgressBar.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1847857110/ProgressBar.o.d" -o ${OBJECTDIR}/_ext/1847857110/ProgressBar.o ../../../../Microchip/Graphics/ProgressBar.c  
	
${OBJECTDIR}/_ext/1847857110/Picture.o: ../../../../Microchip/Graphics/Picture.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	@${RM} ${OBJECTDIR}/_ext/1847857110/Picture.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847857110/Picture.o.ok ${OBJECTDIR}/_ext/1847857110/Picture.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847857110/Picture.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1847857110/Picture.o.d" -o ${OBJECTDIR}/_ext/1847857110/Picture.o ../../../../Microchip/Graphics/Picture.c  
	
${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o: ../../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/366188474 
	@${RM} ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.d 
	@${RM} ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.ok ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.d" -o ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o ../../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  
	
${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o: ../../../../Microchip/Graphics/Drivers/mchpGfxDrvBuffer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/366188474 
	@${RM} ${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o.ok ${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -mlarge-arrays -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o.d" -o ${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o ../../../../Microchip/Graphics/Drivers/mchpGfxDrvBuffer.c  
	
${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o: ../../../../Microchip/Graphics/GOLSchemeDefault.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	@${RM} ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.ok ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.d" -o ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o ../../../../Microchip/Graphics/GOLSchemeDefault.c  
	
${OBJECTDIR}/_ext/366188474/TCON_HX8238.o: ../../../../Microchip/Graphics/Drivers/TCON_HX8238.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/366188474 
	@${RM} ${OBJECTDIR}/_ext/366188474/TCON_HX8238.o.d 
	@${RM} ${OBJECTDIR}/_ext/366188474/TCON_HX8238.o.ok ${OBJECTDIR}/_ext/366188474/TCON_HX8238.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/366188474/TCON_HX8238.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/366188474/TCON_HX8238.o.d" -o ${OBJECTDIR}/_ext/366188474/TCON_HX8238.o ../../../../Microchip/Graphics/Drivers/TCON_HX8238.c  
	
${OBJECTDIR}/_ext/1847857110/ListBox.o: ../../../../Microchip/Graphics/ListBox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	@${RM} ${OBJECTDIR}/_ext/1847857110/ListBox.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847857110/ListBox.o.ok ${OBJECTDIR}/_ext/1847857110/ListBox.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847857110/ListBox.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1847857110/ListBox.o.d" -o ${OBJECTDIR}/_ext/1847857110/ListBox.o ../../../../Microchip/Graphics/ListBox.c  
	
${OBJECTDIR}/_ext/1847857110/EditBox.o: ../../../../Microchip/Graphics/EditBox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	@${RM} ${OBJECTDIR}/_ext/1847857110/EditBox.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847857110/EditBox.o.ok ${OBJECTDIR}/_ext/1847857110/EditBox.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847857110/EditBox.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1847857110/EditBox.o.d" -o ${OBJECTDIR}/_ext/1847857110/EditBox.o ../../../../Microchip/Graphics/EditBox.c  
	
${OBJECTDIR}/_ext/1847857110/StaticText.o: ../../../../Microchip/Graphics/StaticText.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	@${RM} ${OBJECTDIR}/_ext/1847857110/StaticText.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847857110/StaticText.o.ok ${OBJECTDIR}/_ext/1847857110/StaticText.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847857110/StaticText.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1847857110/StaticText.o.d" -o ${OBJECTDIR}/_ext/1847857110/StaticText.o ../../../../Microchip/Graphics/StaticText.c  
	
${OBJECTDIR}/_ext/1472/usb_callback.o: ../usb_callback.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/usb_callback.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/usb_callback.o.ok ${OBJECTDIR}/_ext/1472/usb_callback.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/usb_callback.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1472/usb_callback.o.d" -o ${OBJECTDIR}/_ext/1472/usb_callback.o ../usb_callback.c  
	
${OBJECTDIR}/_ext/1472/usb_descriptors.o: ../usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.ok ${OBJECTDIR}/_ext/1472/usb_descriptors.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/usb_descriptors.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1472/usb_descriptors.o.d" -o ${OBJECTDIR}/_ext/1472/usb_descriptors.o ../usb_descriptors.c  
	
${OBJECTDIR}/_ext/841123503/comm_pkt.o: ../../../../Graphics/Common/comm_pkt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/841123503 
	@${RM} ${OBJECTDIR}/_ext/841123503/comm_pkt.o.d 
	@${RM} ${OBJECTDIR}/_ext/841123503/comm_pkt.o.ok ${OBJECTDIR}/_ext/841123503/comm_pkt.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/841123503/comm_pkt.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/841123503/comm_pkt.o.d" -o ${OBJECTDIR}/_ext/841123503/comm_pkt.o ../../../../Graphics/Common/comm_pkt.c  
	
${OBJECTDIR}/_ext/841123503/comm_pkt_callback.o: ../../../../Graphics/Common/comm_pkt_callback.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/841123503 
	@${RM} ${OBJECTDIR}/_ext/841123503/comm_pkt_callback.o.d 
	@${RM} ${OBJECTDIR}/_ext/841123503/comm_pkt_callback.o.ok ${OBJECTDIR}/_ext/841123503/comm_pkt_callback.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/841123503/comm_pkt_callback.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/841123503/comm_pkt_callback.o.d" -o ${OBJECTDIR}/_ext/841123503/comm_pkt_callback.o ../../../../Graphics/Common/comm_pkt_callback.c  
	
${OBJECTDIR}/_ext/841123503/FlashProgrammer.o: ../../../../Graphics/Common/FlashProgrammer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/841123503 
	@${RM} ${OBJECTDIR}/_ext/841123503/FlashProgrammer.o.d 
	@${RM} ${OBJECTDIR}/_ext/841123503/FlashProgrammer.o.ok ${OBJECTDIR}/_ext/841123503/FlashProgrammer.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/841123503/FlashProgrammer.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/841123503/FlashProgrammer.o.d" -o ${OBJECTDIR}/_ext/841123503/FlashProgrammer.o ../../../../Graphics/Common/FlashProgrammer.c  
	
${OBJECTDIR}/_ext/1744090058/mTouch2ChSlider.o: ../../../../Microchip/mTouchCap/PIC18\ PIC24\ Library/mTouch2ChSlider.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1744090058 
	@${RM} ${OBJECTDIR}/_ext/1744090058/mTouch2ChSlider.o.d 
	@${RM} ${OBJECTDIR}/_ext/1744090058/mTouch2ChSlider.o.ok ${OBJECTDIR}/_ext/1744090058/mTouch2ChSlider.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1744090058/mTouch2ChSlider.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1744090058/mTouch2ChSlider.o.d" -o ${OBJECTDIR}/_ext/1744090058/mTouch2ChSlider.o "../../../../Microchip/mTouchCap/PIC18 PIC24 Library/mTouch2ChSlider.c"  
	
${OBJECTDIR}/_ext/1744090058/mTouch4ChSlider.o: ../../../../Microchip/mTouchCap/PIC18\ PIC24\ Library/mTouch4ChSlider.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1744090058 
	@${RM} ${OBJECTDIR}/_ext/1744090058/mTouch4ChSlider.o.d 
	@${RM} ${OBJECTDIR}/_ext/1744090058/mTouch4ChSlider.o.ok ${OBJECTDIR}/_ext/1744090058/mTouch4ChSlider.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1744090058/mTouch4ChSlider.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1744090058/mTouch4ChSlider.o.d" -o ${OBJECTDIR}/_ext/1744090058/mTouch4ChSlider.o "../../../../Microchip/mTouchCap/PIC18 PIC24 Library/mTouch4ChSlider.c"  
	
${OBJECTDIR}/_ext/1744090058/mTouchAcquistion.o: ../../../../Microchip/mTouchCap/PIC18\ PIC24\ Library/mTouchAcquistion.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1744090058 
	@${RM} ${OBJECTDIR}/_ext/1744090058/mTouchAcquistion.o.d 
	@${RM} ${OBJECTDIR}/_ext/1744090058/mTouchAcquistion.o.ok ${OBJECTDIR}/_ext/1744090058/mTouchAcquistion.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1744090058/mTouchAcquistion.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1744090058/mTouchAcquistion.o.d" -o ${OBJECTDIR}/_ext/1744090058/mTouchAcquistion.o "../../../../Microchip/mTouchCap/PIC18 PIC24 Library/mTouchAcquistion.c"  
	
${OBJECTDIR}/_ext/1744090058/mTouchButton.o: ../../../../Microchip/mTouchCap/PIC18\ PIC24\ Library/mTouchButton.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1744090058 
	@${RM} ${OBJECTDIR}/_ext/1744090058/mTouchButton.o.d 
	@${RM} ${OBJECTDIR}/_ext/1744090058/mTouchButton.o.ok ${OBJECTDIR}/_ext/1744090058/mTouchButton.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1744090058/mTouchButton.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1744090058/mTouchButton.o.d" -o ${OBJECTDIR}/_ext/1744090058/mTouchButton.o "../../../../Microchip/mTouchCap/PIC18 PIC24 Library/mTouchButton.c"  
	
${OBJECTDIR}/_ext/1744090058/mTouchControl.o: ../../../../Microchip/mTouchCap/PIC18\ PIC24\ Library/mTouchControl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1744090058 
	@${RM} ${OBJECTDIR}/_ext/1744090058/mTouchControl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1744090058/mTouchControl.o.ok ${OBJECTDIR}/_ext/1744090058/mTouchControl.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1744090058/mTouchControl.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1744090058/mTouchControl.o.d" -o ${OBJECTDIR}/_ext/1744090058/mTouchControl.o "../../../../Microchip/mTouchCap/PIC18 PIC24 Library/mTouchControl.c"  
	
${OBJECTDIR}/_ext/1744090058/mTouchDebug.o: ../../../../Microchip/mTouchCap/PIC18\ PIC24\ Library/mTouchDebug.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1744090058 
	@${RM} ${OBJECTDIR}/_ext/1744090058/mTouchDebug.o.d 
	@${RM} ${OBJECTDIR}/_ext/1744090058/mTouchDebug.o.ok ${OBJECTDIR}/_ext/1744090058/mTouchDebug.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1744090058/mTouchDebug.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1744090058/mTouchDebug.o.d" -o ${OBJECTDIR}/_ext/1744090058/mTouchDebug.o "../../../../Microchip/mTouchCap/PIC18 PIC24 Library/mTouchDebug.c"  
	
${OBJECTDIR}/_ext/1744090058/mTouchMarixButton.o: ../../../../Microchip/mTouchCap/PIC18\ PIC24\ Library/mTouchMarixButton.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1744090058 
	@${RM} ${OBJECTDIR}/_ext/1744090058/mTouchMarixButton.o.d 
	@${RM} ${OBJECTDIR}/_ext/1744090058/mTouchMarixButton.o.ok ${OBJECTDIR}/_ext/1744090058/mTouchMarixButton.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1744090058/mTouchMarixButton.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1744090058/mTouchMarixButton.o.d" -o ${OBJECTDIR}/_ext/1744090058/mTouchMarixButton.o "../../../../Microchip/mTouchCap/PIC18 PIC24 Library/mTouchMarixButton.c"  
	
${OBJECTDIR}/_ext/1744090058/mTouchSensor.o: ../../../../Microchip/mTouchCap/PIC18\ PIC24\ Library/mTouchSensor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1744090058 
	@${RM} ${OBJECTDIR}/_ext/1744090058/mTouchSensor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1744090058/mTouchSensor.o.ok ${OBJECTDIR}/_ext/1744090058/mTouchSensor.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1744090058/mTouchSensor.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1744090058/mTouchSensor.o.d" -o ${OBJECTDIR}/_ext/1744090058/mTouchSensor.o "../../../../Microchip/mTouchCap/PIC18 PIC24 Library/mTouchSensor.c"  
	
${OBJECTDIR}/_ext/2065199231/usb_function_generic.o: ../../../../Microchip/USB/Generic\ Device\ Driver/usb_function_generic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2065199231 
	@${RM} ${OBJECTDIR}/_ext/2065199231/usb_function_generic.o.d 
	@${RM} ${OBJECTDIR}/_ext/2065199231/usb_function_generic.o.ok ${OBJECTDIR}/_ext/2065199231/usb_function_generic.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2065199231/usb_function_generic.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/2065199231/usb_function_generic.o.d" -o ${OBJECTDIR}/_ext/2065199231/usb_function_generic.o "../../../../Microchip/USB/Generic Device Driver/usb_function_generic.c"  
	
${OBJECTDIR}/_ext/926206843/usb_device.o: ../../../../Microchip/USB/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/926206843 
	@${RM} ${OBJECTDIR}/_ext/926206843/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/926206843/usb_device.o.ok ${OBJECTDIR}/_ext/926206843/usb_device.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/926206843/usb_device.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/926206843/usb_device.o.d" -o ${OBJECTDIR}/_ext/926206843/usb_device.o ../../../../Microchip/USB/usb_device.c  
	
${OBJECTDIR}/_ext/1667312156/MSPI.o: ../WirelessTransceivers/MSPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1667312156 
	@${RM} ${OBJECTDIR}/_ext/1667312156/MSPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/1667312156/MSPI.o.ok ${OBJECTDIR}/_ext/1667312156/MSPI.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1667312156/MSPI.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1667312156/MSPI.o.d" -o ${OBJECTDIR}/_ext/1667312156/MSPI.o ../WirelessTransceivers/MSPI.c  
	
${OBJECTDIR}/_ext/1667312156/RF4CE.o: ../WirelessTransceivers/RF4CE.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1667312156 
	@${RM} ${OBJECTDIR}/_ext/1667312156/RF4CE.o.d 
	@${RM} ${OBJECTDIR}/_ext/1667312156/RF4CE.o.ok ${OBJECTDIR}/_ext/1667312156/RF4CE.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1667312156/RF4CE.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1667312156/RF4CE.o.d" -o ${OBJECTDIR}/_ext/1667312156/RF4CE.o ../WirelessTransceivers/RF4CE.c  
	
${OBJECTDIR}/_ext/1667312156/MRF24J40_RF4CE.o: ../WirelessTransceivers/MRF24J40_RF4CE.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1667312156 
	@${RM} ${OBJECTDIR}/_ext/1667312156/MRF24J40_RF4CE.o.d 
	@${RM} ${OBJECTDIR}/_ext/1667312156/MRF24J40_RF4CE.o.ok ${OBJECTDIR}/_ext/1667312156/MRF24J40_RF4CE.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1667312156/MRF24J40_RF4CE.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1667312156/MRF24J40_RF4CE.o.d" -o ${OBJECTDIR}/_ext/1667312156/MRF24J40_RF4CE.o ../WirelessTransceivers/MRF24J40_RF4CE.c  
	
${OBJECTDIR}/_ext/546296802/Console.o: ../../../../Microchip/WirelessProtocols/Console.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/546296802 
	@${RM} ${OBJECTDIR}/_ext/546296802/Console.o.d 
	@${RM} ${OBJECTDIR}/_ext/546296802/Console.o.ok ${OBJECTDIR}/_ext/546296802/Console.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/546296802/Console.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/546296802/Console.o.d" -o ${OBJECTDIR}/_ext/546296802/Console.o ../../../../Microchip/WirelessProtocols/Console.c  
	
${OBJECTDIR}/_ext/546296802/SymbolTime.o: ../../../../Microchip/WirelessProtocols/SymbolTime.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/546296802 
	@${RM} ${OBJECTDIR}/_ext/546296802/SymbolTime.o.d 
	@${RM} ${OBJECTDIR}/_ext/546296802/SymbolTime.o.ok ${OBJECTDIR}/_ext/546296802/SymbolTime.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/546296802/SymbolTime.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/546296802/SymbolTime.o.d" -o ${OBJECTDIR}/_ext/546296802/SymbolTime.o ../../../../Microchip/WirelessProtocols/SymbolTime.c  
	
${OBJECTDIR}/_ext/1472/main.o: ../main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.ok ${OBJECTDIR}/_ext/1472/main.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/main.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1472/main.o.d" -o ${OBJECTDIR}/_ext/1472/main.o ../main.c  
	
${OBJECTDIR}/_ext/1472/RF4CEController.o: ../RF4CEController.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/RF4CEController.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/RF4CEController.o.ok ${OBJECTDIR}/_ext/1472/RF4CEController.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/RF4CEController.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1472/RF4CEController.o.d" -o ${OBJECTDIR}/_ext/1472/RF4CEController.o ../RF4CEController.c  
	
${OBJECTDIR}/_ext/1472/GraphicsUserInterface.o: ../GraphicsUserInterface.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/GraphicsUserInterface.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/GraphicsUserInterface.o.ok ${OBJECTDIR}/_ext/1472/GraphicsUserInterface.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/GraphicsUserInterface.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1472/GraphicsUserInterface.o.d" -o ${OBJECTDIR}/_ext/1472/GraphicsUserInterface.o ../GraphicsUserInterface.c  
	
${OBJECTDIR}/_ext/1472/joystick.o: ../joystick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/joystick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/joystick.o.ok ${OBJECTDIR}/_ext/1472/joystick.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/joystick.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1472/joystick.o.d" -o ${OBJECTDIR}/_ext/1472/joystick.o ../joystick.c  
	
${OBJECTDIR}/_ext/1472/RemotePlayDiscInterface.o: ../RemotePlayDiscInterface.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/RemotePlayDiscInterface.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/RemotePlayDiscInterface.o.ok ${OBJECTDIR}/_ext/1472/RemotePlayDiscInterface.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/RemotePlayDiscInterface.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1472/RemotePlayDiscInterface.o.d" -o ${OBJECTDIR}/_ext/1472/RemotePlayDiscInterface.o ../RemotePlayDiscInterface.c  
	
${OBJECTDIR}/_ext/1472/RemoteFavoritesInterface.o: ../RemoteFavoritesInterface.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/RemoteFavoritesInterface.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/RemoteFavoritesInterface.o.ok ${OBJECTDIR}/_ext/1472/RemoteFavoritesInterface.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/RemoteFavoritesInterface.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1472/RemoteFavoritesInterface.o.d" -o ${OBJECTDIR}/_ext/1472/RemoteFavoritesInterface.o ../RemoteFavoritesInterface.c  
	
${OBJECTDIR}/_ext/1472/RemoteInternetInterface.o: ../RemoteInternetInterface.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/RemoteInternetInterface.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/RemoteInternetInterface.o.ok ${OBJECTDIR}/_ext/1472/RemoteInternetInterface.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/RemoteInternetInterface.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1472/RemoteInternetInterface.o.d" -o ${OBJECTDIR}/_ext/1472/RemoteInternetInterface.o ../RemoteInternetInterface.c  
	
${OBJECTDIR}/_ext/1472/rtcc.o: ../rtcc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/rtcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/rtcc.o.ok ${OBJECTDIR}/_ext/1472/rtcc.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/rtcc.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1472/rtcc.o.d" -o ${OBJECTDIR}/_ext/1472/rtcc.o ../rtcc.c  
	
${OBJECTDIR}/_ext/1472/battery.o: ../battery.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/battery.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/battery.o.ok ${OBJECTDIR}/_ext/1472/battery.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/battery.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1472/battery.o.d" -o ${OBJECTDIR}/_ext/1472/battery.o ../battery.c  
	
${OBJECTDIR}/_ext/1472/sleep.o: ../sleep.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/sleep.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/sleep.o.ok ${OBJECTDIR}/_ext/1472/sleep.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/sleep.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1472/sleep.o.d" -o ${OBJECTDIR}/_ext/1472/sleep.o ../sleep.c  
	
${OBJECTDIR}/_ext/1472/RemoteSettingsInterface.o: ../RemoteSettingsInterface.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/RemoteSettingsInterface.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/RemoteSettingsInterface.o.ok ${OBJECTDIR}/_ext/1472/RemoteSettingsInterface.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/RemoteSettingsInterface.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1472/RemoteSettingsInterface.o.d" -o ${OBJECTDIR}/_ext/1472/RemoteSettingsInterface.o ../RemoteSettingsInterface.c  
	
${OBJECTDIR}/_ext/1472/RemoteWatchTVInterface.o: ../RemoteWatchTVInterface.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/RemoteWatchTVInterface.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/RemoteWatchTVInterface.o.ok ${OBJECTDIR}/_ext/1472/RemoteWatchTVInterface.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/RemoteWatchTVInterface.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1472/RemoteWatchTVInterface.o.d" -o ${OBJECTDIR}/_ext/1472/RemoteWatchTVInterface.o ../RemoteWatchTVInterface.c  
	
${OBJECTDIR}/_ext/1472/led.o: ../led.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/led.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/led.o.ok ${OBJECTDIR}/_ext/1472/led.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/led.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1472/led.o.d" -o ${OBJECTDIR}/_ext/1472/led.o ../led.c  
	
${OBJECTDIR}/_ext/1472/InternalResourceC30.o: ../InternalResourceC30.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/InternalResourceC30.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/InternalResourceC30.o.ok ${OBJECTDIR}/_ext/1472/InternalResourceC30.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/InternalResourceC30.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1472/InternalResourceC30.o.d" -o ${OBJECTDIR}/_ext/1472/InternalResourceC30.o ../InternalResourceC30.c  
	
${OBJECTDIR}/_ext/1472/ExternalResource.o: ../ExternalResource.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/ExternalResource.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/ExternalResource.o.ok ${OBJECTDIR}/_ext/1472/ExternalResource.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/ExternalResource.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1472/ExternalResource.o.d" -o ${OBJECTDIR}/_ext/1472/ExternalResource.o ../ExternalResource.c  
	
${OBJECTDIR}/_ext/1472/mTouchKeys.o: ../mTouchKeys.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/mTouchKeys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/mTouchKeys.o.ok ${OBJECTDIR}/_ext/1472/mTouchKeys.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/mTouchKeys.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1472/mTouchKeys.o.d" -o ${OBJECTDIR}/_ext/1472/mTouchKeys.o ../mTouchKeys.c  
	
else
${OBJECTDIR}/_ext/2020629477/TouchScreen.o: ../../../../Board\ Support\ Package/TouchScreen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2020629477 
	@${RM} ${OBJECTDIR}/_ext/2020629477/TouchScreen.o.d 
	@${RM} ${OBJECTDIR}/_ext/2020629477/TouchScreen.o.ok ${OBJECTDIR}/_ext/2020629477/TouchScreen.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2020629477/TouchScreen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/2020629477/TouchScreen.o.d" -o ${OBJECTDIR}/_ext/2020629477/TouchScreen.o "../../../../Board Support Package/TouchScreen.c"  
	
${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o: ../../../../Board\ Support\ Package/TouchScreenResistive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2020629477 
	@${RM} ${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o.d 
	@${RM} ${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o.ok ${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o.d" -o ${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o "../../../../Board Support Package/TouchScreenResistive.c"  
	
${OBJECTDIR}/_ext/2020629477/drv_spi.o: ../../../../Board\ Support\ Package/drv_spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2020629477 
	@${RM} ${OBJECTDIR}/_ext/2020629477/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/2020629477/drv_spi.o.ok ${OBJECTDIR}/_ext/2020629477/drv_spi.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2020629477/drv_spi.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/2020629477/drv_spi.o.d" -o ${OBJECTDIR}/_ext/2020629477/drv_spi.o "../../../../Board Support Package/drv_spi.c"  
	
${OBJECTDIR}/_ext/2020629477/MCHP25AA02E48.o: ../../../../Board\ Support\ Package/MCHP25AA02E48.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2020629477 
	@${RM} ${OBJECTDIR}/_ext/2020629477/MCHP25AA02E48.o.d 
	@${RM} ${OBJECTDIR}/_ext/2020629477/MCHP25AA02E48.o.ok ${OBJECTDIR}/_ext/2020629477/MCHP25AA02E48.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2020629477/MCHP25AA02E48.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/2020629477/MCHP25AA02E48.o.d" -o ${OBJECTDIR}/_ext/2020629477/MCHP25AA02E48.o "../../../../Board Support Package/MCHP25AA02E48.c"  
	
${OBJECTDIR}/_ext/2020629477/SST25VF016.o: ../../../../Board\ Support\ Package/SST25VF016.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2020629477 
	@${RM} ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.d 
	@${RM} ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.ok ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2020629477/SST25VF016.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/2020629477/SST25VF016.o.d" -o ${OBJECTDIR}/_ext/2020629477/SST25VF016.o "../../../../Board Support Package/SST25VF016.c"  
	
${OBJECTDIR}/_ext/2048740170/TimeDelay.o: ../../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2048740170 
	@${RM} ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.ok ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2048740170/TimeDelay.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/2048740170/TimeDelay.o.d" -o ${OBJECTDIR}/_ext/2048740170/TimeDelay.o ../../../../Microchip/Common/TimeDelay.c  
	
${OBJECTDIR}/_ext/1847857110/GOL.o: ../../../../Microchip/Graphics/GOL.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	@${RM} ${OBJECTDIR}/_ext/1847857110/GOL.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847857110/GOL.o.ok ${OBJECTDIR}/_ext/1847857110/GOL.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847857110/GOL.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1847857110/GOL.o.d" -o ${OBJECTDIR}/_ext/1847857110/GOL.o ../../../../Microchip/Graphics/GOL.c  
	
${OBJECTDIR}/_ext/1847857110/Primitive.o: ../../../../Microchip/Graphics/Primitive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	@${RM} ${OBJECTDIR}/_ext/1847857110/Primitive.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847857110/Primitive.o.ok ${OBJECTDIR}/_ext/1847857110/Primitive.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847857110/Primitive.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1847857110/Primitive.o.d" -o ${OBJECTDIR}/_ext/1847857110/Primitive.o ../../../../Microchip/Graphics/Primitive.c  
	
${OBJECTDIR}/_ext/1847857110/Palette.o: ../../../../Microchip/Graphics/Palette.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	@${RM} ${OBJECTDIR}/_ext/1847857110/Palette.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847857110/Palette.o.ok ${OBJECTDIR}/_ext/1847857110/Palette.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847857110/Palette.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1847857110/Palette.o.d" -o ${OBJECTDIR}/_ext/1847857110/Palette.o ../../../../Microchip/Graphics/Palette.c  
	
${OBJECTDIR}/_ext/1847857110/Button.o: ../../../../Microchip/Graphics/Button.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	@${RM} ${OBJECTDIR}/_ext/1847857110/Button.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847857110/Button.o.ok ${OBJECTDIR}/_ext/1847857110/Button.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847857110/Button.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1847857110/Button.o.d" -o ${OBJECTDIR}/_ext/1847857110/Button.o ../../../../Microchip/Graphics/Button.c  
	
${OBJECTDIR}/_ext/1847857110/ProgressBar.o: ../../../../Microchip/Graphics/ProgressBar.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	@${RM} ${OBJECTDIR}/_ext/1847857110/ProgressBar.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847857110/ProgressBar.o.ok ${OBJECTDIR}/_ext/1847857110/ProgressBar.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847857110/ProgressBar.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1847857110/ProgressBar.o.d" -o ${OBJECTDIR}/_ext/1847857110/ProgressBar.o ../../../../Microchip/Graphics/ProgressBar.c  
	
${OBJECTDIR}/_ext/1847857110/Picture.o: ../../../../Microchip/Graphics/Picture.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	@${RM} ${OBJECTDIR}/_ext/1847857110/Picture.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847857110/Picture.o.ok ${OBJECTDIR}/_ext/1847857110/Picture.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847857110/Picture.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1847857110/Picture.o.d" -o ${OBJECTDIR}/_ext/1847857110/Picture.o ../../../../Microchip/Graphics/Picture.c  
	
${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o: ../../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/366188474 
	@${RM} ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.d 
	@${RM} ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.ok ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.d" -o ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o ../../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  
	
${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o: ../../../../Microchip/Graphics/Drivers/mchpGfxDrvBuffer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/366188474 
	@${RM} ${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o.ok ${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -mlarge-arrays -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o.d" -o ${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o ../../../../Microchip/Graphics/Drivers/mchpGfxDrvBuffer.c  
	
${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o: ../../../../Microchip/Graphics/GOLSchemeDefault.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	@${RM} ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.ok ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.d" -o ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o ../../../../Microchip/Graphics/GOLSchemeDefault.c  
	
${OBJECTDIR}/_ext/366188474/TCON_HX8238.o: ../../../../Microchip/Graphics/Drivers/TCON_HX8238.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/366188474 
	@${RM} ${OBJECTDIR}/_ext/366188474/TCON_HX8238.o.d 
	@${RM} ${OBJECTDIR}/_ext/366188474/TCON_HX8238.o.ok ${OBJECTDIR}/_ext/366188474/TCON_HX8238.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/366188474/TCON_HX8238.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/366188474/TCON_HX8238.o.d" -o ${OBJECTDIR}/_ext/366188474/TCON_HX8238.o ../../../../Microchip/Graphics/Drivers/TCON_HX8238.c  
	
${OBJECTDIR}/_ext/1847857110/ListBox.o: ../../../../Microchip/Graphics/ListBox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	@${RM} ${OBJECTDIR}/_ext/1847857110/ListBox.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847857110/ListBox.o.ok ${OBJECTDIR}/_ext/1847857110/ListBox.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847857110/ListBox.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1847857110/ListBox.o.d" -o ${OBJECTDIR}/_ext/1847857110/ListBox.o ../../../../Microchip/Graphics/ListBox.c  
	
${OBJECTDIR}/_ext/1847857110/EditBox.o: ../../../../Microchip/Graphics/EditBox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	@${RM} ${OBJECTDIR}/_ext/1847857110/EditBox.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847857110/EditBox.o.ok ${OBJECTDIR}/_ext/1847857110/EditBox.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847857110/EditBox.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1847857110/EditBox.o.d" -o ${OBJECTDIR}/_ext/1847857110/EditBox.o ../../../../Microchip/Graphics/EditBox.c  
	
${OBJECTDIR}/_ext/1847857110/StaticText.o: ../../../../Microchip/Graphics/StaticText.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	@${RM} ${OBJECTDIR}/_ext/1847857110/StaticText.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847857110/StaticText.o.ok ${OBJECTDIR}/_ext/1847857110/StaticText.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847857110/StaticText.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1847857110/StaticText.o.d" -o ${OBJECTDIR}/_ext/1847857110/StaticText.o ../../../../Microchip/Graphics/StaticText.c  
	
${OBJECTDIR}/_ext/1472/usb_callback.o: ../usb_callback.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/usb_callback.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/usb_callback.o.ok ${OBJECTDIR}/_ext/1472/usb_callback.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/usb_callback.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1472/usb_callback.o.d" -o ${OBJECTDIR}/_ext/1472/usb_callback.o ../usb_callback.c  
	
${OBJECTDIR}/_ext/1472/usb_descriptors.o: ../usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.ok ${OBJECTDIR}/_ext/1472/usb_descriptors.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/usb_descriptors.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1472/usb_descriptors.o.d" -o ${OBJECTDIR}/_ext/1472/usb_descriptors.o ../usb_descriptors.c  
	
${OBJECTDIR}/_ext/841123503/comm_pkt.o: ../../../../Graphics/Common/comm_pkt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/841123503 
	@${RM} ${OBJECTDIR}/_ext/841123503/comm_pkt.o.d 
	@${RM} ${OBJECTDIR}/_ext/841123503/comm_pkt.o.ok ${OBJECTDIR}/_ext/841123503/comm_pkt.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/841123503/comm_pkt.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/841123503/comm_pkt.o.d" -o ${OBJECTDIR}/_ext/841123503/comm_pkt.o ../../../../Graphics/Common/comm_pkt.c  
	
${OBJECTDIR}/_ext/841123503/comm_pkt_callback.o: ../../../../Graphics/Common/comm_pkt_callback.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/841123503 
	@${RM} ${OBJECTDIR}/_ext/841123503/comm_pkt_callback.o.d 
	@${RM} ${OBJECTDIR}/_ext/841123503/comm_pkt_callback.o.ok ${OBJECTDIR}/_ext/841123503/comm_pkt_callback.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/841123503/comm_pkt_callback.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/841123503/comm_pkt_callback.o.d" -o ${OBJECTDIR}/_ext/841123503/comm_pkt_callback.o ../../../../Graphics/Common/comm_pkt_callback.c  
	
${OBJECTDIR}/_ext/841123503/FlashProgrammer.o: ../../../../Graphics/Common/FlashProgrammer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/841123503 
	@${RM} ${OBJECTDIR}/_ext/841123503/FlashProgrammer.o.d 
	@${RM} ${OBJECTDIR}/_ext/841123503/FlashProgrammer.o.ok ${OBJECTDIR}/_ext/841123503/FlashProgrammer.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/841123503/FlashProgrammer.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/841123503/FlashProgrammer.o.d" -o ${OBJECTDIR}/_ext/841123503/FlashProgrammer.o ../../../../Graphics/Common/FlashProgrammer.c  
	
${OBJECTDIR}/_ext/1744090058/mTouch2ChSlider.o: ../../../../Microchip/mTouchCap/PIC18\ PIC24\ Library/mTouch2ChSlider.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1744090058 
	@${RM} ${OBJECTDIR}/_ext/1744090058/mTouch2ChSlider.o.d 
	@${RM} ${OBJECTDIR}/_ext/1744090058/mTouch2ChSlider.o.ok ${OBJECTDIR}/_ext/1744090058/mTouch2ChSlider.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1744090058/mTouch2ChSlider.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1744090058/mTouch2ChSlider.o.d" -o ${OBJECTDIR}/_ext/1744090058/mTouch2ChSlider.o "../../../../Microchip/mTouchCap/PIC18 PIC24 Library/mTouch2ChSlider.c"  
	
${OBJECTDIR}/_ext/1744090058/mTouch4ChSlider.o: ../../../../Microchip/mTouchCap/PIC18\ PIC24\ Library/mTouch4ChSlider.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1744090058 
	@${RM} ${OBJECTDIR}/_ext/1744090058/mTouch4ChSlider.o.d 
	@${RM} ${OBJECTDIR}/_ext/1744090058/mTouch4ChSlider.o.ok ${OBJECTDIR}/_ext/1744090058/mTouch4ChSlider.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1744090058/mTouch4ChSlider.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1744090058/mTouch4ChSlider.o.d" -o ${OBJECTDIR}/_ext/1744090058/mTouch4ChSlider.o "../../../../Microchip/mTouchCap/PIC18 PIC24 Library/mTouch4ChSlider.c"  
	
${OBJECTDIR}/_ext/1744090058/mTouchAcquistion.o: ../../../../Microchip/mTouchCap/PIC18\ PIC24\ Library/mTouchAcquistion.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1744090058 
	@${RM} ${OBJECTDIR}/_ext/1744090058/mTouchAcquistion.o.d 
	@${RM} ${OBJECTDIR}/_ext/1744090058/mTouchAcquistion.o.ok ${OBJECTDIR}/_ext/1744090058/mTouchAcquistion.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1744090058/mTouchAcquistion.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1744090058/mTouchAcquistion.o.d" -o ${OBJECTDIR}/_ext/1744090058/mTouchAcquistion.o "../../../../Microchip/mTouchCap/PIC18 PIC24 Library/mTouchAcquistion.c"  
	
${OBJECTDIR}/_ext/1744090058/mTouchButton.o: ../../../../Microchip/mTouchCap/PIC18\ PIC24\ Library/mTouchButton.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1744090058 
	@${RM} ${OBJECTDIR}/_ext/1744090058/mTouchButton.o.d 
	@${RM} ${OBJECTDIR}/_ext/1744090058/mTouchButton.o.ok ${OBJECTDIR}/_ext/1744090058/mTouchButton.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1744090058/mTouchButton.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1744090058/mTouchButton.o.d" -o ${OBJECTDIR}/_ext/1744090058/mTouchButton.o "../../../../Microchip/mTouchCap/PIC18 PIC24 Library/mTouchButton.c"  
	
${OBJECTDIR}/_ext/1744090058/mTouchControl.o: ../../../../Microchip/mTouchCap/PIC18\ PIC24\ Library/mTouchControl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1744090058 
	@${RM} ${OBJECTDIR}/_ext/1744090058/mTouchControl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1744090058/mTouchControl.o.ok ${OBJECTDIR}/_ext/1744090058/mTouchControl.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1744090058/mTouchControl.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1744090058/mTouchControl.o.d" -o ${OBJECTDIR}/_ext/1744090058/mTouchControl.o "../../../../Microchip/mTouchCap/PIC18 PIC24 Library/mTouchControl.c"  
	
${OBJECTDIR}/_ext/1744090058/mTouchDebug.o: ../../../../Microchip/mTouchCap/PIC18\ PIC24\ Library/mTouchDebug.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1744090058 
	@${RM} ${OBJECTDIR}/_ext/1744090058/mTouchDebug.o.d 
	@${RM} ${OBJECTDIR}/_ext/1744090058/mTouchDebug.o.ok ${OBJECTDIR}/_ext/1744090058/mTouchDebug.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1744090058/mTouchDebug.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1744090058/mTouchDebug.o.d" -o ${OBJECTDIR}/_ext/1744090058/mTouchDebug.o "../../../../Microchip/mTouchCap/PIC18 PIC24 Library/mTouchDebug.c"  
	
${OBJECTDIR}/_ext/1744090058/mTouchMarixButton.o: ../../../../Microchip/mTouchCap/PIC18\ PIC24\ Library/mTouchMarixButton.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1744090058 
	@${RM} ${OBJECTDIR}/_ext/1744090058/mTouchMarixButton.o.d 
	@${RM} ${OBJECTDIR}/_ext/1744090058/mTouchMarixButton.o.ok ${OBJECTDIR}/_ext/1744090058/mTouchMarixButton.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1744090058/mTouchMarixButton.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1744090058/mTouchMarixButton.o.d" -o ${OBJECTDIR}/_ext/1744090058/mTouchMarixButton.o "../../../../Microchip/mTouchCap/PIC18 PIC24 Library/mTouchMarixButton.c"  
	
${OBJECTDIR}/_ext/1744090058/mTouchSensor.o: ../../../../Microchip/mTouchCap/PIC18\ PIC24\ Library/mTouchSensor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1744090058 
	@${RM} ${OBJECTDIR}/_ext/1744090058/mTouchSensor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1744090058/mTouchSensor.o.ok ${OBJECTDIR}/_ext/1744090058/mTouchSensor.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1744090058/mTouchSensor.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1744090058/mTouchSensor.o.d" -o ${OBJECTDIR}/_ext/1744090058/mTouchSensor.o "../../../../Microchip/mTouchCap/PIC18 PIC24 Library/mTouchSensor.c"  
	
${OBJECTDIR}/_ext/2065199231/usb_function_generic.o: ../../../../Microchip/USB/Generic\ Device\ Driver/usb_function_generic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2065199231 
	@${RM} ${OBJECTDIR}/_ext/2065199231/usb_function_generic.o.d 
	@${RM} ${OBJECTDIR}/_ext/2065199231/usb_function_generic.o.ok ${OBJECTDIR}/_ext/2065199231/usb_function_generic.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2065199231/usb_function_generic.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/2065199231/usb_function_generic.o.d" -o ${OBJECTDIR}/_ext/2065199231/usb_function_generic.o "../../../../Microchip/USB/Generic Device Driver/usb_function_generic.c"  
	
${OBJECTDIR}/_ext/926206843/usb_device.o: ../../../../Microchip/USB/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/926206843 
	@${RM} ${OBJECTDIR}/_ext/926206843/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/926206843/usb_device.o.ok ${OBJECTDIR}/_ext/926206843/usb_device.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/926206843/usb_device.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/926206843/usb_device.o.d" -o ${OBJECTDIR}/_ext/926206843/usb_device.o ../../../../Microchip/USB/usb_device.c  
	
${OBJECTDIR}/_ext/1667312156/MSPI.o: ../WirelessTransceivers/MSPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1667312156 
	@${RM} ${OBJECTDIR}/_ext/1667312156/MSPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/1667312156/MSPI.o.ok ${OBJECTDIR}/_ext/1667312156/MSPI.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1667312156/MSPI.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1667312156/MSPI.o.d" -o ${OBJECTDIR}/_ext/1667312156/MSPI.o ../WirelessTransceivers/MSPI.c  
	
${OBJECTDIR}/_ext/1667312156/RF4CE.o: ../WirelessTransceivers/RF4CE.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1667312156 
	@${RM} ${OBJECTDIR}/_ext/1667312156/RF4CE.o.d 
	@${RM} ${OBJECTDIR}/_ext/1667312156/RF4CE.o.ok ${OBJECTDIR}/_ext/1667312156/RF4CE.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1667312156/RF4CE.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1667312156/RF4CE.o.d" -o ${OBJECTDIR}/_ext/1667312156/RF4CE.o ../WirelessTransceivers/RF4CE.c  
	
${OBJECTDIR}/_ext/1667312156/MRF24J40_RF4CE.o: ../WirelessTransceivers/MRF24J40_RF4CE.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1667312156 
	@${RM} ${OBJECTDIR}/_ext/1667312156/MRF24J40_RF4CE.o.d 
	@${RM} ${OBJECTDIR}/_ext/1667312156/MRF24J40_RF4CE.o.ok ${OBJECTDIR}/_ext/1667312156/MRF24J40_RF4CE.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1667312156/MRF24J40_RF4CE.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1667312156/MRF24J40_RF4CE.o.d" -o ${OBJECTDIR}/_ext/1667312156/MRF24J40_RF4CE.o ../WirelessTransceivers/MRF24J40_RF4CE.c  
	
${OBJECTDIR}/_ext/546296802/Console.o: ../../../../Microchip/WirelessProtocols/Console.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/546296802 
	@${RM} ${OBJECTDIR}/_ext/546296802/Console.o.d 
	@${RM} ${OBJECTDIR}/_ext/546296802/Console.o.ok ${OBJECTDIR}/_ext/546296802/Console.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/546296802/Console.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/546296802/Console.o.d" -o ${OBJECTDIR}/_ext/546296802/Console.o ../../../../Microchip/WirelessProtocols/Console.c  
	
${OBJECTDIR}/_ext/546296802/SymbolTime.o: ../../../../Microchip/WirelessProtocols/SymbolTime.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/546296802 
	@${RM} ${OBJECTDIR}/_ext/546296802/SymbolTime.o.d 
	@${RM} ${OBJECTDIR}/_ext/546296802/SymbolTime.o.ok ${OBJECTDIR}/_ext/546296802/SymbolTime.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/546296802/SymbolTime.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/546296802/SymbolTime.o.d" -o ${OBJECTDIR}/_ext/546296802/SymbolTime.o ../../../../Microchip/WirelessProtocols/SymbolTime.c  
	
${OBJECTDIR}/_ext/1472/main.o: ../main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.ok ${OBJECTDIR}/_ext/1472/main.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/main.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1472/main.o.d" -o ${OBJECTDIR}/_ext/1472/main.o ../main.c  
	
${OBJECTDIR}/_ext/1472/RF4CEController.o: ../RF4CEController.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/RF4CEController.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/RF4CEController.o.ok ${OBJECTDIR}/_ext/1472/RF4CEController.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/RF4CEController.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1472/RF4CEController.o.d" -o ${OBJECTDIR}/_ext/1472/RF4CEController.o ../RF4CEController.c  
	
${OBJECTDIR}/_ext/1472/GraphicsUserInterface.o: ../GraphicsUserInterface.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/GraphicsUserInterface.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/GraphicsUserInterface.o.ok ${OBJECTDIR}/_ext/1472/GraphicsUserInterface.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/GraphicsUserInterface.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1472/GraphicsUserInterface.o.d" -o ${OBJECTDIR}/_ext/1472/GraphicsUserInterface.o ../GraphicsUserInterface.c  
	
${OBJECTDIR}/_ext/1472/joystick.o: ../joystick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/joystick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/joystick.o.ok ${OBJECTDIR}/_ext/1472/joystick.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/joystick.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1472/joystick.o.d" -o ${OBJECTDIR}/_ext/1472/joystick.o ../joystick.c  
	
${OBJECTDIR}/_ext/1472/RemotePlayDiscInterface.o: ../RemotePlayDiscInterface.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/RemotePlayDiscInterface.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/RemotePlayDiscInterface.o.ok ${OBJECTDIR}/_ext/1472/RemotePlayDiscInterface.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/RemotePlayDiscInterface.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1472/RemotePlayDiscInterface.o.d" -o ${OBJECTDIR}/_ext/1472/RemotePlayDiscInterface.o ../RemotePlayDiscInterface.c  
	
${OBJECTDIR}/_ext/1472/RemoteFavoritesInterface.o: ../RemoteFavoritesInterface.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/RemoteFavoritesInterface.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/RemoteFavoritesInterface.o.ok ${OBJECTDIR}/_ext/1472/RemoteFavoritesInterface.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/RemoteFavoritesInterface.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1472/RemoteFavoritesInterface.o.d" -o ${OBJECTDIR}/_ext/1472/RemoteFavoritesInterface.o ../RemoteFavoritesInterface.c  
	
${OBJECTDIR}/_ext/1472/RemoteInternetInterface.o: ../RemoteInternetInterface.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/RemoteInternetInterface.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/RemoteInternetInterface.o.ok ${OBJECTDIR}/_ext/1472/RemoteInternetInterface.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/RemoteInternetInterface.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1472/RemoteInternetInterface.o.d" -o ${OBJECTDIR}/_ext/1472/RemoteInternetInterface.o ../RemoteInternetInterface.c  
	
${OBJECTDIR}/_ext/1472/rtcc.o: ../rtcc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/rtcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/rtcc.o.ok ${OBJECTDIR}/_ext/1472/rtcc.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/rtcc.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1472/rtcc.o.d" -o ${OBJECTDIR}/_ext/1472/rtcc.o ../rtcc.c  
	
${OBJECTDIR}/_ext/1472/battery.o: ../battery.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/battery.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/battery.o.ok ${OBJECTDIR}/_ext/1472/battery.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/battery.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1472/battery.o.d" -o ${OBJECTDIR}/_ext/1472/battery.o ../battery.c  
	
${OBJECTDIR}/_ext/1472/sleep.o: ../sleep.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/sleep.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/sleep.o.ok ${OBJECTDIR}/_ext/1472/sleep.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/sleep.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1472/sleep.o.d" -o ${OBJECTDIR}/_ext/1472/sleep.o ../sleep.c  
	
${OBJECTDIR}/_ext/1472/RemoteSettingsInterface.o: ../RemoteSettingsInterface.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/RemoteSettingsInterface.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/RemoteSettingsInterface.o.ok ${OBJECTDIR}/_ext/1472/RemoteSettingsInterface.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/RemoteSettingsInterface.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1472/RemoteSettingsInterface.o.d" -o ${OBJECTDIR}/_ext/1472/RemoteSettingsInterface.o ../RemoteSettingsInterface.c  
	
${OBJECTDIR}/_ext/1472/RemoteWatchTVInterface.o: ../RemoteWatchTVInterface.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/RemoteWatchTVInterface.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/RemoteWatchTVInterface.o.ok ${OBJECTDIR}/_ext/1472/RemoteWatchTVInterface.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/RemoteWatchTVInterface.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1472/RemoteWatchTVInterface.o.d" -o ${OBJECTDIR}/_ext/1472/RemoteWatchTVInterface.o ../RemoteWatchTVInterface.c  
	
${OBJECTDIR}/_ext/1472/led.o: ../led.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/led.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/led.o.ok ${OBJECTDIR}/_ext/1472/led.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/led.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1472/led.o.d" -o ${OBJECTDIR}/_ext/1472/led.o ../led.c  
	
${OBJECTDIR}/_ext/1472/InternalResourceC30.o: ../InternalResourceC30.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/InternalResourceC30.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/InternalResourceC30.o.ok ${OBJECTDIR}/_ext/1472/InternalResourceC30.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/InternalResourceC30.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1472/InternalResourceC30.o.d" -o ${OBJECTDIR}/_ext/1472/InternalResourceC30.o ../InternalResourceC30.c  
	
${OBJECTDIR}/_ext/1472/ExternalResource.o: ../ExternalResource.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/ExternalResource.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/ExternalResource.o.ok ${OBJECTDIR}/_ext/1472/ExternalResource.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/ExternalResource.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1472/ExternalResource.o.d" -o ${OBJECTDIR}/_ext/1472/ExternalResource.o ../ExternalResource.c  
	
${OBJECTDIR}/_ext/1472/mTouchKeys.o: ../mTouchKeys.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/mTouchKeys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/mTouchKeys.o.ok ${OBJECTDIR}/_ext/1472/mTouchKeys.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/mTouchKeys.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Microchip/Include/mTouchCap/PIC18 PIC24 Library" -I".." -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Graphics/Common" -I"../../../../Microchip/Include/Graphics" -I"../WirelessTransceivers" -I"../../../../Microchip/Include/WirelessProtocols" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1472/mTouchKeys.o.d" -o ${OBJECTDIR}/_ext/1472/mTouchKeys.o ../mTouchKeys.c  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}        -Wl,--defsym=__MPLAB_BUILD=1,--heap=5000,-L"..",-Map="${DISTDIR}/MPLAB.X.${IMAGE_TYPE}.map",--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_REAL_ICE=1
else
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf -mcpu=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}        -Wl,--defsym=__MPLAB_BUILD=1,--heap=5000,-L"..",-Map="${DISTDIR}/MPLAB.X.${IMAGE_TYPE}.map",--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION)
	${MP_CC_DIR}\\pic30-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -omf=elf
endif


# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf:
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
