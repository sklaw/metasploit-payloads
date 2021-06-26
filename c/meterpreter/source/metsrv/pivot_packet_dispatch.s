	.file	"pivot_packet_dispatch.c"
	.text
	.globl	_pivot_packet_dispatch_thread@4
	.def	_pivot_packet_dispatch_thread@4;	.scl	2;	.type	32;	.endef
_pivot_packet_dispatch_thread@4:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	-12(%ebp), %edx
	movl	8(%edx), %edx
	movl	-20(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	-16(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
	movl	%eax, -24(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_thread_destroy
	movl	-24(%ebp), %eax
	leave
	ret	$4
	.globl	_pivot_packet_dispatch
	.def	_pivot_packet_dispatch;	.scl	2;	.type	32;	.endef
_pivot_packet_dispatch:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$_pivot_packet_dispatch_thread@4, (%esp)
	call	_thread_create
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	L4
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_thread_run
	movl	$0, %eax
	jmp	L5
L4:
	movl	$14, %eax
L5:
	leave
	ret
	.ident	"GCC: (GNU) 9.3-win32 20200320"
	.def	_free;	.scl	2;	.type	32;	.endef
	.def	_thread_destroy;	.scl	2;	.type	32;	.endef
	.def	_thread_create;	.scl	2;	.type	32;	.endef
	.def	_thread_run;	.scl	2;	.type	32;	.endef
