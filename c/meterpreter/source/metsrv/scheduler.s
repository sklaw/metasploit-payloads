	.file	"scheduler.c"
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
	.globl	_schedulerThreadList
	.bss
	.align 4
_schedulerThreadList:
	.space 4
	.globl	_schedulerRemote
	.align 4
_schedulerRemote:
	.space 4
	.section .rdata,"dr"
	.align 4
LC2:
	.ascii "[SCHEDULER] entering scheduler_initialize.\0"
	.align 4
LC3:
	.ascii "[SCHEDULER] leaving scheduler_initialize.\0"
	.text
	.globl	_scheduler_initialize
	.def	_scheduler_initialize;	.scl	2;	.type	32;	.endef
_scheduler_initialize:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$0, -12(%ebp)
	movl	$LC2, (%esp)
	call	_real_dprintf
	cmpl	$0, 8(%ebp)
	jne	L3
	movl	$6, %eax
	jmp	L4
L3:
	call	_list_create
	movl	%eax, _schedulerThreadList
	movl	_schedulerThreadList, %eax
	testl	%eax, %eax
	jne	L5
	movl	$6, %eax
	jmp	L4
L5:
	movl	8(%ebp), %eax
	movl	%eax, _schedulerRemote
	movl	$LC3, (%esp)
	call	_real_dprintf
	movl	-12(%ebp), %eax
L4:
	leave
	ret
	.section .rdata,"dr"
	.align 4
LC4:
	.ascii "[SCHEDULER] entering scheduler_destroy.\0"
	.align 4
LC5:
	.ascii "[SCHEDULER] scheduler_destroy, joining all waitable threads...\0"
	.align 4
LC6:
	.ascii "[SCHEDULER] scheduler_destroy, popping off another item from thread list...\0"
	.align 4
LC7:
	.ascii "[SCHEDULER] scheduler_destroy, joining thread 0x%08X...\0"
	.align 4
LC8:
	.ascii "[SCHEDULER] scheduler_destroy, destroying lists...\0"
	.align 4
LC9:
	.ascii "[SCHEDULER] leaving scheduler_destroy.\0"
	.text
	.globl	_scheduler_destroy
	.def	_scheduler_destroy;	.scl	2;	.type	32;	.endef
_scheduler_destroy:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$56, %esp
	movl	$0, -16(%ebp)
	movl	$0, -12(%ebp)
	movl	$0, -20(%ebp)
	call	_list_create
	movl	%eax, -24(%ebp)
	movl	$0, -28(%ebp)
	movl	$0, -32(%ebp)
	movl	$LC4, (%esp)
	call	_real_dprintf
	movl	_schedulerThreadList, %eax
	testl	%eax, %eax
	jne	L7
	movl	$0, %eax
	jmp	L8
L7:
	movl	_schedulerThreadList, %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_acquire
	movl	_schedulerThreadList, %eax
	movl	%eax, (%esp)
	call	_list_count
	movl	%eax, -20(%ebp)
	movl	$0, -12(%ebp)
	jmp	L9
L13:
	movl	_schedulerThreadList, %eax
	movl	-12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_list_get
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	L18
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_list_push
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	L12
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	_event_signal
L12:
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_thread_sigterm
	jmp	L11
L18:
	nop
L11:
	addl	$1, -12(%ebp)
