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
CND_CONF=C30-DA210_BRD_MRF24WB
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
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1954962658/ARP.o ${OBJECTDIR}/_ext/1954962658/Announce.o ${OBJECTDIR}/_ext/1954962658/AutoIP.o ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o ${OBJECTDIR}/_ext/1954962658/DHCP.o ${OBJECTDIR}/_ext/1954962658/DHCPs.o ${OBJECTDIR}/_ext/1954962658/DNS.o ${OBJECTDIR}/_ext/1954962658/DNSs.o ${OBJECTDIR}/_ext/1954962658/Delay.o ${OBJECTDIR}/_ext/1954962658/DynDNS.o ${OBJECTDIR}/_ext/1954962658/ENC28J60.o ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o ${OBJECTDIR}/_ext/1954962658/FTP.o ${OBJECTDIR}/_ext/1954962658/HTTP2.o ${OBJECTDIR}/_ext/1954962658/Hashes.o ${OBJECTDIR}/_ext/1954962658/Helpers.o ${OBJECTDIR}/_ext/1954962658/ICMP.o ${OBJECTDIR}/_ext/1954962658/IP.o ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o ${OBJECTDIR}/_ext/1954962658/MPFS2.o ${OBJECTDIR}/_ext/1954962658/NBNS.o ${OBJECTDIR}/_ext/1954962658/Reboot.o ${OBJECTDIR}/_ext/1954962658/SMTP.o ${OBJECTDIR}/_ext/1954962658/SNMP.o ${OBJECTDIR}/_ext/1954962658/SNTP.o ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o ${OBJECTDIR}/_ext/1954962658/SPIFlash.o ${OBJECTDIR}/_ext/1954962658/SPIRAM.o ${OBJECTDIR}/_ext/1954962658/StackTsk.o ${OBJECTDIR}/_ext/1954962658/TCP.o ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o ${OBJECTDIR}/_ext/1954962658/TFTPc.o ${OBJECTDIR}/_ext/1954962658/Telnet.o ${OBJECTDIR}/_ext/1954962658/Tick.o ${OBJECTDIR}/_ext/1954962658/UART.o ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o ${OBJECTDIR}/_ext/1954962658/UDP.o ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o ${OBJECTDIR}/_ext/243675038/WFConsole.o ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o ${OBJECTDIR}/_ext/243675038/WFDriverCom.o ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o ${OBJECTDIR}/_ext/243675038/WFEasyConfig.o ${OBJECTDIR}/_ext/243675038/WFEventHandler.o ${OBJECTDIR}/_ext/243675038/WFInit.o ${OBJECTDIR}/_ext/243675038/WFMac.o ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o ${OBJECTDIR}/_ext/243675038/WFParamMsg.o ${OBJECTDIR}/_ext/243675038/WFPowerSave.o ${OBJECTDIR}/_ext/243675038/WFScan.o ${OBJECTDIR}/_ext/243675038/WFTxPower.o ${OBJECTDIR}/_ext/243675038/WF_Eint.o ${OBJECTDIR}/_ext/243675038/WF_Spi.o ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o ${OBJECTDIR}/_ext/1472/IperfApp.o ${OBJECTDIR}/_ext/1472/MainDemo.o ${OBJECTDIR}/_ext/1472/PingDemo.o ${OBJECTDIR}/_ext/1472/UARTConfig.o ${OBJECTDIR}/_ext/1472/WF_Config.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1954962658/ARP.o.d ${OBJECTDIR}/_ext/1954962658/Announce.o.d ${OBJECTDIR}/_ext/1954962658/AutoIP.o.d ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d ${OBJECTDIR}/_ext/1954962658/DHCP.o.d ${OBJECTDIR}/_ext/1954962658/DHCPs.o.d ${OBJECTDIR}/_ext/1954962658/DNS.o.d ${OBJECTDIR}/_ext/1954962658/DNSs.o.d ${OBJECTDIR}/_ext/1954962658/Delay.o.d ${OBJECTDIR}/_ext/1954962658/DynDNS.o.d ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d ${OBJECTDIR}/_ext/1954962658/FTP.o.d ${OBJECTDIR}/_ext/1954962658/HTTP2.o.d ${OBJECTDIR}/_ext/1954962658/Hashes.o.d ${OBJECTDIR}/_ext/1954962658/Helpers.o.d ${OBJECTDIR}/_ext/1954962658/ICMP.o.d ${OBJECTDIR}/_ext/1954962658/IP.o.d ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d ${OBJECTDIR}/_ext/1954962658/MPFS2.o.d ${OBJECTDIR}/_ext/1954962658/NBNS.o.d ${OBJECTDIR}/_ext/1954962658/Reboot.o.d ${OBJECTDIR}/_ext/1954962658/SMTP.o.d ${OBJECTDIR}/_ext/1954962658/SNMP.o.d ${OBJECTDIR}/_ext/1954962658/SNTP.o.d ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d ${OBJECTDIR}/_ext/1954962658/StackTsk.o.d ${OBJECTDIR}/_ext/1954962658/TCP.o.d ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d ${OBJECTDIR}/_ext/1954962658/TFTPc.o.d ${OBJECTDIR}/_ext/1954962658/Telnet.o.d ${OBJECTDIR}/_ext/1954962658/Tick.o.d ${OBJECTDIR}/_ext/1954962658/UART.o.d ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d ${OBJECTDIR}/_ext/1954962658/UDP.o.d ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.d ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.d ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o.d ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o.d ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o.d ${OBJECTDIR}/_ext/243675038/WFConsole.o.d ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o.d ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o.d ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o.d ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o.d ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o.d ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o.d ${OBJECTDIR}/_ext/243675038/WFDriverCom.o.d ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o.d ${OBJECTDIR}/_ext/243675038/WFEasyConfig.o.d ${OBJECTDIR}/_ext/243675038/WFEventHandler.o.d ${OBJECTDIR}/_ext/243675038/WFInit.o.d ${OBJECTDIR}/_ext/243675038/WFMac.o.d ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o.d ${OBJECTDIR}/_ext/243675038/WFParamMsg.o.d ${OBJECTDIR}/_ext/243675038/WFPowerSave.o.d ${OBJECTDIR}/_ext/243675038/WFScan.o.d ${OBJECTDIR}/_ext/243675038/WFTxPower.o.d ${OBJECTDIR}/_ext/243675038/WF_Eint.o.d ${OBJECTDIR}/_ext/243675038/WF_Spi.o.d ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d ${OBJECTDIR}/_ext/1472/IperfApp.o.d ${OBJECTDIR}/_ext/1472/MainDemo.o.d ${OBJECTDIR}/_ext/1472/PingDemo.o.d ${OBJECTDIR}/_ext/1472/UARTConfig.o.d ${OBJECTDIR}/_ext/1472/WF_Config.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1954962658/ARP.o ${OBJECTDIR}/_ext/1954962658/Announce.o ${OBJECTDIR}/_ext/1954962658/AutoIP.o ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o ${OBJECTDIR}/_ext/1954962658/DHCP.o ${OBJECTDIR}/_ext/1954962658/DHCPs.o ${OBJECTDIR}/_ext/1954962658/DNS.o ${OBJECTDIR}/_ext/1954962658/DNSs.o ${OBJECTDIR}/_ext/1954962658/Delay.o ${OBJECTDIR}/_ext/1954962658/DynDNS.o ${OBJECTDIR}/_ext/1954962658/ENC28J60.o ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o ${OBJECTDIR}/_ext/1954962658/FTP.o ${OBJECTDIR}/_ext/1954962658/HTTP2.o ${OBJECTDIR}/_ext/1954962658/Hashes.o ${OBJECTDIR}/_ext/1954962658/Helpers.o ${OBJECTDIR}/_ext/1954962658/ICMP.o ${OBJECTDIR}/_ext/1954962658/IP.o ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o ${OBJECTDIR}/_ext/1954962658/MPFS2.o ${OBJECTDIR}/_ext/1954962658/NBNS.o ${OBJECTDIR}/_ext/1954962658/Reboot.o ${OBJECTDIR}/_ext/1954962658/SMTP.o ${OBJECTDIR}/_ext/1954962658/SNMP.o ${OBJECTDIR}/_ext/1954962658/SNTP.o ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o ${OBJECTDIR}/_ext/1954962658/SPIFlash.o ${OBJECTDIR}/_ext/1954962658/SPIRAM.o ${OBJECTDIR}/_ext/1954962658/StackTsk.o ${OBJECTDIR}/_ext/1954962658/TCP.o ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o ${OBJECTDIR}/_ext/1954962658/TFTPc.o ${OBJECTDIR}/_ext/1954962658/Telnet.o ${OBJECTDIR}/_ext/1954962658/Tick.o ${OBJECTDIR}/_ext/1954962658/UART.o ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o ${OBJECTDIR}/_ext/1954962658/UDP.o ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o ${OBJECTDIR}/_ext/243675038/WFConsole.o ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o ${OBJECTDIR}/_ext/243675038/WFDriverCom.o ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o ${OBJECTDIR}/_ext/243675038/WFEasyConfig.o ${OBJECTDIR}/_ext/243675038/WFEventHandler.o ${OBJECTDIR}/_ext/243675038/WFInit.o ${OBJECTDIR}/_ext/243675038/WFMac.o ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o ${OBJECTDIR}/_ext/243675038/WFParamMsg.o ${OBJECTDIR}/_ext/243675038/WFPowerSave.o ${OBJECTDIR}/_ext/243675038/WFScan.o ${OBJECTDIR}/_ext/243675038/WFTxPower.o ${OBJECTDIR}/_ext/243675038/WF_Eint.o ${OBJECTDIR}/_ext/243675038/WF_Spi.o ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o ${OBJECTDIR}/_ext/1472/IperfApp.o ${OBJECTDIR}/_ext/1472/MainDemo.o ${OBJECTDIR}/_ext/1472/PingDemo.o ${OBJECTDIR}/_ext/1472/UARTConfig.o ${OBJECTDIR}/_ext/1472/WF_Config.o


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
MP_CC="C:\Program Files\Microchip\mplabc30\v3.30b\bin\pic30-gcc.exe"
# MP_BC is not defined
MP_AS="C:\Program Files\Microchip\mplabc30\v3.30b\bin\pic30-as.exe"
MP_LD="C:\Program Files\Microchip\mplabc30\v3.30b\bin\pic30-ld.exe"
MP_AR="C:\Program Files\Microchip\mplabc30\v3.30b\bin\pic30-ar.exe"
DEP_GEN=${MP_JAVA_PATH}java -jar "C:/Program Files/Microchip/MPLABX/mplab_ide/mplab_ide/modules/../../bin/extractobjectdependencies.jar" 
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps
MP_CC_DIR="C:\Program Files\Microchip\mplabc30\v3.30b\bin"
# MP_BC_DIR is not defined
MP_AS_DIR="C:\Program Files\Microchip\mplabc30\v3.30b\bin"
MP_LD_DIR="C:\Program Files\Microchip\mplabc30\v3.30b\bin"
MP_AR_DIR="C:\Program Files\Microchip\mplabc30\v3.30b\bin"
# MP_BC_DIR is not defined

