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
	movl	%esp, %ebp
	subl	$56, %esp
	movl	$0, -24(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	48(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_acquire
	movl	$LC2, (%esp)
	call	_real_dprintf
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 20(%esp)
	leal	-24(%ebp), %edx
	movl	%edx, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__PeekNamedPipe@24, %eax
	call	*%eax
	subl	$24, %esp
	testl	%eax, %eax
	je	L3
	movl	-24(%ebp), %eax
	cmpl	$31, %eax
	jbe	L3
	movl	$1, %eax
	jmp	L4
L3:
	movl	$0, %eax
L4:
	movl	%eax, -20(%ebp)
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_release
	cmpl	$0, -20(%ebp)
	je	L5
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC3, (%esp)
	call	_real_dprintf
	movl	$0, -12(%ebp)
	jmp	L6
L5:
	cmpl	$109, -12(%ebp)
	je	L6
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, 4(%esp)
	movl	$LC4, (%esp)
	call	_real_dprintf
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__Sleep@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	$232, -12(%ebp)
L6:
	movl	-12(%ebp), %eax
	leave
	ret
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
	movl	%esp, %ebp
	pushl	%ebx
	subl	$52, %esp
	movl	$0, -20(%ebp)
	movl	$0, -16(%ebp)
	movl	$0, -12(%ebp)
	movl	20(%ebp), %eax
	movl	$0, (%eax)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC5, (%esp)
	call	_real_dprintf
	jmp	L9
L12:
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%ebp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	$65536, %edx
	cmpl	$65536, %eax
	cmovbe	%eax, %edx
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%ebp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	$65536, %ecx
	cmpl	$65536, %eax
	cmova	%ecx, %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC6, (%esp)
	call	_real_dprintf
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%ebp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	$65536, %edx
	cmpl	$65536, %eax
	cmovbe	%eax, %edx
	movl	20(%ebp), %eax
	movl	(%eax), %ecx
	movl	12(%ebp), %eax
	leal	(%ecx,%eax), %ebx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 16(%esp)
	leal	-20(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__ReadFile@20, %eax
	call	*%eax
	subl	$20, %esp
	testl	%eax, %eax
	jne	L10
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC7, (%esp)
	call	_real_dprintf
	jmp	L11
L10:
	movl	-20(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC8, (%esp)
	call	_real_dprintf
	movl	20(%ebp), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	addl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%edx, (%eax)
L9:
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, 16(%ebp)
	ja	L12
L11:
	movl	$LC9, (%esp)
	call	_real_dprintf
	movl	-12(%ebp), %eax
	movl	-4(%ebp), %ebx
	leave
	ret
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
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$364, %esp
	movl	$0, -28(%ebp)
	movl	$0, -40(%ebp)
	movl	$0, %ecx
	movl	$32, %eax
	andl	$-4, %eax
	movl	%eax, %edx
	movl	$0, %eax
L15:
	movl	%ecx, -112(%ebp,%eax)
	addl	$4, %eax
	cmpl	%edx, %eax
	jb	L15
	movl	$1, -32(%ebp)
	movl	$0, -36(%ebp)
	movl	$0, -44(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	48(%eax), %eax
	movl	%eax, -48(%ebp)
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_acquire
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC10, (%esp)
	call	_real_dprintf
	jmp	L17
L21:
	movl	$32, %eax
	subl	-28(%ebp), %eax
	movl	%eax, %edx
	leal	-112(%ebp), %ecx
	movl	-28(%ebp), %eax
	leal	(%ecx,%eax), %ebx
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 16(%esp)
	leal	-116(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__ReadFile@20, %eax
	call	*%eax
	subl	$20, %esp
	testl	%eax, %eax
	jne	L18
	movl	$1168, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
	jmp	L19
L18:
	movl	-116(%ebp), %eax
	addl	%eax, -28(%ebp)
	cmpl	$32, -28(%ebp)
	je	L20
	movl	$LC11, (%esp)
	call	_real_dprintf
	jmp	L17
L20:
	movl	$0, -32(%ebp)
L17:
	cmpl	$0, -32(%ebp)
	jne	L21
	cmpl	$32, -28(%ebp)
	je	L22
	movl	$LC12, (%esp)
	call	_real_dprintf
	jmp	L19
L22:
	movzbl	-109(%ebp), %eax
	movzbl	%al, %ebx
	movzbl	-110(%ebp), %eax
	movzbl	%al, %ecx
	movzbl	-111(%ebp), %eax
	movzbl	%al, %edx
	movzbl	-112(%ebp), %eax
	movzbl	%al, %eax
	movl	%ebx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC13, (%esp)
	call	_real_dprintf
	leal	-112(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	-52(%ebp), %eax
	addl	$31, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, %edx
	movl	-52(%ebp), %eax
	addl	$30, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -124(%ebp)
	movl	-52(%ebp), %eax
	addl	$29, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -128(%ebp)
	movl	-52(%ebp), %eax
	addl	$28, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -132(%ebp)
	movl	-52(%ebp), %eax
	addl	$27, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -136(%ebp)
	movl	-52(%ebp), %eax
	addl	$26, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -140(%ebp)
	movl	-52(%ebp), %eax
	addl	$25, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -144(%ebp)
	movl	-52(%ebp), %eax
	addl	$24, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -148(%ebp)
	movl	-52(%ebp), %eax
	addl	$23, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -152(%ebp)
	movl	-52(%ebp), %eax
	addl	$22, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -156(%ebp)
	movl	-52(%ebp), %eax
	addl	$21, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -160(%ebp)
	movl	-52(%ebp), %eax
	addl	$20, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -164(%ebp)
	movl	-52(%ebp), %eax
	addl	$19, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -168(%ebp)
	movl	-52(%ebp), %eax
	addl	$18, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -172(%ebp)
	movl	-52(%ebp), %eax
	addl	$17, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -176(%ebp)
	movl	-52(%ebp), %eax
	addl	$16, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -180(%ebp)
	movl	-52(%ebp), %eax
	addl	$15, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -184(%ebp)
	movl	-52(%ebp), %eax
	addl	$14, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -188(%ebp)
	movl	-52(%ebp), %eax
	addl	$13, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -192(%ebp)
	movl	-52(%ebp), %eax
	addl	$12, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -196(%ebp)
	movl	-52(%ebp), %eax
	addl	$11, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -200(%ebp)
	movl	-52(%ebp), %eax
	addl	$10, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -204(%ebp)
	movl	-52(%ebp), %eax
	addl	$9, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -208(%ebp)
	movl	-52(%ebp), %eax
	addl	$8, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -212(%ebp)
	movl	-52(%ebp), %eax
	addl	$7, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -216(%ebp)
	movl	-52(%ebp), %eax
	addl	$6, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -220(%ebp)
	movl	-52(%ebp), %eax
	addl	$5, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	-52(%ebp), %eax
	addl	$4, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	-52(%ebp), %eax
	addl	$3, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	-52(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	-52(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -224(%ebp)
	movl	-52(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 128(%esp)
	movl	-124(%ebp), %edx
	movl	%edx, 124(%esp)
	movl	-128(%ebp), %edx
	movl	%edx, 120(%esp)
	movl	-132(%ebp), %edx
	movl	%edx, 116(%esp)
	movl	-136(%ebp), %edx
	movl	%edx, 112(%esp)
	movl	-140(%ebp), %edx
	movl	%edx, 108(%esp)
	movl	-144(%ebp), %edx
	movl	%edx, 104(%esp)
	movl	-148(%ebp), %edx
	movl	%edx, 100(%esp)
	movl	-152(%ebp), %edx
	movl	%edx, 96(%esp)
	movl	-156(%ebp), %edx
	movl	%edx, 92(%esp)
	movl	-160(%ebp), %edx
	movl	%edx, 88(%esp)
	movl	-164(%ebp), %edx
	movl	%edx, 84(%esp)
	movl	-168(%ebp), %edx
	movl	%edx, 80(%esp)
	movl	-172(%ebp), %edx
	movl	%edx, 76(%esp)
	movl	-176(%ebp), %edx
	movl	%edx, 72(%esp)
	movl	-180(%ebp), %edx
	movl	%edx, 68(%esp)
	movl	-184(%ebp), %edx
	movl	%edx, 64(%esp)
	movl	-188(%ebp), %edx
	movl	%edx, 60(%esp)
	movl	-192(%ebp), %edx
	movl	%edx, 56(%esp)
	movl	-196(%ebp), %edx
	movl	%edx, 52(%esp)
	movl	-200(%ebp), %edx
	movl	%edx, 48(%esp)
	movl	-204(%ebp), %edx
	movl	%edx, 44(%esp)
	movl	-208(%ebp), %edx
	movl	%edx, 40(%esp)
	movl	-212(%ebp), %edx
	movl	%edx, 36(%esp)
	movl	-216(%ebp), %edx
	movl	%edx, 32(%esp)
	movl	-220(%ebp), %edx
	movl	%edx, 28(%esp)
	movl	%edi, 24(%esp)
	movl	%esi, 20(%esp)
	movl	%ebx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	-224(%ebp), %edi
	movl	%edi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC14, (%esp)
	call	_real_dprintf
	movzbl	-109(%ebp), %eax
	testb	%al, %al
	jne	L23
	leal	-112(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -72(%ebp)
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC15, (%esp)
	call	_real_dprintf
	movl	-72(%ebp), %eax
	subl	$28, %eax
	movl	%eax, -76(%ebp)
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, -80(%ebp)
	movl	-76(%ebp), %eax
	leal	-116(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	_read_raw_bytes_to_buffer
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	-116(%ebp), %eax
	cmpl	%eax, -76(%ebp)
	je	L24
	movl	-116(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC16, (%esp)
	call	_real_dprintf
	jmp	L19
L24:
	movl	$0, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	12(%ebp), %eax
	movl	$0, (%eax)
	jmp	L19
L23:
	movl	$LC17, (%esp)
	call	_real_dprintf
	leal	-112(%ebp), %eax
	addl	$4, %eax
	movl	$28, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	_xor_bytes
	leal	-112(%ebp), %eax
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
	movl	%esi, -124(%ebp)
	movl	-56(%ebp), %eax
	addl	$29, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -128(%ebp)
	movl	-56(%ebp), %eax
	addl	$28, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -132(%ebp)
	movl	-56(%ebp), %eax
	addl	$27, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -136(%ebp)
	movl	-56(%ebp), %eax
	addl	$26, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -140(%ebp)
	movl	-56(%ebp), %eax
	addl	$25, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -144(%ebp)
	movl	-56(%ebp), %eax
	addl	$24, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -148(%ebp)
	movl	-56(%ebp), %eax
	addl	$23, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -152(%ebp)
	movl	-56(%ebp), %eax
	addl	$22, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -156(%ebp)
	movl	-56(%ebp), %eax
	addl	$21, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -160(%ebp)
	movl	-56(%ebp), %eax
	addl	$20, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -164(%ebp)
	movl	-56(%ebp), %eax
	addl	$19, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -168(%ebp)
	movl	-56(%ebp), %eax
	addl	$18, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -172(%ebp)
	movl	-56(%ebp), %eax
	addl	$17, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -176(%ebp)
	movl	-56(%ebp), %eax
	addl	$16, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -180(%ebp)
	movl	-56(%ebp), %eax
	addl	$15, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -184(%ebp)
	movl	-56(%ebp), %eax
	addl	$14, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -188(%ebp)
	movl	-56(%ebp), %eax
	addl	$13, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -192(%ebp)
	movl	-56(%ebp), %eax
	addl	$12, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -196(%ebp)
	movl	-56(%ebp), %eax
	addl	$11, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -200(%ebp)
	movl	-56(%ebp), %eax
	addl	$10, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -204(%ebp)
	movl	-56(%ebp), %eax
	addl	$9, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -208(%ebp)
	movl	-56(%ebp), %eax
	addl	$8, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -212(%ebp)
	movl	-56(%ebp), %eax
	addl	$7, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -216(%ebp)
	movl	-56(%ebp), %eax
	addl	$6, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -220(%ebp)
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
	movl	%eax, -224(%ebp)
	movl	-56(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 128(%esp)
	movl	-124(%ebp), %edx
	movl	%edx, 124(%esp)
	movl	-128(%ebp), %edx
	movl	%edx, 120(%esp)
	movl	-132(%ebp), %edx
	movl	%edx, 116(%esp)
	movl	-136(%ebp), %edx
	movl	%edx, 112(%esp)
	movl	-140(%ebp), %edx
	movl	%edx, 108(%esp)
	movl	-144(%ebp), %edx
	movl	%edx, 104(%esp)
	movl	-148(%ebp), %edx
	movl	%edx, 100(%esp)
	movl	-152(%ebp), %edx
	movl	%edx, 96(%esp)
	movl	-156(%ebp), %edx
	movl	%edx, 92(%esp)
	movl	-160(%ebp), %edx
	movl	%edx, 88(%esp)
	movl	-164(%ebp), %edx
	movl	%edx, 84(%esp)
	movl	-168(%ebp), %edx
	movl	%edx, 80(%esp)
	movl	-172(%ebp), %edx
	movl	%edx, 76(%esp)
	movl	-176(%ebp), %edx
	movl	%edx, 72(%esp)
	movl	-180(%ebp), %edx
	movl	%edx, 68(%esp)
	movl	-184(%ebp), %edx
	movl	%edx, 64(%esp)
	movl	-188(%ebp), %edx
	movl	%edx, 60(%esp)
	movl	-192(%ebp), %edx
	movl	%edx, 56(%esp)
	movl	-196(%ebp), %edx
	movl	%edx, 52(%esp)
	movl	-200(%ebp), %edx
	movl	%edx, 48(%esp)
	movl	-204(%ebp), %edx
	movl	%edx, 44(%esp)
	movl	-208(%ebp), %edx
	movl	%edx, 40(%esp)
	movl	-212(%ebp), %edx
	movl	%edx, 36(%esp)
	movl	-216(%ebp), %edx
	movl	%edx, 32(%esp)
	movl	-220(%ebp), %edx
	movl	%edx, 28(%esp)
	movl	%edi, 24(%esp)
	movl	%esi, 20(%esp)
	movl	%ebx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	-224(%ebp), %esi
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC14, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	addl	$32, %eax
	movl	%eax, (%esp)
	call	_is_null_guid
	testl	%eax, %eax
	je	L25
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	addl	$32, %eax
	movl	-108(%ebp), %edx
	movl	%edx, (%eax)
	movl	-104(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	-100(%ebp), %edx
	movl	%edx, 8(%eax)
	movl	-96(%ebp), %edx
	movl	%edx, 12(%eax)
L25:
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__ntohl@4, %eax
	call	*%eax
	subl	$4, %esp
	subl	$8, %eax
	movl	%eax, -60(%ebp)
	movl	-60(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC18, (%esp)
	call	_real_dprintf
	movl	-60(%ebp), %eax
	addl	$32, %eax
	movl	%eax, -64(%ebp)
	movl	-64(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC19, (%esp)
	call	_real_dprintf
	movl	-60(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, -36(%ebp)
	cmpl	$0, -36(%ebp)
	jne	L26
	movl	$LC20, (%esp)
	call	_real_dprintf
	movl	$8, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
	jmp	L19
L26:
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC21, (%esp)
	call	_real_dprintf
	movl	$28, 8(%esp)
	leal	-112(%ebp), %eax
	addl	$4, %eax
	movl	%eax, 4(%esp)
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	_xor_bytes
	movl	$32, 12(%esp)
	leal	-112(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$32, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__memcpy_s, %eax
	call	*%eax
	movl	-36(%ebp), %eax
	addl	$32, %eax
	movl	%eax, -44(%ebp)
	leal	-116(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	_read_raw_bytes_to_buffer
	movl	%eax, -68(%ebp)
	movl	-116(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC22, (%esp)
	call	_real_dprintf
	movl	-116(%ebp), %eax
	cmpl	%eax, -60(%ebp)
	je	L27
	movl	$LC23, (%esp)
	call	_real_dprintf
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
	jmp	L19
L27:
	movl	$LC24, (%esp)
	call	_real_dprintf
	movl	-64(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
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
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	$0, -36(%ebp)
L19:
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -68(%ebp)
	cmpl	$0, -36(%ebp)
	je	L28
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
L28:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_release
	movl	-68(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
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
	movl	$LC25, (%esp)
	call	_real_dprintf
	call	_current_unix_timestamp
	movl	%eax, -20(%ebp)
	jmp	L31
L42:
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_event_poll
	testl	%eax, %eax
	je	L32
	movl	$LC26, (%esp)
	call	_real_dprintf
	jmp	L33
L32:
	movl	$500, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_server_pipe_poll
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jne	L34
	leal	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_receive_named_pipe
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	L35
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC27, (%esp)
	call	_real_dprintf
	jmp	L33
L35:
	movl	-36(%ebp), %eax
	testl	%eax, %eax
	je	L36
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_command_handle
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	L37
	movl	$LC28, %eax
	jmp	L38
L37:
	movl	$LC29, %eax
L38:
	movl	%eax, 4(%esp)
	movl	$LC30, (%esp)
	call	_real_dprintf
	jmp	L39
L36:
	movl	$LC31, (%esp)
	call	_real_dprintf
L39:
	call	_current_unix_timestamp
	movl	%eax, -20(%ebp)
	jmp	L31
L34:
	cmpl	$109, -16(%ebp)
	je	L40
	call	_current_unix_timestamp
	movl	%eax, -32(%ebp)
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	cmpl	%eax, -32(%ebp)
	jle	L41
	movl	$0, -16(%ebp)
	movl	$LC32, (%esp)
	call	_real_dprintf
	jmp	L33
L41:
	movl	-32(%ebp), %eax
	subl	-20(%ebp), %eax
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	52(%eax), %eax
	cmpl	%eax, %edx
	jle	L31
	movl	$5035, -16(%ebp)
	movl	$LC33, (%esp)
	call	_real_dprintf
	jmp	L33
L40:
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC34, (%esp)
	call	_real_dprintf
	jmp	L33
L31:
	cmpl	$0, -12(%ebp)
	jne	L42
L33:
	movl	$LC35, (%esp)
	call	_real_dprintf
	movl	-16(%ebp), %eax
	leave
	ret
	.section .rdata,"dr"
	.align 4
LC36:
	.ascii "[TRANS PIPE] Destroying pipe transport for url %S\0"
	.text
	.def	_transport_destroy_named_pipe;	.scl	3;	.type	32;	.endef
_transport_destroy_named_pipe:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	cmpl	$0, 8(%ebp)
	je	L49
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$8, %eax
	jne	L49
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC36, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	je	L46
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	_free
	movl	8(%ebp), %eax
	movl	$0, 44(%eax)
L46:
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	je	L47
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L47
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_free
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	$0, (%eax)
L47:
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	je	L48
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, (%esp)
	call	_free
	movl	8(%ebp), %eax
	movl	$0, 48(%eax)
L48:
	cmpl	$0, 8(%ebp)
	je	L49
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	$0, 8(%ebp)
L49:
	nop
	leave
	ret
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
	movl	%esp, %ebp
	subl	$40, %esp
	cmpl	$0, 8(%ebp)
	je	L54
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$8, %eax
	jne	L54
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC37, (%esp)
	call	_real_dprintf
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	L52
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$-1, %eax
	je	L52
	movl	$LC38, (%esp)
	call	_real_dprintf
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__CloseHandle@4, %eax
	call	*%eax
	subl	$4, %esp
	testl	%eax, %eax
	jne	L53
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, 4(%esp)
	movl	$LC39, (%esp)
	call	_real_dprintf
	jmp	L52
L53:
	movl	$LC40, (%esp)
	call	_real_dprintf
L52:
	movl	-12(%ebp), %eax
	movl	$0, 4(%eax)
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC41, (%esp)
	call	_real_dprintf
L54:
	nop
	leave
	ret
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
	movl	%esp, %ebp
	subl	$56, %esp
	movl	$0, -16(%ebp)
	movl	$-1, -12(%ebp)
	call	_current_unix_timestamp
	movl	%eax, -20(%ebp)
L58:
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC42, (%esp)
	call	_real_dprintf
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$3, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$-1073741824, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__CreateFileW@28, %eax
	call	*%eax
	subl	$28, %esp
	movl	%eax, -12(%ebp)
	cmpl	$-1, -12(%ebp)
	jne	L60
	movl	$-1, -12(%ebp)
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC43, (%esp)
	call	_real_dprintf
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC44, (%esp)
	call	_real_dprintf
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	_sleep
	call	_current_unix_timestamp
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	subl	%eax, %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jb	L58
	jmp	L57
L60:
	nop
L57:
	movl	-12(%ebp), %eax
	leave
	ret
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
	movl	%esp, %ebp
	subl	$72, %esp
	movl	$0, -12(%ebp)
	movl	$-1, -16(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC45, (%esp)
	call	_toggle_privilege
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	jne	L62
	movl	$0, -40(%ebp)
	movl	$0, -36(%ebp)
	movl	$0, -32(%ebp)
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_create_pipe_security_attributes
	leal	-40(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	$0, 24(%esp)
	movl	$65536, 20(%esp)
	movl	$65536, 16(%esp)
	movl	$255, 12(%esp)
	movl	$0, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__CreateNamedPipeW@32, %eax
	call	*%eax
	subl	$32, %esp
	movl	%eax, -16(%ebp)
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	movl	-28(%ebp), %eax
	testl	%eax, %eax
	jne	L62
	leal	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$LC45, (%esp)
	call	_toggle_privilege
L62:
	cmpl	$-1, -16(%ebp)
	jne	L64
	movl	$0, 28(%esp)
	movl	$0, 24(%esp)
	movl	$65536, 20(%esp)
	movl	$65536, 16(%esp)
	movl	$255, 12(%esp)
	movl	$0, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__CreateNamedPipeW@32, %eax
	call	*%eax
	subl	$32, %esp
	movl	%eax, -16(%ebp)
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
L64:
	cmpl	$-1, -16(%ebp)
	jne	L65
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC43, (%esp)
	call	_real_dprintf
	movl	$-1, %eax
	jmp	L70
L65:
	call	_current_unix_timestamp
	movl	%eax, -24(%ebp)
L69:
	movl	$0, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__ConnectNamedPipe@8, %eax
	call	*%eax
	subl	$8, %esp
	testl	%eax, %eax
	je	L67
	movl	-16(%ebp), %eax
	jmp	L70
L67:
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	cmpl	$535, -12(%ebp)
	jne	L68
	movl	-16(%ebp), %eax
	jmp	L70
L68:
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC46, (%esp)
	call	_real_dprintf
	movl	$1, 4(%esp)
	movl	$LC47, (%esp)
	call	_real_dprintf
	movl	$1, (%esp)
	call	_sleep
	call	_current_unix_timestamp
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	subl	%eax, %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jb	L69
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__CloseHandle@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	$-1, %eax
L70:
	leave
	ret
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
	movl	%esp, %ebp
	pushl	%ebx
	subl	$1092, %esp
	movl	$0, -12(%ebp)
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L72
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC48, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$512, 4(%esp)
	leal	-1056(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__wcscpy_s, %eax
	call	*%eax
	leal	-1056(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC49, (%esp)
	call	_real_dprintf
	call	_current_unix_timestamp
	movl	8(%ebp), %edx
	movl	%eax, 64(%edx)
	movl	$LC50, (%esp)
	call	_real_dprintf
	movl	$4, 8(%esp)
	movl	$LC51, 4(%esp)
	leal	-1056(%ebp), %eax
	movl	%eax, (%esp)
	call	_wcsncmp
	testl	%eax, %eax
	jne	L72
	movl	$LC52, (%esp)
	call	_real_dprintf
	movl	$LC53, 4(%esp)
	leal	-1056(%ebp), %eax
	movl	%eax, (%esp)
	call	_wcsstr
	addl	$4, %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC54, (%esp)
	call	_real_dprintf
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC55, (%esp)
	call	_real_dprintf
	movl	$47, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_wcschr
	addl	$2, %eax
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC56, (%esp)
	call	_real_dprintf
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC57, (%esp)
	call	_real_dprintf
	movl	$47, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_wcschr
	movl	%eax, -28(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC56, (%esp)
	call	_real_dprintf
	cmpl	$0, -28(%ebp)
	je	L73
	movl	-28(%ebp), %eax
	movw	$0, (%eax)
L73:
	movl	-24(%ebp), %eax
	subl	$2, %eax
	movw	$0, (%eax)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC58, (%esp)
	call	_real_dprintf
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC59, (%esp)
	call	_real_dprintf
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_wcslen
	movl	%eax, %ebx
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_wcslen
	addl	%ebx, %eax
	addl	$9, %eax
	movl	%eax, -32(%ebp)
	movl	$2, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_calloc
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%edx, (%eax)
	movl	-32(%ebp), %eax
	leal	-1(%eax), %ecx
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	-24(%ebp), %edx
	movl	%edx, 20(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, 16(%esp)
	movl	$LC60, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	-32(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp___snwprintf_s, %eax
	call	*%eax
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC61, (%esp)
	call	_real_dprintf
L72:
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	L74
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$-1, %eax
	je	L74
	movl	$0, -1060(%ebp)
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	leal	-1060(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__SetNamedPipeHandleState@16, %eax
	call	*%eax
	subl	$16, %esp
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC62, (%esp)
	call	_real_dprintf
	jmp	L75
L74:
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC63, (%esp)
	call	_real_dprintf
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L76
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	$4, 8(%esp)
	movl	$LC64, 4(%esp)
	movl	%eax, (%esp)
	call	_wcsncmp
	testl	%eax, %eax
	jne	L77
	movl	8(%ebp), %eax
	leal	52(%eax), %edx
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_bind_named_pipe
	movl	-16(%ebp), %edx
	movl	%eax, 4(%edx)
	jmp	L75
L77:
	movl	8(%ebp), %eax
	leal	52(%eax), %edx
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_reverse_named_pipe
	movl	-16(%ebp), %edx
	movl	%eax, 4(%edx)
	jmp	L75
L76:
	movl	$LC65, (%esp)
	call	_real_dprintf
	movl	$87, -12(%ebp)
L75:
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$-1, %eax
	jne	L78
	movl	$LC66, (%esp)
	call	_real_dprintf
	movl	$87, %eax
	jmp	L80
L78:
	movl	$LC67, (%esp)
	call	_real_dprintf
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__SetHandleInformation@12, %eax
	call	*%eax
	subl	$12, %esp
	call	_current_unix_timestamp
	movl	8(%ebp), %edx
	movl	%eax, 64(%edx)
	movl	-12(%ebp), %eax
L80:
	movl	-4(%ebp), %ebx
	leave
	ret
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
	movl	%esp, %ebp
	pushl	%ebx
	subl	$52, %esp
	movl	$LC68, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	48(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	$0, -12(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -16(%ebp)
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_acquire
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC69, (%esp)
	call	_real_dprintf
	jmp	L82
L85:
	movl	$LC70, (%esp)
	call	_real_dprintf
	movl	16(%ebp), %eax
	subl	-12(%ebp), %eax
	movl	%eax, %edx
	movl	12(%ebp), %ecx
	movl	-12(%ebp), %eax
	leal	(%ecx,%eax), %ebx
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 16(%esp)
	leal	-24(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__WriteFile@20, %eax
	call	*%eax
	subl	$20, %esp
	testl	%eax, %eax
	jne	L83
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, %ebx
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC71, (%esp)
	call	_real_dprintf
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -16(%ebp)
	jmp	L84
L83:
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC72, (%esp)
	call	_real_dprintf
	movl	-24(%ebp), %eax
	addl	%eax, -12(%ebp)
L82:
	movl	-12(%ebp), %eax
	cmpl	16(%ebp), %eax
	jb	L85
L84:
	cmpl	$0, -16(%ebp)
	je	L86
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC73, (%esp)
	call	_real_dprintf
	jmp	L87
L86:
	movl	$LC74, (%esp)
	call	_real_dprintf
L87:
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_release
	movl	-16(%ebp), %eax
	movl	-4(%ebp), %ebx
	leave
	ret
	.def	_transport_get_handle_named_pipe;	.scl	3;	.type	32;	.endef
_transport_get_handle_named_pipe:
	pushl	%ebp
	movl	%esp, %ebp
	cmpl	$0, 8(%ebp)
	je	L90
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	4(%eax), %eax
	jmp	L91
L90:
	movl	$0, %eax
L91:
	popl	%ebp
	ret
	.def	_transport_set_handle_named_pipe;	.scl	3;	.type	32;	.endef
_transport_set_handle_named_pipe:
	pushl	%ebp
	movl	%esp, %ebp
	cmpl	$0, 8(%ebp)
	je	L94
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$8, %eax
	jne	L94
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%eax)
L94:
	nop
	popl	%ebp
	ret
	.globl	_transport_write_named_pipe_config
	.def	_transport_write_named_pipe_config;	.scl	2;	.type	32;	.endef
_transport_write_named_pipe_config:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	cmpl	$0, 8(%ebp)
	je	L97
	cmpl	$0, 12(%ebp)
	je	L97
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
L97:
	nop
	leave
	ret
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
	movl	%esp, %ebp
	pushl	%esi
	pushl	%ebx
	subl	$48, %esp
	movl	$24, 4(%esp)
	movl	$1, (%esp)
	call	_calloc
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC75, (%esp)
	call	_real_dprintf
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC76, (%esp)
	call	_real_dprintf
	movl	-12(%ebp), %eax
	leal	16(%eax), %esi
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	4(%eax), %ebx
	movl	__imp__GetCurrentProcess@0, %eax
	call	*%eax
	movl	$2, 24(%esp)
	movl	$1, 20(%esp)
	movl	$0, 16(%esp)
	movl	%esi, 12(%esp)
	movl	16(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__DuplicateHandle@28, %eax
	call	*%eax
	subl	$28, %esp
	testl	%eax, %eax
	jne	L99
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	jmp	L100
L99:
	movl	20(%ebp), %eax
	movl	$24, (%eax)
	movl	24(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, (%eax)
	movl	$0, %eax
L100:
	leal	-8(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
	.def	_transport_get_config_size_named_pipe;	.scl	3;	.type	32;	.endef
_transport_get_config_size_named_pipe:
	pushl	%ebp
	movl	%esp, %ebp
	movl	$1036, %eax
	popl	%ebp
	ret
	.section .rdata,"dr"
	.align 4
LC77:
	.ascii "[TRANS NP] Creating pipe transport for url %S\0"
	.text
	.globl	_transport_create_named_pipe
	.def	_transport_create_named_pipe;	.scl	2;	.type	32;	.endef
_transport_create_named_pipe:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$76, 4(%esp)
	movl	$1, (%esp)
	call	_calloc
	movl	%eax, -12(%ebp)
	movl	$12, 4(%esp)
	movl	$1, (%esp)
	call	_calloc
	movl	%eax, -16(%ebp)
	cmpl	$0, 12(%ebp)
	je	L104
	movl	12(%ebp), %eax
	movl	$1036, (%eax)
L104:
	call	_lock_create
	movl	-16(%ebp), %edx
	movl	%eax, 8(%edx)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC77, (%esp)
	call	_real_dprintf
	movl	-12(%ebp), %eax
	movl	$8, (%eax)
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
	movl	$_packet_transmit_named_pipe, 36(%eax)
	movl	-12(%ebp), %eax
	movl	$_configure_named_pipe_connection, 20(%eax)
	movl	-12(%ebp), %eax
	movl	$_transport_destroy_named_pipe, 28(%eax)
	movl	-12(%ebp), %eax
	movl	$_transport_reset_named_pipe, 16(%eax)
	movl	-12(%ebp), %eax
	movl	$_server_dispatch_named_pipe, 32(%eax)
	movl	-12(%ebp), %eax
	movl	$_transport_get_handle_named_pipe, 4(%eax)
	movl	-12(%ebp), %eax
	movl	$_transport_set_handle_named_pipe, 8(%eax)
	movl	-12(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 48(%eax)
	call	_current_unix_timestamp
	movl	-12(%ebp), %edx
	movl	%eax, 64(%edx)
	movl	-12(%ebp), %eax
	movl	$_get_migrate_context_named_pipe, 40(%eax)
	movl	-12(%ebp), %eax
	movl	$_transport_get_config_size_named_pipe, 12(%eax)
	movl	-12(%ebp), %eax
	leave
	ret
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
