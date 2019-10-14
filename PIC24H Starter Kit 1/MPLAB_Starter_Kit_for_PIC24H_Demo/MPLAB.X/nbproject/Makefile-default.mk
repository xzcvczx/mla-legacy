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
CND_CONF=default
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
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1360937237/G711.o ${OBJECTDIR}/_ext/1360937237/Utility.o ${OBJECTDIR}/_ext/1360937237/Accelerometer.o ${OBJECTDIR}/_ext/1360937237/AccGraph.o ${OBJECTDIR}/_ext/1360937237/ExtSensor.o ${OBJECTDIR}/_ext/1360937237/Games.o ${OBJECTDIR}/_ext/1360937237/Gentium8.o ${OBJECTDIR}/_ext/1360937237/Main.o ${OBJECTDIR}/_ext/1360937237/Orientation.o ${OBJECTDIR}/_ext/1360937237/Pictures.o ${OBJECTDIR}/_ext/1360937237/SK_PIC24H.o ${OBJECTDIR}/_ext/1360937237/Speaker.o ${OBJECTDIR}/_ext/1360937237/Timers.o ${OBJECTDIR}/_ext/851872866/G711_Welcome.o ${OBJECTDIR}/_ext/851872866/G711_Game.o ${OBJECTDIR}/_ext/851872866/G711_Landscape.o ${OBJECTDIR}/_ext/851872866/G711_Over.o ${OBJECTDIR}/_ext/851872866/G711_Plane.o ${OBJECTDIR}/_ext/851872866/G711_Portrait.o ${OBJECTDIR}/_ext/851872866/G711_Select.o ${OBJECTDIR}/_ext/851872866/G711_SnakeEat.o ${OBJECTDIR}/_ext/851872866/G711_SnakeMove.o ${OBJECTDIR}/_ext/851872866/G711_Start.o ${OBJECTDIR}/_ext/803622919/Template.o ${OBJECTDIR}/_ext/803622919/Button.o ${OBJECTDIR}/_ext/803622919/EditBox.o ${OBJECTDIR}/_ext/803622919/GOL.o ${OBJECTDIR}/_ext/803622919/Grid.o ${OBJECTDIR}/_ext/803622919/ListBox.o ${OBJECTDIR}/_ext/803622919/Picture.o ${OBJECTDIR}/_ext/803622919/Primitive.o ${OBJECTDIR}/_ext/803622919/RoundDial.o ${OBJECTDIR}/_ext/803622919/Slider.o ${OBJECTDIR}/_ext/803622919/StaticText.o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ${OBJECTDIR}/_ext/1919882987/SH1101A_SSD1303.o ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1360937237/G711.o.d ${OBJECTDIR}/_ext/1360937237/Utility.o.d ${OBJECTDIR}/_ext/1360937237/Accelerometer.o.d ${OBJECTDIR}/_ext/1360937237/AccGraph.o.d ${OBJECTDIR}/_ext/1360937237/ExtSensor.o.d ${OBJECTDIR}/_ext/1360937237/Games.o.d ${OBJECTDIR}/_ext/1360937237/Gentium8.o.d ${OBJECTDIR}/_ext/1360937237/Main.o.d ${OBJECTDIR}/_ext/1360937237/Orientation.o.d ${OBJECTDIR}/_ext/1360937237/Pictures.o.d ${OBJECTDIR}/_ext/1360937237/SK_PIC24H.o.d ${OBJECTDIR}/_ext/1360937237/Speaker.o.d ${OBJECTDIR}/_ext/1360937237/Timers.o.d ${OBJECTDIR}/_ext/851872866/G711_Welcome.o.d ${OBJECTDIR}/_ext/851872866/G711_Game.o.d ${OBJECTDIR}/_ext/851872866/G711_Landscape.o.d ${OBJECTDIR}/_ext/851872866/G711_Over.o.d ${OBJECTDIR}/_ext/851872866/G711_Plane.o.d ${OBJECTDIR}/_ext/851872866/G711_Portrait.o.d ${OBJECTDIR}/_ext/851872866/G711_Select.o.d ${OBJECTDIR}/_ext/851872866/G711_SnakeEat.o.d ${OBJECTDIR}/_ext/851872866/G711_SnakeMove.o.d ${OBJECTDIR}/_ext/851872866/G711_Start.o.d ${OBJECTDIR}/_ext/803622919/Template.o.d ${OBJECTDIR}/_ext/803622919/Button.o.d ${OBJECTDIR}/_ext/803622919/EditBox.o.d ${OBJECTDIR}/_ext/803622919/GOL.o.d ${OBJECTDIR}/_ext/803622919/Grid.o.d ${OBJECTDIR}/_ext/803622919/ListBox.o.d ${OBJECTDIR}/_ext/803622919/Picture.o.d ${OBJECTDIR}/_ext/803622919/Primitive.o.d ${OBJECTDIR}/_ext/803622919/RoundDial.o.d ${OBJECTDIR}/_ext/803622919/Slider.o.d ${OBJECTDIR}/_ext/803622919/StaticText.o.d ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d ${OBJECTDIR}/_ext/1919882987/SH1101A_SSD1303.o.d ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1360937237/G711.o ${OBJECTDIR}/_ext/1360937237/Utility.o ${OBJECTDIR}/_ext/1360937237/Accelerometer.o ${OBJECTDIR}/_ext/1360937237/AccGraph.o ${OBJECTDIR}/_ext/1360937237/ExtSensor.o ${OBJECTDIR}/_ext/1360937237/Games.o ${OBJECTDIR}/_ext/1360937237/Gentium8.o ${OBJECTDIR}/_ext/1360937237/Main.o ${OBJECTDIR}/_ext/1360937237/Orientation.o ${OBJECTDIR}/_ext/1360937237/Pictures.o ${OBJECTDIR}/_ext/1360937237/SK_PIC24H.o ${OBJECTDIR}/_ext/1360937237/Speaker.o ${OBJECTDIR}/_ext/1360937237/Timers.o ${OBJECTDIR}/_ext/851872866/G711_Welcome.o ${OBJECTDIR}/_ext/851872866/G711_Game.o ${OBJECTDIR}/_ext/851872866/G711_Landscape.o ${OBJECTDIR}/_ext/851872866/G711_Over.o ${OBJECTDIR}/_ext/851872866/G711_Plane.o ${OBJECTDIR}/_ext/851872866/G711_Portrait.o ${OBJECTDIR}/_ext/851872866/G711_Select.o ${OBJECTDIR}/_ext/851872866/G711_SnakeEat.o ${OBJECTDIR}/_ext/851872866/G711_SnakeMove.o ${OBJECTDIR}/_ext/851872866/G711_Start.o ${OBJECTDIR}/_ext/803622919/Template.o ${OBJECTDIR}/_ext/803622919/Button.o ${OBJECTDIR}/_ext/803622919/EditBox.o ${OBJECTDIR}/_ext/803622919/GOL.o ${OBJECTDIR}/_ext/803622919/Grid.o ${OBJECTDIR}/_ext/803622919/ListBox.o ${OBJECTDIR}/_ext/803622919/Picture.o ${OBJECTDIR}/_ext/803622919/Primitive.o ${OBJECTDIR}/_ext/803622919/RoundDial.o ${OBJECTDIR}/_ext/803622919/Slider.o ${OBJECTDIR}/_ext/803622919/StaticText.o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ${OBJECTDIR}/_ext/1919882987/SH1101A_SSD1303.o ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o


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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24HJ128GP504
MP_LINKER_FILE_OPTION=,--script="..\gld\p24HJ128GP504.gld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1360937237/G711.o: ../src/G711.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/G711.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/G711.o.ok ${OBJECTDIR}/_ext/1360937237/G711.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/G711.o.d" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE)  ../src/G711.s -o ${OBJECTDIR}/_ext/1360937237/G711.o -omf=coff -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 --defsym=__MPLAB_DEBUG=1 --defsym=__ICD2RAM=1 --defsym=__DEBUG=1 --defsym=__MPLAB_DEBUGGER_ICD3=1 -g  -MD "${OBJECTDIR}/_ext/1360937237/G711.o.d" -I".." -g $(MP_EXTRA_AS_POST)
	
