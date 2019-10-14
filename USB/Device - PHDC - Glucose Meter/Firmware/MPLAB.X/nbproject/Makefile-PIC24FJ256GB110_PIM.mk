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
CND_CONF=PIC24FJ256GB110_PIM
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
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1753023725/usb_function_phdc_com_model.o ${OBJECTDIR}/_ext/926206843/usb_device.o ${OBJECTDIR}/_ext/1753023725/usb_function_phdc.o ${OBJECTDIR}/_ext/926206843/usb_hal_pic24.o ${OBJECTDIR}/_ext/1472/lcd_explorer16_board.o ${OBJECTDIR}/_ext/1472/main.o ${OBJECTDIR}/_ext/1472/usb_descriptors.o "${OBJECTDIR}/_ext/1472/Glucose Meter app.o"
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1753023725/usb_function_phdc_com_model.o.d ${OBJECTDIR}/_ext/926206843/usb_device.o.d ${OBJECTDIR}/_ext/1753023725/usb_function_phdc.o.d ${OBJECTDIR}/_ext/926206843/usb_hal_pic24.o.d ${OBJECTDIR}/_ext/1472/lcd_explorer16_board.o.d ${OBJECTDIR}/_ext/1472/main.o.d ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d "${OBJECTDIR}/_ext/1472/Glucose Meter app.o.d"

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1753023725/usb_function_phdc_com_model.o ${OBJECTDIR}/_ext/926206843/usb_device.o ${OBJECTDIR}/_ext/1753023725/usb_function_phdc.o ${OBJECTDIR}/_ext/926206843/usb_hal_pic24.o ${OBJECTDIR}/_ext/1472/lcd_explorer16_board.o ${OBJECTDIR}/_ext/1472/main.o ${OBJECTDIR}/_ext/1472/usb_descriptors.o ${OBJECTDIR}/_ext/1472/Glucose\ Meter\ app.o


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
	${MAKE}  -f nbproject/Makefile-PIC24FJ256GB110_PIM.mk dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ256GB110
MP_LINKER_FILE_OPTION=,-Tp24FJ256GB110.gld
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
${OBJECTDIR}/_ext/1753023725/usb_function_phdc_com_model.o: ../../../../Microchip/USB/PHDC\ Device\ Driver/usb_function_phdc_com_model.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1753023725 
	@${RM} ${OBJECTDIR}/_ext/1753023725/usb_function_phdc_com_model.o.d 
	@${RM} ${OBJECTDIR}/_ext/1753023725/usb_function_phdc_com_model.o.ok ${OBJECTDIR}/_ext/1753023725/usb_function_phdc_com_model.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1753023725/usb_function_phdc_com_model.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../../../Microchip/Include" -MMD -MF "${OBJECTDIR}/_ext/1753023725/usb_function_phdc_com_model.o.d" -o ${OBJECTDIR}/_ext/1753023725/usb_function_phdc_com_model.o "../../../../Microchip/USB/PHDC Device Driver/usb_function_phdc_com_model.c"  
	
${OBJECTDIR}/_ext/926206843/usb_device.o: ../../../../Microchip/USB/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/926206843 
	@${RM} ${OBJECTDIR}/_ext/926206843/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/926206843/usb_device.o.ok ${OBJECTDIR}/_ext/926206843/usb_device.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/926206843/usb_device.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../../../Microchip/Include" -MMD -MF "${OBJECTDIR}/_ext/926206843/usb_device.o.d" -o ${OBJECTDIR}/_ext/926206843/usb_device.o ../../../../Microchip/USB/usb_device.c  
	
${OBJECTDIR}/_ext/1753023725/usb_function_phdc.o: ../../../../Microchip/USB/PHDC\ Device\ Driver/usb_function_phdc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1753023725 
	@${RM} ${OBJECTDIR}/_ext/1753023725/usb_function_phdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1753023725/usb_function_phdc.o.ok ${OBJECTDIR}/_ext/1753023725/usb_function_phdc.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1753023725/usb_function_phdc.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../../../Microchip/Include" -MMD -MF "${OBJECTDIR}/_ext/1753023725/usb_function_phdc.o.d" -o ${OBJECTDIR}/_ext/1753023725/usb_function_phdc.o "../../../../Microchip/USB/PHDC Device Driver/usb_function_phdc.c"  
	
