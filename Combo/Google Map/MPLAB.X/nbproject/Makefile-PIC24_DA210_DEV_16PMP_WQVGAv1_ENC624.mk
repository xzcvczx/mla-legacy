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
CND_CONF=PIC24_DA210_DEV_16PMP_WQVGAv1_ENC624
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
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1472/MainDemo.o ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o ${OBJECTDIR}/_ext/1954962658/Tick.o ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o ${OBJECTDIR}/_ext/1954962658/UART.o ${OBJECTDIR}/_ext/1954962658/UDP.o ${OBJECTDIR}/_ext/1954962658/Announce.o ${OBJECTDIR}/_ext/1954962658/ARP.o ${OBJECTDIR}/_ext/1954962658/DHCP.o ${OBJECTDIR}/_ext/1954962658/DHCPs.o ${OBJECTDIR}/_ext/1954962658/DNS.o ${OBJECTDIR}/_ext/1954962658/Hashes.o ${OBJECTDIR}/_ext/1954962658/Helpers.o ${OBJECTDIR}/_ext/1954962658/HTTP2.o ${OBJECTDIR}/_ext/1954962658/ICMP.o ${OBJECTDIR}/_ext/1954962658/IP.o ${OBJECTDIR}/_ext/1954962658/MPFS2.o ${OBJECTDIR}/_ext/1954962658/NBNS.o ${OBJECTDIR}/_ext/1954962658/Reboot.o ${OBJECTDIR}/_ext/1954962658/SNTP.o ${OBJECTDIR}/_ext/1954962658/SPIFlash.o ${OBJECTDIR}/_ext/1954962658/StackTsk.o ${OBJECTDIR}/_ext/1954962658/TCP.o ${OBJECTDIR}/_ext/1954962658/Telnet.o ${OBJECTDIR}/_ext/1472/UARTConfig.o ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o ${OBJECTDIR}/_ext/1954962658/ENC28J60.o ${OBJECTDIR}/_ext/1954962658/SSL.o ${OBJECTDIR}/_ext/1954962658/ARCFOUR.o ${OBJECTDIR}/_ext/1954962658/BigInt.o ${OBJECTDIR}/_ext/1954962658/Random.o ${OBJECTDIR}/_ext/1954962658/RSA.o ${OBJECTDIR}/_ext/1954962658/AutoIP.o ${OBJECTDIR}/_ext/1954962658/DNSs.o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ${OBJECTDIR}/_ext/803622919/Primitive.o ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o ${OBJECTDIR}/_ext/1626048738/jidctint.o ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o ${OBJECTDIR}/_ext/1472/GoogleStaticMapClient.o ${OBJECTDIR}/_ext/1472/SelectIcons.o ${OBJECTDIR}/_ext/1472/DemoSelection.o ${OBJECTDIR}/_ext/803622919/Button.o ${OBJECTDIR}/_ext/803622919/GOL.o ${OBJECTDIR}/_ext/1687970324/SST25VF016.o ${OBJECTDIR}/_ext/1472/SST39VF040.o ${OBJECTDIR}/_ext/1472/gmapImages.o ${OBJECTDIR}/_ext/1472/GoogleMapMenu.o ${OBJECTDIR}/_ext/803622919/Slider.o ${OBJECTDIR}/_ext/803622919/StaticText.o ${OBJECTDIR}/_ext/803622919/TextEntry.o ${OBJECTDIR}/_ext/1472/EDSMemCopy.o ${OBJECTDIR}/_ext/803622919/ListBox.o ${OBJECTDIR}/_ext/1472/JPEGImage.o ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o ${OBJECTDIR}/_ext/1687970324/drv_spi.o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o ${OBJECTDIR}/_ext/1687970324/TouchScreen.o ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o ${OBJECTDIR}/_ext/1472/InternalResourceC30.o ${OBJECTDIR}/_ext/1919882987/SSD1926.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1472/MainDemo.o.d ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d ${OBJECTDIR}/_ext/1954962658/Tick.o.d ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d ${OBJECTDIR}/_ext/1954962658/UART.o.d ${OBJECTDIR}/_ext/1954962658/UDP.o.d ${OBJECTDIR}/_ext/1954962658/Announce.o.d ${OBJECTDIR}/_ext/1954962658/ARP.o.d ${OBJECTDIR}/_ext/1954962658/DHCP.o.d ${OBJECTDIR}/_ext/1954962658/DHCPs.o.d ${OBJECTDIR}/_ext/1954962658/DNS.o.d ${OBJECTDIR}/_ext/1954962658/Hashes.o.d ${OBJECTDIR}/_ext/1954962658/Helpers.o.d ${OBJECTDIR}/_ext/1954962658/HTTP2.o.d ${OBJECTDIR}/_ext/1954962658/ICMP.o.d ${OBJECTDIR}/_ext/1954962658/IP.o.d ${OBJECTDIR}/_ext/1954962658/MPFS2.o.d ${OBJECTDIR}/_ext/1954962658/NBNS.o.d ${OBJECTDIR}/_ext/1954962658/Reboot.o.d ${OBJECTDIR}/_ext/1954962658/SNTP.o.d ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d ${OBJECTDIR}/_ext/1954962658/StackTsk.o.d ${OBJECTDIR}/_ext/1954962658/TCP.o.d ${OBJECTDIR}/_ext/1954962658/Telnet.o.d ${OBJECTDIR}/_ext/1472/UARTConfig.o.d ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d ${OBJECTDIR}/_ext/1954962658/SSL.o.d ${OBJECTDIR}/_ext/1954962658/ARCFOUR.o.d ${OBJECTDIR}/_ext/1954962658/BigInt.o.d ${OBJECTDIR}/_ext/1954962658/Random.o.d ${OBJECTDIR}/_ext/1954962658/RSA.o.d ${OBJECTDIR}/_ext/1954962658/AutoIP.o.d ${OBJECTDIR}/_ext/1954962658/DNSs.o.d ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d ${OBJECTDIR}/_ext/803622919/Primitive.o.d ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d ${OBJECTDIR}/_ext/1626048738/jidctint.o.d ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d ${OBJECTDIR}/_ext/1472/GoogleStaticMapClient.o.d ${OBJECTDIR}/_ext/1472/SelectIcons.o.d ${OBJECTDIR}/_ext/1472/DemoSelection.o.d ${OBJECTDIR}/_ext/803622919/Button.o.d ${OBJECTDIR}/_ext/803622919/GOL.o.d ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d ${OBJECTDIR}/_ext/1472/SST39VF040.o.d ${OBJECTDIR}/_ext/1472/gmapImages.o.d ${OBJECTDIR}/_ext/1472/GoogleMapMenu.o.d ${OBJECTDIR}/_ext/803622919/Slider.o.d ${OBJECTDIR}/_ext/803622919/StaticText.o.d ${OBJECTDIR}/_ext/803622919/TextEntry.o.d ${OBJECTDIR}/_ext/1472/EDSMemCopy.o.d ${OBJECTDIR}/_ext/803622919/ListBox.o.d ${OBJECTDIR}/_ext/1472/JPEGImage.o.d ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.d ${OBJECTDIR}/_ext/1472/InternalResourceC30.o.d ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1472/MainDemo.o ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o ${OBJECTDIR}/_ext/1954962658/Tick.o ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o ${OBJECTDIR}/_ext/1954962658/UART.o ${OBJECTDIR}/_ext/1954962658/UDP.o ${OBJECTDIR}/_ext/1954962658/Announce.o ${OBJECTDIR}/_ext/1954962658/ARP.o ${OBJECTDIR}/_ext/1954962658/DHCP.o ${OBJECTDIR}/_ext/1954962658/DHCPs.o ${OBJECTDIR}/_ext/1954962658/DNS.o ${OBJECTDIR}/_ext/1954962658/Hashes.o ${OBJECTDIR}/_ext/1954962658/Helpers.o ${OBJECTDIR}/_ext/1954962658/HTTP2.o ${OBJECTDIR}/_ext/1954962658/ICMP.o ${OBJECTDIR}/_ext/1954962658/IP.o ${OBJECTDIR}/_ext/1954962658/MPFS2.o ${OBJECTDIR}/_ext/1954962658/NBNS.o ${OBJECTDIR}/_ext/1954962658/Reboot.o ${OBJECTDIR}/_ext/1954962658/SNTP.o ${OBJECTDIR}/_ext/1954962658/SPIFlash.o ${OBJECTDIR}/_ext/1954962658/StackTsk.o ${OBJECTDIR}/_ext/1954962658/TCP.o ${OBJECTDIR}/_ext/1954962658/Telnet.o ${OBJECTDIR}/_ext/1472/UARTConfig.o ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o ${OBJECTDIR}/_ext/1954962658/ENC28J60.o ${OBJECTDIR}/_ext/1954962658/SSL.o ${OBJECTDIR}/_ext/1954962658/ARCFOUR.o ${OBJECTDIR}/_ext/1954962658/BigInt.o ${OBJECTDIR}/_ext/1954962658/Random.o ${OBJECTDIR}/_ext/1954962658/RSA.o ${OBJECTDIR}/_ext/1954962658/AutoIP.o ${OBJECTDIR}/_ext/1954962658/DNSs.o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ${OBJECTDIR}/_ext/803622919/Primitive.o ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o ${OBJECTDIR}/_ext/1626048738/jidctint.o ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o ${OBJECTDIR}/_ext/1472/GoogleStaticMapClient.o ${OBJECTDIR}/_ext/1472/SelectIcons.o ${OBJECTDIR}/_ext/1472/DemoSelection.o ${OBJECTDIR}/_ext/803622919/Button.o ${OBJECTDIR}/_ext/803622919/GOL.o ${OBJECTDIR}/_ext/1687970324/SST25VF016.o ${OBJECTDIR}/_ext/1472/SST39VF040.o ${OBJECTDIR}/_ext/1472/gmapImages.o ${OBJECTDIR}/_ext/1472/GoogleMapMenu.o ${OBJECTDIR}/_ext/803622919/Slider.o ${OBJECTDIR}/_ext/803622919/StaticText.o ${OBJECTDIR}/_ext/803622919/TextEntry.o ${OBJECTDIR}/_ext/1472/EDSMemCopy.o ${OBJECTDIR}/_ext/803622919/ListBox.o ${OBJECTDIR}/_ext/1472/JPEGImage.o ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o ${OBJECTDIR}/_ext/1687970324/drv_spi.o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o ${OBJECTDIR}/_ext/1687970324/TouchScreen.o ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o ${OBJECTDIR}/_ext/1472/InternalResourceC30.o ${OBJECTDIR}/_ext/1919882987/SSD1926.o


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
	${MAKE}  -f nbproject/Makefile-PIC24_DA210_DEV_16PMP_WQVGAv1_ENC624.mk dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ256DA210
