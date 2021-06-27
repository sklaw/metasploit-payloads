	.file	"server_pivot_named_pipe.c"
	.text
	.section .rdata,"dr"
LC0:
	.ascii "advapi32.dll\0"
LC1:
	.ascii "AddMandatoryAce\0"
	.text
	.def	_AddMandatoryAce@20;	.scl	3;	.type	32;	.endef
_AddMandatoryAce@20:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$56, %esp
	movl	_attempted.83830, %eax
	testl	%eax, %eax
	je	L2
	movl	$1, _attempted.83830
	movl	$LC0, (%esp)
	movl	__imp__LoadLibraryA@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	L2
	movl	$LC1, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__GetProcAddress@8, %eax
	call	*%eax
	subl	$8, %esp
	movl	%eax, _pAddMandatoryAce.83831
L2:
	movl	_pAddMandatoryAce.83831, %eax
	testl	%eax, %eax
	je	L3
	movl	_pAddMandatoryAce.83831, %eax
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
L3:
	movl	$1, %eax
	leave
	ret	$20
	.def	_server_destroy;	.scl	3;	.type	32;	.endef
_server_destroy:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	L6
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
	je	L7
	movl	-12(%ebp), %eax
	movl	65932(%eax), %eax
	movl	%eax, (%esp)
	call	_free
	movl	-12(%ebp), %eax
	movl	$0, 65932(%eax)
