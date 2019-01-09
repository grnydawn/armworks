	.text
	.file	"GravityForceKernel.cpp"
	.file	1 "GravityForceKernel.cpp"
	.file	2 "/usr/include" "stdlib.h"
	.file	3 "/opt/arm/gcc-7.1.0_Generic-AArch64_RHEL-7_aarch64-linux/lib/gcc/aarch64-linux-gnu/7.1.0/../../../../include/c++/7.1.0/bits" "std_abs.h"
	.file	4 "/usr/include/bits" "math-finite.h"
	.file	5 "/opt/arm/gcc-7.1.0_Generic-AArch64_RHEL-7_aarch64-linux/lib/gcc/aarch64-linux-gnu/7.1.0/../../../../include/c++/7.1.0" "cmath"
	.file	6 "/usr/include/bits" "mathcalls.h"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               // -- Begin function _Z19GravityForceKernel4iPfS_S_S_fffffRfS0_S0_
.LCPI0_0:
	.word	931797070               // float 1.64621997E-5
.LCPI0_1:
	.word	3122352417              // float -5.92486991E-4
.LCPI0_2:
	.word	1007717418              // float 0.00882248021
.LCPI0_3:
	.word	3180104985              // float -0.0686284974
.LCPI0_4:
	.word	3196520317              // float -0.263729006
	.text
	.globl	_Z19GravityForceKernel4iPfS_S_S_fffffRfS0_S0_
	.p2align	2
	.type	_Z19GravityForceKernel4iPfS_S_S_fffffRfS0_S0_,@function
_Z19GravityForceKernel4iPfS_S_S_fffffRfS0_S0_: // @_Z19GravityForceKernel4iPfS_S_S_fffffRfS0_S0_
.Lfunc_begin0:
	.loc	1 131 0                 // GravityForceKernel.cpp:131:0
	.cfi_startproc
// BB#0:
.Lcfi0:
	.cfi_def_cfa_offset 0
	//DEBUG_VALUE: GravityForceKernel4:n <- %W0
	//DEBUG_VALUE: GravityForceKernel4:n <- %W0
	//DEBUG_VALUE: GravityForceKernel4:x <- %X1
	//DEBUG_VALUE: GravityForceKernel4:y <- %X2
	//DEBUG_VALUE: GravityForceKernel4:y <- %X2
	//DEBUG_VALUE: GravityForceKernel4:z <- %X3
	//DEBUG_VALUE: GravityForceKernel4:z <- %X3
	//DEBUG_VALUE: GravityForceKernel4:mass <- %X4
	//DEBUG_VALUE: GravityForceKernel4:mass <- %X4
	//DEBUG_VALUE: GravityForceKernel4:x0 <- %S0
	//DEBUG_VALUE: GravityForceKernel4:x0 <- %S0
	//DEBUG_VALUE: GravityForceKernel4:y0 <- %S1
	//DEBUG_VALUE: GravityForceKernel4:y0 <- %S1
	//DEBUG_VALUE: GravityForceKernel4:z0 <- %S2
	//DEBUG_VALUE: GravityForceKernel4:z0 <- %S2
	//DEBUG_VALUE: GravityForceKernel4:MaxSepSqrd <- %S3
	//DEBUG_VALUE: GravityForceKernel4:MaxSepSqrd <- %S3
	//DEBUG_VALUE: GravityForceKernel4:SofteningLenSqrd <- %S4
	//DEBUG_VALUE: GravityForceKernel4:SofteningLenSqrd <- %S4
	//DEBUG_VALUE: GravityForceKernel4:ax <- %X5
	//DEBUG_VALUE: GravityForceKernel4:ax <- %X5
	//DEBUG_VALUE: GravityForceKernel4:ay <- %X6
	//DEBUG_VALUE: GravityForceKernel4:ay <- %X6
	//DEBUG_VALUE: GravityForceKernel4:az <- %X7
	//DEBUG_VALUE: GravityForceKernel4:az <- %X7
	//DEBUG_VALUE: GravityForceKernel<4, &PolyCoefficients4>:n <- %W0
	//DEBUG_VALUE: GravityForceKernel<4, &PolyCoefficients4>:lax <- 0.000000e+00
	//DEBUG_VALUE: GravityForceKernel<4, &PolyCoefficients4>:lay <- 0.000000e+00
	//DEBUG_VALUE: GravityForceKernel<4, &PolyCoefficients4>:laz <- 0.000000e+00
	//DEBUG_VALUE: i <- 0
	.loc	1 102 3 prologue_end    // GravityForceKernel.cpp:102:3
	cmp	w0, #1                  // =1
	//DEBUG_VALUE: GravityForceKernel4:x <- %X1
	b.lt	.LBB0_4
.Ltmp0:
// BB#1:
	//DEBUG_VALUE: GravityForceKernel<4, &PolyCoefficients4>:n <- %W0
	//DEBUG_VALUE: GravityForceKernel4:az <- %X7
	//DEBUG_VALUE: GravityForceKernel4:ay <- %X6
	//DEBUG_VALUE: GravityForceKernel4:ax <- %X5
	//DEBUG_VALUE: GravityForceKernel4:SofteningLenSqrd <- %S4
	//DEBUG_VALUE: GravityForceKernel4:MaxSepSqrd <- %S3
	//DEBUG_VALUE: GravityForceKernel4:z0 <- %S2
	//DEBUG_VALUE: GravityForceKernel4:y0 <- %S1
	//DEBUG_VALUE: GravityForceKernel4:x0 <- %S0
	//DEBUG_VALUE: GravityForceKernel4:mass <- %X4
	//DEBUG_VALUE: GravityForceKernel4:z <- %X3
	//DEBUG_VALUE: GravityForceKernel4:y <- %X2
	//DEBUG_VALUE: GravityForceKernel4:x <- %X1
	//DEBUG_VALUE: GravityForceKernel4:n <- %W0
	.loc	1 0 3 is_stmt 0         // GravityForceKernel.cpp:0:3
	adrp	x9, .LCPI0_0
	ldr	s7, [x9, :lo12:.LCPI0_0]
	adrp	x9, .LCPI0_1
	ldr	s16, [x9, :lo12:.LCPI0_1]
	adrp	x9, .LCPI0_2
	ldr	s17, [x9, :lo12:.LCPI0_2]
	adrp	x9, .LCPI0_3
	ldr	s18, [x9, :lo12:.LCPI0_3]
	adrp	x9, .LCPI0_4
	ldr	s19, [x9, :lo12:.LCPI0_4]
	mov	w9, w0
	mov	z5.s, #0                // =0x0
.Ltmp1:
	.loc	1 102 26                // GravityForceKernel.cpp:102:26
	mov	x8, xzr
.Ltmp2:
	.loc	1 102 3                 // GravityForceKernel.cpp:102:3
	mov	z0.s, s0
.Ltmp3:
	mov	z1.s, s1
.Ltmp4:
	mov	z2.s, s2
.Ltmp5:
	mov	z3.s, s3
.Ltmp6:
	mov	z4.s, s4
.Ltmp7:
	.loc	1 0 3                   // GravityForceKernel.cpp:0:3
	ptrue	p0.s
	fmov	z6.s, #1.00000000
	whilelo	p1.s, xzr, x9
	mov	z7.s, s7
	mov	z16.s, s16
	mov	z17.s, s17
	mov	z18.s, s18
	mov	z20.s, s19
	mov	z19.d, z5.d
	mov	z21.d, z5.d
.LBB0_2:                                // =>This Inner Loop Header: Depth=1
	//DEBUG_VALUE: GravityForceKernel<4, &PolyCoefficients4>:n <- %W0
	//DEBUG_VALUE: GravityForceKernel4:az <- %X7
	//DEBUG_VALUE: GravityForceKernel4:ay <- %X6
	//DEBUG_VALUE: GravityForceKernel4:ax <- %X5
	//DEBUG_VALUE: GravityForceKernel4:mass <- %X4
	//DEBUG_VALUE: GravityForceKernel4:z <- %X3
	//DEBUG_VALUE: GravityForceKernel4:y <- %X2
	//DEBUG_VALUE: GravityForceKernel4:x <- %X1
	//DEBUG_VALUE: GravityForceKernel4:n <- %W0
