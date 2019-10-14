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
CND_CONF=Explorer_16_-_PIC24_or_dsPIC33

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
OBJECTFILES=${OBJECTDIR}/_ext/1472/HardwareProfile.o ${OBJECTDIR}/_ext/1994828495/SymbolTime.o ${OBJECTDIR}/_ext/1472/FeatureDemoNode2.o ${OBJECTDIR}/_ext/2087253717/MRF24J40.o ${OBJECTDIR}/_ext/1994828495/NVM.o ${OBJECTDIR}/_ext/1688839406/MiWi.o ${OBJECTDIR}/_ext/486674567/MRF89XA.o ${OBJECTDIR}/_ext/1994828495/Console.o ${OBJECTDIR}/_ext/486793731/MRF49XA.o ${OBJECTDIR}/_ext/967918303/MiWiPRO.o ${OBJECTDIR}/_ext/84067474/P2P.o ${OBJECTDIR}/_ext/1994828495/MSPI.o ${OBJECTDIR}/_ext/702228253/security.o ${OBJECTDIR}/_ext/1994828495/EEPROM.o ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o ${OBJECTDIR}/_ext/257748679/TimeDelay.o ${OBJECTDIR}/_ext/702228253/crc.o


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

# Path to java used to run MPLAB X when this makefile was created
MP_JAVA_PATH=C:\\Program\ Files\\Java\\jre6/bin/
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
	${MAKE}  -f nbproject/Makefile-Explorer_16_-_PIC24_or_dsPIC33.mk dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf

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
${OBJECTDIR}/_ext/1472/HardwareProfile.o: ../HardwareProfile.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/HardwareProfile.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF ${OBJECTDIR}/_ext/1472/HardwareProfile.o.d -o ${OBJECTDIR}/_ext/1472/HardwareProfile.o ../HardwareProfile.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/HardwareProfile.o.d > ${OBJECTDIR}/_ext/1472/HardwareProfile.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/HardwareProfile.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/HardwareProfile.o.tmp ${OBJECTDIR}/_ext/1472/HardwareProfile.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/HardwareProfile.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/HardwareProfile.o.d > ${OBJECTDIR}/_ext/1472/HardwareProfile.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/HardwareProfile.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/HardwareProfile.o.tmp ${OBJECTDIR}/_ext/1472/HardwareProfile.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/HardwareProfile.o.tmp
endif
${OBJECTDIR}/_ext/1994828495/SymbolTime.o: ../../../../../Microchip/WirelessProtocols/SymbolTime.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1994828495 
	${RM} ${OBJECTDIR}/_ext/1994828495/SymbolTime.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF ${OBJECTDIR}/_ext/1994828495/SymbolTime.o.d -o ${OBJECTDIR}/_ext/1994828495/SymbolTime.o ../../../../../Microchip/WirelessProtocols/SymbolTime.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1994828495/SymbolTime.o.d > ${OBJECTDIR}/_ext/1994828495/SymbolTime.o.tmp
	${RM} ${OBJECTDIR}/_ext/1994828495/SymbolTime.o.d 
	${CP} ${OBJECTDIR}/_ext/1994828495/SymbolTime.o.tmp ${OBJECTDIR}/_ext/1994828495/SymbolTime.o.d 
	${RM} ${OBJECTDIR}/_ext/1994828495/SymbolTime.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1994828495/SymbolTime.o.d > ${OBJECTDIR}/_ext/1994828495/SymbolTime.o.tmp
	${RM} ${OBJECTDIR}/_ext/1994828495/SymbolTime.o.d 
	${CP} ${OBJECTDIR}/_ext/1994828495/SymbolTime.o.tmp ${OBJECTDIR}/_ext/1994828495/SymbolTime.o.d 
	${RM} ${OBJECTDIR}/_ext/1994828495/SymbolTime.o.tmp
endif
${OBJECTDIR}/_ext/1472/FeatureDemoNode2.o: ../FeatureDemoNode2.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/FeatureDemoNode2.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF ${OBJECTDIR}/_ext/1472/FeatureDemoNode2.o.d -o ${OBJECTDIR}/_ext/1472/FeatureDemoNode2.o ../FeatureDemoNode2.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/FeatureDemoNode2.o.d > ${OBJECTDIR}/_ext/1472/FeatureDemoNode2.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/FeatureDemoNode2.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/FeatureDemoNode2.o.tmp ${OBJECTDIR}/_ext/1472/FeatureDemoNode2.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/FeatureDemoNode2.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/FeatureDemoNode2.o.d > ${OBJECTDIR}/_ext/1472/FeatureDemoNode2.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/FeatureDemoNode2.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/FeatureDemoNode2.o.tmp ${OBJECTDIR}/_ext/1472/FeatureDemoNode2.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/FeatureDemoNode2.o.tmp
endif
${OBJECTDIR}/_ext/2087253717/MRF24J40.o: ../../../../../Microchip/Transceivers/MRF24J40/MRF24J40.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/2087253717 
	${RM} ${OBJECTDIR}/_ext/2087253717/MRF24J40.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF ${OBJECTDIR}/_ext/2087253717/MRF24J40.o.d -o ${OBJECTDIR}/_ext/2087253717/MRF24J40.o ../../../../../Microchip/Transceivers/MRF24J40/MRF24J40.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2087253717/MRF24J40.o.d > ${OBJECTDIR}/_ext/2087253717/MRF24J40.o.tmp
	${RM} ${OBJECTDIR}/_ext/2087253717/MRF24J40.o.d 
	${CP} ${OBJECTDIR}/_ext/2087253717/MRF24J40.o.tmp ${OBJECTDIR}/_ext/2087253717/MRF24J40.o.d 
	${RM} ${OBJECTDIR}/_ext/2087253717/MRF24J40.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/2087253717/MRF24J40.o.d > ${OBJECTDIR}/_ext/2087253717/MRF24J40.o.tmp
	${RM} ${OBJECTDIR}/_ext/2087253717/MRF24J40.o.d 
	${CP} ${OBJECTDIR}/_ext/2087253717/MRF24J40.o.tmp ${OBJECTDIR}/_ext/2087253717/MRF24J40.o.d 
	${RM} ${OBJECTDIR}/_ext/2087253717/MRF24J40.o.tmp
