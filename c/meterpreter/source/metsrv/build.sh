	make clean
	make gen_asm
	python3 /home/test/Code/gcc_asm_obfuscator/main.py
	make gen_obfuscated_dll
	make install_obfuscated
