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
CND_CONF=PIC18_Explorer
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=cof
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1472/HardwareProfile.o ${OBJECTDIR}/_ext/1472/DemoOutput.o ${OBJECTDIR}/_ext/1472/main.o ${OBJECTDIR}/_ext/257748679/TimeDelay.o ${OBJECTDIR}/_ext/1688839406/MiWi.o ${OBJECTDIR}/_ext/967918303/MiWiPRO.o ${OBJECTDIR}/_ext/84067474/P2P.o ${OBJECTDIR}/_ext/1994828495/Console.o ${OBJECTDIR}/_ext/1994828495/EEPROM.o ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o ${OBJECTDIR}/_ext/1994828495/MSPI.o ${OBJECTDIR}/_ext/1994828495/NVM.o ${OBJECTDIR}/_ext/1994828495/SymbolTime.o ${OBJECTDIR}/_ext/2087253717/MRF24J40.o ${OBJECTDIR}/_ext/486793731/MRF49XA.o ${OBJECTDIR}/_ext/486674567/MRF89XA.o ${OBJECTDIR}/_ext/702228253/crc.o ${OBJECTDIR}/_ext/702228253/security.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1472/HardwareProfile.o.d ${OBJECTDIR}/_ext/1472/DemoOutput.o.d ${OBJECTDIR}/_ext/1472/main.o.d ${OBJECTDIR}/_ext/257748679/TimeDelay.o.d ${OBJECTDIR}/_ext/1688839406/MiWi.o.d ${OBJECTDIR}/_ext/967918303/MiWiPRO.o.d ${OBJECTDIR}/_ext/84067474/P2P.o.d ${OBJECTDIR}/_ext/1994828495/Console.o.d ${OBJECTDIR}/_ext/1994828495/EEPROM.o.d ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.d ${OBJECTDIR}/_ext/1994828495/MSPI.o.d ${OBJECTDIR}/_ext/1994828495/NVM.o.d ${OBJECTDIR}/_ext/1994828495/SymbolTime.o.d ${OBJECTDIR}/_ext/2087253717/MRF24J40.o.d ${OBJECTDIR}/_ext/486793731/MRF49XA.o.d ${OBJECTDIR}/_ext/486674567/MRF89XA.o.d ${OBJECTDIR}/_ext/702228253/crc.o.d ${OBJECTDIR}/_ext/702228253/security.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1472/HardwareProfile.o ${OBJECTDIR}/_ext/1472/DemoOutput.o ${OBJECTDIR}/_ext/1472/main.o ${OBJECTDIR}/_ext/257748679/TimeDelay.o ${OBJECTDIR}/_ext/1688839406/MiWi.o ${OBJECTDIR}/_ext/967918303/MiWiPRO.o ${OBJECTDIR}/_ext/84067474/P2P.o ${OBJECTDIR}/_ext/1994828495/Console.o ${OBJECTDIR}/_ext/1994828495/EEPROM.o ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o ${OBJECTDIR}/_ext/1994828495/MSPI.o ${OBJECTDIR}/_ext/1994828495/NVM.o ${OBJECTDIR}/_ext/1994828495/SymbolTime.o ${OBJECTDIR}/_ext/2087253717/MRF24J40.o ${OBJECTDIR}/_ext/486793731/MRF49XA.o ${OBJECTDIR}/_ext/486674567/MRF89XA.o ${OBJECTDIR}/_ext/702228253/crc.o ${OBJECTDIR}/_ext/702228253/security.o


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
MP_CC="C:\Program Files\Microchip\mplabc18\v3.38\bin\mcc18.exe"
# MP_BC is not defined
MP_AS="C:\Program Files\Microchip\mplabc18\v3.38\bin\..\mpasm\MPASMWIN.exe"
MP_LD="C:\Program Files\Microchip\mplabc18\v3.38\bin\mplink.exe"
MP_AR="C:\Program Files\Microchip\mplabc18\v3.38\bin\mplib.exe"
DEP_GEN=${MP_JAVA_PATH}java -jar "C:/Program Files/Microchip/MPLABX/mplab_ide/mplab_ide/modules/../../bin/extractobjectdependencies.jar" 
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps
MP_CC_DIR="C:\Program Files\Microchip\mplabc18\v3.38\bin"
# MP_BC_DIR is not defined
MP_AS_DIR="C:\Program Files\Microchip\mplabc18\v3.38\bin\..\mpasm"
MP_LD_DIR="C:\Program Files\Microchip\mplabc18\v3.38\bin"
MP_AR_DIR="C:\Program Files\Microchip\mplabc18\v3.38\bin"
# MP_BC_DIR is not defined

