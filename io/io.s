	.text
	.globl _start
	.p2align	2
	.type	_start,@function
_start:
	mov x0, xzr
	ldr x1, =io
	ldr x2, =io
	mov w8, #63
	svc #0

	mov x0, #1
	ldr x1, =io
	ldr x2, =io
	mov w8, #64
	svc #0

	mov x0, xzr
	mov w8, #93
	svc #0
.Lfunc_end0:
	.size	_start, .Lfunc_end0-_start

	.type	io,@object
	.bss
	.globl io
	.p2align	2
io:
	.word	0
	.size	io, 4