${OBJECTDIR}/_ext/1360937237/Utility.o: ../src/Utility.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Utility.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Utility.o.ok ${OBJECTDIR}/_ext/1360937237/Utility.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/Utility.o.d" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE)  ../src/Utility.s -o ${OBJECTDIR}/_ext/1360937237/Utility.o -omf=coff -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 --defsym=__MPLAB_DEBUG=1 --defsym=__ICD2RAM=1 --defsym=__DEBUG=1 --defsym=__MPLAB_DEBUGGER_ICD3=1 -g  -MD "${OBJECTDIR}/_ext/1360937237/Utility.o.d" -I".." -g $(MP_EXTRA_AS_POST)
	
${OBJECTDIR}/_ext/851872866/G711_Welcome.o: ../src/Sounds/G711_Welcome.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/851872866 
	@${RM} ${OBJECTDIR}/_ext/851872866/G711_Welcome.o.d 
	@${RM} ${OBJECTDIR}/_ext/851872866/G711_Welcome.o.ok ${OBJECTDIR}/_ext/851872866/G711_Welcome.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/851872866/G711_Welcome.o.d" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE)  ../src/Sounds/G711_Welcome.s -o ${OBJECTDIR}/_ext/851872866/G711_Welcome.o -omf=coff -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 --defsym=__MPLAB_DEBUG=1 --defsym=__ICD2RAM=1 --defsym=__DEBUG=1 --defsym=__MPLAB_DEBUGGER_ICD3=1 -g  -MD "${OBJECTDIR}/_ext/851872866/G711_Welcome.o.d" -I".." -g $(MP_EXTRA_AS_POST)
	
${OBJECTDIR}/_ext/851872866/G711_Game.o: ../src/Sounds/G711_Game.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/851872866 
	@${RM} ${OBJECTDIR}/_ext/851872866/G711_Game.o.d 
	@${RM} ${OBJECTDIR}/_ext/851872866/G711_Game.o.ok ${OBJECTDIR}/_ext/851872866/G711_Game.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/851872866/G711_Game.o.d" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE)  ../src/Sounds/G711_Game.s -o ${OBJECTDIR}/_ext/851872866/G711_Game.o -omf=coff -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 --defsym=__MPLAB_DEBUG=1 --defsym=__ICD2RAM=1 --defsym=__DEBUG=1 --defsym=__MPLAB_DEBUGGER_ICD3=1 -g  -MD "${OBJECTDIR}/_ext/851872866/G711_Game.o.d" -I".." -g $(MP_EXTRA_AS_POST)
	
${OBJECTDIR}/_ext/851872866/G711_Landscape.o: ../src/Sounds/G711_Landscape.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/851872866 
	@${RM} ${OBJECTDIR}/_ext/851872866/G711_Landscape.o.d 
	@${RM} ${OBJECTDIR}/_ext/851872866/G711_Landscape.o.ok ${OBJECTDIR}/_ext/851872866/G711_Landscape.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/851872866/G711_Landscape.o.d" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE)  ../src/Sounds/G711_Landscape.s -o ${OBJECTDIR}/_ext/851872866/G711_Landscape.o -omf=coff -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 --defsym=__MPLAB_DEBUG=1 --defsym=__ICD2RAM=1 --defsym=__DEBUG=1 --defsym=__MPLAB_DEBUGGER_ICD3=1 -g  -MD "${OBJECTDIR}/_ext/851872866/G711_Landscape.o.d" -I".." -g $(MP_EXTRA_AS_POST)
	
