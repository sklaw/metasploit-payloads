SRC_C=$(wildcard *.c)
SRC_S=${SRC_C:c=s} 
CC = i686-w64-mingw32-gcc-win32

all: gen_asm

gen_asm: ${SRC_S} 

%.s : %.c Makefile
	$(CC) -S $< -I ../common -I ../ReflectiveDLLInjection/common
