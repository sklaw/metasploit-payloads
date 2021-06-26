	.file	"remote_thread.c"
	.text
.lcomm _pRtlCreateUserThread,4,4
.lcomm _pRtlCreateUserThreadAttempted,4,4
	.section .rdata,"dr"
LC0:
	.ascii "ntdll\0"
LC1:
	.ascii "RtlCreateUserThread\0"
	.text
	.globl	_create_remote_thread
	.def	_create_remote_thread;	.scl	2;	.type	32;	.endef
_create_remote_thread:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$72, %esp
	cmpl	$0, 28(%ebp)
	jne	L2
	leal	-20(%ebp), %eax
	movl	%eax, 28(%ebp)
L2:
	movl	16(%ebp), %eax
	movl	28(%ebp), %edx
	movl	%edx, 24(%esp)
	movl	24(%ebp), %edx
	movl	%edx, 20(%esp)
	movl	20(%ebp), %edx
	movl	%edx, 16(%esp)
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__CreateRemoteThread@28, %eax
	call	*%eax
	subl	$28, %esp
	movl	%eax, -24(%ebp)
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	cmpl	$8, %eax
	jne	L3
	movl	$0, -24(%ebp)
	movl	_pRtlCreateUserThreadAttempted, %eax
	testl	%eax, %eax
	jne	L4
	movl	_pRtlCreateUserThread, %eax
	testl	%eax, %eax
	jne	L5
	movl	$LC0, (%esp)
	movl	__imp__GetModuleHandleA@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	$LC1, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__GetProcAddress@8, %eax
	call	*%eax
	subl	$8, %esp
	movl	%eax, _pRtlCreateUserThread
L5:
	movl	$1, _pRtlCreateUserThreadAttempted
L4:
	movl	_pRtlCreateUserThread, %eax
	testl	%eax, %eax
	je	L6
	movl	24(%ebp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
	movl	_pRtlCreateUserThread, %eax
	movl	16(%ebp), %edx
	movl	$0, 36(%esp)
	leal	-24(%ebp), %ecx
	movl	%ecx, 32(%esp)
	movl	20(%ebp), %ecx
	movl	%ecx, 28(%esp)
	movl	%edx, 24(%esp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	-12(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	subl	$40, %esp
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
	cmpl	$0, -16(%ebp)
	jne	L3
	cmpl	$0, 28(%ebp)
	je	L3
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__GetThreadId@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	28(%ebp), %edx
	movl	%eax, (%edx)
	jmp	L3
L6:
	movl	$8, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
L3:
	movl	-24(%ebp), %eax
	leave
	ret
	.ident	"GCC: (GNU) 9.3-win32 20200320"
