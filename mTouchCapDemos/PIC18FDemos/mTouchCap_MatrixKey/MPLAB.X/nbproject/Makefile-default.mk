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
CND_CONF=default

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
OBJECTFILES=${OBJECTDIR}/_ext/274675202/mTouchCap_Timers.o ${OBJECTDIR}/_ext/1472/mTouchCap_PIC18F_MatrixKeyDemo.o ${OBJECTDIR}/_ext/274675202/mTouchCap_PIC18_CTMU_Physical.o ${OBJECTDIR}/_ext/1907416406/Display.o ${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.o ${OBJECTDIR}/_ext/1907416406/mTouchCap_MatrixKeys.o ${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.o


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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.cof

MP_PROCESSOR_OPTION=18F46J50
MP_PROCESSOR_OPTION_LD=18f46j50
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
${OBJECTDIR}/_ext/274675202/mTouchCap_Timers.o: ../../../../Microchip/mTouchCap/PIC18F_PIC24F\ CTMU\ Library/mTouchCap_Timers.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/274675202/mTouchCap_Timers.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/274675202 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -I"../../mTouchCap_AppCommonFiles" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -I"../../../../Microchip/Include" -I".." -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/274675202/mTouchCap_Timers.o   ../../../../Microchip/mTouchCap/PIC18F_PIC24F\ CTMU\ Library/mTouchCap_Timers.c  > ${OBJECTDIR}/_ext/274675202/mTouchCap_Timers.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/274675202/mTouchCap_Timers.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/274675202/mTouchCap_Timers.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/274675202/mTouchCap_Timers.o.temp ../../../../Microchip/mTouchCap/PIC18F_PIC24F\ CTMU\ Library/mTouchCap_Timers.c __temp_cpp_output__ -D __18F46J50 -D __18CXX -I C:\\Microchip\ Solutions\\mTouchCapDemos\\PIC18FDemos\\mTouchCap_AppCommonFiles -I C:\\Microchip\ Solutions\\Microchip\\Include\\mTouchCap\\PIC18F_PIC24F\ CTMU\ Library -I C:\\Microchip\ Solutions\\Microchip\\Include -I C:\\Microchip\ Solutions\\mTouchCapDemos\\PIC18FDemos\\mTouchCap_MatrixKey -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F46J50
	printf "%s/" ${OBJECTDIR}/_ext/274675202 > ${OBJECTDIR}/_ext/274675202/mTouchCap_Timers.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/274675202/mTouchCap_Timers.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/274675202/mTouchCap_Timers.o.d
else
	cat ${OBJECTDIR}/_ext/274675202/mTouchCap_Timers.o.temp >> ${OBJECTDIR}/_ext/274675202/mTouchCap_Timers.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1472/mTouchCap_PIC18F_MatrixKeyDemo.o: ../mTouchCap_PIC18F_MatrixKeyDemo.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC18F_MatrixKeyDemo.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -I"../../mTouchCap_AppCommonFiles" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -I"../../../../Microchip/Include" -I".." -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/mTouchCap_PIC18F_MatrixKeyDemo.o   ../mTouchCap_PIC18F_MatrixKeyDemo.c  > ${OBJECTDIR}/_ext/1472/mTouchCap_PIC18F_MatrixKeyDemo.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1472/mTouchCap_PIC18F_MatrixKeyDemo.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1472/mTouchCap_PIC18F_MatrixKeyDemo.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1472/mTouchCap_PIC18F_MatrixKeyDemo.o.temp ../mTouchCap_PIC18F_MatrixKeyDemo.c __temp_cpp_output__ -D __18F46J50 -D __18CXX -I C:\\Microchip\ Solutions\\mTouchCapDemos\\PIC18FDemos\\mTouchCap_AppCommonFiles -I C:\\Microchip\ Solutions\\Microchip\\Include\\mTouchCap\\PIC18F_PIC24F\ CTMU\ Library -I C:\\Microchip\ Solutions\\Microchip\\Include -I C:\\Microchip\ Solutions\\mTouchCapDemos\\PIC18FDemos\\mTouchCap_MatrixKey -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F46J50
	printf "%s/" ${OBJECTDIR}/_ext/1472 > ${OBJECTDIR}/_ext/1472/mTouchCap_PIC18F_MatrixKeyDemo.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1472/mTouchCap_PIC18F_MatrixKeyDemo.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1472/mTouchCap_PIC18F_MatrixKeyDemo.o.d
else
	cat ${OBJECTDIR}/_ext/1472/mTouchCap_PIC18F_MatrixKeyDemo.o.temp >> ${OBJECTDIR}/_ext/1472/mTouchCap_PIC18F_MatrixKeyDemo.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/274675202/mTouchCap_PIC18_CTMU_Physical.o: ../../../../Microchip/mTouchCap/PIC18F_PIC24F\ CTMU\ Library/mTouchCap_PIC18_CTMU_Physical.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/274675202/mTouchCap_PIC18_CTMU_Physical.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/274675202 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -I"../../mTouchCap_AppCommonFiles" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -I"../../../../Microchip/Include" -I".." -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/274675202/mTouchCap_PIC18_CTMU_Physical.o   ../../../../Microchip/mTouchCap/PIC18F_PIC24F\ CTMU\ Library/mTouchCap_PIC18_CTMU_Physical.c  > ${OBJECTDIR}/_ext/274675202/mTouchCap_PIC18_CTMU_Physical.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/274675202/mTouchCap_PIC18_CTMU_Physical.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/274675202/mTouchCap_PIC18_CTMU_Physical.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/274675202/mTouchCap_PIC18_CTMU_Physical.o.temp ../../../../Microchip/mTouchCap/PIC18F_PIC24F\ CTMU\ Library/mTouchCap_PIC18_CTMU_Physical.c __temp_cpp_output__ -D __18F46J50 -D __18CXX -I C:\\Microchip\ Solutions\\mTouchCapDemos\\PIC18FDemos\\mTouchCap_AppCommonFiles -I C:\\Microchip\ Solutions\\Microchip\\Include\\mTouchCap\\PIC18F_PIC24F\ CTMU\ Library -I C:\\Microchip\ Solutions\\Microchip\\Include -I C:\\Microchip\ Solutions\\mTouchCapDemos\\PIC18FDemos\\mTouchCap_MatrixKey -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F46J50
	printf "%s/" ${OBJECTDIR}/_ext/274675202 > ${OBJECTDIR}/_ext/274675202/mTouchCap_PIC18_CTMU_Physical.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/274675202/mTouchCap_PIC18_CTMU_Physical.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/274675202/mTouchCap_PIC18_CTMU_Physical.o.d
else
	cat ${OBJECTDIR}/_ext/274675202/mTouchCap_PIC18_CTMU_Physical.o.temp >> ${OBJECTDIR}/_ext/274675202/mTouchCap_PIC18_CTMU_Physical.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1907416406/Display.o: ../../mTouchCap_AppCommonFiles/Display.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1907416406/Display.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1907416406 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -I"../../mTouchCap_AppCommonFiles" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -I"../../../../Microchip/Include" -I".." -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1907416406/Display.o   ../../mTouchCap_AppCommonFiles/Display.c  > ${OBJECTDIR}/_ext/1907416406/Display.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1907416406/Display.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1907416406/Display.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1907416406/Display.o.temp ../../mTouchCap_AppCommonFiles/Display.c __temp_cpp_output__ -D __18F46J50 -D __18CXX -I C:\\Microchip\ Solutions\\mTouchCapDemos\\PIC18FDemos\\mTouchCap_AppCommonFiles -I C:\\Microchip\ Solutions\\Microchip\\Include\\mTouchCap\\PIC18F_PIC24F\ CTMU\ Library -I C:\\Microchip\ Solutions\\Microchip\\Include -I C:\\Microchip\ Solutions\\mTouchCapDemos\\PIC18FDemos\\mTouchCap_MatrixKey -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F46J50
	printf "%s/" ${OBJECTDIR}/_ext/1907416406 > ${OBJECTDIR}/_ext/1907416406/Display.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1907416406/Display.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1907416406/Display.o.d
else
	cat ${OBJECTDIR}/_ext/1907416406/Display.o.temp >> ${OBJECTDIR}/_ext/1907416406/Display.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.o: ../../../../Microchip/mTouchCap/PIC18F_PIC24F\ CTMU\ Library/mTouchCap_Adc.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/274675202 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -I"../../mTouchCap_AppCommonFiles" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -I"../../../../Microchip/Include" -I".." -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.o   ../../../../Microchip/mTouchCap/PIC18F_PIC24F\ CTMU\ Library/mTouchCap_Adc.c  > ${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.o.temp ../../../../Microchip/mTouchCap/PIC18F_PIC24F\ CTMU\ Library/mTouchCap_Adc.c __temp_cpp_output__ -D __18F46J50 -D __18CXX -I C:\\Microchip\ Solutions\\mTouchCapDemos\\PIC18FDemos\\mTouchCap_AppCommonFiles -I C:\\Microchip\ Solutions\\Microchip\\Include\\mTouchCap\\PIC18F_PIC24F\ CTMU\ Library -I C:\\Microchip\ Solutions\\Microchip\\Include -I C:\\Microchip\ Solutions\\mTouchCapDemos\\PIC18FDemos\\mTouchCap_MatrixKey -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F46J50
	printf "%s/" ${OBJECTDIR}/_ext/274675202 > ${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.o.d
else
	cat ${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.o.temp >> ${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1907416406/mTouchCap_MatrixKeys.o: ../../mTouchCap_AppCommonFiles/mTouchCap_MatrixKeys.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1907416406/mTouchCap_MatrixKeys.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1907416406 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -I"../../mTouchCap_AppCommonFiles" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -I"../../../../Microchip/Include" -I".." -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1907416406/mTouchCap_MatrixKeys.o   ../../mTouchCap_AppCommonFiles/mTouchCap_MatrixKeys.c  > ${OBJECTDIR}/_ext/1907416406/mTouchCap_MatrixKeys.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1907416406/mTouchCap_MatrixKeys.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1907416406/mTouchCap_MatrixKeys.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1907416406/mTouchCap_MatrixKeys.o.temp ../../mTouchCap_AppCommonFiles/mTouchCap_MatrixKeys.c __temp_cpp_output__ -D __18F46J50 -D __18CXX -I C:\\Microchip\ Solutions\\mTouchCapDemos\\PIC18FDemos\\mTouchCap_AppCommonFiles -I C:\\Microchip\ Solutions\\Microchip\\Include\\mTouchCap\\PIC18F_PIC24F\ CTMU\ Library -I C:\\Microchip\ Solutions\\Microchip\\Include -I C:\\Microchip\ Solutions\\mTouchCapDemos\\PIC18FDemos\\mTouchCap_MatrixKey -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F46J50
	printf "%s/" ${OBJECTDIR}/_ext/1907416406 > ${OBJECTDIR}/_ext/1907416406/mTouchCap_MatrixKeys.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1907416406/mTouchCap_MatrixKeys.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1907416406/mTouchCap_MatrixKeys.o.d
else
	cat ${OBJECTDIR}/_ext/1907416406/mTouchCap_MatrixKeys.o.temp >> ${OBJECTDIR}/_ext/1907416406/mTouchCap_MatrixKeys.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.o: ../../../../Microchip/mTouchCap/PIC18F_PIC24F\ CTMU\ Library/mTouchCap_CtmuAPI.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/274675202 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -I"../../mTouchCap_AppCommonFiles" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -I"../../../../Microchip/Include" -I".." -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.o   ../../../../Microchip/mTouchCap/PIC18F_PIC24F\ CTMU\ Library/mTouchCap_CtmuAPI.c  > ${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.o.temp ../../../../Microchip/mTouchCap/PIC18F_PIC24F\ CTMU\ Library/mTouchCap_CtmuAPI.c __temp_cpp_output__ -D __18F46J50 -D __18CXX -I C:\\Microchip\ Solutions\\mTouchCapDemos\\PIC18FDemos\\mTouchCap_AppCommonFiles -I C:\\Microchip\ Solutions\\Microchip\\Include\\mTouchCap\\PIC18F_PIC24F\ CTMU\ Library -I C:\\Microchip\ Solutions\\Microchip\\Include -I C:\\Microchip\ Solutions\\mTouchCapDemos\\PIC18FDemos\\mTouchCap_MatrixKey -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F46J50
	printf "%s/" ${OBJECTDIR}/_ext/274675202 > ${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.o.d
else
	cat ${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.o.temp >> ${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.o.d
endif
	${RM} __temp_cpp_output__
else
${OBJECTDIR}/_ext/274675202/mTouchCap_Timers.o: ../../../../Microchip/mTouchCap/PIC18F_PIC24F\ CTMU\ Library/mTouchCap_Timers.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/274675202/mTouchCap_Timers.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/274675202 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"../../mTouchCap_AppCommonFiles" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -I"../../../../Microchip/Include" -I".." -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/274675202/mTouchCap_Timers.o   ../../../../Microchip/mTouchCap/PIC18F_PIC24F\ CTMU\ Library/mTouchCap_Timers.c  > ${OBJECTDIR}/_ext/274675202/mTouchCap_Timers.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/274675202/mTouchCap_Timers.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/274675202/mTouchCap_Timers.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/274675202/mTouchCap_Timers.o.temp ../../../../Microchip/mTouchCap/PIC18F_PIC24F\ CTMU\ Library/mTouchCap_Timers.c __temp_cpp_output__ -D __18F46J50 -D __18CXX -I C:\\Microchip\ Solutions\\mTouchCapDemos\\PIC18FDemos\\mTouchCap_AppCommonFiles -I C:\\Microchip\ Solutions\\Microchip\\Include\\mTouchCap\\PIC18F_PIC24F\ CTMU\ Library -I C:\\Microchip\ Solutions\\Microchip\\Include -I C:\\Microchip\ Solutions\\mTouchCapDemos\\PIC18FDemos\\mTouchCap_MatrixKey -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F46J50
	printf "%s/" ${OBJECTDIR}/_ext/274675202 > ${OBJECTDIR}/_ext/274675202/mTouchCap_Timers.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/274675202/mTouchCap_Timers.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/274675202/mTouchCap_Timers.o.d
else
	cat ${OBJECTDIR}/_ext/274675202/mTouchCap_Timers.o.temp >> ${OBJECTDIR}/_ext/274675202/mTouchCap_Timers.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1472/mTouchCap_PIC18F_MatrixKeyDemo.o: ../mTouchCap_PIC18F_MatrixKeyDemo.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC18F_MatrixKeyDemo.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"../../mTouchCap_AppCommonFiles" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -I"../../../../Microchip/Include" -I".." -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/mTouchCap_PIC18F_MatrixKeyDemo.o   ../mTouchCap_PIC18F_MatrixKeyDemo.c  > ${OBJECTDIR}/_ext/1472/mTouchCap_PIC18F_MatrixKeyDemo.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1472/mTouchCap_PIC18F_MatrixKeyDemo.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1472/mTouchCap_PIC18F_MatrixKeyDemo.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1472/mTouchCap_PIC18F_MatrixKeyDemo.o.temp ../mTouchCap_PIC18F_MatrixKeyDemo.c __temp_cpp_output__ -D __18F46J50 -D __18CXX -I C:\\Microchip\ Solutions\\mTouchCapDemos\\PIC18FDemos\\mTouchCap_AppCommonFiles -I C:\\Microchip\ Solutions\\Microchip\\Include\\mTouchCap\\PIC18F_PIC24F\ CTMU\ Library -I C:\\Microchip\ Solutions\\Microchip\\Include -I C:\\Microchip\ Solutions\\mTouchCapDemos\\PIC18FDemos\\mTouchCap_MatrixKey -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F46J50
	printf "%s/" ${OBJECTDIR}/_ext/1472 > ${OBJECTDIR}/_ext/1472/mTouchCap_PIC18F_MatrixKeyDemo.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1472/mTouchCap_PIC18F_MatrixKeyDemo.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1472/mTouchCap_PIC18F_MatrixKeyDemo.o.d
else
	cat ${OBJECTDIR}/_ext/1472/mTouchCap_PIC18F_MatrixKeyDemo.o.temp >> ${OBJECTDIR}/_ext/1472/mTouchCap_PIC18F_MatrixKeyDemo.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/274675202/mTouchCap_PIC18_CTMU_Physical.o: ../../../../Microchip/mTouchCap/PIC18F_PIC24F\ CTMU\ Library/mTouchCap_PIC18_CTMU_Physical.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/274675202/mTouchCap_PIC18_CTMU_Physical.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/274675202 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"../../mTouchCap_AppCommonFiles" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -I"../../../../Microchip/Include" -I".." -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/274675202/mTouchCap_PIC18_CTMU_Physical.o   ../../../../Microchip/mTouchCap/PIC18F_PIC24F\ CTMU\ Library/mTouchCap_PIC18_CTMU_Physical.c  > ${OBJECTDIR}/_ext/274675202/mTouchCap_PIC18_CTMU_Physical.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/274675202/mTouchCap_PIC18_CTMU_Physical.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/274675202/mTouchCap_PIC18_CTMU_Physical.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/274675202/mTouchCap_PIC18_CTMU_Physical.o.temp ../../../../Microchip/mTouchCap/PIC18F_PIC24F\ CTMU\ Library/mTouchCap_PIC18_CTMU_Physical.c __temp_cpp_output__ -D __18F46J50 -D __18CXX -I C:\\Microchip\ Solutions\\mTouchCapDemos\\PIC18FDemos\\mTouchCap_AppCommonFiles -I C:\\Microchip\ Solutions\\Microchip\\Include\\mTouchCap\\PIC18F_PIC24F\ CTMU\ Library -I C:\\Microchip\ Solutions\\Microchip\\Include -I C:\\Microchip\ Solutions\\mTouchCapDemos\\PIC18FDemos\\mTouchCap_MatrixKey -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F46J50
	printf "%s/" ${OBJECTDIR}/_ext/274675202 > ${OBJECTDIR}/_ext/274675202/mTouchCap_PIC18_CTMU_Physical.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/274675202/mTouchCap_PIC18_CTMU_Physical.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/274675202/mTouchCap_PIC18_CTMU_Physical.o.d
else
	cat ${OBJECTDIR}/_ext/274675202/mTouchCap_PIC18_CTMU_Physical.o.temp >> ${OBJECTDIR}/_ext/274675202/mTouchCap_PIC18_CTMU_Physical.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1907416406/Display.o: ../../mTouchCap_AppCommonFiles/Display.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1907416406/Display.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1907416406 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"../../mTouchCap_AppCommonFiles" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -I"../../../../Microchip/Include" -I".." -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1907416406/Display.o   ../../mTouchCap_AppCommonFiles/Display.c  > ${OBJECTDIR}/_ext/1907416406/Display.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1907416406/Display.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1907416406/Display.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1907416406/Display.o.temp ../../mTouchCap_AppCommonFiles/Display.c __temp_cpp_output__ -D __18F46J50 -D __18CXX -I C:\\Microchip\ Solutions\\mTouchCapDemos\\PIC18FDemos\\mTouchCap_AppCommonFiles -I C:\\Microchip\ Solutions\\Microchip\\Include\\mTouchCap\\PIC18F_PIC24F\ CTMU\ Library -I C:\\Microchip\ Solutions\\Microchip\\Include -I C:\\Microchip\ Solutions\\mTouchCapDemos\\PIC18FDemos\\mTouchCap_MatrixKey -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F46J50
	printf "%s/" ${OBJECTDIR}/_ext/1907416406 > ${OBJECTDIR}/_ext/1907416406/Display.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1907416406/Display.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1907416406/Display.o.d
else
	cat ${OBJECTDIR}/_ext/1907416406/Display.o.temp >> ${OBJECTDIR}/_ext/1907416406/Display.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.o: ../../../../Microchip/mTouchCap/PIC18F_PIC24F\ CTMU\ Library/mTouchCap_Adc.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/274675202 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"../../mTouchCap_AppCommonFiles" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -I"../../../../Microchip/Include" -I".." -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.o   ../../../../Microchip/mTouchCap/PIC18F_PIC24F\ CTMU\ Library/mTouchCap_Adc.c  > ${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.o.temp ../../../../Microchip/mTouchCap/PIC18F_PIC24F\ CTMU\ Library/mTouchCap_Adc.c __temp_cpp_output__ -D __18F46J50 -D __18CXX -I C:\\Microchip\ Solutions\\mTouchCapDemos\\PIC18FDemos\\mTouchCap_AppCommonFiles -I C:\\Microchip\ Solutions\\Microchip\\Include\\mTouchCap\\PIC18F_PIC24F\ CTMU\ Library -I C:\\Microchip\ Solutions\\Microchip\\Include -I C:\\Microchip\ Solutions\\mTouchCapDemos\\PIC18FDemos\\mTouchCap_MatrixKey -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F46J50
	printf "%s/" ${OBJECTDIR}/_ext/274675202 > ${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.o.d
else
	cat ${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.o.temp >> ${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1907416406/mTouchCap_MatrixKeys.o: ../../mTouchCap_AppCommonFiles/mTouchCap_MatrixKeys.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1907416406/mTouchCap_MatrixKeys.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1907416406 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"../../mTouchCap_AppCommonFiles" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -I"../../../../Microchip/Include" -I".." -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1907416406/mTouchCap_MatrixKeys.o   ../../mTouchCap_AppCommonFiles/mTouchCap_MatrixKeys.c  > ${OBJECTDIR}/_ext/1907416406/mTouchCap_MatrixKeys.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1907416406/mTouchCap_MatrixKeys.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1907416406/mTouchCap_MatrixKeys.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1907416406/mTouchCap_MatrixKeys.o.temp ../../mTouchCap_AppCommonFiles/mTouchCap_MatrixKeys.c __temp_cpp_output__ -D __18F46J50 -D __18CXX -I C:\\Microchip\ Solutions\\mTouchCapDemos\\PIC18FDemos\\mTouchCap_AppCommonFiles -I C:\\Microchip\ Solutions\\Microchip\\Include\\mTouchCap\\PIC18F_PIC24F\ CTMU\ Library -I C:\\Microchip\ Solutions\\Microchip\\Include -I C:\\Microchip\ Solutions\\mTouchCapDemos\\PIC18FDemos\\mTouchCap_MatrixKey -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F46J50
	printf "%s/" ${OBJECTDIR}/_ext/1907416406 > ${OBJECTDIR}/_ext/1907416406/mTouchCap_MatrixKeys.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1907416406/mTouchCap_MatrixKeys.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1907416406/mTouchCap_MatrixKeys.o.d
else
	cat ${OBJECTDIR}/_ext/1907416406/mTouchCap_MatrixKeys.o.temp >> ${OBJECTDIR}/_ext/1907416406/mTouchCap_MatrixKeys.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.o: ../../../../Microchip/mTouchCap/PIC18F_PIC24F\ CTMU\ Library/mTouchCap_CtmuAPI.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/274675202 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"../../mTouchCap_AppCommonFiles" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -I"../../../../Microchip/Include" -I".." -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.o   ../../../../Microchip/mTouchCap/PIC18F_PIC24F\ CTMU\ Library/mTouchCap_CtmuAPI.c  > ${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.o.temp ../../../../Microchip/mTouchCap/PIC18F_PIC24F\ CTMU\ Library/mTouchCap_CtmuAPI.c __temp_cpp_output__ -D __18F46J50 -D __18CXX -I C:\\Microchip\ Solutions\\mTouchCapDemos\\PIC18FDemos\\mTouchCap_AppCommonFiles -I C:\\Microchip\ Solutions\\Microchip\\Include\\mTouchCap\\PIC18F_PIC24F\ CTMU\ Library -I C:\\Microchip\ Solutions\\Microchip\\Include -I C:\\Microchip\ Solutions\\mTouchCapDemos\\PIC18FDemos\\mTouchCap_MatrixKey -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F46J50
	printf "%s/" ${OBJECTDIR}/_ext/274675202 > ${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.o.d
else
	cat ${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.o.temp >> ${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.o.d
endif
	${RM} __temp_cpp_output__
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.cof: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE)   -p$(MP_PROCESSOR_OPTION_LD)  -w -x -l"../../../../../Program Files/Microchip/mplabc18/v3.38/lib"  -z__MPLAB_BUILD=1  -u_CRUNTIME -z__MPLAB_DEBUG=1 -z__MPLAB_DEBUGGER_ICD3=1 $(MP_LINKER_DEBUG_OPTION) -l ${MP_CC_DIR}\\..\\lib  -odist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.cof ${OBJECTFILES}      
else
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.cof: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE)   -p$(MP_PROCESSOR_OPTION_LD)  -w  -l"../../../../../Program Files/Microchip/mplabc18/v3.38/lib"  -z__MPLAB_BUILD=1  -u_CRUNTIME -l ${MP_CC_DIR}\\..\\lib  -odist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.cof ${OBJECTFILES}      
endif


# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf:
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
