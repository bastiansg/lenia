	.file	"main.cpp"
	.intel_syntax noprefix
	.text
	.section	.text$_ZNKSt5ctypeIcE8do_widenEc,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNKSt5ctypeIcE8do_widenEc
	.def	_ZNKSt5ctypeIcE8do_widenEc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt5ctypeIcE8do_widenEc
_ZNKSt5ctypeIcE8do_widenEc:
.LFB3327:
	.seh_endprologue
	mov	eax, edx
	ret
	.seh_endproc
	.text
	.p2align 4
	.def	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0:
.LFB9302:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR [rcx]
	mov	rax, QWORD PTR -24[rax]
	mov	rsi, QWORD PTR 240[rcx+rax]
	mov	rbx, rcx
	test	rsi, rsi
	je	.L8
	cmp	BYTE PTR 56[rsi], 0
	je	.L5
	movsx	edx, BYTE PTR 67[rsi]
.L6:
	mov	rcx, rbx
	call	_ZNSo3putEc
	mov	rcx, rax
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	_ZNSo5flushEv
	.p2align 4,,10
	.p2align 3
.L5:
	mov	rcx, rsi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	mov	rax, QWORD PTR [rsi]
	mov	edx, 10
	lea	rcx, _ZNKSt5ctypeIcE8do_widenEc[rip]
	mov	rax, QWORD PTR 48[rax]
	cmp	rax, rcx
	je	.L6
	mov	rcx, rsi
	call	rax
	movsx	edx, al
	jmp	.L6
.L8:
	call	_ZSt16__throw_bad_castv
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.def	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5Lenia6AnimalEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE24_M_get_insert_unique_posERS7_.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5Lenia6AnimalEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE24_M_get_insert_unique_posERS7_.isra.0
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5Lenia6AnimalEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE24_M_get_insert_unique_posERS7_.isra.0:
.LFB9305:
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
	.seh_endprologue
	mov	r13d, 2147483648
	movabs	r15, -2147483649
	mov	rbx, QWORD PTR 16[rdx]
	mov	QWORD PTR 136[rsp], rdx
	mov	r14, rcx
	mov	r12, r8
	mov	rdi, r9
	test	rbx, rbx
	jne	.L10
	jmp	.L34
	.p2align 4,,10
	.p2align 3
.L14:
	mov	rax, QWORD PTR 24[rbx]
	xor	ecx, ecx
	test	rax, rax
	je	.L35
.L24:
	mov	rbx, rax
.L10:
	mov	rsi, QWORD PTR 40[rbx]
	mov	rbp, QWORD PTR 32[rbx]
	cmp	rdi, rsi
	mov	r8, rsi
	cmovbe	r8, rdi
	test	r8, r8
	je	.L12
	mov	rdx, rbp
	mov	rcx, r12
	mov	QWORD PTR 40[rsp], r8
	call	memcmp
	mov	r8, QWORD PTR 40[rsp]
	test	eax, eax
	jne	.L13
.L12:
	mov	rax, rdi
	sub	rax, rsi
	cmp	rax, r13
	jge	.L14
	cmp	rax, r15
	jle	.L15
.L13:
	test	eax, eax
	jns	.L14
.L15:
	mov	rax, QWORD PTR 16[rbx]
	mov	ecx, 1
	test	rax, rax
	jne	.L24
.L35:
	mov	r13, rbx
	test	cl, cl
	jne	.L11
.L17:
	test	r8, r8
	je	.L20
	mov	rdx, r12
	mov	rcx, rbp
	call	memcmp
	test	eax, eax
	jne	.L21
.L20:
	sub	rsi, rdi
	cmp	rsi, 2147483647
	jg	.L22
	cmp	rsi, -2147483648
	jl	.L23
	mov	eax, esi
.L21:
	test	eax, eax
	js	.L23
.L22:
	mov	QWORD PTR [r14], rbx
	mov	QWORD PTR 8[r14], 0
.L9:
	mov	rax, r14
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
.L34:
	lea	rbx, 8[rdx]
.L11:
	mov	rax, QWORD PTR 136[rsp]
	cmp	rbx, QWORD PTR 24[rax]
	je	.L36
	mov	rcx, rbx
	mov	r13, rbx
	call	_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base
	mov	rsi, QWORD PTR 40[rax]
	mov	rbp, QWORD PTR 32[rax]
	mov	rbx, rax
	cmp	rdi, rsi
	mov	r8, rsi
	cmovbe	r8, rdi
	jmp	.L17
	.p2align 4,,10
	.p2align 3
.L23:
	mov	QWORD PTR [r14], 0
	mov	QWORD PTR 8[r14], r13
	jmp	.L9
	.p2align 4,,10
	.p2align 3
.L36:
	mov	QWORD PTR [r14], 0
	mov	QWORD PTR 8[r14], rbx
	jmp	.L9
	.seh_endproc
	.align 2
	.p2align 4
	.def	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5Lenia6AnimalEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISB_ERS7_.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5Lenia6AnimalEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISB_ERS7_.isra.0
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5Lenia6AnimalEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISB_ERS7_.isra.0:
.LFB9307:
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
	mov	rbp, QWORD PTR 144[rsp]
	lea	rax, 8[rdx]
	mov	rsi, rcx
	mov	rdi, rdx
	mov	rbx, r8
	mov	r12, r9
	cmp	r8, rax
	je	.L74
	mov	r13, QWORD PTR 40[r8]
	cmp	rbp, r13
	mov	r8, r13
	cmovbe	r8, rbp
	test	r8, r8
	je	.L44
	mov	r14, QWORD PTR 32[rbx]
	mov	rcx, r9
	mov	QWORD PTR 40[rsp], r8
	mov	rdx, r14
	call	memcmp
	mov	r8, QWORD PTR 40[rsp]
	test	eax, eax
	jne	.L72
	mov	rax, rbp
	sub	rax, r13
	cmp	rax, 2147483647
	jg	.L47
	cmp	rax, -2147483648
	jl	.L46
	test	eax, eax
.L72:
	js	.L46
.L47:
	mov	rdx, r12
	mov	rcx, r14
	call	memcmp
	test	eax, eax
	jne	.L54
.L48:
	mov	rax, r13
	sub	rax, rbp
	cmp	rax, 2147483647
	jg	.L55
	cmp	rax, -2147483648
	jl	.L56
.L54:
	test	eax, eax
	js	.L56
.L55:
	mov	QWORD PTR [rsi], rbx
	mov	QWORD PTR 8[rsi], 0
.L37:
	mov	rax, rsi
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
.L44:
	mov	rax, rbp
	sub	rax, r13
	cmp	rax, 2147483647
	jg	.L48
	cmp	rax, -2147483648
	jl	.L46
	test	eax, eax
	jns	.L48
.L46:
	cmp	QWORD PTR 24[rdi], rbx
	je	.L75
	mov	rcx, rbx
	call	_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base
	mov	r13, QWORD PTR 40[rax]
	mov	r14, rax
	cmp	rbp, r13
	mov	r8, r13
	cmovbe	r8, rbp
	test	r8, r8
	je	.L50
	mov	rcx, QWORD PTR 32[rax]
	mov	rdx, r12
	call	memcmp
	test	eax, eax
	jne	.L51
.L50:
	sub	r13, rbp
	cmp	r13, 2147483647
	jg	.L39
	cmp	r13, -2147483648
	jl	.L52
	mov	eax, r13d
.L51:
	test	eax, eax
	jns	.L39
.L52:
	cmp	QWORD PTR 24[r14], 0
	je	.L76
	vmovq	xmm2, rbx
	vpunpcklqdq	xmm0, xmm2, xmm2
	vmovdqu	XMMWORD PTR [rsi], xmm0
	jmp	.L37
	.p2align 4,,10
	.p2align 3
.L74:
	cmp	QWORD PTR 40[rdx], 0
	je	.L39
	mov	r13, QWORD PTR 32[rdx]
	mov	rbx, QWORD PTR 40[r13]
	cmp	rbp, rbx
	mov	r8, rbx
	cmovbe	r8, rbp
	test	r8, r8
	je	.L40
	mov	rcx, QWORD PTR 32[r13]
	mov	rdx, r9
	call	memcmp
	test	eax, eax
	jne	.L41
.L40:
	sub	rbx, rbp
	cmp	rbx, 2147483647
	jg	.L39
	cmp	rbx, -2147483648
	jl	.L42
	mov	eax, ebx
.L41:
	test	eax, eax
	jns	.L39
.L42:
	mov	QWORD PTR [rsi], 0
	mov	QWORD PTR 8[rsi], r13
	jmp	.L37
	.p2align 4,,10
	.p2align 3
.L56:
	cmp	QWORD PTR 32[rdi], rbx
	je	.L73
	mov	rcx, rbx
	call	_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base
	mov	r14, QWORD PTR 40[rax]
	mov	r13, rax
	cmp	rbp, r14
	mov	r8, r14
	cmovbe	r8, rbp
	test	r8, r8
	je	.L58
	mov	rdx, QWORD PTR 32[rax]
	mov	rcx, r12
	call	memcmp
	test	eax, eax
	jne	.L59
.L58:
	mov	rax, rbp
	sub	rax, r14
	cmp	rax, 2147483647
	jg	.L39
	cmp	rax, -2147483648
	jl	.L60
.L59:
	test	eax, eax
	js	.L60
	.p2align 4
	.p2align 3
.L39:
	mov	r9, rbp
	mov	r8, r12
	mov	rdx, rdi
	mov	rcx, rsi
	call	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5Lenia6AnimalEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE24_M_get_insert_unique_posERS7_.isra.0
	jmp	.L37
	.p2align 4,,10
	.p2align 3
.L75:
	vmovq	xmm1, rbx
	vpunpcklqdq	xmm0, xmm1, xmm1
	vmovdqu	XMMWORD PTR [rsi], xmm0
	jmp	.L37
	.p2align 4,,10
	.p2align 3
.L73:
	mov	QWORD PTR [rsi], 0
	mov	QWORD PTR 8[rsi], rbx
	jmp	.L37
	.p2align 4,,10
	.p2align 3
.L60:
	cmp	QWORD PTR 24[rbx], 0
	je	.L73
	vmovq	xmm3, r13
	vpunpcklqdq	xmm0, xmm3, xmm3
	vmovdqu	XMMWORD PTR [rsi], xmm0
	jmp	.L37
	.p2align 4,,10
	.p2align 3
.L76:
	mov	QWORD PTR [rsi], 0
	mov	QWORD PTR 8[rsi], r14
	jmp	.L37
	.seh_endproc
	.align 2
	.p2align 4
	.def	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5Lenia6AnimalEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5Lenia6AnimalEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E.isra.0
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5Lenia6AnimalEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E.isra.0:
.LFB9308:
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
	sub	rsp, 72
	.seh_stackalloc	72
	vmovups	XMMWORD PTR 48[rsp], xmm6
	.seh_savexmm	xmm6, 48
	.seh_endprologue
	mov	r13, rcx
	test	rcx, rcx
	je	.L141
.L104:
	mov	r14, QWORD PTR 24[r13]
	test	r14, r14
	je	.L79
.L102:
	mov	r15, QWORD PTR 24[r14]
	test	r15, r15
	je	.L80
.L100:
	mov	rax, QWORD PTR 24[r15]
	vmovq	xmm6, rax
	test	rax, rax
	je	.L81
.L98:
	vmovq	rax, xmm6
	mov	rbx, QWORD PTR 24[rax]
	test	rbx, rbx
	je	.L82
.L96:
	mov	rdi, QWORD PTR 24[rbx]
	test	rdi, rdi
	je	.L83
.L94:
	mov	rbp, QWORD PTR 24[rdi]
	test	rbp, rbp
	je	.L84
.L92:
	mov	rsi, QWORD PTR 24[rbp]
	test	rsi, rsi
	je	.L85
.L90:
	mov	r12, QWORD PTR 24[rsi]
	test	r12, r12
	je	.L86
.L88:
	mov	rcx, QWORD PTR 24[r12]
	call	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5Lenia6AnimalEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E.isra.0
	mov	rax, r12
	mov	r12, QWORD PTR 16[r12]
	mov	rcx, QWORD PTR 32[rax]
	lea	rdx, 48[rax]
	cmp	rcx, rdx
	je	.L87
	mov	rdx, QWORD PTR 48[rax]
	mov	QWORD PTR 40[rsp], rax
	add	rdx, 1
	call	_ZdlPvy
	mov	rax, QWORD PTR 40[rsp]
.L87:
	mov	edx, 72
	mov	rcx, rax
	call	_ZdlPvy
	test	r12, r12
	jne	.L88
.L86:
	mov	rcx, QWORD PTR 32[rsi]
	lea	rax, 48[rsi]
	mov	r12, QWORD PTR 16[rsi]
	cmp	rcx, rax
	je	.L89
	mov	rax, QWORD PTR 48[rsi]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L89:
	mov	edx, 72
	mov	rcx, rsi
	call	_ZdlPvy
	test	r12, r12
	je	.L85
	mov	rsi, r12
	jmp	.L90
.L83:
	mov	rcx, QWORD PTR 32[rbx]
	lea	rax, 48[rbx]
	mov	rsi, QWORD PTR 16[rbx]
	cmp	rcx, rax
	je	.L95
	mov	rax, QWORD PTR 48[rbx]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L95:
	mov	edx, 72
	mov	rcx, rbx
	call	_ZdlPvy
	test	rsi, rsi
	je	.L82
	mov	rbx, rsi
	jmp	.L96
	.p2align 4,,10
	.p2align 3
.L84:
	mov	rcx, QWORD PTR 32[rdi]
	lea	rax, 48[rdi]
	mov	rsi, QWORD PTR 16[rdi]
	cmp	rcx, rax
	je	.L93
	mov	rax, QWORD PTR 48[rdi]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L93:
	mov	edx, 72
	mov	rcx, rdi
	call	_ZdlPvy
	test	rsi, rsi
	je	.L83
	mov	rdi, rsi
	jmp	.L94
.L82:
	vmovq	rdi, xmm6
	mov	rcx, QWORD PTR 32[rdi]
	lea	rax, 48[rdi]
	mov	rbx, QWORD PTR 16[rdi]
	cmp	rcx, rax
	je	.L97
	mov	rax, QWORD PTR 48[rdi]
	lea	rdx, 1[rax]
	mov	QWORD PTR 40[rsp], rax
	call	_ZdlPvy
.L97:
	mov	edx, 72
	vmovq	rcx, xmm6
	call	_ZdlPvy
	test	rbx, rbx
	je	.L81
	vmovq	xmm6, rbx
	jmp	.L98
	.p2align 4,,10
	.p2align 3
.L85:
	mov	rcx, QWORD PTR 32[rbp]
	lea	rax, 48[rbp]
	mov	rsi, QWORD PTR 16[rbp]
	cmp	rcx, rax
	je	.L91
	mov	rax, QWORD PTR 48[rbp]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L91:
	mov	edx, 72
	mov	rcx, rbp
	call	_ZdlPvy
	test	rsi, rsi
	je	.L84
	mov	rbp, rsi
	jmp	.L92
.L81:
	mov	rcx, QWORD PTR 32[r15]
	lea	rax, 48[r15]
	mov	rbx, QWORD PTR 16[r15]
	cmp	rcx, rax
	je	.L99
	mov	rax, QWORD PTR 48[r15]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L99:
	mov	edx, 72
	mov	rcx, r15
	call	_ZdlPvy
	test	rbx, rbx
	je	.L80
	mov	r15, rbx
	jmp	.L100
.L80:
	mov	rcx, QWORD PTR 32[r14]
	lea	rax, 48[r14]
	mov	rbx, QWORD PTR 16[r14]
	cmp	rcx, rax
	je	.L101
	mov	rax, QWORD PTR 48[r14]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L101:
	mov	edx, 72
	mov	rcx, r14
	call	_ZdlPvy
	test	rbx, rbx
	je	.L79
	mov	r14, rbx
	jmp	.L102
.L79:
	mov	rcx, QWORD PTR 32[r13]
	lea	rax, 48[r13]
	mov	rbx, QWORD PTR 16[r13]
	cmp	rcx, rax
	je	.L103
	mov	rax, QWORD PTR 48[r13]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L103:
	mov	edx, 72
	mov	rcx, r13
	call	_ZdlPvy
	test	rbx, rbx
	je	.L141
	mov	r13, rbx
	jmp	.L104
.L141:
	vmovups	xmm6, XMMWORD PTR 48[rsp]
	add	rsp, 72
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
	.seh_endproc
	.p2align 4
	.def	__tcf_1;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_1
__tcf_1:
.LFB8493:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rbx, QWORD PTR _ZN5LeniaL7AnimalsE[rip+16]
	test	rbx, rbx
	je	.L150
.L145:
	mov	rcx, QWORD PTR 24[rbx]
	mov	rsi, rbx
	call	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5Lenia6AnimalEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E.isra.0
	mov	rcx, QWORD PTR 32[rsi]
	lea	rax, 48[rsi]
	mov	rbx, QWORD PTR 16[rbx]
	cmp	rcx, rax
	je	.L144
	mov	rax, QWORD PTR 48[rsi]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L144:
	mov	edx, 72
	mov	rcx, rsi
	call	_ZdlPvy
	test	rbx, rbx
	jne	.L145
.L150:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.section	.text$_ZN5Lenia8TaxonomyD1Ev,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZN5Lenia8TaxonomyD1Ev
	.def	_ZN5Lenia8TaxonomyD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Lenia8TaxonomyD1Ev
_ZN5Lenia8TaxonomyD1Ev:
.LFB6801:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	mov	rcx, QWORD PTR 128[rcx]
	lea	rax, 144[rbx]
	cmp	rcx, rax
	je	.L152
	mov	rax, QWORD PTR 144[rbx]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L152:
	mov	rcx, QWORD PTR 96[rbx]
	lea	rax, 112[rbx]
	cmp	rcx, rax
	je	.L153
	mov	rax, QWORD PTR 112[rbx]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L153:
	mov	rcx, QWORD PTR 64[rbx]
	lea	rax, 80[rbx]
	cmp	rcx, rax
	je	.L154
	mov	rax, QWORD PTR 80[rbx]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L154:
	mov	rcx, QWORD PTR 32[rbx]
	lea	rax, 48[rbx]
	cmp	rcx, rax
	je	.L155
	mov	rax, QWORD PTR 48[rbx]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L155:
	mov	rcx, QWORD PTR [rbx]
	lea	rax, 16[rbx]
	cmp	rcx, rax
	je	.L157
	mov	rdx, QWORD PTR 16[rbx]
	add	rdx, 1
	add	rsp, 32
	pop	rbx
	jmp	_ZdlPvy
	.p2align 4,,10
	.p2align 3
.L157:
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.section	.text$_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_EN11_Save_errnoD1Ev,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_EN11_Save_errnoD1Ev
	.def	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_EN11_Save_errnoD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_EN11_Save_errnoD1Ev
_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_EN11_Save_errnoD1Ev:
.LFB6933:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rsi, QWORD PTR __imp__errno[rip]
	mov	rbx, rcx
	call	rsi
	mov	eax, DWORD PTR [rax]
	test	eax, eax
	je	.L161
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L161:
	mov	ebx, DWORD PTR [rbx]
	call	rsi
	mov	DWORD PTR [rax], ebx
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6933:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6933-.LLSDACSB6933
.LLSDACSB6933:
.LLSDACSE6933:
	.section	.text$_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_EN11_Save_errnoD1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_EN11_Save_errnoD1Ev,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_EN11_Save_errnoD1Ev
	.def	_ZZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_EN11_Save_errnoD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_EN11_Save_errnoD1Ev
_ZZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_EN11_Save_errnoD1Ev:
.LFB6987:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rsi, QWORD PTR __imp__errno[rip]
	mov	rbx, rcx
	call	rsi
	mov	eax, DWORD PTR [rax]
	test	eax, eax
	je	.L165
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L165:
	mov	ebx, DWORD PTR [rbx]
	call	rsi
	mov	DWORD PTR [rax], ebx
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6987:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6987-.LLSDACSB6987
.LLSDACSB6987:
.LLSDACSE6987:
	.section	.text$_ZZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_EN11_Save_errnoD1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv:
.LFB7564:
	.seh_endprologue
	mov	rax, QWORD PTR [rcx]
	lea	rdx, 16[rcx]
	cmp	rax, rdx
	je	.L168
	mov	rdx, QWORD PTR 16[rcx]
	mov	rcx, rax
	add	rdx, 1
	jmp	_ZdlPvy
	.p2align 4,,10
	.p2align 3
.L168:
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC0:
	.ascii "basic_string::_M_create\0"
.LC1:
	.ascii "basic_string::append\0"
.LC2:
	.ascii "Failed to open shader file: \0"
	.section	.text$_ZN5Lenia14LoadShaderFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"x"
	.linkonce discard
	.p2align 4
	.globl	_ZN5Lenia14LoadShaderFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.def	_ZN5Lenia14LoadShaderFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Lenia14LoadShaderFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
_ZN5Lenia14LoadShaderFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
.LFB6238:
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
	sub	rsp, 696
	.seh_stackalloc	696
	vmovups	XMMWORD PTR 656[rsp], xmm6
	.seh_savexmm	xmm6, 656
	vmovups	XMMWORD PTR 672[rsp], xmm7
	.seh_savexmm	xmm7, 672
	.seh_endprologue
	lea	rax, 384[rsp]
	lea	rdi, 176[rsp]
	mov	rsi, rcx
	mov	rbx, rdx
	mov	rcx, rax
	mov	QWORD PTR 88[rsp], rax
	mov	rbp, rax
	mov	QWORD PTR 40[rsp], rdi
	call	_ZNSt8ios_baseC2Ev
	mov	rax, QWORD PTR .refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE[rip]
	xor	ecx, ecx
	vpxor	xmm0, xmm0, xmm0
	mov	WORD PTR 608[rsp], cx
	vmovdqu	YMMWORD PTR 616[rsp], ymm0
	add	rax, 16
	mov	QWORD PTR 384[rsp], rax
	mov	rax, QWORD PTR .refptr._ZTTSt14basic_ifstreamIcSt11char_traitsIcEE[rip]
	mov	QWORD PTR 600[rsp], 0
	mov	r15, QWORD PTR 8[rax]
	mov	rdx, QWORD PTR 16[rax]
	mov	rax, QWORD PTR -24[r15]
	mov	QWORD PTR 176[rsp], r15
	mov	QWORD PTR 80[rsp], rdx
	mov	QWORD PTR 176[rsp+rax], rdx
	xor	edx, edx
	mov	QWORD PTR 184[rsp], 0
	mov	rcx, QWORD PTR -24[r15]
	add	rcx, rdi
	vzeroupper
.LEHB0:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
.LEHE0:
	mov	rax, QWORD PTR .refptr._ZTVSt14basic_ifstreamIcSt11char_traitsIcEE[rip]
	add	rax, 24
	mov	QWORD PTR 176[rsp], rax
	mov	rax, QWORD PTR .refptr._ZTVSt14basic_ifstreamIcSt11char_traitsIcEE[rip]
	add	rax, 64
	mov	QWORD PTR 384[rsp], rax
	lea	rax, 192[rsp]
	mov	rcx, rax
	mov	QWORD PTR 56[rsp], rax
	mov	r14, rax
.LEHB1:
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev
.LEHE1:
	mov	rdx, r14
	mov	rcx, rbp
