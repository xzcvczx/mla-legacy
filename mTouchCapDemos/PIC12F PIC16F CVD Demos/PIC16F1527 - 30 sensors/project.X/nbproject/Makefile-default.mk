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
OUTPUT_SUFFIX=cof
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/project.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/project.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1472/mComm.p1 ${OBJECTDIR}/_ext/1472/mComm_opcodes.p1 ${OBJECTDIR}/_ext/1472/mComm_custom.p1 ${OBJECTDIR}/_ext/1472/mTouch.p1 ${OBJECTDIR}/_ext/1472/mTouch_Acquistion.p1 ${OBJECTDIR}/_ext/1472/mTouch_Slider.p1 ${OBJECTDIR}/_ext/1472/mTouch_eeprom.p1 ${OBJECTDIR}/_ext/1472/mTouch_proximity.p1 ${OBJECTDIR}/_ext/1472/main.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1472/mComm.p1.d ${OBJECTDIR}/_ext/1472/mComm_opcodes.p1.d ${OBJECTDIR}/_ext/1472/mComm_custom.p1.d ${OBJECTDIR}/_ext/1472/mTouch.p1.d ${OBJECTDIR}/_ext/1472/mTouch_Acquistion.p1.d ${OBJECTDIR}/_ext/1472/mTouch_Slider.p1.d ${OBJECTDIR}/_ext/1472/mTouch_eeprom.p1.d ${OBJECTDIR}/_ext/1472/mTouch_proximity.p1.d ${OBJECTDIR}/_ext/1472/main.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1472/mComm.p1 ${OBJECTDIR}/_ext/1472/mComm_opcodes.p1 ${OBJECTDIR}/_ext/1472/mComm_custom.p1 ${OBJECTDIR}/_ext/1472/mTouch.p1 ${OBJECTDIR}/_ext/1472/mTouch_Acquistion.p1 ${OBJECTDIR}/_ext/1472/mTouch_Slider.p1 ${OBJECTDIR}/_ext/1472/mTouch_eeprom.p1 ${OBJECTDIR}/_ext/1472/mTouch_proximity.p1 ${OBJECTDIR}/_ext/1472/main.p1


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
MP_CC="C:\Program Files\HI-TECH Software\PICC\9.83\bin\picc.exe"
# MP_BC is not defined
MP_AS="C:\Program Files\HI-TECH Software\PICC\9.83\bin\picc.exe"
MP_LD="C:\Program Files\HI-TECH Software\PICC\9.83\bin\picc.exe"
MP_AR="C:\Program Files\HI-TECH Software\PICC\9.83\bin\picc.exe"
DEP_GEN=${MP_JAVA_PATH}java -jar "C:/Program Files/Microchip/MPLABX/mplab_ide/mplab_ide/modules/../../bin/extractobjectdependencies.jar" 
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps
MP_CC_DIR="C:\Program Files\HI-TECH Software\PICC\9.83\bin"
# MP_BC_DIR is not defined
MP_AS_DIR="C:\Program Files\HI-TECH Software\PICC\9.83\bin"
MP_LD_DIR="C:\Program Files\HI-TECH Software\PICC\9.83\bin"
MP_AR_DIR="C:\Program Files\HI-TECH Software\PICC\9.83\bin"
# MP_BC_DIR is not defined

.build-conf:  ${BUILD_SUBPROJECTS}
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/project.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=16F1527
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1472/mComm.p1: ../mComm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} --pass1 ../mComm.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir=${OBJECTDIR}/_ext/1472 -N31 --warn=0 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,-asmfile,-speed,+space,-debug,9 -D__DEBUG   --double=24 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%%f:%%l: error: %%s" "--msgformat=%%f:%%l: advisory: %%s" "--warnformat=%%f:%%l warning: %%s"
	@${MP_CC} --scandep  ../mComm.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir=${OBJECTDIR}/_ext/1472 -N31 --warn=0 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --opt=default,+asm,-asmfile,-speed,+space,-debug,9 -D__DEBUG   --double=24 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%%f:%%l: error: %%s" "--msgformat=%%f:%%l: advisory: %%s" "--warnformat=%%f:%%l warning: %%s"
	@echo ${OBJECTDIR}/_ext/1472/mComm.p1: > ${OBJECTDIR}/_ext/1472/mComm.p1.d
	@cat ${OBJECTDIR}/_ext/1472/mComm.dep >> ${OBJECTDIR}/_ext/1472/mComm.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/mComm.p1.d" $(SILENT) -ht 
	
