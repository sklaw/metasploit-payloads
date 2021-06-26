	.file	"list.c"
	.text
	.globl	_list_create
	.def	_list_create;	.scl	2;	.type	32;	.endef
_list_create:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$16, (%esp)
	call	_malloc
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	L2
	movl	-12(%ebp), %eax
	movl	$0, (%eax)
	movl	-12(%ebp), %eax
	movl	$0, 4(%eax)
	movl	-12(%ebp), %eax
	movl	$0, 8(%eax)
	call	_lock_create
	movl	-12(%ebp), %edx
	movl	%eax, 12(%edx)
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	L2
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_list_destroy
	movl	$0, %eax
	jmp	L3
L2:
	movl	-12(%ebp), %eax
L3:
	leave
	ret
	.globl	_list_destroy
	.def	_list_destroy;	.scl	2;	.type	32;	.endef
_list_destroy:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	cmpl	$0, 8(%ebp)
	je	L8
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_acquire
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	L6
L7:
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	-12(%ebp), %eax
	movl	$0, (%eax)
	movl	-12(%ebp), %eax
	movl	$0, 4(%eax)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	-16(%ebp), %eax
	movl	%eax, -12(%ebp)
L6:
	cmpl	$0, -12(%ebp)
	jne	L7
	movl	8(%ebp), %eax
	movl	$0, 8(%eax)
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_release
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_destroy
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
L8:
	nop
	leave
	ret
	.globl	_list_count
	.def	_list_count;	.scl	2;	.type	32;	.endef
_list_count:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$0, -12(%ebp)
	cmpl	$0, 8(%ebp)
	je	L10
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_acquire
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_release
L10:
	movl	-12(%ebp), %eax
	leave
	ret
	.globl	_list_get
	.def	_list_get;	.scl	2;	.type	32;	.endef
_list_get:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$0, -12(%ebp)
	movl	$0, -16(%ebp)
	cmpl	$0, 8(%ebp)
	jne	L13
	movl	$0, %eax
	jmp	L14
L13:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_acquire
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	%eax, 12(%ebp)
	jb	L15
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_release
	movl	$0, %eax
	jmp	L14
L15:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	L16
L19:
	cmpl	$0, 12(%ebp)
	je	L21
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	subl	$1, 12(%ebp)
L16:
	cmpl	$0, -16(%ebp)
	jne	L19
	jmp	L18
L21:
	nop
L18:
	cmpl	$0, -16(%ebp)
	je	L20
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
L20:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_release
	movl	-12(%ebp), %eax
L14:
	leave
	ret
	.globl	_list_add
	.def	_list_add;	.scl	2;	.type	32;	.endef
_list_add:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_list_push
	leave
	ret
	.globl	_list_remove_node
	.def	_list_remove_node;	.scl	2;	.type	32;	.endef
_list_remove_node:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	cmpl	$0, 8(%ebp)
	je	L25
	cmpl	$0, 12(%ebp)
	jne	L26
L25:
	movl	$0, %eax
	jmp	L27
L26:
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	$1, %eax
	jne	L28
	movl	8(%ebp), %eax
	movl	$0, (%eax)
	movl	8(%ebp), %eax
	movl	$0, 4(%eax)
	jmp	L29
L28:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, 12(%ebp)
	jne	L30
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, 4(%eax)
	jmp	L29
L30:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, 12(%ebp)
	jne	L31
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, (%eax)
	jmp	L29
L31:
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%ebp), %edx
	movl	4(%edx), %edx
	movl	%edx, 4(%eax)
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%ebp), %edx
	movl	(%edx), %edx
	movl	%edx, (%eax)
L29:
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	12(%ebp), %eax
	movl	$0, (%eax)
	movl	12(%ebp), %eax
	movl	$0, 4(%eax)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	$1, %eax
L27:
	leave
	ret
	.globl	_list_remove
	.def	_list_remove;	.scl	2;	.type	32;	.endef
_list_remove:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$0, -16(%ebp)
	movl	$0, -12(%ebp)
	cmpl	$0, 8(%ebp)
	je	L33
	cmpl	$0, 12(%ebp)
	jne	L34
L33:
	movl	$0, %eax
	jmp	L35
L34:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_acquire
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	L36
L39:
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	%eax, 12(%ebp)
	je	L40
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
L36:
	cmpl	$0, -12(%ebp)
	jne	L39
	jmp	L38
L40:
	nop
L38:
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_list_remove_node
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_release
	movl	-16(%ebp), %eax
