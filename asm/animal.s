	.file	"animal.cpp"
	.intel_syntax noprefix
	.text
	.section	.text$_ZN5Lenia8TaxonomyD1Ev,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZN5Lenia8TaxonomyD1Ev
	.def	_ZN5Lenia8TaxonomyD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Lenia8TaxonomyD1Ev
_ZN5Lenia8TaxonomyD1Ev:
.LFB6258:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	mov	rcx, QWORD PTR 128[rcx]
	lea	rax, 144[rbx]
	cmp	rcx, rax
	je	.L2
	mov	rax, QWORD PTR 144[rbx]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L2:
	mov	rcx, QWORD PTR 96[rbx]
	lea	rax, 112[rbx]
	cmp	rcx, rax
	je	.L3
	mov	rax, QWORD PTR 112[rbx]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L3:
	mov	rcx, QWORD PTR 64[rbx]
	lea	rax, 80[rbx]
	cmp	rcx, rax
	je	.L4
	mov	rax, QWORD PTR 80[rbx]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L4:
	mov	rcx, QWORD PTR 32[rbx]
	lea	rax, 48[rbx]
	cmp	rcx, rax
	je	.L5
	mov	rax, QWORD PTR 48[rbx]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L5:
	mov	rcx, QWORD PTR [rbx]
	lea	rax, 16[rbx]
	cmp	rcx, rax
	je	.L7
	mov	rdx, QWORD PTR 16[rbx]
	add	rdx, 1
	add	rsp, 32
	pop	rbx
	jmp	_ZdlPvy
	.p2align 4,,10
	.p2align 3
.L7:
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.text
	.align 2
	.p2align 4
	.globl	_ZN5Lenia6AnimalD2Ev
	.def	_ZN5Lenia6AnimalD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Lenia6AnimalD2Ev
_ZN5Lenia6AnimalD2Ev:
.LFB6265:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.glad_glDeleteBuffers[rip]
	mov	rbx, rcx
	lea	rdx, 256[rcx]
	mov	ecx, 1
	call	[QWORD PTR [rax]]
	mov	rcx, QWORD PTR 264[rbx]
	test	rcx, rcx
	je	.L10
	mov	rdx, QWORD PTR 280[rbx]
	sub	rdx, rcx
	call	_ZdlPvy
.L10:
	mov	rcx, QWORD PTR 224[rbx]
	lea	rax, 240[rbx]
	cmp	rcx, rax
	je	.L11
	mov	rax, QWORD PTR 240[rbx]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L11:
	mov	rcx, QWORD PTR 144[rbx]
	lea	rax, 160[rbx]
	cmp	rcx, rax
	je	.L12
	mov	rax, QWORD PTR 160[rbx]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L12:
	mov	rcx, QWORD PTR 112[rbx]
	lea	rax, 128[rbx]
	cmp	rcx, rax
	je	.L13
	mov	rax, QWORD PTR 128[rbx]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L13:
	mov	rcx, QWORD PTR 80[rbx]
	lea	rax, 96[rbx]
	cmp	rcx, rax
	je	.L14
	mov	rax, QWORD PTR 96[rbx]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L14:
	mov	rcx, QWORD PTR 48[rbx]
	lea	rax, 64[rbx]
	cmp	rcx, rax
	je	.L15
	mov	rax, QWORD PTR 64[rbx]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L15:
	mov	rcx, QWORD PTR 16[rbx]
	lea	rax, 32[rbx]
	cmp	rcx, rax
	je	.L20
	mov	rdx, QWORD PTR 32[rbx]
	add	rdx, 1
	add	rsp, 32
	pop	rbx
	jmp	_ZdlPvy
	.p2align 4,,10
	.p2align 3
.L20:
	add	rsp, 32
	pop	rbx
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6265:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6265-.LLSDACSB6265
.LLSDACSB6265:
.LLSDACSE6265:
	.text
	.seh_endproc
	.globl	_ZN5Lenia6AnimalD1Ev
	.def	_ZN5Lenia6AnimalD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN5Lenia6AnimalD1Ev,_ZN5Lenia6AnimalD2Ev
	.align 2
	.p2align 4
	.globl	_ZN5Lenia6Animal8GetCellsEv
	.def	_ZN5Lenia6Animal8GetCellsEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Lenia6Animal8GetCellsEv
_ZN5Lenia6Animal8GetCellsEv:
.LFB6304:
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
	vmovups	XMMWORD PTR 48[rsp], xmm6
	.seh_savexmm	xmm6, 48
	vmovups	XMMWORD PTR 64[rsp], xmm7
	.seh_savexmm	xmm7, 64
	vmovups	XMMWORD PTR 80[rsp], xmm8
	.seh_savexmm	xmm8, 80
	.seh_endprologue
	mov	rbx, QWORD PTR 224[rcx]
	mov	r13, rcx
	mov	ecx, 262140
	call	_Znay
	mov	r8d, 262140
	xor	edx, edx
	mov	rcx, rax
	mov	rsi, rax
	call	memset
	movzx	eax, BYTE PTR [rbx]
	test	al, al
	je	.L22
	cmp	al, 33
	je	.L22
	vxorps	xmm2, xmm2, xmm2
	mov	r10d, 1
	xor	edi, edi
	xor	ebp, ebp
	vmovss	xmm3, DWORD PTR .LC1[rip]
	xor	r11d, r11d
	xor	r9d, r9d
	vmovss	xmm1, DWORD PTR .LC2[rip]
	.p2align 4
	.p2align 3
.L35:
	cmp	al, 36
	jne	.L23
	mov	edx, r9d
	movzx	eax, BYTE PTR 1[rbx]
	vmovss	DWORD PTR [rsi+r9*4], xmm3
	sub	edx, r11d
	lea	r11d, 1[r9]
	cmp	edi, edx
	mov	r9d, r11d
	cmovb	edi, edx
	add	r10d, 1
	add	rbx, 1
.L23:
	movsx	r8d, al
	xor	edx, edx
	lea	ecx, -48[r8]
	cmp	ecx, 9
	ja	.L84
	.p2align 6
	.p2align 4
	.p2align 3
.L24:
	mov	r12, rbx
	movsx	ecx, BYTE PTR 1[rbx]
	sub	eax, 48
	lea	edx, [rdx+rdx*4]
	movsx	eax, al
	add	rbx, 1
	lea	r8d, -48[rcx]
	lea	edx, [rax+rdx*2]
	mov	eax, ecx
	cmp	r8d, 9
	jbe	.L24
	mov	r8d, 255
	cmp	cl, 111
	je	.L27
	jg	.L28
	sub	eax, 65
	lea	r8d, -64[rcx]
	cmp	al, 24
	cmovnb	r8d, ebp
.L27:
	test	edx, edx
	je	.L30
	mov	rax, rbx
	jle	.L33
	vcvtsi2ss	xmm0, xmm2, r8d
	xor	eax, eax
	vmulss	xmm0, xmm0, xmm1
	.p2align 5
	.p2align 4
	.p2align 3
.L34:
	lea	ecx, [rax+r9]
	add	eax, 1
	vmovss	DWORD PTR [rsi+rcx*4], xmm0
	cmp	eax, edx
	jl	.L34
	mov	rax, rbx
.L32:
	add	r9d, edx
	mov	r9d, r9d
.L33:
	movzx	eax, BYTE PTR 1[rax]
	add	rbx, 1
	test	al, al
	je	.L37
	cmp	al, 33
	jne	.L35
.L37:
	mov	eax, edi
	mov	r15d, r10d
	vmovq	xmm7, r15
	imul	r15, rax
	vmovq	xmm8, rax
	movabs	rax, 2305843009213693950
	cmp	rax, r15
	jb	.L39
	lea	r8, 0[0+r15*4]
	mov	rcx, r8
	mov	QWORD PTR 40[rsp], r8
	call	_Znay
	mov	r8, QWORD PTR 40[rsp]
	mov	r14, rax
	test	r8, r8
	je	.L40
	xor	edx, edx
	mov	rcx, rax
	call	memset
.L40:
	test	r15, r15
	je	.L38
	vmovss	xmm6, DWORD PTR .LC1[rip]
	mov	rbp, rsi
	xor	eax, eax
	xor	ebx, ebx
	jmp	.L47
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L85:
	vmovss	DWORD PTR [r14+rbx*4], xmm0
	add	rbx, 1
	add	rax, 1
	add	rbp, 4
	cmp	rbx, r15
	jnb	.L38
.L47:
	vmovss	xmm0, DWORD PTR 0[rbp]
	vcomiss	xmm0, xmm6
	jne	.L85
	mov	r12d, edi
	sub	r12d, eax
	test	r12d, r12d
	jle	.L46
	mov	eax, r12d
	lea	rcx, [r14+rbx*4]
	xor	edx, edx
	lea	r8, 0[0+rax*4]
	call	memset
