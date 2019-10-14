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
CND_CONF=dsPIC33F_GP804_GFXv3_EX16_8PMP_QVGAv1
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
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1687970324/cpld.o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ${OBJECTDIR}/_ext/1919882987/SSD1926.o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ${OBJECTDIR}/_ext/803622919/Primitive.o ${OBJECTDIR}/_ext/1919882987/gfxepmp.o ${OBJECTDIR}/_ext/1788384718/FSIO.o ${OBJECTDIR}/_ext/1472/MainDemo.o ${OBJECTDIR}/_ext/1472/SSD1926_JPEG.o ${OBJECTDIR}/_ext/1472/SSD1926_SDCard.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1687970324/cpld.o.d ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d ${OBJECTDIR}/_ext/803622919/Primitive.o.d ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d ${OBJECTDIR}/_ext/1788384718/FSIO.o.d ${OBJECTDIR}/_ext/1472/MainDemo.o.d ${OBJECTDIR}/_ext/1472/SSD1926_JPEG.o.d ${OBJECTDIR}/_ext/1472/SSD1926_SDCard.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1687970324/cpld.o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ${OBJECTDIR}/_ext/1919882987/SSD1926.o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ${OBJECTDIR}/_ext/803622919/Primitive.o ${OBJECTDIR}/_ext/1919882987/gfxepmp.o ${OBJECTDIR}/_ext/1788384718/FSIO.o ${OBJECTDIR}/_ext/1472/MainDemo.o ${OBJECTDIR}/_ext/1472/SSD1926_JPEG.o ${OBJECTDIR}/_ext/1472/SSD1926_SDCard.o


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
MP_CC="C:\Program Files\Microchip\mplabc30\v3.30\bin\pic30-gcc.exe"
# MP_BC is not defined
MP_AS="C:\Program Files\Microchip\mplabc30\v3.30\bin\pic30-as.exe"
MP_LD="C:\Program Files\Microchip\mplabc30\v3.30\bin\pic30-ld.exe"
MP_AR="C:\Program Files\Microchip\mplabc30\v3.30\bin\pic30-ar.exe"
DEP_GEN=${MP_JAVA_PATH}java -jar "C:/Program Files/Microchip/MPLABX/mplab_ide/mplab_ide/modules/../../bin/extractobjectdependencies.jar" 
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps
MP_CC_DIR="C:\Program Files\Microchip\mplabc30\v3.30\bin"
# MP_BC_DIR is not defined
MP_AS_DIR="C:\Program Files\Microchip\mplabc30\v3.30\bin"
MP_LD_DIR="C:\Program Files\Microchip\mplabc30\v3.30\bin"
MP_AR_DIR="C:\Program Files\Microchip\mplabc30\v3.30\bin"
# MP_BC_DIR is not defined

.build-conf:  ${BUILD_SUBPROJECTS}
	${MAKE}  -f nbproject/Makefile-dsPIC33F_GP804_GFXv3_EX16_8PMP_QVGAv1.mk dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=33FJ128GP804
MP_LINKER_FILE_OPTION=,-Tp33FJ128GP804.gld
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
${OBJECTDIR}/_ext/1687970324/cpld.o: ../../../Board\ Support\ Package/cpld.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.ok ${OBJECTDIR}/_ext/1687970324/cpld.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/cpld.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/MDD File System" -Os -MMD -MF "${OBJECTDIR}/_ext/1687970324/cpld.o.d" -o ${OBJECTDIR}/_ext/1687970324/cpld.o "../../../Board Support Package/cpld.c"  
	
