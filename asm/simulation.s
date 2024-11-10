	.file	"simulation.cpp"
	.intel_syntax noprefix
	.text
	.section .rdata,"dr"
.LC2:
	.ascii "vector::_M_default_append\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN5Lenia10SimulationC2EyyyRKNS_12ColorPaletteE
	.def	_ZN5Lenia10SimulationC2EyyyRKNS_12ColorPaletteE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Lenia10SimulationC2EyyyRKNS_12ColorPaletteE
_ZN5Lenia10SimulationC2EyyyRKNS_12ColorPaletteE:
.LFB7098:
	push	r15
	.seh_pushreg	r15
	push	r14
	.seh_pushreg	r14
	push	r13
	.seh_pushreg	r13
	push	r12
	.seh_pushreg	r12
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 360
	.seh_stackalloc	360
	.seh_endprologue
	mov	r13, QWORD PTR .refptr.glad_glGenBuffers[rip]
	vpxor	xmm0, xmm0, xmm0
	mov	rbp, QWORD PTR 464[rsp]
	mov	rsi, rdx
	lea	r15, 80[rsp]
	mov	QWORD PTR [rcx], rdx
	mov	rbx, rcx
	imul	rsi, r8
	mov	QWORD PTR 8[rcx], r8
	mov	rdx, r15
	mov	QWORD PTR 72[rcx], 0
	mov	QWORD PTR 104[rcx], 0
	mov	QWORD PTR 136[rcx], 0
	mov	QWORD PTR 168[rcx], 0
	mov	QWORD PTR 200[rcx], 0
	mov	QWORD PTR 16[rcx], r9
	mov	QWORD PTR 24[rcx], rsi
	mov	QWORD PTR 32[rcx], 0x000000000
	mov	QWORD PTR 40[rcx], 0
	vmovdqu	XMMWORD PTR 56[rcx], xmm0
	vmovdqu	XMMWORD PTR 88[rcx], xmm0
	vmovdqu	XMMWORD PTR 120[rcx], xmm0
	vmovdqu	XMMWORD PTR 152[rcx], xmm0
	vmovdqu	XMMWORD PTR 184[rcx], xmm0
	mov	ecx, 1
	mov	QWORD PTR 104[rsp], 0
	vmovdqu	XMMWORD PTR 88[rsp], xmm0
.LEHB0:
	call	[QWORD PTR 0[r13]]
	mov	rcx, QWORD PTR 88[rsp]
	vpxor	xmm0, xmm0, xmm0
	mov	rdx, QWORD PTR 104[rsp]
	mov	DWORD PTR 84[rsp], 1
	mov	QWORD PTR 104[rsp], 0
	mov	eax, 1
	vmovdqu	XMMWORD PTR 88[rsp], xmm0
	test	rcx, rcx
	je	.L2
	sub	rdx, rcx
	call	_ZdlPvy
	movzx	eax, BYTE PTR 84[rsp]
.L2:
	mov	r12, QWORD PTR .refptr.glad_glBindBufferBase[rip]
	mov	r8d, DWORD PTR 80[rsp]
	mov	edx, eax
	mov	ecx, 37074
	call	[QWORD PTR [r12]]
.LEHE0:
	mov	rax, QWORD PTR 96[rsp]
	mov	r14, QWORD PTR 88[rsp]
	mov	rdi, QWORD PTR 104[rsp]
	mov	r9, rax
	sub	r9, r14
	mov	rcx, r9
	sar	rcx, 2
	cmp	rcx, rsi
	jb	.L177
	lea	rdx, [r14+rsi*4]
	cmp	rsi, rcx
	cmovb	rax, rdx
.L10:
	mov	rdx, QWORD PTR 80[rsp]
	mov	rcx, QWORD PTR 56[rbx]
	vpxor	xmm0, xmm0, xmm0
	mov	QWORD PTR 56[rbx], r14
	mov	QWORD PTR 64[rbx], rax
	mov	QWORD PTR 48[rbx], rdx
	mov	rdx, QWORD PTR 72[rbx]
	mov	QWORD PTR 104[rsp], 0
	mov	QWORD PTR 72[rbx], rdi
	vmovdqu	XMMWORD PTR 88[rsp], xmm0
	test	rcx, rcx
	je	.L19
	sub	rdx, rcx
	call	_ZdlPvy
	mov	rcx, QWORD PTR 88[rsp]
	mov	rdx, QWORD PTR 104[rsp]
	sub	rdx, rcx
	test	rcx, rcx
	je	.L19
	call	_ZdlPvy
.L19:
	vpxor	xmm0, xmm0, xmm0
	mov	rdi, QWORD PTR 24[rbx]
	mov	rdx, r15
	mov	ecx, 1
	mov	QWORD PTR 104[rsp], 0
	vmovdqu	XMMWORD PTR 88[rsp], xmm0
.LEHB1:
	call	[QWORD PTR 0[r13]]
	mov	rcx, QWORD PTR 88[rsp]
	vpxor	xmm0, xmm0, xmm0
	mov	rdx, QWORD PTR 104[rsp]
	xor	eax, eax
	mov	DWORD PTR 84[rsp], 0
	mov	QWORD PTR 104[rsp], 0
	vmovdqu	XMMWORD PTR 88[rsp], xmm0
	test	rcx, rcx
	je	.L23
	sub	rdx, rcx
	call	_ZdlPvy
	movzx	eax, BYTE PTR 84[rsp]
.L23:
	mov	r8d, DWORD PTR 80[rsp]
	mov	edx, eax
	mov	ecx, 37074
	call	[QWORD PTR [r12]]
.LEHE1:
	mov	rax, QWORD PTR 96[rsp]
	mov	r14, QWORD PTR 88[rsp]
	mov	rsi, QWORD PTR 104[rsp]
	mov	r9, rax
	sub	r9, r14
	mov	rcx, r9
	sar	rcx, 2
	cmp	rcx, rdi
	jb	.L178
	lea	rdx, [r14+rdi*4]
	cmp	rdi, rcx
	cmovb	rax, rdx
.L30:
	mov	rdx, QWORD PTR 80[rsp]
	mov	rcx, QWORD PTR 88[rbx]
	vpxor	xmm0, xmm0, xmm0
	mov	QWORD PTR 88[rbx], r14
	mov	QWORD PTR 96[rbx], rax
	mov	QWORD PTR 80[rbx], rdx
	mov	rdx, QWORD PTR 104[rbx]
	mov	QWORD PTR 104[rsp], 0
	mov	QWORD PTR 104[rbx], rsi
	vmovdqu	XMMWORD PTR 88[rsp], xmm0
	test	rcx, rcx
	je	.L39
	sub	rdx, rcx
	call	_ZdlPvy
	mov	rcx, QWORD PTR 88[rsp]
	mov	rdx, QWORD PTR 104[rsp]
	sub	rdx, rcx
	test	rcx, rcx
	je	.L39
	call	_ZdlPvy
.L39:
	mov	ecx, 12
.LEHB2:
	call	_Znwy
.LEHE2:
	mov	QWORD PTR [rax], 0
	mov	rdi, rax
	mov	ecx, 12
	vpxor	xmm0, xmm0, xmm0
	mov	DWORD PTR 8[rax], 0
	movabs	rax, 12884901888
	mov	QWORD PTR 80[rsp], rax
	mov	QWORD PTR 104[rsp], 0
	vmovdqu	XMMWORD PTR 88[rsp], xmm0
.LEHB3:
	call	_Znwy
	mov	rsi, rax
	mov	rax, QWORD PTR [rdi]
	mov	rcx, QWORD PTR 88[rsp]
	mov	QWORD PTR [rsi], rax
	mov	eax, DWORD PTR 8[rdi]
	mov	DWORD PTR 8[rsi], eax
	test	rcx, rcx
	je	.L43
	mov	rdx, QWORD PTR 104[rsp]
	sub	rdx, rcx
	call	_ZdlPvy
.L43:
	mov	QWORD PTR 88[rsp], rsi
	add	rsi, 12
	mov	rdx, r15
	mov	ecx, 1
	mov	QWORD PTR 104[rsp], rsi
	mov	QWORD PTR 96[rsp], rsi
	call	[QWORD PTR 0[r13]]
	movzx	edx, BYTE PTR 84[rsp]
	mov	r8d, DWORD PTR 80[rsp]
	mov	ecx, 37074
	call	[QWORD PTR [r12]]
	mov	r8, QWORD PTR 88[rsp]
	mov	rdx, QWORD PTR 96[rsp]
	mov	r9d, 35050
	mov	r14, QWORD PTR .refptr.glad_glNamedBufferData[rip]
	mov	ecx, DWORD PTR 80[rsp]
	sub	rdx, r8
	call	[QWORD PTR [r14]]
.LEHE3:
	mov	rax, QWORD PTR 80[rsp]
	vmovdqu	xmm0, XMMWORD PTR 88[rsp]
	mov	rcx, QWORD PTR 120[rbx]
	mov	rdx, QWORD PTR 136[rbx]
	mov	QWORD PTR 112[rbx], rax
	mov	rax, QWORD PTR 104[rsp]
	vmovdqu	XMMWORD PTR 120[rbx], xmm0
	vpxor	xmm0, xmm0, xmm0
	mov	QWORD PTR 136[rbx], rax
	mov	QWORD PTR 104[rsp], 0
	vmovdqu	XMMWORD PTR 88[rsp], xmm0
	test	rcx, rcx
	je	.L48
	sub	rdx, rcx
	call	_ZdlPvy
	mov	rcx, QWORD PTR 88[rsp]
	mov	rdx, QWORD PTR 104[rsp]
	sub	rdx, rcx
	test	rcx, rcx
	je	.L48
	call	_ZdlPvy
.L48:
	mov	rcx, rdi
	mov	edx, 12
	call	_ZdlPvy
	vmovdqu64	zmm0, ZMMWORD PTR 0[rbp]
	mov	ecx, 272
	vmovdqu	xmm1, XMMWORD PTR 256[rbp]
	vmovdqu64	ZMMWORD PTR 80[rsp], zmm0
	vmovdqu64	zmm0, ZMMWORD PTR 64[rbp]
	vmovdqu	XMMWORD PTR 336[rsp], xmm1
	vmovdqu64	ZMMWORD PTR 144[rsp], zmm0
	vmovdqu64	zmm0, ZMMWORD PTR 128[rbp]
	vmovdqu64	ZMMWORD PTR 208[rsp], zmm0
	vmovdqu64	zmm0, ZMMWORD PTR 192[rbp]
	vmovdqu64	ZMMWORD PTR 272[rsp], zmm0
	vzeroupper
.LEHB4:
	call	_Znwy
.LEHE4:
	vmovdqu64	zmm0, ZMMWORD PTR 80[rsp]
	mov	rsi, rax
	vmovdqu	xmm2, XMMWORD PTR 336[rsp]
	mov	QWORD PTR 72[rsp], 0
	mov	ecx, 272
	vmovdqu64	ZMMWORD PTR [rax], zmm0
	vmovdqu64	zmm0, ZMMWORD PTR 144[rsp]
	vmovdqu	XMMWORD PTR 256[rax], xmm2
	vmovdqu64	ZMMWORD PTR 64[rax], zmm0
	vmovdqu64	zmm0, ZMMWORD PTR 208[rsp]
	vmovdqu64	ZMMWORD PTR 128[rax], zmm0
	vmovdqu64	zmm0, ZMMWORD PTR 272[rsp]
	vmovdqu64	ZMMWORD PTR 192[rax], zmm0
	vpxor	xmm0, xmm0, xmm0
	movabs	rax, 17179869184
	mov	QWORD PTR 48[rsp], rax
	vmovdqu	XMMWORD PTR 56[rsp], xmm0
	vzeroupper
.LEHB5:
	call	_Znwy
	vmovdqu64	zmm0, ZMMWORD PTR [rsi]
	mov	rcx, QWORD PTR 56[rsp]
	mov	rdi, rax
	vmovdqu	xmm3, XMMWORD PTR 256[rsi]
	vmovdqu64	ZMMWORD PTR [rax], zmm0
	vmovdqu64	zmm0, ZMMWORD PTR 64[rsi]
	vmovdqu	XMMWORD PTR 256[rax], xmm3
	vmovdqu64	ZMMWORD PTR 64[rax], zmm0
	vmovdqu64	zmm0, ZMMWORD PTR 128[rsi]
	vmovdqu64	ZMMWORD PTR 128[rax], zmm0
	vmovdqu64	zmm0, ZMMWORD PTR 192[rsi]
	vmovdqu64	ZMMWORD PTR 192[rax], zmm0
	test	rcx, rcx
	je	.L165
	mov	rdx, QWORD PTR 72[rsp]
	sub	rdx, rcx
	vzeroupper
	call	_ZdlPvy