MP_LINKER_FILE_OPTION=,-Tp24FJ256DA210.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1472/EDSMemCopy.o: ../EDSMemCopy.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/EDSMemCopy.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/EDSMemCopy.o.ok ${OBJECTDIR}/_ext/1472/EDSMemCopy.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/EDSMemCopy.o.d" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE)  ../EDSMemCopy.s -o ${OBJECTDIR}/_ext/1472/EDSMemCopy.o -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 --defsym=__MPLAB_DEBUG=1 --defsym=__ICD2RAM=1 --defsym=__DEBUG=1 --defsym=__MPLAB_DEBUGGER_REAL_ICE=1 -g  -MD "${OBJECTDIR}/_ext/1472/EDSMemCopy.o.d" --defsym=CFG_INCLUDE_DA210_BRD_ENC28=1 -I".." -g $(MP_EXTRA_AS_POST)
	
else
${OBJECTDIR}/_ext/1472/EDSMemCopy.o: ../EDSMemCopy.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/EDSMemCopy.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/EDSMemCopy.o.ok ${OBJECTDIR}/_ext/1472/EDSMemCopy.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/EDSMemCopy.o.d" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE)  ../EDSMemCopy.s -o ${OBJECTDIR}/_ext/1472/EDSMemCopy.o -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 -g  -MD "${OBJECTDIR}/_ext/1472/EDSMemCopy.o.d" --defsym=CFG_INCLUDE_DA210_BRD_ENC28=1 -I".." -g $(MP_EXTRA_AS_POST)
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1472/MainDemo.o: ../MainDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.ok ${OBJECTDIR}/_ext/1472/MainDemo.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/MainDemo.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/MainDemo.o.d" -o ${OBJECTDIR}/_ext/1472/MainDemo.o ../MainDemo.c  
	
${OBJECTDIR}/_ext/1472/CustomHTTPApp.o: ../CustomHTTPApp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.ok ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d" -o ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o ../CustomHTTPApp.c  
	
${OBJECTDIR}/_ext/1954962658/Tick.o: ../../../Microchip/TCPIP\ Stack/Tick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Tick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Tick.o.ok ${OBJECTDIR}/_ext/1954962658/Tick.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/Tick.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1954962658/Tick.o.d" -o ${OBJECTDIR}/_ext/1954962658/Tick.o "../../../Microchip/TCPIP Stack/Tick.c"  
	
