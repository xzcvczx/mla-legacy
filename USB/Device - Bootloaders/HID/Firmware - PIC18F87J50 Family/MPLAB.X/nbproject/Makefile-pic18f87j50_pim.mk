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
PATH:=C:/Program Files (x86)/Microchip/MPLABX/mplab_ide/mplab_ide/modules/../../bin/:$(PATH)
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=pic18f87j50_pim
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
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1472/hid.o ${OBJECTDIR}/_ext/1472/main.o ${OBJECTDIR}/_ext/1472/usb9.o ${OBJECTDIR}/_ext/1472/usbctrltrf.o ${OBJECTDIR}/_ext/1472/usbdrv.o ${OBJECTDIR}/_ext/1472/usbdsc.o ${OBJECTDIR}/_ext/1472/usbmmap.o ${OBJECTDIR}/_ext/1472/Boot87J50Family.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1472/hid.o.d ${OBJECTDIR}/_ext/1472/main.o.d ${OBJECTDIR}/_ext/1472/usb9.o.d ${OBJECTDIR}/_ext/1472/usbctrltrf.o.d ${OBJECTDIR}/_ext/1472/usbdrv.o.d ${OBJECTDIR}/_ext/1472/usbdsc.o.d ${OBJECTDIR}/_ext/1472/usbmmap.o.d ${OBJECTDIR}/_ext/1472/Boot87J50Family.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1472/hid.o ${OBJECTDIR}/_ext/1472/main.o ${OBJECTDIR}/_ext/1472/usb9.o ${OBJECTDIR}/_ext/1472/usbctrltrf.o ${OBJECTDIR}/_ext/1472/usbdrv.o ${OBJECTDIR}/_ext/1472/usbdsc.o ${OBJECTDIR}/_ext/1472/usbmmap.o ${OBJECTDIR}/_ext/1472/Boot87J50Family.o


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

# Path to java used to run MPLAB X when this makefile was created
MP_JAVA_PATH="C:\Program Files (x86)\Java\jre6/bin/"
OS_CURRENT="$(shell uname -s)"
############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
MP_CC="C:\Program Files (x86)\Microchip\mplabc18\v3.40\bin\mcc18.exe"
# MP_BC is not defined
MP_AS="C:\Program Files (x86)\Microchip\mplabc18\v3.40\bin\..\mpasm\MPASMWIN.exe"
MP_LD="C:\Program Files (x86)\Microchip\mplabc18\v3.40\bin\mplink.exe"
MP_AR="C:\Program Files (x86)\Microchip\mplabc18\v3.40\bin\mplib.exe"
DEP_GEN=${MP_JAVA_PATH}java -jar "C:/Program Files (x86)/Microchip/MPLABX/mplab_ide/mplab_ide/modules/../../bin/extractobjectdependencies.jar" 
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps
MP_CC_DIR="C:\Program Files (x86)\Microchip\mplabc18\v3.40\bin"
# MP_BC_DIR is not defined
MP_AS_DIR="C:\Program Files (x86)\Microchip\mplabc18\v3.40\bin\..\mpasm"
MP_LD_DIR="C:\Program Files (x86)\Microchip\mplabc18\v3.40\bin"
MP_AR_DIR="C:\Program Files (x86)\Microchip\mplabc18\v3.40\bin"
# MP_BC_DIR is not defined

.build-conf:  ${BUILD_SUBPROJECTS}
	${MAKE}  -f nbproject/Makefile-pic18f87j50_pim.mk dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F87J50
MP_PROCESSOR_OPTION_LD=18f87j50
MP_LINKER_DEBUG_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1472/hid.o: ../hid.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/hid.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -I"../../../../../../../../../MCC18/h" -I".."    -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/hid.o   ../hid.c   
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/hid.o 
	
${OBJECTDIR}/_ext/1472/main.o: ../main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -I"../../../../../../../../../MCC18/h" -I".."    -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/main.o   ../main.c   
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/main.o 
	
${OBJECTDIR}/_ext/1472/usb9.o: ../usb9.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/usb9.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -I"../../../../../../../../../MCC18/h" -I".."    -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/usb9.o   ../usb9.c   
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/usb9.o 
	
