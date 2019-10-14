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
CND_CONF=C18-PICDN2_ENC624

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
OBJECTFILES=${OBJECTDIR}/_ext/1954962658/SPIFlash.o ${OBJECTDIR}/_ext/1954962658/FTP.o ${OBJECTDIR}/_ext/1954962658/UDP.o ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o ${OBJECTDIR}/_ext/1954962658/StackTsk.o ${OBJECTDIR}/_ext/1472/GenericTCPServer.o ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o ${OBJECTDIR}/_ext/1954962658/Delay.o ${OBJECTDIR}/_ext/1954962658/HTTP2.o ${OBJECTDIR}/_ext/1954962658/ETH97J60.o ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o ${OBJECTDIR}/_ext/1954962658/SPIRAM.o ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o ${OBJECTDIR}/_ext/1954962658/AutoIP.o ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o ${OBJECTDIR}/_ext/1954962658/NBNS.o ${OBJECTDIR}/_ext/1472/MPFSImg2.o ${OBJECTDIR}/_ext/1954962658/Hashes.o ${OBJECTDIR}/_ext/1954962658/Telnet.o ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o ${OBJECTDIR}/_ext/1954962658/DHCPs.o ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o ${OBJECTDIR}/_ext/1954962658/DNSs.o ${OBJECTDIR}/_ext/1954962658/TCP.o ${OBJECTDIR}/_ext/1954962658/Helpers.o ${OBJECTDIR}/_ext/1954962658/IP.o ${OBJECTDIR}/_ext/1954962658/DynDNS.o ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o ${OBJECTDIR}/_ext/1954962658/DHCP.o ${OBJECTDIR}/_ext/1954962658/UART.o ${OBJECTDIR}/_ext/1954962658/Tick.o ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o ${OBJECTDIR}/_ext/1954962658/ARP.o ${OBJECTDIR}/_ext/1472/PingDemo.o ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o ${OBJECTDIR}/_ext/1954962658/SNTP.o ${OBJECTDIR}/_ext/1954962658/ENC28J60.o ${OBJECTDIR}/_ext/1472/GenericTCPClient.o ${OBJECTDIR}/_ext/1472/MainDemo.o ${OBJECTDIR}/_ext/1954962658/Announce.o ${OBJECTDIR}/_ext/1954962658/SNMP.o ${OBJECTDIR}/_ext/1954962658/SMTP.o ${OBJECTDIR}/_ext/1954962658/TFTPc.o ${OBJECTDIR}/_ext/1954962658/MPFS2.o ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o ${OBJECTDIR}/_ext/1954962658/Reboot.o ${OBJECTDIR}/_ext/1472/SMTPDemo.o ${OBJECTDIR}/_ext/1954962658/DNS.o ${OBJECTDIR}/_ext/1472/UARTConfig.o ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o ${OBJECTDIR}/_ext/1954962658/ICMP.o


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
	${MAKE}  -f nbproject/Makefile-C18-PICDN2_ENC624.mk dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.cof

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
${OBJECTDIR}/_ext/1954962658/SPIFlash.o: ../../../Microchip/TCPIP\ Stack/SPIFlash.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/SPIFlash.o   ../../../Microchip/TCPIP\ Stack/SPIFlash.c  > ${OBJECTDIR}/_ext/1954962658/SPIFlash.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/SPIFlash.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/SPIFlash.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.temp ../../../Microchip/TCPIP\ Stack/SPIFlash.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
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
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/FTP.o   ../../../Microchip/TCPIP\ Stack/FTP.c  > ${OBJECTDIR}/_ext/1954962658/FTP.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/FTP.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/FTP.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/FTP.o.temp ../../../Microchip/TCPIP\ Stack/FTP.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/FTP.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/FTP.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/FTP.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/FTP.o.temp >> ${OBJECTDIR}/_ext/1954962658/FTP.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/UDP.o: ../../../Microchip/TCPIP\ Stack/UDP.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/UDP.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/UDP.o   ../../../Microchip/TCPIP\ Stack/UDP.c  > ${OBJECTDIR}/_ext/1954962658/UDP.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/UDP.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/UDP.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/UDP.o.temp ../../../Microchip/TCPIP\ Stack/UDP.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/UDP.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/UDP.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/UDP.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/UDP.o.temp >> ${OBJECTDIR}/_ext/1954962658/UDP.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o: ../../../Microchip/TCPIP\ Stack/BerkeleyAPI.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o   ../../../Microchip/TCPIP\ Stack/BerkeleyAPI.c  > ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.temp ../../../Microchip/TCPIP\ Stack/BerkeleyAPI.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.temp >> ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o: ../../../Microchip/TCPIP\ Stack/UART2TCPBridge.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o   ../../../Microchip/TCPIP\ Stack/UART2TCPBridge.c  > ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.temp ../../../Microchip/TCPIP\ Stack/UART2TCPBridge.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
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
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/StackTsk.o   ../../../Microchip/TCPIP\ Stack/StackTsk.c  > ${OBJECTDIR}/_ext/1954962658/StackTsk.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/StackTsk.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/StackTsk.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/StackTsk.o.temp ../../../Microchip/TCPIP\ Stack/StackTsk.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/StackTsk.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/StackTsk.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/StackTsk.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/StackTsk.o.temp >> ${OBJECTDIR}/_ext/1954962658/StackTsk.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1472/GenericTCPServer.o: ../GenericTCPServer.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/GenericTCPServer.o   ../GenericTCPServer.c  > ${OBJECTDIR}/_ext/1472/GenericTCPServer.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1472/GenericTCPServer.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1472/GenericTCPServer.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.temp ../GenericTCPServer.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1472 > ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d
else
	cat ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.temp >> ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o: ../BerkeleyTCPClientDemo.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o   ../BerkeleyTCPClientDemo.c  > ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.temp ../BerkeleyTCPClientDemo.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1472 > ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d
