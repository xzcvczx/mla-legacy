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
CND_CONF=PIC32_USB_Starter_Board_II
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
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/926206843/usb_host.o ${OBJECTDIR}/_ext/1991243579/usb_host_android.o ${OBJECTDIR}/_ext/1991243579/usb_host_android_protocol_v1.o ${OBJECTDIR}/_ext/1472/boot_commands.o ${OBJECTDIR}/_ext/1472/boot_hal_pic32.o ${OBJECTDIR}/_ext/1472/boot_regions_pic32.o ${OBJECTDIR}/_ext/1472/custom_bin_boot.o ${OBJECTDIR}/_ext/1472/main.o ${OBJECTDIR}/_ext/2048740170/timer.o ${OBJECTDIR}/_ext/1472/usb_config.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/926206843/usb_host.o.d ${OBJECTDIR}/_ext/1991243579/usb_host_android.o.d ${OBJECTDIR}/_ext/1991243579/usb_host_android_protocol_v1.o.d ${OBJECTDIR}/_ext/1472/boot_commands.o.d ${OBJECTDIR}/_ext/1472/boot_hal_pic32.o.d ${OBJECTDIR}/_ext/1472/boot_regions_pic32.o.d ${OBJECTDIR}/_ext/1472/custom_bin_boot.o.d ${OBJECTDIR}/_ext/1472/main.o.d ${OBJECTDIR}/_ext/2048740170/timer.o.d ${OBJECTDIR}/_ext/1472/usb_config.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/926206843/usb_host.o ${OBJECTDIR}/_ext/1991243579/usb_host_android.o ${OBJECTDIR}/_ext/1991243579/usb_host_android_protocol_v1.o ${OBJECTDIR}/_ext/1472/boot_commands.o ${OBJECTDIR}/_ext/1472/boot_hal_pic32.o ${OBJECTDIR}/_ext/1472/boot_regions_pic32.o ${OBJECTDIR}/_ext/1472/custom_bin_boot.o ${OBJECTDIR}/_ext/1472/main.o ${OBJECTDIR}/_ext/2048740170/timer.o ${OBJECTDIR}/_ext/1472/usb_config.o


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
MP_CC="C:\Program Files\Microchip\mplabc32\v2.02\bin\pic32-gcc.exe"
# MP_BC is not defined
MP_AS="C:\Program Files\Microchip\mplabc32\v2.02\bin\pic32-as.exe"
MP_LD="C:\Program Files\Microchip\mplabc32\v2.02\bin\pic32-ld.exe"
MP_AR="C:\Program Files\Microchip\mplabc32\v2.02\bin\pic32-ar.exe"
DEP_GEN=${MP_JAVA_PATH}java -jar "C:/Program Files/Microchip/MPLABX/mplab_ide/mplab_ide/modules/../../bin/extractobjectdependencies.jar" 
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps
MP_CC_DIR="C:\Program Files\Microchip\mplabc32\v2.02\bin"
# MP_BC_DIR is not defined
MP_AS_DIR="C:\Program Files\Microchip\mplabc32\v2.02\bin"
MP_LD_DIR="C:\Program Files\Microchip\mplabc32\v2.02\bin"
MP_AR_DIR="C:\Program Files\Microchip\mplabc32\v2.02\bin"
# MP_BC_DIR is not defined

.build-conf:  ${BUILD_SUBPROJECTS}
	${MAKE}  -f nbproject/Makefile-PIC32_USB_Starter_Board_II.mk dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX795F512L
MP_LINKER_FILE_OPTION=,--script="..\Bootloader Linker Files\PIC32\boot_android_PIC32MX_Os.ld"
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
${OBJECTDIR}/_ext/926206843/usb_host.o: ../../../../Microchip/USB/usb_host.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/926206843 
	@${RM} ${OBJECTDIR}/_ext/926206843/usb_host.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/926206843/usb_host.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DPIC32_USB_STARTER_KIT -I".." -I"../../../../Microchip/Include" -Os -MMD -MF "${OBJECTDIR}/_ext/926206843/usb_host.o.d" -o ${OBJECTDIR}/_ext/926206843/usb_host.o ../../../../Microchip/USB/usb_host.c  
	
${OBJECTDIR}/_ext/1991243579/usb_host_android.o: ../../../../Microchip/USB/Android\ Host\ Driver/usb_host_android.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1991243579 
	@${RM} ${OBJECTDIR}/_ext/1991243579/usb_host_android.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1991243579/usb_host_android.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DPIC32_USB_STARTER_KIT -I".." -I"../../../../Microchip/Include" -Os -MMD -MF "${OBJECTDIR}/_ext/1991243579/usb_host_android.o.d" -o ${OBJECTDIR}/_ext/1991243579/usb_host_android.o "../../../../Microchip/USB/Android Host Driver/usb_host_android.c"  
	
