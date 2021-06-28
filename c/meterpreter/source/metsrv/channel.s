	.file	"channel.c"
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
	je	L8
	movl	$64, 8(%esp)
	movl	$0, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_memset
	cmpl	$0, 8(%ebp)
	jne	L5
	movl	_channelIdPool, %eax
	addl	$1, %eax
	movl	%eax, _channelIdPool
	movl	_channelIdPool, %eax
	jmp	L6
L5:
	movl	8(%ebp), %eax
L6:
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
	jmp	L4
L8:
	nop
L4:
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
	je	L10
	movl	-12(%ebp), %eax
	movl	$1, 4(%eax)
	cmpl	$0, 16(%ebp)
	je	L11
	movl	-12(%ebp), %eax
	leal	24(%eax), %edx
	movl	$16, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_memcpy
	jmp	L10
L11:
	movl	-12(%ebp), %eax
	addl	$24, %eax
	movl	$32, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
L10:
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
	je	L14
	movl	-12(%ebp), %eax
	movl	$2, 4(%eax)
	cmpl	$0, 16(%ebp)
	je	L15
	movl	-12(%ebp), %eax
	leal	24(%eax), %edx
	movl	$16, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_memcpy
	jmp	L14
L15:
	movl	-12(%ebp), %eax
	addl	$24, %eax
	movl	$32, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
L14:
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
	je	L18
	movl	-12(%ebp), %eax
	movl	$3, 4(%eax)
	cmpl	$0, 16(%ebp)
	je	L19
	movl	-12(%ebp), %eax
	leal	24(%eax), %edx
	movl	$32, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_memcpy
	jmp	L18
L19:
	movl	-12(%ebp), %eax
	addl	$24, %eax
	movl	$32, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
L18:
	movl	-12(%ebp), %eax
	leave
	ret
	.section .rdata,"dr"
	.align 4
LC2:
	.ascii "[CHANNEL] channel_destroy. channel=0x%08X\0"
	.align 4
LC3:
	.ascii "[CHANNEL] Free up the channel context 0x%p\0"
	.text
	.globl	_channel_destroy
	.def	_channel_destroy;	.scl	2;	.type	32;	.endef
_channel_destroy:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$56, %esp
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC2, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_channel_get_class
	testl	%eax, %eax
	jne	L22
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	L22
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
	je	L24
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	_free
	jmp	L24
L22:
	movl	8(%ebp), %eax
	addl	$24, %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L24
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
L24:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_channel_remove_list_entry
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_destroy
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC3, (%esp)
	call	_real_dprintf
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
	je	L28
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	_free
L28:
	movl	8(%ebp), %eax
	movl	$0, 8(%eax)
	cmpl	$0, 12(%ebp)
	je	L30
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp___strdup, %eax
	call	*%eax
	movl	8(%ebp), %edx
	movl	%eax, 8(%edx)
L30:
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
	jne	L47
	movl	$8, -12(%ebp)
	jmp	L48
L47:
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
	je	L49
	movl	$537133108, -24(%ebp)
	jmp	L50
L49:
	movl	$262196, -24(%ebp)
L50:
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
	jne	L53
	movl	$0, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_transmit
	movl	%eax, -12(%ebp)
	jmp	L48
L53:
	nop
L48:
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
	jne	L59
	movl	$_channel_default_io_handler, 16(%ebp)
	movl	$0, 12(%ebp)
L59:
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
	je	L64
	movl	$24, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_memcpy
L64:
	movl	-12(%ebp), %eax
	leave
	ret
	.section .rdata,"dr"
	.align 4
LC4:
	.ascii "[CHANNEL] _channel_packet_completion_routine. channel=0x%08X commandId=%u\0"
	.align 4
LC5:
	.ascii "[CHANNEL] freeing up the completion context\0"
	.text
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
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC4, (%esp)
	call	_real_dprintf
	cmpl	$0, -32(%ebp)
	jne	L67
	cmpl	$4, 20(%ebp)
	je	L67
	movl	$1168, %eax
	jmp	L68
