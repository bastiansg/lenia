	.file	"simulation.cpp"
	.intel_syntax noprefix
	.text
	.section .rdata,"dr"
	.align 8
.LC0:
	.ascii "cannot create std::deque larger than max_size()\0"
	.text
	.align 2
	.p2align 4
	.def	_ZNSt5dequeIN5Lenia4Vec2IiEESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZNSt5dequeIN5Lenia4Vec2IiEESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.isra.0
_ZNSt5dequeIN5Lenia4Vec2IiEESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.isra.0:
.LFB10054:
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
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rdi, QWORD PTR 64[rcx]
	mov	rax, QWORD PTR 48[rcx]
	mov	rsi, rdx
	lea	rdx, -8[rdi]
	mov	rbx, rcx
	cmp	rax, rdx
	je	.L2
	mov	rdx, QWORD PTR [rsi]
	add	rax, 8
	mov	QWORD PTR -8[rax], rdx
.L3:
	mov	QWORD PTR 48[rbx], rax
	add	rsp, 32
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
.L2:
	mov	rdi, QWORD PTR 72[rcx]
	mov	r9, QWORD PTR 40[rcx]
	movabs	r8, 2305843009213693951
	mov	rbp, rdi
	sub	rbp, r9
	mov	r12, rbp
	sar	r12, 3
	cmp	rdi, 1
	mov	rdx, r12
	adc	rdx, -1
	sub	rax, QWORD PTR 56[rcx]
	sal	rdx, 6
	sar	rax, 3
	add	rax, rdx
	mov	rdx, QWORD PTR 32[rcx]
	sub	rdx, QWORD PTR 16[rcx]
	sar	rdx, 3
	add	rax, rdx
	cmp	rax, r8
	je	.L18
	mov	rdx, QWORD PTR 8[rcx]
	mov	rcx, QWORD PTR [rcx]
	mov	rax, rdi
	sub	rax, rcx
	mov	r10, rdx
	sar	rax, 3
	sub	r10, rax
	cmp	r10, 1
	jbe	.L19
.L5:
	mov	ecx, 512
	call	_Znwy
	mov	rdx, QWORD PTR [rsi]
	mov	QWORD PTR 8[rdi], rax
	mov	rax, QWORD PTR 48[rbx]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR 72[rbx]
	lea	rdx, 8[rax]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR 72[rbx], rdx
	vmovq	xmm1, rax
	lea	rdx, 512[rax]
	vpinsrq	xmm0, xmm1, rdx, 1
	vmovdqu	XMMWORD PTR 56[rbx], xmm0
	jmp	.L3
	.p2align 4,,10
	.p2align 3
.L19:
	lea	rax, 2[r12]
	lea	r10, [rax+rax]
	cmp	r10, rdx
	jnb	.L6
	sub	rdx, rax
	lea	r8, 8[rdi]
	shr	rdx
	sub	r8, r9
	lea	r12, [rcx+rdx*8]
	cmp	r12, r9
	jnb	.L7
	cmp	r8, 8
	jle	.L8
	mov	rdx, r9
	mov	rcx, r12
	call	memmove
.L12:
	mov	rax, QWORD PTR [r12]
	lea	rdi, [r12+rbp]
	mov	QWORD PTR 40[rbx], r12
	mov	QWORD PTR 72[rbx], rdi
	lea	rdx, 512[rax]
	vmovq	xmm2, rax
	vpinsrq	xmm0, xmm2, rdx, 1
	vmovdqu	XMMWORD PTR 24[rbx], xmm0
	mov	rax, QWORD PTR [rdi]
	lea	rdx, 512[rax]
	vmovq	xmm3, rax
	vpinsrq	xmm0, xmm3, rdx, 1
	vmovdqu	XMMWORD PTR 56[rbx], xmm0
	jmp	.L5
	.p2align 4,,10
	.p2align 3
.L6:
	test	rdx, rdx
	mov	edi, 1
	cmovne	rdi, rdx
	add	rdi, rdx
	lea	r14, 2[rdi]
	mov	rax, r14
	shr	rax, 60
	jne	.L20
	sub	rdi, r12
	lea	rcx, 0[0+r14*8]
	call	_Znwy
	shr	rdi
	mov	rdx, QWORD PTR 40[rbx]
	mov	r13, rax
	lea	r12, [rax+rdi*8]
	mov	rax, QWORD PTR 72[rbx]
	lea	r8, 8[rax]
	sub	r8, rdx
	cmp	r8, 8
	jle	.L15
	mov	rcx, r12
	call	memmove
.L16:
	mov	rax, QWORD PTR 8[rbx]
	mov	rcx, QWORD PTR [rbx]
	lea	rdx, 0[0+rax*8]
	call	_ZdlPvy
	mov	QWORD PTR [rbx], r13
	mov	QWORD PTR 8[rbx], r14
	jmp	.L12
	.p2align 4,,10
	.p2align 3
.L7:
	lea	rcx, 8[r12+rbp]
	cmp	r8, 8
	jle	.L10
	sub	rcx, r8
	mov	rdx, r9
	call	memmove
	jmp	.L12
.L8:
	jne	.L12
	mov	rax, QWORD PTR [r9]
	mov	QWORD PTR [r12], rax
	jmp	.L12
.L20:
	cmp	r8, r14
	jnb	.L14
	call	_ZSt28__throw_bad_array_new_lengthv
.L15:
	jne	.L16
	mov	rax, QWORD PTR [rdx]
	mov	QWORD PTR [r12], rax
	jmp	.L16
.L10:
	jne	.L12
	mov	rax, QWORD PTR [r9]
	mov	QWORD PTR -8[rcx], rax
	jmp	.L12
.L14:
	call	_ZSt17__throw_bad_allocv
.L18:
	lea	rcx, .LC0[rip]
	call	_ZSt20__throw_length_errorPKc
	nop
	.seh_endproc
	.section .rdata,"dr"
.LC3:
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
	je	.L22
	sub	rdx, rcx
	call	_ZdlPvy
	movzx	eax, BYTE PTR 84[rsp]
.L22:
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
	jb	.L196
	lea	rdx, [r14+rsi*4]
	cmp	rsi, rcx
	cmovb	rax, rdx
.L30:
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
	je	.L43
	sub	rdx, rcx
	call	_ZdlPvy
	movzx	eax, BYTE PTR 84[rsp]
.L43:
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
	jb	.L197
	lea	rdx, [r14+rdi*4]
	cmp	rdi, rcx
	cmovb	rax, rdx
.L50:
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
	je	.L59
	sub	rdx, rcx
	call	_ZdlPvy
	mov	rcx, QWORD PTR 88[rsp]
	mov	rdx, QWORD PTR 104[rsp]
	sub	rdx, rcx
	test	rcx, rcx
	je	.L59
	call	_ZdlPvy
.L59:
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
	je	.L63
	mov	rdx, QWORD PTR 104[rsp]
	sub	rdx, rcx
	call	_ZdlPvy
.L63:
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
	je	.L68
	sub	rdx, rcx
	call	_ZdlPvy
	mov	rcx, QWORD PTR 88[rsp]
	mov	rdx, QWORD PTR 104[rsp]
	sub	rdx, rcx
	test	rcx, rcx
	je	.L68
	call	_ZdlPvy
.L68:
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
	je	.L185
	mov	rdx, QWORD PTR 72[rsp]
	sub	rdx, rcx
	vzeroupper
	call	_ZdlPvy
.L69:
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
	je	.L74
	sub	rdx, rcx
	call	_ZdlPvy
	mov	rcx, QWORD PTR 56[rsp]
	mov	rdx, QWORD PTR 72[rsp]
	sub	rdx, rcx
	test	rcx, rcx
	je	.L74
	call	_ZdlPvy
.L74:
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
	je	.L75
	sub	rdx, rcx
	call	_ZdlPvy
	movzx	eax, BYTE PTR 84[rsp]
.L75:
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
	je	.L80
	sub	rdx, rcx
	call	_ZdlPvy
	mov	rcx, QWORD PTR 88[rsp]
	mov	rdx, QWORD PTR 104[rsp]
	sub	rdx, rcx
	test	rcx, rcx
	je	.L80
	call	_ZdlPvy
.L80:
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
.L185:
	vzeroupper
	jmp	.L69
	.p2align 4,,10
	.p2align 3
.L197:
	mov	r8, rsi
	mov	rdx, rdi
	sub	r8, rax
	sub	rdx, rcx
	sar	r8, 2
	cmp	r8, rdx
	jnb	.L198
	movabs	rax, 2305843009213693951
	sub	rax, rcx
	cmp	rax, rdx
	jb	.L199
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
	je	.L55
	lea	r8, 0[0+rdx*4]
	lea	rcx, 4[rax]
	xor	edx, edx
	mov	QWORD PTR 40[rsp], r10
	mov	QWORD PTR 32[rsp], r9
	call	memset
	mov	r9, QWORD PTR 32[rsp]
	mov	r10, QWORD PTR 40[rsp]
.L55:
	mov	r11, QWORD PTR 104[rsp]
	test	r9, r9
	jne	.L200
	test	r14, r14
	jne	.L56
.L57:
	lea	rax, [r10+rdi*4]
	add	rsi, r10
	mov	r14, r10
	jmp	.L50
	.p2align 4,,10
	.p2align 3
.L196:
	mov	r8, rdi
	mov	rdx, rsi
	sub	r8, rax
	sub	rdx, rcx
	sar	r8, 2
	cmp	r8, rdx
	jnb	.L201
	movabs	rax, 2305843009213693951
	sub	rax, rcx
	cmp	rax, rdx
	jb	.L202
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
	jne	.L203
	test	r14, r14
	jne	.L36
.L37:
	lea	rax, [r10+rsi*4]
	add	rdi, r10
	mov	r14, r10
	jmp	.L30
	.p2align 4,,10
	.p2align 3
.L201:
	mov	DWORD PTR [rax], 0x00000000
	lea	rcx, 4[rax]
	sub	rdx, 1
	je	.L88
	lea	rsi, [rcx+rdx*4]
	mov	rdx, rsi
	sub	rdx, rax
	lea	r8, -4[rdx]
	xor	edx, edx
	call	memset
	mov	rax, rsi
	jmp	.L30
	.p2align 4,,10
	.p2align 3
.L198:
	mov	DWORD PTR [rax], 0x00000000
	lea	rcx, 4[rax]
	sub	rdx, 1
	je	.L90
	lea	rdi, [rcx+rdx*4]
	mov	rdx, rdi
	sub	rdx, rax
	lea	r8, -4[rdx]
	xor	edx, edx
	call	memset
	mov	rax, rdi
	jmp	.L50
	.p2align 4,,10
	.p2align 3
.L203:
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
.L200:
	mov	rcx, r10
	mov	r8, r9
	mov	rdx, r14
	mov	QWORD PTR 32[rsp], r11
	call	memcpy
	mov	r11, QWORD PTR 32[rsp]
	mov	r10, rax
.L56:
	mov	rdx, r11
	mov	rcx, r14
	mov	QWORD PTR 32[rsp], r10
	sub	rdx, r14
	call	_ZdlPvy
	mov	r10, QWORD PTR 32[rsp]
	jmp	.L57
	.p2align 4,,10
	.p2align 3
.L90:
	mov	rax, rcx
	jmp	.L50
	.p2align 4,,10
	.p2align 3
.L88:
	mov	rax, rcx
	jmp	.L30
.L202:
	lea	rcx, .LC3[rip]
	call	_ZSt20__throw_length_errorPKc
.LEHE8:
.L98:
	mov	rcx, QWORD PTR 56[rsp]
	mov	rdx, QWORD PTR 72[rsp]
	mov	rdi, rax
	sub	rdx, rcx
	test	rcx, rcx
	jne	.L204
	vzeroupper
.L72:
	mov	rcx, rsi
	mov	edx, 272
	mov	rsi, rdi
	call	_ZdlPvy
	jmp	.L26
.L97:
	mov	rcx, QWORD PTR 88[rsp]
	mov	rdx, QWORD PTR 104[rsp]
	mov	rsi, rax
	sub	rdx, rcx
	test	rcx, rcx
	jne	.L205
	vzeroupper
.L66:
	mov	edx, 12
	mov	rcx, rdi
	call	_ZdlPvy
	jmp	.L26
.L92:
	mov	rsi, rax
	vzeroupper
.L26:
	mov	rcx, QWORD PTR 184[rbx]
	mov	rdx, QWORD PTR 200[rbx]
	sub	rdx, rcx
	test	rcx, rcx
	je	.L82
	call	_ZdlPvy
.L82:
	mov	rcx, QWORD PTR 152[rbx]
	mov	rdx, QWORD PTR 168[rbx]
	sub	rdx, rcx
	test	rcx, rcx
	je	.L83
	call	_ZdlPvy
.L83:
	mov	rcx, QWORD PTR 120[rbx]
	mov	rdx, QWORD PTR 136[rbx]
	sub	rdx, rcx
	test	rcx, rcx
	je	.L84
	call	_ZdlPvy
.L84:
	mov	rcx, QWORD PTR 88[rbx]
	mov	rdx, QWORD PTR 104[rbx]
	sub	rdx, rcx
	test	rcx, rcx
	je	.L85
	call	_ZdlPvy
.L85:
	mov	rcx, QWORD PTR 56[rbx]
	mov	rdx, QWORD PTR 72[rbx]
	sub	rdx, rcx
	test	rcx, rcx
	je	.L86
	call	_ZdlPvy
.L86:
	mov	rcx, rsi
.LEHB9:
	call	_Unwind_Resume
.LEHE9:
.L205:
	vzeroupper
	call	_ZdlPvy
	jmp	.L66
.L99:
.L192:
	mov	rcx, QWORD PTR 88[rsp]
	mov	rdx, QWORD PTR 104[rsp]
	mov	rsi, rax
	sub	rdx, rcx
	test	rcx, rcx
	je	.L187
	vzeroupper
	call	_ZdlPvy
	jmp	.L26
.L95:
	jmp	.L192
.L199:
	lea	rcx, .LC3[rip]
.LEHB10:
	call	_ZSt20__throw_length_errorPKc
.LEHE10:
.L93:
	jmp	.L192
.L187:
	vzeroupper
	jmp	.L26
.L96:
	jmp	.L192
.L94:
	jmp	.L192
.L204:
	vzeroupper
	call	_ZdlPvy
	jmp	.L72
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
	.uleb128 .L94-.LFB7098
	.uleb128 0
	.uleb128 .LEHB1-.LFB7098
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L96-.LFB7098
	.uleb128 0
	.uleb128 .LEHB2-.LFB7098
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L92-.LFB7098
	.uleb128 0
	.uleb128 .LEHB3-.LFB7098
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L97-.LFB7098
	.uleb128 0
	.uleb128 .LEHB4-.LFB7098
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L92-.LFB7098
	.uleb128 0
	.uleb128 .LEHB5-.LFB7098
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L98-.LFB7098
	.uleb128 0
	.uleb128 .LEHB6-.LFB7098
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L99-.LFB7098
	.uleb128 0
	.uleb128 .LEHB7-.LFB7098
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L95-.LFB7098
	.uleb128 0
	.uleb128 .LEHB8-.LFB7098
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L93-.LFB7098
	.uleb128 0
	.uleb128 .LEHB9-.LFB7098
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB10-.LFB7098
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L95-.LFB7098
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
	je	.L207
	mov	rdx, QWORD PTR 200[rbx]
	sub	rdx, rcx
	call	_ZdlPvy
.L207:
	mov	rcx, QWORD PTR 152[rbx]
	test	rcx, rcx
	je	.L208
	mov	rdx, QWORD PTR 168[rbx]
	sub	rdx, rcx
	call	_ZdlPvy
.L208:
	mov	rcx, QWORD PTR 120[rbx]
	test	rcx, rcx
	je	.L209
	mov	rdx, QWORD PTR 136[rbx]
	sub	rdx, rcx
	call	_ZdlPvy
.L209:
	mov	rcx, QWORD PTR 88[rbx]
	test	rcx, rcx
	je	.L210
	mov	rdx, QWORD PTR 104[rbx]
	sub	rdx, rcx
	call	_ZdlPvy
