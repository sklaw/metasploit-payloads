	.file	"zlib.c"
	.text
	.section .rdata,"dr"
LC0:
	.ascii "need dictionary\0"
LC1:
	.ascii "stream end\0"
LC2:
	.ascii "\0"
LC3:
	.ascii "file error\0"
LC4:
	.ascii "stream error\0"
LC5:
	.ascii "data error\0"
LC6:
	.ascii "insufficient memory\0"
LC7:
	.ascii "buffer error\0"
LC8:
	.ascii "incompatible version\0"
	.data
	.align 32
_z_errmsg:
	.long	LC0
	.long	LC1
	.long	LC2
	.long	LC3
	.long	LC4
	.long	LC5
	.long	LC6
	.long	LC7
	.long	LC8
	.long	LC2
	.globl	_deflate_copyright
	.align 32
_deflate_copyright:
	.ascii " deflate 1.0.4 Copyright 1995-1996 Jean-loup Gailly \0"
	.align 32
_configuration_table:
	.word	0
	.word	0
	.word	0
	.word	0
	.long	_deflate_stored
	.word	4
	.word	4
	.word	8
	.word	4
	.long	_deflate_fast
	.word	4
	.word	5
	.word	16
	.word	8
	.long	_deflate_fast
	.word	4
	.word	6
	.word	32
	.word	32
	.long	_deflate_fast
	.word	4
	.word	4
	.word	16
	.word	16
	.long	_deflate_slow
	.word	8
	.word	16
	.word	32
	.word	32
	.long	_deflate_slow
	.word	8
	.word	16
	.word	128
	.word	128
	.long	_deflate_slow
	.word	8
	.word	32
	.word	128
	.word	256
	.long	_deflate_slow
	.word	32
	.word	128
	.word	258
	.word	1024
	.long	_deflate_slow
	.word	32
	.word	258
	.word	258
	.word	4096
	.long	_deflate_slow
	.text
	.globl	_deflateInit_
	.def	_deflateInit_;	.scl	2;	.type	32;	.endef