else
	cat ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.temp >> ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/Delay.o: ../../../Microchip/TCPIP\ Stack/Delay.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/Delay.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/Delay.o   ../../../Microchip/TCPIP\ Stack/Delay.c  > ${OBJECTDIR}/_ext/1954962658/Delay.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/Delay.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/Delay.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/Delay.o.temp ../../../Microchip/TCPIP\ Stack/Delay.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
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
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/HTTP2.o   ../../../Microchip/TCPIP\ Stack/HTTP2.c  > ${OBJECTDIR}/_ext/1954962658/HTTP2.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/HTTP2.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/HTTP2.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/HTTP2.o.temp ../../../Microchip/TCPIP\ Stack/HTTP2.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/HTTP2.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/HTTP2.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/HTTP2.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/HTTP2.o.temp >> ${OBJECTDIR}/_ext/1954962658/HTTP2.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/ETH97J60.o: ../../../Microchip/TCPIP\ Stack/ETH97J60.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/ETH97J60.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/ETH97J60.o   ../../../Microchip/TCPIP\ Stack/ETH97J60.c  > ${OBJECTDIR}/_ext/1954962658/ETH97J60.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/ETH97J60.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/ETH97J60.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/ETH97J60.o.temp ../../../Microchip/TCPIP\ Stack/ETH97J60.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/ETH97J60.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/ETH97J60.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/ETH97J60.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/ETH97J60.o.temp >> ${OBJECTDIR}/_ext/1954962658/ETH97J60.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/ENCX24J600.o: ../../../Microchip/TCPIP\ Stack/ENCX24J600.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o   ../../../Microchip/TCPIP\ Stack/ENCX24J600.c  > ${OBJECTDIR}/_ext/1954962658/ENCX24J600.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/ENCX24J600.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/ENCX24J600.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.temp ../../../Microchip/TCPIP\ Stack/ENCX24J600.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
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
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/SPIRAM.o   ../../../Microchip/TCPIP\ Stack/SPIRAM.c  > ${OBJECTDIR}/_ext/1954962658/SPIRAM.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/SPIRAM.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/SPIRAM.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.temp ../../../Microchip/TCPIP\ Stack/SPIRAM.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.temp >> ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/LCDBlocking.o: ../../../Microchip/TCPIP\ Stack/LCDBlocking.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o   ../../../Microchip/TCPIP\ Stack/LCDBlocking.c  > ${OBJECTDIR}/_ext/1954962658/LCDBlocking.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/LCDBlocking.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/LCDBlocking.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.temp ../../../Microchip/TCPIP\ Stack/LCDBlocking.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
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
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/AutoIP.o   ../../../Microchip/TCPIP\ Stack/AutoIP.c  > ${OBJECTDIR}/_ext/1954962658/AutoIP.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/AutoIP.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/AutoIP.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/AutoIP.o.temp ../../../Microchip/TCPIP\ Stack/AutoIP.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
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
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o   ../../../Microchip/TCPIP\ Stack/TCPPerformanceTest.c  > ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.temp ../../../Microchip/TCPIP\ Stack/TCPPerformanceTest.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
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
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/NBNS.o   ../../../Microchip/TCPIP\ Stack/NBNS.c  > ${OBJECTDIR}/_ext/1954962658/NBNS.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/NBNS.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/NBNS.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/NBNS.o.temp ../../../Microchip/TCPIP\ Stack/NBNS.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/NBNS.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/NBNS.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/NBNS.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/NBNS.o.temp >> ${OBJECTDIR}/_ext/1954962658/NBNS.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1472/MPFSImg2.o: ../MPFSImg2.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1472/MPFSImg2.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/MPFSImg2.o   ../MPFSImg2.c  > ${OBJECTDIR}/_ext/1472/MPFSImg2.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1472/MPFSImg2.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1472/MPFSImg2.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1472/MPFSImg2.o.temp ../MPFSImg2.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1472 > ${OBJECTDIR}/_ext/1472/MPFSImg2.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1472/MPFSImg2.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1472/MPFSImg2.o.d
else
	cat ${OBJECTDIR}/_ext/1472/MPFSImg2.o.temp >> ${OBJECTDIR}/_ext/1472/MPFSImg2.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/Hashes.o: ../../../Microchip/TCPIP\ Stack/Hashes.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/Hashes.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/Hashes.o   ../../../Microchip/TCPIP\ Stack/Hashes.c  > ${OBJECTDIR}/_ext/1954962658/Hashes.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/Hashes.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/Hashes.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/Hashes.o.temp ../../../Microchip/TCPIP\ Stack/Hashes.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
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
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/Telnet.o   ../../../Microchip/TCPIP\ Stack/Telnet.c  > ${OBJECTDIR}/_ext/1954962658/Telnet.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/Telnet.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/Telnet.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/Telnet.o.temp ../../../Microchip/TCPIP\ Stack/Telnet.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
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
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o   ../../../Microchip/TCPIP\ Stack/SPIEEPROM.c  > ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.temp ../../../Microchip/TCPIP\ Stack/SPIEEPROM.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.temp >> ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/DHCPs.o: ../../../Microchip/TCPIP\ Stack/DHCPs.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/DHCPs.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/DHCPs.o   ../../../Microchip/TCPIP\ Stack/DHCPs.c  > ${OBJECTDIR}/_ext/1954962658/DHCPs.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/DHCPs.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/DHCPs.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/DHCPs.o.temp ../../../Microchip/TCPIP\ Stack/DHCPs.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
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
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o   ../../../Microchip/TCPIP\ Stack/ZeroconfHelper.c  > ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.temp ../../../Microchip/TCPIP\ Stack/ZeroconfHelper.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.temp >> ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1472/CustomSNMPApp.o: ../CustomSNMPApp.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o   ../CustomSNMPApp.c  > ${OBJECTDIR}/_ext/1472/CustomSNMPApp.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1472/CustomSNMPApp.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1472/CustomSNMPApp.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.temp ../CustomSNMPApp.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1472 > ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d
else
	cat ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.temp >> ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/DNSs.o: ../../../Microchip/TCPIP\ Stack/DNSs.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/DNSs.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/DNSs.o   ../../../Microchip/TCPIP\ Stack/DNSs.c  > ${OBJECTDIR}/_ext/1954962658/DNSs.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/DNSs.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/DNSs.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/DNSs.o.temp ../../../Microchip/TCPIP\ Stack/DNSs.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/DNSs.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/DNSs.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/DNSs.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/DNSs.o.temp >> ${OBJECTDIR}/_ext/1954962658/DNSs.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/TCP.o: ../../../Microchip/TCPIP\ Stack/TCP.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/TCP.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/TCP.o   ../../../Microchip/TCPIP\ Stack/TCP.c  > ${OBJECTDIR}/_ext/1954962658/TCP.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/TCP.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/TCP.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/TCP.o.temp ../../../Microchip/TCPIP\ Stack/TCP.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/TCP.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/TCP.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/TCP.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/TCP.o.temp >> ${OBJECTDIR}/_ext/1954962658/TCP.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/Helpers.o: ../../../Microchip/TCPIP\ Stack/Helpers.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/Helpers.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/Helpers.o   ../../../Microchip/TCPIP\ Stack/Helpers.c  > ${OBJECTDIR}/_ext/1954962658/Helpers.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/Helpers.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/Helpers.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/Helpers.o.temp ../../../Microchip/TCPIP\ Stack/Helpers.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/Helpers.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/Helpers.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/Helpers.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/Helpers.o.temp >> ${OBJECTDIR}/_ext/1954962658/Helpers.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/IP.o: ../../../Microchip/TCPIP\ Stack/IP.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/IP.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/IP.o   ../../../Microchip/TCPIP\ Stack/IP.c  > ${OBJECTDIR}/_ext/1954962658/IP.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/IP.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/IP.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/IP.o.temp ../../../Microchip/TCPIP\ Stack/IP.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/IP.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/IP.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/IP.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/IP.o.temp >> ${OBJECTDIR}/_ext/1954962658/IP.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/DynDNS.o: ../../../Microchip/TCPIP\ Stack/DynDNS.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/DynDNS.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/DynDNS.o   ../../../Microchip/TCPIP\ Stack/DynDNS.c  > ${OBJECTDIR}/_ext/1954962658/DynDNS.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/DynDNS.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/DynDNS.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/DynDNS.o.temp ../../../Microchip/TCPIP\ Stack/DynDNS.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
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
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o   ../../../Microchip/TCPIP\ Stack/ZeroconfLinkLocal.c  > ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.temp ../../../Microchip/TCPIP\ Stack/ZeroconfLinkLocal.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
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
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/DHCP.o   ../../../Microchip/TCPIP\ Stack/DHCP.c  > ${OBJECTDIR}/_ext/1954962658/DHCP.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/DHCP.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/DHCP.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/DHCP.o.temp ../../../Microchip/TCPIP\ Stack/DHCP.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/DHCP.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/DHCP.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/DHCP.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/DHCP.o.temp >> ${OBJECTDIR}/_ext/1954962658/DHCP.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/UART.o: ../../../Microchip/TCPIP\ Stack/UART.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/UART.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/UART.o   ../../../Microchip/TCPIP\ Stack/UART.c  > ${OBJECTDIR}/_ext/1954962658/UART.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/UART.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/UART.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/UART.o.temp ../../../Microchip/TCPIP\ Stack/UART.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/UART.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/UART.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/UART.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/UART.o.temp >> ${OBJECTDIR}/_ext/1954962658/UART.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/Tick.o: ../../../Microchip/TCPIP\ Stack/Tick.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/Tick.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/Tick.o   ../../../Microchip/TCPIP\ Stack/Tick.c  > ${OBJECTDIR}/_ext/1954962658/Tick.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/Tick.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/Tick.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/Tick.o.temp ../../../Microchip/TCPIP\ Stack/Tick.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/Tick.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/Tick.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/Tick.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/Tick.o.temp >> ${OBJECTDIR}/_ext/1954962658/Tick.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o: ../BerkeleyUDPClientDemo.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o   ../BerkeleyUDPClientDemo.c  > ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.temp ../BerkeleyUDPClientDemo.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1472 > ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d
else
	cat ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.temp >> ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o: ../../../Microchip/TCPIP\ Stack/UDPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o   ../../../Microchip/TCPIP\ Stack/UDPPerformanceTest.c  > ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.temp ../../../Microchip/TCPIP\ Stack/UDPPerformanceTest.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.temp >> ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/ARP.o: ../../../Microchip/TCPIP\ Stack/ARP.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/ARP.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/ARP.o   ../../../Microchip/TCPIP\ Stack/ARP.c  > ${OBJECTDIR}/_ext/1954962658/ARP.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/ARP.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/ARP.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/ARP.o.temp ../../../Microchip/TCPIP\ Stack/ARP.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/ARP.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/ARP.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/ARP.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/ARP.o.temp >> ${OBJECTDIR}/_ext/1954962658/ARP.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1472/PingDemo.o: ../PingDemo.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1472/PingDemo.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/PingDemo.o   ../PingDemo.c  > ${OBJECTDIR}/_ext/1472/PingDemo.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1472/PingDemo.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1472/PingDemo.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1472/PingDemo.o.temp ../PingDemo.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1472 > ${OBJECTDIR}/_ext/1472/PingDemo.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1472/PingDemo.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1472/PingDemo.o.d
