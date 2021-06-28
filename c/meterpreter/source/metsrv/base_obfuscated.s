	.file	"base.c"
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
	.globl	_remote_request_core_console_write
	.def	_remote_request_core_console_write;	.scl	2;	.type	32;	.endef
_remote_request_core_console_write:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	movl	$0, %eax
push %eax
pop %eax
	popl	%ebp
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_remote_response_core_console_write
	.def	_remote_response_core_console_write;	.scl	2;	.type	32;	.endef
_remote_response_core_console_write:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	movl	$0, %eax
push %eax
pop %eax
	popl	%ebp
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_baseCommands
	.data
	.align 32
_baseCommands:
	.long	9
	.long	_remote_request_core_console_write
	.long	0
	.long	65536
	.space 60
	.long	268435457
	.long	_remote_response_core_console_write
	.long	0
	.long	0
	.space 60
	.long	0
	.space 8
	.long	4
	.long	_remote_request_core_channel_open
	.long	0
	.long	0
	.space 60
	.long	0
	.long	_remote_response_core_channel_open
	.long	0
	.long	0
	.space 60
	.long	0
	.space 8
	.long	8
	.long	_remote_request_core_channel_write
	.long	0
	.long	0
	.space 60
	.long	0
	.long	0
	.long	0
	.long	0
	.space 60
	.long	0
	.space 8
	.long	1
	.long	_remote_request_core_channel_close
	.long	0
	.long	0
	.space 60
	.long	0
	.long	_remote_response_core_channel_close
	.long	0
	.long	0
	.space 60
	.long	0
	.space 8
	.long	5
	.long	_remote_request_core_channel_read
	.long	0
	.long	0
	.space 60
	.long	0
	.long	0
	.long	0
	.long	0
	.space 60
	.long	0
	.space 8
	.long	6
	.long	_remote_request_core_channel_seek
	.long	0
	.long	0
	.space 60
	.long	0
	.long	0
	.long	0
	.long	0
	.space 60
	.long	0
	.space 8
	.long	2
	.long	_remote_request_core_channel_eof
	.long	0
	.long	0
	.space 60
	.long	0
	.long	0
	.long	0
	.long	0
	.space 60
	.long	0
	.space 8
	.long	7
	.long	_remote_request_core_channel_tell
	.long	0
	.long	0
	.space 60
	.long	0
	.long	0
	.long	0
	.long	0
	.space 60
	.long	0
	.space 8
	.long	3
	.long	_remote_request_core_channel_interact
	.long	0
	.long	0
	.space 60
	.long	0
	.long	0
	.long	0
	.long	0
	.space 60
	.long	0
	.space 8
	.long	16
	.long	_request_negotiate_aes_key
	.long	0
	.long	0
	.space 60
	.long	0
	.long	0
	.long	0
	.long	0
	.space 60
	.long	0
	.space 8
	.long	32
	.long	_remote_request_core_transport_set_timeouts
	.long	0
	.long	0
	.space 60
	.long	0
	.long	0
	.long	0
	.long	0
	.space 60
	.long	0
	.space 8
	.long	26
	.long	_remote_request_core_transport_getcerthash
	.long	0
	.long	0
	.space 60
	.long	0
	.long	0
	.long	0
	.long	0
	.space 60
	.long	0
	.space 8
	.long	31
	.long	_remote_request_core_transport_setcerthash
	.long	0
	.long	0
	.space 60
	.long	0
	.long	0
	.long	0
	.long	0
	.space 60
	.long	0
	.space 8
	.long	27
	.long	_remote_request_core_transport_list
	.long	0
	.long	0
	.space 60
	.long	0
	.long	0
	.long	0
	.long	0
	.space 60
	.long	0
	.space 8
	.long	33
	.long	0
	.long	_remote_request_core_transport_sleep
	.long	0
	.space 60
	.long	0
	.long	0
	.long	0
	.long	0
	.space 60
	.long	0
	.space 8
	.long	25
	.long	0
	.long	_remote_request_core_transport_change
	.long	0
	.space 60
	.long	0
	.long	0
	.long	0
	.long	0
	.space 60
	.long	0
	.space 8
	.long	28
	.long	0
	.long	_remote_request_core_transport_next
	.long	0
	.space 60
	.long	0
	.long	0
	.long	0
	.long	0
	.space 60
	.long	0
	.space 8
	.long	29
	.long	0
	.long	_remote_request_core_transport_prev
	.long	0
	.space 60
	.long	0
	.long	0
	.long	0
	.long	0
	.space 60
	.long	0
	.space 8
	.long	24
	.long	_remote_request_core_transport_add
	.long	0
	.long	0
	.space 60
	.long	0
	.long	0
	.long	0
	.long	0
	.space 60
	.long	0
	.space 8
	.long	30
	.long	_remote_request_core_transport_remove
	.long	0
	.long	0
	.space 60
	.long	0
	.long	0
	.long	0
	.long	0
	.space 60
	.long	0
	.space 8
	.long	14
	.long	0
	.long	_remote_request_core_migrate
	.long	0
	.space 60
	.long	0
	.long	0
	.long	0
	.long	0
	.space 60
	.long	0
	.space 8
	.long	23
	.long	0
	.long	_remote_request_core_shutdown
	.long	0
	.space 60
	.long	0
	.long	0
	.long	0
	.long	0
	.space 60
	.long	0
	.space 8
	.long	0
	.long	0
	.long	0
	.long	0
	.space 60
	.long	0
	.long	0
	.long	0
	.long	0
	.space 60
	.long	0
	.space 8
	.globl	_extensionCommands
	.bss
	.align 4