.L46:
	movsx	r12, r12d
	xor	eax, eax
	add	rbp, 4
	lea	rbx, -1[rbx+r12]
	add	rbx, 1
	cmp	rbx, r15
	jb	.L47
.L38:
	mov	rcx, rsi
	call	_ZdaPv
	mov	rax, r14
	vmovq	QWORD PTR 0[r13], xmm8
	vmovq	QWORD PTR 8[r13], xmm7
	vmovups	xmm6, XMMWORD PTR 48[rsp]
	vmovups	xmm7, XMMWORD PTR 64[rsp]
	vmovups	xmm8, XMMWORD PTR 80[rsp]
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
	.p2align 4,,10
	.p2align 3
.L84:
	cmp	al, 111
	je	.L57
	jle	.L86
	sub	eax, 112
	cmp	al, 9
	ja	.L59
	movsx	eax, BYTE PTR 1[rbx]
	lea	edx, -336[r8+r8*2]
	add	rbx, 1
	lea	r8d, -40[rax+rdx*8]
	.p2align 4
	.p2align 3
.L30:
	vcvtsi2ss	xmm0, xmm2, r8d
	mov	rax, rbx
	vmulss	xmm0, xmm0, xmm1
.L50:
	mov	edx, r9d
	vmovss	DWORD PTR [rsi+rdx*4], xmm0
	mov	edx, 1
	jmp	.L32
	.p2align 4,,10
	.p2align 3
.L28:
	sub	eax, 112
	xor	r8d, r8d
	cmp	al, 9
	ja	.L27
	movsx	eax, BYTE PTR 1[rbx]
	lea	ecx, -336[rcx+rcx*2]
	lea	rbx, 2[r12]
	lea	r8d, -40[rax+rcx*8]
	jmp	.L27
.L86:
	sub	eax, 65
	sub	r8d, 64
	cmp	al, 23
	jbe	.L30
.L59:
	mov	rax, rbx
	vxorps	xmm0, xmm0, xmm0
	jmp	.L50
.L57:
	mov	r8d, 255
	jmp	.L30
.L22:
	xor	ecx, ecx
	call	_Znay
	vpxor	xmm8, xmm8, xmm8
	mov	r14, rax
	mov	eax, 1
	vmovq	xmm7, rax
	jmp	.L38
.L39:
	call	__cxa_throw_bad_array_new_length
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6304:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6304-.LLSDACSB6304
.LLSDACSB6304:
.LLSDACSE6304:
	.text
	.seh_endproc
	.section .rdata,"dr"
.LC8:
	.ascii "Invalid KernelCore\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZNK5Lenia6Animal15ApplyKernelCoreEff
	.def	_ZNK5Lenia6Animal15ApplyKernelCoreEff;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK5Lenia6Animal15ApplyKernelCoreEff
_ZNK5Lenia6Animal15ApplyKernelCoreEff:
.LFB6306:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 80
	.seh_stackalloc	80
	vmovups	XMMWORD PTR 32[rsp], xmm6
	.seh_savexmm	xmm6, 32
	vmovups	XMMWORD PTR 48[rsp], xmm7
	.seh_savexmm	xmm7, 48
	vmovups	XMMWORD PTR 64[rsp], xmm8
	.seh_savexmm	xmm8, 64
	.seh_endprologue
	mov	eax, DWORD PTR 212[rcx]
	vmovss	xmm7, xmm1, xmm1
	cmp	eax, 2
	je	.L88
	vxorps	xmm6, xmm6, xmm6
	jg	.L89
	test	eax, eax
	je	.L90
	cmp	eax, 1
	jne	.L92
	vmovss	xmm8, DWORD PTR .LC3[rip]
	vsubss	xmm0, xmm1, xmm8
	vmulss	xmm0, xmm0, xmm1
	vdivss	xmm0, xmm8, xmm0
	vaddss	xmm0, xmm0, DWORD PTR .LC4[rip]
	call	expf
	vmovss	xmm1, xmm0, xmm0
	vxorps	xmm0, xmm0, xmm0
	vcomiss	xmm7, xmm0
	seta	dl
	vcomiss	xmm8, xmm7
.L105:
	seta	al
	movzx	eax, al
	and	eax, edx
	vcvtsi2ss	xmm0, xmm6, eax
	vmulss	xmm0, xmm0, xmm1
.L87:
	vmovups	xmm6, XMMWORD PTR 32[rsp]
	vmovups	xmm7, XMMWORD PTR 48[rsp]
	vmovups	xmm8, XMMWORD PTR 64[rsp]
	add	rsp, 80
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L89:
	cmp	eax, 3
	jne	.L92
	vsubss	xmm0, xmm1, DWORD PTR .LC5[rip]
	vmulss	xmm0, xmm0, DWORD PTR .LC6[rip]
	vmulss	xmm0, xmm0, xmm0
	vmulss	xmm0, xmm0, DWORD PTR .LC7[rip]
	call	expf
	vmovss	xmm1, xmm0, xmm0
	vxorps	xmm0, xmm0, xmm0
	vcomiss	xmm7, xmm0
	vmovss	xmm0, DWORD PTR .LC3[rip]
	seta	dl
	vcomiss	xmm0, xmm7
	jmp	.L105
	.p2align 4,,10
	.p2align 3
.L88:
	vcomiss	xmm1, xmm2
	jnb	.L106
	vmovss	xmm1, DWORD PTR .LC3[rip]
	vxorps	xmm0, xmm0, xmm0
.L95:
	vsubss	xmm1, xmm1, xmm2
	vcmpless	xmm7, xmm7, xmm1
	vxorps	xmm1, xmm1, xmm1
	vblendvps	xmm0, xmm1, xmm0, xmm7
	jmp	.L87
	.p2align 4,,10
	.p2align 3
.L90:
	vmovss	xmm0, DWORD PTR .LC3[rip]
	vmulss	xmm2, xmm7, DWORD PTR .LC4[rip]
	vsubss	xmm1, xmm0, xmm1
	vmulss	xmm1, xmm1, xmm2
	vxorps	xmm2, xmm2, xmm2
	vcomiss	xmm7, xmm2
	seta	dl
	xor	eax, eax
	vcvtss2sd	xmm1, xmm1, xmm1
	vmulsd	xmm1, xmm1, xmm1
	vcomiss	xmm0, xmm7
	seta	al
	and	eax, edx
	vmulsd	xmm1, xmm1, xmm1
	vcvtsi2ss	xmm0, xmm6, eax
	vcvtsd2ss	xmm1, xmm1, xmm1
	vmulss	xmm0, xmm0, xmm1
	jmp	.L87
	.p2align 4,,10
	.p2align 3
.L106:
	vmovss	xmm1, DWORD PTR .LC3[rip]
	vmovss	xmm0, xmm1, xmm1
	jmp	.L95
.L92:
	mov	ecx, 16
	call	__cxa_allocate_exception
	lea	rdx, .LC8[rip]
	mov	rcx, rax
	mov	rbx, rax
.LEHB0:
	call	_ZNSt13runtime_errorC1EPKc
.LEHE0:
	lea	r8, _ZNSt13runtime_errorD1Ev[rip]
	lea	rdx, _ZTISt13runtime_error[rip]
	mov	rcx, rbx
.LEHB1:
	call	__cxa_throw
.L102:
	mov	rcx, rbx
	vmovq	xmm6, rax
	vzeroupper
	call	__cxa_free_exception
	vmovq	rcx, xmm6
	call	_Unwind_Resume
	nop
.LEHE1:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6306:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6306-.LLSDACSB6306
.LLSDACSB6306:
	.uleb128 .LEHB0-.LFB6306
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L102-.LFB6306
	.uleb128 0
	.uleb128 .LEHB1-.LFB6306
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE6306:
	.text
	.seh_endproc
	.section .rdata,"dr"
.LC12:
	.ascii "Invalid GrowthFunction\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZNK5Lenia6Animal19ApplyGrowthFunctionEf
	.def	_ZNK5Lenia6Animal19ApplyGrowthFunctionEf;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK5Lenia6Animal19ApplyGrowthFunctionEf
