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
ifeq "$(wildcard nbproject/Makefile-local-sam_l10_xpro.mk)" "nbproject/Makefile-local-sam_l10_xpro.mk"
include nbproject/Makefile-local-sam_l10_xpro.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=sam_l10_xpro
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/sam_l10_xpro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/sam_l10_xpro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/config/sam_l10_xpro/peripheral/clock/plib_clock.c ../src/config/sam_l10_xpro/peripheral/evsys/plib_evsys.c ../src/config/sam_l10_xpro/peripheral/nvic/plib_nvic.c ../src/config/sam_l10_xpro/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/sam_l10_xpro/peripheral/pm/plib_pm.c ../src/config/sam_l10_xpro/peripheral/port/plib_port.c ../src/config/sam_l10_xpro/peripheral/sercom/i2c_slave/plib_sercom1_i2c_slave.c ../src/config/sam_l10_xpro/stdio/xc32_monitor.c ../src/config/sam_l10_xpro/initialization.c ../src/config/sam_l10_xpro/interrupts.c ../src/config/sam_l10_xpro/exceptions.c ../src/config/sam_l10_xpro/startup_xc32.c ../src/config/sam_l10_xpro/libc_syscalls.c ../src/main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/14877202/plib_clock.o ${OBJECTDIR}/_ext/12727716/plib_evsys.o ${OBJECTDIR}/_ext/1939805438/plib_nvic.o ${OBJECTDIR}/_ext/44973424/plib_nvmctrl.o ${OBJECTDIR}/_ext/592394269/plib_pm.o ${OBJECTDIR}/_ext/1939752287/plib_port.o ${OBJECTDIR}/_ext/1309484196/plib_sercom1_i2c_slave.o ${OBJECTDIR}/_ext/1911983158/xc32_monitor.o ${OBJECTDIR}/_ext/13305212/initialization.o ${OBJECTDIR}/_ext/13305212/interrupts.o ${OBJECTDIR}/_ext/13305212/exceptions.o ${OBJECTDIR}/_ext/13305212/startup_xc32.o ${OBJECTDIR}/_ext/13305212/libc_syscalls.o ${OBJECTDIR}/_ext/1360937237/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/14877202/plib_clock.o.d ${OBJECTDIR}/_ext/12727716/plib_evsys.o.d ${OBJECTDIR}/_ext/1939805438/plib_nvic.o.d ${OBJECTDIR}/_ext/44973424/plib_nvmctrl.o.d ${OBJECTDIR}/_ext/592394269/plib_pm.o.d ${OBJECTDIR}/_ext/1939752287/plib_port.o.d ${OBJECTDIR}/_ext/1309484196/plib_sercom1_i2c_slave.o.d ${OBJECTDIR}/_ext/1911983158/xc32_monitor.o.d ${OBJECTDIR}/_ext/13305212/initialization.o.d ${OBJECTDIR}/_ext/13305212/interrupts.o.d ${OBJECTDIR}/_ext/13305212/exceptions.o.d ${OBJECTDIR}/_ext/13305212/startup_xc32.o.d ${OBJECTDIR}/_ext/13305212/libc_syscalls.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/14877202/plib_clock.o ${OBJECTDIR}/_ext/12727716/plib_evsys.o ${OBJECTDIR}/_ext/1939805438/plib_nvic.o ${OBJECTDIR}/_ext/44973424/plib_nvmctrl.o ${OBJECTDIR}/_ext/592394269/plib_pm.o ${OBJECTDIR}/_ext/1939752287/plib_port.o ${OBJECTDIR}/_ext/1309484196/plib_sercom1_i2c_slave.o ${OBJECTDIR}/_ext/1911983158/xc32_monitor.o ${OBJECTDIR}/_ext/13305212/initialization.o ${OBJECTDIR}/_ext/13305212/interrupts.o ${OBJECTDIR}/_ext/13305212/exceptions.o ${OBJECTDIR}/_ext/13305212/startup_xc32.o ${OBJECTDIR}/_ext/13305212/libc_syscalls.o ${OBJECTDIR}/_ext/1360937237/main.o

