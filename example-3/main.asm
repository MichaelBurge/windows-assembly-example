#ProjectEuler #1
	.file "main.asm"
	.text
	.globl	answer
	.def answer		; .scl 2; .type 32;  .endef
answer:
	xor %rax, %rax
	xor %rdx, %rdx
	xor %rcx, %rcx
	xor %r8, %r8
	xor %r9, %r9
	mov $999, %rbx
answer.loop:
	inc %r9
	mov $3, %r8
	call answer.check
	test %r8, %r8
	jz answer.loop.end
	mov $5, %r8
	call answer.check
answer.loop.end:
	sub $1, %rbx
	jne answer.loop
	jmp answer.end
answer.check:
	xor %rdx, %rdx
	mov %rbx, %rax
	div %r8
	cmp $0, %rdx
	jnz answer.check.end
	xor %r8, %r8
	add %rbx, %rcx
answer.check.end:
	ret
answer.end:
	mov %rcx, %rax
	ret
	
.LC0:
	.ascii "%d\12\0"
	.section	.text.startup,"x"
	.p2align 4,,15
	.globl answer
	
	.def	main;	.scl	2;	.type	32;	.endef
main:
	subq	$40, %rsp
	call	answer
	leaq	.LC0(%rip), %rcx
	movl	%eax, %edx
	call	printf
	xorl	%eax, %eax
	addq	$40, %rsp
	ret
	.def	printf;	.scl	2;	.type	32;	.endef