endif
${OBJECTDIR}/_ext/1994828495/NVM.o: ../../../../../Microchip/WirelessProtocols/NVM.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1994828495 
	${RM} ${OBJECTDIR}/_ext/1994828495/NVM.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF ${OBJECTDIR}/_ext/1994828495/NVM.o.d -o ${OBJECTDIR}/_ext/1994828495/NVM.o ../../../../../Microchip/WirelessProtocols/NVM.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1994828495/NVM.o.d > ${OBJECTDIR}/_ext/1994828495/NVM.o.tmp
	${RM} ${OBJECTDIR}/_ext/1994828495/NVM.o.d 
	${CP} ${OBJECTDIR}/_ext/1994828495/NVM.o.tmp ${OBJECTDIR}/_ext/1994828495/NVM.o.d 
	${RM} ${OBJECTDIR}/_ext/1994828495/NVM.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1994828495/NVM.o.d > ${OBJECTDIR}/_ext/1994828495/NVM.o.tmp
	${RM} ${OBJECTDIR}/_ext/1994828495/NVM.o.d 
	${CP} ${OBJECTDIR}/_ext/1994828495/NVM.o.tmp ${OBJECTDIR}/_ext/1994828495/NVM.o.d 
	${RM} ${OBJECTDIR}/_ext/1994828495/NVM.o.tmp
endif
${OBJECTDIR}/_ext/1688839406/MiWi.o: ../../../../../Microchip/WirelessProtocols/MiWi/MiWi.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1688839406 
	${RM} ${OBJECTDIR}/_ext/1688839406/MiWi.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF ${OBJECTDIR}/_ext/1688839406/MiWi.o.d -o ${OBJECTDIR}/_ext/1688839406/MiWi.o ../../../../../Microchip/WirelessProtocols/MiWi/MiWi.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1688839406/MiWi.o.d > ${OBJECTDIR}/_ext/1688839406/MiWi.o.tmp
	${RM} ${OBJECTDIR}/_ext/1688839406/MiWi.o.d 
	${CP} ${OBJECTDIR}/_ext/1688839406/MiWi.o.tmp ${OBJECTDIR}/_ext/1688839406/MiWi.o.d 
	${RM} ${OBJECTDIR}/_ext/1688839406/MiWi.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1688839406/MiWi.o.d > ${OBJECTDIR}/_ext/1688839406/MiWi.o.tmp
	${RM} ${OBJECTDIR}/_ext/1688839406/MiWi.o.d 
	${CP} ${OBJECTDIR}/_ext/1688839406/MiWi.o.tmp ${OBJECTDIR}/_ext/1688839406/MiWi.o.d 
	${RM} ${OBJECTDIR}/_ext/1688839406/MiWi.o.tmp
endif
${OBJECTDIR}/_ext/486674567/MRF89XA.o: ../../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/486674567 
	${RM} ${OBJECTDIR}/_ext/486674567/MRF89XA.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF ${OBJECTDIR}/_ext/486674567/MRF89XA.o.d -o ${OBJECTDIR}/_ext/486674567/MRF89XA.o ../../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/486674567/MRF89XA.o.d > ${OBJECTDIR}/_ext/486674567/MRF89XA.o.tmp
	${RM} ${OBJECTDIR}/_ext/486674567/MRF89XA.o.d 
	${CP} ${OBJECTDIR}/_ext/486674567/MRF89XA.o.tmp ${OBJECTDIR}/_ext/486674567/MRF89XA.o.d 
	${RM} ${OBJECTDIR}/_ext/486674567/MRF89XA.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/486674567/MRF89XA.o.d > ${OBJECTDIR}/_ext/486674567/MRF89XA.o.tmp
	${RM} ${OBJECTDIR}/_ext/486674567/MRF89XA.o.d 
	${CP} ${OBJECTDIR}/_ext/486674567/MRF89XA.o.tmp ${OBJECTDIR}/_ext/486674567/MRF89XA.o.d 
	${RM} ${OBJECTDIR}/_ext/486674567/MRF89XA.o.tmp
endif
${OBJECTDIR}/_ext/1994828495/Console.o: ../../../../../Microchip/WirelessProtocols/Console.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1994828495 
	${RM} ${OBJECTDIR}/_ext/1994828495/Console.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF ${OBJECTDIR}/_ext/1994828495/Console.o.d -o ${OBJECTDIR}/_ext/1994828495/Console.o ../../../../../Microchip/WirelessProtocols/Console.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1994828495/Console.o.d > ${OBJECTDIR}/_ext/1994828495/Console.o.tmp
	${RM} ${OBJECTDIR}/_ext/1994828495/Console.o.d 
	${CP} ${OBJECTDIR}/_ext/1994828495/Console.o.tmp ${OBJECTDIR}/_ext/1994828495/Console.o.d 
	${RM} ${OBJECTDIR}/_ext/1994828495/Console.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1994828495/Console.o.d > ${OBJECTDIR}/_ext/1994828495/Console.o.tmp
	${RM} ${OBJECTDIR}/_ext/1994828495/Console.o.d 
	${CP} ${OBJECTDIR}/_ext/1994828495/Console.o.tmp ${OBJECTDIR}/_ext/1994828495/Console.o.d 
	${RM} ${OBJECTDIR}/_ext/1994828495/Console.o.tmp