${OBJECTDIR}/_ext/1472/mComm_opcodes.p1: ../mComm_opcodes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} --pass1 ../mComm_opcodes.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir=${OBJECTDIR}/_ext/1472 -N31 --warn=0 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,-asmfile,-speed,+space,-debug,9 -D__DEBUG   --double=24 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%%f:%%l: error: %%s" "--msgformat=%%f:%%l: advisory: %%s" "--warnformat=%%f:%%l warning: %%s"
	@${MP_CC} --scandep  ../mComm_opcodes.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir=${OBJECTDIR}/_ext/1472 -N31 --warn=0 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --opt=default,+asm,-asmfile,-speed,+space,-debug,9 -D__DEBUG   --double=24 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%%f:%%l: error: %%s" "--msgformat=%%f:%%l: advisory: %%s" "--warnformat=%%f:%%l warning: %%s"
	@echo ${OBJECTDIR}/_ext/1472/mComm_opcodes.p1: > ${OBJECTDIR}/_ext/1472/mComm_opcodes.p1.d
	@cat ${OBJECTDIR}/_ext/1472/mComm_opcodes.dep >> ${OBJECTDIR}/_ext/1472/mComm_opcodes.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/mComm_opcodes.p1.d" $(SILENT) -ht 
	
${OBJECTDIR}/_ext/1472/mComm_custom.p1: ../mComm_custom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} --pass1 ../mComm_custom.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir=${OBJECTDIR}/_ext/1472 -N31 --warn=0 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,-asmfile,-speed,+space,-debug,9 -D__DEBUG   --double=24 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%%f:%%l: error: %%s" "--msgformat=%%f:%%l: advisory: %%s" "--warnformat=%%f:%%l warning: %%s"
	@${MP_CC} --scandep  ../mComm_custom.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir=${OBJECTDIR}/_ext/1472 -N31 --warn=0 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --opt=default,+asm,-asmfile,-speed,+space,-debug,9 -D__DEBUG   --double=24 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%%f:%%l: error: %%s" "--msgformat=%%f:%%l: advisory: %%s" "--warnformat=%%f:%%l warning: %%s"
	@echo ${OBJECTDIR}/_ext/1472/mComm_custom.p1: > ${OBJECTDIR}/_ext/1472/mComm_custom.p1.d
	@cat ${OBJECTDIR}/_ext/1472/mComm_custom.dep >> ${OBJECTDIR}/_ext/1472/mComm_custom.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/mComm_custom.p1.d" $(SILENT) -ht 
	
${OBJECTDIR}/_ext/1472/mTouch.p1: ../mTouch.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} --pass1 ../mTouch.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir=${OBJECTDIR}/_ext/1472 -N31 --warn=0 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,-asmfile,-speed,+space,-debug,9 -D__DEBUG   --double=24 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%%f:%%l: error: %%s" "--msgformat=%%f:%%l: advisory: %%s" "--warnformat=%%f:%%l warning: %%s"
	@${MP_CC} --scandep  ../mTouch.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir=${OBJECTDIR}/_ext/1472 -N31 --warn=0 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --opt=default,+asm,-asmfile,-speed,+space,-debug,9 -D__DEBUG   --double=24 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%%f:%%l: error: %%s" "--msgformat=%%f:%%l: advisory: %%s" "--warnformat=%%f:%%l warning: %%s"
	@echo ${OBJECTDIR}/_ext/1472/mTouch.p1: > ${OBJECTDIR}/_ext/1472/mTouch.p1.d
	@cat ${OBJECTDIR}/_ext/1472/mTouch.dep >> ${OBJECTDIR}/_ext/1472/mTouch.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/mTouch.p1.d" $(SILENT) -ht 
	
${OBJECTDIR}/_ext/1472/mTouch_Acquistion.p1: ../mTouch_Acquistion.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} --pass1 ../mTouch_Acquistion.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir=${OBJECTDIR}/_ext/1472 -N31 --warn=0 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,-asmfile,-speed,+space,-debug,9 -D__DEBUG   --double=24 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%%f:%%l: error: %%s" "--msgformat=%%f:%%l: advisory: %%s" "--warnformat=%%f:%%l warning: %%s"
	@${MP_CC} --scandep  ../mTouch_Acquistion.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir=${OBJECTDIR}/_ext/1472 -N31 --warn=0 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --opt=default,+asm,-asmfile,-speed,+space,-debug,9 -D__DEBUG   --double=24 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%%f:%%l: error: %%s" "--msgformat=%%f:%%l: advisory: %%s" "--warnformat=%%f:%%l warning: %%s"
	@echo ${OBJECTDIR}/_ext/1472/mTouch_Acquistion.p1: > ${OBJECTDIR}/_ext/1472/mTouch_Acquistion.p1.d
	@cat ${OBJECTDIR}/_ext/1472/mTouch_Acquistion.dep >> ${OBJECTDIR}/_ext/1472/mTouch_Acquistion.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/mTouch_Acquistion.p1.d" $(SILENT) -ht 
	
