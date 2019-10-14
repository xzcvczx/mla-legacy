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
CND_CONF=PICDEM_Z

ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.cof
else
IMAGE_TYPE=production
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.cof
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
MP_CC=C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin\\mcc18.exe
# MP_BC is not defined
MP_AS=C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin\\..\\mpasm\\MPASMWIN.exe
MP_LD=C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin\\mplink.exe
MP_AR=C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin\\mplib.exe
# MP_BC is not defined
MP_CC_DIR=C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin
# MP_BC_DIR is not defined
MP_AS_DIR=C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin\\..\\mpasm
MP_LD_DIR=C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin
MP_AR_DIR=C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin
# MP_BC_DIR is not defined
# This makefile will use a C preprocessor to generate dependency files
MP_CPP=C:/Program\ Files/Microchip/MPLABX/mplab_ide/mplab_ide/modules/../../bin/mplab-cpp
.build-conf: ${BUILD_SUBPROJECTS}
	${MAKE}  -f nbproject/Makefile-PICDEM_Z.mk dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.cof

MP_PROCESSOR_OPTION=18F4620
MP_PROCESSOR_OPTION_LD=18f4620
MP_LINKER_DEBUG_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: createRevGrep
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
__revgrep__:   nbproject/Makefile-${CND_CONF}.mk
	@echo 'grep -q $$@' > __revgrep__
	@echo 'if [ "$$?" -ne "0" ]; then' >> __revgrep__
	@echo '  exit 0' >> __revgrep__
	@echo 'else' >> __revgrep__
	@echo '  exit 1' >> __revgrep__
	@echo 'fi' >> __revgrep__
	@chmod +x __revgrep__
else
__revgrep__:   nbproject/Makefile-${CND_CONF}.mk
	@echo 'grep -q $$@' > __revgrep__
	@echo 'if [ "$$?" -ne "0" ]; then' >> __revgrep__
	@echo '  exit 0' >> __revgrep__
	@echo 'else' >> __revgrep__
	@echo '  exit 1' >> __revgrep__
	@echo 'fi' >> __revgrep__
	@chmod +x __revgrep__
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1472/HardwareProfile.o: ../HardwareProfile.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1472/HardwareProfile.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/HardwareProfile.o   ../HardwareProfile.c  > ${OBJECTDIR}/_ext/1472/HardwareProfile.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1472/HardwareProfile.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1472/HardwareProfile.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1472/HardwareProfile.o.temp ../HardwareProfile.c __temp_cpp_output__ -D __18F87J11 -D __18CXX -I C:\\DevSource\\App\ Libs\ v2011-06\\Microchip\\Include -I C:\\DevSource\\App\ Libs\ v2011-06\\MiWi\ DE\ Demo\\Basic\ Demos\\Feature\ Demo\\Node\ 2 -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F87J11
	printf "%s/" ${OBJECTDIR}/_ext/1472 > ${OBJECTDIR}/_ext/1472/HardwareProfile.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1472/HardwareProfile.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1472/HardwareProfile.o.d
else
	cat ${OBJECTDIR}/_ext/1472/HardwareProfile.o.temp >> ${OBJECTDIR}/_ext/1472/HardwareProfile.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1994828495/SymbolTime.o: ../../../../../Microchip/WirelessProtocols/SymbolTime.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1994828495/SymbolTime.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1994828495 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1994828495/SymbolTime.o   ../../../../../Microchip/WirelessProtocols/SymbolTime.c  > ${OBJECTDIR}/_ext/1994828495/SymbolTime.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1994828495/SymbolTime.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1994828495/SymbolTime.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1994828495/SymbolTime.o.temp ../../../../../Microchip/WirelessProtocols/SymbolTime.c __temp_cpp_output__ -D __18F87J11 -D __18CXX -I C:\\DevSource\\App\ Libs\ v2011-06\\Microchip\\Include -I C:\\DevSource\\App\ Libs\ v2011-06\\MiWi\ DE\ Demo\\Basic\ Demos\\Feature\ Demo\\Node\ 2 -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F87J11
	printf "%s/" ${OBJECTDIR}/_ext/1994828495 > ${OBJECTDIR}/_ext/1994828495/SymbolTime.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1994828495/SymbolTime.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1994828495/SymbolTime.o.d
else
	cat ${OBJECTDIR}/_ext/1994828495/SymbolTime.o.temp >> ${OBJECTDIR}/_ext/1994828495/SymbolTime.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1472/FeatureDemoNode2.o: ../FeatureDemoNode2.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1472/FeatureDemoNode2.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/FeatureDemoNode2.o   ../FeatureDemoNode2.c  > ${OBJECTDIR}/_ext/1472/FeatureDemoNode2.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1472/FeatureDemoNode2.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1472/FeatureDemoNode2.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1472/FeatureDemoNode2.o.temp ../FeatureDemoNode2.c __temp_cpp_output__ -D __18F87J11 -D __18CXX -I C:\\DevSource\\App\ Libs\ v2011-06\\Microchip\\Include -I C:\\DevSource\\App\ Libs\ v2011-06\\MiWi\ DE\ Demo\\Basic\ Demos\\Feature\ Demo\\Node\ 2 -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F87J11
	printf "%s/" ${OBJECTDIR}/_ext/1472 > ${OBJECTDIR}/_ext/1472/FeatureDemoNode2.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1472/FeatureDemoNode2.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1472/FeatureDemoNode2.o.d
