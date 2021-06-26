	.file	"base.c"
	.text
	.globl	_remote_request_core_console_write
	.def	_remote_request_core_console_write;	.scl	2;	.type	32;	.endef
_remote_request_core_console_write:
	pushl	%ebp
	movl	%esp, %ebp
	movl	$0, %eax
	popl	%ebp
	ret
	.globl	_remote_response_core_console_write
	.def	_remote_response_core_console_write;	.scl	2;	.type	32;	.endef
_remote_response_core_console_write:
	pushl	%ebp
	movl	%esp, %ebp
	movl	$0, %eax
	popl	%ebp
	ret
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
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$0, -12(%ebp)
	movl	$_baseCommands, (%esp)
	call	_command_register_all
	movl	_extensionCommands, %eax
	movl	%eax, -12(%ebp)
	jmp	L6
L8:
	movl	-12(%ebp), %eax
	movl	156(%eax), %eax
	movl	%eax, -12(%ebp)
L6:
	cmpl	$0, -12(%ebp)
	je	L7
	movl	-12(%ebp), %eax
	movl	(%eax), %edx
	movl	_baseCommands, %eax
	cmpl	%eax, %edx
	jne	L8
L7:
	movl	-12(%ebp), %eax
	leave
	ret
	.globl	_deregister_base_dispatch_routines
	.def	_deregister_base_dispatch_routines;	.scl	2;	.type	32;	.endef
_deregister_base_dispatch_routines:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	$_baseCommands, (%esp)
	call	_command_deregister_all
	nop
	leave
	ret
	.globl	_command_register_all
	.def	_command_register_all;	.scl	2;	.type	32;	.endef
_command_register_all:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$0, -12(%ebp)
	jmp	L12
L13:
	movl	-12(%ebp), %eax
	imull	$164, %eax, %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, (%esp)
	call	_command_register
	addl	$1, -12(%ebp)
L12:
	movl	-12(%ebp), %eax
	imull	$164, %eax, %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L13
	nop
	nop
	leave
	ret
	.globl	_command_register
	.def	_command_register;	.scl	2;	.type	32;	.endef
_command_register:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$164, (%esp)
	call	_malloc
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jne	L15
	movl	$8, %eax
	jmp	L16
L15:
	movl	$164, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_memcpy
	movl	_extensionCommands, %eax
	testl	%eax, %eax
	je	L17
	movl	_extensionCommands, %eax
	movl	-12(%ebp), %edx
	movl	%edx, 160(%eax)
L17:
	movl	_extensionCommands, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 156(%eax)
	movl	-12(%ebp), %eax
	movl	$0, 160(%eax)
	movl	-12(%ebp), %eax
	movl	%eax, _extensionCommands
	movl	$0, %eax
L16:
	leave
	ret
	.globl	_command_deregister_all
	.def	_command_deregister_all;	.scl	2;	.type	32;	.endef
_command_deregister_all:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$0, -12(%ebp)
	jmp	L19
L20:
	movl	-12(%ebp), %eax
	imull	$164, %eax, %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, (%esp)
	call	_command_deregister
	addl	$1, -12(%ebp)
L19:
	movl	-12(%ebp), %eax
	imull	$164, %eax, %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L20
	nop
	nop
	leave
	ret
	.globl	_command_deregister
	.def	_command_deregister;	.scl	2;	.type	32;	.endef
_command_deregister:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$1168, -20(%ebp)
	movl	_extensionCommands, %eax
	movl	%eax, -12(%ebp)
	movl	$0, -16(%ebp)
	jmp	L22