.LEHB2:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
	mov	rdx, QWORD PTR [rbx]
	mov	rcx, QWORD PTR 56[rsp]
	mov	r8d, 8
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
	mov	rdx, QWORD PTR 176[rsp]
	add	rdi, QWORD PTR -24[rdx]
	mov	rcx, rdi
	test	rax, rax
	je	.L300
	xor	edx, edx
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.LEHE2:
.L171:
	lea	rax, 16[rsi]
	mov	QWORD PTR 8[rsi], 0
	mov	QWORD PTR [rsi], rax
	mov	BYTE PTR 16[rsi], 0
	mov	QWORD PTR 32[rsp], rax
	lea	rax, 264[rsp]
	mov	rcx, rax
	mov	QWORD PTR 96[rsp], rax
	call	_ZNKSt12__basic_fileIcE7is_openEv
	test	al, al
	je	.L301
	lea	rax, 128[rsp]
	mov	BYTE PTR 128[rsp], 0
	mov	QWORD PTR 112[rsp], rax
	vmovq	xmm7, rax
	mov	rax, QWORD PTR 176[rsp]
	mov	QWORD PTR 120[rsp], 0
	mov	rax, QWORD PTR -24[rax]
	mov	rbx, QWORD PTR 416[rsp+rax]
	lea	rax, 112[rsp]
	mov	QWORD PTR 48[rsp], rax
	test	rbx, rbx
	je	.L233
	lea	rax, _ZNKSt5ctypeIcE8do_widenEc[rip]
	movabs	r12, 9223372036854775807
	vmovq	xmm6, rax
.L177:
	cmp	BYTE PTR 56[rbx], 0
	je	.L234
	movsx	r8d, BYTE PTR 67[rbx]
.L235:
	mov	rdx, QWORD PTR 48[rsp]
	mov	rcx, QWORD PTR 40[rsp]
.LEHB3:
	call	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_
.LEHE3:
	mov	rdx, QWORD PTR [rax]
	mov	rdx, QWORD PTR -24[rdx]
	test	BYTE PTR 32[rax+rdx], 5
	jne	.L302
	mov	rbx, QWORD PTR 120[rsp]
	lea	rdi, 160[rsp]
	mov	QWORD PTR 152[rsp], 0
	mov	QWORD PTR 144[rsp], rdi
	mov	r14, QWORD PTR 112[rsp]
	lea	rbp, 1[rbx]
	mov	BYTE PTR 160[rsp], 0
	cmp	rbp, 15
	jbe	.L178
	test	rbp, rbp
	js	.L303
	cmp	rbp, 29
	jbe	.L248
	mov	rcx, rbx
	add	rcx, 2
	js	.L304
.L180:
.LEHB4:
	call	_Znwy
.LEHE4:
	mov	r9, QWORD PTR 152[rsp]
	mov	r13, QWORD PTR 144[rsp]
	mov	r11, rax
	lea	r8, 1[r9]
	test	r9, r9
	je	.L305
	mov	QWORD PTR 64[rsp], r9
	test	r8, r8
	je	.L183
	mov	rdx, r13
	mov	rcx, rax
	call	memcpy
	cmp	r13, rdi
	mov	r9, QWORD PTR 64[rsp]
	mov	r11, rax
	je	.L184
.L183:
	mov	rax, QWORD PTR 160[rsp]
	mov	rcx, r13
	mov	QWORD PTR 64[rsp], r11
	lea	rdx, 1[rax]
	call	_ZdlPvy
	mov	r9, QWORD PTR 152[rsp]
	mov	r11, QWORD PTR 64[rsp]
.L184:
	mov	rax, r12
	mov	QWORD PTR 144[rsp], r11
	sub	rax, r9
	mov	QWORD PTR 160[rsp], rbp
	cmp	rax, rbx
	jb	.L245
	lea	r13, [r9+rbx]
	cmp	rbp, r13
	jb	.L306
.L243:
	lea	rcx, [r11+r9]
.L187:
	mov	r8, rbx
	mov	rdx, r14
	mov	rbx, r13
	call	memcpy
	mov	rbp, QWORD PTR 144[rsp]
.L186:
	mov	QWORD PTR 152[rsp], rbx
	mov	BYTE PTR 0[rbp+rbx], 0
	mov	rbp, QWORD PTR 152[rsp]
	cmp	rbp, r12
	je	.L307
	mov	rax, QWORD PTR 144[rsp]
	lea	r14, 1[rbp]
	cmp	rax, rdi
	je	.L308
	mov	rbx, QWORD PTR 160[rsp]
	cmp	rbx, r14
	jb	.L201
.L199:
	mov	BYTE PTR [rax+rbp], 10
	mov	r13, QWORD PTR 144[rsp]
.L202:
	mov	QWORD PTR 152[rsp], r14
	mov	rax, r12
	mov	BYTE PTR 1[r13+rbp], 0
	mov	r8, QWORD PTR 8[rsi]
	mov	r10, QWORD PTR 152[rsp]
	mov	r14, QWORD PTR 144[rsp]
	sub	rax, r8
	cmp	rax, r10
	jb	.L309
	mov	r13, QWORD PTR [rsi]
	lea	rbp, [r10+r8]
	cmp	QWORD PTR 32[rsp], r13
	je	.L310
	mov	rbx, QWORD PTR 16[rsi]
	cmp	rbx, rbp
	jb	.L218
.L216:
	test	r10, r10
	je	.L219
	lea	rcx, 0[r13+r8]
	cmp	r10, 1
	je	.L311
	mov	r8, r10
	mov	rdx, r14
	call	memcpy
	mov	r13, QWORD PTR [rsi]
.L219:
	mov	QWORD PTR 8[rsi], rbp
	mov	BYTE PTR 0[r13+rbp], 0
	mov	rcx, QWORD PTR 144[rsp]
	cmp	rcx, rdi
	je	.L232
	mov	rax, QWORD PTR 160[rsp]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L232:
	mov	rax, QWORD PTR 176[rsp]
	mov	rax, QWORD PTR -24[rax]
	mov	rbx, QWORD PTR 416[rsp+rax]
	test	rbx, rbx
	jne	.L177
.L233:
.LEHB5:
	call	_ZSt16__throw_bad_castv
	.p2align 4,,10
	.p2align 3
.L234:
	mov	rcx, rbx
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	mov	rax, QWORD PTR [rbx]
	vmovq	rdi, xmm6
	mov	r8d, 10
	mov	rax, QWORD PTR 48[rax]
	cmp	rax, rdi
	je	.L235
	mov	edx, 10
	mov	rcx, rbx
	call	rax
.LEHE5:
	movsx	r8d, al
	jmp	.L235
	.p2align 4,,10
	.p2align 3
.L178:
	cmp	rbx, -1
	je	.L245
	test	rbx, rbx
	jne	.L312
	mov	rbp, rdi
	jmp	.L186
	.p2align 4,,10
	.p2align 3
.L201:
	test	r14, r14
	js	.L313
	add	rbx, rbx
	cmp	r14, rbx
	jb	.L314
	mov	rcx, rbp
	add	rcx, 2
	js	.L205
	mov	rbx, r14
.L206:
.LEHB6:
	call	_Znwy
	mov	r10, QWORD PTR 144[rsp]
	mov	r13, rax
	test	rbp, rbp
	jne	.L315
.L208:
	mov	BYTE PTR 0[r13+rbp], 10
	cmp	r10, rdi
	je	.L210
	mov	rax, QWORD PTR 160[rsp]
	mov	rcx, r10
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L210:
	mov	QWORD PTR 144[rsp], r13
	mov	QWORD PTR 160[rsp], rbx
	jmp	.L202
	.p2align 4,,10
	.p2align 3
.L306:
	test	r13, r13
	js	.L188
.L247:
	lea	rax, [rbp+rbp]
	mov	QWORD PTR 64[rsp], rax
	cmp	r13, rax
	jb	.L189
	mov	rcx, r13
	add	rcx, 1
	js	.L190
	mov	QWORD PTR 64[rsp], r13
.L191:
	mov	QWORD PTR 72[rsp], r9
	call	_Znwy
.LEHE6:
	mov	r9, QWORD PTR 72[rsp]
	mov	r11, QWORD PTR 144[rsp]
	mov	rbp, rax
	test	r9, r9
	je	.L193
	cmp	r9, 1
	je	.L316
	mov	r8, r9
	mov	rdx, r11
	mov	rcx, rax
	mov	QWORD PTR 104[rsp], r9
	mov	QWORD PTR 72[rsp], r11
	call	memcpy
	mov	r9, QWORD PTR 104[rsp]
	mov	r11, QWORD PTR 72[rsp]
.L193:
	test	r14, r14
	je	.L195
	lea	rcx, 0[rbp+r9]
	mov	r8, rbx
	mov	rdx, r14
	mov	QWORD PTR 72[rsp], r11
	call	memcpy
	mov	r11, QWORD PTR 72[rsp]
.L195:
	cmp	r11, rdi
	je	.L196
	mov	rax, QWORD PTR 160[rsp]
	mov	rcx, r11
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L196:
	mov	rax, QWORD PTR 64[rsp]
	mov	QWORD PTR 144[rsp], rbp
	mov	rbx, r13
	mov	QWORD PTR 160[rsp], rax
	jmp	.L186
	.p2align 4,,10
	.p2align 3
.L218:
	test	rbp, rbp
	js	.L221
	add	rbx, rbx
	cmp	rbp, rbx
	jb	.L317
.L223:
	mov	rcx, rbp
	add	rcx, 1
	js	.L225
	mov	rbx, rbp
.L226:
	mov	QWORD PTR 72[rsp], r8
	mov	QWORD PTR 64[rsp], r10
.LEHB7:
	call	_Znwy
.LEHE7:
	mov	r8, QWORD PTR 72[rsp]
	mov	r10, QWORD PTR 64[rsp]
	mov	r13, rax
	test	r8, r8
	je	.L227
	mov	rdx, QWORD PTR [rsi]
	cmp	r8, 1
	je	.L318
	mov	rcx, rax
	mov	QWORD PTR 72[rsp], r10
	mov	QWORD PTR 64[rsp], r8
	call	memcpy
	mov	r10, QWORD PTR 72[rsp]
	mov	r8, QWORD PTR 64[rsp]
.L227:
	test	r14, r14
	je	.L229
	test	r10, r10
	je	.L229
	lea	rcx, 0[r13+r8]
	cmp	r10, 1
	je	.L319
	mov	r8, r10
	mov	rdx, r14
	call	memcpy
.L229:
	mov	rcx, QWORD PTR [rsi]
	cmp	QWORD PTR 32[rsp], rcx
	je	.L231
	mov	rax, QWORD PTR 16[rsi]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L231:
	mov	QWORD PTR [rsi], r13
	mov	QWORD PTR 16[rsi], rbx
	jmp	.L219
	.p2align 4,,10
	.p2align 3
.L308:
	cmp	r14, 16
	jne	.L199
	mov	ecx, 31
.LEHB8:
	call	_Znwy
.LEHE8:
	mov	r10, QWORD PTR 144[rsp]
	mov	r13, rax
	mov	ebx, 30
	jmp	.L200
	.p2align 4,,10
	.p2align 3
.L310:
	cmp	rbp, 15
	jbe	.L216
	test	rbp, rbp
	js	.L221
	cmp	rbp, 29
	ja	.L223
	mov	ecx, 31
	mov	ebx, 30
	jmp	.L226
	.p2align 4,,10
	.p2align 3
.L305:
	movzx	eax, BYTE PTR 0[r13]
	mov	BYTE PTR [r11], al
	cmp	r13, rdi
	jne	.L183
	mov	QWORD PTR 144[rsp], r11
	mov	r13, rbx
	xor	r9d, r9d
	mov	QWORD PTR 160[rsp], rbp
	cmp	rbp, rbx
	jnb	.L243
	jmp	.L247
	.p2align 4,,10
	.p2align 3
.L248:
	mov	ebp, 30
	mov	ecx, 31
	jmp	.L180
	.p2align 4,,10
	.p2align 3
.L315:
	cmp	rbp, 1
	je	.L320
.L200:
	mov	rdx, r10
	mov	r8, rbp
	mov	rcx, r13
	mov	QWORD PTR 64[rsp], r10
	call	memcpy
	mov	r10, QWORD PTR 64[rsp]
	jmp	.L208
	.p2align 4,,10
	.p2align 3
.L302:
	mov	rcx, QWORD PTR 56[rsp]
.LEHB9:
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
.LEHE9:
	test	rax, rax
	je	.L321
.L237:
	mov	rcx, QWORD PTR 112[rsp]
	vmovq	rax, xmm7
	cmp	rcx, rax
	je	.L238
	mov	rax, QWORD PTR 128[rsp]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L238:
	mov	rax, QWORD PTR .refptr._ZTVSt14basic_ifstreamIcSt11char_traitsIcEE[rip]
	mov	rcx, QWORD PTR 56[rsp]
	add	rax, 24
	mov	QWORD PTR 176[rsp], rax
	mov	rax, QWORD PTR .refptr._ZTVSt14basic_ifstreamIcSt11char_traitsIcEE[rip]
	add	rax, 64
	mov	QWORD PTR 384[rsp], rax
	mov	rax, QWORD PTR .refptr._ZTVSt13basic_filebufIcSt11char_traitsIcEE[rip]
	add	rax, 16
	mov	QWORD PTR 192[rsp], rax
.LEHB10:
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
.LEHE10:
.L240:
	mov	rcx, QWORD PTR 96[rsp]
	call	_ZNSt12__basic_fileIcED1Ev
	mov	rax, QWORD PTR .refptr._ZTVSt15basic_streambufIcSt11char_traitsIcEE[rip]
	lea	rcx, 248[rsp]
	add	rax, 16
	mov	QWORD PTR 192[rsp], rax
	call	_ZNSt6localeD1Ev
	mov	rax, QWORD PTR -24[r15]
	mov	rdi, QWORD PTR 80[rsp]
	mov	QWORD PTR 176[rsp], r15
	mov	rcx, QWORD PTR 88[rsp]
	mov	QWORD PTR 176[rsp+rax], rdi
	mov	rax, QWORD PTR .refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE[rip]
	mov	QWORD PTR 184[rsp], 0
	add	rax, 16
	mov	QWORD PTR 384[rsp], rax
	call	_ZNSt8ios_baseD2Ev
	mov	rax, rsi
	vmovups	xmm6, XMMWORD PTR 656[rsp]
	vmovups	xmm7, XMMWORD PTR 672[rsp]
	add	rsp, 696
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
.L311:
	movzx	eax, BYTE PTR [r14]
	mov	BYTE PTR [rcx], al
	mov	r13, QWORD PTR [rsi]
	jmp	.L219
	.p2align 4,,10
	.p2align 3
.L300:
	mov	edx, DWORD PTR 32[rdi]
	or	edx, 4
.LEHB11:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.LEHE11:
	jmp	.L171
	.p2align 4,,10
	.p2align 3
.L189:
	cmp	QWORD PTR 64[rsp], 0
	jns	.L192
.L190:
.LEHB12:
	call	_ZSt17__throw_bad_allocv
	.p2align 4,,10
	.p2align 3
.L314:
	test	rbx, rbx
	jns	.L322
.L205:
	call	_ZSt17__throw_bad_allocv
.LEHE12:
	.p2align 4,,10
	.p2align 3
.L316:
	movzx	eax, BYTE PTR [r11]
	mov	BYTE PTR 0[rbp], al
	jmp	.L193
	.p2align 4,,10
	.p2align 3
.L317:
	test	rbx, rbx
	jns	.L323
.L225:
.LEHB13:
	call	_ZSt17__throw_bad_allocv
.LEHE13:
	.p2align 4,,10
	.p2align 3
.L319:
	movzx	eax, BYTE PTR [r14]
	mov	BYTE PTR [rcx], al
	jmp	.L229
	.p2align 4,,10
	.p2align 3
.L318:
	movzx	eax, BYTE PTR [rdx]
	mov	BYTE PTR 0[r13], al
	jmp	.L227
	.p2align 4,,10
	.p2align 3
.L304:
.LEHB14:
	call	_ZSt17__throw_bad_allocv
.LEHE14:
	.p2align 4,,10
	.p2align 3
.L320:
	movzx	eax, BYTE PTR [r10]
	mov	BYTE PTR 0[r13], al
	jmp	.L208
	.p2align 4,,10
	.p2align 3
.L192:
	lea	rcx, 1[rax]
	jmp	.L191
	.p2align 4,,10
	.p2align 3
.L321:
	mov	rax, QWORD PTR 176[rsp]
	mov	rcx, QWORD PTR 40[rsp]
	add	rcx, QWORD PTR -24[rax]
	mov	edx, DWORD PTR 32[rcx]
	or	edx, 4
.LEHB15:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.LEHE15:
	jmp	.L237
	.p2align 4,,10
	.p2align 3
.L322:
	lea	rcx, 1[rbx]
	jmp	.L206
	.p2align 4,,10
	.p2align 3
.L323:
	lea	rcx, 1[rbx]
	jmp	.L226
.L301:
	mov	rdi, QWORD PTR .refptr._ZSt4cerr[rip]
	mov	r8d, 28
	lea	rdx, .LC2[rip]
	mov	rcx, rdi
.LEHB16:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	mov	r8, QWORD PTR 8[rbx]
	mov	rdx, QWORD PTR [rbx]
	mov	rcx, rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	mov	rcx, rax
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
.LEHE16:
	or	ecx, -1
	call	exit
.L312:
	cmp	rbx, 1
	je	.L324
	mov	r13, rbx
	mov	rcx, rdi
	jmp	.L187
	.p2align 4,,10
	.p2align 3
.L324:
	movzx	eax, BYTE PTR [r14]
	mov	rbp, rdi
	mov	BYTE PTR 160[rsp], al
	jmp	.L186
.L256:
.L299:
	lea	rcx, 144[rsp]
	mov	rbx, rax
	vzeroupper
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	.L214
.L257:
	mov	rbx, rax
	vzeroupper
.L214:
	mov	rcx, QWORD PTR 48[rsp]
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
.L242:
	mov	rcx, rsi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	rcx, QWORD PTR 40[rsp]
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	mov	rcx, rbx
.LEHB17:
	call	_Unwind_Resume
.LEHE17:
.L221:
	lea	rcx, .LC0[rip]
.LEHB18:
	call	_ZSt20__throw_length_errorPKc
.LEHE18:
.L303:
	lea	rcx, .LC0[rip]
.LEHB19:
	call	_ZSt20__throw_length_errorPKc
.L263:
	jmp	.L299
.L307:
	lea	rcx, .LC1[rip]
	call	_ZSt20__throw_length_errorPKc
.L245:
	lea	rcx, .LC1[rip]
	call	_ZSt20__throw_length_errorPKc
.L188:
	lea	rcx, .LC0[rip]
	call	_ZSt20__throw_length_errorPKc
.L313:
	lea	rcx, .LC0[rip]
	call	_ZSt20__throw_length_errorPKc
.LEHE19:
.L309:
	lea	rcx, .LC1[rip]
.LEHB20:
	call	_ZSt20__throw_length_errorPKc
.LEHE20:
.L261:
	mov	rcx, QWORD PTR 56[rsp]
	mov	rbx, rax
	vzeroupper
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev
	mov	rax, rbx
	jmp	.L175
.L260:
	vzeroupper
.L175:
	mov	rdx, QWORD PTR -24[r15]
	mov	rsi, QWORD PTR 80[rsp]
	mov	QWORD PTR 176[rsp], r15
	mov	rbx, rax
	mov	QWORD PTR 176[rsp+rdx], rsi
	xor	edx, edx
	mov	QWORD PTR 184[rsp], rdx
	jmp	.L176
.L262:
	mov	rcx, rax
	vzeroupper
	call	__cxa_begin_catch
	call	__cxa_end_catch
	jmp	.L240
.L259:
	mov	rbx, rax
	vzeroupper
.L176:
	mov	rax, QWORD PTR .refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE[rip]
	mov	rcx, QWORD PTR 88[rsp]
	lea	rdx, 16[rax]
	mov	QWORD PTR 384[rsp], rdx
	call	_ZNSt8ios_baseD2Ev
	mov	rcx, rbx
.LEHB21:
	call	_Unwind_Resume
.LEHE21:
.L258:
	mov	rbx, rax
	vzeroupper
	jmp	.L242
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
	.align 4
.LLSDA6238:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT6238-.LLSDATTD6238
.LLSDATTD6238:
	.byte	0x1
	.uleb128 .LLSDACSE6238-.LLSDACSB6238
.LLSDACSB6238:
	.uleb128 .LEHB0-.LFB6238
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L259-.LFB6238
	.uleb128 0
	.uleb128 .LEHB1-.LFB6238
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L260-.LFB6238
	.uleb128 0
	.uleb128 .LEHB2-.LFB6238
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L261-.LFB6238
	.uleb128 0
	.uleb128 .LEHB3-.LFB6238
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L257-.LFB6238
	.uleb128 0
	.uleb128 .LEHB4-.LFB6238
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L263-.LFB6238
	.uleb128 0
	.uleb128 .LEHB5-.LFB6238
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L257-.LFB6238
	.uleb128 0
	.uleb128 .LEHB6-.LFB6238
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L263-.LFB6238
	.uleb128 0
	.uleb128 .LEHB7-.LFB6238
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L256-.LFB6238
	.uleb128 0
	.uleb128 .LEHB8-.LFB6238
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L263-.LFB6238
	.uleb128 0
	.uleb128 .LEHB9-.LFB6238
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L257-.LFB6238
	.uleb128 0
	.uleb128 .LEHB10-.LFB6238
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L262-.LFB6238
	.uleb128 0x1
	.uleb128 .LEHB11-.LFB6238
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L261-.LFB6238
	.uleb128 0
	.uleb128 .LEHB12-.LFB6238
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L263-.LFB6238
	.uleb128 0
	.uleb128 .LEHB13-.LFB6238
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L256-.LFB6238
	.uleb128 0
	.uleb128 .LEHB14-.LFB6238
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L263-.LFB6238
	.uleb128 0
	.uleb128 .LEHB15-.LFB6238
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L257-.LFB6238
	.uleb128 0
	.uleb128 .LEHB16-.LFB6238
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L258-.LFB6238
	.uleb128 0
	.uleb128 .LEHB17-.LFB6238
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB18-.LFB6238
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L256-.LFB6238
	.uleb128 0
	.uleb128 .LEHB19-.LFB6238
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L263-.LFB6238
	.uleb128 0
	.uleb128 .LEHB20-.LFB6238
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L256-.LFB6238
	.uleb128 0
	.uleb128 .LEHB21-.LFB6238
	.uleb128 .LEHE21-.LEHB21
	.uleb128 0
	.uleb128 0
.LLSDACSE6238:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT6238:
	.section	.text$_ZN5Lenia14LoadShaderFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"x"
	.linkonce discard
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC9:
	.ascii "ERROR: Shader Compilation Failed\12\0"
	.section	.text$_ZN5Lenia7SetupGLEPjS0_S0_S0_,"x"
	.linkonce discard
	.p2align 4
	.globl	_ZN5Lenia7SetupGLEPjS0_S0_S0_
	.def	_ZN5Lenia7SetupGLEPjS0_S0_S0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Lenia7SetupGLEPjS0_S0_S0_
_ZN5Lenia7SetupGLEPjS0_S0_S0_:
.LFB6244:
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
	sub	rsp, 1816
	.seh_stackalloc	1816
	vmovups	XMMWORD PTR 1792[rsp], xmm6
	.seh_savexmm	xmm6, 1792
	.seh_endprologue
	mov	r15, rcx
	mov	ecx, 57
	mov	rbp, r8
	mov	rdi, r9
	lea	rsi, 1296[rsp]
	mov	QWORD PTR 1896[rsp], rdx
	lea	rbx, 1280[rsp]
	mov	QWORD PTR 1280[rsp], rsi
.LEHB22:
	call	_Znwy
.LEHE22:
	vmovdqu	ymm1, YMMWORD PTR .LC3[rip]
	vmovdqu	ymm0, YMMWORD PTR .LC4[rip]
	mov	rdx, rbx
	mov	QWORD PTR 1280[rsp], rax
	vmovdqu	YMMWORD PTR [rax], ymm1
	mov	BYTE PTR 56[rax], 0
	vmovdqu	YMMWORD PTR 24[rax], ymm0
	lea	rax, 112[rsp]
	mov	QWORD PTR 1296[rsp], 56
	mov	rcx, rax
	mov	QWORD PTR 1288[rsp], 56
	mov	QWORD PTR 48[rsp], rax
	vzeroupper