_deflateInit_:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	20(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	$0, 20(%esp)
	movl	$8, 16(%esp)
	movl	$15, 12(%esp)
	movl	$8, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_deflateInit2_
	leave
	ret
	.globl	_deflateInit2_
	.def	_deflateInit2_;	.scl	2;	.type	32;	.endef
_deflateInit2_:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$0, -12(%ebp)
	cmpl	$0, 32(%ebp)
	je	L4
	movl	32(%ebp), %eax
	movzbl	(%eax), %edx
	movl	_my_version.58969, %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	jne	L4
	cmpl	$56, 36(%ebp)
	je	L5
L4:
	movl	$-6, %eax
	jmp	L6
L5:
	cmpl	$0, 8(%ebp)
	jne	L7
	movl	$-2, %eax
	jmp	L6
L7:
	movl	8(%ebp), %eax
	movl	$0, 24(%eax)
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	jne	L8
	movl	8(%ebp), %eax
	movl	$_zcalloc, 32(%eax)
	movl	8(%ebp), %eax
	movl	$0, 40(%eax)
L8:
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	jne	L9
	movl	8(%ebp), %eax
	movl	$_zcfree, 36(%eax)
L9:
	cmpl	$-1, 12(%ebp)
	jne	L10
	movl	$6, 12(%ebp)
L10:
	cmpl	$0, 20(%ebp)
	jns	L11
	movl	$1, -12(%ebp)
	negl	20(%ebp)
L11:
	cmpl	$0, 24(%ebp)
	jle	L12
	cmpl	$9, 24(%ebp)
	jg	L12
	cmpl	$8, 16(%ebp)
	jne	L12
	cmpl	$8, 20(%ebp)
	jle	L12
	cmpl	$15, 20(%ebp)
	jg	L12
	cmpl	$0, 12(%ebp)
	js	L12
	cmpl	$9, 12(%ebp)
	jg	L12
	cmpl	$0, 28(%ebp)
	js	L12
	cmpl	$2, 28(%ebp)
	jle	L13
L12:
	movl	$-2, %eax
	jmp	L6
L13:
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	movl	8(%ebp), %edx
	movl	40(%edx), %edx
	movl	$5820, 8(%esp)
	movl	$1, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jne	L14
	movl	$-4, %eax
	jmp	L6
L14:
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 28(%eax)
	movl	-16(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%eax)
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 24(%eax)
	movl	20(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 40(%eax)
	movl	-16(%ebp), %eax
	movl	40(%eax), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%edx, 36(%eax)
	movl	-16(%ebp), %eax
	movl	36(%eax), %eax
	leal	-1(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 44(%eax)
	movl	24(%ebp), %eax
	addl	$7, %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%edx, 72(%eax)
	movl	-16(%ebp), %eax
	movl	72(%eax), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%edx, 68(%eax)
	movl	-16(%ebp), %eax
	movl	68(%eax), %eax
	leal	-1(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 76(%eax)
	movl	-16(%ebp), %eax
	movl	72(%eax), %eax
	addl	$2, %eax
	movl	$-1431655765, %edx
	mull	%edx
	shrl	%edx
	movl	-16(%ebp), %eax
	movl	%edx, 80(%eax)
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	movl	-16(%ebp), %edx
	movl	36(%edx), %ecx
	movl	8(%ebp), %edx
	movl	40(%edx), %edx
	movl	$2, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
	movl	-16(%ebp), %edx
	movl	%eax, 48(%edx)
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	movl	-16(%ebp), %edx
	movl	36(%edx), %ecx
	movl	8(%ebp), %edx
	movl	40(%edx), %edx
	movl	$2, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
	movl	-16(%ebp), %edx
	movl	%eax, 56(%edx)
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	movl	-16(%ebp), %edx
	movl	68(%edx), %ecx
	movl	8(%ebp), %edx
	movl	40(%edx), %edx
	movl	$2, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
	movl	-16(%ebp), %edx
	movl	%eax, 60(%edx)
	movl	24(%ebp), %eax
	addl	$6, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%edx, 5780(%eax)
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	movl	-16(%ebp), %edx
	movl	5780(%edx), %ecx
	movl	8(%ebp), %edx
	movl	40(%edx), %edx
	movl	$4, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
	movl	%eax, -20(%ebp)
	movl	-16(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, 8(%eax)
	movl	-16(%ebp), %eax
	movl	5780(%eax), %eax
	leal	0(,%eax,4), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 12(%eax)
	movl	-16(%ebp), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	je	L15
	movl	-16(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	L15
	movl	-16(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	je	L15
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	L16
L15:
	movl	_z_errmsg+24, %edx
	movl	8(%ebp), %eax
	movl	%edx, 24(%eax)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_deflateEnd
	movl	$-4, %eax
	jmp	L6
L16:
	movl	-16(%ebp), %eax
	movl	5780(%eax), %eax
	andl	$-2, %eax
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	addl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%edx, 5788(%eax)
	movl	-16(%ebp), %eax
	movl	8(%eax), %ecx
	movl	-16(%ebp), %eax
	movl	5780(%eax), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	(%ecx,%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 5776(%eax)
	movl	-16(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 124(%eax)
	movl	-16(%ebp), %eax
	movl	28(%ebp), %edx
	movl	%edx, 128(%eax)
	movl	16(%ebp), %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movb	%dl, 29(%eax)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_deflateReset
L6:
	leave
	ret
	.globl	_deflateSetDictionary
	.def	_deflateSetDictionary;	.scl	2;	.type	32;	.endef
_deflateSetDictionary:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	16(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	$0, -20(%ebp)
	cmpl	$0, 8(%ebp)
	je	L18
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	L18
	cmpl	$0, 12(%ebp)
	jne	L19
L18:
	movl	$-2, %eax
	jmp	L20
L19:
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$42, %eax
	je	L21
	movl	$-2, %eax
	jmp	L20
L21:
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	16(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_adler32
	movl	8(%ebp), %edx
	movl	%eax, 48(%edx)
	cmpl	$2, -12(%ebp)
	ja	L22
	movl	$0, %eax
	jmp	L20
L22:
	movl	-24(%ebp), %eax
	movl	36(%eax), %eax
	subl	$262, %eax
	cmpl	%eax, -12(%ebp)
	jbe	L23
	movl	-24(%ebp), %eax
	movl	36(%eax), %eax
	subl	$262, %eax
	movl	%eax, -12(%ebp)
	movl	16(%ebp), %eax
	subl	-12(%ebp), %eax
	addl	%eax, 12(%ebp)
L23:
	movl	-24(%ebp), %eax
	movl	48(%eax), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_memcpy
	movl	-24(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 100(%eax)
	movl	-12(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 84(%eax)
	movl	-24(%ebp), %eax
	movl	48(%eax), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 64(%eax)
	movl	-24(%ebp), %eax
	movl	64(%eax), %edx
	movl	-24(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	-24(%ebp), %eax
	movl	48(%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	xorl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	76(%eax), %eax
	andl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 64(%eax)
	movl	$0, -16(%ebp)
	jmp	L24
L25:
	movl	-24(%ebp), %eax
	movl	64(%eax), %edx
	movl	-24(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %ecx
	movl	-24(%ebp), %eax
	movl	48(%eax), %eax
	movl	-16(%ebp), %edx
	addl	$2, %edx
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	xorl	%eax, %ecx
	movl	%ecx, %edx
	movl	-24(%ebp), %eax
	movl	76(%eax), %eax
	andl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 64(%eax)
	movl	-24(%ebp), %eax
	movl	60(%eax), %edx
	movl	-24(%ebp), %eax
	movl	64(%eax), %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -20(%ebp)
	movl	-24(%ebp), %eax
	movl	56(%eax), %edx
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	andl	-16(%ebp), %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movl	-20(%ebp), %edx
	movw	%dx, (%eax)
	movl	-24(%ebp), %eax
	movl	60(%eax), %edx
	movl	-24(%ebp), %eax
	movl	64(%eax), %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movl	-16(%ebp), %edx
	movw	%dx, (%eax)
	addl	$1, -16(%ebp)
L24:
	movl	-12(%ebp), %eax
	subl	$3, %eax
	cmpl	%eax, -16(%ebp)
	jbe	L25
	cmpl	$0, -20(%ebp)
	je	L26
	movl	$0, -20(%ebp)
L26:
	movl	$0, %eax
L20:
	leave
	ret
	.globl	_deflateReset
	.def	_deflateReset;	.scl	2;	.type	32;	.endef
_deflateReset:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	cmpl	$0, 8(%ebp)
	je	L28
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	L28
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	L28
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	jne	L29
L28:
	movl	$-2, %eax
	jmp	L30
L29:
	movl	8(%ebp), %eax
	movl	$0, 20(%eax)
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	8(%ebp), %eax
	movl	$0, 24(%eax)
	movl	8(%ebp), %eax
	movl	$2, 44(%eax)
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	$0, 20(%eax)
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 16(%eax)
	movl	-12(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	jns	L31
	movl	-12(%ebp), %eax
	movl	$0, 24(%eax)
L31:
	movl	-12(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	L32
	movl	$113, %edx
	jmp	L33
L32:
	movl	$42, %edx
L33:
	movl	-12(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	8(%ebp), %eax
	movl	$1, 48(%eax)
	movl	-12(%ebp), %eax
	movl	$0, 32(%eax)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	__tr_init
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_lm_init
	movl	$0, %eax
L30:
	leave
	ret
	.globl	_deflateParams
	.def	_deflateParams;	.scl	2;	.type	32;	.endef
_deflateParams:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$0, -12(%ebp)
	cmpl	$0, 8(%ebp)
	je	L35
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	jne	L36
L35:
	movl	$-2, %eax
	jmp	L37
L36:
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -16(%ebp)
	cmpl	$-1, 12(%ebp)
	jne	L38
	movl	$6, 12(%ebp)
L38:
	cmpl	$0, 12(%ebp)
	js	L39
	cmpl	$9, 12(%ebp)
	jg	L39
	cmpl	$0, 16(%ebp)
	js	L39
	cmpl	$2, 16(%ebp)
	jle	L40
L39:
	movl	$-2, %eax
	jmp	L37
L40:
	movl	-16(%ebp), %eax
	movl	124(%eax), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	$_configuration_table+8, %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	12(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	$_configuration_table+8, %eax
	movl	(%eax), %eax
	cmpl	%eax, -20(%ebp)
	je	L41
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L41
	movl	$1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_deflate
	movl	%eax, -12(%ebp)
L41:
	movl	-16(%ebp), %eax
	movl	124(%eax), %eax
	cmpl	%eax, 12(%ebp)
	je	L42
	movl	-16(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 124(%eax)
	movl	12(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	$_configuration_table+2, %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	-16(%ebp), %eax
	movl	%edx, 120(%eax)
	movl	12(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	$_configuration_table, %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	-16(%ebp), %eax
	movl	%edx, 132(%eax)
	movl	12(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	$_configuration_table+4, %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	-16(%ebp), %eax
	movl	%edx, 136(%eax)
	movl	12(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	$_configuration_table+6, %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	-16(%ebp), %eax
	movl	%edx, 116(%eax)
L42:
	movl	-16(%ebp), %eax
	movl	16(%ebp), %edx
	movl	%edx, 128(%eax)
	movl	-12(%ebp), %eax
L37:
	leave
	ret
	.def	_putShortMSB;	.scl	3;	.type	32;	.endef
_putShortMSB:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	pushl	%ebx
	movl	12(%ebp), %eax
	shrl	$8, %eax
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 20(%edx)
	addl	%ebx, %eax
	movl	%esi, %edx
	movb	%dl, (%eax)
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 20(%edx)
	addl	%ebx, %eax
	movl	12(%ebp), %edx
	movb	%dl, (%eax)
	nop
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
	.def	_flush_pending;	.scl	3;	.type	32;	.endef
_flush_pending:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, -12(%ebp)
	jbe	L45
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
L45:
	cmpl	$0, -12(%ebp)
	je	L49
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	L48
	movl	-16(%ebp), %eax
	movl	16(%eax), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	-12(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_memcpy
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-12(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 12(%eax)
L48:
	movl	-16(%ebp), %eax
	movl	16(%eax), %edx
	movl	-12(%ebp), %eax
	addl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%edx, 16(%eax)
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-12(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	subl	-12(%ebp), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 16(%eax)
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	subl	-12(%ebp), %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%edx, 20(%eax)
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	L44
	movl	-16(%ebp), %eax
	movl	8(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 16(%eax)
	jmp	L44
L49:
	nop
L44:
	leave
	ret
	.globl	_deflate
	.def	_deflate;	.scl	2;	.type	32;	.endef
_deflate:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$56, %esp
	cmpl	$0, 8(%ebp)
	je	L51
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	L51
	cmpl	$5, 12(%ebp)
	jg	L51
	cmpl	$0, 12(%ebp)
	jns	L52
L51:
	movl	$-2, %eax
	jmp	L53
L52:
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L54
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	L55
L54:
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$666, %eax
	jne	L56
	cmpl	$5, 12(%ebp)
	je	L56
L55:
	movl	_z_errmsg+16, %edx
	movl	8(%ebp), %eax
	movl	%edx, 24(%eax)
	movl	$-2, %eax
	jmp	L53
L56:
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	L57
	movl	_z_errmsg+28, %edx
	movl	8(%ebp), %eax
	movl	%edx, 24(%eax)
	movl	$-5, %eax
	jmp	L53
L57:
	movl	-20(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%eax)
	movl	-20(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	-20(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 32(%eax)
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$42, %eax
	jne	L58
	movl	-20(%ebp), %eax
	movl	40(%eax), %eax
	subl	$8, %eax
	sall	$4, %eax
	addl	$8, %eax
	sall	$8, %eax
	movl	%eax, -12(%ebp)
	movl	-20(%ebp), %eax
	movl	124(%eax), %eax
	subl	$1, %eax
	sarl	%eax
	movl	%eax, -16(%ebp)
	cmpl	$3, -16(%ebp)
	jbe	L59
	movl	$3, -16(%ebp)
L59:
	movl	-16(%ebp), %eax
	sall	$6, %eax
	orl	%eax, -12(%ebp)
	movl	-20(%ebp), %eax
	movl	100(%eax), %eax
	testl	%eax, %eax
	je	L60
	orl	$32, -12(%ebp)
L60:
	movl	-12(%ebp), %ecx
	movl	$138547333, %edx
	movl	%ecx, %eax
	mull	%edx
	movl	%ecx, %eax
	subl	%edx, %eax
	shrl	%eax
	addl	%edx, %eax
	shrl	$4, %eax
	movl	%eax, %edx
	sall	$5, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	movl	-12(%ebp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$31, %eax
	movl	%eax, -12(%ebp)
	movl	-20(%ebp), %eax
	movl	$113, 4(%eax)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_putShortMSB
	movl	-20(%ebp), %eax
	movl	100(%eax), %eax
	testl	%eax, %eax
	je	L61
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	shrl	$16, %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_putShortMSB
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_putShortMSB
L61:
	movl	8(%ebp), %eax
	movl	$1, 48(%eax)
L58:
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	L62
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_flush_pending
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	L63
	movl	-20(%ebp), %eax
	movl	$-1, 32(%eax)
	movl	$0, %eax
	jmp	L53
L62:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	L63
	movl	12(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jg	L63
	cmpl	$5, 12(%ebp)
	je	L63
	movl	_z_errmsg+28, %edx
	movl	8(%ebp), %eax
	movl	%edx, 24(%eax)
	movl	$-5, %eax
	jmp	L53
L63:
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$666, %eax
	jne	L64
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	L64
	movl	_z_errmsg+28, %edx
	movl	8(%ebp), %eax
	movl	%edx, 24(%eax)
	movl	$-5, %eax
	jmp	L53
L64:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	L65
	movl	-20(%ebp), %eax
	movl	108(%eax), %eax
	testl	%eax, %eax
	jne	L65
	cmpl	$0, 12(%ebp)
	je	L66
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$666, %eax
	je	L66
L65:
	movl	-20(%ebp), %eax
	movl	124(%eax), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	$_configuration_table+8, %eax
	movl	(%eax), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	%eax, -28(%ebp)
	cmpl	$2, -28(%ebp)
	je	L67
	cmpl	$3, -28(%ebp)
	jne	L68
L67:
	movl	-20(%ebp), %eax
	movl	$666, 4(%eax)
L68:
	cmpl	$0, -28(%ebp)
	je	L69
	cmpl	$2, -28(%ebp)
	jne	L70
L69:
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	L71
	movl	-20(%ebp), %eax
	movl	$-1, 32(%eax)
L71:
	movl	$0, %eax
	jmp	L53
L70:
	cmpl	$1, -28(%ebp)
	jne	L66
	cmpl	$1, 12(%ebp)
	jne	L72
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	__tr_align
	jmp	L73
L72:
	cmpl	$2, 12(%ebp)
	jne	L74
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	__tr_stored_type_only
	jmp	L73
L74:
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	__tr_stored_block
	cmpl	$4, 12(%ebp)
	jne	L73
	movl	-20(%ebp), %eax
	movl	60(%eax), %edx
	movl	-20(%ebp), %eax
	movl	68(%eax), %eax
	addl	$2147483647, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movw	$0, (%eax)
	movl	-20(%ebp), %eax
	movl	68(%eax), %eax
	subl	$1, %eax
	leal	(%eax,%eax), %edx
	movl	-20(%ebp), %eax
	movl	60(%eax), %eax
	movl	%edx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
L73:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_flush_pending
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	L66
	movl	-20(%ebp), %eax
	movl	$-1, 32(%eax)
	movl	$0, %eax
	jmp	L53
L66:
	cmpl	$5, 12(%ebp)
	je	L75
	movl	$0, %eax
	jmp	L53
L75:
	movl	-20(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	L76
	movl	$1, %eax
	jmp	L53
L76:
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	shrl	$16, %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_putShortMSB
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_putShortMSB
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_flush_pending
	movl	-20(%ebp), %eax
	movl	$-1, 24(%eax)
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
L53:
	leave
	ret
	.globl	_deflateEnd
	.def	_deflateEnd;	.scl	2;	.type	32;	.endef
_deflateEnd:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	cmpl	$0, 8(%ebp)
	je	L78
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	jne	L79
L78:
	movl	$-2, %eax
	jmp	L80
L79:
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	cmpl	$42, -16(%ebp)
	je	L81
	cmpl	$113, -16(%ebp)
	je	L81
	cmpl	$666, -16(%ebp)
	je	L81
	movl	$-2, %eax
	jmp	L80
L81:
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L82
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	-12(%ebp), %edx
	movl	8(%edx), %ecx
	movl	8(%ebp), %edx
	movl	40(%edx), %edx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
L82:
	movl	-12(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	je	L83
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	-12(%ebp), %edx
	movl	60(%edx), %ecx
	movl	8(%ebp), %edx
	movl	40(%edx), %edx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
L83:
	movl	-12(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	L84
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	-12(%ebp), %edx
	movl	56(%edx), %ecx
	movl	8(%ebp), %edx
	movl	40(%edx), %edx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
L84:
	movl	-12(%ebp), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	je	L85
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	-12(%ebp), %edx
	movl	48(%edx), %ecx
	movl	8(%ebp), %edx
	movl	40(%edx), %edx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
L85:
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	8(%ebp), %edx
	movl	40(%edx), %edx
	movl	-12(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
	movl	8(%ebp), %eax
	movl	$0, 28(%eax)
	cmpl	$113, -16(%ebp)
	jne	L86
	movl	$-3, %eax
	jmp	L80
L86:
	movl	$0, %eax
L80:
	leave
	ret
	.globl	_deflateCopy
	.def	_deflateCopy;	.scl	2;	.type	32;	.endef
_deflateCopy:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	cmpl	$0, 12(%ebp)
	je	L89
	cmpl	$0, 8(%ebp)
	je	L89
	movl	12(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	jne	L90
L89:
	movl	$-2, %eax
	jmp	L91
L90:
	movl	12(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	$56, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_memcpy
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	movl	8(%ebp), %edx
	movl	40(%edx), %edx
	movl	$5820, 8(%esp)
	movl	$1, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jne	L92
	movl	$-4, %eax
	jmp	L91
L92:
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 28(%eax)
	movl	$5820, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_memcpy
	movl	-16(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	movl	-16(%ebp), %edx
	movl	36(%edx), %ecx
	movl	8(%ebp), %edx
	movl	40(%edx), %edx
	movl	$2, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
	movl	-16(%ebp), %edx
	movl	%eax, 48(%edx)
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	movl	-16(%ebp), %edx
	movl	36(%edx), %ecx
	movl	8(%ebp), %edx
	movl	40(%edx), %edx
	movl	$2, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
	movl	-16(%ebp), %edx
	movl	%eax, 56(%edx)
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	movl	-16(%ebp), %edx
	movl	68(%edx), %ecx
	movl	8(%ebp), %edx
	movl	40(%edx), %edx
	movl	$2, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
	movl	-16(%ebp), %edx
	movl	%eax, 60(%edx)
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	movl	-16(%ebp), %edx
	movl	5780(%edx), %ecx
	movl	8(%ebp), %edx
	movl	40(%edx), %edx
	movl	$4, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
	movl	%eax, -20(%ebp)
	movl	-16(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, 8(%eax)
	movl	-16(%ebp), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	je	L93
	movl	-16(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	L93
	movl	-16(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	je	L93
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	L94
L93:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_deflateEnd
	movl	$-4, %eax
	jmp	L91
L94:
	movl	-16(%ebp), %eax
	movl	36(%eax), %eax
	leal	(%eax,%eax), %ecx
	movl	-12(%ebp), %eax
	movl	48(%eax), %edx
	movl	-16(%ebp), %eax
	movl	48(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_memcpy
	movl	-16(%ebp), %eax
	movl	36(%eax), %eax
	leal	(%eax,%eax), %ecx
	movl	-12(%ebp), %eax
	movl	56(%eax), %edx
	movl	-16(%ebp), %eax
	movl	56(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_memcpy
	movl	-16(%ebp), %eax
	movl	68(%eax), %eax
	leal	(%eax,%eax), %ecx
	movl	-12(%ebp), %eax
	movl	60(%eax), %edx
	movl	-16(%ebp), %eax
	movl	60(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_memcpy
	movl	-16(%ebp), %eax
	movl	12(%eax), %ecx
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_memcpy
	movl	-16(%ebp), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	movl	16(%eax), %ecx
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%edx, 16(%eax)
	movl	-16(%ebp), %eax
	movl	5780(%eax), %eax
	andl	$-2, %eax
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	addl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%edx, 5788(%eax)
	movl	-16(%ebp), %eax
	movl	8(%eax), %ecx
	movl	-16(%ebp), %eax
	movl	5780(%eax), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	(%ecx,%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 5776(%eax)
	movl	-16(%ebp), %eax
	leal	140(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 2832(%eax)
	movl	-16(%ebp), %eax
	leal	2432(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 2844(%eax)
	movl	-16(%ebp), %eax
	leal	2676(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 2856(%eax)
	movl	$0, %eax
L91:
	leave
	ret
	.globl	_deflateOutputPending
	.def	_deflateOutputPending;	.scl	2;	.type	32;	.endef
_deflateOutputPending:
	pushl	%ebp
	movl	%esp, %ebp
	cmpl	$0, 8(%ebp)
	je	L96
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	jne	L97
L96:
	movl	$0, %eax
	jmp	L98
L97:
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	20(%eax), %eax
L98:
	popl	%ebp
	ret
	.def	_read_buf;	.scl	3;	.type	32;	.endef
_read_buf:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	cmpl	16(%ebp), %eax
	jbe	L100
	movl	16(%ebp), %eax
	movl	%eax, -12(%ebp)
L100:
	cmpl	$0, -12(%ebp)
	jne	L101
	movl	$0, %eax
	jmp	L102
L101:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	subl	-12(%ebp), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	jne	L103
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	-12(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_adler32
	movl	8(%ebp), %edx
	movl	%eax, 48(%edx)
L103:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_memcpy
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-12(%ebp), %eax
L102:
	leave
	ret
	.def	_lm_init;	.scl	3;	.type	32;	.endef
_lm_init:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	leal	(%eax,%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 52(%eax)
	movl	8(%ebp), %eax
	movl	60(%eax), %edx
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	addl	$2147483647, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movw	$0, (%eax)
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	subl	$1, %eax
	leal	(%eax,%eax), %edx
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	%edx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	8(%ebp), %eax
	movl	124(%eax), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	$_configuration_table+2, %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 120(%eax)
	movl	8(%ebp), %eax
	movl	124(%eax), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	$_configuration_table, %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 132(%eax)
	movl	8(%ebp), %eax
	movl	124(%eax), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	$_configuration_table+4, %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 136(%eax)
	movl	8(%ebp), %eax
	movl	124(%eax), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	$_configuration_table+6, %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 116(%eax)
	movl	8(%ebp), %eax
	movl	$0, 100(%eax)
	movl	8(%ebp), %eax
	movl	$0, 84(%eax)
	movl	8(%ebp), %eax
	movl	$0, 108(%eax)
	movl	8(%ebp), %eax
	movl	$2, 112(%eax)
	movl	8(%ebp), %eax
	movl	112(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 88(%eax)
	movl	8(%ebp), %eax
	movl	$0, 96(%eax)
	movl	8(%ebp), %eax
	movl	$0, 64(%eax)
	nop
	leave
	ret
	.def	_longest_match;	.scl	3;	.type	32;	.endef
_longest_match:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$36, %esp
	movl	8(%ebp), %eax
	movl	116(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	movl	48(%eax), %edx
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	leal	(%edx,%eax), %esi
	movl	8(%ebp), %eax
	movl	112(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	8(%ebp), %eax
	movl	100(%eax), %edx
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	subl	$262, %eax
	cmpl	%eax, %edx
	jbe	L106
	movl	8(%ebp), %eax
	movl	100(%eax), %edx
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$262, %eax
	jmp	L107
L106:
	movl	$0, %eax
L107:
	movl	%eax, -28(%ebp)
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	8(%ebp), %eax
	movl	48(%eax), %edx
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	addl	$258, %eax
	leal	(%edx,%eax), %edi
	movl	-20(%ebp), %eax
	subl	$1, %eax
	addl	%esi, %eax
	movzbl	(%eax), %eax
	movb	%al, -45(%ebp)
	movl	-20(%ebp), %eax
	addl	%esi, %eax
	movzbl	(%eax), %eax
	movb	%al, -46(%ebp)
	movl	8(%ebp), %eax
	movl	112(%eax), %edx
	movl	8(%ebp), %eax
	movl	132(%eax), %eax
	cmpl	%eax, %edx
	jb	L108
	shrl	$2, -16(%ebp)
L108:
	movl	8(%ebp), %eax
	movl	108(%eax), %edx
	movl	-24(%ebp), %eax
	cmpl	%eax, %edx
	jnb	L117
	movl	8(%ebp), %eax
	movl	108(%eax), %eax
	movl	%eax, -24(%ebp)
L117:
	movl	8(%ebp), %eax
	movl	48(%eax), %edx
	movl	12(%ebp), %eax
	leal	(%edx,%eax), %ebx
	movl	-20(%ebp), %eax
	addl	%ebx, %eax
	movzbl	(%eax), %eax
	cmpb	%al, -46(%ebp)
	jne	L120
	movl	-20(%ebp), %eax
	subl	$1, %eax
	addl	%ebx, %eax
	movzbl	(%eax), %eax
	cmpb	%al, -45(%ebp)
	jne	L120
	movzbl	(%ebx), %edx
	movzbl	(%esi), %eax
	cmpb	%al, %dl
	jne	L120
	addl	$1, %ebx
	movzbl	(%ebx), %edx
	leal	1(%esi), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	jne	L120
	addl	$2, %esi
	addl	$1, %ebx
L114:
	addl	$1, %esi
	movzbl	(%esi), %edx
	addl	$1, %ebx
	movzbl	(%ebx), %eax
	cmpb	%al, %dl
	jne	L113
	addl	$1, %esi
	movzbl	(%esi), %edx
	addl	$1, %ebx
	movzbl	(%ebx), %eax
	cmpb	%al, %dl
	jne	L113
	addl	$1, %esi
	movzbl	(%esi), %edx
	addl	$1, %ebx
	movzbl	(%ebx), %eax
	cmpb	%al, %dl
	jne	L113
	addl	$1, %esi
	movzbl	(%esi), %edx
	addl	$1, %ebx
	movzbl	(%ebx), %eax
	cmpb	%al, %dl
	jne	L113
	addl	$1, %esi
	movzbl	(%esi), %edx
	addl	$1, %ebx
	movzbl	(%ebx), %eax
	cmpb	%al, %dl
	jne	L113
	addl	$1, %esi
	movzbl	(%esi), %edx
	addl	$1, %ebx
	movzbl	(%ebx), %eax
	cmpb	%al, %dl
	jne	L113
	addl	$1, %esi
	movzbl	(%esi), %edx
	addl	$1, %ebx
	movzbl	(%ebx), %eax
	cmpb	%al, %dl
	jne	L113
	addl	$1, %esi
	movzbl	(%esi), %edx
	addl	$1, %ebx
	movzbl	(%ebx), %eax
	cmpb	%al, %dl
	jne	L113
	cmpl	%edi, %esi
	jb	L114
L113:
	movl	%edi, %eax
	subl	%esi, %eax
	movl	$258, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	leal	-258(%edi), %esi
	cmpl	-20(%ebp), %ebx
	jle	L112
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 104(%eax)
	movl	%ebx, -20(%ebp)
	cmpl	-24(%ebp), %ebx
	jge	L121
	movl	-20(%ebp), %eax
	subl	$1, %eax
	addl	%esi, %eax
	movzbl	(%eax), %eax
	movb	%al, -45(%ebp)
	movl	-20(%ebp), %eax
	addl	%esi, %eax
	movzbl	(%eax), %eax
	movb	%al, -46(%ebp)
	jmp	L112
L120:
	nop
L112:
	movl	12(%ebp), %eax
	andl	-36(%ebp), %eax
	leal	(%eax,%eax), %edx
	movl	-32(%ebp), %eax
	addl	%edx, %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, 12(%ebp)
	movl	12(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jbe	L116
	subl	$1, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jne	L117
	jmp	L116
L121:
	nop
L116:
	movl	8(%ebp), %eax
	movl	108(%eax), %edx
	movl	-20(%ebp), %eax
	cmpl	%eax, %edx
	jb	L118
	movl	-20(%ebp), %eax
	jmp	L119
L118:
	movl	8(%ebp), %eax
	movl	108(%eax), %eax
L119:
	addl	$36, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.def	_fill_window;	.scl	3;	.type	32;	.endef
_fill_window:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$44, %esp
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, -32(%ebp)
L135:
	movl	8(%ebp), %eax
	movl	52(%eax), %edx
	movl	8(%ebp), %eax
	movl	108(%eax), %eax
	subl	%eax, %edx
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	jne	L123
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	testl	%eax, %eax
	jne	L123
	movl	8(%ebp), %eax
	movl	108(%eax), %eax
	testl	%eax, %eax
	jne	L123
	movl	-32(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	L124
L123:
	cmpl	$-1, -28(%ebp)
	jne	L125
	subl	$1, -28(%ebp)
	jmp	L124
L125:
	movl	8(%ebp), %eax
	movl	100(%eax), %edx
	movl	8(%ebp), %eax
	movl	36(%eax), %ecx
	movl	-32(%ebp), %eax
	addl	%ecx, %eax
	subl	$262, %eax
	cmpl	%eax, %edx
	jb	L124
	movl	8(%ebp), %eax
	movl	48(%eax), %edx
	movl	-32(%ebp), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	-32(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	_memcpy
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	subl	-32(%ebp), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 104(%eax)
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	subl	-32(%ebp), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 100(%eax)
	movl	8(%ebp), %eax
	movl	84(%eax), %edx
	movl	-32(%ebp), %eax
	subl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 84(%eax)
	movl	8(%ebp), %eax
	movl	68(%eax), %ebx
	movl	8(%ebp), %eax
	movl	60(%eax), %edx
	leal	(%ebx,%ebx), %eax
	leal	(%edx,%eax), %esi
L128:
	subl	$2, %esi
	movzwl	(%esi), %eax
	movzwl	%ax, %edi
	cmpl	-32(%ebp), %edi
	jb	L126
	movl	%edi, %eax
	subl	-32(%ebp), %eax
	jmp	L127
L126:
	movl	$0, %eax
L127:
	movw	%ax, (%esi)
	subl	$1, %ebx
	testl	%ebx, %ebx
	jne	L128
	movl	-32(%ebp), %ebx
	movl	8(%ebp), %eax
	movl	56(%eax), %edx
	leal	(%ebx,%ebx), %eax
	leal	(%edx,%eax), %esi
L131:
	subl	$2, %esi
	movzwl	(%esi), %eax
	movzwl	%ax, %edi
	cmpl	-32(%ebp), %edi
	jb	L129
	movl	%edi, %eax
	subl	-32(%ebp), %eax
	jmp	L130
L129:
	movl	$0, %eax
L130:
	movw	%ax, (%esi)
	subl	$1, %ebx
	testl	%ebx, %ebx
	jne	L131
	movl	-32(%ebp), %eax
	addl	%eax, -28(%ebp)
L124:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	L136
	movl	8(%ebp), %eax
	movl	48(%eax), %edx
	movl	8(%ebp), %eax
	movl	100(%eax), %ecx
	movl	8(%ebp), %eax
	movl	108(%eax), %eax
	addl	%ecx, %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	_read_buf
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	108(%eax), %eax
	leal	(%ebx,%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 108(%eax)
	movl	8(%ebp), %eax
	movl	108(%eax), %eax
	cmpl	$2, %eax
	jbe	L134
	movl	8(%ebp), %eax
	movl	48(%eax), %edx
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	8(%ebp), %eax
	movl	%edx, 64(%eax)
	movl	8(%ebp), %eax
	movl	64(%eax), %edx
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %ecx
	movl	8(%ebp), %eax
	movl	48(%eax), %edx
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	addl	$1, %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	xorl	%eax, %ecx
	movl	%ecx, %edx
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	andl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 64(%eax)
L134:
	movl	8(%ebp), %eax
	movl	108(%eax), %eax
	cmpl	$261, %eax
	ja	L122
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	L135
	jmp	L122
L136:
	nop
L122:
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.def	_deflate_stored;	.scl	3;	.type	32;	.endef
_deflate_stored:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$36, %esp
	movl	$65535, -12(%ebp)
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	subl	$5, %eax
	cmpl	%eax, -12(%ebp)
	jbe	L150
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	subl	$5, %eax
	movl	%eax, -12(%ebp)
L150:
	movl	8(%ebp), %eax
	movl	108(%eax), %eax
	cmpl	$1, %eax
	ja	L139
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_fill_window
	movl	8(%ebp), %eax
	movl	108(%eax), %eax
	testl	%eax, %eax
	jne	L140
	cmpl	$0, 12(%ebp)
	jne	L140
	movl	$0, %eax
	jmp	L141
L140:
	movl	8(%ebp), %eax
	movl	108(%eax), %eax
	testl	%eax, %eax
	je	L159
L139:
	movl	8(%ebp), %eax
	movl	100(%eax), %edx
	movl	8(%ebp), %eax
	movl	108(%eax), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 100(%eax)
	movl	8(%ebp), %eax
	movl	$0, 108(%eax)
	movl	8(%ebp), %eax
	movl	84(%eax), %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	testl	%eax, %eax
	je	L143
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	cmpl	%eax, -16(%ebp)
	ja	L144
L143:
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	subl	-16(%ebp), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 108(%eax)
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 100(%eax)
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	84(%eax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	84(%eax), %eax
	testl	%eax, %eax
	js	L145
	movl	8(%ebp), %eax
	movl	48(%eax), %edx
	movl	8(%ebp), %eax
	movl	84(%eax), %eax
	addl	%edx, %eax
	jmp	L146
L145:
	movl	$0, %eax
L146:
	movl	$0, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__tr_flush_block
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 84(%eax)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_flush_pending
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	L144
	movl	$0, %eax
	jmp	L141
L144:
	movl	8(%ebp), %eax
	movl	100(%eax), %edx
	movl	8(%ebp), %eax
	movl	84(%eax), %eax
	subl	%eax, %edx
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	subl	$262, %eax
	cmpl	%eax, %edx
	jb	L150
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	84(%eax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	84(%eax), %eax
	testl	%eax, %eax
	js	L148
	movl	8(%ebp), %eax
	movl	48(%eax), %edx
	movl	8(%ebp), %eax
	movl	84(%eax), %eax
	addl	%edx, %eax
	jmp	L149
L148:
	movl	$0, %eax
L149:
	movl	$0, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__tr_flush_block
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 84(%eax)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_flush_pending
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	L150
	movl	$0, %eax
	jmp	L141
L159:
	nop
	cmpl	$5, 12(%ebp)
	sete	%al
	movzbl	%al, %edx
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	84(%eax), %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	84(%eax), %eax
	testl	%eax, %eax
	js	L151
	movl	8(%ebp), %eax
	movl	48(%eax), %ecx
	movl	8(%ebp), %eax
	movl	84(%eax), %eax
	addl	%ecx, %eax
	jmp	L152
L151:
	movl	$0, %eax
L152:
	movl	%edx, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__tr_flush_block
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 84(%eax)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_flush_pending
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	L153
	cmpl	$5, 12(%ebp)
	jne	L154
	movl	$2, %eax
	jmp	L141
L154:
	movl	$0, %eax
	jmp	L141
L153:
	cmpl	$5, 12(%ebp)
	jne	L156
	movl	$3, %eax
	jmp	L141
L156:
	movl	$1, %eax
L141:
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
	.def	_deflate_fast;	.scl	3;	.type	32;	.endef
_deflate_fast:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$36, %esp
	movl	$0, -12(%ebp)
L175:
	movl	8(%ebp), %eax
	movl	108(%eax), %eax
	cmpl	$261, %eax
	ja	L161
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_fill_window
	movl	8(%ebp), %eax
	movl	108(%eax), %eax
	cmpl	$261, %eax
	ja	L162
	cmpl	$0, 12(%ebp)
	jne	L162
	movl	$0, %eax
	jmp	L163
L162:
	movl	8(%ebp), %eax
	movl	108(%eax), %eax
	testl	%eax, %eax
	je	L184
L161:
	movl	8(%ebp), %eax
	movl	108(%eax), %eax
	cmpl	$2, %eax
	jbe	L165
	movl	8(%ebp), %eax
	movl	64(%eax), %edx
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %ecx
	movl	8(%ebp), %eax
	movl	48(%eax), %edx
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	addl	$2, %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	xorl	%eax, %ecx
	movl	%ecx, %edx
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	andl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 64(%eax)
	movl	8(%ebp), %eax
	movl	60(%eax), %edx
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	56(%eax), %edx
	movl	8(%ebp), %eax
	movl	100(%eax), %ecx
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	andl	%ecx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movl	-12(%ebp), %edx
	movw	%dx, (%eax)
	movl	8(%ebp), %eax
	movl	100(%eax), %edx
	movl	8(%ebp), %eax
	movl	60(%eax), %ecx
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	movw	%dx, (%eax)
L165:
	cmpl	$0, -12(%ebp)
	je	L166
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	subl	-12(%ebp), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	subl	$262, %eax
	cmpl	%eax, %edx
	ja	L166
	movl	8(%ebp), %eax
	movl	128(%eax), %eax
	cmpl	$2, %eax
	je	L166
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_longest_match
	movl	8(%ebp), %edx
	movl	%eax, 88(%edx)
L166:
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	cmpl	$2, %eax
	jbe	L167
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	leal	-3(%eax), %edx
	movl	8(%ebp), %eax
	movl	100(%eax), %ecx
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__tr_tally
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	movl	108(%eax), %edx
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	subl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 108(%eax)
	movl	8(%ebp), %eax
	movl	88(%eax), %edx
	movl	8(%ebp), %eax
	movl	120(%eax), %eax
	cmpl	%eax, %edx
	ja	L168
	movl	8(%ebp), %eax
	movl	108(%eax), %eax
	cmpl	$2, %eax
	jbe	L168
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 88(%eax)
L169:
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 100(%eax)
	movl	8(%ebp), %eax
	movl	64(%eax), %edx
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %ecx
	movl	8(%ebp), %eax
	movl	48(%eax), %edx
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	addl	$2, %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	xorl	%eax, %ecx
	movl	%ecx, %edx
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	andl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 64(%eax)
	movl	8(%ebp), %eax
	movl	60(%eax), %edx
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	56(%eax), %edx
	movl	8(%ebp), %eax
	movl	100(%eax), %ecx
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	andl	%ecx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movl	-12(%ebp), %edx
	movw	%dx, (%eax)
	movl	8(%ebp), %eax
	movl	100(%eax), %edx
	movl	8(%ebp), %eax
	movl	60(%eax), %ecx
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	movw	%dx, (%eax)
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 88(%eax)
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	jne	L169
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 100(%eax)
	jmp	L171
L168:
	movl	8(%ebp), %eax
	movl	100(%eax), %edx
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 100(%eax)
	movl	8(%ebp), %eax
	movl	$0, 88(%eax)
	movl	8(%ebp), %eax
	movl	48(%eax), %edx
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	8(%ebp), %eax
	movl	%edx, 64(%eax)
	movl	8(%ebp), %eax
	movl	64(%eax), %edx
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %ecx
	movl	8(%ebp), %eax
	movl	48(%eax), %edx
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	addl	$1, %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	xorl	%eax, %ecx
	movl	%ecx, %edx
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	andl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 64(%eax)
	jmp	L171
L167:
	movl	8(%ebp), %eax
	movl	48(%eax), %edx
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__tr_tally
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	movl	108(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 108(%eax)
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 100(%eax)
L171:
	cmpl	$0, -16(%ebp)
	je	L175
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	84(%eax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	84(%eax), %eax
	testl	%eax, %eax
	js	L173
	movl	8(%ebp), %eax
	movl	48(%eax), %edx
	movl	8(%ebp), %eax
	movl	84(%eax), %eax
	addl	%edx, %eax
	jmp	L174
L173:
	movl	$0, %eax
L174:
	movl	$0, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__tr_flush_block
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 84(%eax)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_flush_pending
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	L175
	movl	$0, %eax
	jmp	L163
L184:
	nop
	cmpl	$5, 12(%ebp)
	sete	%al
	movzbl	%al, %edx
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	84(%eax), %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	84(%eax), %eax
	testl	%eax, %eax
	js	L176
	movl	8(%ebp), %eax
	movl	48(%eax), %ecx
	movl	8(%ebp), %eax
	movl	84(%eax), %eax
	addl	%ecx, %eax
	jmp	L177
L176:
	movl	$0, %eax
L177:
	movl	%edx, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__tr_flush_block
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 84(%eax)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_flush_pending
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	L178
	cmpl	$5, 12(%ebp)
	jne	L179
	movl	$2, %eax
	jmp	L163
L179:
	movl	$0, %eax
	jmp	L163
L178:
	cmpl	$5, 12(%ebp)
	jne	L181
	movl	$3, %eax
	jmp	L163
L181:
	movl	$1, %eax
L163:
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
	.def	_deflate_slow;	.scl	3;	.type	32;	.endef
_deflate_slow:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$36, %esp
	movl	$0, -12(%ebp)
L205:
	movl	8(%ebp), %eax
	movl	108(%eax), %eax
	cmpl	$261, %eax
	ja	L186
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_fill_window
	movl	8(%ebp), %eax
	movl	108(%eax), %eax
	cmpl	$261, %eax
	ja	L187
	cmpl	$0, 12(%ebp)
	jne	L187
	movl	$0, %eax
	jmp	L188
L187:
	movl	8(%ebp), %eax
	movl	108(%eax), %eax
	testl	%eax, %eax
	je	L215
L186:
	movl	8(%ebp), %eax
	movl	108(%eax), %eax
	cmpl	$2, %eax
	jbe	L190
	movl	8(%ebp), %eax
	movl	64(%eax), %edx
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %ecx
	movl	8(%ebp), %eax
	movl	48(%eax), %edx
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	addl	$2, %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	xorl	%eax, %ecx
	movl	%ecx, %edx
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	andl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 64(%eax)
	movl	8(%ebp), %eax
	movl	60(%eax), %edx
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	56(%eax), %edx
	movl	8(%ebp), %eax
	movl	100(%eax), %ecx
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	andl	%ecx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movl	-12(%ebp), %edx
	movw	%dx, (%eax)
	movl	8(%ebp), %eax
	movl	100(%eax), %edx
	movl	8(%ebp), %eax
	movl	60(%eax), %ecx
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	movw	%dx, (%eax)
L190:
	movl	8(%ebp), %eax
	movl	88(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 112(%eax)
	movl	8(%ebp), %eax
	movl	104(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 92(%eax)
	movl	8(%ebp), %eax
	movl	$2, 88(%eax)
	cmpl	$0, -12(%ebp)
	je	L191
	movl	8(%ebp), %eax
	movl	112(%eax), %edx
	movl	8(%ebp), %eax
	movl	120(%eax), %eax
	cmpl	%eax, %edx
	jnb	L191
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	subl	-12(%ebp), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	subl	$262, %eax
	cmpl	%eax, %edx
	ja	L191
	movl	8(%ebp), %eax
	movl	128(%eax), %eax
	cmpl	$2, %eax
	je	L192
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_longest_match
	movl	8(%ebp), %edx
	movl	%eax, 88(%edx)
L192:
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	cmpl	$5, %eax
	ja	L191
	movl	8(%ebp), %eax
	movl	128(%eax), %eax
	cmpl	$1, %eax
	je	L193
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	cmpl	$3, %eax
	jne	L191
	movl	8(%ebp), %eax
	movl	100(%eax), %edx
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	$4096, %eax
	jbe	L191
L193:
	movl	8(%ebp), %eax
	movl	$2, 88(%eax)
L191:
	movl	8(%ebp), %eax
	movl	112(%eax), %eax
	cmpl	$2, %eax
	jbe	L194
	movl	8(%ebp), %eax
	movl	88(%eax), %edx
	movl	8(%ebp), %eax
	movl	112(%eax), %eax
	cmpl	%eax, %edx
	ja	L194
	movl	8(%ebp), %eax
	movl	100(%eax), %edx
	movl	8(%ebp), %eax
	movl	108(%eax), %eax
	addl	%edx, %eax
	subl	$3, %eax
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	movl	112(%eax), %eax
	leal	-3(%eax), %edx
	movl	8(%ebp), %eax
	movl	100(%eax), %ecx
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	subl	$1, %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__tr_tally
	movl	%eax, -20(%ebp)
	movl	8(%ebp), %eax
	movl	108(%eax), %edx
	movl	8(%ebp), %eax
	movl	112(%eax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 108(%eax)
	movl	8(%ebp), %eax
	movl	112(%eax), %eax
	leal	-2(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 112(%eax)
L196:
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 100(%eax)
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	cmpl	%eax, -16(%ebp)
	jb	L195
	movl	8(%ebp), %eax
	movl	64(%eax), %edx
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %ecx
	movl	8(%ebp), %eax
	movl	48(%eax), %edx
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	addl	$2, %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	xorl	%eax, %ecx
	movl	%ecx, %edx
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	andl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 64(%eax)
	movl	8(%ebp), %eax
	movl	60(%eax), %edx
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	56(%eax), %edx
	movl	8(%ebp), %eax
	movl	100(%eax), %ecx
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	andl	%ecx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movl	-12(%ebp), %edx
	movw	%dx, (%eax)
	movl	8(%ebp), %eax
	movl	100(%eax), %edx
	movl	8(%ebp), %eax
	movl	60(%eax), %ecx
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	movw	%dx, (%eax)
L195:
	movl	8(%ebp), %eax
	movl	112(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 112(%eax)
	movl	8(%ebp), %eax
	movl	112(%eax), %eax
	testl	%eax, %eax
	jne	L196
	movl	8(%ebp), %eax
	movl	$0, 96(%eax)
	movl	8(%ebp), %eax
	movl	$2, 88(%eax)
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 100(%eax)
	cmpl	$0, -20(%ebp)
	je	L216
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	84(%eax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	84(%eax), %eax
	testl	%eax, %eax
	js	L198
	movl	8(%ebp), %eax
	movl	48(%eax), %edx
	movl	8(%ebp), %eax
	movl	84(%eax), %eax
	addl	%edx, %eax
	jmp	L199
L198:
	movl	$0, %eax
L199:
	movl	$0, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__tr_flush_block
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 84(%eax)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_flush_pending
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	L216
	movl	$0, %eax
	jmp	L188
L194:
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	testl	%eax, %eax
	je	L201
	movl	8(%ebp), %eax
	movl	48(%eax), %edx
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	subl	$1, %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__tr_tally
	testl	%eax, %eax
	je	L202
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	84(%eax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	84(%eax), %eax
	testl	%eax, %eax
	js	L203
	movl	8(%ebp), %eax
	movl	48(%eax), %edx
	movl	8(%ebp), %eax
	movl	84(%eax), %eax
	addl	%edx, %eax
	jmp	L204
L203:
	movl	$0, %eax
L204:
	movl	$0, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__tr_flush_block
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 84(%eax)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_flush_pending
L202:
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 100(%eax)
	movl	8(%ebp), %eax
	movl	108(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 108(%eax)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	L205
	movl	$0, %eax
	jmp	L188
L201:
	movl	8(%ebp), %eax
	movl	$1, 96(%eax)
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 100(%eax)
	movl	8(%ebp), %eax
	movl	108(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 108(%eax)
	jmp	L205
L216:
	nop
	jmp	L205
L215:
	nop
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	testl	%eax, %eax
	je	L206
	movl	8(%ebp), %eax
	movl	48(%eax), %edx
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	subl	$1, %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__tr_tally
	movl	8(%ebp), %eax
	movl	$0, 96(%eax)
L206:
	cmpl	$5, 12(%ebp)
	sete	%al
	movzbl	%al, %edx
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	84(%eax), %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	84(%eax), %eax
	testl	%eax, %eax
	js	L207
	movl	8(%ebp), %eax
	movl	48(%eax), %ecx
	movl	8(%ebp), %eax
	movl	84(%eax), %eax
	addl	%ecx, %eax
	jmp	L208
L207:
	movl	$0, %eax
L208:
	movl	%edx, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__tr_flush_block
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 84(%eax)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_flush_pending
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	L209
	cmpl	$5, 12(%ebp)
	jne	L210
	movl	$2, %eax
	jmp	L188
L210:
	movl	$0, %eax
	jmp	L188
L209:
	cmpl	$5, 12(%ebp)
	jne	L212
	movl	$3, %eax
	jmp	L188
L212:
	movl	$1, %eax
L188:
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
	.data
	.align 32
_extra_lbits:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	1
	.long	2
	.long	2
	.long	2
	.long	2
	.long	3
	.long	3
	.long	3
	.long	3
	.long	4
	.long	4
	.long	4
	.long	4
	.long	5
	.long	5
	.long	5
	.long	5
	.long	0
	.align 32
_extra_dbits:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	2
	.long	2
	.long	3
	.long	3
	.long	4
	.long	4
	.long	5
	.long	5
	.long	6
	.long	6
	.long	7
	.long	7
	.long	8
	.long	8
	.long	9
	.long	9
	.long	10
	.long	10
	.long	11
	.long	11
	.long	12
	.long	12
	.long	13
	.long	13
	.align 32
_extra_blbits:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	2
	.long	3
	.long	7
	.align 4
_bl_order:
	.ascii "\20\21\22\0\10\7\11\6\12\5\13\4\14\3\15\2\16\1\17"
.lcomm _static_ltree,1152,32
.lcomm _static_dtree,120,32
.lcomm _dist_code,512,32
.lcomm _length_code,256,32
.lcomm _base_length,116,32
.lcomm _base_dist,120,32
	.align 4
_static_l_desc:
	.long	_static_ltree
	.long	_extra_lbits
	.long	257
	.long	286
	.long	15
	.align 4
_static_d_desc:
	.long	_static_dtree
	.long	_extra_dbits
	.long	0
	.long	30
	.long	15
	.align 4
_static_bl_desc:
	.long	0
	.long	_extra_blbits
	.long	0
	.long	19
	.long	7
	.text
	.def	_tr_static_init;	.scl	3;	.type	32;	.endef
_tr_static_init:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$88, %esp
	movl	_static_init_done.59172, %eax
	testl	%eax, %eax
	jne	L244
	movl	$0, -20(%ebp)
	movl	$0, -24(%ebp)
	jmp	L220
L223:
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, _base_length(,%eax,4)
	movl	$0, -12(%ebp)
	jmp	L221
L222:
	movl	-20(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -20(%ebp)
	movl	-24(%ebp), %edx
	movb	%dl, _length_code(%eax)
	addl	$1, -12(%ebp)
L221:
	movl	-24(%ebp), %eax
	movl	_extra_lbits(,%eax,4), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	cmpl	%eax, -12(%ebp)
	jl	L222
	addl	$1, -24(%ebp)
L220:
	cmpl	$27, -24(%ebp)
	jle	L223
	movl	-20(%ebp), %eax
	subl	$1, %eax
	movl	-24(%ebp), %edx
	movb	%dl, _length_code(%eax)
	movl	$0, -28(%ebp)
	movl	$0, -24(%ebp)
	jmp	L224
L227:
	movl	-24(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, _base_dist(,%eax,4)
	movl	$0, -12(%ebp)
	jmp	L225
L226:
	movl	-28(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -28(%ebp)
	movl	-24(%ebp), %edx
	movb	%dl, _dist_code(%eax)
	addl	$1, -12(%ebp)
L225:
	movl	-24(%ebp), %eax
	movl	_extra_dbits(,%eax,4), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	cmpl	%eax, -12(%ebp)
	jl	L226
	addl	$1, -24(%ebp)
L224:
	cmpl	$15, -24(%ebp)
	jle	L227
	sarl	$7, -28(%ebp)
	jmp	L228
L231:
	movl	-28(%ebp), %eax
	sall	$7, %eax
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, _base_dist(,%eax,4)
	movl	$0, -12(%ebp)
	jmp	L229
L230:
	movl	-28(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -28(%ebp)
	addl	$256, %eax
	movl	-24(%ebp), %edx
	movb	%dl, _dist_code(%eax)
	addl	$1, -12(%ebp)
L229:
	movl	-24(%ebp), %eax
	movl	_extra_dbits(,%eax,4), %eax
	subl	$7, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	cmpl	%eax, -12(%ebp)
	jl	L230
	addl	$1, -24(%ebp)
L228:
	cmpl	$29, -24(%ebp)
	jle	L231
	movl	$0, -16(%ebp)
	jmp	L232
L233:
	movl	-16(%ebp), %eax
	movw	$0, -60(%ebp,%eax,2)
	addl	$1, -16(%ebp)
L232:
	cmpl	$15, -16(%ebp)
	jle	L233
	movl	$0, -12(%ebp)
	jmp	L234
L235:
	movl	-12(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -12(%ebp)
	movw	$8, _static_ltree+2(,%eax,4)
	movzwl	-44(%ebp), %eax
	addl	$1, %eax
	movw	%ax, -44(%ebp)
L234:
	cmpl	$143, -12(%ebp)
	jle	L235
	jmp	L236
L237:
	movl	-12(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -12(%ebp)
	movw	$9, _static_ltree+2(,%eax,4)
	movzwl	-42(%ebp), %eax
	addl	$1, %eax
	movw	%ax, -42(%ebp)
L236:
	cmpl	$255, -12(%ebp)
	jle	L237
	jmp	L238
L239:
	movl	-12(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -12(%ebp)
	movw	$7, _static_ltree+2(,%eax,4)
	movzwl	-46(%ebp), %eax
	addl	$1, %eax
	movw	%ax, -46(%ebp)
L238:
	cmpl	$279, -12(%ebp)
	jle	L239
	jmp	L240
L241:
	movl	-12(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -12(%ebp)
	movw	$8, _static_ltree+2(,%eax,4)
	movzwl	-44(%ebp), %eax
	addl	$1, %eax
	movw	%ax, -44(%ebp)
L240:
	cmpl	$287, -12(%ebp)
	jle	L241
	leal	-60(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$287, 4(%esp)
	movl	$_static_ltree, (%esp)
	call	_gen_codes
	movl	$0, -12(%ebp)
	jmp	L242
L243:
	movl	-12(%ebp), %eax
	movw	$5, _static_dtree+2(,%eax,4)
	movl	-12(%ebp), %eax
	movl	$5, 4(%esp)
	movl	%eax, (%esp)
	call	_bi_reverse
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movw	%dx, _static_dtree(,%eax,4)
	addl	$1, -12(%ebp)
L242:
	cmpl	$29, -12(%ebp)
	jle	L243
	movl	$1, _static_init_done.59172
	jmp	L217
L244:
	nop
L217:
	leave
	ret
	.globl	__tr_init
	.def	__tr_init;	.scl	2;	.type	32;	.endef
__tr_init:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	call	_tr_static_init
	movl	8(%ebp), %eax
	movl	$0, 5800(%eax)
	movl	8(%ebp), %eax
	leal	140(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 2832(%eax)
	movl	8(%ebp), %eax
	movl	$_static_l_desc, 2840(%eax)
	movl	8(%ebp), %eax
	leal	2432(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 2844(%eax)
	movl	8(%ebp), %eax
	movl	$_static_d_desc, 2852(%eax)
	movl	8(%ebp), %eax
	leal	2676(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 2856(%eax)
	movl	8(%ebp), %eax
	movl	$_static_bl_desc, 2864(%eax)
	movl	8(%ebp), %eax
	movw	$0, 5812(%eax)
	movl	8(%ebp), %eax
	movl	$0, 5816(%eax)
	movl	8(%ebp), %eax
	movl	$8, 5808(%eax)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_init_block
	nop
	leave
	ret
	.def	_init_block;	.scl	3;	.type	32;	.endef
_init_block:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$16, %esp
	movl	$0, -4(%ebp)
	jmp	L247
L248:
	movl	8(%ebp), %eax
	movl	-4(%ebp), %edx
	addl	$32, %edx
	movw	$0, 12(%eax,%edx,4)
	addl	$1, -4(%ebp)
L247:
	cmpl	$285, -4(%ebp)
	jle	L248
	movl	$0, -4(%ebp)
	jmp	L249
L250:
	movl	8(%ebp), %eax
	movl	-4(%ebp), %edx
	addl	$608, %edx
	movw	$0, (%eax,%edx,4)
	addl	$1, -4(%ebp)
L249:
	cmpl	$29, -4(%ebp)
	jle	L250
	movl	$0, -4(%ebp)
	jmp	L251
L252:
	movl	8(%ebp), %eax
	movl	-4(%ebp), %edx
	addl	$668, %edx
	movw	$0, 4(%eax,%edx,4)
	addl	$1, -4(%ebp)
L251:
	cmpl	$18, -4(%ebp)
	jle	L252
	movl	8(%ebp), %eax
	movw	$1, 1164(%eax)
	movl	8(%ebp), %eax
	movl	$0, 5796(%eax)
	movl	8(%ebp), %eax
	movl	5796(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 5792(%eax)
	movl	8(%ebp), %eax
	movl	$0, 5804(%eax)
	movl	8(%ebp), %eax
	movl	5804(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 5784(%eax)
	nop
	leave
	ret
	.def	_pqdownheap;	.scl	3;	.type	32;	.endef
_pqdownheap:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$16, %esp
	movl	8(%ebp), %eax
	movl	16(%ebp), %edx
	addl	$724, %edx
	movl	4(%eax,%edx,4), %eax
	movl	%eax, -8(%ebp)
	movl	16(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, -4(%ebp)
	jmp	L254
L259:
	movl	8(%ebp), %eax
	movl	5192(%eax), %eax
	cmpl	%eax, -4(%ebp)
	jge	L255
	movl	-4(%ebp), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	addl	$724, %edx
	movl	4(%eax,%edx,4), %eax
	leal	0(,%eax,4), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	movzwl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	-4(%ebp), %ecx
	addl	$724, %ecx
	movl	4(%eax,%ecx,4), %eax
	leal	0(,%eax,4), %ecx
	movl	12(%ebp), %eax
	addl	%ecx, %eax
	movzwl	(%eax), %eax
	cmpw	%ax, %dx
	jb	L256
	movl	-4(%ebp), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	addl	$724, %edx
	movl	4(%eax,%edx,4), %eax
	leal	0(,%eax,4), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	movzwl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	-4(%ebp), %ecx
	addl	$724, %ecx
	movl	4(%eax,%ecx,4), %eax
	leal	0(,%eax,4), %ecx
	movl	12(%ebp), %eax
	addl	%ecx, %eax
	movzwl	(%eax), %eax
	cmpw	%ax, %dx
	jne	L255
	movl	-4(%ebp), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	addl	$724, %edx
	movl	4(%eax,%edx,4), %eax
	movl	8(%ebp), %edx
	movzbl	5200(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	-4(%ebp), %edx
	addl	$724, %edx
	movl	4(%eax,%edx,4), %eax
	movl	8(%ebp), %edx
	movzbl	5200(%edx,%eax), %eax
	cmpb	%al, %cl
	ja	L255
L256:
	addl	$1, -4(%ebp)
L255:
	movl	-8(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	movzwl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	-4(%ebp), %ecx
	addl	$724, %ecx
	movl	4(%eax,%ecx,4), %eax
	leal	0(,%eax,4), %ecx
	movl	12(%ebp), %eax
	addl	%ecx, %eax
	movzwl	(%eax), %eax
	cmpw	%ax, %dx
	jb	L257
	movl	-8(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	movzwl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	-4(%ebp), %ecx
	addl	$724, %ecx
	movl	4(%eax,%ecx,4), %eax
	leal	0(,%eax,4), %ecx
	movl	12(%ebp), %eax
	addl	%ecx, %eax
	movzwl	(%eax), %eax
	cmpw	%ax, %dx
	jne	L258
	movl	8(%ebp), %edx
	movl	-8(%ebp), %eax
	addl	%edx, %eax
	addl	$5200, %eax
	movzbl	(%eax), %ecx
	movl	8(%ebp), %eax
	movl	-4(%ebp), %edx
	addl	$724, %edx
	movl	4(%eax,%edx,4), %eax
	movl	8(%ebp), %edx
	movzbl	5200(%edx,%eax), %eax
	cmpb	%al, %cl
	jbe	L257
L258:
	movl	8(%ebp), %eax
	movl	-4(%ebp), %edx
	addl	$724, %edx
	movl	4(%eax,%edx,4), %edx
	movl	8(%ebp), %eax
	movl	16(%ebp), %ecx
	addl	$724, %ecx
	movl	%edx, 4(%eax,%ecx,4)
	movl	-4(%ebp), %eax
	movl	%eax, 16(%ebp)
	sall	-4(%ebp)
L254:
	movl	8(%ebp), %eax
	movl	5192(%eax), %eax
	cmpl	%eax, -4(%ebp)
	jle	L259
L257:
	movl	8(%ebp), %eax
	movl	16(%ebp), %edx
	leal	724(%edx), %ecx
	movl	-8(%ebp), %edx
	movl	%edx, 4(%eax,%ecx,4)
	nop
	leave
	ret
	.def	_gen_bitlen;	.scl	3;	.type	32;	.endef
_gen_bitlen:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$64, %esp
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, -44(%ebp)
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -48(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -16(%ebp)
	jmp	L261
L262:
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	addl	$1432, %edx
	movw	$0, 4(%eax,%edx,2)
	addl	$1, -16(%ebp)
L261:
	cmpl	$15, -16(%ebp)
	jle	L262
	movl	8(%ebp), %eax
	movl	5196(%eax), %edx
	movl	8(%ebp), %eax
	addl	$724, %edx
	movl	4(%eax,%edx,4), %eax
	leal	0(,%eax,4), %edx
	movl	-28(%ebp), %eax
	addl	%edx, %eax
	movw	$0, 2(%eax)
	movl	8(%ebp), %eax
	movl	5196(%eax), %eax
	addl	$1, %eax
	movl	%eax, -8(%ebp)
	jmp	L263
L268:
	movl	8(%ebp), %eax
	movl	-8(%ebp), %edx
	addl	$724, %edx
	movl	4(%eax,%edx,4), %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	-28(%ebp), %eax
	addl	%edx, %eax
	movzwl	2(%eax), %eax
	movzwl	%ax, %eax
	leal	0(,%eax,4), %edx
	movl	-28(%ebp), %eax
	addl	%edx, %eax
	movzwl	2(%eax), %eax
	movzwl	%ax, %eax
	addl	$1, %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	cmpl	-48(%ebp), %eax
	jle	L264
	movl	-48(%ebp), %eax
	movl	%eax, -16(%ebp)
	addl	$1, -24(%ebp)
L264:
	movl	-12(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	-28(%ebp), %eax
	addl	%edx, %eax
	movl	-16(%ebp), %edx
	movw	%dx, 2(%eax)
	movl	-12(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jg	L279
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	addl	$1432, %edx
	movzwl	4(%eax,%edx,2), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	addl	$1432, %edx
	movw	%cx, 4(%eax,%edx,2)
	movl	$0, -20(%ebp)
	movl	-12(%ebp), %eax
	cmpl	-44(%ebp), %eax
	jl	L267
	movl	-12(%ebp), %eax
	subl	-44(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	-40(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
L267:
	movl	-12(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	-28(%ebp), %eax
	addl	%edx, %eax
	movzwl	(%eax), %eax
	movw	%ax, -54(%ebp)
	movl	8(%ebp), %eax
	movl	5792(%eax), %edx
	movzwl	-54(%ebp), %eax
	movl	-16(%ebp), %ebx
	movl	-20(%ebp), %ecx
	addl	%ebx, %ecx
	imull	%ecx, %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 5792(%eax)
	cmpl	$0, -36(%ebp)
	je	L266
	movl	8(%ebp), %eax
	movl	5796(%eax), %edx
	movzwl	-54(%ebp), %eax
	movl	-12(%ebp), %ecx
	leal	0(,%ecx,4), %ebx
	movl	-36(%ebp), %ecx
	addl	%ebx, %ecx
	movzwl	2(%ecx), %ecx
	movzwl	%cx, %ebx
	movl	-20(%ebp), %ecx
	addl	%ebx, %ecx
	imull	%ecx, %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 5796(%eax)
	jmp	L266
L279:
	nop
L266:
	addl	$1, -8(%ebp)
L263:
	cmpl	$572, -8(%ebp)
	jle	L268
	cmpl	$0, -24(%ebp)
	je	L280
L269:
	movl	-48(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -16(%ebp)
	jmp	L271
L272:
	subl	$1, -16(%ebp)
L271:
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	addl	$1432, %edx
	movzwl	4(%eax,%edx,2), %eax
	testw	%ax, %ax
	je	L272
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	addl	$1432, %edx
	movzwl	4(%eax,%edx,2), %eax
	leal	-1(%eax), %ecx
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	addl	$1432, %edx
	movw	%cx, 4(%eax,%edx,2)
	movl	-16(%ebp), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	addl	$1432, %edx
	movzwl	4(%eax,%edx,2), %eax
	movl	-16(%ebp), %edx
	addl	$1, %edx
	leal	2(%eax), %ecx
	movl	8(%ebp), %eax
	addl	$1432, %edx
	movw	%cx, 4(%eax,%edx,2)
	movl	8(%ebp), %eax
	movl	-48(%ebp), %edx
	addl	$1432, %edx
	movzwl	4(%eax,%edx,2), %eax
	leal	-1(%eax), %ecx
	movl	8(%ebp), %eax
	movl	-48(%ebp), %edx
	addl	$1432, %edx
	movw	%cx, 4(%eax,%edx,2)
	subl	$2, -24(%ebp)
	cmpl	$0, -24(%ebp)
	jg	L269
	movl	-48(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	L273
L278:
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	addl	$1432, %edx
	movzwl	4(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -12(%ebp)
	jmp	L274
L277:
	subl	$1, -8(%ebp)
	movl	8(%ebp), %eax
	movl	-8(%ebp), %edx
	addl	$724, %edx
	movl	4(%eax,%edx,4), %eax
	movl	%eax, -52(%ebp)
	movl	-52(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jle	L275
	jmp	L274
L275:
	movl	-52(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	-28(%ebp), %eax
	addl	%edx, %eax
	movzwl	2(%eax), %eax
	movzwl	%ax, %edx
	movl	-16(%ebp), %eax
	cmpl	%eax, %edx
	je	L276
	movl	8(%ebp), %eax
	movl	5792(%eax), %eax
	movl	-52(%ebp), %edx
	leal	0(,%edx,4), %ecx
	movl	-28(%ebp), %edx
	addl	%ecx, %edx
	movzwl	2(%edx), %edx
	movzwl	%dx, %edx
	movl	-16(%ebp), %ecx
	subl	%edx, %ecx
	movl	-52(%ebp), %edx
	leal	0(,%edx,4), %ebx
	movl	-28(%ebp), %edx
	addl	%ebx, %edx
	movzwl	(%edx), %edx
	movzwl	%dx, %edx
	imull	%ecx, %edx
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 5792(%eax)
	movl	-52(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	-28(%ebp), %eax
	addl	%edx, %eax
	movl	-16(%ebp), %edx
	movw	%dx, 2(%eax)
L276:
	subl	$1, -12(%ebp)
L274:
	cmpl	$0, -12(%ebp)
	jne	L277
	subl	$1, -16(%ebp)
L273:
	cmpl	$0, -16(%ebp)
	jne	L278
	jmp	L260
L280:
	nop
L260:
	addl	$64, %esp
	popl	%ebx
	popl	%ebp
	ret
	.def	_gen_codes;	.scl	3;	.type	32;	.endef
_gen_codes:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$72, %esp
	movw	$0, -10(%ebp)
	movl	$1, -16(%ebp)
	jmp	L282
L283:
	movl	-16(%ebp), %eax
	addl	$2147483647, %eax
	leal	(%eax,%eax), %edx
	movl	16(%ebp), %eax
	addl	%edx, %eax
	movzwl	(%eax), %edx
	movzwl	-10(%ebp), %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movw	%ax, -10(%ebp)
	movl	-16(%ebp), %eax
	movzwl	-10(%ebp), %edx
	movw	%dx, -56(%ebp,%eax,2)
	addl	$1, -16(%ebp)
L282:
	cmpl	$15, -16(%ebp)
	jle	L283
	movl	$0, -20(%ebp)
	jmp	L284
L287:
	movl	-20(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzwl	2(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	je	L288
	movl	-24(%ebp), %eax
	movzwl	-56(%ebp,%eax,2), %eax
	leal	1(%eax), %ecx
	movl	-24(%ebp), %edx
	movw	%cx, -56(%ebp,%edx,2)
	movzwl	%ax, %eax
	movl	-24(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_bi_reverse
	movl	-20(%ebp), %edx
	leal	0(,%edx,4), %ecx
	movl	8(%ebp), %edx
	addl	%ecx, %edx
	movw	%ax, (%edx)
	jmp	L286
L288:
	nop
L286:
	addl	$1, -20(%ebp)
L284:
	movl	-20(%ebp), %eax
	cmpl	12(%ebp), %eax
	jle	L287
	nop
	nop
	leave
	ret
	.def	_build_tree;	.scl	3;	.type	32;	.endef
_build_tree:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$52, %esp
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	$-1, -16(%ebp)
	movl	8(%ebp), %eax
	movl	$0, 5192(%eax)
	movl	8(%ebp), %eax
	movl	$573, 5196(%eax)
	movl	$0, -12(%ebp)
	jmp	L290
L293:
	movl	-12(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	-24(%ebp), %eax
	addl	%edx, %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	je	L291
	movl	-12(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	movl	5192(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 5192(%eax)
	movl	8(%ebp), %eax
	movl	5192(%eax), %edx
	movl	8(%ebp), %eax
	leal	724(%edx), %ecx
	movl	-16(%ebp), %edx
	movl	%edx, 4(%eax,%ecx,4)
	movl	8(%ebp), %edx
	movl	-12(%ebp), %eax
	addl	%edx, %eax
	addl	$5200, %eax
	movb	$0, (%eax)
	jmp	L292
L291:
	movl	-12(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	-24(%ebp), %eax
	addl	%edx, %eax
	movw	$0, 2(%eax)
L292:
	addl	$1, -12(%ebp)
L290:
	movl	-12(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jl	L293
	jmp	L294
L297:
	cmpl	$1, -16(%ebp)
	jg	L295
	addl	$1, -16(%ebp)
	movl	-16(%ebp), %edx
	jmp	L296
L295:
	movl	$0, %edx
L296:
	movl	8(%ebp), %eax
	movl	5192(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %eax
	movl	%ecx, 5192(%eax)
	movl	8(%ebp), %eax
	movl	5192(%eax), %eax
	movl	8(%ebp), %ecx
	leal	724(%eax), %ebx
	movl	%edx, 4(%ecx,%ebx,4)
	movl	8(%ebp), %edx
	addl	$724, %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	-24(%ebp), %eax
	addl	%edx, %eax
	movw	$1, (%eax)
	movl	8(%ebp), %edx
	movl	-20(%ebp), %eax
	addl	%edx, %eax
	addl	$5200, %eax
	movb	$0, (%eax)
	movl	8(%ebp), %eax
	movl	5792(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 5792(%eax)
	cmpl	$0, -28(%ebp)
	je	L294
	movl	8(%ebp), %eax
	movl	5796(%eax), %edx
	movl	-20(%ebp), %eax
	leal	0(,%eax,4), %ecx
	movl	-28(%ebp), %eax
	addl	%ecx, %eax
	movzwl	2(%eax), %eax
	movzwl	%ax, %eax
	subl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 5796(%eax)
L294:
	movl	8(%ebp), %eax
	movl	5192(%eax), %eax
	cmpl	$1, %eax
	jle	L297
	movl	12(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	8(%ebp), %eax
	movl	5192(%eax), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -12(%ebp)
	jmp	L298
L299:
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_pqdownheap
	subl	$1, -12(%ebp)
L298:
	cmpl	$0, -12(%ebp)
	jg	L299
	movl	-32(%ebp), %eax
	movl	%eax, -20(%ebp)
L302:
	movl	8(%ebp), %eax
	movl	2904(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	5192(%eax), %eax
	leal	-1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 5192(%edx)
	movl	8(%ebp), %edx
	addl	$724, %eax
	movl	4(%edx,%eax,4), %edx
	movl	8(%ebp), %eax
	movl	%edx, 2904(%eax)
	movl	$1, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_pqdownheap
	movl	8(%ebp), %eax
	movl	2904(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	8(%ebp), %eax
	movl	5196(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 5196(%eax)
	movl	8(%ebp), %eax
	movl	5196(%eax), %edx
	movl	8(%ebp), %eax
	leal	724(%edx), %ecx
	movl	-12(%ebp), %edx
	movl	%edx, 4(%eax,%ecx,4)
	movl	8(%ebp), %eax
	movl	5196(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 5196(%eax)
	movl	8(%ebp), %eax
	movl	5196(%eax), %edx
	movl	8(%ebp), %eax
	leal	724(%edx), %ecx
	movl	-36(%ebp), %edx
	movl	%edx, 4(%eax,%ecx,4)
	movl	-12(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	-24(%ebp), %eax
	addl	%edx, %eax
	movzwl	(%eax), %ecx
	movl	-36(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	-24(%ebp), %eax
	addl	%edx, %eax
	movzwl	(%eax), %edx
	movl	-20(%ebp), %eax
	leal	0(,%eax,4), %ebx
	movl	-24(%ebp), %eax
	addl	%ebx, %eax
	addl	%ecx, %edx
	movw	%dx, (%eax)
	movl	8(%ebp), %edx
	movl	-12(%ebp), %eax
	addl	%edx, %eax
	addl	$5200, %eax
	movzbl	(%eax), %edx
	movl	8(%ebp), %ecx
	movl	-36(%ebp), %eax
	addl	%ecx, %eax
	addl	$5200, %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	jbe	L300
	movl	8(%ebp), %edx
	movl	-12(%ebp), %eax
	addl	%edx, %eax
	addl	$5200, %eax
	movzbl	(%eax), %eax
	addl	$1, %eax
	jmp	L301
L300:
	movl	8(%ebp), %edx
	movl	-36(%ebp), %eax
	addl	%edx, %eax
	addl	$5200, %eax
	movzbl	(%eax), %eax
	addl	$1, %eax
L301:
	movl	8(%ebp), %ecx
	movl	-20(%ebp), %edx
	addl	%ecx, %edx
	addl	$5200, %edx
	movb	%al, (%edx)
	movl	-36(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	-24(%ebp), %eax
	addl	%edx, %eax
	movl	-20(%ebp), %edx
	movw	%dx, 2(%eax)
	movl	-12(%ebp), %edx
	leal	0(,%edx,4), %ecx
	movl	-24(%ebp), %edx
	addl	%ecx, %edx
	movzwl	2(%eax), %eax
	movw	%ax, 2(%edx)
	movl	-20(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -20(%ebp)
	movl	8(%ebp), %edx
	movl	%eax, 2904(%edx)
	movl	$1, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_pqdownheap
	movl	8(%ebp), %eax
	movl	5192(%eax), %eax
	cmpl	$1, %eax
	jg	L302
	movl	8(%ebp), %eax
	movl	5196(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 5196(%eax)
	movl	8(%ebp), %eax
	movl	5196(%eax), %ecx
	movl	8(%ebp), %eax
	movl	2904(%eax), %edx
	movl	8(%ebp), %eax
	addl	$724, %ecx
	movl	%edx, 4(%eax,%ecx,4)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_gen_bitlen
	movl	8(%ebp), %eax
	addl	$2868, %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_gen_codes
	nop
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
	.def	_scan_tree;	.scl	3;	.type	32;	.endef
_scan_tree:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$32, %esp
	movl	$-1, -8(%ebp)
	movl	12(%ebp), %eax
	movzwl	2(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -12(%ebp)
	movl	$0, -16(%ebp)
	movl	$7, -20(%ebp)
	movl	$4, -24(%ebp)
	cmpl	$0, -12(%ebp)
	jne	L304
	movl	$138, -20(%ebp)
	movl	$3, -24(%ebp)
L304:
	movl	16(%ebp), %eax
	addl	$1, %eax
	leal	0(,%eax,4), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	movw	$-1, 2(%eax)
	movl	$0, -4(%ebp)
	jmp	L305
L315:
	movl	-12(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	-4(%ebp), %eax
	addl	$1, %eax
	leal	0(,%eax,4), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	movzwl	2(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -12(%ebp)
	addl	$1, -16(%ebp)
	movl	-16(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jge	L306
	movl	-28(%ebp), %eax
	cmpl	-12(%ebp), %eax
	je	L316
L306:
	movl	-16(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jge	L308
	movl	8(%ebp), %eax
	movl	-28(%ebp), %edx
	addl	$668, %edx
	movzwl	4(%eax,%edx,4), %eax
	movl	-16(%ebp), %edx
	leal	(%eax,%edx), %ecx
	movl	8(%ebp), %eax
	movl	-28(%ebp), %edx
	addl	$668, %edx
	movw	%cx, 4(%eax,%edx,4)
	jmp	L309
L308:
	cmpl	$0, -28(%ebp)
	je	L310
	movl	-28(%ebp), %eax
	cmpl	-8(%ebp), %eax
	je	L311
	movl	8(%ebp), %eax
	movl	-28(%ebp), %edx
	addl	$668, %edx
	movzwl	4(%eax,%edx,4), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %eax
	movl	-28(%ebp), %edx
	addl	$668, %edx
	movw	%cx, 4(%eax,%edx,4)
L311:
	movl	8(%ebp), %eax
	movzwl	2740(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movw	%dx, 2740(%eax)
	jmp	L309
L310:
	cmpl	$10, -16(%ebp)
	jg	L312
	movl	8(%ebp), %eax
	movzwl	2744(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movw	%dx, 2744(%eax)
	jmp	L309
L312:
	movl	8(%ebp), %eax
	movzwl	2748(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movw	%dx, 2748(%eax)
L309:
	movl	$0, -16(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, -8(%ebp)
	cmpl	$0, -12(%ebp)
	jne	L313
	movl	$138, -20(%ebp)
	movl	$3, -24(%ebp)
	jmp	L307
L313:
	movl	-28(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jne	L314
	movl	$6, -20(%ebp)
	movl	$3, -24(%ebp)
	jmp	L307
L314:
	movl	$7, -20(%ebp)
	movl	$4, -24(%ebp)
	jmp	L307
L316:
	nop
L307:
	addl	$1, -4(%ebp)
L305:
	movl	-4(%ebp), %eax
	cmpl	16(%ebp), %eax
	jle	L315
	nop
	nop
	leave
	ret
	.def	_send_tree;	.scl	3;	.type	32;	.endef
_send_tree:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	pushl	%ebx
	subl	$96, %esp
	movl	$-1, -16(%ebp)
	movl	12(%ebp), %eax
	movzwl	2(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -20(%ebp)
	movl	$0, -24(%ebp)
	movl	$7, -28(%ebp)
	movl	$4, -32(%ebp)
	cmpl	$0, -20(%ebp)
	jne	L318
	movl	$138, -28(%ebp)
	movl	$3, -32(%ebp)
L318:
	movl	$0, -12(%ebp)
	jmp	L319
L343:
	movl	-20(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	-12(%ebp), %eax
	addl	$1, %eax
	leal	0(,%eax,4), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	movzwl	2(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -20(%ebp)
	addl	$1, -24(%ebp)
	movl	-24(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jge	L320
	movl	-36(%ebp), %eax
	cmpl	-20(%ebp), %eax
	je	L344
L320:
	movl	-24(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jge	L322
L325:
	movl	8(%ebp), %eax
	movl	-36(%ebp), %edx
	addl	$668, %edx
	movzwl	6(%eax,%edx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, -96(%ebp)
	movl	8(%ebp), %eax
	movl	5816(%eax), %edx
	movl	$16, %eax
	subl	-96(%ebp), %eax
	cmpl	%eax, %edx
	jle	L323
	movl	8(%ebp), %eax
	movl	-36(%ebp), %edx
	addl	$668, %edx
	movzwl	4(%eax,%edx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, -100(%ebp)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	-100(%ebp), %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%ebx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 20(%edx)
	addl	%ebx, %eax
	movl	%esi, %edx
	movb	%dl, (%eax)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	shrw	$8, %ax
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 20(%edx)
	addl	%ebx, %eax
	movl	%esi, %edx
	movb	%dl, (%eax)
	movl	-100(%ebp), %eax
	movzwl	%ax, %edx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	$16, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	%eax, %edx
	movl	-96(%ebp), %eax
	addl	%edx, %eax
	subl	$16, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 5816(%eax)
	jmp	L324
L323:
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	-36(%ebp), %edx
	addl	$668, %edx
	movzwl	4(%eax,%edx,4), %eax
	movzwl	%ax, %edx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%ebx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movl	5816(%eax), %edx
	movl	-96(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 5816(%eax)
L324:
	subl	$1, -24(%ebp)
	cmpl	$0, -24(%ebp)
	jne	L325
	jmp	L326
L322:
	cmpl	$0, -36(%ebp)
	je	L327
	movl	-36(%ebp), %eax
	cmpl	-16(%ebp), %eax
	je	L328
	movl	8(%ebp), %eax
	movl	-36(%ebp), %edx
	addl	$668, %edx
	movzwl	6(%eax,%edx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, -72(%ebp)
	movl	8(%ebp), %eax
	movl	5816(%eax), %edx
	movl	$16, %eax
	subl	-72(%ebp), %eax
	cmpl	%eax, %edx
	jle	L329
	movl	8(%ebp), %eax
	movl	-36(%ebp), %edx
	addl	$668, %edx
	movzwl	4(%eax,%edx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, -76(%ebp)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	-76(%ebp), %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%ebx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 20(%edx)
	addl	%ebx, %eax
	movl	%esi, %edx
	movb	%dl, (%eax)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	shrw	$8, %ax
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 20(%edx)
	addl	%ebx, %eax
	movl	%esi, %edx
	movb	%dl, (%eax)
	movl	-76(%ebp), %eax
	movzwl	%ax, %edx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	$16, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	%eax, %edx
	movl	-72(%ebp), %eax
	addl	%edx, %eax
	subl	$16, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 5816(%eax)
	jmp	L330
L329:
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	-36(%ebp), %edx
	addl	$668, %edx
	movzwl	4(%eax,%edx,4), %eax
	movzwl	%ax, %edx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%ebx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movl	5816(%eax), %edx
	movl	-72(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 5816(%eax)
L330:
	subl	$1, -24(%ebp)
L328:
	movl	8(%ebp), %eax
	movzwl	2742(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -80(%ebp)
	movl	8(%ebp), %eax
	movl	5816(%eax), %edx
	movl	$16, %eax
	subl	-80(%ebp), %eax
	cmpl	%eax, %edx
	jle	L331
	movl	8(%ebp), %eax
	movzwl	2740(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -84(%ebp)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	-84(%ebp), %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%ebx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 20(%edx)
	addl	%ebx, %eax
	movl	%esi, %edx
	movb	%dl, (%eax)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	shrw	$8, %ax
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 20(%edx)
	addl	%ebx, %eax
	movl	%esi, %edx
	movb	%dl, (%eax)
	movl	-84(%ebp), %eax
	movzwl	%ax, %edx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	$16, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	%eax, %edx
	movl	-80(%ebp), %eax
	addl	%edx, %eax
	subl	$16, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 5816(%eax)
	jmp	L332
L331:
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movzwl	2740(%eax), %eax
	movzwl	%ax, %edx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%ebx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movl	5816(%eax), %edx
	movl	-80(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 5816(%eax)
L332:
	movl	$2, -88(%ebp)
	movl	8(%ebp), %eax
	movl	5816(%eax), %edx
	movl	$16, %eax
	subl	-88(%ebp), %eax
	cmpl	%eax, %edx
	jle	L333
	movl	-24(%ebp), %eax
	subl	$3, %eax
	movl	%eax, -92(%ebp)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	-92(%ebp), %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%ebx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 20(%edx)
	addl	%ebx, %eax
	movl	%esi, %edx
	movb	%dl, (%eax)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	shrw	$8, %ax
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 20(%edx)
	addl	%ebx, %eax
	movl	%esi, %edx
	movb	%dl, (%eax)
	movl	-92(%ebp), %eax
	movzwl	%ax, %edx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	$16, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	%eax, %edx
	movl	-88(%ebp), %eax
	addl	%edx, %eax
	subl	$16, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 5816(%eax)
	jmp	L326
L333:
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	movl	%eax, %ebx
	movl	-24(%ebp), %eax
	leal	-3(%eax), %edx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%ebx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movl	5816(%eax), %edx
	movl	-88(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 5816(%eax)
	jmp	L326
L327:
	cmpl	$10, -24(%ebp)
	jg	L334
	movl	8(%ebp), %eax
	movzwl	2746(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -56(%ebp)
	movl	8(%ebp), %eax
	movl	5816(%eax), %edx
	movl	$16, %eax
	subl	-56(%ebp), %eax
	cmpl	%eax, %edx
	jle	L335
	movl	8(%ebp), %eax
	movzwl	2744(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -60(%ebp)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	-60(%ebp), %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%ebx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 20(%edx)
	addl	%ebx, %eax
	movl	%esi, %edx
	movb	%dl, (%eax)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	shrw	$8, %ax
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 20(%edx)
	addl	%ebx, %eax
	movl	%esi, %edx
	movb	%dl, (%eax)
	movl	-60(%ebp), %eax
	movzwl	%ax, %edx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	$16, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	%eax, %edx
	movl	-56(%ebp), %eax
	addl	%edx, %eax
	subl	$16, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 5816(%eax)
	jmp	L336
L335:
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movzwl	2744(%eax), %eax
	movzwl	%ax, %edx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%ebx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movl	5816(%eax), %edx
	movl	-56(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 5816(%eax)
L336:
	movl	$3, -64(%ebp)
	movl	8(%ebp), %eax
	movl	5816(%eax), %edx
	movl	$16, %eax
	subl	-64(%ebp), %eax
	cmpl	%eax, %edx
	jle	L337
	movl	-24(%ebp), %eax
	subl	$3, %eax
	movl	%eax, -68(%ebp)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	-68(%ebp), %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%ebx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 20(%edx)
	addl	%ebx, %eax
	movl	%esi, %edx
	movb	%dl, (%eax)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	shrw	$8, %ax
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 20(%edx)
	addl	%ebx, %eax
	movl	%esi, %edx
	movb	%dl, (%eax)
	movl	-68(%ebp), %eax
	movzwl	%ax, %edx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	$16, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	%eax, %edx
	movl	-64(%ebp), %eax
	addl	%edx, %eax
	subl	$16, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 5816(%eax)
	jmp	L326
L337:
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	movl	%eax, %ebx
	movl	-24(%ebp), %eax
	leal	-3(%eax), %edx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%ebx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movl	5816(%eax), %edx
	movl	-64(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 5816(%eax)
	jmp	L326
L334:
	movl	8(%ebp), %eax
	movzwl	2750(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -40(%ebp)
	movl	8(%ebp), %eax
	movl	5816(%eax), %edx
	movl	$16, %eax
	subl	-40(%ebp), %eax
	cmpl	%eax, %edx
	jle	L338
	movl	8(%ebp), %eax
	movzwl	2748(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -44(%ebp)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	-44(%ebp), %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%ebx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 20(%edx)
	addl	%ebx, %eax
	movl	%esi, %edx
	movb	%dl, (%eax)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	shrw	$8, %ax
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 20(%edx)
	addl	%ebx, %eax
	movl	%esi, %edx
	movb	%dl, (%eax)
	movl	-44(%ebp), %eax
	movzwl	%ax, %edx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	$16, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	%eax, %edx
	movl	-40(%ebp), %eax
	addl	%edx, %eax
	subl	$16, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 5816(%eax)
	jmp	L339
L338:
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movzwl	2748(%eax), %eax
	movzwl	%ax, %edx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%ebx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movl	5816(%eax), %edx
	movl	-40(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 5816(%eax)
L339:
	movl	$7, -48(%ebp)
	movl	8(%ebp), %eax
	movl	5816(%eax), %edx
	movl	$16, %eax
	subl	-48(%ebp), %eax
	cmpl	%eax, %edx
	jle	L340
	movl	-24(%ebp), %eax
	subl	$11, %eax
	movl	%eax, -52(%ebp)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	-52(%ebp), %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%ebx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 20(%edx)
	addl	%ebx, %eax
	movl	%esi, %edx
	movb	%dl, (%eax)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	shrw	$8, %ax
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 20(%edx)
	addl	%ebx, %eax
	movl	%esi, %edx
	movb	%dl, (%eax)
	movl	-52(%ebp), %eax
	movzwl	%ax, %edx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	$16, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	addl	%edx, %eax
	subl	$16, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 5816(%eax)
	jmp	L326
L340:
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	movl	%eax, %ebx
	movl	-24(%ebp), %eax
	leal	-11(%eax), %edx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%ebx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movl	5816(%eax), %edx
	movl	-48(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 5816(%eax)
L326:
	movl	$0, -24(%ebp)
	movl	-36(%ebp), %eax
	movl	%eax, -16(%ebp)
	cmpl	$0, -20(%ebp)
	jne	L341
	movl	$138, -28(%ebp)
	movl	$3, -32(%ebp)
	jmp	L321
L341:
	movl	-36(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jne	L342
	movl	$6, -28(%ebp)
	movl	$3, -32(%ebp)
	jmp	L321
L342:
	movl	$7, -28(%ebp)
	movl	$4, -32(%ebp)
	jmp	L321
L344:
	nop
L321:
	addl	$1, -12(%ebp)
L319:
	movl	-12(%ebp), %eax
	cmpl	16(%ebp), %eax
	jle	L343
	nop
	nop
	addl	$96, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
	.def	_build_bl_tree;	.scl	3;	.type	32;	.endef
_build_bl_tree:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	2836(%eax), %eax
	movl	8(%ebp), %edx
	addl	$140, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_scan_tree
	movl	8(%ebp), %eax
	movl	2848(%eax), %eax
	movl	8(%ebp), %edx
	addl	$2432, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_scan_tree
	movl	8(%ebp), %eax
	addl	$2856, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_build_tree
	movl	$18, -12(%ebp)
	jmp	L346
L349:
	movl	-12(%ebp), %eax
	addl	$_bl_order, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	8(%ebp), %eax
	addl	$668, %edx
	movzwl	6(%eax,%edx,4), %eax
	testw	%ax, %ax
	jne	L351
	subl	$1, -12(%ebp)
L346:
	cmpl	$2, -12(%ebp)
	jg	L349
	jmp	L348
L351:
	nop
L348:
	movl	8(%ebp), %eax
	movl	5792(%eax), %ecx
	movl	-12(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%ecx, %eax
	leal	14(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 5792(%eax)
	movl	-12(%ebp), %eax
	leave
	ret
	.def	_send_all_trees;	.scl	3;	.type	32;	.endef
_send_all_trees:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	pushl	%ebx
	subl	$60, %esp
	movl	$5, -16(%ebp)
	movl	8(%ebp), %eax
	movl	5816(%eax), %edx
	movl	$16, %eax
	subl	-16(%ebp), %eax
	cmpl	%eax, %edx
	jle	L353
	movl	12(%ebp), %eax
	subl	$257, %eax
	movl	%eax, -20(%ebp)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	-20(%ebp), %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%ebx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 20(%edx)
	addl	%ebx, %eax
	movl	%esi, %edx
	movb	%dl, (%eax)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	shrw	$8, %ax
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 20(%edx)
	addl	%ebx, %eax
	movl	%esi, %edx
	movb	%dl, (%eax)
	movl	-20(%ebp), %eax
	movzwl	%ax, %edx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	$16, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	addl	%edx, %eax
	subl	$16, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 5816(%eax)
	jmp	L354
L353:
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	movl	%eax, %ebx
	movl	12(%ebp), %eax
	leal	-257(%eax), %edx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%ebx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movl	5816(%eax), %edx
	movl	-16(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 5816(%eax)
L354:
	movl	$5, -24(%ebp)
	movl	8(%ebp), %eax
	movl	5816(%eax), %edx
	movl	$16, %eax
	subl	-24(%ebp), %eax
	cmpl	%eax, %edx
	jle	L355
	movl	16(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -28(%ebp)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	-28(%ebp), %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%ebx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 20(%edx)
	addl	%ebx, %eax
	movl	%esi, %edx
	movb	%dl, (%eax)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	shrw	$8, %ax
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 20(%edx)
	addl	%ebx, %eax
	movl	%esi, %edx
	movb	%dl, (%eax)
	movl	-28(%ebp), %eax
	movzwl	%ax, %edx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	$16, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	addl	%edx, %eax
	subl	$16, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 5816(%eax)
	jmp	L356
L355:
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	movl	%eax, %ebx
	movl	16(%ebp), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%ebx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movl	5816(%eax), %edx
	movl	-24(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 5816(%eax)
L356:
	movl	$4, -32(%ebp)
	movl	8(%ebp), %eax
	movl	5816(%eax), %edx
	movl	$16, %eax
	subl	-32(%ebp), %eax
	cmpl	%eax, %edx
	jle	L357
	movl	20(%ebp), %eax
	subl	$4, %eax
	movl	%eax, -36(%ebp)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	-36(%ebp), %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%ebx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 20(%edx)
	addl	%ebx, %eax
	movl	%esi, %edx
	movb	%dl, (%eax)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	shrw	$8, %ax
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 20(%edx)
	addl	%ebx, %eax
	movl	%esi, %edx
	movb	%dl, (%eax)
	movl	-36(%ebp), %eax
	movzwl	%ax, %edx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	$16, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	addl	%edx, %eax
	subl	$16, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 5816(%eax)
	jmp	L358
L357:
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	movl	%eax, %ebx
	movl	20(%ebp), %eax
	leal	-4(%eax), %edx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%ebx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movl	5816(%eax), %edx
	movl	-32(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 5816(%eax)
L358:
	movl	$0, -12(%ebp)
	jmp	L359
L362:
	movl	$3, -40(%ebp)
	movl	8(%ebp), %eax
	movl	5816(%eax), %edx
	movl	$16, %eax
	subl	-40(%ebp), %eax
	cmpl	%eax, %edx
	jle	L360
	movl	-12(%ebp), %eax
	addl	$_bl_order, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	8(%ebp), %eax
	addl	$668, %edx
	movzwl	6(%eax,%edx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, -44(%ebp)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	-44(%ebp), %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%ebx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 20(%edx)
	addl	%ebx, %eax
	movl	%esi, %edx
	movb	%dl, (%eax)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	shrw	$8, %ax
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 20(%edx)
	addl	%ebx, %eax
	movl	%esi, %edx
	movb	%dl, (%eax)
	movl	-44(%ebp), %eax
	movzwl	%ax, %edx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	$16, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	%eax, %edx
	movl	-40(%ebp), %eax
	addl	%edx, %eax
	subl	$16, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 5816(%eax)
	jmp	L361
L360:
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	movl	%eax, %ebx
	movl	-12(%ebp), %eax
	addl	$_bl_order, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	8(%ebp), %eax
	addl	$668, %edx
	movzwl	6(%eax,%edx,4), %eax
	movzwl	%ax, %edx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%ebx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movl	5816(%eax), %edx
	movl	-40(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 5816(%eax)
L361:
	addl	$1, -12(%ebp)
L359:
	movl	-12(%ebp), %eax
	cmpl	20(%ebp), %eax
	jl	L362
	movl	12(%ebp), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	addl	$140, %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_send_tree
	movl	16(%ebp), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	addl	$2432, %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_send_tree
	nop
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
	.globl	__tr_stored_block
	.def	__tr_stored_block;	.scl	2;	.type	32;	.endef
__tr_stored_block:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	pushl	%ebx
	subl	$32, %esp
	movl	$3, -12(%ebp)
	movl	8(%ebp), %eax
	movl	5816(%eax), %edx
	movl	$16, %eax
	subl	-12(%ebp), %eax
	cmpl	%eax, %edx
	jle	L364
	movl	20(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	-16(%ebp), %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%ebx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 20(%edx)
	addl	%ebx, %eax
	movl	%esi, %edx
	movb	%dl, (%eax)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	shrw	$8, %ax
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 20(%edx)
	addl	%ebx, %eax
	movl	%esi, %edx
	movb	%dl, (%eax)
	movl	-16(%ebp), %eax
	movzwl	%ax, %edx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	$16, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	addl	%edx, %eax
	subl	$16, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 5816(%eax)
	jmp	L365
L364:
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	20(%ebp), %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%ebx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movl	5816(%eax), %edx
	movl	-12(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 5816(%eax)
L365:
	movl	8(%ebp), %eax
	movl	5800(%eax), %eax
	addl	$10, %eax
	andl	$-8, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 5800(%eax)
	movl	8(%ebp), %eax
	movl	5800(%eax), %eax
	movl	16(%ebp), %edx
	addl	$4, %edx
	sall	$3, %edx
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 5800(%eax)
	movl	$1, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_copy_block
	nop
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
	.globl	__tr_stored_type_only
	.def	__tr_stored_type_only;	.scl	2;	.type	32;	.endef
__tr_stored_type_only:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	pushl	%ebx
	subl	$32, %esp
	movl	$3, -12(%ebp)
	movl	8(%ebp), %eax
	movl	5816(%eax), %edx
	movl	$16, %eax
	subl	-12(%ebp), %eax
	cmpl	%eax, %edx
	jle	L367
	movl	$0, -16(%ebp)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	-16(%ebp), %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%ebx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 20(%edx)
	addl	%ebx, %eax
	movl	%esi, %edx
	movb	%dl, (%eax)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	shrw	$8, %ax
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 20(%edx)
	addl	%ebx, %eax
	movl	%esi, %edx
	movb	%dl, (%eax)
	movl	-16(%ebp), %eax
	movzwl	%ax, %edx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	$16, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	addl	%edx, %eax
	subl	$16, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 5816(%eax)
	jmp	L368
L367:
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movl	5816(%eax), %edx
	movl	-12(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 5816(%eax)
L368:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_bi_windup
	movl	8(%ebp), %eax
	movl	5800(%eax), %eax
	addl	$3, %eax
	andl	$-8, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 5800(%eax)
	nop
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
	.globl	__tr_align
	.def	__tr_align;	.scl	2;	.type	32;	.endef
__tr_align:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	pushl	%ebx
	subl	$48, %esp
	movl	$3, -12(%ebp)
	movl	8(%ebp), %eax
	movl	5816(%eax), %edx
	movl	$16, %eax
	subl	-12(%ebp), %eax
	cmpl	%eax, %edx
	jle	L370
	movl	$2, -16(%ebp)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	-16(%ebp), %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%ebx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 20(%edx)
	addl	%ebx, %eax
	movl	%esi, %edx
	movb	%dl, (%eax)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	shrw	$8, %ax
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 20(%edx)
	addl	%ebx, %eax
	movl	%esi, %edx
	movb	%dl, (%eax)
	movl	-16(%ebp), %eax
	movzwl	%ax, %edx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	$16, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	addl	%edx, %eax
	subl	$16, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 5816(%eax)
	jmp	L371
L370:
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	$2, %ebx
	movl	%eax, %ecx
	sall	%cl, %ebx
	movl	%ebx, %eax
	orl	%edx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movl	5816(%eax), %edx
	movl	-12(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 5816(%eax)
L371:
	movzwl	_static_ltree+1026, %eax
	movzwl	%ax, %eax
	movl	%eax, -20(%ebp)
	movl	8(%ebp), %eax
	movl	5816(%eax), %edx
	movl	$16, %eax
	subl	-20(%ebp), %eax
	cmpl	%eax, %edx
	jle	L372
	movzwl	_static_ltree+1024, %eax
	movzwl	%ax, %eax
	movl	%eax, -24(%ebp)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	-24(%ebp), %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%ebx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 20(%edx)
	addl	%ebx, %eax
	movl	%esi, %edx
	movb	%dl, (%eax)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	shrw	$8, %ax
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 20(%edx)
	addl	%ebx, %eax
	movl	%esi, %edx
	movb	%dl, (%eax)
	movl	-24(%ebp), %eax
	movzwl	%ax, %edx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	$16, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	addl	%edx, %eax
	subl	$16, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 5816(%eax)
	jmp	L373
L372:
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	movl	%eax, %ebx
	movzwl	_static_ltree+1024, %eax
	movzwl	%ax, %edx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%ebx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movl	5816(%eax), %edx
	movl	-20(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 5816(%eax)
L373:
	movl	8(%ebp), %eax
	movl	5800(%eax), %eax
	leal	10(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 5800(%eax)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_bi_flush
	movl	8(%ebp), %eax
	movl	5808(%eax), %eax
	leal	11(%eax), %edx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	$8, %eax
	jg	L374
	movl	$3, -28(%ebp)
	movl	8(%ebp), %eax
	movl	5816(%eax), %edx
	movl	$16, %eax
	subl	-28(%ebp), %eax
	cmpl	%eax, %edx
	jle	L375
	movl	$2, -32(%ebp)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	-32(%ebp), %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%ebx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 20(%edx)
	addl	%ebx, %eax
	movl	%esi, %edx
	movb	%dl, (%eax)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	shrw	$8, %ax
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 20(%edx)
	addl	%ebx, %eax
	movl	%esi, %edx
	movb	%dl, (%eax)
	movl	-32(%ebp), %eax
	movzwl	%ax, %edx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	$16, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	addl	%edx, %eax
	subl	$16, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 5816(%eax)
	jmp	L376
L375:
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	$2, %ebx
	movl	%eax, %ecx
	sall	%cl, %ebx
	movl	%ebx, %eax
	orl	%edx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movl	5816(%eax), %edx
	movl	-28(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 5816(%eax)
L376:
	movzwl	_static_ltree+1026, %eax
	movzwl	%ax, %eax
	movl	%eax, -36(%ebp)
	movl	8(%ebp), %eax
	movl	5816(%eax), %edx
	movl	$16, %eax
	subl	-36(%ebp), %eax
	cmpl	%eax, %edx
	jle	L377
	movzwl	_static_ltree+1024, %eax
	movzwl	%ax, %eax
	movl	%eax, -40(%ebp)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	-40(%ebp), %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%ebx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 20(%edx)
	addl	%ebx, %eax
	movl	%esi, %edx
	movb	%dl, (%eax)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	shrw	$8, %ax
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 20(%edx)
	addl	%ebx, %eax
	movl	%esi, %edx
	movb	%dl, (%eax)
	movl	-40(%ebp), %eax
	movzwl	%ax, %edx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	$16, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	addl	%edx, %eax
	subl	$16, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 5816(%eax)
	jmp	L378
L377:
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	movl	%eax, %ebx
	movzwl	_static_ltree+1024, %eax
	movzwl	%ax, %edx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%ebx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movl	5816(%eax), %edx
	movl	-36(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 5816(%eax)
L378:
	movl	8(%ebp), %eax
	movl	5800(%eax), %eax
	leal	10(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 5800(%eax)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_bi_flush
L374:
	movl	8(%ebp), %eax
	movl	$7, 5808(%eax)
	nop
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
	.globl	__tr_flush_block
	.def	__tr_flush_block;	.scl	2;	.type	32;	.endef
__tr_flush_block:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	pushl	%ebx
	subl	$48, %esp
	movl	$0, -20(%ebp)
	movl	8(%ebp), %eax
	movl	124(%eax), %eax
	testl	%eax, %eax
	jle	L380
	movl	8(%ebp), %eax
	movzbl	28(%eax), %eax
	cmpb	$2, %al
	jne	L381
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_set_data_type
L381:
	movl	8(%ebp), %eax
	addl	$2832, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_build_tree
	movl	8(%ebp), %eax
	addl	$2844, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_build_tree
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_build_bl_tree
	movl	%eax, -20(%ebp)
	movl	8(%ebp), %eax
	movl	5792(%eax), %eax
	addl	$10, %eax
	shrl	$3, %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	5796(%eax), %eax
	addl	$10, %eax
	shrl	$3, %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	cmpl	-12(%ebp), %eax
	ja	L382
	movl	-16(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	L382
L380:
	movl	16(%ebp), %eax
	addl	$5, %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, -12(%ebp)
L382:
	movl	16(%ebp), %eax
	addl	$4, %eax
	cmpl	%eax, -12(%ebp)
	jb	L383
	cmpl	$0, 12(%ebp)
	je	L383
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__tr_stored_block
	jmp	L384
L383:
	movl	-16(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jne	L385
	movl	$3, -32(%ebp)
	movl	8(%ebp), %eax
	movl	5816(%eax), %edx
	movl	$16, %eax
	subl	-32(%ebp), %eax
	cmpl	%eax, %edx
	jle	L386
	movl	20(%ebp), %eax
	addl	$2, %eax
	movl	%eax, -36(%ebp)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	-36(%ebp), %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%ebx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 20(%edx)
	addl	%ebx, %eax
	movl	%esi, %edx
	movb	%dl, (%eax)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	shrw	$8, %ax
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 20(%edx)
	addl	%ebx, %eax
	movl	%esi, %edx
	movb	%dl, (%eax)
	movl	-36(%ebp), %eax
	movzwl	%ax, %edx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	$16, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	addl	%edx, %eax
	subl	$16, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 5816(%eax)
	jmp	L387
L386:
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	movl	%eax, %ebx
	movl	20(%ebp), %eax
	leal	2(%eax), %edx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%ebx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movl	5816(%eax), %edx
	movl	-32(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 5816(%eax)
L387:
	movl	$_static_dtree, 8(%esp)
	movl	$_static_ltree, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_compress_block
	movl	8(%ebp), %eax
	movl	5800(%eax), %edx
	movl	8(%ebp), %eax
	movl	5796(%eax), %eax
	addl	%edx, %eax
	leal	3(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 5800(%eax)
	jmp	L384
L385:
	movl	$3, -24(%ebp)
	movl	8(%ebp), %eax
	movl	5816(%eax), %edx
	movl	$16, %eax
	subl	-24(%ebp), %eax
	cmpl	%eax, %edx
	jle	L388
	movl	20(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -28(%ebp)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	-28(%ebp), %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%ebx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 20(%edx)
	addl	%ebx, %eax
	movl	%esi, %edx
	movb	%dl, (%eax)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	shrw	$8, %ax
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 20(%edx)
	addl	%ebx, %eax
	movl	%esi, %edx
	movb	%dl, (%eax)
	movl	-28(%ebp), %eax
	movzwl	%ax, %edx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	$16, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	addl	%edx, %eax
	subl	$16, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 5816(%eax)
	jmp	L389
L388:
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	movl	%eax, %ebx
	movl	20(%ebp), %eax
	leal	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%ebx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movl	5816(%eax), %edx
	movl	-24(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 5816(%eax)
L389:
	movl	-20(%ebp), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %eax
	movl	2848(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	2836(%eax), %eax
	addl	$1, %eax
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_send_all_trees
	movl	8(%ebp), %eax
	leal	2432(%eax), %edx
	movl	8(%ebp), %eax
	addl	$140, %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_compress_block
	movl	8(%ebp), %eax
	movl	5800(%eax), %edx
	movl	8(%ebp), %eax
	movl	5792(%eax), %eax
	addl	%edx, %eax
	leal	3(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 5800(%eax)
L384:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_init_block
	cmpl	$0, 20(%ebp)
	je	L390
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_bi_windup
	movl	8(%ebp), %eax
	movl	5800(%eax), %eax
	leal	7(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 5800(%eax)
L390:
	movl	8(%ebp), %eax
	movl	5800(%eax), %eax
	shrl	$3, %eax
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
	.globl	__tr_tally
	.def	__tr_tally;	.scl	2;	.type	32;	.endef
__tr_tally:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$16, %esp
	movl	8(%ebp), %eax
	movl	5788(%eax), %edx
	movl	8(%ebp), %eax
	movl	5784(%eax), %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movl	12(%ebp), %edx
	movw	%dx, (%eax)
	movl	8(%ebp), %eax
	movl	5776(%eax), %ebx
	movl	8(%ebp), %eax
	movl	5784(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 5784(%edx)
	addl	%ebx, %eax
	movl	16(%ebp), %edx
	movb	%dl, (%eax)
	cmpl	$0, 12(%ebp)
	jne	L393
	movl	8(%ebp), %eax
	movl	16(%ebp), %edx
	addl	$32, %edx
	movzwl	12(%eax,%edx,4), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %eax
	movl	16(%ebp), %edx
	addl	$32, %edx
	movw	%cx, 12(%eax,%edx,4)
	jmp	L394
L393:
	movl	8(%ebp), %eax
	movl	5804(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 5804(%eax)
	subl	$1, 12(%ebp)
	movl	16(%ebp), %eax
	addl	$_length_code, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	addl	$257, %eax
	movl	8(%ebp), %edx
	leal	32(%eax), %ecx
	movzwl	12(%edx,%ecx,4), %edx
	leal	1(%edx), %ecx
	movl	8(%ebp), %edx
	addl	$32, %eax
	movw	%cx, 12(%edx,%eax,4)
	cmpl	$255, 12(%ebp)
	ja	L395
	movl	12(%ebp), %eax
	addl	$_dist_code, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	jmp	L396
L395:
	movl	12(%ebp), %eax
	shrl	$7, %eax
	addl	$256, %eax
	movzbl	_dist_code(%eax), %eax
	movzbl	%al, %eax
L396:
	movl	8(%ebp), %edx
	leal	608(%eax), %ecx
	movzwl	(%edx,%ecx,4), %edx
	leal	1(%edx), %ecx
	movl	8(%ebp), %edx
	addl	$608, %eax
	movw	%cx, (%edx,%eax,4)
L394:
	movl	8(%ebp), %eax
	movl	124(%eax), %eax
	cmpl	$2, %eax
	jle	L397
	movl	8(%ebp), %eax
	movl	5784(%eax), %eax
	andl	$4095, %eax
	testl	%eax, %eax
	jne	L397
	movl	8(%ebp), %eax
	movl	5784(%eax), %eax
	sall	$3, %eax
	movl	%eax, -8(%ebp)
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	84(%eax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -16(%ebp)
	movl	$0, -12(%ebp)
	jmp	L398
L399:
	movl	8(%ebp), %eax
	movl	-12(%ebp), %edx
	addl	$608, %edx
	movzwl	(%eax,%edx,4), %eax
	movzwl	%ax, %edx
	movl	-12(%ebp), %eax
	movl	_extra_dbits(,%eax,4), %eax
	addl	$5, %eax
	imull	%edx, %eax
	addl	%eax, -8(%ebp)
	addl	$1, -12(%ebp)
L398:
	cmpl	$29, -12(%ebp)
	jle	L399
	shrl	$3, -8(%ebp)
	movl	8(%ebp), %eax
	movl	5804(%eax), %edx
	movl	8(%ebp), %eax
	movl	5784(%eax), %eax
	shrl	%eax
	cmpl	%eax, %edx
	jnb	L397
	movl	-16(%ebp), %eax
	shrl	%eax
	cmpl	%eax, -8(%ebp)
	jnb	L397
	movl	$1, %eax
	jmp	L400
L397:
	movl	8(%ebp), %eax
	movl	5784(%eax), %edx
	movl	8(%ebp), %eax
	movl	5780(%eax), %eax
	subl	$1, %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
L400:
	addl	$16, %esp
	popl	%ebx
	popl	%ebp
	ret
	.def	_compress_block;	.scl	3;	.type	32;	.endef
_compress_block:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	pushl	%ebx
	subl	$80, %esp
	movl	$0, -12(%ebp)
	movl	8(%ebp), %eax
	movl	5784(%eax), %eax
	testl	%eax, %eax
	je	L402
L415:
	movl	8(%ebp), %eax
	movl	5788(%eax), %eax
	movl	-12(%ebp), %edx
	addl	%edx, %edx
	addl	%edx, %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	movl	5776(%eax), %ecx
	movl	-12(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -12(%ebp)
	addl	%ecx, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -20(%ebp)
	cmpl	$0, -16(%ebp)
	jne	L403
	movl	-20(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	movzwl	2(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -64(%ebp)
	movl	8(%ebp), %eax
	movl	5816(%eax), %edx
	movl	$16, %eax
	subl	-64(%ebp), %eax
	cmpl	%eax, %edx
	jle	L404
	movl	-20(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -68(%ebp)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	-68(%ebp), %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%ebx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 20(%edx)
	addl	%ebx, %eax
	movl	%esi, %edx
	movb	%dl, (%eax)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	shrw	$8, %ax
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 20(%edx)
	addl	%ebx, %eax
	movl	%esi, %edx
	movb	%dl, (%eax)
	movl	-68(%ebp), %eax
	movzwl	%ax, %edx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	$16, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	%eax, %edx
	movl	-64(%ebp), %eax
	addl	%edx, %eax
	subl	$16, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 5816(%eax)
	jmp	L405
L404:
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	movl	%eax, %ebx
	movl	-20(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%ebx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movl	5816(%eax), %edx
	movl	-64(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 5816(%eax)
	jmp	L405
L403:
	movl	-20(%ebp), %eax
	addl	$_length_code, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	addl	$257, %eax
	leal	0(,%eax,4), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	movzwl	2(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -28(%ebp)
	movl	8(%ebp), %eax
	movl	5816(%eax), %edx
	movl	$16, %eax
	subl	-28(%ebp), %eax
	cmpl	%eax, %edx
	jle	L406
	movl	-24(%ebp), %eax
	addl	$257, %eax
	leal	0(,%eax,4), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -32(%ebp)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	-32(%ebp), %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%ebx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 20(%edx)
	addl	%ebx, %eax
	movl	%esi, %edx
	movb	%dl, (%eax)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	shrw	$8, %ax
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 20(%edx)
	addl	%ebx, %eax
	movl	%esi, %edx
	movb	%dl, (%eax)
	movl	-32(%ebp), %eax
	movzwl	%ax, %edx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	$16, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	addl	%edx, %eax
	subl	$16, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 5816(%eax)
	jmp	L407
L406:
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	movl	%eax, %ebx
	movl	-24(%ebp), %eax
	addl	$257, %eax
	leal	0(,%eax,4), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%ebx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movl	5816(%eax), %edx
	movl	-28(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 5816(%eax)
L407:
	movl	-24(%ebp), %eax
	movl	_extra_lbits(,%eax,4), %eax
	movl	%eax, -36(%ebp)
	cmpl	$0, -36(%ebp)
	je	L408
	movl	-24(%ebp), %eax
	movl	_base_length(,%eax,4), %eax
	subl	%eax, -20(%ebp)
	movl	-36(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	8(%ebp), %eax
	movl	5816(%eax), %edx
	movl	$16, %eax
	subl	-40(%ebp), %eax
	cmpl	%eax, %edx
	jle	L409
	movl	-20(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	-44(%ebp), %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%ebx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 20(%edx)
	addl	%ebx, %eax
	movl	%esi, %edx
	movb	%dl, (%eax)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	shrw	$8, %ax
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 20(%edx)
	addl	%ebx, %eax
	movl	%esi, %edx
	movb	%dl, (%eax)
	movl	-44(%ebp), %eax
	movzwl	%ax, %edx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	$16, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	%eax, %edx
	movl	-40(%ebp), %eax
	addl	%edx, %eax
	subl	$16, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 5816(%eax)
	jmp	L408
L409:
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	-20(%ebp), %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%ebx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movl	5816(%eax), %edx
	movl	-40(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 5816(%eax)
L408:
	subl	$1, -16(%ebp)
	cmpl	$255, -16(%ebp)
	ja	L410
	movl	-16(%ebp), %eax
	addl	$_dist_code, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	jmp	L411
L410:
	movl	-16(%ebp), %eax
	shrl	$7, %eax
	addl	$256, %eax
	movzbl	_dist_code(%eax), %eax
	movzbl	%al, %eax
L411:
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	16(%ebp), %eax
	addl	%edx, %eax
	movzwl	2(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -48(%ebp)
	movl	8(%ebp), %eax
	movl	5816(%eax), %edx
	movl	$16, %eax
	subl	-48(%ebp), %eax
	cmpl	%eax, %edx
	jle	L412
	movl	-24(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	16(%ebp), %eax
	addl	%edx, %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -52(%ebp)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	-52(%ebp), %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%ebx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 20(%edx)
	addl	%ebx, %eax
	movl	%esi, %edx
	movb	%dl, (%eax)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	shrw	$8, %ax
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 20(%edx)
	addl	%ebx, %eax
	movl	%esi, %edx
	movb	%dl, (%eax)
	movl	-52(%ebp), %eax
	movzwl	%ax, %edx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	$16, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	addl	%edx, %eax
	subl	$16, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 5816(%eax)
	jmp	L413
L412:
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	movl	%eax, %ebx
	movl	-24(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	16(%ebp), %eax
	addl	%edx, %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%ebx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movl	5816(%eax), %edx
	movl	-48(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 5816(%eax)
L413:
	movl	-24(%ebp), %eax
	movl	_extra_dbits(,%eax,4), %eax
	movl	%eax, -36(%ebp)
	cmpl	$0, -36(%ebp)
	je	L405
	movl	-24(%ebp), %eax
	movl	_base_dist(,%eax,4), %eax
	subl	%eax, -16(%ebp)
	movl	-36(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	8(%ebp), %eax
	movl	5816(%eax), %edx
	movl	$16, %eax
	subl	-56(%ebp), %eax
	cmpl	%eax, %edx
	jle	L414
	movl	-16(%ebp), %eax
	movl	%eax, -60(%ebp)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	-60(%ebp), %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%ebx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 20(%edx)
	addl	%ebx, %eax
	movl	%esi, %edx
	movb	%dl, (%eax)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	shrw	$8, %ax
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 20(%edx)
	addl	%ebx, %eax
	movl	%esi, %edx
	movb	%dl, (%eax)
	movl	-60(%ebp), %eax
	movzwl	%ax, %edx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	$16, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	%eax, %edx
	movl	-56(%ebp), %eax
	addl	%edx, %eax
	subl	$16, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 5816(%eax)
	jmp	L405
L414:
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %edx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	-16(%ebp), %ebx
	movl	%eax, %ecx
	sall	%cl, %ebx
	movl	%ebx, %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movl	5816(%eax), %edx
	movl	-56(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 5816(%eax)
L405:
	movl	8(%ebp), %eax
	movl	5784(%eax), %eax
	cmpl	%eax, -12(%ebp)
	jb	L415
L402:
	movl	12(%ebp), %eax
	addl	$1024, %eax
	movzwl	2(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -72(%ebp)
	movl	8(%ebp), %eax
	movl	5816(%eax), %edx
	movl	$16, %eax
	subl	-72(%ebp), %eax
	cmpl	%eax, %edx
	jle	L416
	movl	12(%ebp), %eax
	addl	$1024, %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -76(%ebp)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	-76(%ebp), %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%ebx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 20(%edx)
	addl	%ebx, %eax
	movl	%esi, %edx
	movb	%dl, (%eax)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	shrw	$8, %ax
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 20(%edx)
	addl	%ebx, %eax
	movl	%esi, %edx
	movb	%dl, (%eax)
	movl	-76(%ebp), %eax
	movzwl	%ax, %edx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	$16, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	%eax, %edx
	movl	-72(%ebp), %eax
	addl	%edx, %eax
	subl	$16, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 5816(%eax)
	jmp	L417
L416:
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	movl	%eax, %ebx
	movl	12(%ebp), %eax
	addl	$1024, %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%ebx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movl	5816(%eax), %edx
	movl	-72(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 5816(%eax)
L417:
	movl	12(%ebp), %eax
	addl	$1024, %eax
	movzwl	2(%eax), %eax
	movzwl	%ax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 5808(%eax)
	nop
	addl	$80, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
	.def	_set_data_type;	.scl	3;	.type	32;	.endef
_set_data_type:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$16, %esp
	movl	$0, -4(%ebp)
	movl	$0, -8(%ebp)
	movl	$0, -12(%ebp)
	jmp	L419
L420:
	movl	-4(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -4(%ebp)
	movl	8(%ebp), %edx
	addl	$32, %eax
	movzwl	12(%edx,%eax,4), %eax
	movzwl	%ax, %eax
	addl	%eax, -12(%ebp)
L419:
	cmpl	$6, -4(%ebp)
	jle	L420
	jmp	L421
L422:
	movl	-4(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -4(%ebp)
	movl	8(%ebp), %edx
	addl	$32, %eax
	movzwl	12(%edx,%eax,4), %eax
	movzwl	%ax, %eax
	addl	%eax, -8(%ebp)
L421:
	cmpl	$127, -4(%ebp)
	jle	L422
	jmp	L423
L424:
	movl	-4(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -4(%ebp)
	movl	8(%ebp), %edx
	addl	$32, %eax
	movzwl	12(%edx,%eax,4), %eax
	movzwl	%ax, %eax
	addl	%eax, -12(%ebp)
L423:
	cmpl	$255, -4(%ebp)
	jle	L424
	movl	-8(%ebp), %eax
	shrl	$2, %eax
	cmpl	%eax, -12(%ebp)
	setbe	%al
	movzbl	%al, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movb	%dl, 28(%eax)
	nop
	leave
	ret
	.def	_bi_reverse;	.scl	3;	.type	32;	.endef
_bi_reverse:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	movl	$0, %ebx
L426:
	movl	8(%ebp), %eax
	andl	$1, %eax
	orl	%eax, %ebx
	shrl	8(%ebp)
	addl	%ebx, %ebx
	subl	$1, 12(%ebp)
	cmpl	$0, 12(%ebp)
	jg	L426
	movl	%ebx, %eax
	shrl	%eax
	popl	%ebx
	popl	%ebp
	ret
	.def	_bi_flush;	.scl	3;	.type	32;	.endef
_bi_flush:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	pushl	%ebx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	cmpl	$16, %eax
	jne	L429
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 20(%edx)
	addl	%ebx, %eax
	movl	%esi, %edx
	movb	%dl, (%eax)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	shrw	$8, %ax
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 20(%edx)
	addl	%ebx, %eax
	movl	%esi, %edx
	movb	%dl, (%eax)
	movl	8(%ebp), %eax
	movw	$0, 5812(%eax)
	movl	8(%ebp), %eax
	movl	$0, 5816(%eax)
	jmp	L431
L429:
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	cmpl	$7, %eax
	jle	L431
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 20(%edx)
	addl	%ebx, %eax
	movl	%esi, %edx
	movb	%dl, (%eax)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	shrw	$8, %ax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 5812(%eax)
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	leal	-8(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 5816(%eax)
L431:
	nop
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
	.def	_bi_windup;	.scl	3;	.type	32;	.endef
_bi_windup:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	pushl	%ebx
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	cmpl	$8, %eax
	jle	L433
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 20(%edx)
	addl	%ebx, %eax
	movl	%esi, %edx
	movb	%dl, (%eax)
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %eax
	shrw	$8, %ax
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 20(%edx)
	addl	%ebx, %eax
	movl	%esi, %edx
	movb	%dl, (%eax)
	jmp	L434
L433:
	movl	8(%ebp), %eax
	movl	5816(%eax), %eax
	testl	%eax, %eax
	jle	L434
	movl	8(%ebp), %eax
	movzwl	5812(%eax), %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 20(%edx)
	addl	%ebx, %eax
	movl	%esi, %edx
	movb	%dl, (%eax)
L434:
	movl	8(%ebp), %eax
	movw	$0, 5812(%eax)
	movl	8(%ebp), %eax
	movl	$0, 5816(%eax)
	nop
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
	.def	_copy_block;	.scl	3;	.type	32;	.endef
_copy_block:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	pushl	%ebx
	subl	$16, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_bi_windup
	movl	8(%ebp), %eax
	movl	$8, 5808(%eax)
	cmpl	$0, 20(%ebp)
	je	L436
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 20(%edx)
	addl	%ebx, %eax
	movl	16(%ebp), %edx
	movb	%dl, (%eax)
	movl	16(%ebp), %eax
	shrw	$8, %ax
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 20(%edx)
	addl	%ebx, %eax
	movl	%esi, %edx
	movb	%dl, (%eax)
	movl	16(%ebp), %eax
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 20(%edx)
	addl	%ebx, %eax
	movl	%esi, %edx
	notl	%edx
	movb	%dl, (%eax)
	movl	16(%ebp), %eax
	notl	%eax
	shrw	$8, %ax
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 20(%edx)
	addl	%ebx, %eax
	movl	%esi, %edx
	movb	%dl, (%eax)
L436:
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	addl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_memcpy
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, %edx
	movl	16(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
	nop
	addl	$16, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
	.globl	_inflateReset
	.def	_inflateReset;	.scl	2;	.type	32;	.endef
_inflateReset:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	cmpl	$0, 8(%ebp)
	je	L438
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	jne	L439
L438:
	movl	$-2, %eax
	jmp	L443
L439:
	movl	8(%ebp), %eax
	movl	$0, 20(%eax)
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	8(%ebp), %eax
	movl	$0, 24(%eax)
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	L441
	movl	$7, %edx
	jmp	L442
L441:
	movl	$0, %edx
L442:
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	20(%eax), %eax
	leal	-12(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_inflate_blocks_reset
	movl	$0, %eax
L443:
	leave
	ret
	.globl	_inflateEnd
	.def	_inflateEnd;	.scl	2;	.type	32;	.endef
_inflateEnd:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	cmpl	$0, 8(%ebp)
	je	L445
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	L445
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	jne	L446
L445:
	movl	$-2, %eax
	jmp	L449
L446:
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	L448
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	20(%eax), %eax
	leal	-12(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_inflate_blocks_free
L448:
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	8(%ebp), %edx
	movl	28(%edx), %ecx
	movl	8(%ebp), %edx
	movl	40(%edx), %edx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
	movl	8(%ebp), %eax
	movl	$0, 28(%eax)
	movl	$0, %eax
L449:
	leave
	ret
	.globl	_inflateInit2_
	.def	_inflateInit2_;	.scl	2;	.type	32;	.endef
_inflateInit2_:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$20, %esp
	cmpl	$0, 16(%ebp)
	je	L451
	movl	16(%ebp), %eax
	movzbl	(%eax), %eax
	movl	$49, %edx
	cmpb	%dl, %al
	jne	L451
	cmpl	$56, 20(%ebp)
	je	L452
L451:
	movl	$-6, %eax
	jmp	L453
L452:
	cmpl	$0, 8(%ebp)
	jne	L454
	movl	$-2, %eax
	jmp	L453
L454:
	movl	8(%ebp), %eax
	movl	$0, 24(%eax)
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	jne	L455
	movl	8(%ebp), %eax
	movl	$_zcalloc, 32(%eax)
	movl	8(%ebp), %eax
	movl	$0, 40(%eax)
L455:
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	jne	L456
	movl	8(%ebp), %eax
	movl	$_zcfree, 36(%eax)
L456:
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	movl	8(%ebp), %edx
	movl	40(%edx), %edx
	movl	$24, 8(%esp)
	movl	$1, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
	movl	8(%ebp), %edx
	movl	%eax, 28(%edx)
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	jne	L457
	movl	$-4, %eax
	jmp	L453
L457:
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	$0, 20(%eax)
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	$0, 12(%eax)
	cmpl	$0, 12(%ebp)
	jns	L458
	negl	12(%ebp)
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	$1, 12(%eax)
L458:
	cmpl	$7, 12(%ebp)
	jle	L459
	cmpl	$15, 12(%ebp)
	jle	L460
L459:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_inflateEnd
	movl	$-2, %eax
	jmp	L453
L460:
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	12(%ebp), %edx
	movl	%edx, 16(%eax)
	movl	12(%ebp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	L461
	movl	$_adler32, %ecx
	jmp	L462
L461:
	movl	$0, %ecx
L462:
	movl	8(%ebp), %eax
	movl	28(%eax), %ebx
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_inflate_blocks_new
	movl	%eax, 20(%ebx)
	movl	20(%ebx), %eax
	testl	%eax, %eax
	jne	L463
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_inflateEnd
	movl	$-4, %eax
	jmp	L453
L463:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_inflateReset
	movl	$0, %eax
L453:
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
	.globl	_inflateInit_
	.def	_inflateInit_;	.scl	2;	.type	32;	.endef
_inflateInit_:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$15, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_inflateInit2_
	leave
	ret
	.section .rdata,"dr"
LC9:
	.ascii "unknown compression method\0"
LC10:
	.ascii "invalid window size\0"
LC11:
	.ascii "incorrect header check\0"
LC12:
	.ascii "incorrect data check\0"
LC13:
	.ascii "need more for packet flush\0"
	.text
	.globl	_inflate
	.def	_inflate;	.scl	2;	.type	32;	.endef
_inflate:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	cmpl	$0, 8(%ebp)
	je	L467
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	L467
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L467
	cmpl	$0, 12(%ebp)
	jns	L468
L467:
	movl	$-2, %eax
	jmp	L469
L468:
	movl	$-5, -12(%ebp)
L507:
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	(%eax), %eax
	cmpl	$13, %eax
	ja	L470
	movl	L472(,%eax,4), %eax
	jmp	*%eax
	.section .rdata,"dr"
	.align 4
L472:
	.long	L485
	.long	L484
	.long	L483
	.long	L482
	.long	L481
	.long	L480
	.long	L479
	.long	L478
	.long	L477
	.long	L476
	.long	L475
	.long	L474
	.long	L473
	.long	L471
	.text
L485:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	L509
	movl	$0, -12(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, (%edx)
	movzbl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movzbl	%dl, %edx
	movl	%edx, 4(%eax)
	movl	4(%eax), %eax
	andl	$15, %eax
	cmpl	$8, %eax
	je	L488
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	$13, (%eax)
	movl	8(%ebp), %eax
	movl	$LC9, 24(%eax)
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	$5, 4(%eax)
	jmp	L489
L488:
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	4(%eax), %eax
	shrl	$4, %eax
	leal	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	L490
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	$13, (%eax)
	movl	8(%ebp), %eax
	movl	$LC10, 24(%eax)
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	$5, 4(%eax)
	jmp	L489
L490:
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	$1, (%eax)
L484:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	L510
	movl	$0, -12(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, (%edx)
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	4(%eax), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	leal	(%edx,%eax), %ecx
	movl	$138547333, %edx
	movl	%ecx, %eax
	mull	%edx
	movl	%ecx, %eax
	subl	%edx, %eax
	shrl	%eax
	addl	%edx, %eax
	shrl	$4, %eax
	movl	%eax, %edx
	sall	$5, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	testl	%eax, %eax
	je	L492
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	$13, (%eax)
	movl	8(%ebp), %eax
	movl	$LC11, 24(%eax)
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	$5, 4(%eax)
	jmp	L489
L492:
	movl	-16(%ebp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	jne	L493
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	$7, (%eax)
	jmp	L489
L493:
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	$2, (%eax)
L483:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	L511
	movl	$0, -12(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, (%edx)
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	sall	$24, %edx
	movl	%edx, 8(%eax)
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	$3, (%eax)
L482:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	L512
	movl	$0, -12(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, (%edx)
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	movl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	addl	%ecx, %edx
	movl	%edx, 8(%eax)
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	$4, (%eax)
L481:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	L513
	movl	$0, -12(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, (%edx)
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	addl	%ecx, %edx
	movl	%edx, 8(%eax)
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	$5, (%eax)
L480:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	L514
	movl	$0, -12(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, (%edx)
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	addl	%ecx, %edx
	movl	%edx, 8(%eax)
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 48(%eax)
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	$6, (%eax)
	movl	$2, %eax
	jmp	L469
L479:
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	$13, (%eax)
	movl	8(%ebp), %eax
	movl	$LC0, 24(%eax)
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	$0, 4(%eax)
	movl	$-2, %eax
	jmp	L469
L478:
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	20(%eax), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_inflate_blocks
	movl	%eax, -12(%ebp)
	cmpl	$2, 12(%ebp)
	jne	L498
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	L498
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	L498
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	_inflate_packet_flush
	movl	%eax, -12(%ebp)
L498:
	cmpl	$-3, -12(%ebp)
	jne	L499
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	$13, (%eax)
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	$0, 4(%eax)
	jmp	L489
L499:
	cmpl	$1, -12(%ebp)
	je	L500
	movl	-12(%ebp), %eax
	jmp	L469
L500:
	movl	$0, -12(%ebp)
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	leal	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	20(%eax), %eax
	movl	%edx, 8(%esp)
	movl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_inflate_blocks_reset
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	L501
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	$12, (%eax)
	jmp	L489
L501:
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	$8, (%eax)
L477:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	L515
	movl	$0, -12(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, (%edx)
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	sall	$24, %edx
	movl	%edx, 8(%eax)
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	$9, (%eax)
L476:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	L516
	movl	$0, -12(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, (%edx)
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	movl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	addl	%ecx, %edx
	movl	%edx, 8(%eax)
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	$10, (%eax)
L475:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	L517
	movl	$0, -12(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, (%edx)
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	addl	%ecx, %edx
	movl	%edx, 8(%eax)
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	$11, (%eax)
L474:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	L518
	movl	$0, -12(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, (%edx)
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	addl	%ecx, %edx
	movl	%edx, 8(%eax)
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	je	L506
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	$13, (%eax)
	movl	8(%ebp), %eax
	movl	$LC12, 24(%eax)
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	$5, 4(%eax)
	jmp	L489
L506:
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	$12, (%eax)
L473:
	movl	$1, %eax
	jmp	L469
L471:
	movl	$-3, %eax
	jmp	L469
L470:
	movl	$-2, %eax
	jmp	L469
L489:
	jmp	L507
L509:
	nop
	jmp	L487
L510:
	nop
	jmp	L487
L511:
	nop
	jmp	L487
L512:
	nop
	jmp	L487
L513:
	nop
	jmp	L487
L514:
	nop
	jmp	L487
L515:
	nop
	jmp	L487
L516:
	nop
	jmp	L487
L517:
	nop
	jmp	L487
L518:
	nop
L487:
	cmpl	$2, 12(%ebp)
	je	L508
	movl	-12(%ebp), %eax
	jmp	L469
L508:
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	$13, (%eax)
	movl	8(%ebp), %eax
	movl	$LC13, 24(%eax)
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	$0, 4(%eax)
	movl	$-3, %eax
L469:
	leave
	ret
	.globl	_inflateSetDictionary
	.def	_inflateSetDictionary;	.scl	2;	.type	32;	.endef
_inflateSetDictionary:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	16(%ebp), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, 8(%ebp)
	je	L520
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	L520
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	(%eax), %eax
	cmpl	$6, %eax
	je	L521
L520:
	movl	$-2, %eax
	jmp	L522
L521:
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	_adler32
	movl	8(%ebp), %edx
	movl	48(%edx), %edx
	cmpl	%edx, %eax
	je	L523
	movl	$-3, %eax
	jmp	L522
L523:
	movl	8(%ebp), %eax
	movl	$1, 48(%eax)
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	16(%eax), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	cmpl	%eax, -12(%ebp)
	jb	L524
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	16(%eax), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	subl	$1, %eax
	movl	%eax, -12(%ebp)
	movl	16(%ebp), %eax
	subl	-12(%ebp), %eax
	addl	%eax, 12(%ebp)
L524:
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	20(%eax), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_inflate_set_dictionary
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	$7, (%eax)
	movl	$0, %eax
L522:
	leave
	ret
	.globl	_inflateIncomp
	.def	_inflateIncomp;	.scl	2;	.type	32;	.endef
_inflateIncomp:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	(%eax), %eax
	cmpl	$7, %eax
	je	L526
	movl	$-3, %eax
	jmp	L527
L526:
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	20(%eax), %eax
	movl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_inflate_addhistory
L527:
	leave
	ret
	.globl	_inflateSync
	.def	_inflateSync;	.scl	2;	.type	32;	.endef
_inflateSync:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$56, %esp
	cmpl	$0, 8(%ebp)
	je	L529
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	jne	L530
L529:
	movl	$-2, %eax
	jmp	L531
L530:
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	(%eax), %eax
	cmpl	$13, %eax
	je	L532
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	$13, (%eax)
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	$0, 4(%eax)
L532:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jne	L533
	movl	$-5, %eax
	jmp	L531
L533:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	L534
L541:
	movl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	cmpl	$1, -20(%ebp)
	ja	L535
	movl	$0, %edx
	jmp	L536
L535:
	movl	$255, %edx
L536:
	cmpl	%eax, %edx
	jne	L537
	addl	$1, -20(%ebp)
	jmp	L538
L537:
	movl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	L539
	movl	$0, -20(%ebp)
	jmp	L538
L539:
	movl	$4, %eax
	subl	-20(%ebp), %eax
	movl	%eax, -20(%ebp)
L538:
	addl	$1, -16(%ebp)
	subl	$1, -12(%ebp)
L534:
	cmpl	$0, -12(%ebp)
	je	L540
	cmpl	$3, -20(%ebp)
	jbe	L541
L540:
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	-16(%ebp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	-20(%ebp), %edx
	movl	%edx, 4(%eax)
	cmpl	$4, -20(%ebp)
	je	L542
	movl	$-3, %eax
	jmp	L531
L542:
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_inflateReset
	movl	8(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, 8(%eax)
	movl	8(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 20(%eax)
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	$7, (%eax)
	movl	$0, %eax
L531:
	leave
	ret
	.section .rdata,"dr"
	.align 32
_border:
	.long	16
	.long	17
	.long	18
	.long	0
	.long	8
	.long	7
	.long	9
	.long	6
	.long	10
	.long	5
	.long	11
	.long	4
	.long	12
	.long	3
	.long	13
	.long	2
	.long	14
	.long	1
	.long	15
	.text
	.globl	_inflate_blocks_reset
	.def	_inflate_blocks_reset;	.scl	2;	.type	32;	.endef
_inflate_blocks_reset:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	L544
	movl	8(%ebp), %eax
	movl	56(%eax), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
L544:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	L545
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$5, %eax
	jne	L546
L545:
	movl	12(%ebp), %eax
	movl	36(%eax), %eax
	movl	8(%ebp), %edx
	movl	12(%edx), %ecx
	movl	12(%ebp), %edx
	movl	40(%edx), %edx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
L546:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$6, %eax
	jne	L547
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_inflate_codes_free
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_inflate_trees_free
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_inflate_trees_free
L547:
	movl	8(%ebp), %eax
	movl	$0, (%eax)
	movl	8(%ebp), %eax
	movl	$0, 28(%eax)
	movl	8(%ebp), %eax
	movl	$0, 32(%eax)
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 48(%eax)
	movl	8(%ebp), %eax
	movl	48(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 44(%eax)
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	L549
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	*%eax
	movl	8(%ebp), %edx
	movl	%eax, 56(%edx)
	movl	8(%ebp), %eax
	movl	56(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 48(%eax)
L549:
	nop
	leave
	ret
	.globl	_inflate_blocks_new
	.def	_inflate_blocks_new;	.scl	2;	.type	32;	.endef
_inflate_blocks_new:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	movl	8(%ebp), %edx
	movl	40(%edx), %edx
	movl	$60, 8(%esp)
	movl	$1, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jne	L551
	movl	-12(%ebp), %eax
	jmp	L552
L551:
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	movl	8(%ebp), %edx
	movl	40(%edx), %edx
	movl	16(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	$1, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
	movl	-12(%ebp), %edx
	movl	%eax, 36(%edx)
	movl	-12(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	jne	L553
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	8(%ebp), %edx
	movl	40(%edx), %edx
	movl	-12(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
	movl	$0, %eax
	jmp	L552
L553:
	movl	-12(%ebp), %eax
	movl	36(%eax), %edx
	movl	16(%ebp), %eax
	addl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 40(%eax)
	movl	-12(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 52(%eax)
	movl	-12(%ebp), %eax
	movl	$0, (%eax)
	movl	-12(%ebp), %eax
	addl	$56, %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_inflate_blocks_reset
	movl	-12(%ebp), %eax
L552:
	leave
	ret
	.section .rdata,"dr"
LC14:
	.ascii "invalid block type\0"
LC15:
	.ascii "invalid stored block lengths\0"
	.align 4
LC16:
	.ascii "too many length or distance symbols\0"
LC17:
	.ascii "invalid bit length repeat\0"
	.text
	.globl	_inflate_blocks
	.def	_inflate_blocks;	.scl	2;	.type	32;	.endef
_inflate_blocks:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	pushl	%ebx
	subl	$112, %esp
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	%eax, -32(%ebp)
	jnb	L555
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	subl	-32(%ebp), %eax
	subl	$1, %eax
	jmp	L556
L555:
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	subl	-32(%ebp), %eax
L556:
	movl	%eax, -36(%ebp)
L655:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$9, %eax
	ja	L557
	movl	L559(,%eax,4), %eax
	jmp	*%eax
	.section .rdata,"dr"
	.align 4
L559:
	.long	L569
	.long	L581
	.long	L566
	.long	L605
	.long	L613
	.long	L623
	.long	L562
	.long	L561
	.long	L560
	.long	L558
	.text
L573:
	cmpl	$0, -28(%ebp)
	je	L570
	movl	$0, 16(%ebp)
	jmp	L656
L570:
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 32(%eax)
	movl	8(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, 28(%eax)
	movl	12(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	-24(%ebp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	12(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	%edx, 48(%eax)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_inflate_flush
	jmp	L572
L656:
	subl	$1, -28(%ebp)
	movl	-24(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -24(%ebp)
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	-20(%ebp), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%eax, -16(%ebp)
	addl	$8, -20(%ebp)
L569:
	cmpl	$2, -20(%ebp)
	jbe	L573
	movl	-16(%ebp), %eax
	andl	$7, %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 24(%eax)
	movl	-12(%ebp), %eax
	shrl	%eax
	cmpl	$3, %eax
	je	L574
	cmpl	$3, %eax
	ja	L662
	cmpl	$2, %eax
	je	L576
	cmpl	$2, %eax
	ja	L662
	testl	%eax, %eax
	je	L577
	cmpl	$1, %eax
	je	L578
	jmp	L662
L577:
	shrl	$3, -16(%ebp)
	subl	$3, -20(%ebp)
	movl	-20(%ebp), %eax
	andl	$7, %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	shrl	%cl, -16(%ebp)
	movl	-12(%ebp), %eax
	subl	%eax, -20(%ebp)
	movl	8(%ebp), %eax
	movl	$1, (%eax)
	jmp	L575
L578:
	leal	-72(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-68(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	_inflate_trees_fixed
	movl	-72(%ebp), %ebx
	movl	-68(%ebp), %ecx
	movl	-64(%ebp), %edx
	movl	-60(%ebp), %eax
	movl	12(%ebp), %esi
	movl	%esi, 16(%esp)
	movl	%ebx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_inflate_codes_new
	movl	8(%ebp), %edx
	movl	%eax, 12(%edx)
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	L579
	movl	$-4, 16(%ebp)
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 32(%eax)
	movl	8(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, 28(%eax)
	movl	12(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	-24(%ebp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	12(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	%edx, 48(%eax)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_inflate_flush
	jmp	L572
L579:
	movl	8(%ebp), %eax
	movl	$0, 4(%eax)
	movl	8(%ebp), %eax
	movl	$0, 8(%eax)
	shrl	$3, -16(%ebp)
	subl	$3, -20(%ebp)
	movl	8(%ebp), %eax
	movl	$6, (%eax)
	jmp	L575
L576:
	shrl	$3, -16(%ebp)
	subl	$3, -20(%ebp)
	movl	8(%ebp), %eax
	movl	$3, (%eax)
	jmp	L575
L574:
	shrl	$3, -16(%ebp)
	subl	$3, -20(%ebp)
	movl	8(%ebp), %eax
	movl	$9, (%eax)
	movl	12(%ebp), %eax
	movl	$LC14, 24(%eax)
	movl	$-3, 16(%ebp)
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 32(%eax)
	movl	8(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, 28(%eax)
	movl	12(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	-24(%ebp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	12(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	%edx, 48(%eax)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_inflate_flush
	jmp	L572
L575:
	jmp	L662
L584:
	cmpl	$0, -28(%ebp)
	je	L582
	movl	$0, 16(%ebp)
	jmp	L657
L582:
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 32(%eax)
	movl	8(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, 28(%eax)
	movl	12(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	-24(%ebp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	12(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	%edx, 48(%eax)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_inflate_flush
	jmp	L572
L657:
	subl	$1, -28(%ebp)
	movl	-24(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -24(%ebp)
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	-20(%ebp), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%eax, -16(%ebp)
	addl	$8, -20(%ebp)
L581:
	cmpl	$31, -20(%ebp)
	jbe	L584
	movl	-16(%ebp), %eax
	notl	%eax
	shrl	$16, %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	je	L585
	movl	8(%ebp), %eax
	movl	$9, (%eax)
	movl	12(%ebp), %eax
	movl	$LC15, 24(%eax)
	movl	$-3, 16(%ebp)
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 32(%eax)
	movl	8(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, 28(%eax)
	movl	12(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	-24(%ebp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	12(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	%edx, 48(%eax)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_inflate_flush
	jmp	L572
L585:
	movl	-16(%ebp), %eax
	movzwl	%ax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	$0, -20(%ebp)
	movl	$0, -16(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	L586
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	L587
	movl	$7, %eax
	jmp	L589
L587:
	movl	$0, %eax
	jmp	L589
L586:
	movl	$2, %eax
L589:
	movl	8(%ebp), %edx
	movl	%eax, (%edx)
	jmp	L580
L566:
	cmpl	$0, -28(%ebp)
	jne	L590
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 32(%eax)
	movl	8(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, 28(%eax)
	movl	12(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	-24(%ebp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	12(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	%edx, 48(%eax)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_inflate_flush
	jmp	L572
L590:
	cmpl	$0, -36(%ebp)
	jne	L591
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	cmpl	%eax, -32(%ebp)
	jne	L592
	movl	8(%ebp), %eax
	movl	44(%eax), %edx
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	cmpl	%eax, %edx
	je	L592
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	%eax, -32(%ebp)
	jnb	L593
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	subl	-32(%ebp), %eax
	subl	$1, %eax
	jmp	L594
L593:
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	subl	-32(%ebp), %eax
L594:
	movl	%eax, -36(%ebp)
L592:
	cmpl	$0, -36(%ebp)
	jne	L591
	movl	8(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	%edx, 48(%eax)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_inflate_flush
	movl	%eax, 16(%ebp)
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	%eax, -32(%ebp)
	jnb	L595
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	subl	-32(%ebp), %eax
	subl	$1, %eax
	jmp	L596
L595:
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	subl	-32(%ebp), %eax
L596:
	movl	%eax, -36(%ebp)
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	cmpl	%eax, -32(%ebp)
	jne	L597
	movl	8(%ebp), %eax
	movl	44(%eax), %edx
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	cmpl	%eax, %edx
	je	L597
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	%eax, -32(%ebp)
	jnb	L598
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	subl	-32(%ebp), %eax
	subl	$1, %eax
	jmp	L599
L598:
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	subl	-32(%ebp), %eax
L599:
	movl	%eax, -36(%ebp)
L597:
	cmpl	$0, -36(%ebp)
	jne	L591
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 32(%eax)
	movl	8(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, 28(%eax)
	movl	12(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	-24(%ebp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	12(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	%edx, 48(%eax)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_inflate_flush
	jmp	L572
L591:
	movl	$0, 16(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jbe	L600
	movl	-28(%ebp), %eax
	movl	%eax, -12(%ebp)
L600:
	movl	-12(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jbe	L601
	movl	-36(%ebp), %eax
	movl	%eax, -12(%ebp)
L601:
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_memcpy
	movl	-12(%ebp), %eax
	addl	%eax, -24(%ebp)
	movl	-12(%ebp), %eax
	subl	%eax, -28(%ebp)
	movl	-12(%ebp), %eax
	addl	%eax, -32(%ebp)
	movl	-12(%ebp), %eax
	subl	%eax, -36(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	subl	-12(%ebp), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	L663
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	L603
	movl	$7, %edx
	jmp	L604
L603:
	movl	$0, %edx
L604:
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	jmp	L580
L608:
	cmpl	$0, -28(%ebp)
	je	L606
	movl	$0, 16(%ebp)
	jmp	L658
L606:
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 32(%eax)
	movl	8(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, 28(%eax)
	movl	12(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	-24(%ebp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	12(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	%edx, 48(%eax)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_inflate_flush
	jmp	L572
L658:
	subl	$1, -28(%ebp)
	movl	-24(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -24(%ebp)
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	-20(%ebp), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%eax, -16(%ebp)
	addl	$8, -20(%ebp)
L605:
	cmpl	$13, -20(%ebp)
	jbe	L608
	movl	-16(%ebp), %eax
	andl	$16383, %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	-12(%ebp), %eax
	andl	$31, %eax
	cmpl	$29, %eax
	ja	L609
	movl	-12(%ebp), %eax
	shrl	$5, %eax
	andl	$31, %eax
	cmpl	$29, %eax
	jbe	L610
L609:
	movl	8(%ebp), %eax
	movl	$9, (%eax)
	movl	12(%ebp), %eax
	movl	$LC16, 24(%eax)
	movl	$-3, 16(%ebp)
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 32(%eax)
	movl	8(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, 28(%eax)
	movl	12(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	-24(%ebp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	12(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	%edx, 48(%eax)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_inflate_flush
	jmp	L572
L610:
	movl	-12(%ebp), %eax
	andl	$31, %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	shrl	$5, %eax
	andl	$31, %eax
	addl	%edx, %eax
	addl	$258, %eax
	movl	%eax, -12(%ebp)
	cmpl	$18, -12(%ebp)
	ja	L611
	movl	$19, -12(%ebp)
L611:
	movl	12(%ebp), %eax
	movl	32(%eax), %eax
	movl	12(%ebp), %edx
	movl	40(%edx), %edx
	movl	$4, 8(%esp)
	movl	-12(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
	movl	8(%ebp), %edx
	movl	%eax, 12(%edx)
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	L612
	movl	$-4, 16(%ebp)
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 32(%eax)
	movl	8(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, 28(%eax)
	movl	12(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	-24(%ebp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	12(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	%edx, 48(%eax)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_inflate_flush
	jmp	L572
L612:
	shrl	$14, -16(%ebp)
	subl	$14, -20(%ebp)
	movl	8(%ebp), %eax
	movl	$0, 8(%eax)
	movl	8(%ebp), %eax
	movl	$4, (%eax)
	jmp	L613
L617:
	cmpl	$0, -28(%ebp)
	je	L615
	movl	$0, 16(%ebp)
	jmp	L659
L615:
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 32(%eax)
	movl	8(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, 28(%eax)
	movl	12(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	-24(%ebp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	12(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	%edx, 48(%eax)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_inflate_flush
	jmp	L572
L659:
	subl	$1, -28(%ebp)
	movl	-24(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -24(%ebp)
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	-20(%ebp), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%eax, -16(%ebp)
	addl	$8, -20(%ebp)
L614:
	cmpl	$2, -20(%ebp)
	jbe	L617
	movl	8(%ebp), %eax
	movl	12(%eax), %ebx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 8(%edx)
	movl	_border(,%eax,4), %eax
	sall	$2, %eax
	addl	%ebx, %eax
	movl	-16(%ebp), %edx
	andl	$7, %edx
	movl	%edx, (%eax)
	shrl	$3, -16(%ebp)
	subl	$3, -20(%ebp)
L613:
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	shrl	$10, %eax
	addl	$4, %eax
	cmpl	%eax, %edx
	jb	L614
	jmp	L619
L620:
	movl	8(%ebp), %eax
	movl	12(%eax), %ebx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 8(%edx)
	movl	_border(,%eax,4), %eax
	sall	$2, %eax
	addl	%ebx, %eax
	movl	$0, (%eax)
L619:
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	$18, %eax
	jbe	L620
	movl	8(%ebp), %eax
	movl	$7, 16(%eax)
	movl	8(%ebp), %eax
	leal	20(%eax), %ebx
	movl	8(%ebp), %eax
	leal	16(%eax), %ecx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	12(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	_inflate_trees_bits
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	L621
	movl	-12(%ebp), %eax
	movl	%eax, 16(%ebp)
	cmpl	$-3, 16(%ebp)
	jne	L622
	movl	12(%ebp), %eax
	movl	36(%eax), %eax
	movl	8(%ebp), %edx
	movl	12(%edx), %ecx
	movl	12(%ebp), %edx
	movl	40(%edx), %edx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
	movl	8(%ebp), %eax
	movl	$9, (%eax)
L622:
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 32(%eax)
	movl	8(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, 28(%eax)
	movl	12(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	-24(%ebp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	12(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	%edx, 48(%eax)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_inflate_flush
	jmp	L572
L621:
	movl	8(%ebp), %eax
	movl	$0, 8(%eax)
	movl	8(%ebp), %eax
	movl	$5, (%eax)
	jmp	L623
L642:
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	L624
L627:
	cmpl	$0, -28(%ebp)
	je	L625
	movl	$0, 16(%ebp)
	jmp	L660
L625:
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 32(%eax)
	movl	8(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, 28(%eax)
	movl	12(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	-24(%ebp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	12(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	%edx, 48(%eax)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_inflate_flush
	jmp	L572
L660:
	subl	$1, -28(%ebp)
	movl	-24(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -24(%ebp)
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	-20(%ebp), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%eax, -16(%ebp)
	addl	$8, -20(%ebp)
L624:
	movl	-20(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jb	L627
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-12(%ebp), %eax
	movl	_inflate_mask(,%eax,4), %eax
	andl	-16(%ebp), %eax
	sall	$3, %eax
	addl	%edx, %eax
	movl	%eax, -52(%ebp)
	movl	-52(%ebp), %eax
	movzbl	1(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -56(%ebp)
	cmpl	$15, -56(%ebp)
	ja	L628
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	shrl	%cl, -16(%ebp)
	movl	-12(%ebp), %eax
	subl	%eax, -20(%ebp)
	movl	8(%ebp), %eax
	movl	12(%eax), %ebx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 8(%edx)
	sall	$2, %eax
	leal	(%ebx,%eax), %edx
	movl	-56(%ebp), %eax
	movl	%eax, (%edx)
	jmp	L623
L628:
	cmpl	$18, -56(%ebp)
	je	L629
	movl	-56(%ebp), %eax
	subl	$14, %eax
	jmp	L630
L629:
	movl	$7, %eax
L630:
	movl	%eax, -40(%ebp)
	cmpl	$18, -56(%ebp)
	jne	L631
	movl	$11, %eax
	jmp	L632
L631:
	movl	$3, %eax
L632:
	movl	%eax, -44(%ebp)
	jmp	L633
L636:
	cmpl	$0, -28(%ebp)
	je	L634
	movl	$0, 16(%ebp)
	jmp	L661
L634:
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 32(%eax)
	movl	8(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, 28(%eax)
	movl	12(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	-24(%ebp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	12(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	%edx, 48(%eax)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_inflate_flush
	jmp	L572
L661:
	subl	$1, -28(%ebp)
	movl	-24(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -24(%ebp)
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	-20(%ebp), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%eax, -16(%ebp)
	addl	$8, -20(%ebp)
L633:
	movl	-12(%ebp), %edx
	movl	-40(%ebp), %eax
	addl	%edx, %eax
	cmpl	%eax, -20(%ebp)
	jb	L636
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	shrl	%cl, -16(%ebp)
	movl	-12(%ebp), %eax
	subl	%eax, -20(%ebp)
	movl	-40(%ebp), %eax
	movl	_inflate_mask(,%eax,4), %eax
	andl	-16(%ebp), %eax
	addl	%eax, -44(%ebp)
	movl	-40(%ebp), %eax
	movl	%eax, %ecx
	shrl	%cl, -16(%ebp)
	movl	-40(%ebp), %eax
	subl	%eax, -20(%ebp)
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	-40(%ebp), %edx
	movl	-44(%ebp), %eax
	addl	%eax, %edx
	movl	-12(%ebp), %eax
	andl	$31, %eax
	movl	%eax, %ecx
	movl	-12(%ebp), %eax
	shrl	$5, %eax
	andl	$31, %eax
	addl	%ecx, %eax
	addl	$258, %eax
	cmpl	%eax, %edx
	ja	L637
	cmpl	$16, -56(%ebp)
	jne	L638
	cmpl	$0, -40(%ebp)
	jne	L638
L637:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_inflate_trees_free
	movl	12(%ebp), %eax
	movl	36(%eax), %eax
	movl	8(%ebp), %edx
	movl	12(%edx), %ecx
	movl	12(%ebp), %edx
	movl	40(%edx), %edx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
	movl	8(%ebp), %eax
	movl	$9, (%eax)
	movl	12(%ebp), %eax
	movl	$LC17, 24(%eax)
	movl	$-3, 16(%ebp)
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 32(%eax)
	movl	8(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, 28(%eax)
	movl	12(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	-24(%ebp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	12(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	%edx, 48(%eax)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_inflate_flush
	jmp	L572
L638:
	cmpl	$16, -56(%ebp)
	jne	L639
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	-40(%ebp), %edx
	addl	$1073741823, %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	jmp	L640
L639:
	movl	$0, %eax
L640:
	movl	%eax, -56(%ebp)
L641:
	movl	8(%ebp), %eax
	movl	12(%eax), %ecx
	movl	-40(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -40(%ebp)
	sall	$2, %eax
	leal	(%ecx,%eax), %edx
	movl	-56(%ebp), %eax
	movl	%eax, (%edx)
	subl	$1, -44(%ebp)
	cmpl	$0, -44(%ebp)
	jne	L641
	movl	8(%ebp), %eax
	movl	-40(%ebp), %edx
	movl	%edx, 8(%eax)
L623:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	-12(%ebp), %edx
	movl	%edx, %ecx
	andl	$31, %ecx
	movl	-12(%ebp), %edx
	shrl	$5, %edx
	andl	$31, %edx
	addl	%ecx, %edx
	addl	$258, %edx
	cmpl	%edx, %eax
	jb	L642
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_inflate_trees_free
	movl	8(%ebp), %eax
	movl	$0, 20(%eax)
	movl	$9, -76(%ebp)
	movl	$6, -80(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	-12(%ebp), %edx
	shrl	$5, %edx
	andl	$31, %edx
	leal	1(%edx), %ebx
	movl	-12(%ebp), %edx
	andl	$31, %edx
	leal	257(%edx), %ecx
	movl	12(%ebp), %edx
	movl	%edx, 28(%esp)
	leal	-88(%ebp), %edx
	movl	%edx, 24(%esp)
	leal	-84(%ebp), %edx
	movl	%edx, 20(%esp)
	leal	-80(%ebp), %edx
	movl	%edx, 16(%esp)
	leal	-76(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%ecx, (%esp)
	call	_inflate_trees_dynamic
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	L643
	cmpl	$-3, -12(%ebp)
	jne	L644
	movl	12(%ebp), %eax
	movl	36(%eax), %eax
	movl	8(%ebp), %edx
	movl	12(%edx), %ecx
	movl	12(%ebp), %edx
	movl	40(%edx), %edx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
	movl	8(%ebp), %eax
	movl	$9, (%eax)
L644:
	movl	-12(%ebp), %eax
	movl	%eax, 16(%ebp)
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 32(%eax)
	movl	8(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, 28(%eax)
	movl	12(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	-24(%ebp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	12(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	%edx, 48(%eax)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_inflate_flush
	jmp	L572
L643:
	movl	-88(%ebp), %ebx
	movl	-84(%ebp), %ecx
	movl	-80(%ebp), %edx
	movl	-76(%ebp), %eax
	movl	12(%ebp), %esi
	movl	%esi, 16(%esp)
	movl	%ebx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_inflate_codes_new
	movl	%eax, -48(%ebp)
	cmpl	$0, -48(%ebp)
	jne	L646
	movl	-88(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_inflate_trees_free
	movl	-84(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_inflate_trees_free
	movl	$-4, 16(%ebp)
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 32(%eax)
	movl	8(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, 28(%eax)
	movl	12(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	-24(%ebp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	12(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	%edx, 48(%eax)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_inflate_flush
	jmp	L572
L646:
	movl	12(%ebp), %eax
	movl	36(%eax), %eax
	movl	8(%ebp), %edx
	movl	12(%edx), %ecx
	movl	12(%ebp), %edx
	movl	40(%edx), %edx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
	movl	8(%ebp), %eax
	movl	-48(%ebp), %edx
	movl	%edx, 12(%eax)
	movl	-84(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	-88(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	8(%ebp), %eax
	movl	$6, (%eax)
L562:
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 32(%eax)
	movl	8(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, 28(%eax)
	movl	12(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	-24(%ebp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	12(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	%edx, 48(%eax)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_inflate_codes
	movl	%eax, 16(%ebp)
	cmpl	$1, 16(%ebp)
	je	L647
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_inflate_flush
	jmp	L572
L647:
	movl	$0, 16(%ebp)
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_inflate_codes_free
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_inflate_trees_free
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_inflate_trees_free
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	%eax, -32(%ebp)
	jnb	L648
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	subl	-32(%ebp), %eax
	subl	$1, %eax
	jmp	L649
L648:
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	subl	-32(%ebp), %eax
L649:
	movl	%eax, -36(%ebp)
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	jne	L650
	movl	8(%ebp), %eax
	movl	$0, (%eax)
	jmp	L580
L650:
	cmpl	$7, -20(%ebp)
	jbe	L651
	subl	$8, -20(%ebp)
	addl	$1, -28(%ebp)
	subl	$1, -24(%ebp)
L651:
	movl	8(%ebp), %eax
	movl	$7, (%eax)
L561:
	movl	8(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	%edx, 48(%eax)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_inflate_flush
	movl	%eax, 16(%ebp)
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	%eax, -32(%ebp)
	jnb	L652
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	subl	-32(%ebp), %eax
	subl	$1, %eax
	jmp	L653
L652:
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	subl	-32(%ebp), %eax
L653:
	movl	%eax, -36(%ebp)
	movl	8(%ebp), %eax
	movl	44(%eax), %edx
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	cmpl	%eax, %edx
	je	L654
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 32(%eax)
	movl	8(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, 28(%eax)
	movl	12(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	-24(%ebp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	12(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	%edx, 48(%eax)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_inflate_flush
	jmp	L572
L654:
	movl	8(%ebp), %eax
	movl	$8, (%eax)
L560:
	movl	$1, 16(%ebp)
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 32(%eax)
	movl	8(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, 28(%eax)
	movl	12(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	-24(%ebp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	12(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	%edx, 48(%eax)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_inflate_flush
	jmp	L572
L558:
	movl	$-3, 16(%ebp)
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 32(%eax)
	movl	8(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, 28(%eax)
	movl	12(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	-24(%ebp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	12(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	%edx, 48(%eax)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_inflate_flush
	jmp	L572
L557:
	movl	$-2, 16(%ebp)
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 32(%eax)
	movl	8(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, 28(%eax)
	movl	12(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	-24(%ebp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	12(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	%edx, 48(%eax)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_inflate_flush
	jmp	L572
L662:
	nop
	jmp	L655
L663:
	nop
L580:
	jmp	L655
L572:
	addl	$112, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
	.globl	_inflate_blocks_free
	.def	_inflate_blocks_free;	.scl	2;	.type	32;	.endef
_inflate_blocks_free:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_inflate_blocks_reset
	movl	12(%ebp), %eax
	movl	36(%eax), %eax
	movl	8(%ebp), %edx
	movl	36(%edx), %ecx
	movl	12(%ebp), %edx
	movl	40(%edx), %edx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
	movl	12(%ebp), %eax
	movl	36(%eax), %eax
	movl	12(%ebp), %edx
	movl	40(%edx), %edx
	movl	8(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
	movl	$0, %eax
	leave
	ret
	.globl	_inflate_set_dictionary
	.def	_inflate_set_dictionary;	.scl	2;	.type	32;	.endef
_inflate_set_dictionary:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	16(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_memcpy
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	16(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 48(%eax)
	movl	8(%ebp), %eax
	movl	48(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 44(%eax)
	nop
	leave
	ret
	.globl	_inflate_addhistory
	.def	_inflate_addhistory;	.scl	2;	.type	32;	.endef
_inflate_addhistory:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$56, %esp
	movl	8(%ebp), %eax
	movl	44(%eax), %edx
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	cmpl	%eax, %edx
	je	L668
	movl	$-2, %eax
	jmp	L669
L668:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L670
	movl	$-3, %eax
	jmp	L669
L670:
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	%eax, -24(%ebp)
	jnb	L671
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	subl	-24(%ebp), %eax
	subl	$1, %eax
	jmp	L672
L671:
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	subl	-24(%ebp), %eax
L672:
	movl	%eax, -28(%ebp)
	jmp	L673
L678:
	movl	-20(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jbe	L674
	movl	-28(%ebp), %eax
	movl	%eax, -12(%ebp)
L674:
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	L675
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	8(%ebp), %edx
	movl	56(%edx), %edx
	movl	-12(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	-24(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
	movl	8(%ebp), %edx
	movl	%eax, 56(%edx)
L675:
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_memcpy
	movl	-12(%ebp), %eax
	addl	%eax, -24(%ebp)
	movl	-12(%ebp), %eax
	addl	%eax, -16(%ebp)
	movl	-12(%ebp), %eax
	subl	%eax, -20(%ebp)
	movl	12(%ebp), %eax
	movl	20(%eax), %edx
	movl	-12(%ebp), %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 20(%eax)
	movl	8(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, 44(%eax)
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	cmpl	%eax, -24(%ebp)
	jne	L673
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	8(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, 44(%eax)
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	%eax, -24(%ebp)
	jnb	L676
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	subl	-24(%ebp), %eax
	subl	$1, %eax
	jmp	L677
L676:
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	subl	-24(%ebp), %eax
L677:
	movl	%eax, -28(%ebp)
L673:
	cmpl	$0, -20(%ebp)
	jne	L678
	movl	8(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	%edx, 32(%eax)
	movl	8(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%edx, 28(%eax)
	movl	12(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	-16(%ebp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	12(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, 48(%eax)
	movl	$0, %eax
L669:
	leave
	ret
	.globl	_inflate_packet_flush
	.def	_inflate_packet_flush;	.scl	2;	.type	32;	.endef
_inflate_packet_flush:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	L680
	movl	$-3, %eax
	jmp	L681
L680:
	movl	8(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, %eax
L681:
	popl	%ebp
	ret
	.globl	_inflate_copyright
	.data
	.align 32
_inflate_copyright:
	.ascii " inflate 1.0.4 Copyright 1995-1996 Mark Adler \0"
	.section .rdata,"dr"
	.align 32
_cplens:
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.long	8
	.long	9
	.long	10
	.long	11
	.long	13
	.long	15
	.long	17
	.long	19
	.long	23
	.long	27
	.long	31
	.long	35
	.long	43
	.long	51
	.long	59
	.long	67
	.long	83
	.long	99
	.long	115
	.long	131
	.long	163
	.long	195
	.long	227
	.long	258
	.long	0
	.long	0
	.align 32
_cplext:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	1
	.long	2
	.long	2
	.long	2
	.long	2
	.long	3
	.long	3
	.long	3
	.long	3
	.long	4
	.long	4
	.long	4
	.long	4
	.long	5
	.long	5
	.long	5
	.long	5
	.long	0
	.long	112
	.long	112
	.align 32
_cpdist:
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	7
	.long	9
	.long	13
	.long	17
	.long	25
	.long	33
	.long	49
	.long	65
	.long	97
	.long	129
	.long	193
	.long	257
	.long	385
	.long	513
	.long	769
	.long	1025
	.long	1537
	.long	2049
	.long	3073
	.long	4097
	.long	6145
	.long	8193
	.long	12289
	.long	16385
	.long	24577
	.align 32
_cpdext:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	2
	.long	2
	.long	3
	.long	3
	.long	4
	.long	4
	.long	5
	.long	5
	.long	6
	.long	6
	.long	7
	.long	7
	.long	8
	.long	8
	.long	9
	.long	9
	.long	10
	.long	10
	.long	11
	.long	11
	.long	12
	.long	12
	.long	13
	.long	13
	.text
	.def	_huft_build;	.scl	3;	.type	32;	.endef
_huft_build:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$1436, %esp
	leal	-124(%ebp), %ebx
	movl	%ebx, %eax
	leal	4(%eax), %ebx
	movl	$0, (%eax)
	movl	%ebx, %eax
	leal	4(%eax), %ebx
	movl	$0, (%eax)
	movl	%ebx, %eax
	leal	4(%eax), %ebx
	movl	$0, (%eax)
	movl	%ebx, %eax
	leal	4(%eax), %ebx
	movl	$0, (%eax)
	movl	%ebx, %eax
	leal	4(%eax), %ebx
	movl	$0, (%eax)
	movl	%ebx, %eax
	leal	4(%eax), %ebx
	movl	$0, (%eax)
	movl	%ebx, %eax
	leal	4(%eax), %ebx
	movl	$0, (%eax)
	movl	%ebx, %eax
	leal	4(%eax), %ebx
	movl	$0, (%eax)
	movl	%ebx, %eax
	leal	4(%eax), %ebx
	movl	$0, (%eax)
	movl	%ebx, %eax
	leal	4(%eax), %ebx
	movl	$0, (%eax)
	movl	%ebx, %eax
	leal	4(%eax), %ebx
	movl	$0, (%eax)
	movl	%ebx, %eax
	leal	4(%eax), %ebx
	movl	$0, (%eax)
	movl	%ebx, %eax
	leal	4(%eax), %ebx
	movl	$0, (%eax)
	movl	%ebx, %eax
	leal	4(%eax), %ebx
	movl	$0, (%eax)
	movl	%ebx, %eax
	leal	4(%eax), %ebx
	movl	$0, (%eax)
	movl	%ebx, %eax
	leal	4(%eax), %ebx
	movl	$0, (%eax)
	movl	8(%ebp), %ebx
	movl	12(%ebp), %edi
L683:
	movl	%ebx, %eax
	leal	4(%eax), %ebx
	movl	(%eax), %eax
	movl	-124(%ebp,%eax,4), %edx
	addl	$1, %edx
	movl	%edx, -124(%ebp,%eax,4)
	subl	$1, %edi
	testl	%edi, %edi
	jne	L683
	movl	-124(%ebp), %eax
	cmpl	%eax, 12(%ebp)
	jne	L684
	movl	28(%ebp), %eax
	movl	$0, (%eax)
	movl	32(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, %eax
	jmp	L729
L684:
	movl	32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	$1, %esi
	jmp	L686
L689:
	movl	-124(%ebp,%esi,4), %eax
	testl	%eax, %eax
	jne	L730
	addl	$1, %esi
L686:
	cmpl	$15, %esi
	jbe	L689
	jmp	L688
L730:
	nop
L688:
	movl	%esi, -1420(%ebp)
	movl	-40(%ebp), %eax
	cmpl	%eax, %esi
	jbe	L690
	movl	%esi, -40(%ebp)
L690:
	movl	$15, %edi
	jmp	L691
L694:
	movl	-124(%ebp,%edi,4), %eax
	testl	%eax, %eax
	jne	L731
	subl	$1, %edi
L691:
	testl	%edi, %edi
	jne	L694
	jmp	L693
L731:
	nop
L693:
	movl	%edi, -60(%ebp)
	movl	-40(%ebp), %eax
	cmpl	%eax, %edi
	jnb	L695
	movl	%edi, -40(%ebp)
L695:
	movl	-40(%ebp), %edx
	movl	32(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, %eax
	movl	%esi, %ecx
	sall	%cl, %eax
	movl	%eax, -52(%ebp)
	jmp	L696
L698:
	movl	-52(%ebp), %edx
	movl	-124(%ebp,%esi,4), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -52(%ebp)
	cmpl	$0, -52(%ebp)
	jns	L697
	movl	$-3, %eax
	jmp	L729
L697:
	addl	$1, %esi
	sall	-52(%ebp)
L696:
	cmpl	%edi, %esi
	jb	L698
	movl	-52(%ebp), %edx
	movl	-124(%ebp,%edi,4), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -52(%ebp)
	cmpl	$0, -52(%ebp)
	jns	L699
	movl	$-3, %eax
	jmp	L729
L699:
	movl	-124(%ebp,%edi,4), %edx
	movl	-52(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -124(%ebp,%edi,4)
	movl	$0, %esi
	movl	%esi, -1404(%ebp)
	leal	-124(%ebp), %ebx
	addl	$4, %ebx
	leal	-1408(%ebp), %eax
	addl	$8, %eax
	movl	%eax, -48(%ebp)
	jmp	L700
L701:
	movl	%ebx, %eax
	leal	4(%eax), %ebx
	movl	(%eax), %eax
	addl	%eax, %esi
	movl	-48(%ebp), %eax
	leal	4(%eax), %edx
	movl	%edx, -48(%ebp)
	movl	%esi, (%eax)
L700:
	subl	$1, %edi
	testl	%edi, %edi
	jne	L701
	movl	8(%ebp), %ebx
	movl	$0, %edi
L703:
	movl	%ebx, %eax
	leal	4(%eax), %ebx
	movl	(%eax), %esi
	testl	%esi, %esi
	je	L702
	movl	-1408(%ebp,%esi,4), %eax
	leal	1(%eax), %edx
	movl	%edx, -1408(%ebp,%esi,4)
	movl	%edi, -1344(%ebp,%eax,4)
L702:
	addl	$1, %edi
	cmpl	12(%ebp), %edi
	jb	L703
	movl	-60(%ebp), %eax
	movl	-1408(%ebp,%eax,4), %eax
	movl	%eax, 12(%ebp)
	movl	$0, %edi
	movl	%edi, -1408(%ebp)
	leal	-1344(%ebp), %ebx
	movl	$-1, -36(%ebp)
	movl	-40(%ebp), %eax
	negl	%eax
	movl	%eax, -1424(%ebp)
	movl	$0, -192(%ebp)
	movl	$0, -44(%ebp)
	movl	$0, -56(%ebp)
	jmp	L704
L726:
	movl	-1420(%ebp), %eax
	movl	-124(%ebp,%eax,4), %eax
	movl	%eax, -28(%ebp)
	jmp	L705
L713:
	addl	$1, -36(%ebp)
	movl	-40(%ebp), %eax
	addl	-1424(%ebp), %eax
	movl	%eax, %ecx
	movl	%ecx, -1424(%ebp)
	movl	-60(%ebp), %eax
	subl	%ecx, %eax
	movl	%eax, -56(%ebp)
	movl	-40(%ebp), %eax
	cmpl	%eax, -56(%ebp)
	cmovbe	-56(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	-1420(%ebp), %edx
	movl	%edx, %eax
	subl	%ecx, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%esi, %ecx
	sall	%cl, %eax
	movl	%eax, -32(%ebp)
	movl	-28(%ebp), %eax
	addl	$1, %eax
	cmpl	%eax, -32(%ebp)
	jbe	L707
	movl	-32(%ebp), %eax
	subl	-28(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -32(%ebp)
	movl	%edx, %eax
	leal	0(,%eax,4), %edx
	leal	-124(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -48(%ebp)
	cmpl	-56(%ebp), %esi
	jnb	L707
	jmp	L708
L710:
	sall	-32(%ebp)
	addl	$4, -48(%ebp)
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, -32(%ebp)
	jbe	L732
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	subl	%eax, -32(%ebp)
L708:
	addl	$1, %esi
	cmpl	-56(%ebp), %esi
	jb	L710
	jmp	L707
L732:
	nop
L707:
	movl	$1, %eax
	movl	%esi, %ecx
	sall	%cl, %eax
	movl	%eax, -56(%ebp)
	movl	36(%ebp), %eax
	movl	32(%eax), %ecx
	movl	-56(%ebp), %eax
	leal	1(%eax), %edx
	movl	36(%ebp), %eax
	movl	40(%eax), %eax
	movl	$8, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	*%ecx
	movl	%eax, -44(%ebp)
	cmpl	$0, -44(%ebp)
	jne	L711
	cmpl	$0, -36(%ebp)
	je	L712
	movl	-192(%ebp), %eax
	movl	36(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_inflate_trees_free
L712:
	movl	$-4, %eax
	jmp	L729
L711:
	movl	-44(%ebp), %eax
	leal	8(%eax), %edx
	movl	28(%ebp), %eax
	movl	%edx, (%eax)
	movl	-44(%ebp), %eax
	addl	$4, %eax
	movl	%eax, 28(%ebp)
	movl	28(%ebp), %eax
	movl	$0, (%eax)
	addl	$8, -44(%ebp)
	movl	-36(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%edx, -192(%ebp,%eax,4)
	cmpl	$0, -36(%ebp)
	je	L706
	movl	-36(%ebp), %eax
	movl	%edi, -1408(%ebp,%eax,4)
	movl	-40(%ebp), %eax
	movb	%al, -131(%ebp)
	movl	%esi, %eax
	movb	%al, -132(%ebp)
	movl	-44(%ebp), %eax
	movl	%eax, -128(%ebp)
	movl	-1424(%ebp), %eax
	subl	-40(%ebp), %eax
	movl	%edi, %esi
	movl	%eax, %ecx
	shrl	%cl, %esi
	movl	-36(%ebp), %eax
	subl	$1, %eax
	movl	-192(%ebp,%eax,4), %eax
	leal	0(,%esi,8), %edx
	leal	(%eax,%edx), %ecx
	movl	-132(%ebp), %eax
	movl	-128(%ebp), %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
L706:
	movl	-40(%ebp), %eax
	movl	-1424(%ebp), %ecx
	addl	%ecx, %eax
	movl	-1420(%ebp), %esi
	cmpl	%eax, %esi
	jg	L713
	movl	%esi, %edx
	movl	%ecx, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movb	%al, -131(%ebp)
	movl	12(%ebp), %eax
	leal	0(,%eax,4), %edx
	leal	-1344(%ebp), %eax
	addl	%edx, %eax
	cmpl	%eax, %ebx
	jb	L714
	movb	$-64, -132(%ebp)
	jmp	L715
L714:
	movl	(%ebx), %eax
	cmpl	%eax, 16(%ebp)
	jbe	L716
	movl	(%ebx), %eax
	cmpl	$255, %eax
	ja	L717
	movl	$0, %eax
	jmp	L718
L717:
	movl	$96, %eax
L718:
	movb	%al, -132(%ebp)
	movl	%ebx, %eax
	leal	4(%eax), %ebx
	movl	(%eax), %eax
	movl	%eax, -128(%ebp)
	jmp	L715
L716:
	movl	(%ebx), %eax
	subl	16(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	24(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	addl	$80, %eax
	movb	%al, -132(%ebp)
	movl	%ebx, %eax
	leal	4(%eax), %ebx
	movl	(%eax), %eax
	subl	16(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	20(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	%eax, -128(%ebp)
L715:
	movl	-1420(%ebp), %eax
	movl	-1424(%ebp), %esi
	subl	%esi, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -32(%ebp)
	movl	%edi, %eax
	movl	%esi, %ecx
	shrl	%cl, %eax
	movl	%eax, %esi
	jmp	L719
L720:
	leal	0(,%esi,8), %edx
	movl	-44(%ebp), %eax
	leal	(%edx,%eax), %ecx
	movl	-132(%ebp), %eax
	movl	-128(%ebp), %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-32(%ebp), %eax
	addl	%esi, %eax
	movl	%eax, %esi
L719:
	cmpl	-56(%ebp), %esi
	jb	L720
	movl	-1420(%ebp), %eax
	subl	$1, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %esi
	jmp	L721
L722:
	xorl	%esi, %edi
	shrl	%esi
L721:
	movl	%edi, %eax
	andl	%esi, %eax
	testl	%eax, %eax
	jne	L722
	xorl	%esi, %edi
	jmp	L723
L724:
	subl	$1, -36(%ebp)
	movl	-40(%ebp), %ecx
	subl	%ecx, -1424(%ebp)
L723:
	movl	$1, %eax
	movzbl	-1424(%ebp), %ecx
	sall	%cl, %eax
	subl	$1, %eax
	andl	%edi, %eax
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	-1408(%ebp,%eax,4), %eax
	cmpl	%eax, %edx
	jne	L724
L705:
	movl	-28(%ebp), %eax
	leal	-1(%eax), %edx
	movl	%edx, -28(%ebp)
	testl	%eax, %eax
	jne	L706
	addl	$1, -1420(%ebp)
L704:
	movl	-1420(%ebp), %eax
	cmpl	-60(%ebp), %eax
	jle	L726
	cmpl	$0, -52(%ebp)
	je	L727
	cmpl	$1, -60(%ebp)
	je	L727
	movl	$-5, %eax
	jmp	L729
L727:
	movl	$0, %eax
L729:
	addl	$1436, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section .rdata,"dr"
	.align 4
LC18:
	.ascii "oversubscribed dynamic bit lengths tree\0"
	.align 4
LC19:
	.ascii "incomplete dynamic bit lengths tree\0"
	.text
	.globl	_inflate_trees_bits
	.def	_inflate_trees_bits;	.scl	2;	.type	32;	.endef
_inflate_trees_bits:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$56, %esp
	movl	20(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$19, 8(%esp)
	movl	$19, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_huft_build
	movl	%eax, -12(%ebp)
	cmpl	$-3, -12(%ebp)
	jne	L734
	movl	20(%ebp), %eax
	movl	$LC18, 24(%eax)
	jmp	L735
L734:
	cmpl	$-5, -12(%ebp)
	je	L736
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L735
L736:
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_inflate_trees_free
	movl	20(%ebp), %eax
	movl	$LC19, 24(%eax)
	movl	$-3, -12(%ebp)
L735:
	movl	-12(%ebp), %eax
	leave
	ret
	.section .rdata,"dr"
	.align 4
LC20:
	.ascii "oversubscribed literal/length tree\0"
	.align 4
LC21:
	.ascii "incomplete literal/length tree\0"
LC22:
	.ascii "oversubscribed distance tree\0"
LC23:
	.ascii "incomplete distance tree\0"
	.align 4
LC24:
	.ascii "empty distance tree with lengths\0"
	.text
	.globl	_inflate_trees_dynamic
	.def	_inflate_trees_dynamic;	.scl	2;	.type	32;	.endef
_inflate_trees_dynamic:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$56, %esp
	movl	36(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$_cplext, 16(%esp)
	movl	$_cplens, 12(%esp)
	movl	$257, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	_huft_build
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jne	L739
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L740
L739:
	cmpl	$-3, -12(%ebp)
	jne	L741
	movl	36(%ebp), %eax
	movl	$LC20, 24(%eax)
	jmp	L742
L741:
	cmpl	$-4, -12(%ebp)
	je	L742
	movl	28(%ebp), %eax
	movl	(%eax), %eax
	movl	36(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_inflate_trees_free
	movl	36(%ebp), %eax
	movl	$LC21, 24(%eax)
	movl	$-3, -12(%ebp)
L742:
	movl	-12(%ebp), %eax
	jmp	L743
L740:
	movl	8(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	16(%ebp), %eax
	addl	%eax, %edx
	movl	36(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$_cpdext, 16(%esp)
	movl	$_cpdist, 12(%esp)
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_huft_build
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jne	L744
	movl	24(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L745
	cmpl	$257, 8(%ebp)
	jbe	L745
L744:
	cmpl	$-3, -12(%ebp)
	jne	L746
	movl	36(%ebp), %eax
	movl	$LC22, 24(%eax)
	jmp	L747
L746:
	cmpl	$-5, -12(%ebp)
	jne	L748
	movl	32(%ebp), %eax
	movl	(%eax), %eax
	movl	36(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_inflate_trees_free
	movl	36(%ebp), %eax
	movl	$LC23, 24(%eax)
	movl	$-3, -12(%ebp)
	jmp	L747
L748:
	cmpl	$-4, -12(%ebp)
	je	L747
	movl	36(%ebp), %eax
	movl	$LC24, 24(%eax)
	movl	$-3, -12(%ebp)
L747:
	movl	28(%ebp), %eax
	movl	(%eax), %eax
	movl	36(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_inflate_trees_free
	movl	-12(%ebp), %eax
	jmp	L743
L745:
	movl	$0, %eax
L743:
	leave
	ret
.lcomm _fixed_built,4,4
.lcomm _fixed_mem,4240,32
.lcomm _fixed_bl,4,4
.lcomm _fixed_bd,4,4
.lcomm _fixed_tl,4,4
.lcomm _fixed_td,4,4
	.def	_falloc;	.scl	3;	.type	32;	.endef
_falloc:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	subl	12(%ebp), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$3, %eax
	addl	$_fixed_mem, %eax
	popl	%ebp
	ret
	.globl	_inflate_trees_fixed
	.def	_inflate_trees_fixed;	.scl	2;	.type	32;	.endef
_inflate_trees_fixed:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$1256, %esp
	movl	_fixed_built, %eax
	testl	%eax, %eax
	jne	L752
	movl	$530, -16(%ebp)
	movl	$_falloc, -1192(%ebp)
	movl	$0, -1188(%ebp)
	leal	-16(%ebp), %eax
	movl	%eax, -1184(%ebp)
	movl	$0, -12(%ebp)
	jmp	L753
L754:
	movl	-12(%ebp), %eax
	movl	$8, -1168(%ebp,%eax,4)
	addl	$1, -12(%ebp)
L753:
	cmpl	$143, -12(%ebp)
	jle	L754
	jmp	L755
L756:
	movl	-12(%ebp), %eax
	movl	$9, -1168(%ebp,%eax,4)
	addl	$1, -12(%ebp)
L755:
	cmpl	$255, -12(%ebp)
	jle	L756
	jmp	L757
L758:
	movl	-12(%ebp), %eax
	movl	$7, -1168(%ebp,%eax,4)
	addl	$1, -12(%ebp)
L757:
	cmpl	$279, -12(%ebp)
	jle	L758
	jmp	L759
L760:
	movl	-12(%ebp), %eax
	movl	$8, -1168(%ebp,%eax,4)
	addl	$1, -12(%ebp)
L759:
	cmpl	$287, -12(%ebp)
	jle	L760
	movl	$7, _fixed_bl
	leal	-1224(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	$_fixed_bl, 24(%esp)
	movl	$_fixed_tl, 20(%esp)
	movl	$_cplext, 16(%esp)
	movl	$_cplens, 12(%esp)
	movl	$257, 8(%esp)
	movl	$288, 4(%esp)
	leal	-1168(%ebp), %eax
	movl	%eax, (%esp)
	call	_huft_build
	movl	$0, -12(%ebp)
	jmp	L761
L762:
	movl	-12(%ebp), %eax
	movl	$5, -1168(%ebp,%eax,4)
	addl	$1, -12(%ebp)
L761:
	cmpl	$29, -12(%ebp)
	jle	L762
	movl	$5, _fixed_bd
	leal	-1224(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	$_fixed_bd, 24(%esp)
	movl	$_fixed_td, 20(%esp)
	movl	$_cpdext, 16(%esp)
	movl	$_cpdist, 12(%esp)
	movl	$0, 8(%esp)
	movl	$30, 4(%esp)
	leal	-1168(%ebp), %eax
	movl	%eax, (%esp)
	call	_huft_build
	movl	$1, _fixed_built
L752:
	movl	_fixed_bl, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	_fixed_bd, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	movl	_fixed_tl, %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	movl	_fixed_td, %edx
	movl	20(%ebp), %eax
	movl	%edx, (%eax)
	movl	$0, %eax
	leave
	ret
	.globl	_inflate_trees_free
	.def	_inflate_trees_free;	.scl	2;	.type	32;	.endef
_inflate_trees_free:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$28, %esp
	movl	$0, %esi
	movl	8(%ebp), %ebx
	jmp	L765
L766:
	leal	-8(%ebx), %eax
	movl	4(%eax), %edi
	leal	-8(%ebx), %eax
	movl	%esi, 4(%eax)
	movl	%ebx, %esi
	movl	%edi, %ebx
L765:
	testl	%ebx, %ebx
	jne	L766
	jmp	L767
L768:
	subl	$8, %esi
	movl	4(%esi), %ebx
	movl	12(%ebp), %eax
	movl	36(%eax), %eax
	movl	12(%ebp), %edx
	movl	40(%edx), %edx
	movl	%esi, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
	movl	%ebx, %esi
L767:
	testl	%esi, %esi
	jne	L768
	movl	$0, %eax
	addl	$28, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.globl	_inflate_codes_new
	.def	_inflate_codes_new;	.scl	2;	.type	32;	.endef
_inflate_codes_new:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	24(%ebp), %eax
	movl	32(%eax), %eax
	movl	24(%ebp), %edx
	movl	40(%edx), %edx
	movl	$28, 8(%esp)
	movl	$1, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	L771
	movl	-12(%ebp), %eax
	movl	$0, (%eax)
	movl	8(%ebp), %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movb	%dl, 16(%eax)
	movl	12(%ebp), %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movb	%dl, 17(%eax)
	movl	-12(%ebp), %eax
	movl	16(%ebp), %edx
	movl	%edx, 20(%eax)
	movl	-12(%ebp), %eax
	movl	20(%ebp), %edx
	movl	%edx, 24(%eax)
L771:
	movl	-12(%ebp), %eax
	leave
	ret
	.section .rdata,"dr"
LC25:
	.ascii "invalid literal/length code\0"
LC26:
	.ascii "invalid distance code\0"
	.text
	.globl	_inflate_codes
	.def	_inflate_codes;	.scl	2;	.type	32;	.endef
_inflate_codes:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	pushl	%ebx
	subl	$80, %esp
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	%eax, -28(%ebp)
	jnb	L774
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	subl	-28(%ebp), %eax
	subl	$1, %eax
	jmp	L775
L774:
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	subl	-28(%ebp), %eax
L775:
	movl	%eax, -32(%ebp)
L843:
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$9, %eax
	ja	L776
	movl	L778(,%eax,4), %eax
	jmp	*%eax
	.section .rdata,"dr"
	.align 4
L778:
	.long	L787
	.long	L786
	.long	L785
	.long	L784
	.long	L783
	.long	L782
	.long	L781
	.long	L780
	.long	L779
	.long	L777
	.text
L787:
	cmpl	$257, -32(%ebp)
	jbe	L788
	cmpl	$9, -24(%ebp)
	jbe	L788
	movl	8(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 32(%eax)
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 28(%eax)
	movl	12(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	-20(%ebp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	12(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 48(%eax)
	movl	-40(%ebp), %eax
	movl	24(%eax), %ebx
	movl	-40(%ebp), %eax
	movl	20(%eax), %ecx
	movl	-40(%ebp), %eax
	movzbl	17(%eax), %eax
	movzbl	%al, %edx
	movl	-40(%ebp), %eax
	movzbl	16(%eax), %eax
	movzbl	%al, %eax
	movl	12(%ebp), %esi
	movl	%esi, 20(%esp)
	movl	8(%ebp), %esi
	movl	%esi, 16(%esp)
	movl	%ebx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_inflate_fast
	movl	%eax, 16(%ebp)
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	%eax, -28(%ebp)
	jnb	L789
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	subl	-28(%ebp), %eax
	subl	$1, %eax
	jmp	L790
L789:
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	subl	-28(%ebp), %eax
L790:
	movl	%eax, -32(%ebp)
	cmpl	$0, 16(%ebp)
	je	L788
	cmpl	$1, 16(%ebp)
	jne	L791
	movl	$7, %edx
	jmp	L792
L791:
	movl	$9, %edx
L792:
	movl	-40(%ebp), %eax
	movl	%edx, (%eax)
	jmp	L793
L788:
	movl	-40(%ebp), %eax
	movzbl	16(%eax), %eax
	movzbl	%al, %edx
	movl	-40(%ebp), %eax
	movl	%edx, 12(%eax)
	movl	-40(%ebp), %eax
	movl	20(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-40(%ebp), %eax
	movl	$1, (%eax)
L786:
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	L794
L798:
	cmpl	$0, -24(%ebp)
	je	L795
	movl	$0, 16(%ebp)
	jmp	L844
L795:
	movl	8(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 32(%eax)
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 28(%eax)
	movl	12(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	-20(%ebp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	12(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 48(%eax)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_inflate_flush
	jmp	L797
L844:
	subl	$1, -24(%ebp)
	movl	-20(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -20(%ebp)
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	-16(%ebp), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%eax, -12(%ebp)
	addl	$8, -16(%ebp)
L794:
	movl	-16(%ebp), %eax
	cmpl	-44(%ebp), %eax
	jb	L798
	movl	-40(%ebp), %eax
	movl	8(%eax), %edx
	movl	-44(%ebp), %eax
	movl	_inflate_mask(,%eax,4), %eax
	andl	-12(%ebp), %eax
	sall	$3, %eax
	addl	%edx, %eax
	movl	%eax, -48(%ebp)
	movl	-48(%ebp), %eax
	movzbl	1(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, %ecx
	shrl	%cl, -12(%ebp)
	movl	-48(%ebp), %eax
	movzbl	1(%eax), %eax
	movzbl	%al, %eax
	subl	%eax, -16(%ebp)
	movl	-48(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -52(%ebp)
	cmpl	$0, -52(%ebp)
	jne	L799
	movl	-48(%ebp), %eax
	movl	4(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-40(%ebp), %eax
	movl	$6, (%eax)
	jmp	L793
L799:
	movl	-52(%ebp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	L800
	movl	-52(%ebp), %eax
	andl	$15, %eax
	movl	%eax, %edx
	movl	-40(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-48(%ebp), %eax
	movl	4(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	-40(%ebp), %eax
	movl	$2, (%eax)
	jmp	L793
L800:
	movl	-52(%ebp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	jne	L801
	movl	-40(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%edx, 12(%eax)
	movl	-48(%ebp), %eax
	movl	4(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%edx, 8(%eax)
	jmp	L793
L801:
	movl	-52(%ebp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	L802
	movl	-40(%ebp), %eax
	movl	$7, (%eax)
	jmp	L793
L802:
	movl	-40(%ebp), %eax
	movl	$9, (%eax)
	movl	12(%ebp), %eax
	movl	$LC25, 24(%eax)
	movl	$-3, 16(%ebp)
	movl	8(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 32(%eax)
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 28(%eax)
	movl	12(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	-20(%ebp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	12(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 48(%eax)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_inflate_flush
	jmp	L797
L785:
	movl	-40(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	L803
L806:
	cmpl	$0, -24(%ebp)
	je	L804
	movl	$0, 16(%ebp)
	jmp	L845
L804:
	movl	8(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 32(%eax)
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 28(%eax)
	movl	12(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	-20(%ebp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	12(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 48(%eax)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_inflate_flush
	jmp	L797
L845:
	subl	$1, -24(%ebp)
	movl	-20(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -20(%ebp)
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	-16(%ebp), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%eax, -12(%ebp)
	addl	$8, -16(%ebp)
L803:
	movl	-16(%ebp), %eax
	cmpl	-44(%ebp), %eax
	jb	L806
	movl	-40(%ebp), %eax
	movl	4(%eax), %edx
	movl	-44(%ebp), %eax
	movl	_inflate_mask(,%eax,4), %eax
	andl	-12(%ebp), %eax
	addl	%eax, %edx
	movl	-40(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	-44(%ebp), %eax
	movl	%eax, %ecx
	shrl	%cl, -12(%ebp)
	movl	-44(%ebp), %eax
	subl	%eax, -16(%ebp)
	movl	-40(%ebp), %eax
	movzbl	17(%eax), %eax
	movzbl	%al, %edx
	movl	-40(%ebp), %eax
	movl	%edx, 12(%eax)
	movl	-40(%ebp), %eax
	movl	24(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-40(%ebp), %eax
	movl	$3, (%eax)
L784:
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	L807
L810:
	cmpl	$0, -24(%ebp)
	je	L808
	movl	$0, 16(%ebp)
	jmp	L846
L808:
	movl	8(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 32(%eax)
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 28(%eax)
	movl	12(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	-20(%ebp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	12(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 48(%eax)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_inflate_flush
	jmp	L797
L846:
	subl	$1, -24(%ebp)
	movl	-20(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -20(%ebp)
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	-16(%ebp), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%eax, -12(%ebp)
	addl	$8, -16(%ebp)
L807:
	movl	-16(%ebp), %eax
	cmpl	-44(%ebp), %eax
	jb	L810
	movl	-40(%ebp), %eax
	movl	8(%eax), %edx
	movl	-44(%ebp), %eax
	movl	_inflate_mask(,%eax,4), %eax
	andl	-12(%ebp), %eax
	sall	$3, %eax
	addl	%edx, %eax
	movl	%eax, -48(%ebp)
	movl	-48(%ebp), %eax
	movzbl	1(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, %ecx
	shrl	%cl, -12(%ebp)
	movl	-48(%ebp), %eax
	movzbl	1(%eax), %eax
	movzbl	%al, %eax
	subl	%eax, -16(%ebp)
	movl	-48(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -52(%ebp)
	movl	-52(%ebp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	L811
	movl	-52(%ebp), %eax
	andl	$15, %eax
	movl	%eax, %edx
	movl	-40(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-48(%ebp), %eax
	movl	4(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%edx, 12(%eax)
	movl	-40(%ebp), %eax
	movl	$4, (%eax)
	jmp	L793
L811:
	movl	-52(%ebp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	jne	L812
	movl	-40(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%edx, 12(%eax)
	movl	-48(%ebp), %eax
	movl	4(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%edx, 8(%eax)
	jmp	L793
L812:
	movl	-40(%ebp), %eax
	movl	$9, (%eax)
	movl	12(%ebp), %eax
	movl	$LC26, 24(%eax)
	movl	$-3, 16(%ebp)
	movl	8(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 32(%eax)
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 28(%eax)
	movl	12(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	-20(%ebp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	12(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 48(%eax)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_inflate_flush
	jmp	L797
L783:
	movl	-40(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	L813
L816:
	cmpl	$0, -24(%ebp)
	je	L814
	movl	$0, 16(%ebp)
	jmp	L847
L814:
	movl	8(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 32(%eax)
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 28(%eax)
	movl	12(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	-20(%ebp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	12(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 48(%eax)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_inflate_flush
	jmp	L797
L847:
	subl	$1, -24(%ebp)
	movl	-20(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -20(%ebp)
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	-16(%ebp), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%eax, -12(%ebp)
	addl	$8, -16(%ebp)
L813:
	movl	-16(%ebp), %eax
	cmpl	-44(%ebp), %eax
	jb	L816
	movl	-40(%ebp), %eax
	movl	12(%eax), %edx
	movl	-44(%ebp), %eax
	movl	_inflate_mask(,%eax,4), %eax
	andl	-12(%ebp), %eax
	addl	%eax, %edx
	movl	-40(%ebp), %eax
	movl	%edx, 12(%eax)
	movl	-44(%ebp), %eax
	movl	%eax, %ecx
	shrl	%cl, -12(%ebp)
	movl	-44(%ebp), %eax
	subl	%eax, -16(%ebp)
	movl	-40(%ebp), %eax
	movl	$5, (%eax)
L782:
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	-28(%ebp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	jnb	L817
	movl	8(%ebp), %eax
	movl	40(%eax), %edx
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	-28(%ebp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %ecx
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%edx, %eax
	jmp	L818
L817:
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	negl	%eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	addl	%edx, %eax
L818:
	movl	%eax, -36(%ebp)
	jmp	L819
L830:
	cmpl	$0, -32(%ebp)
	jne	L820
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	cmpl	%eax, -28(%ebp)
	jne	L821
	movl	8(%ebp), %eax
	movl	44(%eax), %edx
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	cmpl	%eax, %edx
	je	L821
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	%eax, -28(%ebp)
	jnb	L822
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	subl	-28(%ebp), %eax
	subl	$1, %eax
	jmp	L823
L822:
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	subl	-28(%ebp), %eax
L823:
	movl	%eax, -32(%ebp)
L821:
	cmpl	$0, -32(%ebp)
	jne	L820
	movl	8(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 48(%eax)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_inflate_flush
	movl	%eax, 16(%ebp)
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	%eax, -28(%ebp)
	jnb	L824
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	subl	-28(%ebp), %eax
	subl	$1, %eax
	jmp	L825
L824:
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	subl	-28(%ebp), %eax
L825:
	movl	%eax, -32(%ebp)
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	cmpl	%eax, -28(%ebp)
	jne	L826
	movl	8(%ebp), %eax
	movl	44(%eax), %edx
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	cmpl	%eax, %edx
	je	L826
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	%eax, -28(%ebp)
	jnb	L827
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	subl	-28(%ebp), %eax
	subl	$1, %eax
	jmp	L828
L827:
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	subl	-28(%ebp), %eax
L828:
	movl	%eax, -32(%ebp)
L826:
	cmpl	$0, -32(%ebp)
	jne	L820
	movl	8(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 32(%eax)
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 28(%eax)
	movl	12(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	-20(%ebp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	12(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 48(%eax)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_inflate_flush
	jmp	L797
L820:
	movl	$0, 16(%ebp)
	movl	-36(%ebp), %edx
	leal	1(%edx), %eax
	movl	%eax, -36(%ebp)
	movl	-28(%ebp), %eax
	leal	1(%eax), %ecx
	movl	%ecx, -28(%ebp)
	movzbl	(%edx), %edx
	movb	%dl, (%eax)
	subl	$1, -32(%ebp)
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	cmpl	%eax, -36(%ebp)
	jne	L829
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, -36(%ebp)
L829:
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	leal	-1(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%edx, 4(%eax)
L819:
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	L830
	movl	-40(%ebp), %eax
	movl	$0, (%eax)
	jmp	L793
L781:
	cmpl	$0, -32(%ebp)
	jne	L831
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	cmpl	%eax, -28(%ebp)
	jne	L832
	movl	8(%ebp), %eax
	movl	44(%eax), %edx
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	cmpl	%eax, %edx
	je	L832
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	%eax, -28(%ebp)
	jnb	L833
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	subl	-28(%ebp), %eax
	subl	$1, %eax
	jmp	L834
L833:
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	subl	-28(%ebp), %eax
L834:
	movl	%eax, -32(%ebp)
L832:
	cmpl	$0, -32(%ebp)
	jne	L831
	movl	8(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 48(%eax)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_inflate_flush
	movl	%eax, 16(%ebp)
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	%eax, -28(%ebp)
	jnb	L835
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	subl	-28(%ebp), %eax
	subl	$1, %eax
	jmp	L836
L835:
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	subl	-28(%ebp), %eax
L836:
	movl	%eax, -32(%ebp)
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	cmpl	%eax, -28(%ebp)
	jne	L837
	movl	8(%ebp), %eax
	movl	44(%eax), %edx
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	cmpl	%eax, %edx
	je	L837
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	%eax, -28(%ebp)
	jnb	L838
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	subl	-28(%ebp), %eax
	subl	$1, %eax
	jmp	L839
L838:
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	subl	-28(%ebp), %eax
L839:
	movl	%eax, -32(%ebp)
L837:
	cmpl	$0, -32(%ebp)
	jne	L831
	movl	8(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 32(%eax)
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 28(%eax)
	movl	12(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	-20(%ebp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	12(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 48(%eax)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_inflate_flush
	jmp	L797
L831:
	movl	$0, 16(%ebp)
	movl	-40(%ebp), %eax
	movl	8(%eax), %ecx
	movl	-28(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -28(%ebp)
	movl	%ecx, %edx
	movb	%dl, (%eax)
	subl	$1, -32(%ebp)
	movl	-40(%ebp), %eax
	movl	$0, (%eax)
	jmp	L793
L780:
	movl	8(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 48(%eax)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_inflate_flush
	movl	%eax, 16(%ebp)
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	%eax, -28(%ebp)
	jnb	L840
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	subl	-28(%ebp), %eax
	subl	$1, %eax
	jmp	L841
L840:
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	subl	-28(%ebp), %eax
L841:
	movl	%eax, -32(%ebp)
	movl	8(%ebp), %eax
	movl	44(%eax), %edx
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	cmpl	%eax, %edx
	je	L842
	movl	8(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 32(%eax)
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 28(%eax)
	movl	12(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	-20(%ebp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	12(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 48(%eax)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_inflate_flush
	jmp	L797
L842:
	movl	-40(%ebp), %eax
	movl	$8, (%eax)
L779:
	movl	$1, 16(%ebp)
	movl	8(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 32(%eax)
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 28(%eax)
	movl	12(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	-20(%ebp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	12(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 48(%eax)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_inflate_flush
	jmp	L797
L777:
	movl	$-3, 16(%ebp)
	movl	8(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 32(%eax)
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 28(%eax)
	movl	12(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	-20(%ebp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	12(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 48(%eax)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_inflate_flush
	jmp	L797
L776:
	movl	$-2, 16(%ebp)
	movl	8(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 32(%eax)
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 28(%eax)
	movl	12(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	-20(%ebp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	12(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 48(%eax)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_inflate_flush
	jmp	L797
L793:
	jmp	L843
L797:
	addl	$80, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
	.globl	_inflate_codes_free
	.def	_inflate_codes_free;	.scl	2;	.type	32;	.endef
_inflate_codes_free:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	12(%ebp), %eax
	movl	36(%eax), %eax
	movl	12(%ebp), %edx
	movl	40(%edx), %edx
	movl	8(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
	nop
	leave
	ret
	.globl	_inflate_mask
	.data
	.align 32
_inflate_mask:
	.long	0
	.long	1
	.long	3
	.long	7
	.long	15
	.long	31
	.long	63
	.long	127
	.long	255
	.long	511
	.long	1023
	.long	2047
	.long	4095
	.long	8191
	.long	16383
	.long	32767
	.long	65535
	.text
	.globl	_inflate_flush
	.def	_inflate_flush;	.scl	2;	.type	32;	.endef
_inflate_flush:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	cmpl	%eax, -20(%ebp)
	ja	L850
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	jmp	L851
L850:
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
L851:
	subl	-20(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, -12(%ebp)
	jbe	L852
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
L852:
	cmpl	$0, -12(%ebp)
	je	L853
	cmpl	$-5, 16(%ebp)
	jne	L853
	movl	$0, 16(%ebp)
L853:
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	subl	-12(%ebp), %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 16(%eax)
	movl	12(%ebp), %eax
	movl	20(%eax), %edx
	movl	-12(%ebp), %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 20(%eax)
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	L854
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	8(%ebp), %edx
	movl	56(%edx), %edx
	movl	-12(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	-20(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
	movl	8(%ebp), %edx
	movl	%eax, 56(%edx)
	movl	8(%ebp), %eax
	movl	56(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 48(%eax)
L854:
	cmpl	$0, -16(%ebp)
	je	L855
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_memcpy
	movl	-12(%ebp), %eax
	addl	%eax, -16(%ebp)
L855:
	movl	-12(%ebp), %eax
	addl	%eax, -20(%ebp)
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	cmpl	%eax, -20(%ebp)
	jne	L856
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	8(%ebp), %eax
	movl	48(%eax), %edx
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	cmpl	%eax, %edx
	jne	L857
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 48(%eax)
L857:
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	subl	-20(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, -12(%ebp)
	jbe	L858
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
L858:
	cmpl	$0, -12(%ebp)
	je	L859
	cmpl	$-5, 16(%ebp)
	jne	L859
	movl	$0, 16(%ebp)
L859:
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	subl	-12(%ebp), %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 16(%eax)
	movl	12(%ebp), %eax
	movl	20(%eax), %edx
	movl	-12(%ebp), %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 20(%eax)
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	L860
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	8(%ebp), %edx
	movl	56(%edx), %edx
	movl	-12(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	-20(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
	movl	8(%ebp), %edx
	movl	%eax, 56(%edx)
	movl	8(%ebp), %eax
	movl	56(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 48(%eax)
L860:
	cmpl	$0, -16(%ebp)
	je	L861
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_memcpy
	movl	-12(%ebp), %eax
	addl	%eax, -16(%ebp)
L861:
	movl	-12(%ebp), %eax
	addl	%eax, -20(%ebp)
L856:
	movl	12(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 12(%eax)
	movl	8(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, 44(%eax)
	movl	16(%ebp), %eax
	leave
	ret
	.globl	_inflate_fast
	.def	_inflate_fast;	.scl	2;	.type	32;	.endef
_inflate_fast:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$64, %esp
	movl	28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	24(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	24(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	24(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	24(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	%eax, -28(%ebp)
	jnb	L864
	movl	24(%ebp), %eax
	movl	44(%eax), %eax
	subl	-28(%ebp), %eax
	subl	$1, %eax
	jmp	L865
L864:
	movl	24(%ebp), %eax
	movl	40(%eax), %eax
	subl	-28(%ebp), %eax
L865:
	movl	%eax, -32(%ebp)
	movl	8(%ebp), %eax
	movl	_inflate_mask(,%eax,4), %eax
	movl	%eax, -44(%ebp)
	movl	12(%ebp), %eax
	movl	_inflate_mask(,%eax,4), %eax
	movl	%eax, -48(%ebp)
	jmp	L866
L867:
	subl	$1, -24(%ebp)
	movl	-20(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -20(%ebp)
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	-16(%ebp), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%eax, -12(%ebp)
	addl	$8, -16(%ebp)
L866:
	cmpl	$19, -16(%ebp)
	jbe	L867
	movl	-12(%ebp), %eax
	andl	-44(%ebp), %eax
	leal	0(,%eax,8), %edx
	movl	16(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	jne	L868
	movl	-4(%ebp), %eax
	movzbl	1(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, %ecx
	shrl	%cl, -12(%ebp)
	movl	-4(%ebp), %eax
	movzbl	1(%eax), %eax
	movzbl	%al, %eax
	subl	%eax, -16(%ebp)
	movl	-4(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-28(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -28(%ebp)
	movl	%ecx, %edx
	movb	%dl, (%eax)
	subl	$1, -32(%ebp)
	jmp	L869
L868:
	movl	-4(%ebp), %eax
	movzbl	1(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, %ecx
	shrl	%cl, -12(%ebp)
	movl	-4(%ebp), %eax
	movzbl	1(%eax), %eax
	movzbl	%al, %eax
	subl	%eax, -16(%ebp)
	movl	-8(%ebp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	L870
	andl	$15, -8(%ebp)
	movl	-4(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	_inflate_mask(,%eax,4), %eax
	andl	-12(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -36(%ebp)
	movl	-8(%ebp), %eax
	movl	%eax, %ecx
	shrl	%cl, -12(%ebp)
	movl	-8(%ebp), %eax
	subl	%eax, -16(%ebp)
	jmp	L871
L872:
	subl	$1, -24(%ebp)
	movl	-20(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -20(%ebp)
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	-16(%ebp), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%eax, -12(%ebp)
	addl	$8, -16(%ebp)
L871:
	cmpl	$14, -16(%ebp)
	jbe	L872
	movl	-12(%ebp), %eax
	andl	-48(%ebp), %eax
	leal	0(,%eax,8), %edx
	movl	20(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
L884:
	movl	-4(%ebp), %eax
	movzbl	1(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, %ecx
	shrl	%cl, -12(%ebp)
	movl	-4(%ebp), %eax
	movzbl	1(%eax), %eax
	movzbl	%al, %eax
	subl	%eax, -16(%ebp)
	movl	-8(%ebp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	L873
	andl	$15, -8(%ebp)
	jmp	L874
L875:
	subl	$1, -24(%ebp)
	movl	-20(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -20(%ebp)
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	-16(%ebp), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%eax, -12(%ebp)
	addl	$8, -16(%ebp)
L874:
	movl	-16(%ebp), %eax
	cmpl	-8(%ebp), %eax
	jb	L875
	movl	-4(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	_inflate_mask(,%eax,4), %eax
	andl	-12(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -52(%ebp)
	movl	-8(%ebp), %eax
	movl	%eax, %ecx
	shrl	%cl, -12(%ebp)
	movl	-8(%ebp), %eax
	subl	%eax, -16(%ebp)
	movl	-36(%ebp), %eax
	subl	%eax, -32(%ebp)
	movl	24(%ebp), %eax
	movl	36(%eax), %eax
	movl	-28(%ebp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	%eax, -52(%ebp)
	ja	L876
	movl	-52(%ebp), %eax
	negl	%eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %edx
	leal	1(%edx), %eax
	movl	%eax, -40(%ebp)
	movl	-28(%ebp), %eax
	leal	1(%eax), %ecx
	movl	%ecx, -28(%ebp)
	movzbl	(%edx), %edx
	movb	%dl, (%eax)
	subl	$1, -36(%ebp)
	movl	-40(%ebp), %edx
	leal	1(%edx), %eax
	movl	%eax, -40(%ebp)
	movl	-28(%ebp), %eax
	leal	1(%eax), %ecx
	movl	%ecx, -28(%ebp)
	movzbl	(%edx), %edx
	movb	%dl, (%eax)
	subl	$1, -36(%ebp)
	jmp	L879
L876:
	movl	24(%ebp), %eax
	movl	36(%eax), %eax
	movl	-28(%ebp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	-52(%ebp), %eax
	subl	%edx, %eax
	movl	%eax, -8(%ebp)
	movl	24(%ebp), %eax
	movl	40(%eax), %eax
	movl	-8(%ebp), %edx
	negl	%edx
	addl	%edx, %eax
	movl	%eax, -40(%ebp)
	movl	-36(%ebp), %eax
	cmpl	-8(%ebp), %eax
	jbe	L879
	movl	-8(%ebp), %eax
	subl	%eax, -36(%ebp)
L878:
	movl	-40(%ebp), %edx
	leal	1(%edx), %eax
	movl	%eax, -40(%ebp)
	movl	-28(%ebp), %eax
	leal	1(%eax), %ecx
	movl	%ecx, -28(%ebp)
	movzbl	(%edx), %edx
	movb	%dl, (%eax)
	subl	$1, -8(%ebp)
	cmpl	$0, -8(%ebp)
	jne	L878
	movl	24(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, -40(%ebp)
L879:
	movl	-40(%ebp), %edx
	leal	1(%edx), %eax
	movl	%eax, -40(%ebp)
	movl	-28(%ebp), %eax
	leal	1(%eax), %ecx
	movl	%ecx, -28(%ebp)
	movzbl	(%edx), %edx
	movb	%dl, (%eax)
	subl	$1, -36(%ebp)
	cmpl	$0, -36(%ebp)
	jne	L879
	jmp	L890
L873:
	movl	-8(%ebp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	jne	L881
	movl	-4(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	_inflate_mask(,%eax,4), %eax
	andl	-12(%ebp), %eax
	sall	$3, %eax
	addl	%edx, %eax
	movl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
	jmp	L884
L881:
	movl	28(%ebp), %eax
	movl	$LC26, 24(%eax)
	movl	-16(%ebp), %eax
	shrl	$3, %eax
	movl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
	addl	%eax, -24(%ebp)
	movl	-36(%ebp), %eax
	negl	%eax
	addl	%eax, -20(%ebp)
	andl	$7, -16(%ebp)
	movl	24(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 32(%eax)
	movl	24(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 28(%eax)
	movl	28(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	28(%ebp), %eax
	movl	8(%eax), %edx
	movl	28(%ebp), %eax
	movl	(%eax), %eax
	movl	-20(%ebp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, %edx
	movl	28(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	28(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, (%eax)
	movl	24(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 48(%eax)
	movl	$-3, %eax
	jmp	L883
L890:
	jmp	L869
L870:
	movl	-8(%ebp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	jne	L885
	movl	-4(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	_inflate_mask(,%eax,4), %eax
	andl	-12(%ebp), %eax
	sall	$3, %eax
	addl	%edx, %eax
	movl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	jne	L868
	movl	-4(%ebp), %eax
	movzbl	1(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, %ecx
	shrl	%cl, -12(%ebp)
	movl	-4(%ebp), %eax
	movzbl	1(%eax), %eax
	movzbl	%al, %eax
	subl	%eax, -16(%ebp)
	movl	-4(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-28(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -28(%ebp)
	movl	%ecx, %edx
	movb	%dl, (%eax)
	subl	$1, -32(%ebp)
	jmp	L869
L885:
	movl	-8(%ebp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	L887
	movl	-16(%ebp), %eax
	shrl	$3, %eax
	movl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
	addl	%eax, -24(%ebp)
	movl	-36(%ebp), %eax
	negl	%eax
	addl	%eax, -20(%ebp)
	andl	$7, -16(%ebp)
	movl	24(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 32(%eax)
	movl	24(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 28(%eax)
	movl	28(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	28(%ebp), %eax
	movl	8(%eax), %edx
	movl	28(%ebp), %eax
	movl	(%eax), %eax
	movl	-20(%ebp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, %edx
	movl	28(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	28(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, (%eax)
	movl	24(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 48(%eax)
	movl	$1, %eax
	jmp	L883
L887:
	movl	28(%ebp), %eax
	movl	$LC25, 24(%eax)
	movl	-16(%ebp), %eax
	shrl	$3, %eax
	movl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
	addl	%eax, -24(%ebp)
	movl	-36(%ebp), %eax
	negl	%eax
	addl	%eax, -20(%ebp)
	andl	$7, -16(%ebp)
	movl	24(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 32(%eax)
	movl	24(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 28(%eax)
	movl	28(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	28(%ebp), %eax
	movl	8(%eax), %edx
	movl	28(%ebp), %eax
	movl	(%eax), %eax
	movl	-20(%ebp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, %edx
	movl	28(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	28(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, (%eax)
	movl	24(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 48(%eax)
	movl	$-3, %eax
	jmp	L883
L869:
	cmpl	$257, -32(%ebp)
	jbe	L888
	cmpl	$9, -24(%ebp)
	ja	L866
L888:
	movl	-16(%ebp), %eax
	shrl	$3, %eax
	movl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
	addl	%eax, -24(%ebp)
	movl	-36(%ebp), %eax
	negl	%eax
	addl	%eax, -20(%ebp)
	andl	$7, -16(%ebp)
	movl	24(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 32(%eax)
	movl	24(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 28(%eax)
	movl	28(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	28(%ebp), %eax
	movl	8(%eax), %edx
	movl	28(%ebp), %eax
	movl	(%eax), %eax
	movl	-20(%ebp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, %edx
	movl	28(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	28(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, (%eax)
	movl	24(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 48(%eax)
	movl	$0, %eax
L883:
	leave
	ret
	.section .rdata,"dr"
LC27:
	.ascii "1.0.4P\0"
	.text
	.globl	_zlibVersion
	.def	_zlibVersion;	.scl	2;	.type	32;	.endef
_zlibVersion:
	pushl	%ebp
	movl	%esp, %ebp
	movl	$LC27, %eax
	popl	%ebp
	ret
	.globl	_zcalloc
	.def	_zcalloc;	.scl	2;	.type	32;	.endef
_zcalloc:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	cmpl	$0, 8(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_calloc
	leave
	ret
	.globl	_zcfree
	.def	_zcfree;	.scl	2;	.type	32;	.endef
_zcfree:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	cmpl	$0, 8(%ebp)
	leave
	ret
	.globl	_adler32
	.def	_adler32;	.scl	2;	.type	32;	.endef
_adler32:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$16, %esp
	movl	8(%ebp), %eax
	movzwl	%ax, %eax
	movl	%eax, -4(%ebp)
	movl	8(%ebp), %eax
	shrl	$16, %eax
	movl	%eax, -8(%ebp)
	cmpl	$0, 12(%ebp)
	jne	L902
	movl	$1, %eax
	jmp	L901
L907:
	movl	$5552, %eax
	cmpl	$5552, 16(%ebp)
	cmovbe	16(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	subl	%eax, 16(%ebp)
	jmp	L903
L904:
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	addl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	addl	%eax, -8(%ebp)
	movl	12(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	addl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	addl	%eax, -8(%ebp)
	movl	12(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	addl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	addl	%eax, -8(%ebp)
	movl	12(%ebp), %eax
	addl	$3, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	addl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	addl	%eax, -8(%ebp)
	movl	12(%ebp), %eax
	addl	$4, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	addl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	addl	%eax, -8(%ebp)
	movl	12(%ebp), %eax
	addl	$5, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	addl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	addl	%eax, -8(%ebp)
	movl	12(%ebp), %eax
	addl	$6, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	addl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	addl	%eax, -8(%ebp)
	movl	12(%ebp), %eax
	addl	$7, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	addl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	addl	%eax, -8(%ebp)
	movl	12(%ebp), %eax
	addl	$8, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	addl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	addl	%eax, -8(%ebp)
	movl	12(%ebp), %eax
	addl	$9, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	addl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	addl	%eax, -8(%ebp)
	movl	12(%ebp), %eax
	addl	$10, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	addl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	addl	%eax, -8(%ebp)
	movl	12(%ebp), %eax
	addl	$11, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	addl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	addl	%eax, -8(%ebp)
	movl	12(%ebp), %eax
	addl	$12, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	addl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	addl	%eax, -8(%ebp)
	movl	12(%ebp), %eax
	addl	$13, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	addl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	addl	%eax, -8(%ebp)
	movl	12(%ebp), %eax
	addl	$14, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	addl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	addl	%eax, -8(%ebp)
	movl	12(%ebp), %eax
	addl	$15, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	addl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	addl	%eax, -8(%ebp)
	addl	$16, 12(%ebp)
	subl	$16, -12(%ebp)
L903:
	cmpl	$15, -12(%ebp)
	jg	L904
	cmpl	$0, -12(%ebp)
	je	L905
L906:
	movl	12(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, 12(%ebp)
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	addl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	addl	%eax, -8(%ebp)
	subl	$1, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jne	L906
L905:
	movl	-4(%ebp), %ecx
	movl	$-2146992015, %edx
	movl	%ecx, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$15, %eax
	imull	$65521, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -4(%ebp)
	movl	-8(%ebp), %ecx
	movl	$-2146992015, %edx
	movl	%ecx, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$15, %eax
	imull	$65521, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -8(%ebp)
L902:
	cmpl	$0, 16(%ebp)
	jne	L907
	movl	-8(%ebp), %eax
	sall	$16, %eax
	orl	-4(%ebp), %eax
L901:
	leave
	ret
	.globl	_compress2
	.def	_compress2;	.scl	2;	.type	32;	.endef
_compress2:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$88, %esp
	movl	16(%ebp), %eax
	movl	%eax, -68(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -64(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -52(%ebp)
	movl	-52(%ebp), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	L909
	movl	$-5, %eax
	jmp	L915
L909:
	movl	$0, -36(%ebp)
	movl	$0, -32(%ebp)
	movl	$0, -28(%ebp)
	movl	$56, 12(%esp)
	movl	$LC27, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	_deflateInit_
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	L911
	movl	-12(%ebp), %eax
	jmp	L915
L911:
	movl	$5, 4(%esp)
	leal	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	_deflate
	movl	%eax, -12(%ebp)
	cmpl	$1, -12(%ebp)
	je	L912
	leal	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	_deflateEnd
	cmpl	$0, -12(%ebp)
	je	L913
	movl	-12(%ebp), %eax
	jmp	L915
L913:
	movl	$-5, %eax
	jmp	L915
L912:
	movl	-48(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	leal	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	_deflateEnd
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
L915:
	leave
	ret
	.globl	_compress
	.def	_compress;	.scl	2;	.type	32;	.endef
_compress:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$-1, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_compress2
	leave
	ret
	.globl	_uncompress
	.def	_uncompress;	.scl	2;	.type	32;	.endef
_uncompress:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$88, %esp
	movl	16(%ebp), %eax
	movl	%eax, -68(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -64(%ebp)
	movl	-64(%ebp), %eax
	cmpl	%eax, 20(%ebp)
	je	L919
	movl	$-5, %eax
	jmp	L926
L919:
	movl	8(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -52(%ebp)
	movl	-52(%ebp), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	L921
	movl	$-5, %eax
	jmp	L926
L921:
	movl	$0, -36(%ebp)
	movl	$0, -32(%ebp)
	movl	$56, 8(%esp)
	movl	$LC27, 4(%esp)
	leal	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	_inflateInit_
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	L922
	movl	-12(%ebp), %eax
	jmp	L926
L922:
	movl	$5, 4(%esp)
	leal	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	_inflate
	movl	%eax, -12(%ebp)
	cmpl	$1, -12(%ebp)
	je	L923
	leal	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	_inflateEnd
	cmpl	$0, -12(%ebp)
	je	L924
	movl	-12(%ebp), %eax
	jmp	L926
L924:
	movl	$-5, %eax
	jmp	L926
L923:
	movl	-48(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	leal	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	_inflateEnd
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
L926:
	leave
	ret
	.data
	.align 4
_my_version.58969:
	.long	LC27
.lcomm _static_init_done.59172,4,4
	.ident	"GCC: (GNU) 9.3-win32 20200320"
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_calloc;	.scl	2;	.type	32;	.endef
	.def	_free;	.scl	2;	.type	32;	.endef