${OBJECTDIR}/_ext/851872866/G711_Over.o: ../src/Sounds/G711_Over.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/851872866 
	@${RM} ${OBJECTDIR}/_ext/851872866/G711_Over.o.d 
	@${RM} ${OBJECTDIR}/_ext/851872866/G711_Over.o.ok ${OBJECTDIR}/_ext/851872866/G711_Over.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/851872866/G711_Over.o.d" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE)  ../src/Sounds/G711_Over.s -o ${OBJECTDIR}/_ext/851872866/G711_Over.o -omf=coff -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 --defsym=__MPLAB_DEBUG=1 --defsym=__ICD2RAM=1 --defsym=__DEBUG=1 --defsym=__MPLAB_DEBUGGER_ICD3=1 -g  -MD "${OBJECTDIR}/_ext/851872866/G711_Over.o.d" -I".." -g $(MP_EXTRA_AS_POST)
	
${OBJECTDIR}/_ext/851872866/G711_Plane.o: ../src/Sounds/G711_Plane.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/851872866 
	@${RM} ${OBJECTDIR}/_ext/851872866/G711_Plane.o.d 
	@${RM} ${OBJECTDIR}/_ext/851872866/G711_Plane.o.ok ${OBJECTDIR}/_ext/851872866/G711_Plane.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/851872866/G711_Plane.o.d" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE)  ../src/Sounds/G711_Plane.s -o ${OBJECTDIR}/_ext/851872866/G711_Plane.o -omf=coff -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 --defsym=__MPLAB_DEBUG=1 --defsym=__ICD2RAM=1 --defsym=__DEBUG=1 --defsym=__MPLAB_DEBUGGER_ICD3=1 -g  -MD "${OBJECTDIR}/_ext/851872866/G711_Plane.o.d" -I".." -g $(MP_EXTRA_AS_POST)
	
${OBJECTDIR}/_ext/851872866/G711_Portrait.o: ../src/Sounds/G711_Portrait.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/851872866 
	@${RM} ${OBJECTDIR}/_ext/851872866/G711_Portrait.o.d 
	@${RM} ${OBJECTDIR}/_ext/851872866/G711_Portrait.o.ok ${OBJECTDIR}/_ext/851872866/G711_Portrait.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/851872866/G711_Portrait.o.d" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE)  ../src/Sounds/G711_Portrait.s -o ${OBJECTDIR}/_ext/851872866/G711_Portrait.o -omf=coff -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 --defsym=__MPLAB_DEBUG=1 --defsym=__ICD2RAM=1 --defsym=__DEBUG=1 --defsym=__MPLAB_DEBUGGER_ICD3=1 -g  -MD "${OBJECTDIR}/_ext/851872866/G711_Portrait.o.d" -I".." -g $(MP_EXTRA_AS_POST)
	
${OBJECTDIR}/_ext/851872866/G711_Select.o: ../src/Sounds/G711_Select.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/851872866 
	@${RM} ${OBJECTDIR}/_ext/851872866/G711_Select.o.d 
	@${RM} ${OBJECTDIR}/_ext/851872866/G711_Select.o.ok ${OBJECTDIR}/_ext/851872866/G711_Select.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/851872866/G711_Select.o.d" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE)  ../src/Sounds/G711_Select.s -o ${OBJECTDIR}/_ext/851872866/G711_Select.o -omf=coff -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 --defsym=__MPLAB_DEBUG=1 --defsym=__ICD2RAM=1 --defsym=__DEBUG=1 --defsym=__MPLAB_DEBUGGER_ICD3=1 -g  -MD "${OBJECTDIR}/_ext/851872866/G711_Select.o.d" -I".." -g $(MP_EXTRA_AS_POST)
	
${OBJECTDIR}/_ext/851872866/G711_SnakeEat.o: ../src/Sounds/G711_SnakeEat.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/851872866 
	@${RM} ${OBJECTDIR}/_ext/851872866/G711_SnakeEat.o.d 
	@${RM} ${OBJECTDIR}/_ext/851872866/G711_SnakeEat.o.ok ${OBJECTDIR}/_ext/851872866/G711_SnakeEat.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/851872866/G711_SnakeEat.o.d" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE)  ../src/Sounds/G711_SnakeEat.s -o ${OBJECTDIR}/_ext/851872866/G711_SnakeEat.o -omf=coff -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 --defsym=__MPLAB_DEBUG=1 --defsym=__ICD2RAM=1 --defsym=__DEBUG=1 --defsym=__MPLAB_DEBUGGER_ICD3=1 -g  -MD "${OBJECTDIR}/_ext/851872866/G711_SnakeEat.o.d" -I".." -g $(MP_EXTRA_AS_POST)
	
${OBJECTDIR}/_ext/851872866/G711_SnakeMove.o: ../src/Sounds/G711_SnakeMove.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/851872866 
	@${RM} ${OBJECTDIR}/_ext/851872866/G711_SnakeMove.o.d 
	@${RM} ${OBJECTDIR}/_ext/851872866/G711_SnakeMove.o.ok ${OBJECTDIR}/_ext/851872866/G711_SnakeMove.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/851872866/G711_SnakeMove.o.d" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE)  ../src/Sounds/G711_SnakeMove.s -o ${OBJECTDIR}/_ext/851872866/G711_SnakeMove.o -omf=coff -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 --defsym=__MPLAB_DEBUG=1 --defsym=__ICD2RAM=1 --defsym=__DEBUG=1 --defsym=__MPLAB_DEBUGGER_ICD3=1 -g  -MD "${OBJECTDIR}/_ext/851872866/G711_SnakeMove.o.d" -I".." -g $(MP_EXTRA_AS_POST)
	