.L49:
	mov	QWORD PTR 56[rsp], rdi
	lea	rdx, 48[rsp]
	mov	ecx, 1
	add	rdi, 272
	mov	QWORD PTR 72[rsp], rdi
	mov	QWORD PTR 64[rsp], rdi
	call	[QWORD PTR 0[r13]]
	movzx	edx, BYTE PTR 52[rsp]
	mov	r8d, DWORD PTR 48[rsp]
	mov	ecx, 37074
	call	[QWORD PTR [r12]]
	mov	r8, QWORD PTR 56[rsp]
	mov	ecx, DWORD PTR 48[rsp]
	mov	r9d, 35050
	mov	rdx, QWORD PTR 64[rsp]
	sub	rdx, r8
	call	[QWORD PTR [r14]]
.LEHE5:
	mov	rax, QWORD PTR 48[rsp]
	vmovdqu	xmm0, XMMWORD PTR 56[rsp]
	mov	rcx, QWORD PTR 152[rbx]
	mov	rdx, QWORD PTR 168[rbx]
	mov	QWORD PTR 144[rbx], rax
	mov	rax, QWORD PTR 72[rsp]
	vmovdqu	XMMWORD PTR 152[rbx], xmm0
	vpxor	xmm0, xmm0, xmm0
	mov	QWORD PTR 168[rbx], rax
	mov	QWORD PTR 72[rsp], 0
	vmovdqu	XMMWORD PTR 56[rsp], xmm0
	test	rcx, rcx
	je	.L54
	sub	rdx, rcx
	call	_ZdlPvy
	mov	rcx, QWORD PTR 56[rsp]
	mov	rdx, QWORD PTR 72[rsp]
	sub	rdx, rcx
	test	rcx, rcx
	je	.L54
	call	_ZdlPvy
.L54:
	mov	edx, 272
	mov	rcx, rsi
	call	_ZdlPvy
	vpxor	xmm0, xmm0, xmm0
	mov	rdx, r15
	mov	QWORD PTR 104[rsp], 0
	vmovdqu	XMMWORD PTR 88[rsp], xmm0
	mov	ecx, 1
.LEHB6:
	call	[QWORD PTR 0[r13]]
	mov	rcx, QWORD PTR 88[rsp]
	vpxor	xmm0, xmm0, xmm0
	mov	rdx, QWORD PTR 104[rsp]
	mov	DWORD PTR 84[rsp], 5
	mov	QWORD PTR 104[rsp], 0
	mov	eax, 5
	vmovdqu	XMMWORD PTR 88[rsp], xmm0
	test	rcx, rcx
	je	.L55
	sub	rdx, rcx
	call	_ZdlPvy
	movzx	eax, BYTE PTR 84[rsp]
.L55:
	mov	r8d, DWORD PTR 80[rsp]
	mov	edx, eax
	mov	ecx, 37074
	call	[QWORD PTR [r12]]
.LEHE6:
	mov	rax, QWORD PTR 80[rsp]
	vmovdqu	xmm0, XMMWORD PTR 88[rsp]
	mov	rcx, QWORD PTR 184[rbx]
	mov	rdx, QWORD PTR 200[rbx]
	mov	QWORD PTR 176[rbx], rax
	mov	rax, QWORD PTR 104[rsp]
	vmovdqu	XMMWORD PTR 184[rbx], xmm0
	vpxor	xmm0, xmm0, xmm0
	mov	QWORD PTR 200[rbx], rax
	mov	QWORD PTR 104[rsp], 0
	vmovdqu	XMMWORD PTR 88[rsp], xmm0
	test	rcx, rcx
	je	.L60
	sub	rdx, rcx
	call	_ZdlPvy
	mov	rcx, QWORD PTR 88[rsp]
	mov	rdx, QWORD PTR 104[rsp]
	sub	rdx, rcx
	test	rcx, rcx
	je	.L60
	call	_ZdlPvy
.L60:
	mov	r8, QWORD PTR 152[rbx]
	vmovdqu64	zmm0, ZMMWORD PTR 0[rbp]
	mov	r9d, 35050
	mov	rdx, QWORD PTR 160[rbx]
	mov	ecx, DWORD PTR 144[rbx]
	vmovdqu64	ZMMWORD PTR [r8], zmm0
	vmovdqu64	zmm0, ZMMWORD PTR 64[rbp]
	sub	rdx, r8
	vmovdqu64	ZMMWORD PTR 64[r8], zmm0
	vmovdqu64	zmm0, ZMMWORD PTR 128[rbp]
	vmovdqu64	ZMMWORD PTR 128[r8], zmm0
	vmovdqu64	zmm0, ZMMWORD PTR 192[rbp]
	vmovdqu64	ZMMWORD PTR 192[r8], zmm0
	vmovdqu	xmm4, XMMWORD PTR 256[rbp]
	vmovdqu	XMMWORD PTR 256[r8], xmm4
	vzeroupper
	call	[QWORD PTR [r14]]
	nop
	add	rsp, 360
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
	.p2align 4,,10
	.p2align 3
.L165:
	vzeroupper
	jmp	.L49
	.p2align 4,,10
	.p2align 3
.L178:
	mov	r8, rsi
	mov	rdx, rdi
	sub	r8, rax
	sub	rdx, rcx
	sar	r8, 2
	cmp	r8, rdx
	jnb	.L179
	movabs	rax, 2305843009213693951
	sub	rax, rcx
	cmp	rax, rdx
	jb	.L180
	cmp	rcx, rdx
	mov	rsi, rdx
	mov	QWORD PTR 40[rsp], r9
	movabs	rax, 2305843009213693951
	cmovnb	rsi, rcx
	mov	QWORD PTR 32[rsp], rdx
	add	rsi, rcx
	cmp	rsi, rax
	cmova	rsi, rax
	sal	rsi, 2
	mov	rcx, rsi
.LEHB7:
	call	_Znwy
.LEHE7:
	mov	r9, QWORD PTR 40[rsp]
	mov	rdx, QWORD PTR 32[rsp]
	mov	r10, rax
	lea	rax, [rax+r9]
	mov	DWORD PTR [rax], 0x00000000
	sub	rdx, 1
	je	.L35
	lea	r8, 0[0+rdx*4]
	lea	rcx, 4[rax]
	xor	edx, edx
	mov	QWORD PTR 40[rsp], r10
	mov	QWORD PTR 32[rsp], r9
	call	memset
	mov	r9, QWORD PTR 32[rsp]
	mov	r10, QWORD PTR 40[rsp]
.L35:
	mov	r11, QWORD PTR 104[rsp]
	test	r9, r9
	jne	.L181
	test	r14, r14
	jne	.L36
.L37:
	lea	rax, [r10+rdi*4]
	add	rsi, r10
	mov	r14, r10
	jmp	.L30
	.p2align 4,,10
	.p2align 3
.L177:
	mov	r8, rdi
	mov	rdx, rsi
	sub	r8, rax
	sub	rdx, rcx
	sar	r8, 2
	cmp	r8, rdx
	jnb	.L182
	movabs	rax, 2305843009213693951
	sub	rax, rcx
	cmp	rax, rdx
	jb	.L183
	cmp	rcx, rdx
	mov	rdi, rdx
	mov	QWORD PTR 40[rsp], r9
	movabs	rax, 2305843009213693951
	cmovnb	rdi, rcx
	mov	QWORD PTR 32[rsp], rdx
	add	rdi, rcx
	cmp	rdi, rax
	cmova	rdi, rax
	sal	rdi, 2
	mov	rcx, rdi
.LEHB8:
	call	_Znwy
	mov	r9, QWORD PTR 40[rsp]
	mov	rdx, QWORD PTR 32[rsp]
	mov	r10, rax
	lea	rax, [rax+r9]
	mov	DWORD PTR [rax], 0x00000000
	sub	rdx, 1
	je	.L15
	lea	r8, 0[0+rdx*4]
	lea	rcx, 4[rax]
	xor	edx, edx
	mov	QWORD PTR 40[rsp], r10
	mov	QWORD PTR 32[rsp], r9
	call	memset
	mov	r9, QWORD PTR 32[rsp]
	mov	r10, QWORD PTR 40[rsp]
.L15:
	mov	r11, QWORD PTR 104[rsp]
	test	r9, r9
	jne	.L184
	test	r14, r14
	jne	.L16
.L17:
	lea	rax, [r10+rsi*4]
	add	rdi, r10
	mov	r14, r10
	jmp	.L10
	.p2align 4,,10
	.p2align 3
.L182:
	mov	DWORD PTR [rax], 0x00000000
	lea	rcx, 4[rax]
	sub	rdx, 1
	je	.L68
	lea	rsi, [rcx+rdx*4]
	mov	rdx, rsi
	sub	rdx, rax
	lea	r8, -4[rdx]
	xor	edx, edx
	call	memset
	mov	rax, rsi
	jmp	.L10
	.p2align 4,,10
	.p2align 3
.L179:
	mov	DWORD PTR [rax], 0x00000000
	lea	rcx, 4[rax]
	sub	rdx, 1
	je	.L70
	lea	rdi, [rcx+rdx*4]
	mov	rdx, rdi
	sub	rdx, rax
	lea	r8, -4[rdx]
	xor	edx, edx
	call	memset
	mov	rax, rdi
	jmp	.L30
	.p2align 4,,10
	.p2align 3
.L184:
	mov	rcx, r10
	mov	r8, r9
	mov	rdx, r14
	mov	QWORD PTR 32[rsp], r11
	call	memcpy
	mov	r11, QWORD PTR 32[rsp]
	mov	r10, rax
.L16:
	mov	rdx, r11
	mov	rcx, r14
	mov	QWORD PTR 32[rsp], r10
	sub	rdx, r14
	call	_ZdlPvy
	mov	r10, QWORD PTR 32[rsp]
	jmp	.L17
	.p2align 4,,10
	.p2align 3
.L181:
	mov	rcx, r10
	mov	r8, r9
	mov	rdx, r14
	mov	QWORD PTR 32[rsp], r11
	call	memcpy
	mov	r11, QWORD PTR 32[rsp]
	mov	r10, rax
.L36:
	mov	rdx, r11
	mov	rcx, r14
	mov	QWORD PTR 32[rsp], r10
	sub	rdx, r14
	call	_ZdlPvy
	mov	r10, QWORD PTR 32[rsp]
	jmp	.L37
	.p2align 4,,10
	.p2align 3
.L70:
	mov	rax, rcx
	jmp	.L30
	.p2align 4,,10
	.p2align 3
.L68:
	mov	rax, rcx
	jmp	.L10
.L183:
	lea	rcx, .LC2[rip]
	call	_ZSt20__throw_length_errorPKc
.LEHE8:
.L78:
	mov	rcx, QWORD PTR 56[rsp]
	mov	rdx, QWORD PTR 72[rsp]
	mov	rdi, rax
	sub	rdx, rcx
	test	rcx, rcx
	jne	.L185
	vzeroupper
.L52:
	mov	rcx, rsi
	mov	edx, 272
	mov	rsi, rdi
	call	_ZdlPvy
	jmp	.L6
.L77:
	mov	rcx, QWORD PTR 88[rsp]
	mov	rdx, QWORD PTR 104[rsp]
	mov	rsi, rax
	sub	rdx, rcx
	test	rcx, rcx
	jne	.L186
	vzeroupper
.L46:
	mov	edx, 12
	mov	rcx, rdi
	call	_ZdlPvy
	jmp	.L6
.L72:
	mov	rsi, rax
	vzeroupper
.L6:
	mov	rcx, QWORD PTR 184[rbx]
	mov	rdx, QWORD PTR 200[rbx]
	sub	rdx, rcx
	test	rcx, rcx
	je	.L62
	call	_ZdlPvy
.L62:
	mov	rcx, QWORD PTR 152[rbx]
	mov	rdx, QWORD PTR 168[rbx]
	sub	rdx, rcx
	test	rcx, rcx
	je	.L63
	call	_ZdlPvy
.L63:
	mov	rcx, QWORD PTR 120[rbx]
	mov	rdx, QWORD PTR 136[rbx]
	sub	rdx, rcx
	test	rcx, rcx
	je	.L64
	call	_ZdlPvy
.L64:
	mov	rcx, QWORD PTR 88[rbx]
	mov	rdx, QWORD PTR 104[rbx]
	sub	rdx, rcx
	test	rcx, rcx
	je	.L65
	call	_ZdlPvy
.L65:
	mov	rcx, QWORD PTR 56[rbx]
	mov	rdx, QWORD PTR 72[rbx]
	sub	rdx, rcx
	test	rcx, rcx
	je	.L66
	call	_ZdlPvy
.L66:
	mov	rcx, rsi
.LEHB9:
	call	_Unwind_Resume
.LEHE9:
.L186:
	vzeroupper
	call	_ZdlPvy
	jmp	.L46
.L79:
.L172:
	mov	rcx, QWORD PTR 88[rsp]
	mov	rdx, QWORD PTR 104[rsp]
	mov	rsi, rax
	sub	rdx, rcx
	test	rcx, rcx
	je	.L167
	vzeroupper
	call	_ZdlPvy
	jmp	.L6
.L75:
	jmp	.L172
.L180:
	lea	rcx, .LC2[rip]
.LEHB10:
	call	_ZSt20__throw_length_errorPKc
.LEHE10:
.L73:
	jmp	.L172
.L167:
	vzeroupper
	jmp	.L6
.L76:
	jmp	.L172
.L74:
	jmp	.L172
