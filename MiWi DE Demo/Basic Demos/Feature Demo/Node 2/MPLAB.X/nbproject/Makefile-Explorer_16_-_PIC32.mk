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
CND_CONF=Explorer_16_-_PIC32
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
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1472/HardwareProfile.o ${OBJECTDIR}/_ext/257748679/TimeDelay.o ${OBJECTDIR}/_ext/1688839406/MiWi.o ${OBJECTDIR}/_ext/967918303/MiWiPRO.o ${OBJECTDIR}/_ext/84067474/P2P.o ${OBJECTDIR}/_ext/1994828495/Console.o ${OBJECTDIR}/_ext/1994828495/EEPROM.o ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o ${OBJECTDIR}/_ext/1994828495/MSPI.o ${OBJECTDIR}/_ext/1994828495/NVM.o ${OBJECTDIR}/_ext/1994828495/SymbolTime.o ${OBJECTDIR}/_ext/2087253717/MRF24J40.o ${OBJECTDIR}/_ext/486793731/MRF49XA.o ${OBJECTDIR}/_ext/486674567/MRF89XA.o ${OBJECTDIR}/_ext/702228253/crc.o ${OBJECTDIR}/_ext/702228253/security.o ${OBJECTDIR}/_ext/1472/DemoOutput.o ${OBJECTDIR}/_ext/1472/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1472/HardwareProfile.o.d ${OBJECTDIR}/_ext/257748679/TimeDelay.o.d ${OBJECTDIR}/_ext/1688839406/MiWi.o.d ${OBJECTDIR}/_ext/967918303/MiWiPRO.o.d ${OBJECTDIR}/_ext/84067474/P2P.o.d ${OBJECTDIR}/_ext/1994828495/Console.o.d ${OBJECTDIR}/_ext/1994828495/EEPROM.o.d ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.d ${OBJECTDIR}/_ext/1994828495/MSPI.o.d ${OBJECTDIR}/_ext/1994828495/NVM.o.d ${OBJECTDIR}/_ext/1994828495/SymbolTime.o.d ${OBJECTDIR}/_ext/2087253717/MRF24J40.o.d ${OBJECTDIR}/_ext/486793731/MRF49XA.o.d ${OBJECTDIR}/_ext/486674567/MRF89XA.o.d ${OBJECTDIR}/_ext/702228253/crc.o.d ${OBJECTDIR}/_ext/702228253/security.o.d ${OBJECTDIR}/_ext/1472/DemoOutput.o.d ${OBJECTDIR}/_ext/1472/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1472/HardwareProfile.o ${OBJECTDIR}/_ext/257748679/TimeDelay.o ${OBJECTDIR}/_ext/1688839406/MiWi.o ${OBJECTDIR}/_ext/967918303/MiWiPRO.o ${OBJECTDIR}/_ext/84067474/P2P.o ${OBJECTDIR}/_ext/1994828495/Console.o ${OBJECTDIR}/_ext/1994828495/EEPROM.o ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o ${OBJECTDIR}/_ext/1994828495/MSPI.o ${OBJECTDIR}/_ext/1994828495/NVM.o ${OBJECTDIR}/_ext/1994828495/SymbolTime.o ${OBJECTDIR}/_ext/2087253717/MRF24J40.o ${OBJECTDIR}/_ext/486793731/MRF49XA.o ${OBJECTDIR}/_ext/486674567/MRF89XA.o ${OBJECTDIR}/_ext/702228253/crc.o ${OBJECTDIR}/_ext/702228253/security.o ${OBJECTDIR}/_ext/1472/DemoOutput.o ${OBJECTDIR}/_ext/1472/main.o


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
MP_CC="C:\Program Files\Microchip\mplabc32\v1.12\bin\pic32-gcc.exe"
# MP_BC is not defined
MP_AS="C:\Program Files\Microchip\mplabc32\v1.12\bin\pic32-as.exe"
MP_LD="C:\Program Files\Microchip\mplabc32\v1.12\bin\pic32-ld.exe"
MP_AR="C:\Program Files\Microchip\mplabc32\v1.12\bin\pic32-ar.exe"
DEP_GEN=${MP_JAVA_PATH}java -jar "C:/Program Files/Microchip/MPLABX/mplab_ide/mplab_ide/modules/../../bin/extractobjectdependencies.jar" 
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps
MP_CC_DIR="C:\Program Files\Microchip\mplabc32\v1.12\bin"
# MP_BC_DIR is not defined
MP_AS_DIR="C:\Program Files\Microchip\mplabc32\v1.12\bin"
MP_LD_DIR="C:\Program Files\Microchip\mplabc32\v1.12\bin"
MP_AR_DIR="C:\Program Files\Microchip\mplabc32\v1.12\bin"
# MP_BC_DIR is not defined

