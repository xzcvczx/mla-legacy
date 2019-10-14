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
CND_CONF=PIC24_GA110_GFXv3_EX16_8PMP_QVGAv1_SDMSD
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
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1687970324/SST25VF016.o ${OBJECTDIR}/_ext/1687970324/SST39VF040.o ${OBJECTDIR}/_ext/1687970324/TouchScreen.o ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o ${OBJECTDIR}/_ext/1687970324/cpld.o ${OBJECTDIR}/_ext/1687970324/drv_spi.o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ${OBJECTDIR}/_ext/1919882987/SSD1926.o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ${OBJECTDIR}/_ext/1919882987/gfxepmp.o ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o ${OBJECTDIR}/_ext/1919882987/mchpGfxLCC.o ${OBJECTDIR}/_ext/803622919/Button.o ${OBJECTDIR}/_ext/803622919/Chart.o ${OBJECTDIR}/_ext/803622919/CheckBox.o ${OBJECTDIR}/_ext/803622919/EditBox.o ${OBJECTDIR}/_ext/803622919/GOL.o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o ${OBJECTDIR}/_ext/803622919/Grid.o ${OBJECTDIR}/_ext/803622919/GroupBox.o ${OBJECTDIR}/_ext/803622919/ListBox.o ${OBJECTDIR}/_ext/803622919/Meter.o ${OBJECTDIR}/_ext/803622919/Picture.o ${OBJECTDIR}/_ext/803622919/Primitive.o ${OBJECTDIR}/_ext/803622919/RadioButton.o ${OBJECTDIR}/_ext/803622919/Slider.o ${OBJECTDIR}/_ext/803622919/StaticText.o ${OBJECTDIR}/_ext/803622919/Window.o ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o ${OBJECTDIR}/_ext/1626048738/GifDecoder.o ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o ${OBJECTDIR}/_ext/1626048738/jidctint.o ${OBJECTDIR}/_ext/1788384718/FSIO.o ${OBJECTDIR}/_ext/1788384718/SD-SPI.o ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o ${OBJECTDIR}/_ext/1472/UART.o ${OBJECTDIR}/_ext/2049610667/comm_pkt.o ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o ${OBJECTDIR}/_ext/1472/Animation.o ${OBJECTDIR}/_ext/1472/DemoSelection.o ${OBJECTDIR}/_ext/1472/DemoSteps.o ${OBJECTDIR}/_ext/1472/DrawTool.o ${OBJECTDIR}/_ext/1472/ECG.o ${OBJECTDIR}/_ext/1472/ECGBitmaps.o ${OBJECTDIR}/_ext/1472/ExternalResource.o ${OBJECTDIR}/_ext/1472/Games.o ${OBJECTDIR}/_ext/1472/GraphShow.o ${OBJECTDIR}/_ext/1472/InternalResourceC30.o ${OBJECTDIR}/_ext/1472/JPEGDemo.o ${OBJECTDIR}/_ext/1472/MainDemo.o ${OBJECTDIR}/_ext/1472/MultiFontsDemo.o ${OBJECTDIR}/_ext/1472/RGBDemo.o ${OBJECTDIR}/_ext/1472/SideButtons.o ${OBJECTDIR}/_ext/1472/SlideShowDemo.o ${OBJECTDIR}/_ext/1472/TimeDateDemo.o ${OBJECTDIR}/_ext/1472/rtcc.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d ${OBJECTDIR}/_ext/1687970324/cpld.o.d ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d ${OBJECTDIR}/_ext/1919882987/mchpGfxLCC.o.d ${OBJECTDIR}/_ext/803622919/Button.o.d ${OBJECTDIR}/_ext/803622919/Chart.o.d ${OBJECTDIR}/_ext/803622919/CheckBox.o.d ${OBJECTDIR}/_ext/803622919/EditBox.o.d ${OBJECTDIR}/_ext/803622919/GOL.o.d ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d ${OBJECTDIR}/_ext/803622919/Grid.o.d ${OBJECTDIR}/_ext/803622919/GroupBox.o.d ${OBJECTDIR}/_ext/803622919/ListBox.o.d ${OBJECTDIR}/_ext/803622919/Meter.o.d ${OBJECTDIR}/_ext/803622919/Picture.o.d ${OBJECTDIR}/_ext/803622919/Primitive.o.d ${OBJECTDIR}/_ext/803622919/RadioButton.o.d ${OBJECTDIR}/_ext/803622919/Slider.o.d ${OBJECTDIR}/_ext/803622919/StaticText.o.d ${OBJECTDIR}/_ext/803622919/Window.o.d ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.d ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d ${OBJECTDIR}/_ext/1626048738/jidctint.o.d ${OBJECTDIR}/_ext/1788384718/FSIO.o.d ${OBJECTDIR}/_ext/1788384718/SD-SPI.o.d ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d ${OBJECTDIR}/_ext/1472/UART.o.d ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d ${OBJECTDIR}/_ext/1472/Animation.o.d ${OBJECTDIR}/_ext/1472/DemoSelection.o.d ${OBJECTDIR}/_ext/1472/DemoSteps.o.d ${OBJECTDIR}/_ext/1472/DrawTool.o.d ${OBJECTDIR}/_ext/1472/ECG.o.d ${OBJECTDIR}/_ext/1472/ECGBitmaps.o.d ${OBJECTDIR}/_ext/1472/ExternalResource.o.d ${OBJECTDIR}/_ext/1472/Games.o.d ${OBJECTDIR}/_ext/1472/GraphShow.o.d ${OBJECTDIR}/_ext/1472/InternalResourceC30.o.d ${OBJECTDIR}/_ext/1472/JPEGDemo.o.d ${OBJECTDIR}/_ext/1472/MainDemo.o.d ${OBJECTDIR}/_ext/1472/MultiFontsDemo.o.d ${OBJECTDIR}/_ext/1472/RGBDemo.o.d ${OBJECTDIR}/_ext/1472/SideButtons.o.d ${OBJECTDIR}/_ext/1472/SlideShowDemo.o.d ${OBJECTDIR}/_ext/1472/TimeDateDemo.o.d ${OBJECTDIR}/_ext/1472/rtcc.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1687970324/SST25VF016.o ${OBJECTDIR}/_ext/1687970324/SST39VF040.o ${OBJECTDIR}/_ext/1687970324/TouchScreen.o ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o ${OBJECTDIR}/_ext/1687970324/cpld.o ${OBJECTDIR}/_ext/1687970324/drv_spi.o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ${OBJECTDIR}/_ext/1919882987/SSD1926.o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ${OBJECTDIR}/_ext/1919882987/gfxepmp.o ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o ${OBJECTDIR}/_ext/1919882987/mchpGfxLCC.o ${OBJECTDIR}/_ext/803622919/Button.o ${OBJECTDIR}/_ext/803622919/Chart.o ${OBJECTDIR}/_ext/803622919/CheckBox.o ${OBJECTDIR}/_ext/803622919/EditBox.o ${OBJECTDIR}/_ext/803622919/GOL.o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o ${OBJECTDIR}/_ext/803622919/Grid.o ${OBJECTDIR}/_ext/803622919/GroupBox.o ${OBJECTDIR}/_ext/803622919/ListBox.o ${OBJECTDIR}/_ext/803622919/Meter.o ${OBJECTDIR}/_ext/803622919/Picture.o ${OBJECTDIR}/_ext/803622919/Primitive.o ${OBJECTDIR}/_ext/803622919/RadioButton.o ${OBJECTDIR}/_ext/803622919/Slider.o ${OBJECTDIR}/_ext/803622919/StaticText.o ${OBJECTDIR}/_ext/803622919/Window.o ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o ${OBJECTDIR}/_ext/1626048738/GifDecoder.o ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o ${OBJECTDIR}/_ext/1626048738/jidctint.o ${OBJECTDIR}/_ext/1788384718/FSIO.o ${OBJECTDIR}/_ext/1788384718/SD-SPI.o ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o ${OBJECTDIR}/_ext/1472/UART.o ${OBJECTDIR}/_ext/2049610667/comm_pkt.o ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o ${OBJECTDIR}/_ext/1472/Animation.o ${OBJECTDIR}/_ext/1472/DemoSelection.o ${OBJECTDIR}/_ext/1472/DemoSteps.o ${OBJECTDIR}/_ext/1472/DrawTool.o ${OBJECTDIR}/_ext/1472/ECG.o ${OBJECTDIR}/_ext/1472/ECGBitmaps.o ${OBJECTDIR}/_ext/1472/ExternalResource.o ${OBJECTDIR}/_ext/1472/Games.o ${OBJECTDIR}/_ext/1472/GraphShow.o ${OBJECTDIR}/_ext/1472/InternalResourceC30.o ${OBJECTDIR}/_ext/1472/JPEGDemo.o ${OBJECTDIR}/_ext/1472/MainDemo.o ${OBJECTDIR}/_ext/1472/MultiFontsDemo.o ${OBJECTDIR}/_ext/1472/RGBDemo.o ${OBJECTDIR}/_ext/1472/SideButtons.o ${OBJECTDIR}/_ext/1472/SlideShowDemo.o ${OBJECTDIR}/_ext/1472/TimeDateDemo.o ${OBJECTDIR}/_ext/1472/rtcc.o


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
	${MAKE}  -f nbproject/Makefile-PIC24_GA110_GFXv3_EX16_8PMP_QVGAv1_SDMSD.mk dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ256GA110
