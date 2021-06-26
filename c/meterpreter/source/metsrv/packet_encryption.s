	.file	"packet_encryption.c"
	.text
	.globl	_AesProviders
	.section .rdata,"dr"
	.align 4
LC0:
	.ascii "Microsoft Enhanced RSA and AES Cryptographic Provider\0"
	.align 4
LC1:
	.ascii "Microsoft Enhanced RSA and AES Cryptographic Provider (Prototype)\0"
	.align 32
_AesProviders:
	.long	LC0
	.long	24
	.long	0
	.long	LC0
	.long	24
	.long	8
	.long	LC1
	.long	24
	.long	0
	.long	LC1
	.long	24
	.long	8
	.text
	.globl	_decrypt_packet
	.def	_decrypt_packet;	.scl	2;	.type	32;	.endef
_decrypt_packet:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$84, %esp
	movl	$0, -12(%ebp)
	movl	$0, -16(%ebp)
	movl	$0, -40(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	20(%ebp), %eax
	leal	-4(%eax), %ecx
	movl	16(%ebp), %eax
	leal	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_xor_bytes
	movl	$52, 4(%esp)
	movl	$1, (%esp)
	call	_calloc
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jne	L2
	movl	$8, -12(%ebp)
	jmp	L3
L2:
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__ntohl@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	%eax, -24(%ebp)
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	L4
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	L4
	cmpl	$0, -24(%ebp)
	je	L4
	movl	16(%ebp), %eax
	addl	$32, %eax
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	-20(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__ntohl@4, %eax
	call	*%eax
	subl	$4, %esp
	subl	$24, %eax
	movl	%eax, -44(%ebp)
	movl	-28(%ebp), %eax
	addl	$16, %eax
	movl	%eax, -36(%ebp)
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	4(%eax), %eax
	leal	-40(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__CryptDuplicateKey@16, %eax
	call	*%eax
	subl	$16, %esp
	testl	%eax, %eax
	jne	L5
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L3
L5:
	movl	$1, -48(%ebp)
	movl	-40(%ebp), %eax
	movl	$0, 12(%esp)
	leal	-48(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__CryptSetKeyParam@16, %eax
	call	*%eax
	subl	$16, %esp
	testl	%eax, %eax
	jne	L7
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L3
L7:
	movl	-40(%ebp), %eax
	movl	$0, 12(%esp)
	movl	-32(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__CryptSetKeyParam@16, %eax
	call	*%eax
	subl	$16, %esp
	testl	%eax, %eax
	jne	L8
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L3
L8:
	movl	-40(%ebp), %eax
	leal	-44(%ebp), %edx
	movl	%edx, 20(%esp)
	movl	-36(%ebp), %edx
	movl	%edx, 16(%esp)
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__CryptDecrypt@24, %eax
	call	*%eax
	subl	$24, %esp
	testl	%eax, %eax
	jne	L9
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L3
L9:
	movl	-44(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	%edx, 12(%esp)
	movl	-36(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__memmove_s, %eax
	call	*%eax
	movl	-44(%ebp), %eax
	addl	$8, %eax
	movl	%eax, (%esp)
	movl	__imp__htonl@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	-20(%ebp), %edx
	movl	%eax, 24(%edx)
L4:
	movl	-20(%ebp), %eax
	movl	24(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 24(%eax)
	movl	-20(%ebp), %eax
	movl	28(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 28(%eax)
	movl	-16(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__ntohl@4, %eax
	call	*%eax
	subl	$4, %esp
	leal	-8(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 36(%eax)
	movl	-16(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%edx, 32(%eax)
	movl	-16(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	jne	L10
	movl	$8, -12(%ebp)
	jmp	L3
L10:
	movl	-16(%ebp), %eax
	movl	36(%eax), %ecx
	movl	16(%ebp), %eax
	leal	32(%eax), %ebx
	movl	-16(%ebp), %eax
	movl	36(%eax), %edx
	movl	-16(%ebp), %eax
	movl	32(%eax), %eax
	movl	%ecx, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__memcpy_s, %eax
	call	*%eax
	movl	12(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, (%eax)
L3:
	cmpl	$0, -12(%ebp)
	je	L11
	cmpl	$0, -16(%ebp)
	je	L11
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_destroy
L11:
	movl	-40(%ebp), %eax
	testl	%eax, %eax
	je	L12
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__CryptDestroyKey@4, %eax
	call	*%eax
	subl	$4, %esp
L12:
	movl	-12(%ebp), %eax
	movl	-4(%ebp), %ebx
	leave
	ret
	.globl	_encrypt_packet
	.def	_encrypt_packet;	.scl	2;	.type	32;	.endef
_encrypt_packet:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$104, %esp
	movl	$0, -12(%ebp)
	movl	$0, -44(%ebp)
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
	je	L15
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	L15
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	je	L16
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	4(%eax), %eax
	leal	-44(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__CryptDuplicateKey@16, %eax
	call	*%eax
	subl	$16, %esp
	testl	%eax, %eax
	jne	L17
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L15
L17:
	movl	$1, -48(%ebp)
	movl	-44(%ebp), %eax
	movl	$0, 12(%esp)
	leal	-48(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__CryptSetKeyParam@16, %eax
	call	*%eax
	subl	$16, %esp
	testl	%eax, %eax
	jne	L19
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L15
L19:
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	(%eax), %eax
	leal	-64(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$16, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__CryptGenRandom@12, %eax
	call	*%eax
	subl	$12, %esp
	testl	%eax, %eax
	jne	L20
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
L20:
	movl	-44(%ebp), %eax
	movl	$0, 12(%esp)
	leal	-64(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__CryptSetKeyParam@16, %eax
	call	*%eax
	subl	$16, %esp
	testl	%eax, %eax
	jne	L21
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L15
L21:
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
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	addl	$48, %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	addl	$32, %eax
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	addl	$16, %eax
	movl	%eax, -32(%ebp)
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
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__memcpy_s, %eax
	call	*%eax
	movl	-44(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 24(%esp)
	movl	20(%ebp), %edx
	movl	%edx, 20(%esp)
	movl	-32(%ebp), %edx
	movl	%edx, 16(%esp)
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__CryptEncrypt@28, %eax
	call	*%eax
	subl	$28, %esp
	testl	%eax, %eax
	jne	L22
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
L22:
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
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__memcpy_s, %eax
	call	*%eax
	movl	$16, 12(%esp)
	leal	-64(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$16, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__memcpy_s, %eax
	call	*%eax
	jmp	L15
L16:
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	$1, 60(%eax)
L15:
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L23
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
	movl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
	addl	$32, %eax
	movl	%eax, -40(%ebp)
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
	movl	-36(%ebp), %eax
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
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__memcpy_s, %eax
	call	*%eax
L23:
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
	movl	-44(%ebp), %eax
	testl	%eax, %eax
	je	L24
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__CryptDestroyKey@4, %eax
	call	*%eax
	subl	$4, %esp
L24:
	movl	-12(%ebp), %eax
	leave
	ret
	.section .rdata,"dr"
	.align 4
LC2:
	.ascii "Microsoft Enhanced Cryptographic Provider v1.0\0"
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
	je	L27
	cmpl	$0, 12(%ebp)
	jne	L28
L27:
	movl	$160, -12(%ebp)
	jmp	L38
L28:
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
	jne	L30
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L38
L30:
	movl	$-268435456, 16(%esp)
	movl	$1, 12(%esp)
	movl	$LC2, 8(%esp)
	movl	$0, 4(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__CryptAcquireContextA@20, %eax
	call	*%eax
	subl	$20, %esp
	testl	%eax, %eax
	jne	L31
	movl	$8, 16(%esp)
	movl	$1, 12(%esp)
	movl	$LC2, 8(%esp)
	movl	$0, 4(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__CryptAcquireContextA@20, %eax
	call	*%eax
	subl	$20, %esp
	testl	%eax, %eax
	jne	L31
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L38
L31:
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
	jne	L32
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L38
L32:
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
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	_calloc
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jne	L33
	movl	$14, -12(%ebp)
	jmp	L38
L33:
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
	jne	L34
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L38
L34:
	movl	$0, -20(%ebp)
	jmp	L36
L37:
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
L36:
	movl	-44(%ebp), %eax
	shrl	%eax
	cmpl	%eax, -20(%ebp)
	jb	L37
	movl	24(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, (%eax)
	movl	-44(%ebp), %edx
	movl	28(%ebp), %eax
	movl	%edx, (%eax)
L38:
	cmpl	$0, -12(%ebp)
	je	L39
	cmpl	$0, -16(%ebp)
	je	L39
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
L39:
	movl	-28(%ebp), %eax
	testl	%eax, %eax
	je	L40
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__LocalFree@4, %eax
	call	*%eax
	subl	$4, %esp
L40:
	movl	-36(%ebp), %eax
	testl	%eax, %eax
	je	L41
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__CryptDestroyKey@4, %eax
	call	*%eax
	subl	$4, %esp
L41:
	movl	-32(%ebp), %eax
	testl	%eax, %eax
	je	L42
	movl	-32(%ebp), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__CryptReleaseContext@8, %eax
	call	*%eax
	subl	$8, %esp
L42:
	movl	-12(%ebp), %eax
	leave
	ret
	.globl	_free_encryption_context
	.def	_free_encryption_context;	.scl	2;	.type	32;	.endef
_free_encryption_context:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$0, -12(%ebp)
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	L45
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	L46
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__CryptDestroyKey@4, %eax
	call	*%eax
	subl	$4, %esp
L46:
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L47
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__CryptReleaseContext@8, %eax
	call	*%eax
	subl	$8, %esp
L47:
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, (%esp)
	call	_free
	movl	8(%ebp), %eax
	movl	$0, 88(%eax)
L45:
	movl	-12(%ebp), %eax
	leave
	ret
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
	je	L50
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_free_encryption_context
L50:
	movl	$64, 4(%esp)
	movl	$1, (%esp)
	call	_calloc
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 88(%eax)
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	jne	L51
	movl	$14, -12(%ebp)
	jmp	L63
L51:
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	$0, -16(%ebp)
	jmp	L53
L57:
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
	jne	L54
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L65
L54:
	movl	$0, -12(%ebp)
	movl	-24(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 8(%eax)
	jmp	L56
L65:
	addl	$1, -16(%ebp)
L53:
	movl	-16(%ebp), %eax
	cmpl	$3, %eax
	jbe	L57
L56:
	cmpl	$0, -12(%ebp)
	jne	L66
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
	jne	L59
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L63
L59:
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
	jne	L60
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L63
L60:
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
	jne	L61
	movl	-40(%ebp), %eax
	testl	%eax, %eax
	je	L61
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
	jmp	L62
L61:
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
L62:
	movl	-24(%ebp), %eax
	movl	$1, 12(%eax)
	jmp	L63
L66:
	nop
L63:
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