L67:
	cmpl	$4, 20(%ebp)
	jne	L69
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	L69
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
	jmp	L70
L69:
	cmpl	$5, 20(%ebp)
	jne	L71
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L71
	movl	$0, -36(%ebp)
	movl	$0, -40(%ebp)
	movl	$0, -16(%ebp)
	movl	$131097, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_uint
	movl	%eax, -36(%ebp)
	cmpl	$0, -36(%ebp)
	je	L72
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	L72
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
L72:
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
	je	L77
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	jmp	L77
L71:
	cmpl	$8, 20(%ebp)
	jne	L74
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	L74
	movl	$0, -20(%ebp)
	leal	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$131097, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv
	testl	%eax, %eax
	jne	L75
	movl	-52(%ebp), %eax
	cmpl	$3, %eax
	jbe	L75
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__ntohl@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	%eax, -20(%ebp)
L75:
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
	jmp	L70
L74:
	cmpl	$1, 20(%ebp)
	jne	L76
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	L76
	movl	$LC5, (%esp)
	call	_real_dprintf
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
	jmp	L70
L76:
	cmpl	$3, 20(%ebp)
	jne	L70
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	L70
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
	jmp	L70
L77:
	nop
L70:
	movl	$LC5, (%esp)
	call	_real_dprintf
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	-12(%ebp), %eax
L68:
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
	jne	L79
	movl	$8, -16(%ebp)
	jmp	L80
L79:
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
	je	L81
	movl	$4, 8(%esp)
	movl	$131073, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_uint
