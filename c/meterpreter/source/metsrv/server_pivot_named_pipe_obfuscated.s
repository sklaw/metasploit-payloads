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
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$56, %esp
push %eax
pop %eax
	movl	_attempted.83830, %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L2
push %eax
pop %eax
	movl	$1, _attempted.83830
push %eax
pop %eax
	movl	$LC0, (%esp)
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
	je	L2
push %eax
pop %eax
	movl	$LC1, 4(%esp)
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
	movl	%eax, _pAddMandatoryAce.83831
push %eax
pop %eax
L2:
	movl	_pAddMandatoryAce.83831, %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L3
push %eax
pop %eax
	movl	_pAddMandatoryAce.83831, %eax
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
L3:
	movl	$1, %eax
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret	$20
push %eax
pop %eax
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
	je	L6
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
	je	L7
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
L7:
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
L6:
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
	je	L11
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
L11:
	nop
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
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
	.def	_read_pipe_to_packet;	.scl	3;	.type	32;	.endef
_read_pipe_to_packet:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	pushl	%ebx
push %eax
pop %eax
	subl	$68, %esp
push %eax
pop %eax
	movl	$1, -12(%ebp)
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
	jnb	L15
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
L15:
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
	jne	L16
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
	jbe	L16
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	65916(%eax), %eax
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	leal	24(%eax), %edx
push %eax
pop %eax
	movl	-16(%ebp), %eax
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
	movl	-16(%ebp), %eax
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
	movl	-16(%ebp), %eax
push %eax
pop %eax
	leal	24(%eax), %edx