else
	cat ${OBJECTDIR}/_ext/1472/FeatureDemoNode2.o.temp >> ${OBJECTDIR}/_ext/1472/FeatureDemoNode2.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/2087253717/MRF24J40.o: ../../../../../Microchip/Transceivers/MRF24J40/MRF24J40.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/2087253717/MRF24J40.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/2087253717 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/2087253717/MRF24J40.o   ../../../../../Microchip/Transceivers/MRF24J40/MRF24J40.c  > ${OBJECTDIR}/_ext/2087253717/MRF24J40.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/2087253717/MRF24J40.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/2087253717/MRF24J40.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/2087253717/MRF24J40.o.temp ../../../../../Microchip/Transceivers/MRF24J40/MRF24J40.c __temp_cpp_output__ -D __18F87J11 -D __18CXX -I C:\\DevSource\\App\ Libs\ v2011-06\\Microchip\\Include -I C:\\DevSource\\App\ Libs\ v2011-06\\MiWi\ DE\ Demo\\Basic\ Demos\\Feature\ Demo\\Node\ 2 -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F87J11
	printf "%s/" ${OBJECTDIR}/_ext/2087253717 > ${OBJECTDIR}/_ext/2087253717/MRF24J40.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/2087253717/MRF24J40.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/2087253717/MRF24J40.o.d
else
	cat ${OBJECTDIR}/_ext/2087253717/MRF24J40.o.temp >> ${OBJECTDIR}/_ext/2087253717/MRF24J40.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1994828495/NVM.o: ../../../../../Microchip/WirelessProtocols/NVM.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1994828495/NVM.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1994828495 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1994828495/NVM.o   ../../../../../Microchip/WirelessProtocols/NVM.c  > ${OBJECTDIR}/_ext/1994828495/NVM.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1994828495/NVM.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1994828495/NVM.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1994828495/NVM.o.temp ../../../../../Microchip/WirelessProtocols/NVM.c __temp_cpp_output__ -D __18F87J11 -D __18CXX -I C:\\DevSource\\App\ Libs\ v2011-06\\Microchip\\Include -I C:\\DevSource\\App\ Libs\ v2011-06\\MiWi\ DE\ Demo\\Basic\ Demos\\Feature\ Demo\\Node\ 2 -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F87J11
	printf "%s/" ${OBJECTDIR}/_ext/1994828495 > ${OBJECTDIR}/_ext/1994828495/NVM.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1994828495/NVM.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1994828495/NVM.o.d
else
	cat ${OBJECTDIR}/_ext/1994828495/NVM.o.temp >> ${OBJECTDIR}/_ext/1994828495/NVM.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1688839406/MiWi.o: ../../../../../Microchip/WirelessProtocols/MiWi/MiWi.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1688839406/MiWi.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1688839406 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1688839406/MiWi.o   ../../../../../Microchip/WirelessProtocols/MiWi/MiWi.c  > ${OBJECTDIR}/_ext/1688839406/MiWi.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1688839406/MiWi.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1688839406/MiWi.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1688839406/MiWi.o.temp ../../../../../Microchip/WirelessProtocols/MiWi/MiWi.c __temp_cpp_output__ -D __18F87J11 -D __18CXX -I C:\\DevSource\\App\ Libs\ v2011-06\\Microchip\\Include -I C:\\DevSource\\App\ Libs\ v2011-06\\MiWi\ DE\ Demo\\Basic\ Demos\\Feature\ Demo\\Node\ 2 -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F87J11
	printf "%s/" ${OBJECTDIR}/_ext/1688839406 > ${OBJECTDIR}/_ext/1688839406/MiWi.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1688839406/MiWi.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1688839406/MiWi.o.d
else
	cat ${OBJECTDIR}/_ext/1688839406/MiWi.o.temp >> ${OBJECTDIR}/_ext/1688839406/MiWi.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/486674567/MRF89XA.o: ../../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/486674567/MRF89XA.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/486674567 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/486674567/MRF89XA.o   ../../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c  > ${OBJECTDIR}/_ext/486674567/MRF89XA.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/486674567/MRF89XA.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/486674567/MRF89XA.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/486674567/MRF89XA.o.temp ../../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c __temp_cpp_output__ -D __18F87J11 -D __18CXX -I C:\\DevSource\\App\ Libs\ v2011-06\\Microchip\\Include -I C:\\DevSource\\App\ Libs\ v2011-06\\MiWi\ DE\ Demo\\Basic\ Demos\\Feature\ Demo\\Node\ 2 -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F87J11
	printf "%s/" ${OBJECTDIR}/_ext/486674567 > ${OBJECTDIR}/_ext/486674567/MRF89XA.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/486674567/MRF89XA.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/486674567/MRF89XA.o.d