.LEHB23:
	call	_ZN5Lenia14LoadShaderFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE23:
	mov	rcx, QWORD PTR 1280[rsp]
	cmp	rcx, rsi
	je	.L326
	mov	rax, QWORD PTR 1296[rsp]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L326:
	mov	ecx, 57
	mov	QWORD PTR 1280[rsp], rsi
.LEHB24:
	call	_Znwy
.LEHE24:
	vmovdqu	ymm2, YMMWORD PTR .LC3[rip]
	vmovdqu	ymm0, YMMWORD PTR .LC5[rip]
	mov	BYTE PTR 56[rax], 0
	mov	rdx, rbx
	mov	QWORD PTR 1280[rsp], rax
	vmovdqu	YMMWORD PTR [rax], ymm2
	vmovdqu	YMMWORD PTR 24[rax], ymm0
	lea	rax, 144[rsp]
	mov	QWORD PTR 1296[rsp], 56
	mov	rcx, rax
	mov	QWORD PTR 1288[rsp], 56
	mov	QWORD PTR 56[rsp], rax
	vzeroupper
.LEHB25:
	call	_ZN5Lenia14LoadShaderFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE25:
	mov	rcx, QWORD PTR 1280[rsp]
	cmp	rcx, rsi
	je	.L327
	mov	rax, QWORD PTR 1296[rsp]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L327:
	mov	ecx, 57
	mov	QWORD PTR 1280[rsp], rsi
.LEHB26:
	call	_Znwy
.LEHE26:
	vmovdqu	ymm3, YMMWORD PTR .LC3[rip]
	vmovdqu	ymm0, YMMWORD PTR .LC6[rip]
	mov	BYTE PTR 56[rax], 0
	mov	rdx, rbx
	mov	QWORD PTR 1280[rsp], rax
	vmovdqu	YMMWORD PTR [rax], ymm3
	vmovdqu	YMMWORD PTR 24[rax], ymm0
	lea	rax, 176[rsp]
	mov	QWORD PTR 1296[rsp], 56
	mov	rcx, rax
	mov	QWORD PTR 1288[rsp], 56
	mov	QWORD PTR 64[rsp], rax
	vzeroupper
.LEHB27:
	call	_ZN5Lenia14LoadShaderFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE27:
	mov	rcx, QWORD PTR 1280[rsp]
	cmp	rcx, rsi
	je	.L328
	mov	rax, QWORD PTR 1296[rsp]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L328:
	mov	rax, QWORD PTR .refptr.glad_glGenVertexArrays[rip]
	mov	rdx, rbp
	mov	ecx, 1
	vmovups	ymm0, YMMWORD PTR .LC7[rip]
	vmovups	YMMWORD PTR 208[rsp], ymm0
	vmovups	xmm0, XMMWORD PTR .LC8[rip]
	vmovups	XMMWORD PTR 240[rsp], xmm0
	vzeroupper
.LEHB28:
	call	[QWORD PTR [rax]]
	mov	rax, QWORD PTR .refptr.glad_glGenBuffers[rip]
	mov	rdx, rdi
	mov	ecx, 1
	call	[QWORD PTR [rax]]
	xor	ecx, ecx
	call	glfwSwapInterval
	mov	rax, QWORD PTR .refptr.glad_glBindVertexArray[rip]
	mov	ecx, DWORD PTR 0[rbp]
	call	[QWORD PTR [rax]]
	mov	rax, QWORD PTR .refptr.glad_glBindBuffer[rip]
	mov	edx, DWORD PTR [rdi]
	mov	ecx, 34962
	call	[QWORD PTR [rax]]
	mov	r9d, 35044
	mov	edx, 48
	mov	ecx, 34962
	mov	rax, QWORD PTR .refptr.glad_glBufferData[rip]
	lea	r8, 208[rsp]
	call	[QWORD PTR [rax]]
	xor	r9d, r9d
	mov	r8d, 5126
	mov	edx, 3
	xor	ecx, ecx
	mov	rax, QWORD PTR .refptr.glad_glVertexAttribPointer[rip]
	mov	DWORD PTR 32[rsp], 12
	mov	QWORD PTR 40[rsp], 0
	call	[QWORD PTR [rax]]
	mov	rax, QWORD PTR .refptr.glad_glEnableVertexAttribArray[rip]
	xor	ecx, ecx
	call	[QWORD PTR [rax]]
	mov	rax, QWORD PTR 112[rsp]
	mov	r12, QWORD PTR .refptr.glad_glCreateShader[rip]
	mov	ecx, 37305
	mov	QWORD PTR 88[rsp], rax
	call	[QWORD PTR [r12]]
	mov	rbp, QWORD PTR .refptr.glad_glShaderSource[rip]
	mov	r14d, eax
	xor	r9d, r9d
	mov	ecx, eax
	lea	r8, 88[rsp]
	mov	edx, 1
	call	[QWORD PTR 0[rbp]]
	mov	rdi, QWORD PTR .refptr.glad_glCompileShader[rip]
	mov	ecx, r14d
	call	[QWORD PTR [rdi]]
	mov	rax, QWORD PTR .refptr.glad_glGetShaderiv[rip]
	mov	r8, rbx
	mov	edx, 35713
	mov	ecx, r14d
	call	[QWORD PTR [rax]]
	mov	ecx, DWORD PTR 1280[rsp]
	test	ecx, ecx
	jne	.L329
	mov	rax, QWORD PTR .refptr.glad_glGetShaderInfoLog[rip]
	xor	r8d, r8d
	mov	edx, 512
	mov	ecx, r14d
	lea	r13, 256[rsp]
	mov	r9, r13
	call	[QWORD PTR [rax]]
	mov	rsi, QWORD PTR .refptr._ZSt4cerr[rip]
	mov	r8d, 33
	lea	rdx, .LC9[rip]
	mov	rcx, rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	mov	rcx, r13
	call	strlen
	mov	rdx, r13
	mov	rcx, rsi
	mov	r8, rax
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	mov	rax, QWORD PTR [rsi]
	mov	rax, QWORD PTR -24[rax]
	mov	r13, QWORD PTR 240[rax+rsi]
	test	r13, r13
	je	.L360
	cmp	BYTE PTR 56[r13], 0
	je	.L331
	movsx	edx, BYTE PTR 67[r13]
.L332:
	mov	rcx, rsi
	call	_ZNSo3putEc
	mov	rcx, rax
	call	_ZNSo5flushEv
.L329:
	mov	rax, QWORD PTR 144[rsp]
	mov	ecx, 35632
	mov	QWORD PTR 96[rsp], rax
	call	[QWORD PTR [r12]]
	mov	r13d, eax
	xor	r9d, r9d
	lea	r8, 96[rsp]
	mov	edx, 1
	mov	ecx, eax
	call	[QWORD PTR 0[rbp]]
	mov	ecx, r13d
	call	[QWORD PTR [rdi]]
	mov	rax, QWORD PTR .refptr.glad_glGetShaderiv[rip]
	mov	r8, rbx
	mov	edx, 35713
	mov	ecx, r13d
	call	[QWORD PTR [rax]]
	mov	edx, DWORD PTR 1280[rsp]
	test	edx, edx
	jne	.L333
	lea	rax, 768[rsp]
	xor	r8d, r8d
	mov	edx, 512
	mov	ecx, r13d
	vmovq	xmm6, rax
	mov	r9, rax
	mov	rax, QWORD PTR .refptr.glad_glGetShaderInfoLog[rip]
	call	[QWORD PTR [rax]]
	mov	rsi, QWORD PTR .refptr._ZSt4cerr[rip]
	mov	r8d, 33
	lea	rdx, .LC9[rip]
	mov	rcx, rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	vmovq	rcx, xmm6
	call	strlen
	mov	rcx, rsi
	mov	r8, rax
	vmovq	rdx, xmm6
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	mov	rax, QWORD PTR [rsi]
	mov	rax, QWORD PTR -24[rax]
	mov	rcx, QWORD PTR 240[rax+rsi]
	test	rcx, rcx
	je	.L361
	cmp	BYTE PTR 56[rcx], 0
	je	.L335
	movsx	edx, BYTE PTR 67[rcx]
.L336:
	mov	rcx, rsi
	call	_ZNSo3putEc
	mov	rcx, rax
	call	_ZNSo5flushEv
.L333:
	mov	rax, QWORD PTR 176[rsp]
	mov	ecx, 35633
	mov	QWORD PTR 104[rsp], rax
	call	[QWORD PTR [r12]]
	mov	r12d, eax
	xor	r9d, r9d
	lea	r8, 104[rsp]
	mov	edx, 1
	mov	ecx, eax
	call	[QWORD PTR 0[rbp]]
	mov	ecx, r12d
	call	[QWORD PTR [rdi]]
	mov	rax, QWORD PTR .refptr.glad_glGetShaderiv[rip]
	lea	r8, 768[rsp]
	mov	edx, 35713
	mov	ecx, r12d
	call	[QWORD PTR [rax]]
	mov	eax, DWORD PTR 768[rsp]
	test	eax, eax
	jne	.L337
	mov	rax, QWORD PTR .refptr.glad_glGetShaderInfoLog[rip]
	mov	r9, rbx
	xor	r8d, r8d
	mov	ecx, r12d
	mov	edx, 512
	call	[QWORD PTR [rax]]
	mov	rsi, QWORD PTR .refptr._ZSt4cerr[rip]
	mov	r8d, 33
	lea	rdx, .LC9[rip]
	mov	rcx, rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	mov	rcx, rbx
	call	strlen
	mov	rdx, rbx
	mov	rcx, rsi
	mov	r8, rax
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	mov	rax, QWORD PTR [rsi]
	mov	rax, QWORD PTR -24[rax]
	mov	rbx, QWORD PTR 240[rax+rsi]
	test	rbx, rbx
	je	.L362
	cmp	BYTE PTR 56[rbx], 0
	je	.L339
	movsx	edx, BYTE PTR 67[rbx]
.L340:
	mov	rcx, rsi
	call	_ZNSo3putEc
	mov	rcx, rax
	call	_ZNSo5flushEv
.L337:
	mov	rax, QWORD PTR 1896[rsp]
	mov	rbx, QWORD PTR .refptr.glad_glAttachShader[rip]
	mov	edx, r14d
	mov	ecx, DWORD PTR [rax]
	call	[QWORD PTR [rbx]]
	mov	rax, QWORD PTR 1896[rsp]
	mov	rsi, QWORD PTR .refptr.glad_glLinkProgram[rip]
	mov	ecx, DWORD PTR [rax]
	call	[QWORD PTR [rsi]]
	mov	ecx, DWORD PTR [r15]
	mov	edx, r13d
	call	[QWORD PTR [rbx]]
	mov	ecx, DWORD PTR [r15]
	mov	edx, r12d
	call	[QWORD PTR [rbx]]
	mov	ecx, DWORD PTR [r15]
	call	[QWORD PTR [rsi]]
	mov	rbx, QWORD PTR .refptr.glad_glDeleteShader[rip]
	mov	ecx, r14d
	call	[QWORD PTR [rbx]]
	mov	ecx, r13d
	call	[QWORD PTR [rbx]]
	mov	ecx, r12d
	call	[QWORD PTR [rbx]]
	mov	rcx, QWORD PTR 176[rsp]
	lea	rax, 192[rsp]
	cmp	rcx, rax
	je	.L341
	mov	rax, QWORD PTR 192[rsp]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L341:
	mov	rcx, QWORD PTR 144[rsp]
	lea	rax, 160[rsp]
	cmp	rcx, rax
	je	.L342
	mov	rax, QWORD PTR 160[rsp]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L342:
	mov	rcx, QWORD PTR 112[rsp]
	lea	rax, 128[rsp]
	cmp	rcx, rax
	je	.L359
	mov	rax, QWORD PTR 128[rsp]
	lea	rdx, 1[rax]
	call	_ZdlPvy
	nop
.L359:
	vmovups	xmm6, XMMWORD PTR 1792[rsp]
	add	rsp, 1816
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
.L331:
	mov	rcx, r13
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	mov	rax, QWORD PTR 0[r13]
	lea	r8, _ZNKSt5ctypeIcE8do_widenEc[rip]
	mov	edx, 10
	mov	rax, QWORD PTR 48[rax]
	cmp	rax, r8
	je	.L332
	mov	rcx, r13
	call	rax
	movsx	edx, al
	jmp	.L332
	.p2align 4,,10
	.p2align 3
.L335:
	mov	QWORD PTR 72[rsp], rcx
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	mov	rcx, QWORD PTR 72[rsp]
	lea	r8, _ZNKSt5ctypeIcE8do_widenEc[rip]
	mov	edx, 10
	mov	rax, QWORD PTR [rcx]
	mov	rax, QWORD PTR 48[rax]
	cmp	rax, r8
	je	.L336
	call	rax
	movsx	edx, al
	jmp	.L336
	.p2align 4,,10
	.p2align 3
.L339:
	mov	rcx, rbx
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	mov	rax, QWORD PTR [rbx]
	lea	rcx, _ZNKSt5ctypeIcE8do_widenEc[rip]
	mov	edx, 10
	mov	rax, QWORD PTR 48[rax]
	cmp	rax, rcx
	je	.L340
	mov	rcx, rbx
	call	rax
.LEHE28:
	movsx	edx, al
	jmp	.L340
.L353:
	mov	rsi, rax
	mov	rcx, rbx
	vzeroupper
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	rcx, rsi
.LEHB29:
	call	_Unwind_Resume
.LEHE29:
.L361:
.LEHB30:
	call	_ZSt16__throw_bad_castv
.L362:
	call	_ZSt16__throw_bad_castv
.LEHE30:
.L356:
	mov	rsi, rax
	mov	rcx, rbx
	vzeroupper
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	rbx, rsi
	jmp	.L348
.L357:
	mov	rbx, rax
	vzeroupper
.L348:
	mov	rcx, QWORD PTR 56[rsp]
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
.L346:
	mov	rcx, QWORD PTR 48[rsp]
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	rcx, rbx
.LEHB31:
	call	_Unwind_Resume
.LEHE31:
.L354:
	mov	rsi, rax
	mov	rcx, rbx
	vzeroupper
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	rbx, rsi
	jmp	.L346
.L355:
	mov	rbx, rax
	vzeroupper
	jmp	.L346
.L360:
.LEHB32:
	call	_ZSt16__throw_bad_castv
.LEHE32:
.L358:
	mov	rcx, QWORD PTR 64[rsp]
	mov	rbx, rax
	vzeroupper
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	.L348
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6244:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6244-.LLSDACSB6244
.LLSDACSB6244:
	.uleb128 .LEHB22-.LFB6244
	.uleb128 .LEHE22-.LEHB22
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB23-.LFB6244
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L353-.LFB6244
	.uleb128 0
	.uleb128 .LEHB24-.LFB6244
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L355-.LFB6244
	.uleb128 0
	.uleb128 .LEHB25-.LFB6244
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L354-.LFB6244
	.uleb128 0
	.uleb128 .LEHB26-.LFB6244
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L357-.LFB6244
	.uleb128 0
	.uleb128 .LEHB27-.LFB6244
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L356-.LFB6244
	.uleb128 0
	.uleb128 .LEHB28-.LFB6244
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L358-.LFB6244
	.uleb128 0
	.uleb128 .LEHB29-.LFB6244
	.uleb128 .LEHE29-.LEHB29
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB30-.LFB6244
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L358-.LFB6244
	.uleb128 0
	.uleb128 .LEHB31-.LFB6244
	.uleb128 .LEHE31-.LEHB31
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB32-.LFB6244
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L358-.LFB6244
	.uleb128 0
.LLSDACSE6244:
	.section	.text$_ZN5Lenia7SetupGLEPjS0_S0_S0_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5Lenia6AnimalEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE22_M_emplace_hint_uniqueIJRS5_RSA_EEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5Lenia6AnimalEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE22_M_emplace_hint_uniqueIJRS5_RSA_EEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_
	.def	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5Lenia6AnimalEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE22_M_emplace_hint_uniqueIJRS5_RSA_EEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5Lenia6AnimalEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE22_M_emplace_hint_uniqueIJRS5_RSA_EEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5Lenia6AnimalEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE22_M_emplace_hint_uniqueIJRS5_RSA_EEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_:
.LFB8183:
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
	mov	rsi, r8
	mov	rdi, rcx
	mov	ecx, 72
	mov	r13, rdx
	mov	rbp, r9
.LEHB33:
	call	_Znwy
.LEHE33:
	mov	r14, QWORD PTR [rsi]
	mov	rsi, QWORD PTR 8[rsi]
	lea	r12, 48[rax]
	mov	rbx, rax
	mov	QWORD PTR 32[rax], r12
	cmp	rsi, 15
	ja	.L393
	cmp	rsi, 1
	je	.L394
	test	rsi, rsi
	jne	.L395
.L370:
	mov	rax, r12
.L369:
	mov	QWORD PTR 40[rbx], rsi
	lea	rcx, 64[rsp]
	mov	r8, r13
	mov	rdx, rdi
	mov	BYTE PTR [rax+rsi], 0
	mov	rax, QWORD PTR 0[rbp]
	mov	r14, QWORD PTR 40[rbx]
	mov	rsi, QWORD PTR 32[rbx]
	mov	QWORD PTR 64[rbx], rax
	mov	QWORD PTR 32[rsp], r14
	mov	r9, rsi
	call	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5Lenia6AnimalEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISB_ERS7_.isra.0
	mov	rbp, QWORD PTR 72[rsp]
	mov	rax, QWORD PTR 64[rsp]
	test	rbp, rbp
	je	.L396
	mov	ecx, 1
	lea	r9, 8[rdi]
	test	rax, rax
	je	.L397
.L375:
	mov	r8, rbp
	mov	rdx, rbx
	call	_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_
	add	QWORD PTR 40[rdi], 1
	mov	rdi, rbx
.L378:
	mov	rax, rdi
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
.L394:
	movzx	eax, BYTE PTR [r14]
	mov	BYTE PTR 48[rbx], al
	jmp	.L370
	.p2align 4,,10
	.p2align 3
.L396:
	mov	rdi, rax
	cmp	rsi, r12
	je	.L379
	mov	rax, QWORD PTR 48[rbx]
	mov	rcx, rsi
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L379:
	mov	edx, 72
	mov	rcx, rbx
	call	_ZdlPvy
	jmp	.L378
	.p2align 4,,10
	.p2align 3
.L393:
	test	rsi, rsi
	js	.L398
	mov	rcx, rsi
	add	rcx, 1
	js	.L399
.LEHB34:
	call	_Znwy
	mov	QWORD PTR 32[rbx], rax
	mov	rcx, rax
	mov	QWORD PTR 48[rbx], rsi
.L367:
	mov	r8, rsi
	mov	rdx, r14
	call	memcpy
	mov	rax, QWORD PTR 32[rbx]
	jmp	.L369
	.p2align 4,,10
	.p2align 3
.L397:
	cmp	rbp, r9
	je	.L375
	mov	r12, QWORD PTR 40[rbp]
	cmp	r14, r12
	mov	r8, r12
	cmovbe	r8, r14
	test	r8, r8
	je	.L376
	mov	rdx, QWORD PTR 32[rbp]
	mov	rcx, rsi
	mov	QWORD PTR 56[rsp], r9
	call	memcmp
	mov	r9, QWORD PTR 56[rsp]
	test	eax, eax
	mov	ecx, eax
	jne	.L377
.L376:
	mov	rdx, r14
	xor	ecx, ecx
	sub	rdx, r12
	cmp	rdx, 2147483647
	jg	.L375
	cmp	rdx, -2147483648
	jl	.L383
	mov	ecx, edx
.L377:
	shr	ecx, 31
	jmp	.L375
	.p2align 4,,10
	.p2align 3
.L399:
	call	_ZSt17__throw_bad_allocv
	.p2align 4,,10
	.p2align 3
.L395:
	mov	rcx, r12
	jmp	.L367
.L383:
	mov	ecx, 1
	jmp	.L375
.L398:
	lea	rcx, .LC0[rip]
	call	_ZSt20__throw_length_errorPKc
.LEHE34:
.L384:
	mov	rcx, rax
	vzeroupper
	call	__cxa_begin_catch
	mov	edx, 72
	mov	rcx, rbx
	call	_ZdlPvy
.LEHB35:
	call	__cxa_rethrow
.LEHE35:
.L385:
	mov	rbx, rax
	vzeroupper
	call	__cxa_end_catch
	mov	rcx, rbx
.LEHB36:
	call	_Unwind_Resume
	nop
.LEHE36:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
	.align 4
.LLSDA8183:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT8183-.LLSDATTD8183
.LLSDATTD8183:
	.byte	0x1
	.uleb128 .LLSDACSE8183-.LLSDACSB8183
.LLSDACSB8183:
	.uleb128 .LEHB33-.LFB8183
	.uleb128 .LEHE33-.LEHB33
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB34-.LFB8183
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L384-.LFB8183
	.uleb128 0x1
	.uleb128 .LEHB35-.LFB8183
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L385-.LFB8183
	.uleb128 0
	.uleb128 .LEHB36-.LFB8183
	.uleb128 .LEHE36-.LEHB36
	.uleb128 0
	.uleb128 0
.LLSDACSE8183:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT8183:
	.section	.text$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5Lenia6AnimalEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE22_M_emplace_hint_uniqueIJRS5_RSA_EEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_,"x"
	.linkonce discard
	.seh_endproc
	.section .rdata,"dr"
.LC10:
	.ascii "Failed to initialize GLFW\0"
.LC11:
	.ascii "\0"
.LC12:
	.ascii "resources/animals.csv\0"
	.align 8
.LC13:
	.ascii "file resources/animals.csv couldn't be opened\0"
	.align 8
.LC14:
	.ascii "basic_string: construction from null is not valid\0"
.LC15:
	.ascii "vector::_M_realloc_append\0"
.LC16:
	.ascii "stoul\0"
.LC17:
	.ascii "stof\0"
.LC18:
	.ascii "stoi\0"
.LC20:
	.ascii "Paused: \0"
	.section	.text.startup,"x"
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB6823:
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
	sub	rsp, 2280
	.seh_stackalloc	2280
	vmovups	XMMWORD PTR 2112[rsp], xmm6
	.seh_savexmm	xmm6, 2112
	vmovups	XMMWORD PTR 2128[rsp], xmm7
	.seh_savexmm	xmm7, 2128
	vmovups	XMMWORD PTR 2144[rsp], xmm8
	.seh_savexmm	xmm8, 2144
	vmovups	XMMWORD PTR 2160[rsp], xmm9
	.seh_savexmm	xmm9, 2160
	vmovups	XMMWORD PTR 2176[rsp], xmm10
	.seh_savexmm	xmm10, 2176
	vmovups	XMMWORD PTR 2192[rsp], xmm11
	.seh_savexmm	xmm11, 2192
	vmovups	XMMWORD PTR 2208[rsp], xmm12
	.seh_savexmm	xmm12, 2208
	vmovups	XMMWORD PTR 2224[rsp], xmm13
	.seh_savexmm	xmm13, 2224
	vmovups	XMMWORD PTR 2240[rsp], xmm14
	.seh_savexmm	xmm14, 2240
	vmovups	XMMWORD PTR 2256[rsp], xmm15
	.seh_savexmm	xmm15, 2256
	.seh_endprologue
	call	__main