.L185:
	vzeroupper
	call	_ZdlPvy
	jmp	.L52
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA7098:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7098-.LLSDACSB7098
.LLSDACSB7098:
	.uleb128 .LEHB0-.LFB7098
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L74-.LFB7098
	.uleb128 0
	.uleb128 .LEHB1-.LFB7098
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L76-.LFB7098
	.uleb128 0
	.uleb128 .LEHB2-.LFB7098
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L72-.LFB7098
	.uleb128 0
	.uleb128 .LEHB3-.LFB7098
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L77-.LFB7098
	.uleb128 0
	.uleb128 .LEHB4-.LFB7098
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L72-.LFB7098
	.uleb128 0
	.uleb128 .LEHB5-.LFB7098
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L78-.LFB7098
	.uleb128 0
	.uleb128 .LEHB6-.LFB7098
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L79-.LFB7098
	.uleb128 0
	.uleb128 .LEHB7-.LFB7098
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L75-.LFB7098
	.uleb128 0
	.uleb128 .LEHB8-.LFB7098
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L73-.LFB7098
	.uleb128 0
	.uleb128 .LEHB9-.LFB7098
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB10-.LFB7098
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L75-.LFB7098
	.uleb128 0
.LLSDACSE7098:
	.text
	.seh_endproc
	.globl	_ZN5Lenia10SimulationC1EyyyRKNS_12ColorPaletteE
	.def	_ZN5Lenia10SimulationC1EyyyRKNS_12ColorPaletteE;	.scl	2;	.type	32;	.endef
	.set	_ZN5Lenia10SimulationC1EyyyRKNS_12ColorPaletteE,_ZN5Lenia10SimulationC2EyyyRKNS_12ColorPaletteE
	.align 2
	.p2align 4
	.globl	_ZN5Lenia10SimulationD2Ev
	.def	_ZN5Lenia10SimulationD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Lenia10SimulationD2Ev
_ZN5Lenia10SimulationD2Ev:
.LFB7101:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.glad_glDeleteBuffers[rip]
	mov	rbx, rcx
	lea	rdx, 48[rcx]
	mov	ecx, 1
	call	[QWORD PTR [rsi]]
	mov	ecx, 1
	lea	rdx, 80[rbx]
	call	[QWORD PTR [rsi]]
	mov	rcx, QWORD PTR 184[rbx]
	test	rcx, rcx
	je	.L188
	mov	rdx, QWORD PTR 200[rbx]
	sub	rdx, rcx
	call	_ZdlPvy
.L188:
	mov	rcx, QWORD PTR 152[rbx]
	test	rcx, rcx
	je	.L189
	mov	rdx, QWORD PTR 168[rbx]
	sub	rdx, rcx
	call	_ZdlPvy
.L189:
	mov	rcx, QWORD PTR 120[rbx]
	test	rcx, rcx
	je	.L190
	mov	rdx, QWORD PTR 136[rbx]
	sub	rdx, rcx
	call	_ZdlPvy
.L190:
	mov	rcx, QWORD PTR 88[rbx]
	test	rcx, rcx
	je	.L191
	mov	rdx, QWORD PTR 104[rbx]
	sub	rdx, rcx
	call	_ZdlPvy
.L191:
	mov	rcx, QWORD PTR 56[rbx]
	test	rcx, rcx
	je	.L205
	mov	rdx, QWORD PTR 72[rbx]
	sub	rdx, rcx
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	_ZdlPvy
	.p2align 4,,10
	.p2align 3
.L205:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA7101:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7101-.LLSDACSB7101
.LLSDACSB7101:
.LLSDACSE7101:
	.text
	.seh_endproc
	.globl	_ZN5Lenia10SimulationD1Ev
	.def	_ZN5Lenia10SimulationD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN5Lenia10SimulationD1Ev,_ZN5Lenia10SimulationD2Ev
	.align 2
	.p2align 4
	.globl	_ZN5Lenia10Simulation11PlaceAnimalEPNS_6AnimalEjj
	.def	_ZN5Lenia10Simulation11PlaceAnimalEPNS_6AnimalEjj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Lenia10Simulation11PlaceAnimalEPNS_6AnimalEjj
_ZN5Lenia10Simulation11PlaceAnimalEPNS_6AnimalEjj:
.LFB7103:
	push	r15
	.seh_pushreg	r15
	push	r14
	.seh_pushreg	r14
	push	r13
	.seh_pushreg	r13
	push	r12
	.seh_pushreg	r12
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 104
	.seh_stackalloc	104
	vmovups	XMMWORD PTR 80[rsp], xmm6
	.seh_savexmm	xmm6, 80
	.seh_endprologue
	mov	rdi, rcx
	mov	rbp, rdx
	mov	rcx, rdx
	mov	esi, r8d
	mov	r12d, r9d
	call	_ZN5Lenia6Animal8GetCellsEv
	mov	rbx, QWORD PTR 8[rbp]
	mov	r8, QWORD PTR 56[rdi]
	vmovq	xmm6, rax
	test	rbx, rbx
	je	.L207
	mov	rdx, QWORD PTR 0[rbp]
	test	rdx, rdx
	je	.L207
	mov	r15, QWORD PTR 16[rdi]
	mov	eax, r12d
	xor	r14d, r14d
	lea	rcx, [rax+r15]
	mov	QWORD PTR 40[rsp], rcx
	xor	ecx, ecx
	test	r15, r15
	jne	.L231
.L215:
	add	rcx, 1
	cmp	rcx, rbx
	jne	.L215
.L207:
	mov	rdx, QWORD PTR 64[rdi]
	mov	ecx, DWORD PTR 48[rdi]
	mov	r9d, 35050
	mov	rbx, QWORD PTR .refptr.glad_glNamedBufferData[rip]
	sub	rdx, r8
	call	[QWORD PTR [rbx]]
	mov	r8, QWORD PTR 88[rdi]
	mov	rdx, QWORD PTR 96[rdi]
	mov	r9d, 35050
	mov	ecx, DWORD PTR 80[rdi]
	sub	rdx, r8
	call	[QWORD PTR [rbx]]
	vmovq	rax, xmm6
	test	rax, rax
	je	.L230
	vmovups	xmm6, XMMWORD PTR 80[rsp]
	mov	rcx, rax
	add	rsp, 104
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	_ZdaPv
.L231:
	mov	QWORD PTR 48[rsp], rsi
	mov	r12, rsi
	mov	r9, QWORD PTR [rdi]
	mov	r10, r14
	mov	rsi, QWORD PTR 8[rdi]
	vmovq	xmm5, r8
	mov	r13, rcx
	mov	r8, rax
	vmovq	xmm17, rdx
	mov	rax, rbx
	vmovq	xmm16, rdi
.L214:
	vmovq	rbx, xmm6
	vmovq	rdi, xmm17
	lea	rcx, [r15+r12]
	mov	r14, r8
	mov	QWORD PTR 56[rsp], r8
	lea	r11, [rbx+r10*4]
	mov	rbp, QWORD PTR 40[rsp]
	add	r10, rdi
	mov	QWORD PTR 64[rsp], rax
	lea	rbx, [rbx+r10*4]
	vmovq	xmm4, r15
	mov	rdi, r11
	mov	QWORD PTR 72[rsp], r10
	mov	r10, rcx
	.p2align 4
	.p2align 3
.L216:
	mov	r8, r12
	vmovq	r15, xmm5
	.p2align 4
	.p2align 3
.L213:
	mov	rax, r8
	xor	edx, edx
	mov	rcx, r14
	div	rsi
	mov	r11, rdx
	imul	r11, r9
	.p2align 6
	.p2align 4
	.p2align 3
.L210:
	mov	rax, rcx
	xor	edx, edx
	vmovss	xmm0, DWORD PTR [rdi]
	add	rcx, 1
	div	r9
	add	rdx, r11
	vmovss	DWORD PTR [r15+rdx*4], xmm0
	cmp	rbp, rcx
	jne	.L210
	add	r8, 1
	cmp	r10, r8
	jne	.L213
	vmovq	rax, xmm4
	add	rdi, 4
	add	r14, rax
	add	rbp, rax
	cmp	rbx, rdi
	jne	.L216
	mov	rax, QWORD PTR 64[rsp]
	add	r13, 1
	mov	r8, QWORD PTR 56[rsp]
	vmovq	r15, xmm4
	mov	r10, QWORD PTR 72[rsp]
	cmp	rax, r13
	je	.L229
	mov	r12, r15
	mov	rbx, QWORD PTR 48[rsp]
	imul	r12, r13
	add	r12, rbx
	jmp	.L214
.L229:
	vmovq	r8, xmm5
	vmovq	rdi, xmm16
	jmp	.L207
.L230:
	vmovups	xmm6, XMMWORD PTR 80[rsp]
	add	rsp, 104
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA7103:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7103-.LLSDACSB7103
.LLSDACSB7103:
.LLSDACSE7103:
	.text
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN5Lenia10Simulation20ReadShaderDataBufferEv
	.def	_ZN5Lenia10Simulation20ReadShaderDataBufferEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Lenia10Simulation20ReadShaderDataBufferEv
_ZN5Lenia10Simulation20ReadShaderDataBufferEv:
.LFB7104:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	vmovups	XMMWORD PTR 32[rsp], xmm6
	.seh_savexmm	xmm6, 32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.glad_glGetNamedBufferSubData[rip]
	vxorps	xmm6, xmm6, xmm6
	xor	edx, edx
	mov	r9, QWORD PTR 120[rcx]
	mov	rbx, rcx
	mov	ecx, DWORD PTR 112[rcx]
	mov	r8, QWORD PTR 128[rbx]
	sub	r8, r9
	call	[QWORD PTR [rax]]
	mov	rax, QWORD PTR 120[rbx]
	vcvtusi2sd	xmm0, xmm6, DWORD PTR [rax]
	mov	ecx, DWORD PTR 4[rax]
	mov	edx, DWORD PTR 8[rax]
	vmulsd	xmm0, xmm0, QWORD PTR .LC4[rip]
	vcvtusi2ss	xmm1, xmm6, ecx
	vcvtusi2ss	xmm6, xmm6, edx
	vmovsd	QWORD PTR 32[rbx], xmm0
	vmulsd	xmm0, xmm0, QWORD PTR .LC5[rip]
	vcvtsd2ss	xmm0, xmm0, xmm0
	vdivss	xmm1, xmm1, xmm0
	vdivss	xmm6, xmm6, xmm0
	vcvttss2usi	eax, xmm1
	mov	DWORD PTR 40[rbx], eax
	vcvttss2usi	eax, xmm6
	mov	DWORD PTR 44[rbx], eax
	vmovups	xmm6, XMMWORD PTR 32[rsp]
	add	rsp, 48
	pop	rbx
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA7104:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7104-.LLSDACSB7104
.LLSDACSB7104:
.LLSDACSE7104:
	.text
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN5Lenia10Simulation11SwapBuffersEv
	.def	_ZN5Lenia10Simulation11SwapBuffersEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Lenia10Simulation11SwapBuffersEv
_ZN5Lenia10Simulation11SwapBuffersEv:
.LFB7106:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	eax, 1
	mov	rsi, QWORD PTR .refptr.glad_glBindBufferBase[rip]
	mov	edx, eax
	mov	rbx, rcx
	movsx	ecx, BYTE PTR 52[rcx]
	mov	r8d, DWORD PTR 80[rbx]
	sub	edx, ecx
	movsx	ecx, BYTE PTR 84[rbx]
	mov	DWORD PTR 52[rbx], edx
	sub	eax, ecx
	mov	ecx, 37074
	mov	DWORD PTR 84[rbx], eax
	call	[QWORD PTR [rsi]]
	mov	edx, DWORD PTR 84[rbx]
	mov	r8d, DWORD PTR 48[rbx]
	mov	ecx, 37074
	call	[QWORD PTR [rsi]]
	nop
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA7106:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7106-.LLSDACSB7106
.LLSDACSB7106:
.LLSDACSE7106:
	.text
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN5Lenia10Simulation17ApplyColorPaletteERKNS_12ColorPaletteE
	.def	_ZN5Lenia10Simulation17ApplyColorPaletteERKNS_12ColorPaletteE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Lenia10Simulation17ApplyColorPaletteERKNS_12ColorPaletteE
