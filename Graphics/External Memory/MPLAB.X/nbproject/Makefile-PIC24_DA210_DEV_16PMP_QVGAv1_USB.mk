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
CND_CONF=PIC24_DA210_DEV_16PMP_QVGAv1_USB
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
OBJECTFILES=${OBJECTDIR}/_ext/1472/MainDemo.o ${OBJECTDIR}/_ext/1472/externalref.o ${OBJECTDIR}/_ext/1472/internalbitmap\ C30.o ${OBJECTDIR}/_ext/1472/internalfont\ C30.o ${OBJECTDIR}/_ext/1472/usb_callback.o ${OBJECTDIR}/_ext/1472/usb_descriptors.o ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o ${OBJECTDIR}/_ext/1687970324/Beep.o ${OBJECTDIR}/_ext/1687970324/SST25VF016.o ${OBJECTDIR}/_ext/1687970324/SST39LF400.o ${OBJECTDIR}/_ext/1687970324/SST39VF040.o ${OBJECTDIR}/_ext/1687970324/drv_spi.o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o ${OBJECTDIR}/_ext/2049610667/comm_pkt.o ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o ${OBJECTDIR}/_ext/549097302/usb_device.o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ${OBJECTDIR}/_ext/803622919/Primitive.o


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

# Path to java used to run MPLAB X when this makefile was created
MP_JAVA_PATH=C:\\Program\ Files\\Java\\jdk1.6.0_26\\jre/bin/
OS_CURRENT="$(shell uname -s)"
############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
MP_CC=C:\\Program\ Files\\Microchip\\mplabc30\\v3.30c\\bin\\pic30-gcc.exe
# MP_BC is not defined
MP_AS=C:\\Program\ Files\\Microchip\\mplabc30\\v3.30c\\bin\\pic30-as.exe
MP_LD=C:\\Program\ Files\\Microchip\\mplabc30\\v3.30c\\bin\\pic30-ld.exe
MP_AR=C:\\Program\ Files\\Microchip\\mplabc30\\v3.30c\\bin\\pic30-ar.exe
# MP_BC is not defined
MP_CC_DIR=C:\\Program\ Files\\Microchip\\mplabc30\\v3.30c\\bin
# MP_BC_DIR is not defined
MP_AS_DIR=C:\\Program\ Files\\Microchip\\mplabc30\\v3.30c\\bin
MP_LD_DIR=C:\\Program\ Files\\Microchip\\mplabc30\\v3.30c\\bin
MP_AR_DIR=C:\\Program\ Files\\Microchip\\mplabc30\\v3.30c\\bin
# MP_BC_DIR is not defined