else
	cat ${OBJECTDIR}/_ext/1472/PingDemo.o.temp >> ${OBJECTDIR}/_ext/1472/PingDemo.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o: ../../../Microchip/TCPIP\ Stack/ZeroconfMulticastDNS.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o   ../../../Microchip/TCPIP\ Stack/ZeroconfMulticastDNS.c  > ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.temp ../../../Microchip/TCPIP\ Stack/ZeroconfMulticastDNS.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
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
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/SNTP.o   ../../../Microchip/TCPIP\ Stack/SNTP.c  > ${OBJECTDIR}/_ext/1954962658/SNTP.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/SNTP.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/SNTP.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/SNTP.o.temp ../../../Microchip/TCPIP\ Stack/SNTP.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/SNTP.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/SNTP.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/SNTP.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/SNTP.o.temp >> ${OBJECTDIR}/_ext/1954962658/SNTP.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/ENC28J60.o: ../../../Microchip/TCPIP\ Stack/ENC28J60.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/ENC28J60.o   ../../../Microchip/TCPIP\ Stack/ENC28J60.c  > ${OBJECTDIR}/_ext/1954962658/ENC28J60.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/ENC28J60.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/ENC28J60.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.temp ../../../Microchip/TCPIP\ Stack/ENC28J60.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.temp >> ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1472/GenericTCPClient.o: ../GenericTCPClient.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/GenericTCPClient.o   ../GenericTCPClient.c  > ${OBJECTDIR}/_ext/1472/GenericTCPClient.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1472/GenericTCPClient.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1472/GenericTCPClient.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.temp ../GenericTCPClient.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1472 > ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d
else
	cat ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.temp >> ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1472/MainDemo.o: ../MainDemo.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/MainDemo.o   ../MainDemo.c  > ${OBJECTDIR}/_ext/1472/MainDemo.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1472/MainDemo.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1472/MainDemo.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1472/MainDemo.o.temp ../MainDemo.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1472 > ${OBJECTDIR}/_ext/1472/MainDemo.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1472/MainDemo.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1472/MainDemo.o.d
