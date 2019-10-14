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
OBJECTFILES=${OBJECTDIR}/_ext/1472/main.p1 ${OBJECTDIR}/_ext/1735256871/mTouchCVD_Acquistion.p1 ${OBJECTDIR}/_ext/1735256871/mTouchCVD_Comm.p1 ${OBJECTDIR}/_ext/1735256871/mTouchCVD.p1


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
MP_CC=C:\\Program\ Files\\HI-TECH\ Software\\PICC\\9.81\\bin\\picc.exe
# MP_BC is not defined
MP_AS=C:\\Program\ Files\\HI-TECH\ Software\\PICC\\9.81\\bin\\picc.exe
MP_LD=C:\\Program\ Files\\HI-TECH\ Software\\PICC\\9.81\\bin\\picc.exe
MP_AR=C:\\Program\ Files\\HI-TECH\ Software\\PICC\\9.81\\bin\\picc.exe
# MP_BC is not defined
MP_CC_DIR=C:\\Program\ Files\\HI-TECH\ Software\\PICC\\9.81\\bin
# MP_BC_DIR is not defined
MP_AS_DIR=C:\\Program\ Files\\HI-TECH\ Software\\PICC\\9.81\\bin
MP_LD_DIR=C:\\Program\ Files\\HI-TECH\ Software\\PICC\\9.81\\bin
MP_AR_DIR=C:\\Program\ Files\\HI-TECH\ Software\\PICC\\9.81\\bin
# MP_BC_DIR is not defined
.build-conf: ${BUILD_SUBPROJECTS}
ifneq ($(OS_CURRENT),$(OS_ORIGINAL))
	@echo "***** WARNING: This make file contains OS dependent code. The OS this makefile is being run is different from the OS it was created in."
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.cof

MP_PROCESSOR_OPTION=12F1822
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1472/main.p1: ../main.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} --pass1 ../main.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir=${OBJECTDIR}/_ext/1472 -I".." -I"../../../../../Microchip/mTouchCap/PIC16F CVD Fw Library" --warn=0 --runtime=default,-clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,-asmfile,+speed,-space,-debug,9 -D__DEBUG --debugger=pickit3  --double=24 --float=24 --addrqual=Ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	${MP_CC} --scandep --pass1 ../main.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir=${OBJECTDIR}/_ext/1472 -I".." -I"../../../../../Microchip/mTouchCap/PIC16F CVD Fw Library" --warn=0 --runtime=default,-clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --opt=default,+asm,-asmfile,+speed,-space,-debug,9 -D__DEBUG --debugger=pickit3  --double=24 --float=24 --addrqual=Ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	echo "${OBJECTDIR}/_ext/1472/main.p1:\\" > ${OBJECTDIR}/_ext/1472/main.p1.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@cat ${OBJECTDIR}/_ext/1472/main.dep | sed -e 's/^ *//' -e 's/\\/\//g' -e 's/ /\\ /g' -e 's/^.*$$/ &\\/g'  >> ${OBJECTDIR}/_ext/1472/main.p1.d
else 
	@cat ${OBJECTDIR}/_ext/1472/main.dep | sed -e 's/^ *//' -e 's/^.*$$/ &\\/g'  >> ${OBJECTDIR}/_ext/1472/main.p1.d
endif
${OBJECTDIR}/_ext/1735256871/mTouchCVD_Acquistion.p1: ../../../../../Microchip/mTouchCap/PIC16F\ CVD\ FW\ Library/mTouchCVD_Acquistion.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1735256871 
	${MP_CC} --pass1 ../../../../../Microchip/mTouchCap/PIC16F\ CVD\ FW\ Library/mTouchCVD_Acquistion.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir=${OBJECTDIR}/_ext/1735256871 -I".." -I"../../../../../Microchip/mTouchCap/PIC16F CVD Fw Library" --warn=0 --runtime=default,-clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,-asmfile,+speed,-space,-debug,9 -D__DEBUG --debugger=pickit3  --double=24 --float=24 --addrqual=Ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	${MP_CC} --scandep --pass1 ../../../../../Microchip/mTouchCap/PIC16F\ CVD\ FW\ Library/mTouchCVD_Acquistion.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir=${OBJECTDIR}/_ext/1735256871 -I".." -I"../../../../../Microchip/mTouchCap/PIC16F CVD Fw Library" --warn=0 --runtime=default,-clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --opt=default,+asm,-asmfile,+speed,-space,-debug,9 -D__DEBUG --debugger=pickit3  --double=24 --float=24 --addrqual=Ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	echo "${OBJECTDIR}/_ext/1735256871/mTouchCVD_Acquistion.p1:\\" > ${OBJECTDIR}/_ext/1735256871/mTouchCVD_Acquistion.p1.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@cat ${OBJECTDIR}/_ext/1735256871/mTouchCVD_Acquistion.dep | sed -e 's/^ *//' -e 's/\\/\//g' -e 's/ /\\ /g' -e 's/^.*$$/ &\\/g'  >> ${OBJECTDIR}/_ext/1735256871/mTouchCVD_Acquistion.p1.d