_ZNK5Lenia6Animal19ApplyGrowthFunctionEf:
.LFB6307:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	eax, DWORD PTR 216[rcx]
	cmp	eax, 1
	je	.L108
	cmp	eax, 2
	jne	.L119
	vsubss	xmm1, xmm1, DWORD PTR 204[rcx]
	vmovss	xmm4, DWORD PTR .LC1[rip]
	vandps	xmm0, xmm1, XMMWORD PTR .LC11[rip]
	vfmadd132ss	xmm0, xmm4, DWORD PTR .LC10[rip]
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L119:
	test	eax, eax
	jne	.L110
	vsubss	xmm1, xmm1, DWORD PTR 204[rcx]
	vmovss	xmm0, DWORD PTR 208[rcx]
	vmulss	xmm0, xmm0, xmm0
	vmulss	xmm1, xmm1, xmm1
	vmulss	xmm1, xmm1, DWORD PTR .LC9[rip]
	vdivss	xmm1, xmm1, xmm0
	vmovss	xmm0, DWORD PTR .LC3[rip]
	vcomiss	xmm0, xmm1
	ja	.L120
	vmovss	xmm0, DWORD PTR .LC1[rip]
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L108:
	vsubss	xmm1, xmm1, DWORD PTR 204[rcx]
	vmovss	xmm2, DWORD PTR 208[rcx]
	vmulss	xmm2, xmm2, xmm2
	vmulss	xmm1, xmm1, xmm1
	vmulss	xmm0, xmm1, DWORD PTR .LC7[rip]
	vdivss	xmm0, xmm0, xmm2
	call	expf
	vmovss	xmm3, DWORD PTR .LC1[rip]
	vfmadd132ss	xmm0, xmm3, DWORD PTR .LC10[rip]
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L120:
	vmovss	xmm5, DWORD PTR .LC1[rip]
	vsubss	xmm0, xmm0, xmm1
	vcvtss2sd	xmm0, xmm0, xmm0
	vmulsd	xmm0, xmm0, xmm0
	vmulsd	xmm0, xmm0, xmm0
	vcvtsd2ss	xmm0, xmm0, xmm0
	vfmadd132ss	xmm0, xmm5, DWORD PTR .LC10[rip]
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
.L110:
	mov	ecx, 16
	call	__cxa_allocate_exception
	lea	rdx, .LC12[rip]
	mov	rcx, rax
	mov	rbx, rax
.LEHB2:
	call	_ZNSt13runtime_errorC1EPKc
.LEHE2:
	lea	r8, _ZNSt13runtime_errorD1Ev[rip]
	lea	rdx, _ZTISt13runtime_error[rip]
	mov	rcx, rbx
.LEHB3:
	call	__cxa_throw
.L116:
	mov	rsi, rax
	mov	rcx, rbx
	vzeroupper
	call	__cxa_free_exception
	mov	rcx, rsi
	call	_Unwind_Resume
	nop
.LEHE3:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6307:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6307-.LLSDACSB6307
.LLSDACSB6307:
	.uleb128 .LEHB2-.LFB6307
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L116-.LFB6307
	.uleb128 0
	.uleb128 .LEHB3-.LFB6307
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE6307:
	.text
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZNK5Lenia6Animal16ApplyKernelShellEf
	.def	_ZNK5Lenia6Animal16ApplyKernelShellEf;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK5Lenia6Animal16ApplyKernelShellEf
_ZNK5Lenia6Animal16ApplyKernelShellEf:
.LFB6308:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 136
	.seh_stackalloc	136
	vmovups	XMMWORD PTR 48[rsp], xmm6
	.seh_savexmm	xmm6, 48
	vmovups	XMMWORD PTR 64[rsp], xmm7
	.seh_savexmm	xmm7, 64
	vmovups	XMMWORD PTR 80[rsp], xmm8
	.seh_savexmm	xmm8, 80
	vmovups	XMMWORD PTR 96[rsp], xmm9
	.seh_savexmm	xmm9, 96
	vmovups	XMMWORD PTR 112[rsp], xmm10
	.seh_savexmm	xmm10, 112
	.seh_endprologue
	vxorps	xmm7, xmm7, xmm7
	movzx	eax, BYTE PTR 200[rcx]
	vcvtsi2ss	xmm0, xmm7, eax
	sub	eax, 1
	vcvtusi2ss	xmm10, xmm7, QWORD PTR 176[rcx]
	fld1
	vmovss	xmm8, xmm1, xmm1
	mov	rsi, rcx
	vdivss	xmm1, xmm1, xmm10
	vmulss	xmm2, xmm0, xmm1
	vrndscaless	xmm0, xmm2, xmm2, 9
	vcvttss2si	edx, xmm0
	vmovss	DWORD PTR 44[rsp], xmm2
	fld	DWORD PTR 44[rsp]
	cmp	eax, edx
	mov	ebx, edx
	cmovle	ebx, eax
.L122:
	fprem
	fnstsw	ax
	test	ah, 4
	jne	.L122
	fstp	st(1)
	vmovss	xmm9, DWORD PTR .LC3[rip]
	fstp	DWORD PTR 44[rsp]
	mov	eax, DWORD PTR 212[rsi]
	vmovss	xmm6, DWORD PTR 44[rsp]
	vminss	xmm6, xmm6, xmm9
	cmp	eax, 2
	je	.L123
	jg	.L124
	test	eax, eax
	je	.L125
	cmp	eax, 1
	jne	.L127
	vsubss	xmm0, xmm6, xmm9
	vmulss	xmm0, xmm0, xmm6
	vdivss	xmm0, xmm9, xmm0
	vaddss	xmm0, xmm0, DWORD PTR .LC4[rip]
.L144:
	call	expf
	vmovss	xmm1, xmm0, xmm0
	vxorps	xmm0, xmm0, xmm0
	vcomiss	xmm6, xmm0
	seta	dl
	xor	eax, eax
	vcomiss	xmm9, xmm6
	seta	al
	and	eax, edx
	vcvtsi2ss	xmm0, xmm7, eax
	vmulss	xmm0, xmm0, xmm1
.L129:
	mov	rdx, QWORD PTR 192[rsi]
	movsx	rbx, ebx
	vcmpltss	xmm8, xmm8, xmm10
	vxorps	xmm1, xmm1, xmm1
	vmovups	xmm6, XMMWORD PTR 48[rsp]
	vmovups	xmm7, XMMWORD PTR 64[rsp]
	vmulss	xmm0, xmm0, DWORD PTR [rdx+rbx*4]
	vmovups	xmm10, XMMWORD PTR 112[rsp]
	vblendvps	xmm1, xmm1, xmm9, xmm8
	vmovups	xmm8, XMMWORD PTR 80[rsp]
	vmovups	xmm9, XMMWORD PTR 96[rsp]
	vmulss	xmm0, xmm0, xmm1
	add	rsp, 136
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L124:
	cmp	eax, 3
	jne	.L127
	vsubss	xmm0, xmm6, DWORD PTR .LC5[rip]
	vmulss	xmm0, xmm0, DWORD PTR .LC6[rip]
	vmulss	xmm0, xmm0, xmm0
	vmulss	xmm0, xmm0, DWORD PTR .LC7[rip]
	jmp	.L144
	.p2align 4,,10
	.p2align 3
.L123:
	vcomiss	xmm6, DWORD PTR .LC14[rip]
	jb	.L142
	vmovss	xmm0, DWORD PTR .LC15[rip]
	vcomiss	xmm0, xmm6
	jnb	.L136
.L142:
	vxorps	xmm0, xmm0, xmm0
	jmp	.L129
	.p2align 4,,10
	.p2align 3
.L125:
	vmulss	xmm0, xmm6, DWORD PTR .LC4[rip]
	vsubss	xmm1, xmm9, xmm6
	vmulss	xmm1, xmm1, xmm0
	vxorps	xmm0, xmm0, xmm0
	vcomiss	xmm6, xmm0
	seta	dl
	xor	eax, eax
	vcvtss2sd	xmm1, xmm1, xmm1
	vmulsd	xmm1, xmm1, xmm1
	vcomiss	xmm9, xmm6
	seta	al
	and	eax, edx
	vmulsd	xmm1, xmm1, xmm1
	vcvtsi2ss	xmm0, xmm7, eax
	vcvtsd2ss	xmm1, xmm1, xmm1
	vmulss	xmm0, xmm0, xmm1
	jmp	.L129
.L136:
	vmovss	xmm0, xmm9, xmm9
	jmp	.L129
.L127:
	mov	ecx, 16
	call	__cxa_allocate_exception
	lea	rdx, .LC8[rip]
	mov	rcx, rax
	mov	rbx, rax
.LEHB4:
	call	_ZNSt13runtime_errorC1EPKc
.LEHE4:
	lea	r8, _ZNSt13runtime_errorD1Ev[rip]
	lea	rdx, _ZTISt13runtime_error[rip]
	mov	rcx, rbx
.LEHB5:
	call	__cxa_throw
.L138:
	mov	rsi, rax
	mov	rcx, rbx
	vzeroupper
	call	__cxa_free_exception
	mov	rcx, rsi
	call	_Unwind_Resume
	nop