${OBJECTDIR}/_ext/1472/mTouch_Slider.p1: ../mTouch_Slider.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} --pass1 ../mTouch_Slider.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir=${OBJECTDIR}/_ext/1472 -N31 --warn=0 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,-asmfile,-speed,+space,-debug,9 -D__DEBUG   --double=24 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%%f:%%l: error: %%s" "--msgformat=%%f:%%l: advisory: %%s" "--warnformat=%%f:%%l warning: %%s"
	@${MP_CC} --scandep  ../mTouch_Slider.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir=${OBJECTDIR}/_ext/1472 -N31 --warn=0 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --opt=default,+asm,-asmfile,-speed,+space,-debug,9 -D__DEBUG   --double=24 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%%f:%%l: error: %%s" "--msgformat=%%f:%%l: advisory: %%s" "--warnformat=%%f:%%l warning: %%s"
	@echo ${OBJECTDIR}/_ext/1472/mTouch_Slider.p1: > ${OBJECTDIR}/_ext/1472/mTouch_Slider.p1.d
	@cat ${OBJECTDIR}/_ext/1472/mTouch_Slider.dep >> ${OBJECTDIR}/_ext/1472/mTouch_Slider.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/mTouch_Slider.p1.d" $(SILENT) -ht 
	
${OBJECTDIR}/_ext/1472/mTouch_eeprom.p1: ../mTouch_eeprom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} --pass1 ../mTouch_eeprom.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir=${OBJECTDIR}/_ext/1472 -N31 --warn=0 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,-asmfile,-speed,+space,-debug,9 -D__DEBUG   --double=24 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%%f:%%l: error: %%s" "--msgformat=%%f:%%l: advisory: %%s" "--warnformat=%%f:%%l warning: %%s"
	@${MP_CC} --scandep  ../mTouch_eeprom.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir=${OBJECTDIR}/_ext/1472 -N31 --warn=0 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --opt=default,+asm,-asmfile,-speed,+space,-debug,9 -D__DEBUG   --double=24 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%%f:%%l: error: %%s" "--msgformat=%%f:%%l: advisory: %%s" "--warnformat=%%f:%%l warning: %%s"
	@echo ${OBJECTDIR}/_ext/1472/mTouch_eeprom.p1: > ${OBJECTDIR}/_ext/1472/mTouch_eeprom.p1.d
	@cat ${OBJECTDIR}/_ext/1472/mTouch_eeprom.dep >> ${OBJECTDIR}/_ext/1472/mTouch_eeprom.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/mTouch_eeprom.p1.d" $(SILENT) -ht 
	
${OBJECTDIR}/_ext/1472/mTouch_proximity.p1: ../mTouch_proximity.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} --pass1 ../mTouch_proximity.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir=${OBJECTDIR}/_ext/1472 -N31 --warn=0 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,-asmfile,-speed,+space,-debug,9 -D__DEBUG   --double=24 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%%f:%%l: error: %%s" "--msgformat=%%f:%%l: advisory: %%s" "--warnformat=%%f:%%l warning: %%s"
	@${MP_CC} --scandep  ../mTouch_proximity.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir=${OBJECTDIR}/_ext/1472 -N31 --warn=0 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --opt=default,+asm,-asmfile,-speed,+space,-debug,9 -D__DEBUG   --double=24 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%%f:%%l: error: %%s" "--msgformat=%%f:%%l: advisory: %%s" "--warnformat=%%f:%%l warning: %%s"
	@echo ${OBJECTDIR}/_ext/1472/mTouch_proximity.p1: > ${OBJECTDIR}/_ext/1472/mTouch_proximity.p1.d
	@cat ${OBJECTDIR}/_ext/1472/mTouch_proximity.dep >> ${OBJECTDIR}/_ext/1472/mTouch_proximity.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/mTouch_proximity.p1.d" $(SILENT) -ht 
	
