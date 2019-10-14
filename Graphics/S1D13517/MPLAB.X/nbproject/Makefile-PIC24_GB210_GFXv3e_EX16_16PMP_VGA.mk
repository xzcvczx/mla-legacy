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
CND_CONF=PIC24_GB210_GFXv3e_EX16_16PMP_VGA
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
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1687970324/SST25VF016.o ${OBJECTDIR}/_ext/1687970324/TouchScreen.o ${OBJECTDIR}/_ext/1687970324/TouchScreenAR1020.o ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o ${OBJECTDIR}/_ext/1687970324/drv_spi.o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ${OBJECTDIR}/_ext/803622919/AnalogClock.o ${OBJECTDIR}/_ext/803622919/Button.o ${OBJECTDIR}/_ext/803622919/Chart.o ${OBJECTDIR}/_ext/803622919/EditBox.o ${OBJECTDIR}/_ext/803622919/GOL.o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o ${OBJECTDIR}/_ext/803622919/GroupBox.o ${OBJECTDIR}/_ext/803622919/Primitive.o ${OBJECTDIR}/_ext/803622919/RadioButton.o ${OBJECTDIR}/_ext/1919882987/S1D13517.o ${OBJECTDIR}/_ext/803622919/StaticText.o ${OBJECTDIR}/_ext/803622919/Transitions.o ${OBJECTDIR}/_ext/803622919/Transitions_weak.o ${OBJECTDIR}/_ext/1919882987/gfxepmp.o ${OBJECTDIR}/_ext/1472/ExternalResource.o ${OBJECTDIR}/_ext/1472/InternalResourceC30.o ${OBJECTDIR}/_ext/1472/alpha_blend_screen.o ${OBJECTDIR}/_ext/1472/comfort_screen.o ${OBJECTDIR}/_ext/1472/config_screen.o ${OBJECTDIR}/_ext/1472/energy_screen.o ${OBJECTDIR}/_ext/1472/gradient_screen.o ${OBJECTDIR}/_ext/1472/info_screen.o ${OBJECTDIR}/_ext/1472/lighting_screen.o ${OBJECTDIR}/_ext/1472/main_screen.o ${OBJECTDIR}/_ext/1472/panel_screen.o ${OBJECTDIR}/_ext/1472/performance_screen.o ${OBJECTDIR}/_ext/1472/pre_load_screen.o ${OBJECTDIR}/_ext/1472/security_screen.o ${OBJECTDIR}/_ext/1472/upload_screen.o ${OBJECTDIR}/_ext/1472/MainDemo.o ${OBJECTDIR}/_ext/1472/gfx_schemes.o ${OBJECTDIR}/_ext/1472/gfx_strings.o ${OBJECTDIR}/_ext/1472/gol_callbacks.o ${OBJECTDIR}/_ext/1472/timer_tick.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d ${OBJECTDIR}/_ext/1687970324/TouchScreenAR1020.o.d ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d ${OBJECTDIR}/_ext/803622919/AnalogClock.o.d ${OBJECTDIR}/_ext/803622919/Button.o.d ${OBJECTDIR}/_ext/803622919/Chart.o.d ${OBJECTDIR}/_ext/803622919/EditBox.o.d ${OBJECTDIR}/_ext/803622919/GOL.o.d ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d ${OBJECTDIR}/_ext/803622919/GroupBox.o.d ${OBJECTDIR}/_ext/803622919/Primitive.o.d ${OBJECTDIR}/_ext/803622919/RadioButton.o.d ${OBJECTDIR}/_ext/1919882987/S1D13517.o.d ${OBJECTDIR}/_ext/803622919/StaticText.o.d ${OBJECTDIR}/_ext/803622919/Transitions.o.d ${OBJECTDIR}/_ext/803622919/Transitions_weak.o.d ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d ${OBJECTDIR}/_ext/1472/ExternalResource.o.d ${OBJECTDIR}/_ext/1472/InternalResourceC30.o.d ${OBJECTDIR}/_ext/1472/alpha_blend_screen.o.d ${OBJECTDIR}/_ext/1472/comfort_screen.o.d ${OBJECTDIR}/_ext/1472/config_screen.o.d ${OBJECTDIR}/_ext/1472/energy_screen.o.d ${OBJECTDIR}/_ext/1472/gradient_screen.o.d ${OBJECTDIR}/_ext/1472/info_screen.o.d ${OBJECTDIR}/_ext/1472/lighting_screen.o.d ${OBJECTDIR}/_ext/1472/main_screen.o.d ${OBJECTDIR}/_ext/1472/panel_screen.o.d ${OBJECTDIR}/_ext/1472/performance_screen.o.d ${OBJECTDIR}/_ext/1472/pre_load_screen.o.d ${OBJECTDIR}/_ext/1472/security_screen.o.d ${OBJECTDIR}/_ext/1472/upload_screen.o.d ${OBJECTDIR}/_ext/1472/MainDemo.o.d ${OBJECTDIR}/_ext/1472/gfx_schemes.o.d ${OBJECTDIR}/_ext/1472/gfx_strings.o.d ${OBJECTDIR}/_ext/1472/gol_callbacks.o.d ${OBJECTDIR}/_ext/1472/timer_tick.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1687970324/SST25VF016.o ${OBJECTDIR}/_ext/1687970324/TouchScreen.o ${OBJECTDIR}/_ext/1687970324/TouchScreenAR1020.o ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o ${OBJECTDIR}/_ext/1687970324/drv_spi.o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ${OBJECTDIR}/_ext/803622919/AnalogClock.o ${OBJECTDIR}/_ext/803622919/Button.o ${OBJECTDIR}/_ext/803622919/Chart.o ${OBJECTDIR}/_ext/803622919/EditBox.o ${OBJECTDIR}/_ext/803622919/GOL.o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o ${OBJECTDIR}/_ext/803622919/GroupBox.o ${OBJECTDIR}/_ext/803622919/Primitive.o ${OBJECTDIR}/_ext/803622919/RadioButton.o ${OBJECTDIR}/_ext/1919882987/S1D13517.o ${OBJECTDIR}/_ext/803622919/StaticText.o ${OBJECTDIR}/_ext/803622919/Transitions.o ${OBJECTDIR}/_ext/803622919/Transitions_weak.o ${OBJECTDIR}/_ext/1919882987/gfxepmp.o ${OBJECTDIR}/_ext/1472/ExternalResource.o ${OBJECTDIR}/_ext/1472/InternalResourceC30.o ${OBJECTDIR}/_ext/1472/alpha_blend_screen.o ${OBJECTDIR}/_ext/1472/comfort_screen.o ${OBJECTDIR}/_ext/1472/config_screen.o ${OBJECTDIR}/_ext/1472/energy_screen.o ${OBJECTDIR}/_ext/1472/gradient_screen.o ${OBJECTDIR}/_ext/1472/info_screen.o ${OBJECTDIR}/_ext/1472/lighting_screen.o ${OBJECTDIR}/_ext/1472/main_screen.o ${OBJECTDIR}/_ext/1472/panel_screen.o ${OBJECTDIR}/_ext/1472/performance_screen.o ${OBJECTDIR}/_ext/1472/pre_load_screen.o ${OBJECTDIR}/_ext/1472/security_screen.o ${OBJECTDIR}/_ext/1472/upload_screen.o ${OBJECTDIR}/_ext/1472/MainDemo.o ${OBJECTDIR}/_ext/1472/gfx_schemes.o ${OBJECTDIR}/_ext/1472/gfx_strings.o ${OBJECTDIR}/_ext/1472/gol_callbacks.o ${OBJECTDIR}/_ext/1472/timer_tick.o


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
	${MAKE}  -f nbproject/Makefile-PIC24_GB210_GFXv3e_EX16_16PMP_VGA.mk dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ256GB210