else
	cat ${OBJECTDIR}/_ext/486674567/MRF89XA.o.temp >> ${OBJECTDIR}/_ext/486674567/MRF89XA.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1994828495/Console.o: ../../../../../Microchip/WirelessProtocols/Console.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1994828495/Console.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1994828495 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1994828495/Console.o   ../../../../../Microchip/WirelessProtocols/Console.c  > ${OBJECTDIR}/_ext/1994828495/Console.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1994828495/Console.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1994828495/Console.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1994828495/Console.o.temp ../../../../../Microchip/WirelessProtocols/Console.c __temp_cpp_output__ -D __18F87J11 -D __18CXX -I C:\\DevSource\\App\ Libs\ v2011-06\\Microchip\\Include -I C:\\DevSource\\App\ Libs\ v2011-06\\MiWi\ DE\ Demo\\Basic\ Demos\\Feature\ Demo\\Node\ 2 -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F87J11
	printf "%s/" ${OBJECTDIR}/_ext/1994828495 > ${OBJECTDIR}/_ext/1994828495/Console.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1994828495/Console.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1994828495/Console.o.d
else
	cat ${OBJECTDIR}/_ext/1994828495/Console.o.temp >> ${OBJECTDIR}/_ext/1994828495/Console.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/486793731/MRF49XA.o: ../../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/486793731/MRF49XA.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/486793731 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/486793731/MRF49XA.o   ../../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c  > ${OBJECTDIR}/_ext/486793731/MRF49XA.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/486793731/MRF49XA.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/486793731/MRF49XA.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/486793731/MRF49XA.o.temp ../../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c __temp_cpp_output__ -D __18F87J11 -D __18CXX -I C:\\DevSource\\App\ Libs\ v2011-06\\Microchip\\Include -I C:\\DevSource\\App\ Libs\ v2011-06\\MiWi\ DE\ Demo\\Basic\ Demos\\Feature\ Demo\\Node\ 2 -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F87J11
	printf "%s/" ${OBJECTDIR}/_ext/486793731 > ${OBJECTDIR}/_ext/486793731/MRF49XA.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/486793731/MRF49XA.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/486793731/MRF49XA.o.d
else
	cat ${OBJECTDIR}/_ext/486793731/MRF49XA.o.temp >> ${OBJECTDIR}/_ext/486793731/MRF49XA.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/967918303/MiWiPRO.o: ../../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/967918303/MiWiPRO.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/967918303 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/967918303/MiWiPRO.o   ../../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c  > ${OBJECTDIR}/_ext/967918303/MiWiPRO.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/967918303/MiWiPRO.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/967918303/MiWiPRO.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/967918303/MiWiPRO.o.temp ../../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c __temp_cpp_output__ -D __18F87J11 -D __18CXX -I C:\\DevSource\\App\ Libs\ v2011-06\\Microchip\\Include -I C:\\DevSource\\App\ Libs\ v2011-06\\MiWi\ DE\ Demo\\Basic\ Demos\\Feature\ Demo\\Node\ 2 -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F87J11
	printf "%s/" ${OBJECTDIR}/_ext/967918303 > ${OBJECTDIR}/_ext/967918303/MiWiPRO.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/967918303/MiWiPRO.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/967918303/MiWiPRO.o.d
else
	cat ${OBJECTDIR}/_ext/967918303/MiWiPRO.o.temp >> ${OBJECTDIR}/_ext/967918303/MiWiPRO.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/84067474/P2P.o: ../../../../../Microchip/WirelessProtocols/P2P/P2P.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/84067474/P2P.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/84067474 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/84067474/P2P.o   ../../../../../Microchip/WirelessProtocols/P2P/P2P.c  > ${OBJECTDIR}/_ext/84067474/P2P.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/84067474/P2P.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/84067474/P2P.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/84067474/P2P.o.temp ../../../../../Microchip/WirelessProtocols/P2P/P2P.c __temp_cpp_output__ -D __18F87J11 -D __18CXX -I C:\\DevSource\\App\ Libs\ v2011-06\\Microchip\\Include -I C:\\DevSource\\App\ Libs\ v2011-06\\MiWi\ DE\ Demo\\Basic\ Demos\\Feature\ Demo\\Node\ 2 -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F87J11
	printf "%s/" ${OBJECTDIR}/_ext/84067474 > ${OBJECTDIR}/_ext/84067474/P2P.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/84067474/P2P.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/84067474/P2P.o.d
else
	cat ${OBJECTDIR}/_ext/84067474/P2P.o.temp >> ${OBJECTDIR}/_ext/84067474/P2P.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1994828495/MSPI.o: ../../../../../Microchip/WirelessProtocols/MSPI.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1994828495/MSPI.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1994828495 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1994828495/MSPI.o   ../../../../../Microchip/WirelessProtocols/MSPI.c  > ${OBJECTDIR}/_ext/1994828495/MSPI.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1994828495/MSPI.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1994828495/MSPI.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1994828495/MSPI.o.temp ../../../../../Microchip/WirelessProtocols/MSPI.c __temp_cpp_output__ -D __18F87J11 -D __18CXX -I C:\\DevSource\\App\ Libs\ v2011-06\\Microchip\\Include -I C:\\DevSource\\App\ Libs\ v2011-06\\MiWi\ DE\ Demo\\Basic\ Demos\\Feature\ Demo\\Node\ 2 -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F87J11
	printf "%s/" ${OBJECTDIR}/_ext/1994828495 > ${OBJECTDIR}/_ext/1994828495/MSPI.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1994828495/MSPI.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1994828495/MSPI.o.d