${OBJECTDIR}/_ext/851872866/G711_Start.o: ../src/Sounds/G711_Start.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/851872866 
	@${RM} ${OBJECTDIR}/_ext/851872866/G711_Start.o.d 
	@${RM} ${OBJECTDIR}/_ext/851872866/G711_Start.o.ok ${OBJECTDIR}/_ext/851872866/G711_Start.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/851872866/G711_Start.o.d" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE)  ../src/Sounds/G711_Start.s -o ${OBJECTDIR}/_ext/851872866/G711_Start.o -omf=coff -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 --defsym=__MPLAB_DEBUG=1 --defsym=__ICD2RAM=1 --defsym=__DEBUG=1 --defsym=__MPLAB_DEBUGGER_ICD3=1 -g  -MD "${OBJECTDIR}/_ext/851872866/G711_Start.o.d" -I".." -g $(MP_EXTRA_AS_POST)
	
else
${OBJECTDIR}/_ext/1360937237/G711.o: ../src/G711.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/G711.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/G711.o.ok ${OBJECTDIR}/_ext/1360937237/G711.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/G711.o.d" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE)  ../src/G711.s -o ${OBJECTDIR}/_ext/1360937237/G711.o -omf=coff -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 -g  -MD "${OBJECTDIR}/_ext/1360937237/G711.o.d" -I".." -g $(MP_EXTRA_AS_POST)
	
${OBJECTDIR}/_ext/1360937237/Utility.o: ../src/Utility.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Utility.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Utility.o.ok ${OBJECTDIR}/_ext/1360937237/Utility.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/Utility.o.d" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE)  ../src/Utility.s -o ${OBJECTDIR}/_ext/1360937237/Utility.o -omf=coff -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 -g  -MD "${OBJECTDIR}/_ext/1360937237/Utility.o.d" -I".." -g $(MP_EXTRA_AS_POST)
	
${OBJECTDIR}/_ext/851872866/G711_Welcome.o: ../src/Sounds/G711_Welcome.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/851872866 
	@${RM} ${OBJECTDIR}/_ext/851872866/G711_Welcome.o.d 
	@${RM} ${OBJECTDIR}/_ext/851872866/G711_Welcome.o.ok ${OBJECTDIR}/_ext/851872866/G711_Welcome.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/851872866/G711_Welcome.o.d" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE)  ../src/Sounds/G711_Welcome.s -o ${OBJECTDIR}/_ext/851872866/G711_Welcome.o -omf=coff -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 -g  -MD "${OBJECTDIR}/_ext/851872866/G711_Welcome.o.d" -I".." -g $(MP_EXTRA_AS_POST)
	
${OBJECTDIR}/_ext/851872866/G711_Game.o: ../src/Sounds/G711_Game.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/851872866 
	@${RM} ${OBJECTDIR}/_ext/851872866/G711_Game.o.d 
	@${RM} ${OBJECTDIR}/_ext/851872866/G711_Game.o.ok ${OBJECTDIR}/_ext/851872866/G711_Game.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/851872866/G711_Game.o.d" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE)  ../src/Sounds/G711_Game.s -o ${OBJECTDIR}/_ext/851872866/G711_Game.o -omf=coff -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 -g  -MD "${OBJECTDIR}/_ext/851872866/G711_Game.o.d" -I".." -g $(MP_EXTRA_AS_POST)
	
${OBJECTDIR}/_ext/851872866/G711_Landscape.o: ../src/Sounds/G711_Landscape.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/851872866 
	@${RM} ${OBJECTDIR}/_ext/851872866/G711_Landscape.o.d 
	@${RM} ${OBJECTDIR}/_ext/851872866/G711_Landscape.o.ok ${OBJECTDIR}/_ext/851872866/G711_Landscape.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/851872866/G711_Landscape.o.d" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE)  ../src/Sounds/G711_Landscape.s -o ${OBJECTDIR}/_ext/851872866/G711_Landscape.o -omf=coff -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 -g  -MD "${OBJECTDIR}/_ext/851872866/G711_Landscape.o.d" -I".." -g $(MP_EXTRA_AS_POST)
	
${OBJECTDIR}/_ext/851872866/G711_Over.o: ../src/Sounds/G711_Over.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/851872866 
	@${RM} ${OBJECTDIR}/_ext/851872866/G711_Over.o.d 
	@${RM} ${OBJECTDIR}/_ext/851872866/G711_Over.o.ok ${OBJECTDIR}/_ext/851872866/G711_Over.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/851872866/G711_Over.o.d" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE)  ../src/Sounds/G711_Over.s -o ${OBJECTDIR}/_ext/851872866/G711_Over.o -omf=coff -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 -g  -MD "${OBJECTDIR}/_ext/851872866/G711_Over.o.d" -I".." -g $(MP_EXTRA_AS_POST)
	
${OBJECTDIR}/_ext/851872866/G711_Plane.o: ../src/Sounds/G711_Plane.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/851872866 
	@${RM} ${OBJECTDIR}/_ext/851872866/G711_Plane.o.d 
	@${RM} ${OBJECTDIR}/_ext/851872866/G711_Plane.o.ok ${OBJECTDIR}/_ext/851872866/G711_Plane.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/851872866/G711_Plane.o.d" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE)  ../src/Sounds/G711_Plane.s -o ${OBJECTDIR}/_ext/851872866/G711_Plane.o -omf=coff -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 -g  -MD "${OBJECTDIR}/_ext/851872866/G711_Plane.o.d" -I".." -g $(MP_EXTRA_AS_POST)
	