.build-conf: ${BUILD_SUBPROJECTS}
	${MAKE}  -f nbproject/Makefile-PIC24_DA210_DEV_16PMP_QVGAv1_USB.mk dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf

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
${OBJECTDIR}/_ext/1687970324/drv_spi.o: ../../../Board\ Support\ Package/drv_spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.ok ${OBJECTDIR}/_ext/1687970324/drv_spi.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d -o ${OBJECTDIR}/_ext/1687970324/drv_spi.o ../../../Board\ Support\ Package/drv_spi.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d -o ${OBJECTDIR}/_ext/1687970324/drv_spi.o ../../../Board\ Support\ Package/drv_spi.c    2>&1  > ${OBJECTDIR}/_ext/1687970324/drv_spi.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1687970324/drv_spi.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d > ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	@${CP} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d > ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	@${CP} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1687970324/drv_spi.o.err 
	@cat ${OBJECTDIR}/_ext/1687970324/drv_spi.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1687970324/drv_spi.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1687970324/drv_spi.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1473877872/usb_function_generic.o: ../../../Microchip/USB/Generic\ Device\ Driver/usb_function_generic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1473877872 
	@${RM} ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.ok ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.d -o ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o ../../../Microchip/USB/Generic\ Device\ Driver/usb_function_generic.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.d -o ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o ../../../Microchip/USB/Generic\ Device\ Driver/usb_function_generic.c    2>&1  > ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.d > ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.d 
	@${CP} ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.tmp ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.d > ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.d 
	@${CP} ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.tmp ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.err 
	@cat ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1472/internalbitmap\ C30.o: ../internalbitmap\ C30.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/internalbitmap\ C30.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/internalbitmap\ C30.o.ok ${OBJECTDIR}/_ext/1472/internalbitmap\ C30.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1472/internalbitmap\ C30.o.d -o ${OBJECTDIR}/_ext/1472/internalbitmap\ C30.o ../internalbitmap\ C30.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1472/internalbitmap\ C30.o.d -o ${OBJECTDIR}/_ext/1472/internalbitmap\ C30.o ../internalbitmap\ C30.c    2>&1  > ${OBJECTDIR}/_ext/1472/internalbitmap\ C30.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/internalbitmap\ C30.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/internalbitmap\ C30.o.d > ${OBJECTDIR}/_ext/1472/internalbitmap\ C30.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/internalbitmap\ C30.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/internalbitmap\ C30.o.tmp ${OBJECTDIR}/_ext/1472/internalbitmap\ C30.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/internalbitmap\ C30.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/internalbitmap\ C30.o.d > ${OBJECTDIR}/_ext/1472/internalbitmap\ C30.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/internalbitmap\ C30.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/internalbitmap\ C30.o.tmp ${OBJECTDIR}/_ext/1472/internalbitmap\ C30.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/internalbitmap\ C30.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1472/internalbitmap\ C30.o.err 
	@cat ${OBJECTDIR}/_ext/1472/internalbitmap\ C30.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1472/internalbitmap\ C30.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/internalbitmap\ C30.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1472/usb_descriptors.o: ../usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.ok ${OBJECTDIR}/_ext/1472/usb_descriptors.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d -o ${OBJECTDIR}/_ext/1472/usb_descriptors.o ../usb_descriptors.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d -o ${OBJECTDIR}/_ext/1472/usb_descriptors.o ../usb_descriptors.c    2>&1  > ${OBJECTDIR}/_ext/1472/usb_descriptors.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/usb_descriptors.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d > ${OBJECTDIR}/_ext/1472/usb_descriptors.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.tmp ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d > ${OBJECTDIR}/_ext/1472/usb_descriptors.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.tmp ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1472/usb_descriptors.o.err 
	@cat ${OBJECTDIR}/_ext/1472/usb_descriptors.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1472/usb_descriptors.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/usb_descriptors.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o: ../../Common/FlashProgrammer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2049610667 
	@${RM} ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d 
	@${RM} ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.ok ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d -o ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o ../../Common/FlashProgrammer.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d -o ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o ../../Common/FlashProgrammer.c    2>&1  > ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d > ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.tmp
	@${RM} ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d 
	@${CP} ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.tmp ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d 
	@${RM} ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d > ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.tmp
	@${RM} ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d 
	@${CP} ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.tmp ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d 
	@${RM} ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.err 
	@cat ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.err 
	@if [ -f ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/2049610667/comm_pkt.o: ../../Common/comm_pkt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2049610667 
	@${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d 
	@${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.ok ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d -o ${OBJECTDIR}/_ext/2049610667/comm_pkt.o ../../Common/comm_pkt.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d -o ${OBJECTDIR}/_ext/2049610667/comm_pkt.o ../../Common/comm_pkt.c    2>&1  > ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d > ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.tmp
	@${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d 
	@${CP} ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.tmp ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d 
	@${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d > ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.tmp
	@${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d 
	@${CP} ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.tmp ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d 
	@${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.err 
	@cat ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.err 
	@if [ -f ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1687970324/SST39LF400.o: ../../../Board\ Support\ Package/SST39LF400.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.ok ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.d -o ${OBJECTDIR}/_ext/1687970324/SST39LF400.o ../../../Board\ Support\ Package/SST39LF400.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.d -o ${OBJECTDIR}/_ext/1687970324/SST39LF400.o ../../../Board\ Support\ Package/SST39LF400.c    2>&1  > ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.d > ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.d 
	@${CP} ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.tmp ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.d > ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.d 
	@${CP} ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.tmp ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.err 
	@cat ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/549097302/usb_device.o: ../../../Microchip/USB/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/549097302 
	@${RM} ${OBJECTDIR}/_ext/549097302/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/549097302/usb_device.o.ok ${OBJECTDIR}/_ext/549097302/usb_device.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/549097302/usb_device.o.d -o ${OBJECTDIR}/_ext/549097302/usb_device.o ../../../Microchip/USB/usb_device.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/549097302/usb_device.o.d -o ${OBJECTDIR}/_ext/549097302/usb_device.o ../../../Microchip/USB/usb_device.c    2>&1  > ${OBJECTDIR}/_ext/549097302/usb_device.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/549097302/usb_device.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/549097302/usb_device.o.d > ${OBJECTDIR}/_ext/549097302/usb_device.o.tmp
	@${RM} ${OBJECTDIR}/_ext/549097302/usb_device.o.d 
	@${CP} ${OBJECTDIR}/_ext/549097302/usb_device.o.tmp ${OBJECTDIR}/_ext/549097302/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/549097302/usb_device.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/549097302/usb_device.o.d > ${OBJECTDIR}/_ext/549097302/usb_device.o.tmp
	@${RM} ${OBJECTDIR}/_ext/549097302/usb_device.o.d 
	@${CP} ${OBJECTDIR}/_ext/549097302/usb_device.o.tmp ${OBJECTDIR}/_ext/549097302/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/549097302/usb_device.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/549097302/usb_device.o.err 
	@cat ${OBJECTDIR}/_ext/549097302/usb_device.o.err 
	@if [ -f ${OBJECTDIR}/_ext/549097302/usb_device.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/549097302/usb_device.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1687970324/SST39VF040.o: ../../../Board\ Support\ Package/SST39VF040.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.ok ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d -o ${OBJECTDIR}/_ext/1687970324/SST39VF040.o ../../../Board\ Support\ Package/SST39VF040.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d -o ${OBJECTDIR}/_ext/1687970324/SST39VF040.o ../../../Board\ Support\ Package/SST39VF040.c    2>&1  > ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d > ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d 
	@${CP} ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.tmp ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d > ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d 
	@${CP} ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.tmp ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.err 
	@cat ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1687970324/SST25VF016.o: ../../../Board\ Support\ Package/SST25VF016.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.ok ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d -o ${OBJECTDIR}/_ext/1687970324/SST25VF016.o ../../../Board\ Support\ Package/SST25VF016.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d -o ${OBJECTDIR}/_ext/1687970324/SST25VF016.o ../../../Board\ Support\ Package/SST25VF016.c    2>&1  > ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d > ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	@${CP} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.tmp ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d > ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	@${CP} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.tmp ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.err 
	@cat ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/803622919/Primitive.o: ../../../Microchip/Graphics/Primitive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.ok ${OBJECTDIR}/_ext/803622919/Primitive.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/Primitive.o.d -o ${OBJECTDIR}/_ext/803622919/Primitive.o ../../../Microchip/Graphics/Primitive.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/Primitive.o.d -o ${OBJECTDIR}/_ext/803622919/Primitive.o ../../../Microchip/Graphics/Primitive.c    2>&1  > ${OBJECTDIR}/_ext/803622919/Primitive.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/803622919/Primitive.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Primitive.o.d > ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp
	@${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	@${CP} ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/Primitive.o.d > ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp
	@${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	@${CP} ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/803622919/Primitive.o.err 
	@cat ${OBJECTDIR}/_ext/803622919/Primitive.o.err 
	@if [ -f ${OBJECTDIR}/_ext/803622919/Primitive.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/803622919/Primitive.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/803622919/GOLFontDefault.o: ../../../Microchip/Graphics/GOLFontDefault.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.ok ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d -o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ../../../Microchip/Graphics/GOLFontDefault.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d -o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ../../../Microchip/Graphics/GOLFontDefault.c    2>&1  > ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d > ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	@${CP} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d > ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	@${CP} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.err 
	@cat ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.err 
	@if [ -f ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o: ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.ok ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d -o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d -o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c    2>&1  > ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d > ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	@${CP} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d > ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	@${CP} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.err 
	@cat ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1687970324/Beep.o: ../../../Board\ Support\ Package/Beep.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/Beep.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/Beep.o.ok ${OBJECTDIR}/_ext/1687970324/Beep.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/Beep.o.d -o ${OBJECTDIR}/_ext/1687970324/Beep.o ../../../Board\ Support\ Package/Beep.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/Beep.o.d -o ${OBJECTDIR}/_ext/1687970324/Beep.o ../../../Board\ Support\ Package/Beep.c    2>&1  > ${OBJECTDIR}/_ext/1687970324/Beep.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1687970324/Beep.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/Beep.o.d > ${OBJECTDIR}/_ext/1687970324/Beep.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1687970324/Beep.o.d 
	@${CP} ${OBJECTDIR}/_ext/1687970324/Beep.o.tmp ${OBJECTDIR}/_ext/1687970324/Beep.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/Beep.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1687970324/Beep.o.d > ${OBJECTDIR}/_ext/1687970324/Beep.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1687970324/Beep.o.d 
	@${CP} ${OBJECTDIR}/_ext/1687970324/Beep.o.tmp ${OBJECTDIR}/_ext/1687970324/Beep.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/Beep.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1687970324/Beep.o.err 
	@cat ${OBJECTDIR}/_ext/1687970324/Beep.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1687970324/Beep.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1687970324/Beep.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1472/externalref.o: ../externalref.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/externalref.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/externalref.o.ok ${OBJECTDIR}/_ext/1472/externalref.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1472/externalref.o.d -o ${OBJECTDIR}/_ext/1472/externalref.o ../externalref.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1472/externalref.o.d -o ${OBJECTDIR}/_ext/1472/externalref.o ../externalref.c    2>&1  > ${OBJECTDIR}/_ext/1472/externalref.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/externalref.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/externalref.o.d > ${OBJECTDIR}/_ext/1472/externalref.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/externalref.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/externalref.o.tmp ${OBJECTDIR}/_ext/1472/externalref.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/externalref.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/externalref.o.d > ${OBJECTDIR}/_ext/1472/externalref.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/externalref.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/externalref.o.tmp ${OBJECTDIR}/_ext/1472/externalref.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/externalref.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1472/externalref.o.err 
	@cat ${OBJECTDIR}/_ext/1472/externalref.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1472/externalref.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/externalref.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o: ../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.ok ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d -o ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o ../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d -o ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o ../../../Microchip/Graphics/Drivers/mchpGfxDrv.c    2>&1  > ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d > ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	@${CP} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.tmp ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d > ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	@${CP} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.tmp ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.err 
	@cat ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1472/usb_callback.o: ../usb_callback.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/usb_callback.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/usb_callback.o.ok ${OBJECTDIR}/_ext/1472/usb_callback.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1472/usb_callback.o.d -o ${OBJECTDIR}/_ext/1472/usb_callback.o ../usb_callback.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1472/usb_callback.o.d -o ${OBJECTDIR}/_ext/1472/usb_callback.o ../usb_callback.c    2>&1  > ${OBJECTDIR}/_ext/1472/usb_callback.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/usb_callback.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/usb_callback.o.d > ${OBJECTDIR}/_ext/1472/usb_callback.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/usb_callback.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/usb_callback.o.tmp ${OBJECTDIR}/_ext/1472/usb_callback.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/usb_callback.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/usb_callback.o.d > ${OBJECTDIR}/_ext/1472/usb_callback.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/usb_callback.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/usb_callback.o.tmp ${OBJECTDIR}/_ext/1472/usb_callback.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/usb_callback.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1472/usb_callback.o.err 
	@cat ${OBJECTDIR}/_ext/1472/usb_callback.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1472/usb_callback.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/usb_callback.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1472/MainDemo.o: ../MainDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.ok ${OBJECTDIR}/_ext/1472/MainDemo.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1472/MainDemo.o.d -o ${OBJECTDIR}/_ext/1472/MainDemo.o ../MainDemo.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1472/MainDemo.o.d -o ${OBJECTDIR}/_ext/1472/MainDemo.o ../MainDemo.c    2>&1  > ${OBJECTDIR}/_ext/1472/MainDemo.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/MainDemo.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/MainDemo.o.d > ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/MainDemo.o.d > ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1472/MainDemo.o.err 
	@cat ${OBJECTDIR}/_ext/1472/MainDemo.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1472/MainDemo.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/MainDemo.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1860783399/TimeDelay.o: ../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1860783399 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.ok ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d -o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ../../../Microchip/Common/TimeDelay.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d -o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ../../../Microchip/Common/TimeDelay.c    2>&1  > ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d > ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	@${CP} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d > ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	@${CP} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.err 
	@cat ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o: ../../Common/comm_pkt_callback.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2049610667 
	@${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d 
	@${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.ok ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d -o ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o ../../Common/comm_pkt_callback.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d -o ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o ../../Common/comm_pkt_callback.c    2>&1  > ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d > ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.tmp
	@${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d 
	@${CP} ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.tmp ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d 
	@${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d > ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.tmp
	@${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d 
	@${CP} ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.tmp ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d 
	@${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.err 
	@cat ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.err 
	@if [ -f ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1472/internalfont\ C30.o: ../internalfont\ C30.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/internalfont\ C30.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/internalfont\ C30.o.ok ${OBJECTDIR}/_ext/1472/internalfont\ C30.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1472/internalfont\ C30.o.d -o ${OBJECTDIR}/_ext/1472/internalfont\ C30.o ../internalfont\ C30.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1472/internalfont\ C30.o.d -o ${OBJECTDIR}/_ext/1472/internalfont\ C30.o ../internalfont\ C30.c    2>&1  > ${OBJECTDIR}/_ext/1472/internalfont\ C30.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/internalfont\ C30.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/internalfont\ C30.o.d > ${OBJECTDIR}/_ext/1472/internalfont\ C30.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/internalfont\ C30.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/internalfont\ C30.o.tmp ${OBJECTDIR}/_ext/1472/internalfont\ C30.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/internalfont\ C30.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/internalfont\ C30.o.d > ${OBJECTDIR}/_ext/1472/internalfont\ C30.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/internalfont\ C30.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/internalfont\ C30.o.tmp ${OBJECTDIR}/_ext/1472/internalfont\ C30.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/internalfont\ C30.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1472/internalfont\ C30.o.err 
	@cat ${OBJECTDIR}/_ext/1472/internalfont\ C30.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1472/internalfont\ C30.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/internalfont\ C30.o.ok; else exit 1; fi
	
else
${OBJECTDIR}/_ext/1687970324/drv_spi.o: ../../../Board\ Support\ Package/drv_spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.ok ${OBJECTDIR}/_ext/1687970324/drv_spi.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d -o ${OBJECTDIR}/_ext/1687970324/drv_spi.o ../../../Board\ Support\ Package/drv_spi.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d -o ${OBJECTDIR}/_ext/1687970324/drv_spi.o ../../../Board\ Support\ Package/drv_spi.c    2>&1  > ${OBJECTDIR}/_ext/1687970324/drv_spi.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1687970324/drv_spi.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d > ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	@${CP} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d > ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	@${CP} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1687970324/drv_spi.o.err 
	@cat ${OBJECTDIR}/_ext/1687970324/drv_spi.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1687970324/drv_spi.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1687970324/drv_spi.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1473877872/usb_function_generic.o: ../../../Microchip/USB/Generic\ Device\ Driver/usb_function_generic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1473877872 
	@${RM} ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.ok ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.d -o ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o ../../../Microchip/USB/Generic\ Device\ Driver/usb_function_generic.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.d -o ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o ../../../Microchip/USB/Generic\ Device\ Driver/usb_function_generic.c    2>&1  > ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.d > ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.d 
	@${CP} ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.tmp ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.d > ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.d 
	@${CP} ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.tmp ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.err 
	@cat ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1472/internalbitmap\ C30.o: ../internalbitmap\ C30.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/internalbitmap\ C30.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/internalbitmap\ C30.o.ok ${OBJECTDIR}/_ext/1472/internalbitmap\ C30.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1472/internalbitmap\ C30.o.d -o ${OBJECTDIR}/_ext/1472/internalbitmap\ C30.o ../internalbitmap\ C30.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1472/internalbitmap\ C30.o.d -o ${OBJECTDIR}/_ext/1472/internalbitmap\ C30.o ../internalbitmap\ C30.c    2>&1  > ${OBJECTDIR}/_ext/1472/internalbitmap\ C30.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/internalbitmap\ C30.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/internalbitmap\ C30.o.d > ${OBJECTDIR}/_ext/1472/internalbitmap\ C30.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/internalbitmap\ C30.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/internalbitmap\ C30.o.tmp ${OBJECTDIR}/_ext/1472/internalbitmap\ C30.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/internalbitmap\ C30.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/internalbitmap\ C30.o.d > ${OBJECTDIR}/_ext/1472/internalbitmap\ C30.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/internalbitmap\ C30.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/internalbitmap\ C30.o.tmp ${OBJECTDIR}/_ext/1472/internalbitmap\ C30.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/internalbitmap\ C30.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1472/internalbitmap\ C30.o.err 
	@cat ${OBJECTDIR}/_ext/1472/internalbitmap\ C30.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1472/internalbitmap\ C30.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/internalbitmap\ C30.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1472/usb_descriptors.o: ../usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.ok ${OBJECTDIR}/_ext/1472/usb_descriptors.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d -o ${OBJECTDIR}/_ext/1472/usb_descriptors.o ../usb_descriptors.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d -o ${OBJECTDIR}/_ext/1472/usb_descriptors.o ../usb_descriptors.c    2>&1  > ${OBJECTDIR}/_ext/1472/usb_descriptors.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/usb_descriptors.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d > ${OBJECTDIR}/_ext/1472/usb_descriptors.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.tmp ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d > ${OBJECTDIR}/_ext/1472/usb_descriptors.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.tmp ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1472/usb_descriptors.o.err 
	@cat ${OBJECTDIR}/_ext/1472/usb_descriptors.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1472/usb_descriptors.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/usb_descriptors.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o: ../../Common/FlashProgrammer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2049610667 
	@${RM} ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d 
	@${RM} ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.ok ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d -o ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o ../../Common/FlashProgrammer.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d -o ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o ../../Common/FlashProgrammer.c    2>&1  > ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d > ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.tmp
	@${RM} ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d 
	@${CP} ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.tmp ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d 
	@${RM} ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d > ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.tmp
	@${RM} ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d 
	@${CP} ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.tmp ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d 
	@${RM} ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.err 
	@cat ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.err 
	@if [ -f ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/2049610667/comm_pkt.o: ../../Common/comm_pkt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2049610667 
	@${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d 
	@${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.ok ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d -o ${OBJECTDIR}/_ext/2049610667/comm_pkt.o ../../Common/comm_pkt.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d -o ${OBJECTDIR}/_ext/2049610667/comm_pkt.o ../../Common/comm_pkt.c    2>&1  > ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d > ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.tmp
	@${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d 
	@${CP} ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.tmp ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d 
	@${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d > ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.tmp
	@${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d 
	@${CP} ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.tmp ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d 
	@${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.err 
	@cat ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.err 
	@if [ -f ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1687970324/SST39LF400.o: ../../../Board\ Support\ Package/SST39LF400.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.ok ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.d -o ${OBJECTDIR}/_ext/1687970324/SST39LF400.o ../../../Board\ Support\ Package/SST39LF400.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.d -o ${OBJECTDIR}/_ext/1687970324/SST39LF400.o ../../../Board\ Support\ Package/SST39LF400.c    2>&1  > ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.d > ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.d 
	@${CP} ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.tmp ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.d > ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.d 
	@${CP} ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.tmp ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.err 
	@cat ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/549097302/usb_device.o: ../../../Microchip/USB/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/549097302 
	@${RM} ${OBJECTDIR}/_ext/549097302/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/549097302/usb_device.o.ok ${OBJECTDIR}/_ext/549097302/usb_device.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/549097302/usb_device.o.d -o ${OBJECTDIR}/_ext/549097302/usb_device.o ../../../Microchip/USB/usb_device.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/549097302/usb_device.o.d -o ${OBJECTDIR}/_ext/549097302/usb_device.o ../../../Microchip/USB/usb_device.c    2>&1  > ${OBJECTDIR}/_ext/549097302/usb_device.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/549097302/usb_device.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/549097302/usb_device.o.d > ${OBJECTDIR}/_ext/549097302/usb_device.o.tmp
	@${RM} ${OBJECTDIR}/_ext/549097302/usb_device.o.d 
	@${CP} ${OBJECTDIR}/_ext/549097302/usb_device.o.tmp ${OBJECTDIR}/_ext/549097302/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/549097302/usb_device.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/549097302/usb_device.o.d > ${OBJECTDIR}/_ext/549097302/usb_device.o.tmp
	@${RM} ${OBJECTDIR}/_ext/549097302/usb_device.o.d 
	@${CP} ${OBJECTDIR}/_ext/549097302/usb_device.o.tmp ${OBJECTDIR}/_ext/549097302/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/549097302/usb_device.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/549097302/usb_device.o.err 
	@cat ${OBJECTDIR}/_ext/549097302/usb_device.o.err 
	@if [ -f ${OBJECTDIR}/_ext/549097302/usb_device.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/549097302/usb_device.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1687970324/SST39VF040.o: ../../../Board\ Support\ Package/SST39VF040.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.ok ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d -o ${OBJECTDIR}/_ext/1687970324/SST39VF040.o ../../../Board\ Support\ Package/SST39VF040.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d -o ${OBJECTDIR}/_ext/1687970324/SST39VF040.o ../../../Board\ Support\ Package/SST39VF040.c    2>&1  > ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d > ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d 
	@${CP} ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.tmp ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d > ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d 
	@${CP} ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.tmp ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.err 
	@cat ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1687970324/SST25VF016.o: ../../../Board\ Support\ Package/SST25VF016.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.ok ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d -o ${OBJECTDIR}/_ext/1687970324/SST25VF016.o ../../../Board\ Support\ Package/SST25VF016.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d -o ${OBJECTDIR}/_ext/1687970324/SST25VF016.o ../../../Board\ Support\ Package/SST25VF016.c    2>&1  > ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d > ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	@${CP} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.tmp ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d > ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	@${CP} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.tmp ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.err 
	@cat ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/803622919/Primitive.o: ../../../Microchip/Graphics/Primitive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.ok ${OBJECTDIR}/_ext/803622919/Primitive.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/Primitive.o.d -o ${OBJECTDIR}/_ext/803622919/Primitive.o ../../../Microchip/Graphics/Primitive.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/Primitive.o.d -o ${OBJECTDIR}/_ext/803622919/Primitive.o ../../../Microchip/Graphics/Primitive.c    2>&1  > ${OBJECTDIR}/_ext/803622919/Primitive.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/803622919/Primitive.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Primitive.o.d > ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp
	@${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	@${CP} ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/Primitive.o.d > ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp
	@${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	@${CP} ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/803622919/Primitive.o.err 
	@cat ${OBJECTDIR}/_ext/803622919/Primitive.o.err 
	@if [ -f ${OBJECTDIR}/_ext/803622919/Primitive.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/803622919/Primitive.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/803622919/GOLFontDefault.o: ../../../Microchip/Graphics/GOLFontDefault.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.ok ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d -o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ../../../Microchip/Graphics/GOLFontDefault.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d -o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ../../../Microchip/Graphics/GOLFontDefault.c    2>&1  > ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d > ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	@${CP} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d > ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	@${CP} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.err 
	@cat ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.err 
	@if [ -f ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o: ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.ok ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d -o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d -o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c    2>&1  > ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d > ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	@${CP} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d > ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	@${CP} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.err 
	@cat ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1687970324/Beep.o: ../../../Board\ Support\ Package/Beep.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/Beep.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/Beep.o.ok ${OBJECTDIR}/_ext/1687970324/Beep.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/Beep.o.d -o ${OBJECTDIR}/_ext/1687970324/Beep.o ../../../Board\ Support\ Package/Beep.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/Beep.o.d -o ${OBJECTDIR}/_ext/1687970324/Beep.o ../../../Board\ Support\ Package/Beep.c    2>&1  > ${OBJECTDIR}/_ext/1687970324/Beep.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1687970324/Beep.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/Beep.o.d > ${OBJECTDIR}/_ext/1687970324/Beep.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1687970324/Beep.o.d 
	@${CP} ${OBJECTDIR}/_ext/1687970324/Beep.o.tmp ${OBJECTDIR}/_ext/1687970324/Beep.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/Beep.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1687970324/Beep.o.d > ${OBJECTDIR}/_ext/1687970324/Beep.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1687970324/Beep.o.d 
	@${CP} ${OBJECTDIR}/_ext/1687970324/Beep.o.tmp ${OBJECTDIR}/_ext/1687970324/Beep.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/Beep.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1687970324/Beep.o.err 
	@cat ${OBJECTDIR}/_ext/1687970324/Beep.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1687970324/Beep.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1687970324/Beep.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1472/externalref.o: ../externalref.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/externalref.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/externalref.o.ok ${OBJECTDIR}/_ext/1472/externalref.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1472/externalref.o.d -o ${OBJECTDIR}/_ext/1472/externalref.o ../externalref.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1472/externalref.o.d -o ${OBJECTDIR}/_ext/1472/externalref.o ../externalref.c    2>&1  > ${OBJECTDIR}/_ext/1472/externalref.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/externalref.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/externalref.o.d > ${OBJECTDIR}/_ext/1472/externalref.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/externalref.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/externalref.o.tmp ${OBJECTDIR}/_ext/1472/externalref.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/externalref.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/externalref.o.d > ${OBJECTDIR}/_ext/1472/externalref.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/externalref.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/externalref.o.tmp ${OBJECTDIR}/_ext/1472/externalref.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/externalref.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1472/externalref.o.err 
	@cat ${OBJECTDIR}/_ext/1472/externalref.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1472/externalref.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/externalref.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o: ../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.ok ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d -o ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o ../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d -o ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o ../../../Microchip/Graphics/Drivers/mchpGfxDrv.c    2>&1  > ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d > ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	@${CP} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.tmp ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d > ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	@${CP} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.tmp ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.err 
	@cat ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1472/usb_callback.o: ../usb_callback.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/usb_callback.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/usb_callback.o.ok ${OBJECTDIR}/_ext/1472/usb_callback.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1472/usb_callback.o.d -o ${OBJECTDIR}/_ext/1472/usb_callback.o ../usb_callback.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1472/usb_callback.o.d -o ${OBJECTDIR}/_ext/1472/usb_callback.o ../usb_callback.c    2>&1  > ${OBJECTDIR}/_ext/1472/usb_callback.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/usb_callback.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/usb_callback.o.d > ${OBJECTDIR}/_ext/1472/usb_callback.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/usb_callback.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/usb_callback.o.tmp ${OBJECTDIR}/_ext/1472/usb_callback.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/usb_callback.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/usb_callback.o.d > ${OBJECTDIR}/_ext/1472/usb_callback.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/usb_callback.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/usb_callback.o.tmp ${OBJECTDIR}/_ext/1472/usb_callback.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/usb_callback.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1472/usb_callback.o.err 
	@cat ${OBJECTDIR}/_ext/1472/usb_callback.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1472/usb_callback.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/usb_callback.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1472/MainDemo.o: ../MainDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.ok ${OBJECTDIR}/_ext/1472/MainDemo.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1472/MainDemo.o.d -o ${OBJECTDIR}/_ext/1472/MainDemo.o ../MainDemo.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1472/MainDemo.o.d -o ${OBJECTDIR}/_ext/1472/MainDemo.o ../MainDemo.c    2>&1  > ${OBJECTDIR}/_ext/1472/MainDemo.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/MainDemo.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/MainDemo.o.d > ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/MainDemo.o.d > ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1472/MainDemo.o.err 
	@cat ${OBJECTDIR}/_ext/1472/MainDemo.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1472/MainDemo.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/MainDemo.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1860783399/TimeDelay.o: ../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1860783399 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.ok ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d -o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ../../../Microchip/Common/TimeDelay.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d -o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ../../../Microchip/Common/TimeDelay.c    2>&1  > ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d > ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	@${CP} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d > ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	@${CP} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.err 
	@cat ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o: ../../Common/comm_pkt_callback.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2049610667 
	@${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d 
	@${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.ok ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d -o ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o ../../Common/comm_pkt_callback.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d -o ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o ../../Common/comm_pkt_callback.c    2>&1  > ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d > ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.tmp
	@${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d 
	@${CP} ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.tmp ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d 
	@${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d > ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.tmp
	@${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d 
	@${CP} ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.tmp ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d 
	@${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.err 
	@cat ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.err 
	@if [ -f ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1472/internalfont\ C30.o: ../internalfont\ C30.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/internalfont\ C30.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/internalfont\ C30.o.ok ${OBJECTDIR}/_ext/1472/internalfont\ C30.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1472/internalfont\ C30.o.d -o ${OBJECTDIR}/_ext/1472/internalfont\ C30.o ../internalfont\ C30.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1472/internalfont\ C30.o.d -o ${OBJECTDIR}/_ext/1472/internalfont\ C30.o ../internalfont\ C30.c    2>&1  > ${OBJECTDIR}/_ext/1472/internalfont\ C30.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/internalfont\ C30.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/internalfont\ C30.o.d > ${OBJECTDIR}/_ext/1472/internalfont\ C30.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/internalfont\ C30.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/internalfont\ C30.o.tmp ${OBJECTDIR}/_ext/1472/internalfont\ C30.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/internalfont\ C30.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/internalfont\ C30.o.d > ${OBJECTDIR}/_ext/1472/internalfont\ C30.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/internalfont\ C30.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/internalfont\ C30.o.tmp ${OBJECTDIR}/_ext/1472/internalfont\ C30.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/internalfont\ C30.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1472/internalfont\ C30.o.err 
	@cat ${OBJECTDIR}/_ext/1472/internalfont\ C30.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1472/internalfont\ C30.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/internalfont\ C30.o.ok; else exit 1; fi
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf  -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf ${OBJECTFILES}        -Wl,--defsym=__MPLAB_BUILD=1,--no-check-sections,-L"../../../../../../Program Files/Microchip/MPLAB C30/lib",-Map="$(TARGETBASE).map",--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_REAL_ICE=1
else
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf  -mcpu=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf ${OBJECTFILES}        -Wl,--defsym=__MPLAB_BUILD=1,--no-check-sections,-L"../../../../../../Program Files/Microchip/MPLAB C30/lib",-Map="$(TARGETBASE).map",--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION)
	${MP_CC_DIR}\\pic30-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf -omf=elf
endif


# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf:
	${RM} -r build/PIC24_DA210_DEV_16PMP_QVGAv1_USB
	${RM} -r dist/PIC24_DA210_DEV_16PMP_QVGAv1_USB

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