else 
	@cat ${OBJECTDIR}/_ext/1735256871/mTouchCVD_Acquistion.dep | sed -e 's/^ *//' -e 's/^.*$$/ &\\/g'  >> ${OBJECTDIR}/_ext/1735256871/mTouchCVD_Acquistion.p1.d
endif
${OBJECTDIR}/_ext/1735256871/mTouchCVD_Comm.p1: ../../../../../Microchip/mTouchCap/PIC16F\ CVD\ FW\ Library/mTouchCVD_Comm.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1735256871 
	${MP_CC} --pass1 ../../../../../Microchip/mTouchCap/PIC16F\ CVD\ FW\ Library/mTouchCVD_Comm.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir=${OBJECTDIR}/_ext/1735256871 -I".." -I"../../../../../Microchip/mTouchCap/PIC16F CVD Fw Library" --warn=0 --runtime=default,-clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,-asmfile,+speed,-space,-debug,9 -D__DEBUG --debugger=pickit3  --double=24 --float=24 --addrqual=Ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	${MP_CC} --scandep --pass1 ../../../../../Microchip/mTouchCap/PIC16F\ CVD\ FW\ Library/mTouchCVD_Comm.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir=${OBJECTDIR}/_ext/1735256871 -I".." -I"../../../../../Microchip/mTouchCap/PIC16F CVD Fw Library" --warn=0 --runtime=default,-clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --opt=default,+asm,-asmfile,+speed,-space,-debug,9 -D__DEBUG --debugger=pickit3  --double=24 --float=24 --addrqual=Ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	echo "${OBJECTDIR}/_ext/1735256871/mTouchCVD_Comm.p1:\\" > ${OBJECTDIR}/_ext/1735256871/mTouchCVD_Comm.p1.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@cat ${OBJECTDIR}/_ext/1735256871/mTouchCVD_Comm.dep | sed -e 's/^ *//' -e 's/\\/\//g' -e 's/ /\\ /g' -e 's/^.*$$/ &\\/g'  >> ${OBJECTDIR}/_ext/1735256871/mTouchCVD_Comm.p1.d
else 
	@cat ${OBJECTDIR}/_ext/1735256871/mTouchCVD_Comm.dep | sed -e 's/^ *//' -e 's/^.*$$/ &\\/g'  >> ${OBJECTDIR}/_ext/1735256871/mTouchCVD_Comm.p1.d
endif
${OBJECTDIR}/_ext/1735256871/mTouchCVD.p1: ../../../../../Microchip/mTouchCap/PIC16F\ CVD\ FW\ Library/mTouchCVD.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1735256871 
	${MP_CC} --pass1 ../../../../../Microchip/mTouchCap/PIC16F\ CVD\ FW\ Library/mTouchCVD.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir=${OBJECTDIR}/_ext/1735256871 -I".." -I"../../../../../Microchip/mTouchCap/PIC16F CVD Fw Library" --warn=0 --runtime=default,-clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,-asmfile,+speed,-space,-debug,9 -D__DEBUG --debugger=pickit3  --double=24 --float=24 --addrqual=Ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	${MP_CC} --scandep --pass1 ../../../../../Microchip/mTouchCap/PIC16F\ CVD\ FW\ Library/mTouchCVD.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir=${OBJECTDIR}/_ext/1735256871 -I".." -I"../../../../../Microchip/mTouchCap/PIC16F CVD Fw Library" --warn=0 --runtime=default,-clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --opt=default,+asm,-asmfile,+speed,-space,-debug,9 -D__DEBUG --debugger=pickit3  --double=24 --float=24 --addrqual=Ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	echo "${OBJECTDIR}/_ext/1735256871/mTouchCVD.p1:\\" > ${OBJECTDIR}/_ext/1735256871/mTouchCVD.p1.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@cat ${OBJECTDIR}/_ext/1735256871/mTouchCVD.dep | sed -e 's/^ *//' -e 's/\\/\//g' -e 's/ /\\ /g' -e 's/^.*$$/ &\\/g'  >> ${OBJECTDIR}/_ext/1735256871/mTouchCVD.p1.d