${OBJECTDIR}/_ext/851872866/G711_Portrait.o: ../src/Sounds/G711_Portrait.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/851872866 
	@${RM} ${OBJECTDIR}/_ext/851872866/G711_Portrait.o.d 
	@${RM} ${OBJECTDIR}/_ext/851872866/G711_Portrait.o.ok ${OBJECTDIR}/_ext/851872866/G711_Portrait.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/851872866/G711_Portrait.o.d" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE)  ../src/Sounds/G711_Portrait.s -o ${OBJECTDIR}/_ext/851872866/G711_Portrait.o -omf=coff -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 -g  -MD "${OBJECTDIR}/_ext/851872866/G711_Portrait.o.d" -I".." -g $(MP_EXTRA_AS_POST)
	
${OBJECTDIR}/_ext/851872866/G711_Select.o: ../src/Sounds/G711_Select.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/851872866 
	@${RM} ${OBJECTDIR}/_ext/851872866/G711_Select.o.d 
	@${RM} ${OBJECTDIR}/_ext/851872866/G711_Select.o.ok ${OBJECTDIR}/_ext/851872866/G711_Select.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/851872866/G711_Select.o.d" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE)  ../src/Sounds/G711_Select.s -o ${OBJECTDIR}/_ext/851872866/G711_Select.o -omf=coff -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 -g  -MD "${OBJECTDIR}/_ext/851872866/G711_Select.o.d" -I".." -g $(MP_EXTRA_AS_POST)
	
${OBJECTDIR}/_ext/851872866/G711_SnakeEat.o: ../src/Sounds/G711_SnakeEat.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/851872866 
	@${RM} ${OBJECTDIR}/_ext/851872866/G711_SnakeEat.o.d 
	@${RM} ${OBJECTDIR}/_ext/851872866/G711_SnakeEat.o.ok ${OBJECTDIR}/_ext/851872866/G711_SnakeEat.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/851872866/G711_SnakeEat.o.d" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE)  ../src/Sounds/G711_SnakeEat.s -o ${OBJECTDIR}/_ext/851872866/G711_SnakeEat.o -omf=coff -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 -g  -MD "${OBJECTDIR}/_ext/851872866/G711_SnakeEat.o.d" -I".." -g $(MP_EXTRA_AS_POST)
	
${OBJECTDIR}/_ext/851872866/G711_SnakeMove.o: ../src/Sounds/G711_SnakeMove.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/851872866 
	@${RM} ${OBJECTDIR}/_ext/851872866/G711_SnakeMove.o.d 
	@${RM} ${OBJECTDIR}/_ext/851872866/G711_SnakeMove.o.ok ${OBJECTDIR}/_ext/851872866/G711_SnakeMove.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/851872866/G711_SnakeMove.o.d" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE)  ../src/Sounds/G711_SnakeMove.s -o ${OBJECTDIR}/_ext/851872866/G711_SnakeMove.o -omf=coff -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 -g  -MD "${OBJECTDIR}/_ext/851872866/G711_SnakeMove.o.d" -I".." -g $(MP_EXTRA_AS_POST)
	
${OBJECTDIR}/_ext/851872866/G711_Start.o: ../src/Sounds/G711_Start.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/851872866 
	@${RM} ${OBJECTDIR}/_ext/851872866/G711_Start.o.d 
	@${RM} ${OBJECTDIR}/_ext/851872866/G711_Start.o.ok ${OBJECTDIR}/_ext/851872866/G711_Start.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/851872866/G711_Start.o.d" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE)  ../src/Sounds/G711_Start.s -o ${OBJECTDIR}/_ext/851872866/G711_Start.o -omf=coff -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 -g  -MD "${OBJECTDIR}/_ext/851872866/G711_Start.o.d" -I".." -g $(MP_EXTRA_AS_POST)
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1360937237/Accelerometer.o: ../src/Accelerometer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Accelerometer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Accelerometer.o.ok ${OBJECTDIR}/_ext/1360937237/Accelerometer.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/Accelerometer.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../h" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/1360937237/Accelerometer.o.d" -o ${OBJECTDIR}/_ext/1360937237/Accelerometer.o ../src/Accelerometer.c  
	
${OBJECTDIR}/_ext/1360937237/AccGraph.o: ../src/AccGraph.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/AccGraph.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/AccGraph.o.ok ${OBJECTDIR}/_ext/1360937237/AccGraph.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/AccGraph.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../h" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/1360937237/AccGraph.o.d" -o ${OBJECTDIR}/_ext/1360937237/AccGraph.o ../src/AccGraph.c  
	
${OBJECTDIR}/_ext/1360937237/ExtSensor.o: ../src/ExtSensor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ExtSensor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ExtSensor.o.ok ${OBJECTDIR}/_ext/1360937237/ExtSensor.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/ExtSensor.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../h" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/1360937237/ExtSensor.o.d" -o ${OBJECTDIR}/_ext/1360937237/ExtSensor.o ../src/ExtSensor.c  
	
${OBJECTDIR}/_ext/1360937237/Games.o: ../src/Games.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Games.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Games.o.ok ${OBJECTDIR}/_ext/1360937237/Games.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/Games.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../h" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/1360937237/Games.o.d" -o ${OBJECTDIR}/_ext/1360937237/Games.o ../src/Games.c  
	
${OBJECTDIR}/_ext/1360937237/Gentium8.o: ../src/Gentium8.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Gentium8.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Gentium8.o.ok ${OBJECTDIR}/_ext/1360937237/Gentium8.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/Gentium8.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../h" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/1360937237/Gentium8.o.d" -o ${OBJECTDIR}/_ext/1360937237/Gentium8.o ../src/Gentium8.c  
	