.build-conf:  ${BUILD_SUBPROJECTS}
	${MAKE}  -f nbproject/Makefile-Explorer_16_-_PIC32.mk dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX360F512L
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
${OBJECTDIR}/_ext/1472/HardwareProfile.o: ../HardwareProfile.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/HardwareProfile.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/HardwareProfile.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/1472/HardwareProfile.o.d" -o ${OBJECTDIR}/_ext/1472/HardwareProfile.o ../HardwareProfile.c  
	
${OBJECTDIR}/_ext/257748679/TimeDelay.o: ../../../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/257748679 
	@${RM} ${OBJECTDIR}/_ext/257748679/TimeDelay.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/257748679/TimeDelay.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/257748679/TimeDelay.o.d" -o ${OBJECTDIR}/_ext/257748679/TimeDelay.o ../../../../../Microchip/Common/TimeDelay.c  
	
${OBJECTDIR}/_ext/1688839406/MiWi.o: ../../../../../Microchip/WirelessProtocols/MiWi/MiWi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1688839406 
	@${RM} ${OBJECTDIR}/_ext/1688839406/MiWi.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688839406/MiWi.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/1688839406/MiWi.o.d" -o ${OBJECTDIR}/_ext/1688839406/MiWi.o ../../../../../Microchip/WirelessProtocols/MiWi/MiWi.c  
	
${OBJECTDIR}/_ext/967918303/MiWiPRO.o: ../../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/967918303 
	@${RM} ${OBJECTDIR}/_ext/967918303/MiWiPRO.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/967918303/MiWiPRO.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/967918303/MiWiPRO.o.d" -o ${OBJECTDIR}/_ext/967918303/MiWiPRO.o ../../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c  
	
${OBJECTDIR}/_ext/84067474/P2P.o: ../../../../../Microchip/WirelessProtocols/P2P/P2P.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/84067474 
	@${RM} ${OBJECTDIR}/_ext/84067474/P2P.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/84067474/P2P.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/84067474/P2P.o.d" -o ${OBJECTDIR}/_ext/84067474/P2P.o ../../../../../Microchip/WirelessProtocols/P2P/P2P.c  
	
${OBJECTDIR}/_ext/1994828495/Console.o: ../../../../../Microchip/WirelessProtocols/Console.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1994828495 
	@${RM} ${OBJECTDIR}/_ext/1994828495/Console.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1994828495/Console.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/1994828495/Console.o.d" -o ${OBJECTDIR}/_ext/1994828495/Console.o ../../../../../Microchip/WirelessProtocols/Console.c  
	
${OBJECTDIR}/_ext/1994828495/EEPROM.o: ../../../../../Microchip/WirelessProtocols/EEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1994828495 
	@${RM} ${OBJECTDIR}/_ext/1994828495/EEPROM.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1994828495/EEPROM.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/1994828495/EEPROM.o.d" -o ${OBJECTDIR}/_ext/1994828495/EEPROM.o ../../../../../Microchip/WirelessProtocols/EEPROM.c  
	
${OBJECTDIR}/_ext/1994828495/LCDBlocking.o: ../../../../../Microchip/WirelessProtocols/LCDBlocking.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1994828495 
	@${RM} ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.d" -o ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o ../../../../../Microchip/WirelessProtocols/LCDBlocking.c  
	
${OBJECTDIR}/_ext/1994828495/MSPI.o: ../../../../../Microchip/WirelessProtocols/MSPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1994828495 
	@${RM} ${OBJECTDIR}/_ext/1994828495/MSPI.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1994828495/MSPI.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/1994828495/MSPI.o.d" -o ${OBJECTDIR}/_ext/1994828495/MSPI.o ../../../../../Microchip/WirelessProtocols/MSPI.c  
	
${OBJECTDIR}/_ext/1994828495/NVM.o: ../../../../../Microchip/WirelessProtocols/NVM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1994828495 
	@${RM} ${OBJECTDIR}/_ext/1994828495/NVM.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1994828495/NVM.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/1994828495/NVM.o.d" -o ${OBJECTDIR}/_ext/1994828495/NVM.o ../../../../../Microchip/WirelessProtocols/NVM.c  
	
${OBJECTDIR}/_ext/1994828495/SymbolTime.o: ../../../../../Microchip/WirelessProtocols/SymbolTime.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1994828495 
	@${RM} ${OBJECTDIR}/_ext/1994828495/SymbolTime.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1994828495/SymbolTime.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/1994828495/SymbolTime.o.d" -o ${OBJECTDIR}/_ext/1994828495/SymbolTime.o ../../../../../Microchip/WirelessProtocols/SymbolTime.c  
	
