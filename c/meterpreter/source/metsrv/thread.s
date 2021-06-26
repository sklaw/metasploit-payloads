	.file	"thread.c"
	.text
	.globl	_lock_create
	.def	_lock_create;	.scl	2;	.type	32;	.endef
_lock_create:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$4, (%esp)
	call	_malloc
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	L2
	movl	$4, 8(%esp)
	movl	$0, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_memset
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	movl	__imp__CreateMutexA@12, %eax
	call	*%eax
	subl	$12, %esp
	movl	-12(%ebp), %edx
	movl	%eax, (%edx)
L2:
	movl	-12(%ebp), %eax
	leave
	ret
	.globl	_lock_destroy
	.def	_lock_destroy;	.scl	2;	.type	32;	.endef
_lock_destroy:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	cmpl	$0, 8(%ebp)
	je	L6
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_lock_release
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__CloseHandle@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
L6:
	nop
	leave
	ret
	.globl	_lock_acquire
	.def	_lock_acquire;	.scl	2;	.type	32;	.endef
_lock_acquire:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	cmpl	$0, 8(%ebp)
	je	L9
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	$-1, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__WaitForSingleObject@8, %eax
	call	*%eax
	subl	$8, %esp
L9:
	nop
	leave
	ret
	.globl	_lock_release
	.def	_lock_release;	.scl	2;	.type	32;	.endef
_lock_release:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	cmpl	$0, 8(%ebp)
	je	L12
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__ReleaseMutex@4, %eax
	call	*%eax
	subl	$4, %esp
L12:
	nop
	leave
	ret
	.globl	_event_create
	.def	_event_create;	.scl	2;	.type	32;	.endef
_event_create:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$0, -12(%ebp)
	movl	$4, (%esp)
	call	_malloc
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jne	L14
	movl	$0, %eax
	jmp	L15
L14:
	movl	$4, 8(%esp)
	movl	$0, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_memset
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	movl	__imp__CreateEventA@16, %eax
	call	*%eax
	subl	$16, %esp
	movl	-12(%ebp), %edx
	movl	%eax, (%edx)
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L16
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	$0, %eax
	jmp	L15
L16:
	movl	-12(%ebp), %eax
L15:
	leave
	ret
	.globl	_event_destroy
	.def	_event_destroy;	.scl	2;	.type	32;	.endef
_event_destroy:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	cmpl	$0, 8(%ebp)
	jne	L18
	movl	$0, %eax
	jmp	L19
L18:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__CloseHandle@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	$1, %eax
L19:
	leave
	ret
	.globl	_event_signal
	.def	_event_signal;	.scl	2;	.type	32;	.endef
_event_signal:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	cmpl	$0, 8(%ebp)
	jne	L21
	movl	$0, %eax
	jmp	L22
L21:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__SetEvent@4, %eax
	call	*%eax
	subl	$4, %esp
	testl	%eax, %eax
	jne	L23
	movl	$0, %eax
	jmp	L22
L23:
	movl	$1, %eax
L22:
	leave
	ret
	.globl	_event_poll
	.def	_event_poll;	.scl	2;	.type	32;	.endef
_event_poll:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	cmpl	$0, 8(%ebp)
	jne	L25
	movl	$0, %eax
	jmp	L26
L25:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__WaitForSingleObject@8, %eax
	call	*%eax
	subl	$8, %esp
	testl	%eax, %eax
	jne	L27
	movl	$1, %eax
	jmp	L26
L27:
	movl	$0, %eax
L26:
	leave
	ret
	.section .rdata,"dr"
LC0:
	.ascii "kernel32.dll\0"
LC1:
	.ascii "OpenThread\0"
LC2:
	.ascii "ntdll.dll\0"
LC3:
	.ascii "NtOpenThread\0"
	.text
	.globl	_thread_open
	.def	_thread_open;	.scl	2;	.type	32;	.endef
_thread_open:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$88, %esp
	movl	$0, -12(%ebp)
	movl	$0, -16(%ebp)
	movl	$0, -20(%ebp)
	movl	$28, (%esp)
	call	_malloc
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	L29
	movl	$28, 8(%esp)
	movl	$0, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_memset
	movl	__imp__GetCurrentThreadId@0, %eax
	call	*%eax
	movl	-12(%ebp), %edx
	movl	%eax, (%edx)
	call	_event_create
	movl	-12(%ebp), %edx
	movl	%eax, 8(%edx)
	movl	$LC0, (%esp)
	movl	__imp__LoadLibraryA@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	%eax, -20(%ebp)
	movl	$LC1, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__GetProcAddress@8, %eax
	call	*%eax
	subl	$8, %esp
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	L30
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$3, (%esp)
	movl	-16(%ebp), %eax
	call	*%eax
	subl	$12, %esp
	movl	-12(%ebp), %edx
	movl	%eax, 4(%edx)
	jmp	L31
L30:
	movl	$0, -24(%ebp)
	movl	$LC2, (%esp)
	movl	__imp__LoadLibraryA@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	%eax, -28(%ebp)
	movl	$LC3, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__GetProcAddress@8, %eax
	call	*%eax
	subl	$8, %esp
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	je	L32
	movl	$0, %ecx
	movl	$24, %eax
	andl	$-4, %eax
	movl	%eax, %edx
	movl	$0, %eax
