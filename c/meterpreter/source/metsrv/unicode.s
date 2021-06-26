	.file	"unicode.c"
	.text
	.globl	_utf8_to_wchar
	.def	_utf8_to_wchar;	.scl	2;	.type	32;	.endef
_utf8_to_wchar:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$56, %esp
	cmpl	$0, 8(%ebp)
	jne	L2
	movl	$0, %eax
	jmp	L3
L2:
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$-1, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$8, 4(%esp)
	movl	$65001, (%esp)
	movl	__imp__MultiByteToWideChar@24, %eax
	call	*%eax
	subl	$24, %esp
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jg	L4
	movl	$0, %eax
	jmp	L3
L4:
	movl	-16(%ebp), %eax
	movl	$2, 4(%esp)
	movl	%eax, (%esp)
	call	_calloc
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jne	L5
	movl	$0, %eax
	jmp	L3
L5:
	movl	-16(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$-1, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$65001, (%esp)
	movl	__imp__MultiByteToWideChar@24, %eax
	call	*%eax
	subl	$24, %esp
	testl	%eax, %eax
	jne	L6
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	$0, -12(%ebp)
L6:
	movl	-12(%ebp), %eax
L3:
	leave
	ret
	.globl	_wchar_to_utf8
	.def	_wchar_to_utf8;	.scl	2;	.type	32;	.endef
_wchar_to_utf8:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$56, %esp
	cmpl	$0, 8(%ebp)
	jne	L8
	movl	$0, %eax
	jmp	L9
L8:
	movl	$0, 28(%esp)
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$-1, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$65001, (%esp)
	movl	__imp__WideCharToMultiByte@32, %eax
	call	*%eax
	subl	$32, %esp
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jg	L10
	movl	$0, %eax
	jmp	L9
L10:
	movl	-16(%ebp), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	_calloc
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jne	L11
	movl	$0, %eax
	jmp	L9
L11:
	movl	$0, 28(%esp)
	movl	$0, 24(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$-1, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$65001, (%esp)
	movl	__imp__WideCharToMultiByte@32, %eax
	call	*%eax
	subl	$32, %esp
	testl	%eax, %eax
	jne	L12
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	$0, -12(%ebp)
L12:
	movl	-12(%ebp), %eax
L9:
	leave
	ret
	.ident	"GCC: (GNU) 9.3-win32 20200320"
	.def	_calloc;	.scl	2;	.type	32;	.endef
	.def	_free;	.scl	2;	.type	32;	.endef
