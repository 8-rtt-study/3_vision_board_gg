################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../rt-thread/src/clock.c \
../rt-thread/src/components.c \
../rt-thread/src/idle.c \
../rt-thread/src/ipc.c \
../rt-thread/src/irq.c \
../rt-thread/src/kservice.c \
../rt-thread/src/memheap.c \
../rt-thread/src/mempool.c \
../rt-thread/src/object.c \
../rt-thread/src/scheduler_up.c \
../rt-thread/src/thread.c \
../rt-thread/src/timer.c 

OBJS += \
./rt-thread/src/clock.o \
./rt-thread/src/components.o \
./rt-thread/src/idle.o \
./rt-thread/src/ipc.o \
./rt-thread/src/irq.o \
./rt-thread/src/kservice.o \
./rt-thread/src/memheap.o \
./rt-thread/src/mempool.o \
./rt-thread/src/object.o \
./rt-thread/src/scheduler_up.o \
./rt-thread/src/thread.o \
./rt-thread/src/timer.o 

C_DEPS += \
./rt-thread/src/clock.d \
./rt-thread/src/components.d \
./rt-thread/src/idle.d \
./rt-thread/src/ipc.d \
./rt-thread/src/irq.d \
./rt-thread/src/kservice.d \
./rt-thread/src/memheap.d \
./rt-thread/src/mempool.d \
./rt-thread/src/object.d \
./rt-thread/src/scheduler_up.d \
./rt-thread/src/thread.d \
./rt-thread/src/timer.d 


# Each subdirectory must supply rules for building sources it contributes
rt-thread/src/%.o: ../rt-thread/src/%.c
	arm-none-eabi-gcc -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -march=armv8.1-m.main+mve.fp+fp.dp -O0 -ffunction-sections -fdata-sections -Wall  -g -gdwarf-2 -I"C:\RT-ThreadStudio\workspace\7vision_board_R7FA8D1BH" -I"C:\RT-ThreadStudio\workspace\7vision_board_R7FA8D1BH\board\ports" -I"C:\RT-ThreadStudio\workspace\7vision_board_R7FA8D1BH\board" -I"C:\RT-ThreadStudio\workspace\7vision_board_R7FA8D1BH\libraries\HAL_Drivers\config" -I"C:\RT-ThreadStudio\workspace\7vision_board_R7FA8D1BH\libraries\HAL_Drivers" -I"C:\RT-ThreadStudio\workspace\7vision_board_R7FA8D1BH\ra\arm\CMSIS_5\CMSIS\Core\Include" -I"C:\RT-ThreadStudio\workspace\7vision_board_R7FA8D1BH\ra\fsp\inc\api" -I"C:\RT-ThreadStudio\workspace\7vision_board_R7FA8D1BH\ra\fsp\inc\instances" -I"C:\RT-ThreadStudio\workspace\7vision_board_R7FA8D1BH\ra\fsp\inc" -I"C:\RT-ThreadStudio\workspace\7vision_board_R7FA8D1BH\ra_cfg\fsp_cfg\bsp" -I"C:\RT-ThreadStudio\workspace\7vision_board_R7FA8D1BH\ra_cfg\fsp_cfg" -I"C:\RT-ThreadStudio\workspace\7vision_board_R7FA8D1BH\ra_gen" -I"C:\RT-ThreadStudio\workspace\7vision_board_R7FA8D1BH\rt-thread\components\drivers\include" -I"C:\RT-ThreadStudio\workspace\7vision_board_R7FA8D1BH\rt-thread\components\finsh" -I"C:\RT-ThreadStudio\workspace\7vision_board_R7FA8D1BH\rt-thread\components\libc\compilers\common\include" -I"C:\RT-ThreadStudio\workspace\7vision_board_R7FA8D1BH\rt-thread\components\libc\compilers\newlib" -I"C:\RT-ThreadStudio\workspace\7vision_board_R7FA8D1BH\rt-thread\components\libc\posix\io\epoll" -I"C:\RT-ThreadStudio\workspace\7vision_board_R7FA8D1BH\rt-thread\components\libc\posix\io\eventfd" -I"C:\RT-ThreadStudio\workspace\7vision_board_R7FA8D1BH\rt-thread\components\libc\posix\io\poll" -I"C:\RT-ThreadStudio\workspace\7vision_board_R7FA8D1BH\rt-thread\components\libc\posix\ipc" -I"C:\RT-ThreadStudio\workspace\7vision_board_R7FA8D1BH\rt-thread\include" -I"C:\RT-ThreadStudio\workspace\7vision_board_R7FA8D1BH\rt-thread\libcpu\arm\common" -I"C:\RT-ThreadStudio\workspace\7vision_board_R7FA8D1BH\rt-thread\libcpu\arm\cortex-m85" -include"C:\RT-ThreadStudio\workspace\7vision_board_R7FA8D1BH\rtconfig_preinc.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