.build-conf:  ${BUILD_SUBPROJECTS}
	${MAKE}  -f nbproject/Makefile-PIC18_Explorer.mk dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F87J11
MP_PROCESSOR_OPTION_LD=18f87j11
MP_LINKER_DEBUG_OPTION= -u_DEBUGDATASTART=0x826 -u_DEBUGDATALEN=0x29
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1472/HardwareProfile.o: ../HardwareProfile.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/HardwareProfile.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/HardwareProfile.o   ../HardwareProfile.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/HardwareProfile.o 
	
${OBJECTDIR}/_ext/1472/DemoOutput.o: ../DemoOutput.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/DemoOutput.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/DemoOutput.o   ../DemoOutput.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/DemoOutput.o 
	
${OBJECTDIR}/_ext/1472/main.o: ../main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/main.o   ../main.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/main.o 
	
${OBJECTDIR}/_ext/257748679/TimeDelay.o: ../../../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/257748679 
	@${RM} ${OBJECTDIR}/_ext/257748679/TimeDelay.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/257748679/TimeDelay.o   ../../../../../Microchip/Common/TimeDelay.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/257748679/TimeDelay.o 
	
${OBJECTDIR}/_ext/1688839406/MiWi.o: ../../../../../Microchip/WirelessProtocols/MiWi/MiWi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1688839406 
	@${RM} ${OBJECTDIR}/_ext/1688839406/MiWi.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1688839406/MiWi.o   ../../../../../Microchip/WirelessProtocols/MiWi/MiWi.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1688839406/MiWi.o 
	
${OBJECTDIR}/_ext/967918303/MiWiPRO.o: ../../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/967918303 
	@${RM} ${OBJECTDIR}/_ext/967918303/MiWiPRO.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/967918303/MiWiPRO.o   ../../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/967918303/MiWiPRO.o 
	
${OBJECTDIR}/_ext/84067474/P2P.o: ../../../../../Microchip/WirelessProtocols/P2P/P2P.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/84067474 
	@${RM} ${OBJECTDIR}/_ext/84067474/P2P.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/84067474/P2P.o   ../../../../../Microchip/WirelessProtocols/P2P/P2P.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/84067474/P2P.o 
	
${OBJECTDIR}/_ext/1994828495/Console.o: ../../../../../Microchip/WirelessProtocols/Console.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1994828495 
	@${RM} ${OBJECTDIR}/_ext/1994828495/Console.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1994828495/Console.o   ../../../../../Microchip/WirelessProtocols/Console.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1994828495/Console.o 
	
${OBJECTDIR}/_ext/1994828495/EEPROM.o: ../../../../../Microchip/WirelessProtocols/EEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1994828495 
	@${RM} ${OBJECTDIR}/_ext/1994828495/EEPROM.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1994828495/EEPROM.o   ../../../../../Microchip/WirelessProtocols/EEPROM.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1994828495/EEPROM.o 
	
${OBJECTDIR}/_ext/1994828495/LCDBlocking.o: ../../../../../Microchip/WirelessProtocols/LCDBlocking.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1994828495 
	@${RM} ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o   ../../../../../Microchip/WirelessProtocols/LCDBlocking.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o 
	
${OBJECTDIR}/_ext/1994828495/MSPI.o: ../../../../../Microchip/WirelessProtocols/MSPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1994828495 
	@${RM} ${OBJECTDIR}/_ext/1994828495/MSPI.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1994828495/MSPI.o   ../../../../../Microchip/WirelessProtocols/MSPI.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1994828495/MSPI.o 
	
${OBJECTDIR}/_ext/1994828495/NVM.o: ../../../../../Microchip/WirelessProtocols/NVM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1994828495 
	@${RM} ${OBJECTDIR}/_ext/1994828495/NVM.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1994828495/NVM.o   ../../../../../Microchip/WirelessProtocols/NVM.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1994828495/NVM.o 
	
