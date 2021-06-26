	.file	"server_transport_winhttp.c"
	.text
	.section .rdata,"dr"
	.align 2
LC0:
	.ascii "G\0E\0T\0\0\0"
	.align 2
LC1:
	.ascii "P\0O\0S\0T\0\0\0"
	.text
	.def	_get_request_winhttp;	.scl	3;	.type	32;	.endef
_get_request_winhttp:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$100, %esp
	movl	$0, -12(%ebp)
	movl	$256, -20(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L2
	movl	-20(%ebp), %eax
	orl	$8388608, %eax
	movl	%eax, -20(%ebp)
L2:
	movl	-20(%ebp), %ecx
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
	movl	%ecx, 24(%esp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	_WinHttpOpenRequest@28
	subl	$28, %esp
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jne	L5
	movl	$1168, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	$0, %eax
	jmp	L23
L5:
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	jne	L7
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	jne	L8
	movl	$0, -36(%ebp)
	movl	$0, -32(%ebp)
	movl	$0, -28(%ebp)
	movl	$0, -24(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	_WinHttpGetIEProxyConfigForCurrentUser@4
	subl	$4, %esp
	testl	%eax, %eax
	je	L9
	movl	-32(%ebp), %eax
	testl	%eax, %eax
	jne	L10
	movl	-36(%ebp), %eax
	testl	%eax, %eax
	je	L11
L10:
	movl	$0, %ecx
	movl	$24, %eax
	andl	$-4, %eax
	movl	%eax, %edx
	movl	$0, %eax
L12:
	movl	%ecx, -60(%ebp,%eax)
	addl	$4, %eax
	cmpl	%edx, %eax
	jb	L12
	movl	$0, -72(%ebp)
	movl	$0, -68(%ebp)
	movl	$0, -64(%ebp)
	movl	-36(%ebp), %eax
	testl	%eax, %eax
	je	L14
	movl	$1, -60(%ebp)
	movl	$3, -56(%ebp)
	movl	$0, -52(%ebp)
	jmp	L15
L14:
	movl	-32(%ebp), %eax
	testl	%eax, %eax
	je	L15
	movl	$2, -60(%ebp)
	movl	$0, -56(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, -52(%ebp)
L15:
	movl	$1, -40(%ebp)
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	-72(%ebp), %ecx
	movl	%ecx, 12(%esp)
	leal	-60(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_WinHttpGetProxyForUrl@16
	subl	$16, %esp
	testl	%eax, %eax
	je	L24
	movl	$12, (%esp)
	call	_malloc
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 52(%eax)
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	-72(%ebp), %edx
	movl	%edx, (%eax)
	movl	-68(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	-64(%ebp), %edx
	movl	%edx, 8(%eax)
	jmp	L24
L11:
	movl	-28(%ebp), %eax
	testl	%eax, %eax
	je	L17
	movl	$12, 4(%esp)
	movl	$1, (%esp)
	call	_calloc
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 52(%eax)
	movl	-16(%ebp), %eax
	movl	$3, (%eax)
	movl	-28(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	-24(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	$0, -28(%ebp)
	movl	$0, -24(%ebp)
	jmp	L17
L24:
	nop
L17:
	movl	-32(%ebp), %eax
	testl	%eax, %eax
	je	L18
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__GlobalFree@4, %eax
	call	*%eax
	subl	$4, %esp
L18:
	movl	-28(%ebp), %eax
	testl	%eax, %eax
	je	L19
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__GlobalFree@4, %eax
	call	*%eax
	subl	$4, %esp
L19:
	movl	-24(%ebp), %eax
	testl	%eax, %eax
	je	L9
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__GlobalFree@4, %eax
	call	*%eax
	subl	$4, %esp
L9:
	movl	8(%ebp), %eax
	movl	$1, 48(%eax)
L8:
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	L20
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	$12, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$38, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_WinHttpSetOption@16
	subl	$16, %esp
	jmp	L20
L7:
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	L21
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, (%esp)
	call	_wcslen
	movl	8(%ebp), %edx
	movl	36(%edx), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$4098, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_WinHttpSetOption@16
	subl	$16, %esp
L21:
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	je	L20
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, (%esp)
	call	_wcslen
	movl	8(%ebp), %edx
	movl	40(%edx), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$4099, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_WinHttpSetOption@16
	subl	$16, %esp
L20:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L22
	movl	$13056, -20(%ebp)
	movl	$4, 12(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$31, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_WinHttpSetOption@16
	subl	$16, %esp
L22:
	movl	-12(%ebp), %eax
L23:
	movl	-4(%ebp), %ebx
	leave
	ret
	.def	_close_request_winhttp;	.scl	3;	.type	32;	.endef
_close_request_winhttp:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_WinHttpCloseHandle@4
	subl	$4, %esp
	leave
	ret
	.def	_read_response_winhttp;	.scl	3;	.type	32;	.endef
_read_response_winhttp:
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
	call	_WinHttpReadData@16
	subl	$16, %esp
	leave
	ret
	.def	_send_request_winhttp;	.scl	3;	.type	32;	.endef
_send_request_winhttp:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	je	L30
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	$0, 24(%esp)
	movl	20(%ebp), %edx
	movl	%edx, 20(%esp)
	movl	20(%ebp), %edx
	movl	%edx, 16(%esp)
	movl	16(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	$-1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_WinHttpSendRequest@28
	subl	$28, %esp
	jmp	L31
L30:
	movl	$0, 24(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_WinHttpSendRequest@28
	subl	$28, %esp
L31:
	leave
	ret
	.def	_receive_response_winhttp;	.scl	3;	.type	32;	.endef
_receive_response_winhttp:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_WinHttpReceiveResponse@8
	subl	$8, %esp
	leave
	ret
	.def	_validate_response_winhttp;	.scl	3;	.type	32;	.endef
_validate_response_winhttp:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$88, %esp
	movl	$4, -16(%ebp)
	movl	$0, 20(%esp)
	leal	-16(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	$536870931, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_WinHttpQueryHeaders@24
	subl	$24, %esp
	testl	%eax, %eax
	je	L35
	movl	-12(%ebp), %eax
	cmpl	$200, %eax
	je	L35
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	L36
	movl	-12(%ebp), %eax
	cmpl	$407, %eax
	jne	L36
	movl	$12029, %eax
	jmp	L43
L36:
	movl	$1610, %eax
	jmp	L43
L35:
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	L38
	movl	$0, -20(%ebp)
	movl	$4, -24(%ebp)
	leal	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$78, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_WinHttpQueryOption@16
	subl	$16, %esp
	testl	%eax, %eax
	jne	L39
	movl	$12169, %eax
	jmp	L43
L39:
	movl	$20, -28(%ebp)
	movl	-20(%ebp), %eax
	leal	-28(%ebp), %edx
	movl	%edx, 12(%esp)
	leal	-48(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$3, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__CertGetCertificateContextProperty@16, %eax
	call	*%eax
	subl	$16, %esp
	testl	%eax, %eax
	jne	L41
	movl	$12169, %eax
	jmp	L43
L41:
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	$20, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	_memcmp
	testl	%eax, %eax
	je	L38
	movl	$12169, %eax
	jmp	L43
L38:
	movl	$0, %eax
L43:
	leave
	ret
	.section .rdata,"dr"
LC2:
	.ascii "PACKET TRANSMIT\0"
	.text
	.def	_packet_transmit_http;	.scl	3;	.type	32;	.endef
_packet_transmit_http:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$56, %esp
	movl	$0, -12(%ebp)
	movl	$5, -16(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	48(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_acquire
	movl	-20(%ebp), %eax
	movl	60(%eax), %eax
	movl	$LC2, 8(%esp)
	movl	$0, 4(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	je	L48
	movl	-20(%ebp), %eax
	movl	64(%eax), %eax
	movl	16(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-24(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	jne	L46
	movl	$1168, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
	jmp	L46
L48:
	nop
L46:
	movl	-20(%ebp), %eax
	movl	68(%eax), %eax
	movl	-24(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_release
	movl	-12(%ebp), %eax
	leave
	ret
	.section .rdata,"dr"
LC3:
	.ascii "PACKET RECEIVE\0"
	.text
	.def	_packet_receive_http;	.scl	3;	.type	32;	.endef
_packet_receive_http:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$148, %esp
	movl	$0, -12(%ebp)
	movl	$0, -16(%ebp)
	movl	$0, -32(%ebp)
	movl	$1, -20(%ebp)
	movl	$0, -24(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	48(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	$5, -28(%ebp)
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_acquire
	movl	-36(%ebp), %eax
	movl	60(%eax), %eax
	movl	$LC3, 8(%esp)
	movl	$1, 4(%esp)
	movl	-36(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	%eax, -40(%ebp)
	cmpl	$0, -40(%ebp)
	je	L75
	movl	-36(%ebp), %eax
	movl	64(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	-40(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	-36(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	%eax, -44(%ebp)
	cmpl	$0, -44(%ebp)
	jne	L52
	movl	$1168, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
	jmp	L51
L52:
	movl	-36(%ebp), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	je	L53
	movl	-36(%ebp), %eax
	movl	76(%eax), %eax
	movl	-40(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	testl	%eax, %eax
	jne	L53
	movl	$1168, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
	jmp	L51
L53:
	movl	-36(%ebp), %eax
	movl	72(%eax), %eax
	movl	-36(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	-40(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	%eax, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	testl	%eax, %eax
	jne	L76
	movl	$3, -28(%ebp)
	jmp	L55
L60:
	subl	$1, -28(%ebp)
	movl	-36(%ebp), %eax
	movl	80(%eax), %eax
	movl	$32, %edx
	subl	-12(%ebp), %edx
	leal	-96(%ebp), %ebx
	movl	-12(%ebp), %ecx
	addl	%ecx, %ebx
	leal	-100(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	-40(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	testl	%eax, %eax
	jne	L56
	movl	$1168, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
	jmp	L51
L56:
	movl	-100(%ebp), %eax
	testl	%eax, %eax
	jne	L57
	movl	$4306, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
	jmp	L51
L57:
	movl	-100(%ebp), %eax
	addl	%eax, -12(%ebp)
	cmpl	$32, -12(%ebp)
	je	L58
	jmp	L55
L58:
	movl	$0, -20(%ebp)
L55:
	cmpl	$0, -20(%ebp)
	je	L59
	cmpl	$0, -28(%ebp)
	jne	L60
L59:
	cmpl	$32, -12(%ebp)
	je	L61
	movl	$1168, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
	jmp	L51
L61:
	movl	-96(%ebp), %eax
	movl	%eax, -132(%ebp)
	movl	-92(%ebp), %eax
	movl	%eax, -128(%ebp)
	movl	-88(%ebp), %eax
	movl	%eax, -124(%ebp)
	movl	-84(%ebp), %eax
	movl	%eax, -120(%ebp)
	movl	-80(%ebp), %eax
	movl	%eax, -116(%ebp)
	movl	-76(%ebp), %eax
	movl	%eax, -112(%ebp)
	movl	-72(%ebp), %eax
	movl	%eax, -108(%ebp)
	movl	-68(%ebp), %eax
	movl	%eax, -104(%ebp)
	leal	-96(%ebp), %eax
	addl	$4, %eax
	movl	$28, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_xor_bytes
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__ntohl@4, %eax
	call	*%eax
	subl	$4, %esp
	subl	$8, %eax
	movl	%eax, -48(%ebp)
	movl	-48(%ebp), %eax
	addl	$32, %eax
	movl	%eax, -52(%ebp)
	movl	-48(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	jne	L62
	movl	$8, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
	jmp	L51
L62:
	movl	$32, 12(%esp)
	leal	-132(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$32, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__memcpy_s, %eax
	call	*%eax
	movl	-24(%ebp), %eax
	addl	$32, %eax
	movl	%eax, -56(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	L63
L67:
	subl	$1, -28(%ebp)
	movl	-36(%ebp), %eax
	movl	80(%eax), %eax
	movl	-48(%ebp), %edx
	movl	%edx, %ecx
	subl	-16(%ebp), %ecx
	movl	-56(%ebp), %edx
	addl	%edx, %ecx
	leal	-100(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-16(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	-40(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	testl	%eax, %eax
	jne	L64
	movl	$1168, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
	jmp	L51
L64:
	movl	-100(%ebp), %eax
	testl	%eax, %eax
	jne	L65
	movl	$1168, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
	jmp	L51
L65:
	movl	-100(%ebp), %eax
	subl	%eax, -16(%ebp)
L63:
	cmpl	$0, -16(%ebp)
	je	L66
	cmpl	$0, -28(%ebp)
	jne	L67
L66:
	cmpl	$0, -16(%ebp)
	jne	L77
	leal	-96(%ebp), %eax
	addl	$4, %eax
	movl	%eax, (%esp)
	call	_is_null_guid
	testl	%eax, %eax
	jne	L69
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	addl	$32, %eax
	movl	$16, 8(%esp)
	leal	-96(%ebp), %edx
	addl	$4, %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_memcmp
	testl	%eax, %eax
	jne	L70
L69:
	movl	-52(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_decrypt_packet
	movl	%eax, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
	jmp	L51
L70:
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	leal	-96(%ebp), %edx
	addl	$4, %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_pivot_tree_find
	movl	%eax, -60(%ebp)
	cmpl	$0, -60(%ebp)
	je	L78
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	_pivot_packet_dispatch
	movl	%eax, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	$0, -24(%ebp)
	movl	12(%ebp), %eax
	movl	$0, (%eax)
	jmp	L51
L75:
	nop
	jmp	L51
L76:
	nop
	jmp	L51
L77:
	nop
	jmp	L51
L78:
	nop
L51:
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -64(%ebp)
	cmpl	$0, -24(%ebp)
	je	L71
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	$0, -24(%ebp)
L71:
	cmpl	$0, -64(%ebp)
	je	L72
	cmpl	$0, -32(%ebp)
	je	L72
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	$0, -32(%ebp)
L72:
	cmpl	$0, -40(%ebp)
	je	L73
	movl	-36(%ebp), %eax
	movl	68(%eax), %eax
	movl	-40(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
L73:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_release
	movl	-64(%ebp), %eax
	movl	-4(%ebp), %ebx
	leave
	ret
	.def	_server_init_winhttp;	.scl	3;	.type	32;	.endef
_server_init_winhttp:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$2152, %esp
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	L80
	movl	-12(%ebp), %eax
	movl	32(%eax), %edx
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$3, 4(%esp)
	movl	%eax, (%esp)
	call	_WinHttpOpen@20
	subl	$20, %esp
	movl	-12(%ebp), %edx
	movl	%eax, 4(%edx)
	jmp	L81
L80:
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_WinHttpOpen@20
	subl	$20, %esp
	movl	-12(%ebp), %edx
	movl	%eax, 4(%edx)
L81:
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	L82
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	jmp	L86
L82:
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
	call	_WinHttpCrackUrl@16
	subl	$16, %esp
	movl	-12(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	L84
	movl	-12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	_free
	movl	-12(%ebp), %eax
	movl	$0, 24(%eax)
L84:
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
	movl	$0, 12(%esp)
	movl	%edx, 8(%esp)
	leal	-1096(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_WinHttpConnect@16
	subl	$16, %esp
	movl	-12(%ebp), %edx
	movl	%eax, 8(%edx)
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	L85
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	jmp	L86
L85:
	movl	$0, %eax
L86:
	leave
	ret
	.def	_server_deinit_http;	.scl	3;	.type	32;	.endef
_server_deinit_http:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L88
	movl	-12(%ebp), %eax
	movl	68(%eax), %eax
	movl	-12(%ebp), %edx
	movl	8(%edx), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	-12(%ebp), %eax
	movl	$0, 8(%eax)
L88:
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	L89
	movl	-12(%ebp), %eax
	movl	68(%eax), %eax
	movl	-12(%ebp), %edx
	movl	4(%edx), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	-12(%ebp), %eax
	movl	$0, 4(%eax)
L89:
	movl	-12(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	L90
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_transport_move_to_wininet
	movl	-12(%ebp), %eax
	movl	$0, 56(%eax)
L90:
	movl	$1, %eax
	leave
	ret
	.def	_server_dispatch_http;	.scl	3;	.type	32;	.endef
_server_dispatch_http:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$68, %esp
	movl	$1, -12(%ebp)
	movl	$0, -16(%ebp)
	movl	$0, -52(%ebp)
	movl	$0, -36(%ebp)
	movl	$0, -20(%ebp)
	movl	$0, -24(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	L93
L116:
	movl	-40(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	L94
	movl	-40(%ebp), %eax
	movl	64(%eax), %edx
	movl	-40(%ebp), %eax
	movl	52(%eax), %eax
	leal	(%edx,%eax), %ebx
	call	_current_unix_timestamp
	cmpl	%eax, %ebx
	jl	L118
L94:
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	je	L96
	movl	8(%ebp), %eax
	movl	72(%eax), %ebx
	call	_current_unix_timestamp
	cmpl	%eax, %ebx
	jl	L119
L96:
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_event_poll
	testl	%eax, %eax
	jne	L120
	leal	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_receive_http
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	L98
	cmpl	$4306, -16(%ebp)
	jne	L99
	call	_current_unix_timestamp
	movl	-40(%ebp), %edx
	movl	%eax, 64(%edx)
	jmp	L100
L99:
	cmpl	$12029, -16(%ebp)
	jne	L101
	movl	-44(%ebp), %eax
	movl	$1, 56(%eax)
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	$0, -16(%ebp)
	jmp	L95
L101:
	cmpl	$12169, -16(%ebp)
	jne	L102
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	68(%eax), %eax
	cmpl	%eax, %edx
	jne	L121
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	60(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	L121
L102:
	cmpl	$1610, -16(%ebp)
	je	L122
L100:
	movl	-20(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, -24(%ebp)
	cmpl	$9, -20(%ebp)
	jbe	L104
	movl	-24(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, -24(%ebp)
L104:
	addl	$1, -20(%ebp)
	movl	$10000, %eax
	cmpl	$10000, -24(%ebp)
	cmovbe	-24(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__Sleep@4, %eax
	call	*%eax
	subl	$4, %esp
	jmp	L93
L98:
	call	_current_unix_timestamp
	movl	-40(%ebp), %edx
	movl	%eax, 64(%edx)
	movl	$0, -20(%ebp)
	movl	-52(%ebp), %eax
	testl	%eax, %eax
	je	L93
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_command_handle
	movl	%eax, -12(%ebp)
	movl	-44(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	L93
	movl	-44(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, (%esp)
	call	_wcslen
	movl	%eax, %ebx
	movl	-44(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	_wcslen
	subl	%eax, %ebx
	movl	%ebx, %eax
	movl	%eax, -48(%ebp)
	cmpl	$0, -48(%ebp)
	jle	L105
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	_wcslen
	movl	-48(%ebp), %edx
	addl	%edx, %eax
	addl	$1, %eax
	leal	(%eax,%eax), %edx
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_realloc
	movl	-40(%ebp), %edx
	movl	%eax, 44(%edx)
L105:
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	$0, -32(%ebp)
	jmp	L106
L112:
	addl	$2, -28(%ebp)
	jmp	L107
L109:
	addl	$2, -28(%ebp)
L107:
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	je	L108
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	L109
L108:
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	je	L123
	addl	$1, -32(%ebp)
L106:
	cmpl	$2, -32(%ebp)
	jle	L112
	jmp	L111
L123:
	nop
L111:
	movl	-44(%ebp), %eax
	movl	28(%eax), %ebx
	cmpl	$0, -48(%ebp)
	jle	L113
	movl	-44(%ebp), %eax
	movl	28(%eax), %eax
	jmp	L114
L113:
	movl	-44(%ebp), %eax
	movl	24(%eax), %eax
L114:
	movl	%eax, (%esp)
	call	_wcslen
	addl	$1, %eax
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__wcscpy_s, %eax
	call	*%eax
	movl	-44(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	L115
	movl	-44(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	_free
	movl	-44(%ebp), %eax
	movl	$0, 24(%eax)
L115:
	movl	-44(%ebp), %eax
	movl	28(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%edx, 24(%eax)
	movl	-44(%ebp), %eax
	movl	$0, 28(%eax)
L93:
	cmpl	$0, -12(%ebp)
	jne	L116
	jmp	L95
L118:
	nop
	jmp	L95
L119:
	nop
	jmp	L95
L120:
	nop
	jmp	L95
L121:
	nop
	jmp	L95
L122:
	nop
L95:
	movl	-16(%ebp), %eax
	movl	-4(%ebp), %ebx
	leave
	ret
	.def	_transport_destroy_http;	.scl	3;	.type	32;	.endef
_transport_destroy_http:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	cmpl	$0, 8(%ebp)
	je	L138
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	L138
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	L126
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	L127
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	_free
	movl	-12(%ebp), %eax
	movl	$0, 12(%eax)
L127:
	movl	-12(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	L128
	movl	-12(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, (%esp)
	call	_free
	movl	-12(%ebp), %eax
	movl	$0, 32(%eax)
L128:
	movl	-12(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	je	L129
	movl	-12(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, (%esp)
	call	_free
	movl	-12(%ebp), %eax
	movl	$0, 40(%eax)
L129:
	movl	-12(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	L130
	movl	-12(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, (%esp)
	call	_free
	movl	-12(%ebp), %eax
	movl	$0, 36(%eax)
L130:
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	L131
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	_free
	movl	-12(%ebp), %eax
	movl	$0, 20(%eax)
L131:
	movl	-12(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	L132
	movl	-12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	_free
	movl	-12(%ebp), %eax
	movl	$0, 24(%eax)
L132:
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	je	L133
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	_free
	movl	-12(%ebp), %eax
	movl	$0, 44(%eax)
L133:
	movl	-12(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	L134
	movl	-12(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	L135
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__GlobalFree@4, %eax
	call	*%eax
	subl	$4, %esp
L135:
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L134
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__GlobalFree@4, %eax
	call	*%eax
	subl	$4, %esp
L134:
	movl	-12(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	L126
	movl	-12(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, (%esp)
	call	_free
	movl	-12(%ebp), %eax
	movl	$0, 52(%eax)
L126:
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	je	L136
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	_free
	movl	8(%ebp), %eax
	movl	$0, 44(%eax)
L136:
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	je	L137
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, (%esp)
	call	_free
	movl	8(%ebp), %eax
	movl	$0, 48(%eax)
L137:
	cmpl	$0, 8(%ebp)
	je	L138
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	$0, 8(%ebp)
L138:
	nop
	leave
	ret
	.globl	_transport_write_http_config
	.def	_transport_write_http_config;	.scl	2;	.type	32;	.endef
_transport_write_http_config:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	52(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 1024(%eax)
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 1028(%eax)
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 1032(%eax)
	movl	8(%ebp), %eax
	movl	44(%eax), %edx
	movl	12(%ebp), %eax
	movl	$512, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_wcsncpy
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	L140
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	12(%ebp), %edx
	addl	$1548, %edx
	movl	$256, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_wcsncpy
L140:
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	L141
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	12(%ebp), %edx
	addl	$2060, %edx
	movl	$20, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_memcpy
L141:
	movl	-12(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	L142
	movl	-12(%ebp), %eax
	movl	32(%eax), %eax
	movl	12(%ebp), %edx
	addl	$1036, %edx
	movl	$128, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_wcsncpy
L142:
	movl	-12(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	L143
	movl	-12(%ebp), %eax
	movl	36(%eax), %eax
	movl	12(%ebp), %edx
	addl	$1292, %edx
	movl	$64, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_wcsncpy
L143:
	movl	-12(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	je	L144
	movl	-12(%ebp), %eax
	movl	40(%eax), %eax
	movl	12(%ebp), %edx
	addl	$1420, %edx
	movl	$64, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_wcsncpy
L144:
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	je	L146
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movl	12(%ebp), %edx
	addl	$2080, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_wcscpy
L146:
	nop
	leave
	ret
	.def	_transport_get_config_size_http;	.scl	3;	.type	32;	.endef
_transport_get_config_size_http:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$2082, -12(%ebp)
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	je	L148
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	_wcslen
	addl	%eax, %eax
	addl	%eax, -12(%ebp)
L148:
	movl	-12(%ebp), %eax
	leave
	ret
	.section .rdata,"dr"
	.align 2
LC4:
	.ascii "h\0t\0t\0p\0s\0\0\0"
	.text
	.globl	_transport_create_http
	.def	_transport_create_http;	.scl	2;	.type	32;	.endef
_transport_create_http:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$56, %esp
	movl	$76, (%esp)
	call	_malloc
	movl	%eax, -12(%ebp)
	movl	$84, (%esp)
	call	_malloc
	movl	%eax, -16(%ebp)
	cmpl	$0, 12(%ebp)
	je	L151
	movl	12(%ebp), %eax
	movl	$2082, (%eax)
L151:
	movl	$76, 8(%esp)
	movl	$0, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_memset
	movl	$84, 8(%esp)
	movl	$0, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_memset
	movl	8(%ebp), %eax
	movzwl	1548(%eax), %eax
	testw	%ax, %ax
	je	L152
	movl	8(%ebp), %eax
	addl	$1548, %eax
	movl	%eax, (%esp)
	movl	__imp___wcsdup, %eax
	call	*%eax
	movl	-16(%ebp), %edx
	movl	%eax, 20(%edx)
L152:
	movl	8(%ebp), %eax
	movzwl	1036(%eax), %eax
	testw	%ax, %ax
	je	L153
	movl	8(%ebp), %eax
	addl	$1036, %eax
	movl	%eax, (%esp)
	movl	__imp___wcsdup, %eax
	call	*%eax
	movl	-16(%ebp), %edx
	movl	%eax, 32(%edx)
L153:
	movl	8(%ebp), %eax
	movzwl	1292(%eax), %eax
	testw	%ax, %ax
	je	L154
	movl	8(%ebp), %eax
	addl	$1292, %eax
	movl	%eax, (%esp)
	movl	__imp___wcsdup, %eax
	call	*%eax
	movl	-16(%ebp), %edx
	movl	%eax, 36(%edx)
L154:
	movl	8(%ebp), %eax
	movzwl	1420(%eax), %eax
	testw	%ax, %ax
	je	L155
	movl	8(%ebp), %eax
	addl	$1420, %eax
	movl	%eax, (%esp)
	movl	__imp___wcsdup, %eax
	call	*%eax
	movl	-16(%ebp), %edx
	movl	%eax, 40(%edx)
L155:
	movl	8(%ebp), %eax
	movl	$5, 8(%esp)
	movl	$LC4, 4(%esp)
	movl	%eax, (%esp)
	call	_wcsncmp
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %edx
	movl	-16(%ebp), %eax
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movzwl	2080(%eax), %eax
	testw	%ax, %ax
	je	L156
	movl	8(%ebp), %eax
	addl	$2080, %eax
	movl	%eax, (%esp)
	movl	__imp___wcsdup, %eax
	call	*%eax
	movl	-16(%ebp), %edx
	movl	%eax, 44(%edx)
	cmpl	$0, 12(%ebp)
	je	L156
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	_wcslen
	leal	(%eax,%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
L156:
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	L157
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	_free
	movl	-16(%ebp), %eax
	movl	$0, 12(%eax)
L157:
	movl	$0, -36(%ebp)
	movl	$0, -32(%ebp)
	movl	$0, -28(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	movl	8(%ebp), %eax
	leal	2060(%eax), %edx
	movl	$20, 8(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_memcmp
	testl	%eax, %eax
	je	L158
	movl	$20, (%esp)
	call	_malloc
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%edx, 12(%eax)
	movl	8(%ebp), %eax
	leal	2060(%eax), %edx
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	$20, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_memcpy
L158:
	movl	-16(%ebp), %eax
	movl	$_get_request_winhttp, 60(%eax)
	movl	-16(%ebp), %eax
	movl	$_send_request_winhttp, 64(%eax)
	movl	-16(%ebp), %eax
	movl	$_close_request_winhttp, 68(%eax)
	movl	-16(%ebp), %eax
	movl	$_validate_response_winhttp, 72(%eax)
	movl	-16(%ebp), %eax
	movl	$_receive_response_winhttp, 76(%eax)
	movl	-16(%ebp), %eax
	movl	$_read_response_winhttp, 80(%eax)
	movl	8(%ebp), %eax
	movl	1024(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 52(%eax)
	movl	8(%ebp), %eax
	movl	1028(%eax), %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 56(%eax)
	movl	8(%ebp), %eax
	movl	1032(%eax), %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 60(%eax)
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L159
	movl	$6, %edx
	jmp	L160
L159:
	movl	$2, %edx
L160:
	movl	-12(%ebp), %eax
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp___wcsdup, %eax
	call	*%eax
	movl	-12(%ebp), %edx
	movl	%eax, 44(%edx)
	movl	-12(%ebp), %eax
	movl	44(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 16(%eax)
	movl	-12(%ebp), %eax
	movl	$_packet_transmit_http, 36(%eax)
	movl	-12(%ebp), %eax
	movl	$_server_dispatch_http, 32(%eax)
	movl	-12(%ebp), %eax
	movl	$_server_init_winhttp, 20(%eax)
	movl	-12(%ebp), %eax
	movl	$_server_deinit_http, 24(%eax)
	movl	-12(%ebp), %eax
	movl	$_transport_destroy_http, 28(%eax)
	movl	-12(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 48(%eax)
	call	_current_unix_timestamp
	movl	-12(%ebp), %edx
	movl	%eax, 64(%edx)
	movl	-12(%ebp), %eax
	movl	$_transport_get_config_size_http, 12(%eax)
	movl	-12(%ebp), %eax
	leave
	ret
	.ident	"GCC: (GNU) 9.3-win32 20200320"
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
