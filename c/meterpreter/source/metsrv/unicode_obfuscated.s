	.file	"unicode.c"
	.text
	.globl	_utf8_to_wchar
	.def	_utf8_to_wchar;	.scl	2;	.type	32;	.endef
_utf8_to_wchar:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$56, %esp
push %eax
pop %eax
	cmpl	$0, 8(%ebp)
push %eax
pop %eax
	jne	L2
push %eax
pop %eax
	movl	$0, %eax
push %eax
pop %eax
	jmp	L3
push %eax
pop %eax
L2:
	movl	$0, 20(%esp)
push %eax
pop %eax
	movl	$0, 16(%esp)
push %eax
pop %eax
	movl	$-1, 12(%esp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$8, 4(%esp)
push %eax
pop %eax
	movl	$65001, (%esp)
push %eax
pop %eax
	movl	__imp__MultiByteToWideChar@24, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$24, %esp
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
	cmpl	$0, -16(%ebp)
push %eax
pop %eax
	jg	L4
push %eax
pop %eax
	movl	$0, %eax
push %eax
pop %eax
	jmp	L3
push %eax
pop %eax
L4:
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	$2, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_calloc
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	cmpl	$0, -12(%ebp)
push %eax
pop %eax
	jne	L5
push %eax
pop %eax
	movl	$0, %eax
push %eax
pop %eax
	jmp	L3
push %eax
pop %eax
L5:
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 20(%esp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 16(%esp)
push %eax
pop %eax
	movl	$-1, 12(%esp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$0, 4(%esp)
push %eax
pop %eax
	movl	$65001, (%esp)
push %eax
pop %eax
	movl	__imp__MultiByteToWideChar@24, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$24, %esp
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L6
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_free
push %eax
pop %eax
	movl	$0, -12(%ebp)
push %eax
pop %eax
L6:
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
	.globl	_wchar_to_utf8
	.def	_wchar_to_utf8;	.scl	2;	.type	32;	.endef
_wchar_to_utf8:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$56, %esp
push %eax
pop %eax
	cmpl	$0, 8(%ebp)
push %eax
pop %eax
	jne	L8
push %eax
pop %eax
	movl	$0, %eax
push %eax
pop %eax
	jmp	L9
push %eax
pop %eax
L8:
	movl	$0, 28(%esp)
push %eax
pop %eax
	movl	$0, 24(%esp)
push %eax
pop %eax
	movl	$0, 20(%esp)
push %eax
pop %eax
	movl	$0, 16(%esp)
push %eax
pop %eax
	movl	$-1, 12(%esp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$0, 4(%esp)
push %eax
pop %eax
	movl	$65001, (%esp)
push %eax
pop %eax
	movl	__imp__WideCharToMultiByte@32, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$32, %esp
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
	cmpl	$0, -16(%ebp)
push %eax
pop %eax
	jg	L10
push %eax
pop %eax
	movl	$0, %eax
push %eax
pop %eax
	jmp	L9
push %eax
pop %eax
L10:
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	$1, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_calloc
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	cmpl	$0, -12(%ebp)
push %eax
pop %eax
	jne	L11
push %eax
pop %eax
	movl	$0, %eax
push %eax
pop %eax
	jmp	L9
push %eax
pop %eax
L11:
	movl	$0, 28(%esp)
push %eax
pop %eax
	movl	$0, 24(%esp)
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 20(%esp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 16(%esp)
push %eax
pop %eax
	movl	$-1, 12(%esp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$0, 4(%esp)
push %eax
pop %eax
	movl	$65001, (%esp)
push %eax
pop %eax
	movl	__imp__WideCharToMultiByte@32, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$32, %esp
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L12
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_free
push %eax
pop %eax
	movl	$0, -12(%ebp)
push %eax
pop %eax
L12:
	movl	-12(%ebp), %eax
push %eax
pop %eax
L9:
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.ident	"GCC: (GNU) 9.3-win32 20200320"
	.def	_calloc;	.scl	2;	.type	32;	.endef
	.def	_free;	.scl	2;	.type	32;	.endef
