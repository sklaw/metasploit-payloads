	.file	"remote.c"
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
	.section .rdata,"dr"
LC2:
	.ascii "[REMOTE] remote created %p\0"
LC3:
	.ascii "[REMOTE] here 3\0"
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
	je	L3
	cmpl	$0, -16(%ebp)
	je	L3
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
	movl	%eax, 4(%esp)
	movl	$LC2, (%esp)
	call	_real_dprintf
	movl	-12(%ebp), %eax
	jmp	L4
L3:
	cmpl	$0, -16(%ebp)
	je	L5
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_lock_destroy
L5:
	movl	-12(%ebp), %eax
	movl	80(%eax), %eax
	testl	%eax, %eax
	je	L6
	movl	-12(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, (%esp)
	call	_pivot_tree_destroy
L6:
	movl	-12(%ebp), %eax
	movl	84(%eax), %eax
	testl	%eax, %eax
	je	L7
	movl	-12(%ebp), %eax
	movl	84(%eax), %eax
	movl	%eax, (%esp)
	call	_pivot_tree_destroy
L7:
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	$LC3, (%esp)
	call	_real_dprintf
	movl	$0, %eax
L4:
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
	je	L9
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_destroy
L9:
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
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	_vsnprintf_s;	.scl	2;	.type	32;	.endef
	.def	_calloc;	.scl	2;	.type	32;	.endef
	.def	_lock_create;	.scl	2;	.type	32;	.endef
	.def	_pivot_tree_create;	.scl	2;	.type	32;	.endef
	.def	_lock_destroy;	.scl	2;	.type	32;	.endef
	.def	_pivot_tree_destroy;	.scl	2;	.type	32;	.endef
	.def	_free;	.scl	2;	.type	32;	.endef
	.def	_free_encryption_context;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
