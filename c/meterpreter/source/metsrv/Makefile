SRC_C=$(wildcard *.c)
SRC_S=${SRC_C:c=s} 
SRC_S_obfuscated=${SRC_C:.c=_obfuscated.s} 
CC = i686-w64-mingw32-gcc-win32

all: 

gen_obfuscated_dll:
	$(CC) -o metsrv.x86.dll.obfuscated -s -shared $(SRC_S_obfuscated) -Wl,--subsystem,windows -lws2_32 -lcrypt32 -lwinhttp -lwininet -lole32 -Wl,--exclude-all-symbols -e _DllMain -static-libgcc -lgcc

gen_orig_dll: 
	$(CC) -o metsrv.x86.dll -s -shared $(SRC_S) -Wl,--subsystem,windows -lws2_32 -lcrypt32 -lwinhttp -lwininet -lole32 -Wl,--exclude-all-symbols -e _DllMain -static-libgcc -lgcc



gen_asm: ${SRC_S} 

%.s : %.c Makefile
	$(CC) -S $< -I ../common -I ../ReflectiveDLLInjection/common

clean:
	rm -f metsrv.x86.dll
	rm -f *.s

install_obfuscated:
	cp metsrv.x86.dll.obfuscated ~/Code/metasploit-framework/data/meterpreter/metsrv.x86.dll

