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
CND_CONF=PIC_SK_GFXv3e_8PMP_VGA
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
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1687970324/SST25VF016.o ${OBJECTDIR}/_ext/1687970324/TouchScreen.o ${OBJECTDIR}/_ext/1687970324/TouchScreenAR1020.o ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o ${OBJECTDIR}/_ext/1687970324/drv_spi.o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ${OBJECTDIR}/_ext/803622919/AnalogClock.o ${OBJECTDIR}/_ext/803622919/Button.o ${OBJECTDIR}/_ext/803622919/Chart.o ${OBJECTDIR}/_ext/803622919/EditBox.o ${OBJECTDIR}/_ext/803622919/GOL.o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o ${OBJECTDIR}/_ext/803622919/GroupBox.o ${OBJECTDIR}/_ext/803622919/Primitive.o ${OBJECTDIR}/_ext/803622919/RadioButton.o ${OBJECTDIR}/_ext/1919882987/S1D13517.o ${OBJECTDIR}/_ext/803622919/StaticText.o ${OBJECTDIR}/_ext/803622919/Transitions.o ${OBJECTDIR}/_ext/803622919/Transitions_weak.o ${OBJECTDIR}/_ext/1919882987/gfxepmp.o ${OBJECTDIR}/_ext/1472/InternalResourceC32.o ${OBJECTDIR}/_ext/1472/alpha_blend_screen.o ${OBJECTDIR}/_ext/1472/comfort_screen.o ${OBJECTDIR}/_ext/1472/config_screen.o ${OBJECTDIR}/_ext/1472/energy_screen.o ${OBJECTDIR}/_ext/1472/gradient_screen.o ${OBJECTDIR}/_ext/1472/info_screen.o ${OBJECTDIR}/_ext/1472/lighting_screen.o ${OBJECTDIR}/_ext/1472/main_screen.o ${OBJECTDIR}/_ext/1472/panel_screen.o ${OBJECTDIR}/_ext/1472/performance_screen.o ${OBJECTDIR}/_ext/1472/pre_load_screen.o ${OBJECTDIR}/_ext/1472/security_screen.o ${OBJECTDIR}/_ext/1472/upload_screen.o ${OBJECTDIR}/_ext/1472/MainDemo.o ${OBJECTDIR}/_ext/1472/gfx_schemes.o ${OBJECTDIR}/_ext/1472/gfx_strings.o ${OBJECTDIR}/_ext/1472/gol_callbacks.o ${OBJECTDIR}/_ext/1472/timer_tick.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d ${OBJECTDIR}/_ext/1687970324/TouchScreenAR1020.o.d ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d ${OBJECTDIR}/_ext/803622919/AnalogClock.o.d ${OBJECTDIR}/_ext/803622919/Button.o.d ${OBJECTDIR}/_ext/803622919/Chart.o.d ${OBJECTDIR}/_ext/803622919/EditBox.o.d ${OBJECTDIR}/_ext/803622919/GOL.o.d ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d ${OBJECTDIR}/_ext/803622919/GroupBox.o.d ${OBJECTDIR}/_ext/803622919/Primitive.o.d ${OBJECTDIR}/_ext/803622919/RadioButton.o.d ${OBJECTDIR}/_ext/1919882987/S1D13517.o.d ${OBJECTDIR}/_ext/803622919/StaticText.o.d ${OBJECTDIR}/_ext/803622919/Transitions.o.d ${OBJECTDIR}/_ext/803622919/Transitions_weak.o.d ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d ${OBJECTDIR}/_ext/1472/InternalResourceC32.o.d ${OBJECTDIR}/_ext/1472/alpha_blend_screen.o.d ${OBJECTDIR}/_ext/1472/comfort_screen.o.d ${OBJECTDIR}/_ext/1472/config_screen.o.d ${OBJECTDIR}/_ext/1472/energy_screen.o.d ${OBJECTDIR}/_ext/1472/gradient_screen.o.d ${OBJECTDIR}/_ext/1472/info_screen.o.d ${OBJECTDIR}/_ext/1472/lighting_screen.o.d ${OBJECTDIR}/_ext/1472/main_screen.o.d ${OBJECTDIR}/_ext/1472/panel_screen.o.d ${OBJECTDIR}/_ext/1472/performance_screen.o.d ${OBJECTDIR}/_ext/1472/pre_load_screen.o.d ${OBJECTDIR}/_ext/1472/security_screen.o.d ${OBJECTDIR}/_ext/1472/upload_screen.o.d ${OBJECTDIR}/_ext/1472/MainDemo.o.d ${OBJECTDIR}/_ext/1472/gfx_schemes.o.d ${OBJECTDIR}/_ext/1472/gfx_strings.o.d ${OBJECTDIR}/_ext/1472/gol_callbacks.o.d ${OBJECTDIR}/_ext/1472/timer_tick.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1687970324/SST25VF016.o ${OBJECTDIR}/_ext/1687970324/TouchScreen.o ${OBJECTDIR}/_ext/1687970324/TouchScreenAR1020.o ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o ${OBJECTDIR}/_ext/1687970324/drv_spi.o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ${OBJECTDIR}/_ext/803622919/AnalogClock.o ${OBJECTDIR}/_ext/803622919/Button.o ${OBJECTDIR}/_ext/803622919/Chart.o ${OBJECTDIR}/_ext/803622919/EditBox.o ${OBJECTDIR}/_ext/803622919/GOL.o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o ${OBJECTDIR}/_ext/803622919/GroupBox.o ${OBJECTDIR}/_ext/803622919/Primitive.o ${OBJECTDIR}/_ext/803622919/RadioButton.o ${OBJECTDIR}/_ext/1919882987/S1D13517.o ${OBJECTDIR}/_ext/803622919/StaticText.o ${OBJECTDIR}/_ext/803622919/Transitions.o ${OBJECTDIR}/_ext/803622919/Transitions_weak.o ${OBJECTDIR}/_ext/1919882987/gfxepmp.o ${OBJECTDIR}/_ext/1472/InternalResourceC32.o ${OBJECTDIR}/_ext/1472/alpha_blend_screen.o ${OBJECTDIR}/_ext/1472/comfort_screen.o ${OBJECTDIR}/_ext/1472/config_screen.o ${OBJECTDIR}/_ext/1472/energy_screen.o ${OBJECTDIR}/_ext/1472/gradient_screen.o ${OBJECTDIR}/_ext/1472/info_screen.o ${OBJECTDIR}/_ext/1472/lighting_screen.o ${OBJECTDIR}/_ext/1472/main_screen.o ${OBJECTDIR}/_ext/1472/panel_screen.o ${OBJECTDIR}/_ext/1472/performance_screen.o ${OBJECTDIR}/_ext/1472/pre_load_screen.o ${OBJECTDIR}/_ext/1472/security_screen.o ${OBJECTDIR}/_ext/1472/upload_screen.o ${OBJECTDIR}/_ext/1472/MainDemo.o ${OBJECTDIR}/_ext/1472/gfx_schemes.o ${OBJECTDIR}/_ext/1472/gfx_strings.o ${OBJECTDIR}/_ext/1472/gol_callbacks.o ${OBJECTDIR}/_ext/1472/timer_tick.o


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
MP_CC="C:\Program Files\Microchip\mplabc32\v2.02\bin\pic32-gcc.exe"
# MP_BC is not defined
MP_AS="C:\Program Files\Microchip\mplabc32\v2.02\bin\pic32-as.exe"
MP_LD="C:\Program Files\Microchip\mplabc32\v2.02\bin\pic32-ld.exe"
MP_AR="C:\Program Files\Microchip\mplabc32\v2.02\bin\pic32-ar.exe"
DEP_GEN=${MP_JAVA_PATH}java -jar "C:/Program Files/Microchip/MPLABX/mplab_ide/mplab_ide/modules/../../bin/extractobjectdependencies.jar" 
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps
MP_CC_DIR="C:\Program Files\Microchip\mplabc32\v2.02\bin"
# MP_BC_DIR is not defined
MP_AS_DIR="C:\Program Files\Microchip\mplabc32\v2.02\bin"
MP_LD_DIR="C:\Program Files\Microchip\mplabc32\v2.02\bin"
MP_AR_DIR="C:\Program Files\Microchip\mplabc32\v2.02\bin"
# MP_BC_DIR is not defined