${OBJECTDIR}/_ext/1991243579/usb_host_android_protocol_v1.o: ../../../../Microchip/USB/Android\ Host\ Driver/usb_host_android_protocol_v1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1991243579 
	@${RM} ${OBJECTDIR}/_ext/1991243579/usb_host_android_protocol_v1.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1991243579/usb_host_android_protocol_v1.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DPIC32_USB_STARTER_KIT -I".." -I"../../../../Microchip/Include" -Os -MMD -MF "${OBJECTDIR}/_ext/1991243579/usb_host_android_protocol_v1.o.d" -o ${OBJECTDIR}/_ext/1991243579/usb_host_android_protocol_v1.o "../../../../Microchip/USB/Android Host Driver/usb_host_android_protocol_v1.c"  
	
${OBJECTDIR}/_ext/1472/boot_commands.o: ../boot_commands.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/boot_commands.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/boot_commands.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DPIC32_USB_STARTER_KIT -I".." -I"../../../../Microchip/Include" -Os -MMD -MF "${OBJECTDIR}/_ext/1472/boot_commands.o.d" -o ${OBJECTDIR}/_ext/1472/boot_commands.o ../boot_commands.c  
	
${OBJECTDIR}/_ext/1472/boot_hal_pic32.o: ../boot_hal_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/boot_hal_pic32.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/boot_hal_pic32.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DPIC32_USB_STARTER_KIT -I".." -I"../../../../Microchip/Include" -Os -MMD -MF "${OBJECTDIR}/_ext/1472/boot_hal_pic32.o.d" -o ${OBJECTDIR}/_ext/1472/boot_hal_pic32.o ../boot_hal_pic32.c  
	
${OBJECTDIR}/_ext/1472/boot_regions_pic32.o: ../boot_regions_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/boot_regions_pic32.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/boot_regions_pic32.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DPIC32_USB_STARTER_KIT -I".." -I"../../../../Microchip/Include" -Os -MMD -MF "${OBJECTDIR}/_ext/1472/boot_regions_pic32.o.d" -o ${OBJECTDIR}/_ext/1472/boot_regions_pic32.o ../boot_regions_pic32.c  
	
${OBJECTDIR}/_ext/1472/custom_bin_boot.o: ../custom_bin_boot.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/custom_bin_boot.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/custom_bin_boot.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DPIC32_USB_STARTER_KIT -I".." -I"../../../../Microchip/Include" -Os -MMD -MF "${OBJECTDIR}/_ext/1472/custom_bin_boot.o.d" -o ${OBJECTDIR}/_ext/1472/custom_bin_boot.o ../custom_bin_boot.c  
	
${OBJECTDIR}/_ext/1472/main.o: ../main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/main.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DPIC32_USB_STARTER_KIT -I".." -I"../../../../Microchip/Include" -Os -MMD -MF "${OBJECTDIR}/_ext/1472/main.o.d" -o ${OBJECTDIR}/_ext/1472/main.o ../main.c  
	
${OBJECTDIR}/_ext/2048740170/timer.o: ../../../../Microchip/Common/timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2048740170 
	@${RM} ${OBJECTDIR}/_ext/2048740170/timer.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2048740170/timer.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DPIC32_USB_STARTER_KIT -I".." -I"../../../../Microchip/Include" -Os -MMD -MF "${OBJECTDIR}/_ext/2048740170/timer.o.d" -o ${OBJECTDIR}/_ext/2048740170/timer.o ../../../../Microchip/Common/timer.c  
	
${OBJECTDIR}/_ext/1472/usb_config.o: ../usb_config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/usb_config.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/usb_config.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DPIC32_USB_STARTER_KIT -I".." -I"../../../../Microchip/Include" -Os -MMD -MF "${OBJECTDIR}/_ext/1472/usb_config.o.d" -o ${OBJECTDIR}/_ext/1472/usb_config.o ../usb_config.c  
	
else
${OBJECTDIR}/_ext/926206843/usb_host.o: ../../../../Microchip/USB/usb_host.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/926206843 
	@${RM} ${OBJECTDIR}/_ext/926206843/usb_host.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/926206843/usb_host.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DPIC32_USB_STARTER_KIT -I".." -I"../../../../Microchip/Include" -Os -MMD -MF "${OBJECTDIR}/_ext/926206843/usb_host.o.d" -o ${OBJECTDIR}/_ext/926206843/usb_host.o ../../../../Microchip/USB/usb_host.c  
	
