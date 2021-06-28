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
	movl	$64, (%esp)
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
	je	L8
push %eax
pop %eax
	movl	$64, 8(%esp)
push %eax
pop %eax
	movl	$0, 4(%esp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_memset
push %eax
pop %eax
	cmpl	$0, 8(%ebp)
push %eax
pop %eax
	jne	L5
push %eax
pop %eax
	movl	_channelIdPool, %eax
push %eax
pop %eax
	addl	$1, %eax
push %eax
pop %eax
	movl	%eax, _channelIdPool
push %eax
pop %eax
	movl	_channelIdPool, %eax
push %eax
pop %eax
	jmp	L6
push %eax
pop %eax
L5:
	movl	8(%ebp), %eax
push %eax
pop %eax
L6:
	movl	-12(%ebp), %edx
push %eax
pop %eax
	movl	%eax, (%edx)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	$0, 12(%eax)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	12(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 16(%eax)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	$0, 4(%eax)
push %eax
pop %eax
	call	_lock_create
push %eax
pop %eax
	movl	-12(%ebp), %edx
push %eax
pop %eax
	movl	%eax, 20(%edx)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	addl	$24, %eax
push %eax
pop %eax
	movl	$32, 8(%esp)
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
	movl	-12(%ebp), %eax
push %eax
pop %eax
	addl	$24, %eax
push %eax
pop %eax
	movl	$_channel_default_io_handler, 8(%esp)
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
	call	_channel_set_buffered_io_handler
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_channel_add_list_entry
push %eax
pop %eax
	jmp	L4
push %eax
pop %eax
L8:
	nop
push %eax
pop %eax
L4:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_channel_create_stream
	.def	_channel_create_stream;	.scl	2;	.type	32;	.endef
_channel_create_stream:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$40, %esp
push %eax
pop %eax
	movl	12(%ebp), %eax
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
	call	_channel_create
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	cmpl	$0, -12(%ebp)
push %eax
pop %eax
	je	L10
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	$1, 4(%eax)
push %eax
pop %eax
	cmpl	$0, 16(%ebp)
push %eax
pop %eax
	je	L11
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	leal	24(%eax), %edx
push %eax
pop %eax
	movl	$16, 8(%esp)
push %eax
pop %eax
	movl	16(%ebp), %eax
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
	jmp	L10
push %eax
pop %eax
L11:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	addl	$24, %eax
push %eax
pop %eax
	movl	$32, 8(%esp)
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
L10:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_channel_create_datagram
	.def	_channel_create_datagram;	.scl	2;	.type	32;	.endef
_channel_create_datagram:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$40, %esp
push %eax
pop %eax
	movl	12(%ebp), %eax
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
	call	_channel_create
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	cmpl	$0, -12(%ebp)
push %eax
pop %eax
	je	L14
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	$2, 4(%eax)
push %eax
pop %eax
	cmpl	$0, 16(%ebp)
push %eax
pop %eax
	je	L15
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	leal	24(%eax), %edx
push %eax
pop %eax
	movl	$16, 8(%esp)
push %eax
pop %eax
	movl	16(%ebp), %eax
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
	jmp	L14
push %eax
pop %eax
L15:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	addl	$24, %eax
push %eax
pop %eax
	movl	$32, 8(%esp)
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
L14:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_channel_create_pool
	.def	_channel_create_pool;	.scl	2;	.type	32;	.endef
_channel_create_pool:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$40, %esp
push %eax
pop %eax
	movl	12(%ebp), %eax
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
	call	_channel_create
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	cmpl	$0, -12(%ebp)
push %eax
pop %eax
	je	L18
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	$3, 4(%eax)
push %eax
pop %eax
	cmpl	$0, 16(%ebp)
push %eax
pop %eax
	je	L19
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	leal	24(%eax), %edx
push %eax
pop %eax
	movl	$32, 8(%esp)
push %eax
pop %eax
	movl	16(%ebp), %eax
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
	jmp	L18
push %eax
pop %eax
L19:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	addl	$24, %eax
push %eax
pop %eax
	movl	$32, 8(%esp)
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
L18:
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
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$56, %esp
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC2, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_channel_get_class
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L22
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	36(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L22
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	36(%eax), %eax
push %eax
pop %eax
	movl	8(%ebp), %edx
push %eax
pop %eax
	movl	40(%edx), %edx
push %eax
pop %eax
	movl	8(%ebp), %ecx
push %eax
pop %eax
	addl	$24, %ecx
push %eax
pop %eax
	movl	$0, 24(%esp)
push %eax
pop %eax
	movl	$0, 20(%esp)
push %eax
pop %eax
	movl	$0, 16(%esp)
push %eax
pop %eax
	movl	$3, 12(%esp)
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	%ecx, 4(%esp)
push %eax
pop %eax
	movl	8(%ebp), %edx
push %eax
pop %eax
	movl	%edx, (%esp)
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	24(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L24
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	24(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_free
push %eax
pop %eax
	jmp	L24
push %eax
pop %eax
L22:
	movl	8(%ebp), %eax
push %eax
pop %eax
	addl	$24, %eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	8(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L24
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	8(%eax), %eax
push %eax
pop %eax
	movl	-12(%ebp), %edx
push %eax
pop %eax
	movl	(%edx), %edx
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	12(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	8(%ebp), %edx
push %eax
pop %eax
	movl	%edx, (%esp)
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
L24:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_channel_remove_list_entry
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	20(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_lock_destroy
push %eax
pop %eax
	movl	8(%ebp), %eax
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
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_free
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
	.globl	_channel_get_id
	.def	_channel_get_id;	.scl	2;	.type	32;	.endef
_channel_get_id:
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
	popl	%ebp
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_channel_set_type
	.def	_channel_set_type;	.scl	2;	.type	32;	.endef
_channel_set_type:
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
	movl	8(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L28
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	8(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_free
push %eax
pop %eax
L28:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	$0, 8(%eax)
push %eax
pop %eax
	cmpl	$0, 12(%ebp)
push %eax
pop %eax
	je	L30
push %eax
pop %eax
	movl	12(%ebp), %eax
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
	movl	8(%ebp), %edx
push %eax
pop %eax
	movl	%eax, 8(%edx)
push %eax
pop %eax
L30:
	nop
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_channel_get_type
	.def	_channel_get_type;	.scl	2;	.type	32;	.endef
_channel_get_type:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	8(%eax), %eax
push %eax
pop %eax
	popl	%ebp
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_channel_get_class
	.def	_channel_get_class;	.scl	2;	.type	32;	.endef
_channel_get_class:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	popl	%ebp
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_channel_set_flags
	.def	_channel_set_flags;	.scl	2;	.type	32;	.endef
_channel_set_flags:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	12(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 16(%eax)
push %eax
pop %eax
	nop
push %eax
pop %eax
	popl	%ebp
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_channel_is_flag
	.def	_channel_is_flag;	.scl	2;	.type	32;	.endef
_channel_is_flag:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	16(%eax), %eax
push %eax
pop %eax
	andl	12(%ebp), %eax
push %eax
pop %eax
	cmpl	%eax, 12(%ebp)
push %eax
pop %eax
	sete	%al
push %eax
pop %eax
	popl	%ebp
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_channel_get_flags
	.def	_channel_get_flags;	.scl	2;	.type	32;	.endef
_channel_get_flags:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	16(%eax), %eax
push %eax
pop %eax
	popl	%ebp
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_channel_set_interactive
	.def	_channel_set_interactive;	.scl	2;	.type	32;	.endef
_channel_set_interactive:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	12(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 12(%eax)
push %eax
pop %eax
	nop
push %eax
pop %eax
	popl	%ebp
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_channel_is_interactive
	.def	_channel_is_interactive;	.scl	2;	.type	32;	.endef
_channel_is_interactive:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	12(%eax), %eax
push %eax
pop %eax
	popl	%ebp
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_channel_set_buffered_io_handler
	.def	_channel_set_buffered_io_handler;	.scl	2;	.type	32;	.endef
_channel_set_buffered_io_handler:
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
	leal	24(%eax), %edx
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	%edx, (%esp)
push %eax
pop %eax
	call	_channel_set_buffer_io_handler
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
	.globl	_channel_get_buffered_io_context
	.def	_channel_get_buffered_io_context;	.scl	2;	.type	32;	.endef
_channel_get_buffered_io_context:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	40(%eax), %eax
push %eax
pop %eax
	popl	%ebp
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_channel_write_to_remote
	.def	_channel_write_to_remote;	.scl	2;	.type	32;	.endef
_channel_write_to_remote:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$72, %esp
push %eax
pop %eax
	movl	$8, 4(%esp)
push %eax
pop %eax
	movl	$0, (%esp)
push %eax
pop %eax
	call	_packet_create
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
	movl	$0, -12(%ebp)
push %eax
pop %eax
	cmpl	$0, -16(%ebp)
push %eax
pop %eax
	jne	L47
push %eax
pop %eax
	movl	$8, -12(%ebp)
push %eax
pop %eax
	jmp	L48
push %eax
pop %eax
L47:
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_channel_get_id
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__htonl@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	movl	%eax, -44(%ebp)
push %eax
pop %eax
	movl	$131122, -36(%ebp)
push %eax
pop %eax
	movl	$4, -40(%ebp)
push %eax
pop %eax
	leal	-44(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -32(%ebp)
push %eax
pop %eax
	movl	$2, 4(%esp)
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_channel_is_flag
push %eax
pop %eax
	testb	%al, %al
push %eax
pop %eax
	je	L49
push %eax
pop %eax
	movl	$537133108, -24(%ebp)
push %eax
pop %eax
	jmp	L50
push %eax
pop %eax
L49:
	movl	$262196, -24(%ebp)
push %eax
pop %eax
L50:
	movl	20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -28(%ebp)
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -20(%ebp)
push %eax
pop %eax
	movl	$2, 12(%esp)
push %eax
pop %eax
	leal	-40(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$1073741877, 4(%esp)
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_add_tlv_group
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	cmpl	$0, -12(%ebp)
push %eax
pop %eax
	jne	L53
push %eax
pop %eax
	movl	$0, 8(%esp)
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
	call	_packet_transmit
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	jmp	L48
push %eax
pop %eax
L53:
	nop
push %eax
pop %eax
L48:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_channel_write_to_buffered
	.def	_channel_write_to_buffered;	.scl	2;	.type	32;	.endef
_channel_write_to_buffered:
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
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	36(%eax), %eax
push %eax
pop %eax
	movl	8(%ebp), %edx
push %eax
pop %eax
	movl	40(%edx), %edx
push %eax
pop %eax
	movl	8(%ebp), %ecx
push %eax
pop %eax
	leal	24(%ecx), %ebx
push %eax
pop %eax
	movl	20(%ebp), %ecx
push %eax
pop %eax
	movl	%ecx, 24(%esp)
push %eax
pop %eax
	movl	16(%ebp), %ecx
push %eax
pop %eax
	movl	%ecx, 20(%esp)
push %eax
pop %eax
	movl	12(%ebp), %ecx
push %eax
pop %eax
	movl	%ecx, 16(%esp)
push %eax
pop %eax
	movl	$2, 12(%esp)
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	%ebx, 4(%esp)
push %eax
pop %eax
	movl	8(%ebp), %edx
push %eax
pop %eax
	movl	%edx, (%esp)
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	addl	$36, %esp
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
	.globl	_channel_read_from_buffered
	.def	_channel_read_from_buffered;	.scl	2;	.type	32;	.endef
_channel_read_from_buffered:
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
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	36(%eax), %eax
push %eax
pop %eax
	movl	8(%ebp), %edx
push %eax
pop %eax
	movl	40(%edx), %edx
push %eax
pop %eax
	movl	8(%ebp), %ecx
push %eax
pop %eax
	leal	24(%ecx), %ebx
push %eax
pop %eax
	movl	20(%ebp), %ecx
push %eax
pop %eax
	movl	%ecx, 24(%esp)
push %eax
pop %eax
	movl	16(%ebp), %ecx
push %eax
pop %eax
	movl	%ecx, 20(%esp)
push %eax
pop %eax
	movl	12(%ebp), %ecx
push %eax
pop %eax
	movl	%ecx, 16(%esp)
push %eax
pop %eax
	movl	$1, 12(%esp)
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	%ebx, 4(%esp)
push %eax
pop %eax
	movl	8(%ebp), %edx
push %eax
pop %eax
	movl	%edx, (%esp)
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	addl	$36, %esp
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
	.globl	_channel_set_buffer_io_handler
	.def	_channel_set_buffer_io_handler;	.scl	2;	.type	32;	.endef
_channel_set_buffer_io_handler:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	cmpl	$0, 16(%ebp)
push %eax
pop %eax
	jne	L59
push %eax
pop %eax
	movl	$_channel_default_io_handler, 16(%ebp)
push %eax
pop %eax
	movl	$0, 12(%ebp)
push %eax
pop %eax
L59:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	12(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 16(%eax)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	16(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 12(%eax)
push %eax
pop %eax
	nop
push %eax
pop %eax
	popl	%ebp
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_channel_set_native_io_context
	.def	_channel_set_native_io_context;	.scl	2;	.type	32;	.endef
_channel_set_native_io_context:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$16, %esp
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	addl	$24, %eax
push %eax
pop %eax
	movl	%eax, -4(%ebp)
push %eax
pop %eax
	movl	-4(%ebp), %eax
push %eax
pop %eax
	movl	12(%ebp), %edx
push %eax
pop %eax
	movl	%edx, (%eax)
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
	.globl	_channel_get_native_io_context
	.def	_channel_get_native_io_context;	.scl	2;	.type	32;	.endef
_channel_get_native_io_context:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$16, %esp
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	addl	$24, %eax
push %eax
pop %eax
	movl	%eax, -4(%ebp)
push %eax
pop %eax
	movl	-4(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_channel_duplicate_completion_routine
	.def	_channel_duplicate_completion_routine;	.scl	2;	.type	32;	.endef
_channel_duplicate_completion_routine:
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
	movl	$24, (%esp)
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
	je	L64
push %eax
pop %eax
	movl	$24, 8(%esp)
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
L64:
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
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$88, %esp
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -24(%ebp)
push %eax
pop %eax
	movl	$131122, 4(%esp)
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
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_channel_find_by_id
push %eax
pop %eax
	movl	%eax, -32(%ebp)
push %eax
pop %eax
	movl	$1168, -12(%ebp)
push %eax
pop %eax
	movl	20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	-32(%ebp), %eax
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
	cmpl	$0, -32(%ebp)
push %eax
pop %eax
	jne	L67
push %eax
pop %eax
	cmpl	$4, 20(%ebp)
push %eax
pop %eax
	je	L67
push %eax
pop %eax
	movl	$1168, %eax
push %eax
pop %eax
	jmp	L68
push %eax
pop %eax
L67:
	cmpl	$4, 20(%ebp)
push %eax
pop %eax
	jne	L69
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L69
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	movl	-24(%ebp), %edx
push %eax
pop %eax
	movl	(%edx), %edx
push %eax
pop %eax
	movl	24(%ebp), %ecx
push %eax
pop %eax
	movl	%ecx, 12(%esp)
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	-32(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	8(%ebp), %edx
push %eax
pop %eax
	movl	%edx, (%esp)
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	jmp	L70
push %eax
pop %eax
L69:
	cmpl	$5, 20(%ebp)
push %eax
pop %eax
	jne	L71
push %eax
pop %eax
	movl	-24(%ebp), %eax
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
	movl	$0, -36(%ebp)
push %eax
pop %eax
	movl	$0, -40(%ebp)
push %eax
pop %eax
	movl	$0, -16(%ebp)
push %eax
pop %eax
	movl	$131097, 4(%esp)
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
	movl	%eax, -36(%ebp)
push %eax
pop %eax
	cmpl	$0, -36(%ebp)
push %eax
pop %eax
	je	L72
push %eax
pop %eax
	movl	-36(%ebp), %eax
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
	cmpl	$0, -16(%ebp)
push %eax
pop %eax
	je	L72
push %eax
pop %eax
	movl	-36(%ebp), %eax
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
	leal	-40(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 12(%esp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
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
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_channel_read_from_buffered
push %eax
pop %eax
L72:
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	8(%eax), %eax
push %eax
pop %eax
	movl	-40(%ebp), %ecx
push %eax
pop %eax
	movl	-24(%ebp), %edx
push %eax
pop %eax
	movl	(%edx), %edx
push %eax
pop %eax
	movl	%ecx, 20(%esp)
push %eax
pop %eax
	movl	-16(%ebp), %ecx
push %eax
pop %eax
	movl	%ecx, 16(%esp)
push %eax
pop %eax
	movl	24(%ebp), %ecx
push %eax
pop %eax
	movl	%ecx, 12(%esp)
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	-32(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	8(%ebp), %edx
push %eax
pop %eax
	movl	%edx, (%esp)
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	cmpl	$0, -16(%ebp)
push %eax
pop %eax
	je	L77
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_free
push %eax
pop %eax
	jmp	L77
push %eax
pop %eax
L71:
	cmpl	$8, 20(%ebp)
push %eax
pop %eax
	jne	L74
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	12(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L74
push %eax
pop %eax
	movl	$0, -20(%ebp)
push %eax
pop %eax
	leal	-52(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$131097, 4(%esp)
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_get_tlv
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L75
push %eax
pop %eax
	movl	-52(%ebp), %eax
push %eax
pop %eax
	cmpl	$3, %eax
push %eax
pop %eax
	jbe	L75
push %eax
pop %eax
	movl	-44(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__ntohl@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	movl	%eax, -20(%ebp)
push %eax
pop %eax
L75:
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	12(%eax), %eax
push %eax
pop %eax
	movl	-24(%ebp), %edx
push %eax
pop %eax
	movl	(%edx), %edx
push %eax
pop %eax
	movl	-20(%ebp), %ecx
push %eax
pop %eax
	movl	%ecx, 16(%esp)
push %eax
pop %eax
	movl	24(%ebp), %ecx
push %eax
pop %eax
	movl	%ecx, 12(%esp)
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	-32(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	8(%ebp), %edx
push %eax
pop %eax
	movl	%edx, (%esp)
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	jmp	L70
push %eax
pop %eax
L74:
	cmpl	$1, 20(%ebp)
push %eax
pop %eax
	jne	L76
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	16(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L76
push %eax
pop %eax
	movl	$LC5, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	16(%eax), %eax
push %eax
pop %eax
	movl	-24(%ebp), %edx
push %eax
pop %eax
	movl	(%edx), %edx
push %eax
pop %eax
	movl	24(%ebp), %ecx
push %eax
pop %eax
	movl	%ecx, 12(%esp)
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	-32(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	8(%ebp), %edx
push %eax
pop %eax
	movl	%edx, (%esp)
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	jmp	L70
push %eax
pop %eax
L76:
	cmpl	$3, 20(%ebp)
push %eax
pop %eax
	jne	L70
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	20(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L70
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	20(%eax), %eax
push %eax
pop %eax
	movl	-24(%ebp), %edx
push %eax
pop %eax
	movl	(%edx), %edx
push %eax
pop %eax
	movl	24(%ebp), %ecx
push %eax
pop %eax
	movl	%ecx, 12(%esp)
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	-32(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	8(%ebp), %edx
push %eax
pop %eax
	movl	%edx, (%esp)
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	jmp	L70
push %eax
pop %eax
L77:
	nop
push %eax
pop %eax
L70:
	movl	$LC5, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_free
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
L68:
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_channel_open
	.def	_channel_open;	.scl	2;	.type	32;	.endef
_channel_open:
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
	movl	$0, -16(%ebp)
push %eax
pop %eax
	movl	$0, 4(%esp)
push %eax
pop %eax
	movl	$0, (%esp)
push %eax
pop %eax
	call	_packet_create
push %eax
pop %eax
	movl	%eax, -20(%ebp)
push %eax
pop %eax
	cmpl	$0, -20(%ebp)
push %eax
pop %eax
	jne	L79
push %eax
pop %eax
	movl	$8, -16(%ebp)
push %eax
pop %eax
	jmp	L80
push %eax
pop %eax
L79:
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
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
	call	_packet_add_tlvs
push %eax
pop %eax
	leal	-44(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$131073, 4(%esp)
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_get_tlv
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L81
push %eax
pop %eax
	movl	$4, 8(%esp)
push %eax
pop %eax
	movl	$131073, 4(%esp)
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_add_tlv_uint
push %eax
pop %eax
L81:
	cmpl	$0, 20(%ebp)
push %eax
pop %eax
	je	L82
push %eax
pop %eax
	movl	20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_channel_duplicate_completion_routine
push %eax
pop %eax
	movl	%eax, -32(%ebp)
push %eax
pop %eax
	movl	$__channel_packet_completion_routine, -28(%ebp)
push %eax
pop %eax
	leal	-32(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
L82:
	movl	-12(%ebp), %eax
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
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_transmit
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
L80:
	movl	-16(%ebp), %eax
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_channel_read
	.def	_channel_read;	.scl	2;	.type	32;	.endef
_channel_read:
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
	movl	$0, -16(%ebp)
push %eax
pop %eax
	movl	$0, 4(%esp)
push %eax
pop %eax
	movl	$0, (%esp)
push %eax
pop %eax
	call	_packet_create
push %eax
pop %eax
	movl	%eax, -20(%ebp)
push %eax
pop %eax
	cmpl	$0, -20(%ebp)
push %eax
pop %eax
	jne	L85
push %eax
pop %eax
	movl	$8, -16(%ebp)
push %eax
pop %eax
	jmp	L86
push %eax
pop %eax
L85:
	movl	20(%ebp), %eax
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
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_add_tlvs
push %eax
pop %eax
	leal	-44(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$131073, 4(%esp)
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_get_tlv
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L87
push %eax
pop %eax
	movl	$5, 8(%esp)
push %eax
pop %eax
	movl	$131073, 4(%esp)
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_add_tlv_uint
push %eax
pop %eax
L87:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_channel_get_id
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$131122, 4(%esp)
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_add_tlv_uint
push %eax
pop %eax
	movl	24(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$131097, 4(%esp)
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_add_tlv_uint
push %eax
pop %eax
	cmpl	$0, 28(%ebp)
push %eax
pop %eax
	je	L88
push %eax
pop %eax
	movl	28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_channel_duplicate_completion_routine
push %eax
pop %eax
	movl	%eax, -32(%ebp)
push %eax
pop %eax
	movl	$__channel_packet_completion_routine, -28(%ebp)
push %eax
pop %eax
	leal	-32(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
L88:
	movl	-12(%ebp), %eax
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
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_transmit
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
L86:
	movl	-16(%ebp), %eax
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
	movl	$0, -16(%ebp)
push %eax
pop %eax
	movl	$0, 4(%esp)
push %eax
pop %eax
	movl	$0, (%esp)
push %eax
pop %eax
	call	_packet_create
push %eax
pop %eax
	movl	%eax, -20(%ebp)
push %eax
pop %eax
	cmpl	$0, -20(%ebp)
push %eax
pop %eax
	jne	L91
push %eax
pop %eax
	movl	$8, -16(%ebp)
push %eax
pop %eax
	jmp	L92
push %eax
pop %eax
L91:
	movl	$LC6, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	20(%ebp), %eax
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
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_add_tlvs
push %eax
pop %eax
	leal	-44(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$131073, 4(%esp)
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_get_tlv
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L93
push %eax
pop %eax
	movl	$8, 4(%esp)
push %eax
pop %eax
	movl	$LC7, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	$8, 8(%esp)
push %eax
pop %eax
	movl	$131073, 4(%esp)
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_add_tlv_uint
push %eax
pop %eax
	jmp	L94
push %eax
pop %eax
L93:
	movl	$131073, 4(%esp)
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_get_tlv_value_uint
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC8, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
L94:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_channel_get_id
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$131122, 4(%esp)
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_add_tlv_uint
push %eax
pop %eax
	movl	$2, 4(%esp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_channel_is_flag
push %eax
pop %eax
	testb	%al, %al
push %eax
pop %eax
	je	L95
push %eax
pop %eax
	movl	28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 12(%esp)
push %eax
pop %eax
	movl	24(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$537133108, 4(%esp)
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_add_tlv_raw
push %eax
pop %eax
	jmp	L96
push %eax
pop %eax
L95:
	movl	28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 12(%esp)
push %eax
pop %eax
	movl	24(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$262196, 4(%esp)
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_add_tlv_raw
push %eax
pop %eax
L96:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_channel_get_id
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$131097, 4(%esp)
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_add_tlv_uint
push %eax
pop %eax
	cmpl	$0, 32(%ebp)
push %eax
pop %eax
	je	L97
push %eax
pop %eax
	movl	32(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_channel_duplicate_completion_routine
push %eax
pop %eax
	movl	%eax, -32(%ebp)
push %eax
pop %eax
	movl	$__channel_packet_completion_routine, -28(%ebp)
push %eax
pop %eax
	leal	-32(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
L97:
	movl	-12(%ebp), %eax
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
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_transmit
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
L92:
	movl	-16(%ebp), %eax
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
	.ascii "[CHANNEL] channel_close. channel=0x%08X completion=0x%.8x\0"
	.text
	.globl	_channel_close
	.def	_channel_close;	.scl	2;	.type	32;	.endef
_channel_close:
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
	movl	$0, -16(%ebp)
push %eax
pop %eax
	movl	$0, 4(%esp)
push %eax
pop %eax
	movl	$0, (%esp)
push %eax
pop %eax
	call	_packet_create
push %eax
pop %eax
	movl	%eax, -20(%ebp)
push %eax
pop %eax
	cmpl	$0, -20(%ebp)
push %eax
pop %eax
	jne	L100
push %eax
pop %eax
	movl	$8, -16(%ebp)
push %eax
pop %eax
	jmp	L101
push %eax
pop %eax
L100:
	movl	20(%ebp), %eax
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
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_add_tlvs
push %eax
pop %eax
	leal	-44(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$131073, 4(%esp)
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_get_tlv
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L102
push %eax
pop %eax
	movl	$1, 8(%esp)
push %eax
pop %eax
	movl	$131073, 4(%esp)
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_add_tlv_uint
push %eax
pop %eax
L102:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_channel_get_id
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$131122, 4(%esp)
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_add_tlv_uint
push %eax
pop %eax
	cmpl	$0, 24(%ebp)
push %eax
pop %eax
	je	L103
push %eax
pop %eax
	movl	24(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_channel_duplicate_completion_routine
push %eax
pop %eax
	movl	%eax, -32(%ebp)
push %eax
pop %eax
	movl	$__channel_packet_completion_routine, -28(%ebp)
push %eax
pop %eax
	leal	-32(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
L103:
	movl	24(%ebp), %eax
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
	movl	$LC9, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-12(%ebp), %eax
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
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_transmit
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
L101:
	movl	-16(%ebp), %eax
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_channel_interact
	.def	_channel_interact;	.scl	2;	.type	32;	.endef
_channel_interact:
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
	movl	$0, -16(%ebp)
push %eax
pop %eax
	movl	$0, 4(%esp)
push %eax
pop %eax
	movl	$0, (%esp)
push %eax
pop %eax
	call	_packet_create
push %eax
pop %eax
	movl	%eax, -20(%ebp)
push %eax
pop %eax
	cmpl	$0, -20(%ebp)
push %eax
pop %eax
	jne	L106
push %eax
pop %eax
	movl	$8, -16(%ebp)
push %eax
pop %eax
	jmp	L107
push %eax
pop %eax
L106:
	movl	20(%ebp), %eax
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
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_add_tlvs
push %eax
pop %eax
	leal	-44(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$131073, 4(%esp)
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_get_tlv
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L108
push %eax
pop %eax
	movl	$3, 8(%esp)
push %eax
pop %eax
	movl	$131073, 4(%esp)
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_add_tlv_uint
push %eax
pop %eax
L108:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_channel_get_id
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$131122, 4(%esp)
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_add_tlv_uint
push %eax
pop %eax
	movl	24(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$524300, 4(%esp)
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_add_tlv_bool
push %eax
pop %eax
	cmpl	$0, 28(%ebp)
push %eax
pop %eax
	je	L109
push %eax
pop %eax
	movl	28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_channel_duplicate_completion_routine
push %eax
pop %eax
	movl	%eax, -32(%ebp)
push %eax
pop %eax
	movl	$__channel_packet_completion_routine, -28(%ebp)
push %eax
pop %eax
	leal	-32(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
L109:
	movl	-12(%ebp), %eax
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
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_transmit
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
L107:
	movl	-16(%ebp), %eax
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_channel_find_by_id
	.def	_channel_find_by_id;	.scl	2;	.type	32;	.endef
_channel_find_by_id:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$16, %esp
push %eax
pop %eax
	movl	_channelList, %eax
push %eax
pop %eax
	movl	%eax, -4(%ebp)
push %eax
pop %eax
	jmp	L112
push %eax
pop %eax
L115:
	movl	-4(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	cmpl	%eax, 8(%ebp)
push %eax
pop %eax
	je	L117
push %eax
pop %eax
	movl	-4(%ebp), %eax
push %eax
pop %eax
	movl	60(%eax), %eax
push %eax
pop %eax
	movl	%eax, -4(%ebp)
push %eax
pop %eax
L112:
	cmpl	$0, -4(%ebp)
push %eax
pop %eax
	jne	L115
push %eax
pop %eax
	jmp	L114
push %eax
pop %eax
L117:
	nop
push %eax
pop %eax
L114:
	movl	-4(%ebp), %eax
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_channel_add_list_entry
	.def	_channel_add_list_entry;	.scl	2;	.type	32;	.endef
_channel_add_list_entry:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	movl	_channelList, %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L119
push %eax
pop %eax
	movl	_channelList, %eax
push %eax
pop %eax
	movl	8(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 56(%eax)
push %eax
pop %eax
L119:
	movl	_channelList, %edx
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 60(%eax)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	$0, 56(%eax)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, _channelList
push %eax
pop %eax
	nop
push %eax
pop %eax
	popl	%ebp
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_channel_remove_list_entry
	.def	_channel_remove_list_entry;	.scl	2;	.type	32;	.endef
_channel_remove_list_entry:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	56(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L121
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	56(%eax), %eax
push %eax
pop %eax
	movl	8(%ebp), %edx
push %eax
pop %eax
	movl	60(%edx), %edx
push %eax
pop %eax
	movl	%edx, 60(%eax)
push %eax
pop %eax
	jmp	L122
push %eax
pop %eax
L121:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	60(%eax), %eax
push %eax
pop %eax
	movl	%eax, _channelList
push %eax
pop %eax
L122:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	60(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L124
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	60(%eax), %eax
push %eax
pop %eax
	movl	8(%ebp), %edx
push %eax
pop %eax
	movl	56(%edx), %edx
push %eax
pop %eax
	movl	%edx, 56(%eax)
push %eax
pop %eax
L124:
	nop
push %eax
pop %eax
	popl	%ebp
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_channel_exists
	.def	_channel_exists;	.scl	2;	.type	32;	.endef
_channel_exists:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$16, %esp
push %eax
pop %eax
	movl	_channelList, %eax
push %eax
pop %eax
	movl	%eax, -4(%ebp)
push %eax
pop %eax
	jmp	L126
push %eax
pop %eax
L129:
	movl	-4(%ebp), %eax
push %eax
pop %eax
	cmpl	8(%ebp), %eax
push %eax
pop %eax
	jne	L127
push %eax
pop %eax
	movl	$1, %eax
push %eax
pop %eax
	jmp	L128
push %eax
pop %eax
L127:
	movl	-4(%ebp), %eax
push %eax
pop %eax
	movl	60(%eax), %eax
push %eax
pop %eax
	movl	%eax, -4(%ebp)
push %eax
pop %eax
L126:
	cmpl	$0, -4(%ebp)
push %eax
pop %eax
	jne	L129
push %eax
pop %eax
	movl	$0, %eax
push %eax
pop %eax
L128:
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_channel_default_io_handler
	.def	_channel_default_io_handler;	.scl	2;	.type	32;	.endef
_channel_default_io_handler:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$40, %esp
push %eax
pop %eax
	cmpl	$1, 20(%ebp)
push %eax
pop %eax
	je	L131
push %eax
pop %eax
	cmpl	$2, 20(%ebp)
push %eax
pop %eax
	je	L132
push %eax
pop %eax
	jmp	L134
push %eax
pop %eax
L131:
	movl	32(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 16(%esp)
push %eax
pop %eax
	movl	28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 12(%esp)
push %eax
pop %eax
	movl	24(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	12(%ebp), %eax
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
	call	_channel_read_buffer
push %eax
pop %eax
	jmp	L134
push %eax
pop %eax
L132:
	movl	32(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 16(%esp)
push %eax
pop %eax
	movl	28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 12(%esp)
push %eax
pop %eax
	movl	24(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	12(%ebp), %eax
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
	call	_channel_write_buffer
push %eax
pop %eax
	nop
push %eax
pop %eax
L134:
	movl	$0, %eax
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_channel_write_buffer
	.def	_channel_write_buffer;	.scl	2;	.type	32;	.endef
_channel_write_buffer:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$40, %esp
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %edx
push %eax
pop %eax
	movl	20(%ebp), %eax
push %eax
pop %eax
	addl	%eax, %edx
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	8(%eax), %eax
push %eax
pop %eax
	cmpl	%eax, %edx
push %eax
pop %eax
	jbe	L137
push %eax
pop %eax
	movl	$0, -12(%ebp)
push %eax
pop %eax
	movl	$0, -16(%ebp)
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %edx
push %eax
pop %eax
	movl	20(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	andl	$4095, %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	addl	$4096, %eax
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	8(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L138
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	movl	-16(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_realloc
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	jmp	L139
push %eax
pop %eax
L138:
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_malloc
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
L139:
	cmpl	$0, -12(%ebp)
push %eax
pop %eax
	jne	L140
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L141
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_free
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	$0, (%eax)
push %eax
pop %eax
L141:
	movl	$20, 8(%esp)
push %eax
pop %eax
	movl	$0, 4(%esp)
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_memset
push %eax
pop %eax
	jmp	L136
push %eax
pop %eax
L140:
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	-12(%ebp), %edx
push %eax
pop %eax
	movl	%edx, (%eax)
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	-16(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 8(%eax)
push %eax
pop %eax
L137:
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %edx
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	addl	%eax, %edx
push %eax
pop %eax
	movl	20(%ebp), %eax
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
	movl	%edx, (%esp)
push %eax
pop %eax
	call	_memcpy
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %edx
push %eax
pop %eax
	movl	20(%ebp), %eax
push %eax
pop %eax
	addl	%eax, %edx
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 4(%eax)
push %eax
pop %eax
	cmpl	$0, 24(%ebp)
push %eax
pop %eax
	je	L136
push %eax
pop %eax
	movl	24(%ebp), %eax
push %eax
pop %eax
	movl	20(%ebp), %edx
push %eax
pop %eax
	movl	%edx, (%eax)
push %eax
pop %eax
L136:
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_channel_read_buffer
	.def	_channel_read_buffer;	.scl	2;	.type	32;	.endef
_channel_read_buffer:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$40, %esp
push %eax
pop %eax
	movl	20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	cmpl	%eax, -12(%ebp)
push %eax
pop %eax
	jbe	L144
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
L144:
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	movl	-12(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_memcpy
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	cmpl	%eax, -12(%ebp)
push %eax
pop %eax
	je	L145
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	subl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %ecx
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	addl	%eax, %ecx
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	%ecx, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_memcpy
push %eax
pop %eax
L145:
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	subl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 4(%eax)
push %eax
pop %eax
	cmpl	$0, 24(%ebp)
push %eax
pop %eax
	je	L147
push %eax
pop %eax
	movl	24(%ebp), %eax
push %eax
pop %eax
	movl	-12(%ebp), %edx
push %eax
pop %eax
	movl	%edx, (%eax)
push %eax
pop %eax
L147:
	nop
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
