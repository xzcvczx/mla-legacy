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
CND_CONF=PIC24FJ128GA010_PIM

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
OBJECTFILES=${OBJECTDIR}/_ext/65885567/SD-SPI.o ${OBJECTDIR}/_ext/65885567/FSIO.o ${OBJECTDIR}/_ext/1850834999/Demonstration2.o


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

# Path to java used to run MPLAB X when this makefile was created
MP_JAVA_PATH=C:\\Program\ Files\\Java\\jdk1.6.0_16\\jre/bin/
OS_ORIGINAL="MINGW32_NT-5.1"
OS_CURRENT="$(shell uname -s)"
############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
MP_CC=C:\\Program\ Files\\Microchip\\mplabc30\\v3.25\\bin\\pic30-gcc.exe
# MP_BC is not defined
MP_AS=C:\\Program\ Files\\Microchip\\mplabc30\\v3.25\\bin\\pic30-as.exe
MP_LD=C:\\Program\ Files\\Microchip\\mplabc30\\v3.25\\bin\\pic30-ld.exe
MP_AR=C:\\Program\ Files\\Microchip\\mplabc30\\v3.25\\bin\\pic30-ar.exe
# MP_BC is not defined
MP_CC_DIR=C:\\Program\ Files\\Microchip\\mplabc30\\v3.25\\bin
# MP_BC_DIR is not defined
MP_AS_DIR=C:\\Program\ Files\\Microchip\\mplabc30\\v3.25\\bin
MP_LD_DIR=C:\\Program\ Files\\Microchip\\mplabc30\\v3.25\\bin
MP_AR_DIR=C:\\Program\ Files\\Microchip\\mplabc30\\v3.25\\bin
# MP_BC_DIR is not defined
.build-conf: ${BUILD_SUBPROJECTS}
ifneq ($(OS_CURRENT),$(OS_ORIGINAL))
	@echo "***** WARNING: This make file contains OS dependent code. The OS this makefile is being run is different from the OS it was created in."
endif
	${MAKE}  -f nbproject/Makefile-PIC24FJ128GA010_PIM.mk dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf

MP_PROCESSOR_OPTION=24FJ128GA010
MP_LINKER_FILE_OPTION=,-Tp24FJ128GA010.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/65885567/SD-SPI.o: ../../Microchip/MDD\ File\ System/SD-SPI.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/65885567 
	${RM} ${OBJECTDIR}/_ext/65885567/SD-SPI.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../PIC24F" -I"../../Include" -I"../../Include/MDD File System" -I"../../Microchip/Include" -I"../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/MDD File System" -I"../../../MDD File System-SD Card" -I"../../../MDD File System-SD Card/PIC24F" -MMD -MF ${OBJECTDIR}/_ext/65885567/SD-SPI.o.d -o ${OBJECTDIR}/_ext/65885567/SD-SPI.o ../../Microchip/MDD\ File\ System/SD-SPI.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/65885567/SD-SPI.o.d > ${OBJECTDIR}/_ext/65885567/SD-SPI.o.tmp
	${RM} ${OBJECTDIR}/_ext/65885567/SD-SPI.o.d 
	${CP} ${OBJECTDIR}/_ext/65885567/SD-SPI.o.tmp ${OBJECTDIR}/_ext/65885567/SD-SPI.o.d 
	${RM} ${OBJECTDIR}/_ext/65885567/SD-SPI.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/65885567/SD-SPI.o.d > ${OBJECTDIR}/_ext/65885567/SD-SPI.o.tmp
	${RM} ${OBJECTDIR}/_ext/65885567/SD-SPI.o.d 
	${CP} ${OBJECTDIR}/_ext/65885567/SD-SPI.o.tmp ${OBJECTDIR}/_ext/65885567/SD-SPI.o.d 
	${RM} ${OBJECTDIR}/_ext/65885567/SD-SPI.o.tmp