endif
${OBJECTDIR}/_ext/486793731/MRF49XA.o: ../../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/486793731 
	${RM} ${OBJECTDIR}/_ext/486793731/MRF49XA.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF ${OBJECTDIR}/_ext/486793731/MRF49XA.o.d -o ${OBJECTDIR}/_ext/486793731/MRF49XA.o ../../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/486793731/MRF49XA.o.d > ${OBJECTDIR}/_ext/486793731/MRF49XA.o.tmp
	${RM} ${OBJECTDIR}/_ext/486793731/MRF49XA.o.d 
	${CP} ${OBJECTDIR}/_ext/486793731/MRF49XA.o.tmp ${OBJECTDIR}/_ext/486793731/MRF49XA.o.d 
	${RM} ${OBJECTDIR}/_ext/486793731/MRF49XA.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/486793731/MRF49XA.o.d > ${OBJECTDIR}/_ext/486793731/MRF49XA.o.tmp
	${RM} ${OBJECTDIR}/_ext/486793731/MRF49XA.o.d 
	${CP} ${OBJECTDIR}/_ext/486793731/MRF49XA.o.tmp ${OBJECTDIR}/_ext/486793731/MRF49XA.o.d 
	${RM} ${OBJECTDIR}/_ext/486793731/MRF49XA.o.tmp
endif
${OBJECTDIR}/_ext/967918303/MiWiPRO.o: ../../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/967918303 
	${RM} ${OBJECTDIR}/_ext/967918303/MiWiPRO.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF ${OBJECTDIR}/_ext/967918303/MiWiPRO.o.d -o ${OBJECTDIR}/_ext/967918303/MiWiPRO.o ../../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/967918303/MiWiPRO.o.d > ${OBJECTDIR}/_ext/967918303/MiWiPRO.o.tmp
	${RM} ${OBJECTDIR}/_ext/967918303/MiWiPRO.o.d 
	${CP} ${OBJECTDIR}/_ext/967918303/MiWiPRO.o.tmp ${OBJECTDIR}/_ext/967918303/MiWiPRO.o.d 
	${RM} ${OBJECTDIR}/_ext/967918303/MiWiPRO.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/967918303/MiWiPRO.o.d > ${OBJECTDIR}/_ext/967918303/MiWiPRO.o.tmp
	${RM} ${OBJECTDIR}/_ext/967918303/MiWiPRO.o.d 
	${CP} ${OBJECTDIR}/_ext/967918303/MiWiPRO.o.tmp ${OBJECTDIR}/_ext/967918303/MiWiPRO.o.d 
	${RM} ${OBJECTDIR}/_ext/967918303/MiWiPRO.o.tmp
endif
${OBJECTDIR}/_ext/84067474/P2P.o: ../../../../../Microchip/WirelessProtocols/P2P/P2P.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/84067474 
	${RM} ${OBJECTDIR}/_ext/84067474/P2P.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF ${OBJECTDIR}/_ext/84067474/P2P.o.d -o ${OBJECTDIR}/_ext/84067474/P2P.o ../../../../../Microchip/WirelessProtocols/P2P/P2P.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/84067474/P2P.o.d > ${OBJECTDIR}/_ext/84067474/P2P.o.tmp
	${RM} ${OBJECTDIR}/_ext/84067474/P2P.o.d 
	${CP} ${OBJECTDIR}/_ext/84067474/P2P.o.tmp ${OBJECTDIR}/_ext/84067474/P2P.o.d 
	${RM} ${OBJECTDIR}/_ext/84067474/P2P.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/84067474/P2P.o.d > ${OBJECTDIR}/_ext/84067474/P2P.o.tmp
	${RM} ${OBJECTDIR}/_ext/84067474/P2P.o.d 
	${CP} ${OBJECTDIR}/_ext/84067474/P2P.o.tmp ${OBJECTDIR}/_ext/84067474/P2P.o.d 
	${RM} ${OBJECTDIR}/_ext/84067474/P2P.o.tmp
endif
${OBJECTDIR}/_ext/1994828495/MSPI.o: ../../../../../Microchip/WirelessProtocols/MSPI.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1994828495 
	${RM} ${OBJECTDIR}/_ext/1994828495/MSPI.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF ${OBJECTDIR}/_ext/1994828495/MSPI.o.d -o ${OBJECTDIR}/_ext/1994828495/MSPI.o ../../../../../Microchip/WirelessProtocols/MSPI.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1994828495/MSPI.o.d > ${OBJECTDIR}/_ext/1994828495/MSPI.o.tmp
	${RM} ${OBJECTDIR}/_ext/1994828495/MSPI.o.d 
	${CP} ${OBJECTDIR}/_ext/1994828495/MSPI.o.tmp ${OBJECTDIR}/_ext/1994828495/MSPI.o.d 
	${RM} ${OBJECTDIR}/_ext/1994828495/MSPI.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1994828495/MSPI.o.d > ${OBJECTDIR}/_ext/1994828495/MSPI.o.tmp
	${RM} ${OBJECTDIR}/_ext/1994828495/MSPI.o.d 
	${CP} ${OBJECTDIR}/_ext/1994828495/MSPI.o.tmp ${OBJECTDIR}/_ext/1994828495/MSPI.o.d 
	${RM} ${OBJECTDIR}/_ext/1994828495/MSPI.o.tmp
