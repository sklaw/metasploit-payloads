	.file	"pivot_tree.c"
	.text
	.globl	_pivot_tree_create
	.def	_pivot_tree_create;	.scl	2;	.type	32;	.endef
_pivot_tree_create:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	$4, 4(%esp)
	movl	$1, (%esp)
	call	_calloc
	leave
	ret
	.globl	_pivot_tree_add_node
	.def	_pivot_tree_add_node;	.scl	2;	.type	32;	.endef
_pivot_tree_add_node:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	$16, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_memcmp
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jns	L4
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	L5
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 20(%eax)
	movl	$0, %eax
	jmp	L6
L5:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_pivot_tree_add_node
	jmp	L6
L4:
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	jne	L7
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 24(%eax)
	movl	$0, %eax
	jmp	L6
L7:
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_pivot_tree_add_node
L6:
	leave
	ret
	.globl	_pivot_tree_add
	.def	_pivot_tree_add;	.scl	2;	.type	32;	.endef
_pivot_tree_add:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$28, 4(%esp)
	movl	$1, (%esp)
	call	_calloc
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	$16, 8(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_memcpy
	movl	-12(%ebp), %eax
	movl	16(%ebp), %edx
	movl	%edx, 16(%eax)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L9
	movl	8(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, (%eax)
	movl	$0, %eax
	jmp	L10
L9:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_pivot_tree_add_node
L10:
	leave
	ret
	.globl	_pivot_tree_largest_node
	.def	_pivot_tree_largest_node;	.scl	2;	.type	32;	.endef
_pivot_tree_largest_node:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	cmpl	$0, 8(%ebp)
	jne	L12
	movl	$0, %eax
	jmp	L13
L12:
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	jne	L14
	movl	8(%ebp), %eax
	jmp	L13
L14:
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	_pivot_tree_largest_node
L13:
	leave
	ret
	.globl	_pivot_tree_remove_node
	.def	_pivot_tree_remove_node;	.scl	2;	.type	32;	.endef
_pivot_tree_remove_node:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$72, %esp
	movl	8(%ebp), %eax
	movl	$16, 8(%esp)
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_memcmp
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jns	L16
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	L16
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	$16, 8(%esp)
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_memcmp
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jne	L17
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_pivot_tree_largest_node
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	L18
	movl	-20(%ebp), %eax
	movl	24(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%edx, 24(%eax)
	movl	8(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, 20(%eax)
	jmp	L19
L18:
	movl	-20(%ebp), %eax
	movl	24(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
L19:
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	-32(%ebp), %eax
	jmp	L20
L17:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_pivot_tree_remove_node
	jmp	L20
L16:
	cmpl	$0, -12(%ebp)
	jle	L21
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	L21
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	$16, 8(%esp)
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_memcmp
	movl	%eax, -36(%ebp)
	cmpl	$0, -36(%ebp)
	jne	L22
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -44(%ebp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	_pivot_tree_largest_node
	movl	%eax, -48(%ebp)
	cmpl	$0, -48(%ebp)
	je	L23
	movl	-40(%ebp), %eax
	movl	24(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%edx, 24(%eax)
	movl	8(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%edx, 24(%eax)
	jmp	L24
L23:
	movl	-40(%ebp), %eax
	movl	24(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 24(%eax)
L24:
	movl	-40(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -52(%ebp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	-52(%ebp), %eax
	jmp	L20
L22:
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_pivot_tree_remove_node
	jmp	L20
L21:
	movl	$0, %eax
L20:
	leave
	ret
	.globl	_pivot_tree_remove
	.def	_pivot_tree_remove;	.scl	2;	.type	32;	.endef
_pivot_tree_remove:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$56, %esp
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L26
	movl	$0, %eax
	jmp	L27
L26:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	$16, 8(%esp)
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_memcmp
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jne	L28
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_pivot_tree_largest_node
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	je	L29
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	24(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 24(%eax)
	movl	8(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, (%eax)
	jmp	L30
L29:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	24(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
L30:
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	-28(%ebp), %eax
	jmp	L27
L28:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_pivot_tree_remove_node
L27:
	leave
	ret
	.globl	_pivot_tree_find_node
	.def	_pivot_tree_find_node;	.scl	2;	.type	32;	.endef
_pivot_tree_find_node:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	cmpl	$0, 8(%ebp)
	jne	L32
	movl	$0, %eax
	jmp	L33
L32:
	movl	8(%ebp), %eax
	movl	$16, 8(%esp)
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_memcmp
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jne	L34
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	jmp	L33
L34:
	cmpl	$0, -12(%ebp)
	jns	L35
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_pivot_tree_find_node
	jmp	L33
L35:
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_pivot_tree_find_node
L33:
	leave
	ret
	.globl	_pivot_tree_find
	.def	_pivot_tree_find;	.scl	2;	.type	32;	.endef
_pivot_tree_find:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_pivot_tree_find_node
	leave
	ret
	.globl	_pivot_tree_traverse_node
	.def	_pivot_tree_traverse_node;	.scl	2;	.type	32;	.endef
_pivot_tree_traverse_node:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	cmpl	$0, 8(%ebp)
	je	L40
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	16(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_pivot_tree_traverse_node
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	8(%ebp), %eax
	movl	16(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	12(%ebp), %eax
	call	*%eax
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	16(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_pivot_tree_traverse_node
L40:
	nop
	leave
	ret
	.globl	_pivot_tree_traverse
	.def	_pivot_tree_traverse;	.scl	2;	.type	32;	.endef
_pivot_tree_traverse:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_pivot_tree_traverse_node
	nop
	leave
	ret
	.globl	_pivot_tree_destroy_node
	.def	_pivot_tree_destroy_node;	.scl	2;	.type	32;	.endef
_pivot_tree_destroy_node:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	cmpl	$0, 8(%ebp)
	je	L44
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	_pivot_tree_destroy_node
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	_pivot_tree_destroy_node
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
L44:
	nop
	leave
	ret
	.globl	_pivot_tree_destroy
	.def	_pivot_tree_destroy;	.scl	2;	.type	32;	.endef
_pivot_tree_destroy:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_pivot_tree_destroy_node
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	nop
	leave
	ret
	.ident	"GCC: (GNU) 9.3-win32 20200320"
	.def	_calloc;	.scl	2;	.type	32;	.endef
	.def	_memcmp;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	_free;	.scl	2;	.type	32;	.endef
