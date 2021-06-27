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
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$24, %esp
push %eax
pop %eax
	movl	$0, -12(%ebp)
push %eax
pop %eax
	cmpl	$0, 8(%ebp)
push %eax
pop %eax
	jne	L2
push %eax
pop %eax
	movl	$6, %eax
push %eax
pop %eax
	jmp	L3
push %eax
pop %eax
L2:
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
	jne	L4
push %eax
pop %eax
	movl	$6, %eax
push %eax
pop %eax
	jmp	L3
push %eax
pop %eax
L4:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, _schedulerRemote
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
L3:
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
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
	movl	_schedulerThreadList, %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L6
push %eax
pop %eax
	movl	$0, %eax
push %eax
pop %eax
	jmp	L7
push %eax
pop %eax
L6:
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
	jmp	L8
push %eax
pop %eax
L12:
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
	je	L17
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
	jne	L11
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
L11:
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_thread_sigterm
push %eax
pop %eax
	jmp	L10
push %eax
pop %eax
L17:
	nop
push %eax
pop %eax
L10:
	addl	$1, -12(%ebp)
push %eax
pop %eax
L8:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	cmpl	-20(%ebp), %eax
push %eax
pop %eax
	jb	L12
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
L15:
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
	je	L18
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
	jmp	L15
push %eax
pop %eax
L18:
	nop
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
	movl	-16(%ebp), %eax
push %eax
pop %eax
L7:
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_scheduler_insert_waitable
	.def	_scheduler_insert_waitable;	.scl	2;	.type	32;	.endef
_scheduler_insert_waitable:
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
	jne	L20
push %eax
pop %eax
	movl	$8, %eax
push %eax
pop %eax
	jmp	L21
push %eax
pop %eax
L20:
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
	je	L22
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
	jmp	L23
push %eax
pop %eax
L22:
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
L23:
	movl	-12(%ebp), %eax
push %eax
pop %eax
L21:
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
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
	movl	_schedulerThreadList, %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L25
push %eax
pop %eax
	cmpl	$0, 8(%ebp)
push %eax
pop %eax
	jne	L26
push %eax
pop %eax
L25:
	movl	$6, %eax
push %eax
pop %eax
	jmp	L27
push %eax
pop %eax
L26:
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
	jmp	L28
push %eax
pop %eax
L36:
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
	je	L37
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
	je	L38
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
	jne	L30
push %eax
pop %eax
	cmpl	$1, 12(%ebp)
push %eax
pop %eax
	jne	L32
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
	je	L33
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
	jmp	L33
push %eax
pop %eax
L32:
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	20(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L34
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
L34:
	cmpl	$3, 12(%ebp)
push %eax
pop %eax
	jne	L33
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
L33:
	movl	$0, -16(%ebp)
push %eax
pop %eax
	jmp	L35
push %eax
pop %eax
L37:
	nop
push %eax
pop %eax
	jmp	L30
push %eax
pop %eax
L38:
	nop
push %eax
pop %eax
L30:
	addl	$1, -12(%ebp)
push %eax
pop %eax
L28:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	cmpl	-20(%ebp), %eax
push %eax
pop %eax
	jb	L36
push %eax
pop %eax
L35:
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
	movl	-16(%ebp), %eax
push %eax
pop %eax
L27:
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
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
	jne	L40
push %eax
pop %eax
	movl	$6, %eax
push %eax
pop %eax
	jmp	L54
push %eax
pop %eax
L40:
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
	jne	L42
push %eax
pop %eax
	movl	$6, %eax
push %eax
pop %eax
	jmp	L54
push %eax
pop %eax
L42:
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	24(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L43
push %eax
pop %eax
	movl	$6, %eax
push %eax
pop %eax
	jmp	L54
push %eax
pop %eax
L43:
	movl	_schedulerThreadList, %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L44
push %eax
pop %eax
	movl	$6, %eax
push %eax
pop %eax
	jmp	L54
push %eax
pop %eax
L44:
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
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	$1, 20(%eax)
push %eax
pop %eax
	jmp	L45
push %eax
pop %eax
L50:
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
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -24(%ebp)
push %eax
pop %eax
	cmpl	$2, -24(%ebp)
push %eax
pop %eax
	je	L46
push %eax
pop %eax
	cmpl	$2, -24(%ebp)
push %eax
pop %eax
	ja	L55
push %eax
pop %eax
	cmpl	$0, -24(%ebp)
push %eax
pop %eax
	je	L48
push %eax
pop %eax
	cmpl	$1, -24(%ebp)
push %eax
pop %eax
	je	L49
push %eax
pop %eax
	jmp	L47
push %eax
pop %eax
L48:
	movl	$1, -12(%ebp)
push %eax
pop %eax
	jmp	L45
push %eax
pop %eax
L49:
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
L46:
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
	jmp	L45
push %eax
pop %eax
L47:
L55:
	nop
push %eax
pop %eax
L45:
	cmpl	$0, -12(%ebp)
push %eax
pop %eax
	je	L50
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
	je	L51
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
	je	L52
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
	jmp	L53
push %eax
pop %eax
L52:
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L53
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
L53:
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
L51:
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
L54:
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