endif
${OBJECTDIR}/_ext/702228253/security.o: ../../../../../Microchip/Transceivers/security.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/702228253 
	${RM} ${OBJECTDIR}/_ext/702228253/security.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF ${OBJECTDIR}/_ext/702228253/security.o.d -o ${OBJECTDIR}/_ext/702228253/security.o ../../../../../Microchip/Transceivers/security.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/702228253/security.o.d > ${OBJECTDIR}/_ext/702228253/security.o.tmp
	${RM} ${OBJECTDIR}/_ext/702228253/security.o.d 
	${CP} ${OBJECTDIR}/_ext/702228253/security.o.tmp ${OBJECTDIR}/_ext/702228253/security.o.d 
	${RM} ${OBJECTDIR}/_ext/702228253/security.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/702228253/security.o.d > ${OBJECTDIR}/_ext/702228253/security.o.tmp
	${RM} ${OBJECTDIR}/_ext/702228253/security.o.d 
	${CP} ${OBJECTDIR}/_ext/702228253/security.o.tmp ${OBJECTDIR}/_ext/702228253/security.o.d 
	${RM} ${OBJECTDIR}/_ext/702228253/security.o.tmp
endif
${OBJECTDIR}/_ext/1994828495/EEPROM.o: ../../../../../Microchip/WirelessProtocols/EEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1994828495 
	${RM} ${OBJECTDIR}/_ext/1994828495/EEPROM.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF ${OBJECTDIR}/_ext/1994828495/EEPROM.o.d -o ${OBJECTDIR}/_ext/1994828495/EEPROM.o ../../../../../Microchip/WirelessProtocols/EEPROM.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1994828495/EEPROM.o.d > ${OBJECTDIR}/_ext/1994828495/EEPROM.o.tmp
	${RM} ${OBJECTDIR}/_ext/1994828495/EEPROM.o.d 
	${CP} ${OBJECTDIR}/_ext/1994828495/EEPROM.o.tmp ${OBJECTDIR}/_ext/1994828495/EEPROM.o.d 
	${RM} ${OBJECTDIR}/_ext/1994828495/EEPROM.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1994828495/EEPROM.o.d > ${OBJECTDIR}/_ext/1994828495/EEPROM.o.tmp
	${RM} ${OBJECTDIR}/_ext/1994828495/EEPROM.o.d 
	${CP} ${OBJECTDIR}/_ext/1994828495/EEPROM.o.tmp ${OBJECTDIR}/_ext/1994828495/EEPROM.o.d 
	${RM} ${OBJECTDIR}/_ext/1994828495/EEPROM.o.tmp
endif
${OBJECTDIR}/_ext/1994828495/LCDBlocking.o: ../../../../../Microchip/WirelessProtocols/LCDBlocking.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1994828495 
	${RM} ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.d -o ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o ../../../../../Microchip/WirelessProtocols/LCDBlocking.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.d > ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.tmp
	${RM} ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.d 
	${CP} ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.tmp ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.d 
	${RM} ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.d > ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.tmp
	${RM} ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.d 
	${CP} ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.tmp ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.d 
	${RM} ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.tmp
endif
${OBJECTDIR}/_ext/257748679/TimeDelay.o: ../../../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/257748679 
	${RM} ${OBJECTDIR}/_ext/257748679/TimeDelay.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF ${OBJECTDIR}/_ext/257748679/TimeDelay.o.d -o ${OBJECTDIR}/_ext/257748679/TimeDelay.o ../../../../../Microchip/Common/TimeDelay.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/257748679/TimeDelay.o.d > ${OBJECTDIR}/_ext/257748679/TimeDelay.o.tmp
	${RM} ${OBJECTDIR}/_ext/257748679/TimeDelay.o.d 
	${CP} ${OBJECTDIR}/_ext/257748679/TimeDelay.o.tmp ${OBJECTDIR}/_ext/257748679/TimeDelay.o.d 
	${RM} ${OBJECTDIR}/_ext/257748679/TimeDelay.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/257748679/TimeDelay.o.d > ${OBJECTDIR}/_ext/257748679/TimeDelay.o.tmp
	${RM} ${OBJECTDIR}/_ext/257748679/TimeDelay.o.d 
	${CP} ${OBJECTDIR}/_ext/257748679/TimeDelay.o.tmp ${OBJECTDIR}/_ext/257748679/TimeDelay.o.d 
	${RM} ${OBJECTDIR}/_ext/257748679/TimeDelay.o.tmp
endif
${OBJECTDIR}/_ext/702228253/crc.o: ../../../../../Microchip/Transceivers/crc.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/702228253 
	${RM} ${OBJECTDIR}/_ext/702228253/crc.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF ${OBJECTDIR}/_ext/702228253/crc.o.d -o ${OBJECTDIR}/_ext/702228253/crc.o ../../../../../Microchip/Transceivers/crc.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/702228253/crc.o.d > ${OBJECTDIR}/_ext/702228253/crc.o.tmp
	${RM} ${OBJECTDIR}/_ext/702228253/crc.o.d 
	${CP} ${OBJECTDIR}/_ext/702228253/crc.o.tmp ${OBJECTDIR}/_ext/702228253/crc.o.d 
	${RM} ${OBJECTDIR}/_ext/702228253/crc.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/702228253/crc.o.d > ${OBJECTDIR}/_ext/702228253/crc.o.tmp
	${RM} ${OBJECTDIR}/_ext/702228253/crc.o.d 
	${CP} ${OBJECTDIR}/_ext/702228253/crc.o.tmp ${OBJECTDIR}/_ext/702228253/crc.o.d 
	${RM} ${OBJECTDIR}/_ext/702228253/crc.o.tmp