else
	cat ${OBJECTDIR}/_ext/1472/MainDemo.o.temp >> ${OBJECTDIR}/_ext/1472/MainDemo.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/Announce.o: ../../../Microchip/TCPIP\ Stack/Announce.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/Announce.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/Announce.o   ../../../Microchip/TCPIP\ Stack/Announce.c  > ${OBJECTDIR}/_ext/1954962658/Announce.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/Announce.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/Announce.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/Announce.o.temp ../../../Microchip/TCPIP\ Stack/Announce.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
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
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/SNMP.o   ../../../Microchip/TCPIP\ Stack/SNMP.c  > ${OBJECTDIR}/_ext/1954962658/SNMP.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/SNMP.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/SNMP.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/SNMP.o.temp ../../../Microchip/TCPIP\ Stack/SNMP.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/SNMP.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/SNMP.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/SNMP.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/SNMP.o.temp >> ${OBJECTDIR}/_ext/1954962658/SNMP.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/SMTP.o: ../../../Microchip/TCPIP\ Stack/SMTP.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/SMTP.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/SMTP.o   ../../../Microchip/TCPIP\ Stack/SMTP.c  > ${OBJECTDIR}/_ext/1954962658/SMTP.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/SMTP.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/SMTP.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/SMTP.o.temp ../../../Microchip/TCPIP\ Stack/SMTP.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/SMTP.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/SMTP.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/SMTP.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/SMTP.o.temp >> ${OBJECTDIR}/_ext/1954962658/SMTP.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/TFTPc.o: ../../../Microchip/TCPIP\ Stack/TFTPc.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/TFTPc.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/TFTPc.o   ../../../Microchip/TCPIP\ Stack/TFTPc.c  > ${OBJECTDIR}/_ext/1954962658/TFTPc.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/TFTPc.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/TFTPc.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/TFTPc.o.temp ../../../Microchip/TCPIP\ Stack/TFTPc.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/TFTPc.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/TFTPc.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/TFTPc.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/TFTPc.o.temp >> ${OBJECTDIR}/_ext/1954962658/TFTPc.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/MPFS2.o: ../../../Microchip/TCPIP\ Stack/MPFS2.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/MPFS2.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/MPFS2.o   ../../../Microchip/TCPIP\ Stack/MPFS2.c  > ${OBJECTDIR}/_ext/1954962658/MPFS2.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/MPFS2.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/MPFS2.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/MPFS2.o.temp ../../../Microchip/TCPIP\ Stack/MPFS2.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/MPFS2.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/MPFS2.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/MPFS2.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/MPFS2.o.temp >> ${OBJECTDIR}/_ext/1954962658/MPFS2.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o: ../BerkeleyTCPServerDemo.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o   ../BerkeleyTCPServerDemo.c  > ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.temp ../BerkeleyTCPServerDemo.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1472 > ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d
else
	cat ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.temp >> ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/Reboot.o: ../../../Microchip/TCPIP\ Stack/Reboot.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/Reboot.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/Reboot.o   ../../../Microchip/TCPIP\ Stack/Reboot.c  > ${OBJECTDIR}/_ext/1954962658/Reboot.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/Reboot.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/Reboot.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/Reboot.o.temp ../../../Microchip/TCPIP\ Stack/Reboot.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/Reboot.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/Reboot.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/Reboot.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/Reboot.o.temp >> ${OBJECTDIR}/_ext/1954962658/Reboot.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1472/SMTPDemo.o: ../SMTPDemo.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1472/SMTPDemo.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/SMTPDemo.o   ../SMTPDemo.c  > ${OBJECTDIR}/_ext/1472/SMTPDemo.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1472/SMTPDemo.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1472/SMTPDemo.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1472/SMTPDemo.o.temp ../SMTPDemo.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1472 > ${OBJECTDIR}/_ext/1472/SMTPDemo.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1472/SMTPDemo.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1472/SMTPDemo.o.d
else
	cat ${OBJECTDIR}/_ext/1472/SMTPDemo.o.temp >> ${OBJECTDIR}/_ext/1472/SMTPDemo.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/DNS.o: ../../../Microchip/TCPIP\ Stack/DNS.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/DNS.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/DNS.o   ../../../Microchip/TCPIP\ Stack/DNS.c  > ${OBJECTDIR}/_ext/1954962658/DNS.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/DNS.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/DNS.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/DNS.o.temp ../../../Microchip/TCPIP\ Stack/DNS.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/DNS.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/DNS.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/DNS.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/DNS.o.temp >> ${OBJECTDIR}/_ext/1954962658/DNS.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1472/UARTConfig.o: ../UARTConfig.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/UARTConfig.o   ../UARTConfig.c  > ${OBJECTDIR}/_ext/1472/UARTConfig.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1472/UARTConfig.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1472/UARTConfig.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1472/UARTConfig.o.temp ../UARTConfig.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1472 > ${OBJECTDIR}/_ext/1472/UARTConfig.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1472/UARTConfig.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1472/UARTConfig.o.d
else
	cat ${OBJECTDIR}/_ext/1472/UARTConfig.o.temp >> ${OBJECTDIR}/_ext/1472/UARTConfig.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1472/CustomHTTPApp.o: ../CustomHTTPApp.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o   ../CustomHTTPApp.c  > ${OBJECTDIR}/_ext/1472/CustomHTTPApp.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1472/CustomHTTPApp.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1472/CustomHTTPApp.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.temp ../CustomHTTPApp.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1472 > ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d
else
	cat ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.temp >> ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/ICMP.o: ../../../Microchip/TCPIP\ Stack/ICMP.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/ICMP.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/ICMP.o   ../../../Microchip/TCPIP\ Stack/ICMP.c  > ${OBJECTDIR}/_ext/1954962658/ICMP.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/ICMP.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/ICMP.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/ICMP.o.temp ../../../Microchip/TCPIP\ Stack/ICMP.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/ICMP.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/ICMP.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/ICMP.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/ICMP.o.temp >> ${OBJECTDIR}/_ext/1954962658/ICMP.o.d
