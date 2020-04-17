################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
E:/Program\ Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6/platform/Device/SiliconLabs/EFM32HG/Source/system_efm32hg.c 

S_UPPER_SRCS += \
E:/Program\ Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6/platform/Device/SiliconLabs/EFM32HG/Source/GCC/startup_efm32hg.S 

OBJS += \
./CMSIS/EFM32HG/startup_efm32hg.o \
./CMSIS/EFM32HG/system_efm32hg.o 

C_DEPS += \
./CMSIS/EFM32HG/system_efm32hg.d 


# Each subdirectory must supply rules for building sources it contributes
CMSIS/EFM32HG/startup_efm32hg.o: E:/Program\ Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6/platform/Device/SiliconLabs/EFM32HG/Source/GCC/startup_efm32hg.S
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM Assembler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m0plus -mthumb -c -x assembler-with-cpp -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//platform/emlib/inc" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//platform/CMSIS/Include" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//hardware/kit/common/bsp" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//platform/Device/SiliconLabs/EFM32HG/Include" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//hardware/kit/common/drivers" '-DEFM32HG322F64=1' -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

CMSIS/EFM32HG/system_efm32hg.o: E:/Program\ Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6/platform/Device/SiliconLabs/EFM32HG/Source/system_efm32hg.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32HG322F64=1' -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//platform/emlib/inc" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//platform/emlib/src" -I"E:\Program Files\simplicitystudio\developer\toolchains\gnu_arm\7.2_2017q4\/arm-none-eabi/include" -I"E:\GOOGLE_DRIVE\SCHOOL 2019-2020\Embedded-Systems-II-Lab\Embedded_II_ICM_20948\sensorfusion" -I"E:\GOOGLE_DRIVE\SCHOOL 2019-2020\Embedded-Systems-II-Lab\Embedded_II_ICM_20948\Comm" -I"E:\GOOGLE_DRIVE\SCHOOL 2019-2020\Embedded-Systems-II-Lab\Embedded_II_ICM_20948\delay" -I"E:\GOOGLE_DRIVE\SCHOOL 2019-2020\Embedded-Systems-II-Lab\Embedded_II_ICM_20948\adc" -I"E:\GOOGLE_DRIVE\SCHOOL 2019-2020\Embedded-Systems-II-Lab\Embedded_II_ICM_20948\inc" -I"E:\GOOGLE_DRIVE\SCHOOL 2019-2020\Embedded-Systems-II-Lab\Embedded_II_ICM_20948\interrupt" -I"E:\GOOGLE_DRIVE\SCHOOL 2019-2020\Embedded-Systems-II-Lab\Embedded_II_ICM_20948\dbprint" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//app/mcu_example/SLSTK3400A_EFM32HG/powertest" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//platform/emdrv/common/inc" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//platform/emdrv/rtcdrv/inc" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//platform/emdrv" -I"E:\GOOGLE_DRIVE\SCHOOL 2019-2020\Embedded-Systems-II-Lab\Embedded_II_ICM_20948\emlib" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//platform/CMSIS/Include" -I"E:\GOOGLE_DRIVE\SCHOOL 2019-2020\Embedded-Systems-II-Lab\Embedded_II_ICM_20948\ICM_20948" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//hardware/kit/common/bsp" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//platform/Device/SiliconLabs/EFM32HG/Include" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//hardware/kit/common/drivers" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\hardware\kit\common\bsp" -I"E:\GOOGLE_DRIVE\SCHOOL 2019-2020\Masterproef\ARM Programming\Masterproef_Sensor_Node_Code\BSP" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\hardware\kit\SLSTK3400A_EFM32HG\config" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"CMSIS/EFM32HG/system_efm32hg.d" -MT"CMSIS/EFM32HG/system_efm32hg.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


