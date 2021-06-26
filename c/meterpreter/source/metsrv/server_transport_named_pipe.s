	.file	"server_transport_named_pipe.c"
	.text
	.def	_server_pipe_poll;	.scl	3;	.type	32;	.endef
_server_pipe_poll:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$56, %esp
	movl	$0, -24(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	48(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_acquire
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 20(%esp)
	leal	-24(%ebp), %edx
	movl	%edx, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__PeekNamedPipe@24, %eax
	call	*%eax
	subl	$24, %esp
	testl	%eax, %eax
	je	L2
	movl	-24(%ebp), %eax
	cmpl	$31, %eax
	jbe	L2
	movl	$1, %eax
	jmp	L3
L2:
	movl	$0, %eax
L3:
	movl	%eax, -20(%ebp)
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_release
	cmpl	$0, -20(%ebp)
	je	L4
	movl	$0, -12(%ebp)
	jmp	L5
L4:
	cmpl	$109, -12(%ebp)
	je	L5
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__Sleep@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	$232, -12(%ebp)
L5:
	movl	-12(%ebp), %eax
	leave
	ret
	.globl	_read_raw_bytes_to_buffer
	.def	_read_raw_bytes_to_buffer;	.scl	2;	.type	32;	.endef
_read_raw_bytes_to_buffer:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$52, %esp
	movl	$0, -20(%ebp)
	movl	$0, -16(%ebp)
	movl	$0, -12(%ebp)
	movl	20(%ebp), %eax
	movl	$0, (%eax)
	jmp	L8
L11:
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%ebp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	$65536, %edx
	cmpl	$65536, %eax
	cmovbe	%eax, %edx
	movl	20(%ebp), %eax
	movl	(%eax), %ecx
	movl	12(%ebp), %eax
	leal	(%ecx,%eax), %ebx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 16(%esp)
	leal	-20(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__ReadFile@20, %eax
	call	*%eax
	subl	$20, %esp
	testl	%eax, %eax
	jne	L9
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L10
L9:
	movl	20(%ebp), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	addl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%edx, (%eax)
L8:
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, 16(%ebp)
	ja	L11
L10:
	movl	-12(%ebp), %eax
	movl	-4(%ebp), %ebx
	leave
	ret
	.def	_packet_receive_named_pipe;	.scl	3;	.type	32;	.endef
_packet_receive_named_pipe:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$132, %esp
	movl	$0, -12(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, %ecx
	movl	$32, %eax
	andl	$-4, %eax
	movl	%eax, %edx
	movl	$0, %eax
L14:
	movl	%ecx, -88(%ebp,%eax)
	addl	$4, %eax
	cmpl	%edx, %eax
	jb	L14
	movl	$1, -16(%ebp)
	movl	$0, -20(%ebp)
	movl	$0, -28(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	48(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_acquire
	jmp	L16
L20:
	movl	$32, %eax
	subl	-12(%ebp), %eax
	movl	%eax, %edx
	leal	-88(%ebp), %ecx
	movl	-12(%ebp), %eax
	leal	(%ecx,%eax), %ebx
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 16(%esp)
	leal	-92(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__ReadFile@20, %eax
	call	*%eax
	subl	$20, %esp
	testl	%eax, %eax
	jne	L17
	movl	$1168, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
	jmp	L18
L17:
	movl	-92(%ebp), %eax
	addl	%eax, -12(%ebp)
	cmpl	$32, -12(%ebp)
	je	L19
	jmp	L16
L19:
	movl	$0, -16(%ebp)
L16:
	cmpl	$0, -16(%ebp)
	jne	L20
	cmpl	$32, -12(%ebp)
	jne	L29
	movzbl	-85(%ebp), %eax
	testb	%al, %al
	jne	L22
	leal	-88(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	movl	-48(%ebp), %eax
	subl	$28, %eax
	movl	%eax, -52(%ebp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, -56(%ebp)
	movl	-52(%ebp), %eax
	leal	-92(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_read_raw_bytes_to_buffer
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	-92(%ebp), %eax
	cmpl	%eax, -52(%ebp)
	jne	L30
	movl	$0, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	12(%ebp), %eax
	movl	$0, (%eax)
	jmp	L18
L22:
	leal	-88(%ebp), %eax
	addl	$4, %eax
	movl	$28, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	_xor_bytes
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	addl	$32, %eax
	movl	%eax, (%esp)
	call	_is_null_guid
	testl	%eax, %eax
	je	L24
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	addl	$32, %eax
	movl	-84(%ebp), %edx
	movl	%edx, (%eax)
	movl	-80(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	-76(%ebp), %edx
	movl	%edx, 8(%eax)
	movl	-72(%ebp), %edx
	movl	%edx, 12(%eax)
L24:
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__ntohl@4, %eax
	call	*%eax
	subl	$4, %esp
	subl	$8, %eax
	movl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
	addl	$32, %eax
	movl	%eax, -40(%ebp)
	movl	-36(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	jne	L25
	movl	$8, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
	jmp	L18
L25:
	movl	$28, 8(%esp)
	leal	-88(%ebp), %eax
	addl	$4, %eax
	movl	%eax, 4(%esp)
	leal	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	_xor_bytes
	movl	$32, 12(%esp)
	leal	-88(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$32, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__memcpy_s, %eax
	call	*%eax
	movl	-20(%ebp), %eax
	addl	$32, %eax
	movl	%eax, -28(%ebp)
	leal	-92(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_read_raw_bytes_to_buffer
	movl	%eax, -44(%ebp)
	movl	-92(%ebp), %eax
	cmpl	%eax, -36(%ebp)
	je	L26
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
	jmp	L18
L26:
	movl	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_decrypt_packet
	movl	%eax, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	$0, -20(%ebp)
	jmp	L18
L29:
	nop
	jmp	L18
L30:
	nop
L18:
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -44(%ebp)
	cmpl	$0, -20(%ebp)
	je	L27
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
L27:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_release
	movl	-44(%ebp), %eax
	movl	-4(%ebp), %ebx
	leave
	ret
	.def	_server_dispatch_named_pipe;	.scl	3;	.type	32;	.endef
_server_dispatch_named_pipe:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$56, %esp
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	$1, -12(%ebp)
	movl	$0, -16(%ebp)
	movl	$0, -36(%ebp)
	movl	$0, -28(%ebp)
	call	_current_unix_timestamp
	movl	%eax, -20(%ebp)
	jmp	L32
L40:
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_event_poll
	testl	%eax, %eax
	jne	L42
	movl	$500, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_server_pipe_poll
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jne	L35
	leal	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_receive_named_pipe
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jne	L43
	movl	-36(%ebp), %eax
	testl	%eax, %eax
	je	L37
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_command_handle
	movl	%eax, -12(%ebp)
L37:
	call	_current_unix_timestamp
	movl	%eax, -20(%ebp)
	jmp	L32
L35:
	cmpl	$109, -16(%ebp)
	je	L44
	call	_current_unix_timestamp
	movl	%eax, -32(%ebp)
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	cmpl	%eax, -32(%ebp)
	jle	L39
	movl	$0, -16(%ebp)
	jmp	L34
L39:
	movl	-32(%ebp), %eax
	subl	-20(%ebp), %eax
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	52(%eax), %eax
	cmpl	%eax, %edx
	jle	L32
	movl	$5035, -16(%ebp)
	jmp	L34
L32:
	cmpl	$0, -12(%ebp)
	jne	L40
	jmp	L34
L42:
	nop
	jmp	L34
L43:
	nop
	jmp	L34
L44:
	nop
L34:
	movl	-16(%ebp), %eax
	leave
	ret
	.def	_transport_destroy_named_pipe;	.scl	3;	.type	32;	.endef
_transport_destroy_named_pipe:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	cmpl	$0, 8(%ebp)
	je	L50
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$8, %eax
	jne	L50
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	je	L47
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	_free
	movl	8(%ebp), %eax
	movl	$0, 44(%eax)
L47:
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	je	L48
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L48
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_free
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	$0, (%eax)
L48:
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	je	L49
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, (%esp)
	call	_free
	movl	8(%ebp), %eax
	movl	$0, 48(%eax)
L49:
	cmpl	$0, 8(%ebp)
	je	L50
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	$0, 8(%ebp)
L50:
	nop
	leave
	ret
	.def	_transport_reset_named_pipe;	.scl	3;	.type	32;	.endef
_transport_reset_named_pipe:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	cmpl	$0, 8(%ebp)
	je	L54
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$8, %eax
	jne	L54
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	L53
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$-1, %eax
	je	L53
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__CloseHandle@4, %eax
	call	*%eax
	subl	$4, %esp
L53:
	movl	-12(%ebp), %eax
	movl	$0, 4(%eax)
L54:
	nop
	leave
	ret
	.def	_reverse_named_pipe;	.scl	3;	.type	32;	.endef
_reverse_named_pipe:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$56, %esp
	movl	$0, -16(%ebp)
	movl	$-1, -12(%ebp)
	call	_current_unix_timestamp
	movl	%eax, -20(%ebp)
L58:
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$3, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$-1073741824, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__CreateFileW@28, %eax
	call	*%eax
	subl	$28, %esp
	movl	%eax, -12(%ebp)
	cmpl	$-1, -12(%ebp)
	jne	L60
	movl	$-1, -12(%ebp)
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -16(%ebp)
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	_sleep
	call	_current_unix_timestamp
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	subl	%eax, %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jb	L58
	jmp	L57
L60:
	nop
L57:
	movl	-12(%ebp), %eax
	leave
	ret
	.section .rdata,"dr"
LC0:
	.ascii "SeSecurityPrivilege\0"
	.text
	.def	_bind_named_pipe;	.scl	3;	.type	32;	.endef
_bind_named_pipe:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$72, %esp
	movl	$0, -16(%ebp)
	movl	$-1, -12(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC0, (%esp)
	call	_toggle_privilege
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	jne	L62
	movl	$0, -40(%ebp)
	movl	$0, -36(%ebp)
	movl	$0, -32(%ebp)
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_create_pipe_security_attributes
	leal	-40(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	$0, 24(%esp)
	movl	$65536, 20(%esp)
	movl	$65536, 16(%esp)
	movl	$255, 12(%esp)
	movl	$0, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__CreateNamedPipeW@32, %eax
	call	*%eax
	subl	$32, %esp
	movl	%eax, -12(%ebp)
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -16(%ebp)
	movl	-28(%ebp), %eax
	testl	%eax, %eax
	jne	L62
	leal	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$LC0, (%esp)
	call	_toggle_privilege
L62:
	cmpl	$-1, -12(%ebp)
	jne	L64
	movl	$0, 28(%esp)
	movl	$0, 24(%esp)
	movl	$65536, 20(%esp)
	movl	$65536, 16(%esp)
	movl	$255, 12(%esp)
	movl	$0, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__CreateNamedPipeW@32, %eax
	call	*%eax
	subl	$32, %esp
	movl	%eax, -12(%ebp)
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -16(%ebp)
L64:
	cmpl	$-1, -12(%ebp)
	jne	L65
	movl	$-1, %eax
	jmp	L70
L65:
	call	_current_unix_timestamp
	movl	%eax, -24(%ebp)
L69:
	movl	$0, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__ConnectNamedPipe@8, %eax
	call	*%eax
	subl	$8, %esp
	testl	%eax, %eax
	je	L67
	movl	-12(%ebp), %eax
	jmp	L70
L67:
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -16(%ebp)
	cmpl	$535, -16(%ebp)
	jne	L68
	movl	-12(%ebp), %eax
	jmp	L70
L68:
	movl	$1, (%esp)
	call	_sleep
	call	_current_unix_timestamp
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	subl	%eax, %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jb	L69
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__CloseHandle@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	$-1, %eax
L70:
	leave
	ret
	.section .rdata,"dr"
	.align 2
LC1:
	.ascii "p\0i\0p\0e\0\0\0"
	.align 2
LC2:
	.ascii "/\0/\0\0\0"
	.align 2
LC3:
	.ascii "\\\0\\\0%\0s\0\\\0p\0i\0p\0e\0\\\0%\0s\0\0\0"
	.align 2
LC4:
	.ascii "\\\0\\\0.\0\\\0\0\0"
	.text
	.def	_configure_named_pipe_connection;	.scl	3;	.type	32;	.endef
_configure_named_pipe_connection:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$1092, %esp
	movl	$0, -12(%ebp)
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L72
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$512, 4(%esp)
	leal	-1056(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__wcscpy_s, %eax
	call	*%eax
	call	_current_unix_timestamp
	movl	8(%ebp), %edx
	movl	%eax, 64(%edx)
	movl	$4, 8(%esp)
	movl	$LC1, 4(%esp)
	leal	-1056(%ebp), %eax
	movl	%eax, (%esp)
	call	_wcsncmp
	testl	%eax, %eax
	jne	L72
	movl	$LC2, 4(%esp)
	leal	-1056(%ebp), %eax
	movl	%eax, (%esp)
	call	_wcsstr
	addl	$4, %eax
	movl	%eax, -20(%ebp)
	movl	$47, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_wcschr
	addl	$2, %eax
	movl	%eax, -24(%ebp)
	movl	$47, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_wcschr
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	L73
	movl	-28(%ebp), %eax
	movw	$0, (%eax)
L73:
	movl	-24(%ebp), %eax
	subl	$2, %eax
	movw	$0, (%eax)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_wcslen
	movl	%eax, %ebx
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_wcslen
	addl	%ebx, %eax
	addl	$9, %eax
	movl	%eax, -32(%ebp)
	movl	$2, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_calloc
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%edx, (%eax)
	movl	-32(%ebp), %eax
	leal	-1(%eax), %ecx
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	-24(%ebp), %edx
	movl	%edx, 20(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, 16(%esp)
	movl	$LC3, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	-32(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp___snwprintf_s, %eax
	call	*%eax
L72:
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	L74
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$-1, %eax
	je	L74
	movl	$0, -1060(%ebp)
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	leal	-1060(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__SetNamedPipeHandleState@16, %eax
	call	*%eax
	subl	$16, %esp
	jmp	L75
L74:
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L76
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	$4, 8(%esp)
	movl	$LC4, 4(%esp)
	movl	%eax, (%esp)
	call	_wcsncmp
	testl	%eax, %eax
	jne	L77
	movl	8(%ebp), %eax
	leal	52(%eax), %edx
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_bind_named_pipe
	movl	-16(%ebp), %edx
	movl	%eax, 4(%edx)
	jmp	L75
L77:
	movl	8(%ebp), %eax
	leal	52(%eax), %edx
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_reverse_named_pipe
	movl	-16(%ebp), %edx
	movl	%eax, 4(%edx)
	jmp	L75
L76:
	movl	$87, -12(%ebp)
L75:
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$-1, %eax
	jne	L78
	movl	$87, %eax
	jmp	L80
L78:
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__SetHandleInformation@12, %eax
	call	*%eax
	subl	$12, %esp
	call	_current_unix_timestamp
	movl	8(%ebp), %edx
	movl	%eax, 64(%edx)
	movl	-12(%ebp), %eax
L80:
	movl	-4(%ebp), %ebx
	leave
	ret
	.globl	_packet_transmit_named_pipe
	.def	_packet_transmit_named_pipe;	.scl	2;	.type	32;	.endef
_packet_transmit_named_pipe:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$52, %esp
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	48(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	$0, -12(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -16(%ebp)
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_acquire
	jmp	L82
L85:
	movl	16(%ebp), %eax
	subl	-12(%ebp), %eax
	movl	%eax, %edx
	movl	12(%ebp), %ecx
	movl	-12(%ebp), %eax
	leal	(%ecx,%eax), %ebx
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 16(%esp)
	leal	-24(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__WriteFile@20, %eax
	call	*%eax
	subl	$20, %esp
	testl	%eax, %eax
	jne	L83
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -16(%ebp)
	jmp	L87
L83:
	movl	-24(%ebp), %eax
	addl	%eax, -12(%ebp)
L82:
	movl	-12(%ebp), %eax
	cmpl	16(%ebp), %eax
	jb	L85
L87:
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_release
	movl	-16(%ebp), %eax
	movl	-4(%ebp), %ebx
	leave
	ret
	.def	_transport_get_handle_named_pipe;	.scl	3;	.type	32;	.endef
_transport_get_handle_named_pipe:
	pushl	%ebp
	movl	%esp, %ebp
	cmpl	$0, 8(%ebp)
	je	L89
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	4(%eax), %eax
	jmp	L90
L89:
	movl	$0, %eax
L90:
	popl	%ebp
	ret
	.def	_transport_set_handle_named_pipe;	.scl	3;	.type	32;	.endef
_transport_set_handle_named_pipe:
	pushl	%ebp
	movl	%esp, %ebp
	cmpl	$0, 8(%ebp)
	je	L93
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$8, %eax
	jne	L93
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%eax)
L93:
	nop
	popl	%ebp
	ret
	.globl	_transport_write_named_pipe_config
	.def	_transport_write_named_pipe_config;	.scl	2;	.type	32;	.endef
_transport_write_named_pipe_config:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	cmpl	$0, 8(%ebp)
	je	L96
	cmpl	$0, 12(%ebp)
	je	L96
	movl	8(%ebp), %eax
	movl	52(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 1024(%eax)
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 1028(%eax)
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 1032(%eax)
	movl	8(%ebp), %eax
	movl	44(%eax), %edx
	movl	12(%ebp), %eax
	movl	$512, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_wcsncpy
L96:
	nop
	leave
	ret
	.def	_get_migrate_context_named_pipe;	.scl	3;	.type	32;	.endef
_get_migrate_context_named_pipe:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	pushl	%ebx
	subl	$48, %esp
	movl	$24, 4(%esp)
	movl	$1, (%esp)
	call	_calloc
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	leal	16(%eax), %esi
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	4(%eax), %ebx
	movl	__imp__GetCurrentProcess@0, %eax
	call	*%eax
	movl	$2, 24(%esp)
	movl	$1, 20(%esp)
	movl	$0, 16(%esp)
	movl	%esi, 12(%esp)
	movl	16(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__DuplicateHandle@28, %eax
	call	*%eax
	subl	$28, %esp
	testl	%eax, %eax
	jne	L98
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	jmp	L99
L98:
	movl	20(%ebp), %eax
	movl	$24, (%eax)
	movl	24(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, (%eax)
	movl	$0, %eax
L99:
	leal	-8(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
	.def	_transport_get_config_size_named_pipe;	.scl	3;	.type	32;	.endef
_transport_get_config_size_named_pipe:
	pushl	%ebp
	movl	%esp, %ebp
	movl	$1036, %eax
	popl	%ebp
	ret
	.globl	_transport_create_named_pipe
	.def	_transport_create_named_pipe;	.scl	2;	.type	32;	.endef
_transport_create_named_pipe:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$76, 4(%esp)
	movl	$1, (%esp)
	call	_calloc
	movl	%eax, -12(%ebp)
	movl	$12, 4(%esp)
	movl	$1, (%esp)
	call	_calloc
	movl	%eax, -16(%ebp)
	cmpl	$0, 12(%ebp)
	je	L103
	movl	12(%ebp), %eax
	movl	$1036, (%eax)
L103:
	call	_lock_create
	movl	-16(%ebp), %edx
	movl	%eax, 8(%edx)
	movl	-12(%ebp), %eax
	movl	$8, (%eax)
	movl	8(%ebp), %eax
	movl	1024(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 52(%eax)
	movl	8(%ebp), %eax
	movl	1028(%eax), %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 56(%eax)
	movl	8(%ebp), %eax
	movl	1032(%eax), %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 60(%eax)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp___wcsdup, %eax
	call	*%eax
	movl	-12(%ebp), %edx
	movl	%eax, 44(%edx)
	movl	-12(%ebp), %eax
	movl	$_packet_transmit_named_pipe, 36(%eax)
	movl	-12(%ebp), %eax
	movl	$_configure_named_pipe_connection, 20(%eax)
	movl	-12(%ebp), %eax
	movl	$_transport_destroy_named_pipe, 28(%eax)
	movl	-12(%ebp), %eax
	movl	$_transport_reset_named_pipe, 16(%eax)
	movl	-12(%ebp), %eax
	movl	$_server_dispatch_named_pipe, 32(%eax)
	movl	-12(%ebp), %eax
	movl	$_transport_get_handle_named_pipe, 4(%eax)
	movl	-12(%ebp), %eax
	movl	$_transport_set_handle_named_pipe, 8(%eax)
	movl	-12(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 48(%eax)
	call	_current_unix_timestamp
	movl	-12(%ebp), %edx
	movl	%eax, 64(%edx)
	movl	-12(%ebp), %eax
	movl	$_get_migrate_context_named_pipe, 40(%eax)
	movl	-12(%ebp), %eax
	movl	$_transport_get_config_size_named_pipe, 12(%eax)
	movl	-12(%ebp), %eax
	leave
	ret
	.ident	"GCC: (GNU) 9.3-win32 20200320"
	.def	_lock_acquire;	.scl	2;	.type	32;	.endef
	.def	_lock_release;	.scl	2;	.type	32;	.endef
	.def	_malloc;	.scl	2;	.type	32;	.endef
	.def	_free;	.scl	2;	.type	32;	.endef
	.def	_xor_bytes;	.scl	2;	.type	32;	.endef
	.def	_is_null_guid;	.scl	2;	.type	32;	.endef
	.def	_decrypt_packet;	.scl	2;	.type	32;	.endef
	.def	_current_unix_timestamp;	.scl	2;	.type	32;	.endef
	.def	_event_poll;	.scl	2;	.type	32;	.endef
	.def	_command_handle;	.scl	2;	.type	32;	.endef
	.def	_sleep;	.scl	2;	.type	32;	.endef
	.def	_toggle_privilege;	.scl	2;	.type	32;	.endef
	.def	_create_pipe_security_attributes;	.scl	2;	.type	32;	.endef
	.def	_wcsncmp;	.scl	2;	.type	32;	.endef
	.def	_wcsstr;	.scl	2;	.type	32;	.endef
	.def	_wcschr;	.scl	2;	.type	32;	.endef
	.def	_wcslen;	.scl	2;	.type	32;	.endef
	.def	_calloc;	.scl	2;	.type	32;	.endef
	.def	_wcsncpy;	.scl	2;	.type	32;	.endef
	.def	_lock_create;	.scl	2;	.type	32;	.endef
