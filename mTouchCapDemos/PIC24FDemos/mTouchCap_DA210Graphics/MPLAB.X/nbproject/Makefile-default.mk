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
OBJECTFILES=${OBJECTDIR}/_ext/1472/ResTouchScreen.o ${OBJECTDIR}/_ext/366188474/gfxepmp.o ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o ${OBJECTDIR}/_ext/274675202/mTouchCap_PIC24_CTMU_Physical.o ${OBJECTDIR}/_ext/2020629477/Beep.o ${OBJECTDIR}/_ext/1847857110/Primitive.o ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o ${OBJECTDIR}/_ext/1847857110/Button.o ${OBJECTDIR}/_ext/2020629477/SST25VF016.o ${OBJECTDIR}/_ext/1472/Cap-mTouch.o ${OBJECTDIR}/_ext/1472/softTimers.o ${OBJECTDIR}/_ext/2020629477/EEPROM.o ${OBJECTDIR}/_ext/1472/Pictures\ C30.o ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o ${OBJECTDIR}/_ext/2048740170/TimeDelay.o ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_DA210Graphics.o ${OBJECTDIR}/_ext/2020629477/drv_spi.o ${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.o ${OBJECTDIR}/_ext/1847857110/Slider.o ${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.o ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o ${OBJECTDIR}/_ext/1847857110/GOL.o


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

MP_PROCESSOR_OPTION=24FJ256DA210
MP_LINKER_FILE_OPTION=,-Tp24FJ256DA210.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1472/ResTouchScreen.o: ../ResTouchScreen.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/ResTouchScreen.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../Board Support Package" -I"../../../../Microchip/Graphics/Object Layer/Configs" -I"../../../../Microchip/Common" -I"../../../../Microchip/Graphics" -I"../../../../Microchip/Graphics/Drivers" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/mTouchCap/PIC18F_PIC24F CTMU Library" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/1472/ResTouchScreen.o.d -o ${OBJECTDIR}/_ext/1472/ResTouchScreen.o ../ResTouchScreen.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/ResTouchScreen.o.d > ${OBJECTDIR}/_ext/1472/ResTouchScreen.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/ResTouchScreen.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/ResTouchScreen.o.tmp ${OBJECTDIR}/_ext/1472/ResTouchScreen.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/ResTouchScreen.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/ResTouchScreen.o.d > ${OBJECTDIR}/_ext/1472/ResTouchScreen.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/ResTouchScreen.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/ResTouchScreen.o.tmp ${OBJECTDIR}/_ext/1472/ResTouchScreen.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/ResTouchScreen.o.tmp
endif
${OBJECTDIR}/_ext/366188474/gfxepmp.o: ../../../../Microchip/Graphics/Drivers/gfxepmp.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/366188474 
	${RM} ${OBJECTDIR}/_ext/366188474/gfxepmp.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../Board Support Package" -I"../../../../Microchip/Graphics/Object Layer/Configs" -I"../../../../Microchip/Common" -I"../../../../Microchip/Graphics" -I"../../../../Microchip/Graphics/Drivers" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/mTouchCap/PIC18F_PIC24F CTMU Library" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/366188474/gfxepmp.o.d -o ${OBJECTDIR}/_ext/366188474/gfxepmp.o ../../../../Microchip/Graphics/Drivers/gfxepmp.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/366188474/gfxepmp.o.d > ${OBJECTDIR}/_ext/366188474/gfxepmp.o.tmp
	${RM} ${OBJECTDIR}/_ext/366188474/gfxepmp.o.d 
	${CP} ${OBJECTDIR}/_ext/366188474/gfxepmp.o.tmp ${OBJECTDIR}/_ext/366188474/gfxepmp.o.d 
	${RM} ${OBJECTDIR}/_ext/366188474/gfxepmp.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/366188474/gfxepmp.o.d > ${OBJECTDIR}/_ext/366188474/gfxepmp.o.tmp
	${RM} ${OBJECTDIR}/_ext/366188474/gfxepmp.o.d 
	${CP} ${OBJECTDIR}/_ext/366188474/gfxepmp.o.tmp ${OBJECTDIR}/_ext/366188474/gfxepmp.o.d 
	${RM} ${OBJECTDIR}/_ext/366188474/gfxepmp.o.tmp
endif
${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o: ../../../../Microchip/Graphics/GOLSchemeDefault.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	${RM} ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../Board Support Package" -I"../../../../Microchip/Graphics/Object Layer/Configs" -I"../../../../Microchip/Common" -I"../../../../Microchip/Graphics" -I"../../../../Microchip/Graphics/Drivers" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/mTouchCap/PIC18F_PIC24F CTMU Library" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.d -o ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o ../../../../Microchip/Graphics/GOLSchemeDefault.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.d > ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.tmp
	${RM} ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.d 
	${CP} ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.tmp ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.d 
	${RM} ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.d > ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.tmp
	${RM} ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.d 
	${CP} ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.tmp ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.d 
	${RM} ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.tmp
endif
${OBJECTDIR}/_ext/274675202/mTouchCap_PIC24_CTMU_Physical.o: ../../../../Microchip/mTouchCap/PIC18F_PIC24F\ CTMU\ Library/mTouchCap_PIC24_CTMU_Physical.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/274675202 
	${RM} ${OBJECTDIR}/_ext/274675202/mTouchCap_PIC24_CTMU_Physical.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../Board Support Package" -I"../../../../Microchip/Graphics/Object Layer/Configs" -I"../../../../Microchip/Common" -I"../../../../Microchip/Graphics" -I"../../../../Microchip/Graphics/Drivers" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/mTouchCap/PIC18F_PIC24F CTMU Library" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/274675202/mTouchCap_PIC24_CTMU_Physical.o.d -o ${OBJECTDIR}/_ext/274675202/mTouchCap_PIC24_CTMU_Physical.o ../../../../Microchip/mTouchCap/PIC18F_PIC24F\ CTMU\ Library/mTouchCap_PIC24_CTMU_Physical.c  
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
${OBJECTDIR}/_ext/2020629477/Beep.o: ../../../../Board\ Support\ Package/Beep.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/2020629477 
	${RM} ${OBJECTDIR}/_ext/2020629477/Beep.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../Board Support Package" -I"../../../../Microchip/Graphics/Object Layer/Configs" -I"../../../../Microchip/Common" -I"../../../../Microchip/Graphics" -I"../../../../Microchip/Graphics/Drivers" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/mTouchCap/PIC18F_PIC24F CTMU Library" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/2020629477/Beep.o.d -o ${OBJECTDIR}/_ext/2020629477/Beep.o ../../../../Board\ Support\ Package/Beep.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2020629477/Beep.o.d > ${OBJECTDIR}/_ext/2020629477/Beep.o.tmp
	${RM} ${OBJECTDIR}/_ext/2020629477/Beep.o.d 
	${CP} ${OBJECTDIR}/_ext/2020629477/Beep.o.tmp ${OBJECTDIR}/_ext/2020629477/Beep.o.d 
	${RM} ${OBJECTDIR}/_ext/2020629477/Beep.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/2020629477/Beep.o.d > ${OBJECTDIR}/_ext/2020629477/Beep.o.tmp
	${RM} ${OBJECTDIR}/_ext/2020629477/Beep.o.d 
	${CP} ${OBJECTDIR}/_ext/2020629477/Beep.o.tmp ${OBJECTDIR}/_ext/2020629477/Beep.o.d 
	${RM} ${OBJECTDIR}/_ext/2020629477/Beep.o.tmp
endif
${OBJECTDIR}/_ext/1847857110/Primitive.o: ../../../../Microchip/Graphics/Primitive.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	${RM} ${OBJECTDIR}/_ext/1847857110/Primitive.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../Board Support Package" -I"../../../../Microchip/Graphics/Object Layer/Configs" -I"../../../../Microchip/Common" -I"../../../../Microchip/Graphics" -I"../../../../Microchip/Graphics/Drivers" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/mTouchCap/PIC18F_PIC24F CTMU Library" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/1847857110/Primitive.o.d -o ${OBJECTDIR}/_ext/1847857110/Primitive.o ../../../../Microchip/Graphics/Primitive.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1847857110/Primitive.o.d > ${OBJECTDIR}/_ext/1847857110/Primitive.o.tmp
	${RM} ${OBJECTDIR}/_ext/1847857110/Primitive.o.d 
	${CP} ${OBJECTDIR}/_ext/1847857110/Primitive.o.tmp ${OBJECTDIR}/_ext/1847857110/Primitive.o.d 
	${RM} ${OBJECTDIR}/_ext/1847857110/Primitive.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1847857110/Primitive.o.d > ${OBJECTDIR}/_ext/1847857110/Primitive.o.tmp
	${RM} ${OBJECTDIR}/_ext/1847857110/Primitive.o.d 
	${CP} ${OBJECTDIR}/_ext/1847857110/Primitive.o.tmp ${OBJECTDIR}/_ext/1847857110/Primitive.o.d 
	${RM} ${OBJECTDIR}/_ext/1847857110/Primitive.o.tmp
endif
${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o: ../../../../Microchip/Graphics/GOLFontDefault.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	${RM} ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../Board Support Package" -I"../../../../Microchip/Graphics/Object Layer/Configs" -I"../../../../Microchip/Common" -I"../../../../Microchip/Graphics" -I"../../../../Microchip/Graphics/Drivers" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/mTouchCap/PIC18F_PIC24F CTMU Library" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.d -o ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o ../../../../Microchip/Graphics/GOLFontDefault.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.d > ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.tmp
	${RM} ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.d 
	${CP} ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.tmp ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.d 
	${RM} ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.d > ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.tmp
	${RM} ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.d 
	${CP} ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.tmp ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.d 
	${RM} ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.tmp
endif
${OBJECTDIR}/_ext/1847857110/Button.o: ../../../../Microchip/Graphics/Button.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	${RM} ${OBJECTDIR}/_ext/1847857110/Button.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../Board Support Package" -I"../../../../Microchip/Graphics/Object Layer/Configs" -I"../../../../Microchip/Common" -I"../../../../Microchip/Graphics" -I"../../../../Microchip/Graphics/Drivers" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/mTouchCap/PIC18F_PIC24F CTMU Library" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/1847857110/Button.o.d -o ${OBJECTDIR}/_ext/1847857110/Button.o ../../../../Microchip/Graphics/Button.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1847857110/Button.o.d > ${OBJECTDIR}/_ext/1847857110/Button.o.tmp
	${RM} ${OBJECTDIR}/_ext/1847857110/Button.o.d 
	${CP} ${OBJECTDIR}/_ext/1847857110/Button.o.tmp ${OBJECTDIR}/_ext/1847857110/Button.o.d 
	${RM} ${OBJECTDIR}/_ext/1847857110/Button.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1847857110/Button.o.d > ${OBJECTDIR}/_ext/1847857110/Button.o.tmp
	${RM} ${OBJECTDIR}/_ext/1847857110/Button.o.d 
	${CP} ${OBJECTDIR}/_ext/1847857110/Button.o.tmp ${OBJECTDIR}/_ext/1847857110/Button.o.d 
	${RM} ${OBJECTDIR}/_ext/1847857110/Button.o.tmp
endif
${OBJECTDIR}/_ext/2020629477/SST25VF016.o: ../../../../Board\ Support\ Package/SST25VF016.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/2020629477 
	${RM} ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../Board Support Package" -I"../../../../Microchip/Graphics/Object Layer/Configs" -I"../../../../Microchip/Common" -I"../../../../Microchip/Graphics" -I"../../../../Microchip/Graphics/Drivers" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/mTouchCap/PIC18F_PIC24F CTMU Library" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.d -o ${OBJECTDIR}/_ext/2020629477/SST25VF016.o ../../../../Board\ Support\ Package/SST25VF016.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.d > ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.tmp
	${RM} ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.d 
	${CP} ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.tmp ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.d 
	${RM} ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.d > ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.tmp
	${RM} ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.d 
	${CP} ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.tmp ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.d 
	${RM} ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.tmp
endif
${OBJECTDIR}/_ext/1472/Cap-mTouch.o: ../Cap-mTouch.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/Cap-mTouch.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../Board Support Package" -I"../../../../Microchip/Graphics/Object Layer/Configs" -I"../../../../Microchip/Common" -I"../../../../Microchip/Graphics" -I"../../../../Microchip/Graphics/Drivers" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/mTouchCap/PIC18F_PIC24F CTMU Library" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/1472/Cap-mTouch.o.d -o ${OBJECTDIR}/_ext/1472/Cap-mTouch.o ../Cap-mTouch.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/Cap-mTouch.o.d > ${OBJECTDIR}/_ext/1472/Cap-mTouch.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/Cap-mTouch.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/Cap-mTouch.o.tmp ${OBJECTDIR}/_ext/1472/Cap-mTouch.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/Cap-mTouch.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/Cap-mTouch.o.d > ${OBJECTDIR}/_ext/1472/Cap-mTouch.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/Cap-mTouch.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/Cap-mTouch.o.tmp ${OBJECTDIR}/_ext/1472/Cap-mTouch.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/Cap-mTouch.o.tmp
endif
${OBJECTDIR}/_ext/1472/softTimers.o: ../softTimers.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/softTimers.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../Board Support Package" -I"../../../../Microchip/Graphics/Object Layer/Configs" -I"../../../../Microchip/Common" -I"../../../../Microchip/Graphics" -I"../../../../Microchip/Graphics/Drivers" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/mTouchCap/PIC18F_PIC24F CTMU Library" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/1472/softTimers.o.d -o ${OBJECTDIR}/_ext/1472/softTimers.o ../softTimers.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/softTimers.o.d > ${OBJECTDIR}/_ext/1472/softTimers.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/softTimers.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/softTimers.o.tmp ${OBJECTDIR}/_ext/1472/softTimers.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/softTimers.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/softTimers.o.d > ${OBJECTDIR}/_ext/1472/softTimers.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/softTimers.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/softTimers.o.tmp ${OBJECTDIR}/_ext/1472/softTimers.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/softTimers.o.tmp
endif
${OBJECTDIR}/_ext/2020629477/EEPROM.o: ../../../../Board\ Support\ Package/EEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/2020629477 
	${RM} ${OBJECTDIR}/_ext/2020629477/EEPROM.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../Board Support Package" -I"../../../../Microchip/Graphics/Object Layer/Configs" -I"../../../../Microchip/Common" -I"../../../../Microchip/Graphics" -I"../../../../Microchip/Graphics/Drivers" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/mTouchCap/PIC18F_PIC24F CTMU Library" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/2020629477/EEPROM.o.d -o ${OBJECTDIR}/_ext/2020629477/EEPROM.o ../../../../Board\ Support\ Package/EEPROM.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2020629477/EEPROM.o.d > ${OBJECTDIR}/_ext/2020629477/EEPROM.o.tmp
	${RM} ${OBJECTDIR}/_ext/2020629477/EEPROM.o.d 
	${CP} ${OBJECTDIR}/_ext/2020629477/EEPROM.o.tmp ${OBJECTDIR}/_ext/2020629477/EEPROM.o.d 
	${RM} ${OBJECTDIR}/_ext/2020629477/EEPROM.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/2020629477/EEPROM.o.d > ${OBJECTDIR}/_ext/2020629477/EEPROM.o.tmp
	${RM} ${OBJECTDIR}/_ext/2020629477/EEPROM.o.d 
	${CP} ${OBJECTDIR}/_ext/2020629477/EEPROM.o.tmp ${OBJECTDIR}/_ext/2020629477/EEPROM.o.d 
	${RM} ${OBJECTDIR}/_ext/2020629477/EEPROM.o.tmp
endif
${OBJECTDIR}/_ext/1472/Pictures\ C30.o: ../Pictures\ C30.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/Pictures\ C30.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../Board Support Package" -I"../../../../Microchip/Graphics/Object Layer/Configs" -I"../../../../Microchip/Common" -I"../../../../Microchip/Graphics" -I"../../../../Microchip/Graphics/Drivers" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/mTouchCap/PIC18F_PIC24F CTMU Library" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/1472/Pictures\ C30.o.d -o ${OBJECTDIR}/_ext/1472/Pictures\ C30.o ../Pictures\ C30.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/Pictures\ C30.o.d > ${OBJECTDIR}/_ext/1472/Pictures\ C30.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/Pictures\ C30.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/Pictures\ C30.o.tmp ${OBJECTDIR}/_ext/1472/Pictures\ C30.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/Pictures\ C30.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/Pictures\ C30.o.d > ${OBJECTDIR}/_ext/1472/Pictures\ C30.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/Pictures\ C30.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/Pictures\ C30.o.tmp ${OBJECTDIR}/_ext/1472/Pictures\ C30.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/Pictures\ C30.o.tmp
endif
${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o: ../../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/366188474 
	${RM} ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../Board Support Package" -I"../../../../Microchip/Graphics/Object Layer/Configs" -I"../../../../Microchip/Common" -I"../../../../Microchip/Graphics" -I"../../../../Microchip/Graphics/Drivers" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/mTouchCap/PIC18F_PIC24F CTMU Library" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.d -o ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o ../../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.d > ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.tmp
	${RM} ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.d 
	${CP} ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.tmp ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.d 
	${RM} ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.d > ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.tmp
	${RM} ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.d 
	${CP} ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.tmp ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.d 
	${RM} ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.tmp
endif
${OBJECTDIR}/_ext/2048740170/TimeDelay.o: ../../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/2048740170 
	${RM} ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../Board Support Package" -I"../../../../Microchip/Graphics/Object Layer/Configs" -I"../../../../Microchip/Common" -I"../../../../Microchip/Graphics" -I"../../../../Microchip/Graphics/Drivers" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/mTouchCap/PIC18F_PIC24F CTMU Library" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.d -o ${OBJECTDIR}/_ext/2048740170/TimeDelay.o ../../../../Microchip/Common/TimeDelay.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.d > ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.tmp
	${RM} ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.d 
	${CP} ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.tmp ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.d 
	${RM} ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.d > ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.tmp
	${RM} ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.d 
	${CP} ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.tmp ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.d 
	${RM} ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.tmp
endif
${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_DA210Graphics.o: ../mTouchCap_PIC24F_DA210Graphics.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_DA210Graphics.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../Board Support Package" -I"../../../../Microchip/Graphics/Object Layer/Configs" -I"../../../../Microchip/Common" -I"../../../../Microchip/Graphics" -I"../../../../Microchip/Graphics/Drivers" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/mTouchCap/PIC18F_PIC24F CTMU Library" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_DA210Graphics.o.d -o ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_DA210Graphics.o ../mTouchCap_PIC24F_DA210Graphics.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_DA210Graphics.o.d > ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_DA210Graphics.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_DA210Graphics.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_DA210Graphics.o.tmp ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_DA210Graphics.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_DA210Graphics.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_DA210Graphics.o.d > ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_DA210Graphics.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_DA210Graphics.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_DA210Graphics.o.tmp ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_DA210Graphics.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_DA210Graphics.o.tmp
endif
${OBJECTDIR}/_ext/2020629477/drv_spi.o: ../../../../Board\ Support\ Package/drv_spi.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/2020629477 
	${RM} ${OBJECTDIR}/_ext/2020629477/drv_spi.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../Board Support Package" -I"../../../../Microchip/Graphics/Object Layer/Configs" -I"../../../../Microchip/Common" -I"../../../../Microchip/Graphics" -I"../../../../Microchip/Graphics/Drivers" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/mTouchCap/PIC18F_PIC24F CTMU Library" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/2020629477/drv_spi.o.d -o ${OBJECTDIR}/_ext/2020629477/drv_spi.o ../../../../Board\ Support\ Package/drv_spi.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2020629477/drv_spi.o.d > ${OBJECTDIR}/_ext/2020629477/drv_spi.o.tmp
	${RM} ${OBJECTDIR}/_ext/2020629477/drv_spi.o.d 
	${CP} ${OBJECTDIR}/_ext/2020629477/drv_spi.o.tmp ${OBJECTDIR}/_ext/2020629477/drv_spi.o.d 
	${RM} ${OBJECTDIR}/_ext/2020629477/drv_spi.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/2020629477/drv_spi.o.d > ${OBJECTDIR}/_ext/2020629477/drv_spi.o.tmp
	${RM} ${OBJECTDIR}/_ext/2020629477/drv_spi.o.d 
	${CP} ${OBJECTDIR}/_ext/2020629477/drv_spi.o.tmp ${OBJECTDIR}/_ext/2020629477/drv_spi.o.d 
	${RM} ${OBJECTDIR}/_ext/2020629477/drv_spi.o.tmp
endif
${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.o: ../../../../Microchip/mTouchCap/PIC18F_PIC24F\ CTMU\ Library/mTouchCap_Adc.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/274675202 
	${RM} ${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../Board Support Package" -I"../../../../Microchip/Graphics/Object Layer/Configs" -I"../../../../Microchip/Common" -I"../../../../Microchip/Graphics" -I"../../../../Microchip/Graphics/Drivers" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/mTouchCap/PIC18F_PIC24F CTMU Library" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.o.d -o ${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.o ../../../../Microchip/mTouchCap/PIC18F_PIC24F\ CTMU\ Library/mTouchCap_Adc.c  
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
${OBJECTDIR}/_ext/1847857110/Slider.o: ../../../../Microchip/Graphics/Slider.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	${RM} ${OBJECTDIR}/_ext/1847857110/Slider.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../Board Support Package" -I"../../../../Microchip/Graphics/Object Layer/Configs" -I"../../../../Microchip/Common" -I"../../../../Microchip/Graphics" -I"../../../../Microchip/Graphics/Drivers" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/mTouchCap/PIC18F_PIC24F CTMU Library" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/1847857110/Slider.o.d -o ${OBJECTDIR}/_ext/1847857110/Slider.o ../../../../Microchip/Graphics/Slider.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1847857110/Slider.o.d > ${OBJECTDIR}/_ext/1847857110/Slider.o.tmp
	${RM} ${OBJECTDIR}/_ext/1847857110/Slider.o.d 
	${CP} ${OBJECTDIR}/_ext/1847857110/Slider.o.tmp ${OBJECTDIR}/_ext/1847857110/Slider.o.d 
	${RM} ${OBJECTDIR}/_ext/1847857110/Slider.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1847857110/Slider.o.d > ${OBJECTDIR}/_ext/1847857110/Slider.o.tmp
	${RM} ${OBJECTDIR}/_ext/1847857110/Slider.o.d 
	${CP} ${OBJECTDIR}/_ext/1847857110/Slider.o.tmp ${OBJECTDIR}/_ext/1847857110/Slider.o.d 
	${RM} ${OBJECTDIR}/_ext/1847857110/Slider.o.tmp
endif
${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.o: ../../../../Microchip/mTouchCap/PIC18F_PIC24F\ CTMU\ Library/mTouchCap_CtmuAPI.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/274675202 
	${RM} ${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../Board Support Package" -I"../../../../Microchip/Graphics/Object Layer/Configs" -I"../../../../Microchip/Common" -I"../../../../Microchip/Graphics" -I"../../../../Microchip/Graphics/Drivers" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/mTouchCap/PIC18F_PIC24F CTMU Library" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.o.d -o ${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.o ../../../../Microchip/mTouchCap/PIC18F_PIC24F\ CTMU\ Library/mTouchCap_CtmuAPI.c  
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
${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o: ../../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/366188474 
	${RM} ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../Board Support Package" -I"../../../../Microchip/Graphics/Object Layer/Configs" -I"../../../../Microchip/Common" -I"../../../../Microchip/Graphics" -I"../../../../Microchip/Graphics/Drivers" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/mTouchCap/PIC18F_PIC24F CTMU Library" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.d -o ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o ../../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.d > ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.tmp
	${RM} ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.d 
	${CP} ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.tmp ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.d 
	${RM} ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.d > ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.tmp
	${RM} ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.d 
	${CP} ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.tmp ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.d 
	${RM} ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.tmp
endif
${OBJECTDIR}/_ext/1847857110/GOL.o: ../../../../Microchip/Graphics/GOL.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	${RM} ${OBJECTDIR}/_ext/1847857110/GOL.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../Board Support Package" -I"../../../../Microchip/Graphics/Object Layer/Configs" -I"../../../../Microchip/Common" -I"../../../../Microchip/Graphics" -I"../../../../Microchip/Graphics/Drivers" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/mTouchCap/PIC18F_PIC24F CTMU Library" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/1847857110/GOL.o.d -o ${OBJECTDIR}/_ext/1847857110/GOL.o ../../../../Microchip/Graphics/GOL.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1847857110/GOL.o.d > ${OBJECTDIR}/_ext/1847857110/GOL.o.tmp
	${RM} ${OBJECTDIR}/_ext/1847857110/GOL.o.d 
	${CP} ${OBJECTDIR}/_ext/1847857110/GOL.o.tmp ${OBJECTDIR}/_ext/1847857110/GOL.o.d 
	${RM} ${OBJECTDIR}/_ext/1847857110/GOL.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1847857110/GOL.o.d > ${OBJECTDIR}/_ext/1847857110/GOL.o.tmp
	${RM} ${OBJECTDIR}/_ext/1847857110/GOL.o.d 
	${CP} ${OBJECTDIR}/_ext/1847857110/GOL.o.tmp ${OBJECTDIR}/_ext/1847857110/GOL.o.d 
	${RM} ${OBJECTDIR}/_ext/1847857110/GOL.o.tmp
endif
else
${OBJECTDIR}/_ext/1472/ResTouchScreen.o: ../ResTouchScreen.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/ResTouchScreen.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../Board Support Package" -I"../../../../Microchip/Graphics/Object Layer/Configs" -I"../../../../Microchip/Common" -I"../../../../Microchip/Graphics" -I"../../../../Microchip/Graphics/Drivers" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/mTouchCap/PIC18F_PIC24F CTMU Library" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/1472/ResTouchScreen.o.d -o ${OBJECTDIR}/_ext/1472/ResTouchScreen.o ../ResTouchScreen.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/ResTouchScreen.o.d > ${OBJECTDIR}/_ext/1472/ResTouchScreen.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/ResTouchScreen.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/ResTouchScreen.o.tmp ${OBJECTDIR}/_ext/1472/ResTouchScreen.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/ResTouchScreen.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/ResTouchScreen.o.d > ${OBJECTDIR}/_ext/1472/ResTouchScreen.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/ResTouchScreen.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/ResTouchScreen.o.tmp ${OBJECTDIR}/_ext/1472/ResTouchScreen.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/ResTouchScreen.o.tmp
endif
${OBJECTDIR}/_ext/366188474/gfxepmp.o: ../../../../Microchip/Graphics/Drivers/gfxepmp.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/366188474 
	${RM} ${OBJECTDIR}/_ext/366188474/gfxepmp.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../Board Support Package" -I"../../../../Microchip/Graphics/Object Layer/Configs" -I"../../../../Microchip/Common" -I"../../../../Microchip/Graphics" -I"../../../../Microchip/Graphics/Drivers" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/mTouchCap/PIC18F_PIC24F CTMU Library" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/366188474/gfxepmp.o.d -o ${OBJECTDIR}/_ext/366188474/gfxepmp.o ../../../../Microchip/Graphics/Drivers/gfxepmp.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/366188474/gfxepmp.o.d > ${OBJECTDIR}/_ext/366188474/gfxepmp.o.tmp
	${RM} ${OBJECTDIR}/_ext/366188474/gfxepmp.o.d 
	${CP} ${OBJECTDIR}/_ext/366188474/gfxepmp.o.tmp ${OBJECTDIR}/_ext/366188474/gfxepmp.o.d 
	${RM} ${OBJECTDIR}/_ext/366188474/gfxepmp.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/366188474/gfxepmp.o.d > ${OBJECTDIR}/_ext/366188474/gfxepmp.o.tmp
	${RM} ${OBJECTDIR}/_ext/366188474/gfxepmp.o.d 
	${CP} ${OBJECTDIR}/_ext/366188474/gfxepmp.o.tmp ${OBJECTDIR}/_ext/366188474/gfxepmp.o.d 
	${RM} ${OBJECTDIR}/_ext/366188474/gfxepmp.o.tmp
endif
${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o: ../../../../Microchip/Graphics/GOLSchemeDefault.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	${RM} ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../Board Support Package" -I"../../../../Microchip/Graphics/Object Layer/Configs" -I"../../../../Microchip/Common" -I"../../../../Microchip/Graphics" -I"../../../../Microchip/Graphics/Drivers" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/mTouchCap/PIC18F_PIC24F CTMU Library" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.d -o ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o ../../../../Microchip/Graphics/GOLSchemeDefault.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.d > ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.tmp
	${RM} ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.d 
	${CP} ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.tmp ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.d 
	${RM} ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.d > ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.tmp
	${RM} ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.d 
	${CP} ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.tmp ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.d 
	${RM} ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.tmp
endif
${OBJECTDIR}/_ext/274675202/mTouchCap_PIC24_CTMU_Physical.o: ../../../../Microchip/mTouchCap/PIC18F_PIC24F\ CTMU\ Library/mTouchCap_PIC24_CTMU_Physical.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/274675202 
	${RM} ${OBJECTDIR}/_ext/274675202/mTouchCap_PIC24_CTMU_Physical.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../Board Support Package" -I"../../../../Microchip/Graphics/Object Layer/Configs" -I"../../../../Microchip/Common" -I"../../../../Microchip/Graphics" -I"../../../../Microchip/Graphics/Drivers" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/mTouchCap/PIC18F_PIC24F CTMU Library" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/274675202/mTouchCap_PIC24_CTMU_Physical.o.d -o ${OBJECTDIR}/_ext/274675202/mTouchCap_PIC24_CTMU_Physical.o ../../../../Microchip/mTouchCap/PIC18F_PIC24F\ CTMU\ Library/mTouchCap_PIC24_CTMU_Physical.c  
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
${OBJECTDIR}/_ext/2020629477/Beep.o: ../../../../Board\ Support\ Package/Beep.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/2020629477 
	${RM} ${OBJECTDIR}/_ext/2020629477/Beep.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../Board Support Package" -I"../../../../Microchip/Graphics/Object Layer/Configs" -I"../../../../Microchip/Common" -I"../../../../Microchip/Graphics" -I"../../../../Microchip/Graphics/Drivers" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/mTouchCap/PIC18F_PIC24F CTMU Library" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/2020629477/Beep.o.d -o ${OBJECTDIR}/_ext/2020629477/Beep.o ../../../../Board\ Support\ Package/Beep.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2020629477/Beep.o.d > ${OBJECTDIR}/_ext/2020629477/Beep.o.tmp
	${RM} ${OBJECTDIR}/_ext/2020629477/Beep.o.d 
	${CP} ${OBJECTDIR}/_ext/2020629477/Beep.o.tmp ${OBJECTDIR}/_ext/2020629477/Beep.o.d 
	${RM} ${OBJECTDIR}/_ext/2020629477/Beep.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/2020629477/Beep.o.d > ${OBJECTDIR}/_ext/2020629477/Beep.o.tmp
	${RM} ${OBJECTDIR}/_ext/2020629477/Beep.o.d 
	${CP} ${OBJECTDIR}/_ext/2020629477/Beep.o.tmp ${OBJECTDIR}/_ext/2020629477/Beep.o.d 
	${RM} ${OBJECTDIR}/_ext/2020629477/Beep.o.tmp
endif
${OBJECTDIR}/_ext/1847857110/Primitive.o: ../../../../Microchip/Graphics/Primitive.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	${RM} ${OBJECTDIR}/_ext/1847857110/Primitive.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../Board Support Package" -I"../../../../Microchip/Graphics/Object Layer/Configs" -I"../../../../Microchip/Common" -I"../../../../Microchip/Graphics" -I"../../../../Microchip/Graphics/Drivers" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/mTouchCap/PIC18F_PIC24F CTMU Library" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/1847857110/Primitive.o.d -o ${OBJECTDIR}/_ext/1847857110/Primitive.o ../../../../Microchip/Graphics/Primitive.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1847857110/Primitive.o.d > ${OBJECTDIR}/_ext/1847857110/Primitive.o.tmp
	${RM} ${OBJECTDIR}/_ext/1847857110/Primitive.o.d 
	${CP} ${OBJECTDIR}/_ext/1847857110/Primitive.o.tmp ${OBJECTDIR}/_ext/1847857110/Primitive.o.d 
	${RM} ${OBJECTDIR}/_ext/1847857110/Primitive.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1847857110/Primitive.o.d > ${OBJECTDIR}/_ext/1847857110/Primitive.o.tmp
	${RM} ${OBJECTDIR}/_ext/1847857110/Primitive.o.d 
	${CP} ${OBJECTDIR}/_ext/1847857110/Primitive.o.tmp ${OBJECTDIR}/_ext/1847857110/Primitive.o.d 
	${RM} ${OBJECTDIR}/_ext/1847857110/Primitive.o.tmp
endif
${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o: ../../../../Microchip/Graphics/GOLFontDefault.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	${RM} ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../Board Support Package" -I"../../../../Microchip/Graphics/Object Layer/Configs" -I"../../../../Microchip/Common" -I"../../../../Microchip/Graphics" -I"../../../../Microchip/Graphics/Drivers" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/mTouchCap/PIC18F_PIC24F CTMU Library" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.d -o ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o ../../../../Microchip/Graphics/GOLFontDefault.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.d > ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.tmp
	${RM} ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.d 
	${CP} ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.tmp ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.d 
	${RM} ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.d > ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.tmp
	${RM} ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.d 
	${CP} ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.tmp ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.d 
	${RM} ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.tmp
endif
${OBJECTDIR}/_ext/1847857110/Button.o: ../../../../Microchip/Graphics/Button.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	${RM} ${OBJECTDIR}/_ext/1847857110/Button.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../Board Support Package" -I"../../../../Microchip/Graphics/Object Layer/Configs" -I"../../../../Microchip/Common" -I"../../../../Microchip/Graphics" -I"../../../../Microchip/Graphics/Drivers" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/mTouchCap/PIC18F_PIC24F CTMU Library" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/1847857110/Button.o.d -o ${OBJECTDIR}/_ext/1847857110/Button.o ../../../../Microchip/Graphics/Button.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1847857110/Button.o.d > ${OBJECTDIR}/_ext/1847857110/Button.o.tmp
	${RM} ${OBJECTDIR}/_ext/1847857110/Button.o.d 
	${CP} ${OBJECTDIR}/_ext/1847857110/Button.o.tmp ${OBJECTDIR}/_ext/1847857110/Button.o.d 
	${RM} ${OBJECTDIR}/_ext/1847857110/Button.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1847857110/Button.o.d > ${OBJECTDIR}/_ext/1847857110/Button.o.tmp
	${RM} ${OBJECTDIR}/_ext/1847857110/Button.o.d 
	${CP} ${OBJECTDIR}/_ext/1847857110/Button.o.tmp ${OBJECTDIR}/_ext/1847857110/Button.o.d 
	${RM} ${OBJECTDIR}/_ext/1847857110/Button.o.tmp
endif
${OBJECTDIR}/_ext/2020629477/SST25VF016.o: ../../../../Board\ Support\ Package/SST25VF016.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/2020629477 
	${RM} ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../Board Support Package" -I"../../../../Microchip/Graphics/Object Layer/Configs" -I"../../../../Microchip/Common" -I"../../../../Microchip/Graphics" -I"../../../../Microchip/Graphics/Drivers" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/mTouchCap/PIC18F_PIC24F CTMU Library" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.d -o ${OBJECTDIR}/_ext/2020629477/SST25VF016.o ../../../../Board\ Support\ Package/SST25VF016.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.d > ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.tmp
	${RM} ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.d 
	${CP} ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.tmp ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.d 
	${RM} ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.d > ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.tmp
	${RM} ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.d 
	${CP} ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.tmp ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.d 
	${RM} ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.tmp
endif
${OBJECTDIR}/_ext/1472/Cap-mTouch.o: ../Cap-mTouch.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/Cap-mTouch.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../Board Support Package" -I"../../../../Microchip/Graphics/Object Layer/Configs" -I"../../../../Microchip/Common" -I"../../../../Microchip/Graphics" -I"../../../../Microchip/Graphics/Drivers" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/mTouchCap/PIC18F_PIC24F CTMU Library" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/1472/Cap-mTouch.o.d -o ${OBJECTDIR}/_ext/1472/Cap-mTouch.o ../Cap-mTouch.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/Cap-mTouch.o.d > ${OBJECTDIR}/_ext/1472/Cap-mTouch.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/Cap-mTouch.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/Cap-mTouch.o.tmp ${OBJECTDIR}/_ext/1472/Cap-mTouch.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/Cap-mTouch.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/Cap-mTouch.o.d > ${OBJECTDIR}/_ext/1472/Cap-mTouch.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/Cap-mTouch.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/Cap-mTouch.o.tmp ${OBJECTDIR}/_ext/1472/Cap-mTouch.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/Cap-mTouch.o.tmp
endif
${OBJECTDIR}/_ext/1472/softTimers.o: ../softTimers.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/softTimers.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../Board Support Package" -I"../../../../Microchip/Graphics/Object Layer/Configs" -I"../../../../Microchip/Common" -I"../../../../Microchip/Graphics" -I"../../../../Microchip/Graphics/Drivers" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/mTouchCap/PIC18F_PIC24F CTMU Library" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/1472/softTimers.o.d -o ${OBJECTDIR}/_ext/1472/softTimers.o ../softTimers.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/softTimers.o.d > ${OBJECTDIR}/_ext/1472/softTimers.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/softTimers.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/softTimers.o.tmp ${OBJECTDIR}/_ext/1472/softTimers.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/softTimers.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/softTimers.o.d > ${OBJECTDIR}/_ext/1472/softTimers.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/softTimers.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/softTimers.o.tmp ${OBJECTDIR}/_ext/1472/softTimers.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/softTimers.o.tmp
endif
${OBJECTDIR}/_ext/2020629477/EEPROM.o: ../../../../Board\ Support\ Package/EEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/2020629477 
	${RM} ${OBJECTDIR}/_ext/2020629477/EEPROM.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../Board Support Package" -I"../../../../Microchip/Graphics/Object Layer/Configs" -I"../../../../Microchip/Common" -I"../../../../Microchip/Graphics" -I"../../../../Microchip/Graphics/Drivers" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/mTouchCap/PIC18F_PIC24F CTMU Library" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/2020629477/EEPROM.o.d -o ${OBJECTDIR}/_ext/2020629477/EEPROM.o ../../../../Board\ Support\ Package/EEPROM.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2020629477/EEPROM.o.d > ${OBJECTDIR}/_ext/2020629477/EEPROM.o.tmp
	${RM} ${OBJECTDIR}/_ext/2020629477/EEPROM.o.d 
	${CP} ${OBJECTDIR}/_ext/2020629477/EEPROM.o.tmp ${OBJECTDIR}/_ext/2020629477/EEPROM.o.d 
	${RM} ${OBJECTDIR}/_ext/2020629477/EEPROM.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/2020629477/EEPROM.o.d > ${OBJECTDIR}/_ext/2020629477/EEPROM.o.tmp
	${RM} ${OBJECTDIR}/_ext/2020629477/EEPROM.o.d 
	${CP} ${OBJECTDIR}/_ext/2020629477/EEPROM.o.tmp ${OBJECTDIR}/_ext/2020629477/EEPROM.o.d 
	${RM} ${OBJECTDIR}/_ext/2020629477/EEPROM.o.tmp
endif
${OBJECTDIR}/_ext/1472/Pictures\ C30.o: ../Pictures\ C30.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/Pictures\ C30.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../Board Support Package" -I"../../../../Microchip/Graphics/Object Layer/Configs" -I"../../../../Microchip/Common" -I"../../../../Microchip/Graphics" -I"../../../../Microchip/Graphics/Drivers" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/mTouchCap/PIC18F_PIC24F CTMU Library" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/1472/Pictures\ C30.o.d -o ${OBJECTDIR}/_ext/1472/Pictures\ C30.o ../Pictures\ C30.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/Pictures\ C30.o.d > ${OBJECTDIR}/_ext/1472/Pictures\ C30.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/Pictures\ C30.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/Pictures\ C30.o.tmp ${OBJECTDIR}/_ext/1472/Pictures\ C30.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/Pictures\ C30.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/Pictures\ C30.o.d > ${OBJECTDIR}/_ext/1472/Pictures\ C30.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/Pictures\ C30.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/Pictures\ C30.o.tmp ${OBJECTDIR}/_ext/1472/Pictures\ C30.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/Pictures\ C30.o.tmp
endif
${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o: ../../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/366188474 
	${RM} ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../Board Support Package" -I"../../../../Microchip/Graphics/Object Layer/Configs" -I"../../../../Microchip/Common" -I"../../../../Microchip/Graphics" -I"../../../../Microchip/Graphics/Drivers" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/mTouchCap/PIC18F_PIC24F CTMU Library" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.d -o ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o ../../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.d > ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.tmp
	${RM} ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.d 
	${CP} ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.tmp ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.d 
	${RM} ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.d > ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.tmp
	${RM} ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.d 
	${CP} ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.tmp ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.d 
	${RM} ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.tmp
endif
${OBJECTDIR}/_ext/2048740170/TimeDelay.o: ../../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/2048740170 
	${RM} ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../Board Support Package" -I"../../../../Microchip/Graphics/Object Layer/Configs" -I"../../../../Microchip/Common" -I"../../../../Microchip/Graphics" -I"../../../../Microchip/Graphics/Drivers" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/mTouchCap/PIC18F_PIC24F CTMU Library" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.d -o ${OBJECTDIR}/_ext/2048740170/TimeDelay.o ../../../../Microchip/Common/TimeDelay.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.d > ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.tmp
	${RM} ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.d 
	${CP} ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.tmp ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.d 
	${RM} ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.d > ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.tmp
	${RM} ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.d 
	${CP} ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.tmp ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.d 
	${RM} ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.tmp
endif
${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_DA210Graphics.o: ../mTouchCap_PIC24F_DA210Graphics.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_DA210Graphics.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../Board Support Package" -I"../../../../Microchip/Graphics/Object Layer/Configs" -I"../../../../Microchip/Common" -I"../../../../Microchip/Graphics" -I"../../../../Microchip/Graphics/Drivers" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/mTouchCap/PIC18F_PIC24F CTMU Library" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_DA210Graphics.o.d -o ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_DA210Graphics.o ../mTouchCap_PIC24F_DA210Graphics.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_DA210Graphics.o.d > ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_DA210Graphics.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_DA210Graphics.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_DA210Graphics.o.tmp ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_DA210Graphics.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_DA210Graphics.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_DA210Graphics.o.d > ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_DA210Graphics.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_DA210Graphics.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_DA210Graphics.o.tmp ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_DA210Graphics.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/mTouchCap_PIC24F_DA210Graphics.o.tmp
endif
${OBJECTDIR}/_ext/2020629477/drv_spi.o: ../../../../Board\ Support\ Package/drv_spi.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/2020629477 
	${RM} ${OBJECTDIR}/_ext/2020629477/drv_spi.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../Board Support Package" -I"../../../../Microchip/Graphics/Object Layer/Configs" -I"../../../../Microchip/Common" -I"../../../../Microchip/Graphics" -I"../../../../Microchip/Graphics/Drivers" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/mTouchCap/PIC18F_PIC24F CTMU Library" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/2020629477/drv_spi.o.d -o ${OBJECTDIR}/_ext/2020629477/drv_spi.o ../../../../Board\ Support\ Package/drv_spi.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2020629477/drv_spi.o.d > ${OBJECTDIR}/_ext/2020629477/drv_spi.o.tmp
	${RM} ${OBJECTDIR}/_ext/2020629477/drv_spi.o.d 
	${CP} ${OBJECTDIR}/_ext/2020629477/drv_spi.o.tmp ${OBJECTDIR}/_ext/2020629477/drv_spi.o.d 
	${RM} ${OBJECTDIR}/_ext/2020629477/drv_spi.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/2020629477/drv_spi.o.d > ${OBJECTDIR}/_ext/2020629477/drv_spi.o.tmp
	${RM} ${OBJECTDIR}/_ext/2020629477/drv_spi.o.d 
	${CP} ${OBJECTDIR}/_ext/2020629477/drv_spi.o.tmp ${OBJECTDIR}/_ext/2020629477/drv_spi.o.d 
	${RM} ${OBJECTDIR}/_ext/2020629477/drv_spi.o.tmp
endif
${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.o: ../../../../Microchip/mTouchCap/PIC18F_PIC24F\ CTMU\ Library/mTouchCap_Adc.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/274675202 
	${RM} ${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../Board Support Package" -I"../../../../Microchip/Graphics/Object Layer/Configs" -I"../../../../Microchip/Common" -I"../../../../Microchip/Graphics" -I"../../../../Microchip/Graphics/Drivers" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/mTouchCap/PIC18F_PIC24F CTMU Library" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.o.d -o ${OBJECTDIR}/_ext/274675202/mTouchCap_Adc.o ../../../../Microchip/mTouchCap/PIC18F_PIC24F\ CTMU\ Library/mTouchCap_Adc.c  
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
${OBJECTDIR}/_ext/1847857110/Slider.o: ../../../../Microchip/Graphics/Slider.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	${RM} ${OBJECTDIR}/_ext/1847857110/Slider.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../Board Support Package" -I"../../../../Microchip/Graphics/Object Layer/Configs" -I"../../../../Microchip/Common" -I"../../../../Microchip/Graphics" -I"../../../../Microchip/Graphics/Drivers" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/mTouchCap/PIC18F_PIC24F CTMU Library" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/1847857110/Slider.o.d -o ${OBJECTDIR}/_ext/1847857110/Slider.o ../../../../Microchip/Graphics/Slider.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1847857110/Slider.o.d > ${OBJECTDIR}/_ext/1847857110/Slider.o.tmp
	${RM} ${OBJECTDIR}/_ext/1847857110/Slider.o.d 
	${CP} ${OBJECTDIR}/_ext/1847857110/Slider.o.tmp ${OBJECTDIR}/_ext/1847857110/Slider.o.d 
	${RM} ${OBJECTDIR}/_ext/1847857110/Slider.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1847857110/Slider.o.d > ${OBJECTDIR}/_ext/1847857110/Slider.o.tmp
	${RM} ${OBJECTDIR}/_ext/1847857110/Slider.o.d 
	${CP} ${OBJECTDIR}/_ext/1847857110/Slider.o.tmp ${OBJECTDIR}/_ext/1847857110/Slider.o.d 
	${RM} ${OBJECTDIR}/_ext/1847857110/Slider.o.tmp
endif
${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.o: ../../../../Microchip/mTouchCap/PIC18F_PIC24F\ CTMU\ Library/mTouchCap_CtmuAPI.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/274675202 
	${RM} ${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../Board Support Package" -I"../../../../Microchip/Graphics/Object Layer/Configs" -I"../../../../Microchip/Common" -I"../../../../Microchip/Graphics" -I"../../../../Microchip/Graphics/Drivers" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/mTouchCap/PIC18F_PIC24F CTMU Library" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.o.d -o ${OBJECTDIR}/_ext/274675202/mTouchCap_CtmuAPI.o ../../../../Microchip/mTouchCap/PIC18F_PIC24F\ CTMU\ Library/mTouchCap_CtmuAPI.c  
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
${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o: ../../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/366188474 
	${RM} ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../Board Support Package" -I"../../../../Microchip/Graphics/Object Layer/Configs" -I"../../../../Microchip/Common" -I"../../../../Microchip/Graphics" -I"../../../../Microchip/Graphics/Drivers" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/mTouchCap/PIC18F_PIC24F CTMU Library" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.d -o ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o ../../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.d > ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.tmp
	${RM} ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.d 
	${CP} ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.tmp ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.d 
	${RM} ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.d > ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.tmp
	${RM} ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.d 
	${CP} ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.tmp ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.d 
	${RM} ${OBJECTDIR}/_ext/366188474/mchpGfxDrv.o.tmp
endif
${OBJECTDIR}/_ext/1847857110/GOL.o: ../../../../Microchip/Graphics/GOL.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	${RM} ${OBJECTDIR}/_ext/1847857110/GOL.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../Board Support Package" -I"../../../../Microchip/Graphics/Object Layer/Configs" -I"../../../../Microchip/Common" -I"../../../../Microchip/Graphics" -I"../../../../Microchip/Graphics/Drivers" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Graphics" -I"../../../../Microchip/mTouchCap/PIC18F_PIC24F CTMU Library" -I"../../../../Microchip/Include/mTouchCap/PIC18F_PIC24F CTMU Library" -MMD -MF ${OBJECTDIR}/_ext/1847857110/GOL.o.d -o ${OBJECTDIR}/_ext/1847857110/GOL.o ../../../../Microchip/Graphics/GOL.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1847857110/GOL.o.d > ${OBJECTDIR}/_ext/1847857110/GOL.o.tmp
	${RM} ${OBJECTDIR}/_ext/1847857110/GOL.o.d 
	${CP} ${OBJECTDIR}/_ext/1847857110/GOL.o.tmp ${OBJECTDIR}/_ext/1847857110/GOL.o.d 
	${RM} ${OBJECTDIR}/_ext/1847857110/GOL.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1847857110/GOL.o.d > ${OBJECTDIR}/_ext/1847857110/GOL.o.tmp
	${RM} ${OBJECTDIR}/_ext/1847857110/GOL.o.d 
	${CP} ${OBJECTDIR}/_ext/1847857110/GOL.o.tmp ${OBJECTDIR}/_ext/1847857110/GOL.o.d 
	${RM} ${OBJECTDIR}/_ext/1847857110/GOL.o.tmp
endif
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf  -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf ${OBJECTFILES}        -Wl,--defsym=__MPLAB_BUILD=1,--heap=3000,-L"/C/Program Files/Microchip/mplabc30/v3.25",-Map="$(BINDIR_)$(TARGETBASE).map",--report-mem,--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_REAL_ICE=1
else
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf  -mcpu=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf ${OBJECTFILES}        -Wl,--defsym=__MPLAB_BUILD=1,--heap=3000,-L"/C/Program Files/Microchip/mplabc30/v3.25",-Map="$(BINDIR_)$(TARGETBASE).map",--report-mem,--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION)
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