_extensionCommands:
	.space 4
	.text
	.globl	_register_base_dispatch_routines
	.def	_register_base_dispatch_routines;	.scl	2;	.type	32;	.endef
_register_base_dispatch_routines:
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
	movl	$_baseCommands, (%esp)
push %eax
pop %eax
	call	_command_register_all
push %eax
pop %eax
	movl	_extensionCommands, %eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	jmp	L7
push %eax
pop %eax
L9:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	156(%eax), %eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
L7:
	cmpl	$0, -12(%ebp)
push %eax
pop %eax
	je	L8
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %edx
push %eax
pop %eax
	movl	_baseCommands, %eax
push %eax
pop %eax
	cmpl	%eax, %edx
push %eax
pop %eax
	jne	L9
push %eax
pop %eax
L8:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_deregister_base_dispatch_routines
	.def	_deregister_base_dispatch_routines;	.scl	2;	.type	32;	.endef
_deregister_base_dispatch_routines:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$24, %esp
push %eax
pop %eax
	movl	$_baseCommands, (%esp)
push %eax
pop %eax
	call	_command_deregister_all
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
	.section .rdata,"dr"
	.align 4
LC2:
	.ascii "[COMMAND LIST] Listing current extension commands\0"
LC3:
	.ascii "[COMMAND LIST] Found: %u\0"
	.text
	.globl	_command_register_all
	.def	_command_register_all;	.scl	2;	.type	32;	.endef
_command_register_all:
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
	jmp	L13
push %eax
pop %eax
L14:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	imull	$164, %eax, %edx
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_command_register
push %eax
pop %eax
	addl	$1, -12(%ebp)
push %eax
pop %eax
L13:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	imull	$164, %eax, %edx
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
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
	movl	$LC2, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	_extensionCommands, %eax
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
	jmp	L15
push %eax
pop %eax
L16:
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC3, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	156(%eax), %eax
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
L15:
	cmpl	$0, -16(%ebp)
push %eax
pop %eax
	jne	L16
push %eax
pop %eax
	nop
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
	.section .rdata,"dr"
	.align 4
LC4:
	.ascii "Registering a new command (%u)...\0"
LC5:
	.ascii "Allocated memory...\0"
LC6:
	.ascii "Setting new command...\0"
LC7:
	.ascii "Fixing next/prev... %p\0"
LC8:
	.ascii "Done...\0"
	.text
	.globl	_command_register
	.def	_command_register;	.scl	2;	.type	32;	.endef
_command_register:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$40, %esp
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
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
	movl	$164, (%esp)
push %eax
pop %eax
	call	_malloc
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	cmpl	$0, -12(%ebp)
push %eax
pop %eax
	jne	L18