${OBJECTDIR}/_ext/1991243579/usb_host_android.o: ../../../../Microchip/USB/Android\ Host\ Driver/usb_host_android.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1991243579 
	@${RM} ${OBJECTDIR}/_ext/1991243579/usb_host_android.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1991243579/usb_host_android.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DPIC32_USB_STARTER_KIT -I".." -I"../../../../Microchip/Include" -Os -MMD -MF "${OBJECTDIR}/_ext/1991243579/usb_host_android.o.d" -o ${OBJECTDIR}/_ext/1991243579/usb_host_android.o "../../../../Microchip/USB/Android Host Driver/usb_host_android.c"  
	
${OBJECTDIR}/_ext/1991243579/usb_host_android_protocol_v1.o: ../../../../Microchip/USB/Android\ Host\ Driver/usb_host_android_protocol_v1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1991243579 
	@${RM} ${OBJECTDIR}/_ext/1991243579/usb_host_android_protocol_v1.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1991243579/usb_host_android_protocol_v1.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DPIC32_USB_STARTER_KIT -I".." -I"../../../../Microchip/Include" -Os -MMD -MF "${OBJECTDIR}/_ext/1991243579/usb_host_android_protocol_v1.o.d" -o ${OBJECTDIR}/_ext/1991243579/usb_host_android_protocol_v1.o "../../../../Microchip/USB/Android Host Driver/usb_host_android_protocol_v1.c"  
	
${OBJECTDIR}/_ext/1472/boot_commands.o: ../boot_commands.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/boot_commands.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/boot_commands.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DPIC32_USB_STARTER_KIT -I".." -I"../../../../Microchip/Include" -Os -MMD -MF "${OBJECTDIR}/_ext/1472/boot_commands.o.d" -o ${OBJECTDIR}/_ext/1472/boot_commands.o ../boot_commands.c  
	
${OBJECTDIR}/_ext/1472/boot_hal_pic32.o: ../boot_hal_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/boot_hal_pic32.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/boot_hal_pic32.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DPIC32_USB_STARTER_KIT -I".." -I"../../../../Microchip/Include" -Os -MMD -MF "${OBJECTDIR}/_ext/1472/boot_hal_pic32.o.d" -o ${OBJECTDIR}/_ext/1472/boot_hal_pic32.o ../boot_hal_pic32.c  
	
${OBJECTDIR}/_ext/1472/boot_regions_pic32.o: ../boot_regions_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/boot_regions_pic32.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/boot_regions_pic32.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DPIC32_USB_STARTER_KIT -I".." -I"../../../../Microchip/Include" -Os -MMD -MF "${OBJECTDIR}/_ext/1472/boot_regions_pic32.o.d" -o ${OBJECTDIR}/_ext/1472/boot_regions_pic32.o ../boot_regions_pic32.c  
	
${OBJECTDIR}/_ext/1472/custom_bin_boot.o: ../custom_bin_boot.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/custom_bin_boot.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/custom_bin_boot.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DPIC32_USB_STARTER_KIT -I".." -I"../../../../Microchip/Include" -Os -MMD -MF "${OBJECTDIR}/_ext/1472/custom_bin_boot.o.d" -o ${OBJECTDIR}/_ext/1472/custom_bin_boot.o ../custom_bin_boot.c  
	
${OBJECTDIR}/_ext/1472/main.o: ../main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/main.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DPIC32_USB_STARTER_KIT -I".." -I"../../../../Microchip/Include" -Os -MMD -MF "${OBJECTDIR}/_ext/1472/main.o.d" -o ${OBJECTDIR}/_ext/1472/main.o ../main.c  
	
${OBJECTDIR}/_ext/2048740170/timer.o: ../../../../Microchip/Common/timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2048740170 
	@${RM} ${OBJECTDIR}/_ext/2048740170/timer.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2048740170/timer.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DPIC32_USB_STARTER_KIT -I".." -I"../../../../Microchip/Include" -Os -MMD -MF "${OBJECTDIR}/_ext/2048740170/timer.o.d" -o ${OBJECTDIR}/_ext/2048740170/timer.o ../../../../Microchip/Common/timer.c  
	
${OBJECTDIR}/_ext/1472/usb_config.o: ../usb_config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/usb_config.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/usb_config.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DPIC32_USB_STARTER_KIT -I".." -I"../../../../Microchip/Include" -Os -MMD -MF "${OBJECTDIR}/_ext/1472/usb_config.o.d" -o ${OBJECTDIR}/_ext/1472/usb_config.o ../usb_config.c  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_ICD3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}        -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,--defsym=_min_heap_size=3000,--report-mem "-mperipheral-libs"  
else
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}        -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=3000,--report-mem "-mperipheral-libs" 
	${MP_CC_DIR}\\pic32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  
endif


# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf:
	${RM} -r build/PIC32_USB_Starter_Board_II
	${RM} -r dist/PIC32_USB_Starter_Board_II

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