endif
${OBJECTDIR}/_ext/65885567/FSIO.o: ../../Microchip/MDD\ File\ System/FSIO.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/65885567 
	${RM} ${OBJECTDIR}/_ext/65885567/FSIO.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../PIC24F" -I"../../Include" -I"../../Include/MDD File System" -I"../../Microchip/Include" -I"../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/MDD File System" -I"../../../MDD File System-SD Card" -I"../../../MDD File System-SD Card/PIC24F" -MMD -MF ${OBJECTDIR}/_ext/65885567/FSIO.o.d -o ${OBJECTDIR}/_ext/65885567/FSIO.o ../../Microchip/MDD\ File\ System/FSIO.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/65885567/FSIO.o.d > ${OBJECTDIR}/_ext/65885567/FSIO.o.tmp
	${RM} ${OBJECTDIR}/_ext/65885567/FSIO.o.d 
	${CP} ${OBJECTDIR}/_ext/65885567/FSIO.o.tmp ${OBJECTDIR}/_ext/65885567/FSIO.o.d 
	${RM} ${OBJECTDIR}/_ext/65885567/FSIO.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/65885567/FSIO.o.d > ${OBJECTDIR}/_ext/65885567/FSIO.o.tmp
	${RM} ${OBJECTDIR}/_ext/65885567/FSIO.o.d 
	${CP} ${OBJECTDIR}/_ext/65885567/FSIO.o.tmp ${OBJECTDIR}/_ext/65885567/FSIO.o.d 
	${RM} ${OBJECTDIR}/_ext/65885567/FSIO.o.tmp
endif
${OBJECTDIR}/_ext/1850834999/Demonstration2.o: ../PIC24F/Demonstration2.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1850834999 
	${RM} ${OBJECTDIR}/_ext/1850834999/Demonstration2.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../PIC24F" -I"../../Include" -I"../../Include/MDD File System" -I"../../Microchip/Include" -I"../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/MDD File System" -I"../../../MDD File System-SD Card" -I"../../../MDD File System-SD Card/PIC24F" -MMD -MF ${OBJECTDIR}/_ext/1850834999/Demonstration2.o.d -o ${OBJECTDIR}/_ext/1850834999/Demonstration2.o ../PIC24F/Demonstration2.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1850834999/Demonstration2.o.d > ${OBJECTDIR}/_ext/1850834999/Demonstration2.o.tmp
	${RM} ${OBJECTDIR}/_ext/1850834999/Demonstration2.o.d 
	${CP} ${OBJECTDIR}/_ext/1850834999/Demonstration2.o.tmp ${OBJECTDIR}/_ext/1850834999/Demonstration2.o.d 
	${RM} ${OBJECTDIR}/_ext/1850834999/Demonstration2.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1850834999/Demonstration2.o.d > ${OBJECTDIR}/_ext/1850834999/Demonstration2.o.tmp
	${RM} ${OBJECTDIR}/_ext/1850834999/Demonstration2.o.d 
	${CP} ${OBJECTDIR}/_ext/1850834999/Demonstration2.o.tmp ${OBJECTDIR}/_ext/1850834999/Demonstration2.o.d 
	${RM} ${OBJECTDIR}/_ext/1850834999/Demonstration2.o.tmp
endif
else
${OBJECTDIR}/_ext/65885567/SD-SPI.o: ../../Microchip/MDD\ File\ System/SD-SPI.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/65885567 
	${RM} ${OBJECTDIR}/_ext/65885567/SD-SPI.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../PIC24F" -I"../../Include" -I"../../Include/MDD File System" -I"../../Microchip/Include" -I"../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/MDD File System" -I"../../../MDD File System-SD Card" -I"../../../MDD File System-SD Card/PIC24F" -MMD -MF ${OBJECTDIR}/_ext/65885567/SD-SPI.o.d -o ${OBJECTDIR}/_ext/65885567/SD-SPI.o ../../Microchip/MDD\ File\ System/SD-SPI.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/65885567/SD-SPI.o.d > ${OBJECTDIR}/_ext/65885567/SD-SPI.o.tmp
	${RM} ${OBJECTDIR}/_ext/65885567/SD-SPI.o.d 
	${CP} ${OBJECTDIR}/_ext/65885567/SD-SPI.o.tmp ${OBJECTDIR}/_ext/65885567/SD-SPI.o.d 
	${RM} ${OBJECTDIR}/_ext/65885567/SD-SPI.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/65885567/SD-SPI.o.d > ${OBJECTDIR}/_ext/65885567/SD-SPI.o.tmp
	${RM} ${OBJECTDIR}/_ext/65885567/SD-SPI.o.d 
	${CP} ${OBJECTDIR}/_ext/65885567/SD-SPI.o.tmp ${OBJECTDIR}/_ext/65885567/SD-SPI.o.d 
	${RM} ${OBJECTDIR}/_ext/65885567/SD-SPI.o.tmp