.L210:
	mov	rcx, QWORD PTR 56[rbx]
	test	rcx, rcx
	je	.L224
	mov	rdx, QWORD PTR 72[rbx]
	sub	rdx, rcx
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	_ZdlPvy
	.p2align 4,,10
	.p2align 3
.L224:
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
	je	.L226
	mov	rdx, QWORD PTR 0[rbp]
	test	rdx, rdx
	je	.L226
	mov	r15, QWORD PTR 16[rdi]
	mov	eax, r12d
	xor	r14d, r14d
	lea	rcx, [rax+r15]
	mov	QWORD PTR 40[rsp], rcx
	xor	ecx, ecx
	test	r15, r15
	jne	.L250
.L234:
	add	rcx, 1
	cmp	rcx, rbx
	jne	.L234
.L226:
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
	je	.L249
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
.L250:
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
.L233:
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
.L235:
	mov	r8, r12
	vmovq	r15, xmm5
	.p2align 4
	.p2align 3
.L232:
	mov	rax, r8
	xor	edx, edx
	mov	rcx, r14
	div	rsi
	mov	r11, rdx
	imul	r11, r9
	.p2align 6
	.p2align 4
	.p2align 3
.L229:
	mov	rax, rcx
	xor	edx, edx
	vmovss	xmm0, DWORD PTR [rdi]
	add	rcx, 1
	div	r9
	add	rdx, r11
	vmovss	DWORD PTR [r15+rdx*4], xmm0
	cmp	rbp, rcx
	jne	.L229
	add	r8, 1
	cmp	r10, r8
	jne	.L232
	vmovq	rax, xmm4
	add	rdi, 4
	add	r14, rax
	add	rbp, rax
	cmp	rbx, rdi
	jne	.L235
	mov	rax, QWORD PTR 64[rsp]
	add	r13, 1
	mov	r8, QWORD PTR 56[rsp]
	vmovq	r15, xmm4
	mov	r10, QWORD PTR 72[rsp]
	cmp	rax, r13
	je	.L248
	mov	r12, r15
	mov	rbx, QWORD PTR 48[rsp]
	imul	r12, r13
	add	r12, rbx
	jmp	.L233
.L248:
	vmovq	r8, xmm5
	vmovq	rdi, xmm16
	jmp	.L226
.L249:
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
	vmulsd	xmm0, xmm0, QWORD PTR .LC5[rip]
	vcvtusi2ss	xmm1, xmm6, ecx
	vcvtusi2ss	xmm6, xmm6, edx
	vmovsd	QWORD PTR 32[rbx], xmm0
	vmulsd	xmm0, xmm0, QWORD PTR .LC6[rip]
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
	.section	.text$_ZNSt11_Deque_baseIN5Lenia4Vec2IiEESaIS2_EE17_M_initialize_mapEy,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNSt11_Deque_baseIN5Lenia4Vec2IiEESaIS2_EE17_M_initialize_mapEy
	.def	_ZNSt11_Deque_baseIN5Lenia4Vec2IiEESaIS2_EE17_M_initialize_mapEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt11_Deque_baseIN5Lenia4Vec2IiEESaIS2_EE17_M_initialize_mapEy
_ZNSt11_Deque_baseIN5Lenia4Vec2IiEESaIS2_EE17_M_initialize_mapEy:
.LFB8639:
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
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	eax, 8
	mov	rdi, rcx
	mov	rcx, rdx
	mov	rbp, rdx
	shr	rcx, 6
	lea	rbx, 1[rcx]
	add	rcx, 3
	cmp	rcx, rax
	cmovb	rcx, rax
	mov	QWORD PTR 8[rdi], rcx
	sal	rcx, 3
.LEHB11:
	call	_Znwy
.LEHE11:
	mov	rdx, QWORD PTR 8[rdi]
	mov	QWORD PTR [rdi], rax
	sub	rdx, rbx
	shr	rdx
	lea	r12, [rax+rdx*8]
	lea	rsi, [r12+rbx*8]
	cmp	r12, rsi
	jnb	.L255
	mov	rbx, r12
	.p2align 4
	.p2align 3
.L256:
	mov	ecx, 512
.LEHB12:
	call	_Znwy
.LEHE12:
	mov	QWORD PTR [rbx], rax
	add	rbx, 8
	cmp	rbx, rsi
	jb	.L256
.L255:
	mov	rdx, QWORD PTR [r12]
	mov	rax, QWORD PTR -8[rsi]
	and	ebp, 63
	sub	rsi, 8
	vpbroadcastq	zmm0, QWORD PTR [r12]
	add	rdx, 512
	vmovdqu	XMMWORD PTR 16[rdi], xmm0
	vmovq	xmm0, rdx
	lea	rdx, [rax+rbp*8]
	vpinsrq	xmm0, xmm0, r12, 1
	vmovdqu	XMMWORD PTR 32[rdi], xmm0
	vmovq	xmm0, rdx
	vpinsrq	xmm0, xmm0, rax, 1
	add	rax, 512
	vmovq	xmm1, rax
	vmovdqu	XMMWORD PTR 48[rdi], xmm0
	vpinsrq	xmm0, xmm1, rsi, 1
	vmovdqu	XMMWORD PTR 64[rdi], xmm0
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
.L263:
	mov	rcx, rax
	vzeroupper
	call	__cxa_begin_catch
.L258:
	cmp	r12, rbx
	jnb	.L268
	mov	rcx, QWORD PTR [r12]
	mov	edx, 512
	add	r12, 8
	call	_ZdlPvy
	jmp	.L258
.L268:
.LEHB13:
	call	__cxa_rethrow
.LEHE13:
.L264:
	mov	rbx, rax
	vzeroupper
	call	__cxa_end_catch
	mov	rcx, rbx
	call	__cxa_begin_catch
	mov	rax, QWORD PTR 8[rdi]
	mov	rcx, QWORD PTR [rdi]
	lea	rdx, 0[0+rax*8]
	call	_ZdlPvy
	xor	eax, eax
	mov	QWORD PTR [rdi], rax
	mov	QWORD PTR 8[rdi], rax
.LEHB14:
	call	__cxa_rethrow
.LEHE14:
.L262:
	mov	rbx, rax
	vzeroupper
	call	__cxa_end_catch
	mov	rcx, rbx
.LEHB15:
	call	_Unwind_Resume
	nop
.LEHE15:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
	.align 4
.LLSDA8639:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT8639-.LLSDATTD8639
.LLSDATTD8639:
	.byte	0x1
	.uleb128 .LLSDACSE8639-.LLSDACSB8639
.LLSDACSB8639:
	.uleb128 .LEHB11-.LFB8639
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB12-.LFB8639
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L263-.LFB8639
	.uleb128 0x1
	.uleb128 .LEHB13-.LFB8639
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L264-.LFB8639
	.uleb128 0x3
	.uleb128 .LEHB14-.LFB8639
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L262-.LFB8639
	.uleb128 0
	.uleb128 .LEHB15-.LFB8639
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
.LLSDACSE8639:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align 4
	.long	0

.LLSDATT8639:
	.section	.text$_ZNSt11_Deque_baseIN5Lenia4Vec2IiEESaIS2_EE17_M_initialize_mapEy,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt10_HashtableIN5Lenia4Vec2IiEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_8Vec2HashIiEENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEyyPNS4_10_Hash_nodeIS2_Lb1EEEy,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNSt10_HashtableIN5Lenia4Vec2IiEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_8Vec2HashIiEENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEyyPNS4_10_Hash_nodeIS2_Lb1EEEy
	.def	_ZNSt10_HashtableIN5Lenia4Vec2IiEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_8Vec2HashIiEENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEyyPNS4_10_Hash_nodeIS2_Lb1EEEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt10_HashtableIN5Lenia4Vec2IiEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_8Vec2HashIiEENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEyyPNS4_10_Hash_nodeIS2_Lb1EEEy
_ZNSt10_HashtableIN5Lenia4Vec2IiEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_8Vec2HashIiEENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEyyPNS4_10_Hash_nodeIS2_Lb1EEEy:
.LFB9129:
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
.LEHB16:
	call	_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEyyy
	cmp	BYTE PTR 64[rsp], 0
	mov	rsi, QWORD PTR 72[rsp]
	jne	.L270
	mov	rbp, QWORD PTR [rbx]
.L271:
	lea	rcx, 0[rbp+rdi*8]
	mov	QWORD PTR 16[r12], r13
	mov	rax, QWORD PTR [rcx]
	test	rax, rax
	je	.L283
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR [r12], rax
	mov	rax, QWORD PTR [rcx]
	mov	QWORD PTR [rax], r12
.L284:
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
.L270:
	cmp	rsi, 1
	je	.L298
	mov	rax, rsi
	shr	rax, 60
	jne	.L299
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
.L273:
	mov	r10, QWORD PTR 16[rbx]
	mov	QWORD PTR 16[rbx], 0
	xor	r14d, r14d
	lea	r8, 16[rbx]
.L297:
	test	r10, r10
	je	.L300
.L276:
	mov	rcx, r10
	xor	edx, edx
	mov	r10, QWORD PTR [r10]
	mov	rax, QWORD PTR 16[rcx]
	div	rsi
	lea	r11, 0[rbp+rdx*8]
	mov	rdi, QWORD PTR [r11]
	test	rdi, rdi
	je	.L301
	mov	rdx, QWORD PTR [rdi]
	mov	QWORD PTR [rcx], rdx
	mov	rdx, QWORD PTR [r11]
	mov	QWORD PTR [rdx], rcx
	test	r10, r10
	jne	.L276
.L300:
	mov	rcx, QWORD PTR [rbx]
	mov	rdx, QWORD PTR 8[rbx]
	cmp	rcx, r9
	je	.L277
	sal	rdx, 3
	call	_ZdlPvy
.L277:
	mov	rax, r13
	xor	edx, edx
	mov	QWORD PTR 8[rbx], rsi
	div	rsi
	mov	QWORD PTR [rbx], rbp
	mov	rdi, rdx
	jmp	.L271
	.p2align 4,,10
	.p2align 3
.L301:
	mov	rax, QWORD PTR 16[rbx]
	mov	QWORD PTR [rcx], rax
	mov	QWORD PTR 16[rbx], rcx
	mov	QWORD PTR [r11], r8
	cmp	QWORD PTR [rcx], 0
	je	.L280
	mov	QWORD PTR 0[rbp+r14*8], rcx
.L280:
	mov	r14, rdx
	jmp	.L297
	.p2align 4,,10
	.p2align 3
.L283:
	mov	rax, QWORD PTR 16[rbx]
	mov	QWORD PTR [r12], rax
	mov	QWORD PTR 16[rbx], r12
	mov	rax, QWORD PTR [r12]
	test	rax, rax
	je	.L285
	mov	rax, QWORD PTR 16[rax]
	xor	edx, edx
	div	QWORD PTR 8[rbx]
	mov	QWORD PTR 0[rbp+rdx*8], r12
.L285:
	lea	rax, 16[rbx]
	mov	QWORD PTR [rcx], rax
	jmp	.L284
	.p2align 4,,10
	.p2align 3
.L298:
	lea	r9, 48[rbx]
	mov	QWORD PTR 48[rbx], 0
	mov	rbp, r9
	jmp	.L273
	.p2align 4,,10
	.p2align 3
.L299:
	shr	rsi, 61
	je	.L275
	call	_ZSt28__throw_bad_array_new_lengthv
.L275:
	call	_ZSt17__throw_bad_allocv
.LEHE16:
.L288:
	mov	QWORD PTR 40[rbx], rbp
	mov	rcx, rax
	vzeroupper
.LEHB17:
	call	_Unwind_Resume
	nop
.LEHE17:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA9129:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9129-.LLSDACSB9129
.LLSDACSB9129:
	.uleb128 .LEHB16-.LFB9129
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L288-.LFB9129
	.uleb128 0
	.uleb128 .LEHB17-.LFB9129
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
.LLSDACSE9129:
	.section	.text$_ZNSt10_HashtableIN5Lenia4Vec2IiEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_8Vec2HashIiEENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEyyPNS4_10_Hash_nodeIS2_Lb1EEEy,"x"
	.linkonce discard
	.seh_endproc
	.text
	.align 2
	.p2align 4
	.def	_ZNSt10_HashtableIN5Lenia4Vec2IiEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_8Vec2HashIiEENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS2_SI_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb1EEEEEEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb1EEEbEOT_OT0_RKT1_.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZNSt10_HashtableIN5Lenia4Vec2IiEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_8Vec2HashIiEENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS2_SI_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb1EEEEEEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb1EEEbEOT_OT0_RKT1_.isra.0
_ZNSt10_HashtableIN5Lenia4Vec2IiEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_8Vec2HashIiEENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS2_SI_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb1EEEEEEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb1EEEbEOT_OT0_RKT1_.isra.0:
.LFB10082:
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
	je	.L303
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
	je	.L304
	mov	r11, QWORD PTR [r8]
	mov	r9, QWORD PTR 16[r11]
	jmp	.L313
	.p2align 4,,10
	.p2align 3
.L309:
	mov	r10, QWORD PTR [r11]
	test	r10, r10
	je	.L304
	mov	r9, QWORD PTR 16[r10]
	xor	edx, edx
	mov	r8, r11
	mov	rax, r9
	div	rbx
	cmp	r12, rdx
	jne	.L304
	mov	r11, r10
.L313:
	cmp	r9, rsi
	jne	.L309
	cmp	DWORD PTR 8[r11], ecx
	jne	.L309
	cmp	DWORD PTR 12[r11], r13d
	jne	.L309
	cmp	QWORD PTR [r8], 0
	je	.L304
.L330:
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
.L303:
	mov	rax, QWORD PTR 16[rdi]
	test	rax, rax
	jne	.L308
	.p2align 4
	.p2align 3
.L306:
	add	r13, r13
	xor	edx, edx
	mov	rsi, r13
	xor	rsi, rcx
	mov	rax, rsi
	div	QWORD PTR 8[rdi]
	mov	r14, rdx
.L304:
	mov	ecx, 24
.LEHB18:
	call	_Znwy
.LEHE18:
	mov	r8, rsi
	mov	rdx, r14
	mov	rcx, rdi
	mov	QWORD PTR [rax], 0
	mov	rbx, rax
	mov	rax, QWORD PTR 0[rbp]
	mov	r9, rbx
	mov	QWORD PTR 8[rbx], rax
	mov	QWORD PTR 32[rsp], 1
.LEHB19:
	call	_ZNSt10_HashtableIN5Lenia4Vec2IiEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_8Vec2HashIiEENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEyyPNS4_10_Hash_nodeIS2_Lb1EEEy
.LEHE19:
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
.L331:
	cmp	DWORD PTR 12[rax], r13d
	je	.L330
.L307:
	mov	rax, QWORD PTR [rax]
	test	rax, rax
	je	.L306
.L308:
	cmp	DWORD PTR 8[rax], ecx
	jne	.L307
	jmp	.L331
.L317:
	mov	rsi, rax
	mov	rcx, rbx
	mov	edx, 24
	vzeroupper
	call	_ZdlPvy
	mov	rcx, rsi
.LEHB20:
	call	_Unwind_Resume
	nop
.LEHE20:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA10082:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10082-.LLSDACSB10082
.LLSDACSB10082:
	.uleb128 .LEHB18-.LFB10082
	.uleb128 .LEHE18-.LEHB18
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB19-.LFB10082
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L317-.LFB10082
	.uleb128 0
	.uleb128 .LEHB20-.LFB10082
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0
	.uleb128 0
.LLSDACSE10082:
	.text
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN5Lenia10Simulation22CalculateBoundingBoxesEv
	.def	_ZN5Lenia10Simulation22CalculateBoundingBoxesEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Lenia10Simulation22CalculateBoundingBoxesEv
