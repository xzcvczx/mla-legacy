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
CND_CONF=PIC24FJ256GB110_PIM

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
OBJECTFILES=${OBJECTDIR}/_ext/2048740170/uart2.o ${OBJECTDIR}/_ext/1472/user.o ${OBJECTDIR}/_ext/1131872301/usb_host_generic.o ${OBJECTDIR}/_ext/1472/main.o ${OBJECTDIR}/_ext/1472/usb_descriptors.o ${OBJECTDIR}/_ext/926206843/usb_host.o ${OBJECTDIR}/_ext/2048740170/LCDBlocking.o ${OBJECTDIR}/_ext/1472/usb_config.o ${OBJECTDIR}/_ext/1472/temperature.o ${OBJECTDIR}/_ext/926206843/usb_otg.o ${OBJECTDIR}/_ext/926206843/usb_device.o


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

OS_ORIGINAL="MINGW32_NT-6.1"
OS_CURRENT="$(shell uname -s)"
############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
MP_CC=C:\\Program\ Files\ \(x86\)\\Microchip\\MPLAB\ C30\\bin\\pic30-gcc.exe
MP_AS=C:\\Program\ Files\ \(x86\)\\Microchip\\MPLAB\ C30\\bin\\pic30-as.exe
MP_LD=C:\\Program\ Files\ \(x86\)\\Microchip\\MPLAB\ C30\\bin\\pic30-ld.exe
MP_AR=C:\\Program\ Files\ \(x86\)\\Microchip\\MPLAB\ C30\\bin\\pic30-ar.exe
MP_CC_DIR=C:\\Program\ Files\ \(x86\)\\Microchip\\MPLAB\ C30\\bin
MP_AS_DIR=C:\\Program\ Files\ \(x86\)\\Microchip\\MPLAB\ C30\\bin
MP_LD_DIR=C:\\Program\ Files\ \(x86\)\\Microchip\\MPLAB\ C30\\bin
MP_AR_DIR=C:\\Program\ Files\ \(x86\)\\Microchip\\MPLAB\ C30\\bin
.build-conf: ${BUILD_SUBPROJECTS}
ifneq ($(OS_CURRENT),$(OS_ORIGINAL))
	@echo "***** WARNING: This make file contains OS dependent code. The OS this makefile is being run is different from the OS it was created in."
endif
	${MAKE}  -f nbproject/Makefile-PIC24FJ256GB110_PIM.mk dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/2048740170/uart2.o: ../../../../Microchip/Common/uart2.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/2048740170 
	${RM} ${OBJECTDIR}/_ext/2048740170/uart2.o.d 
	${MP_CC} -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=24FJ256GB110 -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/2048740170/uart2.o.d -o ${OBJECTDIR}/_ext/2048740170/uart2.o ../../../../Microchip/Common/uart2.c 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2048740170/uart2.o.d > ${OBJECTDIR}/_ext/2048740170/uart2.o.tmp
	${RM} ${OBJECTDIR}/_ext/2048740170/uart2.o.d 
	${CP} ${OBJECTDIR}/_ext/2048740170/uart2.o.tmp ${OBJECTDIR}/_ext/2048740170/uart2.o.d 
	${RM} ${OBJECTDIR}/_ext/2048740170/uart2.o.tmp}
else 
	 sed -e 's/\"//g' ${OBJECTDIR}/_ext/2048740170/uart2.o.d > ${OBJECTDIR}/_ext/2048740170/uart2.o.tmp
	${RM} ${OBJECTDIR}/_ext/2048740170/uart2.o.d 
	${CP} ${OBJECTDIR}/_ext/2048740170/uart2.o.tmp ${OBJECTDIR}/_ext/2048740170/uart2.o.d 
	${RM} ${OBJECTDIR}/_ext/2048740170/uart2.o.tmp}
