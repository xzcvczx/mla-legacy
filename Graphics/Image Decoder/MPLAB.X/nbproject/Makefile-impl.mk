#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a pre- and a post- target defined where you can add customization code.
#
# This makefile implements macros and targets common to all configurations.
#
# NOCDDL


# Building and Cleaning subprojects are done by default, but can be controlled with the SUB
# macro. If SUB=no, subprojects will not be built or cleaned. The following macro
# statements set BUILD_SUB-CONF and CLEAN_SUB-CONF to .build-reqprojects-conf
# and .clean-reqprojects-conf unless SUB has the value 'no'
SUB_no=NO
SUBPROJECTS=${SUB_${SUB}}
BUILD_SUBPROJECTS_=.build-subprojects
BUILD_SUBPROJECTS_NO=
BUILD_SUBPROJECTS=${BUILD_SUBPROJECTS_${SUBPROJECTS}}
CLEAN_SUBPROJECTS_=.clean-subprojects
CLEAN_SUBPROJECTS_NO=
CLEAN_SUBPROJECTS=${CLEAN_SUBPROJECTS_${SUBPROJECTS}}


# Project Name
PROJECTNAME=MPLAB.X

# Active Configuration
DEFAULTCONF=PIC24_GA010_GFXv3_EX16_8PMP_QVGAv1_UART
CONF=${DEFAULTCONF}

# All Configurations
ALLCONFS=PIC24_GA010_GFXv3_EX16_8PMP_QVGAv1_UART PIC24_GA010_GFXv3_EX16_8PMP_WQVGAv1_UART PIC24_GA110_GFXv3_EX16_8PMP_QVGAv1_UART PIC24_GA110_GFXv3_EX16_8PMP_WQVGAv1_UART PIC24_GB210_GFXv3_EX16_8PMP_QVGAv1_UART PIC24_GB210_GFXv3_EX16_8PMP_WQVGAv1_UART PIC24_GB210_GFXv3_EX16_16PMP_QVGAv1_UART PIC24_GB210_GFXv3_EX16_16PMP_WQVGAv1_UART PIC24_DA210_DEV_16PMP_QVGAv1_USB PIC24_DA210_DEV_16PMP_WQVGAv1_USB PIC32_360_GFXv3_EX16_8PMP_QVGAv1_UART PIC32_360_GFXv3_EX16_8PMP_WQVGAv1_UART PIC32_360_GFXv3_EX16_16PMP_QVGAv1_UART PIC32_360_GFXv3_EX16_16PMP_WQVGAv1_UART PIC32_795_GFXv3_EX16_8PMP_QVGAv1_UART PIC32_795_GFXv3_EX16_8PMP_WQVGAv1_UART PIC32_795_GFXv3_EX16_16PMP_QVGAv1_UART PIC32_795_GFXv3_EX16_16PMP_WQVGAv1_UART PIC_SK_GFXv3_8PMP_QVGAv1_USB PIC_SK_GFXv3_8PMP_WQVGAv1_USB PIC_SK_GFXv3_16PMP_QVGAv1_USB PIC_SK_GFXv3_16PMP_WQVGAv1_USB PIC32_USB_SK_MEB_8PMP_USB PIC32_USB_SK_MEB_16PMP_USB PIC32_ETH_SK_MEB_8PMP_USB PIC32_ETH_SK_MEB_16PMP_USB PIC24_GP504_GFXv3_EX16_8PMP_QVGAv1_UART dsPIC33F_GP804_GFXv3_EX16_8PMP_WQVGAv1_UART PIC24_GP504_GFXv3_EX16_8PMP_QVGAv1_UART-2 dsPIC33F_GP804_GFXv3_EX16_8PMP_WQVGAv1_UART-2 


# build
.build-impl: .build-pre
	${MAKE} -f nbproject/Makefile-${CONF}.mk SUBPROJECTS=${SUBPROJECTS} .build-conf


# clean
.clean-impl: .clean-pre
	${MAKE} -f nbproject/Makefile-${CONF}.mk SUBPROJECTS=${SUBPROJECTS} .clean-conf

# dependency checking support
.depcheck-impl:
#	@echo "# This code depends on make tool being used" >.dep.inc
#	@if [ -n "${MAKE_VERSION}" ]; then \
#	    echo "DEPFILES=\$$(wildcard \$$(addsuffix .d, \$${OBJECTFILES}))" >>.dep.inc; \
#	    echo "ifneq (\$${DEPFILES},)" >>.dep.inc; \
#	    echo "include \$${DEPFILES}" >>.dep.inc; \
#	    echo "endif" >>.dep.inc; \
#	else \
#	    echo ".KEEP_STATE:" >>.dep.inc; \
#	    echo ".KEEP_STATE_FILE:.make.state.\$${CONF}" >>.dep.inc; \
#	fi
