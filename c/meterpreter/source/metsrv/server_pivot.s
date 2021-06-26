	.file	"server_pivot.c"
	.text
	.globl	_request_core_pivot_add
	.def	_request_core_pivot_add;	.scl	2;	.type	32;	.endef
_request_core_pivot_add:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_request_core_pivot_add_named_pipe
	leave
	ret
	.globl	_request_core_pivot_remove
	.def	_request_core_pivot_remove;	.scl	2;	.type	32;	.endef
_request_core_pivot_remove:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$1168, -12(%ebp)
	movl	$0, -24(%ebp)
	leal	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$262794, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_raw
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	L4
	movl	8(%ebp), %eax
	movl	84(%eax), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_pivot_tree_remove
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	L4
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	-20(%ebp), %edx
	movl	8(%edx), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	$0, -12(%ebp)
L4:
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
	.ident	"GCC: (GNU) 9.3-win32 20200320"
	.def	_request_core_pivot_add_named_pipe;	.scl	2;	.type	32;	.endef
	.def	_packet_get_tlv_value_raw;	.scl	2;	.type	32;	.endef
	.def	_pivot_tree_remove;	.scl	2;	.type	32;	.endef
	.def	_free;	.scl	2;	.type	32;	.endef
	.def	_packet_transmit_empty_response;	.scl	2;	.type	32;	.endef
