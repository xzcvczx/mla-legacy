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
CND_CONF=PIC32MX795F512L_PIM_Exp_16_Board
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
OBJECTFILES=${OBJECTDIR}/_ext/1472/main.o ${OBJECTDIR}/_ext/951836949/SClib.o ${OBJECTDIR}/_ext/951836949/SCpic32.o


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

# Path to java used to run MPLAB X when this makefile was created
MP_JAVA_PATH=C:\\Program\ Files\\Java\\jdk1.6.0_16\\jre/bin/
OS_CURRENT="$(shell uname -s)"
############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
MP_CC=C:\\Program\ Files\\Microchip\\MPLAB\ C32\ Suite\\bin\\pic32-gcc.exe
# MP_BC is not defined
MP_AS=C:\\Program\ Files\\Microchip\\MPLAB\ C32\ Suite\\bin\\pic32-as.exe
MP_LD=C:\\Program\ Files\\Microchip\\MPLAB\ C32\ Suite\\bin\\pic32-ld.exe
MP_AR=C:\\Program\ Files\\Microchip\\MPLAB\ C32\ Suite\\bin\\pic32-ar.exe
# MP_BC is not defined
MP_CC_DIR=C:\\Program\ Files\\Microchip\\MPLAB\ C32\ Suite\\bin
# MP_BC_DIR is not defined
MP_AS_DIR=C:\\Program\ Files\\Microchip\\MPLAB\ C32\ Suite\\bin
MP_LD_DIR=C:\\Program\ Files\\Microchip\\MPLAB\ C32\ Suite\\bin
MP_AR_DIR=C:\\Program\ Files\\Microchip\\MPLAB\ C32\ Suite\\bin
# MP_BC_DIR is not defined