.LEHE5:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6308:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6308-.LLSDACSB6308
.LLSDACSB6308:
	.uleb128 .LEHB4-.LFB6308
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L138-.LFB6308
	.uleb128 0
	.uleb128 .LEHB5-.LFB6308
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE6308:
	.text
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZNK5Lenia6Animal13NormalizationEv
	.def	_ZNK5Lenia6Animal13NormalizationEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK5Lenia6Animal13NormalizationEv
_ZNK5Lenia6Animal13NormalizationEv:
.LFB6309:
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
	sub	rsp, 144
	.seh_stackalloc	144
	vmovups	XMMWORD PTR 48[rsp], xmm6
	.seh_savexmm	xmm6, 48
	vmovups	XMMWORD PTR 64[rsp], xmm7
	.seh_savexmm	xmm7, 64
	vmovups	XMMWORD PTR 80[rsp], xmm8
	.seh_savexmm	xmm8, 80
	vmovups	XMMWORD PTR 96[rsp], xmm9
	.seh_savexmm	xmm9, 96
	vmovups	XMMWORD PTR 112[rsp], xmm10
	.seh_savexmm	xmm10, 112
	vmovups	XMMWORD PTR 128[rsp], xmm11
	.seh_savexmm	xmm11, 128
	.seh_endprologue
	vxorps	xmm7, xmm7, xmm7
	mov	rax, QWORD PTR 176[rcx]
	mov	esi, eax
	mov	r12d, eax
	neg	esi
	mov	r14, rcx
	mov	ebp, esi
	cmp	ax, si
	jl	.L147
	vmovss	xmm8, DWORD PTR .LC3[rip]
	vxorps	xmm10, xmm10, xmm10
	vmovss	xmm9, DWORD PTR .LC14[rip]
	.p2align 4
	.p2align 3
.L146:
	movsx	r13d, bp
	mov	ebx, esi
	vxorps	xmm11, xmm11, xmm11
	imul	r13d, r13d
	.p2align 4
	.p2align 3
.L153:
	mov	eax, ebp
	or	ax, bx
	je	.L148
	movsx	eax, bx
	imul	eax, eax
	add	eax, r13d
	vcvtsi2sd	xmm6, xmm10, eax
	vsqrtsd	xmm6, xmm6, xmm6
	vcvtsd2ss	xmm6, xmm6, xmm6
	vcvtss2sd	xmm0, xmm6, xmm6
	vcomisd	xmm0, QWORD PTR .LC17[rip]
	jbe	.L156
	vcomisd	xmm0, QWORD PTR .LC18[rip]
	jb	.L148
.L156:
	vcvtusi2ss	xmm0, xmm10, QWORD PTR 176[r14]
	vcomiss	xmm6, xmm0
	ja	.L148
	vdivss	xmm0, xmm6, xmm0
	movzx	edi, BYTE PTR 200[r14]
	fld1
	vcvtsi2ss	xmm1, xmm10, edi
	sub	edi, 1
	vmulss	xmm3, xmm1, xmm0
	vrndscaless	xmm0, xmm3, xmm3, 9
	vcvttss2si	eax, xmm0
	vmovss	DWORD PTR 44[rsp], xmm3
	fld	DWORD PTR 44[rsp]
	cmp	edi, eax
	cmovg	edi, eax
.L150:
	fprem
	fnstsw	ax
	test	ah, 4
	jne	.L150
	fstp	st(1)
	fstp	DWORD PTR 44[rsp]
	vmovss	xmm2, xmm9, xmm9
	mov	rcx, r14
	movsx	rdi, edi
	vmovss	xmm1, DWORD PTR 44[rsp]
	vminss	xmm1, xmm1, xmm8
	call	_ZNK5Lenia6Animal15ApplyKernelCoreEff
	mov	rax, QWORD PTR 192[r14]
	vcvtusi2ss	xmm1, xmm10, QWORD PTR 176[r14]
	vmulss	xmm0, xmm0, DWORD PTR [rax+rdi*4]
	vcmpltss	xmm6, xmm6, xmm1
	vblendvps	xmm6, xmm11, xmm8, xmm6
	vfmadd231ss	xmm7, xmm6, xmm0
.L148:
	add	ebx, 1
	cmp	r12w, bx
	jge	.L153
	add	ebp, 1
	cmp	r12w, bp
	jge	.L146
.L147:
	vmovups	xmm6, XMMWORD PTR 48[rsp]
	vmovups	xmm8, XMMWORD PTR 80[rsp]
	vmovups	xmm9, XMMWORD PTR 96[rsp]
	vmulss	xmm0, xmm7, DWORD PTR 188[r14]
	vmovups	xmm7, XMMWORD PTR 64[rsp]
	vmovups	xmm10, XMMWORD PTR 112[rsp]
	vmovups	xmm11, XMMWORD PTR 128[rsp]
	add	rsp, 144
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN5Lenia6Animal13ComputeKernelEv
	.def	_ZN5Lenia6Animal13ComputeKernelEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Lenia6Animal13ComputeKernelEv
_ZN5Lenia6Animal13ComputeKernelEv:
.LFB6310:
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
	sub	rsp, 232
	.seh_stackalloc	232
	vmovups	XMMWORD PTR 64[rsp], xmm6
	.seh_savexmm	xmm6, 64
	vmovups	XMMWORD PTR 80[rsp], xmm7
	.seh_savexmm	xmm7, 80
	vmovups	XMMWORD PTR 96[rsp], xmm8
	.seh_savexmm	xmm8, 96
	vmovups	XMMWORD PTR 112[rsp], xmm9
	.seh_savexmm	xmm9, 112
	vmovups	XMMWORD PTR 128[rsp], xmm10
	.seh_savexmm	xmm10, 128
	vmovups	XMMWORD PTR 144[rsp], xmm11
	.seh_savexmm	xmm11, 144
	vmovups	XMMWORD PTR 160[rsp], xmm12
	.seh_savexmm	xmm12, 160
	vmovups	XMMWORD PTR 176[rsp], xmm13
	.seh_savexmm	xmm13, 176
	vmovups	XMMWORD PTR 192[rsp], xmm14
	.seh_savexmm	xmm14, 192
	vmovups	XMMWORD PTR 208[rsp], xmm15
	.seh_savexmm	xmm15, 208
	.seh_endprologue
	mov	rbp, rcx
.LEHB6:
	call	_ZNK5Lenia6Animal13NormalizationEv
.LEHE6:
	mov	r13, QWORD PTR 176[rbp]
	test	r13, r13
	je	.L214
	vxorps	xmm13, xmm13, xmm13
	mov	r14d, DWORD PTR 212[rbp]
	vmovss	xmm14, DWORD PTR .LC3[rip]
	vcvtusi2ss	xmm15, xmm13, r13
	vdivss	xmm9, xmm14, xmm0
	vdivss	xmm11, xmm14, xmm15
	test	r14d, r14d
	je	.L215
	cmp	r14d, 1
	je	.L171
	vxorpd	xmm6, xmm6, xmm6
	xor	r15d, r15d
	vxorps	xmm8, xmm8, xmm8
	mov	QWORD PTR 40[rsp], 0
	vmovss	xmm10, DWORD PTR .LC5[rip]
	.p2align 4
	.p2align 3
.L184:
	mov	rax, QWORD PTR 40[rsp]
	mov	rsi, r15
	xor	edi, edi
	vxorps	xmm7, xmm7, xmm7
	imul	rsi, r15
	lea	r12, 0[0+rax*4]
	jmp	.L182
	.p2align 4,,10
	.p2align 3
.L173:
	vcomiss	xmm12, DWORD PTR .LC14[rip]
	jb	.L212
	vmovss	xmm5, DWORD PTR .LC15[rip]
	vcomiss	xmm5, xmm12
	jnb	.L200
.L212:
	vxorps	xmm0, xmm0, xmm0
.L178:
	vcmpltss	xmm6, xmm6, xmm15
	movsx	rbx, ebx
	add	rdi, 1
	mov	r8, QWORD PTR 192[rbp]
	mov	rcx, QWORD PTR 264[rbp]
	vmulss	xmm1, xmm9, DWORD PTR [r8+rbx*4]
	vblendvps	xmm6, xmm8, xmm14, xmm6
	vmulss	xmm0, xmm0, xmm6
	vmulss	xmm1, xmm1, xmm0
	vmovss	DWORD PTR [rcx+r12], xmm1
	add	r12, 4
	cmp	r13, rdi
	je	.L181
	mov	rax, rdi
	imul	rax, rdi
	add	rax, rsi
	vcvtusi2sd	xmm6, xmm13, rax
	vsqrtsd	xmm6, xmm6, xmm6
.L182:
	movzx	eax, BYTE PTR 200[rbp]
	vcvtsd2ss	xmm6, xmm6, xmm6
	fld1
	vcvtsi2ss	xmm0, xmm13, eax
	sub	eax, 1
	vmulss	xmm0, xmm0, xmm11
	vmulss	xmm3, xmm0, xmm6
	vrndscaless	xmm0, xmm3, xmm3, 9
	vcvttss2si	ecx, xmm0
	vmovss	DWORD PTR 36[rsp], xmm3
	fld	DWORD PTR 36[rsp]
	cmp	eax, ecx
	mov	ebx, ecx
	cmovle	ebx, eax
