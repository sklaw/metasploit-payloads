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
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$40, %esp
push %eax
pop %eax
	movl	$0, -12(%ebp)
push %eax
pop %eax
	movl	$LC2, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	cmpl	$0, 8(%ebp)
push %eax
pop %eax
	jne	L3
push %eax
pop %eax
	movl	$6, %eax
push %eax
pop %eax
	jmp	L4
push %eax
pop %eax
L3:
	call	_list_create
push %eax
pop %eax
	movl	%eax, _schedulerThreadList
push %eax
pop %eax
	movl	_schedulerThreadList, %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L5
push %eax
pop %eax
	movl	$6, %eax
push %eax
pop %eax
	jmp	L4
push %eax
pop %eax
L5:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, _schedulerRemote
push %eax
pop %eax
	movl	$LC3, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
L4:
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
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
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$56, %esp
push %eax
pop %eax
	movl	$0, -16(%ebp)
push %eax
pop %eax
	movl	$0, -12(%ebp)
push %eax
pop %eax
	movl	$0, -20(%ebp)
push %eax
pop %eax
	call	_list_create
push %eax
pop %eax
	movl	%eax, -24(%ebp)
push %eax
pop %eax
	movl	$0, -28(%ebp)
push %eax
pop %eax
	movl	$0, -32(%ebp)
push %eax
pop %eax
	movl	$LC4, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	_schedulerThreadList, %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L7
push %eax
pop %eax
	movl	$0, %eax
push %eax
pop %eax
	jmp	L8
push %eax
pop %eax
L7:
	movl	_schedulerThreadList, %eax
