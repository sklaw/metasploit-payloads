	.file	"base.c"
	.text
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
	jmp	L6
push %eax
pop %eax
L8:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	156(%eax), %eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
L6:
	cmpl	$0, -12(%ebp)
push %eax
pop %eax
	je	L7
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
	jne	L8
push %eax
pop %eax
L7:
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
	jmp	L12
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
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_command_register
push %eax
pop %eax
	addl	$1, -12(%ebp)
push %eax
pop %eax
L12:
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
	jne	L13
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
	jne	L15
push %eax
pop %eax
	movl	$8, %eax
push %eax
pop %eax
	jmp	L16
push %eax
pop %eax
L15:
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
	movl	_extensionCommands, %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L17
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
L17:
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
	movl	$0, %eax
push %eax
pop %eax
L16:
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
	jmp	L19
push %eax
pop %eax
L20:
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
L19:
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
	jne	L20
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
	jmp	L22
push %eax
pop %eax
L28:
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
	jne	L23
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
	jmp	L22
push %eax
pop %eax
L23:
	cmpl	$0, -16(%ebp)
push %eax
pop %eax
	je	L24
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
	jmp	L25
push %eax
pop %eax
L24:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	156(%eax), %eax
push %eax
pop %eax
	movl	%eax, _extensionCommands
