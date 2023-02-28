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
SOURCEFILES_QUOTED_IF_SPACED=../src/config/sam_l10_xpro/peripheral/clock/plib_clock.c ../src/config/sam_l10_xpro/peripheral/evsys/plib_evsys.c ../src/config/sam_l10_xpro/peripheral/nvic/plib_nvic.c ../src/config/sam_l10_xpro/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/sam_l10_xpro/peripheral/pm/plib_pm.c ../src/config/sam_l10_xpro/peripheral/port/plib_port.c ../src/config/sam_l10_xpro/peripheral/sercom/i2c_master/plib_sercom0_i2c_master.c ../src/config/sam_l10_xpro/stdio/xc32_monitor.c ../src/config/sam_l10_xpro/initialization.c ../src/config/sam_l10_xpro/interrupts.c ../src/config/sam_l10_xpro/exceptions.c ../src/config/sam_l10_xpro/startup_xc32.c ../src/config/sam_l10_xpro/libc_syscalls.c ../src/main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/14877202/plib_clock.o ${OBJECTDIR}/_ext/12727716/plib_evsys.o ${OBJECTDIR}/_ext/1939805438/plib_nvic.o ${OBJECTDIR}/_ext/44973424/plib_nvmctrl.o ${OBJECTDIR}/_ext/592394269/plib_pm.o ${OBJECTDIR}/_ext/1939752287/plib_port.o ${OBJECTDIR}/_ext/1757905205/plib_sercom0_i2c_master.o ${OBJECTDIR}/_ext/1911983158/xc32_monitor.o ${OBJECTDIR}/_ext/13305212/initialization.o ${OBJECTDIR}/_ext/13305212/interrupts.o ${OBJECTDIR}/_ext/13305212/exceptions.o ${OBJECTDIR}/_ext/13305212/startup_xc32.o ${OBJECTDIR}/_ext/13305212/libc_syscalls.o ${OBJECTDIR}/_ext/1360937237/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/14877202/plib_clock.o.d ${OBJECTDIR}/_ext/12727716/plib_evsys.o.d ${OBJECTDIR}/_ext/1939805438/plib_nvic.o.d ${OBJECTDIR}/_ext/44973424/plib_nvmctrl.o.d ${OBJECTDIR}/_ext/592394269/plib_pm.o.d ${OBJECTDIR}/_ext/1939752287/plib_port.o.d ${OBJECTDIR}/_ext/1757905205/plib_sercom0_i2c_master.o.d ${OBJECTDIR}/_ext/1911983158/xc32_monitor.o.d ${OBJECTDIR}/_ext/13305212/initialization.o.d ${OBJECTDIR}/_ext/13305212/interrupts.o.d ${OBJECTDIR}/_ext/13305212/exceptions.o.d ${OBJECTDIR}/_ext/13305212/startup_xc32.o.d ${OBJECTDIR}/_ext/13305212/libc_syscalls.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/14877202/plib_clock.o ${OBJECTDIR}/_ext/12727716/plib_evsys.o ${OBJECTDIR}/_ext/1939805438/plib_nvic.o ${OBJECTDIR}/_ext/44973424/plib_nvmctrl.o ${OBJECTDIR}/_ext/592394269/plib_pm.o ${OBJECTDIR}/_ext/1939752287/plib_port.o ${OBJECTDIR}/_ext/1757905205/plib_sercom0_i2c_master.o ${OBJECTDIR}/_ext/1911983158/xc32_monitor.o ${OBJECTDIR}/_ext/13305212/initialization.o ${OBJECTDIR}/_ext/13305212/interrupts.o ${OBJECTDIR}/_ext/13305212/exceptions.o ${OBJECTDIR}/_ext/13305212/startup_xc32.o ${OBJECTDIR}/_ext/13305212/libc_syscalls.o ${OBJECTDIR}/_ext/1360937237/main.o

