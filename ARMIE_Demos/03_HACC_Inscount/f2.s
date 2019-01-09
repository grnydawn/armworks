	.text
	.file	"f2.c"
	.globl	main                    // -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   // @main
	.cfi_startproc
// BB#0:
.Lcfi0:
	.cfi_def_cfa_offset 0
	mov	w9, #42
	adrp	x10, b
	adrp	x11, c
	adrp	x12, a
	mov	x8, xzr
	add	x10, x10, :lo12:b
	add	x11, x11, :lo12:c
	whilelo	p0.s, xzr, x9
	add	x12, x12, :lo12:a
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ld1w	{z0.s}, p0/z, [x11, x8, lsl #2]
	ld1w	{z1.s}, p0/z, [x10, x8, lsl #2]
	ld1w	{z0.s}, p0/z, [x10, z0.s, sxtw #2]
	add	z0.s, z0.s, z1.s
	st1w	{z0.s}, p0, [x12, x8, lsl #2]
	incw	x8
	whilelo	p0.s, x8, x9
	b.mi	.LBB0_1
// BB#2:
	mov	w0, wzr
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        // -- End function
	.type	b,@object               // @b
	.comm	b,168,4
	.type	c,@object               // @c
	.comm	c,168,4
	.type	a,@object               // @a
	.comm	a,168,4

	.ident	"Arm C/C++/Fortran Compiler version 18.4 (build number 40) (based on LLVM 5.0.2)"
	.section	".note.GNU-stack","",@progbits
