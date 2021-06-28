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
	jmp	L7
L9:
	movl	-12(%ebp), %eax
	movl	156(%eax), %eax
	movl	%eax, -12(%ebp)
L7:
	cmpl	$0, -12(%ebp)
	je	L8
	movl	-12(%ebp), %eax
	movl	(%eax), %edx
	movl	_baseCommands, %eax
	cmpl	%eax, %edx
	jne	L9
L8:
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
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$0, -12(%ebp)
	jmp	L13
L14:
	movl	-12(%ebp), %eax
	imull	$164, %eax, %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, (%esp)
	call	_command_register
	addl	$1, -12(%ebp)
L13:
	movl	-12(%ebp), %eax
	imull	$164, %eax, %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L14
	movl	$LC2, (%esp)
	call	_real_dprintf
	movl	_extensionCommands, %eax
	movl	%eax, -16(%ebp)
	jmp	L15
L16:
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC3, (%esp)
	call	_real_dprintf
	movl	-16(%ebp), %eax
	movl	156(%eax), %eax
	movl	%eax, -16(%ebp)
L15:
	cmpl	$0, -16(%ebp)
	jne	L16
	nop
	nop
	leave
	ret
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
	movl	%esp, %ebp
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC4, (%esp)
	call	_real_dprintf
	movl	$164, (%esp)
	call	_malloc
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jne	L18
	movl	$8, %eax
	jmp	L19
L18:
	movl	$LC5, (%esp)
	call	_real_dprintf
	movl	$164, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_memcpy
	movl	$LC6, (%esp)
	call	_real_dprintf
	movl	_extensionCommands, %eax
	testl	%eax, %eax
	je	L20
	movl	_extensionCommands, %eax
	movl	-12(%ebp), %edx
	movl	%edx, 160(%eax)
L20:
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC7, (%esp)
	call	_real_dprintf
	movl	_extensionCommands, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 156(%eax)
	movl	-12(%ebp), %eax
	movl	$0, 160(%eax)
	movl	-12(%ebp), %eax
	movl	%eax, _extensionCommands
	movl	$LC8, (%esp)
	call	_real_dprintf
	movl	$0, %eax
L19:
	leave
	ret
	.globl	_command_deregister_all
	.def	_command_deregister_all;	.scl	2;	.type	32;	.endef
_command_deregister_all:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$0, -12(%ebp)
	jmp	L22
L23:
	movl	-12(%ebp), %eax
	imull	$164, %eax, %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, (%esp)
	call	_command_deregister
	addl	$1, -12(%ebp)
L22:
	movl	-12(%ebp), %eax
	imull	$164, %eax, %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L23
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
	jmp	L25
