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
CND_CONF=PIC24_DA210_DEV_16PMP_WQVGAv1
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
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1847857110/Primitive.o ${OBJECTDIR}/_ext/2048740170/TimeDelay.o ${OBJECTDIR}/_ext/2020629477/SST39LF400.o ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o ${OBJECTDIR}/_ext/366188474/gfxepmp.o ${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o ${OBJECTDIR}/_ext/8382566/FlashProgrammer.o ${OBJECTDIR}/_ext/8382566/comm_pkt.o ${OBJECTDIR}/_ext/8382566/comm_pkt_callback.o ${OBJECTDIR}/_ext/926206843/usb_device.o ${OBJECTDIR}/_ext/2065199231/usb_function_generic.o ${OBJECTDIR}/_ext/1472/usb_callback.o ${OBJECTDIR}/_ext/1472/usb_descriptors.o ${OBJECTDIR}/_ext/1472/ElevatorDemo.o ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o ${OBJECTDIR}/_ext/2020629477/SST25VF016.o ${OBJECTDIR}/_ext/2020629477/drv_spi.o ${OBJECTDIR}/_ext/1472/ElevatorResources.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1847857110/Primitive.o.d ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.d ${OBJECTDIR}/_ext/2020629477/SST39LF400.o.d ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.d ${OBJECTDIR}/_ext/366188474/gfxepmp.o.d ${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o.d ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.d ${OBJECTDIR}/_ext/8382566/FlashProgrammer.o.d ${OBJECTDIR}/_ext/8382566/comm_pkt.o.d ${OBJECTDIR}/_ext/8382566/comm_pkt_callback.o.d ${OBJECTDIR}/_ext/926206843/usb_device.o.d ${OBJECTDIR}/_ext/2065199231/usb_function_generic.o.d ${OBJECTDIR}/_ext/1472/usb_callback.o.d ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d ${OBJECTDIR}/_ext/1472/ElevatorDemo.o.d ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.d ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.d ${OBJECTDIR}/_ext/2020629477/drv_spi.o.d ${OBJECTDIR}/_ext/1472/ElevatorResources.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1847857110/Primitive.o ${OBJECTDIR}/_ext/2048740170/TimeDelay.o ${OBJECTDIR}/_ext/2020629477/SST39LF400.o ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o ${OBJECTDIR}/_ext/366188474/gfxepmp.o ${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o ${OBJECTDIR}/_ext/8382566/FlashProgrammer.o ${OBJECTDIR}/_ext/8382566/comm_pkt.o ${OBJECTDIR}/_ext/8382566/comm_pkt_callback.o ${OBJECTDIR}/_ext/926206843/usb_device.o ${OBJECTDIR}/_ext/2065199231/usb_function_generic.o ${OBJECTDIR}/_ext/1472/usb_callback.o ${OBJECTDIR}/_ext/1472/usb_descriptors.o ${OBJECTDIR}/_ext/1472/ElevatorDemo.o ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o ${OBJECTDIR}/_ext/2020629477/SST25VF016.o ${OBJECTDIR}/_ext/2020629477/drv_spi.o ${OBJECTDIR}/_ext/1472/ElevatorResources.o


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
	${MAKE}  -f nbproject/Makefile-PIC24_DA210_DEV_16PMP_WQVGAv1.mk dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/_ext/1847857110/Primitive.o: ../../../../Microchip/Graphics/Primitive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	@${RM} ${OBJECTDIR}/_ext/1847857110/Primitive.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847857110/Primitive.o.ok ${OBJECTDIR}/_ext/1847857110/Primitive.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847857110/Primitive.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Common" -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/Include/USB" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/1847857110/Primitive.o.d" -o ${OBJECTDIR}/_ext/1847857110/Primitive.o ../../../../Microchip/Graphics/Primitive.c  
	
${OBJECTDIR}/_ext/2048740170/TimeDelay.o: ../../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2048740170 
	@${RM} ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.ok ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2048740170/TimeDelay.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I".." -I"../../../Common" -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/Include/USB" -MMD -MF "${OBJECTDIR}/_ext/2048740170/TimeDelay.o.d" -o ${OBJECTDIR}/_ext/2048740170/TimeDelay.o ../../../../Microchip/Common/TimeDelay.c  
	
${OBJECTDIR}/_ext/2020629477/SST39LF400.o: ../../../../Board\ Support\ Package/SST39LF400.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2020629477 
	@${RM} ${OBJECTDIR}/_ext/2020629477/SST39LF400.o.d 
	@${RM} ${OBJECTDIR}/_ext/2020629477/SST39LF400.o.ok ${OBJECTDIR}/_ext/2020629477/SST39LF400.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2020629477/SST39LF400.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I".." -I"../../../Common" -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/Include/USB" -mlarge-code -mlarge-data -mlarge-scalar -MMD -MF "${OBJECTDIR}/_ext/2020629477/SST39LF400.o.d" -o ${OBJECTDIR}/_ext/2020629477/SST39LF400.o "../../../../Board Support Package/SST39LF400.c"  
	
${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o: ../../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/366188474 
	@${RM} ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.d 
	@${RM} ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.ok ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Common" -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/Include/USB" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.d" -o ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o ../../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  
	
${OBJECTDIR}/_ext/366188474/gfxepmp.o: ../../../../Microchip/Graphics/Drivers/gfxepmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/366188474 
	@${RM} ${OBJECTDIR}/_ext/366188474/gfxepmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/366188474/gfxepmp.o.ok ${OBJECTDIR}/_ext/366188474/gfxepmp.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/366188474/gfxepmp.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Common" -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/Include/USB" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/366188474/gfxepmp.o.d" -o ${OBJECTDIR}/_ext/366188474/gfxepmp.o ../../../../Microchip/Graphics/Drivers/gfxepmp.c  
	
${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o: ../../../../Microchip/Graphics/Drivers/mchpGfxDrvBuffer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/366188474 
	@${RM} ${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o.ok ${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -mlarge-arrays -I".." -I"../../../Common" -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/Include/USB" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o.d" -o ${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o ../../../../Microchip/Graphics/Drivers/mchpGfxDrvBuffer.c  
	
${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o: ../../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/366188474 
	@${RM} ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.d 
	@${RM} ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.ok ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Common" -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/Include/USB" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.d" -o ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o ../../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  
	
${OBJECTDIR}/_ext/8382566/FlashProgrammer.o: ../../../Common/FlashProgrammer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/8382566 
	@${RM} ${OBJECTDIR}/_ext/8382566/FlashProgrammer.o.d 
	@${RM} ${OBJECTDIR}/_ext/8382566/FlashProgrammer.o.ok ${OBJECTDIR}/_ext/8382566/FlashProgrammer.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/8382566/FlashProgrammer.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Common" -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/Include/USB" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/8382566/FlashProgrammer.o.d" -o ${OBJECTDIR}/_ext/8382566/FlashProgrammer.o ../../../Common/FlashProgrammer.c  
	
${OBJECTDIR}/_ext/8382566/comm_pkt.o: ../../../Common/comm_pkt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/8382566 
	@${RM} ${OBJECTDIR}/_ext/8382566/comm_pkt.o.d 
	@${RM} ${OBJECTDIR}/_ext/8382566/comm_pkt.o.ok ${OBJECTDIR}/_ext/8382566/comm_pkt.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/8382566/comm_pkt.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Common" -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/Include/USB" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/8382566/comm_pkt.o.d" -o ${OBJECTDIR}/_ext/8382566/comm_pkt.o ../../../Common/comm_pkt.c  
	
${OBJECTDIR}/_ext/8382566/comm_pkt_callback.o: ../../../Common/comm_pkt_callback.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/8382566 
	@${RM} ${OBJECTDIR}/_ext/8382566/comm_pkt_callback.o.d 
	@${RM} ${OBJECTDIR}/_ext/8382566/comm_pkt_callback.o.ok ${OBJECTDIR}/_ext/8382566/comm_pkt_callback.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/8382566/comm_pkt_callback.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Common" -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/Include/USB" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/8382566/comm_pkt_callback.o.d" -o ${OBJECTDIR}/_ext/8382566/comm_pkt_callback.o ../../../Common/comm_pkt_callback.c  
	
${OBJECTDIR}/_ext/926206843/usb_device.o: ../../../../Microchip/USB/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/926206843 
	@${RM} ${OBJECTDIR}/_ext/926206843/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/926206843/usb_device.o.ok ${OBJECTDIR}/_ext/926206843/usb_device.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/926206843/usb_device.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Common" -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/Include/USB" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/926206843/usb_device.o.d" -o ${OBJECTDIR}/_ext/926206843/usb_device.o ../../../../Microchip/USB/usb_device.c  
	
${OBJECTDIR}/_ext/2065199231/usb_function_generic.o: ../../../../Microchip/USB/Generic\ Device\ Driver/usb_function_generic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2065199231 
	@${RM} ${OBJECTDIR}/_ext/2065199231/usb_function_generic.o.d 
	@${RM} ${OBJECTDIR}/_ext/2065199231/usb_function_generic.o.ok ${OBJECTDIR}/_ext/2065199231/usb_function_generic.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2065199231/usb_function_generic.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Common" -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/Include/USB" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/2065199231/usb_function_generic.o.d" -o ${OBJECTDIR}/_ext/2065199231/usb_function_generic.o "../../../../Microchip/USB/Generic Device Driver/usb_function_generic.c"  
	
${OBJECTDIR}/_ext/1472/usb_callback.o: ../usb_callback.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/usb_callback.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/usb_callback.o.ok ${OBJECTDIR}/_ext/1472/usb_callback.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/usb_callback.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Common" -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/Include/USB" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/1472/usb_callback.o.d" -o ${OBJECTDIR}/_ext/1472/usb_callback.o ../usb_callback.c  
	
${OBJECTDIR}/_ext/1472/usb_descriptors.o: ../usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.ok ${OBJECTDIR}/_ext/1472/usb_descriptors.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/usb_descriptors.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Common" -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/Include/USB" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/1472/usb_descriptors.o.d" -o ${OBJECTDIR}/_ext/1472/usb_descriptors.o ../usb_descriptors.c  
	
${OBJECTDIR}/_ext/1472/ElevatorDemo.o: ../ElevatorDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/ElevatorDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/ElevatorDemo.o.ok ${OBJECTDIR}/_ext/1472/ElevatorDemo.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/ElevatorDemo.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Common" -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/Include/USB" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/1472/ElevatorDemo.o.d" -o ${OBJECTDIR}/_ext/1472/ElevatorDemo.o ../ElevatorDemo.c  
	
${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o: ../../../../Microchip/Graphics/GOLFontDefault.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	@${RM} ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.ok ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Common" -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/Include/USB" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.d" -o ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o ../../../../Microchip/Graphics/GOLFontDefault.c  
	
${OBJECTDIR}/_ext/2020629477/SST25VF016.o: ../../../../Board\ Support\ Package/SST25VF016.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2020629477 
	@${RM} ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.d 
	@${RM} ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.ok ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2020629477/SST25VF016.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Common" -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/Include/USB" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/2020629477/SST25VF016.o.d" -o ${OBJECTDIR}/_ext/2020629477/SST25VF016.o "../../../../Board Support Package/SST25VF016.c"  
	
${OBJECTDIR}/_ext/2020629477/drv_spi.o: ../../../../Board\ Support\ Package/drv_spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2020629477 
	@${RM} ${OBJECTDIR}/_ext/2020629477/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/2020629477/drv_spi.o.ok ${OBJECTDIR}/_ext/2020629477/drv_spi.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2020629477/drv_spi.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Common" -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/Include/USB" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/2020629477/drv_spi.o.d" -o ${OBJECTDIR}/_ext/2020629477/drv_spi.o "../../../../Board Support Package/drv_spi.c"  
	
${OBJECTDIR}/_ext/1472/ElevatorResources.o: ../ElevatorResources.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/ElevatorResources.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/ElevatorResources.o.ok ${OBJECTDIR}/_ext/1472/ElevatorResources.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/ElevatorResources.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Common" -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/Include/USB" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/1472/ElevatorResources.o.d" -o ${OBJECTDIR}/_ext/1472/ElevatorResources.o ../ElevatorResources.c  
	
else
${OBJECTDIR}/_ext/1847857110/Primitive.o: ../../../../Microchip/Graphics/Primitive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	@${RM} ${OBJECTDIR}/_ext/1847857110/Primitive.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847857110/Primitive.o.ok ${OBJECTDIR}/_ext/1847857110/Primitive.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847857110/Primitive.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Common" -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/Include/USB" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/1847857110/Primitive.o.d" -o ${OBJECTDIR}/_ext/1847857110/Primitive.o ../../../../Microchip/Graphics/Primitive.c  
	
${OBJECTDIR}/_ext/2048740170/TimeDelay.o: ../../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2048740170 
	@${RM} ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.ok ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2048740170/TimeDelay.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I".." -I"../../../Common" -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/Include/USB" -MMD -MF "${OBJECTDIR}/_ext/2048740170/TimeDelay.o.d" -o ${OBJECTDIR}/_ext/2048740170/TimeDelay.o ../../../../Microchip/Common/TimeDelay.c  
	
${OBJECTDIR}/_ext/2020629477/SST39LF400.o: ../../../../Board\ Support\ Package/SST39LF400.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2020629477 
	@${RM} ${OBJECTDIR}/_ext/2020629477/SST39LF400.o.d 
	@${RM} ${OBJECTDIR}/_ext/2020629477/SST39LF400.o.ok ${OBJECTDIR}/_ext/2020629477/SST39LF400.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2020629477/SST39LF400.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I".." -I"../../../Common" -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/Include/USB" -mlarge-code -mlarge-data -mlarge-scalar -MMD -MF "${OBJECTDIR}/_ext/2020629477/SST39LF400.o.d" -o ${OBJECTDIR}/_ext/2020629477/SST39LF400.o "../../../../Board Support Package/SST39LF400.c"  
	
${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o: ../../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/366188474 
	@${RM} ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.d 
	@${RM} ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.ok ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Common" -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/Include/USB" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.d" -o ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o ../../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  
	
${OBJECTDIR}/_ext/366188474/gfxepmp.o: ../../../../Microchip/Graphics/Drivers/gfxepmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/366188474 
	@${RM} ${OBJECTDIR}/_ext/366188474/gfxepmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/366188474/gfxepmp.o.ok ${OBJECTDIR}/_ext/366188474/gfxepmp.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/366188474/gfxepmp.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Common" -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/Include/USB" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/366188474/gfxepmp.o.d" -o ${OBJECTDIR}/_ext/366188474/gfxepmp.o ../../../../Microchip/Graphics/Drivers/gfxepmp.c  
	
${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o: ../../../../Microchip/Graphics/Drivers/mchpGfxDrvBuffer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/366188474 
	@${RM} ${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o.ok ${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -mlarge-arrays -I".." -I"../../../Common" -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/Include/USB" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o.d" -o ${OBJECTDIR}/_ext/366188474/mchpGfxDrvBuffer.o ../../../../Microchip/Graphics/Drivers/mchpGfxDrvBuffer.c  
	
${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o: ../../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/366188474 
	@${RM} ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.d 
	@${RM} ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.ok ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Common" -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/Include/USB" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.d" -o ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o ../../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  
	
${OBJECTDIR}/_ext/8382566/FlashProgrammer.o: ../../../Common/FlashProgrammer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/8382566 
	@${RM} ${OBJECTDIR}/_ext/8382566/FlashProgrammer.o.d 
	@${RM} ${OBJECTDIR}/_ext/8382566/FlashProgrammer.o.ok ${OBJECTDIR}/_ext/8382566/FlashProgrammer.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/8382566/FlashProgrammer.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Common" -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/Include/USB" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/8382566/FlashProgrammer.o.d" -o ${OBJECTDIR}/_ext/8382566/FlashProgrammer.o ../../../Common/FlashProgrammer.c  
	
${OBJECTDIR}/_ext/8382566/comm_pkt.o: ../../../Common/comm_pkt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/8382566 
	@${RM} ${OBJECTDIR}/_ext/8382566/comm_pkt.o.d 
	@${RM} ${OBJECTDIR}/_ext/8382566/comm_pkt.o.ok ${OBJECTDIR}/_ext/8382566/comm_pkt.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/8382566/comm_pkt.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Common" -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/Include/USB" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/8382566/comm_pkt.o.d" -o ${OBJECTDIR}/_ext/8382566/comm_pkt.o ../../../Common/comm_pkt.c  
	
${OBJECTDIR}/_ext/8382566/comm_pkt_callback.o: ../../../Common/comm_pkt_callback.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/8382566 
	@${RM} ${OBJECTDIR}/_ext/8382566/comm_pkt_callback.o.d 
	@${RM} ${OBJECTDIR}/_ext/8382566/comm_pkt_callback.o.ok ${OBJECTDIR}/_ext/8382566/comm_pkt_callback.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/8382566/comm_pkt_callback.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Common" -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/Include/USB" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/8382566/comm_pkt_callback.o.d" -o ${OBJECTDIR}/_ext/8382566/comm_pkt_callback.o ../../../Common/comm_pkt_callback.c  
	
${OBJECTDIR}/_ext/926206843/usb_device.o: ../../../../Microchip/USB/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/926206843 
	@${RM} ${OBJECTDIR}/_ext/926206843/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/926206843/usb_device.o.ok ${OBJECTDIR}/_ext/926206843/usb_device.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/926206843/usb_device.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Common" -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/Include/USB" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/926206843/usb_device.o.d" -o ${OBJECTDIR}/_ext/926206843/usb_device.o ../../../../Microchip/USB/usb_device.c  
	
${OBJECTDIR}/_ext/2065199231/usb_function_generic.o: ../../../../Microchip/USB/Generic\ Device\ Driver/usb_function_generic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2065199231 
	@${RM} ${OBJECTDIR}/_ext/2065199231/usb_function_generic.o.d 
	@${RM} ${OBJECTDIR}/_ext/2065199231/usb_function_generic.o.ok ${OBJECTDIR}/_ext/2065199231/usb_function_generic.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2065199231/usb_function_generic.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Common" -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/Include/USB" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/2065199231/usb_function_generic.o.d" -o ${OBJECTDIR}/_ext/2065199231/usb_function_generic.o "../../../../Microchip/USB/Generic Device Driver/usb_function_generic.c"  
	
${OBJECTDIR}/_ext/1472/usb_callback.o: ../usb_callback.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/usb_callback.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/usb_callback.o.ok ${OBJECTDIR}/_ext/1472/usb_callback.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/usb_callback.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Common" -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/Include/USB" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/1472/usb_callback.o.d" -o ${OBJECTDIR}/_ext/1472/usb_callback.o ../usb_callback.c  
	
${OBJECTDIR}/_ext/1472/usb_descriptors.o: ../usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.ok ${OBJECTDIR}/_ext/1472/usb_descriptors.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/usb_descriptors.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Common" -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/Include/USB" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/1472/usb_descriptors.o.d" -o ${OBJECTDIR}/_ext/1472/usb_descriptors.o ../usb_descriptors.c  
	
${OBJECTDIR}/_ext/1472/ElevatorDemo.o: ../ElevatorDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/ElevatorDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/ElevatorDemo.o.ok ${OBJECTDIR}/_ext/1472/ElevatorDemo.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/ElevatorDemo.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Common" -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/Include/USB" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/1472/ElevatorDemo.o.d" -o ${OBJECTDIR}/_ext/1472/ElevatorDemo.o ../ElevatorDemo.c  
	
${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o: ../../../../Microchip/Graphics/GOLFontDefault.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	@${RM} ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.ok ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Common" -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/Include/USB" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.d" -o ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o ../../../../Microchip/Graphics/GOLFontDefault.c  
	
${OBJECTDIR}/_ext/2020629477/SST25VF016.o: ../../../../Board\ Support\ Package/SST25VF016.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2020629477 
	@${RM} ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.d 
	@${RM} ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.ok ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2020629477/SST25VF016.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Common" -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/Include/USB" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/2020629477/SST25VF016.o.d" -o ${OBJECTDIR}/_ext/2020629477/SST25VF016.o "../../../../Board Support Package/SST25VF016.c"  
	
${OBJECTDIR}/_ext/2020629477/drv_spi.o: ../../../../Board\ Support\ Package/drv_spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2020629477 
	@${RM} ${OBJECTDIR}/_ext/2020629477/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/2020629477/drv_spi.o.ok ${OBJECTDIR}/_ext/2020629477/drv_spi.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2020629477/drv_spi.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Common" -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/Include/USB" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/2020629477/drv_spi.o.d" -o ${OBJECTDIR}/_ext/2020629477/drv_spi.o "../../../../Board Support Package/drv_spi.c"  
	
${OBJECTDIR}/_ext/1472/ElevatorResources.o: ../ElevatorResources.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/ElevatorResources.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/ElevatorResources.o.ok ${OBJECTDIR}/_ext/1472/ElevatorResources.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/ElevatorResources.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Common" -I"../../../../Board Support Package" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/Include/USB" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/1472/ElevatorResources.o.d" -o ${OBJECTDIR}/_ext/1472/ElevatorResources.o ../ElevatorResources.c  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}        -Wl,--defsym=__MPLAB_BUILD=1,--heap=3000,-L"..",-Map="${DISTDIR}/MPLAB.X.${IMAGE_TYPE}.map",--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_REAL_ICE=1
else
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf -mcpu=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}        -Wl,--defsym=__MPLAB_BUILD=1,--heap=3000,-L"..",-Map="${DISTDIR}/MPLAB.X.${IMAGE_TYPE}.map",--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION)
	${MP_CC_DIR}\\pic30-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -omf=elf
endif


# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf:
	${RM} -r build/PIC24_DA210_DEV_16PMP_WQVGAv1
	${RM} -r dist/PIC24_DA210_DEV_16PMP_WQVGAv1

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
