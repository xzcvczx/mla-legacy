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
CND_CONF=PIC32_460_GFXv3_EX16_16PMP_QVGAv1_UART
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
OBJECTFILES=${OBJECTDIR}/_ext/1472/ExternalMemoryPictures.o ${OBJECTDIR}/_ext/1472/InternalFlashJPEGPicturesC32.o ${OBJECTDIR}/_ext/1472/JPEGImage.o ${OBJECTDIR}/_ext/1472/MainDemo.o ${OBJECTDIR}/_ext/1472/UART.o ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o ${OBJECTDIR}/_ext/1626048738/jidctint.o ${OBJECTDIR}/_ext/1687970324/SST25VF016.o ${OBJECTDIR}/_ext/1687970324/SST39VF040.o ${OBJECTDIR}/_ext/1687970324/cpld.o ${OBJECTDIR}/_ext/1687970324/drv_spi.o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ${OBJECTDIR}/_ext/1919882987/SSD1926.o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ${OBJECTDIR}/_ext/1919882987/gfxepmp.o ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o ${OBJECTDIR}/_ext/2049610667/comm_pkt.o ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ${OBJECTDIR}/_ext/803622919/Primitive.o


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
MP_CC=C:\\Program\ Files\\Microchip\\mplabc32\\v2.01\\bin\\pic32-gcc.exe
# MP_BC is not defined
MP_AS=C:\\Program\ Files\\Microchip\\mplabc32\\v2.01\\bin\\pic32-as.exe
MP_LD=C:\\Program\ Files\\Microchip\\mplabc32\\v2.01\\bin\\pic32-ld.exe
MP_AR=C:\\Program\ Files\\Microchip\\mplabc32\\v2.01\\bin\\pic32-ar.exe
# MP_BC is not defined
MP_CC_DIR=C:\\Program\ Files\\Microchip\\mplabc32\\v2.01\\bin
# MP_BC_DIR is not defined
MP_AS_DIR=C:\\Program\ Files\\Microchip\\mplabc32\\v2.01\\bin
MP_LD_DIR=C:\\Program\ Files\\Microchip\\mplabc32\\v2.01\\bin
MP_AR_DIR=C:\\Program\ Files\\Microchip\\mplabc32\\v2.01\\bin
# MP_BC_DIR is not defined

