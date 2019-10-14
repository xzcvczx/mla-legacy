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
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Matrix_Button_Demo_PIC24F.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Matrix_Button_Demo_PIC24F.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1595192242/mTouchAcquistion.o ${OBJECTDIR}/_ext/1595192242/mTouchControl.o ${OBJECTDIR}/_ext/1595192242/mTouchMarixButton.o ${OBJECTDIR}/_ext/1595192242/mTouchSensor.o ${OBJECTDIR}/_ext/865876355/system.o ${OBJECTDIR}/_ext/1595192242/mTouchDebug.o "${OBJECTDIR}/_ext/1472/Matrix Button Demo Main.o"
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1595192242/mTouchAcquistion.o.d ${OBJECTDIR}/_ext/1595192242/mTouchControl.o.d ${OBJECTDIR}/_ext/1595192242/mTouchMarixButton.o.d ${OBJECTDIR}/_ext/1595192242/mTouchSensor.o.d ${OBJECTDIR}/_ext/865876355/system.o.d ${OBJECTDIR}/_ext/1595192242/mTouchDebug.o.d "${OBJECTDIR}/_ext/1472/Matrix Button Demo Main.o.d"

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1595192242/mTouchAcquistion.o ${OBJECTDIR}/_ext/1595192242/mTouchControl.o ${OBJECTDIR}/_ext/1595192242/mTouchMarixButton.o ${OBJECTDIR}/_ext/1595192242/mTouchSensor.o ${OBJECTDIR}/_ext/865876355/system.o ${OBJECTDIR}/_ext/1595192242/mTouchDebug.o ${OBJECTDIR}/_ext/1472/Matrix\ Button\ Demo\ Main.o


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
MP_CC="C:\Program Files\Microchip\mplabc30\v3.31\bin\pic30-gcc.exe"
# MP_BC is not defined
MP_AS="C:\Program Files\Microchip\mplabc30\v3.31\bin\pic30-as.exe"
MP_LD="C:\Program Files\Microchip\mplabc30\v3.31\bin\pic30-ld.exe"
MP_AR="C:\Program Files\Microchip\mplabc30\v3.31\bin\pic30-ar.exe"
DEP_GEN=${MP_JAVA_PATH}java -jar "C:/Program Files/Microchip/MPLABX/mplab_ide/mplab_ide/modules/../../bin/extractobjectdependencies.jar" 
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps
MP_CC_DIR="C:\Program Files\Microchip\mplabc30\v3.31\bin"
# MP_BC_DIR is not defined
MP_AS_DIR="C:\Program Files\Microchip\mplabc30\v3.31\bin"
MP_LD_DIR="C:\Program Files\Microchip\mplabc30\v3.31\bin"
MP_AR_DIR="C:\Program Files\Microchip\mplabc30\v3.31\bin"
# MP_BC_DIR is not defined

.build-conf:  ${BUILD_SUBPROJECTS}
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/Matrix_Button_Demo_PIC24F.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ128GB106
MP_LINKER_FILE_OPTION=,-Tp24FJ128GB106.gld
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
${OBJECTDIR}/_ext/1595192242/mTouchAcquistion.o: ../../../../Microchip/mTouchCap/PIC18F\ PIC24F\ Library/mTouchAcquistion.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1595192242 
	@${RM} ${OBJECTDIR}/_ext/1595192242/mTouchAcquistion.o.d 
	@${RM} ${OBJECTDIR}/_ext/1595192242/mTouchAcquistion.o.ok ${OBJECTDIR}/_ext/1595192242/mTouchAcquistion.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1595192242/mTouchAcquistion.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24F_mTouch_Eval_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -Os -MMD -MF "${OBJECTDIR}/_ext/1595192242/mTouchAcquistion.o.d" -o ${OBJECTDIR}/_ext/1595192242/mTouchAcquistion.o "../../../../Microchip/mTouchCap/PIC18F PIC24F Library/mTouchAcquistion.c"  
	
${OBJECTDIR}/_ext/1595192242/mTouchControl.o: ../../../../Microchip/mTouchCap/PIC18F\ PIC24F\ Library/mTouchControl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1595192242 
	@${RM} ${OBJECTDIR}/_ext/1595192242/mTouchControl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1595192242/mTouchControl.o.ok ${OBJECTDIR}/_ext/1595192242/mTouchControl.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1595192242/mTouchControl.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24F_mTouch_Eval_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -Os -MMD -MF "${OBJECTDIR}/_ext/1595192242/mTouchControl.o.d" -o ${OBJECTDIR}/_ext/1595192242/mTouchControl.o "../../../../Microchip/mTouchCap/PIC18F PIC24F Library/mTouchControl.c"  
	