_ZN5Lenia10Simulation17ApplyColorPaletteERKNS_12ColorPaletteE:
.LFB7107:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.glad_glNamedBufferData[rip]
	mov	r9d, 35050
	mov	r8, QWORD PTR 152[rcx]
	vmovdqu64	zmm0, ZMMWORD PTR [rdx]
	vmovdqu64	ZMMWORD PTR [r8], zmm0
	vmovdqu64	zmm0, ZMMWORD PTR 64[rdx]
	vmovdqu64	ZMMWORD PTR 64[r8], zmm0
	vmovdqu64	zmm0, ZMMWORD PTR 128[rdx]
	vmovdqu64	ZMMWORD PTR 128[r8], zmm0
	vmovdqu64	zmm0, ZMMWORD PTR 192[rdx]
	vmovdqu64	ZMMWORD PTR 192[r8], zmm0
	vmovdqu	xmm1, XMMWORD PTR 256[rdx]
	mov	rdx, QWORD PTR 160[rcx]
	mov	ecx, DWORD PTR 144[rcx]
	vmovdqu	XMMWORD PTR 256[r8], xmm1
	sub	rdx, r8
	vzeroupper
	call	[QWORD PTR [rax]]
	nop
	add	rsp, 40
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA7107:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7107-.LLSDACSB7107
.LLSDACSB7107:
.LLSDACSE7107:
	.text
	.seh_endproc
	.section	.text$_ZNSt10_HashtableIN5Lenia4Vec2IiEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_8Vec2HashIiEENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5eraseENS4_20_Node_const_iteratorIS2_Lb1ELb1EEE,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNSt10_HashtableIN5Lenia4Vec2IiEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_8Vec2HashIiEENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5eraseENS4_20_Node_const_iteratorIS2_Lb1ELb1EEE
	.def	_ZNSt10_HashtableIN5Lenia4Vec2IiEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_8Vec2HashIiEENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5eraseENS4_20_Node_const_iteratorIS2_Lb1ELb1EEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt10_HashtableIN5Lenia4Vec2IiEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_8Vec2HashIiEENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5eraseENS4_20_Node_const_iteratorIS2_Lb1ELb1EEE
_ZNSt10_HashtableIN5Lenia4Vec2IiEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_8Vec2HashIiEENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5eraseENS4_20_Node_const_iteratorIS2_Lb1ELb1EEE:
.LFB8622:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR 16[rdx]
	mov	rbx, rcx
	mov	rcx, rdx
	xor	edx, edx
	mov	r9, QWORD PTR 8[rbx]
	mov	r10, QWORD PTR [rbx]
	div	r9
	lea	r11, [r10+rdx*8]
	mov	rdi, rdx
	mov	rdx, QWORD PTR [r11]
	mov	rax, rdx
	.p2align 4
	.p2align 4
	.p2align 3
.L236:
	mov	r8, rax
	mov	rax, QWORD PTR [rax]
	cmp	rcx, rax
	jne	.L236
	mov	rsi, QWORD PTR [rcx]
	cmp	rdx, r8
	je	.L245
	test	rsi, rsi
	je	.L239
	mov	rax, QWORD PTR 16[rsi]
	xor	edx, edx
	div	r9
	cmp	rdi, rdx
	je	.L239
	mov	QWORD PTR [r10+rdx*8], r8
	mov	rsi, QWORD PTR [rcx]
.L239:
	mov	QWORD PTR [r8], rsi
	mov	edx, 24
	call	_ZdlPvy
	sub	QWORD PTR 24[rbx], 1
	mov	rax, rsi
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L245:
	test	rsi, rsi
	je	.L244
	mov	rax, QWORD PTR 16[rsi]
	xor	edx, edx
	div	r9
	cmp	rdi, rdx
	je	.L239
	mov	QWORD PTR [r10+rdx*8], r8
.L244:
	mov	QWORD PTR [r11], 0
	mov	rsi, QWORD PTR [rcx]
	jmp	.L239
	.seh_endproc
	.section	.text$_ZNSt10_HashtableIN5Lenia4Vec2IiEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_8Vec2HashIiEENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEyyPNS4_10_Hash_nodeIS2_Lb1EEEy,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNSt10_HashtableIN5Lenia4Vec2IiEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_8Vec2HashIiEENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEyyPNS4_10_Hash_nodeIS2_Lb1EEEy
	.def	_ZNSt10_HashtableIN5Lenia4Vec2IiEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_8Vec2HashIiEENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEyyPNS4_10_Hash_nodeIS2_Lb1EEEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt10_HashtableIN5Lenia4Vec2IiEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_8Vec2HashIiEENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEyyPNS4_10_Hash_nodeIS2_Lb1EEEy
_ZNSt10_HashtableIN5Lenia4Vec2IiEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_8Vec2HashIiEENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEyyPNS4_10_Hash_nodeIS2_Lb1EEEy:
.LFB9048:
	push	r14
	.seh_pushreg	r14
	push	r13
	.seh_pushreg	r13
	push	r12
	.seh_pushreg	r12
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 80
	.seh_stackalloc	80
	.seh_endprologue
	mov	rax, QWORD PTR 176[rsp]
	mov	rbp, QWORD PTR 40[rcx]
	mov	rbx, rcx
	mov	QWORD PTR 32[rsp], rax
	mov	r13, r8
	mov	r12, r9
	mov	r8, QWORD PTR 8[rbx]
	mov	r9, QWORD PTR 24[rbx]
	mov	rdi, rdx
	lea	rcx, 64[rsp]
	lea	rdx, 32[rbx]
.LEHB11:
	call	_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEyyy
	cmp	BYTE PTR 64[rsp], 0
	mov	rsi, QWORD PTR 72[rsp]
	jne	.L247
	mov	rbp, QWORD PTR [rbx]
.L248:
	lea	rcx, 0[rbp+rdi*8]
	mov	QWORD PTR 16[r12], r13
	mov	rax, QWORD PTR [rcx]
	test	rax, rax
	je	.L260
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR [r12], rax
	mov	rax, QWORD PTR [rcx]
	mov	QWORD PTR [rax], r12
.L261:
	add	QWORD PTR 24[rbx], 1
	mov	rax, r12
	add	rsp, 80
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret
	.p2align 4,,10
	.p2align 3
.L247:
	cmp	rsi, 1
	je	.L275
	mov	rax, rsi
	shr	rax, 60
	jne	.L276
	lea	r8, 0[0+rsi*8]
	mov	rcx, r8
	mov	QWORD PTR 56[rsp], r8
	call	_Znwy
	mov	r8, QWORD PTR 56[rsp]
	xor	edx, edx
	mov	rcx, rax
	mov	rbp, rax
	call	memset
	lea	r9, 48[rbx]
.L250:
	mov	r10, QWORD PTR 16[rbx]
	mov	QWORD PTR 16[rbx], 0
	xor	r14d, r14d
	lea	r8, 16[rbx]
.L274:
	test	r10, r10
	je	.L277
.L253:
	mov	rcx, r10
	xor	edx, edx
	mov	r10, QWORD PTR [r10]
	mov	rax, QWORD PTR 16[rcx]
	div	rsi
	lea	r11, 0[rbp+rdx*8]
	mov	rdi, QWORD PTR [r11]
	test	rdi, rdi
	je	.L278
	mov	rdx, QWORD PTR [rdi]
	mov	QWORD PTR [rcx], rdx
	mov	rdx, QWORD PTR [r11]
	mov	QWORD PTR [rdx], rcx
	test	r10, r10
	jne	.L253
.L277:
	mov	rcx, QWORD PTR [rbx]
	mov	rdx, QWORD PTR 8[rbx]
	cmp	rcx, r9
	je	.L254
	sal	rdx, 3
	call	_ZdlPvy
.L254:
	mov	rax, r13
	xor	edx, edx
	mov	QWORD PTR 8[rbx], rsi
	div	rsi
	mov	QWORD PTR [rbx], rbp
	mov	rdi, rdx
	jmp	.L248
	.p2align 4,,10
	.p2align 3
.L278:
	mov	rax, QWORD PTR 16[rbx]
	mov	QWORD PTR [rcx], rax
	mov	QWORD PTR 16[rbx], rcx
	mov	QWORD PTR [r11], r8
	cmp	QWORD PTR [rcx], 0
	je	.L257
	mov	QWORD PTR 0[rbp+r14*8], rcx
.L257:
	mov	r14, rdx
	jmp	.L274
	.p2align 4,,10
	.p2align 3
.L260:
	mov	rax, QWORD PTR 16[rbx]
	mov	QWORD PTR [r12], rax
	mov	QWORD PTR 16[rbx], r12
	mov	rax, QWORD PTR [r12]
	test	rax, rax
	je	.L262
	mov	rax, QWORD PTR 16[rax]
	xor	edx, edx
	div	QWORD PTR 8[rbx]
	mov	QWORD PTR 0[rbp+rdx*8], r12
.L262:
	lea	rax, 16[rbx]
	mov	QWORD PTR [rcx], rax
	jmp	.L261
	.p2align 4,,10
	.p2align 3
.L275:
	lea	r9, 48[rbx]
	mov	QWORD PTR 48[rbx], 0
	mov	rbp, r9
	jmp	.L250
	.p2align 4,,10
	.p2align 3
.L276:
	shr	rsi, 61
	je	.L252
	call	_ZSt28__throw_bad_array_new_lengthv
.L252:
	call	_ZSt17__throw_bad_allocv
.LEHE11:
.L265:
	mov	QWORD PTR 40[rbx], rbp
	mov	rcx, rax
	vzeroupper
.LEHB12:
	call	_Unwind_Resume
	nop
.LEHE12:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA9048:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9048-.LLSDACSB9048
.LLSDACSB9048:
	.uleb128 .LEHB11-.LFB9048
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L265-.LFB9048
	.uleb128 0
	.uleb128 .LEHB12-.LFB9048
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
.LLSDACSE9048:
	.section	.text$_ZNSt10_HashtableIN5Lenia4Vec2IiEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_8Vec2HashIiEENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEyyPNS4_10_Hash_nodeIS2_Lb1EEEy,"x"
	.linkonce discard
	.seh_endproc
	.text
	.align 2
	.p2align 4
	.def	_ZNSt10_HashtableIN5Lenia4Vec2IiEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_8Vec2HashIiEENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS2_SI_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb1EEEEEEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb1EEEbEOT_OT0_RKT1_.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZNSt10_HashtableIN5Lenia4Vec2IiEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_8Vec2HashIiEENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS2_SI_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb1EEEEEEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb1EEEbEOT_OT0_RKT1_.isra.0
_ZNSt10_HashtableIN5Lenia4Vec2IiEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_8Vec2HashIiEENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS2_SI_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb1EEEEEEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb1EEEbEOT_OT0_RKT1_.isra.0:
.LFB9978:
	push	r14
	.seh_pushreg	r14
	push	r13
	.seh_pushreg	r13
	push	r12
	.seh_pushreg	r12
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	movsx	r13, DWORD PTR 4[rdx]
	mov	rdi, rcx
	mov	rbp, rdx
	movsx	rcx, DWORD PTR [rdx]
	cmp	QWORD PTR 24[rdi], 0
	je	.L280
	movsx	rsi, r13d
	movsx	rax, ecx
	mov	rbx, QWORD PTR 8[rdi]
	xor	edx, edx
	add	rsi, rsi
	xor	rsi, rax
	mov	rax, rsi
	div	rbx
	mov	rax, QWORD PTR [rdi]
	mov	r8, QWORD PTR [rax+rdx*8]
	mov	r12, rdx
	mov	r14, rdx
	test	r8, r8
	je	.L281
	mov	r11, QWORD PTR [r8]
	mov	r9, QWORD PTR 16[r11]
	jmp	.L290
	.p2align 4,,10
	.p2align 3
.L286:
	mov	r10, QWORD PTR [r11]
	test	r10, r10
	je	.L281
	mov	r9, QWORD PTR 16[r10]
	xor	edx, edx
	mov	r8, r11
	mov	rax, r9
	div	rbx
	cmp	r12, rdx
	jne	.L281
	mov	r11, r10
.L290:
	cmp	r9, rsi
	jne	.L286
	cmp	DWORD PTR 8[r11], ecx
	jne	.L286
	cmp	DWORD PTR 12[r11], r13d
	jne	.L286
	cmp	QWORD PTR [r8], 0
	je	.L281
.L307:
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret
	.p2align 4,,10
	.p2align 3
.L280:
	mov	rax, QWORD PTR 16[rdi]
	test	rax, rax
	jne	.L285
	.p2align 4
	.p2align 3
.L283:
	add	r13, r13
	xor	edx, edx
	mov	rsi, r13
	xor	rsi, rcx
	mov	rax, rsi
	div	QWORD PTR 8[rdi]
	mov	r14, rdx
.L281:
	mov	ecx, 24
.LEHB13:
	call	_Znwy
.LEHE13:
	mov	r8, rsi
	mov	rdx, r14
	mov	rcx, rdi
	mov	QWORD PTR [rax], 0
	mov	rbx, rax
	mov	rax, QWORD PTR 0[rbp]
	mov	r9, rbx
	mov	QWORD PTR 8[rbx], rax
	mov	QWORD PTR 32[rsp], 1
.LEHB14:
	call	_ZNSt10_HashtableIN5Lenia4Vec2IiEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_8Vec2HashIiEENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEyyPNS4_10_Hash_nodeIS2_Lb1EEEy
.LEHE14:
	nop
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret
	.p2align 4,,10
	.p2align 3
.L308:
	cmp	DWORD PTR 12[rax], r13d
	je	.L307
.L284:
	mov	rax, QWORD PTR [rax]
	test	rax, rax
	je	.L283
.L285:
	cmp	DWORD PTR 8[rax], ecx
	jne	.L284
	jmp	.L308
.L294:
	mov	rsi, rax
	mov	rcx, rbx
	mov	edx, 24
	vzeroupper
	call	_ZdlPvy
	mov	rcx, rsi
