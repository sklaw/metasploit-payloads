	.file	"pivot_tree.c"
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
	.align 4
LC2:
	.ascii "%s%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X (%p) (%p)\12\0\0"
LC3:
	.ascii " \0"
LC4:
	.ascii "%.*s|\0"
LC5:
	.ascii "%sNULL\12\0"
	.text
	.globl	_pivot_tree_to_string
	.def	_pivot_tree_to_string;	.scl	2;	.type	32;	.endef
_pivot_tree_to_string:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$700, %esp
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L3
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_strlen
	jmp	L4
L3:
	movl	$0, %eax
L4:
	movl	%eax, -28(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	_strlen
	addl	$66, %eax
	movl	%eax, -32(%ebp)
	movl	-28(%ebp), %eax
	leal	1(%eax), %edx
	movl	-32(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_realloc
	movl	8(%ebp), %edx
	movl	%eax, (%edx)
	cmpl	$0, 12(%ebp)
	je	L5
	movl	12(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -556(%ebp)
	movl	12(%ebp), %eax
	movl	20(%eax), %ecx
	movl	%ecx, -560(%ebp)
	movl	-36(%ebp), %eax
	addl	$15, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -564(%ebp)
	movl	-36(%ebp), %eax
	addl	$14, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -568(%ebp)
	movl	-36(%ebp), %eax
	addl	$13, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -572(%ebp)
	movl	-36(%ebp), %eax
	addl	$12, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	%edx, -576(%ebp)
	movl	-36(%ebp), %eax
	addl	$11, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -580(%ebp)
	movl	-36(%ebp), %eax
	addl	$10, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -584(%ebp)
	movl	-36(%ebp), %eax
	addl	$9, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -588(%ebp)
	movl	-36(%ebp), %eax
	addl	$8, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -592(%ebp)
	movl	-36(%ebp), %eax
	addl	$7, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	%edx, -596(%ebp)
	movl	-36(%ebp), %eax
	addl	$6, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -600(%ebp)
	movl	-36(%ebp), %eax
	addl	$5, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -604(%ebp)
	movl	-36(%ebp), %eax
	addl	$4, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -608(%ebp)
	movl	-36(%ebp), %eax
	addl	$3, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	-36(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	-36(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	-36(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	addl	%eax, %edx
	movl	-556(%ebp), %eax
	movl	%eax, 80(%esp)
	movl	-560(%ebp), %eax
	movl	%eax, 76(%esp)
	movl	-564(%ebp), %eax
	movl	%eax, 72(%esp)
	movl	-568(%ebp), %eax
	movl	%eax, 68(%esp)
	movl	-572(%ebp), %eax
	movl	%eax, 64(%esp)
	movl	-576(%ebp), %eax
	movl	%eax, 60(%esp)
	movl	-580(%ebp), %eax
	movl	%eax, 56(%esp)
	movl	-584(%ebp), %eax
	movl	%eax, 52(%esp)
	movl	-588(%ebp), %eax
	movl	%eax, 48(%esp)
	movl	-592(%ebp), %eax
	movl	%eax, 44(%esp)
	movl	-596(%ebp), %eax
	movl	%eax, 40(%esp)
	movl	-600(%ebp), %eax
	movl	%eax, 36(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	-608(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	%edi, 24(%esp)
	movl	%esi, 20(%esp)
	movl	%ebx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	%edx, (%esp)
	call	_sprintf
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	_strlen
	movl	$LC3, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$LC4, 4(%esp)
	leal	-548(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	leal	-548(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_pivot_tree_to_string
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	leal	-548(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_pivot_tree_to_string
	jmp	L7
L5:
	movl	8(%ebp), %eax
	movl	(%eax), %ebx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_strlen
	leal	(%ebx,%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	%edx, (%esp)
	call	_sprintf
L7:
	nop
	addl	$700, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section .rdata,"dr"
LC6:
	.ascii "  \0"
LC7:
	.ascii "[PIVOTTREE] contents:\12%s\0"
	.text
	.globl	_dbgprint_pivot_tree
	.def	_dbgprint_pivot_tree;	.scl	2;	.type	32;	.endef
_dbgprint_pivot_tree:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$0, -12(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	$LC6, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_pivot_tree_to_string
	movl	-12(%ebp), %eax
	testl	%eax, %eax
	je	L10
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC7, (%esp)
	call	_real_dprintf
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
L10:
	nop
	leave
	ret
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
	.section .rdata,"dr"
	.align 4
LC8:
	.ascii "[PIVOTTREE] Adding node to left\0"
	.align 4
LC9:
	.ascii "[PIVOTTREE] Adding node to left subtree\0"
	.align 4
LC10:
	.ascii "[PIVOTTREE] Adding node to right\0"
	.align 4
LC11:
	.ascii "[PIVOTTREE] Adding node to right subtree\0"
	.text
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
	jns	L14
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	L15
	movl	$LC8, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 20(%eax)
	movl	$0, %eax
	jmp	L16
L15:
	movl	$LC9, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_pivot_tree_add_node
	jmp	L16
L14:
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	jne	L17
	movl	$LC10, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 24(%eax)
	movl	$0, %eax
	jmp	L16
L17:
	movl	$LC11, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_pivot_tree_add_node
L16:
	leave
	ret
	.section .rdata,"dr"
	.align 4
LC12:
	.ascii "[PIVOTTREE] Adding GUID: %02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X\0"
	.text
	.globl	_pivot_tree_add
	.def	_pivot_tree_add;	.scl	2;	.type	32;	.endef
_pivot_tree_add:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$156, %esp
	movl	$28, 4(%esp)
	movl	$1, (%esp)
	call	_calloc
	movl	%eax, -28(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	addl	$15, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	addl	$14, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -44(%ebp)
	movl	-32(%ebp), %eax
	addl	$13, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -48(%ebp)
	movl	-32(%ebp), %eax
	addl	$12, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -52(%ebp)
	movl	-32(%ebp), %eax
	addl	$11, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -56(%ebp)
	movl	-32(%ebp), %eax
	addl	$10, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -60(%ebp)
	movl	-32(%ebp), %eax
	addl	$9, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -64(%ebp)
	movl	-32(%ebp), %eax
	addl	$8, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -68(%ebp)
	movl	-32(%ebp), %eax
	addl	$7, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -72(%ebp)
	movl	-32(%ebp), %eax
	addl	$6, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -76(%ebp)
	movl	-32(%ebp), %eax
	addl	$5, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	-32(%ebp), %eax
	addl	$4, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	-32(%ebp), %eax
	addl	$3, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	-32(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	-32(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -80(%ebp)
	movl	-32(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 64(%esp)
	movl	-44(%ebp), %edx
	movl	%edx, 60(%esp)
	movl	-48(%ebp), %edx
	movl	%edx, 56(%esp)
	movl	-52(%ebp), %edx
	movl	%edx, 52(%esp)
	movl	-56(%ebp), %edx
	movl	%edx, 48(%esp)
	movl	-60(%ebp), %edx
	movl	%edx, 44(%esp)
	movl	-64(%ebp), %edx
	movl	%edx, 40(%esp)
	movl	-68(%ebp), %edx
	movl	%edx, 36(%esp)
	movl	-72(%ebp), %edx
	movl	%edx, 32(%esp)
	movl	-76(%ebp), %edx
	movl	%edx, 28(%esp)
	movl	%edi, 24(%esp)
	movl	%esi, 20(%esp)
	movl	%ebx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	-80(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC12, (%esp)
	call	_real_dprintf
	movl	-28(%ebp), %eax
	movl	$16, 8(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_memcpy
	movl	-28(%ebp), %eax
	movl	16(%ebp), %edx
	movl	%edx, 16(%eax)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L19
	movl	8(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, (%eax)
	movl	$0, %eax
	jmp	L20
L19:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_pivot_tree_add_node
L20:
	addl	$156, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.globl	_pivot_tree_largest_node
	.def	_pivot_tree_largest_node;	.scl	2;	.type	32;	.endef
_pivot_tree_largest_node:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	cmpl	$0, 8(%ebp)
	jne	L22
	movl	$0, %eax
	jmp	L23
L22:
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	jne	L24
	movl	8(%ebp), %eax
	jmp	L23
L24:
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	_pivot_tree_largest_node
L23:
	leave
	ret
	.section .rdata,"dr"
	.align 4
LC13:
	.ascii "[PIVOTTREE] Trying to remove from %p (%p) (%p)\0"
	.align 4
LC14:
	.ascii "[PIVOTTREE] Removing from left subtree\0"
	.align 4
LC15:
	.ascii "[PIVOTTREE] Right left compare: %d\0"
	.align 4
LC16:
	.ascii "[PIVOTTREE] Removing right child\0"
	.align 4
LC17:
	.ascii "[PIVOTTREE] Removing from right subtree\0"
	.align 4
LC18:
	.ascii "[PIVOTTREE] Right subtree compare: %d\0"
	.text
	.globl	_pivot_tree_remove_node
	.def	_pivot_tree_remove_node;	.scl	2;	.type	32;	.endef
_pivot_tree_remove_node:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$72, %esp
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC13, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	movl	$16, 8(%esp)
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_memcmp
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jns	L26
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	L26
	movl	$LC14, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	$16, 8(%esp)
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_memcmp
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC15, (%esp)
	call	_real_dprintf
	cmpl	$0, -16(%ebp)
	jne	L27
	movl	$LC16, (%esp)
	call	_real_dprintf
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
	je	L28
	movl	-20(%ebp), %eax
	movl	24(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%edx, 24(%eax)
	movl	8(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, 20(%eax)
	jmp	L29
L28:
	movl	-20(%ebp), %eax
	movl	24(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
L29:
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	-32(%ebp), %eax
	jmp	L30
L27:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_pivot_tree_remove_node
	jmp	L30
L26:
	cmpl	$0, -12(%ebp)
	jle	L31
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	L31
	movl	$LC17, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	$16, 8(%esp)
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_memcmp
	movl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC18, (%esp)
	call	_real_dprintf
	cmpl	$0, -36(%ebp)
	jne	L32
	movl	$LC16, (%esp)
	call	_real_dprintf
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
	je	L33
	movl	-40(%ebp), %eax
	movl	24(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%edx, 24(%eax)
	movl	8(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%edx, 24(%eax)
	jmp	L34
L33:
	movl	-40(%ebp), %eax
	movl	24(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 24(%eax)
L34:
	movl	-40(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -52(%ebp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	-52(%ebp), %eax
	jmp	L30
L32:
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_pivot_tree_remove_node
	jmp	L30
L31:
	movl	$0, %eax
L30:
	leave
	ret
	.section .rdata,"dr"
	.align 4
LC19:
	.ascii "[PIVOTTREE] Removing GUID: %02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X\0"
	.align 4
LC20:
	.ascii "[PIVOTTREE] Removing head node\0"
	.align 4
LC21:
	.ascii "[PIVOTTREE] Removing non-head node\0"
	.text
	.globl	_pivot_tree_remove
	.def	_pivot_tree_remove;	.scl	2;	.type	32;	.endef
_pivot_tree_remove:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$172, %esp
	movl	12(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	addl	$15, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	addl	$14, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -60(%ebp)
	movl	-28(%ebp), %eax
	addl	$13, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -64(%ebp)
	movl	-28(%ebp), %eax
	addl	$12, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -68(%ebp)
	movl	-28(%ebp), %eax
	addl	$11, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -72(%ebp)
	movl	-28(%ebp), %eax
	addl	$10, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -76(%ebp)
	movl	-28(%ebp), %eax
	addl	$9, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -80(%ebp)
	movl	-28(%ebp), %eax
	addl	$8, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -84(%ebp)
	movl	-28(%ebp), %eax
	addl	$7, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -88(%ebp)
	movl	-28(%ebp), %eax
	addl	$6, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -92(%ebp)
	movl	-28(%ebp), %eax
	addl	$5, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	-28(%ebp), %eax
	addl	$4, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	-28(%ebp), %eax
	addl	$3, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	-28(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	-28(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -96(%ebp)
	movl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 64(%esp)
	movl	-60(%ebp), %edx
	movl	%edx, 60(%esp)
	movl	-64(%ebp), %edx
	movl	%edx, 56(%esp)
	movl	-68(%ebp), %edx
	movl	%edx, 52(%esp)
	movl	-72(%ebp), %edx
	movl	%edx, 48(%esp)
	movl	-76(%ebp), %edx
	movl	%edx, 44(%esp)
	movl	-80(%ebp), %edx
	movl	%edx, 40(%esp)
	movl	-84(%ebp), %edx
	movl	%edx, 36(%esp)
	movl	-88(%ebp), %edx
	movl	%edx, 32(%esp)
	movl	-92(%ebp), %edx
	movl	%edx, 28(%esp)
	movl	%edi, 24(%esp)
	movl	%esi, 20(%esp)
	movl	%ebx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	-96(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC19, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L36
	movl	$0, %eax
	jmp	L37
L36:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	$16, 8(%esp)
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_memcmp
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	jne	L38
	movl	$LC20, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_pivot_tree_largest_node
	movl	%eax, -44(%ebp)
	cmpl	$0, -44(%ebp)
	je	L39
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	24(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%edx, 24(%eax)
	movl	8(%ebp), %eax
	movl	-40(%ebp), %edx
	movl	%edx, (%eax)
	jmp	L40
L39:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	24(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
L40:
	movl	-36(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -48(%ebp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	-48(%ebp), %eax
	jmp	L37
L38:
	movl	$LC21, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_pivot_tree_remove_node
L37:
	addl	$172, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section .rdata,"dr"
	.align 4
LC22:
	.ascii "[PIVOTTREE] Current pivot node is null, bailing out\0"
	.align 4
LC23:
	.ascii "[PIVOTTREE] Saerch GUID: %02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X\0"
	.align 4
LC24:
	.ascii "[PIVOTTREE] Node   GUID: %02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X\0"
LC25:
	.ascii "[PIVOTTREE] node found\0"
	.align 4
LC26:
	.ascii "[PIVOTTREE] Searching left subtree\0"
	.align 4
LC27:
	.ascii "[PIVOTTREE] Searching right subtree\0"
	.text
	.globl	_pivot_tree_find_node
	.def	_pivot_tree_find_node;	.scl	2;	.type	32;	.endef
_pivot_tree_find_node:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$156, %esp
	cmpl	$0, 8(%ebp)
	jne	L42
	movl	$LC22, (%esp)
	call	_real_dprintf
	movl	$0, %eax
	jmp	L43
L42:
	movl	12(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	addl	$15, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	addl	$14, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -44(%ebp)
	movl	-28(%ebp), %eax
	addl	$13, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -48(%ebp)
	movl	-28(%ebp), %eax
	addl	$12, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -52(%ebp)
	movl	-28(%ebp), %eax
	addl	$11, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -56(%ebp)
	movl	-28(%ebp), %eax
	addl	$10, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -60(%ebp)
	movl	-28(%ebp), %eax
	addl	$9, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -64(%ebp)
	movl	-28(%ebp), %eax
	addl	$8, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -68(%ebp)
	movl	-28(%ebp), %eax
	addl	$7, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -72(%ebp)
	movl	-28(%ebp), %eax
	addl	$6, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -76(%ebp)
	movl	-28(%ebp), %eax
	addl	$5, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	-28(%ebp), %eax
	addl	$4, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	-28(%ebp), %eax
	addl	$3, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	-28(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	-28(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -80(%ebp)
	movl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 64(%esp)
	movl	-44(%ebp), %edx
	movl	%edx, 60(%esp)
	movl	-48(%ebp), %edx
	movl	%edx, 56(%esp)
	movl	-52(%ebp), %edx
	movl	%edx, 52(%esp)
	movl	-56(%ebp), %edx
	movl	%edx, 48(%esp)
	movl	-60(%ebp), %edx
	movl	%edx, 44(%esp)
	movl	-64(%ebp), %edx
	movl	%edx, 40(%esp)
	movl	-68(%ebp), %edx
	movl	%edx, 36(%esp)
	movl	-72(%ebp), %edx
	movl	%edx, 32(%esp)
	movl	-76(%ebp), %edx
	movl	%edx, 28(%esp)
	movl	%edi, 24(%esp)
	movl	%esi, 20(%esp)
	movl	%ebx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	-80(%ebp), %ebx
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC23, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	addl	$15, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	addl	$14, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -44(%ebp)
	movl	-28(%ebp), %eax
	addl	$13, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -48(%ebp)
	movl	-28(%ebp), %eax
	addl	$12, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -52(%ebp)
	movl	-28(%ebp), %eax
	addl	$11, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -56(%ebp)
	movl	-28(%ebp), %eax
	addl	$10, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -60(%ebp)
	movl	-28(%ebp), %eax
	addl	$9, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -64(%ebp)
	movl	-28(%ebp), %eax
	addl	$8, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -68(%ebp)
	movl	-28(%ebp), %eax
	addl	$7, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -72(%ebp)
	movl	-28(%ebp), %eax
	addl	$6, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -76(%ebp)
	movl	-28(%ebp), %eax
	addl	$5, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	-28(%ebp), %eax
	addl	$4, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	-28(%ebp), %eax
	addl	$3, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	-28(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	-28(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -80(%ebp)
	movl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 64(%esp)
	movl	-44(%ebp), %edx
	movl	%edx, 60(%esp)
	movl	-48(%ebp), %edx
	movl	%edx, 56(%esp)
	movl	-52(%ebp), %edx
	movl	%edx, 52(%esp)
	movl	-56(%ebp), %edx
	movl	%edx, 48(%esp)
	movl	-60(%ebp), %edx
	movl	%edx, 44(%esp)
	movl	-64(%ebp), %edx
	movl	%edx, 40(%esp)
	movl	-68(%ebp), %edx
	movl	%edx, 36(%esp)
	movl	-72(%ebp), %edx
	movl	%edx, 32(%esp)
	movl	-76(%ebp), %edx
	movl	%edx, 28(%esp)
	movl	%edi, 24(%esp)
	movl	%esi, 20(%esp)
	movl	%ebx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	-80(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC24, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	movl	$16, 8(%esp)
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_memcmp
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	jne	L44
	movl	$LC25, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	jmp	L43
L44:
	cmpl	$0, -32(%ebp)
	jns	L45
	movl	$LC26, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_pivot_tree_find_node
	jmp	L43
L45:
	movl	$LC27, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_pivot_tree_find_node
L43:
	addl	$156, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section .rdata,"dr"
	.align 4
LC28:
	.ascii "[PIVOTTREE] search tree %p, head node %p\0"
	.text
	.globl	_pivot_tree_find
	.def	_pivot_tree_find;	.scl	2;	.type	32;	.endef
_pivot_tree_find:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC28, (%esp)
	call	_real_dprintf
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
	je	L50
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
L50:
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
	je	L54
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
L54:
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
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	_vsnprintf_s;	.scl	2;	.type	32;	.endef
	.def	_realloc;	.scl	2;	.type	32;	.endef
	.def	_sprintf;	.scl	2;	.type	32;	.endef
	.def	_free;	.scl	2;	.type	32;	.endef
	.def	_calloc;	.scl	2;	.type	32;	.endef
	.def	_memcmp;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
