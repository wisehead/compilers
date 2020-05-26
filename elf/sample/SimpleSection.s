	.file	"SimpleSection.c"
	.globl	global_init_var
	.data
	.align 4
	.type	global_init_var, @object
	.size	global_init_var, 4
global_init_var:
	.long	84
	.comm	global_uninit_var,4,4
	.section	.rodata
.LC0:
	.string	"%d\n"
	.text
	.globl	func1
	.type	func1, @function
func1:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	func1, .-func1
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$1, -4(%rbp)
	movl	static_var.2185(%rip), %edx
	movl	static_var2.2186(%rip), %eax
	addl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%eax, %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, %edi
	call	func1
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.data
	.align 4
	.type	static_var.2185, @object
	.size	static_var.2185, 4
static_var.2185:
	.long	82
	.local	static_var2.2186
	.comm	static_var2.2186,4,4
	.ident	"GCC: (GNU) 4.8.2"
	.section	.note.GNU-stack,"",@progbits
