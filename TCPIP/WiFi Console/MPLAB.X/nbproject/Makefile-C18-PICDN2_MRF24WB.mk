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
CND_CONF=C18-PICDN2_MRF24WB

ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.cof
else
IMAGE_TYPE=production
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.cof
endif
# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}
# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1954962658/DynDNS.o ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o ${OBJECTDIR}/_ext/1954962658/DHCP.o ${OBJECTDIR}/_ext/243675038/WFMac.o ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o ${OBJECTDIR}/_ext/1954962658/UART.o ${OBJECTDIR}/_ext/1954962658/SPIFlash.o ${OBJECTDIR}/_ext/1954962658/FTP.o ${OBJECTDIR}/_ext/1954962658/Tick.o ${OBJECTDIR}/_ext/243675038/WFInit.o ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o ${OBJECTDIR}/_ext/243675038/WFParamMsg.o ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o ${OBJECTDIR}/_ext/1954962658/ARP.o ${OBJECTDIR}/_ext/1954962658/BigInt.o ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o ${OBJECTDIR}/_ext/1954962658/UDP.o ${OBJECTDIR}/_ext/1472/PingDemo.o ${OBJECTDIR}/_ext/243675038/WFScan.o ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o ${OBJECTDIR}/_ext/1954962658/SNTP.o ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o ${OBJECTDIR}/_ext/1954962658/ENC28J60.o ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o ${OBJECTDIR}/_ext/1954962658/StackTsk.o ${OBJECTDIR}/_ext/1472/MainDemo.o ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o ${OBJECTDIR}/_ext/1954962658/Announce.o ${OBJECTDIR}/_ext/1954962658/SNMP.o ${OBJECTDIR}/_ext/1954962658/Delay.o ${OBJECTDIR}/_ext/1954962658/HTTP2.o ${OBJECTDIR}/_ext/1954962658/SMTP.o ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o ${OBJECTDIR}/_ext/1954962658/SPIRAM.o ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o ${OBJECTDIR}/_ext/1954962658/TFTPc.o ${OBJECTDIR}/_ext/1472/IperfApp.o ${OBJECTDIR}/_ext/1954962658/SSL.o ${OBJECTDIR}/_ext/243675038/WF_Eint.o ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o ${OBJECTDIR}/_ext/1954962658/MPFS2.o ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o ${OBJECTDIR}/_ext/243675038/WFEventHandler.o ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o ${OBJECTDIR}/_ext/1954962658/AutoIP.o ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o ${OBJECTDIR}/_ext/1954962658/NBNS.o ${OBJECTDIR}/_ext/243675038/WFPowerSave.o ${OBJECTDIR}/_ext/1954962658/Hashes.o ${OBJECTDIR}/_ext/1954962658/Telnet.o ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o ${OBJECTDIR}/_ext/1954962658/Reboot.o ${OBJECTDIR}/_ext/243675038/WFConsole.o ${OBJECTDIR}/_ext/1954962658/Random.o ${OBJECTDIR}/_ext/1954962658/DNS.o ${OBJECTDIR}/_ext/1954962658/DHCPs.o ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o ${OBJECTDIR}/_ext/243675038/WF_Spi.o ${OBJECTDIR}/_ext/1472/UARTConfig.o ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o ${OBJECTDIR}/_ext/243675038/WFDriverCom.o ${OBJECTDIR}/_ext/1472/WF_Config.o ${OBJECTDIR}/_ext/1954962658/TCP.o ${OBJECTDIR}/_ext/1954962658/ICMP.o ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o ${OBJECTDIR}/_ext/1954962658/Helpers.o ${OBJECTDIR}/_ext/243675038/WFTxPower.o ${OBJECTDIR}/_ext/1954962658/IP.o


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
MP_CC=C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin\\mcc18.exe
# MP_BC is not defined
MP_AS=C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin\\..\\mpasm\\MPASMWIN.exe
MP_LD=C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin\\mplink.exe
MP_AR=C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin\\mplib.exe
# MP_BC is not defined
MP_CC_DIR=C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin
# MP_BC_DIR is not defined
MP_AS_DIR=C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin\\..\\mpasm
MP_LD_DIR=C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin
MP_AR_DIR=C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin
# MP_BC_DIR is not defined
# This makefile will use a C preprocessor to generate dependency files
MP_CPP=C:/Program\ Files/Microchip/MPLABX/mplab_ide/mplab_ide/modules/../../bin/mplab-cpp
.build-conf: ${BUILD_SUBPROJECTS}
	${MAKE}  -f nbproject/Makefile-C18-PICDN2_MRF24WB.mk dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.cof

MP_PROCESSOR_OPTION=18F97J60
MP_PROCESSOR_OPTION_LD=18f97j60
MP_LINKER_DEBUG_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: createRevGrep
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
__revgrep__:   nbproject/Makefile-${CND_CONF}.mk
	@echo 'grep -q $$@' > __revgrep__
	@echo 'if [ "$$?" -ne "0" ]; then' >> __revgrep__
	@echo '  exit 0' >> __revgrep__
	@echo 'else' >> __revgrep__
	@echo '  exit 1' >> __revgrep__
	@echo 'fi' >> __revgrep__
	@chmod +x __revgrep__
else
__revgrep__:   nbproject/Makefile-${CND_CONF}.mk
	@echo 'grep -q $$@' > __revgrep__
	@echo 'if [ "$$?" -ne "0" ]; then' >> __revgrep__
	@echo '  exit 0' >> __revgrep__
	@echo 'else' >> __revgrep__
	@echo '  exit 1' >> __revgrep__
	@echo 'fi' >> __revgrep__
	@chmod +x __revgrep__
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1954962658/DynDNS.o: ../../../Microchip/TCPIP\ Stack/DynDNS.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/DynDNS.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/DynDNS.o   ../../../Microchip/TCPIP\ Stack/DynDNS.c  > ${OBJECTDIR}/_ext/1954962658/DynDNS.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/DynDNS.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/DynDNS.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/DynDNS.o.temp ../../../Microchip/TCPIP\ Stack/DynDNS.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/DynDNS.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/DynDNS.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/DynDNS.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/DynDNS.o.temp >> ${OBJECTDIR}/_ext/1954962658/DynDNS.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o: ../../../Microchip/TCPIP\ Stack/ZeroconfLinkLocal.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o   ../../../Microchip/TCPIP\ Stack/ZeroconfLinkLocal.c  > ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.temp ../../../Microchip/TCPIP\ Stack/ZeroconfLinkLocal.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.temp >> ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/DHCP.o: ../../../Microchip/TCPIP\ Stack/DHCP.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/DHCP.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/DHCP.o   ../../../Microchip/TCPIP\ Stack/DHCP.c  > ${OBJECTDIR}/_ext/1954962658/DHCP.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/DHCP.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/DHCP.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/DHCP.o.temp ../../../Microchip/TCPIP\ Stack/DHCP.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/DHCP.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/DHCP.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/DHCP.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/DHCP.o.temp >> ${OBJECTDIR}/_ext/1954962658/DHCP.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/243675038/WFMac.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFMac.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/243675038/WFMac.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/243675038/WFMac.o   ../../../Microchip/TCPIP\ Stack/WiFi/WFMac.c  > ${OBJECTDIR}/_ext/243675038/WFMac.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/243675038/WFMac.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/243675038/WFMac.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/243675038/WFMac.o.temp ../../../Microchip/TCPIP\ Stack/WiFi/WFMac.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/243675038 > ${OBJECTDIR}/_ext/243675038/WFMac.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/243675038/WFMac.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/243675038/WFMac.o.d
else
	cat ${OBJECTDIR}/_ext/243675038/WFMac.o.temp >> ${OBJECTDIR}/_ext/243675038/WFMac.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o   ../../../Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.c  > ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o.temp ../../../Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/243675038 > ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o.d
else
	cat ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o.temp >> ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/UART.o: ../../../Microchip/TCPIP\ Stack/UART.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/UART.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/UART.o   ../../../Microchip/TCPIP\ Stack/UART.c  > ${OBJECTDIR}/_ext/1954962658/UART.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/UART.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/UART.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/UART.o.temp ../../../Microchip/TCPIP\ Stack/UART.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/UART.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/UART.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/UART.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/UART.o.temp >> ${OBJECTDIR}/_ext/1954962658/UART.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/SPIFlash.o: ../../../Microchip/TCPIP\ Stack/SPIFlash.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/SPIFlash.o   ../../../Microchip/TCPIP\ Stack/SPIFlash.c  > ${OBJECTDIR}/_ext/1954962658/SPIFlash.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/SPIFlash.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/SPIFlash.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.temp ../../../Microchip/TCPIP\ Stack/SPIFlash.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.temp >> ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/FTP.o: ../../../Microchip/TCPIP\ Stack/FTP.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/FTP.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/FTP.o   ../../../Microchip/TCPIP\ Stack/FTP.c  > ${OBJECTDIR}/_ext/1954962658/FTP.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/FTP.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/FTP.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/FTP.o.temp ../../../Microchip/TCPIP\ Stack/FTP.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/FTP.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/FTP.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/FTP.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/FTP.o.temp >> ${OBJECTDIR}/_ext/1954962658/FTP.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/Tick.o: ../../../Microchip/TCPIP\ Stack/Tick.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/Tick.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/Tick.o   ../../../Microchip/TCPIP\ Stack/Tick.c  > ${OBJECTDIR}/_ext/1954962658/Tick.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/Tick.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/Tick.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/Tick.o.temp ../../../Microchip/TCPIP\ Stack/Tick.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/Tick.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/Tick.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/Tick.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/Tick.o.temp >> ${OBJECTDIR}/_ext/1954962658/Tick.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/243675038/WFInit.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFInit.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/243675038/WFInit.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/243675038/WFInit.o   ../../../Microchip/TCPIP\ Stack/WiFi/WFInit.c  > ${OBJECTDIR}/_ext/243675038/WFInit.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/243675038/WFInit.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/243675038/WFInit.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/243675038/WFInit.o.temp ../../../Microchip/TCPIP\ Stack/WiFi/WFInit.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/243675038 > ${OBJECTDIR}/_ext/243675038/WFInit.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/243675038/WFInit.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/243675038/WFInit.o.d
