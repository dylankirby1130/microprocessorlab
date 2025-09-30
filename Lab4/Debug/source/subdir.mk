################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../source/Lab4.c \
../source/semihost_hardfault.c 

C_DEPS += \
./source/Lab4.d \
./source/semihost_hardfault.d 

OBJS += \
./source/Lab4.o \
./source/semihost_hardfault.o 


# Each subdirectory must supply rules for building sources it contributes
source/%.o: ../source/%.c source/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -DCPU_LPC55S69JBD100 -DCPU_LPC55S69JBD100_cm33 -DCPU_LPC55S69JBD100_cm33_core0 -DSERIAL_PORT_TYPE_UART=1 -DSDK_DEBUGCONSOLE=0 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -D__REDLIB__ -I"C:\MCUExpresso files\Lab4\board" -I"C:\MCUExpresso files\Lab4\source" -I"C:\MCUExpresso files\Lab4\utilities\debug_console" -I"C:\MCUExpresso files\Lab4\utilities\debug_console\config" -I"C:\MCUExpresso files\Lab4\drivers" -I"C:\MCUExpresso files\Lab4\component\uart" -I"C:\MCUExpresso files\Lab4\component\serial_manager" -I"C:\MCUExpresso files\Lab4\utilities\str" -I"C:\MCUExpresso files\Lab4\device" -I"C:\MCUExpresso files\Lab4\device\periph" -I"C:\MCUExpresso files\Lab4\CMSIS" -I"C:\MCUExpresso files\Lab4\CMSIS\m-profile" -I"C:\MCUExpresso files\Lab4\component\lists" -I"C:\MCUExpresso files\Lab4\utilities" -O0 -fno-common -g3 -gdwarf-4 -Wall -c -ffunction-sections -fdata-sections -fno-builtin -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m33 -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-source

clean-source:
	-$(RM) ./source/Lab4.d ./source/Lab4.o ./source/semihost_hardfault.d ./source/semihost_hardfault.o

.PHONY: clean-source

