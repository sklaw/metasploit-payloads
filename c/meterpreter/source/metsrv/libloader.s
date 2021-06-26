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
	movl	%esp, %ebp
	subl	$16, %esp
	movl	$0, -4(%ebp)
	jmp	L2
L9:
	movl	$0, -8(%ebp)
	jmp	L3
L6:
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	-4(%ebp), %ecx
	movl	-8(%ebp), %edx
	addl	%ecx, %edx
	addl	%edx, %edx
	addl	%edx, %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	8(%ebp), %ecx
	movl	-8(%ebp), %eax
	addl	%ecx, %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	cmpl	%eax, %edx
	jne	L10
	addl	$1, -8(%ebp)
L3:
	movl	8(%ebp), %eax
	movl	256(%eax), %eax
	cmpl	%eax, -8(%ebp)
	jl	L6
	jmp	L5
L10:
	nop
L5:
	movl	8(%ebp), %eax
	movl	256(%eax), %eax
	cmpl	%eax, -8(%ebp)
	jne	L7
	movl	$0, %eax
	jmp	L8
L7:
	addl	$1, -4(%ebp)
L2:
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	cmpl	%eax, -4(%ebp)
	jl	L9
	movl	$1, %eax
L8:
	leave
	ret
	.globl	_m_NtOpenSection@12
	.def	_m_NtOpenSection@12;	.scl	2;	.type	32;	.endef
