################################################################################
# MRS Version: 1.9.0
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
D:/Study/CH32V307/EVT/EXAM/SRC/Peripheral/src/ch32v30x_adc.c \
D:/Study/CH32V307/EVT/EXAM/SRC/Peripheral/src/ch32v30x_bkp.c \
D:/Study/CH32V307/EVT/EXAM/SRC/Peripheral/src/ch32v30x_can.c \
D:/Study/CH32V307/EVT/EXAM/SRC/Peripheral/src/ch32v30x_crc.c \
D:/Study/CH32V307/EVT/EXAM/SRC/Peripheral/src/ch32v30x_dac.c \
D:/Study/CH32V307/EVT/EXAM/SRC/Peripheral/src/ch32v30x_dbgmcu.c \
D:/Study/CH32V307/EVT/EXAM/SRC/Peripheral/src/ch32v30x_dma.c \
D:/Study/CH32V307/EVT/EXAM/SRC/Peripheral/src/ch32v30x_dvp.c \
D:/Study/CH32V307/EVT/EXAM/SRC/Peripheral/src/ch32v30x_eth.c \
D:/Study/CH32V307/EVT/EXAM/SRC/Peripheral/src/ch32v30x_exti.c \
D:/Study/CH32V307/EVT/EXAM/SRC/Peripheral/src/ch32v30x_flash.c \
D:/Study/CH32V307/EVT/EXAM/SRC/Peripheral/src/ch32v30x_fsmc.c \
D:/Study/CH32V307/EVT/EXAM/SRC/Peripheral/src/ch32v30x_gpio.c \
D:/Study/CH32V307/EVT/EXAM/SRC/Peripheral/src/ch32v30x_i2c.c \
D:/Study/CH32V307/EVT/EXAM/SRC/Peripheral/src/ch32v30x_iwdg.c \
D:/Study/CH32V307/EVT/EXAM/SRC/Peripheral/src/ch32v30x_misc.c \
D:/Study/CH32V307/EVT/EXAM/SRC/Peripheral/src/ch32v30x_opa.c \
D:/Study/CH32V307/EVT/EXAM/SRC/Peripheral/src/ch32v30x_pwr.c \
D:/Study/CH32V307/EVT/EXAM/SRC/Peripheral/src/ch32v30x_rcc.c \
D:/Study/CH32V307/EVT/EXAM/SRC/Peripheral/src/ch32v30x_rng.c \
D:/Study/CH32V307/EVT/EXAM/SRC/Peripheral/src/ch32v30x_rtc.c \
D:/Study/CH32V307/EVT/EXAM/SRC/Peripheral/src/ch32v30x_sdio.c \
D:/Study/CH32V307/EVT/EXAM/SRC/Peripheral/src/ch32v30x_spi.c \
D:/Study/CH32V307/EVT/EXAM/SRC/Peripheral/src/ch32v30x_tim.c \
D:/Study/CH32V307/EVT/EXAM/SRC/Peripheral/src/ch32v30x_usart.c \
D:/Study/CH32V307/EVT/EXAM/SRC/Peripheral/src/ch32v30x_wwdg.c 

OBJS += \
./Peripheral/src/ch32v30x_adc.o \
./Peripheral/src/ch32v30x_bkp.o \
./Peripheral/src/ch32v30x_can.o \
./Peripheral/src/ch32v30x_crc.o \
./Peripheral/src/ch32v30x_dac.o \
./Peripheral/src/ch32v30x_dbgmcu.o \
./Peripheral/src/ch32v30x_dma.o \
./Peripheral/src/ch32v30x_dvp.o \
./Peripheral/src/ch32v30x_eth.o \
./Peripheral/src/ch32v30x_exti.o \
./Peripheral/src/ch32v30x_flash.o \
./Peripheral/src/ch32v30x_fsmc.o \
./Peripheral/src/ch32v30x_gpio.o \
./Peripheral/src/ch32v30x_i2c.o \
./Peripheral/src/ch32v30x_iwdg.o \
./Peripheral/src/ch32v30x_misc.o \
./Peripheral/src/ch32v30x_opa.o \
./Peripheral/src/ch32v30x_pwr.o \
./Peripheral/src/ch32v30x_rcc.o \
./Peripheral/src/ch32v30x_rng.o \
./Peripheral/src/ch32v30x_rtc.o \
./Peripheral/src/ch32v30x_sdio.o \
./Peripheral/src/ch32v30x_spi.o \
./Peripheral/src/ch32v30x_tim.o \
./Peripheral/src/ch32v30x_usart.o \
./Peripheral/src/ch32v30x_wwdg.o 