${OBJECTDIR}/_ext/1472/main.p1: ../main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} --pass1 ../main.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir=${OBJECTDIR}/_ext/1472 -N31 --warn=0 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,-asmfile,-speed,+space,-debug,9 -D__DEBUG   --double=24 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%%f:%%l: error: %%s" "--msgformat=%%f:%%l: advisory: %%s" "--warnformat=%%f:%%l warning: %%s"
	@${MP_CC} --scandep  ../main.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir=${OBJECTDIR}/_ext/1472 -N31 --warn=0 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --opt=default,+asm,-asmfile,-speed,+space,-debug,9 -D__DEBUG   --double=24 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%%f:%%l: error: %%s" "--msgformat=%%f:%%l: advisory: %%s" "--warnformat=%%f:%%l warning: %%s"
	@echo ${OBJECTDIR}/_ext/1472/main.p1: > ${OBJECTDIR}/_ext/1472/main.p1.d
	@cat ${OBJECTDIR}/_ext/1472/main.dep >> ${OBJECTDIR}/_ext/1472/main.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/main.p1.d" $(SILENT) -ht 
	
else
${OBJECTDIR}/_ext/1472/mComm.p1: ../mComm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} --pass1 ../mComm.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir=${OBJECTDIR}/_ext/1472 -N31 --warn=0 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,-asmfile,-speed,+space,-debug,9  --double=24 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%%f:%%l: error: %%s" "--msgformat=%%f:%%l: advisory: %%s" "--warnformat=%%f:%%l warning: %%s"
	@${MP_CC} --scandep  ../mComm.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir=${OBJECTDIR}/_ext/1472 -N31 --warn=0 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --opt=default,+asm,-asmfile,-speed,+space,-debug,9  --double=24 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%%f:%%l: error: %%s" "--msgformat=%%f:%%l: advisory: %%s" "--warnformat=%%f:%%l warning: %%s"
	@echo ${OBJECTDIR}/_ext/1472/mComm.p1: > ${OBJECTDIR}/_ext/1472/mComm.p1.d
	@cat ${OBJECTDIR}/_ext/1472/mComm.dep >> ${OBJECTDIR}/_ext/1472/mComm.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/mComm.p1.d" $(SILENT) -ht 
	
${OBJECTDIR}/_ext/1472/mComm_opcodes.p1: ../mComm_opcodes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} --pass1 ../mComm_opcodes.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir=${OBJECTDIR}/_ext/1472 -N31 --warn=0 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,-asmfile,-speed,+space,-debug,9  --double=24 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%%f:%%l: error: %%s" "--msgformat=%%f:%%l: advisory: %%s" "--warnformat=%%f:%%l warning: %%s"
	@${MP_CC} --scandep  ../mComm_opcodes.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir=${OBJECTDIR}/_ext/1472 -N31 --warn=0 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --opt=default,+asm,-asmfile,-speed,+space,-debug,9  --double=24 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%%f:%%l: error: %%s" "--msgformat=%%f:%%l: advisory: %%s" "--warnformat=%%f:%%l warning: %%s"
	@echo ${OBJECTDIR}/_ext/1472/mComm_opcodes.p1: > ${OBJECTDIR}/_ext/1472/mComm_opcodes.p1.d
	@cat ${OBJECTDIR}/_ext/1472/mComm_opcodes.dep >> ${OBJECTDIR}/_ext/1472/mComm_opcodes.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/mComm_opcodes.p1.d" $(SILENT) -ht 
	
${OBJECTDIR}/_ext/1472/mComm_custom.p1: ../mComm_custom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} --pass1 ../mComm_custom.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir=${OBJECTDIR}/_ext/1472 -N31 --warn=0 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,-asmfile,-speed,+space,-debug,9  --double=24 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%%f:%%l: error: %%s" "--msgformat=%%f:%%l: advisory: %%s" "--warnformat=%%f:%%l warning: %%s"
	@${MP_CC} --scandep  ../mComm_custom.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir=${OBJECTDIR}/_ext/1472 -N31 --warn=0 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --opt=default,+asm,-asmfile,-speed,+space,-debug,9  --double=24 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%%f:%%l: error: %%s" "--msgformat=%%f:%%l: advisory: %%s" "--warnformat=%%f:%%l warning: %%s"
	@echo ${OBJECTDIR}/_ext/1472/mComm_custom.p1: > ${OBJECTDIR}/_ext/1472/mComm_custom.p1.d
	@cat ${OBJECTDIR}/_ext/1472/mComm_custom.dep >> ${OBJECTDIR}/_ext/1472/mComm_custom.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/mComm_custom.p1.d" $(SILENT) -ht 
	