${OBJECTDIR}/_ext/2087253717/MRF24J40.o: ../../../../../Microchip/Transceivers/MRF24J40/MRF24J40.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2087253717 
	@${RM} ${OBJECTDIR}/_ext/2087253717/MRF24J40.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2087253717/MRF24J40.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/2087253717/MRF24J40.o.d" -o ${OBJECTDIR}/_ext/2087253717/MRF24J40.o ../../../../../Microchip/Transceivers/MRF24J40/MRF24J40.c  
	
${OBJECTDIR}/_ext/486793731/MRF49XA.o: ../../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/486793731 
	@${RM} ${OBJECTDIR}/_ext/486793731/MRF49XA.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/486793731/MRF49XA.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/486793731/MRF49XA.o.d" -o ${OBJECTDIR}/_ext/486793731/MRF49XA.o ../../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c  
	
${OBJECTDIR}/_ext/486674567/MRF89XA.o: ../../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/486674567 
	@${RM} ${OBJECTDIR}/_ext/486674567/MRF89XA.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/486674567/MRF89XA.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/486674567/MRF89XA.o.d" -o ${OBJECTDIR}/_ext/486674567/MRF89XA.o ../../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c  
	
${OBJECTDIR}/_ext/702228253/crc.o: ../../../../../Microchip/Transceivers/crc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/702228253 
	@${RM} ${OBJECTDIR}/_ext/702228253/crc.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/702228253/crc.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/702228253/crc.o.d" -o ${OBJECTDIR}/_ext/702228253/crc.o ../../../../../Microchip/Transceivers/crc.c  
	
${OBJECTDIR}/_ext/702228253/security.o: ../../../../../Microchip/Transceivers/security.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/702228253 
	@${RM} ${OBJECTDIR}/_ext/702228253/security.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/702228253/security.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/702228253/security.o.d" -o ${OBJECTDIR}/_ext/702228253/security.o ../../../../../Microchip/Transceivers/security.c  
	
${OBJECTDIR}/_ext/1472/DemoOutput.o: ../DemoOutput.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/DemoOutput.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/DemoOutput.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/1472/DemoOutput.o.d" -o ${OBJECTDIR}/_ext/1472/DemoOutput.o ../DemoOutput.c  
	
${OBJECTDIR}/_ext/1472/main.o: ../main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/main.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/1472/main.o.d" -o ${OBJECTDIR}/_ext/1472/main.o ../main.c  
	
else
${OBJECTDIR}/_ext/1472/HardwareProfile.o: ../HardwareProfile.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/HardwareProfile.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/HardwareProfile.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/1472/HardwareProfile.o.d" -o ${OBJECTDIR}/_ext/1472/HardwareProfile.o ../HardwareProfile.c  
	
${OBJECTDIR}/_ext/257748679/TimeDelay.o: ../../../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/257748679 
	@${RM} ${OBJECTDIR}/_ext/257748679/TimeDelay.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/257748679/TimeDelay.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/257748679/TimeDelay.o.d" -o ${OBJECTDIR}/_ext/257748679/TimeDelay.o ../../../../../Microchip/Common/TimeDelay.c  
	
${OBJECTDIR}/_ext/1688839406/MiWi.o: ../../../../../Microchip/WirelessProtocols/MiWi/MiWi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1688839406 
	@${RM} ${OBJECTDIR}/_ext/1688839406/MiWi.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688839406/MiWi.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/1688839406/MiWi.o.d" -o ${OBJECTDIR}/_ext/1688839406/MiWi.o ../../../../../Microchip/WirelessProtocols/MiWi/MiWi.c  
	
${OBJECTDIR}/_ext/967918303/MiWiPRO.o: ../../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/967918303 
	@${RM} ${OBJECTDIR}/_ext/967918303/MiWiPRO.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/967918303/MiWiPRO.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/967918303/MiWiPRO.o.d" -o ${OBJECTDIR}/_ext/967918303/MiWiPRO.o ../../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c  
	
${OBJECTDIR}/_ext/84067474/P2P.o: ../../../../../Microchip/WirelessProtocols/P2P/P2P.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/84067474 
	@${RM} ${OBJECTDIR}/_ext/84067474/P2P.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/84067474/P2P.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/84067474/P2P.o.d" -o ${OBJECTDIR}/_ext/84067474/P2P.o ../../../../../Microchip/WirelessProtocols/P2P/P2P.c  
	
${OBJECTDIR}/_ext/1994828495/Console.o: ../../../../../Microchip/WirelessProtocols/Console.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1994828495 
	@${RM} ${OBJECTDIR}/_ext/1994828495/Console.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1994828495/Console.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/1994828495/Console.o.d" -o ${OBJECTDIR}/_ext/1994828495/Console.o ../../../../../Microchip/WirelessProtocols/Console.c  
	