endif
${OBJECTDIR}/_ext/1472/user.o: ../user.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/user.o.d 
	${MP_CC} -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=24FJ256GB110 -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/user.o.d -o ${OBJECTDIR}/_ext/1472/user.o ../user.c 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/user.o.d > ${OBJECTDIR}/_ext/1472/user.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/user.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/user.o.tmp ${OBJECTDIR}/_ext/1472/user.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/user.o.tmp}
else 
	 sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/user.o.d > ${OBJECTDIR}/_ext/1472/user.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/user.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/user.o.tmp ${OBJECTDIR}/_ext/1472/user.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/user.o.tmp}
endif
${OBJECTDIR}/_ext/1131872301/usb_host_generic.o: ../../../../Microchip/USB/Generic\ Host\ Driver/usb_host_generic.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1131872301 
	${RM} ${OBJECTDIR}/_ext/1131872301/usb_host_generic.o.d 
	${MP_CC} -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=24FJ256GB110 -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1131872301/usb_host_generic.o.d -o ${OBJECTDIR}/_ext/1131872301/usb_host_generic.o ../../../../Microchip/USB/Generic\ Host\ Driver/usb_host_generic.c 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1131872301/usb_host_generic.o.d > ${OBJECTDIR}/_ext/1131872301/usb_host_generic.o.tmp
	${RM} ${OBJECTDIR}/_ext/1131872301/usb_host_generic.o.d 
	${CP} ${OBJECTDIR}/_ext/1131872301/usb_host_generic.o.tmp ${OBJECTDIR}/_ext/1131872301/usb_host_generic.o.d 
	${RM} ${OBJECTDIR}/_ext/1131872301/usb_host_generic.o.tmp}
else 
	 sed -e 's/\"//g' ${OBJECTDIR}/_ext/1131872301/usb_host_generic.o.d > ${OBJECTDIR}/_ext/1131872301/usb_host_generic.o.tmp
	${RM} ${OBJECTDIR}/_ext/1131872301/usb_host_generic.o.d 
	${CP} ${OBJECTDIR}/_ext/1131872301/usb_host_generic.o.tmp ${OBJECTDIR}/_ext/1131872301/usb_host_generic.o.d 
	${RM} ${OBJECTDIR}/_ext/1131872301/usb_host_generic.o.tmp}
endif
${OBJECTDIR}/_ext/1472/main.o: ../main.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	${MP_CC} -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=24FJ256GB110 -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/main.o.d -o ${OBJECTDIR}/_ext/1472/main.o ../main.c 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/main.o.d > ${OBJECTDIR}/_ext/1472/main.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/main.o.tmp ${OBJECTDIR}/_ext/1472/main.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/main.o.tmp}
else 
	 sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/main.o.d > ${OBJECTDIR}/_ext/1472/main.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/main.o.tmp ${OBJECTDIR}/_ext/1472/main.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/main.o.tmp}
endif
${OBJECTDIR}/_ext/1472/usb_descriptors.o: ../usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d 
	${MP_CC} -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=24FJ256GB110 -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d -o ${OBJECTDIR}/_ext/1472/usb_descriptors.o ../usb_descriptors.c 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d > ${OBJECTDIR}/_ext/1472/usb_descriptors.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.tmp ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.tmp}
else 
	 sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d > ${OBJECTDIR}/_ext/1472/usb_descriptors.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.tmp ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.tmp}
endif
${OBJECTDIR}/_ext/926206843/usb_host.o: ../../../../Microchip/USB/usb_host.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/926206843 
	${RM} ${OBJECTDIR}/_ext/926206843/usb_host.o.d 
	${MP_CC} -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=24FJ256GB110 -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/926206843/usb_host.o.d -o ${OBJECTDIR}/_ext/926206843/usb_host.o ../../../../Microchip/USB/usb_host.c 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/926206843/usb_host.o.d > ${OBJECTDIR}/_ext/926206843/usb_host.o.tmp
	${RM} ${OBJECTDIR}/_ext/926206843/usb_host.o.d 
	${CP} ${OBJECTDIR}/_ext/926206843/usb_host.o.tmp ${OBJECTDIR}/_ext/926206843/usb_host.o.d 
	${RM} ${OBJECTDIR}/_ext/926206843/usb_host.o.tmp}