_ZN5Lenia10Simulation22CalculateBoundingBoxesEv:
.LFB7146:
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
	sub	rsp, 408
	.seh_stackalloc	408
	vmovups	XMMWORD PTR 288[rsp], xmm6
	.seh_savexmm	xmm6, 288
	vmovups	XMMWORD PTR 304[rsp], xmm7
	.seh_savexmm	xmm7, 304
	vmovups	XMMWORD PTR 320[rsp], xmm8
	.seh_savexmm	xmm8, 320
	vmovups	XMMWORD PTR 336[rsp], xmm9
	.seh_savexmm	xmm9, 336
	vmovups	XMMWORD PTR 352[rsp], xmm10
	.seh_savexmm	xmm10, 352
	vmovups	XMMWORD PTR 368[rsp], xmm11
	.seh_savexmm	xmm11, 368
	vmovups	XMMWORD PTR 384[rsp], xmm12
	.seh_savexmm	xmm12, 384
	.seh_endprologue
	xor	edx, edx
	mov	rax, QWORD PTR 64[rcx]
	mov	r9, QWORD PTR 56[rcx]
	mov	r8, rax
	sub	r8, r9
	mov	QWORD PTR 32[rsp], rax
	mov	rax, QWORD PTR .refptr.glad_glGetNamedBufferSubData[rip]
	mov	rbx, rcx
	vmovq	xmm9, rcx
	mov	ecx, DWORD PTR 48[rcx]
	call	[QWORD PTR [rax]]
	mov	r9, QWORD PTR 8[rbx]
	mov	DWORD PTR 96[rsp], 0
	xor	edx, edx
	mov	rcx, QWORD PTR [rbx]
	test	r9, r9
	je	.L334
	test	rcx, rcx
	je	.L473
	mov	r8, QWORD PTR 56[rbx]
	vxorps	xmm0, xmm0, xmm0
	xor	r10d, r10d
.L427:
	imul	rdx, rcx
	xor	edi, edi
	xor	eax, eax
	jmp	.L425
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L463:
	lea	eax, 1[rdi]
	mov	rdi, rax
	cmp	rax, rcx
	jnb	.L485
.L425:
	add	rax, rdx
	vcomiss	xmm0, DWORD PTR [r8+rax*4]
	jnb	.L463
	mov	DWORD PTR 96[rsp], r10d
	vpxor	xmm0, xmm0, xmm0
	xor	edx, edx
	mov	esi, r10d
	mov	QWORD PTR 208[rsp], 0
	lea	r13d, [rsi+rsi]
	lea	rax, 208[rsp]
	mov	rcx, rax
	vmovq	xmm10, rax
	lea	r15d, -10[rsi]
	mov	QWORD PTR 216[rsp], 0
	vmovdqu64	ZMMWORD PTR 224[rsp], zmm0
	vzeroupper
	call	_ZNSt11_Deque_baseIN5Lenia4Vec2IiEESaIS2_EE17_M_initialize_mapEy
	mov	rax, QWORD PTR 208[rsp]
	mov	r12, QWORD PTR 216[rsp]
	mov	r14, QWORD PTR 240[rsp]
	mov	r11, QWORD PTR 256[rsp]
	mov	DWORD PTR 64[rsp], r13d
	vmovd	xmm7, r15d
	mov	rbp, QWORD PTR 248[rsp]
	mov	r8, QWORD PTR 264[rsp]
	mov	QWORD PTR 32[rsp], r12
	vmovq	xmm8, rax
	mov	rbx, QWORD PTR 280[rsp]
	mov	rax, QWORD PTR 224[rsp]
	mov	QWORD PTR 40[rsp], r14
	mov	r13, r11
	mov	r9, QWORD PTR 272[rsp]
	mov	r14d, edi
	mov	rdx, rbp
	mov	edi, esi
	vmovq	xmm6, rax
	mov	r11, rbx
	mov	rax, r8
	.p2align 4
	.p2align 3
.L337:
	mov	ebp, DWORD PTR 64[rsp]
	mov	r15, r11
	xor	esi, esi
	mov	r11, rdx
	sub	ebp, edi
	jmp	.L394
	.p2align 4,,10
	.p2align 3
.L487:
	lea	r12, 8[r13]
.L339:
	mov	DWORD PTR 0[r13], ebp
	mov	DWORD PTR 4[r13], ebx
	mov	r13d, r14d
	sub	r13d, esi
	cmp	r12, rdx
	je	.L353
	lea	r10, 8[r12]
	mov	DWORD PTR [r12], edi
	mov	DWORD PTR 4[r12], r13d
	cmp	r10, rdx
	je	.L368
.L490:
	lea	r12, 8[r10]
	mov	DWORD PTR [r10], ebp
	mov	DWORD PTR 4[r10], r13d
	cmp	r12, rdx
	je	.L381
.L492:
	lea	r13, 8[r12]
.L382:
	add	esi, 1
	mov	DWORD PTR [r12], edi
	mov	DWORD PTR 4[r12], ebx
	cmp	esi, 10
	je	.L486
.L394:
	lea	rdx, -8[r9]
	lea	ebx, [r14+rsi]
	cmp	rdx, r13
	jne	.L487
	mov	r9, r15
	mov	rcx, r13
	vmovq	r10, xmm6
	sub	r9, r11
	mov	rdx, r9
	sar	rdx, 3
	cmp	r15, 1
	mov	r8, rdx
	adc	r8, -1
	sub	rcx, rax
	mov	rax, QWORD PTR 40[rsp]
	sal	r8, 6
	sar	rcx, 3
	sub	rax, r10
	add	rcx, r8
	sar	rax, 3
	add	rax, rcx
	movabs	rcx, 2305843009213693951
	cmp	rax, rcx
	je	.L355
	vmovq	rcx, xmm8
	mov	rax, r15
	sub	rax, rcx
	mov	rcx, QWORD PTR 32[rsp]
	sar	rax, 3
	sub	rcx, rax
	cmp	rcx, 1
	jbe	.L488
.L341:
	mov	ecx, 512
	mov	QWORD PTR 48[rsp], r11
	add	r15, 8
	call	_Znwy
	mov	r11, QWORD PTR 48[rsp]
	mov	QWORD PTR [r15], rax
	lea	r9, 512[rax]
	lea	rdx, 504[rax]
	mov	r12, rax
	jmp	.L339
	.p2align 4,,10
	.p2align 3
.L353:
	mov	r9, r15
	mov	rcx, r12
	vmovq	r10, xmm6
	sub	r9, r11
	mov	rdx, r9
	sar	rdx, 3
	cmp	r15, 1
	mov	r8, rdx
	adc	r8, -1
	sub	rcx, rax
	mov	rax, QWORD PTR 40[rsp]
	sal	r8, 6
	sar	rcx, 3
	sub	rax, r10
	add	rcx, r8
	sar	rax, 3
	add	rax, rcx
	movabs	rcx, 2305843009213693951
	cmp	rax, rcx
	je	.L355
	vmovq	rcx, xmm8
	mov	rax, r15
	sub	rax, rcx
	mov	rcx, QWORD PTR 32[rsp]
	sar	rax, 3
	sub	rcx, rax
	cmp	rcx, 1
	jbe	.L489
.L356:
	mov	ecx, 512
	mov	QWORD PTR 48[rsp], r11
	add	r15, 8
	call	_Znwy
	mov	r11, QWORD PTR 48[rsp]
	lea	rdx, 504[rax]
	mov	r10, rax
	mov	QWORD PTR [r15], rax
	lea	r9, 512[rax]
	mov	DWORD PTR [r12], edi
	mov	DWORD PTR 4[r12], r13d
	cmp	r10, rdx
	jne	.L490
	.p2align 4
	.p2align 3
.L368:
	mov	r9, r15
	mov	rcx, r10
	sub	r9, r11
	mov	rdx, r9
	sar	rdx, 3
	cmp	r15, 1
	mov	r8, rdx
	adc	r8, -1
	sub	rcx, rax
	mov	rax, QWORD PTR 40[rsp]
	sal	r8, 6
	sar	rcx, 3
	add	rcx, r8
	vmovq	r8, xmm6
	sub	rax, r8
	sar	rax, 3
	add	rax, rcx
	movabs	rcx, 2305843009213693951
	cmp	rax, rcx
	je	.L355
	vmovq	rcx, xmm8
	mov	rax, r15
	sub	rax, rcx
	mov	rcx, QWORD PTR 32[rsp]
	sar	rax, 3
	sub	rcx, rax
	cmp	rcx, 1
	jbe	.L491
.L370:
	mov	ecx, 512
	mov	QWORD PTR 56[rsp], r11
	add	r15, 8
	mov	QWORD PTR 48[rsp], r10
	call	_Znwy
	mov	r10, QWORD PTR 48[rsp]
	mov	r11, QWORD PTR 56[rsp]
	lea	rdx, 504[rax]
	mov	r12, rax
	mov	QWORD PTR [r15], rax
	lea	r9, 512[rax]
	mov	DWORD PTR [r10], ebp
	mov	DWORD PTR 4[r10], r13d
	cmp	r12, rdx
	jne	.L492
	.p2align 4
	.p2align 3
.L381:
	mov	r9, r15
	mov	rcx, r12
	vmovq	r10, xmm6
	sub	r9, r11
	mov	rdx, r9
	sar	rdx, 3
	cmp	r15, 1
	mov	r8, rdx
	adc	r8, -1
	sub	rcx, rax
	mov	rax, QWORD PTR 40[rsp]
	sal	r8, 6
	sar	rcx, 3
	sub	rax, r10
	add	rcx, r8
	sar	rax, 3
	add	rax, rcx
	movabs	rcx, 2305843009213693951
	cmp	rax, rcx
	je	.L355
	vmovq	rcx, xmm8
	mov	rax, r15
	sub	rax, rcx
	mov	rcx, QWORD PTR 32[rsp]
	sar	rax, 3
	sub	rcx, rax
	cmp	rcx, 1
	jbe	.L493
.L383:
	mov	ecx, 512
	mov	QWORD PTR 48[rsp], r11
	add	r15, 8
	call	_Znwy
	mov	r11, QWORD PTR 48[rsp]
	mov	QWORD PTR [r15], rax
	mov	r13, rax
	lea	r9, 512[rax]
	jmp	.L382
	.p2align 4,,10
	.p2align 3
.L486:
	sub	edi, 1
	vmovd	ebx, xmm7
	mov	rdx, r11
	mov	r11, r15
	cmp	edi, ebx
	jne	.L337
	mov	esi, edi
	mov	edi, r14d
	mov	r8, rax
	mov	r11, r13
	lea	eax, 10[rdi]
	vpxor	xmm0, xmm0, xmm0
	mov	DWORD PTR 72[rsp], esi
	mov	rbp, rdx
	mov	DWORD PTR 100[rsp], eax
	mov	eax, DWORD PTR 96[rsp]
	lea	r13, 192[rsp]
	mov	rbx, r15
	vmovdqu	YMMWORD PTR 168[rsp], ymm0
	mov	r12, QWORD PTR 32[rsp]
	mov	r14, QWORD PTR 40[rsp]
	add	eax, 10
	mov	QWORD PTR 144[rsp], r13
	mov	DWORD PTR 80[rsp], eax
	lea	eax, -10[rdi]
	mov	DWORD PTR 88[rsp], eax
	vmovq	rax, xmm6
	mov	QWORD PTR 152[rsp], 1
	mov	QWORD PTR 160[rsp], 0
	mov	DWORD PTR 176[rsp], 0x3f800000
	cmp	r11, rax
	je	.L430
	mov	QWORD PTR 120[rsp], r13
	mov	r15, r8
	mov	ebp, edi
	vxorps	xmm6, xmm6, xmm6
	mov	QWORD PTR 112[rsp], r14
	mov	r10, r9
	mov	r8, rdx
	mov	rdi, rax
	mov	QWORD PTR 104[rsp], r12
	lea	rsi, 128[rsp]
	mov	r13, r11
	vmovq	xmm11, rsi
	lea	rsi, 144[rsp]
	vmovq	xmm12, rsi
	vmovq	rsi, xmm10
	vzeroupper
	.p2align 4
	.p2align 3
.L413:
	cmp	r13, r15
	je	.L397
	vmovq	xmm7, QWORD PTR -8[r13]
	sub	r13, 8
.L398:
	cmp	QWORD PTR 168[rsp], 0
	vmovd	r14d, xmm7
	vpextrd	DWORD PTR 32[rsp], xmm7, 1
	jne	.L399
	mov	rax, QWORD PTR 160[rsp]
	vpextrd	edx, xmm7, 1
	test	rax, rax
	jne	.L400
	jmp	.L483
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L402:
	mov	rax, QWORD PTR [rax]
	test	rax, rax
	je	.L483
.L400:
	cmp	DWORD PTR 8[rax], r14d
	jne	.L402
	cmp	DWORD PTR 12[rax], edx
	jne	.L402
.L403:
	cmp	r13, rdi
	jne	.L413
.L496:
	mov	rsi, QWORD PTR 160[rsp]
	mov	r12, QWORD PTR 104[rsp]
	mov	rbp, r8
	mov	r13, QWORD PTR 120[rsp]
	test	rsi, rsi
	je	.L484
	.p2align 4
	.p2align 3
.L414:
	mov	rcx, rsi
	mov	rsi, QWORD PTR [rsi]
	mov	edx, 24
	call	_ZdlPvy
	test	rsi, rsi
	jne	.L414
.L484:
	mov	rax, QWORD PTR 152[rsp]
	mov	rcx, QWORD PTR 144[rsp]
	lea	r8, 0[0+rax*8]
.L396:
	xor	edx, edx
	call	memset
	mov	rcx, QWORD PTR 144[rsp]
	mov	QWORD PTR 168[rsp], 0
	mov	QWORD PTR 160[rsp], 0
	mov	rax, QWORD PTR 152[rsp]
	cmp	rcx, r13
	je	.L415
	lea	rdx, 0[0+rax*8]
	call	_ZdlPvy
.L415:
	vmovq	rax, xmm8
	test	rax, rax
	je	.L416
	add	rbx, 8
	cmp	rbp, rbx
	jnb	.L418
	.p2align 4
	.p2align 3
.L417:
	mov	rcx, QWORD PTR 0[rbp]
	mov	edx, 512
	add	rbp, 8
	call	_ZdlPvy
	cmp	rbp, rbx
	jb	.L417
.L418:
	lea	rdx, 0[0+r12*8]
	vmovq	rcx, xmm8
	call	_ZdlPvy
.L416:
	mov	ecx, 16
	call	_Znwy
	mov	rbx, rax
	mov	eax, DWORD PTR 72[rsp]
	vmovq	rdi, xmm9
	mov	r9, QWORD PTR 184[rdi]
	mov	DWORD PTR [rbx], eax
	mov	eax, DWORD PTR 88[rsp]
	mov	DWORD PTR 4[rbx], eax
	mov	eax, DWORD PTR 80[rsp]
	mov	DWORD PTR 8[rbx], eax
	mov	eax, DWORD PTR 100[rsp]
	mov	DWORD PTR 12[rbx], eax
	mov	rax, QWORD PTR 200[rdi]
	mov	QWORD PTR 32[rsp], rax
	sub	rax, r9
	cmp	rax, 15
	jbe	.L494
	mov	r8, QWORD PTR 192[rdi]
	lea	rdx, 16[r9]
	mov	rcx, r8
	sub	rcx, r9
	cmp	rcx, 15
	ja	.L495
	add	rcx, rbx
	lea	r9, 16[rbx]
	xor	eax, eax
	sub	r9, rcx
	.p2align 5
	.p2align 4
	.p2align 3
.L424:
	vmovdqu	xmm1, XMMWORD PTR [rcx+rax]
	vmovdqu	XMMWORD PTR [r8+rax], xmm1
	add	rax, 16
	cmp	rax, r9
	jne	.L424
