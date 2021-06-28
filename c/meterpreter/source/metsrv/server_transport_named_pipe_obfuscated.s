	.file	"server_transport_named_pipe.c"
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
	.ascii "[NP DISPATCH] testing for data on the pipe, making sure there's enough for a packet header\0"
	.align 4
LC3:
	.ascii "[NP DISPATCH] pipe data found %u bytes\0"
	.align 4
LC4:
	.ascii "[NP DISPATCH] pipe data not found, sleeping (error %u)\0"
	.text
	.def	_server_pipe_poll;	.scl	3;	.type	32;	.endef
_server_pipe_poll:
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
	movl	$LC2, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	movl	$0, 20(%esp)
push %eax
pop %eax
	leal	-24(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 16(%esp)
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
	movl	__imp__PeekNamedPipe@24, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$24, %esp
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L3
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	cmpl	$31, %eax
push %eax
pop %eax
	jbe	L3
push %eax
pop %eax
	movl	$1, %eax
push %eax
pop %eax
	jmp	L4
push %eax
pop %eax
L3:
	movl	$0, %eax
push %eax
pop %eax
L4:
	movl	%eax, -20(%ebp)
push %eax
pop %eax
	movl	__imp__GetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
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
	cmpl	$0, -20(%ebp)
push %eax
pop %eax
	je	L5
push %eax
pop %eax
	movl	-24(%ebp), %eax
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
	movl	$0, -12(%ebp)
push %eax
pop %eax
	jmp	L6
push %eax
pop %eax
L5:
	cmpl	$109, -12(%ebp)
push %eax
pop %eax
	je	L6
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
	movl	$LC4, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	12(%ebp), %eax
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
	movl	$232, -12(%ebp)
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
	.section .rdata,"dr"
	.align 4
LC5:
	.ascii "[PIPE] Beginning read loop for a total of %u\0"
	.align 4
LC6:
	.ascii "[PIPE] Trying to read %u (0x%x) bytes\0"
	.align 4
LC7:
	.ascii "[PIPE] ReadFile returned error %u 0x%x\0"
	.align 4
LC8:
	.ascii "[PIPE] ReadFile claims to have read %u (0x%x) bytes\0"
LC9:
	.ascii "[PIPE] Done reading bytes\0"
	.text
	.globl	_read_raw_bytes_to_buffer
	.def	_read_raw_bytes_to_buffer;	.scl	2;	.type	32;	.endef
_read_raw_bytes_to_buffer:
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
	movl	$0, -20(%ebp)
push %eax
pop %eax
	movl	$0, -16(%ebp)
push %eax
pop %eax
	movl	$0, -12(%ebp)
push %eax
pop %eax
	movl	20(%ebp), %eax
push %eax
pop %eax
	movl	$0, (%eax)
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC5, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L9
push %eax
pop %eax
L12:
	movl	20(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	movl	16(%ebp), %edx
push %eax
pop %eax
	subl	%eax, %edx
push %eax
pop %eax
	movl	%edx, %eax
push %eax
pop %eax
	movl	$65536, %edx
push %eax
pop %eax
	cmpl	$65536, %eax
push %eax
pop %eax
	cmovbe	%eax, %edx
push %eax
pop %eax
	movl	20(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	movl	16(%ebp), %ecx
push %eax
pop %eax
	subl	%eax, %ecx
push %eax
pop %eax
	movl	%ecx, %eax
push %eax
pop %eax
	movl	$65536, %ecx
push %eax
pop %eax
	cmpl	$65536, %eax
push %eax
pop %eax
	cmova	%ecx, %eax
push %eax
pop %eax
	movl	%edx, 8(%esp)
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
	movl	20(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	movl	16(%ebp), %edx
push %eax
pop %eax
	subl	%eax, %edx
push %eax
pop %eax
	movl	%edx, %eax
push %eax
pop %eax
	movl	$65536, %edx
push %eax
pop %eax
	cmpl	$65536, %eax
push %eax
pop %eax
	cmovbe	%eax, %edx
push %eax
pop %eax
	movl	20(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %ecx
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	leal	(%ecx,%eax), %ebx
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	movl	$0, 16(%esp)
push %eax
pop %eax
	leal	-20(%ebp), %ecx
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
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__ReadFile@20, %eax
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
	jne	L10
push %eax
pop %eax
	movl	__imp__GetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
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
	jmp	L11
push %eax
pop %eax
L10:
	movl	-20(%ebp), %edx
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 8(%esp)
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
	movl	20(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %edx
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	addl	%eax, %edx
push %eax
pop %eax
	movl	20(%ebp), %eax
push %eax
pop %eax
	movl	%edx, (%eax)
push %eax
pop %eax
L9:
	movl	20(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	cmpl	%eax, 16(%ebp)
push %eax
pop %eax
	ja	L12
push %eax
pop %eax
L11:
	movl	$LC9, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-12(%ebp), %eax
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
LC10:
	.ascii "[PIPE PACKET RECEIVE] reading in the header from pipe handle: %p\0"
LC11:
	.ascii "[PIPE] More bytes required\0"
	.align 4
LC12:
	.ascii "[PIPE] we didn't get enough header bytes\0"
	.align 4
LC13:
	.ascii "[PIPE] the XOR key is: %02x%02x%02x%02x\0"
	.align 4
LC14:
	.ascii "[PIPE] Packet header: [0x%02X 0x%02X 0x%02X 0x%02X] [0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X] [0x%02X 0x%02X 0x%02X 0x%02X] [0x%02X 0x%02X 0x%02X 0x%02X] [0x%02X 0x%02X 0x%02X 0x%02X]\0"
	.align 4
LC15:
	.ascii "[PIPE] discovered a length header, assuming it's metsrv of length %d\0"
	.align 4
LC16:
	.ascii "[PIPE] Failed to read all bytes when flushing the buffer: %u vs %u\0"
	.align 4
LC17:
	.ascii "[PIPE] XOR key looks fine, moving on\0"
	.align 4
LC18:
	.ascii "[PIPE] Payload length is %u 0x%08x\0"
	.align 4
LC19:
	.ascii "[PIPE] total buffer size for the packet is %u 0x%08x\0"
	.align 4
LC20:
	.ascii "[PIPE] Failed to create the packet buffer\0"
	.align 4
LC21:
	.ascii "[PIPE] Allocated packet buffer at %p\0"
LC22:
	.ascii "[PIPE] wanted %u read %u\0"
	.align 4
LC23:
	.ascii "[PIPE] Failed to get all the payload bytes\0"
LC24:
	.ascii "[PIPE] decrypting packet\0"
	.text
	.def	_packet_receive_named_pipe;	.scl	3;	.type	32;	.endef
_packet_receive_named_pipe:
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
	subl	$364, %esp
push %eax
pop %eax
	movl	$0, -28(%ebp)
push %eax
pop %eax
	movl	$0, -40(%ebp)
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
L15:
	movl	%ecx, -112(%ebp,%eax)
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
	movl	$1, -32(%ebp)
push %eax
pop %eax
	movl	$0, -36(%ebp)
push %eax
pop %eax
	movl	$0, -44(%ebp)
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
	movl	%eax, -48(%ebp)
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
	movl	-48(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
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
	jmp	L17
push %eax
pop %eax
L21:
	movl	$32, %eax
push %eax
pop %eax
	subl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	leal	-112(%ebp), %ecx
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	leal	(%ecx,%eax), %ebx
push %eax
pop %eax
	movl	-48(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	movl	$0, 16(%esp)
push %eax
pop %eax
	leal	-116(%ebp), %ecx
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
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__ReadFile@20, %eax
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
	jne	L18
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
	jmp	L19
push %eax
pop %eax
L18:
	movl	-116(%ebp), %eax
push %eax
pop %eax
	addl	%eax, -28(%ebp)
push %eax
pop %eax
	cmpl	$32, -28(%ebp)
push %eax
pop %eax
	je	L20
push %eax
pop %eax
	movl	$LC11, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L17
push %eax
pop %eax
L20:
	movl	$0, -32(%ebp)
push %eax
pop %eax
L17:
	cmpl	$0, -32(%ebp)
push %eax
pop %eax
	jne	L21
push %eax
pop %eax
	cmpl	$32, -28(%ebp)
push %eax
pop %eax
	je	L22
push %eax
pop %eax
	movl	$LC12, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L19
push %eax
pop %eax
L22:
	movzbl	-109(%ebp), %eax
push %eax
pop %eax
	movzbl	%al, %ebx
push %eax
pop %eax
	movzbl	-110(%ebp), %eax
push %eax
pop %eax
	movzbl	%al, %ecx
push %eax
pop %eax
	movzbl	-111(%ebp), %eax
push %eax
pop %eax
	movzbl	%al, %edx
push %eax
pop %eax
	movzbl	-112(%ebp), %eax
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
	movl	$LC13, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	leal	-112(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -52(%ebp)
push %eax
pop %eax
	movl	-52(%ebp), %eax
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
	movl	-52(%ebp), %eax
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
	movl	%esi, -124(%ebp)
push %eax
pop %eax
	movl	-52(%ebp), %eax
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
	movl	%edi, -128(%ebp)
push %eax
pop %eax
	movl	-52(%ebp), %eax
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
	movl	%ebx, -132(%ebp)
push %eax
pop %eax
	movl	-52(%ebp), %eax
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
	movl	%ecx, -136(%ebp)
push %eax
pop %eax
	movl	-52(%ebp), %eax
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
	movl	%eax, -140(%ebp)
push %eax
pop %eax
	movl	-52(%ebp), %eax
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
	movl	%esi, -144(%ebp)
push %eax
pop %eax
	movl	-52(%ebp), %eax
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
	movl	%edi, -148(%ebp)
push %eax
pop %eax
	movl	-52(%ebp), %eax
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
	movl	%ebx, -152(%ebp)
push %eax
pop %eax
	movl	-52(%ebp), %eax
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
	movl	%ecx, -156(%ebp)
push %eax
pop %eax
	movl	-52(%ebp), %eax
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
	movl	%eax, -160(%ebp)
push %eax
pop %eax
	movl	-52(%ebp), %eax
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
	movl	%esi, -164(%ebp)
push %eax
pop %eax
	movl	-52(%ebp), %eax
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
	movl	%edi, -168(%ebp)
push %eax
pop %eax
	movl	-52(%ebp), %eax
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
	movl	%ebx, -172(%ebp)
push %eax
pop %eax
	movl	-52(%ebp), %eax
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
	movl	%ecx, -176(%ebp)
push %eax
pop %eax
	movl	-52(%ebp), %eax
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
	movl	%eax, -180(%ebp)
push %eax
pop %eax
	movl	-52(%ebp), %eax
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
	movl	%esi, -184(%ebp)
push %eax
pop %eax
	movl	-52(%ebp), %eax
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
	movl	%edi, -188(%ebp)
push %eax
pop %eax
	movl	-52(%ebp), %eax
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
	movl	%ebx, -192(%ebp)
push %eax
pop %eax
	movl	-52(%ebp), %eax
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
	movl	%ecx, -196(%ebp)
push %eax
pop %eax
	movl	-52(%ebp), %eax
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
	movl	%eax, -200(%ebp)
push %eax
pop %eax
	movl	-52(%ebp), %eax
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
	movl	%esi, -204(%ebp)
push %eax
pop %eax
	movl	-52(%ebp), %eax
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
	movl	%edi, -208(%ebp)
push %eax
pop %eax
	movl	-52(%ebp), %eax
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
	movl	%ebx, -212(%ebp)
push %eax
pop %eax
	movl	-52(%ebp), %eax
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
	movl	%ecx, -216(%ebp)
push %eax
pop %eax
	movl	-52(%ebp), %eax
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
	movl	%eax, -220(%ebp)
push %eax
pop %eax
	movl	-52(%ebp), %eax
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
	movl	-52(%ebp), %eax
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
	movl	-52(%ebp), %eax
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
	movl	-52(%ebp), %eax
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
	movl	-52(%ebp), %eax
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
	movl	%eax, -224(%ebp)
push %eax
pop %eax
	movl	-52(%ebp), %eax
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
	movl	-124(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 124(%esp)
push %eax
pop %eax
	movl	-128(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 120(%esp)
push %eax
pop %eax
	movl	-132(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 116(%esp)
push %eax
pop %eax
	movl	-136(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 112(%esp)
push %eax
pop %eax
	movl	-140(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 108(%esp)
push %eax
pop %eax
	movl	-144(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 104(%esp)
push %eax
pop %eax
	movl	-148(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 100(%esp)
push %eax
pop %eax
	movl	-152(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 96(%esp)
push %eax
pop %eax
	movl	-156(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 92(%esp)
push %eax
pop %eax
	movl	-160(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 88(%esp)
push %eax
pop %eax
	movl	-164(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 84(%esp)
push %eax
pop %eax
	movl	-168(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 80(%esp)
push %eax
pop %eax
	movl	-172(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 76(%esp)
push %eax
pop %eax
	movl	-176(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 72(%esp)
push %eax
pop %eax
	movl	-180(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 68(%esp)
push %eax
pop %eax
	movl	-184(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 64(%esp)
push %eax
pop %eax
	movl	-188(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 60(%esp)
push %eax
pop %eax
	movl	-192(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 56(%esp)
push %eax
pop %eax
	movl	-196(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 52(%esp)
push %eax
pop %eax
	movl	-200(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 48(%esp)
push %eax
pop %eax
	movl	-204(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 44(%esp)
push %eax
pop %eax
	movl	-208(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 40(%esp)
push %eax
pop %eax
	movl	-212(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 36(%esp)
push %eax
pop %eax
	movl	-216(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 32(%esp)
push %eax
pop %eax
	movl	-220(%ebp), %edx
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
	movl	-224(%ebp), %edi
push %eax
pop %eax
	movl	%edi, 8(%esp)
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
	movzbl	-109(%ebp), %eax
push %eax
pop %eax
	testb	%al, %al
push %eax
pop %eax
	jne	L23
push %eax
pop %eax
	leal	-112(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
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
	movl	$LC15, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-72(%ebp), %eax
push %eax
pop %eax
	subl	$28, %eax
push %eax
pop %eax
	movl	%eax, -76(%ebp)
push %eax
pop %eax
	movl	-76(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_malloc
push %eax
pop %eax
	movl	%eax, -80(%ebp)
push %eax
pop %eax
	movl	-76(%ebp), %eax
push %eax
pop %eax
	leal	-116(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 12(%esp)
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	-80(%ebp), %eax
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
	call	_read_raw_bytes_to_buffer
push %eax
pop %eax
	movl	-80(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_free
push %eax
pop %eax
	movl	-116(%ebp), %eax
push %eax
pop %eax
	cmpl	%eax, -76(%ebp)
push %eax
pop %eax
	je	L24
push %eax
pop %eax
	movl	-116(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	-76(%ebp), %eax
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
	jmp	L19
push %eax
pop %eax
L24:
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
	jmp	L19
push %eax
pop %eax
L23:
	movl	$LC17, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	leal	-112(%ebp), %eax
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
	leal	-112(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_xor_bytes
push %eax
pop %eax
	leal	-112(%ebp), %eax
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
	movl	%esi, -124(%ebp)
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
	movl	%edi, -128(%ebp)
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
	movl	%ebx, -132(%ebp)
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
	movl	%ecx, -136(%ebp)
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
	movl	%eax, -140(%ebp)
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
	movl	%esi, -144(%ebp)
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
	movl	%edi, -148(%ebp)
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
	movl	%ebx, -152(%ebp)
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
	movl	%ecx, -156(%ebp)
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
	movl	%eax, -160(%ebp)
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
	movl	%esi, -164(%ebp)
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
	movl	%edi, -168(%ebp)
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
	movl	%ebx, -172(%ebp)
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
	movl	%ecx, -176(%ebp)
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
	movl	%eax, -180(%ebp)
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
	movl	%esi, -184(%ebp)
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
	movl	%edi, -188(%ebp)
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
	movl	%ebx, -192(%ebp)
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
	movl	%ecx, -196(%ebp)
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
	movl	%eax, -200(%ebp)
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
	movl	%esi, -204(%ebp)
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
	movl	%edi, -208(%ebp)
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
	movl	%ebx, -212(%ebp)
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
	movl	%ecx, -216(%ebp)
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
	movl	%eax, -220(%ebp)
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
	movl	%eax, -224(%ebp)
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
	movl	-124(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 124(%esp)
push %eax
pop %eax
	movl	-128(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 120(%esp)
push %eax
pop %eax
	movl	-132(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 116(%esp)
push %eax
pop %eax
	movl	-136(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 112(%esp)
push %eax
pop %eax
	movl	-140(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 108(%esp)
push %eax
pop %eax
	movl	-144(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 104(%esp)
push %eax
pop %eax
	movl	-148(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 100(%esp)
push %eax
pop %eax
	movl	-152(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 96(%esp)
push %eax
pop %eax
	movl	-156(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 92(%esp)
push %eax
pop %eax
	movl	-160(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 88(%esp)
push %eax
pop %eax
	movl	-164(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 84(%esp)
push %eax
pop %eax
	movl	-168(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 80(%esp)
push %eax
pop %eax
	movl	-172(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 76(%esp)
push %eax
pop %eax
	movl	-176(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 72(%esp)
push %eax
pop %eax
	movl	-180(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 68(%esp)
push %eax
pop %eax
	movl	-184(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 64(%esp)
push %eax
pop %eax
	movl	-188(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 60(%esp)
push %eax
pop %eax
	movl	-192(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 56(%esp)
push %eax
pop %eax
	movl	-196(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 52(%esp)
push %eax
pop %eax
	movl	-200(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 48(%esp)
push %eax
pop %eax
	movl	-204(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 44(%esp)
push %eax
pop %eax
	movl	-208(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 40(%esp)
push %eax
pop %eax
	movl	-212(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 36(%esp)
push %eax
pop %eax
	movl	-216(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 32(%esp)
push %eax
pop %eax
	movl	-220(%ebp), %edx
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
	movl	-224(%ebp), %esi
push %eax
pop %eax
	movl	%esi, 8(%esp)
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
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	16(%eax), %eax
push %eax
pop %eax
	addl	$32, %eax
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
	je	L25
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
	movl	-108(%ebp), %edx
push %eax
pop %eax
	movl	%edx, (%eax)
push %eax
pop %eax
	movl	-104(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 4(%eax)
push %eax
pop %eax
	movl	-100(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 8(%eax)
push %eax
pop %eax
	movl	-96(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 12(%eax)
push %eax
pop %eax
L25:
	movl	-88(%ebp), %eax
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
	movl	%eax, -60(%ebp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
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
	movl	-60(%ebp), %eax
push %eax
pop %eax
	addl	$32, %eax
push %eax
pop %eax
	movl	%eax, -64(%ebp)
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	-64(%ebp), %eax
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
	movl	-60(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -40(%ebp)
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_malloc
push %eax
pop %eax
	movl	%eax, -36(%ebp)
push %eax
pop %eax
	cmpl	$0, -36(%ebp)
push %eax
pop %eax
	jne	L26
push %eax
pop %eax
	movl	$LC20, (%esp)
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
	jmp	L19
push %eax
pop %eax
L26:
	movl	-36(%ebp), %eax
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
	movl	$28, 8(%esp)
push %eax
pop %eax
	leal	-112(%ebp), %eax
push %eax
pop %eax
	addl	$4, %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	leal	-112(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_xor_bytes
push %eax
pop %eax
	movl	$32, 12(%esp)
push %eax
pop %eax
	leal	-112(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$32, 4(%esp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
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
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$32, %eax
push %eax
pop %eax
	movl	%eax, -44(%ebp)
push %eax
pop %eax
	leal	-116(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 12(%esp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	-44(%ebp), %eax
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
	call	_read_raw_bytes_to_buffer
push %eax
pop %eax
	movl	%eax, -68(%ebp)
push %eax
pop %eax
	movl	-116(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	-60(%ebp), %eax
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
	movl	-116(%ebp), %eax
push %eax
pop %eax
	cmpl	%eax, -60(%ebp)
push %eax
pop %eax
	je	L27
push %eax
pop %eax
	movl	$LC23, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-68(%ebp), %eax
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
	jmp	L19
push %eax
pop %eax
L27:
	movl	$LC24, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 12(%esp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
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
	movl	-36(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_free
push %eax
pop %eax
	movl	$0, -36(%ebp)
push %eax
pop %eax
L19:
	movl	__imp__GetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	%eax, -68(%ebp)
push %eax
pop %eax
	cmpl	$0, -36(%ebp)
push %eax
pop %eax
	je	L28
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_free
push %eax
pop %eax
L28:
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
	movl	-68(%ebp), %eax
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
LC25:
	.ascii "[NP DISPATCH] entering server_dispatch( 0x%08X )\0"
	.align 4
LC26:
	.ascii "[NP DISPATCH] server dispatch thread signaled to terminate...\0"
	.align 4
LC27:
	.ascii "[NP DISPATCH] packet_receive returned %d, exiting dispatcher...\0"
LC28:
	.ascii "continue\0"
LC29:
	.ascii "stop\0"
	.align 4
LC30:
	.ascii "[NP DISPATCH] command_process result: %s\0"
	.align 4
LC31:
	.ascii "[NP DISPATCH] Received NULL packet, could be metsrv being ignored\0"
	.align 4
LC32:
	.ascii "[NP DISPATCH] session has ended\0"
	.align 4
LC33:
	.ascii "[NP DISPATCH] communications has timed out\0"
	.align 4
LC34:
	.ascii "[NP DISPATCH] server_pipe_poll returned %d, exiting dispatcher...\0"
	.align 4
LC35:
	.ascii "[NP DISPATCH] leaving server_dispatch.\0"
	.text
	.def	_server_dispatch_named_pipe;	.scl	3;	.type	32;	.endef
_server_dispatch_named_pipe:
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
	movl	$LC25, (%esp)
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
	jmp	L31
push %eax
pop %eax
L42:
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
	je	L32
push %eax
pop %eax
	movl	$LC26, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L33
push %eax
pop %eax
L32:
	movl	$500, 4(%esp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_server_pipe_poll
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
	cmpl	$0, -16(%ebp)
push %eax
pop %eax
	jne	L34
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
	call	_packet_receive_named_pipe
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
	cmpl	$0, -16(%ebp)
push %eax
pop %eax
	je	L35
push %eax
pop %eax
	movl	-16(%ebp), %eax
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
	jmp	L33
push %eax
pop %eax
L35:
	movl	-36(%ebp), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L36
push %eax
pop %eax
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
	je	L37
push %eax
pop %eax
	movl	$LC28, %eax
push %eax
pop %eax
	jmp	L38
push %eax
pop %eax
L37:
	movl	$LC29, %eax
push %eax
pop %eax
L38:
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC30, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L39
push %eax
pop %eax
L36:
	movl	$LC31, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
L39:
	call	_current_unix_timestamp
push %eax
pop %eax
	movl	%eax, -20(%ebp)
push %eax
pop %eax
	jmp	L31
push %eax
pop %eax
L34:
	cmpl	$109, -16(%ebp)
push %eax
pop %eax
	je	L40
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
	jle	L41
push %eax
pop %eax
	movl	$0, -16(%ebp)
push %eax
pop %eax
	movl	$LC32, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L33
push %eax
pop %eax
L41:
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
	jle	L31
push %eax
pop %eax
	movl	$5035, -16(%ebp)
push %eax
pop %eax
	movl	$LC33, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L33
push %eax
pop %eax
L40:
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC34, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L33
push %eax
pop %eax
L31:
	cmpl	$0, -12(%ebp)
push %eax
pop %eax
	jne	L42
push %eax
pop %eax
L33:
	movl	$LC35, (%esp)
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
	.section .rdata,"dr"
	.align 4
LC36:
	.ascii "[TRANS PIPE] Destroying pipe transport for url %S\0"
	.text
	.def	_transport_destroy_named_pipe;	.scl	3;	.type	32;	.endef
_transport_destroy_named_pipe:
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
	je	L49
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	cmpl	$8, %eax
push %eax
pop %eax
	jne	L49
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
	movl	$LC36, (%esp)
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
	je	L46
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
L46:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	48(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L47
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
	testl	%eax, %eax
push %eax
pop %eax
	je	L47
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
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_free
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	48(%eax), %eax
push %eax
pop %eax
	movl	$0, (%eax)
push %eax
pop %eax
L47:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	48(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L48
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
L48:
	cmpl	$0, 8(%ebp)
push %eax
pop %eax
	je	L49
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
L49:
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
LC37:
	.ascii "[NP] Resetting transport from 0x%x\0"
LC38:
	.ascii "[NP] Closing the handle\0"
LC39:
	.ascii "[NP] Handle close failed: %u\0"
LC40:
	.ascii "[NP] Handle closed\0"
	.align 4
LC41:
	.ascii "[NP] Transport 0x%p is now reset to 0x%x\0"
	.text
	.def	_transport_reset_named_pipe;	.scl	3;	.type	32;	.endef
_transport_reset_named_pipe:
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
	je	L54
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	cmpl	$8, %eax
push %eax
pop %eax
	jne	L54
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
	movl	4(%eax), %eax
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
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L52
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	cmpl	$-1, %eax
push %eax
pop %eax
	je	L52
push %eax
pop %eax
	movl	$LC38, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__CloseHandle@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L53
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
	movl	$LC39, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L52
push %eax
pop %eax
L53:
	movl	$LC40, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
L52:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	$0, 4(%eax)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
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
	movl	$LC41, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
L54:
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
LC42:
	.ascii "[NP CONFIGURE] pipe name is %S, attempting to create\0"
	.align 4
LC43:
	.ascii "[NP CONFIGURE] failed to create pipe: %u 0x%x\0"
	.align 4
LC44:
	.ascii "[NP CONFIGURE] Connection failed, sleeping for %u s\0"
	.text
	.def	_reverse_named_pipe;	.scl	3;	.type	32;	.endef
_reverse_named_pipe:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$56, %esp
push %eax
pop %eax
	movl	$0, -16(%ebp)
push %eax
pop %eax
	movl	$-1, -12(%ebp)
push %eax
pop %eax
	call	_current_unix_timestamp
push %eax
pop %eax
	movl	%eax, -20(%ebp)
push %eax
pop %eax
L58:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC42, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	$0, 24(%esp)
push %eax
pop %eax
	movl	$0, 20(%esp)
push %eax
pop %eax
	movl	$3, 16(%esp)
push %eax
pop %eax
	movl	$0, 12(%esp)
push %eax
pop %eax
	movl	$0, 8(%esp)
push %eax
pop %eax
	movl	$-1073741824, 4(%esp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__CreateFileW@28, %eax
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
	cmpl	$-1, -12(%ebp)
push %eax
pop %eax
	jne	L60
push %eax
pop %eax
	movl	$-1, -12(%ebp)
push %eax
pop %eax
	movl	__imp__GetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
	movl	-16(%ebp), %eax
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
	movl	$LC43, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	8(%eax), %eax
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
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	8(%eax), %eax
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
	movl	-20(%ebp), %eax
push %eax
pop %eax
	subl	%eax, %edx
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	cmpl	%eax, %edx
push %eax
pop %eax
	jb	L58
push %eax
pop %eax
	jmp	L57
push %eax
pop %eax
L60:
	nop
push %eax
pop %eax
L57:
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
LC45:
	.ascii "SeSecurityPrivilege\0"
	.align 4
LC46:
	.ascii "[NP CONFIGURE] Failed to connect pipe: %u 0x%x\0"
	.align 4
LC47:
	.ascii "[NP CONFIGURE] Trying again in %u s\0"
	.text
	.def	_bind_named_pipe;	.scl	3;	.type	32;	.endef
_bind_named_pipe:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$72, %esp
push %eax
pop %eax
	movl	$0, -12(%ebp)
push %eax
pop %eax
	movl	$-1, -16(%ebp)
push %eax
pop %eax
	leal	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$1, 4(%esp)
push %eax
pop %eax
	movl	$LC45, (%esp)
push %eax
pop %eax
	call	_toggle_privilege
push %eax
pop %eax
	movl	%eax, -20(%ebp)
push %eax
pop %eax
	cmpl	$0, -20(%ebp)
push %eax
pop %eax
	jne	L62
push %eax
pop %eax
	movl	$0, -40(%ebp)
push %eax
pop %eax
	movl	$0, -36(%ebp)
push %eax
pop %eax
	movl	$0, -32(%ebp)
push %eax
pop %eax
	leal	-40(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_create_pipe_security_attributes
push %eax
pop %eax
	leal	-40(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 28(%esp)
push %eax
pop %eax
	movl	$0, 24(%esp)
push %eax
pop %eax
	movl	$65536, 20(%esp)
push %eax
pop %eax
	movl	$65536, 16(%esp)
push %eax
pop %eax
	movl	$255, 12(%esp)
push %eax
pop %eax
	movl	$0, 8(%esp)
push %eax
pop %eax
	movl	$3, 4(%esp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__CreateNamedPipeW@32, %eax
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
	movl	__imp__GetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L62
push %eax
pop %eax
	leal	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$0, 4(%esp)
push %eax
pop %eax
	movl	$LC45, (%esp)
push %eax
pop %eax
	call	_toggle_privilege
push %eax
pop %eax
L62:
	cmpl	$-1, -16(%ebp)
push %eax
pop %eax
	jne	L64
push %eax
pop %eax
	movl	$0, 28(%esp)
push %eax
pop %eax
	movl	$0, 24(%esp)
push %eax
pop %eax
	movl	$65536, 20(%esp)
push %eax
pop %eax
	movl	$65536, 16(%esp)
push %eax
pop %eax
	movl	$255, 12(%esp)
push %eax
pop %eax
	movl	$0, 8(%esp)
push %eax
pop %eax
	movl	$3, 4(%esp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__CreateNamedPipeW@32, %eax
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
	movl	__imp__GetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
L64:
	cmpl	$-1, -16(%ebp)
push %eax
pop %eax
	jne	L65
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
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
	movl	$-1, %eax
push %eax
pop %eax
	jmp	L70
push %eax
pop %eax
L65:
	call	_current_unix_timestamp
push %eax
pop %eax
	movl	%eax, -24(%ebp)
push %eax
pop %eax
L69:
	movl	$0, 4(%esp)
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__ConnectNamedPipe@8, %eax
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
	je	L67
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	jmp	L70
push %eax
pop %eax
L67:
	movl	__imp__GetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	cmpl	$535, -12(%ebp)
push %eax
pop %eax
	jne	L68
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	jmp	L70
push %eax
pop %eax
L68:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
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
	movl	$1, 4(%esp)
push %eax
pop %eax
	movl	$LC47, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	$1, (%esp)
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
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	cmpl	%eax, %edx
push %eax
pop %eax
	jb	L69
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__CloseHandle@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	movl	$-1, %eax
push %eax
pop %eax
L70:
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.section .rdata,"dr"
LC48:
	.ascii "[NP CONFIGURE] Url: %S\0"
LC49:
	.ascii "[NP CONFIGURE] Copied: %S\0"
	.align 4
LC50:
	.ascii "[NP CONFIGURE] Making sure it's a pipe ...\0"
	.align 2
LC51:
	.ascii "p\0i\0p\0e\0\0\0"
	.align 4
LC52:
	.ascii "[NP CONFIGURE] Yup, it is, parsing\0"
	.align 2
LC53:
	.ascii "/\0/\0\0\0"
LC54:
	.ascii "[NP CONFIGURE] pServer is %p\0"
LC55:
	.ascii "[NP CONFIGURE] pServer is %S\0"
LC56:
	.ascii "[NP CONFIGURE] pName is %p\0"
LC57:
	.ascii "[NP CONFIGURE] pName is %S\0"
LC58:
	.ascii "[NP CONFIGURE] Server: %S\0"
LC59:
	.ascii "[NP CONFIGURE] Name: %S\0"
	.align 2
LC60:
	.ascii "\\\0\\\0%\0s\0\\\0p\0i\0p\0e\0\\\0%\0s\0\0\0"
	.align 4
LC61:
	.ascii "[NP CONFIGURE] Full pipe name: %S\0"
	.align 4
LC62:
	.ascii "[NP] Connection already running on %u\0"
	.align 4
LC63:
	.ascii "[NP CONFIGURE] pipe name is %p\0"
	.align 2
LC64:
	.ascii "\\\0\\\0.\0\\\0\0\0"
	.align 4
LC65:
	.ascii "[NP] we might have had an invalid URL\0"
LC66:
	.ascii "[SERVER] Something went wrong\0"
	.align 4
LC67:
	.ascii "[SERVER] Looking good, FORWARD!\0"
	.text
	.def	_configure_named_pipe_connection;	.scl	3;	.type	32;	.endef
_configure_named_pipe_connection:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	pushl	%ebx
push %eax
pop %eax
	subl	$1092, %esp
push %eax
pop %eax
	movl	$0, -12(%ebp)
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
	movl	(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L72
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
	movl	$LC48, (%esp)
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
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$512, 4(%esp)
push %eax
pop %eax
	leal	-1056(%ebp), %eax
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
	leal	-1056(%ebp), %eax
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
	call	_current_unix_timestamp
push %eax
pop %eax
	movl	8(%ebp), %edx
push %eax
pop %eax
	movl	%eax, 64(%edx)
push %eax
pop %eax
	movl	$LC50, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	$4, 8(%esp)
push %eax
pop %eax
	movl	$LC51, 4(%esp)
push %eax
pop %eax
	leal	-1056(%ebp), %eax
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
	jne	L72
push %eax
pop %eax
	movl	$LC52, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	$LC53, 4(%esp)
push %eax
pop %eax
	leal	-1056(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_wcsstr
push %eax
pop %eax
	addl	$4, %eax
push %eax
pop %eax
	movl	%eax, -20(%ebp)
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC54, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-20(%ebp), %eax
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
	movl	$47, 4(%esp)
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_wcschr
push %eax
pop %eax
	addl	$2, %eax
push %eax
pop %eax
	movl	%eax, -24(%ebp)
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC56, (%esp)
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
	movl	$LC57, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	$47, 4(%esp)
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_wcschr
push %eax
pop %eax
	movl	%eax, -28(%ebp)
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC56, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	cmpl	$0, -28(%ebp)
push %eax
pop %eax
	je	L73
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movw	$0, (%eax)
push %eax
pop %eax
L73:
	movl	-24(%ebp), %eax
push %eax
pop %eax
	subl	$2, %eax
push %eax
pop %eax
	movw	$0, (%eax)
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC58, (%esp)
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
	movl	$LC59, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-20(%ebp), %eax
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
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_wcslen
push %eax
pop %eax
	addl	%ebx, %eax
push %eax
pop %eax
	addl	$9, %eax
push %eax
pop %eax
	movl	%eax, -32(%ebp)
push %eax
pop %eax
	movl	$2, 4(%esp)
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_calloc
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%edx, (%eax)
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	leal	-1(%eax), %ecx
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	movl	-24(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 20(%esp)
push %eax
pop %eax
	movl	-20(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 16(%esp)
push %eax
pop %eax
	movl	$LC60, 12(%esp)
push %eax
pop %eax
	movl	%ecx, 8(%esp)
push %eax
pop %eax
	movl	-32(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp___snwprintf_s, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
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
L72:
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L74
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	cmpl	$-1, %eax
push %eax
pop %eax
	je	L74
push %eax
pop %eax
	movl	$0, -1060(%ebp)
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	movl	$0, 12(%esp)
push %eax
pop %eax
	movl	$0, 8(%esp)
push %eax
pop %eax
	leal	-1060(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__SetNamedPipeHandleState@16, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$16, %esp
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
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
	jmp	L75
push %eax
pop %eax
L74:
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
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
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L76
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	movl	$4, 8(%esp)
push %eax
pop %eax
	movl	$LC64, 4(%esp)
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
	jne	L77
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	leal	52(%eax), %edx
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_bind_named_pipe
push %eax
pop %eax
	movl	-16(%ebp), %edx
push %eax
pop %eax
	movl	%eax, 4(%edx)
push %eax
pop %eax
	jmp	L75
push %eax
pop %eax
L77:
	movl	8(%ebp), %eax
push %eax
pop %eax
	leal	52(%eax), %edx
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_reverse_named_pipe
push %eax
pop %eax
	movl	-16(%ebp), %edx
push %eax
pop %eax
	movl	%eax, 4(%edx)
push %eax
pop %eax
	jmp	L75
push %eax
pop %eax
L76:
	movl	$LC65, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	$87, -12(%ebp)
push %eax
pop %eax
L75:
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	cmpl	$-1, %eax
push %eax
pop %eax
	jne	L78
push %eax
pop %eax
	movl	$LC66, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	$87, %eax
push %eax
pop %eax
	jmp	L80
push %eax
pop %eax
L78:
	movl	$LC67, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
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
	movl	-12(%ebp), %eax
push %eax
pop %eax
L80:
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
LC68:
	.ascii "[TRANSMIT PIPE] In packet_transmit_named_pipe\0"
	.align 4
LC69:
	.ascii "[TRANSMIT PIPE] Sending packet of %u bytes\0"
	.align 4
LC70:
	.ascii "[TRANSMIT PIPE] Calling WriteFile\0"
	.align 4
LC71:
	.ascii "[TRANSMIT PIPE] WriteFile failed: %u (%x)\0"
	.align 4
LC72:
	.ascii "[TRANSMIT PIPE] WriteFile succeeded, wrote %u bytes\0"
	.align 4
LC73:
	.ascii "[TRANSMIT PIPE] transmit packet failed with return %d at index %d\0"
LC74:
	.ascii "[TRANSMIT PIPE] Packet sent!\0"
	.text
	.globl	_packet_transmit_named_pipe
	.def	_packet_transmit_named_pipe;	.scl	2;	.type	32;	.endef
_packet_transmit_named_pipe:
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
	movl	$LC68, (%esp)
push %eax
pop %eax
	call	_real_dprintf
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
	movl	$0, -12(%ebp)
push %eax
pop %eax
	movl	$0, -24(%ebp)
push %eax
pop %eax
	movl	$0, -16(%ebp)
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	8(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_lock_acquire
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC69, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L82
push %eax
pop %eax
L85:
	movl	$LC70, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	subl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	12(%ebp), %ecx
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	leal	(%ecx,%eax), %ebx
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	movl	$0, 16(%esp)
push %eax
pop %eax
	leal	-24(%ebp), %ecx
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
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__WriteFile@20, %eax
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
	jne	L83
push %eax
pop %eax
	movl	__imp__GetLastError@0, %eax
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
	movl	$LC71, (%esp)
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
	movl	%eax, -16(%ebp)
push %eax
pop %eax
	jmp	L84
push %eax
pop %eax
L83:
	movl	-24(%ebp), %eax
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
	movl	-24(%ebp), %eax
push %eax
pop %eax
	addl	%eax, -12(%ebp)
push %eax
pop %eax
L82:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	cmpl	16(%ebp), %eax
push %eax
pop %eax
	jb	L85
push %eax
pop %eax
L84:
	cmpl	$0, -16(%ebp)
push %eax
pop %eax
	je	L86
push %eax
pop %eax
	movl	-12(%ebp), %eax
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
	movl	$LC73, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L87
push %eax
pop %eax
L86:
	movl	$LC74, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
L87:
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	8(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_lock_release
push %eax
pop %eax
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
	.def	_transport_get_handle_named_pipe;	.scl	3;	.type	32;	.endef
_transport_get_handle_named_pipe:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	cmpl	$0, 8(%ebp)
push %eax
pop %eax
	je	L90
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	48(%eax), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	jmp	L91
push %eax
pop %eax
L90:
	movl	$0, %eax
push %eax
pop %eax
L91:
	popl	%ebp
push %eax
pop %eax
	ret
push %eax
pop %eax
	.def	_transport_set_handle_named_pipe;	.scl	3;	.type	32;	.endef
_transport_set_handle_named_pipe:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	cmpl	$0, 8(%ebp)
push %eax
pop %eax
	je	L94
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	cmpl	$8, %eax
push %eax
pop %eax
	jne	L94
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
	movl	%edx, 4(%eax)
push %eax
pop %eax
L94:
	nop
push %eax
pop %eax
	popl	%ebp
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_transport_write_named_pipe_config
	.def	_transport_write_named_pipe_config;	.scl	2;	.type	32;	.endef
_transport_write_named_pipe_config:
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
	je	L97
push %eax
pop %eax
	cmpl	$0, 12(%ebp)
push %eax
pop %eax
	je	L97
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
L97:
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
LC75:
	.ascii "[NP-MIGRATE] pipe handle: %p\0"
	.align 4
LC76:
	.ascii "[NP-MIGRATE] targetprocess handle: %p\0"
	.text
	.def	_get_migrate_context_named_pipe;	.scl	3;	.type	32;	.endef
_get_migrate_context_named_pipe:
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
	subl	$48, %esp
push %eax
pop %eax
	movl	$24, 4(%esp)
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
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	48(%eax), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC75, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	16(%ebp), %eax
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
	movl	-12(%ebp), %eax
push %eax
pop %eax
	leal	16(%eax), %esi
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	48(%eax), %eax
push %eax
pop %eax
	movl	4(%eax), %ebx
push %eax
pop %eax
	movl	__imp__GetCurrentProcess@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	$2, 24(%esp)
push %eax
pop %eax
	movl	$1, 20(%esp)
push %eax
pop %eax
	movl	$0, 16(%esp)
push %eax
pop %eax
	movl	%esi, 12(%esp)
push %eax
pop %eax
	movl	16(%ebp), %edx
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
	movl	__imp__DuplicateHandle@28, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$28, %esp
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L99
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
	movl	__imp__GetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	jmp	L100
push %eax
pop %eax
L99:
	movl	20(%ebp), %eax
push %eax
pop %eax
	movl	$24, (%eax)
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
L100:
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
	.def	_transport_get_config_size_named_pipe;	.scl	3;	.type	32;	.endef
_transport_get_config_size_named_pipe:
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
LC77:
	.ascii "[TRANS NP] Creating pipe transport for url %S\0"
	.text
	.globl	_transport_create_named_pipe
	.def	_transport_create_named_pipe;	.scl	2;	.type	32;	.endef
_transport_create_named_pipe:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$40, %esp
push %eax
pop %eax
	movl	$76, 4(%esp)
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
	cmpl	$0, 12(%ebp)
push %eax
pop %eax
	je	L104
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	$1036, (%eax)
push %eax
pop %eax
L104:
	call	_lock_create
push %eax
pop %eax
	movl	-16(%ebp), %edx
push %eax
pop %eax
	movl	%eax, 8(%edx)
push %eax
pop %eax
	movl	8(%ebp), %eax
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
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	$8, (%eax)
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
	movl	$_packet_transmit_named_pipe, 36(%eax)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	$_configure_named_pipe_connection, 20(%eax)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	$_transport_destroy_named_pipe, 28(%eax)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	$_transport_reset_named_pipe, 16(%eax)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	$_server_dispatch_named_pipe, 32(%eax)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	$_transport_get_handle_named_pipe, 4(%eax)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	$_transport_set_handle_named_pipe, 8(%eax)
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
	movl	$_get_migrate_context_named_pipe, 40(%eax)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	$_transport_get_config_size_named_pipe, 12(%eax)
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
	.def	_lock_acquire;	.scl	2;	.type	32;	.endef
	.def	_lock_release;	.scl	2;	.type	32;	.endef
	.def	_malloc;	.scl	2;	.type	32;	.endef
	.def	_free;	.scl	2;	.type	32;	.endef
	.def	_xor_bytes;	.scl	2;	.type	32;	.endef
	.def	_is_null_guid;	.scl	2;	.type	32;	.endef
	.def	_decrypt_packet;	.scl	2;	.type	32;	.endef
	.def	_current_unix_timestamp;	.scl	2;	.type	32;	.endef
	.def	_event_poll;	.scl	2;	.type	32;	.endef
	.def	_command_handle;	.scl	2;	.type	32;	.endef
	.def	_sleep;	.scl	2;	.type	32;	.endef
	.def	_toggle_privilege;	.scl	2;	.type	32;	.endef
	.def	_create_pipe_security_attributes;	.scl	2;	.type	32;	.endef
	.def	_wcsncmp;	.scl	2;	.type	32;	.endef
	.def	_wcsstr;	.scl	2;	.type	32;	.endef
	.def	_wcschr;	.scl	2;	.type	32;	.endef
	.def	_wcslen;	.scl	2;	.type	32;	.endef
	.def	_calloc;	.scl	2;	.type	32;	.endef
	.def	_wcsncpy;	.scl	2;	.type	32;	.endef
	.def	_lock_create;	.scl	2;	.type	32;	.endef