endif
	${RM} __temp_cpp_output__
else
${OBJECTDIR}/_ext/1954962658/SPIFlash.o: ../../../Microchip/TCPIP\ Stack/SPIFlash.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/SPIFlash.o   ../../../Microchip/TCPIP\ Stack/SPIFlash.c  > ${OBJECTDIR}/_ext/1954962658/SPIFlash.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/SPIFlash.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/SPIFlash.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.temp ../../../Microchip/TCPIP\ Stack/SPIFlash.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
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
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/FTP.o   ../../../Microchip/TCPIP\ Stack/FTP.c  > ${OBJECTDIR}/_ext/1954962658/FTP.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/FTP.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/FTP.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/FTP.o.temp ../../../Microchip/TCPIP\ Stack/FTP.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/FTP.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/FTP.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/FTP.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/FTP.o.temp >> ${OBJECTDIR}/_ext/1954962658/FTP.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/UDP.o: ../../../Microchip/TCPIP\ Stack/UDP.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/UDP.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/UDP.o   ../../../Microchip/TCPIP\ Stack/UDP.c  > ${OBJECTDIR}/_ext/1954962658/UDP.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/UDP.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/UDP.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/UDP.o.temp ../../../Microchip/TCPIP\ Stack/UDP.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/UDP.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/UDP.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/UDP.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/UDP.o.temp >> ${OBJECTDIR}/_ext/1954962658/UDP.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o: ../../../Microchip/TCPIP\ Stack/BerkeleyAPI.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o   ../../../Microchip/TCPIP\ Stack/BerkeleyAPI.c  > ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.temp ../../../Microchip/TCPIP\ Stack/BerkeleyAPI.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.temp >> ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o: ../../../Microchip/TCPIP\ Stack/UART2TCPBridge.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o   ../../../Microchip/TCPIP\ Stack/UART2TCPBridge.c  > ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.temp ../../../Microchip/TCPIP\ Stack/UART2TCPBridge.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
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
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/StackTsk.o   ../../../Microchip/TCPIP\ Stack/StackTsk.c  > ${OBJECTDIR}/_ext/1954962658/StackTsk.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/StackTsk.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/StackTsk.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/StackTsk.o.temp ../../../Microchip/TCPIP\ Stack/StackTsk.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/StackTsk.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/StackTsk.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/StackTsk.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/StackTsk.o.temp >> ${OBJECTDIR}/_ext/1954962658/StackTsk.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1472/GenericTCPServer.o: ../GenericTCPServer.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/GenericTCPServer.o   ../GenericTCPServer.c  > ${OBJECTDIR}/_ext/1472/GenericTCPServer.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1472/GenericTCPServer.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1472/GenericTCPServer.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.temp ../GenericTCPServer.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1472 > ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d
else
	cat ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.temp >> ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o: ../BerkeleyTCPClientDemo.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o   ../BerkeleyTCPClientDemo.c  > ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.temp ../BerkeleyTCPClientDemo.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1472 > ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d