.build-conf:  ${BUILD_SUBPROJECTS}
	${MAKE}  -f nbproject/Makefile-C30-DA210_BRD_MRF24WB.mk dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/_ext/1954962658/ARP.o: ../../../Microchip/TCPIP\ Stack/ARP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ARP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ARP.o.ok ${OBJECTDIR}/_ext/1954962658/ARP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/ARP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/ARP.o.d" -o ${OBJECTDIR}/_ext/1954962658/ARP.o "../../../Microchip/TCPIP Stack/ARP.c"  
	
${OBJECTDIR}/_ext/1954962658/Announce.o: ../../../Microchip/TCPIP\ Stack/Announce.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Announce.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Announce.o.ok ${OBJECTDIR}/_ext/1954962658/Announce.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/Announce.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/Announce.o.d" -o ${OBJECTDIR}/_ext/1954962658/Announce.o "../../../Microchip/TCPIP Stack/Announce.c"  
	
${OBJECTDIR}/_ext/1954962658/AutoIP.o: ../../../Microchip/TCPIP\ Stack/AutoIP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/AutoIP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/AutoIP.o.ok ${OBJECTDIR}/_ext/1954962658/AutoIP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/AutoIP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/AutoIP.o.d" -o ${OBJECTDIR}/_ext/1954962658/AutoIP.o "../../../Microchip/TCPIP Stack/AutoIP.c"  
	
