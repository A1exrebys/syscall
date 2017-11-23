#include <asm/unistd.h>
#include <syscall.h>

	.file	"main.c"
	.section	.rodata
hello:
	.string	"Hello world!\n"
	.text
	.globl	main
	.type	main, @function
main:
	pushq	%rbp
	movq	%rsp, %rbp

	## call syswrite
	movl	$13, %edx
	movl	$hello, %esi
	movl	$1, %edi
	movl	$SYS_write, %eax
	syscall

	## exit
	movl	$0, %eax
	popq	%rbp
	ret
.LFE0:
	.size	main, .-main
	.section	.note.GNU-stack,"",@progbits