.L172:
	fprem
	fnstsw	ax
	test	ah, 4
	jne	.L172
	fstp	st(1)
	fstp	DWORD PTR 36[rsp]
	vmovss	xmm12, DWORD PTR 36[rsp]
	vminss	xmm12, xmm12, xmm14
	cmp	r14d, 2
	je	.L173
	cmp	r14d, 3
	jne	.L216
	vsubss	xmm0, xmm12, xmm10
	vmulss	xmm0, xmm0, DWORD PTR .LC6[rip]
	vmulss	xmm0, xmm0, xmm0
	vmulss	xmm0, xmm0, DWORD PTR .LC7[rip]
	call	expf
	vcomiss	xmm12, xmm7
	vmovss	xmm1, xmm0, xmm0
	seta	cl
	xor	eax, eax
	vcomiss	xmm14, xmm12
	seta	al
	and	eax, ecx
	vcvtsi2ss	xmm0, xmm13, eax
	vmulss	xmm0, xmm0, xmm1
	jmp	.L178
	.p2align 4,,10
	.p2align 3
.L181:
	add	r15, 1
	add	QWORD PTR 40[rsp], r13
	cmp	r13, r15
	je	.L214
	mov	rax, r15
	imul	rax, r15
	vcvtusi2sd	xmm6, xmm13, rax
	vsqrtsd	xmm6, xmm6, xmm6
	jmp	.L184
	.p2align 4,,10
	.p2align 3
.L214:
	vmovups	xmm6, XMMWORD PTR 64[rsp]
	vmovups	xmm7, XMMWORD PTR 80[rsp]
	vmovups	xmm8, XMMWORD PTR 96[rsp]
	vmovups	xmm9, XMMWORD PTR 112[rsp]
	vmovups	xmm10, XMMWORD PTR 128[rsp]
	vmovups	xmm11, XMMWORD PTR 144[rsp]
	vmovups	xmm12, XMMWORD PTR 160[rsp]
	vmovups	xmm13, XMMWORD PTR 176[rsp]
	vmovups	xmm14, XMMWORD PTR 192[rsp]
	vmovups	xmm15, XMMWORD PTR 208[rsp]
	add	rsp, 232
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
.L215:
	mov	rbx, QWORD PTR 192[rbp]
	mov	r11, QWORD PTR 264[rbp]
	xor	r9d, r9d
	xor	r8d, r8d
	vmovss	xmm5, DWORD PTR .LC4[rip]
	vxorpd	xmm0, xmm0, xmm0
	vxorps	xmm4, xmm4, xmm4
	.p2align 4
	.p2align 3
.L170:
	mov	rsi, r8
	lea	r10, 0[0+r9*4]
	xor	edx, edx
	imul	rsi, r8
	jmp	.L198
	.p2align 4,,10
	.p2align 3
.L191:
	movzx	ecx, BYTE PTR 200[rbp]
	fld1
	vcvtsi2ss	xmm1, xmm13, ecx
	vmulss	xmm1, xmm1, xmm11
	vmulss	xmm2, xmm1, xmm0
	vmovss	DWORD PTR 36[rsp], xmm2
	fld	DWORD PTR 36[rsp]
.L193:
	fprem
	fnstsw	ax
	test	ah, 4
	jne	.L193
	fstp	st(1)
	vrndscaless	xmm0, xmm0, DWORD PTR 36[rsp], 9
	fstp	DWORD PTR 40[rsp]
	sub	ecx, 1
	vmovss	xmm1, DWORD PTR 40[rsp]
	vcvttss2si	eax, xmm0
	vminss	xmm1, xmm1, xmm14
	vmulss	xmm6, xmm1, xmm5
	vsubss	xmm0, xmm14, xmm1
	cmp	ecx, eax
	cmovg	ecx, eax
	vcomiss	xmm1, xmm4
	movsx	rcx, ecx
	seta	dil
	xor	eax, eax
	vmulss	xmm0, xmm0, xmm6
	vcomiss	xmm14, xmm1
	seta	al
	add	rdx, 1
	and	eax, edi
	vcvtss2sd	xmm0, xmm0, xmm0
	vmulsd	xmm0, xmm0, xmm0
	vcvtsi2ss	xmm1, xmm13, eax
	vmulss	xmm1, xmm1, DWORD PTR [rbx+rcx*4]
	vmulsd	xmm0, xmm0, xmm0
	vcvtsd2ss	xmm0, xmm0, xmm0
	vmulss	xmm0, xmm0, xmm9
	vmulss	xmm1, xmm1, xmm0
	vmovss	DWORD PTR [r11+r10], xmm1
	add	r10, 4
	cmp	r13, rdx
	je	.L195
.L194:
	mov	rax, rdx
	imul	rax, rdx
	add	rax, rsi
	vcvtusi2sd	xmm0, xmm13, rax
	vsqrtsd	xmm0, xmm0, xmm0
.L198:
	vcvtsd2ss	xmm0, xmm0, xmm0
	vcomiss	xmm15, xmm0
	ja	.L191
	add	rdx, 1
	mov	DWORD PTR [r11+r10], 0x00000000
	add	r10, 4
	cmp	rdx, r13
	jne	.L194
.L195:
	add	r8, 1
	add	r9, r13
	cmp	r8, r13
	je	.L214
	mov	rax, r8
	imul	rax, r8
	vcvtusi2sd	xmm0, xmm13, rax
	vsqrtsd	xmm0, xmm0, xmm0
	jmp	.L170
.L171:
	mov	QWORD PTR 56[rsp], 0
	mov	rdi, QWORD PTR 264[rbp]
	vxorpd	xmm0, xmm0, xmm0
	vxorps	xmm6, xmm6, xmm6
	mov	QWORD PTR 48[rsp], 0
	vmovq	xmm10, QWORD PTR 192[rbp]
	vmovss	xmm7, DWORD PTR .LC4[rip]
	.p2align 4
	.p2align 3
.L190:
	mov	rax, QWORD PTR 48[rsp]
	xor	r12d, r12d
	mov	rsi, rax
	imul	rsi, rax
	mov	rax, QWORD PTR 56[rsp]
	lea	r15, 0[0+rax*4]
	jmp	.L189
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L217:
	add	r12, 1
	mov	DWORD PTR [rdi+r15], 0x00000000
	add	r15, 4
	cmp	r13, r12
	je	.L187
.L186:
	mov	rax, r12
	imul	rax, r12
	add	rax, rsi
	vcvtusi2sd	xmm0, xmm13, rax
	vsqrtsd	xmm0, xmm0, xmm0
.L189:
	vcvtsd2ss	xmm0, xmm0, xmm0
	vcomiss	xmm15, xmm0
	jbe	.L217
	movzx	r14d, BYTE PTR 200[rbp]
	fld1
	vcvtsi2ss	xmm1, xmm13, r14d
	vmulss	xmm1, xmm1, xmm11
	vmulss	xmm4, xmm1, xmm0
	vmovss	DWORD PTR 36[rsp], xmm4
	fld	DWORD PTR 36[rsp]
.L188:
	fprem
	fnstsw	ax
	test	ah, 4
	jne	.L188
	fstp	st(1)
	fstp	DWORD PTR 40[rsp]
	vmovss	xmm8, DWORD PTR 40[rsp]
	sub	r14d, 1
	vrndscaless	xmm0, xmm0, DWORD PTR 36[rsp], 9
	vcvttss2si	ebx, xmm0
	vminss	xmm8, xmm8, xmm14
	vsubss	xmm0, xmm8, xmm14
	vmulss	xmm0, xmm0, xmm8
	vdivss	xmm0, xmm14, xmm0
	vaddss	xmm0, xmm0, xmm7
	call	expf
	cmp	r14d, ebx
	cmovg	r14d, ebx
	vcomiss	xmm14, xmm8
	vmovss	xmm1, xmm0, xmm0
	vmulss	xmm1, xmm9, xmm1
	movsx	r14, r14d
	seta	r8b
	xor	eax, eax
	vcomiss	xmm8, xmm6
	seta	al
	add	r12, 1
	and	eax, r8d
	vcvtsi2ss	xmm0, xmm13, eax
	vmovq	rax, xmm10
	vmulss	xmm0, xmm0, DWORD PTR [rax+r14*4]
	vmulss	xmm0, xmm0, xmm1
	vmovss	DWORD PTR [rdi+r15], xmm0
	add	r15, 4
	cmp	r12, r13
	jne	.L186
