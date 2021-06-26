	.file	"scheduler.c"
	.text
	.globl	_schedulerThreadList
	.bss
	.align 4
_schedulerThreadList:
	.space 4
	.globl	_schedulerRemote
	.align 4
_schedulerRemote:
	.space 4
	.text
	.globl	_scheduler_initialize
	.def	_scheduler_initialize;	.scl	2;	.type	32;	.endef
_scheduler_initialize:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	$0, -12(%ebp)
	cmpl	$0, 8(%ebp)
	jne	L2
	movl	$6, %eax
	jmp	L3
L2:
	call	_list_create
	movl	%eax, _schedulerThreadList
	movl	_schedulerThreadList, %eax
	testl	%eax, %eax
	jne	L4
	movl	$6, %eax
	jmp	L3
L4:
	movl	8(%ebp), %eax
	movl	%eax, _schedulerRemote
	movl	-12(%ebp), %eax
L3:
	leave
	ret
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
	movl	_schedulerThreadList, %eax
	testl	%eax, %eax
	jne	L6
	movl	$0, %eax
	jmp	L7
L6:
	movl	_schedulerThreadList, %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_acquire
	movl	_schedulerThreadList, %eax
	movl	%eax, (%esp)
	call	_list_count
	movl	%eax, -20(%ebp)
	movl	$0, -12(%ebp)
	jmp	L8
L12:
	movl	_schedulerThreadList, %eax
	movl	-12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_list_get
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	L17
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
	jne	L11
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	_event_signal
L11:
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_thread_sigterm
	jmp	L10
L17:
	nop
L10:
	addl	$1, -12(%ebp)
L8:
	movl	-12(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jb	L12
	movl	_schedulerThreadList, %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_release
L15:
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_list_pop
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	L18
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_thread_join
	jmp	L15
L18:
	nop
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_list_destroy
	movl	_schedulerThreadList, %eax
	movl	%eax, (%esp)
	call	_list_destroy
	movl	$0, _schedulerThreadList
	movl	-16(%ebp), %eax
L7:
	leave
	ret
	.globl	_scheduler_insert_waitable
	.def	_scheduler_insert_waitable;	.scl	2;	.type	32;	.endef
_scheduler_insert_waitable:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$0, -12(%ebp)
	movl	$0, -16(%ebp)
	movl	$32, (%esp)
	call	_malloc
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	jne	L20
	movl	$8, %eax
	jmp	L21
L20:
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
	je	L22
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_thread_run
	jmp	L23
L22:
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	$6, -12(%ebp)
L23:
	movl	-12(%ebp), %eax
L21:
	leave
	ret
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
	movl	_schedulerThreadList, %eax
	testl	%eax, %eax
	je	L25
	cmpl	$0, 8(%ebp)
	jne	L26
L25:
	movl	$6, %eax
	jmp	L27
L26:
	movl	_schedulerThreadList, %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_acquire
	movl	_schedulerThreadList, %eax
	movl	%eax, (%esp)
	call	_list_count
	movl	%eax, -20(%ebp)
	movl	$0, -12(%ebp)
	jmp	L28
L36:
	movl	_schedulerThreadList, %eax
	movl	-12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_list_get
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	je	L37
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	L38
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, 8(%ebp)
	jne	L30
	cmpl	$1, 12(%ebp)
	jne	L32
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	L33
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	_event_signal
	jmp	L33
L32:
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	L34
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	_event_signal
L34:
	cmpl	$3, 12(%ebp)
	jne	L33
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_thread_sigterm
L33:
	movl	$0, -16(%ebp)
	jmp	L35
L37:
	nop
	jmp	L30
L38:
	nop
L30:
	addl	$1, -12(%ebp)
L28:
	movl	-12(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jb	L36
L35:
	movl	_schedulerThreadList, %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_release
	movl	-16(%ebp), %eax
L27:
	leave
	ret
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
	jne	L40
	movl	$6, %eax
	jmp	L54
L40:
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jne	L42
	movl	$6, %eax
	jmp	L54
L42:
	movl	-16(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	jne	L43
	movl	$6, %eax
	jmp	L54
L43:
	movl	_schedulerThreadList, %eax
	testl	%eax, %eax
	jne	L44
	movl	$6, %eax
	jmp	L54
L44:
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
	movl	-16(%ebp), %eax
	movl	$1, 20(%eax)
	jmp	L45
L50:
	movl	$-1, 12(%esp)
	movl	$0, 8(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$3, (%esp)
	movl	__imp__WaitForMultipleObjects@16, %eax
	call	*%eax
	subl	$16, %esp
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
	cmpl	$2, -24(%ebp)
	je	L46
	cmpl	$2, -24(%ebp)
	ja	L55
	cmpl	$0, -24(%ebp)
	je	L48
	cmpl	$1, -24(%ebp)
	je	L49
	jmp	L47
L48:
	movl	$1, -12(%ebp)
	jmp	L45
L49:
	movl	-16(%ebp), %eax
	movl	$0, 20(%eax)
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	$-1, 4(%esp)
	movl	%eax, (%esp)
	call	_event_poll
	movl	-16(%ebp), %eax
	movl	$1, 20(%eax)
L46:
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
	jmp	L45
L47:
L55:
	nop
L45:
	cmpl	$0, -12(%ebp)
	je	L50
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
	je	L51
	movl	-16(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	L52
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
	jmp	L53
L52:
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	L53
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__CloseHandle@4, %eax
	call	*%eax
	subl	$4, %esp
L53:
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
L51:
	movl	_schedulerThreadList, %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_release
	movl	$0, %eax
L54:
	movl	-4(%ebp), %ebx
	leave
	ret	$4
	.ident	"GCC: (GNU) 9.3-win32 20200320"
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
