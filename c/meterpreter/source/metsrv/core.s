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
	jne	L3
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, 12(%ebp)
L3:
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 32(%eax)
	cmpl	$0, -12(%ebp)
	je	L4
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	cmpl	%eax, -12(%ebp)
	je	L4
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	cmpl	%eax, -12(%ebp)
	je	L4
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__CloseHandle@4, %eax
	call	*%eax
	subl	$4, %esp
L4:
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
	jne	L7
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, 12(%ebp)
L7:
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 40(%eax)
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -16(%ebp)
	cmpl	$0, 16(%ebp)
	jne	L8
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 16(%ebp)
L8:
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp___strdup, %eax
	call	*%eax
	movl	8(%ebp), %edx
	movl	%eax, 48(%edx)
	cmpl	$0, -16(%ebp)
	je	L9
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	%eax, -16(%ebp)
	je	L9
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	cmpl	%eax, -16(%ebp)
	je	L9
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
L9:
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -20(%ebp)
	cmpl	$0, 20(%ebp)
	jne	L10
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, 20(%ebp)
L10:
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp___strdup, %eax
	call	*%eax
	movl	8(%ebp), %edx
	movl	%eax, 56(%edx)
	cmpl	$0, -20(%ebp)
	je	L11
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	cmpl	%eax, -20(%ebp)
	je	L11
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	cmpl	%eax, -20(%ebp)
	je	L11
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
L11:
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
	je	L18
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
	je	L15
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$131073, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_uint
	testl	%eax, %eax
	jne	L19
L15:
	movl	$1, -16(%ebp)
	jmp	L14
L18:
	nop
	jmp	L14
L19:
	nop
L14:
	cmpl	$0, -16(%ebp)
	jne	L16
	cmpl	$0, -12(%ebp)
	je	L16
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_destroy
	movl	$0, -12(%ebp)
L16:
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
	je	L26
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
	jmp	L23
L26:
	nop
	cmpl	$0, -12(%ebp)
	je	L24
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	$0, -12(%ebp)
L24:
	movl	$0, %eax
L23:
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
	jne	L28
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_destroy
	movl	$0, %eax
	jmp	L29
L28:
	movl	-12(%ebp), %eax