${OBJECTDIR}/_ext/1860783399/TimeDelay.o: ../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1860783399 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.ok ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/MDD File System" -Os -MMD -MF "${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d" -o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ../../../Microchip/Common/TimeDelay.c  
	
${OBJECTDIR}/_ext/1919882987/SSD1926.o: ../../../Microchip/Graphics/Drivers/SSD1926.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.ok ${OBJECTDIR}/_ext/1919882987/SSD1926.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/SSD1926.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/MDD File System" -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/SSD1926.o.d" -o ${OBJECTDIR}/_ext/1919882987/SSD1926.o ../../../Microchip/Graphics/Drivers/SSD1926.c  
	
${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o: ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.ok ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/MDD File System" -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d" -o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  
	
${OBJECTDIR}/_ext/803622919/Primitive.o: ../../../Microchip/Graphics/Primitive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.ok ${OBJECTDIR}/_ext/803622919/Primitive.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Primitive.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/MDD File System" -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/Primitive.o.d" -o ${OBJECTDIR}/_ext/803622919/Primitive.o ../../../Microchip/Graphics/Primitive.c  
	
${OBJECTDIR}/_ext/1919882987/gfxepmp.o: ../../../Microchip/Graphics/Drivers/gfxepmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.ok ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/MDD File System" -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d" -o ${OBJECTDIR}/_ext/1919882987/gfxepmp.o ../../../Microchip/Graphics/Drivers/gfxepmp.c  
	
${OBJECTDIR}/_ext/1788384718/FSIO.o: ../../../Microchip/MDD\ File\ System/FSIO.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1788384718 
	@${RM} ${OBJECTDIR}/_ext/1788384718/FSIO.o.d 
	@${RM} ${OBJECTDIR}/_ext/1788384718/FSIO.o.ok ${OBJECTDIR}/_ext/1788384718/FSIO.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1788384718/FSIO.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/MDD File System" -Os -MMD -MF "${OBJECTDIR}/_ext/1788384718/FSIO.o.d" -o ${OBJECTDIR}/_ext/1788384718/FSIO.o "../../../Microchip/MDD File System/FSIO.c"  
	
${OBJECTDIR}/_ext/1472/MainDemo.o: ../MainDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.ok ${OBJECTDIR}/_ext/1472/MainDemo.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/MainDemo.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/MDD File System" -Os -MMD -MF "${OBJECTDIR}/_ext/1472/MainDemo.o.d" -o ${OBJECTDIR}/_ext/1472/MainDemo.o ../MainDemo.c  
	
${OBJECTDIR}/_ext/1472/SSD1926_JPEG.o: ../SSD1926_JPEG.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/SSD1926_JPEG.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/SSD1926_JPEG.o.ok ${OBJECTDIR}/_ext/1472/SSD1926_JPEG.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/SSD1926_JPEG.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/MDD File System" -Os -MMD -MF "${OBJECTDIR}/_ext/1472/SSD1926_JPEG.o.d" -o ${OBJECTDIR}/_ext/1472/SSD1926_JPEG.o ../SSD1926_JPEG.c  
	
${OBJECTDIR}/_ext/1472/SSD1926_SDCard.o: ../SSD1926_SDCard.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/SSD1926_SDCard.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/SSD1926_SDCard.o.ok ${OBJECTDIR}/_ext/1472/SSD1926_SDCard.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/SSD1926_SDCard.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/MDD File System" -Os -MMD -MF "${OBJECTDIR}/_ext/1472/SSD1926_SDCard.o.d" -o ${OBJECTDIR}/_ext/1472/SSD1926_SDCard.o ../SSD1926_SDCard.c  
	
else
${OBJECTDIR}/_ext/1687970324/cpld.o: ../../../Board\ Support\ Package/cpld.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.ok ${OBJECTDIR}/_ext/1687970324/cpld.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/cpld.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/MDD File System" -Os -MMD -MF "${OBJECTDIR}/_ext/1687970324/cpld.o.d" -o ${OBJECTDIR}/_ext/1687970324/cpld.o "../../../Board Support Package/cpld.c"  
	
${OBJECTDIR}/_ext/1860783399/TimeDelay.o: ../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1860783399 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.ok ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/MDD File System" -Os -MMD -MF "${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d" -o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ../../../Microchip/Common/TimeDelay.c  
	
${OBJECTDIR}/_ext/1919882987/SSD1926.o: ../../../Microchip/Graphics/Drivers/SSD1926.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.ok ${OBJECTDIR}/_ext/1919882987/SSD1926.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/SSD1926.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/MDD File System" -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/SSD1926.o.d" -o ${OBJECTDIR}/_ext/1919882987/SSD1926.o ../../../Microchip/Graphics/Drivers/SSD1926.c  
	
${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o: ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.ok ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/MDD File System" -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d" -o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  
	
${OBJECTDIR}/_ext/803622919/Primitive.o: ../../../Microchip/Graphics/Primitive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.ok ${OBJECTDIR}/_ext/803622919/Primitive.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Primitive.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/MDD File System" -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/Primitive.o.d" -o ${OBJECTDIR}/_ext/803622919/Primitive.o ../../../Microchip/Graphics/Primitive.c  
	
${OBJECTDIR}/_ext/1919882987/gfxepmp.o: ../../../Microchip/Graphics/Drivers/gfxepmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.ok ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/MDD File System" -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d" -o ${OBJECTDIR}/_ext/1919882987/gfxepmp.o ../../../Microchip/Graphics/Drivers/gfxepmp.c  
	
${OBJECTDIR}/_ext/1788384718/FSIO.o: ../../../Microchip/MDD\ File\ System/FSIO.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1788384718 
	@${RM} ${OBJECTDIR}/_ext/1788384718/FSIO.o.d 
	@${RM} ${OBJECTDIR}/_ext/1788384718/FSIO.o.ok ${OBJECTDIR}/_ext/1788384718/FSIO.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1788384718/FSIO.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/MDD File System" -Os -MMD -MF "${OBJECTDIR}/_ext/1788384718/FSIO.o.d" -o ${OBJECTDIR}/_ext/1788384718/FSIO.o "../../../Microchip/MDD File System/FSIO.c"  
	
${OBJECTDIR}/_ext/1472/MainDemo.o: ../MainDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.ok ${OBJECTDIR}/_ext/1472/MainDemo.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/MainDemo.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/MDD File System" -Os -MMD -MF "${OBJECTDIR}/_ext/1472/MainDemo.o.d" -o ${OBJECTDIR}/_ext/1472/MainDemo.o ../MainDemo.c  
	
${OBJECTDIR}/_ext/1472/SSD1926_JPEG.o: ../SSD1926_JPEG.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/SSD1926_JPEG.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/SSD1926_JPEG.o.ok ${OBJECTDIR}/_ext/1472/SSD1926_JPEG.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/SSD1926_JPEG.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/MDD File System" -Os -MMD -MF "${OBJECTDIR}/_ext/1472/SSD1926_JPEG.o.d" -o ${OBJECTDIR}/_ext/1472/SSD1926_JPEG.o ../SSD1926_JPEG.c  
	
${OBJECTDIR}/_ext/1472/SSD1926_SDCard.o: ../SSD1926_SDCard.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/SSD1926_SDCard.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/SSD1926_SDCard.o.ok ${OBJECTDIR}/_ext/1472/SSD1926_SDCard.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/SSD1926_SDCard.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/MDD File System" -Os -MMD -MF "${OBJECTDIR}/_ext/1472/SSD1926_SDCard.o.d" -o ${OBJECTDIR}/_ext/1472/SSD1926_SDCard.o ../SSD1926_SDCard.c  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}        -Wl,--defsym=__MPLAB_BUILD=1,--no-check-sections,-L"../../../../../../Program Files/Microchip/MPLAB C30/lib"$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1
else
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf -mcpu=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}        -Wl,--defsym=__MPLAB_BUILD=1,--no-check-sections,-L"../../../../../../Program Files/Microchip/MPLAB C30/lib"$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION)
	${MP_CC_DIR}\\pic30-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -omf=elf
endif


# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf:
	${RM} -r build/dsPIC33F_GP804_GFXv3_EX16_8PMP_QVGAv1
	${RM} -r dist/dsPIC33F_GP804_GFXv3_EX16_8PMP_QVGAv1

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
