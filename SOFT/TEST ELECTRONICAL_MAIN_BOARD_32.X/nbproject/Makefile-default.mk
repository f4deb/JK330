#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/TEST_ELECTRONICAL_MAIN_BOARD_32.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/TEST_ELECTRONICAL_MAIN_BOARD_32.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../common/I2C/I2Ccommon.c ../common/io/printWriter.c ../common/serial/serial.c ../device/led/led.c ../test/testI2C32PCF8574.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/637770267/I2Ccommon.o ${OBJECTDIR}/_ext/1544592837/printWriter.o ${OBJECTDIR}/_ext/1922645879/serial.o ${OBJECTDIR}/_ext/1041058175/led.o ${OBJECTDIR}/_ext/760600703/testI2C32PCF8574.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/637770267/I2Ccommon.o.d ${OBJECTDIR}/_ext/1544592837/printWriter.o.d ${OBJECTDIR}/_ext/1922645879/serial.o.d ${OBJECTDIR}/_ext/1041058175/led.o.d ${OBJECTDIR}/_ext/760600703/testI2C32PCF8574.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/637770267/I2Ccommon.o ${OBJECTDIR}/_ext/1544592837/printWriter.o ${OBJECTDIR}/_ext/1922645879/serial.o ${OBJECTDIR}/_ext/1041058175/led.o ${OBJECTDIR}/_ext/760600703/testI2C32PCF8574.o

# Source Files
SOURCEFILES=../common/I2C/I2Ccommon.c ../common/io/printWriter.c ../common/serial/serial.c ../device/led/led.c ../test/testI2C32PCF8574.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/TEST_ELECTRONICAL_MAIN_BOARD_32.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX795F512H
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
${OBJECTDIR}/_ext/637770267/I2Ccommon.o: ../common/I2C/I2Ccommon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/637770267 
	@${RM} ${OBJECTDIR}/_ext/637770267/I2Ccommon.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/637770267/I2Ccommon.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../C:/Program Files (x86)/Microchip/MPLAB C32 Suite/pic32mx/include/peripheral/legacy" -I".." -I"../common/delay" -I"../common/serial" -I"../common" -I"../main" -I"../setup" -MMD -MF "${OBJECTDIR}/_ext/637770267/I2Ccommon.o.d" -o ${OBJECTDIR}/_ext/637770267/I2Ccommon.o ../common/I2C/I2Ccommon.c   
	
${OBJECTDIR}/_ext/1544592837/printWriter.o: ../common/io/printWriter.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1544592837 
	@${RM} ${OBJECTDIR}/_ext/1544592837/printWriter.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1544592837/printWriter.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../C:/Program Files (x86)/Microchip/MPLAB C32 Suite/pic32mx/include/peripheral/legacy" -I".." -I"../common/delay" -I"../common/serial" -I"../common" -I"../main" -I"../setup" -MMD -MF "${OBJECTDIR}/_ext/1544592837/printWriter.o.d" -o ${OBJECTDIR}/_ext/1544592837/printWriter.o ../common/io/printWriter.c   
	
${OBJECTDIR}/_ext/1922645879/serial.o: ../common/serial/serial.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1922645879 
	@${RM} ${OBJECTDIR}/_ext/1922645879/serial.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1922645879/serial.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../C:/Program Files (x86)/Microchip/MPLAB C32 Suite/pic32mx/include/peripheral/legacy" -I".." -I"../common/delay" -I"../common/serial" -I"../common" -I"../main" -I"../setup" -MMD -MF "${OBJECTDIR}/_ext/1922645879/serial.o.d" -o ${OBJECTDIR}/_ext/1922645879/serial.o ../common/serial/serial.c   
	
${OBJECTDIR}/_ext/1041058175/led.o: ../device/led/led.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1041058175 
	@${RM} ${OBJECTDIR}/_ext/1041058175/led.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1041058175/led.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../C:/Program Files (x86)/Microchip/MPLAB C32 Suite/pic32mx/include/peripheral/legacy" -I".." -I"../common/delay" -I"../common/serial" -I"../common" -I"../main" -I"../setup" -MMD -MF "${OBJECTDIR}/_ext/1041058175/led.o.d" -o ${OBJECTDIR}/_ext/1041058175/led.o ../device/led/led.c   
	