.LEHB15:
	call	_Unwind_Resume
	nop
.LEHE15:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA9978:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9978-.LLSDACSB9978
.LLSDACSB9978:
	.uleb128 .LEHB13-.LFB9978
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB14-.LFB9978
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L294-.LFB9978
	.uleb128 0
	.uleb128 .LEHB15-.LFB9978
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
.LLSDACSE9978:
	.text
	.seh_endproc
	.align 2
	.p2align 4
	.def	_ZNSt10_HashtableIN5Lenia4Vec2IiEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_8Vec2HashIiEENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIS2_S2_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb1EEEEEEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb1EEEbEOT_OT0_RKT1_.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZNSt10_HashtableIN5Lenia4Vec2IiEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_8Vec2HashIiEENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIS2_S2_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb1EEEEEEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb1EEEbEOT_OT0_RKT1_.isra.0
_ZNSt10_HashtableIN5Lenia4Vec2IiEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_8Vec2HashIiEENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIS2_S2_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb1EEEEEEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb1EEEbEOT_OT0_RKT1_.isra.0:
.LFB9980:
	push	r14
	.seh_pushreg	r14
	push	r13
	.seh_pushreg	r13
	push	r12
	.seh_pushreg	r12
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	movsx	r13, DWORD PTR 4[rdx]
	mov	rdi, rcx
	mov	rbp, rdx
	movsx	rcx, DWORD PTR [rdx]
	cmp	QWORD PTR 24[rdi], 0
	je	.L310
	movsx	rsi, r13d
	movsx	rax, ecx
	mov	rbx, QWORD PTR 8[rdi]
	xor	edx, edx
	add	rsi, rsi
	xor	rsi, rax
	mov	rax, rsi
	div	rbx
	mov	rax, QWORD PTR [rdi]
	mov	r8, QWORD PTR [rax+rdx*8]
	mov	r12, rdx
	mov	r14, rdx
	test	r8, r8
	je	.L311
	mov	r11, QWORD PTR [r8]
	mov	r9, QWORD PTR 16[r11]
	jmp	.L320
	.p2align 4,,10
	.p2align 3
.L316:
	mov	r10, QWORD PTR [r11]
	test	r10, r10
	je	.L311
	mov	r9, QWORD PTR 16[r10]
	xor	edx, edx
	mov	r8, r11
	mov	rax, r9
	div	rbx
	cmp	r12, rdx
	jne	.L311
	mov	r11, r10
.L320:
	cmp	r9, rsi
	jne	.L316
	cmp	DWORD PTR 8[r11], ecx
	jne	.L316
	cmp	DWORD PTR 12[r11], r13d
	jne	.L316
	cmp	QWORD PTR [r8], 0
	je	.L311
.L337:
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret
	.p2align 4,,10
	.p2align 3
.L310:
	mov	rax, QWORD PTR 16[rdi]
	test	rax, rax
	jne	.L315
	.p2align 4
	.p2align 3
.L313:
	add	r13, r13
	xor	edx, edx
	mov	rsi, r13
	xor	rsi, rcx
	mov	rax, rsi
	div	QWORD PTR 8[rdi]
	mov	r14, rdx
.L311:
	mov	ecx, 24
.LEHB16:
	call	_Znwy
.LEHE16:
	mov	r8, rsi
	mov	rdx, r14
	mov	rcx, rdi
	mov	QWORD PTR [rax], 0
	mov	rbx, rax
	mov	rax, QWORD PTR 0[rbp]
	mov	r9, rbx
	mov	QWORD PTR 8[rbx], rax
	mov	QWORD PTR 32[rsp], 1
.LEHB17:
	call	_ZNSt10_HashtableIN5Lenia4Vec2IiEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_8Vec2HashIiEENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEyyPNS4_10_Hash_nodeIS2_Lb1EEEy
.LEHE17:
	nop
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret
	.p2align 4,,10
	.p2align 3
.L338:
	cmp	DWORD PTR 12[rax], r13d
	je	.L337
.L314:
	mov	rax, QWORD PTR [rax]
	test	rax, rax
	je	.L313
.L315:
	cmp	DWORD PTR 8[rax], ecx
	jne	.L314
	jmp	.L338
.L324:
	mov	rsi, rax
	mov	rcx, rbx
	mov	edx, 24
	vzeroupper
	call	_ZdlPvy
	mov	rcx, rsi
.LEHB18:
	call	_Unwind_Resume
	nop
.LEHE18:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA9980:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9980-.LLSDACSB9980
.LLSDACSB9980:
	.uleb128 .LEHB16-.LFB9980
	.uleb128 .LEHE16-.LEHB16
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB17-.LFB9980
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L324-.LFB9980
	.uleb128 0
	.uleb128 .LEHB18-.LFB9980
	.uleb128 .LEHE18-.LEHB18
	.uleb128 0
	.uleb128 0
.LLSDACSE9980:
	.text
	.seh_endproc
	.section .rdata,"dr"
.LC7:
	.ascii "vector::_M_realloc_append\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN5Lenia10Simulation22CalculateBoundingBoxesEv
	.def	_ZN5Lenia10Simulation22CalculateBoundingBoxesEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Lenia10Simulation22CalculateBoundingBoxesEv
_ZN5Lenia10Simulation22CalculateBoundingBoxesEv:
.LFB7142:
	push	r15
	.seh_pushreg	r15
	push	r14
	.seh_pushreg	r14
	push	r13
	.seh_pushreg	r13
	push	r12
	.seh_pushreg	r12
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 424
	.seh_stackalloc	424
	vmovups	XMMWORD PTR 256[rsp], xmm6
	.seh_savexmm	xmm6, 256
	vmovups	XMMWORD PTR 272[rsp], xmm7
	.seh_savexmm	xmm7, 272
	vmovups	XMMWORD PTR 288[rsp], xmm8
	.seh_savexmm	xmm8, 288
	vmovups	XMMWORD PTR 304[rsp], xmm9
	.seh_savexmm	xmm9, 304
	vmovups	XMMWORD PTR 320[rsp], xmm10
	.seh_savexmm	xmm10, 320
	vmovups	XMMWORD PTR 336[rsp], xmm11
	.seh_savexmm	xmm11, 336
	vmovups	XMMWORD PTR 352[rsp], xmm12
	.seh_savexmm	xmm12, 352
	vmovups	XMMWORD PTR 368[rsp], xmm13
	.seh_savexmm	xmm13, 368
	vmovups	XMMWORD PTR 384[rsp], xmm14
	.seh_savexmm	xmm14, 384
	vmovups	XMMWORD PTR 400[rsp], xmm15
	.seh_savexmm	xmm15, 400
	.seh_endprologue
	xor	edx, edx
	mov	rax, QWORD PTR 64[rcx]
	mov	r9, QWORD PTR 56[rcx]
	mov	r8, rax
	sub	r8, r9
	mov	QWORD PTR 32[rsp], rax
	mov	rax, QWORD PTR .refptr.glad_glGetNamedBufferSubData[rip]
	mov	rbx, rcx
	vmovq	xmm15, rcx
	mov	ecx, DWORD PTR 48[rcx]
	call	[QWORD PTR [rax]]
	mov	rbp, QWORD PTR [rbx]
	mov	rax, QWORD PTR 8[rbx]
	vpxor	xmm0, xmm0, xmm0
	vmovss	xmm7, DWORD PTR .LC6[rip]
	lea	rbx, 176[rsp]
	vmovdqu	YMMWORD PTR 152[rsp], ymm0
	mov	DWORD PTR 100[rsp], ebp
	mov	QWORD PTR 128[rsp], rbx
	mov	QWORD PTR 136[rsp], 1
	mov	QWORD PTR 144[rsp], 0
	vmovss	DWORD PTR 160[rsp], xmm7
	test	rax, rax
	je	.L473
	mov	QWORD PTR 88[rsp], rbx
	xor	r11d, r11d
	xor	r10d, r10d
	xor	esi, esi
	mov	QWORD PTR 80[rsp], 0
	xor	r9d, r9d
	vxorps	xmm6, xmm6, xmm6
	mov	r14, r10
	mov	QWORD PTR 40[rsp], r11
	mov	r11d, eax
	.p2align 4
	.p2align 3
.L340:
	test	rbp, rbp
	je	.L471
	xor	r13d, r13d
	mov	r15d, DWORD PTR 100[rsp]
	vmovq	xmm9, r9
	xor	edi, edi
	mov	r9, r13
	vmovq	r12, xmm15
	mov	r13d, r11d
	.p2align 4
	.p2align 3
.L387:
	mov	rax, QWORD PTR 40[rsp]
	cmp	r14, rax
	je	.L342
	mov	QWORD PTR 32[rsp], r9
	mov	rcx, rax
	jmp	.L356
	.p2align 4,,10
	.p2align 3
.L475:
	cmp	r9d, edi
	setle	r8b
	test	r11d, r11d
	jle	.L349
.L477:
	cmp	r10d, esi
	setge	r9b
	cmp	r13d, r10d
	jle	.L352
.L476:
	cmp	r11d, esi
	setle	al
.L353:
	test	bl, bl
	je	.L347
	test	r8b, r8b
	je	.L347
	test	r9b, r9b
	je	.L347
	test	al, al
	jne	.L354
	.p2align 4
	.p2align 3
.L347:
	add	rcx, 16
	cmp	r14, rcx
	je	.L474
.L356:
	mov	r9d, DWORD PTR [rcx]
	mov	r11d, DWORD PTR 4[rcx]
	mov	r8d, DWORD PTR 8[rcx]
	mov	r10d, DWORD PTR 12[rcx]
	test	r9d, r9d
	jle	.L343
	cmp	r8d, edi
	setge	bl
.L344:
	cmp	r15d, r8d
	jg	.L475
	cmp	r9d, edi
	jle	.L414
	mov	eax, r8d
	cdq
	idiv	r15d
	cmp	edx, edi
	jge	.L414
	test	r11d, r11d
	jg	.L347
	xor	r8d, r8d
	cmp	r10d, esi
	jge	.L347
	.p2align 4
	.p2align 3
.L351:
	mov	eax, r11d
	cdq
	idiv	r13d
	lea	eax, [rdx+r13]
	cdq
	idiv	r13d
	cmp	edx, esi
	jg	.L347
.L415:
	mov	r9d, 1
	cmp	r13d, r10d
	jg	.L476
.L352:
	cmp	r11d, esi
	jle	.L416
	mov	eax, r10d
	cdq
	idiv	r13d
	cmp	edx, esi
	jl	.L347
.L416:
	mov	eax, 1
	jmp	.L353
	.p2align 4,,10
	.p2align 3
.L343:
	mov	ebx, 1
	cmp	r8d, edi
	jge	.L344
	mov	eax, r9d
	cdq
	idiv	r15d
	lea	eax, [rdx+r15]
	cdq
	idiv	r15d
	cmp	edx, edi
	setle	bl
	jmp	.L344
	.p2align 4,,10
	.p2align 3
.L414:
	mov	r8d, 1
	test	r11d, r11d
	jg	.L477
.L349:
	cmp	r10d, esi
	jge	.L415
	jmp	.L351
	.p2align 4,,10
	.p2align 3
.L363:
	lea	r9, [rdx+rdx]
	mov	r10, QWORD PTR 136[rsp]
	xor	edx, edx
	xor	r9, rcx
	mov	rax, r9
	div	r10
	mov	rax, QWORD PTR 128[rsp]
	mov	r8, QWORD PTR [rax+rdx*8]
	mov	r11, rdx
	test	r8, r8
	je	.L364
	mov	rax, QWORD PTR [r8]
	mov	rbp, QWORD PTR 16[rax]
	jmp	.L371
	.p2align 4,,10
	.p2align 3
.L367:
	mov	rcx, QWORD PTR [rax]
	test	rcx, rcx
	je	.L364
	mov	rbp, QWORD PTR 16[rcx]
	mov	r8, rax
	xor	edx, edx
	mov	rax, rbp
	div	r10
	cmp	r11, rdx
	jne	.L364
	mov	rax, rcx
.L371:
	cmp	r9, rbp
	jne	.L367
	cmp	DWORD PTR 8[rax], r12d
	jne	.L367
	cmp	DWORD PTR 12[rax], r14d
	jne	.L367
	cmp	QWORD PTR [r8], 0
	je	.L364
.L361:
	vmovq	rdx, xmm11
	vmovq	rcx, xmm12
	mov	DWORD PTR 112[rsp], r12d
	mov	DWORD PTR 116[rsp], r14d
	call	_ZNSt10_HashtableIN5Lenia4Vec2IiEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_8Vec2HashIiEENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS2_SI_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb1EEEEEEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb1EEEbEOT_OT0_RKT1_.isra.0
.L360:
	cmp	QWORD PTR 216[rsp], 0
	jne	.L373
	mov	r13d, esi
	mov	r14, QWORD PTR 72[rsp]
	mov	esi, DWORD PTR 64[rsp]
	vmovq	r12, xmm8
.L359:
	mov	rbp, QWORD PTR 208[rsp]
	test	rbp, rbp
	je	.L377
	.p2align 4
	.p2align 3