else
	cat ${OBJECTDIR}/_ext/1994828495/MSPI.o.temp >> ${OBJECTDIR}/_ext/1994828495/MSPI.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/702228253/security.o: ../../../../../Microchip/Transceivers/security.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/702228253/security.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/702228253 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/702228253/security.o   ../../../../../Microchip/Transceivers/security.c  > ${OBJECTDIR}/_ext/702228253/security.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/702228253/security.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/702228253/security.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/702228253/security.o.temp ../../../../../Microchip/Transceivers/security.c __temp_cpp_output__ -D __18F87J11 -D __18CXX -I C:\\DevSource\\App\ Libs\ v2011-06\\Microchip\\Include -I C:\\DevSource\\App\ Libs\ v2011-06\\MiWi\ DE\ Demo\\Basic\ Demos\\Feature\ Demo\\Node\ 2 -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F87J11
	printf "%s/" ${OBJECTDIR}/_ext/702228253 > ${OBJECTDIR}/_ext/702228253/security.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/702228253/security.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/702228253/security.o.d
else
	cat ${OBJECTDIR}/_ext/702228253/security.o.temp >> ${OBJECTDIR}/_ext/702228253/security.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1994828495/EEPROM.o: ../../../../../Microchip/WirelessProtocols/EEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1994828495/EEPROM.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1994828495 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1994828495/EEPROM.o   ../../../../../Microchip/WirelessProtocols/EEPROM.c  > ${OBJECTDIR}/_ext/1994828495/EEPROM.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1994828495/EEPROM.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1994828495/EEPROM.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1994828495/EEPROM.o.temp ../../../../../Microchip/WirelessProtocols/EEPROM.c __temp_cpp_output__ -D __18F87J11 -D __18CXX -I C:\\DevSource\\App\ Libs\ v2011-06\\Microchip\\Include -I C:\\DevSource\\App\ Libs\ v2011-06\\MiWi\ DE\ Demo\\Basic\ Demos\\Feature\ Demo\\Node\ 2 -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F87J11
	printf "%s/" ${OBJECTDIR}/_ext/1994828495 > ${OBJECTDIR}/_ext/1994828495/EEPROM.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1994828495/EEPROM.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1994828495/EEPROM.o.d
else
	cat ${OBJECTDIR}/_ext/1994828495/EEPROM.o.temp >> ${OBJECTDIR}/_ext/1994828495/EEPROM.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1994828495/LCDBlocking.o: ../../../../../Microchip/WirelessProtocols/LCDBlocking.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1994828495 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o   ../../../../../Microchip/WirelessProtocols/LCDBlocking.c  > ${OBJECTDIR}/_ext/1994828495/LCDBlocking.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1994828495/LCDBlocking.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1994828495/LCDBlocking.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.temp ../../../../../Microchip/WirelessProtocols/LCDBlocking.c __temp_cpp_output__ -D __18F87J11 -D __18CXX -I C:\\DevSource\\App\ Libs\ v2011-06\\Microchip\\Include -I C:\\DevSource\\App\ Libs\ v2011-06\\MiWi\ DE\ Demo\\Basic\ Demos\\Feature\ Demo\\Node\ 2 -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F87J11
	printf "%s/" ${OBJECTDIR}/_ext/1994828495 > ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.d
else
	cat ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.temp >> ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/257748679/TimeDelay.o: ../../../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/257748679/TimeDelay.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/257748679 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/257748679/TimeDelay.o   ../../../../../Microchip/Common/TimeDelay.c  > ${OBJECTDIR}/_ext/257748679/TimeDelay.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/257748679/TimeDelay.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/257748679/TimeDelay.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/257748679/TimeDelay.o.temp ../../../../../Microchip/Common/TimeDelay.c __temp_cpp_output__ -D __18F87J11 -D __18CXX -I C:\\DevSource\\App\ Libs\ v2011-06\\Microchip\\Include -I C:\\DevSource\\App\ Libs\ v2011-06\\MiWi\ DE\ Demo\\Basic\ Demos\\Feature\ Demo\\Node\ 2 -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F87J11
	printf "%s/" ${OBJECTDIR}/_ext/257748679 > ${OBJECTDIR}/_ext/257748679/TimeDelay.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/257748679/TimeDelay.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/257748679/TimeDelay.o.d
else
	cat ${OBJECTDIR}/_ext/257748679/TimeDelay.o.temp >> ${OBJECTDIR}/_ext/257748679/TimeDelay.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/702228253/crc.o: ../../../../../Microchip/Transceivers/crc.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/702228253/crc.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/702228253 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/702228253/crc.o   ../../../../../Microchip/Transceivers/crc.c  > ${OBJECTDIR}/_ext/702228253/crc.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/702228253/crc.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/702228253/crc.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/702228253/crc.o.temp ../../../../../Microchip/Transceivers/crc.c __temp_cpp_output__ -D __18F87J11 -D __18CXX -I C:\\DevSource\\App\ Libs\ v2011-06\\Microchip\\Include -I C:\\DevSource\\App\ Libs\ v2011-06\\MiWi\ DE\ Demo\\Basic\ Demos\\Feature\ Demo\\Node\ 2 -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F87J11
	printf "%s/" ${OBJECTDIR}/_ext/702228253 > ${OBJECTDIR}/_ext/702228253/crc.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/702228253/crc.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/702228253/crc.o.d