# Source Files
SOURCEFILES=../src/config/sam_l10_xpro/peripheral/clock/plib_clock.c ../src/config/sam_l10_xpro/peripheral/evsys/plib_evsys.c ../src/config/sam_l10_xpro/peripheral/nvic/plib_nvic.c ../src/config/sam_l10_xpro/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/sam_l10_xpro/peripheral/pm/plib_pm.c ../src/config/sam_l10_xpro/peripheral/port/plib_port.c ../src/config/sam_l10_xpro/peripheral/sercom/i2c_master/plib_sercom0_i2c_master.c ../src/config/sam_l10_xpro/stdio/xc32_monitor.c ../src/config/sam_l10_xpro/initialization.c ../src/config/sam_l10_xpro/interrupts.c ../src/config/sam_l10_xpro/exceptions.c ../src/config/sam_l10_xpro/startup_xc32.c ../src/config/sam_l10_xpro/libc_syscalls.c ../src/main.c



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
${OBJECTDIR}/_ext/14877202/plib_clock.o: ../src/config/sam_l10_xpro/peripheral/clock/plib_clock.c  .generated_files/flags/sam_l10_xpro/96524893aefd33724c5759e973f6e5028447ee .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/14877202" 
	@${RM} ${OBJECTDIR}/_ext/14877202/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/14877202/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/14877202/plib_clock.o.d" -o ${OBJECTDIR}/_ext/14877202/plib_clock.o ../src/config/sam_l10_xpro/peripheral/clock/plib_clock.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/12727716/plib_evsys.o: ../src/config/sam_l10_xpro/peripheral/evsys/plib_evsys.c  .generated_files/flags/sam_l10_xpro/22052e2119ee6ceb8ed54849e70845c3efaa60be .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/12727716" 
	@${RM} ${OBJECTDIR}/_ext/12727716/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/12727716/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/12727716/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/12727716/plib_evsys.o ../src/config/sam_l10_xpro/peripheral/evsys/plib_evsys.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1939805438/plib_nvic.o: ../src/config/sam_l10_xpro/peripheral/nvic/plib_nvic.c  .generated_files/flags/sam_l10_xpro/62bb9abf652c02582e442922b1d23b16d8b939f2 .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1939805438" 
	@${RM} ${OBJECTDIR}/_ext/1939805438/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1939805438/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1939805438/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1939805438/plib_nvic.o ../src/config/sam_l10_xpro/peripheral/nvic/plib_nvic.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/44973424/plib_nvmctrl.o: ../src/config/sam_l10_xpro/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/sam_l10_xpro/c7297d95993dd05c575b85cbedb359c3ceb299e9 .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/44973424" 
	@${RM} ${OBJECTDIR}/_ext/44973424/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/44973424/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/44973424/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/44973424/plib_nvmctrl.o ../src/config/sam_l10_xpro/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/592394269/plib_pm.o: ../src/config/sam_l10_xpro/peripheral/pm/plib_pm.c  .generated_files/flags/sam_l10_xpro/dae2905ace7ff2a66ce97814c4a3df93dcc504e3 .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/592394269" 
	@${RM} ${OBJECTDIR}/_ext/592394269/plib_pm.o.d 
	@${RM} ${OBJECTDIR}/_ext/592394269/plib_pm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/592394269/plib_pm.o.d" -o ${OBJECTDIR}/_ext/592394269/plib_pm.o ../src/config/sam_l10_xpro/peripheral/pm/plib_pm.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1939752287/plib_port.o: ../src/config/sam_l10_xpro/peripheral/port/plib_port.c  .generated_files/flags/sam_l10_xpro/38155e9dd7dda0a131efa53da80e6c099d06d8dd .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1939752287" 
	@${RM} ${OBJECTDIR}/_ext/1939752287/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1939752287/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1939752287/plib_port.o.d" -o ${OBJECTDIR}/_ext/1939752287/plib_port.o ../src/config/sam_l10_xpro/peripheral/port/plib_port.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1757905205/plib_sercom0_i2c_master.o: ../src/config/sam_l10_xpro/peripheral/sercom/i2c_master/plib_sercom0_i2c_master.c  .generated_files/flags/sam_l10_xpro/60869bfcd4a1b8bb2d4ca77023f4e3825938a149 .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1757905205" 
	@${RM} ${OBJECTDIR}/_ext/1757905205/plib_sercom0_i2c_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/1757905205/plib_sercom0_i2c_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1757905205/plib_sercom0_i2c_master.o.d" -o ${OBJECTDIR}/_ext/1757905205/plib_sercom0_i2c_master.o ../src/config/sam_l10_xpro/peripheral/sercom/i2c_master/plib_sercom0_i2c_master.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1911983158/xc32_monitor.o: ../src/config/sam_l10_xpro/stdio/xc32_monitor.c  .generated_files/flags/sam_l10_xpro/c53942ddb3e029f304fe48e9b4dc724ada667b3f .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1911983158" 
	@${RM} ${OBJECTDIR}/_ext/1911983158/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1911983158/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1911983158/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1911983158/xc32_monitor.o ../src/config/sam_l10_xpro/stdio/xc32_monitor.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/13305212/initialization.o: ../src/config/sam_l10_xpro/initialization.c  .generated_files/flags/sam_l10_xpro/1229b3414df4f0f2568d4bb0aa2ea3986f4104ba .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/13305212" 
	@${RM} ${OBJECTDIR}/_ext/13305212/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/13305212/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/13305212/initialization.o.d" -o ${OBJECTDIR}/_ext/13305212/initialization.o ../src/config/sam_l10_xpro/initialization.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/13305212/interrupts.o: ../src/config/sam_l10_xpro/interrupts.c  .generated_files/flags/sam_l10_xpro/7e4ee80a7b1e4bf5cfb535e8a3c657879b44b3e0 .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/13305212" 
	@${RM} ${OBJECTDIR}/_ext/13305212/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/13305212/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/13305212/interrupts.o.d" -o ${OBJECTDIR}/_ext/13305212/interrupts.o ../src/config/sam_l10_xpro/interrupts.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/13305212/exceptions.o: ../src/config/sam_l10_xpro/exceptions.c  .generated_files/flags/sam_l10_xpro/fa05efe9015ef884e43aaf62bb6ac4d4315852ba .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/13305212" 
	@${RM} ${OBJECTDIR}/_ext/13305212/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/13305212/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/13305212/exceptions.o.d" -o ${OBJECTDIR}/_ext/13305212/exceptions.o ../src/config/sam_l10_xpro/exceptions.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/13305212/startup_xc32.o: ../src/config/sam_l10_xpro/startup_xc32.c  .generated_files/flags/sam_l10_xpro/7c0db93b3a82eed0ceb1c4b8fd918ce31455f9d1 .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/13305212" 
	@${RM} ${OBJECTDIR}/_ext/13305212/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/13305212/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/13305212/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/13305212/startup_xc32.o ../src/config/sam_l10_xpro/startup_xc32.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/13305212/libc_syscalls.o: ../src/config/sam_l10_xpro/libc_syscalls.c  .generated_files/flags/sam_l10_xpro/e08c4ac2b160cb90dd8e74ce0352ef525d40f7c .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/13305212" 
	@${RM} ${OBJECTDIR}/_ext/13305212/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/13305212/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/13305212/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/13305212/libc_syscalls.o ../src/config/sam_l10_xpro/libc_syscalls.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/sam_l10_xpro/2cdadbb0972c708978e09c4c45332ba8518b24e6 .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/14877202/plib_clock.o: ../src/config/sam_l10_xpro/peripheral/clock/plib_clock.c  .generated_files/flags/sam_l10_xpro/34d388227a80cc233dcd87ab831591bed2d211f .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/14877202" 
	@${RM} ${OBJECTDIR}/_ext/14877202/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/14877202/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/14877202/plib_clock.o.d" -o ${OBJECTDIR}/_ext/14877202/plib_clock.o ../src/config/sam_l10_xpro/peripheral/clock/plib_clock.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/12727716/plib_evsys.o: ../src/config/sam_l10_xpro/peripheral/evsys/plib_evsys.c  .generated_files/flags/sam_l10_xpro/cea10b96e5d6f6cc19519e64fe4515c6ce7cbd09 .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/12727716" 
	@${RM} ${OBJECTDIR}/_ext/12727716/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/12727716/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/12727716/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/12727716/plib_evsys.o ../src/config/sam_l10_xpro/peripheral/evsys/plib_evsys.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1939805438/plib_nvic.o: ../src/config/sam_l10_xpro/peripheral/nvic/plib_nvic.c  .generated_files/flags/sam_l10_xpro/2ccdf1bc47113338d71c5dc1c02deafb93e3a7e3 .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1939805438" 
	@${RM} ${OBJECTDIR}/_ext/1939805438/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1939805438/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1939805438/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1939805438/plib_nvic.o ../src/config/sam_l10_xpro/peripheral/nvic/plib_nvic.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/44973424/plib_nvmctrl.o: ../src/config/sam_l10_xpro/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/sam_l10_xpro/d5de0539975258cabdbcc1edf005bb4d7e4c215 .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/44973424" 
	@${RM} ${OBJECTDIR}/_ext/44973424/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/44973424/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/44973424/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/44973424/plib_nvmctrl.o ../src/config/sam_l10_xpro/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/592394269/plib_pm.o: ../src/config/sam_l10_xpro/peripheral/pm/plib_pm.c  .generated_files/flags/sam_l10_xpro/5705a6bfbdc4109458eeddfb2d0f183605b29714 .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/592394269" 
	@${RM} ${OBJECTDIR}/_ext/592394269/plib_pm.o.d 
	@${RM} ${OBJECTDIR}/_ext/592394269/plib_pm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/592394269/plib_pm.o.d" -o ${OBJECTDIR}/_ext/592394269/plib_pm.o ../src/config/sam_l10_xpro/peripheral/pm/plib_pm.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1939752287/plib_port.o: ../src/config/sam_l10_xpro/peripheral/port/plib_port.c  .generated_files/flags/sam_l10_xpro/132348acb7c9e8ac7f32da6c7858045c9f172699 .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1939752287" 
	@${RM} ${OBJECTDIR}/_ext/1939752287/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1939752287/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1939752287/plib_port.o.d" -o ${OBJECTDIR}/_ext/1939752287/plib_port.o ../src/config/sam_l10_xpro/peripheral/port/plib_port.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1757905205/plib_sercom0_i2c_master.o: ../src/config/sam_l10_xpro/peripheral/sercom/i2c_master/plib_sercom0_i2c_master.c  .generated_files/flags/sam_l10_xpro/d9b3914e7355ba222b4fdc0c675def4b1c913e3d .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1757905205" 
	@${RM} ${OBJECTDIR}/_ext/1757905205/plib_sercom0_i2c_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/1757905205/plib_sercom0_i2c_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1757905205/plib_sercom0_i2c_master.o.d" -o ${OBJECTDIR}/_ext/1757905205/plib_sercom0_i2c_master.o ../src/config/sam_l10_xpro/peripheral/sercom/i2c_master/plib_sercom0_i2c_master.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1911983158/xc32_monitor.o: ../src/config/sam_l10_xpro/stdio/xc32_monitor.c  .generated_files/flags/sam_l10_xpro/def2c1d013fe7d6bd9b88855416a7e1e33a271b3 .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1911983158" 
	@${RM} ${OBJECTDIR}/_ext/1911983158/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1911983158/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1911983158/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1911983158/xc32_monitor.o ../src/config/sam_l10_xpro/stdio/xc32_monitor.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/13305212/initialization.o: ../src/config/sam_l10_xpro/initialization.c  .generated_files/flags/sam_l10_xpro/774e46343da67424336820988c83c897f7aa9ef0 .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/13305212" 
	@${RM} ${OBJECTDIR}/_ext/13305212/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/13305212/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/13305212/initialization.o.d" -o ${OBJECTDIR}/_ext/13305212/initialization.o ../src/config/sam_l10_xpro/initialization.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/13305212/interrupts.o: ../src/config/sam_l10_xpro/interrupts.c  .generated_files/flags/sam_l10_xpro/31b5d0dd183d84ac639fe3e2f087ebe61d16cba9 .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/13305212" 
	@${RM} ${OBJECTDIR}/_ext/13305212/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/13305212/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/13305212/interrupts.o.d" -o ${OBJECTDIR}/_ext/13305212/interrupts.o ../src/config/sam_l10_xpro/interrupts.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/13305212/exceptions.o: ../src/config/sam_l10_xpro/exceptions.c  .generated_files/flags/sam_l10_xpro/99eda2f1e175a61cf37c33effafb519b247ef625 .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/13305212" 
	@${RM} ${OBJECTDIR}/_ext/13305212/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/13305212/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/13305212/exceptions.o.d" -o ${OBJECTDIR}/_ext/13305212/exceptions.o ../src/config/sam_l10_xpro/exceptions.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/13305212/startup_xc32.o: ../src/config/sam_l10_xpro/startup_xc32.c  .generated_files/flags/sam_l10_xpro/6a9399296f6e44ec0e0d830aa6163154073d3aaa .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/13305212" 
	@${RM} ${OBJECTDIR}/_ext/13305212/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/13305212/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/13305212/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/13305212/startup_xc32.o ../src/config/sam_l10_xpro/startup_xc32.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/13305212/libc_syscalls.o: ../src/config/sam_l10_xpro/libc_syscalls.c  .generated_files/flags/sam_l10_xpro/769cab80c52aca7e075dfa146140ba1dd23f6afd .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/13305212" 
	@${RM} ${OBJECTDIR}/_ext/13305212/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/13305212/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/13305212/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/13305212/libc_syscalls.o ../src/config/sam_l10_xpro/libc_syscalls.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/sam_l10_xpro/e675441e78776634d382c49535a6b1735ae23df0 .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
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
