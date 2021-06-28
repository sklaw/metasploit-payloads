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
	movl	%esp, %ebp
	pushl	%ebx
	subl	$52, %esp
	movl	$0, -16(%ebp)
	movl	$-2074082816, -12(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L3
	orl	$8400896, -12(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC2, (%esp)
	call	_real_dprintf
L3:
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC3, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	cmpl	$0, 12(%ebp)
	je	L4
	movl	$LC4, %ebx
	jmp	L5
L4:
	movl	$LC5, %ebx
L5:
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	$0, 28(%esp)
	movl	-12(%ebp), %ecx
	movl	%ecx, 24(%esp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__HttpOpenRequestW@32, %eax
	call	*%eax
	subl	$32, %esp
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jne	L6
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC6, (%esp)
	call	_real_dprintf
	movl	$1168, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
	jmp	L7
L6:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L8
	movl	$13184, -20(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC7, (%esp)
	call	_real_dprintf
	movl	$4, 12(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$31, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__InternetSetOptionW@16, %eax
	call	*%eax
	subl	$16, %esp
	testl	%eax, %eax
	jne	L8
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC8, (%esp)
	call	_real_dprintf
	movl	$1168, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
	jmp	L7
L8:
	movl	-16(%ebp), %eax
	jmp	L10
L7:
	cmpl	$0, -16(%ebp)
	je	L11
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__InternetCloseHandle@4, %eax
	call	*%eax
	subl	$4, %esp
L11:
	movl	$0, %eax
L10:
	movl	-4(%ebp), %ebx
	leave
	ret
	.def	_close_request_wininet;	.scl	3;	.type	32;	.endef
_close_request_wininet:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__InternetCloseHandle@4, %eax
	call	*%eax
	subl	$4, %esp
	leave
	ret
	.def	_read_response_wininet;	.scl	3;	.type	32;	.endef
_read_response_wininet:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__InternetReadFile@16, %eax
	call	*%eax
	subl	$16, %esp
	leave
	ret
	.section .rdata,"dr"
	.align 4
LC9:
	.ascii "[WINHTTP] Sending with custom headers: %S\0"
	.text
	.def	_send_request_wininet;	.scl	3;	.type	32;	.endef
_send_request_wininet:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	je	L17
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC9, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	20(%ebp), %edx
	movl	%edx, 16(%esp)
	movl	16(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	$-1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__HttpSendRequestW@20, %eax
	call	*%eax
	subl	$20, %esp
	jmp	L18
L17:
	movl	20(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__HttpSendRequestW@20, %eax
	call	*%eax
	subl	$20, %esp
L18:
	leave
	ret
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
	movl	%esp, %ebp
	subl	$56, %esp
	movl	$4, -16(%ebp)
	movl	$LC10, (%esp)
	call	_real_dprintf
	movl	$0, 16(%esp)
	leal	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$536870931, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__HttpQueryInfoW@20, %eax
	call	*%eax
	subl	$20, %esp
	testl	%eax, %eax
	je	L20
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC11, (%esp)
	call	_real_dprintf
	movl	-12(%ebp), %eax
	cmpl	$200, %eax
	je	L20
	movl	$1610, %eax
	jmp	L22
L20:
	movl	$0, %eax
L22:
	leave
	ret
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
	movl	%esp, %ebp
	subl	$2152, %esp
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	$LC12, (%esp)
	call	_real_dprintf
	movl	-12(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	L24
	movl	-12(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC13, (%esp)
	call	_real_dprintf
	movl	-12(%ebp), %eax
	movl	32(%eax), %edx
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$3, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__InternetOpenW@20, %eax
	call	*%eax
	subl	$20, %esp
	movl	-12(%ebp), %edx
	movl	%eax, 4(%edx)
	jmp	L25
L24:
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__InternetOpenW@20, %eax
	call	*%eax
	subl	$20, %esp
	movl	-12(%ebp), %edx
	movl	%eax, 4(%edx)
L25:
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	L26
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, 4(%esp)
	movl	$LC14, (%esp)
	call	_real_dprintf
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	jmp	L32
L26:
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC15, (%esp)
	call	_real_dprintf
	movl	$1024, 8(%esp)
	movl	$0, 4(%esp)
	leal	-1096(%ebp), %eax
	movl	%eax, (%esp)
	call	_memset
	movl	$1024, 8(%esp)
	movl	$0, 4(%esp)
	leal	-2120(%ebp), %eax
	movl	%eax, (%esp)
	call	_memset
	movl	$60, 8(%esp)
	movl	$0, 4(%esp)
	leal	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	_memset
	movl	$60, -72(%ebp)
	movl	$511, -52(%ebp)
	leal	-1096(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	$511, -24(%ebp)
	leal	-2120(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC16, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	leal	-72(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__InternetCrackUrlW@16, %eax
	call	*%eax
	subl	$16, %esp
	movl	-12(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	L28
	movl	-12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	_free
	movl	-12(%ebp), %eax
	movl	$0, 24(%eax)
L28:
	leal	-2120(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp___wcsdup, %eax
	call	*%eax
	movl	-12(%ebp), %edx
	movl	%eax, 24(%edx)
	call	_current_unix_timestamp
	movl	8(%ebp), %edx
	movl	%eax, 64(%edx)
	movl	-12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC17, (%esp)
	call	_real_dprintf
	movzwl	-48(%ebp), %eax
	movzwl	%ax, %eax
	movl	%eax, 8(%esp)
	leal	-1096(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC18, (%esp)
	call	_real_dprintf
	movzwl	-48(%ebp), %eax
	movzwl	%ax, %edx
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 28(%esp)
	movl	$0, 24(%esp)
	movl	$3, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	%edx, 8(%esp)
	leal	-1096(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__InternetConnectW@32, %eax
	call	*%eax
	subl	$32, %esp
	movl	-12(%ebp), %edx
	movl	%eax, 8(%edx)
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	L29
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, 4(%esp)
	movl	$LC19, (%esp)
	call	_real_dprintf
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	jmp	L32
L29:
	movl	-12(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	L30
	movl	-12(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	L31
	movl	-12(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, (%esp)
	call	_wcslen
	movl	-12(%ebp), %edx
	movl	36(%edx), %ecx
	movl	-12(%ebp), %edx
	movl	8(%edx), %edx
	movl	%eax, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	$43, 4(%esp)
	movl	%edx, (%esp)
	movl	__imp__InternetSetOptionW@16, %eax
	call	*%eax
	subl	$16, %esp
L31:
	movl	-12(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	je	L30
	movl	-12(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, (%esp)
	call	_wcslen
	movl	-12(%ebp), %edx
	movl	40(%edx), %ecx
	movl	-12(%ebp), %edx
	movl	8(%edx), %edx
	movl	%eax, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	$44, 4(%esp)
	movl	%edx, (%esp)
	movl	__imp__InternetSetOptionW@16, %eax
	call	*%eax
	subl	$16, %esp
L30:
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC20, (%esp)
	call	_real_dprintf
	movl	$0, %eax
L32:
	leave
	ret
	.globl	_transport_move_to_wininet
	.def	_transport_move_to_wininet;	.scl	2;	.type	32;	.endef
_transport_move_to_wininet:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$16, %esp
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	$_get_request_wininet, 60(%eax)
	movl	-4(%ebp), %eax
	movl	$_send_request_wininet, 64(%eax)
	movl	-4(%ebp), %eax
	movl	$_close_request_wininet, 68(%eax)
	movl	-4(%ebp), %eax
	movl	$_validate_response_wininet, 72(%eax)
	movl	-4(%ebp), %eax
	movl	$0, 76(%eax)
	movl	-4(%ebp), %eax
	movl	$_read_response_wininet, 80(%eax)
	movl	8(%ebp), %eax
	movl	$_server_init_wininet, 20(%eax)
	nop
	leave
	ret
	.ident	"GCC: (GNU) 9.3-win32 20200320"
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	_vsnprintf_s;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_free;	.scl	2;	.type	32;	.endef
	.def	_current_unix_timestamp;	.scl	2;	.type	32;	.endef
	.def	_wcslen;	.scl	2;	.type	32;	.endef