endif
else
${OBJECTDIR}/_ext/1472/HardwareProfile.o: ../HardwareProfile.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/HardwareProfile.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF ${OBJECTDIR}/_ext/1472/HardwareProfile.o.d -o ${OBJECTDIR}/_ext/1472/HardwareProfile.o ../HardwareProfile.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/HardwareProfile.o.d > ${OBJECTDIR}/_ext/1472/HardwareProfile.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/HardwareProfile.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/HardwareProfile.o.tmp ${OBJECTDIR}/_ext/1472/HardwareProfile.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/HardwareProfile.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/HardwareProfile.o.d > ${OBJECTDIR}/_ext/1472/HardwareProfile.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/HardwareProfile.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/HardwareProfile.o.tmp ${OBJECTDIR}/_ext/1472/HardwareProfile.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/HardwareProfile.o.tmp
endif
${OBJECTDIR}/_ext/1994828495/SymbolTime.o: ../../../../../Microchip/WirelessProtocols/SymbolTime.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1994828495 
	${RM} ${OBJECTDIR}/_ext/1994828495/SymbolTime.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF ${OBJECTDIR}/_ext/1994828495/SymbolTime.o.d -o ${OBJECTDIR}/_ext/1994828495/SymbolTime.o ../../../../../Microchip/WirelessProtocols/SymbolTime.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1994828495/SymbolTime.o.d > ${OBJECTDIR}/_ext/1994828495/SymbolTime.o.tmp
	${RM} ${OBJECTDIR}/_ext/1994828495/SymbolTime.o.d 
	${CP} ${OBJECTDIR}/_ext/1994828495/SymbolTime.o.tmp ${OBJECTDIR}/_ext/1994828495/SymbolTime.o.d 
	${RM} ${OBJECTDIR}/_ext/1994828495/SymbolTime.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1994828495/SymbolTime.o.d > ${OBJECTDIR}/_ext/1994828495/SymbolTime.o.tmp
	${RM} ${OBJECTDIR}/_ext/1994828495/SymbolTime.o.d 
	${CP} ${OBJECTDIR}/_ext/1994828495/SymbolTime.o.tmp ${OBJECTDIR}/_ext/1994828495/SymbolTime.o.d 
	${RM} ${OBJECTDIR}/_ext/1994828495/SymbolTime.o.tmp
endif
${OBJECTDIR}/_ext/1472/FeatureDemoNode2.o: ../FeatureDemoNode2.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/FeatureDemoNode2.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF ${OBJECTDIR}/_ext/1472/FeatureDemoNode2.o.d -o ${OBJECTDIR}/_ext/1472/FeatureDemoNode2.o ../FeatureDemoNode2.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/FeatureDemoNode2.o.d > ${OBJECTDIR}/_ext/1472/FeatureDemoNode2.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/FeatureDemoNode2.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/FeatureDemoNode2.o.tmp ${OBJECTDIR}/_ext/1472/FeatureDemoNode2.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/FeatureDemoNode2.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/FeatureDemoNode2.o.d > ${OBJECTDIR}/_ext/1472/FeatureDemoNode2.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/FeatureDemoNode2.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/FeatureDemoNode2.o.tmp ${OBJECTDIR}/_ext/1472/FeatureDemoNode2.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/FeatureDemoNode2.o.tmp
endif
${OBJECTDIR}/_ext/2087253717/MRF24J40.o: ../../../../../Microchip/Transceivers/MRF24J40/MRF24J40.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/2087253717 
	${RM} ${OBJECTDIR}/_ext/2087253717/MRF24J40.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF ${OBJECTDIR}/_ext/2087253717/MRF24J40.o.d -o ${OBJECTDIR}/_ext/2087253717/MRF24J40.o ../../../../../Microchip/Transceivers/MRF24J40/MRF24J40.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2087253717/MRF24J40.o.d > ${OBJECTDIR}/_ext/2087253717/MRF24J40.o.tmp
	${RM} ${OBJECTDIR}/_ext/2087253717/MRF24J40.o.d 
	${CP} ${OBJECTDIR}/_ext/2087253717/MRF24J40.o.tmp ${OBJECTDIR}/_ext/2087253717/MRF24J40.o.d 
	${RM} ${OBJECTDIR}/_ext/2087253717/MRF24J40.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/2087253717/MRF24J40.o.d > ${OBJECTDIR}/_ext/2087253717/MRF24J40.o.tmp
	${RM} ${OBJECTDIR}/_ext/2087253717/MRF24J40.o.d 
	${CP} ${OBJECTDIR}/_ext/2087253717/MRF24J40.o.tmp ${OBJECTDIR}/_ext/2087253717/MRF24J40.o.d 
	${RM} ${OBJECTDIR}/_ext/2087253717/MRF24J40.o.tmp
