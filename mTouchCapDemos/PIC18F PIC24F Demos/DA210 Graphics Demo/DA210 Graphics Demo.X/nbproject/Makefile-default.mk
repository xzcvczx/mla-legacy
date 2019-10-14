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
PATH:=C:/Program Files/Microchip/MPLABX/mplab_ide/mplab_ide/modules/../../bin/:$(PATH)
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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/DA210_Graphics_Demo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/DA210_Graphics_Demo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1847857110/Button.o ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o ${OBJECTDIR}/_ext/1847857110/Primitive.o ${OBJECTDIR}/_ext/1847857110/Slider.o ${OBJECTDIR}/_ext/1847857110/GOL.o ${OBJECTDIR}/_ext/2048740170/TimeDelay.o ${OBJECTDIR}/_ext/2020629477/Beep.o ${OBJECTDIR}/_ext/2020629477/SST25VF016.o ${OBJECTDIR}/_ext/366188474/gfxepmp.o ${OBJECTDIR}/_ext/366188474/SSD1926.o ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o ${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o ${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o ${OBJECTDIR}/_ext/2020629477/drv_spi.o ${OBJECTDIR}/_ext/366188474/drvTFT001.o ${OBJECTDIR}/_ext/2020629477/MCHP25LC256.o ${OBJECTDIR}/_ext/1847857110/StaticText.o ${OBJECTDIR}/_ext/1847857110/TextEntry.o ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o ${OBJECTDIR}/_ext/2020629477/TouchScreen.o ${OBJECTDIR}/_ext/1472/GraphicsCallbacks.o ${OBJECTDIR}/_ext/1472/Pictures.o ${OBJECTDIR}/_ext/1595192242/mTouchAcquistion.o ${OBJECTDIR}/_ext/1595192242/mTouchButton.o ${OBJECTDIR}/_ext/1595192242/mTouchControl.o ${OBJECTDIR}/_ext/1595192242/mTouchMarixButton.o ${OBJECTDIR}/_ext/1595192242/mTouchSensor.o ${OBJECTDIR}/_ext/1472/CapButtons.o ${OBJECTDIR}/_ext/611874558/system.o "${OBJECTDIR}/_ext/1472/DA210 Graphics Demo Main.o"
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1847857110/Button.o.d ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.d ${OBJECTDIR}/_ext/1847857110/Primitive.o.d ${OBJECTDIR}/_ext/1847857110/Slider.o.d ${OBJECTDIR}/_ext/1847857110/GOL.o.d ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.d ${OBJECTDIR}/_ext/2020629477/Beep.o.d ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.d ${OBJECTDIR}/_ext/366188474/gfxepmp.o.d ${OBJECTDIR}/_ext/366188474/SSD1926.o.d ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.d ${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o.d ${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o.d ${OBJECTDIR}/_ext/2020629477/drv_spi.o.d ${OBJECTDIR}/_ext/366188474/drvTFT001.o.d ${OBJECTDIR}/_ext/2020629477/MCHP25LC256.o.d ${OBJECTDIR}/_ext/1847857110/StaticText.o.d ${OBJECTDIR}/_ext/1847857110/TextEntry.o.d ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.d ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.d ${OBJECTDIR}/_ext/2020629477/TouchScreen.o.d ${OBJECTDIR}/_ext/1472/GraphicsCallbacks.o.d ${OBJECTDIR}/_ext/1472/Pictures.o.d ${OBJECTDIR}/_ext/1595192242/mTouchAcquistion.o.d ${OBJECTDIR}/_ext/1595192242/mTouchButton.o.d ${OBJECTDIR}/_ext/1595192242/mTouchControl.o.d ${OBJECTDIR}/_ext/1595192242/mTouchMarixButton.o.d ${OBJECTDIR}/_ext/1595192242/mTouchSensor.o.d ${OBJECTDIR}/_ext/1472/CapButtons.o.d ${OBJECTDIR}/_ext/611874558/system.o.d "${OBJECTDIR}/_ext/1472/DA210 Graphics Demo Main.o.d"

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1847857110/Button.o ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o ${OBJECTDIR}/_ext/1847857110/Primitive.o ${OBJECTDIR}/_ext/1847857110/Slider.o ${OBJECTDIR}/_ext/1847857110/GOL.o ${OBJECTDIR}/_ext/2048740170/TimeDelay.o ${OBJECTDIR}/_ext/2020629477/Beep.o ${OBJECTDIR}/_ext/2020629477/SST25VF016.o ${OBJECTDIR}/_ext/366188474/gfxepmp.o ${OBJECTDIR}/_ext/366188474/SSD1926.o ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o ${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o ${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o ${OBJECTDIR}/_ext/2020629477/drv_spi.o ${OBJECTDIR}/_ext/366188474/drvTFT001.o ${OBJECTDIR}/_ext/2020629477/MCHP25LC256.o ${OBJECTDIR}/_ext/1847857110/StaticText.o ${OBJECTDIR}/_ext/1847857110/TextEntry.o ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o ${OBJECTDIR}/_ext/2020629477/TouchScreen.o ${OBJECTDIR}/_ext/1472/GraphicsCallbacks.o ${OBJECTDIR}/_ext/1472/Pictures.o ${OBJECTDIR}/_ext/1595192242/mTouchAcquistion.o ${OBJECTDIR}/_ext/1595192242/mTouchButton.o ${OBJECTDIR}/_ext/1595192242/mTouchControl.o ${OBJECTDIR}/_ext/1595192242/mTouchMarixButton.o ${OBJECTDIR}/_ext/1595192242/mTouchSensor.o ${OBJECTDIR}/_ext/1472/CapButtons.o ${OBJECTDIR}/_ext/611874558/system.o ${OBJECTDIR}/_ext/1472/DA210\ Graphics\ Demo\ Main.o


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
MP_CC="C:\Program Files\Microchip\mplabc30\v3.31\bin\pic30-gcc.exe"
# MP_BC is not defined
MP_AS="C:\Program Files\Microchip\mplabc30\v3.31\bin\pic30-as.exe"
MP_LD="C:\Program Files\Microchip\mplabc30\v3.31\bin\pic30-ld.exe"
MP_AR="C:\Program Files\Microchip\mplabc30\v3.31\bin\pic30-ar.exe"
DEP_GEN=${MP_JAVA_PATH}java -jar "C:/Program Files/Microchip/MPLABX/mplab_ide/mplab_ide/modules/../../bin/extractobjectdependencies.jar" 
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps
MP_CC_DIR="C:\Program Files\Microchip\mplabc30\v3.31\bin"
# MP_BC_DIR is not defined
MP_AS_DIR="C:\Program Files\Microchip\mplabc30\v3.31\bin"
MP_LD_DIR="C:\Program Files\Microchip\mplabc30\v3.31\bin"
MP_AR_DIR="C:\Program Files\Microchip\mplabc30\v3.31\bin"
# MP_BC_DIR is not defined

.build-conf:  ${BUILD_SUBPROJECTS}
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/DA210_Graphics_Demo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/_ext/1847857110/Button.o: ../../../../Microchip/Graphics/Button.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	@${RM} ${OBJECTDIR}/_ext/1847857110/Button.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847857110/Button.o.ok ${OBJECTDIR}/_ext/1847857110/Button.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847857110/Button.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24FJ256DA210_Development_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1847857110/Button.o.d" -o ${OBJECTDIR}/_ext/1847857110/Button.o ../../../../Microchip/Graphics/Button.c  
	
${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o: ../../../../Microchip/Graphics/GOLFontDefault.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	@${RM} ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.ok ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24FJ256DA210_Development_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.d" -o ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o ../../../../Microchip/Graphics/GOLFontDefault.c  
	
${OBJECTDIR}/_ext/1847857110/Primitive.o: ../../../../Microchip/Graphics/Primitive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	@${RM} ${OBJECTDIR}/_ext/1847857110/Primitive.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847857110/Primitive.o.ok ${OBJECTDIR}/_ext/1847857110/Primitive.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847857110/Primitive.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24FJ256DA210_Development_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1847857110/Primitive.o.d" -o ${OBJECTDIR}/_ext/1847857110/Primitive.o ../../../../Microchip/Graphics/Primitive.c  
	
${OBJECTDIR}/_ext/1847857110/Slider.o: ../../../../Microchip/Graphics/Slider.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	@${RM} ${OBJECTDIR}/_ext/1847857110/Slider.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847857110/Slider.o.ok ${OBJECTDIR}/_ext/1847857110/Slider.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847857110/Slider.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24FJ256DA210_Development_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1847857110/Slider.o.d" -o ${OBJECTDIR}/_ext/1847857110/Slider.o ../../../../Microchip/Graphics/Slider.c  
	
${OBJECTDIR}/_ext/1847857110/GOL.o: ../../../../Microchip/Graphics/GOL.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	@${RM} ${OBJECTDIR}/_ext/1847857110/GOL.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847857110/GOL.o.ok ${OBJECTDIR}/_ext/1847857110/GOL.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847857110/GOL.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24FJ256DA210_Development_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1847857110/GOL.o.d" -o ${OBJECTDIR}/_ext/1847857110/GOL.o ../../../../Microchip/Graphics/GOL.c  
	
${OBJECTDIR}/_ext/2048740170/TimeDelay.o: ../../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2048740170 
	@${RM} ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.ok ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2048740170/TimeDelay.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24FJ256DA210_Development_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -I"../../../../Microchip/Include/Graphics" -MMD -MF "${OBJECTDIR}/_ext/2048740170/TimeDelay.o.d" -o ${OBJECTDIR}/_ext/2048740170/TimeDelay.o ../../../../Microchip/Common/TimeDelay.c  
	
${OBJECTDIR}/_ext/2020629477/Beep.o: ../../../../Board\ Support\ Package/Beep.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2020629477 
	@${RM} ${OBJECTDIR}/_ext/2020629477/Beep.o.d 
	@${RM} ${OBJECTDIR}/_ext/2020629477/Beep.o.ok ${OBJECTDIR}/_ext/2020629477/Beep.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2020629477/Beep.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24FJ256DA210_Development_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/2020629477/Beep.o.d" -o ${OBJECTDIR}/_ext/2020629477/Beep.o "../../../../Board Support Package/Beep.c"  
	
${OBJECTDIR}/_ext/2020629477/SST25VF016.o: ../../../../Board\ Support\ Package/SST25VF016.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2020629477 
	@${RM} ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.d 
	@${RM} ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.ok ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2020629477/SST25VF016.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24FJ256DA210_Development_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/2020629477/SST25VF016.o.d" -o ${OBJECTDIR}/_ext/2020629477/SST25VF016.o "../../../../Board Support Package/SST25VF016.c"  
	
${OBJECTDIR}/_ext/366188474/gfxepmp.o: ../../../../Microchip/Graphics/Drivers/gfxepmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/366188474 
	@${RM} ${OBJECTDIR}/_ext/366188474/gfxepmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/366188474/gfxepmp.o.ok ${OBJECTDIR}/_ext/366188474/gfxepmp.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/366188474/gfxepmp.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24FJ256DA210_Development_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/366188474/gfxepmp.o.d" -o ${OBJECTDIR}/_ext/366188474/gfxepmp.o ../../../../Microchip/Graphics/Drivers/gfxepmp.c  
	
${OBJECTDIR}/_ext/366188474/SSD1926.o: ../../../../Microchip/Graphics/Drivers/SSD1926.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/366188474 
	@${RM} ${OBJECTDIR}/_ext/366188474/SSD1926.o.d 
	@${RM} ${OBJECTDIR}/_ext/366188474/SSD1926.o.ok ${OBJECTDIR}/_ext/366188474/SSD1926.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/366188474/SSD1926.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24FJ256DA210_Development_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/366188474/SSD1926.o.d" -o ${OBJECTDIR}/_ext/366188474/SSD1926.o ../../../../Microchip/Graphics/Drivers/SSD1926.c  
	
${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o: ../../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/366188474 
	@${RM} ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.d 
	@${RM} ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.ok ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24FJ256DA210_Development_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.d" -o ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o ../../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  
	
${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o: ../../../../Microchip/Graphics/Drivers/mchpGfxDrvBuffer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/366188474 
	@${RM} ${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o.ok ${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -mlarge-arrays -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24FJ256DA210_Development_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o.d" -o ${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o ../../../../Microchip/Graphics/Drivers/mchpGfxDrvBuffer.c  
	
${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o: ../../../../Board\ Support\ Package/TouchScreenResistive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2020629477 
	@${RM} ${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o.d 
	@${RM} ${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o.ok ${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24FJ256DA210_Development_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o.d" -o ${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o "../../../../Board Support Package/TouchScreenResistive.c"  
	
${OBJECTDIR}/_ext/2020629477/drv_spi.o: ../../../../Board\ Support\ Package/drv_spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2020629477 
	@${RM} ${OBJECTDIR}/_ext/2020629477/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/2020629477/drv_spi.o.ok ${OBJECTDIR}/_ext/2020629477/drv_spi.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2020629477/drv_spi.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24FJ256DA210_Development_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/2020629477/drv_spi.o.d" -o ${OBJECTDIR}/_ext/2020629477/drv_spi.o "../../../../Board Support Package/drv_spi.c"  
	
${OBJECTDIR}/_ext/366188474/drvTFT001.o: ../../../../Microchip/Graphics/Drivers/drvTFT001.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/366188474 
	@${RM} ${OBJECTDIR}/_ext/366188474/drvTFT001.o.d 
	@${RM} ${OBJECTDIR}/_ext/366188474/drvTFT001.o.ok ${OBJECTDIR}/_ext/366188474/drvTFT001.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/366188474/drvTFT001.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24FJ256DA210_Development_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/366188474/drvTFT001.o.d" -o ${OBJECTDIR}/_ext/366188474/drvTFT001.o ../../../../Microchip/Graphics/Drivers/drvTFT001.c  
	
${OBJECTDIR}/_ext/2020629477/MCHP25LC256.o: ../../../../Board\ Support\ Package/MCHP25LC256.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2020629477 
	@${RM} ${OBJECTDIR}/_ext/2020629477/MCHP25LC256.o.d 
	@${RM} ${OBJECTDIR}/_ext/2020629477/MCHP25LC256.o.ok ${OBJECTDIR}/_ext/2020629477/MCHP25LC256.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2020629477/MCHP25LC256.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24FJ256DA210_Development_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/2020629477/MCHP25LC256.o.d" -o ${OBJECTDIR}/_ext/2020629477/MCHP25LC256.o "../../../../Board Support Package/MCHP25LC256.c"  
	
${OBJECTDIR}/_ext/1847857110/StaticText.o: ../../../../Microchip/Graphics/StaticText.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	@${RM} ${OBJECTDIR}/_ext/1847857110/StaticText.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847857110/StaticText.o.ok ${OBJECTDIR}/_ext/1847857110/StaticText.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847857110/StaticText.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24FJ256DA210_Development_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1847857110/StaticText.o.d" -o ${OBJECTDIR}/_ext/1847857110/StaticText.o ../../../../Microchip/Graphics/StaticText.c  
	
${OBJECTDIR}/_ext/1847857110/TextEntry.o: ../../../../Microchip/Graphics/TextEntry.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	@${RM} ${OBJECTDIR}/_ext/1847857110/TextEntry.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847857110/TextEntry.o.ok ${OBJECTDIR}/_ext/1847857110/TextEntry.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847857110/TextEntry.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24FJ256DA210_Development_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1847857110/TextEntry.o.d" -o ${OBJECTDIR}/_ext/1847857110/TextEntry.o ../../../../Microchip/Graphics/TextEntry.c  
	
${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o: ../../../../Microchip/Graphics/GOLSchemeDefault.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	@${RM} ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.ok ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24FJ256DA210_Development_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.d" -o ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o ../../../../Microchip/Graphics/GOLSchemeDefault.c  
	
${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o: ../../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/366188474 
	@${RM} ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.d 
	@${RM} ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.ok ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24FJ256DA210_Development_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.d" -o ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o ../../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  
	
${OBJECTDIR}/_ext/2020629477/TouchScreen.o: ../../../../Board\ Support\ Package/TouchScreen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2020629477 
	@${RM} ${OBJECTDIR}/_ext/2020629477/TouchScreen.o.d 
	@${RM} ${OBJECTDIR}/_ext/2020629477/TouchScreen.o.ok ${OBJECTDIR}/_ext/2020629477/TouchScreen.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2020629477/TouchScreen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24FJ256DA210_Development_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/2020629477/TouchScreen.o.d" -o ${OBJECTDIR}/_ext/2020629477/TouchScreen.o "../../../../Board Support Package/TouchScreen.c"  
	
${OBJECTDIR}/_ext/1472/GraphicsCallbacks.o: ../GraphicsCallbacks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/GraphicsCallbacks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/GraphicsCallbacks.o.ok ${OBJECTDIR}/_ext/1472/GraphicsCallbacks.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/GraphicsCallbacks.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24FJ256DA210_Development_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1472/GraphicsCallbacks.o.d" -o ${OBJECTDIR}/_ext/1472/GraphicsCallbacks.o ../GraphicsCallbacks.c  
	
${OBJECTDIR}/_ext/1472/Pictures.o: ../Pictures.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/Pictures.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Pictures.o.ok ${OBJECTDIR}/_ext/1472/Pictures.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/Pictures.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24FJ256DA210_Development_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1472/Pictures.o.d" -o ${OBJECTDIR}/_ext/1472/Pictures.o ../Pictures.c  
	
${OBJECTDIR}/_ext/1595192242/mTouchAcquistion.o: ../../../../Microchip/mTouchCap/PIC18F\ PIC24F\ Library/mTouchAcquistion.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1595192242 
	@${RM} ${OBJECTDIR}/_ext/1595192242/mTouchAcquistion.o.d 
	@${RM} ${OBJECTDIR}/_ext/1595192242/mTouchAcquistion.o.ok ${OBJECTDIR}/_ext/1595192242/mTouchAcquistion.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1595192242/mTouchAcquistion.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24FJ256DA210_Development_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1595192242/mTouchAcquistion.o.d" -o ${OBJECTDIR}/_ext/1595192242/mTouchAcquistion.o "../../../../Microchip/mTouchCap/PIC18F PIC24F Library/mTouchAcquistion.c"  
	
${OBJECTDIR}/_ext/1595192242/mTouchButton.o: ../../../../Microchip/mTouchCap/PIC18F\ PIC24F\ Library/mTouchButton.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1595192242 
	@${RM} ${OBJECTDIR}/_ext/1595192242/mTouchButton.o.d 
	@${RM} ${OBJECTDIR}/_ext/1595192242/mTouchButton.o.ok ${OBJECTDIR}/_ext/1595192242/mTouchButton.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1595192242/mTouchButton.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24FJ256DA210_Development_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1595192242/mTouchButton.o.d" -o ${OBJECTDIR}/_ext/1595192242/mTouchButton.o "../../../../Microchip/mTouchCap/PIC18F PIC24F Library/mTouchButton.c"  
	
${OBJECTDIR}/_ext/1595192242/mTouchControl.o: ../../../../Microchip/mTouchCap/PIC18F\ PIC24F\ Library/mTouchControl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1595192242 
	@${RM} ${OBJECTDIR}/_ext/1595192242/mTouchControl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1595192242/mTouchControl.o.ok ${OBJECTDIR}/_ext/1595192242/mTouchControl.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1595192242/mTouchControl.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24FJ256DA210_Development_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1595192242/mTouchControl.o.d" -o ${OBJECTDIR}/_ext/1595192242/mTouchControl.o "../../../../Microchip/mTouchCap/PIC18F PIC24F Library/mTouchControl.c"  
	
${OBJECTDIR}/_ext/1595192242/mTouchMarixButton.o: ../../../../Microchip/mTouchCap/PIC18F\ PIC24F\ Library/mTouchMarixButton.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1595192242 
	@${RM} ${OBJECTDIR}/_ext/1595192242/mTouchMarixButton.o.d 
	@${RM} ${OBJECTDIR}/_ext/1595192242/mTouchMarixButton.o.ok ${OBJECTDIR}/_ext/1595192242/mTouchMarixButton.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1595192242/mTouchMarixButton.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24FJ256DA210_Development_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1595192242/mTouchMarixButton.o.d" -o ${OBJECTDIR}/_ext/1595192242/mTouchMarixButton.o "../../../../Microchip/mTouchCap/PIC18F PIC24F Library/mTouchMarixButton.c"  
	
${OBJECTDIR}/_ext/1595192242/mTouchSensor.o: ../../../../Microchip/mTouchCap/PIC18F\ PIC24F\ Library/mTouchSensor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1595192242 
	@${RM} ${OBJECTDIR}/_ext/1595192242/mTouchSensor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1595192242/mTouchSensor.o.ok ${OBJECTDIR}/_ext/1595192242/mTouchSensor.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1595192242/mTouchSensor.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24FJ256DA210_Development_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1595192242/mTouchSensor.o.d" -o ${OBJECTDIR}/_ext/1595192242/mTouchSensor.o "../../../../Microchip/mTouchCap/PIC18F PIC24F Library/mTouchSensor.c"  
	
${OBJECTDIR}/_ext/1472/CapButtons.o: ../CapButtons.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/CapButtons.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/CapButtons.o.ok ${OBJECTDIR}/_ext/1472/CapButtons.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/CapButtons.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24FJ256DA210_Development_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1472/CapButtons.o.d" -o ${OBJECTDIR}/_ext/1472/CapButtons.o ../CapButtons.c  
	
${OBJECTDIR}/_ext/611874558/system.o: ../../Configurations/PIC24FJ256DA210_Development_Board/system.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/611874558 
	@${RM} ${OBJECTDIR}/_ext/611874558/system.o.d 
	@${RM} ${OBJECTDIR}/_ext/611874558/system.o.ok ${OBJECTDIR}/_ext/611874558/system.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/611874558/system.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24FJ256DA210_Development_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/611874558/system.o.d" -o ${OBJECTDIR}/_ext/611874558/system.o ../../Configurations/PIC24FJ256DA210_Development_Board/system.c  
	
${OBJECTDIR}/_ext/1472/DA210\ Graphics\ Demo\ Main.o: ../DA210\ Graphics\ Demo\ Main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/DA210\ Graphics\ Demo\ Main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/DA210\ Graphics\ Demo\ Main.o.ok ${OBJECTDIR}/_ext/1472/DA210\ Graphics\ Demo\ Main.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/DA210 Graphics Demo Main.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24FJ256DA210_Development_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1472/DA210 Graphics Demo Main.o.d" -o "${OBJECTDIR}/_ext/1472/DA210 Graphics Demo Main.o" "../DA210 Graphics Demo Main.c"  
	
else
${OBJECTDIR}/_ext/1847857110/Button.o: ../../../../Microchip/Graphics/Button.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	@${RM} ${OBJECTDIR}/_ext/1847857110/Button.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847857110/Button.o.ok ${OBJECTDIR}/_ext/1847857110/Button.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847857110/Button.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24FJ256DA210_Development_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1847857110/Button.o.d" -o ${OBJECTDIR}/_ext/1847857110/Button.o ../../../../Microchip/Graphics/Button.c  
	
${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o: ../../../../Microchip/Graphics/GOLFontDefault.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	@${RM} ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.ok ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24FJ256DA210_Development_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.d" -o ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o ../../../../Microchip/Graphics/GOLFontDefault.c  
	
${OBJECTDIR}/_ext/1847857110/Primitive.o: ../../../../Microchip/Graphics/Primitive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	@${RM} ${OBJECTDIR}/_ext/1847857110/Primitive.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847857110/Primitive.o.ok ${OBJECTDIR}/_ext/1847857110/Primitive.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847857110/Primitive.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24FJ256DA210_Development_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1847857110/Primitive.o.d" -o ${OBJECTDIR}/_ext/1847857110/Primitive.o ../../../../Microchip/Graphics/Primitive.c  
	
${OBJECTDIR}/_ext/1847857110/Slider.o: ../../../../Microchip/Graphics/Slider.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	@${RM} ${OBJECTDIR}/_ext/1847857110/Slider.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847857110/Slider.o.ok ${OBJECTDIR}/_ext/1847857110/Slider.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847857110/Slider.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24FJ256DA210_Development_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1847857110/Slider.o.d" -o ${OBJECTDIR}/_ext/1847857110/Slider.o ../../../../Microchip/Graphics/Slider.c  
	
${OBJECTDIR}/_ext/1847857110/GOL.o: ../../../../Microchip/Graphics/GOL.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	@${RM} ${OBJECTDIR}/_ext/1847857110/GOL.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847857110/GOL.o.ok ${OBJECTDIR}/_ext/1847857110/GOL.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847857110/GOL.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24FJ256DA210_Development_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1847857110/GOL.o.d" -o ${OBJECTDIR}/_ext/1847857110/GOL.o ../../../../Microchip/Graphics/GOL.c  
	
${OBJECTDIR}/_ext/2048740170/TimeDelay.o: ../../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2048740170 
	@${RM} ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.ok ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2048740170/TimeDelay.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24FJ256DA210_Development_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -I"../../../../Microchip/Include/Graphics" -MMD -MF "${OBJECTDIR}/_ext/2048740170/TimeDelay.o.d" -o ${OBJECTDIR}/_ext/2048740170/TimeDelay.o ../../../../Microchip/Common/TimeDelay.c  
	
${OBJECTDIR}/_ext/2020629477/Beep.o: ../../../../Board\ Support\ Package/Beep.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2020629477 
	@${RM} ${OBJECTDIR}/_ext/2020629477/Beep.o.d 
	@${RM} ${OBJECTDIR}/_ext/2020629477/Beep.o.ok ${OBJECTDIR}/_ext/2020629477/Beep.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2020629477/Beep.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24FJ256DA210_Development_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/2020629477/Beep.o.d" -o ${OBJECTDIR}/_ext/2020629477/Beep.o "../../../../Board Support Package/Beep.c"  
	
${OBJECTDIR}/_ext/2020629477/SST25VF016.o: ../../../../Board\ Support\ Package/SST25VF016.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2020629477 
	@${RM} ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.d 
	@${RM} ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.ok ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2020629477/SST25VF016.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24FJ256DA210_Development_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/2020629477/SST25VF016.o.d" -o ${OBJECTDIR}/_ext/2020629477/SST25VF016.o "../../../../Board Support Package/SST25VF016.c"  
	
${OBJECTDIR}/_ext/366188474/gfxepmp.o: ../../../../Microchip/Graphics/Drivers/gfxepmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/366188474 
	@${RM} ${OBJECTDIR}/_ext/366188474/gfxepmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/366188474/gfxepmp.o.ok ${OBJECTDIR}/_ext/366188474/gfxepmp.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/366188474/gfxepmp.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24FJ256DA210_Development_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/366188474/gfxepmp.o.d" -o ${OBJECTDIR}/_ext/366188474/gfxepmp.o ../../../../Microchip/Graphics/Drivers/gfxepmp.c  
	
${OBJECTDIR}/_ext/366188474/SSD1926.o: ../../../../Microchip/Graphics/Drivers/SSD1926.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/366188474 
	@${RM} ${OBJECTDIR}/_ext/366188474/SSD1926.o.d 
	@${RM} ${OBJECTDIR}/_ext/366188474/SSD1926.o.ok ${OBJECTDIR}/_ext/366188474/SSD1926.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/366188474/SSD1926.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24FJ256DA210_Development_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/366188474/SSD1926.o.d" -o ${OBJECTDIR}/_ext/366188474/SSD1926.o ../../../../Microchip/Graphics/Drivers/SSD1926.c  
	
${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o: ../../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/366188474 
	@${RM} ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.d 
	@${RM} ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.ok ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24FJ256DA210_Development_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.d" -o ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o ../../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  
	
${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o: ../../../../Microchip/Graphics/Drivers/mchpGfxDrvBuffer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/366188474 
	@${RM} ${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o.ok ${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -mlarge-arrays -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24FJ256DA210_Development_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o.d" -o ${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o ../../../../Microchip/Graphics/Drivers/mchpGfxDrvBuffer.c  
	
${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o: ../../../../Board\ Support\ Package/TouchScreenResistive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2020629477 
	@${RM} ${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o.d 
	@${RM} ${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o.ok ${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24FJ256DA210_Development_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o.d" -o ${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o "../../../../Board Support Package/TouchScreenResistive.c"  
	
${OBJECTDIR}/_ext/2020629477/drv_spi.o: ../../../../Board\ Support\ Package/drv_spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2020629477 
	@${RM} ${OBJECTDIR}/_ext/2020629477/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/2020629477/drv_spi.o.ok ${OBJECTDIR}/_ext/2020629477/drv_spi.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2020629477/drv_spi.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24FJ256DA210_Development_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/2020629477/drv_spi.o.d" -o ${OBJECTDIR}/_ext/2020629477/drv_spi.o "../../../../Board Support Package/drv_spi.c"  
	
${OBJECTDIR}/_ext/366188474/drvTFT001.o: ../../../../Microchip/Graphics/Drivers/drvTFT001.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/366188474 
	@${RM} ${OBJECTDIR}/_ext/366188474/drvTFT001.o.d 
	@${RM} ${OBJECTDIR}/_ext/366188474/drvTFT001.o.ok ${OBJECTDIR}/_ext/366188474/drvTFT001.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/366188474/drvTFT001.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24FJ256DA210_Development_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/366188474/drvTFT001.o.d" -o ${OBJECTDIR}/_ext/366188474/drvTFT001.o ../../../../Microchip/Graphics/Drivers/drvTFT001.c  
	
${OBJECTDIR}/_ext/2020629477/MCHP25LC256.o: ../../../../Board\ Support\ Package/MCHP25LC256.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2020629477 
	@${RM} ${OBJECTDIR}/_ext/2020629477/MCHP25LC256.o.d 
	@${RM} ${OBJECTDIR}/_ext/2020629477/MCHP25LC256.o.ok ${OBJECTDIR}/_ext/2020629477/MCHP25LC256.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2020629477/MCHP25LC256.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24FJ256DA210_Development_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/2020629477/MCHP25LC256.o.d" -o ${OBJECTDIR}/_ext/2020629477/MCHP25LC256.o "../../../../Board Support Package/MCHP25LC256.c"  
	
${OBJECTDIR}/_ext/1847857110/StaticText.o: ../../../../Microchip/Graphics/StaticText.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	@${RM} ${OBJECTDIR}/_ext/1847857110/StaticText.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847857110/StaticText.o.ok ${OBJECTDIR}/_ext/1847857110/StaticText.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847857110/StaticText.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24FJ256DA210_Development_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1847857110/StaticText.o.d" -o ${OBJECTDIR}/_ext/1847857110/StaticText.o ../../../../Microchip/Graphics/StaticText.c  
	
${OBJECTDIR}/_ext/1847857110/TextEntry.o: ../../../../Microchip/Graphics/TextEntry.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	@${RM} ${OBJECTDIR}/_ext/1847857110/TextEntry.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847857110/TextEntry.o.ok ${OBJECTDIR}/_ext/1847857110/TextEntry.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847857110/TextEntry.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24FJ256DA210_Development_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1847857110/TextEntry.o.d" -o ${OBJECTDIR}/_ext/1847857110/TextEntry.o ../../../../Microchip/Graphics/TextEntry.c  
	
${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o: ../../../../Microchip/Graphics/GOLSchemeDefault.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	@${RM} ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.ok ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24FJ256DA210_Development_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.d" -o ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o ../../../../Microchip/Graphics/GOLSchemeDefault.c  
	
${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o: ../../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/366188474 
	@${RM} ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.d 
	@${RM} ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.ok ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24FJ256DA210_Development_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.d" -o ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o ../../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  
	
${OBJECTDIR}/_ext/2020629477/TouchScreen.o: ../../../../Board\ Support\ Package/TouchScreen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2020629477 
	@${RM} ${OBJECTDIR}/_ext/2020629477/TouchScreen.o.d 
	@${RM} ${OBJECTDIR}/_ext/2020629477/TouchScreen.o.ok ${OBJECTDIR}/_ext/2020629477/TouchScreen.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2020629477/TouchScreen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24FJ256DA210_Development_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/2020629477/TouchScreen.o.d" -o ${OBJECTDIR}/_ext/2020629477/TouchScreen.o "../../../../Board Support Package/TouchScreen.c"  
	
${OBJECTDIR}/_ext/1472/GraphicsCallbacks.o: ../GraphicsCallbacks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/GraphicsCallbacks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/GraphicsCallbacks.o.ok ${OBJECTDIR}/_ext/1472/GraphicsCallbacks.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/GraphicsCallbacks.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24FJ256DA210_Development_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1472/GraphicsCallbacks.o.d" -o ${OBJECTDIR}/_ext/1472/GraphicsCallbacks.o ../GraphicsCallbacks.c  
	
${OBJECTDIR}/_ext/1472/Pictures.o: ../Pictures.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/Pictures.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Pictures.o.ok ${OBJECTDIR}/_ext/1472/Pictures.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/Pictures.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24FJ256DA210_Development_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1472/Pictures.o.d" -o ${OBJECTDIR}/_ext/1472/Pictures.o ../Pictures.c  
	
${OBJECTDIR}/_ext/1595192242/mTouchAcquistion.o: ../../../../Microchip/mTouchCap/PIC18F\ PIC24F\ Library/mTouchAcquistion.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1595192242 
	@${RM} ${OBJECTDIR}/_ext/1595192242/mTouchAcquistion.o.d 
	@${RM} ${OBJECTDIR}/_ext/1595192242/mTouchAcquistion.o.ok ${OBJECTDIR}/_ext/1595192242/mTouchAcquistion.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1595192242/mTouchAcquistion.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24FJ256DA210_Development_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1595192242/mTouchAcquistion.o.d" -o ${OBJECTDIR}/_ext/1595192242/mTouchAcquistion.o "../../../../Microchip/mTouchCap/PIC18F PIC24F Library/mTouchAcquistion.c"  
	
${OBJECTDIR}/_ext/1595192242/mTouchButton.o: ../../../../Microchip/mTouchCap/PIC18F\ PIC24F\ Library/mTouchButton.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1595192242 
	@${RM} ${OBJECTDIR}/_ext/1595192242/mTouchButton.o.d 
	@${RM} ${OBJECTDIR}/_ext/1595192242/mTouchButton.o.ok ${OBJECTDIR}/_ext/1595192242/mTouchButton.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1595192242/mTouchButton.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24FJ256DA210_Development_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1595192242/mTouchButton.o.d" -o ${OBJECTDIR}/_ext/1595192242/mTouchButton.o "../../../../Microchip/mTouchCap/PIC18F PIC24F Library/mTouchButton.c"  
	
${OBJECTDIR}/_ext/1595192242/mTouchControl.o: ../../../../Microchip/mTouchCap/PIC18F\ PIC24F\ Library/mTouchControl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1595192242 
	@${RM} ${OBJECTDIR}/_ext/1595192242/mTouchControl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1595192242/mTouchControl.o.ok ${OBJECTDIR}/_ext/1595192242/mTouchControl.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1595192242/mTouchControl.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24FJ256DA210_Development_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1595192242/mTouchControl.o.d" -o ${OBJECTDIR}/_ext/1595192242/mTouchControl.o "../../../../Microchip/mTouchCap/PIC18F PIC24F Library/mTouchControl.c"  
	
${OBJECTDIR}/_ext/1595192242/mTouchMarixButton.o: ../../../../Microchip/mTouchCap/PIC18F\ PIC24F\ Library/mTouchMarixButton.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1595192242 
	@${RM} ${OBJECTDIR}/_ext/1595192242/mTouchMarixButton.o.d 
	@${RM} ${OBJECTDIR}/_ext/1595192242/mTouchMarixButton.o.ok ${OBJECTDIR}/_ext/1595192242/mTouchMarixButton.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1595192242/mTouchMarixButton.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24FJ256DA210_Development_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1595192242/mTouchMarixButton.o.d" -o ${OBJECTDIR}/_ext/1595192242/mTouchMarixButton.o "../../../../Microchip/mTouchCap/PIC18F PIC24F Library/mTouchMarixButton.c"  
	
${OBJECTDIR}/_ext/1595192242/mTouchSensor.o: ../../../../Microchip/mTouchCap/PIC18F\ PIC24F\ Library/mTouchSensor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1595192242 
	@${RM} ${OBJECTDIR}/_ext/1595192242/mTouchSensor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1595192242/mTouchSensor.o.ok ${OBJECTDIR}/_ext/1595192242/mTouchSensor.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1595192242/mTouchSensor.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24FJ256DA210_Development_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1595192242/mTouchSensor.o.d" -o ${OBJECTDIR}/_ext/1595192242/mTouchSensor.o "../../../../Microchip/mTouchCap/PIC18F PIC24F Library/mTouchSensor.c"  
	
${OBJECTDIR}/_ext/1472/CapButtons.o: ../CapButtons.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/CapButtons.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/CapButtons.o.ok ${OBJECTDIR}/_ext/1472/CapButtons.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/CapButtons.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24FJ256DA210_Development_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1472/CapButtons.o.d" -o ${OBJECTDIR}/_ext/1472/CapButtons.o ../CapButtons.c  
	
${OBJECTDIR}/_ext/611874558/system.o: ../../Configurations/PIC24FJ256DA210_Development_Board/system.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/611874558 
	@${RM} ${OBJECTDIR}/_ext/611874558/system.o.d 
	@${RM} ${OBJECTDIR}/_ext/611874558/system.o.ok ${OBJECTDIR}/_ext/611874558/system.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/611874558/system.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24FJ256DA210_Development_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/611874558/system.o.d" -o ${OBJECTDIR}/_ext/611874558/system.o ../../Configurations/PIC24FJ256DA210_Development_Board/system.c  
	
${OBJECTDIR}/_ext/1472/DA210\ Graphics\ Demo\ Main.o: ../DA210\ Graphics\ Demo\ Main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/DA210\ Graphics\ Demo\ Main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/DA210\ Graphics\ Demo\ Main.o.ok ${OBJECTDIR}/_ext/1472/DA210\ Graphics\ Demo\ Main.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/DA210 Graphics Demo Main.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24FJ256DA210_Development_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -Os -MMD -MF "${OBJECTDIR}/_ext/1472/DA210 Graphics Demo Main.o.d" -o "${OBJECTDIR}/_ext/1472/DA210 Graphics Demo Main.o" "../DA210 Graphics Demo Main.c"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/DA210_Graphics_Demo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -o dist/${CND_CONF}/${IMAGE_TYPE}/DA210_Graphics_Demo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}        -Wl,--defsym=__MPLAB_BUILD=1,--heap=3000,-L".."$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1
else
dist/${CND_CONF}/${IMAGE_TYPE}/DA210_Graphics_Demo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf -mcpu=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/DA210_Graphics_Demo.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}        -Wl,--defsym=__MPLAB_BUILD=1,--heap=3000,-L".."$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION)
	${MP_CC_DIR}\\pic30-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/DA210_Graphics_Demo.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -omf=elf
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