.L187:
	add	QWORD PTR 48[rsp], 1
	mov	rax, QWORD PTR 48[rsp]
	add	QWORD PTR 56[rsp], r13
	cmp	rax, r13
	je	.L214
	imul	rax, rax
	vcvtusi2sd	xmm0, xmm13, rax
	vsqrtsd	xmm0, xmm0, xmm0
	jmp	.L190
.L200:
	vmovss	xmm0, xmm14, xmm14
	jmp	.L178
.L216:
	mov	ecx, 16
	call	__cxa_allocate_exception
	lea	rdx, .LC8[rip]
	mov	rcx, rax
	mov	rbx, rax
.LEHB7:
	call	_ZNSt13runtime_errorC1EPKc
.LEHE7:
	lea	r8, _ZNSt13runtime_errorD1Ev[rip]
	lea	rdx, _ZTISt13runtime_error[rip]
	mov	rcx, rbx
.LEHB8:
	call	__cxa_throw
.L202:
	mov	rsi, rax
	mov	rcx, rbx
	vzeroupper
	call	__cxa_free_exception
	mov	rcx, rsi
	call	_Unwind_Resume
	nop
.LEHE8:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6310:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6310-.LLSDACSB6310
.LLSDACSB6310:
	.uleb128 .LEHB6-.LFB6310
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB6310
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L202-.LFB6310
	.uleb128 0
	.uleb128 .LEHB8-.LFB6310
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSE6310:
	.text
	.seh_endproc
	.section .rdata,"dr"
.LC20:
	.ascii "vector::_M_default_append\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN5Lenia6Animal4BindEv
	.def	_ZN5Lenia6Animal4BindEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Lenia6Animal4BindEv
_ZN5Lenia6Animal4BindEv:
.LFB6267:
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
	sub	rsp, 64
	.seh_stackalloc	64
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.glad_glGenBuffers[rip]
	vpxor	xmm0, xmm0, xmm0
	mov	rsi, QWORD PTR 176[rcx]
	imul	rsi, rsi
	mov	rbx, rcx
	lea	rdx, 32[rsp]
	mov	ecx, 1
	mov	QWORD PTR 56[rsp], 0
	vmovdqu	XMMWORD PTR 40[rsp], xmm0
.LEHB9:
	call	[QWORD PTR [rax]]
	mov	rcx, QWORD PTR 40[rsp]
	vpxor	xmm0, xmm0, xmm0
	mov	rdx, QWORD PTR 56[rsp]
	mov	DWORD PTR 36[rsp], 2
	mov	QWORD PTR 56[rsp], 0
	mov	eax, 2
	vmovdqu	XMMWORD PTR 40[rsp], xmm0
	test	rcx, rcx
	je	.L219
	sub	rdx, rcx
	call	_ZdlPvy
	movzx	eax, BYTE PTR 36[rsp]
.L219:
	mov	edx, eax
	mov	rax, QWORD PTR .refptr.glad_glBindBufferBase[rip]
	mov	r8d, DWORD PTR 32[rsp]
	mov	ecx, 37074
	call	[QWORD PTR [rax]]
.LEHE9:
	mov	rax, QWORD PTR 48[rsp]
	mov	rdi, QWORD PTR 40[rsp]
	mov	rbp, QWORD PTR 56[rsp]
	mov	r12, rax
	sub	r12, rdi
	mov	rdx, r12
	sar	rdx, 2
	cmp	rdx, rsi
	jb	.L263
	lea	rcx, [rdi+rsi*4]
	cmp	rsi, rdx
	cmovb	rax, rcx
.L226:
	mov	rdx, QWORD PTR 32[rsp]
	mov	rcx, QWORD PTR 264[rbx]
	vpxor	xmm0, xmm0, xmm0
	mov	QWORD PTR 264[rbx], rdi
	mov	QWORD PTR 272[rbx], rax
	mov	QWORD PTR 256[rbx], rdx
	mov	rdx, QWORD PTR 280[rbx]
	mov	QWORD PTR 56[rsp], 0
	mov	QWORD PTR 280[rbx], rbp
	vmovdqu	XMMWORD PTR 40[rsp], xmm0
	test	rcx, rcx
	je	.L235
	sub	rdx, rcx
	call	_ZdlPvy
	mov	rcx, QWORD PTR 40[rsp]
	mov	rdx, QWORD PTR 56[rsp]
	sub	rdx, rcx
	test	rcx, rcx
	je	.L235
	call	_ZdlPvy
.L235:
	mov	rcx, rbx
.LEHB10:
	call	_ZN5Lenia6Animal13ComputeKernelEv
	mov	rax, QWORD PTR .refptr.glad_glNamedBufferData[rip]
	mov	r8, QWORD PTR 264[rbx]
	mov	r9d, 35050
	mov	rdx, QWORD PTR 272[rbx]
	mov	ecx, DWORD PTR 256[rbx]
	mov	rax, QWORD PTR [rax]
	sub	rdx, r8
	add	rsp, 64
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	rex.W jmp	rax
.LEHE10:
	.p2align 4,,10
	.p2align 3
.L263:
	mov	rcx, rbp
	mov	r13, rsi
	sub	rcx, rax
	sub	r13, rdx
	sar	rcx, 2
	cmp	rcx, r13
	jnb	.L264
	movabs	rax, 2305843009213693951
	sub	rax, rdx
	cmp	rax, r13
	jb	.L265
	movabs	rax, 2305843009213693951
	cmp	rdx, r13
	mov	rbp, r13
	cmovnb	rbp, rdx
	add	rbp, rdx
	cmp	rbp, rax
	cmova	rbp, rax
	sal	rbp, 2
	mov	rcx, rbp
.LEHB11:
	call	_Znwy
	mov	r14, rax
	lea	rax, [rax+r12]
	mov	DWORD PTR [rax], 0x00000000
	sub	r13, 1
	je	.L231
	lea	rcx, 4[rax]
	lea	r8, 0[0+r13*4]
	xor	edx, edx
	call	memset
.L231:
	mov	r13, QWORD PTR 56[rsp]
	test	r12, r12
	jne	.L266
	test	rdi, rdi
	jne	.L232
.L233:
	lea	rax, [r14+rsi*4]
	add	rbp, r14
	mov	rdi, r14
	jmp	.L226
	.p2align 4,,10
	.p2align 3
.L264:
	mov	DWORD PTR [rax], 0x00000000
	lea	rcx, 4[rax]
	sub	r13, 1
	je	.L240
	lea	rsi, [rcx+r13*4]
	mov	rdx, rsi
	sub	rdx, rax
	lea	r8, -4[rdx]
	xor	edx, edx
	call	memset
	mov	rax, rsi
	jmp	.L226
	.p2align 4,,10
	.p2align 3
.L266:
	mov	r8, r12
	mov	rdx, rdi
	mov	rcx, r14
	call	memcpy
.L232:
	mov	rdx, r13
	mov	rcx, rdi
	sub	rdx, rdi
	call	_ZdlPvy
	jmp	.L233
	.p2align 4,,10
	.p2align 3
.L240:
	mov	rax, rcx
	jmp	.L226
.L265:
	lea	rcx, .LC20[rip]
	call	_ZSt20__throw_length_errorPKc
.LEHE11:
.L242:
.L262:
	mov	rcx, QWORD PTR 40[rsp]
	mov	rdx, QWORD PTR 56[rsp]
	mov	rbx, rax
	sub	rdx, rcx
	test	rcx, rcx
	je	.L259
	vzeroupper
	call	_ZdlPvy
.L237:
	mov	rcx, rbx
.LEHB12:
	call	_Unwind_Resume
.LEHE12:
.L241:
	jmp	.L262
.L259:
	vzeroupper
	jmp	.L237
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6267:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6267-.LLSDACSB6267
.LLSDACSB6267:
	.uleb128 .LEHB9-.LFB6267
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L242-.LFB6267
	.uleb128 0
	.uleb128 .LEHB10-.LFB6267
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB11-.LFB6267
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L241-.LFB6267
	.uleb128 0
	.uleb128 .LEHB12-.LFB6267
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
.LLSDACSE6267:
	.text
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv:
.LFB6950:
	.seh_endprologue
	mov	rax, QWORD PTR [rcx]
	lea	rdx, 16[rcx]
	cmp	rax, rdx
	je	.L269
	mov	rdx, QWORD PTR 16[rcx]
	mov	rcx, rax
	add	rdx, 1
	jmp	_ZdlPvy
	.p2align 4,,10
	.p2align 3
.L269:
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC22:
	.ascii "basic_string::_M_create\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN5Lenia6AnimalC2ENS_8TaxonomyEjfPKfhffNS_10KernelCoreENS_14GrowthFunctionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.def	_ZN5Lenia6AnimalC2ENS_8TaxonomyEjfPKfhffNS_10KernelCoreENS_14GrowthFunctionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Lenia6AnimalC2ENS_8TaxonomyEjfPKfhffNS_10KernelCoreENS_14GrowthFunctionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