${OBJECTDIR}/_ext/1472/mTouch.p1: ../mTouch.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} --pass1 ../mTouch.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir=${OBJECTDIR}/_ext/1472 -N31 --warn=0 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,-asmfile,-speed,+space,-debug,9  --double=24 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%%f:%%l: error: %%s" "--msgformat=%%f:%%l: advisory: %%s" "--warnformat=%%f:%%l warning: %%s"
	@${MP_CC} --scandep  ../mTouch.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir=${OBJECTDIR}/_ext/1472 -N31 --warn=0 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --opt=default,+asm,-asmfile,-speed,+space,-debug,9  --double=24 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%%f:%%l: error: %%s" "--msgformat=%%f:%%l: advisory: %%s" "--warnformat=%%f:%%l warning: %%s"
	@echo ${OBJECTDIR}/_ext/1472/mTouch.p1: > ${OBJECTDIR}/_ext/1472/mTouch.p1.d
	@cat ${OBJECTDIR}/_ext/1472/mTouch.dep >> ${OBJECTDIR}/_ext/1472/mTouch.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/mTouch.p1.d" $(SILENT) -ht 
	
${OBJECTDIR}/_ext/1472/mTouch_Acquistion.p1: ../mTouch_Acquistion.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} --pass1 ../mTouch_Acquistion.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir=${OBJECTDIR}/_ext/1472 -N31 --warn=0 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,-asmfile,-speed,+space,-debug,9  --double=24 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%%f:%%l: error: %%s" "--msgformat=%%f:%%l: advisory: %%s" "--warnformat=%%f:%%l warning: %%s"
	@${MP_CC} --scandep  ../mTouch_Acquistion.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir=${OBJECTDIR}/_ext/1472 -N31 --warn=0 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --opt=default,+asm,-asmfile,-speed,+space,-debug,9  --double=24 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%%f:%%l: error: %%s" "--msgformat=%%f:%%l: advisory: %%s" "--warnformat=%%f:%%l warning: %%s"
	@echo ${OBJECTDIR}/_ext/1472/mTouch_Acquistion.p1: > ${OBJECTDIR}/_ext/1472/mTouch_Acquistion.p1.d
	@cat ${OBJECTDIR}/_ext/1472/mTouch_Acquistion.dep >> ${OBJECTDIR}/_ext/1472/mTouch_Acquistion.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/mTouch_Acquistion.p1.d" $(SILENT) -ht 
	
${OBJECTDIR}/_ext/1472/mTouch_Slider.p1: ../mTouch_Slider.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} --pass1 ../mTouch_Slider.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir=${OBJECTDIR}/_ext/1472 -N31 --warn=0 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,-asmfile,-speed,+space,-debug,9  --double=24 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%%f:%%l: error: %%s" "--msgformat=%%f:%%l: advisory: %%s" "--warnformat=%%f:%%l warning: %%s"
	@${MP_CC} --scandep  ../mTouch_Slider.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir=${OBJECTDIR}/_ext/1472 -N31 --warn=0 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --opt=default,+asm,-asmfile,-speed,+space,-debug,9  --double=24 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%%f:%%l: error: %%s" "--msgformat=%%f:%%l: advisory: %%s" "--warnformat=%%f:%%l warning: %%s"
	@echo ${OBJECTDIR}/_ext/1472/mTouch_Slider.p1: > ${OBJECTDIR}/_ext/1472/mTouch_Slider.p1.d
	@cat ${OBJECTDIR}/_ext/1472/mTouch_Slider.dep >> ${OBJECTDIR}/_ext/1472/mTouch_Slider.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/mTouch_Slider.p1.d" $(SILENT) -ht 
	
${OBJECTDIR}/_ext/1472/mTouch_eeprom.p1: ../mTouch_eeprom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} --pass1 ../mTouch_eeprom.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir=${OBJECTDIR}/_ext/1472 -N31 --warn=0 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,-asmfile,-speed,+space,-debug,9  --double=24 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%%f:%%l: error: %%s" "--msgformat=%%f:%%l: advisory: %%s" "--warnformat=%%f:%%l warning: %%s"
	@${MP_CC} --scandep  ../mTouch_eeprom.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir=${OBJECTDIR}/_ext/1472 -N31 --warn=0 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --opt=default,+asm,-asmfile,-speed,+space,-debug,9  --double=24 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%%f:%%l: error: %%s" "--msgformat=%%f:%%l: advisory: %%s" "--warnformat=%%f:%%l warning: %%s"
	@echo ${OBJECTDIR}/_ext/1472/mTouch_eeprom.p1: > ${OBJECTDIR}/_ext/1472/mTouch_eeprom.p1.d
	@cat ${OBJECTDIR}/_ext/1472/mTouch_eeprom.dep >> ${OBJECTDIR}/_ext/1472/mTouch_eeprom.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/mTouch_eeprom.p1.d" $(SILENT) -ht 
	
