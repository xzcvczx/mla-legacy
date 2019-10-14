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
CND_CONF=PIC_SK_GFXv3_16PMP_QVGAv1_USBMSD
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
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1687970324/SST25VF016.o ${OBJECTDIR}/_ext/1687970324/SST39VF040.o ${OBJECTDIR}/_ext/1687970324/TouchScreen.o ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o ${OBJECTDIR}/_ext/1687970324/cpld.o ${OBJECTDIR}/_ext/1687970324/drv_spi.o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ${OBJECTDIR}/_ext/1919882987/SSD1926.o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ${OBJECTDIR}/_ext/1919882987/gfxepmp.o ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o ${OBJECTDIR}/_ext/1919882987/mchpGfxLCC.o ${OBJECTDIR}/_ext/803622919/Button.o ${OBJECTDIR}/_ext/803622919/Chart.o ${OBJECTDIR}/_ext/803622919/CheckBox.o ${OBJECTDIR}/_ext/803622919/EditBox.o ${OBJECTDIR}/_ext/803622919/GOL.o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o ${OBJECTDIR}/_ext/803622919/Grid.o ${OBJECTDIR}/_ext/803622919/GroupBox.o ${OBJECTDIR}/_ext/803622919/ListBox.o ${OBJECTDIR}/_ext/803622919/Meter.o ${OBJECTDIR}/_ext/803622919/Picture.o ${OBJECTDIR}/_ext/803622919/Primitive.o ${OBJECTDIR}/_ext/803622919/RadioButton.o ${OBJECTDIR}/_ext/803622919/Slider.o ${OBJECTDIR}/_ext/803622919/StaticText.o ${OBJECTDIR}/_ext/803622919/Window.o ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o ${OBJECTDIR}/_ext/1626048738/GifDecoder.o ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o ${OBJECTDIR}/_ext/1626048738/jidctint.o ${OBJECTDIR}/_ext/1788384718/FSIO.o ${OBJECTDIR}/_ext/549097302/usb_host.o ${OBJECTDIR}/_ext/172487899/usb_host_msd.o ${OBJECTDIR}/_ext/172487899/usb_host_msd_scsi.o ${OBJECTDIR}/_ext/1472/Animation.o ${OBJECTDIR}/_ext/1472/DemoSelection.o ${OBJECTDIR}/_ext/1472/DemoSteps.o ${OBJECTDIR}/_ext/1472/DrawTool.o ${OBJECTDIR}/_ext/1472/ECG.o ${OBJECTDIR}/_ext/1472/ECGBitmaps.o ${OBJECTDIR}/_ext/1472/Games.o ${OBJECTDIR}/_ext/1472/GraphShow.o ${OBJECTDIR}/_ext/1472/InternalResourceC32.o ${OBJECTDIR}/_ext/1472/InternalResourceSet2C32.o ${OBJECTDIR}/_ext/1472/JPEGDemo.o ${OBJECTDIR}/_ext/1472/MainDemo.o ${OBJECTDIR}/_ext/1472/MultiFontsDemo.o ${OBJECTDIR}/_ext/1472/RGBDemo.o ${OBJECTDIR}/_ext/1472/SideButtons.o ${OBJECTDIR}/_ext/1472/SlideShowDemo.o ${OBJECTDIR}/_ext/1472/TimeDateDemo.o ${OBJECTDIR}/_ext/1472/rtcc.o ${OBJECTDIR}/_ext/1472/usb_config.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d ${OBJECTDIR}/_ext/1687970324/cpld.o.d ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.d ${OBJECTDIR}/_ext/1919882987/mchpGfxLCC.o.d ${OBJECTDIR}/_ext/803622919/Button.o.d ${OBJECTDIR}/_ext/803622919/Chart.o.d ${OBJECTDIR}/_ext/803622919/CheckBox.o.d ${OBJECTDIR}/_ext/803622919/EditBox.o.d ${OBJECTDIR}/_ext/803622919/GOL.o.d ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d ${OBJECTDIR}/_ext/803622919/Grid.o.d ${OBJECTDIR}/_ext/803622919/GroupBox.o.d ${OBJECTDIR}/_ext/803622919/ListBox.o.d ${OBJECTDIR}/_ext/803622919/Meter.o.d ${OBJECTDIR}/_ext/803622919/Picture.o.d ${OBJECTDIR}/_ext/803622919/Primitive.o.d ${OBJECTDIR}/_ext/803622919/RadioButton.o.d ${OBJECTDIR}/_ext/803622919/Slider.o.d ${OBJECTDIR}/_ext/803622919/StaticText.o.d ${OBJECTDIR}/_ext/803622919/Window.o.d ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.d ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d ${OBJECTDIR}/_ext/1626048738/jidctint.o.d ${OBJECTDIR}/_ext/1788384718/FSIO.o.d ${OBJECTDIR}/_ext/549097302/usb_host.o.d ${OBJECTDIR}/_ext/172487899/usb_host_msd.o.d ${OBJECTDIR}/_ext/172487899/usb_host_msd_scsi.o.d ${OBJECTDIR}/_ext/1472/Animation.o.d ${OBJECTDIR}/_ext/1472/DemoSelection.o.d ${OBJECTDIR}/_ext/1472/DemoSteps.o.d ${OBJECTDIR}/_ext/1472/DrawTool.o.d ${OBJECTDIR}/_ext/1472/ECG.o.d ${OBJECTDIR}/_ext/1472/ECGBitmaps.o.d ${OBJECTDIR}/_ext/1472/Games.o.d ${OBJECTDIR}/_ext/1472/GraphShow.o.d ${OBJECTDIR}/_ext/1472/InternalResourceC32.o.d ${OBJECTDIR}/_ext/1472/InternalResourceSet2C32.o.d ${OBJECTDIR}/_ext/1472/JPEGDemo.o.d ${OBJECTDIR}/_ext/1472/MainDemo.o.d ${OBJECTDIR}/_ext/1472/MultiFontsDemo.o.d ${OBJECTDIR}/_ext/1472/RGBDemo.o.d ${OBJECTDIR}/_ext/1472/SideButtons.o.d ${OBJECTDIR}/_ext/1472/SlideShowDemo.o.d ${OBJECTDIR}/_ext/1472/TimeDateDemo.o.d ${OBJECTDIR}/_ext/1472/rtcc.o.d ${OBJECTDIR}/_ext/1472/usb_config.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1687970324/SST25VF016.o ${OBJECTDIR}/_ext/1687970324/SST39VF040.o ${OBJECTDIR}/_ext/1687970324/TouchScreen.o ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o ${OBJECTDIR}/_ext/1687970324/cpld.o ${OBJECTDIR}/_ext/1687970324/drv_spi.o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ${OBJECTDIR}/_ext/1919882987/SSD1926.o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ${OBJECTDIR}/_ext/1919882987/gfxepmp.o ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o ${OBJECTDIR}/_ext/1919882987/mchpGfxLCC.o ${OBJECTDIR}/_ext/803622919/Button.o ${OBJECTDIR}/_ext/803622919/Chart.o ${OBJECTDIR}/_ext/803622919/CheckBox.o ${OBJECTDIR}/_ext/803622919/EditBox.o ${OBJECTDIR}/_ext/803622919/GOL.o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o ${OBJECTDIR}/_ext/803622919/Grid.o ${OBJECTDIR}/_ext/803622919/GroupBox.o ${OBJECTDIR}/_ext/803622919/ListBox.o ${OBJECTDIR}/_ext/803622919/Meter.o ${OBJECTDIR}/_ext/803622919/Picture.o ${OBJECTDIR}/_ext/803622919/Primitive.o ${OBJECTDIR}/_ext/803622919/RadioButton.o ${OBJECTDIR}/_ext/803622919/Slider.o ${OBJECTDIR}/_ext/803622919/StaticText.o ${OBJECTDIR}/_ext/803622919/Window.o ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o ${OBJECTDIR}/_ext/1626048738/GifDecoder.o ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o ${OBJECTDIR}/_ext/1626048738/jidctint.o ${OBJECTDIR}/_ext/1788384718/FSIO.o ${OBJECTDIR}/_ext/549097302/usb_host.o ${OBJECTDIR}/_ext/172487899/usb_host_msd.o ${OBJECTDIR}/_ext/172487899/usb_host_msd_scsi.o ${OBJECTDIR}/_ext/1472/Animation.o ${OBJECTDIR}/_ext/1472/DemoSelection.o ${OBJECTDIR}/_ext/1472/DemoSteps.o ${OBJECTDIR}/_ext/1472/DrawTool.o ${OBJECTDIR}/_ext/1472/ECG.o ${OBJECTDIR}/_ext/1472/ECGBitmaps.o ${OBJECTDIR}/_ext/1472/Games.o ${OBJECTDIR}/_ext/1472/GraphShow.o ${OBJECTDIR}/_ext/1472/InternalResourceC32.o ${OBJECTDIR}/_ext/1472/InternalResourceSet2C32.o ${OBJECTDIR}/_ext/1472/JPEGDemo.o ${OBJECTDIR}/_ext/1472/MainDemo.o ${OBJECTDIR}/_ext/1472/MultiFontsDemo.o ${OBJECTDIR}/_ext/1472/RGBDemo.o ${OBJECTDIR}/_ext/1472/SideButtons.o ${OBJECTDIR}/_ext/1472/SlideShowDemo.o ${OBJECTDIR}/_ext/1472/TimeDateDemo.o ${OBJECTDIR}/_ext/1472/rtcc.o ${OBJECTDIR}/_ext/1472/usb_config.o


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
	${MAKE}  -f nbproject/Makefile-PIC_SK_GFXv3_16PMP_QVGAv1_USBMSD.mk dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX795F512L