else 
	 sed -e 's/\"//g' ${OBJECTDIR}/_ext/926206843/usb_host.o.d > ${OBJECTDIR}/_ext/926206843/usb_host.o.tmp
	${RM} ${OBJECTDIR}/_ext/926206843/usb_host.o.d 
	${CP} ${OBJECTDIR}/_ext/926206843/usb_host.o.tmp ${OBJECTDIR}/_ext/926206843/usb_host.o.d 
	${RM} ${OBJECTDIR}/_ext/926206843/usb_host.o.tmp}
endif
${OBJECTDIR}/_ext/2048740170/LCDBlocking.o: ../../../../Microchip/Common/LCDBlocking.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/2048740170 
	${RM} ${OBJECTDIR}/_ext/2048740170/LCDBlocking.o.d 
	${MP_CC} -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=24FJ256GB110 -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/2048740170/LCDBlocking.o.d -o ${OBJECTDIR}/_ext/2048740170/LCDBlocking.o ../../../../Microchip/Common/LCDBlocking.c 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2048740170/LCDBlocking.o.d > ${OBJECTDIR}/_ext/2048740170/LCDBlocking.o.tmp
	${RM} ${OBJECTDIR}/_ext/2048740170/LCDBlocking.o.d 
	${CP} ${OBJECTDIR}/_ext/2048740170/LCDBlocking.o.tmp ${OBJECTDIR}/_ext/2048740170/LCDBlocking.o.d 
	${RM} ${OBJECTDIR}/_ext/2048740170/LCDBlocking.o.tmp}
else 
	 sed -e 's/\"//g' ${OBJECTDIR}/_ext/2048740170/LCDBlocking.o.d > ${OBJECTDIR}/_ext/2048740170/LCDBlocking.o.tmp
	${RM} ${OBJECTDIR}/_ext/2048740170/LCDBlocking.o.d 
	${CP} ${OBJECTDIR}/_ext/2048740170/LCDBlocking.o.tmp ${OBJECTDIR}/_ext/2048740170/LCDBlocking.o.d 
	${RM} ${OBJECTDIR}/_ext/2048740170/LCDBlocking.o.tmp}
endif
${OBJECTDIR}/_ext/1472/usb_config.o: ../usb_config.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/usb_config.o.d 
	${MP_CC} -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=24FJ256GB110 -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/usb_config.o.d -o ${OBJECTDIR}/_ext/1472/usb_config.o ../usb_config.c 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/usb_config.o.d > ${OBJECTDIR}/_ext/1472/usb_config.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/usb_config.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/usb_config.o.tmp ${OBJECTDIR}/_ext/1472/usb_config.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/usb_config.o.tmp}
else 
	 sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/usb_config.o.d > ${OBJECTDIR}/_ext/1472/usb_config.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/usb_config.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/usb_config.o.tmp ${OBJECTDIR}/_ext/1472/usb_config.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/usb_config.o.tmp}
endif
${OBJECTDIR}/_ext/1472/temperature.o: ../temperature.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/temperature.o.d 
	${MP_CC} -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=24FJ256GB110 -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/temperature.o.d -o ${OBJECTDIR}/_ext/1472/temperature.o ../temperature.c 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/temperature.o.d > ${OBJECTDIR}/_ext/1472/temperature.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/temperature.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/temperature.o.tmp ${OBJECTDIR}/_ext/1472/temperature.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/temperature.o.tmp}
else 
	 sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/temperature.o.d > ${OBJECTDIR}/_ext/1472/temperature.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/temperature.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/temperature.o.tmp ${OBJECTDIR}/_ext/1472/temperature.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/temperature.o.tmp}