${OBJECTDIR}/_ext/1472/mTouch_proximity.p1: ../mTouch_proximity.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} --pass1 ../mTouch_proximity.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir=${OBJECTDIR}/_ext/1472 -N31 --warn=0 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,-asmfile,-speed,+space,-debug,9  --double=24 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%%f:%%l: error: %%s" "--msgformat=%%f:%%l: advisory: %%s" "--warnformat=%%f:%%l warning: %%s"
	@${MP_CC} --scandep  ../mTouch_proximity.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir=${OBJECTDIR}/_ext/1472 -N31 --warn=0 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --opt=default,+asm,-asmfile,-speed,+space,-debug,9  --double=24 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%%f:%%l: error: %%s" "--msgformat=%%f:%%l: advisory: %%s" "--warnformat=%%f:%%l warning: %%s"
	@echo ${OBJECTDIR}/_ext/1472/mTouch_proximity.p1: > ${OBJECTDIR}/_ext/1472/mTouch_proximity.p1.d
	@cat ${OBJECTDIR}/_ext/1472/mTouch_proximity.dep >> ${OBJECTDIR}/_ext/1472/mTouch_proximity.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/mTouch_proximity.p1.d" $(SILENT) -ht 
	
${OBJECTDIR}/_ext/1472/main.p1: ../main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} --pass1 ../main.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir=${OBJECTDIR}/_ext/1472 -N31 --warn=0 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,-asmfile,-speed,+space,-debug,9  --double=24 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%%f:%%l: error: %%s" "--msgformat=%%f:%%l: advisory: %%s" "--warnformat=%%f:%%l warning: %%s"
	@${MP_CC} --scandep  ../main.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir=${OBJECTDIR}/_ext/1472 -N31 --warn=0 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --opt=default,+asm,-asmfile,-speed,+space,-debug,9  --double=24 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%%f:%%l: error: %%s" "--msgformat=%%f:%%l: advisory: %%s" "--warnformat=%%f:%%l warning: %%s"
	@echo ${OBJECTDIR}/_ext/1472/main.p1: > ${OBJECTDIR}/_ext/1472/main.p1.d
	@cat ${OBJECTDIR}/_ext/1472/main.dep >> ${OBJECTDIR}/_ext/1472/main.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/main.p1.d" $(SILENT) -ht 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/project.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE) -odist/${CND_CONF}/${IMAGE_TYPE}/project.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  -mdist/${CND_CONF}/${IMAGE_TYPE}/project.X.${IMAGE_TYPE}.map --summary=default,-psect,-class,+mem,-hex --chip=$(MP_PROCESSOR_OPTION) -P --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,-asmfile,-speed,+space,-debug,9 -D__DEBUG  -N31 --warn=0  --double=24 --float=24 --addrqual=ignore --mode=pro --output=default,-inhx032 -g --asmlist "--errformat=%%f:%%l: error: %%s" "--msgformat=%%f:%%l: advisory: %%s" "--warnformat=%%f:%%l warning: %%s" ${OBJECTFILES_QUOTED_IF_SPACED}  
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/project.X.${IMAGE_TYPE}.hex
else
dist/${CND_CONF}/${IMAGE_TYPE}/project.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE) -odist/${CND_CONF}/${IMAGE_TYPE}/project.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -mdist/${CND_CONF}/${IMAGE_TYPE}/project.X.${IMAGE_TYPE}.map --summary=default,-psect,-class,+mem,-hex --chip=$(MP_PROCESSOR_OPTION) -P --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,-asmfile,-speed,+space,-debug,9 -N31 --warn=0  --double=24 --float=24 --addrqual=ignore --mode=pro --output=default,-inhx032 -g --asmlist "--errformat=%%f:%%l: error: %%s" "--msgformat=%%f:%%l: advisory: %%s" "--warnformat=%%f:%%l warning: %%s" ${OBJECTFILES_QUOTED_IF_SPACED}  
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