.Ltmp8:
	.loc	1 103 16 is_stmt 1      // GravityForceKernel.cpp:103:16
	ld1w	{z22.s}, p1/z, [x1, x8, lsl #2]
	.loc	1 103 32 is_stmt 0      // GravityForceKernel.cpp:103:32
	ld1w	{z23.s}, p1/z, [x2, x8, lsl #2]
	.loc	1 103 48                // GravityForceKernel.cpp:103:48
	ld1w	{z24.s}, p1/z, [x3, x8, lsl #2]
	.loc	1 103 21                // GravityForceKernel.cpp:103:21
	fsub	z22.s, z22.s, z0.s
	.loc	1 103 37                // GravityForceKernel.cpp:103:37
	fsub	z23.s, z23.s, z1.s
	.loc	1 104 19 is_stmt 1      // GravityForceKernel.cpp:104:19
	fmul	z25.s, z22.s, z22.s
	.loc	1 103 53                // GravityForceKernel.cpp:103:53
	fsub	z24.s, z24.s, z2.s
	.loc	1 104 24                // GravityForceKernel.cpp:104:24
	movprfx	z26, z25
	fmla	z26.s, p0/m, z23.s, z23.s
	.loc	1 104 34 is_stmt 0      // GravityForceKernel.cpp:104:34
	movprfx	z25, z26
	fmla	z25.s, p0/m, z24.s, z24.s
.Ltmp9:
	.loc	1 106 12 is_stmt 1      // GravityForceKernel.cpp:106:12
	fcmge	p2.s, p0/z, z25.s, z3.s
	.loc	1 106 32 is_stmt 0      // GravityForceKernel.cpp:106:32
	fcmeq	p3.s, p0/z, z25.s, #0.0
.Ltmp10:
	.loc	1 112 41 is_stmt 1      // GravityForceKernel.cpp:112:41
	movprfx	z26, z16
	fmla	z26.s, p0/m, z25.s, z7.s
.Ltmp11:
	.loc	1 106 26                // GravityForceKernel.cpp:106:26
	orr	p2.b, p0/z, p2.b, p3.b
.Ltmp12:
	.loc	1 112 41                // GravityForceKernel.cpp:112:41
	fmad	z26.s, p0/m, z25.s, z17.s
	not	p3.b, p0/z, p2.b
.Ltmp13:
	.loc	1 109 20                // GravityForceKernel.cpp:109:20
	fadd	z27.s, z25.s, z4.s
.Ltmp14:
	.loc	1 112 41                // GravityForceKernel.cpp:112:41
	fmad	z26.s, p0/m, z25.s, z18.s
.Ltmp15:
	.loc	1 114 47                // GravityForceKernel.cpp:114:47
	and	p3.b, p0/z, p1.b, p3.b
.Ltmp16:
	.loc	5 464 12                // /opt/arm/gcc-7.1.0_Generic-AArch64_RHEL-7_aarch64-linux/lib/gcc/aarch64-linux-gnu/7.1.0/../../../../include/c++/7.1.0/cmath:464:12
	fsqrt	z28.s, p0/m, z27.s
.Ltmp17:
	.loc	1 112 41                // GravityForceKernel.cpp:112:41
	fmsb	z25.s, p0/m, z26.s, z20.s
.Ltmp18:
	.loc	1 114 47                // GravityForceKernel.cpp:114:47
	ld1w	{z26.s}, p3/z, [x4, x8, lsl #2]
	.loc	1 114 22 is_stmt 0      // GravityForceKernel.cpp:114:22
	fmul	z27.s, z28.s, z27.s
	.loc	1 114 15                // GravityForceKernel.cpp:114:15
	fdivr	z27.s, p0/m, z27.s, z6.s
	.loc	1 114 40                // GravityForceKernel.cpp:114:40
	fadd	z25.s, z25.s, z27.s
	.loc	1 114 45                // GravityForceKernel.cpp:114:45
	fmul	z25.s, z25.s, z26.s
	.loc	1 116 9 is_stmt 1       // GravityForceKernel.cpp:116:9
	fmad	z22.s, p0/m, z25.s, z5.s
	.loc	1 117 9                 // GravityForceKernel.cpp:117:9
	fmad	z23.s, p0/m, z25.s, z19.s
	.loc	1 118 9                 // GravityForceKernel.cpp:118:9
	fmad	z24.s, p0/m, z25.s, z21.s
.Ltmp19:
	.loc	1 102 21                // GravityForceKernel.cpp:102:21
	incw	x8
	mov	z24.s, p2/m, z21.s
	mov	z23.s, p2/m, z19.s
	mov	z22.s, p2/m, z5.s
	mov	z21.s, p1/m, z24.s
	mov	z19.s, p1/m, z23.s
	mov	z5.s, p1/m, z22.s
	whilelo	p1.s, x8, x9
.Ltmp20:
	.loc	1 102 3 is_stmt 0       // GravityForceKernel.cpp:102:3
	b.mi	.LBB0_2
.Ltmp21:
// BB#3:
	//DEBUG_VALUE: GravityForceKernel4:az <- %X7
	//DEBUG_VALUE: GravityForceKernel4:ay <- %X6
	//DEBUG_VALUE: GravityForceKernel4:ax <- %X5
	//DEBUG_VALUE: GravityForceKernel4:mass <- %X4
	//DEBUG_VALUE: GravityForceKernel4:z <- %X3
	//DEBUG_VALUE: GravityForceKernel4:y <- %X2
	//DEBUG_VALUE: GravityForceKernel4:x <- %X1
	//DEBUG_VALUE: GravityForceKernel4:n <- %W0
	.loc	1 0 3                   // GravityForceKernel.cpp:0:3
	faddv	s0, p0, z21.s
	faddv	s1, p0, z19.s
	faddv	s2, p0, z5.s
	b	.LBB0_5
.LBB0_4:
	//DEBUG_VALUE: GravityForceKernel4:az <- %X7
	//DEBUG_VALUE: GravityForceKernel4:ay <- %X6
	//DEBUG_VALUE: GravityForceKernel4:ax <- %X5
.Ltmp22:
	//DEBUG_VALUE: GravityForceKernel4:SofteningLenSqrd <- %S4
	//DEBUG_VALUE: GravityForceKernel4:MaxSepSqrd <- %S3
	//DEBUG_VALUE: GravityForceKernel4:z0 <- %S2
	//DEBUG_VALUE: GravityForceKernel4:y0 <- %S1
	//DEBUG_VALUE: GravityForceKernel4:x0 <- %S0
	//DEBUG_VALUE: GravityForceKernel4:mass <- %X4
	//DEBUG_VALUE: GravityForceKernel4:z <- %X3
	//DEBUG_VALUE: GravityForceKernel4:y <- %X2
	//DEBUG_VALUE: GravityForceKernel4:x <- %X1
	//DEBUG_VALUE: GravityForceKernel4:n <- %W0
	fmov	s0, wzr
.Ltmp23:
	fmov	s1, wzr
.Ltmp24:
	fmov	s2, wzr
.Ltmp25:
.LBB0_5:
	//DEBUG_VALUE: GravityForceKernel4:az <- %X7
	//DEBUG_VALUE: GravityForceKernel4:ay <- %X6
	//DEBUG_VALUE: GravityForceKernel4:ax <- %X5
	//DEBUG_VALUE: GravityForceKernel4:mass <- %X4
	//DEBUG_VALUE: GravityForceKernel4:z <- %X3
	//DEBUG_VALUE: GravityForceKernel4:y <- %X2
	//DEBUG_VALUE: GravityForceKernel4:x <- %X1
	//DEBUG_VALUE: GravityForceKernel4:n <- %W0
	.loc	1 121 6 is_stmt 1       // GravityForceKernel.cpp:121:6
	ldr	s3, [x5]
	.loc	1 122 6                 // GravityForceKernel.cpp:122:6
	ldr	s4, [x6]
	.loc	1 123 6                 // GravityForceKernel.cpp:123:6
	ldr	s5, [x7]
	.loc	1 121 6                 // GravityForceKernel.cpp:121:6
	fadd	s2, s3, s2
	.loc	1 122 6                 // GravityForceKernel.cpp:122:6
	fadd	s1, s4, s1
	.loc	1 123 6                 // GravityForceKernel.cpp:123:6
	fadd	s0, s5, s0
	.loc	1 121 6                 // GravityForceKernel.cpp:121:6
	str	s2, [x5]
	.loc	1 122 6                 // GravityForceKernel.cpp:122:6
	str	s1, [x6]
	.loc	1 123 6                 // GravityForceKernel.cpp:123:6
	str	s0, [x7]
.Ltmp26:
	.loc	1 135 1                 // GravityForceKernel.cpp:135:1
	ret
.Ltmp27:
.Lfunc_end0:
	.size	_Z19GravityForceKernel4iPfS_S_S_fffffRfS0_S0_, .Lfunc_end0-_Z19GravityForceKernel4iPfS_S_S_fffffRfS0_S0_
	.cfi_endproc
                                        // -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               // -- Begin function _Z19GravityForceKernel5iPfS_S_S_fffffRfS0_S0_
.LCPI1_0:
	.word	902138274               // float 1.47177002E-6
.LCPI1_1:
	.word	947779098               // float 6.05491005E-5
.LCPI1_2:
	.word	3129952091              // float -0.00109312998
.LCPI1_3:
	.word	1010571767              // float 0.0114807999
.LCPI1_4:
	.word	3180973280              // float -0.0750977993
.LCPI1_5:
	.word	3196708155              // float -0.269327015
	.text
	.globl	_Z19GravityForceKernel5iPfS_S_S_fffffRfS0_S0_
	.p2align	2
	.type	_Z19GravityForceKernel5iPfS_S_S_fffffRfS0_S0_,@function
_Z19GravityForceKernel5iPfS_S_S_fffffRfS0_S0_: // @_Z19GravityForceKernel5iPfS_S_S_fffffRfS0_S0_
.Lfunc_begin1:
	.loc	1 142 0                 // GravityForceKernel.cpp:142:0
	.cfi_startproc
// BB#0:
.Lcfi1:
	.cfi_def_cfa_offset 0
	//DEBUG_VALUE: GravityForceKernel5:n <- %W0
	//DEBUG_VALUE: GravityForceKernel5:n <- %W0
	//DEBUG_VALUE: GravityForceKernel5:x <- %X1
	//DEBUG_VALUE: GravityForceKernel5:y <- %X2
	//DEBUG_VALUE: GravityForceKernel5:y <- %X2
	//DEBUG_VALUE: GravityForceKernel5:z <- %X3
	//DEBUG_VALUE: GravityForceKernel5:z <- %X3
	//DEBUG_VALUE: GravityForceKernel5:mass <- %X4
	//DEBUG_VALUE: GravityForceKernel5:mass <- %X4
	//DEBUG_VALUE: GravityForceKernel5:x0 <- %S0
	//DEBUG_VALUE: GravityForceKernel5:x0 <- %S0
	//DEBUG_VALUE: GravityForceKernel5:y0 <- %S1
	//DEBUG_VALUE: GravityForceKernel5:y0 <- %S1
	//DEBUG_VALUE: GravityForceKernel5:z0 <- %S2
	//DEBUG_VALUE: GravityForceKernel5:z0 <- %S2
	//DEBUG_VALUE: GravityForceKernel5:MaxSepSqrd <- %S3
	//DEBUG_VALUE: GravityForceKernel5:MaxSepSqrd <- %S3
	//DEBUG_VALUE: GravityForceKernel5:SofteningLenSqrd <- %S4
	//DEBUG_VALUE: GravityForceKernel5:SofteningLenSqrd <- %S4
	//DEBUG_VALUE: GravityForceKernel5:ax <- %X5
	//DEBUG_VALUE: GravityForceKernel5:ax <- %X5
	//DEBUG_VALUE: GravityForceKernel5:ay <- %X6
	//DEBUG_VALUE: GravityForceKernel5:ay <- %X6
	//DEBUG_VALUE: GravityForceKernel5:az <- %X7
	//DEBUG_VALUE: GravityForceKernel5:az <- %X7
	//DEBUG_VALUE: GravityForceKernel<5, &PolyCoefficients5>:n <- %W0
	//DEBUG_VALUE: GravityForceKernel<5, &PolyCoefficients5>:lax <- 0.000000e+00
	//DEBUG_VALUE: GravityForceKernel<5, &PolyCoefficients5>:lay <- 0.000000e+00
	//DEBUG_VALUE: GravityForceKernel<5, &PolyCoefficients5>:laz <- 0.000000e+00
	//DEBUG_VALUE: i <- 0
	.loc	1 102 3 prologue_end    // GravityForceKernel.cpp:102:3
	cmp	w0, #1                  // =1
	//DEBUG_VALUE: GravityForceKernel5:x <- %X1
	b.lt	.LBB1_4
.Ltmp28:
// BB#1:
	//DEBUG_VALUE: GravityForceKernel<5, &PolyCoefficients5>:n <- %W0
	//DEBUG_VALUE: GravityForceKernel5:az <- %X7
	//DEBUG_VALUE: GravityForceKernel5:ay <- %X6
	//DEBUG_VALUE: GravityForceKernel5:ax <- %X5
	//DEBUG_VALUE: GravityForceKernel5:SofteningLenSqrd <- %S4
	//DEBUG_VALUE: GravityForceKernel5:MaxSepSqrd <- %S3
	//DEBUG_VALUE: GravityForceKernel5:z0 <- %S2
	//DEBUG_VALUE: GravityForceKernel5:y0 <- %S1
	//DEBUG_VALUE: GravityForceKernel5:x0 <- %S0
	//DEBUG_VALUE: GravityForceKernel5:mass <- %X4
	//DEBUG_VALUE: GravityForceKernel5:z <- %X3
	//DEBUG_VALUE: GravityForceKernel5:y <- %X2
	//DEBUG_VALUE: GravityForceKernel5:x <- %X1
	//DEBUG_VALUE: GravityForceKernel5:n <- %W0
	.loc	1 0 3 is_stmt 0         // GravityForceKernel.cpp:0:3
	adrp	x9, .LCPI1_0
	ldr	s5, [x9, :lo12:.LCPI1_0]
	adrp	x9, .LCPI1_1
	ldr	s16, [x9, :lo12:.LCPI1_1]
	adrp	x9, .LCPI1_2
	ldr	s17, [x9, :lo12:.LCPI1_2]
	adrp	x9, .LCPI1_3
	ldr	s18, [x9, :lo12:.LCPI1_3]
	adrp	x9, .LCPI1_4
	ldr	s19, [x9, :lo12:.LCPI1_4]
	adrp	x9, .LCPI1_5
	ldr	s20, [x9, :lo12:.LCPI1_5]
	.loc	1 102 3                 // GravityForceKernel.cpp:102:3
	mov	z0.s, s0
.Ltmp29:
	mov	z1.s, s1
.Ltmp30:
	mov	z2.s, s2
.Ltmp31:
	mov	z3.s, s3
.Ltmp32:
	mov	z4.s, s4
.Ltmp33:
	.loc	1 0 3                   // GravityForceKernel.cpp:0:3
	mov	z6.s, s5
	mov	w9, w0
	mov	z5.s, #0                // =0x0
.Ltmp34:
	.loc	1 102 26                // GravityForceKernel.cpp:102:26
	mov	x8, xzr
	ptrue	p0.s
	fmov	z7.s, #1.00000000
	whilelo	p1.s, xzr, x9
	mov	z16.s, s16
	mov	z17.s, s17
	mov	z18.s, s18
	mov	z19.s, s19
	mov	z20.s, s20
	mov	z21.d, z5.d
	mov	z22.d, z5.d
.LBB1_2:                                // =>This Inner Loop Header: Depth=1
	//DEBUG_VALUE: GravityForceKernel<5, &PolyCoefficients5>:n <- %W0
	//DEBUG_VALUE: GravityForceKernel5:az <- %X7
	//DEBUG_VALUE: GravityForceKernel5:ay <- %X6
	//DEBUG_VALUE: GravityForceKernel5:ax <- %X5
	//DEBUG_VALUE: GravityForceKernel5:mass <- %X4
	//DEBUG_VALUE: GravityForceKernel5:z <- %X3
	//DEBUG_VALUE: GravityForceKernel5:y <- %X2
	//DEBUG_VALUE: GravityForceKernel5:x <- %X1
	//DEBUG_VALUE: GravityForceKernel5:n <- %W0
.Ltmp35:
	.loc	1 103 16 is_stmt 1      // GravityForceKernel.cpp:103:16
	ld1w	{z23.s}, p1/z, [x1, x8, lsl #2]
	.loc	1 103 32 is_stmt 0      // GravityForceKernel.cpp:103:32
	ld1w	{z24.s}, p1/z, [x2, x8, lsl #2]
	.loc	1 103 48                // GravityForceKernel.cpp:103:48
	ld1w	{z25.s}, p1/z, [x3, x8, lsl #2]
	.loc	1 103 21                // GravityForceKernel.cpp:103:21
	fsub	z23.s, z23.s, z0.s
	.loc	1 103 37                // GravityForceKernel.cpp:103:37
	fsub	z24.s, z24.s, z1.s
	.loc	1 104 19 is_stmt 1      // GravityForceKernel.cpp:104:19
	fmul	z26.s, z23.s, z23.s
	.loc	1 103 53                // GravityForceKernel.cpp:103:53
	fsub	z25.s, z25.s, z2.s
	.loc	1 104 24                // GravityForceKernel.cpp:104:24
	movprfx	z27, z26
	fmla	z27.s, p0/m, z24.s, z24.s
	.loc	1 104 34 is_stmt 0      // GravityForceKernel.cpp:104:34
	movprfx	z26, z27
	fmla	z26.s, p0/m, z25.s, z25.s
.Ltmp36:
	.loc	1 106 12 is_stmt 1      // GravityForceKernel.cpp:106:12
	fcmge	p2.s, p0/z, z26.s, z3.s
	.loc	1 106 32 is_stmt 0      // GravityForceKernel.cpp:106:32
	fcmeq	p3.s, p0/z, z26.s, #0.0
.Ltmp37:
	.loc	1 112 45 is_stmt 1      // GravityForceKernel.cpp:112:45
	movprfx	z27, z16
	fnmls	z27.s, p0/m, z26.s, z6.s
.Ltmp38:
	.loc	1 106 26                // GravityForceKernel.cpp:106:26
	orr	p2.b, p0/z, p2.b, p3.b
.Ltmp39:
	.loc	1 112 41                // GravityForceKernel.cpp:112:41
	fnmsb	z27.s, p0/m, z26.s, z17.s
	not	p3.b, p0/z, p2.b
	fnmsb	z27.s, p0/m, z26.s, z18.s
.Ltmp40:
	.loc	1 109 20                // GravityForceKernel.cpp:109:20
	fadd	z28.s, z26.s, z4.s
.Ltmp41:
	.loc	1 112 41                // GravityForceKernel.cpp:112:41
	fnmsb	z27.s, p0/m, z26.s, z19.s
.Ltmp42:
	.loc	1 114 47                // GravityForceKernel.cpp:114:47
	and	p3.b, p0/z, p1.b, p3.b
.Ltmp43:
	.loc	5 464 12                // /opt/arm/gcc-7.1.0_Generic-AArch64_RHEL-7_aarch64-linux/lib/gcc/aarch64-linux-gnu/7.1.0/../../../../include/c++/7.1.0/cmath:464:12
	fsqrt	z29.s, p0/m, z28.s
.Ltmp44:
	.loc	1 112 41                // GravityForceKernel.cpp:112:41
	fmad	z26.s, p0/m, z27.s, z20.s
.Ltmp45:
	.loc	1 114 47                // GravityForceKernel.cpp:114:47
	ld1w	{z27.s}, p3/z, [x4, x8, lsl #2]
	.loc	1 114 22 is_stmt 0      // GravityForceKernel.cpp:114:22
	fmul	z28.s, z29.s, z28.s
	.loc	1 114 15                // GravityForceKernel.cpp:114:15
	fdivr	z28.s, p0/m, z28.s, z7.s
	.loc	1 114 40                // GravityForceKernel.cpp:114:40
	fadd	z26.s, z26.s, z28.s
	.loc	1 114 45                // GravityForceKernel.cpp:114:45
	fmul	z26.s, z26.s, z27.s
	.loc	1 116 9 is_stmt 1       // GravityForceKernel.cpp:116:9
	fmad	z23.s, p0/m, z26.s, z5.s
	.loc	1 117 9                 // GravityForceKernel.cpp:117:9
	fmad	z24.s, p0/m, z26.s, z21.s
	.loc	1 118 9                 // GravityForceKernel.cpp:118:9
	fmad	z25.s, p0/m, z26.s, z22.s
.Ltmp46:
	.loc	1 102 21                // GravityForceKernel.cpp:102:21
	incw	x8
	mov	z25.s, p2/m, z22.s
	mov	z24.s, p2/m, z21.s
	mov	z23.s, p2/m, z5.s
	mov	z22.s, p1/m, z25.s
	mov	z21.s, p1/m, z24.s
	mov	z5.s, p1/m, z23.s
	whilelo	p1.s, x8, x9
.Ltmp47:
	.loc	1 102 3 is_stmt 0       // GravityForceKernel.cpp:102:3
	b.mi	.LBB1_2
.Ltmp48:
// BB#3:
	//DEBUG_VALUE: GravityForceKernel5:az <- %X7
	//DEBUG_VALUE: GravityForceKernel5:ay <- %X6
	//DEBUG_VALUE: GravityForceKernel5:ax <- %X5
	//DEBUG_VALUE: GravityForceKernel5:mass <- %X4
	//DEBUG_VALUE: GravityForceKernel5:z <- %X3
	//DEBUG_VALUE: GravityForceKernel5:y <- %X2
	//DEBUG_VALUE: GravityForceKernel5:x <- %X1
	//DEBUG_VALUE: GravityForceKernel5:n <- %W0
	.loc	1 0 3                   // GravityForceKernel.cpp:0:3
	faddv	s0, p0, z22.s
	faddv	s1, p0, z21.s
	faddv	s2, p0, z5.s
	b	.LBB1_5
.LBB1_4:
	//DEBUG_VALUE: GravityForceKernel5:az <- %X7
	//DEBUG_VALUE: GravityForceKernel5:ay <- %X6
	//DEBUG_VALUE: GravityForceKernel5:ax <- %X5
.Ltmp49:
	//DEBUG_VALUE: GravityForceKernel5:SofteningLenSqrd <- %S4
	//DEBUG_VALUE: GravityForceKernel5:MaxSepSqrd <- %S3
	//DEBUG_VALUE: GravityForceKernel5:z0 <- %S2
	//DEBUG_VALUE: GravityForceKernel5:y0 <- %S1
	//DEBUG_VALUE: GravityForceKernel5:x0 <- %S0
	//DEBUG_VALUE: GravityForceKernel5:mass <- %X4
	//DEBUG_VALUE: GravityForceKernel5:z <- %X3
	//DEBUG_VALUE: GravityForceKernel5:y <- %X2
	//DEBUG_VALUE: GravityForceKernel5:x <- %X1
	//DEBUG_VALUE: GravityForceKernel5:n <- %W0
	fmov	s0, wzr
.Ltmp50:
	fmov	s1, wzr
.Ltmp51:
	fmov	s2, wzr
.Ltmp52:
.LBB1_5:
	//DEBUG_VALUE: GravityForceKernel5:az <- %X7
	//DEBUG_VALUE: GravityForceKernel5:ay <- %X6
	//DEBUG_VALUE: GravityForceKernel5:ax <- %X5
	//DEBUG_VALUE: GravityForceKernel5:mass <- %X4
	//DEBUG_VALUE: GravityForceKernel5:z <- %X3
	//DEBUG_VALUE: GravityForceKernel5:y <- %X2
	//DEBUG_VALUE: GravityForceKernel5:x <- %X1
	//DEBUG_VALUE: GravityForceKernel5:n <- %W0
	.loc	1 121 6 is_stmt 1       // GravityForceKernel.cpp:121:6
	ldr	s3, [x5]
	.loc	1 122 6                 // GravityForceKernel.cpp:122:6
	ldr	s4, [x6]
	.loc	1 123 6                 // GravityForceKernel.cpp:123:6
	ldr	s5, [x7]
	.loc	1 121 6                 // GravityForceKernel.cpp:121:6
	fadd	s2, s3, s2
	.loc	1 122 6                 // GravityForceKernel.cpp:122:6
	fadd	s1, s4, s1
	.loc	1 123 6                 // GravityForceKernel.cpp:123:6
	fadd	s0, s5, s0
	.loc	1 121 6                 // GravityForceKernel.cpp:121:6
	str	s2, [x5]
	.loc	1 122 6                 // GravityForceKernel.cpp:122:6
	str	s1, [x6]
	.loc	1 123 6                 // GravityForceKernel.cpp:123:6
	str	s0, [x7]
.Ltmp53:
	.loc	1 146 1                 // GravityForceKernel.cpp:146:1
	ret
.Ltmp54:
.Lfunc_end1:
	.size	_Z19GravityForceKernel5iPfS_S_S_fffffRfS0_S0_, .Lfunc_end1-_Z19GravityForceKernel5iPfS_S_S_fffffRfS0_S0_
	.cfi_endproc
                                        // -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               // -- Begin function _Z19GravityForceKernel6iPfS_S_S_fffffRfS0_S0_
.LCPI2_0:
	.word	874392292               // float 1.47305002E-7
.LCPI2_1:
	.word	3068041500              // float -6.63393985E-6
.LCPI2_2:
	.word	957006765               // float 1.32336005E-4
.LCPI2_3:
	.word	3134261833              // float -0.00159484998
.LCPI2_4:
	.word	1012538218              // float 0.0133122001
.LCPI2_5:
	.word	3181408360              // float -0.0783393979
.LCPI2_6:
	.word	3196778753              // float -0.271430999
	.text
	.globl	_Z19GravityForceKernel6iPfS_S_S_fffffRfS0_S0_
	.p2align	2
	.type	_Z19GravityForceKernel6iPfS_S_S_fffffRfS0_S0_,@function
_Z19GravityForceKernel6iPfS_S_S_fffffRfS0_S0_: // @_Z19GravityForceKernel6iPfS_S_S_fffffRfS0_S0_
.Lfunc_begin2:
	.loc	1 153 0                 // GravityForceKernel.cpp:153:0
	.cfi_startproc
// BB#0:
.Lcfi2:
	.cfi_def_cfa_offset 0
	//DEBUG_VALUE: GravityForceKernel6:n <- %W0
	//DEBUG_VALUE: GravityForceKernel6:n <- %W0
	//DEBUG_VALUE: GravityForceKernel6:x <- %X1
	//DEBUG_VALUE: GravityForceKernel6:y <- %X2
	//DEBUG_VALUE: GravityForceKernel6:y <- %X2
	//DEBUG_VALUE: GravityForceKernel6:z <- %X3
	//DEBUG_VALUE: GravityForceKernel6:z <- %X3
	//DEBUG_VALUE: GravityForceKernel6:mass <- %X4
	//DEBUG_VALUE: GravityForceKernel6:mass <- %X4
	//DEBUG_VALUE: GravityForceKernel6:x0 <- %S0
	//DEBUG_VALUE: GravityForceKernel6:x0 <- %S0
	//DEBUG_VALUE: GravityForceKernel6:y0 <- %S1
	//DEBUG_VALUE: GravityForceKernel6:y0 <- %S1
	//DEBUG_VALUE: GravityForceKernel6:z0 <- %S2
	//DEBUG_VALUE: GravityForceKernel6:z0 <- %S2
	//DEBUG_VALUE: GravityForceKernel6:MaxSepSqrd <- %S3
	//DEBUG_VALUE: GravityForceKernel6:MaxSepSqrd <- %S3
	//DEBUG_VALUE: GravityForceKernel6:SofteningLenSqrd <- %S4
	//DEBUG_VALUE: GravityForceKernel6:SofteningLenSqrd <- %S4
	//DEBUG_VALUE: GravityForceKernel6:ax <- %X5
	//DEBUG_VALUE: GravityForceKernel6:ax <- %X5
	//DEBUG_VALUE: GravityForceKernel6:ay <- %X6
	//DEBUG_VALUE: GravityForceKernel6:ay <- %X6
	//DEBUG_VALUE: GravityForceKernel6:az <- %X7
	//DEBUG_VALUE: GravityForceKernel6:az <- %X7
	//DEBUG_VALUE: GravityForceKernel<6, &PolyCoefficients6>:n <- %W0
	//DEBUG_VALUE: GravityForceKernel<6, &PolyCoefficients6>:lax <- 0.000000e+00
	//DEBUG_VALUE: GravityForceKernel<6, &PolyCoefficients6>:lay <- 0.000000e+00
	//DEBUG_VALUE: GravityForceKernel<6, &PolyCoefficients6>:laz <- 0.000000e+00
	//DEBUG_VALUE: i <- 0
	.loc	1 102 3 prologue_end    // GravityForceKernel.cpp:102:3
	cmp	w0, #1                  // =1
	//DEBUG_VALUE: GravityForceKernel6:x <- %X1
	b.lt	.LBB2_4
.Ltmp55:
// BB#1:
	//DEBUG_VALUE: GravityForceKernel<6, &PolyCoefficients6>:n <- %W0
	//DEBUG_VALUE: GravityForceKernel6:az <- %X7
	//DEBUG_VALUE: GravityForceKernel6:ay <- %X6
	//DEBUG_VALUE: GravityForceKernel6:ax <- %X5
	//DEBUG_VALUE: GravityForceKernel6:SofteningLenSqrd <- %S4
	//DEBUG_VALUE: GravityForceKernel6:MaxSepSqrd <- %S3
	//DEBUG_VALUE: GravityForceKernel6:z0 <- %S2
	//DEBUG_VALUE: GravityForceKernel6:y0 <- %S1
	//DEBUG_VALUE: GravityForceKernel6:x0 <- %S0
	//DEBUG_VALUE: GravityForceKernel6:mass <- %X4
	//DEBUG_VALUE: GravityForceKernel6:z <- %X3
	//DEBUG_VALUE: GravityForceKernel6:y <- %X2
	//DEBUG_VALUE: GravityForceKernel6:x <- %X1
	//DEBUG_VALUE: GravityForceKernel6:n <- %W0
	.loc	1 0 3 is_stmt 0         // GravityForceKernel.cpp:0:3
	adrp	x9, .LCPI2_0
	ldr	s5, [x9, :lo12:.LCPI2_0]
	adrp	x9, .LCPI2_1
	ldr	s6, [x9, :lo12:.LCPI2_1]
	adrp	x9, .LCPI2_2
	ldr	s17, [x9, :lo12:.LCPI2_2]
	adrp	x9, .LCPI2_3
	ldr	s18, [x9, :lo12:.LCPI2_3]
	adrp	x9, .LCPI2_4
	ldr	s19, [x9, :lo12:.LCPI2_4]
	adrp	x9, .LCPI2_5
	ldr	s20, [x9, :lo12:.LCPI2_5]
	adrp	x9, .LCPI2_6
	ldr	s21, [x9, :lo12:.LCPI2_6]
	.loc	1 102 3                 // GravityForceKernel.cpp:102:3
	mov	z0.s, s0
.Ltmp56:
	mov	z1.s, s1
.Ltmp57:
	mov	z2.s, s2
.Ltmp58:
	mov	z3.s, s3
.Ltmp59:
	mov	z4.s, s4
.Ltmp60:
	.loc	1 0 3                   // GravityForceKernel.cpp:0:3
	mov	z5.s, s5
	mov	z7.s, s6
	mov	w9, w0
	mov	z6.s, #0                // =0x0
.Ltmp61:
	.loc	1 102 26                // GravityForceKernel.cpp:102:26
	mov	x8, xzr
	ptrue	p0.s
	fmov	z16.s, #1.00000000
	whilelo	p1.s, xzr, x9
	mov	z17.s, s17
	mov	z18.s, s18
	mov	z19.s, s19
	mov	z20.s, s20
	mov	z21.s, s21
	mov	z22.d, z6.d
	mov	z23.d, z6.d
.LBB2_2:                                // =>This Inner Loop Header: Depth=1
	//DEBUG_VALUE: GravityForceKernel<6, &PolyCoefficients6>:n <- %W0
	//DEBUG_VALUE: GravityForceKernel6:az <- %X7
	//DEBUG_VALUE: GravityForceKernel6:ay <- %X6
	//DEBUG_VALUE: GravityForceKernel6:ax <- %X5
	//DEBUG_VALUE: GravityForceKernel6:mass <- %X4
	//DEBUG_VALUE: GravityForceKernel6:z <- %X3
	//DEBUG_VALUE: GravityForceKernel6:y <- %X2
	//DEBUG_VALUE: GravityForceKernel6:x <- %X1
	//DEBUG_VALUE: GravityForceKernel6:n <- %W0
.Ltmp62:
	.loc	1 103 16 is_stmt 1      // GravityForceKernel.cpp:103:16
	ld1w	{z24.s}, p1/z, [x1, x8, lsl #2]
	.loc	1 103 32 is_stmt 0      // GravityForceKernel.cpp:103:32
	ld1w	{z25.s}, p1/z, [x2, x8, lsl #2]
	.loc	1 103 48                // GravityForceKernel.cpp:103:48
	ld1w	{z26.s}, p1/z, [x3, x8, lsl #2]
	.loc	1 103 21                // GravityForceKernel.cpp:103:21
	fsub	z24.s, z24.s, z0.s
	.loc	1 103 37                // GravityForceKernel.cpp:103:37
	fsub	z25.s, z25.s, z1.s
	.loc	1 104 19 is_stmt 1      // GravityForceKernel.cpp:104:19
	fmul	z27.s, z24.s, z24.s
	.loc	1 103 53                // GravityForceKernel.cpp:103:53
	fsub	z26.s, z26.s, z2.s
	.loc	1 104 24                // GravityForceKernel.cpp:104:24
	movprfx	z28, z27
	fmla	z28.s, p0/m, z25.s, z25.s
	.loc	1 104 34 is_stmt 0      // GravityForceKernel.cpp:104:34
	movprfx	z27, z28
	fmla	z27.s, p0/m, z26.s, z26.s
.Ltmp63:
	.loc	1 112 41 is_stmt 1      // GravityForceKernel.cpp:112:41
	movprfx	z28, z7
	fmla	z28.s, p0/m, z27.s, z5.s
.Ltmp64:
	.loc	1 106 12                // GravityForceKernel.cpp:106:12
	fcmge	p2.s, p0/z, z27.s, z3.s
	.loc	1 106 32 is_stmt 0      // GravityForceKernel.cpp:106:32
	fcmeq	p3.s, p0/z, z27.s, #0.0
.Ltmp65:
	.loc	1 112 41 is_stmt 1      // GravityForceKernel.cpp:112:41
	fmad	z28.s, p0/m, z27.s, z17.s
.Ltmp66:
	.loc	1 106 26                // GravityForceKernel.cpp:106:26
	orr	p2.b, p0/z, p2.b, p3.b
.Ltmp67:
	.loc	1 112 41                // GravityForceKernel.cpp:112:41
	fmad	z28.s, p0/m, z27.s, z18.s
	not	p3.b, p0/z, p2.b
	fmad	z28.s, p0/m, z27.s, z19.s
.Ltmp68:
	.loc	1 109 20                // GravityForceKernel.cpp:109:20
	fadd	z29.s, z27.s, z4.s
	.loc	1 114 47                // GravityForceKernel.cpp:114:47
	and	p3.b, p0/z, p1.b, p3.b
.Ltmp69:
	.loc	1 112 41                // GravityForceKernel.cpp:112:41
	fmad	z28.s, p0/m, z27.s, z20.s
.Ltmp70:
	.loc	5 464 12                // /opt/arm/gcc-7.1.0_Generic-AArch64_RHEL-7_aarch64-linux/lib/gcc/aarch64-linux-gnu/7.1.0/../../../../include/c++/7.1.0/cmath:464:12
	fsqrt	z30.s, p0/m, z29.s
.Ltmp71:
	.loc	1 112 41                // GravityForceKernel.cpp:112:41
	fmsb	z27.s, p0/m, z28.s, z21.s
.Ltmp72:
	.loc	1 114 47                // GravityForceKernel.cpp:114:47
	ld1w	{z28.s}, p3/z, [x4, x8, lsl #2]
	.loc	1 114 22 is_stmt 0      // GravityForceKernel.cpp:114:22
	fmul	z29.s, z30.s, z29.s
	.loc	1 114 15                // GravityForceKernel.cpp:114:15
	fdivr	z29.s, p0/m, z29.s, z16.s
	.loc	1 114 40                // GravityForceKernel.cpp:114:40
	fadd	z27.s, z27.s, z29.s
	.loc	1 114 45                // GravityForceKernel.cpp:114:45
	fmul	z27.s, z27.s, z28.s
	.loc	1 116 9 is_stmt 1       // GravityForceKernel.cpp:116:9
	fmad	z24.s, p0/m, z27.s, z6.s
	.loc	1 117 9                 // GravityForceKernel.cpp:117:9
	fmad	z25.s, p0/m, z27.s, z22.s
	.loc	1 118 9                 // GravityForceKernel.cpp:118:9
	fmad	z26.s, p0/m, z27.s, z23.s
.Ltmp73:
	.loc	1 102 21                // GravityForceKernel.cpp:102:21
	incw	x8
	mov	z26.s, p2/m, z23.s
	mov	z25.s, p2/m, z22.s
	mov	z24.s, p2/m, z6.s
	mov	z23.s, p1/m, z26.s
	mov	z22.s, p1/m, z25.s
	mov	z6.s, p1/m, z24.s
	whilelo	p1.s, x8, x9
.Ltmp74:
	.loc	1 102 3 is_stmt 0       // GravityForceKernel.cpp:102:3
	b.mi	.LBB2_2
.Ltmp75:
// BB#3:
	//DEBUG_VALUE: GravityForceKernel6:az <- %X7
	//DEBUG_VALUE: GravityForceKernel6:ay <- %X6
	//DEBUG_VALUE: GravityForceKernel6:ax <- %X5
	//DEBUG_VALUE: GravityForceKernel6:mass <- %X4
	//DEBUG_VALUE: GravityForceKernel6:z <- %X3
	//DEBUG_VALUE: GravityForceKernel6:y <- %X2
	//DEBUG_VALUE: GravityForceKernel6:x <- %X1
	//DEBUG_VALUE: GravityForceKernel6:n <- %W0
	.loc	1 0 3                   // GravityForceKernel.cpp:0:3
	faddv	s0, p0, z23.s
	faddv	s1, p0, z22.s
	faddv	s2, p0, z6.s
	b	.LBB2_5
.LBB2_4:
	//DEBUG_VALUE: GravityForceKernel6:az <- %X7
	//DEBUG_VALUE: GravityForceKernel6:ay <- %X6
	//DEBUG_VALUE: GravityForceKernel6:ax <- %X5
.Ltmp76:
	//DEBUG_VALUE: GravityForceKernel6:SofteningLenSqrd <- %S4
	//DEBUG_VALUE: GravityForceKernel6:MaxSepSqrd <- %S3
	//DEBUG_VALUE: GravityForceKernel6:z0 <- %S2
	//DEBUG_VALUE: GravityForceKernel6:y0 <- %S1
	//DEBUG_VALUE: GravityForceKernel6:x0 <- %S0
	//DEBUG_VALUE: GravityForceKernel6:mass <- %X4
	//DEBUG_VALUE: GravityForceKernel6:z <- %X3
	//DEBUG_VALUE: GravityForceKernel6:y <- %X2
	//DEBUG_VALUE: GravityForceKernel6:x <- %X1
	//DEBUG_VALUE: GravityForceKernel6:n <- %W0
	fmov	s0, wzr
.Ltmp77:
	fmov	s1, wzr
.Ltmp78:
	fmov	s2, wzr
.Ltmp79:
.LBB2_5:
	//DEBUG_VALUE: GravityForceKernel6:az <- %X7
	//DEBUG_VALUE: GravityForceKernel6:ay <- %X6
	//DEBUG_VALUE: GravityForceKernel6:ax <- %X5
	//DEBUG_VALUE: GravityForceKernel6:mass <- %X4
	//DEBUG_VALUE: GravityForceKernel6:z <- %X3
	//DEBUG_VALUE: GravityForceKernel6:y <- %X2
	//DEBUG_VALUE: GravityForceKernel6:x <- %X1
	//DEBUG_VALUE: GravityForceKernel6:n <- %W0
	.loc	1 121 6 is_stmt 1       // GravityForceKernel.cpp:121:6
	ldr	s3, [x5]
	.loc	1 122 6                 // GravityForceKernel.cpp:122:6
	ldr	s4, [x6]
	.loc	1 123 6                 // GravityForceKernel.cpp:123:6
	ldr	s5, [x7]
	.loc	1 121 6                 // GravityForceKernel.cpp:121:6
	fadd	s2, s3, s2
	.loc	1 122 6                 // GravityForceKernel.cpp:122:6
	fadd	s1, s4, s1
	.loc	1 123 6                 // GravityForceKernel.cpp:123:6
	fadd	s0, s5, s0
	.loc	1 121 6                 // GravityForceKernel.cpp:121:6
	str	s2, [x5]
	.loc	1 122 6                 // GravityForceKernel.cpp:122:6
	str	s1, [x6]
	.loc	1 123 6                 // GravityForceKernel.cpp:123:6
	str	s0, [x7]
.Ltmp80:
	.loc	1 157 1                 // GravityForceKernel.cpp:157:1
	ret
.Ltmp81:
.Lfunc_end2:
	.size	_Z19GravityForceKernel6iPfS_S_S_fffffRfS0_S0_, .Lfunc_end2-_Z19GravityForceKernel6iPfS_S_S_fffffRfS0_S0_
	.cfi_endproc
                                        // -- End function
	.type	PolyCoefficients4,@object // @PolyCoefficients4
	.section	.rodata,"a",@progbits
	.globl	PolyCoefficients4
	.p2align	2
PolyCoefficients4:
	.word	1049036669              // float 0.263729006
	.word	3180104985              // float -0.0686284974
	.word	1007717418              // float 0.00882248021
	.word	3122352417              // float -5.92486991E-4
	.word	931797070               // float 1.64621997E-5
	.size	PolyCoefficients4, 20

	.type	PolyCoefficients5,@object // @PolyCoefficients5
	.globl	PolyCoefficients5
	.p2align	2
PolyCoefficients5:
	.word	1049224507              // float 0.269327015
	.word	3180973280              // float -0.0750977993
	.word	1010571767              // float 0.0114807999
	.word	3129952091              // float -0.00109312998
	.word	947779098               // float 6.05491005E-5
	.word	3049621922              // float -1.47177002E-6
	.size	PolyCoefficients5, 24

	.type	PolyCoefficients6,@object // @PolyCoefficients6
	.globl	PolyCoefficients6
	.p2align	2
PolyCoefficients6:
	.word	1049295105              // float 0.271430999
	.word	3181408360              // float -0.0783393979
	.word	1012538218              // float 0.0133122001
	.word	3134261833              // float -0.00159484998
	.word	957006765               // float 1.32336005E-4
	.word	3068041500              // float -6.63393985E-6
	.word	874392292               // float 1.47305002E-7
	.size	PolyCoefficients6, 28

	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Arm C/C++/Fortran Compiler version 18.4 (build number 40) (based on LLVM 5.0.2)" // string offset=0
.Linfo_string1:
	.asciz	"GravityForceKernel.cpp" // string offset=80
.Linfo_string2:
	.asciz	"/home/ollper01/Examples/ARMIE_Demos/03_HACC_Inscount" // string offset=103
.Linfo_string3:
	.asciz	"PolyCoefficients4"     // string offset=156
.Linfo_string4:
	.asciz	"float"                 // string offset=174
.Linfo_string5:
	.asciz	"sizetype"              // string offset=180
.Linfo_string6:
	.asciz	"PolyCoefficients5"     // string offset=189
.Linfo_string7:
	.asciz	"PolyCoefficients6"     // string offset=207
.Linfo_string8:
	.asciz	"std"                   // string offset=225
.Linfo_string9:
	.asciz	"abs"                   // string offset=229
.Linfo_string10:
	.asciz	"int"                   // string offset=233
.Linfo_string11:
	.asciz	"__acos_finite"         // string offset=237
.Linfo_string12:
	.asciz	"acos"                  // string offset=251
.Linfo_string13:
	.asciz	"double"                // string offset=256
.Linfo_string14:
	.asciz	"__asin_finite"         // string offset=263
.Linfo_string15:
	.asciz	"asin"                  // string offset=277
.Linfo_string16:
	.asciz	"atan"                  // string offset=282
.Linfo_string17:
	.asciz	"__atan2_finite"        // string offset=287
.Linfo_string18:
	.asciz	"atan2"                 // string offset=302
.Linfo_string19:
	.asciz	"ceil"                  // string offset=308
.Linfo_string20:
	.asciz	"cos"                   // string offset=313
.Linfo_string21:
	.asciz	"__cosh_finite"         // string offset=317
.Linfo_string22:
	.asciz	"cosh"                  // string offset=331
.Linfo_string23:
	.asciz	"__exp_finite"          // string offset=336
.Linfo_string24:
	.asciz	"exp"                   // string offset=349
.Linfo_string25:
	.asciz	"fabs"                  // string offset=353
.Linfo_string26:
	.asciz	"floor"                 // string offset=358
.Linfo_string27:
	.asciz	"__fmod_finite"         // string offset=364
.Linfo_string28:
	.asciz	"fmod"                  // string offset=378
.Linfo_string29:
	.asciz	"frexp"                 // string offset=383
.Linfo_string30:
	.asciz	"scalbn"                // string offset=389
.Linfo_string31:
	.asciz	"ldexp"                 // string offset=396
.Linfo_string32:
	.asciz	"__log_finite"          // string offset=402
.Linfo_string33:
	.asciz	"log"                   // string offset=415
.Linfo_string34:
	.asciz	"__log10_finite"        // string offset=419
.Linfo_string35:
	.asciz	"log10"                 // string offset=434
.Linfo_string36:
	.asciz	"modf"                  // string offset=440
.Linfo_string37:
	.asciz	"__pow_finite"          // string offset=445
.Linfo_string38:
	.asciz	"pow"                   // string offset=458
.Linfo_string39:
	.asciz	"sin"                   // string offset=462
.Linfo_string40:
	.asciz	"__sinh_finite"         // string offset=466
.Linfo_string41:
	.asciz	"sinh"                  // string offset=480
.Linfo_string42:
	.asciz	"__sqrt_finite"         // string offset=485
.Linfo_string43:
	.asciz	"sqrt"                  // string offset=499
.Linfo_string44:
	.asciz	"tan"                   // string offset=504
.Linfo_string45:
	.asciz	"tanh"                  // string offset=508
.Linfo_string46:
	.asciz	"PolyOrder"             // string offset=513
.Linfo_string47:
	.asciz	"PolyCoefficients"      // string offset=523
.Linfo_string48:
	.asciz	"_ZL18GravityForceKernelILi4EL_Z17PolyCoefficients4EEviPfS0_S0_S0_fffffRfS1_S1_" // string offset=540
.Linfo_string49:
	.asciz	"GravityForceKernel<4, &PolyCoefficients4>" // string offset=619
.Linfo_string50:
	.asciz	"n"                     // string offset=661
.Linfo_string51:
	.asciz	"x"                     // string offset=663
.Linfo_string52:
	.asciz	"y"                     // string offset=665
.Linfo_string53:
	.asciz	"z"                     // string offset=667
.Linfo_string54:
	.asciz	"mass"                  // string offset=669
.Linfo_string55:
	.asciz	"x0"                    // string offset=674
.Linfo_string56:
	.asciz	"y0"                    // string offset=677
.Linfo_string57:
	.asciz	"z0"                    // string offset=680
.Linfo_string58:
	.asciz	"MaxSepSqrd"            // string offset=683
.Linfo_string59:
	.asciz	"SofteningLenSqrd"      // string offset=694
.Linfo_string60:
	.asciz	"ax"                    // string offset=711
.Linfo_string61:
	.asciz	"ay"                    // string offset=714
.Linfo_string62:
	.asciz	"az"                    // string offset=717
.Linfo_string63:
	.asciz	"lax"                   // string offset=720
.Linfo_string64:
	.asciz	"lay"                   // string offset=724
.Linfo_string65:
	.asciz	"laz"                   // string offset=728
.Linfo_string66:
	.asciz	"i"                     // string offset=732
.Linfo_string67:
	.asciz	"dx"                    // string offset=734
.Linfo_string68:
	.asciz	"dy"                    // string offset=737
.Linfo_string69:
	.asciz	"dz"                    // string offset=740
.Linfo_string70:
	.asciz	"r2"                    // string offset=743
.Linfo_string71:
	.asciz	"r2s"                   // string offset=746
.Linfo_string72:
	.asciz	"f"                     // string offset=750
.Linfo_string73:
	.asciz	"p"                     // string offset=752
.Linfo_string74:
	.asciz	"_ZSt4sqrtf"            // string offset=754
.Linfo_string75:
	.asciz	"__x"                   // string offset=765
.Linfo_string76:
	.asciz	"_ZL18GravityForceKernelILi5EL_Z17PolyCoefficients5EEviPfS0_S0_S0_fffffRfS1_S1_" // string offset=769
.Linfo_string77:
	.asciz	"GravityForceKernel<5, &PolyCoefficients5>" // string offset=848
.Linfo_string78:
	.asciz	"_ZL18GravityForceKernelILi6EL_Z17PolyCoefficients6EEviPfS0_S0_S0_fffffRfS1_S1_" // string offset=890
.Linfo_string79:
	.asciz	"GravityForceKernel<6, &PolyCoefficients6>" // string offset=969
.Linfo_string80:
	.asciz	"_Z19GravityForceKernel4iPfS_S_S_fffffRfS0_S0_" // string offset=1011
.Linfo_string81:
	.asciz	"GravityForceKernel4"   // string offset=1057
.Linfo_string82:
	.asciz	"_Z19GravityForceKernel5iPfS_S_S_fffffRfS0_S0_" // string offset=1077
.Linfo_string83:
	.asciz	"GravityForceKernel5"   // string offset=1123
.Linfo_string84:
	.asciz	"_Z19GravityForceKernel6iPfS_S_S_fffffRfS0_S0_" // string offset=1143
.Linfo_string85:
	.asciz	"GravityForceKernel6"   // string offset=1189
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
	.xword	.Lfunc_begin0-.Lfunc_begin0
	.xword	.Ltmp3-.Lfunc_begin0
	.hword	2                       // Loc expr size
	.byte	144                     // DW_OP_regx
	.byte	64                      // 64
	.xword	.Ltmp22-.Lfunc_begin0
	.xword	.Ltmp23-.Lfunc_begin0
	.hword	2                       // Loc expr size
	.byte	144                     // DW_OP_regx
	.byte	64                      // 64
	.xword	0
	.xword	0
.Ldebug_loc1:
	.xword	.Lfunc_begin0-.Lfunc_begin0
	.xword	.Ltmp4-.Lfunc_begin0
	.hword	2                       // Loc expr size
	.byte	144                     // DW_OP_regx
	.byte	65                      // 65
	.xword	.Ltmp22-.Lfunc_begin0
	.xword	.Ltmp24-.Lfunc_begin0
	.hword	2                       // Loc expr size
	.byte	144                     // DW_OP_regx
	.byte	65                      // 65
	.xword	0
	.xword	0
.Ldebug_loc2:
	.xword	.Lfunc_begin0-.Lfunc_begin0
	.xword	.Ltmp5-.Lfunc_begin0
	.hword	2                       // Loc expr size
	.byte	144                     // DW_OP_regx
	.byte	66                      // 66
	.xword	.Ltmp22-.Lfunc_begin0
	.xword	.Ltmp25-.Lfunc_begin0
	.hword	2                       // Loc expr size
	.byte	144                     // DW_OP_regx
	.byte	66                      // 66
	.xword	0
	.xword	0
.Ldebug_loc3:
	.xword	.Lfunc_begin0-.Lfunc_begin0
	.xword	.Ltmp6-.Lfunc_begin0
	.hword	2                       // Loc expr size
	.byte	144                     // DW_OP_regx
	.byte	67                      // 67
	.xword	.Ltmp22-.Lfunc_begin0
	.xword	.Ltmp25-.Lfunc_begin0
	.hword	2                       // Loc expr size
	.byte	144                     // DW_OP_regx
	.byte	67                      // 67
	.xword	0
	.xword	0
.Ldebug_loc4:
	.xword	.Lfunc_begin0-.Lfunc_begin0
	.xword	.Ltmp7-.Lfunc_begin0
	.hword	2                       // Loc expr size
	.byte	144                     // DW_OP_regx
	.byte	68                      // 68
	.xword	.Ltmp22-.Lfunc_begin0
	.xword	.Ltmp25-.Lfunc_begin0
	.hword	2                       // Loc expr size
	.byte	144                     // DW_OP_regx
	.byte	68                      // 68
	.xword	0
	.xword	0
.Ldebug_loc5:
	.xword	.Lfunc_begin1-.Lfunc_begin0
	.xword	.Ltmp29-.Lfunc_begin0
	.hword	2                       // Loc expr size
	.byte	144                     // DW_OP_regx
	.byte	64                      // 64
	.xword	.Ltmp49-.Lfunc_begin0
	.xword	.Ltmp50-.Lfunc_begin0
	.hword	2                       // Loc expr size
	.byte	144                     // DW_OP_regx
	.byte	64                      // 64
	.xword	0
	.xword	0
.Ldebug_loc6:
	.xword	.Lfunc_begin1-.Lfunc_begin0
	.xword	.Ltmp30-.Lfunc_begin0
	.hword	2                       // Loc expr size
	.byte	144                     // DW_OP_regx
	.byte	65                      // 65
	.xword	.Ltmp49-.Lfunc_begin0
	.xword	.Ltmp51-.Lfunc_begin0
	.hword	2                       // Loc expr size
	.byte	144                     // DW_OP_regx
	.byte	65                      // 65
	.xword	0
	.xword	0
.Ldebug_loc7:
	.xword	.Lfunc_begin1-.Lfunc_begin0
	.xword	.Ltmp31-.Lfunc_begin0
	.hword	2                       // Loc expr size
	.byte	144                     // DW_OP_regx
	.byte	66                      // 66
	.xword	.Ltmp49-.Lfunc_begin0
	.xword	.Ltmp52-.Lfunc_begin0
	.hword	2                       // Loc expr size
	.byte	144                     // DW_OP_regx
	.byte	66                      // 66
	.xword	0
	.xword	0
.Ldebug_loc8:
	.xword	.Lfunc_begin1-.Lfunc_begin0
	.xword	.Ltmp32-.Lfunc_begin0
	.hword	2                       // Loc expr size
	.byte	144                     // DW_OP_regx
	.byte	67                      // 67
	.xword	.Ltmp49-.Lfunc_begin0
	.xword	.Ltmp52-.Lfunc_begin0
	.hword	2                       // Loc expr size
	.byte	144                     // DW_OP_regx
	.byte	67                      // 67
	.xword	0
	.xword	0
.Ldebug_loc9:
	.xword	.Lfunc_begin1-.Lfunc_begin0
	.xword	.Ltmp33-.Lfunc_begin0
	.hword	2                       // Loc expr size
	.byte	144                     // DW_OP_regx
	.byte	68                      // 68
	.xword	.Ltmp49-.Lfunc_begin0
	.xword	.Ltmp52-.Lfunc_begin0
	.hword	2                       // Loc expr size
	.byte	144                     // DW_OP_regx
	.byte	68                      // 68
	.xword	0
	.xword	0
.Ldebug_loc10:
	.xword	.Lfunc_begin2-.Lfunc_begin0
	.xword	.Ltmp56-.Lfunc_begin0
	.hword	2                       // Loc expr size
	.byte	144                     // DW_OP_regx
	.byte	64                      // 64
	.xword	.Ltmp76-.Lfunc_begin0
	.xword	.Ltmp77-.Lfunc_begin0
	.hword	2                       // Loc expr size
	.byte	144                     // DW_OP_regx
	.byte	64                      // 64
	.xword	0
	.xword	0
.Ldebug_loc11:
	.xword	.Lfunc_begin2-.Lfunc_begin0
	.xword	.Ltmp57-.Lfunc_begin0
	.hword	2                       // Loc expr size
	.byte	144                     // DW_OP_regx
	.byte	65                      // 65
	.xword	.Ltmp76-.Lfunc_begin0
	.xword	.Ltmp78-.Lfunc_begin0
	.hword	2                       // Loc expr size
	.byte	144                     // DW_OP_regx
	.byte	65                      // 65
	.xword	0
	.xword	0
.Ldebug_loc12:
	.xword	.Lfunc_begin2-.Lfunc_begin0
	.xword	.Ltmp58-.Lfunc_begin0
	.hword	2                       // Loc expr size
	.byte	144                     // DW_OP_regx
	.byte	66                      // 66
	.xword	.Ltmp76-.Lfunc_begin0
	.xword	.Ltmp79-.Lfunc_begin0
	.hword	2                       // Loc expr size
	.byte	144                     // DW_OP_regx
	.byte	66                      // 66
	.xword	0
	.xword	0
.Ldebug_loc13:
	.xword	.Lfunc_begin2-.Lfunc_begin0
	.xword	.Ltmp59-.Lfunc_begin0
	.hword	2                       // Loc expr size
	.byte	144                     // DW_OP_regx
	.byte	67                      // 67
	.xword	.Ltmp76-.Lfunc_begin0
	.xword	.Ltmp79-.Lfunc_begin0
	.hword	2                       // Loc expr size
	.byte	144                     // DW_OP_regx
	.byte	67                      // 67
	.xword	0
	.xword	0
.Ldebug_loc14:
	.xword	.Lfunc_begin2-.Lfunc_begin0
	.xword	.Ltmp60-.Lfunc_begin0
	.hword	2                       // Loc expr size
	.byte	144                     // DW_OP_regx
	.byte	68                      // 68
	.xword	.Ltmp76-.Lfunc_begin0
	.xword	.Ltmp79-.Lfunc_begin0
	.hword	2                       // Loc expr size
	.byte	144                     // DW_OP_regx
	.byte	68                      // 68
	.xword	0
	.xword	0
	.section	.debug_abbrev,"",@progbits
	.byte	1                       // Abbreviation Code
	.byte	17                      // DW_TAG_compile_unit
	.byte	1                       // DW_CHILDREN_yes
	.byte	37                      // DW_AT_producer
	.byte	14                      // DW_FORM_strp
	.byte	19                      // DW_AT_language
	.byte	5                       // DW_FORM_data2
	.byte	3                       // DW_AT_name
	.byte	14                      // DW_FORM_strp
	.byte	16                      // DW_AT_stmt_list
	.byte	23                      // DW_FORM_sec_offset
	.byte	27                      // DW_AT_comp_dir
	.byte	14                      // DW_FORM_strp
	.ascii	"\264B"                 // DW_AT_GNU_pubnames
	.byte	25                      // DW_FORM_flag_present
	.byte	17                      // DW_AT_low_pc
	.byte	1                       // DW_FORM_addr
	.byte	18                      // DW_AT_high_pc
	.byte	6                       // DW_FORM_data4
	.byte	0                       // EOM(1)
	.byte	0                       // EOM(2)
	.byte	2                       // Abbreviation Code
	.byte	52                      // DW_TAG_variable
	.byte	0                       // DW_CHILDREN_no
	.byte	3                       // DW_AT_name
	.byte	14                      // DW_FORM_strp
	.byte	73                      // DW_AT_type
	.byte	19                      // DW_FORM_ref4
	.byte	63                      // DW_AT_external
	.byte	25                      // DW_FORM_flag_present
	.byte	58                      // DW_AT_decl_file
	.byte	11                      // DW_FORM_data1
	.byte	59                      // DW_AT_decl_line
	.byte	11                      // DW_FORM_data1
	.byte	2                       // DW_AT_location
	.byte	24                      // DW_FORM_exprloc
	.byte	0                       // EOM(1)
	.byte	0                       // EOM(2)
	.byte	3                       // Abbreviation Code
	.byte	1                       // DW_TAG_array_type
	.byte	1                       // DW_CHILDREN_yes
	.byte	73                      // DW_AT_type
	.byte	19                      // DW_FORM_ref4
	.byte	0                       // EOM(1)
	.byte	0                       // EOM(2)
	.byte	4                       // Abbreviation Code
	.byte	33                      // DW_TAG_subrange_type
	.byte	0                       // DW_CHILDREN_no
	.byte	73                      // DW_AT_type
	.byte	19                      // DW_FORM_ref4
	.byte	55                      // DW_AT_count
	.byte	11                      // DW_FORM_data1
	.byte	0                       // EOM(1)
	.byte	0                       // EOM(2)
	.byte	5                       // Abbreviation Code
	.byte	38                      // DW_TAG_const_type
	.byte	0                       // DW_CHILDREN_no
	.byte	73                      // DW_AT_type
	.byte	19                      // DW_FORM_ref4
	.byte	0                       // EOM(1)
	.byte	0                       // EOM(2)
	.byte	6                       // Abbreviation Code
	.byte	36                      // DW_TAG_base_type
	.byte	0                       // DW_CHILDREN_no
	.byte	3                       // DW_AT_name
	.byte	14                      // DW_FORM_strp
	.byte	62                      // DW_AT_encoding
	.byte	11                      // DW_FORM_data1
	.byte	11                      // DW_AT_byte_size
	.byte	11                      // DW_FORM_data1
	.byte	0                       // EOM(1)
	.byte	0                       // EOM(2)
	.byte	7                       // Abbreviation Code
	.byte	36                      // DW_TAG_base_type
	.byte	0                       // DW_CHILDREN_no
	.byte	3                       // DW_AT_name
	.byte	14                      // DW_FORM_strp
	.byte	11                      // DW_AT_byte_size
	.byte	11                      // DW_FORM_data1
	.byte	62                      // DW_AT_encoding
	.byte	11                      // DW_FORM_data1
	.byte	0                       // EOM(1)
	.byte	0                       // EOM(2)
	.byte	8                       // Abbreviation Code
	.byte	57                      // DW_TAG_namespace
	.byte	1                       // DW_CHILDREN_yes
	.byte	3                       // DW_AT_name
	.byte	14                      // DW_FORM_strp
	.byte	0                       // EOM(1)
	.byte	0                       // EOM(2)
	.byte	9                       // Abbreviation Code
	.byte	8                       // DW_TAG_imported_declaration
	.byte	0                       // DW_CHILDREN_no
	.byte	58                      // DW_AT_decl_file
	.byte	11                      // DW_FORM_data1
	.byte	59                      // DW_AT_decl_line
	.byte	11                      // DW_FORM_data1
	.byte	24                      // DW_AT_import
	.byte	19                      // DW_FORM_ref4
	.byte	0                       // EOM(1)
	.byte	0                       // EOM(2)
	.byte	10                      // Abbreviation Code
	.byte	8                       // DW_TAG_imported_declaration
	.byte	0                       // DW_CHILDREN_no
	.byte	58                      // DW_AT_decl_file
	.byte	11                      // DW_FORM_data1
	.byte	59                      // DW_AT_decl_line
	.byte	5                       // DW_FORM_data2
	.byte	24                      // DW_AT_import
	.byte	19                      // DW_FORM_ref4
	.byte	0                       // EOM(1)
	.byte	0                       // EOM(2)
	.byte	11                      // Abbreviation Code
	.byte	46                      // DW_TAG_subprogram
	.byte	1                       // DW_CHILDREN_yes
	.byte	110                     // DW_AT_linkage_name
	.byte	14                      // DW_FORM_strp
	.byte	3                       // DW_AT_name
	.byte	14                      // DW_FORM_strp
	.byte	58                      // DW_AT_decl_file
	.byte	11                      // DW_FORM_data1
	.byte	59                      // DW_AT_decl_line
	.byte	5                       // DW_FORM_data2
	.byte	73                      // DW_AT_type
	.byte	19                      // DW_FORM_ref4
	.byte	63                      // DW_AT_external
	.byte	25                      // DW_FORM_flag_present
	.byte	32                      // DW_AT_inline
	.byte	11                      // DW_FORM_data1
	.byte	0                       // EOM(1)
	.byte	0                       // EOM(2)
	.byte	12                      // Abbreviation Code
	.byte	5                       // DW_TAG_formal_parameter
	.byte	0                       // DW_CHILDREN_no
	.byte	3                       // DW_AT_name
	.byte	14                      // DW_FORM_strp
	.byte	58                      // DW_AT_decl_file
	.byte	11                      // DW_FORM_data1
	.byte	59                      // DW_AT_decl_line
	.byte	5                       // DW_FORM_data2
	.byte	73                      // DW_AT_type
	.byte	19                      // DW_FORM_ref4
	.byte	0                       // EOM(1)
	.byte	0                       // EOM(2)
	.byte	13                      // Abbreviation Code
	.byte	46                      // DW_TAG_subprogram
	.byte	1                       // DW_CHILDREN_yes
	.byte	3                       // DW_AT_name
	.byte	14                      // DW_FORM_strp
	.byte	58                      // DW_AT_decl_file
	.byte	11                      // DW_FORM_data1
	.byte	59                      // DW_AT_decl_line
	.byte	5                       // DW_FORM_data2
	.byte	73                      // DW_AT_type
	.byte	19                      // DW_FORM_ref4
	.byte	60                      // DW_AT_declaration
	.byte	25                      // DW_FORM_flag_present
	.byte	63                      // DW_AT_external
	.byte	25                      // DW_FORM_flag_present
	.byte	0                       // EOM(1)
	.byte	0                       // EOM(2)
	.byte	14                      // Abbreviation Code
	.byte	5                       // DW_TAG_formal_parameter
	.byte	0                       // DW_CHILDREN_no
	.byte	73                      // DW_AT_type
	.byte	19                      // DW_FORM_ref4
	.byte	0                       // EOM(1)
	.byte	0                       // EOM(2)
	.byte	15                      // Abbreviation Code
	.byte	46                      // DW_TAG_subprogram
	.byte	1                       // DW_CHILDREN_yes
	.byte	110                     // DW_AT_linkage_name
	.byte	14                      // DW_FORM_strp
	.byte	3                       // DW_AT_name
	.byte	14                      // DW_FORM_strp
	.byte	58                      // DW_AT_decl_file
	.byte	11                      // DW_FORM_data1
	.byte	59                      // DW_AT_decl_line
	.byte	11                      // DW_FORM_data1
	.byte	73                      // DW_AT_type
	.byte	19                      // DW_FORM_ref4
	.byte	60                      // DW_AT_declaration
	.byte	25                      // DW_FORM_flag_present
	.byte	63                      // DW_AT_external
	.byte	25                      // DW_FORM_flag_present
	.byte	0                       // EOM(1)
	.byte	0                       // EOM(2)
	.byte	16                      // Abbreviation Code
	.byte	46                      // DW_TAG_subprogram
	.byte	1                       // DW_CHILDREN_yes
	.byte	3                       // DW_AT_name
	.byte	14                      // DW_FORM_strp
	.byte	58                      // DW_AT_decl_file
	.byte	11                      // DW_FORM_data1
	.byte	59                      // DW_AT_decl_line
	.byte	11                      // DW_FORM_data1
	.byte	73                      // DW_AT_type
	.byte	19                      // DW_FORM_ref4
	.byte	60                      // DW_AT_declaration
	.byte	25                      // DW_FORM_flag_present
	.byte	63                      // DW_AT_external
	.byte	25                      // DW_FORM_flag_present
	.byte	0                       // EOM(1)
	.byte	0                       // EOM(2)
	.byte	17                      // Abbreviation Code
	.byte	15                      // DW_TAG_pointer_type
	.byte	0                       // DW_CHILDREN_no
	.byte	73                      // DW_AT_type
	.byte	19                      // DW_FORM_ref4
	.byte	0                       // EOM(1)
	.byte	0                       // EOM(2)
	.byte	18                      // Abbreviation Code
	.byte	46                      // DW_TAG_subprogram
	.byte	1                       // DW_CHILDREN_yes
	.byte	110                     // DW_AT_linkage_name
	.byte	14                      // DW_FORM_strp
	.byte	3                       // DW_AT_name
	.byte	14                      // DW_FORM_strp
	.byte	58                      // DW_AT_decl_file
	.byte	11                      // DW_FORM_data1
	.byte	59                      // DW_AT_decl_line
	.byte	5                       // DW_FORM_data2
	.byte	73                      // DW_AT_type
	.byte	19                      // DW_FORM_ref4
	.byte	60                      // DW_AT_declaration
	.byte	25                      // DW_FORM_flag_present
	.byte	63                      // DW_AT_external
	.byte	25                      // DW_FORM_flag_present
	.byte	0                       // EOM(1)
	.byte	0                       // EOM(2)
	.byte	19                      // Abbreviation Code
	.byte	46                      // DW_TAG_subprogram
	.byte	1                       // DW_CHILDREN_yes
	.byte	110                     // DW_AT_linkage_name
	.byte	14                      // DW_FORM_strp
	.byte	3                       // DW_AT_name
	.byte	14                      // DW_FORM_strp
	.byte	58                      // DW_AT_decl_file
	.byte	11                      // DW_FORM_data1
	.byte	59                      // DW_AT_decl_line
	.byte	11                      // DW_FORM_data1
	.byte	32                      // DW_AT_inline
	.byte	11                      // DW_FORM_data1
	.byte	0                       // EOM(1)
	.byte	0                       // EOM(2)
	.byte	20                      // Abbreviation Code
	.byte	48                      // DW_TAG_template_value_parameter
	.byte	0                       // DW_CHILDREN_no
	.byte	73                      // DW_AT_type
	.byte	19                      // DW_FORM_ref4
	.byte	3                       // DW_AT_name
	.byte	14                      // DW_FORM_strp
	.byte	28                      // DW_AT_const_value
	.byte	13                      // DW_FORM_sdata
	.byte	0                       // EOM(1)
	.byte	0                       // EOM(2)
	.byte	21                      // Abbreviation Code
	.byte	48                      // DW_TAG_template_value_parameter
	.byte	0                       // DW_CHILDREN_no
	.byte	73                      // DW_AT_type
	.byte	19                      // DW_FORM_ref4
	.byte	3                       // DW_AT_name
	.byte	14                      // DW_FORM_strp
	.byte	2                       // DW_AT_location
	.byte	24                      // DW_FORM_exprloc
	.byte	0                       // EOM(1)
	.byte	0                       // EOM(2)
	.byte	22                      // Abbreviation Code
	.byte	5                       // DW_TAG_formal_parameter
	.byte	0                       // DW_CHILDREN_no
	.byte	3                       // DW_AT_name
	.byte	14                      // DW_FORM_strp
	.byte	58                      // DW_AT_decl_file
	.byte	11                      // DW_FORM_data1
	.byte	59                      // DW_AT_decl_line
	.byte	11                      // DW_FORM_data1
	.byte	73                      // DW_AT_type
	.byte	19                      // DW_FORM_ref4
	.byte	0                       // EOM(1)
	.byte	0                       // EOM(2)
	.byte	23                      // Abbreviation Code
	.byte	52                      // DW_TAG_variable
	.byte	0                       // DW_CHILDREN_no
	.byte	3                       // DW_AT_name
	.byte	14                      // DW_FORM_strp
	.byte	58                      // DW_AT_decl_file
	.byte	11                      // DW_FORM_data1
	.byte	59                      // DW_AT_decl_line
	.byte	11                      // DW_FORM_data1
	.byte	73                      // DW_AT_type
	.byte	19                      // DW_FORM_ref4
	.byte	0                       // EOM(1)
	.byte	0                       // EOM(2)
	.byte	24                      // Abbreviation Code
	.byte	11                      // DW_TAG_lexical_block
	.byte	1                       // DW_CHILDREN_yes
	.byte	0                       // EOM(1)
	.byte	0                       // EOM(2)
	.byte	25                      // Abbreviation Code
	.byte	16                      // DW_TAG_reference_type
	.byte	0                       // DW_CHILDREN_no
	.byte	73                      // DW_AT_type
	.byte	19                      // DW_FORM_ref4
	.byte	0                       // EOM(1)
	.byte	0                       // EOM(2)
	.byte	26                      // Abbreviation Code
	.byte	55                      // DW_TAG_restrict_type
	.byte	0                       // DW_CHILDREN_no
	.byte	73                      // DW_AT_type
	.byte	19                      // DW_FORM_ref4
	.byte	0                       // EOM(1)
	.byte	0                       // EOM(2)
	.byte	27                      // Abbreviation Code
	.byte	46                      // DW_TAG_subprogram
	.byte	1                       // DW_CHILDREN_yes
	.byte	17                      // DW_AT_low_pc
	.byte	1                       // DW_FORM_addr
	.byte	18                      // DW_AT_high_pc
	.byte	6                       // DW_FORM_data4
	.byte	64                      // DW_AT_frame_base
	.byte	24                      // DW_FORM_exprloc
	.byte	110                     // DW_AT_linkage_name
	.byte	14                      // DW_FORM_strp
	.byte	3                       // DW_AT_name
	.byte	14                      // DW_FORM_strp
	.byte	58                      // DW_AT_decl_file
	.byte	11                      // DW_FORM_data1
	.byte	59                      // DW_AT_decl_line
	.byte	11                      // DW_FORM_data1
	.byte	63                      // DW_AT_external
	.byte	25                      // DW_FORM_flag_present
	.byte	0                       // EOM(1)
	.byte	0                       // EOM(2)
	.byte	28                      // Abbreviation Code
	.byte	5                       // DW_TAG_formal_parameter
	.byte	0                       // DW_CHILDREN_no
	.byte	2                       // DW_AT_location
	.byte	24                      // DW_FORM_exprloc
	.byte	3                       // DW_AT_name
	.byte	14                      // DW_FORM_strp
	.byte	58                      // DW_AT_decl_file
	.byte	11                      // DW_FORM_data1
	.byte	59                      // DW_AT_decl_line
	.byte	11                      // DW_FORM_data1
	.byte	73                      // DW_AT_type
	.byte	19                      // DW_FORM_ref4
	.byte	0                       // EOM(1)
	.byte	0                       // EOM(2)
	.byte	29                      // Abbreviation Code
	.byte	5                       // DW_TAG_formal_parameter
	.byte	0                       // DW_CHILDREN_no
	.byte	2                       // DW_AT_location
	.byte	23                      // DW_FORM_sec_offset
	.byte	3                       // DW_AT_name
	.byte	14                      // DW_FORM_strp
	.byte	58                      // DW_AT_decl_file
	.byte	11                      // DW_FORM_data1
	.byte	59                      // DW_AT_decl_line
	.byte	11                      // DW_FORM_data1
	.byte	73                      // DW_AT_type
	.byte	19                      // DW_FORM_ref4
	.byte	0                       // EOM(1)
	.byte	0                       // EOM(2)
	.byte	30                      // Abbreviation Code
	.byte	29                      // DW_TAG_inlined_subroutine
	.byte	1                       // DW_CHILDREN_yes
	.byte	49                      // DW_AT_abstract_origin
	.byte	19                      // DW_FORM_ref4
	.byte	17                      // DW_AT_low_pc
	.byte	1                       // DW_FORM_addr
	.byte	18                      // DW_AT_high_pc
	.byte	6                       // DW_FORM_data4
	.byte	88                      // DW_AT_call_file
	.byte	11                      // DW_FORM_data1
	.byte	89                      // DW_AT_call_line
	.byte	11                      // DW_FORM_data1
	.byte	0                       // EOM(1)
	.byte	0                       // EOM(2)
	.byte	31                      // Abbreviation Code
	.byte	5                       // DW_TAG_formal_parameter
	.byte	0                       // DW_CHILDREN_no
	.byte	2                       // DW_AT_location
	.byte	24                      // DW_FORM_exprloc
	.byte	49                      // DW_AT_abstract_origin
	.byte	19                      // DW_FORM_ref4
	.byte	0                       // EOM(1)
	.byte	0                       // EOM(2)
	.byte	32                      // Abbreviation Code
	.byte	52                      // DW_TAG_variable
	.byte	0                       // DW_CHILDREN_no
	.byte	28                      // DW_AT_const_value
	.byte	10                      // DW_FORM_block1
	.byte	49                      // DW_AT_abstract_origin
	.byte	19                      // DW_FORM_ref4
	.byte	0                       // EOM(1)
	.byte	0                       // EOM(2)
	.byte	33                      // Abbreviation Code
	.byte	11                      // DW_TAG_lexical_block
	.byte	1                       // DW_CHILDREN_yes
	.byte	17                      // DW_AT_low_pc
	.byte	1                       // DW_FORM_addr
	.byte	18                      // DW_AT_high_pc
	.byte	6                       // DW_FORM_data4
	.byte	0                       // EOM(1)
	.byte	0                       // EOM(2)
	.byte	34                      // Abbreviation Code
	.byte	52                      // DW_TAG_variable
	.byte	0                       // DW_CHILDREN_no
	.byte	28                      // DW_AT_const_value
	.byte	13                      // DW_FORM_sdata
	.byte	49                      // DW_AT_abstract_origin
	.byte	19                      // DW_FORM_ref4
	.byte	0                       // EOM(1)
	.byte	0                       // EOM(2)
	.byte	35                      // Abbreviation Code
	.byte	29                      // DW_TAG_inlined_subroutine
	.byte	0                       // DW_CHILDREN_no
	.byte	49                      // DW_AT_abstract_origin
	.byte	19                      // DW_FORM_ref4
	.byte	17                      // DW_AT_low_pc
	.byte	1                       // DW_FORM_addr
	.byte	18                      // DW_AT_high_pc
	.byte	6                       // DW_FORM_data4
	.byte	88                      // DW_AT_call_file
	.byte	11                      // DW_FORM_data1
	.byte	89                      // DW_AT_call_line
	.byte	11                      // DW_FORM_data1
	.byte	0                       // EOM(1)
	.byte	0                       // EOM(2)
	.byte	0                       // EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.word	2744                    // Length of Unit
	.hword	4                       // DWARF version number
	.word	.debug_abbrev           // Offset Into Abbrev. Section
	.byte	8                       // Address Size (in bytes)
	.byte	1                       // Abbrev [1] 0xb:0xab1 DW_TAG_compile_unit
	.word	.Linfo_string0          // DW_AT_producer
	.hword	4                       // DW_AT_language
	.word	.Linfo_string1          // DW_AT_name
	.word	.Lline_table_start0     // DW_AT_stmt_list
	.word	.Linfo_string2          // DW_AT_comp_dir
                                        // DW_AT_GNU_pubnames
	.xword	.Lfunc_begin0           // DW_AT_low_pc
	.word	.Lfunc_end2-.Lfunc_begin0 // DW_AT_high_pc
	.byte	2                       // Abbrev [2] 0x2a:0x15 DW_TAG_variable
	.word	.Linfo_string3          // DW_AT_name
	.word	63                      // DW_AT_type
                                        // DW_AT_external
	.byte	1                       // DW_AT_decl_file
	.byte	58                      // DW_AT_decl_line
	.byte	9                       // DW_AT_location
	.byte	3
	.xword	PolyCoefficients4
	.byte	3                       // Abbrev [3] 0x3f:0xc DW_TAG_array_type
	.word	75                      // DW_AT_type
	.byte	4                       // Abbrev [4] 0x44:0x6 DW_TAG_subrange_type
	.word	87                      // DW_AT_type
	.byte	5                       // DW_AT_count
	.byte	0                       // End Of Children Mark
	.byte	5                       // Abbrev [5] 0x4b:0x5 DW_TAG_const_type
	.word	80                      // DW_AT_type
	.byte	6                       // Abbrev [6] 0x50:0x7 DW_TAG_base_type
	.word	.Linfo_string4          // DW_AT_name
	.byte	4                       // DW_AT_encoding
	.byte	4                       // DW_AT_byte_size
	.byte	7                       // Abbrev [7] 0x57:0x7 DW_TAG_base_type
	.word	.Linfo_string5          // DW_AT_name
	.byte	8                       // DW_AT_byte_size
	.byte	7                       // DW_AT_encoding
	.byte	2                       // Abbrev [2] 0x5e:0x15 DW_TAG_variable
	.word	.Linfo_string6          // DW_AT_name
	.word	115                     // DW_AT_type
                                        // DW_AT_external
	.byte	1                       // DW_AT_decl_file
	.byte	62                      // DW_AT_decl_line
	.byte	9                       // DW_AT_location
	.byte	3
	.xword	PolyCoefficients5
	.byte	3                       // Abbrev [3] 0x73:0xc DW_TAG_array_type
	.word	75                      // DW_AT_type
	.byte	4                       // Abbrev [4] 0x78:0x6 DW_TAG_subrange_type
	.word	87                      // DW_AT_type
	.byte	6                       // DW_AT_count
	.byte	0                       // End Of Children Mark
	.byte	2                       // Abbrev [2] 0x7f:0x15 DW_TAG_variable
	.word	.Linfo_string7          // DW_AT_name
	.word	148                     // DW_AT_type
                                        // DW_AT_external
	.byte	1                       // DW_AT_decl_file
	.byte	67                      // DW_AT_decl_line
	.byte	9                       // DW_AT_location
	.byte	3
	.xword	PolyCoefficients6
	.byte	3                       // Abbrev [3] 0x94:0xc DW_TAG_array_type
	.word	75                      // DW_AT_type
	.byte	4                       // Abbrev [4] 0x99:0x6 DW_TAG_subrange_type
	.word	87                      // DW_AT_type
	.byte	7                       // DW_AT_count
	.byte	0                       // End Of Children Mark
	.byte	8                       // Abbrev [8] 0xa0:0xd2 DW_TAG_namespace
	.word	.Linfo_string8          // DW_AT_name
	.byte	9                       // Abbrev [9] 0xa5:0x7 DW_TAG_imported_declaration
	.byte	3                       // DW_AT_decl_file
	.byte	52                      // DW_AT_decl_line
	.word	370                     // DW_AT_import
	.byte	9                       // Abbrev [9] 0xac:0x7 DW_TAG_imported_declaration
	.byte	5                       // DW_AT_decl_file
	.byte	83                      // DW_AT_decl_line
	.word	395                     // DW_AT_import
	.byte	9                       // Abbrev [9] 0xb3:0x7 DW_TAG_imported_declaration
	.byte	5                       // DW_AT_decl_file
	.byte	102                     // DW_AT_decl_line
	.word	423                     // DW_AT_import
	.byte	9                       // Abbrev [9] 0xba:0x7 DW_TAG_imported_declaration
	.byte	5                       // DW_AT_decl_file
	.byte	121                     // DW_AT_decl_line
	.word	444                     // DW_AT_import
	.byte	9                       // Abbrev [9] 0xc1:0x7 DW_TAG_imported_declaration
	.byte	5                       // DW_AT_decl_file
	.byte	140                     // DW_AT_decl_line
	.word	461                     // DW_AT_import
	.byte	9                       // Abbrev [9] 0xc8:0x7 DW_TAG_imported_declaration
	.byte	5                       // DW_AT_decl_file
	.byte	161                     // DW_AT_decl_line
	.word	487                     // DW_AT_import
	.byte	9                       // Abbrev [9] 0xcf:0x7 DW_TAG_imported_declaration
	.byte	5                       // DW_AT_decl_file
	.byte	180                     // DW_AT_decl_line
	.word	504                     // DW_AT_import
	.byte	9                       // Abbrev [9] 0xd6:0x7 DW_TAG_imported_declaration
	.byte	5                       // DW_AT_decl_file
	.byte	199                     // DW_AT_decl_line
	.word	521                     // DW_AT_import
	.byte	9                       // Abbrev [9] 0xdd:0x7 DW_TAG_imported_declaration
	.byte	5                       // DW_AT_decl_file
	.byte	218                     // DW_AT_decl_line
	.word	542                     // DW_AT_import
	.byte	9                       // Abbrev [9] 0xe4:0x7 DW_TAG_imported_declaration
	.byte	5                       // DW_AT_decl_file
	.byte	237                     // DW_AT_decl_line
	.word	563                     // DW_AT_import
	.byte	10                      // Abbrev [10] 0xeb:0x8 DW_TAG_imported_declaration
	.byte	5                       // DW_AT_decl_file
	.hword	256                     // DW_AT_decl_line
	.word	580                     // DW_AT_import
	.byte	10                      // Abbrev [10] 0xf3:0x8 DW_TAG_imported_declaration
	.byte	5                       // DW_AT_decl_file
	.hword	275                     // DW_AT_decl_line
	.word	597                     // DW_AT_import
	.byte	10                      // Abbrev [10] 0xfb:0x8 DW_TAG_imported_declaration
	.byte	5                       // DW_AT_decl_file
	.hword	296                     // DW_AT_decl_line
	.word	623                     // DW_AT_import
	.byte	10                      // Abbrev [10] 0x103:0x8 DW_TAG_imported_declaration
	.byte	5                       // DW_AT_decl_file
	.hword	315                     // DW_AT_decl_line
	.word	650                     // DW_AT_import
	.byte	10                      // Abbrev [10] 0x10b:0x8 DW_TAG_imported_declaration
	.byte	5                       // DW_AT_decl_file
	.hword	334                     // DW_AT_decl_line
	.word	677                     // DW_AT_import
	.byte	10                      // Abbrev [10] 0x113:0x8 DW_TAG_imported_declaration
	.byte	5                       // DW_AT_decl_file
	.hword	353                     // DW_AT_decl_line
	.word	699                     // DW_AT_import
	.byte	10                      // Abbrev [10] 0x11b:0x8 DW_TAG_imported_declaration
	.byte	5                       // DW_AT_decl_file
	.hword	372                     // DW_AT_decl_line
	.word	721                     // DW_AT_import
	.byte	10                      // Abbrev [10] 0x123:0x8 DW_TAG_imported_declaration
	.byte	5                       // DW_AT_decl_file
	.hword	384                     // DW_AT_decl_line
	.word	748                     // DW_AT_import
	.byte	10                      // Abbrev [10] 0x12b:0x8 DW_TAG_imported_declaration
	.byte	5                       // DW_AT_decl_file
	.hword	421                     // DW_AT_decl_line
	.word	775                     // DW_AT_import
	.byte	10                      // Abbrev [10] 0x133:0x8 DW_TAG_imported_declaration
	.byte	5                       // DW_AT_decl_file
	.hword	440                     // DW_AT_decl_line
	.word	792                     // DW_AT_import
	.byte	10                      // Abbrev [10] 0x13b:0x8 DW_TAG_imported_declaration
	.byte	5                       // DW_AT_decl_file
	.hword	459                     // DW_AT_decl_line
	.word	814                     // DW_AT_import
	.byte	10                      // Abbrev [10] 0x143:0x8 DW_TAG_imported_declaration
	.byte	5                       // DW_AT_decl_file
	.hword	478                     // DW_AT_decl_line
	.word	836                     // DW_AT_import
	.byte	10                      // Abbrev [10] 0x14b:0x8 DW_TAG_imported_declaration
	.byte	5                       // DW_AT_decl_file
	.hword	497                     // DW_AT_decl_line
	.word	853                     // DW_AT_import
	.byte	11                      // Abbrev [11] 0x153:0x1e DW_TAG_subprogram
	.word	.Linfo_string74         // DW_AT_linkage_name
	.word	.Linfo_string43         // DW_AT_name
	.byte	5                       // DW_AT_decl_file
	.hword	463                     // DW_AT_decl_line
	.word	80                      // DW_AT_type
                                        // DW_AT_external
	.byte	1                       // DW_AT_inline
	.byte	12                      // Abbrev [12] 0x164:0xc DW_TAG_formal_parameter
	.word	.Linfo_string75         // DW_AT_name
	.byte	5                       // DW_AT_decl_file
	.hword	463                     // DW_AT_decl_line
	.word	80                      // DW_AT_type
	.byte	0                       // End Of Children Mark
	.byte	0                       // End Of Children Mark
	.byte	13                      // Abbrev [13] 0x172:0x12 DW_TAG_subprogram
	.word	.Linfo_string9          // DW_AT_name
	.byte	2                       // DW_AT_decl_file
	.hword	770                     // DW_AT_decl_line
	.word	388                     // DW_AT_type
                                        // DW_AT_declaration
                                        // DW_AT_external
	.byte	14                      // Abbrev [14] 0x17e:0x5 DW_TAG_formal_parameter
	.word	388                     // DW_AT_type
	.byte	0                       // End Of Children Mark
	.byte	6                       // Abbrev [6] 0x184:0x7 DW_TAG_base_type
	.word	.Linfo_string10         // DW_AT_name
	.byte	5                       // DW_AT_encoding
	.byte	4                       // DW_AT_byte_size
	.byte	15                      // Abbrev [15] 0x18b:0x15 DW_TAG_subprogram
	.word	.Linfo_string11         // DW_AT_linkage_name
	.word	.Linfo_string12         // DW_AT_name
	.byte	4                       // DW_AT_decl_file
	.byte	24                      // DW_AT_decl_line
	.word	416                     // DW_AT_type
                                        // DW_AT_declaration
                                        // DW_AT_external
	.byte	14                      // Abbrev [14] 0x19a:0x5 DW_TAG_formal_parameter
	.word	416                     // DW_AT_type
	.byte	0                       // End Of Children Mark
	.byte	6                       // Abbrev [6] 0x1a0:0x7 DW_TAG_base_type
	.word	.Linfo_string13         // DW_AT_name
	.byte	4                       // DW_AT_encoding
	.byte	8                       // DW_AT_byte_size
	.byte	15                      // Abbrev [15] 0x1a7:0x15 DW_TAG_subprogram
	.word	.Linfo_string14         // DW_AT_linkage_name
	.word	.Linfo_string15         // DW_AT_name
	.byte	4                       // DW_AT_decl_file
	.byte	48                      // DW_AT_decl_line
	.word	416                     // DW_AT_type
                                        // DW_AT_declaration
                                        // DW_AT_external
	.byte	14                      // Abbrev [14] 0x1b6:0x5 DW_TAG_formal_parameter
	.word	416                     // DW_AT_type
	.byte	0                       // End Of Children Mark
	.byte	16                      // Abbrev [16] 0x1bc:0x11 DW_TAG_subprogram
	.word	.Linfo_string16         // DW_AT_name
	.byte	6                       // DW_AT_decl_file
	.byte	58                      // DW_AT_decl_line
	.word	416                     // DW_AT_type
                                        // DW_AT_declaration
                                        // DW_AT_external
	.byte	14                      // Abbrev [14] 0x1c7:0x5 DW_TAG_formal_parameter
	.word	416                     // DW_AT_type
	.byte	0                       // End Of Children Mark
	.byte	15                      // Abbrev [15] 0x1cd:0x1a DW_TAG_subprogram
	.word	.Linfo_string17         // DW_AT_linkage_name
	.word	.Linfo_string18         // DW_AT_name
	.byte	4                       // DW_AT_decl_file
	.byte	59                      // DW_AT_decl_line
	.word	416                     // DW_AT_type
                                        // DW_AT_declaration
                                        // DW_AT_external
	.byte	14                      // Abbrev [14] 0x1dc:0x5 DW_TAG_formal_parameter
	.word	416                     // DW_AT_type
	.byte	14                      // Abbrev [14] 0x1e1:0x5 DW_TAG_formal_parameter
	.word	416                     // DW_AT_type
	.byte	0                       // End Of Children Mark
	.byte	16                      // Abbrev [16] 0x1e7:0x11 DW_TAG_subprogram
	.word	.Linfo_string19         // DW_AT_name
	.byte	6                       // DW_AT_decl_file
	.byte	179                     // DW_AT_decl_line
	.word	416                     // DW_AT_type
                                        // DW_AT_declaration
                                        // DW_AT_external
	.byte	14                      // Abbrev [14] 0x1f2:0x5 DW_TAG_formal_parameter
	.word	416                     // DW_AT_type
	.byte	0                       // End Of Children Mark
	.byte	16                      // Abbrev [16] 0x1f8:0x11 DW_TAG_subprogram
	.word	.Linfo_string20         // DW_AT_name
	.byte	6                       // DW_AT_decl_file
	.byte	63                      // DW_AT_decl_line
	.word	416                     // DW_AT_type
                                        // DW_AT_declaration
                                        // DW_AT_external
	.byte	14                      // Abbrev [14] 0x203:0x5 DW_TAG_formal_parameter
	.word	416                     // DW_AT_type
	.byte	0                       // End Of Children Mark
	.byte	15                      // Abbrev [15] 0x209:0x15 DW_TAG_subprogram
	.word	.Linfo_string21         // DW_AT_linkage_name
	.word	.Linfo_string22         // DW_AT_name
	.byte	4                       // DW_AT_decl_file
	.byte	85                      // DW_AT_decl_line
	.word	416                     // DW_AT_type
                                        // DW_AT_declaration
                                        // DW_AT_external
	.byte	14                      // Abbrev [14] 0x218:0x5 DW_TAG_formal_parameter
	.word	416                     // DW_AT_type
	.byte	0                       // End Of Children Mark
	.byte	15                      // Abbrev [15] 0x21e:0x15 DW_TAG_subprogram
	.word	.Linfo_string23         // DW_AT_linkage_name
	.word	.Linfo_string24         // DW_AT_name
	.byte	4                       // DW_AT_decl_file
	.byte	96                      // DW_AT_decl_line
	.word	416                     // DW_AT_type
                                        // DW_AT_declaration
                                        // DW_AT_external
	.byte	14                      // Abbrev [14] 0x22d:0x5 DW_TAG_formal_parameter
	.word	416                     // DW_AT_type
	.byte	0                       // End Of Children Mark
	.byte	16                      // Abbrev [16] 0x233:0x11 DW_TAG_subprogram
	.word	.Linfo_string25         // DW_AT_name
	.byte	6                       // DW_AT_decl_file
	.byte	182                     // DW_AT_decl_line
	.word	416                     // DW_AT_type
                                        // DW_AT_declaration
                                        // DW_AT_external
	.byte	14                      // Abbrev [14] 0x23e:0x5 DW_TAG_formal_parameter
	.word	416                     // DW_AT_type
	.byte	0                       // End Of Children Mark
	.byte	16                      // Abbrev [16] 0x244:0x11 DW_TAG_subprogram
	.word	.Linfo_string26         // DW_AT_name
	.byte	6                       // DW_AT_decl_file
	.byte	185                     // DW_AT_decl_line
	.word	416                     // DW_AT_type
                                        // DW_AT_declaration
                                        // DW_AT_external
	.byte	14                      // Abbrev [14] 0x24f:0x5 DW_TAG_formal_parameter
	.word	416                     // DW_AT_type
	.byte	0                       // End Of Children Mark
	.byte	15                      // Abbrev [15] 0x255:0x1a DW_TAG_subprogram
	.word	.Linfo_string27         // DW_AT_linkage_name
	.word	.Linfo_string28         // DW_AT_name
	.byte	4                       // DW_AT_decl_file
	.byte	144                     // DW_AT_decl_line
	.word	416                     // DW_AT_type
                                        // DW_AT_declaration
                                        // DW_AT_external
	.byte	14                      // Abbrev [14] 0x264:0x5 DW_TAG_formal_parameter
	.word	416                     // DW_AT_type
	.byte	14                      // Abbrev [14] 0x269:0x5 DW_TAG_formal_parameter
	.word	416                     // DW_AT_type
	.byte	0                       // End Of Children Mark
	.byte	16                      // Abbrev [16] 0x26f:0x16 DW_TAG_subprogram
	.word	.Linfo_string29         // DW_AT_name
	.byte	6                       // DW_AT_decl_file
	.byte	103                     // DW_AT_decl_line
	.word	416                     // DW_AT_type
                                        // DW_AT_declaration
                                        // DW_AT_external
	.byte	14                      // Abbrev [14] 0x27a:0x5 DW_TAG_formal_parameter
	.word	416                     // DW_AT_type
	.byte	14                      // Abbrev [14] 0x27f:0x5 DW_TAG_formal_parameter
	.word	645                     // DW_AT_type
	.byte	0                       // End Of Children Mark
	.byte	17                      // Abbrev [17] 0x285:0x5 DW_TAG_pointer_type
	.word	388                     // DW_AT_type
	.byte	18                      // Abbrev [18] 0x28a:0x1b DW_TAG_subprogram
	.word	.Linfo_string30         // DW_AT_linkage_name
	.word	.Linfo_string31         // DW_AT_name
	.byte	4                       // DW_AT_decl_file
	.hword	358                     // DW_AT_decl_line
	.word	416                     // DW_AT_type
                                        // DW_AT_declaration
                                        // DW_AT_external
	.byte	14                      // Abbrev [14] 0x29a:0x5 DW_TAG_formal_parameter
	.word	416                     // DW_AT_type
	.byte	14                      // Abbrev [14] 0x29f:0x5 DW_TAG_formal_parameter
	.word	388                     // DW_AT_type
	.byte	0                       // End Of Children Mark
	.byte	18                      // Abbrev [18] 0x2a5:0x16 DW_TAG_subprogram
	.word	.Linfo_string32         // DW_AT_linkage_name
	.word	.Linfo_string33         // DW_AT_name
	.byte	4                       // DW_AT_decl_file
	.hword	323                     // DW_AT_decl_line
	.word	416                     // DW_AT_type
                                        // DW_AT_declaration
                                        // DW_AT_external
	.byte	14                      // Abbrev [14] 0x2b5:0x5 DW_TAG_formal_parameter
	.word	416                     // DW_AT_type
	.byte	0                       // End Of Children Mark
	.byte	18                      // Abbrev [18] 0x2bb:0x16 DW_TAG_subprogram
	.word	.Linfo_string34         // DW_AT_linkage_name
	.word	.Linfo_string35         // DW_AT_name
	.byte	4                       // DW_AT_decl_file
	.hword	334                     // DW_AT_decl_line
	.word	416                     // DW_AT_type
                                        // DW_AT_declaration
                                        // DW_AT_external
	.byte	14                      // Abbrev [14] 0x2cb:0x5 DW_TAG_formal_parameter
	.word	416                     // DW_AT_type
	.byte	0                       // End Of Children Mark
	.byte	16                      // Abbrev [16] 0x2d1:0x16 DW_TAG_subprogram
	.word	.Linfo_string36         // DW_AT_name
	.byte	6                       // DW_AT_decl_file
	.byte	115                     // DW_AT_decl_line
	.word	416                     // DW_AT_type
                                        // DW_AT_declaration
                                        // DW_AT_external
	.byte	14                      // Abbrev [14] 0x2dc:0x5 DW_TAG_formal_parameter
	.word	416                     // DW_AT_type
	.byte	14                      // Abbrev [14] 0x2e1:0x5 DW_TAG_formal_parameter
	.word	743                     // DW_AT_type
	.byte	0                       // End Of Children Mark
	.byte	17                      // Abbrev [17] 0x2e7:0x5 DW_TAG_pointer_type
	.word	416                     // DW_AT_type
	.byte	18                      // Abbrev [18] 0x2ec:0x1b DW_TAG_subprogram
	.word	.Linfo_string37         // DW_AT_linkage_name
	.word	.Linfo_string38         // DW_AT_name
	.byte	4                       // DW_AT_decl_file
	.hword	365                     // DW_AT_decl_line
	.word	416                     // DW_AT_type
                                        // DW_AT_declaration
                                        // DW_AT_external
	.byte	14                      // Abbrev [14] 0x2fc:0x5 DW_TAG_formal_parameter
	.word	416                     // DW_AT_type
	.byte	14                      // Abbrev [14] 0x301:0x5 DW_TAG_formal_parameter
	.word	416                     // DW_AT_type
	.byte	0                       // End Of Children Mark
	.byte	16                      // Abbrev [16] 0x307:0x11 DW_TAG_subprogram
	.word	.Linfo_string39         // DW_AT_name
	.byte	6                       // DW_AT_decl_file
	.byte	65                      // DW_AT_decl_line
	.word	416                     // DW_AT_type
                                        // DW_AT_declaration
                                        // DW_AT_external
	.byte	14                      // Abbrev [14] 0x312:0x5 DW_TAG_formal_parameter
	.word	416                     // DW_AT_type
	.byte	0                       // End Of Children Mark
	.byte	18                      // Abbrev [18] 0x318:0x16 DW_TAG_subprogram
	.word	.Linfo_string40         // DW_AT_linkage_name
	.word	.Linfo_string41         // DW_AT_name
	.byte	4                       // DW_AT_decl_file
	.hword	406                     // DW_AT_decl_line
	.word	416                     // DW_AT_type
                                        // DW_AT_declaration
                                        // DW_AT_external
	.byte	14                      // Abbrev [14] 0x328:0x5 DW_TAG_formal_parameter
	.word	416                     // DW_AT_type
	.byte	0                       // End Of Children Mark
	.byte	18                      // Abbrev [18] 0x32e:0x16 DW_TAG_subprogram
	.word	.Linfo_string42         // DW_AT_linkage_name
	.word	.Linfo_string43         // DW_AT_name
	.byte	4                       // DW_AT_decl_file
	.hword	417                     // DW_AT_decl_line
	.word	416                     // DW_AT_type
                                        // DW_AT_declaration
                                        // DW_AT_external
	.byte	14                      // Abbrev [14] 0x33e:0x5 DW_TAG_formal_parameter
	.word	416                     // DW_AT_type
	.byte	0                       // End Of Children Mark
	.byte	16                      // Abbrev [16] 0x344:0x11 DW_TAG_subprogram
	.word	.Linfo_string44         // DW_AT_name
	.byte	6                       // DW_AT_decl_file
	.byte	67                      // DW_AT_decl_line
	.word	416                     // DW_AT_type
                                        // DW_AT_declaration
                                        // DW_AT_external
	.byte	14                      // Abbrev [14] 0x34f:0x5 DW_TAG_formal_parameter
	.word	416                     // DW_AT_type
	.byte	0                       // End Of Children Mark
	.byte	16                      // Abbrev [16] 0x355:0x11 DW_TAG_subprogram
	.word	.Linfo_string45         // DW_AT_name
	.byte	6                       // DW_AT_decl_file
	.byte	76                      // DW_AT_decl_line
	.word	416                     // DW_AT_type
                                        // DW_AT_declaration
                                        // DW_AT_external
	.byte	14                      // Abbrev [14] 0x360:0x5 DW_TAG_formal_parameter
	.word	416                     // DW_AT_type
	.byte	0                       // End Of Children Mark
	.byte	19                      // Abbrev [19] 0x366:0x139 DW_TAG_subprogram
	.word	.Linfo_string48         // DW_AT_linkage_name
	.word	.Linfo_string49         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	86                      // DW_AT_decl_line
	.byte	1                       // DW_AT_inline
	.byte	20                      // Abbrev [20] 0x372:0xa DW_TAG_template_value_parameter
	.word	388                     // DW_AT_type
	.word	.Linfo_string46         // DW_AT_name
	.byte	4                       // DW_AT_const_value
	.byte	21                      // Abbrev [21] 0x37c:0x14 DW_TAG_template_value_parameter
	.word	1183                    // DW_AT_type
	.word	.Linfo_string47         // DW_AT_name
	.byte	10                      // DW_AT_location
	.byte	3
	.xword	PolyCoefficients4
	.byte	159
	.byte	22                      // Abbrev [22] 0x390:0xb DW_TAG_formal_parameter
	.word	.Linfo_string50         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	86                      // DW_AT_decl_line
	.word	388                     // DW_AT_type
	.byte	22                      // Abbrev [22] 0x39b:0xb DW_TAG_formal_parameter
	.word	.Linfo_string51         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	86                      // DW_AT_decl_line
	.word	1188                    // DW_AT_type
	.byte	22                      // Abbrev [22] 0x3a6:0xb DW_TAG_formal_parameter
	.word	.Linfo_string52         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	86                      // DW_AT_decl_line
	.word	1188                    // DW_AT_type
	.byte	22                      // Abbrev [22] 0x3b1:0xb DW_TAG_formal_parameter
	.word	.Linfo_string53         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	87                      // DW_AT_decl_line
	.word	1188                    // DW_AT_type
	.byte	22                      // Abbrev [22] 0x3bc:0xb DW_TAG_formal_parameter
	.word	.Linfo_string54         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	87                      // DW_AT_decl_line
	.word	1188                    // DW_AT_type
	.byte	22                      // Abbrev [22] 0x3c7:0xb DW_TAG_formal_parameter
	.word	.Linfo_string55         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	88                      // DW_AT_decl_line
	.word	80                      // DW_AT_type
	.byte	22                      // Abbrev [22] 0x3d2:0xb DW_TAG_formal_parameter
	.word	.Linfo_string56         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	88                      // DW_AT_decl_line
	.word	80                      // DW_AT_type
	.byte	22                      // Abbrev [22] 0x3dd:0xb DW_TAG_formal_parameter
	.word	.Linfo_string57         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	88                      // DW_AT_decl_line
	.word	80                      // DW_AT_type
	.byte	22                      // Abbrev [22] 0x3e8:0xb DW_TAG_formal_parameter
	.word	.Linfo_string58         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	89                      // DW_AT_decl_line
	.word	80                      // DW_AT_type
	.byte	22                      // Abbrev [22] 0x3f3:0xb DW_TAG_formal_parameter
	.word	.Linfo_string59         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	89                      // DW_AT_decl_line
	.word	80                      // DW_AT_type
	.byte	22                      // Abbrev [22] 0x3fe:0xb DW_TAG_formal_parameter
	.word	.Linfo_string60         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	90                      // DW_AT_decl_line
	.word	1198                    // DW_AT_type
	.byte	22                      // Abbrev [22] 0x409:0xb DW_TAG_formal_parameter
	.word	.Linfo_string61         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	90                      // DW_AT_decl_line
	.word	1198                    // DW_AT_type
	.byte	22                      // Abbrev [22] 0x414:0xb DW_TAG_formal_parameter
	.word	.Linfo_string62         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	91                      // DW_AT_decl_line
	.word	1198                    // DW_AT_type
	.byte	23                      // Abbrev [23] 0x41f:0xb DW_TAG_variable
	.word	.Linfo_string63         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	92                      // DW_AT_decl_line
	.word	80                      // DW_AT_type
	.byte	23                      // Abbrev [23] 0x42a:0xb DW_TAG_variable
	.word	.Linfo_string64         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	92                      // DW_AT_decl_line
	.word	80                      // DW_AT_type
	.byte	23                      // Abbrev [23] 0x435:0xb DW_TAG_variable
	.word	.Linfo_string65         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	92                      // DW_AT_decl_line
	.word	80                      // DW_AT_type
	.byte	24                      // Abbrev [24] 0x440:0x5e DW_TAG_lexical_block
	.byte	23                      // Abbrev [23] 0x441:0xb DW_TAG_variable
	.word	.Linfo_string66         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	102                     // DW_AT_decl_line
	.word	388                     // DW_AT_type
	.byte	24                      // Abbrev [24] 0x44c:0x51 DW_TAG_lexical_block
	.byte	23                      // Abbrev [23] 0x44d:0xb DW_TAG_variable
	.word	.Linfo_string67         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	103                     // DW_AT_decl_line
	.word	80                      // DW_AT_type
	.byte	23                      // Abbrev [23] 0x458:0xb DW_TAG_variable
	.word	.Linfo_string68         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	103                     // DW_AT_decl_line
	.word	80                      // DW_AT_type
	.byte	23                      // Abbrev [23] 0x463:0xb DW_TAG_variable
	.word	.Linfo_string69         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	103                     // DW_AT_decl_line
	.word	80                      // DW_AT_type
	.byte	23                      // Abbrev [23] 0x46e:0xb DW_TAG_variable
	.word	.Linfo_string70         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	104                     // DW_AT_decl_line
	.word	80                      // DW_AT_type
	.byte	23                      // Abbrev [23] 0x479:0xb DW_TAG_variable
	.word	.Linfo_string71         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	109                     // DW_AT_decl_line
	.word	80                      // DW_AT_type
	.byte	23                      // Abbrev [23] 0x484:0xb DW_TAG_variable
	.word	.Linfo_string72         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	110                     // DW_AT_decl_line
	.word	80                      // DW_AT_type
	.byte	24                      // Abbrev [24] 0x48f:0xd DW_TAG_lexical_block
	.byte	23                      // Abbrev [23] 0x490:0xb DW_TAG_variable
	.word	.Linfo_string73         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	111                     // DW_AT_decl_line
	.word	388                     // DW_AT_type
	.byte	0                       // End Of Children Mark
	.byte	0                       // End Of Children Mark
	.byte	0                       // End Of Children Mark
	.byte	0                       // End Of Children Mark
	.byte	25                      // Abbrev [25] 0x49f:0x5 DW_TAG_reference_type
	.word	63                      // DW_AT_type
	.byte	26                      // Abbrev [26] 0x4a4:0x5 DW_TAG_restrict_type
	.word	1193                    // DW_AT_type
	.byte	17                      // Abbrev [17] 0x4a9:0x5 DW_TAG_pointer_type
	.word	80                      // DW_AT_type
	.byte	26                      // Abbrev [26] 0x4ae:0x5 DW_TAG_restrict_type
	.word	1203                    // DW_AT_type
	.byte	25                      // Abbrev [25] 0x4b3:0x5 DW_TAG_reference_type
	.word	80                      // DW_AT_type
	.byte	27                      // Abbrev [27] 0x4b8:0x12d DW_TAG_subprogram
	.xword	.Lfunc_begin0           // DW_AT_low_pc
	.word	.Lfunc_end0-.Lfunc_begin0 // DW_AT_high_pc
	.byte	1                       // DW_AT_frame_base
	.byte	111
	.word	.Linfo_string80         // DW_AT_linkage_name
	.word	.Linfo_string81         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	126                     // DW_AT_decl_line
                                        // DW_AT_external
	.byte	28                      // Abbrev [28] 0x4d1:0xd DW_TAG_formal_parameter
	.byte	1                       // DW_AT_location
	.byte	80
	.word	.Linfo_string50         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	126                     // DW_AT_decl_line
	.word	388                     // DW_AT_type
	.byte	28                      // Abbrev [28] 0x4de:0xd DW_TAG_formal_parameter
	.byte	1                       // DW_AT_location
	.byte	81
	.word	.Linfo_string51         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	126                     // DW_AT_decl_line
	.word	1188                    // DW_AT_type
	.byte	28                      // Abbrev [28] 0x4eb:0xd DW_TAG_formal_parameter
	.byte	1                       // DW_AT_location
	.byte	82
	.word	.Linfo_string52         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	126                     // DW_AT_decl_line
	.word	1188                    // DW_AT_type
	.byte	28                      // Abbrev [28] 0x4f8:0xd DW_TAG_formal_parameter
	.byte	1                       // DW_AT_location
	.byte	83
	.word	.Linfo_string53         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	127                     // DW_AT_decl_line
	.word	1188                    // DW_AT_type
	.byte	28                      // Abbrev [28] 0x505:0xd DW_TAG_formal_parameter
	.byte	1                       // DW_AT_location
	.byte	84
	.word	.Linfo_string54         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	127                     // DW_AT_decl_line
	.word	1188                    // DW_AT_type
	.byte	29                      // Abbrev [29] 0x512:0xf DW_TAG_formal_parameter
	.word	.Ldebug_loc0            // DW_AT_location
	.word	.Linfo_string55         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	128                     // DW_AT_decl_line
	.word	80                      // DW_AT_type
	.byte	29                      // Abbrev [29] 0x521:0xf DW_TAG_formal_parameter
	.word	.Ldebug_loc1            // DW_AT_location
	.word	.Linfo_string56         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	128                     // DW_AT_decl_line
	.word	80                      // DW_AT_type
	.byte	29                      // Abbrev [29] 0x530:0xf DW_TAG_formal_parameter
	.word	.Ldebug_loc2            // DW_AT_location
	.word	.Linfo_string57         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	128                     // DW_AT_decl_line
	.word	80                      // DW_AT_type
	.byte	29                      // Abbrev [29] 0x53f:0xf DW_TAG_formal_parameter
	.word	.Ldebug_loc3            // DW_AT_location
	.word	.Linfo_string58         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	129                     // DW_AT_decl_line
	.word	80                      // DW_AT_type
	.byte	29                      // Abbrev [29] 0x54e:0xf DW_TAG_formal_parameter
	.word	.Ldebug_loc4            // DW_AT_location
	.word	.Linfo_string59         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	129                     // DW_AT_decl_line
	.word	80                      // DW_AT_type
	.byte	28                      // Abbrev [28] 0x55d:0xd DW_TAG_formal_parameter
	.byte	1                       // DW_AT_location
	.byte	85
	.word	.Linfo_string60         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	130                     // DW_AT_decl_line
	.word	1198                    // DW_AT_type
	.byte	28                      // Abbrev [28] 0x56a:0xd DW_TAG_formal_parameter
	.byte	1                       // DW_AT_location
	.byte	86
	.word	.Linfo_string61         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	130                     // DW_AT_decl_line
	.word	1198                    // DW_AT_type
	.byte	28                      // Abbrev [28] 0x577:0xd DW_TAG_formal_parameter
	.byte	1                       // DW_AT_location
	.byte	87
	.word	.Linfo_string62         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	131                     // DW_AT_decl_line
	.word	1198                    // DW_AT_type
	.byte	30                      // Abbrev [30] 0x584:0x60 DW_TAG_inlined_subroutine
	.word	870                     // DW_AT_abstract_origin
	.xword	.Lfunc_begin0           // DW_AT_low_pc
	.word	.Ltmp26-.Lfunc_begin0   // DW_AT_high_pc
	.byte	1                       // DW_AT_call_file
	.byte	132                     // DW_AT_call_line
	.byte	31                      // Abbrev [31] 0x597:0x7 DW_TAG_formal_parameter
	.byte	1                       // DW_AT_location
	.byte	80
	.word	912                     // DW_AT_abstract_origin
	.byte	32                      // Abbrev [32] 0x59e:0xa DW_TAG_variable
	.byte	4                       // DW_AT_const_value
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.word	1055                    // DW_AT_abstract_origin
	.byte	32                      // Abbrev [32] 0x5a8:0xa DW_TAG_variable
	.byte	4                       // DW_AT_const_value
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.word	1066                    // DW_AT_abstract_origin
	.byte	32                      // Abbrev [32] 0x5b2:0xa DW_TAG_variable
	.byte	4                       // DW_AT_const_value
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.word	1077                    // DW_AT_abstract_origin
	.byte	33                      // Abbrev [33] 0x5bc:0x27 DW_TAG_lexical_block
	.xword	.Lfunc_begin0           // DW_AT_low_pc
	.word	.Ltmp21-.Lfunc_begin0   // DW_AT_high_pc
	.byte	34                      // Abbrev [34] 0x5c9:0x6 DW_TAG_variable
	.byte	0                       // DW_AT_const_value
	.word	1089                    // DW_AT_abstract_origin
	.byte	35                      // Abbrev [35] 0x5cf:0x13 DW_TAG_inlined_subroutine
	.word	339                     // DW_AT_abstract_origin
	.xword	.Ltmp16                 // DW_AT_low_pc
	.word	.Ltmp17-.Ltmp16         // DW_AT_high_pc
	.byte	1                       // DW_AT_call_file
	.byte	114                     // DW_AT_call_line
	.byte	0                       // End Of Children Mark
	.byte	0                       // End Of Children Mark
	.byte	0                       // End Of Children Mark
	.byte	19                      // Abbrev [19] 0x5e5:0x139 DW_TAG_subprogram
	.word	.Linfo_string76         // DW_AT_linkage_name
	.word	.Linfo_string77         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	86                      // DW_AT_decl_line
	.byte	1                       // DW_AT_inline
	.byte	20                      // Abbrev [20] 0x5f1:0xa DW_TAG_template_value_parameter
	.word	388                     // DW_AT_type
	.word	.Linfo_string46         // DW_AT_name
	.byte	5                       // DW_AT_const_value
	.byte	21                      // Abbrev [21] 0x5fb:0x14 DW_TAG_template_value_parameter
	.word	1822                    // DW_AT_type
	.word	.Linfo_string47         // DW_AT_name
	.byte	10                      // DW_AT_location
	.byte	3
	.xword	PolyCoefficients5
	.byte	159
	.byte	22                      // Abbrev [22] 0x60f:0xb DW_TAG_formal_parameter
	.word	.Linfo_string50         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	86                      // DW_AT_decl_line
	.word	388                     // DW_AT_type
	.byte	22                      // Abbrev [22] 0x61a:0xb DW_TAG_formal_parameter
	.word	.Linfo_string51         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	86                      // DW_AT_decl_line
	.word	1188                    // DW_AT_type
	.byte	22                      // Abbrev [22] 0x625:0xb DW_TAG_formal_parameter
	.word	.Linfo_string52         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	86                      // DW_AT_decl_line
	.word	1188                    // DW_AT_type
	.byte	22                      // Abbrev [22] 0x630:0xb DW_TAG_formal_parameter
	.word	.Linfo_string53         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	87                      // DW_AT_decl_line
	.word	1188                    // DW_AT_type
	.byte	22                      // Abbrev [22] 0x63b:0xb DW_TAG_formal_parameter
	.word	.Linfo_string54         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	87                      // DW_AT_decl_line
	.word	1188                    // DW_AT_type
	.byte	22                      // Abbrev [22] 0x646:0xb DW_TAG_formal_parameter
	.word	.Linfo_string55         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	88                      // DW_AT_decl_line
	.word	80                      // DW_AT_type
	.byte	22                      // Abbrev [22] 0x651:0xb DW_TAG_formal_parameter
	.word	.Linfo_string56         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	88                      // DW_AT_decl_line
	.word	80                      // DW_AT_type
	.byte	22                      // Abbrev [22] 0x65c:0xb DW_TAG_formal_parameter
	.word	.Linfo_string57         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	88                      // DW_AT_decl_line
	.word	80                      // DW_AT_type
	.byte	22                      // Abbrev [22] 0x667:0xb DW_TAG_formal_parameter
	.word	.Linfo_string58         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	89                      // DW_AT_decl_line
	.word	80                      // DW_AT_type
	.byte	22                      // Abbrev [22] 0x672:0xb DW_TAG_formal_parameter
	.word	.Linfo_string59         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	89                      // DW_AT_decl_line
	.word	80                      // DW_AT_type
	.byte	22                      // Abbrev [22] 0x67d:0xb DW_TAG_formal_parameter
	.word	.Linfo_string60         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	90                      // DW_AT_decl_line
	.word	1198                    // DW_AT_type
	.byte	22                      // Abbrev [22] 0x688:0xb DW_TAG_formal_parameter
	.word	.Linfo_string61         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	90                      // DW_AT_decl_line
	.word	1198                    // DW_AT_type
	.byte	22                      // Abbrev [22] 0x693:0xb DW_TAG_formal_parameter
	.word	.Linfo_string62         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	91                      // DW_AT_decl_line
	.word	1198                    // DW_AT_type
	.byte	23                      // Abbrev [23] 0x69e:0xb DW_TAG_variable
	.word	.Linfo_string63         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	92                      // DW_AT_decl_line
	.word	80                      // DW_AT_type
	.byte	23                      // Abbrev [23] 0x6a9:0xb DW_TAG_variable
	.word	.Linfo_string64         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	92                      // DW_AT_decl_line
	.word	80                      // DW_AT_type
	.byte	23                      // Abbrev [23] 0x6b4:0xb DW_TAG_variable
	.word	.Linfo_string65         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	92                      // DW_AT_decl_line
	.word	80                      // DW_AT_type
	.byte	24                      // Abbrev [24] 0x6bf:0x5e DW_TAG_lexical_block
	.byte	23                      // Abbrev [23] 0x6c0:0xb DW_TAG_variable
	.word	.Linfo_string66         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	102                     // DW_AT_decl_line
	.word	388                     // DW_AT_type
	.byte	24                      // Abbrev [24] 0x6cb:0x51 DW_TAG_lexical_block
	.byte	23                      // Abbrev [23] 0x6cc:0xb DW_TAG_variable
	.word	.Linfo_string67         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	103                     // DW_AT_decl_line
	.word	80                      // DW_AT_type
	.byte	23                      // Abbrev [23] 0x6d7:0xb DW_TAG_variable
	.word	.Linfo_string68         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	103                     // DW_AT_decl_line
	.word	80                      // DW_AT_type
	.byte	23                      // Abbrev [23] 0x6e2:0xb DW_TAG_variable
	.word	.Linfo_string69         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	103                     // DW_AT_decl_line
	.word	80                      // DW_AT_type
	.byte	23                      // Abbrev [23] 0x6ed:0xb DW_TAG_variable
	.word	.Linfo_string70         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	104                     // DW_AT_decl_line
	.word	80                      // DW_AT_type
	.byte	23                      // Abbrev [23] 0x6f8:0xb DW_TAG_variable
	.word	.Linfo_string71         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	109                     // DW_AT_decl_line
	.word	80                      // DW_AT_type
	.byte	23                      // Abbrev [23] 0x703:0xb DW_TAG_variable
	.word	.Linfo_string72         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	110                     // DW_AT_decl_line
	.word	80                      // DW_AT_type
	.byte	24                      // Abbrev [24] 0x70e:0xd DW_TAG_lexical_block
	.byte	23                      // Abbrev [23] 0x70f:0xb DW_TAG_variable
	.word	.Linfo_string73         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	111                     // DW_AT_decl_line
	.word	388                     // DW_AT_type
	.byte	0                       // End Of Children Mark
	.byte	0                       // End Of Children Mark
	.byte	0                       // End Of Children Mark
	.byte	0                       // End Of Children Mark
	.byte	25                      // Abbrev [25] 0x71e:0x5 DW_TAG_reference_type
	.word	115                     // DW_AT_type
	.byte	27                      // Abbrev [27] 0x723:0x12d DW_TAG_subprogram
	.xword	.Lfunc_begin1           // DW_AT_low_pc
	.word	.Lfunc_end1-.Lfunc_begin1 // DW_AT_high_pc
	.byte	1                       // DW_AT_frame_base
	.byte	111
	.word	.Linfo_string82         // DW_AT_linkage_name
	.word	.Linfo_string83         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	137                     // DW_AT_decl_line
                                        // DW_AT_external
	.byte	28                      // Abbrev [28] 0x73c:0xd DW_TAG_formal_parameter
	.byte	1                       // DW_AT_location
	.byte	80
	.word	.Linfo_string50         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	137                     // DW_AT_decl_line
	.word	388                     // DW_AT_type
	.byte	28                      // Abbrev [28] 0x749:0xd DW_TAG_formal_parameter
	.byte	1                       // DW_AT_location
	.byte	81
	.word	.Linfo_string51         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	137                     // DW_AT_decl_line
	.word	1188                    // DW_AT_type
	.byte	28                      // Abbrev [28] 0x756:0xd DW_TAG_formal_parameter
	.byte	1                       // DW_AT_location
	.byte	82
	.word	.Linfo_string52         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	137                     // DW_AT_decl_line
	.word	1188                    // DW_AT_type
	.byte	28                      // Abbrev [28] 0x763:0xd DW_TAG_formal_parameter
	.byte	1                       // DW_AT_location
	.byte	83
	.word	.Linfo_string53         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	138                     // DW_AT_decl_line
	.word	1188                    // DW_AT_type
	.byte	28                      // Abbrev [28] 0x770:0xd DW_TAG_formal_parameter
	.byte	1                       // DW_AT_location
	.byte	84
	.word	.Linfo_string54         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	138                     // DW_AT_decl_line
	.word	1188                    // DW_AT_type
	.byte	29                      // Abbrev [29] 0x77d:0xf DW_TAG_formal_parameter
	.word	.Ldebug_loc5            // DW_AT_location
	.word	.Linfo_string55         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	139                     // DW_AT_decl_line
	.word	80                      // DW_AT_type
	.byte	29                      // Abbrev [29] 0x78c:0xf DW_TAG_formal_parameter
	.word	.Ldebug_loc6            // DW_AT_location
	.word	.Linfo_string56         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	139                     // DW_AT_decl_line
	.word	80                      // DW_AT_type
	.byte	29                      // Abbrev [29] 0x79b:0xf DW_TAG_formal_parameter
	.word	.Ldebug_loc7            // DW_AT_location
	.word	.Linfo_string57         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	139                     // DW_AT_decl_line
	.word	80                      // DW_AT_type
	.byte	29                      // Abbrev [29] 0x7aa:0xf DW_TAG_formal_parameter
	.word	.Ldebug_loc8            // DW_AT_location
	.word	.Linfo_string58         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	140                     // DW_AT_decl_line
	.word	80                      // DW_AT_type
	.byte	29                      // Abbrev [29] 0x7b9:0xf DW_TAG_formal_parameter
	.word	.Ldebug_loc9            // DW_AT_location
	.word	.Linfo_string59         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	140                     // DW_AT_decl_line
	.word	80                      // DW_AT_type
	.byte	28                      // Abbrev [28] 0x7c8:0xd DW_TAG_formal_parameter
	.byte	1                       // DW_AT_location
	.byte	85
	.word	.Linfo_string60         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	141                     // DW_AT_decl_line
	.word	1198                    // DW_AT_type
	.byte	28                      // Abbrev [28] 0x7d5:0xd DW_TAG_formal_parameter
	.byte	1                       // DW_AT_location
	.byte	86
	.word	.Linfo_string61         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	141                     // DW_AT_decl_line
	.word	1198                    // DW_AT_type
	.byte	28                      // Abbrev [28] 0x7e2:0xd DW_TAG_formal_parameter
	.byte	1                       // DW_AT_location
	.byte	87
	.word	.Linfo_string62         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	142                     // DW_AT_decl_line
	.word	1198                    // DW_AT_type
	.byte	30                      // Abbrev [30] 0x7ef:0x60 DW_TAG_inlined_subroutine
	.word	1509                    // DW_AT_abstract_origin
	.xword	.Lfunc_begin1           // DW_AT_low_pc
	.word	.Ltmp53-.Lfunc_begin1   // DW_AT_high_pc
	.byte	1                       // DW_AT_call_file
	.byte	143                     // DW_AT_call_line
	.byte	31                      // Abbrev [31] 0x802:0x7 DW_TAG_formal_parameter
	.byte	1                       // DW_AT_location
	.byte	80
	.word	1551                    // DW_AT_abstract_origin
	.byte	32                      // Abbrev [32] 0x809:0xa DW_TAG_variable
	.byte	4                       // DW_AT_const_value
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.word	1694                    // DW_AT_abstract_origin
	.byte	32                      // Abbrev [32] 0x813:0xa DW_TAG_variable
	.byte	4                       // DW_AT_const_value
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.word	1705                    // DW_AT_abstract_origin
	.byte	32                      // Abbrev [32] 0x81d:0xa DW_TAG_variable
	.byte	4                       // DW_AT_const_value
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.word	1716                    // DW_AT_abstract_origin
	.byte	33                      // Abbrev [33] 0x827:0x27 DW_TAG_lexical_block
	.xword	.Lfunc_begin1           // DW_AT_low_pc
	.word	.Ltmp48-.Lfunc_begin1   // DW_AT_high_pc
	.byte	34                      // Abbrev [34] 0x834:0x6 DW_TAG_variable
	.byte	0                       // DW_AT_const_value
	.word	1728                    // DW_AT_abstract_origin
	.byte	35                      // Abbrev [35] 0x83a:0x13 DW_TAG_inlined_subroutine
	.word	339                     // DW_AT_abstract_origin
	.xword	.Ltmp43                 // DW_AT_low_pc
	.word	.Ltmp44-.Ltmp43         // DW_AT_high_pc
	.byte	1                       // DW_AT_call_file
	.byte	114                     // DW_AT_call_line
	.byte	0                       // End Of Children Mark
	.byte	0                       // End Of Children Mark
	.byte	0                       // End Of Children Mark
	.byte	19                      // Abbrev [19] 0x850:0x139 DW_TAG_subprogram
	.word	.Linfo_string78         // DW_AT_linkage_name
	.word	.Linfo_string79         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	86                      // DW_AT_decl_line
	.byte	1                       // DW_AT_inline
	.byte	20                      // Abbrev [20] 0x85c:0xa DW_TAG_template_value_parameter
	.word	388                     // DW_AT_type
	.word	.Linfo_string46         // DW_AT_name
	.byte	6                       // DW_AT_const_value
	.byte	21                      // Abbrev [21] 0x866:0x14 DW_TAG_template_value_parameter
	.word	2441                    // DW_AT_type
	.word	.Linfo_string47         // DW_AT_name
	.byte	10                      // DW_AT_location
	.byte	3
	.xword	PolyCoefficients6
	.byte	159
	.byte	22                      // Abbrev [22] 0x87a:0xb DW_TAG_formal_parameter
	.word	.Linfo_string50         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	86                      // DW_AT_decl_line
	.word	388                     // DW_AT_type
	.byte	22                      // Abbrev [22] 0x885:0xb DW_TAG_formal_parameter
	.word	.Linfo_string51         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	86                      // DW_AT_decl_line
	.word	1188                    // DW_AT_type
	.byte	22                      // Abbrev [22] 0x890:0xb DW_TAG_formal_parameter
	.word	.Linfo_string52         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	86                      // DW_AT_decl_line
	.word	1188                    // DW_AT_type
	.byte	22                      // Abbrev [22] 0x89b:0xb DW_TAG_formal_parameter
	.word	.Linfo_string53         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	87                      // DW_AT_decl_line
	.word	1188                    // DW_AT_type
	.byte	22                      // Abbrev [22] 0x8a6:0xb DW_TAG_formal_parameter
	.word	.Linfo_string54         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	87                      // DW_AT_decl_line
	.word	1188                    // DW_AT_type
	.byte	22                      // Abbrev [22] 0x8b1:0xb DW_TAG_formal_parameter
	.word	.Linfo_string55         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	88                      // DW_AT_decl_line
	.word	80                      // DW_AT_type
	.byte	22                      // Abbrev [22] 0x8bc:0xb DW_TAG_formal_parameter
	.word	.Linfo_string56         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	88                      // DW_AT_decl_line
	.word	80                      // DW_AT_type
	.byte	22                      // Abbrev [22] 0x8c7:0xb DW_TAG_formal_parameter
	.word	.Linfo_string57         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	88                      // DW_AT_decl_line
	.word	80                      // DW_AT_type
	.byte	22                      // Abbrev [22] 0x8d2:0xb DW_TAG_formal_parameter
	.word	.Linfo_string58         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	89                      // DW_AT_decl_line
	.word	80                      // DW_AT_type
	.byte	22                      // Abbrev [22] 0x8dd:0xb DW_TAG_formal_parameter
	.word	.Linfo_string59         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	89                      // DW_AT_decl_line
	.word	80                      // DW_AT_type
	.byte	22                      // Abbrev [22] 0x8e8:0xb DW_TAG_formal_parameter
	.word	.Linfo_string60         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	90                      // DW_AT_decl_line
	.word	1198                    // DW_AT_type
	.byte	22                      // Abbrev [22] 0x8f3:0xb DW_TAG_formal_parameter
	.word	.Linfo_string61         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	90                      // DW_AT_decl_line
	.word	1198                    // DW_AT_type
	.byte	22                      // Abbrev [22] 0x8fe:0xb DW_TAG_formal_parameter
	.word	.Linfo_string62         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	91                      // DW_AT_decl_line
	.word	1198                    // DW_AT_type
	.byte	23                      // Abbrev [23] 0x909:0xb DW_TAG_variable
	.word	.Linfo_string63         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	92                      // DW_AT_decl_line
	.word	80                      // DW_AT_type
	.byte	23                      // Abbrev [23] 0x914:0xb DW_TAG_variable
	.word	.Linfo_string64         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	92                      // DW_AT_decl_line
	.word	80                      // DW_AT_type
	.byte	23                      // Abbrev [23] 0x91f:0xb DW_TAG_variable
	.word	.Linfo_string65         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	92                      // DW_AT_decl_line
	.word	80                      // DW_AT_type
	.byte	24                      // Abbrev [24] 0x92a:0x5e DW_TAG_lexical_block
	.byte	23                      // Abbrev [23] 0x92b:0xb DW_TAG_variable
	.word	.Linfo_string66         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	102                     // DW_AT_decl_line
	.word	388                     // DW_AT_type
	.byte	24                      // Abbrev [24] 0x936:0x51 DW_TAG_lexical_block
	.byte	23                      // Abbrev [23] 0x937:0xb DW_TAG_variable
	.word	.Linfo_string67         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	103                     // DW_AT_decl_line
	.word	80                      // DW_AT_type
	.byte	23                      // Abbrev [23] 0x942:0xb DW_TAG_variable
	.word	.Linfo_string68         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	103                     // DW_AT_decl_line
	.word	80                      // DW_AT_type
	.byte	23                      // Abbrev [23] 0x94d:0xb DW_TAG_variable
	.word	.Linfo_string69         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	103                     // DW_AT_decl_line
	.word	80                      // DW_AT_type
	.byte	23                      // Abbrev [23] 0x958:0xb DW_TAG_variable
	.word	.Linfo_string70         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	104                     // DW_AT_decl_line
	.word	80                      // DW_AT_type
	.byte	23                      // Abbrev [23] 0x963:0xb DW_TAG_variable
	.word	.Linfo_string71         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	109                     // DW_AT_decl_line
	.word	80                      // DW_AT_type
	.byte	23                      // Abbrev [23] 0x96e:0xb DW_TAG_variable
	.word	.Linfo_string72         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	110                     // DW_AT_decl_line
	.word	80                      // DW_AT_type
	.byte	24                      // Abbrev [24] 0x979:0xd DW_TAG_lexical_block
	.byte	23                      // Abbrev [23] 0x97a:0xb DW_TAG_variable
	.word	.Linfo_string73         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	111                     // DW_AT_decl_line
	.word	388                     // DW_AT_type
	.byte	0                       // End Of Children Mark
	.byte	0                       // End Of Children Mark
	.byte	0                       // End Of Children Mark
	.byte	0                       // End Of Children Mark
	.byte	25                      // Abbrev [25] 0x989:0x5 DW_TAG_reference_type
	.word	148                     // DW_AT_type
	.byte	27                      // Abbrev [27] 0x98e:0x12d DW_TAG_subprogram
	.xword	.Lfunc_begin2           // DW_AT_low_pc
	.word	.Lfunc_end2-.Lfunc_begin2 // DW_AT_high_pc
	.byte	1                       // DW_AT_frame_base
	.byte	111
	.word	.Linfo_string84         // DW_AT_linkage_name
	.word	.Linfo_string85         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	148                     // DW_AT_decl_line
                                        // DW_AT_external
	.byte	28                      // Abbrev [28] 0x9a7:0xd DW_TAG_formal_parameter
	.byte	1                       // DW_AT_location
	.byte	80
	.word	.Linfo_string50         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	148                     // DW_AT_decl_line
	.word	388                     // DW_AT_type
	.byte	28                      // Abbrev [28] 0x9b4:0xd DW_TAG_formal_parameter
	.byte	1                       // DW_AT_location
	.byte	81
	.word	.Linfo_string51         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	148                     // DW_AT_decl_line
	.word	1188                    // DW_AT_type
	.byte	28                      // Abbrev [28] 0x9c1:0xd DW_TAG_formal_parameter
	.byte	1                       // DW_AT_location
	.byte	82
	.word	.Linfo_string52         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	148                     // DW_AT_decl_line
	.word	1188                    // DW_AT_type
	.byte	28                      // Abbrev [28] 0x9ce:0xd DW_TAG_formal_parameter
	.byte	1                       // DW_AT_location
	.byte	83
	.word	.Linfo_string53         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	149                     // DW_AT_decl_line
	.word	1188                    // DW_AT_type
	.byte	28                      // Abbrev [28] 0x9db:0xd DW_TAG_formal_parameter
	.byte	1                       // DW_AT_location
	.byte	84
	.word	.Linfo_string54         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	149                     // DW_AT_decl_line
	.word	1188                    // DW_AT_type
	.byte	29                      // Abbrev [29] 0x9e8:0xf DW_TAG_formal_parameter
	.word	.Ldebug_loc10           // DW_AT_location
	.word	.Linfo_string55         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	150                     // DW_AT_decl_line
	.word	80                      // DW_AT_type
	.byte	29                      // Abbrev [29] 0x9f7:0xf DW_TAG_formal_parameter
	.word	.Ldebug_loc11           // DW_AT_location
	.word	.Linfo_string56         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	150                     // DW_AT_decl_line
	.word	80                      // DW_AT_type
	.byte	29                      // Abbrev [29] 0xa06:0xf DW_TAG_formal_parameter
	.word	.Ldebug_loc12           // DW_AT_location
	.word	.Linfo_string57         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	150                     // DW_AT_decl_line
	.word	80                      // DW_AT_type
	.byte	29                      // Abbrev [29] 0xa15:0xf DW_TAG_formal_parameter
	.word	.Ldebug_loc13           // DW_AT_location
	.word	.Linfo_string58         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	151                     // DW_AT_decl_line
	.word	80                      // DW_AT_type
	.byte	29                      // Abbrev [29] 0xa24:0xf DW_TAG_formal_parameter
	.word	.Ldebug_loc14           // DW_AT_location
	.word	.Linfo_string59         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	151                     // DW_AT_decl_line
	.word	80                      // DW_AT_type
	.byte	28                      // Abbrev [28] 0xa33:0xd DW_TAG_formal_parameter
	.byte	1                       // DW_AT_location
	.byte	85
	.word	.Linfo_string60         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	152                     // DW_AT_decl_line
	.word	1198                    // DW_AT_type
	.byte	28                      // Abbrev [28] 0xa40:0xd DW_TAG_formal_parameter
	.byte	1                       // DW_AT_location
	.byte	86
	.word	.Linfo_string61         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	152                     // DW_AT_decl_line
	.word	1198                    // DW_AT_type
	.byte	28                      // Abbrev [28] 0xa4d:0xd DW_TAG_formal_parameter
	.byte	1                       // DW_AT_location
	.byte	87
	.word	.Linfo_string62         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	153                     // DW_AT_decl_line
	.word	1198                    // DW_AT_type
	.byte	30                      // Abbrev [30] 0xa5a:0x60 DW_TAG_inlined_subroutine
	.word	2128                    // DW_AT_abstract_origin
	.xword	.Lfunc_begin2           // DW_AT_low_pc
	.word	.Ltmp80-.Lfunc_begin2   // DW_AT_high_pc
	.byte	1                       // DW_AT_call_file
	.byte	154                     // DW_AT_call_line
	.byte	31                      // Abbrev [31] 0xa6d:0x7 DW_TAG_formal_parameter
	.byte	1                       // DW_AT_location
	.byte	80
	.word	2170                    // DW_AT_abstract_origin
	.byte	32                      // Abbrev [32] 0xa74:0xa DW_TAG_variable
	.byte	4                       // DW_AT_const_value
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.word	2313                    // DW_AT_abstract_origin
	.byte	32                      // Abbrev [32] 0xa7e:0xa DW_TAG_variable
	.byte	4                       // DW_AT_const_value
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.word	2324                    // DW_AT_abstract_origin
	.byte	32                      // Abbrev [32] 0xa88:0xa DW_TAG_variable
	.byte	4                       // DW_AT_const_value
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.word	2335                    // DW_AT_abstract_origin
	.byte	33                      // Abbrev [33] 0xa92:0x27 DW_TAG_lexical_block
	.xword	.Lfunc_begin2           // DW_AT_low_pc
	.word	.Ltmp75-.Lfunc_begin2   // DW_AT_high_pc
	.byte	34                      // Abbrev [34] 0xa9f:0x6 DW_TAG_variable
	.byte	0                       // DW_AT_const_value
	.word	2347                    // DW_AT_abstract_origin
	.byte	35                      // Abbrev [35] 0xaa5:0x13 DW_TAG_inlined_subroutine
	.word	339                     // DW_AT_abstract_origin
	.xword	.Ltmp70                 // DW_AT_low_pc
	.word	.Ltmp71-.Ltmp70         // DW_AT_high_pc
	.byte	1                       // DW_AT_call_file
	.byte	114                     // DW_AT_call_line
	.byte	0                       // End Of Children Mark
	.byte	0                       // End Of Children Mark
	.byte	0                       // End Of Children Mark
	.byte	0                       // End Of Children Mark
	.section	.debug_ranges,"",@progbits
	.section	.debug_macinfo,"",@progbits
.Lcu_macro_begin0:
	.byte	0                       // End Of Macro List Mark
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end0-.LpubNames_begin0 // Length of Public Names Info
.LpubNames_begin0:
	.hword	2                       // DWARF Version
	.word	.Lcu_begin0             // Offset of Compilation Unit Info
	.word	2748                    // Compilation Unit Length
	.word	870                     // DIE offset
	.asciz	"GravityForceKernel<4, &PolyCoefficients4>" // External Name
	.word	1827                    // DIE offset
	.asciz	"GravityForceKernel5"   // External Name
	.word	1509                    // DIE offset
	.asciz	"GravityForceKernel<5, &PolyCoefficients5>" // External Name
	.word	2128                    // DIE offset
	.asciz	"GravityForceKernel<6, &PolyCoefficients6>" // External Name
	.word	339                     // DIE offset
	.asciz	"std::sqrt"             // External Name
	.word	42                      // DIE offset
	.asciz	"PolyCoefficients4"     // External Name
	.word	94                      // DIE offset
	.asciz	"PolyCoefficients5"     // External Name
	.word	127                     // DIE offset
	.asciz	"PolyCoefficients6"     // External Name
	.word	1208                    // DIE offset
	.asciz	"GravityForceKernel4"   // External Name
	.word	160                     // DIE offset
	.asciz	"std"                   // External Name
	.word	2446                    // DIE offset
	.asciz	"GravityForceKernel6"   // External Name
	.word	0                       // End Mark
.LpubNames_end0:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end0-.LpubTypes_begin0 // Length of Public Types Info
.LpubTypes_begin0:
	.hword	2                       // DWARF Version
	.word	.Lcu_begin0             // Offset of Compilation Unit Info
	.word	2748                    // Compilation Unit Length
	.word	80                      // DIE offset
	.asciz	"float"                 // External Name
	.word	388                     // DIE offset
	.asciz	"int"                   // External Name
	.word	416                     // DIE offset
	.asciz	"double"                // External Name
	.word	0                       // End Mark
.LpubTypes_end0:

	.ident	"Arm C/C++/Fortran Compiler version 18.4 (build number 40) (based on LLVM 5.0.2)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
