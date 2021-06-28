	.file	"core.c"
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
	.globl	_packetCompletionRoutineList
	.bss
	.align 4
_packetCompletionRoutineList:
	.space 4
	.text
	.globl	_core_update_thread_token
	.def	_core_update_thread_token;	.scl	2;	.type	32;	.endef
_core_update_thread_token:
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
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	20(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_lock_acquire
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	32(%eax), %eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	cmpl	$0, 12(%ebp)
push %eax
pop %eax
	jne	L3
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	28(%eax), %eax
push %eax
pop %eax
	movl	%eax, 12(%ebp)
push %eax
pop %eax
L3:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	12(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 32(%eax)
push %eax
pop %eax
	cmpl	$0, -12(%ebp)
push %eax
pop %eax
	je	L4
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	28(%eax), %eax
push %eax
pop %eax
	cmpl	%eax, -12(%ebp)
push %eax
pop %eax
	je	L4
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	32(%eax), %eax
push %eax
pop %eax
	cmpl	%eax, -12(%ebp)
push %eax
pop %eax
	je	L4
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__CloseHandle@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
L4:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	20(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_lock_release
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_core_update_desktop
	.def	_core_update_desktop;	.scl	2;	.type	32;	.endef
_core_update_desktop:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$40, %esp
push %eax
pop %eax
	movl	$-1, -12(%ebp)
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
	movl	20(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_lock_acquire
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	40(%eax), %eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	cmpl	$-1, 12(%ebp)
push %eax
pop %eax
	jne	L7
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	36(%eax), %eax
push %eax
pop %eax
	movl	%eax, 12(%ebp)
push %eax
pop %eax
L7:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	12(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 40(%eax)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	48(%eax), %eax
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
	cmpl	$0, 16(%ebp)
push %eax
pop %eax
	jne	L8
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	44(%eax), %eax
push %eax
pop %eax
	movl	%eax, 16(%ebp)
push %eax
pop %eax
L8:
	movl	16(%ebp), %eax
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
	movl	%eax, 48(%edx)
push %eax
pop %eax
	cmpl	$0, -16(%ebp)
push %eax
pop %eax
	je	L9
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	44(%eax), %eax
push %eax
pop %eax
	cmpl	%eax, -16(%ebp)
push %eax
pop %eax
	je	L9
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	48(%eax), %eax
push %eax
pop %eax
	cmpl	%eax, -16(%ebp)
push %eax
pop %eax
	je	L9
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
L9:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	56(%eax), %eax
push %eax
pop %eax
	movl	%eax, -20(%ebp)
push %eax
pop %eax
	cmpl	$0, 20(%ebp)
push %eax
pop %eax
	jne	L10
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	52(%eax), %eax
push %eax
pop %eax
	movl	%eax, 20(%ebp)
push %eax
pop %eax
L10:
	movl	20(%ebp), %eax
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
	movl	%eax, 56(%edx)
push %eax
pop %eax
	cmpl	$0, -20(%ebp)
push %eax
pop %eax
	je	L11
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	52(%eax), %eax
push %eax
pop %eax
	cmpl	%eax, -20(%ebp)
push %eax
pop %eax
	je	L11
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	56(%eax), %eax
push %eax
pop %eax
	cmpl	%eax, -20(%ebp)
push %eax
pop %eax
	je	L11
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_free
push %eax
pop %eax
L11:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	20(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_lock_release
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
	.globl	_packet_create
	.def	_packet_create;	.scl	2;	.type	32;	.endef
_packet_create:
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
	movl	$52, (%esp)
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
	je	L18
push %eax
pop %eax
	movl	$52, 8(%esp)
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
	movl	$8, (%esp)
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
	movl	-12(%ebp), %edx
push %eax
pop %eax
	movl	%eax, 24(%edx)
push %eax
pop %eax
	movl	8(%ebp), %eax
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
	movl	-12(%ebp), %edx
push %eax
pop %eax
	movl	%eax, 28(%edx)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	$0, 32(%eax)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	$0, 36(%eax)
push %eax
pop %eax
	cmpl	$0, 12(%ebp)
push %eax
pop %eax
	je	L15
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$131073, 4(%esp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_add_tlv_uint
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L19
push %eax
pop %eax
L15:
	movl	$1, -16(%ebp)
push %eax
pop %eax
	jmp	L14
push %eax
pop %eax
L18:
	nop
push %eax
pop %eax
	jmp	L14
push %eax
pop %eax
L19:
	nop
push %eax
pop %eax
L14:
	cmpl	$0, -16(%ebp)
push %eax
pop %eax
	jne	L16
push %eax
pop %eax
	cmpl	$0, -12(%ebp)
push %eax
pop %eax
	je	L16
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_destroy
push %eax
pop %eax
	movl	$0, -12(%ebp)
push %eax
pop %eax
L16:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_packet_create_group
	.def	_packet_create_group;	.scl	2;	.type	32;	.endef
_packet_create_group:
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
	movl	$52, (%esp)
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
	je	L26
push %eax
pop %eax
	movl	$52, 8(%esp)
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
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	$0, 32(%eax)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	$0, 36(%eax)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	jmp	L23
push %eax
pop %eax
L26:
	nop
push %eax
pop %eax
	cmpl	$0, -12(%ebp)
push %eax
pop %eax
	je	L24
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_free
push %eax
pop %eax
	movl	$0, -12(%ebp)
push %eax
pop %eax
L24:
	movl	$0, %eax
push %eax
pop %eax
L23:
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_packet_add_group
	.def	_packet_add_group;	.scl	2;	.type	32;	.endef
_packet_add_group:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$40, %esp
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	36(%eax), %edx
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	32(%eax), %eax
push %eax
pop %eax
	movl	%edx, 12(%esp)
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
	call	_packet_add_tlv_raw
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	cmpl	$0, -12(%ebp)
push %eax
pop %eax
	jne	L28
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
	movl	$0, %eax
push %eax
pop %eax
	jmp	L29
push %eax
pop %eax
L28:
	movl	-12(%ebp), %eax
push %eax
pop %eax
L29:
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.section .rdata,"dr"
LC2:
	.ascii "[PKT] Can't find command ID\0"
LC3:
	.ascii "[PKT] Can't create response\0"
LC4:
	.ascii "[PKT] Can't find request ID\0"
	.text
	.globl	_packet_create_response
	.def	_packet_create_response;	.scl	2;	.type	32;	.endef
_packet_create_response:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$56, %esp
push %eax
pop %eax
	movl	$0, -12(%ebp)
push %eax
pop %eax
	movl	$0, -16(%ebp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_get_type
push %eax
pop %eax
	cmpl	$10, %eax
push %eax
pop %eax
	jne	L31
push %eax
pop %eax
	movl	$11, -20(%ebp)
push %eax
pop %eax
	jmp	L32
push %eax
pop %eax
L31:
	movl	$1, -20(%ebp)
push %eax
pop %eax
L32:
	movl	$131073, 4(%esp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_get_tlv_value_uint
push %eax
pop %eax
	movl	%eax, -24(%ebp)
push %eax
pop %eax
	cmpl	$0, -24(%ebp)
push %eax
pop %eax
	jne	L33
push %eax
pop %eax
	movl	$LC2, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L34
push %eax
pop %eax
L33:
	movl	-24(%ebp), %eax
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
	call	_packet_create
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	cmpl	$0, -12(%ebp)
push %eax
pop %eax
	jne	L35
push %eax
pop %eax
	movl	$LC3, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L34
push %eax
pop %eax
L35:
	leal	-36(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$65538, 4(%esp)
push %eax
pop %eax
	movl	8(%ebp), %eax
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
	je	L36
push %eax
pop %eax
	movl	$LC4, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L34
push %eax
pop %eax
L36:
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$65538, 4(%esp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_add_tlv_string
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	44(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L37
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	-12(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 48(%eax)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	8(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 48(%eax)
push %eax
pop %eax
L37:
	movl	$1, -16(%ebp)
push %eax
pop %eax
L34:
	cmpl	$0, -16(%ebp)
push %eax
pop %eax
	jne	L38
push %eax
pop %eax
	cmpl	$0, -12(%ebp)
push %eax
pop %eax
	je	L39
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_destroy
push %eax
pop %eax
L39:
	movl	$0, -12(%ebp)
push %eax
pop %eax
L38:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_packet_destroy
	.def	_packet_destroy;	.scl	2;	.type	32;	.endef
_packet_destroy:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$40, %esp
push %eax
pop %eax
	cmpl	$0, 8(%ebp)
push %eax
pop %eax
	je	L51
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	32(%eax), %eax
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
	movl	36(%eax), %edx
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	32(%eax), %eax
push %eax
pop %eax
	movl	%edx, 8(%esp)
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
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	32(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_free
push %eax
pop %eax
L44:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	40(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L45
push %eax
pop %eax
L49:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	40(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_list_pop
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	cmpl	$0, -12(%ebp)
push %eax
pop %eax
	je	L52
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L48
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %edx
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	movl	%edx, 8(%esp)
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
	movl	(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_free
push %eax
pop %eax
L48:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_free
push %eax
pop %eax
	jmp	L49
push %eax
pop %eax
L52:
	nop
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	40(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_list_destroy
push %eax
pop %eax
L45:
	movl	$52, 8(%esp)
push %eax
pop %eax
	movl	$0, 4(%esp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_memset
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
	jmp	L41
push %eax
pop %eax
L51:
	nop
push %eax
pop %eax
L41:
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_packet_add_tlv_string
	.def	_packet_add_tlv_string;	.scl	2;	.type	32;	.endef
_packet_add_tlv_string:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$24, %esp
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_strlen
push %eax
pop %eax
	addl	$1, %eax
push %eax
pop %eax
	movl	%eax, 12(%esp)
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
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_add_tlv_raw
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_packet_add_tlv_wstring_len
	.def	_packet_add_tlv_wstring_len;	.scl	2;	.type	32;	.endef
_packet_add_tlv_wstring_len:
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
	addl	$1, %eax
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
	je	L56
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
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_wcstombs
push %eax
pop %eax
	movl	-16(%ebp), %edx
push %eax
pop %eax
	movl	20(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movb	$0, (%eax)
push %eax
pop %eax
	movl	20(%ebp), %eax
push %eax
pop %eax
	addl	$1, %eax
push %eax
pop %eax
	movl	%eax, 12(%esp)
push %eax
pop %eax
	movl	-16(%ebp), %eax
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
	call	_packet_add_tlv_raw
push %eax
pop %eax
	movl	%eax, -12(%ebp)
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
	jmp	L57
push %eax
pop %eax
L56:
	movl	$8, -12(%ebp)
push %eax
pop %eax
L57:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_packet_add_tlv_wstring
	.def	_packet_add_tlv_wstring;	.scl	2;	.type	32;	.endef
_packet_add_tlv_wstring:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$24, %esp
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_wcslen
push %eax
pop %eax
	movl	%eax, 12(%esp)
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
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_add_tlv_wstring_len
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_packet_add_tlv_uint
	.def	_packet_add_tlv_uint;	.scl	2;	.type	32;	.endef
_packet_add_tlv_uint:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$24, %esp
push %eax
pop %eax
	movl	16(%ebp), %eax
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
	movl	%eax, 16(%ebp)
push %eax
pop %eax
	movl	$4, 12(%esp)
push %eax
pop %eax
	leal	16(%ebp), %eax
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
	call	_packet_add_tlv_raw
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_packet_add_tlv_qword
	.def	_packet_add_tlv_qword;	.scl	2;	.type	32;	.endef
_packet_add_tlv_qword:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	pushl	%edi
push %eax
pop %eax
	pushl	%esi
push %eax
pop %eax
	pushl	%ebx
push %eax
pop %eax
	subl	$44, %esp
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -32(%ebp)
push %eax
pop %eax
	movl	20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -28(%ebp)
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	-28(%ebp), %edx
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
	movl	$0, %edx
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	$0, %eax
push %eax
pop %eax
	movl	%eax, %ebx
push %eax
pop %eax
	movl	%edx, %esi
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	-28(%ebp), %edx
push %eax
pop %eax
	movl	%edx, %eax
push %eax
pop %eax
	xorl	%edx, %edx
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
	movl	$0, %edx
push %eax
pop %eax
	movl	%ebx, %edi
push %eax
pop %eax
	orl	%eax, %edi
push %eax
pop %eax
	movl	%edi, -40(%ebp)
push %eax
pop %eax
	orl	%edx, %esi
push %eax
pop %eax
	movl	%esi, -36(%ebp)
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	movl	-36(%ebp), %edx
push %eax
pop %eax
	movl	%eax, -32(%ebp)
push %eax
pop %eax
	movl	%edx, -28(%ebp)
push %eax
pop %eax
	movl	$8, 12(%esp)
push %eax
pop %eax
	leal	-32(%ebp), %eax
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
	call	_packet_add_tlv_raw
push %eax
pop %eax
	leal	-12(%ebp), %esp
push %eax
pop %eax
	popl	%ebx
push %eax
pop %eax
	popl	%esi
push %eax
pop %eax
	popl	%edi
push %eax
pop %eax
	popl	%ebp
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_packet_add_tlv_bool
	.def	_packet_add_tlv_bool;	.scl	2;	.type	32;	.endef
_packet_add_tlv_bool:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$24, %esp
push %eax
pop %eax
	movl	$1, 12(%esp)
push %eax
pop %eax
	leal	16(%ebp), %eax
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
	call	_packet_add_tlv_raw
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_packet_add_tlv_group
	.def	_packet_add_tlv_group;	.scl	2;	.type	32;	.endef
_packet_add_tlv_group:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	pushl	%ebx
push %eax
pop %eax
	subl	$52, %esp
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
	movl	$0, -24(%ebp)
push %eax
pop %eax
	movl	$0, -28(%ebp)
push %eax
pop %eax
	movl	$0, -20(%ebp)
push %eax
pop %eax
	jmp	L68
push %eax
pop %eax
L69:
	movl	-20(%ebp), %edx
push %eax
pop %eax
	movl	%edx, %eax
push %eax
pop %eax
	addl	%eax, %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	sall	$2, %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	(%eax), %edx
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	addl	$8, %eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	addl	$1, -20(%ebp)
push %eax
pop %eax
L68:
	movl	-20(%ebp), %eax
push %eax
pop %eax
	cmpl	20(%ebp), %eax
push %eax
pop %eax
	jb	L69
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_malloc
push %eax
pop %eax
	movl	%eax, -28(%ebp)
push %eax
pop %eax
	cmpl	$0, -28(%ebp)
push %eax
pop %eax
	jne	L70
push %eax
pop %eax
	movl	$8, -24(%ebp)
push %eax
pop %eax
	jmp	L71
push %eax
pop %eax
L70:
	movl	$0, -20(%ebp)
push %eax
pop %eax
	jmp	L72
push %eax
pop %eax
L73:
	movl	-20(%ebp), %edx
push %eax
pop %eax
	movl	%edx, %eax
push %eax
pop %eax
	addl	%eax, %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	sall	$2, %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	addl	$8, %eax
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
	movl	%eax, -36(%ebp)
push %eax
pop %eax
	movl	-20(%ebp), %edx
push %eax
pop %eax
	movl	%edx, %eax
push %eax
pop %eax
	addl	%eax, %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	sall	$2, %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	4(%eax), %eax
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
	movl	%eax, -32(%ebp)
push %eax
pop %eax
	movl	-28(%ebp), %edx
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	leal	(%edx,%eax), %ecx
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	movl	-32(%ebp), %edx
push %eax
pop %eax
	movl	%eax, (%ecx)
push %eax
pop %eax
	movl	%edx, 4(%ecx)
push %eax
pop %eax
	movl	-20(%ebp), %edx
push %eax
pop %eax
	movl	%edx, %eax
push %eax
pop %eax
	addl	%eax, %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	sall	$2, %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	(%eax), %ecx
push %eax
pop %eax
	movl	-20(%ebp), %edx
push %eax
pop %eax
	movl	%edx, %eax
push %eax
pop %eax
	addl	%eax, %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	sall	$2, %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	8(%eax), %eax
push %eax
pop %eax
	movl	-16(%ebp), %edx
push %eax
pop %eax
	leal	8(%edx), %ebx
push %eax
pop %eax
	movl	-28(%ebp), %edx
push %eax
pop %eax
	addl	%ebx, %edx
push %eax
pop %eax
	movl	%ecx, 8(%esp)
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
	movl	-20(%ebp), %edx
push %eax
pop %eax
	movl	%edx, %eax
push %eax
pop %eax
	addl	%eax, %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	sall	$2, %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	(%eax), %edx
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	addl	$8, %eax
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
	addl	$1, -20(%ebp)
push %eax
pop %eax
L72:
	movl	-20(%ebp), %eax
push %eax
pop %eax
	cmpl	20(%ebp), %eax
push %eax
pop %eax
	jb	L73
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 12(%esp)
push %eax
pop %eax
	movl	-28(%ebp), %eax
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
	call	_packet_add_tlv_raw
push %eax
pop %eax
	movl	%eax, -24(%ebp)
push %eax
pop %eax
L71:
	cmpl	$0, -28(%ebp)
push %eax
pop %eax
	je	L74
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_free
push %eax
pop %eax
	movl	$0, -28(%ebp)
push %eax
pop %eax
L74:
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	-4(%ebp), %ebx
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_packet_add_tlvs
	.def	_packet_add_tlvs;	.scl	2;	.type	32;	.endef
_packet_add_tlvs:
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
	movl	$0, -12(%ebp)
push %eax
pop %eax
	jmp	L77
push %eax
pop %eax
L78:
	movl	-12(%ebp), %edx
push %eax
pop %eax
	movl	%edx, %eax
push %eax
pop %eax
	addl	%eax, %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	sall	$2, %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	(%eax), %ebx
push %eax
pop %eax
	movl	-12(%ebp), %edx
push %eax
pop %eax
	movl	%edx, %eax
push %eax
pop %eax
	addl	%eax, %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	sall	$2, %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	8(%eax), %ecx
push %eax
pop %eax
	movl	-12(%ebp), %edx
push %eax
pop %eax
	movl	%edx, %eax
push %eax
pop %eax
	addl	%eax, %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	sall	$2, %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	movl	%ebx, 12(%esp)
push %eax
pop %eax
	movl	%ecx, 8(%esp)
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
	call	_packet_add_tlv_raw
push %eax
pop %eax
	addl	$1, -12(%ebp)
push %eax
pop %eax
L77:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	cmpl	16(%ebp), %eax
push %eax
pop %eax
	jb	L78
push %eax
pop %eax
	movl	$0, %eax
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
	.globl	_packet_add_tlv_raw_compressed
	.def	_packet_add_tlv_raw_compressed;	.scl	2;	.type	32;	.endef
_packet_add_tlv_raw_compressed:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	pushl	%ebx
push %eax
pop %eax
	subl	$84, %esp
push %eax
pop %eax
	movl	$0, -12(%ebp)
push %eax
pop %eax
	movl	$8, -20(%ebp)
push %eax
pop %eax
	movl	$0, -16(%ebp)
push %eax
pop %eax
	movl	$0, -24(%ebp)
push %eax
pop %eax
	movl	$0, -28(%ebp)
push %eax
pop %eax
	movl	$0, -32(%ebp)
push %eax
pop %eax
	movl	20(%ebp), %eax
push %eax
pop %eax
	addl	$12, %eax
push %eax
pop %eax
	movl	%eax, -56(%ebp)
push %eax
pop %eax
	movl	$0, -52(%ebp)
push %eax
pop %eax
	fildq	-56(%ebp)
push %eax
pop %eax
	fldl	LC5
push %eax
pop %eax
	fmulp	%st, %st(1)
push %eax
pop %eax
	fld1
	faddp	%st, %st(1)
push %eax
pop %eax
	fnstcw	-42(%ebp)
push %eax
pop %eax
	movzwl	-42(%ebp), %eax
push %eax
pop %eax
	orb	$12, %ah
push %eax
pop %eax
	movw	%ax, -44(%ebp)
push %eax
pop %eax
	fldcw	-44(%ebp)
push %eax
pop %eax
	fistpq	-56(%ebp)
push %eax
pop %eax
	fldcw	-42(%ebp)
push %eax
pop %eax
	movl	-56(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -36(%ebp)
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
	movl	%eax, -24(%ebp)
push %eax
pop %eax
	cmpl	$0, -24(%ebp)
push %eax
pop %eax
	jne	L81
push %eax
pop %eax
	movl	$8, -12(%ebp)
push %eax
pop %eax
	jmp	L82
push %eax
pop %eax
L81:
	movl	$9, 16(%esp)
push %eax
pop %eax
	movl	20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 12(%esp)
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	leal	-36(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_compress2
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L83
push %eax
pop %eax
	movl	$618, -12(%ebp)
push %eax
pop %eax
	jmp	L82
push %eax
pop %eax
L83:
	movl	-36(%ebp), %edx
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -28(%ebp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	36(%eax), %edx
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -32(%ebp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	32(%eax), %eax
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
	movl	32(%eax), %eax
push %eax
pop %eax
	movl	-32(%ebp), %edx
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
	movl	%eax, -16(%ebp)
push %eax
pop %eax
	jmp	L85
push %eax
pop %eax
L84:
	movl	-32(%ebp), %eax
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
L85:
	cmpl	$0, -16(%ebp)
push %eax
pop %eax
	jne	L86
push %eax
pop %eax
	movl	$8, -12(%ebp)
push %eax
pop %eax
	jmp	L82
push %eax
pop %eax
L86:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	36(%eax), %edx
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	leal	(%edx,%eax), %ebx
push %eax
pop %eax
	movl	-28(%ebp), %eax
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
	movl	%eax, (%ebx)
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	8(%ebp), %edx
push %eax
pop %eax
	movl	36(%edx), %ecx
push %eax
pop %eax
	movl	-16(%ebp), %edx
push %eax
pop %eax
	addl	%ecx, %edx
push %eax
pop %eax
	leal	4(%edx), %ebx
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
	movl	%eax, (%ebx)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	movl	8(%ebp), %edx
push %eax
pop %eax
	movl	36(%edx), %ecx
push %eax
pop %eax
	movl	-20(%ebp), %edx
push %eax
pop %eax
	addl	%edx, %ecx
push %eax
pop %eax
	movl	-16(%ebp), %edx
push %eax
pop %eax
	addl	%ecx, %edx
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	-24(%ebp), %eax
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
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	24(%eax), %eax
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
	movl	-28(%ebp), %edx
push %eax
pop %eax
	addl	%edx, %eax
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
	movl	8(%ebp), %edx
push %eax
pop %eax
	movl	%eax, 24(%edx)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	-16(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 32(%eax)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	-32(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 36(%eax)
push %eax
pop %eax
	movl	$0, -12(%ebp)
push %eax
pop %eax
L82:
	cmpl	$0, -24(%ebp)
push %eax
pop %eax
	je	L87
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
	movl	$0, -24(%ebp)
push %eax
pop %eax
L87:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	-4(%ebp), %ebx
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_packet_add_tlv_raw
	.def	_packet_add_tlv_raw;	.scl	2;	.type	32;	.endef
_packet_add_tlv_raw:
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
	movl	$8, -16(%ebp)
push %eax
pop %eax
	movl	20(%ebp), %edx
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -20(%ebp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	36(%eax), %edx
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -24(%ebp)
push %eax
pop %eax
	movl	$0, -12(%ebp)
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	andl	$536870912, %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L90
push %eax
pop %eax
	movl	20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 12(%esp)
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
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_add_tlv_raw_compressed
push %eax
pop %eax
	jmp	L91
push %eax
pop %eax
L90:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	32(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L92
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	32(%eax), %eax
push %eax
pop %eax
	movl	-24(%ebp), %edx
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
	jmp	L93
push %eax
pop %eax
L92:
	movl	-24(%ebp), %eax
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
L93:
	cmpl	$0, -12(%ebp)
push %eax
pop %eax
	jne	L94
push %eax
pop %eax
	movl	$8, %eax
push %eax
pop %eax
	jmp	L91
push %eax
pop %eax
L94:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	36(%eax), %edx
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	leal	(%edx,%eax), %ebx
push %eax
pop %eax
	movl	-20(%ebp), %eax
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
	movl	%eax, (%ebx)
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	8(%ebp), %edx
push %eax
pop %eax
	movl	36(%edx), %ecx
push %eax
pop %eax
	movl	-12(%ebp), %edx
push %eax
pop %eax
	addl	%ecx, %edx
push %eax
pop %eax
	leal	4(%edx), %ebx
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
	movl	%eax, (%ebx)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	36(%eax), %edx
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	addl	%eax, %edx
push %eax
pop %eax
	movl	-12(%ebp), %eax
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
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	24(%eax), %eax
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
	movl	-20(%ebp), %edx
push %eax
pop %eax
	addl	%edx, %eax
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
	movl	8(%ebp), %edx
push %eax
pop %eax
	movl	%eax, 24(%edx)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	-12(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 32(%eax)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	-24(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 36(%eax)
push %eax
pop %eax
	movl	$0, %eax
push %eax
pop %eax
L91:
	movl	-4(%ebp), %ebx
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_packet_is_tlv_null_terminated
	.def	_packet_is_tlv_null_terminated;	.scl	2;	.type	32;	.endef
_packet_is_tlv_null_terminated:
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
	testl	%eax, %eax
push %eax
pop %eax
	je	L96
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	8(%eax), %edx
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	subl	$1, %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	testb	%al, %al
push %eax
pop %eax
	je	L96
push %eax
pop %eax
	movl	$1168, %eax
push %eax
pop %eax
	jmp	L97
push %eax
pop %eax
L96:
	movl	$0, %eax
push %eax
pop %eax
L97:
	popl	%ebp
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_packet_get_type
	.def	_packet_get_type;	.scl	2;	.type	32;	.endef
_packet_get_type:
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
	movl	28(%eax), %eax
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
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_packet_get_tlv_meta
	.def	_packet_get_tlv_meta;	.scl	2;	.type	32;	.endef
_packet_get_tlv_meta:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	movw	$0, %ax
push %eax
pop %eax
	popl	%ebp
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_packet_get_tlv
	.def	_packet_get_tlv;	.scl	2;	.type	32;	.endef
_packet_get_tlv:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$24, %esp
push %eax
pop %eax
	movl	16(%ebp), %eax
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
	movl	$0, 4(%esp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_enum_tlv
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_packet_get_tlv_string
	.def	_packet_get_tlv_string;	.scl	2;	.type	32;	.endef
_packet_get_tlv_string:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$40, %esp
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
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_get_tlv
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	cmpl	$0, -12(%ebp)
push %eax
pop %eax
	jne	L105
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_is_tlv_null_terminated
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
L105:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_packet_get_tlv_group_entry
	.def	_packet_get_tlv_group_entry;	.scl	2;	.type	32;	.endef
_packet_get_tlv_group_entry:
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
	movl	(%eax), %edx
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	8(%eax), %eax
push %eax
pop %eax
	movl	20(%ebp), %ecx
push %eax
pop %eax
	movl	%ecx, 20(%esp)
push %eax
pop %eax
	movl	16(%ebp), %ecx
push %eax
pop %eax
	movl	%ecx, 16(%esp)
push %eax
pop %eax
	movl	$0, 12(%esp)
push %eax
pop %eax
	movl	%edx, 8(%esp)
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
	call	_packet_find_tlv_buf
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_packet_enum_tlv
	.def	_packet_enum_tlv;	.scl	2;	.type	32;	.endef
_packet_enum_tlv:
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
	movl	36(%eax), %edx
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	32(%eax), %eax
push %eax
pop %eax
	movl	20(%ebp), %ecx
push %eax
pop %eax
	movl	%ecx, 20(%esp)
push %eax
pop %eax
	movl	16(%ebp), %ecx
push %eax
pop %eax
	movl	%ecx, 16(%esp)
push %eax
pop %eax
	movl	12(%ebp), %ecx
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
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_find_tlv_buf
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_packet_get_tlv_value_string
	.def	_packet_get_tlv_value_string;	.scl	2;	.type	32;	.endef
_packet_get_tlv_value_string:
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
	leal	-24(%ebp), %eax
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
	call	_packet_get_tlv_string
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L112
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
L112:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_packet_get_tlv_value_reflective_loader
	.def	_packet_get_tlv_value_reflective_loader;	.scl	2;	.type	32;	.endef
_packet_get_tlv_value_reflective_loader:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$40, %esp
push %eax
pop %eax
	movl	$65948, 4(%esp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_get_tlv_value_string
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	cmpl	$0, -12(%ebp)
push %eax
pop %eax
	jne	L115
push %eax
pop %eax
	movl	$131485, 4(%esp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_get_tlv_value_uint
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
	cmpl	$0, -16(%ebp)
push %eax
pop %eax
	je	L116
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movzwl	%ax, %eax
push %eax
pop %eax
	jmp	L117
push %eax
pop %eax
L116:
	movl	$1, %eax
push %eax
pop %eax
L117:
	movl	%eax, -12(%ebp)
push %eax
pop %eax
L115:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_packet_get_tlv_value_wstring
	.def	_packet_get_tlv_value_wstring;	.scl	2;	.type	32;	.endef
_packet_get_tlv_value_wstring:
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
	call	_packet_get_tlv_value_string
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
	cmpl	$0, -16(%ebp)
push %eax
pop %eax
	je	L120
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
	movl	$0, (%esp)
push %eax
pop %eax
	call	_mbstowcs
push %eax
pop %eax
	addl	$1, %eax
push %eax
pop %eax
	movl	%eax, -20(%ebp)
push %eax
pop %eax
	movl	$2, 4(%esp)
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_calloc
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	cmpl	$0, -12(%ebp)
push %eax
pop %eax
	je	L120
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
	call	_mbstowcs
push %eax
pop %eax
L120:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_packet_get_tlv_value_uint
	.def	_packet_get_tlv_value_uint;	.scl	2;	.type	32;	.endef
_packet_get_tlv_value_uint:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$40, %esp
push %eax
pop %eax
	leal	-20(%ebp), %eax
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
	call	_packet_get_tlv
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L123
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	cmpl	$3, %eax
push %eax
pop %eax
	ja	L124
push %eax
pop %eax
L123:
	movl	$0, %eax
push %eax
pop %eax
	jmp	L126
push %eax
pop %eax
L124:
	movl	-12(%ebp), %eax
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
L126:
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_packet_get_tlv_value_raw
	.def	_packet_get_tlv_value_raw;	.scl	2;	.type	32;	.endef
_packet_get_tlv_value_raw:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$40, %esp
push %eax
pop %eax
	leal	-20(%ebp), %eax
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
	call	_packet_get_tlv
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L128
push %eax
pop %eax
	movl	$0, %eax
push %eax
pop %eax
	jmp	L130
push %eax
pop %eax
L128:
	movl	-20(%ebp), %edx
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	%edx, (%eax)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
L130:
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_packet_get_tlv_value_qword
	.def	_packet_get_tlv_value_qword;	.scl	2;	.type	32;	.endef
_packet_get_tlv_value_qword:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	pushl	%edi
push %eax
pop %eax
	pushl	%esi
push %eax
pop %eax
	pushl	%ebx
push %eax
pop %eax
	subl	$60, %esp
push %eax
pop %eax
	leal	-36(%ebp), %eax
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
	call	_packet_get_tlv
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L132
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	cmpl	$7, %eax
push %eax
pop %eax
	ja	L133
push %eax
pop %eax
L132:
	movl	$0, -48(%ebp)
push %eax
pop %eax
	movl	$0, -44(%ebp)
push %eax
pop %eax
	jmp	L135
push %eax
pop %eax
L133:
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %edx
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
	movl	$0, %edx
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	$0, %eax
push %eax
pop %eax
	movl	%eax, %esi
push %eax
pop %eax
	movl	%edx, %edi
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %edx
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	movl	%edx, %eax
push %eax
pop %eax
	xorl	%edx, %edx
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
	movl	$0, %edx
push %eax
pop %eax
	movl	%esi, %ecx
push %eax
pop %eax
	movl	%edi, %ebx
push %eax
pop %eax
	movl	%ecx, %edi
push %eax
pop %eax
	orl	%eax, %edi
push %eax
pop %eax
	movl	%edi, -48(%ebp)
push %eax
pop %eax
	movl	%ebx, %edi
push %eax
pop %eax
	orl	%edx, %edi
push %eax
pop %eax
	movl	%edi, -44(%ebp)
push %eax
pop %eax
L135:
	movl	-48(%ebp), %eax
push %eax
pop %eax
	movl	-44(%ebp), %edx
push %eax
pop %eax
	leal	-12(%ebp), %esp
push %eax
pop %eax
	popl	%ebx
push %eax
pop %eax
	popl	%esi
push %eax
pop %eax
	popl	%edi
push %eax
pop %eax
	popl	%ebp
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_packet_get_tlv_value_bool
	.def	_packet_get_tlv_value_bool;	.scl	2;	.type	32;	.endef
_packet_get_tlv_value_bool:
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
	leal	-24(%ebp), %eax
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
	call	_packet_get_tlv
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L137
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movsbl	%al, %eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
L137:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_packet_add_exception
	.def	_packet_add_exception;	.scl	2;	.type	32;	.endef
_packet_add_exception:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	movl	$8248, %eax
push %eax
pop %eax
	call	___chkstk_ms
push %eax
pop %eax
	subl	%eax, %esp
push %eax
pop %eax
	movl	12(%ebp), %eax
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
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	movb	$0, -13(%ebp)
push %eax
pop %eax
	leal	20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -8232(%ebp)
push %eax
pop %eax
	movl	-8232(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 12(%esp)
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$8191, 4(%esp)
push %eax
pop %eax
	leal	-8204(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp___vsnprintf, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	$131372, -8224(%ebp)
push %eax
pop %eax
	movl	$4, -8228(%ebp)
push %eax
pop %eax
	leal	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -8220(%ebp)
push %eax
pop %eax
	movl	$65837, -8212(%ebp)
push %eax
pop %eax
	leal	-8204(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_strlen
push %eax
pop %eax
	addl	$1, %eax
push %eax
pop %eax
	movl	%eax, -8216(%ebp)
push %eax
pop %eax
	leal	-8204(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -8208(%ebp)
push %eax
pop %eax
	movl	$2, 12(%esp)
push %eax
pop %eax
	leal	-8228(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$1073741827, 4(%esp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_add_tlv_group
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
LC8:
	.ascii "[PKT FIND] Looking for type %u\0"
	.align 4
LC9:
	.ascii "[PKT FIND] Reached end of packet buffer\0"
	.align 4
LC10:
	.ascii "[PKT FIND] TLV header length: %u\0"
	.align 4
LC11:
	.ascii "[PKT FIND] TLV header type: %u\0"
	.align 4
LC12:
	.ascii "[PKT FIND] Types don't match, skipping.\0"
	.align 4
LC13:
	.ascii "[PKT FIND] wrong index, skipping.\0"
	.align 4
LC14:
	.ascii "[PKT FIND] if ((current + length > payload + payloadLength) || (current < payload))\0"
LC15:
	.ascii "[PKT FIND] Current: %p\0"
LC16:
	.ascii "[PKT FIND] length: %x\0"
	.align 4
LC17:
	.ascii "[PKT FIND] Current + length: %p\0"
LC18:
	.ascii "[PKT FIND] payload: %p\0"
LC19:
	.ascii "[PKT FIND] payloadLength: %x\0"
	.align 4
LC20:
	.ascii "[PKT FIND] payload + payloadLength: %p\0"
LC21:
	.ascii "[PKT FIND] diff: %x\0"
LC22:
	.ascii "[PKT FIND] Found!\0"
	.text
	.globl	_packet_find_tlv_buf
	.def	_packet_find_tlv_buf;	.scl	2;	.type	32;	.endef
_packet_find_tlv_buf:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	pushl	%ebx
push %eax
pop %eax
	subl	$52, %esp
push %eax
pop %eax
	movl	$0, -12(%ebp)
push %eax
pop %eax
	movl	$0, -16(%ebp)
push %eax
pop %eax
	movl	$0, -32(%ebp)
push %eax
pop %eax
	movl	$0, -20(%ebp)
push %eax
pop %eax
	movl	24(%ebp), %eax
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
	movl	$12, 8(%esp)
push %eax
pop %eax
	movl	$0, 4(%esp)
push %eax
pop %eax
	movl	28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_memset
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -24(%ebp)
push %eax
pop %eax
	movl	$0, -32(%ebp)
push %eax
pop %eax
	jmp	L142
push %eax
pop %eax
L161:
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -36(%ebp)
push %eax
pop %eax
	movl	$0, -28(%ebp)
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	leal	8(%eax), %ecx
push %eax
pop %eax
	movl	12(%ebp), %edx
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	cmpl	%eax, %ecx
push %eax
pop %eax
	ja	L143
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	cmpl	12(%ebp), %eax
push %eax
pop %eax
	jnb	L144
push %eax
pop %eax
L143:
	movl	$LC9, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L145
push %eax
pop %eax
L144:
	movl	-36(%ebp), %eax
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
	movl	%eax, -32(%ebp)
push %eax
pop %eax
	movl	-32(%ebp), %eax
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
	movl	-36(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
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
	movl	%eax, -28(%ebp)
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC11, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	andl	$536870912, %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L146
push %eax
pop %eax
	xorl	$536870912, -28(%ebp)
push %eax
pop %eax
L146:
	movl	-28(%ebp), %eax
push %eax
pop %eax
	cmpl	24(%ebp), %eax
push %eax
pop %eax
	je	L147
push %eax
pop %eax
	cmpl	$0, 24(%ebp)
push %eax
pop %eax
	je	L147
push %eax
pop %eax
	movl	$LC12, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L148
push %eax
pop %eax
L147:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	cmpl	20(%ebp), %eax
push %eax
pop %eax
	je	L149
push %eax
pop %eax
	movl	$LC13, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	addl	$1, -12(%ebp)
push %eax
pop %eax
	jmp	L148
push %eax
pop %eax
L149:
	movl	-24(%ebp), %edx
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	leal	(%edx,%eax), %ecx
push %eax
pop %eax
	movl	12(%ebp), %edx
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	cmpl	%eax, %ecx
push %eax
pop %eax
	ja	L150
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	cmpl	12(%ebp), %eax
push %eax
pop %eax
	jnb	L151
push %eax
pop %eax
L150:
	movl	$LC14, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC15, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-32(%ebp), %eax
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
	movl	-24(%ebp), %edx
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
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
	movl	12(%ebp), %eax
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
	movl	16(%ebp), %eax
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
	movl	12(%ebp), %edx
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC20, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-24(%ebp), %edx
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	leal	(%edx,%eax), %ecx
push %eax
pop %eax
	movl	12(%ebp), %edx
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	subl	%eax, %ecx
push %eax
pop %eax
	movl	%ecx, %eax
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
	jmp	L145
push %eax
pop %eax
L151:
	movl	-36(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
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
	movl	28(%ebp), %edx
push %eax
pop %eax
	movl	%eax, 4(%edx)
push %eax
pop %eax
	movl	-36(%ebp), %eax
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
	leal	-8(%eax), %edx
push %eax
pop %eax
	movl	28(%ebp), %eax
push %eax
pop %eax
	movl	%edx, (%eax)
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	leal	8(%eax), %edx
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	addl	%eax, %edx
push %eax
pop %eax
	movl	28(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 8(%eax)
push %eax
pop %eax
	movl	$LC22, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	28(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	andl	$536870912, %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L152
push %eax
pop %eax
	movl	$0, -40(%ebp)
push %eax
pop %eax
	movl	$8, (%esp)
push %eax
pop %eax
	call	_malloc
push %eax
pop %eax
	movl	%eax, -40(%ebp)
push %eax
pop %eax
	cmpl	$0, -40(%ebp)
push %eax
pop %eax
	je	L165
push %eax
pop %eax
	movl	28(%ebp), %eax
push %eax
pop %eax
	movl	8(%eax), %eax
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
	movl	-40(%ebp), %edx
push %eax
pop %eax
	movl	%eax, 4(%edx)
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L166
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_malloc
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	movl	%edx, (%eax)
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L167
push %eax
pop %eax
	movl	28(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	leal	-4(%eax), %edx
push %eax
pop %eax
	movl	28(%ebp), %eax
push %eax
pop %eax
	movl	%edx, (%eax)
push %eax
pop %eax
	movl	28(%ebp), %eax
push %eax
pop %eax
	movl	8(%eax), %eax
push %eax
pop %eax
	leal	4(%eax), %edx
push %eax
pop %eax
	movl	28(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 8(%eax)
push %eax
pop %eax
	movl	28(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %ecx
push %eax
pop %eax
	movl	28(%ebp), %eax
push %eax
pop %eax
	movl	8(%eax), %edx
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	leal	4(%eax), %ebx
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	movl	%ecx, 12(%esp)
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	%ebx, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_uncompress
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L168
push %eax
pop %eax
	movl	28(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	xorl	$536870912, %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	28(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 4(%eax)
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %edx
push %eax
pop %eax
	movl	28(%ebp), %eax
push %eax
pop %eax
	movl	%edx, (%eax)
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %edx
push %eax
pop %eax
	movl	28(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 8(%eax)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	40(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L158
push %eax
pop %eax
	call	_list_create
push %eax
pop %eax
	movl	8(%ebp), %edx
push %eax
pop %eax
	movl	%eax, 40(%edx)
push %eax
pop %eax
L158:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	40(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L169
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	40(%eax), %eax
push %eax
pop %eax
	movl	-40(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_list_push
push %eax
pop %eax
	movl	$1, -20(%ebp)
push %eax
pop %eax
	jmp	L154
push %eax
pop %eax
L165:
	nop
push %eax
pop %eax
	jmp	L154
push %eax
pop %eax
L166:
	nop
push %eax
pop %eax
	jmp	L154
push %eax
pop %eax
L167:
	nop
push %eax
pop %eax
	jmp	L154
push %eax
pop %eax
L168:
	nop
push %eax
pop %eax
	jmp	L154
push %eax
pop %eax
L169:
	nop
push %eax
pop %eax
L154:
	cmpl	$0, -20(%ebp)
push %eax
pop %eax
	jne	L148
push %eax
pop %eax
	cmpl	$0, -40(%ebp)
push %eax
pop %eax
	je	L148
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L160
push %eax
pop %eax
	movl	-40(%ebp), %eax
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
	movl	-40(%ebp), %eax
push %eax
pop %eax
	movl	$0, (%eax)
push %eax
pop %eax
L160:
	cmpl	$0, -40(%ebp)
push %eax
pop %eax
	je	L148
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_free
push %eax
pop %eax
	movl	$0, -40(%ebp)
push %eax
pop %eax
	jmp	L148
push %eax
pop %eax
L152:
	movl	$1, -20(%ebp)
push %eax
pop %eax
L148:
	movl	-32(%ebp), %eax
push %eax
pop %eax
	addl	%eax, -16(%ebp)
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	addl	%eax, -24(%ebp)
push %eax
pop %eax
L142:
	cmpl	$0, -20(%ebp)
push %eax
pop %eax
	jne	L145
push %eax
pop %eax
	cmpl	$0, -24(%ebp)
push %eax
pop %eax
	jne	L161
push %eax
pop %eax
L145:
	cmpl	$0, -20(%ebp)
push %eax
pop %eax
	je	L162
push %eax
pop %eax
	movl	$0, %eax
push %eax
pop %eax
	jmp	L164
push %eax
pop %eax
L162:
	movl	$1168, %eax
push %eax
pop %eax
L164:
	movl	-4(%ebp), %ebx
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_packet_add_completion_handler
	.def	_packet_add_completion_handler;	.scl	2;	.type	32;	.endef
_packet_add_completion_handler:
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
	movl	$20, (%esp)
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
	jne	L171
push %eax
pop %eax
	movl	$8, -12(%ebp)
push %eax
pop %eax
	jmp	L172
push %eax
pop %eax
L171:
	movl	-16(%ebp), %eax
push %eax
pop %eax
	leal	4(%eax), %edx
push %eax
pop %eax
	movl	$12, 8(%esp)
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
	call	_memcpy
push %eax
pop %eax
	movl	8(%ebp), %eax
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
	movl	-16(%ebp), %edx
push %eax
pop %eax
	movl	%eax, (%edx)
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L173
push %eax
pop %eax
	movl	$8, -12(%ebp)
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
	jmp	L172
push %eax
pop %eax
L173:
	movl	_packetCompletionRoutineList, %edx
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 16(%eax)
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, _packetCompletionRoutineList
push %eax
pop %eax
L172:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_packet_call_completion_handlers
	.def	_packet_call_completion_handlers;	.scl	2;	.type	32;	.endef
_packet_call_completion_handlers:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$56, %esp
push %eax
pop %eax
	movl	$131076, 4(%esp)
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
	movl	%eax, -20(%ebp)
push %eax
pop %eax
	movl	$0, -16(%ebp)
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
	movl	%eax, -24(%ebp)
push %eax
pop %eax
	movl	_packetCompletionRoutineList, %eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	jmp	L176
push %eax
pop %eax
L179:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
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
	call	_strcmp
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L184
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
	movl	4(%edx), %edx
push %eax
pop %eax
	movl	-20(%ebp), %ecx
push %eax
pop %eax
	movl	%ecx, 16(%esp)
push %eax
pop %eax
	movl	-24(%ebp), %ecx
push %eax
pop %eax
	movl	%ecx, 12(%esp)
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
	addl	$1, -16(%ebp)
push %eax
pop %eax
	jmp	L178
push %eax
pop %eax
L184:
	nop
push %eax
pop %eax
L178:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	16(%eax), %eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
L176:
	cmpl	$0, -12(%ebp)
push %eax
pop %eax
	jne	L179
push %eax
pop %eax
	cmpl	$0, -16(%ebp)
push %eax
pop %eax
	je	L180
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_remove_completion_handler
push %eax
pop %eax
L180:
	cmpl	$0, -16(%ebp)
push %eax
pop %eax
	je	L181
push %eax
pop %eax
	movl	$0, %eax
push %eax
pop %eax
	jmp	L183
push %eax
pop %eax
L181:
	movl	$1168, %eax
push %eax
pop %eax
L183:
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_packet_remove_completion_handler
	.def	_packet_remove_completion_handler;	.scl	2;	.type	32;	.endef
_packet_remove_completion_handler:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$40, %esp
push %eax
pop %eax
	movl	_packetCompletionRoutineList, %eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	movl	$0, -20(%ebp)
push %eax
pop %eax
	movl	$0, -16(%ebp)
push %eax
pop %eax
	jmp	L186
push %eax
pop %eax
L191:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	16(%eax), %eax
push %eax
pop %eax
	movl	%eax, -20(%ebp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
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
	call	_strcmp
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L193
push %eax
pop %eax
	cmpl	$0, -16(%ebp)
push %eax
pop %eax
	je	L189
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	-20(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 16(%eax)
push %eax
pop %eax
	jmp	L190
push %eax
pop %eax
L189:
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, _packetCompletionRoutineList
push %eax
pop %eax
L190:
	movl	-12(%ebp), %eax
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
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_free
push %eax
pop %eax
	jmp	L188
push %eax
pop %eax
L193:
	nop
push %eax
pop %eax
L188:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
L186:
	cmpl	$0, -12(%ebp)
push %eax
pop %eax
	jne	L191
push %eax
pop %eax
	movl	$0, %eax
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_packet_transmit_empty_response
	.def	_packet_transmit_empty_response;	.scl	2;	.type	32;	.endef
_packet_transmit_empty_response:
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
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_create_response
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	cmpl	$0, -12(%ebp)
push %eax
pop %eax
	jne	L195
push %eax
pop %eax
	movl	$8, %eax
push %eax
pop %eax
	jmp	L196
push %eax
pop %eax
L195:
	movl	-12(%ebp), %eax
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
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_transmit_response
push %eax
pop %eax
L196:
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_packet_transmit_response
	.def	_packet_transmit_response;	.scl	2;	.type	32;	.endef
_packet_transmit_response:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$24, %esp
push %eax
pop %eax
	cmpl	$0, 16(%ebp)
push %eax
pop %eax
	je	L198
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$131076, 4(%esp)
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_add_tlv_uint
push %eax
pop %eax
	movl	$0, 8(%esp)
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
	call	_packet_transmit
push %eax
pop %eax
	jmp	L199
push %eax
pop %eax
L198:
	movl	$8, %eax
push %eax
pop %eax
L199:
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_packet_add_request_id
	.def	_packet_add_request_id;	.scl	2;	.type	32;	.endef
_packet_add_request_id:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$72, %esp
push %eax
pop %eax
	movl	$0, -24(%ebp)
push %eax
pop %eax
	movl	$0, -20(%ebp)
push %eax
pop %eax
	movl	$0, -16(%ebp)
push %eax
pop %eax
	leal	-24(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$65538, 4(%esp)
push %eax
pop %eax
	movl	8(%ebp), %eax
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
	je	L201
push %eax
pop %eax
	movb	$0, -25(%ebp)
push %eax
pop %eax
	movl	$0, -12(%ebp)
push %eax
pop %eax
	jmp	L202
push %eax
pop %eax
L203:
	call	_rand
push %eax
pop %eax
	movl	%eax, %ecx
push %eax
pop %eax
	movl	$-1370734243, %edx
push %eax
pop %eax
	movl	%ecx, %eax
push %eax
pop %eax
	imull	%edx
push %eax
pop %eax
	leal	(%edx,%ecx), %eax
push %eax
pop %eax
	sarl	$6, %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	%ecx, %eax
push %eax
pop %eax
	sarl	$31, %eax
push %eax
pop %eax
	subl	%eax, %edx
push %eax
pop %eax
	movl	%edx, %eax
push %eax
pop %eax
	imull	$94, %eax, %eax
push %eax
pop %eax
	subl	%eax, %ecx
push %eax
pop %eax
	movl	%ecx, %eax
push %eax
pop %eax
	addl	$33, %eax
push %eax
pop %eax
	movl	%eax, %ecx
push %eax
pop %eax
	leal	-56(%ebp), %edx
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movb	%cl, (%eax)
push %eax
pop %eax
	addl	$1, -12(%ebp)
push %eax
pop %eax
L202:
	cmpl	$30, -12(%ebp)
push %eax
pop %eax
	jbe	L203
push %eax
pop %eax
	leal	-56(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$65538, 4(%esp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_add_tlv_string
push %eax
pop %eax
L201:
	movl	$0, %eax
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
LC23:
	.ascii "[TRANSMIT] Ignoring local packet\0"
	.align 4
LC24:
	.ascii "[TRANSMIT] Sending packet to the server\0"
	.align 4
LC25:
	.ascii "[PACKET] Sending packet to remote, length: %u, command id: %u\0"
	.align 4
LC26:
	.ascii "[PACKET] Sent packet to remote, length: %u, command id: %u, result: %u\0"
	.text
	.globl	_packet_transmit
	.def	_packet_transmit;	.scl	2;	.type	32;	.endef
_packet_transmit:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	pushl	%ebx
push %eax
pop %eax
	subl	$52, %esp
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	48(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L206
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	48(%eax), %eax
push %eax
pop %eax
	movl	44(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L206
push %eax
pop %eax
	movl	$LC23, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	$0, %eax
push %eax
pop %eax
	jmp	L210
push %eax
pop %eax
L206:
	movl	$0, -28(%ebp)
push %eax
pop %eax
	movl	$0, -32(%ebp)
push %eax
pop %eax
	movl	$LC24, (%esp)
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
	call	_packet_add_request_id
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	16(%eax), %eax
push %eax
pop %eax
	addl	$16, %eax
push %eax
pop %eax
	movl	$16, 12(%esp)
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$262605, 4(%esp)
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_add_tlv_raw
push %eax
pop %eax
	cmpl	$0, 16(%ebp)
push %eax
pop %eax
	je	L208
push %eax
pop %eax
	leal	-24(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$65538, 4(%esp)
push %eax
pop %eax
	movl	12(%ebp), %eax
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
	jne	L208
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	16(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_add_completion_handler
push %eax
pop %eax
L208:
	leal	-32(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 12(%esp)
push %eax
pop %eax
	leal	-28(%ebp), %eax
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
	call	_encrypt_packet
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
	movl	-32(%ebp), %edx
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	$LC25, (%esp)
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
	movl	36(%eax), %eax
push %eax
pop %eax
	movl	-32(%ebp), %ecx
push %eax
pop %eax
	movl	-28(%ebp), %edx
push %eax
pop %eax
	movl	%ecx, 8(%esp)
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
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__SetLastError@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	movl	__imp__GetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	%eax, %ebx
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
	movl	-32(%ebp), %edx
push %eax
pop %eax
	movl	%ebx, 12(%esp)
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	$LC26, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	__imp__GetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L209
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_free
push %eax
pop %eax
L209:
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_destroy
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
L210:
	movl	-4(%ebp), %ebx
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.section .rdata,"dr"
	.align 8
LC5:
	.long	3264175145
	.long	1072703733
	.ident	"GCC: (GNU) 9.3-win32 20200320"
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	_vsnprintf_s;	.scl	2;	.type	32;	.endef
	.def	_lock_acquire;	.scl	2;	.type	32;	.endef
	.def	_lock_release;	.scl	2;	.type	32;	.endef
	.def	_free;	.scl	2;	.type	32;	.endef
	.def	_malloc;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_list_pop;	.scl	2;	.type	32;	.endef
	.def	_list_destroy;	.scl	2;	.type	32;	.endef
	.def	_wcstombs;	.scl	2;	.type	32;	.endef
	.def	_wcslen;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	_compress2;	.scl	2;	.type	32;	.endef
	.def	_realloc;	.scl	2;	.type	32;	.endef
	.def	_mbstowcs;	.scl	2;	.type	32;	.endef
	.def	_calloc;	.scl	2;	.type	32;	.endef
	.def	_uncompress;	.scl	2;	.type	32;	.endef
	.def	_list_create;	.scl	2;	.type	32;	.endef
	.def	_list_push;	.scl	2;	.type	32;	.endef
	.def	_strcmp;	.scl	2;	.type	32;	.endef
	.def	_rand;	.scl	2;	.type	32;	.endef
	.def	_encrypt_packet;	.scl	2;	.type	32;	.endef