MP_LINKER_FILE_OPTION=,-Tp24FJ256GB210.gld
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
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.ok ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d" -o ${OBJECTDIR}/_ext/1687970324/SST25VF016.o "../../../Board Support Package/SST25VF016.c"  
	
${OBJECTDIR}/_ext/1687970324/TouchScreen.o: ../../../Board\ Support\ Package/TouchScreen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.ok ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d" -o ${OBJECTDIR}/_ext/1687970324/TouchScreen.o "../../../Board Support Package/TouchScreen.c"  
	
${OBJECTDIR}/_ext/1687970324/TouchScreenAR1020.o: ../../../Board\ Support\ Package/TouchScreenAR1020.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenAR1020.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenAR1020.o.ok ${OBJECTDIR}/_ext/1687970324/TouchScreenAR1020.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/TouchScreenAR1020.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1687970324/TouchScreenAR1020.o.d" -o ${OBJECTDIR}/_ext/1687970324/TouchScreenAR1020.o "../../../Board Support Package/TouchScreenAR1020.c"  
	
${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o: ../../../Board\ Support\ Package/TouchScreenResistive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.ok ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d" -o ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o "../../../Board Support Package/TouchScreenResistive.c"  
	
${OBJECTDIR}/_ext/1687970324/drv_spi.o: ../../../Board\ Support\ Package/drv_spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.ok ${OBJECTDIR}/_ext/1687970324/drv_spi.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/drv_spi.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1687970324/drv_spi.o.d" -o ${OBJECTDIR}/_ext/1687970324/drv_spi.o "../../../Board Support Package/drv_spi.c"  
	
${OBJECTDIR}/_ext/1860783399/TimeDelay.o: ../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1860783399 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.ok ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d" -o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ../../../Microchip/Common/TimeDelay.c  
	
${OBJECTDIR}/_ext/803622919/AnalogClock.o: ../../../Microchip/Graphics/AnalogClock.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/AnalogClock.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/AnalogClock.o.ok ${OBJECTDIR}/_ext/803622919/AnalogClock.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/AnalogClock.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/803622919/AnalogClock.o.d" -o ${OBJECTDIR}/_ext/803622919/AnalogClock.o ../../../Microchip/Graphics/AnalogClock.c  
	
${OBJECTDIR}/_ext/803622919/Button.o: ../../../Microchip/Graphics/Button.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Button.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Button.o.ok ${OBJECTDIR}/_ext/803622919/Button.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Button.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/Button.o.d" -o ${OBJECTDIR}/_ext/803622919/Button.o ../../../Microchip/Graphics/Button.c  
	
${OBJECTDIR}/_ext/803622919/Chart.o: ../../../Microchip/Graphics/Chart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Chart.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Chart.o.ok ${OBJECTDIR}/_ext/803622919/Chart.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Chart.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/Chart.o.d" -o ${OBJECTDIR}/_ext/803622919/Chart.o ../../../Microchip/Graphics/Chart.c  
	
${OBJECTDIR}/_ext/803622919/EditBox.o: ../../../Microchip/Graphics/EditBox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/EditBox.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/EditBox.o.ok ${OBJECTDIR}/_ext/803622919/EditBox.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/EditBox.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/EditBox.o.d" -o ${OBJECTDIR}/_ext/803622919/EditBox.o ../../../Microchip/Graphics/EditBox.c  
	
${OBJECTDIR}/_ext/803622919/GOL.o: ../../../Microchip/Graphics/GOL.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOL.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOL.o.ok ${OBJECTDIR}/_ext/803622919/GOL.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/GOL.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/GOL.o.d" -o ${OBJECTDIR}/_ext/803622919/GOL.o ../../../Microchip/Graphics/GOL.c  
	
${OBJECTDIR}/_ext/803622919/GOLFontDefault.o: ../../../Microchip/Graphics/GOLFontDefault.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.ok ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d" -o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ../../../Microchip/Graphics/GOLFontDefault.c  
	
${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o: ../../../Microchip/Graphics/GOLSchemeDefault.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.ok ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d" -o ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o ../../../Microchip/Graphics/GOLSchemeDefault.c  
	
${OBJECTDIR}/_ext/803622919/GroupBox.o: ../../../Microchip/Graphics/GroupBox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/GroupBox.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/GroupBox.o.ok ${OBJECTDIR}/_ext/803622919/GroupBox.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/GroupBox.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/GroupBox.o.d" -o ${OBJECTDIR}/_ext/803622919/GroupBox.o ../../../Microchip/Graphics/GroupBox.c  
	
${OBJECTDIR}/_ext/803622919/Primitive.o: ../../../Microchip/Graphics/Primitive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.ok ${OBJECTDIR}/_ext/803622919/Primitive.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Primitive.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/Primitive.o.d" -o ${OBJECTDIR}/_ext/803622919/Primitive.o ../../../Microchip/Graphics/Primitive.c  
	
${OBJECTDIR}/_ext/803622919/RadioButton.o: ../../../Microchip/Graphics/RadioButton.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/RadioButton.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/RadioButton.o.ok ${OBJECTDIR}/_ext/803622919/RadioButton.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/RadioButton.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/RadioButton.o.d" -o ${OBJECTDIR}/_ext/803622919/RadioButton.o ../../../Microchip/Graphics/RadioButton.c  
	
${OBJECTDIR}/_ext/1919882987/S1D13517.o: ../../../Microchip/Graphics/Drivers/S1D13517.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/S1D13517.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/S1D13517.o.ok ${OBJECTDIR}/_ext/1919882987/S1D13517.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/S1D13517.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/S1D13517.o.d" -o ${OBJECTDIR}/_ext/1919882987/S1D13517.o ../../../Microchip/Graphics/Drivers/S1D13517.c  
	
${OBJECTDIR}/_ext/803622919/StaticText.o: ../../../Microchip/Graphics/StaticText.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/StaticText.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/StaticText.o.ok ${OBJECTDIR}/_ext/803622919/StaticText.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/StaticText.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/StaticText.o.d" -o ${OBJECTDIR}/_ext/803622919/StaticText.o ../../../Microchip/Graphics/StaticText.c  
	
${OBJECTDIR}/_ext/803622919/Transitions.o: ../../../Microchip/Graphics/Transitions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Transitions.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Transitions.o.ok ${OBJECTDIR}/_ext/803622919/Transitions.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Transitions.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/Transitions.o.d" -o ${OBJECTDIR}/_ext/803622919/Transitions.o ../../../Microchip/Graphics/Transitions.c  
	
${OBJECTDIR}/_ext/803622919/Transitions_weak.o: ../../../Microchip/Graphics/Transitions_weak.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Transitions_weak.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Transitions_weak.o.ok ${OBJECTDIR}/_ext/803622919/Transitions_weak.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Transitions_weak.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/Transitions_weak.o.d" -o ${OBJECTDIR}/_ext/803622919/Transitions_weak.o ../../../Microchip/Graphics/Transitions_weak.c  
	
${OBJECTDIR}/_ext/1919882987/gfxepmp.o: ../../../Microchip/Graphics/Drivers/gfxepmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.ok ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d" -o ${OBJECTDIR}/_ext/1919882987/gfxepmp.o ../../../Microchip/Graphics/Drivers/gfxepmp.c  
	
${OBJECTDIR}/_ext/1472/ExternalResource.o: ../ExternalResource.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/ExternalResource.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/ExternalResource.o.ok ${OBJECTDIR}/_ext/1472/ExternalResource.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/ExternalResource.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/ExternalResource.o.d" -o ${OBJECTDIR}/_ext/1472/ExternalResource.o ../ExternalResource.c  
	
${OBJECTDIR}/_ext/1472/InternalResourceC30.o: ../InternalResourceC30.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/InternalResourceC30.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/InternalResourceC30.o.ok ${OBJECTDIR}/_ext/1472/InternalResourceC30.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/InternalResourceC30.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/InternalResourceC30.o.d" -o ${OBJECTDIR}/_ext/1472/InternalResourceC30.o ../InternalResourceC30.c  
	
${OBJECTDIR}/_ext/1472/alpha_blend_screen.o: ../alpha_blend_screen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/alpha_blend_screen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/alpha_blend_screen.o.ok ${OBJECTDIR}/_ext/1472/alpha_blend_screen.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/alpha_blend_screen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/alpha_blend_screen.o.d" -o ${OBJECTDIR}/_ext/1472/alpha_blend_screen.o ../alpha_blend_screen.c  
	
${OBJECTDIR}/_ext/1472/comfort_screen.o: ../comfort_screen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/comfort_screen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/comfort_screen.o.ok ${OBJECTDIR}/_ext/1472/comfort_screen.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/comfort_screen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/comfort_screen.o.d" -o ${OBJECTDIR}/_ext/1472/comfort_screen.o ../comfort_screen.c  
	
${OBJECTDIR}/_ext/1472/config_screen.o: ../config_screen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/config_screen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/config_screen.o.ok ${OBJECTDIR}/_ext/1472/config_screen.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/config_screen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/config_screen.o.d" -o ${OBJECTDIR}/_ext/1472/config_screen.o ../config_screen.c  
	
${OBJECTDIR}/_ext/1472/energy_screen.o: ../energy_screen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/energy_screen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/energy_screen.o.ok ${OBJECTDIR}/_ext/1472/energy_screen.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/energy_screen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/energy_screen.o.d" -o ${OBJECTDIR}/_ext/1472/energy_screen.o ../energy_screen.c  
	
${OBJECTDIR}/_ext/1472/gradient_screen.o: ../gradient_screen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/gradient_screen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/gradient_screen.o.ok ${OBJECTDIR}/_ext/1472/gradient_screen.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/gradient_screen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/gradient_screen.o.d" -o ${OBJECTDIR}/_ext/1472/gradient_screen.o ../gradient_screen.c  
	
${OBJECTDIR}/_ext/1472/info_screen.o: ../info_screen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/info_screen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/info_screen.o.ok ${OBJECTDIR}/_ext/1472/info_screen.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/info_screen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/info_screen.o.d" -o ${OBJECTDIR}/_ext/1472/info_screen.o ../info_screen.c  
	
${OBJECTDIR}/_ext/1472/lighting_screen.o: ../lighting_screen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/lighting_screen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/lighting_screen.o.ok ${OBJECTDIR}/_ext/1472/lighting_screen.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/lighting_screen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/lighting_screen.o.d" -o ${OBJECTDIR}/_ext/1472/lighting_screen.o ../lighting_screen.c  
	
${OBJECTDIR}/_ext/1472/main_screen.o: ../main_screen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/main_screen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main_screen.o.ok ${OBJECTDIR}/_ext/1472/main_screen.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/main_screen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/main_screen.o.d" -o ${OBJECTDIR}/_ext/1472/main_screen.o ../main_screen.c  
	
${OBJECTDIR}/_ext/1472/panel_screen.o: ../panel_screen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/panel_screen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/panel_screen.o.ok ${OBJECTDIR}/_ext/1472/panel_screen.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/panel_screen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/panel_screen.o.d" -o ${OBJECTDIR}/_ext/1472/panel_screen.o ../panel_screen.c  
	
${OBJECTDIR}/_ext/1472/performance_screen.o: ../performance_screen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/performance_screen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/performance_screen.o.ok ${OBJECTDIR}/_ext/1472/performance_screen.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/performance_screen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/performance_screen.o.d" -o ${OBJECTDIR}/_ext/1472/performance_screen.o ../performance_screen.c  
	
${OBJECTDIR}/_ext/1472/pre_load_screen.o: ../pre_load_screen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/pre_load_screen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/pre_load_screen.o.ok ${OBJECTDIR}/_ext/1472/pre_load_screen.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/pre_load_screen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/pre_load_screen.o.d" -o ${OBJECTDIR}/_ext/1472/pre_load_screen.o ../pre_load_screen.c  
	
${OBJECTDIR}/_ext/1472/security_screen.o: ../security_screen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/security_screen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/security_screen.o.ok ${OBJECTDIR}/_ext/1472/security_screen.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/security_screen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/security_screen.o.d" -o ${OBJECTDIR}/_ext/1472/security_screen.o ../security_screen.c  
	
${OBJECTDIR}/_ext/1472/upload_screen.o: ../upload_screen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/upload_screen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/upload_screen.o.ok ${OBJECTDIR}/_ext/1472/upload_screen.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/upload_screen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/upload_screen.o.d" -o ${OBJECTDIR}/_ext/1472/upload_screen.o ../upload_screen.c  
	
${OBJECTDIR}/_ext/1472/MainDemo.o: ../MainDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.ok ${OBJECTDIR}/_ext/1472/MainDemo.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/MainDemo.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/MainDemo.o.d" -o ${OBJECTDIR}/_ext/1472/MainDemo.o ../MainDemo.c  
	
${OBJECTDIR}/_ext/1472/gfx_schemes.o: ../gfx_schemes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/gfx_schemes.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/gfx_schemes.o.ok ${OBJECTDIR}/_ext/1472/gfx_schemes.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/gfx_schemes.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/gfx_schemes.o.d" -o ${OBJECTDIR}/_ext/1472/gfx_schemes.o ../gfx_schemes.c  
	
${OBJECTDIR}/_ext/1472/gfx_strings.o: ../gfx_strings.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/gfx_strings.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/gfx_strings.o.ok ${OBJECTDIR}/_ext/1472/gfx_strings.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/gfx_strings.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/gfx_strings.o.d" -o ${OBJECTDIR}/_ext/1472/gfx_strings.o ../gfx_strings.c  
	
${OBJECTDIR}/_ext/1472/gol_callbacks.o: ../gol_callbacks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/gol_callbacks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/gol_callbacks.o.ok ${OBJECTDIR}/_ext/1472/gol_callbacks.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/gol_callbacks.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/gol_callbacks.o.d" -o ${OBJECTDIR}/_ext/1472/gol_callbacks.o ../gol_callbacks.c  
	
${OBJECTDIR}/_ext/1472/timer_tick.o: ../timer_tick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/timer_tick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/timer_tick.o.ok ${OBJECTDIR}/_ext/1472/timer_tick.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/timer_tick.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/timer_tick.o.d" -o ${OBJECTDIR}/_ext/1472/timer_tick.o ../timer_tick.c  
	
else
${OBJECTDIR}/_ext/1687970324/SST25VF016.o: ../../../Board\ Support\ Package/SST25VF016.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.ok ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d" -o ${OBJECTDIR}/_ext/1687970324/SST25VF016.o "../../../Board Support Package/SST25VF016.c"  
	
${OBJECTDIR}/_ext/1687970324/TouchScreen.o: ../../../Board\ Support\ Package/TouchScreen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.ok ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d" -o ${OBJECTDIR}/_ext/1687970324/TouchScreen.o "../../../Board Support Package/TouchScreen.c"  
	
${OBJECTDIR}/_ext/1687970324/TouchScreenAR1020.o: ../../../Board\ Support\ Package/TouchScreenAR1020.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenAR1020.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenAR1020.o.ok ${OBJECTDIR}/_ext/1687970324/TouchScreenAR1020.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/TouchScreenAR1020.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1687970324/TouchScreenAR1020.o.d" -o ${OBJECTDIR}/_ext/1687970324/TouchScreenAR1020.o "../../../Board Support Package/TouchScreenAR1020.c"  
	
${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o: ../../../Board\ Support\ Package/TouchScreenResistive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.ok ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d" -o ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o "../../../Board Support Package/TouchScreenResistive.c"  
	
${OBJECTDIR}/_ext/1687970324/drv_spi.o: ../../../Board\ Support\ Package/drv_spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.ok ${OBJECTDIR}/_ext/1687970324/drv_spi.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/drv_spi.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1687970324/drv_spi.o.d" -o ${OBJECTDIR}/_ext/1687970324/drv_spi.o "../../../Board Support Package/drv_spi.c"  
	
${OBJECTDIR}/_ext/1860783399/TimeDelay.o: ../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1860783399 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.ok ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d" -o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ../../../Microchip/Common/TimeDelay.c  
	
${OBJECTDIR}/_ext/803622919/AnalogClock.o: ../../../Microchip/Graphics/AnalogClock.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/AnalogClock.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/AnalogClock.o.ok ${OBJECTDIR}/_ext/803622919/AnalogClock.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/AnalogClock.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/803622919/AnalogClock.o.d" -o ${OBJECTDIR}/_ext/803622919/AnalogClock.o ../../../Microchip/Graphics/AnalogClock.c  
	
${OBJECTDIR}/_ext/803622919/Button.o: ../../../Microchip/Graphics/Button.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Button.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Button.o.ok ${OBJECTDIR}/_ext/803622919/Button.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Button.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/Button.o.d" -o ${OBJECTDIR}/_ext/803622919/Button.o ../../../Microchip/Graphics/Button.c  
	
${OBJECTDIR}/_ext/803622919/Chart.o: ../../../Microchip/Graphics/Chart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Chart.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Chart.o.ok ${OBJECTDIR}/_ext/803622919/Chart.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Chart.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/Chart.o.d" -o ${OBJECTDIR}/_ext/803622919/Chart.o ../../../Microchip/Graphics/Chart.c  
	
${OBJECTDIR}/_ext/803622919/EditBox.o: ../../../Microchip/Graphics/EditBox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/EditBox.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/EditBox.o.ok ${OBJECTDIR}/_ext/803622919/EditBox.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/EditBox.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/EditBox.o.d" -o ${OBJECTDIR}/_ext/803622919/EditBox.o ../../../Microchip/Graphics/EditBox.c  
	
${OBJECTDIR}/_ext/803622919/GOL.o: ../../../Microchip/Graphics/GOL.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOL.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOL.o.ok ${OBJECTDIR}/_ext/803622919/GOL.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/GOL.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/GOL.o.d" -o ${OBJECTDIR}/_ext/803622919/GOL.o ../../../Microchip/Graphics/GOL.c  
	
${OBJECTDIR}/_ext/803622919/GOLFontDefault.o: ../../../Microchip/Graphics/GOLFontDefault.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.ok ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d" -o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ../../../Microchip/Graphics/GOLFontDefault.c  
	
${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o: ../../../Microchip/Graphics/GOLSchemeDefault.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.ok ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d" -o ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o ../../../Microchip/Graphics/GOLSchemeDefault.c  
	
${OBJECTDIR}/_ext/803622919/GroupBox.o: ../../../Microchip/Graphics/GroupBox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/GroupBox.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/GroupBox.o.ok ${OBJECTDIR}/_ext/803622919/GroupBox.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/GroupBox.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/GroupBox.o.d" -o ${OBJECTDIR}/_ext/803622919/GroupBox.o ../../../Microchip/Graphics/GroupBox.c  
	
${OBJECTDIR}/_ext/803622919/Primitive.o: ../../../Microchip/Graphics/Primitive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.ok ${OBJECTDIR}/_ext/803622919/Primitive.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Primitive.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/Primitive.o.d" -o ${OBJECTDIR}/_ext/803622919/Primitive.o ../../../Microchip/Graphics/Primitive.c  
	
${OBJECTDIR}/_ext/803622919/RadioButton.o: ../../../Microchip/Graphics/RadioButton.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/RadioButton.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/RadioButton.o.ok ${OBJECTDIR}/_ext/803622919/RadioButton.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/RadioButton.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/RadioButton.o.d" -o ${OBJECTDIR}/_ext/803622919/RadioButton.o ../../../Microchip/Graphics/RadioButton.c  
	
${OBJECTDIR}/_ext/1919882987/S1D13517.o: ../../../Microchip/Graphics/Drivers/S1D13517.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/S1D13517.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/S1D13517.o.ok ${OBJECTDIR}/_ext/1919882987/S1D13517.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/S1D13517.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/S1D13517.o.d" -o ${OBJECTDIR}/_ext/1919882987/S1D13517.o ../../../Microchip/Graphics/Drivers/S1D13517.c  
	
${OBJECTDIR}/_ext/803622919/StaticText.o: ../../../Microchip/Graphics/StaticText.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/StaticText.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/StaticText.o.ok ${OBJECTDIR}/_ext/803622919/StaticText.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/StaticText.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/StaticText.o.d" -o ${OBJECTDIR}/_ext/803622919/StaticText.o ../../../Microchip/Graphics/StaticText.c  
	
${OBJECTDIR}/_ext/803622919/Transitions.o: ../../../Microchip/Graphics/Transitions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Transitions.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Transitions.o.ok ${OBJECTDIR}/_ext/803622919/Transitions.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Transitions.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/Transitions.o.d" -o ${OBJECTDIR}/_ext/803622919/Transitions.o ../../../Microchip/Graphics/Transitions.c  
	
${OBJECTDIR}/_ext/803622919/Transitions_weak.o: ../../../Microchip/Graphics/Transitions_weak.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Transitions_weak.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Transitions_weak.o.ok ${OBJECTDIR}/_ext/803622919/Transitions_weak.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Transitions_weak.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/Transitions_weak.o.d" -o ${OBJECTDIR}/_ext/803622919/Transitions_weak.o ../../../Microchip/Graphics/Transitions_weak.c  
	
${OBJECTDIR}/_ext/1919882987/gfxepmp.o: ../../../Microchip/Graphics/Drivers/gfxepmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.ok ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d" -o ${OBJECTDIR}/_ext/1919882987/gfxepmp.o ../../../Microchip/Graphics/Drivers/gfxepmp.c  
	
${OBJECTDIR}/_ext/1472/ExternalResource.o: ../ExternalResource.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/ExternalResource.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/ExternalResource.o.ok ${OBJECTDIR}/_ext/1472/ExternalResource.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/ExternalResource.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/ExternalResource.o.d" -o ${OBJECTDIR}/_ext/1472/ExternalResource.o ../ExternalResource.c  
	
${OBJECTDIR}/_ext/1472/InternalResourceC30.o: ../InternalResourceC30.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/InternalResourceC30.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/InternalResourceC30.o.ok ${OBJECTDIR}/_ext/1472/InternalResourceC30.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/InternalResourceC30.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/InternalResourceC30.o.d" -o ${OBJECTDIR}/_ext/1472/InternalResourceC30.o ../InternalResourceC30.c  
	
${OBJECTDIR}/_ext/1472/alpha_blend_screen.o: ../alpha_blend_screen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/alpha_blend_screen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/alpha_blend_screen.o.ok ${OBJECTDIR}/_ext/1472/alpha_blend_screen.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/alpha_blend_screen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/alpha_blend_screen.o.d" -o ${OBJECTDIR}/_ext/1472/alpha_blend_screen.o ../alpha_blend_screen.c  
	
${OBJECTDIR}/_ext/1472/comfort_screen.o: ../comfort_screen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/comfort_screen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/comfort_screen.o.ok ${OBJECTDIR}/_ext/1472/comfort_screen.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/comfort_screen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/comfort_screen.o.d" -o ${OBJECTDIR}/_ext/1472/comfort_screen.o ../comfort_screen.c  
	
${OBJECTDIR}/_ext/1472/config_screen.o: ../config_screen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/config_screen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/config_screen.o.ok ${OBJECTDIR}/_ext/1472/config_screen.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/config_screen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/config_screen.o.d" -o ${OBJECTDIR}/_ext/1472/config_screen.o ../config_screen.c  
	
${OBJECTDIR}/_ext/1472/energy_screen.o: ../energy_screen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/energy_screen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/energy_screen.o.ok ${OBJECTDIR}/_ext/1472/energy_screen.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/energy_screen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/energy_screen.o.d" -o ${OBJECTDIR}/_ext/1472/energy_screen.o ../energy_screen.c  
	
${OBJECTDIR}/_ext/1472/gradient_screen.o: ../gradient_screen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/gradient_screen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/gradient_screen.o.ok ${OBJECTDIR}/_ext/1472/gradient_screen.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/gradient_screen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/gradient_screen.o.d" -o ${OBJECTDIR}/_ext/1472/gradient_screen.o ../gradient_screen.c  
	
${OBJECTDIR}/_ext/1472/info_screen.o: ../info_screen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/info_screen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/info_screen.o.ok ${OBJECTDIR}/_ext/1472/info_screen.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/info_screen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/info_screen.o.d" -o ${OBJECTDIR}/_ext/1472/info_screen.o ../info_screen.c  
	
${OBJECTDIR}/_ext/1472/lighting_screen.o: ../lighting_screen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/lighting_screen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/lighting_screen.o.ok ${OBJECTDIR}/_ext/1472/lighting_screen.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/lighting_screen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/lighting_screen.o.d" -o ${OBJECTDIR}/_ext/1472/lighting_screen.o ../lighting_screen.c  
	
${OBJECTDIR}/_ext/1472/main_screen.o: ../main_screen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/main_screen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main_screen.o.ok ${OBJECTDIR}/_ext/1472/main_screen.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/main_screen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/main_screen.o.d" -o ${OBJECTDIR}/_ext/1472/main_screen.o ../main_screen.c  
	
${OBJECTDIR}/_ext/1472/panel_screen.o: ../panel_screen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/panel_screen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/panel_screen.o.ok ${OBJECTDIR}/_ext/1472/panel_screen.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/panel_screen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/panel_screen.o.d" -o ${OBJECTDIR}/_ext/1472/panel_screen.o ../panel_screen.c  
	
${OBJECTDIR}/_ext/1472/performance_screen.o: ../performance_screen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/performance_screen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/performance_screen.o.ok ${OBJECTDIR}/_ext/1472/performance_screen.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/performance_screen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/performance_screen.o.d" -o ${OBJECTDIR}/_ext/1472/performance_screen.o ../performance_screen.c  
	
${OBJECTDIR}/_ext/1472/pre_load_screen.o: ../pre_load_screen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/pre_load_screen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/pre_load_screen.o.ok ${OBJECTDIR}/_ext/1472/pre_load_screen.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/pre_load_screen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/pre_load_screen.o.d" -o ${OBJECTDIR}/_ext/1472/pre_load_screen.o ../pre_load_screen.c  
	
${OBJECTDIR}/_ext/1472/security_screen.o: ../security_screen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/security_screen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/security_screen.o.ok ${OBJECTDIR}/_ext/1472/security_screen.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/security_screen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/security_screen.o.d" -o ${OBJECTDIR}/_ext/1472/security_screen.o ../security_screen.c  
	
${OBJECTDIR}/_ext/1472/upload_screen.o: ../upload_screen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/upload_screen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/upload_screen.o.ok ${OBJECTDIR}/_ext/1472/upload_screen.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/upload_screen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/upload_screen.o.d" -o ${OBJECTDIR}/_ext/1472/upload_screen.o ../upload_screen.c  
	
${OBJECTDIR}/_ext/1472/MainDemo.o: ../MainDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.ok ${OBJECTDIR}/_ext/1472/MainDemo.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/MainDemo.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/MainDemo.o.d" -o ${OBJECTDIR}/_ext/1472/MainDemo.o ../MainDemo.c  
	
${OBJECTDIR}/_ext/1472/gfx_schemes.o: ../gfx_schemes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/gfx_schemes.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/gfx_schemes.o.ok ${OBJECTDIR}/_ext/1472/gfx_schemes.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/gfx_schemes.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/gfx_schemes.o.d" -o ${OBJECTDIR}/_ext/1472/gfx_schemes.o ../gfx_schemes.c  
	
${OBJECTDIR}/_ext/1472/gfx_strings.o: ../gfx_strings.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/gfx_strings.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/gfx_strings.o.ok ${OBJECTDIR}/_ext/1472/gfx_strings.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/gfx_strings.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/gfx_strings.o.d" -o ${OBJECTDIR}/_ext/1472/gfx_strings.o ../gfx_strings.c  
	
${OBJECTDIR}/_ext/1472/gol_callbacks.o: ../gol_callbacks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/gol_callbacks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/gol_callbacks.o.ok ${OBJECTDIR}/_ext/1472/gol_callbacks.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/gol_callbacks.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/gol_callbacks.o.d" -o ${OBJECTDIR}/_ext/1472/gol_callbacks.o ../gol_callbacks.c  
	
${OBJECTDIR}/_ext/1472/timer_tick.o: ../timer_tick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/timer_tick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/timer_tick.o.ok ${OBJECTDIR}/_ext/1472/timer_tick.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/timer_tick.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_EX16_16PMP_VGAv1 -I"../../Common" -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/timer_tick.o.d" -o ${OBJECTDIR}/_ext/1472/timer_tick.o ../timer_tick.c  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}        -Wl,--defsym=__MPLAB_BUILD=1,--heap=4000,--stack=4000,--no-check-sections,-L"../../../../../../Program Files/Microchip/MPLAB C30/lib",-Map="$(BINDIR_)$(TARGETBASE).map",--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_REAL_ICE=1
else
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf -mcpu=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}        -Wl,--defsym=__MPLAB_BUILD=1,--heap=4000,--stack=4000,--no-check-sections,-L"../../../../../../Program Files/Microchip/MPLAB C30/lib",-Map="$(BINDIR_)$(TARGETBASE).map",--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION)
	${MP_CC_DIR}\\pic30-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -omf=elf
endif


# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf:
	${RM} -r build/PIC24_GB210_GFXv3e_EX16_16PMP_VGA
	${RM} -r dist/PIC24_GB210_GFXv3e_EX16_16PMP_VGA

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