.L423:
	vmovq	rax, xmm9
	mov	rcx, rbx
	mov	QWORD PTR 192[rax], rdx
	mov	edx, 16
	vmovups	xmm6, XMMWORD PTR 288[rsp]
	vmovups	xmm7, XMMWORD PTR 304[rsp]
	vmovups	xmm8, XMMWORD PTR 320[rsp]
	vmovups	xmm9, XMMWORD PTR 336[rsp]
	vmovups	xmm10, XMMWORD PTR 352[rsp]
	vmovups	xmm11, XMMWORD PTR 368[rsp]
	vmovups	xmm12, XMMWORD PTR 384[rsp]
	add	rsp, 408
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
.L399:
	movsx	rdx, DWORD PTR 32[rsp]
	movsx	rax, r14d
	mov	rcx, QWORD PTR 152[rsp]
	mov	QWORD PTR 48[rsp], rax
	lea	r9, [rdx+rdx]
	vmovq	xmm10, rdx
	xor	edx, edx
	xor	rax, r9
	mov	QWORD PTR 40[rsp], rax
	div	rcx
	mov	rax, QWORD PTR 144[rsp]
	mov	r9, QWORD PTR [rax+rdx*8]
	test	r9, r9
	je	.L401
	mov	rax, QWORD PTR [r9]
	mov	r11, QWORD PTR 40[rsp]
	mov	QWORD PTR 56[rsp], r15
	mov	r15, r8
	mov	QWORD PTR 64[rsp], rbx
	mov	r8, rcx
	mov	rbx, rdx
	mov	r12, QWORD PTR 16[rax]
	jmp	.L408
	.p2align 4,,10
	.p2align 3
.L404:
	mov	rcx, QWORD PTR [rax]
	test	rcx, rcx
	je	.L482
	mov	r12, QWORD PTR 16[rcx]
	mov	r9, rax
	xor	edx, edx
	mov	rax, r12
	div	r8
	cmp	rbx, rdx
	jne	.L482
	mov	rax, rcx
.L408:
	cmp	r11, r12
	jne	.L404
	cmp	DWORD PTR 8[rax], r14d
	jne	.L404
	mov	edx, DWORD PTR 32[rsp]
	cmp	DWORD PTR 12[rax], edx
	jne	.L404
	cmp	QWORD PTR [r9], 0
	mov	r8, r15
	mov	rbx, QWORD PTR 64[rsp]
	mov	r15, QWORD PTR 56[rsp]
	jne	.L403
	.p2align 4
	.p2align 3
.L401:
	vmovq	rdx, xmm11
	vmovq	rcx, xmm12
	mov	QWORD PTR 56[rsp], r8
	mov	QWORD PTR 40[rsp], r10
	vmovq	QWORD PTR 128[rsp], xmm7
	call	_ZNSt10_HashtableIN5Lenia4Vec2IiEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_8Vec2HashIiEENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS2_SI_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb1EEEEEEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb1EEEbEOT_OT0_RKT1_.isra.0
	mov	rcx, QWORD PTR 48[rsp]
	mov	r10, QWORD PTR 40[rsp]
	vmovq	rdx, xmm9
	vmovq	rax, xmm10
	mov	r8, QWORD PTR 56[rsp]
	imul	rax, QWORD PTR [rdx]
	mov	rdx, QWORD PTR 56[rdx]
	add	rax, rcx
	vcomiss	xmm6, DWORD PTR [rdx+rax*4]
	jnb	.L403
	mov	edx, DWORD PTR 72[rsp]
	lea	eax, -10[r14]
	mov	ecx, DWORD PTR 88[rsp]
	mov	r11, rdi
	mov	QWORD PTR 48[rsp], r15
	mov	rdi, r10
	mov	r10, QWORD PTR 104[rsp]
	mov	r9, rbx
	cmp	edx, eax
	lea	r12, 136[rsp]
	cmovle	eax, edx
	mov	edx, DWORD PTR 80[rsp]
	mov	DWORD PTR 72[rsp], eax
	lea	eax, 10[r14]
	cmp	edx, eax
	cmovge	eax, edx
	mov	edx, DWORD PTR 32[rsp]
	mov	DWORD PTR 80[rsp], eax
	lea	eax, -10[rdx]
	cmp	ecx, eax
	cmovle	eax, ecx
	mov	rcx, QWORD PTR 112[rsp]
	mov	DWORD PTR 88[rsp], eax
	lea	eax, 10[rdx]
	mov	edx, DWORD PTR 100[rsp]
	cmp	edx, eax
	cmovge	eax, edx
	xor	edx, edx
	mov	DWORD PTR 40[rsp], edx
	vmovq	rdx, xmm8
	mov	DWORD PTR 100[rsp], eax
	mov	rax, r13
	mov	r13d, ebp
	.p2align 4
	.p2align 3
.L411:
	mov	r15d, DWORD PTR 40[rsp]
	mov	ebp, DWORD PTR 96[rsp]
	xor	r14d, r14d
	lea	ebx, [r15+rbp]
	sub	ebp, r15d
	mov	DWORD PTR 32[rsp], ebx
	mov	rbx, r10
	mov	r10, r9
	mov	r9, QWORD PTR 48[rsp]
	mov	r15d, ebp
	.p2align 4
	.p2align 3
.L412:
	mov	ebp, DWORD PTR 32[rsp]
	mov	QWORD PTR 208[rsp], rdx
	mov	rdx, r12
	mov	QWORD PTR 240[rsp], rcx
	mov	rcx, rsi
	mov	DWORD PTR 136[rsp], ebp
	lea	ebp, 0[r13+r14]
	mov	QWORD PTR 272[rsp], rdi
	mov	edi, r13d
	mov	QWORD PTR 224[rsp], r11
	sub	edi, r14d
	add	r14d, 1
	mov	QWORD PTR 248[rsp], r8
	mov	QWORD PTR 264[rsp], r9
	mov	QWORD PTR 280[rsp], r10
	mov	QWORD PTR 256[rsp], rax
	mov	QWORD PTR 216[rsp], rbx
	mov	DWORD PTR 140[rsp], ebp
	call	_ZNSt5dequeIN5Lenia4Vec2IiEESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.isra.0
	mov	rdx, r12
	mov	rcx, rsi
	mov	DWORD PTR 140[rsp], edi
	mov	DWORD PTR 136[rsp], r15d
	call	_ZNSt5dequeIN5Lenia4Vec2IiEESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.isra.0
	mov	eax, DWORD PTR 32[rsp]
	mov	rdx, r12
	mov	rcx, rsi
	mov	DWORD PTR 140[rsp], edi
	mov	DWORD PTR 136[rsp], eax
	call	_ZNSt5dequeIN5Lenia4Vec2IiEESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.isra.0
	mov	rdx, r12
	mov	rcx, rsi
	mov	DWORD PTR 136[rsp], r15d
	mov	DWORD PTR 140[rsp], ebp
	call	_ZNSt5dequeIN5Lenia4Vec2IiEESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.isra.0
	mov	rdx, QWORD PTR 208[rsp]
	mov	rbx, QWORD PTR 216[rsp]
	mov	r11, QWORD PTR 224[rsp]
	mov	rcx, QWORD PTR 240[rsp]
	mov	r8, QWORD PTR 248[rsp]
	mov	rax, QWORD PTR 256[rsp]
	mov	r9, QWORD PTR 264[rsp]
	mov	rdi, QWORD PTR 272[rsp]
	mov	r10, QWORD PTR 280[rsp]
	cmp	r14d, 10
	jne	.L412
	add	DWORD PTR 40[rsp], 1
	mov	QWORD PTR 48[rsp], r9
	mov	r9, r10
	mov	r10, rbx
	mov	ebx, DWORD PTR 40[rsp]
	cmp	ebx, 10
	jne	.L411
	mov	QWORD PTR 104[rsp], r10
	mov	ebp, r13d
	mov	r10, rdi
	mov	r13, rax
	mov	rdi, r11
	mov	QWORD PTR 112[rsp], rcx
	mov	r15, QWORD PTR 48[rsp]
	mov	rbx, r9
	vmovq	xmm8, rdx
	cmp	r13, rdi
	jne	.L413
	jmp	.L496
	.p2align 4,,10
	.p2align 3
.L488:
	mov	r10, QWORD PTR 32[rsp]
	lea	rcx, 2[rdx]
	lea	rax, [rcx+rcx]
	cmp	rax, r10
	mov	rax, r10
	jnb	.L342
	sub	rax, rcx
	vmovq	rdx, xmm8
	lea	r8, 8[r15]
	shr	rax
	sub	r8, r11
	lea	r12, [rdx+rax*8]
	cmp	r12, r11
	jnb	.L343
	cmp	r8, 8
	jle	.L344
	mov	rdx, r11
	mov	rcx, r12
	mov	QWORD PTR 40[rsp], r9
	call	memmove
	mov	rax, QWORD PTR [r12]
	mov	r9, QWORD PTR 40[rsp]
	mov	r11, r12
.L345:
	mov	QWORD PTR 232[rsp], rax
	add	rax, 512
	lea	r15, [r11+r9]
	mov	QWORD PTR 40[rsp], rax
	jmp	.L341
	.p2align 4,,10
	.p2align 3
.L489:
	mov	r10, QWORD PTR 32[rsp]
	lea	rcx, 2[rdx]
	lea	rax, [rcx+rcx]
	cmp	rax, r10
	mov	rax, r10
	jnb	.L357
	sub	rax, rcx
	vmovq	rdx, xmm8
	lea	r8, 8[r15]
	shr	rax
	sub	r8, r11
	lea	r10, [rdx+rax*8]
	cmp	r10, r11
	jnb	.L358
	cmp	r8, 8
	jle	.L359
	mov	rdx, r11
	mov	rcx, r10
	mov	QWORD PTR 40[rsp], r9
	call	memmove
	mov	r9, QWORD PTR 40[rsp]
	mov	r10, rax
	mov	rax, QWORD PTR [rax]
	mov	r11, r10
.L360:
	mov	QWORD PTR 232[rsp], rax
	add	rax, 512
	lea	r15, [r11+r9]
	mov	QWORD PTR 40[rsp], rax
	jmp	.L356
	.p2align 4,,10
	.p2align 3
.L491:
	mov	r8, QWORD PTR 32[rsp]
	lea	rcx, 2[rdx]
	lea	rax, [rcx+rcx]
	cmp	rax, r8
	mov	rax, r8
	jnb	.L371
	sub	rax, rcx
	vmovq	rdx, xmm8
	lea	r8, 8[r15]
	shr	rax
	sub	r8, r11
	lea	r12, [rdx+rax*8]
	cmp	r12, r11
	jnb	.L372
	cmp	r8, 8
	jle	.L373
	mov	QWORD PTR 48[rsp], r9
	mov	rdx, r11
	mov	rcx, r12
	mov	QWORD PTR 40[rsp], r10
.L479:
	call	memmove
	mov	rax, QWORD PTR [r12]
	mov	r10, QWORD PTR 40[rsp]
	mov	r11, r12
	mov	r9, QWORD PTR 48[rsp]
.L374:
	mov	QWORD PTR 232[rsp], rax
	add	rax, 512
	lea	r15, [r11+r9]
	mov	QWORD PTR 40[rsp], rax
	jmp	.L370
	.p2align 4,,10
	.p2align 3
.L493:
	mov	r10, QWORD PTR 32[rsp]
	lea	rcx, 2[rdx]
	lea	rax, [rcx+rcx]
	cmp	rax, r10
	mov	rax, r10
	jnb	.L384
	sub	rax, rcx
	vmovq	rdx, xmm8
	lea	r8, 8[r15]
	shr	rax
	sub	r8, r11
	lea	r13, [rdx+rax*8]
	cmp	r13, r11
	jnb	.L385
	cmp	r8, 8
	jle	.L386
	mov	rdx, r11
	mov	rcx, r13
	mov	QWORD PTR 40[rsp], r9
	call	memmove
	mov	rax, QWORD PTR 0[r13]
	mov	r9, QWORD PTR 40[rsp]
	mov	r11, r13
.L387:
	mov	QWORD PTR 232[rsp], rax
	add	rax, 512
	lea	r15, [r11+r9]
	mov	QWORD PTR 40[rsp], rax
	jmp	.L383
	.p2align 4,,10
	.p2align 3
.L397:
	mov	rax, QWORD PTR -8[rbx]
	mov	rcx, r13
	mov	edx, 512
	sub	rbx, 8
	mov	QWORD PTR 32[rsp], r8
	vmovq	xmm7, QWORD PTR 504[rax]
	call	_ZdlPvy
	mov	r15, QWORD PTR [rbx]
	mov	r8, QWORD PTR 32[rsp]
	lea	r10, 512[r15]
	lea	r13, 504[r15]
	jmp	.L398
	.p2align 4,,10
	.p2align 3
.L482:
	mov	r8, r15
	mov	rbx, QWORD PTR 64[rsp]
	mov	r15, QWORD PTR 56[rsp]
	jmp	.L401
	.p2align 4,,10
	.p2align 3
.L485:
	lea	edx, 1[r10]
	mov	r10, rdx
	cmp	rdx, r9
	jb	.L427
.L334:
	vmovq	rbx, xmm9
	mov	rax, QWORD PTR 184[rbx]
	mov	QWORD PTR 192[rbx], rax
	vmovups	xmm6, XMMWORD PTR 288[rsp]
	vmovups	xmm7, XMMWORD PTR 304[rsp]
	vmovups	xmm8, XMMWORD PTR 320[rsp]
	vmovups	xmm9, XMMWORD PTR 336[rsp]
	vmovups	xmm10, XMMWORD PTR 352[rsp]
	vmovups	xmm11, XMMWORD PTR 368[rsp]
	vmovups	xmm12, XMMWORD PTR 384[rsp]
	add	rsp, 408
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
.L483:
	movsx	rax, r14d
	mov	QWORD PTR 48[rsp], rax
	movsx	rax, DWORD PTR 32[rsp]
	vmovq	xmm10, rax
	jmp	.L401
	.p2align 4,,10
	.p2align 3
.L342:
	test	r10, r10
	mov	r8d, 1
	cmovne	r8, r10
	add	r8, r10
	lea	r12, 2[r8]
	mov	rax, r12
	shr	rax, 60
	jne	.L476
	lea	rcx, 0[0+r12*8]
	mov	QWORD PTR 80[rsp], r11
	mov	QWORD PTR 72[rsp], rdx
	mov	QWORD PTR 40[rsp], r8
	mov	QWORD PTR 56[rsp], r9
	call	_Znwy
	mov	r8, QWORD PTR 40[rsp]
	mov	rdx, QWORD PTR 72[rsp]
	mov	r11, QWORD PTR 80[rsp]
	mov	r9, QWORD PTR 56[rsp]
	mov	QWORD PTR 48[rsp], rax
	sub	r8, rdx
	shr	r8
	lea	rcx, [rax+r8*8]
	lea	r8, 8[r15]
	sub	r8, r11
	mov	QWORD PTR 40[rsp], rcx
	cmp	r8, 8
	jle	.L351
	mov	rdx, r11
	call	memmove
	mov	r9, QWORD PTR 56[rsp]
.L352:
	mov	rdx, QWORD PTR 32[rsp]
	vmovq	rcx, xmm8
	mov	QWORD PTR 56[rsp], r9
	sal	rdx, 3
	call	_ZdlPvy
	mov	r11, QWORD PTR 40[rsp]
	mov	rdx, QWORD PTR 48[rsp]
	mov	QWORD PTR 32[rsp], r12
	mov	r9, QWORD PTR 56[rsp]
	mov	rax, QWORD PTR [r11]
	vmovq	xmm8, rdx
	jmp	.L345
	.p2align 4,,10
	.p2align 3
.L384:
	test	r10, r10
	mov	r8d, 1
	cmovne	r8, r10
	add	r8, r10
	lea	r13, 2[r8]
	mov	rax, r13
	shr	rax, 60
	jne	.L497
	lea	rcx, 0[0+r13*8]
	mov	QWORD PTR 80[rsp], r11
	mov	QWORD PTR 72[rsp], rdx
	mov	QWORD PTR 40[rsp], r8
	mov	QWORD PTR 56[rsp], r9
	call	_Znwy
	mov	r8, QWORD PTR 40[rsp]
	mov	rdx, QWORD PTR 72[rsp]
	mov	r11, QWORD PTR 80[rsp]
	mov	r9, QWORD PTR 56[rsp]
	mov	QWORD PTR 48[rsp], rax
	sub	r8, rdx
	shr	r8
	lea	rcx, [rax+r8*8]
	lea	r8, 8[r15]
	sub	r8, r11
	mov	QWORD PTR 40[rsp], rcx
	cmp	r8, 8
	jle	.L392
	mov	rdx, r11
	call	memmove
	mov	r9, QWORD PTR 56[rsp]
