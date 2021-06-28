	.file	"pivot_packet_dispatch.c"
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
	.section .rdata,"dr"
	.align 4
LC2:
	.ascii "[PIVOTPACKETTHREAD] Dispatching packet on thread %p\0"
	.align 4
LC3:
	.ascii "[PIVOTPACKETTHREAD] Packet dispatched: %u (%x)\0"
	.align 4
LC4:
	.ascii "[PIVOTPACKETTHREAD] Cleaning up the thread\0"
LC5:
	.ascii "[PIVOTPACKETTHREAD] Done\0"
	.text
	.globl	_pivot_packet_dispatch_thread@4
	.def	_pivot_packet_dispatch_thread@4;	.scl	2;	.type	32;	.endef
_pivot_packet_dispatch_thread@4:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC2, (%esp)
	call	_real_dprintf
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
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC3, (%esp)
	call	_real_dprintf
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	$LC4, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_thread_destroy
	movl	$LC5, (%esp)
	call	_real_dprintf
	movl	-24(%ebp), %eax
	leave
	ret	$4
	.section .rdata,"dr"
	.align 4
LC6:
	.ascii "[PIVOTPACKET] Dispatching packet on new thread %p\0"
	.align 4
LC7:
	.ascii "[PIVOTPACKET] Thread invoked %p\0"
	.align 4
LC8:
	.ascii "[PIVOTPACKET] Failed to create packet dispatch thread\0"
	.text
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
	je	L5
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC6, (%esp)
	call	_real_dprintf
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_thread_run
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC7, (%esp)
	call	_real_dprintf
	movl	$0, %eax
	jmp	L6
L5:
	movl	$LC8, (%esp)
	call	_real_dprintf
	movl	$14, %eax
L6:
	leave
	ret
	.ident	"GCC: (GNU) 9.3-win32 20200320"
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	_vsnprintf_s;	.scl	2;	.type	32;	.endef
	.def	_free;	.scl	2;	.type	32;	.endef
	.def	_thread_destroy;	.scl	2;	.type	32;	.endef
	.def	_thread_create;	.scl	2;	.type	32;	.endef
	.def	_thread_run;	.scl	2;	.type	32;	.endef