.L374:
	mov	rcx, rbp
	mov	rbp, QWORD PTR 0[rbp]
	mov	edx, 24
	call	_ZdlPvy
	test	rbp, rbp
	jne	.L374
.L377:
	mov	rax, QWORD PTR 200[rsp]
	mov	rcx, QWORD PTR 192[rsp]
	xor	edx, edx
	lea	r8, 0[0+rax*8]
	call	memset
	mov	rcx, QWORD PTR 192[rsp]
	mov	QWORD PTR 216[rsp], 0
	vmovq	rax, xmm13
	mov	rdx, QWORD PTR 200[rsp]
	mov	QWORD PTR 208[rsp], 0
	cmp	rcx, rax
	je	.L375
	sal	rdx, 3
	call	_ZdlPvy
.L375:
	cmp	QWORD PTR 80[rsp], r14
	je	.L378
	mov	eax, DWORD PTR 60[rsp]
	add	r14, 16
	mov	DWORD PTR -16[r14], eax
	mov	eax, DWORD PTR 48[rsp]
	mov	DWORD PTR -12[r14], eax
	mov	eax, DWORD PTR 96[rsp]
	mov	DWORD PTR -8[r14], eax
	mov	eax, DWORD PTR 32[rsp]
	mov	DWORD PTR -4[r14], eax
.L379:
	mov	rbp, QWORD PTR [r12]
.L354:
	lea	r9d, 1[rdi]
	mov	rdi, r9
	cmp	r9, rbp
	jb	.L387
	lea	r9d, 1[rsi]
	vmovq	rax, xmm15
	mov	r11d, r13d
	mov	rsi, r9
	cmp	r9, QWORD PTR 8[rax]
	jb	.L340
.L471:
	mov	r11, QWORD PTR 40[rsp]
	mov	rsi, r14
	mov	rbx, QWORD PTR 88[rsp]
	mov	r10, r14
	vmovq	rax, xmm15
	mov	rcx, QWORD PTR 184[rax]
	mov	rax, QWORD PTR 200[rax]
	sub	rsi, r11
	mov	QWORD PTR 32[rsp], rax
	sub	rax, rcx
	cmp	rax, rsi
	jnb	.L389
	movabs	rax, 9223372036854775792
	cmp	rax, rsi
	jb	.L478
	mov	QWORD PTR 40[rsp], r11
	mov	rcx, rsi
	mov	QWORD PTR 32[rsp], r14
	vzeroupper
	call	_Znwy
	mov	r10, QWORD PTR 32[rsp]
	mov	r11, QWORD PTR 40[rsp]
	mov	rdi, rax
	cmp	r10, r11
	je	.L394
	mov	rdx, r11
	mov	r8, rsi
	mov	rcx, rax
	mov	QWORD PTR 32[rsp], r11
	call	memcpy
	mov	r11, QWORD PTR 32[rsp]
.L394:
	vmovq	rax, xmm15
	mov	rcx, QWORD PTR 184[rax]
	test	rcx, rcx
	je	.L393
	mov	rax, QWORD PTR 200[rax]
	mov	QWORD PTR 40[rsp], r11
	mov	rdx, rax
	mov	QWORD PTR 32[rsp], rax
	sub	rdx, rcx
	call	_ZdlPvy
	mov	r11, QWORD PTR 40[rsp]
.L393:
	lea	r8, [rdi+rsi]
	vmovq	rax, xmm15
	mov	rsi, QWORD PTR 144[rsp]
	mov	QWORD PTR 184[rax], rdi
	mov	rdi, QWORD PTR 80[rsp]
	mov	QWORD PTR 200[rax], r8
	sub	rdi, r11
.L395:
	vmovq	rax, xmm15
	mov	rbp, r11
	mov	QWORD PTR 192[rax], r8
	test	rsi, rsi
	je	.L409
	.p2align 4
	.p2align 3
.L406:
	mov	rcx, rsi
	mov	rsi, QWORD PTR [rsi]
	mov	edx, 24
	call	_ZdlPvy
	test	rsi, rsi
	jne	.L406
	mov	r11, rbp
.L409:
	mov	rax, QWORD PTR 136[rsp]
	mov	rcx, QWORD PTR 128[rsp]
	xor	edx, edx
	mov	QWORD PTR 32[rsp], r11
	lea	r8, 0[0+rax*8]
	call	memset
	mov	rcx, QWORD PTR 128[rsp]
	mov	r11, QWORD PTR 32[rsp]
	mov	QWORD PTR 152[rsp], 0
	mov	QWORD PTR 144[rsp], 0
	mov	rdx, QWORD PTR 136[rsp]
	cmp	rcx, rbx
	je	.L407
	sal	rdx, 3
	mov	QWORD PTR 32[rsp], r11
	call	_ZdlPvy
	mov	r11, QWORD PTR 32[rsp]
.L407:
	test	r11, r11
	je	.L470
	vmovups	xmm6, XMMWORD PTR 256[rsp]
	mov	rdx, rdi
	vmovups	xmm7, XMMWORD PTR 272[rsp]
	mov	rcx, r11
	vmovups	xmm8, XMMWORD PTR 288[rsp]
	vmovups	xmm9, XMMWORD PTR 304[rsp]
	vmovups	xmm10, XMMWORD PTR 320[rsp]
	vmovups	xmm11, XMMWORD PTR 336[rsp]
	vmovups	xmm12, XMMWORD PTR 352[rsp]
	vmovups	xmm13, XMMWORD PTR 368[rsp]
	vmovups	xmm14, XMMWORD PTR 384[rsp]
	vmovups	xmm15, XMMWORD PTR 400[rsp]
	add	rsp, 424
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	_ZdlPvy
	.p2align 4,,10
	.p2align 3
.L474:
	mov	r9, QWORD PTR 32[rsp]
.L342:
	vmovq	rax, xmm9
	mov	rdx, QWORD PTR 56[r12]
	imul	rax, rbp
	add	rax, r9
	vcomiss	xmm6, DWORD PTR [rdx+rax*4]
	jnb	.L354
	mov	DWORD PTR 32[rsp], r13d
	vpxor	xmm4, xmm4, xmm4
	lea	rbx, 120[rsp]
	lea	rax, 240[rsp]
	mov	QWORD PTR 48[rsp], r14
	vmovq	xmm13, rax
	mov	ebp, -11
	vmovq	xmm11, r12
	mov	QWORD PTR 192[rsp], rax
	lea	rax, 192[rsp]
	vmovq	xmm14, rbx
	mov	QWORD PTR 200[rsp], 1
	mov	r12, rax
	mov	QWORD PTR 208[rsp], 0
	vmovdqu	YMMWORD PTR 216[rsp], ymm4
	vmovss	DWORD PTR 224[rsp], xmm7
	vzeroupper
	.p2align 4
	.p2align 3
.L358:
	lea	r13d, [rdi+rbp]
	mov	rdx, rbx
	mov	rcx, r12
	mov	DWORD PTR 124[rsp], esi
	lea	r14d, [rsi+rbp]
	mov	DWORD PTR 120[rsp], r13d
	call	_ZNSt10_HashtableIN5Lenia4Vec2IiEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_8Vec2HashIiEENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIS2_S2_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb1EEEEEEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb1EEEbEOT_OT0_RKT1_.isra.0
	mov	rdx, rbx
	mov	rcx, r12
	mov	DWORD PTR 120[rsp], edi
	mov	DWORD PTR 124[rsp], r14d
	call	_ZNSt10_HashtableIN5Lenia4Vec2IiEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_8Vec2HashIiEENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIS2_S2_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb1EEEEEEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb1EEEbEOT_OT0_RKT1_.isra.0
	mov	rdx, rbx
	mov	rcx, r12
	mov	DWORD PTR 120[rsp], r13d
	mov	DWORD PTR 124[rsp], r14d
	call	_ZNSt10_HashtableIN5Lenia4Vec2IiEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_8Vec2HashIiEENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIS2_S2_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb1EEEEEEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb1EEEbEOT_OT0_RKT1_.isra.0
	mov	eax, esi
	mov	rdx, rbx
	mov	rcx, r12
	sub	eax, ebp
	add	ebp, 1
	mov	DWORD PTR 120[rsp], r13d
	mov	DWORD PTR 124[rsp], eax
	call	_ZNSt10_HashtableIN5Lenia4Vec2IiEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_8Vec2HashIiEENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIS2_S2_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb1EEEEEEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb1EEEbEOT_OT0_RKT1_.isra.0
	cmp	ebp, 12
	jne	.L358
	lea	eax, 10[rsi]
	mov	r13d, DWORD PTR 32[rsp]
	mov	r14, QWORD PTR 48[rsp]
	vmovq	xmm8, r12
	mov	DWORD PTR 32[rsp], eax
	lea	eax, 10[rdi]
	vmovq	r12, xmm11
	cmp	QWORD PTR 216[rsp], 0
	mov	DWORD PTR 96[rsp], eax
	lea	eax, -10[rsi]
	mov	DWORD PTR 48[rsp], eax
	lea	eax, -10[rdi]
	mov	DWORD PTR 60[rsp], eax
	je	.L359
	lea	rax, 112[rsp]
	mov	DWORD PTR 64[rsp], esi
	mov	esi, r13d
	vmovq	rbx, xmm14
	mov	QWORD PTR 72[rsp], r14
	vmovq	xmm11, rax
	lea	rax, 128[rsp]
	vmovq	r13, xmm8
	vmovq	xmm12, rax
	vmovq	xmm8, r12
	.p2align 4
	.p2align 3
.L373:
	mov	rdx, QWORD PTR 208[rsp]
	mov	rcx, r13
	mov	r12d, DWORD PTR 8[rdx]
	mov	r14d, DWORD PTR 12[rdx]
	call	_ZNSt10_HashtableIN5Lenia4Vec2IiEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_8Vec2HashIiEENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5eraseENS4_20_Node_const_iteratorIS2_Lb1ELb1EEE
	test	r12d, r12d
	js	.L360
	vmovq	rax, xmm8
	mov	rax, QWORD PTR [rax]
	cmp	r12d, eax
	jge	.L360
	test	r14d, r14d
	js	.L360
	vmovq	rdx, xmm8
	cmp	r14d, DWORD PTR 8[rdx]
	jge	.L360
	movsx	rdx, r14d
	vmovq	r10, xmm8
	movsx	rcx, r12d
	imul	rax, rdx
	mov	r9, QWORD PTR 56[r10]
	add	rax, rcx
	vcomiss	xmm6, DWORD PTR [r9+rax*4]
	jnb	.L361
	cmp	QWORD PTR 152[rsp], 0
	jne	.L363
	mov	rax, QWORD PTR 144[rsp]
	test	rax, rax
	jne	.L366
	jmp	.L364
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L365:
	mov	rax, QWORD PTR [rax]
	test	rax, rax
	je	.L364
.L366:
	cmp	DWORD PTR 8[rax], r12d
	jne	.L365
	cmp	DWORD PTR 12[rax], r14d
	je	.L361
	mov	rax, QWORD PTR [rax]
	test	rax, rax
	jne	.L366
	.p2align 4
	.p2align 3
.L364:
	mov	edx, DWORD PTR 60[rsp]
	lea	eax, -10[r12]
	mov	DWORD PTR 104[rsp], esi
	mov	ebp, -11
	mov	DWORD PTR 108[rsp], edi
	cmp	edx, eax
	cmovle	eax, edx
	mov	edx, DWORD PTR 96[rsp]
	mov	DWORD PTR 60[rsp], eax
	lea	eax, 10[r12]
	cmp	edx, eax
	cmovge	eax, edx
	mov	edx, DWORD PTR 48[rsp]
	mov	DWORD PTR 96[rsp], eax
	lea	eax, -10[r14]
	cmp	edx, eax
	cmovle	eax, edx
	mov	edx, DWORD PTR 32[rsp]
	mov	DWORD PTR 48[rsp], eax
	lea	eax, 10[r14]
	cmp	edx, eax
	cmovge	eax, edx
	mov	DWORD PTR 32[rsp], eax
	.p2align 4
	.p2align 3
.L372:
	lea	esi, [r12+rbp]
	mov	rdx, rbx
	lea	edi, [r14+rbp]
	mov	rcx, r13
	vmovd	xmm1, esi
	vpinsrd	xmm0, xmm1, r14d, 1
	vmovq	QWORD PTR 120[rsp], xmm0
	call	_ZNSt10_HashtableIN5Lenia4Vec2IiEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_8Vec2HashIiEENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIS2_S2_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb1EEEEEEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb1EEEbEOT_OT0_RKT1_.isra.0
	vmovd	xmm2, r12d
	mov	rdx, rbx
	mov	rcx, r13
	vpinsrd	xmm0, xmm2, edi, 1
	vmovq	QWORD PTR 120[rsp], xmm0
	call	_ZNSt10_HashtableIN5Lenia4Vec2IiEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_8Vec2HashIiEENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIS2_S2_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb1EEEEEEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb1EEEbEOT_OT0_RKT1_.isra.0
	mov	rdx, rbx
	mov	rcx, r13
	mov	DWORD PTR 120[rsp], esi
	mov	DWORD PTR 124[rsp], edi
	call	_ZNSt10_HashtableIN5Lenia4Vec2IiEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_8Vec2HashIiEENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIS2_S2_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb1EEEEEEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb1EEEbEOT_OT0_RKT1_.isra.0
	mov	eax, r14d
	mov	rdx, rbx
	mov	rcx, r13
	sub	eax, ebp
	add	ebp, 1
	mov	DWORD PTR 120[rsp], esi
	mov	DWORD PTR 124[rsp], eax
	call	_ZNSt10_HashtableIN5Lenia4Vec2IiEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_8Vec2HashIiEENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIS2_S2_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb1EEEEEEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb1EEEbEOT_OT0_RKT1_.isra.0
	cmp	ebp, 12
	jne	.L372
	mov	esi, DWORD PTR 104[rsp]
	mov	edi, DWORD PTR 108[rsp]
	jmp	.L361