MP_LINKER_FILE_OPTION=
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
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d" -o ${OBJECTDIR}/_ext/1687970324/SST25VF016.o "../../../Board Support Package/SST25VF016.c"  
	
${OBJECTDIR}/_ext/1687970324/SST39VF040.o: ../../../Board\ Support\ Package/SST39VF040.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d" -o ${OBJECTDIR}/_ext/1687970324/SST39VF040.o "../../../Board Support Package/SST39VF040.c"  
	
${OBJECTDIR}/_ext/1687970324/TouchScreen.o: ../../../Board\ Support\ Package/TouchScreen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d" -o ${OBJECTDIR}/_ext/1687970324/TouchScreen.o "../../../Board Support Package/TouchScreen.c"  
	
${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o: ../../../Board\ Support\ Package/TouchScreenResistive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d" -o ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o "../../../Board Support Package/TouchScreenResistive.c"  
	
${OBJECTDIR}/_ext/1687970324/cpld.o: ../../../Board\ Support\ Package/cpld.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/cpld.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1687970324/cpld.o.d" -o ${OBJECTDIR}/_ext/1687970324/cpld.o "../../../Board Support Package/cpld.c"  
	
${OBJECTDIR}/_ext/1687970324/drv_spi.o: ../../../Board\ Support\ Package/drv_spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/drv_spi.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1687970324/drv_spi.o.d" -o ${OBJECTDIR}/_ext/1687970324/drv_spi.o "../../../Board Support Package/drv_spi.c"  
	
${OBJECTDIR}/_ext/1860783399/TimeDelay.o: ../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1860783399 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d" -o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ../../../Microchip/Common/TimeDelay.c  
	
${OBJECTDIR}/_ext/1919882987/SSD1926.o: ../../../Microchip/Graphics/Drivers/SSD1926.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/SSD1926.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1919882987/SSD1926.o.d" -o ${OBJECTDIR}/_ext/1919882987/SSD1926.o ../../../Microchip/Graphics/Drivers/SSD1926.c  
	
${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o: ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d" -o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  
	
${OBJECTDIR}/_ext/1919882987/gfxepmp.o: ../../../Microchip/Graphics/Drivers/gfxepmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d" -o ${OBJECTDIR}/_ext/1919882987/gfxepmp.o ../../../Microchip/Graphics/Drivers/gfxepmp.c  
	
${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o: ../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d" -o ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o ../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  
	
${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o: ../../../Microchip/Graphics/Drivers/mchpGfxDrvBuffer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.d" -o ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o ../../../Microchip/Graphics/Drivers/mchpGfxDrvBuffer.c  
	
${OBJECTDIR}/_ext/1919882987/mchpGfxLCC.o: ../../../Microchip/Graphics/Drivers/mchpGfxLCC.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxLCC.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/mchpGfxLCC.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1919882987/mchpGfxLCC.o.d" -o ${OBJECTDIR}/_ext/1919882987/mchpGfxLCC.o ../../../Microchip/Graphics/Drivers/mchpGfxLCC.c  
	
${OBJECTDIR}/_ext/803622919/Button.o: ../../../Microchip/Graphics/Button.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Button.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Button.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/803622919/Button.o.d" -o ${OBJECTDIR}/_ext/803622919/Button.o ../../../Microchip/Graphics/Button.c  
	
${OBJECTDIR}/_ext/803622919/Chart.o: ../../../Microchip/Graphics/Chart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Chart.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Chart.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/803622919/Chart.o.d" -o ${OBJECTDIR}/_ext/803622919/Chart.o ../../../Microchip/Graphics/Chart.c  
	
${OBJECTDIR}/_ext/803622919/CheckBox.o: ../../../Microchip/Graphics/CheckBox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/CheckBox.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/CheckBox.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/803622919/CheckBox.o.d" -o ${OBJECTDIR}/_ext/803622919/CheckBox.o ../../../Microchip/Graphics/CheckBox.c  
	
${OBJECTDIR}/_ext/803622919/EditBox.o: ../../../Microchip/Graphics/EditBox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/EditBox.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/EditBox.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/803622919/EditBox.o.d" -o ${OBJECTDIR}/_ext/803622919/EditBox.o ../../../Microchip/Graphics/EditBox.c  
	
${OBJECTDIR}/_ext/803622919/GOL.o: ../../../Microchip/Graphics/GOL.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOL.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/GOL.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/803622919/GOL.o.d" -o ${OBJECTDIR}/_ext/803622919/GOL.o ../../../Microchip/Graphics/GOL.c  
	
${OBJECTDIR}/_ext/803622919/GOLFontDefault.o: ../../../Microchip/Graphics/GOLFontDefault.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d" -o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ../../../Microchip/Graphics/GOLFontDefault.c  
	
${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o: ../../../Microchip/Graphics/GOLSchemeDefault.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d" -o ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o ../../../Microchip/Graphics/GOLSchemeDefault.c  
	
${OBJECTDIR}/_ext/803622919/Grid.o: ../../../Microchip/Graphics/Grid.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Grid.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Grid.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/803622919/Grid.o.d" -o ${OBJECTDIR}/_ext/803622919/Grid.o ../../../Microchip/Graphics/Grid.c  
	
${OBJECTDIR}/_ext/803622919/GroupBox.o: ../../../Microchip/Graphics/GroupBox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/GroupBox.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/GroupBox.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/803622919/GroupBox.o.d" -o ${OBJECTDIR}/_ext/803622919/GroupBox.o ../../../Microchip/Graphics/GroupBox.c  
	
${OBJECTDIR}/_ext/803622919/ListBox.o: ../../../Microchip/Graphics/ListBox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/ListBox.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/ListBox.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/803622919/ListBox.o.d" -o ${OBJECTDIR}/_ext/803622919/ListBox.o ../../../Microchip/Graphics/ListBox.c  
	
${OBJECTDIR}/_ext/803622919/Meter.o: ../../../Microchip/Graphics/Meter.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Meter.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Meter.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/803622919/Meter.o.d" -o ${OBJECTDIR}/_ext/803622919/Meter.o ../../../Microchip/Graphics/Meter.c  
	
${OBJECTDIR}/_ext/803622919/Picture.o: ../../../Microchip/Graphics/Picture.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Picture.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Picture.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/803622919/Picture.o.d" -o ${OBJECTDIR}/_ext/803622919/Picture.o ../../../Microchip/Graphics/Picture.c  
	
${OBJECTDIR}/_ext/803622919/Primitive.o: ../../../Microchip/Graphics/Primitive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Primitive.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/803622919/Primitive.o.d" -o ${OBJECTDIR}/_ext/803622919/Primitive.o ../../../Microchip/Graphics/Primitive.c  
	
${OBJECTDIR}/_ext/803622919/RadioButton.o: ../../../Microchip/Graphics/RadioButton.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/RadioButton.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/RadioButton.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/803622919/RadioButton.o.d" -o ${OBJECTDIR}/_ext/803622919/RadioButton.o ../../../Microchip/Graphics/RadioButton.c  
	
${OBJECTDIR}/_ext/803622919/Slider.o: ../../../Microchip/Graphics/Slider.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Slider.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Slider.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/803622919/Slider.o.d" -o ${OBJECTDIR}/_ext/803622919/Slider.o ../../../Microchip/Graphics/Slider.c  
	
${OBJECTDIR}/_ext/803622919/StaticText.o: ../../../Microchip/Graphics/StaticText.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/StaticText.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/StaticText.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/803622919/StaticText.o.d" -o ${OBJECTDIR}/_ext/803622919/StaticText.o ../../../Microchip/Graphics/StaticText.c  
	
${OBJECTDIR}/_ext/803622919/Window.o: ../../../Microchip/Graphics/Window.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Window.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Window.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/803622919/Window.o.d" -o ${OBJECTDIR}/_ext/803622919/Window.o ../../../Microchip/Graphics/Window.c  
	
${OBJECTDIR}/_ext/1626048738/BmpDecoder.o: ../../../Microchip/Image\ Decoders/BmpDecoder.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	@${RM} ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d" -o ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o "../../../Microchip/Image Decoders/BmpDecoder.c"  
	
${OBJECTDIR}/_ext/1626048738/GifDecoder.o: ../../../Microchip/Image\ Decoders/GifDecoder.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	@${RM} ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1626048738/GifDecoder.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1626048738/GifDecoder.o.d" -o ${OBJECTDIR}/_ext/1626048738/GifDecoder.o "../../../Microchip/Image Decoders/GifDecoder.c"  
	
${OBJECTDIR}/_ext/1626048738/ImageDecoder.o: ../../../Microchip/Image\ Decoders/ImageDecoder.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	@${RM} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d" -o ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o "../../../Microchip/Image Decoders/ImageDecoder.c"  
	
${OBJECTDIR}/_ext/1626048738/JpegDecoder.o: ../../../Microchip/Image\ Decoders/JpegDecoder.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	@${RM} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d" -o ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o "../../../Microchip/Image Decoders/JpegDecoder.c"  
	
${OBJECTDIR}/_ext/1626048738/jidctint.o: ../../../Microchip/Image\ Decoders/jidctint.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	@${RM} ${OBJECTDIR}/_ext/1626048738/jidctint.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1626048738/jidctint.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1626048738/jidctint.o.d" -o ${OBJECTDIR}/_ext/1626048738/jidctint.o "../../../Microchip/Image Decoders/jidctint.c"  
	
${OBJECTDIR}/_ext/1788384718/FSIO.o: ../../../Microchip/MDD\ File\ System/FSIO.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1788384718 
	@${RM} ${OBJECTDIR}/_ext/1788384718/FSIO.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1788384718/FSIO.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1788384718/FSIO.o.d" -o ${OBJECTDIR}/_ext/1788384718/FSIO.o "../../../Microchip/MDD File System/FSIO.c"  
	
${OBJECTDIR}/_ext/549097302/usb_host.o: ../../../Microchip/USB/usb_host.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/549097302 
	@${RM} ${OBJECTDIR}/_ext/549097302/usb_host.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/549097302/usb_host.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/549097302/usb_host.o.d" -o ${OBJECTDIR}/_ext/549097302/usb_host.o ../../../Microchip/USB/usb_host.c  
	
${OBJECTDIR}/_ext/172487899/usb_host_msd.o: ../../../Microchip/USB/MSD\ Host\ Driver/usb_host_msd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/172487899 
	@${RM} ${OBJECTDIR}/_ext/172487899/usb_host_msd.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/172487899/usb_host_msd.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/172487899/usb_host_msd.o.d" -o ${OBJECTDIR}/_ext/172487899/usb_host_msd.o "../../../Microchip/USB/MSD Host Driver/usb_host_msd.c"  
	
${OBJECTDIR}/_ext/172487899/usb_host_msd_scsi.o: ../../../Microchip/USB/MSD\ Host\ Driver/usb_host_msd_scsi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/172487899 
	@${RM} ${OBJECTDIR}/_ext/172487899/usb_host_msd_scsi.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/172487899/usb_host_msd_scsi.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/172487899/usb_host_msd_scsi.o.d" -o ${OBJECTDIR}/_ext/172487899/usb_host_msd_scsi.o "../../../Microchip/USB/MSD Host Driver/usb_host_msd_scsi.c"  
	
${OBJECTDIR}/_ext/1472/Animation.o: ../Animation.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/Animation.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/Animation.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/Animation.o.d" -o ${OBJECTDIR}/_ext/1472/Animation.o ../Animation.c  
	
${OBJECTDIR}/_ext/1472/DemoSelection.o: ../DemoSelection.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/DemoSelection.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/DemoSelection.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/DemoSelection.o.d" -o ${OBJECTDIR}/_ext/1472/DemoSelection.o ../DemoSelection.c  
	
${OBJECTDIR}/_ext/1472/DemoSteps.o: ../DemoSteps.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/DemoSteps.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/DemoSteps.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/DemoSteps.o.d" -o ${OBJECTDIR}/_ext/1472/DemoSteps.o ../DemoSteps.c  
	
${OBJECTDIR}/_ext/1472/DrawTool.o: ../DrawTool.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/DrawTool.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/DrawTool.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/DrawTool.o.d" -o ${OBJECTDIR}/_ext/1472/DrawTool.o ../DrawTool.c  
	
${OBJECTDIR}/_ext/1472/ECG.o: ../ECG.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/ECG.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/ECG.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/ECG.o.d" -o ${OBJECTDIR}/_ext/1472/ECG.o ../ECG.c  
	
${OBJECTDIR}/_ext/1472/ECGBitmaps.o: ../ECGBitmaps.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/ECGBitmaps.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/ECGBitmaps.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/ECGBitmaps.o.d" -o ${OBJECTDIR}/_ext/1472/ECGBitmaps.o ../ECGBitmaps.c  
	
${OBJECTDIR}/_ext/1472/Games.o: ../Games.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/Games.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/Games.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/Games.o.d" -o ${OBJECTDIR}/_ext/1472/Games.o ../Games.c  
	
${OBJECTDIR}/_ext/1472/GraphShow.o: ../GraphShow.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/GraphShow.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/GraphShow.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/GraphShow.o.d" -o ${OBJECTDIR}/_ext/1472/GraphShow.o ../GraphShow.c  
	
${OBJECTDIR}/_ext/1472/InternalResourceC32.o: ../InternalResourceC32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/InternalResourceC32.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/InternalResourceC32.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/InternalResourceC32.o.d" -o ${OBJECTDIR}/_ext/1472/InternalResourceC32.o ../InternalResourceC32.c  
	
${OBJECTDIR}/_ext/1472/InternalResourceSet2C32.o: ../InternalResourceSet2C32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/InternalResourceSet2C32.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/InternalResourceSet2C32.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/InternalResourceSet2C32.o.d" -o ${OBJECTDIR}/_ext/1472/InternalResourceSet2C32.o ../InternalResourceSet2C32.c  
	
${OBJECTDIR}/_ext/1472/JPEGDemo.o: ../JPEGDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/JPEGDemo.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/JPEGDemo.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/JPEGDemo.o.d" -o ${OBJECTDIR}/_ext/1472/JPEGDemo.o ../JPEGDemo.c  
	
${OBJECTDIR}/_ext/1472/MainDemo.o: ../MainDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/MainDemo.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/MainDemo.o.d" -o ${OBJECTDIR}/_ext/1472/MainDemo.o ../MainDemo.c  
	
${OBJECTDIR}/_ext/1472/MultiFontsDemo.o: ../MultiFontsDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/MultiFontsDemo.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/MultiFontsDemo.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/MultiFontsDemo.o.d" -o ${OBJECTDIR}/_ext/1472/MultiFontsDemo.o ../MultiFontsDemo.c  
	
${OBJECTDIR}/_ext/1472/RGBDemo.o: ../RGBDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/RGBDemo.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/RGBDemo.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/RGBDemo.o.d" -o ${OBJECTDIR}/_ext/1472/RGBDemo.o ../RGBDemo.c  
	
${OBJECTDIR}/_ext/1472/SideButtons.o: ../SideButtons.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/SideButtons.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/SideButtons.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/SideButtons.o.d" -o ${OBJECTDIR}/_ext/1472/SideButtons.o ../SideButtons.c  
	
${OBJECTDIR}/_ext/1472/SlideShowDemo.o: ../SlideShowDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/SlideShowDemo.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/SlideShowDemo.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/SlideShowDemo.o.d" -o ${OBJECTDIR}/_ext/1472/SlideShowDemo.o ../SlideShowDemo.c  
	
${OBJECTDIR}/_ext/1472/TimeDateDemo.o: ../TimeDateDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/TimeDateDemo.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/TimeDateDemo.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/TimeDateDemo.o.d" -o ${OBJECTDIR}/_ext/1472/TimeDateDemo.o ../TimeDateDemo.c  
	
${OBJECTDIR}/_ext/1472/rtcc.o: ../rtcc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/rtcc.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/rtcc.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/rtcc.o.d" -o ${OBJECTDIR}/_ext/1472/rtcc.o ../rtcc.c  
	
${OBJECTDIR}/_ext/1472/usb_config.o: ../usb_config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/usb_config.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/usb_config.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/usb_config.o.d" -o ${OBJECTDIR}/_ext/1472/usb_config.o ../usb_config.c  
	
else
${OBJECTDIR}/_ext/1687970324/SST25VF016.o: ../../../Board\ Support\ Package/SST25VF016.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d" -o ${OBJECTDIR}/_ext/1687970324/SST25VF016.o "../../../Board Support Package/SST25VF016.c"  
	
${OBJECTDIR}/_ext/1687970324/SST39VF040.o: ../../../Board\ Support\ Package/SST39VF040.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d" -o ${OBJECTDIR}/_ext/1687970324/SST39VF040.o "../../../Board Support Package/SST39VF040.c"  
	
${OBJECTDIR}/_ext/1687970324/TouchScreen.o: ../../../Board\ Support\ Package/TouchScreen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d" -o ${OBJECTDIR}/_ext/1687970324/TouchScreen.o "../../../Board Support Package/TouchScreen.c"  
	
${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o: ../../../Board\ Support\ Package/TouchScreenResistive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d" -o ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o "../../../Board Support Package/TouchScreenResistive.c"  
	
${OBJECTDIR}/_ext/1687970324/cpld.o: ../../../Board\ Support\ Package/cpld.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/cpld.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1687970324/cpld.o.d" -o ${OBJECTDIR}/_ext/1687970324/cpld.o "../../../Board Support Package/cpld.c"  
	
${OBJECTDIR}/_ext/1687970324/drv_spi.o: ../../../Board\ Support\ Package/drv_spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/drv_spi.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1687970324/drv_spi.o.d" -o ${OBJECTDIR}/_ext/1687970324/drv_spi.o "../../../Board Support Package/drv_spi.c"  
	
${OBJECTDIR}/_ext/1860783399/TimeDelay.o: ../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1860783399 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d" -o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ../../../Microchip/Common/TimeDelay.c  
	
${OBJECTDIR}/_ext/1919882987/SSD1926.o: ../../../Microchip/Graphics/Drivers/SSD1926.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/SSD1926.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1919882987/SSD1926.o.d" -o ${OBJECTDIR}/_ext/1919882987/SSD1926.o ../../../Microchip/Graphics/Drivers/SSD1926.c  
	
${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o: ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d" -o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  
	
${OBJECTDIR}/_ext/1919882987/gfxepmp.o: ../../../Microchip/Graphics/Drivers/gfxepmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d" -o ${OBJECTDIR}/_ext/1919882987/gfxepmp.o ../../../Microchip/Graphics/Drivers/gfxepmp.c  
	
${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o: ../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d" -o ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o ../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  
	
${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o: ../../../Microchip/Graphics/Drivers/mchpGfxDrvBuffer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.d" -o ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o ../../../Microchip/Graphics/Drivers/mchpGfxDrvBuffer.c  
	
${OBJECTDIR}/_ext/1919882987/mchpGfxLCC.o: ../../../Microchip/Graphics/Drivers/mchpGfxLCC.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxLCC.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/mchpGfxLCC.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1919882987/mchpGfxLCC.o.d" -o ${OBJECTDIR}/_ext/1919882987/mchpGfxLCC.o ../../../Microchip/Graphics/Drivers/mchpGfxLCC.c  
	
${OBJECTDIR}/_ext/803622919/Button.o: ../../../Microchip/Graphics/Button.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Button.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Button.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/803622919/Button.o.d" -o ${OBJECTDIR}/_ext/803622919/Button.o ../../../Microchip/Graphics/Button.c  
	
${OBJECTDIR}/_ext/803622919/Chart.o: ../../../Microchip/Graphics/Chart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Chart.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Chart.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/803622919/Chart.o.d" -o ${OBJECTDIR}/_ext/803622919/Chart.o ../../../Microchip/Graphics/Chart.c  
	
${OBJECTDIR}/_ext/803622919/CheckBox.o: ../../../Microchip/Graphics/CheckBox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/CheckBox.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/CheckBox.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/803622919/CheckBox.o.d" -o ${OBJECTDIR}/_ext/803622919/CheckBox.o ../../../Microchip/Graphics/CheckBox.c  
	
${OBJECTDIR}/_ext/803622919/EditBox.o: ../../../Microchip/Graphics/EditBox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/EditBox.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/EditBox.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/803622919/EditBox.o.d" -o ${OBJECTDIR}/_ext/803622919/EditBox.o ../../../Microchip/Graphics/EditBox.c  
	
${OBJECTDIR}/_ext/803622919/GOL.o: ../../../Microchip/Graphics/GOL.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOL.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/GOL.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/803622919/GOL.o.d" -o ${OBJECTDIR}/_ext/803622919/GOL.o ../../../Microchip/Graphics/GOL.c  
	
${OBJECTDIR}/_ext/803622919/GOLFontDefault.o: ../../../Microchip/Graphics/GOLFontDefault.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d" -o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ../../../Microchip/Graphics/GOLFontDefault.c  
	
${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o: ../../../Microchip/Graphics/GOLSchemeDefault.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d" -o ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o ../../../Microchip/Graphics/GOLSchemeDefault.c  
	
${OBJECTDIR}/_ext/803622919/Grid.o: ../../../Microchip/Graphics/Grid.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Grid.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Grid.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/803622919/Grid.o.d" -o ${OBJECTDIR}/_ext/803622919/Grid.o ../../../Microchip/Graphics/Grid.c  
	
${OBJECTDIR}/_ext/803622919/GroupBox.o: ../../../Microchip/Graphics/GroupBox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/GroupBox.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/GroupBox.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/803622919/GroupBox.o.d" -o ${OBJECTDIR}/_ext/803622919/GroupBox.o ../../../Microchip/Graphics/GroupBox.c  
	
${OBJECTDIR}/_ext/803622919/ListBox.o: ../../../Microchip/Graphics/ListBox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/ListBox.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/ListBox.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/803622919/ListBox.o.d" -o ${OBJECTDIR}/_ext/803622919/ListBox.o ../../../Microchip/Graphics/ListBox.c  
	
${OBJECTDIR}/_ext/803622919/Meter.o: ../../../Microchip/Graphics/Meter.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Meter.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Meter.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/803622919/Meter.o.d" -o ${OBJECTDIR}/_ext/803622919/Meter.o ../../../Microchip/Graphics/Meter.c  
	
${OBJECTDIR}/_ext/803622919/Picture.o: ../../../Microchip/Graphics/Picture.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Picture.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Picture.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/803622919/Picture.o.d" -o ${OBJECTDIR}/_ext/803622919/Picture.o ../../../Microchip/Graphics/Picture.c  
	
${OBJECTDIR}/_ext/803622919/Primitive.o: ../../../Microchip/Graphics/Primitive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Primitive.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/803622919/Primitive.o.d" -o ${OBJECTDIR}/_ext/803622919/Primitive.o ../../../Microchip/Graphics/Primitive.c  
	
${OBJECTDIR}/_ext/803622919/RadioButton.o: ../../../Microchip/Graphics/RadioButton.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/RadioButton.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/RadioButton.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/803622919/RadioButton.o.d" -o ${OBJECTDIR}/_ext/803622919/RadioButton.o ../../../Microchip/Graphics/RadioButton.c  
	
${OBJECTDIR}/_ext/803622919/Slider.o: ../../../Microchip/Graphics/Slider.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Slider.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Slider.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/803622919/Slider.o.d" -o ${OBJECTDIR}/_ext/803622919/Slider.o ../../../Microchip/Graphics/Slider.c  
	
${OBJECTDIR}/_ext/803622919/StaticText.o: ../../../Microchip/Graphics/StaticText.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/StaticText.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/StaticText.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/803622919/StaticText.o.d" -o ${OBJECTDIR}/_ext/803622919/StaticText.o ../../../Microchip/Graphics/StaticText.c  
	
${OBJECTDIR}/_ext/803622919/Window.o: ../../../Microchip/Graphics/Window.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Window.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Window.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/803622919/Window.o.d" -o ${OBJECTDIR}/_ext/803622919/Window.o ../../../Microchip/Graphics/Window.c  
	
${OBJECTDIR}/_ext/1626048738/BmpDecoder.o: ../../../Microchip/Image\ Decoders/BmpDecoder.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	@${RM} ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d" -o ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o "../../../Microchip/Image Decoders/BmpDecoder.c"  
	
${OBJECTDIR}/_ext/1626048738/GifDecoder.o: ../../../Microchip/Image\ Decoders/GifDecoder.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	@${RM} ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1626048738/GifDecoder.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1626048738/GifDecoder.o.d" -o ${OBJECTDIR}/_ext/1626048738/GifDecoder.o "../../../Microchip/Image Decoders/GifDecoder.c"  
	
${OBJECTDIR}/_ext/1626048738/ImageDecoder.o: ../../../Microchip/Image\ Decoders/ImageDecoder.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	@${RM} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d" -o ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o "../../../Microchip/Image Decoders/ImageDecoder.c"  
	
${OBJECTDIR}/_ext/1626048738/JpegDecoder.o: ../../../Microchip/Image\ Decoders/JpegDecoder.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	@${RM} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d" -o ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o "../../../Microchip/Image Decoders/JpegDecoder.c"  
	
${OBJECTDIR}/_ext/1626048738/jidctint.o: ../../../Microchip/Image\ Decoders/jidctint.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	@${RM} ${OBJECTDIR}/_ext/1626048738/jidctint.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1626048738/jidctint.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1626048738/jidctint.o.d" -o ${OBJECTDIR}/_ext/1626048738/jidctint.o "../../../Microchip/Image Decoders/jidctint.c"  
	
${OBJECTDIR}/_ext/1788384718/FSIO.o: ../../../Microchip/MDD\ File\ System/FSIO.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1788384718 
	@${RM} ${OBJECTDIR}/_ext/1788384718/FSIO.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1788384718/FSIO.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1788384718/FSIO.o.d" -o ${OBJECTDIR}/_ext/1788384718/FSIO.o "../../../Microchip/MDD File System/FSIO.c"  
	
${OBJECTDIR}/_ext/549097302/usb_host.o: ../../../Microchip/USB/usb_host.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/549097302 
	@${RM} ${OBJECTDIR}/_ext/549097302/usb_host.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/549097302/usb_host.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/549097302/usb_host.o.d" -o ${OBJECTDIR}/_ext/549097302/usb_host.o ../../../Microchip/USB/usb_host.c  
	
${OBJECTDIR}/_ext/172487899/usb_host_msd.o: ../../../Microchip/USB/MSD\ Host\ Driver/usb_host_msd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/172487899 
	@${RM} ${OBJECTDIR}/_ext/172487899/usb_host_msd.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/172487899/usb_host_msd.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/172487899/usb_host_msd.o.d" -o ${OBJECTDIR}/_ext/172487899/usb_host_msd.o "../../../Microchip/USB/MSD Host Driver/usb_host_msd.c"  
	
${OBJECTDIR}/_ext/172487899/usb_host_msd_scsi.o: ../../../Microchip/USB/MSD\ Host\ Driver/usb_host_msd_scsi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/172487899 
	@${RM} ${OBJECTDIR}/_ext/172487899/usb_host_msd_scsi.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/172487899/usb_host_msd_scsi.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/172487899/usb_host_msd_scsi.o.d" -o ${OBJECTDIR}/_ext/172487899/usb_host_msd_scsi.o "../../../Microchip/USB/MSD Host Driver/usb_host_msd_scsi.c"  
	
${OBJECTDIR}/_ext/1472/Animation.o: ../Animation.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/Animation.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/Animation.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/Animation.o.d" -o ${OBJECTDIR}/_ext/1472/Animation.o ../Animation.c  
	
${OBJECTDIR}/_ext/1472/DemoSelection.o: ../DemoSelection.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/DemoSelection.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/DemoSelection.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/DemoSelection.o.d" -o ${OBJECTDIR}/_ext/1472/DemoSelection.o ../DemoSelection.c  
	
${OBJECTDIR}/_ext/1472/DemoSteps.o: ../DemoSteps.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/DemoSteps.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/DemoSteps.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/DemoSteps.o.d" -o ${OBJECTDIR}/_ext/1472/DemoSteps.o ../DemoSteps.c  
	
${OBJECTDIR}/_ext/1472/DrawTool.o: ../DrawTool.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/DrawTool.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/DrawTool.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/DrawTool.o.d" -o ${OBJECTDIR}/_ext/1472/DrawTool.o ../DrawTool.c  
	
${OBJECTDIR}/_ext/1472/ECG.o: ../ECG.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/ECG.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/ECG.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/ECG.o.d" -o ${OBJECTDIR}/_ext/1472/ECG.o ../ECG.c  
	
${OBJECTDIR}/_ext/1472/ECGBitmaps.o: ../ECGBitmaps.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/ECGBitmaps.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/ECGBitmaps.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/ECGBitmaps.o.d" -o ${OBJECTDIR}/_ext/1472/ECGBitmaps.o ../ECGBitmaps.c  
	
${OBJECTDIR}/_ext/1472/Games.o: ../Games.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/Games.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/Games.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/Games.o.d" -o ${OBJECTDIR}/_ext/1472/Games.o ../Games.c  
	
${OBJECTDIR}/_ext/1472/GraphShow.o: ../GraphShow.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/GraphShow.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/GraphShow.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/GraphShow.o.d" -o ${OBJECTDIR}/_ext/1472/GraphShow.o ../GraphShow.c  
	
${OBJECTDIR}/_ext/1472/InternalResourceC32.o: ../InternalResourceC32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/InternalResourceC32.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/InternalResourceC32.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/InternalResourceC32.o.d" -o ${OBJECTDIR}/_ext/1472/InternalResourceC32.o ../InternalResourceC32.c  
	
${OBJECTDIR}/_ext/1472/InternalResourceSet2C32.o: ../InternalResourceSet2C32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/InternalResourceSet2C32.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/InternalResourceSet2C32.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/InternalResourceSet2C32.o.d" -o ${OBJECTDIR}/_ext/1472/InternalResourceSet2C32.o ../InternalResourceSet2C32.c  
	
${OBJECTDIR}/_ext/1472/JPEGDemo.o: ../JPEGDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/JPEGDemo.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/JPEGDemo.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/JPEGDemo.o.d" -o ${OBJECTDIR}/_ext/1472/JPEGDemo.o ../JPEGDemo.c  
	
${OBJECTDIR}/_ext/1472/MainDemo.o: ../MainDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/MainDemo.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/MainDemo.o.d" -o ${OBJECTDIR}/_ext/1472/MainDemo.o ../MainDemo.c  
	
${OBJECTDIR}/_ext/1472/MultiFontsDemo.o: ../MultiFontsDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/MultiFontsDemo.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/MultiFontsDemo.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/MultiFontsDemo.o.d" -o ${OBJECTDIR}/_ext/1472/MultiFontsDemo.o ../MultiFontsDemo.c  
	
${OBJECTDIR}/_ext/1472/RGBDemo.o: ../RGBDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/RGBDemo.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/RGBDemo.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/RGBDemo.o.d" -o ${OBJECTDIR}/_ext/1472/RGBDemo.o ../RGBDemo.c  
	
${OBJECTDIR}/_ext/1472/SideButtons.o: ../SideButtons.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/SideButtons.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/SideButtons.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/SideButtons.o.d" -o ${OBJECTDIR}/_ext/1472/SideButtons.o ../SideButtons.c  
	
${OBJECTDIR}/_ext/1472/SlideShowDemo.o: ../SlideShowDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/SlideShowDemo.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/SlideShowDemo.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/SlideShowDemo.o.d" -o ${OBJECTDIR}/_ext/1472/SlideShowDemo.o ../SlideShowDemo.c  
	
${OBJECTDIR}/_ext/1472/TimeDateDemo.o: ../TimeDateDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/TimeDateDemo.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/TimeDateDemo.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/TimeDateDemo.o.d" -o ${OBJECTDIR}/_ext/1472/TimeDateDemo.o ../TimeDateDemo.c  
	
${OBJECTDIR}/_ext/1472/rtcc.o: ../rtcc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/rtcc.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/rtcc.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/rtcc.o.d" -o ${OBJECTDIR}/_ext/1472/rtcc.o ../rtcc.c  
	
${OBJECTDIR}/_ext/1472/usb_config.o: ../usb_config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/usb_config.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/usb_config.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC_SK_16PMP_USBMSD_QVGAv1 -I".." -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/usb_config.o.d" -o ${OBJECTDIR}/_ext/1472/usb_config.o ../usb_config.c  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_REAL_ICE=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}        -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_REAL_ICE=1,--defsym=_min_heap_size=3000,--defsym=_min_stack_size=2048,--report-mem "-mperipheral-libs" 
else
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}        -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=3000,--defsym=_min_stack_size=2048,--report-mem "-mperipheral-libs"
	${MP_CC_DIR}\\pic32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  
endif


# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf:
	${RM} -r build/PIC_SK_GFXv3_16PMP_QVGAv1_USBMSD
	${RM} -r dist/PIC_SK_GFXv3_16PMP_QVGAv1_USBMSD

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