endif
${OBJECTDIR}/_ext/65885567/FSIO.o: ../../Microchip/MDD\ File\ System/FSIO.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/65885567 
	${RM} ${OBJECTDIR}/_ext/65885567/FSIO.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../PIC24F" -I"../../Include" -I"../../Include/MDD File System" -I"../../Microchip/Include" -I"../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/MDD File System" -I"../../../MDD File System-SD Card" -I"../../../MDD File System-SD Card/PIC24F" -MMD -MF ${OBJECTDIR}/_ext/65885567/FSIO.o.d -o ${OBJECTDIR}/_ext/65885567/FSIO.o ../../Microchip/MDD\ File\ System/FSIO.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/65885567/FSIO.o.d > ${OBJECTDIR}/_ext/65885567/FSIO.o.tmp
	${RM} ${OBJECTDIR}/_ext/65885567/FSIO.o.d 
	${CP} ${OBJECTDIR}/_ext/65885567/FSIO.o.tmp ${OBJECTDIR}/_ext/65885567/FSIO.o.d 
	${RM} ${OBJECTDIR}/_ext/65885567/FSIO.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/65885567/FSIO.o.d > ${OBJECTDIR}/_ext/65885567/FSIO.o.tmp
	${RM} ${OBJECTDIR}/_ext/65885567/FSIO.o.d 
	${CP} ${OBJECTDIR}/_ext/65885567/FSIO.o.tmp ${OBJECTDIR}/_ext/65885567/FSIO.o.d 
	${RM} ${OBJECTDIR}/_ext/65885567/FSIO.o.tmp
endif
${OBJECTDIR}/_ext/1850834999/Demonstration2.o: ../PIC24F/Demonstration2.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1850834999 
	${RM} ${OBJECTDIR}/_ext/1850834999/Demonstration2.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../PIC24F" -I"../../Include" -I"../../Include/MDD File System" -I"../../Microchip/Include" -I"../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/MDD File System" -I"../../../MDD File System-SD Card" -I"../../../MDD File System-SD Card/PIC24F" -MMD -MF ${OBJECTDIR}/_ext/1850834999/Demonstration2.o.d -o ${OBJECTDIR}/_ext/1850834999/Demonstration2.o ../PIC24F/Demonstration2.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1850834999/Demonstration2.o.d > ${OBJECTDIR}/_ext/1850834999/Demonstration2.o.tmp
	${RM} ${OBJECTDIR}/_ext/1850834999/Demonstration2.o.d 
	${CP} ${OBJECTDIR}/_ext/1850834999/Demonstration2.o.tmp ${OBJECTDIR}/_ext/1850834999/Demonstration2.o.d 
	${RM} ${OBJECTDIR}/_ext/1850834999/Demonstration2.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1850834999/Demonstration2.o.d > ${OBJECTDIR}/_ext/1850834999/Demonstration2.o.tmp
	${RM} ${OBJECTDIR}/_ext/1850834999/Demonstration2.o.d 
	${CP} ${OBJECTDIR}/_ext/1850834999/Demonstration2.o.tmp ${OBJECTDIR}/_ext/1850834999/Demonstration2.o.d 
	${RM} ${OBJECTDIR}/_ext/1850834999/Demonstration2.o.tmp
endif
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf  -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf ${OBJECTFILES}        -Wl,--defsym=__MPLAB_BUILD=1,-L"..",-Map="$(BINDIR_)$(TARGETBASE).map",--report-mem,--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_REAL_ICE=1
else
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf  -mcpu=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf ${OBJECTFILES}        -Wl,--defsym=__MPLAB_BUILD=1,-L"..",-Map="$(BINDIR_)$(TARGETBASE).map",--report-mem,--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION)
	${MP_CC_DIR}\\pic30-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf -omf=elf
endif


# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf:
	${RM} -r build/PIC24FJ128GA010_PIM
	${RM} -r dist/PIC24FJ128GA010_PIM

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