C_DEPS += \
./Peripheral/src/ch32v30x_adc.d \
./Peripheral/src/ch32v30x_bkp.d \
./Peripheral/src/ch32v30x_can.d \
./Peripheral/src/ch32v30x_crc.d \
./Peripheral/src/ch32v30x_dac.d \
./Peripheral/src/ch32v30x_dbgmcu.d \
./Peripheral/src/ch32v30x_dma.d \
./Peripheral/src/ch32v30x_dvp.d \
./Peripheral/src/ch32v30x_eth.d \
./Peripheral/src/ch32v30x_exti.d \
./Peripheral/src/ch32v30x_flash.d \
./Peripheral/src/ch32v30x_fsmc.d \
./Peripheral/src/ch32v30x_gpio.d \
./Peripheral/src/ch32v30x_i2c.d \
./Peripheral/src/ch32v30x_iwdg.d \
./Peripheral/src/ch32v30x_misc.d \
./Peripheral/src/ch32v30x_opa.d \
./Peripheral/src/ch32v30x_pwr.d \
./Peripheral/src/ch32v30x_rcc.d \
./Peripheral/src/ch32v30x_rng.d \
./Peripheral/src/ch32v30x_rtc.d \
./Peripheral/src/ch32v30x_sdio.d \
./Peripheral/src/ch32v30x_spi.d \
./Peripheral/src/ch32v30x_tim.d \
./Peripheral/src/ch32v30x_usart.d \
./Peripheral/src/ch32v30x_wwdg.d 


