################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/simon.c 

OBJS += \
./src/simon.o 

C_DEPS += \
./src/simon.d 


# Each subdirectory must supply rules for building sources it contributes
src/simon.o: ../src/simon.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DDEBUG_EFM=1' '-DEFM32HG322F64=1' -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/SLSTK3400A_EFM32HG/config" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.7//platform/CMSIS/Include" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.7//platform/emlib/inc" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/bsp" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.7//platform/Device/SiliconLabs/EFM32HG/Include" -I"C:\Users\Nieuls\SimplicityStudio\v4_workspace\SLSTK3400A_blink\Comm" -I"C:\Users\Nieuls\SimplicityStudio\v4_workspace\SLSTK3400A_blink\dbprint" -I"C:\Users\Nieuls\SimplicityStudio\v4_workspace\SLSTK3400A_blink\delay" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"src/simon.d" -MT"src/simon.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


