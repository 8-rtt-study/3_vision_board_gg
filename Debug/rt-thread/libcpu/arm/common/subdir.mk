################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../rt-thread/libcpu/arm/common/atomic_arm.c \
../rt-thread/libcpu/arm/common/div0.c \
../rt-thread/libcpu/arm/common/showmem.c 

OBJS += \
./rt-thread/libcpu/arm/common/atomic_arm.o \
./rt-thread/libcpu/arm/common/div0.o \
./rt-thread/libcpu/arm/common/showmem.o 

C_DEPS += \
./rt-thread/libcpu/arm/common/atomic_arm.d \
./rt-thread/libcpu/arm/common/div0.d \
./rt-thread/libcpu/arm/common/showmem.d 


# Each subdirectory must supply rules for building sources it contributes
rt-thread/libcpu/arm/common/%.o: ../rt-thread/libcpu/arm/common/%.c
	arm-none-eabi-gcc -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -march=armv8.1-m.main+mve.fp+fp.dp -O0 -ffunction-sections -fdata-sections -Wall  -g -gdwarf-2 -I"C:\RT-ThreadStudio\workspace\7vision_board_R7FA8D1BH" -I"C:\RT-ThreadStudio\workspace\7vision_board_R7FA8D1BH\board\ports" -I"C:\RT-ThreadStudio\workspace\7vision_board_R7FA8D1BH\board" -I"C:\RT-ThreadStudio\workspace\7vision_board_R7FA8D1BH\libraries\HAL_Drivers\config" -I"C:\RT-ThreadStudio\workspace\7vision_board_R7FA8D1BH\libraries\HAL_Drivers" -I"C:\RT-ThreadStudio\workspace\7vision_board_R7FA8D1BH\ra\arm\CMSIS_5\CMSIS\Core\Include" -I"C:\RT-ThreadStudio\workspace\7vision_board_R7FA8D1BH\ra\fsp\inc\api" -I"C:\RT-ThreadStudio\workspace\7vision_board_R7FA8D1BH\ra\fsp\inc\instances" -I"C:\RT-ThreadStudio\workspace\7vision_board_R7FA8D1BH\ra\fsp\inc" -I"C:\RT-ThreadStudio\workspace\7vision_board_R7FA8D1BH\ra_cfg\fsp_cfg\bsp" -I"C:\RT-ThreadStudio\workspace\7vision_board_R7FA8D1BH\ra_cfg\fsp_cfg" -I"C:\RT-ThreadStudio\workspace\7vision_board_R7FA8D1BH\ra_gen" -I"C:\RT-ThreadStudio\workspace\7vision_board_R7FA8D1BH\rt-thread\components\drivers\include" -I"C:\RT-ThreadStudio\workspace\7vision_board_R7FA8D1BH\rt-thread\components\finsh" -I"C:\RT-ThreadStudio\workspace\7vision_board_R7FA8D1BH\rt-thread\components\libc\compilers\common\include" -I"C:\RT-ThreadStudio\workspace\7vision_board_R7FA8D1BH\rt-thread\components\libc\compilers\newlib" -I"C:\RT-ThreadStudio\workspace\7vision_board_R7FA8D1BH\rt-thread\components\libc\posix\io\epoll" -I"C:\RT-ThreadStudio\workspace\7vision_board_R7FA8D1BH\rt-thread\components\libc\posix\io\eventfd" -I"C:\RT-ThreadStudio\workspace\7vision_board_R7FA8D1BH\rt-thread\components\libc\posix\io\poll" -I"C:\RT-ThreadStudio\workspace\7vision_board_R7FA8D1BH\rt-thread\components\libc\posix\ipc" -I"C:\RT-ThreadStudio\workspace\7vision_board_R7FA8D1BH\rt-thread\include" -I"C:\RT-ThreadStudio\workspace\7vision_board_R7FA8D1BH\rt-thread\libcpu\arm\common" -I"C:\RT-ThreadStudio\workspace\7vision_board_R7FA8D1BH\rt-thread\libcpu\arm\cortex-m85" -include"C:\RT-ThreadStudio\workspace\7vision_board_R7FA8D1BH\rtconfig_preinc.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

