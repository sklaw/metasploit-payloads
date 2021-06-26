SRC_C=$(wildcard *.c)
SRC_S=${SRC_C:c=s} 
CC = i686-w64-mingw32-gcc-win32

all: gen_dll

gen_dll: metsrv.x86.dll 

gen_asm: ${SRC_S} 

%.s : %.c Makefile
	$(CC) -S $< -I ../common -I ../ReflectiveDLLInjection/common

metsrv.x86.dll: Makefile
	$(CC) -o metsrv.x86.dll -s -shared $(SRC_S) -Wl,--subsystem,windows -lws2_32 -lcrypt32 -lwinhttp -lwininet -lole32