${OBJECTDIR}/_ext/926206843/usb_hal_pic24.o: ../../../../Microchip/USB/usb_hal_pic24.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/926206843 
	@${RM} ${OBJECTDIR}/_ext/926206843/usb_hal_pic24.o.d 
	@${RM} ${OBJECTDIR}/_ext/926206843/usb_hal_pic24.o.ok ${OBJECTDIR}/_ext/926206843/usb_hal_pic24.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/926206843/usb_hal_pic24.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../../../Microchip/Include" -MMD -MF "${OBJECTDIR}/_ext/926206843/usb_hal_pic24.o.d" -o ${OBJECTDIR}/_ext/926206843/usb_hal_pic24.o ../../../../Microchip/USB/usb_hal_pic24.c  
	
${OBJECTDIR}/_ext/1472/lcd_explorer16_board.o: ../lcd_explorer16_board.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/lcd_explorer16_board.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/lcd_explorer16_board.o.ok ${OBJECTDIR}/_ext/1472/lcd_explorer16_board.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/lcd_explorer16_board.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../../../Microchip/Include" -MMD -MF "${OBJECTDIR}/_ext/1472/lcd_explorer16_board.o.d" -o ${OBJECTDIR}/_ext/1472/lcd_explorer16_board.o ../lcd_explorer16_board.c  
	
${OBJECTDIR}/_ext/1472/main.o: ../main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.ok ${OBJECTDIR}/_ext/1472/main.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/main.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../../../Microchip/Include" -MMD -MF "${OBJECTDIR}/_ext/1472/main.o.d" -o ${OBJECTDIR}/_ext/1472/main.o ../main.c  
	
${OBJECTDIR}/_ext/1472/usb_descriptors.o: ../usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.ok ${OBJECTDIR}/_ext/1472/usb_descriptors.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/usb_descriptors.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../../../Microchip/Include" -MMD -MF "${OBJECTDIR}/_ext/1472/usb_descriptors.o.d" -o ${OBJECTDIR}/_ext/1472/usb_descriptors.o ../usb_descriptors.c  
	
${OBJECTDIR}/_ext/1472/Glucose\ Meter\ app.o: ../Glucose\ Meter\ app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/Glucose\ Meter\ app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Glucose\ Meter\ app.o.ok ${OBJECTDIR}/_ext/1472/Glucose\ Meter\ app.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/Glucose Meter app.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../../../Microchip/Include" -MMD -MF "${OBJECTDIR}/_ext/1472/Glucose Meter app.o.d" -o "${OBJECTDIR}/_ext/1472/Glucose Meter app.o" "../Glucose Meter app.c"  
	
else
${OBJECTDIR}/_ext/1753023725/usb_function_phdc_com_model.o: ../../../../Microchip/USB/PHDC\ Device\ Driver/usb_function_phdc_com_model.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1753023725 
	@${RM} ${OBJECTDIR}/_ext/1753023725/usb_function_phdc_com_model.o.d 
	@${RM} ${OBJECTDIR}/_ext/1753023725/usb_function_phdc_com_model.o.ok ${OBJECTDIR}/_ext/1753023725/usb_function_phdc_com_model.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1753023725/usb_function_phdc_com_model.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../../../Microchip/Include" -MMD -MF "${OBJECTDIR}/_ext/1753023725/usb_function_phdc_com_model.o.d" -o ${OBJECTDIR}/_ext/1753023725/usb_function_phdc_com_model.o "../../../../Microchip/USB/PHDC Device Driver/usb_function_phdc_com_model.c"  
	