.build-conf: ${BUILD_SUBPROJECTS}
	${MAKE}  -f nbproject/Makefile-PIC32MX795F512L_PIM_Exp_16_Board.mk dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf

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
${OBJECTDIR}/_ext/1472/main.o: ../main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.ok ${OBJECTDIR}/_ext/1472/main.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../Include" -I"../../../Microchip/Include" -I"../../../Smart Card Demo/Firmware" -I"../../../Microchip/Include/Smart Card" -I"../../../../Include" -MMD -MF ${OBJECTDIR}/_ext/1472/main.o.d -o ${OBJECTDIR}/_ext/1472/main.o ../main.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../Include" -I"../../../Microchip/Include" -I"../../../Smart Card Demo/Firmware" -I"../../../Microchip/Include/Smart Card" -I"../../../../Include" -MMD -MF ${OBJECTDIR}/_ext/1472/main.o.d -o ${OBJECTDIR}/_ext/1472/main.o ../main.c   2>&1  > ${OBJECTDIR}/_ext/1472/main.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/main.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1472/main.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/main.o.d > ${OBJECTDIR}/_ext/1472/main.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/main.o.tmp ${OBJECTDIR}/_ext/1472/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1472/main.o.err 
	@cat ${OBJECTDIR}/_ext/1472/main.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1472/main.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/main.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/951836949/SClib.o: ../../../Microchip/Smart\ Card/SClib.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/951836949 
	@${RM} ${OBJECTDIR}/_ext/951836949/SClib.o.d 
	@${RM} ${OBJECTDIR}/_ext/951836949/SClib.o.ok ${OBJECTDIR}/_ext/951836949/SClib.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../Include" -I"../../../Microchip/Include" -I"../../../Smart Card Demo/Firmware" -I"../../../Microchip/Include/Smart Card" -I"../../../../Include" -MMD -MF ${OBJECTDIR}/_ext/951836949/SClib.o.d -o ${OBJECTDIR}/_ext/951836949/SClib.o ../../../Microchip/Smart\ Card/SClib.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../Include" -I"../../../Microchip/Include" -I"../../../Smart Card Demo/Firmware" -I"../../../Microchip/Include/Smart Card" -I"../../../../Include" -MMD -MF ${OBJECTDIR}/_ext/951836949/SClib.o.d -o ${OBJECTDIR}/_ext/951836949/SClib.o ../../../Microchip/Smart\ Card/SClib.c   2>&1  > ${OBJECTDIR}/_ext/951836949/SClib.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/951836949/SClib.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/951836949/SClib.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/951836949/SClib.o.d > ${OBJECTDIR}/_ext/951836949/SClib.o.tmp
	@${RM} ${OBJECTDIR}/_ext/951836949/SClib.o.d 
	@${CP} ${OBJECTDIR}/_ext/951836949/SClib.o.tmp ${OBJECTDIR}/_ext/951836949/SClib.o.d 
	@${RM} ${OBJECTDIR}/_ext/951836949/SClib.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/951836949/SClib.o.err 
	@cat ${OBJECTDIR}/_ext/951836949/SClib.o.err 
	@if [ -f ${OBJECTDIR}/_ext/951836949/SClib.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/951836949/SClib.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/951836949/SCpic32.o: ../../../Microchip/Smart\ Card/SCpic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/951836949 
	@${RM} ${OBJECTDIR}/_ext/951836949/SCpic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/951836949/SCpic32.o.ok ${OBJECTDIR}/_ext/951836949/SCpic32.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../Include" -I"../../../Microchip/Include" -I"../../../Smart Card Demo/Firmware" -I"../../../Microchip/Include/Smart Card" -I"../../../../Include" -MMD -MF ${OBJECTDIR}/_ext/951836949/SCpic32.o.d -o ${OBJECTDIR}/_ext/951836949/SCpic32.o ../../../Microchip/Smart\ Card/SCpic32.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../Include" -I"../../../Microchip/Include" -I"../../../Smart Card Demo/Firmware" -I"../../../Microchip/Include/Smart Card" -I"../../../../Include" -MMD -MF ${OBJECTDIR}/_ext/951836949/SCpic32.o.d -o ${OBJECTDIR}/_ext/951836949/SCpic32.o ../../../Microchip/Smart\ Card/SCpic32.c   2>&1  > ${OBJECTDIR}/_ext/951836949/SCpic32.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/951836949/SCpic32.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/951836949/SCpic32.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/951836949/SCpic32.o.d > ${OBJECTDIR}/_ext/951836949/SCpic32.o.tmp
	@${RM} ${OBJECTDIR}/_ext/951836949/SCpic32.o.d 
	@${CP} ${OBJECTDIR}/_ext/951836949/SCpic32.o.tmp ${OBJECTDIR}/_ext/951836949/SCpic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/951836949/SCpic32.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/951836949/SCpic32.o.err 
	@cat ${OBJECTDIR}/_ext/951836949/SCpic32.o.err 
	@if [ -f ${OBJECTDIR}/_ext/951836949/SCpic32.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/951836949/SCpic32.o.ok; else exit 1; fi
	
else
${OBJECTDIR}/_ext/1472/main.o: ../main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.ok ${OBJECTDIR}/_ext/1472/main.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../Include" -I"../../../Microchip/Include" -I"../../../Smart Card Demo/Firmware" -I"../../../Microchip/Include/Smart Card" -I"../../../../Include" -MMD -MF ${OBJECTDIR}/_ext/1472/main.o.d -o ${OBJECTDIR}/_ext/1472/main.o ../main.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../Include" -I"../../../Microchip/Include" -I"../../../Smart Card Demo/Firmware" -I"../../../Microchip/Include/Smart Card" -I"../../../../Include" -MMD -MF ${OBJECTDIR}/_ext/1472/main.o.d -o ${OBJECTDIR}/_ext/1472/main.o ../main.c   2>&1  > ${OBJECTDIR}/_ext/1472/main.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/main.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/1472/main.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/main.o.d > ${OBJECTDIR}/_ext/1472/main.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/main.o.tmp ${OBJECTDIR}/_ext/1472/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1472/main.o.err 
	@cat ${OBJECTDIR}/_ext/1472/main.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1472/main.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/main.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/951836949/SClib.o: ../../../Microchip/Smart\ Card/SClib.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/951836949 
	@${RM} ${OBJECTDIR}/_ext/951836949/SClib.o.d 
	@${RM} ${OBJECTDIR}/_ext/951836949/SClib.o.ok ${OBJECTDIR}/_ext/951836949/SClib.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../Include" -I"../../../Microchip/Include" -I"../../../Smart Card Demo/Firmware" -I"../../../Microchip/Include/Smart Card" -I"../../../../Include" -MMD -MF ${OBJECTDIR}/_ext/951836949/SClib.o.d -o ${OBJECTDIR}/_ext/951836949/SClib.o ../../../Microchip/Smart\ Card/SClib.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../Include" -I"../../../Microchip/Include" -I"../../../Smart Card Demo/Firmware" -I"../../../Microchip/Include/Smart Card" -I"../../../../Include" -MMD -MF ${OBJECTDIR}/_ext/951836949/SClib.o.d -o ${OBJECTDIR}/_ext/951836949/SClib.o ../../../Microchip/Smart\ Card/SClib.c   2>&1  > ${OBJECTDIR}/_ext/951836949/SClib.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/951836949/SClib.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/951836949/SClib.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/951836949/SClib.o.d > ${OBJECTDIR}/_ext/951836949/SClib.o.tmp
	@${RM} ${OBJECTDIR}/_ext/951836949/SClib.o.d 
	@${CP} ${OBJECTDIR}/_ext/951836949/SClib.o.tmp ${OBJECTDIR}/_ext/951836949/SClib.o.d 
	@${RM} ${OBJECTDIR}/_ext/951836949/SClib.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/951836949/SClib.o.err 
	@cat ${OBJECTDIR}/_ext/951836949/SClib.o.err 
	@if [ -f ${OBJECTDIR}/_ext/951836949/SClib.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/951836949/SClib.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/951836949/SCpic32.o: ../../../Microchip/Smart\ Card/SCpic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/951836949 
	@${RM} ${OBJECTDIR}/_ext/951836949/SCpic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/951836949/SCpic32.o.ok ${OBJECTDIR}/_ext/951836949/SCpic32.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../Include" -I"../../../Microchip/Include" -I"../../../Smart Card Demo/Firmware" -I"../../../Microchip/Include/Smart Card" -I"../../../../Include" -MMD -MF ${OBJECTDIR}/_ext/951836949/SCpic32.o.d -o ${OBJECTDIR}/_ext/951836949/SCpic32.o ../../../Microchip/Smart\ Card/SCpic32.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../Include" -I"../../../Microchip/Include" -I"../../../Smart Card Demo/Firmware" -I"../../../Microchip/Include/Smart Card" -I"../../../../Include" -MMD -MF ${OBJECTDIR}/_ext/951836949/SCpic32.o.d -o ${OBJECTDIR}/_ext/951836949/SCpic32.o ../../../Microchip/Smart\ Card/SCpic32.c   2>&1  > ${OBJECTDIR}/_ext/951836949/SCpic32.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/951836949/SCpic32.o.ok ; fi 
	@touch ${OBJECTDIR}/_ext/951836949/SCpic32.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/951836949/SCpic32.o.d > ${OBJECTDIR}/_ext/951836949/SCpic32.o.tmp
	@${RM} ${OBJECTDIR}/_ext/951836949/SCpic32.o.d 
	@${CP} ${OBJECTDIR}/_ext/951836949/SCpic32.o.tmp ${OBJECTDIR}/_ext/951836949/SCpic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/951836949/SCpic32.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/951836949/SCpic32.o.err 
	@cat ${OBJECTDIR}/_ext/951836949/SCpic32.o.err 
	@if [ -f ${OBJECTDIR}/_ext/951836949/SCpic32.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/951836949/SCpic32.o.ok; else exit 1; fi
	
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
	${RM} -r build/PIC32MX795F512L_PIM_Exp_16_Board
	${RM} -r dist/PIC32MX795F512L_PIM_Exp_16_Board

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
