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
CND_CONF=C30-DA210_BRD_MRF24WB

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
OBJECTFILES=${OBJECTDIR}/_ext/1954962658/DynDNS.o ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o ${OBJECTDIR}/_ext/1954962658/DHCP.o ${OBJECTDIR}/_ext/243675038/WFMac.o ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o ${OBJECTDIR}/_ext/1954962658/UART.o ${OBJECTDIR}/_ext/1954962658/SPIFlash.o ${OBJECTDIR}/_ext/1954962658/FTP.o ${OBJECTDIR}/_ext/1954962658/Tick.o ${OBJECTDIR}/_ext/243675038/WFInit.o ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o ${OBJECTDIR}/_ext/243675038/WFParamMsg.o ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o ${OBJECTDIR}/_ext/1954962658/ARP.o ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o ${OBJECTDIR}/_ext/1954962658/UDP.o ${OBJECTDIR}/_ext/1472/PingDemo.o ${OBJECTDIR}/_ext/243675038/WFScan.o ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o ${OBJECTDIR}/_ext/1954962658/SNTP.o ${OBJECTDIR}/_ext/1954962658/ENC28J60.o ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o ${OBJECTDIR}/_ext/1954962658/StackTsk.o ${OBJECTDIR}/_ext/1472/MainDemo.o ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o ${OBJECTDIR}/_ext/1954962658/Announce.o ${OBJECTDIR}/_ext/1954962658/SNMP.o ${OBJECTDIR}/_ext/1954962658/Delay.o ${OBJECTDIR}/_ext/1954962658/HTTP2.o ${OBJECTDIR}/_ext/1954962658/SMTP.o ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o ${OBJECTDIR}/_ext/1954962658/SPIRAM.o ${OBJECTDIR}/_ext/243675038/WFEasyConfig.o ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o ${OBJECTDIR}/_ext/1954962658/TFTPc.o ${OBJECTDIR}/_ext/1472/IperfApp.o ${OBJECTDIR}/_ext/243675038/WF_Eint.o ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o ${OBJECTDIR}/_ext/1954962658/MPFS2.o ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o ${OBJECTDIR}/_ext/243675038/WFEventHandler.o ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o ${OBJECTDIR}/_ext/1954962658/AutoIP.o ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o ${OBJECTDIR}/_ext/1954962658/NBNS.o ${OBJECTDIR}/_ext/243675038/WFPowerSave.o ${OBJECTDIR}/_ext/1954962658/Hashes.o ${OBJECTDIR}/_ext/1954962658/Telnet.o ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o ${OBJECTDIR}/_ext/1954962658/Reboot.o ${OBJECTDIR}/_ext/243675038/WFConsole.o ${OBJECTDIR}/_ext/1954962658/DNS.o ${OBJECTDIR}/_ext/1954962658/DHCPs.o ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o ${OBJECTDIR}/_ext/243675038/WF_Spi.o ${OBJECTDIR}/_ext/1472/UARTConfig.o ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o ${OBJECTDIR}/_ext/243675038/WFDriverCom.o ${OBJECTDIR}/_ext/1954962658/DNSs.o ${OBJECTDIR}/_ext/1472/WF_Config.o ${OBJECTDIR}/_ext/1954962658/TCP.o ${OBJECTDIR}/_ext/1954962658/ICMP.o ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o ${OBJECTDIR}/_ext/1954962658/Helpers.o ${OBJECTDIR}/_ext/243675038/WFTxPower.o ${OBJECTDIR}/_ext/1954962658/IP.o


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