else
	cat ${OBJECTDIR}/_ext/243675038/WFInit.o.temp >> ${OBJECTDIR}/_ext/243675038/WFInit.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o: ../../../Microchip/TCPIP\ Stack/UDPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o   ../../../Microchip/TCPIP\ Stack/UDPPerformanceTest.c  > ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.temp ../../../Microchip/TCPIP\ Stack/UDPPerformanceTest.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.temp >> ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/243675038/WFParamMsg.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFParamMsg.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/243675038/WFParamMsg.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/243675038/WFParamMsg.o   ../../../Microchip/TCPIP\ Stack/WiFi/WFParamMsg.c  > ${OBJECTDIR}/_ext/243675038/WFParamMsg.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/243675038/WFParamMsg.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/243675038/WFParamMsg.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/243675038/WFParamMsg.o.temp ../../../Microchip/TCPIP\ Stack/WiFi/WFParamMsg.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/243675038 > ${OBJECTDIR}/_ext/243675038/WFParamMsg.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/243675038/WFParamMsg.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/243675038/WFParamMsg.o.d
else
	cat ${OBJECTDIR}/_ext/243675038/WFParamMsg.o.temp >> ${OBJECTDIR}/_ext/243675038/WFParamMsg.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/243675038/WFDriverRaw.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o   ../../../Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.c  > ${OBJECTDIR}/_ext/243675038/WFDriverRaw.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/243675038/WFDriverRaw.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/243675038/WFDriverRaw.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o.temp ../../../Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/243675038 > ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o.d
else
	cat ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o.temp >> ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/ARP.o: ../../../Microchip/TCPIP\ Stack/ARP.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/ARP.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/ARP.o   ../../../Microchip/TCPIP\ Stack/ARP.c  > ${OBJECTDIR}/_ext/1954962658/ARP.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/ARP.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/ARP.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/ARP.o.temp ../../../Microchip/TCPIP\ Stack/ARP.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/ARP.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/ARP.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/ARP.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/ARP.o.temp >> ${OBJECTDIR}/_ext/1954962658/ARP.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/BigInt.o: ../../../Microchip/TCPIP\ Stack/BigInt.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/BigInt.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/BigInt.o   ../../../Microchip/TCPIP\ Stack/BigInt.c  > ${OBJECTDIR}/_ext/1954962658/BigInt.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/BigInt.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/BigInt.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/BigInt.o.temp ../../../Microchip/TCPIP\ Stack/BigInt.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/BigInt.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/BigInt.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/BigInt.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/BigInt.o.temp >> ${OBJECTDIR}/_ext/1954962658/BigInt.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o   ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.c  > ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o.temp ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/243675038 > ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o.d
else
	cat ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o.temp >> ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/UDP.o: ../../../Microchip/TCPIP\ Stack/UDP.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/UDP.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/UDP.o   ../../../Microchip/TCPIP\ Stack/UDP.c  > ${OBJECTDIR}/_ext/1954962658/UDP.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/UDP.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/UDP.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/UDP.o.temp ../../../Microchip/TCPIP\ Stack/UDP.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/UDP.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/UDP.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/UDP.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/UDP.o.temp >> ${OBJECTDIR}/_ext/1954962658/UDP.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1472/PingDemo.o: ../PingDemo.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1472/PingDemo.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/PingDemo.o   ../PingDemo.c  > ${OBJECTDIR}/_ext/1472/PingDemo.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1472/PingDemo.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1472/PingDemo.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1472/PingDemo.o.temp ../PingDemo.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1472 > ${OBJECTDIR}/_ext/1472/PingDemo.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1472/PingDemo.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1472/PingDemo.o.d
else
	cat ${OBJECTDIR}/_ext/1472/PingDemo.o.temp >> ${OBJECTDIR}/_ext/1472/PingDemo.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/243675038/WFScan.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFScan.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/243675038/WFScan.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/243675038/WFScan.o   ../../../Microchip/TCPIP\ Stack/WiFi/WFScan.c  > ${OBJECTDIR}/_ext/243675038/WFScan.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/243675038/WFScan.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/243675038/WFScan.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/243675038/WFScan.o.temp ../../../Microchip/TCPIP\ Stack/WiFi/WFScan.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/243675038 > ${OBJECTDIR}/_ext/243675038/WFScan.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/243675038/WFScan.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/243675038/WFScan.o.d
else
	cat ${OBJECTDIR}/_ext/243675038/WFScan.o.temp >> ${OBJECTDIR}/_ext/243675038/WFScan.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o: ../../../Microchip/TCPIP\ Stack/ZeroconfMulticastDNS.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o   ../../../Microchip/TCPIP\ Stack/ZeroconfMulticastDNS.c  > ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.temp ../../../Microchip/TCPIP\ Stack/ZeroconfMulticastDNS.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.temp >> ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/SNTP.o: ../../../Microchip/TCPIP\ Stack/SNTP.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/SNTP.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/SNTP.o   ../../../Microchip/TCPIP\ Stack/SNTP.c  > ${OBJECTDIR}/_ext/1954962658/SNTP.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/SNTP.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/SNTP.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/SNTP.o.temp ../../../Microchip/TCPIP\ Stack/SNTP.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/SNTP.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/SNTP.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/SNTP.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/SNTP.o.temp >> ${OBJECTDIR}/_ext/1954962658/SNTP.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o: ../../../Microchip/TCPIP\ Stack/BerkeleyAPI.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o   ../../../Microchip/TCPIP\ Stack/BerkeleyAPI.c  > ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.temp ../../../Microchip/TCPIP\ Stack/BerkeleyAPI.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.temp >> ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/ENC28J60.o: ../../../Microchip/TCPIP\ Stack/ENC28J60.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/ENC28J60.o   ../../../Microchip/TCPIP\ Stack/ENC28J60.c  > ${OBJECTDIR}/_ext/1954962658/ENC28J60.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/ENC28J60.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/ENC28J60.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.temp ../../../Microchip/TCPIP\ Stack/ENC28J60.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.temp >> ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o: ../../../Microchip/TCPIP\ Stack/UART2TCPBridge.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o   ../../../Microchip/TCPIP\ Stack/UART2TCPBridge.c  > ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.temp ../../../Microchip/TCPIP\ Stack/UART2TCPBridge.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.temp >> ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/StackTsk.o: ../../../Microchip/TCPIP\ Stack/StackTsk.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/StackTsk.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/StackTsk.o   ../../../Microchip/TCPIP\ Stack/StackTsk.c  > ${OBJECTDIR}/_ext/1954962658/StackTsk.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/StackTsk.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/StackTsk.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/StackTsk.o.temp ../../../Microchip/TCPIP\ Stack/StackTsk.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/StackTsk.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/StackTsk.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/StackTsk.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/StackTsk.o.temp >> ${OBJECTDIR}/_ext/1954962658/StackTsk.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1472/MainDemo.o: ../MainDemo.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/MainDemo.o   ../MainDemo.c  > ${OBJECTDIR}/_ext/1472/MainDemo.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1472/MainDemo.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1472/MainDemo.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1472/MainDemo.o.temp ../MainDemo.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1472 > ${OBJECTDIR}/_ext/1472/MainDemo.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1472/MainDemo.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1472/MainDemo.o.d
else
	cat ${OBJECTDIR}/_ext/1472/MainDemo.o.temp >> ${OBJECTDIR}/_ext/1472/MainDemo.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o   ../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.c  > ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o.temp ../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/243675038 > ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o.d
else
	cat ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o.temp >> ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o   ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.c  > ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o.temp ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/243675038 > ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o.d