endif
${OBJECTDIR}/_ext/1994828495/NVM.o: ../../../../../Microchip/WirelessProtocols/NVM.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1994828495 
	${RM} ${OBJECTDIR}/_ext/1994828495/NVM.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF ${OBJECTDIR}/_ext/1994828495/NVM.o.d -o ${OBJECTDIR}/_ext/1994828495/NVM.o ../../../../../Microchip/WirelessProtocols/NVM.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1994828495/NVM.o.d > ${OBJECTDIR}/_ext/1994828495/NVM.o.tmp
	${RM} ${OBJECTDIR}/_ext/1994828495/NVM.o.d 
	${CP} ${OBJECTDIR}/_ext/1994828495/NVM.o.tmp ${OBJECTDIR}/_ext/1994828495/NVM.o.d 
	${RM} ${OBJECTDIR}/_ext/1994828495/NVM.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1994828495/NVM.o.d > ${OBJECTDIR}/_ext/1994828495/NVM.o.tmp
	${RM} ${OBJECTDIR}/_ext/1994828495/NVM.o.d 
	${CP} ${OBJECTDIR}/_ext/1994828495/NVM.o.tmp ${OBJECTDIR}/_ext/1994828495/NVM.o.d 
	${RM} ${OBJECTDIR}/_ext/1994828495/NVM.o.tmp
endif
${OBJECTDIR}/_ext/1688839406/MiWi.o: ../../../../../Microchip/WirelessProtocols/MiWi/MiWi.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1688839406 
	${RM} ${OBJECTDIR}/_ext/1688839406/MiWi.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF ${OBJECTDIR}/_ext/1688839406/MiWi.o.d -o ${OBJECTDIR}/_ext/1688839406/MiWi.o ../../../../../Microchip/WirelessProtocols/MiWi/MiWi.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1688839406/MiWi.o.d > ${OBJECTDIR}/_ext/1688839406/MiWi.o.tmp
	${RM} ${OBJECTDIR}/_ext/1688839406/MiWi.o.d 
	${CP} ${OBJECTDIR}/_ext/1688839406/MiWi.o.tmp ${OBJECTDIR}/_ext/1688839406/MiWi.o.d 
	${RM} ${OBJECTDIR}/_ext/1688839406/MiWi.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1688839406/MiWi.o.d > ${OBJECTDIR}/_ext/1688839406/MiWi.o.tmp
	${RM} ${OBJECTDIR}/_ext/1688839406/MiWi.o.d 
	${CP} ${OBJECTDIR}/_ext/1688839406/MiWi.o.tmp ${OBJECTDIR}/_ext/1688839406/MiWi.o.d 
	${RM} ${OBJECTDIR}/_ext/1688839406/MiWi.o.tmp
endif
${OBJECTDIR}/_ext/486674567/MRF89XA.o: ../../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/486674567 
	${RM} ${OBJECTDIR}/_ext/486674567/MRF89XA.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF ${OBJECTDIR}/_ext/486674567/MRF89XA.o.d -o ${OBJECTDIR}/_ext/486674567/MRF89XA.o ../../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/486674567/MRF89XA.o.d > ${OBJECTDIR}/_ext/486674567/MRF89XA.o.tmp
	${RM} ${OBJECTDIR}/_ext/486674567/MRF89XA.o.d 
	${CP} ${OBJECTDIR}/_ext/486674567/MRF89XA.o.tmp ${OBJECTDIR}/_ext/486674567/MRF89XA.o.d 
	${RM} ${OBJECTDIR}/_ext/486674567/MRF89XA.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/486674567/MRF89XA.o.d > ${OBJECTDIR}/_ext/486674567/MRF89XA.o.tmp
	${RM} ${OBJECTDIR}/_ext/486674567/MRF89XA.o.d 
	${CP} ${OBJECTDIR}/_ext/486674567/MRF89XA.o.tmp ${OBJECTDIR}/_ext/486674567/MRF89XA.o.d 
	${RM} ${OBJECTDIR}/_ext/486674567/MRF89XA.o.tmp
endif
${OBJECTDIR}/_ext/1994828495/Console.o: ../../../../../Microchip/WirelessProtocols/Console.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1994828495 
	${RM} ${OBJECTDIR}/_ext/1994828495/Console.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF ${OBJECTDIR}/_ext/1994828495/Console.o.d -o ${OBJECTDIR}/_ext/1994828495/Console.o ../../../../../Microchip/WirelessProtocols/Console.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1994828495/Console.o.d > ${OBJECTDIR}/_ext/1994828495/Console.o.tmp
	${RM} ${OBJECTDIR}/_ext/1994828495/Console.o.d 
	${CP} ${OBJECTDIR}/_ext/1994828495/Console.o.tmp ${OBJECTDIR}/_ext/1994828495/Console.o.d 
	${RM} ${OBJECTDIR}/_ext/1994828495/Console.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1994828495/Console.o.d > ${OBJECTDIR}/_ext/1994828495/Console.o.tmp
	${RM} ${OBJECTDIR}/_ext/1994828495/Console.o.d 
	${CP} ${OBJECTDIR}/_ext/1994828495/Console.o.tmp ${OBJECTDIR}/_ext/1994828495/Console.o.d 
	${RM} ${OBJECTDIR}/_ext/1994828495/Console.o.tmp