else
	cat ${OBJECTDIR}/_ext/702228253/crc.o.temp >> ${OBJECTDIR}/_ext/702228253/crc.o.d
endif
	${RM} __temp_cpp_output__
else
${OBJECTDIR}/_ext/1472/HardwareProfile.o: ../HardwareProfile.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1472/HardwareProfile.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/HardwareProfile.o   ../HardwareProfile.c  > ${OBJECTDIR}/_ext/1472/HardwareProfile.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1472/HardwareProfile.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1472/HardwareProfile.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1472/HardwareProfile.o.temp ../HardwareProfile.c __temp_cpp_output__ -D __18F87J11 -D __18CXX -I C:\\DevSource\\App\ Libs\ v2011-06\\Microchip\\Include -I C:\\DevSource\\App\ Libs\ v2011-06\\MiWi\ DE\ Demo\\Basic\ Demos\\Feature\ Demo\\Node\ 2 -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F87J11
	printf "%s/" ${OBJECTDIR}/_ext/1472 > ${OBJECTDIR}/_ext/1472/HardwareProfile.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1472/HardwareProfile.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1472/HardwareProfile.o.d
else
	cat ${OBJECTDIR}/_ext/1472/HardwareProfile.o.temp >> ${OBJECTDIR}/_ext/1472/HardwareProfile.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1994828495/SymbolTime.o: ../../../../../Microchip/WirelessProtocols/SymbolTime.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1994828495/SymbolTime.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1994828495 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1994828495/SymbolTime.o   ../../../../../Microchip/WirelessProtocols/SymbolTime.c  > ${OBJECTDIR}/_ext/1994828495/SymbolTime.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1994828495/SymbolTime.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1994828495/SymbolTime.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1994828495/SymbolTime.o.temp ../../../../../Microchip/WirelessProtocols/SymbolTime.c __temp_cpp_output__ -D __18F87J11 -D __18CXX -I C:\\DevSource\\App\ Libs\ v2011-06\\Microchip\\Include -I C:\\DevSource\\App\ Libs\ v2011-06\\MiWi\ DE\ Demo\\Basic\ Demos\\Feature\ Demo\\Node\ 2 -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F87J11
	printf "%s/" ${OBJECTDIR}/_ext/1994828495 > ${OBJECTDIR}/_ext/1994828495/SymbolTime.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1994828495/SymbolTime.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1994828495/SymbolTime.o.d
else
	cat ${OBJECTDIR}/_ext/1994828495/SymbolTime.o.temp >> ${OBJECTDIR}/_ext/1994828495/SymbolTime.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1472/FeatureDemoNode2.o: ../FeatureDemoNode2.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1472/FeatureDemoNode2.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/FeatureDemoNode2.o   ../FeatureDemoNode2.c  > ${OBJECTDIR}/_ext/1472/FeatureDemoNode2.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1472/FeatureDemoNode2.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1472/FeatureDemoNode2.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1472/FeatureDemoNode2.o.temp ../FeatureDemoNode2.c __temp_cpp_output__ -D __18F87J11 -D __18CXX -I C:\\DevSource\\App\ Libs\ v2011-06\\Microchip\\Include -I C:\\DevSource\\App\ Libs\ v2011-06\\MiWi\ DE\ Demo\\Basic\ Demos\\Feature\ Demo\\Node\ 2 -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F87J11
	printf "%s/" ${OBJECTDIR}/_ext/1472 > ${OBJECTDIR}/_ext/1472/FeatureDemoNode2.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1472/FeatureDemoNode2.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1472/FeatureDemoNode2.o.d
else
	cat ${OBJECTDIR}/_ext/1472/FeatureDemoNode2.o.temp >> ${OBJECTDIR}/_ext/1472/FeatureDemoNode2.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/2087253717/MRF24J40.o: ../../../../../Microchip/Transceivers/MRF24J40/MRF24J40.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/2087253717/MRF24J40.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/2087253717 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/2087253717/MRF24J40.o   ../../../../../Microchip/Transceivers/MRF24J40/MRF24J40.c  > ${OBJECTDIR}/_ext/2087253717/MRF24J40.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/2087253717/MRF24J40.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/2087253717/MRF24J40.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/2087253717/MRF24J40.o.temp ../../../../../Microchip/Transceivers/MRF24J40/MRF24J40.c __temp_cpp_output__ -D __18F87J11 -D __18CXX -I C:\\DevSource\\App\ Libs\ v2011-06\\Microchip\\Include -I C:\\DevSource\\App\ Libs\ v2011-06\\MiWi\ DE\ Demo\\Basic\ Demos\\Feature\ Demo\\Node\ 2 -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F87J11
	printf "%s/" ${OBJECTDIR}/_ext/2087253717 > ${OBJECTDIR}/_ext/2087253717/MRF24J40.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/2087253717/MRF24J40.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/2087253717/MRF24J40.o.d