# Source Files
SOURCEFILES=../src/config/sam_l10_xpro/peripheral/clock/plib_clock.c ../src/config/sam_l10_xpro/peripheral/evsys/plib_evsys.c ../src/config/sam_l10_xpro/peripheral/nvic/plib_nvic.c ../src/config/sam_l10_xpro/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/sam_l10_xpro/peripheral/pm/plib_pm.c ../src/config/sam_l10_xpro/peripheral/port/plib_port.c ../src/config/sam_l10_xpro/peripheral/sercom/i2c_slave/plib_sercom1_i2c_slave.c ../src/config/sam_l10_xpro/stdio/xc32_monitor.c ../src/config/sam_l10_xpro/initialization.c ../src/config/sam_l10_xpro/interrupts.c ../src/config/sam_l10_xpro/exceptions.c ../src/config/sam_l10_xpro/startup_xc32.c ../src/config/sam_l10_xpro/libc_syscalls.c ../src/main.c



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
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-sam_l10_xpro.mk ${DISTDIR}/sam_l10_xpro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATSAML10E16A
MP_LINKER_FILE_OPTION=,--script="..\src\config\sam_l10_xpro\ATSAML10E16A.ld"
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
${OBJECTDIR}/_ext/14877202/plib_clock.o: ../src/config/sam_l10_xpro/peripheral/clock/plib_clock.c  .generated_files/flags/sam_l10_xpro/db2c91a30e8806a9ff219b2a76833dae4abea940 .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/14877202" 
	@${RM} ${OBJECTDIR}/_ext/14877202/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/14877202/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/14877202/plib_clock.o.d" -o ${OBJECTDIR}/_ext/14877202/plib_clock.o ../src/config/sam_l10_xpro/peripheral/clock/plib_clock.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/12727716/plib_evsys.o: ../src/config/sam_l10_xpro/peripheral/evsys/plib_evsys.c  .generated_files/flags/sam_l10_xpro/4506f51a1a424a1f94c6aaa54838ea8bb48ca50f .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/12727716" 
	@${RM} ${OBJECTDIR}/_ext/12727716/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/12727716/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/12727716/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/12727716/plib_evsys.o ../src/config/sam_l10_xpro/peripheral/evsys/plib_evsys.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1939805438/plib_nvic.o: ../src/config/sam_l10_xpro/peripheral/nvic/plib_nvic.c  .generated_files/flags/sam_l10_xpro/5dbb940df3548432b208bac31b309f445b1562a1 .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1939805438" 
	@${RM} ${OBJECTDIR}/_ext/1939805438/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1939805438/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1939805438/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1939805438/plib_nvic.o ../src/config/sam_l10_xpro/peripheral/nvic/plib_nvic.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/44973424/plib_nvmctrl.o: ../src/config/sam_l10_xpro/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/sam_l10_xpro/f3d94e3fdd03749457e9a912a7e28bcf4064cde4 .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/44973424" 
	@${RM} ${OBJECTDIR}/_ext/44973424/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/44973424/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/44973424/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/44973424/plib_nvmctrl.o ../src/config/sam_l10_xpro/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/592394269/plib_pm.o: ../src/config/sam_l10_xpro/peripheral/pm/plib_pm.c  .generated_files/flags/sam_l10_xpro/9fff8ef2a94c9de45ce1dfc3ee95b2e9786d8f03 .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/592394269" 
	@${RM} ${OBJECTDIR}/_ext/592394269/plib_pm.o.d 
	@${RM} ${OBJECTDIR}/_ext/592394269/plib_pm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/592394269/plib_pm.o.d" -o ${OBJECTDIR}/_ext/592394269/plib_pm.o ../src/config/sam_l10_xpro/peripheral/pm/plib_pm.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1939752287/plib_port.o: ../src/config/sam_l10_xpro/peripheral/port/plib_port.c  .generated_files/flags/sam_l10_xpro/2c659e617f8b0ba03e999f3e47b837ce79a7bea4 .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1939752287" 
	@${RM} ${OBJECTDIR}/_ext/1939752287/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1939752287/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1939752287/plib_port.o.d" -o ${OBJECTDIR}/_ext/1939752287/plib_port.o ../src/config/sam_l10_xpro/peripheral/port/plib_port.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1309484196/plib_sercom1_i2c_slave.o: ../src/config/sam_l10_xpro/peripheral/sercom/i2c_slave/plib_sercom1_i2c_slave.c  .generated_files/flags/sam_l10_xpro/8cd842b9a1cf57b1c061faafb0096036562628e4 .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1309484196" 
	@${RM} ${OBJECTDIR}/_ext/1309484196/plib_sercom1_i2c_slave.o.d 
	@${RM} ${OBJECTDIR}/_ext/1309484196/plib_sercom1_i2c_slave.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1309484196/plib_sercom1_i2c_slave.o.d" -o ${OBJECTDIR}/_ext/1309484196/plib_sercom1_i2c_slave.o ../src/config/sam_l10_xpro/peripheral/sercom/i2c_slave/plib_sercom1_i2c_slave.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1911983158/xc32_monitor.o: ../src/config/sam_l10_xpro/stdio/xc32_monitor.c  .generated_files/flags/sam_l10_xpro/8d46bba188c8eb06eb4b32b77844a40cad8ba0be .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1911983158" 
	@${RM} ${OBJECTDIR}/_ext/1911983158/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1911983158/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1911983158/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1911983158/xc32_monitor.o ../src/config/sam_l10_xpro/stdio/xc32_monitor.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/13305212/initialization.o: ../src/config/sam_l10_xpro/initialization.c  .generated_files/flags/sam_l10_xpro/dbcdda524cb27c67b37adaefc93a2a17750f1c80 .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/13305212" 
	@${RM} ${OBJECTDIR}/_ext/13305212/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/13305212/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/13305212/initialization.o.d" -o ${OBJECTDIR}/_ext/13305212/initialization.o ../src/config/sam_l10_xpro/initialization.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/13305212/interrupts.o: ../src/config/sam_l10_xpro/interrupts.c  .generated_files/flags/sam_l10_xpro/9aa16c4bee1ca8fc8a0cea4e7b2c90ea299859b2 .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/13305212" 
	@${RM} ${OBJECTDIR}/_ext/13305212/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/13305212/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/13305212/interrupts.o.d" -o ${OBJECTDIR}/_ext/13305212/interrupts.o ../src/config/sam_l10_xpro/interrupts.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/13305212/exceptions.o: ../src/config/sam_l10_xpro/exceptions.c  .generated_files/flags/sam_l10_xpro/7f95db0ba836180b0c1da11a0bea068a468eaa0f .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/13305212" 
	@${RM} ${OBJECTDIR}/_ext/13305212/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/13305212/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/13305212/exceptions.o.d" -o ${OBJECTDIR}/_ext/13305212/exceptions.o ../src/config/sam_l10_xpro/exceptions.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/13305212/startup_xc32.o: ../src/config/sam_l10_xpro/startup_xc32.c  .generated_files/flags/sam_l10_xpro/ff33477696af7fb00d1abe63e1df489a0229c119 .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/13305212" 
	@${RM} ${OBJECTDIR}/_ext/13305212/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/13305212/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/13305212/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/13305212/startup_xc32.o ../src/config/sam_l10_xpro/startup_xc32.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/13305212/libc_syscalls.o: ../src/config/sam_l10_xpro/libc_syscalls.c  .generated_files/flags/sam_l10_xpro/2e8762f58a6cca04bbafc0566d245fafff400b15 .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/13305212" 
	@${RM} ${OBJECTDIR}/_ext/13305212/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/13305212/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/13305212/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/13305212/libc_syscalls.o ../src/config/sam_l10_xpro/libc_syscalls.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/sam_l10_xpro/5abd35faa384ad70a136561d8c73459df0129cd3 .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/14877202/plib_clock.o: ../src/config/sam_l10_xpro/peripheral/clock/plib_clock.c  .generated_files/flags/sam_l10_xpro/c0c659cb4f2c35b7be72999c15a2cb0567fb6be6 .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/14877202" 
	@${RM} ${OBJECTDIR}/_ext/14877202/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/14877202/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/14877202/plib_clock.o.d" -o ${OBJECTDIR}/_ext/14877202/plib_clock.o ../src/config/sam_l10_xpro/peripheral/clock/plib_clock.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/12727716/plib_evsys.o: ../src/config/sam_l10_xpro/peripheral/evsys/plib_evsys.c  .generated_files/flags/sam_l10_xpro/48757a937db87a0cfe3a65dbee2167029e755ea9 .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/12727716" 
	@${RM} ${OBJECTDIR}/_ext/12727716/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/12727716/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/12727716/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/12727716/plib_evsys.o ../src/config/sam_l10_xpro/peripheral/evsys/plib_evsys.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1939805438/plib_nvic.o: ../src/config/sam_l10_xpro/peripheral/nvic/plib_nvic.c  .generated_files/flags/sam_l10_xpro/68d91ba16764048b3e129d074253e6d50fc5911c .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1939805438" 
	@${RM} ${OBJECTDIR}/_ext/1939805438/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1939805438/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1939805438/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1939805438/plib_nvic.o ../src/config/sam_l10_xpro/peripheral/nvic/plib_nvic.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/44973424/plib_nvmctrl.o: ../src/config/sam_l10_xpro/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/sam_l10_xpro/7e226ba600709aeaa199242eb1dcd12533dbafa3 .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/44973424" 
	@${RM} ${OBJECTDIR}/_ext/44973424/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/44973424/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/44973424/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/44973424/plib_nvmctrl.o ../src/config/sam_l10_xpro/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/592394269/plib_pm.o: ../src/config/sam_l10_xpro/peripheral/pm/plib_pm.c  .generated_files/flags/sam_l10_xpro/f65cfacddf75c96c4c4999e0c6ba86721834b5ed .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/592394269" 
	@${RM} ${OBJECTDIR}/_ext/592394269/plib_pm.o.d 
	@${RM} ${OBJECTDIR}/_ext/592394269/plib_pm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/592394269/plib_pm.o.d" -o ${OBJECTDIR}/_ext/592394269/plib_pm.o ../src/config/sam_l10_xpro/peripheral/pm/plib_pm.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1939752287/plib_port.o: ../src/config/sam_l10_xpro/peripheral/port/plib_port.c  .generated_files/flags/sam_l10_xpro/cc48e26ee61051dbe5fcccc81059fd110d4eb1a9 .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1939752287" 
	@${RM} ${OBJECTDIR}/_ext/1939752287/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1939752287/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1939752287/plib_port.o.d" -o ${OBJECTDIR}/_ext/1939752287/plib_port.o ../src/config/sam_l10_xpro/peripheral/port/plib_port.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1309484196/plib_sercom1_i2c_slave.o: ../src/config/sam_l10_xpro/peripheral/sercom/i2c_slave/plib_sercom1_i2c_slave.c  .generated_files/flags/sam_l10_xpro/629c12fadbea402d86099bcf7e9ba3d34b773056 .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1309484196" 
	@${RM} ${OBJECTDIR}/_ext/1309484196/plib_sercom1_i2c_slave.o.d 
	@${RM} ${OBJECTDIR}/_ext/1309484196/plib_sercom1_i2c_slave.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1309484196/plib_sercom1_i2c_slave.o.d" -o ${OBJECTDIR}/_ext/1309484196/plib_sercom1_i2c_slave.o ../src/config/sam_l10_xpro/peripheral/sercom/i2c_slave/plib_sercom1_i2c_slave.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1911983158/xc32_monitor.o: ../src/config/sam_l10_xpro/stdio/xc32_monitor.c  .generated_files/flags/sam_l10_xpro/78782af0824c9e718642af1dfe8c110aa5a8b4c5 .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1911983158" 
	@${RM} ${OBJECTDIR}/_ext/1911983158/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1911983158/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1911983158/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1911983158/xc32_monitor.o ../src/config/sam_l10_xpro/stdio/xc32_monitor.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/13305212/initialization.o: ../src/config/sam_l10_xpro/initialization.c  .generated_files/flags/sam_l10_xpro/ed9fe475d4fc81083df57177781b81e3e91747d2 .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/13305212" 
	@${RM} ${OBJECTDIR}/_ext/13305212/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/13305212/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/13305212/initialization.o.d" -o ${OBJECTDIR}/_ext/13305212/initialization.o ../src/config/sam_l10_xpro/initialization.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/13305212/interrupts.o: ../src/config/sam_l10_xpro/interrupts.c  .generated_files/flags/sam_l10_xpro/bb0484614bc65d011f203742ba9885713867dca9 .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/13305212" 
	@${RM} ${OBJECTDIR}/_ext/13305212/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/13305212/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/13305212/interrupts.o.d" -o ${OBJECTDIR}/_ext/13305212/interrupts.o ../src/config/sam_l10_xpro/interrupts.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/13305212/exceptions.o: ../src/config/sam_l10_xpro/exceptions.c  .generated_files/flags/sam_l10_xpro/2906e8dba61393a2fa49b2a5b7badd079955b750 .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/13305212" 
	@${RM} ${OBJECTDIR}/_ext/13305212/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/13305212/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/13305212/exceptions.o.d" -o ${OBJECTDIR}/_ext/13305212/exceptions.o ../src/config/sam_l10_xpro/exceptions.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/13305212/startup_xc32.o: ../src/config/sam_l10_xpro/startup_xc32.c  .generated_files/flags/sam_l10_xpro/cc295edf44c29fc5e69b3967f732ed5fd2190777 .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/13305212" 
	@${RM} ${OBJECTDIR}/_ext/13305212/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/13305212/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/13305212/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/13305212/startup_xc32.o ../src/config/sam_l10_xpro/startup_xc32.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/13305212/libc_syscalls.o: ../src/config/sam_l10_xpro/libc_syscalls.c  .generated_files/flags/sam_l10_xpro/d71c570e50456a38a721c5e63851d0d032dbca8f .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/13305212" 
	@${RM} ${OBJECTDIR}/_ext/13305212/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/13305212/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/13305212/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/13305212/libc_syscalls.o ../src/config/sam_l10_xpro/libc_syscalls.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/sam_l10_xpro/9107d0050801df6fb5bc5eccd0519e9535cdfbea .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/sam_l10_xpro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/sam_l10_xpro/ATSAML10E16A.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o ${DISTDIR}/sam_l10_xpro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml 
	
else
${DISTDIR}/sam_l10_xpro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/sam_l10_xpro/ATSAML10E16A.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o ${DISTDIR}/sam_l10_xpro.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml 
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/sam_l10_xpro.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}
