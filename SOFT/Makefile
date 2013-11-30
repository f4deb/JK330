# MPLAB IDE generated this makefile for use with GNU make.
# Project: TEST ELECTRONICAL_MAIN_BOARD_32.mcp
# Date: Sat Nov 16 12:11:13 2013

AS = pic32-as.exe
CC = pic32-gcc.exe
LD = pic32-ld.exe
AR = pic32-ar.exe
HX = pic32-bin2hex.exe
RM = rm

TEST\ ELECTRONICAL_MAIN_BOARD_32.hex : TEST\ ELECTRONICAL_MAIN_BOARD_32.elf
	$(HX) "TEST ELECTRONICAL_MAIN_BOARD_32.elf"

TEST\ ELECTRONICAL_MAIN_BOARD_32.elf : delay.o testLCD24064.o
	$(CC) -mdebugger -mprocessor=32MX795F512H "delay.o" "testLCD24064.o" -o"TEST ELECTRONICAL_MAIN_BOARD_32.elf" -Wl,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,--defsym=__ICD2RAM=1,-Map="TEST ELECTRONICAL_MAIN_BOARD_32.map"

delay.o : common/delay/delay.c
	$(CC) -mprocessor=32MX795F512H -x c -c "common\delay\delay.c" -o"delay.o" -MMD -MF"delay.d" -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -g

testLCD24064.o : test/testLCD24064.c common/delay/delay.h
	$(CC) -mprocessor=32MX795F512H -x c -c "test\testLCD24064.c" -o"testLCD24064.o" -MMD -MF"testLCD24064.d" -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -g

clean : 
	$(RM) "delay.o" "testLCD24064.o" "TEST ELECTRONICAL_MAIN_BOARD_32.elf" "TEST ELECTRONICAL_MAIN_BOARD_32.hex"