else
	cat ${OBJECTDIR}/_ext/2087253717/MRF24J40.o.temp >> ${OBJECTDIR}/_ext/2087253717/MRF24J40.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1994828495/NVM.o: ../../../../../Microchip/WirelessProtocols/NVM.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1994828495/NVM.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1994828495 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1994828495/NVM.o   ../../../../../Microchip/WirelessProtocols/NVM.c  > ${OBJECTDIR}/_ext/1994828495/NVM.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1994828495/NVM.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1994828495/NVM.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1994828495/NVM.o.temp ../../../../../Microchip/WirelessProtocols/NVM.c __temp_cpp_output__ -D __18F87J11 -D __18CXX -I C:\\DevSource\\App\ Libs\ v2011-06\\Microchip\\Include -I C:\\DevSource\\App\ Libs\ v2011-06\\MiWi\ DE\ Demo\\Basic\ Demos\\Feature\ Demo\\Node\ 2 -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F87J11
	printf "%s/" ${OBJECTDIR}/_ext/1994828495 > ${OBJECTDIR}/_ext/1994828495/NVM.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1994828495/NVM.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1994828495/NVM.o.d
else
	cat ${OBJECTDIR}/_ext/1994828495/NVM.o.temp >> ${OBJECTDIR}/_ext/1994828495/NVM.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1688839406/MiWi.o: ../../../../../Microchip/WirelessProtocols/MiWi/MiWi.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1688839406/MiWi.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1688839406 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1688839406/MiWi.o   ../../../../../Microchip/WirelessProtocols/MiWi/MiWi.c  > ${OBJECTDIR}/_ext/1688839406/MiWi.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1688839406/MiWi.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1688839406/MiWi.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1688839406/MiWi.o.temp ../../../../../Microchip/WirelessProtocols/MiWi/MiWi.c __temp_cpp_output__ -D __18F87J11 -D __18CXX -I C:\\DevSource\\App\ Libs\ v2011-06\\Microchip\\Include -I C:\\DevSource\\App\ Libs\ v2011-06\\MiWi\ DE\ Demo\\Basic\ Demos\\Feature\ Demo\\Node\ 2 -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F87J11
	printf "%s/" ${OBJECTDIR}/_ext/1688839406 > ${OBJECTDIR}/_ext/1688839406/MiWi.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1688839406/MiWi.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1688839406/MiWi.o.d
else
	cat ${OBJECTDIR}/_ext/1688839406/MiWi.o.temp >> ${OBJECTDIR}/_ext/1688839406/MiWi.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/486674567/MRF89XA.o: ../../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/486674567/MRF89XA.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/486674567 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/486674567/MRF89XA.o   ../../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c  > ${OBJECTDIR}/_ext/486674567/MRF89XA.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/486674567/MRF89XA.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/486674567/MRF89XA.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/486674567/MRF89XA.o.temp ../../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c __temp_cpp_output__ -D __18F87J11 -D __18CXX -I C:\\DevSource\\App\ Libs\ v2011-06\\Microchip\\Include -I C:\\DevSource\\App\ Libs\ v2011-06\\MiWi\ DE\ Demo\\Basic\ Demos\\Feature\ Demo\\Node\ 2 -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F87J11
	printf "%s/" ${OBJECTDIR}/_ext/486674567 > ${OBJECTDIR}/_ext/486674567/MRF89XA.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/486674567/MRF89XA.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/486674567/MRF89XA.o.d
else
	cat ${OBJECTDIR}/_ext/486674567/MRF89XA.o.temp >> ${OBJECTDIR}/_ext/486674567/MRF89XA.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1994828495/Console.o: ../../../../../Microchip/WirelessProtocols/Console.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1994828495/Console.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1994828495 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1994828495/Console.o   ../../../../../Microchip/WirelessProtocols/Console.c  > ${OBJECTDIR}/_ext/1994828495/Console.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1994828495/Console.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1994828495/Console.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1994828495/Console.o.temp ../../../../../Microchip/WirelessProtocols/Console.c __temp_cpp_output__ -D __18F87J11 -D __18CXX -I C:\\DevSource\\App\ Libs\ v2011-06\\Microchip\\Include -I C:\\DevSource\\App\ Libs\ v2011-06\\MiWi\ DE\ Demo\\Basic\ Demos\\Feature\ Demo\\Node\ 2 -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F87J11
	printf "%s/" ${OBJECTDIR}/_ext/1994828495 > ${OBJECTDIR}/_ext/1994828495/Console.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1994828495/Console.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1994828495/Console.o.d
else
	cat ${OBJECTDIR}/_ext/1994828495/Console.o.temp >> ${OBJECTDIR}/_ext/1994828495/Console.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/486793731/MRF49XA.o: ../../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/486793731/MRF49XA.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/486793731 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/486793731/MRF49XA.o   ../../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c  > ${OBJECTDIR}/_ext/486793731/MRF49XA.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/486793731/MRF49XA.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/486793731/MRF49XA.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/486793731/MRF49XA.o.temp ../../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c __temp_cpp_output__ -D __18F87J11 -D __18CXX -I C:\\DevSource\\App\ Libs\ v2011-06\\Microchip\\Include -I C:\\DevSource\\App\ Libs\ v2011-06\\MiWi\ DE\ Demo\\Basic\ Demos\\Feature\ Demo\\Node\ 2 -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F87J11
	printf "%s/" ${OBJECTDIR}/_ext/486793731 > ${OBJECTDIR}/_ext/486793731/MRF49XA.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/486793731/MRF49XA.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/486793731/MRF49XA.o.d