.LEHB37:
	call	glfwInit
	test	eax, eax
	je	.L858
	xor	r9d, r9d
	mov	edx, 1024
	mov	ecx, 1024
	mov	QWORD PTR 32[rsp], 0
	lea	r8, .LC11[rip]
	call	glfwCreateWindow
	vmovq	xmm12, rax
	test	rax, rax
	je	.L859
	mov	rcx, rax
	call	glfwMakeContextCurrent
	mov	rcx, QWORD PTR .refptr.glfwGetProcAddress[rip]
	call	gladLoadGLLoader
	mov	rbx, QWORD PTR .refptr.glad_glCreateProgram[rip]
	call	[QWORD PTR [rbx]]
	vmovd	xmm13, eax
	mov	DWORD PTR 384[rsp], eax
	call	[QWORD PTR [rbx]]
	lea	r9, 396[rsp]
	lea	rdx, 388[rsp]
	vmovd	xmm14, eax
	mov	DWORD PTR 388[rsp], eax
	lea	rax, 392[rsp]
	lea	rcx, 384[rsp]
	mov	r8, rax
	mov	QWORD PTR 352[rsp], r9
	mov	QWORD PTR 344[rsp], rax
	call	_ZN5Lenia7SetupGLEPjS0_S0_S0_
	lea	rax, 1632[rsp]
	mov	r8d, 770
	lea	rdx, .LC12[rip]
	mov	rcx, rax
	mov	WORD PTR 406[rsp], r8w
	mov	r8d, 8
	mov	QWORD PTR 144[rsp], rax
	mov	DWORD PTR 402[rsp], 131328
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.LEHE37:
	lea	rcx, 1720[rsp]
	call	_ZNKSt12__basic_fileIcE7is_openEv
	mov	BYTE PTR 299[rsp], al
	test	al, al
	je	.L860
	lea	rax, 432[rsp]
	mov	BYTE PTR 432[rsp], 0
	mov	QWORD PTR 416[rsp], rax
	mov	rax, QWORD PTR 1632[rsp]
	mov	QWORD PTR 424[rsp], 0
	mov	rax, QWORD PTR -24[rax]
	mov	rbx, QWORD PTR 1872[rsp+rax]
	lea	rax, 416[rsp]
	mov	QWORD PTR 208[rsp], rax
	test	rbx, rbx
	je	.L628
	mov	rax, QWORD PTR .refptr._ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE[rip]
	add	rax, 64
	vmovq	xmm11, rax
	mov	rax, QWORD PTR .refptr._ZTVSt15basic_streambufIcSt11char_traitsIcEE[rip]
	add	rax, 16
	vpinsrq	xmm7, xmm11, rax, 1
.L407:
	cmp	BYTE PTR 56[rbx], 0
	je	.L631
	movsx	r8d, BYTE PTR 67[rbx]
.L632:
	mov	rdx, QWORD PTR 208[rsp]
	mov	rcx, QWORD PTR 144[rsp]
.LEHB38:
	call	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_