push %eax
pop %eax
	movl	$8, %eax
push %eax
pop %eax
	jmp	L19
push %eax
pop %eax
L18:
	movl	$LC5, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	$164, 8(%esp)
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
	call	_memcpy
push %eax
pop %eax
	movl	$LC6, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	_extensionCommands, %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L20
push %eax
pop %eax
	movl	_extensionCommands, %eax
push %eax
pop %eax
	movl	-12(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 160(%eax)
push %eax
pop %eax
L20:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC7, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	_extensionCommands, %edx
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 156(%eax)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	$0, 160(%eax)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, _extensionCommands
push %eax
pop %eax
	movl	$LC8, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	$0, %eax
push %eax
pop %eax
L19:
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_command_deregister_all
	.def	_command_deregister_all;	.scl	2;	.type	32;	.endef
_command_deregister_all:
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
	jmp	L22
push %eax
pop %eax
L23:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	imull	$164, %eax, %edx
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_command_deregister
push %eax
pop %eax
	addl	$1, -12(%ebp)
push %eax
pop %eax
L22:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	imull	$164, %eax, %edx
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L23
push %eax
pop %eax
	nop
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
	.globl	_command_deregister
	.def	_command_deregister;	.scl	2;	.type	32;	.endef
_command_deregister:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$40, %esp
push %eax
pop %eax
	movl	$1168, -20(%ebp)
push %eax
pop %eax
	movl	_extensionCommands, %eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	movl	$0, -16(%ebp)
push %eax
pop %eax
	jmp	L25
push %eax
pop %eax
L31:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %edx
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	cmpl	%eax, %edx
push %eax
pop %eax
	jne	L26
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	156(%eax), %eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	jmp	L25
push %eax
pop %eax
L26:
	cmpl	$0, -16(%ebp)
push %eax
pop %eax
	je	L27
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	156(%eax), %edx
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 156(%eax)
push %eax
pop %eax
	jmp	L28
push %eax
pop %eax
L27:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	156(%eax), %eax
push %eax
pop %eax
	movl	%eax, _extensionCommands
push %eax
pop %eax
L28:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	156(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L29
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	156(%eax), %eax
push %eax
pop %eax
	movl	-16(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 160(%eax)
push %eax
pop %eax
L29:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_free
push %eax
pop %eax
	movl	$0, -20(%ebp)
push %eax
pop %eax
	jmp	L30
push %eax
pop %eax
L25:
	cmpl	$0, -12(%ebp)
push %eax
pop %eax
	jne	L31
push %eax
pop %eax
L30:
	movl	-20(%ebp), %eax
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_commandThreadList
	.bss
	.align 4
_commandThreadList:
	.space 4
	.text
	.globl	_command_join_threads
	.def	_command_join_threads;	.scl	2;	.type	32;	.endef
_command_join_threads:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$40, %esp
push %eax
pop %eax
	jmp	L34
push %eax
pop %eax
L35:
	movl	_commandThreadList, %eax
push %eax
pop %eax
	movl	$0, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_list_get
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	cmpl	$0, -12(%ebp)
push %eax
pop %eax
	je	L34
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_thread_join
push %eax
pop %eax
L34:
	movl	_commandThreadList, %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_list_count
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L35
push %eax
pop %eax
	nop
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
	.section .rdata,"dr"
	.align 4
LC9:
	.ascii "[COMMAND] Executing command %u\0"
	.align 4
LC10:
	.ascii "[COMMAND] Failed to impersonate thread token (%u) (%u)\0"
	.align 4
LC11:
	.ascii "[COMMAND] Command arguments failed to validate\0"
	.align 4
LC12:
	.ascii "[DISPATCH] Packet type for %u is %u\0"
	.align 4
LC13:
	.ascii "[DISPATCH] executing inline request handler %u\0"
LC14:
	.ascii "yes\0"
LC15:
	.ascii "no\0"
	.align 4
LC16:
	.ascii "[DISPATCH] executed %u, continue %s\0"
	.align 4
LC17:
	.ascii "[DISPATCH] executing request handler %u\0"
	.align 4
LC18:
	.ascii "[DISPATCH] executing inline response handler %u\0"
	.align 4
LC19:
	.ascii "[DISPATCH] executing response handler %u\0"
	.align 4
LC20:
	.ascii "[COMMAND] Calling completion handlers...\0"
	.align 4
LC21:
	.ascii "[COMMAND] Completion handlers finished for %u.\0"
	.align 4
LC22:
	.ascii "[COMMAND] Packet is not local, destroying\0"
LC23:
	.ascii "[COMMAND] Packet destroyed\0"
LC24:
	.ascii "TRUE\0"
LC25:
	.ascii "FALSE\0"
	.align 4
LC26:
	.ascii "[COMMAND] Command processing finishing. Returning: %s\0"
	.text
	.globl	_command_process_inline
	.def	_command_process_inline;	.scl	2;	.type	32;	.endef
_command_process_inline:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$56, %esp
push %eax
pop %eax
	movl	$1, -12(%ebp)
push %eax
pop %eax
	movl	$0, -20(%ebp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	movl	%eax, -20(%ebp)
push %eax
pop %eax
	movl	-20(%ebp), %eax
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
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	28(%eax), %edx
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	32(%eax), %eax
push %eax
pop %eax
	cmpl	%eax, %edx
push %eax
pop %eax
	je	L37
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	32(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__ImpersonateLoggedOnUser@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L37
push %eax
pop %eax
	movl	__imp__GetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	-20(%ebp), %eax
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
L37:
	movl	16(%ebp), %eax
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
	call	_command_validate_arguments
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L38
push %eax
pop %eax
	movl	$LC11, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L60
push %eax
pop %eax
L38:
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_get_type
push %eax
pop %eax
	movl	%eax, -24(%ebp)
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	-20(%ebp), %eax
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
	cmpl	$11, -24(%ebp)
push %eax
pop %eax
	je	L40
push %eax
pop %eax
	cmpl	$11, -24(%ebp)
push %eax
pop %eax
	ja	L41
push %eax
pop %eax
	cmpl	$10, -24(%ebp)
push %eax
pop %eax
	je	L42
push %eax
pop %eax
	cmpl	$10, -24(%ebp)
push %eax
pop %eax
	ja	L41
push %eax
pop %eax
	cmpl	$0, -24(%ebp)
push %eax
pop %eax
	je	L42
push %eax
pop %eax
	cmpl	$1, -24(%ebp)
push %eax
pop %eax
	je	L40
push %eax
pop %eax
	jmp	L41
push %eax
pop %eax
L42:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	8(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L43
push %eax
pop %eax
	movl	-20(%ebp), %eax
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
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	8(%eax), %eax
push %eax
pop %eax
	leal	-28(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	16(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 4(%esp)
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
	testl	%eax, %eax
push %eax
pop %eax
	je	L44
push %eax
pop %eax
	cmpl	$0, -12(%ebp)
push %eax
pop %eax
	je	L44
push %eax
pop %eax
	movl	$1, %eax
push %eax
pop %eax
	jmp	L45
push %eax
pop %eax
L44:
	movl	$0, %eax
push %eax
pop %eax
L45:
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	cmpl	$0, -12(%ebp)
push %eax
pop %eax
	je	L46
push %eax
pop %eax
	movl	$LC14, %eax
push %eax
pop %eax
	jmp	L47
push %eax
pop %eax
L46:
	movl	$LC15, %eax
push %eax
pop %eax
L47:
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	-20(%ebp), %eax
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
	jmp	L41
push %eax
pop %eax
L43:
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC17, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	movl	16(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 4(%esp)
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
	movl	%eax, -28(%ebp)
push %eax
pop %eax
	jmp	L41
push %eax
pop %eax
L40:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	84(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L49
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC18, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	84(%eax), %eax
push %eax
pop %eax
	leal	-28(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	16(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 4(%esp)
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
	testl	%eax, %eax
push %eax
pop %eax
	je	L50
push %eax
pop %eax
	cmpl	$0, -12(%ebp)
push %eax
pop %eax
	je	L50
push %eax
pop %eax
	movl	$1, %eax
push %eax
pop %eax
	jmp	L51
push %eax
pop %eax
L50:
	movl	$0, %eax
push %eax
pop %eax
L51:
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	jmp	L61
push %eax
pop %eax
L49:
	movl	-20(%ebp), %eax
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
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	80(%eax), %eax
push %eax
pop %eax
	movl	16(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 4(%esp)
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
	movl	%eax, -28(%ebp)
push %eax
pop %eax
L61:
	nop
push %eax
pop %eax
L41:
	movl	$LC20, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	leal	-40(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$65538, 4(%esp)
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_get_tlv_string
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L53
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
L53:
	cmpl	$1, -24(%ebp)
push %eax
pop %eax
	je	L54
push %eax
pop %eax
	cmpl	$11, -24(%ebp)
push %eax
pop %eax
	jne	L55
push %eax
pop %eax
L54:
	cmpl	$0, -16(%ebp)
push %eax
pop %eax
	je	L55
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
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
	call	_packet_call_completion_handlers
push %eax
pop %eax
L55:
	movl	-20(%ebp), %eax
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
L60:
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	44(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L56
push %eax
pop %eax
	movl	$LC22, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_destroy
push %eax
pop %eax
	movl	$LC23, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
L56:
	cmpl	$0, -12(%ebp)
push %eax
pop %eax
	je	L57
push %eax
pop %eax
	movl	$LC24, %eax
push %eax
pop %eax
	jmp	L58
push %eax
pop %eax
L57:
	movl	$LC25, %eax
push %eax
pop %eax
L58:
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC26, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
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
LC27:
	.ascii "[COMMAND EXEC] Attempting to locate extension command %u (%p)\0"
	.align 4
LC28:
	.ascii "[COMMAND EXEC] Couldn't find extension command %u\0"
	.text
	.globl	_command_locate_extension
	.def	_command_locate_extension;	.scl	2;	.type	32;	.endef
_command_locate_extension:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$40, %esp
push %eax
pop %eax
	movl	_extensionCommands, %eax
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
	movl	$LC27, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	_extensionCommands, %eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	jmp	L63
push %eax
pop %eax
L66:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	cmpl	%eax, 8(%ebp)
push %eax
pop %eax
	jne	L64
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	jmp	L65
push %eax
pop %eax
L64:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	156(%eax), %eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
L63:
	cmpl	$0, -12(%ebp)
push %eax
pop %eax
	jne	L66
push %eax
pop %eax
	movl	8(%ebp), %eax
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
	movl	$0, %eax
push %eax
pop %eax
L65:
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.section .rdata,"dr"
	.align 4
LC29:
	.ascii "[COMMAND] Unable to extract commandId from packet.\0"
	.align 4
LC30:
	.ascii "[DISPATCH] Command not found: %u\0"
	.align 4
LC31:
	.ascii "[DISPATCH] Executing inline: %u\0"
	.align 4
LC32:
	.ascii "[DISPATCH] Executed inline: result %u (%x)\0"
	.align 4
LC33:
	.ascii "[DISPATCH] Executing in thread: %u\0"
	.align 4
LC34:
	.ascii "[DISPATCH] created command_process_thread 0x%08X, handle=0x%08X\0"
	.text
	.globl	_command_handle
	.def	_command_handle;	.scl	2;	.type	32;	.endef
_command_handle:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$56, %esp
push %eax
pop %eax
	movl	$1, -12(%ebp)
push %eax
pop %eax
	movl	$0, -16(%ebp)
push %eax
pop %eax
	movl	$0, -20(%ebp)
push %eax
pop %eax
	movl	$0, -24(%ebp)
push %eax
pop %eax
	movl	$131073, 4(%esp)
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_get_tlv_value_uint
push %eax
pop %eax
	movl	%eax, -28(%ebp)
push %eax
pop %eax
	cmpl	$0, -28(%ebp)
push %eax
pop %eax
	jne	L68
push %eax
pop %eax
	movl	$LC29, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L69
push %eax
pop %eax
L68:
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_command_locate_extension
push %eax
pop %eax
	movl	%eax, -20(%ebp)
push %eax
pop %eax
	cmpl	$0, -20(%ebp)
push %eax
pop %eax
	jne	L70
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC30, (%esp)
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
	call	_packet_create_response
push %eax
pop %eax
	movl	%eax, -24(%ebp)
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	44(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L71
push %eax
pop %eax
	movl	$50, 8(%esp)
push %eax
pop %eax
	movl	$131076, 4(%esp)
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_add_tlv_uint
push %eax
pop %eax
	jmp	L69
push %eax
pop %eax
L71:
	movl	-24(%ebp), %eax
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
	movl	$50, (%esp)
push %eax
pop %eax
	call	_packet_transmit_response
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_destroy
push %eax
pop %eax
	jmp	L69
push %eax
pop %eax
L70:
	cmpl	$0, -20(%ebp)
push %eax
pop %eax
	je	L73
push %eax
pop %eax
	movl	12(%ebp), %eax
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
	call	_command_is_inline
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L74
push %eax
pop %eax
L73:
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	44(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L75
push %eax
pop %eax
L74:
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
	movl	12(%ebp), %eax
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
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_command_process_inline
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
	movl	$LC32, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L69
push %eax
pop %eax
L75:
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC33, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 12(%esp)
push %eax
pop %eax
	movl	12(%ebp), %eax
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
	movl	$_command_process_thread@4, (%esp)
push %eax
pop %eax
	call	_thread_create
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
	cmpl	$0, -16(%ebp)
push %eax
pop %eax
	je	L69
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
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
	movl	$LC34, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_thread_run
push %eax
pop %eax
L69:
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
LC35:
	.ascii "[COMMAND] executing in thread %p\0"
	.align 4
LC36:
	.ascii "[COMMAND] About to execute inline -> Command: %p\0"
	.align 4
LC37:
	.ascii "[COMMAND] Executed inline -> Command: %p\0"
	.text
	.globl	_command_process_thread@4
	.def	_command_process_thread@4;	.scl	2;	.type	32;	.endef
_command_process_thread@4:
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
	movl	$0, -16(%ebp)
push %eax
pop %eax
	movl	$0, -20(%ebp)
push %eax
pop %eax
	movl	8(%ebp), %eax
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
	cmpl	$0, 8(%ebp)
push %eax
pop %eax
	jne	L78
push %eax
pop %eax
	movl	$6, %eax
push %eax
pop %eax
	jmp	L79
push %eax
pop %eax
L78:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	16(%eax), %eax
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
	cmpl	$0, -16(%ebp)
push %eax
pop %eax
	jne	L80
push %eax
pop %eax
	movl	$6, %eax
push %eax
pop %eax
	jmp	L79
push %eax
pop %eax
L80:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	20(%eax), %eax
push %eax
pop %eax
	movl	%eax, -20(%ebp)
push %eax
pop %eax
	cmpl	$0, -20(%ebp)
push %eax
pop %eax
	jne	L81
push %eax
pop %eax
	movl	$13, %eax
push %eax
pop %eax
	jmp	L79
push %eax
pop %eax
L81:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	24(%eax), %eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	cmpl	$0, -12(%ebp)
push %eax
pop %eax
	jne	L82
push %eax
pop %eax
	movl	$13, %eax
push %eax
pop %eax
	jmp	L79
push %eax
pop %eax
L82:
	movl	_commandThreadList, %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L83
push %eax
pop %eax
	call	_list_create
push %eax
pop %eax
	movl	%eax, _commandThreadList
push %eax
pop %eax
	movl	_commandThreadList, %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L83
push %eax
pop %eax
	movl	$6, %eax
push %eax
pop %eax
	jmp	L79
push %eax
pop %eax
L83:
	movl	_commandThreadList, %eax
push %eax
pop %eax
	movl	8(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_list_add
push %eax
pop %eax
	movl	-12(%ebp), %eax
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
	movl	-20(%ebp), %eax
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
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_command_process_inline
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC37, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	_commandThreadList, %eax
push %eax
pop %eax
	movl	8(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_list_remove
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L84
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_thread_destroy
push %eax
pop %eax
L84:
	movl	$0, %eax
push %eax
pop %eax
L79:
	leave
push %eax
pop %eax
	ret	$4
push %eax
pop %eax
	.globl	_command_is_inline
	.def	_command_is_inline;	.scl	2;	.type	32;	.endef
_command_is_inline:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$24, %esp
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_get_type
push %eax
pop %eax
	cmpl	$11, %eax
push %eax
pop %eax
	je	L86
push %eax
pop %eax
	cmpl	$11, %eax
push %eax
pop %eax
	ja	L87
push %eax
pop %eax
	cmpl	$10, %eax
push %eax
pop %eax
	je	L88
push %eax
pop %eax
	cmpl	$10, %eax
push %eax
pop %eax
	ja	L87
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L88
push %eax
pop %eax
	cmpl	$1, %eax
push %eax
pop %eax
	je	L86
push %eax
pop %eax
	jmp	L87
push %eax
pop %eax
L88:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	8(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L86
push %eax
pop %eax
	movl	$1, %eax
push %eax
pop %eax
	jmp	L89
push %eax
pop %eax
L86:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	84(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L87
push %eax
pop %eax
	movl	$1, %eax
push %eax
pop %eax
	jmp	L89
push %eax
pop %eax
L87:
	movl	$0, %eax
push %eax
pop %eax
L89:
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.section .rdata,"dr"
	.align 4
LC38:
	.ascii "[COMMAND] string is not null terminated\0"
	.text
	.globl	_command_validate_arguments
	.def	_command_validate_arguments;	.scl	2;	.type	32;	.endef
_command_validate_arguments:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$72, %esp
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
	call	_packet_get_type
push %eax
pop %eax
	movl	%eax, -28(%ebp)
push %eax
pop %eax
	movl	$0, -16(%ebp)
push %eax
pop %eax
	cmpl	$1, -28(%ebp)
push %eax
pop %eax
	je	L91
push %eax
pop %eax
	cmpl	$11, -28(%ebp)
push %eax
pop %eax
	jne	L92
push %eax
pop %eax
L91:
	movl	8(%ebp), %eax
push %eax
pop %eax
	addl	$80, %eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	jmp	L93
push %eax
pop %eax
L92:
	movl	8(%ebp), %eax
push %eax
pop %eax
	addl	$4, %eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
L93:
	movl	$0, -24(%ebp)
push %eax
pop %eax
	movl	$0, -20(%ebp)
push %eax
pop %eax
	jmp	L94
push %eax
pop %eax
L102:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	72(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L95
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	72(%eax), %eax
push %eax
pop %eax
	andl	$268435455, %eax
push %eax
pop %eax
	cmpl	%eax, -24(%ebp)
push %eax
pop %eax
	jne	L95
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	andl	$268435456, %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L104
push %eax
pop %eax
	movl	$0, -24(%ebp)
push %eax
pop %eax
L95:
	leal	-44(%ebp), %eax
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
	call	_packet_get_tlv_meta
push %eax
pop %eax
	movl	%eax, -32(%ebp)
push %eax
pop %eax
	cmpl	$65536, -32(%ebp)
push %eax
pop %eax
	jne	L105
push %eax
pop %eax
	leal	-44(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_is_tlv_null_terminated
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L106
push %eax
pop %eax
	movl	$LC38, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	$87, -16(%ebp)
push %eax
pop %eax
	jmp	L106
push %eax
pop %eax
L105:
	nop
push %eax
pop %eax
	jmp	L100
push %eax
pop %eax
L106:
	nop
push %eax
pop %eax
L100:
	cmpl	$0, -16(%ebp)
push %eax
pop %eax
	je	L101
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	72(%eax), %eax
push %eax
pop %eax
	cmpl	%eax, -24(%ebp)
push %eax
pop %eax
	jb	L107
push %eax
pop %eax
L101:
	addl	$1, -24(%ebp)
push %eax
pop %eax
	addl	$1, -20(%ebp)
push %eax
pop %eax
L94:
	leal	-44(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 12(%esp)
push %eax
pop %eax
	movl	$0, 8(%esp)
push %eax
pop %eax
	movl	-20(%ebp), %eax
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
	call	_packet_enum_tlv
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L97
push %eax
pop %eax
	cmpl	$0, -16(%ebp)
push %eax
pop %eax
	je	L102
push %eax
pop %eax
	jmp	L97
push %eax
pop %eax
L104:
	nop
push %eax
pop %eax
	jmp	L97
push %eax
pop %eax
L107:
	nop
push %eax
pop %eax
L97:
	movl	-16(%ebp), %eax
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
	.def	_remote_request_core_channel_open;	.scl	2;	.type	32;	.endef
	.def	_remote_response_core_channel_open;	.scl	2;	.type	32;	.endef
	.def	_remote_request_core_channel_write;	.scl	2;	.type	32;	.endef
	.def	_remote_request_core_channel_close;	.scl	2;	.type	32;	.endef
	.def	_remote_response_core_channel_close;	.scl	2;	.type	32;	.endef
	.def	_remote_request_core_channel_read;	.scl	2;	.type	32;	.endef
	.def	_remote_request_core_channel_seek;	.scl	2;	.type	32;	.endef
	.def	_remote_request_core_channel_eof;	.scl	2;	.type	32;	.endef
	.def	_remote_request_core_channel_tell;	.scl	2;	.type	32;	.endef
	.def	_remote_request_core_channel_interact;	.scl	2;	.type	32;	.endef
	.def	_request_negotiate_aes_key;	.scl	2;	.type	32;	.endef
	.def	_remote_request_core_transport_set_timeouts;	.scl	2;	.type	32;	.endef
	.def	_remote_request_core_transport_getcerthash;	.scl	2;	.type	32;	.endef
	.def	_remote_request_core_transport_setcerthash;	.scl	2;	.type	32;	.endef
	.def	_remote_request_core_transport_list;	.scl	2;	.type	32;	.endef
	.def	_remote_request_core_transport_sleep;	.scl	2;	.type	32;	.endef
	.def	_remote_request_core_transport_change;	.scl	2;	.type	32;	.endef
	.def	_remote_request_core_transport_next;	.scl	2;	.type	32;	.endef
	.def	_remote_request_core_transport_prev;	.scl	2;	.type	32;	.endef
	.def	_remote_request_core_transport_add;	.scl	2;	.type	32;	.endef
	.def	_remote_request_core_transport_remove;	.scl	2;	.type	32;	.endef
	.def	_remote_request_core_migrate;	.scl	2;	.type	32;	.endef
	.def	_remote_request_core_shutdown;	.scl	2;	.type	32;	.endef
	.def	_malloc;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	_free;	.scl	2;	.type	32;	.endef
	.def	_list_get;	.scl	2;	.type	32;	.endef
	.def	_thread_join;	.scl	2;	.type	32;	.endef
	.def	_list_count;	.scl	2;	.type	32;	.endef
	.def	_packet_get_type;	.scl	2;	.type	32;	.endef
	.def	_packet_get_tlv_string;	.scl	2;	.type	32;	.endef
	.def	_packet_call_completion_handlers;	.scl	2;	.type	32;	.endef
	.def	_packet_destroy;	.scl	2;	.type	32;	.endef
	.def	_packet_get_tlv_value_uint;	.scl	2;	.type	32;	.endef
	.def	_packet_create_response;	.scl	2;	.type	32;	.endef
	.def	_packet_add_tlv_uint;	.scl	2;	.type	32;	.endef
	.def	_packet_transmit_response;	.scl	2;	.type	32;	.endef
	.def	_thread_create;	.scl	2;	.type	32;	.endef
	.def	_thread_run;	.scl	2;	.type	32;	.endef
	.def	_list_create;	.scl	2;	.type	32;	.endef
	.def	_list_add;	.scl	2;	.type	32;	.endef
	.def	_list_remove;	.scl	2;	.type	32;	.endef
	.def	_thread_destroy;	.scl	2;	.type	32;	.endef
	.def	_packet_get_tlv_meta;	.scl	2;	.type	32;	.endef
	.def	_packet_is_tlv_null_terminated;	.scl	2;	.type	32;	.endef
	.def	_packet_enum_tlv;	.scl	2;	.type	32;	.endef
