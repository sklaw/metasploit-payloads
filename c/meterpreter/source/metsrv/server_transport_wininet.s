	.file	"server_transport_wininet.c"
	.text
	.section .rdata,"dr"
	.align 2
LC0:
	.ascii "G\0E\0T\0\0\0"
	.align 2
LC1:
	.ascii "P\0O\0S\0T\0\0\0"
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
	je	L2
	orl	$8400896, -12(%ebp)
L2:
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	cmpl	$0, 12(%ebp)
	je	L3
	movl	$LC0, %ebx
	jmp	L4
L3:
	movl	$LC1, %ebx
L4:
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
	jne	L5
	movl	$1168, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
	jmp	L6
L5:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L7
	movl	$13184, -20(%ebp)
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
	jne	L7
	movl	$1168, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
	jmp	L6
L7:
	movl	-16(%ebp), %eax
	jmp	L9
L6:
	cmpl	$0, -16(%ebp)
	je	L10
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__InternetCloseHandle@4, %eax
	call	*%eax
	subl	$4, %esp
L10:
	movl	$0, %eax
L9:
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
	.def	_send_request_wininet;	.scl	3;	.type	32;	.endef
_send_request_wininet:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	je	L16
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
	jmp	L17
L16:
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
L17:
	leave
	ret
	.def	_validate_response_wininet;	.scl	3;	.type	32;	.endef
_validate_response_wininet:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$56, %esp
	movl	$4, -16(%ebp)
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
	je	L19
	movl	-12(%ebp), %eax
	cmpl	$200, %eax
	je	L19
	movl	$1610, %eax
	jmp	L21
L19:
	movl	$0, %eax
L21:
	leave
	ret
	.def	_server_init_wininet;	.scl	3;	.type	32;	.endef
_server_init_wininet:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$2152, %esp
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	L23
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
	jmp	L24
L23:
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
L24:
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	L25
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	jmp	L31
L25:
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
	je	L27
	movl	-12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	_free
	movl	-12(%ebp), %eax
	movl	$0, 24(%eax)
L27:
	leal	-2120(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp___wcsdup, %eax
	call	*%eax
	movl	-12(%ebp), %edx
	movl	%eax, 24(%edx)
	call	_current_unix_timestamp
	movl	8(%ebp), %edx
	movl	%eax, 64(%edx)
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
	jne	L28
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	jmp	L31
L28:
	movl	-12(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	L29
	movl	-12(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	L30
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
L30:
	movl	-12(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	je	L29
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
L29:
	movl	$0, %eax
L31:
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
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_free;	.scl	2;	.type	32;	.endef
	.def	_current_unix_timestamp;	.scl	2;	.type	32;	.endef
	.def	_wcslen;	.scl	2;	.type	32;	.endef