.L393:
	mov	rdx, QWORD PTR 32[rsp]
	vmovq	rcx, xmm8
	mov	QWORD PTR 56[rsp], r9
	sal	rdx, 3
	call	_ZdlPvy
	mov	r11, QWORD PTR 40[rsp]
	mov	rdx, QWORD PTR 48[rsp]
	mov	QWORD PTR 32[rsp], r13
	mov	r9, QWORD PTR 56[rsp]
	mov	rax, QWORD PTR [r11]
	vmovq	xmm8, rdx
	jmp	.L387
	.p2align 4,,10
	.p2align 3
.L357:
	test	r10, r10
	mov	r8d, 1
	cmovne	r8, r10
	add	r8, r10
	lea	rax, 2[r8]
	mov	QWORD PTR 40[rsp], rax
	shr	rax, 60
	jne	.L498
	mov	rax, QWORD PTR 40[rsp]
	mov	QWORD PTR 88[rsp], r11
	mov	QWORD PTR 80[rsp], rdx
	lea	rcx, 0[0+rax*8]
	mov	QWORD PTR 48[rsp], r8
	mov	QWORD PTR 72[rsp], r9
	call	_Znwy
	mov	r8, QWORD PTR 48[rsp]
	mov	rdx, QWORD PTR 80[rsp]
	mov	r11, QWORD PTR 88[rsp]
	mov	r9, QWORD PTR 72[rsp]
	mov	QWORD PTR 56[rsp], rax
	sub	r8, rdx
	shr	r8
	lea	rcx, [rax+r8*8]
	lea	r8, 8[r15]
	sub	r8, r11
	mov	QWORD PTR 48[rsp], rcx
	cmp	r8, 8
	jle	.L366
	mov	rdx, r11
	call	memmove
	mov	r9, QWORD PTR 72[rsp]
.L367:
	mov	rdx, QWORD PTR 32[rsp]
	vmovq	rcx, xmm8
	mov	QWORD PTR 72[rsp], r9
	sal	rdx, 3
	call	_ZdlPvy
	mov	rdx, QWORD PTR 40[rsp]
	mov	r11, QWORD PTR 48[rsp]
	mov	r9, QWORD PTR 72[rsp]
	mov	QWORD PTR 32[rsp], rdx
	mov	rdx, QWORD PTR 56[rsp]
	mov	rax, QWORD PTR [r11]
	vmovq	xmm8, rdx
	jmp	.L360
	.p2align 4,,10
	.p2align 3
.L371:
	test	r8, r8
	mov	r8d, 1
	cmovne	r8, rax
	add	r8, rax
	lea	r12, 2[r8]
	mov	rax, r12
	shr	rax, 60
	jne	.L476
	lea	rcx, 0[0+r12*8]
	mov	QWORD PTR 88[rsp], r11
	mov	QWORD PTR 80[rsp], rdx
	mov	QWORD PTR 40[rsp], r8
	mov	QWORD PTR 72[rsp], r9
	mov	QWORD PTR 56[rsp], r10
	call	_Znwy
	mov	r8, QWORD PTR 40[rsp]
	mov	rdx, QWORD PTR 80[rsp]
	mov	r11, QWORD PTR 88[rsp]
	mov	r10, QWORD PTR 56[rsp]
	mov	QWORD PTR 48[rsp], rax
	sub	r8, rdx
	mov	r9, QWORD PTR 72[rsp]
	shr	r8
	lea	rcx, [rax+r8*8]
	lea	r8, 8[r15]
	sub	r8, r11
	mov	QWORD PTR 40[rsp], rcx
	cmp	r8, 8
	jle	.L379
	mov	rdx, r11
	call	memmove
	mov	r10, QWORD PTR 56[rsp]
	mov	r9, QWORD PTR 72[rsp]
.L380:
	mov	rdx, QWORD PTR 32[rsp]
	vmovq	rcx, xmm8
	mov	QWORD PTR 72[rsp], r9
	mov	QWORD PTR 56[rsp], r10
	sal	rdx, 3
	call	_ZdlPvy
	mov	r11, QWORD PTR 40[rsp]
	mov	rdx, QWORD PTR 48[rsp]
	mov	QWORD PTR 32[rsp], r12
	mov	r9, QWORD PTR 72[rsp]
	mov	r10, QWORD PTR 56[rsp]
	mov	rax, QWORD PTR [r11]
	vmovq	xmm8, rdx
	jmp	.L374
.L494:
	mov	ecx, 16
	call	_Znwy
	vmovdqu	xmm2, XMMWORD PTR [rbx]
	mov	rcx, QWORD PTR 184[rdi]
	mov	rsi, rax
	vmovdqu	XMMWORD PTR [rax], xmm2
	test	rcx, rcx
	je	.L420
	mov	rax, QWORD PTR 200[rdi]
	mov	rdx, rax
	mov	QWORD PTR 32[rsp], rax
	sub	rdx, rcx
	call	_ZdlPvy
.L420:
	vmovq	rax, xmm9
	lea	rdx, 16[rsi]
	mov	QWORD PTR 184[rax], rsi
	mov	QWORD PTR 200[rax], rdx
	jmp	.L423
	.p2align 4,,10
	.p2align 3
.L343:
	lea	rcx, 8[r12+r9]
	cmp	r8, 8
	jle	.L347
	mov	rdx, r11
	sub	rcx, r8
	mov	QWORD PTR 40[rsp], r9
	call	memmove
	mov	rax, QWORD PTR [r12]
	mov	r9, QWORD PTR 40[rsp]
	mov	r11, r12
	jmp	.L345
	.p2align 4,,10
	.p2align 3
.L372:
	lea	rcx, 8[r12+r9]
	cmp	r8, 8
	jle	.L376
	mov	QWORD PTR 48[rsp], r9
	sub	rcx, r8
	mov	rdx, r11
	mov	QWORD PTR 40[rsp], r10
	jmp	.L479
	.p2align 4,,10
	.p2align 3
.L358:
	lea	rcx, 8[r10+r9]
	cmp	r8, 8
	jle	.L362
	mov	rdx, r11
	sub	rcx, r8
	mov	QWORD PTR 48[rsp], r10
	mov	QWORD PTR 40[rsp], r9
	call	memmove
	mov	r10, QWORD PTR 48[rsp]
	mov	r9, QWORD PTR 40[rsp]
	mov	rax, QWORD PTR [r10]
	mov	r11, r10
	jmp	.L360
	.p2align 4,,10
	.p2align 3
.L385:
	lea	rcx, 8[r13+r9]
	cmp	r8, 8
	jle	.L389
	mov	rdx, r11
	sub	rcx, r8
	mov	QWORD PTR 40[rsp], r9
	call	memmove
	mov	rax, QWORD PTR 0[r13]
	mov	r9, QWORD PTR 40[rsp]
	mov	r11, r13
	jmp	.L387
.L476:
	movabs	rax, 2305843009213693951
	cmp	rax, r12
	jnb	.L350
.L365:
	call	_ZSt28__throw_bad_array_new_lengthv
.L498:
	movabs	rax, 2305843009213693951
	mov	r14, QWORD PTR 40[rsp]
	cmp	rax, r14
	jb	.L365
.L350:
	call	_ZSt17__throw_bad_allocv
.L473:
	xor	eax, eax
.L466:
	lea	edx, 1[rax]
	mov	rax, rdx
	cmp	rdx, r9
	jb	.L466
	jmp	.L334
	.p2align 4,,10
	.p2align 3
.L344:
	je	.L346
.L477:
	mov	rax, QWORD PTR [r12]
	mov	r11, r12
	jmp	.L345
.L386:
	je	.L388
.L481:
	mov	rax, QWORD PTR 0[r13]
	mov	r11, r13
	jmp	.L387
.L359:
	je	.L361
.L478:
	mov	rax, QWORD PTR [r10]
	mov	r11, r10
	jmp	.L360
.L373:
	je	.L375
.L480:
	mov	rax, QWORD PTR [r12]
	mov	r11, r12
	jmp	.L374
.L497:
	movabs	rax, 2305843009213693951
	cmp	rax, r13
	jb	.L365
	jmp	.L350
.L430:
	mov	rcx, r13
	mov	r8d, 8
	vzeroupper
	jmp	.L396
.L366:
	jne	.L367
	mov	rax, QWORD PTR [r11]
	mov	QWORD PTR [rcx], rax
	jmp	.L367
.L379:
	jne	.L380
	mov	rax, QWORD PTR [r11]
	mov	QWORD PTR [rcx], rax
	jmp	.L380
.L351:
	jne	.L352
	mov	rax, QWORD PTR [r11]
	mov	QWORD PTR [rcx], rax
	jmp	.L352
.L392:
	jne	.L393
	mov	rax, QWORD PTR [r11]
	mov	QWORD PTR [rcx], rax
	jmp	.L393
.L389:
	jne	.L481
	mov	rax, QWORD PTR [r11]
	mov	QWORD PTR -8[rcx], rax
	jmp	.L481
.L347:
	jne	.L477
	mov	rax, QWORD PTR [r11]
	mov	QWORD PTR -8[rcx], rax
	jmp	.L477
.L376:
	jne	.L480
	mov	rax, QWORD PTR [r11]
	mov	QWORD PTR -8[rcx], rax
	jmp	.L480
.L362:
	jne	.L478
	mov	rax, QWORD PTR [r11]
	mov	QWORD PTR -8[rcx], rax
	jmp	.L478
.L375:
	mov	rax, QWORD PTR [r11]
	mov	r11, r12
	mov	QWORD PTR [r12], rax
	jmp	.L374
.L361:
	mov	rax, QWORD PTR [r11]
	mov	r11, r10
	mov	QWORD PTR [r10], rax
	jmp	.L360
.L388:
	mov	rax, QWORD PTR [r11]
	mov	r11, r13
	mov	QWORD PTR 0[r13], rax
	jmp	.L387
.L346:
	mov	rax, QWORD PTR [r11]
	mov	r11, r12
	mov	QWORD PTR [r12], rax
	jmp	.L345
.L495:
	vmovdqu	xmm3, XMMWORD PTR [rbx]
	vmovdqu	XMMWORD PTR [r9], xmm3
	jmp	.L423
.L355:
	lea	rcx, .LC0[rip]
	call	_ZSt20__throw_length_errorPKc
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA7146:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7146-.LLSDACSB7146
.LLSDACSB7146:
.LLSDACSE7146:
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
	vmulsd	xmm0, xmm0, QWORD PTR .LC5[rip]
	vcvtusi2ss	xmm1, xmm6, ecx
	mov	rcx, rbx
	vcvtusi2ss	xmm6, xmm6, edx
	vmovsd	QWORD PTR 32[rbx], xmm0
	vmulsd	xmm0, xmm0, QWORD PTR .LC6[rip]
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
	.globl	_ZNK5Lenia10Simulation15FillBoundingBoxEiit
	.def	_ZNK5Lenia10Simulation15FillBoundingBoxEiit;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK5Lenia10Simulation15FillBoundingBoxEiit
_ZNK5Lenia10Simulation15FillBoundingBoxEiit:
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
	sub	rsp, 424
	.seh_stackalloc	424
	vmovups	XMMWORD PTR 288[rsp], xmm6
	.seh_savexmm	xmm6, 288
	vmovups	XMMWORD PTR 304[rsp], xmm7
	.seh_savexmm	xmm7, 304
	vmovups	XMMWORD PTR 320[rsp], xmm8
	.seh_savexmm	xmm8, 320
	vmovups	XMMWORD PTR 336[rsp], xmm9
	.seh_savexmm	xmm9, 336
	vmovups	XMMWORD PTR 352[rsp], xmm10
	.seh_savexmm	xmm10, 352
	vmovups	XMMWORD PTR 368[rsp], xmm11
	.seh_savexmm	xmm11, 368
	vmovups	XMMWORD PTR 384[rsp], xmm12
	.seh_savexmm	xmm12, 384
	vmovups	XMMWORD PTR 400[rsp], xmm13
	.seh_savexmm	xmm13, 400
	.seh_endprologue
	vpxor	xmm0, xmm0, xmm0
	mov	ebx, DWORD PTR 528[rsp]
	mov	QWORD PTR 496[rsp], rcx
	lea	rcx, 208[rsp]
	vmovd	xmm6, r8d
	mov	QWORD PTR 504[rsp], rdx
	xor	edx, edx
	mov	DWORD PTR 520[rsp], r9d
	mov	WORD PTR 110[rsp], bx
	mov	QWORD PTR 208[rsp], 0
	mov	QWORD PTR 216[rsp], 0
	vmovdqu64	ZMMWORD PTR 224[rsp], zmm0
	vzeroupper
	call	_ZNSt11_Deque_baseIN5Lenia4Vec2IiEESaIS2_EE17_M_initialize_mapEy
	mov	rax, QWORD PTR 208[rsp]
	mov	r15, QWORD PTR 216[rsp]
	and	ebx, 65535
	mov	rbp, QWORD PTR 248[rsp]
	mov	r10, QWORD PTR 256[rsp]
	vmovq	xmm11, rax
	mov	rax, QWORD PTR 224[rsp]
	mov	QWORD PTR 64[rsp], r15
	vmovd	xmm7, ebx
	mov	r8, QWORD PTR 264[rsp]
	mov	r11, QWORD PTR 272[rsp]
	mov	QWORD PTR 40[rsp], rax
	mov	rax, QWORD PTR 240[rsp]
	mov	r14, QWORD PTR 280[rsp]
	mov	QWORD PTR 56[rsp], rax
	je	.L501
	vmovd	eax, xmm6
	vmovd	r12d, xmm6
	mov	rdx, rbp
	mov	rbp, r14
	add	eax, eax
	sub	r12d, ebx
	vmovd	edi, xmm6
	mov	DWORD PTR 72[rsp], eax
	mov	eax, DWORD PTR 520[rsp]
	mov	DWORD PTR 104[rsp], r12d
	mov	r12, r10
	add	eax, eax
	mov	DWORD PTR 48[rsp], eax
	mov	eax, DWORD PTR 520[rsp]
	add	eax, ebx
	vmovd	xmm8, eax
	mov	rax, r8
	.p2align 4
	.p2align 3
.L502:
	mov	esi, DWORD PTR 72[rsp]
	mov	ebx, DWORD PTR 520[rsp]
	mov	r13, rbp
	sub	esi, edi
	jmp	.L559
	.p2align 4,,10
	.p2align 3
.L688:
	lea	r14, 8[r12]
.L504:
	mov	DWORD PTR [r12], esi
	mov	DWORD PTR 4[r12], ebx
	mov	r12d, DWORD PTR 48[rsp]
	sub	r12d, ebx
	cmp	r14, rcx
	je	.L518
	lea	rbp, 8[r14]
	mov	DWORD PTR [r14], edi
	mov	DWORD PTR 4[r14], r12d
	cmp	rbp, rcx
	je	.L533
.L691:
	lea	r14, 8[rbp]
	mov	DWORD PTR 0[rbp], esi
	mov	DWORD PTR 4[rbp], r12d
	cmp	r14, rcx
	je	.L546
.L693:
	lea	r12, 8[r14]
.L547:
	mov	DWORD PTR 4[r14], ebx
	vmovd	ecx, xmm8
	add	ebx, 1
	mov	DWORD PTR [r14], edi
	cmp	ebx, ecx
	je	.L687
.L559:
	lea	rcx, -8[r11]
	cmp	rcx, r12
	jne	.L688
	mov	rbp, r13
	mov	rcx, r12
	mov	r8, QWORD PTR 40[rsp]
	sub	rbp, rdx
	mov	r9, rbp
	sar	r9, 3
	cmp	r13, 1
	mov	r10, r9
	adc	r10, -1
	sub	rcx, rax
	mov	rax, QWORD PTR 56[rsp]
	sal	r10, 6
	sar	rcx, 3
	sub	rax, r8
	add	rcx, r10
	sar	rax, 3
	add	rax, rcx
	movabs	rcx, 2305843009213693951
	cmp	rax, rcx
	je	.L520
	vmovq	rcx, xmm11
	mov	rax, r13
	sub	rax, rcx
	mov	rcx, r15
	sar	rax, 3
	sub	rcx, rax
	cmp	rcx, 1
	jbe	.L689