# Each subdirectory must supply rules for building sources it contributes
Peripheral/src/ch32v30x_adc.o: D:/Study/CH32V307/EVT/EXAM/SRC/Peripheral/src/ch32v30x_adc.c
	@	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"D:\Study\CH32V307\EVT\EXAM\SRC\Debug" -I"D:\Study\CH32V307\EVT\EXAM\SRC\Core" -I"D:\Study\CH32V307\EVT\EXAM\USART\USART_Polling\User" -I"D:\Study\CH32V307\EVT\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v30x_bkp.o: D:/Study/CH32V307/EVT/EXAM/SRC/Peripheral/src/ch32v30x_bkp.c
	@	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"D:\Study\CH32V307\EVT\EXAM\SRC\Debug" -I"D:\Study\CH32V307\EVT\EXAM\SRC\Core" -I"D:\Study\CH32V307\EVT\EXAM\USART\USART_Polling\User" -I"D:\Study\CH32V307\EVT\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v30x_can.o: D:/Study/CH32V307/EVT/EXAM/SRC/Peripheral/src/ch32v30x_can.c
	@	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"D:\Study\CH32V307\EVT\EXAM\SRC\Debug" -I"D:\Study\CH32V307\EVT\EXAM\SRC\Core" -I"D:\Study\CH32V307\EVT\EXAM\USART\USART_Polling\User" -I"D:\Study\CH32V307\EVT\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v30x_crc.o: D:/Study/CH32V307/EVT/EXAM/SRC/Peripheral/src/ch32v30x_crc.c
	@	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"D:\Study\CH32V307\EVT\EXAM\SRC\Debug" -I"D:\Study\CH32V307\EVT\EXAM\SRC\Core" -I"D:\Study\CH32V307\EVT\EXAM\USART\USART_Polling\User" -I"D:\Study\CH32V307\EVT\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v30x_dac.o: D:/Study/CH32V307/EVT/EXAM/SRC/Peripheral/src/ch32v30x_dac.c
	@	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"D:\Study\CH32V307\EVT\EXAM\SRC\Debug" -I"D:\Study\CH32V307\EVT\EXAM\SRC\Core" -I"D:\Study\CH32V307\EVT\EXAM\USART\USART_Polling\User" -I"D:\Study\CH32V307\EVT\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v30x_dbgmcu.o: D:/Study/CH32V307/EVT/EXAM/SRC/Peripheral/src/ch32v30x_dbgmcu.c
	@	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"D:\Study\CH32V307\EVT\EXAM\SRC\Debug" -I"D:\Study\CH32V307\EVT\EXAM\SRC\Core" -I"D:\Study\CH32V307\EVT\EXAM\USART\USART_Polling\User" -I"D:\Study\CH32V307\EVT\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v30x_dma.o: D:/Study/CH32V307/EVT/EXAM/SRC/Peripheral/src/ch32v30x_dma.c
	@	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"D:\Study\CH32V307\EVT\EXAM\SRC\Debug" -I"D:\Study\CH32V307\EVT\EXAM\SRC\Core" -I"D:\Study\CH32V307\EVT\EXAM\USART\USART_Polling\User" -I"D:\Study\CH32V307\EVT\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v30x_dvp.o: D:/Study/CH32V307/EVT/EXAM/SRC/Peripheral/src/ch32v30x_dvp.c
	@	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"D:\Study\CH32V307\EVT\EXAM\SRC\Debug" -I"D:\Study\CH32V307\EVT\EXAM\SRC\Core" -I"D:\Study\CH32V307\EVT\EXAM\USART\USART_Polling\User" -I"D:\Study\CH32V307\EVT\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v30x_eth.o: D:/Study/CH32V307/EVT/EXAM/SRC/Peripheral/src/ch32v30x_eth.c
	@	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"D:\Study\CH32V307\EVT\EXAM\SRC\Debug" -I"D:\Study\CH32V307\EVT\EXAM\SRC\Core" -I"D:\Study\CH32V307\EVT\EXAM\USART\USART_Polling\User" -I"D:\Study\CH32V307\EVT\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v30x_exti.o: D:/Study/CH32V307/EVT/EXAM/SRC/Peripheral/src/ch32v30x_exti.c
	@	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"D:\Study\CH32V307\EVT\EXAM\SRC\Debug" -I"D:\Study\CH32V307\EVT\EXAM\SRC\Core" -I"D:\Study\CH32V307\EVT\EXAM\USART\USART_Polling\User" -I"D:\Study\CH32V307\EVT\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v30x_flash.o: D:/Study/CH32V307/EVT/EXAM/SRC/Peripheral/src/ch32v30x_flash.c
	@	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"D:\Study\CH32V307\EVT\EXAM\SRC\Debug" -I"D:\Study\CH32V307\EVT\EXAM\SRC\Core" -I"D:\Study\CH32V307\EVT\EXAM\USART\USART_Polling\User" -I"D:\Study\CH32V307\EVT\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v30x_fsmc.o: D:/Study/CH32V307/EVT/EXAM/SRC/Peripheral/src/ch32v30x_fsmc.c
	@	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"D:\Study\CH32V307\EVT\EXAM\SRC\Debug" -I"D:\Study\CH32V307\EVT\EXAM\SRC\Core" -I"D:\Study\CH32V307\EVT\EXAM\USART\USART_Polling\User" -I"D:\Study\CH32V307\EVT\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v30x_gpio.o: D:/Study/CH32V307/EVT/EXAM/SRC/Peripheral/src/ch32v30x_gpio.c
	@	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"D:\Study\CH32V307\EVT\EXAM\SRC\Debug" -I"D:\Study\CH32V307\EVT\EXAM\SRC\Core" -I"D:\Study\CH32V307\EVT\EXAM\USART\USART_Polling\User" -I"D:\Study\CH32V307\EVT\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v30x_i2c.o: D:/Study/CH32V307/EVT/EXAM/SRC/Peripheral/src/ch32v30x_i2c.c
	@	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"D:\Study\CH32V307\EVT\EXAM\SRC\Debug" -I"D:\Study\CH32V307\EVT\EXAM\SRC\Core" -I"D:\Study\CH32V307\EVT\EXAM\USART\USART_Polling\User" -I"D:\Study\CH32V307\EVT\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v30x_iwdg.o: D:/Study/CH32V307/EVT/EXAM/SRC/Peripheral/src/ch32v30x_iwdg.c
	@	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"D:\Study\CH32V307\EVT\EXAM\SRC\Debug" -I"D:\Study\CH32V307\EVT\EXAM\SRC\Core" -I"D:\Study\CH32V307\EVT\EXAM\USART\USART_Polling\User" -I"D:\Study\CH32V307\EVT\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v30x_misc.o: D:/Study/CH32V307/EVT/EXAM/SRC/Peripheral/src/ch32v30x_misc.c
	@	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"D:\Study\CH32V307\EVT\EXAM\SRC\Debug" -I"D:\Study\CH32V307\EVT\EXAM\SRC\Core" -I"D:\Study\CH32V307\EVT\EXAM\USART\USART_Polling\User" -I"D:\Study\CH32V307\EVT\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v30x_opa.o: D:/Study/CH32V307/EVT/EXAM/SRC/Peripheral/src/ch32v30x_opa.c
	@	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"D:\Study\CH32V307\EVT\EXAM\SRC\Debug" -I"D:\Study\CH32V307\EVT\EXAM\SRC\Core" -I"D:\Study\CH32V307\EVT\EXAM\USART\USART_Polling\User" -I"D:\Study\CH32V307\EVT\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v30x_pwr.o: D:/Study/CH32V307/EVT/EXAM/SRC/Peripheral/src/ch32v30x_pwr.c
	@	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"D:\Study\CH32V307\EVT\EXAM\SRC\Debug" -I"D:\Study\CH32V307\EVT\EXAM\SRC\Core" -I"D:\Study\CH32V307\EVT\EXAM\USART\USART_Polling\User" -I"D:\Study\CH32V307\EVT\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v30x_rcc.o: D:/Study/CH32V307/EVT/EXAM/SRC/Peripheral/src/ch32v30x_rcc.c
	@	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"D:\Study\CH32V307\EVT\EXAM\SRC\Debug" -I"D:\Study\CH32V307\EVT\EXAM\SRC\Core" -I"D:\Study\CH32V307\EVT\EXAM\USART\USART_Polling\User" -I"D:\Study\CH32V307\EVT\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v30x_rng.o: D:/Study/CH32V307/EVT/EXAM/SRC/Peripheral/src/ch32v30x_rng.c
	@	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"D:\Study\CH32V307\EVT\EXAM\SRC\Debug" -I"D:\Study\CH32V307\EVT\EXAM\SRC\Core" -I"D:\Study\CH32V307\EVT\EXAM\USART\USART_Polling\User" -I"D:\Study\CH32V307\EVT\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v30x_rtc.o: D:/Study/CH32V307/EVT/EXAM/SRC/Peripheral/src/ch32v30x_rtc.c
	@	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"D:\Study\CH32V307\EVT\EXAM\SRC\Debug" -I"D:\Study\CH32V307\EVT\EXAM\SRC\Core" -I"D:\Study\CH32V307\EVT\EXAM\USART\USART_Polling\User" -I"D:\Study\CH32V307\EVT\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v30x_sdio.o: D:/Study/CH32V307/EVT/EXAM/SRC/Peripheral/src/ch32v30x_sdio.c
	@	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"D:\Study\CH32V307\EVT\EXAM\SRC\Debug" -I"D:\Study\CH32V307\EVT\EXAM\SRC\Core" -I"D:\Study\CH32V307\EVT\EXAM\USART\USART_Polling\User" -I"D:\Study\CH32V307\EVT\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v30x_spi.o: D:/Study/CH32V307/EVT/EXAM/SRC/Peripheral/src/ch32v30x_spi.c
	@	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"D:\Study\CH32V307\EVT\EXAM\SRC\Debug" -I"D:\Study\CH32V307\EVT\EXAM\SRC\Core" -I"D:\Study\CH32V307\EVT\EXAM\USART\USART_Polling\User" -I"D:\Study\CH32V307\EVT\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v30x_tim.o: D:/Study/CH32V307/EVT/EXAM/SRC/Peripheral/src/ch32v30x_tim.c
	@	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"D:\Study\CH32V307\EVT\EXAM\SRC\Debug" -I"D:\Study\CH32V307\EVT\EXAM\SRC\Core" -I"D:\Study\CH32V307\EVT\EXAM\USART\USART_Polling\User" -I"D:\Study\CH32V307\EVT\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v30x_usart.o: D:/Study/CH32V307/EVT/EXAM/SRC/Peripheral/src/ch32v30x_usart.c
	@	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"D:\Study\CH32V307\EVT\EXAM\SRC\Debug" -I"D:\Study\CH32V307\EVT\EXAM\SRC\Core" -I"D:\Study\CH32V307\EVT\EXAM\USART\USART_Polling\User" -I"D:\Study\CH32V307\EVT\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v30x_wwdg.o: D:/Study/CH32V307/EVT/EXAM/SRC/Peripheral/src/ch32v30x_wwdg.c
	@	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"D:\Study\CH32V307\EVT\EXAM\SRC\Debug" -I"D:\Study\CH32V307\EVT\EXAM\SRC\Core" -I"D:\Study\CH32V307\EVT\EXAM\USART\USART_Polling\User" -I"D:\Study\CH32V307\EVT\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

