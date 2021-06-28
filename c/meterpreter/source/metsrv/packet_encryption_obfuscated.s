	.file	"packet_encryption.c"
	.text
	.section .rdata,"dr"
LC0:
	.ascii "[%04x] \0"
LC1:
	.ascii "\15\12\0"
	.text
	.def	_real_dprintf;	.scl	3;	.type	32;	.endef
_real_dprintf:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	pushl	%esi
push %eax
pop %eax
	pushl	%ebx
push %eax
pop %eax
	subl	$1072, %esp
push %eax
pop %eax
	movl	__imp__GetCurrentThreadId@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	%eax, 16(%esp)
push %eax
pop %eax
	movl	$LC0, 12(%esp)
push %eax
pop %eax
	movl	$1023, 8(%esp)
push %eax
pop %eax
	movl	$1024, 4(%esp)
push %eax
pop %eax
	leal	-1040(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp___snprintf_s, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	leal	-1040(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_strlen
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	leal	12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
	movl	-16(%ebp), %ecx
push %eax
pop %eax
	movl	$1021, %eax
push %eax
pop %eax
	subl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	$1024, %eax
push %eax
pop %eax
	subl	-12(%ebp), %eax
push %eax
pop %eax
	leal	-1040(%ebp), %esi
push %eax
pop %eax
	movl	-12(%ebp), %ebx
push %eax
pop %eax
	addl	%esi, %ebx
push %eax
pop %eax
	movl	%ecx, 16(%esp)
push %eax
pop %eax
	movl	8(%ebp), %ecx
push %eax
pop %eax
	movl	%ecx, 12(%esp)
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	%ebx, (%esp)
push %eax
pop %eax
	call	_vsnprintf_s
push %eax
pop %eax
	movl	$LC1, 8(%esp)
push %eax
pop %eax
	movl	$1024, 4(%esp)
push %eax
pop %eax
	leal	-1040(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__strcat_s, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	leal	-1040(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__OutputDebugStringA@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	nop
push %eax
pop %eax
	leal	-8(%ebp), %esp
push %eax
pop %eax
	popl	%ebx
push %eax
pop %eax
	popl	%esi
push %eax
pop %eax
	popl	%ebp
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_AesProviders
	.section .rdata,"dr"
	.align 4
LC2:
	.ascii "Microsoft Enhanced RSA and AES Cryptographic Provider\0"
	.align 4
LC3:
	.ascii "Microsoft Enhanced RSA and AES Cryptographic Provider (Prototype)\0"
	.align 32
_AesProviders:
	.long	LC2
	.long	24
	.long	0
	.long	LC2
	.long	24
	.long	8
	.long	LC3
	.long	24
	.long	0
	.long	LC3
	.long	24
	.long	8
	.align 4
LC4:
	.ascii "[DEC] Packet header: [0x%02X 0x%02X 0x%02X 0x%02X] [0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X] [0x%02X 0x%02X 0x%02X 0x%02X] [0x%02X 0x%02X 0x%02X 0x%02X] [0x%02X 0x%02X 0x%02X 0x%02X]\0"
	.align 4
LC5:
	.ascii "[DEC] Packet buffer size is: %u\0"
	.align 4
LC6:
	.ascii "[DEC] Encryption flags set to %x\0"
	.align 4
LC7:
	.ascii "[DEC] Context is valid, moving on ... \0"
	.align 4
LC8:
	.ascii "[DEC] IV: %02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X\0"
LC9:
	.ascii "[DEC] Encrypted Size: %u (%x)\0"
	.align 4
LC10:
	.ascii "[DEC] Encrypted Size mod AES256_BLOCKSIZE: %u\0"
	.align 4
LC11:
	.ascii "[DEC] Failed to duplicate key: %d (%x)\0"
	.align 4
LC12:
	.ascii "[ENC] Failed to set mode to CBC: %d (%x)\0"
	.align 4
LC13:
	.ascii "[DEC] Failed to set IV: %d (%x)\0"
	.align 4
LC14:
	.ascii "[DEC] Failed to decrypt: %d (%x)\0"
	.align 4
LC15:
	.ascii "[DEC] Actual payload Length: %d\0"
LC16:
	.ascii "[DEC] Header Type: %d\0"
	.align 4
LC17:
	.ascii "[DEC] failed to allocate payload\0"
	.align 4
LC18:
	.ascii "[DEC] Local packet payload successfully allocated, copying data\0"
	.align 4
LC19:
	.ascii "[DEC] TLV 1 length / type: [0x%02X 0x%02X 0x%02X 0x%02X] [0x%02X 0x%02X 0x%02X 0x%02X]\0"
LC20:
	.ascii "[DEC] Skipping %u bytes\0"
	.align 4
LC21:
	.ascii "[DEC] TLV 2 length / type: [0x%02X 0x%02X 0x%02X 0x%02X] [0x%02X 0x%02X 0x%02X 0x%02X]\0"
	.align 4
LC22:
	.ascii "[DEC] Writing localpacket %p to packet pointer %p\0"
	.text
	.globl	_decrypt_packet
	.def	_decrypt_packet;	.scl	2;	.type	32;	.endef
_decrypt_packet:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	pushl	%edi
push %eax
pop %eax
	pushl	%esi
push %eax
pop %eax
	pushl	%ebx
push %eax
pop %eax
	subl	$316, %esp
push %eax
pop %eax
	movl	$0, -28(%ebp)
push %eax
pop %eax
	movl	$0, -32(%ebp)
push %eax
pop %eax
	movl	$0, -64(%ebp)
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -36(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$31, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$30, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %esi
push %eax
pop %eax
	movl	%esi, -76(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$29, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %edi
push %eax
pop %eax
	movl	%edi, -80(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$28, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ebx
push %eax
pop %eax
	movl	%ebx, -84(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$27, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ecx
push %eax
pop %eax
	movl	%ecx, -88(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$26, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%eax, -92(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$25, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %esi
push %eax
pop %eax
	movl	%esi, -96(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$24, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %edi
push %eax
pop %eax
	movl	%edi, -100(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$23, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ebx
push %eax
pop %eax
	movl	%ebx, -104(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$22, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ecx
push %eax
pop %eax
	movl	%ecx, -108(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$21, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%eax, -112(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$20, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %esi
push %eax
pop %eax
	movl	%esi, -116(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$19, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %edi
push %eax
pop %eax
	movl	%edi, -120(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$18, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ebx
push %eax
pop %eax
	movl	%ebx, -124(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$17, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ecx
push %eax
pop %eax
	movl	%ecx, -128(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$16, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%eax, -132(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$15, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %esi
push %eax
pop %eax
	movl	%esi, -136(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$14, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %edi
push %eax
pop %eax
	movl	%edi, -140(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$13, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ebx
push %eax
pop %eax
	movl	%ebx, -144(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$12, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ecx
push %eax
pop %eax
	movl	%ecx, -148(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$11, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%eax, -152(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$10, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %esi
push %eax
pop %eax
	movl	%esi, -156(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$9, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %edi
push %eax
pop %eax
	movl	%edi, -160(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$8, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ebx
push %eax
pop %eax
	movl	%ebx, -164(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$7, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ecx
push %eax
pop %eax
	movl	%ecx, -168(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$6, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%eax, -172(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$5, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %edi
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$4, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %esi
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$3, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ebx
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$2, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ecx
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$1, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%eax, -176(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%edx, 128(%esp)
push %eax
pop %eax
	movl	-76(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 124(%esp)
push %eax
pop %eax
	movl	-80(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 120(%esp)
push %eax
pop %eax
	movl	-84(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 116(%esp)
push %eax
pop %eax
	movl	-88(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 112(%esp)
push %eax
pop %eax
	movl	-92(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 108(%esp)
push %eax
pop %eax
	movl	-96(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 104(%esp)
push %eax
pop %eax
	movl	-100(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 100(%esp)
push %eax
pop %eax
	movl	-104(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 96(%esp)
push %eax
pop %eax
	movl	-108(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 92(%esp)
push %eax
pop %eax
	movl	-112(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 88(%esp)
push %eax
pop %eax
	movl	-116(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 84(%esp)
push %eax
pop %eax
	movl	-120(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 80(%esp)
push %eax
pop %eax
	movl	-124(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 76(%esp)
push %eax
pop %eax
	movl	-128(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 72(%esp)
push %eax
pop %eax
	movl	-132(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 68(%esp)
push %eax
pop %eax
	movl	-136(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 64(%esp)
push %eax
pop %eax
	movl	-140(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 60(%esp)
push %eax
pop %eax
	movl	-144(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 56(%esp)
push %eax
pop %eax
	movl	-148(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 52(%esp)
push %eax
pop %eax
	movl	-152(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 48(%esp)
push %eax
pop %eax
	movl	-156(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 44(%esp)
push %eax
pop %eax
	movl	-160(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 40(%esp)
push %eax
pop %eax
	movl	-164(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 36(%esp)
push %eax
pop %eax
	movl	-168(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 32(%esp)
push %eax
pop %eax
	movl	-172(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 28(%esp)
push %eax
pop %eax
	movl	%edi, 24(%esp)
push %eax
pop %eax
	movl	%esi, 20(%esp)
push %eax
pop %eax
	movl	%ebx, 16(%esp)
push %eax
pop %eax
	movl	%ecx, 12(%esp)
push %eax
pop %eax
	movl	-176(%ebp), %edi
push %eax
pop %eax
	movl	%edi, 8(%esp)
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC4, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC5, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -40(%ebp)
push %eax
pop %eax
	movl	20(%ebp), %eax
push %eax
pop %eax
	leal	-4(%eax), %ecx
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	leal	4(%eax), %edx
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	movl	%ecx, 8(%esp)
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_xor_bytes
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -36(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$31, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$30, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %esi
push %eax
pop %eax
	movl	%esi, -76(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$29, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %edi
push %eax
pop %eax
	movl	%edi, -80(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$28, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ebx
push %eax
pop %eax
	movl	%ebx, -84(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$27, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ecx
push %eax
pop %eax
	movl	%ecx, -88(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$26, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%eax, -92(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$25, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %esi
push %eax
pop %eax
	movl	%esi, -96(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$24, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %edi
push %eax
pop %eax
	movl	%edi, -100(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$23, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ebx
push %eax
pop %eax
	movl	%ebx, -104(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$22, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ecx
push %eax
pop %eax
	movl	%ecx, -108(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$21, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%eax, -112(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$20, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %esi
push %eax
pop %eax
	movl	%esi, -116(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$19, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %edi
push %eax
pop %eax
	movl	%edi, -120(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$18, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ebx
push %eax
pop %eax
	movl	%ebx, -124(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$17, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ecx
push %eax
pop %eax
	movl	%ecx, -128(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$16, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%eax, -132(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$15, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %esi
push %eax
pop %eax
	movl	%esi, -136(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$14, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %edi
push %eax
pop %eax
	movl	%edi, -140(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$13, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ebx
push %eax
pop %eax
	movl	%ebx, -144(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$12, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ecx
push %eax
pop %eax
	movl	%ecx, -148(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$11, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%eax, -152(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$10, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %esi
push %eax
pop %eax
	movl	%esi, -156(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$9, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %edi
push %eax
pop %eax
	movl	%edi, -160(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$8, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ebx
push %eax
pop %eax
	movl	%ebx, -164(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$7, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ecx
push %eax
pop %eax
	movl	%ecx, -168(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$6, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%eax, -172(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$5, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %edi
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$4, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %esi
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$3, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ebx
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$2, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ecx
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$1, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%eax, -176(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%edx, 128(%esp)
push %eax
pop %eax
	movl	-76(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 124(%esp)
push %eax
pop %eax
	movl	-80(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 120(%esp)
push %eax
pop %eax
	movl	-84(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 116(%esp)
push %eax
pop %eax
	movl	-88(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 112(%esp)
push %eax
pop %eax
	movl	-92(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 108(%esp)
push %eax
pop %eax
	movl	-96(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 104(%esp)
push %eax
pop %eax
	movl	-100(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 100(%esp)
push %eax
pop %eax
	movl	-104(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 96(%esp)
push %eax
pop %eax
	movl	-108(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 92(%esp)
push %eax
pop %eax
	movl	-112(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 88(%esp)
push %eax
pop %eax
	movl	-116(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 84(%esp)
push %eax
pop %eax
	movl	-120(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 80(%esp)
push %eax
pop %eax
	movl	-124(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 76(%esp)
push %eax
pop %eax
	movl	-128(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 72(%esp)
push %eax
pop %eax
	movl	-132(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 68(%esp)
push %eax
pop %eax
	movl	-136(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 64(%esp)
push %eax
pop %eax
	movl	-140(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 60(%esp)
push %eax
pop %eax
	movl	-144(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 56(%esp)
push %eax
pop %eax
	movl	-148(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 52(%esp)
push %eax
pop %eax
	movl	-152(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 48(%esp)
push %eax
pop %eax
	movl	-156(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 44(%esp)
push %eax
pop %eax
	movl	-160(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 40(%esp)
push %eax
pop %eax
	movl	-164(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 36(%esp)
push %eax
pop %eax
	movl	-168(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 32(%esp)
push %eax
pop %eax
	movl	-172(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 28(%esp)
push %eax
pop %eax
	movl	%edi, 24(%esp)
push %eax
pop %eax
	movl	%esi, 20(%esp)
push %eax
pop %eax
	movl	%ebx, 16(%esp)
push %eax
pop %eax
	movl	%ecx, 12(%esp)
push %eax
pop %eax
	movl	-176(%ebp), %esi
push %eax
pop %eax
	movl	%esi, 8(%esp)
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC4, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	$52, 4(%esp)
push %eax
pop %eax
	movl	$1, (%esp)
push %eax
pop %eax
	call	_calloc
push %eax
pop %eax
	movl	%eax, -32(%ebp)
push %eax
pop %eax
	cmpl	$0, -32(%ebp)
push %eax
pop %eax
	jne	L3
push %eax
pop %eax
	movl	$8, -28(%ebp)
push %eax
pop %eax
	jmp	L4
push %eax
pop %eax
L3:
	movl	-40(%ebp), %eax
push %eax
pop %eax
	movl	20(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__ntohl@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	movl	%eax, -44(%ebp)
push %eax
pop %eax
	movl	-44(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC6, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	88(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L5
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	88(%eax), %eax
push %eax
pop %eax
	movl	12(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L5
push %eax
pop %eax
	cmpl	$0, -44(%ebp)
push %eax
pop %eax
	je	L5
push %eax
pop %eax
	movl	$LC7, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	addl	$32, %eax
push %eax
pop %eax
	movl	%eax, -48(%ebp)
push %eax
pop %eax
	movl	-48(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -52(%ebp)
push %eax
pop %eax
	movl	-52(%ebp), %eax
push %eax
pop %eax
	addl	$15, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	-52(%ebp), %eax
push %eax
pop %eax
	addl	$14, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %esi
push %eax
pop %eax
	movl	%esi, -76(%ebp)
push %eax
pop %eax
	movl	-52(%ebp), %eax
push %eax
pop %eax
	addl	$13, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %edi
push %eax
pop %eax
	movl	%edi, -80(%ebp)
push %eax
pop %eax
	movl	-52(%ebp), %eax
push %eax
pop %eax
	addl	$12, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ebx
push %eax
pop %eax
	movl	%ebx, -84(%ebp)
push %eax
pop %eax
	movl	-52(%ebp), %eax
push %eax
pop %eax
	addl	$11, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ecx
push %eax
pop %eax
	movl	%ecx, -88(%ebp)
push %eax
pop %eax
	movl	-52(%ebp), %eax
push %eax
pop %eax
	addl	$10, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%eax, -92(%ebp)
push %eax
pop %eax
	movl	-52(%ebp), %eax
push %eax
pop %eax
	addl	$9, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %esi
push %eax
pop %eax
	movl	%esi, -96(%ebp)
push %eax
pop %eax
	movl	-52(%ebp), %eax
push %eax
pop %eax
	addl	$8, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %edi
push %eax
pop %eax
	movl	%edi, -100(%ebp)
push %eax
pop %eax
	movl	-52(%ebp), %eax
push %eax
pop %eax
	addl	$7, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ebx
push %eax
pop %eax
	movl	%ebx, -104(%ebp)
push %eax
pop %eax
	movl	-52(%ebp), %eax
push %eax
pop %eax
	addl	$6, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ecx
push %eax
pop %eax
	movl	%ecx, -108(%ebp)
push %eax
pop %eax
	movl	-52(%ebp), %eax
push %eax
pop %eax
	addl	$5, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %edi
push %eax
pop %eax
	movl	-52(%ebp), %eax
push %eax
pop %eax
	addl	$4, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %esi
push %eax
pop %eax
	movl	-52(%ebp), %eax
push %eax
pop %eax
	addl	$3, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ebx
push %eax
pop %eax
	movl	-52(%ebp), %eax
push %eax
pop %eax
	addl	$2, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ecx
push %eax
pop %eax
	movl	-52(%ebp), %eax
push %eax
pop %eax
	addl	$1, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%eax, -112(%ebp)
push %eax
pop %eax
	movl	-52(%ebp), %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%edx, 64(%esp)
push %eax
pop %eax
	movl	-76(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 60(%esp)
push %eax
pop %eax
	movl	-80(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 56(%esp)
push %eax
pop %eax
	movl	-84(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 52(%esp)
push %eax
pop %eax
	movl	-88(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 48(%esp)
push %eax
pop %eax
	movl	-92(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 44(%esp)
push %eax
pop %eax
	movl	-96(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 40(%esp)
push %eax
pop %eax
	movl	-100(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 36(%esp)
push %eax
pop %eax
	movl	-104(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 32(%esp)
push %eax
pop %eax
	movl	-108(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 28(%esp)
push %eax
pop %eax
	movl	%edi, 24(%esp)
push %eax
pop %eax
	movl	%esi, 20(%esp)
push %eax
pop %eax
	movl	%ebx, 16(%esp)
push %eax
pop %eax
	movl	%ecx, 12(%esp)
push %eax
pop %eax
	movl	-112(%ebp), %ebx
push %eax
pop %eax
	movl	%ebx, 8(%esp)
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC8, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	movl	24(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__ntohl@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	subl	$24, %eax
push %eax
pop %eax
	movl	%eax, -68(%ebp)
push %eax
pop %eax
	movl	-48(%ebp), %eax
push %eax
pop %eax
	addl	$16, %eax
push %eax
pop %eax
	movl	%eax, -56(%ebp)
push %eax
pop %eax
	movl	-68(%ebp), %edx
push %eax
pop %eax
	movl	-68(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC9, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-68(%ebp), %eax
push %eax
pop %eax
	andl	$15, %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC10, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	88(%eax), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	leal	-64(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 12(%esp)
push %eax
pop %eax
	movl	$0, 8(%esp)
push %eax
pop %eax
	movl	$0, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__CryptDuplicateKey@16, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$16, %esp
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L6
push %eax
pop %eax
	movl	__imp__GetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	%eax, -28(%ebp)
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC11, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L4
push %eax
pop %eax
L6:
	movl	$1, -72(%ebp)
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	movl	$0, 12(%esp)
push %eax
pop %eax
	leal	-72(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	$4, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__CryptSetKeyParam@16, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$16, %esp
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L8
push %eax
pop %eax
	movl	__imp__GetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	%eax, -28(%ebp)
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC12, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L4
push %eax
pop %eax
L8:
	movl	-64(%ebp), %eax
push %eax
pop %eax
	movl	$0, 12(%esp)
push %eax
pop %eax
	movl	-52(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	$1, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__CryptSetKeyParam@16, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$16, %esp
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L9
push %eax
pop %eax
	movl	__imp__GetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	%eax, -28(%ebp)
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC13, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L4
push %eax
pop %eax
L9:
	movl	-64(%ebp), %eax
push %eax
pop %eax
	leal	-68(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 20(%esp)
push %eax
pop %eax
	movl	-56(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 16(%esp)
push %eax
pop %eax
	movl	$0, 12(%esp)
push %eax
pop %eax
	movl	$1, 8(%esp)
push %eax
pop %eax
	movl	$0, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__CryptDecrypt@24, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$24, %esp
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L10
push %eax
pop %eax
	movl	__imp__GetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	%eax, -28(%ebp)
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC14, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L4
push %eax
pop %eax
L10:
	movl	-68(%ebp), %edx
push %eax
pop %eax
	movl	-68(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 12(%esp)
push %eax
pop %eax
	movl	-56(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	-52(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__memmove_s, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	-68(%ebp), %eax
push %eax
pop %eax
	addl	$8, %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__htonl@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	movl	-40(%ebp), %edx
push %eax
pop %eax
	movl	%eax, 24(%edx)
push %eax
pop %eax
L5:
	movl	-40(%ebp), %eax
push %eax
pop %eax
	movl	24(%eax), %edx
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 24(%eax)
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	movl	28(%eax), %edx
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 28(%eax)
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	24(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__ntohl@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	leal	-8(%eax), %edx
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 36(%eax)
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	36(%eax), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC15, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	28(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__ntohl@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC16, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	36(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_malloc
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 32(%eax)
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	32(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L11
push %eax
pop %eax
	movl	$LC17, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	$8, -28(%ebp)
push %eax
pop %eax
	jmp	L4
push %eax
pop %eax
L11:
	movl	$LC18, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	36(%eax), %ecx
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	leal	32(%eax), %ebx
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	36(%eax), %edx
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	32(%eax), %eax
push %eax
pop %eax
	movl	%ecx, 12(%esp)
push %eax
pop %eax
	movl	%ebx, 8(%esp)
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__memcpy_s, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	32(%eax), %eax
push %eax
pop %eax
	movl	%eax, -36(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$7, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ecx
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$6, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%eax, -76(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$5, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %esi
push %eax
pop %eax
	movl	%esi, -80(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$4, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %edi
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$3, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %esi
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$2, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ebx
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$1, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %edx
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%ecx, 32(%esp)
push %eax
pop %eax
	movl	-76(%ebp), %ecx
push %eax
pop %eax
	movl	%ecx, 28(%esp)
push %eax
pop %eax
	movl	-80(%ebp), %ecx
push %eax
pop %eax
	movl	%ecx, 24(%esp)
push %eax
pop %eax
	movl	%edi, 20(%esp)
push %eax
pop %eax
	movl	%esi, 16(%esp)
push %eax
pop %eax
	movl	%ebx, 12(%esp)
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC19, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__ntohl@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	movl	%eax, -60(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC20, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	%eax, -36(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$7, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ecx
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$6, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%eax, -76(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$5, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %edi
push %eax
pop %eax
	movl	%edi, -80(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$4, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %edi
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$3, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %esi
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$2, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ebx
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$1, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %edx
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%ecx, 32(%esp)
push %eax
pop %eax
	movl	-76(%ebp), %ecx
push %eax
pop %eax
	movl	%ecx, 28(%esp)
push %eax
pop %eax
	movl	-80(%ebp), %ecx
push %eax
pop %eax
	movl	%ecx, 24(%esp)
push %eax
pop %eax
	movl	%edi, 20(%esp)
push %eax
pop %eax
	movl	%esi, 16(%esp)
push %eax
pop %eax
	movl	%ebx, 12(%esp)
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC21, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC22, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	-32(%ebp), %edx
push %eax
pop %eax
	movl	%edx, (%eax)
push %eax
pop %eax
L4:
	cmpl	$0, -28(%ebp)
push %eax
pop %eax
	je	L12
push %eax
pop %eax
	cmpl	$0, -32(%ebp)
push %eax
pop %eax
	je	L12
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_destroy
push %eax
pop %eax
L12:
	movl	-64(%ebp), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L13
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__CryptDestroyKey@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
L13:
	movl	-28(%ebp), %eax
push %eax
pop %eax
	leal	-12(%ebp), %esp
push %eax
pop %eax
	popl	%ebx
push %eax
pop %eax
	popl	%esi
push %eax
pop %eax
	popl	%edi
push %eax
pop %eax
	popl	%ebp
push %eax
pop %eax
	ret
push %eax
pop %eax
	.section .rdata,"dr"
	.align 4
LC23:
	.ascii "[ENC] Preparing for encryption ...\0"
	.align 4
LC24:
	.ascii "[ENC] Context is valid, moving on ... \0"
	.align 4
LC25:
	.ascii "[ENC] Context is enabled, doing the AES encryption\0"
	.align 4
LC26:
	.ascii "[ENC] Failed to duplicate AES key: %d (%x)\0"
	.align 4
LC27:
	.ascii "[ENC] Failed to generate random IV: %d (%x)\0"
	.align 4
LC28:
	.ascii "[ENC] IV: %02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X\0"
	.align 4
LC29:
	.ascii "[ENC] Failed to set IV: %d (%x)\0"
LC30:
	.ascii "[ENC] IV Set successfully\0"
	.align 4
LC31:
	.ascii "[ENC] Failed to encrypt: %d (%x)\0"
	.align 4
LC32:
	.ascii "[ENC] Data encrypted successfully, size is %u\0"
LC33:
	.ascii "[ENC] Enabling the context\0"
	.align 4
LC34:
	.ascii "[ENC] No encryption context present\0"
	.align 4
LC35:
	.ascii "[ENC] Packet buffer size is: %u\0"
	.align 4
LC36:
	.ascii "[ENC] Sending header (before XOR): [0x%02X 0x%02X 0x%02X 0x%02X] [0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X] [0x%02X 0x%02X 0x%02X 0x%02X] [0x%02X 0x%02X 0x%02X 0x%02X] [0x%02X 0x%02X 0x%02X 0x%02X]\0"
	.align 4
LC37:
	.ascii "[ENC] Packet encoded and ready for transmission\0"
	.align 4
LC38:
	.ascii "[ENC] Sending header (after XOR): [0x%02X 0x%02X 0x%02X 0x%02X] [0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X] [0x%02X 0x%02X 0x%02X 0x%02X] [0x%02X 0x%02X 0x%02X 0x%02X] [0x%02X 0x%02X 0x%02X 0x%02X]\0"
	.text
	.globl	_encrypt_packet
	.def	_encrypt_packet;	.scl	2;	.type	32;	.endef
_encrypt_packet:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	pushl	%edi
push %eax
pop %eax
	pushl	%esi
push %eax
pop %eax
	pushl	%ebx
push %eax
pop %eax
	subl	$332, %esp
push %eax
pop %eax
	movl	$0, -28(%ebp)
push %eax
pop %eax
	movl	$0, -64(%ebp)
push %eax
pop %eax
	movl	$LC23, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_rand_xor_key
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	16(%eax), %eax
push %eax
pop %eax
	leal	32(%eax), %edx
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	addl	$4, %eax
push %eax
pop %eax
	movl	$16, 12(%esp)
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	$16, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__memcpy_s, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	88(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L16
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	88(%eax), %eax
push %eax
pop %eax
	movl	12(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L16
push %eax
pop %eax
	movl	$LC24, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	88(%eax), %eax
push %eax
pop %eax
	movl	60(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L17
push %eax
pop %eax
	movl	$LC25, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	88(%eax), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	leal	-64(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 12(%esp)
push %eax
pop %eax
	movl	$0, 8(%esp)
push %eax
pop %eax
	movl	$0, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__CryptDuplicateKey@16, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$16, %esp
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L18
push %eax
pop %eax
	movl	__imp__GetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	%eax, -28(%ebp)
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC26, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	nop
push %eax
pop %eax
	jmp	L26
push %eax
pop %eax
L18:
	movl	$1, -68(%ebp)
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	movl	$0, 12(%esp)
push %eax
pop %eax
	leal	-68(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	$4, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__CryptSetKeyParam@16, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$16, %esp
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L20
push %eax
pop %eax
	movl	__imp__GetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	%eax, -28(%ebp)
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC12, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L19
push %eax
pop %eax
L20:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	88(%eax), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	leal	-84(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	$16, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__CryptGenRandom@12, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$12, %esp
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L21
push %eax
pop %eax
	movl	__imp__GetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	%eax, -28(%ebp)
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC27, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
L21:
	movzbl	-69(%ebp), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movzbl	-70(%ebp), %eax
push %eax
pop %eax
	movzbl	%al, %ebx
push %eax
pop %eax
	movl	%ebx, -92(%ebp)
push %eax
pop %eax
	movzbl	-71(%ebp), %eax
push %eax
pop %eax
	movzbl	%al, %esi
push %eax
pop %eax
	movl	%esi, -96(%ebp)
push %eax
pop %eax
	movzbl	-72(%ebp), %eax
push %eax
pop %eax
	movzbl	%al, %edi
push %eax
pop %eax
	movl	%edi, -100(%ebp)
push %eax
pop %eax
	movzbl	-73(%ebp), %eax
push %eax
pop %eax
	movzbl	%al, %ecx
push %eax
pop %eax
	movl	%ecx, -104(%ebp)
push %eax
pop %eax
	movzbl	-74(%ebp), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%eax, -108(%ebp)
push %eax
pop %eax
	movzbl	-75(%ebp), %eax
push %eax
pop %eax
	movzbl	%al, %ebx
push %eax
pop %eax
	movl	%ebx, -112(%ebp)
push %eax
pop %eax
	movzbl	-76(%ebp), %eax
push %eax
pop %eax
	movzbl	%al, %esi
push %eax
pop %eax
	movl	%esi, -116(%ebp)
push %eax
pop %eax
	movzbl	-77(%ebp), %eax
push %eax
pop %eax
	movzbl	%al, %edi
push %eax
pop %eax
	movl	%edi, -120(%ebp)
push %eax
pop %eax
	movzbl	-78(%ebp), %eax
push %eax
pop %eax
	movzbl	%al, %ecx
push %eax
pop %eax
	movl	%ecx, -124(%ebp)
push %eax
pop %eax
	movzbl	-79(%ebp), %eax
push %eax
pop %eax
	movzbl	%al, %edi
push %eax
pop %eax
	movzbl	-80(%ebp), %eax
push %eax
pop %eax
	movzbl	%al, %esi
push %eax
pop %eax
	movzbl	-81(%ebp), %eax
push %eax
pop %eax
	movzbl	%al, %ebx
push %eax
pop %eax
	movzbl	-82(%ebp), %eax
push %eax
pop %eax
	movzbl	%al, %ecx
push %eax
pop %eax
	movzbl	-83(%ebp), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%eax, -128(%ebp)
push %eax
pop %eax
	movzbl	-84(%ebp), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%edx, 64(%esp)
push %eax
pop %eax
	movl	-92(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 60(%esp)
push %eax
pop %eax
	movl	-96(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 56(%esp)
push %eax
pop %eax
	movl	-100(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 52(%esp)
push %eax
pop %eax
	movl	-104(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 48(%esp)
push %eax
pop %eax
	movl	-108(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 44(%esp)
push %eax
pop %eax
	movl	-112(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 40(%esp)
push %eax
pop %eax
	movl	-116(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 36(%esp)
push %eax
pop %eax
	movl	-120(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 32(%esp)
push %eax
pop %eax
	movl	-124(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 28(%esp)
push %eax
pop %eax
	movl	%edi, 24(%esp)
push %eax
pop %eax
	movl	%esi, 20(%esp)
push %eax
pop %eax
	movl	%ebx, 16(%esp)
push %eax
pop %eax
	movl	%ecx, 12(%esp)
push %eax
pop %eax
	movl	-128(%ebp), %edi
push %eax
pop %eax
	movl	%edi, 8(%esp)
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC28, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	movl	$0, 12(%esp)
push %eax
pop %eax
	leal	-84(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	$1, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__CryptSetKeyParam@16, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$16, %esp
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L22
push %eax
pop %eax
	movl	__imp__GetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	%eax, -28(%ebp)
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC29, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L19
push %eax
pop %eax
L22:
	movl	$LC30, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	$1, (%esp)
push %eax
pop %eax
	movl	__imp__htonl@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	movl	12(%ebp), %edx
push %eax
pop %eax
	movl	%eax, 20(%edx)
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	36(%eax), %eax
push %eax
pop %eax
	shrl	$4, %eax
push %eax
pop %eax
	addl	$1, %eax
push %eax
pop %eax
	sall	$4, %eax
push %eax
pop %eax
	movl	%eax, -32(%ebp)
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	addl	$48, %eax
push %eax
pop %eax
	movl	%eax, -36(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_malloc
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	%edx, (%eax)
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	movl	%eax, -40(%ebp)
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	addl	$32, %eax
push %eax
pop %eax
	movl	%eax, -44(%ebp)
push %eax
pop %eax
	movl	-44(%ebp), %eax
push %eax
pop %eax
	addl	$16, %eax
push %eax
pop %eax
	movl	%eax, -48(%ebp)
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	36(%eax), %edx
push %eax
pop %eax
	movl	20(%ebp), %eax
push %eax
pop %eax
	movl	%edx, (%eax)
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	36(%eax), %ecx
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	32(%eax), %edx
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	36(%eax), %eax
push %eax
pop %eax
	movl	%ecx, 12(%esp)
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	-48(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__memcpy_s, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	movl	-32(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 24(%esp)
push %eax
pop %eax
	movl	20(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 20(%esp)
push %eax
pop %eax
	movl	-48(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 16(%esp)
push %eax
pop %eax
	movl	$0, 12(%esp)
push %eax
pop %eax
	movl	$1, 8(%esp)
push %eax
pop %eax
	movl	$0, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__CryptEncrypt@28, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$28, %esp
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L23
push %eax
pop %eax
	movl	__imp__GetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	%eax, -28(%ebp)
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC31, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L24
push %eax
pop %eax
L23:
	movl	20(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC32, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
L24:
	movl	20(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	addl	$24, %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__ntohl@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	movl	12(%ebp), %edx
push %eax
pop %eax
	movl	%eax, 24(%edx)
push %eax
pop %eax
	movl	20(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	leal	48(%eax), %edx
push %eax
pop %eax
	movl	20(%ebp), %eax
push %eax
pop %eax
	movl	%edx, (%eax)
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	$32, 12(%esp)
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$32, 4(%esp)
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__memcpy_s, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	$16, 12(%esp)
push %eax
pop %eax
	leal	-84(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$16, 4(%esp)
push %eax
pop %eax
	movl	-44(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__memcpy_s, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	jmp	L26
push %eax
pop %eax
L19:
	jmp	L26
push %eax
pop %eax
L17:
	movl	$LC33, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	88(%eax), %eax
push %eax
pop %eax
	movl	$1, 60(%eax)
push %eax
pop %eax
	jmp	L26
push %eax
pop %eax
L16:
	movl	$LC34, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
L26:
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L27
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	36(%eax), %eax
push %eax
pop %eax
	leal	32(%eax), %edx
push %eax
pop %eax
	movl	20(%ebp), %eax
push %eax
pop %eax
	movl	%edx, (%eax)
push %eax
pop %eax
	movl	20(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_malloc
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	%edx, (%eax)
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	movl	%eax, -52(%ebp)
push %eax
pop %eax
	movl	-52(%ebp), %eax
push %eax
pop %eax
	addl	$32, %eax
push %eax
pop %eax
	movl	%eax, -56(%ebp)
push %eax
pop %eax
	movl	$0, (%esp)
push %eax
pop %eax
	movl	__imp__htonl@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	movl	12(%ebp), %edx
push %eax
pop %eax
	movl	%eax, 20(%edx)
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	$32, 12(%esp)
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$32, 4(%esp)
push %eax
pop %eax
	movl	-52(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__memcpy_s, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	36(%eax), %ecx
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	32(%eax), %edx
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	36(%eax), %eax
push %eax
pop %eax
	movl	%ecx, 12(%esp)
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	-56(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__memcpy_s, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
L27:
	movl	20(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC35, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	movl	%eax, -60(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	$31, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	$30, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ebx
push %eax
pop %eax
	movl	%ebx, -92(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	$29, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %esi
push %eax
pop %eax
	movl	%esi, -96(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	$28, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %edi
push %eax
pop %eax
	movl	%edi, -100(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	$27, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ecx
push %eax
pop %eax
	movl	%ecx, -104(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	$26, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%eax, -108(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	$25, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ebx
push %eax
pop %eax
	movl	%ebx, -112(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	$24, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %esi
push %eax
pop %eax
	movl	%esi, -116(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	$23, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %edi
push %eax
pop %eax
	movl	%edi, -120(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	$22, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ecx
push %eax
pop %eax
	movl	%ecx, -124(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	$21, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%eax, -128(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	$20, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ebx
push %eax
pop %eax
	movl	%ebx, -132(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	$19, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %esi
push %eax
pop %eax
	movl	%esi, -136(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	$18, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %edi
push %eax
pop %eax
	movl	%edi, -140(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	$17, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ecx
push %eax
pop %eax
	movl	%ecx, -144(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	$16, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%eax, -148(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	$15, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ebx
push %eax
pop %eax
	movl	%ebx, -152(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	$14, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %esi
push %eax
pop %eax
	movl	%esi, -156(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	$13, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %edi
push %eax
pop %eax
	movl	%edi, -160(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	$12, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ecx
push %eax
pop %eax
	movl	%ecx, -164(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	$11, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%eax, -168(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	$10, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ebx
push %eax
pop %eax
	movl	%ebx, -172(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	$9, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %esi
push %eax
pop %eax
	movl	%esi, -176(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	$8, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %edi
push %eax
pop %eax
	movl	%edi, -180(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	$7, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ecx
push %eax
pop %eax
	movl	%ecx, -184(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	$6, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%eax, -188(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	$5, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %edi
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	$4, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %esi
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	$3, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ebx
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	$2, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ecx
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	$1, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%eax, -192(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%edx, 128(%esp)
push %eax
pop %eax
	movl	-92(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 124(%esp)
push %eax
pop %eax
	movl	-96(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 120(%esp)
push %eax
pop %eax
	movl	-100(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 116(%esp)
push %eax
pop %eax
	movl	-104(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 112(%esp)
push %eax
pop %eax
	movl	-108(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 108(%esp)
push %eax
pop %eax
	movl	-112(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 104(%esp)
push %eax
pop %eax
	movl	-116(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 100(%esp)
push %eax
pop %eax
	movl	-120(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 96(%esp)
push %eax
pop %eax
	movl	-124(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 92(%esp)
push %eax
pop %eax
	movl	-128(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 88(%esp)
push %eax
pop %eax
	movl	-132(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 84(%esp)
push %eax
pop %eax
	movl	-136(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 80(%esp)
push %eax
pop %eax
	movl	-140(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 76(%esp)
push %eax
pop %eax
	movl	-144(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 72(%esp)
push %eax
pop %eax
	movl	-148(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 68(%esp)
push %eax
pop %eax
	movl	-152(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 64(%esp)
push %eax
pop %eax
	movl	-156(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 60(%esp)
push %eax
pop %eax
	movl	-160(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 56(%esp)
push %eax
pop %eax
	movl	-164(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 52(%esp)
push %eax
pop %eax
	movl	-168(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 48(%esp)
push %eax
pop %eax
	movl	-172(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 44(%esp)
push %eax
pop %eax
	movl	-176(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 40(%esp)
push %eax
pop %eax
	movl	-180(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 36(%esp)
push %eax
pop %eax
	movl	-184(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 32(%esp)
push %eax
pop %eax
	movl	-188(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 28(%esp)
push %eax
pop %eax
	movl	%edi, 24(%esp)
push %eax
pop %eax
	movl	%esi, 20(%esp)
push %eax
pop %eax
	movl	%ebx, 16(%esp)
push %eax
pop %eax
	movl	%ecx, 12(%esp)
push %eax
pop %eax
	movl	-192(%ebp), %esi
push %eax
pop %eax
	movl	%esi, 8(%esp)
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC36, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	20(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	leal	-4(%eax), %ecx
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	leal	4(%eax), %edx
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	%ecx, 8(%esp)
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_xor_bytes
push %eax
pop %eax
	movl	$LC37, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	$31, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	$30, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ebx
push %eax
pop %eax
	movl	%ebx, -92(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	$29, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %esi
push %eax
pop %eax
	movl	%esi, -96(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	$28, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %edi
push %eax
pop %eax
	movl	%edi, -100(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	$27, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ecx
push %eax
pop %eax
	movl	%ecx, -104(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	$26, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%eax, -108(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	$25, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ebx
push %eax
pop %eax
	movl	%ebx, -112(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	$24, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %esi
push %eax
pop %eax
	movl	%esi, -116(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	$23, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %edi
push %eax
pop %eax
	movl	%edi, -120(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	$22, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ecx
push %eax
pop %eax
	movl	%ecx, -124(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	$21, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%eax, -128(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	$20, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ebx
push %eax
pop %eax
	movl	%ebx, -132(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	$19, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %esi
push %eax
pop %eax
	movl	%esi, -136(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	$18, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %edi
push %eax
pop %eax
	movl	%edi, -140(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	$17, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ecx
push %eax
pop %eax
	movl	%ecx, -144(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	$16, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%eax, -148(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	$15, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ebx
push %eax
pop %eax
	movl	%ebx, -152(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	$14, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %esi
push %eax
pop %eax
	movl	%esi, -156(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	$13, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %edi
push %eax
pop %eax
	movl	%edi, -160(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	$12, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ecx
push %eax
pop %eax
	movl	%ecx, -164(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	$11, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%eax, -168(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	$10, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ebx
push %eax
pop %eax
	movl	%ebx, -172(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	$9, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %esi
push %eax
pop %eax
	movl	%esi, -176(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	$8, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %edi
push %eax
pop %eax
	movl	%edi, -180(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	$7, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ecx
push %eax
pop %eax
	movl	%ecx, -184(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	$6, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%eax, -188(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	$5, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %edi
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	$4, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %esi
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	$3, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ebx
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	$2, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ecx
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	$1, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%eax, -192(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%edx, 128(%esp)
push %eax
pop %eax
	movl	-92(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 124(%esp)
push %eax
pop %eax
	movl	-96(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 120(%esp)
push %eax
pop %eax
	movl	-100(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 116(%esp)
push %eax
pop %eax
	movl	-104(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 112(%esp)
push %eax
pop %eax
	movl	-108(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 108(%esp)
push %eax
pop %eax
	movl	-112(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 104(%esp)
push %eax
pop %eax
	movl	-116(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 100(%esp)
push %eax
pop %eax
	movl	-120(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 96(%esp)
push %eax
pop %eax
	movl	-124(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 92(%esp)
push %eax
pop %eax
	movl	-128(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 88(%esp)
push %eax
pop %eax
	movl	-132(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 84(%esp)
push %eax
pop %eax
	movl	-136(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 80(%esp)
push %eax
pop %eax
	movl	-140(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 76(%esp)
push %eax
pop %eax
	movl	-144(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 72(%esp)
push %eax
pop %eax
	movl	-148(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 68(%esp)
push %eax
pop %eax
	movl	-152(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 64(%esp)
push %eax
pop %eax
	movl	-156(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 60(%esp)
push %eax
pop %eax
	movl	-160(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 56(%esp)
push %eax
pop %eax
	movl	-164(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 52(%esp)
push %eax
pop %eax
	movl	-168(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 48(%esp)
push %eax
pop %eax
	movl	-172(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 44(%esp)
push %eax
pop %eax
	movl	-176(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 40(%esp)
push %eax
pop %eax
	movl	-180(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 36(%esp)
push %eax
pop %eax
	movl	-184(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 32(%esp)
push %eax
pop %eax
	movl	-188(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 28(%esp)
push %eax
pop %eax
	movl	%edi, 24(%esp)
push %eax
pop %eax
	movl	%esi, 20(%esp)
push %eax
pop %eax
	movl	%ebx, 16(%esp)
push %eax
pop %eax
	movl	%ecx, 12(%esp)
push %eax
pop %eax
	movl	-192(%ebp), %ebx
push %eax
pop %eax
	movl	%ebx, 8(%esp)
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC38, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L28
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__CryptDestroyKey@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
L28:
	movl	-28(%ebp), %eax
push %eax
pop %eax
	leal	-12(%ebp), %esp
push %eax
pop %eax
	popl	%ebx
push %eax
pop %eax
	popl	%esi
push %eax
pop %eax
	popl	%edi
push %eax
pop %eax
	popl	%ebp
push %eax
pop %eax
	ret
push %eax
pop %eax
	.section .rdata,"dr"
	.align 4
LC39:
	.ascii "[ENC] Failed to decode: %u (%x)\0"
LC40:
	.ascii "[ENC] Key algo: %s\0"
	.align 4
LC41:
	.ascii "Microsoft Enhanced Cryptographic Provider v1.0\0"
	.align 4
LC42:
	.ascii "[ENC] Failed to create the RSA provider with CRYPT_VERIFYCONTEXT\0"
	.align 4
LC43:
	.ascii "[ENC] Failed to create the RSA provider with CRYPT_NEWKEYSET: %u (%x)\0"
	.align 4
LC44:
	.ascii "[ENC] Created the RSA provider with CRYPT_NEWKEYSET\0"
	.align 4
LC45:
	.ascii "[ENC] Created the RSA provider with CRYPT_VERIFYCONTEXT\0"
	.align 4
LC46:
	.ascii "[ENC] Failed to import the key: %u (%x)\0"
	.align 4
LC47:
	.ascii "[ENC] Encrypted data length: %u (%x)\0"
	.align 4
LC48:
	.ascii "[ENC] Failed to encrypt: %u (%x)\0"
	.align 4
LC49:
	.ascii "[ENC] Encryption witih RSA succeded, byteswapping because MS is stupid and does stuff in little endian.\0"
	.text
	.globl	_public_key_encrypt
	.def	_public_key_encrypt;	.scl	2;	.type	32;	.endef
_public_key_encrypt:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$88, %esp
push %eax
pop %eax
	movl	$0, -12(%ebp)
push %eax
pop %eax
	movl	$0, -28(%ebp)
push %eax
pop %eax
	movl	$0, -32(%ebp)
push %eax
pop %eax
	movl	$0, -36(%ebp)
push %eax
pop %eax
	movl	$0, -16(%ebp)
push %eax
pop %eax
	cmpl	$0, 8(%ebp)
push %eax
pop %eax
	je	L31
push %eax
pop %eax
	cmpl	$0, 12(%ebp)
push %eax
pop %eax
	jne	L32
push %eax
pop %eax
L31:
	movl	$160, -12(%ebp)
push %eax
pop %eax
	jmp	L44
push %eax
pop %eax
L32:
	movl	$0, -40(%ebp)
push %eax
pop %eax
	leal	-40(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 28(%esp)
push %eax
pop %eax
	leal	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 24(%esp)
push %eax
pop %eax
	movl	$0, 20(%esp)
push %eax
pop %eax
	movl	$32768, 16(%esp)
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 12(%esp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$8, 4(%esp)
push %eax
pop %eax
	movl	$1, (%esp)
push %eax
pop %eax
	movl	__imp__CryptDecodeObjectEx@32, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$32, %esp
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L34
push %eax
pop %eax
	movl	__imp__GetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC39, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L44
push %eax
pop %eax
L34:
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC40, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	$-268435456, 16(%esp)
push %eax
pop %eax
	movl	$1, 12(%esp)
push %eax
pop %eax
	movl	$LC41, 8(%esp)
push %eax
pop %eax
	movl	$0, 4(%esp)
push %eax
pop %eax
	leal	-32(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__CryptAcquireContextA@20, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$20, %esp
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L35
push %eax
pop %eax
	movl	$LC42, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	$8, 16(%esp)
push %eax
pop %eax
	movl	$1, 12(%esp)
push %eax
pop %eax
	movl	$LC41, 8(%esp)
push %eax
pop %eax
	movl	$0, 4(%esp)
push %eax
pop %eax
	leal	-32(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__CryptAcquireContextA@20, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$20, %esp
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L36
push %eax
pop %eax
	movl	__imp__GetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC43, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L44
push %eax
pop %eax
L36:
	movl	$LC44, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L37
push %eax
pop %eax
L35:
	movl	$LC45, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
L37:
	movl	-28(%ebp), %edx
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	leal	-36(%ebp), %ecx
push %eax
pop %eax
	movl	%ecx, 12(%esp)
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	$1, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__CryptImportPublicKeyInfo@16, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$16, %esp
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L38
push %eax
pop %eax
	movl	__imp__GetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC46, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L44
push %eax
pop %eax
L38:
	movl	20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -44(%ebp)
push %eax
pop %eax
	movl	-44(%ebp), %edx
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 24(%esp)
push %eax
pop %eax
	leal	-44(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 20(%esp)
push %eax
pop %eax
	movl	$0, 16(%esp)
push %eax
pop %eax
	movl	$0, 12(%esp)
push %eax
pop %eax
	movl	$1, 8(%esp)
push %eax
pop %eax
	movl	$0, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__CryptEncrypt@28, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$28, %esp
push %eax
pop %eax
	movl	-44(%ebp), %edx
push %eax
pop %eax
	movl	-44(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC47, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-44(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$1, (%esp)
push %eax
pop %eax
	call	_calloc
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
	cmpl	$0, -16(%ebp)
push %eax
pop %eax
	jne	L39
push %eax
pop %eax
	movl	$14, -12(%ebp)
push %eax
pop %eax
	jmp	L44
push %eax
pop %eax
L39:
	movl	20(%ebp), %edx
push %eax
pop %eax
	movl	-44(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 12(%esp)
push %eax
pop %eax
	movl	16(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__memcpy_s, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	-44(%ebp), %edx
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 24(%esp)
push %eax
pop %eax
	leal	20(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 20(%esp)
push %eax
pop %eax
	movl	-16(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 16(%esp)
push %eax
pop %eax
	movl	$0, 12(%esp)
push %eax
pop %eax
	movl	$1, 8(%esp)
push %eax
pop %eax
	movl	$0, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__CryptEncrypt@28, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$28, %esp
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L40
push %eax
pop %eax
	movl	__imp__GetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC48, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L44
push %eax
pop %eax
L40:
	movl	$LC49, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	$0, -20(%ebp)
push %eax
pop %eax
	jmp	L42
push %eax
pop %eax
L43:
	movl	-16(%ebp), %edx
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movb	%al, -21(%ebp)
push %eax
pop %eax
	movl	-44(%ebp), %eax
push %eax
pop %eax
	subl	-20(%ebp), %eax
push %eax
pop %eax
	leal	-1(%eax), %edx
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	-16(%ebp), %ecx
push %eax
pop %eax
	movl	-20(%ebp), %edx
push %eax
pop %eax
	addl	%ecx, %edx
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movb	%al, (%edx)
push %eax
pop %eax
	movl	-44(%ebp), %eax
push %eax
pop %eax
	subl	-20(%ebp), %eax
push %eax
pop %eax
	leal	-1(%eax), %edx
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	addl	%eax, %edx
push %eax
pop %eax
	movzbl	-21(%ebp), %eax
push %eax
pop %eax
	movb	%al, (%edx)
push %eax
pop %eax
	addl	$1, -20(%ebp)
push %eax
pop %eax
L42:
	movl	-44(%ebp), %eax
push %eax
pop %eax
	shrl	%eax
push %eax
pop %eax
	cmpl	%eax, -20(%ebp)
push %eax
pop %eax
	jb	L43
push %eax
pop %eax
	movl	24(%ebp), %eax
push %eax
pop %eax
	movl	-16(%ebp), %edx
push %eax
pop %eax
	movl	%edx, (%eax)
push %eax
pop %eax
	movl	-44(%ebp), %edx
push %eax
pop %eax
	movl	28(%ebp), %eax
push %eax
pop %eax
	movl	%edx, (%eax)
push %eax
pop %eax
L44:
	cmpl	$0, -12(%ebp)
push %eax
pop %eax
	je	L45
push %eax
pop %eax
	cmpl	$0, -16(%ebp)
push %eax
pop %eax
	je	L45
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_free
push %eax
pop %eax
L45:
	movl	-28(%ebp), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L46
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__LocalFree@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
L46:
	movl	-36(%ebp), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L47
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__CryptDestroyKey@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
L47:
	movl	-32(%ebp), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L48
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	$0, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__CryptReleaseContext@8, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$8, %esp
push %eax
pop %eax
L48:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.section .rdata,"dr"
	.align 4
LC50:
	.ascii "[ENC] Freeing encryption context %p\0"
	.align 4
LC51:
	.ascii "[ENC] Encryption context not null, so ditching AES key %ul\0"
	.align 4
LC52:
	.ascii "[ENC] Encryption context not null, so ditching provider\0"
	.align 4
LC53:
	.ascii "[ENC] Encryption context not null, so freeing the context\0"
	.text
	.globl	_free_encryption_context
	.def	_free_encryption_context;	.scl	2;	.type	32;	.endef
_free_encryption_context:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$40, %esp
push %eax
pop %eax
	movl	$0, -12(%ebp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	88(%eax), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC50, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	88(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L51
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	88(%eax), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC51, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	88(%eax), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L52
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	88(%eax), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__CryptDestroyKey@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
L52:
	movl	$LC52, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	88(%eax), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L53
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	88(%eax), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	movl	$0, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__CryptReleaseContext@8, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$8, %esp
push %eax
pop %eax
L53:
	movl	$LC53, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	88(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_free
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	$0, 88(%eax)
push %eax
pop %eax
L51:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.section .rdata,"dr"
	.align 4
LC54:
	.ascii "[ENC] failed to allocate the encryption context\0"
	.align 4
LC55:
	.ascii "[ENC] failed to acquire the crypt context %d: %d (%x)\0"
	.align 4
LC56:
	.ascii "[ENC] managed to acquire the crypt context %d!\0"
	.align 4
LC57:
	.ascii "[ENC] failed to generate random key: %d (%x)\0"
	.align 4
LC58:
	.ascii "[ENC] failed to import random key: %d (%x)\0"
	.text
	.globl	_request_negotiate_aes_key
	.def	_request_negotiate_aes_key;	.scl	2;	.type	32;	.endef
_request_negotiate_aes_key:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	pushl	%ebx
push %eax
pop %eax
	subl	$84, %esp
push %eax
pop %eax
	movl	$0, -12(%ebp)
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_create_response
push %eax
pop %eax
	movl	%eax, -20(%ebp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	88(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L56
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_free_encryption_context
push %eax
pop %eax
L56:
	movl	$64, 4(%esp)
push %eax
pop %eax
	movl	$1, (%esp)
push %eax
pop %eax
	call	_calloc
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 88(%eax)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	88(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L57
push %eax
pop %eax
	movl	$LC54, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	$14, -12(%ebp)
push %eax
pop %eax
	jmp	L69
push %eax
pop %eax
L57:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	88(%eax), %eax
push %eax
pop %eax
	movl	%eax, -24(%ebp)
push %eax
pop %eax
	movl	$0, -16(%ebp)
push %eax
pop %eax
	jmp	L59
push %eax
pop %eax
L63:
	movl	-16(%ebp), %edx
push %eax
pop %eax
	movl	%edx, %eax
push %eax
pop %eax
	addl	%eax, %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	sall	$2, %eax
push %eax
pop %eax
	addl	$_AesProviders+8, %eax
push %eax
pop %eax
	movl	(%eax), %ebx
push %eax
pop %eax
	movl	-16(%ebp), %edx
push %eax
pop %eax
	movl	%edx, %eax
push %eax
pop %eax
	addl	%eax, %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	sall	$2, %eax
push %eax
pop %eax
	addl	$_AesProviders+4, %eax
push %eax
pop %eax
	movl	(%eax), %ecx
push %eax
pop %eax
	movl	-16(%ebp), %edx
push %eax
pop %eax
	movl	%edx, %eax
push %eax
pop %eax
	addl	%eax, %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	sall	$2, %eax
push %eax
pop %eax
	addl	$_AesProviders, %eax
push %eax
pop %eax
	movl	(%eax), %edx
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	%ebx, 16(%esp)
push %eax
pop %eax
	movl	%ecx, 12(%esp)
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	$0, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__CryptAcquireContextA@20, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$20, %esp
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L60
push %eax
pop %eax
	movl	__imp__GetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 12(%esp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC55, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L71
push %eax
pop %eax
L60:
	movl	$0, -12(%ebp)
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	-16(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 8(%eax)
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC56, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L62
push %eax
pop %eax
L71:
	addl	$1, -16(%ebp)
push %eax
pop %eax
L59:
	movl	-16(%ebp), %eax
push %eax
pop %eax
	cmpl	$3, %eax
push %eax
pop %eax
	jbe	L63
push %eax
pop %eax
L62:
	cmpl	$0, -12(%ebp)
push %eax
pop %eax
	jne	L72
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movb	$8, 16(%eax)
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movb	$2, 17(%eax)
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	$26128, 20(%eax)
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	$32, 24(%eax)
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	leal	28(%eax), %ecx
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	24(%eax), %edx
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	movl	%ecx, 8(%esp)
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__CryptGenRandom@12, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$12, %esp
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L65
push %eax
pop %eax
	movl	__imp__GetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC57, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L69
push %eax
pop %eax
L65:
	movl	-24(%ebp), %eax
push %eax
pop %eax
	leal	4(%eax), %ecx
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	leal	16(%eax), %edx
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	movl	%ecx, 20(%esp)
push %eax
pop %eax
	movl	$0, 16(%esp)
push %eax
pop %eax
	movl	$0, 12(%esp)
push %eax
pop %eax
	movl	$44, 8(%esp)
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__CryptImportKey@24, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$24, %esp
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L66
push %eax
pop %eax
	movl	__imp__GetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC58, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L69
push %eax
pop %eax
L66:
	movl	$0, -36(%ebp)
push %eax
pop %eax
	leal	-36(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$262694, 4(%esp)
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_get_tlv_value_raw
push %eax
pop %eax
	movl	%eax, -28(%ebp)
push %eax
pop %eax
	movl	$0, -40(%ebp)
push %eax
pop %eax
	movl	$0, -44(%ebp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	88(%eax), %eax
push %eax
pop %eax
	movl	24(%eax), %edx
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	88(%eax), %eax
push %eax
pop %eax
	leal	28(%eax), %ebx
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	leal	-44(%ebp), %ecx
push %eax
pop %eax
	movl	%ecx, 20(%esp)
push %eax
pop %eax
	leal	-40(%ebp), %ecx
push %eax
pop %eax
	movl	%ecx, 16(%esp)
push %eax
pop %eax
	movl	%edx, 12(%esp)
push %eax
pop %eax
	movl	%ebx, 8(%esp)
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_public_key_encrypt
push %eax
pop %eax
	movl	%eax, -32(%ebp)
push %eax
pop %eax
	movl	$1, 8(%esp)
push %eax
pop %eax
	movl	$131623, 4(%esp)
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_add_tlv_uint
push %eax
pop %eax
	cmpl	$0, -32(%ebp)
push %eax
pop %eax
	jne	L67
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L67
push %eax
pop %eax
	movl	-44(%ebp), %edx
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 12(%esp)
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$262697, 4(%esp)
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_add_tlv_raw
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_free
push %eax
pop %eax
	jmp	L68
push %eax
pop %eax
L67:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	88(%eax), %eax
push %eax
pop %eax
	movl	24(%eax), %eax
push %eax
pop %eax
	movl	8(%ebp), %edx
push %eax
pop %eax
	movl	88(%edx), %edx
push %eax
pop %eax
	addl	$28, %edx
push %eax
pop %eax
	movl	%eax, 12(%esp)
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	$262696, 4(%esp)
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_add_tlv_raw
push %eax
pop %eax
L68:
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	$1, 12(%eax)
push %eax
pop %eax
	jmp	L69
push %eax
pop %eax
L72:
	nop
push %eax
pop %eax
L69:
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_transmit_response
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	88(%eax), %eax
push %eax
pop %eax
	movl	$1, 60(%eax)
push %eax
pop %eax
	movl	$0, %eax
push %eax
pop %eax
	movl	-4(%ebp), %ebx
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.ident	"GCC: (GNU) 9.3-win32 20200320"
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	_vsnprintf_s;	.scl	2;	.type	32;	.endef
	.def	_xor_bytes;	.scl	2;	.type	32;	.endef
	.def	_calloc;	.scl	2;	.type	32;	.endef
	.def	_malloc;	.scl	2;	.type	32;	.endef
	.def	_packet_destroy;	.scl	2;	.type	32;	.endef
	.def	_rand_xor_key;	.scl	2;	.type	32;	.endef
	.def	_free;	.scl	2;	.type	32;	.endef
	.def	_packet_create_response;	.scl	2;	.type	32;	.endef
	.def	_packet_get_tlv_value_raw;	.scl	2;	.type	32;	.endef
	.def	_packet_add_tlv_uint;	.scl	2;	.type	32;	.endef
	.def	_packet_add_tlv_raw;	.scl	2;	.type	32;	.endef
	.def	_packet_transmit_response;	.scl	2;	.type	32;	.endef