else
	cat ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o.temp >> ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/Announce.o: ../../../Microchip/TCPIP\ Stack/Announce.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/Announce.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/Announce.o   ../../../Microchip/TCPIP\ Stack/Announce.c  > ${OBJECTDIR}/_ext/1954962658/Announce.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/Announce.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/Announce.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/Announce.o.temp ../../../Microchip/TCPIP\ Stack/Announce.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/Announce.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/Announce.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/Announce.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/Announce.o.temp >> ${OBJECTDIR}/_ext/1954962658/Announce.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/SNMP.o: ../../../Microchip/TCPIP\ Stack/SNMP.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/SNMP.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/SNMP.o   ../../../Microchip/TCPIP\ Stack/SNMP.c  > ${OBJECTDIR}/_ext/1954962658/SNMP.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/SNMP.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/SNMP.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/SNMP.o.temp ../../../Microchip/TCPIP\ Stack/SNMP.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/SNMP.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/SNMP.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/SNMP.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/SNMP.o.temp >> ${OBJECTDIR}/_ext/1954962658/SNMP.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/Delay.o: ../../../Microchip/TCPIP\ Stack/Delay.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/Delay.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/Delay.o   ../../../Microchip/TCPIP\ Stack/Delay.c  > ${OBJECTDIR}/_ext/1954962658/Delay.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/Delay.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/Delay.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/Delay.o.temp ../../../Microchip/TCPIP\ Stack/Delay.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/Delay.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/Delay.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/Delay.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/Delay.o.temp >> ${OBJECTDIR}/_ext/1954962658/Delay.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/HTTP2.o: ../../../Microchip/TCPIP\ Stack/HTTP2.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/HTTP2.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/HTTP2.o   ../../../Microchip/TCPIP\ Stack/HTTP2.c  > ${OBJECTDIR}/_ext/1954962658/HTTP2.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/HTTP2.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/HTTP2.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/HTTP2.o.temp ../../../Microchip/TCPIP\ Stack/HTTP2.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/HTTP2.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/HTTP2.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/HTTP2.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/HTTP2.o.temp >> ${OBJECTDIR}/_ext/1954962658/HTTP2.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/SMTP.o: ../../../Microchip/TCPIP\ Stack/SMTP.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/SMTP.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/SMTP.o   ../../../Microchip/TCPIP\ Stack/SMTP.c  > ${OBJECTDIR}/_ext/1954962658/SMTP.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/SMTP.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/SMTP.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/SMTP.o.temp ../../../Microchip/TCPIP\ Stack/SMTP.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/SMTP.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/SMTP.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/SMTP.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/SMTP.o.temp >> ${OBJECTDIR}/_ext/1954962658/SMTP.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/ENCX24J600.o: ../../../Microchip/TCPIP\ Stack/ENCX24J600.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o   ../../../Microchip/TCPIP\ Stack/ENCX24J600.c  > ${OBJECTDIR}/_ext/1954962658/ENCX24J600.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/ENCX24J600.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/ENCX24J600.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.temp ../../../Microchip/TCPIP\ Stack/ENCX24J600.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.temp >> ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/SPIRAM.o: ../../../Microchip/TCPIP\ Stack/SPIRAM.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/SPIRAM.o   ../../../Microchip/TCPIP\ Stack/SPIRAM.c  > ${OBJECTDIR}/_ext/1954962658/SPIRAM.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/SPIRAM.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/SPIRAM.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.temp ../../../Microchip/TCPIP\ Stack/SPIRAM.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.temp >> ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/243675038/WFConnectionManager.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o   ../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.c  > ${OBJECTDIR}/_ext/243675038/WFConnectionManager.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/243675038/WFConnectionManager.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/243675038/WFConnectionManager.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o.temp ../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/243675038 > ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o.d
else
	cat ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o.temp >> ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/TFTPc.o: ../../../Microchip/TCPIP\ Stack/TFTPc.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/TFTPc.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/TFTPc.o   ../../../Microchip/TCPIP\ Stack/TFTPc.c  > ${OBJECTDIR}/_ext/1954962658/TFTPc.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/TFTPc.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/TFTPc.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/TFTPc.o.temp ../../../Microchip/TCPIP\ Stack/TFTPc.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/TFTPc.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/TFTPc.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/TFTPc.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/TFTPc.o.temp >> ${OBJECTDIR}/_ext/1954962658/TFTPc.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1472/IperfApp.o: ../IperfApp.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1472/IperfApp.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/IperfApp.o   ../IperfApp.c  > ${OBJECTDIR}/_ext/1472/IperfApp.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1472/IperfApp.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1472/IperfApp.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1472/IperfApp.o.temp ../IperfApp.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1472 > ${OBJECTDIR}/_ext/1472/IperfApp.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1472/IperfApp.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1472/IperfApp.o.d
else
	cat ${OBJECTDIR}/_ext/1472/IperfApp.o.temp >> ${OBJECTDIR}/_ext/1472/IperfApp.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/SSL.o: ../../../Microchip/TCPIP\ Stack/SSL.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/SSL.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/SSL.o   ../../../Microchip/TCPIP\ Stack/SSL.c  > ${OBJECTDIR}/_ext/1954962658/SSL.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/SSL.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/SSL.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/SSL.o.temp ../../../Microchip/TCPIP\ Stack/SSL.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/SSL.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/SSL.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/SSL.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/SSL.o.temp >> ${OBJECTDIR}/_ext/1954962658/SSL.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/243675038/WF_Eint.o: ../../../Microchip/TCPIP\ Stack/WiFi/WF_Eint.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/243675038/WF_Eint.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/243675038/WF_Eint.o   ../../../Microchip/TCPIP\ Stack/WiFi/WF_Eint.c  > ${OBJECTDIR}/_ext/243675038/WF_Eint.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/243675038/WF_Eint.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/243675038/WF_Eint.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/243675038/WF_Eint.o.temp ../../../Microchip/TCPIP\ Stack/WiFi/WF_Eint.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/243675038 > ${OBJECTDIR}/_ext/243675038/WF_Eint.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/243675038/WF_Eint.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/243675038/WF_Eint.o.d
else
	cat ${OBJECTDIR}/_ext/243675038/WF_Eint.o.temp >> ${OBJECTDIR}/_ext/243675038/WF_Eint.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/243675038/WFDataTxRx.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o   ../../../Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.c  > ${OBJECTDIR}/_ext/243675038/WFDataTxRx.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/243675038/WFDataTxRx.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/243675038/WFDataTxRx.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o.temp ../../../Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/243675038 > ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o.d
else
	cat ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o.temp >> ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/MPFS2.o: ../../../Microchip/TCPIP\ Stack/MPFS2.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/MPFS2.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/MPFS2.o   ../../../Microchip/TCPIP\ Stack/MPFS2.c  > ${OBJECTDIR}/_ext/1954962658/MPFS2.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/MPFS2.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/MPFS2.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/MPFS2.o.temp ../../../Microchip/TCPIP\ Stack/MPFS2.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/MPFS2.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/MPFS2.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/MPFS2.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/MPFS2.o.temp >> ${OBJECTDIR}/_ext/1954962658/MPFS2.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o   ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.c  > ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o.temp ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/243675038 > ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o.d
else
	cat ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o.temp >> ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/243675038/WFEventHandler.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFEventHandler.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/243675038/WFEventHandler.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/243675038/WFEventHandler.o   ../../../Microchip/TCPIP\ Stack/WiFi/WFEventHandler.c  > ${OBJECTDIR}/_ext/243675038/WFEventHandler.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/243675038/WFEventHandler.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/243675038/WFEventHandler.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/243675038/WFEventHandler.o.temp ../../../Microchip/TCPIP\ Stack/WiFi/WFEventHandler.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/243675038 > ${OBJECTDIR}/_ext/243675038/WFEventHandler.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/243675038/WFEventHandler.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/243675038/WFEventHandler.o.d
else
	cat ${OBJECTDIR}/_ext/243675038/WFEventHandler.o.temp >> ${OBJECTDIR}/_ext/243675038/WFEventHandler.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/LCDBlocking.o: ../../../Microchip/TCPIP\ Stack/LCDBlocking.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o   ../../../Microchip/TCPIP\ Stack/LCDBlocking.c  > ${OBJECTDIR}/_ext/1954962658/LCDBlocking.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/LCDBlocking.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/LCDBlocking.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.temp ../../../Microchip/TCPIP\ Stack/LCDBlocking.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.temp >> ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/AutoIP.o: ../../../Microchip/TCPIP\ Stack/AutoIP.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/AutoIP.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/AutoIP.o   ../../../Microchip/TCPIP\ Stack/AutoIP.c  > ${OBJECTDIR}/_ext/1954962658/AutoIP.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/AutoIP.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/AutoIP.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/AutoIP.o.temp ../../../Microchip/TCPIP\ Stack/AutoIP.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/AutoIP.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/AutoIP.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/AutoIP.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/AutoIP.o.temp >> ${OBJECTDIR}/_ext/1954962658/AutoIP.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o: ../../../Microchip/TCPIP\ Stack/TCPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o   ../../../Microchip/TCPIP\ Stack/TCPPerformanceTest.c  > ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.temp ../../../Microchip/TCPIP\ Stack/TCPPerformanceTest.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.temp >> ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/NBNS.o: ../../../Microchip/TCPIP\ Stack/NBNS.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/NBNS.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/NBNS.o   ../../../Microchip/TCPIP\ Stack/NBNS.c  > ${OBJECTDIR}/_ext/1954962658/NBNS.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/NBNS.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/NBNS.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/NBNS.o.temp ../../../Microchip/TCPIP\ Stack/NBNS.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/NBNS.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/NBNS.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/NBNS.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/NBNS.o.temp >> ${OBJECTDIR}/_ext/1954962658/NBNS.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/243675038/WFPowerSave.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFPowerSave.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/243675038/WFPowerSave.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/243675038/WFPowerSave.o   ../../../Microchip/TCPIP\ Stack/WiFi/WFPowerSave.c  > ${OBJECTDIR}/_ext/243675038/WFPowerSave.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/243675038/WFPowerSave.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/243675038/WFPowerSave.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/243675038/WFPowerSave.o.temp ../../../Microchip/TCPIP\ Stack/WiFi/WFPowerSave.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/243675038 > ${OBJECTDIR}/_ext/243675038/WFPowerSave.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/243675038/WFPowerSave.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/243675038/WFPowerSave.o.d
