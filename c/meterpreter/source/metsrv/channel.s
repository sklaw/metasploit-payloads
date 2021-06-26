	.file	"channel.c"
	.text
	.globl	_channelList
	.bss
	.align 4
_channelList:
	.space 4
	.globl	_channelIdPool
	.align 4
_channelIdPool:
	.space 4
	.text
	.globl	_channel_create
	.def	_channel_create;	.scl	2;	.type	32;	.endef
_channel_create:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$0, -12(%ebp)
	movl	$64, (%esp)
	call	_malloc
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	L7
	movl	$64, 8(%esp)
	movl	$0, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_memset
	cmpl	$0, 8(%ebp)
	jne	L4
	movl	_channelIdPool, %eax
	addl	$1, %eax
	movl	%eax, _channelIdPool
	movl	_channelIdPool, %eax
	jmp	L5
L4:
	movl	8(%ebp), %eax
L5:
	movl	-12(%ebp), %edx
	movl	%eax, (%edx)
	movl	-12(%ebp), %eax
	movl	$0, 12(%eax)
	movl	-12(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 16(%eax)
	movl	-12(%ebp), %eax
	movl	$0, 4(%eax)
	call	_lock_create
	movl	-12(%ebp), %edx
	movl	%eax, 20(%edx)
	movl	-12(%ebp), %eax
	addl	$24, %eax
	movl	$32, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	-12(%ebp), %eax
	addl	$24, %eax
	movl	$_channel_default_io_handler, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_channel_set_buffered_io_handler
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_channel_add_list_entry
	jmp	L3
L7:
	nop
L3:
	movl	-12(%ebp), %eax
	leave
	ret
	.globl	_channel_create_stream
	.def	_channel_create_stream;	.scl	2;	.type	32;	.endef
_channel_create_stream:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_channel_create
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	L9
	movl	-12(%ebp), %eax
	movl	$1, 4(%eax)
	cmpl	$0, 16(%ebp)
	je	L10
	movl	-12(%ebp), %eax
	leal	24(%eax), %edx
	movl	$16, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_memcpy
	jmp	L9
L10:
	movl	-12(%ebp), %eax
	addl	$24, %eax
	movl	$32, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
L9:
	movl	-12(%ebp), %eax
	leave
	ret
	.globl	_channel_create_datagram
	.def	_channel_create_datagram;	.scl	2;	.type	32;	.endef
_channel_create_datagram:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_channel_create
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	L13
	movl	-12(%ebp), %eax
	movl	$2, 4(%eax)
	cmpl	$0, 16(%ebp)
	je	L14
	movl	-12(%ebp), %eax
	leal	24(%eax), %edx
	movl	$16, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_memcpy
	jmp	L13
L14:
	movl	-12(%ebp), %eax
	addl	$24, %eax
	movl	$32, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
L13:
	movl	-12(%ebp), %eax
	leave
	ret
	.globl	_channel_create_pool
	.def	_channel_create_pool;	.scl	2;	.type	32;	.endef
_channel_create_pool:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_channel_create
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	L17
	movl	-12(%ebp), %eax
	movl	$3, 4(%eax)
	cmpl	$0, 16(%ebp)
	je	L18
	movl	-12(%ebp), %eax
	leal	24(%eax), %edx
	movl	$32, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_memcpy
	jmp	L17
L18:
	movl	-12(%ebp), %eax
	addl	$24, %eax
	movl	$32, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
L17:
	movl	-12(%ebp), %eax
	leave
	ret
	.globl	_channel_destroy
	.def	_channel_destroy;	.scl	2;	.type	32;	.endef
_channel_destroy:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$56, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_channel_get_class
	testl	%eax, %eax
	jne	L21
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	L21
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	8(%ebp), %edx
	movl	40(%edx), %edx
	movl	8(%ebp), %ecx
	addl	$24, %ecx
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$3, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	L23
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	_free
	jmp	L23
L21:
	movl	8(%ebp), %eax
	addl	$24, %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L23
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	-12(%ebp), %edx
	movl	(%edx), %edx
	movl	%edx, 8(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
L23:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_channel_remove_list_entry
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_destroy
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	nop
	leave
	ret
	.globl	_channel_get_id
	.def	_channel_get_id;	.scl	2;	.type	32;	.endef
_channel_get_id:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	popl	%ebp
	ret
	.globl	_channel_set_type
	.def	_channel_set_type;	.scl	2;	.type	32;	.endef
_channel_set_type:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L27
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	_free
L27:
	movl	8(%ebp), %eax
	movl	$0, 8(%eax)
	cmpl	$0, 12(%ebp)
	je	L29
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp___strdup, %eax
	call	*%eax
	movl	8(%ebp), %edx
	movl	%eax, 8(%edx)
L29:
	nop
	leave
	ret
	.globl	_channel_get_type
	.def	_channel_get_type;	.scl	2;	.type	32;	.endef
_channel_get_type:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	popl	%ebp
	ret
	.globl	_channel_get_class
	.def	_channel_get_class;	.scl	2;	.type	32;	.endef
_channel_get_class:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	popl	%ebp
	ret
	.globl	_channel_set_flags
	.def	_channel_set_flags;	.scl	2;	.type	32;	.endef
_channel_set_flags:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 16(%eax)
	nop
	popl	%ebp
	ret
	.globl	_channel_is_flag
	.def	_channel_is_flag;	.scl	2;	.type	32;	.endef
_channel_is_flag:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	andl	12(%ebp), %eax
	cmpl	%eax, 12(%ebp)
	sete	%al
	popl	%ebp
	ret
	.globl	_channel_get_flags
	.def	_channel_get_flags;	.scl	2;	.type	32;	.endef
_channel_get_flags:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	popl	%ebp
	ret
	.globl	_channel_set_interactive
	.def	_channel_set_interactive;	.scl	2;	.type	32;	.endef
_channel_set_interactive:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 12(%eax)
	nop
	popl	%ebp
	ret
	.globl	_channel_is_interactive
	.def	_channel_is_interactive;	.scl	2;	.type	32;	.endef
_channel_is_interactive:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	popl	%ebp
	ret
	.globl	_channel_set_buffered_io_handler
	.def	_channel_set_buffered_io_handler;	.scl	2;	.type	32;	.endef
_channel_set_buffered_io_handler:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	8(%ebp), %eax
	leal	24(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_channel_set_buffer_io_handler
	nop
	leave
	ret
	.globl	_channel_get_buffered_io_context
	.def	_channel_get_buffered_io_context;	.scl	2;	.type	32;	.endef
_channel_get_buffered_io_context:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	popl	%ebp
	ret
	.globl	_channel_write_to_remote
	.def	_channel_write_to_remote;	.scl	2;	.type	32;	.endef
_channel_write_to_remote:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$72, %esp
	movl	$8, 4(%esp)
	movl	$0, (%esp)
	call	_packet_create
	movl	%eax, -16(%ebp)
	movl	$0, -12(%ebp)
	cmpl	$0, -16(%ebp)
	jne	L46
	movl	$8, -12(%ebp)
	jmp	L47
L46:
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_channel_get_id
	movl	%eax, (%esp)
	movl	__imp__htonl@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	%eax, -44(%ebp)
	movl	$131122, -36(%ebp)
	movl	$4, -40(%ebp)
	leal	-44(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	$2, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_channel_is_flag
	testb	%al, %al
	je	L48
	movl	$537133108, -24(%ebp)
	jmp	L49
L48:
	movl	$262196, -24(%ebp)
L49:
	movl	20(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	$2, 12(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1073741877, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_group
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jne	L52
	movl	$0, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_transmit
	movl	%eax, -12(%ebp)
	jmp	L47
L52:
	nop
L47:
	movl	-12(%ebp), %eax
	leave
	ret
	.globl	_channel_write_to_buffered
	.def	_channel_write_to_buffered;	.scl	2;	.type	32;	.endef
_channel_write_to_buffered:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$36, %esp
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	8(%ebp), %edx
	movl	40(%edx), %edx
	movl	8(%ebp), %ecx
	leal	24(%ecx), %ebx
	movl	20(%ebp), %ecx
	movl	%ecx, 24(%esp)
	movl	16(%ebp), %ecx
	movl	%ecx, 20(%esp)
	movl	12(%ebp), %ecx
	movl	%ecx, 16(%esp)
	movl	$2, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
	.globl	_channel_read_from_buffered
	.def	_channel_read_from_buffered;	.scl	2;	.type	32;	.endef
_channel_read_from_buffered:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$36, %esp
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	8(%ebp), %edx
	movl	40(%edx), %edx
	movl	8(%ebp), %ecx
	leal	24(%ecx), %ebx
	movl	20(%ebp), %ecx
	movl	%ecx, 24(%esp)
	movl	16(%ebp), %ecx
	movl	%ecx, 20(%esp)
	movl	12(%ebp), %ecx
	movl	%ecx, 16(%esp)
	movl	$1, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
	.globl	_channel_set_buffer_io_handler
	.def	_channel_set_buffer_io_handler;	.scl	2;	.type	32;	.endef
_channel_set_buffer_io_handler:
	pushl	%ebp
	movl	%esp, %ebp
	cmpl	$0, 16(%ebp)
	jne	L58
	movl	$_channel_default_io_handler, 16(%ebp)
	movl	$0, 12(%ebp)
L58:
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 16(%eax)
	movl	8(%ebp), %eax
	movl	16(%ebp), %edx
	movl	%edx, 12(%eax)
	nop
	popl	%ebp
	ret
	.globl	_channel_set_native_io_context
	.def	_channel_set_native_io_context;	.scl	2;	.type	32;	.endef
_channel_set_native_io_context:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$16, %esp
	movl	8(%ebp), %eax
	addl	$24, %eax
	movl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, (%eax)
	nop
	leave
	ret
	.globl	_channel_get_native_io_context
	.def	_channel_get_native_io_context;	.scl	2;	.type	32;	.endef
_channel_get_native_io_context:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$16, %esp
	movl	8(%ebp), %eax
	addl	$24, %eax
	movl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	leave
	ret
	.globl	_channel_duplicate_completion_routine
	.def	_channel_duplicate_completion_routine;	.scl	2;	.type	32;	.endef
_channel_duplicate_completion_routine:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$0, -12(%ebp)
	movl	$24, (%esp)
	call	_malloc
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	L63
	movl	$24, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_memcpy
L63:
	movl	-12(%ebp), %eax
	leave
	ret
	.globl	__channel_packet_completion_routine
	.def	__channel_packet_completion_routine;	.scl	2;	.type	32;	.endef
__channel_packet_completion_routine:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$88, %esp
	movl	16(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	$131122, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_uint
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_channel_find_by_id
	movl	%eax, -32(%ebp)
	movl	$1168, -12(%ebp)
	cmpl	$0, -32(%ebp)
	jne	L66
	cmpl	$4, 20(%ebp)
	je	L66
	movl	$1168, %eax
	jmp	L67
L66:
	cmpl	$4, 20(%ebp)
	jne	L68
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	L68
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	-24(%ebp), %edx
	movl	(%edx), %edx
	movl	24(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-32(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L69
L68:
	cmpl	$5, 20(%ebp)
	jne	L70
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L70
	movl	$0, -36(%ebp)
	movl	$0, -40(%ebp)
	movl	$0, -16(%ebp)
	movl	$131097, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_uint
	movl	%eax, -36(%ebp)
	cmpl	$0, -36(%ebp)
	je	L71
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	L71
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_memset
	leal	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_channel_read_from_buffered
L71:
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	movl	-40(%ebp), %ecx
	movl	-24(%ebp), %edx
	movl	(%edx), %edx
	movl	%ecx, 20(%esp)
	movl	-16(%ebp), %ecx
	movl	%ecx, 16(%esp)
	movl	24(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-32(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -16(%ebp)
	je	L76
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	jmp	L76
L70:
	cmpl	$8, 20(%ebp)
	jne	L73
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	L73
	movl	$0, -20(%ebp)
	leal	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$131097, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv
	testl	%eax, %eax
	jne	L74
	movl	-52(%ebp), %eax
	cmpl	$3, %eax
	jbe	L74
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__ntohl@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	%eax, -20(%ebp)
L74:
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	-24(%ebp), %edx
	movl	(%edx), %edx
	movl	-20(%ebp), %ecx
	movl	%ecx, 16(%esp)
	movl	24(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-32(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L69
L73:
	cmpl	$1, 20(%ebp)
	jne	L75
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	L75
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	movl	-24(%ebp), %edx
	movl	(%edx), %edx
	movl	24(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-32(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L69
L75:
	cmpl	$3, 20(%ebp)
	jne	L69
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	L69
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	-24(%ebp), %edx
	movl	(%edx), %edx
	movl	24(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-32(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L69
L76:
	nop
L69:
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	-12(%ebp), %eax
L67:
	leave
	ret
	.globl	_channel_open
	.def	_channel_open;	.scl	2;	.type	32;	.endef
_channel_open:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$72, %esp
	movl	$0, -12(%ebp)
	movl	$0, -16(%ebp)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	_packet_create
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	jne	L78
	movl	$8, -16(%ebp)
	jmp	L79
L78:
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlvs
	leal	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$131073, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv
	testl	%eax, %eax
	je	L80
	movl	$4, 8(%esp)
	movl	$131073, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_uint
L80:
	cmpl	$0, 20(%ebp)
	je	L81
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	_channel_duplicate_completion_routine
	movl	%eax, -32(%ebp)
	movl	$__channel_packet_completion_routine, -28(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, -12(%ebp)
L81:
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_transmit
	movl	%eax, -16(%ebp)
L79:
	movl	-16(%ebp), %eax
	leave
	ret
	.globl	_channel_read
	.def	_channel_read;	.scl	2;	.type	32;	.endef
_channel_read:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$72, %esp
	movl	$0, -12(%ebp)
	movl	$0, -16(%ebp)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	_packet_create
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	jne	L84
	movl	$8, -16(%ebp)
	jmp	L85
L84:
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlvs
	leal	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$131073, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv
	testl	%eax, %eax
	je	L86
	movl	$5, 8(%esp)
	movl	$131073, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_uint
L86:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_channel_get_id
	movl	%eax, 8(%esp)
	movl	$131122, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_uint
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$131097, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_uint
	cmpl	$0, 28(%ebp)
	je	L87
	movl	28(%ebp), %eax
	movl	%eax, (%esp)
	call	_channel_duplicate_completion_routine
	movl	%eax, -32(%ebp)
	movl	$__channel_packet_completion_routine, -28(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, -12(%ebp)
L87:
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_transmit
	movl	%eax, -16(%ebp)
L85:
	movl	-16(%ebp), %eax
	leave
	ret
	.globl	_channel_write
	.def	_channel_write;	.scl	2;	.type	32;	.endef
_channel_write:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$72, %esp
	movl	$0, -12(%ebp)
	movl	$0, -16(%ebp)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	_packet_create
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	jne	L90
	movl	$8, -16(%ebp)
	jmp	L91
L90:
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlvs
	leal	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$131073, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv
	testl	%eax, %eax
	je	L92
	movl	$8, 8(%esp)
	movl	$131073, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_uint
L92:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_channel_get_id
	movl	%eax, 8(%esp)
	movl	$131122, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_uint
	movl	$2, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_channel_is_flag
	testb	%al, %al
	je	L93
	movl	28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$537133108, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_raw
	jmp	L94
L93:
	movl	28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$262196, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_raw
L94:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_channel_get_id
	movl	%eax, 8(%esp)
	movl	$131097, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_uint
	cmpl	$0, 32(%ebp)
	je	L95
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	_channel_duplicate_completion_routine
	movl	%eax, -32(%ebp)
	movl	$__channel_packet_completion_routine, -28(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, -12(%ebp)
L95:
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_transmit
	movl	%eax, -16(%ebp)
L91:
	movl	-16(%ebp), %eax
	leave
	ret
	.globl	_channel_close
	.def	_channel_close;	.scl	2;	.type	32;	.endef
_channel_close:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$72, %esp
	movl	$0, -12(%ebp)
	movl	$0, -16(%ebp)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	_packet_create
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	jne	L98
	movl	$8, -16(%ebp)
	jmp	L99
L98:
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlvs
	leal	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$131073, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv
	testl	%eax, %eax
	je	L100
	movl	$1, 8(%esp)
	movl	$131073, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_uint
L100:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_channel_get_id
	movl	%eax, 8(%esp)
	movl	$131122, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_uint
	cmpl	$0, 24(%ebp)
	je	L101
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	_channel_duplicate_completion_routine
	movl	%eax, -32(%ebp)
	movl	$__channel_packet_completion_routine, -28(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, -12(%ebp)
L101:
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_transmit
	movl	%eax, -16(%ebp)
L99:
	movl	-16(%ebp), %eax
	leave
	ret
	.globl	_channel_interact
	.def	_channel_interact;	.scl	2;	.type	32;	.endef
_channel_interact:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$72, %esp
	movl	$0, -12(%ebp)
	movl	$0, -16(%ebp)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	_packet_create
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	jne	L104
	movl	$8, -16(%ebp)
	jmp	L105
L104:
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlvs
	leal	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$131073, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv
	testl	%eax, %eax
	je	L106
	movl	$3, 8(%esp)
	movl	$131073, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_uint
L106:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_channel_get_id
	movl	%eax, 8(%esp)
	movl	$131122, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_uint
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$524300, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_bool
	cmpl	$0, 28(%ebp)
	je	L107
	movl	28(%ebp), %eax
	movl	%eax, (%esp)
	call	_channel_duplicate_completion_routine
	movl	%eax, -32(%ebp)
	movl	$__channel_packet_completion_routine, -28(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, -12(%ebp)
L107:
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_transmit
	movl	%eax, -16(%ebp)
L105:
	movl	-16(%ebp), %eax
	leave
	ret
	.globl	_channel_find_by_id
	.def	_channel_find_by_id;	.scl	2;	.type	32;	.endef
_channel_find_by_id:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$16, %esp
	movl	_channelList, %eax
	movl	%eax, -4(%ebp)
	jmp	L110
L113:
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, 8(%ebp)
	je	L115
	movl	-4(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -4(%ebp)
L110:
	cmpl	$0, -4(%ebp)
	jne	L113
	jmp	L112
L115:
	nop
L112:
	movl	-4(%ebp), %eax
	leave
	ret
	.globl	_channel_add_list_entry
	.def	_channel_add_list_entry;	.scl	2;	.type	32;	.endef
_channel_add_list_entry:
	pushl	%ebp
	movl	%esp, %ebp
	movl	_channelList, %eax
	testl	%eax, %eax
	je	L117
	movl	_channelList, %eax
	movl	8(%ebp), %edx
	movl	%edx, 56(%eax)
L117:
	movl	_channelList, %edx
	movl	8(%ebp), %eax
	movl	%edx, 60(%eax)
	movl	8(%ebp), %eax
	movl	$0, 56(%eax)
	movl	8(%ebp), %eax
	movl	%eax, _channelList
	nop
	popl	%ebp
	ret
	.globl	_channel_remove_list_entry
	.def	_channel_remove_list_entry;	.scl	2;	.type	32;	.endef
_channel_remove_list_entry:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	L119
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	8(%ebp), %edx
	movl	60(%edx), %edx
	movl	%edx, 60(%eax)
	jmp	L120
L119:
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, _channelList
L120:
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	je	L122
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	8(%ebp), %edx
	movl	56(%edx), %edx
	movl	%edx, 56(%eax)
L122:
	nop
	popl	%ebp
	ret
	.globl	_channel_exists
	.def	_channel_exists;	.scl	2;	.type	32;	.endef
_channel_exists:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$16, %esp
	movl	_channelList, %eax
	movl	%eax, -4(%ebp)
	jmp	L124
L127:
	movl	-4(%ebp), %eax
	cmpl	8(%ebp), %eax
	jne	L125
	movl	$1, %eax
	jmp	L126
L125:
	movl	-4(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -4(%ebp)
L124:
	cmpl	$0, -4(%ebp)
	jne	L127
	movl	$0, %eax
L126:
	leave
	ret
	.globl	_channel_default_io_handler
	.def	_channel_default_io_handler;	.scl	2;	.type	32;	.endef
_channel_default_io_handler:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	cmpl	$1, 20(%ebp)
	je	L129
	cmpl	$2, 20(%ebp)
	je	L130
	jmp	L132
L129:
	movl	32(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_channel_read_buffer
	jmp	L132
L130:
	movl	32(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_channel_write_buffer
	nop
L132:
	movl	$0, %eax
	leave
	ret
	.globl	_channel_write_buffer
	.def	_channel_write_buffer;	.scl	2;	.type	32;	.endef
_channel_write_buffer:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	20(%ebp), %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	jbe	L135
	movl	$0, -12(%ebp)
	movl	$0, -16(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	20(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	andl	$4095, %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	addl	%edx, %eax
	addl	$4096, %eax
	movl	%eax, -16(%ebp)
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L136
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_realloc
	movl	%eax, -12(%ebp)
	jmp	L137
L136:
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, -12(%ebp)
L137:
	cmpl	$0, -12(%ebp)
	jne	L138
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L139
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_free
	movl	12(%ebp), %eax
	movl	$0, (%eax)
L139:
	movl	$20, 8(%esp)
	movl	$0, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_memset
	jmp	L134
L138:
	movl	12(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, (%eax)
	movl	12(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 8(%eax)
L135:
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	addl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_memcpy
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	20(%ebp), %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 4(%eax)
	cmpl	$0, 24(%ebp)
	je	L134
	movl	24(%ebp), %eax
	movl	20(%ebp), %edx
	movl	%edx, (%eax)
L134:
	leave
	ret
	.globl	_channel_read_buffer
	.def	_channel_read_buffer;	.scl	2;	.type	32;	.endef
_channel_read_buffer:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	20(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, -12(%ebp)
	jbe	L142
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
L142:
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	_memcpy
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, -12(%ebp)
	je	L143
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	subl	-12(%ebp), %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	(%eax), %ecx
	movl	-12(%ebp), %eax
	addl	%eax, %ecx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	_memcpy
L143:
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	subl	-12(%ebp), %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 4(%eax)
	cmpl	$0, 24(%ebp)
	je	L145
	movl	24(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, (%eax)
L145:
	nop
	leave
	ret
	.ident	"GCC: (GNU) 9.3-win32 20200320"
	.def	_malloc;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_lock_create;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	_free;	.scl	2;	.type	32;	.endef
	.def	_lock_destroy;	.scl	2;	.type	32;	.endef
	.def	_packet_create;	.scl	2;	.type	32;	.endef
	.def	_packet_add_tlv_group;	.scl	2;	.type	32;	.endef
	.def	_packet_transmit;	.scl	2;	.type	32;	.endef
	.def	_packet_get_tlv_value_uint;	.scl	2;	.type	32;	.endef
	.def	_packet_get_tlv;	.scl	2;	.type	32;	.endef
	.def	_packet_add_tlvs;	.scl	2;	.type	32;	.endef
	.def	_packet_add_tlv_uint;	.scl	2;	.type	32;	.endef
	.def	_packet_add_tlv_raw;	.scl	2;	.type	32;	.endef
	.def	_packet_add_tlv_bool;	.scl	2;	.type	32;	.endef
	.def	_realloc;	.scl	2;	.type	32;	.endef
