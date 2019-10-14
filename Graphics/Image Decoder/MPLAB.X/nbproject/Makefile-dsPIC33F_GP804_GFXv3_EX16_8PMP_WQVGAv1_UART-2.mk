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
CND_CONF=dsPIC33F_GP804_GFXv3_EX16_8PMP_WQVGAv1_UART-2
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
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1687970324/SST25VF016.o ${OBJECTDIR}/_ext/1687970324/SST39VF040.o ${OBJECTDIR}/_ext/1687970324/cpld.o ${OBJECTDIR}/_ext/1687970324/drv_spi.o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ${OBJECTDIR}/_ext/1919882987/SSD1926.o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ${OBJECTDIR}/_ext/803622919/Primitive.o ${OBJECTDIR}/_ext/1919882987/gfxepmp.o ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o ${OBJECTDIR}/_ext/1626048738/jidctint.o ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o ${OBJECTDIR}/_ext/1472/UART.o ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o ${OBJECTDIR}/_ext/2049610667/comm_pkt.o ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o ${OBJECTDIR}/_ext/1472/ExternalResource.o ${OBJECTDIR}/_ext/1472/InternalResourceC30.o ${OBJECTDIR}/_ext/1472/JPEGImage.o ${OBJECTDIR}/_ext/1472/MainDemo.o ${OBJECTDIR}/_ext/1472/BitmapImage.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d ${OBJECTDIR}/_ext/1687970324/cpld.o.d ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d ${OBJECTDIR}/_ext/803622919/Primitive.o.d ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d ${OBJECTDIR}/_ext/1626048738/jidctint.o.d ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d ${OBJECTDIR}/_ext/1472/UART.o.d ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d ${OBJECTDIR}/_ext/1472/ExternalResource.o.d ${OBJECTDIR}/_ext/1472/InternalResourceC30.o.d ${OBJECTDIR}/_ext/1472/JPEGImage.o.d ${OBJECTDIR}/_ext/1472/MainDemo.o.d ${OBJECTDIR}/_ext/1472/BitmapImage.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1687970324/SST25VF016.o ${OBJECTDIR}/_ext/1687970324/SST39VF040.o ${OBJECTDIR}/_ext/1687970324/cpld.o ${OBJECTDIR}/_ext/1687970324/drv_spi.o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ${OBJECTDIR}/_ext/1919882987/SSD1926.o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ${OBJECTDIR}/_ext/803622919/Primitive.o ${OBJECTDIR}/_ext/1919882987/gfxepmp.o ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o ${OBJECTDIR}/_ext/1626048738/jidctint.o ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o ${OBJECTDIR}/_ext/1472/UART.o ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o ${OBJECTDIR}/_ext/2049610667/comm_pkt.o ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o ${OBJECTDIR}/_ext/1472/ExternalResource.o ${OBJECTDIR}/_ext/1472/InternalResourceC30.o ${OBJECTDIR}/_ext/1472/JPEGImage.o ${OBJECTDIR}/_ext/1472/MainDemo.o ${OBJECTDIR}/_ext/1472/BitmapImage.o


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
	${MAKE}  -f nbproject/Makefile-dsPIC33F_GP804_GFXv3_EX16_8PMP_WQVGAv1_UART-2.mk dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/_ext/1687970324/SST25VF016.o: ../../../Board\ Support\ Package/SST25VF016.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.ok ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_WQVGAv1 -I".." -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../Common" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d" -o ${OBJECTDIR}/_ext/1687970324/SST25VF016.o "../../../Board Support Package/SST25VF016.c"  
	
${OBJECTDIR}/_ext/1687970324/SST39VF040.o: ../../../Board\ Support\ Package/SST39VF040.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.ok ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_WQVGAv1 -I".." -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../Common" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d" -o ${OBJECTDIR}/_ext/1687970324/SST39VF040.o "../../../Board Support Package/SST39VF040.c"  
	