endif
${OBJECTDIR}/_ext/486793731/MRF49XA.o: ../../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/486793731 
	${RM} ${OBJECTDIR}/_ext/486793731/MRF49XA.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF ${OBJECTDIR}/_ext/486793731/MRF49XA.o.d -o ${OBJECTDIR}/_ext/486793731/MRF49XA.o ../../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/486793731/MRF49XA.o.d > ${OBJECTDIR}/_ext/486793731/MRF49XA.o.tmp
	${RM} ${OBJECTDIR}/_ext/486793731/MRF49XA.o.d 
	${CP} ${OBJECTDIR}/_ext/486793731/MRF49XA.o.tmp ${OBJECTDIR}/_ext/486793731/MRF49XA.o.d 
	${RM} ${OBJECTDIR}/_ext/486793731/MRF49XA.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/486793731/MRF49XA.o.d > ${OBJECTDIR}/_ext/486793731/MRF49XA.o.tmp
	${RM} ${OBJECTDIR}/_ext/486793731/MRF49XA.o.d 
	${CP} ${OBJECTDIR}/_ext/486793731/MRF49XA.o.tmp ${OBJECTDIR}/_ext/486793731/MRF49XA.o.d 
	${RM} ${OBJECTDIR}/_ext/486793731/MRF49XA.o.tmp
endif
${OBJECTDIR}/_ext/967918303/MiWiPRO.o: ../../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/967918303 
	${RM} ${OBJECTDIR}/_ext/967918303/MiWiPRO.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF ${OBJECTDIR}/_ext/967918303/MiWiPRO.o.d -o ${OBJECTDIR}/_ext/967918303/MiWiPRO.o ../../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/967918303/MiWiPRO.o.d > ${OBJECTDIR}/_ext/967918303/MiWiPRO.o.tmp
	${RM} ${OBJECTDIR}/_ext/967918303/MiWiPRO.o.d 
	${CP} ${OBJECTDIR}/_ext/967918303/MiWiPRO.o.tmp ${OBJECTDIR}/_ext/967918303/MiWiPRO.o.d 
	${RM} ${OBJECTDIR}/_ext/967918303/MiWiPRO.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/967918303/MiWiPRO.o.d > ${OBJECTDIR}/_ext/967918303/MiWiPRO.o.tmp
	${RM} ${OBJECTDIR}/_ext/967918303/MiWiPRO.o.d 
	${CP} ${OBJECTDIR}/_ext/967918303/MiWiPRO.o.tmp ${OBJECTDIR}/_ext/967918303/MiWiPRO.o.d 
	${RM} ${OBJECTDIR}/_ext/967918303/MiWiPRO.o.tmp
endif
${OBJECTDIR}/_ext/84067474/P2P.o: ../../../../../Microchip/WirelessProtocols/P2P/P2P.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/84067474 
	${RM} ${OBJECTDIR}/_ext/84067474/P2P.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF ${OBJECTDIR}/_ext/84067474/P2P.o.d -o ${OBJECTDIR}/_ext/84067474/P2P.o ../../../../../Microchip/WirelessProtocols/P2P/P2P.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/84067474/P2P.o.d > ${OBJECTDIR}/_ext/84067474/P2P.o.tmp
	${RM} ${OBJECTDIR}/_ext/84067474/P2P.o.d 
	${CP} ${OBJECTDIR}/_ext/84067474/P2P.o.tmp ${OBJECTDIR}/_ext/84067474/P2P.o.d 
	${RM} ${OBJECTDIR}/_ext/84067474/P2P.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/84067474/P2P.o.d > ${OBJECTDIR}/_ext/84067474/P2P.o.tmp
	${RM} ${OBJECTDIR}/_ext/84067474/P2P.o.d 
	${CP} ${OBJECTDIR}/_ext/84067474/P2P.o.tmp ${OBJECTDIR}/_ext/84067474/P2P.o.d 
	${RM} ${OBJECTDIR}/_ext/84067474/P2P.o.tmp
endif
${OBJECTDIR}/_ext/1994828495/MSPI.o: ../../../../../Microchip/WirelessProtocols/MSPI.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1994828495 
	${RM} ${OBJECTDIR}/_ext/1994828495/MSPI.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF ${OBJECTDIR}/_ext/1994828495/MSPI.o.d -o ${OBJECTDIR}/_ext/1994828495/MSPI.o ../../../../../Microchip/WirelessProtocols/MSPI.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1994828495/MSPI.o.d > ${OBJECTDIR}/_ext/1994828495/MSPI.o.tmp
	${RM} ${OBJECTDIR}/_ext/1994828495/MSPI.o.d 
	${CP} ${OBJECTDIR}/_ext/1994828495/MSPI.o.tmp ${OBJECTDIR}/_ext/1994828495/MSPI.o.d 
	${RM} ${OBJECTDIR}/_ext/1994828495/MSPI.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1994828495/MSPI.o.d > ${OBJECTDIR}/_ext/1994828495/MSPI.o.tmp
	${RM} ${OBJECTDIR}/_ext/1994828495/MSPI.o.d 
	${CP} ${OBJECTDIR}/_ext/1994828495/MSPI.o.tmp ${OBJECTDIR}/_ext/1994828495/MSPI.o.d 
	${RM} ${OBJECTDIR}/_ext/1994828495/MSPI.o.tmp
endif
${OBJECTDIR}/_ext/702228253/security.o: ../../../../../Microchip/Transceivers/security.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/702228253 
	${RM} ${OBJECTDIR}/_ext/702228253/security.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF ${OBJECTDIR}/_ext/702228253/security.o.d -o ${OBJECTDIR}/_ext/702228253/security.o ../../../../../Microchip/Transceivers/security.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/702228253/security.o.d > ${OBJECTDIR}/_ext/702228253/security.o.tmp
	${RM} ${OBJECTDIR}/_ext/702228253/security.o.d 
	${CP} ${OBJECTDIR}/_ext/702228253/security.o.tmp ${OBJECTDIR}/_ext/702228253/security.o.d 
	${RM} ${OBJECTDIR}/_ext/702228253/security.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/702228253/security.o.d > ${OBJECTDIR}/_ext/702228253/security.o.tmp
	${RM} ${OBJECTDIR}/_ext/702228253/security.o.d 
	${CP} ${OBJECTDIR}/_ext/702228253/security.o.tmp ${OBJECTDIR}/_ext/702228253/security.o.d 
	${RM} ${OBJECTDIR}/_ext/702228253/security.o.tmp
