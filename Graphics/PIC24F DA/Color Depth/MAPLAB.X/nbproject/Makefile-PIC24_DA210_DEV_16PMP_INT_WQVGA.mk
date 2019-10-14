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
CND_CONF=PIC24_DA210_DEV_16PMP_INT_WQVGA
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MAPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MAPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1472/MainDemo.o ${OBJECTDIR}/_ext/1847857110/Primitive.o ${OBJECTDIR}/_ext/2048740170/TimeDelay.o ${OBJECTDIR}/_ext/2020629477/SST25VF016.o ${OBJECTDIR}/_ext/366188474/gfxepmp.o ${OBJECTDIR}/_ext/2020629477/SST39LF400.o ${OBJECTDIR}/_ext/2020629477/drv_spi.o ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o ${OBJECTDIR}/_ext/1847857110/Palette.o ${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o ${OBJECTDIR}/_ext/1847857110/Button.o ${OBJECTDIR}/_ext/1847857110/Picture.o ${OBJECTDIR}/_ext/1847857110/GOL.o ${OBJECTDIR}/_ext/1472/Resources.o ${OBJECTDIR}/_ext/2020629477/TouchScreen.o ${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o ${OBJECTDIR}/_ext/366188474/TCON_HX8238.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1472/MainDemo.o.d ${OBJECTDIR}/_ext/1847857110/Primitive.o.d ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.d ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.d ${OBJECTDIR}/_ext/366188474/gfxepmp.o.d ${OBJECTDIR}/_ext/2020629477/SST39LF400.o.d ${OBJECTDIR}/_ext/2020629477/drv_spi.o.d ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.d ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.d ${OBJECTDIR}/_ext/1847857110/Palette.o.d ${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o.d ${OBJECTDIR}/_ext/1847857110/Button.o.d ${OBJECTDIR}/_ext/1847857110/Picture.o.d ${OBJECTDIR}/_ext/1847857110/GOL.o.d ${OBJECTDIR}/_ext/1472/Resources.o.d ${OBJECTDIR}/_ext/2020629477/TouchScreen.o.d ${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o.d ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.d ${OBJECTDIR}/_ext/366188474/TCON_HX8238.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1472/MainDemo.o ${OBJECTDIR}/_ext/1847857110/Primitive.o ${OBJECTDIR}/_ext/2048740170/TimeDelay.o ${OBJECTDIR}/_ext/2020629477/SST25VF016.o ${OBJECTDIR}/_ext/366188474/gfxepmp.o ${OBJECTDIR}/_ext/2020629477/SST39LF400.o ${OBJECTDIR}/_ext/2020629477/drv_spi.o ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o ${OBJECTDIR}/_ext/1847857110/Palette.o ${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o ${OBJECTDIR}/_ext/1847857110/Button.o ${OBJECTDIR}/_ext/1847857110/Picture.o ${OBJECTDIR}/_ext/1847857110/GOL.o ${OBJECTDIR}/_ext/1472/Resources.o ${OBJECTDIR}/_ext/2020629477/TouchScreen.o ${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o ${OBJECTDIR}/_ext/366188474/TCON_HX8238.o


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
	${MAKE}  -f nbproject/Makefile-PIC24_DA210_DEV_16PMP_INT_WQVGA.mk dist/${CND_CONF}/${IMAGE_TYPE}/MAPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/_ext/1472/MainDemo.o: ../MainDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.ok ${OBJECTDIR}/_ext/1472/MainDemo.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/MainDemo.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_INT_WQVGAv1 -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../../Common" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/1472/MainDemo.o.d" -o ${OBJECTDIR}/_ext/1472/MainDemo.o ../MainDemo.c  
	
${OBJECTDIR}/_ext/1847857110/Primitive.o: ../../../../Microchip/Graphics/Primitive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	@${RM} ${OBJECTDIR}/_ext/1847857110/Primitive.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847857110/Primitive.o.ok ${OBJECTDIR}/_ext/1847857110/Primitive.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847857110/Primitive.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_INT_WQVGAv1 -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../../Common" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/1847857110/Primitive.o.d" -o ${OBJECTDIR}/_ext/1847857110/Primitive.o ../../../../Microchip/Graphics/Primitive.c  
	
${OBJECTDIR}/_ext/2048740170/TimeDelay.o: ../../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2048740170 
	@${RM} ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.ok ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2048740170/TimeDelay.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../../Common" -I"../../../../Microchip/Include/Graphics" -MMD -MF "${OBJECTDIR}/_ext/2048740170/TimeDelay.o.d" -o ${OBJECTDIR}/_ext/2048740170/TimeDelay.o ../../../../Microchip/Common/TimeDelay.c  
	
${OBJECTDIR}/_ext/2020629477/SST25VF016.o: ../../../../Board\ Support\ Package/SST25VF016.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2020629477 
	@${RM} ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.d 
	@${RM} ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.ok ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2020629477/SST25VF016.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_INT_WQVGAv1 -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../../Common" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/2020629477/SST25VF016.o.d" -o ${OBJECTDIR}/_ext/2020629477/SST25VF016.o "../../../../Board Support Package/SST25VF016.c"  
	
${OBJECTDIR}/_ext/366188474/gfxepmp.o: ../../../../Microchip/Graphics/Drivers/gfxepmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/366188474 
	@${RM} ${OBJECTDIR}/_ext/366188474/gfxepmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/366188474/gfxepmp.o.ok ${OBJECTDIR}/_ext/366188474/gfxepmp.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/366188474/gfxepmp.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_INT_WQVGAv1 -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../../Common" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/366188474/gfxepmp.o.d" -o ${OBJECTDIR}/_ext/366188474/gfxepmp.o ../../../../Microchip/Graphics/Drivers/gfxepmp.c  
	
${OBJECTDIR}/_ext/2020629477/SST39LF400.o: ../../../../Board\ Support\ Package/SST39LF400.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2020629477 
	@${RM} ${OBJECTDIR}/_ext/2020629477/SST39LF400.o.d 
	@${RM} ${OBJECTDIR}/_ext/2020629477/SST39LF400.o.ok ${OBJECTDIR}/_ext/2020629477/SST39LF400.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2020629477/SST39LF400.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_INT_WQVGAv1 -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../../Common" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/2020629477/SST39LF400.o.d" -o ${OBJECTDIR}/_ext/2020629477/SST39LF400.o "../../../../Board Support Package/SST39LF400.c"  
	
${OBJECTDIR}/_ext/2020629477/drv_spi.o: ../../../../Board\ Support\ Package/drv_spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2020629477 
	@${RM} ${OBJECTDIR}/_ext/2020629477/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/2020629477/drv_spi.o.ok ${OBJECTDIR}/_ext/2020629477/drv_spi.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2020629477/drv_spi.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_INT_WQVGAv1 -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../../Common" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/2020629477/drv_spi.o.d" -o ${OBJECTDIR}/_ext/2020629477/drv_spi.o "../../../../Board Support Package/drv_spi.c"  
	
${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o: ../../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/366188474 
	@${RM} ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.d 
	@${RM} ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.ok ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_INT_WQVGAv1 -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../../Common" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.d" -o ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o ../../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  
	
${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o: ../../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/366188474 
	@${RM} ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.d 
	@${RM} ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.ok ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_INT_WQVGAv1 -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../../Common" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.d" -o ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o ../../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  
	
${OBJECTDIR}/_ext/1847857110/Palette.o: ../../../../Microchip/Graphics/Palette.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	@${RM} ${OBJECTDIR}/_ext/1847857110/Palette.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847857110/Palette.o.ok ${OBJECTDIR}/_ext/1847857110/Palette.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847857110/Palette.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_INT_WQVGAv1 -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../../Common" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/1847857110/Palette.o.d" -o ${OBJECTDIR}/_ext/1847857110/Palette.o ../../../../Microchip/Graphics/Palette.c  
	
${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o: ../../../../Microchip/Graphics/Drivers/mchpGfxDrvBuffer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/366188474 
	@${RM} ${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o.ok ${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -mlarge-arrays -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../../Common" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -MMD -MF "${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o.d" -o ${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o ../../../../Microchip/Graphics/Drivers/mchpGfxDrvBuffer.c  
	
${OBJECTDIR}/_ext/1847857110/Button.o: ../../../../Microchip/Graphics/Button.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	@${RM} ${OBJECTDIR}/_ext/1847857110/Button.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847857110/Button.o.ok ${OBJECTDIR}/_ext/1847857110/Button.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847857110/Button.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_INT_WQVGAv1 -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../../Common" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/1847857110/Button.o.d" -o ${OBJECTDIR}/_ext/1847857110/Button.o ../../../../Microchip/Graphics/Button.c  
	
${OBJECTDIR}/_ext/1847857110/Picture.o: ../../../../Microchip/Graphics/Picture.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	@${RM} ${OBJECTDIR}/_ext/1847857110/Picture.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847857110/Picture.o.ok ${OBJECTDIR}/_ext/1847857110/Picture.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847857110/Picture.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_INT_WQVGAv1 -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../../Common" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/1847857110/Picture.o.d" -o ${OBJECTDIR}/_ext/1847857110/Picture.o ../../../../Microchip/Graphics/Picture.c  
	
${OBJECTDIR}/_ext/1847857110/GOL.o: ../../../../Microchip/Graphics/GOL.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	@${RM} ${OBJECTDIR}/_ext/1847857110/GOL.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847857110/GOL.o.ok ${OBJECTDIR}/_ext/1847857110/GOL.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847857110/GOL.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_INT_WQVGAv1 -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../../Common" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/1847857110/GOL.o.d" -o ${OBJECTDIR}/_ext/1847857110/GOL.o ../../../../Microchip/Graphics/GOL.c  
	
${OBJECTDIR}/_ext/1472/Resources.o: ../Resources.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/Resources.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Resources.o.ok ${OBJECTDIR}/_ext/1472/Resources.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/Resources.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_INT_WQVGAv1 -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../../Common" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/1472/Resources.o.d" -o ${OBJECTDIR}/_ext/1472/Resources.o ../Resources.c  
	
${OBJECTDIR}/_ext/2020629477/TouchScreen.o: ../../../../Board\ Support\ Package/TouchScreen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2020629477 
	@${RM} ${OBJECTDIR}/_ext/2020629477/TouchScreen.o.d 
	@${RM} ${OBJECTDIR}/_ext/2020629477/TouchScreen.o.ok ${OBJECTDIR}/_ext/2020629477/TouchScreen.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2020629477/TouchScreen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_INT_WQVGAv1 -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../../Common" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/2020629477/TouchScreen.o.d" -o ${OBJECTDIR}/_ext/2020629477/TouchScreen.o "../../../../Board Support Package/TouchScreen.c"  
	
${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o: ../../../../Board\ Support\ Package/TouchScreenResistive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2020629477 
	@${RM} ${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o.d 
	@${RM} ${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o.ok ${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_INT_WQVGAv1 -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../../Common" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o.d" -o ${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o "../../../../Board Support Package/TouchScreenResistive.c"  
	
${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o: ../../../../Microchip/Graphics/GOLSchemeDefault.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	@${RM} ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.ok ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_INT_WQVGAv1 -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../../Common" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.d" -o ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o ../../../../Microchip/Graphics/GOLSchemeDefault.c  
	
${OBJECTDIR}/_ext/366188474/TCON_HX8238.o: ../../../../Microchip/Graphics/Drivers/TCON_HX8238.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/366188474 
	@${RM} ${OBJECTDIR}/_ext/366188474/TCON_HX8238.o.d 
	@${RM} ${OBJECTDIR}/_ext/366188474/TCON_HX8238.o.ok ${OBJECTDIR}/_ext/366188474/TCON_HX8238.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/366188474/TCON_HX8238.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_INT_WQVGAv1 -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../../Common" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/366188474/TCON_HX8238.o.d" -o ${OBJECTDIR}/_ext/366188474/TCON_HX8238.o ../../../../Microchip/Graphics/Drivers/TCON_HX8238.c  
	
else
${OBJECTDIR}/_ext/1472/MainDemo.o: ../MainDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.ok ${OBJECTDIR}/_ext/1472/MainDemo.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/MainDemo.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_INT_WQVGAv1 -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../../Common" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/1472/MainDemo.o.d" -o ${OBJECTDIR}/_ext/1472/MainDemo.o ../MainDemo.c  
	
${OBJECTDIR}/_ext/1847857110/Primitive.o: ../../../../Microchip/Graphics/Primitive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	@${RM} ${OBJECTDIR}/_ext/1847857110/Primitive.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847857110/Primitive.o.ok ${OBJECTDIR}/_ext/1847857110/Primitive.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847857110/Primitive.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_INT_WQVGAv1 -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../../Common" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/1847857110/Primitive.o.d" -o ${OBJECTDIR}/_ext/1847857110/Primitive.o ../../../../Microchip/Graphics/Primitive.c  
	
${OBJECTDIR}/_ext/2048740170/TimeDelay.o: ../../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2048740170 
	@${RM} ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.ok ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2048740170/TimeDelay.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../../Common" -I"../../../../Microchip/Include/Graphics" -MMD -MF "${OBJECTDIR}/_ext/2048740170/TimeDelay.o.d" -o ${OBJECTDIR}/_ext/2048740170/TimeDelay.o ../../../../Microchip/Common/TimeDelay.c  
	
${OBJECTDIR}/_ext/2020629477/SST25VF016.o: ../../../../Board\ Support\ Package/SST25VF016.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2020629477 
	@${RM} ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.d 
	@${RM} ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.ok ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2020629477/SST25VF016.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_INT_WQVGAv1 -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../../Common" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/2020629477/SST25VF016.o.d" -o ${OBJECTDIR}/_ext/2020629477/SST25VF016.o "../../../../Board Support Package/SST25VF016.c"  
	
${OBJECTDIR}/_ext/366188474/gfxepmp.o: ../../../../Microchip/Graphics/Drivers/gfxepmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/366188474 
	@${RM} ${OBJECTDIR}/_ext/366188474/gfxepmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/366188474/gfxepmp.o.ok ${OBJECTDIR}/_ext/366188474/gfxepmp.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/366188474/gfxepmp.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_INT_WQVGAv1 -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../../Common" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/366188474/gfxepmp.o.d" -o ${OBJECTDIR}/_ext/366188474/gfxepmp.o ../../../../Microchip/Graphics/Drivers/gfxepmp.c  
	
${OBJECTDIR}/_ext/2020629477/SST39LF400.o: ../../../../Board\ Support\ Package/SST39LF400.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2020629477 
	@${RM} ${OBJECTDIR}/_ext/2020629477/SST39LF400.o.d 
	@${RM} ${OBJECTDIR}/_ext/2020629477/SST39LF400.o.ok ${OBJECTDIR}/_ext/2020629477/SST39LF400.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2020629477/SST39LF400.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_INT_WQVGAv1 -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../../Common" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/2020629477/SST39LF400.o.d" -o ${OBJECTDIR}/_ext/2020629477/SST39LF400.o "../../../../Board Support Package/SST39LF400.c"  
	
${OBJECTDIR}/_ext/2020629477/drv_spi.o: ../../../../Board\ Support\ Package/drv_spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2020629477 
	@${RM} ${OBJECTDIR}/_ext/2020629477/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/2020629477/drv_spi.o.ok ${OBJECTDIR}/_ext/2020629477/drv_spi.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2020629477/drv_spi.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_INT_WQVGAv1 -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../../Common" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/2020629477/drv_spi.o.d" -o ${OBJECTDIR}/_ext/2020629477/drv_spi.o "../../../../Board Support Package/drv_spi.c"  
	
${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o: ../../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/366188474 
	@${RM} ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.d 
	@${RM} ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.ok ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_INT_WQVGAv1 -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../../Common" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.d" -o ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o ../../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  
	
${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o: ../../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/366188474 
	@${RM} ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.d 
	@${RM} ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.ok ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_INT_WQVGAv1 -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../../Common" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.d" -o ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o ../../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  
	
${OBJECTDIR}/_ext/1847857110/Palette.o: ../../../../Microchip/Graphics/Palette.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	@${RM} ${OBJECTDIR}/_ext/1847857110/Palette.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847857110/Palette.o.ok ${OBJECTDIR}/_ext/1847857110/Palette.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847857110/Palette.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_INT_WQVGAv1 -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../../Common" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/1847857110/Palette.o.d" -o ${OBJECTDIR}/_ext/1847857110/Palette.o ../../../../Microchip/Graphics/Palette.c  
	
${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o: ../../../../Microchip/Graphics/Drivers/mchpGfxDrvBuffer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/366188474 
	@${RM} ${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o.ok ${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -mlarge-arrays -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../../Common" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -MMD -MF "${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o.d" -o ${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o ../../../../Microchip/Graphics/Drivers/mchpGfxDrvBuffer.c  
	
${OBJECTDIR}/_ext/1847857110/Button.o: ../../../../Microchip/Graphics/Button.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	@${RM} ${OBJECTDIR}/_ext/1847857110/Button.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847857110/Button.o.ok ${OBJECTDIR}/_ext/1847857110/Button.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847857110/Button.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_INT_WQVGAv1 -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../../Common" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/1847857110/Button.o.d" -o ${OBJECTDIR}/_ext/1847857110/Button.o ../../../../Microchip/Graphics/Button.c  
	
${OBJECTDIR}/_ext/1847857110/Picture.o: ../../../../Microchip/Graphics/Picture.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	@${RM} ${OBJECTDIR}/_ext/1847857110/Picture.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847857110/Picture.o.ok ${OBJECTDIR}/_ext/1847857110/Picture.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847857110/Picture.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_INT_WQVGAv1 -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../../Common" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/1847857110/Picture.o.d" -o ${OBJECTDIR}/_ext/1847857110/Picture.o ../../../../Microchip/Graphics/Picture.c  
	
${OBJECTDIR}/_ext/1847857110/GOL.o: ../../../../Microchip/Graphics/GOL.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	@${RM} ${OBJECTDIR}/_ext/1847857110/GOL.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847857110/GOL.o.ok ${OBJECTDIR}/_ext/1847857110/GOL.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847857110/GOL.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_INT_WQVGAv1 -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../../Common" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/1847857110/GOL.o.d" -o ${OBJECTDIR}/_ext/1847857110/GOL.o ../../../../Microchip/Graphics/GOL.c  
	
${OBJECTDIR}/_ext/1472/Resources.o: ../Resources.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/Resources.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Resources.o.ok ${OBJECTDIR}/_ext/1472/Resources.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/Resources.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_INT_WQVGAv1 -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../../Common" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/1472/Resources.o.d" -o ${OBJECTDIR}/_ext/1472/Resources.o ../Resources.c  
	
${OBJECTDIR}/_ext/2020629477/TouchScreen.o: ../../../../Board\ Support\ Package/TouchScreen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2020629477 
	@${RM} ${OBJECTDIR}/_ext/2020629477/TouchScreen.o.d 
	@${RM} ${OBJECTDIR}/_ext/2020629477/TouchScreen.o.ok ${OBJECTDIR}/_ext/2020629477/TouchScreen.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2020629477/TouchScreen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_INT_WQVGAv1 -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../../Common" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/2020629477/TouchScreen.o.d" -o ${OBJECTDIR}/_ext/2020629477/TouchScreen.o "../../../../Board Support Package/TouchScreen.c"  
	
${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o: ../../../../Board\ Support\ Package/TouchScreenResistive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2020629477 
	@${RM} ${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o.d 
	@${RM} ${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o.ok ${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_INT_WQVGAv1 -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../../Common" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o.d" -o ${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o "../../../../Board Support Package/TouchScreenResistive.c"  
	
${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o: ../../../../Microchip/Graphics/GOLSchemeDefault.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	@${RM} ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.ok ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_INT_WQVGAv1 -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../../Common" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.d" -o ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o ../../../../Microchip/Graphics/GOLSchemeDefault.c  
	
${OBJECTDIR}/_ext/366188474/TCON_HX8238.o: ../../../../Microchip/Graphics/Drivers/TCON_HX8238.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/366188474 
	@${RM} ${OBJECTDIR}/_ext/366188474/TCON_HX8238.o.d 
	@${RM} ${OBJECTDIR}/_ext/366188474/TCON_HX8238.o.ok ${OBJECTDIR}/_ext/366188474/TCON_HX8238.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/366188474/TCON_HX8238.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_INT_WQVGAv1 -I"../../../../Board Support Package" -I".." -I"../../../../Microchip/Include" -I"../../../Common" -I"../../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/366188474/TCON_HX8238.o.d" -o ${OBJECTDIR}/_ext/366188474/TCON_HX8238.o ../../../../Microchip/Graphics/Drivers/TCON_HX8238.c  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MAPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -o dist/${CND_CONF}/${IMAGE_TYPE}/MAPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}        -Wl,--defsym=__MPLAB_BUILD=1,--heap=2000,-L".."$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_REAL_ICE=1
else
dist/${CND_CONF}/${IMAGE_TYPE}/MAPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf -mcpu=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MAPLAB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}        -Wl,--defsym=__MPLAB_BUILD=1,--heap=2000,-L".."$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION)
	${MP_CC_DIR}\\pic30-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/MAPLAB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -omf=elf
endif


# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf:
	${RM} -r build/PIC24_DA210_DEV_16PMP_INT_WQVGA
	${RM} -r dist/PIC24_DA210_DEV_16PMP_INT_WQVGA

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