.build-conf:  ${BUILD_SUBPROJECTS}
	${MAKE}  -f nbproject/Makefile-PIC_SK_GFXv3e_8PMP_VGA.mk dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX795F512L
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
${OBJECTDIR}/_ext/1687970324/SST25VF016.o: ../../../Board\ Support\ Package/SST25VF016.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d" -o ${OBJECTDIR}/_ext/1687970324/SST25VF016.o "../../../Board Support Package/SST25VF016.c"  
	
${OBJECTDIR}/_ext/1687970324/TouchScreen.o: ../../../Board\ Support\ Package/TouchScreen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d" -o ${OBJECTDIR}/_ext/1687970324/TouchScreen.o "../../../Board Support Package/TouchScreen.c"  
	
${OBJECTDIR}/_ext/1687970324/TouchScreenAR1020.o: ../../../Board\ Support\ Package/TouchScreenAR1020.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenAR1020.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/TouchScreenAR1020.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1687970324/TouchScreenAR1020.o.d" -o ${OBJECTDIR}/_ext/1687970324/TouchScreenAR1020.o "../../../Board Support Package/TouchScreenAR1020.c"  
	
${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o: ../../../Board\ Support\ Package/TouchScreenResistive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d" -o ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o "../../../Board Support Package/TouchScreenResistive.c"  
	
${OBJECTDIR}/_ext/1687970324/drv_spi.o: ../../../Board\ Support\ Package/drv_spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/drv_spi.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1687970324/drv_spi.o.d" -o ${OBJECTDIR}/_ext/1687970324/drv_spi.o "../../../Board Support Package/drv_spi.c"  
	
${OBJECTDIR}/_ext/1860783399/TimeDelay.o: ../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1860783399 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d" -o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ../../../Microchip/Common/TimeDelay.c  
	
${OBJECTDIR}/_ext/803622919/AnalogClock.o: ../../../Microchip/Graphics/AnalogClock.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/AnalogClock.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/AnalogClock.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/803622919/AnalogClock.o.d" -o ${OBJECTDIR}/_ext/803622919/AnalogClock.o ../../../Microchip/Graphics/AnalogClock.c  
	
${OBJECTDIR}/_ext/803622919/Button.o: ../../../Microchip/Graphics/Button.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Button.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Button.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/803622919/Button.o.d" -o ${OBJECTDIR}/_ext/803622919/Button.o ../../../Microchip/Graphics/Button.c  
	
${OBJECTDIR}/_ext/803622919/Chart.o: ../../../Microchip/Graphics/Chart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Chart.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Chart.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/803622919/Chart.o.d" -o ${OBJECTDIR}/_ext/803622919/Chart.o ../../../Microchip/Graphics/Chart.c  
	
${OBJECTDIR}/_ext/803622919/EditBox.o: ../../../Microchip/Graphics/EditBox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/EditBox.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/EditBox.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/803622919/EditBox.o.d" -o ${OBJECTDIR}/_ext/803622919/EditBox.o ../../../Microchip/Graphics/EditBox.c  
	
${OBJECTDIR}/_ext/803622919/GOL.o: ../../../Microchip/Graphics/GOL.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOL.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/GOL.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/803622919/GOL.o.d" -o ${OBJECTDIR}/_ext/803622919/GOL.o ../../../Microchip/Graphics/GOL.c  
	
${OBJECTDIR}/_ext/803622919/GOLFontDefault.o: ../../../Microchip/Graphics/GOLFontDefault.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d" -o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ../../../Microchip/Graphics/GOLFontDefault.c  
	
${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o: ../../../Microchip/Graphics/GOLSchemeDefault.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d" -o ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o ../../../Microchip/Graphics/GOLSchemeDefault.c  
	
${OBJECTDIR}/_ext/803622919/GroupBox.o: ../../../Microchip/Graphics/GroupBox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/GroupBox.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/GroupBox.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/803622919/GroupBox.o.d" -o ${OBJECTDIR}/_ext/803622919/GroupBox.o ../../../Microchip/Graphics/GroupBox.c  
	
${OBJECTDIR}/_ext/803622919/Primitive.o: ../../../Microchip/Graphics/Primitive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Primitive.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/803622919/Primitive.o.d" -o ${OBJECTDIR}/_ext/803622919/Primitive.o ../../../Microchip/Graphics/Primitive.c  
	
${OBJECTDIR}/_ext/803622919/RadioButton.o: ../../../Microchip/Graphics/RadioButton.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/RadioButton.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/RadioButton.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/803622919/RadioButton.o.d" -o ${OBJECTDIR}/_ext/803622919/RadioButton.o ../../../Microchip/Graphics/RadioButton.c  
	
${OBJECTDIR}/_ext/1919882987/S1D13517.o: ../../../Microchip/Graphics/Drivers/S1D13517.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/S1D13517.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/S1D13517.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1919882987/S1D13517.o.d" -o ${OBJECTDIR}/_ext/1919882987/S1D13517.o ../../../Microchip/Graphics/Drivers/S1D13517.c  
	
${OBJECTDIR}/_ext/803622919/StaticText.o: ../../../Microchip/Graphics/StaticText.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/StaticText.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/StaticText.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/803622919/StaticText.o.d" -o ${OBJECTDIR}/_ext/803622919/StaticText.o ../../../Microchip/Graphics/StaticText.c  
	
${OBJECTDIR}/_ext/803622919/Transitions.o: ../../../Microchip/Graphics/Transitions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Transitions.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Transitions.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/803622919/Transitions.o.d" -o ${OBJECTDIR}/_ext/803622919/Transitions.o ../../../Microchip/Graphics/Transitions.c  
	
${OBJECTDIR}/_ext/803622919/Transitions_weak.o: ../../../Microchip/Graphics/Transitions_weak.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Transitions_weak.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Transitions_weak.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/803622919/Transitions_weak.o.d" -o ${OBJECTDIR}/_ext/803622919/Transitions_weak.o ../../../Microchip/Graphics/Transitions_weak.c  
	
${OBJECTDIR}/_ext/1919882987/gfxepmp.o: ../../../Microchip/Graphics/Drivers/gfxepmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d" -o ${OBJECTDIR}/_ext/1919882987/gfxepmp.o ../../../Microchip/Graphics/Drivers/gfxepmp.c  
	
${OBJECTDIR}/_ext/1472/InternalResourceC32.o: ../InternalResourceC32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/InternalResourceC32.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/InternalResourceC32.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/InternalResourceC32.o.d" -o ${OBJECTDIR}/_ext/1472/InternalResourceC32.o ../InternalResourceC32.c  
	
${OBJECTDIR}/_ext/1472/alpha_blend_screen.o: ../alpha_blend_screen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/alpha_blend_screen.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/alpha_blend_screen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/alpha_blend_screen.o.d" -o ${OBJECTDIR}/_ext/1472/alpha_blend_screen.o ../alpha_blend_screen.c  
	
${OBJECTDIR}/_ext/1472/comfort_screen.o: ../comfort_screen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/comfort_screen.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/comfort_screen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/comfort_screen.o.d" -o ${OBJECTDIR}/_ext/1472/comfort_screen.o ../comfort_screen.c  
	
${OBJECTDIR}/_ext/1472/config_screen.o: ../config_screen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/config_screen.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/config_screen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/config_screen.o.d" -o ${OBJECTDIR}/_ext/1472/config_screen.o ../config_screen.c  
	
${OBJECTDIR}/_ext/1472/energy_screen.o: ../energy_screen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/energy_screen.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/energy_screen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/energy_screen.o.d" -o ${OBJECTDIR}/_ext/1472/energy_screen.o ../energy_screen.c  
	
${OBJECTDIR}/_ext/1472/gradient_screen.o: ../gradient_screen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/gradient_screen.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/gradient_screen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/gradient_screen.o.d" -o ${OBJECTDIR}/_ext/1472/gradient_screen.o ../gradient_screen.c  
	
${OBJECTDIR}/_ext/1472/info_screen.o: ../info_screen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/info_screen.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/info_screen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/info_screen.o.d" -o ${OBJECTDIR}/_ext/1472/info_screen.o ../info_screen.c  
	
${OBJECTDIR}/_ext/1472/lighting_screen.o: ../lighting_screen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/lighting_screen.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/lighting_screen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/lighting_screen.o.d" -o ${OBJECTDIR}/_ext/1472/lighting_screen.o ../lighting_screen.c  
	
${OBJECTDIR}/_ext/1472/main_screen.o: ../main_screen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/main_screen.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/main_screen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/main_screen.o.d" -o ${OBJECTDIR}/_ext/1472/main_screen.o ../main_screen.c  
	
${OBJECTDIR}/_ext/1472/panel_screen.o: ../panel_screen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/panel_screen.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/panel_screen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/panel_screen.o.d" -o ${OBJECTDIR}/_ext/1472/panel_screen.o ../panel_screen.c  
	
${OBJECTDIR}/_ext/1472/performance_screen.o: ../performance_screen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/performance_screen.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/performance_screen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/performance_screen.o.d" -o ${OBJECTDIR}/_ext/1472/performance_screen.o ../performance_screen.c  
	
${OBJECTDIR}/_ext/1472/pre_load_screen.o: ../pre_load_screen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/pre_load_screen.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/pre_load_screen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/pre_load_screen.o.d" -o ${OBJECTDIR}/_ext/1472/pre_load_screen.o ../pre_load_screen.c  
	
${OBJECTDIR}/_ext/1472/security_screen.o: ../security_screen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/security_screen.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/security_screen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/security_screen.o.d" -o ${OBJECTDIR}/_ext/1472/security_screen.o ../security_screen.c  
	
${OBJECTDIR}/_ext/1472/upload_screen.o: ../upload_screen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/upload_screen.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/upload_screen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/upload_screen.o.d" -o ${OBJECTDIR}/_ext/1472/upload_screen.o ../upload_screen.c  
	
${OBJECTDIR}/_ext/1472/MainDemo.o: ../MainDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/MainDemo.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/MainDemo.o.d" -o ${OBJECTDIR}/_ext/1472/MainDemo.o ../MainDemo.c  
	
${OBJECTDIR}/_ext/1472/gfx_schemes.o: ../gfx_schemes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/gfx_schemes.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/gfx_schemes.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/gfx_schemes.o.d" -o ${OBJECTDIR}/_ext/1472/gfx_schemes.o ../gfx_schemes.c  
	
${OBJECTDIR}/_ext/1472/gfx_strings.o: ../gfx_strings.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/gfx_strings.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/gfx_strings.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/gfx_strings.o.d" -o ${OBJECTDIR}/_ext/1472/gfx_strings.o ../gfx_strings.c  
	
${OBJECTDIR}/_ext/1472/gol_callbacks.o: ../gol_callbacks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/gol_callbacks.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/gol_callbacks.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/gol_callbacks.o.d" -o ${OBJECTDIR}/_ext/1472/gol_callbacks.o ../gol_callbacks.c  
	
${OBJECTDIR}/_ext/1472/timer_tick.o: ../timer_tick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/timer_tick.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/timer_tick.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/timer_tick.o.d" -o ${OBJECTDIR}/_ext/1472/timer_tick.o ../timer_tick.c  
	
else
${OBJECTDIR}/_ext/1687970324/SST25VF016.o: ../../../Board\ Support\ Package/SST25VF016.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d" -o ${OBJECTDIR}/_ext/1687970324/SST25VF016.o "../../../Board Support Package/SST25VF016.c"  
	
${OBJECTDIR}/_ext/1687970324/TouchScreen.o: ../../../Board\ Support\ Package/TouchScreen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d" -o ${OBJECTDIR}/_ext/1687970324/TouchScreen.o "../../../Board Support Package/TouchScreen.c"  
	
${OBJECTDIR}/_ext/1687970324/TouchScreenAR1020.o: ../../../Board\ Support\ Package/TouchScreenAR1020.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenAR1020.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/TouchScreenAR1020.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1687970324/TouchScreenAR1020.o.d" -o ${OBJECTDIR}/_ext/1687970324/TouchScreenAR1020.o "../../../Board Support Package/TouchScreenAR1020.c"  
	
${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o: ../../../Board\ Support\ Package/TouchScreenResistive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d" -o ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o "../../../Board Support Package/TouchScreenResistive.c"  
	
${OBJECTDIR}/_ext/1687970324/drv_spi.o: ../../../Board\ Support\ Package/drv_spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/drv_spi.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1687970324/drv_spi.o.d" -o ${OBJECTDIR}/_ext/1687970324/drv_spi.o "../../../Board Support Package/drv_spi.c"  
	
${OBJECTDIR}/_ext/1860783399/TimeDelay.o: ../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1860783399 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d" -o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ../../../Microchip/Common/TimeDelay.c  
	
${OBJECTDIR}/_ext/803622919/AnalogClock.o: ../../../Microchip/Graphics/AnalogClock.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/AnalogClock.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/AnalogClock.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/803622919/AnalogClock.o.d" -o ${OBJECTDIR}/_ext/803622919/AnalogClock.o ../../../Microchip/Graphics/AnalogClock.c  
	
${OBJECTDIR}/_ext/803622919/Button.o: ../../../Microchip/Graphics/Button.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Button.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Button.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/803622919/Button.o.d" -o ${OBJECTDIR}/_ext/803622919/Button.o ../../../Microchip/Graphics/Button.c  
	
${OBJECTDIR}/_ext/803622919/Chart.o: ../../../Microchip/Graphics/Chart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Chart.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Chart.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/803622919/Chart.o.d" -o ${OBJECTDIR}/_ext/803622919/Chart.o ../../../Microchip/Graphics/Chart.c  
	
${OBJECTDIR}/_ext/803622919/EditBox.o: ../../../Microchip/Graphics/EditBox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/EditBox.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/EditBox.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/803622919/EditBox.o.d" -o ${OBJECTDIR}/_ext/803622919/EditBox.o ../../../Microchip/Graphics/EditBox.c  
	
${OBJECTDIR}/_ext/803622919/GOL.o: ../../../Microchip/Graphics/GOL.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOL.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/GOL.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/803622919/GOL.o.d" -o ${OBJECTDIR}/_ext/803622919/GOL.o ../../../Microchip/Graphics/GOL.c  
	
${OBJECTDIR}/_ext/803622919/GOLFontDefault.o: ../../../Microchip/Graphics/GOLFontDefault.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d" -o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ../../../Microchip/Graphics/GOLFontDefault.c  
	
${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o: ../../../Microchip/Graphics/GOLSchemeDefault.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d" -o ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o ../../../Microchip/Graphics/GOLSchemeDefault.c  
	
${OBJECTDIR}/_ext/803622919/GroupBox.o: ../../../Microchip/Graphics/GroupBox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/GroupBox.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/GroupBox.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/803622919/GroupBox.o.d" -o ${OBJECTDIR}/_ext/803622919/GroupBox.o ../../../Microchip/Graphics/GroupBox.c  
	
${OBJECTDIR}/_ext/803622919/Primitive.o: ../../../Microchip/Graphics/Primitive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Primitive.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/803622919/Primitive.o.d" -o ${OBJECTDIR}/_ext/803622919/Primitive.o ../../../Microchip/Graphics/Primitive.c  
	
${OBJECTDIR}/_ext/803622919/RadioButton.o: ../../../Microchip/Graphics/RadioButton.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/RadioButton.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/RadioButton.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/803622919/RadioButton.o.d" -o ${OBJECTDIR}/_ext/803622919/RadioButton.o ../../../Microchip/Graphics/RadioButton.c  
	
${OBJECTDIR}/_ext/1919882987/S1D13517.o: ../../../Microchip/Graphics/Drivers/S1D13517.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/S1D13517.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/S1D13517.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1919882987/S1D13517.o.d" -o ${OBJECTDIR}/_ext/1919882987/S1D13517.o ../../../Microchip/Graphics/Drivers/S1D13517.c  
	
${OBJECTDIR}/_ext/803622919/StaticText.o: ../../../Microchip/Graphics/StaticText.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/StaticText.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/StaticText.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/803622919/StaticText.o.d" -o ${OBJECTDIR}/_ext/803622919/StaticText.o ../../../Microchip/Graphics/StaticText.c  
	
${OBJECTDIR}/_ext/803622919/Transitions.o: ../../../Microchip/Graphics/Transitions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Transitions.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Transitions.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/803622919/Transitions.o.d" -o ${OBJECTDIR}/_ext/803622919/Transitions.o ../../../Microchip/Graphics/Transitions.c  
	
${OBJECTDIR}/_ext/803622919/Transitions_weak.o: ../../../Microchip/Graphics/Transitions_weak.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Transitions_weak.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Transitions_weak.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/803622919/Transitions_weak.o.d" -o ${OBJECTDIR}/_ext/803622919/Transitions_weak.o ../../../Microchip/Graphics/Transitions_weak.c  
	
${OBJECTDIR}/_ext/1919882987/gfxepmp.o: ../../../Microchip/Graphics/Drivers/gfxepmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d" -o ${OBJECTDIR}/_ext/1919882987/gfxepmp.o ../../../Microchip/Graphics/Drivers/gfxepmp.c  
	
${OBJECTDIR}/_ext/1472/InternalResourceC32.o: ../InternalResourceC32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/InternalResourceC32.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/InternalResourceC32.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/InternalResourceC32.o.d" -o ${OBJECTDIR}/_ext/1472/InternalResourceC32.o ../InternalResourceC32.c  
	
${OBJECTDIR}/_ext/1472/alpha_blend_screen.o: ../alpha_blend_screen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/alpha_blend_screen.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/alpha_blend_screen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/alpha_blend_screen.o.d" -o ${OBJECTDIR}/_ext/1472/alpha_blend_screen.o ../alpha_blend_screen.c  
	
${OBJECTDIR}/_ext/1472/comfort_screen.o: ../comfort_screen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/comfort_screen.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/comfort_screen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/comfort_screen.o.d" -o ${OBJECTDIR}/_ext/1472/comfort_screen.o ../comfort_screen.c  
	
${OBJECTDIR}/_ext/1472/config_screen.o: ../config_screen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/config_screen.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/config_screen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/config_screen.o.d" -o ${OBJECTDIR}/_ext/1472/config_screen.o ../config_screen.c  
	
${OBJECTDIR}/_ext/1472/energy_screen.o: ../energy_screen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/energy_screen.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/energy_screen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/energy_screen.o.d" -o ${OBJECTDIR}/_ext/1472/energy_screen.o ../energy_screen.c  
	
${OBJECTDIR}/_ext/1472/gradient_screen.o: ../gradient_screen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/gradient_screen.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/gradient_screen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/gradient_screen.o.d" -o ${OBJECTDIR}/_ext/1472/gradient_screen.o ../gradient_screen.c  
	
${OBJECTDIR}/_ext/1472/info_screen.o: ../info_screen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/info_screen.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/info_screen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/info_screen.o.d" -o ${OBJECTDIR}/_ext/1472/info_screen.o ../info_screen.c  
	
${OBJECTDIR}/_ext/1472/lighting_screen.o: ../lighting_screen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/lighting_screen.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/lighting_screen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/lighting_screen.o.d" -o ${OBJECTDIR}/_ext/1472/lighting_screen.o ../lighting_screen.c  
	
${OBJECTDIR}/_ext/1472/main_screen.o: ../main_screen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/main_screen.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/main_screen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/main_screen.o.d" -o ${OBJECTDIR}/_ext/1472/main_screen.o ../main_screen.c  
	
${OBJECTDIR}/_ext/1472/panel_screen.o: ../panel_screen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/panel_screen.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/panel_screen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/panel_screen.o.d" -o ${OBJECTDIR}/_ext/1472/panel_screen.o ../panel_screen.c  
	
${OBJECTDIR}/_ext/1472/performance_screen.o: ../performance_screen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/performance_screen.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/performance_screen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/performance_screen.o.d" -o ${OBJECTDIR}/_ext/1472/performance_screen.o ../performance_screen.c  
	
${OBJECTDIR}/_ext/1472/pre_load_screen.o: ../pre_load_screen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/pre_load_screen.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/pre_load_screen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/pre_load_screen.o.d" -o ${OBJECTDIR}/_ext/1472/pre_load_screen.o ../pre_load_screen.c  
	
${OBJECTDIR}/_ext/1472/security_screen.o: ../security_screen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/security_screen.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/security_screen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/security_screen.o.d" -o ${OBJECTDIR}/_ext/1472/security_screen.o ../security_screen.c  
	
${OBJECTDIR}/_ext/1472/upload_screen.o: ../upload_screen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/upload_screen.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/upload_screen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/upload_screen.o.d" -o ${OBJECTDIR}/_ext/1472/upload_screen.o ../upload_screen.c  
	
${OBJECTDIR}/_ext/1472/MainDemo.o: ../MainDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/MainDemo.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/MainDemo.o.d" -o ${OBJECTDIR}/_ext/1472/MainDemo.o ../MainDemo.c  
	
${OBJECTDIR}/_ext/1472/gfx_schemes.o: ../gfx_schemes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/gfx_schemes.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/gfx_schemes.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/gfx_schemes.o.d" -o ${OBJECTDIR}/_ext/1472/gfx_schemes.o ../gfx_schemes.c  
	
${OBJECTDIR}/_ext/1472/gfx_strings.o: ../gfx_strings.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/gfx_strings.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/gfx_strings.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/gfx_strings.o.d" -o ${OBJECTDIR}/_ext/1472/gfx_strings.o ../gfx_strings.c  
	
${OBJECTDIR}/_ext/1472/gol_callbacks.o: ../gol_callbacks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/gol_callbacks.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/gol_callbacks.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/gol_callbacks.o.d" -o ${OBJECTDIR}/_ext/1472/gol_callbacks.o ../gol_callbacks.c  
	
${OBJECTDIR}/_ext/1472/timer_tick.o: ../timer_tick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/timer_tick.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/timer_tick.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC_SK_8PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/timer_tick.o.d" -o ${OBJECTDIR}/_ext/1472/timer_tick.o ../timer_tick.c  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_REAL_ICE=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}        -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_REAL_ICE=1,--defsym=_min_heap_size=4000,--defsym=_min_stack_size=4000,--report-mem "-mperipheral-libs" 
else
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}        -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=4000,--defsym=_min_stack_size=4000,--report-mem "-mperipheral-libs"
	${MP_CC_DIR}\\pic32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  
endif


# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf:
	${RM} -r build/PIC_SK_GFXv3e_8PMP_VGA
	${RM} -r dist/PIC_SK_GFXv3e_8PMP_VGA

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