L35:
	leave
	ret
	.globl	_list_remove_at
	.def	_list_remove_at;	.scl	2;	.type	32;	.endef
_list_remove_at:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$0, -12(%ebp)
	movl	$0, -20(%ebp)
	movl	$0, -16(%ebp)
	cmpl	$0, 8(%ebp)
	jne	L42
	movl	$0, %eax
	jmp	L43
L42:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_acquire
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	%eax, 12(%ebp)
	jnb	L44
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	L45
L47:
	cmpl	$0, 12(%ebp)
	jne	L46
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_list_remove_node
	movl	%eax, -12(%ebp)
	jmp	L44
L46:
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	subl	$1, 12(%ebp)
L45:
	cmpl	$0, -16(%ebp)
	jne	L47
L44:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_release
	movl	-12(%ebp), %eax
L43:
	leave
	ret
	.globl	_list_clear
	.def	_list_clear;	.scl	2;	.type	32;	.endef
_list_clear:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$0, -12(%ebp)
	movl	$0, -16(%ebp)
	cmpl	$0, 8(%ebp)
	jne	L49
	movl	$0, %eax
	jmp	L50
L49:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_acquire
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	L51
L53:
	cmpl	$0, 12(%ebp)
	je	L52
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	movl	12(%ebp), %eax
	call	*%eax
L52:
	movl	-12(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
L51:
	cmpl	$0, -12(%ebp)
	jne	L53
	movl	8(%ebp), %eax
	movl	$0, 4(%eax)
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_release
	movl	$1, %eax
L50:
	leave
	ret
	.globl	_list_push
	.def	_list_push;	.scl	2;	.type	32;	.endef
_list_push:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$0, -12(%ebp)
	cmpl	$0, 8(%ebp)
	jne	L55
	movl	$0, %eax
	jmp	L56
L55:
	movl	$12, (%esp)
	call	_malloc
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jne	L57
	movl	$0, %eax
	jmp	L56
L57:
	movl	-12(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 8(%eax)
	movl	-12(%ebp), %eax
	movl	$0, (%eax)
	movl	-12(%ebp), %eax
	movl	$0, 4(%eax)
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_acquire
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	L58
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	-12(%ebp), %edx
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	8(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 4(%eax)
	jmp	L59
L58:
	movl	8(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 4(%eax)
L59:
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_release
	movl	$1, %eax
L56:
	leave
	ret
	.globl	_list_pop
	.def	_list_pop;	.scl	2;	.type	32;	.endef
_list_pop:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$0, -12(%ebp)
	cmpl	$0, 8(%ebp)
	jne	L61
	movl	$0, %eax
	jmp	L62
L61:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_acquire
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	L63
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_list_remove_node
L63:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_release
	movl	-12(%ebp), %eax
L62:
	leave
	ret
	.globl	_list_shift
	.def	_list_shift;	.scl	2;	.type	32;	.endef
_list_shift:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$0, -12(%ebp)
	cmpl	$0, 8(%ebp)
	jne	L65
	movl	$0, %eax
	jmp	L66
L65:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_acquire
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L67
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_list_remove_node
L67:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_release
	movl	-12(%ebp), %eax
L66:
	leave
	ret
	.globl	_list_enumerate
	.def	_list_enumerate;	.scl	2;	.type	32;	.endef
_list_enumerate:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	cmpl	$0, 8(%ebp)
	je	L69
	cmpl	$0, 12(%ebp)
	jne	L70
L69:
	movl	$0, %eax
	jmp	L71
L70:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_acquire
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	$0, -16(%ebp)
	jmp	L72
L76:
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	movl	12(%ebp), %eax
	call	*%eax
	testl	%eax, %eax
	jne	L73
	cmpl	$0, -16(%ebp)
	je	L74
L73:
	movl	$1, %eax
	jmp	L75
L74:
	movl	$0, %eax
L75:
	movl	%eax, -16(%ebp)
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
L72:
	cmpl	$0, -12(%ebp)
	jne	L76
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_release
	movl	-16(%ebp), %eax
L71:
	leave
	ret
	.ident	"GCC: (GNU) 9.3-win32 20200320"
	.def	_malloc;	.scl	2;	.type	32;	.endef
	.def	_lock_create;	.scl	2;	.type	32;	.endef
	.def	_lock_acquire;	.scl	2;	.type	32;	.endef
	.def	_free;	.scl	2;	.type	32;	.endef
	.def	_lock_release;	.scl	2;	.type	32;	.endef
	.def	_lock_destroy;	.scl	2;	.type	32;	.endef
