	.file	"core.c"
	.text
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
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$0, -12(%ebp)
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_acquire
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, 12(%ebp)
	jne	L2
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, 12(%ebp)
L2:
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 32(%eax)
	cmpl	$0, -12(%ebp)
	je	L3
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	cmpl	%eax, -12(%ebp)
	je	L3
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	cmpl	%eax, -12(%ebp)
	je	L3
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__CloseHandle@4, %eax
	call	*%eax
	subl	$4, %esp
L3:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_release
	movl	12(%ebp), %eax
	leave
	ret
	.globl	_core_update_desktop
	.def	_core_update_desktop;	.scl	2;	.type	32;	.endef
_core_update_desktop:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$-1, -12(%ebp)
	movl	$0, -16(%ebp)
	movl	$0, -20(%ebp)
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_acquire
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, -12(%ebp)
	cmpl	$-1, 12(%ebp)
	jne	L6
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, 12(%ebp)
L6:
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 40(%eax)
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -16(%ebp)
	cmpl	$0, 16(%ebp)
	jne	L7
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 16(%ebp)
L7:
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp___strdup, %eax
	call	*%eax
	movl	8(%ebp), %edx
	movl	%eax, 48(%edx)
	cmpl	$0, -16(%ebp)
	je	L8
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	%eax, -16(%ebp)
	je	L8
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	cmpl	%eax, -16(%ebp)
	je	L8
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
L8:
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -20(%ebp)
	cmpl	$0, 20(%ebp)
	jne	L9
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, 20(%ebp)
L9:
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp___strdup, %eax
	call	*%eax
	movl	8(%ebp), %edx
	movl	%eax, 56(%edx)
	cmpl	$0, -20(%ebp)
	je	L10
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	cmpl	%eax, -20(%ebp)
	je	L10
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	cmpl	%eax, -20(%ebp)
	je	L10
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
L10:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_release
	nop
	leave
	ret
	.globl	_packet_create
	.def	_packet_create;	.scl	2;	.type	32;	.endef
_packet_create:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$0, -12(%ebp)
	movl	$0, -16(%ebp)
	movl	$52, (%esp)
	call	_malloc
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	L17
	movl	$52, 8(%esp)
	movl	$0, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_memset
	movl	$8, (%esp)
	movl	__imp__htonl@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	-12(%ebp), %edx
	movl	%eax, 24(%edx)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__htonl@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	-12(%ebp), %edx
	movl	%eax, 28(%edx)
	movl	-12(%ebp), %eax
	movl	$0, 32(%eax)
	movl	-12(%ebp), %eax
	movl	$0, 36(%eax)
	cmpl	$0, 12(%ebp)
	je	L14
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$131073, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_uint
	testl	%eax, %eax
	jne	L18
L14:
	movl	$1, -16(%ebp)
	jmp	L13
L17:
	nop
	jmp	L13
L18:
	nop
L13:
	cmpl	$0, -16(%ebp)
	jne	L15
	cmpl	$0, -12(%ebp)
	je	L15
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_destroy
	movl	$0, -12(%ebp)
L15:
	movl	-12(%ebp), %eax
	leave
	ret
	.globl	_packet_create_group
	.def	_packet_create_group;	.scl	2;	.type	32;	.endef
_packet_create_group:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$0, -12(%ebp)
	movl	$52, (%esp)
	call	_malloc
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	L25
	movl	$52, 8(%esp)
	movl	$0, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_memset
	movl	-12(%ebp), %eax
	movl	$0, 32(%eax)
	movl	-12(%ebp), %eax
	movl	$0, 36(%eax)
	movl	-12(%ebp), %eax
	jmp	L22
L25:
	nop
	cmpl	$0, -12(%ebp)
	je	L23
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	$0, -12(%ebp)
L23:
	movl	$0, %eax
L22:
	leave
	ret
	.globl	_packet_add_group
	.def	_packet_add_group;	.scl	2;	.type	32;	.endef