${OBJECTDIR}/_ext/1595192242/mTouchMarixButton.o: ../../../../Microchip/mTouchCap/PIC18F\ PIC24F\ Library/mTouchMarixButton.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1595192242 
	@${RM} ${OBJECTDIR}/_ext/1595192242/mTouchMarixButton.o.d 
	@${RM} ${OBJECTDIR}/_ext/1595192242/mTouchMarixButton.o.ok ${OBJECTDIR}/_ext/1595192242/mTouchMarixButton.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1595192242/mTouchMarixButton.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24F_mTouch_Eval_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -Os -MMD -MF "${OBJECTDIR}/_ext/1595192242/mTouchMarixButton.o.d" -o ${OBJECTDIR}/_ext/1595192242/mTouchMarixButton.o "../../../../Microchip/mTouchCap/PIC18F PIC24F Library/mTouchMarixButton.c"  
	
${OBJECTDIR}/_ext/1595192242/mTouchSensor.o: ../../../../Microchip/mTouchCap/PIC18F\ PIC24F\ Library/mTouchSensor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1595192242 
	@${RM} ${OBJECTDIR}/_ext/1595192242/mTouchSensor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1595192242/mTouchSensor.o.ok ${OBJECTDIR}/_ext/1595192242/mTouchSensor.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1595192242/mTouchSensor.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24F_mTouch_Eval_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -Os -MMD -MF "${OBJECTDIR}/_ext/1595192242/mTouchSensor.o.d" -o ${OBJECTDIR}/_ext/1595192242/mTouchSensor.o "../../../../Microchip/mTouchCap/PIC18F PIC24F Library/mTouchSensor.c"  
	
${OBJECTDIR}/_ext/865876355/system.o: ../../Configurations/PIC24F_mTouch_Eval_Board/system.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/865876355 
	@${RM} ${OBJECTDIR}/_ext/865876355/system.o.d 
	@${RM} ${OBJECTDIR}/_ext/865876355/system.o.ok ${OBJECTDIR}/_ext/865876355/system.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/865876355/system.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24F_mTouch_Eval_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -Os -MMD -MF "${OBJECTDIR}/_ext/865876355/system.o.d" -o ${OBJECTDIR}/_ext/865876355/system.o ../../Configurations/PIC24F_mTouch_Eval_Board/system.c  
	
${OBJECTDIR}/_ext/1595192242/mTouchDebug.o: ../../../../Microchip/mTouchCap/PIC18F\ PIC24F\ Library/mTouchDebug.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1595192242 
	@${RM} ${OBJECTDIR}/_ext/1595192242/mTouchDebug.o.d 
	@${RM} ${OBJECTDIR}/_ext/1595192242/mTouchDebug.o.ok ${OBJECTDIR}/_ext/1595192242/mTouchDebug.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1595192242/mTouchDebug.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24F_mTouch_Eval_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -Os -MMD -MF "${OBJECTDIR}/_ext/1595192242/mTouchDebug.o.d" -o ${OBJECTDIR}/_ext/1595192242/mTouchDebug.o "../../../../Microchip/mTouchCap/PIC18F PIC24F Library/mTouchDebug.c"  
	
${OBJECTDIR}/_ext/1472/Matrix\ Button\ Demo\ Main.o: ../Matrix\ Button\ Demo\ Main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/Matrix\ Button\ Demo\ Main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Matrix\ Button\ Demo\ Main.o.ok ${OBJECTDIR}/_ext/1472/Matrix\ Button\ Demo\ Main.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/Matrix Button Demo Main.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24F_mTouch_Eval_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -Os -MMD -MF "${OBJECTDIR}/_ext/1472/Matrix Button Demo Main.o.d" -o "${OBJECTDIR}/_ext/1472/Matrix Button Demo Main.o" "../Matrix Button Demo Main.c"  
	
else
${OBJECTDIR}/_ext/1595192242/mTouchAcquistion.o: ../../../../Microchip/mTouchCap/PIC18F\ PIC24F\ Library/mTouchAcquistion.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1595192242 
	@${RM} ${OBJECTDIR}/_ext/1595192242/mTouchAcquistion.o.d 
	@${RM} ${OBJECTDIR}/_ext/1595192242/mTouchAcquistion.o.ok ${OBJECTDIR}/_ext/1595192242/mTouchAcquistion.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1595192242/mTouchAcquistion.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24F_mTouch_Eval_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -Os -MMD -MF "${OBJECTDIR}/_ext/1595192242/mTouchAcquistion.o.d" -o ${OBJECTDIR}/_ext/1595192242/mTouchAcquistion.o "../../../../Microchip/mTouchCap/PIC18F PIC24F Library/mTouchAcquistion.c"  
	
${OBJECTDIR}/_ext/1595192242/mTouchControl.o: ../../../../Microchip/mTouchCap/PIC18F\ PIC24F\ Library/mTouchControl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1595192242 
	@${RM} ${OBJECTDIR}/_ext/1595192242/mTouchControl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1595192242/mTouchControl.o.ok ${OBJECTDIR}/_ext/1595192242/mTouchControl.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1595192242/mTouchControl.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24F_mTouch_Eval_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -Os -MMD -MF "${OBJECTDIR}/_ext/1595192242/mTouchControl.o.d" -o ${OBJECTDIR}/_ext/1595192242/mTouchControl.o "../../../../Microchip/mTouchCap/PIC18F PIC24F Library/mTouchControl.c"  
	