push %eax
pop %eax
	movl	12(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_lock_acquire
push %eax
pop %eax
	movl	_schedulerThreadList, %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_list_count
push %eax
pop %eax
	movl	%eax, -20(%ebp)
push %eax
pop %eax
	movl	$0, -12(%ebp)
push %eax
pop %eax
	jmp	L9
push %eax
pop %eax
L13:
	movl	_schedulerThreadList, %eax
push %eax
pop %eax
	movl	-12(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_list_get
push %eax
pop %eax
	movl	%eax, -28(%ebp)
push %eax
pop %eax
	cmpl	$0, -28(%ebp)
push %eax
pop %eax
	je	L18
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_list_push
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	16(%eax), %eax
push %eax
pop %eax
	movl	%eax, -32(%ebp)
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	20(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L12
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	12(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_event_signal
push %eax
pop %eax
L12:
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_thread_sigterm
push %eax
pop %eax
	jmp	L11
push %eax
pop %eax
L18:
	nop
push %eax
pop %eax
L11:
	addl	$1, -12(%ebp)
push %eax
pop %eax
L9:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	cmpl	-20(%ebp), %eax
push %eax
pop %eax
	jb	L13
push %eax
pop %eax
	movl	_schedulerThreadList, %eax
push %eax
pop %eax
	movl	12(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_lock_release
push %eax
pop %eax
	movl	$LC5, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
L16:
	movl	$LC6, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_list_pop
push %eax
pop %eax
	movl	%eax, -28(%ebp)
push %eax
pop %eax
	cmpl	$0, -28(%ebp)
push %eax
pop %eax
	je	L19
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC7, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_thread_join
push %eax
pop %eax
	jmp	L16
push %eax
pop %eax
L19:
	nop
push %eax
pop %eax
	movl	$LC8, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_list_destroy
push %eax
pop %eax
	movl	_schedulerThreadList, %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_list_destroy
push %eax
pop %eax
	movl	$0, _schedulerThreadList
push %eax
pop %eax
	movl	$LC9, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
L8:
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
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
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$56, %esp
push %eax
pop %eax
	movl	$0, -12(%ebp)
push %eax
pop %eax
	movl	$0, -16(%ebp)
push %eax
pop %eax
	movl	$32, (%esp)
push %eax
pop %eax
	call	_malloc
push %eax
pop %eax
	movl	%eax, -20(%ebp)
push %eax
pop %eax
	cmpl	$0, -20(%ebp)
push %eax
pop %eax
	jne	L21
push %eax
pop %eax
	movl	$8, %eax
push %eax
pop %eax
	jmp	L22
push %eax
pop %eax
L21:
	movl	24(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 20(%esp)
push %eax
pop %eax
	movl	20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 16(%esp)
push %eax
pop %eax
	movl	16(%ebp), %eax
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
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC10, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	$32, 8(%esp)
push %eax
pop %eax
	movl	$0, 4(%esp)
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_memset
push %eax
pop %eax
	movl	_schedulerRemote, %edx
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%edx, (%eax)
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	8(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 4(%eax)
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	24(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 28(%eax)
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	12(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 16(%eax)
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	20(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 24(%eax)
push %eax
pop %eax
	call	_event_create
push %eax
pop %eax
	movl	-20(%ebp), %edx
push %eax
pop %eax
	movl	%eax, 8(%edx)
push %eax
pop %eax
	call	_event_create
push %eax
pop %eax
	movl	-20(%ebp), %edx
push %eax
pop %eax
	movl	%eax, 12(%edx)
push %eax
pop %eax
	movl	$0, 12(%esp)
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$_scheduler_waitable_thread@4, (%esp)
push %eax
pop %eax
	call	_thread_create
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
	cmpl	$0, -16(%ebp)
push %eax
pop %eax
	je	L23
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC11, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_thread_run
push %eax
pop %eax
	jmp	L24
push %eax
pop %eax
L23:
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_free
push %eax
pop %eax
	movl	$6, -12(%ebp)
push %eax
pop %eax
L24:
	movl	$LC12, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
L22:
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
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
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$56, %esp
push %eax
pop %eax
	movl	$0, -12(%ebp)
push %eax
pop %eax
	movl	$0, -20(%ebp)
push %eax
pop %eax
	movl	$0, -24(%ebp)
push %eax
pop %eax
	movl	$0, -28(%ebp)
push %eax
pop %eax
	movl	$1168, -16(%ebp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC13, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	_schedulerThreadList, %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L26
push %eax
pop %eax
	cmpl	$0, 8(%ebp)
push %eax
pop %eax
	jne	L27
push %eax
pop %eax
L26:
	movl	$6, %eax
push %eax
pop %eax
	jmp	L28
push %eax
pop %eax
L27:
	movl	_schedulerThreadList, %eax
push %eax
pop %eax
	movl	12(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_lock_acquire
push %eax
pop %eax
	movl	_schedulerThreadList, %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_list_count
push %eax
pop %eax
	movl	%eax, -20(%ebp)
push %eax
pop %eax
	movl	$0, -12(%ebp)
push %eax
pop %eax
	jmp	L29
push %eax
pop %eax
L39:
	movl	_schedulerThreadList, %eax
push %eax
pop %eax
	movl	-12(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_list_get
push %eax
pop %eax
	movl	%eax, -24(%ebp)
push %eax
pop %eax
	cmpl	$0, -24(%ebp)
push %eax
pop %eax
	je	L40
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	16(%eax), %eax
push %eax
pop %eax
	movl	%eax, -28(%ebp)
push %eax
pop %eax
	cmpl	$0, -28(%ebp)
push %eax
pop %eax
	je	L41
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	cmpl	%eax, 8(%ebp)
push %eax
pop %eax
	jne	L31
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC14, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	cmpl	$1, 12(%ebp)
push %eax
pop %eax
	jne	L33
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	20(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L34
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	8(%eax), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	movl	%eax, 12(%esp)
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC15, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	8(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_event_signal
push %eax
pop %eax
	jmp	L35
push %eax
pop %eax
L34:
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC16, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L35
push %eax
pop %eax
L33:
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	20(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L36
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	12(%eax), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	movl	%eax, 12(%esp)
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC17, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	12(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_event_signal
push %eax
pop %eax
L36:
	cmpl	$3, 12(%ebp)
push %eax
pop %eax
	jne	L37
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	8(%eax), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	movl	%eax, 12(%esp)
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC18, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_thread_sigterm
push %eax
pop %eax
	jmp	L35
push %eax
pop %eax
L37:
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC19, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
L35:
	movl	$0, -16(%ebp)
push %eax
pop %eax
	jmp	L38
push %eax
pop %eax
L40:
	nop
push %eax
pop %eax
	jmp	L31
push %eax
pop %eax
L41:
	nop
push %eax
pop %eax
L31:
	addl	$1, -12(%ebp)
push %eax
pop %eax
L29:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	cmpl	-20(%ebp), %eax
push %eax
pop %eax
	jb	L39
push %eax
pop %eax
L38:
	movl	_schedulerThreadList, %eax
push %eax
pop %eax
	movl	12(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_lock_release
push %eax
pop %eax
	movl	$LC20, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
L28:
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
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
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	pushl	%ebx
push %eax
pop %eax
	subl	$52, %esp
push %eax
pop %eax
	movl	$0, -36(%ebp)
push %eax
pop %eax
	movl	$0, -32(%ebp)
push %eax
pop %eax
	movl	$0, -28(%ebp)
push %eax
pop %eax
	movl	$0, -16(%ebp)
push %eax
pop %eax
	movl	$0, -20(%ebp)
push %eax
pop %eax
	movl	$0, -12(%ebp)
push %eax
pop %eax
	movl	$0, -24(%ebp)
push %eax
pop %eax
	cmpl	$0, 8(%ebp)
push %eax
pop %eax
	jne	L43
push %eax
pop %eax
	movl	$6, %eax
push %eax
pop %eax
	jmp	L57
push %eax
pop %eax
L43:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	16(%eax), %eax
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
	cmpl	$0, -16(%ebp)
push %eax
pop %eax
	jne	L45
push %eax
pop %eax
	movl	$6, %eax
push %eax
pop %eax
	jmp	L57
push %eax
pop %eax
L45:
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	24(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L46
push %eax
pop %eax
	movl	$6, %eax
push %eax
pop %eax
	jmp	L57
push %eax
pop %eax
L46:
	movl	_schedulerThreadList, %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L47
push %eax
pop %eax
	movl	$6, %eax
push %eax
pop %eax
	jmp	L57
push %eax
pop %eax
L47:
	movl	_schedulerThreadList, %eax
push %eax
pop %eax
	movl	8(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_list_add
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	8(%eax), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	movl	%eax, -36(%ebp)
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	8(%eax), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	movl	%eax, -32(%ebp)
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	movl	%eax, -28(%ebp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC21, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	$1, 20(%eax)
push %eax
pop %eax
	jmp	L48
push %eax
pop %eax
L53:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC22, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	$-1, 12(%esp)
push %eax
pop %eax
	movl	$0, 8(%esp)
push %eax
pop %eax
	leal	-36(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$3, (%esp)
push %eax
pop %eax
	movl	__imp__WaitForMultipleObjects@16, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$16, %esp
push %eax
pop %eax
	movl	%eax, -20(%ebp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC23, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -24(%ebp)
push %eax
pop %eax
	cmpl	$2, -24(%ebp)
push %eax
pop %eax
	je	L49
push %eax
pop %eax
	cmpl	$2, -24(%ebp)
push %eax
pop %eax
	ja	L58
push %eax
pop %eax
	cmpl	$0, -24(%ebp)
push %eax
pop %eax
	je	L51
push %eax
pop %eax
	cmpl	$1, -24(%ebp)
push %eax
pop %eax
	je	L52
push %eax
pop %eax
	jmp	L50
push %eax
pop %eax
L51:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC24, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	$1, -12(%ebp)
push %eax
pop %eax
	jmp	L48
push %eax
pop %eax
L52:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC25, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	$0, 20(%eax)
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	12(%eax), %eax
push %eax
pop %eax
	movl	$-1, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_event_poll
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	$1, 20(%eax)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC26, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
L49:
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	24(%eax), %eax
push %eax
pop %eax
	movl	8(%ebp), %edx
push %eax
pop %eax
	movl	20(%edx), %ebx
push %eax
pop %eax
	movl	-16(%ebp), %edx
push %eax
pop %eax
	movl	16(%edx), %ecx
push %eax
pop %eax
	movl	-16(%ebp), %edx
push %eax
pop %eax
	movl	(%edx), %edx
push %eax
pop %eax
	movl	%ebx, 8(%esp)
push %eax
pop %eax
	movl	%ecx, 4(%esp)
push %eax
pop %eax
	movl	%edx, (%esp)
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	jmp	L48
push %eax
pop %eax
L50:
L58:
	nop
push %eax
pop %eax
L48:
	cmpl	$0, -12(%ebp)
push %eax
pop %eax
	je	L53
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC27, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	_schedulerThreadList, %eax
push %eax
pop %eax
	movl	12(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_lock_acquire
push %eax
pop %eax
	movl	_schedulerThreadList, %eax
push %eax
pop %eax
	movl	8(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_list_remove
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L54
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	28(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L55
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	28(%eax), %eax
push %eax
pop %eax
	movl	8(%ebp), %edx
push %eax
pop %eax
	movl	20(%edx), %ebx
push %eax
pop %eax
	movl	-16(%ebp), %edx
push %eax
pop %eax
	movl	16(%edx), %ecx
push %eax
pop %eax
	movl	-16(%ebp), %edx
push %eax
pop %eax
	movl	4(%edx), %edx
push %eax
pop %eax
	movl	%ebx, 8(%esp)
push %eax
pop %eax
	movl	%ecx, 4(%esp)
push %eax
pop %eax
	movl	%edx, (%esp)
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	jmp	L56
push %eax
pop %eax
L55:
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L56
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC28, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__CloseHandle@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
L56:
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	12(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_event_destroy
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	8(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_event_destroy
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_thread_destroy
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_free
push %eax
pop %eax
L54:
	movl	_schedulerThreadList, %eax
push %eax
pop %eax
	movl	12(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_lock_release
push %eax
pop %eax
	movl	$0, %eax
push %eax
pop %eax
L57:
	movl	-4(%ebp), %ebx
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret	$4
push %eax
pop %eax
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