${OBJECTDIR}/_ext/1360937237/Main.o: ../src/Main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Main.o.ok ${OBJECTDIR}/_ext/1360937237/Main.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/Main.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../h" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/1360937237/Main.o.d" -o ${OBJECTDIR}/_ext/1360937237/Main.o ../src/Main.c  
	
${OBJECTDIR}/_ext/1360937237/Orientation.o: ../src/Orientation.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Orientation.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Orientation.o.ok ${OBJECTDIR}/_ext/1360937237/Orientation.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/Orientation.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../h" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/1360937237/Orientation.o.d" -o ${OBJECTDIR}/_ext/1360937237/Orientation.o ../src/Orientation.c  
	
${OBJECTDIR}/_ext/1360937237/Pictures.o: ../src/Pictures.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Pictures.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Pictures.o.ok ${OBJECTDIR}/_ext/1360937237/Pictures.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/Pictures.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../h" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/1360937237/Pictures.o.d" -o ${OBJECTDIR}/_ext/1360937237/Pictures.o ../src/Pictures.c  
	
${OBJECTDIR}/_ext/1360937237/SK_PIC24H.o: ../src/SK_PIC24H.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/SK_PIC24H.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/SK_PIC24H.o.ok ${OBJECTDIR}/_ext/1360937237/SK_PIC24H.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/SK_PIC24H.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../h" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/1360937237/SK_PIC24H.o.d" -o ${OBJECTDIR}/_ext/1360937237/SK_PIC24H.o ../src/SK_PIC24H.c  
	
${OBJECTDIR}/_ext/1360937237/Speaker.o: ../src/Speaker.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Speaker.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Speaker.o.ok ${OBJECTDIR}/_ext/1360937237/Speaker.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/Speaker.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../h" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/1360937237/Speaker.o.d" -o ${OBJECTDIR}/_ext/1360937237/Speaker.o ../src/Speaker.c  
	
${OBJECTDIR}/_ext/1360937237/Timers.o: ../src/Timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Timers.o.ok ${OBJECTDIR}/_ext/1360937237/Timers.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/Timers.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../h" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/1360937237/Timers.o.d" -o ${OBJECTDIR}/_ext/1360937237/Timers.o ../src/Timers.c  
	
${OBJECTDIR}/_ext/803622919/Template.o: ../../../Microchip/Graphics/Template.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Template.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Template.o.ok ${OBJECTDIR}/_ext/803622919/Template.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Template.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../h" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/Template.o.d" -o ${OBJECTDIR}/_ext/803622919/Template.o ../../../Microchip/Graphics/Template.c  
	
${OBJECTDIR}/_ext/803622919/Button.o: ../../../Microchip/Graphics/Button.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Button.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Button.o.ok ${OBJECTDIR}/_ext/803622919/Button.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Button.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../h" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/Button.o.d" -o ${OBJECTDIR}/_ext/803622919/Button.o ../../../Microchip/Graphics/Button.c  
	
${OBJECTDIR}/_ext/803622919/EditBox.o: ../../../Microchip/Graphics/EditBox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/EditBox.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/EditBox.o.ok ${OBJECTDIR}/_ext/803622919/EditBox.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/EditBox.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../h" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/EditBox.o.d" -o ${OBJECTDIR}/_ext/803622919/EditBox.o ../../../Microchip/Graphics/EditBox.c  
	
${OBJECTDIR}/_ext/803622919/GOL.o: ../../../Microchip/Graphics/GOL.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOL.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOL.o.ok ${OBJECTDIR}/_ext/803622919/GOL.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/GOL.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../h" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/GOL.o.d" -o ${OBJECTDIR}/_ext/803622919/GOL.o ../../../Microchip/Graphics/GOL.c  
	
${OBJECTDIR}/_ext/803622919/Grid.o: ../../../Microchip/Graphics/Grid.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Grid.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Grid.o.ok ${OBJECTDIR}/_ext/803622919/Grid.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Grid.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../h" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/Grid.o.d" -o ${OBJECTDIR}/_ext/803622919/Grid.o ../../../Microchip/Graphics/Grid.c  
	
${OBJECTDIR}/_ext/803622919/ListBox.o: ../../../Microchip/Graphics/ListBox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/ListBox.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/ListBox.o.ok ${OBJECTDIR}/_ext/803622919/ListBox.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/ListBox.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../h" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/ListBox.o.d" -o ${OBJECTDIR}/_ext/803622919/ListBox.o ../../../Microchip/Graphics/ListBox.c  
	
${OBJECTDIR}/_ext/803622919/Picture.o: ../../../Microchip/Graphics/Picture.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Picture.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Picture.o.ok ${OBJECTDIR}/_ext/803622919/Picture.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Picture.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../h" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/Picture.o.d" -o ${OBJECTDIR}/_ext/803622919/Picture.o ../../../Microchip/Graphics/Picture.c  
	
${OBJECTDIR}/_ext/803622919/Primitive.o: ../../../Microchip/Graphics/Primitive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.ok ${OBJECTDIR}/_ext/803622919/Primitive.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Primitive.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../h" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/Primitive.o.d" -o ${OBJECTDIR}/_ext/803622919/Primitive.o ../../../Microchip/Graphics/Primitive.c  
	
${OBJECTDIR}/_ext/803622919/RoundDial.o: ../../../Microchip/Graphics/RoundDial.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/RoundDial.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/RoundDial.o.ok ${OBJECTDIR}/_ext/803622919/RoundDial.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/RoundDial.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../h" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/RoundDial.o.d" -o ${OBJECTDIR}/_ext/803622919/RoundDial.o ../../../Microchip/Graphics/RoundDial.c  
	
${OBJECTDIR}/_ext/803622919/Slider.o: ../../../Microchip/Graphics/Slider.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Slider.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Slider.o.ok ${OBJECTDIR}/_ext/803622919/Slider.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Slider.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../h" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/Slider.o.d" -o ${OBJECTDIR}/_ext/803622919/Slider.o ../../../Microchip/Graphics/Slider.c  
	