_ZN5Lenia6AnimalC2ENS_8TaxonomyEjfPKfhffNS_10KernelCoreENS_14GrowthFunctionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
.LFB6262:
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
	sub	rsp, 56
	.seh_stackalloc	56
	vmovups	XMMWORD PTR 32[rsp], xmm6
	.seh_savexmm	xmm6, 32
	.seh_endprologue
	mov	rdi, QWORD PTR 8[rdx]
	mov	r13d, DWORD PTR 168[rsp]
	mov	r12, QWORD PTR 208[rsp]
	mov	rbx, rcx
	lea	r14, 16[rcx]
	lea	rcx, 32[rcx]
	mov	rsi, rdx
	mov	QWORD PTR 16[rbx], rcx
	mov	ebp, r8d
	mov	r15, QWORD PTR [rdx]
	vmovss	xmm6, xmm3, xmm3
	cmp	rdi, 15
	ja	.L345
	cmp	rdi, 1
	je	.L346
	test	rdi, rdi
	jne	.L274
.L276:
	mov	QWORD PTR 24[rbx], rdi
	mov	BYTE PTR [rcx+rdi], 0
	mov	rdi, QWORD PTR 40[rsi]
	lea	rcx, 64[rbx]
	mov	QWORD PTR 48[rbx], rcx
	mov	r15, QWORD PTR 32[rsi]
	cmp	rdi, 15
	ja	.L347
	cmp	rdi, 1
	jne	.L282
	movzx	edx, BYTE PTR [r15]
	mov	BYTE PTR 64[rbx], dl
.L283:
	mov	QWORD PTR 56[rbx], rdi
	mov	BYTE PTR [rcx+rdi], 0
	mov	rdi, QWORD PTR 72[rsi]
	lea	rcx, 96[rbx]
	mov	QWORD PTR 80[rbx], rcx
	mov	r15, QWORD PTR 64[rsi]
	cmp	rdi, 15
	ja	.L348
	cmp	rdi, 1
	jne	.L289
	movzx	edx, BYTE PTR [r15]
	mov	BYTE PTR 96[rbx], dl
.L290:
	mov	QWORD PTR 88[rbx], rdi
	mov	BYTE PTR [rcx+rdi], 0
	mov	rdi, QWORD PTR 104[rsi]
	lea	rcx, 128[rbx]
	mov	QWORD PTR 112[rbx], rcx
	mov	r15, QWORD PTR 96[rsi]
	cmp	rdi, 15
	ja	.L349
	cmp	rdi, 1
	jne	.L296
	movzx	edx, BYTE PTR [r15]
	mov	BYTE PTR 128[rbx], dl
.L297:
	mov	QWORD PTR 120[rbx], rdi
	mov	BYTE PTR [rcx+rdi], 0
	lea	rcx, 160[rbx]
	mov	QWORD PTR 144[rbx], rcx
	mov	rdi, QWORD PTR 128[rsi]
	mov	rsi, QWORD PTR 136[rsi]
	cmp	rsi, 15
	ja	.L350
	cmp	rsi, 1
	jne	.L303
	movzx	edx, BYTE PTR [rdi]
	mov	BYTE PTR 160[rbx], dl
.L304:
	mov	eax, ebp
	mov	QWORD PTR 152[rbx], rsi
	vmovss	xmm1, DWORD PTR 176[rsp]
	vinsertps	xmm0, xmm1, DWORD PTR 184[rsp], 0x10
	mov	BYTE PTR [rcx+rsi], 0
	lea	rcx, 240[rbx]
	mov	QWORD PTR 176[rbx], rax
	mov	rax, QWORD PTR 160[rsp]
	mov	BYTE PTR 200[rbx], r13b
	mov	rsi, QWORD PTR 8[r12]
	mov	QWORD PTR 192[rbx], rax
	mov	eax, DWORD PTR 192[rsp]
	mov	QWORD PTR 224[rbx], rcx
	mov	rdi, QWORD PTR [r12]
	mov	DWORD PTR 212[rbx], eax
	mov	eax, DWORD PTR 200[rsp]
	vmovss	DWORD PTR 184[rbx], xmm6
	mov	DWORD PTR 216[rbx], eax
	vmovlps	QWORD PTR 204[rbx], xmm0
	cmp	rsi, 15
	ja	.L351
	cmp	rsi, 1
	jne	.L315
	movzx	edx, BYTE PTR [rdi]
	mov	BYTE PTR 240[rbx], dl
.L316:
	vpxor	xmm0, xmm0, xmm0
	mov	QWORD PTR 232[rbx], rsi
	mov	BYTE PTR [rcx+rsi], 0
	mov	QWORD PTR 280[rbx], 0
	mov	DWORD PTR 188[rbx], 0x3f800000
	vmovdqu	XMMWORD PTR 264[rbx], xmm0
	vmovdqu	XMMWORD PTR [rbx], xmm0
	vmovups	xmm6, XMMWORD PTR 32[rsp]
	add	rsp, 56
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
.L346:
	movzx	edx, BYTE PTR [r15]
	mov	BYTE PTR 32[rbx], dl
	jmp	.L276
	.p2align 4,,10
	.p2align 3
.L345:
	test	rdi, rdi
	js	.L352
	mov	rcx, rdi
	add	rcx, 1
	js	.L353
.LEHB13:
	call	_Znwy
.LEHE13:
	mov	QWORD PTR 32[rbx], rdi
	mov	QWORD PTR 16[rbx], rax
	mov	rcx, rax
.L274:
	mov	r8, rdi
	mov	rdx, r15
	call	memcpy
	mov	rcx, QWORD PTR 16[rbx]
	jmp	.L276
	.p2align 4,,10
	.p2align 3
.L282:
	test	rdi, rdi
	je	.L283
	mov	r8, rdi
	mov	rdx, r15
	call	memcpy
	mov	rcx, QWORD PTR 48[rbx]
	jmp	.L283
	.p2align 4,,10
	.p2align 3
.L347:
	test	rdi, rdi
	js	.L354
	mov	rcx, rdi
	add	rcx, 1
	js	.L355
.LEHB14:
	call	_Znwy
.LEHE14:
	mov	QWORD PTR 48[rbx], rax
	mov	rcx, rax
	mov	r8, rdi
	mov	rdx, r15
	mov	QWORD PTR 64[rbx], rdi
	call	memcpy
	mov	rcx, QWORD PTR 48[rbx]
	jmp	.L283
	.p2align 4,,10
	.p2align 3
.L289:
	test	rdi, rdi
	je	.L290
	mov	r8, rdi
	mov	rdx, r15
	call	memcpy
	mov	rcx, QWORD PTR 80[rbx]
	jmp	.L290
	.p2align 4,,10
	.p2align 3
.L348:
	test	rdi, rdi
	js	.L356
	mov	rcx, rdi
	add	rcx, 1
	js	.L357
.LEHB15:
	call	_Znwy
.LEHE15:
	mov	QWORD PTR 80[rbx], rax
	mov	rcx, rax
	mov	r8, rdi
	mov	rdx, r15
	mov	QWORD PTR 96[rbx], rdi
	call	memcpy
	mov	rcx, QWORD PTR 80[rbx]
	jmp	.L290
	.p2align 4,,10
	.p2align 3
.L296:
	test	rdi, rdi
	je	.L297
	mov	r8, rdi
	mov	rdx, r15
	call	memcpy
	mov	rcx, QWORD PTR 112[rbx]
	jmp	.L297
	.p2align 4,,10
	.p2align 3
.L349:
	test	rdi, rdi
	js	.L358
	mov	rcx, rdi
	add	rcx, 1
	js	.L359
.LEHB16:
	call	_Znwy
.LEHE16:
	mov	QWORD PTR 112[rbx], rax
	mov	rcx, rax
	mov	r8, rdi
	mov	rdx, r15
	mov	QWORD PTR 128[rbx], rdi
	call	memcpy
	mov	rcx, QWORD PTR 112[rbx]
	jmp	.L297
	.p2align 4,,10
	.p2align 3
.L303:
	test	rsi, rsi
	je	.L304
	.p2align 4
	.p2align 3
.L302:
	mov	r8, rsi
	mov	rdx, rdi
	call	memcpy
	mov	rcx, QWORD PTR 144[rbx]
	jmp	.L304
	.p2align 4,,10
	.p2align 3
.L350:
	test	rsi, rsi
	js	.L360
	mov	rcx, rsi
	add	rcx, 1
	js	.L361
.LEHB17:
	call	_Znwy
.LEHE17:
	mov	QWORD PTR 144[rbx], rax
	mov	rcx, rax
	mov	QWORD PTR 160[rbx], rsi
	jmp	.L302
	.p2align 4,,10
	.p2align 3