push %eax
pop %eax
	movl	-16(%ebp), %eax
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
L16:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	65928(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L17
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
	ja	L17
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
	jne	L18
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	65916(%eax), %eax
push %eax
pop %eax
	movl	%eax, -20(%ebp)
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
	movl	-20(%ebp), %eax
push %eax
pop %eax
	leal	4(%eax), %edx
push %eax
pop %eax
	movl	-20(%ebp), %eax
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
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	20(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L19
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
	movl	%eax, -24(%ebp)
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	24(%eax), %edx
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 24(%eax)
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	28(%eax), %edx
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 28(%eax)
push %eax
pop %eax
	movl	-24(%ebp), %eax
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
	movl	-24(%ebp), %eax
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
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	%edx, 32(%eax)
push %eax
pop %eax
	movl	$65538, 4(%esp)
push %eax
pop %eax
	movl	-24(%ebp), %eax
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
	je	L20
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
	movl	-28(%ebp), %eax
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
	jne	L20
push %eax
pop %eax
	movl	$0, -52(%ebp)
push %eax
pop %eax
	leal	-52(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$262606, 4(%esp)
push %eax
pop %eax
	movl	-24(%ebp), %eax
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
	je	L21
push %eax
pop %eax
	movl	-52(%ebp), %eax
push %eax
pop %eax
	cmpl	$16, %eax
push %eax
pop %eax
	jne	L21
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
	movl	-32(%ebp), %eax
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
	je	L21
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
	movl	%eax, -36(%ebp)
push %eax
pop %eax
	cmpl	$0, -36(%ebp)
push %eax
pop %eax
	je	L27
push %eax
pop %eax
	movl	-36(%ebp), %eax
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
	movl	-36(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_free
push %eax
pop %eax
	jmp	L27
push %eax
pop %eax
L21:
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
	jmp	L23
push %eax
pop %eax
L27:
	nop
push %eax
pop %eax
L23:
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
	movl	%eax, -40(%ebp)
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	movl	8(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 8(%eax)
push %eax
pop %eax
	movl	-40(%ebp), %eax
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
	movl	-40(%ebp), %edx
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
	movl	$34, 4(%esp)
push %eax
pop %eax
	movl	$0, (%esp)
push %eax
pop %eax
	call	_packet_create
push %eax
pop %eax
	movl	%eax, -44(%ebp)
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
	movl	-44(%ebp), %eax
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
	movl	-44(%ebp), %eax
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
	movl	-44(%ebp), %edx
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
	movl	$0, -12(%ebp)
push %eax
pop %eax
L20:
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_free
push %eax
pop %eax
L19:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	65928(%eax), %eax
push %eax
pop %eax
	leal	-4(%eax), %ecx
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	leal	4(%eax), %edx
push %eax
pop %eax
	movl	-20(%ebp), %eax
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
L18:
	cmpl	$0, -12(%ebp)
push %eax
pop %eax
	je	L24
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
L24:
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
	movl	%eax, -48(%ebp)
push %eax
pop %eax
	cmpl	$0, -48(%ebp)
push %eax
pop %eax
	je	L25
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
	movl	-48(%ebp), %edx
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
L25:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	-48(%ebp), %edx
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
L17:
	movl	$0, %eax
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
	jmp	L29
push %eax
pop %eax
L32:
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
	je	L30
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	addl	%eax, -16(%ebp)
push %eax
pop %eax
	jmp	L29
push %eax
pop %eax
L30:
	movl	__imp__GetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	jmp	L31
push %eax
pop %eax
L29:
	movl	-16(%ebp), %eax
push %eax
pop %eax
	cmpl	16(%ebp), %eax
push %eax
pop %eax
	jb	L32
push %eax
pop %eax
L31:
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
	je	L39
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
L37:
	movl	%ecx, -64(%ebp,%eax)
push %eax
pop %eax
	addl	$4, %eax
push %eax
pop %eax
	cmpl	%edx, %eax
push %eax
pop %eax
	jb	L37
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
	jmp	L34
push %eax
pop %eax
L39:
	nop
push %eax
pop %eax
L34:
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.globl	_toggle_privilege
	.def	_toggle_privilege;	.scl	2;	.type	32;	.endef
_toggle_privilege:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$88, %esp
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
	jne	L41
push %eax
pop %eax
	movl	__imp__GetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	jmp	L47
push %eax
pop %eax
L41:
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
	jne	L43
push %eax
pop %eax
	movl	__imp__GetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	jmp	L47
push %eax
pop %eax
L43:
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
	je	L44
push %eax
pop %eax
	movl	$2, %eax
push %eax
pop %eax
	jmp	L45
push %eax
pop %eax
L44:
	movl	$0, %eax
push %eax
pop %eax
L45:
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
	jne	L46
push %eax
pop %eax
	movl	__imp__GetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	jmp	L47
push %eax
pop %eax
L46:
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
L47:
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
	.section .rdata,"dr"
LC2:
	.ascii "SeSecurityPrivilege\0"
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
	leal	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$1, 4(%esp)
push %eax
pop %eax
	movl	$LC2, (%esp)
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
	jne	L49
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
	jne	L49
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
	movl	$LC2, (%esp)
push %eax
pop %eax
	call	_toggle_privilege
push %eax
pop %eax
L49:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	368(%eax), %eax
push %eax
pop %eax
	cmpl	$-1, %eax
push %eax
pop %eax
	jne	L51
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
L51:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	368(%eax), %eax
push %eax
pop %eax
	cmpl	$-1, %eax
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
	movl	%eax, -12(%ebp)
push %eax
pop %eax
	jmp	L56
push %eax
pop %eax
L52:
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
	jne	L54
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
	jmp	L56
push %eax
pop %eax
L54:
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
	jne	L55
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
	jmp	L56
push %eax
pop %eax
L55:
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
L56:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
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
	je	L65
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
	je	L61
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
	je	L61
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
L61:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	16(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L62
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
L62:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	36(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L63
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
L63:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	65916(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L64
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
L64:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_free
push %eax
pop %eax
	jmp	L66
push %eax
pop %eax
L65:
	nop
push %eax
pop %eax
L66:
	nop
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
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
	jne	L68
push %eax
pop %eax
	movl	$6, -12(%ebp)
push %eax
pop %eax
	jmp	L84
push %eax
pop %eax
L68:
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	368(%eax), %eax
push %eax
pop %eax
	cmpl	$-1, %eax
push %eax
pop %eax
	jne	L70
push %eax
pop %eax
	movl	$6, -12(%ebp)
push %eax
pop %eax
	jmp	L84
push %eax
pop %eax
L70:
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	372(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L71
push %eax
pop %eax
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	$1, 372(%eax)
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
	cmpl	$997, -12(%ebp)
push %eax
pop %eax
	je	L87
push %eax
pop %eax
	cmpl	$536, -12(%ebp)
push %eax
pop %eax
	jne	L88
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
L71:
	movl	$0, -64(%ebp)
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
	jne	L75
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
	cmpl	$996, -12(%ebp)
push %eax
pop %eax
	je	L89
push %eax
pop %eax
	cmpl	$109, -12(%ebp)
push %eax
pop %eax
	jne	L89
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
	cmpl	$0, -60(%ebp)
push %eax
pop %eax
	je	L77
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
L77:
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
	jmp	L78
push %eax
pop %eax
L75:
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	376(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L79
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
	je	L80
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
L80:
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
	je	L81
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
L81:
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	65932(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L82
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
	je	L82
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
L82:
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
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_malloc
push %eax
pop %eax
	movl	%eax, -52(%ebp)
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
	movl	-52(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_free
push %eax
pop %eax
L79:
	movl	-64(%ebp), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L83
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
L83:
	movl	$1, -16(%ebp)
push %eax
pop %eax
	jmp	L84
push %eax
pop %eax
L87:
	nop
push %eax
pop %eax
	jmp	L84
push %eax
pop %eax
L88:
	nop
push %eax
pop %eax
	jmp	L84
push %eax
pop %eax
L89:
	nop
push %eax
pop %eax
L84:
	movl	-24(%ebp), %eax
push %eax
pop %eax
	movl	16(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L85
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
L85:
	cmpl	$0, -16(%ebp)
push %eax
pop %eax
	je	L86
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
L86:
	movl	-12(%ebp), %eax
push %eax
pop %eax
L78:
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
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
	jne	L91
push %eax
pop %eax
	movl	$8, -12(%ebp)
push %eax
pop %eax
	jmp	L100
push %eax
pop %eax
L91:
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
	jne	L93
push %eax
pop %eax
	movl	$8, -12(%ebp)
push %eax
pop %eax
	jmp	L100
push %eax
pop %eax
L93:
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
	jne	L94
push %eax
pop %eax
	movl	$87, -12(%ebp)
push %eax
pop %eax
	jmp	L100
push %eax
pop %eax
L94:
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
	je	L95
push %eax
pop %eax
	movl	$87, -12(%ebp)
push %eax
pop %eax
	jmp	L100
push %eax
pop %eax
L95:
	cmpl	$0, -20(%ebp)
push %eax
pop %eax
	jne	L96
push %eax
pop %eax
	movl	$LC3, -20(%ebp)
push %eax
pop %eax
L96:
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
	je	L97
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
L97:
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
	je	L98
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
	je	L98
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
L98:
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
	movl	$LC4, 12(%esp)
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
	cmpl	$0, -12(%ebp)
push %eax
pop %eax
	jne	L100
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
L100:
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
	je	L108
push %eax
pop %eax
	cmpl	$0, -16(%ebp)
push %eax
pop %eax
	je	L109
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
	je	L104
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
L104:
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	16(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L105
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
L105:
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	368(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L106
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
	je	L106
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
L106:
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_free
push %eax
pop %eax
	jmp	L102
push %eax
pop %eax
L108:
	nop
push %eax
pop %eax
	jmp	L102
push %eax
pop %eax
L109:
	nop
push %eax
pop %eax
L102:
	movl	-12(%ebp), %eax
push %eax
pop %eax
	leave
push %eax
pop %eax
	ret
push %eax
pop %eax
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