else
	cat ${OBJECTDIR}/_ext/486793731/MRF49XA.o.temp >> ${OBJECTDIR}/_ext/486793731/MRF49XA.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/967918303/MiWiPRO.o: ../../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/967918303/MiWiPRO.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/967918303 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/967918303/MiWiPRO.o   ../../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c  > ${OBJECTDIR}/_ext/967918303/MiWiPRO.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/967918303/MiWiPRO.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/967918303/MiWiPRO.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/967918303/MiWiPRO.o.temp ../../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c __temp_cpp_output__ -D __18F87J11 -D __18CXX -I C:\\DevSource\\App\ Libs\ v2011-06\\Microchip\\Include -I C:\\DevSource\\App\ Libs\ v2011-06\\MiWi\ DE\ Demo\\Basic\ Demos\\Feature\ Demo\\Node\ 2 -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F87J11
	printf "%s/" ${OBJECTDIR}/_ext/967918303 > ${OBJECTDIR}/_ext/967918303/MiWiPRO.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/967918303/MiWiPRO.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/967918303/MiWiPRO.o.d
else
	cat ${OBJECTDIR}/_ext/967918303/MiWiPRO.o.temp >> ${OBJECTDIR}/_ext/967918303/MiWiPRO.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/84067474/P2P.o: ../../../../../Microchip/WirelessProtocols/P2P/P2P.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/84067474/P2P.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/84067474 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/84067474/P2P.o   ../../../../../Microchip/WirelessProtocols/P2P/P2P.c  > ${OBJECTDIR}/_ext/84067474/P2P.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/84067474/P2P.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/84067474/P2P.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/84067474/P2P.o.temp ../../../../../Microchip/WirelessProtocols/P2P/P2P.c __temp_cpp_output__ -D __18F87J11 -D __18CXX -I C:\\DevSource\\App\ Libs\ v2011-06\\Microchip\\Include -I C:\\DevSource\\App\ Libs\ v2011-06\\MiWi\ DE\ Demo\\Basic\ Demos\\Feature\ Demo\\Node\ 2 -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F87J11
	printf "%s/" ${OBJECTDIR}/_ext/84067474 > ${OBJECTDIR}/_ext/84067474/P2P.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/84067474/P2P.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/84067474/P2P.o.d
else
	cat ${OBJECTDIR}/_ext/84067474/P2P.o.temp >> ${OBJECTDIR}/_ext/84067474/P2P.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1994828495/MSPI.o: ../../../../../Microchip/WirelessProtocols/MSPI.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1994828495/MSPI.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1994828495 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1994828495/MSPI.o   ../../../../../Microchip/WirelessProtocols/MSPI.c  > ${OBJECTDIR}/_ext/1994828495/MSPI.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1994828495/MSPI.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1994828495/MSPI.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1994828495/MSPI.o.temp ../../../../../Microchip/WirelessProtocols/MSPI.c __temp_cpp_output__ -D __18F87J11 -D __18CXX -I C:\\DevSource\\App\ Libs\ v2011-06\\Microchip\\Include -I C:\\DevSource\\App\ Libs\ v2011-06\\MiWi\ DE\ Demo\\Basic\ Demos\\Feature\ Demo\\Node\ 2 -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F87J11
	printf "%s/" ${OBJECTDIR}/_ext/1994828495 > ${OBJECTDIR}/_ext/1994828495/MSPI.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1994828495/MSPI.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1994828495/MSPI.o.d
else
	cat ${OBJECTDIR}/_ext/1994828495/MSPI.o.temp >> ${OBJECTDIR}/_ext/1994828495/MSPI.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/702228253/security.o: ../../../../../Microchip/Transceivers/security.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/702228253/security.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/702228253 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/702228253/security.o   ../../../../../Microchip/Transceivers/security.c  > ${OBJECTDIR}/_ext/702228253/security.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/702228253/security.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/702228253/security.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/702228253/security.o.temp ../../../../../Microchip/Transceivers/security.c __temp_cpp_output__ -D __18F87J11 -D __18CXX -I C:\\DevSource\\App\ Libs\ v2011-06\\Microchip\\Include -I C:\\DevSource\\App\ Libs\ v2011-06\\MiWi\ DE\ Demo\\Basic\ Demos\\Feature\ Demo\\Node\ 2 -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F87J11
	printf "%s/" ${OBJECTDIR}/_ext/702228253 > ${OBJECTDIR}/_ext/702228253/security.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/702228253/security.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/702228253/security.o.d