L81:
	cmpl	$0, 20(%ebp)
	je	L82
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	_channel_duplicate_completion_routine
	movl	%eax, -32(%ebp)
	movl	$__channel_packet_completion_routine, -28(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, -12(%ebp)
L82:
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_transmit
	movl	%eax, -16(%ebp)
L80:
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
	jne	L85
	movl	$8, -16(%ebp)
	jmp	L86
L85:
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
	je	L87
	movl	$5, 8(%esp)
	movl	$131073, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_uint
L87:
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
	je	L88
	movl	28(%ebp), %eax
	movl	%eax, (%esp)
	call	_channel_duplicate_completion_routine
	movl	%eax, -32(%ebp)
	movl	$__channel_packet_completion_routine, -28(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, -12(%ebp)
L88:
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_transmit
	movl	%eax, -16(%ebp)
L86:
	movl	-16(%ebp), %eax
	leave
	ret
	.section .rdata,"dr"
	.align 4
LC6:
	.ascii "[CHANNEL] channel_write: adding TLVs\0"
	.align 4
LC7:
	.ascii "[CHANNEL] channel_write: adding command id of %u\0"
	.align 4
LC8:
	.ascii "[CHANNEL] channel_write: apparently already have a command ID of %u\0"
	.text
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
	jne	L91
	movl	$8, -16(%ebp)
	jmp	L92
L91:
	movl	$LC6, (%esp)
	call	_real_dprintf
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
	je	L93
	movl	$8, 4(%esp)
	movl	$LC7, (%esp)
	call	_real_dprintf
	movl	$8, 8(%esp)
	movl	$131073, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_uint
	jmp	L94
L93:
	movl	$131073, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_uint
	movl	%eax, 4(%esp)
	movl	$LC8, (%esp)
	call	_real_dprintf
L94:
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
	je	L95
	movl	28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$537133108, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_raw
	jmp	L96
L95:
	movl	28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$262196, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_raw
L96:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_channel_get_id
	movl	%eax, 8(%esp)
	movl	$131097, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_uint
	cmpl	$0, 32(%ebp)
	je	L97
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	_channel_duplicate_completion_routine
	movl	%eax, -32(%ebp)
	movl	$__channel_packet_completion_routine, -28(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, -12(%ebp)
L97:
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_transmit
	movl	%eax, -16(%ebp)
L92:
	movl	-16(%ebp), %eax
	leave
	ret
	.section .rdata,"dr"
	.align 4
LC9:
	.ascii "[CHANNEL] channel_close. channel=0x%08X completion=0x%.8x\0"
	.text
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
	jne	L100
	movl	$8, -16(%ebp)
	jmp	L101
L100:
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
	je	L102
	movl	$1, 8(%esp)
	movl	$131073, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_uint
L102:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_channel_get_id
	movl	%eax, 8(%esp)
	movl	$131122, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_uint
	cmpl	$0, 24(%ebp)
	je	L103
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	_channel_duplicate_completion_routine
	movl	%eax, -32(%ebp)
	movl	$__channel_packet_completion_routine, -28(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, -12(%ebp)
L103:
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC9, (%esp)
	call	_real_dprintf
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_transmit
	movl	%eax, -16(%ebp)
L101:
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
	jne	L106
	movl	$8, -16(%ebp)
	jmp	L107
L106:
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
	je	L108
	movl	$3, 8(%esp)
	movl	$131073, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_uint
L108:
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
	je	L109
	movl	28(%ebp), %eax
	movl	%eax, (%esp)
	call	_channel_duplicate_completion_routine
	movl	%eax, -32(%ebp)
	movl	$__channel_packet_completion_routine, -28(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, -12(%ebp)
L109:
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_transmit
	movl	%eax, -16(%ebp)
L107:
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
	jmp	L112
L115:
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, 8(%ebp)
	je	L117
	movl	-4(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -4(%ebp)
L112:
	cmpl	$0, -4(%ebp)
	jne	L115
	jmp	L114
L117:
	nop
L114:
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
	je	L119
	movl	_channelList, %eax
	movl	8(%ebp), %edx
	movl	%edx, 56(%eax)
L119:
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
	je	L121
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	8(%ebp), %edx
	movl	60(%edx), %edx
	movl	%edx, 60(%eax)
	jmp	L122
L121:
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, _channelList
L122:
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	je	L124
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	8(%ebp), %edx
	movl	56(%edx), %edx
	movl	%edx, 56(%eax)
L124:
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
	jmp	L126
L129:
	movl	-4(%ebp), %eax
	cmpl	8(%ebp), %eax
	jne	L127
	movl	$1, %eax
	jmp	L128
L127:
	movl	-4(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -4(%ebp)
L126:
	cmpl	$0, -4(%ebp)
	jne	L129
	movl	$0, %eax
L128:
	leave
	ret
	.globl	_channel_default_io_handler
	.def	_channel_default_io_handler;	.scl	2;	.type	32;	.endef
_channel_default_io_handler:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	cmpl	$1, 20(%ebp)
	je	L131
	cmpl	$2, 20(%ebp)
	je	L132
	jmp	L134
L131:
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
	jmp	L134
L132:
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
L134:
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
	jbe	L137
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
	je	L138
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_realloc
	movl	%eax, -12(%ebp)
	jmp	L139
L138:
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, -12(%ebp)
L139:
	cmpl	$0, -12(%ebp)
	jne	L140
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L141
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_free
	movl	12(%ebp), %eax
	movl	$0, (%eax)
L141:
	movl	$20, 8(%esp)
	movl	$0, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_memset
	jmp	L136
L140:
	movl	12(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, (%eax)
	movl	12(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 8(%eax)
L137:
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
	je	L136
	movl	24(%ebp), %eax
	movl	20(%ebp), %edx
	movl	%edx, (%eax)
L136:
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
	jbe	L144
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
L144:
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
	je	L145
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
L145:
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	subl	-12(%ebp), %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 4(%eax)
	cmpl	$0, 24(%ebp)
	je	L147
	movl	24(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, (%eax)
L147:
	nop
	leave
	ret
	.ident	"GCC: (GNU) 9.3-win32 20200320"
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	_vsnprintf_s;	.scl	2;	.type	32;	.endef
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