endif
${OBJECTDIR}/_ext/926206843/usb_otg.o: ../../../../Microchip/USB/usb_otg.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/926206843 
	${RM} ${OBJECTDIR}/_ext/926206843/usb_otg.o.d 
	${MP_CC} -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=24FJ256GB110 -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/926206843/usb_otg.o.d -o ${OBJECTDIR}/_ext/926206843/usb_otg.o ../../../../Microchip/USB/usb_otg.c 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/926206843/usb_otg.o.d > ${OBJECTDIR}/_ext/926206843/usb_otg.o.tmp
	${RM} ${OBJECTDIR}/_ext/926206843/usb_otg.o.d 
	${CP} ${OBJECTDIR}/_ext/926206843/usb_otg.o.tmp ${OBJECTDIR}/_ext/926206843/usb_otg.o.d 
	${RM} ${OBJECTDIR}/_ext/926206843/usb_otg.o.tmp}
else 
	 sed -e 's/\"//g' ${OBJECTDIR}/_ext/926206843/usb_otg.o.d > ${OBJECTDIR}/_ext/926206843/usb_otg.o.tmp
	${RM} ${OBJECTDIR}/_ext/926206843/usb_otg.o.d 
	${CP} ${OBJECTDIR}/_ext/926206843/usb_otg.o.tmp ${OBJECTDIR}/_ext/926206843/usb_otg.o.d 
	${RM} ${OBJECTDIR}/_ext/926206843/usb_otg.o.tmp}
endif
${OBJECTDIR}/_ext/926206843/usb_device.o: ../../../../Microchip/USB/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/926206843 
	${RM} ${OBJECTDIR}/_ext/926206843/usb_device.o.d 
	${MP_CC} -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=24FJ256GB110 -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/926206843/usb_device.o.d -o ${OBJECTDIR}/_ext/926206843/usb_device.o ../../../../Microchip/USB/usb_device.c 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/926206843/usb_device.o.d > ${OBJECTDIR}/_ext/926206843/usb_device.o.tmp
	${RM} ${OBJECTDIR}/_ext/926206843/usb_device.o.d 
	${CP} ${OBJECTDIR}/_ext/926206843/usb_device.o.tmp ${OBJECTDIR}/_ext/926206843/usb_device.o.d 
	${RM} ${OBJECTDIR}/_ext/926206843/usb_device.o.tmp}
else 
	 sed -e 's/\"//g' ${OBJECTDIR}/_ext/926206843/usb_device.o.d > ${OBJECTDIR}/_ext/926206843/usb_device.o.tmp
	${RM} ${OBJECTDIR}/_ext/926206843/usb_device.o.d 
	${CP} ${OBJECTDIR}/_ext/926206843/usb_device.o.tmp ${OBJECTDIR}/_ext/926206843/usb_device.o.d 
	${RM} ${OBJECTDIR}/_ext/926206843/usb_device.o.tmp}
endif
else
${OBJECTDIR}/_ext/2048740170/uart2.o: ../../../../Microchip/Common/uart2.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/2048740170 
	${RM} ${OBJECTDIR}/_ext/2048740170/uart2.o.d 
	${MP_CC}  -omf=elf -x c -c -mcpu=24FJ256GB110 -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/2048740170/uart2.o.d -o ${OBJECTDIR}/_ext/2048740170/uart2.o ../../../../Microchip/Common/uart2.c 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2048740170/uart2.o.d > ${OBJECTDIR}/_ext/2048740170/uart2.o.tmp
	${RM} ${OBJECTDIR}/_ext/2048740170/uart2.o.d 
	${CP} ${OBJECTDIR}/_ext/2048740170/uart2.o.tmp ${OBJECTDIR}/_ext/2048740170/uart2.o.d 
	${RM} ${OBJECTDIR}/_ext/2048740170/uart2.o.tmp}
else 
	 sed -e 's/\"//g' ${OBJECTDIR}/_ext/2048740170/uart2.o.d > ${OBJECTDIR}/_ext/2048740170/uart2.o.tmp
	${RM} ${OBJECTDIR}/_ext/2048740170/uart2.o.d 
	${CP} ${OBJECTDIR}/_ext/2048740170/uart2.o.tmp ${OBJECTDIR}/_ext/2048740170/uart2.o.d 
	${RM} ${OBJECTDIR}/_ext/2048740170/uart2.o.tmp}