else
	cat ${OBJECTDIR}/_ext/702228253/security.o.temp >> ${OBJECTDIR}/_ext/702228253/security.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1994828495/EEPROM.o: ../../../../../Microchip/WirelessProtocols/EEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1994828495/EEPROM.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1994828495 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1994828495/EEPROM.o   ../../../../../Microchip/WirelessProtocols/EEPROM.c  > ${OBJECTDIR}/_ext/1994828495/EEPROM.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1994828495/EEPROM.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1994828495/EEPROM.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1994828495/EEPROM.o.temp ../../../../../Microchip/WirelessProtocols/EEPROM.c __temp_cpp_output__ -D __18F87J11 -D __18CXX -I C:\\DevSource\\App\ Libs\ v2011-06\\Microchip\\Include -I C:\\DevSource\\App\ Libs\ v2011-06\\MiWi\ DE\ Demo\\Basic\ Demos\\Feature\ Demo\\Node\ 2 -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F87J11
	printf "%s/" ${OBJECTDIR}/_ext/1994828495 > ${OBJECTDIR}/_ext/1994828495/EEPROM.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1994828495/EEPROM.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1994828495/EEPROM.o.d
else
	cat ${OBJECTDIR}/_ext/1994828495/EEPROM.o.temp >> ${OBJECTDIR}/_ext/1994828495/EEPROM.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1994828495/LCDBlocking.o: ../../../../../Microchip/WirelessProtocols/LCDBlocking.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1994828495 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o   ../../../../../Microchip/WirelessProtocols/LCDBlocking.c  > ${OBJECTDIR}/_ext/1994828495/LCDBlocking.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1994828495/LCDBlocking.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1994828495/LCDBlocking.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.temp ../../../../../Microchip/WirelessProtocols/LCDBlocking.c __temp_cpp_output__ -D __18F87J11 -D __18CXX -I C:\\DevSource\\App\ Libs\ v2011-06\\Microchip\\Include -I C:\\DevSource\\App\ Libs\ v2011-06\\MiWi\ DE\ Demo\\Basic\ Demos\\Feature\ Demo\\Node\ 2 -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F87J11
	printf "%s/" ${OBJECTDIR}/_ext/1994828495 > ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.d
else
	cat ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.temp >> ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/257748679/TimeDelay.o: ../../../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/257748679/TimeDelay.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/257748679 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/257748679/TimeDelay.o   ../../../../../Microchip/Common/TimeDelay.c  > ${OBJECTDIR}/_ext/257748679/TimeDelay.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/257748679/TimeDelay.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/257748679/TimeDelay.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/257748679/TimeDelay.o.temp ../../../../../Microchip/Common/TimeDelay.c __temp_cpp_output__ -D __18F87J11 -D __18CXX -I C:\\DevSource\\App\ Libs\ v2011-06\\Microchip\\Include -I C:\\DevSource\\App\ Libs\ v2011-06\\MiWi\ DE\ Demo\\Basic\ Demos\\Feature\ Demo\\Node\ 2 -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F87J11
	printf "%s/" ${OBJECTDIR}/_ext/257748679 > ${OBJECTDIR}/_ext/257748679/TimeDelay.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/257748679/TimeDelay.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/257748679/TimeDelay.o.d
else
	cat ${OBJECTDIR}/_ext/257748679/TimeDelay.o.temp >> ${OBJECTDIR}/_ext/257748679/TimeDelay.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/702228253/crc.o: ../../../../../Microchip/Transceivers/crc.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/702228253/crc.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/702228253 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/702228253/crc.o   ../../../../../Microchip/Transceivers/crc.c  > ${OBJECTDIR}/_ext/702228253/crc.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/702228253/crc.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/702228253/crc.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/702228253/crc.o.temp ../../../../../Microchip/Transceivers/crc.c __temp_cpp_output__ -D __18F87J11 -D __18CXX -I C:\\DevSource\\App\ Libs\ v2011-06\\Microchip\\Include -I C:\\DevSource\\App\ Libs\ v2011-06\\MiWi\ DE\ Demo\\Basic\ Demos\\Feature\ Demo\\Node\ 2 -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F87J11
	printf "%s/" ${OBJECTDIR}/_ext/702228253 > ${OBJECTDIR}/_ext/702228253/crc.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/702228253/crc.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/702228253/crc.o.d
else
	cat ${OBJECTDIR}/_ext/702228253/crc.o.temp >> ${OBJECTDIR}/_ext/702228253/crc.o.d
endif
	${RM} __temp_cpp_output__
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.cof: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE)   -p$(MP_PROCESSOR_OPTION_LD)  -w -x  -u_EXTENDEDMODE -z__MPLAB_BUILD=1  -u_CRUNTIME -z__MPLAB_DEBUG=1 -z__MPLAB_DEBUGGER_REAL_ICE=1 $(MP_LINKER_DEBUG_OPTION) -l ${MP_CC_DIR}\\..\\lib  -odist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.cof ${OBJECTFILES}      
else
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.cof: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE)   -p$(MP_PROCESSOR_OPTION_LD)  -w   -u_EXTENDEDMODE -z__MPLAB_BUILD=1  -u_CRUNTIME -l ${MP_CC_DIR}\\..\\lib  -odist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.cof ${OBJECTFILES}      
endif


# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf:
	${RM} -r build/PICDEM_Z
	${RM} -r dist/PICDEM_Z

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