${OBJECTDIR}/_ext/1994828495/EEPROM.o: ../../../../../Microchip/WirelessProtocols/EEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1994828495 
	@${RM} ${OBJECTDIR}/_ext/1994828495/EEPROM.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1994828495/EEPROM.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/1994828495/EEPROM.o.d" -o ${OBJECTDIR}/_ext/1994828495/EEPROM.o ../../../../../Microchip/WirelessProtocols/EEPROM.c  
	
${OBJECTDIR}/_ext/1994828495/LCDBlocking.o: ../../../../../Microchip/WirelessProtocols/LCDBlocking.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1994828495 
	@${RM} ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.d" -o ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o ../../../../../Microchip/WirelessProtocols/LCDBlocking.c  
	
${OBJECTDIR}/_ext/1994828495/MSPI.o: ../../../../../Microchip/WirelessProtocols/MSPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1994828495 
	@${RM} ${OBJECTDIR}/_ext/1994828495/MSPI.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1994828495/MSPI.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/1994828495/MSPI.o.d" -o ${OBJECTDIR}/_ext/1994828495/MSPI.o ../../../../../Microchip/WirelessProtocols/MSPI.c  
	
${OBJECTDIR}/_ext/1994828495/NVM.o: ../../../../../Microchip/WirelessProtocols/NVM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1994828495 
	@${RM} ${OBJECTDIR}/_ext/1994828495/NVM.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1994828495/NVM.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/1994828495/NVM.o.d" -o ${OBJECTDIR}/_ext/1994828495/NVM.o ../../../../../Microchip/WirelessProtocols/NVM.c  
	
${OBJECTDIR}/_ext/1994828495/SymbolTime.o: ../../../../../Microchip/WirelessProtocols/SymbolTime.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1994828495 
	@${RM} ${OBJECTDIR}/_ext/1994828495/SymbolTime.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1994828495/SymbolTime.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/1994828495/SymbolTime.o.d" -o ${OBJECTDIR}/_ext/1994828495/SymbolTime.o ../../../../../Microchip/WirelessProtocols/SymbolTime.c  
	
${OBJECTDIR}/_ext/2087253717/MRF24J40.o: ../../../../../Microchip/Transceivers/MRF24J40/MRF24J40.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2087253717 
	@${RM} ${OBJECTDIR}/_ext/2087253717/MRF24J40.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2087253717/MRF24J40.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/2087253717/MRF24J40.o.d" -o ${OBJECTDIR}/_ext/2087253717/MRF24J40.o ../../../../../Microchip/Transceivers/MRF24J40/MRF24J40.c  
	
${OBJECTDIR}/_ext/486793731/MRF49XA.o: ../../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/486793731 
	@${RM} ${OBJECTDIR}/_ext/486793731/MRF49XA.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/486793731/MRF49XA.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/486793731/MRF49XA.o.d" -o ${OBJECTDIR}/_ext/486793731/MRF49XA.o ../../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c  
	
${OBJECTDIR}/_ext/486674567/MRF89XA.o: ../../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/486674567 
	@${RM} ${OBJECTDIR}/_ext/486674567/MRF89XA.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/486674567/MRF89XA.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/486674567/MRF89XA.o.d" -o ${OBJECTDIR}/_ext/486674567/MRF89XA.o ../../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c  
	
${OBJECTDIR}/_ext/702228253/crc.o: ../../../../../Microchip/Transceivers/crc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/702228253 
	@${RM} ${OBJECTDIR}/_ext/702228253/crc.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/702228253/crc.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/702228253/crc.o.d" -o ${OBJECTDIR}/_ext/702228253/crc.o ../../../../../Microchip/Transceivers/crc.c  
	
${OBJECTDIR}/_ext/702228253/security.o: ../../../../../Microchip/Transceivers/security.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/702228253 
	@${RM} ${OBJECTDIR}/_ext/702228253/security.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/702228253/security.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/702228253/security.o.d" -o ${OBJECTDIR}/_ext/702228253/security.o ../../../../../Microchip/Transceivers/security.c  
	
${OBJECTDIR}/_ext/1472/DemoOutput.o: ../DemoOutput.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/DemoOutput.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/DemoOutput.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/1472/DemoOutput.o.d" -o ${OBJECTDIR}/_ext/1472/DemoOutput.o ../DemoOutput.c  
	
${OBJECTDIR}/_ext/1472/main.o: ../main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/main.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/1472/main.o.d" -o ${OBJECTDIR}/_ext/1472/main.o ../main.c  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_REAL_ICE=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}        -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_REAL_ICE=1 
else
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}        -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION)
	${MP_CC_DIR}\\pic32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  
endif


# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf:
	${RM} -r build/Explorer_16_-_PIC32
	${RM} -r dist/Explorer_16_-_PIC32

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