endif
${OBJECTDIR}/_ext/1472/user.o: ../user.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/user.o.d 
	${MP_CC}  -omf=elf -x c -c -mcpu=24FJ256GB110 -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/user.o.d -o ${OBJECTDIR}/_ext/1472/user.o ../user.c 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/user.o.d > ${OBJECTDIR}/_ext/1472/user.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/user.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/user.o.tmp ${OBJECTDIR}/_ext/1472/user.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/user.o.tmp}
else 
	 sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/user.o.d > ${OBJECTDIR}/_ext/1472/user.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/user.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/user.o.tmp ${OBJECTDIR}/_ext/1472/user.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/user.o.tmp}
endif
${OBJECTDIR}/_ext/1131872301/usb_host_generic.o: ../../../../Microchip/USB/Generic\ Host\ Driver/usb_host_generic.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1131872301 
	${RM} ${OBJECTDIR}/_ext/1131872301/usb_host_generic.o.d 
	${MP_CC}  -omf=elf -x c -c -mcpu=24FJ256GB110 -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1131872301/usb_host_generic.o.d -o ${OBJECTDIR}/_ext/1131872301/usb_host_generic.o ../../../../Microchip/USB/Generic\ Host\ Driver/usb_host_generic.c 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1131872301/usb_host_generic.o.d > ${OBJECTDIR}/_ext/1131872301/usb_host_generic.o.tmp
	${RM} ${OBJECTDIR}/_ext/1131872301/usb_host_generic.o.d 
	${CP} ${OBJECTDIR}/_ext/1131872301/usb_host_generic.o.tmp ${OBJECTDIR}/_ext/1131872301/usb_host_generic.o.d 
	${RM} ${OBJECTDIR}/_ext/1131872301/usb_host_generic.o.tmp}
else 
	 sed -e 's/\"//g' ${OBJECTDIR}/_ext/1131872301/usb_host_generic.o.d > ${OBJECTDIR}/_ext/1131872301/usb_host_generic.o.tmp
	${RM} ${OBJECTDIR}/_ext/1131872301/usb_host_generic.o.d 
	${CP} ${OBJECTDIR}/_ext/1131872301/usb_host_generic.o.tmp ${OBJECTDIR}/_ext/1131872301/usb_host_generic.o.d 
	${RM} ${OBJECTDIR}/_ext/1131872301/usb_host_generic.o.tmp}
endif
${OBJECTDIR}/_ext/1472/main.o: ../main.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	${MP_CC}  -omf=elf -x c -c -mcpu=24FJ256GB110 -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/main.o.d -o ${OBJECTDIR}/_ext/1472/main.o ../main.c 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/main.o.d > ${OBJECTDIR}/_ext/1472/main.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/main.o.tmp ${OBJECTDIR}/_ext/1472/main.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/main.o.tmp}
else 
	 sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/main.o.d > ${OBJECTDIR}/_ext/1472/main.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/main.o.tmp ${OBJECTDIR}/_ext/1472/main.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/main.o.tmp}
endif
${OBJECTDIR}/_ext/1472/usb_descriptors.o: ../usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d 
	${MP_CC}  -omf=elf -x c -c -mcpu=24FJ256GB110 -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d -o ${OBJECTDIR}/_ext/1472/usb_descriptors.o ../usb_descriptors.c 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d > ${OBJECTDIR}/_ext/1472/usb_descriptors.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.tmp ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.tmp}
else 
	 sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d > ${OBJECTDIR}/_ext/1472/usb_descriptors.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.tmp ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.tmp}