_packet_add_group:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	16(%ebp), %eax
	movl	36(%eax), %edx
	movl	16(%ebp), %eax
	movl	32(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_raw
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jne	L27
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_destroy
	movl	$0, %eax
	jmp	L28
L27:
	movl	-12(%ebp), %eax
L28:
	leave
	ret
	.globl	_packet_create_response
	.def	_packet_create_response;	.scl	2;	.type	32;	.endef
_packet_create_response:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$56, %esp
	movl	$0, -12(%ebp)
	movl	$0, -16(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_type
	cmpl	$10, %eax
	jne	L30
	movl	$11, -20(%ebp)
	jmp	L31
L30:
	movl	$1, -20(%ebp)
L31:
	movl	$131073, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_uint
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	je	L40
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_create
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	L41
	leal	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$65538, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_string
	testl	%eax, %eax
	jne	L42
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$65538, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_string
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	je	L36
	movl	8(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 48(%eax)
	movl	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 48(%eax)
L36:
	movl	$1, -16(%ebp)
	jmp	L33
L40:
	nop
	jmp	L33
L41:
	nop
	jmp	L33
L42:
	nop
L33:
	cmpl	$0, -16(%ebp)
	jne	L37
	cmpl	$0, -12(%ebp)
	je	L38
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_destroy
L38:
	movl	$0, -12(%ebp)
L37:
	movl	-12(%ebp), %eax
	leave
	ret
	.globl	_packet_destroy
	.def	_packet_destroy;	.scl	2;	.type	32;	.endef
_packet_destroy:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	cmpl	$0, 8(%ebp)
	je	L53
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	L46
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	movl	%edx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, (%esp)
	call	_free
L46:
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	je	L47
L51:
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, (%esp)
	call	_list_pop
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	L54
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L50
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_free
L50:
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	jmp	L51
L54:
	nop
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, (%esp)
	call	_list_destroy
L47:
	movl	$52, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_memset
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	jmp	L43
L53:
	nop
L43:
	leave
	ret
	.globl	_packet_add_tlv_string
	.def	_packet_add_tlv_string;	.scl	2;	.type	32;	.endef
_packet_add_tlv_string:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	_strlen
	addl	$1, %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_raw
	leave
	ret
	.globl	_packet_add_tlv_wstring_len
	.def	_packet_add_tlv_wstring_len;	.scl	2;	.type	32;	.endef
_packet_add_tlv_wstring_len:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	20(%ebp), %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	L58
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_wcstombs
	movl	-16(%ebp), %edx
	movl	20(%ebp), %eax
	addl	%edx, %eax
	movb	$0, (%eax)
	movl	20(%ebp), %eax
	addl	$1, %eax
	movl	%eax, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_raw
	movl	%eax, -12(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	jmp	L59
L58:
	movl	$8, -12(%ebp)
L59:
	movl	-12(%ebp), %eax
	leave
	ret
	.globl	_packet_add_tlv_wstring
	.def	_packet_add_tlv_wstring;	.scl	2;	.type	32;	.endef
_packet_add_tlv_wstring:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	_wcslen
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_wstring_len
	leave
	ret
	.globl	_packet_add_tlv_uint
	.def	_packet_add_tlv_uint;	.scl	2;	.type	32;	.endef
_packet_add_tlv_uint:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__htonl@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	%eax, 16(%ebp)
	movl	$4, 12(%esp)
	leal	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_raw
	leave
	ret
	.globl	_packet_add_tlv_qword
	.def	_packet_add_tlv_qword;	.scl	2;	.type	32;	.endef
_packet_add_tlv_qword:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$44, %esp
	movl	16(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, (%esp)
	movl	__imp__ntohl@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	$0, %edx
	movl	%eax, %edx
	movl	$0, %eax
	movl	%eax, %ebx
	movl	%edx, %esi
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, %eax
	xorl	%edx, %edx
	movl	%eax, (%esp)
	movl	__imp__ntohl@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	$0, %edx
	movl	%ebx, %edi
	orl	%eax, %edi
	movl	%edi, -40(%ebp)
	orl	%edx, %esi
	movl	%esi, -36(%ebp)
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	movl	$8, 12(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_raw
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.globl	_packet_add_tlv_bool
	.def	_packet_add_tlv_bool;	.scl	2;	.type	32;	.endef
_packet_add_tlv_bool:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	$1, 12(%esp)
	leal	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_raw
	leave
	ret
	.globl	_packet_add_tlv_group
	.def	_packet_add_tlv_group;	.scl	2;	.type	32;	.endef
_packet_add_tlv_group:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$52, %esp
	movl	$0, -12(%ebp)
	movl	$0, -16(%ebp)
	movl	$0, -20(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -28(%ebp)
	movl	$0, -20(%ebp)
	jmp	L70
L71:
	movl	-20(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	16(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	addl	%edx, %eax
	addl	$8, %eax
	movl	%eax, -12(%ebp)
	addl	$1, -20(%ebp)
L70:
	movl	-20(%ebp), %eax
	cmpl	20(%ebp), %eax
	jb	L71
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	jne	L72
	movl	$8, -24(%ebp)
	jmp	L73
L72:
	movl	$0, -20(%ebp)
	jmp	L74
L75:
	movl	-20(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	16(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	addl	$8, %eax
	movl	%eax, (%esp)
	movl	__imp__htonl@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	%eax, -36(%ebp)
	movl	-20(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	16(%ebp), %eax
	addl	%edx, %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__htonl@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	%eax, -32(%ebp)
	movl	-28(%ebp), %edx
	movl	-16(%ebp), %eax
	leal	(%edx,%eax), %ecx
	movl	-36(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-20(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	16(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %ecx
	movl	-20(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	16(%ebp), %eax
	addl	%edx, %eax
	movl	8(%eax), %eax
	movl	-16(%ebp), %edx
	leal	8(%edx), %ebx
	movl	-28(%ebp), %edx
	addl	%ebx, %edx
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_memcpy
	movl	-20(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	16(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	addl	%edx, %eax
	addl	$8, %eax
	movl	%eax, -16(%ebp)
	addl	$1, -20(%ebp)
L74:
	movl	-20(%ebp), %eax
	cmpl	20(%ebp), %eax
	jb	L75
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_raw
	movl	%eax, -24(%ebp)
L73:
	cmpl	$0, -28(%ebp)
	je	L76
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	$0, -28(%ebp)
L76:
	movl	-24(%ebp), %eax
	movl	-4(%ebp), %ebx
	leave
	ret
	.globl	_packet_add_tlvs
	.def	_packet_add_tlvs;	.scl	2;	.type	32;	.endef
_packet_add_tlvs:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$36, %esp
	movl	$0, -12(%ebp)
	jmp	L79
L80:
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %ebx
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	movl	8(%eax), %ecx
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	movl	4(%eax), %eax
	movl	%ebx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_raw
	addl	$1, -12(%ebp)
L79:
	movl	-12(%ebp), %eax
	cmpl	16(%ebp), %eax
	jb	L80
	movl	$0, %eax
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
	.globl	_packet_add_tlv_raw_compressed
	.def	_packet_add_tlv_raw_compressed;	.scl	2;	.type	32;	.endef
_packet_add_tlv_raw_compressed:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$84, %esp
	movl	$0, -12(%ebp)
	movl	$8, -20(%ebp)
	movl	$0, -16(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -28(%ebp)
	movl	$0, -32(%ebp)
	movl	20(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -56(%ebp)
	movl	$0, -52(%ebp)
	fildq	-56(%ebp)
	fldl	LC0
	fmulp	%st, %st(1)
	fld1
	faddp	%st, %st(1)
	fnstcw	-42(%ebp)
	movzwl	-42(%ebp), %eax
	orb	$12, %ah
	movw	%ax, -44(%ebp)
	fldcw	-44(%ebp)
	fistpq	-56(%ebp)
	fldcw	-42(%ebp)
	movl	-56(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	jne	L83
	movl	$8, -12(%ebp)
	jmp	L84
L83:
	movl	$9, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_compress2
	testl	%eax, %eax
	je	L85
	movl	$618, -12(%ebp)
	jmp	L84
L85:
	movl	-36(%ebp), %edx
	movl	-20(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -28(%ebp)
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	-28(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -32(%ebp)
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	L86
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	movl	-32(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_realloc
	movl	%eax, -16(%ebp)
	jmp	L87
L86:
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, -16(%ebp)
L87:
	cmpl	$0, -16(%ebp)
	jne	L88
	movl	$8, -12(%ebp)
	jmp	L84
L88:
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	-16(%ebp), %eax
	leal	(%edx,%eax), %ebx
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__htonl@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	%eax, (%ebx)
	movl	12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	36(%edx), %ecx
	movl	-16(%ebp), %edx
	addl	%ecx, %edx
	leal	4(%edx), %ebx
	movl	%eax, (%esp)
	movl	__imp__htonl@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	%eax, (%ebx)
	movl	-36(%ebp), %eax
	movl	8(%ebp), %edx
	movl	36(%edx), %ecx
	movl	-20(%ebp), %edx
	addl	%edx, %ecx
	movl	-16(%ebp), %edx
	addl	%ecx, %edx
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_memcpy
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__ntohl@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	-28(%ebp), %edx
	addl	%edx, %eax
	movl	%eax, (%esp)
	movl	__imp__htonl@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	8(%ebp), %edx
	movl	%eax, 24(%edx)
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 32(%eax)
	movl	8(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	%edx, 36(%eax)
	movl	$0, -12(%ebp)
L84:
	cmpl	$0, -24(%ebp)
	je	L89
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	$0, -24(%ebp)
L89:
	movl	-12(%ebp), %eax
	movl	-4(%ebp), %ebx
	leave
	ret
	.globl	_packet_add_tlv_raw
	.def	_packet_add_tlv_raw;	.scl	2;	.type	32;	.endef
_packet_add_tlv_raw:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$36, %esp
	movl	$8, -16(%ebp)
	movl	20(%ebp), %edx
	movl	-16(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -20(%ebp)
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	-20(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -24(%ebp)
	movl	$0, -12(%ebp)
	movl	12(%ebp), %eax
	andl	$536870912, %eax
	testl	%eax, %eax
	je	L92
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_raw_compressed
	jmp	L93
L92:
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	L94
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	movl	-24(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_realloc
	movl	%eax, -12(%ebp)
	jmp	L95
L94:
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, -12(%ebp)
L95:
	cmpl	$0, -12(%ebp)
	jne	L96
	movl	$8, %eax
	jmp	L93
L96:
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	-12(%ebp), %eax
	leal	(%edx,%eax), %ebx
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__htonl@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	%eax, (%ebx)
	movl	12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	36(%edx), %ecx
	movl	-12(%ebp), %edx
	addl	%ecx, %edx
	leal	4(%edx), %ebx
	movl	%eax, (%esp)
	movl	__imp__htonl@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	%eax, (%ebx)
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	-16(%ebp), %eax
	addl	%eax, %edx
	movl	-12(%ebp), %eax
	addl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_memcpy
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__ntohl@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	-20(%ebp), %edx
	addl	%edx, %eax
	movl	%eax, (%esp)
	movl	__imp__htonl@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	8(%ebp), %edx
	movl	%eax, 24(%edx)
	movl	8(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 32(%eax)
	movl	8(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, 36(%eax)
	movl	$0, %eax
L93:
	movl	-4(%ebp), %ebx
	leave
	ret
	.globl	_packet_is_tlv_null_terminated
	.def	_packet_is_tlv_null_terminated;	.scl	2;	.type	32;	.endef
_packet_is_tlv_null_terminated:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L98
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	L98
	movl	$1168, %eax
	jmp	L99
L98:
	movl	$0, %eax
L99:
	popl	%ebp
	ret
	.globl	_packet_get_type
	.def	_packet_get_type;	.scl	2;	.type	32;	.endef
_packet_get_type:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__ntohl@4, %eax
	call	*%eax
	subl	$4, %esp
	leave
	ret
	.globl	_packet_get_tlv_meta
	.def	_packet_get_tlv_meta;	.scl	2;	.type	32;	.endef
_packet_get_tlv_meta:
	pushl	%ebp
	movl	%esp, %ebp
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movw	$0, %ax
	popl	%ebp
	ret
	.globl	_packet_get_tlv
	.def	_packet_get_tlv;	.scl	2;	.type	32;	.endef
_packet_get_tlv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_enum_tlv
	leave
	ret
	.globl	_packet_get_tlv_string
	.def	_packet_get_tlv_string;	.scl	2;	.type	32;	.endef
_packet_get_tlv_string:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jne	L107
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_is_tlv_null_terminated
	movl	%eax, -12(%ebp)
L107:
	movl	-12(%ebp), %eax
	leave
	ret
	.globl	_packet_get_tlv_group_entry
	.def	_packet_get_tlv_group_entry;	.scl	2;	.type	32;	.endef
_packet_get_tlv_group_entry:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	20(%ebp), %ecx
	movl	%ecx, 20(%esp)
	movl	16(%ebp), %ecx
	movl	%ecx, 16(%esp)
	movl	$0, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_find_tlv_buf
	leave
	ret
	.globl	_packet_enum_tlv
	.def	_packet_enum_tlv;	.scl	2;	.type	32;	.endef
_packet_enum_tlv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	movl	20(%ebp), %ecx
	movl	%ecx, 20(%esp)
	movl	16(%ebp), %ecx
	movl	%ecx, 16(%esp)
	movl	12(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_find_tlv_buf
	leave
	ret
	.globl	_packet_get_tlv_value_string
	.def	_packet_get_tlv_value_string;	.scl	2;	.type	32;	.endef
_packet_get_tlv_value_string:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$0, -12(%ebp)
	leal	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_string
	testl	%eax, %eax
	jne	L114
	movl	-16(%ebp), %eax
	movl	%eax, -12(%ebp)
L114:
	movl	-12(%ebp), %eax
	leave
	ret
	.globl	_packet_get_tlv_value_reflective_loader
	.def	_packet_get_tlv_value_reflective_loader;	.scl	2;	.type	32;	.endef
_packet_get_tlv_value_reflective_loader:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$65948, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_string
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jne	L117
	movl	$131485, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_uint
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	L118
	movl	-16(%ebp), %eax
	movzwl	%ax, %eax
	jmp	L119
L118:
	movl	$1, %eax
L119:
	movl	%eax, -12(%ebp)
L117:
	movl	-12(%ebp), %eax
	leave
	ret
	.globl	_packet_get_tlv_value_wstring
	.def	_packet_get_tlv_value_wstring;	.scl	2;	.type	32;	.endef
_packet_get_tlv_value_wstring:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$0, -12(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_string
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	L122
	movl	$0, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	_mbstowcs
	addl	$1, %eax
	movl	%eax, -20(%ebp)
	movl	$2, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_calloc
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	L122
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_mbstowcs
L122:
	movl	-12(%ebp), %eax
	leave
	ret
	.globl	_packet_get_tlv_value_uint
	.def	_packet_get_tlv_value_uint;	.scl	2;	.type	32;	.endef
_packet_get_tlv_value_uint:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	leal	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv
	testl	%eax, %eax
	jne	L125
	movl	-20(%ebp), %eax
	cmpl	$3, %eax
	ja	L126
L125:
	movl	$0, %eax
	jmp	L128
L126:
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__ntohl@4, %eax
	call	*%eax
	subl	$4, %esp
L128:
	leave
	ret
	.globl	_packet_get_tlv_value_raw
	.def	_packet_get_tlv_value_raw;	.scl	2;	.type	32;	.endef
_packet_get_tlv_value_raw:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	leal	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv
	testl	%eax, %eax
	je	L130
	movl	$0, %eax
	jmp	L132
L130:
	movl	-20(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	movl	-12(%ebp), %eax
L132:
	leave
	ret
	.globl	_packet_get_tlv_value_qword
	.def	_packet_get_tlv_value_qword;	.scl	2;	.type	32;	.endef
_packet_get_tlv_value_qword:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$60, %esp
	leal	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv
	testl	%eax, %eax
	jne	L134
	movl	-36(%ebp), %eax
	cmpl	$7, %eax
	ja	L135
L134:
	movl	$0, -48(%ebp)
	movl	$0, -44(%ebp)
	jmp	L137
L135:
	movl	-28(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__ntohl@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	$0, %edx
	movl	%eax, %edx
	movl	$0, %eax
	movl	%eax, %esi
	movl	%edx, %edi
	movl	-28(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%edx, %eax
	xorl	%edx, %edx
	movl	%eax, (%esp)
	movl	__imp__ntohl@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	$0, %edx
	movl	%esi, %ecx
	movl	%edi, %ebx
	movl	%ecx, %edi
	orl	%eax, %edi
	movl	%edi, -48(%ebp)
	movl	%ebx, %edi
	orl	%edx, %edi
	movl	%edi, -44(%ebp)
L137:
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.globl	_packet_get_tlv_value_bool
	.def	_packet_get_tlv_value_bool;	.scl	2;	.type	32;	.endef
_packet_get_tlv_value_bool:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$0, -12(%ebp)
	leal	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv
	testl	%eax, %eax
	jne	L139
	movl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	movl	%eax, -12(%ebp)
L139:
	movl	-12(%ebp), %eax
	leave
	ret
	.globl	_packet_add_exception
	.def	_packet_add_exception;	.scl	2;	.type	32;	.endef
_packet_add_exception:
	pushl	%ebp
	movl	%esp, %ebp
	movl	$8248, %eax
	call	___chkstk_ms
	subl	%eax, %esp
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__htonl@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	%eax, -12(%ebp)
	movb	$0, -13(%ebp)
	leal	20(%ebp), %eax
	movl	%eax, -8232(%ebp)
	movl	-8232(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$8191, 4(%esp)
	leal	-8204(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp___vsnprintf, %eax
	call	*%eax
	movl	$131372, -8224(%ebp)
	movl	$4, -8228(%ebp)
	leal	-12(%ebp), %eax
	movl	%eax, -8220(%ebp)
	movl	$65837, -8212(%ebp)
	leal	-8204(%ebp), %eax
	movl	%eax, (%esp)
	call	_strlen
	addl	$1, %eax
	movl	%eax, -8216(%ebp)
	leal	-8204(%ebp), %eax
	movl	%eax, -8208(%ebp)
	movl	$2, 12(%esp)
	leal	-8228(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1073741827, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_group
	leave
	ret
	.globl	_packet_find_tlv_buf
	.def	_packet_find_tlv_buf;	.scl	2;	.type	32;	.endef
_packet_find_tlv_buf:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$52, %esp
	movl	$0, -12(%ebp)
	movl	$0, -16(%ebp)
	movl	$0, -32(%ebp)
	movl	$0, -20(%ebp)
	movl	$12, 8(%esp)
	movl	$0, 4(%esp)
	movl	28(%ebp), %eax
	movl	%eax, (%esp)
	call	_memset
	movl	12(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	$0, -32(%ebp)
	jmp	L144
L159:
	movl	-24(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	$0, -28(%ebp)
	movl	-24(%ebp), %eax
	leal	8(%eax), %ecx
	movl	12(%ebp), %edx
	movl	16(%ebp), %eax
	addl	%edx, %eax
	cmpl	%eax, %ecx
	ja	L145
	movl	-24(%ebp), %eax
	cmpl	12(%ebp), %eax
	jb	L145
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__ntohl@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	%eax, -32(%ebp)
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__ntohl@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	andl	$536870912, %eax
	testl	%eax, %eax
	je	L146
	xorl	$536870912, -28(%ebp)
L146:
	movl	-28(%ebp), %eax
	cmpl	24(%ebp), %eax
	je	L147
	cmpl	$0, 24(%ebp)
	jne	L163
L147:
	movl	-12(%ebp), %eax
	cmpl	20(%ebp), %eax
	je	L149
	addl	$1, -12(%ebp)
	jmp	L148
L149:
	movl	-24(%ebp), %edx
	movl	-32(%ebp), %eax
	leal	(%edx,%eax), %ecx
	movl	12(%ebp), %edx
	movl	16(%ebp), %eax
	addl	%edx, %eax
	cmpl	%eax, %ecx
	ja	L145
	movl	-24(%ebp), %eax
	cmpl	12(%ebp), %eax
	jb	L145
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__ntohl@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	28(%ebp), %edx
	movl	%eax, 4(%edx)
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__ntohl@4, %eax
	call	*%eax
	subl	$4, %esp
	leal	-8(%eax), %edx
	movl	28(%ebp), %eax
	movl	%edx, (%eax)
	movl	-16(%ebp), %eax
	leal	8(%eax), %edx
	movl	12(%ebp), %eax
	addl	%eax, %edx
	movl	28(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	28(%ebp), %eax
	movl	4(%eax), %eax
	andl	$536870912, %eax
	testl	%eax, %eax
	je	L150
	movl	$0, -40(%ebp)
	movl	$8, (%esp)
	call	_malloc
	movl	%eax, -40(%ebp)
	cmpl	$0, -40(%ebp)
	je	L164
	movl	28(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__ntohl@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	-40(%ebp), %edx
	movl	%eax, 4(%edx)
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	L165
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, %edx
	movl	-40(%ebp), %eax
	movl	%edx, (%eax)
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L166
	movl	28(%ebp), %eax
	movl	(%eax), %eax
	leal	-4(%eax), %edx
	movl	28(%ebp), %eax
	movl	%edx, (%eax)
	movl	28(%ebp), %eax
	movl	8(%eax), %eax
	leal	4(%eax), %edx
	movl	28(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	28(%ebp), %eax
	movl	(%eax), %ecx
	movl	28(%ebp), %eax
	movl	8(%eax), %edx
	movl	-40(%ebp), %eax
	leal	4(%eax), %ebx
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	_uncompress
	testl	%eax, %eax
	jne	L167
	movl	28(%ebp), %eax
	movl	4(%eax), %eax
	xorl	$536870912, %eax
	movl	%eax, %edx
	movl	28(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	-40(%ebp), %eax
	movl	4(%eax), %edx
	movl	28(%ebp), %eax
	movl	%edx, (%eax)
	movl	-40(%ebp), %eax
	movl	(%eax), %edx
	movl	28(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	jne	L156
	call	_list_create
	movl	8(%ebp), %edx
	movl	%eax, 40(%edx)
L156:
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	je	L168
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	movl	-40(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_list_push
	movl	$1, -20(%ebp)
	jmp	L152
L164:
	nop
	jmp	L152
L165:
	nop
	jmp	L152
L166:
	nop
	jmp	L152
L167:
	nop
	jmp	L152
L168:
	nop
L152:
	cmpl	$0, -20(%ebp)
	jne	L148
	cmpl	$0, -40(%ebp)
	je	L148
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L158
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_free
	movl	-40(%ebp), %eax
	movl	$0, (%eax)
L158:
	cmpl	$0, -40(%ebp)
	je	L148
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	$0, -40(%ebp)
	jmp	L148
L150:
	movl	$1, -20(%ebp)
	jmp	L148
L163:
	nop
L148:
	movl	-32(%ebp), %eax
	addl	%eax, -16(%ebp)
	movl	-32(%ebp), %eax
	addl	%eax, -24(%ebp)
L144:
	cmpl	$0, -20(%ebp)
	jne	L145
	cmpl	$0, -24(%ebp)
	jne	L159
L145:
	cmpl	$0, -20(%ebp)
	je	L160
	movl	$0, %eax
	jmp	L162
L160:
	movl	$1168, %eax
L162:
	movl	-4(%ebp), %ebx
	leave
	ret
	.globl	_packet_add_completion_handler
	.def	_packet_add_completion_handler;	.scl	2;	.type	32;	.endef
_packet_add_completion_handler:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$0, -12(%ebp)
	movl	$20, (%esp)
	call	_malloc
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jne	L170
	movl	$8, -12(%ebp)
	jmp	L171
L170:
	movl	-16(%ebp), %eax
	leal	4(%eax), %edx
	movl	$12, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_memcpy
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp___strdup, %eax
	call	*%eax
	movl	-16(%ebp), %edx
	movl	%eax, (%edx)
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L172
	movl	$8, -12(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	jmp	L171
L172:
	movl	_packetCompletionRoutineList, %edx
	movl	-16(%ebp), %eax
	movl	%edx, 16(%eax)
	movl	-16(%ebp), %eax
	movl	%eax, _packetCompletionRoutineList
L171:
	movl	-12(%ebp), %eax
	leave
	ret
	.globl	_packet_call_completion_handlers
	.def	_packet_call_completion_handlers;	.scl	2;	.type	32;	.endef
_packet_call_completion_handlers:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$56, %esp
	movl	$131076, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_uint
	movl	%eax, -20(%ebp)
	movl	$0, -16(%ebp)
	movl	$131073, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_uint
	movl	%eax, -24(%ebp)
	movl	_packetCompletionRoutineList, %eax
	movl	%eax, -12(%ebp)
	jmp	L175
L178:
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L183
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	-12(%ebp), %edx
	movl	4(%edx), %edx
	movl	-20(%ebp), %ecx
	movl	%ecx, 16(%esp)
	movl	-24(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	addl	$1, -16(%ebp)
	jmp	L177
L183:
	nop
L177:
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
L175:
	cmpl	$0, -12(%ebp)
	jne	L178
	cmpl	$0, -16(%ebp)
	je	L179
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_remove_completion_handler
L179:
	cmpl	$0, -16(%ebp)
	je	L180
	movl	$0, %eax
	jmp	L182
L180:
	movl	$1168, %eax
L182:
	leave
	ret
	.globl	_packet_remove_completion_handler
	.def	_packet_remove_completion_handler;	.scl	2;	.type	32;	.endef
_packet_remove_completion_handler:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	_packetCompletionRoutineList, %eax
	movl	%eax, -12(%ebp)
	movl	$0, -20(%ebp)
	movl	$0, -16(%ebp)
	jmp	L185
L190:
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L192
	cmpl	$0, -16(%ebp)
	je	L188
	movl	-16(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, 16(%eax)
	jmp	L189
L188:
	movl	-20(%ebp), %eax
	movl	%eax, _packetCompletionRoutineList
L189:
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_free
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	jmp	L187
L192:
	nop
L187:
	movl	-12(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, -12(%ebp)
L185:
	cmpl	$0, -12(%ebp)
	jne	L190
	movl	$0, %eax
	leave
	ret
	.globl	_packet_transmit_empty_response
	.def	_packet_transmit_empty_response;	.scl	2;	.type	32;	.endef
_packet_transmit_empty_response:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_create_response
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jne	L194
	movl	$8, %eax
	jmp	L195
L194:
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_transmit_response
L195:
	leave
	ret
	.globl	_packet_transmit_response
	.def	_packet_transmit_response;	.scl	2;	.type	32;	.endef
_packet_transmit_response:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	cmpl	$0, 16(%ebp)
	je	L197
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$131076, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_uint
	movl	$0, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_transmit
	jmp	L198
L197:
	movl	$8, %eax
L198:
	leave
	ret
	.globl	_packet_add_request_id
	.def	_packet_add_request_id;	.scl	2;	.type	32;	.endef
_packet_add_request_id:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$72, %esp
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	movl	$0, -16(%ebp)
	leal	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$65538, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_string
	testl	%eax, %eax
	je	L200
	movb	$0, -25(%ebp)
	movl	$0, -12(%ebp)
	jmp	L201
L202:
	call	_rand
	movl	%eax, %ecx
	movl	$-1370734243, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%edx,%ecx), %eax
	sarl	$6, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	imull	$94, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	$33, %eax
	movl	%eax, %ecx
	leal	-56(%ebp), %edx
	movl	-12(%ebp), %eax
	addl	%edx, %eax
	movb	%cl, (%eax)
	addl	$1, -12(%ebp)
L201:
	cmpl	$30, -12(%ebp)
	jbe	L202
	leal	-56(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$65538, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_string
L200:
	movl	$0, %eax
	leave
	ret
	.globl	_packet_transmit
	.def	_packet_transmit;	.scl	2;	.type	32;	.endef
_packet_transmit:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$56, %esp
	movl	12(%ebp), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	je	L205
	movl	12(%ebp), %eax
	movl	48(%eax), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	je	L205
	movl	$0, %eax
	jmp	L209
L205:
	movl	$0, -28(%ebp)
	movl	$0, -32(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_request_id
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	addl	$16, %eax
	movl	$16, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$262605, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_raw
	cmpl	$0, 16(%ebp)
	je	L207
	leal	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$65538, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_string
	testl	%eax, %eax
	jne	L207
	movl	-16(%ebp), %eax
	movl	16(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_packet_add_completion_handler
L207:
	leal	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_encrypt_packet
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	36(%eax), %eax
	movl	-32(%ebp), %ecx
	movl	-28(%ebp), %edx
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	%eax, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	movl	-28(%ebp), %eax
	testl	%eax, %eax
	je	L208
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
L208:
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_destroy
	movl	-12(%ebp), %eax
L209:
	leave
	ret
	.section .rdata,"dr"
	.align 8
LC0:
	.long	3264175145
	.long	1072703733
	.ident	"GCC: (GNU) 9.3-win32 20200320"
	.def	_lock_acquire;	.scl	2;	.type	32;	.endef
	.def	_lock_release;	.scl	2;	.type	32;	.endef
	.def	_free;	.scl	2;	.type	32;	.endef
	.def	_malloc;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_list_pop;	.scl	2;	.type	32;	.endef
	.def	_list_destroy;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
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