.L315:
	test	rsi, rsi
	je	.L316
	.p2align 4
	.p2align 3
.L314:
	mov	r8, rsi
	mov	rdx, rdi
	call	memcpy
	mov	rcx, QWORD PTR 224[rbx]
	jmp	.L316
	.p2align 4,,10
	.p2align 3
.L351:
	test	rsi, rsi
	js	.L362
	mov	rcx, rsi
	add	rcx, 1
	js	.L363
.LEHB18:
	call	_Znwy
.LEHE18:
	mov	QWORD PTR 224[rbx], rax
	mov	rcx, rax
	mov	QWORD PTR 240[rbx], rsi
	jmp	.L314
	.p2align 4,,10
	.p2align 3
.L353:
.LEHB19:
	call	_ZSt17__throw_bad_allocv
.LEHE19:
	.p2align 4,,10
	.p2align 3
.L355:
.LEHB20:
	call	_ZSt17__throw_bad_allocv
.LEHE20:
	.p2align 4,,10
	.p2align 3
.L357:
.LEHB21:
	call	_ZSt17__throw_bad_allocv
.LEHE21:
	.p2align 4,,10
	.p2align 3
.L359:
.LEHB22:
	call	_ZSt17__throw_bad_allocv
.LEHE22:
	.p2align 4,,10
	.p2align 3
.L361:
.LEHB23:
	call	_ZSt17__throw_bad_allocv
.LEHE23:
	.p2align 4,,10
	.p2align 3
.L363:
.LEHB24:
	call	_ZSt17__throw_bad_allocv
.L362:
	lea	rcx, .LC22[rip]
	call	_ZSt20__throw_length_errorPKc
.LEHE24:
.L319:
	mov	rbx, rax
	mov	rcx, r14
	vzeroupper
	call	_ZN5Lenia8TaxonomyD1Ev
	mov	rcx, rbx
.LEHB25:
	call	_Unwind_Resume
.L352:
	lea	rcx, .LC22[rip]
	call	_ZSt20__throw_length_errorPKc
.L322:
	mov	rsi, rax
	vzeroupper
.L309:
	lea	rcx, 80[rbx]
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
.L310:
	lea	rcx, 48[rbx]
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
.L311:
	mov	rcx, r14
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	rcx, rsi
	call	_Unwind_Resume
.LEHE25:
.L360:
	lea	rcx, .LC22[rip]
.LEHB26:
	call	_ZSt20__throw_length_errorPKc
.LEHE26:
.L323:
	lea	rcx, 112[rbx]
	mov	rsi, rax
	vzeroupper
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	.L309
.L358:
	lea	rcx, .LC22[rip]
.LEHB27:
	call	_ZSt20__throw_length_errorPKc
.LEHE27:
.L321:
	mov	rsi, rax
	vzeroupper
	jmp	.L310
.L354:
	lea	rcx, .LC22[rip]
.LEHB28:
	call	_ZSt20__throw_length_errorPKc
.LEHE28:
.L320:
	mov	rsi, rax
	vzeroupper
	jmp	.L311
.L356:
	lea	rcx, .LC22[rip]
.LEHB29:
	call	_ZSt20__throw_length_errorPKc
	nop
.LEHE29:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6262:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6262-.LLSDACSB6262
.LLSDACSB6262:
	.uleb128 .LEHB13-.LFB6262
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB14-.LFB6262
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L320-.LFB6262
	.uleb128 0
	.uleb128 .LEHB15-.LFB6262
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L321-.LFB6262
	.uleb128 0
	.uleb128 .LEHB16-.LFB6262
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L322-.LFB6262
	.uleb128 0
	.uleb128 .LEHB17-.LFB6262
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L323-.LFB6262
	.uleb128 0
	.uleb128 .LEHB18-.LFB6262
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L319-.LFB6262
	.uleb128 0
	.uleb128 .LEHB19-.LFB6262
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB20-.LFB6262
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L320-.LFB6262
	.uleb128 0
	.uleb128 .LEHB21-.LFB6262
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L321-.LFB6262
	.uleb128 0
	.uleb128 .LEHB22-.LFB6262
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L322-.LFB6262
	.uleb128 0
	.uleb128 .LEHB23-.LFB6262
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L323-.LFB6262
	.uleb128 0
	.uleb128 .LEHB24-.LFB6262
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L319-.LFB6262
	.uleb128 0
	.uleb128 .LEHB25-.LFB6262
	.uleb128 .LEHE25-.LEHB25
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB26-.LFB6262
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L323-.LFB6262
	.uleb128 0
	.uleb128 .LEHB27-.LFB6262
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L322-.LFB6262
	.uleb128 0
	.uleb128 .LEHB28-.LFB6262
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L320-.LFB6262
	.uleb128 0
	.uleb128 .LEHB29-.LFB6262
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L321-.LFB6262
	.uleb128 0
.LLSDACSE6262:
	.text
	.seh_endproc
	.globl	_ZN5Lenia6AnimalC1ENS_8TaxonomyEjfPKfhffNS_10KernelCoreENS_14GrowthFunctionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.def	_ZN5Lenia6AnimalC1ENS_8TaxonomyEjfPKfhffNS_10KernelCoreENS_14GrowthFunctionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE;	.scl	2;	.type	32;	.endef
	.set	_ZN5Lenia6AnimalC1ENS_8TaxonomyEjfPKfhffNS_10KernelCoreENS_14GrowthFunctionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,_ZN5Lenia6AnimalC2ENS_8TaxonomyEjfPKfhffNS_10KernelCoreENS_14GrowthFunctionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.globl	_ZTSSt9exception
	.section	.rdata$_ZTSSt9exception,"dr"
	.linkonce same_size
	.align 8
_ZTSSt9exception:
	.ascii "St9exception\0"
	.globl	_ZTISt9exception
	.section	.rdata$_ZTISt9exception,"dr"
	.linkonce same_size
	.align 8
_ZTISt9exception:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSSt9exception
	.globl	_ZTSSt13runtime_error
	.section	.rdata$_ZTSSt13runtime_error,"dr"
	.linkonce same_size
	.align 16
_ZTSSt13runtime_error:
	.ascii "St13runtime_error\0"
	.globl	_ZTISt13runtime_error
	.section	.rdata$_ZTISt13runtime_error,"dr"
	.linkonce same_size
	.align 8
_ZTISt13runtime_error:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSSt13runtime_error
	.quad	_ZTISt9exception
	.section .rdata,"dr"
	.align 4
.LC1:
	.long	-1082130432
	.align 4
.LC2:
	.long	998277249
	.align 4
.LC3:
	.long	1065353216
	.align 4
.LC4:
	.long	1082130432
	.align 4
.LC5:
	.long	1056964608
	.align 4
.LC6:
	.long	1087722837
	.align 4
.LC7:
	.long	-1090519040
	.align 4
.LC9:
	.long	1038323257
	.align 4
.LC10:
	.long	1073741824
	.align 16
.LC11:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.align 4
.LC14:
	.long	1048576000
	.align 4
.LC15:
	.long	1061158912
	.align 8
.LC17:
	.long	-1598689907
	.long	-1095710985
	.align 8
.LC18:
	.long	-1598689907
	.long	1051772663
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev2, Built by MSYS2 project) 14.2.0"
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_Znay;	.scl	2;	.type	32;	.endef
	.def	memset;	.scl	2;	.type	32;	.endef
	.def	_ZdaPv;	.scl	2;	.type	32;	.endef
	.def	__cxa_throw_bad_array_new_length;	.scl	2;	.type	32;	.endef
	.def	expf;	.scl	2;	.type	32;	.endef
	.def	__cxa_allocate_exception;	.scl	2;	.type	32;	.endef
	.def	_ZNSt13runtime_errorC1EPKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSt13runtime_errorD1Ev;	.scl	2;	.type	32;	.endef
	.def	__cxa_throw;	.scl	2;	.type	32;	.endef
	.def	__cxa_free_exception;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.def	_ZSt20__throw_length_errorPKc;	.scl	2;	.type	32;	.endef
	.def	_ZSt17__throw_bad_allocv;	.scl	2;	.type	32;	.endef
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
	.section	.rdata$.refptr._ZNSt13runtime_errorD1Ev, "dr"
	.globl	.refptr._ZNSt13runtime_errorD1Ev
	.linkonce	discard
.refptr._ZNSt13runtime_errorD1Ev:
	.quad	_ZNSt13runtime_errorD1Ev
	.section	.rdata$.refptr.glad_glDeleteBuffers, "dr"
	.globl	.refptr.glad_glDeleteBuffers
	.linkonce	discard
.refptr.glad_glDeleteBuffers:
	.quad	glad_glDeleteBuffers
