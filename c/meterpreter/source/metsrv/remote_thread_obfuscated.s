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
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$72, %esp
push %eax
pop %eax
	cmpl	$0, 28(%ebp)
push %eax
pop %eax
	jne	L2
push %eax
pop %eax
	leal	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 28(%ebp)
push %eax
pop %eax
L2:
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	28(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 24(%esp)
push %eax
pop %eax
	movl	24(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 20(%esp)
push %eax
pop %eax
	movl	20(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 16(%esp)
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
	movl	__imp__CreateRemoteThread@28, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$28, %esp
push %eax
pop %eax
	movl	%eax, -24(%ebp)
push %eax
pop %eax
	movl	__imp__GetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	cmpl	$8, %eax
push %eax
pop %eax
	jne	L3
push %eax
pop %eax
	movl	$0, -24(%ebp)
push %eax
pop %eax
	movl	_pRtlCreateUserThreadAttempted, %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L4
push %eax
pop %eax
	movl	_pRtlCreateUserThread, %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L5
push %eax
pop %eax
	movl	$LC0, (%esp)
push %eax
pop %eax
	movl	__imp__GetModuleHandleA@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	movl	$LC1, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__GetProcAddress@8, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$8, %esp
push %eax
pop %eax
	movl	%eax, _pRtlCreateUserThread
push %eax
pop %eax
L5:
	movl	$1, _pRtlCreateUserThreadAttempted
push %eax
pop %eax
L4:
	movl	_pRtlCreateUserThread, %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L6
push %eax
pop %eax
	movl	24(%ebp), %eax
push %eax
pop %eax
	andl	$4, %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	setne	%al
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	movl	_pRtlCreateUserThread, %eax
push %eax
pop %eax
	movl	16(%ebp), %edx
push %eax
pop %eax
	movl	$0, 36(%esp)
push %eax
pop %eax
	leal	-24(%ebp), %ecx
push %eax
pop %eax
	movl	%ecx, 32(%esp)
push %eax
pop %eax
	movl	20(%ebp), %ecx
push %eax
pop %eax
	movl	%ecx, 28(%esp)
push %eax
pop %eax
	movl	%edx, 24(%esp)
push %eax
pop %eax
	movl	$0, 20(%esp)
push %eax
pop %eax
	movl	$0, 16(%esp)
push %eax
pop %eax
	movl	$0, 12(%esp)
push %eax
pop %eax
	movl	-12(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	$0, 4(%esp)
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
	subl	$40, %esp
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
	movl	-16(%ebp), %eax
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
	cmpl	$0, -16(%ebp)
push %eax
pop %eax
	jne	L3
push %eax
pop %eax
	cmpl	$0, 28(%ebp)
push %eax
pop %eax
	je	L3
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__GetThreadId@4, %eax
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
	movl	%eax, (%edx)
push %eax
pop %eax
	jmp	L3
push %eax
pop %eax
L6:
	movl	$8, (%esp)
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
L3:
	movl	-24(%ebp), %eax
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.ident	"GCC: (GNU) 9.3-win32 20200320"