.L506:
	mov	ecx, 512
	mov	QWORD PTR 64[rsp], rdx
	add	r13, 8
	call	_Znwy
	mov	rdx, QWORD PTR 64[rsp]
	mov	QWORD PTR 0[r13], rax
	lea	r11, 512[rax]
	lea	rcx, 504[rax]
	mov	r14, rax
	jmp	.L504
	.p2align 4,,10
	.p2align 3
.L518:
	mov	rbp, r13
	mov	rcx, r14
	mov	r8, QWORD PTR 40[rsp]
	sub	rbp, rdx
	mov	r9, rbp
	sar	r9, 3
	cmp	r13, 1
	mov	r10, r9
	adc	r10, -1
	sub	rcx, rax
	mov	rax, QWORD PTR 56[rsp]
	sal	r10, 6
	sar	rcx, 3
	sub	rax, r8
	add	rcx, r10
	sar	rax, 3
	add	rax, rcx
	movabs	rcx, 2305843009213693951
	cmp	rax, rcx
	je	.L520
	vmovq	rcx, xmm11
	mov	rax, r13
	sub	rax, rcx
	mov	rcx, r15
	sar	rax, 3
	sub	rcx, rax
	cmp	rcx, 1
	jbe	.L690
.L521:
	mov	ecx, 512
	mov	QWORD PTR 64[rsp], rdx
	add	r13, 8
	call	_Znwy
	mov	rdx, QWORD PTR 64[rsp]
	lea	rcx, 504[rax]
	mov	rbp, rax
	mov	QWORD PTR 0[r13], rax
	lea	r11, 512[rax]
	mov	DWORD PTR [r14], edi
	mov	DWORD PTR 4[r14], r12d
	cmp	rbp, rcx
	jne	.L691
	.p2align 4
	.p2align 3
.L533:
	mov	r9, r13
	mov	rcx, rbp
	mov	r8, QWORD PTR 40[rsp]
	sub	r9, rdx
	mov	r10, r9
	sar	r10, 3
	cmp	r13, 1
	mov	r11, r10
	adc	r11, -1
	sub	rcx, rax
	mov	rax, QWORD PTR 56[rsp]
	sal	r11, 6
	sar	rcx, 3
	sub	rax, r8
	add	rcx, r11
	sar	rax, 3
	add	rax, rcx
	movabs	rcx, 2305843009213693951
	cmp	rax, rcx
	je	.L520
	vmovq	rcx, xmm11
	mov	rax, r13
	sub	rax, rcx
	mov	rcx, r15
	sar	rax, 3
	sub	rcx, rax
	cmp	rcx, 1
	jbe	.L692
.L535:
	mov	ecx, 512
	mov	QWORD PTR 64[rsp], rdx
	add	r13, 8
	call	_Znwy
	mov	rdx, QWORD PTR 64[rsp]
	lea	rcx, 504[rax]
	mov	r14, rax
	mov	QWORD PTR 0[r13], rax
	lea	r11, 512[rax]
	mov	DWORD PTR 0[rbp], esi
	mov	DWORD PTR 4[rbp], r12d
	cmp	r14, rcx
	jne	.L693
	.p2align 4
	.p2align 3
.L546:
	mov	rbp, r13
	mov	rcx, r14
	sub	rbp, rdx
	mov	r9, rbp
	sar	r9, 3
	cmp	r13, 1
	mov	r10, r9
	adc	r10, -1
	sub	rcx, rax
	mov	rax, QWORD PTR 56[rsp]
	sal	r10, 6
	sar	rcx, 3
	add	rcx, r10
	mov	r10, QWORD PTR 40[rsp]
	sub	rax, r10
	sar	rax, 3
	add	rax, rcx
	movabs	rcx, 2305843009213693951
	cmp	rax, rcx
	je	.L520
	vmovq	rcx, xmm11
	mov	rax, r13
	sub	rax, rcx
	mov	rcx, r15
	sar	rax, 3
	sub	rcx, rax
	cmp	rcx, 1
	jbe	.L694
.L548:
	mov	ecx, 512
	mov	QWORD PTR 64[rsp], rdx
	add	r13, 8
	call	_Znwy
	mov	rdx, QWORD PTR 64[rsp]
	mov	QWORD PTR 0[r13], rax
	mov	r12, rax
	lea	r11, 512[rax]
	jmp	.L547
	.p2align 4,,10
	.p2align 3
.L687:
	mov	ebx, DWORD PTR 104[rsp]
	sub	edi, 1
	mov	rbp, r13
	cmp	edi, ebx
	jne	.L502
	mov	QWORD PTR 64[rsp], r15
	mov	r10, r12
	mov	r14, r13
	mov	r8, rax
	mov	rbp, rdx
.L501:
	vpbroadcastd	xmm0, xmm7
	mov	rax, QWORD PTR 496[rsp]
	vpinsrd	xmm1, xmm6, DWORD PTR 520[rsp], 1
	lea	rdi, 192[rsp]
	mov	QWORD PTR 144[rsp], rdi
	vpunpcklqdq	xmm1, xmm1, xmm1
	mov	QWORD PTR 152[rsp], 1
	vpsubd	xmm2, xmm1, xmm0
	vpaddd	xmm0, xmm0, xmm1
	mov	QWORD PTR 160[rsp], 0
	vpblendd	xmm0, xmm0, xmm2, 3
	vmovdqu	XMMWORD PTR [rax], xmm0
	vpxor	xmm0, xmm0, xmm0
	vmovdqu	YMMWORD PTR 168[rsp], ymm0
	mov	DWORD PTR 176[rsp], 0x3f800000
	cmp	QWORD PTR 40[rsp], r10
	je	.L636
	mov	QWORD PTR 88[rsp], rdi
	vxorps	xmm8, xmm8, xmm8
	mov	r13, r11
	mov	r15, r8
	lea	rax, 136[rsp]
	mov	rdi, r10
	vmovq	xmm12, rax
	lea	rax, 144[rsp]
	vmovq	xmm13, rax
	vzeroupper
	.p2align 4
	.p2align 3
.L630:
	cmp	rdi, r15
	je	.L561
	vmovq	xmm10, QWORD PTR -8[rdi]
	sub	rdi, 8
.L562:
	cmp	QWORD PTR 168[rsp], 0
	vpextrd	esi, xmm10, 1
	vmovd	ebx, xmm10
	jne	.L563
	mov	rax, QWORD PTR 160[rsp]
	test	rax, rax
	jne	.L564
	jmp	.L679
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L566:
	mov	rax, QWORD PTR [rax]
	test	rax, rax
	je	.L679
.L564:
	cmp	DWORD PTR 8[rax], ebx
	jne	.L566
	cmp	DWORD PTR 12[rax], esi
	jne	.L566
.L567:
	cmp	QWORD PTR 40[rsp], rdi
	jne	.L630
.L706:
	mov	rbx, QWORD PTR 160[rsp]
	mov	rdi, QWORD PTR 88[rsp]
	test	rbx, rbx
	je	.L686
	.p2align 4
	.p2align 3
.L631:
	mov	rcx, rbx
	mov	rbx, QWORD PTR [rbx]
	mov	edx, 24
	call	_ZdlPvy
	test	rbx, rbx
	jne	.L631
.L686:
	mov	rax, QWORD PTR 152[rsp]
	mov	rcx, QWORD PTR 144[rsp]
	lea	r8, 0[0+rax*8]
.L560:
	xor	edx, edx
	call	memset
	mov	rcx, QWORD PTR 144[rsp]
	mov	QWORD PTR 168[rsp], 0
	mov	QWORD PTR 160[rsp], 0
	mov	rax, QWORD PTR 152[rsp]
	cmp	rcx, rdi
	je	.L632
	lea	rdx, 0[0+rax*8]
	call	_ZdlPvy
.L632:
	vmovq	rax, xmm11
	test	rax, rax
	je	.L500
	lea	rbx, 8[r14]
	cmp	rbp, rbx
	jnb	.L635
	.p2align 4
	.p2align 3
.L634:
	mov	rcx, QWORD PTR 0[rbp]
	mov	edx, 512
	add	rbp, 8
	call	_ZdlPvy
	cmp	rbp, rbx
	jb	.L634
.L635:
	mov	rdx, QWORD PTR 64[rsp]
	vmovq	rcx, xmm11
	sal	rdx, 3
	call	_ZdlPvy
.L500:
	mov	rax, QWORD PTR 496[rsp]
	vmovups	xmm6, XMMWORD PTR 288[rsp]
	vmovups	xmm7, XMMWORD PTR 304[rsp]
	vmovups	xmm8, XMMWORD PTR 320[rsp]
	vmovups	xmm9, XMMWORD PTR 336[rsp]
	vmovups	xmm10, XMMWORD PTR 352[rsp]
	vmovups	xmm11, XMMWORD PTR 368[rsp]
	vmovups	xmm12, XMMWORD PTR 384[rsp]
	vmovups	xmm13, XMMWORD PTR 400[rsp]
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
	.p2align 4,,10
	.p2align 3
.L689:
	lea	rcx, 2[r9]
	lea	rax, [rcx+rcx]
	cmp	rax, r15
	jnb	.L507
	mov	rax, r15
	lea	r8, 8[r13]
	sub	rax, rcx
	vmovq	rcx, xmm11
	sub	r8, rdx
	shr	rax
	lea	r14, [rcx+rax*8]
	cmp	r14, rdx
	jnb	.L508
	cmp	r8, 8
	jle	.L509
	mov	rcx, r14
	call	memmove
	mov	rax, QWORD PTR [r14]
	mov	rdx, r14
.L510:
	mov	QWORD PTR 232[rsp], rax
	add	rax, 512
	lea	r13, [rdx+rbp]
	mov	QWORD PTR 56[rsp], rax
	jmp	.L506
	.p2align 4,,10
	.p2align 3
.L690:
	lea	rcx, 2[r9]
	lea	rax, [rcx+rcx]
	cmp	rax, r15
	jnb	.L522
	mov	rax, r15
	lea	r8, 8[r13]
	sub	rax, rcx
	vmovq	rcx, xmm11
	sub	r8, rdx
	shr	rax
	lea	r9, [rcx+rax*8]
	cmp	r9, rdx
	jnb	.L523
	cmp	r8, 8
	jle	.L524
	mov	rcx, r9
	call	memmove
	mov	r9, rax
	mov	rax, QWORD PTR [rax]
	mov	rdx, r9
.L525:
	mov	QWORD PTR 232[rsp], rax
	add	rax, 512
	lea	r13, [rdx+rbp]
	mov	QWORD PTR 56[rsp], rax
	jmp	.L521
	.p2align 4,,10
	.p2align 3
.L692:
	lea	rcx, 2[r10]
	lea	rax, [rcx+rcx]
	cmp	rax, r15
	jnb	.L536
	mov	rax, r15
	lea	r8, 8[r13]
	sub	rax, rcx
	vmovq	rcx, xmm11
	sub	r8, rdx
	shr	rax
	lea	r14, [rcx+rax*8]
	cmp	r14, rdx
	jnb	.L537
	cmp	r8, 8
	jle	.L538
	mov	rcx, r14
	mov	QWORD PTR 56[rsp], r9
	call	memmove
	mov	rax, QWORD PTR [r14]
	mov	r9, QWORD PTR 56[rsp]
	mov	rdx, r14
.L539:
	mov	QWORD PTR 232[rsp], rax
	add	rax, 512
	lea	r13, [rdx+r9]
	mov	QWORD PTR 56[rsp], rax
	jmp	.L535
	.p2align 4,,10
	.p2align 3
.L694:
	lea	rcx, 2[r9]
	lea	rax, [rcx+rcx]
	cmp	rax, r15
	jnb	.L549
	mov	rax, r15
	lea	r8, 8[r13]
	sub	rax, rcx
	vmovq	rcx, xmm11
	sub	r8, rdx
	shr	rax
	lea	r12, [rcx+rax*8]
	cmp	r12, rdx
	jnb	.L550
	cmp	r8, 8
	jle	.L551
	mov	rcx, r12
	call	memmove
	mov	rax, QWORD PTR [r12]
	mov	rdx, r12
.L552:
	mov	QWORD PTR 232[rsp], rax
	add	rax, 512
	lea	r13, [rdx+rbp]
	mov	QWORD PTR 56[rsp], rax
	jmp	.L548
	.p2align 4,,10
	.p2align 3
.L563:
	movsx	rdx, esi
	movsx	rax, ebx
	mov	r8, QWORD PTR 152[rsp]
	lea	r9, [rdx+rdx]
	mov	QWORD PTR 48[rsp], rax
	vmovq	xmm9, rdx
	xor	edx, edx
	xor	r9, rax
	mov	rax, r9
	div	r8
	mov	rax, QWORD PTR 144[rsp]
	mov	r12, QWORD PTR [rax+rdx*8]
	mov	r10, rdx
	test	r12, r12
	je	.L565
	mov	rax, QWORD PTR [r12]
	mov	r11, QWORD PTR 16[rax]
	jmp	.L572
	.p2align 4,,10
	.p2align 3
.L568:
	mov	rcx, QWORD PTR [rax]
	test	rcx, rcx
	je	.L565
	mov	r11, QWORD PTR 16[rcx]
	mov	r12, rax
	xor	edx, edx
	mov	rax, r11
	div	r8
	cmp	r10, rdx
	jne	.L565
	mov	rax, rcx
.L572:
	cmp	r9, r11
	jne	.L568
	cmp	DWORD PTR 8[rax], ebx
	jne	.L568
	cmp	DWORD PTR 12[rax], esi
	jne	.L568
	cmp	QWORD PTR [r12], 0
	jne	.L567
	.p2align 4
	.p2align 3
.L565:
	vmovq	rdx, xmm12
	vmovq	rcx, xmm13
	vmovq	QWORD PTR 136[rsp], xmm10
	call	_ZNSt10_HashtableIN5Lenia4Vec2IiEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_8Vec2HashIiEENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS2_SI_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb1EEEEEEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb1EEEbEOT_OT0_RKT1_.isra.0
	mov	rdx, QWORD PTR 504[rsp]
	vmovq	rax, xmm9
	imul	rax, QWORD PTR [rdx]
	mov	rdx, QWORD PTR 48[rsp]
	add	rax, rdx
	mov	rdx, QWORD PTR 504[rsp]
	mov	rdx, QWORD PTR 56[rdx]
	vcomiss	xmm8, DWORD PTR [rdx+rax*4]
	jnb	.L567
	mov	rdx, QWORD PTR 496[rsp]
	movzx	r8d, WORD PTR 110[rsp]
	mov	eax, ebx
	mov	ecx, esi
	mov	edx, DWORD PTR [rdx]
	sub	eax, r8d
	cmp	eax, edx
	cmovle	edx, eax
	mov	rax, QWORD PTR 496[rsp]
	sub	ecx, r8d
	vmovd	xmm0, edx
	mov	edx, DWORD PTR 4[rax]
	cmp	ecx, edx
	mov	eax, edx
	mov	rdx, QWORD PTR 496[rsp]
	cmovle	eax, ecx
	add	ebx, r8d
	mov	edx, DWORD PTR 8[rdx]
	vpinsrd	xmm0, xmm0, eax, 1
	mov	rax, QWORD PTR 496[rsp]
	cmp	ebx, edx
	cmovl	ebx, edx
	mov	rdx, QWORD PTR 496[rsp]
	add	esi, r8d
	mov	edx, DWORD PTR 12[rdx]
	vmovd	xmm3, ebx
	cmp	esi, edx
	cmovge	edx, esi
	vpinsrd	xmm1, xmm3, edx, 1
	vpunpcklqdq	xmm0, xmm0, xmm1
	vmovdqu	XMMWORD PTR [rax], xmm0
	vmovd	eax, xmm7
	test	eax, eax
	je	.L567
	vmovd	eax, xmm6
	mov	rdx, rbp
	mov	rbp, QWORD PTR 56[rsp]
	vmovd	r12d, xmm6
	sub	eax, r8d
	mov	DWORD PTR 80[rsp], eax
	vmovd	eax, xmm6
	add	eax, eax
	mov	DWORD PTR 104[rsp], eax
	mov	eax, DWORD PTR 520[rsp]
	add	eax, eax
	mov	DWORD PTR 48[rsp], eax
	mov	eax, DWORD PTR 520[rsp]
	add	eax, r8d
	vmovd	xmm9, eax
	mov	rax, r15
	mov	r15, r14
	mov	r14, QWORD PTR 64[rsp]
	.p2align 4
	.p2align 3