push %eax
pop %eax
L25:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	156(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L26
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
L26:
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
	jmp	L27
push %eax
pop %eax
L22:
	cmpl	$0, -12(%ebp)
push %eax
pop %eax
	jne	L28
push %eax
pop %eax
L27:
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
	jmp	L31
push %eax
pop %eax
L32:
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
	je	L31
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
L31:
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
	jne	L32
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
	je	L34
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
L34:
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
	jne	L53
push %eax
pop %eax
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
	cmpl	$11, -24(%ebp)
push %eax
pop %eax
	je	L37
push %eax
pop %eax
	cmpl	$11, -24(%ebp)
push %eax
pop %eax
	ja	L38
push %eax
pop %eax
	cmpl	$10, -24(%ebp)
push %eax
pop %eax
	je	L39
push %eax
pop %eax
	cmpl	$10, -24(%ebp)
push %eax
pop %eax
	ja	L38
push %eax
pop %eax
	cmpl	$0, -24(%ebp)
push %eax
pop %eax
	je	L39
push %eax
pop %eax
	cmpl	$1, -24(%ebp)
push %eax
pop %eax
	je	L37
push %eax
pop %eax
	jmp	L38
push %eax
pop %eax
L39:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	8(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L40
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
	je	L41
push %eax
pop %eax
	cmpl	$0, -12(%ebp)
push %eax
pop %eax
	je	L41
push %eax
pop %eax
	movl	$1, %eax
push %eax
pop %eax
	jmp	L42
push %eax
pop %eax
L41:
	movl	$0, %eax
push %eax
pop %eax
L42:
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	jmp	L38
push %eax
pop %eax
L40:
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
	jmp	L38
push %eax
pop %eax
L37:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	84(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L44
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
	je	L45
push %eax
pop %eax
	cmpl	$0, -12(%ebp)
push %eax
pop %eax
	je	L45
push %eax
pop %eax
	movl	$1, %eax
push %eax
pop %eax
	jmp	L46
push %eax
pop %eax
L45:
	movl	$0, %eax
push %eax
pop %eax
L46:
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	jmp	L54
push %eax
pop %eax
L44:
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
L54:
	nop
push %eax
pop %eax
L38:
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
	jne	L48
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
L48:
	cmpl	$1, -24(%ebp)
push %eax
pop %eax
	je	L49
push %eax
pop %eax
	cmpl	$11, -24(%ebp)
push %eax
pop %eax
	jne	L52
push %eax
pop %eax
L49:
	cmpl	$0, -16(%ebp)
push %eax
pop %eax
	je	L52
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
	jmp	L52
push %eax
pop %eax
L53:
	nop
push %eax
pop %eax
L52:
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	44(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L50
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
L50:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_command_locate_extension
	.def	_command_locate_extension;	.scl	2;	.type	32;	.endef
_command_locate_extension:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$16, %esp
push %eax
pop %eax
	movl	_extensionCommands, %eax
push %eax
pop %eax
	movl	%eax, -4(%ebp)
push %eax
pop %eax
	jmp	L56
push %eax
pop %eax
L59:
	movl	-4(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	cmpl	%eax, 8(%ebp)
push %eax
pop %eax
	jne	L57
push %eax
pop %eax
	movl	-4(%ebp), %eax
push %eax
pop %eax
	jmp	L58
push %eax
pop %eax
L57:
	movl	-4(%ebp), %eax
push %eax
pop %eax
	movl	156(%eax), %eax
push %eax
pop %eax
	movl	%eax, -4(%ebp)
push %eax
pop %eax
L56:
	cmpl	$0, -4(%ebp)
push %eax
pop %eax
	jne	L59
push %eax
pop %eax
	movl	$0, %eax
push %eax
pop %eax
L58:
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
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
	je	L70
push %eax
pop %eax
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
	jne	L63
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
	je	L64
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
	jmp	L62
push %eax
pop %eax
L64:
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
	jmp	L62
push %eax
pop %eax
L63:
	cmpl	$0, -20(%ebp)
push %eax
pop %eax
	je	L66
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
	jne	L67
push %eax
pop %eax
L66:
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	44(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L68
push %eax
pop %eax
L67:
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
	jmp	L62
push %eax
pop %eax
L68:
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
	je	L62
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
	jmp	L62
push %eax
pop %eax
L70:
	nop
push %eax
pop %eax
L62:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
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
	cmpl	$0, 8(%ebp)
push %eax
pop %eax
	jne	L72
push %eax
pop %eax
	movl	$6, %eax
push %eax
pop %eax
	jmp	L73
push %eax
pop %eax
L72:
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
	jne	L74
push %eax
pop %eax
	movl	$6, %eax
push %eax
pop %eax
	jmp	L73
push %eax
pop %eax
L74:
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
	jne	L75
push %eax
pop %eax
	movl	$13, %eax
push %eax
pop %eax
	jmp	L73
push %eax
pop %eax
L75:
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
	jne	L76
push %eax
pop %eax
	movl	$13, %eax
push %eax
pop %eax
	jmp	L73
push %eax
pop %eax
L76:
	movl	_commandThreadList, %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L77
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
	jne	L77
push %eax
pop %eax
	movl	$6, %eax
push %eax
pop %eax
	jmp	L73
push %eax
pop %eax
L77:
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
	je	L78
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
L78:
	movl	$0, %eax
push %eax
pop %eax
L73:
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
	je	L80
push %eax
pop %eax
	cmpl	$11, %eax
push %eax
pop %eax
	ja	L81
push %eax
pop %eax
	cmpl	$10, %eax
push %eax
pop %eax
	je	L82
push %eax
pop %eax
	cmpl	$10, %eax
push %eax
pop %eax
	ja	L81
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L82
push %eax
pop %eax
	cmpl	$1, %eax
push %eax
pop %eax
	je	L80
push %eax
pop %eax
	jmp	L81
push %eax
pop %eax
L82:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	8(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L80
push %eax
pop %eax
	movl	$1, %eax
push %eax
pop %eax
	jmp	L83
push %eax
pop %eax
L80:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	84(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L81
push %eax
pop %eax
	movl	$1, %eax
push %eax
pop %eax
	jmp	L83
push %eax
pop %eax
L81:
	movl	$0, %eax
push %eax
pop %eax
L83:
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
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
	je	L85
push %eax
pop %eax
	cmpl	$11, -28(%ebp)
push %eax
pop %eax
	jne	L86
push %eax
pop %eax
L85:
	movl	8(%ebp), %eax
push %eax
pop %eax
	addl	$80, %eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	jmp	L87
push %eax
pop %eax
L86:
	movl	8(%ebp), %eax
push %eax
pop %eax
	addl	$4, %eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
L87:
	movl	$0, -24(%ebp)
push %eax
pop %eax
	movl	$0, -20(%ebp)
push %eax
pop %eax
	jmp	L88
push %eax
pop %eax
L96:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	72(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L89
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
	jne	L89
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
	je	L98
push %eax
pop %eax
	movl	$0, -24(%ebp)
push %eax
pop %eax
L89:
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
	jne	L99
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
	je	L100
push %eax
pop %eax
	movl	$87, -16(%ebp)
push %eax
pop %eax
	jmp	L100
push %eax
pop %eax
L99:
	nop
push %eax
pop %eax
	jmp	L94
push %eax
pop %eax
L100:
	nop
push %eax
pop %eax
L94:
	cmpl	$0, -16(%ebp)
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
	cmpl	%eax, -24(%ebp)
push %eax
pop %eax
	jb	L101
push %eax
pop %eax
L95:
	addl	$1, -24(%ebp)
push %eax
pop %eax
	addl	$1, -20(%ebp)
push %eax
pop %eax
L88:
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
	jne	L91
push %eax
pop %eax
	cmpl	$0, -16(%ebp)
push %eax
pop %eax
	je	L96
push %eax
pop %eax
	jmp	L91
push %eax
pop %eax
L98:
	nop
push %eax
pop %eax
	jmp	L91
push %eax
pop %eax
L101:
	nop
push %eax
pop %eax
L91:
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
