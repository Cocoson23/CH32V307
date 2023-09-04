################################################################################
# MRS Version: 1.9.0
# 自动生成的文件。不要编辑！
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include User/subdir.mk
-include Startup/subdir.mk
-include Peripheral/src/subdir.mk
-include Debug/subdir.mk
-include Core/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(ASM_UPPER_DEPS)),)
-include $(ASM_UPPER_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY_FLASH += \
LED_Controls.hex \

SECONDARY_LIST += \
LED_Controls.lst \

SECONDARY_SIZE += \
LED_Controls.siz \


# 所有目标
all: LED_Controls.elf secondary-outputs

# 工具调用
LED_Controls.elf: $(OBJS) $(USER_OBJS)
	@	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -T "D:\Study\CH32V307\Examples\LED_Controls\Ld\Link.ld" -nostartfiles -Xlinker --gc-sections -Wl,-Map,"LED_Controls.map" --specs=nano.specs --specs=nosys.specs -o "LED_Controls.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@	@
LED_Controls.hex: LED_Controls.elf
	@	riscv-none-embed-objcopy -O ihex "LED_Controls.elf"  "LED_Controls.hex"
	@	@
LED_Controls.lst: LED_Controls.elf
	@	riscv-none-embed-objdump --all-headers --demangle --disassemble -M xw "LED_Controls.elf" > "LED_Controls.lst"
	@	@
LED_Controls.siz: LED_Controls.elf
	@	riscv-none-embed-size --format=berkeley "LED_Controls.elf"
	@	@
# 其他目标
clean:
	-$(RM) $(ASM_UPPER_DEPS)$(OBJS)$(SECONDARY_FLASH)$(SECONDARY_LIST)$(SECONDARY_SIZE)$(ASM_DEPS)$(S_DEPS)$(S_UPPER_DEPS)$(C_DEPS) LED_Controls.elf
	-@
secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_LIST) $(SECONDARY_SIZE)

.PHONY: all clean dependents

-include ../makefile.targets