${OBJECTDIR}/_ext/1994828495/SymbolTime.o: ../../../../../Microchip/WirelessProtocols/SymbolTime.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1994828495 
	@${RM} ${OBJECTDIR}/_ext/1994828495/SymbolTime.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1994828495/SymbolTime.o   ../../../../../Microchip/WirelessProtocols/SymbolTime.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1994828495/SymbolTime.o 
	
${OBJECTDIR}/_ext/2087253717/MRF24J40.o: ../../../../../Microchip/Transceivers/MRF24J40/MRF24J40.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2087253717 
	@${RM} ${OBJECTDIR}/_ext/2087253717/MRF24J40.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/2087253717/MRF24J40.o   ../../../../../Microchip/Transceivers/MRF24J40/MRF24J40.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/2087253717/MRF24J40.o 
	
${OBJECTDIR}/_ext/486793731/MRF49XA.o: ../../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/486793731 
	@${RM} ${OBJECTDIR}/_ext/486793731/MRF49XA.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/486793731/MRF49XA.o   ../../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/486793731/MRF49XA.o 
	
${OBJECTDIR}/_ext/486674567/MRF89XA.o: ../../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/486674567 
	@${RM} ${OBJECTDIR}/_ext/486674567/MRF89XA.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/486674567/MRF89XA.o   ../../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/486674567/MRF89XA.o 
	
${OBJECTDIR}/_ext/702228253/crc.o: ../../../../../Microchip/Transceivers/crc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/702228253 
	@${RM} ${OBJECTDIR}/_ext/702228253/crc.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/702228253/crc.o   ../../../../../Microchip/Transceivers/crc.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/702228253/crc.o 
	
${OBJECTDIR}/_ext/702228253/security.o: ../../../../../Microchip/Transceivers/security.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/702228253 
	@${RM} ${OBJECTDIR}/_ext/702228253/security.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/702228253/security.o   ../../../../../Microchip/Transceivers/security.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/702228253/security.o 
	
else
${OBJECTDIR}/_ext/1472/HardwareProfile.o: ../HardwareProfile.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/HardwareProfile.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/HardwareProfile.o   ../HardwareProfile.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/HardwareProfile.o 
	
${OBJECTDIR}/_ext/1472/DemoOutput.o: ../DemoOutput.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/DemoOutput.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/DemoOutput.o   ../DemoOutput.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/DemoOutput.o 
	
${OBJECTDIR}/_ext/1472/main.o: ../main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/main.o   ../main.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/main.o 
	
${OBJECTDIR}/_ext/257748679/TimeDelay.o: ../../../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/257748679 
	@${RM} ${OBJECTDIR}/_ext/257748679/TimeDelay.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/257748679/TimeDelay.o   ../../../../../Microchip/Common/TimeDelay.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/257748679/TimeDelay.o 
	
${OBJECTDIR}/_ext/1688839406/MiWi.o: ../../../../../Microchip/WirelessProtocols/MiWi/MiWi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1688839406 
	@${RM} ${OBJECTDIR}/_ext/1688839406/MiWi.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1688839406/MiWi.o   ../../../../../Microchip/WirelessProtocols/MiWi/MiWi.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1688839406/MiWi.o 
	
${OBJECTDIR}/_ext/967918303/MiWiPRO.o: ../../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/967918303 
	@${RM} ${OBJECTDIR}/_ext/967918303/MiWiPRO.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/967918303/MiWiPRO.o   ../../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/967918303/MiWiPRO.o 
	
${OBJECTDIR}/_ext/84067474/P2P.o: ../../../../../Microchip/WirelessProtocols/P2P/P2P.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/84067474 
	@${RM} ${OBJECTDIR}/_ext/84067474/P2P.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/84067474/P2P.o   ../../../../../Microchip/WirelessProtocols/P2P/P2P.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/84067474/P2P.o 
	
${OBJECTDIR}/_ext/1994828495/Console.o: ../../../../../Microchip/WirelessProtocols/Console.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1994828495 
	@${RM} ${OBJECTDIR}/_ext/1994828495/Console.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1994828495/Console.o   ../../../../../Microchip/WirelessProtocols/Console.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1994828495/Console.o 
	
