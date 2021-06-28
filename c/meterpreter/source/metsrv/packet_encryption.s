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
	movl	%esp, %ebp
	pushl	%esi
	pushl	%ebx
	subl	$1072, %esp
	movl	__imp__GetCurrentThreadId@0, %eax
	call	*%eax
	movl	%eax, 16(%esp)
	movl	$LC0, 12(%esp)
	movl	$1023, 8(%esp)
	movl	$1024, 4(%esp)
	leal	-1040(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp___snprintf_s, %eax
	call	*%eax
	leal	-1040(%ebp), %eax
	movl	%eax, (%esp)
	call	_strlen
	movl	%eax, -12(%ebp)
	leal	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %ecx
	movl	$1021, %eax
	subl	-12(%ebp), %eax
	movl	%eax, %edx
	movl	$1024, %eax
	subl	-12(%ebp), %eax
	leal	-1040(%ebp), %esi
	movl	-12(%ebp), %ebx
	addl	%esi, %ebx
	movl	%ecx, 16(%esp)
	movl	8(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_vsnprintf_s
	movl	$LC1, 8(%esp)
	movl	$1024, 4(%esp)
	leal	-1040(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__strcat_s, %eax
	call	*%eax
	leal	-1040(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__OutputDebugStringA@4, %eax
	call	*%eax
	subl	$4, %esp
	nop
	leal	-8(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
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
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$316, %esp
	movl	$0, -28(%ebp)
	movl	$0, -32(%ebp)
	movl	$0, -64(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
	addl	$31, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	addl	$30, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -76(%ebp)
	movl	-36(%ebp), %eax
	addl	$29, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -80(%ebp)
	movl	-36(%ebp), %eax
	addl	$28, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -84(%ebp)
	movl	-36(%ebp), %eax
	addl	$27, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -88(%ebp)
	movl	-36(%ebp), %eax
	addl	$26, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -92(%ebp)
	movl	-36(%ebp), %eax
	addl	$25, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -96(%ebp)
	movl	-36(%ebp), %eax
	addl	$24, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -100(%ebp)
	movl	-36(%ebp), %eax
	addl	$23, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -104(%ebp)
	movl	-36(%ebp), %eax
	addl	$22, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -108(%ebp)
	movl	-36(%ebp), %eax
	addl	$21, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -112(%ebp)
	movl	-36(%ebp), %eax
	addl	$20, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -116(%ebp)
	movl	-36(%ebp), %eax
	addl	$19, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -120(%ebp)
	movl	-36(%ebp), %eax
	addl	$18, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -124(%ebp)
	movl	-36(%ebp), %eax
	addl	$17, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -128(%ebp)
	movl	-36(%ebp), %eax
	addl	$16, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -132(%ebp)
	movl	-36(%ebp), %eax
	addl	$15, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -136(%ebp)
	movl	-36(%ebp), %eax
	addl	$14, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -140(%ebp)
	movl	-36(%ebp), %eax
	addl	$13, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -144(%ebp)
	movl	-36(%ebp), %eax
	addl	$12, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -148(%ebp)
	movl	-36(%ebp), %eax
	addl	$11, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -152(%ebp)
	movl	-36(%ebp), %eax
	addl	$10, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -156(%ebp)
	movl	-36(%ebp), %eax
	addl	$9, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -160(%ebp)
	movl	-36(%ebp), %eax
	addl	$8, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -164(%ebp)
	movl	-36(%ebp), %eax
	addl	$7, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -168(%ebp)
	movl	-36(%ebp), %eax
	addl	$6, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -172(%ebp)
	movl	-36(%ebp), %eax
	addl	$5, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	-36(%ebp), %eax
	addl	$4, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	-36(%ebp), %eax
	addl	$3, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	-36(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	-36(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -176(%ebp)
	movl	-36(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 128(%esp)
	movl	-76(%ebp), %edx
	movl	%edx, 124(%esp)
	movl	-80(%ebp), %edx
	movl	%edx, 120(%esp)
	movl	-84(%ebp), %edx
	movl	%edx, 116(%esp)
	movl	-88(%ebp), %edx
	movl	%edx, 112(%esp)
	movl	-92(%ebp), %edx
	movl	%edx, 108(%esp)
	movl	-96(%ebp), %edx
	movl	%edx, 104(%esp)
	movl	-100(%ebp), %edx
	movl	%edx, 100(%esp)
	movl	-104(%ebp), %edx
	movl	%edx, 96(%esp)
	movl	-108(%ebp), %edx
	movl	%edx, 92(%esp)
	movl	-112(%ebp), %edx
	movl	%edx, 88(%esp)
	movl	-116(%ebp), %edx
	movl	%edx, 84(%esp)
	movl	-120(%ebp), %edx
	movl	%edx, 80(%esp)
	movl	-124(%ebp), %edx
	movl	%edx, 76(%esp)
	movl	-128(%ebp), %edx
	movl	%edx, 72(%esp)
	movl	-132(%ebp), %edx
	movl	%edx, 68(%esp)
	movl	-136(%ebp), %edx
	movl	%edx, 64(%esp)
	movl	-140(%ebp), %edx
	movl	%edx, 60(%esp)
	movl	-144(%ebp), %edx
	movl	%edx, 56(%esp)
	movl	-148(%ebp), %edx
	movl	%edx, 52(%esp)
	movl	-152(%ebp), %edx
	movl	%edx, 48(%esp)
	movl	-156(%ebp), %edx
	movl	%edx, 44(%esp)
	movl	-160(%ebp), %edx
	movl	%edx, 40(%esp)
	movl	-164(%ebp), %edx
	movl	%edx, 36(%esp)
	movl	-168(%ebp), %edx
	movl	%edx, 32(%esp)
	movl	-172(%ebp), %edx
	movl	%edx, 28(%esp)
	movl	%edi, 24(%esp)
	movl	%esi, 20(%esp)
	movl	%ebx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	-176(%ebp), %edi
	movl	%edi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC4, (%esp)
	call	_real_dprintf
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC5, (%esp)
	call	_real_dprintf
	movl	16(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	20(%ebp), %eax
	leal	-4(%eax), %ecx
	movl	16(%ebp), %eax
	leal	4(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_xor_bytes
	movl	16(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
	addl	$31, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	addl	$30, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -76(%ebp)
	movl	-36(%ebp), %eax
	addl	$29, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -80(%ebp)
	movl	-36(%ebp), %eax
	addl	$28, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -84(%ebp)
	movl	-36(%ebp), %eax
	addl	$27, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -88(%ebp)
	movl	-36(%ebp), %eax
	addl	$26, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -92(%ebp)
	movl	-36(%ebp), %eax
	addl	$25, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -96(%ebp)
	movl	-36(%ebp), %eax
	addl	$24, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -100(%ebp)
	movl	-36(%ebp), %eax
	addl	$23, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -104(%ebp)
	movl	-36(%ebp), %eax
	addl	$22, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -108(%ebp)
	movl	-36(%ebp), %eax
	addl	$21, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -112(%ebp)
	movl	-36(%ebp), %eax
	addl	$20, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -116(%ebp)
	movl	-36(%ebp), %eax
	addl	$19, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -120(%ebp)
	movl	-36(%ebp), %eax
	addl	$18, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -124(%ebp)
	movl	-36(%ebp), %eax
	addl	$17, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -128(%ebp)
	movl	-36(%ebp), %eax
	addl	$16, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -132(%ebp)
	movl	-36(%ebp), %eax
	addl	$15, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -136(%ebp)
	movl	-36(%ebp), %eax
	addl	$14, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -140(%ebp)
	movl	-36(%ebp), %eax
	addl	$13, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -144(%ebp)
	movl	-36(%ebp), %eax
	addl	$12, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -148(%ebp)
	movl	-36(%ebp), %eax
	addl	$11, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -152(%ebp)
	movl	-36(%ebp), %eax
	addl	$10, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -156(%ebp)
	movl	-36(%ebp), %eax
	addl	$9, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -160(%ebp)
	movl	-36(%ebp), %eax
	addl	$8, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -164(%ebp)
	movl	-36(%ebp), %eax
	addl	$7, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -168(%ebp)
	movl	-36(%ebp), %eax
	addl	$6, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -172(%ebp)
	movl	-36(%ebp), %eax
	addl	$5, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	-36(%ebp), %eax
	addl	$4, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	-36(%ebp), %eax
	addl	$3, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	-36(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	-36(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -176(%ebp)
	movl	-36(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 128(%esp)
	movl	-76(%ebp), %edx
	movl	%edx, 124(%esp)
	movl	-80(%ebp), %edx
	movl	%edx, 120(%esp)
	movl	-84(%ebp), %edx
	movl	%edx, 116(%esp)
	movl	-88(%ebp), %edx
	movl	%edx, 112(%esp)
	movl	-92(%ebp), %edx
	movl	%edx, 108(%esp)
	movl	-96(%ebp), %edx
	movl	%edx, 104(%esp)
	movl	-100(%ebp), %edx
	movl	%edx, 100(%esp)
	movl	-104(%ebp), %edx
	movl	%edx, 96(%esp)
	movl	-108(%ebp), %edx
	movl	%edx, 92(%esp)
	movl	-112(%ebp), %edx
	movl	%edx, 88(%esp)
	movl	-116(%ebp), %edx
	movl	%edx, 84(%esp)
	movl	-120(%ebp), %edx
	movl	%edx, 80(%esp)
	movl	-124(%ebp), %edx
	movl	%edx, 76(%esp)
	movl	-128(%ebp), %edx
	movl	%edx, 72(%esp)
	movl	-132(%ebp), %edx
	movl	%edx, 68(%esp)
	movl	-136(%ebp), %edx
	movl	%edx, 64(%esp)
	movl	-140(%ebp), %edx
	movl	%edx, 60(%esp)
	movl	-144(%ebp), %edx
	movl	%edx, 56(%esp)
	movl	-148(%ebp), %edx
	movl	%edx, 52(%esp)
	movl	-152(%ebp), %edx
	movl	%edx, 48(%esp)
	movl	-156(%ebp), %edx
	movl	%edx, 44(%esp)
	movl	-160(%ebp), %edx
	movl	%edx, 40(%esp)
	movl	-164(%ebp), %edx
	movl	%edx, 36(%esp)
	movl	-168(%ebp), %edx
	movl	%edx, 32(%esp)
	movl	-172(%ebp), %edx
	movl	%edx, 28(%esp)
	movl	%edi, 24(%esp)
	movl	%esi, 20(%esp)
	movl	%ebx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	-176(%ebp), %esi
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC4, (%esp)
	call	_real_dprintf
	movl	$52, 4(%esp)
	movl	$1, (%esp)
	call	_calloc
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	jne	L3
	movl	$8, -28(%ebp)
	jmp	L4
L3:
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__ntohl@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	%eax, -44(%ebp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC6, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	L5
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	L5
	cmpl	$0, -44(%ebp)
	je	L5
	movl	$LC7, (%esp)
	call	_real_dprintf
	movl	16(%ebp), %eax
	addl	$32, %eax
	movl	%eax, -48(%ebp)
	movl	-48(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	-52(%ebp), %eax
	addl	$15, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, %edx
	movl	-52(%ebp), %eax
	addl	$14, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -76(%ebp)
	movl	-52(%ebp), %eax
	addl	$13, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -80(%ebp)
	movl	-52(%ebp), %eax
	addl	$12, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -84(%ebp)
	movl	-52(%ebp), %eax
	addl	$11, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -88(%ebp)
	movl	-52(%ebp), %eax
	addl	$10, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -92(%ebp)
	movl	-52(%ebp), %eax
	addl	$9, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -96(%ebp)
	movl	-52(%ebp), %eax
	addl	$8, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -100(%ebp)
	movl	-52(%ebp), %eax
	addl	$7, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -104(%ebp)
	movl	-52(%ebp), %eax
	addl	$6, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -108(%ebp)
	movl	-52(%ebp), %eax
	addl	$5, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	-52(%ebp), %eax
	addl	$4, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	-52(%ebp), %eax
	addl	$3, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	-52(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	-52(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -112(%ebp)
	movl	-52(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 64(%esp)
	movl	-76(%ebp), %edx
	movl	%edx, 60(%esp)
	movl	-80(%ebp), %edx
	movl	%edx, 56(%esp)
	movl	-84(%ebp), %edx
	movl	%edx, 52(%esp)
	movl	-88(%ebp), %edx
	movl	%edx, 48(%esp)
	movl	-92(%ebp), %edx
	movl	%edx, 44(%esp)
	movl	-96(%ebp), %edx
	movl	%edx, 40(%esp)
	movl	-100(%ebp), %edx
	movl	%edx, 36(%esp)
	movl	-104(%ebp), %edx
	movl	%edx, 32(%esp)
	movl	-108(%ebp), %edx
	movl	%edx, 28(%esp)
	movl	%edi, 24(%esp)
	movl	%esi, 20(%esp)
	movl	%ebx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	-112(%ebp), %ebx
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC8, (%esp)
	call	_real_dprintf
	movl	-40(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__ntohl@4, %eax
	call	*%eax
	subl	$4, %esp
	subl	$24, %eax
	movl	%eax, -68(%ebp)
	movl	-48(%ebp), %eax
	addl	$16, %eax
	movl	%eax, -56(%ebp)
	movl	-68(%ebp), %edx
	movl	-68(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC9, (%esp)
	call	_real_dprintf
	movl	-68(%ebp), %eax
	andl	$15, %eax
	movl	%eax, 4(%esp)
	movl	$LC10, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	4(%eax), %eax
	leal	-64(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__CryptDuplicateKey@16, %eax
	call	*%eax
	subl	$16, %esp
	testl	%eax, %eax
	jne	L6
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC11, (%esp)
	call	_real_dprintf
	jmp	L4
L6:
	movl	$1, -72(%ebp)
	movl	-64(%ebp), %eax
	movl	$0, 12(%esp)
	leal	-72(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__CryptSetKeyParam@16, %eax
	call	*%eax
	subl	$16, %esp
	testl	%eax, %eax
	jne	L8
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC12, (%esp)
	call	_real_dprintf
	jmp	L4
L8:
	movl	-64(%ebp), %eax
	movl	$0, 12(%esp)
	movl	-52(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__CryptSetKeyParam@16, %eax
	call	*%eax
	subl	$16, %esp
	testl	%eax, %eax
	jne	L9
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC13, (%esp)
	call	_real_dprintf
	jmp	L4
L9:
	movl	-64(%ebp), %eax
	leal	-68(%ebp), %edx
	movl	%edx, 20(%esp)
	movl	-56(%ebp), %edx
	movl	%edx, 16(%esp)
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__CryptDecrypt@24, %eax
	call	*%eax
	subl	$24, %esp
	testl	%eax, %eax
	jne	L10
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC14, (%esp)
	call	_real_dprintf
	jmp	L4
L10:
	movl	-68(%ebp), %edx
	movl	-68(%ebp), %eax
	movl	%edx, 12(%esp)
	movl	-56(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__memmove_s, %eax
	call	*%eax
	movl	-68(%ebp), %eax
	addl	$8, %eax
	movl	%eax, (%esp)
	movl	__imp__htonl@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	-40(%ebp), %edx
	movl	%eax, 24(%edx)
L5:
	movl	-40(%ebp), %eax
	movl	24(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%edx, 24(%eax)
	movl	-40(%ebp), %eax
	movl	28(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%edx, 28(%eax)
	movl	-32(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__ntohl@4, %eax
	call	*%eax
	subl	$4, %esp
	leal	-8(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%edx, 36(%eax)
	movl	-32(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC15, (%esp)
	call	_real_dprintf
	movl	-32(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__ntohl@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	%eax, 4(%esp)
	movl	$LC16, (%esp)
	call	_real_dprintf
	movl	-32(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%edx, 32(%eax)
	movl	-32(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	jne	L11
	movl	$LC17, (%esp)
	call	_real_dprintf
	movl	$8, -28(%ebp)
	jmp	L4
L11:
	movl	$LC18, (%esp)
	call	_real_dprintf
	movl	-32(%ebp), %eax
	movl	36(%eax), %ecx
	movl	16(%ebp), %eax
	leal	32(%eax), %ebx
	movl	-32(%ebp), %eax
	movl	36(%eax), %edx
	movl	-32(%ebp), %eax
	movl	32(%eax), %eax
	movl	%ecx, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__memcpy_s, %eax
	call	*%eax
	movl	-32(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
	addl	$7, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	-36(%ebp), %eax
	addl	$6, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -76(%ebp)
	movl	-36(%ebp), %eax
	addl	$5, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -80(%ebp)
	movl	-36(%ebp), %eax
	addl	$4, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	-36(%ebp), %eax
	addl	$3, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	-36(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	-36(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	-36(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%ecx, 32(%esp)
	movl	-76(%ebp), %ecx
	movl	%ecx, 28(%esp)
	movl	-80(%ebp), %ecx
	movl	%ecx, 24(%esp)
	movl	%edi, 20(%esp)
	movl	%esi, 16(%esp)
	movl	%ebx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC19, (%esp)
	call	_real_dprintf
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__ntohl@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	%eax, -60(%ebp)
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC20, (%esp)
	call	_real_dprintf
	movl	-60(%ebp), %eax
	addl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
	addl	$7, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	-36(%ebp), %eax
	addl	$6, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -76(%ebp)
	movl	-36(%ebp), %eax
	addl	$5, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -80(%ebp)
	movl	-36(%ebp), %eax
	addl	$4, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	-36(%ebp), %eax
	addl	$3, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	-36(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	-36(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	-36(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%ecx, 32(%esp)
	movl	-76(%ebp), %ecx
	movl	%ecx, 28(%esp)
	movl	-80(%ebp), %ecx
	movl	%ecx, 24(%esp)
	movl	%edi, 20(%esp)
	movl	%esi, 16(%esp)
	movl	%ebx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC21, (%esp)
	call	_real_dprintf
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC22, (%esp)
	call	_real_dprintf
	movl	12(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	%edx, (%eax)
L4:
	cmpl	$0, -28(%ebp)
	je	L12
	cmpl	$0, -32(%ebp)
	je	L12
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_destroy
L12:
	movl	-64(%ebp), %eax
	testl	%eax, %eax
	je	L13
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__CryptDestroyKey@4, %eax
	call	*%eax
	subl	$4, %esp
L13:
	movl	-28(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
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
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$332, %esp
	movl	$0, -28(%ebp)
	movl	$0, -64(%ebp)
	movl	$LC23, (%esp)
	call	_real_dprintf
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_rand_xor_key
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	leal	32(%eax), %edx
	movl	12(%ebp), %eax
	addl	$4, %eax
	movl	$16, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$16, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__memcpy_s, %eax
	call	*%eax
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	L16
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	L16
	movl	$LC24, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	je	L17
	movl	$LC25, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	4(%eax), %eax
	leal	-64(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__CryptDuplicateKey@16, %eax
	call	*%eax
	subl	$16, %esp
	testl	%eax, %eax
	jne	L18
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC26, (%esp)
	call	_real_dprintf
	nop
	jmp	L26
L18:
	movl	$1, -68(%ebp)
	movl	-64(%ebp), %eax
	movl	$0, 12(%esp)
	leal	-68(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__CryptSetKeyParam@16, %eax
	call	*%eax
	subl	$16, %esp
	testl	%eax, %eax
	jne	L20
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC12, (%esp)
	call	_real_dprintf
	jmp	L19
L20:
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	(%eax), %eax
	leal	-84(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$16, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__CryptGenRandom@12, %eax
	call	*%eax
	subl	$12, %esp
	testl	%eax, %eax
	jne	L21
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC27, (%esp)
	call	_real_dprintf
L21:
	movzbl	-69(%ebp), %eax
	movzbl	%al, %eax
	movl	%eax, %edx
	movzbl	-70(%ebp), %eax
	movzbl	%al, %ebx
	movl	%ebx, -92(%ebp)
	movzbl	-71(%ebp), %eax
	movzbl	%al, %esi
	movl	%esi, -96(%ebp)
	movzbl	-72(%ebp), %eax
	movzbl	%al, %edi
	movl	%edi, -100(%ebp)
	movzbl	-73(%ebp), %eax
	movzbl	%al, %ecx
	movl	%ecx, -104(%ebp)
	movzbl	-74(%ebp), %eax
	movzbl	%al, %eax
	movl	%eax, -108(%ebp)
	movzbl	-75(%ebp), %eax
	movzbl	%al, %ebx
	movl	%ebx, -112(%ebp)
	movzbl	-76(%ebp), %eax
	movzbl	%al, %esi
	movl	%esi, -116(%ebp)
	movzbl	-77(%ebp), %eax
	movzbl	%al, %edi
	movl	%edi, -120(%ebp)
	movzbl	-78(%ebp), %eax
	movzbl	%al, %ecx
	movl	%ecx, -124(%ebp)
	movzbl	-79(%ebp), %eax
	movzbl	%al, %edi
	movzbl	-80(%ebp), %eax
	movzbl	%al, %esi
	movzbl	-81(%ebp), %eax
	movzbl	%al, %ebx
	movzbl	-82(%ebp), %eax
	movzbl	%al, %ecx
	movzbl	-83(%ebp), %eax
	movzbl	%al, %eax
	movl	%eax, -128(%ebp)
	movzbl	-84(%ebp), %eax
	movzbl	%al, %eax
	movl	%edx, 64(%esp)
	movl	-92(%ebp), %edx
	movl	%edx, 60(%esp)
	movl	-96(%ebp), %edx
	movl	%edx, 56(%esp)
	movl	-100(%ebp), %edx
	movl	%edx, 52(%esp)
	movl	-104(%ebp), %edx
	movl	%edx, 48(%esp)
	movl	-108(%ebp), %edx
	movl	%edx, 44(%esp)
	movl	-112(%ebp), %edx
	movl	%edx, 40(%esp)
	movl	-116(%ebp), %edx
	movl	%edx, 36(%esp)
	movl	-120(%ebp), %edx
	movl	%edx, 32(%esp)
	movl	-124(%ebp), %edx
	movl	%edx, 28(%esp)
	movl	%edi, 24(%esp)
	movl	%esi, 20(%esp)
	movl	%ebx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	-128(%ebp), %edi
	movl	%edi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC28, (%esp)
	call	_real_dprintf
	movl	-64(%ebp), %eax
	movl	$0, 12(%esp)
	leal	-84(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__CryptSetKeyParam@16, %eax
	call	*%eax
	subl	$16, %esp
	testl	%eax, %eax
	jne	L22
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC29, (%esp)
	call	_real_dprintf
	jmp	L19
L22:
	movl	$LC30, (%esp)
	call	_real_dprintf
	movl	$1, (%esp)
	movl	__imp__htonl@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	12(%ebp), %edx
	movl	%eax, 20(%edx)
	movl	12(%ebp), %eax
	movl	36(%eax), %eax
	shrl	$4, %eax
	addl	$1, %eax
	sall	$4, %eax
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	addl	$48, %eax
	movl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %eax
	addl	$32, %eax
	movl	%eax, -44(%ebp)
	movl	-44(%ebp), %eax
	addl	$16, %eax
	movl	%eax, -48(%ebp)
	movl	12(%ebp), %eax
	movl	36(%eax), %edx
	movl	20(%ebp), %eax
	movl	%edx, (%eax)
	movl	12(%ebp), %eax
	movl	36(%eax), %ecx
	movl	12(%ebp), %eax
	movl	32(%eax), %edx
	movl	12(%ebp), %eax
	movl	36(%eax), %eax
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__memcpy_s, %eax
	call	*%eax
	movl	-64(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	%edx, 24(%esp)
	movl	20(%ebp), %edx
	movl	%edx, 20(%esp)
	movl	-48(%ebp), %edx
	movl	%edx, 16(%esp)
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__CryptEncrypt@28, %eax
	call	*%eax
	subl	$28, %esp
	testl	%eax, %eax
	jne	L23
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC31, (%esp)
	call	_real_dprintf
	jmp	L24
L23:
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC32, (%esp)
	call	_real_dprintf
L24:
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	addl	$24, %eax
	movl	%eax, (%esp)
	movl	__imp__ntohl@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	12(%ebp), %edx
	movl	%eax, 24(%edx)
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	leal	48(%eax), %edx
	movl	20(%ebp), %eax
	movl	%edx, (%eax)
	movl	12(%ebp), %eax
	movl	$32, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$32, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__memcpy_s, %eax
	call	*%eax
	movl	$16, 12(%esp)
	leal	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$16, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__memcpy_s, %eax
	call	*%eax
	jmp	L26
L19:
	jmp	L26
L17:
	movl	$LC33, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	$1, 60(%eax)
	jmp	L26
L16:
	movl	$LC34, (%esp)
	call	_real_dprintf
L26:
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L27
	movl	12(%ebp), %eax
	movl	36(%eax), %eax
	leal	32(%eax), %edx
	movl	20(%ebp), %eax
	movl	%edx, (%eax)
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -52(%ebp)
	movl	-52(%ebp), %eax
	addl	$32, %eax
	movl	%eax, -56(%ebp)
	movl	$0, (%esp)
	movl	__imp__htonl@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	12(%ebp), %edx
	movl	%eax, 20(%edx)
	movl	12(%ebp), %eax
	movl	$32, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$32, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__memcpy_s, %eax
	call	*%eax
	movl	12(%ebp), %eax
	movl	36(%eax), %ecx
	movl	12(%ebp), %eax
	movl	32(%eax), %edx
	movl	12(%ebp), %eax
	movl	36(%eax), %eax
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__memcpy_s, %eax
	call	*%eax
L27:
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC35, (%esp)
	call	_real_dprintf
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -60(%ebp)
	movl	-60(%ebp), %eax
	addl	$31, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, %edx
	movl	-60(%ebp), %eax
	addl	$30, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -92(%ebp)
	movl	-60(%ebp), %eax
	addl	$29, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -96(%ebp)
	movl	-60(%ebp), %eax
	addl	$28, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -100(%ebp)
	movl	-60(%ebp), %eax
	addl	$27, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -104(%ebp)
	movl	-60(%ebp), %eax
	addl	$26, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -108(%ebp)
	movl	-60(%ebp), %eax
	addl	$25, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -112(%ebp)
	movl	-60(%ebp), %eax
	addl	$24, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -116(%ebp)
	movl	-60(%ebp), %eax
	addl	$23, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -120(%ebp)
	movl	-60(%ebp), %eax
	addl	$22, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -124(%ebp)
	movl	-60(%ebp), %eax
	addl	$21, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -128(%ebp)
	movl	-60(%ebp), %eax
	addl	$20, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -132(%ebp)
	movl	-60(%ebp), %eax
	addl	$19, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -136(%ebp)
	movl	-60(%ebp), %eax
	addl	$18, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -140(%ebp)
	movl	-60(%ebp), %eax
	addl	$17, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -144(%ebp)
	movl	-60(%ebp), %eax
	addl	$16, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -148(%ebp)
	movl	-60(%ebp), %eax
	addl	$15, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -152(%ebp)
	movl	-60(%ebp), %eax
	addl	$14, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -156(%ebp)
	movl	-60(%ebp), %eax
	addl	$13, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -160(%ebp)
	movl	-60(%ebp), %eax
	addl	$12, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -164(%ebp)
	movl	-60(%ebp), %eax
	addl	$11, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -168(%ebp)
	movl	-60(%ebp), %eax
	addl	$10, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -172(%ebp)
	movl	-60(%ebp), %eax
	addl	$9, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -176(%ebp)
	movl	-60(%ebp), %eax
	addl	$8, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -180(%ebp)
	movl	-60(%ebp), %eax
	addl	$7, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -184(%ebp)
	movl	-60(%ebp), %eax
	addl	$6, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -188(%ebp)
	movl	-60(%ebp), %eax
	addl	$5, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	-60(%ebp), %eax
	addl	$4, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	-60(%ebp), %eax
	addl	$3, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	-60(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	-60(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -192(%ebp)
	movl	-60(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 128(%esp)
	movl	-92(%ebp), %edx
	movl	%edx, 124(%esp)
	movl	-96(%ebp), %edx
	movl	%edx, 120(%esp)
	movl	-100(%ebp), %edx
	movl	%edx, 116(%esp)
	movl	-104(%ebp), %edx
	movl	%edx, 112(%esp)
	movl	-108(%ebp), %edx
	movl	%edx, 108(%esp)
	movl	-112(%ebp), %edx
	movl	%edx, 104(%esp)
	movl	-116(%ebp), %edx
	movl	%edx, 100(%esp)
	movl	-120(%ebp), %edx
	movl	%edx, 96(%esp)
	movl	-124(%ebp), %edx
	movl	%edx, 92(%esp)
	movl	-128(%ebp), %edx
	movl	%edx, 88(%esp)
	movl	-132(%ebp), %edx
	movl	%edx, 84(%esp)
	movl	-136(%ebp), %edx
	movl	%edx, 80(%esp)
	movl	-140(%ebp), %edx
	movl	%edx, 76(%esp)
	movl	-144(%ebp), %edx
	movl	%edx, 72(%esp)
	movl	-148(%ebp), %edx
	movl	%edx, 68(%esp)
	movl	-152(%ebp), %edx
	movl	%edx, 64(%esp)
	movl	-156(%ebp), %edx
	movl	%edx, 60(%esp)
	movl	-160(%ebp), %edx
	movl	%edx, 56(%esp)
	movl	-164(%ebp), %edx
	movl	%edx, 52(%esp)
	movl	-168(%ebp), %edx
	movl	%edx, 48(%esp)
	movl	-172(%ebp), %edx
	movl	%edx, 44(%esp)
	movl	-176(%ebp), %edx
	movl	%edx, 40(%esp)
	movl	-180(%ebp), %edx
	movl	%edx, 36(%esp)
	movl	-184(%ebp), %edx
	movl	%edx, 32(%esp)
	movl	-188(%ebp), %edx
	movl	%edx, 28(%esp)
	movl	%edi, 24(%esp)
	movl	%esi, 20(%esp)
	movl	%ebx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	-192(%ebp), %esi
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC36, (%esp)
	call	_real_dprintf
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	leal	-4(%eax), %ecx
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	leal	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_xor_bytes
	movl	$LC37, (%esp)
	call	_real_dprintf
	movl	-60(%ebp), %eax
	addl	$31, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, %edx
	movl	-60(%ebp), %eax
	addl	$30, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -92(%ebp)
	movl	-60(%ebp), %eax
	addl	$29, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -96(%ebp)
	movl	-60(%ebp), %eax
	addl	$28, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -100(%ebp)
	movl	-60(%ebp), %eax
	addl	$27, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -104(%ebp)
	movl	-60(%ebp), %eax
	addl	$26, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -108(%ebp)
	movl	-60(%ebp), %eax
	addl	$25, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -112(%ebp)
	movl	-60(%ebp), %eax
	addl	$24, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -116(%ebp)
	movl	-60(%ebp), %eax
	addl	$23, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -120(%ebp)
	movl	-60(%ebp), %eax
	addl	$22, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -124(%ebp)
	movl	-60(%ebp), %eax
	addl	$21, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -128(%ebp)
	movl	-60(%ebp), %eax
	addl	$20, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -132(%ebp)
	movl	-60(%ebp), %eax
	addl	$19, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -136(%ebp)
	movl	-60(%ebp), %eax
	addl	$18, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -140(%ebp)
	movl	-60(%ebp), %eax
	addl	$17, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -144(%ebp)
	movl	-60(%ebp), %eax
	addl	$16, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -148(%ebp)
	movl	-60(%ebp), %eax
	addl	$15, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -152(%ebp)
	movl	-60(%ebp), %eax
	addl	$14, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -156(%ebp)
	movl	-60(%ebp), %eax
	addl	$13, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -160(%ebp)
	movl	-60(%ebp), %eax
	addl	$12, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -164(%ebp)
	movl	-60(%ebp), %eax
	addl	$11, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -168(%ebp)
	movl	-60(%ebp), %eax
	addl	$10, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -172(%ebp)
	movl	-60(%ebp), %eax
	addl	$9, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -176(%ebp)
	movl	-60(%ebp), %eax
	addl	$8, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -180(%ebp)
	movl	-60(%ebp), %eax
	addl	$7, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -184(%ebp)
	movl	-60(%ebp), %eax
	addl	$6, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -188(%ebp)
	movl	-60(%ebp), %eax
	addl	$5, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	-60(%ebp), %eax
	addl	$4, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	-60(%ebp), %eax
	addl	$3, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	-60(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	-60(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -192(%ebp)
	movl	-60(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 128(%esp)
	movl	-92(%ebp), %edx
	movl	%edx, 124(%esp)
	movl	-96(%ebp), %edx
	movl	%edx, 120(%esp)
	movl	-100(%ebp), %edx
	movl	%edx, 116(%esp)
	movl	-104(%ebp), %edx
	movl	%edx, 112(%esp)
	movl	-108(%ebp), %edx
	movl	%edx, 108(%esp)
	movl	-112(%ebp), %edx
	movl	%edx, 104(%esp)
	movl	-116(%ebp), %edx
	movl	%edx, 100(%esp)
	movl	-120(%ebp), %edx
	movl	%edx, 96(%esp)
	movl	-124(%ebp), %edx
	movl	%edx, 92(%esp)
	movl	-128(%ebp), %edx
	movl	%edx, 88(%esp)
	movl	-132(%ebp), %edx
	movl	%edx, 84(%esp)
	movl	-136(%ebp), %edx
	movl	%edx, 80(%esp)
	movl	-140(%ebp), %edx
	movl	%edx, 76(%esp)
	movl	-144(%ebp), %edx
	movl	%edx, 72(%esp)
	movl	-148(%ebp), %edx
	movl	%edx, 68(%esp)
	movl	-152(%ebp), %edx
	movl	%edx, 64(%esp)
	movl	-156(%ebp), %edx
	movl	%edx, 60(%esp)
	movl	-160(%ebp), %edx
	movl	%edx, 56(%esp)
	movl	-164(%ebp), %edx
	movl	%edx, 52(%esp)
	movl	-168(%ebp), %edx
	movl	%edx, 48(%esp)
	movl	-172(%ebp), %edx
	movl	%edx, 44(%esp)
	movl	-176(%ebp), %edx
	movl	%edx, 40(%esp)
	movl	-180(%ebp), %edx
	movl	%edx, 36(%esp)
	movl	-184(%ebp), %edx
	movl	%edx, 32(%esp)
	movl	-188(%ebp), %edx
	movl	%edx, 28(%esp)
	movl	%edi, 24(%esp)
	movl	%esi, 20(%esp)
	movl	%ebx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	-192(%ebp), %ebx
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC38, (%esp)
	call	_real_dprintf
	movl	-64(%ebp), %eax
	testl	%eax, %eax
	je	L28
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__CryptDestroyKey@4, %eax
	call	*%eax
	subl	$4, %esp
L28:
	movl	-28(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
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
	movl	%esp, %ebp
	subl	$88, %esp
	movl	$0, -12(%ebp)
	movl	$0, -28(%ebp)
	movl	$0, -32(%ebp)
	movl	$0, -36(%ebp)
	movl	$0, -16(%ebp)
	cmpl	$0, 8(%ebp)
	je	L31
	cmpl	$0, 12(%ebp)
	jne	L32
L31:
	movl	$160, -12(%ebp)
	jmp	L44
L32:
	movl	$0, -40(%ebp)
	leal	-40(%ebp), %eax
	movl	%eax, 28(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	$0, 20(%esp)
	movl	$32768, 16(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$8, 4(%esp)
	movl	$1, (%esp)
	movl	__imp__CryptDecodeObjectEx@32, %eax
	call	*%eax
	subl	$32, %esp
	testl	%eax, %eax
	jne	L34
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC39, (%esp)
	call	_real_dprintf
	jmp	L44
L34:
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC40, (%esp)
	call	_real_dprintf
	movl	$-268435456, 16(%esp)
	movl	$1, 12(%esp)
	movl	$LC41, 8(%esp)
	movl	$0, 4(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__CryptAcquireContextA@20, %eax
	call	*%eax
	subl	$20, %esp
	testl	%eax, %eax
	jne	L35
	movl	$LC42, (%esp)
	call	_real_dprintf
	movl	$8, 16(%esp)
	movl	$1, 12(%esp)
	movl	$LC41, 8(%esp)
	movl	$0, 4(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__CryptAcquireContextA@20, %eax
	call	*%eax
	subl	$20, %esp
	testl	%eax, %eax
	jne	L36
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC43, (%esp)
	call	_real_dprintf
	jmp	L44
L36:
	movl	$LC44, (%esp)
	call	_real_dprintf
	jmp	L37
L35:
	movl	$LC45, (%esp)
	call	_real_dprintf
L37:
	movl	-28(%ebp), %edx
	movl	-32(%ebp), %eax
	leal	-36(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__CryptImportPublicKeyInfo@16, %eax
	call	*%eax
	subl	$16, %esp
	testl	%eax, %eax
	jne	L38
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC46, (%esp)
	call	_real_dprintf
	jmp	L44
L38:
	movl	20(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	-44(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	%edx, 24(%esp)
	leal	-44(%ebp), %edx
	movl	%edx, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__CryptEncrypt@28, %eax
	call	*%eax
	subl	$28, %esp
	movl	-44(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC47, (%esp)
	call	_real_dprintf
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	_calloc
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jne	L39
	movl	$14, -12(%ebp)
	jmp	L44
L39:
	movl	20(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	%edx, 12(%esp)
	movl	16(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__memcpy_s, %eax
	call	*%eax
	movl	-44(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	%edx, 24(%esp)
	leal	20(%ebp), %edx
	movl	%edx, 20(%esp)
	movl	-16(%ebp), %edx
	movl	%edx, 16(%esp)
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__CryptEncrypt@28, %eax
	call	*%eax
	subl	$28, %esp
	testl	%eax, %eax
	jne	L40
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC48, (%esp)
	call	_real_dprintf
	jmp	L44
L40:
	movl	$LC49, (%esp)
	call	_real_dprintf
	movl	$0, -20(%ebp)
	jmp	L42
L43:
	movl	-16(%ebp), %edx
	movl	-20(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movb	%al, -21(%ebp)
	movl	-44(%ebp), %eax
	subl	-20(%ebp), %eax
	leal	-1(%eax), %edx
	movl	-16(%ebp), %eax
	addl	%edx, %eax
	movl	-16(%ebp), %ecx
	movl	-20(%ebp), %edx
	addl	%ecx, %edx
	movzbl	(%eax), %eax
	movb	%al, (%edx)
	movl	-44(%ebp), %eax
	subl	-20(%ebp), %eax
	leal	-1(%eax), %edx
	movl	-16(%ebp), %eax
	addl	%eax, %edx
	movzbl	-21(%ebp), %eax
	movb	%al, (%edx)
	addl	$1, -20(%ebp)
L42:
	movl	-44(%ebp), %eax
	shrl	%eax
	cmpl	%eax, -20(%ebp)
	jb	L43
	movl	24(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, (%eax)
	movl	-44(%ebp), %edx
	movl	28(%ebp), %eax
	movl	%edx, (%eax)
L44:
	cmpl	$0, -12(%ebp)
	je	L45
	cmpl	$0, -16(%ebp)
	je	L45
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
L45:
	movl	-28(%ebp), %eax
	testl	%eax, %eax
	je	L46
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__LocalFree@4, %eax
	call	*%eax
	subl	$4, %esp
L46:
	movl	-36(%ebp), %eax
	testl	%eax, %eax
	je	L47
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__CryptDestroyKey@4, %eax
	call	*%eax
	subl	$4, %esp
L47:
	movl	-32(%ebp), %eax
	testl	%eax, %eax
	je	L48
	movl	-32(%ebp), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__CryptReleaseContext@8, %eax
	call	*%eax
	subl	$8, %esp
L48:
	movl	-12(%ebp), %eax
	leave
	ret
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
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$0, -12(%ebp)
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC50, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	L51
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC51, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	L52
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__CryptDestroyKey@4, %eax
	call	*%eax
	subl	$4, %esp
L52:
	movl	$LC52, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L53
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__CryptReleaseContext@8, %eax
	call	*%eax
	subl	$8, %esp
L53:
	movl	$LC53, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, (%esp)
	call	_free
	movl	8(%ebp), %eax
	movl	$0, 88(%eax)
L51:
	movl	-12(%ebp), %eax
	leave
	ret
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
	movl	%esp, %ebp
	pushl	%ebx
	subl	$84, %esp
	movl	$0, -12(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_create_response
	movl	%eax, -20(%ebp)
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	L56
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_free_encryption_context
L56:
	movl	$64, 4(%esp)
	movl	$1, (%esp)
	call	_calloc
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 88(%eax)
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	jne	L57
	movl	$LC54, (%esp)
	call	_real_dprintf
	movl	$14, -12(%ebp)
	jmp	L69
L57:
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	$0, -16(%ebp)
	jmp	L59
L63:
	movl	-16(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	$_AesProviders+8, %eax
	movl	(%eax), %ebx
	movl	-16(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	$_AesProviders+4, %eax
	movl	(%eax), %ecx
	movl	-16(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	$_AesProviders, %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%ebx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__CryptAcquireContextA@20, %eax
	call	*%eax
	subl	$20, %esp
	testl	%eax, %eax
	jne	L60
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC55, (%esp)
	call	_real_dprintf
	jmp	L71
L60:
	movl	$0, -12(%ebp)
	movl	-24(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 8(%eax)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC56, (%esp)
	call	_real_dprintf
	jmp	L62
L71:
	addl	$1, -16(%ebp)
L59:
	movl	-16(%ebp), %eax
	cmpl	$3, %eax
	jbe	L63
L62:
	cmpl	$0, -12(%ebp)
	jne	L72
	movl	-24(%ebp), %eax
	movb	$8, 16(%eax)
	movl	-24(%ebp), %eax
	movb	$2, 17(%eax)
	movl	-24(%ebp), %eax
	movl	$26128, 20(%eax)
	movl	-24(%ebp), %eax
	movl	$32, 24(%eax)
	movl	-24(%ebp), %eax
	leal	28(%eax), %ecx
	movl	-24(%ebp), %eax
	movl	24(%eax), %edx
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__CryptGenRandom@12, %eax
	call	*%eax
	subl	$12, %esp
	testl	%eax, %eax
	jne	L65
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC57, (%esp)
	call	_real_dprintf
	jmp	L69
L65:
	movl	-24(%ebp), %eax
	leal	4(%eax), %ecx
	movl	-24(%ebp), %eax
	leal	16(%eax), %edx
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%ecx, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$44, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__CryptImportKey@24, %eax
	call	*%eax
	subl	$24, %esp
	testl	%eax, %eax
	jne	L66
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC58, (%esp)
	call	_real_dprintf
	jmp	L69
L66:
	movl	$0, -36(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$262694, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_raw
	movl	%eax, -28(%ebp)
	movl	$0, -40(%ebp)
	movl	$0, -44(%ebp)
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	24(%eax), %edx
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	leal	28(%eax), %ebx
	movl	-36(%ebp), %eax
	leal	-44(%ebp), %ecx
	movl	%ecx, 20(%esp)
	leal	-40(%ebp), %ecx
	movl	%ecx, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_public_key_encrypt
	movl	%eax, -32(%ebp)
	movl	$1, 8(%esp)
	movl	$131623, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_uint
	cmpl	$0, -32(%ebp)
	jne	L67
	movl	-40(%ebp), %eax
	testl	%eax, %eax
	je	L67
	movl	-44(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$262697, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_raw
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	jmp	L68
L67:
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	24(%eax), %eax
	movl	8(%ebp), %edx
	movl	88(%edx), %edx
	addl	$28, %edx
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$262696, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_raw
L68:
	movl	-24(%ebp), %eax
	movl	$1, 12(%eax)
	jmp	L69
L72:
	nop
L69:
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_transmit_response
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	$1, 60(%eax)
	movl	$0, %eax
	movl	-4(%ebp), %ebx
	leave
	ret
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
