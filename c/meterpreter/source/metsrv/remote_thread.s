	.file	"remote_thread.c"
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
.lcomm _pRtlCreateUserThread,4,4
.lcomm _pRtlCreateUserThreadAttempted,4,4
	.section .rdata,"dr"
	.align 4
LC2:
	.ascii "[REMOTETHREAD] CreateRemoteThread seems to lack permissions, trying alternative options\0"
LC3:
	.ascii "ntdll\0"
LC4:
	.ascii "RtlCreateUserThread\0"
	.align 4
LC5:
	.ascii "[REMOTETHREAD] RtlCreateUserThread found at %p, using for backup remote thread creation\0"
	.align 4
LC6:
	.ascii "[REMOTETHREAD] Attempting thread creation with RtlCreateUserThread\0"
	.text
	.globl	_create_remote_thread
	.def	_create_remote_thread;	.scl	2;	.type	32;	.endef
_create_remote_thread:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$72, %esp
	cmpl	$0, 28(%ebp)
	jne	L3
	leal	-20(%ebp), %eax
	movl	%eax, 28(%ebp)
L3:
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
	jne	L4
	movl	$LC2, (%esp)
	call	_real_dprintf
	movl	$0, -24(%ebp)
	movl	_pRtlCreateUserThreadAttempted, %eax
	testl	%eax, %eax
	jne	L5
	movl	_pRtlCreateUserThread, %eax
	testl	%eax, %eax
	jne	L6
	movl	$LC3, (%esp)
	movl	__imp__GetModuleHandleA@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	$LC4, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__GetProcAddress@8, %eax
	call	*%eax
	subl	$8, %esp
	movl	%eax, _pRtlCreateUserThread
	movl	_pRtlCreateUserThread, %eax
	testl	%eax, %eax
	je	L6
	movl	_pRtlCreateUserThread, %eax
	movl	%eax, 4(%esp)
	movl	$LC5, (%esp)
	call	_real_dprintf
L6:
	movl	$1, _pRtlCreateUserThreadAttempted
L5:
	movl	_pRtlCreateUserThread, %eax
	testl	%eax, %eax
	je	L7
	movl	$LC6, (%esp)
	call	_real_dprintf
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
	jne	L4
	cmpl	$0, 28(%ebp)
	je	L4
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__GetThreadId@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	28(%ebp), %edx
	movl	%eax, (%edx)
	jmp	L4
L7:
	movl	$8, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
L4:
	movl	-24(%ebp), %eax
	leave
	ret
	.ident	"GCC: (GNU) 9.3-win32 20200320"
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	_vsnprintf_s;	.scl	2;	.type	32;	.endef