.L575:
	mov	esi, DWORD PTR 104[rsp]
	mov	r8, r15
	mov	ebx, DWORD PTR 520[rsp]
	mov	r15, rbp
	sub	esi, r12d
	mov	ebp, esi
	jmp	.L628
	.p2align 4,,10
	.p2align 3
.L696:
	mov	DWORD PTR [rdi], ebp
	lea	rsi, 8[rdi]
	mov	DWORD PTR 4[rdi], ebx
	mov	edi, DWORD PTR 48[rsp]
	sub	edi, ebx
	cmp	rsi, rcx
	je	.L589
.L698:
	lea	r9, 8[rsi]
	mov	DWORD PTR [rsi], r12d
	mov	DWORD PTR 4[rsi], edi
	cmp	r9, rcx
	je	.L602
.L700:
	lea	rsi, 8[r9]
	mov	DWORD PTR [r9], ebp
	mov	DWORD PTR 4[r9], edi
	cmp	rsi, rcx
	je	.L615
.L702:
	lea	rdi, 8[rsi]
.L616:
	mov	DWORD PTR 4[rsi], ebx
	add	ebx, 1
	mov	DWORD PTR [rsi], r12d
	vmovd	esi, xmm9
	cmp	ebx, esi
	je	.L695
.L628:
	lea	rcx, -8[r13]
	cmp	rcx, rdi
	jne	.L696
	mov	r13, r8
	mov	r10, QWORD PTR 40[rsp]
	mov	rcx, rdi
	sub	r13, rdx
	mov	rsi, r13
	sar	rsi, 3
	cmp	r8, 1
	mov	r11, rsi
	adc	r11, -1
	sub	rcx, rax
	mov	rax, r15
	sal	r11, 6
	sar	rcx, 3
	sub	rax, r10
	add	rcx, r11
	sar	rax, 3
	add	rax, rcx
	movabs	rcx, 2305843009213693951
	cmp	rax, rcx
	je	.L520
	vmovq	rcx, xmm11
	mov	rax, r8
	sub	rax, rcx
	mov	rcx, r14
	sar	rax, 3
	sub	rcx, rax
	cmp	rcx, 1
	jbe	.L697
.L578:
	mov	ecx, 512
	mov	QWORD PTR 64[rsp], rdx
	mov	QWORD PTR 56[rsp], r8
	call	_Znwy
	mov	r8, QWORD PTR 56[rsp]
	mov	rdx, QWORD PTR 64[rsp]
	lea	rcx, 504[rax]
	mov	rsi, rax
	lea	r13, 512[rax]
	mov	QWORD PTR 8[r8], rax
	add	r8, 8
	mov	DWORD PTR [rdi], ebp
	mov	DWORD PTR 4[rdi], ebx
	mov	edi, DWORD PTR 48[rsp]
	sub	edi, ebx
	cmp	rsi, rcx
	jne	.L698
	.p2align 4
	.p2align 3
.L589:
	mov	r9, r8
	mov	rcx, rsi
	sub	r9, rdx
	mov	r10, r9
	sar	r10, 3
	cmp	r8, 1
	mov	r11, r10
	adc	r11, -1
	sub	rcx, rax
	mov	rax, r15
	sal	r11, 6
	sar	rcx, 3
	add	rcx, r11
	mov	r11, QWORD PTR 40[rsp]
	sub	rax, r11
	sar	rax, 3
	add	rax, rcx
	movabs	rcx, 2305843009213693951
	cmp	rax, rcx
	je	.L520
	vmovq	rcx, xmm11
	mov	rax, r8
	sub	rax, rcx
	mov	rcx, r14
	sar	rax, 3
	sub	rcx, rax
	cmp	rcx, 1
	jbe	.L699
.L591:
	mov	ecx, 512
	mov	QWORD PTR 64[rsp], rdx
	mov	QWORD PTR 56[rsp], r8
	call	_Znwy
	mov	r8, QWORD PTR 56[rsp]
	mov	rdx, QWORD PTR 64[rsp]
	lea	rcx, 504[rax]
	mov	r9, rax
	lea	r13, 512[rax]
	mov	QWORD PTR 8[r8], rax
	add	r8, 8
	mov	DWORD PTR [rsi], r12d
	mov	DWORD PTR 4[rsi], edi
	cmp	r9, rcx
	jne	.L700
	.p2align 4
	.p2align 3
.L602:
	mov	r13, r8
	mov	rcx, r9
	sub	r13, rdx
	mov	r11, r13
	sar	r11, 3
	cmp	r8, 1
	mov	rsi, r11
	adc	rsi, -1
	sub	rcx, rax
	mov	rax, r15
	sal	rsi, 6
	sar	rcx, 3
	add	rcx, rsi
	mov	rsi, QWORD PTR 40[rsp]
	sub	rax, rsi
	movabs	rsi, 2305843009213693951
	sar	rax, 3
	add	rax, rcx
	cmp	rax, rsi
	je	.L520
	mov	rax, r8
	vmovq	rsi, xmm11
	mov	rcx, r14
	sub	rax, rsi
	sar	rax, 3
	sub	rcx, rax
	cmp	rcx, 1
	jbe	.L701
.L604:
	mov	ecx, 512
	mov	QWORD PTR 72[rsp], rdx
	mov	QWORD PTR 64[rsp], r8
	mov	QWORD PTR 56[rsp], r9
	call	_Znwy
	mov	r8, QWORD PTR 64[rsp]
	mov	r9, QWORD PTR 56[rsp]
	lea	rcx, 504[rax]
	mov	rsi, rax
	mov	rdx, QWORD PTR 72[rsp]
	lea	r13, 512[rax]
	mov	QWORD PTR 8[r8], rax
	add	r8, 8
	mov	DWORD PTR [r9], ebp
	mov	DWORD PTR 4[r9], edi
	cmp	rsi, rcx
	jne	.L702
	.p2align 4
	.p2align 3
.L615:
	mov	r13, r8
	mov	r10, QWORD PTR 40[rsp]
	mov	rcx, rsi
	sub	r13, rdx
	mov	rdi, r13
	sar	rdi, 3
	cmp	r8, 1
	mov	r11, rdi
	adc	r11, -1
	sub	rcx, rax
	mov	rax, r15
	sal	r11, 6
	sar	rcx, 3
	sub	rax, r10
	add	rcx, r11
	sar	rax, 3
	add	rax, rcx
	movabs	rcx, 2305843009213693951
	cmp	rax, rcx
	je	.L520
	vmovq	rcx, xmm11
	mov	rax, r8
	sub	rax, rcx
	mov	rcx, r14
	sar	rax, 3
	sub	rcx, rax
	cmp	rcx, 1
	jbe	.L703
.L617:
	mov	ecx, 512
	mov	QWORD PTR 64[rsp], rdx
	mov	QWORD PTR 56[rsp], r8
	call	_Znwy
	mov	r8, QWORD PTR 56[rsp]
	mov	rdx, QWORD PTR 64[rsp]
	mov	rdi, rax
	lea	r13, 512[rax]
	mov	QWORD PTR 8[r8], rax
	add	r8, 8
	jmp	.L616
	.p2align 4,,10
	.p2align 3
.L561:
	mov	rax, QWORD PTR -8[r14]
	mov	rcx, rdi
	mov	edx, 512
	sub	r14, 8
	vmovq	xmm10, QWORD PTR 504[rax]
	call	_ZdlPvy
	mov	r15, QWORD PTR [r14]
	lea	r13, 512[r15]
	lea	rdi, 504[r15]
	jmp	.L562
	.p2align 4,,10
	.p2align 3
.L507:
	test	r15, r15
	mov	r10d, 1
	cmovne	r10, r15
	add	r10, r15
	lea	r14, 2[r10]
	mov	rax, r14
	shr	rax, 60
	jne	.L670
	lea	rcx, 0[0+r14*8]
	mov	QWORD PTR 88[rsp], rdx
	mov	QWORD PTR 80[rsp], r9
	mov	QWORD PTR 56[rsp], r10
	call	_Znwy
	mov	r10, QWORD PTR 56[rsp]
	mov	r9, QWORD PTR 80[rsp]
	lea	r8, 8[r13]
	mov	rdx, QWORD PTR 88[rsp]
	mov	QWORD PTR 64[rsp], rax
	sub	r10, r9
	shr	r10
	sub	r8, rdx
	lea	rcx, [rax+r10*8]
	mov	QWORD PTR 56[rsp], rcx
	cmp	r8, 8
	jle	.L516
	call	memmove
.L517:
	lea	rdx, 0[0+r15*8]
	vmovq	rcx, xmm11
	mov	r15, r14
	call	_ZdlPvy
	mov	rdx, QWORD PTR 56[rsp]
	mov	rcx, QWORD PTR 64[rsp]
	mov	rax, QWORD PTR [rdx]
	vmovq	xmm11, rcx
	jmp	.L510
	.p2align 4,,10
	.p2align 3
.L522:
	test	r15, r15
	mov	r10d, 1
	cmovne	r10, r15
	add	r10, r15
	lea	rax, 2[r10]
	mov	QWORD PTR 56[rsp], rax
	shr	rax, 60
	jne	.L704
	mov	rax, QWORD PTR 56[rsp]
	mov	QWORD PTR 96[rsp], rdx
	mov	QWORD PTR 88[rsp], r9
	lea	rcx, 0[0+rax*8]
	mov	QWORD PTR 64[rsp], r10
	call	_Znwy
	mov	r10, QWORD PTR 64[rsp]
	mov	r9, QWORD PTR 88[rsp]
	lea	r8, 8[r13]
	mov	rdx, QWORD PTR 96[rsp]
	mov	QWORD PTR 80[rsp], rax
	sub	r10, r9
	shr	r10
	sub	r8, rdx
	lea	rcx, [rax+r10*8]
	mov	QWORD PTR 64[rsp], rcx
	cmp	r8, 8
	jle	.L531
	call	memmove
.L532:
	lea	rdx, 0[0+r15*8]
	vmovq	rcx, xmm11
	call	_ZdlPvy
	mov	rdx, QWORD PTR 64[rsp]
	mov	rcx, QWORD PTR 80[rsp]
	mov	r15, QWORD PTR 56[rsp]
	mov	rax, QWORD PTR [rdx]
	vmovq	xmm11, rcx
	jmp	.L525
	.p2align 4,,10
	.p2align 3
.L536:
	test	r15, r15
	mov	r11d, 1
	cmovne	r11, r15
	add	r11, r15
	lea	r14, 2[r11]
	mov	rax, r14
	shr	rax, 60
	jne	.L670
	lea	rcx, 0[0+r14*8]
	mov	QWORD PTR 96[rsp], rdx
	mov	QWORD PTR 88[rsp], r10
	mov	QWORD PTR 56[rsp], r11
	mov	QWORD PTR 80[rsp], r9
	call	_Znwy
	mov	r11, QWORD PTR 56[rsp]
	mov	r10, QWORD PTR 88[rsp]
	lea	r8, 8[r13]
	mov	rdx, QWORD PTR 96[rsp]
	mov	r9, QWORD PTR 80[rsp]
	mov	QWORD PTR 64[rsp], rax
	sub	r11, r10
	shr	r11
	sub	r8, rdx
	lea	rcx, [rax+r11*8]
	cmp	r8, 8
	mov	QWORD PTR 56[rsp], rcx
	jle	.L544
	call	memmove
	mov	r9, QWORD PTR 80[rsp]
.L545:
	lea	rdx, 0[0+r15*8]
	vmovq	rcx, xmm11
	mov	QWORD PTR 80[rsp], r9
	mov	r15, r14
	call	_ZdlPvy
	mov	rdx, QWORD PTR 56[rsp]
	mov	rcx, QWORD PTR 64[rsp]
	mov	r9, QWORD PTR 80[rsp]
	mov	rax, QWORD PTR [rdx]
	vmovq	xmm11, rcx
	jmp	.L539
	.p2align 4,,10
	.p2align 3
.L549:
	test	r15, r15
	mov	r10d, 1
	cmovne	r10, r15
	add	r10, r15
	lea	r12, 2[r10]
	mov	rax, r12
	shr	rax, 60
	jne	.L705
	lea	rcx, 0[0+r12*8]
	mov	QWORD PTR 88[rsp], rdx
	mov	QWORD PTR 80[rsp], r9
	mov	QWORD PTR 56[rsp], r10
	call	_Znwy
	mov	r10, QWORD PTR 56[rsp]
	mov	r9, QWORD PTR 80[rsp]
	lea	r8, 8[r13]
	mov	rdx, QWORD PTR 88[rsp]
	mov	QWORD PTR 64[rsp], rax
	sub	r10, r9
	shr	r10
	sub	r8, rdx
	lea	rcx, [rax+r10*8]
	mov	QWORD PTR 56[rsp], rcx
	cmp	r8, 8
	jle	.L557
	call	memmove
.L558:
	lea	rdx, 0[0+r15*8]
	vmovq	rcx, xmm11
	mov	r15, r12
	call	_ZdlPvy
	mov	rdx, QWORD PTR 56[rsp]
	mov	rcx, QWORD PTR 64[rsp]
	mov	rax, QWORD PTR [rdx]
	vmovq	xmm11, rcx
	jmp	.L552
	.p2align 4,,10
	.p2align 3
.L679:
	movsx	rax, ebx
	mov	QWORD PTR 48[rsp], rax
	movsx	rax, esi
	vmovq	xmm9, rax
	jmp	.L565
	.p2align 4,,10
	.p2align 3
.L508:
	lea	rcx, 8[r14+rbp]
	cmp	r8, 8
	jle	.L512
	sub	rcx, r8
	call	memmove
.L673:
	mov	rax, QWORD PTR [r14]
	mov	rdx, r14
	jmp	.L510
	.p2align 4,,10
	.p2align 3
.L523:
	lea	rcx, 8[r9+rbp]
	cmp	r8, 8
	jle	.L527
	sub	rcx, r8
	mov	QWORD PTR 56[rsp], r9
	call	memmove
	mov	r9, QWORD PTR 56[rsp]
.L675:
	mov	rax, QWORD PTR [r9]
	mov	rdx, r9
	jmp	.L525
	.p2align 4,,10
	.p2align 3
.L537:
	lea	rcx, 8[r14+r9]
	cmp	r8, 8
	jle	.L541
	sub	rcx, r8
	mov	QWORD PTR 56[rsp], r9
	call	memmove
	mov	rax, QWORD PTR [r14]
	mov	r9, QWORD PTR 56[rsp]
	mov	rdx, r14
	jmp	.L539
	.p2align 4,,10
	.p2align 3
.L550:
	lea	rcx, 8[r12+rbp]
	cmp	r8, 8
	jle	.L554
	sub	rcx, r8
	call	memmove
.L678:
	mov	rax, QWORD PTR [r12]
	mov	rdx, r12
	jmp	.L552
	.p2align 4,,10
	.p2align 3
.L695:
	mov	ebx, DWORD PTR 80[rsp]
	sub	r12d, 1
	mov	rbp, r15
	mov	r15, r8
	cmp	r12d, ebx
	jne	.L575
	mov	QWORD PTR 64[rsp], r14
	mov	r15, rax
	mov	r14, r8
	mov	QWORD PTR 56[rsp], rbp
	mov	rbp, rdx
	cmp	QWORD PTR 40[rsp], rdi
	jne	.L630
	jmp	.L706
	.p2align 4,,10
	.p2align 3
.L697:
	lea	rax, 2[rsi]
	lea	rcx, [rax+rax]
	cmp	rcx, r14
	jnb	.L579
	mov	rcx, r14
	vmovq	rsi, xmm11
	add	r8, 8
	sub	rcx, rax
	sub	r8, rdx
	mov	rax, rcx
	shr	rax
	lea	rsi, [rsi+rax*8]
	cmp	rsi, rdx
	jnb	.L580
	cmp	r8, 8
	jle	.L581
	mov	rcx, rsi
	call	memmove
	mov	r15, QWORD PTR [rsi]
	mov	rdx, rsi