else
	cat ${OBJECTDIR}/_ext/243675038/WFPowerSave.o.temp >> ${OBJECTDIR}/_ext/243675038/WFPowerSave.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/Hashes.o: ../../../Microchip/TCPIP\ Stack/Hashes.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/Hashes.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/Hashes.o   ../../../Microchip/TCPIP\ Stack/Hashes.c  > ${OBJECTDIR}/_ext/1954962658/Hashes.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/Hashes.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/Hashes.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/Hashes.o.temp ../../../Microchip/TCPIP\ Stack/Hashes.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/Hashes.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/Hashes.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/Hashes.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/Hashes.o.temp >> ${OBJECTDIR}/_ext/1954962658/Hashes.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/Telnet.o: ../../../Microchip/TCPIP\ Stack/Telnet.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/Telnet.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/Telnet.o   ../../../Microchip/TCPIP\ Stack/Telnet.c  > ${OBJECTDIR}/_ext/1954962658/Telnet.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/Telnet.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/Telnet.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/Telnet.o.temp ../../../Microchip/TCPIP\ Stack/Telnet.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/Telnet.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/Telnet.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/Telnet.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/Telnet.o.temp >> ${OBJECTDIR}/_ext/1954962658/Telnet.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o: ../../../Microchip/TCPIP\ Stack/SPIEEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o   ../../../Microchip/TCPIP\ Stack/SPIEEPROM.c  > ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.temp ../../../Microchip/TCPIP\ Stack/SPIEEPROM.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.temp >> ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/Reboot.o: ../../../Microchip/TCPIP\ Stack/Reboot.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/Reboot.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/Reboot.o   ../../../Microchip/TCPIP\ Stack/Reboot.c  > ${OBJECTDIR}/_ext/1954962658/Reboot.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/Reboot.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/Reboot.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/Reboot.o.temp ../../../Microchip/TCPIP\ Stack/Reboot.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/Reboot.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/Reboot.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/Reboot.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/Reboot.o.temp >> ${OBJECTDIR}/_ext/1954962658/Reboot.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/243675038/WFConsole.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsole.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsole.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/243675038/WFConsole.o   ../../../Microchip/TCPIP\ Stack/WiFi/WFConsole.c  > ${OBJECTDIR}/_ext/243675038/WFConsole.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/243675038/WFConsole.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/243675038/WFConsole.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/243675038/WFConsole.o.temp ../../../Microchip/TCPIP\ Stack/WiFi/WFConsole.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/243675038 > ${OBJECTDIR}/_ext/243675038/WFConsole.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/243675038/WFConsole.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/243675038/WFConsole.o.d
else
	cat ${OBJECTDIR}/_ext/243675038/WFConsole.o.temp >> ${OBJECTDIR}/_ext/243675038/WFConsole.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/Random.o: ../../../Microchip/TCPIP\ Stack/Random.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/Random.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/Random.o   ../../../Microchip/TCPIP\ Stack/Random.c  > ${OBJECTDIR}/_ext/1954962658/Random.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/Random.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/Random.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/Random.o.temp ../../../Microchip/TCPIP\ Stack/Random.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/Random.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/Random.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/Random.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/Random.o.temp >> ${OBJECTDIR}/_ext/1954962658/Random.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/DNS.o: ../../../Microchip/TCPIP\ Stack/DNS.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/DNS.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/DNS.o   ../../../Microchip/TCPIP\ Stack/DNS.c  > ${OBJECTDIR}/_ext/1954962658/DNS.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/DNS.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/DNS.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/DNS.o.temp ../../../Microchip/TCPIP\ Stack/DNS.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/DNS.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/DNS.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/DNS.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/DNS.o.temp >> ${OBJECTDIR}/_ext/1954962658/DNS.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/DHCPs.o: ../../../Microchip/TCPIP\ Stack/DHCPs.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/DHCPs.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/DHCPs.o   ../../../Microchip/TCPIP\ Stack/DHCPs.c  > ${OBJECTDIR}/_ext/1954962658/DHCPs.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/DHCPs.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/DHCPs.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/DHCPs.o.temp ../../../Microchip/TCPIP\ Stack/DHCPs.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/DHCPs.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/DHCPs.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/DHCPs.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/DHCPs.o.temp >> ${OBJECTDIR}/_ext/1954962658/DHCPs.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o: ../../../Microchip/TCPIP\ Stack/ZeroconfHelper.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o   ../../../Microchip/TCPIP\ Stack/ZeroconfHelper.c  > ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.temp ../../../Microchip/TCPIP\ Stack/ZeroconfHelper.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.temp >> ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o   ../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.c  > ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o.temp ../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/243675038 > ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o.d
else
	cat ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o.temp >> ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/243675038/WF_Spi.o: ../../../Microchip/TCPIP\ Stack/WiFi/WF_Spi.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/243675038/WF_Spi.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/243675038/WF_Spi.o   ../../../Microchip/TCPIP\ Stack/WiFi/WF_Spi.c  > ${OBJECTDIR}/_ext/243675038/WF_Spi.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/243675038/WF_Spi.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/243675038/WF_Spi.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/243675038/WF_Spi.o.temp ../../../Microchip/TCPIP\ Stack/WiFi/WF_Spi.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/243675038 > ${OBJECTDIR}/_ext/243675038/WF_Spi.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/243675038/WF_Spi.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/243675038/WF_Spi.o.d
else
	cat ${OBJECTDIR}/_ext/243675038/WF_Spi.o.temp >> ${OBJECTDIR}/_ext/243675038/WF_Spi.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1472/UARTConfig.o: ../UARTConfig.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/UARTConfig.o   ../UARTConfig.c  > ${OBJECTDIR}/_ext/1472/UARTConfig.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1472/UARTConfig.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1472/UARTConfig.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1472/UARTConfig.o.temp ../UARTConfig.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1472 > ${OBJECTDIR}/_ext/1472/UARTConfig.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1472/UARTConfig.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1472/UARTConfig.o.d
else
	cat ${OBJECTDIR}/_ext/1472/UARTConfig.o.temp >> ${OBJECTDIR}/_ext/1472/UARTConfig.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o   ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.c  > ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o.temp ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/243675038 > ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o.d
else
	cat ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o.temp >> ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/243675038/WFDriverCom.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFDriverCom.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/243675038/WFDriverCom.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/243675038/WFDriverCom.o   ../../../Microchip/TCPIP\ Stack/WiFi/WFDriverCom.c  > ${OBJECTDIR}/_ext/243675038/WFDriverCom.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/243675038/WFDriverCom.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/243675038/WFDriverCom.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/243675038/WFDriverCom.o.temp ../../../Microchip/TCPIP\ Stack/WiFi/WFDriverCom.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/243675038 > ${OBJECTDIR}/_ext/243675038/WFDriverCom.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/243675038/WFDriverCom.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/243675038/WFDriverCom.o.d
else
	cat ${OBJECTDIR}/_ext/243675038/WFDriverCom.o.temp >> ${OBJECTDIR}/_ext/243675038/WFDriverCom.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1472/WF_Config.o: ../WF_Config.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1472/WF_Config.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/WF_Config.o   ../WF_Config.c  > ${OBJECTDIR}/_ext/1472/WF_Config.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1472/WF_Config.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1472/WF_Config.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1472/WF_Config.o.temp ../WF_Config.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1472 > ${OBJECTDIR}/_ext/1472/WF_Config.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1472/WF_Config.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1472/WF_Config.o.d
else
	cat ${OBJECTDIR}/_ext/1472/WF_Config.o.temp >> ${OBJECTDIR}/_ext/1472/WF_Config.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/TCP.o: ../../../Microchip/TCPIP\ Stack/TCP.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/TCP.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/TCP.o   ../../../Microchip/TCPIP\ Stack/TCP.c  > ${OBJECTDIR}/_ext/1954962658/TCP.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/TCP.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/TCP.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/TCP.o.temp ../../../Microchip/TCPIP\ Stack/TCP.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/TCP.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/TCP.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/TCP.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/TCP.o.temp >> ${OBJECTDIR}/_ext/1954962658/TCP.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/ICMP.o: ../../../Microchip/TCPIP\ Stack/ICMP.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/ICMP.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/ICMP.o   ../../../Microchip/TCPIP\ Stack/ICMP.c  > ${OBJECTDIR}/_ext/1954962658/ICMP.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/ICMP.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/ICMP.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/ICMP.o.temp ../../../Microchip/TCPIP\ Stack/ICMP.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/ICMP.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/ICMP.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/ICMP.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/ICMP.o.temp >> ${OBJECTDIR}/_ext/1954962658/ICMP.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o   ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.c  > ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o.temp ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/243675038 > ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o.d
else
	cat ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o.temp >> ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/Helpers.o: ../../../Microchip/TCPIP\ Stack/Helpers.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/Helpers.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/Helpers.o   ../../../Microchip/TCPIP\ Stack/Helpers.c  > ${OBJECTDIR}/_ext/1954962658/Helpers.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/Helpers.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/Helpers.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/Helpers.o.temp ../../../Microchip/TCPIP\ Stack/Helpers.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/Helpers.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/Helpers.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/Helpers.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/Helpers.o.temp >> ${OBJECTDIR}/_ext/1954962658/Helpers.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/243675038/WFTxPower.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFTxPower.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/243675038/WFTxPower.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/243675038/WFTxPower.o   ../../../Microchip/TCPIP\ Stack/WiFi/WFTxPower.c  > ${OBJECTDIR}/_ext/243675038/WFTxPower.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/243675038/WFTxPower.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/243675038/WFTxPower.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/243675038/WFTxPower.o.temp ../../../Microchip/TCPIP\ Stack/WiFi/WFTxPower.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/243675038 > ${OBJECTDIR}/_ext/243675038/WFTxPower.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/243675038/WFTxPower.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/243675038/WFTxPower.o.d
else
	cat ${OBJECTDIR}/_ext/243675038/WFTxPower.o.temp >> ${OBJECTDIR}/_ext/243675038/WFTxPower.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/IP.o: ../../../Microchip/TCPIP\ Stack/IP.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/IP.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/IP.o   ../../../Microchip/TCPIP\ Stack/IP.c  > ${OBJECTDIR}/_ext/1954962658/IP.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/IP.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/IP.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/IP.o.temp ../../../Microchip/TCPIP\ Stack/IP.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/IP.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/IP.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/IP.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/IP.o.temp >> ${OBJECTDIR}/_ext/1954962658/IP.o.d
endif
	${RM} __temp_cpp_output__
else
${OBJECTDIR}/_ext/1954962658/DynDNS.o: ../../../Microchip/TCPIP\ Stack/DynDNS.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/DynDNS.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/DynDNS.o   ../../../Microchip/TCPIP\ Stack/DynDNS.c  > ${OBJECTDIR}/_ext/1954962658/DynDNS.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/DynDNS.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/DynDNS.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/DynDNS.o.temp ../../../Microchip/TCPIP\ Stack/DynDNS.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/DynDNS.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/DynDNS.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/DynDNS.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/DynDNS.o.temp >> ${OBJECTDIR}/_ext/1954962658/DynDNS.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o: ../../../Microchip/TCPIP\ Stack/ZeroconfLinkLocal.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o   ../../../Microchip/TCPIP\ Stack/ZeroconfLinkLocal.c  > ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.temp ../../../Microchip/TCPIP\ Stack/ZeroconfLinkLocal.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.temp >> ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/DHCP.o: ../../../Microchip/TCPIP\ Stack/DHCP.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/DHCP.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/DHCP.o   ../../../Microchip/TCPIP\ Stack/DHCP.c  > ${OBJECTDIR}/_ext/1954962658/DHCP.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/DHCP.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/DHCP.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/DHCP.o.temp ../../../Microchip/TCPIP\ Stack/DHCP.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/DHCP.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/DHCP.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/DHCP.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/DHCP.o.temp >> ${OBJECTDIR}/_ext/1954962658/DHCP.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/243675038/WFMac.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFMac.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/243675038/WFMac.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/243675038/WFMac.o   ../../../Microchip/TCPIP\ Stack/WiFi/WFMac.c  > ${OBJECTDIR}/_ext/243675038/WFMac.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/243675038/WFMac.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/243675038/WFMac.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/243675038/WFMac.o.temp ../../../Microchip/TCPIP\ Stack/WiFi/WFMac.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/243675038 > ${OBJECTDIR}/_ext/243675038/WFMac.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/243675038/WFMac.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/243675038/WFMac.o.d
else
	cat ${OBJECTDIR}/_ext/243675038/WFMac.o.temp >> ${OBJECTDIR}/_ext/243675038/WFMac.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o   ../../../Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.c  > ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o.temp ../../../Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/243675038 > ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o.d
else
	cat ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o.temp >> ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/UART.o: ../../../Microchip/TCPIP\ Stack/UART.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/UART.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/UART.o   ../../../Microchip/TCPIP\ Stack/UART.c  > ${OBJECTDIR}/_ext/1954962658/UART.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/UART.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/UART.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/UART.o.temp ../../../Microchip/TCPIP\ Stack/UART.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/UART.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/UART.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/UART.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/UART.o.temp >> ${OBJECTDIR}/_ext/1954962658/UART.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/SPIFlash.o: ../../../Microchip/TCPIP\ Stack/SPIFlash.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/SPIFlash.o   ../../../Microchip/TCPIP\ Stack/SPIFlash.c  > ${OBJECTDIR}/_ext/1954962658/SPIFlash.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/SPIFlash.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/SPIFlash.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.temp ../../../Microchip/TCPIP\ Stack/SPIFlash.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.temp >> ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/FTP.o: ../../../Microchip/TCPIP\ Stack/FTP.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/FTP.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/FTP.o   ../../../Microchip/TCPIP\ Stack/FTP.c  > ${OBJECTDIR}/_ext/1954962658/FTP.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/FTP.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/FTP.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/FTP.o.temp ../../../Microchip/TCPIP\ Stack/FTP.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/FTP.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/FTP.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/FTP.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/FTP.o.temp >> ${OBJECTDIR}/_ext/1954962658/FTP.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/Tick.o: ../../../Microchip/TCPIP\ Stack/Tick.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/Tick.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/Tick.o   ../../../Microchip/TCPIP\ Stack/Tick.c  > ${OBJECTDIR}/_ext/1954962658/Tick.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/Tick.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/Tick.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/Tick.o.temp ../../../Microchip/TCPIP\ Stack/Tick.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/Tick.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/Tick.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/Tick.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/Tick.o.temp >> ${OBJECTDIR}/_ext/1954962658/Tick.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/243675038/WFInit.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFInit.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/243675038/WFInit.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/243675038/WFInit.o   ../../../Microchip/TCPIP\ Stack/WiFi/WFInit.c  > ${OBJECTDIR}/_ext/243675038/WFInit.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/243675038/WFInit.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/243675038/WFInit.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/243675038/WFInit.o.temp ../../../Microchip/TCPIP\ Stack/WiFi/WFInit.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/243675038 > ${OBJECTDIR}/_ext/243675038/WFInit.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/243675038/WFInit.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/243675038/WFInit.o.d
else
	cat ${OBJECTDIR}/_ext/243675038/WFInit.o.temp >> ${OBJECTDIR}/_ext/243675038/WFInit.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o: ../../../Microchip/TCPIP\ Stack/UDPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o   ../../../Microchip/TCPIP\ Stack/UDPPerformanceTest.c  > ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.temp ../../../Microchip/TCPIP\ Stack/UDPPerformanceTest.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.temp >> ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/243675038/WFParamMsg.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFParamMsg.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/243675038/WFParamMsg.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/243675038/WFParamMsg.o   ../../../Microchip/TCPIP\ Stack/WiFi/WFParamMsg.c  > ${OBJECTDIR}/_ext/243675038/WFParamMsg.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/243675038/WFParamMsg.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/243675038/WFParamMsg.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/243675038/WFParamMsg.o.temp ../../../Microchip/TCPIP\ Stack/WiFi/WFParamMsg.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/243675038 > ${OBJECTDIR}/_ext/243675038/WFParamMsg.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/243675038/WFParamMsg.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/243675038/WFParamMsg.o.d
else
	cat ${OBJECTDIR}/_ext/243675038/WFParamMsg.o.temp >> ${OBJECTDIR}/_ext/243675038/WFParamMsg.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/243675038/WFDriverRaw.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o   ../../../Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.c  > ${OBJECTDIR}/_ext/243675038/WFDriverRaw.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/243675038/WFDriverRaw.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/243675038/WFDriverRaw.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o.temp ../../../Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/243675038 > ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o.d
else
	cat ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o.temp >> ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/ARP.o: ../../../Microchip/TCPIP\ Stack/ARP.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/ARP.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/ARP.o   ../../../Microchip/TCPIP\ Stack/ARP.c  > ${OBJECTDIR}/_ext/1954962658/ARP.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/ARP.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/ARP.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/ARP.o.temp ../../../Microchip/TCPIP\ Stack/ARP.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/ARP.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/ARP.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/ARP.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/ARP.o.temp >> ${OBJECTDIR}/_ext/1954962658/ARP.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/BigInt.o: ../../../Microchip/TCPIP\ Stack/BigInt.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/BigInt.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/BigInt.o   ../../../Microchip/TCPIP\ Stack/BigInt.c  > ${OBJECTDIR}/_ext/1954962658/BigInt.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/BigInt.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/BigInt.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/BigInt.o.temp ../../../Microchip/TCPIP\ Stack/BigInt.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/BigInt.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/BigInt.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/BigInt.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/BigInt.o.temp >> ${OBJECTDIR}/_ext/1954962658/BigInt.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o   ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.c  > ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o.temp ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/243675038 > ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o.d
else
	cat ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o.temp >> ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/UDP.o: ../../../Microchip/TCPIP\ Stack/UDP.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/UDP.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/UDP.o   ../../../Microchip/TCPIP\ Stack/UDP.c  > ${OBJECTDIR}/_ext/1954962658/UDP.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/UDP.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/UDP.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/UDP.o.temp ../../../Microchip/TCPIP\ Stack/UDP.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/UDP.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/UDP.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/UDP.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/UDP.o.temp >> ${OBJECTDIR}/_ext/1954962658/UDP.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1472/PingDemo.o: ../PingDemo.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1472/PingDemo.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/PingDemo.o   ../PingDemo.c  > ${OBJECTDIR}/_ext/1472/PingDemo.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1472/PingDemo.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1472/PingDemo.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1472/PingDemo.o.temp ../PingDemo.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1472 > ${OBJECTDIR}/_ext/1472/PingDemo.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1472/PingDemo.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1472/PingDemo.o.d
else
	cat ${OBJECTDIR}/_ext/1472/PingDemo.o.temp >> ${OBJECTDIR}/_ext/1472/PingDemo.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/243675038/WFScan.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFScan.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/243675038/WFScan.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/243675038/WFScan.o   ../../../Microchip/TCPIP\ Stack/WiFi/WFScan.c  > ${OBJECTDIR}/_ext/243675038/WFScan.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/243675038/WFScan.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/243675038/WFScan.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/243675038/WFScan.o.temp ../../../Microchip/TCPIP\ Stack/WiFi/WFScan.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/243675038 > ${OBJECTDIR}/_ext/243675038/WFScan.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/243675038/WFScan.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/243675038/WFScan.o.d
else
	cat ${OBJECTDIR}/_ext/243675038/WFScan.o.temp >> ${OBJECTDIR}/_ext/243675038/WFScan.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o: ../../../Microchip/TCPIP\ Stack/ZeroconfMulticastDNS.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o   ../../../Microchip/TCPIP\ Stack/ZeroconfMulticastDNS.c  > ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.temp ../../../Microchip/TCPIP\ Stack/ZeroconfMulticastDNS.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.temp >> ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/SNTP.o: ../../../Microchip/TCPIP\ Stack/SNTP.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/SNTP.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/SNTP.o   ../../../Microchip/TCPIP\ Stack/SNTP.c  > ${OBJECTDIR}/_ext/1954962658/SNTP.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/SNTP.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/SNTP.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/SNTP.o.temp ../../../Microchip/TCPIP\ Stack/SNTP.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/SNTP.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/SNTP.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/SNTP.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/SNTP.o.temp >> ${OBJECTDIR}/_ext/1954962658/SNTP.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o: ../../../Microchip/TCPIP\ Stack/BerkeleyAPI.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o   ../../../Microchip/TCPIP\ Stack/BerkeleyAPI.c  > ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.temp ../../../Microchip/TCPIP\ Stack/BerkeleyAPI.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.temp >> ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/ENC28J60.o: ../../../Microchip/TCPIP\ Stack/ENC28J60.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/ENC28J60.o   ../../../Microchip/TCPIP\ Stack/ENC28J60.c  > ${OBJECTDIR}/_ext/1954962658/ENC28J60.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/ENC28J60.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/ENC28J60.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.temp ../../../Microchip/TCPIP\ Stack/ENC28J60.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.temp >> ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o: ../../../Microchip/TCPIP\ Stack/UART2TCPBridge.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o   ../../../Microchip/TCPIP\ Stack/UART2TCPBridge.c  > ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.temp ../../../Microchip/TCPIP\ Stack/UART2TCPBridge.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.temp >> ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/StackTsk.o: ../../../Microchip/TCPIP\ Stack/StackTsk.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/StackTsk.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/StackTsk.o   ../../../Microchip/TCPIP\ Stack/StackTsk.c  > ${OBJECTDIR}/_ext/1954962658/StackTsk.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/StackTsk.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/StackTsk.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/StackTsk.o.temp ../../../Microchip/TCPIP\ Stack/StackTsk.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/StackTsk.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/StackTsk.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/StackTsk.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/StackTsk.o.temp >> ${OBJECTDIR}/_ext/1954962658/StackTsk.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1472/MainDemo.o: ../MainDemo.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/MainDemo.o   ../MainDemo.c  > ${OBJECTDIR}/_ext/1472/MainDemo.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1472/MainDemo.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1472/MainDemo.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1472/MainDemo.o.temp ../MainDemo.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1472 > ${OBJECTDIR}/_ext/1472/MainDemo.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1472/MainDemo.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1472/MainDemo.o.d
else
	cat ${OBJECTDIR}/_ext/1472/MainDemo.o.temp >> ${OBJECTDIR}/_ext/1472/MainDemo.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o   ../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.c  > ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o.temp ../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/243675038 > ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o.d
else
	cat ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o.temp >> ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o   ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.c  > ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o.temp ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/243675038 > ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o.d
else
	cat ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o.temp >> ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/Announce.o: ../../../Microchip/TCPIP\ Stack/Announce.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/Announce.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/Announce.o   ../../../Microchip/TCPIP\ Stack/Announce.c  > ${OBJECTDIR}/_ext/1954962658/Announce.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/Announce.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/Announce.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/Announce.o.temp ../../../Microchip/TCPIP\ Stack/Announce.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/Announce.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/Announce.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/Announce.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/Announce.o.temp >> ${OBJECTDIR}/_ext/1954962658/Announce.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/SNMP.o: ../../../Microchip/TCPIP\ Stack/SNMP.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/SNMP.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/SNMP.o   ../../../Microchip/TCPIP\ Stack/SNMP.c  > ${OBJECTDIR}/_ext/1954962658/SNMP.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/SNMP.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/SNMP.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/SNMP.o.temp ../../../Microchip/TCPIP\ Stack/SNMP.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/SNMP.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/SNMP.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/SNMP.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/SNMP.o.temp >> ${OBJECTDIR}/_ext/1954962658/SNMP.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/Delay.o: ../../../Microchip/TCPIP\ Stack/Delay.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/Delay.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/Delay.o   ../../../Microchip/TCPIP\ Stack/Delay.c  > ${OBJECTDIR}/_ext/1954962658/Delay.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/Delay.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/Delay.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/Delay.o.temp ../../../Microchip/TCPIP\ Stack/Delay.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/Delay.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/Delay.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/Delay.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/Delay.o.temp >> ${OBJECTDIR}/_ext/1954962658/Delay.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/HTTP2.o: ../../../Microchip/TCPIP\ Stack/HTTP2.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/HTTP2.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/HTTP2.o   ../../../Microchip/TCPIP\ Stack/HTTP2.c  > ${OBJECTDIR}/_ext/1954962658/HTTP2.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/HTTP2.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/HTTP2.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/HTTP2.o.temp ../../../Microchip/TCPIP\ Stack/HTTP2.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/HTTP2.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/HTTP2.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/HTTP2.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/HTTP2.o.temp >> ${OBJECTDIR}/_ext/1954962658/HTTP2.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/SMTP.o: ../../../Microchip/TCPIP\ Stack/SMTP.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/SMTP.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/SMTP.o   ../../../Microchip/TCPIP\ Stack/SMTP.c  > ${OBJECTDIR}/_ext/1954962658/SMTP.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/SMTP.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/SMTP.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/SMTP.o.temp ../../../Microchip/TCPIP\ Stack/SMTP.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/SMTP.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/SMTP.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/SMTP.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/SMTP.o.temp >> ${OBJECTDIR}/_ext/1954962658/SMTP.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/ENCX24J600.o: ../../../Microchip/TCPIP\ Stack/ENCX24J600.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o   ../../../Microchip/TCPIP\ Stack/ENCX24J600.c  > ${OBJECTDIR}/_ext/1954962658/ENCX24J600.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/ENCX24J600.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/ENCX24J600.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.temp ../../../Microchip/TCPIP\ Stack/ENCX24J600.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.temp >> ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/SPIRAM.o: ../../../Microchip/TCPIP\ Stack/SPIRAM.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/SPIRAM.o   ../../../Microchip/TCPIP\ Stack/SPIRAM.c  > ${OBJECTDIR}/_ext/1954962658/SPIRAM.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/SPIRAM.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/SPIRAM.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.temp ../../../Microchip/TCPIP\ Stack/SPIRAM.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.temp >> ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/243675038/WFConnectionManager.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o   ../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.c  > ${OBJECTDIR}/_ext/243675038/WFConnectionManager.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/243675038/WFConnectionManager.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/243675038/WFConnectionManager.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o.temp ../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/243675038 > ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o.d