.LEHE38:
	mov	rdx, QWORD PTR [rax]
	mov	rdx, QWORD PTR -24[rdx]
	test	BYTE PTR 32[rax+rdx], 5
	jne	.L861
	lea	rax, 960[rsp]
	lea	rsi, 832[rsp]
	mov	rcx, rax
	mov	QWORD PTR 120[rsp], rsi
	mov	QWORD PTR 192[rsp], rax
	call	_ZNSt8ios_baseC2Ev
	mov	rbx, QWORD PTR .refptr._ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE[rip]
	xor	ecx, ecx
	xor	edx, edx
	mov	rax, QWORD PTR .refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE[rip]
	vpxor	xmm0, xmm0, xmm0
	mov	WORD PTR 1184[rsp], cx
	mov	rbp, QWORD PTR 16[rbx]
	mov	rdi, QWORD PTR 24[rbx]
	vmovdqu	YMMWORD PTR 1192[rsp], ymm0
	mov	QWORD PTR 1176[rsp], 0
	add	rax, 16
	mov	QWORD PTR 960[rsp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR 832[rsp], rbp
	mov	QWORD PTR 152[rsp], rdi
	mov	QWORD PTR 832[rsp+rax], rdi
	mov	QWORD PTR 840[rsp], 0
	add	rsi, QWORD PTR -24[rbp]
	mov	rcx, rsi
	vzeroupper
.LEHB39:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
.LEHE39:
	mov	rax, QWORD PTR 32[rbx]
	xor	edx, edx
	mov	QWORD PTR 848[rsp], rax
	mov	QWORD PTR 160[rsp], rax
	mov	rax, QWORD PTR -24[rax]
	lea	rcx, 848[rsp+rax]
	mov	rax, QWORD PTR 40[rbx]
	mov	QWORD PTR [rcx], rax
	mov	QWORD PTR 168[rsp], rax
.LEHB40:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
.LEHE40:
	mov	rax, QWORD PTR 8[rbx]
	mov	rsi, QWORD PTR 48[rbx]
	vpxor	xmm0, xmm0, xmm0
	mov	QWORD PTR 176[rsp], rax
	mov	rax, QWORD PTR -24[rax]
	mov	QWORD PTR 184[rsp], rsi
	mov	QWORD PTR 832[rsp+rax], rsi
	mov	rax, QWORD PTR .refptr._ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE[rip]
	vmovdqu	YMMWORD PTR 864[rsp], ymm0
	vpxor	xmm0, xmm0, xmm0
	vmovdqu	XMMWORD PTR 848[rsp], xmm7
	add	rax, 24
	mov	QWORD PTR 832[rsp], rax
	mov	rax, QWORD PTR .refptr._ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE[rip]
	vmovdqu	XMMWORD PTR 896[rsp], xmm0
	add	rax, 104
	mov	QWORD PTR 960[rsp], rax
	lea	rax, 912[rsp]
	mov	QWORD PTR 224[rsp], rax
	mov	rcx, rax
	vzeroupper
	call	_ZNSt6localeC1Ev
	mov	rax, QWORD PTR .refptr._ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE[rip]
	mov	rsi, QWORD PTR 416[rsp]
	mov	DWORD PTR 920[rsp], 0
	mov	rbx, QWORD PTR 424[rsp]
	add	rax, 16
	mov	QWORD PTR 856[rsp], rax
	lea	rax, 944[rsp]
	mov	QWORD PTR 232[rsp], rax
	mov	QWORD PTR 928[rsp], rax
	test	rsi, rsi
	jne	.L410
	test	rbx, rbx
	jne	.L862
.L410:
	cmp	rbx, 15
	ja	.L863
	cmp	rbx, 1
	jne	.L417
	movzx	eax, BYTE PTR [rsi]
	mov	BYTE PTR 944[rsp], al
.L418:
	mov	rax, QWORD PTR 928[rsp]
	mov	QWORD PTR 936[rsp], rbx
	xor	r9d, r9d
	xor	r8d, r8d
	mov	BYTE PTR [rax+rbx], 0
	lea	rbx, 856[rsp]
	mov	rdx, QWORD PTR 928[rsp]
	mov	DWORD PTR 920[rsp], 24
	mov	rcx, rbx
.LEHB41:
	call	_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcyy
.LEHE41:
	mov	rcx, QWORD PTR 192[rsp]
	mov	rdx, rbx
.LEHB42:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
.LEHE42:
	lea	rax, 464[rsp]
	xor	ebx, ebx
	xor	esi, esi
	mov	QWORD PTR 456[rsp], 0
	mov	QWORD PTR 448[rsp], rax
	vmovq	xmm15, rax
	lea	rax, 448[rsp]
	movabs	r15, 288230376151711743
	mov	BYTE PTR 464[rsp], 0
	mov	QWORD PTR 104[rsp], 0
	mov	QWORD PTR 96[rsp], rax
	.p2align 4
	.p2align 3
.L426:
	mov	rdx, QWORD PTR 96[rsp]
	mov	rcx, QWORD PTR 120[rsp]
	mov	r8d, 44
.LEHB43:
	call	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_
	mov	rdx, QWORD PTR [rax]
	mov	rdx, QWORD PTR -24[rdx]
	test	BYTE PTR 32[rax+rdx], 5
	jne	.L864
	cmp	QWORD PTR 104[rsp], rbx
	je	.L427
	mov	rdi, QWORD PTR 456[rsp]
	lea	rcx, 16[rbx]
	mov	r12, QWORD PTR 448[rsp]
	mov	QWORD PTR [rbx], rcx
	cmp	rdi, 15
	ja	.L865
	cmp	rdi, 1
	je	.L866
	test	rdi, rdi
	jne	.L431
.L433:
	mov	QWORD PTR 8[rbx], rdi
	add	rbx, 32
	mov	BYTE PTR [rcx+rdi], 0
	jmp	.L426
	.p2align 4,,10
	.p2align 3
.L427:
	mov	r13, QWORD PTR 104[rsp]
	sub	r13, rsi
	mov	rax, r13
	sar	rax, 5
	cmp	rax, r15
	je	.L867
	test	rax, rax
	mov	edi, 1
	cmovne	rdi, rax
	add	rdi, rax
	jc	.L438
	movabs	rax, 288230376151711743
	cmp	rdi, rax
	cmova	rdi, rax
	sal	rdi, 5
.L439:
	mov	rcx, rdi
	call	_Znwy
	add	r13, rax
	mov	r14, QWORD PTR 456[rsp]
	mov	rdx, QWORD PTR 448[rsp]
	mov	r12, rax
	lea	rcx, 16[r13]
	mov	QWORD PTR 0[r13], rcx
	cmp	r14, 15
	ja	.L868
	cmp	r14, 1
	je	.L869
	test	r14, r14
	jne	.L443
.L445:
	mov	QWORD PTR 8[r13], r14
	mov	BYTE PTR [rcx+r14], 0
	cmp	rsi, rbx
	je	.L687
.L940:
	lea	rax, 16[rsi]
	lea	r9, 16[rbx]
	mov	rdx, r12
	.p2align 6
	.p2align 4
	.p2align 3
.L457:
	lea	r8, 16[rdx]
	mov	r10, QWORD PTR -8[rax]
	mov	QWORD PTR [rdx], r8
	mov	rcx, QWORD PTR -16[rax]
	cmp	rcx, rax
	je	.L870
	mov	QWORD PTR [rdx], rcx
	mov	rcx, QWORD PTR [rax]
	add	rax, 32
	add	rdx, 32
	mov	QWORD PTR -24[rdx], r10
	mov	QWORD PTR -16[rdx], rcx
	cmp	rax, r9
	jne	.L457
.L456:
	sub	rbx, rsi
	add	rbx, r12
.L447:
	add	rbx, 32
	test	rsi, rsi
	je	.L458
	mov	rdx, QWORD PTR 104[rsp]
	mov	rcx, rsi
	sub	rdx, rsi
	call	_ZdlPvy
.L458:
	lea	rax, [r12+rdi]
	mov	rsi, r12
	mov	QWORD PTR 104[rsp], rax
	jmp	.L426
	.p2align 4,,10
	.p2align 3
.L870:
	lea	rcx, 1[r10]
	cmp	ecx, 8
	jnb	.L449
	test	cl, 4
	jne	.L871
	test	ecx, ecx
	je	.L450
	movzx	r10d, BYTE PTR [rax]
	mov	BYTE PTR [r8], r10b
	test	cl, 2
	jne	.L835
.L854:
	mov	r10, QWORD PTR -8[rax]
.L450:
	add	rax, 32
	mov	QWORD PTR 8[rdx], r10
	add	rdx, 32
	cmp	r9, rax
	jne	.L457
	jmp	.L456
	.p2align 4,,10
	.p2align 3
.L865:
	test	rdi, rdi
	js	.L872
	mov	rcx, rdi
	add	rcx, 1
	js	.L873
	call	_Znwy
	mov	QWORD PTR [rbx], rax
	mov	rcx, rax
	mov	QWORD PTR 16[rbx], rdi
.L431:
	mov	r8, rdi
	mov	rdx, r12
	call	memcpy
	mov	rcx, QWORD PTR [rbx]
	jmp	.L433
	.p2align 4,,10
	.p2align 3
.L866:
	movzx	edx, BYTE PTR [r12]
	mov	BYTE PTR 16[rbx], dl
	jmp	.L433
	.p2align 4,,10
	.p2align 3
.L449:
	mov	r10, QWORD PTR [rax]
	mov	QWORD PTR [r8], r10
	mov	r10d, ecx
	mov	r11, QWORD PTR -8[rax+r10]
	mov	QWORD PTR -8[r8+r10], r11
	lea	r10, 24[rdx]
	mov	r11, rax
	and	r10, -8
	sub	r8, r10
	add	ecx, r8d
	sub	r11, r8
	and	ecx, -8
	cmp	ecx, 8
	jb	.L854
	and	ecx, -8
	xor	r8d, r8d
.L453:
	mov	r13d, r8d
	add	r8d, 8
	mov	r14, QWORD PTR [r11+r13]
	mov	QWORD PTR [r10+r13], r14
	cmp	r8d, ecx
	jb	.L453
	jmp	.L854
	.p2align 4,,10
	.p2align 3
.L864:
	mov	r13, QWORD PTR 160[rsi]
	mov	r12, QWORD PTR __imp__errno[rip]
	call	r12
	mov	edi, DWORD PTR [rax]
	call	r12
.LEHE43:
	mov	DWORD PTR [rax], 0
	mov	r8d, 10
	mov	rcx, r13
	lea	rax, 1232[rsp]
	mov	rdx, rax
	mov	QWORD PTR 112[rsp], rax
	call	strtoul
	mov	DWORD PTR 276[rsp], eax
	cmp	r13, QWORD PTR 1232[rsp]
	je	.L874
.LEHB44:
	call	r12
.LEHE44:
	cmp	DWORD PTR [rax], 34
	je	.L875
	call	r12
	mov	r15d, DWORD PTR [rax]
	test	r15d, r15d
	je	.L876
.L464:
	mov	rdi, QWORD PTR 192[rsi]
.LEHB45:
	call	r12
	mov	r13d, DWORD PTR [rax]
	mov	DWORD PTR 672[rsp], r13d
	call	r12
.LEHE45:
	mov	DWORD PTR [rax], 0
	mov	rdx, QWORD PTR 112[rsp]
	mov	rcx, rdi
.LEHB46:
	call	__mingw_strtof
.LEHE46:
	vmovss	xmm8, xmm0, xmm0
	cmp	rdi, QWORD PTR 1232[rsp]
	je	.L877
.LEHB47:
	call	r12
.LEHE47:
	cmp	DWORD PTR [rax], 34
	je	.L878
	call	r12
	mov	r14d, DWORD PTR [rax]
	test	r14d, r14d
	je	.L879
.L470:
	lea	rax, 1360[rsp]
	xor	r13d, r13d
	mov	rcx, rax
	mov	QWORD PTR 200[rsp], rax
	call	_ZNSt8ios_baseC2Ev
	mov	rax, QWORD PTR .refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE[rip]
	xor	edx, edx
	vpxor	xmm0, xmm0, xmm0
	mov	WORD PTR 1584[rsp], r13w
	mov	rdi, QWORD PTR 152[rsp]
	add	rax, 16
	mov	QWORD PTR 1232[rsp], rbp
	mov	rcx, QWORD PTR 112[rsp]
	vmovdqu	YMMWORD PTR 1592[rsp], ymm0
	mov	QWORD PTR 1360[rsp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR 1576[rsp], 0
	mov	QWORD PTR 1232[rsp+rax], rdi
	mov	QWORD PTR 1240[rsp], 0
	add	rcx, QWORD PTR -24[rbp]
	vzeroupper
.LEHB48:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
.LEHE48:
	mov	rax, QWORD PTR 160[rsp]
	xor	edx, edx
	mov	QWORD PTR 1248[rsp], rax
	mov	rax, QWORD PTR -24[rax]
	lea	rcx, 1248[rsp+rax]
	mov	rax, QWORD PTR 168[rsp]
	mov	QWORD PTR [rcx], rax
.LEHB49:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
.LEHE49:
	mov	rax, QWORD PTR 176[rsp]
	mov	rdi, QWORD PTR 184[rsp]
	vpxor	xmm0, xmm0, xmm0
	mov	rax, QWORD PTR -24[rax]
	mov	QWORD PTR 1232[rsp+rax], rdi
	mov	rax, QWORD PTR .refptr._ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE[rip]
	vmovdqu	YMMWORD PTR 1264[rsp], ymm0
	vpxor	xmm0, xmm0, xmm0
	vmovdqu	XMMWORD PTR 1248[rsp], xmm7
	add	rax, 24
	mov	QWORD PTR 1232[rsp], rax
	mov	rax, QWORD PTR .refptr._ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE[rip]
	vmovdqu	XMMWORD PTR 1296[rsp], xmm0
	add	rax, 104
	mov	QWORD PTR 1360[rsp], rax
	lea	rax, 1312[rsp]
	mov	QWORD PTR 256[rsp], rax
	mov	rcx, rax
	vzeroupper
	call	_ZNSt6localeC1Ev
	mov	rax, QWORD PTR .refptr._ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE[rip]
	mov	r13, QWORD PTR 224[rsi]
	mov	DWORD PTR 1320[rsp], 0
	mov	rdi, QWORD PTR 232[rsi]
	add	rax, 16
	mov	QWORD PTR 1256[rsp], rax
	lea	rax, 1344[rsp]
	mov	QWORD PTR 240[rsp], rax
	mov	QWORD PTR 1328[rsp], rax
	test	r13, r13
	jne	.L475
	test	rdi, rdi
	jne	.L880
.L475:
	cmp	rdi, 15
	ja	.L881
	cmp	rdi, 1
	je	.L882
	test	rdi, rdi
	jne	.L883
.L483:
	mov	rax, QWORD PTR 1328[rsp]
	mov	QWORD PTR 1336[rsp], rdi
	xor	r9d, r9d
	xor	r8d, r8d
	mov	BYTE PTR [rax+rdi], 0
	lea	rdi, 1256[rsp]
	mov	rdx, QWORD PTR 1328[rsp]
	mov	DWORD PTR 1320[rsp], 24
	mov	rcx, rdi
.LEHB50:
	call	_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcyy
.LEHE50:
	mov	rcx, QWORD PTR 200[rsp]
	mov	rdx, rdi
.LEHB51:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
.LEHE51:
	lea	rax, 672[rsp]
	xor	edi, edi
	xor	r13d, r13d
	mov	QWORD PTR 128[rsp], 0
	vmovq	xmm10, rax
	.p2align 4
	.p2align 3
.L488:
	mov	rdx, QWORD PTR 96[rsp]
	mov	rcx, QWORD PTR 112[rsp]
	mov	r8d, 59
.LEHB52:
	call	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_
	mov	rdx, QWORD PTR [rax]
	mov	rdx, QWORD PTR -24[rdx]
	test	BYTE PTR 32[rax+rdx], 5
	jne	.L884
	mov	r14, QWORD PTR 448[rsp]
	call	r12
	mov	r15d, DWORD PTR [rax]
	mov	DWORD PTR 512[rsp], r15d
	call	r12
.LEHE52:
	mov	DWORD PTR [rax], 0
	vmovq	rdx, xmm10
	mov	rcx, r14
.LEHB53:
	call	__mingw_strtof
.LEHE53:
	vmovss	xmm6, xmm0, xmm0
	cmp	r14, QWORD PTR 672[rsp]
	je	.L885
.LEHB54:
	call	r12
.LEHE54:
	cmp	DWORD PTR [rax], 34
	je	.L886
	call	r12
	mov	r11d, DWORD PTR [rax]
	test	r11d, r11d
	je	.L887
	cmp	r13, rdi
	je	.L888
.L493:
	vmovss	DWORD PTR 0[r13], xmm6
	add	r13, 4
	jmp	.L488
	.p2align 4,,10
	.p2align 3
.L887:
	call	r12
	mov	DWORD PTR [rax], r15d
	cmp	r13, rdi
	jne	.L493
.L888:
	mov	rax, QWORD PTR 128[rsp]
	mov	r8, rdi
	sub	r8, rax
	movabs	rax, 2305843009213693951
	mov	rdx, r8
	sar	rdx, 2
	cmp	rdx, rax
	je	.L889
	test	rdx, rdx
	mov	eax, 1
	movabs	r14, 2305843009213693951
	cmovne	rax, rdx
	add	rax, rdx
	jc	.L501
	cmp	rax, r14
	cmovbe	r14, rax
.L501:
	sal	r14, 2
	mov	QWORD PTR 136[rsp], r8
	mov	rcx, r14
.LEHB55:
	call	_Znwy
	mov	r8, QWORD PTR 136[rsp]
	mov	r15, rax
	vmovss	DWORD PTR [rax+r8], xmm6
	lea	r13, 4[rax+r8]
	test	r8, r8
	jg	.L890
	cmp	QWORD PTR 128[rsp], 0
	jne	.L503
.L504:
	mov	QWORD PTR 128[rsp], r15
	lea	rdi, [r15+r14]
	jmp	.L488
	.p2align 4,,10
	.p2align 3
.L884:
	mov	rax, QWORD PTR 128[rsp]
	sub	r13, rax
	movabs	rax, 9223372036854775800
	cmp	rax, r13
	jb	.L506
	mov	rcx, r13
	call	_Znay
	vmovq	xmm6, rax
	cmp	r13, 4
	jle	.L891
	mov	rdx, QWORD PTR 128[rsp]
	mov	r8, r13
	mov	rcx, rax
	call	memcpy
.L509:
	mov	r15, r13
	mov	r13, QWORD PTR 256[rsi]
	sar	r15, 2
	call	r12
	mov	r14d, DWORD PTR [rax]
	mov	DWORD PTR 512[rsp], r14d
	call	r12
.LEHE55:
	mov	DWORD PTR [rax], 0
	lea	rax, 672[rsp]
	mov	rcx, r13
	mov	rdx, rax
	mov	QWORD PTR 136[rsp], rax
.LEHB56:
	call	__mingw_strtof
.LEHE56:
	vmovss	xmm10, xmm0, xmm0
	cmp	r13, QWORD PTR 672[rsp]
	je	.L892
.LEHB57:
	call	r12
.LEHE57:
	cmp	DWORD PTR [rax], 34
	je	.L893
	call	r12
	mov	r10d, DWORD PTR [rax]
	test	r10d, r10d
	je	.L894
.L512:
	mov	r13, QWORD PTR 288[rsi]
.LEHB58:
	call	r12
	mov	r14d, DWORD PTR [rax]
	mov	DWORD PTR 512[rsp], r14d
	call	r12
.LEHE58:
	mov	DWORD PTR [rax], 0
	mov	rdx, QWORD PTR 136[rsp]
	mov	rcx, r13
.LEHB59:
	call	__mingw_strtof
.LEHE59:
	vmovss	xmm9, xmm0, xmm0
	cmp	r13, QWORD PTR 672[rsp]
	je	.L895
.LEHB60:
	call	r12
.LEHE60:
	cmp	DWORD PTR [rax], 34
	je	.L896
	call	r12
	mov	r9d, DWORD PTR [rax]
	test	r9d, r9d
	je	.L897
.L517:
	mov	r13, QWORD PTR 320[rsi]
.LEHB61:
	call	r12
	mov	r14d, DWORD PTR [rax]
	mov	DWORD PTR 512[rsp], r14d
	call	r12
.LEHE61:
	mov	DWORD PTR [rax], 0
	mov	rdx, QWORD PTR 136[rsp]
	mov	r8d, 10
	mov	rcx, r13
	call	strtol
	mov	DWORD PTR 300[rsp], eax
	cmp	r13, QWORD PTR 672[rsp]
	je	.L898
.LEHB62:
	call	r12
.LEHE62:
	cmp	DWORD PTR [rax], 34
	je	.L899
	call	r12
	mov	r8d, DWORD PTR [rax]
	test	r8d, r8d
	je	.L900
.L522:
	mov	r13, QWORD PTR 352[rsi]
.LEHB63:
	call	r12
	mov	r14d, DWORD PTR [rax]
	mov	DWORD PTR 512[rsp], r14d
	call	r12
.LEHE63:
	mov	DWORD PTR [rax], 0
	mov	rdx, QWORD PTR 136[rsp]
	mov	r8d, 10
	mov	rcx, r13
	call	strtol
	mov	DWORD PTR 336[rsp], eax
	cmp	r13, QWORD PTR 672[rsp]
	je	.L901
.LEHB64:
	call	r12
.LEHE64:
	cmp	DWORD PTR [rax], 34
	je	.L902
	call	r12
	mov	ecx, DWORD PTR [rax]
	test	ecx, ecx
	je	.L903
.L527:
	mov	r12, QWORD PTR 136[rsi]
	lea	rax, 528[rsp]
	mov	r13, QWORD PTR 128[rsi]
	mov	QWORD PTR 248[rsp], rax
	mov	QWORD PTR 512[rsp], rax
	cmp	r12, 15
	ja	.L904
	cmp	r12, 1
	je	.L905
	test	r12, r12
	jne	.L906
.L535:
	mov	rax, QWORD PTR 512[rsp]
	mov	QWORD PTR 520[rsp], r12
	mov	BYTE PTR [rax+r12], 0
	lea	rax, 560[rsp]
	mov	r12, QWORD PTR 8[rsi]
	mov	QWORD PTR 264[rsp], rax
	mov	r13, QWORD PTR [rsi]
	mov	QWORD PTR 544[rsp], rax
	cmp	r12, 15
	ja	.L907
	cmp	r12, 1
	je	.L908
	test	r12, r12
	jne	.L909
.L541:
	mov	rax, QWORD PTR 544[rsp]
	mov	QWORD PTR 552[rsp], r12
	mov	BYTE PTR [rax+r12], 0
	mov	r12, QWORD PTR 40[rsi]
	lea	rax, 592[rsp]
	mov	QWORD PTR 280[rsp], rax
	mov	r13, QWORD PTR 32[rsi]
	mov	QWORD PTR 576[rsp], rax
	cmp	r12, 15
	ja	.L910
	cmp	r12, 1
	je	.L911
	test	r12, r12
	jne	.L912
.L547:
	mov	rax, QWORD PTR 576[rsp]
	mov	QWORD PTR 584[rsp], r12
	mov	BYTE PTR [rax+r12], 0
	mov	r12, QWORD PTR 72[rsi]
	lea	rax, 624[rsp]
	mov	QWORD PTR 288[rsp], rax
	mov	r13, QWORD PTR 64[rsi]
	mov	QWORD PTR 608[rsp], rax
	cmp	r12, 15
	ja	.L913
	cmp	r12, 1
	je	.L914
	test	r12, r12
	jne	.L915
.L553:
	mov	rax, QWORD PTR 608[rsp]
	mov	QWORD PTR 616[rsp], r12
	mov	BYTE PTR [rax+r12], 0
	mov	r12, QWORD PTR 104[rsi]
	lea	rax, 656[rsp]
	mov	QWORD PTR 304[rsp], rax
	mov	r13, QWORD PTR 96[rsi]
	mov	QWORD PTR 640[rsp], rax
	cmp	r12, 15
	ja	.L916
	cmp	r12, 1
	je	.L917
	test	r12, r12
	jne	.L918
.L559:
	mov	rax, QWORD PTR 640[rsp]
	mov	QWORD PTR 648[rsp], r12
	mov	ecx, 288
	mov	BYTE PTR [rax+r12], 0
.LEHB65:
	call	_Znwy
.LEHE65:
	mov	r12, QWORD PTR 392[rsi]
	mov	QWORD PTR 216[rsp], rax
	lea	rax, 496[rsp]
	mov	QWORD PTR 312[rsp], rax
	mov	r13, QWORD PTR 384[rsi]
	mov	QWORD PTR 480[rsp], rax
	cmp	r12, 15
	ja	.L919
	cmp	r12, 1
	je	.L920
	test	r12, r12
	jne	.L921
.L565:
	mov	rax, QWORD PTR 480[rsp]
	mov	QWORD PTR 488[rsp], r12
	mov	BYTE PTR [rax+r12], 0
	movzx	eax, r15b
	mov	r12, QWORD PTR 520[rsp]
	mov	DWORD PTR 340[rsp], eax
	lea	rax, 688[rsp]
	mov	r13, QWORD PTR 512[rsp]
	mov	QWORD PTR 320[rsp], rax
	mov	QWORD PTR 672[rsp], rax
	cmp	r12, 15
	ja	.L922
	cmp	r12, 1
	je	.L923
	test	r12, r12
	jne	.L924
.L571:
	mov	rax, QWORD PTR 672[rsp]
	mov	QWORD PTR 680[rsp], r12
	mov	BYTE PTR [rax+r12], 0
	mov	r12, QWORD PTR 552[rsp]
	lea	rax, 720[rsp]
	mov	QWORD PTR 328[rsp], rax
	mov	r13, QWORD PTR 544[rsp]
	mov	QWORD PTR 704[rsp], rax
	cmp	r12, 15
	ja	.L925
	cmp	r12, 1
	je	.L926
	test	r12, r12
	jne	.L927
.L577:
	mov	rax, QWORD PTR 704[rsp]
	mov	QWORD PTR 712[rsp], r12
	mov	BYTE PTR [rax+r12], 0
	mov	r13, QWORD PTR 584[rsp]
	lea	r12, 752[rsp]
	mov	QWORD PTR 736[rsp], r12
	mov	r14, QWORD PTR 576[rsp]
	cmp	r13, 15
	ja	.L928
	cmp	r13, 1
	je	.L929
	test	r13, r13
	jne	.L930
.L583:
	mov	rax, QWORD PTR 736[rsp]
	mov	QWORD PTR 744[rsp], r13
	mov	BYTE PTR [rax+r13], 0
	mov	r14, QWORD PTR 616[rsp]
	lea	r13, 784[rsp]
	mov	QWORD PTR 768[rsp], r13
	mov	r15, QWORD PTR 608[rsp]
	cmp	r14, 15
	ja	.L931
	cmp	r14, 1
	je	.L932
	test	r14, r14
	jne	.L933
.L589:
	mov	rax, QWORD PTR 768[rsp]
	mov	QWORD PTR 776[rsp], r14
	mov	BYTE PTR [rax+r14], 0
	mov	r15, QWORD PTR 648[rsp]
	lea	r14, 816[rsp]
	mov	QWORD PTR 800[rsp], r14
	mov	rdx, QWORD PTR 640[rsp]
	cmp	r15, 15
	ja	.L934
	cmp	r15, 1
	je	.L935
	test	r15, r15
	jne	.L936
.L595:
	mov	rax, QWORD PTR 800[rsp]
	mov	QWORD PTR 808[rsp], r15
	vmovss	xmm3, DWORD PTR .LC19[rip]
	mov	rcx, QWORD PTR 216[rsp]
	mov	BYTE PTR [rax+r15], 0
	mov	eax, DWORD PTR 276[rsp]
	lea	r15, 480[rsp]
	vdivss	xmm3, xmm3, xmm8
	mov	QWORD PTR 80[rsp], r15
	lea	edx, [rax+rax*2]
	mov	eax, DWORD PTR 336[rsp]
	vmovss	DWORD PTR 56[rsp], xmm9
	lea	r8d, [rdx+rdx]
	mov	rdx, QWORD PTR 136[rsp]
	vmovss	DWORD PTR 48[rsp], xmm10
	sub	eax, 1
	vmovq	QWORD PTR 32[rsp], xmm6
	mov	DWORD PTR 72[rsp], eax
	mov	eax, DWORD PTR 300[rsp]
	sub	eax, 1
	mov	DWORD PTR 64[rsp], eax
	mov	eax, DWORD PTR 340[rsp]
	mov	DWORD PTR 40[rsp], eax
.LEHB66:
	call	_ZN5Lenia6AnimalC1ENS_8TaxonomyEjfPKfhffNS_10KernelCoreENS_14GrowthFunctionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE66:
	mov	rax, QWORD PTR 216[rsp]
	mov	rcx, QWORD PTR 800[rsp]
	mov	QWORD PTR 408[rsp], rax
	cmp	rcx, r14
	je	.L602
	mov	rax, QWORD PTR 816[rsp]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L602:
	mov	rcx, QWORD PTR 768[rsp]
	cmp	rcx, r13
	je	.L603
	mov	rax, QWORD PTR 784[rsp]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L603:
	mov	rcx, QWORD PTR 736[rsp]
	cmp	rcx, r12
	je	.L604
	mov	rax, QWORD PTR 752[rsp]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L604:
	mov	rcx, QWORD PTR 704[rsp]
	mov	rax, QWORD PTR 328[rsp]
	cmp	rcx, rax
	je	.L605
	mov	rax, QWORD PTR 720[rsp]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L605:
	mov	rcx, QWORD PTR 672[rsp]
	mov	rax, QWORD PTR 320[rsp]
	cmp	rcx, rax
	je	.L606
	mov	rax, QWORD PTR 688[rsp]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L606:
	mov	rcx, QWORD PTR 480[rsp]
	mov	rax, QWORD PTR 312[rsp]
	cmp	rcx, rax
	je	.L607
	mov	rax, QWORD PTR 496[rsp]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L607:
	mov	r12, QWORD PTR _ZN5LeniaL7AnimalsE[rip+16]
	mov	r13, QWORD PTR 136[rsi]
	vmovq	xmm6, QWORD PTR 128[rsi]
	test	r12, r12
	je	.L690
	lea	rax, _ZN5LeniaL7AnimalsE[rip+8]
	mov	QWORD PTR 216[rsp], rbx
	vmovq	rbx, xmm6
	mov	QWORD PTR 136[rsp], rax
	mov	r15, rax
	mov	eax, 2147483648
	vmovq	xmm8, rax
	movabs	rax, -2147483649
	vmovq	xmm9, rax
	jmp	.L614
	.p2align 4,,10
	.p2align 3
.L611:
	mov	r15, r12
	mov	r12, QWORD PTR 16[r12]
	test	r12, r12
	je	.L937
.L614:
	mov	r14, QWORD PTR 40[r12]
	cmp	r13, r14
	mov	r8, r14
	cmovbe	r8, r13
	test	r8, r8
	je	.L609
	mov	rcx, QWORD PTR 32[r12]
	mov	rdx, rbx
	call	memcmp
	test	eax, eax
	jne	.L610
.L609:
	sub	r14, r13
	vmovq	rax, xmm8
	cmp	r14, rax
	jge	.L611
	vmovq	rax, xmm9
	cmp	r14, rax
	jle	.L612
	mov	eax, r14d
.L610:
	test	eax, eax
	jns	.L611
.L612:
	mov	r12, QWORD PTR 24[r12]
	test	r12, r12
	jne	.L614
.L937:
	mov	rax, QWORD PTR 136[rsp]
	vmovq	xmm6, rbx
	mov	rbx, QWORD PTR 216[rsp]
	cmp	r15, rax
	je	.L608
	mov	r12, QWORD PTR 40[r15]
	cmp	r13, r12
	mov	r8, r12
	cmovbe	r8, r13
	test	r8, r8
	je	.L615
	mov	rdx, QWORD PTR 32[r15]
	vmovq	rcx, xmm6
	call	memcmp
	test	eax, eax
	jne	.L616
.L615:
	mov	rax, r13
	sub	rax, r12
	cmp	rax, 2147483647
	jg	.L617
	cmp	rax, -2147483648
	jl	.L608
.L616:
	test	eax, eax
	js	.L608
.L617:
	mov	rax, QWORD PTR .refptr._ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE[rip]
	mov	rcx, QWORD PTR 640[rsp]
	add	rax, 16
	vpinsrq	xmm6, xmm11, rax, 1
	mov	rax, QWORD PTR 304[rsp]
	cmp	rcx, rax
	je	.L618
	mov	rax, QWORD PTR 656[rsp]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L618:
	mov	rcx, QWORD PTR 608[rsp]
	mov	rax, QWORD PTR 288[rsp]
	cmp	rcx, rax
	je	.L619
	mov	rax, QWORD PTR 624[rsp]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L619:
	mov	rcx, QWORD PTR 576[rsp]
	mov	rax, QWORD PTR 280[rsp]
	cmp	rcx, rax
	je	.L620
	mov	rax, QWORD PTR 592[rsp]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L620:
	mov	rcx, QWORD PTR 544[rsp]
	mov	rax, QWORD PTR 264[rsp]
	cmp	rcx, rax
	je	.L621
	mov	rax, QWORD PTR 560[rsp]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L621:
	mov	rcx, QWORD PTR 512[rsp]
	mov	rax, QWORD PTR 248[rsp]
	cmp	rcx, rax
	je	.L622
	mov	rax, QWORD PTR 528[rsp]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L622:
	mov	rcx, QWORD PTR 128[rsp]
	test	rcx, rcx
	je	.L623
	sub	rdi, rcx
	mov	rdx, rdi
	call	_ZdlPvy
.L623:
	mov	rax, QWORD PTR .refptr._ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE[rip]
	mov	rcx, QWORD PTR 1328[rsp]
	vmovdqu	XMMWORD PTR 1248[rsp], xmm6
	add	rax, 24
	mov	QWORD PTR 1232[rsp], rax
	mov	rax, QWORD PTR .refptr._ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE[rip]
	add	rax, 104
	mov	QWORD PTR 1360[rsp], rax
	mov	rax, QWORD PTR 240[rsp]
	cmp	rcx, rax
	je	.L624
	mov	rax, QWORD PTR 1344[rsp]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L624:
	mov	rax, QWORD PTR .refptr._ZTVSt15basic_streambufIcSt11char_traitsIcEE[rip]
	mov	rcx, QWORD PTR 256[rsp]
	add	rax, 16
	mov	QWORD PTR 1256[rsp], rax
	call	_ZNSt6localeD1Ev
	mov	rax, QWORD PTR 176[rsp]
	mov	rdi, QWORD PTR 184[rsp]
	mov	rcx, QWORD PTR 200[rsp]
	mov	rax, QWORD PTR -24[rax]
	mov	QWORD PTR 1232[rsp+rax], rdi
	mov	rax, QWORD PTR 160[rsp]
	mov	rdi, QWORD PTR 168[rsp]
	mov	QWORD PTR 1248[rsp], rax
	mov	rax, QWORD PTR -24[rax]
	mov	QWORD PTR 1248[rsp+rax], rdi
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, QWORD PTR 152[rsp]
	mov	QWORD PTR 1232[rsp], rbp
	mov	QWORD PTR 1232[rsp+rax], rdi
	mov	rax, QWORD PTR .refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE[rip]
	mov	QWORD PTR 1240[rsp], 0
	add	rax, 16
	mov	QWORD PTR 1360[rsp], rax
	call	_ZNSt8ios_baseD2Ev
	mov	rcx, QWORD PTR 448[rsp]
	vmovq	rax, xmm15
	cmp	rcx, rax
	je	.L625
	mov	rax, QWORD PTR 464[rsp]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L625:
	mov	rax, QWORD PTR .refptr._ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE[rip]
	mov	rcx, QWORD PTR 928[rsp]
	vmovdqu	XMMWORD PTR 848[rsp], xmm6
	add	rax, 24
	mov	QWORD PTR 832[rsp], rax
	mov	rax, QWORD PTR .refptr._ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE[rip]
	add	rax, 104
	mov	QWORD PTR 960[rsp], rax
	mov	rax, QWORD PTR 232[rsp]
	cmp	rcx, rax
	je	.L626
	mov	rax, QWORD PTR 944[rsp]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L626:
	mov	rax, QWORD PTR .refptr._ZTVSt15basic_streambufIcSt11char_traitsIcEE[rip]
	mov	rcx, QWORD PTR 224[rsp]
	add	rax, 16
	mov	QWORD PTR 856[rsp], rax
	call	_ZNSt6localeD1Ev
	mov	rax, QWORD PTR 176[rsp]
	mov	rdi, QWORD PTR 184[rsp]
	mov	rcx, QWORD PTR 192[rsp]
	mov	rax, QWORD PTR -24[rax]
	mov	QWORD PTR 832[rsp+rax], rdi
	mov	rax, QWORD PTR 160[rsp]
	mov	rdi, QWORD PTR 168[rsp]
	mov	QWORD PTR 848[rsp], rax
	mov	rax, QWORD PTR -24[rax]
	mov	QWORD PTR 848[rsp+rax], rdi
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, QWORD PTR 152[rsp]
	mov	QWORD PTR 832[rsp], rbp
	mov	QWORD PTR 832[rsp+rax], rdi
	mov	rax, QWORD PTR .refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE[rip]
	mov	rdi, rsi
	mov	QWORD PTR 840[rsp], 0
	add	rax, 16
	mov	QWORD PTR 960[rsp], rax
	call	_ZNSt8ios_baseD2Ev
	cmp	rsi, rbx
	je	.L630
	.p2align 4
	.p2align 3
.L627:
	mov	rcx, QWORD PTR [rdi]
	lea	rax, 16[rdi]
	cmp	rcx, rax
	je	.L629
	mov	rax, QWORD PTR 16[rdi]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L629:
	add	rdi, 32
	cmp	rdi, rbx
	jne	.L627
.L630:
	mov	rdx, QWORD PTR 104[rsp]
	mov	rcx, rsi
	sub	rdx, rsi
	call	_ZdlPvy
	mov	rax, QWORD PTR 1632[rsp]
	mov	rax, QWORD PTR -24[rax]
	mov	rbx, QWORD PTR 1872[rsp+rax]
	test	rbx, rbx
	jne	.L407
.L628:
.LEHB67:
	call	_ZSt16__throw_bad_castv
.LEHE67:
	.p2align 4,,10
	.p2align 3
.L868:
	test	r14, r14
	js	.L938
	mov	rcx, r14
	add	rcx, 1
	js	.L939
	mov	QWORD PTR 112[rsp], rdx
.LEHB68:
	call	_Znwy
.LEHE68:
	mov	QWORD PTR 0[r13], rax
	mov	rdx, QWORD PTR 112[rsp]
	mov	rcx, rax
	mov	QWORD PTR 16[r13], r14
.L443:
	mov	r8, r14
	call	memcpy
	mov	rcx, QWORD PTR 0[r13]
	mov	QWORD PTR 8[r13], r14
	mov	BYTE PTR [rcx+r14], 0
	cmp	rsi, rbx
	jne	.L940
.L687:
	mov	rbx, r12
	jmp	.L447
	.p2align 4,,10
	.p2align 3
.L869:
	movzx	edx, BYTE PTR [rdx]
	mov	BYTE PTR 16[r13], dl
	jmp	.L445
	.p2align 4,,10
	.p2align 3
.L890:
	mov	rdx, QWORD PTR 128[rsp]
	mov	rcx, rax
	call	memcpy
.L503:
	mov	rcx, QWORD PTR 128[rsp]
	sub	rdi, rcx
	mov	rdx, rdi
	call	_ZdlPvy
	jmp	.L504
	.p2align 4,,10
	.p2align 3
.L631:
	mov	rcx, rbx
.LEHB69:
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	mov	rax, QWORD PTR [rbx]
	mov	r8d, 10
	mov	r9, QWORD PTR 48[rax]
	lea	rax, _ZNKSt5ctypeIcE8do_widenEc[rip]
	cmp	r9, rax
	je	.L632
	mov	edx, 10
	mov	rcx, rbx
	call	r9
.LEHE69:
	movsx	r8d, al
	jmp	.L632
.L417:
	test	rbx, rbx
	je	.L418
	mov	rcx, QWORD PTR 232[rsp]
	jmp	.L416
.L863:
	test	rbx, rbx
	js	.L941
	mov	rcx, rbx
	add	rcx, 1
	js	.L942
.LEHB70:
	call	_Znwy
.LEHE70:
	mov	QWORD PTR 928[rsp], rax
	mov	rcx, rax
	mov	QWORD PTR 944[rsp], rbx
.L416:
	mov	r8, rbx
	mov	rdx, rsi
	call	memcpy
	jmp	.L418
.L911:
	movzx	eax, BYTE PTR 0[r13]
	mov	BYTE PTR 592[rsp], al
	jmp	.L547
.L690:
	lea	r15, _ZN5LeniaL7AnimalsE[rip+8]
.L608:
	lea	r9, 408[rsp]
	lea	r8, 128[rsi]
	mov	rdx, r15
	lea	rcx, _ZN5LeniaL7AnimalsE[rip]
.LEHB71:
	call	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5Lenia6AnimalEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE22_M_emplace_hint_uniqueIJRS5_RSA_EEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_
.LEHE71:
	jmp	.L617
.L876:
	call	r12
	mov	DWORD PTR [rax], edi
	jmp	.L464
.L881:
	test	rdi, rdi
	js	.L943
	mov	rcx, rdi
	add	rcx, 1
	js	.L944
.LEHB72:
	call	_Znwy
.LEHE72:
	mov	QWORD PTR 1328[rsp], rax
	mov	rcx, rax
	mov	QWORD PTR 1344[rsp], rdi
.L481:
	mov	r8, rdi
	mov	rdx, r13
	call	memcpy
	jmp	.L483
.L879:
	call	r12
	mov	DWORD PTR [rax], r13d
	jmp	.L470
.L882:
	movzx	eax, BYTE PTR 0[r13]
	mov	BYTE PTR 1344[rsp], al
	jmp	.L483
.L904:
	test	r12, r12
	js	.L945
	mov	rcx, r12
	add	rcx, 1
	js	.L946
.LEHB73:
	call	_Znwy
.LEHE73:
	mov	QWORD PTR 512[rsp], rax
	mov	rcx, rax
	mov	QWORD PTR 528[rsp], r12
.L533:
	mov	r8, r12
	mov	rdx, r13
	call	memcpy
	jmp	.L535
.L903:
	call	r12
	mov	DWORD PTR [rax], r14d
	jmp	.L527
.L900:
	call	r12
	mov	DWORD PTR [rax], r14d
	jmp	.L522
.L897:
	call	r12
	mov	DWORD PTR [rax], r14d
	jmp	.L517
.L894:
	call	r12
	mov	DWORD PTR [rax], r14d
	jmp	.L512
.L905:
	movzx	eax, BYTE PTR 0[r13]
	mov	BYTE PTR 528[rsp], al
	jmp	.L535
.L907:
	test	r12, r12
	js	.L947
	mov	rcx, r12
	add	rcx, 1
	js	.L948
.LEHB74:
	call	_Znwy
.LEHE74:
	mov	QWORD PTR 544[rsp], rax
	mov	rcx, rax
	mov	QWORD PTR 560[rsp], r12
.L539:
	mov	r8, r12
	mov	rdx, r13
	call	memcpy
	jmp	.L541
.L908:
	movzx	eax, BYTE PTR 0[r13]
	mov	BYTE PTR 560[rsp], al
	jmp	.L541
.L910:
	test	r12, r12
	js	.L949
	mov	rcx, r12
	add	rcx, 1
	js	.L950
.LEHB75:
	call	_Znwy
.LEHE75:
	mov	QWORD PTR 576[rsp], rax
	mov	rcx, rax
	mov	QWORD PTR 592[rsp], r12
.L545:
	mov	r8, r12
	mov	rdx, r13
	call	memcpy
	jmp	.L547
.L913:
	test	r12, r12
	js	.L951
	mov	rcx, r12
	add	rcx, 1
	js	.L952
.LEHB76:
	call	_Znwy
.LEHE76:
	mov	QWORD PTR 608[rsp], rax
	mov	rcx, rax
	mov	QWORD PTR 624[rsp], r12
.L551:
	mov	r8, r12
	mov	rdx, r13
	call	memcpy
	jmp	.L553
.L914:
	movzx	eax, BYTE PTR 0[r13]
	mov	BYTE PTR 624[rsp], al
	jmp	.L553
.L916:
	test	r12, r12
	js	.L953
	mov	rcx, r12
	add	rcx, 1
	js	.L954
.LEHB77:
	call	_Znwy
.LEHE77:
	mov	QWORD PTR 640[rsp], rax
	mov	rcx, rax
	mov	QWORD PTR 656[rsp], r12
.L557:
	mov	r8, r12
	mov	rdx, r13
	call	memcpy
	jmp	.L559
.L917:
	movzx	eax, BYTE PTR 0[r13]
	mov	BYTE PTR 656[rsp], al
	jmp	.L559
.L920:
	movzx	eax, BYTE PTR 0[r13]
	mov	BYTE PTR 496[rsp], al
	jmp	.L565
.L919:
	test	r12, r12
	js	.L955
	mov	rcx, r12
	add	rcx, 1
	js	.L956
.LEHB78:
	call	_Znwy
.LEHE78:
	mov	QWORD PTR 480[rsp], rax
	mov	rcx, rax
	mov	QWORD PTR 496[rsp], r12
.L563:
	mov	r8, r12
	mov	rdx, r13
	call	memcpy
	jmp	.L565
.L923:
	movzx	eax, BYTE PTR 0[r13]
	mov	BYTE PTR 688[rsp], al
	jmp	.L571
.L922:
	test	r12, r12
	js	.L957
	mov	rcx, r12
	add	rcx, 1
	js	.L958
.LEHB79:
	call	_Znwy
.LEHE79:
	mov	QWORD PTR 672[rsp], rax
	mov	rcx, rax
	mov	QWORD PTR 688[rsp], r12
.L569:
	mov	r8, r12
	mov	rdx, r13
	call	memcpy
	jmp	.L571
.L925:
	test	r12, r12
	js	.L959
	mov	rcx, r12
	add	rcx, 1
	js	.L960
.LEHB80:
	call	_Znwy
.LEHE80:
	mov	QWORD PTR 704[rsp], rax
	mov	rcx, rax
	mov	QWORD PTR 720[rsp], r12
.L575:
	mov	r8, r12
	mov	rdx, r13
	call	memcpy
	jmp	.L577
.L926:
	movzx	eax, BYTE PTR 0[r13]
	mov	BYTE PTR 720[rsp], al
	jmp	.L577
.L929:
	movzx	eax, BYTE PTR [r14]
	mov	BYTE PTR 752[rsp], al
	jmp	.L583
.L928:
	test	r13, r13
	js	.L961
	mov	rcx, r13
	add	rcx, 1
	js	.L962
.LEHB81:
	call	_Znwy
.LEHE81:
	mov	QWORD PTR 736[rsp], rax
	mov	rcx, rax
	mov	QWORD PTR 752[rsp], r13
.L581:
	mov	r8, r13
	mov	rdx, r14
	call	memcpy
	jmp	.L583
.L932:
	movzx	eax, BYTE PTR [r15]
	mov	BYTE PTR 784[rsp], al
	jmp	.L589
.L931:
	test	r14, r14
	js	.L963
	mov	rcx, r14
	add	rcx, 1
	js	.L964
.LEHB82:
	call	_Znwy
.LEHE82:
	mov	QWORD PTR 768[rsp], rax
	mov	rcx, rax
	mov	QWORD PTR 784[rsp], r14
.L587:
	mov	r8, r14
	mov	rdx, r15
	call	memcpy
	jmp	.L589
.L935:
	movzx	eax, BYTE PTR [rdx]
	mov	BYTE PTR 816[rsp], al
	jmp	.L595
.L934:
	test	r15, r15
	js	.L965
	mov	rcx, r15
	add	rcx, 1
	js	.L966
	mov	QWORD PTR 360[rsp], rdx
.LEHB83:
	call	_Znwy
.LEHE83:
	mov	QWORD PTR 800[rsp], rax
	mov	rdx, QWORD PTR 360[rsp]
	mov	rcx, rax
	mov	QWORD PTR 816[rsp], r15
.L593:
	mov	r8, r15
	call	memcpy
	jmp	.L595
.L873:
.LEHB84:
	call	_ZSt17__throw_bad_allocv
.LEHE84:
.L871:
	mov	r10d, DWORD PTR [rax]
	mov	ecx, ecx
	mov	DWORD PTR [r8], r10d
	mov	r10d, DWORD PTR -4[rax+rcx]
	mov	DWORD PTR -4[r8+rcx], r10d
	mov	r10, QWORD PTR -8[rax]
	jmp	.L450
.L861:
	mov	rcx, QWORD PTR 208[rsp]
	mov	r12d, 2147483648
	movabs	r14, -2147483649
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	rcx, QWORD PTR 144[rsp]
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	lea	rax, 1648[rsp]
	mov	ecx, 19
	mov	QWORD PTR 1632[rsp], rax
.LEHB85:
	call	_Znwy
.LEHE85:
	mov	rsi, QWORD PTR _ZN5LeniaL7AnimalsE[rip+16]
	movabs	rdx, 8386094436448430446
	mov	QWORD PTR 1648[rsp], 18
	mov	rbp, rax
	mov	QWORD PTR 1632[rsp], rax
	movabs	rax, 8439866052738970191
	mov	QWORD PTR 0[rbp], rax
	lea	rax, _ZN5LeniaL7AnimalsE[rip+8]
	mov	QWORD PTR 8[rbp], rdx
	mov	rbx, rax
	mov	WORD PTR 16[rbp], 29557
	mov	QWORD PTR 1640[rsp], 18
	mov	BYTE PTR 18[rbp], 0
	mov	QWORD PTR 136[rsp], rax
	test	rsi, rsi
	jne	.L634
.L635:
	mov	ecx, 72
	mov	rbp, rbx
.LEHB86:
	call	_Znwy
	mov	rsi, QWORD PTR 1640[rsp]
	lea	rdi, 48[rax]
	mov	r12, QWORD PTR 1632[rsp]
	mov	rbx, rax
	mov	QWORD PTR 32[rax], rdi
	cmp	rsi, 15
	ja	.L967
	cmp	rsi, 1
	je	.L968
	test	rsi, rsi
	jne	.L969
.L661:
	mov	rax, QWORD PTR 32[rbx]
	mov	QWORD PTR 40[rbx], rsi
	xor	edx, edx
	mov	r8, rbp
	lea	rcx, 368[rsp]
	mov	BYTE PTR [rax+rsi], 0
	mov	r12, QWORD PTR 40[rbx]
	mov	QWORD PTR 64[rbx], rdx
	mov	r14, QWORD PTR 32[rbx]
	lea	rdx, _ZN5LeniaL7AnimalsE[rip]
	mov	QWORD PTR 32[rsp], r12
	mov	r9, r14
	call	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5Lenia6AnimalEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISB_ERS7_.isra.0
	mov	rbp, QWORD PTR 376[rsp]
	mov	rsi, QWORD PTR 368[rsp]
	test	rbp, rbp
	je	.L970
	mov	rax, QWORD PTR 136[rsp]
	test	rsi, rsi
	setne	sil
	cmp	rbp, rax
	sete	al
	or	sil, al
	je	.L971
.L667:
	movzx	ecx, sil
	lea	r9, _ZN5LeniaL7AnimalsE[rip+8]
	mov	r8, rbp
	mov	rdx, rbx
	call	_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_
	add	QWORD PTR _ZN5LeniaL7AnimalsE[rip+40], 1
.L654:
	mov	r15, QWORD PTR 64[rbx]
	mov	rcx, r15
	call	_ZN5Lenia6Animal4BindEv
.LEHE86:
	mov	rcx, QWORD PTR 144[rsp]
	xor	edi, edi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	r9d, 6
	mov	edx, 1024
	lea	rax, _ZN5LeniaL5MagmaE[rip]
	mov	QWORD PTR 32[rsp], rax
	mov	rcx, QWORD PTR 144[rsp]
	mov	r8d, 1024
.LEHB87:
	call	_ZN5Lenia10SimulationC1EyyyRKNS_12ColorPaletteE
.LEHE87:
	xor	r9d, r9d
	xor	r8d, r8d
	mov	rdx, r15
	mov	rcx, QWORD PTR 144[rsp]
	call	_ZN5Lenia10Simulation11PlaceAnimalEPNS_6AnimalEjj
	lea	rax, 1248[rsp]
	mov	BYTE PTR 1248[rsp], 0
	mov	r12, QWORD PTR .refptr.glad_glClear[rip]
	mov	QWORD PTR 1232[rsp], rax
	xor	eax, eax
	mov	rbp, QWORD PTR .refptr.glad_glUseProgram[rip]
	mov	QWORD PTR 1240[rsp], rax
	mov	rax, QWORD PTR 1632[rsp]
	mov	r14, QWORD PTR .refptr.glad_glDispatchCompute[rip]
	add	rax, 31
	shr	rax, 5
	vmovd	xmm6, eax
	mov	rax, QWORD PTR 1640[rsp]
	add	rax, 31
	shr	rax, 5
	vmovd	xmm7, eax
	jmp	.L672
	.p2align 4,,10
	.p2align 3
.L673:
	mov	edx, 80
	vmovq	rcx, xmm12
.LEHB88:
	call	glfwGetKey
	cmp	eax, 1
	je	.L972
.L674:
	mov	edx, 265
	vmovq	rcx, xmm12
	call	glfwGetKey
	mov	edx, 264
	vmovq	rcx, xmm12
	call	glfwGetKey
	test	dil, dil
	jne	.L678
	mov	ecx, 16384
	call	[QWORD PTR [r12]]
	vmovd	ecx, xmm14
	call	[QWORD PTR 0[rbp]]
	mov	r8d, 1
	vmovd	edx, xmm7
	vmovd	ecx, xmm6
	call	[QWORD PTR [r14]]
	mov	rax, QWORD PTR .refptr.glad_glMemoryBarrier[rip]
	mov	ecx, 8192
	call	[QWORD PTR [rax]]
	mov	rbx, QWORD PTR .refptr.glad_glUniform1ui[rip]
	mov	edx, DWORD PTR 1632[rsp]
	xor	ecx, ecx
	call	[QWORD PTR [rbx]]
	mov	edx, DWORD PTR 1640[rsp]
	mov	ecx, 1
	call	[QWORD PTR [rbx]]
	mov	edx, DWORD PTR 176[r15]
	mov	ecx, 2
	call	[QWORD PTR [rbx]]
	mov	rsi, QWORD PTR .refptr.glad_glUniform1f[rip]
	mov	ecx, 3
	vmovss	xmm1, DWORD PTR 184[r15]
	call	[QWORD PTR [rsi]]
	vmovss	xmm1, DWORD PTR 204[r15]
	mov	ecx, 4
	call	[QWORD PTR [rsi]]
	vmovss	xmm1, DWORD PTR 208[r15]
	mov	ecx, 5
	call	[QWORD PTR [rsi]]
	vmovss	xmm1, DWORD PTR 188[r15]
	mov	ecx, 6
	call	[QWORD PTR [rsi]]
	mov	edx, DWORD PTR 216[r15]
	mov	ecx, 7
	call	[QWORD PTR [rbx]]
	vmovd	ecx, xmm13
	call	[QWORD PTR 0[rbp]]
	mov	edx, DWORD PTR 1632[rsp]
	xor	ecx, ecx
	call	[QWORD PTR [rbx]]
	mov	edx, DWORD PTR 1640[rsp]
	mov	ecx, 1
	call	[QWORD PTR [rbx]]
	mov	rax, QWORD PTR .refptr.glad_glUniform2ui[rip]
	mov	r8d, DWORD PTR 1676[rsp]
	mov	ecx, 2
	mov	edx, DWORD PTR 1672[rsp]
	call	[QWORD PTR [rax]]
	mov	rax, QWORD PTR .refptr.glad_glBindVertexArray[rip]
	mov	ecx, DWORD PTR 392[rsp]
	call	[QWORD PTR [rax]]
	mov	r8d, 5121
	mov	edx, 6
	mov	ecx, 4
	mov	rax, QWORD PTR .refptr.glad_glDrawElements[rip]
	lea	r9, 402[rsp]
	call	[QWORD PTR [rax]]
	vmovq	rcx, xmm12
	call	glfwSwapBuffers
	mov	rcx, QWORD PTR 144[rsp]
	call	_ZN5Lenia10Simulation6UpdateEv
.L678:
	call	glfwPollEvents
	call	glfwGetTime
.L672:
	vmovq	rcx, xmm12
	call	glfwWindowShouldClose
	test	eax, eax
	jne	.L973
	call	glfwGetTime
	mov	edx, 256
	vmovq	rcx, xmm12
	call	glfwGetKey
	cmp	eax, 1
	jne	.L673
	mov	edx, 1
	vmovq	rcx, xmm12
	call	glfwSetWindowShouldClose
.LEHE88:
	jmp	.L673
	.p2align 4,,10
	.p2align 3
.L975:
	mov	r8d, 18
	mov	rcx, QWORD PTR 32[rsi]
	mov	rdx, rbp
	cmp	rdi, r8
	cmovbe	r8, rdi
	call	memcmp
	test	eax, eax
	jne	.L651
	lea	rax, -18[rdi]
	cmp	rax, r12
	jge	.L652
	cmp	rax, r14
	jle	.L650
.L651:
	test	eax, eax
	js	.L650
.L652:
	mov	rbx, rsi
	mov	rsi, QWORD PTR 16[rsi]
	test	rsi, rsi
	je	.L974
.L634:
	mov	rdi, QWORD PTR 40[rsi]
	test	rdi, rdi
	jne	.L975
.L650:
	mov	rsi, QWORD PTR 24[rsi]
	test	rsi, rsi
	jne	.L634
.L974:
	mov	rax, QWORD PTR 136[rsp]
	cmp	rbx, rax
	je	.L635
	mov	rsi, QWORD PTR 40[rbx]
	test	rsi, rsi
	je	.L654
	mov	r8d, 18
	mov	rdx, QWORD PTR 32[rbx]
	mov	rcx, rbp
	cmp	rsi, r8
	cmovbe	r8, rsi
	call	memcmp
	test	eax, eax
	jne	.L655
	mov	eax, 18
	sub	rax, rsi
	cmp	rax, 2147483647
	jg	.L654
	cmp	rax, -2147483648
	jl	.L635
.L655:
	test	eax, eax
	js	.L635
	jmp	.L654
.L883:
	mov	rcx, QWORD PTR 240[rsp]
	jmp	.L481
.L906:
	mov	rcx, QWORD PTR 248[rsp]
	jmp	.L533
.L909:
	mov	rcx, QWORD PTR 264[rsp]
	jmp	.L539
.L942:
.LEHB89:
	call	_ZSt17__throw_bad_allocv
.LEHE89:
.L972:
	mov	rbx, QWORD PTR .refptr._ZSt4cout[rip]
	mov	r8d, 8
	lea	rdx, .LC20[rip]
	xor	edi, 1
	mov	rcx, rbx
.LEHB90:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movzx	edx, dil
	mov	rcx, rbx
	call	_ZNSo9_M_insertIbEERSoT_
	mov	rbx, rax
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR -24[rax]
	mov	rsi, QWORD PTR 240[rbx+rax]
	test	rsi, rsi
	je	.L976
	cmp	BYTE PTR 56[rsi], 0
	je	.L676
	movsx	edx, BYTE PTR 67[rsi]
.L677:
	mov	rcx, rbx
	call	_ZNSo3putEc
	mov	rcx, rax
	call	_ZNSo5flushEv
	jmp	.L674
.L676:
	mov	rcx, rsi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	mov	rax, QWORD PTR [rsi]
	lea	rcx, _ZNKSt5ctypeIcE8do_widenEc[rip]
	mov	edx, 10
	mov	rax, QWORD PTR 48[rax]
	cmp	rax, rcx
	je	.L677
	mov	edx, 10
	mov	rcx, rsi
	call	rax
	movsx	edx, al
	jmp	.L677
.L973:
	mov	rax, QWORD PTR .refptr.glad_glDeleteVertexArrays[rip]
	mov	rdx, QWORD PTR 344[rsp]
	mov	ecx, 1
	call	[QWORD PTR [rax]]
	mov	rbx, QWORD PTR .refptr.glad_glDeleteProgram[rip]
	vmovd	ecx, xmm13
	call	[QWORD PTR [rbx]]
	vmovd	ecx, xmm14
	call	[QWORD PTR [rbx]]
	mov	rax, QWORD PTR .refptr.glad_glDeleteBuffers[rip]
	mov	rdx, QWORD PTR 352[rsp]
	mov	ecx, 1
	call	[QWORD PTR [rax]]
	vmovq	rcx, xmm12
	call	glfwDestroyWindow
	call	glfwTerminate
.LEHE90:
	mov	rbx, QWORD PTR _ZN5LeniaL7AnimalsE[rip+24]
	mov	rax, QWORD PTR 136[rsp]
	cmp	rbx, rax
	je	.L683
	.p2align 4
	.p2align 3
.L680:
	mov	rsi, QWORD PTR 64[rbx]
	test	rsi, rsi
	je	.L681
	mov	rcx, rsi
	call	_ZN5Lenia6AnimalD1Ev
	mov	edx, 288
	mov	rcx, rsi
	call	_ZdlPvy
.L681:
	mov	rcx, rbx
	call	_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base
	mov	rbx, rax
	mov	rax, QWORD PTR 136[rsp]
	cmp	rbx, rax
	jne	.L680
.L683:
	lea	rcx, 1232[rsp]
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	rcx, QWORD PTR 144[rsp]
	call	_ZN5Lenia10SimulationD1Ev
	xor	eax, eax
	vmovups	xmm6, XMMWORD PTR 2112[rsp]
	vmovups	xmm7, XMMWORD PTR 2128[rsp]
	vmovups	xmm8, XMMWORD PTR 2144[rsp]
	vmovups	xmm9, XMMWORD PTR 2160[rsp]
	vmovups	xmm10, XMMWORD PTR 2176[rsp]
	vmovups	xmm11, XMMWORD PTR 2192[rsp]
	vmovups	xmm12, XMMWORD PTR 2208[rsp]
	vmovups	xmm13, XMMWORD PTR 2224[rsp]
	vmovups	xmm14, XMMWORD PTR 2240[rsp]
	vmovups	xmm15, XMMWORD PTR 2256[rsp]
	add	rsp, 2280
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
.L912:
	mov	rcx, QWORD PTR 280[rsp]
	jmp	.L545
.L915:
	mov	rcx, QWORD PTR 288[rsp]
	jmp	.L551
.L918:
	mov	rcx, QWORD PTR 304[rsp]
	jmp	.L557
.L891:
	jne	.L509
	mov	rax, QWORD PTR 128[rsp]
	vmovss	xmm0, DWORD PTR [rax]
	vmovq	rax, xmm6
	vmovss	DWORD PTR [rax], xmm0
	jmp	.L509
.L921:
	mov	rcx, QWORD PTR 312[rsp]
	jmp	.L563
.L924:
	mov	rcx, QWORD PTR 320[rsp]
	jmp	.L569
.L927:
	mov	rcx, QWORD PTR 328[rsp]
	jmp	.L575
.L930:
	mov	rcx, r12
	jmp	.L581
.L933:
	mov	rcx, r13
	jmp	.L587
.L936:
	mov	rcx, r14
	jmp	.L593
.L939:
.LEHB91:
	call	_ZSt17__throw_bad_allocv
.LEHE91:
.L835:
	mov	ecx, ecx
	movzx	r10d, WORD PTR -2[rax+rcx]
	mov	WORD PTR -2[r8+rcx], r10w
	mov	r10, QWORD PTR -8[rax]
	jmp	.L450
.L968:
	movzx	eax, BYTE PTR [r12]
	mov	BYTE PTR 48[rbx], al
	jmp	.L661
.L970:
	cmp	r14, rdi
	je	.L671
	mov	rax, QWORD PTR 48[rbx]
	mov	rcx, r14
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L671:
	mov	rcx, rbx
	mov	edx, 72
	mov	rbx, rsi
	call	_ZdlPvy
	jmp	.L654
.L946:
.LEHB92:
	call	_ZSt17__throw_bad_allocv
.LEHE92:
.L944:
.LEHB93:
	call	_ZSt17__throw_bad_allocv
.LEHE93:
.L950:
.LEHB94:
	call	_ZSt17__throw_bad_allocv
.LEHE94:
.L948:
.LEHB95:
	call	_ZSt17__throw_bad_allocv
.LEHE95:
.L952:
.LEHB96:
	call	_ZSt17__throw_bad_allocv
.LEHE96:
.L954:
.LEHB97:
	call	_ZSt17__throw_bad_allocv
.LEHE97:
.L958:
.LEHB98:
	call	_ZSt17__throw_bad_allocv
.LEHE98:
.L956:
.LEHB99:
	call	_ZSt17__throw_bad_allocv
.LEHE99:
.L967:
	test	rsi, rsi
	js	.L977
	mov	rcx, rsi
	add	rcx, 1
	js	.L978
.LEHB100:
	call	_Znwy
.LEHE100:
	mov	QWORD PTR 32[rbx], rax
	mov	rcx, rax
	mov	QWORD PTR 48[rbx], rsi
.L659:
	mov	r8, rsi
	mov	rdx, r12
	call	memcpy
	jmp	.L661
.L962:
.LEHB101:
	call	_ZSt17__throw_bad_allocv
.LEHE101:
.L960:
.LEHB102:
	call	_ZSt17__throw_bad_allocv
.LEHE102:
.L966:
.LEHB103:
	call	_ZSt17__throw_bad_allocv
.LEHE103:
.L964:
.LEHB104:
	call	_ZSt17__throw_bad_allocv
.LEHE104:
.L971:
	mov	rdi, QWORD PTR 40[rbp]
	cmp	r12, rdi
	mov	r8, rdi
	cmovbe	r8, r12
	test	r8, r8
	je	.L668
	mov	rdx, QWORD PTR 32[rbp]
	mov	rcx, r14
	call	memcmp
	test	eax, eax
	jne	.L669
.L668:
	mov	rax, r12
	sub	rax, rdi
	cmp	rax, 2147483647
	jg	.L667
	cmp	rax, -2147483648
	jl	.L694
.L669:
	shr	eax, 31
	mov	esi, eax
	jmp	.L667
.L969:
	mov	rcx, rdi
	jmp	.L659
.L438:
	movabs	rdi, 9223372036854775776
	jmp	.L439
.L978:
.LEHB105:
	call	_ZSt17__throw_bad_allocv
.LEHE105:
.L694:
	movzx	esi, BYTE PTR 299[rsp]
	jmp	.L667
.L859:
.LEHB106:
	call	glfwTerminate
	or	ecx, -1
	call	exit
.L858:
	mov	rbx, QWORD PTR .refptr._ZSt4cout[rip]
	mov	r8d, 25
	lea	rdx, .LC10[rip]
	mov	rcx, rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	mov	rax, QWORD PTR [rbx]
	mov	rax, QWORD PTR -24[rax]
	mov	rsi, QWORD PTR 240[rax+rbx]
	test	rsi, rsi
	je	.L979
	cmp	BYTE PTR 56[rsi], 0
	je	.L403
	movzx	eax, BYTE PTR 67[rsi]
.L404:
	movsx	edx, al
	mov	rcx, rbx
	call	_ZNSo3putEc
	mov	rcx, rax
	call	_ZNSo5flushEv
.LEHE106:
	or	ecx, -1
	call	exit
.L860:
	mov	rbx, QWORD PTR .refptr._ZSt4cerr[rip]
	mov	r8d, 45
	lea	rdx, .LC13[rip]
	mov	rcx, rbx
.LEHB107:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	mov	rcx, rbx
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
.LEHE107:
	or	ecx, -1
	call	exit
.L403:
	mov	rcx, rsi
.LEHB108:
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	mov	rax, QWORD PTR [rsi]
	lea	rdx, _ZNKSt5ctypeIcE8do_widenEc[rip]
	mov	r8, QWORD PTR 48[rax]
	mov	eax, 10
	cmp	r8, rdx
	je	.L404
	mov	edx, 10
	mov	rcx, rsi
	call	r8
	jmp	.L404
.L696:
	mov	rbx, rax
	vzeroupper
.L666:
	mov	rcx, QWORD PTR 144[rsp]
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	rcx, rbx
	call	_Unwind_Resume
.L979:
	call	_ZSt16__throw_bad_castv
.L698:
	mov	rbp, rax
	vzeroupper
.L649:
	mov	rcx, QWORD PTR 144[rsp]
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	mov	rcx, rbp
	call	_Unwind_Resume
.LEHE108:
.L711:
	mov	rbx, rax
	mov	rax, QWORD PTR .refptr._ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE[rip]
	lea	rcx, 928[rsp]
	add	rax, 16
	mov	QWORD PTR 856[rsp], rax
	vzeroupper
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
.L853:
	mov	rax, QWORD PTR .refptr._ZTVSt15basic_streambufIcSt11char_traitsIcEE[rip]
	mov	rcx, QWORD PTR 224[rsp]
	add	rax, 16
	mov	QWORD PTR 856[rsp], rax
	call	_ZNSt6localeD1Ev
	mov	rax, QWORD PTR 176[rsp]
	mov	rsi, QWORD PTR 184[rsp]
	mov	rax, QWORD PTR -24[rax]
	mov	QWORD PTR 832[rsp+rax], rsi
	mov	rax, QWORD PTR 160[rsp]
	mov	rsi, QWORD PTR 168[rsp]
	mov	QWORD PTR 848[rsp], rax
	mov	rax, QWORD PTR -24[rax]
	mov	QWORD PTR 848[rsp+rax], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, QWORD PTR 152[rsp]
	mov	QWORD PTR 832[rsp], rbp
	mov	QWORD PTR 832[rsp+rax], rsi
	xor	eax, eax
	mov	QWORD PTR 840[rsp], rax
.L412:
	mov	rax, QWORD PTR .refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE[rip]
	mov	rcx, QWORD PTR 192[rsp]
	mov	rbp, rbx
	xor	esi, esi
	xor	ebx, ebx
	add	rax, 16
	mov	QWORD PTR 960[rsp], rax
	call	_ZNSt8ios_baseD2Ev
	xor	eax, eax
	mov	QWORD PTR 104[rsp], rax
.L425:
	mov	rdi, rsi
.L644:
	cmp	rdi, rbx
	je	.L980
	mov	rcx, QWORD PTR [rdi]
	lea	rax, 16[rdi]
	cmp	rcx, rax
	je	.L645
	mov	rax, QWORD PTR 16[rdi]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L645:
	add	rdi, 32
	jmp	.L644
.L714:
	lea	rcx, 928[rsp]
	mov	rbx, rax
	vzeroupper
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	.L853
.L862:
	lea	rcx, .LC14[rip]
.LEHB109:
	call	_ZSt19__throw_logic_errorPKc
.LEHE109:
.L893:
	lea	rcx, .LC17[rip]
.LEHB110:
	call	_ZSt20__throw_out_of_rangePKc
.LEHE110:
.L977:
	lea	rcx, .LC0[rip]
.LEHB111:
	call	_ZSt20__throw_length_errorPKc
.LEHE111:
.L976:
.LEHB112:
	call	_ZSt16__throw_bad_castv
.LEHE112:
.L697:
	lea	rcx, 1232[rsp]
	mov	rbx, rax
	vzeroupper
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	rcx, QWORD PTR 144[rsp]
	call	_ZN5Lenia10SimulationD1Ev
	mov	rcx, rbx
.LEHB113:
	call	_Unwind_Resume
.LEHE113:
.L732:
	mov	rcx, rax
	vzeroupper
	call	__cxa_begin_catch
	mov	edx, 72
	mov	rcx, rbx
	call	_ZdlPvy
.LEHB114:
	call	__cxa_rethrow
.LEHE114:
.L733:
	mov	rbx, rax
	vzeroupper
	call	__cxa_end_catch
	jmp	.L666
.L980:
	mov	rdx, QWORD PTR 104[rsp]
	sub	rdx, rsi
	test	rsi, rsi
	je	.L648
	mov	rcx, rsi
	call	_ZdlPvy
.L648:
	mov	rcx, QWORD PTR 208[rsp]
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	.L649
.L902:
	lea	rcx, .LC18[rip]
.LEHB115:
	call	_ZSt20__throw_out_of_rangePKc
.LEHE115:
.L878:
	lea	rcx, .LC17[rip]
.LEHB116:
	call	_ZSt20__throw_out_of_rangePKc
.LEHE116:
.L717:
	lea	rcx, 672[rsp]
	mov	rbp, rax
	vzeroupper
	call	_ZZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_EN11_Save_errnoD1Ev
.L460:
	mov	rcx, QWORD PTR 96[rsp]
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	rcx, QWORD PTR 120[rsp]
	call	_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L425
.L722:
	lea	rcx, 1328[rsp]
	mov	rdi, rax
	vzeroupper
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
.L855:
	mov	rax, QWORD PTR .refptr._ZTVSt15basic_streambufIcSt11char_traitsIcEE[rip]
	mov	rcx, QWORD PTR 256[rsp]
	add	rax, 16
	mov	QWORD PTR 1256[rsp], rax
	call	_ZNSt6localeD1Ev
	mov	rax, QWORD PTR 176[rsp]
	mov	rdx, QWORD PTR 184[rsp]
	mov	rax, QWORD PTR -24[rax]
	mov	QWORD PTR 1232[rsp+rax], rdx
	mov	rax, QWORD PTR 160[rsp]
	mov	rdx, QWORD PTR 168[rsp]
	mov	QWORD PTR 1248[rsp], rax
	mov	rax, QWORD PTR -24[rax]
	mov	QWORD PTR 1248[rsp+rax], rdx
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR 152[rsp]
	mov	QWORD PTR 1232[rsp], rbp
	xor	ebp, ebp
	mov	QWORD PTR 1232[rsp+rax], rdx
	mov	QWORD PTR 1240[rsp], rbp
	mov	rbp, rdi
.L477:
	mov	rax, QWORD PTR .refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE[rip]
	mov	rcx, QWORD PTR 200[rsp]
	add	rax, 16
	mov	QWORD PTR 1360[rsp], rax
	call	_ZNSt8ios_baseD2Ev
	jmp	.L460
.L941:
	lea	rcx, .LC0[rip]
.LEHB117:
	call	_ZSt20__throw_length_errorPKc
.LEHE117:
.L716:
	vzeroupper
	mov	rbp, rax
	call	r12
	cmp	DWORD PTR [rax], 0
	jne	.L460
	call	r12
	mov	DWORD PTR [rax], edi
	jmp	.L460
.L699:
	mov	rbp, rax
	vzeroupper
	jmp	.L648
.L875:
	lea	rcx, .LC16[rip]
.LEHB118:
	call	_ZSt20__throw_out_of_rangePKc
.LEHE118:
.L506:
.LEHB119:
	call	__cxa_throw_bad_array_new_length
.LEHE119:
.L724:
.L856:
	lea	rcx, 512[rsp]
	mov	rbp, rax
	vzeroupper
	call	_ZZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_EN11_Save_errnoD1Ev
.L496:
	mov	rax, QWORD PTR 128[rsp]
	sub	rdi, rax
	mov	rdx, rdi
	test	rax, rax
	je	.L643
	mov	rcx, rax
	call	_ZdlPvy
.L643:
	mov	rcx, QWORD PTR 112[rsp]
	call	_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L460
.L892:
	lea	rcx, .LC17[rip]
.LEHB120:
	call	_ZSt24__throw_invalid_argumentPKc
.LEHE120:
.L727:
.L857:
	lea	rcx, 512[rsp]
	mov	rbp, rax
	vzeroupper
	call	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_EN11_Save_errnoD1Ev
	jmp	.L496
.L945:
	lea	rcx, .LC0[rip]
.LEHB121:
	call	_ZSt20__throw_length_errorPKc
.LEHE121:
.L721:
	mov	rdi, rax
	vzeroupper
	jmp	.L855
.L709:
	mov	rcx, QWORD PTR 136[rsp]
	mov	rbp, rax
	vzeroupper
	call	_ZN5Lenia8TaxonomyD1Ev
.L601:
	mov	rcx, r15
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
.L641:
	mov	rcx, QWORD PTR 216[rsp]
	mov	edx, 288
	call	_ZdlPvy
.L642:
	lea	rcx, 512[rsp]
	call	_ZN5Lenia8TaxonomyD1Ev
	jmp	.L496
.L706:
	mov	rbp, rax
	vzeroupper
	jmp	.L642
.L719:
	mov	rdi, rax
	mov	rax, QWORD PTR .refptr._ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE[rip]
	lea	rcx, 1328[rsp]
	add	rax, 16
	mov	QWORD PTR 1256[rsp], rax
	vzeroupper
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	.L855
.L874:
	lea	rcx, .LC16[rip]
.LEHB122:
	call	_ZSt24__throw_invalid_argumentPKc
.LEHE122:
.L715:
	mov	rdx, rdi
	mov	rcx, r12
	mov	rbp, rax
	vzeroupper
	call	_ZdlPvy
	jmp	.L460
.L700:
	mov	rbp, rax
	vzeroupper
	jmp	.L460
.L886:
	lea	rcx, .LC17[rip]
.LEHB123:
	call	_ZSt20__throw_out_of_rangePKc
.L723:
	jmp	.L856
.L885:
	lea	rcx, .LC17[rip]
	call	_ZSt24__throw_invalid_argumentPKc
.LEHE123:
.L938:
	lea	rcx, .LC0[rip]
.LEHB124:
	call	_ZSt20__throw_length_errorPKc
.LEHE124:
.L889:
	lea	rcx, .LC15[rip]
.LEHB125:
	call	_ZSt20__throw_length_errorPKc
.LEHE125:
.L867:
	lea	rcx, .LC15[rip]
.LEHB126:
	call	_ZSt20__throw_length_errorPKc
.LEHE126:
.L720:
	mov	rdx, QWORD PTR -24[rbp]
	mov	rdi, QWORD PTR 152[rsp]
	xor	r12d, r12d
	mov	QWORD PTR 1232[rsp], rbp
	mov	rbp, rax
	mov	QWORD PTR 1232[rsp+rdx], rdi
	mov	QWORD PTR 1240[rsp], r12
	vzeroupper
	jmp	.L477
.L877:
	lea	rcx, .LC17[rip]
.LEHB127:
	call	_ZSt24__throw_invalid_argumentPKc
.LEHE127:
.L880:
	lea	rcx, .LC14[rip]
.LEHB128:
	call	_ZSt19__throw_logic_errorPKc
.L943:
	lea	rcx, .LC0[rip]
	call	_ZSt20__throw_length_errorPKc
.LEHE128:
.L713:
	mov	rbx, rax
	vzeroupper
	jmp	.L853
.L702:
	mov	rbp, rax
	vzeroupper
.L639:
	lea	rcx, 512[rsp]
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	.L496
.L949:
	lea	rcx, .LC0[rip]
.LEHB129:
	call	_ZSt20__throw_length_errorPKc
.LEHE129:
.L703:
	mov	rbp, rax
	vzeroupper
.L638:
	lea	rcx, 544[rsp]
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	.L639
.L947:
	lea	rcx, .LC0[rip]
.LEHB130:
	call	_ZSt20__throw_length_errorPKc
.LEHE130:
.L707:
	mov	rbp, rax
	vzeroupper
	jmp	.L641
.L957:
	lea	rcx, .LC0[rip]
.LEHB131:
	call	_ZSt20__throw_length_errorPKc
.LEHE131:
.L708:
	mov	rbp, rax
	lea	r15, 480[rsp]
	vzeroupper
	jmp	.L601
.L955:
	lea	rcx, .LC0[rip]
.LEHB132:
	call	_ZSt20__throw_length_errorPKc
.LEHE132:
.L704:
	mov	rbp, rax
	vzeroupper
.L637:
	lea	rcx, 576[rsp]
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	.L638
.L953:
	lea	rcx, .LC0[rip]
.LEHB133:
	call	_ZSt20__throw_length_errorPKc
.LEHE133:
.L951:
	lea	rcx, .LC0[rip]
.LEHB134:
	call	_ZSt20__throw_length_errorPKc
.LEHE134:
.L705:
	lea	rcx, 608[rsp]
	mov	rbp, rax
	vzeroupper
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	.L637
.L901:
	lea	rcx, .LC18[rip]
.LEHB135:
	call	_ZSt24__throw_invalid_argumentPKc
.LEHE135:
.L725:
	jmp	.L856
.L895:
	lea	rcx, .LC17[rip]
.LEHB136:
	call	_ZSt24__throw_invalid_argumentPKc
.LEHE136:
.L899:
	lea	rcx, .LC18[rip]
.LEHB137:
	call	_ZSt20__throw_out_of_rangePKc
.LEHE137:
.L896:
	lea	rcx, .LC17[rip]
.LEHB138:
	call	_ZSt20__throw_out_of_rangePKc
.LEHE138:
.L726:
	jmp	.L857
.L898:
	lea	rcx, .LC18[rip]
.LEHB139:
	call	_ZSt24__throw_invalid_argumentPKc
.LEHE139:
.L718:
	mov	rbp, rax
	vzeroupper
	jmp	.L477
.L729:
	mov	rbp, rax
	vzeroupper
.L599:
	lea	rcx, 704[rsp]
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
.L600:
	mov	rcx, QWORD PTR 136[rsp]
	lea	r15, 480[rsp]
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	.L601
.L959:
	lea	rcx, .LC0[rip]
.LEHB140:
	call	_ZSt20__throw_length_errorPKc
.LEHE140:
.L728:
	mov	rbp, rax
	vzeroupper
	jmp	.L600
.L961:
	lea	rcx, .LC0[rip]
.LEHB141:
	call	_ZSt20__throw_length_errorPKc
.LEHE141:
.L730:
	mov	rbp, rax
	vzeroupper
.L598:
	lea	rcx, 736[rsp]
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	.L599
.L965:
	lea	rcx, .LC0[rip]
.LEHB142:
	call	_ZSt20__throw_length_errorPKc
.LEHE142:
.L731:
	lea	rcx, 768[rsp]
	mov	rbp, rax
	vzeroupper
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	.L598
.L963:
	lea	rcx, .LC0[rip]
.LEHB143:
	call	_ZSt20__throw_length_errorPKc
.LEHE143:
.L872:
	lea	rcx, .LC0[rip]
.LEHB144:
	call	_ZSt20__throw_length_errorPKc
.LEHE144:
.L712:
	mov	rdx, QWORD PTR -24[rbp]
	mov	rsi, QWORD PTR 152[rsp]
	mov	QWORD PTR 832[rsp], rbp
	mov	rbx, rax
	mov	QWORD PTR 832[rsp+rdx], rsi
	xor	edx, edx
	mov	QWORD PTR 840[rsp], rdx
	vzeroupper
	jmp	.L412
.L710:
	mov	rbx, rax
	vzeroupper
	jmp	.L412
.L701:
	mov	rbp, rax
	vzeroupper
	jmp	.L496
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
	.align 4
.LLSDA6823:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT6823-.LLSDATTD6823
.LLSDATTD6823:
	.byte	0x1
	.uleb128 .LLSDACSE6823-.LLSDACSB6823
.LLSDACSB6823:
	.uleb128 .LEHB37-.LFB6823
	.uleb128 .LEHE37-.LEHB37
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB38-.LFB6823
	.uleb128 .LEHE38-.LEHB38
	.uleb128 .L699-.LFB6823
	.uleb128 0
	.uleb128 .LEHB39-.LFB6823
	.uleb128 .LEHE39-.LEHB39
	.uleb128 .L710-.LFB6823
	.uleb128 0
	.uleb128 .LEHB40-.LFB6823
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L712-.LFB6823
	.uleb128 0
	.uleb128 .LEHB41-.LFB6823
	.uleb128 .LEHE41-.LEHB41
	.uleb128 .L714-.LFB6823
	.uleb128 0
	.uleb128 .LEHB42-.LFB6823
	.uleb128 .LEHE42-.LEHB42
	.uleb128 .L711-.LFB6823
	.uleb128 0
	.uleb128 .LEHB43-.LFB6823
	.uleb128 .LEHE43-.LEHB43
	.uleb128 .L700-.LFB6823
	.uleb128 0
	.uleb128 .LEHB44-.LFB6823
	.uleb128 .LEHE44-.LEHB44
	.uleb128 .L716-.LFB6823
	.uleb128 0
	.uleb128 .LEHB45-.LFB6823
	.uleb128 .LEHE45-.LEHB45
	.uleb128 .L700-.LFB6823
	.uleb128 0
	.uleb128 .LEHB46-.LFB6823
	.uleb128 .LEHE46-.LEHB46
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB47-.LFB6823
	.uleb128 .LEHE47-.LEHB47
	.uleb128 .L717-.LFB6823
	.uleb128 0
	.uleb128 .LEHB48-.LFB6823
	.uleb128 .LEHE48-.LEHB48
	.uleb128 .L718-.LFB6823
	.uleb128 0
	.uleb128 .LEHB49-.LFB6823
	.uleb128 .LEHE49-.LEHB49
	.uleb128 .L720-.LFB6823
	.uleb128 0
	.uleb128 .LEHB50-.LFB6823
	.uleb128 .LEHE50-.LEHB50
	.uleb128 .L722-.LFB6823
	.uleb128 0
	.uleb128 .LEHB51-.LFB6823
	.uleb128 .LEHE51-.LEHB51
	.uleb128 .L719-.LFB6823
	.uleb128 0
	.uleb128 .LEHB52-.LFB6823
	.uleb128 .LEHE52-.LEHB52
	.uleb128 .L701-.LFB6823
	.uleb128 0
	.uleb128 .LEHB53-.LFB6823
	.uleb128 .LEHE53-.LEHB53
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB54-.LFB6823
	.uleb128 .LEHE54-.LEHB54
	.uleb128 .L723-.LFB6823
	.uleb128 0
	.uleb128 .LEHB55-.LFB6823
	.uleb128 .LEHE55-.LEHB55
	.uleb128 .L701-.LFB6823
	.uleb128 0
	.uleb128 .LEHB56-.LFB6823
	.uleb128 .LEHE56-.LEHB56
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB57-.LFB6823
	.uleb128 .LEHE57-.LEHB57
	.uleb128 .L724-.LFB6823
	.uleb128 0
	.uleb128 .LEHB58-.LFB6823
	.uleb128 .LEHE58-.LEHB58
	.uleb128 .L701-.LFB6823
	.uleb128 0
	.uleb128 .LEHB59-.LFB6823
	.uleb128 .LEHE59-.LEHB59
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB60-.LFB6823
	.uleb128 .LEHE60-.LEHB60
	.uleb128 .L725-.LFB6823
	.uleb128 0
	.uleb128 .LEHB61-.LFB6823
	.uleb128 .LEHE61-.LEHB61
	.uleb128 .L701-.LFB6823
	.uleb128 0
	.uleb128 .LEHB62-.LFB6823
	.uleb128 .LEHE62-.LEHB62
	.uleb128 .L726-.LFB6823
	.uleb128 0
	.uleb128 .LEHB63-.LFB6823
	.uleb128 .LEHE63-.LEHB63
	.uleb128 .L701-.LFB6823
	.uleb128 0
	.uleb128 .LEHB64-.LFB6823
	.uleb128 .LEHE64-.LEHB64
	.uleb128 .L727-.LFB6823
	.uleb128 0
	.uleb128 .LEHB65-.LFB6823
	.uleb128 .LEHE65-.LEHB65
	.uleb128 .L706-.LFB6823
	.uleb128 0
	.uleb128 .LEHB66-.LFB6823
	.uleb128 .LEHE66-.LEHB66
	.uleb128 .L709-.LFB6823
	.uleb128 0
	.uleb128 .LEHB67-.LFB6823
	.uleb128 .LEHE67-.LEHB67
	.uleb128 .L699-.LFB6823
	.uleb128 0
	.uleb128 .LEHB68-.LFB6823
	.uleb128 .LEHE68-.LEHB68
	.uleb128 .L715-.LFB6823
	.uleb128 0
	.uleb128 .LEHB69-.LFB6823
	.uleb128 .LEHE69-.LEHB69
	.uleb128 .L699-.LFB6823
	.uleb128 0
	.uleb128 .LEHB70-.LFB6823
	.uleb128 .LEHE70-.LEHB70
	.uleb128 .L713-.LFB6823
	.uleb128 0
	.uleb128 .LEHB71-.LFB6823
	.uleb128 .LEHE71-.LEHB71
	.uleb128 .L706-.LFB6823
	.uleb128 0
	.uleb128 .LEHB72-.LFB6823
	.uleb128 .LEHE72-.LEHB72
	.uleb128 .L721-.LFB6823
	.uleb128 0
	.uleb128 .LEHB73-.LFB6823
	.uleb128 .LEHE73-.LEHB73
	.uleb128 .L701-.LFB6823
	.uleb128 0
	.uleb128 .LEHB74-.LFB6823
	.uleb128 .LEHE74-.LEHB74
	.uleb128 .L702-.LFB6823
	.uleb128 0
	.uleb128 .LEHB75-.LFB6823
	.uleb128 .LEHE75-.LEHB75
	.uleb128 .L703-.LFB6823
	.uleb128 0
	.uleb128 .LEHB76-.LFB6823
	.uleb128 .LEHE76-.LEHB76
	.uleb128 .L704-.LFB6823
	.uleb128 0
	.uleb128 .LEHB77-.LFB6823
	.uleb128 .LEHE77-.LEHB77
	.uleb128 .L705-.LFB6823
	.uleb128 0
	.uleb128 .LEHB78-.LFB6823
	.uleb128 .LEHE78-.LEHB78
	.uleb128 .L707-.LFB6823
	.uleb128 0
	.uleb128 .LEHB79-.LFB6823
	.uleb128 .LEHE79-.LEHB79
	.uleb128 .L708-.LFB6823
	.uleb128 0
	.uleb128 .LEHB80-.LFB6823
	.uleb128 .LEHE80-.LEHB80
	.uleb128 .L728-.LFB6823
	.uleb128 0
	.uleb128 .LEHB81-.LFB6823
	.uleb128 .LEHE81-.LEHB81
	.uleb128 .L729-.LFB6823
	.uleb128 0
	.uleb128 .LEHB82-.LFB6823
	.uleb128 .LEHE82-.LEHB82
	.uleb128 .L730-.LFB6823
	.uleb128 0
	.uleb128 .LEHB83-.LFB6823
	.uleb128 .LEHE83-.LEHB83
	.uleb128 .L731-.LFB6823
	.uleb128 0
	.uleb128 .LEHB84-.LFB6823
	.uleb128 .LEHE84-.LEHB84
	.uleb128 .L700-.LFB6823
	.uleb128 0
	.uleb128 .LEHB85-.LFB6823
	.uleb128 .LEHE85-.LEHB85
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB86-.LFB6823
	.uleb128 .LEHE86-.LEHB86
	.uleb128 .L696-.LFB6823
	.uleb128 0
	.uleb128 .LEHB87-.LFB6823
	.uleb128 .LEHE87-.LEHB87
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB88-.LFB6823
	.uleb128 .LEHE88-.LEHB88
	.uleb128 .L697-.LFB6823
	.uleb128 0
	.uleb128 .LEHB89-.LFB6823
	.uleb128 .LEHE89-.LEHB89
	.uleb128 .L713-.LFB6823
	.uleb128 0
	.uleb128 .LEHB90-.LFB6823
	.uleb128 .LEHE90-.LEHB90
	.uleb128 .L697-.LFB6823
	.uleb128 0
	.uleb128 .LEHB91-.LFB6823
	.uleb128 .LEHE91-.LEHB91
	.uleb128 .L715-.LFB6823
	.uleb128 0
	.uleb128 .LEHB92-.LFB6823
	.uleb128 .LEHE92-.LEHB92
	.uleb128 .L701-.LFB6823
	.uleb128 0
	.uleb128 .LEHB93-.LFB6823
	.uleb128 .LEHE93-.LEHB93
	.uleb128 .L721-.LFB6823
	.uleb128 0
	.uleb128 .LEHB94-.LFB6823
	.uleb128 .LEHE94-.LEHB94
	.uleb128 .L703-.LFB6823
	.uleb128 0
	.uleb128 .LEHB95-.LFB6823
	.uleb128 .LEHE95-.LEHB95
	.uleb128 .L702-.LFB6823
	.uleb128 0
	.uleb128 .LEHB96-.LFB6823
	.uleb128 .LEHE96-.LEHB96
	.uleb128 .L704-.LFB6823
	.uleb128 0
	.uleb128 .LEHB97-.LFB6823
	.uleb128 .LEHE97-.LEHB97
	.uleb128 .L705-.LFB6823
	.uleb128 0
	.uleb128 .LEHB98-.LFB6823
	.uleb128 .LEHE98-.LEHB98
	.uleb128 .L708-.LFB6823
	.uleb128 0
	.uleb128 .LEHB99-.LFB6823
	.uleb128 .LEHE99-.LEHB99
	.uleb128 .L707-.LFB6823
	.uleb128 0
	.uleb128 .LEHB100-.LFB6823
	.uleb128 .LEHE100-.LEHB100
	.uleb128 .L732-.LFB6823
	.uleb128 0x1
	.uleb128 .LEHB101-.LFB6823
	.uleb128 .LEHE101-.LEHB101
	.uleb128 .L729-.LFB6823
	.uleb128 0
	.uleb128 .LEHB102-.LFB6823
	.uleb128 .LEHE102-.LEHB102
	.uleb128 .L728-.LFB6823
	.uleb128 0
	.uleb128 .LEHB103-.LFB6823
	.uleb128 .LEHE103-.LEHB103
	.uleb128 .L731-.LFB6823
	.uleb128 0
	.uleb128 .LEHB104-.LFB6823
	.uleb128 .LEHE104-.LEHB104
	.uleb128 .L730-.LFB6823
	.uleb128 0
	.uleb128 .LEHB105-.LFB6823
	.uleb128 .LEHE105-.LEHB105
	.uleb128 .L732-.LFB6823
	.uleb128 0x1
	.uleb128 .LEHB106-.LFB6823
	.uleb128 .LEHE106-.LEHB106
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB107-.LFB6823
	.uleb128 .LEHE107-.LEHB107
	.uleb128 .L698-.LFB6823
	.uleb128 0
	.uleb128 .LEHB108-.LFB6823
	.uleb128 .LEHE108-.LEHB108
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB109-.LFB6823
	.uleb128 .LEHE109-.LEHB109
	.uleb128 .L713-.LFB6823
	.uleb128 0
	.uleb128 .LEHB110-.LFB6823
	.uleb128 .LEHE110-.LEHB110
	.uleb128 .L724-.LFB6823
	.uleb128 0
	.uleb128 .LEHB111-.LFB6823
	.uleb128 .LEHE111-.LEHB111
	.uleb128 .L732-.LFB6823
	.uleb128 0x1
	.uleb128 .LEHB112-.LFB6823
	.uleb128 .LEHE112-.LEHB112
	.uleb128 .L697-.LFB6823
	.uleb128 0
	.uleb128 .LEHB113-.LFB6823
	.uleb128 .LEHE113-.LEHB113
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB114-.LFB6823
	.uleb128 .LEHE114-.LEHB114
	.uleb128 .L733-.LFB6823
	.uleb128 0
	.uleb128 .LEHB115-.LFB6823
	.uleb128 .LEHE115-.LEHB115
	.uleb128 .L727-.LFB6823
	.uleb128 0
	.uleb128 .LEHB116-.LFB6823
	.uleb128 .LEHE116-.LEHB116
	.uleb128 .L717-.LFB6823
	.uleb128 0
	.uleb128 .LEHB117-.LFB6823
	.uleb128 .LEHE117-.LEHB117
	.uleb128 .L713-.LFB6823
	.uleb128 0
	.uleb128 .LEHB118-.LFB6823
	.uleb128 .LEHE118-.LEHB118
	.uleb128 .L716-.LFB6823
	.uleb128 0
	.uleb128 .LEHB119-.LFB6823
	.uleb128 .LEHE119-.LEHB119
	.uleb128 .L701-.LFB6823
	.uleb128 0
	.uleb128 .LEHB120-.LFB6823
	.uleb128 .LEHE120-.LEHB120
	.uleb128 .L724-.LFB6823
	.uleb128 0
	.uleb128 .LEHB121-.LFB6823
	.uleb128 .LEHE121-.LEHB121
	.uleb128 .L701-.LFB6823
	.uleb128 0
	.uleb128 .LEHB122-.LFB6823
	.uleb128 .LEHE122-.LEHB122
	.uleb128 .L716-.LFB6823
	.uleb128 0
	.uleb128 .LEHB123-.LFB6823
	.uleb128 .LEHE123-.LEHB123
	.uleb128 .L723-.LFB6823
	.uleb128 0
	.uleb128 .LEHB124-.LFB6823
	.uleb128 .LEHE124-.LEHB124
	.uleb128 .L715-.LFB6823
	.uleb128 0
	.uleb128 .LEHB125-.LFB6823
	.uleb128 .LEHE125-.LEHB125
	.uleb128 .L701-.LFB6823
	.uleb128 0
	.uleb128 .LEHB126-.LFB6823
	.uleb128 .LEHE126-.LEHB126
	.uleb128 .L700-.LFB6823
	.uleb128 0
	.uleb128 .LEHB127-.LFB6823
	.uleb128 .LEHE127-.LEHB127
	.uleb128 .L717-.LFB6823
	.uleb128 0
	.uleb128 .LEHB128-.LFB6823
	.uleb128 .LEHE128-.LEHB128
	.uleb128 .L721-.LFB6823
	.uleb128 0
	.uleb128 .LEHB129-.LFB6823
	.uleb128 .LEHE129-.LEHB129
	.uleb128 .L703-.LFB6823
	.uleb128 0
	.uleb128 .LEHB130-.LFB6823
	.uleb128 .LEHE130-.LEHB130
	.uleb128 .L702-.LFB6823
	.uleb128 0
	.uleb128 .LEHB131-.LFB6823
	.uleb128 .LEHE131-.LEHB131
	.uleb128 .L708-.LFB6823
	.uleb128 0
	.uleb128 .LEHB132-.LFB6823
	.uleb128 .LEHE132-.LEHB132
	.uleb128 .L707-.LFB6823
	.uleb128 0
	.uleb128 .LEHB133-.LFB6823
	.uleb128 .LEHE133-.LEHB133
	.uleb128 .L705-.LFB6823
	.uleb128 0
	.uleb128 .LEHB134-.LFB6823
	.uleb128 .LEHE134-.LEHB134
	.uleb128 .L704-.LFB6823
	.uleb128 0
	.uleb128 .LEHB135-.LFB6823
	.uleb128 .LEHE135-.LEHB135
	.uleb128 .L727-.LFB6823
	.uleb128 0
	.uleb128 .LEHB136-.LFB6823
	.uleb128 .LEHE136-.LEHB136
	.uleb128 .L725-.LFB6823
	.uleb128 0
	.uleb128 .LEHB137-.LFB6823
	.uleb128 .LEHE137-.LEHB137
	.uleb128 .L726-.LFB6823
	.uleb128 0
	.uleb128 .LEHB138-.LFB6823
	.uleb128 .LEHE138-.LEHB138
	.uleb128 .L725-.LFB6823
	.uleb128 0
	.uleb128 .LEHB139-.LFB6823
	.uleb128 .LEHE139-.LEHB139
	.uleb128 .L726-.LFB6823
	.uleb128 0
	.uleb128 .LEHB140-.LFB6823
	.uleb128 .LEHE140-.LEHB140
	.uleb128 .L728-.LFB6823
	.uleb128 0
	.uleb128 .LEHB141-.LFB6823
	.uleb128 .LEHE141-.LEHB141
	.uleb128 .L729-.LFB6823
	.uleb128 0
	.uleb128 .LEHB142-.LFB6823
	.uleb128 .LEHE142-.LEHB142
	.uleb128 .L731-.LFB6823
	.uleb128 0
	.uleb128 .LEHB143-.LFB6823
	.uleb128 .LEHE143-.LEHB143
	.uleb128 .L730-.LFB6823
	.uleb128 0
	.uleb128 .LEHB144-.LFB6823
	.uleb128 .LEHE144-.LEHB144
	.uleb128 .L700-.LFB6823
	.uleb128 0
.LLSDACSE6823:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT6823:
	.section	.text.startup,"x"
	.seh_endproc
	.p2align 4
	.def	_GLOBAL__sub_I_main;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I_main
_GLOBAL__sub_I_main:
.LFB9293:
	.seh_endprologue
	lea	rax, _ZN5LeniaL7AnimalsE[rip+8]
	lea	rcx, __tcf_1[rip]
	mov	DWORD PTR _ZN5LeniaL7AnimalsE[rip+8], 0
	mov	QWORD PTR _ZN5LeniaL7AnimalsE[rip+16], 0
	mov	QWORD PTR _ZN5LeniaL7AnimalsE[rip+24], rax
	mov	QWORD PTR _ZN5LeniaL7AnimalsE[rip+32], rax
	mov	QWORD PTR _ZN5LeniaL7AnimalsE[rip+40], 0
	jmp	atexit
	.seh_endproc
	.section	.ctors,"w"
	.align 8
	.quad	_GLOBAL__sub_I_main
.lcomm _ZN5LeniaL7AnimalsE,48,32
	.section .rdata,"dr"
	.align 32
_ZN5LeniaL5MagmaE:
	.long	6
	.space 12
	.long	0
	.long	0
	.long	1036831949
	.space 4
	.long	1051260355
	.long	0
	.long	1051260355
	.space 4
	.long	0
	.long	0
	.long	1065353216
	.space 4
	.long	0
	.long	1065353216
	.long	0
	.space 4
	.long	1065353216
	.long	1065353216
	.long	0
	.space 4
	.long	1065353216
	.long	1059648963
	.long	0
	.space 4
	.long	1065353216
	.long	0
	.long	0
	.space 4
	.space 144
	.align 32
.LC3:
	.quad	8318823007731530307
	.quad	4913278112686498863
	.quad	8319395793567310703
	.quad	3414420421551408943
	.align 32
.LC4:
	.quad	3414420421551408943
	.quad	7526411497693406540
	.quad	7308268468202464353
	.quad	8101253776479971694
	.align 32
.LC5:
	.quad	3414420421551408943
	.quad	7526411497693406540
	.quad	7308268468202464353
	.quad	7449361041837877614
	.align 32
.LC6:
	.quad	3414420421551408943
	.quad	7526411497693406540
	.quad	7308268468202464353
	.quad	8390880614003337582
	.align 32
.LC7:
	.long	-1082130432
	.long	-1082130432
	.long	0
	.long	1065353216
	.long	-1082130432
	.long	0
	.long	1065353216
	.long	1065353216
	.align 16
.LC8:
	.long	0
	.long	-1082130432
	.long	1065353216
	.long	0
	.set	.LC19,.LC7+12
	.def	__main;	.scl	2;	.type	32;	.endef
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev2, Built by MSYS2 project) 14.2.0"
	.def	_ZNSo3putEc;	.scl	2;	.type	32;	.endef
	.def	_ZNSo5flushEv;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt5ctypeIcE13_M_widen_initEv;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__throw_bad_castv;	.scl	2;	.type	32;	.endef
	.def	memcmp;	.scl	2;	.type	32;	.endef
	.def	_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base;	.scl	2;	.type	32;	.endef
	.def	_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_baseC2Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E;	.scl	2;	.type	32;	.endef
	.def	_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode;	.scl	2;	.type	32;	.endef
	.def	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt12__basic_fileIcE7is_openEv;	.scl	2;	.type	32;	.endef
	.def	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.def	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSt12__basic_fileIcED1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt6localeD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_baseD2Ev;	.scl	2;	.type	32;	.endef
	.def	_ZSt17__throw_bad_allocv;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZSt20__throw_length_errorPKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev;	.scl	2;	.type	32;	.endef
	.def	__cxa_begin_catch;	.scl	2;	.type	32;	.endef
	.def	__cxa_end_catch;	.scl	2;	.type	32;	.endef
	.def	glfwSwapInterval;	.scl	2;	.type	32;	.endef
	.def	strlen;	.scl	2;	.type	32;	.endef
	.def	_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_;	.scl	2;	.type	32;	.endef
	.def	__cxa_rethrow;	.scl	2;	.type	32;	.endef
	.def	glfwInit;	.scl	2;	.type	32;	.endef
	.def	glfwCreateWindow;	.scl	2;	.type	32;	.endef
	.def	glfwMakeContextCurrent;	.scl	2;	.type	32;	.endef
	.def	gladLoadGLLoader;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode;	.scl	2;	.type	32;	.endef
	.def	_ZNSt6localeC1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcyy;	.scl	2;	.type	32;	.endef
	.def	strtoul;	.scl	2;	.type	32;	.endef
	.def	__mingw_strtof;	.scl	2;	.type	32;	.endef
	.def	_Znay;	.scl	2;	.type	32;	.endef
	.def	strtol;	.scl	2;	.type	32;	.endef
	.def	_ZN5Lenia6AnimalC1ENS_8TaxonomyEjfPKfhffNS_10KernelCoreENS_14GrowthFunctionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE;	.scl	2;	.type	32;	.endef
	.def	_ZN5Lenia6Animal4BindEv;	.scl	2;	.type	32;	.endef
	.def	_ZN5Lenia10SimulationC1EyyyRKNS_12ColorPaletteE;	.scl	2;	.type	32;	.endef
	.def	_ZN5Lenia10Simulation11PlaceAnimalEPNS_6AnimalEjj;	.scl	2;	.type	32;	.endef
	.def	glfwGetKey;	.scl	2;	.type	32;	.endef
	.def	glfwSwapBuffers;	.scl	2;	.type	32;	.endef
	.def	_ZN5Lenia10Simulation6UpdateEv;	.scl	2;	.type	32;	.endef
	.def	glfwPollEvents;	.scl	2;	.type	32;	.endef
	.def	glfwGetTime;	.scl	2;	.type	32;	.endef
	.def	glfwWindowShouldClose;	.scl	2;	.type	32;	.endef
	.def	glfwSetWindowShouldClose;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIbEERSoT_;	.scl	2;	.type	32;	.endef
	.def	glfwDestroyWindow;	.scl	2;	.type	32;	.endef
	.def	glfwTerminate;	.scl	2;	.type	32;	.endef
	.def	_ZN5Lenia6AnimalD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZN5Lenia10SimulationD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZSt19__throw_logic_errorPKc;	.scl	2;	.type	32;	.endef
	.def	_ZSt20__throw_out_of_rangePKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev;	.scl	2;	.type	32;	.endef
	.def	__cxa_throw_bad_array_new_length;	.scl	2;	.type	32;	.endef
	.def	_ZSt24__throw_invalid_argumentPKc;	.scl	2;	.type	32;	.endef
	.def	atexit;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.glad_glDeleteBuffers, "dr"
	.globl	.refptr.glad_glDeleteBuffers
	.linkonce	discard
.refptr.glad_glDeleteBuffers:
	.quad	glad_glDeleteBuffers
	.section	.rdata$.refptr.glad_glDeleteProgram, "dr"
	.globl	.refptr.glad_glDeleteProgram
	.linkonce	discard
.refptr.glad_glDeleteProgram:
	.quad	glad_glDeleteProgram
	.section	.rdata$.refptr.glad_glDeleteVertexArrays, "dr"
	.globl	.refptr.glad_glDeleteVertexArrays
	.linkonce	discard
.refptr.glad_glDeleteVertexArrays:
	.quad	glad_glDeleteVertexArrays
	.section	.rdata$.refptr.glad_glDrawElements, "dr"
	.globl	.refptr.glad_glDrawElements
	.linkonce	discard
.refptr.glad_glDrawElements:
	.quad	glad_glDrawElements
	.section	.rdata$.refptr.glad_glUniform2ui, "dr"
	.globl	.refptr.glad_glUniform2ui
	.linkonce	discard
.refptr.glad_glUniform2ui:
	.quad	glad_glUniform2ui
	.section	.rdata$.refptr.glad_glUniform1f, "dr"
	.globl	.refptr.glad_glUniform1f
	.linkonce	discard
.refptr.glad_glUniform1f:
	.quad	glad_glUniform1f
	.section	.rdata$.refptr.glad_glUniform1ui, "dr"
	.globl	.refptr.glad_glUniform1ui
	.linkonce	discard
.refptr.glad_glUniform1ui:
	.quad	glad_glUniform1ui
	.section	.rdata$.refptr.glad_glMemoryBarrier, "dr"
	.globl	.refptr.glad_glMemoryBarrier
	.linkonce	discard
.refptr.glad_glMemoryBarrier:
	.quad	glad_glMemoryBarrier
	.section	.rdata$.refptr.glad_glDispatchCompute, "dr"
	.globl	.refptr.glad_glDispatchCompute
	.linkonce	discard
.refptr.glad_glDispatchCompute:
	.quad	glad_glDispatchCompute
	.section	.rdata$.refptr.glad_glUseProgram, "dr"
	.globl	.refptr.glad_glUseProgram
	.linkonce	discard
.refptr.glad_glUseProgram:
	.quad	glad_glUseProgram
	.section	.rdata$.refptr.glad_glClear, "dr"
	.globl	.refptr.glad_glClear
	.linkonce	discard
.refptr.glad_glClear:
	.quad	glad_glClear
	.section	.rdata$.refptr._ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, "dr"
	.globl	.refptr._ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE
	.linkonce	discard
.refptr._ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE:
	.quad	_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE
	.section	.rdata$.refptr._ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, "dr"
	.globl	.refptr._ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE
	.linkonce	discard
.refptr._ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE:
	.quad	_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE
	.section	.rdata$.refptr._ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, "dr"
	.globl	.refptr._ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE
	.linkonce	discard
.refptr._ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE:
	.quad	_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE
	.section	.rdata$.refptr.glad_glCreateProgram, "dr"
	.globl	.refptr.glad_glCreateProgram
	.linkonce	discard
.refptr.glad_glCreateProgram:
	.quad	glad_glCreateProgram
	.section	.rdata$.refptr.glfwGetProcAddress, "dr"
	.globl	.refptr.glfwGetProcAddress
	.linkonce	discard
.refptr.glfwGetProcAddress:
	.quad	glfwGetProcAddress
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
	.section	.rdata$.refptr.glad_glDeleteShader, "dr"
	.globl	.refptr.glad_glDeleteShader
	.linkonce	discard
.refptr.glad_glDeleteShader:
	.quad	glad_glDeleteShader
	.section	.rdata$.refptr.glad_glLinkProgram, "dr"
	.globl	.refptr.glad_glLinkProgram
	.linkonce	discard
.refptr.glad_glLinkProgram:
	.quad	glad_glLinkProgram
	.section	.rdata$.refptr.glad_glAttachShader, "dr"
	.globl	.refptr.glad_glAttachShader
	.linkonce	discard
.refptr.glad_glAttachShader:
	.quad	glad_glAttachShader
	.section	.rdata$.refptr.glad_glGetShaderInfoLog, "dr"
	.globl	.refptr.glad_glGetShaderInfoLog
	.linkonce	discard
.refptr.glad_glGetShaderInfoLog:
	.quad	glad_glGetShaderInfoLog
	.section	.rdata$.refptr.glad_glGetShaderiv, "dr"
	.globl	.refptr.glad_glGetShaderiv
	.linkonce	discard
.refptr.glad_glGetShaderiv:
	.quad	glad_glGetShaderiv
	.section	.rdata$.refptr.glad_glCompileShader, "dr"
	.globl	.refptr.glad_glCompileShader
	.linkonce	discard
.refptr.glad_glCompileShader:
	.quad	glad_glCompileShader
	.section	.rdata$.refptr.glad_glShaderSource, "dr"
	.globl	.refptr.glad_glShaderSource
	.linkonce	discard
.refptr.glad_glShaderSource:
	.quad	glad_glShaderSource
	.section	.rdata$.refptr.glad_glCreateShader, "dr"
	.globl	.refptr.glad_glCreateShader
	.linkonce	discard
.refptr.glad_glCreateShader:
	.quad	glad_glCreateShader
	.section	.rdata$.refptr.glad_glEnableVertexAttribArray, "dr"
	.globl	.refptr.glad_glEnableVertexAttribArray
	.linkonce	discard
.refptr.glad_glEnableVertexAttribArray:
	.quad	glad_glEnableVertexAttribArray
	.section	.rdata$.refptr.glad_glVertexAttribPointer, "dr"
	.globl	.refptr.glad_glVertexAttribPointer
	.linkonce	discard
.refptr.glad_glVertexAttribPointer:
	.quad	glad_glVertexAttribPointer
	.section	.rdata$.refptr.glad_glBufferData, "dr"
	.globl	.refptr.glad_glBufferData
	.linkonce	discard
.refptr.glad_glBufferData:
	.quad	glad_glBufferData
	.section	.rdata$.refptr.glad_glBindBuffer, "dr"
	.globl	.refptr.glad_glBindBuffer
	.linkonce	discard
.refptr.glad_glBindBuffer:
	.quad	glad_glBindBuffer
	.section	.rdata$.refptr.glad_glBindVertexArray, "dr"
	.globl	.refptr.glad_glBindVertexArray
	.linkonce	discard
.refptr.glad_glBindVertexArray:
	.quad	glad_glBindVertexArray
	.section	.rdata$.refptr.glad_glGenBuffers, "dr"
	.globl	.refptr.glad_glGenBuffers
	.linkonce	discard
.refptr.glad_glGenBuffers:
	.quad	glad_glGenBuffers
	.section	.rdata$.refptr.glad_glGenVertexArrays, "dr"
	.globl	.refptr.glad_glGenVertexArrays
	.linkonce	discard
.refptr.glad_glGenVertexArrays:
	.quad	glad_glGenVertexArrays
	.section	.rdata$.refptr._ZSt4cerr, "dr"
	.globl	.refptr._ZSt4cerr
	.linkonce	discard
.refptr._ZSt4cerr:
	.quad	_ZSt4cerr
	.section	.rdata$.refptr._ZTVSt15basic_streambufIcSt11char_traitsIcEE, "dr"
	.globl	.refptr._ZTVSt15basic_streambufIcSt11char_traitsIcEE
	.linkonce	discard
.refptr._ZTVSt15basic_streambufIcSt11char_traitsIcEE:
	.quad	_ZTVSt15basic_streambufIcSt11char_traitsIcEE
	.section	.rdata$.refptr._ZTVSt13basic_filebufIcSt11char_traitsIcEE, "dr"
	.globl	.refptr._ZTVSt13basic_filebufIcSt11char_traitsIcEE
	.linkonce	discard
.refptr._ZTVSt13basic_filebufIcSt11char_traitsIcEE:
	.quad	_ZTVSt13basic_filebufIcSt11char_traitsIcEE
	.section	.rdata$.refptr._ZTVSt14basic_ifstreamIcSt11char_traitsIcEE, "dr"
	.globl	.refptr._ZTVSt14basic_ifstreamIcSt11char_traitsIcEE
	.linkonce	discard
.refptr._ZTVSt14basic_ifstreamIcSt11char_traitsIcEE:
	.quad	_ZTVSt14basic_ifstreamIcSt11char_traitsIcEE
	.section	.rdata$.refptr._ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, "dr"
	.globl	.refptr._ZTTSt14basic_ifstreamIcSt11char_traitsIcEE
	.linkonce	discard
.refptr._ZTTSt14basic_ifstreamIcSt11char_traitsIcEE:
	.quad	_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE
	.section	.rdata$.refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE, "dr"
	.globl	.refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE
	.linkonce	discard
.refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE:
	.quad	_ZTVSt9basic_iosIcSt11char_traitsIcEE