endif
${OBJECTDIR}/_ext/926206843/usb_host.o: ../../../../Microchip/USB/usb_host.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/926206843 
	${RM} ${OBJECTDIR}/_ext/926206843/usb_host.o.d 
	${MP_CC}  -omf=elf -x c -c -mcpu=24FJ256GB110 -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/926206843/usb_host.o.d -o ${OBJECTDIR}/_ext/926206843/usb_host.o ../../../../Microchip/USB/usb_host.c 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/926206843/usb_host.o.d > ${OBJECTDIR}/_ext/926206843/usb_host.o.tmp
	${RM} ${OBJECTDIR}/_ext/926206843/usb_host.o.d 
	${CP} ${OBJECTDIR}/_ext/926206843/usb_host.o.tmp ${OBJECTDIR}/_ext/926206843/usb_host.o.d 
	${RM} ${OBJECTDIR}/_ext/926206843/usb_host.o.tmp}
else 
	 sed -e 's/\"//g' ${OBJECTDIR}/_ext/926206843/usb_host.o.d > ${OBJECTDIR}/_ext/926206843/usb_host.o.tmp
	${RM} ${OBJECTDIR}/_ext/926206843/usb_host.o.d 
	${CP} ${OBJECTDIR}/_ext/926206843/usb_host.o.tmp ${OBJECTDIR}/_ext/926206843/usb_host.o.d 
	${RM} ${OBJECTDIR}/_ext/926206843/usb_host.o.tmp}
endif
${OBJECTDIR}/_ext/2048740170/LCDBlocking.o: ../../../../Microchip/Common/LCDBlocking.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/2048740170 
	${RM} ${OBJECTDIR}/_ext/2048740170/LCDBlocking.o.d 
	${MP_CC}  -omf=elf -x c -c -mcpu=24FJ256GB110 -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/2048740170/LCDBlocking.o.d -o ${OBJECTDIR}/_ext/2048740170/LCDBlocking.o ../../../../Microchip/Common/LCDBlocking.c 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2048740170/LCDBlocking.o.d > ${OBJECTDIR}/_ext/2048740170/LCDBlocking.o.tmp
	${RM} ${OBJECTDIR}/_ext/2048740170/LCDBlocking.o.d 
	${CP} ${OBJECTDIR}/_ext/2048740170/LCDBlocking.o.tmp ${OBJECTDIR}/_ext/2048740170/LCDBlocking.o.d 
	${RM} ${OBJECTDIR}/_ext/2048740170/LCDBlocking.o.tmp}
else 
	 sed -e 's/\"//g' ${OBJECTDIR}/_ext/2048740170/LCDBlocking.o.d > ${OBJECTDIR}/_ext/2048740170/LCDBlocking.o.tmp
	${RM} ${OBJECTDIR}/_ext/2048740170/LCDBlocking.o.d 
	${CP} ${OBJECTDIR}/_ext/2048740170/LCDBlocking.o.tmp ${OBJECTDIR}/_ext/2048740170/LCDBlocking.o.d 
	${RM} ${OBJECTDIR}/_ext/2048740170/LCDBlocking.o.tmp}
endif
${OBJECTDIR}/_ext/1472/usb_config.o: ../usb_config.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/usb_config.o.d 
	${MP_CC}  -omf=elf -x c -c -mcpu=24FJ256GB110 -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/usb_config.o.d -o ${OBJECTDIR}/_ext/1472/usb_config.o ../usb_config.c 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/usb_config.o.d > ${OBJECTDIR}/_ext/1472/usb_config.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/usb_config.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/usb_config.o.tmp ${OBJECTDIR}/_ext/1472/usb_config.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/usb_config.o.tmp}
else 
	 sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/usb_config.o.d > ${OBJECTDIR}/_ext/1472/usb_config.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/usb_config.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/usb_config.o.tmp ${OBJECTDIR}/_ext/1472/usb_config.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/usb_config.o.tmp}
endif
${OBJECTDIR}/_ext/1472/temperature.o: ../temperature.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/temperature.o.d 
	${MP_CC}  -omf=elf -x c -c -mcpu=24FJ256GB110 -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/temperature.o.d -o ${OBJECTDIR}/_ext/1472/temperature.o ../temperature.c 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/temperature.o.d > ${OBJECTDIR}/_ext/1472/temperature.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/temperature.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/temperature.o.tmp ${OBJECTDIR}/_ext/1472/temperature.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/temperature.o.tmp}