${OBJECTDIR}/_ext/1994828495/EEPROM.o: ../../../../../Microchip/WirelessProtocols/EEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1994828495 
	@${RM} ${OBJECTDIR}/_ext/1994828495/EEPROM.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1994828495/EEPROM.o   ../../../../../Microchip/WirelessProtocols/EEPROM.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1994828495/EEPROM.o 
	
${OBJECTDIR}/_ext/1994828495/LCDBlocking.o: ../../../../../Microchip/WirelessProtocols/LCDBlocking.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1994828495 
	@${RM} ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o   ../../../../../Microchip/WirelessProtocols/LCDBlocking.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o 
	
${OBJECTDIR}/_ext/1994828495/MSPI.o: ../../../../../Microchip/WirelessProtocols/MSPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1994828495 
	@${RM} ${OBJECTDIR}/_ext/1994828495/MSPI.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1994828495/MSPI.o   ../../../../../Microchip/WirelessProtocols/MSPI.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1994828495/MSPI.o 
	
${OBJECTDIR}/_ext/1994828495/NVM.o: ../../../../../Microchip/WirelessProtocols/NVM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1994828495 
	@${RM} ${OBJECTDIR}/_ext/1994828495/NVM.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1994828495/NVM.o   ../../../../../Microchip/WirelessProtocols/NVM.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1994828495/NVM.o 
	
${OBJECTDIR}/_ext/1994828495/SymbolTime.o: ../../../../../Microchip/WirelessProtocols/SymbolTime.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1994828495 
	@${RM} ${OBJECTDIR}/_ext/1994828495/SymbolTime.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1994828495/SymbolTime.o   ../../../../../Microchip/WirelessProtocols/SymbolTime.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1994828495/SymbolTime.o 
	
${OBJECTDIR}/_ext/2087253717/MRF24J40.o: ../../../../../Microchip/Transceivers/MRF24J40/MRF24J40.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2087253717 
	@${RM} ${OBJECTDIR}/_ext/2087253717/MRF24J40.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/2087253717/MRF24J40.o   ../../../../../Microchip/Transceivers/MRF24J40/MRF24J40.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/2087253717/MRF24J40.o 
	
${OBJECTDIR}/_ext/486793731/MRF49XA.o: ../../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/486793731 
	@${RM} ${OBJECTDIR}/_ext/486793731/MRF49XA.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/486793731/MRF49XA.o   ../../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/486793731/MRF49XA.o 
	
${OBJECTDIR}/_ext/486674567/MRF89XA.o: ../../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/486674567 
	@${RM} ${OBJECTDIR}/_ext/486674567/MRF89XA.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/486674567/MRF89XA.o   ../../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/486674567/MRF89XA.o 
	
${OBJECTDIR}/_ext/702228253/crc.o: ../../../../../Microchip/Transceivers/crc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/702228253 
	@${RM} ${OBJECTDIR}/_ext/702228253/crc.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/702228253/crc.o   ../../../../../Microchip/Transceivers/crc.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/702228253/crc.o 
	
${OBJECTDIR}/_ext/702228253/security.o: ../../../../../Microchip/Transceivers/security.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/702228253 
	@${RM} ${OBJECTDIR}/_ext/702228253/security.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/702228253/security.o   ../../../../../Microchip/Transceivers/security.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/702228253/security.o 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE)   -p$(MP_PROCESSOR_OPTION_LD)  -w -x -u_DEBUG  -u_EXTENDEDMODE -z__MPLAB_BUILD=1  -u_CRUNTIME -z__MPLAB_DEBUG=1 -z__MPLAB_DEBUGGER_ICD3=1 $(MP_LINKER_DEBUG_OPTION) -l ${MP_CC_DIR}\\..\\lib  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}   
else
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE)   -p$(MP_PROCESSOR_OPTION_LD)  -w   -u_EXTENDEDMODE -z__MPLAB_BUILD=1  -u_CRUNTIME -l ${MP_CC_DIR}\\..\\lib  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}   
endif


# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf:
	${RM} -r build/PIC18_Explorer
	${RM} -r dist/PIC18_Explorer

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