else
	cat ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.temp >> ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/Delay.o: ../../../Microchip/TCPIP\ Stack/Delay.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/Delay.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/Delay.o   ../../../Microchip/TCPIP\ Stack/Delay.c  > ${OBJECTDIR}/_ext/1954962658/Delay.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/Delay.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/Delay.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/Delay.o.temp ../../../Microchip/TCPIP\ Stack/Delay.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
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
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/HTTP2.o   ../../../Microchip/TCPIP\ Stack/HTTP2.c  > ${OBJECTDIR}/_ext/1954962658/HTTP2.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/HTTP2.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/HTTP2.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/HTTP2.o.temp ../../../Microchip/TCPIP\ Stack/HTTP2.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/HTTP2.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/HTTP2.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/HTTP2.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/HTTP2.o.temp >> ${OBJECTDIR}/_ext/1954962658/HTTP2.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/ETH97J60.o: ../../../Microchip/TCPIP\ Stack/ETH97J60.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/ETH97J60.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/ETH97J60.o   ../../../Microchip/TCPIP\ Stack/ETH97J60.c  > ${OBJECTDIR}/_ext/1954962658/ETH97J60.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/ETH97J60.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/ETH97J60.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/ETH97J60.o.temp ../../../Microchip/TCPIP\ Stack/ETH97J60.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/ETH97J60.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/ETH97J60.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/ETH97J60.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/ETH97J60.o.temp >> ${OBJECTDIR}/_ext/1954962658/ETH97J60.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/ENCX24J600.o: ../../../Microchip/TCPIP\ Stack/ENCX24J600.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o   ../../../Microchip/TCPIP\ Stack/ENCX24J600.c  > ${OBJECTDIR}/_ext/1954962658/ENCX24J600.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/ENCX24J600.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/ENCX24J600.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.temp ../../../Microchip/TCPIP\ Stack/ENCX24J600.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
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
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/SPIRAM.o   ../../../Microchip/TCPIP\ Stack/SPIRAM.c  > ${OBJECTDIR}/_ext/1954962658/SPIRAM.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/SPIRAM.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/SPIRAM.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.temp ../../../Microchip/TCPIP\ Stack/SPIRAM.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.temp >> ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/LCDBlocking.o: ../../../Microchip/TCPIP\ Stack/LCDBlocking.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o   ../../../Microchip/TCPIP\ Stack/LCDBlocking.c  > ${OBJECTDIR}/_ext/1954962658/LCDBlocking.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/LCDBlocking.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/LCDBlocking.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.temp ../../../Microchip/TCPIP\ Stack/LCDBlocking.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
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
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/AutoIP.o   ../../../Microchip/TCPIP\ Stack/AutoIP.c  > ${OBJECTDIR}/_ext/1954962658/AutoIP.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/AutoIP.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/AutoIP.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/AutoIP.o.temp ../../../Microchip/TCPIP\ Stack/AutoIP.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
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
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o   ../../../Microchip/TCPIP\ Stack/TCPPerformanceTest.c  > ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.temp ../../../Microchip/TCPIP\ Stack/TCPPerformanceTest.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
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
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/NBNS.o   ../../../Microchip/TCPIP\ Stack/NBNS.c  > ${OBJECTDIR}/_ext/1954962658/NBNS.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/NBNS.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/NBNS.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/NBNS.o.temp ../../../Microchip/TCPIP\ Stack/NBNS.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/NBNS.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/NBNS.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/NBNS.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/NBNS.o.temp >> ${OBJECTDIR}/_ext/1954962658/NBNS.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1472/MPFSImg2.o: ../MPFSImg2.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1472/MPFSImg2.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/MPFSImg2.o   ../MPFSImg2.c  > ${OBJECTDIR}/_ext/1472/MPFSImg2.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1472/MPFSImg2.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1472/MPFSImg2.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1472/MPFSImg2.o.temp ../MPFSImg2.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1472 > ${OBJECTDIR}/_ext/1472/MPFSImg2.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1472/MPFSImg2.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1472/MPFSImg2.o.d
else
	cat ${OBJECTDIR}/_ext/1472/MPFSImg2.o.temp >> ${OBJECTDIR}/_ext/1472/MPFSImg2.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/Hashes.o: ../../../Microchip/TCPIP\ Stack/Hashes.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/Hashes.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/Hashes.o   ../../../Microchip/TCPIP\ Stack/Hashes.c  > ${OBJECTDIR}/_ext/1954962658/Hashes.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/Hashes.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/Hashes.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/Hashes.o.temp ../../../Microchip/TCPIP\ Stack/Hashes.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
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
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/Telnet.o   ../../../Microchip/TCPIP\ Stack/Telnet.c  > ${OBJECTDIR}/_ext/1954962658/Telnet.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/Telnet.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/Telnet.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/Telnet.o.temp ../../../Microchip/TCPIP\ Stack/Telnet.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
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
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o   ../../../Microchip/TCPIP\ Stack/SPIEEPROM.c  > ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.temp ../../../Microchip/TCPIP\ Stack/SPIEEPROM.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.temp >> ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/DHCPs.o: ../../../Microchip/TCPIP\ Stack/DHCPs.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/DHCPs.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/DHCPs.o   ../../../Microchip/TCPIP\ Stack/DHCPs.c  > ${OBJECTDIR}/_ext/1954962658/DHCPs.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/DHCPs.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/DHCPs.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/DHCPs.o.temp ../../../Microchip/TCPIP\ Stack/DHCPs.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
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
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o   ../../../Microchip/TCPIP\ Stack/ZeroconfHelper.c  > ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.temp ../../../Microchip/TCPIP\ Stack/ZeroconfHelper.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.temp >> ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1472/CustomSNMPApp.o: ../CustomSNMPApp.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o   ../CustomSNMPApp.c  > ${OBJECTDIR}/_ext/1472/CustomSNMPApp.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1472/CustomSNMPApp.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1472/CustomSNMPApp.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.temp ../CustomSNMPApp.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1472 > ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d
else
	cat ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.temp >> ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/DNSs.o: ../../../Microchip/TCPIP\ Stack/DNSs.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/DNSs.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/DNSs.o   ../../../Microchip/TCPIP\ Stack/DNSs.c  > ${OBJECTDIR}/_ext/1954962658/DNSs.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/DNSs.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/DNSs.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/DNSs.o.temp ../../../Microchip/TCPIP\ Stack/DNSs.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/DNSs.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/DNSs.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/DNSs.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/DNSs.o.temp >> ${OBJECTDIR}/_ext/1954962658/DNSs.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/TCP.o: ../../../Microchip/TCPIP\ Stack/TCP.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/TCP.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/TCP.o   ../../../Microchip/TCPIP\ Stack/TCP.c  > ${OBJECTDIR}/_ext/1954962658/TCP.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/TCP.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/TCP.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/TCP.o.temp ../../../Microchip/TCPIP\ Stack/TCP.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/TCP.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/TCP.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/TCP.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/TCP.o.temp >> ${OBJECTDIR}/_ext/1954962658/TCP.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/Helpers.o: ../../../Microchip/TCPIP\ Stack/Helpers.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/Helpers.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/Helpers.o   ../../../Microchip/TCPIP\ Stack/Helpers.c  > ${OBJECTDIR}/_ext/1954962658/Helpers.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/Helpers.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/Helpers.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/Helpers.o.temp ../../../Microchip/TCPIP\ Stack/Helpers.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/Helpers.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/Helpers.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/Helpers.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/Helpers.o.temp >> ${OBJECTDIR}/_ext/1954962658/Helpers.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/IP.o: ../../../Microchip/TCPIP\ Stack/IP.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/IP.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/IP.o   ../../../Microchip/TCPIP\ Stack/IP.c  > ${OBJECTDIR}/_ext/1954962658/IP.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/IP.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/IP.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/IP.o.temp ../../../Microchip/TCPIP\ Stack/IP.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/IP.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/IP.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/IP.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/IP.o.temp >> ${OBJECTDIR}/_ext/1954962658/IP.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/DynDNS.o: ../../../Microchip/TCPIP\ Stack/DynDNS.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/DynDNS.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/DynDNS.o   ../../../Microchip/TCPIP\ Stack/DynDNS.c  > ${OBJECTDIR}/_ext/1954962658/DynDNS.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/DynDNS.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/DynDNS.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/DynDNS.o.temp ../../../Microchip/TCPIP\ Stack/DynDNS.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
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
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o   ../../../Microchip/TCPIP\ Stack/ZeroconfLinkLocal.c  > ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.temp ../../../Microchip/TCPIP\ Stack/ZeroconfLinkLocal.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
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
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/DHCP.o   ../../../Microchip/TCPIP\ Stack/DHCP.c  > ${OBJECTDIR}/_ext/1954962658/DHCP.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/DHCP.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/DHCP.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/DHCP.o.temp ../../../Microchip/TCPIP\ Stack/DHCP.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/DHCP.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/DHCP.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/DHCP.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/DHCP.o.temp >> ${OBJECTDIR}/_ext/1954962658/DHCP.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/UART.o: ../../../Microchip/TCPIP\ Stack/UART.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/UART.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/UART.o   ../../../Microchip/TCPIP\ Stack/UART.c  > ${OBJECTDIR}/_ext/1954962658/UART.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/UART.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/UART.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/UART.o.temp ../../../Microchip/TCPIP\ Stack/UART.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/UART.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/UART.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/UART.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/UART.o.temp >> ${OBJECTDIR}/_ext/1954962658/UART.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/Tick.o: ../../../Microchip/TCPIP\ Stack/Tick.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/Tick.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/Tick.o   ../../../Microchip/TCPIP\ Stack/Tick.c  > ${OBJECTDIR}/_ext/1954962658/Tick.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/Tick.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/Tick.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/Tick.o.temp ../../../Microchip/TCPIP\ Stack/Tick.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/Tick.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/Tick.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/Tick.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/Tick.o.temp >> ${OBJECTDIR}/_ext/1954962658/Tick.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o: ../BerkeleyUDPClientDemo.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o   ../BerkeleyUDPClientDemo.c  > ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.temp ../BerkeleyUDPClientDemo.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1472 > ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d
else
	cat ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.temp >> ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o: ../../../Microchip/TCPIP\ Stack/UDPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o   ../../../Microchip/TCPIP\ Stack/UDPPerformanceTest.c  > ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.temp ../../../Microchip/TCPIP\ Stack/UDPPerformanceTest.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.temp >> ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/ARP.o: ../../../Microchip/TCPIP\ Stack/ARP.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/ARP.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/ARP.o   ../../../Microchip/TCPIP\ Stack/ARP.c  > ${OBJECTDIR}/_ext/1954962658/ARP.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/ARP.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/ARP.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/ARP.o.temp ../../../Microchip/TCPIP\ Stack/ARP.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/ARP.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/ARP.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/ARP.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/ARP.o.temp >> ${OBJECTDIR}/_ext/1954962658/ARP.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1472/PingDemo.o: ../PingDemo.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1472/PingDemo.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/PingDemo.o   ../PingDemo.c  > ${OBJECTDIR}/_ext/1472/PingDemo.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1472/PingDemo.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1472/PingDemo.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1472/PingDemo.o.temp ../PingDemo.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1472 > ${OBJECTDIR}/_ext/1472/PingDemo.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1472/PingDemo.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1472/PingDemo.o.d
