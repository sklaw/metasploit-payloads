	.file	"server_transport_winhttp.c"
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
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	pushl	%esi
push %eax
pop %eax
	pushl	%ebx
push %eax
pop %eax
	subl	$1072, %esp
push %eax
pop %eax
	movl	__imp__GetCurrentThreadId@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	%eax, 16(%esp)
push %eax
pop %eax
	movl	$LC0, 12(%esp)
push %eax
pop %eax
	movl	$1023, 8(%esp)
push %eax
pop %eax
	movl	$1024, 4(%esp)
push %eax
pop %eax
	leal	-1040(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp___snprintf_s, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	leal	-1040(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_strlen
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	leal	12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
	movl	-16(%ebp), %ecx
push %eax
pop %eax
	movl	$1021, %eax
push %eax
pop %eax
	subl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	$1024, %eax
push %eax
pop %eax
	subl	-12(%ebp), %eax
push %eax
pop %eax
	leal	-1040(%ebp), %esi
push %eax
pop %eax
	movl	-12(%ebp), %ebx
push %eax
pop %eax
	addl	%esi, %ebx
push %eax
pop %eax
	movl	%ecx, 16(%esp)
push %eax
pop %eax
	movl	8(%ebp), %ecx
push %eax
pop %eax
	movl	%ecx, 12(%esp)
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	%ebx, (%esp)
push %eax
pop %eax
	call	_vsnprintf_s
push %eax
pop %eax
	movl	$LC1, 8(%esp)
push %eax
pop %eax
	movl	$1024, 4(%esp)
push %eax
pop %eax
	leal	-1040(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__strcat_s, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	leal	-1040(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__OutputDebugStringA@4, %eax
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
	leal	-8(%ebp), %esp
push %eax
pop %eax
	popl	%ebx
push %eax
pop %eax
	popl	%esi
push %eax
pop %eax
	popl	%ebp
push %eax
pop %eax
	ret
push %eax
pop %eax
	.section .rdata,"dr"
LC2:
	.ascii "[%s] Setting secure flag..\0"
	.align 4
LC3:
	.ascii "[%s] opening request on connection %x to %S\0"
	.align 2
LC4:
	.ascii "G\0E\0T\0\0\0"
	.align 2
LC5:
	.ascii "P\0O\0S\0T\0\0\0"
	.align 4
LC6:
	.ascii "[%s] Failed WinHttpOpenRequest: %u\0"
LC7:
	.ascii "[PROXY] Got IE configuration\0"
LC8:
	.ascii "yes\0"
LC9:
	.ascii "no\0"
LC10:
	.ascii "[PROXY] AutoDetect: %s\0"
LC11:
	.ascii "[PROXY] Auto URL: %S\0"
LC12:
	.ascii "[PROXY] Proxy: %S\0"
LC13:
	.ascii "[PROXY] Proxy Bypass: %S\0"
	.align 4
LC14:
	.ascii "[PROXY] IE config set to autodetect with DNS or DHCP\0"
	.align 4
LC15:
	.ascii "[PROXY] IE config set to autodetect with URL %S\0"
	.align 4
LC16:
	.ascii "[PROXY] IE config set to proxy %S with bypass %S\0"
	.align 4
LC17:
	.ascii "[%s] Unable to set proxy options: %u\0"
	.align 4
LC18:
	.ascii "[%s] Setting proxy username to %S\0"
	.align 4
LC19:
	.ascii "[%s] Failed to set username %u\0"
	.align 4
LC20:
	.ascii "[%s] Setting proxy password to %S\0"
	.align 4
LC21:
	.ascii "[%s] Failed to set password %u\0"
	.align 4
LC22:
	.ascii "[%s] failed to set the security flags on the request\0"
	.text
	.def	_get_request_winhttp;	.scl	3;	.type	32;	.endef
_get_request_winhttp:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	pushl	%ebx
push %eax
pop %eax
	subl	$100, %esp
push %eax
pop %eax
	movl	$0, -12(%ebp)
push %eax
pop %eax
	movl	$256, -20(%ebp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L3
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	orl	$8388608, %eax
push %eax
pop %eax
	movl	%eax, -20(%ebp)
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC2, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
L3:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	24(%eax), %edx
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	8(%eax), %eax
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
	movl	$LC3, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-20(%ebp), %ecx
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	24(%eax), %edx
push %eax
pop %eax
	cmpl	$0, 12(%ebp)
push %eax
pop %eax
	je	L4
push %eax
pop %eax
	movl	$LC4, %ebx
push %eax
pop %eax
	jmp	L5
push %eax
pop %eax
L4:
	movl	$LC5, %ebx
push %eax
pop %eax
L5:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	8(%eax), %eax
push %eax
pop %eax
	movl	%ecx, 24(%esp)
push %eax
pop %eax
	movl	$0, 20(%esp)
push %eax
pop %eax
	movl	$0, 16(%esp)
push %eax
pop %eax
	movl	$0, 12(%esp)
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	%ebx, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_WinHttpOpenRequest@28
push %eax
pop %eax
	subl	$28, %esp
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	cmpl	$0, -12(%ebp)
push %eax
pop %eax
	jne	L6
push %eax
pop %eax
	movl	__imp__GetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
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
	movl	$LC6, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	$1168, (%esp)
push %eax
pop %eax
	movl	__imp__SetLastError@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	movl	$0, %eax
push %eax
pop %eax
	jmp	L26
push %eax
pop %eax
L6:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	32(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L8
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	48(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L9
push %eax
pop %eax
	movl	$0, -36(%ebp)
push %eax
pop %eax
	movl	$0, -32(%ebp)
push %eax
pop %eax
	movl	$0, -28(%ebp)
push %eax
pop %eax
	movl	$0, -24(%ebp)
push %eax
pop %eax
	leal	-36(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_WinHttpGetIEProxyConfigForCurrentUser@4
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L10
push %eax
pop %eax
	movl	$LC7, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L11
push %eax
pop %eax
	movl	$LC8, %eax
push %eax
pop %eax
	jmp	L12
push %eax
pop %eax
L11:
	movl	$LC9, %eax
push %eax
pop %eax
L12:
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC10, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC11, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC12, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC13, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L13
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L14
push %eax
pop %eax
L13:
	movl	$0, %ecx
push %eax
pop %eax
	movl	$24, %eax
push %eax
pop %eax
	andl	$-4, %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	$0, %eax
push %eax
pop %eax
L15:
	movl	%ecx, -60(%ebp,%eax)
push %eax
pop %eax
	addl	$4, %eax
push %eax
pop %eax
	cmpl	%edx, %eax
push %eax
pop %eax
	jb	L15
push %eax
pop %eax
	movl	$0, -72(%ebp)
push %eax
pop %eax
	movl	$0, -68(%ebp)
push %eax
pop %eax
	movl	$0, -64(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L17
push %eax
pop %eax
	movl	$LC14, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	$1, -60(%ebp)
push %eax
pop %eax
	movl	$3, -56(%ebp)
push %eax
pop %eax
	movl	$0, -52(%ebp)
push %eax
pop %eax
	jmp	L18
push %eax
pop %eax
L17:
	movl	-32(%ebp), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L18
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC15, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	$2, -60(%ebp)
push %eax
pop %eax
	movl	$0, -56(%ebp)
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -52(%ebp)
push %eax
pop %eax
L18:
	movl	$1, -40(%ebp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	16(%eax), %edx
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	leal	-72(%ebp), %ecx
push %eax
pop %eax
	movl	%ecx, 12(%esp)
push %eax
pop %eax
	leal	-60(%ebp), %ecx
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
	call	_WinHttpGetProxyForUrl@16
push %eax
pop %eax
	subl	$16, %esp
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L27
push %eax
pop %eax
	movl	$12, (%esp)
push %eax
pop %eax
	call	_malloc
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 52(%eax)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	52(%eax), %eax
push %eax
pop %eax
	movl	-72(%ebp), %edx
push %eax
pop %eax
	movl	%edx, (%eax)
push %eax
pop %eax
	movl	-68(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 4(%eax)
push %eax
pop %eax
	movl	-64(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 8(%eax)
push %eax
pop %eax
	jmp	L27
push %eax
pop %eax
L14:
	movl	-28(%ebp), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L20
push %eax
pop %eax
	movl	$12, 4(%esp)
push %eax
pop %eax
	movl	$1, (%esp)
push %eax
pop %eax
	call	_calloc
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	-16(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 52(%eax)
push %eax
pop %eax
	movl	-24(%ebp), %edx
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
	movl	$LC16, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	$3, (%eax)
push %eax
pop %eax
	movl	-28(%ebp), %edx
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 4(%eax)
push %eax
pop %eax
	movl	-24(%ebp), %edx
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 8(%eax)
push %eax
pop %eax
	movl	$0, -28(%ebp)
push %eax
pop %eax
	movl	$0, -24(%ebp)
push %eax
pop %eax
	jmp	L20
push %eax
pop %eax
L27:
	nop
push %eax
pop %eax
L20:
	movl	-32(%ebp), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L21
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__GlobalFree@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
L21:
	movl	-28(%ebp), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L22
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__GlobalFree@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
L22:
	movl	-24(%ebp), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L10
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__GlobalFree@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
L10:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	$1, 48(%eax)
push %eax
pop %eax
L9:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	52(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L23
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	52(%eax), %eax
push %eax
pop %eax
	movl	$12, 12(%esp)
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$38, 4(%esp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_WinHttpSetOption@16
push %eax
pop %eax
	subl	$16, %esp
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L23
push %eax
pop %eax
	movl	__imp__GetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC17, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L23
push %eax
pop %eax
L8:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	36(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L24
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	36(%eax), %eax
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
	movl	$LC18, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	36(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_wcslen
push %eax
pop %eax
	movl	8(%ebp), %edx
push %eax
pop %eax
	movl	36(%edx), %edx
push %eax
pop %eax
	movl	%eax, 12(%esp)
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	$4098, 4(%esp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_WinHttpSetOption@16
push %eax
pop %eax
	subl	$16, %esp
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L24
push %eax
pop %eax
	movl	__imp__GetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
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
	movl	$LC19, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
L24:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	40(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L23
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	40(%eax), %eax
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
	movl	$LC20, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	40(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_wcslen
push %eax
pop %eax
	movl	8(%ebp), %edx
push %eax
pop %eax
	movl	40(%edx), %edx
push %eax
pop %eax
	movl	%eax, 12(%esp)
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	$4099, 4(%esp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_WinHttpSetOption@16
push %eax
pop %eax
	subl	$16, %esp
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L23
push %eax
pop %eax
	movl	__imp__GetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
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
	movl	$LC21, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
L23:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L25
push %eax
pop %eax
	movl	$13056, -20(%ebp)
push %eax
pop %eax
	movl	$4, 12(%esp)
push %eax
pop %eax
	leal	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$31, 4(%esp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_WinHttpSetOption@16
push %eax
pop %eax
	subl	$16, %esp
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L25
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC22, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
L25:
	movl	-12(%ebp), %eax
push %eax
pop %eax
L26:
	movl	-4(%ebp), %ebx
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.def	_close_request_winhttp;	.scl	3;	.type	32;	.endef
_close_request_winhttp:
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
	call	_WinHttpCloseHandle@4
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.def	_read_response_winhttp;	.scl	3;	.type	32;	.endef
_read_response_winhttp:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$24, %esp
push %eax
pop %eax
	movl	20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 12(%esp)
push %eax
pop %eax
	movl	16(%ebp), %eax
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
	call	_WinHttpReadData@16
push %eax
pop %eax
	subl	$16, %esp
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.section .rdata,"dr"
	.align 4
LC23:
	.ascii "[WINHTTP] Sending with custom headers: %S\0"
	.text
	.def	_send_request_winhttp;	.scl	3;	.type	32;	.endef
_send_request_winhttp:
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
	movl	44(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L33
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	44(%eax), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC23, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	44(%eax), %eax
push %eax
pop %eax
	movl	$0, 24(%esp)
push %eax
pop %eax
	movl	20(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 20(%esp)
push %eax
pop %eax
	movl	20(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 16(%esp)
push %eax
pop %eax
	movl	16(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 12(%esp)
push %eax
pop %eax
	movl	$-1, 8(%esp)
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
	call	_WinHttpSendRequest@28
push %eax
pop %eax
	subl	$28, %esp
push %eax
pop %eax
	jmp	L34
push %eax
pop %eax
L33:
	movl	$0, 24(%esp)
push %eax
pop %eax
	movl	20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 20(%esp)
push %eax
pop %eax
	movl	20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 16(%esp)
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 12(%esp)
push %eax
pop %eax
	movl	$0, 8(%esp)
push %eax
pop %eax
	movl	$0, 4(%esp)
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_WinHttpSendRequest@28
push %eax
pop %eax
	subl	$28, %esp
push %eax
pop %eax
L34:
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.def	_receive_response_winhttp;	.scl	3;	.type	32;	.endef
_receive_response_winhttp:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$24, %esp
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
	call	_WinHttpReceiveResponse@8
push %eax
pop %eax
	subl	$8, %esp
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.section .rdata,"dr"
	.align 4
LC24:
	.ascii "[PACKET RECEIVE WINHTTP] Getting the result code...\0"
	.align 4
LC25:
	.ascii "[PACKET RECEIVE WINHTTP] Returned status code is %d\0"
	.align 4
LC26:
	.ascii "[PACKET RECEIVE WINHTTP] validating certificate hash\0"
	.align 4
LC27:
	.ascii "[PACKET RECEIVE WINHTTP] Failed to get the certificate context: %u\0"
	.align 4
LC28:
	.ascii "[PACKET RECEIVE WINHTTP] Failed to get the certificate hash: %u\0"
	.align 4
LC29:
	.ascii "[SERVER] Server hash set to: %02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x\0"
	.align 4
LC30:
	.ascii "[PACKET RECEIVE WINHTTP] Certificate hash doesn't match, bailing out\0"
	.text
	.def	_validate_response_winhttp;	.scl	3;	.type	32;	.endef
_validate_response_winhttp:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	pushl	%edi
push %eax
pop %eax
	pushl	%esi
push %eax
pop %eax
	pushl	%ebx
push %eax
pop %eax
	subl	$220, %esp
push %eax
pop %eax
	movl	$4, -32(%ebp)
push %eax
pop %eax
	movl	$LC24, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	$0, 20(%esp)
push %eax
pop %eax
	leal	-32(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 16(%esp)
push %eax
pop %eax
	leal	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 12(%esp)
push %eax
pop %eax
	movl	$0, 8(%esp)
push %eax
pop %eax
	movl	$536870931, 4(%esp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_WinHttpQueryHeaders@24
push %eax
pop %eax
	subl	$24, %esp
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L38
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC25, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	cmpl	$200, %eax
push %eax
pop %eax
	je	L38
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	12(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L39
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	cmpl	$407, %eax
push %eax
pop %eax
	jne	L39
push %eax
pop %eax
	movl	$12029, %eax
push %eax
pop %eax
	jmp	L46
push %eax
pop %eax
L39:
	movl	$1610, %eax
push %eax
pop %eax
	jmp	L46
push %eax
pop %eax
L38:
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	12(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L41
push %eax
pop %eax
	movl	$LC26, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	$0, -36(%ebp)
push %eax
pop %eax
	movl	$4, -40(%ebp)
push %eax
pop %eax
	leal	-40(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 12(%esp)
push %eax
pop %eax
	leal	-36(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$78, 4(%esp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_WinHttpQueryOption@16
push %eax
pop %eax
	subl	$16, %esp
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L42
push %eax
pop %eax
	movl	__imp__GetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC27, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	$12169, %eax
push %eax
pop %eax
	jmp	L46
push %eax
pop %eax
L42:
	movl	$20, -44(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	leal	-44(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 12(%esp)
push %eax
pop %eax
	leal	-64(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	$3, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__CertGetCertificateContextProperty@16, %eax
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
	jne	L44
push %eax
pop %eax
	movl	__imp__GetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC28, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	$12169, %eax
push %eax
pop %eax
	jmp	L46
push %eax
pop %eax
L44:
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	12(%eax), %eax
push %eax
pop %eax
	movl	$20, 8(%esp)
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	leal	-64(%ebp), %eax
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
	je	L41
push %eax
pop %eax
	movzbl	-45(%ebp), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movzbl	-46(%ebp), %eax
push %eax
pop %eax
	movzbl	%al, %ecx
push %eax
pop %eax
	movl	%ecx, -76(%ebp)
push %eax
pop %eax
	movzbl	-47(%ebp), %eax
push %eax
pop %eax
	movzbl	%al, %ebx
push %eax
pop %eax
	movl	%ebx, -80(%ebp)
push %eax
pop %eax
	movzbl	-48(%ebp), %eax
push %eax
pop %eax
	movzbl	%al, %esi
push %eax
pop %eax
	movl	%esi, -84(%ebp)
push %eax
pop %eax
	movzbl	-49(%ebp), %eax
push %eax
pop %eax
	movzbl	%al, %edi
push %eax
pop %eax
	movl	%edi, -88(%ebp)
push %eax
pop %eax
	movzbl	-50(%ebp), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%eax, -92(%ebp)
push %eax
pop %eax
	movzbl	-51(%ebp), %eax
push %eax
pop %eax
	movzbl	%al, %ecx
push %eax
pop %eax
	movl	%ecx, -96(%ebp)
push %eax
pop %eax
	movzbl	-52(%ebp), %eax
push %eax
pop %eax
	movzbl	%al, %ebx
push %eax
pop %eax
	movl	%ebx, -100(%ebp)
push %eax
pop %eax
	movzbl	-53(%ebp), %eax
push %eax
pop %eax
	movzbl	%al, %esi
push %eax
pop %eax
	movl	%esi, -104(%ebp)
push %eax
pop %eax
	movzbl	-54(%ebp), %eax
push %eax
pop %eax
	movzbl	%al, %edi
push %eax
pop %eax
	movl	%edi, -108(%ebp)
push %eax
pop %eax
	movzbl	-55(%ebp), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%eax, -112(%ebp)
push %eax
pop %eax
	movzbl	-56(%ebp), %eax
push %eax
pop %eax
	movzbl	%al, %ecx
push %eax
pop %eax
	movl	%ecx, -116(%ebp)
push %eax
pop %eax
	movzbl	-57(%ebp), %eax
push %eax
pop %eax
	movzbl	%al, %ebx
push %eax
pop %eax
	movl	%ebx, -120(%ebp)
push %eax
pop %eax
	movzbl	-58(%ebp), %eax
push %eax
pop %eax
	movzbl	%al, %esi
push %eax
pop %eax
	movl	%esi, -124(%ebp)
push %eax
pop %eax
	movzbl	-59(%ebp), %eax
push %eax
pop %eax
	movzbl	%al, %edi
push %eax
pop %eax
	movzbl	-60(%ebp), %eax
push %eax
pop %eax
	movzbl	%al, %esi
push %eax
pop %eax
	movzbl	-61(%ebp), %eax
push %eax
pop %eax
	movzbl	%al, %ebx
push %eax
pop %eax
	movzbl	-62(%ebp), %eax
push %eax
pop %eax
	movzbl	%al, %ecx
push %eax
pop %eax
	movzbl	-63(%ebp), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%eax, -128(%ebp)
push %eax
pop %eax
	movzbl	-64(%ebp), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%edx, 80(%esp)
push %eax
pop %eax
	movl	-76(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 76(%esp)
push %eax
pop %eax
	movl	-80(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 72(%esp)
push %eax
pop %eax
	movl	-84(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 68(%esp)
push %eax
pop %eax
	movl	-88(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 64(%esp)
push %eax
pop %eax
	movl	-92(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 60(%esp)
push %eax
pop %eax
	movl	-96(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 56(%esp)
push %eax
pop %eax
	movl	-100(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 52(%esp)
push %eax
pop %eax
	movl	-104(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 48(%esp)
push %eax
pop %eax
	movl	-108(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 44(%esp)
push %eax
pop %eax
	movl	-112(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 40(%esp)
push %eax
pop %eax
	movl	-116(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 36(%esp)
push %eax
pop %eax
	movl	-120(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 32(%esp)
push %eax
pop %eax
	movl	-124(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 28(%esp)
push %eax
pop %eax
	movl	%edi, 24(%esp)
push %eax
pop %eax
	movl	%esi, 20(%esp)
push %eax
pop %eax
	movl	%ebx, 16(%esp)
push %eax
pop %eax
	movl	%ecx, 12(%esp)
push %eax
pop %eax
	movl	-128(%ebp), %edi
push %eax
pop %eax
	movl	%edi, 8(%esp)
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC29, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	$LC30, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	$12169, %eax
push %eax
pop %eax
	jmp	L46
push %eax
pop %eax
L41:
	movl	$0, %eax
push %eax
pop %eax
L46:
	leal	-12(%ebp), %esp
push %eax
pop %eax
	popl	%ebx
push %eax
pop %eax
	popl	%esi
push %eax
pop %eax
	popl	%edi
push %eax
pop %eax
	popl	%ebp
push %eax
pop %eax
	ret
push %eax
pop %eax
	.section .rdata,"dr"
LC31:
	.ascii "PACKET TRANSMIT\0"
	.align 4
LC32:
	.ascii "[PACKET TRANSMIT] Failed HttpSendRequest: %d\0"
	.align 4
LC33:
	.ascii "[PACKET TRANSMIT] request sent.. apparently\0"
	.text
	.def	_packet_transmit_http;	.scl	3;	.type	32;	.endef
_packet_transmit_http:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$56, %esp
push %eax
pop %eax
	movl	$0, -12(%ebp)
push %eax
pop %eax
	movl	$5, -16(%ebp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	movl	48(%eax), %eax
push %eax
pop %eax
	movl	%eax, -20(%ebp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	20(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_lock_acquire
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	60(%eax), %eax
push %eax
pop %eax
	movl	$LC31, 8(%esp)
push %eax
pop %eax
	movl	$0, 4(%esp)
push %eax
pop %eax
	movl	-20(%ebp), %edx
push %eax
pop %eax
	movl	%edx, (%esp)
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	%eax, -24(%ebp)
push %eax
pop %eax
	cmpl	$0, -24(%ebp)
push %eax
pop %eax
	je	L52
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	64(%eax), %eax
push %eax
pop %eax
	movl	16(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 12(%esp)
push %eax
pop %eax
	movl	12(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	-24(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	-20(%ebp), %edx
push %eax
pop %eax
	movl	%edx, (%esp)
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	%eax, -28(%ebp)
push %eax
pop %eax
	cmpl	$0, -28(%ebp)
push %eax
pop %eax
	jne	L50
push %eax
pop %eax
	movl	__imp__GetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC32, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	$1168, (%esp)
push %eax
pop %eax
	movl	__imp__SetLastError@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	jmp	L49
push %eax
pop %eax
L50:
	movl	$LC33, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L49
push %eax
pop %eax
L52:
	nop
push %eax
pop %eax
L49:
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	68(%eax), %eax
push %eax
pop %eax
	movl	-24(%ebp), %edx
push %eax
pop %eax
	movl	%edx, (%esp)
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	20(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_lock_release
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.section .rdata,"dr"
LC34:
	.ascii "PACKET RECEIVE\0"
	.align 4
LC35:
	.ascii "[PACKET RECEIVE HTTP] sending GET\0"
	.align 4
LC36:
	.ascii "[PACKET RECEIVE HTTP] Failed send_req: %d %d\0"
	.align 4
LC37:
	.ascii "[PACKET RECEIVE HTTP] Waiting to see the response ...\0"
	.align 4
LC38:
	.ascii "[PACKET RECEIVE] Failed receive: %d\0"
	.align 4
LC39:
	.ascii "[PACKET RECEIVE HTTP] Start looping through the receive calls\0"
	.align 4
LC40:
	.ascii "[PACKET RECEIVE HTTP] Failed HEADER read_response: %d\0"
	.align 4
LC41:
	.ascii "[PACKET RECEIVE NHTTP] Data received: %u bytes\0"
	.align 4
LC42:
	.ascii "[PACKET RECEIVE HTTP] headerBytes not valid\0"
	.align 4
LC43:
	.ascii "[PACKET RECEIVE HTTP] decoding header\0"
	.align 4
LC44:
	.ascii "[HTTP] Packet header: [0x%02X 0x%02X 0x%02X 0x%02X] [0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X] [0x%02X 0x%02X 0x%02X 0x%02X] [0x%02X 0x%02X 0x%02X 0x%02X] [0x%02X 0x%02X 0x%02X 0x%02X]\0"
	.align 4
LC45:
	.ascii "[REC HTTP] Payload length is %d\0"
	.align 4
LC46:
	.ascii "[REC HTTP] total buffer size for the packet is %d\0"
	.align 4
LC47:
	.ascii "[REC HTTP] Failed to create the packet buffer\0"
	.align 4
LC48:
	.ascii "[REC HTTP] Allocated packet buffer at %p\0"
	.align 4
LC49:
	.ascii "[PACKET RECEIVE HTTP] reading more data from the body...\0"
	.align 4
LC50:
	.ascii "[PACKET RECEIVE] Failed BODY read_response: %d\0"
	.align 4
LC51:
	.ascii "[PACKET RECEIVE HTTP] no bytes read, bailing out\0"
	.align 4
LC52:
	.ascii "[PACKET RECEIVE HTTP] bytes read: %u\0"
	.align 4
LC53:
	.ascii "[HTTP] Packet Session GUID: %02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X\0"
	.align 4
LC54:
	.ascii "[HTTP] Session GUIDs match (or packet guid is null), decrypting packet\0"
	.align 4
LC55:
	.ascii "[HTTP] Session GUIDs don't match, looking for a pivot\0"
	.align 4
LC56:
	.ascii "[HTTP] Pivot found, dispatching packet on a thread (to avoid main thread blocking)\0"
	.align 4
LC57:
	.ascii "[HTTP] Session GUIDs don't match, can't find pivot!\0"
LC58:
	.ascii "[HTTP] Cleaning up\0"
	.align 4
LC59:
	.ascii "[HTTP] Packet receive finished\0"
	.text
	.def	_packet_receive_http;	.scl	3;	.type	32;	.endef
_packet_receive_http:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	pushl	%edi
push %eax
pop %eax
	pushl	%esi
push %eax
pop %eax
	pushl	%ebx
push %eax
pop %eax
	subl	$396, %esp
push %eax
pop %eax
	movl	$0, -28(%ebp)
push %eax
pop %eax
	movl	$0, -32(%ebp)
push %eax
pop %eax
	movl	$0, -48(%ebp)
push %eax
pop %eax
	movl	$1, -36(%ebp)
push %eax
pop %eax
	movl	$0, -40(%ebp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	movl	48(%eax), %eax
push %eax
pop %eax
	movl	%eax, -52(%ebp)
push %eax
pop %eax
	movl	$5, -44(%ebp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	20(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_lock_acquire
push %eax
pop %eax
	movl	-52(%ebp), %eax
push %eax
pop %eax
	movl	60(%eax), %eax
push %eax
pop %eax
	movl	$LC34, 8(%esp)
push %eax
pop %eax
	movl	$1, 4(%esp)
push %eax
pop %eax
	movl	-52(%ebp), %edx
push %eax
pop %eax
	movl	%edx, (%esp)
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	%eax, -56(%ebp)
push %eax
pop %eax
	cmpl	$0, -56(%ebp)
push %eax
pop %eax
	je	L80
push %eax
pop %eax
	movl	$LC35, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-52(%ebp), %eax
push %eax
pop %eax
	movl	64(%eax), %eax
push %eax
pop %eax
	movl	$0, 12(%esp)
push %eax
pop %eax
	movl	$0, 8(%esp)
push %eax
pop %eax
	movl	-56(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	-52(%ebp), %edx
push %eax
pop %eax
	movl	%edx, (%esp)
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	%eax, -60(%ebp)
push %eax
pop %eax
	cmpl	$0, -60(%ebp)
push %eax
pop %eax
	jne	L56
push %eax
pop %eax
	movl	__imp__WSAGetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	%eax, %ebx
push %eax
pop %eax
	movl	__imp__GetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	%ebx, 8(%esp)
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC36, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	$1168, (%esp)
push %eax
pop %eax
	movl	__imp__SetLastError@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	jmp	L55
push %eax
pop %eax
L56:
	movl	$LC37, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-52(%ebp), %eax
push %eax
pop %eax
	movl	76(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L57
push %eax
pop %eax
	movl	-52(%ebp), %eax
push %eax
pop %eax
	movl	76(%eax), %eax
push %eax
pop %eax
	movl	-56(%ebp), %edx
push %eax
pop %eax
	movl	%edx, (%esp)
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L57
push %eax
pop %eax
	movl	__imp__GetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC38, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	$1168, (%esp)
push %eax
pop %eax
	movl	__imp__SetLastError@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	jmp	L55
push %eax
pop %eax
L57:
	movl	-52(%ebp), %eax
push %eax
pop %eax
	movl	72(%eax), %eax
push %eax
pop %eax
	movl	-52(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	-56(%ebp), %edx
push %eax
pop %eax
	movl	%edx, (%esp)
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__SetLastError@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	movl	__imp__GetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L81
push %eax
pop %eax
	movl	$3, -44(%ebp)
push %eax
pop %eax
	movl	$LC39, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L59
push %eax
pop %eax
L64:
	subl	$1, -44(%ebp)
push %eax
pop %eax
	movl	-52(%ebp), %eax
push %eax
pop %eax
	movl	80(%eax), %eax
push %eax
pop %eax
	movl	$32, %edx
push %eax
pop %eax
	subl	-28(%ebp), %edx
push %eax
pop %eax
	leal	-116(%ebp), %ebx
push %eax
pop %eax
	movl	-28(%ebp), %ecx
push %eax
pop %eax
	addl	%ecx, %ebx
push %eax
pop %eax
	leal	-120(%ebp), %ecx
push %eax
pop %eax
	movl	%ecx, 12(%esp)
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	%ebx, 4(%esp)
push %eax
pop %eax
	movl	-56(%ebp), %edx
push %eax
pop %eax
	movl	%edx, (%esp)
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L60
push %eax
pop %eax
	movl	__imp__GetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC40, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	$1168, (%esp)
push %eax
pop %eax
	movl	__imp__SetLastError@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	jmp	L55
push %eax
pop %eax
L60:
	movl	-120(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC41, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-120(%ebp), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L61
push %eax
pop %eax
	movl	$4306, (%esp)
push %eax
pop %eax
	movl	__imp__SetLastError@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	jmp	L55
push %eax
pop %eax
L61:
	movl	-120(%ebp), %eax
push %eax
pop %eax
	addl	%eax, -28(%ebp)
push %eax
pop %eax
	cmpl	$32, -28(%ebp)
push %eax
pop %eax
	je	L62
push %eax
pop %eax
	jmp	L59
push %eax
pop %eax
L62:
	movl	$0, -36(%ebp)
push %eax
pop %eax
L59:
	cmpl	$0, -36(%ebp)
push %eax
pop %eax
	je	L63
push %eax
pop %eax
	cmpl	$0, -44(%ebp)
push %eax
pop %eax
	jne	L64
push %eax
pop %eax
L63:
	cmpl	$32, -28(%ebp)
push %eax
pop %eax
	je	L65
push %eax
pop %eax
	movl	$LC42, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	$1168, (%esp)
push %eax
pop %eax
	movl	__imp__SetLastError@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	jmp	L55
push %eax
pop %eax
L65:
	movl	$LC43, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-116(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -152(%ebp)
push %eax
pop %eax
	movl	-112(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -148(%ebp)
push %eax
pop %eax
	movl	-108(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -144(%ebp)
push %eax
pop %eax
	movl	-104(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -140(%ebp)
push %eax
pop %eax
	movl	-100(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -136(%ebp)
push %eax
pop %eax
	movl	-96(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -132(%ebp)
push %eax
pop %eax
	movl	-92(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -128(%ebp)
push %eax
pop %eax
	movl	-88(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -124(%ebp)
push %eax
pop %eax
	leal	-116(%ebp), %eax
push %eax
pop %eax
	addl	$4, %eax
push %eax
pop %eax
	movl	$28, 8(%esp)
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	leal	-116(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_xor_bytes
push %eax
pop %eax
	leal	-116(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -64(%ebp)
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	addl	$31, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	addl	$30, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %esi
push %eax
pop %eax
	movl	%esi, -156(%ebp)
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	addl	$29, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %edi
push %eax
pop %eax
	movl	%edi, -160(%ebp)
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	addl	$28, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ebx
push %eax
pop %eax
	movl	%ebx, -164(%ebp)
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	addl	$27, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ecx
push %eax
pop %eax
	movl	%ecx, -168(%ebp)
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	addl	$26, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%eax, -172(%ebp)
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	addl	$25, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %esi
push %eax
pop %eax
	movl	%esi, -176(%ebp)
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	addl	$24, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %edi
push %eax
pop %eax
	movl	%edi, -180(%ebp)
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	addl	$23, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ebx
push %eax
pop %eax
	movl	%ebx, -184(%ebp)
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	addl	$22, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ecx
push %eax
pop %eax
	movl	%ecx, -188(%ebp)
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	addl	$21, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%eax, -192(%ebp)
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	addl	$20, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %esi
push %eax
pop %eax
	movl	%esi, -196(%ebp)
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	addl	$19, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %edi
push %eax
pop %eax
	movl	%edi, -200(%ebp)
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	addl	$18, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ebx
push %eax
pop %eax
	movl	%ebx, -204(%ebp)
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	addl	$17, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ecx
push %eax
pop %eax
	movl	%ecx, -208(%ebp)
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	addl	$16, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%eax, -212(%ebp)
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	addl	$15, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %esi
push %eax
pop %eax
	movl	%esi, -216(%ebp)
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	addl	$14, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %edi
push %eax
pop %eax
	movl	%edi, -220(%ebp)
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	addl	$13, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ebx
push %eax
pop %eax
	movl	%ebx, -224(%ebp)
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	addl	$12, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ecx
push %eax
pop %eax
	movl	%ecx, -228(%ebp)
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	addl	$11, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%eax, -232(%ebp)
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	addl	$10, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %esi
push %eax
pop %eax
	movl	%esi, -236(%ebp)
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	addl	$9, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %edi
push %eax
pop %eax
	movl	%edi, -240(%ebp)
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	addl	$8, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ebx
push %eax
pop %eax
	movl	%ebx, -244(%ebp)
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	addl	$7, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ecx
push %eax
pop %eax
	movl	%ecx, -248(%ebp)
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	addl	$6, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%eax, -252(%ebp)
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	addl	$5, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %edi
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	addl	$4, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %esi
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	addl	$3, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ebx
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	addl	$2, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ecx
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	addl	$1, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%eax, -256(%ebp)
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%edx, 128(%esp)
push %eax
pop %eax
	movl	-156(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 124(%esp)
push %eax
pop %eax
	movl	-160(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 120(%esp)
push %eax
pop %eax
	movl	-164(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 116(%esp)
push %eax
pop %eax
	movl	-168(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 112(%esp)
push %eax
pop %eax
	movl	-172(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 108(%esp)
push %eax
pop %eax
	movl	-176(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 104(%esp)
push %eax
pop %eax
	movl	-180(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 100(%esp)
push %eax
pop %eax
	movl	-184(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 96(%esp)
push %eax
pop %eax
	movl	-188(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 92(%esp)
push %eax
pop %eax
	movl	-192(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 88(%esp)
push %eax
pop %eax
	movl	-196(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 84(%esp)
push %eax
pop %eax
	movl	-200(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 80(%esp)
push %eax
pop %eax
	movl	-204(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 76(%esp)
push %eax
pop %eax
	movl	-208(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 72(%esp)
push %eax
pop %eax
	movl	-212(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 68(%esp)
push %eax
pop %eax
	movl	-216(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 64(%esp)
push %eax
pop %eax
	movl	-220(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 60(%esp)
push %eax
pop %eax
	movl	-224(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 56(%esp)
push %eax
pop %eax
	movl	-228(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 52(%esp)
push %eax
pop %eax
	movl	-232(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 48(%esp)
push %eax
pop %eax
	movl	-236(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 44(%esp)
push %eax
pop %eax
	movl	-240(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 40(%esp)
push %eax
pop %eax
	movl	-244(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 36(%esp)
push %eax
pop %eax
	movl	-248(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 32(%esp)
push %eax
pop %eax
	movl	-252(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 28(%esp)
push %eax
pop %eax
	movl	%edi, 24(%esp)
push %eax
pop %eax
	movl	%esi, 20(%esp)
push %eax
pop %eax
	movl	%ebx, 16(%esp)
push %eax
pop %eax
	movl	%ecx, 12(%esp)
push %eax
pop %eax
	movl	-256(%ebp), %edi
push %eax
pop %eax
	movl	%edi, 8(%esp)
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC44, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-92(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__ntohl@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	subl	$8, %eax
push %eax
pop %eax
	movl	%eax, -68(%ebp)
push %eax
pop %eax
	movl	-68(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC45, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-68(%ebp), %eax
push %eax
pop %eax
	addl	$32, %eax
push %eax
pop %eax
	movl	%eax, -72(%ebp)
push %eax
pop %eax
	movl	-72(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC46, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-68(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -32(%ebp)
push %eax
pop %eax
	movl	-72(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_malloc
push %eax
pop %eax
	movl	%eax, -40(%ebp)
push %eax
pop %eax
	cmpl	$0, -40(%ebp)
push %eax
pop %eax
	jne	L66
push %eax
pop %eax
	movl	$LC47, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	$8, (%esp)
push %eax
pop %eax
	movl	__imp__SetLastError@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	jmp	L55
push %eax
pop %eax
L66:
	movl	-40(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC48, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	$32, 12(%esp)
push %eax
pop %eax
	leal	-152(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$32, 4(%esp)
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__memcpy_s, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	addl	$32, %eax
push %eax
pop %eax
	movl	%eax, -76(%ebp)
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -44(%ebp)
push %eax
pop %eax
	jmp	L67
push %eax
pop %eax
L71:
	movl	$LC49, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	subl	$1, -44(%ebp)
push %eax
pop %eax
	movl	-52(%ebp), %eax
push %eax
pop %eax
	movl	80(%eax), %eax
push %eax
pop %eax
	movl	-68(%ebp), %edx
push %eax
pop %eax
	movl	%edx, %ecx
push %eax
pop %eax
	subl	-32(%ebp), %ecx
push %eax
pop %eax
	movl	-76(%ebp), %edx
push %eax
pop %eax
	addl	%edx, %ecx
push %eax
pop %eax
	leal	-120(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 12(%esp)
push %eax
pop %eax
	movl	-32(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	%ecx, 4(%esp)
push %eax
pop %eax
	movl	-56(%ebp), %edx
push %eax
pop %eax
	movl	%edx, (%esp)
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L68
push %eax
pop %eax
	movl	__imp__GetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC50, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	$1168, (%esp)
push %eax
pop %eax
	movl	__imp__SetLastError@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	jmp	L55
push %eax
pop %eax
L68:
	movl	-120(%ebp), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L69
push %eax
pop %eax
	movl	$LC51, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	$1168, (%esp)
push %eax
pop %eax
	movl	__imp__SetLastError@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	jmp	L55
push %eax
pop %eax
L69:
	movl	-120(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC52, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-120(%ebp), %eax
push %eax
pop %eax
	subl	%eax, -32(%ebp)
push %eax
pop %eax
L67:
	cmpl	$0, -32(%ebp)
push %eax
pop %eax
	je	L70
push %eax
pop %eax
	cmpl	$0, -44(%ebp)
push %eax
pop %eax
	jne	L71
push %eax
pop %eax
L70:
	cmpl	$0, -32(%ebp)
push %eax
pop %eax
	jne	L82
push %eax
pop %eax
	leal	-116(%ebp), %eax
push %eax
pop %eax
	addl	$4, %eax
push %eax
pop %eax
	movl	%eax, -64(%ebp)
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	addl	$15, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	addl	$14, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %esi
push %eax
pop %eax
	movl	%esi, -156(%ebp)
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	addl	$13, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %edi
push %eax
pop %eax
	movl	%edi, -160(%ebp)
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	addl	$12, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ebx
push %eax
pop %eax
	movl	%ebx, -164(%ebp)
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	addl	$11, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ecx
push %eax
pop %eax
	movl	%ecx, -168(%ebp)
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	addl	$10, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%eax, -172(%ebp)
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	addl	$9, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %esi
push %eax
pop %eax
	movl	%esi, -176(%ebp)
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	addl	$8, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %edi
push %eax
pop %eax
	movl	%edi, -180(%ebp)
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	addl	$7, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ebx
push %eax
pop %eax
	movl	%ebx, -184(%ebp)
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	addl	$6, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ecx
push %eax
pop %eax
	movl	%ecx, -188(%ebp)
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	addl	$5, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %edi
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	addl	$4, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %esi
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	addl	$3, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ebx
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	addl	$2, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ecx
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	addl	$1, %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%eax, -192(%ebp)
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%edx, 64(%esp)
push %eax
pop %eax
	movl	-156(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 60(%esp)
push %eax
pop %eax
	movl	-160(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 56(%esp)
push %eax
pop %eax
	movl	-164(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 52(%esp)
push %eax
pop %eax
	movl	-168(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 48(%esp)
push %eax
pop %eax
	movl	-172(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 44(%esp)
push %eax
pop %eax
	movl	-176(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 40(%esp)
push %eax
pop %eax
	movl	-180(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 36(%esp)
push %eax
pop %eax
	movl	-184(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 32(%esp)
push %eax
pop %eax
	movl	-188(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 28(%esp)
push %eax
pop %eax
	movl	%edi, 24(%esp)
push %eax
pop %eax
	movl	%esi, 20(%esp)
push %eax
pop %eax
	movl	%ebx, 16(%esp)
push %eax
pop %eax
	movl	%ecx, 12(%esp)
push %eax
pop %eax
	movl	-192(%ebp), %esi
push %eax
pop %eax
	movl	%esi, 8(%esp)
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC53, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	leal	-116(%ebp), %eax
push %eax
pop %eax
	addl	$4, %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_is_null_guid
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L73
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	16(%eax), %eax
push %eax
pop %eax
	addl	$32, %eax
push %eax
pop %eax
	movl	$16, 8(%esp)
push %eax
pop %eax
	leal	-116(%ebp), %edx
push %eax
pop %eax
	addl	$4, %edx
push %eax
pop %eax
	movl	%edx, 4(%esp)
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
	jne	L74
push %eax
pop %eax
L73:
	movl	$LC54, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-72(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 12(%esp)
push %eax
pop %eax
	movl	-40(%ebp), %eax
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
	call	_decrypt_packet
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__SetLastError@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	jmp	L55
push %eax
pop %eax
L74:
	movl	$LC55, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	80(%eax), %eax
push %eax
pop %eax
	leal	-116(%ebp), %edx
push %eax
pop %eax
	addl	$4, %edx
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_pivot_tree_find
push %eax
pop %eax
	movl	%eax, -80(%ebp)
push %eax
pop %eax
	cmpl	$0, -80(%ebp)
push %eax
pop %eax
	je	L75
push %eax
pop %eax
	movl	$LC56, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-72(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	-80(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_pivot_packet_dispatch
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__SetLastError@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	movl	$0, -40(%ebp)
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	$0, (%eax)
push %eax
pop %eax
	jmp	L55
push %eax
pop %eax
L75:
	movl	$LC57, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L55
push %eax
pop %eax
L80:
	nop
push %eax
pop %eax
	jmp	L55
push %eax
pop %eax
L81:
	nop
push %eax
pop %eax
	jmp	L55
push %eax
pop %eax
L82:
	nop
push %eax
pop %eax
L55:
	movl	__imp__GetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	%eax, -84(%ebp)
push %eax
pop %eax
	movl	$LC58, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	cmpl	$0, -40(%ebp)
push %eax
pop %eax
	je	L76
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_free
push %eax
pop %eax
	movl	$0, -40(%ebp)
push %eax
pop %eax
L76:
	cmpl	$0, -84(%ebp)
push %eax
pop %eax
	je	L77
push %eax
pop %eax
	cmpl	$0, -48(%ebp)
push %eax
pop %eax
	je	L77
push %eax
pop %eax
	movl	-48(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_free
push %eax
pop %eax
	movl	$0, -48(%ebp)
push %eax
pop %eax
L77:
	cmpl	$0, -56(%ebp)
push %eax
pop %eax
	je	L78
push %eax
pop %eax
	movl	-52(%ebp), %eax
push %eax
pop %eax
	movl	68(%eax), %eax
push %eax
pop %eax
	movl	-56(%ebp), %edx
push %eax
pop %eax
	movl	%edx, (%esp)
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
L78:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	20(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_lock_release
push %eax
pop %eax
	movl	$LC59, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-84(%ebp), %eax
push %eax
pop %eax
	leal	-12(%ebp), %esp
push %eax
pop %eax
	popl	%ebx
push %eax
pop %eax
	popl	%esi
push %eax
pop %eax
	popl	%edi
push %eax
pop %eax
	popl	%ebp
push %eax
pop %eax
	ret
push %eax
pop %eax
	.section .rdata,"dr"
LC60:
	.ascii "[WINHTTP] Initialising ...\0"
	.align 4
LC61:
	.ascii "[DISPATCH] Configuring with proxy: %S\0"
	.align 4
LC62:
	.ascii "[DISPATCH] Failed WinHttpOpen: %d\0"
	.align 4
LC63:
	.ascii "[DISPATCH] Configured hInternet: 0x%.8x\0"
	.align 4
LC64:
	.ascii "[DISPATCH] About to crack URL: %S\0"
LC65:
	.ascii "[DISPATCH] Configured URI: %S\0"
LC66:
	.ascii "[DISPATCH] Host: %S Port: %u\0"
	.align 4
LC67:
	.ascii "[DISPATCH] Failed WinHttpConnect: %d\0"
	.align 4
LC68:
	.ascii "[DISPATCH] Configured hConnection: 0x%.8x\0"
	.text
	.def	_server_init_winhttp;	.scl	3;	.type	32;	.endef
_server_init_winhttp:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$2152, %esp
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	48(%eax), %eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	movl	$LC60, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	32(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L84
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	32(%eax), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC61, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	32(%eax), %edx
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	20(%eax), %eax
push %eax
pop %eax
	movl	$0, 16(%esp)
push %eax
pop %eax
	movl	$0, 12(%esp)
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	$3, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_WinHttpOpen@20
push %eax
pop %eax
	subl	$20, %esp
push %eax
pop %eax
	movl	-12(%ebp), %edx
push %eax
pop %eax
	movl	%eax, 4(%edx)
push %eax
pop %eax
	jmp	L85
push %eax
pop %eax
L84:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	20(%eax), %eax
push %eax
pop %eax
	movl	$0, 16(%esp)
push %eax
pop %eax
	movl	$0, 12(%esp)
push %eax
pop %eax
	movl	$0, 8(%esp)
push %eax
pop %eax
	movl	$0, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_WinHttpOpen@20
push %eax
pop %eax
	subl	$20, %esp
push %eax
pop %eax
	movl	-12(%ebp), %edx
push %eax
pop %eax
	movl	%eax, 4(%edx)
push %eax
pop %eax
L85:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L86
push %eax
pop %eax
	movl	__imp__GetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC62, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	__imp__GetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	jmp	L90
push %eax
pop %eax
L86:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC63, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	$1024, 8(%esp)
push %eax
pop %eax
	movl	$0, 4(%esp)
push %eax
pop %eax
	leal	-1096(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_memset
push %eax
pop %eax
	movl	$1024, 8(%esp)
push %eax
pop %eax
	movl	$0, 4(%esp)
push %eax
pop %eax
	leal	-2120(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_memset
push %eax
pop %eax
	movl	$60, 8(%esp)
push %eax
pop %eax
	movl	$0, 4(%esp)
push %eax
pop %eax
	leal	-72(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_memset
push %eax
pop %eax
	movl	$60, -72(%ebp)
push %eax
pop %eax
	movl	$511, -52(%ebp)
push %eax
pop %eax
	leal	-1096(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -56(%ebp)
push %eax
pop %eax
	movl	$511, -24(%ebp)
push %eax
pop %eax
	leal	-2120(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -28(%ebp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	44(%eax), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC64, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	44(%eax), %eax
push %eax
pop %eax
	leal	-72(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 12(%esp)
push %eax
pop %eax
	movl	$0, 8(%esp)
push %eax
pop %eax
	movl	$0, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_WinHttpCrackUrl@16
push %eax
pop %eax
	subl	$16, %esp
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	24(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L88
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	24(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_free
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	$0, 24(%eax)
push %eax
pop %eax
L88:
	leal	-2120(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp___wcsdup, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	-12(%ebp), %edx
push %eax
pop %eax
	movl	%eax, 24(%edx)
push %eax
pop %eax
	call	_current_unix_timestamp
push %eax
pop %eax
	movl	8(%ebp), %edx
push %eax
pop %eax
	movl	%eax, 64(%edx)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	24(%eax), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC65, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movzwl	-48(%ebp), %eax
push %eax
pop %eax
	movzwl	%ax, %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	leal	-1096(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC66, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movzwl	-48(%ebp), %eax
push %eax
pop %eax
	movzwl	%ax, %edx
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	movl	$0, 12(%esp)
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	leal	-1096(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_WinHttpConnect@16
push %eax
pop %eax
	subl	$16, %esp
push %eax
pop %eax
	movl	-12(%ebp), %edx
push %eax
pop %eax
	movl	%eax, 8(%edx)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	8(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L89
push %eax
pop %eax
	movl	__imp__GetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC67, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	__imp__GetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	jmp	L90
push %eax
pop %eax
L89:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	8(%eax), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC68, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	$0, %eax
push %eax
pop %eax
L90:
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.section .rdata,"dr"
LC69:
	.ascii "[HTTP] Deinitialising ...\0"
	.text
	.def	_server_deinit_http;	.scl	3;	.type	32;	.endef
_server_deinit_http:
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
	movl	48(%eax), %eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	movl	$LC69, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	8(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L92
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	68(%eax), %eax
push %eax
pop %eax
	movl	-12(%ebp), %edx
push %eax
pop %eax
	movl	8(%edx), %edx
push %eax
pop %eax
	movl	%edx, (%esp)
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	$0, 8(%eax)
push %eax
pop %eax
L92:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L93
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	68(%eax), %eax
push %eax
pop %eax
	movl	-12(%ebp), %edx
push %eax
pop %eax
	movl	4(%edx), %edx
push %eax
pop %eax
	movl	%edx, (%esp)
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	$0, 4(%eax)
push %eax
pop %eax
L93:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	56(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L94
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_transport_move_to_wininet
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	$0, 56(%eax)
push %eax
pop %eax
L94:
	movl	$1, %eax
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.section .rdata,"dr"
	.align 4
LC70:
	.ascii "[DISPATCH] Shutting down server due to communication timeout\0"
	.align 4
LC71:
	.ascii "[DISPATCH] Shutting down server due to hardcoded expiration time\0"
LC72:
	.ascii "Timestamp: %u  Expiration: %u\0"
	.align 4
LC73:
	.ascii "[DISPATCH] server dispatch thread signaled to terminate...\0"
	.align 4
LC74:
	.ascii "[DISPATCH] Reading data from the remote side...\0"
	.align 4
LC75:
	.ascii "[DISPATCH] Failed to work correctly with WinHTTP, moving over to WinINET\0"
	.align 4
LC76:
	.ascii "[DISPATCH] no pending packets, sleeping for %dms...\0"
	.align 4
LC77:
	.ascii "[DISPATCH] Returned result: %d\0"
LC78:
	.ascii "continue\0"
LC79:
	.ascii "stop\0"
	.align 4
LC80:
	.ascii "[DISPATCH] command_process result: %s\0"
	.align 4
LC81:
	.ascii "[DISPATCH] Recieved hot-patched URL for stageless: %S\0"
LC82:
	.ascii "[DISPATCH] Old URI is: %S\0"
LC83:
	.ascii "[DISPATCH] Old URL is: %S\0"
	.align 4
LC84:
	.ascii "[DISPATCH] New URI is bigger by %d\0"
LC85:
	.ascii "[DISPATCH] %d csr: %p -> %S\0"
	.align 4
LC86:
	.ascii "[DISPATCH] Pointer is at: %p -> %S\0"
LC87:
	.ascii "[DISPATCH] New URL is: %S\0"
	.align 4
LC88:
	.ascii "[DISPATCH] Packet was NULL, this indicates that it was a pivot packet\0"
	.text
	.def	_server_dispatch_http;	.scl	3;	.type	32;	.endef
_server_dispatch_http:
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
	movl	$1, -12(%ebp)
push %eax
pop %eax
	movl	$0, -16(%ebp)
push %eax
pop %eax
	movl	$0, -52(%ebp)
push %eax
pop %eax
	movl	$0, -36(%ebp)
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
	movl	4(%eax), %eax
push %eax
pop %eax
	movl	%eax, -40(%ebp)
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	movl	48(%eax), %eax
push %eax
pop %eax
	movl	%eax, -44(%ebp)
push %eax
pop %eax
	jmp	L97
push %eax
pop %eax
L123:
	movl	-40(%ebp), %eax
push %eax
pop %eax
	movl	52(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L98
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	movl	64(%eax), %edx
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	movl	52(%eax), %eax
push %eax
pop %eax
	leal	(%edx,%eax), %ebx
push %eax
pop %eax
	call	_current_unix_timestamp
push %eax
pop %eax
	cmpl	%eax, %ebx
push %eax
pop %eax
	jge	L98
push %eax
pop %eax
	movl	$LC70, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L99
push %eax
pop %eax
L98:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	72(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L100
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	72(%eax), %ebx
push %eax
pop %eax
	call	_current_unix_timestamp
push %eax
pop %eax
	cmpl	%eax, %ebx
push %eax
pop %eax
	jge	L100
push %eax
pop %eax
	movl	$LC71, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	72(%eax), %ebx
push %eax
pop %eax
	call	_current_unix_timestamp
push %eax
pop %eax
	movl	%ebx, 8(%esp)
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC72, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L99
push %eax
pop %eax
L100:
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	8(%eax), %eax
push %eax
pop %eax
	movl	$0, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_event_poll
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L101
push %eax
pop %eax
	movl	$LC73, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L99
push %eax
pop %eax
L101:
	movl	$LC74, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	leal	-52(%ebp), %eax
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
	call	_packet_receive_http
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
	cmpl	$0, -16(%ebp)
push %eax
pop %eax
	je	L102
push %eax
pop %eax
	cmpl	$4306, -16(%ebp)
push %eax
pop %eax
	jne	L103
push %eax
pop %eax
	call	_current_unix_timestamp
push %eax
pop %eax
	movl	-40(%ebp), %edx
push %eax
pop %eax
	movl	%eax, 64(%edx)
push %eax
pop %eax
	jmp	L104
push %eax
pop %eax
L103:
	cmpl	$12029, -16(%ebp)
push %eax
pop %eax
	jne	L105
push %eax
pop %eax
	movl	$LC75, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-44(%ebp), %eax
push %eax
pop %eax
	movl	$1, 56(%eax)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %edx
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 8(%eax)
push %eax
pop %eax
	movl	$0, -16(%ebp)
push %eax
pop %eax
	jmp	L99
push %eax
pop %eax
L105:
	cmpl	$12169, -16(%ebp)
push %eax
pop %eax
	jne	L106
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %edx
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	movl	68(%eax), %eax
push %eax
pop %eax
	cmpl	%eax, %edx
push %eax
pop %eax
	jne	L125
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	movl	60(%eax), %edx
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 12(%eax)
push %eax
pop %eax
	jmp	L125
push %eax
pop %eax
L106:
	cmpl	$1610, -16(%ebp)
push %eax
pop %eax
	je	L126
push %eax
pop %eax
L104:
	movl	-20(%ebp), %edx
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
	addl	%eax, %eax
push %eax
pop %eax
	movl	%eax, -24(%ebp)
push %eax
pop %eax
	cmpl	$9, -20(%ebp)
push %eax
pop %eax
	jbe	L108
push %eax
pop %eax
	movl	-24(%ebp), %edx
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
	addl	%eax, %eax
push %eax
pop %eax
	movl	%eax, -24(%ebp)
push %eax
pop %eax
L108:
	addl	$1, -20(%ebp)
push %eax
pop %eax
	movl	$10000, %eax
push %eax
pop %eax
	cmpl	$10000, -24(%ebp)
push %eax
pop %eax
	cmovbe	-24(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC76, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	$10000, %eax
push %eax
pop %eax
	cmpl	$10000, -24(%ebp)
push %eax
pop %eax
	cmovbe	-24(%ebp), %eax
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
	jmp	L97
push %eax
pop %eax
L102:
	call	_current_unix_timestamp
push %eax
pop %eax
	movl	-40(%ebp), %edx
push %eax
pop %eax
	movl	%eax, 64(%edx)
push %eax
pop %eax
	movl	$0, -20(%ebp)
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC77, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-52(%ebp), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L109
push %eax
pop %eax
	movl	-52(%ebp), %eax
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
	call	_command_handle
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	cmpl	$0, -12(%ebp)
push %eax
pop %eax
	je	L110
push %eax
pop %eax
	movl	$LC78, %eax
push %eax
pop %eax
	jmp	L111
push %eax
pop %eax
L110:
	movl	$LC79, %eax
push %eax
pop %eax
L111:
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC80, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-44(%ebp), %eax
push %eax
pop %eax
	movl	28(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L97
push %eax
pop %eax
	movl	-44(%ebp), %eax
push %eax
pop %eax
	movl	28(%eax), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC81, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-44(%ebp), %eax
push %eax
pop %eax
	movl	24(%eax), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC82, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	movl	44(%eax), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC83, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-44(%ebp), %eax
push %eax
pop %eax
	movl	28(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_wcslen
push %eax
pop %eax
	movl	%eax, %ebx
push %eax
pop %eax
	movl	-44(%ebp), %eax
push %eax
pop %eax
	movl	24(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_wcslen
push %eax
pop %eax
	subl	%eax, %ebx
push %eax
pop %eax
	movl	%ebx, %eax
push %eax
pop %eax
	movl	%eax, -48(%ebp)
push %eax
pop %eax
	cmpl	$0, -48(%ebp)
push %eax
pop %eax
	jle	L112
push %eax
pop %eax
	movl	-48(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC84, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	movl	44(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_wcslen
push %eax
pop %eax
	movl	-48(%ebp), %edx
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	addl	$1, %eax
push %eax
pop %eax
	leal	(%eax,%eax), %edx
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	movl	44(%eax), %eax
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_realloc
push %eax
pop %eax
	movl	-40(%ebp), %edx
push %eax
pop %eax
	movl	%eax, 44(%edx)
push %eax
pop %eax
L112:
	movl	-40(%ebp), %eax
push %eax
pop %eax
	movl	44(%eax), %eax
push %eax
pop %eax
	movl	%eax, -28(%ebp)
push %eax
pop %eax
	movl	$0, -32(%ebp)
push %eax
pop %eax
	jmp	L113
push %eax
pop %eax
L119:
	addl	$2, -28(%ebp)
push %eax
pop %eax
	jmp	L114
push %eax
pop %eax
L116:
	addl	$2, -28(%ebp)
push %eax
pop %eax
L114:
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movzwl	(%eax), %eax
push %eax
pop %eax
	testw	%ax, %ax
push %eax
pop %eax
	je	L115
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movzwl	(%eax), %eax
push %eax
pop %eax
	cmpw	$47, %ax
push %eax
pop %eax
	jne	L116
push %eax
pop %eax
L115:
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 12(%esp)
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC85, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movzwl	(%eax), %eax
push %eax
pop %eax
	testw	%ax, %ax
push %eax
pop %eax
	je	L127
push %eax
pop %eax
	addl	$1, -32(%ebp)
push %eax
pop %eax
L113:
	cmpl	$2, -32(%ebp)
push %eax
pop %eax
	jle	L119
push %eax
pop %eax
	jmp	L118
push %eax
pop %eax
L127:
	nop
push %eax
pop %eax
L118:
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC86, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-44(%ebp), %eax
push %eax
pop %eax
	movl	28(%eax), %ebx
push %eax
pop %eax
	cmpl	$0, -48(%ebp)
push %eax
pop %eax
	jle	L120
push %eax
pop %eax
	movl	-44(%ebp), %eax
push %eax
pop %eax
	movl	28(%eax), %eax
push %eax
pop %eax
	jmp	L121
push %eax
pop %eax
L120:
	movl	-44(%ebp), %eax
push %eax
pop %eax
	movl	24(%eax), %eax
push %eax
pop %eax
L121:
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_wcslen
push %eax
pop %eax
	addl	$1, %eax
push %eax
pop %eax
	movl	%ebx, 8(%esp)
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__wcscpy_s, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	movl	44(%eax), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC87, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-44(%ebp), %eax
push %eax
pop %eax
	movl	24(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L122
push %eax
pop %eax
	movl	-44(%ebp), %eax
push %eax
pop %eax
	movl	24(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_free
push %eax
pop %eax
	movl	-44(%ebp), %eax
push %eax
pop %eax
	movl	$0, 24(%eax)
push %eax
pop %eax
L122:
	movl	-44(%ebp), %eax
push %eax
pop %eax
	movl	28(%eax), %edx
push %eax
pop %eax
	movl	-44(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 24(%eax)
push %eax
pop %eax
	movl	-44(%ebp), %eax
push %eax
pop %eax
	movl	$0, 28(%eax)
push %eax
pop %eax
	jmp	L97
push %eax
pop %eax
L109:
	movl	$LC88, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
L97:
	cmpl	$0, -12(%ebp)
push %eax
pop %eax
	jne	L123
push %eax
pop %eax
	jmp	L99
push %eax
pop %eax
L125:
	nop
push %eax
pop %eax
	jmp	L99
push %eax
pop %eax
L126:
	nop
push %eax
pop %eax
L99:
	movl	-16(%ebp), %eax
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
	.align 4
LC89:
	.ascii "[TRANS HTTP] Destroying http transport for url %S\0"
	.text
	.def	_transport_destroy_http;	.scl	3;	.type	32;	.endef
_transport_destroy_http:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$40, %esp
push %eax
pop %eax
	cmpl	$0, 8(%ebp)
push %eax
pop %eax
	je	L142
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	andl	$2, %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L142
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	48(%eax), %eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	44(%eax), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC89, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	cmpl	$0, -12(%ebp)
push %eax
pop %eax
	je	L130
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	12(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L131
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	12(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_free
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	$0, 12(%eax)
push %eax
pop %eax
L131:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	32(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L132
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	32(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_free
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	$0, 32(%eax)
push %eax
pop %eax
L132:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	40(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L133
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	40(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_free
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	$0, 40(%eax)
push %eax
pop %eax
L133:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	36(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L134
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	36(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_free
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	$0, 36(%eax)
push %eax
pop %eax
L134:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	20(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L135
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	20(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_free
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	$0, 20(%eax)
push %eax
pop %eax
L135:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	24(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L136
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	24(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_free
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	$0, 24(%eax)
push %eax
pop %eax
L136:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	44(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L137
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	44(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_free
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	$0, 44(%eax)
push %eax
pop %eax
L137:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	52(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L138
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	52(%eax), %eax
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L139
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__GlobalFree@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
L139:
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	8(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L138
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	8(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__GlobalFree@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
L138:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	52(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L130
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	52(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_free
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	$0, 52(%eax)
push %eax
pop %eax
L130:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	44(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L140
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	44(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_free
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	$0, 44(%eax)
push %eax
pop %eax
L140:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	48(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L141
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	48(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_free
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	$0, 48(%eax)
push %eax
pop %eax
L141:
	cmpl	$0, 8(%ebp)
push %eax
pop %eax
	je	L142
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_free
push %eax
pop %eax
	movl	$0, 8(%ebp)
push %eax
pop %eax
L142:
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
LC90:
	.ascii "[HTTP CONF] Writing timeouts\0"
LC91:
	.ascii "[HTTP CONF] Writing UA\0"
LC92:
	.ascii "[HTTP CONF] Writing cert hash\0"
LC93:
	.ascii "[HTTP CONF] Writing proxy\0"
LC94:
	.ascii "[HTTP CONF] Writing user\0"
LC95:
	.ascii "[HTTP CONF] Writing pass\0"
	.align 4
LC96:
	.ascii "[HTTP CONF] Writing custom headers\0"
LC97:
	.ascii "[HTTP CONF] Done.\0"
	.text
	.globl	_transport_write_http_config
	.def	_transport_write_http_config;	.scl	2;	.type	32;	.endef
_transport_write_http_config:
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
	movl	48(%eax), %eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	movl	$LC90, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	52(%eax), %edx
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 1024(%eax)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	56(%eax), %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 1028(%eax)
push %eax
pop %eax
	movl	8(%ebp), %eax
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
	movl	%edx, 1032(%eax)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	44(%eax), %edx
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	$512, 8(%esp)
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_wcsncpy
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	20(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L144
push %eax
pop %eax
	movl	$LC91, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	20(%eax), %eax
push %eax
pop %eax
	movl	12(%ebp), %edx
push %eax
pop %eax
	addl	$1548, %edx
push %eax
pop %eax
	movl	$256, 8(%esp)
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	%edx, (%esp)
push %eax
pop %eax
	call	_wcsncpy
push %eax
pop %eax
L144:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	12(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L145
push %eax
pop %eax
	movl	$LC92, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	12(%eax), %eax
push %eax
pop %eax
	movl	12(%ebp), %edx
push %eax
pop %eax
	addl	$2060, %edx
push %eax
pop %eax
	movl	$20, 8(%esp)
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	%edx, (%esp)
push %eax
pop %eax
	call	_memcpy
push %eax
pop %eax
L145:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	32(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L146
push %eax
pop %eax
	movl	$LC93, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	32(%eax), %eax
push %eax
pop %eax
	movl	12(%ebp), %edx
push %eax
pop %eax
	addl	$1036, %edx
push %eax
pop %eax
	movl	$128, 8(%esp)
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	%edx, (%esp)
push %eax
pop %eax
	call	_wcsncpy
push %eax
pop %eax
L146:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	36(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L147
push %eax
pop %eax
	movl	$LC94, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	36(%eax), %eax
push %eax
pop %eax
	movl	12(%ebp), %edx
push %eax
pop %eax
	addl	$1292, %edx
push %eax
pop %eax
	movl	$64, 8(%esp)
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	%edx, (%esp)
push %eax
pop %eax
	call	_wcsncpy
push %eax
pop %eax
L147:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	40(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L148
push %eax
pop %eax
	movl	$LC95, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	40(%eax), %eax
push %eax
pop %eax
	movl	12(%ebp), %edx
push %eax
pop %eax
	addl	$1420, %edx
push %eax
pop %eax
	movl	$64, 8(%esp)
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	%edx, (%esp)
push %eax
pop %eax
	call	_wcsncpy
push %eax
pop %eax
L148:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	44(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L149
push %eax
pop %eax
	movl	$LC96, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	44(%eax), %eax
push %eax
pop %eax
	movl	12(%ebp), %edx
push %eax
pop %eax
	addl	$2080, %edx
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	%edx, (%esp)
push %eax
pop %eax
	call	_wcscpy
push %eax
pop %eax
L149:
	movl	$LC97, (%esp)
push %eax
pop %eax
	call	_real_dprintf
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
	.def	_transport_get_config_size_http;	.scl	3;	.type	32;	.endef
_transport_get_config_size_http:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$40, %esp
push %eax
pop %eax
	movl	$2082, -12(%ebp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	48(%eax), %eax
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	44(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L151
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	44(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_wcslen
push %eax
pop %eax
	addl	%eax, %eax
push %eax
pop %eax
	addl	%eax, -12(%ebp)
push %eax
pop %eax
L151:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.section .rdata,"dr"
	.align 4
LC98:
	.ascii "[TRANS HTTP] Creating http transport for url %S\0"
LC99:
	.ascii "[TRANS HTTP] Given ua: %S\0"
	.align 4
LC100:
	.ascii "[TRANS HTTP] Given proxy host: %S\0"
	.align 4
LC101:
	.ascii "[TRANS HTTP] Given proxy user: %S\0"
	.align 4
LC102:
	.ascii "[TRANS HTTP] Given proxy pass: %S\0"
	.align 2
LC103:
	.ascii "h\0t\0t\0p\0s\0\0\0"
	.align 4
LC104:
	.ascii "[SERVER] Received HTTPS Hash: %02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x\0"
	.text
	.globl	_transport_create_http
	.def	_transport_create_http;	.scl	2;	.type	32;	.endef
_transport_create_http:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	pushl	%edi
push %eax
pop %eax
	pushl	%esi
push %eax
pop %eax
	pushl	%ebx
push %eax
pop %eax
	subl	$204, %esp
push %eax
pop %eax
	movl	$76, (%esp)
push %eax
pop %eax
	call	_malloc
push %eax
pop %eax
	movl	%eax, -28(%ebp)
push %eax
pop %eax
	movl	$84, (%esp)
push %eax
pop %eax
	call	_malloc
push %eax
pop %eax
	movl	%eax, -32(%ebp)
push %eax
pop %eax
	cmpl	$0, 12(%ebp)
push %eax
pop %eax
	je	L154
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	$2082, (%eax)
push %eax
pop %eax
L154:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC98, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	$76, 8(%esp)
push %eax
pop %eax
	movl	$0, 4(%esp)
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_memset
push %eax
pop %eax
	movl	$84, 8(%esp)
push %eax
pop %eax
	movl	$0, 4(%esp)
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_memset
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	addl	$1548, %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC99, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movzwl	1548(%eax), %eax
push %eax
pop %eax
	testw	%ax, %ax
push %eax
pop %eax
	je	L155
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	addl	$1548, %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp___wcsdup, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	-32(%ebp), %edx
push %eax
pop %eax
	movl	%eax, 20(%edx)
push %eax
pop %eax
L155:
	movl	8(%ebp), %eax
push %eax
pop %eax
	addl	$1036, %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC100, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movzwl	1036(%eax), %eax
push %eax
pop %eax
	testw	%ax, %ax
push %eax
pop %eax
	je	L156
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	addl	$1036, %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp___wcsdup, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	-32(%ebp), %edx
push %eax
pop %eax
	movl	%eax, 32(%edx)
push %eax
pop %eax
L156:
	movl	8(%ebp), %eax
push %eax
pop %eax
	addl	$1292, %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC101, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movzwl	1292(%eax), %eax
push %eax
pop %eax
	testw	%ax, %ax
push %eax
pop %eax
	je	L157
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	addl	$1292, %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp___wcsdup, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	-32(%ebp), %edx
push %eax
pop %eax
	movl	%eax, 36(%edx)
push %eax
pop %eax
L157:
	movl	8(%ebp), %eax
push %eax
pop %eax
	addl	$1420, %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC102, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movzwl	1420(%eax), %eax
push %eax
pop %eax
	testw	%ax, %ax
push %eax
pop %eax
	je	L158
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	addl	$1420, %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp___wcsdup, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	-32(%ebp), %edx
push %eax
pop %eax
	movl	%eax, 40(%edx)
push %eax
pop %eax
L158:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	$5, 8(%esp)
push %eax
pop %eax
	movl	$LC103, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_wcsncmp
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	sete	%al
push %eax
pop %eax
	movzbl	%al, %edx
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	%edx, (%eax)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movzwl	2080(%eax), %eax
push %eax
pop %eax
	testw	%ax, %ax
push %eax
pop %eax
	je	L159
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	addl	$2080, %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp___wcsdup, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	-32(%ebp), %edx
push %eax
pop %eax
	movl	%eax, 44(%edx)
push %eax
pop %eax
	cmpl	$0, 12(%ebp)
push %eax
pop %eax
	je	L159
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	44(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_wcslen
push %eax
pop %eax
	leal	(%eax,%eax), %edx
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	addl	%eax, %edx
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	%edx, (%eax)
push %eax
pop %eax
L159:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movzbl	2079(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movzbl	2078(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ecx
push %eax
pop %eax
	movl	%ecx, -60(%ebp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movzbl	2077(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ebx
push %eax
pop %eax
	movl	%ebx, -64(%ebp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movzbl	2076(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %esi
push %eax
pop %eax
	movl	%esi, -68(%ebp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movzbl	2075(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %edi
push %eax
pop %eax
	movl	%edi, -72(%ebp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movzbl	2074(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%eax, -76(%ebp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movzbl	2073(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ecx
push %eax
pop %eax
	movl	%ecx, -80(%ebp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movzbl	2072(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ebx
push %eax
pop %eax
	movl	%ebx, -84(%ebp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movzbl	2071(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %esi
push %eax
pop %eax
	movl	%esi, -88(%ebp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movzbl	2070(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %edi
push %eax
pop %eax
	movl	%edi, -92(%ebp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movzbl	2069(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%eax, -96(%ebp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movzbl	2068(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ecx
push %eax
pop %eax
	movl	%ecx, -100(%ebp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movzbl	2067(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ebx
push %eax
pop %eax
	movl	%ebx, -104(%ebp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movzbl	2066(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %esi
push %eax
pop %eax
	movl	%esi, -108(%ebp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movzbl	2065(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %edi
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movzbl	2064(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %esi
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movzbl	2063(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ebx
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movzbl	2062(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %ecx
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movzbl	2061(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%eax, -112(%ebp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movzbl	2060(%eax), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%edx, 80(%esp)
push %eax
pop %eax
	movl	-60(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 76(%esp)
push %eax
pop %eax
	movl	-64(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 72(%esp)
push %eax
pop %eax
	movl	-68(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 68(%esp)
push %eax
pop %eax
	movl	-72(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 64(%esp)
push %eax
pop %eax
	movl	-76(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 60(%esp)
push %eax
pop %eax
	movl	-80(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 56(%esp)
push %eax
pop %eax
	movl	-84(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 52(%esp)
push %eax
pop %eax
	movl	-88(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 48(%esp)
push %eax
pop %eax
	movl	-92(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 44(%esp)
push %eax
pop %eax
	movl	-96(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 40(%esp)
push %eax
pop %eax
	movl	-100(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 36(%esp)
push %eax
pop %eax
	movl	-104(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 32(%esp)
push %eax
pop %eax
	movl	-108(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 28(%esp)
push %eax
pop %eax
	movl	%edi, 24(%esp)
push %eax
pop %eax
	movl	%esi, 20(%esp)
push %eax
pop %eax
	movl	%ebx, 16(%esp)
push %eax
pop %eax
	movl	%ecx, 12(%esp)
push %eax
pop %eax
	movl	-112(%ebp), %edi
push %eax
pop %eax
	movl	%edi, 8(%esp)
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC104, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	12(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L160
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	12(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_free
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	$0, 12(%eax)
push %eax
pop %eax
L160:
	movl	$0, -52(%ebp)
push %eax
pop %eax
	movl	$0, -48(%ebp)
push %eax
pop %eax
	movl	$0, -44(%ebp)
push %eax
pop %eax
	movl	$0, -40(%ebp)
push %eax
pop %eax
	movl	$0, -36(%ebp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	leal	2060(%eax), %edx
push %eax
pop %eax
	movl	$20, 8(%esp)
push %eax
pop %eax
	leal	-52(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	%edx, (%esp)
push %eax
pop %eax
	call	_memcmp
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L161
push %eax
pop %eax
	movl	$20, (%esp)
push %eax
pop %eax
	call	_malloc
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 12(%eax)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	leal	2060(%eax), %edx
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	12(%eax), %eax
push %eax
pop %eax
	movl	$20, 8(%esp)
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_memcpy
push %eax
pop %eax
L161:
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	$_get_request_winhttp, 60(%eax)
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	$_send_request_winhttp, 64(%eax)
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	$_close_request_winhttp, 68(%eax)
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	$_validate_response_winhttp, 72(%eax)
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	$_receive_response_winhttp, 76(%eax)
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	$_read_response_winhttp, 80(%eax)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	1024(%eax), %edx
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 52(%eax)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	1028(%eax), %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 56(%eax)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	1032(%eax), %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 60(%eax)
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L162
push %eax
pop %eax
	movl	$6, %edx
push %eax
pop %eax
	jmp	L163
push %eax
pop %eax
L162:
	movl	$2, %edx
push %eax
pop %eax
L163:
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%edx, (%eax)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp___wcsdup, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	-28(%ebp), %edx
push %eax
pop %eax
	movl	%eax, 44(%edx)
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	44(%eax), %edx
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 16(%eax)
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	$_packet_transmit_http, 36(%eax)
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	$_server_dispatch_http, 32(%eax)
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	$_server_init_winhttp, 20(%eax)
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	$_server_deinit_http, 24(%eax)
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	$_transport_destroy_http, 28(%eax)
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	-32(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 48(%eax)
push %eax
pop %eax
	call	_current_unix_timestamp
push %eax
pop %eax
	movl	-28(%ebp), %edx
push %eax
pop %eax
	movl	%eax, 64(%edx)
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	$_transport_get_config_size_http, 12(%eax)
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	addl	$204, %esp
push %eax
pop %eax
	popl	%ebx
push %eax
pop %eax
	popl	%esi
push %eax
pop %eax
	popl	%edi
push %eax
pop %eax
	popl	%ebp
push %eax
pop %eax
	ret
push %eax
pop %eax
	.ident	"GCC: (GNU) 9.3-win32 20200320"
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	_vsnprintf_s;	.scl	2;	.type	32;	.endef
	.def	_WinHttpOpenRequest@28;	.scl	2;	.type	32;	.endef
	.def	_WinHttpGetIEProxyConfigForCurrentUser@4;	.scl	2;	.type	32;	.endef
	.def	_WinHttpGetProxyForUrl@16;	.scl	2;	.type	32;	.endef
	.def	_malloc;	.scl	2;	.type	32;	.endef
	.def	_calloc;	.scl	2;	.type	32;	.endef
	.def	_WinHttpSetOption@16;	.scl	2;	.type	32;	.endef
	.def	_wcslen;	.scl	2;	.type	32;	.endef
	.def	_WinHttpCloseHandle@4;	.scl	2;	.type	32;	.endef
	.def	_WinHttpReadData@16;	.scl	2;	.type	32;	.endef
	.def	_WinHttpSendRequest@28;	.scl	2;	.type	32;	.endef
	.def	_WinHttpReceiveResponse@8;	.scl	2;	.type	32;	.endef
	.def	_WinHttpQueryHeaders@24;	.scl	2;	.type	32;	.endef
	.def	_WinHttpQueryOption@16;	.scl	2;	.type	32;	.endef
	.def	_memcmp;	.scl	2;	.type	32;	.endef
	.def	_lock_acquire;	.scl	2;	.type	32;	.endef
	.def	_lock_release;	.scl	2;	.type	32;	.endef
	.def	_xor_bytes;	.scl	2;	.type	32;	.endef
	.def	_is_null_guid;	.scl	2;	.type	32;	.endef
	.def	_decrypt_packet;	.scl	2;	.type	32;	.endef
	.def	_pivot_tree_find;	.scl	2;	.type	32;	.endef
	.def	_pivot_packet_dispatch;	.scl	2;	.type	32;	.endef
	.def	_free;	.scl	2;	.type	32;	.endef
	.def	_WinHttpOpen@20;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_WinHttpCrackUrl@16;	.scl	2;	.type	32;	.endef
	.def	_current_unix_timestamp;	.scl	2;	.type	32;	.endef
	.def	_WinHttpConnect@16;	.scl	2;	.type	32;	.endef
	.def	_transport_move_to_wininet;	.scl	2;	.type	32;	.endef
	.def	_event_poll;	.scl	2;	.type	32;	.endef
	.def	_command_handle;	.scl	2;	.type	32;	.endef
	.def	_realloc;	.scl	2;	.type	32;	.endef
	.def	_wcsncpy;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	_wcscpy;	.scl	2;	.type	32;	.endef
	.def	_wcsncmp;	.scl	2;	.type	32;	.endef