else 
	@cat ${OBJECTDIR}/_ext/1735256871/mTouchCVD.dep | sed -e 's/^ *//' -e 's/^.*$$/ &\\/g'  >> ${OBJECTDIR}/_ext/1735256871/mTouchCVD.p1.d
endif
else
${OBJECTDIR}/_ext/1472/main.p1: ../main.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} --pass1 ../main.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir=${OBJECTDIR}/_ext/1472 -I".." -I"../../../../../Microchip/mTouchCap/PIC16F CVD Fw Library" --warn=0 --runtime=default,-clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,-asmfile,+speed,-space,-debug,9  --double=24 --float=24 --addrqual=Ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	${MP_CC} --scandep --pass1 ../main.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir=${OBJECTDIR}/_ext/1472 -I".." -I"../../../../../Microchip/mTouchCap/PIC16F CVD Fw Library" --warn=0 --runtime=default,-clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --opt=default,+asm,-asmfile,+speed,-space,-debug,9  --double=24 --float=24 --addrqual=Ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	echo "${OBJECTDIR}/_ext/1472/main.p1:\\" > ${OBJECTDIR}/_ext/1472/main.p1.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@cat ${OBJECTDIR}/_ext/1472/main.dep | sed -e 's/^ *//' -e 's/\\/\//g' -e 's/ /\\ /g' -e 's/^.*$$/ &\\/g'  >> ${OBJECTDIR}/_ext/1472/main.p1.d
else 
	@cat ${OBJECTDIR}/_ext/1472/main.dep | sed -e 's/^ *//' -e 's/^.*$$/ &\\/g'  >> ${OBJECTDIR}/_ext/1472/main.p1.d
endif
${OBJECTDIR}/_ext/1735256871/mTouchCVD_Acquistion.p1: ../../../../../Microchip/mTouchCap/PIC16F\ CVD\ FW\ Library/mTouchCVD_Acquistion.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1735256871 
	${MP_CC} --pass1 ../../../../../Microchip/mTouchCap/PIC16F\ CVD\ FW\ Library/mTouchCVD_Acquistion.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir=${OBJECTDIR}/_ext/1735256871 -I".." -I"../../../../../Microchip/mTouchCap/PIC16F CVD Fw Library" --warn=0 --runtime=default,-clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,-asmfile,+speed,-space,-debug,9  --double=24 --float=24 --addrqual=Ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	${MP_CC} --scandep --pass1 ../../../../../Microchip/mTouchCap/PIC16F\ CVD\ FW\ Library/mTouchCVD_Acquistion.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir=${OBJECTDIR}/_ext/1735256871 -I".." -I"../../../../../Microchip/mTouchCap/PIC16F CVD Fw Library" --warn=0 --runtime=default,-clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --opt=default,+asm,-asmfile,+speed,-space,-debug,9  --double=24 --float=24 --addrqual=Ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	echo "${OBJECTDIR}/_ext/1735256871/mTouchCVD_Acquistion.p1:\\" > ${OBJECTDIR}/_ext/1735256871/mTouchCVD_Acquistion.p1.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@cat ${OBJECTDIR}/_ext/1735256871/mTouchCVD_Acquistion.dep | sed -e 's/^ *//' -e 's/\\/\//g' -e 's/ /\\ /g' -e 's/^.*$$/ &\\/g'  >> ${OBJECTDIR}/_ext/1735256871/mTouchCVD_Acquistion.p1.d
else 
	@cat ${OBJECTDIR}/_ext/1735256871/mTouchCVD_Acquistion.dep | sed -e 's/^ *//' -e 's/^.*$$/ &\\/g'  >> ${OBJECTDIR}/_ext/1735256871/mTouchCVD_Acquistion.p1.d