${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o: ../../../Microchip/TCPIP\ Stack/BerkeleyAPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.ok ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d" -o ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o "../../../Microchip/TCPIP Stack/BerkeleyAPI.c"  
	
${OBJECTDIR}/_ext/1954962658/DHCP.o: ../../../Microchip/TCPIP\ Stack/DHCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DHCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DHCP.o.ok ${OBJECTDIR}/_ext/1954962658/DHCP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/DHCP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/DHCP.o.d" -o ${OBJECTDIR}/_ext/1954962658/DHCP.o "../../../Microchip/TCPIP Stack/DHCP.c"  
	
${OBJECTDIR}/_ext/1954962658/DHCPs.o: ../../../Microchip/TCPIP\ Stack/DHCPs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DHCPs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DHCPs.o.ok ${OBJECTDIR}/_ext/1954962658/DHCPs.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/DHCPs.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/DHCPs.o.d" -o ${OBJECTDIR}/_ext/1954962658/DHCPs.o "../../../Microchip/TCPIP Stack/DHCPs.c"  
	
${OBJECTDIR}/_ext/1954962658/DNS.o: ../../../Microchip/TCPIP\ Stack/DNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DNS.o.ok ${OBJECTDIR}/_ext/1954962658/DNS.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/DNS.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/DNS.o.d" -o ${OBJECTDIR}/_ext/1954962658/DNS.o "../../../Microchip/TCPIP Stack/DNS.c"  
	
${OBJECTDIR}/_ext/1954962658/DNSs.o: ../../../Microchip/TCPIP\ Stack/DNSs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DNSs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DNSs.o.ok ${OBJECTDIR}/_ext/1954962658/DNSs.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/DNSs.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/DNSs.o.d" -o ${OBJECTDIR}/_ext/1954962658/DNSs.o "../../../Microchip/TCPIP Stack/DNSs.c"  
	
${OBJECTDIR}/_ext/1954962658/Delay.o: ../../../Microchip/TCPIP\ Stack/Delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Delay.o.ok ${OBJECTDIR}/_ext/1954962658/Delay.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/Delay.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/Delay.o.d" -o ${OBJECTDIR}/_ext/1954962658/Delay.o "../../../Microchip/TCPIP Stack/Delay.c"  
	
${OBJECTDIR}/_ext/1954962658/DynDNS.o: ../../../Microchip/TCPIP\ Stack/DynDNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DynDNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DynDNS.o.ok ${OBJECTDIR}/_ext/1954962658/DynDNS.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/DynDNS.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/DynDNS.o.d" -o ${OBJECTDIR}/_ext/1954962658/DynDNS.o "../../../Microchip/TCPIP Stack/DynDNS.c"  
	
${OBJECTDIR}/_ext/1954962658/ENC28J60.o: ../../../Microchip/TCPIP\ Stack/ENC28J60.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.ok ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d" -o ${OBJECTDIR}/_ext/1954962658/ENC28J60.o "../../../Microchip/TCPIP Stack/ENC28J60.c"  
	
${OBJECTDIR}/_ext/1954962658/ENCX24J600.o: ../../../Microchip/TCPIP\ Stack/ENCX24J600.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.ok ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d" -o ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o "../../../Microchip/TCPIP Stack/ENCX24J600.c"  
	
${OBJECTDIR}/_ext/1954962658/FTP.o: ../../../Microchip/TCPIP\ Stack/FTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/FTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/FTP.o.ok ${OBJECTDIR}/_ext/1954962658/FTP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/FTP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/FTP.o.d" -o ${OBJECTDIR}/_ext/1954962658/FTP.o "../../../Microchip/TCPIP Stack/FTP.c"  
	
${OBJECTDIR}/_ext/1954962658/HTTP2.o: ../../../Microchip/TCPIP\ Stack/HTTP2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/HTTP2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/HTTP2.o.ok ${OBJECTDIR}/_ext/1954962658/HTTP2.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/HTTP2.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/HTTP2.o.d" -o ${OBJECTDIR}/_ext/1954962658/HTTP2.o "../../../Microchip/TCPIP Stack/HTTP2.c"  
	
${OBJECTDIR}/_ext/1954962658/Hashes.o: ../../../Microchip/TCPIP\ Stack/Hashes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Hashes.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Hashes.o.ok ${OBJECTDIR}/_ext/1954962658/Hashes.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/Hashes.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/Hashes.o.d" -o ${OBJECTDIR}/_ext/1954962658/Hashes.o "../../../Microchip/TCPIP Stack/Hashes.c"  
	
${OBJECTDIR}/_ext/1954962658/Helpers.o: ../../../Microchip/TCPIP\ Stack/Helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Helpers.o.ok ${OBJECTDIR}/_ext/1954962658/Helpers.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/Helpers.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/Helpers.o.d" -o ${OBJECTDIR}/_ext/1954962658/Helpers.o "../../../Microchip/TCPIP Stack/Helpers.c"  
	
${OBJECTDIR}/_ext/1954962658/ICMP.o: ../../../Microchip/TCPIP\ Stack/ICMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ICMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ICMP.o.ok ${OBJECTDIR}/_ext/1954962658/ICMP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/ICMP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/ICMP.o.d" -o ${OBJECTDIR}/_ext/1954962658/ICMP.o "../../../Microchip/TCPIP Stack/ICMP.c"  
	
${OBJECTDIR}/_ext/1954962658/IP.o: ../../../Microchip/TCPIP\ Stack/IP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/IP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/IP.o.ok ${OBJECTDIR}/_ext/1954962658/IP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/IP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/IP.o.d" -o ${OBJECTDIR}/_ext/1954962658/IP.o "../../../Microchip/TCPIP Stack/IP.c"  
	
${OBJECTDIR}/_ext/1954962658/LCDBlocking.o: ../../../Microchip/TCPIP\ Stack/LCDBlocking.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.ok ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d" -o ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o "../../../Microchip/TCPIP Stack/LCDBlocking.c"  
	
${OBJECTDIR}/_ext/1954962658/MPFS2.o: ../../../Microchip/TCPIP\ Stack/MPFS2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/MPFS2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/MPFS2.o.ok ${OBJECTDIR}/_ext/1954962658/MPFS2.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/MPFS2.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/MPFS2.o.d" -o ${OBJECTDIR}/_ext/1954962658/MPFS2.o "../../../Microchip/TCPIP Stack/MPFS2.c"  
	
${OBJECTDIR}/_ext/1954962658/NBNS.o: ../../../Microchip/TCPIP\ Stack/NBNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/NBNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/NBNS.o.ok ${OBJECTDIR}/_ext/1954962658/NBNS.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/NBNS.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/NBNS.o.d" -o ${OBJECTDIR}/_ext/1954962658/NBNS.o "../../../Microchip/TCPIP Stack/NBNS.c"  
	
${OBJECTDIR}/_ext/1954962658/Reboot.o: ../../../Microchip/TCPIP\ Stack/Reboot.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Reboot.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Reboot.o.ok ${OBJECTDIR}/_ext/1954962658/Reboot.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/Reboot.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/Reboot.o.d" -o ${OBJECTDIR}/_ext/1954962658/Reboot.o "../../../Microchip/TCPIP Stack/Reboot.c"  
	
${OBJECTDIR}/_ext/1954962658/SMTP.o: ../../../Microchip/TCPIP\ Stack/SMTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SMTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SMTP.o.ok ${OBJECTDIR}/_ext/1954962658/SMTP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/SMTP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/SMTP.o.d" -o ${OBJECTDIR}/_ext/1954962658/SMTP.o "../../../Microchip/TCPIP Stack/SMTP.c"  
	
${OBJECTDIR}/_ext/1954962658/SNMP.o: ../../../Microchip/TCPIP\ Stack/SNMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNMP.o.ok ${OBJECTDIR}/_ext/1954962658/SNMP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/SNMP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/SNMP.o.d" -o ${OBJECTDIR}/_ext/1954962658/SNMP.o "../../../Microchip/TCPIP Stack/SNMP.c"  
	
${OBJECTDIR}/_ext/1954962658/SNTP.o: ../../../Microchip/TCPIP\ Stack/SNTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNTP.o.ok ${OBJECTDIR}/_ext/1954962658/SNTP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/SNTP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/SNTP.o.d" -o ${OBJECTDIR}/_ext/1954962658/SNTP.o "../../../Microchip/TCPIP Stack/SNTP.c"  
	
${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o: ../../../Microchip/TCPIP\ Stack/SPIEEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.ok ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d" -o ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o "../../../Microchip/TCPIP Stack/SPIEEPROM.c"  
	
${OBJECTDIR}/_ext/1954962658/SPIFlash.o: ../../../Microchip/TCPIP\ Stack/SPIFlash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.ok ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d" -o ${OBJECTDIR}/_ext/1954962658/SPIFlash.o "../../../Microchip/TCPIP Stack/SPIFlash.c"  
	
${OBJECTDIR}/_ext/1954962658/SPIRAM.o: ../../../Microchip/TCPIP\ Stack/SPIRAM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.ok ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d" -o ${OBJECTDIR}/_ext/1954962658/SPIRAM.o "../../../Microchip/TCPIP Stack/SPIRAM.c"  
	
${OBJECTDIR}/_ext/1954962658/StackTsk.o: ../../../Microchip/TCPIP\ Stack/StackTsk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/StackTsk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/StackTsk.o.ok ${OBJECTDIR}/_ext/1954962658/StackTsk.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/StackTsk.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/StackTsk.o.d" -o ${OBJECTDIR}/_ext/1954962658/StackTsk.o "../../../Microchip/TCPIP Stack/StackTsk.c"  
	
${OBJECTDIR}/_ext/1954962658/TCP.o: ../../../Microchip/TCPIP\ Stack/TCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TCP.o.ok ${OBJECTDIR}/_ext/1954962658/TCP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/TCP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/TCP.o.d" -o ${OBJECTDIR}/_ext/1954962658/TCP.o "../../../Microchip/TCPIP Stack/TCP.c"  
	
${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o: ../../../Microchip/TCPIP\ Stack/TCPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.ok ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d" -o ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o "../../../Microchip/TCPIP Stack/TCPPerformanceTest.c"  
	
${OBJECTDIR}/_ext/1954962658/TFTPc.o: ../../../Microchip/TCPIP\ Stack/TFTPc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TFTPc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TFTPc.o.ok ${OBJECTDIR}/_ext/1954962658/TFTPc.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/TFTPc.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/TFTPc.o.d" -o ${OBJECTDIR}/_ext/1954962658/TFTPc.o "../../../Microchip/TCPIP Stack/TFTPc.c"  
	
${OBJECTDIR}/_ext/1954962658/Telnet.o: ../../../Microchip/TCPIP\ Stack/Telnet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Telnet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Telnet.o.ok ${OBJECTDIR}/_ext/1954962658/Telnet.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/Telnet.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/Telnet.o.d" -o ${OBJECTDIR}/_ext/1954962658/Telnet.o "../../../Microchip/TCPIP Stack/Telnet.c"  
	
${OBJECTDIR}/_ext/1954962658/Tick.o: ../../../Microchip/TCPIP\ Stack/Tick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Tick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Tick.o.ok ${OBJECTDIR}/_ext/1954962658/Tick.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/Tick.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/Tick.o.d" -o ${OBJECTDIR}/_ext/1954962658/Tick.o "../../../Microchip/TCPIP Stack/Tick.c"  
	
${OBJECTDIR}/_ext/1954962658/UART.o: ../../../Microchip/TCPIP\ Stack/UART.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UART.o.ok ${OBJECTDIR}/_ext/1954962658/UART.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/UART.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/UART.o.d" -o ${OBJECTDIR}/_ext/1954962658/UART.o "../../../Microchip/TCPIP Stack/UART.c"  
	
${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o: ../../../Microchip/TCPIP\ Stack/UART2TCPBridge.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.ok ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d" -o ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o "../../../Microchip/TCPIP Stack/UART2TCPBridge.c"  
	
${OBJECTDIR}/_ext/1954962658/UDP.o: ../../../Microchip/TCPIP\ Stack/UDP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UDP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UDP.o.ok ${OBJECTDIR}/_ext/1954962658/UDP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/UDP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/UDP.o.d" -o ${OBJECTDIR}/_ext/1954962658/UDP.o "../../../Microchip/TCPIP Stack/UDP.c"  
	
${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o: ../../../Microchip/TCPIP\ Stack/UDPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.ok ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d" -o ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o "../../../Microchip/TCPIP Stack/UDPPerformanceTest.c"  
	
${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o: ../../../Microchip/TCPIP\ Stack/ZeroconfHelper.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.ok ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d" -o ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o "../../../Microchip/TCPIP Stack/ZeroconfHelper.c"  
	
${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o: ../../../Microchip/TCPIP\ Stack/ZeroconfLinkLocal.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.ok ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.d" -o ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o "../../../Microchip/TCPIP Stack/ZeroconfLinkLocal.c"  
	
${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o: ../../../Microchip/TCPIP\ Stack/ZeroconfMulticastDNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.ok ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.d" -o ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o "../../../Microchip/TCPIP Stack/ZeroconfMulticastDNS.c"  
	
${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o.d 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o.ok ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o.d" -o ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o "../../../Microchip/TCPIP Stack/WiFi/WFConnectionAlgorithm.c"  
	
${OBJECTDIR}/_ext/243675038/WFConnectionManager.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o.d 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o.ok ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFConnectionManager.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/243675038/WFConnectionManager.o.d" -o ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o "../../../Microchip/TCPIP Stack/WiFi/WFConnectionManager.c"  
	
${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o.d 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o.ok ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o.d" -o ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o "../../../Microchip/TCPIP Stack/WiFi/WFConnectionProfile.c"  
	
${OBJECTDIR}/_ext/243675038/WFConsole.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsole.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConsole.o.d 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConsole.o.ok ${OBJECTDIR}/_ext/243675038/WFConsole.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFConsole.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/243675038/WFConsole.o.d" -o ${OBJECTDIR}/_ext/243675038/WFConsole.o "../../../Microchip/TCPIP Stack/WiFi/WFConsole.c"  
	
${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o.ok ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o.d" -o ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o "../../../Microchip/TCPIP Stack/WiFi/WFConsoleIfconfig.c"  
	
${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o.ok ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o.d" -o ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o "../../../Microchip/TCPIP Stack/WiFi/WFConsoleIwconfig.c"  
	
${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o.d 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o.ok ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o.d" -o ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o "../../../Microchip/TCPIP Stack/WiFi/WFConsoleIwpriv.c"  
	
${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o.d 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o.ok ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o.d" -o ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o "../../../Microchip/TCPIP Stack/WiFi/WFConsoleMsgHandler.c"  
	
${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o.d 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o.ok ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o.d" -o ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o "../../../Microchip/TCPIP Stack/WiFi/WFConsoleMsgs.c"  
	
${OBJECTDIR}/_ext/243675038/WFDataTxRx.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o.d 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o.ok ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFDataTxRx.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/243675038/WFDataTxRx.o.d" -o ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o "../../../Microchip/TCPIP Stack/WiFi/WFDataTxRx.c"  
	
${OBJECTDIR}/_ext/243675038/WFDriverCom.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFDriverCom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFDriverCom.o.d 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFDriverCom.o.ok ${OBJECTDIR}/_ext/243675038/WFDriverCom.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFDriverCom.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/243675038/WFDriverCom.o.d" -o ${OBJECTDIR}/_ext/243675038/WFDriverCom.o "../../../Microchip/TCPIP Stack/WiFi/WFDriverCom.c"  
	
${OBJECTDIR}/_ext/243675038/WFDriverRaw.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o.d 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o.ok ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFDriverRaw.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/243675038/WFDriverRaw.o.d" -o ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o "../../../Microchip/TCPIP Stack/WiFi/WFDriverRaw.c"  
	
${OBJECTDIR}/_ext/243675038/WFEasyConfig.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFEasyConfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFEasyConfig.o.ok ${OBJECTDIR}/_ext/243675038/WFEasyConfig.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFEasyConfig.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/243675038/WFEasyConfig.o.d" -o ${OBJECTDIR}/_ext/243675038/WFEasyConfig.o "../../../Microchip/TCPIP Stack/WiFi/WFEasyConfig.c"  
	
${OBJECTDIR}/_ext/243675038/WFEventHandler.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFEventHandler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFEventHandler.o.d 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFEventHandler.o.ok ${OBJECTDIR}/_ext/243675038/WFEventHandler.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFEventHandler.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/243675038/WFEventHandler.o.d" -o ${OBJECTDIR}/_ext/243675038/WFEventHandler.o "../../../Microchip/TCPIP Stack/WiFi/WFEventHandler.c"  
	
${OBJECTDIR}/_ext/243675038/WFInit.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFInit.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFInit.o.d 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFInit.o.ok ${OBJECTDIR}/_ext/243675038/WFInit.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFInit.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/243675038/WFInit.o.d" -o ${OBJECTDIR}/_ext/243675038/WFInit.o "../../../Microchip/TCPIP Stack/WiFi/WFInit.c"  
	
${OBJECTDIR}/_ext/243675038/WFMac.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFMac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFMac.o.d 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFMac.o.ok ${OBJECTDIR}/_ext/243675038/WFMac.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFMac.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/243675038/WFMac.o.d" -o ${OBJECTDIR}/_ext/243675038/WFMac.o "../../../Microchip/TCPIP Stack/WiFi/WFMac.c"  
	
${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o.d 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o.ok ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o.d" -o ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o "../../../Microchip/TCPIP Stack/WiFi/WFMgmtMsg.c"  
	
${OBJECTDIR}/_ext/243675038/WFParamMsg.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFParamMsg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFParamMsg.o.d 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFParamMsg.o.ok ${OBJECTDIR}/_ext/243675038/WFParamMsg.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFParamMsg.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/243675038/WFParamMsg.o.d" -o ${OBJECTDIR}/_ext/243675038/WFParamMsg.o "../../../Microchip/TCPIP Stack/WiFi/WFParamMsg.c"  
	
${OBJECTDIR}/_ext/243675038/WFPowerSave.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFPowerSave.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFPowerSave.o.d 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFPowerSave.o.ok ${OBJECTDIR}/_ext/243675038/WFPowerSave.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFPowerSave.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/243675038/WFPowerSave.o.d" -o ${OBJECTDIR}/_ext/243675038/WFPowerSave.o "../../../Microchip/TCPIP Stack/WiFi/WFPowerSave.c"  
	
${OBJECTDIR}/_ext/243675038/WFScan.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFScan.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFScan.o.d 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFScan.o.ok ${OBJECTDIR}/_ext/243675038/WFScan.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFScan.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/243675038/WFScan.o.d" -o ${OBJECTDIR}/_ext/243675038/WFScan.o "../../../Microchip/TCPIP Stack/WiFi/WFScan.c"  
	
${OBJECTDIR}/_ext/243675038/WFTxPower.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFTxPower.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFTxPower.o.d 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFTxPower.o.ok ${OBJECTDIR}/_ext/243675038/WFTxPower.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFTxPower.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/243675038/WFTxPower.o.d" -o ${OBJECTDIR}/_ext/243675038/WFTxPower.o "../../../Microchip/TCPIP Stack/WiFi/WFTxPower.c"  
	
${OBJECTDIR}/_ext/243675038/WF_Eint.o: ../../../Microchip/TCPIP\ Stack/WiFi/WF_Eint.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WF_Eint.o.d 
	@${RM} ${OBJECTDIR}/_ext/243675038/WF_Eint.o.ok ${OBJECTDIR}/_ext/243675038/WF_Eint.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WF_Eint.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/243675038/WF_Eint.o.d" -o ${OBJECTDIR}/_ext/243675038/WF_Eint.o "../../../Microchip/TCPIP Stack/WiFi/WF_Eint.c"  
	
${OBJECTDIR}/_ext/243675038/WF_Spi.o: ../../../Microchip/TCPIP\ Stack/WiFi/WF_Spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WF_Spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/243675038/WF_Spi.o.ok ${OBJECTDIR}/_ext/243675038/WF_Spi.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WF_Spi.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/243675038/WF_Spi.o.d" -o ${OBJECTDIR}/_ext/243675038/WF_Spi.o "../../../Microchip/TCPIP Stack/WiFi/WF_Spi.c"  
	
${OBJECTDIR}/_ext/1472/CustomHTTPApp.o: ../CustomHTTPApp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.ok ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d" -o ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o ../CustomHTTPApp.c  
	
${OBJECTDIR}/_ext/1472/IperfApp.o: ../IperfApp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/IperfApp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/IperfApp.o.ok ${OBJECTDIR}/_ext/1472/IperfApp.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/IperfApp.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1472/IperfApp.o.d" -o ${OBJECTDIR}/_ext/1472/IperfApp.o ../IperfApp.c  
	
${OBJECTDIR}/_ext/1472/MainDemo.o: ../MainDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.ok ${OBJECTDIR}/_ext/1472/MainDemo.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/MainDemo.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1472/MainDemo.o.d" -o ${OBJECTDIR}/_ext/1472/MainDemo.o ../MainDemo.c  
	
${OBJECTDIR}/_ext/1472/PingDemo.o: ../PingDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/PingDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/PingDemo.o.ok ${OBJECTDIR}/_ext/1472/PingDemo.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/PingDemo.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1472/PingDemo.o.d" -o ${OBJECTDIR}/_ext/1472/PingDemo.o ../PingDemo.c  
	
${OBJECTDIR}/_ext/1472/UARTConfig.o: ../UARTConfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o.ok ${OBJECTDIR}/_ext/1472/UARTConfig.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/UARTConfig.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1472/UARTConfig.o.d" -o ${OBJECTDIR}/_ext/1472/UARTConfig.o ../UARTConfig.c  
	
${OBJECTDIR}/_ext/1472/WF_Config.o: ../WF_Config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/WF_Config.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/WF_Config.o.ok ${OBJECTDIR}/_ext/1472/WF_Config.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/WF_Config.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1472/WF_Config.o.d" -o ${OBJECTDIR}/_ext/1472/WF_Config.o ../WF_Config.c  
	
else
${OBJECTDIR}/_ext/1954962658/ARP.o: ../../../Microchip/TCPIP\ Stack/ARP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ARP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ARP.o.ok ${OBJECTDIR}/_ext/1954962658/ARP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/ARP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/ARP.o.d" -o ${OBJECTDIR}/_ext/1954962658/ARP.o "../../../Microchip/TCPIP Stack/ARP.c"  
	
${OBJECTDIR}/_ext/1954962658/Announce.o: ../../../Microchip/TCPIP\ Stack/Announce.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Announce.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Announce.o.ok ${OBJECTDIR}/_ext/1954962658/Announce.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/Announce.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/Announce.o.d" -o ${OBJECTDIR}/_ext/1954962658/Announce.o "../../../Microchip/TCPIP Stack/Announce.c"  
	
${OBJECTDIR}/_ext/1954962658/AutoIP.o: ../../../Microchip/TCPIP\ Stack/AutoIP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/AutoIP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/AutoIP.o.ok ${OBJECTDIR}/_ext/1954962658/AutoIP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/AutoIP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/AutoIP.o.d" -o ${OBJECTDIR}/_ext/1954962658/AutoIP.o "../../../Microchip/TCPIP Stack/AutoIP.c"  
	
${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o: ../../../Microchip/TCPIP\ Stack/BerkeleyAPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.ok ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d" -o ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o "../../../Microchip/TCPIP Stack/BerkeleyAPI.c"  
	
${OBJECTDIR}/_ext/1954962658/DHCP.o: ../../../Microchip/TCPIP\ Stack/DHCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DHCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DHCP.o.ok ${OBJECTDIR}/_ext/1954962658/DHCP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/DHCP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/DHCP.o.d" -o ${OBJECTDIR}/_ext/1954962658/DHCP.o "../../../Microchip/TCPIP Stack/DHCP.c"  
	
${OBJECTDIR}/_ext/1954962658/DHCPs.o: ../../../Microchip/TCPIP\ Stack/DHCPs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DHCPs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DHCPs.o.ok ${OBJECTDIR}/_ext/1954962658/DHCPs.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/DHCPs.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/DHCPs.o.d" -o ${OBJECTDIR}/_ext/1954962658/DHCPs.o "../../../Microchip/TCPIP Stack/DHCPs.c"  
	
${OBJECTDIR}/_ext/1954962658/DNS.o: ../../../Microchip/TCPIP\ Stack/DNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DNS.o.ok ${OBJECTDIR}/_ext/1954962658/DNS.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/DNS.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/DNS.o.d" -o ${OBJECTDIR}/_ext/1954962658/DNS.o "../../../Microchip/TCPIP Stack/DNS.c"  
	
${OBJECTDIR}/_ext/1954962658/DNSs.o: ../../../Microchip/TCPIP\ Stack/DNSs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DNSs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DNSs.o.ok ${OBJECTDIR}/_ext/1954962658/DNSs.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/DNSs.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/DNSs.o.d" -o ${OBJECTDIR}/_ext/1954962658/DNSs.o "../../../Microchip/TCPIP Stack/DNSs.c"  
	
${OBJECTDIR}/_ext/1954962658/Delay.o: ../../../Microchip/TCPIP\ Stack/Delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Delay.o.ok ${OBJECTDIR}/_ext/1954962658/Delay.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/Delay.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/Delay.o.d" -o ${OBJECTDIR}/_ext/1954962658/Delay.o "../../../Microchip/TCPIP Stack/Delay.c"  
	
${OBJECTDIR}/_ext/1954962658/DynDNS.o: ../../../Microchip/TCPIP\ Stack/DynDNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DynDNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DynDNS.o.ok ${OBJECTDIR}/_ext/1954962658/DynDNS.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/DynDNS.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/DynDNS.o.d" -o ${OBJECTDIR}/_ext/1954962658/DynDNS.o "../../../Microchip/TCPIP Stack/DynDNS.c"  
	
${OBJECTDIR}/_ext/1954962658/ENC28J60.o: ../../../Microchip/TCPIP\ Stack/ENC28J60.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.ok ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d" -o ${OBJECTDIR}/_ext/1954962658/ENC28J60.o "../../../Microchip/TCPIP Stack/ENC28J60.c"  
	
${OBJECTDIR}/_ext/1954962658/ENCX24J600.o: ../../../Microchip/TCPIP\ Stack/ENCX24J600.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.ok ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d" -o ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o "../../../Microchip/TCPIP Stack/ENCX24J600.c"  
	
${OBJECTDIR}/_ext/1954962658/FTP.o: ../../../Microchip/TCPIP\ Stack/FTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/FTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/FTP.o.ok ${OBJECTDIR}/_ext/1954962658/FTP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/FTP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/FTP.o.d" -o ${OBJECTDIR}/_ext/1954962658/FTP.o "../../../Microchip/TCPIP Stack/FTP.c"  
	
${OBJECTDIR}/_ext/1954962658/HTTP2.o: ../../../Microchip/TCPIP\ Stack/HTTP2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/HTTP2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/HTTP2.o.ok ${OBJECTDIR}/_ext/1954962658/HTTP2.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/HTTP2.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/HTTP2.o.d" -o ${OBJECTDIR}/_ext/1954962658/HTTP2.o "../../../Microchip/TCPIP Stack/HTTP2.c"  
	
${OBJECTDIR}/_ext/1954962658/Hashes.o: ../../../Microchip/TCPIP\ Stack/Hashes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Hashes.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Hashes.o.ok ${OBJECTDIR}/_ext/1954962658/Hashes.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/Hashes.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/Hashes.o.d" -o ${OBJECTDIR}/_ext/1954962658/Hashes.o "../../../Microchip/TCPIP Stack/Hashes.c"  
	
${OBJECTDIR}/_ext/1954962658/Helpers.o: ../../../Microchip/TCPIP\ Stack/Helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Helpers.o.ok ${OBJECTDIR}/_ext/1954962658/Helpers.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/Helpers.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/Helpers.o.d" -o ${OBJECTDIR}/_ext/1954962658/Helpers.o "../../../Microchip/TCPIP Stack/Helpers.c"  
	
${OBJECTDIR}/_ext/1954962658/ICMP.o: ../../../Microchip/TCPIP\ Stack/ICMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ICMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ICMP.o.ok ${OBJECTDIR}/_ext/1954962658/ICMP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/ICMP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/ICMP.o.d" -o ${OBJECTDIR}/_ext/1954962658/ICMP.o "../../../Microchip/TCPIP Stack/ICMP.c"  
	
${OBJECTDIR}/_ext/1954962658/IP.o: ../../../Microchip/TCPIP\ Stack/IP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/IP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/IP.o.ok ${OBJECTDIR}/_ext/1954962658/IP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/IP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/IP.o.d" -o ${OBJECTDIR}/_ext/1954962658/IP.o "../../../Microchip/TCPIP Stack/IP.c"  
	
${OBJECTDIR}/_ext/1954962658/LCDBlocking.o: ../../../Microchip/TCPIP\ Stack/LCDBlocking.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.ok ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d" -o ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o "../../../Microchip/TCPIP Stack/LCDBlocking.c"  
	
${OBJECTDIR}/_ext/1954962658/MPFS2.o: ../../../Microchip/TCPIP\ Stack/MPFS2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/MPFS2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/MPFS2.o.ok ${OBJECTDIR}/_ext/1954962658/MPFS2.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/MPFS2.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/MPFS2.o.d" -o ${OBJECTDIR}/_ext/1954962658/MPFS2.o "../../../Microchip/TCPIP Stack/MPFS2.c"  
	
${OBJECTDIR}/_ext/1954962658/NBNS.o: ../../../Microchip/TCPIP\ Stack/NBNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/NBNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/NBNS.o.ok ${OBJECTDIR}/_ext/1954962658/NBNS.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/NBNS.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/NBNS.o.d" -o ${OBJECTDIR}/_ext/1954962658/NBNS.o "../../../Microchip/TCPIP Stack/NBNS.c"  
	
${OBJECTDIR}/_ext/1954962658/Reboot.o: ../../../Microchip/TCPIP\ Stack/Reboot.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Reboot.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Reboot.o.ok ${OBJECTDIR}/_ext/1954962658/Reboot.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/Reboot.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/Reboot.o.d" -o ${OBJECTDIR}/_ext/1954962658/Reboot.o "../../../Microchip/TCPIP Stack/Reboot.c"  
	
${OBJECTDIR}/_ext/1954962658/SMTP.o: ../../../Microchip/TCPIP\ Stack/SMTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SMTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SMTP.o.ok ${OBJECTDIR}/_ext/1954962658/SMTP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/SMTP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/SMTP.o.d" -o ${OBJECTDIR}/_ext/1954962658/SMTP.o "../../../Microchip/TCPIP Stack/SMTP.c"  
	
${OBJECTDIR}/_ext/1954962658/SNMP.o: ../../../Microchip/TCPIP\ Stack/SNMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNMP.o.ok ${OBJECTDIR}/_ext/1954962658/SNMP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/SNMP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/SNMP.o.d" -o ${OBJECTDIR}/_ext/1954962658/SNMP.o "../../../Microchip/TCPIP Stack/SNMP.c"  
	
${OBJECTDIR}/_ext/1954962658/SNTP.o: ../../../Microchip/TCPIP\ Stack/SNTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNTP.o.ok ${OBJECTDIR}/_ext/1954962658/SNTP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/SNTP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/SNTP.o.d" -o ${OBJECTDIR}/_ext/1954962658/SNTP.o "../../../Microchip/TCPIP Stack/SNTP.c"  
	
${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o: ../../../Microchip/TCPIP\ Stack/SPIEEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.ok ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d" -o ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o "../../../Microchip/TCPIP Stack/SPIEEPROM.c"  
	
${OBJECTDIR}/_ext/1954962658/SPIFlash.o: ../../../Microchip/TCPIP\ Stack/SPIFlash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.ok ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d" -o ${OBJECTDIR}/_ext/1954962658/SPIFlash.o "../../../Microchip/TCPIP Stack/SPIFlash.c"  
	
${OBJECTDIR}/_ext/1954962658/SPIRAM.o: ../../../Microchip/TCPIP\ Stack/SPIRAM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.ok ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d" -o ${OBJECTDIR}/_ext/1954962658/SPIRAM.o "../../../Microchip/TCPIP Stack/SPIRAM.c"  
	
${OBJECTDIR}/_ext/1954962658/StackTsk.o: ../../../Microchip/TCPIP\ Stack/StackTsk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/StackTsk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/StackTsk.o.ok ${OBJECTDIR}/_ext/1954962658/StackTsk.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/StackTsk.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/StackTsk.o.d" -o ${OBJECTDIR}/_ext/1954962658/StackTsk.o "../../../Microchip/TCPIP Stack/StackTsk.c"  
	
${OBJECTDIR}/_ext/1954962658/TCP.o: ../../../Microchip/TCPIP\ Stack/TCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TCP.o.ok ${OBJECTDIR}/_ext/1954962658/TCP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/TCP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/TCP.o.d" -o ${OBJECTDIR}/_ext/1954962658/TCP.o "../../../Microchip/TCPIP Stack/TCP.c"  
	
${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o: ../../../Microchip/TCPIP\ Stack/TCPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.ok ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d" -o ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o "../../../Microchip/TCPIP Stack/TCPPerformanceTest.c"  
	
${OBJECTDIR}/_ext/1954962658/TFTPc.o: ../../../Microchip/TCPIP\ Stack/TFTPc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TFTPc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TFTPc.o.ok ${OBJECTDIR}/_ext/1954962658/TFTPc.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/TFTPc.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/TFTPc.o.d" -o ${OBJECTDIR}/_ext/1954962658/TFTPc.o "../../../Microchip/TCPIP Stack/TFTPc.c"  
	
${OBJECTDIR}/_ext/1954962658/Telnet.o: ../../../Microchip/TCPIP\ Stack/Telnet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Telnet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Telnet.o.ok ${OBJECTDIR}/_ext/1954962658/Telnet.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/Telnet.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/Telnet.o.d" -o ${OBJECTDIR}/_ext/1954962658/Telnet.o "../../../Microchip/TCPIP Stack/Telnet.c"  
	
${OBJECTDIR}/_ext/1954962658/Tick.o: ../../../Microchip/TCPIP\ Stack/Tick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Tick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Tick.o.ok ${OBJECTDIR}/_ext/1954962658/Tick.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/Tick.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/Tick.o.d" -o ${OBJECTDIR}/_ext/1954962658/Tick.o "../../../Microchip/TCPIP Stack/Tick.c"  
	
${OBJECTDIR}/_ext/1954962658/UART.o: ../../../Microchip/TCPIP\ Stack/UART.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UART.o.ok ${OBJECTDIR}/_ext/1954962658/UART.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/UART.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/UART.o.d" -o ${OBJECTDIR}/_ext/1954962658/UART.o "../../../Microchip/TCPIP Stack/UART.c"  
	
${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o: ../../../Microchip/TCPIP\ Stack/UART2TCPBridge.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.ok ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d" -o ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o "../../../Microchip/TCPIP Stack/UART2TCPBridge.c"  
	
${OBJECTDIR}/_ext/1954962658/UDP.o: ../../../Microchip/TCPIP\ Stack/UDP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UDP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UDP.o.ok ${OBJECTDIR}/_ext/1954962658/UDP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/UDP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/UDP.o.d" -o ${OBJECTDIR}/_ext/1954962658/UDP.o "../../../Microchip/TCPIP Stack/UDP.c"  
	
${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o: ../../../Microchip/TCPIP\ Stack/UDPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.ok ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d" -o ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o "../../../Microchip/TCPIP Stack/UDPPerformanceTest.c"  
	
${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o: ../../../Microchip/TCPIP\ Stack/ZeroconfHelper.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.ok ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d" -o ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o "../../../Microchip/TCPIP Stack/ZeroconfHelper.c"  
	
${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o: ../../../Microchip/TCPIP\ Stack/ZeroconfLinkLocal.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.ok ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.d" -o ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o "../../../Microchip/TCPIP Stack/ZeroconfLinkLocal.c"  
	
${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o: ../../../Microchip/TCPIP\ Stack/ZeroconfMulticastDNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.ok ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.d" -o ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o "../../../Microchip/TCPIP Stack/ZeroconfMulticastDNS.c"  
	
${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o.d 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o.ok ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o.d" -o ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o "../../../Microchip/TCPIP Stack/WiFi/WFConnectionAlgorithm.c"  
	
${OBJECTDIR}/_ext/243675038/WFConnectionManager.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o.d 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o.ok ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFConnectionManager.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/243675038/WFConnectionManager.o.d" -o ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o "../../../Microchip/TCPIP Stack/WiFi/WFConnectionManager.c"  
	
${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o.d 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o.ok ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o.d" -o ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o "../../../Microchip/TCPIP Stack/WiFi/WFConnectionProfile.c"  
	
${OBJECTDIR}/_ext/243675038/WFConsole.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsole.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConsole.o.d 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConsole.o.ok ${OBJECTDIR}/_ext/243675038/WFConsole.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFConsole.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/243675038/WFConsole.o.d" -o ${OBJECTDIR}/_ext/243675038/WFConsole.o "../../../Microchip/TCPIP Stack/WiFi/WFConsole.c"  
	
${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o.ok ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o.d" -o ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o "../../../Microchip/TCPIP Stack/WiFi/WFConsoleIfconfig.c"  
	
${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o.ok ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o.d" -o ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o "../../../Microchip/TCPIP Stack/WiFi/WFConsoleIwconfig.c"  
	
${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o.d 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o.ok ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o.d" -o ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o "../../../Microchip/TCPIP Stack/WiFi/WFConsoleIwpriv.c"  
	
${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o.d 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o.ok ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o.d" -o ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o "../../../Microchip/TCPIP Stack/WiFi/WFConsoleMsgHandler.c"  
	
${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o.d 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o.ok ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o.d" -o ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o "../../../Microchip/TCPIP Stack/WiFi/WFConsoleMsgs.c"  
	
${OBJECTDIR}/_ext/243675038/WFDataTxRx.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o.d 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o.ok ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFDataTxRx.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/243675038/WFDataTxRx.o.d" -o ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o "../../../Microchip/TCPIP Stack/WiFi/WFDataTxRx.c"  
	
${OBJECTDIR}/_ext/243675038/WFDriverCom.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFDriverCom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFDriverCom.o.d 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFDriverCom.o.ok ${OBJECTDIR}/_ext/243675038/WFDriverCom.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFDriverCom.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/243675038/WFDriverCom.o.d" -o ${OBJECTDIR}/_ext/243675038/WFDriverCom.o "../../../Microchip/TCPIP Stack/WiFi/WFDriverCom.c"  
	
${OBJECTDIR}/_ext/243675038/WFDriverRaw.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o.d 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o.ok ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFDriverRaw.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/243675038/WFDriverRaw.o.d" -o ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o "../../../Microchip/TCPIP Stack/WiFi/WFDriverRaw.c"  
	
${OBJECTDIR}/_ext/243675038/WFEasyConfig.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFEasyConfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFEasyConfig.o.ok ${OBJECTDIR}/_ext/243675038/WFEasyConfig.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFEasyConfig.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/243675038/WFEasyConfig.o.d" -o ${OBJECTDIR}/_ext/243675038/WFEasyConfig.o "../../../Microchip/TCPIP Stack/WiFi/WFEasyConfig.c"  
	
${OBJECTDIR}/_ext/243675038/WFEventHandler.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFEventHandler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFEventHandler.o.d 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFEventHandler.o.ok ${OBJECTDIR}/_ext/243675038/WFEventHandler.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFEventHandler.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/243675038/WFEventHandler.o.d" -o ${OBJECTDIR}/_ext/243675038/WFEventHandler.o "../../../Microchip/TCPIP Stack/WiFi/WFEventHandler.c"  
	
${OBJECTDIR}/_ext/243675038/WFInit.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFInit.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFInit.o.d 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFInit.o.ok ${OBJECTDIR}/_ext/243675038/WFInit.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFInit.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/243675038/WFInit.o.d" -o ${OBJECTDIR}/_ext/243675038/WFInit.o "../../../Microchip/TCPIP Stack/WiFi/WFInit.c"  
	
${OBJECTDIR}/_ext/243675038/WFMac.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFMac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFMac.o.d 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFMac.o.ok ${OBJECTDIR}/_ext/243675038/WFMac.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFMac.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/243675038/WFMac.o.d" -o ${OBJECTDIR}/_ext/243675038/WFMac.o "../../../Microchip/TCPIP Stack/WiFi/WFMac.c"  
	
${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o.d 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o.ok ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o.d" -o ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o "../../../Microchip/TCPIP Stack/WiFi/WFMgmtMsg.c"  
	
${OBJECTDIR}/_ext/243675038/WFParamMsg.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFParamMsg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFParamMsg.o.d 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFParamMsg.o.ok ${OBJECTDIR}/_ext/243675038/WFParamMsg.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFParamMsg.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/243675038/WFParamMsg.o.d" -o ${OBJECTDIR}/_ext/243675038/WFParamMsg.o "../../../Microchip/TCPIP Stack/WiFi/WFParamMsg.c"  
	
${OBJECTDIR}/_ext/243675038/WFPowerSave.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFPowerSave.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFPowerSave.o.d 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFPowerSave.o.ok ${OBJECTDIR}/_ext/243675038/WFPowerSave.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFPowerSave.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/243675038/WFPowerSave.o.d" -o ${OBJECTDIR}/_ext/243675038/WFPowerSave.o "../../../Microchip/TCPIP Stack/WiFi/WFPowerSave.c"  
	
${OBJECTDIR}/_ext/243675038/WFScan.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFScan.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFScan.o.d 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFScan.o.ok ${OBJECTDIR}/_ext/243675038/WFScan.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFScan.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/243675038/WFScan.o.d" -o ${OBJECTDIR}/_ext/243675038/WFScan.o "../../../Microchip/TCPIP Stack/WiFi/WFScan.c"  
	
${OBJECTDIR}/_ext/243675038/WFTxPower.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFTxPower.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFTxPower.o.d 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFTxPower.o.ok ${OBJECTDIR}/_ext/243675038/WFTxPower.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFTxPower.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/243675038/WFTxPower.o.d" -o ${OBJECTDIR}/_ext/243675038/WFTxPower.o "../../../Microchip/TCPIP Stack/WiFi/WFTxPower.c"  
	
${OBJECTDIR}/_ext/243675038/WF_Eint.o: ../../../Microchip/TCPIP\ Stack/WiFi/WF_Eint.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WF_Eint.o.d 
	@${RM} ${OBJECTDIR}/_ext/243675038/WF_Eint.o.ok ${OBJECTDIR}/_ext/243675038/WF_Eint.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WF_Eint.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/243675038/WF_Eint.o.d" -o ${OBJECTDIR}/_ext/243675038/WF_Eint.o "../../../Microchip/TCPIP Stack/WiFi/WF_Eint.c"  
	
${OBJECTDIR}/_ext/243675038/WF_Spi.o: ../../../Microchip/TCPIP\ Stack/WiFi/WF_Spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WF_Spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/243675038/WF_Spi.o.ok ${OBJECTDIR}/_ext/243675038/WF_Spi.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WF_Spi.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/243675038/WF_Spi.o.d" -o ${OBJECTDIR}/_ext/243675038/WF_Spi.o "../../../Microchip/TCPIP Stack/WiFi/WF_Spi.c"  
	
${OBJECTDIR}/_ext/1472/CustomHTTPApp.o: ../CustomHTTPApp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.ok ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d" -o ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o ../CustomHTTPApp.c  
	
${OBJECTDIR}/_ext/1472/IperfApp.o: ../IperfApp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/IperfApp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/IperfApp.o.ok ${OBJECTDIR}/_ext/1472/IperfApp.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/IperfApp.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1472/IperfApp.o.d" -o ${OBJECTDIR}/_ext/1472/IperfApp.o ../IperfApp.c  
	
${OBJECTDIR}/_ext/1472/MainDemo.o: ../MainDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.ok ${OBJECTDIR}/_ext/1472/MainDemo.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/MainDemo.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1472/MainDemo.o.d" -o ${OBJECTDIR}/_ext/1472/MainDemo.o ../MainDemo.c  
	
${OBJECTDIR}/_ext/1472/PingDemo.o: ../PingDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/PingDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/PingDemo.o.ok ${OBJECTDIR}/_ext/1472/PingDemo.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/PingDemo.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1472/PingDemo.o.d" -o ${OBJECTDIR}/_ext/1472/PingDemo.o ../PingDemo.c  
	
${OBJECTDIR}/_ext/1472/UARTConfig.o: ../UARTConfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o.ok ${OBJECTDIR}/_ext/1472/UARTConfig.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/UARTConfig.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1472/UARTConfig.o.d" -o ${OBJECTDIR}/_ext/1472/UARTConfig.o ../UARTConfig.c  
	
${OBJECTDIR}/_ext/1472/WF_Config.o: ../WF_Config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/WF_Config.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/WF_Config.o.ok ${OBJECTDIR}/_ext/1472/WF_Config.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/WF_Config.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF "${OBJECTDIR}/_ext/1472/WF_Config.o.d" -o ${OBJECTDIR}/_ext/1472/WF_Config.o ../WF_Config.c  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}        -Wl,--defsym=__MPLAB_BUILD=1,--heap=1000,--no-check-sections,-L"..",-Map="$(BINDIR_)$(TARGETBASE).map",--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1
else
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf -mcpu=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}        -Wl,--defsym=__MPLAB_BUILD=1,--heap=1000,--no-check-sections,-L"..",-Map="$(BINDIR_)$(TARGETBASE).map",--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION)
	${MP_CC_DIR}\\pic30-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -omf=elf
endif


# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf:
	${RM} -r build/C30-DA210_BRD_MRF24WB
	${RM} -r dist/C30-DA210_BRD_MRF24WB

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