L33:
	movl	%ecx, -52(%ebp,%eax)
	addl	$4, %eax
	cmpl	%edx, %eax
	jb	L33
	movl	$0, -60(%ebp)
	movl	$0, -56(%ebp)
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	movl	-12(%ebp), %eax
	leal	4(%eax), %edx
	leal	-60(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	%edx, (%esp)
	movl	-24(%ebp), %eax
	call	*%eax
	subl	$16, %esp
L32:
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__FreeLibrary@4, %eax
	call	*%eax
	subl	$4, %esp
L31:
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__FreeLibrary@4, %eax
	call	*%eax
	subl	$4, %esp
L29:
	movl	-12(%ebp), %eax
	leave
	ret
	.section .rdata,"dr"
LC4:
	.ascii "SetThreadErrorMode\0"
	.text
	.globl	_disable_thread_error_reporting
	.def	_disable_thread_error_reporting;	.scl	2;	.type	32;	.endef
_disable_thread_error_reporting:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$LC0, (%esp)
	movl	__imp__LoadLibraryA@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	%eax, -12(%ebp)
	movl	$LC4, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__GetProcAddress@8, %eax
	call	*%eax
	subl	$8, %esp
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	L38
	movl	$0, 4(%esp)
	movl	$1, (%esp)
	movl	-16(%ebp), %eax
	call	*%eax
	subl	$8, %esp
L38:
	nop
	leave
	ret
	.def	_thread_preamble@4;	.scl	3;	.type	32;	.endef
_thread_preamble@4:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	call	_disable_thread_error_reporting
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	subl	$4, %esp
	leave
	ret	$4
	.globl	_thread_create
	.def	_thread_create;	.scl	2;	.type	32;	.endef
_thread_create:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$56, %esp
	movl	$0, -12(%ebp)
	cmpl	$0, 8(%ebp)
	jne	L42
	movl	$0, %eax
	jmp	L43
L42:
	movl	$28, (%esp)
	call	_malloc
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jne	L44
	movl	$0, %eax
	jmp	L43
L44:
	movl	$28, 8(%esp)
	movl	$0, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_memset
	call	_event_create
	movl	-12(%ebp), %edx
	movl	%eax, 8(%edx)
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	L45
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	$0, %eax
	jmp	L43
L45:
	movl	-12(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 16(%eax)
	movl	-12(%ebp), %eax
	movl	16(%ebp), %edx
	movl	%edx, 20(%eax)
	movl	-12(%ebp), %eax
	movl	20(%ebp), %edx
	movl	%edx, 24(%eax)
	movl	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 12(%eax)
	movl	-12(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$4, 16(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$_thread_preamble@4, 8(%esp)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	movl	__imp__CreateThread@24, %eax
	call	*%eax
	subl	$24, %esp
	movl	-12(%ebp), %edx
	movl	%eax, 4(%edx)
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	L46
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	_event_destroy
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	$0, %eax
	jmp	L43
L46:
	movl	-12(%ebp), %eax
L43:
	leave
	ret
	.globl	_thread_run
	.def	_thread_run;	.scl	2;	.type	32;	.endef
_thread_run:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	cmpl	$0, 8(%ebp)
	jne	L48
	movl	$0, %eax
	jmp	L49
L48:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__ResumeThread@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	$1, %eax
L49:
	leave
	ret
	.globl	_thread_sigterm
	.def	_thread_sigterm;	.scl	2;	.type	32;	.endef
_thread_sigterm:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	cmpl	$0, 8(%ebp)
	jne	L51
	movl	$0, %eax
	jmp	L52
L51:
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	_event_signal
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
L52:
	leave
	ret
	.globl	_thread_kill
	.def	_thread_kill;	.scl	2;	.type	32;	.endef
_thread_kill:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	cmpl	$0, 8(%ebp)
	jne	L54
	movl	$0, %eax
	jmp	L55
L54:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$-1, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__TerminateThread@8, %eax
	call	*%eax
	subl	$8, %esp
	testl	%eax, %eax
	jne	L56
	movl	$0, %eax
	jmp	L55
L56:
	movl	$1, %eax
L55:
	leave
	ret
	.globl	_thread_join
	.def	_thread_join;	.scl	2;	.type	32;	.endef
_thread_join:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	cmpl	$0, 8(%ebp)
	jne	L58
	movl	$0, %eax
	jmp	L59
L58:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$-1, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__WaitForSingleObject@8, %eax
	call	*%eax
	subl	$8, %esp
	testl	%eax, %eax
	jne	L60
	movl	$1, %eax
	jmp	L59
L60:
	movl	$0, %eax
L59:
	leave
	ret
	.globl	_thread_destroy
	.def	_thread_destroy;	.scl	2;	.type	32;	.endef
_thread_destroy:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	cmpl	$0, 8(%ebp)
	jne	L62
	movl	$0, %eax
	jmp	L63
L62:
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	_event_destroy
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__CloseHandle@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	$1, %eax
L63:
	leave
	ret
	.ident	"GCC: (GNU) 9.3-win32 20200320"
	.def	_malloc;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_free;	.scl	2;	.type	32;	.endef