L31:
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	L26
	movl	-12(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	-12(%ebp), %eax
	movl	156(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	L25
L26:
	cmpl	$0, -16(%ebp)
	je	L27
	movl	-12(%ebp), %eax
	movl	156(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 156(%eax)
	jmp	L28
L27:
	movl	-12(%ebp), %eax
	movl	156(%eax), %eax
	movl	%eax, _extensionCommands
L28:
	movl	-12(%ebp), %eax
	movl	156(%eax), %eax
	testl	%eax, %eax
	je	L29
	movl	-12(%ebp), %eax
	movl	156(%eax), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 160(%eax)
L29:
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	$0, -20(%ebp)
	jmp	L30
L25:
	cmpl	$0, -12(%ebp)
	jne	L31
L30:
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
	jmp	L34
L35:
	movl	_commandThreadList, %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_list_get
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	L34
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_thread_join
L34:
	movl	_commandThreadList, %eax
	movl	%eax, (%esp)
	call	_list_count
	testl	%eax, %eax
	jne	L35
	nop
	nop
	leave
	ret
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
	movl	%esp, %ebp
	subl	$56, %esp
	movl	$1, -12(%ebp)
	movl	$0, -20(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC9, (%esp)
	call	_real_dprintf
	movl	12(%ebp), %eax
	movl	28(%eax), %edx
	movl	12(%ebp), %eax
	movl	32(%eax), %eax
	cmpl	%eax, %edx
	je	L37
	movl	12(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__ImpersonateLoggedOnUser@4, %eax
	call	*%eax
	subl	$4, %esp
	testl	%eax, %eax
	jne	L37
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC10, (%esp)
	call	_real_dprintf
L37:
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_command_validate_arguments
	testl	%eax, %eax
	je	L38
	movl	$LC11, (%esp)
	call	_real_dprintf
	jmp	L60
L38:
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_type
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC12, (%esp)
	call	_real_dprintf
	cmpl	$11, -24(%ebp)
	je	L40
	cmpl	$11, -24(%ebp)
	ja	L41
	cmpl	$10, -24(%ebp)
	je	L42
	cmpl	$10, -24(%ebp)
	ja	L41
	cmpl	$0, -24(%ebp)
	je	L42
	cmpl	$1, -24(%ebp)
	je	L40
	jmp	L41
L42:
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L43
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC13, (%esp)
	call	_real_dprintf
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
	je	L44
	cmpl	$0, -12(%ebp)
	je	L44
	movl	$1, %eax
	jmp	L45
L44:
	movl	$0, %eax
L45:
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	L46
	movl	$LC14, %eax
	jmp	L47
L46:
	movl	$LC15, %eax
L47:
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC16, (%esp)
	call	_real_dprintf
	jmp	L41
L43:
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC17, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	12(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	%eax, -28(%ebp)
	jmp	L41
L40:
	movl	8(%ebp), %eax
	movl	84(%eax), %eax
	testl	%eax, %eax
	je	L49
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC18, (%esp)
	call	_real_dprintf
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
	je	L50
	cmpl	$0, -12(%ebp)
	je	L50
	movl	$1, %eax
	jmp	L51
L50:
	movl	$0, %eax
L51:
	movl	%eax, -12(%ebp)
	jmp	L61
L49:
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC19, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	movl	16(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	12(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	%eax, -28(%ebp)
L61:
	nop
L41:
	movl	$LC20, (%esp)
	call	_real_dprintf
	leal	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$65538, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_string
	testl	%eax, %eax
	jne	L53
	movl	-32(%ebp), %eax
	movl	%eax, -16(%ebp)
L53:
	cmpl	$1, -24(%ebp)
	je	L54
	cmpl	$11, -24(%ebp)
	jne	L55
L54:
	cmpl	$0, -16(%ebp)
	je	L55
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_call_completion_handlers
L55:
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC21, (%esp)
	call	_real_dprintf
L60:
	movl	16(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	jne	L56
	movl	$LC22, (%esp)
	call	_real_dprintf
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_destroy
	movl	$LC23, (%esp)
	call	_real_dprintf
L56:
	cmpl	$0, -12(%ebp)
	je	L57
	movl	$LC24, %eax
	jmp	L58
L57:
	movl	$LC25, %eax
L58:
	movl	%eax, 4(%esp)
	movl	$LC26, (%esp)
	call	_real_dprintf
	movl	-12(%ebp), %eax
	leave
	ret
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
	movl	%esp, %ebp
	subl	$40, %esp
	movl	_extensionCommands, %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC27, (%esp)
	call	_real_dprintf
	movl	_extensionCommands, %eax
	movl	%eax, -12(%ebp)
	jmp	L63
L66:
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, 8(%ebp)
	jne	L64
	movl	-12(%ebp), %eax
	jmp	L65
L64:
	movl	-12(%ebp), %eax
	movl	156(%eax), %eax
	movl	%eax, -12(%ebp)
L63:
	cmpl	$0, -12(%ebp)
	jne	L66
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC28, (%esp)
	call	_real_dprintf
	movl	$0, %eax
L65:
	leave
	ret
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
	jne	L68
	movl	$LC29, (%esp)
	call	_real_dprintf
	jmp	L69
L68:
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_command_locate_extension
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	jne	L70
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC30, (%esp)
	call	_real_dprintf
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_create_response
	movl	%eax, -24(%ebp)
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	je	L71
	movl	$50, 8(%esp)
	movl	$131076, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_uint
	jmp	L69
L71:
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$50, (%esp)
	call	_packet_transmit_response
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_destroy
	jmp	L69
L70:
	cmpl	$0, -20(%ebp)
	je	L73
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_command_is_inline
	testl	%eax, %eax
	jne	L74
L73:
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	je	L75
L74:
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC31, (%esp)
	call	_real_dprintf
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_command_process_inline
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC32, (%esp)
	call	_real_dprintf
	jmp	L69
L75:
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC33, (%esp)
	call	_real_dprintf
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
	je	L69
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC34, (%esp)
	call	_real_dprintf
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_thread_run
L69:
	movl	-12(%ebp), %eax
	leave
	ret
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
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$0, -12(%ebp)
	movl	$0, -16(%ebp)
	movl	$0, -20(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC35, (%esp)
	call	_real_dprintf
	cmpl	$0, 8(%ebp)
	jne	L78
	movl	$6, %eax
	jmp	L79
L78:
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jne	L80
	movl	$6, %eax
	jmp	L79
L80:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	jne	L81
	movl	$13, %eax
	jmp	L79
L81:
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jne	L82
	movl	$13, %eax
	jmp	L79
L82:
	movl	_commandThreadList, %eax
	testl	%eax, %eax
	jne	L83
	call	_list_create
	movl	%eax, _commandThreadList
	movl	_commandThreadList, %eax
	testl	%eax, %eax
	jne	L83
	movl	$6, %eax
	jmp	L79
L83:
	movl	_commandThreadList, %eax
	movl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_list_add
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC36, (%esp)
	call	_real_dprintf
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_command_process_inline
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC37, (%esp)
	call	_real_dprintf
	movl	_commandThreadList, %eax
	movl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_list_remove
	testl	%eax, %eax
	je	L84
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_thread_destroy
L84:
	movl	$0, %eax
L79:
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
	je	L86
	cmpl	$11, %eax
	ja	L87
	cmpl	$10, %eax
	je	L88
	cmpl	$10, %eax
	ja	L87
	testl	%eax, %eax
	je	L88
	cmpl	$1, %eax
	je	L86
	jmp	L87
L88:
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L86
	movl	$1, %eax
	jmp	L89
L86:
	movl	8(%ebp), %eax
	movl	84(%eax), %eax
	testl	%eax, %eax
	je	L87
	movl	$1, %eax
	jmp	L89
L87:
	movl	$0, %eax
L89:
	leave
	ret
	.section .rdata,"dr"
	.align 4
LC38:
	.ascii "[COMMAND] string is not null terminated\0"
	.text
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
	je	L91
	cmpl	$11, -28(%ebp)
	jne	L92
L91:
	movl	8(%ebp), %eax
	addl	$80, %eax
	movl	%eax, -12(%ebp)
	jmp	L93
L92:
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -12(%ebp)
L93:
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	jmp	L94
L102:
	movl	-12(%ebp), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	je	L95
	movl	-12(%ebp), %eax
	movl	72(%eax), %eax
	andl	$268435455, %eax
	cmpl	%eax, -24(%ebp)
	jne	L95
	movl	-24(%ebp), %eax
	andl	$268435456, %eax
	testl	%eax, %eax
	je	L104
	movl	$0, -24(%ebp)
L95:
	leal	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_meta
	movl	%eax, -32(%ebp)
	cmpl	$65536, -32(%ebp)
	jne	L105
	leal	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_is_tlv_null_terminated
	testl	%eax, %eax
	je	L106
	movl	$LC38, (%esp)
	call	_real_dprintf
	movl	$87, -16(%ebp)
	jmp	L106
L105:
	nop
	jmp	L100
L106:
	nop
L100:
	cmpl	$0, -16(%ebp)
	je	L101
	movl	-12(%ebp), %eax
	movl	72(%eax), %eax
	cmpl	%eax, -24(%ebp)
	jb	L107
L101:
	addl	$1, -24(%ebp)
	addl	$1, -20(%ebp)
L94:
	leal	-44(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_enum_tlv
	testl	%eax, %eax
	jne	L97
	cmpl	$0, -16(%ebp)
	je	L102
	jmp	L97
L104:
	nop
	jmp	L97
L107:
	nop
L97:
	movl	-16(%ebp), %eax
	leave
	ret
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
