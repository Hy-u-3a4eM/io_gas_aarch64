	.text
	.globl	_start
	.p2align	2
	.type	_start,@function
_start:
	mov	x0, xzr
	adrp	x1, io
	add	x1, x1, :lo12:io
	adrp	x2, io
	add	x2, x2, :lo12:io
	mov	x8, #63
	svc	#0

	mov	x0, #1
	adrp	x1, io
	add	x1, x1, :lo12:io
	adrp	x2, io
	add	x2, x2, :lo12:io
	mov	x8, #64
	svc	#0

	mov	x0, xzr
	mov	x8, #93
	svc	#0

	mov	w0, wzr
	ret
.Lfunc_end0:
	.size	_start, .Lfunc_end0-_start

	.type	io,@object
	.bss
	.globl	io
	.p2align	2
io:
	.word	0
	.size	io, 4