# Path to java used to run MPLAB X when this makefile was created
MP_JAVA_PATH=C:\\Program\ Files\\Java\\jdk1.6.0_18\\jre/bin/
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
	${MAKE}  -f nbproject/Makefile-C30-DA210_BRD_MRF24WB.mk dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf

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
${OBJECTDIR}/_ext/1954962658/DynDNS.o: ../../../Microchip/TCPIP\ Stack/DynDNS.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/DynDNS.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/DynDNS.o.d -o ${OBJECTDIR}/_ext/1954962658/DynDNS.o ../../../Microchip/TCPIP\ Stack/DynDNS.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/DynDNS.o.d > ${OBJECTDIR}/_ext/1954962658/DynDNS.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/DynDNS.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/DynDNS.o.tmp ${OBJECTDIR}/_ext/1954962658/DynDNS.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/DynDNS.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/DynDNS.o.d > ${OBJECTDIR}/_ext/1954962658/DynDNS.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/DynDNS.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/DynDNS.o.tmp ${OBJECTDIR}/_ext/1954962658/DynDNS.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/DynDNS.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o: ../../../Microchip/TCPIP\ Stack/ZeroconfLinkLocal.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.d -o ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o ../../../Microchip/TCPIP\ Stack/ZeroconfLinkLocal.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.d > ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.tmp ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.d > ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.tmp ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/DHCP.o: ../../../Microchip/TCPIP\ Stack/DHCP.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/DHCP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/DHCP.o.d -o ${OBJECTDIR}/_ext/1954962658/DHCP.o ../../../Microchip/TCPIP\ Stack/DHCP.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/DHCP.o.d > ${OBJECTDIR}/_ext/1954962658/DHCP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/DHCP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/DHCP.o.tmp ${OBJECTDIR}/_ext/1954962658/DHCP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/DHCP.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/DHCP.o.d > ${OBJECTDIR}/_ext/1954962658/DHCP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/DHCP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/DHCP.o.tmp ${OBJECTDIR}/_ext/1954962658/DHCP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/DHCP.o.tmp
endif
${OBJECTDIR}/_ext/243675038/WFMac.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFMac.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${RM} ${OBJECTDIR}/_ext/243675038/WFMac.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/243675038/WFMac.o.d -o ${OBJECTDIR}/_ext/243675038/WFMac.o ../../../Microchip/TCPIP\ Stack/WiFi/WFMac.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/243675038/WFMac.o.d > ${OBJECTDIR}/_ext/243675038/WFMac.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFMac.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFMac.o.tmp ${OBJECTDIR}/_ext/243675038/WFMac.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFMac.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/243675038/WFMac.o.d > ${OBJECTDIR}/_ext/243675038/WFMac.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFMac.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFMac.o.tmp ${OBJECTDIR}/_ext/243675038/WFMac.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFMac.o.tmp
endif
${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${RM} ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o.d -o ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o ../../../Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o.d > ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o.tmp ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o.d > ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o.tmp ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/UART.o: ../../../Microchip/TCPIP\ Stack/UART.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/UART.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/UART.o.d -o ${OBJECTDIR}/_ext/1954962658/UART.o ../../../Microchip/TCPIP\ Stack/UART.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/UART.o.d > ${OBJECTDIR}/_ext/1954962658/UART.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/UART.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/UART.o.tmp ${OBJECTDIR}/_ext/1954962658/UART.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/UART.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/UART.o.d > ${OBJECTDIR}/_ext/1954962658/UART.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/UART.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/UART.o.tmp ${OBJECTDIR}/_ext/1954962658/UART.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/UART.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/SPIFlash.o: ../../../Microchip/TCPIP\ Stack/SPIFlash.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d -o ${OBJECTDIR}/_ext/1954962658/SPIFlash.o ../../../Microchip/TCPIP\ Stack/SPIFlash.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d > ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.tmp ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d > ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.tmp ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/FTP.o: ../../../Microchip/TCPIP\ Stack/FTP.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/FTP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/FTP.o.d -o ${OBJECTDIR}/_ext/1954962658/FTP.o ../../../Microchip/TCPIP\ Stack/FTP.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/FTP.o.d > ${OBJECTDIR}/_ext/1954962658/FTP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/FTP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/FTP.o.tmp ${OBJECTDIR}/_ext/1954962658/FTP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/FTP.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/FTP.o.d > ${OBJECTDIR}/_ext/1954962658/FTP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/FTP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/FTP.o.tmp ${OBJECTDIR}/_ext/1954962658/FTP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/FTP.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/Tick.o: ../../../Microchip/TCPIP\ Stack/Tick.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/Tick.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/Tick.o.d -o ${OBJECTDIR}/_ext/1954962658/Tick.o ../../../Microchip/TCPIP\ Stack/Tick.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/Tick.o.d > ${OBJECTDIR}/_ext/1954962658/Tick.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/Tick.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/Tick.o.tmp ${OBJECTDIR}/_ext/1954962658/Tick.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/Tick.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/Tick.o.d > ${OBJECTDIR}/_ext/1954962658/Tick.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/Tick.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/Tick.o.tmp ${OBJECTDIR}/_ext/1954962658/Tick.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/Tick.o.tmp
endif
${OBJECTDIR}/_ext/243675038/WFInit.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFInit.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${RM} ${OBJECTDIR}/_ext/243675038/WFInit.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/243675038/WFInit.o.d -o ${OBJECTDIR}/_ext/243675038/WFInit.o ../../../Microchip/TCPIP\ Stack/WiFi/WFInit.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/243675038/WFInit.o.d > ${OBJECTDIR}/_ext/243675038/WFInit.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFInit.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFInit.o.tmp ${OBJECTDIR}/_ext/243675038/WFInit.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFInit.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/243675038/WFInit.o.d > ${OBJECTDIR}/_ext/243675038/WFInit.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFInit.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFInit.o.tmp ${OBJECTDIR}/_ext/243675038/WFInit.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFInit.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o: ../../../Microchip/TCPIP\ Stack/UDPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d -o ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o ../../../Microchip/TCPIP\ Stack/UDPPerformanceTest.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d > ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.tmp ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d > ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.tmp ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.tmp
endif
${OBJECTDIR}/_ext/243675038/WFParamMsg.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFParamMsg.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${RM} ${OBJECTDIR}/_ext/243675038/WFParamMsg.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/243675038/WFParamMsg.o.d -o ${OBJECTDIR}/_ext/243675038/WFParamMsg.o ../../../Microchip/TCPIP\ Stack/WiFi/WFParamMsg.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/243675038/WFParamMsg.o.d > ${OBJECTDIR}/_ext/243675038/WFParamMsg.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFParamMsg.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFParamMsg.o.tmp ${OBJECTDIR}/_ext/243675038/WFParamMsg.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFParamMsg.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/243675038/WFParamMsg.o.d > ${OBJECTDIR}/_ext/243675038/WFParamMsg.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFParamMsg.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFParamMsg.o.tmp ${OBJECTDIR}/_ext/243675038/WFParamMsg.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFParamMsg.o.tmp
endif
${OBJECTDIR}/_ext/243675038/WFDriverRaw.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${RM} ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o.d -o ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o ../../../Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o.d > ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o.tmp ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o.d > ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o.tmp ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/ARP.o: ../../../Microchip/TCPIP\ Stack/ARP.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/ARP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/ARP.o.d -o ${OBJECTDIR}/_ext/1954962658/ARP.o ../../../Microchip/TCPIP\ Stack/ARP.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/ARP.o.d > ${OBJECTDIR}/_ext/1954962658/ARP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/ARP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/ARP.o.tmp ${OBJECTDIR}/_ext/1954962658/ARP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/ARP.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/ARP.o.d > ${OBJECTDIR}/_ext/1954962658/ARP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/ARP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/ARP.o.tmp ${OBJECTDIR}/_ext/1954962658/ARP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/ARP.o.tmp
endif
${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o.d -o ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o.d > ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o.tmp ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o.d > ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o.tmp ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/UDP.o: ../../../Microchip/TCPIP\ Stack/UDP.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/UDP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/UDP.o.d -o ${OBJECTDIR}/_ext/1954962658/UDP.o ../../../Microchip/TCPIP\ Stack/UDP.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/UDP.o.d > ${OBJECTDIR}/_ext/1954962658/UDP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/UDP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/UDP.o.tmp ${OBJECTDIR}/_ext/1954962658/UDP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/UDP.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/UDP.o.d > ${OBJECTDIR}/_ext/1954962658/UDP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/UDP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/UDP.o.tmp ${OBJECTDIR}/_ext/1954962658/UDP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/UDP.o.tmp
endif
${OBJECTDIR}/_ext/1472/PingDemo.o: ../PingDemo.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/PingDemo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1472/PingDemo.o.d -o ${OBJECTDIR}/_ext/1472/PingDemo.o ../PingDemo.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/PingDemo.o.d > ${OBJECTDIR}/_ext/1472/PingDemo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/PingDemo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/PingDemo.o.tmp ${OBJECTDIR}/_ext/1472/PingDemo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/PingDemo.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/PingDemo.o.d > ${OBJECTDIR}/_ext/1472/PingDemo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/PingDemo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/PingDemo.o.tmp ${OBJECTDIR}/_ext/1472/PingDemo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/PingDemo.o.tmp
endif
${OBJECTDIR}/_ext/243675038/WFScan.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFScan.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${RM} ${OBJECTDIR}/_ext/243675038/WFScan.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/243675038/WFScan.o.d -o ${OBJECTDIR}/_ext/243675038/WFScan.o ../../../Microchip/TCPIP\ Stack/WiFi/WFScan.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/243675038/WFScan.o.d > ${OBJECTDIR}/_ext/243675038/WFScan.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFScan.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFScan.o.tmp ${OBJECTDIR}/_ext/243675038/WFScan.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFScan.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/243675038/WFScan.o.d > ${OBJECTDIR}/_ext/243675038/WFScan.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFScan.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFScan.o.tmp ${OBJECTDIR}/_ext/243675038/WFScan.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFScan.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o: ../../../Microchip/TCPIP\ Stack/ZeroconfMulticastDNS.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.d -o ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o ../../../Microchip/TCPIP\ Stack/ZeroconfMulticastDNS.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.d > ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.tmp ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.d > ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.tmp ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o: ../../../Microchip/TCPIP\ Stack/BerkeleyAPI.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d -o ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o ../../../Microchip/TCPIP\ Stack/BerkeleyAPI.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d > ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.tmp ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d > ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.tmp ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/SNTP.o: ../../../Microchip/TCPIP\ Stack/SNTP.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/SNTP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/SNTP.o.d -o ${OBJECTDIR}/_ext/1954962658/SNTP.o ../../../Microchip/TCPIP\ Stack/SNTP.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/SNTP.o.d > ${OBJECTDIR}/_ext/1954962658/SNTP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/SNTP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/SNTP.o.tmp ${OBJECTDIR}/_ext/1954962658/SNTP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/SNTP.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/SNTP.o.d > ${OBJECTDIR}/_ext/1954962658/SNTP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/SNTP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/SNTP.o.tmp ${OBJECTDIR}/_ext/1954962658/SNTP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/SNTP.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/ENC28J60.o: ../../../Microchip/TCPIP\ Stack/ENC28J60.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d -o ${OBJECTDIR}/_ext/1954962658/ENC28J60.o ../../../Microchip/TCPIP\ Stack/ENC28J60.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d > ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.tmp ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d > ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.tmp ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o: ../../../Microchip/TCPIP\ Stack/UART2TCPBridge.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d -o ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o ../../../Microchip/TCPIP\ Stack/UART2TCPBridge.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d > ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.tmp ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d > ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.tmp ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/StackTsk.o: ../../../Microchip/TCPIP\ Stack/StackTsk.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/StackTsk.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/StackTsk.o.d -o ${OBJECTDIR}/_ext/1954962658/StackTsk.o ../../../Microchip/TCPIP\ Stack/StackTsk.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/StackTsk.o.d > ${OBJECTDIR}/_ext/1954962658/StackTsk.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/StackTsk.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/StackTsk.o.tmp ${OBJECTDIR}/_ext/1954962658/StackTsk.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/StackTsk.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/StackTsk.o.d > ${OBJECTDIR}/_ext/1954962658/StackTsk.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/StackTsk.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/StackTsk.o.tmp ${OBJECTDIR}/_ext/1954962658/StackTsk.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/StackTsk.o.tmp
endif
${OBJECTDIR}/_ext/1472/MainDemo.o: ../MainDemo.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1472/MainDemo.o.d -o ${OBJECTDIR}/_ext/1472/MainDemo.o ../MainDemo.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/MainDemo.o.d > ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/MainDemo.o.d > ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp
endif
${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o.d -o ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o ../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o.d > ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o.tmp ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o.d > ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o.tmp ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o.tmp
endif
${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o.d -o ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o.d > ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o.tmp ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o.d > ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o.tmp ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/Announce.o: ../../../Microchip/TCPIP\ Stack/Announce.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/Announce.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/Announce.o.d -o ${OBJECTDIR}/_ext/1954962658/Announce.o ../../../Microchip/TCPIP\ Stack/Announce.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/Announce.o.d > ${OBJECTDIR}/_ext/1954962658/Announce.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/Announce.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/Announce.o.tmp ${OBJECTDIR}/_ext/1954962658/Announce.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/Announce.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/Announce.o.d > ${OBJECTDIR}/_ext/1954962658/Announce.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/Announce.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/Announce.o.tmp ${OBJECTDIR}/_ext/1954962658/Announce.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/Announce.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/SNMP.o: ../../../Microchip/TCPIP\ Stack/SNMP.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/SNMP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/SNMP.o.d -o ${OBJECTDIR}/_ext/1954962658/SNMP.o ../../../Microchip/TCPIP\ Stack/SNMP.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/SNMP.o.d > ${OBJECTDIR}/_ext/1954962658/SNMP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/SNMP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/SNMP.o.tmp ${OBJECTDIR}/_ext/1954962658/SNMP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/SNMP.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/SNMP.o.d > ${OBJECTDIR}/_ext/1954962658/SNMP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/SNMP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/SNMP.o.tmp ${OBJECTDIR}/_ext/1954962658/SNMP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/SNMP.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/Delay.o: ../../../Microchip/TCPIP\ Stack/Delay.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/Delay.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/Delay.o.d -o ${OBJECTDIR}/_ext/1954962658/Delay.o ../../../Microchip/TCPIP\ Stack/Delay.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/Delay.o.d > ${OBJECTDIR}/_ext/1954962658/Delay.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/Delay.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/Delay.o.tmp ${OBJECTDIR}/_ext/1954962658/Delay.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/Delay.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/Delay.o.d > ${OBJECTDIR}/_ext/1954962658/Delay.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/Delay.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/Delay.o.tmp ${OBJECTDIR}/_ext/1954962658/Delay.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/Delay.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/HTTP2.o: ../../../Microchip/TCPIP\ Stack/HTTP2.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/HTTP2.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/HTTP2.o.d -o ${OBJECTDIR}/_ext/1954962658/HTTP2.o ../../../Microchip/TCPIP\ Stack/HTTP2.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/HTTP2.o.d > ${OBJECTDIR}/_ext/1954962658/HTTP2.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/HTTP2.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/HTTP2.o.tmp ${OBJECTDIR}/_ext/1954962658/HTTP2.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/HTTP2.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/HTTP2.o.d > ${OBJECTDIR}/_ext/1954962658/HTTP2.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/HTTP2.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/HTTP2.o.tmp ${OBJECTDIR}/_ext/1954962658/HTTP2.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/HTTP2.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/SMTP.o: ../../../Microchip/TCPIP\ Stack/SMTP.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/SMTP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/SMTP.o.d -o ${OBJECTDIR}/_ext/1954962658/SMTP.o ../../../Microchip/TCPIP\ Stack/SMTP.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/SMTP.o.d > ${OBJECTDIR}/_ext/1954962658/SMTP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/SMTP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/SMTP.o.tmp ${OBJECTDIR}/_ext/1954962658/SMTP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/SMTP.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/SMTP.o.d > ${OBJECTDIR}/_ext/1954962658/SMTP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/SMTP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/SMTP.o.tmp ${OBJECTDIR}/_ext/1954962658/SMTP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/SMTP.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/ENCX24J600.o: ../../../Microchip/TCPIP\ Stack/ENCX24J600.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d -o ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o ../../../Microchip/TCPIP\ Stack/ENCX24J600.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d > ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.tmp ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d > ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.tmp ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/SPIRAM.o: ../../../Microchip/TCPIP\ Stack/SPIRAM.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d -o ${OBJECTDIR}/_ext/1954962658/SPIRAM.o ../../../Microchip/TCPIP\ Stack/SPIRAM.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d > ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.tmp ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d > ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.tmp ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.tmp
endif
${OBJECTDIR}/_ext/243675038/WFEasyConfig.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${RM} ${OBJECTDIR}/_ext/243675038/WFEasyConfig.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/243675038/WFEasyConfig.o.d -o ${OBJECTDIR}/_ext/243675038/WFEasyConfig.o ../../../Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/243675038/WFEasyConfig.o.d > ${OBJECTDIR}/_ext/243675038/WFEasyConfig.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFEasyConfig.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFEasyConfig.o.tmp ${OBJECTDIR}/_ext/243675038/WFEasyConfig.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFEasyConfig.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/243675038/WFEasyConfig.o.d > ${OBJECTDIR}/_ext/243675038/WFEasyConfig.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFEasyConfig.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFEasyConfig.o.tmp ${OBJECTDIR}/_ext/243675038/WFEasyConfig.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFEasyConfig.o.tmp
endif
${OBJECTDIR}/_ext/243675038/WFConnectionManager.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o.d -o ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o ../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o.d > ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o.tmp ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o.d > ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o.tmp ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/TFTPc.o: ../../../Microchip/TCPIP\ Stack/TFTPc.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/TFTPc.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/TFTPc.o.d -o ${OBJECTDIR}/_ext/1954962658/TFTPc.o ../../../Microchip/TCPIP\ Stack/TFTPc.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/TFTPc.o.d > ${OBJECTDIR}/_ext/1954962658/TFTPc.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/TFTPc.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/TFTPc.o.tmp ${OBJECTDIR}/_ext/1954962658/TFTPc.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/TFTPc.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/TFTPc.o.d > ${OBJECTDIR}/_ext/1954962658/TFTPc.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/TFTPc.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/TFTPc.o.tmp ${OBJECTDIR}/_ext/1954962658/TFTPc.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/TFTPc.o.tmp
endif
${OBJECTDIR}/_ext/1472/IperfApp.o: ../IperfApp.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/IperfApp.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1472/IperfApp.o.d -o ${OBJECTDIR}/_ext/1472/IperfApp.o ../IperfApp.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/IperfApp.o.d > ${OBJECTDIR}/_ext/1472/IperfApp.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/IperfApp.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/IperfApp.o.tmp ${OBJECTDIR}/_ext/1472/IperfApp.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/IperfApp.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/IperfApp.o.d > ${OBJECTDIR}/_ext/1472/IperfApp.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/IperfApp.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/IperfApp.o.tmp ${OBJECTDIR}/_ext/1472/IperfApp.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/IperfApp.o.tmp
endif
${OBJECTDIR}/_ext/243675038/WF_Eint.o: ../../../Microchip/TCPIP\ Stack/WiFi/WF_Eint.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${RM} ${OBJECTDIR}/_ext/243675038/WF_Eint.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/243675038/WF_Eint.o.d -o ${OBJECTDIR}/_ext/243675038/WF_Eint.o ../../../Microchip/TCPIP\ Stack/WiFi/WF_Eint.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/243675038/WF_Eint.o.d > ${OBJECTDIR}/_ext/243675038/WF_Eint.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WF_Eint.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WF_Eint.o.tmp ${OBJECTDIR}/_ext/243675038/WF_Eint.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WF_Eint.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/243675038/WF_Eint.o.d > ${OBJECTDIR}/_ext/243675038/WF_Eint.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WF_Eint.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WF_Eint.o.tmp ${OBJECTDIR}/_ext/243675038/WF_Eint.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WF_Eint.o.tmp
endif
${OBJECTDIR}/_ext/243675038/WFDataTxRx.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${RM} ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o.d -o ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o ../../../Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o.d > ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o.tmp ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o.d > ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o.tmp ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/MPFS2.o: ../../../Microchip/TCPIP\ Stack/MPFS2.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/MPFS2.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/MPFS2.o.d -o ${OBJECTDIR}/_ext/1954962658/MPFS2.o ../../../Microchip/TCPIP\ Stack/MPFS2.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/MPFS2.o.d > ${OBJECTDIR}/_ext/1954962658/MPFS2.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/MPFS2.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/MPFS2.o.tmp ${OBJECTDIR}/_ext/1954962658/MPFS2.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/MPFS2.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/MPFS2.o.d > ${OBJECTDIR}/_ext/1954962658/MPFS2.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/MPFS2.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/MPFS2.o.tmp ${OBJECTDIR}/_ext/1954962658/MPFS2.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/MPFS2.o.tmp
endif
${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o.d -o ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o.d > ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o.tmp ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o.d > ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o.tmp ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o.tmp
endif
${OBJECTDIR}/_ext/243675038/WFEventHandler.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFEventHandler.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${RM} ${OBJECTDIR}/_ext/243675038/WFEventHandler.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/243675038/WFEventHandler.o.d -o ${OBJECTDIR}/_ext/243675038/WFEventHandler.o ../../../Microchip/TCPIP\ Stack/WiFi/WFEventHandler.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/243675038/WFEventHandler.o.d > ${OBJECTDIR}/_ext/243675038/WFEventHandler.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFEventHandler.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFEventHandler.o.tmp ${OBJECTDIR}/_ext/243675038/WFEventHandler.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFEventHandler.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/243675038/WFEventHandler.o.d > ${OBJECTDIR}/_ext/243675038/WFEventHandler.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFEventHandler.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFEventHandler.o.tmp ${OBJECTDIR}/_ext/243675038/WFEventHandler.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFEventHandler.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/LCDBlocking.o: ../../../Microchip/TCPIP\ Stack/LCDBlocking.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d -o ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o ../../../Microchip/TCPIP\ Stack/LCDBlocking.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d > ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.tmp ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d > ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.tmp ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/AutoIP.o: ../../../Microchip/TCPIP\ Stack/AutoIP.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/AutoIP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/AutoIP.o.d -o ${OBJECTDIR}/_ext/1954962658/AutoIP.o ../../../Microchip/TCPIP\ Stack/AutoIP.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/AutoIP.o.d > ${OBJECTDIR}/_ext/1954962658/AutoIP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/AutoIP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/AutoIP.o.tmp ${OBJECTDIR}/_ext/1954962658/AutoIP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/AutoIP.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/AutoIP.o.d > ${OBJECTDIR}/_ext/1954962658/AutoIP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/AutoIP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/AutoIP.o.tmp ${OBJECTDIR}/_ext/1954962658/AutoIP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/AutoIP.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o: ../../../Microchip/TCPIP\ Stack/TCPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d -o ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o ../../../Microchip/TCPIP\ Stack/TCPPerformanceTest.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d > ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.tmp ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d > ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.tmp ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/NBNS.o: ../../../Microchip/TCPIP\ Stack/NBNS.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/NBNS.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/NBNS.o.d -o ${OBJECTDIR}/_ext/1954962658/NBNS.o ../../../Microchip/TCPIP\ Stack/NBNS.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/NBNS.o.d > ${OBJECTDIR}/_ext/1954962658/NBNS.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/NBNS.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/NBNS.o.tmp ${OBJECTDIR}/_ext/1954962658/NBNS.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/NBNS.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/NBNS.o.d > ${OBJECTDIR}/_ext/1954962658/NBNS.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/NBNS.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/NBNS.o.tmp ${OBJECTDIR}/_ext/1954962658/NBNS.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/NBNS.o.tmp
endif
${OBJECTDIR}/_ext/243675038/WFPowerSave.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFPowerSave.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${RM} ${OBJECTDIR}/_ext/243675038/WFPowerSave.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/243675038/WFPowerSave.o.d -o ${OBJECTDIR}/_ext/243675038/WFPowerSave.o ../../../Microchip/TCPIP\ Stack/WiFi/WFPowerSave.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/243675038/WFPowerSave.o.d > ${OBJECTDIR}/_ext/243675038/WFPowerSave.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFPowerSave.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFPowerSave.o.tmp ${OBJECTDIR}/_ext/243675038/WFPowerSave.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFPowerSave.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/243675038/WFPowerSave.o.d > ${OBJECTDIR}/_ext/243675038/WFPowerSave.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFPowerSave.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFPowerSave.o.tmp ${OBJECTDIR}/_ext/243675038/WFPowerSave.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFPowerSave.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/Hashes.o: ../../../Microchip/TCPIP\ Stack/Hashes.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/Hashes.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/Hashes.o.d -o ${OBJECTDIR}/_ext/1954962658/Hashes.o ../../../Microchip/TCPIP\ Stack/Hashes.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/Hashes.o.d > ${OBJECTDIR}/_ext/1954962658/Hashes.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/Hashes.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/Hashes.o.tmp ${OBJECTDIR}/_ext/1954962658/Hashes.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/Hashes.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/Hashes.o.d > ${OBJECTDIR}/_ext/1954962658/Hashes.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/Hashes.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/Hashes.o.tmp ${OBJECTDIR}/_ext/1954962658/Hashes.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/Hashes.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/Telnet.o: ../../../Microchip/TCPIP\ Stack/Telnet.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/Telnet.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/Telnet.o.d -o ${OBJECTDIR}/_ext/1954962658/Telnet.o ../../../Microchip/TCPIP\ Stack/Telnet.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/Telnet.o.d > ${OBJECTDIR}/_ext/1954962658/Telnet.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/Telnet.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/Telnet.o.tmp ${OBJECTDIR}/_ext/1954962658/Telnet.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/Telnet.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/Telnet.o.d > ${OBJECTDIR}/_ext/1954962658/Telnet.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/Telnet.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/Telnet.o.tmp ${OBJECTDIR}/_ext/1954962658/Telnet.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/Telnet.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o: ../../../Microchip/TCPIP\ Stack/SPIEEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d -o ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o ../../../Microchip/TCPIP\ Stack/SPIEEPROM.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d > ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.tmp ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d > ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.tmp ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/Reboot.o: ../../../Microchip/TCPIP\ Stack/Reboot.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/Reboot.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/Reboot.o.d -o ${OBJECTDIR}/_ext/1954962658/Reboot.o ../../../Microchip/TCPIP\ Stack/Reboot.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/Reboot.o.d > ${OBJECTDIR}/_ext/1954962658/Reboot.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/Reboot.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/Reboot.o.tmp ${OBJECTDIR}/_ext/1954962658/Reboot.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/Reboot.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/Reboot.o.d > ${OBJECTDIR}/_ext/1954962658/Reboot.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/Reboot.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/Reboot.o.tmp ${OBJECTDIR}/_ext/1954962658/Reboot.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/Reboot.o.tmp
endif
${OBJECTDIR}/_ext/243675038/WFConsole.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsole.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsole.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/243675038/WFConsole.o.d -o ${OBJECTDIR}/_ext/243675038/WFConsole.o ../../../Microchip/TCPIP\ Stack/WiFi/WFConsole.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/243675038/WFConsole.o.d > ${OBJECTDIR}/_ext/243675038/WFConsole.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsole.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFConsole.o.tmp ${OBJECTDIR}/_ext/243675038/WFConsole.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsole.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/243675038/WFConsole.o.d > ${OBJECTDIR}/_ext/243675038/WFConsole.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsole.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFConsole.o.tmp ${OBJECTDIR}/_ext/243675038/WFConsole.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsole.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/DNS.o: ../../../Microchip/TCPIP\ Stack/DNS.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/DNS.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/DNS.o.d -o ${OBJECTDIR}/_ext/1954962658/DNS.o ../../../Microchip/TCPIP\ Stack/DNS.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/DNS.o.d > ${OBJECTDIR}/_ext/1954962658/DNS.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/DNS.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/DNS.o.tmp ${OBJECTDIR}/_ext/1954962658/DNS.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/DNS.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/DNS.o.d > ${OBJECTDIR}/_ext/1954962658/DNS.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/DNS.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/DNS.o.tmp ${OBJECTDIR}/_ext/1954962658/DNS.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/DNS.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/DHCPs.o: ../../../Microchip/TCPIP\ Stack/DHCPs.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/DHCPs.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/DHCPs.o.d -o ${OBJECTDIR}/_ext/1954962658/DHCPs.o ../../../Microchip/TCPIP\ Stack/DHCPs.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/DHCPs.o.d > ${OBJECTDIR}/_ext/1954962658/DHCPs.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/DHCPs.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/DHCPs.o.tmp ${OBJECTDIR}/_ext/1954962658/DHCPs.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/DHCPs.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/DHCPs.o.d > ${OBJECTDIR}/_ext/1954962658/DHCPs.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/DHCPs.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/DHCPs.o.tmp ${OBJECTDIR}/_ext/1954962658/DHCPs.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/DHCPs.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o: ../../../Microchip/TCPIP\ Stack/ZeroconfHelper.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d -o ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o ../../../Microchip/TCPIP\ Stack/ZeroconfHelper.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d > ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.tmp ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d > ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.tmp ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.tmp
endif
${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o.d -o ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o ../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o.d > ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o.tmp ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o.d > ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o.tmp ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o.tmp
endif
${OBJECTDIR}/_ext/243675038/WF_Spi.o: ../../../Microchip/TCPIP\ Stack/WiFi/WF_Spi.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${RM} ${OBJECTDIR}/_ext/243675038/WF_Spi.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/243675038/WF_Spi.o.d -o ${OBJECTDIR}/_ext/243675038/WF_Spi.o ../../../Microchip/TCPIP\ Stack/WiFi/WF_Spi.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/243675038/WF_Spi.o.d > ${OBJECTDIR}/_ext/243675038/WF_Spi.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WF_Spi.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WF_Spi.o.tmp ${OBJECTDIR}/_ext/243675038/WF_Spi.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WF_Spi.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/243675038/WF_Spi.o.d > ${OBJECTDIR}/_ext/243675038/WF_Spi.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WF_Spi.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WF_Spi.o.tmp ${OBJECTDIR}/_ext/243675038/WF_Spi.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WF_Spi.o.tmp
endif
${OBJECTDIR}/_ext/1472/UARTConfig.o: ../UARTConfig.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1472/UARTConfig.o.d -o ${OBJECTDIR}/_ext/1472/UARTConfig.o ../UARTConfig.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/UARTConfig.o.d > ${OBJECTDIR}/_ext/1472/UARTConfig.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/UARTConfig.o.tmp ${OBJECTDIR}/_ext/1472/UARTConfig.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/UARTConfig.o.d > ${OBJECTDIR}/_ext/1472/UARTConfig.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/UARTConfig.o.tmp ${OBJECTDIR}/_ext/1472/UARTConfig.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o.tmp
endif
${OBJECTDIR}/_ext/1472/CustomHTTPApp.o: ../CustomHTTPApp.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d -o ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o ../CustomHTTPApp.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d > ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.tmp ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d > ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.tmp ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.tmp
endif
${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o.d -o ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o.d > ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o.tmp ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o.d > ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o.tmp ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o.tmp
endif
${OBJECTDIR}/_ext/243675038/WFDriverCom.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFDriverCom.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${RM} ${OBJECTDIR}/_ext/243675038/WFDriverCom.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/243675038/WFDriverCom.o.d -o ${OBJECTDIR}/_ext/243675038/WFDriverCom.o ../../../Microchip/TCPIP\ Stack/WiFi/WFDriverCom.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/243675038/WFDriverCom.o.d > ${OBJECTDIR}/_ext/243675038/WFDriverCom.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFDriverCom.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFDriverCom.o.tmp ${OBJECTDIR}/_ext/243675038/WFDriverCom.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFDriverCom.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/243675038/WFDriverCom.o.d > ${OBJECTDIR}/_ext/243675038/WFDriverCom.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFDriverCom.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFDriverCom.o.tmp ${OBJECTDIR}/_ext/243675038/WFDriverCom.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFDriverCom.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/DNSs.o: ../../../Microchip/TCPIP\ Stack/DNSs.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/DNSs.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/DNSs.o.d -o ${OBJECTDIR}/_ext/1954962658/DNSs.o ../../../Microchip/TCPIP\ Stack/DNSs.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/DNSs.o.d > ${OBJECTDIR}/_ext/1954962658/DNSs.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/DNSs.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/DNSs.o.tmp ${OBJECTDIR}/_ext/1954962658/DNSs.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/DNSs.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/DNSs.o.d > ${OBJECTDIR}/_ext/1954962658/DNSs.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/DNSs.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/DNSs.o.tmp ${OBJECTDIR}/_ext/1954962658/DNSs.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/DNSs.o.tmp
endif
${OBJECTDIR}/_ext/1472/WF_Config.o: ../WF_Config.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/WF_Config.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1472/WF_Config.o.d -o ${OBJECTDIR}/_ext/1472/WF_Config.o ../WF_Config.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/WF_Config.o.d > ${OBJECTDIR}/_ext/1472/WF_Config.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/WF_Config.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/WF_Config.o.tmp ${OBJECTDIR}/_ext/1472/WF_Config.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/WF_Config.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/WF_Config.o.d > ${OBJECTDIR}/_ext/1472/WF_Config.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/WF_Config.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/WF_Config.o.tmp ${OBJECTDIR}/_ext/1472/WF_Config.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/WF_Config.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/TCP.o: ../../../Microchip/TCPIP\ Stack/TCP.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/TCP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/TCP.o.d -o ${OBJECTDIR}/_ext/1954962658/TCP.o ../../../Microchip/TCPIP\ Stack/TCP.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/TCP.o.d > ${OBJECTDIR}/_ext/1954962658/TCP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/TCP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/TCP.o.tmp ${OBJECTDIR}/_ext/1954962658/TCP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/TCP.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/TCP.o.d > ${OBJECTDIR}/_ext/1954962658/TCP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/TCP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/TCP.o.tmp ${OBJECTDIR}/_ext/1954962658/TCP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/TCP.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/ICMP.o: ../../../Microchip/TCPIP\ Stack/ICMP.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/ICMP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/ICMP.o.d -o ${OBJECTDIR}/_ext/1954962658/ICMP.o ../../../Microchip/TCPIP\ Stack/ICMP.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/ICMP.o.d > ${OBJECTDIR}/_ext/1954962658/ICMP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/ICMP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/ICMP.o.tmp ${OBJECTDIR}/_ext/1954962658/ICMP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/ICMP.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/ICMP.o.d > ${OBJECTDIR}/_ext/1954962658/ICMP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/ICMP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/ICMP.o.tmp ${OBJECTDIR}/_ext/1954962658/ICMP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/ICMP.o.tmp
endif
${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o.d -o ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o.d > ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o.tmp ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o.d > ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o.tmp ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/Helpers.o: ../../../Microchip/TCPIP\ Stack/Helpers.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/Helpers.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/Helpers.o.d -o ${OBJECTDIR}/_ext/1954962658/Helpers.o ../../../Microchip/TCPIP\ Stack/Helpers.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/Helpers.o.d > ${OBJECTDIR}/_ext/1954962658/Helpers.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/Helpers.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/Helpers.o.tmp ${OBJECTDIR}/_ext/1954962658/Helpers.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/Helpers.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/Helpers.o.d > ${OBJECTDIR}/_ext/1954962658/Helpers.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/Helpers.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/Helpers.o.tmp ${OBJECTDIR}/_ext/1954962658/Helpers.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/Helpers.o.tmp
endif
${OBJECTDIR}/_ext/243675038/WFTxPower.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFTxPower.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${RM} ${OBJECTDIR}/_ext/243675038/WFTxPower.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/243675038/WFTxPower.o.d -o ${OBJECTDIR}/_ext/243675038/WFTxPower.o ../../../Microchip/TCPIP\ Stack/WiFi/WFTxPower.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/243675038/WFTxPower.o.d > ${OBJECTDIR}/_ext/243675038/WFTxPower.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFTxPower.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFTxPower.o.tmp ${OBJECTDIR}/_ext/243675038/WFTxPower.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFTxPower.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/243675038/WFTxPower.o.d > ${OBJECTDIR}/_ext/243675038/WFTxPower.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFTxPower.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFTxPower.o.tmp ${OBJECTDIR}/_ext/243675038/WFTxPower.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFTxPower.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/IP.o: ../../../Microchip/TCPIP\ Stack/IP.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/IP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/IP.o.d -o ${OBJECTDIR}/_ext/1954962658/IP.o ../../../Microchip/TCPIP\ Stack/IP.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/IP.o.d > ${OBJECTDIR}/_ext/1954962658/IP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/IP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/IP.o.tmp ${OBJECTDIR}/_ext/1954962658/IP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/IP.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/IP.o.d > ${OBJECTDIR}/_ext/1954962658/IP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/IP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/IP.o.tmp ${OBJECTDIR}/_ext/1954962658/IP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/IP.o.tmp
endif
else
${OBJECTDIR}/_ext/1954962658/DynDNS.o: ../../../Microchip/TCPIP\ Stack/DynDNS.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/DynDNS.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/DynDNS.o.d -o ${OBJECTDIR}/_ext/1954962658/DynDNS.o ../../../Microchip/TCPIP\ Stack/DynDNS.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/DynDNS.o.d > ${OBJECTDIR}/_ext/1954962658/DynDNS.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/DynDNS.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/DynDNS.o.tmp ${OBJECTDIR}/_ext/1954962658/DynDNS.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/DynDNS.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/DynDNS.o.d > ${OBJECTDIR}/_ext/1954962658/DynDNS.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/DynDNS.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/DynDNS.o.tmp ${OBJECTDIR}/_ext/1954962658/DynDNS.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/DynDNS.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o: ../../../Microchip/TCPIP\ Stack/ZeroconfLinkLocal.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.d -o ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o ../../../Microchip/TCPIP\ Stack/ZeroconfLinkLocal.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.d > ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.tmp ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.d > ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.tmp ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/DHCP.o: ../../../Microchip/TCPIP\ Stack/DHCP.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/DHCP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/DHCP.o.d -o ${OBJECTDIR}/_ext/1954962658/DHCP.o ../../../Microchip/TCPIP\ Stack/DHCP.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/DHCP.o.d > ${OBJECTDIR}/_ext/1954962658/DHCP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/DHCP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/DHCP.o.tmp ${OBJECTDIR}/_ext/1954962658/DHCP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/DHCP.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/DHCP.o.d > ${OBJECTDIR}/_ext/1954962658/DHCP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/DHCP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/DHCP.o.tmp ${OBJECTDIR}/_ext/1954962658/DHCP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/DHCP.o.tmp
endif
${OBJECTDIR}/_ext/243675038/WFMac.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFMac.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${RM} ${OBJECTDIR}/_ext/243675038/WFMac.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/243675038/WFMac.o.d -o ${OBJECTDIR}/_ext/243675038/WFMac.o ../../../Microchip/TCPIP\ Stack/WiFi/WFMac.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/243675038/WFMac.o.d > ${OBJECTDIR}/_ext/243675038/WFMac.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFMac.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFMac.o.tmp ${OBJECTDIR}/_ext/243675038/WFMac.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFMac.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/243675038/WFMac.o.d > ${OBJECTDIR}/_ext/243675038/WFMac.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFMac.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFMac.o.tmp ${OBJECTDIR}/_ext/243675038/WFMac.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFMac.o.tmp
endif
${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${RM} ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o.d -o ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o ../../../Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o.d > ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o.tmp ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o.d > ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o.tmp ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/UART.o: ../../../Microchip/TCPIP\ Stack/UART.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/UART.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/UART.o.d -o ${OBJECTDIR}/_ext/1954962658/UART.o ../../../Microchip/TCPIP\ Stack/UART.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/UART.o.d > ${OBJECTDIR}/_ext/1954962658/UART.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/UART.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/UART.o.tmp ${OBJECTDIR}/_ext/1954962658/UART.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/UART.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/UART.o.d > ${OBJECTDIR}/_ext/1954962658/UART.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/UART.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/UART.o.tmp ${OBJECTDIR}/_ext/1954962658/UART.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/UART.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/SPIFlash.o: ../../../Microchip/TCPIP\ Stack/SPIFlash.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d -o ${OBJECTDIR}/_ext/1954962658/SPIFlash.o ../../../Microchip/TCPIP\ Stack/SPIFlash.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d > ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.tmp ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d > ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.tmp ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/FTP.o: ../../../Microchip/TCPIP\ Stack/FTP.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/FTP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/FTP.o.d -o ${OBJECTDIR}/_ext/1954962658/FTP.o ../../../Microchip/TCPIP\ Stack/FTP.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/FTP.o.d > ${OBJECTDIR}/_ext/1954962658/FTP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/FTP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/FTP.o.tmp ${OBJECTDIR}/_ext/1954962658/FTP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/FTP.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/FTP.o.d > ${OBJECTDIR}/_ext/1954962658/FTP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/FTP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/FTP.o.tmp ${OBJECTDIR}/_ext/1954962658/FTP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/FTP.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/Tick.o: ../../../Microchip/TCPIP\ Stack/Tick.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/Tick.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/Tick.o.d -o ${OBJECTDIR}/_ext/1954962658/Tick.o ../../../Microchip/TCPIP\ Stack/Tick.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/Tick.o.d > ${OBJECTDIR}/_ext/1954962658/Tick.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/Tick.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/Tick.o.tmp ${OBJECTDIR}/_ext/1954962658/Tick.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/Tick.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/Tick.o.d > ${OBJECTDIR}/_ext/1954962658/Tick.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/Tick.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/Tick.o.tmp ${OBJECTDIR}/_ext/1954962658/Tick.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/Tick.o.tmp
endif
${OBJECTDIR}/_ext/243675038/WFInit.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFInit.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${RM} ${OBJECTDIR}/_ext/243675038/WFInit.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/243675038/WFInit.o.d -o ${OBJECTDIR}/_ext/243675038/WFInit.o ../../../Microchip/TCPIP\ Stack/WiFi/WFInit.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/243675038/WFInit.o.d > ${OBJECTDIR}/_ext/243675038/WFInit.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFInit.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFInit.o.tmp ${OBJECTDIR}/_ext/243675038/WFInit.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFInit.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/243675038/WFInit.o.d > ${OBJECTDIR}/_ext/243675038/WFInit.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFInit.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFInit.o.tmp ${OBJECTDIR}/_ext/243675038/WFInit.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFInit.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o: ../../../Microchip/TCPIP\ Stack/UDPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d -o ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o ../../../Microchip/TCPIP\ Stack/UDPPerformanceTest.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d > ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.tmp ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d > ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.tmp ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.tmp
endif
${OBJECTDIR}/_ext/243675038/WFParamMsg.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFParamMsg.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${RM} ${OBJECTDIR}/_ext/243675038/WFParamMsg.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/243675038/WFParamMsg.o.d -o ${OBJECTDIR}/_ext/243675038/WFParamMsg.o ../../../Microchip/TCPIP\ Stack/WiFi/WFParamMsg.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/243675038/WFParamMsg.o.d > ${OBJECTDIR}/_ext/243675038/WFParamMsg.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFParamMsg.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFParamMsg.o.tmp ${OBJECTDIR}/_ext/243675038/WFParamMsg.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFParamMsg.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/243675038/WFParamMsg.o.d > ${OBJECTDIR}/_ext/243675038/WFParamMsg.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFParamMsg.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFParamMsg.o.tmp ${OBJECTDIR}/_ext/243675038/WFParamMsg.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFParamMsg.o.tmp
endif
${OBJECTDIR}/_ext/243675038/WFDriverRaw.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${RM} ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o.d -o ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o ../../../Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o.d > ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o.tmp ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o.d > ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o.tmp ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/ARP.o: ../../../Microchip/TCPIP\ Stack/ARP.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/ARP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/ARP.o.d -o ${OBJECTDIR}/_ext/1954962658/ARP.o ../../../Microchip/TCPIP\ Stack/ARP.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/ARP.o.d > ${OBJECTDIR}/_ext/1954962658/ARP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/ARP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/ARP.o.tmp ${OBJECTDIR}/_ext/1954962658/ARP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/ARP.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/ARP.o.d > ${OBJECTDIR}/_ext/1954962658/ARP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/ARP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/ARP.o.tmp ${OBJECTDIR}/_ext/1954962658/ARP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/ARP.o.tmp
endif
${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o.d -o ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o.d > ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o.tmp ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o.d > ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o.tmp ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/UDP.o: ../../../Microchip/TCPIP\ Stack/UDP.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/UDP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/UDP.o.d -o ${OBJECTDIR}/_ext/1954962658/UDP.o ../../../Microchip/TCPIP\ Stack/UDP.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/UDP.o.d > ${OBJECTDIR}/_ext/1954962658/UDP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/UDP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/UDP.o.tmp ${OBJECTDIR}/_ext/1954962658/UDP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/UDP.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/UDP.o.d > ${OBJECTDIR}/_ext/1954962658/UDP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/UDP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/UDP.o.tmp ${OBJECTDIR}/_ext/1954962658/UDP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/UDP.o.tmp
endif
${OBJECTDIR}/_ext/1472/PingDemo.o: ../PingDemo.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/PingDemo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1472/PingDemo.o.d -o ${OBJECTDIR}/_ext/1472/PingDemo.o ../PingDemo.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/PingDemo.o.d > ${OBJECTDIR}/_ext/1472/PingDemo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/PingDemo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/PingDemo.o.tmp ${OBJECTDIR}/_ext/1472/PingDemo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/PingDemo.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/PingDemo.o.d > ${OBJECTDIR}/_ext/1472/PingDemo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/PingDemo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/PingDemo.o.tmp ${OBJECTDIR}/_ext/1472/PingDemo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/PingDemo.o.tmp
endif
${OBJECTDIR}/_ext/243675038/WFScan.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFScan.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${RM} ${OBJECTDIR}/_ext/243675038/WFScan.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/243675038/WFScan.o.d -o ${OBJECTDIR}/_ext/243675038/WFScan.o ../../../Microchip/TCPIP\ Stack/WiFi/WFScan.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/243675038/WFScan.o.d > ${OBJECTDIR}/_ext/243675038/WFScan.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFScan.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFScan.o.tmp ${OBJECTDIR}/_ext/243675038/WFScan.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFScan.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/243675038/WFScan.o.d > ${OBJECTDIR}/_ext/243675038/WFScan.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFScan.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFScan.o.tmp ${OBJECTDIR}/_ext/243675038/WFScan.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFScan.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o: ../../../Microchip/TCPIP\ Stack/ZeroconfMulticastDNS.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.d -o ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o ../../../Microchip/TCPIP\ Stack/ZeroconfMulticastDNS.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.d > ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.tmp ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.d > ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.tmp ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o: ../../../Microchip/TCPIP\ Stack/BerkeleyAPI.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d -o ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o ../../../Microchip/TCPIP\ Stack/BerkeleyAPI.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d > ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.tmp ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d > ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.tmp ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/SNTP.o: ../../../Microchip/TCPIP\ Stack/SNTP.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/SNTP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/SNTP.o.d -o ${OBJECTDIR}/_ext/1954962658/SNTP.o ../../../Microchip/TCPIP\ Stack/SNTP.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/SNTP.o.d > ${OBJECTDIR}/_ext/1954962658/SNTP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/SNTP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/SNTP.o.tmp ${OBJECTDIR}/_ext/1954962658/SNTP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/SNTP.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/SNTP.o.d > ${OBJECTDIR}/_ext/1954962658/SNTP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/SNTP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/SNTP.o.tmp ${OBJECTDIR}/_ext/1954962658/SNTP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/SNTP.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/ENC28J60.o: ../../../Microchip/TCPIP\ Stack/ENC28J60.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d -o ${OBJECTDIR}/_ext/1954962658/ENC28J60.o ../../../Microchip/TCPIP\ Stack/ENC28J60.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d > ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.tmp ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d > ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.tmp ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o: ../../../Microchip/TCPIP\ Stack/UART2TCPBridge.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d -o ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o ../../../Microchip/TCPIP\ Stack/UART2TCPBridge.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d > ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.tmp ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d > ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.tmp ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/StackTsk.o: ../../../Microchip/TCPIP\ Stack/StackTsk.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/StackTsk.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/StackTsk.o.d -o ${OBJECTDIR}/_ext/1954962658/StackTsk.o ../../../Microchip/TCPIP\ Stack/StackTsk.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/StackTsk.o.d > ${OBJECTDIR}/_ext/1954962658/StackTsk.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/StackTsk.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/StackTsk.o.tmp ${OBJECTDIR}/_ext/1954962658/StackTsk.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/StackTsk.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/StackTsk.o.d > ${OBJECTDIR}/_ext/1954962658/StackTsk.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/StackTsk.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/StackTsk.o.tmp ${OBJECTDIR}/_ext/1954962658/StackTsk.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/StackTsk.o.tmp
endif
${OBJECTDIR}/_ext/1472/MainDemo.o: ../MainDemo.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1472/MainDemo.o.d -o ${OBJECTDIR}/_ext/1472/MainDemo.o ../MainDemo.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/MainDemo.o.d > ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/MainDemo.o.d > ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp
endif
${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o.d -o ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o ../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o.d > ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o.tmp ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o.d > ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o.tmp ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o.tmp
endif
${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o.d -o ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o.d > ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o.tmp ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o.d > ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o.tmp ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/Announce.o: ../../../Microchip/TCPIP\ Stack/Announce.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/Announce.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/Announce.o.d -o ${OBJECTDIR}/_ext/1954962658/Announce.o ../../../Microchip/TCPIP\ Stack/Announce.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/Announce.o.d > ${OBJECTDIR}/_ext/1954962658/Announce.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/Announce.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/Announce.o.tmp ${OBJECTDIR}/_ext/1954962658/Announce.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/Announce.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/Announce.o.d > ${OBJECTDIR}/_ext/1954962658/Announce.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/Announce.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/Announce.o.tmp ${OBJECTDIR}/_ext/1954962658/Announce.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/Announce.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/SNMP.o: ../../../Microchip/TCPIP\ Stack/SNMP.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/SNMP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/SNMP.o.d -o ${OBJECTDIR}/_ext/1954962658/SNMP.o ../../../Microchip/TCPIP\ Stack/SNMP.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/SNMP.o.d > ${OBJECTDIR}/_ext/1954962658/SNMP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/SNMP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/SNMP.o.tmp ${OBJECTDIR}/_ext/1954962658/SNMP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/SNMP.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/SNMP.o.d > ${OBJECTDIR}/_ext/1954962658/SNMP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/SNMP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/SNMP.o.tmp ${OBJECTDIR}/_ext/1954962658/SNMP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/SNMP.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/Delay.o: ../../../Microchip/TCPIP\ Stack/Delay.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/Delay.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/Delay.o.d -o ${OBJECTDIR}/_ext/1954962658/Delay.o ../../../Microchip/TCPIP\ Stack/Delay.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/Delay.o.d > ${OBJECTDIR}/_ext/1954962658/Delay.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/Delay.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/Delay.o.tmp ${OBJECTDIR}/_ext/1954962658/Delay.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/Delay.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/Delay.o.d > ${OBJECTDIR}/_ext/1954962658/Delay.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/Delay.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/Delay.o.tmp ${OBJECTDIR}/_ext/1954962658/Delay.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/Delay.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/HTTP2.o: ../../../Microchip/TCPIP\ Stack/HTTP2.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/HTTP2.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/HTTP2.o.d -o ${OBJECTDIR}/_ext/1954962658/HTTP2.o ../../../Microchip/TCPIP\ Stack/HTTP2.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/HTTP2.o.d > ${OBJECTDIR}/_ext/1954962658/HTTP2.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/HTTP2.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/HTTP2.o.tmp ${OBJECTDIR}/_ext/1954962658/HTTP2.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/HTTP2.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/HTTP2.o.d > ${OBJECTDIR}/_ext/1954962658/HTTP2.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/HTTP2.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/HTTP2.o.tmp ${OBJECTDIR}/_ext/1954962658/HTTP2.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/HTTP2.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/SMTP.o: ../../../Microchip/TCPIP\ Stack/SMTP.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/SMTP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/SMTP.o.d -o ${OBJECTDIR}/_ext/1954962658/SMTP.o ../../../Microchip/TCPIP\ Stack/SMTP.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/SMTP.o.d > ${OBJECTDIR}/_ext/1954962658/SMTP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/SMTP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/SMTP.o.tmp ${OBJECTDIR}/_ext/1954962658/SMTP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/SMTP.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/SMTP.o.d > ${OBJECTDIR}/_ext/1954962658/SMTP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/SMTP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/SMTP.o.tmp ${OBJECTDIR}/_ext/1954962658/SMTP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/SMTP.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/ENCX24J600.o: ../../../Microchip/TCPIP\ Stack/ENCX24J600.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d -o ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o ../../../Microchip/TCPIP\ Stack/ENCX24J600.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d > ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.tmp ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d > ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.tmp ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/SPIRAM.o: ../../../Microchip/TCPIP\ Stack/SPIRAM.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d -o ${OBJECTDIR}/_ext/1954962658/SPIRAM.o ../../../Microchip/TCPIP\ Stack/SPIRAM.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d > ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.tmp ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d > ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.tmp ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.tmp
endif
${OBJECTDIR}/_ext/243675038/WFEasyConfig.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${RM} ${OBJECTDIR}/_ext/243675038/WFEasyConfig.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/243675038/WFEasyConfig.o.d -o ${OBJECTDIR}/_ext/243675038/WFEasyConfig.o ../../../Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/243675038/WFEasyConfig.o.d > ${OBJECTDIR}/_ext/243675038/WFEasyConfig.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFEasyConfig.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFEasyConfig.o.tmp ${OBJECTDIR}/_ext/243675038/WFEasyConfig.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFEasyConfig.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/243675038/WFEasyConfig.o.d > ${OBJECTDIR}/_ext/243675038/WFEasyConfig.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFEasyConfig.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFEasyConfig.o.tmp ${OBJECTDIR}/_ext/243675038/WFEasyConfig.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFEasyConfig.o.tmp
endif
${OBJECTDIR}/_ext/243675038/WFConnectionManager.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o.d -o ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o ../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o.d > ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o.tmp ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o.d > ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o.tmp ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/TFTPc.o: ../../../Microchip/TCPIP\ Stack/TFTPc.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/TFTPc.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/TFTPc.o.d -o ${OBJECTDIR}/_ext/1954962658/TFTPc.o ../../../Microchip/TCPIP\ Stack/TFTPc.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/TFTPc.o.d > ${OBJECTDIR}/_ext/1954962658/TFTPc.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/TFTPc.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/TFTPc.o.tmp ${OBJECTDIR}/_ext/1954962658/TFTPc.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/TFTPc.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/TFTPc.o.d > ${OBJECTDIR}/_ext/1954962658/TFTPc.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/TFTPc.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/TFTPc.o.tmp ${OBJECTDIR}/_ext/1954962658/TFTPc.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/TFTPc.o.tmp
endif
${OBJECTDIR}/_ext/1472/IperfApp.o: ../IperfApp.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/IperfApp.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1472/IperfApp.o.d -o ${OBJECTDIR}/_ext/1472/IperfApp.o ../IperfApp.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/IperfApp.o.d > ${OBJECTDIR}/_ext/1472/IperfApp.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/IperfApp.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/IperfApp.o.tmp ${OBJECTDIR}/_ext/1472/IperfApp.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/IperfApp.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/IperfApp.o.d > ${OBJECTDIR}/_ext/1472/IperfApp.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/IperfApp.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/IperfApp.o.tmp ${OBJECTDIR}/_ext/1472/IperfApp.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/IperfApp.o.tmp
endif
${OBJECTDIR}/_ext/243675038/WF_Eint.o: ../../../Microchip/TCPIP\ Stack/WiFi/WF_Eint.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${RM} ${OBJECTDIR}/_ext/243675038/WF_Eint.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/243675038/WF_Eint.o.d -o ${OBJECTDIR}/_ext/243675038/WF_Eint.o ../../../Microchip/TCPIP\ Stack/WiFi/WF_Eint.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/243675038/WF_Eint.o.d > ${OBJECTDIR}/_ext/243675038/WF_Eint.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WF_Eint.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WF_Eint.o.tmp ${OBJECTDIR}/_ext/243675038/WF_Eint.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WF_Eint.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/243675038/WF_Eint.o.d > ${OBJECTDIR}/_ext/243675038/WF_Eint.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WF_Eint.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WF_Eint.o.tmp ${OBJECTDIR}/_ext/243675038/WF_Eint.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WF_Eint.o.tmp
endif
${OBJECTDIR}/_ext/243675038/WFDataTxRx.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${RM} ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o.d -o ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o ../../../Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o.d > ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o.tmp ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o.d > ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o.tmp ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/MPFS2.o: ../../../Microchip/TCPIP\ Stack/MPFS2.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/MPFS2.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/MPFS2.o.d -o ${OBJECTDIR}/_ext/1954962658/MPFS2.o ../../../Microchip/TCPIP\ Stack/MPFS2.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/MPFS2.o.d > ${OBJECTDIR}/_ext/1954962658/MPFS2.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/MPFS2.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/MPFS2.o.tmp ${OBJECTDIR}/_ext/1954962658/MPFS2.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/MPFS2.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/MPFS2.o.d > ${OBJECTDIR}/_ext/1954962658/MPFS2.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/MPFS2.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/MPFS2.o.tmp ${OBJECTDIR}/_ext/1954962658/MPFS2.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/MPFS2.o.tmp
endif
${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o.d -o ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o.d > ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o.tmp ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o.d > ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o.tmp ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o.tmp
endif
${OBJECTDIR}/_ext/243675038/WFEventHandler.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFEventHandler.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${RM} ${OBJECTDIR}/_ext/243675038/WFEventHandler.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/243675038/WFEventHandler.o.d -o ${OBJECTDIR}/_ext/243675038/WFEventHandler.o ../../../Microchip/TCPIP\ Stack/WiFi/WFEventHandler.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/243675038/WFEventHandler.o.d > ${OBJECTDIR}/_ext/243675038/WFEventHandler.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFEventHandler.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFEventHandler.o.tmp ${OBJECTDIR}/_ext/243675038/WFEventHandler.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFEventHandler.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/243675038/WFEventHandler.o.d > ${OBJECTDIR}/_ext/243675038/WFEventHandler.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFEventHandler.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFEventHandler.o.tmp ${OBJECTDIR}/_ext/243675038/WFEventHandler.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFEventHandler.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/LCDBlocking.o: ../../../Microchip/TCPIP\ Stack/LCDBlocking.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d -o ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o ../../../Microchip/TCPIP\ Stack/LCDBlocking.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d > ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.tmp ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d > ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.tmp ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/AutoIP.o: ../../../Microchip/TCPIP\ Stack/AutoIP.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/AutoIP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/AutoIP.o.d -o ${OBJECTDIR}/_ext/1954962658/AutoIP.o ../../../Microchip/TCPIP\ Stack/AutoIP.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/AutoIP.o.d > ${OBJECTDIR}/_ext/1954962658/AutoIP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/AutoIP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/AutoIP.o.tmp ${OBJECTDIR}/_ext/1954962658/AutoIP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/AutoIP.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/AutoIP.o.d > ${OBJECTDIR}/_ext/1954962658/AutoIP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/AutoIP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/AutoIP.o.tmp ${OBJECTDIR}/_ext/1954962658/AutoIP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/AutoIP.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o: ../../../Microchip/TCPIP\ Stack/TCPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d -o ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o ../../../Microchip/TCPIP\ Stack/TCPPerformanceTest.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d > ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.tmp ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d > ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.tmp ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/NBNS.o: ../../../Microchip/TCPIP\ Stack/NBNS.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/NBNS.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/NBNS.o.d -o ${OBJECTDIR}/_ext/1954962658/NBNS.o ../../../Microchip/TCPIP\ Stack/NBNS.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/NBNS.o.d > ${OBJECTDIR}/_ext/1954962658/NBNS.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/NBNS.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/NBNS.o.tmp ${OBJECTDIR}/_ext/1954962658/NBNS.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/NBNS.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/NBNS.o.d > ${OBJECTDIR}/_ext/1954962658/NBNS.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/NBNS.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/NBNS.o.tmp ${OBJECTDIR}/_ext/1954962658/NBNS.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/NBNS.o.tmp
endif
${OBJECTDIR}/_ext/243675038/WFPowerSave.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFPowerSave.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${RM} ${OBJECTDIR}/_ext/243675038/WFPowerSave.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/243675038/WFPowerSave.o.d -o ${OBJECTDIR}/_ext/243675038/WFPowerSave.o ../../../Microchip/TCPIP\ Stack/WiFi/WFPowerSave.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/243675038/WFPowerSave.o.d > ${OBJECTDIR}/_ext/243675038/WFPowerSave.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFPowerSave.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFPowerSave.o.tmp ${OBJECTDIR}/_ext/243675038/WFPowerSave.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFPowerSave.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/243675038/WFPowerSave.o.d > ${OBJECTDIR}/_ext/243675038/WFPowerSave.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFPowerSave.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFPowerSave.o.tmp ${OBJECTDIR}/_ext/243675038/WFPowerSave.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFPowerSave.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/Hashes.o: ../../../Microchip/TCPIP\ Stack/Hashes.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/Hashes.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/Hashes.o.d -o ${OBJECTDIR}/_ext/1954962658/Hashes.o ../../../Microchip/TCPIP\ Stack/Hashes.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/Hashes.o.d > ${OBJECTDIR}/_ext/1954962658/Hashes.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/Hashes.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/Hashes.o.tmp ${OBJECTDIR}/_ext/1954962658/Hashes.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/Hashes.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/Hashes.o.d > ${OBJECTDIR}/_ext/1954962658/Hashes.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/Hashes.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/Hashes.o.tmp ${OBJECTDIR}/_ext/1954962658/Hashes.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/Hashes.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/Telnet.o: ../../../Microchip/TCPIP\ Stack/Telnet.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/Telnet.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/Telnet.o.d -o ${OBJECTDIR}/_ext/1954962658/Telnet.o ../../../Microchip/TCPIP\ Stack/Telnet.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/Telnet.o.d > ${OBJECTDIR}/_ext/1954962658/Telnet.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/Telnet.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/Telnet.o.tmp ${OBJECTDIR}/_ext/1954962658/Telnet.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/Telnet.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/Telnet.o.d > ${OBJECTDIR}/_ext/1954962658/Telnet.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/Telnet.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/Telnet.o.tmp ${OBJECTDIR}/_ext/1954962658/Telnet.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/Telnet.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o: ../../../Microchip/TCPIP\ Stack/SPIEEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d -o ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o ../../../Microchip/TCPIP\ Stack/SPIEEPROM.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d > ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.tmp ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d > ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.tmp ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/Reboot.o: ../../../Microchip/TCPIP\ Stack/Reboot.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/Reboot.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/Reboot.o.d -o ${OBJECTDIR}/_ext/1954962658/Reboot.o ../../../Microchip/TCPIP\ Stack/Reboot.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/Reboot.o.d > ${OBJECTDIR}/_ext/1954962658/Reboot.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/Reboot.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/Reboot.o.tmp ${OBJECTDIR}/_ext/1954962658/Reboot.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/Reboot.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/Reboot.o.d > ${OBJECTDIR}/_ext/1954962658/Reboot.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/Reboot.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/Reboot.o.tmp ${OBJECTDIR}/_ext/1954962658/Reboot.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/Reboot.o.tmp
endif
${OBJECTDIR}/_ext/243675038/WFConsole.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsole.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsole.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/243675038/WFConsole.o.d -o ${OBJECTDIR}/_ext/243675038/WFConsole.o ../../../Microchip/TCPIP\ Stack/WiFi/WFConsole.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/243675038/WFConsole.o.d > ${OBJECTDIR}/_ext/243675038/WFConsole.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsole.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFConsole.o.tmp ${OBJECTDIR}/_ext/243675038/WFConsole.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsole.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/243675038/WFConsole.o.d > ${OBJECTDIR}/_ext/243675038/WFConsole.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsole.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFConsole.o.tmp ${OBJECTDIR}/_ext/243675038/WFConsole.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsole.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/DNS.o: ../../../Microchip/TCPIP\ Stack/DNS.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/DNS.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/DNS.o.d -o ${OBJECTDIR}/_ext/1954962658/DNS.o ../../../Microchip/TCPIP\ Stack/DNS.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/DNS.o.d > ${OBJECTDIR}/_ext/1954962658/DNS.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/DNS.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/DNS.o.tmp ${OBJECTDIR}/_ext/1954962658/DNS.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/DNS.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/DNS.o.d > ${OBJECTDIR}/_ext/1954962658/DNS.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/DNS.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/DNS.o.tmp ${OBJECTDIR}/_ext/1954962658/DNS.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/DNS.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/DHCPs.o: ../../../Microchip/TCPIP\ Stack/DHCPs.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/DHCPs.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/DHCPs.o.d -o ${OBJECTDIR}/_ext/1954962658/DHCPs.o ../../../Microchip/TCPIP\ Stack/DHCPs.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/DHCPs.o.d > ${OBJECTDIR}/_ext/1954962658/DHCPs.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/DHCPs.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/DHCPs.o.tmp ${OBJECTDIR}/_ext/1954962658/DHCPs.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/DHCPs.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/DHCPs.o.d > ${OBJECTDIR}/_ext/1954962658/DHCPs.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/DHCPs.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/DHCPs.o.tmp ${OBJECTDIR}/_ext/1954962658/DHCPs.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/DHCPs.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o: ../../../Microchip/TCPIP\ Stack/ZeroconfHelper.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d -o ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o ../../../Microchip/TCPIP\ Stack/ZeroconfHelper.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d > ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.tmp ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d > ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.tmp ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.tmp
endif
${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o.d -o ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o ../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o.d > ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o.tmp ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o.d > ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o.tmp ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o.tmp
endif
${OBJECTDIR}/_ext/243675038/WF_Spi.o: ../../../Microchip/TCPIP\ Stack/WiFi/WF_Spi.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${RM} ${OBJECTDIR}/_ext/243675038/WF_Spi.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/243675038/WF_Spi.o.d -o ${OBJECTDIR}/_ext/243675038/WF_Spi.o ../../../Microchip/TCPIP\ Stack/WiFi/WF_Spi.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/243675038/WF_Spi.o.d > ${OBJECTDIR}/_ext/243675038/WF_Spi.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WF_Spi.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WF_Spi.o.tmp ${OBJECTDIR}/_ext/243675038/WF_Spi.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WF_Spi.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/243675038/WF_Spi.o.d > ${OBJECTDIR}/_ext/243675038/WF_Spi.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WF_Spi.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WF_Spi.o.tmp ${OBJECTDIR}/_ext/243675038/WF_Spi.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WF_Spi.o.tmp
endif
${OBJECTDIR}/_ext/1472/UARTConfig.o: ../UARTConfig.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1472/UARTConfig.o.d -o ${OBJECTDIR}/_ext/1472/UARTConfig.o ../UARTConfig.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/UARTConfig.o.d > ${OBJECTDIR}/_ext/1472/UARTConfig.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/UARTConfig.o.tmp ${OBJECTDIR}/_ext/1472/UARTConfig.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/UARTConfig.o.d > ${OBJECTDIR}/_ext/1472/UARTConfig.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/UARTConfig.o.tmp ${OBJECTDIR}/_ext/1472/UARTConfig.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o.tmp
endif
${OBJECTDIR}/_ext/1472/CustomHTTPApp.o: ../CustomHTTPApp.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d -o ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o ../CustomHTTPApp.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d > ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.tmp ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d > ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.tmp ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.tmp
endif
${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o.d -o ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o.d > ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o.tmp ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o.d > ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o.tmp ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o.tmp
endif
${OBJECTDIR}/_ext/243675038/WFDriverCom.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFDriverCom.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${RM} ${OBJECTDIR}/_ext/243675038/WFDriverCom.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/243675038/WFDriverCom.o.d -o ${OBJECTDIR}/_ext/243675038/WFDriverCom.o ../../../Microchip/TCPIP\ Stack/WiFi/WFDriverCom.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/243675038/WFDriverCom.o.d > ${OBJECTDIR}/_ext/243675038/WFDriverCom.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFDriverCom.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFDriverCom.o.tmp ${OBJECTDIR}/_ext/243675038/WFDriverCom.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFDriverCom.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/243675038/WFDriverCom.o.d > ${OBJECTDIR}/_ext/243675038/WFDriverCom.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFDriverCom.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFDriverCom.o.tmp ${OBJECTDIR}/_ext/243675038/WFDriverCom.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFDriverCom.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/DNSs.o: ../../../Microchip/TCPIP\ Stack/DNSs.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/DNSs.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/DNSs.o.d -o ${OBJECTDIR}/_ext/1954962658/DNSs.o ../../../Microchip/TCPIP\ Stack/DNSs.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/DNSs.o.d > ${OBJECTDIR}/_ext/1954962658/DNSs.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/DNSs.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/DNSs.o.tmp ${OBJECTDIR}/_ext/1954962658/DNSs.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/DNSs.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/DNSs.o.d > ${OBJECTDIR}/_ext/1954962658/DNSs.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/DNSs.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/DNSs.o.tmp ${OBJECTDIR}/_ext/1954962658/DNSs.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/DNSs.o.tmp
endif
${OBJECTDIR}/_ext/1472/WF_Config.o: ../WF_Config.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/WF_Config.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1472/WF_Config.o.d -o ${OBJECTDIR}/_ext/1472/WF_Config.o ../WF_Config.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/WF_Config.o.d > ${OBJECTDIR}/_ext/1472/WF_Config.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/WF_Config.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/WF_Config.o.tmp ${OBJECTDIR}/_ext/1472/WF_Config.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/WF_Config.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/WF_Config.o.d > ${OBJECTDIR}/_ext/1472/WF_Config.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/WF_Config.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/WF_Config.o.tmp ${OBJECTDIR}/_ext/1472/WF_Config.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/WF_Config.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/TCP.o: ../../../Microchip/TCPIP\ Stack/TCP.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/TCP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/TCP.o.d -o ${OBJECTDIR}/_ext/1954962658/TCP.o ../../../Microchip/TCPIP\ Stack/TCP.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/TCP.o.d > ${OBJECTDIR}/_ext/1954962658/TCP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/TCP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/TCP.o.tmp ${OBJECTDIR}/_ext/1954962658/TCP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/TCP.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/TCP.o.d > ${OBJECTDIR}/_ext/1954962658/TCP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/TCP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/TCP.o.tmp ${OBJECTDIR}/_ext/1954962658/TCP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/TCP.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/ICMP.o: ../../../Microchip/TCPIP\ Stack/ICMP.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/ICMP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/ICMP.o.d -o ${OBJECTDIR}/_ext/1954962658/ICMP.o ../../../Microchip/TCPIP\ Stack/ICMP.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/ICMP.o.d > ${OBJECTDIR}/_ext/1954962658/ICMP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/ICMP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/ICMP.o.tmp ${OBJECTDIR}/_ext/1954962658/ICMP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/ICMP.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/ICMP.o.d > ${OBJECTDIR}/_ext/1954962658/ICMP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/ICMP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/ICMP.o.tmp ${OBJECTDIR}/_ext/1954962658/ICMP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/ICMP.o.tmp
endif
${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o.d -o ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o.d > ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o.tmp ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o.d > ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o.tmp ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/Helpers.o: ../../../Microchip/TCPIP\ Stack/Helpers.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/Helpers.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/Helpers.o.d -o ${OBJECTDIR}/_ext/1954962658/Helpers.o ../../../Microchip/TCPIP\ Stack/Helpers.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/Helpers.o.d > ${OBJECTDIR}/_ext/1954962658/Helpers.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/Helpers.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/Helpers.o.tmp ${OBJECTDIR}/_ext/1954962658/Helpers.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/Helpers.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/Helpers.o.d > ${OBJECTDIR}/_ext/1954962658/Helpers.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/Helpers.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/Helpers.o.tmp ${OBJECTDIR}/_ext/1954962658/Helpers.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/Helpers.o.tmp
endif
${OBJECTDIR}/_ext/243675038/WFTxPower.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFTxPower.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${RM} ${OBJECTDIR}/_ext/243675038/WFTxPower.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/243675038/WFTxPower.o.d -o ${OBJECTDIR}/_ext/243675038/WFTxPower.o ../../../Microchip/TCPIP\ Stack/WiFi/WFTxPower.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/243675038/WFTxPower.o.d > ${OBJECTDIR}/_ext/243675038/WFTxPower.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFTxPower.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFTxPower.o.tmp ${OBJECTDIR}/_ext/243675038/WFTxPower.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFTxPower.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/243675038/WFTxPower.o.d > ${OBJECTDIR}/_ext/243675038/WFTxPower.o.tmp
	${RM} ${OBJECTDIR}/_ext/243675038/WFTxPower.o.d 
	${CP} ${OBJECTDIR}/_ext/243675038/WFTxPower.o.tmp ${OBJECTDIR}/_ext/243675038/WFTxPower.o.d 
	${RM} ${OBJECTDIR}/_ext/243675038/WFTxPower.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/IP.o: ../../../Microchip/TCPIP\ Stack/IP.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/IP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_DA210_BRD_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../../../Microchip/Include/TCPIP Stack" -mlarge-code -MMD -MF ${OBJECTDIR}/_ext/1954962658/IP.o.d -o ${OBJECTDIR}/_ext/1954962658/IP.o ../../../Microchip/TCPIP\ Stack/IP.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/IP.o.d > ${OBJECTDIR}/_ext/1954962658/IP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/IP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/IP.o.tmp ${OBJECTDIR}/_ext/1954962658/IP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/IP.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1954962658/IP.o.d > ${OBJECTDIR}/_ext/1954962658/IP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/IP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/IP.o.tmp ${OBJECTDIR}/_ext/1954962658/IP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/IP.o.tmp
endif
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf  -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf ${OBJECTFILES}        -Wl,--defsym=__MPLAB_BUILD=1,--heap=1000,-L"..",-Map="$(BINDIR_)$(TARGETBASE).map",--report-mem,--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1
else
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf  -mcpu=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf ${OBJECTFILES}        -Wl,--defsym=__MPLAB_BUILD=1,--heap=1000,-L"..",-Map="$(BINDIR_)$(TARGETBASE).map",--report-mem,--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION)
	${MP_CC_DIR}\\pic30-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf -omf=elf
endif


# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf:
	${RM} -r build/C30-DA210_BRD_MRF24WB
	${RM} -r dist/C30-DA210_BRD_MRF24WB

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