${OBJECTDIR}/_ext/1687970324/cpld.o: ../../../Board\ Support\ Package/cpld.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.ok ${OBJECTDIR}/_ext/1687970324/cpld.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/cpld.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_WQVGAv1 -I".." -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../Common" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1687970324/cpld.o.d" -o ${OBJECTDIR}/_ext/1687970324/cpld.o "../../../Board Support Package/cpld.c"  
	
${OBJECTDIR}/_ext/1687970324/drv_spi.o: ../../../Board\ Support\ Package/drv_spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.ok ${OBJECTDIR}/_ext/1687970324/drv_spi.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/drv_spi.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_WQVGAv1 -I".." -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../Common" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1687970324/drv_spi.o.d" -o ${OBJECTDIR}/_ext/1687970324/drv_spi.o "../../../Board Support Package/drv_spi.c"  
	
${OBJECTDIR}/_ext/1860783399/TimeDelay.o: ../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1860783399 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.ok ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_WQVGAv1 -I".." -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../Common" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d" -o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ../../../Microchip/Common/TimeDelay.c  
	
${OBJECTDIR}/_ext/1919882987/SSD1926.o: ../../../Microchip/Graphics/Drivers/SSD1926.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.ok ${OBJECTDIR}/_ext/1919882987/SSD1926.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/SSD1926.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_WQVGAv1 -I".." -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../Common" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/SSD1926.o.d" -o ${OBJECTDIR}/_ext/1919882987/SSD1926.o ../../../Microchip/Graphics/Drivers/SSD1926.c  
	