L9:
	movl	-12(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jb	L13
	movl	_schedulerThreadList, %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_release
	movl	$LC5, (%esp)
	call	_real_dprintf
L16:
	movl	$LC6, (%esp)
	call	_real_dprintf
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_list_pop
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	L19
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC7, (%esp)
	call	_real_dprintf
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_thread_join
	jmp	L16
L19:
	nop
	movl	$LC8, (%esp)
	call	_real_dprintf
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_list_destroy
	movl	_schedulerThreadList, %eax
	movl	%eax, (%esp)
	call	_list_destroy
	movl	$0, _schedulerThreadList
	movl	$LC9, (%esp)
	call	_real_dprintf
	movl	-16(%ebp), %eax
L8:
	leave
	ret
	.section .rdata,"dr"
	.align 4
LC10:
	.ascii "[SCHEDULER] entering scheduler_insert_waitable( 0x%08X, 0x%08X, 0x%08X, 0x%08X, 0x%08X )\0"
	.align 4
LC11:
	.ascii "[SCHEDULER] created scheduler_waitable_thread 0x%08X\0"
	.align 4
LC12:
	.ascii "[SCHEDULER] leaving scheduler_insert_waitable\0"
	.text
	.globl	_scheduler_insert_waitable
	.def	_scheduler_insert_waitable;	.scl	2;	.type	32;	.endef
_scheduler_insert_waitable:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$56, %esp
	movl	$0, -12(%ebp)
	movl	$0, -16(%ebp)
	movl	$32, (%esp)
	call	_malloc
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	jne	L21
	movl	$8, %eax
	jmp	L22
L21:
	movl	24(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC10, (%esp)
	call	_real_dprintf
	movl	$32, 8(%esp)
	movl	$0, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_memset
	movl	_schedulerRemote, %edx
	movl	-20(%ebp), %eax
	movl	%edx, (%eax)
	movl	-20(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	-20(%ebp), %eax
	movl	24(%ebp), %edx
	movl	%edx, 28(%eax)
	movl	-20(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 16(%eax)
	movl	-20(%ebp), %eax
	movl	20(%ebp), %edx
	movl	%edx, 24(%eax)
	call	_event_create
	movl	-20(%ebp), %edx
	movl	%eax, 8(%edx)
	call	_event_create
	movl	-20(%ebp), %edx
	movl	%eax, 12(%edx)
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$_scheduler_waitable_thread@4, (%esp)
	call	_thread_create
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	L23
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC11, (%esp)
	call	_real_dprintf
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_thread_run
	jmp	L24
L23:
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	$6, -12(%ebp)
L24:
	movl	$LC12, (%esp)
	call	_real_dprintf
	movl	-12(%ebp), %eax
L22:
	leave
	ret
	.section .rdata,"dr"
	.align 4
LC13:
	.ascii "[SCHEDULER] entering scheduler_signal_waitable( 0x%08X )\0"
	.align 4
LC14:
	.ascii "[SCHEDULER] scheduler_signal_waitable: signaling waitable = 0x%08X, thread = 0x%08X\0"
	.align 4
LC15:
	.ascii "[SCHEDULER] scheduler_signal_waitable: thread running, pausing. waitable = 0x%08X, thread = 0x%08X, handle = 0x%X\0"
	.align 4
LC16:
	.ascii "[SCHEDULER] scheduler_signal_waitable: thread already paused. waitable = 0x%08X, thread = 0x%08X\0"
	.align 4
LC17:
	.ascii "[SCHEDULER] scheduler_signal_waitable: thread paused, resuming. waitable = 0x%08X, thread = 0x%08X, handle = 0x%X\0"
	.align 4
LC18:
	.ascii "[SCHEDULER] scheduler_signal_waitable: stopping thread. waitable = 0x%08X, thread = 0x%08X, handle = 0x%X\0"
	.align 4
LC19:
	.ascii "[SCHEDULER] scheduler_signal_waitable: thread already running. waitable = 0x%08X, thread = 0x%08X\0"
	.align 4
LC20:
	.ascii "[SCHEDULER] leaving scheduler_signal_waitable\0"
	.text
	.globl	_scheduler_signal_waitable
	.def	_scheduler_signal_waitable;	.scl	2;	.type	32;	.endef
_scheduler_signal_waitable:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$56, %esp
	movl	$0, -12(%ebp)
	movl	$0, -20(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -28(%ebp)
	movl	$1168, -16(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC13, (%esp)
	call	_real_dprintf
	movl	_schedulerThreadList, %eax
	testl	%eax, %eax
	je	L26
	cmpl	$0, 8(%ebp)
	jne	L27
L26:
	movl	$6, %eax
	jmp	L28
L27:
	movl	_schedulerThreadList, %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_acquire
	movl	_schedulerThreadList, %eax
	movl	%eax, (%esp)
	call	_list_count
	movl	%eax, -20(%ebp)
	movl	$0, -12(%ebp)
	jmp	L29
L39:
	movl	_schedulerThreadList, %eax
	movl	-12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_list_get
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	je	L40
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	L41
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, 8(%ebp)
	jne	L31
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC14, (%esp)
	call	_real_dprintf
	cmpl	$1, 12(%ebp)
	jne	L33
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	L34
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC15, (%esp)
	call	_real_dprintf
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	_event_signal
	jmp	L35
L34:
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC16, (%esp)
	call	_real_dprintf
	jmp	L35
L33:
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	L36
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC17, (%esp)
	call	_real_dprintf
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	_event_signal
L36:
	cmpl	$3, 12(%ebp)
	jne	L37
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC18, (%esp)
	call	_real_dprintf
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_thread_sigterm
	jmp	L35
L37:
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC19, (%esp)
	call	_real_dprintf
L35:
	movl	$0, -16(%ebp)
	jmp	L38
L40:
	nop
	jmp	L31
L41:
	nop
L31:
	addl	$1, -12(%ebp)
L29:
	movl	-12(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jb	L39
L38:
	movl	_schedulerThreadList, %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_release
	movl	$LC20, (%esp)
	call	_real_dprintf
	movl	-16(%ebp), %eax
L28:
	leave
	ret
	.section .rdata,"dr"
	.align 4
LC21:
	.ascii "[SCHEDULER] entering scheduler_waitable_thread( 0x%08X )\0"
	.align 4
LC22:
	.ascii "[SCHEDULER] About to wait ( 0x%08X )\0"
	.align 4
LC23:
	.ascii "[SCHEDULER] Wait returned ( 0x%08X )\0"
	.align 4
LC24:
	.ascii "[SCHEDULER] scheduler_waitable_thread( 0x%08X ), signaled to terminate...\0"
	.align 4
LC25:
	.ascii "[SCHEDULER] scheduler_waitable_thread( 0x%08X ), signaled to pause...\0"
	.align 4
LC26:
	.ascii "[SCHEDULER] scheduler_waitable_thread( 0x%08X ), signaled to resume...\0"
	.align 4
LC27:
	.ascii "[SCHEDULER] leaving scheduler_waitable_thread( 0x%08X )\0"
	.align 4
LC28:
	.ascii "[SCHEDULER] scheduler_waitable_thread( 0x%08X ) closing handle 0x%08X\0"
	.text
	.globl	_scheduler_waitable_thread@4
	.def	_scheduler_waitable_thread@4;	.scl	2;	.type	32;	.endef
_scheduler_waitable_thread@4:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$52, %esp
	movl	$0, -36(%ebp)
	movl	$0, -32(%ebp)
	movl	$0, -28(%ebp)
	movl	$0, -16(%ebp)
	movl	$0, -20(%ebp)
	movl	$0, -12(%ebp)
	movl	$0, -24(%ebp)
	cmpl	$0, 8(%ebp)
	jne	L43
	movl	$6, %eax
	jmp	L57
L43:
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jne	L45
	movl	$6, %eax
	jmp	L57
L45:
	movl	-16(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	jne	L46
	movl	$6, %eax
	jmp	L57
L46:
	movl	_schedulerThreadList, %eax
	testl	%eax, %eax
	jne	L47
	movl	$6, %eax
	jmp	L57
L47:
	movl	_schedulerThreadList, %eax
	movl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_list_add
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC21, (%esp)
	call	_real_dprintf
	movl	-16(%ebp), %eax
	movl	$1, 20(%eax)
	jmp	L48
L53:
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC22, (%esp)
	call	_real_dprintf
	movl	$-1, 12(%esp)
	movl	$0, 8(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$3, (%esp)
	movl	__imp__WaitForMultipleObjects@16, %eax
	call	*%eax
	subl	$16, %esp
	movl	%eax, -20(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC23, (%esp)
	call	_real_dprintf
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
	cmpl	$2, -24(%ebp)
	je	L49
	cmpl	$2, -24(%ebp)
	ja	L58
	cmpl	$0, -24(%ebp)
	je	L51
	cmpl	$1, -24(%ebp)
	je	L52
	jmp	L50
L51:
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC24, (%esp)
	call	_real_dprintf
	movl	$1, -12(%ebp)
	jmp	L48
L52:
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC25, (%esp)
	call	_real_dprintf
	movl	-16(%ebp), %eax
	movl	$0, 20(%eax)
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	$-1, 4(%esp)
	movl	%eax, (%esp)
	call	_event_poll
	movl	-16(%ebp), %eax
	movl	$1, 20(%eax)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC26, (%esp)
	call	_real_dprintf
L49:
	movl	-16(%ebp), %eax
	movl	24(%eax), %eax
	movl	8(%ebp), %edx
	movl	20(%edx), %ebx
	movl	-16(%ebp), %edx
	movl	16(%edx), %ecx
	movl	-16(%ebp), %edx
	movl	(%edx), %edx
	movl	%ebx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
	jmp	L48
L50:
L58:
	nop
L48:
	cmpl	$0, -12(%ebp)
	je	L53
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC27, (%esp)
	call	_real_dprintf
	movl	_schedulerThreadList, %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_acquire
	movl	_schedulerThreadList, %eax
	movl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_list_remove
	testl	%eax, %eax
	je	L54
	movl	-16(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	L55
	movl	-16(%ebp), %eax
	movl	28(%eax), %eax
	movl	8(%ebp), %edx
	movl	20(%edx), %ebx
	movl	-16(%ebp), %edx
	movl	16(%edx), %ecx
	movl	-16(%ebp), %edx
	movl	4(%edx), %edx
	movl	%ebx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
	jmp	L56
L55:
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	L56
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC28, (%esp)
	call	_real_dprintf
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__CloseHandle@4, %eax
	call	*%eax
	subl	$4, %esp
L56:
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	_event_destroy
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	_event_destroy
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_thread_destroy
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
L54:
	movl	_schedulerThreadList, %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_release
	movl	$0, %eax
L57:
	movl	-4(%ebp), %ebx
	leave
	ret	$4
	.ident	"GCC: (GNU) 9.3-win32 20200320"
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	_vsnprintf_s;	.scl	2;	.type	32;	.endef
	.def	_list_create;	.scl	2;	.type	32;	.endef
	.def	_lock_acquire;	.scl	2;	.type	32;	.endef
	.def	_list_count;	.scl	2;	.type	32;	.endef
	.def	_list_get;	.scl	2;	.type	32;	.endef
	.def	_list_push;	.scl	2;	.type	32;	.endef
	.def	_event_signal;	.scl	2;	.type	32;	.endef
	.def	_thread_sigterm;	.scl	2;	.type	32;	.endef
	.def	_lock_release;	.scl	2;	.type	32;	.endef
	.def	_list_pop;	.scl	2;	.type	32;	.endef
	.def	_thread_join;	.scl	2;	.type	32;	.endef
	.def	_list_destroy;	.scl	2;	.type	32;	.endef
	.def	_malloc;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_event_create;	.scl	2;	.type	32;	.endef
	.def	_thread_create;	.scl	2;	.type	32;	.endef
	.def	_thread_run;	.scl	2;	.type	32;	.endef
	.def	_free;	.scl	2;	.type	32;	.endef
	.def	_list_add;	.scl	2;	.type	32;	.endef
	.def	_event_poll;	.scl	2;	.type	32;	.endef
	.def	_list_remove;	.scl	2;	.type	32;	.endef
	.def	_event_destroy;	.scl	2;	.type	32;	.endef
	.def	_thread_destroy;	.scl	2;	.type	32;	.endef
