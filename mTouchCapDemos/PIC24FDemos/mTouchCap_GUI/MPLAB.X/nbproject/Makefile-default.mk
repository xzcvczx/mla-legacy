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
OBJECTFILES=${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_buf.o ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI.o ${OBJECTDIR}/_ext/1907416406/mTouchCap_2Ch_Slider.o ${OBJECTDIR}/_ext/1907416406/mTouchCap_4Ch_Slider.o ${OBJECTDIR}/_ext/1907416406/Display.o ${OBJECTDIR}/_ext/274675202/mTouchCap_PIC24_CTMU_Physical.o ${OBJECTDIR}/_ext/1907416406/mTouchCap_MatrixKeys.o ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_commn.o ${OBJECTDIR}/_ext/1472/usb_descriptors.o ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_touch.o ${OBJECTDIR}/_ext/274675202/mTouchCap_Timers.o ${OBJECTDIR}/_ext/1907416406/mTouchCap_DirectKeys.o ${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.o ${OBJECTDIR}/_ext/926206843/usb_device.o ${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.o ${OBJECTDIR}/_ext/1785203669/usb_function_hid.o


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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf

MP_PROCESSOR_OPTION=24FJ128GB106
MP_LINKER_FILE_OPTION=,-Tp24FJ128GB106.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_buf.o: ../mTouchCap_PIC24F_GUI_buf.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_buf.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../mTouchCap_Combo_Demo" -I"../../../../Microchip/Include/USB" -I"../../../../Microchip/Include" -I"../../mTouchCap_AppCommonFiles" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_buf.o.d -o ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_buf.o ../mTouchCap_PIC24F_GUI_buf.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_buf.o.d > ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_buf.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_buf.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_buf.o.tmp ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_buf.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_buf.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_buf.o.d > ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_buf.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_buf.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_buf.o.tmp ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_buf.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_buf.o.tmp
endif
${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI.o: ../mTouchCap_PIC24F_GUI.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../mTouchCap_Combo_Demo" -I"../../../../Microchip/Include/USB" -I"../../../../Microchip/Include" -I"../../mTouchCap_AppCommonFiles" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI.o.d -o ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI.o ../mTouchCap_PIC24F_GUI.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI.o.d > ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI.o.tmp ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI.o.d > ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI.o.tmp ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI.o.tmp
endif
${OBJECTDIR}/_ext/1907416406/mTouchCap_2Ch_Slider.o: ../../mTouchCap_AppCommonFiles/mTouchCap_2Ch_Slider.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1907416406 
	${RM} ${OBJECTDIR}/_ext/1907416406/mTouchCap_2Ch_Slider.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../mTouchCap_Combo_Demo" -I"../../../../Microchip/Include/USB" -I"../../../../Microchip/Include" -I"../../mTouchCap_AppCommonFiles" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/1907416406/mTouchCap_2Ch_Slider.o.d -o ${OBJECTDIR}/_ext/1907416406/mTouchCap_2Ch_Slider.o ../../mTouchCap_AppCommonFiles/mTouchCap_2Ch_Slider.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1907416406/mTouchCap_2Ch_Slider.o.d > ${OBJECTDIR}/_ext/1907416406/mTouchCap_2Ch_Slider.o.tmp
	${RM} ${OBJECTDIR}/_ext/1907416406/mTouchCap_2Ch_Slider.o.d 
	${CP} ${OBJECTDIR}/_ext/1907416406/mTouchCap_2Ch_Slider.o.tmp ${OBJECTDIR}/_ext/1907416406/mTouchCap_2Ch_Slider.o.d 
	${RM} ${OBJECTDIR}/_ext/1907416406/mTouchCap_2Ch_Slider.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1907416406/mTouchCap_2Ch_Slider.o.d > ${OBJECTDIR}/_ext/1907416406/mTouchCap_2Ch_Slider.o.tmp
	${RM} ${OBJECTDIR}/_ext/1907416406/mTouchCap_2Ch_Slider.o.d 
	${CP} ${OBJECTDIR}/_ext/1907416406/mTouchCap_2Ch_Slider.o.tmp ${OBJECTDIR}/_ext/1907416406/mTouchCap_2Ch_Slider.o.d 
	${RM} ${OBJECTDIR}/_ext/1907416406/mTouchCap_2Ch_Slider.o.tmp
endif
${OBJECTDIR}/_ext/1907416406/mTouchCap_4Ch_Slider.o: ../../mTouchCap_AppCommonFiles/mTouchCap_4Ch_Slider.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1907416406 
	${RM} ${OBJECTDIR}/_ext/1907416406/mTouchCap_4Ch_Slider.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../mTouchCap_Combo_Demo" -I"../../../../Microchip/Include/USB" -I"../../../../Microchip/Include" -I"../../mTouchCap_AppCommonFiles" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/1907416406/mTouchCap_4Ch_Slider.o.d -o ${OBJECTDIR}/_ext/1907416406/mTouchCap_4Ch_Slider.o ../../mTouchCap_AppCommonFiles/mTouchCap_4Ch_Slider.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1907416406/mTouchCap_4Ch_Slider.o.d > ${OBJECTDIR}/_ext/1907416406/mTouchCap_4Ch_Slider.o.tmp
	${RM} ${OBJECTDIR}/_ext/1907416406/mTouchCap_4Ch_Slider.o.d 
	${CP} ${OBJECTDIR}/_ext/1907416406/mTouchCap_4Ch_Slider.o.tmp ${OBJECTDIR}/_ext/1907416406/mTouchCap_4Ch_Slider.o.d 
	${RM} ${OBJECTDIR}/_ext/1907416406/mTouchCap_4Ch_Slider.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1907416406/mTouchCap_4Ch_Slider.o.d > ${OBJECTDIR}/_ext/1907416406/mTouchCap_4Ch_Slider.o.tmp
	${RM} ${OBJECTDIR}/_ext/1907416406/mTouchCap_4Ch_Slider.o.d 
	${CP} ${OBJECTDIR}/_ext/1907416406/mTouchCap_4Ch_Slider.o.tmp ${OBJECTDIR}/_ext/1907416406/mTouchCap_4Ch_Slider.o.d 
	${RM} ${OBJECTDIR}/_ext/1907416406/mTouchCap_4Ch_Slider.o.tmp
endif
${OBJECTDIR}/_ext/1907416406/Display.o: ../../mTouchCap_AppCommonFiles/Display.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1907416406 
	${RM} ${OBJECTDIR}/_ext/1907416406/Display.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../mTouchCap_Combo_Demo" -I"../../../../Microchip/Include/USB" -I"../../../../Microchip/Include" -I"../../mTouchCap_AppCommonFiles" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/1907416406/Display.o.d -o ${OBJECTDIR}/_ext/1907416406/Display.o ../../mTouchCap_AppCommonFiles/Display.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1907416406/Display.o.d > ${OBJECTDIR}/_ext/1907416406/Display.o.tmp
	${RM} ${OBJECTDIR}/_ext/1907416406/Display.o.d 
	${CP} ${OBJECTDIR}/_ext/1907416406/Display.o.tmp ${OBJECTDIR}/_ext/1907416406/Display.o.d 
	${RM} ${OBJECTDIR}/_ext/1907416406/Display.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1907416406/Display.o.d > ${OBJECTDIR}/_ext/1907416406/Display.o.tmp
	${RM} ${OBJECTDIR}/_ext/1907416406/Display.o.d 
	${CP} ${OBJECTDIR}/_ext/1907416406/Display.o.tmp ${OBJECTDIR}/_ext/1907416406/Display.o.d 
	${RM} ${OBJECTDIR}/_ext/1907416406/Display.o.tmp
endif
${OBJECTDIR}/_ext/274675202/mTouchCap_PIC24_CTMU_Physical.o: ../../../../Microchip/mTouchCap/PIC18F_PIC24F\ CTMU\ Library/mTouchCap_PIC24_CTMU_Physical.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/274675202 
	${RM} ${OBJECTDIR}/_ext/274675202/mTouchCap_PIC24_CTMU_Physical.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../mTouchCap_Combo_Demo" -I"../../../../Microchip/Include/USB" -I"../../../../Microchip/Include" -I"../../mTouchCap_AppCommonFiles" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/274675202/mTouchCap_PIC24_CTMU_Physical.o.d -o ${OBJECTDIR}/_ext/274675202/mTouchCap_PIC24_CTMU_Physical.o ../../../../Microchip/mTouchCap/PIC18F_PIC24F\ CTMU\ Library/mTouchCap_PIC24_CTMU_Physical.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/274675202/mTouchCap_PIC24_CTMU_Physical.o.d > ${OBJECTDIR}/_ext/274675202/mTouchCap_PIC24_CTMU_Physical.o.tmp
	${RM} ${OBJECTDIR}/_ext/274675202/mTouchCap_PIC24_CTMU_Physical.o.d 
	${CP} ${OBJECTDIR}/_ext/274675202/mTouchCap_PIC24_CTMU_Physical.o.tmp ${OBJECTDIR}/_ext/274675202/mTouchCap_PIC24_CTMU_Physical.o.d 
	${RM} ${OBJECTDIR}/_ext/274675202/mTouchCap_PIC24_CTMU_Physical.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/274675202/mTouchCap_PIC24_CTMU_Physical.o.d > ${OBJECTDIR}/_ext/274675202/mTouchCap_PIC24_CTMU_Physical.o.tmp
	${RM} ${OBJECTDIR}/_ext/274675202/mTouchCap_PIC24_CTMU_Physical.o.d 
	${CP} ${OBJECTDIR}/_ext/274675202/mTouchCap_PIC24_CTMU_Physical.o.tmp ${OBJECTDIR}/_ext/274675202/mTouchCap_PIC24_CTMU_Physical.o.d 
	${RM} ${OBJECTDIR}/_ext/274675202/mTouchCap_PIC24_CTMU_Physical.o.tmp
endif
${OBJECTDIR}/_ext/1907416406/mTouchCap_MatrixKeys.o: ../../mTouchCap_AppCommonFiles/mTouchCap_MatrixKeys.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1907416406 
	${RM} ${OBJECTDIR}/_ext/1907416406/mTouchCap_MatrixKeys.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../mTouchCap_Combo_Demo" -I"../../../../Microchip/Include/USB" -I"../../../../Microchip/Include" -I"../../mTouchCap_AppCommonFiles" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/1907416406/mTouchCap_MatrixKeys.o.d -o ${OBJECTDIR}/_ext/1907416406/mTouchCap_MatrixKeys.o ../../mTouchCap_AppCommonFiles/mTouchCap_MatrixKeys.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1907416406/mTouchCap_MatrixKeys.o.d > ${OBJECTDIR}/_ext/1907416406/mTouchCap_MatrixKeys.o.tmp
	${RM} ${OBJECTDIR}/_ext/1907416406/mTouchCap_MatrixKeys.o.d 
	${CP} ${OBJECTDIR}/_ext/1907416406/mTouchCap_MatrixKeys.o.tmp ${OBJECTDIR}/_ext/1907416406/mTouchCap_MatrixKeys.o.d 
	${RM} ${OBJECTDIR}/_ext/1907416406/mTouchCap_MatrixKeys.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1907416406/mTouchCap_MatrixKeys.o.d > ${OBJECTDIR}/_ext/1907416406/mTouchCap_MatrixKeys.o.tmp
	${RM} ${OBJECTDIR}/_ext/1907416406/mTouchCap_MatrixKeys.o.d 
	${CP} ${OBJECTDIR}/_ext/1907416406/mTouchCap_MatrixKeys.o.tmp ${OBJECTDIR}/_ext/1907416406/mTouchCap_MatrixKeys.o.d 
	${RM} ${OBJECTDIR}/_ext/1907416406/mTouchCap_MatrixKeys.o.tmp
endif
${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_commn.o: ../mTouchCap_PIC24F_GUI_commn.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_commn.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../mTouchCap_Combo_Demo" -I"../../../../Microchip/Include/USB" -I"../../../../Microchip/Include" -I"../../mTouchCap_AppCommonFiles" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_commn.o.d -o ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_commn.o ../mTouchCap_PIC24F_GUI_commn.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_commn.o.d > ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_commn.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_commn.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_commn.o.tmp ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_commn.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_commn.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_commn.o.d > ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_commn.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_commn.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_commn.o.tmp ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_commn.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_commn.o.tmp
endif
${OBJECTDIR}/_ext/1472/usb_descriptors.o: ../usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../mTouchCap_Combo_Demo" -I"../../../../Microchip/Include/USB" -I"../../../../Microchip/Include" -I"../../mTouchCap_AppCommonFiles" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d -o ${OBJECTDIR}/_ext/1472/usb_descriptors.o ../usb_descriptors.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d > ${OBJECTDIR}/_ext/1472/usb_descriptors.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.tmp ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d > ${OBJECTDIR}/_ext/1472/usb_descriptors.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.tmp ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.tmp
endif
${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_touch.o: ../mTouchCap_PIC24F_GUI_touch.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_touch.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../mTouchCap_Combo_Demo" -I"../../../../Microchip/Include/USB" -I"../../../../Microchip/Include" -I"../../mTouchCap_AppCommonFiles" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_touch.o.d -o ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_touch.o ../mTouchCap_PIC24F_GUI_touch.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_touch.o.d > ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_touch.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_touch.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_touch.o.tmp ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_touch.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_touch.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_touch.o.d > ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_touch.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_touch.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_touch.o.tmp ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_touch.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_touch.o.tmp
endif
${OBJECTDIR}/_ext/274675202/mTouchCap_Timers.o: ../../../../Microchip/mTouchCap/PIC18F_PIC24F\ CTMU\ Library/mTouchCap_Timers.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/274675202 
	${RM} ${OBJECTDIR}/_ext/274675202/mTouchCap_Timers.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../mTouchCap_Combo_Demo" -I"../../../../Microchip/Include/USB" -I"../../../../Microchip/Include" -I"../../mTouchCap_AppCommonFiles" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/274675202/mTouchCap_Timers.o.d -o ${OBJECTDIR}/_ext/274675202/mTouchCap_Timers.o ../../../../Microchip/mTouchCap/PIC18F_PIC24F\ CTMU\ Library/mTouchCap_Timers.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/274675202/mTouchCap_Timers.o.d > ${OBJECTDIR}/_ext/274675202/mTouchCap_Timers.o.tmp
	${RM} ${OBJECTDIR}/_ext/274675202/mTouchCap_Timers.o.d 
	${CP} ${OBJECTDIR}/_ext/274675202/mTouchCap_Timers.o.tmp ${OBJECTDIR}/_ext/274675202/mTouchCap_Timers.o.d 
	${RM} ${OBJECTDIR}/_ext/274675202/mTouchCap_Timers.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/274675202/mTouchCap_Timers.o.d > ${OBJECTDIR}/_ext/274675202/mTouchCap_Timers.o.tmp
	${RM} ${OBJECTDIR}/_ext/274675202/mTouchCap_Timers.o.d 
	${CP} ${OBJECTDIR}/_ext/274675202/mTouchCap_Timers.o.tmp ${OBJECTDIR}/_ext/274675202/mTouchCap_Timers.o.d 
	${RM} ${OBJECTDIR}/_ext/274675202/mTouchCap_Timers.o.tmp
endif
${OBJECTDIR}/_ext/1907416406/mTouchCap_DirectKeys.o: ../../mTouchCap_AppCommonFiles/mTouchCap_DirectKeys.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1907416406 
	${RM} ${OBJECTDIR}/_ext/1907416406/mTouchCap_DirectKeys.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../mTouchCap_Combo_Demo" -I"../../../../Microchip/Include/USB" -I"../../../../Microchip/Include" -I"../../mTouchCap_AppCommonFiles" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/1907416406/mTouchCap_DirectKeys.o.d -o ${OBJECTDIR}/_ext/1907416406/mTouchCap_DirectKeys.o ../../mTouchCap_AppCommonFiles/mTouchCap_DirectKeys.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1907416406/mTouchCap_DirectKeys.o.d > ${OBJECTDIR}/_ext/1907416406/mTouchCap_DirectKeys.o.tmp
	${RM} ${OBJECTDIR}/_ext/1907416406/mTouchCap_DirectKeys.o.d 
	${CP} ${OBJECTDIR}/_ext/1907416406/mTouchCap_DirectKeys.o.tmp ${OBJECTDIR}/_ext/1907416406/mTouchCap_DirectKeys.o.d 
	${RM} ${OBJECTDIR}/_ext/1907416406/mTouchCap_DirectKeys.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1907416406/mTouchCap_DirectKeys.o.d > ${OBJECTDIR}/_ext/1907416406/mTouchCap_DirectKeys.o.tmp
	${RM} ${OBJECTDIR}/_ext/1907416406/mTouchCap_DirectKeys.o.d 
	${CP} ${OBJECTDIR}/_ext/1907416406/mTouchCap_DirectKeys.o.tmp ${OBJECTDIR}/_ext/1907416406/mTouchCap_DirectKeys.o.d 
	${RM} ${OBJECTDIR}/_ext/1907416406/mTouchCap_DirectKeys.o.tmp
endif
${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.o: ../../../../Microchip/mTouchCap/PIC18F_PIC24F\ CTMU\ Library/mTouchCap_Adc.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/274675202 
	${RM} ${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../mTouchCap_Combo_Demo" -I"../../../../Microchip/Include/USB" -I"../../../../Microchip/Include" -I"../../mTouchCap_AppCommonFiles" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.o.d -o ${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.o ../../../../Microchip/mTouchCap/PIC18F_PIC24F\ CTMU\ Library/mTouchCap_Adc.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.o.d > ${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.o.tmp
	${RM} ${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.o.d 
	${CP} ${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.o.tmp ${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.o.d 
	${RM} ${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.o.d > ${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.o.tmp
	${RM} ${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.o.d 
	${CP} ${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.o.tmp ${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.o.d 
	${RM} ${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.o.tmp
endif
${OBJECTDIR}/_ext/926206843/usb_device.o: ../../../../Microchip/USB/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/926206843 
	${RM} ${OBJECTDIR}/_ext/926206843/usb_device.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../mTouchCap_Combo_Demo" -I"../../../../Microchip/Include/USB" -I"../../../../Microchip/Include" -I"../../mTouchCap_AppCommonFiles" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/926206843/usb_device.o.d -o ${OBJECTDIR}/_ext/926206843/usb_device.o ../../../../Microchip/USB/usb_device.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/926206843/usb_device.o.d > ${OBJECTDIR}/_ext/926206843/usb_device.o.tmp
	${RM} ${OBJECTDIR}/_ext/926206843/usb_device.o.d 
	${CP} ${OBJECTDIR}/_ext/926206843/usb_device.o.tmp ${OBJECTDIR}/_ext/926206843/usb_device.o.d 
	${RM} ${OBJECTDIR}/_ext/926206843/usb_device.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/926206843/usb_device.o.d > ${OBJECTDIR}/_ext/926206843/usb_device.o.tmp
	${RM} ${OBJECTDIR}/_ext/926206843/usb_device.o.d 
	${CP} ${OBJECTDIR}/_ext/926206843/usb_device.o.tmp ${OBJECTDIR}/_ext/926206843/usb_device.o.d 
	${RM} ${OBJECTDIR}/_ext/926206843/usb_device.o.tmp
endif
${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.o: ../../../../Microchip/mTouchCap/PIC18F_PIC24F\ CTMU\ Library/mTouchCap_CtmuAPI.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/274675202 
	${RM} ${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../mTouchCap_Combo_Demo" -I"../../../../Microchip/Include/USB" -I"../../../../Microchip/Include" -I"../../mTouchCap_AppCommonFiles" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.o.d -o ${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.o ../../../../Microchip/mTouchCap/PIC18F_PIC24F\ CTMU\ Library/mTouchCap_CtmuAPI.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.o.d > ${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.o.tmp
	${RM} ${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.o.d 
	${CP} ${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.o.tmp ${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.o.d 
	${RM} ${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.o.d > ${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.o.tmp
	${RM} ${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.o.d 
	${CP} ${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.o.tmp ${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.o.d 
	${RM} ${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.o.tmp
endif
${OBJECTDIR}/_ext/1785203669/usb_function_hid.o: ../../../../Microchip/USB/HID\ Device\ Driver/usb_function_hid.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1785203669 
	${RM} ${OBJECTDIR}/_ext/1785203669/usb_function_hid.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../mTouchCap_Combo_Demo" -I"../../../../Microchip/Include/USB" -I"../../../../Microchip/Include" -I"../../mTouchCap_AppCommonFiles" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/1785203669/usb_function_hid.o.d -o ${OBJECTDIR}/_ext/1785203669/usb_function_hid.o ../../../../Microchip/USB/HID\ Device\ Driver/usb_function_hid.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1785203669/usb_function_hid.o.d > ${OBJECTDIR}/_ext/1785203669/usb_function_hid.o.tmp
	${RM} ${OBJECTDIR}/_ext/1785203669/usb_function_hid.o.d 
	${CP} ${OBJECTDIR}/_ext/1785203669/usb_function_hid.o.tmp ${OBJECTDIR}/_ext/1785203669/usb_function_hid.o.d 
	${RM} ${OBJECTDIR}/_ext/1785203669/usb_function_hid.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1785203669/usb_function_hid.o.d > ${OBJECTDIR}/_ext/1785203669/usb_function_hid.o.tmp
	${RM} ${OBJECTDIR}/_ext/1785203669/usb_function_hid.o.d 
	${CP} ${OBJECTDIR}/_ext/1785203669/usb_function_hid.o.tmp ${OBJECTDIR}/_ext/1785203669/usb_function_hid.o.d 
	${RM} ${OBJECTDIR}/_ext/1785203669/usb_function_hid.o.tmp
endif
else
${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_buf.o: ../mTouchCap_PIC24F_GUI_buf.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_buf.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../mTouchCap_Combo_Demo" -I"../../../../Microchip/Include/USB" -I"../../../../Microchip/Include" -I"../../mTouchCap_AppCommonFiles" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_buf.o.d -o ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_buf.o ../mTouchCap_PIC24F_GUI_buf.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_buf.o.d > ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_buf.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_buf.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_buf.o.tmp ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_buf.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_buf.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_buf.o.d > ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_buf.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_buf.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_buf.o.tmp ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_buf.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_buf.o.tmp
endif
${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI.o: ../mTouchCap_PIC24F_GUI.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../mTouchCap_Combo_Demo" -I"../../../../Microchip/Include/USB" -I"../../../../Microchip/Include" -I"../../mTouchCap_AppCommonFiles" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI.o.d -o ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI.o ../mTouchCap_PIC24F_GUI.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI.o.d > ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI.o.tmp ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI.o.d > ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI.o.tmp ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI.o.tmp
endif
${OBJECTDIR}/_ext/1907416406/mTouchCap_2Ch_Slider.o: ../../mTouchCap_AppCommonFiles/mTouchCap_2Ch_Slider.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1907416406 
	${RM} ${OBJECTDIR}/_ext/1907416406/mTouchCap_2Ch_Slider.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../mTouchCap_Combo_Demo" -I"../../../../Microchip/Include/USB" -I"../../../../Microchip/Include" -I"../../mTouchCap_AppCommonFiles" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/1907416406/mTouchCap_2Ch_Slider.o.d -o ${OBJECTDIR}/_ext/1907416406/mTouchCap_2Ch_Slider.o ../../mTouchCap_AppCommonFiles/mTouchCap_2Ch_Slider.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1907416406/mTouchCap_2Ch_Slider.o.d > ${OBJECTDIR}/_ext/1907416406/mTouchCap_2Ch_Slider.o.tmp
	${RM} ${OBJECTDIR}/_ext/1907416406/mTouchCap_2Ch_Slider.o.d 
	${CP} ${OBJECTDIR}/_ext/1907416406/mTouchCap_2Ch_Slider.o.tmp ${OBJECTDIR}/_ext/1907416406/mTouchCap_2Ch_Slider.o.d 
	${RM} ${OBJECTDIR}/_ext/1907416406/mTouchCap_2Ch_Slider.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1907416406/mTouchCap_2Ch_Slider.o.d > ${OBJECTDIR}/_ext/1907416406/mTouchCap_2Ch_Slider.o.tmp
	${RM} ${OBJECTDIR}/_ext/1907416406/mTouchCap_2Ch_Slider.o.d 
	${CP} ${OBJECTDIR}/_ext/1907416406/mTouchCap_2Ch_Slider.o.tmp ${OBJECTDIR}/_ext/1907416406/mTouchCap_2Ch_Slider.o.d 
	${RM} ${OBJECTDIR}/_ext/1907416406/mTouchCap_2Ch_Slider.o.tmp
endif
${OBJECTDIR}/_ext/1907416406/mTouchCap_4Ch_Slider.o: ../../mTouchCap_AppCommonFiles/mTouchCap_4Ch_Slider.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1907416406 
	${RM} ${OBJECTDIR}/_ext/1907416406/mTouchCap_4Ch_Slider.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../mTouchCap_Combo_Demo" -I"../../../../Microchip/Include/USB" -I"../../../../Microchip/Include" -I"../../mTouchCap_AppCommonFiles" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/1907416406/mTouchCap_4Ch_Slider.o.d -o ${OBJECTDIR}/_ext/1907416406/mTouchCap_4Ch_Slider.o ../../mTouchCap_AppCommonFiles/mTouchCap_4Ch_Slider.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1907416406/mTouchCap_4Ch_Slider.o.d > ${OBJECTDIR}/_ext/1907416406/mTouchCap_4Ch_Slider.o.tmp
	${RM} ${OBJECTDIR}/_ext/1907416406/mTouchCap_4Ch_Slider.o.d 
	${CP} ${OBJECTDIR}/_ext/1907416406/mTouchCap_4Ch_Slider.o.tmp ${OBJECTDIR}/_ext/1907416406/mTouchCap_4Ch_Slider.o.d 
	${RM} ${OBJECTDIR}/_ext/1907416406/mTouchCap_4Ch_Slider.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1907416406/mTouchCap_4Ch_Slider.o.d > ${OBJECTDIR}/_ext/1907416406/mTouchCap_4Ch_Slider.o.tmp
	${RM} ${OBJECTDIR}/_ext/1907416406/mTouchCap_4Ch_Slider.o.d 
	${CP} ${OBJECTDIR}/_ext/1907416406/mTouchCap_4Ch_Slider.o.tmp ${OBJECTDIR}/_ext/1907416406/mTouchCap_4Ch_Slider.o.d 
	${RM} ${OBJECTDIR}/_ext/1907416406/mTouchCap_4Ch_Slider.o.tmp
endif
${OBJECTDIR}/_ext/1907416406/Display.o: ../../mTouchCap_AppCommonFiles/Display.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1907416406 
	${RM} ${OBJECTDIR}/_ext/1907416406/Display.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../mTouchCap_Combo_Demo" -I"../../../../Microchip/Include/USB" -I"../../../../Microchip/Include" -I"../../mTouchCap_AppCommonFiles" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/1907416406/Display.o.d -o ${OBJECTDIR}/_ext/1907416406/Display.o ../../mTouchCap_AppCommonFiles/Display.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1907416406/Display.o.d > ${OBJECTDIR}/_ext/1907416406/Display.o.tmp
	${RM} ${OBJECTDIR}/_ext/1907416406/Display.o.d 
	${CP} ${OBJECTDIR}/_ext/1907416406/Display.o.tmp ${OBJECTDIR}/_ext/1907416406/Display.o.d 
	${RM} ${OBJECTDIR}/_ext/1907416406/Display.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1907416406/Display.o.d > ${OBJECTDIR}/_ext/1907416406/Display.o.tmp
	${RM} ${OBJECTDIR}/_ext/1907416406/Display.o.d 
	${CP} ${OBJECTDIR}/_ext/1907416406/Display.o.tmp ${OBJECTDIR}/_ext/1907416406/Display.o.d 
	${RM} ${OBJECTDIR}/_ext/1907416406/Display.o.tmp
endif
${OBJECTDIR}/_ext/274675202/mTouchCap_PIC24_CTMU_Physical.o: ../../../../Microchip/mTouchCap/PIC18F_PIC24F\ CTMU\ Library/mTouchCap_PIC24_CTMU_Physical.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/274675202 
	${RM} ${OBJECTDIR}/_ext/274675202/mTouchCap_PIC24_CTMU_Physical.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../mTouchCap_Combo_Demo" -I"../../../../Microchip/Include/USB" -I"../../../../Microchip/Include" -I"../../mTouchCap_AppCommonFiles" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/274675202/mTouchCap_PIC24_CTMU_Physical.o.d -o ${OBJECTDIR}/_ext/274675202/mTouchCap_PIC24_CTMU_Physical.o ../../../../Microchip/mTouchCap/PIC18F_PIC24F\ CTMU\ Library/mTouchCap_PIC24_CTMU_Physical.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/274675202/mTouchCap_PIC24_CTMU_Physical.o.d > ${OBJECTDIR}/_ext/274675202/mTouchCap_PIC24_CTMU_Physical.o.tmp
	${RM} ${OBJECTDIR}/_ext/274675202/mTouchCap_PIC24_CTMU_Physical.o.d 
	${CP} ${OBJECTDIR}/_ext/274675202/mTouchCap_PIC24_CTMU_Physical.o.tmp ${OBJECTDIR}/_ext/274675202/mTouchCap_PIC24_CTMU_Physical.o.d 
	${RM} ${OBJECTDIR}/_ext/274675202/mTouchCap_PIC24_CTMU_Physical.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/274675202/mTouchCap_PIC24_CTMU_Physical.o.d > ${OBJECTDIR}/_ext/274675202/mTouchCap_PIC24_CTMU_Physical.o.tmp
	${RM} ${OBJECTDIR}/_ext/274675202/mTouchCap_PIC24_CTMU_Physical.o.d 
	${CP} ${OBJECTDIR}/_ext/274675202/mTouchCap_PIC24_CTMU_Physical.o.tmp ${OBJECTDIR}/_ext/274675202/mTouchCap_PIC24_CTMU_Physical.o.d 
	${RM} ${OBJECTDIR}/_ext/274675202/mTouchCap_PIC24_CTMU_Physical.o.tmp
endif
${OBJECTDIR}/_ext/1907416406/mTouchCap_MatrixKeys.o: ../../mTouchCap_AppCommonFiles/mTouchCap_MatrixKeys.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1907416406 
	${RM} ${OBJECTDIR}/_ext/1907416406/mTouchCap_MatrixKeys.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../mTouchCap_Combo_Demo" -I"../../../../Microchip/Include/USB" -I"../../../../Microchip/Include" -I"../../mTouchCap_AppCommonFiles" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/1907416406/mTouchCap_MatrixKeys.o.d -o ${OBJECTDIR}/_ext/1907416406/mTouchCap_MatrixKeys.o ../../mTouchCap_AppCommonFiles/mTouchCap_MatrixKeys.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1907416406/mTouchCap_MatrixKeys.o.d > ${OBJECTDIR}/_ext/1907416406/mTouchCap_MatrixKeys.o.tmp
	${RM} ${OBJECTDIR}/_ext/1907416406/mTouchCap_MatrixKeys.o.d 
	${CP} ${OBJECTDIR}/_ext/1907416406/mTouchCap_MatrixKeys.o.tmp ${OBJECTDIR}/_ext/1907416406/mTouchCap_MatrixKeys.o.d 
	${RM} ${OBJECTDIR}/_ext/1907416406/mTouchCap_MatrixKeys.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1907416406/mTouchCap_MatrixKeys.o.d > ${OBJECTDIR}/_ext/1907416406/mTouchCap_MatrixKeys.o.tmp
	${RM} ${OBJECTDIR}/_ext/1907416406/mTouchCap_MatrixKeys.o.d 
	${CP} ${OBJECTDIR}/_ext/1907416406/mTouchCap_MatrixKeys.o.tmp ${OBJECTDIR}/_ext/1907416406/mTouchCap_MatrixKeys.o.d 
	${RM} ${OBJECTDIR}/_ext/1907416406/mTouchCap_MatrixKeys.o.tmp
endif
${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_commn.o: ../mTouchCap_PIC24F_GUI_commn.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_commn.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../mTouchCap_Combo_Demo" -I"../../../../Microchip/Include/USB" -I"../../../../Microchip/Include" -I"../../mTouchCap_AppCommonFiles" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_commn.o.d -o ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_commn.o ../mTouchCap_PIC24F_GUI_commn.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_commn.o.d > ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_commn.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_commn.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_commn.o.tmp ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_commn.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_commn.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_commn.o.d > ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_commn.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_commn.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_commn.o.tmp ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_commn.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_commn.o.tmp
endif
${OBJECTDIR}/_ext/1472/usb_descriptors.o: ../usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../mTouchCap_Combo_Demo" -I"../../../../Microchip/Include/USB" -I"../../../../Microchip/Include" -I"../../mTouchCap_AppCommonFiles" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d -o ${OBJECTDIR}/_ext/1472/usb_descriptors.o ../usb_descriptors.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d > ${OBJECTDIR}/_ext/1472/usb_descriptors.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.tmp ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d > ${OBJECTDIR}/_ext/1472/usb_descriptors.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.tmp ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.tmp
endif
${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_touch.o: ../mTouchCap_PIC24F_GUI_touch.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_touch.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../mTouchCap_Combo_Demo" -I"../../../../Microchip/Include/USB" -I"../../../../Microchip/Include" -I"../../mTouchCap_AppCommonFiles" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_touch.o.d -o ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_touch.o ../mTouchCap_PIC24F_GUI_touch.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_touch.o.d > ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_touch.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_touch.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_touch.o.tmp ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_touch.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_touch.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_touch.o.d > ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_touch.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_touch.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_touch.o.tmp ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_touch.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_GUI_touch.o.tmp
endif
${OBJECTDIR}/_ext/274675202/mTouchCap_Timers.o: ../../../../Microchip/mTouchCap/PIC18F_PIC24F\ CTMU\ Library/mTouchCap_Timers.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/274675202 
	${RM} ${OBJECTDIR}/_ext/274675202/mTouchCap_Timers.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../mTouchCap_Combo_Demo" -I"../../../../Microchip/Include/USB" -I"../../../../Microchip/Include" -I"../../mTouchCap_AppCommonFiles" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/274675202/mTouchCap_Timers.o.d -o ${OBJECTDIR}/_ext/274675202/mTouchCap_Timers.o ../../../../Microchip/mTouchCap/PIC18F_PIC24F\ CTMU\ Library/mTouchCap_Timers.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/274675202/mTouchCap_Timers.o.d > ${OBJECTDIR}/_ext/274675202/mTouchCap_Timers.o.tmp
	${RM} ${OBJECTDIR}/_ext/274675202/mTouchCap_Timers.o.d 
	${CP} ${OBJECTDIR}/_ext/274675202/mTouchCap_Timers.o.tmp ${OBJECTDIR}/_ext/274675202/mTouchCap_Timers.o.d 
	${RM} ${OBJECTDIR}/_ext/274675202/mTouchCap_Timers.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/274675202/mTouchCap_Timers.o.d > ${OBJECTDIR}/_ext/274675202/mTouchCap_Timers.o.tmp
	${RM} ${OBJECTDIR}/_ext/274675202/mTouchCap_Timers.o.d 
	${CP} ${OBJECTDIR}/_ext/274675202/mTouchCap_Timers.o.tmp ${OBJECTDIR}/_ext/274675202/mTouchCap_Timers.o.d 
	${RM} ${OBJECTDIR}/_ext/274675202/mTouchCap_Timers.o.tmp
endif
${OBJECTDIR}/_ext/1907416406/mTouchCap_DirectKeys.o: ../../mTouchCap_AppCommonFiles/mTouchCap_DirectKeys.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1907416406 
	${RM} ${OBJECTDIR}/_ext/1907416406/mTouchCap_DirectKeys.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../mTouchCap_Combo_Demo" -I"../../../../Microchip/Include/USB" -I"../../../../Microchip/Include" -I"../../mTouchCap_AppCommonFiles" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/1907416406/mTouchCap_DirectKeys.o.d -o ${OBJECTDIR}/_ext/1907416406/mTouchCap_DirectKeys.o ../../mTouchCap_AppCommonFiles/mTouchCap_DirectKeys.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1907416406/mTouchCap_DirectKeys.o.d > ${OBJECTDIR}/_ext/1907416406/mTouchCap_DirectKeys.o.tmp
	${RM} ${OBJECTDIR}/_ext/1907416406/mTouchCap_DirectKeys.o.d 
	${CP} ${OBJECTDIR}/_ext/1907416406/mTouchCap_DirectKeys.o.tmp ${OBJECTDIR}/_ext/1907416406/mTouchCap_DirectKeys.o.d 
	${RM} ${OBJECTDIR}/_ext/1907416406/mTouchCap_DirectKeys.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1907416406/mTouchCap_DirectKeys.o.d > ${OBJECTDIR}/_ext/1907416406/mTouchCap_DirectKeys.o.tmp
	${RM} ${OBJECTDIR}/_ext/1907416406/mTouchCap_DirectKeys.o.d 
	${CP} ${OBJECTDIR}/_ext/1907416406/mTouchCap_DirectKeys.o.tmp ${OBJECTDIR}/_ext/1907416406/mTouchCap_DirectKeys.o.d 
	${RM} ${OBJECTDIR}/_ext/1907416406/mTouchCap_DirectKeys.o.tmp
endif
${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.o: ../../../../Microchip/mTouchCap/PIC18F_PIC24F\ CTMU\ Library/mTouchCap_Adc.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/274675202 
	${RM} ${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../mTouchCap_Combo_Demo" -I"../../../../Microchip/Include/USB" -I"../../../../Microchip/Include" -I"../../mTouchCap_AppCommonFiles" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.o.d -o ${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.o ../../../../Microchip/mTouchCap/PIC18F_PIC24F\ CTMU\ Library/mTouchCap_Adc.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.o.d > ${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.o.tmp
	${RM} ${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.o.d 
	${CP} ${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.o.tmp ${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.o.d 
	${RM} ${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.o.d > ${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.o.tmp
	${RM} ${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.o.d 
	${CP} ${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.o.tmp ${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.o.d 
	${RM} ${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.o.tmp
endif
${OBJECTDIR}/_ext/926206843/usb_device.o: ../../../../Microchip/USB/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/926206843 
	${RM} ${OBJECTDIR}/_ext/926206843/usb_device.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../mTouchCap_Combo_Demo" -I"../../../../Microchip/Include/USB" -I"../../../../Microchip/Include" -I"../../mTouchCap_AppCommonFiles" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/926206843/usb_device.o.d -o ${OBJECTDIR}/_ext/926206843/usb_device.o ../../../../Microchip/USB/usb_device.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/926206843/usb_device.o.d > ${OBJECTDIR}/_ext/926206843/usb_device.o.tmp
	${RM} ${OBJECTDIR}/_ext/926206843/usb_device.o.d 
	${CP} ${OBJECTDIR}/_ext/926206843/usb_device.o.tmp ${OBJECTDIR}/_ext/926206843/usb_device.o.d 
	${RM} ${OBJECTDIR}/_ext/926206843/usb_device.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/926206843/usb_device.o.d > ${OBJECTDIR}/_ext/926206843/usb_device.o.tmp
	${RM} ${OBJECTDIR}/_ext/926206843/usb_device.o.d 
	${CP} ${OBJECTDIR}/_ext/926206843/usb_device.o.tmp ${OBJECTDIR}/_ext/926206843/usb_device.o.d 
	${RM} ${OBJECTDIR}/_ext/926206843/usb_device.o.tmp
endif
${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.o: ../../../../Microchip/mTouchCap/PIC18F_PIC24F\ CTMU\ Library/mTouchCap_CtmuAPI.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/274675202 
	${RM} ${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../mTouchCap_Combo_Demo" -I"../../../../Microchip/Include/USB" -I"../../../../Microchip/Include" -I"../../mTouchCap_AppCommonFiles" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.o.d -o ${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.o ../../../../Microchip/mTouchCap/PIC18F_PIC24F\ CTMU\ Library/mTouchCap_CtmuAPI.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.o.d > ${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.o.tmp
	${RM} ${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.o.d 
	${CP} ${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.o.tmp ${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.o.d 
	${RM} ${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.o.d > ${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.o.tmp
	${RM} ${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.o.d 
	${CP} ${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.o.tmp ${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.o.d 
	${RM} ${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.o.tmp
endif
${OBJECTDIR}/_ext/1785203669/usb_function_hid.o: ../../../../Microchip/USB/HID\ Device\ Driver/usb_function_hid.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1785203669 
	${RM} ${OBJECTDIR}/_ext/1785203669/usb_function_hid.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../mTouchCap_Combo_Demo" -I"../../../../Microchip/Include/USB" -I"../../../../Microchip/Include" -I"../../mTouchCap_AppCommonFiles" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/1785203669/usb_function_hid.o.d -o ${OBJECTDIR}/_ext/1785203669/usb_function_hid.o ../../../../Microchip/USB/HID\ Device\ Driver/usb_function_hid.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1785203669/usb_function_hid.o.d > ${OBJECTDIR}/_ext/1785203669/usb_function_hid.o.tmp
	${RM} ${OBJECTDIR}/_ext/1785203669/usb_function_hid.o.d 
	${CP} ${OBJECTDIR}/_ext/1785203669/usb_function_hid.o.tmp ${OBJECTDIR}/_ext/1785203669/usb_function_hid.o.d 
	${RM} ${OBJECTDIR}/_ext/1785203669/usb_function_hid.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1785203669/usb_function_hid.o.d > ${OBJECTDIR}/_ext/1785203669/usb_function_hid.o.tmp
	${RM} ${OBJECTDIR}/_ext/1785203669/usb_function_hid.o.d 
	${CP} ${OBJECTDIR}/_ext/1785203669/usb_function_hid.o.tmp ${OBJECTDIR}/_ext/1785203669/usb_function_hid.o.d 
	${RM} ${OBJECTDIR}/_ext/1785203669/usb_function_hid.o.tmp
endif
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf  -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf ${OBJECTFILES}        -Wl,--defsym=__MPLAB_BUILD=1,-L"..",-Map="$(BINDIR_)$(TARGETBASE).map",--report-mem,--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_REAL_ICE=1
else
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf  -mcpu=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf ${OBJECTFILES}        -Wl,--defsym=__MPLAB_BUILD=1,-L"..",-Map="$(BINDIR_)$(TARGETBASE).map",--report-mem,--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION)
	${MP_CC_DIR}\\pic30-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf -omf=elf
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
