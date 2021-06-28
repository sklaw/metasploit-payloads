	.file	"server_pivot.c"
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
	.globl	_request_core_pivot_add
	.def	_request_core_pivot_add;	.scl	2;	.type	32;	.endef
_request_core_pivot_add:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$24, %esp
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
	call	_request_core_pivot_add_named_pipe
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
	.ascii "[PIVOTTREE] Pivot listeners (after one removed)\0"
	.text
	.globl	_request_core_pivot_remove
	.def	_request_core_pivot_remove;	.scl	2;	.type	32;	.endef
_request_core_pivot_remove:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$40, %esp
push %eax
pop %eax
	movl	$1168, -12(%ebp)
push %eax
pop %eax
	movl	$0, -24(%ebp)
push %eax
pop %eax
	leal	-24(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$262794, 4(%esp)
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_get_tlv_value_raw
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
	cmpl	$0, -16(%ebp)
push %eax
pop %eax
	je	L5
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	84(%eax), %eax
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
	call	_pivot_tree_remove
push %eax
pop %eax
	movl	%eax, -20(%ebp)
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
	movl	84(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_dbgprint_pivot_tree
push %eax
pop %eax
	cmpl	$0, -20(%ebp)
push %eax
pop %eax
	je	L5
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	movl	-20(%ebp), %edx
push %eax
pop %eax
	movl	8(%edx), %edx
push %eax
pop %eax
	movl	%edx, (%esp)
push %eax
pop %eax
	call	*%eax
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
	movl	$0, -12(%ebp)
push %eax
pop %eax
L5:
	movl	-12(%ebp), %eax
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
	call	_packet_transmit_empty_response
push %eax
pop %eax
	movl	-12(%ebp), %eax
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
	.def	_request_core_pivot_add_named_pipe;	.scl	2;	.type	32;	.endef
	.def	_packet_get_tlv_value_raw;	.scl	2;	.type	32;	.endef
	.def	_pivot_tree_remove;	.scl	2;	.type	32;	.endef
	.def	_dbgprint_pivot_tree;	.scl	2;	.type	32;	.endef
	.def	_free;	.scl	2;	.type	32;	.endef
	.def	_packet_transmit_empty_response;	.scl	2;	.type	32;	.endef