.L582:
	mov	QWORD PTR 232[rsp], r15
	lea	r8, [rdx+r13]
	add	r15, 512
	jmp	.L578
	.p2align 4,,10
	.p2align 3
.L699:
	lea	rax, 2[r10]
	lea	rcx, [rax+rax]
	cmp	rcx, r14
	jnb	.L592
	mov	rcx, r14
	add	r8, 8
	sub	rcx, rax
	sub	r8, rdx
	mov	rax, rcx
	vmovq	rcx, xmm11
	shr	rax
	lea	r13, [rcx+rax*8]
	cmp	r13, rdx
	jnb	.L593
	cmp	r8, 8
	jle	.L594
	mov	rcx, r13
	mov	QWORD PTR 56[rsp], r9
	call	memmove
	mov	r15, QWORD PTR 0[r13]
	mov	r9, QWORD PTR 56[rsp]
	mov	rdx, r13
.L595:
	mov	QWORD PTR 232[rsp], r15
	lea	r8, [rdx+r9]
	add	r15, 512
	jmp	.L591
	.p2align 4,,10
	.p2align 3
.L701:
	lea	rax, 2[r11]
	lea	rcx, [rax+rax]
	cmp	rcx, r14
	jnb	.L605
	mov	rcx, r14
	add	r8, 8
	sub	rcx, rax
	sub	r8, rdx
	mov	rax, rcx
	shr	rax
	lea	rsi, [rsi+rax*8]
	cmp	rsi, rdx
	jnb	.L606
	cmp	r8, 8
	jle	.L607
	mov	rcx, rsi
	mov	QWORD PTR 56[rsp], r9
	call	memmove
	mov	r15, QWORD PTR [rsi]
	mov	r9, QWORD PTR 56[rsp]
	mov	rdx, rsi
.L608:
	mov	QWORD PTR 232[rsp], r15
	lea	r8, [rdx+r13]
	add	r15, 512
	jmp	.L604
	.p2align 4,,10
	.p2align 3
.L703:
	lea	rcx, 2[rdi]
	lea	rax, [rcx+rcx]
	cmp	rax, r14
	jnb	.L618
	mov	rax, r14
	vmovq	rdi, xmm11
	add	r8, 8
	sub	rax, rcx
	sub	r8, rdx
	shr	rax
	lea	rdi, [rdi+rax*8]
	cmp	rdi, rdx
	jnb	.L619
	cmp	r8, 8
	jle	.L620
	mov	rcx, rdi
	call	memmove
	mov	r15, QWORD PTR [rdi]
	mov	rdx, rdi
.L621:
	mov	QWORD PTR 232[rsp], r15
	lea	r8, [rdx+r13]
	add	r15, 512
	jmp	.L617
.L605:
	test	r14, r14
	mov	r15d, 1
	cmovne	r15, r14
	add	r15, r14
	lea	rax, 2[r15]
	mov	QWORD PTR 56[rsp], rax
	shr	rax, 60
	jne	.L707
	mov	rax, QWORD PTR 56[rsp]
	mov	QWORD PTR 120[rsp], rdx
	mov	QWORD PTR 112[rsp], r8
	lea	rcx, 0[0+rax*8]
	mov	QWORD PTR 96[rsp], r11
	mov	QWORD PTR 72[rsp], r9
	call	_Znwy
	mov	r8, QWORD PTR 112[rsp]
	mov	r11, QWORD PTR 96[rsp]
	mov	rdx, QWORD PTR 120[rsp]
	mov	r9, QWORD PTR 72[rsp]
	mov	QWORD PTR 64[rsp], rax
	add	r8, 8
	sub	r15, r11
	sub	r8, rdx
	shr	r15
	cmp	r8, 8
	lea	rsi, [rax+r15*8]
	jle	.L613
	mov	rcx, rsi
	call	memmove
	mov	r9, QWORD PTR 72[rsp]
.L614:
	lea	rdx, 0[0+r14*8]
	vmovq	rcx, xmm11
	mov	QWORD PTR 72[rsp], r9
	call	_ZdlPvy
	mov	rax, QWORD PTR 64[rsp]
	mov	r15, QWORD PTR [rsi]
	mov	rdx, rsi
	mov	r14, QWORD PTR 56[rsp]
	mov	r9, QWORD PTR 72[rsp]
	vmovq	xmm11, rax
	jmp	.L608
.L618:
	test	r14, r14
	mov	r15d, 1
	cmovne	r15, r14
	add	r15, r14
	lea	rax, 2[r15]
	mov	QWORD PTR 56[rsp], rax
	shr	rax, 60
	jne	.L671
	mov	rax, QWORD PTR 56[rsp]
	mov	QWORD PTR 96[rsp], rdx
	sub	r15, rdi
	mov	QWORD PTR 72[rsp], r8
	shr	r15
	lea	rcx, 0[0+rax*8]
	call	_Znwy
	mov	r8, QWORD PTR 72[rsp]
	mov	rdx, QWORD PTR 96[rsp]
	mov	QWORD PTR 64[rsp], rax
	lea	rdi, [rax+r15*8]
	add	r8, 8
	sub	r8, rdx
	cmp	r8, 8
	jle	.L626
	mov	rcx, rdi
	call	memmove
.L627:
	lea	rdx, 0[0+r14*8]
	vmovq	rcx, xmm11
	call	_ZdlPvy
	mov	rax, QWORD PTR 64[rsp]
	mov	r15, QWORD PTR [rdi]
	mov	rdx, rdi
	mov	r14, QWORD PTR 56[rsp]
	vmovq	xmm11, rax
	jmp	.L621
.L579:
	test	r14, r14
	mov	r15d, 1
	cmovne	r15, r14
	add	r15, r14
	lea	rax, 2[r15]
	mov	QWORD PTR 56[rsp], rax
	shr	rax, 60
	jne	.L671
	mov	rax, QWORD PTR 56[rsp]
	mov	QWORD PTR 96[rsp], rdx
	sub	r15, rsi
	mov	QWORD PTR 72[rsp], r8
	shr	r15
	lea	rcx, 0[0+rax*8]
	call	_Znwy
	mov	r8, QWORD PTR 72[rsp]
	mov	rdx, QWORD PTR 96[rsp]
	mov	QWORD PTR 64[rsp], rax
	lea	rsi, [rax+r15*8]
	add	r8, 8
	sub	r8, rdx
	cmp	r8, 8
	jle	.L587
	mov	rcx, rsi
	call	memmove
.L588:
	lea	rdx, 0[0+r14*8]
	vmovq	rcx, xmm11
	call	_ZdlPvy
	mov	rax, QWORD PTR 64[rsp]
	mov	r15, QWORD PTR [rsi]
	mov	rdx, rsi
	mov	r14, QWORD PTR 56[rsp]
	vmovq	xmm11, rax
	jmp	.L582
.L592:
	test	r14, r14
	mov	r15d, 1
	cmovne	r15, r14
	add	r15, r14
	lea	r13, 2[r15]
	mov	rax, r13
	shr	rax, 60
	jne	.L708
	lea	rcx, 0[0+r13*8]
	mov	QWORD PTR 112[rsp], rdx
	mov	QWORD PTR 96[rsp], r8
	mov	QWORD PTR 72[rsp], r10
	mov	QWORD PTR 64[rsp], r9
	call	_Znwy
	mov	r10, QWORD PTR 72[rsp]
	mov	r8, QWORD PTR 96[rsp]
	mov	rdx, QWORD PTR 112[rsp]
	mov	r9, QWORD PTR 64[rsp]
	mov	QWORD PTR 56[rsp], rax
	sub	r15, r10
	add	r8, 8
	shr	r15
	sub	r8, rdx
	lea	rcx, [rax+r15*8]
	cmp	r8, 8
	mov	r15, rcx
	jle	.L600
	call	memmove
	mov	r9, QWORD PTR 64[rsp]
.L601:
	lea	rdx, 0[0+r14*8]
	vmovq	rcx, xmm11
	mov	QWORD PTR 64[rsp], r9
	mov	r14, r13
	call	_ZdlPvy
	mov	rax, QWORD PTR 56[rsp]
	mov	rdx, r15
	mov	r9, QWORD PTR 64[rsp]
	mov	r15, QWORD PTR [r15]
	vmovq	xmm11, rax
	jmp	.L595
.L593:
	lea	rax, 8[r13+r9]
	cmp	r8, 8
	jle	.L597
	sub	rax, r8
	mov	QWORD PTR 56[rsp], r9
	mov	rcx, rax
	call	memmove
	mov	r15, QWORD PTR 0[r13]
	mov	r9, QWORD PTR 56[rsp]
	mov	rdx, r13
	jmp	.L595
.L580:
	lea	rax, 8[rsi+r13]
	cmp	r8, 8
	jle	.L584
	sub	rax, r8
	mov	rcx, rax
	call	memmove
.L681:
	mov	r15, QWORD PTR [rsi]
	mov	rdx, rsi
	jmp	.L582
.L619:
	lea	rax, 8[rdi+r13]
	cmp	r8, 8
	jle	.L623
	sub	rax, r8
	mov	rcx, rax
	call	memmove
.L685:
	mov	r15, QWORD PTR [rdi]
	mov	rdx, rdi
	jmp	.L621
.L606:
	lea	rax, 8[rsi+r13]
	cmp	r8, 8
	jle	.L610
	sub	rax, r8
	mov	QWORD PTR 56[rsp], r9
	mov	rcx, rax
	call	memmove
	mov	r15, QWORD PTR [rsi]
	mov	r9, QWORD PTR 56[rsp]
	mov	rdx, rsi
	jmp	.L608
.L541:
	je	.L542
.L676:
	mov	rax, QWORD PTR [r14]
	mov	rdx, r14
	jmp	.L539
.L554:
	jne	.L678
	mov	rax, QWORD PTR [rdx]
	mov	QWORD PTR -8[rcx], rax
	jmp	.L678
.L512:
	jne	.L673
	mov	rax, QWORD PTR [rdx]
	mov	QWORD PTR -8[rcx], rax
	jmp	.L673
.L527:
	jne	.L675
	mov	rax, QWORD PTR [rdx]
	mov	QWORD PTR -8[rcx], rax
	jmp	.L675
.L670:
	movabs	rax, 2305843009213693951
	cmp	rax, r14
	jnb	.L515
.L530:
	call	_ZSt28__throw_bad_array_new_lengthv
.L704:
	movabs	rdx, 2305843009213693951
	mov	rax, QWORD PTR 56[rsp]
	cmp	rdx, rax
	jb	.L530
.L515:
	call	_ZSt17__throw_bad_allocv
.L551:
	jne	.L678
	mov	rax, QWORD PTR [rdx]
	mov	rdx, r12
	mov	QWORD PTR [r12], rax
	jmp	.L552
.L509:
	jne	.L673
	mov	rax, QWORD PTR [rdx]
	mov	rdx, r14
	mov	QWORD PTR [r14], rax
	jmp	.L510
.L524:
	jne	.L675
	mov	rax, QWORD PTR [rdx]
	mov	rdx, r9
	mov	QWORD PTR [r9], rax
	jmp	.L525
.L538:
	jne	.L676
	mov	rax, QWORD PTR [rdx]
	mov	rdx, r14
	mov	QWORD PTR [r14], rax
	jmp	.L539
.L705:
	movabs	rax, 2305843009213693951
	cmp	rax, r12
	jb	.L530
	jmp	.L515
.L636:
	mov	rcx, rdi
	mov	r8d, 8
	vzeroupper
	jmp	.L560
.L557:
	jne	.L558
	mov	rax, QWORD PTR [rdx]
	mov	rdx, QWORD PTR 56[rsp]
	mov	QWORD PTR [rdx], rax
	jmp	.L558
.L516:
	jne	.L517
	mov	rax, QWORD PTR [rdx]
	mov	rdx, QWORD PTR 56[rsp]
	mov	QWORD PTR [rdx], rax
	jmp	.L517
.L531:
	jne	.L532
	mov	rax, QWORD PTR [rdx]
	mov	rdx, QWORD PTR 64[rsp]
	mov	QWORD PTR [rdx], rax
	jmp	.L532
.L544:
	jne	.L545
	mov	rax, QWORD PTR [rdx]
	mov	rdx, QWORD PTR 56[rsp]
	mov	QWORD PTR [rdx], rax
	jmp	.L545
.L671:
	movabs	rax, 2305843009213693951
	mov	rsi, QWORD PTR 56[rsp]
	cmp	rax, rsi
	jb	.L530
	jmp	.L515
.L542:
	mov	rax, QWORD PTR [rdx]
	mov	QWORD PTR -8[rcx], rax
	jmp	.L676
.L594:
	je	.L596
.L682:
	mov	r15, QWORD PTR 0[r13]
	mov	rdx, r13
	jmp	.L595
.L607:
	je	.L609
.L683:
	mov	r15, QWORD PTR [rsi]
	mov	rdx, rsi
	jmp	.L608
.L620:
	jne	.L685
	mov	r15, QWORD PTR [rdx]
	mov	rdx, rdi
	mov	QWORD PTR [rdi], r15
	jmp	.L621
.L581:
	jne	.L681
	mov	r15, QWORD PTR [rdx]
	mov	rdx, rsi
	mov	QWORD PTR [rsi], r15
	jmp	.L582
.L708:
	movabs	rax, 2305843009213693951
	cmp	rax, r13
	jb	.L530
	jmp	.L515
.L707:
	movabs	rax, 2305843009213693951
	mov	rdx, QWORD PTR 56[rsp]
	cmp	rax, rdx
	jb	.L530
	jmp	.L515
.L587:
	jne	.L588
	mov	rax, QWORD PTR [rdx]
	mov	QWORD PTR [rsi], rax
	jmp	.L588
.L600:
	jne	.L601
	mov	rax, QWORD PTR [rdx]
	mov	QWORD PTR [rcx], rax
	jmp	.L601
.L613:
	jne	.L614
	mov	rax, QWORD PTR [rdx]
	mov	QWORD PTR [rsi], rax
	jmp	.L614
.L626:
	jne	.L627
	mov	rax, QWORD PTR [rdx]
	mov	QWORD PTR [rdi], rax
	jmp	.L627
.L597:
	jne	.L682
	mov	rdx, QWORD PTR [rdx]
	mov	QWORD PTR -8[rax], rdx
	jmp	.L682
.L584:
	jne	.L681
	mov	rdx, QWORD PTR [rdx]
	mov	QWORD PTR -8[rax], rdx
	jmp	.L681
.L623:
	jne	.L685
	mov	rdx, QWORD PTR [rdx]
	mov	QWORD PTR -8[rax], rdx
	jmp	.L685
.L610:
	jne	.L683
	mov	rdx, QWORD PTR [rdx]
	mov	QWORD PTR -8[rax], rdx
	jmp	.L683
.L609:
	mov	r15, QWORD PTR [rdx]
	mov	rdx, rsi
	mov	QWORD PTR [rsi], r15
	jmp	.L608
.L596:
	mov	r15, QWORD PTR [rdx]
	mov	rdx, r13
	mov	QWORD PTR 0[r13], r15
	jmp	.L595
.L520:
	lea	rcx, .LC0[rip]
	call	_ZSt20__throw_length_errorPKc
	nop
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
.LC5:
	.long	-350469331
	.long	1058682594
	.align 8
.LC6:
	.long	0
	.long	1079574528
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev2, Built by MSYS2 project) 14.2.0"
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	memmove;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_ZSt28__throw_bad_array_new_lengthv;	.scl	2;	.type	32;	.endef
	.def	_ZSt17__throw_bad_allocv;	.scl	2;	.type	32;	.endef
	.def	_ZSt20__throw_length_errorPKc;	.scl	2;	.type	32;	.endef
	.def	memset;	.scl	2;	.type	32;	.endef
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZN5Lenia6Animal8GetCellsEv;	.scl	2;	.type	32;	.endef
	.def	_ZdaPv;	.scl	2;	.type	32;	.endef
	.def	__cxa_begin_catch;	.scl	2;	.type	32;	.endef
	.def	__cxa_rethrow;	.scl	2;	.type	32;	.endef
	.def	__cxa_end_catch;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEyyy;	.scl	2;	.type	32;	.endef
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