else 
	 sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/temperature.o.d > ${OBJECTDIR}/_ext/1472/temperature.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/temperature.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/temperature.o.tmp ${OBJECTDIR}/_ext/1472/temperature.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/temperature.o.tmp}
endif
${OBJECTDIR}/_ext/926206843/usb_otg.o: ../../../../Microchip/USB/usb_otg.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/926206843 
	${RM} ${OBJECTDIR}/_ext/926206843/usb_otg.o.d 
	${MP_CC}  -omf=elf -x c -c -mcpu=24FJ256GB110 -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/926206843/usb_otg.o.d -o ${OBJECTDIR}/_ext/926206843/usb_otg.o ../../../../Microchip/USB/usb_otg.c 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/926206843/usb_otg.o.d > ${OBJECTDIR}/_ext/926206843/usb_otg.o.tmp
	${RM} ${OBJECTDIR}/_ext/926206843/usb_otg.o.d 
	${CP} ${OBJECTDIR}/_ext/926206843/usb_otg.o.tmp ${OBJECTDIR}/_ext/926206843/usb_otg.o.d 
	${RM} ${OBJECTDIR}/_ext/926206843/usb_otg.o.tmp}
else 
	 sed -e 's/\"//g' ${OBJECTDIR}/_ext/926206843/usb_otg.o.d > ${OBJECTDIR}/_ext/926206843/usb_otg.o.tmp
	${RM} ${OBJECTDIR}/_ext/926206843/usb_otg.o.d 
	${CP} ${OBJECTDIR}/_ext/926206843/usb_otg.o.tmp ${OBJECTDIR}/_ext/926206843/usb_otg.o.d 
	${RM} ${OBJECTDIR}/_ext/926206843/usb_otg.o.tmp}
endif
${OBJECTDIR}/_ext/926206843/usb_device.o: ../../../../Microchip/USB/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/926206843 
	${RM} ${OBJECTDIR}/_ext/926206843/usb_device.o.d 
	${MP_CC}  -omf=elf -x c -c -mcpu=24FJ256GB110 -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/926206843/usb_device.o.d -o ${OBJECTDIR}/_ext/926206843/usb_device.o ../../../../Microchip/USB/usb_device.c 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/926206843/usb_device.o.d > ${OBJECTDIR}/_ext/926206843/usb_device.o.tmp
	${RM} ${OBJECTDIR}/_ext/926206843/usb_device.o.d 
	${CP} ${OBJECTDIR}/_ext/926206843/usb_device.o.tmp ${OBJECTDIR}/_ext/926206843/usb_device.o.d 
	${RM} ${OBJECTDIR}/_ext/926206843/usb_device.o.tmp}
else 
	 sed -e 's/\"//g' ${OBJECTDIR}/_ext/926206843/usb_device.o.d > ${OBJECTDIR}/_ext/926206843/usb_device.o.tmp
	${RM} ${OBJECTDIR}/_ext/926206843/usb_device.o.d 
	${CP} ${OBJECTDIR}/_ext/926206843/usb_device.o.tmp ${OBJECTDIR}/_ext/926206843/usb_device.o.d 
	${RM} ${OBJECTDIR}/_ext/926206843/usb_device.o.tmp}
endif
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC}  -omf=elf  -mcpu=24FJ256GB110  -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf ${OBJECTFILES}      -Wl,--defsym=__MPLAB_BUILD=1,-Tp24FJ256GB110.gld,--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_REAL_ICE=1,--heap=2000
else
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC}  -omf=elf  -mcpu=24FJ256GB110  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf ${OBJECTFILES}      -Wl,--defsym=__MPLAB_BUILD=1,-Tp24FJ256GB110.gld,--heap=2000
	${MP_CC_DIR}\\pic30-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf -omf=elf
endif


# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf:
	${RM} -r build/PIC24FJ256GB110_PIM
	${RM} -r dist
# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc