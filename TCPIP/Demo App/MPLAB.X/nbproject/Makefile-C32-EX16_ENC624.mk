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
CND_CONF=C32-EX16_ENC624

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
OBJECTFILES=${OBJECTDIR}/_ext/1954962658/SPIFlash.o ${OBJECTDIR}/_ext/1954962658/FTP.o ${OBJECTDIR}/_ext/1954962658/UDP.o ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o ${OBJECTDIR}/_ext/1954962658/StackTsk.o ${OBJECTDIR}/_ext/1472/GenericTCPServer.o ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o ${OBJECTDIR}/_ext/1954962658/Delay.o ${OBJECTDIR}/_ext/1954962658/HTTP2.o ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o ${OBJECTDIR}/_ext/1954962658/BigInt_helper_C32.o ${OBJECTDIR}/_ext/1954962658/SPIRAM.o ${OBJECTDIR}/_ext/1954962658/SSL.o ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o ${OBJECTDIR}/_ext/1954962658/AutoIP.o ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o ${OBJECTDIR}/_ext/1954962658/NBNS.o ${OBJECTDIR}/_ext/1472/MPFSImg2.o ${OBJECTDIR}/_ext/1954962658/Hashes.o ${OBJECTDIR}/_ext/1954962658/Telnet.o ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o ${OBJECTDIR}/_ext/1954962658/Random.o ${OBJECTDIR}/_ext/1954962658/FileSystem.o ${OBJECTDIR}/_ext/1954962658/DHCPs.o ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o ${OBJECTDIR}/_ext/1954962658/DNSs.o ${OBJECTDIR}/_ext/1954962658/RSA.o ${OBJECTDIR}/_ext/1954962658/TCP.o ${OBJECTDIR}/_ext/1954962658/Helpers.o ${OBJECTDIR}/_ext/1954962658/IP.o ${OBJECTDIR}/_ext/1954962658/DynDNS.o ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o ${OBJECTDIR}/_ext/1954962658/DHCP.o ${OBJECTDIR}/_ext/1954962658/UART.o ${OBJECTDIR}/_ext/1954962658/Tick.o ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o ${OBJECTDIR}/_ext/1954962658/ARP.o ${OBJECTDIR}/_ext/1954962658/BigInt.o ${OBJECTDIR}/_ext/1472/PingDemo.o ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o ${OBJECTDIR}/_ext/1954962658/SNTP.o ${OBJECTDIR}/_ext/1954962658/ENC28J60.o ${OBJECTDIR}/_ext/1954962658/SNMPv3USM.o ${OBJECTDIR}/_ext/1472/GenericTCPClient.o ${OBJECTDIR}/_ext/1472/MainDemo.o ${OBJECTDIR}/_ext/1954962658/Announce.o ${OBJECTDIR}/_ext/1954962658/SNMP.o ${OBJECTDIR}/_ext/1954962658/SMTP.o ${OBJECTDIR}/_ext/1954962658/ARCFOUR.o ${OBJECTDIR}/_ext/1472/CustomSSLCert.o ${OBJECTDIR}/_ext/1954962658/SNMPv3.o ${OBJECTDIR}/_ext/1954962658/TFTPc.o ${OBJECTDIR}/_ext/1954962658/MPFS2.o ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o ${OBJECTDIR}/_ext/1954962658/Reboot.o ${OBJECTDIR}/_ext/1472/SMTPDemo.o ${OBJECTDIR}/_ext/1954962658/DNS.o ${OBJECTDIR}/_ext/1472/UARTConfig.o ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o ${OBJECTDIR}/_ext/1954962658/ICMP.o


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
MP_CC=C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin\\pic32-gcc.exe
# MP_BC is not defined
MP_AS=C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin\\pic32-as.exe
MP_LD=C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin\\pic32-ld.exe
MP_AR=C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin\\pic32-ar.exe
# MP_BC is not defined
MP_CC_DIR=C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin
# MP_BC_DIR is not defined
MP_AS_DIR=C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin
MP_LD_DIR=C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin
MP_AR_DIR=C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin
# MP_BC_DIR is not defined
.build-conf: ${BUILD_SUBPROJECTS}
ifneq ($(OS_CURRENT),$(OS_ORIGINAL))
	@echo "***** WARNING: This make file contains OS dependent code. The OS this makefile is being run is different from the OS it was created in."
endif
	${MAKE}  -f nbproject/Makefile-C32-EX16_ENC624.mk dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf

MP_PROCESSOR_OPTION=32MX360F512L
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
.PHONY: ${OBJECTDIR}/_ext/1954962658/BigInt_helper_C32.o
${OBJECTDIR}/_ext/1954962658/BigInt_helper_C32.o: ../../../Microchip/TCPIP\ Stack/BigInt_helper_C32.S  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG   -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -o ${OBJECTDIR}/_ext/1954962658/BigInt_helper_C32.o ../../../Microchip/TCPIP\ Stack/BigInt_helper_C32.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--gdwarf-2,-I".."
else
.PHONY: ${OBJECTDIR}/_ext/1954962658/BigInt_helper_C32.o
${OBJECTDIR}/_ext/1954962658/BigInt_helper_C32.o: ../../../Microchip/TCPIP\ Stack/BigInt_helper_C32.S  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -o ${OBJECTDIR}/_ext/1954962658/BigInt_helper_C32.o ../../../Microchip/TCPIP\ Stack/BigInt_helper_C32.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-I".."
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1954962658/SPIFlash.o: ../../../Microchip/TCPIP\ Stack/SPIFlash.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d -o ${OBJECTDIR}/_ext/1954962658/SPIFlash.o ../../../Microchip/TCPIP\ Stack/SPIFlash.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d > ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.tmp ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/FTP.o: ../../../Microchip/TCPIP\ Stack/FTP.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/FTP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/FTP.o.d -o ${OBJECTDIR}/_ext/1954962658/FTP.o ../../../Microchip/TCPIP\ Stack/FTP.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/FTP.o.d > ${OBJECTDIR}/_ext/1954962658/FTP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/FTP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/FTP.o.tmp ${OBJECTDIR}/_ext/1954962658/FTP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/FTP.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/UDP.o: ../../../Microchip/TCPIP\ Stack/UDP.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/UDP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/UDP.o.d -o ${OBJECTDIR}/_ext/1954962658/UDP.o ../../../Microchip/TCPIP\ Stack/UDP.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/UDP.o.d > ${OBJECTDIR}/_ext/1954962658/UDP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/UDP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/UDP.o.tmp ${OBJECTDIR}/_ext/1954962658/UDP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/UDP.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o: ../../../Microchip/TCPIP\ Stack/BerkeleyAPI.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d -o ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o ../../../Microchip/TCPIP\ Stack/BerkeleyAPI.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d > ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.tmp ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o: ../../../Microchip/TCPIP\ Stack/UART2TCPBridge.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d -o ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o ../../../Microchip/TCPIP\ Stack/UART2TCPBridge.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d > ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.tmp ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/StackTsk.o: ../../../Microchip/TCPIP\ Stack/StackTsk.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/StackTsk.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/StackTsk.o.d -o ${OBJECTDIR}/_ext/1954962658/StackTsk.o ../../../Microchip/TCPIP\ Stack/StackTsk.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/StackTsk.o.d > ${OBJECTDIR}/_ext/1954962658/StackTsk.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/StackTsk.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/StackTsk.o.tmp ${OBJECTDIR}/_ext/1954962658/StackTsk.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/StackTsk.o.tmp
endif
${OBJECTDIR}/_ext/1472/GenericTCPServer.o: ../GenericTCPServer.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d -o ${OBJECTDIR}/_ext/1472/GenericTCPServer.o ../GenericTCPServer.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d > ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.tmp ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.tmp
endif
${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o: ../BerkeleyTCPClientDemo.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d -o ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o ../BerkeleyTCPClientDemo.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d > ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.tmp ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/Delay.o: ../../../Microchip/TCPIP\ Stack/Delay.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/Delay.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/Delay.o.d -o ${OBJECTDIR}/_ext/1954962658/Delay.o ../../../Microchip/TCPIP\ Stack/Delay.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/Delay.o.d > ${OBJECTDIR}/_ext/1954962658/Delay.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/Delay.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/Delay.o.tmp ${OBJECTDIR}/_ext/1954962658/Delay.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/Delay.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/HTTP2.o: ../../../Microchip/TCPIP\ Stack/HTTP2.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/HTTP2.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/HTTP2.o.d -o ${OBJECTDIR}/_ext/1954962658/HTTP2.o ../../../Microchip/TCPIP\ Stack/HTTP2.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/HTTP2.o.d > ${OBJECTDIR}/_ext/1954962658/HTTP2.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/HTTP2.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/HTTP2.o.tmp ${OBJECTDIR}/_ext/1954962658/HTTP2.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/HTTP2.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/ENCX24J600.o: ../../../Microchip/TCPIP\ Stack/ENCX24J600.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d -o ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o ../../../Microchip/TCPIP\ Stack/ENCX24J600.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d > ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.tmp ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/SPIRAM.o: ../../../Microchip/TCPIP\ Stack/SPIRAM.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d -o ${OBJECTDIR}/_ext/1954962658/SPIRAM.o ../../../Microchip/TCPIP\ Stack/SPIRAM.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d > ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.tmp ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/SSL.o: ../../../Microchip/TCPIP\ Stack/SSL.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/SSL.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/SSL.o.d -o ${OBJECTDIR}/_ext/1954962658/SSL.o ../../../Microchip/TCPIP\ Stack/SSL.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/SSL.o.d > ${OBJECTDIR}/_ext/1954962658/SSL.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/SSL.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/SSL.o.tmp ${OBJECTDIR}/_ext/1954962658/SSL.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/SSL.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/LCDBlocking.o: ../../../Microchip/TCPIP\ Stack/LCDBlocking.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d -o ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o ../../../Microchip/TCPIP\ Stack/LCDBlocking.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d > ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.tmp ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/AutoIP.o: ../../../Microchip/TCPIP\ Stack/AutoIP.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/AutoIP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/AutoIP.o.d -o ${OBJECTDIR}/_ext/1954962658/AutoIP.o ../../../Microchip/TCPIP\ Stack/AutoIP.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/AutoIP.o.d > ${OBJECTDIR}/_ext/1954962658/AutoIP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/AutoIP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/AutoIP.o.tmp ${OBJECTDIR}/_ext/1954962658/AutoIP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/AutoIP.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o: ../../../Microchip/TCPIP\ Stack/TCPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d -o ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o ../../../Microchip/TCPIP\ Stack/TCPPerformanceTest.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d > ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.tmp ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/NBNS.o: ../../../Microchip/TCPIP\ Stack/NBNS.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/NBNS.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/NBNS.o.d -o ${OBJECTDIR}/_ext/1954962658/NBNS.o ../../../Microchip/TCPIP\ Stack/NBNS.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/NBNS.o.d > ${OBJECTDIR}/_ext/1954962658/NBNS.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/NBNS.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/NBNS.o.tmp ${OBJECTDIR}/_ext/1954962658/NBNS.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/NBNS.o.tmp
endif
${OBJECTDIR}/_ext/1472/MPFSImg2.o: ../MPFSImg2.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/MPFSImg2.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/MPFSImg2.o.d -o ${OBJECTDIR}/_ext/1472/MPFSImg2.o ../MPFSImg2.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/MPFSImg2.o.d > ${OBJECTDIR}/_ext/1472/MPFSImg2.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/MPFSImg2.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/MPFSImg2.o.tmp ${OBJECTDIR}/_ext/1472/MPFSImg2.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/MPFSImg2.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/Hashes.o: ../../../Microchip/TCPIP\ Stack/Hashes.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/Hashes.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/Hashes.o.d -o ${OBJECTDIR}/_ext/1954962658/Hashes.o ../../../Microchip/TCPIP\ Stack/Hashes.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/Hashes.o.d > ${OBJECTDIR}/_ext/1954962658/Hashes.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/Hashes.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/Hashes.o.tmp ${OBJECTDIR}/_ext/1954962658/Hashes.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/Hashes.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/Telnet.o: ../../../Microchip/TCPIP\ Stack/Telnet.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/Telnet.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/Telnet.o.d -o ${OBJECTDIR}/_ext/1954962658/Telnet.o ../../../Microchip/TCPIP\ Stack/Telnet.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/Telnet.o.d > ${OBJECTDIR}/_ext/1954962658/Telnet.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/Telnet.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/Telnet.o.tmp ${OBJECTDIR}/_ext/1954962658/Telnet.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/Telnet.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o: ../../../Microchip/TCPIP\ Stack/SPIEEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d -o ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o ../../../Microchip/TCPIP\ Stack/SPIEEPROM.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d > ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.tmp ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/Random.o: ../../../Microchip/TCPIP\ Stack/Random.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/Random.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/Random.o.d -o ${OBJECTDIR}/_ext/1954962658/Random.o ../../../Microchip/TCPIP\ Stack/Random.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/Random.o.d > ${OBJECTDIR}/_ext/1954962658/Random.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/Random.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/Random.o.tmp ${OBJECTDIR}/_ext/1954962658/Random.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/Random.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/FileSystem.o: ../../../Microchip/TCPIP\ Stack/FileSystem.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/FileSystem.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/FileSystem.o.d -o ${OBJECTDIR}/_ext/1954962658/FileSystem.o ../../../Microchip/TCPIP\ Stack/FileSystem.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/FileSystem.o.d > ${OBJECTDIR}/_ext/1954962658/FileSystem.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/FileSystem.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/FileSystem.o.tmp ${OBJECTDIR}/_ext/1954962658/FileSystem.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/FileSystem.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/DHCPs.o: ../../../Microchip/TCPIP\ Stack/DHCPs.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/DHCPs.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/DHCPs.o.d -o ${OBJECTDIR}/_ext/1954962658/DHCPs.o ../../../Microchip/TCPIP\ Stack/DHCPs.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/DHCPs.o.d > ${OBJECTDIR}/_ext/1954962658/DHCPs.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/DHCPs.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/DHCPs.o.tmp ${OBJECTDIR}/_ext/1954962658/DHCPs.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/DHCPs.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o: ../../../Microchip/TCPIP\ Stack/ZeroconfHelper.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d -o ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o ../../../Microchip/TCPIP\ Stack/ZeroconfHelper.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d > ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.tmp ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.tmp
endif
${OBJECTDIR}/_ext/1472/CustomSNMPApp.o: ../CustomSNMPApp.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d -o ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o ../CustomSNMPApp.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d > ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.tmp ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/DNSs.o: ../../../Microchip/TCPIP\ Stack/DNSs.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/DNSs.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/DNSs.o.d -o ${OBJECTDIR}/_ext/1954962658/DNSs.o ../../../Microchip/TCPIP\ Stack/DNSs.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/DNSs.o.d > ${OBJECTDIR}/_ext/1954962658/DNSs.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/DNSs.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/DNSs.o.tmp ${OBJECTDIR}/_ext/1954962658/DNSs.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/DNSs.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/RSA.o: ../../../Microchip/TCPIP\ Stack/RSA.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/RSA.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/RSA.o.d -o ${OBJECTDIR}/_ext/1954962658/RSA.o ../../../Microchip/TCPIP\ Stack/RSA.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/RSA.o.d > ${OBJECTDIR}/_ext/1954962658/RSA.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/RSA.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/RSA.o.tmp ${OBJECTDIR}/_ext/1954962658/RSA.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/RSA.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/TCP.o: ../../../Microchip/TCPIP\ Stack/TCP.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/TCP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/TCP.o.d -o ${OBJECTDIR}/_ext/1954962658/TCP.o ../../../Microchip/TCPIP\ Stack/TCP.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/TCP.o.d > ${OBJECTDIR}/_ext/1954962658/TCP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/TCP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/TCP.o.tmp ${OBJECTDIR}/_ext/1954962658/TCP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/TCP.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/Helpers.o: ../../../Microchip/TCPIP\ Stack/Helpers.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/Helpers.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/Helpers.o.d -o ${OBJECTDIR}/_ext/1954962658/Helpers.o ../../../Microchip/TCPIP\ Stack/Helpers.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/Helpers.o.d > ${OBJECTDIR}/_ext/1954962658/Helpers.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/Helpers.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/Helpers.o.tmp ${OBJECTDIR}/_ext/1954962658/Helpers.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/Helpers.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/IP.o: ../../../Microchip/TCPIP\ Stack/IP.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/IP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/IP.o.d -o ${OBJECTDIR}/_ext/1954962658/IP.o ../../../Microchip/TCPIP\ Stack/IP.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/IP.o.d > ${OBJECTDIR}/_ext/1954962658/IP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/IP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/IP.o.tmp ${OBJECTDIR}/_ext/1954962658/IP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/IP.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/DynDNS.o: ../../../Microchip/TCPIP\ Stack/DynDNS.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/DynDNS.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/DynDNS.o.d -o ${OBJECTDIR}/_ext/1954962658/DynDNS.o ../../../Microchip/TCPIP\ Stack/DynDNS.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/DynDNS.o.d > ${OBJECTDIR}/_ext/1954962658/DynDNS.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/DynDNS.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/DynDNS.o.tmp ${OBJECTDIR}/_ext/1954962658/DynDNS.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/DynDNS.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o: ../../../Microchip/TCPIP\ Stack/ZeroconfLinkLocal.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.d -o ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o ../../../Microchip/TCPIP\ Stack/ZeroconfLinkLocal.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.d > ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.tmp ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/DHCP.o: ../../../Microchip/TCPIP\ Stack/DHCP.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/DHCP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/DHCP.o.d -o ${OBJECTDIR}/_ext/1954962658/DHCP.o ../../../Microchip/TCPIP\ Stack/DHCP.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/DHCP.o.d > ${OBJECTDIR}/_ext/1954962658/DHCP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/DHCP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/DHCP.o.tmp ${OBJECTDIR}/_ext/1954962658/DHCP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/DHCP.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/UART.o: ../../../Microchip/TCPIP\ Stack/UART.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/UART.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/UART.o.d -o ${OBJECTDIR}/_ext/1954962658/UART.o ../../../Microchip/TCPIP\ Stack/UART.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/UART.o.d > ${OBJECTDIR}/_ext/1954962658/UART.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/UART.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/UART.o.tmp ${OBJECTDIR}/_ext/1954962658/UART.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/UART.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/Tick.o: ../../../Microchip/TCPIP\ Stack/Tick.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/Tick.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/Tick.o.d -o ${OBJECTDIR}/_ext/1954962658/Tick.o ../../../Microchip/TCPIP\ Stack/Tick.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/Tick.o.d > ${OBJECTDIR}/_ext/1954962658/Tick.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/Tick.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/Tick.o.tmp ${OBJECTDIR}/_ext/1954962658/Tick.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/Tick.o.tmp
endif
${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o: ../BerkeleyUDPClientDemo.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d -o ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o ../BerkeleyUDPClientDemo.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d > ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.tmp ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o: ../../../Microchip/TCPIP\ Stack/UDPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d -o ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o ../../../Microchip/TCPIP\ Stack/UDPPerformanceTest.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d > ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.tmp ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/ARP.o: ../../../Microchip/TCPIP\ Stack/ARP.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/ARP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/ARP.o.d -o ${OBJECTDIR}/_ext/1954962658/ARP.o ../../../Microchip/TCPIP\ Stack/ARP.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/ARP.o.d > ${OBJECTDIR}/_ext/1954962658/ARP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/ARP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/ARP.o.tmp ${OBJECTDIR}/_ext/1954962658/ARP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/ARP.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/BigInt.o: ../../../Microchip/TCPIP\ Stack/BigInt.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/BigInt.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/BigInt.o.d -o ${OBJECTDIR}/_ext/1954962658/BigInt.o ../../../Microchip/TCPIP\ Stack/BigInt.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/BigInt.o.d > ${OBJECTDIR}/_ext/1954962658/BigInt.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/BigInt.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/BigInt.o.tmp ${OBJECTDIR}/_ext/1954962658/BigInt.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/BigInt.o.tmp
endif
${OBJECTDIR}/_ext/1472/PingDemo.o: ../PingDemo.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/PingDemo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/PingDemo.o.d -o ${OBJECTDIR}/_ext/1472/PingDemo.o ../PingDemo.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/PingDemo.o.d > ${OBJECTDIR}/_ext/1472/PingDemo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/PingDemo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/PingDemo.o.tmp ${OBJECTDIR}/_ext/1472/PingDemo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/PingDemo.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o: ../../../Microchip/TCPIP\ Stack/ZeroconfMulticastDNS.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.d -o ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o ../../../Microchip/TCPIP\ Stack/ZeroconfMulticastDNS.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.d > ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.tmp ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/SNTP.o: ../../../Microchip/TCPIP\ Stack/SNTP.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/SNTP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/SNTP.o.d -o ${OBJECTDIR}/_ext/1954962658/SNTP.o ../../../Microchip/TCPIP\ Stack/SNTP.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/SNTP.o.d > ${OBJECTDIR}/_ext/1954962658/SNTP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/SNTP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/SNTP.o.tmp ${OBJECTDIR}/_ext/1954962658/SNTP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/SNTP.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/ENC28J60.o: ../../../Microchip/TCPIP\ Stack/ENC28J60.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d -o ${OBJECTDIR}/_ext/1954962658/ENC28J60.o ../../../Microchip/TCPIP\ Stack/ENC28J60.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d > ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.tmp ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/SNMPv3USM.o: ../../../Microchip/TCPIP\ Stack/SNMPv3USM.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/SNMPv3USM.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/SNMPv3USM.o.d -o ${OBJECTDIR}/_ext/1954962658/SNMPv3USM.o ../../../Microchip/TCPIP\ Stack/SNMPv3USM.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/SNMPv3USM.o.d > ${OBJECTDIR}/_ext/1954962658/SNMPv3USM.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/SNMPv3USM.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/SNMPv3USM.o.tmp ${OBJECTDIR}/_ext/1954962658/SNMPv3USM.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/SNMPv3USM.o.tmp
endif
${OBJECTDIR}/_ext/1472/GenericTCPClient.o: ../GenericTCPClient.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d -o ${OBJECTDIR}/_ext/1472/GenericTCPClient.o ../GenericTCPClient.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d > ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.tmp ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.tmp
endif
${OBJECTDIR}/_ext/1472/MainDemo.o: ../MainDemo.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/MainDemo.o.d -o ${OBJECTDIR}/_ext/1472/MainDemo.o ../MainDemo.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/MainDemo.o.d > ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/Announce.o: ../../../Microchip/TCPIP\ Stack/Announce.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/Announce.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/Announce.o.d -o ${OBJECTDIR}/_ext/1954962658/Announce.o ../../../Microchip/TCPIP\ Stack/Announce.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/Announce.o.d > ${OBJECTDIR}/_ext/1954962658/Announce.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/Announce.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/Announce.o.tmp ${OBJECTDIR}/_ext/1954962658/Announce.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/Announce.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/SNMP.o: ../../../Microchip/TCPIP\ Stack/SNMP.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/SNMP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/SNMP.o.d -o ${OBJECTDIR}/_ext/1954962658/SNMP.o ../../../Microchip/TCPIP\ Stack/SNMP.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/SNMP.o.d > ${OBJECTDIR}/_ext/1954962658/SNMP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/SNMP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/SNMP.o.tmp ${OBJECTDIR}/_ext/1954962658/SNMP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/SNMP.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/SMTP.o: ../../../Microchip/TCPIP\ Stack/SMTP.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/SMTP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/SMTP.o.d -o ${OBJECTDIR}/_ext/1954962658/SMTP.o ../../../Microchip/TCPIP\ Stack/SMTP.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/SMTP.o.d > ${OBJECTDIR}/_ext/1954962658/SMTP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/SMTP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/SMTP.o.tmp ${OBJECTDIR}/_ext/1954962658/SMTP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/SMTP.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/ARCFOUR.o: ../../../Microchip/TCPIP\ Stack/ARCFOUR.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/ARCFOUR.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/ARCFOUR.o.d -o ${OBJECTDIR}/_ext/1954962658/ARCFOUR.o ../../../Microchip/TCPIP\ Stack/ARCFOUR.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/ARCFOUR.o.d > ${OBJECTDIR}/_ext/1954962658/ARCFOUR.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/ARCFOUR.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/ARCFOUR.o.tmp ${OBJECTDIR}/_ext/1954962658/ARCFOUR.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/ARCFOUR.o.tmp
endif
${OBJECTDIR}/_ext/1472/CustomSSLCert.o: ../CustomSSLCert.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.d -o ${OBJECTDIR}/_ext/1472/CustomSSLCert.o ../CustomSSLCert.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.d > ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.tmp ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/SNMPv3.o: ../../../Microchip/TCPIP\ Stack/SNMPv3.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/SNMPv3.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/SNMPv3.o.d -o ${OBJECTDIR}/_ext/1954962658/SNMPv3.o ../../../Microchip/TCPIP\ Stack/SNMPv3.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/SNMPv3.o.d > ${OBJECTDIR}/_ext/1954962658/SNMPv3.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/SNMPv3.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/SNMPv3.o.tmp ${OBJECTDIR}/_ext/1954962658/SNMPv3.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/SNMPv3.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/TFTPc.o: ../../../Microchip/TCPIP\ Stack/TFTPc.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/TFTPc.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/TFTPc.o.d -o ${OBJECTDIR}/_ext/1954962658/TFTPc.o ../../../Microchip/TCPIP\ Stack/TFTPc.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/TFTPc.o.d > ${OBJECTDIR}/_ext/1954962658/TFTPc.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/TFTPc.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/TFTPc.o.tmp ${OBJECTDIR}/_ext/1954962658/TFTPc.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/TFTPc.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/MPFS2.o: ../../../Microchip/TCPIP\ Stack/MPFS2.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/MPFS2.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/MPFS2.o.d -o ${OBJECTDIR}/_ext/1954962658/MPFS2.o ../../../Microchip/TCPIP\ Stack/MPFS2.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/MPFS2.o.d > ${OBJECTDIR}/_ext/1954962658/MPFS2.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/MPFS2.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/MPFS2.o.tmp ${OBJECTDIR}/_ext/1954962658/MPFS2.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/MPFS2.o.tmp
endif
${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o: ../BerkeleyTCPServerDemo.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d -o ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o ../BerkeleyTCPServerDemo.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d > ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.tmp ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/Reboot.o: ../../../Microchip/TCPIP\ Stack/Reboot.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/Reboot.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/Reboot.o.d -o ${OBJECTDIR}/_ext/1954962658/Reboot.o ../../../Microchip/TCPIP\ Stack/Reboot.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/Reboot.o.d > ${OBJECTDIR}/_ext/1954962658/Reboot.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/Reboot.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/Reboot.o.tmp ${OBJECTDIR}/_ext/1954962658/Reboot.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/Reboot.o.tmp
endif
${OBJECTDIR}/_ext/1472/SMTPDemo.o: ../SMTPDemo.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/SMTPDemo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/SMTPDemo.o.d -o ${OBJECTDIR}/_ext/1472/SMTPDemo.o ../SMTPDemo.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/SMTPDemo.o.d > ${OBJECTDIR}/_ext/1472/SMTPDemo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/SMTPDemo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/SMTPDemo.o.tmp ${OBJECTDIR}/_ext/1472/SMTPDemo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/SMTPDemo.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/DNS.o: ../../../Microchip/TCPIP\ Stack/DNS.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/DNS.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/DNS.o.d -o ${OBJECTDIR}/_ext/1954962658/DNS.o ../../../Microchip/TCPIP\ Stack/DNS.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/DNS.o.d > ${OBJECTDIR}/_ext/1954962658/DNS.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/DNS.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/DNS.o.tmp ${OBJECTDIR}/_ext/1954962658/DNS.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/DNS.o.tmp
endif
${OBJECTDIR}/_ext/1472/UARTConfig.o: ../UARTConfig.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/UARTConfig.o.d -o ${OBJECTDIR}/_ext/1472/UARTConfig.o ../UARTConfig.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/UARTConfig.o.d > ${OBJECTDIR}/_ext/1472/UARTConfig.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/UARTConfig.o.tmp ${OBJECTDIR}/_ext/1472/UARTConfig.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o.tmp
endif
${OBJECTDIR}/_ext/1472/CustomHTTPApp.o: ../CustomHTTPApp.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d -o ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o ../CustomHTTPApp.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d > ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.tmp ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/ICMP.o: ../../../Microchip/TCPIP\ Stack/ICMP.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/ICMP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/ICMP.o.d -o ${OBJECTDIR}/_ext/1954962658/ICMP.o ../../../Microchip/TCPIP\ Stack/ICMP.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/ICMP.o.d > ${OBJECTDIR}/_ext/1954962658/ICMP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/ICMP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/ICMP.o.tmp ${OBJECTDIR}/_ext/1954962658/ICMP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/ICMP.o.tmp
endif
else
${OBJECTDIR}/_ext/1954962658/SPIFlash.o: ../../../Microchip/TCPIP\ Stack/SPIFlash.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d -o ${OBJECTDIR}/_ext/1954962658/SPIFlash.o ../../../Microchip/TCPIP\ Stack/SPIFlash.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d > ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.tmp ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/FTP.o: ../../../Microchip/TCPIP\ Stack/FTP.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/FTP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/FTP.o.d -o ${OBJECTDIR}/_ext/1954962658/FTP.o ../../../Microchip/TCPIP\ Stack/FTP.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/FTP.o.d > ${OBJECTDIR}/_ext/1954962658/FTP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/FTP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/FTP.o.tmp ${OBJECTDIR}/_ext/1954962658/FTP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/FTP.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/UDP.o: ../../../Microchip/TCPIP\ Stack/UDP.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/UDP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/UDP.o.d -o ${OBJECTDIR}/_ext/1954962658/UDP.o ../../../Microchip/TCPIP\ Stack/UDP.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/UDP.o.d > ${OBJECTDIR}/_ext/1954962658/UDP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/UDP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/UDP.o.tmp ${OBJECTDIR}/_ext/1954962658/UDP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/UDP.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o: ../../../Microchip/TCPIP\ Stack/BerkeleyAPI.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d -o ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o ../../../Microchip/TCPIP\ Stack/BerkeleyAPI.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d > ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.tmp ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o: ../../../Microchip/TCPIP\ Stack/UART2TCPBridge.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d -o ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o ../../../Microchip/TCPIP\ Stack/UART2TCPBridge.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d > ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.tmp ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/StackTsk.o: ../../../Microchip/TCPIP\ Stack/StackTsk.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/StackTsk.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/StackTsk.o.d -o ${OBJECTDIR}/_ext/1954962658/StackTsk.o ../../../Microchip/TCPIP\ Stack/StackTsk.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/StackTsk.o.d > ${OBJECTDIR}/_ext/1954962658/StackTsk.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/StackTsk.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/StackTsk.o.tmp ${OBJECTDIR}/_ext/1954962658/StackTsk.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/StackTsk.o.tmp
endif
${OBJECTDIR}/_ext/1472/GenericTCPServer.o: ../GenericTCPServer.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d -o ${OBJECTDIR}/_ext/1472/GenericTCPServer.o ../GenericTCPServer.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d > ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.tmp ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.tmp
endif
${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o: ../BerkeleyTCPClientDemo.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d -o ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o ../BerkeleyTCPClientDemo.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d > ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.tmp ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/Delay.o: ../../../Microchip/TCPIP\ Stack/Delay.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/Delay.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/Delay.o.d -o ${OBJECTDIR}/_ext/1954962658/Delay.o ../../../Microchip/TCPIP\ Stack/Delay.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/Delay.o.d > ${OBJECTDIR}/_ext/1954962658/Delay.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/Delay.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/Delay.o.tmp ${OBJECTDIR}/_ext/1954962658/Delay.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/Delay.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/HTTP2.o: ../../../Microchip/TCPIP\ Stack/HTTP2.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/HTTP2.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/HTTP2.o.d -o ${OBJECTDIR}/_ext/1954962658/HTTP2.o ../../../Microchip/TCPIP\ Stack/HTTP2.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/HTTP2.o.d > ${OBJECTDIR}/_ext/1954962658/HTTP2.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/HTTP2.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/HTTP2.o.tmp ${OBJECTDIR}/_ext/1954962658/HTTP2.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/HTTP2.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/ENCX24J600.o: ../../../Microchip/TCPIP\ Stack/ENCX24J600.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d -o ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o ../../../Microchip/TCPIP\ Stack/ENCX24J600.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d > ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.tmp ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/SPIRAM.o: ../../../Microchip/TCPIP\ Stack/SPIRAM.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d -o ${OBJECTDIR}/_ext/1954962658/SPIRAM.o ../../../Microchip/TCPIP\ Stack/SPIRAM.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d > ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.tmp ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/SSL.o: ../../../Microchip/TCPIP\ Stack/SSL.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/SSL.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/SSL.o.d -o ${OBJECTDIR}/_ext/1954962658/SSL.o ../../../Microchip/TCPIP\ Stack/SSL.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/SSL.o.d > ${OBJECTDIR}/_ext/1954962658/SSL.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/SSL.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/SSL.o.tmp ${OBJECTDIR}/_ext/1954962658/SSL.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/SSL.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/LCDBlocking.o: ../../../Microchip/TCPIP\ Stack/LCDBlocking.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d -o ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o ../../../Microchip/TCPIP\ Stack/LCDBlocking.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d > ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.tmp ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/AutoIP.o: ../../../Microchip/TCPIP\ Stack/AutoIP.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/AutoIP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/AutoIP.o.d -o ${OBJECTDIR}/_ext/1954962658/AutoIP.o ../../../Microchip/TCPIP\ Stack/AutoIP.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/AutoIP.o.d > ${OBJECTDIR}/_ext/1954962658/AutoIP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/AutoIP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/AutoIP.o.tmp ${OBJECTDIR}/_ext/1954962658/AutoIP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/AutoIP.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o: ../../../Microchip/TCPIP\ Stack/TCPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d -o ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o ../../../Microchip/TCPIP\ Stack/TCPPerformanceTest.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d > ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.tmp ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/NBNS.o: ../../../Microchip/TCPIP\ Stack/NBNS.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/NBNS.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/NBNS.o.d -o ${OBJECTDIR}/_ext/1954962658/NBNS.o ../../../Microchip/TCPIP\ Stack/NBNS.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/NBNS.o.d > ${OBJECTDIR}/_ext/1954962658/NBNS.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/NBNS.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/NBNS.o.tmp ${OBJECTDIR}/_ext/1954962658/NBNS.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/NBNS.o.tmp
endif
${OBJECTDIR}/_ext/1472/MPFSImg2.o: ../MPFSImg2.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/MPFSImg2.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/MPFSImg2.o.d -o ${OBJECTDIR}/_ext/1472/MPFSImg2.o ../MPFSImg2.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/MPFSImg2.o.d > ${OBJECTDIR}/_ext/1472/MPFSImg2.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/MPFSImg2.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/MPFSImg2.o.tmp ${OBJECTDIR}/_ext/1472/MPFSImg2.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/MPFSImg2.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/Hashes.o: ../../../Microchip/TCPIP\ Stack/Hashes.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/Hashes.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/Hashes.o.d -o ${OBJECTDIR}/_ext/1954962658/Hashes.o ../../../Microchip/TCPIP\ Stack/Hashes.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/Hashes.o.d > ${OBJECTDIR}/_ext/1954962658/Hashes.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/Hashes.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/Hashes.o.tmp ${OBJECTDIR}/_ext/1954962658/Hashes.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/Hashes.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/Telnet.o: ../../../Microchip/TCPIP\ Stack/Telnet.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/Telnet.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/Telnet.o.d -o ${OBJECTDIR}/_ext/1954962658/Telnet.o ../../../Microchip/TCPIP\ Stack/Telnet.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/Telnet.o.d > ${OBJECTDIR}/_ext/1954962658/Telnet.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/Telnet.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/Telnet.o.tmp ${OBJECTDIR}/_ext/1954962658/Telnet.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/Telnet.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o: ../../../Microchip/TCPIP\ Stack/SPIEEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d -o ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o ../../../Microchip/TCPIP\ Stack/SPIEEPROM.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d > ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.tmp ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/Random.o: ../../../Microchip/TCPIP\ Stack/Random.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/Random.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/Random.o.d -o ${OBJECTDIR}/_ext/1954962658/Random.o ../../../Microchip/TCPIP\ Stack/Random.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/Random.o.d > ${OBJECTDIR}/_ext/1954962658/Random.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/Random.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/Random.o.tmp ${OBJECTDIR}/_ext/1954962658/Random.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/Random.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/FileSystem.o: ../../../Microchip/TCPIP\ Stack/FileSystem.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/FileSystem.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/FileSystem.o.d -o ${OBJECTDIR}/_ext/1954962658/FileSystem.o ../../../Microchip/TCPIP\ Stack/FileSystem.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/FileSystem.o.d > ${OBJECTDIR}/_ext/1954962658/FileSystem.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/FileSystem.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/FileSystem.o.tmp ${OBJECTDIR}/_ext/1954962658/FileSystem.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/FileSystem.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/DHCPs.o: ../../../Microchip/TCPIP\ Stack/DHCPs.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/DHCPs.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/DHCPs.o.d -o ${OBJECTDIR}/_ext/1954962658/DHCPs.o ../../../Microchip/TCPIP\ Stack/DHCPs.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/DHCPs.o.d > ${OBJECTDIR}/_ext/1954962658/DHCPs.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/DHCPs.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/DHCPs.o.tmp ${OBJECTDIR}/_ext/1954962658/DHCPs.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/DHCPs.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o: ../../../Microchip/TCPIP\ Stack/ZeroconfHelper.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d -o ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o ../../../Microchip/TCPIP\ Stack/ZeroconfHelper.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d > ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.tmp ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.tmp
endif
${OBJECTDIR}/_ext/1472/CustomSNMPApp.o: ../CustomSNMPApp.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d -o ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o ../CustomSNMPApp.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d > ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.tmp ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/DNSs.o: ../../../Microchip/TCPIP\ Stack/DNSs.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/DNSs.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/DNSs.o.d -o ${OBJECTDIR}/_ext/1954962658/DNSs.o ../../../Microchip/TCPIP\ Stack/DNSs.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/DNSs.o.d > ${OBJECTDIR}/_ext/1954962658/DNSs.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/DNSs.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/DNSs.o.tmp ${OBJECTDIR}/_ext/1954962658/DNSs.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/DNSs.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/RSA.o: ../../../Microchip/TCPIP\ Stack/RSA.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/RSA.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/RSA.o.d -o ${OBJECTDIR}/_ext/1954962658/RSA.o ../../../Microchip/TCPIP\ Stack/RSA.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/RSA.o.d > ${OBJECTDIR}/_ext/1954962658/RSA.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/RSA.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/RSA.o.tmp ${OBJECTDIR}/_ext/1954962658/RSA.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/RSA.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/TCP.o: ../../../Microchip/TCPIP\ Stack/TCP.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/TCP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/TCP.o.d -o ${OBJECTDIR}/_ext/1954962658/TCP.o ../../../Microchip/TCPIP\ Stack/TCP.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/TCP.o.d > ${OBJECTDIR}/_ext/1954962658/TCP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/TCP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/TCP.o.tmp ${OBJECTDIR}/_ext/1954962658/TCP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/TCP.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/Helpers.o: ../../../Microchip/TCPIP\ Stack/Helpers.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/Helpers.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/Helpers.o.d -o ${OBJECTDIR}/_ext/1954962658/Helpers.o ../../../Microchip/TCPIP\ Stack/Helpers.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/Helpers.o.d > ${OBJECTDIR}/_ext/1954962658/Helpers.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/Helpers.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/Helpers.o.tmp ${OBJECTDIR}/_ext/1954962658/Helpers.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/Helpers.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/IP.o: ../../../Microchip/TCPIP\ Stack/IP.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/IP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/IP.o.d -o ${OBJECTDIR}/_ext/1954962658/IP.o ../../../Microchip/TCPIP\ Stack/IP.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/IP.o.d > ${OBJECTDIR}/_ext/1954962658/IP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/IP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/IP.o.tmp ${OBJECTDIR}/_ext/1954962658/IP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/IP.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/DynDNS.o: ../../../Microchip/TCPIP\ Stack/DynDNS.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/DynDNS.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/DynDNS.o.d -o ${OBJECTDIR}/_ext/1954962658/DynDNS.o ../../../Microchip/TCPIP\ Stack/DynDNS.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/DynDNS.o.d > ${OBJECTDIR}/_ext/1954962658/DynDNS.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/DynDNS.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/DynDNS.o.tmp ${OBJECTDIR}/_ext/1954962658/DynDNS.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/DynDNS.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o: ../../../Microchip/TCPIP\ Stack/ZeroconfLinkLocal.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.d -o ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o ../../../Microchip/TCPIP\ Stack/ZeroconfLinkLocal.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.d > ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.tmp ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/DHCP.o: ../../../Microchip/TCPIP\ Stack/DHCP.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/DHCP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/DHCP.o.d -o ${OBJECTDIR}/_ext/1954962658/DHCP.o ../../../Microchip/TCPIP\ Stack/DHCP.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/DHCP.o.d > ${OBJECTDIR}/_ext/1954962658/DHCP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/DHCP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/DHCP.o.tmp ${OBJECTDIR}/_ext/1954962658/DHCP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/DHCP.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/UART.o: ../../../Microchip/TCPIP\ Stack/UART.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/UART.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/UART.o.d -o ${OBJECTDIR}/_ext/1954962658/UART.o ../../../Microchip/TCPIP\ Stack/UART.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/UART.o.d > ${OBJECTDIR}/_ext/1954962658/UART.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/UART.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/UART.o.tmp ${OBJECTDIR}/_ext/1954962658/UART.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/UART.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/Tick.o: ../../../Microchip/TCPIP\ Stack/Tick.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/Tick.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/Tick.o.d -o ${OBJECTDIR}/_ext/1954962658/Tick.o ../../../Microchip/TCPIP\ Stack/Tick.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/Tick.o.d > ${OBJECTDIR}/_ext/1954962658/Tick.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/Tick.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/Tick.o.tmp ${OBJECTDIR}/_ext/1954962658/Tick.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/Tick.o.tmp
endif
${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o: ../BerkeleyUDPClientDemo.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d -o ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o ../BerkeleyUDPClientDemo.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d > ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.tmp ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o: ../../../Microchip/TCPIP\ Stack/UDPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d -o ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o ../../../Microchip/TCPIP\ Stack/UDPPerformanceTest.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d > ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.tmp ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/ARP.o: ../../../Microchip/TCPIP\ Stack/ARP.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/ARP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/ARP.o.d -o ${OBJECTDIR}/_ext/1954962658/ARP.o ../../../Microchip/TCPIP\ Stack/ARP.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/ARP.o.d > ${OBJECTDIR}/_ext/1954962658/ARP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/ARP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/ARP.o.tmp ${OBJECTDIR}/_ext/1954962658/ARP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/ARP.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/BigInt.o: ../../../Microchip/TCPIP\ Stack/BigInt.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/BigInt.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/BigInt.o.d -o ${OBJECTDIR}/_ext/1954962658/BigInt.o ../../../Microchip/TCPIP\ Stack/BigInt.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/BigInt.o.d > ${OBJECTDIR}/_ext/1954962658/BigInt.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/BigInt.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/BigInt.o.tmp ${OBJECTDIR}/_ext/1954962658/BigInt.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/BigInt.o.tmp
endif
${OBJECTDIR}/_ext/1472/PingDemo.o: ../PingDemo.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/PingDemo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/PingDemo.o.d -o ${OBJECTDIR}/_ext/1472/PingDemo.o ../PingDemo.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/PingDemo.o.d > ${OBJECTDIR}/_ext/1472/PingDemo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/PingDemo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/PingDemo.o.tmp ${OBJECTDIR}/_ext/1472/PingDemo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/PingDemo.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o: ../../../Microchip/TCPIP\ Stack/ZeroconfMulticastDNS.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.d -o ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o ../../../Microchip/TCPIP\ Stack/ZeroconfMulticastDNS.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.d > ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.tmp ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/SNTP.o: ../../../Microchip/TCPIP\ Stack/SNTP.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/SNTP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/SNTP.o.d -o ${OBJECTDIR}/_ext/1954962658/SNTP.o ../../../Microchip/TCPIP\ Stack/SNTP.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/SNTP.o.d > ${OBJECTDIR}/_ext/1954962658/SNTP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/SNTP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/SNTP.o.tmp ${OBJECTDIR}/_ext/1954962658/SNTP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/SNTP.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/ENC28J60.o: ../../../Microchip/TCPIP\ Stack/ENC28J60.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d -o ${OBJECTDIR}/_ext/1954962658/ENC28J60.o ../../../Microchip/TCPIP\ Stack/ENC28J60.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d > ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.tmp ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/SNMPv3USM.o: ../../../Microchip/TCPIP\ Stack/SNMPv3USM.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/SNMPv3USM.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/SNMPv3USM.o.d -o ${OBJECTDIR}/_ext/1954962658/SNMPv3USM.o ../../../Microchip/TCPIP\ Stack/SNMPv3USM.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/SNMPv3USM.o.d > ${OBJECTDIR}/_ext/1954962658/SNMPv3USM.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/SNMPv3USM.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/SNMPv3USM.o.tmp ${OBJECTDIR}/_ext/1954962658/SNMPv3USM.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/SNMPv3USM.o.tmp
endif
${OBJECTDIR}/_ext/1472/GenericTCPClient.o: ../GenericTCPClient.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d -o ${OBJECTDIR}/_ext/1472/GenericTCPClient.o ../GenericTCPClient.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d > ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.tmp ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.tmp
endif
${OBJECTDIR}/_ext/1472/MainDemo.o: ../MainDemo.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/MainDemo.o.d -o ${OBJECTDIR}/_ext/1472/MainDemo.o ../MainDemo.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/MainDemo.o.d > ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/Announce.o: ../../../Microchip/TCPIP\ Stack/Announce.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/Announce.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/Announce.o.d -o ${OBJECTDIR}/_ext/1954962658/Announce.o ../../../Microchip/TCPIP\ Stack/Announce.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/Announce.o.d > ${OBJECTDIR}/_ext/1954962658/Announce.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/Announce.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/Announce.o.tmp ${OBJECTDIR}/_ext/1954962658/Announce.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/Announce.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/SNMP.o: ../../../Microchip/TCPIP\ Stack/SNMP.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/SNMP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/SNMP.o.d -o ${OBJECTDIR}/_ext/1954962658/SNMP.o ../../../Microchip/TCPIP\ Stack/SNMP.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/SNMP.o.d > ${OBJECTDIR}/_ext/1954962658/SNMP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/SNMP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/SNMP.o.tmp ${OBJECTDIR}/_ext/1954962658/SNMP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/SNMP.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/SMTP.o: ../../../Microchip/TCPIP\ Stack/SMTP.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/SMTP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/SMTP.o.d -o ${OBJECTDIR}/_ext/1954962658/SMTP.o ../../../Microchip/TCPIP\ Stack/SMTP.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/SMTP.o.d > ${OBJECTDIR}/_ext/1954962658/SMTP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/SMTP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/SMTP.o.tmp ${OBJECTDIR}/_ext/1954962658/SMTP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/SMTP.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/ARCFOUR.o: ../../../Microchip/TCPIP\ Stack/ARCFOUR.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/ARCFOUR.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/ARCFOUR.o.d -o ${OBJECTDIR}/_ext/1954962658/ARCFOUR.o ../../../Microchip/TCPIP\ Stack/ARCFOUR.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/ARCFOUR.o.d > ${OBJECTDIR}/_ext/1954962658/ARCFOUR.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/ARCFOUR.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/ARCFOUR.o.tmp ${OBJECTDIR}/_ext/1954962658/ARCFOUR.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/ARCFOUR.o.tmp
endif
${OBJECTDIR}/_ext/1472/CustomSSLCert.o: ../CustomSSLCert.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.d -o ${OBJECTDIR}/_ext/1472/CustomSSLCert.o ../CustomSSLCert.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.d > ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.tmp ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/SNMPv3.o: ../../../Microchip/TCPIP\ Stack/SNMPv3.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/SNMPv3.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/SNMPv3.o.d -o ${OBJECTDIR}/_ext/1954962658/SNMPv3.o ../../../Microchip/TCPIP\ Stack/SNMPv3.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/SNMPv3.o.d > ${OBJECTDIR}/_ext/1954962658/SNMPv3.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/SNMPv3.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/SNMPv3.o.tmp ${OBJECTDIR}/_ext/1954962658/SNMPv3.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/SNMPv3.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/TFTPc.o: ../../../Microchip/TCPIP\ Stack/TFTPc.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/TFTPc.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/TFTPc.o.d -o ${OBJECTDIR}/_ext/1954962658/TFTPc.o ../../../Microchip/TCPIP\ Stack/TFTPc.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/TFTPc.o.d > ${OBJECTDIR}/_ext/1954962658/TFTPc.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/TFTPc.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/TFTPc.o.tmp ${OBJECTDIR}/_ext/1954962658/TFTPc.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/TFTPc.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/MPFS2.o: ../../../Microchip/TCPIP\ Stack/MPFS2.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/MPFS2.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/MPFS2.o.d -o ${OBJECTDIR}/_ext/1954962658/MPFS2.o ../../../Microchip/TCPIP\ Stack/MPFS2.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/MPFS2.o.d > ${OBJECTDIR}/_ext/1954962658/MPFS2.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/MPFS2.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/MPFS2.o.tmp ${OBJECTDIR}/_ext/1954962658/MPFS2.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/MPFS2.o.tmp
endif
${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o: ../BerkeleyTCPServerDemo.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d -o ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o ../BerkeleyTCPServerDemo.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d > ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.tmp ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/Reboot.o: ../../../Microchip/TCPIP\ Stack/Reboot.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/Reboot.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/Reboot.o.d -o ${OBJECTDIR}/_ext/1954962658/Reboot.o ../../../Microchip/TCPIP\ Stack/Reboot.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/Reboot.o.d > ${OBJECTDIR}/_ext/1954962658/Reboot.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/Reboot.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/Reboot.o.tmp ${OBJECTDIR}/_ext/1954962658/Reboot.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/Reboot.o.tmp
endif
${OBJECTDIR}/_ext/1472/SMTPDemo.o: ../SMTPDemo.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/SMTPDemo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/SMTPDemo.o.d -o ${OBJECTDIR}/_ext/1472/SMTPDemo.o ../SMTPDemo.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/SMTPDemo.o.d > ${OBJECTDIR}/_ext/1472/SMTPDemo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/SMTPDemo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/SMTPDemo.o.tmp ${OBJECTDIR}/_ext/1472/SMTPDemo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/SMTPDemo.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/DNS.o: ../../../Microchip/TCPIP\ Stack/DNS.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/DNS.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/DNS.o.d -o ${OBJECTDIR}/_ext/1954962658/DNS.o ../../../Microchip/TCPIP\ Stack/DNS.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/DNS.o.d > ${OBJECTDIR}/_ext/1954962658/DNS.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/DNS.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/DNS.o.tmp ${OBJECTDIR}/_ext/1954962658/DNS.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/DNS.o.tmp
endif
${OBJECTDIR}/_ext/1472/UARTConfig.o: ../UARTConfig.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/UARTConfig.o.d -o ${OBJECTDIR}/_ext/1472/UARTConfig.o ../UARTConfig.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/UARTConfig.o.d > ${OBJECTDIR}/_ext/1472/UARTConfig.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/UARTConfig.o.tmp ${OBJECTDIR}/_ext/1472/UARTConfig.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o.tmp
endif
${OBJECTDIR}/_ext/1472/CustomHTTPApp.o: ../CustomHTTPApp.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d -o ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o ../CustomHTTPApp.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d > ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.tmp ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.tmp
endif
${OBJECTDIR}/_ext/1954962658/ICMP.o: ../../../Microchip/TCPIP\ Stack/ICMP.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${RM} ${OBJECTDIR}/_ext/1954962658/ICMP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF ${OBJECTDIR}/_ext/1954962658/ICMP.o.d -o ${OBJECTDIR}/_ext/1954962658/ICMP.o ../../../Microchip/TCPIP\ Stack/ICMP.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1954962658/ICMP.o.d > ${OBJECTDIR}/_ext/1954962658/ICMP.o.tmp
	${RM} ${OBJECTDIR}/_ext/1954962658/ICMP.o.d 
	${CP} ${OBJECTDIR}/_ext/1954962658/ICMP.o.tmp ${OBJECTDIR}/_ext/1954962658/ICMP.o.d 
	${RM} ${OBJECTDIR}/_ext/1954962658/ICMP.o.tmp
endif
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf ${OBJECTFILES}        -Wl,--defsym=__MPLAB_BUILD=1,--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,-L"..",-Map="$(BINDIR_)$(TARGETBASE).map" 
else
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf ${OBJECTFILES}        -Wl,--defsym=__MPLAB_BUILD=1,--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),-L"..",-Map="$(BINDIR_)$(TARGETBASE).map"
	${MP_CC_DIR}\\pic32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf  
endif


# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf:
	${RM} -r build/C32-EX16_ENC624
	${RM} -r dist/C32-EX16_ENC624

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
