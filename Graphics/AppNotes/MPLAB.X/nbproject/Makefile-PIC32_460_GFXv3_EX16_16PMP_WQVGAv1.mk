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
MKDIR=mkdir -p
RM=rm -f 
CP=cp 

# Macros
CND_CONF=PIC32_460_GFXv3_EX16_16PMP_WQVGAv1
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf
else
IMAGE_TYPE=production
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1472/AN1136Demo.o ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C32.o ${OBJECTDIR}/_ext/1472/AN1182Demo.o ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C32.o ${OBJECTDIR}/_ext/1472/AN1227Demo.o ${OBJECTDIR}/_ext/1472/AN1246Demo.o ${OBJECTDIR}/_ext/1472/AppNotesDemo.o ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C32.o ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o ${OBJECTDIR}/_ext/1687970324/Beep.o ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o ${OBJECTDIR}/_ext/1687970324/SST25VF016.o ${OBJECTDIR}/_ext/1687970324/TouchScreen.o ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o ${OBJECTDIR}/_ext/1687970324/cpld.o ${OBJECTDIR}/_ext/1687970324/drv_spi.o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ${OBJECTDIR}/_ext/1919882987/SSD1926.o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ${OBJECTDIR}/_ext/1919882987/drvTFT001.o ${OBJECTDIR}/_ext/1919882987/gfxepmp.o ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o ${OBJECTDIR}/_ext/803622919/Button.o ${OBJECTDIR}/_ext/803622919/GOL.o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o ${OBJECTDIR}/_ext/803622919/Primitive.o ${OBJECTDIR}/_ext/803622919/Slider.o ${OBJECTDIR}/_ext/803622919/StaticText.o ${OBJECTDIR}/_ext/803622919/TextEntry.o


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

# Path to java used to run MPLAB X when this makefile was created
MP_JAVA_PATH=C:\\Program\ Files\ \(x86\)\\Java\\jre6/bin/
OS_CURRENT="$(shell uname -s)"
############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
MP_CC=C:\\Program\ Files\ \(x86\)\\Microchip\\mplabc32\\v1.12\\bin\\pic32-gcc.exe
# MP_BC is not defined
MP_AS=C:\\Program\ Files\ \(x86\)\\Microchip\\mplabc32\\v1.12\\bin\\pic32-as.exe
MP_LD=C:\\Program\ Files\ \(x86\)\\Microchip\\mplabc32\\v1.12\\bin\\pic32-ld.exe
MP_AR=C:\\Program\ Files\ \(x86\)\\Microchip\\mplabc32\\v1.12\\bin\\pic32-ar.exe
# MP_BC is not defined
MP_CC_DIR=C:\\Program\ Files\ \(x86\)\\Microchip\\mplabc32\\v1.12\\bin
# MP_BC_DIR is not defined
MP_AS_DIR=C:\\Program\ Files\ \(x86\)\\Microchip\\mplabc32\\v1.12\\bin
MP_LD_DIR=C:\\Program\ Files\ \(x86\)\\Microchip\\mplabc32\\v1.12\\bin
MP_AR_DIR=C:\\Program\ Files\ \(x86\)\\Microchip\\mplabc32\\v1.12\\bin
# MP_BC_DIR is not defined

.build-conf: ${BUILD_SUBPROJECTS}
	${MAKE}  -f nbproject/Makefile-PIC32_460_GFXv3_EX16_16PMP_WQVGAv1.mk dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf

MP_PROCESSOR_OPTION=32MX460F512L
MP_LINKER_FILE_OPTION=
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
${OBJECTDIR}/_ext/1472/AN1136Demo.o: ../AN1136Demo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/AN1136Demo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/AN1136Demo.o.ok ${OBJECTDIR}/_ext/1472/AN1136Demo.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/AN1136Demo.o.d -o ${OBJECTDIR}/_ext/1472/AN1136Demo.o ../AN1136Demo.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/AN1136Demo.o.d -o ${OBJECTDIR}/_ext/1472/AN1136Demo.o ../AN1136Demo.c   > ${OBJECTDIR}/_ext/1472/AN1136Demo.o.err 2>&1  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/AN1136Demo.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1472/AN1136Demo.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/AN1136Demo.o.d > ${OBJECTDIR}/_ext/1472/AN1136Demo.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/AN1136Demo.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/AN1136Demo.o.tmp ${OBJECTDIR}/_ext/1472/AN1136Demo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/AN1136Demo.o.tmp
endif
	@if [ -f ${OBJECTDIR}/_ext/1472/AN1136Demo.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/AN1136Demo.o.ok; else cat ${OBJECTDIR}/_ext/1472/AN1136Demo.o.err; exit 1; fi
	
${OBJECTDIR}/_ext/1919882987/SSD1926.o: ../../../Microchip/Graphics/Drivers/SSD1926.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.ok ${OBJECTDIR}/_ext/1919882987/SSD1926.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d -o ${OBJECTDIR}/_ext/1919882987/SSD1926.o ../../../Microchip/Graphics/Drivers/SSD1926.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d -o ${OBJECTDIR}/_ext/1919882987/SSD1926.o ../../../Microchip/Graphics/Drivers/SSD1926.c   > ${OBJECTDIR}/_ext/1919882987/SSD1926.o.err 2>&1  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1919882987/SSD1926.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d > ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	@${CP} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp
endif
	@if [ -f ${OBJECTDIR}/_ext/1919882987/SSD1926.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1919882987/SSD1926.o.ok; else cat ${OBJECTDIR}/_ext/1919882987/SSD1926.o.err; exit 1; fi
	
${OBJECTDIR}/_ext/1472/HelloWorldFonts.o: ../HelloWorldFonts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o.ok ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o.d -o ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o ../HelloWorldFonts.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o.d -o ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o ../HelloWorldFonts.c   > ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o.err 2>&1  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o.d > ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o.tmp ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o.tmp
endif
	@if [ -f ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o.ok; else cat ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o.err; exit 1; fi
	
${OBJECTDIR}/_ext/1687970324/drv_spi.o: ../../../Board\ Support\ Package/drv_spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.ok ${OBJECTDIR}/_ext/1687970324/drv_spi.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d -o ${OBJECTDIR}/_ext/1687970324/drv_spi.o ../../../Board\ Support\ Package/drv_spi.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d -o ${OBJECTDIR}/_ext/1687970324/drv_spi.o ../../../Board\ Support\ Package/drv_spi.c   > ${OBJECTDIR}/_ext/1687970324/drv_spi.o.err 2>&1  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1687970324/drv_spi.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d > ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	@${CP} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp
endif
	@if [ -f ${OBJECTDIR}/_ext/1687970324/drv_spi.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1687970324/drv_spi.o.ok; else cat ${OBJECTDIR}/_ext/1687970324/drv_spi.o.err; exit 1; fi
	
${OBJECTDIR}/_ext/1687970324/TouchScreen.o: ../../../Board\ Support\ Package/TouchScreen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.ok ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d -o ${OBJECTDIR}/_ext/1687970324/TouchScreen.o ../../../Board\ Support\ Package/TouchScreen.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d -o ${OBJECTDIR}/_ext/1687970324/TouchScreen.o ../../../Board\ Support\ Package/TouchScreen.c   > ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.err 2>&1  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d > ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d 
	@${CP} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.tmp ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.tmp
endif
	@if [ -f ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.ok; else cat ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.err; exit 1; fi
	
${OBJECTDIR}/_ext/803622919/Button.o: ../../../Microchip/Graphics/Button.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Button.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Button.o.ok ${OBJECTDIR}/_ext/803622919/Button.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/Button.o.d -o ${OBJECTDIR}/_ext/803622919/Button.o ../../../Microchip/Graphics/Button.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/Button.o.d -o ${OBJECTDIR}/_ext/803622919/Button.o ../../../Microchip/Graphics/Button.c   > ${OBJECTDIR}/_ext/803622919/Button.o.err 2>&1  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/803622919/Button.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/803622919/Button.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Button.o.d > ${OBJECTDIR}/_ext/803622919/Button.o.tmp
	@${RM} ${OBJECTDIR}/_ext/803622919/Button.o.d 
	@${CP} ${OBJECTDIR}/_ext/803622919/Button.o.tmp ${OBJECTDIR}/_ext/803622919/Button.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Button.o.tmp
endif
	@if [ -f ${OBJECTDIR}/_ext/803622919/Button.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/803622919/Button.o.ok; else cat ${OBJECTDIR}/_ext/803622919/Button.o.err; exit 1; fi
	
${OBJECTDIR}/_ext/1472/AN1182Demo.o: ../AN1182Demo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/AN1182Demo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/AN1182Demo.o.ok ${OBJECTDIR}/_ext/1472/AN1182Demo.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/AN1182Demo.o.d -o ${OBJECTDIR}/_ext/1472/AN1182Demo.o ../AN1182Demo.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/AN1182Demo.o.d -o ${OBJECTDIR}/_ext/1472/AN1182Demo.o ../AN1182Demo.c   > ${OBJECTDIR}/_ext/1472/AN1182Demo.o.err 2>&1  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/AN1182Demo.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1472/AN1182Demo.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/AN1182Demo.o.d > ${OBJECTDIR}/_ext/1472/AN1182Demo.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/AN1182Demo.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/AN1182Demo.o.tmp ${OBJECTDIR}/_ext/1472/AN1182Demo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/AN1182Demo.o.tmp
endif
	@if [ -f ${OBJECTDIR}/_ext/1472/AN1182Demo.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/AN1182Demo.o.ok; else cat ${OBJECTDIR}/_ext/1472/AN1182Demo.o.err; exit 1; fi
	
${OBJECTDIR}/_ext/803622919/TextEntry.o: ../../../Microchip/Graphics/TextEntry.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/TextEntry.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/TextEntry.o.ok ${OBJECTDIR}/_ext/803622919/TextEntry.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/TextEntry.o.d -o ${OBJECTDIR}/_ext/803622919/TextEntry.o ../../../Microchip/Graphics/TextEntry.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/TextEntry.o.d -o ${OBJECTDIR}/_ext/803622919/TextEntry.o ../../../Microchip/Graphics/TextEntry.c   > ${OBJECTDIR}/_ext/803622919/TextEntry.o.err 2>&1  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/803622919/TextEntry.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/803622919/TextEntry.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/TextEntry.o.d > ${OBJECTDIR}/_ext/803622919/TextEntry.o.tmp
	@${RM} ${OBJECTDIR}/_ext/803622919/TextEntry.o.d 
	@${CP} ${OBJECTDIR}/_ext/803622919/TextEntry.o.tmp ${OBJECTDIR}/_ext/803622919/TextEntry.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/TextEntry.o.tmp
endif
	@if [ -f ${OBJECTDIR}/_ext/803622919/TextEntry.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/803622919/TextEntry.o.ok; else cat ${OBJECTDIR}/_ext/803622919/TextEntry.o.err; exit 1; fi
	
${OBJECTDIR}/_ext/1687970324/cpld.o: ../../../Board\ Support\ Package/cpld.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.ok ${OBJECTDIR}/_ext/1687970324/cpld.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1687970324/cpld.o.d -o ${OBJECTDIR}/_ext/1687970324/cpld.o ../../../Board\ Support\ Package/cpld.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1687970324/cpld.o.d -o ${OBJECTDIR}/_ext/1687970324/cpld.o ../../../Board\ Support\ Package/cpld.c   > ${OBJECTDIR}/_ext/1687970324/cpld.o.err 2>&1  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1687970324/cpld.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/cpld.o.d > ${OBJECTDIR}/_ext/1687970324/cpld.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	@${CP} ${OBJECTDIR}/_ext/1687970324/cpld.o.tmp ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.tmp
endif
	@if [ -f ${OBJECTDIR}/_ext/1687970324/cpld.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1687970324/cpld.o.ok; else cat ${OBJECTDIR}/_ext/1687970324/cpld.o.err; exit 1; fi
	
${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o: ../../../Microchip/Graphics/GOLSchemeDefault.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.ok ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d -o ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o ../../../Microchip/Graphics/GOLSchemeDefault.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d -o ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o ../../../Microchip/Graphics/GOLSchemeDefault.c   > ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.err 2>&1  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d > ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.tmp
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d 
	@${CP} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.tmp ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.tmp
endif
	@if [ -f ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.ok; else cat ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.err; exit 1; fi
	
${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o: ../../../Board\ Support\ Package/TouchScreenResistive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.ok ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d -o ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o ../../../Board\ Support\ Package/TouchScreenResistive.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d -o ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o ../../../Board\ Support\ Package/TouchScreenResistive.c   > ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.err 2>&1  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d > ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d 
	@${CP} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.tmp ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.tmp
endif
	@if [ -f ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.ok; else cat ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.err; exit 1; fi
	
${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C32.o: ../AN1136\ Pictures\ C32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C32.o.ok ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C32.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C32.o.d -o ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C32.o ../AN1136\ Pictures\ C32.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C32.o.d -o ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C32.o ../AN1136\ Pictures\ C32.c   > ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C32.o.err 2>&1  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C32.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C32.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C32.o.d > ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C32.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C32.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C32.o.tmp ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C32.o.tmp
endif
	@if [ -f ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C32.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C32.o.ok; else cat ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C32.o.err; exit 1; fi
	
${OBJECTDIR}/_ext/1919882987/gfxepmp.o: ../../../Microchip/Graphics/Drivers/gfxepmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.ok ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d -o ${OBJECTDIR}/_ext/1919882987/gfxepmp.o ../../../Microchip/Graphics/Drivers/gfxepmp.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d -o ${OBJECTDIR}/_ext/1919882987/gfxepmp.o ../../../Microchip/Graphics/Drivers/gfxepmp.c   > ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.err 2>&1  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d > ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	@${CP} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp
endif
	@if [ -f ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.ok; else cat ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.err; exit 1; fi
	
${OBJECTDIR}/_ext/1472/AppNotesDemo.o: ../AppNotesDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/AppNotesDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/AppNotesDemo.o.ok ${OBJECTDIR}/_ext/1472/AppNotesDemo.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/AppNotesDemo.o.d -o ${OBJECTDIR}/_ext/1472/AppNotesDemo.o ../AppNotesDemo.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/AppNotesDemo.o.d -o ${OBJECTDIR}/_ext/1472/AppNotesDemo.o ../AppNotesDemo.c   > ${OBJECTDIR}/_ext/1472/AppNotesDemo.o.err 2>&1  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/AppNotesDemo.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1472/AppNotesDemo.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/AppNotesDemo.o.d > ${OBJECTDIR}/_ext/1472/AppNotesDemo.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/AppNotesDemo.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/AppNotesDemo.o.tmp ${OBJECTDIR}/_ext/1472/AppNotesDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/AppNotesDemo.o.tmp
endif
	@if [ -f ${OBJECTDIR}/_ext/1472/AppNotesDemo.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/AppNotesDemo.o.ok; else cat ${OBJECTDIR}/_ext/1472/AppNotesDemo.o.err; exit 1; fi
	
${OBJECTDIR}/_ext/803622919/StaticText.o: ../../../Microchip/Graphics/StaticText.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/StaticText.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/StaticText.o.ok ${OBJECTDIR}/_ext/803622919/StaticText.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/StaticText.o.d -o ${OBJECTDIR}/_ext/803622919/StaticText.o ../../../Microchip/Graphics/StaticText.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/StaticText.o.d -o ${OBJECTDIR}/_ext/803622919/StaticText.o ../../../Microchip/Graphics/StaticText.c   > ${OBJECTDIR}/_ext/803622919/StaticText.o.err 2>&1  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/803622919/StaticText.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/803622919/StaticText.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/StaticText.o.d > ${OBJECTDIR}/_ext/803622919/StaticText.o.tmp
	@${RM} ${OBJECTDIR}/_ext/803622919/StaticText.o.d 
	@${CP} ${OBJECTDIR}/_ext/803622919/StaticText.o.tmp ${OBJECTDIR}/_ext/803622919/StaticText.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/StaticText.o.tmp
endif
	@if [ -f ${OBJECTDIR}/_ext/803622919/StaticText.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/803622919/StaticText.o.ok; else cat ${OBJECTDIR}/_ext/803622919/StaticText.o.err; exit 1; fi
	
${OBJECTDIR}/_ext/1472/AN1227Demo.o: ../AN1227Demo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/AN1227Demo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/AN1227Demo.o.ok ${OBJECTDIR}/_ext/1472/AN1227Demo.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/AN1227Demo.o.d -o ${OBJECTDIR}/_ext/1472/AN1227Demo.o ../AN1227Demo.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/AN1227Demo.o.d -o ${OBJECTDIR}/_ext/1472/AN1227Demo.o ../AN1227Demo.c   > ${OBJECTDIR}/_ext/1472/AN1227Demo.o.err 2>&1  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/AN1227Demo.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1472/AN1227Demo.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/AN1227Demo.o.d > ${OBJECTDIR}/_ext/1472/AN1227Demo.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/AN1227Demo.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/AN1227Demo.o.tmp ${OBJECTDIR}/_ext/1472/AN1227Demo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/AN1227Demo.o.tmp
endif
	@if [ -f ${OBJECTDIR}/_ext/1472/AN1227Demo.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/AN1227Demo.o.ok; else cat ${OBJECTDIR}/_ext/1472/AN1227Demo.o.err; exit 1; fi
	
${OBJECTDIR}/_ext/1687970324/SST25VF016.o: ../../../Board\ Support\ Package/SST25VF016.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.ok ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d -o ${OBJECTDIR}/_ext/1687970324/SST25VF016.o ../../../Board\ Support\ Package/SST25VF016.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d -o ${OBJECTDIR}/_ext/1687970324/SST25VF016.o ../../../Board\ Support\ Package/SST25VF016.c   > ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.err 2>&1  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d > ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	@${CP} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.tmp ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.tmp
endif
	@if [ -f ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.ok; else cat ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.err; exit 1; fi
	
${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C32.o: ../AppNotesDemoResources\ C32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C32.o.ok ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C32.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C32.o.d -o ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C32.o ../AppNotesDemoResources\ C32.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C32.o.d -o ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C32.o ../AppNotesDemoResources\ C32.c   > ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C32.o.err 2>&1  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C32.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C32.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C32.o.d > ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C32.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C32.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C32.o.tmp ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C32.o.tmp
endif
	@if [ -f ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C32.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C32.o.ok; else cat ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C32.o.err; exit 1; fi
	
${OBJECTDIR}/_ext/803622919/Primitive.o: ../../../Microchip/Graphics/Primitive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.ok ${OBJECTDIR}/_ext/803622919/Primitive.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/Primitive.o.d -o ${OBJECTDIR}/_ext/803622919/Primitive.o ../../../Microchip/Graphics/Primitive.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/Primitive.o.d -o ${OBJECTDIR}/_ext/803622919/Primitive.o ../../../Microchip/Graphics/Primitive.c   > ${OBJECTDIR}/_ext/803622919/Primitive.o.err 2>&1  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/803622919/Primitive.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Primitive.o.d > ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp
	@${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	@${CP} ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp
endif
	@if [ -f ${OBJECTDIR}/_ext/803622919/Primitive.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/803622919/Primitive.o.ok; else cat ${OBJECTDIR}/_ext/803622919/Primitive.o.err; exit 1; fi
	
${OBJECTDIR}/_ext/803622919/GOLFontDefault.o: ../../../Microchip/Graphics/GOLFontDefault.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.ok ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d -o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ../../../Microchip/Graphics/GOLFontDefault.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d -o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ../../../Microchip/Graphics/GOLFontDefault.c   > ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.err 2>&1  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d > ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	@${CP} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp
endif
	@if [ -f ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.ok; else cat ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.err; exit 1; fi
	
${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o: ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.ok ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d -o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d -o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c   > ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.err 2>&1  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d > ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	@${CP} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp
endif
	@if [ -f ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.ok; else cat ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.err; exit 1; fi
	
${OBJECTDIR}/_ext/803622919/Slider.o: ../../../Microchip/Graphics/Slider.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Slider.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Slider.o.ok ${OBJECTDIR}/_ext/803622919/Slider.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/Slider.o.d -o ${OBJECTDIR}/_ext/803622919/Slider.o ../../../Microchip/Graphics/Slider.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/Slider.o.d -o ${OBJECTDIR}/_ext/803622919/Slider.o ../../../Microchip/Graphics/Slider.c   > ${OBJECTDIR}/_ext/803622919/Slider.o.err 2>&1  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/803622919/Slider.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/803622919/Slider.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Slider.o.d > ${OBJECTDIR}/_ext/803622919/Slider.o.tmp
	@${RM} ${OBJECTDIR}/_ext/803622919/Slider.o.d 
	@${CP} ${OBJECTDIR}/_ext/803622919/Slider.o.tmp ${OBJECTDIR}/_ext/803622919/Slider.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Slider.o.tmp
endif
	@if [ -f ${OBJECTDIR}/_ext/803622919/Slider.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/803622919/Slider.o.ok; else cat ${OBJECTDIR}/_ext/803622919/Slider.o.err; exit 1; fi
	
${OBJECTDIR}/_ext/1687970324/Beep.o: ../../../Board\ Support\ Package/Beep.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/Beep.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/Beep.o.ok ${OBJECTDIR}/_ext/1687970324/Beep.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1687970324/Beep.o.d -o ${OBJECTDIR}/_ext/1687970324/Beep.o ../../../Board\ Support\ Package/Beep.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1687970324/Beep.o.d -o ${OBJECTDIR}/_ext/1687970324/Beep.o ../../../Board\ Support\ Package/Beep.c   > ${OBJECTDIR}/_ext/1687970324/Beep.o.err 2>&1  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1687970324/Beep.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1687970324/Beep.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/Beep.o.d > ${OBJECTDIR}/_ext/1687970324/Beep.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1687970324/Beep.o.d 
	@${CP} ${OBJECTDIR}/_ext/1687970324/Beep.o.tmp ${OBJECTDIR}/_ext/1687970324/Beep.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/Beep.o.tmp
endif
	@if [ -f ${OBJECTDIR}/_ext/1687970324/Beep.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1687970324/Beep.o.ok; else cat ${OBJECTDIR}/_ext/1687970324/Beep.o.err; exit 1; fi
	
${OBJECTDIR}/_ext/803622919/GOL.o: ../../../Microchip/Graphics/GOL.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOL.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOL.o.ok ${OBJECTDIR}/_ext/803622919/GOL.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/GOL.o.d -o ${OBJECTDIR}/_ext/803622919/GOL.o ../../../Microchip/Graphics/GOL.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/GOL.o.d -o ${OBJECTDIR}/_ext/803622919/GOL.o ../../../Microchip/Graphics/GOL.c   > ${OBJECTDIR}/_ext/803622919/GOL.o.err 2>&1  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/803622919/GOL.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/803622919/GOL.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/GOL.o.d > ${OBJECTDIR}/_ext/803622919/GOL.o.tmp
	@${RM} ${OBJECTDIR}/_ext/803622919/GOL.o.d 
	@${CP} ${OBJECTDIR}/_ext/803622919/GOL.o.tmp ${OBJECTDIR}/_ext/803622919/GOL.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOL.o.tmp
endif
	@if [ -f ${OBJECTDIR}/_ext/803622919/GOL.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/803622919/GOL.o.ok; else cat ${OBJECTDIR}/_ext/803622919/GOL.o.err; exit 1; fi
	
${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o: ../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.ok ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d -o ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o ../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d -o ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o ../../../Microchip/Graphics/Drivers/mchpGfxDrv.c   > ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.err 2>&1  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d > ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	@${CP} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.tmp ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.tmp
endif
	@if [ -f ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.ok; else cat ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.err; exit 1; fi
	
${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C32.o: ../AN1182\ Pictures\ C32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C32.o.ok ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C32.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C32.o.d -o ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C32.o ../AN1182\ Pictures\ C32.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C32.o.d -o ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C32.o ../AN1182\ Pictures\ C32.c   > ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C32.o.err 2>&1  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C32.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C32.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C32.o.d > ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C32.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C32.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C32.o.tmp ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C32.o.tmp
endif
	@if [ -f ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C32.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C32.o.ok; else cat ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C32.o.err; exit 1; fi
	
${OBJECTDIR}/_ext/1919882987/drvTFT001.o: ../../../Microchip/Graphics/Drivers/drvTFT001.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.ok ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d -o ${OBJECTDIR}/_ext/1919882987/drvTFT001.o ../../../Microchip/Graphics/Drivers/drvTFT001.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d -o ${OBJECTDIR}/_ext/1919882987/drvTFT001.o ../../../Microchip/Graphics/Drivers/drvTFT001.c   > ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.err 2>&1  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d > ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d 
	@${CP} ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.tmp ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.tmp
endif
	@if [ -f ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.ok; else cat ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.err; exit 1; fi
	
${OBJECTDIR}/_ext/1860783399/TimeDelay.o: ../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1860783399 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.ok ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d -o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ../../../Microchip/Common/TimeDelay.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d -o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ../../../Microchip/Common/TimeDelay.c   > ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.err 2>&1  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d > ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	@${CP} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp
endif
	@if [ -f ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.ok; else cat ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.err; exit 1; fi
	
${OBJECTDIR}/_ext/1472/AN1246Demo.o: ../AN1246Demo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/AN1246Demo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/AN1246Demo.o.ok ${OBJECTDIR}/_ext/1472/AN1246Demo.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/AN1246Demo.o.d -o ${OBJECTDIR}/_ext/1472/AN1246Demo.o ../AN1246Demo.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/AN1246Demo.o.d -o ${OBJECTDIR}/_ext/1472/AN1246Demo.o ../AN1246Demo.c   > ${OBJECTDIR}/_ext/1472/AN1246Demo.o.err 2>&1  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/AN1246Demo.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1472/AN1246Demo.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/AN1246Demo.o.d > ${OBJECTDIR}/_ext/1472/AN1246Demo.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/AN1246Demo.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/AN1246Demo.o.tmp ${OBJECTDIR}/_ext/1472/AN1246Demo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/AN1246Demo.o.tmp
endif
	@if [ -f ${OBJECTDIR}/_ext/1472/AN1246Demo.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/AN1246Demo.o.ok; else cat ${OBJECTDIR}/_ext/1472/AN1246Demo.o.err; exit 1; fi
	
${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o: ../../../Board\ Support\ Package/MCHP25LC256.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.ok ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.d -o ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o ../../../Board\ Support\ Package/MCHP25LC256.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.d -o ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o ../../../Board\ Support\ Package/MCHP25LC256.c   > ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.err 2>&1  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.d > ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.d 
	@${CP} ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.tmp ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.tmp
endif
	@if [ -f ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.ok; else cat ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.err; exit 1; fi
	
else
${OBJECTDIR}/_ext/1472/AN1136Demo.o: ../AN1136Demo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/AN1136Demo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/AN1136Demo.o.ok ${OBJECTDIR}/_ext/1472/AN1136Demo.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/AN1136Demo.o.d -o ${OBJECTDIR}/_ext/1472/AN1136Demo.o ../AN1136Demo.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/AN1136Demo.o.d -o ${OBJECTDIR}/_ext/1472/AN1136Demo.o ../AN1136Demo.c   > ${OBJECTDIR}/_ext/1472/AN1136Demo.o.err 2>&1  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/AN1136Demo.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1472/AN1136Demo.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/AN1136Demo.o.d > ${OBJECTDIR}/_ext/1472/AN1136Demo.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/AN1136Demo.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/AN1136Demo.o.tmp ${OBJECTDIR}/_ext/1472/AN1136Demo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/AN1136Demo.o.tmp
endif
	@if [ -f ${OBJECTDIR}/_ext/1472/AN1136Demo.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/AN1136Demo.o.ok; else cat ${OBJECTDIR}/_ext/1472/AN1136Demo.o.err; exit 1; fi
	
${OBJECTDIR}/_ext/1919882987/SSD1926.o: ../../../Microchip/Graphics/Drivers/SSD1926.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.ok ${OBJECTDIR}/_ext/1919882987/SSD1926.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d -o ${OBJECTDIR}/_ext/1919882987/SSD1926.o ../../../Microchip/Graphics/Drivers/SSD1926.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d -o ${OBJECTDIR}/_ext/1919882987/SSD1926.o ../../../Microchip/Graphics/Drivers/SSD1926.c   > ${OBJECTDIR}/_ext/1919882987/SSD1926.o.err 2>&1  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1919882987/SSD1926.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d > ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	@${CP} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp
endif
	@if [ -f ${OBJECTDIR}/_ext/1919882987/SSD1926.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1919882987/SSD1926.o.ok; else cat ${OBJECTDIR}/_ext/1919882987/SSD1926.o.err; exit 1; fi
	
${OBJECTDIR}/_ext/1472/HelloWorldFonts.o: ../HelloWorldFonts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o.ok ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o.d -o ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o ../HelloWorldFonts.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o.d -o ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o ../HelloWorldFonts.c   > ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o.err 2>&1  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o.d > ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o.tmp ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o.tmp
endif
	@if [ -f ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o.ok; else cat ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o.err; exit 1; fi
	
${OBJECTDIR}/_ext/1687970324/drv_spi.o: ../../../Board\ Support\ Package/drv_spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.ok ${OBJECTDIR}/_ext/1687970324/drv_spi.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d -o ${OBJECTDIR}/_ext/1687970324/drv_spi.o ../../../Board\ Support\ Package/drv_spi.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d -o ${OBJECTDIR}/_ext/1687970324/drv_spi.o ../../../Board\ Support\ Package/drv_spi.c   > ${OBJECTDIR}/_ext/1687970324/drv_spi.o.err 2>&1  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1687970324/drv_spi.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d > ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	@${CP} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp
endif
	@if [ -f ${OBJECTDIR}/_ext/1687970324/drv_spi.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1687970324/drv_spi.o.ok; else cat ${OBJECTDIR}/_ext/1687970324/drv_spi.o.err; exit 1; fi
	
${OBJECTDIR}/_ext/1687970324/TouchScreen.o: ../../../Board\ Support\ Package/TouchScreen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.ok ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d -o ${OBJECTDIR}/_ext/1687970324/TouchScreen.o ../../../Board\ Support\ Package/TouchScreen.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d -o ${OBJECTDIR}/_ext/1687970324/TouchScreen.o ../../../Board\ Support\ Package/TouchScreen.c   > ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.err 2>&1  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d > ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d 
	@${CP} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.tmp ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.tmp
endif
	@if [ -f ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.ok; else cat ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.err; exit 1; fi
	
${OBJECTDIR}/_ext/803622919/Button.o: ../../../Microchip/Graphics/Button.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Button.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Button.o.ok ${OBJECTDIR}/_ext/803622919/Button.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/Button.o.d -o ${OBJECTDIR}/_ext/803622919/Button.o ../../../Microchip/Graphics/Button.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/Button.o.d -o ${OBJECTDIR}/_ext/803622919/Button.o ../../../Microchip/Graphics/Button.c   > ${OBJECTDIR}/_ext/803622919/Button.o.err 2>&1  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/803622919/Button.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/803622919/Button.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Button.o.d > ${OBJECTDIR}/_ext/803622919/Button.o.tmp
	@${RM} ${OBJECTDIR}/_ext/803622919/Button.o.d 
	@${CP} ${OBJECTDIR}/_ext/803622919/Button.o.tmp ${OBJECTDIR}/_ext/803622919/Button.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Button.o.tmp
endif
	@if [ -f ${OBJECTDIR}/_ext/803622919/Button.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/803622919/Button.o.ok; else cat ${OBJECTDIR}/_ext/803622919/Button.o.err; exit 1; fi
	
${OBJECTDIR}/_ext/1472/AN1182Demo.o: ../AN1182Demo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/AN1182Demo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/AN1182Demo.o.ok ${OBJECTDIR}/_ext/1472/AN1182Demo.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/AN1182Demo.o.d -o ${OBJECTDIR}/_ext/1472/AN1182Demo.o ../AN1182Demo.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/AN1182Demo.o.d -o ${OBJECTDIR}/_ext/1472/AN1182Demo.o ../AN1182Demo.c   > ${OBJECTDIR}/_ext/1472/AN1182Demo.o.err 2>&1  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/AN1182Demo.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1472/AN1182Demo.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/AN1182Demo.o.d > ${OBJECTDIR}/_ext/1472/AN1182Demo.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/AN1182Demo.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/AN1182Demo.o.tmp ${OBJECTDIR}/_ext/1472/AN1182Demo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/AN1182Demo.o.tmp
endif
	@if [ -f ${OBJECTDIR}/_ext/1472/AN1182Demo.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/AN1182Demo.o.ok; else cat ${OBJECTDIR}/_ext/1472/AN1182Demo.o.err; exit 1; fi
	
${OBJECTDIR}/_ext/803622919/TextEntry.o: ../../../Microchip/Graphics/TextEntry.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/TextEntry.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/TextEntry.o.ok ${OBJECTDIR}/_ext/803622919/TextEntry.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/TextEntry.o.d -o ${OBJECTDIR}/_ext/803622919/TextEntry.o ../../../Microchip/Graphics/TextEntry.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/TextEntry.o.d -o ${OBJECTDIR}/_ext/803622919/TextEntry.o ../../../Microchip/Graphics/TextEntry.c   > ${OBJECTDIR}/_ext/803622919/TextEntry.o.err 2>&1  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/803622919/TextEntry.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/803622919/TextEntry.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/TextEntry.o.d > ${OBJECTDIR}/_ext/803622919/TextEntry.o.tmp
	@${RM} ${OBJECTDIR}/_ext/803622919/TextEntry.o.d 
	@${CP} ${OBJECTDIR}/_ext/803622919/TextEntry.o.tmp ${OBJECTDIR}/_ext/803622919/TextEntry.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/TextEntry.o.tmp
endif
	@if [ -f ${OBJECTDIR}/_ext/803622919/TextEntry.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/803622919/TextEntry.o.ok; else cat ${OBJECTDIR}/_ext/803622919/TextEntry.o.err; exit 1; fi
	
${OBJECTDIR}/_ext/1687970324/cpld.o: ../../../Board\ Support\ Package/cpld.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.ok ${OBJECTDIR}/_ext/1687970324/cpld.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1687970324/cpld.o.d -o ${OBJECTDIR}/_ext/1687970324/cpld.o ../../../Board\ Support\ Package/cpld.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1687970324/cpld.o.d -o ${OBJECTDIR}/_ext/1687970324/cpld.o ../../../Board\ Support\ Package/cpld.c   > ${OBJECTDIR}/_ext/1687970324/cpld.o.err 2>&1  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1687970324/cpld.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/cpld.o.d > ${OBJECTDIR}/_ext/1687970324/cpld.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	@${CP} ${OBJECTDIR}/_ext/1687970324/cpld.o.tmp ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.tmp
endif
	@if [ -f ${OBJECTDIR}/_ext/1687970324/cpld.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1687970324/cpld.o.ok; else cat ${OBJECTDIR}/_ext/1687970324/cpld.o.err; exit 1; fi
	
${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o: ../../../Microchip/Graphics/GOLSchemeDefault.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.ok ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d -o ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o ../../../Microchip/Graphics/GOLSchemeDefault.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d -o ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o ../../../Microchip/Graphics/GOLSchemeDefault.c   > ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.err 2>&1  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d > ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.tmp
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d 
	@${CP} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.tmp ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.tmp
endif
	@if [ -f ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.ok; else cat ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.err; exit 1; fi
	
${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o: ../../../Board\ Support\ Package/TouchScreenResistive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.ok ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d -o ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o ../../../Board\ Support\ Package/TouchScreenResistive.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d -o ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o ../../../Board\ Support\ Package/TouchScreenResistive.c   > ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.err 2>&1  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d > ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d 
	@${CP} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.tmp ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.tmp
endif
	@if [ -f ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.ok; else cat ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.err; exit 1; fi
	
${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C32.o: ../AN1136\ Pictures\ C32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C32.o.ok ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C32.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C32.o.d -o ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C32.o ../AN1136\ Pictures\ C32.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C32.o.d -o ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C32.o ../AN1136\ Pictures\ C32.c   > ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C32.o.err 2>&1  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C32.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C32.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C32.o.d > ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C32.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C32.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C32.o.tmp ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C32.o.tmp
endif
	@if [ -f ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C32.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C32.o.ok; else cat ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C32.o.err; exit 1; fi
	
${OBJECTDIR}/_ext/1919882987/gfxepmp.o: ../../../Microchip/Graphics/Drivers/gfxepmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.ok ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d -o ${OBJECTDIR}/_ext/1919882987/gfxepmp.o ../../../Microchip/Graphics/Drivers/gfxepmp.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d -o ${OBJECTDIR}/_ext/1919882987/gfxepmp.o ../../../Microchip/Graphics/Drivers/gfxepmp.c   > ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.err 2>&1  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d > ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	@${CP} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp
endif
	@if [ -f ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.ok; else cat ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.err; exit 1; fi
	
${OBJECTDIR}/_ext/1472/AppNotesDemo.o: ../AppNotesDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/AppNotesDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/AppNotesDemo.o.ok ${OBJECTDIR}/_ext/1472/AppNotesDemo.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/AppNotesDemo.o.d -o ${OBJECTDIR}/_ext/1472/AppNotesDemo.o ../AppNotesDemo.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/AppNotesDemo.o.d -o ${OBJECTDIR}/_ext/1472/AppNotesDemo.o ../AppNotesDemo.c   > ${OBJECTDIR}/_ext/1472/AppNotesDemo.o.err 2>&1  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/AppNotesDemo.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1472/AppNotesDemo.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/AppNotesDemo.o.d > ${OBJECTDIR}/_ext/1472/AppNotesDemo.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/AppNotesDemo.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/AppNotesDemo.o.tmp ${OBJECTDIR}/_ext/1472/AppNotesDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/AppNotesDemo.o.tmp
endif
	@if [ -f ${OBJECTDIR}/_ext/1472/AppNotesDemo.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/AppNotesDemo.o.ok; else cat ${OBJECTDIR}/_ext/1472/AppNotesDemo.o.err; exit 1; fi
	
${OBJECTDIR}/_ext/803622919/StaticText.o: ../../../Microchip/Graphics/StaticText.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/StaticText.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/StaticText.o.ok ${OBJECTDIR}/_ext/803622919/StaticText.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/StaticText.o.d -o ${OBJECTDIR}/_ext/803622919/StaticText.o ../../../Microchip/Graphics/StaticText.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/StaticText.o.d -o ${OBJECTDIR}/_ext/803622919/StaticText.o ../../../Microchip/Graphics/StaticText.c   > ${OBJECTDIR}/_ext/803622919/StaticText.o.err 2>&1  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/803622919/StaticText.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/803622919/StaticText.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/StaticText.o.d > ${OBJECTDIR}/_ext/803622919/StaticText.o.tmp
	@${RM} ${OBJECTDIR}/_ext/803622919/StaticText.o.d 
	@${CP} ${OBJECTDIR}/_ext/803622919/StaticText.o.tmp ${OBJECTDIR}/_ext/803622919/StaticText.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/StaticText.o.tmp
endif
	@if [ -f ${OBJECTDIR}/_ext/803622919/StaticText.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/803622919/StaticText.o.ok; else cat ${OBJECTDIR}/_ext/803622919/StaticText.o.err; exit 1; fi
	
${OBJECTDIR}/_ext/1472/AN1227Demo.o: ../AN1227Demo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/AN1227Demo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/AN1227Demo.o.ok ${OBJECTDIR}/_ext/1472/AN1227Demo.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/AN1227Demo.o.d -o ${OBJECTDIR}/_ext/1472/AN1227Demo.o ../AN1227Demo.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/AN1227Demo.o.d -o ${OBJECTDIR}/_ext/1472/AN1227Demo.o ../AN1227Demo.c   > ${OBJECTDIR}/_ext/1472/AN1227Demo.o.err 2>&1  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/AN1227Demo.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1472/AN1227Demo.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/AN1227Demo.o.d > ${OBJECTDIR}/_ext/1472/AN1227Demo.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/AN1227Demo.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/AN1227Demo.o.tmp ${OBJECTDIR}/_ext/1472/AN1227Demo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/AN1227Demo.o.tmp
endif
	@if [ -f ${OBJECTDIR}/_ext/1472/AN1227Demo.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/AN1227Demo.o.ok; else cat ${OBJECTDIR}/_ext/1472/AN1227Demo.o.err; exit 1; fi
	
${OBJECTDIR}/_ext/1687970324/SST25VF016.o: ../../../Board\ Support\ Package/SST25VF016.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.ok ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d -o ${OBJECTDIR}/_ext/1687970324/SST25VF016.o ../../../Board\ Support\ Package/SST25VF016.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d -o ${OBJECTDIR}/_ext/1687970324/SST25VF016.o ../../../Board\ Support\ Package/SST25VF016.c   > ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.err 2>&1  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d > ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	@${CP} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.tmp ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.tmp
endif
	@if [ -f ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.ok; else cat ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.err; exit 1; fi
	
${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C32.o: ../AppNotesDemoResources\ C32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C32.o.ok ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C32.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C32.o.d -o ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C32.o ../AppNotesDemoResources\ C32.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C32.o.d -o ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C32.o ../AppNotesDemoResources\ C32.c   > ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C32.o.err 2>&1  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C32.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C32.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C32.o.d > ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C32.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C32.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C32.o.tmp ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C32.o.tmp
endif
	@if [ -f ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C32.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C32.o.ok; else cat ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C32.o.err; exit 1; fi
	
${OBJECTDIR}/_ext/803622919/Primitive.o: ../../../Microchip/Graphics/Primitive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.ok ${OBJECTDIR}/_ext/803622919/Primitive.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/Primitive.o.d -o ${OBJECTDIR}/_ext/803622919/Primitive.o ../../../Microchip/Graphics/Primitive.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/Primitive.o.d -o ${OBJECTDIR}/_ext/803622919/Primitive.o ../../../Microchip/Graphics/Primitive.c   > ${OBJECTDIR}/_ext/803622919/Primitive.o.err 2>&1  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/803622919/Primitive.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Primitive.o.d > ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp
	@${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	@${CP} ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp
endif
	@if [ -f ${OBJECTDIR}/_ext/803622919/Primitive.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/803622919/Primitive.o.ok; else cat ${OBJECTDIR}/_ext/803622919/Primitive.o.err; exit 1; fi
	
${OBJECTDIR}/_ext/803622919/GOLFontDefault.o: ../../../Microchip/Graphics/GOLFontDefault.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.ok ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d -o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ../../../Microchip/Graphics/GOLFontDefault.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d -o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ../../../Microchip/Graphics/GOLFontDefault.c   > ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.err 2>&1  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d > ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	@${CP} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp
endif
	@if [ -f ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.ok; else cat ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.err; exit 1; fi
	
${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o: ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.ok ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d -o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d -o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c   > ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.err 2>&1  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d > ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	@${CP} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp
endif
	@if [ -f ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.ok; else cat ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.err; exit 1; fi
	
${OBJECTDIR}/_ext/803622919/Slider.o: ../../../Microchip/Graphics/Slider.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Slider.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Slider.o.ok ${OBJECTDIR}/_ext/803622919/Slider.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/Slider.o.d -o ${OBJECTDIR}/_ext/803622919/Slider.o ../../../Microchip/Graphics/Slider.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/Slider.o.d -o ${OBJECTDIR}/_ext/803622919/Slider.o ../../../Microchip/Graphics/Slider.c   > ${OBJECTDIR}/_ext/803622919/Slider.o.err 2>&1  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/803622919/Slider.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/803622919/Slider.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Slider.o.d > ${OBJECTDIR}/_ext/803622919/Slider.o.tmp
	@${RM} ${OBJECTDIR}/_ext/803622919/Slider.o.d 
	@${CP} ${OBJECTDIR}/_ext/803622919/Slider.o.tmp ${OBJECTDIR}/_ext/803622919/Slider.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Slider.o.tmp
endif
	@if [ -f ${OBJECTDIR}/_ext/803622919/Slider.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/803622919/Slider.o.ok; else cat ${OBJECTDIR}/_ext/803622919/Slider.o.err; exit 1; fi
	
${OBJECTDIR}/_ext/1687970324/Beep.o: ../../../Board\ Support\ Package/Beep.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/Beep.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/Beep.o.ok ${OBJECTDIR}/_ext/1687970324/Beep.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1687970324/Beep.o.d -o ${OBJECTDIR}/_ext/1687970324/Beep.o ../../../Board\ Support\ Package/Beep.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1687970324/Beep.o.d -o ${OBJECTDIR}/_ext/1687970324/Beep.o ../../../Board\ Support\ Package/Beep.c   > ${OBJECTDIR}/_ext/1687970324/Beep.o.err 2>&1  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1687970324/Beep.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1687970324/Beep.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/Beep.o.d > ${OBJECTDIR}/_ext/1687970324/Beep.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1687970324/Beep.o.d 
	@${CP} ${OBJECTDIR}/_ext/1687970324/Beep.o.tmp ${OBJECTDIR}/_ext/1687970324/Beep.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/Beep.o.tmp
endif
	@if [ -f ${OBJECTDIR}/_ext/1687970324/Beep.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1687970324/Beep.o.ok; else cat ${OBJECTDIR}/_ext/1687970324/Beep.o.err; exit 1; fi
	
${OBJECTDIR}/_ext/803622919/GOL.o: ../../../Microchip/Graphics/GOL.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOL.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOL.o.ok ${OBJECTDIR}/_ext/803622919/GOL.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/GOL.o.d -o ${OBJECTDIR}/_ext/803622919/GOL.o ../../../Microchip/Graphics/GOL.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/GOL.o.d -o ${OBJECTDIR}/_ext/803622919/GOL.o ../../../Microchip/Graphics/GOL.c   > ${OBJECTDIR}/_ext/803622919/GOL.o.err 2>&1  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/803622919/GOL.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/803622919/GOL.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/GOL.o.d > ${OBJECTDIR}/_ext/803622919/GOL.o.tmp
	@${RM} ${OBJECTDIR}/_ext/803622919/GOL.o.d 
	@${CP} ${OBJECTDIR}/_ext/803622919/GOL.o.tmp ${OBJECTDIR}/_ext/803622919/GOL.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOL.o.tmp
endif
	@if [ -f ${OBJECTDIR}/_ext/803622919/GOL.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/803622919/GOL.o.ok; else cat ${OBJECTDIR}/_ext/803622919/GOL.o.err; exit 1; fi
	
${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o: ../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.ok ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d -o ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o ../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d -o ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o ../../../Microchip/Graphics/Drivers/mchpGfxDrv.c   > ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.err 2>&1  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d > ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	@${CP} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.tmp ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.tmp
endif
	@if [ -f ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.ok; else cat ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.err; exit 1; fi
	
${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C32.o: ../AN1182\ Pictures\ C32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C32.o.ok ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C32.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C32.o.d -o ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C32.o ../AN1182\ Pictures\ C32.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C32.o.d -o ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C32.o ../AN1182\ Pictures\ C32.c   > ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C32.o.err 2>&1  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C32.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C32.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C32.o.d > ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C32.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C32.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C32.o.tmp ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C32.o.tmp
endif
	@if [ -f ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C32.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C32.o.ok; else cat ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C32.o.err; exit 1; fi
	
${OBJECTDIR}/_ext/1919882987/drvTFT001.o: ../../../Microchip/Graphics/Drivers/drvTFT001.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.ok ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d -o ${OBJECTDIR}/_ext/1919882987/drvTFT001.o ../../../Microchip/Graphics/Drivers/drvTFT001.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d -o ${OBJECTDIR}/_ext/1919882987/drvTFT001.o ../../../Microchip/Graphics/Drivers/drvTFT001.c   > ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.err 2>&1  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d > ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d 
	@${CP} ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.tmp ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.tmp
endif
	@if [ -f ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.ok; else cat ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.err; exit 1; fi
	
${OBJECTDIR}/_ext/1860783399/TimeDelay.o: ../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1860783399 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.ok ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d -o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ../../../Microchip/Common/TimeDelay.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d -o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ../../../Microchip/Common/TimeDelay.c   > ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.err 2>&1  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d > ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	@${CP} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp
endif
	@if [ -f ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.ok; else cat ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.err; exit 1; fi
	
${OBJECTDIR}/_ext/1472/AN1246Demo.o: ../AN1246Demo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/AN1246Demo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/AN1246Demo.o.ok ${OBJECTDIR}/_ext/1472/AN1246Demo.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/AN1246Demo.o.d -o ${OBJECTDIR}/_ext/1472/AN1246Demo.o ../AN1246Demo.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/AN1246Demo.o.d -o ${OBJECTDIR}/_ext/1472/AN1246Demo.o ../AN1246Demo.c   > ${OBJECTDIR}/_ext/1472/AN1246Demo.o.err 2>&1  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/AN1246Demo.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1472/AN1246Demo.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/AN1246Demo.o.d > ${OBJECTDIR}/_ext/1472/AN1246Demo.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/AN1246Demo.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/AN1246Demo.o.tmp ${OBJECTDIR}/_ext/1472/AN1246Demo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/AN1246Demo.o.tmp
endif
	@if [ -f ${OBJECTDIR}/_ext/1472/AN1246Demo.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/AN1246Demo.o.ok; else cat ${OBJECTDIR}/_ext/1472/AN1246Demo.o.err; exit 1; fi
	
${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o: ../../../Board\ Support\ Package/MCHP25LC256.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.ok ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.d -o ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o ../../../Board\ Support\ Package/MCHP25LC256.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_WQVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.d -o ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o ../../../Board\ Support\ Package/MCHP25LC256.c   > ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.err 2>&1  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.d > ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.d 
	@${CP} ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.tmp ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.tmp
endif
	@if [ -f ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.ok; else cat ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.err; exit 1; fi
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_REAL_ICE=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf ${OBJECTFILES}        -Wl,--defsym=__MPLAB_BUILD=1,--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_REAL_ICE=1,--defsym=_min_heap_size=3000 
else
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf ${OBJECTFILES}        -Wl,--defsym=__MPLAB_BUILD=1,--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=3000
	${MP_CC_DIR}\\pic32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf  
endif


# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf:
	${RM} -r build/PIC32_460_GFXv3_EX16_16PMP_WQVGAv1
	${RM} -r dist/PIC32_460_GFXv3_EX16_16PMP_WQVGAv1

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
