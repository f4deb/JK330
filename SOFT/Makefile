# MPLAB IDE generated this makefile for use with GNU make.
# Project: TEST ELECTRONICAL_MAIN_BOARD_32.mcp
# Date: Fri Dec 13 19:06:47 2013

AS = pic32-as.exe
CC = pic32-gcc.exe
LD = pic32-ld.exe
AR = pic32-ar.exe
HX = pic32-bin2hex.exe
RM = rm

TEST\ ELECTRONICAL_MAIN_BOARD_32.hex : TEST\ ELECTRONICAL_MAIN_BOARD_32.elf
	$(HX) "TEST ELECTRONICAL_MAIN_BOARD_32.elf"

TEST\ ELECTRONICAL_MAIN_BOARD_32.elf : delay.o MainJK330.o serial.o printWriter.o
	$(CC) -mprocessor=32MX795F512H "delay.o" "MainJK330.o" "serial.o" "printWriter.o" -o"TEST ELECTRONICAL_MAIN_BOARD_32.elf" -Wl,--defsym=__MPLAB_BUILD=1,-Map="TEST ELECTRONICAL_MAIN_BOARD_32.map"

delay.o : common/delay/delay.c
	$(CC) -mprocessor=32MX795F512H -x c -c "common\delay\delay.c" -o"delay.o" -MMD -MF"delay.d" -I"C:\Program Files (x86)\Microchip\MPLAB C32 Suite\pic32mx\include\peripheral\legacy" -g

MainJK330.o : main/MainJK330.c main/MainJK330.h common/delay/delay.h setup/clockConstants.h common/io/outputStream.h common/io/buffer.h common/commons.h common/io/inputStream.h common/io/outputStream.h
	$(CC) -mprocessor=32MX795F512H -x c -c "main\MainJK330.c" -o"MainJK330.o" -MMD -MF"MainJK330.d" -I"C:\Program Files (x86)\Microchip\MPLAB C32 Suite\pic32mx\include\peripheral\legacy" -g

serial.o : common/serial/serial.c setup/clockConstants.h common/serial/serial.h
	$(CC) -mprocessor=32MX795F512H -x c -c "common\serial\serial.c" -o"serial.o" -MMD -MF"serial.d" -I"C:\Program Files (x86)\Microchip\MPLAB C32 Suite\pic32mx\include\peripheral\legacy" -g

printWriter.o : common/io/printWriter.c common/io/printWriter.h
	$(CC) -mprocessor=32MX795F512H -x c -c "common\io\printWriter.c" -o"printWriter.o" -MMD -MF"printWriter.d" -I"C:\Program Files (x86)\Microchip\MPLAB C32 Suite\pic32mx\include\peripheral\legacy" -g

clean : 
	$(RM) "delay.o" "MainJK330.o" "serial.o" "printWriter.o" "TEST ELECTRONICAL_MAIN_BOARD_32.elf" "TEST ELECTRONICAL_MAIN_BOARD_32.hex"