endif
${OBJECTDIR}/_ext/1994828495/EEPROM.o: ../../../../../Microchip/WirelessProtocols/EEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1994828495 
	${RM} ${OBJECTDIR}/_ext/1994828495/EEPROM.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF ${OBJECTDIR}/_ext/1994828495/EEPROM.o.d -o ${OBJECTDIR}/_ext/1994828495/EEPROM.o ../../../../../Microchip/WirelessProtocols/EEPROM.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1994828495/EEPROM.o.d > ${OBJECTDIR}/_ext/1994828495/EEPROM.o.tmp
	${RM} ${OBJECTDIR}/_ext/1994828495/EEPROM.o.d 
	${CP} ${OBJECTDIR}/_ext/1994828495/EEPROM.o.tmp ${OBJECTDIR}/_ext/1994828495/EEPROM.o.d 
	${RM} ${OBJECTDIR}/_ext/1994828495/EEPROM.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1994828495/EEPROM.o.d > ${OBJECTDIR}/_ext/1994828495/EEPROM.o.tmp
	${RM} ${OBJECTDIR}/_ext/1994828495/EEPROM.o.d 
	${CP} ${OBJECTDIR}/_ext/1994828495/EEPROM.o.tmp ${OBJECTDIR}/_ext/1994828495/EEPROM.o.d 
	${RM} ${OBJECTDIR}/_ext/1994828495/EEPROM.o.tmp
endif
${OBJECTDIR}/_ext/1994828495/LCDBlocking.o: ../../../../../Microchip/WirelessProtocols/LCDBlocking.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1994828495 
	${RM} ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.d -o ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o ../../../../../Microchip/WirelessProtocols/LCDBlocking.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.d > ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.tmp
	${RM} ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.d 
	${CP} ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.tmp ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.d 
	${RM} ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.d > ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.tmp
	${RM} ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.d 
	${CP} ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.tmp ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.d 
	${RM} ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.tmp
endif
${OBJECTDIR}/_ext/257748679/TimeDelay.o: ../../../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/257748679 
	${RM} ${OBJECTDIR}/_ext/257748679/TimeDelay.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF ${OBJECTDIR}/_ext/257748679/TimeDelay.o.d -o ${OBJECTDIR}/_ext/257748679/TimeDelay.o ../../../../../Microchip/Common/TimeDelay.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/257748679/TimeDelay.o.d > ${OBJECTDIR}/_ext/257748679/TimeDelay.o.tmp
	${RM} ${OBJECTDIR}/_ext/257748679/TimeDelay.o.d 
	${CP} ${OBJECTDIR}/_ext/257748679/TimeDelay.o.tmp ${OBJECTDIR}/_ext/257748679/TimeDelay.o.d 
	${RM} ${OBJECTDIR}/_ext/257748679/TimeDelay.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/257748679/TimeDelay.o.d > ${OBJECTDIR}/_ext/257748679/TimeDelay.o.tmp
	${RM} ${OBJECTDIR}/_ext/257748679/TimeDelay.o.d 
	${CP} ${OBJECTDIR}/_ext/257748679/TimeDelay.o.tmp ${OBJECTDIR}/_ext/257748679/TimeDelay.o.d 
	${RM} ${OBJECTDIR}/_ext/257748679/TimeDelay.o.tmp
endif
${OBJECTDIR}/_ext/702228253/crc.o: ../../../../../Microchip/Transceivers/crc.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/702228253 
	${RM} ${OBJECTDIR}/_ext/702228253/crc.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF ${OBJECTDIR}/_ext/702228253/crc.o.d -o ${OBJECTDIR}/_ext/702228253/crc.o ../../../../../Microchip/Transceivers/crc.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/702228253/crc.o.d > ${OBJECTDIR}/_ext/702228253/crc.o.tmp
	${RM} ${OBJECTDIR}/_ext/702228253/crc.o.d 
	${CP} ${OBJECTDIR}/_ext/702228253/crc.o.tmp ${OBJECTDIR}/_ext/702228253/crc.o.d 
	${RM} ${OBJECTDIR}/_ext/702228253/crc.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/702228253/crc.o.d > ${OBJECTDIR}/_ext/702228253/crc.o.tmp
	${RM} ${OBJECTDIR}/_ext/702228253/crc.o.d 
	${CP} ${OBJECTDIR}/_ext/702228253/crc.o.tmp ${OBJECTDIR}/_ext/702228253/crc.o.d 
	${RM} ${OBJECTDIR}/_ext/702228253/crc.o.tmp
endif
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf  -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf ${OBJECTFILES}        -Wl,--defsym=__MPLAB_BUILD=1,--heap=256,--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_REAL_ICE=1
else
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf  -mcpu=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf ${OBJECTFILES}        -Wl,--defsym=__MPLAB_BUILD=1,--heap=256,--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION)
	${MP_CC_DIR}\\pic30-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf -omf=elf
endif


# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf:
	${RM} -r build/Explorer_16_-_PIC24_or_dsPIC33
	${RM} -r dist/Explorer_16_-_PIC24_or_dsPIC33

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
