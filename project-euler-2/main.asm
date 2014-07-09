#ProjectEuler #2

	.def	printf	; .scl	2; .type	32;	.endef
	.def	answer	; .scl	2; .type	32;	.endef
	.def	main	; .scl	2; .type	32;	.endef
	.globl	answer
	
.FORMAT_STRING:
	.ascii	"%d\n\0"
	.text
	.globl answer

main:
	subq	$40, %rsp
	call	answer
	leaq	.FORMAT_STRING(%rip), %rcx
	mov	%eax, %edx
	call	printf
	xor	%eax, %eax
	addq	$40, %rsp
	ret

answer:
	xor	%rax, %rax
	xor	%rbx, %rbx
	xor	%rcx, %rcx
	inc	%rbx

answer.loop:
	cmp	$4000000, %rbx
	jge	answer.end
	test	$1, %rbx
	jnz	answer.next
	add	%rbx, %rax
answer.next:
	add	%rcx, %rbx
	xchg	%rcx, %rbx
	jmp	answer.loop
answer.end:
	ret