else
	cat ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o.temp >> ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/TFTPc.o: ../../../Microchip/TCPIP\ Stack/TFTPc.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/TFTPc.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/TFTPc.o   ../../../Microchip/TCPIP\ Stack/TFTPc.c  > ${OBJECTDIR}/_ext/1954962658/TFTPc.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/TFTPc.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/TFTPc.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/TFTPc.o.temp ../../../Microchip/TCPIP\ Stack/TFTPc.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/TFTPc.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/TFTPc.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/TFTPc.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/TFTPc.o.temp >> ${OBJECTDIR}/_ext/1954962658/TFTPc.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1472/IperfApp.o: ../IperfApp.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1472/IperfApp.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/IperfApp.o   ../IperfApp.c  > ${OBJECTDIR}/_ext/1472/IperfApp.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1472/IperfApp.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1472/IperfApp.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1472/IperfApp.o.temp ../IperfApp.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1472 > ${OBJECTDIR}/_ext/1472/IperfApp.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1472/IperfApp.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1472/IperfApp.o.d
else
	cat ${OBJECTDIR}/_ext/1472/IperfApp.o.temp >> ${OBJECTDIR}/_ext/1472/IperfApp.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/SSL.o: ../../../Microchip/TCPIP\ Stack/SSL.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/SSL.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/SSL.o   ../../../Microchip/TCPIP\ Stack/SSL.c  > ${OBJECTDIR}/_ext/1954962658/SSL.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/SSL.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/SSL.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/SSL.o.temp ../../../Microchip/TCPIP\ Stack/SSL.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/SSL.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/SSL.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/SSL.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/SSL.o.temp >> ${OBJECTDIR}/_ext/1954962658/SSL.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/243675038/WF_Eint.o: ../../../Microchip/TCPIP\ Stack/WiFi/WF_Eint.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/243675038/WF_Eint.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/243675038/WF_Eint.o   ../../../Microchip/TCPIP\ Stack/WiFi/WF_Eint.c  > ${OBJECTDIR}/_ext/243675038/WF_Eint.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/243675038/WF_Eint.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/243675038/WF_Eint.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/243675038/WF_Eint.o.temp ../../../Microchip/TCPIP\ Stack/WiFi/WF_Eint.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/243675038 > ${OBJECTDIR}/_ext/243675038/WF_Eint.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/243675038/WF_Eint.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/243675038/WF_Eint.o.d
else
	cat ${OBJECTDIR}/_ext/243675038/WF_Eint.o.temp >> ${OBJECTDIR}/_ext/243675038/WF_Eint.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/243675038/WFDataTxRx.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o   ../../../Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.c  > ${OBJECTDIR}/_ext/243675038/WFDataTxRx.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/243675038/WFDataTxRx.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/243675038/WFDataTxRx.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o.temp ../../../Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/243675038 > ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o.d
else
	cat ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o.temp >> ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/MPFS2.o: ../../../Microchip/TCPIP\ Stack/MPFS2.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/MPFS2.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/MPFS2.o   ../../../Microchip/TCPIP\ Stack/MPFS2.c  > ${OBJECTDIR}/_ext/1954962658/MPFS2.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/MPFS2.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/MPFS2.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/MPFS2.o.temp ../../../Microchip/TCPIP\ Stack/MPFS2.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/MPFS2.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/MPFS2.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/MPFS2.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/MPFS2.o.temp >> ${OBJECTDIR}/_ext/1954962658/MPFS2.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o   ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.c  > ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o.temp ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/243675038 > ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o.d
else
	cat ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o.temp >> ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/243675038/WFEventHandler.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFEventHandler.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/243675038/WFEventHandler.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/243675038/WFEventHandler.o   ../../../Microchip/TCPIP\ Stack/WiFi/WFEventHandler.c  > ${OBJECTDIR}/_ext/243675038/WFEventHandler.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/243675038/WFEventHandler.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/243675038/WFEventHandler.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/243675038/WFEventHandler.o.temp ../../../Microchip/TCPIP\ Stack/WiFi/WFEventHandler.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/243675038 > ${OBJECTDIR}/_ext/243675038/WFEventHandler.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/243675038/WFEventHandler.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/243675038/WFEventHandler.o.d
else
	cat ${OBJECTDIR}/_ext/243675038/WFEventHandler.o.temp >> ${OBJECTDIR}/_ext/243675038/WFEventHandler.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/LCDBlocking.o: ../../../Microchip/TCPIP\ Stack/LCDBlocking.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o   ../../../Microchip/TCPIP\ Stack/LCDBlocking.c  > ${OBJECTDIR}/_ext/1954962658/LCDBlocking.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/LCDBlocking.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/LCDBlocking.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.temp ../../../Microchip/TCPIP\ Stack/LCDBlocking.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.temp >> ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/AutoIP.o: ../../../Microchip/TCPIP\ Stack/AutoIP.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/AutoIP.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/AutoIP.o   ../../../Microchip/TCPIP\ Stack/AutoIP.c  > ${OBJECTDIR}/_ext/1954962658/AutoIP.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/AutoIP.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/AutoIP.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/AutoIP.o.temp ../../../Microchip/TCPIP\ Stack/AutoIP.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/AutoIP.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/AutoIP.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/AutoIP.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/AutoIP.o.temp >> ${OBJECTDIR}/_ext/1954962658/AutoIP.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o: ../../../Microchip/TCPIP\ Stack/TCPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o   ../../../Microchip/TCPIP\ Stack/TCPPerformanceTest.c  > ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.temp ../../../Microchip/TCPIP\ Stack/TCPPerformanceTest.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.temp >> ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/NBNS.o: ../../../Microchip/TCPIP\ Stack/NBNS.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/NBNS.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/NBNS.o   ../../../Microchip/TCPIP\ Stack/NBNS.c  > ${OBJECTDIR}/_ext/1954962658/NBNS.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/NBNS.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/NBNS.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/NBNS.o.temp ../../../Microchip/TCPIP\ Stack/NBNS.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/NBNS.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/NBNS.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/NBNS.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/NBNS.o.temp >> ${OBJECTDIR}/_ext/1954962658/NBNS.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/243675038/WFPowerSave.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFPowerSave.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/243675038/WFPowerSave.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/243675038/WFPowerSave.o   ../../../Microchip/TCPIP\ Stack/WiFi/WFPowerSave.c  > ${OBJECTDIR}/_ext/243675038/WFPowerSave.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/243675038/WFPowerSave.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/243675038/WFPowerSave.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/243675038/WFPowerSave.o.temp ../../../Microchip/TCPIP\ Stack/WiFi/WFPowerSave.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/243675038 > ${OBJECTDIR}/_ext/243675038/WFPowerSave.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/243675038/WFPowerSave.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/243675038/WFPowerSave.o.d
else
	cat ${OBJECTDIR}/_ext/243675038/WFPowerSave.o.temp >> ${OBJECTDIR}/_ext/243675038/WFPowerSave.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/Hashes.o: ../../../Microchip/TCPIP\ Stack/Hashes.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/Hashes.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/Hashes.o   ../../../Microchip/TCPIP\ Stack/Hashes.c  > ${OBJECTDIR}/_ext/1954962658/Hashes.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/Hashes.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/Hashes.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/Hashes.o.temp ../../../Microchip/TCPIP\ Stack/Hashes.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/Hashes.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/Hashes.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/Hashes.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/Hashes.o.temp >> ${OBJECTDIR}/_ext/1954962658/Hashes.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/Telnet.o: ../../../Microchip/TCPIP\ Stack/Telnet.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/Telnet.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/Telnet.o   ../../../Microchip/TCPIP\ Stack/Telnet.c  > ${OBJECTDIR}/_ext/1954962658/Telnet.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/Telnet.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/Telnet.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/Telnet.o.temp ../../../Microchip/TCPIP\ Stack/Telnet.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/Telnet.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/Telnet.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/Telnet.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/Telnet.o.temp >> ${OBJECTDIR}/_ext/1954962658/Telnet.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o: ../../../Microchip/TCPIP\ Stack/SPIEEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o   ../../../Microchip/TCPIP\ Stack/SPIEEPROM.c  > ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.temp ../../../Microchip/TCPIP\ Stack/SPIEEPROM.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.temp >> ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/Reboot.o: ../../../Microchip/TCPIP\ Stack/Reboot.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/Reboot.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/Reboot.o   ../../../Microchip/TCPIP\ Stack/Reboot.c  > ${OBJECTDIR}/_ext/1954962658/Reboot.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/Reboot.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/Reboot.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/Reboot.o.temp ../../../Microchip/TCPIP\ Stack/Reboot.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/Reboot.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/Reboot.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/Reboot.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/Reboot.o.temp >> ${OBJECTDIR}/_ext/1954962658/Reboot.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/243675038/WFConsole.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsole.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsole.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/243675038/WFConsole.o   ../../../Microchip/TCPIP\ Stack/WiFi/WFConsole.c  > ${OBJECTDIR}/_ext/243675038/WFConsole.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/243675038/WFConsole.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/243675038/WFConsole.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/243675038/WFConsole.o.temp ../../../Microchip/TCPIP\ Stack/WiFi/WFConsole.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/243675038 > ${OBJECTDIR}/_ext/243675038/WFConsole.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/243675038/WFConsole.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/243675038/WFConsole.o.d