${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o: ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.ok ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_WQVGAv1 -I".." -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../Common" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d" -o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  
	
${OBJECTDIR}/_ext/803622919/GOLFontDefault.o: ../../../Microchip/Graphics/GOLFontDefault.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.ok ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_WQVGAv1 -I".." -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../Common" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d" -o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ../../../Microchip/Graphics/GOLFontDefault.c  
	
${OBJECTDIR}/_ext/803622919/Primitive.o: ../../../Microchip/Graphics/Primitive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.ok ${OBJECTDIR}/_ext/803622919/Primitive.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Primitive.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_WQVGAv1 -I".." -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../Common" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/Primitive.o.d" -o ${OBJECTDIR}/_ext/803622919/Primitive.o ../../../Microchip/Graphics/Primitive.c  
	
${OBJECTDIR}/_ext/1919882987/gfxepmp.o: ../../../Microchip/Graphics/Drivers/gfxepmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.ok ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_WQVGAv1 -I".." -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../Common" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d" -o ${OBJECTDIR}/_ext/1919882987/gfxepmp.o ../../../Microchip/Graphics/Drivers/gfxepmp.c  
	
${OBJECTDIR}/_ext/1626048738/ImageDecoder.o: ../../../Microchip/Image\ Decoders/ImageDecoder.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	@${RM} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.ok ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_WQVGAv1 -I".." -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../Common" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d" -o ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o "../../../Microchip/Image Decoders/ImageDecoder.c"  
	
${OBJECTDIR}/_ext/1626048738/JpegDecoder.o: ../../../Microchip/Image\ Decoders/JpegDecoder.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	@${RM} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.ok ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_WQVGAv1 -I".." -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../Common" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d" -o ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o "../../../Microchip/Image Decoders/JpegDecoder.c"  
	
${OBJECTDIR}/_ext/1626048738/jidctint.o: ../../../Microchip/Image\ Decoders/jidctint.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	@${RM} ${OBJECTDIR}/_ext/1626048738/jidctint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/jidctint.o.ok ${OBJECTDIR}/_ext/1626048738/jidctint.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1626048738/jidctint.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_WQVGAv1 -I".." -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../Common" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1626048738/jidctint.o.d" -o ${OBJECTDIR}/_ext/1626048738/jidctint.o "../../../Microchip/Image Decoders/jidctint.c"  
	
${OBJECTDIR}/_ext/1626048738/BmpDecoder.o: ../../../Microchip/Image\ Decoders/BmpDecoder.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	@${RM} ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.ok ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_WQVGAv1 -I".." -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../Common" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d" -o ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o "../../../Microchip/Image Decoders/BmpDecoder.c"  
	
${OBJECTDIR}/_ext/1472/UART.o: ../UART.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/UART.o.ok ${OBJECTDIR}/_ext/1472/UART.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/UART.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_WQVGAv1 -I".." -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../Common" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/UART.o.d" -o ${OBJECTDIR}/_ext/1472/UART.o ../UART.c  
	
${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o: ../../Common/FlashProgrammer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2049610667 
	@${RM} ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d 
	@${RM} ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.ok ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_WQVGAv1 -I".." -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../Common" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d" -o ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o ../../Common/FlashProgrammer.c  
	
${OBJECTDIR}/_ext/2049610667/comm_pkt.o: ../../Common/comm_pkt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2049610667 
	@${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d 
	@${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.ok ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_WQVGAv1 -I".." -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../Common" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d" -o ${OBJECTDIR}/_ext/2049610667/comm_pkt.o ../../Common/comm_pkt.c  
	
${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o: ../../Common/comm_pkt_callback.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2049610667 
	@${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d 
	@${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.ok ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_WQVGAv1 -I".." -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../Common" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d" -o ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o ../../Common/comm_pkt_callback.c  
	
${OBJECTDIR}/_ext/1472/ExternalResource.o: ../ExternalResource.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/ExternalResource.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/ExternalResource.o.ok ${OBJECTDIR}/_ext/1472/ExternalResource.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/ExternalResource.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_WQVGAv1 -I".." -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../Common" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/ExternalResource.o.d" -o ${OBJECTDIR}/_ext/1472/ExternalResource.o ../ExternalResource.c  
	
${OBJECTDIR}/_ext/1472/InternalResourceC30.o: ../InternalResourceC30.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/InternalResourceC30.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/InternalResourceC30.o.ok ${OBJECTDIR}/_ext/1472/InternalResourceC30.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/InternalResourceC30.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_WQVGAv1 -I".." -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../Common" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/InternalResourceC30.o.d" -o ${OBJECTDIR}/_ext/1472/InternalResourceC30.o ../InternalResourceC30.c  
	
${OBJECTDIR}/_ext/1472/JPEGImage.o: ../JPEGImage.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/JPEGImage.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/JPEGImage.o.ok ${OBJECTDIR}/_ext/1472/JPEGImage.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/JPEGImage.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_WQVGAv1 -I".." -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../Common" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/JPEGImage.o.d" -o ${OBJECTDIR}/_ext/1472/JPEGImage.o ../JPEGImage.c  
	
${OBJECTDIR}/_ext/1472/MainDemo.o: ../MainDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.ok ${OBJECTDIR}/_ext/1472/MainDemo.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/MainDemo.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_WQVGAv1 -I".." -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../Common" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/MainDemo.o.d" -o ${OBJECTDIR}/_ext/1472/MainDemo.o ../MainDemo.c  
	
${OBJECTDIR}/_ext/1472/BitmapImage.o: ../BitmapImage.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/BitmapImage.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/BitmapImage.o.ok ${OBJECTDIR}/_ext/1472/BitmapImage.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/BitmapImage.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_WQVGAv1 -I".." -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../Common" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/BitmapImage.o.d" -o ${OBJECTDIR}/_ext/1472/BitmapImage.o ../BitmapImage.c  
	
else
${OBJECTDIR}/_ext/1687970324/SST25VF016.o: ../../../Board\ Support\ Package/SST25VF016.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.ok ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_WQVGAv1 -I".." -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../Common" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d" -o ${OBJECTDIR}/_ext/1687970324/SST25VF016.o "../../../Board Support Package/SST25VF016.c"  
	
${OBJECTDIR}/_ext/1687970324/SST39VF040.o: ../../../Board\ Support\ Package/SST39VF040.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.ok ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_WQVGAv1 -I".." -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../Common" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d" -o ${OBJECTDIR}/_ext/1687970324/SST39VF040.o "../../../Board Support Package/SST39VF040.c"  
	
${OBJECTDIR}/_ext/1687970324/cpld.o: ../../../Board\ Support\ Package/cpld.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.ok ${OBJECTDIR}/_ext/1687970324/cpld.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/cpld.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_WQVGAv1 -I".." -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../Common" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1687970324/cpld.o.d" -o ${OBJECTDIR}/_ext/1687970324/cpld.o "../../../Board Support Package/cpld.c"  
	
${OBJECTDIR}/_ext/1687970324/drv_spi.o: ../../../Board\ Support\ Package/drv_spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.ok ${OBJECTDIR}/_ext/1687970324/drv_spi.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/drv_spi.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_WQVGAv1 -I".." -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../Common" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1687970324/drv_spi.o.d" -o ${OBJECTDIR}/_ext/1687970324/drv_spi.o "../../../Board Support Package/drv_spi.c"  
	
${OBJECTDIR}/_ext/1860783399/TimeDelay.o: ../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1860783399 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.ok ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_WQVGAv1 -I".." -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../Common" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d" -o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ../../../Microchip/Common/TimeDelay.c  
	
${OBJECTDIR}/_ext/1919882987/SSD1926.o: ../../../Microchip/Graphics/Drivers/SSD1926.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.ok ${OBJECTDIR}/_ext/1919882987/SSD1926.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/SSD1926.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_WQVGAv1 -I".." -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../Common" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/SSD1926.o.d" -o ${OBJECTDIR}/_ext/1919882987/SSD1926.o ../../../Microchip/Graphics/Drivers/SSD1926.c  
	
${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o: ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.ok ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_WQVGAv1 -I".." -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../Common" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d" -o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  
	
${OBJECTDIR}/_ext/803622919/GOLFontDefault.o: ../../../Microchip/Graphics/GOLFontDefault.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.ok ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_WQVGAv1 -I".." -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../Common" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d" -o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ../../../Microchip/Graphics/GOLFontDefault.c  
	
${OBJECTDIR}/_ext/803622919/Primitive.o: ../../../Microchip/Graphics/Primitive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.ok ${OBJECTDIR}/_ext/803622919/Primitive.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Primitive.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_WQVGAv1 -I".." -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../Common" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/Primitive.o.d" -o ${OBJECTDIR}/_ext/803622919/Primitive.o ../../../Microchip/Graphics/Primitive.c  
	
${OBJECTDIR}/_ext/1919882987/gfxepmp.o: ../../../Microchip/Graphics/Drivers/gfxepmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.ok ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_WQVGAv1 -I".." -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../Common" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d" -o ${OBJECTDIR}/_ext/1919882987/gfxepmp.o ../../../Microchip/Graphics/Drivers/gfxepmp.c  
	
${OBJECTDIR}/_ext/1626048738/ImageDecoder.o: ../../../Microchip/Image\ Decoders/ImageDecoder.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	@${RM} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.ok ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_WQVGAv1 -I".." -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../Common" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d" -o ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o "../../../Microchip/Image Decoders/ImageDecoder.c"  
	
${OBJECTDIR}/_ext/1626048738/JpegDecoder.o: ../../../Microchip/Image\ Decoders/JpegDecoder.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	@${RM} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.ok ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_WQVGAv1 -I".." -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../Common" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d" -o ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o "../../../Microchip/Image Decoders/JpegDecoder.c"  
	
${OBJECTDIR}/_ext/1626048738/jidctint.o: ../../../Microchip/Image\ Decoders/jidctint.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	@${RM} ${OBJECTDIR}/_ext/1626048738/jidctint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/jidctint.o.ok ${OBJECTDIR}/_ext/1626048738/jidctint.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1626048738/jidctint.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_WQVGAv1 -I".." -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../Common" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1626048738/jidctint.o.d" -o ${OBJECTDIR}/_ext/1626048738/jidctint.o "../../../Microchip/Image Decoders/jidctint.c"  
	
${OBJECTDIR}/_ext/1626048738/BmpDecoder.o: ../../../Microchip/Image\ Decoders/BmpDecoder.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	@${RM} ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.ok ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_WQVGAv1 -I".." -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../Common" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d" -o ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o "../../../Microchip/Image Decoders/BmpDecoder.c"  
	
${OBJECTDIR}/_ext/1472/UART.o: ../UART.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/UART.o.ok ${OBJECTDIR}/_ext/1472/UART.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/UART.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_WQVGAv1 -I".." -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../Common" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/UART.o.d" -o ${OBJECTDIR}/_ext/1472/UART.o ../UART.c  
	
${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o: ../../Common/FlashProgrammer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2049610667 
	@${RM} ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d 
	@${RM} ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.ok ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_WQVGAv1 -I".." -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../Common" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d" -o ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o ../../Common/FlashProgrammer.c  
	
${OBJECTDIR}/_ext/2049610667/comm_pkt.o: ../../Common/comm_pkt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2049610667 
	@${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d 
	@${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.ok ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_WQVGAv1 -I".." -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../Common" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d" -o ${OBJECTDIR}/_ext/2049610667/comm_pkt.o ../../Common/comm_pkt.c  
	
${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o: ../../Common/comm_pkt_callback.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2049610667 
	@${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d 
	@${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.ok ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_WQVGAv1 -I".." -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../Common" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d" -o ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o ../../Common/comm_pkt_callback.c  
	
${OBJECTDIR}/_ext/1472/ExternalResource.o: ../ExternalResource.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/ExternalResource.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/ExternalResource.o.ok ${OBJECTDIR}/_ext/1472/ExternalResource.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/ExternalResource.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_WQVGAv1 -I".." -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../Common" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/ExternalResource.o.d" -o ${OBJECTDIR}/_ext/1472/ExternalResource.o ../ExternalResource.c  
	
${OBJECTDIR}/_ext/1472/InternalResourceC30.o: ../InternalResourceC30.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/InternalResourceC30.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/InternalResourceC30.o.ok ${OBJECTDIR}/_ext/1472/InternalResourceC30.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/InternalResourceC30.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_WQVGAv1 -I".." -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../Common" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/InternalResourceC30.o.d" -o ${OBJECTDIR}/_ext/1472/InternalResourceC30.o ../InternalResourceC30.c  
	
${OBJECTDIR}/_ext/1472/JPEGImage.o: ../JPEGImage.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/JPEGImage.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/JPEGImage.o.ok ${OBJECTDIR}/_ext/1472/JPEGImage.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/JPEGImage.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_WQVGAv1 -I".." -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../Common" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/JPEGImage.o.d" -o ${OBJECTDIR}/_ext/1472/JPEGImage.o ../JPEGImage.c  
	
${OBJECTDIR}/_ext/1472/MainDemo.o: ../MainDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.ok ${OBJECTDIR}/_ext/1472/MainDemo.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/MainDemo.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_WQVGAv1 -I".." -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../Common" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/MainDemo.o.d" -o ${OBJECTDIR}/_ext/1472/MainDemo.o ../MainDemo.c  
	
${OBJECTDIR}/_ext/1472/BitmapImage.o: ../BitmapImage.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/BitmapImage.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/BitmapImage.o.ok ${OBJECTDIR}/_ext/1472/BitmapImage.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/BitmapImage.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_WQVGAv1 -I".." -I"../../common" -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../Common" -I"../../../Microchip/Include/Graphics" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/BitmapImage.o.d" -o ${OBJECTDIR}/_ext/1472/BitmapImage.o ../BitmapImage.c  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=coff -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}        -Wl,--defsym=__MPLAB_BUILD=1,--heap=100,--no-check-sections,-L".."$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_REAL_ICE=1
else
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=coff -mcpu=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}        -Wl,--defsym=__MPLAB_BUILD=1,--heap=100,--no-check-sections,-L".."$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION)
	${MP_CC_DIR}\\pic30-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -omf=coff
endif


# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf:
	${RM} -r build/dsPIC33F_GP804_GFXv3_EX16_8PMP_WQVGAv1_UART-2
	${RM} -r dist/dsPIC33F_GP804_GFXv3_EX16_8PMP_WQVGAv1_UART-2

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
