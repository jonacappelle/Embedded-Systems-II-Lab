################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/subdir.mk
-include sensorfusion/subdir.mk
-include interrupt/subdir.mk
-include inc/subdir.mk
-include emlib/subdir.mk
-include delay/subdir.mk
-include dbprint/subdir.mk
-include adc/subdir.mk
-include ICM_20948/subdir.mk
-include Comm/subdir.mk
-include CMSIS/EFM32HG/subdir.mk
-include BSP/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: Embedded_II_ICM_20948.axf

# Tool invocations
Embedded_II_ICM_20948.axf: echo_path $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: GNU ARM C Linker'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m0plus -mthumb -T "Embedded_II_ICM_20948.ld" -Xlinker --gc-sections -Xlinker -Map="Embedded_II_ICM_20948.map" --specs=nano.specs -o Embedded_II_ICM_20948.axf "./src/main.o" "./sensorfusion/MadgwickAHRS.o" "./interrupt/interrupt.o" "./emlib/em_adc.o" "./emlib/em_assert.o" "./emlib/em_cmu.o" "./emlib/em_core.o" "./emlib/em_emu.o" "./emlib/em_gpio.o" "./emlib/em_i2c.o" "./emlib/em_rtc.o" "./emlib/em_system.o" "./emlib/em_usart.o" "./emlib/i2cspm.o" "./emlib/rtcdriver.o" "./delay/delay.o" "./delay/timer.o" "./dbprint/dbprint.o" "./Comm/I2C.o" "./CMSIS/EFM32HG/startup_efm32hg.o" "./CMSIS/EFM32HG/system_efm32hg.o" -lm "./BSP/bsp_stk_leds.o" "./ICM_20948/ICM20948.o" "./adc/adc.o" "./inc/util.o" -Wl,--start-group -lgcc -lc -lnosys -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

	@echo 'Building hex file: Embedded_II_ICM_20948.hex'
	arm-none-eabi-objcopy -O ihex "Embedded_II_ICM_20948.axf" "Embedded_II_ICM_20948.hex"
	@echo ' '

	@echo 'Building bin file: Embedded_II_ICM_20948.bin'
	arm-none-eabi-objcopy -O binary "Embedded_II_ICM_20948.axf" "Embedded_II_ICM_20948.bin"
	@echo ' '

	@echo 'Building s37 file: Embedded_II_ICM_20948.s37'
	arm-none-eabi-objcopy -O srec "Embedded_II_ICM_20948.axf" "Embedded_II_ICM_20948.s37"
	@echo ' '

	@echo 'Running size tool'
	arm-none-eabi-size "Embedded_II_ICM_20948.axf"
	@echo ' '

# Other Targets
clean:
	-$(RM) $(EXECUTABLES)$(OBJS)$(C_DEPS) Embedded_II_ICM_20948.axf
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
# echo the path
echo_path:
	@echo PATH=$$PATH
	@echo ' '