L7:
	movl	-12(%ebp), %eax
	movl	65940(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_destroy
	movl	-12(%ebp), %eax
	movl	364(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_release
L6:
	movl	$0, %eax
	leave
	ret
	.def	_terminate_pipe;	.scl	3;	.type	32;	.endef
_terminate_pipe:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	cmpl	$0, 8(%ebp)
	je	L11
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	$3, 4(%esp)
	movl	%eax, (%esp)
	call	_scheduler_signal_waitable
L11:
	nop
	leave
	ret
	.def	_remove_listener;	.scl	3;	.type	32;	.endef
_remove_listener:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_terminate_pipe
	movl	$0, %eax
	leave
	ret
	.def	_read_pipe_to_packet;	.scl	3;	.type	32;	.endef
_read_pipe_to_packet:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$68, %esp
	movl	$1, -12(%ebp)
	movl	8(%ebp), %eax
	movl	65920(%eax), %edx
	movl	8(%ebp), %eax
	movl	65924(%eax), %ecx
	movl	16(%ebp), %eax
	addl	%ecx, %eax
	cmpl	%eax, %edx
	jnb	L15
	movl	8(%ebp), %eax
	movl	65924(%eax), %edx
	movl	16(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 65920(%eax)
	movl	8(%ebp), %eax
	movl	65920(%eax), %edx
	movl	8(%ebp), %eax
	movl	65916(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_realloc
	movl	8(%ebp), %edx
	movl	%eax, 65916(%edx)
L15:
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
	jne	L16
	movl	8(%ebp), %eax
	movl	65924(%eax), %eax
	cmpl	$31, %eax
	jbe	L16
	movl	8(%ebp), %eax
	movl	65916(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	leal	24(%eax), %edx
	movl	-16(%ebp), %eax
	movl	$4, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_xor_bytes
	movl	-16(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__ntohl@4, %eax
	call	*%eax
	subl	$4, %esp
	leal	24(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 65928(%eax)
	movl	-16(%ebp), %eax
	leal	24(%eax), %edx
	movl	-16(%ebp), %eax
	movl	$4, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_xor_bytes
L16:
	movl	8(%ebp), %eax
	movl	65928(%eax), %eax
	testl	%eax, %eax
	je	L17
	movl	8(%ebp), %eax
	movl	65928(%eax), %edx
	movl	8(%ebp), %eax
	movl	65924(%eax), %eax
	cmpl	%eax, %edx
	ja	L17
	movl	8(%ebp), %eax
	movl	328(%eax), %eax
	testl	%eax, %eax
	jne	L18
	movl	8(%ebp), %eax
	movl	65916(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	8(%ebp), %eax
	movl	65928(%eax), %eax
	leal	-4(%eax), %ecx
	movl	-20(%ebp), %eax
	leal	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_xor_bytes
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	L19
	movl	$52, 4(%esp)
	movl	$1, (%esp)
	call	_calloc
	movl	%eax, -24(%ebp)
	movl	-20(%ebp), %eax
	movl	24(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 24(%eax)
	movl	-20(%ebp), %eax
	movl	28(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 28(%eax)
	movl	-24(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__ntohl@4, %eax
	call	*%eax
	subl	$4, %esp
	leal	-8(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 36(%eax)
	movl	8(%ebp), %eax
	movl	65916(%eax), %eax
	leal	32(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 32(%eax)
	movl	$65538, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_string
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	L20
	movl	8(%ebp), %eax
	leal	332(%eax), %edx
	movl	$32, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_memcmp
	testl	%eax, %eax
	jne	L20
	movl	$0, -52(%ebp)
	leal	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$262606, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_raw
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	je	L21
	movl	-52(%ebp), %eax
	cmpl	$16, %eax
	jne	L21
	movl	8(%ebp), %eax
	leal	312(%eax), %edx
	movl	$16, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_memcmp
	testl	%eax, %eax
	je	L21
	movl	8(%ebp), %eax
	leal	312(%eax), %edx
	movl	$16, 8(%esp)
	movl	-32(%ebp), %eax
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
	movl	%eax, -36(%ebp)
	cmpl	$0, -36(%ebp)
	je	L27
	movl	-36(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	_free_server_context
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	jmp	L27
L21:
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
	jmp	L23
L27:
	nop
L23:
	movl	8(%ebp), %eax
	movl	$1, 328(%eax)
	movl	$12, 4(%esp)
	movl	$1, (%esp)
	call	_calloc
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 8(%eax)
	movl	-40(%ebp), %eax
	movl	$_named_pipe_write_raw, (%eax)
	movl	8(%ebp), %eax
	leal	312(%eax), %ecx
	movl	8(%ebp), %eax
	movl	364(%eax), %eax
	movl	80(%eax), %eax
	movl	-40(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	_pivot_tree_add
	movl	$34, 4(%esp)
	movl	$0, (%esp)
	call	_packet_create
	movl	%eax, -44(%ebp)
	movl	8(%ebp), %eax
	addl	$312, %eax
	movl	$16, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$262606, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_raw
	movl	8(%ebp), %eax
	addl	$296, %eax
	movl	$16, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$262794, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_raw
	movl	8(%ebp), %eax
	movl	364(%eax), %eax
	movl	$0, 8(%esp)
	movl	-44(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_packet_transmit
	movl	$0, -12(%ebp)
L20:
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
L19:
	movl	8(%ebp), %eax
	movl	65928(%eax), %eax
	leal	-4(%eax), %ecx
	movl	-20(%ebp), %eax
	leal	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_xor_bytes
L18:
	cmpl	$0, -12(%ebp)
	je	L24
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
L24:
	movl	8(%ebp), %eax
	movl	65924(%eax), %edx
	movl	8(%ebp), %eax
	movl	65928(%eax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -48(%ebp)
	cmpl	$0, -48(%ebp)
	je	L25
	movl	8(%ebp), %eax
	movl	65916(%eax), %edx
	movl	8(%ebp), %eax
	movl	65928(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	65916(%eax), %eax
	movl	-48(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	_memmove
L25:
	movl	8(%ebp), %eax
	movl	-48(%ebp), %edx
	movl	%edx, 65924(%eax)
	movl	8(%ebp), %eax
	movl	$0, 65928(%eax)
L17:
	movl	$0, %eax
	movl	-4(%ebp), %ebx
	leave
	ret
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
	jmp	L29
L32:
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
	je	L30
	movl	-24(%ebp), %eax
	addl	%eax, -16(%ebp)
	jmp	L29
L30:
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L31
L29:
	movl	-16(%ebp), %eax
	cmpl	16(%ebp), %eax
	jb	L32
L31:
	movl	-20(%ebp), %eax
	movl	65940(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_release
	movl	-12(%ebp), %eax
	leave
	ret
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
	je	L39
	movl	$0, %ecx
	movl	$32, %eax
	andl	$-4, %eax
	movl	%eax, %edx
	movl	$0, %eax
L37:
	movl	%ecx, -64(%ebp,%eax)
	addl	$4, %eax
	cmpl	%edx, %eax
	jb	L37
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
	movl	-80(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	$4, 8(%esp)
	movl	$4, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_AddMandatoryAce@20
	subl	$20, %esp
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
	movl	-68(%ebp), %eax
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__SetSecurityDescriptorDacl@16, %eax
	call	*%eax
	subl	$16, %esp
	movl	$0, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__SetSecurityDescriptorSacl@16, %eax
	call	*%eax
	subl	$16, %esp
	movl	8(%ebp), %eax
	movl	$12, (%eax)
	movl	8(%ebp), %eax
	movl	$0, 8(%eax)
	movl	8(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, 4(%eax)
	jmp	L34
L39:
	nop
L34:
	leave
	ret
	.globl	_toggle_privilege
	.def	_toggle_privilege;	.scl	2;	.type	32;	.endef
_toggle_privilege:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$88, %esp
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
	jne	L41
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	jmp	L47
L41:
	leal	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	movl	__imp__LookupPrivilegeValueW@12, %eax
	call	*%eax
	subl	$12, %esp
	testl	%eax, %eax
	jne	L43
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	jmp	L47
L43:
	movl	$1, -28(%ebp)
	movl	-52(%ebp), %eax
	movl	-48(%ebp), %edx
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	cmpl	$0, 12(%ebp)
	je	L44
	movl	$2, %eax
	jmp	L45
L44:
	movl	$0, %eax
L45:
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
	jne	L46
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	jmp	L47
L46:
	movl	-32(%ebp), %eax
	shrl	%eax
	andl	$1, %eax
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__CloseHandle@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	$0, %eax
L47:
	leave
	ret
	.section .rdata,"dr"
LC2:
	.ascii "SeSecurityPrivilege\0"
	.text
	.globl	_create_pipe_server_instance
	.def	_create_pipe_server_instance;	.scl	2;	.type	32;	.endef
_create_pipe_server_instance:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$72, %esp
	movl	$0, -12(%ebp)
	leal	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC2, (%esp)
	call	_toggle_privilege
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jne	L49
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
	jne	L49
	leal	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$LC2, (%esp)
	call	_toggle_privilege
L49:
	movl	8(%ebp), %eax
	movl	368(%eax), %eax
	cmpl	$-1, %eax
	jne	L51
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
L51:
	movl	8(%ebp), %eax
	movl	368(%eax), %eax
	cmpl	$-1, %eax
	jne	L52
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L56
L52:
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
	jne	L54
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L56
L54:
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
	jne	L55
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L56
L55:
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	$_server_destroy, 16(%esp)
	movl	$_server_notify, 12(%esp)
	movl	$0, 8(%esp)
	movl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_scheduler_insert_waitable
L56:
	movl	-12(%ebp), %eax
	leave
	ret
	.def	_free_server_context;	.scl	3;	.type	32;	.endef
_free_server_context:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	cmpl	$0, 8(%ebp)
	je	L65
	movl	8(%ebp), %eax
	movl	368(%eax), %eax
	cmpl	$-1, %eax
	je	L61
	movl	8(%ebp), %eax
	movl	368(%eax), %eax
	cmpl	$-1, %eax
	je	L61
	movl	8(%ebp), %eax
	movl	368(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__CloseHandle@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	8(%ebp), %eax
	movl	$-1, 368(%eax)
L61:
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	L62
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	$3, 4(%esp)
	movl	%eax, (%esp)
	call	_scheduler_signal_waitable
	movl	8(%ebp), %eax
	movl	$0, 16(%eax)
L62:
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	L63
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__CloseHandle@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	8(%ebp), %eax
	movl	$0, 36(%eax)
L63:
	movl	8(%ebp), %eax
	movl	65916(%eax), %eax
	testl	%eax, %eax
	je	L64
	movl	8(%ebp), %eax
	movl	65916(%eax), %eax
	movl	%eax, (%esp)
	call	_free
	movl	8(%ebp), %eax
	movl	$0, 65916(%eax)
L64:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	jmp	L66
L65:
	nop
L66:
	nop
	leave
	ret
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
	jne	L68
	movl	$6, -12(%ebp)
	jmp	L84
L68:
	movl	-24(%ebp), %eax
	movl	368(%eax), %eax
	cmpl	$-1, %eax
	jne	L70
	movl	$6, -12(%ebp)
	jmp	L84
L70:
	movl	-24(%ebp), %eax
	movl	372(%eax), %eax
	testl	%eax, %eax
	jne	L71
	movl	-24(%ebp), %eax
	movl	$1, 372(%eax)
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
	cmpl	$997, -12(%ebp)
	je	L87
	cmpl	$536, -12(%ebp)
	jne	L88
	movl	-24(%ebp), %eax
	movl	$1, 376(%eax)
	movl	$0, -12(%ebp)
L71:
	movl	$0, -64(%ebp)
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
	jne	L75
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	cmpl	$996, -12(%ebp)
	je	L89
	cmpl	$109, -12(%ebp)
	jne	L89
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
	cmpl	$0, -60(%ebp)
	je	L77
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	$0, -60(%ebp)
L77:
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
	jmp	L78
L75:
	movl	-24(%ebp), %eax
	movl	376(%eax), %eax
	testl	%eax, %eax
	jne	L79
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
	je	L80
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_free_server_context
L80:
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
	je	L81
	movl	-36(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 8(%eax)
L81:
	movl	-24(%ebp), %eax
	movl	65932(%eax), %eax
	testl	%eax, %eax
	je	L82
	movl	-24(%ebp), %eax
	movl	65936(%eax), %eax
	testl	%eax, %eax
	je	L82
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
L82:
	movl	$11, 4(%esp)
	movl	$0, (%esp)
	call	_packet_create
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_request_id
	movl	$65538, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_string
	movl	%eax, -44(%ebp)
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
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, -52(%ebp)
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
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_named_pipe_write_raw
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
L79:
	movl	-64(%ebp), %eax
	testl	%eax, %eax
	je	L83
	movl	-64(%ebp), %eax
	movl	-24(%ebp), %edx
	addl	$380, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_read_pipe_to_packet
L83:
	movl	$1, -16(%ebp)
	jmp	L84
L87:
	nop
	jmp	L84
L88:
	nop
	jmp	L84
L89:
	nop
L84:
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	L85
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__ResetEvent@4, %eax
	call	*%eax
	subl	$4, %esp
L85:
	cmpl	$0, -16(%ebp)
	je	L86
	movl	-24(%ebp), %eax
	movl	$0, 8(%eax)
	movl	-24(%ebp), %eax
	movl	$0, 12(%eax)
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
L86:
	movl	-12(%ebp), %eax
L78:
	leave
	ret
	.section .rdata,"dr"
LC3:
	.ascii ".\0"
LC4:
	.ascii "\\\\%s\\pipe\\%s\0"
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
	jne	L91
	movl	$8, -12(%ebp)
	jmp	L100
L91:
	movl	$65944, 4(%esp)
	movl	$1, (%esp)
	call	_calloc
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jne	L93
	movl	$8, -12(%ebp)
	jmp	L100
L93:
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
	jne	L94
	movl	$87, -12(%ebp)
	jmp	L100
L94:
	movl	$92, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_strchr
	testl	%eax, %eax
	je	L95
	movl	$87, -12(%ebp)
	jmp	L100
L95:
	cmpl	$0, -20(%ebp)
	jne	L96
	movl	$LC3, -20(%ebp)
L96:
	movl	$0, -44(%ebp)
	leal	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$262794, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_raw
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	je	L97
	movl	-16(%ebp), %eax
	leal	296(%eax), %edx
	movl	$16, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_memcpy
L97:
	movl	-16(%ebp), %eax
	addl	$65936, %eax
	movl	%eax, 8(%esp)
	movl	$262795, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_raw
	movl	%eax, -36(%ebp)
	cmpl	$0, -36(%ebp)
	je	L98
	movl	-16(%ebp), %eax
	movl	65936(%eax), %eax
	testl	%eax, %eax
	je	L98
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
L98:
	movl	-16(%ebp), %eax
	movl	$-1, 368(%eax)
	movl	-16(%ebp), %eax
	leal	40(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$LC4, 12(%esp)
	movl	$255, 8(%esp)
	movl	$256, 4(%esp)
	movl	%edx, (%esp)
	movl	__imp___snprintf_s, %eax
	call	*%eax
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_create_pipe_server_instance
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jne	L100
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
L100:
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_transmit_response
	cmpl	$0, -12(%ebp)
	je	L108
	cmpl	$0, -16(%ebp)
	je	L109
	movl	-16(%ebp), %eax
	movl	65940(%eax), %eax
	testl	%eax, %eax
	je	L104
	movl	-16(%ebp), %eax
	movl	65940(%eax), %eax
	movl	%eax, (%esp)
	call	_lock_destroy
L104:
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	L105
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__CloseHandle@4, %eax
	call	*%eax
	subl	$4, %esp
L105:
	movl	-16(%ebp), %eax
	movl	368(%eax), %eax
	testl	%eax, %eax
	je	L106
	movl	-16(%ebp), %eax
	movl	368(%eax), %eax
	cmpl	$-1, %eax
	je	L106
	movl	-16(%ebp), %eax
	movl	368(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__CloseHandle@4, %eax
	call	*%eax
	subl	$4, %esp
L106:
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	jmp	L102
L108:
	nop
	jmp	L102
L109:
	nop
L102:
	movl	-12(%ebp), %eax
	leave
	ret
.lcomm _attempted.83830,4,4
.lcomm _pAddMandatoryAce.83831,4,4
	.ident	"GCC: (GNU) 9.3-win32 20200320"
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