.L378:
	mov	rax, QWORD PTR 40[rsp]
	mov	rdx, QWORD PTR 80[rsp]
	sub	rdx, rax
	movabs	rax, 576460752303423487
	mov	rcx, rdx
	sar	rcx, 4
	cmp	rcx, rax
	je	.L479
	test	rcx, rcx
	mov	eax, 1
	cmovne	rax, rcx
	add	rax, rcx
	jc	.L382
	movabs	rcx, 576460752303423487
	cmp	rax, rcx
	cmovbe	rcx, rax
	mov	rbp, rcx
	sal	rbp, 4
.L383:
	mov	rcx, rbp
	mov	QWORD PTR 64[rsp], rdx
	call	_Znwy
	mov	rdx, QWORD PTR 64[rsp]
	mov	ebx, DWORD PTR 60[rsp]
	add	rdx, rax
	mov	DWORD PTR [rdx], ebx
	mov	ebx, DWORD PTR 48[rsp]
	mov	DWORD PTR 4[rdx], ebx
	mov	ebx, DWORD PTR 96[rsp]
	mov	DWORD PTR 8[rdx], ebx
	mov	ebx, DWORD PTR 32[rsp]
	mov	DWORD PTR 12[rdx], ebx
	mov	rdx, QWORD PTR 40[rsp]
	cmp	r14, rdx
	je	.L419
	mov	rcx, rax
	.p2align 5
	.p2align 4
	.p2align 3
.L385:
	vmovdqu	xmm3, XMMWORD PTR [rdx]
	add	rdx, 16
	add	rcx, 16
	vmovdqu	XMMWORD PTR -16[rcx], xmm3
	cmp	rdx, r14
	jne	.L385
	mov	rbx, QWORD PTR 40[rsp]
	sub	rdx, rbx
	add	rdx, rax
.L384:
	lea	r14, 16[rdx]
	test	rbx, rbx
	je	.L386
	mov	rdx, QWORD PTR 80[rsp]
	mov	rcx, rbx
	mov	QWORD PTR 32[rsp], rax
	sub	rdx, rbx
	call	_ZdlPvy
	mov	rax, QWORD PTR 32[rsp]
.L386:
	lea	rbx, [rax+rbp]
	mov	QWORD PTR 40[rsp], rax
	mov	QWORD PTR 80[rsp], rbx
	jmp	.L379
.L389:
	vmovq	rax, xmm15
	mov	rdi, QWORD PTR 80[rsp]
	mov	r9, QWORD PTR 192[rax]
	sub	rdi, r11
	mov	rdx, r9
	sub	rdx, rcx
	mov	r8, rdx
	cmp	rdx, rsi
	jnb	.L480
	cmp	rdx, 16
	jle	.L399
	mov	QWORD PTR 32[rsp], r11
	mov	rdx, r11
	mov	QWORD PTR 40[rsp], r14
	vzeroupper
	call	memmove
	mov	r11, QWORD PTR 32[rsp]
	mov	r10, QWORD PTR 40[rsp]
	vmovq	rax, xmm15
	mov	r9, QWORD PTR 192[rax]
	mov	rcx, QWORD PTR 184[rax]
	mov	r8, r9
	sub	r8, rcx
.L400:
	lea	rdx, [r11+r8]
	lea	r8, [rcx+rsi]
	mov	rsi, QWORD PTR 144[rsp]
	cmp	rdx, r10
	je	.L395
	sub	r10, rdx
	xor	eax, eax
.L403:
	vmovdqu	xmm5, XMMWORD PTR [rdx+rax]
	vmovdqu	XMMWORD PTR [r9+rax], xmm5
	add	rax, 16
	cmp	r10, rax
	jne	.L403
	jmp	.L395
.L473:
	vmovq	rsi, xmm15
	xor	edx, edx
	mov	rcx, rbx
	mov	r8d, 8
	mov	rax, QWORD PTR 184[rsi]
	mov	QWORD PTR 192[rsi], rax
	vzeroupper
	call	memset
	mov	rcx, QWORD PTR 128[rsp]
	mov	QWORD PTR 152[rsp], 0
	mov	QWORD PTR 144[rsp], 0
	mov	rdx, QWORD PTR 136[rsp]
	cmp	rcx, rbx
	je	.L470
	sal	rdx, 3
	call	_ZdlPvy
	nop
.L470:
	vmovups	xmm6, XMMWORD PTR 256[rsp]
	vmovups	xmm7, XMMWORD PTR 272[rsp]
	vmovups	xmm8, XMMWORD PTR 288[rsp]
	vmovups	xmm9, XMMWORD PTR 304[rsp]
	vmovups	xmm10, XMMWORD PTR 320[rsp]
	vmovups	xmm11, XMMWORD PTR 336[rsp]
	vmovups	xmm12, XMMWORD PTR 352[rsp]
	vmovups	xmm13, XMMWORD PTR 368[rsp]
	vmovups	xmm14, XMMWORD PTR 384[rsp]
	vmovups	xmm15, XMMWORD PTR 400[rsp]
	add	rsp, 424
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
.L419:
	mov	rbx, QWORD PTR 40[rsp]
	mov	rdx, rax
	jmp	.L384
.L480:
	cmp	rsi, 16
	jle	.L397
	mov	QWORD PTR 32[rsp], r11
	mov	r8, rsi
	mov	rdx, r11
	vzeroupper
	call	memmove
	mov	r11, QWORD PTR 32[rsp]
	vmovq	rax, xmm15
	add	rsi, QWORD PTR 184[rax]
	mov	r8, rsi
	mov	rsi, QWORD PTR 144[rsp]
	jmp	.L395
.L399:
	je	.L481
	vzeroupper
	jmp	.L400
.L397:
	lea	r8, [rcx+rsi]
	jne	.L472
	vmovdqu	xmm5, XMMWORD PTR [r11]
	vmovdqu	XMMWORD PTR [rcx], xmm5
.L472:
	mov	rsi, QWORD PTR 144[rsp]
	vzeroupper
	jmp	.L395
.L478:
	vzeroupper
	call	_ZSt28__throw_bad_array_new_lengthv
.L382:
	movabs	rbp, 9223372036854775792
	jmp	.L383
.L481:
	vmovdqu	xmm5, XMMWORD PTR [r11]
	vmovdqu	XMMWORD PTR [rcx], xmm5
	vzeroupper
	jmp	.L400
.L479:
	lea	rcx, .LC7[rip]
	call	_ZSt20__throw_length_errorPKc
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA7142:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7142-.LLSDACSB7142
.LLSDACSB7142:
.LLSDACSE7142:
	.text
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN5Lenia10Simulation6UpdateEv
	.def	_ZN5Lenia10Simulation6UpdateEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Lenia10Simulation6UpdateEv
_ZN5Lenia10Simulation6UpdateEv:
.LFB7105:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	vmovups	XMMWORD PTR 32[rsp], xmm6
	.seh_savexmm	xmm6, 32
	.seh_endprologue
	mov	eax, 1
	mov	rsi, QWORD PTR .refptr.glad_glBindBufferBase[rip]
	vxorps	xmm6, xmm6, xmm6
	mov	edx, eax
	mov	rbx, rcx
	movsx	ecx, BYTE PTR 52[rcx]
	mov	r8d, DWORD PTR 80[rbx]
	sub	edx, ecx
	movsx	ecx, BYTE PTR 84[rbx]
	mov	DWORD PTR 52[rbx], edx
	sub	eax, ecx
	mov	ecx, 37074
	mov	DWORD PTR 84[rbx], eax
	call	[QWORD PTR [rsi]]
	mov	edx, DWORD PTR 84[rbx]
	mov	r8d, DWORD PTR 48[rbx]
	mov	ecx, 37074
	call	[QWORD PTR [rsi]]
	mov	r9, QWORD PTR 120[rbx]
	mov	r8, QWORD PTR 128[rbx]
	xor	edx, edx
	mov	rax, QWORD PTR .refptr.glad_glGetNamedBufferSubData[rip]
	mov	ecx, DWORD PTR 112[rbx]
	sub	r8, r9
	call	[QWORD PTR [rax]]
	mov	rax, QWORD PTR 120[rbx]
	vcvtusi2sd	xmm0, xmm6, DWORD PTR [rax]
	mov	ecx, DWORD PTR 4[rax]
	mov	edx, DWORD PTR 8[rax]
	vmulsd	xmm0, xmm0, QWORD PTR .LC4[rip]
	vcvtusi2ss	xmm1, xmm6, ecx
	mov	rcx, rbx
	vcvtusi2ss	xmm6, xmm6, edx
	vmovsd	QWORD PTR 32[rbx], xmm0
	vmulsd	xmm0, xmm0, QWORD PTR .LC5[rip]
	vcvtsd2ss	xmm0, xmm0, xmm0
	vdivss	xmm1, xmm1, xmm0
	vdivss	xmm6, xmm6, xmm0
	vcvttss2usi	eax, xmm1
	mov	DWORD PTR 40[rbx], eax
	vcvttss2usi	eax, xmm6
	mov	DWORD PTR 44[rbx], eax
	call	_ZN5Lenia10Simulation22CalculateBoundingBoxesEv
	mov	r8, QWORD PTR 120[rbx]
	mov	rdx, QWORD PTR 128[rbx]
	mov	r9d, 35050
	mov	rsi, QWORD PTR .refptr.glad_glNamedBufferData[rip]
	sub	rdx, r8
	mov	QWORD PTR [r8], 0
	mov	ecx, DWORD PTR 112[rbx]
	mov	DWORD PTR 8[r8], 0
	call	[QWORD PTR [rsi]]
	mov	r8, QWORD PTR 184[rbx]
	mov	rdx, QWORD PTR 192[rbx]
	mov	r9d, 35050
	mov	ecx, DWORD PTR 176[rbx]
	sub	rdx, r8
	call	[QWORD PTR [rsi]]
	nop
	vmovups	xmm6, XMMWORD PTR 32[rsp]
	add	rsp, 56
	pop	rbx
	pop	rsi
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA7105:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7105-.LLSDACSB7105
.LLSDACSB7105:
.LLSDACSE7105:
	.text
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZNK5Lenia10Simulation15FillBoundingBoxEiitPSt13unordered_setINS_4Vec2IiEENS_8Vec2HashIiEESt8equal_toIS3_ESaIS3_EE
	.def	_ZNK5Lenia10Simulation15FillBoundingBoxEiitPSt13unordered_setINS_4Vec2IiEENS_8Vec2HashIiEESt8equal_toIS3_ESaIS3_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK5Lenia10Simulation15FillBoundingBoxEiitPSt13unordered_setINS_4Vec2IiEENS_8Vec2HashIiEESt8equal_toIS3_ESaIS3_EE
_ZNK5Lenia10Simulation15FillBoundingBoxEiitPSt13unordered_setINS_4Vec2IiEENS_8Vec2HashIiEESt8equal_toIS3_ESaIS3_EE:
.LFB7108:
	push	r15
	.seh_pushreg	r15
	push	r14
	.seh_pushreg	r14
	push	r13
	.seh_pushreg	r13
	push	r12
	.seh_pushreg	r12
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 200
	.seh_stackalloc	200
	vmovups	XMMWORD PTR 128[rsp], xmm6
	.seh_savexmm	xmm6, 128
	vmovups	XMMWORD PTR 144[rsp], xmm7
	.seh_savexmm	xmm7, 144
	vmovups	XMMWORD PTR 160[rsp], xmm8
	.seh_savexmm	xmm8, 160
	vmovups	XMMWORD PTR 176[rsp], xmm9
	.seh_savexmm	xmm9, 176
	.seh_endprologue
	vpxor	xmm0, xmm0, xmm0
	mov	eax, DWORD PTR 304[rsp]
	mov	r13d, eax
	movzx	eax, ax
	vmovd	xmm2, eax
	lea	r15, 112[rsp]
	mov	DWORD PTR 36[rsp], eax
	vmovd	xmm5, r8d
	not	eax
	mov	QWORD PTR 64[rsp], r15
	vpinsrd	xmm1, xmm5, r9d, 1
	mov	ebx, eax
	mov	r12d, r9d
	vmovdqu	YMMWORD PTR 88[rsp], ymm0
	vpunpcklqdq	xmm1, xmm1, xmm1
	vpbroadcastd	xmm0, xmm2
	vmovq	xmm6, r15
	mov	QWORD PTR 272[rsp], rcx
	vpsubd	xmm2, xmm1, xmm0
	mov	r15d, r8d
	vpaddd	xmm0, xmm0, xmm1
	mov	QWORD PTR 280[rsp], rdx
	vpblendd	xmm7, xmm0, xmm2, 3
	lea	rdi, 56[rsp]
	lea	rsi, 64[rsp]
	mov	QWORD PTR 72[rsp], 1
	mov	QWORD PTR 80[rsp], 0
	mov	DWORD PTR 96[rsp], 0x3f800000
	mov	DWORD PTR 44[rsp], eax
	mov	WORD PTR 42[rsp], r13w
	vzeroupper
	.p2align 4
	.p2align 3