else
	cat ${OBJECTDIR}/_ext/1472/PingDemo.o.temp >> ${OBJECTDIR}/_ext/1472/PingDemo.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o: ../../../Microchip/TCPIP\ Stack/ZeroconfMulticastDNS.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o   ../../../Microchip/TCPIP\ Stack/ZeroconfMulticastDNS.c  > ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.temp ../../../Microchip/TCPIP\ Stack/ZeroconfMulticastDNS.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
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
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/SNTP.o   ../../../Microchip/TCPIP\ Stack/SNTP.c  > ${OBJECTDIR}/_ext/1954962658/SNTP.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/SNTP.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/SNTP.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/SNTP.o.temp ../../../Microchip/TCPIP\ Stack/SNTP.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/SNTP.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/SNTP.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/SNTP.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/SNTP.o.temp >> ${OBJECTDIR}/_ext/1954962658/SNTP.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/ENC28J60.o: ../../../Microchip/TCPIP\ Stack/ENC28J60.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/ENC28J60.o   ../../../Microchip/TCPIP\ Stack/ENC28J60.c  > ${OBJECTDIR}/_ext/1954962658/ENC28J60.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/ENC28J60.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/ENC28J60.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.temp ../../../Microchip/TCPIP\ Stack/ENC28J60.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.temp >> ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1472/GenericTCPClient.o: ../GenericTCPClient.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/GenericTCPClient.o   ../GenericTCPClient.c  > ${OBJECTDIR}/_ext/1472/GenericTCPClient.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1472/GenericTCPClient.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1472/GenericTCPClient.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.temp ../GenericTCPClient.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1472 > ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d
else
	cat ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.temp >> ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1472/MainDemo.o: ../MainDemo.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/MainDemo.o   ../MainDemo.c  > ${OBJECTDIR}/_ext/1472/MainDemo.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1472/MainDemo.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1472/MainDemo.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1472/MainDemo.o.temp ../MainDemo.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1472 > ${OBJECTDIR}/_ext/1472/MainDemo.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1472/MainDemo.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1472/MainDemo.o.d
else
	cat ${OBJECTDIR}/_ext/1472/MainDemo.o.temp >> ${OBJECTDIR}/_ext/1472/MainDemo.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/Announce.o: ../../../Microchip/TCPIP\ Stack/Announce.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/Announce.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/Announce.o   ../../../Microchip/TCPIP\ Stack/Announce.c  > ${OBJECTDIR}/_ext/1954962658/Announce.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/Announce.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/Announce.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/Announce.o.temp ../../../Microchip/TCPIP\ Stack/Announce.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
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
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/SNMP.o   ../../../Microchip/TCPIP\ Stack/SNMP.c  > ${OBJECTDIR}/_ext/1954962658/SNMP.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/SNMP.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/SNMP.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/SNMP.o.temp ../../../Microchip/TCPIP\ Stack/SNMP.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/SNMP.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/SNMP.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/SNMP.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/SNMP.o.temp >> ${OBJECTDIR}/_ext/1954962658/SNMP.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/SMTP.o: ../../../Microchip/TCPIP\ Stack/SMTP.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/SMTP.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/SMTP.o   ../../../Microchip/TCPIP\ Stack/SMTP.c  > ${OBJECTDIR}/_ext/1954962658/SMTP.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/SMTP.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/SMTP.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/SMTP.o.temp ../../../Microchip/TCPIP\ Stack/SMTP.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/SMTP.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/SMTP.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/SMTP.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/SMTP.o.temp >> ${OBJECTDIR}/_ext/1954962658/SMTP.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/TFTPc.o: ../../../Microchip/TCPIP\ Stack/TFTPc.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/TFTPc.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/TFTPc.o   ../../../Microchip/TCPIP\ Stack/TFTPc.c  > ${OBJECTDIR}/_ext/1954962658/TFTPc.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/TFTPc.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/TFTPc.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/TFTPc.o.temp ../../../Microchip/TCPIP\ Stack/TFTPc.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/TFTPc.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/TFTPc.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/TFTPc.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/TFTPc.o.temp >> ${OBJECTDIR}/_ext/1954962658/TFTPc.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/MPFS2.o: ../../../Microchip/TCPIP\ Stack/MPFS2.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/MPFS2.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/MPFS2.o   ../../../Microchip/TCPIP\ Stack/MPFS2.c  > ${OBJECTDIR}/_ext/1954962658/MPFS2.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/MPFS2.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/MPFS2.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/MPFS2.o.temp ../../../Microchip/TCPIP\ Stack/MPFS2.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/MPFS2.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/MPFS2.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/MPFS2.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/MPFS2.o.temp >> ${OBJECTDIR}/_ext/1954962658/MPFS2.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o: ../BerkeleyTCPServerDemo.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o   ../BerkeleyTCPServerDemo.c  > ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.temp ../BerkeleyTCPServerDemo.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1472 > ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d
else
	cat ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.temp >> ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/Reboot.o: ../../../Microchip/TCPIP\ Stack/Reboot.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/Reboot.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/Reboot.o   ../../../Microchip/TCPIP\ Stack/Reboot.c  > ${OBJECTDIR}/_ext/1954962658/Reboot.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/Reboot.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/Reboot.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/Reboot.o.temp ../../../Microchip/TCPIP\ Stack/Reboot.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/Reboot.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/Reboot.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/Reboot.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/Reboot.o.temp >> ${OBJECTDIR}/_ext/1954962658/Reboot.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1472/SMTPDemo.o: ../SMTPDemo.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1472/SMTPDemo.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/SMTPDemo.o   ../SMTPDemo.c  > ${OBJECTDIR}/_ext/1472/SMTPDemo.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1472/SMTPDemo.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1472/SMTPDemo.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1472/SMTPDemo.o.temp ../SMTPDemo.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1472 > ${OBJECTDIR}/_ext/1472/SMTPDemo.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1472/SMTPDemo.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1472/SMTPDemo.o.d
