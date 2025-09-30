################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../startup/boot_multicore_slave.c \
../startup/startup_lpc55s69_cm33_core0.c 

C_DEPS += \
./startup/boot_multicore_slave.d \
./startup/startup_lpc55s69_cm33_core0.d 

OBJS += \
./startup/boot_multicore_slave.o \
./startup/startup_lpc55s69_cm33_core0.o 


# Each subdirectory must supply rules for building sources it contributes
startup/%.o: ../startup/%.c startup/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -DCPU_LPC55S69JBD100 -DCPU_LPC55S69JBD100_cm33 -DCPU_LPC55S69JBD100_cm33_core0 -DSERIAL_PORT_TYPE_UART=1 -DSDK_DEBUGCONSOLE=0 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -D__REDLIB__ -I"C:\MCUExpresso files\LPC55S69_Project_lab3\board" -I"C:\MCUExpresso files\LPC55S69_Project_lab3\source" -I"C:\MCUExpresso files\LPC55S69_Project_lab3\utilities\debug_console" -I"C:\MCUExpresso files\LPC55S69_Project_lab3\utilities\debug_console\config" -I"C:\MCUExpresso files\LPC55S69_Project_lab3\drivers" -I"C:\MCUExpresso files\LPC55S69_Project_lab3\component\uart" -I"C:\MCUExpresso files\LPC55S69_Project_lab3\component\serial_manager" -I"C:\MCUExpresso files\LPC55S69_Project_lab3\utilities\str" -I"C:\MCUExpresso files\LPC55S69_Project_lab3\device" -I"C:\MCUExpresso files\LPC55S69_Project_lab3\device\periph" -I"C:\MCUExpresso files\LPC55S69_Project_lab3\CMSIS" -I"C:\MCUExpresso files\LPC55S69_Project_lab3\CMSIS\m-profile" -I"C:\MCUExpresso files\LPC55S69_Project_lab3\component\lists" -I"C:\MCUExpresso files\LPC55S69_Project_lab3\utilities" -O0 -fno-common -g3 -gdwarf-4 -Wall -c -ffunction-sections -fdata-sections -fno-builtin -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m33 -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-startup

clean-startup:
	-$(RM) ./startup/boot_multicore_slave.d ./startup/boot_multicore_slave.o ./startup/startup_lpc55s69_cm33_core0.d ./startup/startup_lpc55s69_cm33_core0.o

.PHONY: clean-startup