MP_LINKER_FILE_OPTION=,-Tp24FJ256GA110.gld
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
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d" -o ${OBJECTDIR}/_ext/1687970324/SST25VF016.o "../../../Board Support Package/SST25VF016.c"  
	
${OBJECTDIR}/_ext/1687970324/SST39VF040.o: ../../../Board\ Support\ Package/SST39VF040.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.ok ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d" -o ${OBJECTDIR}/_ext/1687970324/SST39VF040.o "../../../Board Support Package/SST39VF040.c"  
	
${OBJECTDIR}/_ext/1687970324/TouchScreen.o: ../../../Board\ Support\ Package/TouchScreen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.ok ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d" -o ${OBJECTDIR}/_ext/1687970324/TouchScreen.o "../../../Board Support Package/TouchScreen.c"  
	
${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o: ../../../Board\ Support\ Package/TouchScreenResistive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.ok ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d" -o ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o "../../../Board Support Package/TouchScreenResistive.c"  
	
${OBJECTDIR}/_ext/1687970324/cpld.o: ../../../Board\ Support\ Package/cpld.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.ok ${OBJECTDIR}/_ext/1687970324/cpld.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/cpld.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1687970324/cpld.o.d" -o ${OBJECTDIR}/_ext/1687970324/cpld.o "../../../Board Support Package/cpld.c"  
	
${OBJECTDIR}/_ext/1687970324/drv_spi.o: ../../../Board\ Support\ Package/drv_spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.ok ${OBJECTDIR}/_ext/1687970324/drv_spi.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/drv_spi.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1687970324/drv_spi.o.d" -o ${OBJECTDIR}/_ext/1687970324/drv_spi.o "../../../Board Support Package/drv_spi.c"  
	
${OBJECTDIR}/_ext/1860783399/TimeDelay.o: ../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1860783399 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.ok ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d" -o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ../../../Microchip/Common/TimeDelay.c  
	
${OBJECTDIR}/_ext/1919882987/SSD1926.o: ../../../Microchip/Graphics/Drivers/SSD1926.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.ok ${OBJECTDIR}/_ext/1919882987/SSD1926.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/SSD1926.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/SSD1926.o.d" -o ${OBJECTDIR}/_ext/1919882987/SSD1926.o ../../../Microchip/Graphics/Drivers/SSD1926.c  
	
${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o: ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.ok ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d" -o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  
	
${OBJECTDIR}/_ext/1919882987/gfxepmp.o: ../../../Microchip/Graphics/Drivers/gfxepmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.ok ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d" -o ${OBJECTDIR}/_ext/1919882987/gfxepmp.o ../../../Microchip/Graphics/Drivers/gfxepmp.c  
	
${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o: ../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.ok ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d" -o ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o ../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  
	
${OBJECTDIR}/_ext/1919882987/mchpGfxLCC.o: ../../../Microchip/Graphics/Drivers/mchpGfxLCC.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxLCC.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxLCC.o.ok ${OBJECTDIR}/_ext/1919882987/mchpGfxLCC.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/mchpGfxLCC.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/mchpGfxLCC.o.d" -o ${OBJECTDIR}/_ext/1919882987/mchpGfxLCC.o ../../../Microchip/Graphics/Drivers/mchpGfxLCC.c  
	
${OBJECTDIR}/_ext/803622919/Button.o: ../../../Microchip/Graphics/Button.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Button.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Button.o.ok ${OBJECTDIR}/_ext/803622919/Button.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Button.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/Button.o.d" -o ${OBJECTDIR}/_ext/803622919/Button.o ../../../Microchip/Graphics/Button.c  
	
${OBJECTDIR}/_ext/803622919/Chart.o: ../../../Microchip/Graphics/Chart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Chart.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Chart.o.ok ${OBJECTDIR}/_ext/803622919/Chart.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Chart.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/Chart.o.d" -o ${OBJECTDIR}/_ext/803622919/Chart.o ../../../Microchip/Graphics/Chart.c  
	
${OBJECTDIR}/_ext/803622919/CheckBox.o: ../../../Microchip/Graphics/CheckBox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/CheckBox.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/CheckBox.o.ok ${OBJECTDIR}/_ext/803622919/CheckBox.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/CheckBox.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/CheckBox.o.d" -o ${OBJECTDIR}/_ext/803622919/CheckBox.o ../../../Microchip/Graphics/CheckBox.c  
	
${OBJECTDIR}/_ext/803622919/EditBox.o: ../../../Microchip/Graphics/EditBox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/EditBox.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/EditBox.o.ok ${OBJECTDIR}/_ext/803622919/EditBox.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/EditBox.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/EditBox.o.d" -o ${OBJECTDIR}/_ext/803622919/EditBox.o ../../../Microchip/Graphics/EditBox.c  
	
${OBJECTDIR}/_ext/803622919/GOL.o: ../../../Microchip/Graphics/GOL.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOL.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOL.o.ok ${OBJECTDIR}/_ext/803622919/GOL.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/GOL.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/GOL.o.d" -o ${OBJECTDIR}/_ext/803622919/GOL.o ../../../Microchip/Graphics/GOL.c  
	
${OBJECTDIR}/_ext/803622919/GOLFontDefault.o: ../../../Microchip/Graphics/GOLFontDefault.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.ok ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d" -o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ../../../Microchip/Graphics/GOLFontDefault.c  
	
${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o: ../../../Microchip/Graphics/GOLSchemeDefault.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.ok ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d" -o ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o ../../../Microchip/Graphics/GOLSchemeDefault.c  
	
${OBJECTDIR}/_ext/803622919/Grid.o: ../../../Microchip/Graphics/Grid.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Grid.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Grid.o.ok ${OBJECTDIR}/_ext/803622919/Grid.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Grid.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/Grid.o.d" -o ${OBJECTDIR}/_ext/803622919/Grid.o ../../../Microchip/Graphics/Grid.c  
	
${OBJECTDIR}/_ext/803622919/GroupBox.o: ../../../Microchip/Graphics/GroupBox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/GroupBox.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/GroupBox.o.ok ${OBJECTDIR}/_ext/803622919/GroupBox.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/GroupBox.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/GroupBox.o.d" -o ${OBJECTDIR}/_ext/803622919/GroupBox.o ../../../Microchip/Graphics/GroupBox.c  
	
${OBJECTDIR}/_ext/803622919/ListBox.o: ../../../Microchip/Graphics/ListBox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/ListBox.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/ListBox.o.ok ${OBJECTDIR}/_ext/803622919/ListBox.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/ListBox.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/ListBox.o.d" -o ${OBJECTDIR}/_ext/803622919/ListBox.o ../../../Microchip/Graphics/ListBox.c  
	
${OBJECTDIR}/_ext/803622919/Meter.o: ../../../Microchip/Graphics/Meter.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Meter.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Meter.o.ok ${OBJECTDIR}/_ext/803622919/Meter.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Meter.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/Meter.o.d" -o ${OBJECTDIR}/_ext/803622919/Meter.o ../../../Microchip/Graphics/Meter.c  
	
${OBJECTDIR}/_ext/803622919/Picture.o: ../../../Microchip/Graphics/Picture.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Picture.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Picture.o.ok ${OBJECTDIR}/_ext/803622919/Picture.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Picture.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/Picture.o.d" -o ${OBJECTDIR}/_ext/803622919/Picture.o ../../../Microchip/Graphics/Picture.c  
	
${OBJECTDIR}/_ext/803622919/Primitive.o: ../../../Microchip/Graphics/Primitive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.ok ${OBJECTDIR}/_ext/803622919/Primitive.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Primitive.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/Primitive.o.d" -o ${OBJECTDIR}/_ext/803622919/Primitive.o ../../../Microchip/Graphics/Primitive.c  
	
${OBJECTDIR}/_ext/803622919/RadioButton.o: ../../../Microchip/Graphics/RadioButton.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/RadioButton.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/RadioButton.o.ok ${OBJECTDIR}/_ext/803622919/RadioButton.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/RadioButton.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/RadioButton.o.d" -o ${OBJECTDIR}/_ext/803622919/RadioButton.o ../../../Microchip/Graphics/RadioButton.c  
	
${OBJECTDIR}/_ext/803622919/Slider.o: ../../../Microchip/Graphics/Slider.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Slider.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Slider.o.ok ${OBJECTDIR}/_ext/803622919/Slider.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Slider.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/Slider.o.d" -o ${OBJECTDIR}/_ext/803622919/Slider.o ../../../Microchip/Graphics/Slider.c  
	
${OBJECTDIR}/_ext/803622919/StaticText.o: ../../../Microchip/Graphics/StaticText.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/StaticText.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/StaticText.o.ok ${OBJECTDIR}/_ext/803622919/StaticText.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/StaticText.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/StaticText.o.d" -o ${OBJECTDIR}/_ext/803622919/StaticText.o ../../../Microchip/Graphics/StaticText.c  
	
${OBJECTDIR}/_ext/803622919/Window.o: ../../../Microchip/Graphics/Window.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Window.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Window.o.ok ${OBJECTDIR}/_ext/803622919/Window.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Window.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/Window.o.d" -o ${OBJECTDIR}/_ext/803622919/Window.o ../../../Microchip/Graphics/Window.c  
	
${OBJECTDIR}/_ext/1626048738/BmpDecoder.o: ../../../Microchip/Image\ Decoders/BmpDecoder.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	@${RM} ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.ok ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d" -o ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o "../../../Microchip/Image Decoders/BmpDecoder.c"  
	
${OBJECTDIR}/_ext/1626048738/GifDecoder.o: ../../../Microchip/Image\ Decoders/GifDecoder.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	@${RM} ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.ok ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1626048738/GifDecoder.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1626048738/GifDecoder.o.d" -o ${OBJECTDIR}/_ext/1626048738/GifDecoder.o "../../../Microchip/Image Decoders/GifDecoder.c"  
	
${OBJECTDIR}/_ext/1626048738/ImageDecoder.o: ../../../Microchip/Image\ Decoders/ImageDecoder.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	@${RM} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.ok ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d" -o ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o "../../../Microchip/Image Decoders/ImageDecoder.c"  
	
${OBJECTDIR}/_ext/1626048738/JpegDecoder.o: ../../../Microchip/Image\ Decoders/JpegDecoder.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	@${RM} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.ok ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d" -o ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o "../../../Microchip/Image Decoders/JpegDecoder.c"  
	
${OBJECTDIR}/_ext/1626048738/jidctint.o: ../../../Microchip/Image\ Decoders/jidctint.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	@${RM} ${OBJECTDIR}/_ext/1626048738/jidctint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/jidctint.o.ok ${OBJECTDIR}/_ext/1626048738/jidctint.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1626048738/jidctint.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1626048738/jidctint.o.d" -o ${OBJECTDIR}/_ext/1626048738/jidctint.o "../../../Microchip/Image Decoders/jidctint.c"  
	
${OBJECTDIR}/_ext/1788384718/FSIO.o: ../../../Microchip/MDD\ File\ System/FSIO.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1788384718 
	@${RM} ${OBJECTDIR}/_ext/1788384718/FSIO.o.d 
	@${RM} ${OBJECTDIR}/_ext/1788384718/FSIO.o.ok ${OBJECTDIR}/_ext/1788384718/FSIO.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1788384718/FSIO.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1788384718/FSIO.o.d" -o ${OBJECTDIR}/_ext/1788384718/FSIO.o "../../../Microchip/MDD File System/FSIO.c"  
	
${OBJECTDIR}/_ext/1788384718/SD-SPI.o: ../../../Microchip/MDD\ File\ System/SD-SPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1788384718 
	@${RM} ${OBJECTDIR}/_ext/1788384718/SD-SPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/1788384718/SD-SPI.o.ok ${OBJECTDIR}/_ext/1788384718/SD-SPI.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1788384718/SD-SPI.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1788384718/SD-SPI.o.d" -o ${OBJECTDIR}/_ext/1788384718/SD-SPI.o "../../../Microchip/MDD File System/SD-SPI.c"  
	
${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o: ../../Common/FlashProgrammer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2049610667 
	@${RM} ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d 
	@${RM} ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.ok ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d" -o ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o ../../Common/FlashProgrammer.c  
	
${OBJECTDIR}/_ext/1472/UART.o: ../UART.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/UART.o.ok ${OBJECTDIR}/_ext/1472/UART.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/UART.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/UART.o.d" -o ${OBJECTDIR}/_ext/1472/UART.o ../UART.c  
	
${OBJECTDIR}/_ext/2049610667/comm_pkt.o: ../../Common/comm_pkt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2049610667 
	@${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d 
	@${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.ok ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d" -o ${OBJECTDIR}/_ext/2049610667/comm_pkt.o ../../Common/comm_pkt.c  
	
${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o: ../../Common/comm_pkt_callback.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2049610667 
	@${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d 
	@${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.ok ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d" -o ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o ../../Common/comm_pkt_callback.c  
	
${OBJECTDIR}/_ext/1472/Animation.o: ../Animation.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/Animation.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Animation.o.ok ${OBJECTDIR}/_ext/1472/Animation.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/Animation.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/Animation.o.d" -o ${OBJECTDIR}/_ext/1472/Animation.o ../Animation.c  
	
${OBJECTDIR}/_ext/1472/DemoSelection.o: ../DemoSelection.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/DemoSelection.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/DemoSelection.o.ok ${OBJECTDIR}/_ext/1472/DemoSelection.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/DemoSelection.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/DemoSelection.o.d" -o ${OBJECTDIR}/_ext/1472/DemoSelection.o ../DemoSelection.c  
	
${OBJECTDIR}/_ext/1472/DemoSteps.o: ../DemoSteps.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/DemoSteps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/DemoSteps.o.ok ${OBJECTDIR}/_ext/1472/DemoSteps.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/DemoSteps.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/DemoSteps.o.d" -o ${OBJECTDIR}/_ext/1472/DemoSteps.o ../DemoSteps.c  
	
${OBJECTDIR}/_ext/1472/DrawTool.o: ../DrawTool.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/DrawTool.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/DrawTool.o.ok ${OBJECTDIR}/_ext/1472/DrawTool.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/DrawTool.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/DrawTool.o.d" -o ${OBJECTDIR}/_ext/1472/DrawTool.o ../DrawTool.c  
	
${OBJECTDIR}/_ext/1472/ECG.o: ../ECG.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/ECG.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/ECG.o.ok ${OBJECTDIR}/_ext/1472/ECG.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/ECG.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/ECG.o.d" -o ${OBJECTDIR}/_ext/1472/ECG.o ../ECG.c  
	
${OBJECTDIR}/_ext/1472/ECGBitmaps.o: ../ECGBitmaps.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/ECGBitmaps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/ECGBitmaps.o.ok ${OBJECTDIR}/_ext/1472/ECGBitmaps.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/ECGBitmaps.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/ECGBitmaps.o.d" -o ${OBJECTDIR}/_ext/1472/ECGBitmaps.o ../ECGBitmaps.c  
	
${OBJECTDIR}/_ext/1472/ExternalResource.o: ../ExternalResource.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/ExternalResource.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/ExternalResource.o.ok ${OBJECTDIR}/_ext/1472/ExternalResource.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/ExternalResource.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/ExternalResource.o.d" -o ${OBJECTDIR}/_ext/1472/ExternalResource.o ../ExternalResource.c  
	
${OBJECTDIR}/_ext/1472/Games.o: ../Games.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/Games.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Games.o.ok ${OBJECTDIR}/_ext/1472/Games.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/Games.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/Games.o.d" -o ${OBJECTDIR}/_ext/1472/Games.o ../Games.c  
	
${OBJECTDIR}/_ext/1472/GraphShow.o: ../GraphShow.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/GraphShow.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/GraphShow.o.ok ${OBJECTDIR}/_ext/1472/GraphShow.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/GraphShow.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/GraphShow.o.d" -o ${OBJECTDIR}/_ext/1472/GraphShow.o ../GraphShow.c  
	
${OBJECTDIR}/_ext/1472/InternalResourceC30.o: ../InternalResourceC30.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/InternalResourceC30.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/InternalResourceC30.o.ok ${OBJECTDIR}/_ext/1472/InternalResourceC30.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/InternalResourceC30.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/InternalResourceC30.o.d" -o ${OBJECTDIR}/_ext/1472/InternalResourceC30.o ../InternalResourceC30.c  
	
${OBJECTDIR}/_ext/1472/JPEGDemo.o: ../JPEGDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/JPEGDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/JPEGDemo.o.ok ${OBJECTDIR}/_ext/1472/JPEGDemo.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/JPEGDemo.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/JPEGDemo.o.d" -o ${OBJECTDIR}/_ext/1472/JPEGDemo.o ../JPEGDemo.c  
	
${OBJECTDIR}/_ext/1472/MainDemo.o: ../MainDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.ok ${OBJECTDIR}/_ext/1472/MainDemo.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/MainDemo.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/MainDemo.o.d" -o ${OBJECTDIR}/_ext/1472/MainDemo.o ../MainDemo.c  
	
${OBJECTDIR}/_ext/1472/MultiFontsDemo.o: ../MultiFontsDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/MultiFontsDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MultiFontsDemo.o.ok ${OBJECTDIR}/_ext/1472/MultiFontsDemo.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/MultiFontsDemo.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/MultiFontsDemo.o.d" -o ${OBJECTDIR}/_ext/1472/MultiFontsDemo.o ../MultiFontsDemo.c  
	
${OBJECTDIR}/_ext/1472/RGBDemo.o: ../RGBDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/RGBDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/RGBDemo.o.ok ${OBJECTDIR}/_ext/1472/RGBDemo.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/RGBDemo.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/RGBDemo.o.d" -o ${OBJECTDIR}/_ext/1472/RGBDemo.o ../RGBDemo.c  
	
${OBJECTDIR}/_ext/1472/SideButtons.o: ../SideButtons.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/SideButtons.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/SideButtons.o.ok ${OBJECTDIR}/_ext/1472/SideButtons.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/SideButtons.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/SideButtons.o.d" -o ${OBJECTDIR}/_ext/1472/SideButtons.o ../SideButtons.c  
	
${OBJECTDIR}/_ext/1472/SlideShowDemo.o: ../SlideShowDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/SlideShowDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/SlideShowDemo.o.ok ${OBJECTDIR}/_ext/1472/SlideShowDemo.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/SlideShowDemo.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/SlideShowDemo.o.d" -o ${OBJECTDIR}/_ext/1472/SlideShowDemo.o ../SlideShowDemo.c  
	
${OBJECTDIR}/_ext/1472/TimeDateDemo.o: ../TimeDateDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/TimeDateDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/TimeDateDemo.o.ok ${OBJECTDIR}/_ext/1472/TimeDateDemo.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/TimeDateDemo.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/TimeDateDemo.o.d" -o ${OBJECTDIR}/_ext/1472/TimeDateDemo.o ../TimeDateDemo.c  
	
${OBJECTDIR}/_ext/1472/rtcc.o: ../rtcc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/rtcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/rtcc.o.ok ${OBJECTDIR}/_ext/1472/rtcc.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/rtcc.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/rtcc.o.d" -o ${OBJECTDIR}/_ext/1472/rtcc.o ../rtcc.c  
	
else
${OBJECTDIR}/_ext/1687970324/SST25VF016.o: ../../../Board\ Support\ Package/SST25VF016.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.ok ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d" -o ${OBJECTDIR}/_ext/1687970324/SST25VF016.o "../../../Board Support Package/SST25VF016.c"  
	
${OBJECTDIR}/_ext/1687970324/SST39VF040.o: ../../../Board\ Support\ Package/SST39VF040.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.ok ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d" -o ${OBJECTDIR}/_ext/1687970324/SST39VF040.o "../../../Board Support Package/SST39VF040.c"  
	
${OBJECTDIR}/_ext/1687970324/TouchScreen.o: ../../../Board\ Support\ Package/TouchScreen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.ok ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d" -o ${OBJECTDIR}/_ext/1687970324/TouchScreen.o "../../../Board Support Package/TouchScreen.c"  
	
${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o: ../../../Board\ Support\ Package/TouchScreenResistive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.ok ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d" -o ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o "../../../Board Support Package/TouchScreenResistive.c"  
	
${OBJECTDIR}/_ext/1687970324/cpld.o: ../../../Board\ Support\ Package/cpld.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.ok ${OBJECTDIR}/_ext/1687970324/cpld.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/cpld.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1687970324/cpld.o.d" -o ${OBJECTDIR}/_ext/1687970324/cpld.o "../../../Board Support Package/cpld.c"  
	
${OBJECTDIR}/_ext/1687970324/drv_spi.o: ../../../Board\ Support\ Package/drv_spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.ok ${OBJECTDIR}/_ext/1687970324/drv_spi.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/drv_spi.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1687970324/drv_spi.o.d" -o ${OBJECTDIR}/_ext/1687970324/drv_spi.o "../../../Board Support Package/drv_spi.c"  
	
${OBJECTDIR}/_ext/1860783399/TimeDelay.o: ../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1860783399 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.ok ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d" -o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ../../../Microchip/Common/TimeDelay.c  
	
${OBJECTDIR}/_ext/1919882987/SSD1926.o: ../../../Microchip/Graphics/Drivers/SSD1926.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.ok ${OBJECTDIR}/_ext/1919882987/SSD1926.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/SSD1926.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/SSD1926.o.d" -o ${OBJECTDIR}/_ext/1919882987/SSD1926.o ../../../Microchip/Graphics/Drivers/SSD1926.c  
	
${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o: ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.ok ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d" -o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  
	
${OBJECTDIR}/_ext/1919882987/gfxepmp.o: ../../../Microchip/Graphics/Drivers/gfxepmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.ok ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d" -o ${OBJECTDIR}/_ext/1919882987/gfxepmp.o ../../../Microchip/Graphics/Drivers/gfxepmp.c  
	
${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o: ../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.ok ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d" -o ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o ../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  
	
${OBJECTDIR}/_ext/1919882987/mchpGfxLCC.o: ../../../Microchip/Graphics/Drivers/mchpGfxLCC.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxLCC.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxLCC.o.ok ${OBJECTDIR}/_ext/1919882987/mchpGfxLCC.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/mchpGfxLCC.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/mchpGfxLCC.o.d" -o ${OBJECTDIR}/_ext/1919882987/mchpGfxLCC.o ../../../Microchip/Graphics/Drivers/mchpGfxLCC.c  
	
${OBJECTDIR}/_ext/803622919/Button.o: ../../../Microchip/Graphics/Button.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Button.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Button.o.ok ${OBJECTDIR}/_ext/803622919/Button.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Button.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/Button.o.d" -o ${OBJECTDIR}/_ext/803622919/Button.o ../../../Microchip/Graphics/Button.c  
	
${OBJECTDIR}/_ext/803622919/Chart.o: ../../../Microchip/Graphics/Chart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Chart.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Chart.o.ok ${OBJECTDIR}/_ext/803622919/Chart.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Chart.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/Chart.o.d" -o ${OBJECTDIR}/_ext/803622919/Chart.o ../../../Microchip/Graphics/Chart.c  
	
${OBJECTDIR}/_ext/803622919/CheckBox.o: ../../../Microchip/Graphics/CheckBox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/CheckBox.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/CheckBox.o.ok ${OBJECTDIR}/_ext/803622919/CheckBox.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/CheckBox.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/CheckBox.o.d" -o ${OBJECTDIR}/_ext/803622919/CheckBox.o ../../../Microchip/Graphics/CheckBox.c  
	
${OBJECTDIR}/_ext/803622919/EditBox.o: ../../../Microchip/Graphics/EditBox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/EditBox.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/EditBox.o.ok ${OBJECTDIR}/_ext/803622919/EditBox.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/EditBox.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/EditBox.o.d" -o ${OBJECTDIR}/_ext/803622919/EditBox.o ../../../Microchip/Graphics/EditBox.c  
	
${OBJECTDIR}/_ext/803622919/GOL.o: ../../../Microchip/Graphics/GOL.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOL.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOL.o.ok ${OBJECTDIR}/_ext/803622919/GOL.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/GOL.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/GOL.o.d" -o ${OBJECTDIR}/_ext/803622919/GOL.o ../../../Microchip/Graphics/GOL.c  
	
${OBJECTDIR}/_ext/803622919/GOLFontDefault.o: ../../../Microchip/Graphics/GOLFontDefault.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.ok ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d" -o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ../../../Microchip/Graphics/GOLFontDefault.c  
	
${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o: ../../../Microchip/Graphics/GOLSchemeDefault.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.ok ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d" -o ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o ../../../Microchip/Graphics/GOLSchemeDefault.c  
	
${OBJECTDIR}/_ext/803622919/Grid.o: ../../../Microchip/Graphics/Grid.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Grid.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Grid.o.ok ${OBJECTDIR}/_ext/803622919/Grid.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Grid.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/Grid.o.d" -o ${OBJECTDIR}/_ext/803622919/Grid.o ../../../Microchip/Graphics/Grid.c  
	
${OBJECTDIR}/_ext/803622919/GroupBox.o: ../../../Microchip/Graphics/GroupBox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/GroupBox.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/GroupBox.o.ok ${OBJECTDIR}/_ext/803622919/GroupBox.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/GroupBox.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/GroupBox.o.d" -o ${OBJECTDIR}/_ext/803622919/GroupBox.o ../../../Microchip/Graphics/GroupBox.c  
	
${OBJECTDIR}/_ext/803622919/ListBox.o: ../../../Microchip/Graphics/ListBox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/ListBox.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/ListBox.o.ok ${OBJECTDIR}/_ext/803622919/ListBox.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/ListBox.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/ListBox.o.d" -o ${OBJECTDIR}/_ext/803622919/ListBox.o ../../../Microchip/Graphics/ListBox.c  
	
${OBJECTDIR}/_ext/803622919/Meter.o: ../../../Microchip/Graphics/Meter.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Meter.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Meter.o.ok ${OBJECTDIR}/_ext/803622919/Meter.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Meter.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/Meter.o.d" -o ${OBJECTDIR}/_ext/803622919/Meter.o ../../../Microchip/Graphics/Meter.c  
	
${OBJECTDIR}/_ext/803622919/Picture.o: ../../../Microchip/Graphics/Picture.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Picture.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Picture.o.ok ${OBJECTDIR}/_ext/803622919/Picture.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Picture.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/Picture.o.d" -o ${OBJECTDIR}/_ext/803622919/Picture.o ../../../Microchip/Graphics/Picture.c  
	
${OBJECTDIR}/_ext/803622919/Primitive.o: ../../../Microchip/Graphics/Primitive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.ok ${OBJECTDIR}/_ext/803622919/Primitive.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Primitive.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/Primitive.o.d" -o ${OBJECTDIR}/_ext/803622919/Primitive.o ../../../Microchip/Graphics/Primitive.c  
	
${OBJECTDIR}/_ext/803622919/RadioButton.o: ../../../Microchip/Graphics/RadioButton.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/RadioButton.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/RadioButton.o.ok ${OBJECTDIR}/_ext/803622919/RadioButton.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/RadioButton.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/RadioButton.o.d" -o ${OBJECTDIR}/_ext/803622919/RadioButton.o ../../../Microchip/Graphics/RadioButton.c  
	
${OBJECTDIR}/_ext/803622919/Slider.o: ../../../Microchip/Graphics/Slider.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Slider.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Slider.o.ok ${OBJECTDIR}/_ext/803622919/Slider.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Slider.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/Slider.o.d" -o ${OBJECTDIR}/_ext/803622919/Slider.o ../../../Microchip/Graphics/Slider.c  
	
${OBJECTDIR}/_ext/803622919/StaticText.o: ../../../Microchip/Graphics/StaticText.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/StaticText.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/StaticText.o.ok ${OBJECTDIR}/_ext/803622919/StaticText.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/StaticText.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/StaticText.o.d" -o ${OBJECTDIR}/_ext/803622919/StaticText.o ../../../Microchip/Graphics/StaticText.c  
	
${OBJECTDIR}/_ext/803622919/Window.o: ../../../Microchip/Graphics/Window.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Window.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Window.o.ok ${OBJECTDIR}/_ext/803622919/Window.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Window.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/Window.o.d" -o ${OBJECTDIR}/_ext/803622919/Window.o ../../../Microchip/Graphics/Window.c  
	
${OBJECTDIR}/_ext/1626048738/BmpDecoder.o: ../../../Microchip/Image\ Decoders/BmpDecoder.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	@${RM} ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.ok ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d" -o ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o "../../../Microchip/Image Decoders/BmpDecoder.c"  
	
${OBJECTDIR}/_ext/1626048738/GifDecoder.o: ../../../Microchip/Image\ Decoders/GifDecoder.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	@${RM} ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.ok ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1626048738/GifDecoder.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1626048738/GifDecoder.o.d" -o ${OBJECTDIR}/_ext/1626048738/GifDecoder.o "../../../Microchip/Image Decoders/GifDecoder.c"  
	
${OBJECTDIR}/_ext/1626048738/ImageDecoder.o: ../../../Microchip/Image\ Decoders/ImageDecoder.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	@${RM} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.ok ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d" -o ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o "../../../Microchip/Image Decoders/ImageDecoder.c"  
	
${OBJECTDIR}/_ext/1626048738/JpegDecoder.o: ../../../Microchip/Image\ Decoders/JpegDecoder.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	@${RM} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.ok ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d" -o ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o "../../../Microchip/Image Decoders/JpegDecoder.c"  
	
${OBJECTDIR}/_ext/1626048738/jidctint.o: ../../../Microchip/Image\ Decoders/jidctint.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	@${RM} ${OBJECTDIR}/_ext/1626048738/jidctint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/jidctint.o.ok ${OBJECTDIR}/_ext/1626048738/jidctint.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1626048738/jidctint.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1626048738/jidctint.o.d" -o ${OBJECTDIR}/_ext/1626048738/jidctint.o "../../../Microchip/Image Decoders/jidctint.c"  
	
${OBJECTDIR}/_ext/1788384718/FSIO.o: ../../../Microchip/MDD\ File\ System/FSIO.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1788384718 
	@${RM} ${OBJECTDIR}/_ext/1788384718/FSIO.o.d 
	@${RM} ${OBJECTDIR}/_ext/1788384718/FSIO.o.ok ${OBJECTDIR}/_ext/1788384718/FSIO.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1788384718/FSIO.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1788384718/FSIO.o.d" -o ${OBJECTDIR}/_ext/1788384718/FSIO.o "../../../Microchip/MDD File System/FSIO.c"  
	
${OBJECTDIR}/_ext/1788384718/SD-SPI.o: ../../../Microchip/MDD\ File\ System/SD-SPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1788384718 
	@${RM} ${OBJECTDIR}/_ext/1788384718/SD-SPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/1788384718/SD-SPI.o.ok ${OBJECTDIR}/_ext/1788384718/SD-SPI.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1788384718/SD-SPI.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1788384718/SD-SPI.o.d" -o ${OBJECTDIR}/_ext/1788384718/SD-SPI.o "../../../Microchip/MDD File System/SD-SPI.c"  
	
${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o: ../../Common/FlashProgrammer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2049610667 
	@${RM} ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d 
	@${RM} ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.ok ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d" -o ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o ../../Common/FlashProgrammer.c  
	
${OBJECTDIR}/_ext/1472/UART.o: ../UART.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/UART.o.ok ${OBJECTDIR}/_ext/1472/UART.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/UART.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/UART.o.d" -o ${OBJECTDIR}/_ext/1472/UART.o ../UART.c  
	
${OBJECTDIR}/_ext/2049610667/comm_pkt.o: ../../Common/comm_pkt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2049610667 
	@${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d 
	@${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.ok ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d" -o ${OBJECTDIR}/_ext/2049610667/comm_pkt.o ../../Common/comm_pkt.c  
	
${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o: ../../Common/comm_pkt_callback.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2049610667 
	@${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d 
	@${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.ok ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d" -o ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o ../../Common/comm_pkt_callback.c  
	
${OBJECTDIR}/_ext/1472/Animation.o: ../Animation.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/Animation.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Animation.o.ok ${OBJECTDIR}/_ext/1472/Animation.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/Animation.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/Animation.o.d" -o ${OBJECTDIR}/_ext/1472/Animation.o ../Animation.c  
	
${OBJECTDIR}/_ext/1472/DemoSelection.o: ../DemoSelection.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/DemoSelection.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/DemoSelection.o.ok ${OBJECTDIR}/_ext/1472/DemoSelection.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/DemoSelection.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/DemoSelection.o.d" -o ${OBJECTDIR}/_ext/1472/DemoSelection.o ../DemoSelection.c  
	
${OBJECTDIR}/_ext/1472/DemoSteps.o: ../DemoSteps.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/DemoSteps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/DemoSteps.o.ok ${OBJECTDIR}/_ext/1472/DemoSteps.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/DemoSteps.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/DemoSteps.o.d" -o ${OBJECTDIR}/_ext/1472/DemoSteps.o ../DemoSteps.c  
	
${OBJECTDIR}/_ext/1472/DrawTool.o: ../DrawTool.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/DrawTool.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/DrawTool.o.ok ${OBJECTDIR}/_ext/1472/DrawTool.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/DrawTool.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/DrawTool.o.d" -o ${OBJECTDIR}/_ext/1472/DrawTool.o ../DrawTool.c  
	
${OBJECTDIR}/_ext/1472/ECG.o: ../ECG.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/ECG.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/ECG.o.ok ${OBJECTDIR}/_ext/1472/ECG.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/ECG.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/ECG.o.d" -o ${OBJECTDIR}/_ext/1472/ECG.o ../ECG.c  
	
${OBJECTDIR}/_ext/1472/ECGBitmaps.o: ../ECGBitmaps.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/ECGBitmaps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/ECGBitmaps.o.ok ${OBJECTDIR}/_ext/1472/ECGBitmaps.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/ECGBitmaps.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/ECGBitmaps.o.d" -o ${OBJECTDIR}/_ext/1472/ECGBitmaps.o ../ECGBitmaps.c  
	
${OBJECTDIR}/_ext/1472/ExternalResource.o: ../ExternalResource.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/ExternalResource.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/ExternalResource.o.ok ${OBJECTDIR}/_ext/1472/ExternalResource.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/ExternalResource.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/ExternalResource.o.d" -o ${OBJECTDIR}/_ext/1472/ExternalResource.o ../ExternalResource.c  
	
${OBJECTDIR}/_ext/1472/Games.o: ../Games.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/Games.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Games.o.ok ${OBJECTDIR}/_ext/1472/Games.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/Games.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/Games.o.d" -o ${OBJECTDIR}/_ext/1472/Games.o ../Games.c  
	
${OBJECTDIR}/_ext/1472/GraphShow.o: ../GraphShow.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/GraphShow.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/GraphShow.o.ok ${OBJECTDIR}/_ext/1472/GraphShow.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/GraphShow.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/GraphShow.o.d" -o ${OBJECTDIR}/_ext/1472/GraphShow.o ../GraphShow.c  
	
${OBJECTDIR}/_ext/1472/InternalResourceC30.o: ../InternalResourceC30.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/InternalResourceC30.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/InternalResourceC30.o.ok ${OBJECTDIR}/_ext/1472/InternalResourceC30.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/InternalResourceC30.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/InternalResourceC30.o.d" -o ${OBJECTDIR}/_ext/1472/InternalResourceC30.o ../InternalResourceC30.c  
	
${OBJECTDIR}/_ext/1472/JPEGDemo.o: ../JPEGDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/JPEGDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/JPEGDemo.o.ok ${OBJECTDIR}/_ext/1472/JPEGDemo.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/JPEGDemo.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/JPEGDemo.o.d" -o ${OBJECTDIR}/_ext/1472/JPEGDemo.o ../JPEGDemo.c  
	
${OBJECTDIR}/_ext/1472/MainDemo.o: ../MainDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.ok ${OBJECTDIR}/_ext/1472/MainDemo.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/MainDemo.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/MainDemo.o.d" -o ${OBJECTDIR}/_ext/1472/MainDemo.o ../MainDemo.c  
	
${OBJECTDIR}/_ext/1472/MultiFontsDemo.o: ../MultiFontsDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/MultiFontsDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MultiFontsDemo.o.ok ${OBJECTDIR}/_ext/1472/MultiFontsDemo.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/MultiFontsDemo.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/MultiFontsDemo.o.d" -o ${OBJECTDIR}/_ext/1472/MultiFontsDemo.o ../MultiFontsDemo.c  
	
${OBJECTDIR}/_ext/1472/RGBDemo.o: ../RGBDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/RGBDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/RGBDemo.o.ok ${OBJECTDIR}/_ext/1472/RGBDemo.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/RGBDemo.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/RGBDemo.o.d" -o ${OBJECTDIR}/_ext/1472/RGBDemo.o ../RGBDemo.c  
	
${OBJECTDIR}/_ext/1472/SideButtons.o: ../SideButtons.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/SideButtons.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/SideButtons.o.ok ${OBJECTDIR}/_ext/1472/SideButtons.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/SideButtons.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/SideButtons.o.d" -o ${OBJECTDIR}/_ext/1472/SideButtons.o ../SideButtons.c  
	
${OBJECTDIR}/_ext/1472/SlideShowDemo.o: ../SlideShowDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/SlideShowDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/SlideShowDemo.o.ok ${OBJECTDIR}/_ext/1472/SlideShowDemo.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/SlideShowDemo.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/SlideShowDemo.o.d" -o ${OBJECTDIR}/_ext/1472/SlideShowDemo.o ../SlideShowDemo.c  
	
${OBJECTDIR}/_ext/1472/TimeDateDemo.o: ../TimeDateDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/TimeDateDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/TimeDateDemo.o.ok ${OBJECTDIR}/_ext/1472/TimeDateDemo.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/TimeDateDemo.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/TimeDateDemo.o.d" -o ${OBJECTDIR}/_ext/1472/TimeDateDemo.o ../TimeDateDemo.c  
	
${OBJECTDIR}/_ext/1472/rtcc.o: ../rtcc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/rtcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/rtcc.o.ok ${OBJECTDIR}/_ext/1472/rtcc.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/rtcc.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_SDMSD_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/rtcc.o.d" -o ${OBJECTDIR}/_ext/1472/rtcc.o ../rtcc.c  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}        -Wl,--defsym=__MPLAB_BUILD=1,--heap=3000,--no-check-sections,-L"../../../../../../../Program Files/Microchip/MPLAB C30/lib",-Map="$(BINDIR_)$(TARGETBASE).map"$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_REAL_ICE=1
else
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf -mcpu=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}        -Wl,--defsym=__MPLAB_BUILD=1,--heap=3000,--no-check-sections,-L"../../../../../../../Program Files/Microchip/MPLAB C30/lib",-Map="$(BINDIR_)$(TARGETBASE).map"$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION)
	${MP_CC_DIR}\\pic30-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -omf=elf
endif


# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf:
	${RM} -r build/PIC24_GA110_GFXv3_EX16_8PMP_QVGAv1_SDMSD
	${RM} -r dist/PIC24_GA110_GFXv3_EX16_8PMP_QVGAv1_SDMSD

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