else
	cat ${OBJECTDIR}/_ext/1472/SMTPDemo.o.temp >> ${OBJECTDIR}/_ext/1472/SMTPDemo.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/DNS.o: ../../../Microchip/TCPIP\ Stack/DNS.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/DNS.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/DNS.o   ../../../Microchip/TCPIP\ Stack/DNS.c  > ${OBJECTDIR}/_ext/1954962658/DNS.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/DNS.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/DNS.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/DNS.o.temp ../../../Microchip/TCPIP\ Stack/DNS.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/DNS.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/DNS.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/DNS.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/DNS.o.temp >> ${OBJECTDIR}/_ext/1954962658/DNS.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1472/UARTConfig.o: ../UARTConfig.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/UARTConfig.o   ../UARTConfig.c  > ${OBJECTDIR}/_ext/1472/UARTConfig.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1472/UARTConfig.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1472/UARTConfig.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1472/UARTConfig.o.temp ../UARTConfig.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1472 > ${OBJECTDIR}/_ext/1472/UARTConfig.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1472/UARTConfig.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1472/UARTConfig.o.d
else
	cat ${OBJECTDIR}/_ext/1472/UARTConfig.o.temp >> ${OBJECTDIR}/_ext/1472/UARTConfig.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1472/CustomHTTPApp.o: ../CustomHTTPApp.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o   ../CustomHTTPApp.c  > ${OBJECTDIR}/_ext/1472/CustomHTTPApp.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1472/CustomHTTPApp.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1472/CustomHTTPApp.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.temp ../CustomHTTPApp.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1472 > ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d
else
	cat ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.temp >> ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1954962658/ICMP.o: ../../../Microchip/TCPIP\ Stack/ICMP.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1954962658/ICMP.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PICDN2_ENC624 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -ml -ou- -ot- -ob- -op- -or- -od- -opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/ICMP.o   ../../../Microchip/TCPIP\ Stack/ICMP.c  > ${OBJECTDIR}/_ext/1954962658/ICMP.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1954962658/ICMP.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1954962658/ICMP.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1954962658/ICMP.o.temp ../../../Microchip/TCPIP\ Stack/ICMP.c __temp_cpp_output__ -D CFG_INCLUDE_PIC32_ETH_SK_ETH795 -D __32MX795F512L__ -D __LANGUAGE_C 1 -D __LANGUAGE_C__ 1 -D __MIPSEL__ 1 -D _MCHP_SZPTR 32 -D __mips_fpr 32 -D MIPSEL 1 -D _MIPSEL 1 -D _MIPS_ARCH_PIC32MX 1 -D __R3000 1 -D __PIC32MX__ 1 -D __mips_isa_rev 2 -D __PIC32MX 1 -D _mips 1 -D __MIPSEL 1 -D mips 1 -D PIC32MX 1 -D __mips__ 1 -D LANGUAGE_C 1 -D _LANGUAGE_C 1 -D __mips 32 -D __PIC32_FEATURE_SET__ -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\MPLAB.X\\../../Microchip/Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\Microchip\\Include\\TCPIP\ Stack -I C:\\Rep\\Release\ Candidates\\App\ Libs\ v2011-06\\Microchip\ Solutions\\TCPIP\\Demo\ App\\Configs -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/include -I C:\\Program\ Files\\Microchip\\mplabc32\\v1.12\\bin/../lib/gcc/pic32mx/3.4.4/../../../../pic32mx/include 
	printf "%s/" ${OBJECTDIR}/_ext/1954962658 > ${OBJECTDIR}/_ext/1954962658/ICMP.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1954962658/ICMP.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1954962658/ICMP.o.d
else
	cat ${OBJECTDIR}/_ext/1954962658/ICMP.o.temp >> ${OBJECTDIR}/_ext/1954962658/ICMP.o.d
endif
	${RM} __temp_cpp_output__
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.cof: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE)   -p$(MP_PROCESSOR_OPTION_LD)  -w -x -l".."  -z__MPLAB_BUILD=1  -u_CRUNTIME -z__MPLAB_DEBUG=1 $(MP_LINKER_DEBUG_OPTION) -l ${MP_CC_DIR}\\..\\lib  -odist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.cof ${OBJECTFILES}      
else
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.cof: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE)   -p$(MP_PROCESSOR_OPTION_LD)  -w  -l".."  -z__MPLAB_BUILD=1  -u_CRUNTIME -l ${MP_CC_DIR}\\..\\lib  -odist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.cof ${OBJECTFILES}      
endif


# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf:
	${RM} -r build/C18-PICDN2_ENC624
	${RM} -r dist/C18-PICDN2_ENC624

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