.build-conf: ${BUILD_SUBPROJECTS}
	${MAKE}  -f nbproject/Makefile-PIC32_460_GFXv3_EX16_16PMP_QVGAv1_UART.mk dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf

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
${OBJECTDIR}/_ext/1919882987/SSD1926.o: ../../../Microchip/Graphics/Drivers/SSD1926.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.ok ${OBJECTDIR}/_ext/1919882987/SSD1926.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d -o ${OBJECTDIR}/_ext/1919882987/SSD1926.o ../../../Microchip/Graphics/Drivers/SSD1926.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d -o ${OBJECTDIR}/_ext/1919882987/SSD1926.o ../../../Microchip/Graphics/Drivers/SSD1926.c   2>&1  > ${OBJECTDIR}/_ext/1919882987/SSD1926.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1919882987/SSD1926.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d > ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	@${CP} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1919882987/SSD1926.o.err 
	@cat ${OBJECTDIR}/_ext/1919882987/SSD1926.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1919882987/SSD1926.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1919882987/SSD1926.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1472/JPEGImage.o: ../JPEGImage.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/JPEGImage.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/JPEGImage.o.ok ${OBJECTDIR}/_ext/1472/JPEGImage.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/JPEGImage.o.d -o ${OBJECTDIR}/_ext/1472/JPEGImage.o ../JPEGImage.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/JPEGImage.o.d -o ${OBJECTDIR}/_ext/1472/JPEGImage.o ../JPEGImage.c   2>&1  > ${OBJECTDIR}/_ext/1472/JPEGImage.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/JPEGImage.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1472/JPEGImage.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/JPEGImage.o.d > ${OBJECTDIR}/_ext/1472/JPEGImage.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/JPEGImage.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/JPEGImage.o.tmp ${OBJECTDIR}/_ext/1472/JPEGImage.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/JPEGImage.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1472/JPEGImage.o.err 
	@cat ${OBJECTDIR}/_ext/1472/JPEGImage.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1472/JPEGImage.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/JPEGImage.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1687970324/drv_spi.o: ../../../Board\ Support\ Package/drv_spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.ok ${OBJECTDIR}/_ext/1687970324/drv_spi.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d -o ${OBJECTDIR}/_ext/1687970324/drv_spi.o ../../../Board\ Support\ Package/drv_spi.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d -o ${OBJECTDIR}/_ext/1687970324/drv_spi.o ../../../Board\ Support\ Package/drv_spi.c   2>&1  > ${OBJECTDIR}/_ext/1687970324/drv_spi.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1687970324/drv_spi.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d > ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	@${CP} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1687970324/drv_spi.o.err 
	@cat ${OBJECTDIR}/_ext/1687970324/drv_spi.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1687970324/drv_spi.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1687970324/drv_spi.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1472/ExternalMemoryPictures.o: ../ExternalMemoryPictures.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/ExternalMemoryPictures.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/ExternalMemoryPictures.o.ok ${OBJECTDIR}/_ext/1472/ExternalMemoryPictures.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/ExternalMemoryPictures.o.d -o ${OBJECTDIR}/_ext/1472/ExternalMemoryPictures.o ../ExternalMemoryPictures.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/ExternalMemoryPictures.o.d -o ${OBJECTDIR}/_ext/1472/ExternalMemoryPictures.o ../ExternalMemoryPictures.c   2>&1  > ${OBJECTDIR}/_ext/1472/ExternalMemoryPictures.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/ExternalMemoryPictures.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1472/ExternalMemoryPictures.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/ExternalMemoryPictures.o.d > ${OBJECTDIR}/_ext/1472/ExternalMemoryPictures.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/ExternalMemoryPictures.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/ExternalMemoryPictures.o.tmp ${OBJECTDIR}/_ext/1472/ExternalMemoryPictures.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/ExternalMemoryPictures.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1472/ExternalMemoryPictures.o.err 
	@cat ${OBJECTDIR}/_ext/1472/ExternalMemoryPictures.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1472/ExternalMemoryPictures.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/ExternalMemoryPictures.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1687970324/cpld.o: ../../../Board\ Support\ Package/cpld.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.ok ${OBJECTDIR}/_ext/1687970324/cpld.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/cpld.o.d -o ${OBJECTDIR}/_ext/1687970324/cpld.o ../../../Board\ Support\ Package/cpld.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/cpld.o.d -o ${OBJECTDIR}/_ext/1687970324/cpld.o ../../../Board\ Support\ Package/cpld.c   2>&1  > ${OBJECTDIR}/_ext/1687970324/cpld.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1687970324/cpld.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/cpld.o.d > ${OBJECTDIR}/_ext/1687970324/cpld.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	@${CP} ${OBJECTDIR}/_ext/1687970324/cpld.o.tmp ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1687970324/cpld.o.err 
	@cat ${OBJECTDIR}/_ext/1687970324/cpld.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1687970324/cpld.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1687970324/cpld.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o: ../../Common/FlashProgrammer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2049610667 
	@${RM} ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d 
	@${RM} ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.ok ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d -o ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o ../../Common/FlashProgrammer.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d -o ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o ../../Common/FlashProgrammer.c   2>&1  > ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d > ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.tmp
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
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d -o ${OBJECTDIR}/_ext/2049610667/comm_pkt.o ../../Common/comm_pkt.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d -o ${OBJECTDIR}/_ext/2049610667/comm_pkt.o ../../Common/comm_pkt.c   2>&1  > ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d > ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.tmp
	@${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d 
	@${CP} ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.tmp ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d 
	@${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.err 
	@cat ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.err 
	@if [ -f ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1472/UART.o: ../UART.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/UART.o.ok ${OBJECTDIR}/_ext/1472/UART.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/UART.o.d -o ${OBJECTDIR}/_ext/1472/UART.o ../UART.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/UART.o.d -o ${OBJECTDIR}/_ext/1472/UART.o ../UART.c   2>&1  > ${OBJECTDIR}/_ext/1472/UART.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/UART.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1472/UART.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/UART.o.d > ${OBJECTDIR}/_ext/1472/UART.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/UART.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/UART.o.tmp ${OBJECTDIR}/_ext/1472/UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/UART.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1472/UART.o.err 
	@cat ${OBJECTDIR}/_ext/1472/UART.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1472/UART.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/UART.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1919882987/gfxepmp.o: ../../../Microchip/Graphics/Drivers/gfxepmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.ok ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d -o ${OBJECTDIR}/_ext/1919882987/gfxepmp.o ../../../Microchip/Graphics/Drivers/gfxepmp.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d -o ${OBJECTDIR}/_ext/1919882987/gfxepmp.o ../../../Microchip/Graphics/Drivers/gfxepmp.c   2>&1  > ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d > ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	@${CP} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.err 
	@cat ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1687970324/SST39VF040.o: ../../../Board\ Support\ Package/SST39VF040.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.ok ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d -o ${OBJECTDIR}/_ext/1687970324/SST39VF040.o ../../../Board\ Support\ Package/SST39VF040.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d -o ${OBJECTDIR}/_ext/1687970324/SST39VF040.o ../../../Board\ Support\ Package/SST39VF040.c   2>&1  > ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d > ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.tmp
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
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d -o ${OBJECTDIR}/_ext/1687970324/SST25VF016.o ../../../Board\ Support\ Package/SST25VF016.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d -o ${OBJECTDIR}/_ext/1687970324/SST25VF016.o ../../../Board\ Support\ Package/SST25VF016.c   2>&1  > ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d > ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.tmp
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
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/Primitive.o.d -o ${OBJECTDIR}/_ext/803622919/Primitive.o ../../../Microchip/Graphics/Primitive.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/Primitive.o.d -o ${OBJECTDIR}/_ext/803622919/Primitive.o ../../../Microchip/Graphics/Primitive.c   2>&1  > ${OBJECTDIR}/_ext/803622919/Primitive.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/803622919/Primitive.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Primitive.o.d > ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp
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
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d -o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ../../../Microchip/Graphics/GOLFontDefault.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d -o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ../../../Microchip/Graphics/GOLFontDefault.c   2>&1  > ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d > ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp
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
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d -o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d -o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c   2>&1  > ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d > ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	@${CP} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.err 
	@cat ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1472/MainDemo.o: ../MainDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.ok ${OBJECTDIR}/_ext/1472/MainDemo.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/MainDemo.o.d -o ${OBJECTDIR}/_ext/1472/MainDemo.o ../MainDemo.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/MainDemo.o.d -o ${OBJECTDIR}/_ext/1472/MainDemo.o ../MainDemo.c   2>&1  > ${OBJECTDIR}/_ext/1472/MainDemo.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/MainDemo.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/MainDemo.o.d > ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp
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
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d -o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ../../../Microchip/Common/TimeDelay.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d -o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ../../../Microchip/Common/TimeDelay.c   2>&1  > ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d > ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	@${CP} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.err 
	@cat ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1626048738/jidctint.o: ../../../Microchip/Image\ Decoders/jidctint.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	@${RM} ${OBJECTDIR}/_ext/1626048738/jidctint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/jidctint.o.ok ${OBJECTDIR}/_ext/1626048738/jidctint.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/1626048738/jidctint.o.d -o ${OBJECTDIR}/_ext/1626048738/jidctint.o ../../../Microchip/Image\ Decoders/jidctint.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/1626048738/jidctint.o.d -o ${OBJECTDIR}/_ext/1626048738/jidctint.o ../../../Microchip/Image\ Decoders/jidctint.c   2>&1  > ${OBJECTDIR}/_ext/1626048738/jidctint.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1626048738/jidctint.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1626048738/jidctint.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1626048738/jidctint.o.d > ${OBJECTDIR}/_ext/1626048738/jidctint.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1626048738/jidctint.o.d 
	@${CP} ${OBJECTDIR}/_ext/1626048738/jidctint.o.tmp ${OBJECTDIR}/_ext/1626048738/jidctint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/jidctint.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1626048738/jidctint.o.err 
	@cat ${OBJECTDIR}/_ext/1626048738/jidctint.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1626048738/jidctint.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1626048738/jidctint.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o: ../../Common/comm_pkt_callback.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2049610667 
	@${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d 
	@${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.ok ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d -o ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o ../../Common/comm_pkt_callback.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d -o ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o ../../Common/comm_pkt_callback.c   2>&1  > ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d > ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.tmp
	@${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d 
	@${CP} ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.tmp ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d 
	@${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.err 
	@cat ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.err 
	@if [ -f ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1626048738/ImageDecoder.o: ../../../Microchip/Image\ Decoders/ImageDecoder.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	@${RM} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.ok ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d -o ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o ../../../Microchip/Image\ Decoders/ImageDecoder.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d -o ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o ../../../Microchip/Image\ Decoders/ImageDecoder.c   2>&1  > ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d > ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d 
	@${CP} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.tmp ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.err 
	@cat ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1472/InternalFlashJPEGPicturesC32.o: ../InternalFlashJPEGPicturesC32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/InternalFlashJPEGPicturesC32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/InternalFlashJPEGPicturesC32.o.ok ${OBJECTDIR}/_ext/1472/InternalFlashJPEGPicturesC32.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/InternalFlashJPEGPicturesC32.o.d -o ${OBJECTDIR}/_ext/1472/InternalFlashJPEGPicturesC32.o ../InternalFlashJPEGPicturesC32.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/InternalFlashJPEGPicturesC32.o.d -o ${OBJECTDIR}/_ext/1472/InternalFlashJPEGPicturesC32.o ../InternalFlashJPEGPicturesC32.c   2>&1  > ${OBJECTDIR}/_ext/1472/InternalFlashJPEGPicturesC32.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/InternalFlashJPEGPicturesC32.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1472/InternalFlashJPEGPicturesC32.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/InternalFlashJPEGPicturesC32.o.d > ${OBJECTDIR}/_ext/1472/InternalFlashJPEGPicturesC32.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/InternalFlashJPEGPicturesC32.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/InternalFlashJPEGPicturesC32.o.tmp ${OBJECTDIR}/_ext/1472/InternalFlashJPEGPicturesC32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/InternalFlashJPEGPicturesC32.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1472/InternalFlashJPEGPicturesC32.o.err 
	@cat ${OBJECTDIR}/_ext/1472/InternalFlashJPEGPicturesC32.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1472/InternalFlashJPEGPicturesC32.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/InternalFlashJPEGPicturesC32.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1626048738/JpegDecoder.o: ../../../Microchip/Image\ Decoders/JpegDecoder.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	@${RM} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.ok ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d -o ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o ../../../Microchip/Image\ Decoders/JpegDecoder.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d -o ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o ../../../Microchip/Image\ Decoders/JpegDecoder.c   2>&1  > ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d > ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d 
	@${CP} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.tmp ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.err 
	@cat ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.ok; else exit 1; fi
	
else
${OBJECTDIR}/_ext/1919882987/SSD1926.o: ../../../Microchip/Graphics/Drivers/SSD1926.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.ok ${OBJECTDIR}/_ext/1919882987/SSD1926.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d -o ${OBJECTDIR}/_ext/1919882987/SSD1926.o ../../../Microchip/Graphics/Drivers/SSD1926.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d -o ${OBJECTDIR}/_ext/1919882987/SSD1926.o ../../../Microchip/Graphics/Drivers/SSD1926.c   2>&1  > ${OBJECTDIR}/_ext/1919882987/SSD1926.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1919882987/SSD1926.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d > ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	@${CP} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1919882987/SSD1926.o.err 
	@cat ${OBJECTDIR}/_ext/1919882987/SSD1926.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1919882987/SSD1926.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1919882987/SSD1926.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1472/JPEGImage.o: ../JPEGImage.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/JPEGImage.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/JPEGImage.o.ok ${OBJECTDIR}/_ext/1472/JPEGImage.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/JPEGImage.o.d -o ${OBJECTDIR}/_ext/1472/JPEGImage.o ../JPEGImage.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/JPEGImage.o.d -o ${OBJECTDIR}/_ext/1472/JPEGImage.o ../JPEGImage.c   2>&1  > ${OBJECTDIR}/_ext/1472/JPEGImage.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/JPEGImage.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1472/JPEGImage.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/JPEGImage.o.d > ${OBJECTDIR}/_ext/1472/JPEGImage.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/JPEGImage.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/JPEGImage.o.tmp ${OBJECTDIR}/_ext/1472/JPEGImage.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/JPEGImage.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1472/JPEGImage.o.err 
	@cat ${OBJECTDIR}/_ext/1472/JPEGImage.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1472/JPEGImage.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/JPEGImage.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1687970324/drv_spi.o: ../../../Board\ Support\ Package/drv_spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.ok ${OBJECTDIR}/_ext/1687970324/drv_spi.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d -o ${OBJECTDIR}/_ext/1687970324/drv_spi.o ../../../Board\ Support\ Package/drv_spi.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d -o ${OBJECTDIR}/_ext/1687970324/drv_spi.o ../../../Board\ Support\ Package/drv_spi.c   2>&1  > ${OBJECTDIR}/_ext/1687970324/drv_spi.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1687970324/drv_spi.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d > ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	@${CP} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1687970324/drv_spi.o.err 
	@cat ${OBJECTDIR}/_ext/1687970324/drv_spi.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1687970324/drv_spi.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1687970324/drv_spi.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1472/ExternalMemoryPictures.o: ../ExternalMemoryPictures.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/ExternalMemoryPictures.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/ExternalMemoryPictures.o.ok ${OBJECTDIR}/_ext/1472/ExternalMemoryPictures.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/ExternalMemoryPictures.o.d -o ${OBJECTDIR}/_ext/1472/ExternalMemoryPictures.o ../ExternalMemoryPictures.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/ExternalMemoryPictures.o.d -o ${OBJECTDIR}/_ext/1472/ExternalMemoryPictures.o ../ExternalMemoryPictures.c   2>&1  > ${OBJECTDIR}/_ext/1472/ExternalMemoryPictures.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/ExternalMemoryPictures.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1472/ExternalMemoryPictures.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/ExternalMemoryPictures.o.d > ${OBJECTDIR}/_ext/1472/ExternalMemoryPictures.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/ExternalMemoryPictures.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/ExternalMemoryPictures.o.tmp ${OBJECTDIR}/_ext/1472/ExternalMemoryPictures.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/ExternalMemoryPictures.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1472/ExternalMemoryPictures.o.err 
	@cat ${OBJECTDIR}/_ext/1472/ExternalMemoryPictures.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1472/ExternalMemoryPictures.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/ExternalMemoryPictures.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1687970324/cpld.o: ../../../Board\ Support\ Package/cpld.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.ok ${OBJECTDIR}/_ext/1687970324/cpld.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/cpld.o.d -o ${OBJECTDIR}/_ext/1687970324/cpld.o ../../../Board\ Support\ Package/cpld.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/cpld.o.d -o ${OBJECTDIR}/_ext/1687970324/cpld.o ../../../Board\ Support\ Package/cpld.c   2>&1  > ${OBJECTDIR}/_ext/1687970324/cpld.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1687970324/cpld.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/cpld.o.d > ${OBJECTDIR}/_ext/1687970324/cpld.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	@${CP} ${OBJECTDIR}/_ext/1687970324/cpld.o.tmp ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1687970324/cpld.o.err 
	@cat ${OBJECTDIR}/_ext/1687970324/cpld.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1687970324/cpld.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1687970324/cpld.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o: ../../Common/FlashProgrammer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2049610667 
	@${RM} ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d 
	@${RM} ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.ok ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d -o ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o ../../Common/FlashProgrammer.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d -o ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o ../../Common/FlashProgrammer.c   2>&1  > ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d > ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.tmp
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
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d -o ${OBJECTDIR}/_ext/2049610667/comm_pkt.o ../../Common/comm_pkt.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d -o ${OBJECTDIR}/_ext/2049610667/comm_pkt.o ../../Common/comm_pkt.c   2>&1  > ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d > ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.tmp
	@${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d 
	@${CP} ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.tmp ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d 
	@${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.err 
	@cat ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.err 
	@if [ -f ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1472/UART.o: ../UART.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/UART.o.ok ${OBJECTDIR}/_ext/1472/UART.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/UART.o.d -o ${OBJECTDIR}/_ext/1472/UART.o ../UART.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/UART.o.d -o ${OBJECTDIR}/_ext/1472/UART.o ../UART.c   2>&1  > ${OBJECTDIR}/_ext/1472/UART.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/UART.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1472/UART.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/UART.o.d > ${OBJECTDIR}/_ext/1472/UART.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/UART.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/UART.o.tmp ${OBJECTDIR}/_ext/1472/UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/UART.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1472/UART.o.err 
	@cat ${OBJECTDIR}/_ext/1472/UART.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1472/UART.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/UART.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1919882987/gfxepmp.o: ../../../Microchip/Graphics/Drivers/gfxepmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.ok ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d -o ${OBJECTDIR}/_ext/1919882987/gfxepmp.o ../../../Microchip/Graphics/Drivers/gfxepmp.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d -o ${OBJECTDIR}/_ext/1919882987/gfxepmp.o ../../../Microchip/Graphics/Drivers/gfxepmp.c   2>&1  > ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d > ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	@${CP} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.err 
	@cat ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1687970324/SST39VF040.o: ../../../Board\ Support\ Package/SST39VF040.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.ok ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d -o ${OBJECTDIR}/_ext/1687970324/SST39VF040.o ../../../Board\ Support\ Package/SST39VF040.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d -o ${OBJECTDIR}/_ext/1687970324/SST39VF040.o ../../../Board\ Support\ Package/SST39VF040.c   2>&1  > ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d > ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.tmp
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
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d -o ${OBJECTDIR}/_ext/1687970324/SST25VF016.o ../../../Board\ Support\ Package/SST25VF016.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d -o ${OBJECTDIR}/_ext/1687970324/SST25VF016.o ../../../Board\ Support\ Package/SST25VF016.c   2>&1  > ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d > ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.tmp
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
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/Primitive.o.d -o ${OBJECTDIR}/_ext/803622919/Primitive.o ../../../Microchip/Graphics/Primitive.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/Primitive.o.d -o ${OBJECTDIR}/_ext/803622919/Primitive.o ../../../Microchip/Graphics/Primitive.c   2>&1  > ${OBJECTDIR}/_ext/803622919/Primitive.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/803622919/Primitive.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Primitive.o.d > ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp
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
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d -o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ../../../Microchip/Graphics/GOLFontDefault.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d -o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ../../../Microchip/Graphics/GOLFontDefault.c   2>&1  > ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d > ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp
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
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d -o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d -o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c   2>&1  > ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d > ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	@${CP} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.err 
	@cat ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1472/MainDemo.o: ../MainDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.ok ${OBJECTDIR}/_ext/1472/MainDemo.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/MainDemo.o.d -o ${OBJECTDIR}/_ext/1472/MainDemo.o ../MainDemo.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/MainDemo.o.d -o ${OBJECTDIR}/_ext/1472/MainDemo.o ../MainDemo.c   2>&1  > ${OBJECTDIR}/_ext/1472/MainDemo.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/MainDemo.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/MainDemo.o.d > ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp
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
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d -o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ../../../Microchip/Common/TimeDelay.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d -o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ../../../Microchip/Common/TimeDelay.c   2>&1  > ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d > ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	@${CP} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.err 
	@cat ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1626048738/jidctint.o: ../../../Microchip/Image\ Decoders/jidctint.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	@${RM} ${OBJECTDIR}/_ext/1626048738/jidctint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/jidctint.o.ok ${OBJECTDIR}/_ext/1626048738/jidctint.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/1626048738/jidctint.o.d -o ${OBJECTDIR}/_ext/1626048738/jidctint.o ../../../Microchip/Image\ Decoders/jidctint.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/1626048738/jidctint.o.d -o ${OBJECTDIR}/_ext/1626048738/jidctint.o ../../../Microchip/Image\ Decoders/jidctint.c   2>&1  > ${OBJECTDIR}/_ext/1626048738/jidctint.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1626048738/jidctint.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1626048738/jidctint.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1626048738/jidctint.o.d > ${OBJECTDIR}/_ext/1626048738/jidctint.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1626048738/jidctint.o.d 
	@${CP} ${OBJECTDIR}/_ext/1626048738/jidctint.o.tmp ${OBJECTDIR}/_ext/1626048738/jidctint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/jidctint.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1626048738/jidctint.o.err 
	@cat ${OBJECTDIR}/_ext/1626048738/jidctint.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1626048738/jidctint.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1626048738/jidctint.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o: ../../Common/comm_pkt_callback.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2049610667 
	@${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d 
	@${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.ok ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d -o ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o ../../Common/comm_pkt_callback.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d -o ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o ../../Common/comm_pkt_callback.c   2>&1  > ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d > ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.tmp
	@${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d 
	@${CP} ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.tmp ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d 
	@${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.err 
	@cat ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.err 
	@if [ -f ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1626048738/ImageDecoder.o: ../../../Microchip/Image\ Decoders/ImageDecoder.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	@${RM} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.ok ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d -o ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o ../../../Microchip/Image\ Decoders/ImageDecoder.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d -o ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o ../../../Microchip/Image\ Decoders/ImageDecoder.c   2>&1  > ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d > ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d 
	@${CP} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.tmp ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.err 
	@cat ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1472/InternalFlashJPEGPicturesC32.o: ../InternalFlashJPEGPicturesC32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/InternalFlashJPEGPicturesC32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/InternalFlashJPEGPicturesC32.o.ok ${OBJECTDIR}/_ext/1472/InternalFlashJPEGPicturesC32.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/InternalFlashJPEGPicturesC32.o.d -o ${OBJECTDIR}/_ext/1472/InternalFlashJPEGPicturesC32.o ../InternalFlashJPEGPicturesC32.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/InternalFlashJPEGPicturesC32.o.d -o ${OBJECTDIR}/_ext/1472/InternalFlashJPEGPicturesC32.o ../InternalFlashJPEGPicturesC32.c   2>&1  > ${OBJECTDIR}/_ext/1472/InternalFlashJPEGPicturesC32.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/InternalFlashJPEGPicturesC32.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1472/InternalFlashJPEGPicturesC32.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/InternalFlashJPEGPicturesC32.o.d > ${OBJECTDIR}/_ext/1472/InternalFlashJPEGPicturesC32.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/InternalFlashJPEGPicturesC32.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/InternalFlashJPEGPicturesC32.o.tmp ${OBJECTDIR}/_ext/1472/InternalFlashJPEGPicturesC32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/InternalFlashJPEGPicturesC32.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1472/InternalFlashJPEGPicturesC32.o.err 
	@cat ${OBJECTDIR}/_ext/1472/InternalFlashJPEGPicturesC32.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1472/InternalFlashJPEGPicturesC32.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/InternalFlashJPEGPicturesC32.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1626048738/JpegDecoder.o: ../../../Microchip/Image\ Decoders/JpegDecoder.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	@${RM} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.ok ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d -o ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o ../../../Microchip/Image\ Decoders/JpegDecoder.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_QVGAv1 -I"../" -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -Os -MMD -MF ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d -o ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o ../../../Microchip/Image\ Decoders/JpegDecoder.c   2>&1  > ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d > ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d 
	@${CP} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.tmp ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.err 
	@cat ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.ok; else exit 1; fi
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_REAL_ICE=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf ${OBJECTFILES}        -Wl,--defsym=__MPLAB_BUILD=1,--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_REAL_ICE=1 
else
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf ${OBJECTFILES}        -Wl,--defsym=__MPLAB_BUILD=1,--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION)
	${MP_CC_DIR}\\pic32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf  
endif


# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf:
	${RM} -r build/PIC32_460_GFXv3_EX16_16PMP_QVGAv1_UART
	${RM} -r dist/PIC32_460_GFXv3_EX16_16PMP_QVGAv1_UART

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