.L484:
	lea	r14d, [r15+rbx]
	mov	rdx, rdi
	mov	rcx, rsi
	mov	DWORD PTR 60[rsp], r12d
	lea	ebp, [r12+rbx]
	mov	DWORD PTR 56[rsp], r14d
	mov	r13d, ebx
	call	_ZNSt10_HashtableIN5Lenia4Vec2IiEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_8Vec2HashIiEENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIS2_S2_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb1EEEEEEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb1EEEbEOT_OT0_RKT1_.isra.0
	mov	rdx, rdi
	mov	rcx, rsi
	mov	DWORD PTR 56[rsp], r15d
	mov	DWORD PTR 60[rsp], ebp
	call	_ZNSt10_HashtableIN5Lenia4Vec2IiEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_8Vec2HashIiEENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIS2_S2_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb1EEEEEEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb1EEEbEOT_OT0_RKT1_.isra.0
	mov	rdx, rdi
	mov	rcx, rsi
	mov	DWORD PTR 56[rsp], r14d
	mov	DWORD PTR 60[rsp], ebp
	call	_ZNSt10_HashtableIN5Lenia4Vec2IiEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_8Vec2HashIiEENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIS2_S2_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb1EEEEEEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb1EEEbEOT_OT0_RKT1_.isra.0
	mov	edx, r12d
	mov	rcx, rsi
	mov	DWORD PTR 56[rsp], r14d
	sub	edx, ebx
	add	ebx, 1
	mov	DWORD PTR 60[rsp], edx
	mov	rdx, rdi
	call	_ZNSt10_HashtableIN5Lenia4Vec2IiEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_8Vec2HashIiEENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIS2_S2_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb1EEEEEEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb1EEEbEOT_OT0_RKT1_.isra.0
	cmp	DWORD PTR 36[rsp], r13d
	jge	.L484
	mov	rax, QWORD PTR 272[rsp]
	cmp	QWORD PTR 88[rsp], 0
	vmovq	r15, xmm6
	movzx	r13d, WORD PTR 42[rsp]
	mov	r12, QWORD PTR 312[rsp]
	vmovdqu	XMMWORD PTR [rax], xmm7
	lea	rax, 48[rsp]
	vxorps	xmm7, xmm7, xmm7
	vmovq	xmm6, rax
	je	.L501
	mov	r14, QWORD PTR 280[rsp]
	vmovq	xmm9, r15
	vmovq	xmm8, rdi
	.p2align 4
	.p2align 3
.L485:
	mov	rdx, QWORD PTR 80[rsp]
	mov	rcx, rsi
	mov	ebx, DWORD PTR 8[rdx]
	mov	ebp, DWORD PTR 12[rdx]
	call	_ZNSt10_HashtableIN5Lenia4Vec2IiEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_8Vec2HashIiEENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5eraseENS4_20_Node_const_iteratorIS2_Lb1ELb1EEE
	test	ebx, ebx
	js	.L488
	mov	rdx, QWORD PTR [r14]
	cmp	ebx, edx
	jge	.L488
	test	ebp, ebp
	js	.L488
	cmp	ebp, DWORD PTR 8[r14]
	jge	.L488
	movsx	r10, ebp
	mov	rcx, QWORD PTR 56[r14]
	movsx	rax, ebx
	imul	rdx, r10
	add	rdx, rax
	vcomiss	xmm7, DWORD PTR [rcx+rdx*4]
	jnb	.L493
	cmp	QWORD PTR 24[r12], 0
	jne	.L490
	mov	rax, QWORD PTR 16[r12]
	test	rax, rax
	jne	.L494
	jmp	.L491
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L492:
	mov	rax, QWORD PTR [rax]
	test	rax, rax
	je	.L491
.L494:
	cmp	DWORD PTR 8[rax], ebx
	jne	.L492
	cmp	ebp, DWORD PTR 12[rax]
	jne	.L492
.L493:
	vmovq	rdx, xmm6
	mov	rcx, r12
	mov	DWORD PTR 48[rsp], ebx
	mov	DWORD PTR 52[rsp], ebp
	call	_ZNSt10_HashtableIN5Lenia4Vec2IiEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_8Vec2HashIiEENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS2_SI_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb1EEEEEEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb1EEEbEOT_OT0_RKT1_.isra.0
.L488:
	cmp	QWORD PTR 88[rsp], 0
	jne	.L485
	vmovq	r15, xmm9
.L501:
	mov	rbx, QWORD PTR 80[rsp]
	test	rbx, rbx
	je	.L487
	.p2align 4
	.p2align 3
.L486:
	mov	rcx, rbx
	mov	rbx, QWORD PTR [rbx]
	mov	edx, 24
	call	_ZdlPvy
	test	rbx, rbx
	jne	.L486
.L487:
	mov	rax, QWORD PTR 72[rsp]
	mov	rcx, QWORD PTR 64[rsp]
	xor	edx, edx
	lea	r8, 0[0+rax*8]
	call	memset
	mov	rcx, QWORD PTR 64[rsp]
	mov	rdx, QWORD PTR 72[rsp]
	mov	QWORD PTR 88[rsp], 0
	mov	QWORD PTR 80[rsp], 0
	cmp	rcx, r15
	je	.L483
	sal	rdx, 3
	call	_ZdlPvy
.L483:
	mov	rax, QWORD PTR 272[rsp]
	vmovups	xmm6, XMMWORD PTR 128[rsp]
	vmovups	xmm7, XMMWORD PTR 144[rsp]
	vmovups	xmm8, XMMWORD PTR 160[rsp]
	vmovups	xmm9, XMMWORD PTR 176[rsp]
	add	rsp, 200
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
	.p2align 4,,10
	.p2align 3
.L490:
	add	r10, r10
	mov	r11, QWORD PTR 8[r12]
	xor	edx, edx
	xor	r10, rax
	mov	rax, r10
	div	r11
	mov	rax, QWORD PTR [r12]
	mov	r15, QWORD PTR [rax+rdx*8]
	mov	rdi, rdx
	test	r15, r15
	je	.L491
	mov	r9, QWORD PTR [r15]
	mov	rcx, QWORD PTR 16[r9]
	jmp	.L499
	.p2align 4,,10
	.p2align 3
.L495:
	mov	r8, QWORD PTR [r9]
	test	r8, r8
	je	.L491
	mov	rcx, QWORD PTR 16[r8]
	xor	edx, edx
	mov	r15, r9
	mov	rax, rcx
	div	r11
	cmp	rdi, rdx
	jne	.L491
	mov	r9, r8
.L499:
	cmp	rcx, r10
	jne	.L495
	cmp	DWORD PTR 8[r9], ebx
	jne	.L495
	cmp	ebp, DWORD PTR 12[r9]
	jne	.L495
	cmp	QWORD PTR [r15], 0
	jne	.L493
	.p2align 4
	.p2align 3
.L491:
	mov	rdi, QWORD PTR 272[rsp]
	movzx	eax, r13w
	mov	edx, ebx
	mov	QWORD PTR 280[rsp], r14
	sub	edx, eax
	mov	WORD PTR 42[rsp], r13w
	vmovq	r15, xmm8
	mov	ecx, DWORD PTR [rdi]
	mov	r8d, DWORD PTR 8[rdi]
	mov	QWORD PTR 312[rsp], r12
	cmp	edx, ecx
	cmovle	ecx, edx
	mov	edx, DWORD PTR 4[rdi]
	vmovd	xmm0, ecx
	mov	ecx, ebp
	sub	ecx, eax
	cmp	ecx, edx
	cmovg	ecx, edx
	lea	edx, [rax+rbx]
	cmp	edx, r8d
	cmovl	edx, r8d
	mov	r8d, DWORD PTR 12[rdi]
	add	eax, ebp
	vpinsrd	xmm0, xmm0, ecx, 1
	cmp	eax, r8d
	vmovd	xmm5, edx
	cmovl	eax, r8d
	vpinsrd	xmm1, xmm5, eax, 1
	vpunpcklqdq	xmm0, xmm0, xmm1
	vmovdqu	XMMWORD PTR [rdi], xmm0
	mov	edi, DWORD PTR 44[rsp]
	.p2align 4
	.p2align 3
.L500:
	lea	r14d, [rbx+rdi]
	mov	rdx, r15
	mov	rcx, rsi
	mov	r13d, edi
	vmovd	xmm3, r14d
	lea	r12d, 0[rbp+rdi]
	vpinsrd	xmm0, xmm3, ebp, 1
	vmovq	QWORD PTR 56[rsp], xmm0
	call	_ZNSt10_HashtableIN5Lenia4Vec2IiEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_8Vec2HashIiEENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIS2_S2_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb1EEEEEEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb1EEEbEOT_OT0_RKT1_.isra.0
	vmovd	xmm4, ebx
	mov	rdx, r15
	mov	rcx, rsi
	vpinsrd	xmm0, xmm4, r12d, 1
	vmovq	QWORD PTR 56[rsp], xmm0
	call	_ZNSt10_HashtableIN5Lenia4Vec2IiEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_8Vec2HashIiEENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIS2_S2_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb1EEEEEEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb1EEEbEOT_OT0_RKT1_.isra.0
	mov	rdx, r15
	mov	rcx, rsi
	mov	DWORD PTR 56[rsp], r14d
	mov	DWORD PTR 60[rsp], r12d
	call	_ZNSt10_HashtableIN5Lenia4Vec2IiEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_8Vec2HashIiEENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIS2_S2_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb1EEEEEEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb1EEEbEOT_OT0_RKT1_.isra.0
	mov	eax, ebp
	mov	rdx, r15
	mov	rcx, rsi
	sub	eax, edi
	mov	DWORD PTR 56[rsp], r14d
	add	edi, 1
	mov	DWORD PTR 60[rsp], eax
	call	_ZNSt10_HashtableIN5Lenia4Vec2IiEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_8Vec2HashIiEENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIS2_S2_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb1EEEEEEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb1EEEbEOT_OT0_RKT1_.isra.0
	cmp	DWORD PTR 36[rsp], r13d
	jge	.L500
	mov	r14, QWORD PTR 280[rsp]
	movzx	r13d, WORD PTR 42[rsp]
	vmovq	xmm8, r15
	mov	r12, QWORD PTR 312[rsp]
	jmp	.L493
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA7108:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7108-.LLSDACSB7108
.LLSDACSB7108:
.LLSDACSE7108:
	.text
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC4:
	.long	-350469331
	.long	1058682594
	.align 8
.LC5:
	.long	0
	.long	1079574528
	.align 4
.LC6:
	.long	1065353216
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev2, Built by MSYS2 project) 14.2.0"
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	memset;	.scl	2;	.type	32;	.endef
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.def	_ZSt20__throw_length_errorPKc;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZN5Lenia6Animal8GetCellsEv;	.scl	2;	.type	32;	.endef
	.def	_ZdaPv;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEyyy;	.scl	2;	.type	32;	.endef
	.def	_ZSt28__throw_bad_array_new_lengthv;	.scl	2;	.type	32;	.endef
	.def	_ZSt17__throw_bad_allocv;	.scl	2;	.type	32;	.endef
	.def	memmove;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.glad_glGetNamedBufferSubData, "dr"
	.globl	.refptr.glad_glGetNamedBufferSubData
	.linkonce	discard
.refptr.glad_glGetNamedBufferSubData:
	.quad	glad_glGetNamedBufferSubData
	.section	.rdata$.refptr.glad_glDeleteBuffers, "dr"
	.globl	.refptr.glad_glDeleteBuffers
	.linkonce	discard
.refptr.glad_glDeleteBuffers:
	.quad	glad_glDeleteBuffers
	.section	.rdata$.refptr.glad_glNamedBufferData, "dr"
	.globl	.refptr.glad_glNamedBufferData
	.linkonce	discard
.refptr.glad_glNamedBufferData:
	.quad	glad_glNamedBufferData
	.section	.rdata$.refptr.glad_glBindBufferBase, "dr"
	.globl	.refptr.glad_glBindBufferBase
	.linkonce	discard
.refptr.glad_glBindBufferBase:
	.quad	glad_glBindBufferBase
	.section	.rdata$.refptr.glad_glGenBuffers, "dr"
	.globl	.refptr.glad_glGenBuffers
	.linkonce	discard
.refptr.glad_glGenBuffers:
	.quad	glad_glGenBuffers
