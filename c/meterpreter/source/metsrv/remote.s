	.file	"remote.c"
	.text
	.globl	_remote_allocate
	.def	_remote_allocate;	.scl	2;	.type	32;	.endef
_remote_allocate:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$92, 4(%esp)
	movl	$1, (%esp)
	call	_calloc
	movl	%eax, -12(%ebp)
	call	_lock_create
	movl	%eax, -16(%ebp)
	cmpl	$0, -12(%ebp)
	je	L2
	cmpl	$0, -16(%ebp)
	je	L2
	movl	-12(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 20(%eax)
	movl	-12(%ebp), %eax
	movl	$0, 88(%eax)
	call	_pivot_tree_create
	movl	-12(%ebp), %edx
	movl	%eax, 80(%edx)
	call	_pivot_tree_create
	movl	-12(%ebp), %edx
	movl	%eax, 84(%edx)
	movl	-12(%ebp), %eax
	jmp	L3
L2:
	cmpl	$0, -16(%ebp)
	je	L4
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_lock_destroy
L4:
	movl	-12(%ebp), %eax
	movl	80(%eax), %eax
	testl	%eax, %eax
	je	L5
	movl	-12(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, (%esp)
	call	_pivot_tree_destroy
L5:
	movl	-12(%ebp), %eax
	movl	84(%eax), %eax
	testl	%eax, %eax
	je	L6
	movl	-12(%ebp), %eax
	movl	84(%eax), %eax
	movl	%eax, (%esp)
	call	_pivot_tree_destroy
L6:
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	$0, %eax
L3:
	leave
	ret
	.globl	_remote_deallocate
	.def	_remote_deallocate;	.scl	2;	.type	32;	.endef
_remote_deallocate:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_free_encryption_context
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, (%esp)
	call	_pivot_tree_destroy
	movl	8(%ebp), %eax
	movl	84(%eax), %eax
	movl	%eax, (%esp)
	call	_pivot_tree_destroy
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	L8
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_destroy
L8:
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	_free
	movl	$92, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_memset
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	nop
	leave
	ret
	.ident	"GCC: (GNU) 9.3-win32 20200320"
	.def	_calloc;	.scl	2;	.type	32;	.endef
	.def	_lock_create;	.scl	2;	.type	32;	.endef
	.def	_pivot_tree_create;	.scl	2;	.type	32;	.endef
	.def	_lock_destroy;	.scl	2;	.type	32;	.endef
	.def	_pivot_tree_destroy;	.scl	2;	.type	32;	.endef
	.def	_free;	.scl	2;	.type	32;	.endef
	.def	_free_encryption_context;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