${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o: ../../../Microchip/TCPIP\ Stack/UART2TCPBridge.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.ok ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d" -o ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o "../../../Microchip/TCPIP Stack/UART2TCPBridge.c"  
	
${OBJECTDIR}/_ext/1954962658/UART.o: ../../../Microchip/TCPIP\ Stack/UART.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UART.o.ok ${OBJECTDIR}/_ext/1954962658/UART.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/UART.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1954962658/UART.o.d" -o ${OBJECTDIR}/_ext/1954962658/UART.o "../../../Microchip/TCPIP Stack/UART.c"  
	
${OBJECTDIR}/_ext/1954962658/UDP.o: ../../../Microchip/TCPIP\ Stack/UDP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UDP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UDP.o.ok ${OBJECTDIR}/_ext/1954962658/UDP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/UDP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1954962658/UDP.o.d" -o ${OBJECTDIR}/_ext/1954962658/UDP.o "../../../Microchip/TCPIP Stack/UDP.c"  
	
${OBJECTDIR}/_ext/1954962658/Announce.o: ../../../Microchip/TCPIP\ Stack/Announce.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Announce.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Announce.o.ok ${OBJECTDIR}/_ext/1954962658/Announce.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/Announce.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1954962658/Announce.o.d" -o ${OBJECTDIR}/_ext/1954962658/Announce.o "../../../Microchip/TCPIP Stack/Announce.c"  
	
${OBJECTDIR}/_ext/1954962658/ARP.o: ../../../Microchip/TCPIP\ Stack/ARP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ARP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ARP.o.ok ${OBJECTDIR}/_ext/1954962658/ARP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/ARP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1954962658/ARP.o.d" -o ${OBJECTDIR}/_ext/1954962658/ARP.o "../../../Microchip/TCPIP Stack/ARP.c"  
	
${OBJECTDIR}/_ext/1954962658/DHCP.o: ../../../Microchip/TCPIP\ Stack/DHCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DHCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DHCP.o.ok ${OBJECTDIR}/_ext/1954962658/DHCP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/DHCP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1954962658/DHCP.o.d" -o ${OBJECTDIR}/_ext/1954962658/DHCP.o "../../../Microchip/TCPIP Stack/DHCP.c"  
	
${OBJECTDIR}/_ext/1954962658/DHCPs.o: ../../../Microchip/TCPIP\ Stack/DHCPs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DHCPs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DHCPs.o.ok ${OBJECTDIR}/_ext/1954962658/DHCPs.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/DHCPs.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1954962658/DHCPs.o.d" -o ${OBJECTDIR}/_ext/1954962658/DHCPs.o "../../../Microchip/TCPIP Stack/DHCPs.c"  
	
${OBJECTDIR}/_ext/1954962658/DNS.o: ../../../Microchip/TCPIP\ Stack/DNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DNS.o.ok ${OBJECTDIR}/_ext/1954962658/DNS.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/DNS.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1954962658/DNS.o.d" -o ${OBJECTDIR}/_ext/1954962658/DNS.o "../../../Microchip/TCPIP Stack/DNS.c"  
	
${OBJECTDIR}/_ext/1954962658/Hashes.o: ../../../Microchip/TCPIP\ Stack/Hashes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Hashes.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Hashes.o.ok ${OBJECTDIR}/_ext/1954962658/Hashes.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/Hashes.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1954962658/Hashes.o.d" -o ${OBJECTDIR}/_ext/1954962658/Hashes.o "../../../Microchip/TCPIP Stack/Hashes.c"  
	
${OBJECTDIR}/_ext/1954962658/Helpers.o: ../../../Microchip/TCPIP\ Stack/Helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Helpers.o.ok ${OBJECTDIR}/_ext/1954962658/Helpers.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/Helpers.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1954962658/Helpers.o.d" -o ${OBJECTDIR}/_ext/1954962658/Helpers.o "../../../Microchip/TCPIP Stack/Helpers.c"  
	
${OBJECTDIR}/_ext/1954962658/HTTP2.o: ../../../Microchip/TCPIP\ Stack/HTTP2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/HTTP2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/HTTP2.o.ok ${OBJECTDIR}/_ext/1954962658/HTTP2.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/HTTP2.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1954962658/HTTP2.o.d" -o ${OBJECTDIR}/_ext/1954962658/HTTP2.o "../../../Microchip/TCPIP Stack/HTTP2.c"  
	
${OBJECTDIR}/_ext/1954962658/ICMP.o: ../../../Microchip/TCPIP\ Stack/ICMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ICMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ICMP.o.ok ${OBJECTDIR}/_ext/1954962658/ICMP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/ICMP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1954962658/ICMP.o.d" -o ${OBJECTDIR}/_ext/1954962658/ICMP.o "../../../Microchip/TCPIP Stack/ICMP.c"  
	
${OBJECTDIR}/_ext/1954962658/IP.o: ../../../Microchip/TCPIP\ Stack/IP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/IP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/IP.o.ok ${OBJECTDIR}/_ext/1954962658/IP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/IP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1954962658/IP.o.d" -o ${OBJECTDIR}/_ext/1954962658/IP.o "../../../Microchip/TCPIP Stack/IP.c"  
	
${OBJECTDIR}/_ext/1954962658/MPFS2.o: ../../../Microchip/TCPIP\ Stack/MPFS2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/MPFS2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/MPFS2.o.ok ${OBJECTDIR}/_ext/1954962658/MPFS2.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/MPFS2.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1954962658/MPFS2.o.d" -o ${OBJECTDIR}/_ext/1954962658/MPFS2.o "../../../Microchip/TCPIP Stack/MPFS2.c"  
	
${OBJECTDIR}/_ext/1954962658/NBNS.o: ../../../Microchip/TCPIP\ Stack/NBNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/NBNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/NBNS.o.ok ${OBJECTDIR}/_ext/1954962658/NBNS.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/NBNS.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1954962658/NBNS.o.d" -o ${OBJECTDIR}/_ext/1954962658/NBNS.o "../../../Microchip/TCPIP Stack/NBNS.c"  
	
${OBJECTDIR}/_ext/1954962658/Reboot.o: ../../../Microchip/TCPIP\ Stack/Reboot.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Reboot.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Reboot.o.ok ${OBJECTDIR}/_ext/1954962658/Reboot.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/Reboot.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1954962658/Reboot.o.d" -o ${OBJECTDIR}/_ext/1954962658/Reboot.o "../../../Microchip/TCPIP Stack/Reboot.c"  
	
${OBJECTDIR}/_ext/1954962658/SNTP.o: ../../../Microchip/TCPIP\ Stack/SNTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNTP.o.ok ${OBJECTDIR}/_ext/1954962658/SNTP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/SNTP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1954962658/SNTP.o.d" -o ${OBJECTDIR}/_ext/1954962658/SNTP.o "../../../Microchip/TCPIP Stack/SNTP.c"  
	
${OBJECTDIR}/_ext/1954962658/SPIFlash.o: ../../../Microchip/TCPIP\ Stack/SPIFlash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.ok ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d" -o ${OBJECTDIR}/_ext/1954962658/SPIFlash.o "../../../Microchip/TCPIP Stack/SPIFlash.c"  
	
${OBJECTDIR}/_ext/1954962658/StackTsk.o: ../../../Microchip/TCPIP\ Stack/StackTsk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/StackTsk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/StackTsk.o.ok ${OBJECTDIR}/_ext/1954962658/StackTsk.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/StackTsk.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1954962658/StackTsk.o.d" -o ${OBJECTDIR}/_ext/1954962658/StackTsk.o "../../../Microchip/TCPIP Stack/StackTsk.c"  
	
${OBJECTDIR}/_ext/1954962658/TCP.o: ../../../Microchip/TCPIP\ Stack/TCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TCP.o.ok ${OBJECTDIR}/_ext/1954962658/TCP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/TCP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1954962658/TCP.o.d" -o ${OBJECTDIR}/_ext/1954962658/TCP.o "../../../Microchip/TCPIP Stack/TCP.c"  
	
${OBJECTDIR}/_ext/1954962658/Telnet.o: ../../../Microchip/TCPIP\ Stack/Telnet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Telnet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Telnet.o.ok ${OBJECTDIR}/_ext/1954962658/Telnet.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/Telnet.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1954962658/Telnet.o.d" -o ${OBJECTDIR}/_ext/1954962658/Telnet.o "../../../Microchip/TCPIP Stack/Telnet.c"  
	
${OBJECTDIR}/_ext/1472/UARTConfig.o: ../UARTConfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o.ok ${OBJECTDIR}/_ext/1472/UARTConfig.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/UARTConfig.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/UARTConfig.o.d" -o ${OBJECTDIR}/_ext/1472/UARTConfig.o ../UARTConfig.c  
	
${OBJECTDIR}/_ext/1954962658/ENCX24J600.o: ../../../Microchip/TCPIP\ Stack/ENCX24J600.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.ok ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d" -o ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o "../../../Microchip/TCPIP Stack/ENCX24J600.c"  
	
${OBJECTDIR}/_ext/1954962658/ENC28J60.o: ../../../Microchip/TCPIP\ Stack/ENC28J60.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.ok ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d" -o ${OBJECTDIR}/_ext/1954962658/ENC28J60.o "../../../Microchip/TCPIP Stack/ENC28J60.c"  
	
${OBJECTDIR}/_ext/1954962658/SSL.o: ../../../Microchip/TCPIP\ Stack/SSL.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SSL.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SSL.o.ok ${OBJECTDIR}/_ext/1954962658/SSL.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/SSL.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1954962658/SSL.o.d" -o ${OBJECTDIR}/_ext/1954962658/SSL.o "../../../Microchip/TCPIP Stack/SSL.c"  
	
${OBJECTDIR}/_ext/1954962658/ARCFOUR.o: ../../../Microchip/TCPIP\ Stack/ARCFOUR.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ARCFOUR.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ARCFOUR.o.ok ${OBJECTDIR}/_ext/1954962658/ARCFOUR.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/ARCFOUR.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1954962658/ARCFOUR.o.d" -o ${OBJECTDIR}/_ext/1954962658/ARCFOUR.o "../../../Microchip/TCPIP Stack/ARCFOUR.c"  
	
${OBJECTDIR}/_ext/1954962658/BigInt.o: ../../../Microchip/TCPIP\ Stack/BigInt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/BigInt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/BigInt.o.ok ${OBJECTDIR}/_ext/1954962658/BigInt.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/BigInt.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1954962658/BigInt.o.d" -o ${OBJECTDIR}/_ext/1954962658/BigInt.o "../../../Microchip/TCPIP Stack/BigInt.c"  
	
${OBJECTDIR}/_ext/1954962658/Random.o: ../../../Microchip/TCPIP\ Stack/Random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Random.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Random.o.ok ${OBJECTDIR}/_ext/1954962658/Random.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/Random.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1954962658/Random.o.d" -o ${OBJECTDIR}/_ext/1954962658/Random.o "../../../Microchip/TCPIP Stack/Random.c"  
	
${OBJECTDIR}/_ext/1954962658/RSA.o: ../../../Microchip/TCPIP\ Stack/RSA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/RSA.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/RSA.o.ok ${OBJECTDIR}/_ext/1954962658/RSA.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/RSA.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1954962658/RSA.o.d" -o ${OBJECTDIR}/_ext/1954962658/RSA.o "../../../Microchip/TCPIP Stack/RSA.c"  
	
${OBJECTDIR}/_ext/1954962658/AutoIP.o: ../../../Microchip/TCPIP\ Stack/AutoIP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/AutoIP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/AutoIP.o.ok ${OBJECTDIR}/_ext/1954962658/AutoIP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/AutoIP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1954962658/AutoIP.o.d" -o ${OBJECTDIR}/_ext/1954962658/AutoIP.o "../../../Microchip/TCPIP Stack/AutoIP.c"  
	
${OBJECTDIR}/_ext/1954962658/DNSs.o: ../../../Microchip/TCPIP\ Stack/DNSs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DNSs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DNSs.o.ok ${OBJECTDIR}/_ext/1954962658/DNSs.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/DNSs.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1954962658/DNSs.o.d" -o ${OBJECTDIR}/_ext/1954962658/DNSs.o "../../../Microchip/TCPIP Stack/DNSs.c"  
	
${OBJECTDIR}/_ext/1860783399/TimeDelay.o: ../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1860783399 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.ok ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d" -o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ../../../Microchip/Common/TimeDelay.c  
	
${OBJECTDIR}/_ext/803622919/GOLFontDefault.o: ../../../Microchip/Graphics/GOLFontDefault.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.ok ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d" -o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ../../../Microchip/Graphics/GOLFontDefault.c  
	
${OBJECTDIR}/_ext/803622919/Primitive.o: ../../../Microchip/Graphics/Primitive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.ok ${OBJECTDIR}/_ext/803622919/Primitive.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Primitive.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/Primitive.o.d" -o ${OBJECTDIR}/_ext/803622919/Primitive.o ../../../Microchip/Graphics/Primitive.c  
	
${OBJECTDIR}/_ext/1626048738/ImageDecoder.o: ../../../Microchip/Image\ Decoders/ImageDecoder.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	@${RM} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.ok ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d" -o ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o "../../../Microchip/Image Decoders/ImageDecoder.c"  
	
${OBJECTDIR}/_ext/1626048738/jidctint.o: ../../../Microchip/Image\ Decoders/jidctint.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	@${RM} ${OBJECTDIR}/_ext/1626048738/jidctint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/jidctint.o.ok ${OBJECTDIR}/_ext/1626048738/jidctint.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1626048738/jidctint.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1626048738/jidctint.o.d" -o ${OBJECTDIR}/_ext/1626048738/jidctint.o "../../../Microchip/Image Decoders/jidctint.c"  
	
${OBJECTDIR}/_ext/1626048738/JpegDecoder.o: ../../../Microchip/Image\ Decoders/JpegDecoder.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	@${RM} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.ok ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d" -o ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o "../../../Microchip/Image Decoders/JpegDecoder.c"  
	
${OBJECTDIR}/_ext/1472/GoogleStaticMapClient.o: ../GoogleStaticMapClient.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/GoogleStaticMapClient.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/GoogleStaticMapClient.o.ok ${OBJECTDIR}/_ext/1472/GoogleStaticMapClient.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/GoogleStaticMapClient.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/GoogleStaticMapClient.o.d" -o ${OBJECTDIR}/_ext/1472/GoogleStaticMapClient.o ../GoogleStaticMapClient.c  
	
${OBJECTDIR}/_ext/1472/SelectIcons.o: ../SelectIcons.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/SelectIcons.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/SelectIcons.o.ok ${OBJECTDIR}/_ext/1472/SelectIcons.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/SelectIcons.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/SelectIcons.o.d" -o ${OBJECTDIR}/_ext/1472/SelectIcons.o ../SelectIcons.c  
	
${OBJECTDIR}/_ext/1472/DemoSelection.o: ../DemoSelection.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/DemoSelection.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/DemoSelection.o.ok ${OBJECTDIR}/_ext/1472/DemoSelection.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/DemoSelection.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/DemoSelection.o.d" -o ${OBJECTDIR}/_ext/1472/DemoSelection.o ../DemoSelection.c  
	
${OBJECTDIR}/_ext/803622919/Button.o: ../../../Microchip/Graphics/Button.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Button.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Button.o.ok ${OBJECTDIR}/_ext/803622919/Button.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Button.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/Button.o.d" -o ${OBJECTDIR}/_ext/803622919/Button.o ../../../Microchip/Graphics/Button.c  
	
${OBJECTDIR}/_ext/803622919/GOL.o: ../../../Microchip/Graphics/GOL.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOL.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOL.o.ok ${OBJECTDIR}/_ext/803622919/GOL.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/GOL.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/GOL.o.d" -o ${OBJECTDIR}/_ext/803622919/GOL.o ../../../Microchip/Graphics/GOL.c  
	
${OBJECTDIR}/_ext/1687970324/SST25VF016.o: ../../../Board\ Support\ Package/SST25VF016.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.ok ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d" -o ${OBJECTDIR}/_ext/1687970324/SST25VF016.o "../../../Board Support Package/SST25VF016.c"  
	
${OBJECTDIR}/_ext/1472/SST39VF040.o: ../SST39VF040.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/SST39VF040.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/SST39VF040.o.ok ${OBJECTDIR}/_ext/1472/SST39VF040.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/SST39VF040.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/SST39VF040.o.d" -o ${OBJECTDIR}/_ext/1472/SST39VF040.o ../SST39VF040.c  
	
${OBJECTDIR}/_ext/1472/gmapImages.o: ../gmapImages.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/gmapImages.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/gmapImages.o.ok ${OBJECTDIR}/_ext/1472/gmapImages.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/gmapImages.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/gmapImages.o.d" -o ${OBJECTDIR}/_ext/1472/gmapImages.o ../gmapImages.c  
	
${OBJECTDIR}/_ext/1472/GoogleMapMenu.o: ../GoogleMapMenu.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/GoogleMapMenu.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/GoogleMapMenu.o.ok ${OBJECTDIR}/_ext/1472/GoogleMapMenu.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/GoogleMapMenu.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/GoogleMapMenu.o.d" -o ${OBJECTDIR}/_ext/1472/GoogleMapMenu.o ../GoogleMapMenu.c  
	
${OBJECTDIR}/_ext/803622919/Slider.o: ../../../Microchip/Graphics/Slider.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Slider.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Slider.o.ok ${OBJECTDIR}/_ext/803622919/Slider.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Slider.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/Slider.o.d" -o ${OBJECTDIR}/_ext/803622919/Slider.o ../../../Microchip/Graphics/Slider.c  
	
${OBJECTDIR}/_ext/803622919/StaticText.o: ../../../Microchip/Graphics/StaticText.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/StaticText.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/StaticText.o.ok ${OBJECTDIR}/_ext/803622919/StaticText.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/StaticText.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/StaticText.o.d" -o ${OBJECTDIR}/_ext/803622919/StaticText.o ../../../Microchip/Graphics/StaticText.c  
	
${OBJECTDIR}/_ext/803622919/TextEntry.o: ../../../Microchip/Graphics/TextEntry.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/TextEntry.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/TextEntry.o.ok ${OBJECTDIR}/_ext/803622919/TextEntry.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/TextEntry.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/TextEntry.o.d" -o ${OBJECTDIR}/_ext/803622919/TextEntry.o ../../../Microchip/Graphics/TextEntry.c  
	
${OBJECTDIR}/_ext/803622919/ListBox.o: ../../../Microchip/Graphics/ListBox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/ListBox.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/ListBox.o.ok ${OBJECTDIR}/_ext/803622919/ListBox.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/ListBox.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/ListBox.o.d" -o ${OBJECTDIR}/_ext/803622919/ListBox.o ../../../Microchip/Graphics/ListBox.c  
	
${OBJECTDIR}/_ext/1472/JPEGImage.o: ../JPEGImage.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/JPEGImage.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/JPEGImage.o.ok ${OBJECTDIR}/_ext/1472/JPEGImage.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/JPEGImage.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/JPEGImage.o.d" -o ${OBJECTDIR}/_ext/1472/JPEGImage.o ../JPEGImage.c  
	
${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o: ../../../Board\ Support\ Package/TouchScreenResistive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.ok ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d" -o ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o "../../../Board Support Package/TouchScreenResistive.c"  
	
${OBJECTDIR}/_ext/1687970324/drv_spi.o: ../../../Board\ Support\ Package/drv_spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.ok ${OBJECTDIR}/_ext/1687970324/drv_spi.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/drv_spi.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1687970324/drv_spi.o.d" -o ${OBJECTDIR}/_ext/1687970324/drv_spi.o "../../../Board Support Package/drv_spi.c"  
	
${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o: ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.ok ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d" -o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  
	
${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o: ../../../Microchip/Graphics/GOLSchemeDefault.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.ok ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d" -o ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o ../../../Microchip/Graphics/GOLSchemeDefault.c  
	
${OBJECTDIR}/_ext/1687970324/TouchScreen.o: ../../../Board\ Support\ Package/TouchScreen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.ok ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d" -o ${OBJECTDIR}/_ext/1687970324/TouchScreen.o "../../../Board Support Package/TouchScreen.c"  
	
${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o: ../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.ok ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d" -o ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o ../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  
	
${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o: ../../../Microchip/Graphics/Drivers/mchpGfxDrvBuffer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.ok ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -mlarge-arrays -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -MMD -MF "${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.d" -o ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o ../../../Microchip/Graphics/Drivers/mchpGfxDrvBuffer.c  
	
${OBJECTDIR}/_ext/1472/InternalResourceC30.o: ../InternalResourceC30.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/InternalResourceC30.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/InternalResourceC30.o.ok ${OBJECTDIR}/_ext/1472/InternalResourceC30.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/InternalResourceC30.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/InternalResourceC30.o.d" -o ${OBJECTDIR}/_ext/1472/InternalResourceC30.o ../InternalResourceC30.c  
	
${OBJECTDIR}/_ext/1919882987/SSD1926.o: ../../../Microchip/Graphics/Drivers/SSD1926.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.ok ${OBJECTDIR}/_ext/1919882987/SSD1926.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/SSD1926.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/SSD1926.o.d" -o ${OBJECTDIR}/_ext/1919882987/SSD1926.o ../../../Microchip/Graphics/Drivers/SSD1926.c  
	
else
${OBJECTDIR}/_ext/1472/MainDemo.o: ../MainDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.ok ${OBJECTDIR}/_ext/1472/MainDemo.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/MainDemo.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/MainDemo.o.d" -o ${OBJECTDIR}/_ext/1472/MainDemo.o ../MainDemo.c  
	
${OBJECTDIR}/_ext/1472/CustomHTTPApp.o: ../CustomHTTPApp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.ok ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d" -o ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o ../CustomHTTPApp.c  
	
${OBJECTDIR}/_ext/1954962658/Tick.o: ../../../Microchip/TCPIP\ Stack/Tick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Tick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Tick.o.ok ${OBJECTDIR}/_ext/1954962658/Tick.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/Tick.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1954962658/Tick.o.d" -o ${OBJECTDIR}/_ext/1954962658/Tick.o "../../../Microchip/TCPIP Stack/Tick.c"  
	
${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o: ../../../Microchip/TCPIP\ Stack/UART2TCPBridge.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.ok ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d" -o ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o "../../../Microchip/TCPIP Stack/UART2TCPBridge.c"  
	
${OBJECTDIR}/_ext/1954962658/UART.o: ../../../Microchip/TCPIP\ Stack/UART.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UART.o.ok ${OBJECTDIR}/_ext/1954962658/UART.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/UART.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1954962658/UART.o.d" -o ${OBJECTDIR}/_ext/1954962658/UART.o "../../../Microchip/TCPIP Stack/UART.c"  
	
${OBJECTDIR}/_ext/1954962658/UDP.o: ../../../Microchip/TCPIP\ Stack/UDP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UDP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UDP.o.ok ${OBJECTDIR}/_ext/1954962658/UDP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/UDP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1954962658/UDP.o.d" -o ${OBJECTDIR}/_ext/1954962658/UDP.o "../../../Microchip/TCPIP Stack/UDP.c"  
	
${OBJECTDIR}/_ext/1954962658/Announce.o: ../../../Microchip/TCPIP\ Stack/Announce.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Announce.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Announce.o.ok ${OBJECTDIR}/_ext/1954962658/Announce.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/Announce.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1954962658/Announce.o.d" -o ${OBJECTDIR}/_ext/1954962658/Announce.o "../../../Microchip/TCPIP Stack/Announce.c"  
	
${OBJECTDIR}/_ext/1954962658/ARP.o: ../../../Microchip/TCPIP\ Stack/ARP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ARP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ARP.o.ok ${OBJECTDIR}/_ext/1954962658/ARP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/ARP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1954962658/ARP.o.d" -o ${OBJECTDIR}/_ext/1954962658/ARP.o "../../../Microchip/TCPIP Stack/ARP.c"  
	
${OBJECTDIR}/_ext/1954962658/DHCP.o: ../../../Microchip/TCPIP\ Stack/DHCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DHCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DHCP.o.ok ${OBJECTDIR}/_ext/1954962658/DHCP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/DHCP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1954962658/DHCP.o.d" -o ${OBJECTDIR}/_ext/1954962658/DHCP.o "../../../Microchip/TCPIP Stack/DHCP.c"  
	
${OBJECTDIR}/_ext/1954962658/DHCPs.o: ../../../Microchip/TCPIP\ Stack/DHCPs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DHCPs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DHCPs.o.ok ${OBJECTDIR}/_ext/1954962658/DHCPs.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/DHCPs.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1954962658/DHCPs.o.d" -o ${OBJECTDIR}/_ext/1954962658/DHCPs.o "../../../Microchip/TCPIP Stack/DHCPs.c"  
	
${OBJECTDIR}/_ext/1954962658/DNS.o: ../../../Microchip/TCPIP\ Stack/DNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DNS.o.ok ${OBJECTDIR}/_ext/1954962658/DNS.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/DNS.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1954962658/DNS.o.d" -o ${OBJECTDIR}/_ext/1954962658/DNS.o "../../../Microchip/TCPIP Stack/DNS.c"  
	
${OBJECTDIR}/_ext/1954962658/Hashes.o: ../../../Microchip/TCPIP\ Stack/Hashes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Hashes.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Hashes.o.ok ${OBJECTDIR}/_ext/1954962658/Hashes.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/Hashes.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1954962658/Hashes.o.d" -o ${OBJECTDIR}/_ext/1954962658/Hashes.o "../../../Microchip/TCPIP Stack/Hashes.c"  
	
${OBJECTDIR}/_ext/1954962658/Helpers.o: ../../../Microchip/TCPIP\ Stack/Helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Helpers.o.ok ${OBJECTDIR}/_ext/1954962658/Helpers.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/Helpers.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1954962658/Helpers.o.d" -o ${OBJECTDIR}/_ext/1954962658/Helpers.o "../../../Microchip/TCPIP Stack/Helpers.c"  
	
${OBJECTDIR}/_ext/1954962658/HTTP2.o: ../../../Microchip/TCPIP\ Stack/HTTP2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/HTTP2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/HTTP2.o.ok ${OBJECTDIR}/_ext/1954962658/HTTP2.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/HTTP2.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1954962658/HTTP2.o.d" -o ${OBJECTDIR}/_ext/1954962658/HTTP2.o "../../../Microchip/TCPIP Stack/HTTP2.c"  
	
${OBJECTDIR}/_ext/1954962658/ICMP.o: ../../../Microchip/TCPIP\ Stack/ICMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ICMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ICMP.o.ok ${OBJECTDIR}/_ext/1954962658/ICMP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/ICMP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1954962658/ICMP.o.d" -o ${OBJECTDIR}/_ext/1954962658/ICMP.o "../../../Microchip/TCPIP Stack/ICMP.c"  
	
${OBJECTDIR}/_ext/1954962658/IP.o: ../../../Microchip/TCPIP\ Stack/IP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/IP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/IP.o.ok ${OBJECTDIR}/_ext/1954962658/IP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/IP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1954962658/IP.o.d" -o ${OBJECTDIR}/_ext/1954962658/IP.o "../../../Microchip/TCPIP Stack/IP.c"  
	
${OBJECTDIR}/_ext/1954962658/MPFS2.o: ../../../Microchip/TCPIP\ Stack/MPFS2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/MPFS2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/MPFS2.o.ok ${OBJECTDIR}/_ext/1954962658/MPFS2.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/MPFS2.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1954962658/MPFS2.o.d" -o ${OBJECTDIR}/_ext/1954962658/MPFS2.o "../../../Microchip/TCPIP Stack/MPFS2.c"  
	
${OBJECTDIR}/_ext/1954962658/NBNS.o: ../../../Microchip/TCPIP\ Stack/NBNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/NBNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/NBNS.o.ok ${OBJECTDIR}/_ext/1954962658/NBNS.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/NBNS.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1954962658/NBNS.o.d" -o ${OBJECTDIR}/_ext/1954962658/NBNS.o "../../../Microchip/TCPIP Stack/NBNS.c"  
	
${OBJECTDIR}/_ext/1954962658/Reboot.o: ../../../Microchip/TCPIP\ Stack/Reboot.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Reboot.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Reboot.o.ok ${OBJECTDIR}/_ext/1954962658/Reboot.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/Reboot.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1954962658/Reboot.o.d" -o ${OBJECTDIR}/_ext/1954962658/Reboot.o "../../../Microchip/TCPIP Stack/Reboot.c"  
	
${OBJECTDIR}/_ext/1954962658/SNTP.o: ../../../Microchip/TCPIP\ Stack/SNTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNTP.o.ok ${OBJECTDIR}/_ext/1954962658/SNTP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/SNTP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1954962658/SNTP.o.d" -o ${OBJECTDIR}/_ext/1954962658/SNTP.o "../../../Microchip/TCPIP Stack/SNTP.c"  
	
${OBJECTDIR}/_ext/1954962658/SPIFlash.o: ../../../Microchip/TCPIP\ Stack/SPIFlash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.ok ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d" -o ${OBJECTDIR}/_ext/1954962658/SPIFlash.o "../../../Microchip/TCPIP Stack/SPIFlash.c"  
	
${OBJECTDIR}/_ext/1954962658/StackTsk.o: ../../../Microchip/TCPIP\ Stack/StackTsk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/StackTsk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/StackTsk.o.ok ${OBJECTDIR}/_ext/1954962658/StackTsk.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/StackTsk.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1954962658/StackTsk.o.d" -o ${OBJECTDIR}/_ext/1954962658/StackTsk.o "../../../Microchip/TCPIP Stack/StackTsk.c"  
	
${OBJECTDIR}/_ext/1954962658/TCP.o: ../../../Microchip/TCPIP\ Stack/TCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TCP.o.ok ${OBJECTDIR}/_ext/1954962658/TCP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/TCP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1954962658/TCP.o.d" -o ${OBJECTDIR}/_ext/1954962658/TCP.o "../../../Microchip/TCPIP Stack/TCP.c"  
	
${OBJECTDIR}/_ext/1954962658/Telnet.o: ../../../Microchip/TCPIP\ Stack/Telnet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Telnet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Telnet.o.ok ${OBJECTDIR}/_ext/1954962658/Telnet.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/Telnet.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1954962658/Telnet.o.d" -o ${OBJECTDIR}/_ext/1954962658/Telnet.o "../../../Microchip/TCPIP Stack/Telnet.c"  
	
${OBJECTDIR}/_ext/1472/UARTConfig.o: ../UARTConfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o.ok ${OBJECTDIR}/_ext/1472/UARTConfig.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/UARTConfig.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/UARTConfig.o.d" -o ${OBJECTDIR}/_ext/1472/UARTConfig.o ../UARTConfig.c  
	
${OBJECTDIR}/_ext/1954962658/ENCX24J600.o: ../../../Microchip/TCPIP\ Stack/ENCX24J600.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.ok ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d" -o ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o "../../../Microchip/TCPIP Stack/ENCX24J600.c"  
	
${OBJECTDIR}/_ext/1954962658/ENC28J60.o: ../../../Microchip/TCPIP\ Stack/ENC28J60.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.ok ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d" -o ${OBJECTDIR}/_ext/1954962658/ENC28J60.o "../../../Microchip/TCPIP Stack/ENC28J60.c"  
	
${OBJECTDIR}/_ext/1954962658/SSL.o: ../../../Microchip/TCPIP\ Stack/SSL.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SSL.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SSL.o.ok ${OBJECTDIR}/_ext/1954962658/SSL.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/SSL.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1954962658/SSL.o.d" -o ${OBJECTDIR}/_ext/1954962658/SSL.o "../../../Microchip/TCPIP Stack/SSL.c"  
	
${OBJECTDIR}/_ext/1954962658/ARCFOUR.o: ../../../Microchip/TCPIP\ Stack/ARCFOUR.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ARCFOUR.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ARCFOUR.o.ok ${OBJECTDIR}/_ext/1954962658/ARCFOUR.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/ARCFOUR.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1954962658/ARCFOUR.o.d" -o ${OBJECTDIR}/_ext/1954962658/ARCFOUR.o "../../../Microchip/TCPIP Stack/ARCFOUR.c"  
	
${OBJECTDIR}/_ext/1954962658/BigInt.o: ../../../Microchip/TCPIP\ Stack/BigInt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/BigInt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/BigInt.o.ok ${OBJECTDIR}/_ext/1954962658/BigInt.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/BigInt.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1954962658/BigInt.o.d" -o ${OBJECTDIR}/_ext/1954962658/BigInt.o "../../../Microchip/TCPIP Stack/BigInt.c"  
	
${OBJECTDIR}/_ext/1954962658/Random.o: ../../../Microchip/TCPIP\ Stack/Random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Random.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Random.o.ok ${OBJECTDIR}/_ext/1954962658/Random.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/Random.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1954962658/Random.o.d" -o ${OBJECTDIR}/_ext/1954962658/Random.o "../../../Microchip/TCPIP Stack/Random.c"  
	
${OBJECTDIR}/_ext/1954962658/RSA.o: ../../../Microchip/TCPIP\ Stack/RSA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/RSA.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/RSA.o.ok ${OBJECTDIR}/_ext/1954962658/RSA.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/RSA.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1954962658/RSA.o.d" -o ${OBJECTDIR}/_ext/1954962658/RSA.o "../../../Microchip/TCPIP Stack/RSA.c"  
	
${OBJECTDIR}/_ext/1954962658/AutoIP.o: ../../../Microchip/TCPIP\ Stack/AutoIP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/AutoIP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/AutoIP.o.ok ${OBJECTDIR}/_ext/1954962658/AutoIP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/AutoIP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1954962658/AutoIP.o.d" -o ${OBJECTDIR}/_ext/1954962658/AutoIP.o "../../../Microchip/TCPIP Stack/AutoIP.c"  
	
${OBJECTDIR}/_ext/1954962658/DNSs.o: ../../../Microchip/TCPIP\ Stack/DNSs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DNSs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DNSs.o.ok ${OBJECTDIR}/_ext/1954962658/DNSs.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/DNSs.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1954962658/DNSs.o.d" -o ${OBJECTDIR}/_ext/1954962658/DNSs.o "../../../Microchip/TCPIP Stack/DNSs.c"  
	
${OBJECTDIR}/_ext/1860783399/TimeDelay.o: ../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1860783399 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.ok ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d" -o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ../../../Microchip/Common/TimeDelay.c  
	
${OBJECTDIR}/_ext/803622919/GOLFontDefault.o: ../../../Microchip/Graphics/GOLFontDefault.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.ok ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d" -o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ../../../Microchip/Graphics/GOLFontDefault.c  
	
${OBJECTDIR}/_ext/803622919/Primitive.o: ../../../Microchip/Graphics/Primitive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.ok ${OBJECTDIR}/_ext/803622919/Primitive.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Primitive.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/Primitive.o.d" -o ${OBJECTDIR}/_ext/803622919/Primitive.o ../../../Microchip/Graphics/Primitive.c  
	
${OBJECTDIR}/_ext/1626048738/ImageDecoder.o: ../../../Microchip/Image\ Decoders/ImageDecoder.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	@${RM} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.ok ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d" -o ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o "../../../Microchip/Image Decoders/ImageDecoder.c"  
	
${OBJECTDIR}/_ext/1626048738/jidctint.o: ../../../Microchip/Image\ Decoders/jidctint.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	@${RM} ${OBJECTDIR}/_ext/1626048738/jidctint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/jidctint.o.ok ${OBJECTDIR}/_ext/1626048738/jidctint.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1626048738/jidctint.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1626048738/jidctint.o.d" -o ${OBJECTDIR}/_ext/1626048738/jidctint.o "../../../Microchip/Image Decoders/jidctint.c"  
	
${OBJECTDIR}/_ext/1626048738/JpegDecoder.o: ../../../Microchip/Image\ Decoders/JpegDecoder.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	@${RM} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.ok ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d" -o ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o "../../../Microchip/Image Decoders/JpegDecoder.c"  
	
${OBJECTDIR}/_ext/1472/GoogleStaticMapClient.o: ../GoogleStaticMapClient.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/GoogleStaticMapClient.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/GoogleStaticMapClient.o.ok ${OBJECTDIR}/_ext/1472/GoogleStaticMapClient.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/GoogleStaticMapClient.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/GoogleStaticMapClient.o.d" -o ${OBJECTDIR}/_ext/1472/GoogleStaticMapClient.o ../GoogleStaticMapClient.c  
	
${OBJECTDIR}/_ext/1472/SelectIcons.o: ../SelectIcons.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/SelectIcons.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/SelectIcons.o.ok ${OBJECTDIR}/_ext/1472/SelectIcons.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/SelectIcons.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/SelectIcons.o.d" -o ${OBJECTDIR}/_ext/1472/SelectIcons.o ../SelectIcons.c  
	
${OBJECTDIR}/_ext/1472/DemoSelection.o: ../DemoSelection.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/DemoSelection.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/DemoSelection.o.ok ${OBJECTDIR}/_ext/1472/DemoSelection.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/DemoSelection.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/DemoSelection.o.d" -o ${OBJECTDIR}/_ext/1472/DemoSelection.o ../DemoSelection.c  
	
${OBJECTDIR}/_ext/803622919/Button.o: ../../../Microchip/Graphics/Button.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Button.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Button.o.ok ${OBJECTDIR}/_ext/803622919/Button.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Button.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/Button.o.d" -o ${OBJECTDIR}/_ext/803622919/Button.o ../../../Microchip/Graphics/Button.c  
	
${OBJECTDIR}/_ext/803622919/GOL.o: ../../../Microchip/Graphics/GOL.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOL.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOL.o.ok ${OBJECTDIR}/_ext/803622919/GOL.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/GOL.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/GOL.o.d" -o ${OBJECTDIR}/_ext/803622919/GOL.o ../../../Microchip/Graphics/GOL.c  
	
${OBJECTDIR}/_ext/1687970324/SST25VF016.o: ../../../Board\ Support\ Package/SST25VF016.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.ok ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d" -o ${OBJECTDIR}/_ext/1687970324/SST25VF016.o "../../../Board Support Package/SST25VF016.c"  
	
${OBJECTDIR}/_ext/1472/SST39VF040.o: ../SST39VF040.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/SST39VF040.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/SST39VF040.o.ok ${OBJECTDIR}/_ext/1472/SST39VF040.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/SST39VF040.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/SST39VF040.o.d" -o ${OBJECTDIR}/_ext/1472/SST39VF040.o ../SST39VF040.c  
	
${OBJECTDIR}/_ext/1472/gmapImages.o: ../gmapImages.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/gmapImages.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/gmapImages.o.ok ${OBJECTDIR}/_ext/1472/gmapImages.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/gmapImages.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/gmapImages.o.d" -o ${OBJECTDIR}/_ext/1472/gmapImages.o ../gmapImages.c  
	
${OBJECTDIR}/_ext/1472/GoogleMapMenu.o: ../GoogleMapMenu.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/GoogleMapMenu.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/GoogleMapMenu.o.ok ${OBJECTDIR}/_ext/1472/GoogleMapMenu.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/GoogleMapMenu.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/GoogleMapMenu.o.d" -o ${OBJECTDIR}/_ext/1472/GoogleMapMenu.o ../GoogleMapMenu.c  
	
${OBJECTDIR}/_ext/803622919/Slider.o: ../../../Microchip/Graphics/Slider.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Slider.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Slider.o.ok ${OBJECTDIR}/_ext/803622919/Slider.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Slider.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/Slider.o.d" -o ${OBJECTDIR}/_ext/803622919/Slider.o ../../../Microchip/Graphics/Slider.c  
	
${OBJECTDIR}/_ext/803622919/StaticText.o: ../../../Microchip/Graphics/StaticText.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/StaticText.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/StaticText.o.ok ${OBJECTDIR}/_ext/803622919/StaticText.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/StaticText.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/StaticText.o.d" -o ${OBJECTDIR}/_ext/803622919/StaticText.o ../../../Microchip/Graphics/StaticText.c  
	
${OBJECTDIR}/_ext/803622919/TextEntry.o: ../../../Microchip/Graphics/TextEntry.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/TextEntry.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/TextEntry.o.ok ${OBJECTDIR}/_ext/803622919/TextEntry.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/TextEntry.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/TextEntry.o.d" -o ${OBJECTDIR}/_ext/803622919/TextEntry.o ../../../Microchip/Graphics/TextEntry.c  
	
${OBJECTDIR}/_ext/803622919/ListBox.o: ../../../Microchip/Graphics/ListBox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/ListBox.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/ListBox.o.ok ${OBJECTDIR}/_ext/803622919/ListBox.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/ListBox.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/ListBox.o.d" -o ${OBJECTDIR}/_ext/803622919/ListBox.o ../../../Microchip/Graphics/ListBox.c  
	
${OBJECTDIR}/_ext/1472/JPEGImage.o: ../JPEGImage.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/JPEGImage.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/JPEGImage.o.ok ${OBJECTDIR}/_ext/1472/JPEGImage.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/JPEGImage.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/JPEGImage.o.d" -o ${OBJECTDIR}/_ext/1472/JPEGImage.o ../JPEGImage.c  
	
${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o: ../../../Board\ Support\ Package/TouchScreenResistive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.ok ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d" -o ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o "../../../Board Support Package/TouchScreenResistive.c"  
	
${OBJECTDIR}/_ext/1687970324/drv_spi.o: ../../../Board\ Support\ Package/drv_spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.ok ${OBJECTDIR}/_ext/1687970324/drv_spi.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/drv_spi.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1687970324/drv_spi.o.d" -o ${OBJECTDIR}/_ext/1687970324/drv_spi.o "../../../Board Support Package/drv_spi.c"  
	
${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o: ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.ok ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d" -o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  
	
${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o: ../../../Microchip/Graphics/GOLSchemeDefault.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.ok ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d" -o ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o ../../../Microchip/Graphics/GOLSchemeDefault.c  
	
${OBJECTDIR}/_ext/1687970324/TouchScreen.o: ../../../Board\ Support\ Package/TouchScreen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.ok ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d" -o ${OBJECTDIR}/_ext/1687970324/TouchScreen.o "../../../Board Support Package/TouchScreen.c"  
	
${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o: ../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.ok ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d" -o ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o ../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  
	
${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o: ../../../Microchip/Graphics/Drivers/mchpGfxDrvBuffer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.ok ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -mlarge-arrays -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -MMD -MF "${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.d" -o ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o ../../../Microchip/Graphics/Drivers/mchpGfxDrvBuffer.c  
	
${OBJECTDIR}/_ext/1472/InternalResourceC30.o: ../InternalResourceC30.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/InternalResourceC30.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/InternalResourceC30.o.ok ${OBJECTDIR}/_ext/1472/InternalResourceC30.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/InternalResourceC30.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/InternalResourceC30.o.d" -o ${OBJECTDIR}/_ext/1472/InternalResourceC30.o ../InternalResourceC30.c  
	
${OBJECTDIR}/_ext/1919882987/SSD1926.o: ../../../Microchip/Graphics/Drivers/SSD1926.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.ok ${OBJECTDIR}/_ext/1919882987/SSD1926.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/SSD1926.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_ENC624 -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I".." -I"../../../Microchip/Include" -I"../../../Board Support Package" -I"../../../Microchip/Include/TCPIP Stack" -I"../../../Microchip/Include/Graphics" -I"../Configs" -I"../../../Microchip/Include/Image Decoders" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/SSD1926.o.d" -o ${OBJECTDIR}/_ext/1919882987/SSD1926.o ../../../Microchip/Graphics/Drivers/SSD1926.c  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}        -Wl,--defsym=__MPLAB_BUILD=1,--heap=3000,-L"..",-Map="${DISTDIR}/MPLAB.X.${IMAGE_TYPE}.map",--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_REAL_ICE=1
else
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf -mcpu=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}        -Wl,--defsym=__MPLAB_BUILD=1,--heap=3000,-L"..",-Map="${DISTDIR}/MPLAB.X.${IMAGE_TYPE}.map",--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION)
	${MP_CC_DIR}\\pic30-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -omf=elf
endif


# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf:
	${RM} -r build/PIC24_DA210_DEV_16PMP_WQVGAv1_ENC624
	${RM} -r dist/PIC24_DA210_DEV_16PMP_WQVGAv1_ENC624

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