endif
${OBJECTDIR}/_ext/1735256871/mTouchCVD_Comm.p1: ../../../../../Microchip/mTouchCap/PIC16F\ CVD\ FW\ Library/mTouchCVD_Comm.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1735256871 
	${MP_CC} --pass1 ../../../../../Microchip/mTouchCap/PIC16F\ CVD\ FW\ Library/mTouchCVD_Comm.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir=${OBJECTDIR}/_ext/1735256871 -I".." -I"../../../../../Microchip/mTouchCap/PIC16F CVD Fw Library" --warn=0 --runtime=default,-clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,-asmfile,+speed,-space,-debug,9  --double=24 --float=24 --addrqual=Ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	${MP_CC} --scandep --pass1 ../../../../../Microchip/mTouchCap/PIC16F\ CVD\ FW\ Library/mTouchCVD_Comm.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir=${OBJECTDIR}/_ext/1735256871 -I".." -I"../../../../../Microchip/mTouchCap/PIC16F CVD Fw Library" --warn=0 --runtime=default,-clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --opt=default,+asm,-asmfile,+speed,-space,-debug,9  --double=24 --float=24 --addrqual=Ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	echo "${OBJECTDIR}/_ext/1735256871/mTouchCVD_Comm.p1:\\" > ${OBJECTDIR}/_ext/1735256871/mTouchCVD_Comm.p1.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@cat ${OBJECTDIR}/_ext/1735256871/mTouchCVD_Comm.dep | sed -e 's/^ *//' -e 's/\\/\//g' -e 's/ /\\ /g' -e 's/^.*$$/ &\\/g'  >> ${OBJECTDIR}/_ext/1735256871/mTouchCVD_Comm.p1.d
else 
	@cat ${OBJECTDIR}/_ext/1735256871/mTouchCVD_Comm.dep | sed -e 's/^ *//' -e 's/^.*$$/ &\\/g'  >> ${OBJECTDIR}/_ext/1735256871/mTouchCVD_Comm.p1.d
endif
${OBJECTDIR}/_ext/1735256871/mTouchCVD.p1: ../../../../../Microchip/mTouchCap/PIC16F\ CVD\ FW\ Library/mTouchCVD.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1735256871 
	${MP_CC} --pass1 ../../../../../Microchip/mTouchCap/PIC16F\ CVD\ FW\ Library/mTouchCVD.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir=${OBJECTDIR}/_ext/1735256871 -I".." -I"../../../../../Microchip/mTouchCap/PIC16F CVD Fw Library" --warn=0 --runtime=default,-clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,-asmfile,+speed,-space,-debug,9  --double=24 --float=24 --addrqual=Ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	${MP_CC} --scandep --pass1 ../../../../../Microchip/mTouchCap/PIC16F\ CVD\ FW\ Library/mTouchCVD.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir=${OBJECTDIR}/_ext/1735256871 -I".." -I"../../../../../Microchip/mTouchCap/PIC16F CVD Fw Library" --warn=0 --runtime=default,-clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --opt=default,+asm,-asmfile,+speed,-space,-debug,9  --double=24 --float=24 --addrqual=Ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	echo "${OBJECTDIR}/_ext/1735256871/mTouchCVD.p1:\\" > ${OBJECTDIR}/_ext/1735256871/mTouchCVD.p1.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@cat ${OBJECTDIR}/_ext/1735256871/mTouchCVD.dep | sed -e 's/^ *//' -e 's/\\/\//g' -e 's/ /\\ /g' -e 's/^.*$$/ &\\/g'  >> ${OBJECTDIR}/_ext/1735256871/mTouchCVD.p1.d
else 
	@cat ${OBJECTDIR}/_ext/1735256871/mTouchCVD.dep | sed -e 's/^ *//' -e 's/^.*$$/ &\\/g'  >> ${OBJECTDIR}/_ext/1735256871/mTouchCVD.p1.d
endif
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.cof: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE) -odist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.cof -mdist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.map --summary=default,-psect,-class,+mem,-hex --chip=$(MP_PROCESSOR_OPTION) -P --runtime=default,-clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,-asmfile,+speed,-space,-debug,9 -D__DEBUG --debugger=pickit3 -I".." -I"../../../../../Microchip/mTouchCap/PIC16F CVD Fw Library" --warn=0  --double=24 --float=24 --addrqual=Ignore --mode=pro --output=default,-inhx032 -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s" ${OBJECTFILES}  
	${RM} dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.hex
else
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.cof: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE) -odist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.cof -mdist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.map --summary=default,-psect,-class,+mem,-hex --chip=$(MP_PROCESSOR_OPTION) -P --runtime=default,-clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,-asmfile,+speed,-space,-debug,9 -I".." -I"../../../../../Microchip/mTouchCap/PIC16F CVD Fw Library" --warn=0  --double=24 --float=24 --addrqual=Ignore --mode=pro --output=default,-inhx032 -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s" ${OBJECTFILES}  
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