else
	cat ${OBJECTDIR}/_ext/243675038/WFConsole.o.temp >> ${OBJECTDIR}/_ext/243675038/WFConsole.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/Random.o: ../../../Microchip/TCPIP\ Stack/Random.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/Random.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/Random.o   ../../../Microchip/TCPIP\ Stack/Random.c  > ${OBJECTDIR}/_ext/1954962658/Random.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/Random.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/Random.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/Random.o.temp ../../../Microchip/TCPIP\ Stack/Random.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/Random.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/Random.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/Random.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/Random.o.temp >> ${OBJECTDIR}/_ext/1954962658/Random.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/DNS.o: ../../../Microchip/TCPIP\ Stack/DNS.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/DNS.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/DNS.o   ../../../Microchip/TCPIP\ Stack/DNS.c  > ${OBJECTDIR}/_ext/1954962658/DNS.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/DNS.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/DNS.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/DNS.o.temp ../../../Microchip/TCPIP\ Stack/DNS.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/DNS.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/DNS.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/DNS.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/DNS.o.temp >> ${OBJECTDIR}/_ext/1954962658/DNS.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/DHCPs.o: ../../../Microchip/TCPIP\ Stack/DHCPs.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/DHCPs.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/DHCPs.o   ../../../Microchip/TCPIP\ Stack/DHCPs.c  > ${OBJECTDIR}/_ext/1954962658/DHCPs.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/DHCPs.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/DHCPs.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/DHCPs.o.temp ../../../Microchip/TCPIP\ Stack/DHCPs.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/DHCPs.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/DHCPs.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/DHCPs.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/DHCPs.o.temp >> ${OBJECTDIR}/_ext/1954962658/DHCPs.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o: ../../../Microchip/TCPIP\ Stack/ZeroconfHelper.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o   ../../../Microchip/TCPIP\ Stack/ZeroconfHelper.c  > ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.temp ../../../Microchip/TCPIP\ Stack/ZeroconfHelper.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.temp >> ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o   ../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.c  > ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o.temp ../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/243675038 > ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o.d
else
	cat ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o.temp >> ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/243675038/WF_Spi.o: ../../../Microchip/TCPIP\ Stack/WiFi/WF_Spi.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/243675038/WF_Spi.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/243675038/WF_Spi.o   ../../../Microchip/TCPIP\ Stack/WiFi/WF_Spi.c  > ${OBJECTDIR}/_ext/243675038/WF_Spi.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/243675038/WF_Spi.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/243675038/WF_Spi.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/243675038/WF_Spi.o.temp ../../../Microchip/TCPIP\ Stack/WiFi/WF_Spi.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/243675038 > ${OBJECTDIR}/_ext/243675038/WF_Spi.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/243675038/WF_Spi.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/243675038/WF_Spi.o.d
else
	cat ${OBJECTDIR}/_ext/243675038/WF_Spi.o.temp >> ${OBJECTDIR}/_ext/243675038/WF_Spi.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1472/UARTConfig.o: ../UARTConfig.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/UARTConfig.o   ../UARTConfig.c  > ${OBJECTDIR}/_ext/1472/UARTConfig.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1472/UARTConfig.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1472/UARTConfig.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1472/UARTConfig.o.temp ../UARTConfig.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1472 > ${OBJECTDIR}/_ext/1472/UARTConfig.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1472/UARTConfig.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1472/UARTConfig.o.d
else
	cat ${OBJECTDIR}/_ext/1472/UARTConfig.o.temp >> ${OBJECTDIR}/_ext/1472/UARTConfig.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o   ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.c  > ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o.temp ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/243675038 > ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o.d
else
	cat ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o.temp >> ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/243675038/WFDriverCom.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFDriverCom.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/243675038/WFDriverCom.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/243675038/WFDriverCom.o   ../../../Microchip/TCPIP\ Stack/WiFi/WFDriverCom.c  > ${OBJECTDIR}/_ext/243675038/WFDriverCom.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/243675038/WFDriverCom.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/243675038/WFDriverCom.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/243675038/WFDriverCom.o.temp ../../../Microchip/TCPIP\ Stack/WiFi/WFDriverCom.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/243675038 > ${OBJECTDIR}/_ext/243675038/WFDriverCom.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/243675038/WFDriverCom.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/243675038/WFDriverCom.o.d
else
	cat ${OBJECTDIR}/_ext/243675038/WFDriverCom.o.temp >> ${OBJECTDIR}/_ext/243675038/WFDriverCom.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1472/WF_Config.o: ../WF_Config.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1472/WF_Config.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/WF_Config.o   ../WF_Config.c  > ${OBJECTDIR}/_ext/1472/WF_Config.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1472/WF_Config.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1472/WF_Config.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1472/WF_Config.o.temp ../WF_Config.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1472 > ${OBJECTDIR}/_ext/1472/WF_Config.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1472/WF_Config.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1472/WF_Config.o.d
else
	cat ${OBJECTDIR}/_ext/1472/WF_Config.o.temp >> ${OBJECTDIR}/_ext/1472/WF_Config.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/TCP.o: ../../../Microchip/TCPIP\ Stack/TCP.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/TCP.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/TCP.o   ../../../Microchip/TCPIP\ Stack/TCP.c  > ${OBJECTDIR}/_ext/1954962658/TCP.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/TCP.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/TCP.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/TCP.o.temp ../../../Microchip/TCPIP\ Stack/TCP.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/TCP.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/TCP.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/TCP.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/TCP.o.temp >> ${OBJECTDIR}/_ext/1954962658/TCP.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/ICMP.o: ../../../Microchip/TCPIP\ Stack/ICMP.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/ICMP.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/ICMP.o   ../../../Microchip/TCPIP\ Stack/ICMP.c  > ${OBJECTDIR}/_ext/1954962658/ICMP.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/ICMP.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/ICMP.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/ICMP.o.temp ../../../Microchip/TCPIP\ Stack/ICMP.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/ICMP.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/ICMP.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/ICMP.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/ICMP.o.temp >> ${OBJECTDIR}/_ext/1954962658/ICMP.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o   ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.c  > ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o.temp ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/243675038 > ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o.d
else
	cat ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o.temp >> ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/Helpers.o: ../../../Microchip/TCPIP\ Stack/Helpers.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/Helpers.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/Helpers.o   ../../../Microchip/TCPIP\ Stack/Helpers.c  > ${OBJECTDIR}/_ext/1954962658/Helpers.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/Helpers.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/Helpers.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/Helpers.o.temp ../../../Microchip/TCPIP\ Stack/Helpers.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/Helpers.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/Helpers.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/Helpers.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/Helpers.o.temp >> ${OBJECTDIR}/_ext/1954962658/Helpers.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/243675038/WFTxPower.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFTxPower.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/243675038/WFTxPower.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/243675038 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/243675038/WFTxPower.o   ../../../Microchip/TCPIP\ Stack/WiFi/WFTxPower.c  > ${OBJECTDIR}/_ext/243675038/WFTxPower.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/243675038/WFTxPower.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/243675038/WFTxPower.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/243675038/WFTxPower.o.temp ../../../Microchip/TCPIP\ Stack/WiFi/WFTxPower.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/243675038 > ${OBJECTDIR}/_ext/243675038/WFTxPower.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/243675038/WFTxPower.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/243675038/WFTxPower.o.d
else
	cat ${OBJECTDIR}/_ext/243675038/WFTxPower.o.temp >> ${OBJECTDIR}/_ext/243675038/WFTxPower.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/IP.o: ../../../Microchip/TCPIP\ Stack/IP.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/IP.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_PICDN2_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/IP.o   ../../../Microchip/TCPIP\ Stack/IP.c  > ${OBJECTDIR}/_ext/1954962658/IP.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/IP.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/IP.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/IP.o.temp ../../../Microchip/TCPIP\ Stack/IP.c __temp_cpp_output__ -D CFG_INCLUDE_PICDN2_MRF24WB -D __18F97J60 -D __18CXX -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\WiFi\ Console\\Configs -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F97J60
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/IP.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/IP.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/IP.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/IP.o.temp >> ${OBJECTDIR}/_ext/1954962658/IP.o.d
endif
	${RM} __temp_cpp_output__
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.cof: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE) ../18f97j60_g.lkr  -p$(MP_PROCESSOR_OPTION_LD)  -w -x -l".."  -z__MPLAB_BUILD=1  -u_CRUNTIME -z__MPLAB_DEBUG=1 $(MP_LINKER_DEBUG_OPTION) -l ${MP_CC_DIR}\\..\\lib  -odist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.cof ${OBJECTFILES}      
else
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.cof: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE) ../18f97j60_g.lkr  -p$(MP_PROCESSOR_OPTION_LD)  -w  -l".."  -z__MPLAB_BUILD=1  -u_CRUNTIME -l ${MP_CC_DIR}\\..\\lib  -odist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.cof ${OBJECTFILES}      
endif


# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf:
	${RM} -r build/C18-PICDN2_MRF24WB
	${RM} -r dist/C18-PICDN2_MRF24WB

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
