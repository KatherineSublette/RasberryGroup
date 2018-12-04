	.arch armv6
	.text
	.align	2
	.global	factorial_efficient
	.syntax unified
	.arm
	.fpu vfp
	.type	factorial_efficient, %function
factorial_efficient:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	
	
	mov r4, r0
	
	fin:
	cmp r4, #1
	bne loop
	bx lr

	loop:
	sub r4, #1
	mul r0, r0, r4
	b fin

