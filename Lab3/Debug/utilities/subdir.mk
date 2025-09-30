################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../utilities/fsl_assert.c 

C_DEPS += \
./utilities/fsl_assert.d 

OBJS += \
./utilities/fsl_assert.o 


# Each subdirectory must supply rules for building sources it contributes
utilities/%.o: ../utilities/%.c utilities/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DCPU_LPC55S69JBD100 -DCPU_LPC55S69JBD100_cm33 -DCPU_LPC55S69JBD100_cm33_core0 -DSERIAL_PORT_TYPE_UART=1 -DSDK_DEBUGCONSOLE=0 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"C:\MCUExpresso files\Lab3\board" -I"C:\MCUExpresso files\Lab3\source" -I"C:\MCUExpresso files\Lab3\utilities\debug_console" -I"C:\MCUExpresso files\Lab3\utilities\debug_console\config" -I"C:\MCUExpresso files\Lab3\drivers" -I"C:\MCUExpresso files\Lab3\component\uart" -I"C:\MCUExpresso files\Lab3\component\serial_manager" -I"C:\MCUExpresso files\Lab3\utilities\str" -I"C:\MCUExpresso files\Lab3\device" -I"C:\MCUExpresso files\Lab3\device\periph" -I"C:\MCUExpresso files\Lab3\CMSIS" -I"C:\MCUExpresso files\Lab3\CMSIS\m-profile" -I"C:\MCUExpresso files\Lab3\component\lists" -I"C:\MCUExpresso files\Lab3\utilities" -O0 -fno-common -g3 -gdwarf-4 -Wall -c -ffunction-sections -fdata-sections -fno-builtin -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m33 -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-utilities

clean-utilities:
	-$(RM) ./utilities/fsl_assert.d ./utilities/fsl_assert.o

.PHONY: clean-utilities

