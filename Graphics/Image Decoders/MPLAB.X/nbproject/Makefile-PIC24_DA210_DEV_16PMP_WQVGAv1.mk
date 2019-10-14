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
CND_CONF=PIC24_DA210_DEV_16PMP_WQVGAv1
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
OBJECTFILES=${OBJECTDIR}/_ext/1472/Application.o ${OBJECTDIR}/_ext/1472/FlashImage.o ${OBJECTDIR}/_ext/1472/FlashImageData.o ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o ${OBJECTDIR}/_ext/1626048738/GifDecoder.o ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o ${OBJECTDIR}/_ext/1626048738/jidctint.o ${OBJECTDIR}/_ext/1687970324/cpld.o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ${OBJECTDIR}/_ext/1919882987/SSD1926.o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ${OBJECTDIR}/_ext/1919882987/drvTFT001.o ${OBJECTDIR}/_ext/1919882987/gfxepmp.o ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ${OBJECTDIR}/_ext/803622919/Primitive.o


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

# Path to java used to run MPLAB X when this makefile was created
MP_JAVA_PATH=C:\\Program\ Files\\Java\\jdk1.6.0_26\\jre/bin/
OS_CURRENT="$(shell uname -s)"
############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
MP_CC=C:\\Program\ Files\\Microchip\\mplabc30\\v3.30c\\bin\\pic30-gcc.exe
# MP_BC is not defined
MP_AS=C:\\Program\ Files\\Microchip\\mplabc30\\v3.30c\\bin\\pic30-as.exe
MP_LD=C:\\Program\ Files\\Microchip\\mplabc30\\v3.30c\\bin\\pic30-ld.exe
MP_AR=C:\\Program\ Files\\Microchip\\mplabc30\\v3.30c\\bin\\pic30-ar.exe
# MP_BC is not defined
MP_CC_DIR=C:\\Program\ Files\\Microchip\\mplabc30\\v3.30c\\bin
# MP_BC_DIR is not defined
MP_AS_DIR=C:\\Program\ Files\\Microchip\\mplabc30\\v3.30c\\bin
MP_LD_DIR=C:\\Program\ Files\\Microchip\\mplabc30\\v3.30c\\bin
MP_AR_DIR=C:\\Program\ Files\\Microchip\\mplabc30\\v3.30c\\bin
# MP_BC_DIR is not defined

.build-conf: ${BUILD_SUBPROJECTS}
	${MAKE}  -f nbproject/Makefile-PIC24_DA210_DEV_16PMP_WQVGAv1.mk dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf

MP_PROCESSOR_OPTION=24FJ256DA210
MP_LINKER_FILE_OPTION=,-Tp24FJ256DA210.gld
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
${OBJECTDIR}/_ext/803622919/Primitive.o: ../../../Microchip/Graphics/Primitive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.ok ${OBJECTDIR}/_ext/803622919/Primitive.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/Primitive.o.d -o ${OBJECTDIR}/_ext/803622919/Primitive.o ../../../Microchip/Graphics/Primitive.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/Primitive.o.d -o ${OBJECTDIR}/_ext/803622919/Primitive.o ../../../Microchip/Graphics/Primitive.c    2>&1  > ${OBJECTDIR}/_ext/803622919/Primitive.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/803622919/Primitive.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Primitive.o.d > ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp
	@${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	@${CP} ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/Primitive.o.d > ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp
	@${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	@${CP} ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/803622919/Primitive.o.err 
	@cat ${OBJECTDIR}/_ext/803622919/Primitive.o.err 
	@if [ -f ${OBJECTDIR}/_ext/803622919/Primitive.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/803622919/Primitive.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/803622919/GOLFontDefault.o: ../../../Microchip/Graphics/GOLFontDefault.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.ok ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d -o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ../../../Microchip/Graphics/GOLFontDefault.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d -o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ../../../Microchip/Graphics/GOLFontDefault.c    2>&1  > ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d > ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	@${CP} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d > ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	@${CP} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.err 
	@cat ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.err 
	@if [ -f ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o: ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.ok ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d -o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d -o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c    2>&1  > ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d > ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	@${CP} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d > ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	@${CP} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.err 
	@cat ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1919882987/SSD1926.o: ../../../Microchip/Graphics/Drivers/SSD1926.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.ok ${OBJECTDIR}/_ext/1919882987/SSD1926.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d -o ${OBJECTDIR}/_ext/1919882987/SSD1926.o ../../../Microchip/Graphics/Drivers/SSD1926.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d -o ${OBJECTDIR}/_ext/1919882987/SSD1926.o ../../../Microchip/Graphics/Drivers/SSD1926.c    2>&1  > ${OBJECTDIR}/_ext/1919882987/SSD1926.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1919882987/SSD1926.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d > ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	@${CP} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d > ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	@${CP} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1919882987/SSD1926.o.err 
	@cat ${OBJECTDIR}/_ext/1919882987/SSD1926.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1919882987/SSD1926.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1919882987/SSD1926.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1472/FlashImage.o: ../FlashImage.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/FlashImage.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/FlashImage.o.ok ${OBJECTDIR}/_ext/1472/FlashImage.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/FlashImage.o.d -o ${OBJECTDIR}/_ext/1472/FlashImage.o ../FlashImage.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/FlashImage.o.d -o ${OBJECTDIR}/_ext/1472/FlashImage.o ../FlashImage.c    2>&1  > ${OBJECTDIR}/_ext/1472/FlashImage.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/FlashImage.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/FlashImage.o.d > ${OBJECTDIR}/_ext/1472/FlashImage.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/FlashImage.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/FlashImage.o.tmp ${OBJECTDIR}/_ext/1472/FlashImage.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/FlashImage.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/FlashImage.o.d > ${OBJECTDIR}/_ext/1472/FlashImage.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/FlashImage.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/FlashImage.o.tmp ${OBJECTDIR}/_ext/1472/FlashImage.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/FlashImage.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1472/FlashImage.o.err 
	@cat ${OBJECTDIR}/_ext/1472/FlashImage.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1472/FlashImage.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/FlashImage.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1472/Application.o: ../Application.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/Application.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Application.o.ok ${OBJECTDIR}/_ext/1472/Application.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/Application.o.d -o ${OBJECTDIR}/_ext/1472/Application.o ../Application.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/Application.o.d -o ${OBJECTDIR}/_ext/1472/Application.o ../Application.c    2>&1  > ${OBJECTDIR}/_ext/1472/Application.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/Application.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/Application.o.d > ${OBJECTDIR}/_ext/1472/Application.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/Application.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/Application.o.tmp ${OBJECTDIR}/_ext/1472/Application.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Application.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/Application.o.d > ${OBJECTDIR}/_ext/1472/Application.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/Application.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/Application.o.tmp ${OBJECTDIR}/_ext/1472/Application.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Application.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1472/Application.o.err 
	@cat ${OBJECTDIR}/_ext/1472/Application.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1472/Application.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/Application.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o: ../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.ok ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d -o ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o ../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d -o ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o ../../../Microchip/Graphics/Drivers/mchpGfxDrv.c    2>&1  > ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d > ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	@${CP} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.tmp ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d > ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	@${CP} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.tmp ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.err 
	@cat ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1687970324/cpld.o: ../../../Board\ Support\ Package/cpld.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.ok ${OBJECTDIR}/_ext/1687970324/cpld.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/cpld.o.d -o ${OBJECTDIR}/_ext/1687970324/cpld.o ../../../Board\ Support\ Package/cpld.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/cpld.o.d -o ${OBJECTDIR}/_ext/1687970324/cpld.o ../../../Board\ Support\ Package/cpld.c    2>&1  > ${OBJECTDIR}/_ext/1687970324/cpld.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1687970324/cpld.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/cpld.o.d > ${OBJECTDIR}/_ext/1687970324/cpld.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	@${CP} ${OBJECTDIR}/_ext/1687970324/cpld.o.tmp ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1687970324/cpld.o.d > ${OBJECTDIR}/_ext/1687970324/cpld.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	@${CP} ${OBJECTDIR}/_ext/1687970324/cpld.o.tmp ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1687970324/cpld.o.err 
	@cat ${OBJECTDIR}/_ext/1687970324/cpld.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1687970324/cpld.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1687970324/cpld.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1472/FlashImageData.o: ../FlashImageData.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/FlashImageData.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/FlashImageData.o.ok ${OBJECTDIR}/_ext/1472/FlashImageData.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/FlashImageData.o.d -o ${OBJECTDIR}/_ext/1472/FlashImageData.o ../FlashImageData.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/FlashImageData.o.d -o ${OBJECTDIR}/_ext/1472/FlashImageData.o ../FlashImageData.c    2>&1  > ${OBJECTDIR}/_ext/1472/FlashImageData.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/FlashImageData.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/FlashImageData.o.d > ${OBJECTDIR}/_ext/1472/FlashImageData.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/FlashImageData.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/FlashImageData.o.tmp ${OBJECTDIR}/_ext/1472/FlashImageData.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/FlashImageData.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/FlashImageData.o.d > ${OBJECTDIR}/_ext/1472/FlashImageData.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/FlashImageData.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/FlashImageData.o.tmp ${OBJECTDIR}/_ext/1472/FlashImageData.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/FlashImageData.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1472/FlashImageData.o.err 
	@cat ${OBJECTDIR}/_ext/1472/FlashImageData.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1472/FlashImageData.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/FlashImageData.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1919882987/drvTFT001.o: ../../../Microchip/Graphics/Drivers/drvTFT001.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.ok ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d -o ${OBJECTDIR}/_ext/1919882987/drvTFT001.o ../../../Microchip/Graphics/Drivers/drvTFT001.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d -o ${OBJECTDIR}/_ext/1919882987/drvTFT001.o ../../../Microchip/Graphics/Drivers/drvTFT001.c    2>&1  > ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d > ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d 
	@${CP} ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.tmp ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d > ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d 
	@${CP} ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.tmp ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.err 
	@cat ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1626048738/jidctint.o: ../../../Microchip/Image\ Decoders/jidctint.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	@${RM} ${OBJECTDIR}/_ext/1626048738/jidctint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/jidctint.o.ok ${OBJECTDIR}/_ext/1626048738/jidctint.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1626048738/jidctint.o.d -o ${OBJECTDIR}/_ext/1626048738/jidctint.o ../../../Microchip/Image\ Decoders/jidctint.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1626048738/jidctint.o.d -o ${OBJECTDIR}/_ext/1626048738/jidctint.o ../../../Microchip/Image\ Decoders/jidctint.c    2>&1  > ${OBJECTDIR}/_ext/1626048738/jidctint.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1626048738/jidctint.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1626048738/jidctint.o.d > ${OBJECTDIR}/_ext/1626048738/jidctint.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1626048738/jidctint.o.d 
	@${CP} ${OBJECTDIR}/_ext/1626048738/jidctint.o.tmp ${OBJECTDIR}/_ext/1626048738/jidctint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/jidctint.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1626048738/jidctint.o.d > ${OBJECTDIR}/_ext/1626048738/jidctint.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1626048738/jidctint.o.d 
	@${CP} ${OBJECTDIR}/_ext/1626048738/jidctint.o.tmp ${OBJECTDIR}/_ext/1626048738/jidctint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/jidctint.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1626048738/jidctint.o.err 
	@cat ${OBJECTDIR}/_ext/1626048738/jidctint.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1626048738/jidctint.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1626048738/jidctint.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1626048738/GifDecoder.o: ../../../Microchip/Image\ Decoders/GifDecoder.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	@${RM} ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.ok ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.d -o ${OBJECTDIR}/_ext/1626048738/GifDecoder.o ../../../Microchip/Image\ Decoders/GifDecoder.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.d -o ${OBJECTDIR}/_ext/1626048738/GifDecoder.o ../../../Microchip/Image\ Decoders/GifDecoder.c    2>&1  > ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.d > ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.d 
	@${CP} ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.tmp ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.d > ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.d 
	@${CP} ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.tmp ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.err 
	@cat ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1626048738/BmpDecoder.o: ../../../Microchip/Image\ Decoders/BmpDecoder.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	@${RM} ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.ok ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d -o ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o ../../../Microchip/Image\ Decoders/BmpDecoder.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d -o ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o ../../../Microchip/Image\ Decoders/BmpDecoder.c    2>&1  > ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d > ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d 
	@${CP} ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.tmp ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d > ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d 
	@${CP} ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.tmp ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.err 
	@cat ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1860783399/TimeDelay.o: ../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1860783399 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.ok ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d -o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ../../../Microchip/Common/TimeDelay.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d -o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ../../../Microchip/Common/TimeDelay.c    2>&1  > ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d > ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	@${CP} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d > ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	@${CP} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.err 
	@cat ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1626048738/ImageDecoder.o: ../../../Microchip/Image\ Decoders/ImageDecoder.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	@${RM} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.ok ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d -o ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o ../../../Microchip/Image\ Decoders/ImageDecoder.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d -o ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o ../../../Microchip/Image\ Decoders/ImageDecoder.c    2>&1  > ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d > ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d 
	@${CP} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.tmp ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d > ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d 
	@${CP} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.tmp ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.err 
	@cat ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1919882987/gfxepmp.o: ../../../Microchip/Graphics/Drivers/gfxepmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.ok ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d -o ${OBJECTDIR}/_ext/1919882987/gfxepmp.o ../../../Microchip/Graphics/Drivers/gfxepmp.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d -o ${OBJECTDIR}/_ext/1919882987/gfxepmp.o ../../../Microchip/Graphics/Drivers/gfxepmp.c    2>&1  > ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d > ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	@${CP} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d > ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	@${CP} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.err 
	@cat ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o: ../../../Microchip/Graphics/Drivers/mchpGfxDrvBuffer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.ok ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../../Board Support Package" -I"../../../Microchip/Include" -mlarge-code -mlarge-arrays -MMD -MF ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.d -o ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o ../../../Microchip/Graphics/Drivers/mchpGfxDrvBuffer.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../../Board Support Package" -I"../../../Microchip/Include" -mlarge-code -mlarge-arrays -MMD -MF ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.d -o ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o ../../../Microchip/Graphics/Drivers/mchpGfxDrvBuffer.c    2>&1  > ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.d > ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.d 
	@${CP} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.tmp ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.d > ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.d 
	@${CP} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.tmp ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.err 
	@cat ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1626048738/JpegDecoder.o: ../../../Microchip/Image\ Decoders/JpegDecoder.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	@${RM} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.ok ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d -o ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o ../../../Microchip/Image\ Decoders/JpegDecoder.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d -o ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o ../../../Microchip/Image\ Decoders/JpegDecoder.c    2>&1  > ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d > ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d 
	@${CP} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.tmp ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d > ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d 
	@${CP} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.tmp ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.err 
	@cat ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.ok; else exit 1; fi
	
else
${OBJECTDIR}/_ext/803622919/Primitive.o: ../../../Microchip/Graphics/Primitive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.ok ${OBJECTDIR}/_ext/803622919/Primitive.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/Primitive.o.d -o ${OBJECTDIR}/_ext/803622919/Primitive.o ../../../Microchip/Graphics/Primitive.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/Primitive.o.d -o ${OBJECTDIR}/_ext/803622919/Primitive.o ../../../Microchip/Graphics/Primitive.c    2>&1  > ${OBJECTDIR}/_ext/803622919/Primitive.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/803622919/Primitive.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Primitive.o.d > ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp
	@${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	@${CP} ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/Primitive.o.d > ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp
	@${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	@${CP} ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/803622919/Primitive.o.err 
	@cat ${OBJECTDIR}/_ext/803622919/Primitive.o.err 
	@if [ -f ${OBJECTDIR}/_ext/803622919/Primitive.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/803622919/Primitive.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/803622919/GOLFontDefault.o: ../../../Microchip/Graphics/GOLFontDefault.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.ok ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d -o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ../../../Microchip/Graphics/GOLFontDefault.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d -o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ../../../Microchip/Graphics/GOLFontDefault.c    2>&1  > ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d > ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	@${CP} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d > ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	@${CP} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.err 
	@cat ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.err 
	@if [ -f ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o: ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.ok ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d -o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d -o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c    2>&1  > ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d > ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	@${CP} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d > ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	@${CP} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.err 
	@cat ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1919882987/SSD1926.o: ../../../Microchip/Graphics/Drivers/SSD1926.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.ok ${OBJECTDIR}/_ext/1919882987/SSD1926.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d -o ${OBJECTDIR}/_ext/1919882987/SSD1926.o ../../../Microchip/Graphics/Drivers/SSD1926.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d -o ${OBJECTDIR}/_ext/1919882987/SSD1926.o ../../../Microchip/Graphics/Drivers/SSD1926.c    2>&1  > ${OBJECTDIR}/_ext/1919882987/SSD1926.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1919882987/SSD1926.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d > ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	@${CP} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d > ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	@${CP} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1919882987/SSD1926.o.err 
	@cat ${OBJECTDIR}/_ext/1919882987/SSD1926.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1919882987/SSD1926.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1919882987/SSD1926.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1472/FlashImage.o: ../FlashImage.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/FlashImage.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/FlashImage.o.ok ${OBJECTDIR}/_ext/1472/FlashImage.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/FlashImage.o.d -o ${OBJECTDIR}/_ext/1472/FlashImage.o ../FlashImage.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/FlashImage.o.d -o ${OBJECTDIR}/_ext/1472/FlashImage.o ../FlashImage.c    2>&1  > ${OBJECTDIR}/_ext/1472/FlashImage.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/FlashImage.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/FlashImage.o.d > ${OBJECTDIR}/_ext/1472/FlashImage.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/FlashImage.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/FlashImage.o.tmp ${OBJECTDIR}/_ext/1472/FlashImage.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/FlashImage.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/FlashImage.o.d > ${OBJECTDIR}/_ext/1472/FlashImage.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/FlashImage.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/FlashImage.o.tmp ${OBJECTDIR}/_ext/1472/FlashImage.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/FlashImage.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1472/FlashImage.o.err 
	@cat ${OBJECTDIR}/_ext/1472/FlashImage.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1472/FlashImage.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/FlashImage.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1472/Application.o: ../Application.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/Application.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Application.o.ok ${OBJECTDIR}/_ext/1472/Application.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/Application.o.d -o ${OBJECTDIR}/_ext/1472/Application.o ../Application.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/Application.o.d -o ${OBJECTDIR}/_ext/1472/Application.o ../Application.c    2>&1  > ${OBJECTDIR}/_ext/1472/Application.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/Application.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/Application.o.d > ${OBJECTDIR}/_ext/1472/Application.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/Application.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/Application.o.tmp ${OBJECTDIR}/_ext/1472/Application.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Application.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/Application.o.d > ${OBJECTDIR}/_ext/1472/Application.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/Application.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/Application.o.tmp ${OBJECTDIR}/_ext/1472/Application.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Application.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1472/Application.o.err 
	@cat ${OBJECTDIR}/_ext/1472/Application.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1472/Application.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/Application.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o: ../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.ok ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d -o ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o ../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d -o ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o ../../../Microchip/Graphics/Drivers/mchpGfxDrv.c    2>&1  > ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d > ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	@${CP} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.tmp ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d > ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	@${CP} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.tmp ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.err 
	@cat ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1687970324/cpld.o: ../../../Board\ Support\ Package/cpld.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.ok ${OBJECTDIR}/_ext/1687970324/cpld.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/cpld.o.d -o ${OBJECTDIR}/_ext/1687970324/cpld.o ../../../Board\ Support\ Package/cpld.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/cpld.o.d -o ${OBJECTDIR}/_ext/1687970324/cpld.o ../../../Board\ Support\ Package/cpld.c    2>&1  > ${OBJECTDIR}/_ext/1687970324/cpld.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1687970324/cpld.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/cpld.o.d > ${OBJECTDIR}/_ext/1687970324/cpld.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	@${CP} ${OBJECTDIR}/_ext/1687970324/cpld.o.tmp ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1687970324/cpld.o.d > ${OBJECTDIR}/_ext/1687970324/cpld.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	@${CP} ${OBJECTDIR}/_ext/1687970324/cpld.o.tmp ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1687970324/cpld.o.err 
	@cat ${OBJECTDIR}/_ext/1687970324/cpld.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1687970324/cpld.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1687970324/cpld.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1472/FlashImageData.o: ../FlashImageData.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/FlashImageData.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/FlashImageData.o.ok ${OBJECTDIR}/_ext/1472/FlashImageData.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/FlashImageData.o.d -o ${OBJECTDIR}/_ext/1472/FlashImageData.o ../FlashImageData.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/FlashImageData.o.d -o ${OBJECTDIR}/_ext/1472/FlashImageData.o ../FlashImageData.c    2>&1  > ${OBJECTDIR}/_ext/1472/FlashImageData.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/FlashImageData.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/FlashImageData.o.d > ${OBJECTDIR}/_ext/1472/FlashImageData.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/FlashImageData.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/FlashImageData.o.tmp ${OBJECTDIR}/_ext/1472/FlashImageData.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/FlashImageData.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/FlashImageData.o.d > ${OBJECTDIR}/_ext/1472/FlashImageData.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/FlashImageData.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/FlashImageData.o.tmp ${OBJECTDIR}/_ext/1472/FlashImageData.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/FlashImageData.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1472/FlashImageData.o.err 
	@cat ${OBJECTDIR}/_ext/1472/FlashImageData.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1472/FlashImageData.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/FlashImageData.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1919882987/drvTFT001.o: ../../../Microchip/Graphics/Drivers/drvTFT001.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.ok ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d -o ${OBJECTDIR}/_ext/1919882987/drvTFT001.o ../../../Microchip/Graphics/Drivers/drvTFT001.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d -o ${OBJECTDIR}/_ext/1919882987/drvTFT001.o ../../../Microchip/Graphics/Drivers/drvTFT001.c    2>&1  > ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d > ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d 
	@${CP} ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.tmp ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d > ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d 
	@${CP} ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.tmp ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.err 
	@cat ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1626048738/jidctint.o: ../../../Microchip/Image\ Decoders/jidctint.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	@${RM} ${OBJECTDIR}/_ext/1626048738/jidctint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/jidctint.o.ok ${OBJECTDIR}/_ext/1626048738/jidctint.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1626048738/jidctint.o.d -o ${OBJECTDIR}/_ext/1626048738/jidctint.o ../../../Microchip/Image\ Decoders/jidctint.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1626048738/jidctint.o.d -o ${OBJECTDIR}/_ext/1626048738/jidctint.o ../../../Microchip/Image\ Decoders/jidctint.c    2>&1  > ${OBJECTDIR}/_ext/1626048738/jidctint.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1626048738/jidctint.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1626048738/jidctint.o.d > ${OBJECTDIR}/_ext/1626048738/jidctint.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1626048738/jidctint.o.d 
	@${CP} ${OBJECTDIR}/_ext/1626048738/jidctint.o.tmp ${OBJECTDIR}/_ext/1626048738/jidctint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/jidctint.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1626048738/jidctint.o.d > ${OBJECTDIR}/_ext/1626048738/jidctint.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1626048738/jidctint.o.d 
	@${CP} ${OBJECTDIR}/_ext/1626048738/jidctint.o.tmp ${OBJECTDIR}/_ext/1626048738/jidctint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/jidctint.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1626048738/jidctint.o.err 
	@cat ${OBJECTDIR}/_ext/1626048738/jidctint.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1626048738/jidctint.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1626048738/jidctint.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1626048738/GifDecoder.o: ../../../Microchip/Image\ Decoders/GifDecoder.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	@${RM} ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.ok ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.d -o ${OBJECTDIR}/_ext/1626048738/GifDecoder.o ../../../Microchip/Image\ Decoders/GifDecoder.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.d -o ${OBJECTDIR}/_ext/1626048738/GifDecoder.o ../../../Microchip/Image\ Decoders/GifDecoder.c    2>&1  > ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.d > ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.d 
	@${CP} ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.tmp ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.d > ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.d 
	@${CP} ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.tmp ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.err 
	@cat ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1626048738/BmpDecoder.o: ../../../Microchip/Image\ Decoders/BmpDecoder.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	@${RM} ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.ok ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d -o ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o ../../../Microchip/Image\ Decoders/BmpDecoder.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d -o ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o ../../../Microchip/Image\ Decoders/BmpDecoder.c    2>&1  > ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d > ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d 
	@${CP} ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.tmp ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d > ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d 
	@${CP} ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.tmp ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.err 
	@cat ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1860783399/TimeDelay.o: ../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1860783399 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.ok ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d -o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ../../../Microchip/Common/TimeDelay.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d -o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ../../../Microchip/Common/TimeDelay.c    2>&1  > ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d > ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	@${CP} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d > ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	@${CP} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.err 
	@cat ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1626048738/ImageDecoder.o: ../../../Microchip/Image\ Decoders/ImageDecoder.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	@${RM} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.ok ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d -o ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o ../../../Microchip/Image\ Decoders/ImageDecoder.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d -o ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o ../../../Microchip/Image\ Decoders/ImageDecoder.c    2>&1  > ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d > ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d 
	@${CP} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.tmp ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d > ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d 
	@${CP} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.tmp ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.err 
	@cat ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1919882987/gfxepmp.o: ../../../Microchip/Graphics/Drivers/gfxepmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.ok ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d -o ${OBJECTDIR}/_ext/1919882987/gfxepmp.o ../../../Microchip/Graphics/Drivers/gfxepmp.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d -o ${OBJECTDIR}/_ext/1919882987/gfxepmp.o ../../../Microchip/Graphics/Drivers/gfxepmp.c    2>&1  > ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d > ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	@${CP} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d > ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	@${CP} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.err 
	@cat ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o: ../../../Microchip/Graphics/Drivers/mchpGfxDrvBuffer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.ok ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../../Board Support Package" -I"../../../Microchip/Include" -mlarge-code -mlarge-arrays -MMD -MF ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.d -o ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o ../../../Microchip/Graphics/Drivers/mchpGfxDrvBuffer.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../../Board Support Package" -I"../../../Microchip/Include" -mlarge-code -mlarge-arrays -MMD -MF ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.d -o ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o ../../../Microchip/Graphics/Drivers/mchpGfxDrvBuffer.c    2>&1  > ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.d > ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.d 
	@${CP} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.tmp ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.d > ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.d 
	@${CP} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.tmp ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.err 
	@cat ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1626048738/JpegDecoder.o: ../../../Microchip/Image\ Decoders/JpegDecoder.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	@${RM} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.ok ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d -o ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o ../../../Microchip/Image\ Decoders/JpegDecoder.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d -o ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o ../../../Microchip/Image\ Decoders/JpegDecoder.c    2>&1  > ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d > ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d 
	@${CP} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.tmp ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d > ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d 
	@${CP} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.tmp ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.err 
	@cat ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.ok; else exit 1; fi
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf  -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf ${OBJECTFILES}        -Wl,--defsym=__MPLAB_BUILD=1,--no-check-sections,-L"../../../../../../Program Files/Microchip/MPLAB C30/lib",-Map="$(TARGETBASE).map",--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1
else
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf  -mcpu=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf ${OBJECTFILES}        -Wl,--defsym=__MPLAB_BUILD=1,--no-check-sections,-L"../../../../../../Program Files/Microchip/MPLAB C30/lib",-Map="$(TARGETBASE).map",--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION)
	${MP_CC_DIR}\\pic30-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf -omf=elf
endif


# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf:
	${RM} -r build/PIC24_DA210_DEV_16PMP_WQVGAv1
	${RM} -r dist/PIC24_DA210_DEV_16PMP_WQVGAv1

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