${OBJECTDIR}/_ext/1595192242/mTouchMarixButton.o: ../../../../Microchip/mTouchCap/PIC18F\ PIC24F\ Library/mTouchMarixButton.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1595192242 
	@${RM} ${OBJECTDIR}/_ext/1595192242/mTouchMarixButton.o.d 
	@${RM} ${OBJECTDIR}/_ext/1595192242/mTouchMarixButton.o.ok ${OBJECTDIR}/_ext/1595192242/mTouchMarixButton.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1595192242/mTouchMarixButton.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24F_mTouch_Eval_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -Os -MMD -MF "${OBJECTDIR}/_ext/1595192242/mTouchMarixButton.o.d" -o ${OBJECTDIR}/_ext/1595192242/mTouchMarixButton.o "../../../../Microchip/mTouchCap/PIC18F PIC24F Library/mTouchMarixButton.c"  
	
${OBJECTDIR}/_ext/1595192242/mTouchSensor.o: ../../../../Microchip/mTouchCap/PIC18F\ PIC24F\ Library/mTouchSensor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1595192242 
	@${RM} ${OBJECTDIR}/_ext/1595192242/mTouchSensor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1595192242/mTouchSensor.o.ok ${OBJECTDIR}/_ext/1595192242/mTouchSensor.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1595192242/mTouchSensor.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24F_mTouch_Eval_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -Os -MMD -MF "${OBJECTDIR}/_ext/1595192242/mTouchSensor.o.d" -o ${OBJECTDIR}/_ext/1595192242/mTouchSensor.o "../../../../Microchip/mTouchCap/PIC18F PIC24F Library/mTouchSensor.c"  
	
${OBJECTDIR}/_ext/865876355/system.o: ../../Configurations/PIC24F_mTouch_Eval_Board/system.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/865876355 
	@${RM} ${OBJECTDIR}/_ext/865876355/system.o.d 
	@${RM} ${OBJECTDIR}/_ext/865876355/system.o.ok ${OBJECTDIR}/_ext/865876355/system.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/865876355/system.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24F_mTouch_Eval_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -Os -MMD -MF "${OBJECTDIR}/_ext/865876355/system.o.d" -o ${OBJECTDIR}/_ext/865876355/system.o ../../Configurations/PIC24F_mTouch_Eval_Board/system.c  
	
${OBJECTDIR}/_ext/1595192242/mTouchDebug.o: ../../../../Microchip/mTouchCap/PIC18F\ PIC24F\ Library/mTouchDebug.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1595192242 
	@${RM} ${OBJECTDIR}/_ext/1595192242/mTouchDebug.o.d 
	@${RM} ${OBJECTDIR}/_ext/1595192242/mTouchDebug.o.ok ${OBJECTDIR}/_ext/1595192242/mTouchDebug.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1595192242/mTouchDebug.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24F_mTouch_Eval_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -Os -MMD -MF "${OBJECTDIR}/_ext/1595192242/mTouchDebug.o.d" -o ${OBJECTDIR}/_ext/1595192242/mTouchDebug.o "../../../../Microchip/mTouchCap/PIC18F PIC24F Library/mTouchDebug.c"  
	
${OBJECTDIR}/_ext/1472/Matrix\ Button\ Demo\ Main.o: ../Matrix\ Button\ Demo\ Main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/Matrix\ Button\ Demo\ Main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Matrix\ Button\ Demo\ Main.o.ok ${OBJECTDIR}/_ext/1472/Matrix\ Button\ Demo\ Main.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/Matrix Button Demo Main.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../../../Microchip/Include" -I"../../Configurations/PIC24F_mTouch_Eval_Board" -I"../../../../Microchip/Include/mTouchCap/PIC18F PIC24F Library" -Os -MMD -MF "${OBJECTDIR}/_ext/1472/Matrix Button Demo Main.o.d" -o "${OBJECTDIR}/_ext/1472/Matrix Button Demo Main.o" "../Matrix Button Demo Main.c"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/Matrix_Button_Demo_PIC24F.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -o dist/${CND_CONF}/${IMAGE_TYPE}/Matrix_Button_Demo_PIC24F.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}        -Wl,--defsym=__MPLAB_BUILD=1,-L"..",-Map="${DISTDIR}/Matrix_Button_Demo_PIC24F.X.${IMAGE_TYPE}.map",--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1
else
dist/${CND_CONF}/${IMAGE_TYPE}/Matrix_Button_Demo_PIC24F.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf -mcpu=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Matrix_Button_Demo_PIC24F.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}        -Wl,--defsym=__MPLAB_BUILD=1,-L"..",-Map="${DISTDIR}/Matrix_Button_Demo_PIC24F.X.${IMAGE_TYPE}.map",--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION)
	${MP_CC_DIR}\\pic30-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/Matrix_Button_Demo_PIC24F.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -omf=elf
endif


# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf:
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