${OBJECTDIR}/_ext/760600703/testI2C32PCF8574.o: ../test/testI2C32PCF8574.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/760600703 
	@${RM} ${OBJECTDIR}/_ext/760600703/testI2C32PCF8574.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/760600703/testI2C32PCF8574.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../C:/Program Files (x86)/Microchip/MPLAB C32 Suite/pic32mx/include/peripheral/legacy" -I".." -I"../common/delay" -I"../common/serial" -I"../common" -I"../main" -I"../setup" -MMD -MF "${OBJECTDIR}/_ext/760600703/testI2C32PCF8574.o.d" -o ${OBJECTDIR}/_ext/760600703/testI2C32PCF8574.o ../test/testI2C32PCF8574.c   
	
else
${OBJECTDIR}/_ext/637770267/I2Ccommon.o: ../common/I2C/I2Ccommon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/637770267 
	@${RM} ${OBJECTDIR}/_ext/637770267/I2Ccommon.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/637770267/I2Ccommon.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../C:/Program Files (x86)/Microchip/MPLAB C32 Suite/pic32mx/include/peripheral/legacy" -I".." -I"../common/delay" -I"../common/serial" -I"../common" -I"../main" -I"../setup" -MMD -MF "${OBJECTDIR}/_ext/637770267/I2Ccommon.o.d" -o ${OBJECTDIR}/_ext/637770267/I2Ccommon.o ../common/I2C/I2Ccommon.c   
	
${OBJECTDIR}/_ext/1544592837/printWriter.o: ../common/io/printWriter.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1544592837 
	@${RM} ${OBJECTDIR}/_ext/1544592837/printWriter.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1544592837/printWriter.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../C:/Program Files (x86)/Microchip/MPLAB C32 Suite/pic32mx/include/peripheral/legacy" -I".." -I"../common/delay" -I"../common/serial" -I"../common" -I"../main" -I"../setup" -MMD -MF "${OBJECTDIR}/_ext/1544592837/printWriter.o.d" -o ${OBJECTDIR}/_ext/1544592837/printWriter.o ../common/io/printWriter.c   
	
${OBJECTDIR}/_ext/1922645879/serial.o: ../common/serial/serial.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1922645879 
	@${RM} ${OBJECTDIR}/_ext/1922645879/serial.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1922645879/serial.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../C:/Program Files (x86)/Microchip/MPLAB C32 Suite/pic32mx/include/peripheral/legacy" -I".." -I"../common/delay" -I"../common/serial" -I"../common" -I"../main" -I"../setup" -MMD -MF "${OBJECTDIR}/_ext/1922645879/serial.o.d" -o ${OBJECTDIR}/_ext/1922645879/serial.o ../common/serial/serial.c   
	
${OBJECTDIR}/_ext/1041058175/led.o: ../device/led/led.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1041058175 
	@${RM} ${OBJECTDIR}/_ext/1041058175/led.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1041058175/led.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../C:/Program Files (x86)/Microchip/MPLAB C32 Suite/pic32mx/include/peripheral/legacy" -I".." -I"../common/delay" -I"../common/serial" -I"../common" -I"../main" -I"../setup" -MMD -MF "${OBJECTDIR}/_ext/1041058175/led.o.d" -o ${OBJECTDIR}/_ext/1041058175/led.o ../device/led/led.c   
	
${OBJECTDIR}/_ext/760600703/testI2C32PCF8574.o: ../test/testI2C32PCF8574.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/760600703 
	@${RM} ${OBJECTDIR}/_ext/760600703/testI2C32PCF8574.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/760600703/testI2C32PCF8574.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../C:/Program Files (x86)/Microchip/MPLAB C32 Suite/pic32mx/include/peripheral/legacy" -I".." -I"../common/delay" -I"../common/serial" -I"../common" -I"../main" -I"../setup" -MMD -MF "${OBJECTDIR}/_ext/760600703/testI2C32PCF8574.o.d" -o ${OBJECTDIR}/_ext/760600703/testI2C32PCF8574.o ../test/testI2C32PCF8574.c   
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/TEST_ELECTRONICAL_MAIN_BOARD_32.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_ICD3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/TEST_ELECTRONICAL_MAIN_BOARD_32.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}           -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC02000:0x1FC02FEF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-L"..",-Map="${DISTDIR}/TEST_ELECTRONICAL_MAIN_BOARD_32.X.${IMAGE_TYPE}.map"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/TEST_ELECTRONICAL_MAIN_BOARD_32.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/TEST_ELECTRONICAL_MAIN_BOARD_32.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),-L"..",-Map="${DISTDIR}/TEST_ELECTRONICAL_MAIN_BOARD_32.X.${IMAGE_TYPE}.map"
	${MP_CC_DIR}/xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/TEST_ELECTRONICAL_MAIN_BOARD_32.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