${OBJECTDIR}/_ext/1472/usbctrltrf.o: ../usbctrltrf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/usbctrltrf.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -I"../../../../../../../../../MCC18/h" -I".."    -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/usbctrltrf.o   ../usbctrltrf.c   
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/usbctrltrf.o 
	
${OBJECTDIR}/_ext/1472/usbdrv.o: ../usbdrv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/usbdrv.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -I"../../../../../../../../../MCC18/h" -I".."    -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/usbdrv.o   ../usbdrv.c   
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/usbdrv.o 
	
${OBJECTDIR}/_ext/1472/usbdsc.o: ../usbdsc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/usbdsc.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -I"../../../../../../../../../MCC18/h" -I".."    -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/usbdsc.o   ../usbdsc.c   
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/usbdsc.o 
	
${OBJECTDIR}/_ext/1472/usbmmap.o: ../usbmmap.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/usbmmap.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -I"../../../../../../../../../MCC18/h" -I".."    -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/usbmmap.o   ../usbmmap.c   
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/usbmmap.o 
	
${OBJECTDIR}/_ext/1472/Boot87J50Family.o: ../Boot87J50Family.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/Boot87J50Family.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -I"../../../../../../../../../MCC18/h" -I".."    -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/Boot87J50Family.o   ../Boot87J50Family.c   
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/Boot87J50Family.o 
	
else
${OBJECTDIR}/_ext/1472/hid.o: ../hid.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/hid.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"../../../../../../../../../MCC18/h" -I".."    -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/hid.o   ../hid.c   
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/hid.o 
	
${OBJECTDIR}/_ext/1472/main.o: ../main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"../../../../../../../../../MCC18/h" -I".."    -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/main.o   ../main.c   
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/main.o 
	
${OBJECTDIR}/_ext/1472/usb9.o: ../usb9.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/usb9.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"../../../../../../../../../MCC18/h" -I".."    -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/usb9.o   ../usb9.c   
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/usb9.o 
	
${OBJECTDIR}/_ext/1472/usbctrltrf.o: ../usbctrltrf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/usbctrltrf.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"../../../../../../../../../MCC18/h" -I".."    -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/usbctrltrf.o   ../usbctrltrf.c   
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/usbctrltrf.o 
	
${OBJECTDIR}/_ext/1472/usbdrv.o: ../usbdrv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/usbdrv.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"../../../../../../../../../MCC18/h" -I".."    -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/usbdrv.o   ../usbdrv.c   
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/usbdrv.o 
	
${OBJECTDIR}/_ext/1472/usbdsc.o: ../usbdsc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/usbdsc.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"../../../../../../../../../MCC18/h" -I".."    -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/usbdsc.o   ../usbdsc.c   
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/usbdsc.o 
	
${OBJECTDIR}/_ext/1472/usbmmap.o: ../usbmmap.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/usbmmap.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"../../../../../../../../../MCC18/h" -I".."    -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/usbmmap.o   ../usbmmap.c   
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/usbmmap.o 
	
${OBJECTDIR}/_ext/1472/Boot87J50Family.o: ../Boot87J50Family.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/Boot87J50Family.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"../../../../../../../../../MCC18/h" -I".."    -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/Boot87J50Family.o   ../Boot87J50Family.c   
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/Boot87J50Family.o 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE) "..\BootModified.18f87j50.lkr"  -p$(MP_PROCESSOR_OPTION_LD)  -w -x -u_DEBUG -w -l"../../../../../../../../../MCC18/lib"  -z__MPLAB_BUILD=1  -u_CRUNTIME -z__MPLAB_DEBUG=1 -z__MPLAB_DEBUGGER_ICD3=1 $(MP_LINKER_DEBUG_OPTION) -l ${MP_CC_DIR}\\..\\lib  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}   
else
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE) "..\BootModified.18f87j50.lkr"  -p$(MP_PROCESSOR_OPTION_LD)  -w  -w -l"../../../../../../../../../MCC18/lib"  -z__MPLAB_BUILD=1  -u_CRUNTIME -l ${MP_CC_DIR}\\..\\lib  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}   
endif


# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf:
	${RM} -r build/pic18f87j50_pim
	${RM} -r dist/pic18f87j50_pim

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