${OBJECTDIR}/_ext/803622919/StaticText.o: ../../../Microchip/Graphics/StaticText.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/StaticText.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/StaticText.o.ok ${OBJECTDIR}/_ext/803622919/StaticText.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/StaticText.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../h" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/StaticText.o.d" -o ${OBJECTDIR}/_ext/803622919/StaticText.o ../../../Microchip/Graphics/StaticText.c  
	
${OBJECTDIR}/_ext/1860783399/TimeDelay.o: ../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1860783399 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.ok ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../h" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d" -o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ../../../Microchip/Common/TimeDelay.c  
	
${OBJECTDIR}/_ext/1919882987/SH1101A_SSD1303.o: ../../../Microchip/Graphics/Drivers/SH1101A_SSD1303.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/SH1101A_SSD1303.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/SH1101A_SSD1303.o.ok ${OBJECTDIR}/_ext/1919882987/SH1101A_SSD1303.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/SH1101A_SSD1303.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../h" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/SH1101A_SSD1303.o.d" -o ${OBJECTDIR}/_ext/1919882987/SH1101A_SSD1303.o ../../../Microchip/Graphics/Drivers/SH1101A_SSD1303.c  
	
${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o: ../../../Microchip/Graphics/GOLSchemeDefault.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.ok ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../h" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d" -o ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o ../../../Microchip/Graphics/GOLSchemeDefault.c  
	
else
${OBJECTDIR}/_ext/1360937237/Accelerometer.o: ../src/Accelerometer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Accelerometer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Accelerometer.o.ok ${OBJECTDIR}/_ext/1360937237/Accelerometer.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/Accelerometer.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../h" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/1360937237/Accelerometer.o.d" -o ${OBJECTDIR}/_ext/1360937237/Accelerometer.o ../src/Accelerometer.c  
	
${OBJECTDIR}/_ext/1360937237/AccGraph.o: ../src/AccGraph.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/AccGraph.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/AccGraph.o.ok ${OBJECTDIR}/_ext/1360937237/AccGraph.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/AccGraph.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../h" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/1360937237/AccGraph.o.d" -o ${OBJECTDIR}/_ext/1360937237/AccGraph.o ../src/AccGraph.c  
	
${OBJECTDIR}/_ext/1360937237/ExtSensor.o: ../src/ExtSensor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ExtSensor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ExtSensor.o.ok ${OBJECTDIR}/_ext/1360937237/ExtSensor.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/ExtSensor.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../h" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/1360937237/ExtSensor.o.d" -o ${OBJECTDIR}/_ext/1360937237/ExtSensor.o ../src/ExtSensor.c  
	
${OBJECTDIR}/_ext/1360937237/Games.o: ../src/Games.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Games.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Games.o.ok ${OBJECTDIR}/_ext/1360937237/Games.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/Games.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../h" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/1360937237/Games.o.d" -o ${OBJECTDIR}/_ext/1360937237/Games.o ../src/Games.c  
	
${OBJECTDIR}/_ext/1360937237/Gentium8.o: ../src/Gentium8.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Gentium8.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Gentium8.o.ok ${OBJECTDIR}/_ext/1360937237/Gentium8.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/Gentium8.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../h" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/1360937237/Gentium8.o.d" -o ${OBJECTDIR}/_ext/1360937237/Gentium8.o ../src/Gentium8.c  
	
${OBJECTDIR}/_ext/1360937237/Main.o: ../src/Main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Main.o.ok ${OBJECTDIR}/_ext/1360937237/Main.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/Main.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../h" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/1360937237/Main.o.d" -o ${OBJECTDIR}/_ext/1360937237/Main.o ../src/Main.c  
	
${OBJECTDIR}/_ext/1360937237/Orientation.o: ../src/Orientation.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Orientation.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Orientation.o.ok ${OBJECTDIR}/_ext/1360937237/Orientation.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/Orientation.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../h" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/1360937237/Orientation.o.d" -o ${OBJECTDIR}/_ext/1360937237/Orientation.o ../src/Orientation.c  
	
${OBJECTDIR}/_ext/1360937237/Pictures.o: ../src/Pictures.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Pictures.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Pictures.o.ok ${OBJECTDIR}/_ext/1360937237/Pictures.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/Pictures.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../h" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/1360937237/Pictures.o.d" -o ${OBJECTDIR}/_ext/1360937237/Pictures.o ../src/Pictures.c  
	
${OBJECTDIR}/_ext/1360937237/SK_PIC24H.o: ../src/SK_PIC24H.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/SK_PIC24H.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/SK_PIC24H.o.ok ${OBJECTDIR}/_ext/1360937237/SK_PIC24H.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/SK_PIC24H.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../h" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/1360937237/SK_PIC24H.o.d" -o ${OBJECTDIR}/_ext/1360937237/SK_PIC24H.o ../src/SK_PIC24H.c  
	
${OBJECTDIR}/_ext/1360937237/Speaker.o: ../src/Speaker.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Speaker.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Speaker.o.ok ${OBJECTDIR}/_ext/1360937237/Speaker.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/Speaker.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../h" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/1360937237/Speaker.o.d" -o ${OBJECTDIR}/_ext/1360937237/Speaker.o ../src/Speaker.c  
	
${OBJECTDIR}/_ext/1360937237/Timers.o: ../src/Timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Timers.o.ok ${OBJECTDIR}/_ext/1360937237/Timers.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/Timers.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../h" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/1360937237/Timers.o.d" -o ${OBJECTDIR}/_ext/1360937237/Timers.o ../src/Timers.c  
	
${OBJECTDIR}/_ext/803622919/Template.o: ../../../Microchip/Graphics/Template.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Template.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Template.o.ok ${OBJECTDIR}/_ext/803622919/Template.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Template.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../h" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/Template.o.d" -o ${OBJECTDIR}/_ext/803622919/Template.o ../../../Microchip/Graphics/Template.c  
	
${OBJECTDIR}/_ext/803622919/Button.o: ../../../Microchip/Graphics/Button.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Button.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Button.o.ok ${OBJECTDIR}/_ext/803622919/Button.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Button.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../h" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/Button.o.d" -o ${OBJECTDIR}/_ext/803622919/Button.o ../../../Microchip/Graphics/Button.c  
	
${OBJECTDIR}/_ext/803622919/EditBox.o: ../../../Microchip/Graphics/EditBox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/EditBox.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/EditBox.o.ok ${OBJECTDIR}/_ext/803622919/EditBox.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/EditBox.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../h" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/EditBox.o.d" -o ${OBJECTDIR}/_ext/803622919/EditBox.o ../../../Microchip/Graphics/EditBox.c  
	
${OBJECTDIR}/_ext/803622919/GOL.o: ../../../Microchip/Graphics/GOL.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOL.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOL.o.ok ${OBJECTDIR}/_ext/803622919/GOL.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/GOL.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../h" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/GOL.o.d" -o ${OBJECTDIR}/_ext/803622919/GOL.o ../../../Microchip/Graphics/GOL.c  
	
${OBJECTDIR}/_ext/803622919/Grid.o: ../../../Microchip/Graphics/Grid.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Grid.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Grid.o.ok ${OBJECTDIR}/_ext/803622919/Grid.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Grid.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../h" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/Grid.o.d" -o ${OBJECTDIR}/_ext/803622919/Grid.o ../../../Microchip/Graphics/Grid.c  
	
${OBJECTDIR}/_ext/803622919/ListBox.o: ../../../Microchip/Graphics/ListBox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/ListBox.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/ListBox.o.ok ${OBJECTDIR}/_ext/803622919/ListBox.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/ListBox.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../h" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/ListBox.o.d" -o ${OBJECTDIR}/_ext/803622919/ListBox.o ../../../Microchip/Graphics/ListBox.c  
	
${OBJECTDIR}/_ext/803622919/Picture.o: ../../../Microchip/Graphics/Picture.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Picture.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Picture.o.ok ${OBJECTDIR}/_ext/803622919/Picture.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Picture.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../h" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/Picture.o.d" -o ${OBJECTDIR}/_ext/803622919/Picture.o ../../../Microchip/Graphics/Picture.c  
	
${OBJECTDIR}/_ext/803622919/Primitive.o: ../../../Microchip/Graphics/Primitive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.ok ${OBJECTDIR}/_ext/803622919/Primitive.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Primitive.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../h" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/Primitive.o.d" -o ${OBJECTDIR}/_ext/803622919/Primitive.o ../../../Microchip/Graphics/Primitive.c  
	
${OBJECTDIR}/_ext/803622919/RoundDial.o: ../../../Microchip/Graphics/RoundDial.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/RoundDial.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/RoundDial.o.ok ${OBJECTDIR}/_ext/803622919/RoundDial.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/RoundDial.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../h" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/RoundDial.o.d" -o ${OBJECTDIR}/_ext/803622919/RoundDial.o ../../../Microchip/Graphics/RoundDial.c  
	
${OBJECTDIR}/_ext/803622919/Slider.o: ../../../Microchip/Graphics/Slider.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Slider.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/Slider.o.ok ${OBJECTDIR}/_ext/803622919/Slider.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Slider.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../h" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/Slider.o.d" -o ${OBJECTDIR}/_ext/803622919/Slider.o ../../../Microchip/Graphics/Slider.c  
	
${OBJECTDIR}/_ext/803622919/StaticText.o: ../../../Microchip/Graphics/StaticText.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/StaticText.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/StaticText.o.ok ${OBJECTDIR}/_ext/803622919/StaticText.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/StaticText.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../h" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/StaticText.o.d" -o ${OBJECTDIR}/_ext/803622919/StaticText.o ../../../Microchip/Graphics/StaticText.c  
	
${OBJECTDIR}/_ext/1860783399/TimeDelay.o: ../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1860783399 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.ok ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../h" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d" -o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ../../../Microchip/Common/TimeDelay.c  
	
${OBJECTDIR}/_ext/1919882987/SH1101A_SSD1303.o: ../../../Microchip/Graphics/Drivers/SH1101A_SSD1303.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/SH1101A_SSD1303.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919882987/SH1101A_SSD1303.o.ok ${OBJECTDIR}/_ext/1919882987/SH1101A_SSD1303.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/SH1101A_SSD1303.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../h" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/SH1101A_SSD1303.o.d" -o ${OBJECTDIR}/_ext/1919882987/SH1101A_SSD1303.o ../../../Microchip/Graphics/Drivers/SH1101A_SSD1303.c  
	
${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o: ../../../Microchip/Graphics/GOLSchemeDefault.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.ok ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"../h" -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d" -o ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o ../../../Microchip/Graphics/GOLSchemeDefault.c  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=coff -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}        -Wl,--defsym=__MPLAB_BUILD=1,--heap=1024,--stack=1024,-L"../gld",-Map="${DISTDIR}/MPLAB.X.${IMAGE_TYPE}.map",--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1
else
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=coff -mcpu=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}        -Wl,--defsym=__MPLAB_BUILD=1,--heap=1024,--stack=1024,-L"../gld",-Map="${DISTDIR}/MPLAB.X.${IMAGE_TYPE}.map",--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION)
	${MP_CC_DIR}\\pic30-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -omf=coff
endif


# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf:
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
