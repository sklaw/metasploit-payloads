	.file	"thread.c"
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
	je	L3
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
L3:
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
	je	L7
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
L7:
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
	je	L10
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	$-1, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__WaitForSingleObject@8, %eax
	call	*%eax
	subl	$8, %esp
L10:
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
	je	L13
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__ReleaseMutex@4, %eax
	call	*%eax
	subl	$4, %esp
L13:
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
	jne	L15
	movl	$0, %eax
	jmp	L16
L15:
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
	jne	L17
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	$0, %eax
	jmp	L16
L17:
	movl	-12(%ebp), %eax
L16:
	leave
	ret
	.globl	_event_destroy
	.def	_event_destroy;	.scl	2;	.type	32;	.endef
_event_destroy:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	cmpl	$0, 8(%ebp)
	jne	L19
	movl	$0, %eax
	jmp	L20
L19:
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
L20:
	leave
	ret
	.section .rdata,"dr"
LC2:
	.ascii "Signalling 0x%x\0"
LC3:
	.ascii "Signalling 0x%x failed %u\0"
	.text
	.globl	_event_signal
	.def	_event_signal;	.scl	2;	.type	32;	.endef
_event_signal:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	cmpl	$0, 8(%ebp)
	jne	L22
	movl	$0, %eax
	jmp	L23
L22:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC2, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__SetEvent@4, %eax
	call	*%eax
	subl	$4, %esp
	testl	%eax, %eax
	jne	L24
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	8(%ebp), %edx
	movl	(%edx), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$LC3, (%esp)
	call	_real_dprintf
	movl	$0, %eax
	jmp	L23
L24:
	movl	$1, %eax
L23:
	leave
	ret
	.globl	_event_poll
	.def	_event_poll;	.scl	2;	.type	32;	.endef
_event_poll:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	cmpl	$0, 8(%ebp)
	jne	L26
	movl	$0, %eax
	jmp	L27
L26:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__WaitForSingleObject@8, %eax
	call	*%eax
	subl	$8, %esp
	testl	%eax, %eax
	jne	L28
	movl	$1, %eax
	jmp	L27
L28:
	movl	$0, %eax
L27:
	leave
	ret
	.section .rdata,"dr"
LC4:
	.ascii "kernel32.dll\0"
LC5:
	.ascii "OpenThread\0"
LC6:
	.ascii "ntdll.dll\0"
LC7:
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
	je	L30
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
	movl	$LC4, (%esp)
	movl	__imp__LoadLibraryA@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	%eax, -20(%ebp)
	movl	$LC5, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__GetProcAddress@8, %eax
	call	*%eax
	subl	$8, %esp
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	L31
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
	jmp	L32
L31:
	movl	$0, -24(%ebp)
	movl	$LC6, (%esp)
	movl	__imp__LoadLibraryA@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	%eax, -28(%ebp)
	movl	$LC7, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__GetProcAddress@8, %eax
	call	*%eax
	subl	$8, %esp
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	je	L33
	movl	$0, %ecx
	movl	$24, %eax
	andl	$-4, %eax
	movl	%eax, %edx
	movl	$0, %eax
L34:
	movl	%ecx, -52(%ebp,%eax)
	addl	$4, %eax
	cmpl	%edx, %eax
	jb	L34
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
L33:
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__FreeLibrary@4, %eax
	call	*%eax
	subl	$4, %esp
L32:
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__FreeLibrary@4, %eax
	call	*%eax
	subl	$4, %esp
L30:
	movl	-12(%ebp), %eax
	leave
	ret
	.section .rdata,"dr"
LC8:
	.ascii "SetThreadErrorMode\0"
	.text
	.globl	_disable_thread_error_reporting
	.def	_disable_thread_error_reporting;	.scl	2;	.type	32;	.endef
_disable_thread_error_reporting:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$LC4, (%esp)
	movl	__imp__LoadLibraryA@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	%eax, -12(%ebp)
	movl	$LC8, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__GetProcAddress@8, %eax
	call	*%eax
	subl	$8, %esp
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	L39
	movl	$0, 4(%esp)
	movl	$1, (%esp)
	movl	-16(%ebp), %eax
	call	*%eax
	subl	$8, %esp
L39:
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
	jne	L43
	movl	$0, %eax
	jmp	L44
L43:
	movl	$28, (%esp)
	call	_malloc
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jne	L45
	movl	$0, %eax
	jmp	L44
L45:
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
	jne	L46
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	$0, %eax
	jmp	L44
L46:
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
	jne	L47
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	_event_destroy
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	$0, %eax
	jmp	L44
L47:
	movl	-12(%ebp), %eax
L44:
	leave
	ret
	.globl	_thread_run
	.def	_thread_run;	.scl	2;	.type	32;	.endef
_thread_run:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	cmpl	$0, 8(%ebp)
	jne	L49
	movl	$0, %eax
	jmp	L50
L49:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__ResumeThread@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	$1, %eax
L50:
	leave
	ret
	.globl	_thread_sigterm
	.def	_thread_sigterm;	.scl	2;	.type	32;	.endef
_thread_sigterm:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	cmpl	$0, 8(%ebp)
	jne	L52
	movl	$0, %eax
	jmp	L53
L52:
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	_event_signal
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
L53:
	leave
	ret
	.globl	_thread_kill
	.def	_thread_kill;	.scl	2;	.type	32;	.endef
_thread_kill:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	cmpl	$0, 8(%ebp)
	jne	L55
	movl	$0, %eax
	jmp	L56
L55:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$-1, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__TerminateThread@8, %eax
	call	*%eax
	subl	$8, %esp
	testl	%eax, %eax
	jne	L57
	movl	$0, %eax
	jmp	L56
L57:
	movl	$1, %eax
L56:
	leave
	ret
	.globl	_thread_join
	.def	_thread_join;	.scl	2;	.type	32;	.endef
_thread_join:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	cmpl	$0, 8(%ebp)
	jne	L59
	movl	$0, %eax
	jmp	L60
L59:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$-1, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__WaitForSingleObject@8, %eax
	call	*%eax
	subl	$8, %esp
	testl	%eax, %eax
	jne	L61
	movl	$1, %eax
	jmp	L60
L61:
	movl	$0, %eax
L60:
	leave
	ret
	.globl	_thread_destroy
	.def	_thread_destroy;	.scl	2;	.type	32;	.endef
_thread_destroy:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	cmpl	$0, 8(%ebp)
	jne	L63
	movl	$0, %eax
	jmp	L64
L63:
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
L64:
	leave
	ret
	.ident	"GCC: (GNU) 9.3-win32 20200320"
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	_vsnprintf_s;	.scl	2;	.type	32;	.endef
	.def	_malloc;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_free;	.scl	2;	.type	32;	.endef