_m_NtOpenSection@12:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	16(%ebp), %eax
	movl	8(%eax), %edx
	movl	_ctx, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_find_string
	testl	%eax, %eax
	jne	L12
	movl	_ctx, %eax
	movl	268(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$0, %eax
	jmp	L13
L12:
	movl	_ctx, %eax
	movl	360(%eax), %eax
	movl	16(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	subl	$12, %esp
L13:
	leave
	ret	$12
	.globl	_m_NtQueryAttributesFile@8
	.def	_m_NtQueryAttributesFile@8;	.scl	2;	.type	32;	.endef
_m_NtQueryAttributesFile@8:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	_ctx, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_find_string
	testl	%eax, %eax
	jne	L15
	movl	12(%ebp), %eax
	movl	$2116508896, (%eax)
	movl	12(%ebp), %eax
	movl	$29631226, 4(%eax)
	movl	12(%ebp), %eax
	movl	$-1910022944, 8(%eax)
	movl	12(%ebp), %eax
	movl	$29631226, 12(%eax)
	movl	12(%ebp), %eax
	movl	$2116508896, 16(%eax)
	movl	12(%ebp), %eax
	movl	$29631226, 20(%eax)
	movl	12(%ebp), %eax
	movl	$2116508896, 24(%eax)
	movl	12(%ebp), %eax
	movl	$29631226, 28(%eax)
	movl	12(%ebp), %eax
	movl	$128, 32(%eax)
	movl	$0, %eax
	jmp	L16
L15:
	movl	_ctx, %eax
	movl	364(%eax), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	subl	$8, %esp
L16:
	leave
	ret	$8
	.globl	_m_NtOpenFile@24
	.def	_m_NtOpenFile@24;	.scl	2;	.type	32;	.endef
_m_NtOpenFile@24:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	16(%ebp), %eax
	movl	8(%eax), %edx
	movl	_ctx, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_find_string
	testl	%eax, %eax
	jne	L18
	movl	_ctx, %eax
	movl	268(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	jmp	L17
L18:
	movl	_ctx, %eax
	movl	368(%eax), %eax
	movl	28(%ebp), %edx
	movl	%edx, 20(%esp)
	movl	24(%ebp), %edx
	movl	%edx, 16(%esp)
	movl	20(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	16(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	subl	$24, %esp
	nop
L17:
	leave
	ret	$24
	.globl	_m_NtCreateSection@28
	.def	_m_NtCreateSection@28;	.scl	2;	.type	32;	.endef
_m_NtCreateSection@28:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	_ctx, %eax
	movl	268(%eax), %eax
	cmpl	%eax, 32(%ebp)
	jne	L21
	movl	_ctx, %eax
	movl	268(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$0, %eax
	jmp	L22
L21:
	movl	_ctx, %eax
	movl	372(%eax), %eax
	movl	32(%ebp), %edx
	movl	%edx, 24(%esp)
	movl	28(%ebp), %edx
	movl	%edx, 20(%esp)
	movl	24(%ebp), %edx
	movl	%edx, 16(%esp)
	movl	20(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	16(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	subl	$28, %esp
L22:
	leave
	ret	$28
	.globl	_m_NtMapViewOfSection@40
	.def	_m_NtMapViewOfSection@40;	.scl	2;	.type	32;	.endef
_m_NtMapViewOfSection@40:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$56, %esp
	movl	_ctx, %eax
	movl	268(%eax), %eax
	cmpl	%eax, 8(%ebp)
	jne	L24
	movl	_ctx, %eax
	movl	268(%eax), %eax
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	movl	_ctx, %eax
	movl	272(%eax), %edx
	movl	32(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1073741827, %eax
	jmp	L25
L24:
	movl	_ctx, %eax
	movl	376(%eax), %eax
	movl	44(%ebp), %edx
	movl	%edx, 36(%esp)
	movl	40(%ebp), %edx
	movl	%edx, 32(%esp)
	movl	36(%ebp), %edx
	movl	%edx, 28(%esp)
	movl	32(%ebp), %edx
	movl	%edx, 24(%esp)
	movl	28(%ebp), %edx
	movl	%edx, 20(%esp)
	movl	24(%ebp), %edx
	movl	%edx, 16(%esp)
	movl	20(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	16(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	subl	$40, %esp
L25:
	leave
	ret	$40
	.globl	_m_NtClose@4
	.def	_m_NtClose@4;	.scl	2;	.type	32;	.endef
_m_NtClose@4:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	_ctx, %eax
	movl	268(%eax), %eax
	cmpl	%eax, 8(%ebp)
	jne	L27
	movl	$0, %eax
	jmp	L28
L27:
	movl	_ctx, %eax
	movl	380(%eax), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	subl	$4, %esp
L28:
	leave
	ret	$4
	.globl	_patch_function
	.def	_patch_function;	.scl	2;	.type	32;	.endef
_patch_function:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$84, %esp
	movl	$5, -12(%ebp)
	movl	12(%ebp), %eax
	leal	-20(%ebp), %edx
	movl	%edx, 16(%esp)
	movl	-12(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$-1, (%esp)
	movl	__imp__WriteProcessMemory@20, %eax
	call	*%eax
	subl	$20, %esp
	movl	16(%ebp), %edx
	movl	-12(%ebp), %eax
	addl	%edx, %eax
	movb	$-23, (%eax)
	movl	16(%ebp), %eax
	movl	12(%ebp), %edx
	subl	%eax, %edx
	movl	-12(%ebp), %eax
	leal	1(%eax), %ecx
	movl	16(%ebp), %eax
	addl	%ecx, %eax
	subl	$5, %edx
	movl	%edx, (%eax)
	movl	12(%ebp), %eax
	movl	$28, 8(%esp)
	leal	-48(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__VirtualQuery@12, %eax
	call	*%eax
	subl	$12, %esp
	movl	-36(%ebp), %edx
	movl	-48(%ebp), %eax
	leal	-48(%ebp), %ecx
	addl	$20, %ecx
	movl	%ecx, 12(%esp)
	movl	$64, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__VirtualProtect@16, %eax
	call	*%eax
	subl	$16, %esp
	movl	12(%ebp), %eax
	movb	$-23, (%eax)
	movl	20(%ebp), %eax
	subl	12(%ebp), %eax
	movl	12(%ebp), %edx
	addl	$1, %edx
	subl	$5, %eax
	movl	%eax, (%edx)
	movl	-28(%ebp), %ecx
	movl	-36(%ebp), %edx
	movl	-48(%ebp), %eax
	leal	-16(%ebp), %ebx
	movl	%ebx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__VirtualProtect@16, %eax
	call	*%eax
	subl	$16, %esp
	movl	-36(%ebp), %edx
	movl	-48(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$-1, (%esp)
	movl	__imp__FlushInstructionCache@12, %eax
	call	*%eax
	subl	$12, %esp
	nop
	movl	-4(%ebp), %ebx
	leave
	ret
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
	movl	%esp, %ebp
	subl	$56, %esp
	movl	$LC0, (%esp)
	movl	__imp__LoadLibraryA@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	L33
	movl	$LC1, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__GetProcAddress@8, %eax
	call	*%eax
	subl	$8, %esp
	movl	%eax, -16(%ebp)
	movl	$LC2, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__GetProcAddress@8, %eax
	call	*%eax
	subl	$8, %esp
	movl	%eax, -20(%ebp)
	movl	$LC3, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__GetProcAddress@8, %eax
	call	*%eax
	subl	$8, %esp
	movl	%eax, -24(%ebp)
	movl	$LC4, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__GetProcAddress@8, %eax
	call	*%eax
	subl	$8, %esp
	movl	%eax, -28(%ebp)
	movl	$LC5, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__GetProcAddress@8, %eax
	call	*%eax
	subl	$8, %esp
	movl	%eax, -32(%ebp)
	movl	$LC6, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__GetProcAddress@8, %eax
	call	*%eax
	subl	$8, %esp
	movl	%eax, -36(%ebp)
	movl	8(%ebp), %eax
	leal	316(%eax), %edx
	movl	-16(%ebp), %eax
	movl	$_m_NtMapViewOfSection@40, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_patch_function
	movl	8(%ebp), %eax
	addl	$316, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 376(%eax)
	movl	8(%ebp), %eax
	leal	286(%eax), %edx
	movl	-20(%ebp), %eax
	movl	$_m_NtQueryAttributesFile@8, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_patch_function
	movl	8(%ebp), %eax
	addl	$286, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 364(%eax)
	movl	8(%ebp), %eax
	leal	296(%eax), %edx
	movl	-24(%ebp), %eax
	movl	$_m_NtOpenFile@24, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_patch_function
	movl	8(%ebp), %eax
	addl	$296, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 368(%eax)
	movl	8(%ebp), %eax
	leal	306(%eax), %edx
	movl	-28(%ebp), %eax
	movl	$_m_NtCreateSection@28, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_patch_function
	movl	8(%ebp), %eax
	addl	$306, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 372(%eax)
	movl	8(%ebp), %eax
	leal	276(%eax), %edx
	movl	-32(%ebp), %eax
	movl	$_m_NtOpenSection@12, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_patch_function
	movl	8(%ebp), %eax
	addl	$276, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 360(%eax)
	movl	8(%ebp), %eax
	leal	326(%eax), %edx
	movl	-36(%ebp), %eax
	movl	$_m_NtClose@4, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_patch_function
	movl	8(%ebp), %eax
	addl	$326, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 380(%eax)
	jmp	L30
L33:
	nop
L30:
	leave
	ret
	.globl	_restore_function
	.def	_restore_function;	.scl	2;	.type	32;	.endef
_restore_function:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$84, %esp
	movl	$5, -12(%ebp)
	movl	12(%ebp), %eax
	movl	$28, 8(%esp)
	leal	-48(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__VirtualQuery@12, %eax
	call	*%eax
	subl	$12, %esp
	movl	-36(%ebp), %edx
	movl	-48(%ebp), %eax
	leal	-48(%ebp), %ecx
	addl	$20, %ecx
	movl	%ecx, 12(%esp)
	movl	$64, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__VirtualProtect@16, %eax
	call	*%eax
	subl	$16, %esp
	movl	12(%ebp), %eax
	leal	-20(%ebp), %edx
	movl	%edx, 16(%esp)
	movl	-12(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	16(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$-1, (%esp)
	movl	__imp__WriteProcessMemory@20, %eax
	call	*%eax
	subl	$20, %esp
	movl	-28(%ebp), %ecx
	movl	-36(%ebp), %edx
	movl	-48(%ebp), %eax
	leal	-16(%ebp), %ebx
	movl	%ebx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__VirtualProtect@16, %eax
	call	*%eax
	subl	$16, %esp
	movl	-36(%ebp), %edx
	movl	-48(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$-1, (%esp)
	movl	__imp__FlushInstructionCache@12, %eax
	call	*%eax
	subl	$12, %esp
	nop
	movl	-4(%ebp), %ebx
	leave
	ret
	.globl	_remove_hooks
	.def	_remove_hooks;	.scl	2;	.type	32;	.endef
_remove_hooks:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$56, %esp
	movl	$LC0, (%esp)
	movl	__imp__LoadLibraryA@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	L38
	movl	$LC1, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__GetProcAddress@8, %eax
	call	*%eax
	subl	$8, %esp
	movl	%eax, -16(%ebp)
	movl	$LC2, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__GetProcAddress@8, %eax
	call	*%eax
	subl	$8, %esp
	movl	%eax, -20(%ebp)
	movl	$LC3, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__GetProcAddress@8, %eax
	call	*%eax
	subl	$8, %esp
	movl	%eax, -24(%ebp)
	movl	$LC4, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__GetProcAddress@8, %eax
	call	*%eax
	subl	$8, %esp
	movl	%eax, -28(%ebp)
	movl	$LC5, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__GetProcAddress@8, %eax
	call	*%eax
	subl	$8, %esp
	movl	%eax, -32(%ebp)
	movl	$LC6, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__GetProcAddress@8, %eax
	call	*%eax
	subl	$8, %esp
	movl	%eax, -36(%ebp)
	movl	8(%ebp), %eax
	leal	316(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_restore_function
	movl	8(%ebp), %eax
	leal	286(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_restore_function
	movl	8(%ebp), %eax
	leal	296(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_restore_function
	movl	8(%ebp), %eax
	leal	306(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_restore_function
	movl	8(%ebp), %eax
	leal	276(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_restore_function
	movl	8(%ebp), %eax
	leal	326(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_restore_function
	jmp	L35
L38:
	nop
L35:
	leave
	ret
	.section .rdata,"dr"
LC7:
	.ascii "NtLockVirtualMemory\0"
	.text
	.globl	_map_file
	.def	_map_file;	.scl	2;	.type	32;	.endef
_map_file:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$68, %esp
	movl	8(%ebp), %eax
	movl	264(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	movl	264(%eax), %edx
	movl	-16(%ebp), %eax
	movl	60(%eax), %eax
	addl	%edx, %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	80(%eax), %eax
	movl	-20(%ebp), %edx
	movl	52(%edx), %edx
	movl	$64, 12(%esp)
	movl	$12288, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	movl	__imp__VirtualAlloc@16, %eax
	call	*%eax
	subl	$16, %esp
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 268(%eax)
	movl	8(%ebp), %eax
	movl	268(%eax), %eax
	testl	%eax, %eax
	jne	L40
	movl	-20(%ebp), %eax
	movl	80(%eax), %eax
	movl	$64, 12(%esp)
	movl	$12288, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	movl	__imp__VirtualAlloc@16, %eax
	call	*%eax
	subl	$16, %esp
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 268(%eax)
L40:
	movl	-20(%ebp), %eax
	movl	80(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 272(%eax)
	movl	$LC0, (%esp)
	movl	__imp__GetModuleHandleA@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	$LC7, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__GetProcAddress@8, %eax
	call	*%eax
	subl	$8, %esp
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	je	L41
	movl	8(%ebp), %eax
	movl	268(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	-20(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	$1, 12(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$-1, (%esp)
	movl	-24(%ebp), %eax
	call	*%eax
	subl	$16, %esp
L41:
	movl	-20(%ebp), %eax
	movl	84(%eax), %eax
	movl	8(%ebp), %edx
	movl	264(%edx), %edx
	movl	%edx, %ecx
	movl	8(%ebp), %edx
	movl	268(%edx), %edx
	movl	$0, 16(%esp)
	movl	%eax, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$-1, (%esp)
	movl	__imp__WriteProcessMemory@20, %eax
	call	*%eax
	subl	$20, %esp
	movl	-20(%ebp), %eax
	movzwl	20(%eax), %eax
	movzwl	%ax, %edx
	movl	-20(%ebp), %eax
	addl	%edx, %eax
	addl	$24, %eax
	movl	%eax, -28(%ebp)
	movl	$0, -12(%ebp)
	jmp	L42
L43:
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	addl	%edx, %eax
	movl	16(%eax), %ecx
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	addl	%edx, %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	264(%eax), %eax
	addl	%edx, %eax
	movl	%eax, %ebx
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	addl	%edx, %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	268(%eax), %eax
	addl	%edx, %eax
	movl	$0, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$-1, (%esp)
	movl	__imp__WriteProcessMemory@20, %eax
	call	*%eax
	subl	$20, %esp
	addl	$1, -12(%ebp)
L42:
	movl	-20(%ebp), %eax
	movzwl	6(%eax), %eax
	movzwl	%ax, %eax
	cmpl	%eax, -12(%ebp)
	jl	L43
	nop
	nop
	movl	-4(%ebp), %ebx
	leave
	ret
	.globl	_libloader_load_library
	.def	_libloader_load_library;	.scl	2;	.type	32;	.endef
_libloader_load_library:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	$0, -16(%ebp)
	movl	$0, -20(%ebp)
	movl	$92, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_strrchr
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	L45
	movl	-16(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -12(%ebp)
L45:
	movl	$64, 12(%esp)
	movl	$4096, 8(%esp)
	movl	$384, 4(%esp)
	movl	$0, (%esp)
	movl	__imp__VirtualAlloc@16, %eax
	call	*%eax
	subl	$16, %esp
	movl	%eax, _ctx
	movl	_ctx, %eax
	testl	%eax, %eax
	jne	L46
	movl	$0, %eax
	jmp	L47
L46:
	movl	_ctx, %eax
	movl	%eax, (%esp)
	call	_install_hooks
	movl	_ctx, %eax
	movl	%eax, %edx
	movl	$255, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$256, 4(%esp)
	movl	%edx, (%esp)
	movl	__imp__strncpy_s, %eax
	call	*%eax
	movl	_ctx, %eax
	movl	%eax, (%esp)
	call	_strlen
	movl	%eax, %edx
	movl	_ctx, %eax
	addl	$1, %edx
	movl	%edx, 256(%eax)
	movl	_ctx, %eax
	movl	12(%ebp), %edx
	movl	%edx, 264(%eax)
	movl	_ctx, %eax
	movl	%eax, (%esp)
	call	_map_file
	movl	_ctx, %eax
	movl	%eax, (%esp)
	movl	__imp__LoadLibraryA@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	movl	_ctx, %eax
	movl	%eax, (%esp)
	call	_remove_hooks
	movl	_ctx, %eax
	movl	$32768, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__VirtualFree@12, %eax
	call	*%eax
	subl	$12, %esp
	movl	-20(%ebp), %eax
L47:
	leave
	ret
	.ident	"GCC: (GNU) 9.3-win32 20200320"
	.def	_strrchr;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
