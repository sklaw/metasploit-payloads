SRC_C=$(wildcard *.c)
SRC_S=${SRC_C:c=s} 
CC = i686-w64-mingw32-gcc-win32

all: gen_dll

gen_dll: 
	$(CC) -o metsrv.x86.dll -s -shared $(SRC_S) -Wl,--subsystem,windows -lws2_32 -lcrypt32 -lwinhttp -lwininet -lole32 -Wl,--exclude-all-symbols

gen_asm: ${SRC_S} 

%.s : %.c Makefile
	$(CC) -S $< -I ../common -I ../ReflectiveDLLInjection/common

clean:
	rm metsrv.x86.dll