L28:
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	L23
	movl	-12(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	-12(%ebp), %eax
	movl	156(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	L22
L23:
	cmpl	$0, -16(%ebp)
	je	L24
	movl	-12(%ebp), %eax
	movl	156(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 156(%eax)
	jmp	L25
L24:
	movl	-12(%ebp), %eax
	movl	156(%eax), %eax
	movl	%eax, _extensionCommands
L25:
	movl	-12(%ebp), %eax
	movl	156(%eax), %eax
	testl	%eax, %eax
	je	L26
	movl	-12(%ebp), %eax
	movl	156(%eax), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 160(%eax)
L26:
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	$0, -20(%ebp)
	jmp	L27
L22:
	cmpl	$0, -12(%ebp)
	jne	L28
L27:
	movl	-20(%ebp), %eax
	leave
	ret
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
	movl	%esp, %ebp
	subl	$40, %esp
	jmp	L31
L32:
	movl	_commandThreadList, %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_list_get
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	L31
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_thread_join
L31:
	movl	_commandThreadList, %eax
	movl	%eax, (%esp)
	call	_list_count
	testl	%eax, %eax
	jne	L32
	nop
	nop
	leave
	ret
	.globl	_command_process_inline
	.def	_command_process_inline;	.scl	2;	.type	32;	.endef
_command_process_inline:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$56, %esp
	movl	$1, -12(%ebp)
	movl	$0, -20(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	12(%ebp), %eax
	movl	28(%eax), %edx
	movl	12(%ebp), %eax
	movl	32(%eax), %eax
	cmpl	%eax, %edx
	je	L34
	movl	12(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__ImpersonateLoggedOnUser@4, %eax
	call	*%eax
	subl	$4, %esp
L34:
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_command_validate_arguments
	testl	%eax, %eax
	jne	L53
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_type
	movl	%eax, -24(%ebp)
	cmpl	$11, -24(%ebp)
	je	L37
	cmpl	$11, -24(%ebp)
	ja	L38
	cmpl	$10, -24(%ebp)
	je	L39
	cmpl	$10, -24(%ebp)
	ja	L38
	cmpl	$0, -24(%ebp)
	je	L39
	cmpl	$1, -24(%ebp)
	je	L37
	jmp	L38
L39:
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L40
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	leal	-28(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	16(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	12(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	testl	%eax, %eax
	je	L41
	cmpl	$0, -12(%ebp)
	je	L41
	movl	$1, %eax
	jmp	L42
L41:
	movl	$0, %eax
L42:
	movl	%eax, -12(%ebp)
	jmp	L38
L40:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	12(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	%eax, -28(%ebp)
	jmp	L38
L37:
	movl	8(%ebp), %eax
	movl	84(%eax), %eax
	testl	%eax, %eax
	je	L44
	movl	8(%ebp), %eax
	movl	84(%eax), %eax
	leal	-28(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	16(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	12(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	testl	%eax, %eax
	je	L45
	cmpl	$0, -12(%ebp)
	je	L45
	movl	$1, %eax
	jmp	L46
L45:
	movl	$0, %eax
L46:
	movl	%eax, -12(%ebp)
	jmp	L54
L44:
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	movl	16(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	12(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	%eax, -28(%ebp)
L54:
	nop
L38:
	leal	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$65538, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_string
	testl	%eax, %eax
	jne	L48
	movl	-32(%ebp), %eax
	movl	%eax, -16(%ebp)
L48:
	cmpl	$1, -24(%ebp)
	je	L49
	cmpl	$11, -24(%ebp)
	jne	L52
L49:
	cmpl	$0, -16(%ebp)
	je	L52
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_call_completion_handlers
	jmp	L52
L53:
	nop
L52:
	movl	16(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	jne	L50
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_destroy
L50:
	movl	-12(%ebp), %eax
	leave
	ret
	.globl	_command_locate_extension
	.def	_command_locate_extension;	.scl	2;	.type	32;	.endef
_command_locate_extension:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$16, %esp
	movl	_extensionCommands, %eax
	movl	%eax, -4(%ebp)
	jmp	L56
L59:
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, 8(%ebp)
	jne	L57
	movl	-4(%ebp), %eax
	jmp	L58
L57:
	movl	-4(%ebp), %eax
	movl	156(%eax), %eax
	movl	%eax, -4(%ebp)
L56:
	cmpl	$0, -4(%ebp)
	jne	L59
	movl	$0, %eax
L58:
	leave
	ret
	.globl	_command_handle
	.def	_command_handle;	.scl	2;	.type	32;	.endef
_command_handle:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$56, %esp
	movl	$1, -12(%ebp)
	movl	$0, -16(%ebp)
	movl	$0, -20(%ebp)
	movl	$0, -24(%ebp)
	movl	$131073, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_uint
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	L70
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_command_locate_extension
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	jne	L63
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_create_response
	movl	%eax, -24(%ebp)
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	je	L64
	movl	$50, 8(%esp)
	movl	$131076, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_uint
	jmp	L62
L64:
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$50, (%esp)
	call	_packet_transmit_response
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_destroy
	jmp	L62
L63:
	cmpl	$0, -20(%ebp)
	je	L66
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_command_is_inline
	testl	%eax, %eax
	jne	L67
L66:
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	je	L68
L67:
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_command_process_inline
	movl	%eax, -12(%ebp)
	jmp	L62
L68:
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$_command_process_thread@4, (%esp)
	call	_thread_create
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	L62
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_thread_run
	jmp	L62
L70:
	nop
L62:
	movl	-12(%ebp), %eax
	leave
	ret
	.globl	_command_process_thread@4
	.def	_command_process_thread@4;	.scl	2;	.type	32;	.endef
_command_process_thread@4:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$0, -12(%ebp)
	movl	$0, -16(%ebp)
	movl	$0, -20(%ebp)
	cmpl	$0, 8(%ebp)
	jne	L72
	movl	$6, %eax
	jmp	L73
L72:
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jne	L74
	movl	$6, %eax
	jmp	L73
L74:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	jne	L75
	movl	$13, %eax
	jmp	L73
L75:
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jne	L76
	movl	$13, %eax
	jmp	L73
L76:
	movl	_commandThreadList, %eax
	testl	%eax, %eax
	jne	L77
	call	_list_create
	movl	%eax, _commandThreadList
	movl	_commandThreadList, %eax
	testl	%eax, %eax
	jne	L77
	movl	$6, %eax
	jmp	L73
L77:
	movl	_commandThreadList, %eax
	movl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_list_add
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_command_process_inline
	movl	_commandThreadList, %eax
	movl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_list_remove
	testl	%eax, %eax
	je	L78
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_thread_destroy
L78:
	movl	$0, %eax
L73:
	leave
	ret	$4
	.globl	_command_is_inline
	.def	_command_is_inline;	.scl	2;	.type	32;	.endef
_command_is_inline:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_type
	cmpl	$11, %eax
	je	L80
	cmpl	$11, %eax
	ja	L81
	cmpl	$10, %eax
	je	L82
	cmpl	$10, %eax
	ja	L81
	testl	%eax, %eax
	je	L82
	cmpl	$1, %eax
	je	L80
	jmp	L81
L82:
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L80
	movl	$1, %eax
	jmp	L83
L80:
	movl	8(%ebp), %eax
	movl	84(%eax), %eax
	testl	%eax, %eax
	je	L81
	movl	$1, %eax
	jmp	L83
L81:
	movl	$0, %eax
L83:
	leave
	ret
	.globl	_command_validate_arguments
	.def	_command_validate_arguments;	.scl	2;	.type	32;	.endef
_command_validate_arguments:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$72, %esp
	movl	$0, -12(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_type
	movl	%eax, -28(%ebp)
	movl	$0, -16(%ebp)
	cmpl	$1, -28(%ebp)
	je	L85
	cmpl	$11, -28(%ebp)
	jne	L86
L85:
	movl	8(%ebp), %eax
	addl	$80, %eax
	movl	%eax, -12(%ebp)
	jmp	L87
L86:
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -12(%ebp)
L87:
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	jmp	L88
L96:
	movl	-12(%ebp), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	je	L89
	movl	-12(%ebp), %eax
	movl	72(%eax), %eax
	andl	$268435455, %eax
	cmpl	%eax, -24(%ebp)
	jne	L89
	movl	-24(%ebp), %eax
	andl	$268435456, %eax
	testl	%eax, %eax
	je	L98
	movl	$0, -24(%ebp)
L89:
	leal	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_meta
	movl	%eax, -32(%ebp)
	cmpl	$65536, -32(%ebp)
	jne	L99
	leal	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_is_tlv_null_terminated
	testl	%eax, %eax
	je	L100
	movl	$87, -16(%ebp)
	jmp	L100
L99:
	nop
	jmp	L94
L100:
	nop
L94:
	cmpl	$0, -16(%ebp)
	je	L95
	movl	-12(%ebp), %eax
	movl	72(%eax), %eax
	cmpl	%eax, -24(%ebp)
	jb	L101
L95:
	addl	$1, -24(%ebp)
	addl	$1, -20(%ebp)
L88:
	leal	-44(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_enum_tlv
	testl	%eax, %eax
	jne	L91
	cmpl	$0, -16(%ebp)
	je	L96
	jmp	L91
L98:
	nop
	jmp	L91
L101:
	nop
L91:
	movl	-16(%ebp), %eax
	leave
	ret
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