${OBJECTDIR}/_ext/926206843/usb_device.o: ../../../../Microchip/USB/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/926206843 
	@${RM} ${OBJECTDIR}/_ext/926206843/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/926206843/usb_device.o.ok ${OBJECTDIR}/_ext/926206843/usb_device.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/926206843/usb_device.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../../../Microchip/Include" -MMD -MF "${OBJECTDIR}/_ext/926206843/usb_device.o.d" -o ${OBJECTDIR}/_ext/926206843/usb_device.o ../../../../Microchip/USB/usb_device.c  
	
${OBJECTDIR}/_ext/1753023725/usb_function_phdc.o: ../../../../Microchip/USB/PHDC\ Device\ Driver/usb_function_phdc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1753023725 
	@${RM} ${OBJECTDIR}/_ext/1753023725/usb_function_phdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1753023725/usb_function_phdc.o.ok ${OBJECTDIR}/_ext/1753023725/usb_function_phdc.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1753023725/usb_function_phdc.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../../../Microchip/Include" -MMD -MF "${OBJECTDIR}/_ext/1753023725/usb_function_phdc.o.d" -o ${OBJECTDIR}/_ext/1753023725/usb_function_phdc.o "../../../../Microchip/USB/PHDC Device Driver/usb_function_phdc.c"  
	
${OBJECTDIR}/_ext/926206843/usb_hal_pic24.o: ../../../../Microchip/USB/usb_hal_pic24.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/926206843 
	@${RM} ${OBJECTDIR}/_ext/926206843/usb_hal_pic24.o.d 
	@${RM} ${OBJECTDIR}/_ext/926206843/usb_hal_pic24.o.ok ${OBJECTDIR}/_ext/926206843/usb_hal_pic24.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/926206843/usb_hal_pic24.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../../../Microchip/Include" -MMD -MF "${OBJECTDIR}/_ext/926206843/usb_hal_pic24.o.d" -o ${OBJECTDIR}/_ext/926206843/usb_hal_pic24.o ../../../../Microchip/USB/usb_hal_pic24.c  
	
${OBJECTDIR}/_ext/1472/lcd_explorer16_board.o: ../lcd_explorer16_board.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/lcd_explorer16_board.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/lcd_explorer16_board.o.ok ${OBJECTDIR}/_ext/1472/lcd_explorer16_board.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/lcd_explorer16_board.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../../../Microchip/Include" -MMD -MF "${OBJECTDIR}/_ext/1472/lcd_explorer16_board.o.d" -o ${OBJECTDIR}/_ext/1472/lcd_explorer16_board.o ../lcd_explorer16_board.c  
	
${OBJECTDIR}/_ext/1472/main.o: ../main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.ok ${OBJECTDIR}/_ext/1472/main.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/main.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../../../Microchip/Include" -MMD -MF "${OBJECTDIR}/_ext/1472/main.o.d" -o ${OBJECTDIR}/_ext/1472/main.o ../main.c  
	
${OBJECTDIR}/_ext/1472/usb_descriptors.o: ../usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.ok ${OBJECTDIR}/_ext/1472/usb_descriptors.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/usb_descriptors.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../../../Microchip/Include" -MMD -MF "${OBJECTDIR}/_ext/1472/usb_descriptors.o.d" -o ${OBJECTDIR}/_ext/1472/usb_descriptors.o ../usb_descriptors.c  
	
${OBJECTDIR}/_ext/1472/Glucose\ Meter\ app.o: ../Glucose\ Meter\ app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/Glucose\ Meter\ app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Glucose\ Meter\ app.o.ok ${OBJECTDIR}/_ext/1472/Glucose\ Meter\ app.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/Glucose Meter app.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../../../Microchip/Include" -MMD -MF "${OBJECTDIR}/_ext/1472/Glucose Meter app.o.d" -o "${OBJECTDIR}/_ext/1472/Glucose Meter app.o" "../Glucose Meter app.c"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=coff -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}        -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1
else
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=coff -mcpu=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}        -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION)
	${MP_CC_DIR}\\pic30-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -omf=coff
endif


# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf:
	${RM} -r build/PIC24FJ256GB110_PIM
	${RM} -r dist/PIC24FJ256GB110_PIM

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