L29:
	leave
	ret
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
	movl	%esp, %ebp
	subl	$56, %esp
	movl	$0, -12(%ebp)
	movl	$0, -16(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_type
	cmpl	$10, %eax
	jne	L31
	movl	$11, -20(%ebp)
	jmp	L32
L31:
	movl	$1, -20(%ebp)
L32:
	movl	$131073, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_uint
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	jne	L33
	movl	$LC2, (%esp)
	call	_real_dprintf
	jmp	L34
L33:
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_create
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jne	L35
	movl	$LC3, (%esp)
	call	_real_dprintf
	jmp	L34
L35:
	leal	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$65538, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_string
	testl	%eax, %eax
	je	L36
	movl	$LC4, (%esp)
	call	_real_dprintf
	jmp	L34
L36:
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$65538, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_string
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	je	L37
	movl	8(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 48(%eax)
	movl	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 48(%eax)
L37:
	movl	$1, -16(%ebp)
L34:
	cmpl	$0, -16(%ebp)
	jne	L38
	cmpl	$0, -12(%ebp)
	je	L39
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_destroy
L39:
	movl	$0, -12(%ebp)
L38:
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
	je	L51
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	L44
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
L44:
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	je	L45
L49:
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, (%esp)
	call	_list_pop
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	L52
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L48
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
L48:
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	jmp	L49
L52:
	nop
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, (%esp)
	call	_list_destroy
L45:
	movl	$52, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_memset
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	jmp	L41
L51:
	nop
L41:
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
	je	L56
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
	jmp	L57
L56:
	movl	$8, -12(%ebp)
L57:
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
	jmp	L68
L69:
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
L68:
	movl	-20(%ebp), %eax
	cmpl	20(%ebp), %eax
	jb	L69
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	jne	L70
	movl	$8, -24(%ebp)
	jmp	L71
L70:
	movl	$0, -20(%ebp)
	jmp	L72
L73:
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
L72:
	movl	-20(%ebp), %eax
	cmpl	20(%ebp), %eax
	jb	L73
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
L71:
	cmpl	$0, -28(%ebp)
	je	L74
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	$0, -28(%ebp)
L74:
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
	jmp	L77
L78:
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
L77:
	movl	-12(%ebp), %eax
	cmpl	16(%ebp), %eax
	jb	L78
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
	fldl	LC5
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
	jne	L81
	movl	$8, -12(%ebp)
	jmp	L82
L81:
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
	je	L83
	movl	$618, -12(%ebp)
	jmp	L82
L83:
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
	je	L84
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	movl	-32(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_realloc
	movl	%eax, -16(%ebp)
	jmp	L85
L84:
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, -16(%ebp)
L85:
	cmpl	$0, -16(%ebp)
	jne	L86
	movl	$8, -12(%ebp)
	jmp	L82
L86:
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
L82:
	cmpl	$0, -24(%ebp)
	je	L87
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	$0, -24(%ebp)
L87:
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
	je	L90
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_raw_compressed
	jmp	L91
L90:
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	L92
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	movl	-24(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_realloc
	movl	%eax, -12(%ebp)
	jmp	L93
L92:
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, -12(%ebp)
L93:
	cmpl	$0, -12(%ebp)
	jne	L94
	movl	$8, %eax
	jmp	L91
L94:
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
L91:
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
	je	L96
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	L96
	movl	$1168, %eax
	jmp	L97
L96:
	movl	$0, %eax
L97:
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
	jne	L105
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_is_tlv_null_terminated
	movl	%eax, -12(%ebp)
L105:
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
	jne	L112
	movl	-16(%ebp), %eax
	movl	%eax, -12(%ebp)
L112:
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
	jne	L115
	movl	$131485, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_uint
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	L116
	movl	-16(%ebp), %eax
	movzwl	%ax, %eax
	jmp	L117
L116:
	movl	$1, %eax
L117:
	movl	%eax, -12(%ebp)
L115:
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
	je	L120
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
	je	L120
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_mbstowcs
L120:
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
	jne	L123
	movl	-20(%ebp), %eax
	cmpl	$3, %eax
	ja	L124
L123:
	movl	$0, %eax
	jmp	L126
L124:
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__ntohl@4, %eax
	call	*%eax
	subl	$4, %esp
L126:
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
	je	L128
	movl	$0, %eax
	jmp	L130
L128:
	movl	-20(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	movl	-12(%ebp), %eax
L130:
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
	jne	L132
	movl	-36(%ebp), %eax
	cmpl	$7, %eax
	ja	L133
L132:
	movl	$0, -48(%ebp)
	movl	$0, -44(%ebp)
	jmp	L135
L133:
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
L135:
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
	jne	L137
	movl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	movl	%eax, -12(%ebp)
L137:
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
	movl	%esp, %ebp
	pushl	%ebx
	subl	$52, %esp
	movl	$0, -12(%ebp)
	movl	$0, -16(%ebp)
	movl	$0, -32(%ebp)
	movl	$0, -20(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC8, (%esp)
	call	_real_dprintf
	movl	$12, 8(%esp)
	movl	$0, 4(%esp)
	movl	28(%ebp), %eax
	movl	%eax, (%esp)
	call	_memset
	movl	12(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	$0, -32(%ebp)
	jmp	L142
L161:
	movl	-24(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	$0, -28(%ebp)
	movl	-24(%ebp), %eax
	leal	8(%eax), %ecx
	movl	12(%ebp), %edx
	movl	16(%ebp), %eax
	addl	%edx, %eax
	cmpl	%eax, %ecx
	ja	L143
	movl	-24(%ebp), %eax
	cmpl	12(%ebp), %eax
	jnb	L144
L143:
	movl	$LC9, (%esp)
	call	_real_dprintf
	jmp	L145
L144:
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__ntohl@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC10, (%esp)
	call	_real_dprintf
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__ntohl@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC11, (%esp)
	call	_real_dprintf
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
	je	L147
	movl	$LC12, (%esp)
	call	_real_dprintf
	jmp	L148
L147:
	movl	-12(%ebp), %eax
	cmpl	20(%ebp), %eax
	je	L149
	movl	$LC13, (%esp)
	call	_real_dprintf
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
	ja	L150
	movl	-24(%ebp), %eax
	cmpl	12(%ebp), %eax
	jnb	L151
L150:
	movl	$LC14, (%esp)
	call	_real_dprintf
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC15, (%esp)
	call	_real_dprintf
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC16, (%esp)
	call	_real_dprintf
	movl	-24(%ebp), %edx
	movl	-32(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, 4(%esp)
	movl	$LC17, (%esp)
	call	_real_dprintf
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC18, (%esp)
	call	_real_dprintf
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC19, (%esp)
	call	_real_dprintf
	movl	12(%ebp), %edx
	movl	16(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, 4(%esp)
	movl	$LC20, (%esp)
	call	_real_dprintf
	movl	-24(%ebp), %edx
	movl	-32(%ebp), %eax
	leal	(%edx,%eax), %ecx
	movl	12(%ebp), %edx
	movl	16(%ebp), %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, 4(%esp)
	movl	$LC21, (%esp)
	call	_real_dprintf
	jmp	L145
L151:
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
	movl	$LC22, (%esp)
	call	_real_dprintf
	movl	28(%ebp), %eax
	movl	4(%eax), %eax
	andl	$536870912, %eax
	testl	%eax, %eax
	je	L152
	movl	$0, -40(%ebp)
	movl	$8, (%esp)
	call	_malloc
	movl	%eax, -40(%ebp)
	cmpl	$0, -40(%ebp)
	je	L165
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
	je	L166
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
	je	L167
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
	jne	L168
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
	jne	L158
	call	_list_create
	movl	8(%ebp), %edx
	movl	%eax, 40(%edx)
L158:
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	je	L169
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	movl	-40(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_list_push
	movl	$1, -20(%ebp)
	jmp	L154
L165:
	nop
	jmp	L154
L166:
	nop
	jmp	L154
L167:
	nop
	jmp	L154
L168:
	nop
	jmp	L154
L169:
	nop
L154:
	cmpl	$0, -20(%ebp)
	jne	L148
	cmpl	$0, -40(%ebp)
	je	L148
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L160
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_free
	movl	-40(%ebp), %eax
	movl	$0, (%eax)
L160:
	cmpl	$0, -40(%ebp)
	je	L148
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	$0, -40(%ebp)
	jmp	L148
L152:
	movl	$1, -20(%ebp)
L148:
	movl	-32(%ebp), %eax
	addl	%eax, -16(%ebp)
	movl	-32(%ebp), %eax
	addl	%eax, -24(%ebp)
L142:
	cmpl	$0, -20(%ebp)
	jne	L145
	cmpl	$0, -24(%ebp)
	jne	L161
L145:
	cmpl	$0, -20(%ebp)
	je	L162
	movl	$0, %eax
	jmp	L164
L162:
	movl	$1168, %eax
L164:
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
	jne	L171
	movl	$8, -12(%ebp)
	jmp	L172
L171:
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
	jne	L173
	movl	$8, -12(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	jmp	L172
L173:
	movl	_packetCompletionRoutineList, %edx
	movl	-16(%ebp), %eax
	movl	%edx, 16(%eax)
	movl	-16(%ebp), %eax
	movl	%eax, _packetCompletionRoutineList
L172:
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
	jmp	L176
L179:
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L184
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
	jmp	L178
L184:
	nop
L178:
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
L176:
	cmpl	$0, -12(%ebp)
	jne	L179
	cmpl	$0, -16(%ebp)
	je	L180
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_remove_completion_handler
L180:
	cmpl	$0, -16(%ebp)
	je	L181
	movl	$0, %eax
	jmp	L183
L181:
	movl	$1168, %eax
L183:
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
	jmp	L186
L191:
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
	jne	L193
	cmpl	$0, -16(%ebp)
	je	L189
	movl	-16(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, 16(%eax)
	jmp	L190
L189:
	movl	-20(%ebp), %eax
	movl	%eax, _packetCompletionRoutineList
L190:
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_free
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	jmp	L188
L193:
	nop
L188:
	movl	-12(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, -12(%ebp)
L186:
	cmpl	$0, -12(%ebp)
	jne	L191
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
	jne	L195
	movl	$8, %eax
	jmp	L196
L195:
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_transmit_response
L196:
	leave
	ret
	.globl	_packet_transmit_response
	.def	_packet_transmit_response;	.scl	2;	.type	32;	.endef
_packet_transmit_response:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	cmpl	$0, 16(%ebp)
	je	L198
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
	jmp	L199
L198:
	movl	$8, %eax
L199:
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
	je	L201
	movb	$0, -25(%ebp)
	movl	$0, -12(%ebp)
	jmp	L202
L203:
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
L202:
	cmpl	$30, -12(%ebp)
	jbe	L203
	leal	-56(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$65538, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_string
L201:
	movl	$0, %eax
	leave
	ret
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
	movl	%esp, %ebp
	pushl	%ebx
	subl	$52, %esp
	movl	12(%ebp), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	je	L206
	movl	12(%ebp), %eax
	movl	48(%eax), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	je	L206
	movl	$LC23, (%esp)
	call	_real_dprintf
	movl	$0, %eax
	jmp	L210
L206:
	movl	$0, -28(%ebp)
	movl	$0, -32(%ebp)
	movl	$LC24, (%esp)
	call	_real_dprintf
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
	je	L208
	leal	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$65538, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_string
	testl	%eax, %eax
	jne	L208
	movl	-16(%ebp), %eax
	movl	16(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_packet_add_completion_handler
L208:
	leal	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_encrypt_packet
	movl	$131073, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_uint
	movl	-32(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$LC25, (%esp)
	call	_real_dprintf
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
	movl	%eax, %ebx
	movl	$131073, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_uint
	movl	-32(%ebp), %edx
	movl	%ebx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$LC26, (%esp)
	call	_real_dprintf
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	movl	-28(%ebp), %eax
	testl	%eax, %eax
	je	L209
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
L209:
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_destroy
	movl	-12(%ebp), %eax
L210:
	movl	-4(%ebp), %ebx
	leave
	ret
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
