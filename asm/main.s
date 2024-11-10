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
	.section	.text$_ZNSt8__format5_SinkIcE10_M_reserveEy,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNSt8__format5_SinkIcE10_M_reserveEy
	.def	_ZNSt8__format5_SinkIcE10_M_reserveEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8__format5_SinkIcE10_M_reserveEy
_ZNSt8__format5_SinkIcE10_M_reserveEy:
.LFB8718:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	r8, QWORD PTR 16[rcx]
	mov	rax, QWORD PTR 24[rcx]
	sub	rax, QWORD PTR 8[rcx]
	mov	r9, r8
	sub	r9, rax
	cmp	r9, rdx
	jnb	.L5
	cmp	r8, rdx
	mov	QWORD PTR 56[rsp], rdx
	jb	.L6
	mov	rax, QWORD PTR [rcx]
	mov	QWORD PTR 48[rsp], rcx
	call	[QWORD PTR [rax]]
	mov	rcx, QWORD PTR 48[rsp]
	mov	rdx, QWORD PTR 56[rsp]
	mov	rax, QWORD PTR 24[rcx]
	sub	rax, QWORD PTR 8[rcx]
	mov	r8, rax
	mov	rax, QWORD PTR 16[rcx]
	sub	rax, r8
	cmp	rax, rdx
	jb	.L6
.L5:
	mov	rax, rcx
	add	rsp, 40
	ret
	.p2align 4,,10
	.p2align 3
.L6:
	xor	ecx, ecx
	mov	rax, rcx
	add	rsp, 40
	ret
	.seh_endproc
	.section	.text$_ZNSt8__format5_SinkIcE7_M_bumpEy,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNSt8__format5_SinkIcE7_M_bumpEy
	.def	_ZNSt8__format5_SinkIcE7_M_bumpEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8__format5_SinkIcE7_M_bumpEy
_ZNSt8__format5_SinkIcE7_M_bumpEy:
.LFB8916:
	.seh_endprologue
	add	QWORD PTR 24[rcx], rdx
	ret
	.seh_endproc
	.section	.text$_ZNSt12format_errorD1Ev,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNSt12format_errorD1Ev
	.def	_ZNSt12format_errorD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12format_errorD1Ev
_ZNSt12format_errorD1Ev:
.LFB4412:
	.seh_endprologue
	lea	rax, _ZTVSt12format_error[rip+16]
	mov	QWORD PTR [rcx], rax
	jmp	_ZNSt13runtime_errorD2Ev
	.seh_endproc
	.section	.text$_ZNSt12format_errorD0Ev,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNSt12format_errorD0Ev
	.def	_ZNSt12format_errorD0Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12format_errorD0Ev
_ZNSt12format_errorD0Ev:
.LFB4413:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	lea	rax, _ZTVSt12format_error[rip+16]
	mov	QWORD PTR [rcx], rax
	mov	rbx, rcx
	call	_ZNSt13runtime_errorD2Ev
	mov	edx, 16
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	_ZdlPvy
	.seh_endproc
	.text
	.p2align 4
	.def	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0:
.LFB9850:
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
	je	.L16
	cmp	BYTE PTR 56[rsi], 0
	je	.L13
	movsx	edx, BYTE PTR 67[rsi]
.L14:
	mov	rcx, rbx
	call	_ZNSo3putEc
	mov	rcx, rax
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	_ZNSo5flushEv
	.p2align 4,,10
	.p2align 3
.L13:
	mov	rcx, rsi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	mov	rax, QWORD PTR [rsi]
	mov	edx, 10
	lea	rcx, _ZNKSt5ctypeIcE8do_widenEc[rip]
	mov	rax, QWORD PTR 48[rax]
	cmp	rax, rcx
	je	.L14
	mov	rcx, rsi
	call	rax
	movsx	edx, al
	jmp	.L14
.L16:
	call	_ZSt16__throw_bad_castv
	nop
	.seh_endproc
	.section	.text$_ZNSt8__format10_Iter_sinkIcNS_10_Sink_iterIcEEE11_M_overflowEv,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNSt8__format10_Iter_sinkIcNS_10_Sink_iterIcEEE11_M_overflowEv
	.def	_ZNSt8__format10_Iter_sinkIcNS_10_Sink_iterIcEEE11_M_overflowEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8__format10_Iter_sinkIcNS_10_Sink_iterIcEEE11_M_overflowEv
_ZNSt8__format10_Iter_sinkIcNS_10_Sink_iterIcEEE11_M_overflowEv:
.LFB9307:
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
	mov	rbp, QWORD PTR 24[rcx]
	mov	rbx, QWORD PTR 8[rcx]
	mov	rax, QWORD PTR 296[rcx]
	mov	r12, rbp
	sub	r12, rbx
	mov	rdi, rcx
	test	rax, rax
	js	.L28
	mov	rdx, QWORD PTR 304[rcx]
	cmp	rdx, rax
	jb	.L29
.L22:
	add	r12, rdx
	mov	QWORD PTR 24[rdi], rbx
	mov	QWORD PTR 304[rdi], r12
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L29:
	sub	rax, rdx
	mov	rsi, QWORD PTR 288[rcx]
	cmp	rax, r12
	cmova	rax, r12
	test	rax, rax
	jle	.L23
	lea	rbp, [rbx+rax]
	.p2align 6
	.p2align 4
	.p2align 3
.L25:
	mov	rax, QWORD PTR 24[rsi]
	movzx	edx, BYTE PTR [rbx]
	lea	rcx, 1[rax]
	mov	QWORD PTR 24[rsi], rcx
	mov	BYTE PTR [rax], dl
	mov	rax, QWORD PTR 24[rsi]
	sub	rax, QWORD PTR 8[rsi]
	cmp	rax, QWORD PTR 16[rsi]
	je	.L30
.L24:
	add	rbx, 1
	cmp	rbx, rbp
	jne	.L25
	mov	rbx, QWORD PTR 8[rdi]
	mov	rdx, QWORD PTR 304[rdi]
.L23:
	mov	QWORD PTR 288[rdi], rsi
	jmp	.L22
	.p2align 4,,10
	.p2align 3
.L28:
	mov	rsi, QWORD PTR 288[rcx]
	test	r12, r12
	jle	.L19
	.p2align 6
	.p2align 4
	.p2align 3
.L21:
	mov	rax, QWORD PTR 24[rsi]
	movzx	edx, BYTE PTR [rbx]
	lea	rcx, 1[rax]
	mov	QWORD PTR 24[rsi], rcx
	mov	BYTE PTR [rax], dl
	mov	rax, QWORD PTR 24[rsi]
	sub	rax, QWORD PTR 8[rsi]
	cmp	rax, QWORD PTR 16[rsi]
	je	.L31
.L20:
	add	rbx, 1
	cmp	rbp, rbx
	jne	.L21
	mov	rbx, QWORD PTR 8[rdi]
.L19:
	mov	QWORD PTR 288[rdi], rsi
	mov	rdx, QWORD PTR 304[rdi]
	jmp	.L22
	.p2align 4,,10
	.p2align 3
.L31:
	mov	rax, QWORD PTR [rsi]
	mov	rcx, rsi
	call	[QWORD PTR [rax]]
	jmp	.L20
	.p2align 4,,10
	.p2align 3
.L30:
	mov	rax, QWORD PTR [rsi]
	mov	rcx, rsi
	call	[QWORD PTR [rax]]
	jmp	.L24
	.seh_endproc
	.text
	.align 2
	.p2align 4
	.def	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5Lenia6AnimalEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE24_M_get_insert_unique_posERS7_.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5Lenia6AnimalEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE24_M_get_insert_unique_posERS7_.isra.0
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5Lenia6AnimalEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE24_M_get_insert_unique_posERS7_.isra.0:
.LFB9853:
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
	jne	.L33
	jmp	.L57
	.p2align 4,,10
	.p2align 3
.L37:
	mov	rax, QWORD PTR 24[rbx]
	xor	ecx, ecx
	test	rax, rax
	je	.L58
.L47:
	mov	rbx, rax
.L33:
	mov	rsi, QWORD PTR 40[rbx]
	mov	rbp, QWORD PTR 32[rbx]
	cmp	rdi, rsi
	mov	r8, rsi
	cmovbe	r8, rdi
	test	r8, r8
	je	.L35
	mov	rdx, rbp
	mov	rcx, r12
	mov	QWORD PTR 40[rsp], r8
	call	memcmp
	mov	r8, QWORD PTR 40[rsp]
	test	eax, eax
	jne	.L36
.L35:
	mov	rax, rdi
	sub	rax, rsi
	cmp	rax, r13
	jge	.L37
	cmp	rax, r15
	jle	.L38
.L36:
	test	eax, eax
	jns	.L37
.L38:
	mov	rax, QWORD PTR 16[rbx]
	mov	ecx, 1
	test	rax, rax
	jne	.L47
.L58:
	mov	r13, rbx
	test	cl, cl
	jne	.L34
.L40:
	test	r8, r8
	je	.L43
	mov	rdx, r12
	mov	rcx, rbp
	call	memcmp
	test	eax, eax
	jne	.L44
.L43:
	sub	rsi, rdi
	cmp	rsi, 2147483647
	jg	.L45
	cmp	rsi, -2147483648
	jl	.L46
	mov	eax, esi
.L44:
	test	eax, eax
	js	.L46
.L45:
	mov	QWORD PTR [r14], rbx
	mov	QWORD PTR 8[r14], 0
.L32:
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
.L57:
	lea	rbx, 8[rdx]
.L34:
	mov	rax, QWORD PTR 136[rsp]
	cmp	rbx, QWORD PTR 24[rax]
	je	.L59
	mov	rcx, rbx
	mov	r13, rbx
	call	_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base
	mov	rsi, QWORD PTR 40[rax]
	mov	rbp, QWORD PTR 32[rax]
	mov	rbx, rax
	cmp	rdi, rsi
	mov	r8, rsi
	cmovbe	r8, rdi
	jmp	.L40
	.p2align 4,,10
	.p2align 3
.L46:
	mov	QWORD PTR [r14], 0
	mov	QWORD PTR 8[r14], r13
	jmp	.L32
	.p2align 4,,10
	.p2align 3
.L59:
	mov	QWORD PTR [r14], 0
	mov	QWORD PTR 8[r14], rbx
	jmp	.L32
	.seh_endproc
	.align 2
	.p2align 4
	.def	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5Lenia6AnimalEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISB_ERS7_.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5Lenia6AnimalEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISB_ERS7_.isra.0
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5Lenia6AnimalEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISB_ERS7_.isra.0:
.LFB9855:
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
	je	.L97
	mov	r13, QWORD PTR 40[r8]
	cmp	rbp, r13
	mov	r8, r13
	cmovbe	r8, rbp
	test	r8, r8
	je	.L67
	mov	r14, QWORD PTR 32[rbx]
	mov	rcx, r9
	mov	QWORD PTR 40[rsp], r8
	mov	rdx, r14
	call	memcmp
	mov	r8, QWORD PTR 40[rsp]
	test	eax, eax
	jne	.L95
	mov	rax, rbp
	sub	rax, r13
	cmp	rax, 2147483647
	jg	.L70
	cmp	rax, -2147483648
	jl	.L69
	test	eax, eax
.L95:
	js	.L69
.L70:
	mov	rdx, r12
	mov	rcx, r14
	call	memcmp
	test	eax, eax
	jne	.L77
.L71:
	mov	rax, r13
	sub	rax, rbp
	cmp	rax, 2147483647
	jg	.L78
	cmp	rax, -2147483648
	jl	.L79
.L77:
	test	eax, eax
	js	.L79
.L78:
	mov	QWORD PTR [rsi], rbx
	mov	QWORD PTR 8[rsi], 0
.L60:
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
.L67:
	mov	rax, rbp
	sub	rax, r13
	cmp	rax, 2147483647
	jg	.L71
	cmp	rax, -2147483648
	jl	.L69
	test	eax, eax
	jns	.L71
.L69:
	cmp	QWORD PTR 24[rdi], rbx
	je	.L98
	mov	rcx, rbx
	call	_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base
	mov	r13, QWORD PTR 40[rax]
	mov	r14, rax
	cmp	rbp, r13
	mov	r8, r13
	cmovbe	r8, rbp
	test	r8, r8
	je	.L73
	mov	rcx, QWORD PTR 32[rax]
	mov	rdx, r12
	call	memcmp
	test	eax, eax
	jne	.L74
.L73:
	sub	r13, rbp
	cmp	r13, 2147483647
	jg	.L62
	cmp	r13, -2147483648
	jl	.L75
	mov	eax, r13d
.L74:
	test	eax, eax
	jns	.L62
.L75:
	cmp	QWORD PTR 24[r14], 0
	je	.L99
	vmovq	xmm2, rbx
	vpunpcklqdq	xmm0, xmm2, xmm2
	vmovdqu	XMMWORD PTR [rsi], xmm0
	jmp	.L60
	.p2align 4,,10
	.p2align 3
.L97:
	cmp	QWORD PTR 40[rdx], 0
	je	.L62
	mov	r13, QWORD PTR 32[rdx]
	mov	rbx, QWORD PTR 40[r13]
	cmp	rbp, rbx
	mov	r8, rbx
	cmovbe	r8, rbp
	test	r8, r8
	je	.L63
	mov	rcx, QWORD PTR 32[r13]
	mov	rdx, r9
	call	memcmp
	test	eax, eax
	jne	.L64
.L63:
	sub	rbx, rbp
	cmp	rbx, 2147483647
	jg	.L62
	cmp	rbx, -2147483648
	jl	.L65
	mov	eax, ebx
.L64:
	test	eax, eax
	jns	.L62
.L65:
	mov	QWORD PTR [rsi], 0
	mov	QWORD PTR 8[rsi], r13
	jmp	.L60
	.p2align 4,,10
	.p2align 3
.L79:
	cmp	QWORD PTR 32[rdi], rbx
	je	.L96
	mov	rcx, rbx
	call	_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base
	mov	r14, QWORD PTR 40[rax]
	mov	r13, rax
	cmp	rbp, r14
	mov	r8, r14
	cmovbe	r8, rbp
	test	r8, r8
	je	.L81
	mov	rdx, QWORD PTR 32[rax]
	mov	rcx, r12
	call	memcmp
	test	eax, eax
	jne	.L82
.L81:
	mov	rax, rbp
	sub	rax, r14
	cmp	rax, 2147483647
	jg	.L62
	cmp	rax, -2147483648
	jl	.L83
.L82:
	test	eax, eax
	js	.L83
	.p2align 4
	.p2align 3
.L62:
	mov	r9, rbp
	mov	r8, r12
	mov	rdx, rdi
	mov	rcx, rsi
	call	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5Lenia6AnimalEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE24_M_get_insert_unique_posERS7_.isra.0
	jmp	.L60
	.p2align 4,,10
	.p2align 3
.L98:
	vmovq	xmm1, rbx
	vpunpcklqdq	xmm0, xmm1, xmm1
	vmovdqu	XMMWORD PTR [rsi], xmm0
	jmp	.L60
	.p2align 4,,10
	.p2align 3
.L96:
	mov	QWORD PTR [rsi], 0
	mov	QWORD PTR 8[rsi], rbx
	jmp	.L60
	.p2align 4,,10
	.p2align 3
.L83:
	cmp	QWORD PTR 24[rbx], 0
	je	.L96
	vmovq	xmm3, r13
	vpunpcklqdq	xmm0, xmm3, xmm3
	vmovdqu	XMMWORD PTR [rsi], xmm0
	jmp	.L60
	.p2align 4,,10
	.p2align 3
.L99:
	mov	QWORD PTR [rsi], 0
	mov	QWORD PTR 8[rsi], r14
	jmp	.L60
	.seh_endproc
	.align 2
	.p2align 4
	.def	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5Lenia6AnimalEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5Lenia6AnimalEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E.isra.0
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5Lenia6AnimalEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E.isra.0:
.LFB9856:
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
	je	.L164
.L127:
	mov	r14, QWORD PTR 24[r13]
	test	r14, r14
	je	.L102
.L125:
	mov	r15, QWORD PTR 24[r14]
	test	r15, r15
	je	.L103
.L123:
	mov	rax, QWORD PTR 24[r15]
	vmovq	xmm6, rax
	test	rax, rax
	je	.L104
.L121:
	vmovq	rax, xmm6
	mov	rbx, QWORD PTR 24[rax]
	test	rbx, rbx
	je	.L105
.L119:
	mov	rdi, QWORD PTR 24[rbx]
	test	rdi, rdi
	je	.L106
.L117:
	mov	rbp, QWORD PTR 24[rdi]
	test	rbp, rbp
	je	.L107
.L115:
	mov	rsi, QWORD PTR 24[rbp]
	test	rsi, rsi
	je	.L108
.L113:
	mov	r12, QWORD PTR 24[rsi]
	test	r12, r12
	je	.L109
.L111:
	mov	rcx, QWORD PTR 24[r12]
	call	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5Lenia6AnimalEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E.isra.0
	mov	rax, r12
	mov	r12, QWORD PTR 16[r12]
	mov	rcx, QWORD PTR 32[rax]
	lea	rdx, 48[rax]
	cmp	rcx, rdx
	je	.L110
	mov	rdx, QWORD PTR 48[rax]
	mov	QWORD PTR 40[rsp], rax
	add	rdx, 1
	call	_ZdlPvy
	mov	rax, QWORD PTR 40[rsp]
.L110:
	mov	edx, 72
	mov	rcx, rax
	call	_ZdlPvy
	test	r12, r12
	jne	.L111
.L109:
	mov	rcx, QWORD PTR 32[rsi]
	lea	rax, 48[rsi]
	mov	r12, QWORD PTR 16[rsi]
	cmp	rcx, rax
	je	.L112
	mov	rax, QWORD PTR 48[rsi]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L112:
	mov	edx, 72
	mov	rcx, rsi
	call	_ZdlPvy
	test	r12, r12
	je	.L108
	mov	rsi, r12
	jmp	.L113
.L106:
	mov	rcx, QWORD PTR 32[rbx]
	lea	rax, 48[rbx]
	mov	rsi, QWORD PTR 16[rbx]
	cmp	rcx, rax
	je	.L118
	mov	rax, QWORD PTR 48[rbx]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L118:
	mov	edx, 72
	mov	rcx, rbx
	call	_ZdlPvy
	test	rsi, rsi
	je	.L105
	mov	rbx, rsi
	jmp	.L119
	.p2align 4,,10
	.p2align 3
.L107:
	mov	rcx, QWORD PTR 32[rdi]
	lea	rax, 48[rdi]
	mov	rsi, QWORD PTR 16[rdi]
	cmp	rcx, rax
	je	.L116
	mov	rax, QWORD PTR 48[rdi]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L116:
	mov	edx, 72
	mov	rcx, rdi
	call	_ZdlPvy
	test	rsi, rsi
	je	.L106
	mov	rdi, rsi
	jmp	.L117
.L105:
	vmovq	rdi, xmm6
	mov	rcx, QWORD PTR 32[rdi]
	lea	rax, 48[rdi]
	mov	rbx, QWORD PTR 16[rdi]
	cmp	rcx, rax
	je	.L120
	mov	rax, QWORD PTR 48[rdi]
	lea	rdx, 1[rax]
	mov	QWORD PTR 40[rsp], rax
	call	_ZdlPvy
.L120:
	mov	edx, 72
	vmovq	rcx, xmm6
	call	_ZdlPvy
	test	rbx, rbx
	je	.L104
	vmovq	xmm6, rbx
	jmp	.L121
	.p2align 4,,10
	.p2align 3
.L108:
	mov	rcx, QWORD PTR 32[rbp]
	lea	rax, 48[rbp]
	mov	rsi, QWORD PTR 16[rbp]
	cmp	rcx, rax
	je	.L114
	mov	rax, QWORD PTR 48[rbp]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L114:
	mov	edx, 72
	mov	rcx, rbp
	call	_ZdlPvy
	test	rsi, rsi
	je	.L107
	mov	rbp, rsi
	jmp	.L115
.L104:
	mov	rcx, QWORD PTR 32[r15]
	lea	rax, 48[r15]
	mov	rbx, QWORD PTR 16[r15]
	cmp	rcx, rax
	je	.L122
	mov	rax, QWORD PTR 48[r15]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L122:
	mov	edx, 72
	mov	rcx, r15
	call	_ZdlPvy
	test	rbx, rbx
	je	.L103
	mov	r15, rbx
	jmp	.L123
.L103:
	mov	rcx, QWORD PTR 32[r14]
	lea	rax, 48[r14]
	mov	rbx, QWORD PTR 16[r14]
	cmp	rcx, rax
	je	.L124
	mov	rax, QWORD PTR 48[r14]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L124:
	mov	edx, 72
	mov	rcx, r14
	call	_ZdlPvy
	test	rbx, rbx
	je	.L102
	mov	r14, rbx
	jmp	.L125
.L102:
	mov	rcx, QWORD PTR 32[r13]
	lea	rax, 48[r13]
	mov	rbx, QWORD PTR 16[r13]
	cmp	rcx, rax
	je	.L126
	mov	rax, QWORD PTR 48[r13]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L126:
	mov	edx, 72
	mov	rcx, r13
	call	_ZdlPvy
	test	rbx, rbx
	je	.L164
	mov	r13, rbx
	jmp	.L127
.L164:
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
.LFB9107:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rbx, QWORD PTR _ZN5LeniaL7AnimalsE[rip+16]
	test	rbx, rbx
	je	.L173
.L168:
	mov	rcx, QWORD PTR 24[rbx]
	mov	rsi, rbx
	call	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5Lenia6AnimalEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E.isra.0
	mov	rcx, QWORD PTR 32[rsi]
	lea	rax, 48[rsi]
	mov	rbx, QWORD PTR 16[rbx]
	cmp	rcx, rax
	je	.L167
	mov	rax, QWORD PTR 48[rsi]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L167:
	mov	edx, 72
	mov	rcx, rsi
	call	_ZdlPvy
	test	rbx, rbx
	jne	.L168
.L173:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.section	.text$_ZNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcE11_M_on_charsEPKc,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcE11_M_on_charsEPKc
	.def	_ZNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcE11_M_on_charsEPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcE11_M_on_charsEPKc
_ZNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcE11_M_on_charsEPKc:
.LFB9223:
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
	mov	rbp, QWORD PTR 8[rcx]
	mov	r12, QWORD PTR 48[rcx]
	mov	rsi, QWORD PTR 16[r12]
	sub	rdx, rbp
	mov	rdi, rdx
	jne	.L188
.L175:
	mov	QWORD PTR 16[r12], rsi
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L188:
	mov	rcx, QWORD PTR 24[rsi]
	mov	rbx, QWORD PTR 16[rsi]
	mov	rax, rcx
	sub	rax, QWORD PTR 8[rsi]
	sub	rbx, rax
	cmp	rdx, rbx
	jnb	.L180
	jmp	.L176
	.p2align 4,,10
	.p2align 3
.L190:
	mov	rdx, rbp
	call	memcpy
	add	QWORD PTR 24[rsi], rbx
.L187:
	mov	rax, QWORD PTR [rsi]
	mov	rcx, rsi
	add	rbp, rbx
	sub	rdi, rbx
	call	[QWORD PTR [rax]]
	mov	rcx, QWORD PTR 24[rsi]
	mov	rbx, QWORD PTR 16[rsi]
	mov	rax, rcx
	sub	rax, QWORD PTR 8[rsi]
	sub	rbx, rax
	cmp	rdi, rbx
	jb	.L189
.L180:
	cmp	rbx, rdi
	mov	r8, rdi
	cmovbe	r8, rbx
	test	r8, r8
	jne	.L190
	add	rcx, rbx
	mov	QWORD PTR 24[rsi], rcx
	jmp	.L187
	.p2align 4,,10
	.p2align 3
.L189:
	test	rdi, rdi
	je	.L175
.L176:
	mov	r8, rdi
	mov	rdx, rbp
	call	memcpy
	add	QWORD PTR 24[rsi], rdi
	mov	QWORD PTR 16[r12], rsi
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.seh_endproc
	.section	.text$_ZNSt9__unicode9__v15_1_015__incb_propertyEDi,"x"
	.linkonce discard
	.p2align 4
	.globl	_ZNSt9__unicode9__v15_1_015__incb_propertyEDi
	.def	_ZNSt9__unicode9__v15_1_015__incb_propertyEDi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt9__unicode9__v15_1_015__incb_propertyEDi
_ZNSt9__unicode9__v15_1_015__incb_propertyEDi:
.LFB4361:
	.seh_endprologue
	xor	eax, eax
	sal	ecx, 2
	cmp	ecx, 3073
	ja	.L198
	ret
	.p2align 4,,10
	.p2align 3
.L198:
	or	ecx, 3
	mov	edx, 389
	lea	r11, _ZNSt9__unicode9__v15_1_012__incb_edgesE[rip]
	.p2align 4
	.p2align 3
.L194:
	test	rdx, rdx
	jle	.L199
.L195:
	mov	r8, rdx
	sar	r8
	lea	r10, [r11+r8*4]
	mov	r9d, DWORD PTR [r10]
	cmp	r9d, ecx
	jnb	.L197
	sub	rdx, r8
	lea	r11, 4[r10]
	mov	eax, r9d
	sub	rdx, 1
	test	rdx, rdx
	jg	.L195
.L199:
	and	eax, 3
	ret
	.p2align 4,,10
	.p2align 3
.L197:
	mov	rdx, r8
	jmp	.L194
	.seh_endproc
	.section	.text$_ZSt20__throw_format_errorPKc,"x"
	.linkonce discard
	.globl	_ZSt20__throw_format_errorPKc
	.def	_ZSt20__throw_format_errorPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt20__throw_format_errorPKc
_ZSt20__throw_format_errorPKc:
.LFB4409:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rsi, rcx
	mov	ecx, 16
	call	__cxa_allocate_exception
	mov	rdx, rsi
	mov	rcx, rax
	mov	rbx, rax
.LEHB0:
	call	_ZNSt13runtime_errorC2EPKc
.LEHE0:
	lea	rax, _ZTVSt12format_error[rip+16]
	lea	r8, _ZNSt12format_errorD1Ev[rip]
	mov	rcx, rbx
	lea	rdx, _ZTISt12format_error[rip]
	mov	QWORD PTR [rbx], rax
.LEHB1:
	call	__cxa_throw
.L202:
	mov	rsi, rax
	mov	rcx, rbx
	vzeroupper
	call	__cxa_free_exception
	mov	rcx, rsi
	call	_Unwind_Resume
	nop
.LEHE1:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4409:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4409-.LLSDACSB4409
.LLSDACSB4409:
	.uleb128 .LEHB0-.LFB4409
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L202-.LFB4409
	.uleb128 0
	.uleb128 .LEHB1-.LFB4409
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE4409:
	.section	.text$_ZSt20__throw_format_errorPKc,"x"
	.linkonce discard
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC0:
	.ascii "format error: unmatched '{' in format string\0"
	.section	.text$_ZNSt8__format39__unmatched_left_brace_in_format_stringEv,"x"
	.linkonce discard
	.globl	_ZNSt8__format39__unmatched_left_brace_in_format_stringEv
	.def	_ZNSt8__format39__unmatched_left_brace_in_format_stringEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8__format39__unmatched_left_brace_in_format_stringEv
_ZNSt8__format39__unmatched_left_brace_in_format_stringEv:
.LFB4414:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	lea	rcx, .LC0[rip]
	call	_ZSt20__throw_format_errorPKc
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC1:
	.ascii "format error: conflicting indexing style in format string\0"
	.section	.text$_ZNSt8__format39__conflicting_indexing_in_format_stringEv,"x"
	.linkonce discard
	.globl	_ZNSt8__format39__conflicting_indexing_in_format_stringEv
	.def	_ZNSt8__format39__conflicting_indexing_in_format_stringEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8__format39__conflicting_indexing_in_format_stringEv
_ZNSt8__format39__conflicting_indexing_in_format_stringEv:
.LFB4416:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	lea	rcx, .LC1[rip]
	call	_ZSt20__throw_format_errorPKc
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC2:
	.ascii "format error: invalid arg-id in format string\0"
	.section	.text$_ZNSt8__format33__invalid_arg_id_in_format_stringEv,"x"
	.linkonce discard
	.globl	_ZNSt8__format33__invalid_arg_id_in_format_stringEv
	.def	_ZNSt8__format33__invalid_arg_id_in_format_stringEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8__format33__invalid_arg_id_in_format_stringEv
_ZNSt8__format33__invalid_arg_id_in_format_stringEv:
.LFB4417:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	lea	rcx, .LC2[rip]
	call	_ZSt20__throw_format_errorPKc
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC3:
	.ascii "format error: argument used for width or precision must be a non-negative integer\0"
	.text
	.align 2
	.p2align 4
	.def	_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEyRT_.part.0.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEyRT_.part.0.isra.0
_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEyRT_.part.0.isra.0:
.LFB9861:
	sub	rsp, 104
	.seh_stackalloc	104
	.seh_endprologue
	movzx	eax, cx
	movzx	ecx, BYTE PTR [rdx]
	mov	r8d, ecx
	and	ecx, 15
	and	r8d, 15
	cmp	rax, rcx
	jnb	.L207
	mov	r8, QWORD PTR [rdx]
	lea	rcx, [rax+rax*4]
	sal	rax, 4
	add	rax, QWORD PTR 8[rdx]
	vmovdqu	xmm1, XMMWORD PTR [rax]
	shr	r8, 4
	shr	r8, cl
	vmovdqu	XMMWORD PTR 64[rsp], xmm1
	mov	rcx, r8
	and	ecx, 31
.L208:
	mov	BYTE PTR 80[rsp], cl
	lea	rdx, .L212[rip]
	movzx	ecx, cl
	vmovdqu	ymm0, YMMWORD PTR 64[rsp]
	movsx	rax, DWORD PTR [rdx+rcx*4]
	vmovdqu	YMMWORD PTR 32[rsp], ymm0
	add	rax, rdx
	jmp	rax
	.section .rdata,"dr"
	.align 4
.L212:
	.long	.L219-.L212
	.long	.L217-.L212
	.long	.L217-.L212
	.long	.L216-.L212
	.long	.L215-.L212
	.long	.L214-.L212
	.long	.L213-.L212
	.long	.L217-.L212
	.long	.L217-.L212
	.long	.L217-.L212
	.long	.L217-.L212
	.long	.L217-.L212
	.long	.L217-.L212
	.long	.L217-.L212
	.long	.L217-.L212
	.long	.L217-.L212
	.text
	.p2align 4,,10
	.p2align 3
.L207:
	test	r8b, r8b
	jne	.L209
	mov	rcx, QWORD PTR [rdx]
	shr	rcx, 4
	cmp	rax, rcx
	jnb	.L209
	sal	rax, 5
	add	rax, QWORD PTR 8[rdx]
	vmovdqu	xmm2, XMMWORD PTR [rax]
	movzx	ecx, BYTE PTR 16[rax]
	vmovdqu	XMMWORD PTR 64[rsp], xmm2
	jmp	.L208
	.p2align 4,,10
	.p2align 3
.L214:
	mov	rax, QWORD PTR 32[rsp]
	test	rax, rax
	js	.L217
.L206:
	vzeroupper
	add	rsp, 104
	ret
	.p2align 4,,10
	.p2align 3
.L215:
	mov	eax, DWORD PTR 32[rsp]
	vzeroupper
	add	rsp, 104
	ret
	.p2align 4,,10
	.p2align 3
.L216:
	movsx	rax, DWORD PTR 32[rsp]
	test	eax, eax
	jns	.L206
.L217:
	lea	rcx, .LC3[rip]
	vzeroupper
	call	_ZSt20__throw_format_errorPKc
	.p2align 4,,10
	.p2align 3
.L213:
	mov	rax, QWORD PTR 32[rsp]
	vzeroupper
	add	rsp, 104
	ret
	.p2align 4,,10
	.p2align 3
.L219:
	vzeroupper
.L209:
	call	_ZNSt8__format33__invalid_arg_id_in_format_stringEv
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC4:
	.ascii "format error: failed to parse format-spec\0"
	.section	.text$_ZNSt8__format29__failed_to_parse_format_specEv,"x"
	.linkonce discard
	.globl	_ZNSt8__format29__failed_to_parse_format_specEv
	.def	_ZNSt8__format29__failed_to_parse_format_specEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8__format29__failed_to_parse_format_specEv
_ZNSt8__format29__failed_to_parse_format_specEv:
.LFB4418:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	lea	rcx, .LC4[rip]
	call	_ZSt20__throw_format_errorPKc
	nop
	.seh_endproc
	.section	.text$_ZN5Lenia8TaxonomyD1Ev,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZN5Lenia8TaxonomyD1Ev
	.def	_ZN5Lenia8TaxonomyD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Lenia8TaxonomyD1Ev
_ZN5Lenia8TaxonomyD1Ev:
.LFB7259:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	mov	rcx, QWORD PTR 128[rcx]
	lea	rax, 144[rbx]
	cmp	rcx, rax
	je	.L222
	mov	rax, QWORD PTR 144[rbx]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L222:
	mov	rcx, QWORD PTR 96[rbx]
	lea	rax, 112[rbx]
	cmp	rcx, rax
	je	.L223
	mov	rax, QWORD PTR 112[rbx]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L223:
	mov	rcx, QWORD PTR 64[rbx]
	lea	rax, 80[rbx]
	cmp	rcx, rax
	je	.L224
	mov	rax, QWORD PTR 80[rbx]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L224:
	mov	rcx, QWORD PTR 32[rbx]
	lea	rax, 48[rbx]
	cmp	rcx, rax
	je	.L225
	mov	rax, QWORD PTR 48[rbx]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L225:
	mov	rcx, QWORD PTR [rbx]
	lea	rax, 16[rbx]
	cmp	rcx, rax
	je	.L227
	mov	rdx, QWORD PTR 16[rbx]
	add	rdx, 1
	add	rsp, 32
	pop	rbx
	jmp	_ZdlPvy
	.p2align 4,,10
	.p2align 3
.L227:
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.section	.text$_ZNSt9__unicode13_Utf_iteratorIcDiPKcS2_NS_5_ReplEE12_M_read_utf8Ev,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNSt9__unicode13_Utf_iteratorIcDiPKcS2_NS_5_ReplEE12_M_read_utf8Ev
	.def	_ZNSt9__unicode13_Utf_iteratorIcDiPKcS2_NS_5_ReplEE12_M_read_utf8Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt9__unicode13_Utf_iteratorIcDiPKcS2_NS_5_ReplEE12_M_read_utf8Ev
_ZNSt9__unicode13_Utf_iteratorIcDiPKcS2_NS_5_ReplEE12_M_read_utf8Ev:
.LFB7387:
	.seh_endprologue
	mov	rdx, QWORD PTR 16[rcx]
	lea	r8, 1[rdx]
	mov	QWORD PTR 16[rcx], r8
	movsx	eax, BYTE PTR [rdx]
	test	al, al
	js	.L229
	mov	r8d, 1
.L230:
	mov	DWORD PTR [rcx], eax
	mov	eax, 256
	mov	BYTE PTR 26[rcx], r8b
	mov	WORD PTR 24[rcx], ax
	mov	QWORD PTR 16[rcx], rdx
	ret
	.p2align 4,,10
	.p2align 3
.L229:
	cmp	al, -63
	jbe	.L246
	mov	r9, QWORD PTR 32[rcx]
	cmp	r8, r9
	je	.L246
	cmp	al, -33
	jbe	.L249
	cmp	al, -17
	ja	.L232
	cmp	al, -32
	je	.L240
	cmp	al, -19
	mov	r10d, -65
	mov	r8d, -97
	mov	r11d, -128
	cmove	r10d, r8d
.L233:
	movzx	r8d, BYTE PTR 1[rdx]
	and	eax, 15
	cmp	r8b, r11b
	jb	.L246
	cmp	r10b, r8b
	jb	.L246
	lea	r10, 2[rdx]
	mov	QWORD PTR 16[rcx], r10
	cmp	r9, r10
	je	.L235
	sal	eax, 6
	and	r8d, 63
	or	r8d, eax
	movzx	eax, BYTE PTR 2[rdx]
	lea	r9d, -128[rax]
	cmp	r9b, 63
	ja	.L235
	sal	r8d, 6
	and	eax, 63
	or	eax, r8d
	mov	r8d, 3
	jmp	.L230
	.p2align 4,,10
	.p2align 3
.L249:
	movzx	r8d, BYTE PTR 1[rdx]
	and	eax, 31
	lea	r9d, -128[r8]
	cmp	r9b, 63
	ja	.L246
	and	r8d, 63
	sal	eax, 6
	or	eax, r8d
	mov	r8d, 2
	jmp	.L230
	.p2align 4,,10
	.p2align 3
.L246:
	mov	r8d, 1
	mov	eax, 65533
	jmp	.L230
	.p2align 4,,10
	.p2align 3
.L232:
	cmp	al, -12
	ja	.L246
	cmp	al, -16
	je	.L244
	cmp	al, -12
	mov	r10d, -65
	mov	r8d, -113
	mov	r11d, -128
	cmove	r10d, r8d
.L236:
	movzx	r8d, BYTE PTR 1[rdx]
	and	eax, 7
	cmp	r8b, r11b
	jb	.L246
	cmp	r10b, r8b
	jb	.L246
	lea	r10, 2[rdx]
	mov	QWORD PTR 16[rcx], r10
	cmp	r9, r10
	je	.L235
	sal	eax, 6
	and	r8d, 63
	or	r8d, eax
	movzx	eax, BYTE PTR 2[rdx]
	lea	r10d, -128[rax]
	cmp	r10b, 63
	ja	.L235
	lea	r10, 3[rdx]
	mov	QWORD PTR 16[rcx], r10
	cmp	r9, r10
	je	.L248
	and	eax, 63
	sal	r8d, 6
	or	r8d, eax
	movzx	eax, BYTE PTR 3[rdx]
	lea	r9d, -128[rax]
	cmp	r9b, 63
	ja	.L248
	sal	r8d, 6
	and	eax, 63
	or	eax, r8d
	mov	r8d, 4
	jmp	.L230
.L240:
	mov	r11d, -96
	mov	r10d, -65
	jmp	.L233
.L235:
	mov	r8d, 2
	mov	eax, 65533
	jmp	.L230
.L244:
	mov	r11d, -112
	mov	r10d, -65
	jmp	.L236
.L248:
	mov	r8d, 3
	mov	eax, 65533
	jmp	.L230
	.seh_endproc
	.section	.text$_ZNSt8__format5_SpecIcE23_M_parse_fill_and_alignEPKcS3_,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNSt8__format5_SpecIcE23_M_parse_fill_and_alignEPKcS3_
	.def	_ZNSt8__format5_SpecIcE23_M_parse_fill_and_alignEPKcS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8__format5_SpecIcE23_M_parse_fill_and_alignEPKcS3_
_ZNSt8__format5_SpecIcE23_M_parse_fill_and_alignEPKcS3_:
.LFB7349:
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
	sub	rsp, 136
	.seh_stackalloc	136
	.seh_endprologue
	movzx	ebp, BYTE PTR [rdx]
	mov	rsi, rcx
	mov	rbx, rdx
	mov	rdi, r8
	cmp	bpl, 123
	je	.L262
	cmp	rdx, r8
	je	.L253
	vmovq	xmm1, rdx
	lea	r13, 32[rsp]
	xor	eax, eax
	mov	QWORD PTR 64[rsp], r8
	vpunpcklqdq	xmm0, xmm1, xmm1
	mov	rcx, r13
	mov	WORD PTR 56[rsp], ax
	vmovdqu	XMMWORD PTR 40[rsp], xmm0
	mov	BYTE PTR 58[rsp], 0
	call	_ZNSt9__unicode13_Utf_iteratorIcDiPKcS2_NS_5_ReplEE12_M_read_utf8Ev
	mov	rax, QWORD PTR 64[rsp]
	mov	rdx, QWORD PTR 48[rsp]
	movzx	r12d, BYTE PTR 56[rsp]
	vmovdqu	ymm0, YMMWORD PTR 32[rsp]
	movzx	r8d, BYTE PTR 57[rsp]
	movzx	ecx, BYTE PTR 58[rsp]
	mov	QWORD PTR 112[rsp], rax
	movzx	eax, r12b
	vmovdqu	YMMWORD PTR 80[rsp], ymm0
	add	eax, 1
	cmp	eax, r8d
	je	.L270
	vzeroupper
.L254:
	mov	ecx, DWORD PTR 80[rsp+r12*4]
	cmp	ecx, 55295
	ja	.L271
.L257:
	cmp	rdi, rdx
	je	.L253
	movzx	eax, BYTE PTR [rdx]
	cmp	al, 62
	je	.L263
	cmp	al, 94
	je	.L264
	mov	r8d, 1
	cmp	al, 60
	jne	.L253
.L259:
	movzx	eax, BYTE PTR [rsi]
	mov	DWORD PTR 8[rsi], ecx
	and	eax, -4
	or	eax, r8d
	mov	BYTE PTR [rsi], al
	lea	rax, 1[rdx]
	add	rsp, 136
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.p2align 4,,10
	.p2align 3
.L270:
	cmp	rdi, rdx
	je	.L269
	add	rcx, rdx
	cmp	rdi, rcx
	jne	.L272
.L269:
	vzeroupper
	.p2align 4
	.p2align 3
.L253:
	cmp	bpl, 62
	je	.L265
	cmp	bpl, 94
	je	.L266
	mov	edx, 1
	cmp	bpl, 60
	jne	.L262
.L261:
	movzx	eax, BYTE PTR [rsi]
	mov	DWORD PTR 8[rsi], 32
	and	eax, -4
	or	eax, edx
	mov	BYTE PTR [rsi], al
	lea	rax, 1[rbx]
	add	rsp, 136
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.p2align 4,,10
	.p2align 3
.L262:
	mov	rax, rbx
	add	rsp, 136
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.p2align 4,,10
	.p2align 3
.L263:
	mov	r8d, 2
	jmp	.L259
	.p2align 4,,10
	.p2align 3
.L265:
	mov	edx, 2
	jmp	.L261
	.p2align 4,,10
	.p2align 3
.L266:
	mov	edx, 3
	jmp	.L261
	.p2align 4,,10
	.p2align 3
.L264:
	mov	r8d, 3
	jmp	.L259
	.p2align 4,,10
	.p2align 3
.L272:
	mov	QWORD PTR 48[rsp], rcx
	mov	rcx, r13
	vzeroupper
	call	_ZNSt9__unicode13_Utf_iteratorIcDiPKcS2_NS_5_ReplEE12_M_read_utf8Ev
	mov	rdx, QWORD PTR 48[rsp]
	jmp	.L254
	.p2align 4,,10
	.p2align 3
.L271:
	lea	eax, -57344[rcx]
	cmp	eax, 1056767
	ja	.L253
	jmp	.L257
	.seh_endproc
	.section	.text$_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_EN11_Save_errnoD1Ev,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_EN11_Save_errnoD1Ev
	.def	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_EN11_Save_errnoD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_EN11_Save_errnoD1Ev
_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_EN11_Save_errnoD1Ev:
.LFB7539:
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
	je	.L276
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L276:
	mov	ebx, DWORD PTR [rbx]
	call	rsi
	mov	DWORD PTR [rax], ebx
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA7539:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7539-.LLSDACSB7539
.LLSDACSB7539:
.LLSDACSE7539:
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
.LFB7593:
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
	je	.L280
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L280:
	mov	ebx, DWORD PTR [rbx]
	call	rsi
	mov	DWORD PTR [rax], ebx
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA7593:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7593-.LLSDACSB7593
.LLSDACSB7593:
.LLSDACSE7593:
	.section	.text$_ZZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_EN11_Save_errnoD1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_,"x"
	.linkonce discard
	.p2align 4
	.globl	_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_
	.def	_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_
_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_:
.LFB7608:
	sub	rsp, 216
	.seh_stackalloc	216
	.seh_endprologue
	vmovdqu64	zmm0, ZMMWORD PTR .LC6[rip]
	movabs	r9, 4122263930388298034
	movabs	r10, 16106987313379638
	vmovdqu64	ZMMWORD PTR [rsp], zmm0
	vmovdqu64	zmm0, ZMMWORD PTR .LC7[rip]
	mov	QWORD PTR 193[rsp], r10
	vmovdqu64	ZMMWORD PTR 64[rsp], zmm0
	vmovdqu64	zmm0, ZMMWORD PTR .LC8[rip]
	vmovdqu64	ZMMWORD PTR 128[rsp], zmm0
	mov	QWORD PTR 185[rsp], r9
	lea	r9d, -1[rdx]
	cmp	r8d, 99
	jbe	.L282
	.p2align 4
	.p2align 3
.L283:
	mov	edx, r8d
	mov	eax, r8d
	imul	rdx, rdx, 1374389535
	shr	rdx, 37
	imul	r10d, edx, 100
	sub	eax, r10d
	mov	r10d, r8d
	mov	r8d, edx
	mov	edx, r9d
	add	eax, eax
	lea	r11d, 1[rax]
	movzx	eax, BYTE PTR [rsp+rax]
	movzx	r11d, BYTE PTR [rsp+r11]
	mov	BYTE PTR [rcx+rdx], r11b
	lea	edx, -1[r9]
	sub	r9d, 2
	mov	BYTE PTR [rcx+rdx], al
	cmp	r10d, 9999
	ja	.L283
.L282:
	lea	eax, 48[r8]
	cmp	r8d, 9
	jbe	.L285
	add	r8d, r8d
	lea	eax, 1[r8]
	movzx	eax, BYTE PTR [rsp+rax]
	mov	BYTE PTR 1[rcx], al
	movzx	eax, BYTE PTR [rsp+r8]
.L285:
	mov	BYTE PTR [rcx], al
	vzeroupper
	add	rsp, 216
	ret
	.seh_endproc
	.section	.text$_ZNSt8__detail18__to_chars_10_implIyEEvPcjT_,"x"
	.linkonce discard
	.p2align 4
	.globl	_ZNSt8__detail18__to_chars_10_implIyEEvPcjT_
	.def	_ZNSt8__detail18__to_chars_10_implIyEEvPcjT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8__detail18__to_chars_10_implIyEEvPcjT_
_ZNSt8__detail18__to_chars_10_implIyEEvPcjT_:
.LFB7624:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 208
	.seh_stackalloc	208
	.seh_endprologue
	vmovdqu64	zmm0, ZMMWORD PTR .LC6[rip]
	movabs	r9, 4122263930388298034
	movabs	r10, 16106987313379638
	vmovdqu64	ZMMWORD PTR [rsp], zmm0
	vmovdqu64	zmm0, ZMMWORD PTR .LC7[rip]
	mov	QWORD PTR 193[rsp], r10
	vmovdqu64	ZMMWORD PTR 64[rsp], zmm0
	vmovdqu64	zmm0, ZMMWORD PTR .LC8[rip]
	vmovdqu64	ZMMWORD PTR 128[rsp], zmm0
	mov	QWORD PTR 185[rsp], r9
	lea	r9d, -1[rdx]
	cmp	r8, 99
	jbe	.L288
	movabs	r11, 2951479051793528259
	.p2align 4
	.p2align 3
.L289:
	mov	rdx, r8
	shr	rdx, 2
	mov	rax, rdx
	mul	r11
	mov	rax, r8
	mov	r10, rdx
	and	rdx, -4
	shr	r10, 2
	add	rdx, r10
	lea	rdx, [rdx+rdx*4]
	sal	rdx, 2
	sub	rax, rdx
	mov	rdx, r8
	mov	r8, r10
	mov	r10d, r9d
	add	rax, rax
	movzx	ebx, BYTE PTR 1[rsp+rax]
	movzx	eax, BYTE PTR [rsp+rax]
	mov	BYTE PTR [rcx+r10], bl
	lea	r10d, -1[r9]
	sub	r9d, 2
	mov	BYTE PTR [rcx+r10], al
	cmp	rdx, 9999
	ja	.L289
.L288:
	lea	eax, 48[r8]
	cmp	r8, 9
	jbe	.L291
	add	r8, r8
	movzx	eax, BYTE PTR 1[rsp+r8]
	mov	BYTE PTR 1[rcx], al
	movzx	eax, BYTE PTR [rsp+r8]
.L291:
	mov	BYTE PTR [rcx], al
	vzeroupper
	add	rsp, 208
	pop	rbx
	ret
	.seh_endproc
	.section	.text$_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_,"x"
	.linkonce discard
	.p2align 4
	.globl	_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_
	.def	_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_
_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_:
.LFB8134:
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	movsx	ax, BYTE PTR [rdx]
	mov	r10, rdx
	cmp	al, 48
	je	.L310
	lea	edx, -49[rax]
	cmp	dl, 8
	ja	.L296
	lea	r9, 1[r10]
	cmp	r9, r8
	je	.L297
	movzx	ebx, BYTE PTR 1[r10]
	lea	edx, -48[rbx]
	cmp	dl, 9
	ja	.L297
	mov	r11, r10
	xor	eax, eax
	mov	ebx, 16
	jmp	.L298
	.p2align 4,,10
	.p2align 3
.L311:
	lea	eax, [rax+rax*4]
	movzx	r9d, r9b
	lea	eax, [r9+rax*2]
.L301:
	add	r11, 1
	cmp	r8, r11
	je	.L307
.L298:
	movzx	edx, BYTE PTR [r11]
	lea	r9d, -48[rdx]
	cmp	r9b, 9
	ja	.L299
	sub	ebx, 4
	jns	.L311
	mov	edx, 10
	mul	dx
	jo	.L296
	movzx	r9d, r9b
	add	r9w, ax
	jc	.L296
	mov	eax, r9d
	jmp	.L301
	.p2align 4,,10
	.p2align 3
.L299:
	cmp	r10, r11
	jne	.L307
	.p2align 4
	.p2align 3
.L296:
	mov	QWORD PTR [rcx], 0
	mov	QWORD PTR 8[rcx], 0
.L293:
	mov	rax, rcx
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L297:
	sub	eax, 48
	mov	QWORD PTR 8[rcx], r9
	mov	WORD PTR [rcx], ax
	mov	rax, rcx
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L310:
	xor	eax, eax
	add	r10, 1
	mov	WORD PTR [rcx], ax
	mov	rax, rcx
	mov	QWORD PTR 8[rcx], r10
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L307:
	mov	WORD PTR [rcx], ax
	mov	QWORD PTR 8[rcx], r11
	jmp	.L293
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC9:
	.ascii "format error: width must be non-zero in format string\0"
	.align 8
.LC10:
	.ascii "format error: invalid width or precision in format-spec\0"
	.section	.text$_ZNSt8__format5_SpecIcE14_M_parse_widthEPKcS3_RSt26basic_format_parse_contextIcE,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNSt8__format5_SpecIcE14_M_parse_widthEPKcS3_RSt26basic_format_parse_contextIcE
	.def	_ZNSt8__format5_SpecIcE14_M_parse_widthEPKcS3_RSt26basic_format_parse_contextIcE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8__format5_SpecIcE14_M_parse_widthEPKcS3_RSt26basic_format_parse_contextIcE
_ZNSt8__format5_SpecIcE14_M_parse_widthEPKcS3_RSt26basic_format_parse_contextIcE:
.LFB8141:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rdx
	movzx	edx, BYTE PTR [rdx]
	cmp	dl, 48
	je	.L349
	lea	r10, _ZNSt8__detail31__from_chars_alnum_to_val_tableILb0EE5valueE[rip]
	movzx	eax, dl
	cmp	BYTE PTR [r10+rax], 9
	mov	r10, rbx
	ja	.L314
	xor	eax, eax
	mov	r11d, 16
	jmp	.L323
	.p2align 4,,10
	.p2align 3
.L350:
	lea	eax, [rax+rax*4]
	movzx	r9d, r9b
	add	r10, 1
	lea	eax, [r9+rax*2]
	cmp	r8, r10
	je	.L324
.L323:
	movzx	edi, BYTE PTR [r10]
	lea	r9d, -48[rdi]
	cmp	r9b, 9
	ja	.L315
	sub	r11d, 4
	jns	.L350
	mov	edx, 10
	mul	dx
	jo	.L320
	movzx	r9d, r9b
	add	r9w, ax
	jc	.L320
	add	r10, 1
	mov	eax, r9d
	cmp	r8, r10
	jne	.L323
	.p2align 4
	.p2align 3
.L324:
	mov	WORD PTR 4[rcx], ax
	mov	edx, 1
.L325:
	movzx	eax, WORD PTR [rcx]
	and	edx, 3
	sal	edx, 7
	and	ax, -385
	or	eax, edx
	mov	WORD PTR [rcx], ax
.L312:
	mov	rax, r10
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L314:
	cmp	dl, 123
	jne	.L312
	lea	r10, 1[rbx]
	cmp	r8, r10
	je	.L351
	movsx	ax, BYTE PTR 1[rbx]
	cmp	al, 125
	je	.L352
	cmp	al, 48
	je	.L353
	lea	edx, -49[rax]
	cmp	dl, 8
	ja	.L333
	lea	r11, 2[rbx]
	cmp	r8, r11
	je	.L333
	movzx	esi, BYTE PTR 2[rbx]
	lea	edx, -48[rsi]
	cmp	dl, 9
	ja	.L334
	mov	rsi, r10
	xor	eax, eax
	mov	edi, 16
	jmp	.L342
	.p2align 4,,10
	.p2align 3
.L355:
	lea	eax, [rax+rax*4]
	movzx	r11d, r11b
	lea	eax, [r11+rax*2]
.L337:
	add	rsi, 1
	cmp	r8, rsi
	je	.L354
.L342:
	movzx	edx, BYTE PTR [rsi]
	lea	r11d, -48[rdx]
	cmp	r11b, 9
	ja	.L335
	sub	edi, 4
	jns	.L355
	mov	edx, 10
	mul	dx
	jo	.L333
	movzx	r11d, r11b
	add	r11w, ax
	jc	.L333
	mov	eax, r11d
	jmp	.L337
	.p2align 4,,10
	.p2align 3
.L315:
	cmp	rbx, r10
	jne	.L324
.L320:
	lea	rcx, .LC10[rip]
	call	_ZSt20__throw_format_errorPKc
	.p2align 4,,10
	.p2align 3
.L352:
	cmp	DWORD PTR 16[r9], 1
	je	.L344
	mov	rax, QWORD PTR 24[r9]
	mov	DWORD PTR 16[r9], 2
	lea	rdx, 1[rax]
	mov	QWORD PTR 24[r9], rdx
	mov	WORD PTR 4[rcx], ax
.L330:
	add	r10, 1
	cmp	rbx, r10
	je	.L312
	mov	edx, 2
	jmp	.L325
.L353:
	lea	r10, 2[rbx]
	xor	eax, eax
.L332:
	cmp	r8, r10
	je	.L333
.L345:
	cmp	BYTE PTR [r10], 125
	jne	.L333
	cmp	DWORD PTR 16[r9], 2
	je	.L344
	mov	DWORD PTR 16[r9], 1
	mov	WORD PTR 4[rcx], ax
	jmp	.L330
.L334:
	sub	eax, 48
	mov	r10, r11
	jmp	.L345
.L335:
	cmp	r10, rsi
	je	.L333
	mov	r10, rsi
	jmp	.L332
.L354:
	mov	r10, r8
	jmp	.L332
.L351:
	call	_ZNSt8__format39__unmatched_left_brace_in_format_stringEv
.L349:
	lea	rcx, .LC9[rip]
	call	_ZSt20__throw_format_errorPKc
.L344:
	call	_ZNSt8__format39__conflicting_indexing_in_format_stringEv
.L333:
	call	_ZNSt8__format33__invalid_arg_id_in_format_stringEv
	nop
	.seh_endproc
	.section	.text$_ZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeE,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeE
	.def	_ZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeE
_ZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeE:
.LFB7438:
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
	sub	rsp, 168
	.seh_stackalloc	168
	vmovups	XMMWORD PTR 144[rsp], xmm6
	.seh_savexmm	xmm6, 144
	.seh_endprologue
	vmovdqu	xmm0, XMMWORD PTR [rdx]
	mov	r12, QWORD PTR 8[rdx]
	vmovq	rbp, xmm0
	mov	r13d, r8d
	mov	rdi, rcx
	mov	rsi, rdx
	mov	ebx, r8d
	mov	QWORD PTR 36[rsp], 0
	and	r13d, 15
	cmp	r12, rbp
	je	.L357
	movzx	r15d, BYTE PTR 0[rbp]
	cmp	r15b, 125
	je	.L357
	cmp	r15b, 123
	je	.L402
	xor	eax, eax
	vpunpcklqdq	xmm0, xmm0, xmm0
	mov	BYTE PTR 74[rsp], 0
	mov	WORD PTR 72[rsp], ax
	lea	rax, 48[rsp]
	mov	rcx, rax
	vmovq	xmm6, rax
	mov	QWORD PTR 80[rsp], r12
	vmovdqu	XMMWORD PTR 56[rsp], xmm0
	call	_ZNSt9__unicode13_Utf_iteratorIcDiPKcS2_NS_5_ReplEE12_M_read_utf8Ev
	mov	rax, QWORD PTR 80[rsp]
	movzx	r14d, BYTE PTR 72[rsp]
	vmovdqu	ymm0, YMMWORD PTR 48[rsp]
	movzx	ecx, BYTE PTR 73[rsp]
	mov	QWORD PTR 128[rsp], rax
	movzx	eax, r14b
	mov	r8, QWORD PTR 64[rsp]
	add	eax, 1
	movzx	edx, BYTE PTR 74[rsp]
	vmovdqu	YMMWORD PTR 96[rsp], ymm0
	cmp	eax, ecx
	je	.L455
	vzeroupper
.L359:
	mov	edx, DWORD PTR 96[rsp+r14*4]
	cmp	edx, 55295
	ja	.L456
.L362:
	cmp	r12, r8
	je	.L366
	movzx	eax, BYTE PTR [r8]
	cmp	al, 62
	je	.L403
	cmp	al, 94
	je	.L404
	mov	ecx, 1
	cmp	al, 60
	je	.L365
.L366:
	cmp	r15b, 62
	je	.L368
	cmp	r15b, 94
	je	.L369
	cmp	r15b, 60
	je	.L370
	xor	ecx, ecx
	mov	edx, 32
.L371:
	movzx	r15d, BYTE PTR 0[rbp]
	cmp	r15b, 125
	je	.L373
.L400:
	lea	eax, -32[r15]
	cmp	al, 13
	ja	.L457
	movzx	eax, al
	lea	r8, CSWTCH.793[rip]
	mov	eax, DWORD PTR [r8+rax*4]
	test	eax, eax
	jne	.L458
	xor	eax, eax
	cmp	r12, rbp
	je	.L459
.L399:
	cmp	r15b, 35
	jne	.L460
	lea	r9, 1[rbp]
	cmp	r12, r9
	jne	.L461
.L380:
	movzx	eax, al
	or	ecx, 16
	and	ebx, 15
	mov	DWORD PTR 44[rsp], edx
	sal	eax, 2
	sal	ebx, 11
	mov	rbp, r9
	or	eax, ecx
	movzx	ecx, WORD PTR 36[rsp]
	or	eax, ebx
	and	cx, -30848
	or	eax, ecx
	mov	WORD PTR 36[rsp], ax
.L374:
	mov	rax, QWORD PTR 36[rsp]
	mov	QWORD PTR [rdi], rax
	mov	eax, DWORD PTR 44[rsp]
	mov	DWORD PTR 8[rdi], eax
	mov	rax, rbp
	vmovups	xmm6, XMMWORD PTR 144[rsp]
	add	rsp, 168
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
.L402:
	xor	eax, eax
	xor	r8d, r8d
	mov	edx, 32
	xor	ecx, ecx
	xor	r9d, r9d
.L358:
	sal	r8d, 4
	movzx	eax, al
	sal	r9d, 6
	mov	DWORD PTR 44[rsp], edx
	sal	eax, 2
	mov	rdx, rbp
	or	eax, ecx
	mov	ecx, ebx
	or	eax, r8d
	and	ecx, 15
	mov	r8, r12
	or	eax, r9d
	sal	ecx, 11
	mov	r9, rsi
	or	eax, ecx
	movzx	ecx, WORD PTR 36[rsp]
	and	cx, -30848
	or	eax, ecx
	lea	rcx, 36[rsp]
	mov	WORD PTR 36[rsp], ax
	call	_ZNSt8__format5_SpecIcE14_M_parse_widthEPKcS3_RSt26basic_format_parse_contextIcE
	mov	rbp, rax
	cmp	rax, r12
	je	.L374
	movzx	eax, BYTE PTR [rax]
	cmp	al, 125
	je	.L374
	xor	edx, edx
	cmp	al, 76
	je	.L462
.L383:
	sub	eax, 66
	cmp	al, 54
	ja	.L396
	lea	rcx, .L401[rip]
	movzx	eax, al
	movsx	rax, DWORD PTR [rcx+rax*4]
	add	rax, rcx
	jmp	rax
	.section .rdata,"dr"
	.align 4
.L401:
	.long	.L387-.L401
	.long	.L396-.L401
	.long	.L396-.L401
	.long	.L396-.L401
	.long	.L396-.L401
	.long	.L396-.L401
	.long	.L396-.L401
	.long	.L396-.L401
	.long	.L396-.L401
	.long	.L396-.L401
	.long	.L396-.L401
	.long	.L396-.L401
	.long	.L396-.L401
	.long	.L396-.L401
	.long	.L396-.L401
	.long	.L396-.L401
	.long	.L396-.L401
	.long	.L396-.L401
	.long	.L396-.L401
	.long	.L396-.L401
	.long	.L396-.L401
	.long	.L396-.L401
	.long	.L393-.L401
	.long	.L396-.L401
	.long	.L396-.L401
	.long	.L396-.L401
	.long	.L396-.L401
	.long	.L396-.L401
	.long	.L396-.L401
	.long	.L396-.L401
	.long	.L396-.L401
	.long	.L396-.L401
	.long	.L385-.L401
	.long	.L388-.L401
	.long	.L390-.L401
	.long	.L396-.L401
	.long	.L396-.L401
	.long	.L396-.L401
	.long	.L396-.L401
	.long	.L396-.L401
	.long	.L396-.L401
	.long	.L396-.L401
	.long	.L396-.L401
	.long	.L396-.L401
	.long	.L396-.L401
	.long	.L391-.L401
	.long	.L396-.L401
	.long	.L396-.L401
	.long	.L396-.L401
	.long	.L394-.L401
	.long	.L396-.L401
	.long	.L396-.L401
	.long	.L396-.L401
	.long	.L396-.L401
	.long	.L392-.L401
	.section	.text$_ZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeE,"x"
	.linkonce discard
	.p2align 4,,10
	.p2align 3
.L357:
	movzx	eax, BYTE PTR 37[rsp]
	sal	r13d, 3
	mov	DWORD PTR 44[rsp], 32
	and	eax, -121
	or	eax, r13d
	mov	BYTE PTR 37[rsp], al
	jmp	.L374
	.p2align 4,,10
	.p2align 3
.L455:
	cmp	r12, r8
	je	.L361
	add	rdx, r8
	cmp	r12, rdx
	je	.L361
	mov	QWORD PTR 64[rsp], rdx
	vmovq	rcx, xmm6
	vzeroupper
	call	_ZNSt9__unicode13_Utf_iteratorIcDiPKcS2_NS_5_ReplEE12_M_read_utf8Ev
	mov	r8, QWORD PTR 64[rsp]
	jmp	.L359
	.p2align 4,,10
	.p2align 3
.L404:
	mov	ecx, 3
.L365:
	lea	rbp, 1[r8]
.L367:
	cmp	r12, rbp
	jne	.L371
.L373:
	movzx	eax, WORD PTR 36[rsp]
	and	ebx, 15
	mov	DWORD PTR 44[rsp], edx
	sal	ebx, 11
	or	ebx, ecx
	and	ax, -30848
	or	ebx, eax
	mov	WORD PTR 36[rsp], bx
	jmp	.L374
	.p2align 4,,10
	.p2align 3
.L368:
	mov	ecx, 2
.L372:
	add	rbp, 1
	mov	edx, 32
	jmp	.L367
	.p2align 4,,10
	.p2align 3
.L370:
	mov	ecx, 1
	jmp	.L372
	.p2align 4,,10
	.p2align 3
.L369:
	mov	ecx, 3
	jmp	.L372
	.p2align 4,,10
	.p2align 3
.L458:
	lea	r8, 1[rbp]
	and	eax, 3
	cmp	r12, r8
	je	.L378
	movzx	r15d, BYTE PTR 1[rbp]
	cmp	r15b, 125
	jne	.L463
.L378:
	movzx	eax, al
	and	ebx, 15
	mov	DWORD PTR 44[rsp], edx
	mov	rbp, r8
	sal	eax, 2
	sal	ebx, 11
	or	eax, ecx
	or	ebx, eax
	movzx	eax, WORD PTR 36[rsp]
	and	ax, -30848
	or	ebx, eax
	mov	WORD PTR 36[rsp], bx
	jmp	.L374
	.p2align 4,,10
	.p2align 3
.L459:
	mov	r8, r12
	xor	eax, eax
	jmp	.L378
	.p2align 4,,10
	.p2align 3
.L461:
	movzx	r15d, BYTE PTR 1[rbp]
	cmp	r15b, 125
	je	.L380
	mov	r8d, 1
.L398:
	cmp	r15b, 48
	jne	.L464
	lea	rbp, 1[r9]
	cmp	r12, rbp
	jne	.L465
.L382:
	movzx	eax, al
	or	ecx, 64
	sal	r8d, 4
	and	ebx, 15
	sal	eax, 2
	sal	ebx, 11
	mov	DWORD PTR 44[rsp], edx
	or	eax, ecx
	movzx	ecx, WORD PTR 36[rsp]
	or	eax, r8d
	or	eax, ebx
	and	cx, -30848
	or	eax, ecx
	mov	WORD PTR 36[rsp], ax
	jmp	.L374
	.p2align 4,,10
	.p2align 3
.L361:
	mov	eax, DWORD PTR 96[rsp+r14*4]
	cmp	eax, 55295
	ja	.L466
.L451:
	vzeroupper
	jmp	.L366
	.p2align 4,,10
	.p2align 3
.L462:
	lea	rdx, 1[rbp]
	cmp	r12, rdx
	jne	.L467
.L384:
	or	BYTE PTR 36[rsp], 32
	mov	rbp, rdx
	jmp	.L374
.L392:
	add	rbp, 1
	mov	r13d, 5
	.p2align 4
	.p2align 3
.L386:
	cmp	r12, rbp
	je	.L395
	.p2align 4
	.p2align 3
.L396:
	cmp	BYTE PTR 0[rbp], 125
	jne	.L397
.L395:
	movzx	eax, WORD PTR 36[rsp]
	sal	r13d, 11
	sal	edx, 5
	or	r13d, edx
	and	ax, -30753
	or	r13d, eax
	mov	WORD PTR 36[rsp], r13w
	jmp	.L374
.L394:
	test	ebx, ebx
	jne	.L389
	add	rbp, 1
	xor	r13d, r13d
	jmp	.L386
.L391:
	add	rbp, 1
	mov	r13d, 4
	jmp	.L386
.L390:
	add	rbp, 1
	mov	r13d, 1
	jmp	.L386
.L388:
	test	ebx, ebx
	je	.L389
	add	rbp, 1
	mov	r13d, 7
	jmp	.L386
.L385:
	add	rbp, 1
	mov	r13d, 2
	jmp	.L386
.L393:
	add	rbp, 1
	mov	r13d, 6
	jmp	.L386
.L387:
	add	rbp, 1
	mov	r13d, 3
	jmp	.L386
	.p2align 4,,10
	.p2align 3
.L457:
	xor	eax, eax
.L376:
	mov	r9, rbp
	xor	r8d, r8d
	jmp	.L398
	.p2align 4,,10
	.p2align 3
.L403:
	mov	ecx, 2
	jmp	.L365
	.p2align 4,,10
	.p2align 3
.L465:
	cmp	BYTE PTR 1[r9], 125
	je	.L382
	mov	r9d, 1
	jmp	.L358
	.p2align 4,,10
	.p2align 3
.L456:
	lea	eax, -57344[rdx]
	cmp	eax, 1056767
	jbe	.L362
.L363:
	cmp	r15b, 62
	je	.L368
	cmp	r15b, 94
	je	.L369
	cmp	r15b, 60
	je	.L370
	xor	ecx, ecx
	mov	edx, 32
	jmp	.L400
	.p2align 4,,10
	.p2align 3
.L467:
	movzx	eax, BYTE PTR 1[rbp]
	cmp	al, 125
	je	.L384
	mov	rbp, rdx
	mov	edx, 1
	jmp	.L383
	.p2align 4,,10
	.p2align 3
.L389:
	cmp	r12, rbp
	je	.L395
.L397:
	call	_ZNSt8__format29__failed_to_parse_format_specEv
	.p2align 4,,10
	.p2align 3
.L466:
	sub	eax, 57344
	cmp	eax, 1056767
	jbe	.L451
	vzeroupper
	jmp	.L363
.L463:
	mov	rbp, r8
	jmp	.L399
.L460:
	movzx	r15d, BYTE PTR 0[rbp]
	jmp	.L376
.L464:
	mov	rbp, r9
	xor	r9d, r9d
	jmp	.L358
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC11:
	.ascii "format error: missing precision after '.' in format string\0"
	.section	.text$_ZNSt8__format14__formatter_fpIcE5parseERSt26basic_format_parse_contextIcE,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNSt8__format14__formatter_fpIcE5parseERSt26basic_format_parse_contextIcE
	.def	_ZNSt8__format14__formatter_fpIcE5parseERSt26basic_format_parse_contextIcE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8__format14__formatter_fpIcE5parseERSt26basic_format_parse_contextIcE
_ZNSt8__format14__formatter_fpIcE5parseERSt26basic_format_parse_contextIcE:
.LFB7346:
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
	mov	rdi, QWORD PTR 8[rdx]
	mov	QWORD PTR 52[rsp], 0
	mov	rsi, rcx
	mov	rcx, QWORD PTR [rdx]
	mov	rbx, rdx
	cmp	rcx, rdi
	je	.L469
	cmp	BYTE PTR [rcx], 125
	je	.L469
	lea	r13, 52[rsp]
	mov	rdx, rcx
	mov	r8, rdi
	mov	DWORD PTR 60[rsp], 32
	mov	rcx, r13
	call	_ZNSt8__format5_SpecIcE23_M_parse_fill_and_alignEPKcS3_
	mov	rcx, rax
	cmp	rax, rdi
	je	.L470
	movzx	eax, BYTE PTR [rax]
	cmp	al, 125
	je	.L470
	lea	edx, -32[rax]
	cmp	dl, 13
	ja	.L523
	movzx	edx, dl
	lea	r8, CSWTCH.793[rip]
	mov	ebp, DWORD PTR [r8+rdx*4]
	test	ebp, ebp
	jne	.L473
	cmp	al, 35
	je	.L524
	xor	r14d, r14d
	xor	r12d, r12d
.L475:
	movzx	eax, BYTE PTR 52[rsp]
	lea	r8d, 0[0+rbp*4]
	mov	edx, r12d
	mov	r9, rbx
	sal	edx, 4
	and	eax, -29
	or	eax, r8d
	mov	r8, rdi
	or	eax, edx
	mov	edx, r14d
	sal	edx, 6
	and	eax, -65
	or	eax, edx
	mov	rdx, rcx
	mov	rcx, r13
	mov	BYTE PTR 52[rsp], al
	call	_ZNSt8__format5_SpecIcE14_M_parse_widthEPKcS3_RSt26basic_format_parse_contextIcE
	mov	rcx, rax
	cmp	rax, rdi
	je	.L470
	movzx	edx, BYTE PTR [rax]
	cmp	dl, 125
	je	.L470
	cmp	dl, 46
	je	.L482
	xor	eax, eax
	xor	r8d, r8d
.L483:
	cmp	dl, 76
	je	.L569
	sub	edx, 65
	xor	r10d, r10d
	cmp	dl, 38
	ja	.L529
	lea	r9, .L511[rip]
	movzx	edx, dl
	movsx	rdx, DWORD PTR [r9+rdx*4]
	add	rdx, r9
	jmp	rdx
	.section .rdata,"dr"
	.align 4
.L511:
	.long	.L518-.L511
	.long	.L529-.L511
	.long	.L529-.L511
	.long	.L529-.L511
	.long	.L517-.L511
	.long	.L516-.L511
	.long	.L515-.L511
	.long	.L529-.L511
	.long	.L529-.L511
	.long	.L529-.L511
	.long	.L529-.L511
	.long	.L529-.L511
	.long	.L529-.L511
	.long	.L529-.L511
	.long	.L529-.L511
	.long	.L529-.L511
	.long	.L529-.L511
	.long	.L529-.L511
	.long	.L529-.L511
	.long	.L529-.L511
	.long	.L529-.L511
	.long	.L529-.L511
	.long	.L529-.L511
	.long	.L529-.L511
	.long	.L529-.L511
	.long	.L529-.L511
	.long	.L529-.L511
	.long	.L529-.L511
	.long	.L529-.L511
	.long	.L529-.L511
	.long	.L529-.L511
	.long	.L529-.L511
	.long	.L514-.L511
	.long	.L529-.L511
	.long	.L529-.L511
	.long	.L529-.L511
	.long	.L513-.L511
	.long	.L512-.L511
	.long	.L510-.L511
	.section	.text$_ZNSt8__format14__formatter_fpIcE5parseERSt26basic_format_parse_contextIcE,"x"
	.linkonce discard
	.p2align 4,,10
	.p2align 3
.L469:
	mov	DWORD PTR 60[rsp], 32
.L470:
	mov	rax, QWORD PTR 52[rsp]
	mov	QWORD PTR [rsi], rax
	mov	eax, DWORD PTR 60[rsp]
	mov	DWORD PTR 8[rsi], eax
	mov	rax, rcx
	add	rsp, 64
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
.L523:
	xor	r12d, r12d
	xor	ebp, ebp
.L472:
	movzx	eax, BYTE PTR [rcx]
	cmp	al, 125
	je	.L478
.L477:
	xor	r14d, r14d
	cmp	al, 48
	jne	.L480
	lea	rdx, 1[rcx]
	cmp	rdi, rdx
	jne	.L570
.L481:
	movzx	eax, BYTE PTR 52[rsp]
	sal	ebp, 2
	mov	ecx, r12d
	sal	ecx, 4
	and	eax, -29
	or	eax, ebp
	mov	r12d, eax
	or	r12d, ecx
	mov	rcx, rdx
	or	r12d, 64
	mov	BYTE PTR 52[rsp], r12b
	jmp	.L470
	.p2align 4,,10
	.p2align 3
.L473:
	lea	rdx, 1[rcx]
	and	ebp, 3
	cmp	rdi, rdx
	jne	.L571
.L476:
	lea	eax, 0[0+rbp*4]
	movzx	ebp, BYTE PTR 52[rsp]
	mov	rcx, rdx
	and	ebp, -13
	or	ebp, eax
	mov	BYTE PTR 52[rsp], bpl
	jmp	.L470
	.p2align 4,,10
	.p2align 3
.L524:
	xor	ebp, ebp
.L474:
	add	rcx, 1
	mov	r12d, 1
	cmp	rdi, rcx
	jne	.L472
.L478:
	movzx	eax, BYTE PTR 52[rsp]
	sal	r12d, 4
	sal	ebp, 2
	or	r12d, ebp
	and	eax, -29
	or	r12d, eax
	mov	BYTE PTR 52[rsp], r12b
	jmp	.L470
	.p2align 4,,10
	.p2align 3
.L570:
	movzx	eax, BYTE PTR 1[rcx]
	cmp	al, 125
	je	.L481
	mov	rcx, rdx
	mov	r14d, 1
	.p2align 4
	.p2align 3
.L480:
	cmp	al, 46
	jne	.L475
.L482:
	lea	r13, 1[rcx]
	cmp	rdi, r13
	je	.L497
	movzx	edx, BYTE PTR 1[rcx]
	lea	r8, _ZNSt8__detail31__from_chars_alnum_to_val_tableILb0EE5valueE[rip]
	cmp	BYTE PTR [r8+rdx], 9
	ja	.L485
	mov	rcx, r13
	xor	eax, eax
	mov	r9d, 16
	jmp	.L494
	.p2align 4,,10
	.p2align 3
.L573:
	lea	eax, [rax+rax*4]
	movzx	r8d, r8b
	lea	eax, [r8+rax*2]
.L488:
	add	rcx, 1
	cmp	rdi, rcx
	je	.L572
.L494:
	movzx	ebx, BYTE PTR [rcx]
	lea	r8d, -48[rbx]
	cmp	r8b, 9
	ja	.L486
	sub	r9d, 4
	jns	.L573
	mov	edx, 10
	mul	dx
	jo	.L491
	movzx	r8d, r8b
	add	r8w, ax
	jc	.L491
	mov	eax, r8d
	jmp	.L488
	.p2align 4,,10
	.p2align 3
.L529:
	xor	r9d, r9d
.L509:
	cmp	rdi, rcx
	je	.L519
.L520:
	cmp	BYTE PTR [rcx], 125
	jne	.L521
.L519:
	sal	r10d, 5
	movzx	edx, r12b
	movzx	ebp, bpl
	sal	r14d, 6
	sal	edx, 4
	sal	ebp, 2
	mov	WORD PTR 58[rsp], ax
	sal	r8d, 9
	or	edx, ebp
	sal	r9d, 11
	or	edx, r10d
	or	edx, r14d
	or	edx, r8d
	movzx	r8d, WORD PTR 52[rsp]
	or	edx, r9d
	and	r8w, -32381
	or	edx, r8d
	mov	WORD PTR 52[rsp], dx
	jmp	.L470
.L546:
	mov	rcx, r9
	mov	r10d, 1
.L510:
	add	rcx, 1
	mov	r9d, 7
	jmp	.L509
.L545:
	mov	rcx, r9
	mov	r10d, 1
.L512:
	add	rcx, 1
	mov	r9d, 5
	jmp	.L509
.L544:
	mov	rcx, r9
	mov	r10d, 1
.L513:
	add	rcx, 1
	mov	r9d, 3
	jmp	.L509
.L543:
	mov	rcx, r9
	mov	r10d, 1
.L514:
	add	rcx, 1
	mov	r9d, 1
	jmp	.L509
.L542:
	mov	rcx, r9
	mov	r10d, 1
.L515:
	add	rcx, 1
	mov	r9d, 8
	jmp	.L509
.L541:
	mov	rcx, r9
	mov	r10d, 1
.L516:
	add	rcx, 1
	mov	r9d, 6
	jmp	.L509
.L540:
	mov	rcx, r9
	mov	r10d, 1
.L517:
	add	rcx, 1
	mov	r9d, 4
	jmp	.L509
.L539:
	mov	rcx, r9
	mov	r10d, 1
.L518:
	add	rcx, 1
	mov	r9d, 2
	jmp	.L509
	.p2align 4,,10
	.p2align 3
.L569:
	lea	r9, 1[rcx]
	cmp	rdi, r9
	jne	.L574
.L507:
	movzx	edx, BYTE PTR 52[rsp]
	sal	ebp, 2
	mov	ecx, r12d
	add	r8d, r8d
	sal	ecx, 4
	mov	WORD PTR 58[rsp], ax
	and	edx, -29
	or	edx, ebp
	mov	r12d, edx
	mov	edx, r14d
	or	r12d, ecx
	sal	edx, 6
	mov	rcx, r9
	or	r12d, 32
	mov	r14d, r12d
	and	r14d, -65
	or	r14d, edx
	movzx	edx, BYTE PTR 53[rsp]
	mov	BYTE PTR 52[rsp], r14b
	and	edx, -7
	or	edx, r8d
	mov	BYTE PTR 53[rsp], dl
	jmp	.L470
	.p2align 4,,10
	.p2align 3
.L485:
	cmp	dl, 123
	je	.L575
.L497:
	lea	rcx, .LC11[rip]
	call	_ZSt20__throw_format_errorPKc
	.p2align 4,,10
	.p2align 3
.L574:
	movzx	edx, BYTE PTR 1[rcx]
	cmp	dl, 125
	je	.L507
	sub	edx, 65
	cmp	dl, 38
	ja	.L538
	lea	rcx, .L522[rip]
	movzx	edx, dl
	movsx	rdx, DWORD PTR [rcx+rdx*4]
	add	rdx, rcx
	jmp	rdx
	.section .rdata,"dr"
	.align 4
.L522:
	.long	.L539-.L522
	.long	.L538-.L522
	.long	.L538-.L522
	.long	.L538-.L522
	.long	.L540-.L522
	.long	.L541-.L522
	.long	.L542-.L522
	.long	.L538-.L522
	.long	.L538-.L522
	.long	.L538-.L522
	.long	.L538-.L522
	.long	.L538-.L522
	.long	.L538-.L522
	.long	.L538-.L522
	.long	.L538-.L522
	.long	.L538-.L522
	.long	.L538-.L522
	.long	.L538-.L522
	.long	.L538-.L522
	.long	.L538-.L522
	.long	.L538-.L522
	.long	.L538-.L522
	.long	.L538-.L522
	.long	.L538-.L522
	.long	.L538-.L522
	.long	.L538-.L522
	.long	.L538-.L522
	.long	.L538-.L522
	.long	.L538-.L522
	.long	.L538-.L522
	.long	.L538-.L522
	.long	.L538-.L522
	.long	.L543-.L522
	.long	.L538-.L522
	.long	.L538-.L522
	.long	.L538-.L522
	.long	.L544-.L522
	.long	.L545-.L522
	.long	.L546-.L522
	.section	.text$_ZNSt8__format14__formatter_fpIcE5parseERSt26basic_format_parse_contextIcE,"x"
	.linkonce discard
	.p2align 4,,10
	.p2align 3
.L575:
	lea	rdx, 2[rcx]
	cmp	rdi, rdx
	je	.L576
	cmp	BYTE PTR 2[rcx], 125
	je	.L577
	lea	rcx, 32[rsp]
	mov	r8, rdi
	call	_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_
	mov	rdx, QWORD PTR 40[rsp]
	movzx	eax, WORD PTR 32[rsp]
	test	rdx, rdx
	je	.L502
	cmp	rdi, rdx
	je	.L502
	cmp	BYTE PTR [rdx], 125
	jne	.L502
	cmp	DWORD PTR 16[rbx], 2
	je	.L504
	mov	DWORD PTR 16[rbx], 1
.L501:
	lea	rcx, 1[rdx]
	cmp	r13, rcx
	je	.L497
	mov	r8d, 2
.L496:
	cmp	rcx, rdi
	je	.L495
	movzx	edx, BYTE PTR [rcx]
	cmp	dl, 125
	jne	.L483
.L495:
	movzx	edx, BYTE PTR 52[rsp]
	sal	ebp, 2
	mov	r9d, r12d
	mov	WORD PTR 58[rsp], ax
	sal	r9d, 4
	and	edx, -29
	or	edx, ebp
	mov	r12d, edx
	mov	edx, r14d
	or	r12d, r9d
	sal	edx, 6
	mov	r14d, r12d
	and	r14d, -65
	or	r14d, edx
	lea	edx, [r8+r8]
	movzx	r8d, BYTE PTR 53[rsp]
	mov	BYTE PTR 52[rsp], r14b
	and	r8d, -7
	or	r8d, edx
	mov	BYTE PTR 53[rsp], r8b
	jmp	.L470
.L486:
	cmp	r13, rcx
	je	.L491
	mov	r8d, 1
	jmp	.L496
.L572:
	mov	r8d, 1
	jmp	.L495
.L577:
	cmp	DWORD PTR 16[rbx], 1
	je	.L504
	mov	rax, QWORD PTR 24[rbx]
	mov	DWORD PTR 16[rbx], 2
	lea	rcx, 1[rax]
	mov	QWORD PTR 24[rbx], rcx
	jmp	.L501
.L571:
	movzx	eax, BYTE PTR 1[rcx]
	cmp	al, 125
	je	.L476
	mov	rcx, rdx
	cmp	al, 35
	je	.L474
	xor	r12d, r12d
	jmp	.L477
.L538:
	mov	rcx, r9
	mov	r10d, 1
	xor	r9d, r9d
	jmp	.L520
.L491:
	lea	rcx, .LC10[rip]
	call	_ZSt20__throw_format_errorPKc
.L504:
	call	_ZNSt8__format39__conflicting_indexing_in_format_stringEv
.L502:
	call	_ZNSt8__format33__invalid_arg_id_in_format_stringEv
.L576:
	call	_ZNSt8__format39__unmatched_left_brace_in_format_stringEv
.L521:
	call	_ZNSt8__format29__failed_to_parse_format_specEv
	nop
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv:
.LFB8197:
	.seh_endprologue
	mov	rax, QWORD PTR [rcx]
	lea	rdx, 16[rcx]
	cmp	rax, rdx
	je	.L580
	mov	rdx, QWORD PTR 16[rcx]
	mov	rcx, rax
	add	rdx, 1
	jmp	_ZdlPvy
	.p2align 4,,10
	.p2align 3
.L580:
	ret
	.seh_endproc
	.section	.text$_ZNSt8__detail13__to_chars_16IjEESt15to_chars_resultPcS2_T_,"x"
	.linkonce discard
	.p2align 4
	.globl	_ZNSt8__detail13__to_chars_16IjEESt15to_chars_resultPcS2_T_
	.def	_ZNSt8__detail13__to_chars_16IjEESt15to_chars_resultPcS2_T_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8__detail13__to_chars_16IjEESt15to_chars_resultPcS2_T_
_ZNSt8__detail13__to_chars_16IjEESt15to_chars_resultPcS2_T_:
.LFB8321:
	push	r12
	.seh_pushreg	r12
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	r11, r8
	mov	r10, rdx
	sub	r11, rdx
	test	r9d, r9d
	je	.L592
	bsr	eax, r9d
	lea	edx, 4[rax]
	shr	edx, 2
	mov	eax, edx
	cmp	rax, r11
	jg	.L590
	movabs	r11, 3978425819141910832
	sub	edx, 1
	movabs	r12, 7378413942531504440
	mov	QWORD PTR [rsp], r11
	mov	QWORD PTR 8[rsp], r12
	cmp	r9d, 255
	jbe	.L585
	.p2align 6
	.p2align 4
	.p2align 3
.L586:
	mov	r11d, r9d
	mov	r8d, edx
	and	r11d, 15
	movzx	r11d, BYTE PTR [rsp+r11]
	mov	BYTE PTR [r10+r8], r11b
	mov	r8d, r9d
	lea	r11d, -1[rdx]
	shr	r9d, 8
	shr	r8d, 4
	sub	edx, 2
	and	r8d, 15
	movzx	r8d, BYTE PTR [rsp+r8]
	mov	BYTE PTR [r10+r11], r8b
	cmp	r9d, 255
	ja	.L586
.L585:
	lea	r8, [r10+rax]
	cmp	r9d, 15
	jbe	.L587
	mov	eax, r9d
	shr	r9d, 4
	and	eax, 15
	movzx	eax, BYTE PTR [rsp+rax]
	mov	BYTE PTR 1[r10], al
	movzx	eax, BYTE PTR [rsp+r9]
.L588:
	mov	BYTE PTR [r10], al
	xor	eax, eax
	mov	DWORD PTR 8[rcx], eax
	mov	rax, rcx
	mov	QWORD PTR [rcx], r8
	add	rsp, 16
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L587:
	mov	r9d, r9d
	movzx	eax, BYTE PTR [rsp+r9]
	jmp	.L588
	.p2align 4,,10
	.p2align 3
.L592:
	test	r11, r11
	js	.L590
	mov	r8, rdx
	mov	eax, 48
	jmp	.L588
	.p2align 4,,10
	.p2align 3
.L590:
	mov	eax, 132
	mov	QWORD PTR [rcx], r8
	mov	DWORD PTR 8[rcx], eax
	mov	rax, rcx
	add	rsp, 16
	pop	r12
	ret
	.seh_endproc
	.section	.text$_ZNSt8__detail13__to_chars_10IjEESt15to_chars_resultPcS2_T_,"x"
	.linkonce discard
	.p2align 4
	.globl	_ZNSt8__detail13__to_chars_10IjEESt15to_chars_resultPcS2_T_
	.def	_ZNSt8__detail13__to_chars_10IjEESt15to_chars_resultPcS2_T_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8__detail13__to_chars_10IjEESt15to_chars_resultPcS2_T_
_ZNSt8__detail13__to_chars_10IjEESt15to_chars_resultPcS2_T_:
.LFB8323:
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 216
	.seh_stackalloc	216
	.seh_endprologue
	mov	rdi, r8
	mov	rax, rdx
	sub	rdi, rdx
	cmp	r9d, 9
	jbe	.L594
	mov	edx, r9d
	mov	r11d, 1
	mov	ebx, 3518437209
	jmp	.L599
	.p2align 4,,10
	.p2align 3
.L595:
	cmp	edx, 999
	jbe	.L611
	cmp	edx, 9999
	jbe	.L612
	mov	r10d, edx
	add	r11d, 4
	imul	r10, rbx
	shr	r10, 45
	cmp	edx, 99999
	jbe	.L596
	mov	edx, r10d
.L599:
	cmp	edx, 99
	ja	.L595
	add	r11d, 1
.L596:
	mov	esi, r11d
	cmp	rsi, rdi
	jg	.L607
	vmovdqu64	zmm0, ZMMWORD PTR .LC6[rip]
	lea	edx, -1[r11]
	movabs	rdi, 4122263930388298034
	movabs	rbp, 16106987313379638
	mov	QWORD PTR 193[rsp], rbp
	vmovdqu64	ZMMWORD PTR [rsp], zmm0
	vmovdqu64	zmm0, ZMMWORD PTR .LC7[rip]
	vmovdqu64	ZMMWORD PTR 64[rsp], zmm0
	vmovdqu64	zmm0, ZMMWORD PTR .LC8[rip]
	vmovdqu64	ZMMWORD PTR 128[rsp], zmm0
	mov	QWORD PTR 185[rsp], rdi
	cmp	r9d, 99
	jbe	.L601
	.p2align 4
	.p2align 3
.L602:
	mov	r10d, r9d
	mov	r8d, r9d
	imul	r10, r10, 1374389535
	shr	r10, 37
	imul	r11d, r10d, 100
	sub	r8d, r11d
	mov	r11d, r9d
	mov	r9d, r10d
	mov	r10d, edx
	add	r8d, r8d
	lea	ebx, 1[r8]
	movzx	r8d, BYTE PTR [rsp+r8]
	movzx	ebx, BYTE PTR [rsp+rbx]
	mov	BYTE PTR [rax+r10], bl
	lea	r10d, -1[rdx]
	sub	edx, 2
	mov	BYTE PTR [rax+r10], r8b
	cmp	r11d, 9999
	ja	.L602
	cmp	r11d, 999
	ja	.L601
	vzeroupper
.L603:
	add	r9d, 48
.L604:
	mov	BYTE PTR [rax], r9b
	lea	r8, [rax+rsi]
	xor	eax, eax
.L600:
	mov	DWORD PTR 8[rcx], eax
	mov	rax, rcx
	mov	QWORD PTR [rcx], r8
	add	rsp, 216
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L601:
	add	r9d, r9d
	lea	edx, 1[r9]
	movzx	r9d, BYTE PTR [rsp+r9]
	movzx	edx, BYTE PTR [rsp+rdx]
	mov	BYTE PTR 1[rax], dl
	vzeroupper
	jmp	.L604
	.p2align 4,,10
	.p2align 3
.L611:
	add	r11d, 2
	jmp	.L596
	.p2align 4,,10
	.p2align 3
.L612:
	add	r11d, 3
	jmp	.L596
	.p2align 4,,10
	.p2align 3
.L607:
	mov	eax, 132
	jmp	.L600
.L594:
	test	rdi, rdi
	jle	.L607
	mov	esi, 1
	jmp	.L603
	.seh_endproc
	.section	.text$_ZNSt8__detail12__to_chars_8IjEESt15to_chars_resultPcS2_T_,"x"
	.linkonce discard
	.p2align 4
	.globl	_ZNSt8__detail12__to_chars_8IjEESt15to_chars_resultPcS2_T_
	.def	_ZNSt8__detail12__to_chars_8IjEESt15to_chars_resultPcS2_T_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8__detail12__to_chars_8IjEESt15to_chars_resultPcS2_T_
_ZNSt8__detail12__to_chars_8IjEESt15to_chars_resultPcS2_T_:
.LFB8324:
	.seh_endprologue
	mov	r11, r8
	mov	r10, rdx
	sub	r11, rdx
	test	r9d, r9d
	je	.L625
	bsr	eax, r9d
	lea	edx, 3[rax]
	mov	eax, 2863311531
	imul	rdx, rax
	shr	rdx, 33
	mov	eax, edx
	cmp	rax, r11
	jg	.L622
	lea	r8d, -1[rdx]
	cmp	r9d, 63
	jbe	.L617
	.p2align 6
	.p2align 4
	.p2align 3
.L618:
	mov	edx, r9d
	mov	r11d, r8d
	and	edx, 7
	add	edx, 48
	mov	BYTE PTR [r10+r11], dl
	mov	edx, r9d
	lea	r11d, -1[r8]
	shr	r9d, 6
	shr	edx, 3
	sub	r8d, 2
	and	edx, 7
	add	edx, 48
	mov	BYTE PTR [r10+r11], dl
	cmp	r9d, 63
	ja	.L618
.L617:
	lea	r8, [r10+rax]
	cmp	r9d, 7
	jbe	.L624
	mov	eax, r9d
	shr	r9d, 3
	and	eax, 7
	add	eax, 48
	mov	BYTE PTR 1[r10], al
.L624:
	add	r9d, 48
.L620:
	xor	eax, eax
	mov	BYTE PTR [r10], r9b
	mov	DWORD PTR 8[rcx], eax
	mov	rax, rcx
	mov	QWORD PTR [rcx], r8
	ret
	.p2align 4,,10
	.p2align 3
.L625:
	test	r11, r11
	js	.L622
	mov	r8, rdx
	mov	r9d, 48
	jmp	.L620
	.p2align 4,,10
	.p2align 3
.L622:
	mov	eax, 132
	mov	QWORD PTR [rcx], r8
	mov	DWORD PTR 8[rcx], eax
	mov	rax, rcx
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC12:
	.ascii "false\0"
.LC13:
	.ascii "true\0"
	.section	.text$_ZNSt16basic_format_argISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE8_M_visitIZNS1_15__do_vformat_toIS3_cS4_EET_S8_St17basic_string_viewIT0_St11char_traitsISA_EERKSt17basic_format_argsIT1_EPKSt6localeEUlRS8_E_EEDcOS8_NS1_6_Arg_tE,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNSt16basic_format_argISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE8_M_visitIZNS1_15__do_vformat_toIS3_cS4_EET_S8_St17basic_string_viewIT0_St11char_traitsISA_EERKSt17basic_format_argsIT1_EPKSt6localeEUlRS8_E_EEDcOS8_NS1_6_Arg_tE
	.def	_ZNSt16basic_format_argISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE8_M_visitIZNS1_15__do_vformat_toIS3_cS4_EET_S8_St17basic_string_viewIT0_St11char_traitsISA_EERKSt17basic_format_argsIT1_EPKSt6localeEUlRS8_E_EEDcOS8_NS1_6_Arg_tE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16basic_format_argISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE8_M_visitIZNS1_15__do_vformat_toIS3_cS4_EET_S8_St17basic_string_viewIT0_St11char_traitsISA_EERKSt17basic_format_argsIT1_EPKSt6localeEUlRS8_E_EEDcOS8_NS1_6_Arg_tE
_ZNSt16basic_format_argISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE8_M_visitIZNS1_15__do_vformat_toIS3_cS4_EET_S8_St17basic_string_viewIT0_St11char_traitsISA_EERKSt17basic_format_argsIT1_EPKSt6localeEUlRS8_E_EEDcOS8_NS1_6_Arg_tE:
.LFB8361:
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
	sub	rsp, 248
	.seh_stackalloc	248
	.seh_endprologue
	mov	rbx, rdx
	movzx	r8d, r8b
	lea	rdx, .L629[rip]
	mov	rsi, rcx
	movsx	rax, DWORD PTR [rdx+r8*4]
	add	rax, rdx
	jmp	rax
	.section .rdata,"dr"
	.align 4
.L629:
	.long	.L710-.L629
	.long	.L637-.L629
	.long	.L636-.L629
	.long	.L635-.L629
	.long	.L634-.L629
	.long	.L633-.L629
	.long	.L632-.L629
	.long	.L710-.L629
	.long	.L710-.L629
	.long	.L710-.L629
	.long	.L631-.L629
	.long	.L630-.L629
	.long	.L710-.L629
	.long	.L710-.L629
	.long	.L710-.L629
	.long	.L710-.L629
	.section	.text$_ZNSt16basic_format_argISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE8_M_visitIZNS1_15__do_vformat_toIS3_cS4_EET_S8_St17basic_string_viewIT0_St11char_traitsISA_EERKSt17basic_format_argsIT1_EPKSt6localeEUlRS8_E_EEDcOS8_NS1_6_Arg_tE,"x"
	.linkonce discard
	.p2align 4,,10
	.p2align 3
.L631:
	mov	rbp, QWORD PTR [rcx]
	mov	rcx, rbp
	call	strlen
	mov	rdi, rax
.L714:
	mov	rax, QWORD PTR [rbx]
	mov	rdx, rdi
	mov	rcx, QWORD PTR [rax]
	mov	rax, QWORD PTR [rcx]
	call	[QWORD PTR 8[rax]]
	mov	rsi, rax
	test	rax, rax
	je	.L710
	mov	rcx, QWORD PTR 24[rax]
	mov	r8, rdi
	mov	rdx, rbp
	call	memcpy
	mov	rax, QWORD PTR [rsi]
	mov	rdx, rdi
	mov	rcx, rsi
	call	[QWORD PTR 16[rax]]
	mov	rax, QWORD PTR 8[rbx]
	mov	BYTE PTR [rax], 1
.L710:
	add	rsp, 248
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.p2align 4,,10
	.p2align 3
.L630:
	mov	rdi, QWORD PTR [rcx]
	mov	rbp, QWORD PTR 8[rcx]
	jmp	.L714
	.p2align 4,,10
	.p2align 3
.L637:
	vmovq	xmm1, QWORD PTR .LC14[rip]
	lea	rax, .LC13[rip]
	movzx	edi, BYTE PTR [rcx]
	vpinsrq	xmm0, xmm1, rax, 1
	mov	rax, QWORD PTR [rbx]
	xor	edi, 1
	movzx	edi, dil
	vmovdqu	XMMWORD PTR 32[rsp], xmm0
	mov	rcx, QWORD PTR [rax]
	add	edi, 4
	movsx	rbp, edi
	mov	rax, QWORD PTR [rcx]
	mov	rdx, rbp
	call	[QWORD PTR 8[rax]]
	test	rax, rax
	je	.L710
	movzx	ecx, BYTE PTR [rsi]
	mov	rdx, QWORD PTR 24[rax]
	mov	rcx, QWORD PTR 32[rsp+rcx*8]
	cmp	edi, 8
	jnb	.L639
	test	dil, 4
	jne	.L715
	test	edi, edi
	je	.L640
	movzx	r8d, BYTE PTR [rcx]
	mov	BYTE PTR [rdx], r8b
	test	dil, 2
	jne	.L716
.L640:
	mov	r8, QWORD PTR [rax]
	mov	rcx, rax
	mov	rdx, rbp
	call	[QWORD PTR 16[r8]]
	mov	rax, QWORD PTR 8[rbx]
	mov	BYTE PTR [rax], 1
	jmp	.L710
	.p2align 4,,10
	.p2align 3
.L636:
	mov	rax, QWORD PTR [rbx]
	mov	edx, 1
	mov	rcx, QWORD PTR [rax]
	mov	rax, QWORD PTR [rcx]
	call	[QWORD PTR 8[rax]]
	test	rax, rax
	je	.L710
	mov	rdx, QWORD PTR 24[rax]
	movzx	ecx, BYTE PTR [rsi]
	mov	BYTE PTR [rdx], cl
	mov	r8, QWORD PTR [rax]
	mov	rcx, rax
	mov	edx, 1
	call	[QWORD PTR 16[r8]]
	mov	rax, QWORD PTR 8[rbx]
	mov	BYTE PTR [rax], 1
	jmp	.L710
	.p2align 4,,10
	.p2align 3
.L635:
	mov	eax, DWORD PTR [rcx]
	mov	r12d, eax
	mov	ebp, eax
	shr	r12d, 31
	neg	ebp
	cmovs	ebp, eax
	cmp	ebp, 9
	jbe	.L673
	mov	eax, ebp
	mov	esi, 1
	mov	ecx, 3518437209
	jmp	.L650
	.p2align 4,,10
	.p2align 3
.L647:
	cmp	eax, 999
	jbe	.L717
	cmp	eax, 9999
	jbe	.L718
	mov	edx, eax
	add	esi, 4
	imul	rdx, rcx
	shr	rdx, 45
	cmp	eax, 99999
	jbe	.L646
	mov	eax, edx
.L650:
	cmp	eax, 99
	ja	.L647
	add	esi, 1
.L646:
	mov	rax, QWORD PTR [rbx]
	lea	r13d, [r12+rsi]
	mov	rdx, r13
	mov	rcx, QWORD PTR [rax]
	mov	rax, QWORD PTR [rcx]
	call	[QWORD PTR 8[rax]]
	mov	rdi, rax
	test	rax, rax
	je	.L710
	mov	rcx, QWORD PTR 24[rax]
	movzx	r12d, r12b
	mov	r8d, ebp
	mov	edx, esi
	mov	BYTE PTR [rcx], 45
	add	rcx, r12
	call	_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_
.L711:
	mov	rax, QWORD PTR [rdi]
	mov	rdx, r13
	mov	rcx, rdi
	call	[QWORD PTR 16[rax]]
	mov	rax, QWORD PTR 8[rbx]
	mov	BYTE PTR [rax], 1
	add	rsp, 248
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.p2align 4,,10
	.p2align 3
.L634:
	mov	ebp, DWORD PTR [rcx]
	cmp	ebp, 9
	jbe	.L675
	mov	eax, ebp
	mov	esi, 1
	mov	ecx, 3518437209
	jmp	.L656
	.p2align 4,,10
	.p2align 3
.L653:
	cmp	eax, 999
	jbe	.L719
	cmp	eax, 9999
	jbe	.L720
	mov	edx, eax
	add	esi, 4
	imul	rdx, rcx
	shr	rdx, 45
	cmp	eax, 99999
	jbe	.L721
	mov	eax, edx
.L656:
	cmp	eax, 99
	ja	.L653
	lea	r12d, 1[rsi]
	mov	rsi, r12
.L652:
	mov	rax, QWORD PTR [rbx]
	mov	rdx, r12
	mov	rcx, QWORD PTR [rax]
	mov	rax, QWORD PTR [rcx]
	call	[QWORD PTR 8[rax]]
	mov	rdi, rax
	test	rax, rax
	je	.L710
	mov	rcx, QWORD PTR 24[rax]
	mov	r8d, ebp
	mov	edx, esi
	mov	BYTE PTR [rcx], 45
	call	_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_
	mov	rax, QWORD PTR [rdi]
	mov	rdx, r12
	mov	rcx, rdi
	call	[QWORD PTR 16[rax]]
	mov	rax, QWORD PTR 8[rbx]
	mov	BYTE PTR [rax], 1
	jmp	.L710
	.p2align 4,,10
	.p2align 3
.L633:
	mov	rax, QWORD PTR [rcx]
	mov	r12, rax
	mov	rbp, rax
	shr	r12, 63
	neg	rbp
	cmovs	rbp, rax
	cmp	rbp, 9
	jbe	.L677
	mov	rcx, rbp
	mov	esi, 1
	movabs	r9, 3777893186295716171
	jmp	.L661
	.p2align 4,,10
	.p2align 3
.L658:
	cmp	rcx, 999
	jbe	.L722
	cmp	rcx, 9999
	jbe	.L723
	mov	rax, rcx
	add	esi, 4
	mul	r9
	shr	rdx, 11
	cmp	rcx, 99999
	jbe	.L657
	mov	rcx, rdx
.L661:
	cmp	rcx, 99
	ja	.L658
	add	esi, 1
.L657:
	mov	rax, QWORD PTR [rbx]
	lea	r13d, [rsi+r12]
	mov	rdx, r13
	mov	rcx, QWORD PTR [rax]
	mov	rax, QWORD PTR [rcx]
	call	[QWORD PTR 8[rax]]
	mov	rdi, rax
	test	rax, rax
	je	.L710
	mov	rcx, QWORD PTR 24[rax]
	mov	r8, rbp
	mov	edx, esi
	mov	BYTE PTR [rcx], 45
	add	rcx, r12
	call	_ZNSt8__detail18__to_chars_10_implIyEEvPcjT_
	jmp	.L711
	.p2align 4,,10
	.p2align 3
.L632:
	mov	rax, QWORD PTR [rbx]
	mov	rdi, QWORD PTR [rcx]
	mov	r9, QWORD PTR [rax]
	mov	rax, QWORD PTR [r9]
	mov	r10, QWORD PTR 8[rax]
	cmp	rdi, 9
	jbe	.L662
	mov	rcx, rdi
	mov	esi, 1
	movabs	r8, 3777893186295716171
	jmp	.L667
	.p2align 4,,10
	.p2align 3
.L663:
	cmp	rcx, 999
	jbe	.L724
	cmp	rcx, 9999
	jbe	.L725
	mov	rax, rcx
	add	esi, 4
	mul	r8
	shr	rdx, 11
	cmp	rcx, 99999
	jbe	.L664
	mov	rcx, rdx
.L667:
	cmp	rcx, 99
	ja	.L663
	add	esi, 1
.L664:
	mov	ebp, esi
	mov	rcx, r9
	mov	rdx, rbp
	call	r10
	mov	rcx, rax
	test	rax, rax
	je	.L710
	vmovdqu64	zmm0, ZMMWORD PTR .LC6[rip]
	mov	r11, QWORD PTR 24[rax]
	sub	esi, 1
	movabs	rax, 4122263930388298034
	movabs	rdx, 16106987313379638
	vmovdqu64	ZMMWORD PTR 32[rsp], zmm0
	vmovdqu64	zmm0, ZMMWORD PTR .LC7[rip]
	mov	BYTE PTR [r11], 45
	vmovdqu64	ZMMWORD PTR 96[rsp], zmm0
	vmovdqu64	zmm0, ZMMWORD PTR .LC8[rip]
	mov	QWORD PTR 225[rsp], rdx
	vmovdqu64	ZMMWORD PTR 160[rsp], zmm0
	mov	QWORD PTR 217[rsp], rax
	cmp	rdi, 99
	jbe	.L668
	movabs	r10, 2951479051793528259
	.p2align 4
	.p2align 3
.L669:
	mov	rdx, rdi
	shr	rdx, 2
	mov	rax, rdx
	mul	r10
	mov	r9, rdx
	and	rdx, -4
	shr	r9, 2
	add	rdx, r9
	lea	r8, [rdx+rdx*4]
	mov	rdx, rdi
	sal	r8, 2
	sub	rdx, r8
	mov	r8, rdi
	mov	rdi, r9
	mov	r9d, esi
	add	rdx, rdx
	movzx	eax, BYTE PTR 33[rsp+rdx]
	movzx	edx, BYTE PTR 32[rsp+rdx]
	mov	BYTE PTR [r11+r9], al
	lea	r9d, -1[rsi]
	sub	esi, 2
	mov	BYTE PTR [r11+r9], dl
	cmp	r8, 9999
	ja	.L669
	cmp	r8, 999
	ja	.L668
	vzeroupper
.L670:
	add	edi, 48
.L671:
	mov	BYTE PTR [r11], dil
	mov	rax, QWORD PTR [rcx]
	mov	rdx, rbp
	call	[QWORD PTR 16[rax]]
	mov	rax, QWORD PTR 8[rbx]
	mov	BYTE PTR [rax], 1
	jmp	.L710
	.p2align 4,,10
	.p2align 3
.L639:
	mov	r8, QWORD PTR [rcx]
	mov	QWORD PTR [rdx], r8
	mov	r8d, edi
	mov	r9, QWORD PTR -8[rcx+r8]
	mov	QWORD PTR -8[rdx+r8], r9
	lea	r8, 8[rdx]
	and	r8, -8
	sub	rdx, r8
	add	edi, edx
	sub	rcx, rdx
	and	edi, -8
	cmp	edi, 8
	jb	.L640
	and	edi, -8
	xor	edx, edx
.L643:
	mov	r9d, edx
	add	edx, 8
	mov	r10, QWORD PTR [rcx+r9]
	mov	QWORD PTR [r8+r9], r10
	cmp	edx, edi
	jb	.L643
	jmp	.L640
	.p2align 4,,10
	.p2align 3
.L668:
	add	rdi, rdi
	movzx	eax, BYTE PTR 33[rsp+rdi]
	movzx	edi, BYTE PTR 32[rsp+rdi]
	mov	BYTE PTR 1[r11], al
	vzeroupper
	jmp	.L671
	.p2align 4,,10
	.p2align 3
.L724:
	add	esi, 2
	jmp	.L664
	.p2align 4,,10
	.p2align 3
.L722:
	add	esi, 2
	jmp	.L657
	.p2align 4,,10
	.p2align 3
.L717:
	add	esi, 2
	jmp	.L646
	.p2align 4,,10
	.p2align 3
.L719:
	lea	r12d, 2[rsi]
	mov	rsi, r12
	jmp	.L652
	.p2align 4,,10
	.p2align 3
.L720:
	lea	r12d, 3[rsi]
	mov	rsi, r12
	jmp	.L652
	.p2align 4,,10
	.p2align 3
.L723:
	add	esi, 3
	jmp	.L657
	.p2align 4,,10
	.p2align 3
.L725:
	add	esi, 3
	jmp	.L664
	.p2align 4,,10
	.p2align 3
.L718:
	add	esi, 3
	jmp	.L646
	.p2align 4,,10
	.p2align 3
.L721:
	mov	r12d, esi
	jmp	.L652
.L675:
	mov	r12d, 1
	mov	esi, 1
	jmp	.L652
.L673:
	mov	esi, 1
	jmp	.L646
.L662:
	mov	rcx, r9
	mov	edx, 1
	call	r10
	mov	rcx, rax
	test	rax, rax
	je	.L710
	mov	r11, QWORD PTR 24[rcx]
	mov	ebp, 1
	mov	BYTE PTR [r11], 45
	jmp	.L670
.L677:
	mov	esi, 1
	jmp	.L657
.L715:
	mov	r8d, DWORD PTR [rcx]
	mov	edi, edi
	mov	DWORD PTR [rdx], r8d
	mov	ecx, DWORD PTR -4[rcx+rdi]
	mov	DWORD PTR -4[rdx+rdi], ecx
	jmp	.L640
.L716:
	mov	edi, edi
	movzx	ecx, WORD PTR -2[rcx+rdi]
	mov	WORD PTR -2[rdx+rdi], cx
	jmp	.L640
	.seh_endproc
	.section .rdata,"dr"
.LC15:
	.ascii "basic_string::_M_create\0"
.LC16:
	.ascii "basic_string::append\0"
.LC17:
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
.LEHB2:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
.LEHE2:
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
.LEHB3:
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev
.LEHE3:
	mov	rdx, r14
	mov	rcx, rbp
.LEHB4:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
	mov	rdx, QWORD PTR [rbx]
	mov	rcx, QWORD PTR 56[rsp]
	mov	r8d, 8
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
	mov	rdx, QWORD PTR 176[rsp]
	add	rdi, QWORD PTR -24[rdx]
	mov	rcx, rdi
	test	rax, rax
	je	.L857
	xor	edx, edx
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.LEHE4:
.L728:
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
	je	.L858
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
	je	.L790
	lea	rax, _ZNKSt5ctypeIcE8do_widenEc[rip]
	movabs	r12, 9223372036854775807
	vmovq	xmm6, rax
.L734:
	cmp	BYTE PTR 56[rbx], 0
	je	.L791
	movsx	r8d, BYTE PTR 67[rbx]
.L792:
	mov	rdx, QWORD PTR 48[rsp]
	mov	rcx, QWORD PTR 40[rsp]
.LEHB5:
	call	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_
.LEHE5:
	mov	rdx, QWORD PTR [rax]
	mov	rdx, QWORD PTR -24[rdx]
	test	BYTE PTR 32[rax+rdx], 5
	jne	.L859
	mov	rbx, QWORD PTR 120[rsp]
	lea	rdi, 160[rsp]
	mov	QWORD PTR 152[rsp], 0
	mov	QWORD PTR 144[rsp], rdi
	mov	r14, QWORD PTR 112[rsp]
	lea	rbp, 1[rbx]
	mov	BYTE PTR 160[rsp], 0
	cmp	rbp, 15
	jbe	.L735
	test	rbp, rbp
	js	.L860
	cmp	rbp, 29
	jbe	.L805
	mov	rcx, rbx
	add	rcx, 2
	js	.L861
.L737:
.LEHB6:
	call	_Znwy
.LEHE6:
	mov	r9, QWORD PTR 152[rsp]
	mov	r13, QWORD PTR 144[rsp]
	mov	r11, rax
	lea	r8, 1[r9]
	test	r9, r9
	je	.L862
	mov	QWORD PTR 64[rsp], r9
	test	r8, r8
	je	.L740
	mov	rdx, r13
	mov	rcx, rax
	call	memcpy
	cmp	r13, rdi
	mov	r9, QWORD PTR 64[rsp]
	mov	r11, rax
	je	.L741
.L740:
	mov	rax, QWORD PTR 160[rsp]
	mov	rcx, r13
	mov	QWORD PTR 64[rsp], r11
	lea	rdx, 1[rax]
	call	_ZdlPvy
	mov	r9, QWORD PTR 152[rsp]
	mov	r11, QWORD PTR 64[rsp]
.L741:
	mov	rax, r12
	mov	QWORD PTR 144[rsp], r11
	sub	rax, r9
	mov	QWORD PTR 160[rsp], rbp
	cmp	rax, rbx
	jb	.L802
	lea	r13, [r9+rbx]
	cmp	rbp, r13
	jb	.L863
.L800:
	lea	rcx, [r11+r9]
.L744:
	mov	r8, rbx
	mov	rdx, r14
	mov	rbx, r13
	call	memcpy
	mov	rbp, QWORD PTR 144[rsp]
.L743:
	mov	QWORD PTR 152[rsp], rbx
	mov	BYTE PTR 0[rbp+rbx], 0
	mov	rbp, QWORD PTR 152[rsp]
	cmp	rbp, r12
	je	.L864
	mov	rax, QWORD PTR 144[rsp]
	lea	r14, 1[rbp]
	cmp	rax, rdi
	je	.L865
	mov	rbx, QWORD PTR 160[rsp]
	cmp	rbx, r14
	jb	.L758
.L756:
	mov	BYTE PTR [rax+rbp], 10
	mov	r13, QWORD PTR 144[rsp]
.L759:
	mov	QWORD PTR 152[rsp], r14
	mov	rax, r12
	mov	BYTE PTR 1[r13+rbp], 0
	mov	r8, QWORD PTR 8[rsi]
	mov	r10, QWORD PTR 152[rsp]
	mov	r14, QWORD PTR 144[rsp]
	sub	rax, r8
	cmp	rax, r10
	jb	.L866
	mov	r13, QWORD PTR [rsi]
	lea	rbp, [r10+r8]
	cmp	QWORD PTR 32[rsp], r13
	je	.L867
	mov	rbx, QWORD PTR 16[rsi]
	cmp	rbx, rbp
	jb	.L775
.L773:
	test	r10, r10
	je	.L776
	lea	rcx, 0[r13+r8]
	cmp	r10, 1
	je	.L868
	mov	r8, r10
	mov	rdx, r14
	call	memcpy
	mov	r13, QWORD PTR [rsi]
.L776:
	mov	QWORD PTR 8[rsi], rbp
	mov	BYTE PTR 0[r13+rbp], 0
	mov	rcx, QWORD PTR 144[rsp]
	cmp	rcx, rdi
	je	.L789
	mov	rax, QWORD PTR 160[rsp]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L789:
	mov	rax, QWORD PTR 176[rsp]
	mov	rax, QWORD PTR -24[rax]
	mov	rbx, QWORD PTR 416[rsp+rax]
	test	rbx, rbx
	jne	.L734
.L790:
.LEHB7:
	call	_ZSt16__throw_bad_castv
	.p2align 4,,10
	.p2align 3
.L791:
	mov	rcx, rbx
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	mov	rax, QWORD PTR [rbx]
	vmovq	rdi, xmm6
	mov	r8d, 10
	mov	rax, QWORD PTR 48[rax]
	cmp	rax, rdi
	je	.L792
	mov	edx, 10
	mov	rcx, rbx
	call	rax
.LEHE7:
	movsx	r8d, al
	jmp	.L792
	.p2align 4,,10
	.p2align 3
.L735:
	cmp	rbx, -1
	je	.L802
	test	rbx, rbx
	jne	.L869
	mov	rbp, rdi
	jmp	.L743
	.p2align 4,,10
	.p2align 3
.L758:
	test	r14, r14
	js	.L870
	add	rbx, rbx
	cmp	r14, rbx
	jb	.L871
	mov	rcx, rbp
	add	rcx, 2
	js	.L762
	mov	rbx, r14
.L763:
.LEHB8:
	call	_Znwy
	mov	r10, QWORD PTR 144[rsp]
	mov	r13, rax
	test	rbp, rbp
	jne	.L872
.L765:
	mov	BYTE PTR 0[r13+rbp], 10
	cmp	r10, rdi
	je	.L767
	mov	rax, QWORD PTR 160[rsp]
	mov	rcx, r10
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L767:
	mov	QWORD PTR 144[rsp], r13
	mov	QWORD PTR 160[rsp], rbx
	jmp	.L759
	.p2align 4,,10
	.p2align 3
.L863:
	test	r13, r13
	js	.L745
.L804:
	lea	rax, [rbp+rbp]
	mov	QWORD PTR 64[rsp], rax
	cmp	r13, rax
	jb	.L746
	mov	rcx, r13
	add	rcx, 1
	js	.L747
	mov	QWORD PTR 64[rsp], r13
.L748:
	mov	QWORD PTR 72[rsp], r9
	call	_Znwy
.LEHE8:
	mov	r9, QWORD PTR 72[rsp]
	mov	r11, QWORD PTR 144[rsp]
	mov	rbp, rax
	test	r9, r9
	je	.L750
	cmp	r9, 1
	je	.L873
	mov	r8, r9
	mov	rdx, r11
	mov	rcx, rax
	mov	QWORD PTR 104[rsp], r9
	mov	QWORD PTR 72[rsp], r11
	call	memcpy
	mov	r9, QWORD PTR 104[rsp]
	mov	r11, QWORD PTR 72[rsp]
.L750:
	test	r14, r14
	je	.L752
	lea	rcx, 0[rbp+r9]
	mov	r8, rbx
	mov	rdx, r14
	mov	QWORD PTR 72[rsp], r11
	call	memcpy
	mov	r11, QWORD PTR 72[rsp]
.L752:
	cmp	r11, rdi
	je	.L753
	mov	rax, QWORD PTR 160[rsp]
	mov	rcx, r11
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L753:
	mov	rax, QWORD PTR 64[rsp]
	mov	QWORD PTR 144[rsp], rbp
	mov	rbx, r13
	mov	QWORD PTR 160[rsp], rax
	jmp	.L743
	.p2align 4,,10
	.p2align 3
.L775:
	test	rbp, rbp
	js	.L778
	add	rbx, rbx
	cmp	rbp, rbx
	jb	.L874
.L780:
	mov	rcx, rbp
	add	rcx, 1
	js	.L782
	mov	rbx, rbp
.L783:
	mov	QWORD PTR 72[rsp], r8
	mov	QWORD PTR 64[rsp], r10
.LEHB9:
	call	_Znwy
.LEHE9:
	mov	r8, QWORD PTR 72[rsp]
	mov	r10, QWORD PTR 64[rsp]
	mov	r13, rax
	test	r8, r8
	je	.L784
	mov	rdx, QWORD PTR [rsi]
	cmp	r8, 1
	je	.L875
	mov	rcx, rax
	mov	QWORD PTR 72[rsp], r10
	mov	QWORD PTR 64[rsp], r8
	call	memcpy
	mov	r10, QWORD PTR 72[rsp]
	mov	r8, QWORD PTR 64[rsp]
.L784:
	test	r14, r14
	je	.L786
	test	r10, r10
	je	.L786
	lea	rcx, 0[r13+r8]
	cmp	r10, 1
	je	.L876
	mov	r8, r10
	mov	rdx, r14
	call	memcpy
.L786:
	mov	rcx, QWORD PTR [rsi]
	cmp	QWORD PTR 32[rsp], rcx
	je	.L788
	mov	rax, QWORD PTR 16[rsi]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L788:
	mov	QWORD PTR [rsi], r13
	mov	QWORD PTR 16[rsi], rbx
	jmp	.L776
	.p2align 4,,10
	.p2align 3
.L865:
	cmp	r14, 16
	jne	.L756
	mov	ecx, 31
.LEHB10:
	call	_Znwy
.LEHE10:
	mov	r10, QWORD PTR 144[rsp]
	mov	r13, rax
	mov	ebx, 30
	jmp	.L757
	.p2align 4,,10
	.p2align 3
.L867:
	cmp	rbp, 15
	jbe	.L773
	test	rbp, rbp
	js	.L778
	cmp	rbp, 29
	ja	.L780
	mov	ecx, 31
	mov	ebx, 30
	jmp	.L783
	.p2align 4,,10
	.p2align 3
.L862:
	movzx	eax, BYTE PTR 0[r13]
	mov	BYTE PTR [r11], al
	cmp	r13, rdi
	jne	.L740
	mov	QWORD PTR 144[rsp], r11
	mov	r13, rbx
	xor	r9d, r9d
	mov	QWORD PTR 160[rsp], rbp
	cmp	rbp, rbx
	jnb	.L800
	jmp	.L804
	.p2align 4,,10
	.p2align 3
.L805:
	mov	ebp, 30
	mov	ecx, 31
	jmp	.L737
	.p2align 4,,10
	.p2align 3
.L872:
	cmp	rbp, 1
	je	.L877
.L757:
	mov	rdx, r10
	mov	r8, rbp
	mov	rcx, r13
	mov	QWORD PTR 64[rsp], r10
	call	memcpy
	mov	r10, QWORD PTR 64[rsp]
	jmp	.L765
	.p2align 4,,10
	.p2align 3
.L859:
	mov	rcx, QWORD PTR 56[rsp]
.LEHB11:
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
.LEHE11:
	test	rax, rax
	je	.L878
.L794:
	mov	rcx, QWORD PTR 112[rsp]
	vmovq	rax, xmm7
	cmp	rcx, rax
	je	.L795
	mov	rax, QWORD PTR 128[rsp]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L795:
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
.LEHB12:
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
.LEHE12:
.L797:
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
.L868:
	movzx	eax, BYTE PTR [r14]
	mov	BYTE PTR [rcx], al
	mov	r13, QWORD PTR [rsi]
	jmp	.L776
	.p2align 4,,10
	.p2align 3
.L857:
	mov	edx, DWORD PTR 32[rdi]
	or	edx, 4
.LEHB13:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.LEHE13:
	jmp	.L728
	.p2align 4,,10
	.p2align 3
.L746:
	cmp	QWORD PTR 64[rsp], 0
	jns	.L749
.L747:
.LEHB14:
	call	_ZSt17__throw_bad_allocv
	.p2align 4,,10
	.p2align 3
.L871:
	test	rbx, rbx
	jns	.L879
.L762:
	call	_ZSt17__throw_bad_allocv
.LEHE14:
	.p2align 4,,10
	.p2align 3
.L873:
	movzx	eax, BYTE PTR [r11]
	mov	BYTE PTR 0[rbp], al
	jmp	.L750
	.p2align 4,,10
	.p2align 3
.L874:
	test	rbx, rbx
	jns	.L880
.L782:
.LEHB15:
	call	_ZSt17__throw_bad_allocv
.LEHE15:
	.p2align 4,,10
	.p2align 3
.L876:
	movzx	eax, BYTE PTR [r14]
	mov	BYTE PTR [rcx], al
	jmp	.L786
	.p2align 4,,10
	.p2align 3
.L875:
	movzx	eax, BYTE PTR [rdx]
	mov	BYTE PTR 0[r13], al
	jmp	.L784
	.p2align 4,,10
	.p2align 3
.L861:
.LEHB16:
	call	_ZSt17__throw_bad_allocv
.LEHE16:
	.p2align 4,,10
	.p2align 3
.L877:
	movzx	eax, BYTE PTR [r10]
	mov	BYTE PTR 0[r13], al
	jmp	.L765
	.p2align 4,,10
	.p2align 3
.L749:
	lea	rcx, 1[rax]
	jmp	.L748
	.p2align 4,,10
	.p2align 3
.L878:
	mov	rax, QWORD PTR 176[rsp]
	mov	rcx, QWORD PTR 40[rsp]
	add	rcx, QWORD PTR -24[rax]
	mov	edx, DWORD PTR 32[rcx]
	or	edx, 4
.LEHB17:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.LEHE17:
	jmp	.L794
	.p2align 4,,10
	.p2align 3
.L879:
	lea	rcx, 1[rbx]
	jmp	.L763
	.p2align 4,,10
	.p2align 3
.L880:
	lea	rcx, 1[rbx]
	jmp	.L783
.L858:
	mov	rdi, QWORD PTR .refptr._ZSt4cerr[rip]
	mov	r8d, 28
	lea	rdx, .LC17[rip]
	mov	rcx, rdi
.LEHB18:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	mov	r8, QWORD PTR 8[rbx]
	mov	rdx, QWORD PTR [rbx]
	mov	rcx, rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	mov	rcx, rax
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
.LEHE18:
	or	ecx, -1
	call	exit
.L869:
	cmp	rbx, 1
	je	.L881
	mov	r13, rbx
	mov	rcx, rdi
	jmp	.L744
	.p2align 4,,10
	.p2align 3
.L881:
	movzx	eax, BYTE PTR [r14]
	mov	rbp, rdi
	mov	BYTE PTR 160[rsp], al
	jmp	.L743
.L813:
.L856:
	lea	rcx, 144[rsp]
	mov	rbx, rax
	vzeroupper
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	.L771
.L814:
	mov	rbx, rax
	vzeroupper
.L771:
	mov	rcx, QWORD PTR 48[rsp]
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
.L799:
	mov	rcx, rsi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	rcx, QWORD PTR 40[rsp]
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	mov	rcx, rbx
.LEHB19:
	call	_Unwind_Resume
.LEHE19:
.L778:
	lea	rcx, .LC15[rip]
.LEHB20:
	call	_ZSt20__throw_length_errorPKc
.LEHE20:
.L860:
	lea	rcx, .LC15[rip]
.LEHB21:
	call	_ZSt20__throw_length_errorPKc
.L820:
	jmp	.L856
.L864:
	lea	rcx, .LC16[rip]
	call	_ZSt20__throw_length_errorPKc
.L802:
	lea	rcx, .LC16[rip]
	call	_ZSt20__throw_length_errorPKc
.L745:
	lea	rcx, .LC15[rip]
	call	_ZSt20__throw_length_errorPKc
.L870:
	lea	rcx, .LC15[rip]
	call	_ZSt20__throw_length_errorPKc
.LEHE21:
.L866:
	lea	rcx, .LC16[rip]
.LEHB22:
	call	_ZSt20__throw_length_errorPKc
.LEHE22:
.L818:
	mov	rcx, QWORD PTR 56[rsp]
	mov	rbx, rax
	vzeroupper
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev
	mov	rax, rbx
	jmp	.L732
.L817:
	vzeroupper
.L732:
	mov	rdx, QWORD PTR -24[r15]
	mov	rsi, QWORD PTR 80[rsp]
	mov	QWORD PTR 176[rsp], r15
	mov	rbx, rax
	mov	QWORD PTR 176[rsp+rdx], rsi
	xor	edx, edx
	mov	QWORD PTR 184[rsp], rdx
	jmp	.L733
.L819:
	mov	rcx, rax
	vzeroupper
	call	__cxa_begin_catch
	call	__cxa_end_catch
	jmp	.L797
.L816:
	mov	rbx, rax
	vzeroupper
.L733:
	mov	rax, QWORD PTR .refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE[rip]
	mov	rcx, QWORD PTR 88[rsp]
	lea	rdx, 16[rax]
	mov	QWORD PTR 384[rsp], rdx
	call	_ZNSt8ios_baseD2Ev
	mov	rcx, rbx
.LEHB23:
	call	_Unwind_Resume
.LEHE23:
.L815:
	mov	rbx, rax
	vzeroupper
	jmp	.L799
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
	.uleb128 .LEHB2-.LFB6238
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L816-.LFB6238
	.uleb128 0
	.uleb128 .LEHB3-.LFB6238
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L817-.LFB6238
	.uleb128 0
	.uleb128 .LEHB4-.LFB6238
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L818-.LFB6238
	.uleb128 0
	.uleb128 .LEHB5-.LFB6238
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L814-.LFB6238
	.uleb128 0
	.uleb128 .LEHB6-.LFB6238
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L820-.LFB6238
	.uleb128 0
	.uleb128 .LEHB7-.LFB6238
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L814-.LFB6238
	.uleb128 0
	.uleb128 .LEHB8-.LFB6238
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L820-.LFB6238
	.uleb128 0
	.uleb128 .LEHB9-.LFB6238
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L813-.LFB6238
	.uleb128 0
	.uleb128 .LEHB10-.LFB6238
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L820-.LFB6238
	.uleb128 0
	.uleb128 .LEHB11-.LFB6238
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L814-.LFB6238
	.uleb128 0
	.uleb128 .LEHB12-.LFB6238
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L819-.LFB6238
	.uleb128 0x1
	.uleb128 .LEHB13-.LFB6238
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L818-.LFB6238
	.uleb128 0
	.uleb128 .LEHB14-.LFB6238
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L820-.LFB6238
	.uleb128 0
	.uleb128 .LEHB15-.LFB6238
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L813-.LFB6238
	.uleb128 0
	.uleb128 .LEHB16-.LFB6238
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L820-.LFB6238
	.uleb128 0
	.uleb128 .LEHB17-.LFB6238
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L814-.LFB6238
	.uleb128 0
	.uleb128 .LEHB18-.LFB6238
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L815-.LFB6238
	.uleb128 0
	.uleb128 .LEHB19-.LFB6238
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB20-.LFB6238
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L813-.LFB6238
	.uleb128 0
	.uleb128 .LEHB21-.LFB6238
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L820-.LFB6238
	.uleb128 0
	.uleb128 .LEHB22-.LFB6238
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L813-.LFB6238
	.uleb128 0
	.uleb128 .LEHB23-.LFB6238
	.uleb128 .LEHE23-.LEHB23
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
.LC24:
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
.LEHB24:
	call	_Znwy
.LEHE24:
	vmovdqu	ymm1, YMMWORD PTR .LC18[rip]
	vmovdqu	ymm0, YMMWORD PTR .LC19[rip]
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
.LEHB25:
	call	_ZN5Lenia14LoadShaderFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE25:
	mov	rcx, QWORD PTR 1280[rsp]
	cmp	rcx, rsi
	je	.L883
	mov	rax, QWORD PTR 1296[rsp]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L883:
	mov	ecx, 57
	mov	QWORD PTR 1280[rsp], rsi
.LEHB26:
	call	_Znwy
.LEHE26:
	vmovdqu	ymm2, YMMWORD PTR .LC18[rip]
	vmovdqu	ymm0, YMMWORD PTR .LC20[rip]
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
.LEHB27:
	call	_ZN5Lenia14LoadShaderFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE27:
	mov	rcx, QWORD PTR 1280[rsp]
	cmp	rcx, rsi
	je	.L884
	mov	rax, QWORD PTR 1296[rsp]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L884:
	mov	ecx, 57
	mov	QWORD PTR 1280[rsp], rsi
.LEHB28:
	call	_Znwy
.LEHE28:
	vmovdqu	ymm3, YMMWORD PTR .LC18[rip]
	vmovdqu	ymm0, YMMWORD PTR .LC21[rip]
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
.LEHB29:
	call	_ZN5Lenia14LoadShaderFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE29:
	mov	rcx, QWORD PTR 1280[rsp]
	cmp	rcx, rsi
	je	.L885
	mov	rax, QWORD PTR 1296[rsp]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L885:
	mov	rax, QWORD PTR .refptr.glad_glGenVertexArrays[rip]
	mov	rdx, rbp
	mov	ecx, 1
	vmovups	ymm0, YMMWORD PTR .LC22[rip]
	vmovups	YMMWORD PTR 208[rsp], ymm0
	vmovups	xmm0, XMMWORD PTR .LC23[rip]
	vmovups	XMMWORD PTR 240[rsp], xmm0
	vzeroupper
.LEHB30:
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
	jne	.L886
	mov	rax, QWORD PTR .refptr.glad_glGetShaderInfoLog[rip]
	xor	r8d, r8d
	mov	edx, 512
	mov	ecx, r14d
	lea	r13, 256[rsp]
	mov	r9, r13
	call	[QWORD PTR [rax]]
	mov	rsi, QWORD PTR .refptr._ZSt4cerr[rip]
	mov	r8d, 33
	lea	rdx, .LC24[rip]
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
	je	.L917
	cmp	BYTE PTR 56[r13], 0
	je	.L888
	movsx	edx, BYTE PTR 67[r13]
.L889:
	mov	rcx, rsi
	call	_ZNSo3putEc
	mov	rcx, rax
	call	_ZNSo5flushEv
.L886:
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
	jne	.L890
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
	lea	rdx, .LC24[rip]
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
	je	.L918
	cmp	BYTE PTR 56[rcx], 0
	je	.L892
	movsx	edx, BYTE PTR 67[rcx]
.L893:
	mov	rcx, rsi
	call	_ZNSo3putEc
	mov	rcx, rax
	call	_ZNSo5flushEv
.L890:
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
	jne	.L894
	mov	rax, QWORD PTR .refptr.glad_glGetShaderInfoLog[rip]
	mov	r9, rbx
	xor	r8d, r8d
	mov	ecx, r12d
	mov	edx, 512
	call	[QWORD PTR [rax]]
	mov	rsi, QWORD PTR .refptr._ZSt4cerr[rip]
	mov	r8d, 33
	lea	rdx, .LC24[rip]
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
	je	.L919
	cmp	BYTE PTR 56[rbx], 0
	je	.L896
	movsx	edx, BYTE PTR 67[rbx]
.L897:
	mov	rcx, rsi
	call	_ZNSo3putEc
	mov	rcx, rax
	call	_ZNSo5flushEv
.L894:
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
	je	.L898
	mov	rax, QWORD PTR 192[rsp]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L898:
	mov	rcx, QWORD PTR 144[rsp]
	lea	rax, 160[rsp]
	cmp	rcx, rax
	je	.L899
	mov	rax, QWORD PTR 160[rsp]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L899:
	mov	rcx, QWORD PTR 112[rsp]
	lea	rax, 128[rsp]
	cmp	rcx, rax
	je	.L916
	mov	rax, QWORD PTR 128[rsp]
	lea	rdx, 1[rax]
	call	_ZdlPvy
	nop
.L916:
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
.L888:
	mov	rcx, r13
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	mov	rax, QWORD PTR 0[r13]
	lea	r8, _ZNKSt5ctypeIcE8do_widenEc[rip]
	mov	edx, 10
	mov	rax, QWORD PTR 48[rax]
	cmp	rax, r8
	je	.L889
	mov	rcx, r13
	call	rax
	movsx	edx, al
	jmp	.L889
	.p2align 4,,10
	.p2align 3
.L892:
	mov	QWORD PTR 72[rsp], rcx
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	mov	rcx, QWORD PTR 72[rsp]
	lea	r8, _ZNKSt5ctypeIcE8do_widenEc[rip]
	mov	edx, 10
	mov	rax, QWORD PTR [rcx]
	mov	rax, QWORD PTR 48[rax]
	cmp	rax, r8
	je	.L893
	call	rax
	movsx	edx, al
	jmp	.L893
	.p2align 4,,10
	.p2align 3
.L896:
	mov	rcx, rbx
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	mov	rax, QWORD PTR [rbx]
	lea	rcx, _ZNKSt5ctypeIcE8do_widenEc[rip]
	mov	edx, 10
	mov	rax, QWORD PTR 48[rax]
	cmp	rax, rcx
	je	.L897
	mov	rcx, rbx
	call	rax
.LEHE30:
	movsx	edx, al
	jmp	.L897
.L910:
	mov	rsi, rax
	mov	rcx, rbx
	vzeroupper
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	rcx, rsi
.LEHB31:
	call	_Unwind_Resume
.LEHE31:
.L918:
.LEHB32:
	call	_ZSt16__throw_bad_castv
.L919:
	call	_ZSt16__throw_bad_castv
.LEHE32:
.L913:
	mov	rsi, rax
	mov	rcx, rbx
	vzeroupper
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	rbx, rsi
	jmp	.L905
.L914:
	mov	rbx, rax
	vzeroupper
.L905:
	mov	rcx, QWORD PTR 56[rsp]
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
.L903:
	mov	rcx, QWORD PTR 48[rsp]
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	rcx, rbx
.LEHB33:
	call	_Unwind_Resume
.LEHE33:
.L911:
	mov	rsi, rax
	mov	rcx, rbx
	vzeroupper
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	rbx, rsi
	jmp	.L903
.L912:
	mov	rbx, rax
	vzeroupper
	jmp	.L903
.L917:
.LEHB34:
	call	_ZSt16__throw_bad_castv
.LEHE34:
.L915:
	mov	rcx, QWORD PTR 64[rsp]
	mov	rbx, rax
	vzeroupper
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	.L905
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6244:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6244-.LLSDACSB6244
.LLSDACSB6244:
	.uleb128 .LEHB24-.LFB6244
	.uleb128 .LEHE24-.LEHB24
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB25-.LFB6244
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L910-.LFB6244
	.uleb128 0
	.uleb128 .LEHB26-.LFB6244
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L912-.LFB6244
	.uleb128 0
	.uleb128 .LEHB27-.LFB6244
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L911-.LFB6244
	.uleb128 0
	.uleb128 .LEHB28-.LFB6244
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L914-.LFB6244
	.uleb128 0
	.uleb128 .LEHB29-.LFB6244
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L913-.LFB6244
	.uleb128 0
	.uleb128 .LEHB30-.LFB6244
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L915-.LFB6244
	.uleb128 0
	.uleb128 .LEHB31-.LFB6244
	.uleb128 .LEHE31-.LEHB31
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB32-.LFB6244
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L915-.LFB6244
	.uleb128 0
	.uleb128 .LEHB33-.LFB6244
	.uleb128 .LEHE33-.LEHB33
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB34-.LFB6244
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L915-.LFB6244
	.uleb128 0
.LLSDACSE6244:
	.section	.text$_ZN5Lenia7SetupGLEPjS0_S0_S0_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy:
.LFB8465:
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
	mov	rbx, rcx
	mov	rsi, rdx
	lea	rdi, 16[rcx]
	cmp	rdi, QWORD PTR [rcx]
	je	.L936
	mov	rax, QWORD PTR 16[rcx]
	cmp	rax, rdx
	jb	.L937
.L935:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L937:
	test	rdx, rdx
	js	.L923
	add	rax, rax
	cmp	rdx, rax
	jb	.L938
.L924:
	mov	rcx, rsi
	add	rcx, 1
	js	.L926
.L927:
	call	_Znwy
	mov	r12, QWORD PTR [rbx]
	mov	rbp, rax
	mov	rax, QWORD PTR 8[rbx]
	lea	r8, 1[rax]
	test	rax, rax
	je	.L939
	test	r8, r8
	jne	.L940
.L929:
	mov	rax, QWORD PTR 16[rbx]
	mov	rcx, r12
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L930:
	mov	QWORD PTR [rbx], rbp
	mov	QWORD PTR 16[rbx], rsi
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L940:
	mov	rdx, r12
	mov	rcx, rbp
	call	memcpy
	cmp	rdi, r12
	jne	.L929
	jmp	.L930
	.p2align 4,,10
	.p2align 3
.L938:
	lea	rcx, 1[rax]
	mov	rsi, rax
	test	rax, rax
	jns	.L927
.L926:
	call	_ZSt17__throw_bad_allocv
	.p2align 4,,10
	.p2align 3
.L936:
	cmp	rdx, 15
	jbe	.L935
	test	rdx, rdx
	js	.L923
	mov	eax, 30
	cmp	rdx, rax
	cmovb	rsi, rax
	jmp	.L924
	.p2align 4,,10
	.p2align 3
.L939:
	movzx	eax, BYTE PTR [r12]
	mov	BYTE PTR 0[rbp], al
	cmp	rdi, r12
	jne	.L929
	jmp	.L930
.L923:
	lea	rcx, .LC15[rip]
	call	_ZSt20__throw_length_errorPKc
	nop
	.seh_endproc
	.section	.text$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5Lenia6AnimalEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE22_M_emplace_hint_uniqueIJRS5_RSA_EEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5Lenia6AnimalEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE22_M_emplace_hint_uniqueIJRS5_RSA_EEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_
	.def	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5Lenia6AnimalEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE22_M_emplace_hint_uniqueIJRS5_RSA_EEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5Lenia6AnimalEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE22_M_emplace_hint_uniqueIJRS5_RSA_EEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5Lenia6AnimalEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE22_M_emplace_hint_uniqueIJRS5_RSA_EEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_:
.LFB8819:
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
.LEHB35:
	call	_Znwy
.LEHE35:
	mov	r14, QWORD PTR [rsi]
	mov	rsi, QWORD PTR 8[rsi]
	lea	r12, 48[rax]
	mov	rbx, rax
	mov	QWORD PTR 32[rax], r12
	cmp	rsi, 15
	ja	.L971
	cmp	rsi, 1
	je	.L972
	test	rsi, rsi
	jne	.L973
.L948:
	mov	rax, r12
.L947:
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
	je	.L974
	mov	ecx, 1
	lea	r9, 8[rdi]
	test	rax, rax
	je	.L975
.L953:
	mov	r8, rbp
	mov	rdx, rbx
	call	_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_
	add	QWORD PTR 40[rdi], 1
	mov	rdi, rbx
.L956:
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
.L972:
	movzx	eax, BYTE PTR [r14]
	mov	BYTE PTR 48[rbx], al
	jmp	.L948
	.p2align 4,,10
	.p2align 3
.L974:
	mov	rdi, rax
	cmp	rsi, r12
	je	.L957
	mov	rax, QWORD PTR 48[rbx]
	mov	rcx, rsi
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L957:
	mov	edx, 72
	mov	rcx, rbx
	call	_ZdlPvy
	jmp	.L956
	.p2align 4,,10
	.p2align 3
.L971:
	test	rsi, rsi
	js	.L976
	mov	rcx, rsi
	add	rcx, 1
	js	.L977
.LEHB36:
	call	_Znwy
	mov	QWORD PTR 32[rbx], rax
	mov	rcx, rax
	mov	QWORD PTR 48[rbx], rsi
.L945:
	mov	r8, rsi
	mov	rdx, r14
	call	memcpy
	mov	rax, QWORD PTR 32[rbx]
	jmp	.L947
	.p2align 4,,10
	.p2align 3
.L975:
	cmp	rbp, r9
	je	.L953
	mov	r12, QWORD PTR 40[rbp]
	cmp	r14, r12
	mov	r8, r12
	cmovbe	r8, r14
	test	r8, r8
	je	.L954
	mov	rdx, QWORD PTR 32[rbp]
	mov	rcx, rsi
	mov	QWORD PTR 56[rsp], r9
	call	memcmp
	mov	r9, QWORD PTR 56[rsp]
	test	eax, eax
	mov	ecx, eax
	jne	.L955
.L954:
	mov	rdx, r14
	xor	ecx, ecx
	sub	rdx, r12
	cmp	rdx, 2147483647
	jg	.L953
	cmp	rdx, -2147483648
	jl	.L961
	mov	ecx, edx
.L955:
	shr	ecx, 31
	jmp	.L953
	.p2align 4,,10
	.p2align 3
.L977:
	call	_ZSt17__throw_bad_allocv
	.p2align 4,,10
	.p2align 3
.L973:
	mov	rcx, r12
	jmp	.L945
.L961:
	mov	ecx, 1
	jmp	.L953
.L976:
	lea	rcx, .LC15[rip]
	call	_ZSt20__throw_length_errorPKc
.LEHE36:
.L962:
	mov	rcx, rax
	vzeroupper
	call	__cxa_begin_catch
	mov	edx, 72
	mov	rcx, rbx
	call	_ZdlPvy
.LEHB37:
	call	__cxa_rethrow
.LEHE37:
.L963:
	mov	rbx, rax
	vzeroupper
	call	__cxa_end_catch
	mov	rcx, rbx
.LEHB38:
	call	_Unwind_Resume
	nop
.LEHE38:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
	.align 4
.LLSDA8819:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT8819-.LLSDATTD8819
.LLSDATTD8819:
	.byte	0x1
	.uleb128 .LLSDACSE8819-.LLSDACSB8819
.LLSDACSB8819:
	.uleb128 .LEHB35-.LFB8819
	.uleb128 .LEHE35-.LEHB35
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB36-.LFB8819
	.uleb128 .LEHE36-.LEHB36
	.uleb128 .L962-.LFB8819
	.uleb128 0x1
	.uleb128 .LEHB37-.LFB8819
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L963-.LFB8819
	.uleb128 0
	.uleb128 .LEHB38-.LFB8819
	.uleb128 .LEHE38-.LEHB38
	.uleb128 0
	.uleb128 0
.LLSDACSE8819:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT8819:
	.section	.text$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5Lenia6AnimalEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE22_M_emplace_hint_uniqueIJRS5_RSA_EEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_,"x"
	.linkonce discard
	.seh_endproc
	.section .rdata,"dr"
.LC25:
	.ascii "resources/animals.csv\0"
	.align 8
.LC26:
	.ascii "file resources/animals.csv couldn't be opened\0"
	.align 8
.LC27:
	.ascii "basic_string: construction from null is not valid\0"
.LC28:
	.ascii "vector::_M_realloc_append\0"
.LC29:
	.ascii "stoul\0"
.LC30:
	.ascii "stof\0"
.LC31:
	.ascii "stoi\0"
	.text
	.p2align 4
	.def	_ZN5LeniaL18LoadAnimalsFromCSVEj.constprop.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN5LeniaL18LoadAnimalsFromCSVEj.constprop.0
_ZN5LeniaL18LoadAnimalsFromCSVEj.constprop.0:
.LFB9894:
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
	sub	rsp, 2200
	.seh_stackalloc	2200
	vmovups	XMMWORD PTR 2048[rsp], xmm6
	.seh_savexmm	xmm6, 2048
	vmovups	XMMWORD PTR 2064[rsp], xmm7
	.seh_savexmm	xmm7, 2064
	vmovups	XMMWORD PTR 2080[rsp], xmm8
	.seh_savexmm	xmm8, 2080
	vmovups	XMMWORD PTR 2096[rsp], xmm9
	.seh_savexmm	xmm9, 2096
	vmovups	XMMWORD PTR 2112[rsp], xmm10
	.seh_savexmm	xmm10, 2112
	vmovups	XMMWORD PTR 2128[rsp], xmm11
	.seh_savexmm	xmm11, 2128
	vmovups	XMMWORD PTR 2144[rsp], xmm12
	.seh_savexmm	xmm12, 2144
	vmovups	XMMWORD PTR 2160[rsp], xmm13
	.seh_savexmm	xmm13, 2160
	vmovups	XMMWORD PTR 2176[rsp], xmm14
	.seh_savexmm	xmm14, 2176
	.seh_endprologue
	mov	r8d, 8
	lea	rdx, .LC25[rip]
	lea	rax, 1568[rsp]
	mov	rcx, rax
	mov	QWORD PTR 208[rsp], rax
.LEHB39:
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.LEHE39:
	lea	rcx, 1656[rsp]
	call	_ZNKSt12__basic_fileIcE7is_openEv
	test	al, al
	je	.L1369
	lea	rax, 368[rsp]
	mov	BYTE PTR 368[rsp], 0
	mov	QWORD PTR 352[rsp], rax
	mov	rax, QWORD PTR 1568[rsp]
	mov	QWORD PTR 360[rsp], 0
	mov	rax, QWORD PTR -24[rax]
	mov	rbx, QWORD PTR 1808[rsp+rax]
	lea	rax, 352[rsp]
	mov	QWORD PTR 200[rsp], rax
	test	rbx, rbx
	je	.L1201
	mov	rax, QWORD PTR .refptr._ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE[rip]
	add	rax, 64
	vmovq	xmm8, rax
	mov	rax, QWORD PTR .refptr._ZTVSt15basic_streambufIcSt11char_traitsIcEE[rip]
	add	rax, 16
	vpinsrq	xmm7, xmm8, rax, 1
.L980:
	cmp	BYTE PTR 56[rbx], 0
	je	.L1204
	movsx	r8d, BYTE PTR 67[rbx]
.L1205:
	mov	rdx, QWORD PTR 200[rsp]
	mov	rcx, QWORD PTR 208[rsp]
.LEHB40:
	call	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_
.LEHE40:
	mov	rdx, QWORD PTR [rax]
	mov	rdx, QWORD PTR -24[rdx]
	test	BYTE PTR 32[rax+rdx], 5
	jne	.L1370
	lea	rax, 896[rsp]
	lea	rsi, 768[rsp]
	mov	rcx, rax
	mov	QWORD PTR 120[rsp], rsi
	mov	QWORD PTR 184[rsp], rax
	call	_ZNSt8ios_baseC2Ev
	mov	rbx, QWORD PTR .refptr._ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE[rip]
	xor	ecx, ecx
	xor	edx, edx
	mov	rax, QWORD PTR .refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE[rip]
	vpxor	xmm0, xmm0, xmm0
	mov	WORD PTR 1120[rsp], cx
	mov	rbp, QWORD PTR 16[rbx]
	mov	rdi, QWORD PTR 24[rbx]
	vmovdqu	YMMWORD PTR 1128[rsp], ymm0
	mov	QWORD PTR 1112[rsp], 0
	add	rax, 16
	mov	QWORD PTR 896[rsp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR 768[rsp], rbp
	mov	QWORD PTR 144[rsp], rdi
	mov	QWORD PTR 768[rsp+rax], rdi
	mov	QWORD PTR 776[rsp], 0
	add	rsi, QWORD PTR -24[rbp]
	mov	rcx, rsi
	vzeroupper
.LEHB41:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
.LEHE41:
	mov	rax, QWORD PTR 32[rbx]
	xor	edx, edx
	mov	QWORD PTR 784[rsp], rax
	mov	QWORD PTR 152[rsp], rax
	mov	rax, QWORD PTR -24[rax]
	lea	rcx, 784[rsp+rax]
	mov	rax, QWORD PTR 40[rbx]
	mov	QWORD PTR [rcx], rax
	mov	QWORD PTR 160[rsp], rax
.LEHB42:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
.LEHE42:
	mov	rax, QWORD PTR 8[rbx]
	mov	rsi, QWORD PTR 48[rbx]
	vpxor	xmm0, xmm0, xmm0
	mov	QWORD PTR 168[rsp], rax
	mov	rax, QWORD PTR -24[rax]
	mov	QWORD PTR 176[rsp], rsi
	mov	QWORD PTR 768[rsp+rax], rsi
	mov	rax, QWORD PTR .refptr._ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE[rip]
	vmovdqu	YMMWORD PTR 800[rsp], ymm0
	vpxor	xmm0, xmm0, xmm0
	vmovdqu	XMMWORD PTR 784[rsp], xmm7
	add	rax, 24
	mov	QWORD PTR 768[rsp], rax
	mov	rax, QWORD PTR .refptr._ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE[rip]
	vmovdqu	XMMWORD PTR 832[rsp], xmm0
	add	rax, 104
	mov	QWORD PTR 896[rsp], rax
	lea	rax, 848[rsp]
	mov	QWORD PTR 224[rsp], rax
	mov	rcx, rax
	vzeroupper
	call	_ZNSt6localeC1Ev
	mov	rax, QWORD PTR .refptr._ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE[rip]
	mov	rsi, QWORD PTR 352[rsp]
	mov	DWORD PTR 856[rsp], 0
	mov	rbx, QWORD PTR 360[rsp]
	add	rax, 16
	mov	QWORD PTR 792[rsp], rax
	lea	rax, 880[rsp]
	mov	QWORD PTR 232[rsp], rax
	mov	QWORD PTR 864[rsp], rax
	test	rsi, rsi
	jne	.L983
	test	rbx, rbx
	jne	.L1371
.L983:
	cmp	rbx, 15
	ja	.L1372
	cmp	rbx, 1
	jne	.L990
	movzx	eax, BYTE PTR [rsi]
	mov	BYTE PTR 880[rsp], al
.L991:
	mov	rax, QWORD PTR 864[rsp]
	mov	QWORD PTR 872[rsp], rbx
	xor	r9d, r9d
	xor	r8d, r8d
	mov	BYTE PTR [rax+rbx], 0
	lea	rbx, 792[rsp]
	mov	rdx, QWORD PTR 864[rsp]
	mov	DWORD PTR 856[rsp], 24
	mov	rcx, rbx
.LEHB43:
	call	_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcyy
.LEHE43:
	mov	rcx, QWORD PTR 184[rsp]
	mov	rdx, rbx
.LEHB44:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
.LEHE44:
	lea	rax, 400[rsp]
	xor	ebx, ebx
	xor	esi, esi
	mov	QWORD PTR 392[rsp], 0
	mov	QWORD PTR 384[rsp], rax
	vmovq	xmm12, rax
	lea	rax, 384[rsp]
	movabs	r15, 288230376151711743
	mov	BYTE PTR 400[rsp], 0
	mov	QWORD PTR 104[rsp], 0
	mov	QWORD PTR 96[rsp], rax
	.p2align 4
	.p2align 3
.L999:
	mov	rdx, QWORD PTR 96[rsp]
	mov	rcx, QWORD PTR 120[rsp]
	mov	r8d, 44
.LEHB45:
	call	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_
	mov	rdx, QWORD PTR [rax]
	mov	rdx, QWORD PTR -24[rdx]
	test	BYTE PTR 32[rax+rdx], 5
	jne	.L1373
	cmp	QWORD PTR 104[rsp], rbx
	je	.L1000
	mov	rdi, QWORD PTR 392[rsp]
	lea	rcx, 16[rbx]
	mov	r12, QWORD PTR 384[rsp]
	mov	QWORD PTR [rbx], rcx
	cmp	rdi, 15
	ja	.L1374
	cmp	rdi, 1
	je	.L1375
	test	rdi, rdi
	jne	.L1004
.L1006:
	mov	QWORD PTR 8[rbx], rdi
	add	rbx, 32
	mov	BYTE PTR [rcx+rdi], 0
	jmp	.L999
	.p2align 4,,10
	.p2align 3
.L1000:
	mov	r13, QWORD PTR 104[rsp]
	sub	r13, rsi
	mov	rdi, r13
	sar	rdi, 5
	cmp	rdi, r15
	je	.L1376
	test	rdi, rdi
	mov	eax, 1
	cmovne	rax, rdi
	add	rdi, rax
	jc	.L1011
	movabs	rax, 288230376151711743
	cmp	rdi, rax
	cmova	rdi, rax
	sal	rdi, 5
.L1012:
	mov	rcx, rdi
	call	_Znwy
	add	r13, rax
	mov	r14, QWORD PTR 392[rsp]
	mov	rdx, QWORD PTR 384[rsp]
	mov	r12, rax
	lea	rcx, 16[r13]
	mov	QWORD PTR 0[r13], rcx
	cmp	r14, 15
	ja	.L1377
	cmp	r14, 1
	je	.L1378
	test	r14, r14
	jne	.L1016
.L1018:
	mov	QWORD PTR 8[r13], r14
	mov	BYTE PTR [rcx+r14], 0
	cmp	rbx, rsi
	je	.L1222
.L1449:
	lea	rax, 16[rsi]
	lea	r8, 16[rbx]
	mov	rdx, r12
	.p2align 6
	.p2align 4
	.p2align 3
.L1030:
	lea	r9, 16[rdx]
	mov	r10, QWORD PTR -8[rax]
	mov	QWORD PTR [rdx], r9
	mov	rcx, QWORD PTR -16[rax]
	cmp	rcx, rax
	je	.L1379
	mov	QWORD PTR [rdx], rcx
	mov	rcx, QWORD PTR [rax]
	add	rax, 32
	add	rdx, 32
	mov	QWORD PTR -24[rdx], r10
	mov	QWORD PTR -16[rdx], rcx
	cmp	rax, r8
	jne	.L1030
.L1029:
	sub	rbx, rsi
	add	rbx, r12
.L1020:
	add	rbx, 32
	test	rsi, rsi
	je	.L1031
	mov	rdx, QWORD PTR 104[rsp]
	mov	rcx, rsi
	sub	rdx, rsi
	call	_ZdlPvy
.L1031:
	lea	rax, [r12+rdi]
	mov	rsi, r12
	mov	QWORD PTR 104[rsp], rax
	jmp	.L999
	.p2align 4,,10
	.p2align 3
.L1379:
	lea	rcx, 1[r10]
	cmp	ecx, 8
	jnb	.L1022
	test	cl, 4
	jne	.L1380
	test	ecx, ecx
	je	.L1023
	movzx	r10d, BYTE PTR [rax]
	mov	BYTE PTR [r9], r10b
	test	cl, 2
	jne	.L1348
.L1365:
	mov	r10, QWORD PTR -8[rax]
.L1023:
	add	rax, 32
	mov	QWORD PTR 8[rdx], r10
	add	rdx, 32
	cmp	r8, rax
	jne	.L1030
	jmp	.L1029
	.p2align 4,,10
	.p2align 3
.L1374:
	test	rdi, rdi
	js	.L1381
	mov	rcx, rdi
	add	rcx, 1
	js	.L1382
	call	_Znwy
	mov	QWORD PTR [rbx], rax
	mov	rcx, rax
	mov	QWORD PTR 16[rbx], rdi
.L1004:
	mov	r8, rdi
	mov	rdx, r12
	call	memcpy
	mov	rcx, QWORD PTR [rbx]
	jmp	.L1006
	.p2align 4,,10
	.p2align 3
.L1375:
	movzx	edx, BYTE PTR [r12]
	mov	BYTE PTR 16[rbx], dl
	jmp	.L1006
	.p2align 4,,10
	.p2align 3
.L1022:
	mov	r10, QWORD PTR [rax]
	mov	QWORD PTR [r9], r10
	mov	r10d, ecx
	mov	r11, QWORD PTR -8[rax+r10]
	mov	QWORD PTR -8[r9+r10], r11
	lea	r10, 24[rdx]
	mov	r11, rax
	and	r10, -8
	sub	r9, r10
	add	ecx, r9d
	sub	r11, r9
	and	ecx, -8
	cmp	ecx, 8
	jb	.L1365
	and	ecx, -8
	xor	r9d, r9d
.L1026:
	mov	r13d, r9d
	add	r9d, 8
	mov	r14, QWORD PTR [r11+r13]
	mov	QWORD PTR [r10+r13], r14
	cmp	r9d, ecx
	jb	.L1026
	jmp	.L1365
	.p2align 4,,10
	.p2align 3
.L1373:
	mov	r13, QWORD PTR 160[rsi]
	mov	r12, QWORD PTR __imp__errno[rip]
	call	r12
	mov	edi, DWORD PTR [rax]
	call	r12
.LEHE45:
	mov	DWORD PTR [rax], 0
	mov	r8d, 10
	mov	rcx, r13
	lea	rax, 1168[rsp]
	mov	rdx, rax
	mov	QWORD PTR 112[rsp], rax
	call	strtoul
	vmovd	xmm13, eax
	cmp	r13, QWORD PTR 1168[rsp]
	je	.L1383
.LEHB46:
	call	r12
.LEHE46:
	cmp	DWORD PTR [rax], 34
	je	.L1384
	call	r12
	mov	r15d, DWORD PTR [rax]
	test	r15d, r15d
	je	.L1385
.L1037:
	mov	rdi, QWORD PTR 192[rsi]
.LEHB47:
	call	r12
	mov	r13d, DWORD PTR [rax]
	mov	DWORD PTR 608[rsp], r13d
	call	r12
.LEHE47:
	mov	DWORD PTR [rax], 0
	mov	rdx, QWORD PTR 112[rsp]
	mov	rcx, rdi
.LEHB48:
	call	__mingw_strtof
.LEHE48:
	vmovss	xmm9, xmm0, xmm0
	cmp	rdi, QWORD PTR 1168[rsp]
	je	.L1386
.LEHB49:
	call	r12
.LEHE49:
	cmp	DWORD PTR [rax], 34
	je	.L1387
	call	r12
	mov	r14d, DWORD PTR [rax]
	test	r14d, r14d
	je	.L1388
.L1043:
	lea	rax, 1296[rsp]
	xor	edi, edi
	mov	rcx, rax
	mov	QWORD PTR 192[rsp], rax
	call	_ZNSt8ios_baseC2Ev
	mov	rax, QWORD PTR .refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE[rip]
	xor	edx, edx
	vpxor	xmm0, xmm0, xmm0
	mov	WORD PTR 1520[rsp], di
	mov	rdi, QWORD PTR 144[rsp]
	add	rax, 16
	mov	QWORD PTR 1168[rsp], rbp
	mov	rcx, QWORD PTR 112[rsp]
	vmovdqu	YMMWORD PTR 1528[rsp], ymm0
	mov	QWORD PTR 1296[rsp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR 1512[rsp], 0
	mov	QWORD PTR 1168[rsp+rax], rdi
	mov	QWORD PTR 1176[rsp], 0
	add	rcx, QWORD PTR -24[rbp]
	vzeroupper
.LEHB50:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
.LEHE50:
	mov	rax, QWORD PTR 152[rsp]
	xor	edx, edx
	mov	QWORD PTR 1184[rsp], rax
	mov	rax, QWORD PTR -24[rax]
	lea	rcx, 1184[rsp+rax]
	mov	rax, QWORD PTR 160[rsp]
	mov	QWORD PTR [rcx], rax
.LEHB51:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
.LEHE51:
	mov	rax, QWORD PTR 168[rsp]
	mov	rdi, QWORD PTR 176[rsp]
	vpxor	xmm0, xmm0, xmm0
	mov	rax, QWORD PTR -24[rax]
	mov	QWORD PTR 1168[rsp+rax], rdi
	mov	rax, QWORD PTR .refptr._ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE[rip]
	vmovdqu	YMMWORD PTR 1200[rsp], ymm0
	vpxor	xmm0, xmm0, xmm0
	vmovdqu	XMMWORD PTR 1184[rsp], xmm7
	add	rax, 24
	mov	QWORD PTR 1168[rsp], rax
	mov	rax, QWORD PTR .refptr._ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE[rip]
	vmovdqu	XMMWORD PTR 1232[rsp], xmm0
	add	rax, 104
	mov	QWORD PTR 1296[rsp], rax
	lea	rax, 1248[rsp]
	mov	QWORD PTR 256[rsp], rax
	mov	rcx, rax
	vzeroupper
	call	_ZNSt6localeC1Ev
	mov	rax, QWORD PTR .refptr._ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE[rip]
	mov	r13, QWORD PTR 224[rsi]
	mov	DWORD PTR 1256[rsp], 0
	mov	rdi, QWORD PTR 232[rsi]
	add	rax, 16
	mov	QWORD PTR 1192[rsp], rax
	lea	rax, 1280[rsp]
	mov	QWORD PTR 240[rsp], rax
	mov	QWORD PTR 1264[rsp], rax
	test	r13, r13
	jne	.L1048
	test	rdi, rdi
	jne	.L1389
.L1048:
	cmp	rdi, 15
	ja	.L1390
	cmp	rdi, 1
	je	.L1391
	test	rdi, rdi
	jne	.L1392
.L1056:
	mov	rax, QWORD PTR 1264[rsp]
	mov	QWORD PTR 1272[rsp], rdi
	xor	r9d, r9d
	xor	r8d, r8d
	mov	BYTE PTR [rax+rdi], 0
	lea	rdi, 1192[rsp]
	mov	rdx, QWORD PTR 1264[rsp]
	mov	DWORD PTR 1256[rsp], 24
	mov	rcx, rdi
.LEHB52:
	call	_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcyy
.LEHE52:
	mov	rcx, QWORD PTR 192[rsp]
	mov	rdx, rdi
.LEHB53:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
.LEHE53:
	lea	rax, 608[rsp]
	xor	edi, edi
	xor	r13d, r13d
	mov	QWORD PTR 128[rsp], 0
	vmovq	xmm11, rax
	.p2align 4
	.p2align 3
.L1061:
	mov	rdx, QWORD PTR 96[rsp]
	mov	rcx, QWORD PTR 112[rsp]
	mov	r8d, 59
.LEHB54:
	call	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_
	mov	rdx, QWORD PTR [rax]
	mov	rdx, QWORD PTR -24[rdx]
	test	BYTE PTR 32[rax+rdx], 5
	jne	.L1393
	mov	r14, QWORD PTR 384[rsp]
	call	r12
	mov	r15d, DWORD PTR [rax]
	mov	DWORD PTR 448[rsp], r15d
	call	r12
.LEHE54:
	mov	DWORD PTR [rax], 0
	vmovq	rdx, xmm11
	mov	rcx, r14
.LEHB55:
	call	__mingw_strtof
.LEHE55:
	vmovss	xmm6, xmm0, xmm0
	cmp	r14, QWORD PTR 608[rsp]
	je	.L1394
.LEHB56:
	call	r12
.LEHE56:
	cmp	DWORD PTR [rax], 34
	je	.L1395
	call	r12
	mov	r9d, DWORD PTR [rax]
	test	r9d, r9d
	je	.L1396
	cmp	r13, rdi
	je	.L1397
.L1066:
	vmovss	DWORD PTR 0[r13], xmm6
	add	r13, 4
	jmp	.L1061
	.p2align 4,,10
	.p2align 3
.L1396:
	call	r12
	mov	DWORD PTR [rax], r15d
	cmp	r13, rdi
	jne	.L1066
.L1397:
	mov	rax, QWORD PTR 128[rsp]
	mov	r8, rdi
	sub	r8, rax
	movabs	rax, 2305843009213693951
	mov	rdx, r8
	sar	rdx, 2
	cmp	rdx, rax
	je	.L1398
	test	rdx, rdx
	mov	eax, 1
	movabs	r14, 2305843009213693951
	cmovne	rax, rdx
	add	rax, rdx
	jc	.L1074
	cmp	rax, r14
	cmovbe	r14, rax
.L1074:
	sal	r14, 2
	mov	QWORD PTR 136[rsp], r8
	mov	rcx, r14
.LEHB57:
	call	_Znwy
	mov	r8, QWORD PTR 136[rsp]
	mov	r15, rax
	vmovss	DWORD PTR [rax+r8], xmm6
	lea	r13, 4[rax+r8]
	test	r8, r8
	jg	.L1399
	cmp	QWORD PTR 128[rsp], 0
	jne	.L1076
.L1077:
	mov	QWORD PTR 128[rsp], r15
	lea	rdi, [r15+r14]
	jmp	.L1061
	.p2align 4,,10
	.p2align 3
.L1393:
	mov	rax, QWORD PTR 128[rsp]
	sub	r13, rax
	movabs	rax, 9223372036854775800
	cmp	rax, r13
	jb	.L1079
	mov	rcx, r13
	call	_Znay
	vmovq	xmm6, rax
	cmp	r13, 4
	jle	.L1400
	mov	rdx, QWORD PTR 128[rsp]
	mov	r8, r13
	mov	rcx, rax
	call	memcpy
.L1082:
	mov	r14, QWORD PTR 256[rsi]
	sar	r13, 2
	call	r12
	mov	r15d, DWORD PTR [rax]
	mov	DWORD PTR 448[rsp], r15d
	call	r12
.LEHE57:
	mov	DWORD PTR [rax], 0
	lea	rax, 608[rsp]
	mov	rcx, r14
	mov	rdx, rax
	mov	QWORD PTR 136[rsp], rax
.LEHB58:
	call	__mingw_strtof
.LEHE58:
	vmovss	xmm10, xmm0, xmm0
	cmp	r14, QWORD PTR 608[rsp]
	je	.L1401
.LEHB59:
	call	r12
.LEHE59:
	cmp	DWORD PTR [rax], 34
	je	.L1402
	call	r12
	mov	r8d, DWORD PTR [rax]
	test	r8d, r8d
	je	.L1403
.L1085:
	mov	r14, QWORD PTR 288[rsi]
.LEHB60:
	call	r12
	mov	r15d, DWORD PTR [rax]
	mov	DWORD PTR 448[rsp], r15d
	call	r12
.LEHE60:
	mov	DWORD PTR [rax], 0
	mov	rdx, QWORD PTR 136[rsp]
	mov	rcx, r14
.LEHB61:
	call	__mingw_strtof
.LEHE61:
	vmovss	xmm11, xmm0, xmm0
	cmp	r14, QWORD PTR 608[rsp]
	je	.L1404
.LEHB62:
	call	r12
.LEHE62:
	cmp	DWORD PTR [rax], 34
	je	.L1405
	call	r12
	mov	ecx, DWORD PTR [rax]
	test	ecx, ecx
	je	.L1406
.L1090:
	mov	r14, QWORD PTR 320[rsi]
.LEHB63:
	call	r12
	mov	r15d, DWORD PTR [rax]
	mov	DWORD PTR 448[rsp], r15d
	call	r12
.LEHE63:
	mov	DWORD PTR [rax], 0
	mov	rdx, QWORD PTR 136[rsp]
	mov	r8d, 10
	mov	rcx, r14
	call	strtol
	mov	DWORD PTR 288[rsp], eax
	cmp	r14, QWORD PTR 608[rsp]
	je	.L1407
.LEHB64:
	call	r12
.LEHE64:
	cmp	DWORD PTR [rax], 34
	je	.L1408
	call	r12
	mov	edx, DWORD PTR [rax]
	test	edx, edx
	je	.L1409
.L1095:
	mov	r14, QWORD PTR 352[rsi]
.LEHB65:
	call	r12
	mov	r15d, DWORD PTR [rax]
	mov	DWORD PTR 448[rsp], r15d
	call	r12
.LEHE65:
	mov	DWORD PTR [rax], 0
	mov	rdx, QWORD PTR 136[rsp]
	mov	r8d, 10
	mov	rcx, r14
	call	strtol
	mov	DWORD PTR 292[rsp], eax
	cmp	r14, QWORD PTR 608[rsp]
	je	.L1410
.LEHB66:
	call	r12
.LEHE66:
	cmp	DWORD PTR [rax], 34
	je	.L1411
	call	r12
	mov	eax, DWORD PTR [rax]
	test	eax, eax
	je	.L1412
.L1100:
	mov	r12, QWORD PTR 136[rsi]
	lea	rax, 464[rsp]
	mov	r14, QWORD PTR 128[rsi]
	mov	QWORD PTR 248[rsp], rax
	mov	QWORD PTR 448[rsp], rax
	cmp	r12, 15
	ja	.L1413
	cmp	r12, 1
	je	.L1414
	test	r12, r12
	jne	.L1415
.L1108:
	mov	rax, QWORD PTR 448[rsp]
	mov	QWORD PTR 456[rsp], r12
	mov	BYTE PTR [rax+r12], 0
	lea	rax, 496[rsp]
	mov	r12, QWORD PTR 8[rsi]
	mov	QWORD PTR 264[rsp], rax
	mov	r14, QWORD PTR [rsi]
	mov	QWORD PTR 480[rsp], rax
	cmp	r12, 15
	ja	.L1416
	cmp	r12, 1
	je	.L1417
	test	r12, r12
	jne	.L1418
.L1114:
	mov	rax, QWORD PTR 480[rsp]
	mov	QWORD PTR 488[rsp], r12
	mov	BYTE PTR [rax+r12], 0
	mov	r12, QWORD PTR 40[rsi]
	lea	rax, 528[rsp]
	mov	QWORD PTR 272[rsp], rax
	mov	r14, QWORD PTR 32[rsi]
	mov	QWORD PTR 512[rsp], rax
	cmp	r12, 15
	ja	.L1419
	cmp	r12, 1
	je	.L1420
	test	r12, r12
	jne	.L1421
.L1120:
	mov	rax, QWORD PTR 512[rsp]
	mov	QWORD PTR 520[rsp], r12
	mov	BYTE PTR [rax+r12], 0
	mov	r12, QWORD PTR 72[rsi]
	lea	rax, 560[rsp]
	mov	QWORD PTR 280[rsp], rax
	mov	r14, QWORD PTR 64[rsi]
	mov	QWORD PTR 544[rsp], rax
	cmp	r12, 15
	ja	.L1422
	cmp	r12, 1
	je	.L1423
	test	r12, r12
	jne	.L1424
.L1126:
	mov	rax, QWORD PTR 544[rsp]
	mov	QWORD PTR 552[rsp], r12
	mov	BYTE PTR [rax+r12], 0
	mov	r12, QWORD PTR 104[rsi]
	lea	rax, 592[rsp]
	mov	QWORD PTR 296[rsp], rax
	mov	r14, QWORD PTR 96[rsi]
	mov	QWORD PTR 576[rsp], rax
	cmp	r12, 15
	ja	.L1425
	cmp	r12, 1
	je	.L1426
	test	r12, r12
	jne	.L1427
.L1132:
	mov	rax, QWORD PTR 576[rsp]
	mov	QWORD PTR 584[rsp], r12
	mov	ecx, 288
	mov	BYTE PTR [rax+r12], 0
.LEHB67:
	call	_Znwy
.LEHE67:
	mov	r12, QWORD PTR 392[rsi]
	mov	QWORD PTR 216[rsp], rax
	lea	rax, 432[rsp]
	mov	QWORD PTR 304[rsp], rax
	mov	r14, QWORD PTR 384[rsi]
	mov	QWORD PTR 416[rsp], rax
	cmp	r12, 15
	ja	.L1428
	cmp	r12, 1
	je	.L1429
	test	r12, r12
	jne	.L1430
.L1138:
	mov	rax, QWORD PTR 416[rsp]
	mov	QWORD PTR 424[rsp], r12
	mov	BYTE PTR [rax+r12], 0
	movzx	eax, r13b
	mov	r12, QWORD PTR 456[rsp]
	vmovd	xmm14, eax
	lea	rax, 624[rsp]
	mov	r13, QWORD PTR 448[rsp]
	mov	QWORD PTR 312[rsp], rax
	mov	QWORD PTR 608[rsp], rax
	cmp	r12, 15
	ja	.L1431
	cmp	r12, 1
	je	.L1432
	test	r12, r12
	jne	.L1433
.L1144:
	mov	rax, QWORD PTR 608[rsp]
	mov	QWORD PTR 616[rsp], r12
	mov	BYTE PTR [rax+r12], 0
	mov	r12, QWORD PTR 488[rsp]
	lea	rax, 656[rsp]
	mov	QWORD PTR 320[rsp], rax
	mov	r13, QWORD PTR 480[rsp]
	mov	QWORD PTR 640[rsp], rax
	cmp	r12, 15
	ja	.L1434
	cmp	r12, 1
	je	.L1435
	test	r12, r12
	jne	.L1436
.L1150:
	mov	rax, QWORD PTR 640[rsp]
	mov	QWORD PTR 648[rsp], r12
	mov	BYTE PTR [rax+r12], 0
	mov	r13, QWORD PTR 520[rsp]
	lea	r12, 688[rsp]
	mov	QWORD PTR 672[rsp], r12
	mov	r14, QWORD PTR 512[rsp]
	cmp	r13, 15
	ja	.L1437
	cmp	r13, 1
	je	.L1438
	test	r13, r13
	jne	.L1439
.L1156:
	mov	rax, QWORD PTR 672[rsp]
	mov	QWORD PTR 680[rsp], r13
	mov	BYTE PTR [rax+r13], 0
	mov	r14, QWORD PTR 552[rsp]
	lea	r13, 720[rsp]
	mov	QWORD PTR 704[rsp], r13
	mov	r15, QWORD PTR 544[rsp]
	cmp	r14, 15
	ja	.L1440
	cmp	r14, 1
	je	.L1441
	test	r14, r14
	jne	.L1442
.L1162:
	mov	rax, QWORD PTR 704[rsp]
	mov	QWORD PTR 712[rsp], r14
	mov	BYTE PTR [rax+r14], 0
	mov	r15, QWORD PTR 584[rsp]
	lea	r14, 752[rsp]
	mov	QWORD PTR 736[rsp], r14
	mov	rdx, QWORD PTR 576[rsp]
	cmp	r15, 15
	ja	.L1443
	cmp	r15, 1
	je	.L1444
	test	r15, r15
	jne	.L1445
.L1168:
	mov	rax, QWORD PTR 736[rsp]
	mov	QWORD PTR 744[rsp], r15
	mov	rdx, QWORD PTR 136[rsp]
	mov	rcx, QWORD PTR 216[rsp]
	vmovss	xmm3, DWORD PTR .LC32[rip]
	mov	BYTE PTR [rax+r15], 0
	lea	r15, 416[rsp]
	mov	eax, DWORD PTR 292[rsp]
	mov	QWORD PTR 80[rsp], r15
	vdivss	xmm3, xmm3, xmm9
	vmovss	DWORD PTR 56[rsp], xmm11
	sub	eax, 1
	vmovss	DWORD PTR 48[rsp], xmm10
	mov	DWORD PTR 72[rsp], eax
	mov	eax, DWORD PTR 288[rsp]
	vmovd	DWORD PTR 40[rsp], xmm14
	sub	eax, 1
	vmovq	QWORD PTR 32[rsp], xmm6
	mov	DWORD PTR 64[rsp], eax
	vmovd	eax, xmm13
	lea	r8d, 0[0+rax*4]
.LEHB68:
	call	_ZN5Lenia6AnimalC1ENS_8TaxonomyEjfPKfhffNS_10KernelCoreENS_14GrowthFunctionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE68:
	mov	rax, QWORD PTR 216[rsp]
	mov	rcx, QWORD PTR 736[rsp]
	mov	QWORD PTR 344[rsp], rax
	cmp	rcx, r14
	je	.L1175
	mov	rax, QWORD PTR 752[rsp]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L1175:
	mov	rcx, QWORD PTR 704[rsp]
	cmp	rcx, r13
	je	.L1176
	mov	rax, QWORD PTR 720[rsp]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L1176:
	mov	rcx, QWORD PTR 672[rsp]
	cmp	rcx, r12
	je	.L1177
	mov	rax, QWORD PTR 688[rsp]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L1177:
	mov	rcx, QWORD PTR 640[rsp]
	mov	rax, QWORD PTR 320[rsp]
	cmp	rcx, rax
	je	.L1178
	mov	rax, QWORD PTR 656[rsp]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L1178:
	mov	rcx, QWORD PTR 608[rsp]
	mov	rax, QWORD PTR 312[rsp]
	cmp	rcx, rax
	je	.L1179
	mov	rax, QWORD PTR 624[rsp]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L1179:
	mov	rcx, QWORD PTR 416[rsp]
	mov	rax, QWORD PTR 304[rsp]
	cmp	rcx, rax
	je	.L1180
	mov	rax, QWORD PTR 432[rsp]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L1180:
	mov	r12, QWORD PTR _ZN5LeniaL7AnimalsE[rip+16]
	mov	r13, QWORD PTR 136[rsi]
	lea	r15, _ZN5LeniaL7AnimalsE[rip+8]
	vmovq	xmm6, QWORD PTR 128[rsi]
	test	r12, r12
	je	.L1181
	mov	eax, 2147483648
	mov	QWORD PTR 136[rsp], rbx
	vmovq	rbx, xmm6
	vmovq	xmm9, rax
	movabs	rax, -2147483649
	vmovq	xmm10, rax
	jmp	.L1187
	.p2align 4,,10
	.p2align 3
.L1184:
	mov	r15, r12
	mov	r12, QWORD PTR 16[r12]
	test	r12, r12
	je	.L1446
.L1187:
	mov	r14, QWORD PTR 40[r12]
	cmp	r13, r14
	mov	r8, r14
	cmovbe	r8, r13
	test	r8, r8
	je	.L1182
	mov	rcx, QWORD PTR 32[r12]
	mov	rdx, rbx
	call	memcmp
	test	eax, eax
	jne	.L1183
.L1182:
	sub	r14, r13
	vmovq	rax, xmm9
	cmp	r14, rax
	jge	.L1184
	vmovq	rax, xmm10
	cmp	r14, rax
	jle	.L1185
	mov	eax, r14d
.L1183:
	test	eax, eax
	jns	.L1184
.L1185:
	mov	r12, QWORD PTR 24[r12]
	test	r12, r12
	jne	.L1187
.L1446:
	lea	rax, _ZN5LeniaL7AnimalsE[rip+8]
	vmovq	xmm6, rbx
	mov	rbx, QWORD PTR 136[rsp]
	cmp	r15, rax
	je	.L1181
	mov	r12, QWORD PTR 40[r15]
	cmp	r13, r12
	mov	r8, r12
	cmovbe	r8, r13
	test	r8, r8
	je	.L1188
	mov	rdx, QWORD PTR 32[r15]
	vmovq	rcx, xmm6
	call	memcmp
	test	eax, eax
	jne	.L1189
.L1188:
	mov	r9, r13
	sub	r9, r12
	cmp	r9, 2147483647
	jg	.L1190
	cmp	r9, -2147483648
	jl	.L1181
	mov	eax, r9d
.L1189:
	test	eax, eax
	js	.L1181
.L1190:
	mov	rax, QWORD PTR .refptr._ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE[rip]
	mov	rcx, QWORD PTR 576[rsp]
	add	rax, 16
	vpinsrq	xmm6, xmm8, rax, 1
	mov	rax, QWORD PTR 296[rsp]
	cmp	rcx, rax
	je	.L1191
	mov	rax, QWORD PTR 592[rsp]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L1191:
	mov	rcx, QWORD PTR 544[rsp]
	mov	rax, QWORD PTR 280[rsp]
	cmp	rcx, rax
	je	.L1192
	mov	rax, QWORD PTR 560[rsp]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L1192:
	mov	rcx, QWORD PTR 512[rsp]
	mov	rax, QWORD PTR 272[rsp]
	cmp	rcx, rax
	je	.L1193
	mov	rax, QWORD PTR 528[rsp]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L1193:
	mov	rcx, QWORD PTR 480[rsp]
	mov	rax, QWORD PTR 264[rsp]
	cmp	rcx, rax
	je	.L1194
	mov	rax, QWORD PTR 496[rsp]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L1194:
	mov	rcx, QWORD PTR 448[rsp]
	mov	rax, QWORD PTR 248[rsp]
	cmp	rcx, rax
	je	.L1195
	mov	rax, QWORD PTR 464[rsp]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L1195:
	mov	rcx, QWORD PTR 128[rsp]
	test	rcx, rcx
	je	.L1196
	sub	rdi, rcx
	mov	rdx, rdi
	call	_ZdlPvy
.L1196:
	mov	rax, QWORD PTR .refptr._ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE[rip]
	mov	rcx, QWORD PTR 1264[rsp]
	vmovdqu	XMMWORD PTR 1184[rsp], xmm6
	add	rax, 24
	mov	QWORD PTR 1168[rsp], rax
	mov	rax, QWORD PTR .refptr._ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE[rip]
	add	rax, 104
	mov	QWORD PTR 1296[rsp], rax
	mov	rax, QWORD PTR 240[rsp]
	cmp	rcx, rax
	je	.L1197
	mov	rax, QWORD PTR 1280[rsp]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L1197:
	mov	rax, QWORD PTR .refptr._ZTVSt15basic_streambufIcSt11char_traitsIcEE[rip]
	mov	rcx, QWORD PTR 256[rsp]
	add	rax, 16
	mov	QWORD PTR 1192[rsp], rax
	call	_ZNSt6localeD1Ev
	mov	rax, QWORD PTR 168[rsp]
	mov	rdi, QWORD PTR 176[rsp]
	mov	rcx, QWORD PTR 192[rsp]
	mov	rax, QWORD PTR -24[rax]
	mov	QWORD PTR 1168[rsp+rax], rdi
	mov	rax, QWORD PTR 152[rsp]
	mov	rdi, QWORD PTR 160[rsp]
	mov	QWORD PTR 1184[rsp], rax
	mov	rax, QWORD PTR -24[rax]
	mov	QWORD PTR 1184[rsp+rax], rdi
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, QWORD PTR 144[rsp]
	mov	QWORD PTR 1168[rsp], rbp
	mov	QWORD PTR 1168[rsp+rax], rdi
	mov	rax, QWORD PTR .refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE[rip]
	mov	QWORD PTR 1176[rsp], 0
	add	rax, 16
	mov	QWORD PTR 1296[rsp], rax
	call	_ZNSt8ios_baseD2Ev
	mov	rcx, QWORD PTR 384[rsp]
	vmovq	rax, xmm12
	cmp	rcx, rax
	je	.L1198
	mov	rax, QWORD PTR 400[rsp]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L1198:
	mov	rax, QWORD PTR .refptr._ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE[rip]
	mov	rcx, QWORD PTR 864[rsp]
	vmovdqu	XMMWORD PTR 784[rsp], xmm6
	add	rax, 24
	mov	QWORD PTR 768[rsp], rax
	mov	rax, QWORD PTR .refptr._ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE[rip]
	add	rax, 104
	mov	QWORD PTR 896[rsp], rax
	mov	rax, QWORD PTR 232[rsp]
	cmp	rcx, rax
	je	.L1199
	mov	rax, QWORD PTR 880[rsp]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L1199:
	mov	rax, QWORD PTR .refptr._ZTVSt15basic_streambufIcSt11char_traitsIcEE[rip]
	mov	rcx, QWORD PTR 224[rsp]
	add	rax, 16
	mov	QWORD PTR 792[rsp], rax
	call	_ZNSt6localeD1Ev
	mov	rax, QWORD PTR 168[rsp]
	mov	rdi, QWORD PTR 176[rsp]
	mov	rcx, QWORD PTR 184[rsp]
	mov	rax, QWORD PTR -24[rax]
	mov	QWORD PTR 768[rsp+rax], rdi
	mov	rax, QWORD PTR 152[rsp]
	mov	rdi, QWORD PTR 160[rsp]
	mov	QWORD PTR 784[rsp], rax
	mov	rax, QWORD PTR -24[rax]
	mov	QWORD PTR 784[rsp+rax], rdi
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, QWORD PTR 144[rsp]
	mov	QWORD PTR 768[rsp], rbp
	mov	QWORD PTR 768[rsp+rax], rdi
	mov	rax, QWORD PTR .refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE[rip]
	mov	rdi, rsi
	mov	QWORD PTR 776[rsp], 0
	add	rax, 16
	mov	QWORD PTR 896[rsp], rax
	call	_ZNSt8ios_baseD2Ev
	cmp	rbx, rsi
	je	.L1203
	.p2align 4
	.p2align 3
.L1200:
	mov	rcx, QWORD PTR [rdi]
	lea	rax, 16[rdi]
	cmp	rcx, rax
	je	.L1202
	mov	rax, QWORD PTR 16[rdi]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L1202:
	add	rdi, 32
	cmp	rbx, rdi
	jne	.L1200
.L1203:
	mov	rdx, QWORD PTR 104[rsp]
	mov	rcx, rsi
	sub	rdx, rsi
	call	_ZdlPvy
	mov	rax, QWORD PTR 1568[rsp]
	mov	rax, QWORD PTR -24[rax]
	mov	rbx, QWORD PTR 1808[rsp+rax]
	test	rbx, rbx
	jne	.L980
.L1201:
.LEHB69:
	call	_ZSt16__throw_bad_castv
.LEHE69:
	.p2align 4,,10
	.p2align 3
.L1377:
	test	r14, r14
	js	.L1447
	mov	rcx, r14
	add	rcx, 1
	js	.L1448
	mov	QWORD PTR 112[rsp], rdx
.LEHB70:
	call	_Znwy
.LEHE70:
	mov	QWORD PTR 0[r13], rax
	mov	rdx, QWORD PTR 112[rsp]
	mov	rcx, rax
	mov	QWORD PTR 16[r13], r14
.L1016:
	mov	r8, r14
	call	memcpy
	mov	rcx, QWORD PTR 0[r13]
	mov	QWORD PTR 8[r13], r14
	mov	BYTE PTR [rcx+r14], 0
	cmp	rbx, rsi
	jne	.L1449
.L1222:
	mov	rbx, r12
	jmp	.L1020
	.p2align 4,,10
	.p2align 3
.L1378:
	movzx	edx, BYTE PTR [rdx]
	mov	BYTE PTR 16[r13], dl
	jmp	.L1018
	.p2align 4,,10
	.p2align 3
.L1399:
	mov	rdx, QWORD PTR 128[rsp]
	mov	rcx, rax
	call	memcpy
.L1076:
	mov	rcx, QWORD PTR 128[rsp]
	sub	rdi, rcx
	mov	rdx, rdi
	call	_ZdlPvy
	jmp	.L1077
	.p2align 4,,10
	.p2align 3
.L1204:
	mov	rcx, rbx
.LEHB71:
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	mov	rax, QWORD PTR [rbx]
	lea	rdx, _ZNKSt5ctypeIcE8do_widenEc[rip]
	mov	r8d, 10
	mov	rax, QWORD PTR 48[rax]
	cmp	rax, rdx
	je	.L1205
	mov	edx, 10
	mov	rcx, rbx
	call	rax
.LEHE71:
	movsx	r8d, al
	jmp	.L1205
.L990:
	test	rbx, rbx
	je	.L991
	mov	rcx, QWORD PTR 232[rsp]
	jmp	.L989
.L1372:
	test	rbx, rbx
	js	.L1450
	mov	rcx, rbx
	add	rcx, 1
	js	.L1451
.LEHB72:
	call	_Znwy
.LEHE72:
	mov	QWORD PTR 864[rsp], rax
	mov	rcx, rax
	mov	QWORD PTR 880[rsp], rbx
.L989:
	mov	r8, rbx
	mov	rdx, rsi
	call	memcpy
	jmp	.L991
.L1420:
	movzx	eax, BYTE PTR [r14]
	mov	BYTE PTR 528[rsp], al
	jmp	.L1120
.L1181:
	lea	r9, 344[rsp]
	lea	r8, 128[rsi]
	mov	rdx, r15
	lea	rcx, _ZN5LeniaL7AnimalsE[rip]
.LEHB73:
	call	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5Lenia6AnimalEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE22_M_emplace_hint_uniqueIJRS5_RSA_EEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_
.LEHE73:
	jmp	.L1190
.L1390:
	test	rdi, rdi
	js	.L1452
	mov	rcx, rdi
	add	rcx, 1
	js	.L1453
.LEHB74:
	call	_Znwy
.LEHE74:
	mov	QWORD PTR 1264[rsp], rax
	mov	rcx, rax
	mov	QWORD PTR 1280[rsp], rdi
.L1054:
	mov	r8, rdi
	mov	rdx, r13
	call	memcpy
	jmp	.L1056
.L1388:
	call	r12
	mov	DWORD PTR [rax], r13d
	jmp	.L1043
.L1385:
	call	r12
	mov	DWORD PTR [rax], edi
	jmp	.L1037
.L1391:
	movzx	eax, BYTE PTR 0[r13]
	mov	BYTE PTR 1280[rsp], al
	jmp	.L1056
.L1413:
	test	r12, r12
	js	.L1454
	mov	rcx, r12
	add	rcx, 1
	js	.L1455
.LEHB75:
	call	_Znwy
.LEHE75:
	mov	QWORD PTR 448[rsp], rax
	mov	rcx, rax
	mov	QWORD PTR 464[rsp], r12
.L1106:
	mov	r8, r12
	mov	rdx, r14
	call	memcpy
	jmp	.L1108
.L1412:
	call	r12
	mov	DWORD PTR [rax], r15d
	jmp	.L1100
.L1409:
	call	r12
	mov	DWORD PTR [rax], r15d
	jmp	.L1095
.L1406:
	call	r12
	mov	DWORD PTR [rax], r15d
	jmp	.L1090
.L1403:
	call	r12
	mov	DWORD PTR [rax], r15d
	jmp	.L1085
.L1414:
	movzx	eax, BYTE PTR [r14]
	mov	BYTE PTR 464[rsp], al
	jmp	.L1108
.L1416:
	test	r12, r12
	js	.L1456
	mov	rcx, r12
	add	rcx, 1
	js	.L1457
.LEHB76:
	call	_Znwy
.LEHE76:
	mov	QWORD PTR 480[rsp], rax
	mov	rcx, rax
	mov	QWORD PTR 496[rsp], r12
.L1112:
	mov	r8, r12
	mov	rdx, r14
	call	memcpy
	jmp	.L1114
.L1417:
	movzx	eax, BYTE PTR [r14]
	mov	BYTE PTR 496[rsp], al
	jmp	.L1114
.L1419:
	test	r12, r12
	js	.L1458
	mov	rcx, r12
	add	rcx, 1
	js	.L1459
.LEHB77:
	call	_Znwy
.LEHE77:
	mov	QWORD PTR 512[rsp], rax
	mov	rcx, rax
	mov	QWORD PTR 528[rsp], r12
.L1118:
	mov	r8, r12
	mov	rdx, r14
	call	memcpy
	jmp	.L1120
.L1422:
	test	r12, r12
	js	.L1460
	mov	rcx, r12
	add	rcx, 1
	js	.L1461
.LEHB78:
	call	_Znwy
.LEHE78:
	mov	QWORD PTR 544[rsp], rax
	mov	rcx, rax
	mov	QWORD PTR 560[rsp], r12
.L1124:
	mov	r8, r12
	mov	rdx, r14
	call	memcpy
	jmp	.L1126
.L1423:
	movzx	eax, BYTE PTR [r14]
	mov	BYTE PTR 560[rsp], al
	jmp	.L1126
.L1425:
	test	r12, r12
	js	.L1462
	mov	rcx, r12
	add	rcx, 1
	js	.L1463
.LEHB79:
	call	_Znwy
.LEHE79:
	mov	QWORD PTR 576[rsp], rax
	mov	rcx, rax
	mov	QWORD PTR 592[rsp], r12
.L1130:
	mov	r8, r12
	mov	rdx, r14
	call	memcpy
	jmp	.L1132
.L1426:
	movzx	eax, BYTE PTR [r14]
	mov	BYTE PTR 592[rsp], al
	jmp	.L1132
.L1429:
	movzx	eax, BYTE PTR [r14]
	mov	BYTE PTR 432[rsp], al
	jmp	.L1138
.L1428:
	test	r12, r12
	js	.L1464
	mov	rcx, r12
	add	rcx, 1
	js	.L1465
.LEHB80:
	call	_Znwy
.LEHE80:
	mov	QWORD PTR 416[rsp], rax
	mov	rcx, rax
	mov	QWORD PTR 432[rsp], r12
.L1136:
	mov	r8, r12
	mov	rdx, r14
	call	memcpy
	jmp	.L1138
.L1432:
	movzx	eax, BYTE PTR 0[r13]
	mov	BYTE PTR 624[rsp], al
	jmp	.L1144
.L1431:
	test	r12, r12
	js	.L1466
	mov	rcx, r12
	add	rcx, 1
	js	.L1467
.LEHB81:
	call	_Znwy
.LEHE81:
	mov	QWORD PTR 608[rsp], rax
	mov	rcx, rax
	mov	QWORD PTR 624[rsp], r12
.L1142:
	mov	r8, r12
	mov	rdx, r13
	call	memcpy
	jmp	.L1144
.L1434:
	test	r12, r12
	js	.L1468
	mov	rcx, r12
	add	rcx, 1
	js	.L1469
.LEHB82:
	call	_Znwy
.LEHE82:
	mov	QWORD PTR 640[rsp], rax
	mov	rcx, rax
	mov	QWORD PTR 656[rsp], r12
.L1148:
	mov	r8, r12
	mov	rdx, r13
	call	memcpy
	jmp	.L1150
.L1435:
	movzx	eax, BYTE PTR 0[r13]
	mov	BYTE PTR 656[rsp], al
	jmp	.L1150
.L1438:
	movzx	eax, BYTE PTR [r14]
	mov	BYTE PTR 688[rsp], al
	jmp	.L1156
.L1437:
	test	r13, r13
	js	.L1470
	mov	rcx, r13
	add	rcx, 1
	js	.L1471
.LEHB83:
	call	_Znwy
.LEHE83:
	mov	QWORD PTR 672[rsp], rax
	mov	rcx, rax
	mov	QWORD PTR 688[rsp], r13
.L1154:
	mov	r8, r13
	mov	rdx, r14
	call	memcpy
	jmp	.L1156
.L1441:
	movzx	eax, BYTE PTR [r15]
	mov	BYTE PTR 720[rsp], al
	jmp	.L1162
.L1440:
	test	r14, r14
	js	.L1472
	mov	rcx, r14
	add	rcx, 1
	js	.L1473
.LEHB84:
	call	_Znwy
.LEHE84:
	mov	QWORD PTR 704[rsp], rax
	mov	rcx, rax
	mov	QWORD PTR 720[rsp], r14
.L1160:
	mov	r8, r14
	mov	rdx, r15
	call	memcpy
	jmp	.L1162
.L1444:
	movzx	eax, BYTE PTR [rdx]
	mov	BYTE PTR 752[rsp], al
	jmp	.L1168
.L1443:
	test	r15, r15
	js	.L1474
	mov	rcx, r15
	add	rcx, 1
	js	.L1475
	mov	QWORD PTR 328[rsp], rdx
.LEHB85:
	call	_Znwy
.LEHE85:
	mov	QWORD PTR 736[rsp], rax
	mov	rdx, QWORD PTR 328[rsp]
	mov	rcx, rax
	mov	QWORD PTR 752[rsp], r15
.L1166:
	mov	r8, r15
	call	memcpy
	jmp	.L1168
.L1382:
.LEHB86:
	call	_ZSt17__throw_bad_allocv
.LEHE86:
.L1380:
	mov	r10d, DWORD PTR [rax]
	mov	ecx, ecx
	mov	DWORD PTR [r9], r10d
	mov	r10d, DWORD PTR -4[rax+rcx]
	mov	DWORD PTR -4[r9+rcx], r10d
	mov	r10, QWORD PTR -8[rax]
	jmp	.L1023
.L1370:
	mov	rcx, QWORD PTR 200[rsp]
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	rcx, QWORD PTR 208[rsp]
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	nop
	vmovups	xmm6, XMMWORD PTR 2048[rsp]
	vmovups	xmm7, XMMWORD PTR 2064[rsp]
	vmovups	xmm8, XMMWORD PTR 2080[rsp]
	vmovups	xmm9, XMMWORD PTR 2096[rsp]
	vmovups	xmm10, XMMWORD PTR 2112[rsp]
	vmovups	xmm11, XMMWORD PTR 2128[rsp]
	vmovups	xmm12, XMMWORD PTR 2144[rsp]
	vmovups	xmm13, XMMWORD PTR 2160[rsp]
	vmovups	xmm14, XMMWORD PTR 2176[rsp]
	add	rsp, 2200
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
.L1392:
	mov	rcx, QWORD PTR 240[rsp]
	jmp	.L1054
.L1415:
	mov	rcx, QWORD PTR 248[rsp]
	jmp	.L1106
.L1418:
	mov	rcx, QWORD PTR 264[rsp]
	jmp	.L1112
.L1451:
.LEHB87:
	call	_ZSt17__throw_bad_allocv
.LEHE87:
.L1421:
	mov	rcx, QWORD PTR 272[rsp]
	jmp	.L1118
.L1424:
	mov	rcx, QWORD PTR 280[rsp]
	jmp	.L1124
.L1427:
	mov	rcx, QWORD PTR 296[rsp]
	jmp	.L1130
.L1400:
	jne	.L1082
	mov	rax, QWORD PTR 128[rsp]
	vmovss	xmm0, DWORD PTR [rax]
	vmovq	rax, xmm6
	vmovss	DWORD PTR [rax], xmm0
	jmp	.L1082
.L1430:
	mov	rcx, QWORD PTR 304[rsp]
	jmp	.L1136
.L1433:
	mov	rcx, QWORD PTR 312[rsp]
	jmp	.L1142
.L1436:
	mov	rcx, QWORD PTR 320[rsp]
	jmp	.L1148
.L1439:
	mov	rcx, r12
	jmp	.L1154
.L1442:
	mov	rcx, r13
	jmp	.L1160
.L1445:
	mov	rcx, r14
	jmp	.L1166
.L1448:
.LEHB88:
	call	_ZSt17__throw_bad_allocv
.LEHE88:
.L1348:
	mov	ecx, ecx
	movzx	r10d, WORD PTR -2[rax+rcx]
	mov	WORD PTR -2[r9+rcx], r10w
	mov	r10, QWORD PTR -8[rax]
	jmp	.L1023
.L1455:
.LEHB89:
	call	_ZSt17__throw_bad_allocv
.LEHE89:
.L1453:
.LEHB90:
	call	_ZSt17__throw_bad_allocv
.LEHE90:
.L1459:
.LEHB91:
	call	_ZSt17__throw_bad_allocv
.LEHE91:
.L1457:
.LEHB92:
	call	_ZSt17__throw_bad_allocv
.LEHE92:
.L1461:
.LEHB93:
	call	_ZSt17__throw_bad_allocv
.LEHE93:
.L1463:
.LEHB94:
	call	_ZSt17__throw_bad_allocv
.LEHE94:
.L1467:
.LEHB95:
	call	_ZSt17__throw_bad_allocv
.LEHE95:
.L1465:
.LEHB96:
	call	_ZSt17__throw_bad_allocv
.LEHE96:
.L1471:
.LEHB97:
	call	_ZSt17__throw_bad_allocv
.LEHE97:
.L1469:
.LEHB98:
	call	_ZSt17__throw_bad_allocv
.LEHE98:
.L1475:
.LEHB99:
	call	_ZSt17__throw_bad_allocv
.LEHE99:
.L1473:
.LEHB100:
	call	_ZSt17__throw_bad_allocv
.LEHE100:
.L1011:
	movabs	rdi, 9223372036854775776
	jmp	.L1012
.L1369:
	mov	rbx, QWORD PTR .refptr._ZSt4cerr[rip]
	mov	r8d, 45
	lea	rdx, .LC26[rip]
	mov	rcx, rbx
.LEHB101:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	mov	rcx, rbx
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
.LEHE101:
	or	ecx, -1
	call	exit
.L1079:
.LEHB102:
	call	__cxa_throw_bad_array_new_length
.LEHE102:
.L1261:
	lea	rcx, 704[rsp]
	mov	rbp, rax
	vzeroupper
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
.L1171:
	lea	rcx, 672[rsp]
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
.L1172:
	lea	rcx, 640[rsp]
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
.L1173:
	mov	rcx, QWORD PTR 136[rsp]
	lea	r15, 416[rsp]
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
.L1174:
	mov	rcx, r15
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
.L1212:
	mov	rcx, QWORD PTR 216[rsp]
	mov	edx, 288
	call	_ZdlPvy
.L1213:
	lea	rcx, 448[rsp]
	call	_ZN5Lenia8TaxonomyD1Ev
.L1069:
	mov	rax, QWORD PTR 128[rsp]
	sub	rdi, rax
	mov	rdx, rdi
	test	rax, rax
	jne	.L1476
.L1214:
	mov	rcx, QWORD PTR 112[rsp]
	call	_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev
.L1033:
	mov	rcx, QWORD PTR 96[rsp]
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	rcx, QWORD PTR 120[rsp]
	call	_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev
.L998:
	mov	rdi, rsi
.L1215:
	cmp	rbx, rdi
	je	.L1477
	mov	rcx, QWORD PTR [rdi]
	lea	rax, 16[rdi]
	cmp	rcx, rax
	je	.L1216
	mov	rax, QWORD PTR 16[rdi]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L1216:
	add	rdi, 32
	jmp	.L1215
.L1472:
	lea	rcx, .LC15[rip]
.LEHB103:
	call	_ZSt20__throw_length_errorPKc
.LEHE103:
.L1398:
	lea	rcx, .LC28[rip]
.LEHB104:
	call	_ZSt20__throw_length_errorPKc
.LEHE104:
.L1228:
	mov	rbp, rax
	vzeroupper
.L1220:
	mov	rcx, QWORD PTR 208[rsp]
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	mov	rcx, rbp
.LEHB105:
	call	_Unwind_Resume
.LEHE105:
.L1476:
	mov	rcx, rax
	call	_ZdlPvy
	jmp	.L1214
.L1395:
	lea	rcx, .LC30[rip]
.LEHB106:
	call	_ZSt20__throw_out_of_rangePKc
.LEHE106:
.L1253:
.L1367:
	lea	rcx, 448[rsp]
	mov	rbp, rax
	vzeroupper
	call	_ZZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_EN11_Save_errnoD1Ev
	jmp	.L1069
.L1460:
	lea	rcx, .LC15[rip]
.LEHB107:
	call	_ZSt20__throw_length_errorPKc
.LEHE107:
.L1246:
	vzeroupper
	mov	rbp, rax
	call	r12
	cmp	DWORD PTR [rax], 0
	jne	.L1033
	call	r12
	mov	DWORD PTR [rax], edi
	jmp	.L1033
.L1245:
	mov	rdx, rdi
	mov	rcx, r12
	mov	rbp, rax
	vzeroupper
	call	_ZdlPvy
	jmp	.L1033
.L1252:
	lea	rcx, 1264[rsp]
	mov	rdi, rax
	vzeroupper
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
.L1366:
	mov	rax, QWORD PTR .refptr._ZTVSt15basic_streambufIcSt11char_traitsIcEE[rip]
	mov	rcx, QWORD PTR 256[rsp]
	add	rax, 16
	mov	QWORD PTR 1192[rsp], rax
	call	_ZNSt6localeD1Ev
	mov	rax, QWORD PTR 168[rsp]
	mov	rdx, QWORD PTR 176[rsp]
	xor	r10d, r10d
	mov	rax, QWORD PTR -24[rax]
	mov	QWORD PTR 1168[rsp+rax], rdx
	mov	rax, QWORD PTR 152[rsp]
	mov	rdx, QWORD PTR 160[rsp]
	mov	QWORD PTR 1184[rsp], rax
	mov	rax, QWORD PTR -24[rax]
	mov	QWORD PTR 1184[rsp+rax], rdx
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR 144[rsp]
	mov	QWORD PTR 1168[rsp], rbp
	mov	rbp, rdi
	mov	QWORD PTR 1168[rsp+rax], rdx
	mov	QWORD PTR 1176[rsp], r10
.L1050:
	mov	rax, QWORD PTR .refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE[rip]
	mov	rcx, QWORD PTR 192[rsp]
	add	rax, 16
	mov	QWORD PTR 1296[rsp], rax
	call	_ZNSt8ios_baseD2Ev
	jmp	.L1033
.L1387:
	lea	rcx, .LC30[rip]
.LEHB108:
	call	_ZSt20__throw_out_of_rangePKc
.LEHE108:
.L1235:
	mov	rcx, QWORD PTR 136[rsp]
	mov	rbp, rax
	vzeroupper
	call	_ZN5Lenia8TaxonomyD1Ev
	jmp	.L1174
.L1232:
	mov	rbp, rax
	vzeroupper
	jmp	.L1213
.L1452:
	lea	rcx, .LC15[rip]
.LEHB109:
	call	_ZSt20__throw_length_errorPKc
.LEHE109:
.L1243:
	mov	rbx, rax
	vzeroupper
.L1364:
	mov	rax, QWORD PTR .refptr._ZTVSt15basic_streambufIcSt11char_traitsIcEE[rip]
	mov	rcx, QWORD PTR 224[rsp]
	add	rax, 16
	mov	QWORD PTR 792[rsp], rax
	call	_ZNSt6localeD1Ev
	mov	rax, QWORD PTR 168[rsp]
	mov	rsi, QWORD PTR 176[rsp]
	mov	rax, QWORD PTR -24[rax]
	mov	QWORD PTR 768[rsp+rax], rsi
	mov	rax, QWORD PTR 152[rsp]
	mov	rsi, QWORD PTR 160[rsp]
	mov	QWORD PTR 784[rsp], rax
	mov	rax, QWORD PTR -24[rax]
	mov	QWORD PTR 784[rsp+rax], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, QWORD PTR 144[rsp]
	mov	QWORD PTR 768[rsp], rbp
	mov	QWORD PTR 768[rsp+rax], rsi
	xor	eax, eax
	mov	QWORD PTR 776[rsp], rax
.L985:
	mov	rax, QWORD PTR .refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE[rip]
	mov	rcx, QWORD PTR 184[rsp]
	mov	rbp, rbx
	xor	esi, esi
	xor	ebx, ebx
	add	rax, 16
	mov	QWORD PTR 896[rsp], rax
	call	_ZNSt8ios_baseD2Ev
	xor	eax, eax
	mov	QWORD PTR 104[rsp], rax
	jmp	.L998
.L1259:
	mov	rbp, rax
	vzeroupper
	jmp	.L1172
.L1230:
	mov	rbp, rax
	vzeroupper
	jmp	.L1033
.L1247:
	lea	rcx, 608[rsp]
	mov	rbp, rax
	vzeroupper
	call	_ZZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_EN11_Save_errnoD1Ev
	jmp	.L1033
.L1260:
	mov	rbp, rax
	vzeroupper
	jmp	.L1171
.L1474:
	lea	rcx, .LC15[rip]
.LEHB110:
	call	_ZSt20__throw_length_errorPKc
.LEHE110:
.L1241:
	mov	rbx, rax
	mov	rax, QWORD PTR .refptr._ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE[rip]
	lea	rcx, 864[rsp]
	add	rax, 16
	mov	QWORD PTR 792[rsp], rax
	vzeroupper
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	.L1364
.L1408:
	lea	rcx, .LC31[rip]
.LEHB111:
	call	_ZSt20__throw_out_of_rangePKc
.LEHE111:
.L1468:
	lea	rcx, .LC15[rip]
.LEHB112:
	call	_ZSt20__throw_length_errorPKc
.LEHE112:
.L1240:
	mov	rbx, rax
	vzeroupper
	jmp	.L985
.L1447:
	lea	rcx, .LC15[rip]
.LEHB113:
	call	_ZSt20__throw_length_errorPKc
.LEHE113:
.L1381:
	lea	rcx, .LC15[rip]
.LEHB114:
	call	_ZSt20__throw_length_errorPKc
.LEHE114:
.L1383:
	lea	rcx, .LC29[rip]
.LEHB115:
	call	_ZSt24__throw_invalid_argumentPKc
.LEHE115:
.L1450:
	lea	rcx, .LC15[rip]
.LEHB116:
	call	_ZSt20__throw_length_errorPKc
.LEHE116:
.L1254:
	jmp	.L1367
.L1238:
	mov	rbp, rax
	vzeroupper
.L1208:
	lea	rcx, 512[rsp]
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
.L1209:
	lea	rcx, 480[rsp]
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
.L1210:
	lea	rcx, 448[rsp]
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	.L1069
.L1462:
	lea	rcx, .LC15[rip]
.LEHB117:
	call	_ZSt20__throw_length_errorPKc
.LEHE117:
.L1249:
	mov	rdi, rax
	mov	rax, QWORD PTR .refptr._ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE[rip]
	lea	rcx, 1264[rsp]
	add	rax, 16
	mov	QWORD PTR 1192[rsp], rax
	vzeroupper
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	.L1366
.L1244:
	lea	rcx, 864[rsp]
	mov	rbx, rax
	vzeroupper
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	.L1364
.L1371:
	lea	rcx, .LC27[rip]
.LEHB118:
	call	_ZSt19__throw_logic_errorPKc
.LEHE118:
.L1242:
	mov	rdx, QWORD PTR -24[rbp]
	mov	rsi, QWORD PTR 144[rsp]
	mov	QWORD PTR 768[rsp], rbp
	mov	rbx, rax
	mov	QWORD PTR 768[rsp+rdx], rsi
	xor	edx, edx
	mov	QWORD PTR 776[rsp], rdx
	vzeroupper
	jmp	.L985
.L1394:
	lea	rcx, .LC30[rip]
.LEHB119:
	call	_ZSt24__throw_invalid_argumentPKc
.LEHE119:
.L1231:
	mov	rbp, rax
	vzeroupper
	jmp	.L1069
.L1477:
	mov	rdx, QWORD PTR 104[rsp]
	sub	rdx, rsi
	test	rsi, rsi
	je	.L1219
	mov	rcx, rsi
	call	_ZdlPvy
.L1219:
	mov	rcx, QWORD PTR 200[rsp]
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	.L1220
.L1404:
	lea	rcx, .LC30[rip]
.LEHB120:
	call	_ZSt24__throw_invalid_argumentPKc
.LEHE120:
.L1386:
	lea	rcx, .LC30[rip]
.LEHB121:
	call	_ZSt24__throw_invalid_argumentPKc
.LEHE121:
.L1248:
	mov	rbp, rax
	vzeroupper
	jmp	.L1050
.L1389:
	lea	rcx, .LC27[rip]
.LEHB122:
	call	_ZSt19__throw_logic_errorPKc
.LEHE122:
.L1250:
	mov	rdx, QWORD PTR -24[rbp]
	mov	rdi, QWORD PTR 144[rsp]
	xor	r11d, r11d
	mov	QWORD PTR 1168[rsp], rbp
	mov	rbp, rax
	mov	QWORD PTR 1168[rsp+rdx], rdi
	mov	QWORD PTR 1176[rsp], r11
	vzeroupper
	jmp	.L1050
.L1376:
	lea	rcx, .LC28[rip]
.LEHB123:
	call	_ZSt20__throw_length_errorPKc
.LEHE123:
.L1256:
.L1368:
	lea	rcx, 448[rsp]
	mov	rbp, rax
	vzeroupper
	call	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_EN11_Save_errnoD1Ev
	jmp	.L1069
.L1407:
	lea	rcx, .LC31[rip]
.LEHB124:
	call	_ZSt24__throw_invalid_argumentPKc
.LEHE124:
.L1410:
	lea	rcx, .LC31[rip]
.LEHB125:
	call	_ZSt24__throw_invalid_argumentPKc
.LEHE125:
.L1229:
	mov	rbp, rax
	vzeroupper
	jmp	.L1219
.L1401:
	lea	rcx, .LC30[rip]
.LEHB126:
	call	_ZSt24__throw_invalid_argumentPKc
.LEHE126:
.L1384:
	lea	rcx, .LC29[rip]
.LEHB127:
	call	_ZSt20__throw_out_of_rangePKc
.LEHE127:
.L1411:
	lea	rcx, .LC31[rip]
.LEHB128:
	call	_ZSt20__throw_out_of_rangePKc
.LEHE128:
.L1257:
	jmp	.L1368
.L1402:
	lea	rcx, .LC30[rip]
.LEHB129:
	call	_ZSt20__throw_out_of_rangePKc
.LEHE129:
.L1234:
	mov	rbp, rax
	lea	r15, 416[rsp]
	vzeroupper
	jmp	.L1174
.L1464:
	lea	rcx, .LC15[rip]
.LEHB130:
	call	_ZSt20__throw_length_errorPKc
.LEHE130:
.L1258:
	mov	rbp, rax
	vzeroupper
	jmp	.L1173
.L1470:
	lea	rcx, .LC15[rip]
.LEHB131:
	call	_ZSt20__throw_length_errorPKc
.LEHE131:
.L1454:
	lea	rcx, .LC15[rip]
.LEHB132:
	call	_ZSt20__throw_length_errorPKc
.LEHE132:
.L1251:
	mov	rdi, rax
	vzeroupper
	jmp	.L1366
.L1405:
	lea	rcx, .LC30[rip]
.LEHB133:
	call	_ZSt20__throw_out_of_rangePKc
.LEHE133:
.L1255:
	jmp	.L1367
.L1237:
	mov	rbp, rax
	vzeroupper
	jmp	.L1209
.L1456:
	lea	rcx, .LC15[rip]
.LEHB134:
	call	_ZSt20__throw_length_errorPKc
.LEHE134:
.L1233:
	mov	rbp, rax
	vzeroupper
	jmp	.L1212
.L1466:
	lea	rcx, .LC15[rip]
.LEHB135:
	call	_ZSt20__throw_length_errorPKc
.LEHE135:
.L1236:
	mov	rbp, rax
	vzeroupper
	jmp	.L1210
.L1458:
	lea	rcx, .LC15[rip]
.LEHB136:
	call	_ZSt20__throw_length_errorPKc
.LEHE136:
.L1239:
	lea	rcx, 544[rsp]
	mov	rbp, rax
	vzeroupper
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	.L1208
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA9894:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9894-.LLSDACSB9894
.LLSDACSB9894:
	.uleb128 .LEHB39-.LFB9894
	.uleb128 .LEHE39-.LEHB39
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB40-.LFB9894
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L1229-.LFB9894
	.uleb128 0
	.uleb128 .LEHB41-.LFB9894
	.uleb128 .LEHE41-.LEHB41
	.uleb128 .L1240-.LFB9894
	.uleb128 0
	.uleb128 .LEHB42-.LFB9894
	.uleb128 .LEHE42-.LEHB42
	.uleb128 .L1242-.LFB9894
	.uleb128 0
	.uleb128 .LEHB43-.LFB9894
	.uleb128 .LEHE43-.LEHB43
	.uleb128 .L1244-.LFB9894
	.uleb128 0
	.uleb128 .LEHB44-.LFB9894
	.uleb128 .LEHE44-.LEHB44
	.uleb128 .L1241-.LFB9894
	.uleb128 0
	.uleb128 .LEHB45-.LFB9894
	.uleb128 .LEHE45-.LEHB45
	.uleb128 .L1230-.LFB9894
	.uleb128 0
	.uleb128 .LEHB46-.LFB9894
	.uleb128 .LEHE46-.LEHB46
	.uleb128 .L1246-.LFB9894
	.uleb128 0
	.uleb128 .LEHB47-.LFB9894
	.uleb128 .LEHE47-.LEHB47
	.uleb128 .L1230-.LFB9894
	.uleb128 0
	.uleb128 .LEHB48-.LFB9894
	.uleb128 .LEHE48-.LEHB48
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB49-.LFB9894
	.uleb128 .LEHE49-.LEHB49
	.uleb128 .L1247-.LFB9894
	.uleb128 0
	.uleb128 .LEHB50-.LFB9894
	.uleb128 .LEHE50-.LEHB50
	.uleb128 .L1248-.LFB9894
	.uleb128 0
	.uleb128 .LEHB51-.LFB9894
	.uleb128 .LEHE51-.LEHB51
	.uleb128 .L1250-.LFB9894
	.uleb128 0
	.uleb128 .LEHB52-.LFB9894
	.uleb128 .LEHE52-.LEHB52
	.uleb128 .L1252-.LFB9894
	.uleb128 0
	.uleb128 .LEHB53-.LFB9894
	.uleb128 .LEHE53-.LEHB53
	.uleb128 .L1249-.LFB9894
	.uleb128 0
	.uleb128 .LEHB54-.LFB9894
	.uleb128 .LEHE54-.LEHB54
	.uleb128 .L1231-.LFB9894
	.uleb128 0
	.uleb128 .LEHB55-.LFB9894
	.uleb128 .LEHE55-.LEHB55
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB56-.LFB9894
	.uleb128 .LEHE56-.LEHB56
	.uleb128 .L1253-.LFB9894
	.uleb128 0
	.uleb128 .LEHB57-.LFB9894
	.uleb128 .LEHE57-.LEHB57
	.uleb128 .L1231-.LFB9894
	.uleb128 0
	.uleb128 .LEHB58-.LFB9894
	.uleb128 .LEHE58-.LEHB58
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB59-.LFB9894
	.uleb128 .LEHE59-.LEHB59
	.uleb128 .L1254-.LFB9894
	.uleb128 0
	.uleb128 .LEHB60-.LFB9894
	.uleb128 .LEHE60-.LEHB60
	.uleb128 .L1231-.LFB9894
	.uleb128 0
	.uleb128 .LEHB61-.LFB9894
	.uleb128 .LEHE61-.LEHB61
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB62-.LFB9894
	.uleb128 .LEHE62-.LEHB62
	.uleb128 .L1255-.LFB9894
	.uleb128 0
	.uleb128 .LEHB63-.LFB9894
	.uleb128 .LEHE63-.LEHB63
	.uleb128 .L1231-.LFB9894
	.uleb128 0
	.uleb128 .LEHB64-.LFB9894
	.uleb128 .LEHE64-.LEHB64
	.uleb128 .L1256-.LFB9894
	.uleb128 0
	.uleb128 .LEHB65-.LFB9894
	.uleb128 .LEHE65-.LEHB65
	.uleb128 .L1231-.LFB9894
	.uleb128 0
	.uleb128 .LEHB66-.LFB9894
	.uleb128 .LEHE66-.LEHB66
	.uleb128 .L1257-.LFB9894
	.uleb128 0
	.uleb128 .LEHB67-.LFB9894
	.uleb128 .LEHE67-.LEHB67
	.uleb128 .L1232-.LFB9894
	.uleb128 0
	.uleb128 .LEHB68-.LFB9894
	.uleb128 .LEHE68-.LEHB68
	.uleb128 .L1235-.LFB9894
	.uleb128 0
	.uleb128 .LEHB69-.LFB9894
	.uleb128 .LEHE69-.LEHB69
	.uleb128 .L1229-.LFB9894
	.uleb128 0
	.uleb128 .LEHB70-.LFB9894
	.uleb128 .LEHE70-.LEHB70
	.uleb128 .L1245-.LFB9894
	.uleb128 0
	.uleb128 .LEHB71-.LFB9894
	.uleb128 .LEHE71-.LEHB71
	.uleb128 .L1229-.LFB9894
	.uleb128 0
	.uleb128 .LEHB72-.LFB9894
	.uleb128 .LEHE72-.LEHB72
	.uleb128 .L1243-.LFB9894
	.uleb128 0
	.uleb128 .LEHB73-.LFB9894
	.uleb128 .LEHE73-.LEHB73
	.uleb128 .L1232-.LFB9894
	.uleb128 0
	.uleb128 .LEHB74-.LFB9894
	.uleb128 .LEHE74-.LEHB74
	.uleb128 .L1251-.LFB9894
	.uleb128 0
	.uleb128 .LEHB75-.LFB9894
	.uleb128 .LEHE75-.LEHB75
	.uleb128 .L1231-.LFB9894
	.uleb128 0
	.uleb128 .LEHB76-.LFB9894
	.uleb128 .LEHE76-.LEHB76
	.uleb128 .L1236-.LFB9894
	.uleb128 0
	.uleb128 .LEHB77-.LFB9894
	.uleb128 .LEHE77-.LEHB77
	.uleb128 .L1237-.LFB9894
	.uleb128 0
	.uleb128 .LEHB78-.LFB9894
	.uleb128 .LEHE78-.LEHB78
	.uleb128 .L1238-.LFB9894
	.uleb128 0
	.uleb128 .LEHB79-.LFB9894
	.uleb128 .LEHE79-.LEHB79
	.uleb128 .L1239-.LFB9894
	.uleb128 0
	.uleb128 .LEHB80-.LFB9894
	.uleb128 .LEHE80-.LEHB80
	.uleb128 .L1233-.LFB9894
	.uleb128 0
	.uleb128 .LEHB81-.LFB9894
	.uleb128 .LEHE81-.LEHB81
	.uleb128 .L1234-.LFB9894
	.uleb128 0
	.uleb128 .LEHB82-.LFB9894
	.uleb128 .LEHE82-.LEHB82
	.uleb128 .L1258-.LFB9894
	.uleb128 0
	.uleb128 .LEHB83-.LFB9894
	.uleb128 .LEHE83-.LEHB83
	.uleb128 .L1259-.LFB9894
	.uleb128 0
	.uleb128 .LEHB84-.LFB9894
	.uleb128 .LEHE84-.LEHB84
	.uleb128 .L1260-.LFB9894
	.uleb128 0
	.uleb128 .LEHB85-.LFB9894
	.uleb128 .LEHE85-.LEHB85
	.uleb128 .L1261-.LFB9894
	.uleb128 0
	.uleb128 .LEHB86-.LFB9894
	.uleb128 .LEHE86-.LEHB86
	.uleb128 .L1230-.LFB9894
	.uleb128 0
	.uleb128 .LEHB87-.LFB9894
	.uleb128 .LEHE87-.LEHB87
	.uleb128 .L1243-.LFB9894
	.uleb128 0
	.uleb128 .LEHB88-.LFB9894
	.uleb128 .LEHE88-.LEHB88
	.uleb128 .L1245-.LFB9894
	.uleb128 0
	.uleb128 .LEHB89-.LFB9894
	.uleb128 .LEHE89-.LEHB89
	.uleb128 .L1231-.LFB9894
	.uleb128 0
	.uleb128 .LEHB90-.LFB9894
	.uleb128 .LEHE90-.LEHB90
	.uleb128 .L1251-.LFB9894
	.uleb128 0
	.uleb128 .LEHB91-.LFB9894
	.uleb128 .LEHE91-.LEHB91
	.uleb128 .L1237-.LFB9894
	.uleb128 0
	.uleb128 .LEHB92-.LFB9894
	.uleb128 .LEHE92-.LEHB92
	.uleb128 .L1236-.LFB9894
	.uleb128 0
	.uleb128 .LEHB93-.LFB9894
	.uleb128 .LEHE93-.LEHB93
	.uleb128 .L1238-.LFB9894
	.uleb128 0
	.uleb128 .LEHB94-.LFB9894
	.uleb128 .LEHE94-.LEHB94
	.uleb128 .L1239-.LFB9894
	.uleb128 0
	.uleb128 .LEHB95-.LFB9894
	.uleb128 .LEHE95-.LEHB95
	.uleb128 .L1234-.LFB9894
	.uleb128 0
	.uleb128 .LEHB96-.LFB9894
	.uleb128 .LEHE96-.LEHB96
	.uleb128 .L1233-.LFB9894
	.uleb128 0
	.uleb128 .LEHB97-.LFB9894
	.uleb128 .LEHE97-.LEHB97
	.uleb128 .L1259-.LFB9894
	.uleb128 0
	.uleb128 .LEHB98-.LFB9894
	.uleb128 .LEHE98-.LEHB98
	.uleb128 .L1258-.LFB9894
	.uleb128 0
	.uleb128 .LEHB99-.LFB9894
	.uleb128 .LEHE99-.LEHB99
	.uleb128 .L1261-.LFB9894
	.uleb128 0
	.uleb128 .LEHB100-.LFB9894
	.uleb128 .LEHE100-.LEHB100
	.uleb128 .L1260-.LFB9894
	.uleb128 0
	.uleb128 .LEHB101-.LFB9894
	.uleb128 .LEHE101-.LEHB101
	.uleb128 .L1228-.LFB9894
	.uleb128 0
	.uleb128 .LEHB102-.LFB9894
	.uleb128 .LEHE102-.LEHB102
	.uleb128 .L1231-.LFB9894
	.uleb128 0
	.uleb128 .LEHB103-.LFB9894
	.uleb128 .LEHE103-.LEHB103
	.uleb128 .L1260-.LFB9894
	.uleb128 0
	.uleb128 .LEHB104-.LFB9894
	.uleb128 .LEHE104-.LEHB104
	.uleb128 .L1231-.LFB9894
	.uleb128 0
	.uleb128 .LEHB105-.LFB9894
	.uleb128 .LEHE105-.LEHB105
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB106-.LFB9894
	.uleb128 .LEHE106-.LEHB106
	.uleb128 .L1253-.LFB9894
	.uleb128 0
	.uleb128 .LEHB107-.LFB9894
	.uleb128 .LEHE107-.LEHB107
	.uleb128 .L1238-.LFB9894
	.uleb128 0
	.uleb128 .LEHB108-.LFB9894
	.uleb128 .LEHE108-.LEHB108
	.uleb128 .L1247-.LFB9894
	.uleb128 0
	.uleb128 .LEHB109-.LFB9894
	.uleb128 .LEHE109-.LEHB109
	.uleb128 .L1251-.LFB9894
	.uleb128 0
	.uleb128 .LEHB110-.LFB9894
	.uleb128 .LEHE110-.LEHB110
	.uleb128 .L1261-.LFB9894
	.uleb128 0
	.uleb128 .LEHB111-.LFB9894
	.uleb128 .LEHE111-.LEHB111
	.uleb128 .L1256-.LFB9894
	.uleb128 0
	.uleb128 .LEHB112-.LFB9894
	.uleb128 .LEHE112-.LEHB112
	.uleb128 .L1258-.LFB9894
	.uleb128 0
	.uleb128 .LEHB113-.LFB9894
	.uleb128 .LEHE113-.LEHB113
	.uleb128 .L1245-.LFB9894
	.uleb128 0
	.uleb128 .LEHB114-.LFB9894
	.uleb128 .LEHE114-.LEHB114
	.uleb128 .L1230-.LFB9894
	.uleb128 0
	.uleb128 .LEHB115-.LFB9894
	.uleb128 .LEHE115-.LEHB115
	.uleb128 .L1246-.LFB9894
	.uleb128 0
	.uleb128 .LEHB116-.LFB9894
	.uleb128 .LEHE116-.LEHB116
	.uleb128 .L1243-.LFB9894
	.uleb128 0
	.uleb128 .LEHB117-.LFB9894
	.uleb128 .LEHE117-.LEHB117
	.uleb128 .L1239-.LFB9894
	.uleb128 0
	.uleb128 .LEHB118-.LFB9894
	.uleb128 .LEHE118-.LEHB118
	.uleb128 .L1243-.LFB9894
	.uleb128 0
	.uleb128 .LEHB119-.LFB9894
	.uleb128 .LEHE119-.LEHB119
	.uleb128 .L1253-.LFB9894
	.uleb128 0
	.uleb128 .LEHB120-.LFB9894
	.uleb128 .LEHE120-.LEHB120
	.uleb128 .L1255-.LFB9894
	.uleb128 0
	.uleb128 .LEHB121-.LFB9894
	.uleb128 .LEHE121-.LEHB121
	.uleb128 .L1247-.LFB9894
	.uleb128 0
	.uleb128 .LEHB122-.LFB9894
	.uleb128 .LEHE122-.LEHB122
	.uleb128 .L1251-.LFB9894
	.uleb128 0
	.uleb128 .LEHB123-.LFB9894
	.uleb128 .LEHE123-.LEHB123
	.uleb128 .L1230-.LFB9894
	.uleb128 0
	.uleb128 .LEHB124-.LFB9894
	.uleb128 .LEHE124-.LEHB124
	.uleb128 .L1256-.LFB9894
	.uleb128 0
	.uleb128 .LEHB125-.LFB9894
	.uleb128 .LEHE125-.LEHB125
	.uleb128 .L1257-.LFB9894
	.uleb128 0
	.uleb128 .LEHB126-.LFB9894
	.uleb128 .LEHE126-.LEHB126
	.uleb128 .L1254-.LFB9894
	.uleb128 0
	.uleb128 .LEHB127-.LFB9894
	.uleb128 .LEHE127-.LEHB127
	.uleb128 .L1246-.LFB9894
	.uleb128 0
	.uleb128 .LEHB128-.LFB9894
	.uleb128 .LEHE128-.LEHB128
	.uleb128 .L1257-.LFB9894
	.uleb128 0
	.uleb128 .LEHB129-.LFB9894
	.uleb128 .LEHE129-.LEHB129
	.uleb128 .L1254-.LFB9894
	.uleb128 0
	.uleb128 .LEHB130-.LFB9894
	.uleb128 .LEHE130-.LEHB130
	.uleb128 .L1233-.LFB9894
	.uleb128 0
	.uleb128 .LEHB131-.LFB9894
	.uleb128 .LEHE131-.LEHB131
	.uleb128 .L1259-.LFB9894
	.uleb128 0
	.uleb128 .LEHB132-.LFB9894
	.uleb128 .LEHE132-.LEHB132
	.uleb128 .L1231-.LFB9894
	.uleb128 0
	.uleb128 .LEHB133-.LFB9894
	.uleb128 .LEHE133-.LEHB133
	.uleb128 .L1255-.LFB9894
	.uleb128 0
	.uleb128 .LEHB134-.LFB9894
	.uleb128 .LEHE134-.LEHB134
	.uleb128 .L1236-.LFB9894
	.uleb128 0
	.uleb128 .LEHB135-.LFB9894
	.uleb128 .LEHE135-.LEHB135
	.uleb128 .L1234-.LFB9894
	.uleb128 0
	.uleb128 .LEHB136-.LFB9894
	.uleb128 .LEHE136-.LEHB136
	.uleb128 .L1237-.LFB9894
	.uleb128 0
.LLSDACSE9894:
	.text
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEyyPKcy,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEyyPKcy
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEyyPKcy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEyyPKcy
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEyyPKcy:
.LFB8893:
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
	mov	rax, QWORD PTR 8[rcx]
	mov	rdi, QWORD PTR 160[rsp]
	mov	r12, rax
	lea	r14, [rdx+r8]
	sub	rdi, r8
	mov	rbx, rcx
	mov	rsi, rdx
	mov	rbp, r9
	sub	r12, r14
	lea	r13, 16[rcx]
	add	rdi, rax
	cmp	r13, QWORD PTR [rcx]
	je	.L1505
	mov	rax, QWORD PTR 16[rcx]
	test	rdi, rdi
	js	.L1480
	cmp	rax, rdi
	jnb	.L1482
	add	rax, rax
	cmp	rdi, rax
	jnb	.L1482
	test	rax, rax
	jns	.L1506
.L1484:
	call	_ZSt17__throw_bad_allocv
	.p2align 4,,10
	.p2align 3
.L1505:
	test	rdi, rdi
	js	.L1480
	lea	rax, -16[rdi]
	cmp	rax, 13
	jbe	.L1507
	.p2align 4
	.p2align 3
.L1482:
	mov	rcx, rdi
	add	rcx, 1
	js	.L1484
.L1481:
	call	_Znwy
	mov	r15, rax
	test	rsi, rsi
	je	.L1485
	mov	rdx, QWORD PTR [rbx]
	cmp	rsi, 1
	je	.L1508
	mov	r8, rsi
	mov	rcx, rax
	call	memcpy
.L1485:
	test	rbp, rbp
	je	.L1487
	cmp	QWORD PTR 160[rsp], 0
	je	.L1487
	cmp	QWORD PTR 160[rsp], 1
	lea	rcx, [r15+rsi]
	je	.L1509
	mov	r8, QWORD PTR 160[rsp]
	mov	rdx, rbp
	call	memcpy
.L1487:
	mov	r9, QWORD PTR [rbx]
	test	r12, r12
	jne	.L1510
.L1489:
	cmp	r13, r9
	je	.L1491
	mov	rax, QWORD PTR 16[rbx]
	mov	rcx, r9
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L1491:
	mov	QWORD PTR [rbx], r15
	mov	QWORD PTR 16[rbx], rdi
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
.L1510:
	add	rsi, QWORD PTR 160[rsp]
	lea	rdx, [r9+r14]
	mov	rcx, rsi
	add	rcx, r15
	cmp	r12, 1
	je	.L1511
	mov	r8, r12
	mov	QWORD PTR 40[rsp], r9
	call	memcpy
	mov	r9, QWORD PTR 40[rsp]
	jmp	.L1489
	.p2align 4,,10
	.p2align 3
.L1506:
	lea	rcx, 1[rax]
	mov	rdi, rax
	jmp	.L1481
	.p2align 4,,10
	.p2align 3
.L1508:
	movzx	eax, BYTE PTR [rdx]
	mov	BYTE PTR [r15], al
	jmp	.L1485
	.p2align 4,,10
	.p2align 3
.L1509:
	movzx	eax, BYTE PTR 0[rbp]
	mov	r9, QWORD PTR [rbx]
	mov	BYTE PTR [rcx], al
	test	r12, r12
	je	.L1489
	jmp	.L1510
	.p2align 4,,10
	.p2align 3
.L1511:
	movzx	eax, BYTE PTR [rdx]
	mov	BYTE PTR [rcx], al
	jmp	.L1489
	.p2align 4,,10
	.p2align 3
.L1507:
	mov	edi, 30
	mov	ecx, 31
	jmp	.L1481
.L1480:
	lea	rcx, .LC15[rip]
	call	_ZSt20__throw_length_errorPKc
	nop
	.seh_endproc
	.section .rdata,"dr"
.LC38:
	.ascii "basic_string::_M_replace_aux\0"
	.text
	.align 2
	.p2align 4
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEyyyc.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEyyyc.isra.0
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEyyyc.isra.0:
.LFB9907:
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
	movabs	rax, 9223372036854775807
	mov	ebp, DWORD PTR 128[rsp]
	mov	r12, rdx
	mov	rdx, QWORD PTR 8[rcx]
	add	rax, r8
	mov	rbx, rcx
	mov	rsi, r9
	sub	rax, rdx
	cmp	rax, r9
	jb	.L1530
	mov	rdi, r9
	mov	rcx, QWORD PTR [rcx]
	lea	rax, 16[rbx]
	sub	rdi, r8
	add	rdi, rdx
	cmp	rcx, rax
	je	.L1520
	mov	rax, QWORD PTR 16[rbx]
.L1514:
	cmp	rax, rdi
	jb	.L1515
	lea	rax, [r8+r12]
	sub	rdx, rax
	je	.L1516
	cmp	r8, rsi
	je	.L1516
	add	rcx, r12
	lea	rax, [rcx+r8]
	add	rcx, rsi
	cmp	rdx, 1
	je	.L1531
	mov	r8, rdx
	mov	rdx, rax
	call	memmove
	mov	rcx, QWORD PTR [rbx]
.L1516:
	test	rsi, rsi
	je	.L1518
	add	rcx, r12
	cmp	rsi, 1
	je	.L1532
	movsx	edx, bpl
	mov	r8, rsi
	call	memset
	mov	rcx, QWORD PTR [rbx]
.L1518:
	mov	QWORD PTR 8[rbx], rdi
	mov	BYTE PTR [rcx+rdi], 0
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L1515:
	mov	QWORD PTR 32[rsp], rsi
	mov	rcx, rbx
	xor	r9d, r9d
	mov	rdx, r12
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEyyPKcy
	mov	rcx, QWORD PTR [rbx]
	jmp	.L1516
	.p2align 4,,10
	.p2align 3
.L1532:
	mov	BYTE PTR [rcx], bpl
	mov	rcx, QWORD PTR [rbx]
	jmp	.L1518
	.p2align 4,,10
	.p2align 3
.L1520:
	mov	eax, 15
	jmp	.L1514
	.p2align 4,,10
	.p2align 3
.L1531:
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR [rcx], al
	mov	rcx, QWORD PTR [rbx]
	jmp	.L1516
.L1530:
	lea	rcx, .LC38[rip]
	call	_ZSt20__throw_length_errorPKc
	nop
	.seh_endproc
	.section .rdata,"dr"
.LC39:
	.ascii "basic_string::_M_replace\0"
	.text
	.align 2
	.p2align 4
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy.isra.0
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy.isra.0:
.LFB9909:
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
	movabs	rax, 9223372036854775807
	mov	rdi, QWORD PTR 128[rsp]
	mov	rbx, rcx
	mov	rcx, QWORD PTR 8[rcx]
	add	rax, r8
	mov	rbp, r9
	sub	rax, rcx
	cmp	rax, rdi
	jb	.L1552
	mov	rsi, rdi
	mov	rax, QWORD PTR [rbx]
	lea	r9, 16[rbx]
	sub	rsi, r8
	add	rsi, rcx
	cmp	rax, r9
	je	.L1542
	mov	r9, QWORD PTR 16[rbx]
.L1535:
	cmp	r9, rsi
	jb	.L1536
	lea	r12, [rax+rdx]
	mov	r9, rcx
	add	rdx, r8
	sub	r9, rdx
	cmp	rbp, rax
	jnb	.L1553
.L1537:
	test	r9, r9
	je	.L1539
	cmp	r8, rdi
	je	.L1539
	lea	rdx, [r12+r8]
	lea	rcx, [r12+rdi]
	cmp	r9, 1
	je	.L1554
	mov	r8, r9
	call	memmove
.L1539:
	test	rdi, rdi
	je	.L1538
.L1556:
	cmp	rdi, 1
	je	.L1555
	mov	r8, rdi
	mov	rdx, rbp
	mov	rcx, r12
	call	memcpy
.L1538:
	mov	rax, QWORD PTR [rbx]
	mov	QWORD PTR 8[rbx], rsi
	mov	BYTE PTR [rax+rsi], 0
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L1553:
	add	rax, rcx
	cmp	rax, rbp
	jb	.L1537
	mov	QWORD PTR 40[rsp], r9
	mov	rdx, r12
	mov	r9, rbp
	mov	rcx, rbx
	mov	QWORD PTR 32[rsp], rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcyPKcyy
	jmp	.L1538
	.p2align 4,,10
	.p2align 3
.L1536:
	mov	QWORD PTR 32[rsp], rdi
	mov	r9, rbp
	mov	rcx, rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEyyPKcy
	jmp	.L1538
	.p2align 4,,10
	.p2align 3
.L1542:
	mov	r9d, 15
	jmp	.L1535
	.p2align 4,,10
	.p2align 3
.L1554:
	movzx	eax, BYTE PTR [rdx]
	mov	BYTE PTR [rcx], al
	test	rdi, rdi
	je	.L1538
	jmp	.L1556
	.p2align 4,,10
	.p2align 3
.L1555:
	movzx	eax, BYTE PTR 0[rbp]
	mov	BYTE PTR [r12], al
	jmp	.L1538
.L1552:
	lea	rcx, .LC39[rip]
	call	_ZSt20__throw_length_errorPKc
	nop
	.seh_endproc
	.section	.text$_ZNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11_M_overflowEv,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11_M_overflowEv
	.def	_ZNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11_M_overflowEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11_M_overflowEv
_ZNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11_M_overflowEv:
.LFB8383:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	r9, QWORD PTR 8[rcx]
	mov	r8, QWORD PTR 24[rcx]
	mov	rbx, rcx
	sub	r8, r9
	je	.L1568
	mov	rdx, QWORD PTR 296[rcx]
	movabs	rax, 9223372036854775807
	sub	rax, rdx
	cmp	rax, r8
	jb	.L1569
	mov	rcx, QWORD PTR 288[rcx]
	lea	rax, 304[rbx]
	lea	rsi, [r8+rdx]
	cmp	rcx, rax
	je	.L1564
	mov	rax, QWORD PTR 304[rbx]
.L1560:
	cmp	rax, rsi
	jb	.L1561
	add	rcx, rdx
	cmp	r8, 1
	je	.L1570
	mov	rdx, r9
	call	memcpy
	jmp	.L1563
	.p2align 4,,10
	.p2align 3
.L1561:
	mov	QWORD PTR 32[rsp], r8
	lea	rcx, 288[rbx]
	xor	r8d, r8d
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEyyPKcy
.L1563:
	mov	rax, QWORD PTR 288[rbx]
	mov	QWORD PTR 296[rbx], rsi
	mov	BYTE PTR [rax+rsi], 0
	mov	rax, QWORD PTR 8[rbx]
	mov	QWORD PTR 24[rbx], rax
.L1568:
	add	rsp, 56
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L1570:
	movzx	eax, BYTE PTR [r9]
	mov	BYTE PTR [rcx], al
	jmp	.L1563
	.p2align 4,,10
	.p2align 3
.L1564:
	mov	eax, 15
	jmp	.L1560
.L1569:
	lea	rcx, .LC16[rip]
	call	_ZSt20__throw_length_errorPKc
	nop
	.seh_endproc
	.section	.text$_ZNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10_M_reserveEy,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10_M_reserveEy
	.def	_ZNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10_M_reserveEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10_M_reserveEy
_ZNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10_M_reserveEy:
.LFB9339:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 64
	.seh_stackalloc	64
	.seh_endprologue
	mov	r9, QWORD PTR 8[rcx]
	mov	rbx, rcx
	mov	rsi, rdx
	lea	rcx, 288[rcx]
	mov	r8, QWORD PTR 24[rbx]
	sub	r8, r9
	jne	.L1582
.L1572:
	mov	rdi, QWORD PTR 296[rbx]
	add	rsi, rdi
	mov	rdx, rsi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy
	mov	rax, QWORD PTR 288[rbx]
	mov	QWORD PTR 296[rbx], rsi
	mov	BYTE PTR [rax+rsi], 0
	mov	rax, QWORD PTR 288[rbx]
	mov	rdx, QWORD PTR 296[rbx]
	mov	QWORD PTR 8[rbx], rax
	add	rax, rdi
	mov	QWORD PTR 24[rbx], rax
	mov	rax, rbx
	mov	QWORD PTR 16[rbx], rdx
	add	rsp, 64
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L1582:
	mov	rdx, QWORD PTR 296[rbx]
	movabs	rax, 9223372036854775807
	sub	rax, rdx
	cmp	rax, r8
	jb	.L1583
	mov	rcx, QWORD PTR 288[rbx]
	lea	rax, 304[rbx]
	lea	rdi, [r8+rdx]
	cmp	rcx, rax
	je	.L1578
	mov	rax, QWORD PTR 304[rbx]
.L1574:
	cmp	rax, rdi
	jb	.L1575
	add	rcx, rdx
	cmp	r8, 1
	je	.L1584
	mov	rdx, r9
	call	memcpy
	lea	rcx, 288[rbx]
.L1577:
	mov	rax, QWORD PTR 288[rbx]
	mov	QWORD PTR 296[rbx], rdi
	mov	BYTE PTR [rax+rdi], 0
	mov	rax, QWORD PTR 8[rbx]
	mov	QWORD PTR 24[rbx], rax
	jmp	.L1572
	.p2align 4,,10
	.p2align 3
.L1584:
	movzx	eax, BYTE PTR [r9]
	mov	BYTE PTR [rcx], al
	lea	rcx, 288[rbx]
	jmp	.L1577
	.p2align 4,,10
	.p2align 3
.L1575:
	mov	QWORD PTR 32[rsp], r8
	lea	rcx, 288[rbx]
	xor	r8d, r8d
	mov	QWORD PTR 56[rsp], rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEyyPKcy
	mov	rcx, QWORD PTR 56[rsp]
	jmp	.L1577
	.p2align 4,,10
	.p2align 3
.L1578:
	mov	eax, 15
	jmp	.L1574
.L1583:
	lea	rcx, .LC16[rip]
	call	_ZSt20__throw_length_errorPKc
	nop
	.seh_endproc
	.section	.text$_ZNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_bumpEy,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_bumpEy
	.def	_ZNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_bumpEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_bumpEy
_ZNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_bumpEy:
.LFB9343:
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
	mov	rsi, QWORD PTR 24[rcx]
	mov	rdi, QWORD PTR 296[rcx]
	sub	rsi, QWORD PTR 8[rcx]
	add	rsi, rdx
	mov	rbx, rcx
	cmp	rdi, rsi
	jb	.L1595
	cmp	rsi, rdi
	jnb	.L1592
.L1594:
	mov	rax, QWORD PTR 288[rbx]
	mov	QWORD PTR 296[rbx], rsi
	mov	BYTE PTR [rax+rsi], 0
.L1592:
	lea	rax, 32[rbx]
	mov	QWORD PTR 16[rbx], 256
	mov	QWORD PTR 8[rbx], rax
	mov	QWORD PTR 24[rbx], rax
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L1595:
	movabs	rax, 9223372036854775807
	mov	rbp, rsi
	sub	rbp, rdi
	sub	rax, rdi
	cmp	rax, rbp
	jb	.L1596
	mov	rcx, QWORD PTR 288[rcx]
	lea	rax, 304[rbx]
	cmp	rcx, rax
	je	.L1593
	mov	rax, QWORD PTR 304[rbx]
.L1588:
	cmp	rax, rsi
	jb	.L1597
.L1589:
	add	rcx, rdi
	cmp	rbp, 1
	je	.L1598
	mov	r8, rbp
	xor	edx, edx
	call	memset
	jmp	.L1594
	.p2align 4,,10
	.p2align 3
.L1598:
	mov	BYTE PTR [rcx], 0
	jmp	.L1594
	.p2align 4,,10
	.p2align 3
.L1597:
	mov	QWORD PTR 32[rsp], rbp
	xor	r9d, r9d
	xor	r8d, r8d
	mov	rdx, rdi
	lea	rcx, 288[rbx]
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEyyPKcy
	mov	rcx, QWORD PTR 288[rbx]
	jmp	.L1589
	.p2align 4,,10
	.p2align 3
.L1593:
	mov	eax, 15
	jmp	.L1588
.L1596:
	lea	rcx, .LC38[rip]
	call	_ZSt20__throw_length_errorPKc
	nop
	.seh_endproc
	.section	.text$_ZNSt8__format15__formatter_strIcE5parseERSt26basic_format_parse_contextIcE,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNSt8__format15__formatter_strIcE5parseERSt26basic_format_parse_contextIcE
	.def	_ZNSt8__format15__formatter_strIcE5parseERSt26basic_format_parse_contextIcE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8__format15__formatter_strIcE5parseERSt26basic_format_parse_contextIcE
_ZNSt8__format15__formatter_strIcE5parseERSt26basic_format_parse_contextIcE:
.LFB9279:
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
	mov	r9, QWORD PTR [rdx]
	mov	rdi, QWORD PTR 8[rdx]
	mov	QWORD PTR 36[rsp], 0
	mov	rbp, rcx
	mov	rsi, rdx
	cmp	rdi, r9
	je	.L1600
	cmp	BYTE PTR [r9], 125
	je	.L1600
	mov	rdx, r9
	lea	rcx, 36[rsp]
	mov	r8, rdi
	mov	DWORD PTR 44[rsp], 32
	call	_ZNSt8__format5_SpecIcE23_M_parse_fill_and_alignEPKcS3_
	mov	r9, rax
	cmp	rax, rdi
	je	.L1601
	movzx	ecx, BYTE PTR [rax]
	cmp	cl, 125
	je	.L1601
	cmp	cl, 48
	je	.L1603
	lea	r12, _ZNSt8__detail31__from_chars_alnum_to_val_tableILb0EE5valueE[rip]
	movzx	eax, cl
	cmp	BYTE PTR [r12+rax], 9
	jbe	.L1670
	cmp	cl, 123
	je	.L1605
	xor	r10d, r10d
	xor	r8d, r8d
.L1606:
	cmp	cl, 46
	je	.L1689
	xor	r11d, r11d
	xor	eax, eax
.L1636:
	cmp	cl, 115
	je	.L1690
.L1666:
	call	_ZNSt8__format29__failed_to_parse_format_specEv
	.p2align 4,,10
	.p2align 3
.L1600:
	mov	DWORD PTR 44[rsp], 32
.L1601:
	mov	rax, QWORD PTR 36[rsp]
	mov	QWORD PTR 0[rbp], rax
	mov	eax, DWORD PTR 44[rsp]
	mov	DWORD PTR 8[rbp], eax
	mov	rax, r9
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L1670:
	mov	r11, r9
	xor	r10d, r10d
	mov	ebx, 16
	jmp	.L1604
	.p2align 4,,10
	.p2align 3
.L1692:
	lea	r10d, [r10+r10*4]
	movzx	ecx, cl
	lea	r10d, [rcx+r10*2]
.L1609:
	add	r11, 1
	cmp	rdi, r11
	je	.L1691
.L1604:
	movzx	eax, BYTE PTR [r11]
	lea	ecx, -48[rax]
	cmp	cl, 9
	ja	.L1607
	sub	ebx, 4
	jns	.L1692
	mov	edx, 10
	mov	eax, r10d
	mul	dx
	jo	.L1612
	movzx	ecx, cl
	add	cx, ax
	jc	.L1612
	mov	r10d, ecx
	jmp	.L1609
	.p2align 4,,10
	.p2align 3
.L1605:
	lea	rcx, 1[r9]
	cmp	rdi, rcx
	je	.L1651
	movsx	ax, BYTE PTR 1[r9]
	cmp	al, 125
	je	.L1693
	cmp	al, 48
	je	.L1694
	lea	edx, -49[rax]
	cmp	dl, 8
	jbe	.L1623
.L1624:
	call	_ZNSt8__format33__invalid_arg_id_in_format_stringEv
	.p2align 4,,10
	.p2align 3
.L1689:
	lea	rbx, 1[r9]
	cmp	rdi, rbx
	je	.L1650
	movzx	edx, BYTE PTR 1[r9]
	cmp	BYTE PTR [r12+rdx], 9
	ja	.L1639
	mov	r9, rbx
	xor	eax, eax
	mov	r11d, 16
	jmp	.L1647
	.p2align 4,,10
	.p2align 3
.L1696:
	lea	eax, [rax+rax*4]
	movzx	ecx, cl
	lea	eax, [rcx+rax*2]
.L1642:
	add	r9, 1
	cmp	rdi, r9
	je	.L1695
.L1647:
	movzx	esi, BYTE PTR [r9]
	lea	ecx, -48[rsi]
	cmp	cl, 9
	ja	.L1640
	sub	r11d, 4
	jns	.L1696
	mov	edx, 10
	mul	dx
	jo	.L1612
	movzx	ecx, cl
	add	cx, ax
	jc	.L1612
	mov	eax, ecx
	jmp	.L1642
	.p2align 4,,10
	.p2align 3
.L1690:
	lea	rbx, 1[r9]
	cmp	rbx, rdi
	jne	.L1697
	.p2align 4
	.p2align 3
.L1667:
	movzx	edx, WORD PTR 36[rsp]
	and	r8d, 3
	add	r11d, r11d
	mov	r9, rbx
	sal	r8d, 7
	mov	WORD PTR 40[rsp], r10w
	and	dx, -385
	mov	WORD PTR 42[rsp], ax
	or	edx, r8d
	movzx	ecx, dh
	mov	WORD PTR 36[rsp], dx
	mov	edx, ecx
	and	edx, -7
	or	edx, r11d
	mov	BYTE PTR 37[rsp], dl
	jmp	.L1601
	.p2align 4,,10
	.p2align 3
.L1697:
	cmp	BYTE PTR 1[r9], 125
	je	.L1667
	jmp	.L1666
	.p2align 4,,10
	.p2align 3
.L1607:
	cmp	r9, r11
	je	.L1612
	mov	r9, r11
	mov	r8d, 1
.L1635:
	cmp	rdi, r9
	je	.L1615
	movzx	ecx, BYTE PTR [r9]
	cmp	cl, 125
	jne	.L1606
.L1615:
	and	r8d, 3
	mov	WORD PTR 40[rsp], r10w
	mov	eax, r8d
	movzx	r8d, WORD PTR 36[rsp]
	sal	eax, 7
	and	r8w, -385
	or	r8d, eax
	mov	WORD PTR 36[rsp], r8w
	jmp	.L1601
	.p2align 4,,10
	.p2align 3
.L1639:
	cmp	dl, 123
	je	.L1698
.L1650:
	lea	rcx, .LC11[rip]
	call	_ZSt20__throw_format_errorPKc
	.p2align 4,,10
	.p2align 3
.L1693:
	cmp	DWORD PTR 16[rsi], 1
	je	.L1634
	mov	r10, QWORD PTR 24[rsi]
	mov	DWORD PTR 16[rsi], 2
	lea	rax, 1[r10]
	mov	QWORD PTR 24[rsi], rax
.L1620:
	add	rcx, 1
	xor	r8d, r8d
	cmp	r9, rcx
	je	.L1635
	mov	r9, rcx
	mov	r8d, 2
	jmp	.L1635
	.p2align 4,,10
	.p2align 3
.L1691:
	mov	r9, rdi
	mov	r8d, 1
	jmp	.L1615
.L1694:
	lea	rcx, 2[r9]
	xor	r10d, r10d
.L1622:
	cmp	rdi, rcx
	je	.L1624
.L1669:
	cmp	BYTE PTR [rcx], 125
	jne	.L1624
	cmp	DWORD PTR 16[rsi], 2
	je	.L1634
	mov	DWORD PTR 16[rsi], 1
	jmp	.L1620
.L1623:
	lea	r8, 2[r9]
	cmp	rdi, r8
	je	.L1624
	movzx	ebx, BYTE PTR 2[r9]
	lea	edx, -48[rbx]
	cmp	dl, 9
	ja	.L1625
	mov	r11, rcx
	xor	r10d, r10d
	mov	ebx, 16
	jmp	.L1633
	.p2align 4,,10
	.p2align 3
.L1700:
	lea	r10d, [r10+r10*4]
	movzx	r8d, r8b
	lea	r10d, [r8+r10*2]
.L1628:
	add	r11, 1
	cmp	rdi, r11
	je	.L1699
.L1633:
	movzx	eax, BYTE PTR [r11]
	lea	r8d, -48[rax]
	cmp	r8b, 9
	ja	.L1626
	sub	ebx, 4
	jns	.L1700
	mov	edx, 10
	mov	eax, r10d
	mul	dx
	jo	.L1624
	movzx	r8d, r8b
	add	r8w, ax
	jc	.L1624
	mov	r10d, r8d
	jmp	.L1628
.L1698:
	lea	r11, 2[r9]
	cmp	rdi, r11
	je	.L1651
	movsx	ax, BYTE PTR 2[r9]
	cmp	al, 125
	je	.L1701
	cmp	al, 48
	je	.L1702
	lea	edx, -49[rax]
	cmp	dl, 8
	ja	.L1624
	lea	rcx, 3[r9]
	cmp	rdi, rcx
	je	.L1624
	movzx	edx, BYTE PTR 3[r9]
	sub	edx, 48
	cmp	dl, 9
	ja	.L1656
	mov	r9, r11
	xor	eax, eax
	mov	r12d, 16
	jmp	.L1664
.L1704:
	lea	eax, [rax+rax*4]
	movzx	ecx, cl
	lea	eax, [rcx+rax*2]
.L1659:
	add	r9, 1
	cmp	rdi, r9
	je	.L1703
.L1664:
	movzx	edx, BYTE PTR [r9]
	lea	ecx, -48[rdx]
	cmp	cl, 9
	ja	.L1657
	sub	r12d, 4
	jns	.L1704
	mov	edx, 10
	mul	dx
	jo	.L1624
	movzx	ecx, cl
	add	cx, ax
	jc	.L1624
	mov	eax, ecx
	jmp	.L1659
	.p2align 4,,10
	.p2align 3
.L1640:
	cmp	rbx, r9
	je	.L1612
	mov	r11d, 1
.L1649:
	cmp	rdi, r9
	je	.L1648
	movzx	ecx, BYTE PTR [r9]
	cmp	cl, 125
	jne	.L1636
.L1648:
	movzx	edx, WORD PTR 36[rsp]
	and	r8d, 3
	mov	WORD PTR 40[rsp], r10w
	sal	r8d, 7
	mov	WORD PTR 42[rsp], ax
	and	dx, -385
	or	edx, r8d
	movzx	ecx, dh
	mov	WORD PTR 36[rsp], dx
	lea	edx, [r11+r11]
	and	ecx, -7
	mov	r11d, ecx
	or	r11d, edx
	mov	BYTE PTR 37[rsp], r11b
	jmp	.L1601
.L1695:
	mov	r11d, 1
	jmp	.L1648
.L1625:
	lea	r10d, -48[rax]
	mov	rcx, r8
	jmp	.L1669
.L1701:
	cmp	DWORD PTR 16[rsi], 1
	je	.L1634
	mov	rax, QWORD PTR 24[rsi]
	mov	DWORD PTR 16[rsi], 2
	lea	rdx, 1[rax]
	mov	QWORD PTR 24[rsi], rdx
.L1653:
	lea	r9, 1[r11]
	cmp	rbx, r9
	je	.L1650
	mov	r11d, 2
	jmp	.L1649
.L1702:
	lea	r11, 3[r9]
	xor	eax, eax
.L1655:
	cmp	rdi, r11
	je	.L1624
.L1668:
	cmp	BYTE PTR [r11], 125
	jne	.L1624
	cmp	DWORD PTR 16[rsi], 2
	je	.L1634
	mov	DWORD PTR 16[rsi], 1
	jmp	.L1653
.L1626:
	cmp	rcx, r11
	je	.L1624
	mov	rcx, r11
	jmp	.L1622
.L1699:
	mov	rcx, rdi
	jmp	.L1622
.L1656:
	sub	eax, 48
	mov	r11, rcx
	jmp	.L1668
.L1657:
	cmp	r11, r9
	je	.L1624
	mov	r11, r9
	jmp	.L1655
.L1703:
	mov	r11, rdi
	jmp	.L1655
.L1634:
	call	_ZNSt8__format39__conflicting_indexing_in_format_stringEv
.L1651:
	call	_ZNSt8__format39__unmatched_left_brace_in_format_stringEv
.L1612:
	lea	rcx, .LC10[rip]
	call	_ZSt20__throw_format_errorPKc
.L1603:
	lea	rcx, .LC9[rip]
	call	_ZSt20__throw_format_errorPKc
	nop
	.seh_endproc
	.section	.text$_ZNSt8__format5_SinkIcE8_M_writeESt17basic_string_viewIcSt11char_traitsIcEE,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNSt8__format5_SinkIcE8_M_writeESt17basic_string_viewIcSt11char_traitsIcEE
	.def	_ZNSt8__format5_SinkIcE8_M_writeESt17basic_string_viewIcSt11char_traitsIcEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8__format5_SinkIcE8_M_writeESt17basic_string_viewIcSt11char_traitsIcEE
_ZNSt8__format5_SinkIcE8_M_writeESt17basic_string_viewIcSt11char_traitsIcEE:
.LFB9547:
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rdi, QWORD PTR [rdx]
	mov	rbp, QWORD PTR 8[rdx]
	mov	rsi, rcx
	jmp	.L1715
	.p2align 4,,10
	.p2align 3
.L1717:
	mov	rdx, rbp
	call	memcpy
	add	QWORD PTR 24[rsi], rbx
.L1716:
	mov	rax, QWORD PTR [rsi]
	add	rbp, rbx
	sub	rdi, rbx
	mov	rcx, rsi
	call	[QWORD PTR [rax]]
.L1715:
	mov	rcx, QWORD PTR 24[rsi]
	mov	rbx, QWORD PTR 16[rsi]
	mov	rax, rcx
	sub	rax, QWORD PTR 8[rsi]
	sub	rbx, rax
	cmp	rdi, rbx
	jb	.L1706
	cmp	rbx, rdi
	mov	r8, rdi
	cmovbe	r8, rbx
	test	r8, r8
	jne	.L1717
	add	rcx, rbx
	mov	QWORD PTR 24[rsi], rcx
	jmp	.L1716
	.p2align 4,,10
	.p2align 3
.L1706:
	test	rdi, rdi
	jne	.L1718
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L1718:
	mov	r8, rdi
	mov	rdx, rbp
	call	memcpy
	add	QWORD PTR 24[rsi], rdi
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt8__format14__write_paddedINS_10_Sink_iterIcEEcEET_S3_St17basic_string_viewIT0_St11char_traitsIS5_EENS_6_AlignEyDi,"x"
	.linkonce discard
	.p2align 4
	.globl	_ZNSt8__format14__write_paddedINS_10_Sink_iterIcEEcEET_S3_St17basic_string_viewIT0_St11char_traitsIS5_EENS_6_AlignEyDi
	.def	_ZNSt8__format14__write_paddedINS_10_Sink_iterIcEEcEET_S3_St17basic_string_viewIT0_St11char_traitsIS5_EENS_6_AlignEyDi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8__format14__write_paddedINS_10_Sink_iterIcEEcEET_S3_St17basic_string_viewIT0_St11char_traitsIS5_EENS_6_AlignEyDi
_ZNSt8__format14__write_paddedINS_10_Sink_iterIcEEcEET_S3_St17basic_string_viewIT0_St11char_traitsIS5_EENS_6_AlignEyDi:
.LFB9575:
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
	sub	rsp, 184
	.seh_stackalloc	184
	vmovups	XMMWORD PTR 160[rsp], xmm6
	.seh_savexmm	xmm6, 160
	.seh_endprologue
	mov	r14, QWORD PTR [rdx]
	mov	r15, QWORD PTR 8[rdx]
	mov	edx, DWORD PTR 288[rsp]
	mov	BYTE PTR 48[rsp], 0
	mov	rsi, rcx
	mov	rbx, r9
	cmp	r8d, 3
	je	.L1830
	cmp	r8d, 2
	je	.L1771
	cmp	edx, 126
	ja	.L1772
	cmp	r9, 31
	ja	.L1831
	test	r9, r9
	je	.L1726
	lea	r13, 48[rsp]
	mov	r8, r9
	mov	rcx, r13
	call	memset
	test	r14, r14
	jne	.L1727
	lea	rdi, 32[rsp]
.L1767:
	mov	r12, rbx
	jmp	.L1728
	.p2align 4,,10
	.p2align 3
.L1771:
	mov	rbp, r9
	xor	r12d, r12d
.L1721:
	cmp	edx, 126
	ja	.L1722
	cmp	rbx, 31
	ja	.L1777
	test	rbx, rbx
	jne	.L1749
	test	rbp, rbp
	je	.L1832
.L1750:
	jmp	.L1750
	.p2align 4,,10
	.p2align 3
.L1777:
	mov	ebx, 32
.L1749:
	lea	r13, 48[rsp]
	mov	ecx, ebx
	mov	rax, r13
	cmp	ebx, 8
	jnb	.L1833
.L1754:
	and	ecx, 7
	je	.L1758
	xor	r8d, r8d
.L1757:
	mov	r9d, r8d
	add	r8d, 1
	mov	BYTE PTR [rax+r9], dl
	cmp	r8d, ecx
	jb	.L1757
.L1758:
	test	rbp, rbp
	je	.L1760
	lea	rdi, 32[rsp]
	cmp	rbx, rbp
	jnb	.L1762
.L1761:
	mov	rdx, rdi
	mov	rcx, rsi
	sub	rbp, rbx
	mov	QWORD PTR 32[rsp], rbx
	mov	QWORD PTR 40[rsp], r13
.LEHB137:
	call	_ZNSt8__format5_SinkIcE8_M_writeESt17basic_string_viewIcSt11char_traitsIcEE
	cmp	rbx, rbp
	jb	.L1761
	test	rbp, rbp
	je	.L1760
.L1762:
	mov	rdx, rdi
	mov	rcx, rsi
	mov	QWORD PTR 32[rsp], rbp
	mov	QWORD PTR 40[rsp], r13
	call	_ZNSt8__format5_SinkIcE8_M_writeESt17basic_string_viewIcSt11char_traitsIcEE
.L1760:
	test	r14, r14
	jne	.L1764
	test	r12, r12
	je	.L1802
	lea	rdi, 32[rsp]
	cmp	rbx, r12
	jb	.L1769
	jmp	.L1728
	.p2align 4,,10
	.p2align 3
.L1830:
	mov	rbp, r9
	and	ebx, 1
	shr	rbp
	add	rbx, rbp
	mov	r12, rbx
	jmp	.L1721
	.p2align 4,,10
	.p2align 3
.L1831:
	vmovd	xmm0, edx
	vpbroadcastb	ymm0, xmm0
	vmovdqu	YMMWORD PTR 48[rsp], ymm0
	test	r14, r14
	jne	.L1834
	cmp	r9, 32
	je	.L1835
	mov	r12, rbx
	lea	r13, 48[rsp]
	mov	ebx, 32
	lea	rdi, 32[rsp]
	vzeroupper
	.p2align 4
	.p2align 3
.L1769:
	mov	rdx, rdi
	mov	rcx, rsi
	sub	r12, rbx
	mov	QWORD PTR 32[rsp], rbx
	mov	QWORD PTR 40[rsp], r13
	call	_ZNSt8__format5_SinkIcE8_M_writeESt17basic_string_viewIcSt11char_traitsIcEE
	cmp	rbx, r12
	jb	.L1769
	test	r12, r12
	je	.L1802
.L1728:
	mov	rdx, rdi
	mov	rcx, rsi
	mov	QWORD PTR 32[rsp], r12
	mov	QWORD PTR 40[rsp], r13
	call	_ZNSt8__format5_SinkIcE8_M_writeESt17basic_string_viewIcSt11char_traitsIcEE
	nop
.L1802:
	vmovups	xmm6, XMMWORD PTR 160[rsp]
	mov	rax, rsi
	add	rsp, 184
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
.L1764:
	lea	rdi, 32[rsp]
	mov	rcx, rsi
	mov	QWORD PTR 32[rsp], r14
	mov	rdx, rdi
	mov	QWORD PTR 40[rsp], r15
	call	_ZNSt8__format5_SinkIcE8_M_writeESt17basic_string_viewIcSt11char_traitsIcEE
	test	r12, r12
	je	.L1802
.L1768:
	cmp	rbx, r12
	jnb	.L1728
	test	rbx, rbx
	jne	.L1769
.L1753:
.L1827:
	jmp	.L1827
	.p2align 4,,10
	.p2align 3
.L1833:
	movabs	rax, 72340172838076673
	movzx	r8d, dl
	mov	r9d, ebx
	imul	r8, rax
	and	r9d, -8
	xor	eax, eax
.L1755:
	mov	r10d, eax
	add	eax, 8
	mov	QWORD PTR 0[r13+r10], r8
	cmp	eax, r9d
	jb	.L1755
	add	rax, r13
	jmp	.L1754
	.p2align 4,,10
	.p2align 3
.L1726:
	test	r14, r14
	je	.L1802
	lea	rdx, 32[rsp]
	mov	QWORD PTR 32[rsp], r14
	mov	QWORD PTR 40[rsp], r15
	call	_ZNSt8__format5_SinkIcE8_M_writeESt17basic_string_viewIcSt11char_traitsIcEE
	jmp	.L1802
	.p2align 4,,10
	.p2align 3
.L1772:
	mov	r12, r9
	xor	ebp, ebp
.L1722:
	cmp	edx, 55295
	ja	.L1732
	bsr	eax, edx
	lea	r9d, 1[rax]
	cmp	eax, 6
	jne	.L1836
	mov	ecx, edx
	xor	eax, eax
	mov	edx, 1
	xor	r9d, r9d
	xor	r8d, r8d
.L1737:
	movzx	eax, al
	movzx	r9d, r9b
	movzx	r8d, r8b
	mov	BYTE PTR 96[rsp], cl
	sal	eax, 8
	lea	r10, 96[rsp]
	or	eax, r9d
	mov	QWORD PTR 80[rsp], r10
	sal	eax, 8
	or	eax, r8d
	movzx	r8d, cl
	sal	eax, 8
	or	eax, r8d
	mov	DWORD PTR 112[rsp], eax
	mov	eax, 1
	cmp	dl, 1
	je	.L1738
	movzx	eax, BYTE PTR 113[rsp]
	mov	BYTE PTR 97[rsp], al
	mov	eax, 2
	cmp	dl, 2
	je	.L1738
	movzx	eax, BYTE PTR 114[rsp]
	mov	BYTE PTR 98[rsp], al
	mov	eax, 3
	cmp	dl, 3
	je	.L1738
	movzx	eax, BYTE PTR 115[rsp]
	mov	BYTE PTR 99[rsp], al
	mov	eax, 4
.L1738:
	mov	QWORD PTR 88[rsp], rax
	mov	BYTE PTR 96[rsp+rax], 0
	mov	rax, QWORD PTR 80[rsp]
	mov	r13, QWORD PTR 88[rsp]
	vmovq	xmm6, rax
	test	rbp, rbp
	je	.L1837
	test	r13, r13
	jne	.L1742
	test	r14, r14
	jne	.L1828
.L1743:
	lea	rcx, 80[rsp]
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	.L1802
	.p2align 4,,10
	.p2align 3
.L1834:
	mov	QWORD PTR 32[rsp], r14
	lea	rdi, 32[rsp]
	mov	r12, rbx
	lea	r13, 48[rsp]
	mov	QWORD PTR 40[rsp], r15
	mov	rdx, rdi
	mov	ebx, 32
	vzeroupper
	call	_ZNSt8__format5_SinkIcE8_M_writeESt17basic_string_viewIcSt11char_traitsIcEE
.LEHE137:
	jmp	.L1768
.L1742:
	sub	rbp, 1
	lea	rdi, 32[rsp]
	.p2align 4
	.p2align 3
.L1744:
	mov	rdx, rdi
	mov	rcx, rsi
	mov	QWORD PTR 32[rsp], r13
	vmovq	QWORD PTR 40[rsp], xmm6
.LEHB138:
	call	_ZNSt8__format5_SinkIcE8_M_writeESt17basic_string_viewIcSt11char_traitsIcEE
	sub	rbp, 1
	jnb	.L1744
	test	r14, r14
	jne	.L1740
	lea	rbx, -1[r12]
	test	r12, r12
	je	.L1743
	.p2align 4
	.p2align 3
.L1748:
	mov	rdx, rdi
	mov	rcx, rsi
	mov	QWORD PTR 32[rsp], r13
	vmovq	QWORD PTR 40[rsp], xmm6
	call	_ZNSt8__format5_SinkIcE8_M_writeESt17basic_string_viewIcSt11char_traitsIcEE
.LEHE138:
	sub	rbx, 1
	jnb	.L1748
	jmp	.L1743
.L1832:
	test	r14, r14
	jne	.L1751
	test	r12, r12
	je	.L1802
	jmp	.L1827
	.p2align 4,,10
	.p2align 3
.L1727:
	lea	rdi, 32[rsp]
	mov	rcx, rsi
	mov	QWORD PTR 32[rsp], r14
	mov	rdx, rdi
	mov	QWORD PTR 40[rsp], r15
.LEHB139:
	call	_ZNSt8__format5_SinkIcE8_M_writeESt17basic_string_viewIcSt11char_traitsIcEE
.LEHE139:
	jmp	.L1767
.L1837:
	test	r14, r14
	je	.L1741
.L1828:
	lea	rdi, 32[rsp]
.L1740:
	mov	rdx, rdi
	mov	rcx, rsi
	mov	QWORD PTR 32[rsp], r14
	mov	QWORD PTR 40[rsp], r15
.LEHB140:
	call	_ZNSt8__format5_SinkIcE8_M_writeESt17basic_string_viewIcSt11char_traitsIcEE
.LEHE140:
.L1741:
	test	r12, r12
	je	.L1743
	test	r13, r13
	je	.L1743
	lea	rbx, -1[r12]
	lea	rdi, 32[rsp]
	jmp	.L1748
.L1835:
	mov	r12d, 32
	lea	r13, 48[rsp]
	lea	rdi, 32[rsp]
	vzeroupper
	jmp	.L1728
.L1732:
	lea	eax, -57344[rdx]
	cmp	eax, 1056767
	ja	.L1773
	bsr	eax, edx
	cmp	eax, 15
	je	.L1735
	mov	r9d, edx
	mov	eax, edx
	mov	ecx, edx
	shr	edx, 12
	shr	r9d, 6
	mov	r8d, edx
	and	eax, 63
	shr	ecx, 18
	and	r9d, 63
	and	r8d, 63
	or	eax, -128
	or	ecx, -16
	or	r9d, -128
	or	r8d, -128
	mov	edx, 4
	jmp	.L1737
.L1751:
	lea	rdx, 32[rsp]
	mov	rcx, rsi
	mov	QWORD PTR 32[rsp], r14
	mov	QWORD PTR 40[rsp], r15
.LEHB141:
	call	_ZNSt8__format5_SinkIcE8_M_writeESt17basic_string_viewIcSt11char_traitsIcEE
	test	r12, r12
	je	.L1802
	jmp	.L1753
.L1773:
	mov	edx, 65533
.L1735:
	mov	r8d, edx
	mov	ecx, edx
	mov	r9d, edx
	xor	eax, eax
	shr	r8d, 6
	shr	ecx, 12
	and	r9d, 63
	mov	edx, 3
	and	r8d, 63
	or	ecx, -32
	or	r9d, -128
	or	r8d, -128
	jmp	.L1737
.L1836:
	mov	r8d, edx
	mov	ecx, edx
	and	r8d, 63
	shr	ecx, 6
	or	r8d, -128
	cmp	r9d, 11
	jg	.L1735
	or	ecx, -64
	mov	edx, 2
	xor	eax, eax
	xor	r9d, r9d
	jmp	.L1737
.L1779:
	mov	rbx, rax
	lea	rcx, 80[rsp]
	vzeroupper
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	rcx, rbx
	call	_Unwind_Resume
	nop
.LEHE141:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA9575:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9575-.LLSDACSB9575
.LLSDACSB9575:
	.uleb128 .LEHB137-.LFB9575
	.uleb128 .LEHE137-.LEHB137
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB138-.LFB9575
	.uleb128 .LEHE138-.LEHB138
	.uleb128 .L1779-.LFB9575
	.uleb128 0
	.uleb128 .LEHB139-.LFB9575
	.uleb128 .LEHE139-.LEHB139
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB140-.LFB9575
	.uleb128 .LEHE140-.LEHB140
	.uleb128 .L1779-.LFB9575
	.uleb128 0
	.uleb128 .LEHB141-.LFB9575
	.uleb128 .LEHE141-.LEHB141
	.uleb128 0
	.uleb128 0
.LLSDACSE9575:
	.section	.text$_ZNSt8__format14__write_paddedINS_10_Sink_iterIcEEcEET_S3_St17basic_string_viewIT0_St11char_traitsIS5_EENS_6_AlignEyDi,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEyRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE,"x"
	.linkonce discard
	.p2align 4
	.globl	_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEyRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE
	.def	_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEyRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEyRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE
_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEyRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE:
.LFB9465:
	push	rbx
	.seh_pushreg	rbx
	add	rsp, -128
	.seh_stackalloc	128
	.seh_endprologue
	movzx	eax, WORD PTR [r9]
	mov	r10, QWORD PTR [rcx]
	mov	r11, QWORD PTR 8[rcx]
	and	ax, 384
	cmp	ax, 128
	je	.L1865
	cmp	ax, 256
	je	.L1841
.L1856:
	mov	rbx, QWORD PTR 16[r8]
	test	r10, r10
	jne	.L1866
.L1843:
	mov	rax, rbx
	sub	rsp, -128
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L1865:
	movzx	eax, WORD PTR 4[r9]
.L1840:
	cmp	rdx, rax
	jnb	.L1856
	movzx	ecx, BYTE PTR [r9]
	mov	r9d, DWORD PTR 8[r9]
	mov	ebx, ecx
	and	ebx, 3
	and	ecx, 3
	mov	rcx, QWORD PTR 16[r8]
	cmove	ebx, DWORD PTR 176[rsp]
	mov	DWORD PTR 32[rsp], r9d
	sub	rax, rdx
	mov	QWORD PTR 48[rsp], r10
	lea	r10, 48[rsp]
	mov	r9, rax
	mov	r8d, ebx
	mov	rdx, r10
	mov	DWORD PTR 176[rsp], ebx
	mov	QWORD PTR 56[rsp], r11
	call	_ZNSt8__format14__write_paddedINS_10_Sink_iterIcEEcEET_S3_St17basic_string_viewIT0_St11char_traitsIS5_EENS_6_AlignEyDi
	sub	rsp, -128
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L1866:
	lea	rdx, 48[rsp]
	mov	rcx, rbx
	mov	QWORD PTR 48[rsp], r10
	mov	QWORD PTR 56[rsp], r11
	call	_ZNSt8__format5_SinkIcE8_M_writeESt17basic_string_viewIcSt11char_traitsIcEE
	jmp	.L1843
	.p2align 4,,10
	.p2align 3
.L1841:
	movzx	eax, BYTE PTR [r8]
	movzx	ebx, WORD PTR 4[r9]
	mov	ecx, eax
	and	eax, 15
	and	ecx, 15
	cmp	rbx, rax
	jnb	.L1844
	mov	rax, QWORD PTR [r8]
	lea	rcx, [rbx+rbx*4]
	sal	rbx, 4
	add	rbx, QWORD PTR 8[r8]
	vmovdqu	xmm1, XMMWORD PTR [rbx]
	shr	rax, 4
	shr	rax, cl
	vmovdqu	XMMWORD PTR 96[rsp], xmm1
	and	eax, 31
.L1845:
	mov	BYTE PTR 112[rsp], al
	lea	rcx, .L1849[rip]
	movzx	eax, al
	vmovdqu	ymm0, YMMWORD PTR 96[rsp]
	movsx	rax, DWORD PTR [rcx+rax*4]
	vmovdqu	YMMWORD PTR 64[rsp], ymm0
	add	rax, rcx
	jmp	rax
	.section .rdata,"dr"
	.align 4
.L1849:
	.long	.L1863-.L1849
	.long	.L1854-.L1849
	.long	.L1854-.L1849
	.long	.L1853-.L1849
	.long	.L1852-.L1849
	.long	.L1851-.L1849
	.long	.L1850-.L1849
	.long	.L1854-.L1849
	.long	.L1854-.L1849
	.long	.L1854-.L1849
	.long	.L1854-.L1849
	.long	.L1854-.L1849
	.long	.L1854-.L1849
	.long	.L1854-.L1849
	.long	.L1854-.L1849
	.long	.L1854-.L1849
	.section	.text$_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEyRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE,"x"
	.linkonce discard
	.p2align 4,,10
	.p2align 3
.L1844:
	test	cl, cl
	jne	.L1846
	mov	rax, QWORD PTR [r8]
	shr	rax, 4
	cmp	rbx, rax
	jb	.L1867
.L1846:
	call	_ZNSt8__format33__invalid_arg_id_in_format_stringEv
	.p2align 4,,10
	.p2align 3
.L1851:
	mov	rax, QWORD PTR 64[rsp]
	test	rax, rax
	js	.L1854
.L1864:
	vzeroupper
	jmp	.L1840
.L1850:
	mov	rax, QWORD PTR 64[rsp]
	jmp	.L1864
.L1852:
	mov	eax, DWORD PTR 64[rsp]
	vzeroupper
	jmp	.L1840
.L1853:
	movsx	rax, DWORD PTR 64[rsp]
	test	eax, eax
	jns	.L1864
.L1854:
	lea	rcx, .LC3[rip]
	vzeroupper
	call	_ZSt20__throw_format_errorPKc
	.p2align 4,,10
	.p2align 3
.L1863:
	vzeroupper
	jmp	.L1846
	.p2align 4,,10
	.p2align 3
.L1867:
	sal	rbx, 5
	add	rbx, QWORD PTR 8[r8]
	vmovdqu	xmm2, XMMWORD PTR [rbx]
	movzx	eax, BYTE PTR 16[rbx]
	vmovdqu	XMMWORD PTR 96[rsp], xmm2
	jmp	.L1845
	.seh_endproc
	.text
	.p2align 4
	.def	_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEyRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE.constprop.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEyRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE.constprop.0
_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEyRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE.constprop.0:
.LFB9914:
	push	rbx
	.seh_pushreg	rbx
	add	rsp, -128
	.seh_stackalloc	128
	.seh_endprologue
	mov	r10, QWORD PTR [rcx]
	mov	r9, QWORD PTR 8[rcx]
	movzx	ecx, WORD PTR [r8]
	and	cx, 384
	mov	rax, r8
	cmp	cx, 128
	je	.L1890
	cmp	cx, 256
	je	.L1871
.L1885:
	mov	rbx, QWORD PTR 16[rdx]
	lea	rdx, 48[rsp]
	mov	QWORD PTR 56[rsp], r9
	mov	QWORD PTR 48[rsp], 1
	mov	rcx, rbx
	call	_ZNSt8__format5_SinkIcE8_M_writeESt17basic_string_viewIcSt11char_traitsIcEE
	mov	rax, rbx
	sub	rsp, -128
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L1890:
	movzx	ecx, WORD PTR 4[r8]
.L1870:
	cmp	rcx, 1
	jbe	.L1885
	movzx	r11d, BYTE PTR [rax]
	mov	r8d, r11d
	and	r8d, 3
	and	r11d, 3
	mov	r11d, 1
	cmove	r8d, r11d
	mov	r11d, DWORD PTR 8[rax]
	mov	rax, QWORD PTR 16[rdx]
	mov	QWORD PTR 56[rsp], r9
	lea	rdx, 48[rsp]
	lea	r9, -1[rcx]
	mov	QWORD PTR 48[rsp], r10
	mov	DWORD PTR 32[rsp], r11d
	mov	rcx, rax
	call	_ZNSt8__format14__write_paddedINS_10_Sink_iterIcEEcEET_S3_St17basic_string_viewIT0_St11char_traitsIS5_EENS_6_AlignEyDi
	sub	rsp, -128
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L1871:
	movzx	ecx, BYTE PTR [rdx]
	movzx	r11d, WORD PTR 4[r8]
	mov	r8d, ecx
	and	ecx, 15
	and	r8d, 15
	cmp	r11, rcx
	jnb	.L1873
	mov	r8, QWORD PTR [rdx]
	lea	rcx, [r11+r11*4]
	sal	r11, 4
	add	r11, QWORD PTR 8[rdx]
	vmovdqu	xmm1, XMMWORD PTR [r11]
	shr	r8, 4
	shr	r8, cl
	vmovdqu	XMMWORD PTR 96[rsp], xmm1
	mov	rcx, r8
	and	ecx, 31
.L1874:
	mov	BYTE PTR 112[rsp], cl
	lea	r8, .L1878[rip]
	movzx	ecx, cl
	vmovdqu	ymm0, YMMWORD PTR 96[rsp]
	movsx	rcx, DWORD PTR [r8+rcx*4]
	vmovdqu	YMMWORD PTR 64[rsp], ymm0
	add	rcx, r8
	jmp	rcx
	.section .rdata,"dr"
	.align 4
.L1878:
	.long	.L1888-.L1878
	.long	.L1883-.L1878
	.long	.L1883-.L1878
	.long	.L1882-.L1878
	.long	.L1881-.L1878
	.long	.L1880-.L1878
	.long	.L1879-.L1878
	.long	.L1883-.L1878
	.long	.L1883-.L1878
	.long	.L1883-.L1878
	.long	.L1883-.L1878
	.long	.L1883-.L1878
	.long	.L1883-.L1878
	.long	.L1883-.L1878
	.long	.L1883-.L1878
	.long	.L1883-.L1878
	.text
	.p2align 4,,10
	.p2align 3
.L1873:
	test	r8b, r8b
	jne	.L1875
	mov	rcx, QWORD PTR [rdx]
	shr	rcx, 4
	cmp	r11, rcx
	jb	.L1891
.L1875:
	call	_ZNSt8__format33__invalid_arg_id_in_format_stringEv
	.p2align 4,,10
	.p2align 3
.L1880:
	mov	rcx, QWORD PTR 64[rsp]
	test	rcx, rcx
	js	.L1883
.L1889:
	vzeroupper
	jmp	.L1870
.L1879:
	mov	rcx, QWORD PTR 64[rsp]
	jmp	.L1889
.L1881:
	mov	ecx, DWORD PTR 64[rsp]
	vzeroupper
	jmp	.L1870
.L1882:
	movsx	rcx, DWORD PTR 64[rsp]
	test	ecx, ecx
	jns	.L1889
.L1883:
	lea	rcx, .LC3[rip]
	vzeroupper
	call	_ZSt20__throw_format_errorPKc
	.p2align 4,,10
	.p2align 3
.L1888:
	vzeroupper
	jmp	.L1875
	.p2align 4,,10
	.p2align 3
.L1891:
	sal	r11, 5
	add	r11, QWORD PTR 8[rdx]
	vmovdqu	xmm2, XMMWORD PTR [r11]
	movzx	ecx, BYTE PTR 16[r11]
	vmovdqu	XMMWORD PTR 96[rsp], xmm2
	jmp	.L1874
	.seh_endproc
	.section	.text$_ZNSt9__unicode9__v15_1_022_Grapheme_cluster_viewISt17basic_string_viewIcSt11char_traitsIcEEE9_IteratorppEv,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNSt9__unicode9__v15_1_022_Grapheme_cluster_viewISt17basic_string_viewIcSt11char_traitsIcEEE9_IteratorppEv
	.def	_ZNSt9__unicode9__v15_1_022_Grapheme_cluster_viewISt17basic_string_viewIcSt11char_traitsIcEEE9_IteratorppEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt9__unicode9__v15_1_022_Grapheme_cluster_viewISt17basic_string_viewIcSt11char_traitsIcEEE9_IteratorppEv
_ZNSt9__unicode9__v15_1_022_Grapheme_cluster_viewISt17basic_string_viewIcSt11char_traitsIcEEE9_IteratorppEv:
.LFB9613:
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
	vmovups	XMMWORD PTR 160[rsp], xmm6
	.seh_savexmm	xmm6, 160
	vmovups	XMMWORD PTR 176[rsp], xmm7
	.seh_savexmm	xmm7, 176
	.seh_endprologue
	mov	r13, QWORD PTR 48[rcx]
	mov	rbp, QWORD PTR 32[rcx]
	mov	r15, rcx
	cmp	r13, rbp
	je	.L1982
	vmovdqu	ymm0, YMMWORD PTR 16[rcx]
	mov	r12d, DWORD PTR 4[rcx]
	mov	QWORD PTR 96[rsp], r13
	lea	r11, _ZNSt9__unicode9__v15_1_011__gcb_edgesE[rip]
	lea	r14, .L1924[rip]
	vmovdqu	YMMWORD PTR 64[rsp], ymm0
	movzx	edi, BYTE PTR 88[rsp]
.L1894:
	movzx	eax, dil
	movzx	edx, BYTE PTR 89[rsp]
	add	eax, 1
	cmp	eax, edx
	je	.L2013
	jge	.L1953
	add	edi, 1
	mov	BYTE PTR 88[rsp], dil
.L1953:
	cmp	r13, rbp
	je	.L1947
	movzx	eax, BYTE PTR 88[rsp]
	xor	ebx, ebx
	mov	r9, r11
	mov	esi, DWORD PTR 64[rsp+rax*4]
	mov	rdi, rax
	mov	eax, 1700
	mov	r10d, esi
	sal	r10d, 4
	or	r10d, 15
	.p2align 4
	.p2align 3
.L1896:
	test	rax, rax
	jle	.L2014
.L1897:
	mov	rdx, rax
	sar	rdx
	lea	r8, [r9+rdx*4]
	mov	ecx, DWORD PTR [r8]
	cmp	ecx, r10d
	jnb	.L1959
	sub	rax, rdx
	lea	r9, 4[r8]
	mov	ebx, ecx
	sub	rax, 1
	test	rax, rax
	jg	.L1897
.L2014:
	movzx	eax, BYTE PTR 8[r15]
	and	ebx, 15
	mov	r10d, ebx
	cmp	al, 3
	je	.L1898
	cmp	al, 1
	je	.L1899
	cmp	ebx, 10
	je	.L2015
	cmp	ebx, 4
	je	.L1904
.L1909:
	mov	BYTE PTR 8[r15], 3
.L1898:
	cmp	ebx, 13
	jne	.L1904
	movzx	eax, BYTE PTR 9[r15]
	add	eax, 1
.L1902:
	mov	BYTE PTR 9[r15], al
	mov	eax, esi
	and	al, 127
	cmp	eax, 2381
	je	.L1916
	lea	eax, -2765[rsi]
	test	eax, -129
	je	.L1916
	mov	eax, esi
	and	ah, -2
	cmp	eax, 3149
	je	.L1916
.L1957:
	lea	eax, -1[r12]
	cmp	eax, 1
	jbe	.L1918
	cmp	ebx, 2
	setne	al
	cmp	r12d, 3
	je	.L1920
	lea	eax, -1[rbx]
	cmp	eax, 2
	ja	.L1958
.L1918:
	xor	eax, eax
	mov	DWORD PTR [r15], esi
	mov	DWORD PTR 4[r15], r10d
	mov	WORD PTR 8[r15], ax
	mov	BYTE PTR 10[r15], 0
	.p2align 4
	.p2align 3
.L1947:
	mov	rax, QWORD PTR 96[rsp]
	vmovdqu	ymm0, YMMWORD PTR 64[rsp]
	mov	QWORD PTR 48[r15], rax
	vmovdqu	YMMWORD PTR 16[r15], ymm0
	vzeroupper
.L1982:
	vmovups	xmm6, XMMWORD PTR 160[rsp]
	mov	rax, r15
	vmovups	xmm7, XMMWORD PTR 176[rsp]
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
.L1959:
	mov	rax, rdx
	jmp	.L1896
	.p2align 4,,10
	.p2align 3
.L1916:
	mov	BYTE PTR 10[r15], 1
	jmp	.L1957
	.p2align 4,,10
	.p2align 3
.L2015:
	cmp	al, 2
	je	.L1907
	mov	edx, DWORD PTR [r15]
	cmp	edx, 168
	ja	.L1960
.L1908:
	mov	BYTE PTR 8[r15], 3
.L1904:
	xor	eax, eax
	jmp	.L1902
	.p2align 4,,10
	.p2align 3
.L2013:
	cmp	rbp, r13
	je	.L1947
	movzx	eax, BYTE PTR 90[rsp]
	add	rax, rbp
	mov	QWORD PTR 80[rsp], rax
	cmp	r13, rax
	je	.L2016
	lea	rcx, 64[rsp]
	vzeroupper
	call	_ZNSt9__unicode13_Utf_iteratorIcDiPKcS2_NS_5_ReplEE12_M_read_utf8Ev
	mov	rbp, QWORD PTR 80[rsp]
	lea	r11, _ZNSt9__unicode9__v15_1_011__gcb_edgesE[rip]
	jmp	.L1953
	.p2align 4,,10
	.p2align 3
.L1899:
	test	ebx, ebx
	jne	.L1909
	cmp	esi, 168
	ja	.L1962
	movzx	eax, WORD PTR .LC40[rip]
	mov	WORD PTR 8[r15], ax
	lea	eax, -1[r12]
	cmp	eax, 1
	jbe	.L1918
	cmp	r12d, 3
	je	.L1918
	.p2align 4
	.p2align 3
.L1958:
	lea	eax, -7[r12]
	cmp	eax, 5
	ja	.L1922
	movsx	rax, DWORD PTR [r14+rax*4]
	add	rax, r14
	jmp	rax
	.section .rdata,"dr"
	.align 4
.L1924:
	.long	.L1926-.L1924
	.long	.L1925-.L1924
	.long	.L1923-.L1924
	.long	.L1922-.L1924
	.long	.L1925-.L1924
	.long	.L1923-.L1924
	.section	.text$_ZNSt9__unicode9__v15_1_022_Grapheme_cluster_viewISt17basic_string_viewIcSt11char_traitsIcEEE9_IteratorppEv,"x"
	.linkonce discard
	.p2align 4,,10
	.p2align 3
.L1923:
	cmp	ebx, 9
	setne	al
.L1920:
	test	al, al
	jne	.L1918
.L1929:
	mov	r12d, ebx
	jmp	.L1894
	.p2align 4,,10
	.p2align 3
.L2016:
	mov	BYTE PTR 88[rsp], 0
	jmp	.L1947
	.p2align 4,,10
	.p2align 3
.L1925:
	lea	eax, -8[rbx]
	cmp	eax, 1
	ja	.L1918
	jmp	.L1929
.L1926:
	cmp	ebx, 8
	ja	.L1927
	cmp	ebx, 6
	ja	.L1929
	jmp	.L1918
.L1922:
	mov	eax, 1104
	bt	rax, rbx
	setc	dl
	cmp	r12d, 5
	sete	al
	or	dl, al
	jne	.L1929
	movzx	eax, BYTE PTR 10[r15]
	mov	BYTE PTR 40[rsp], al
	test	al, al
	jne	.L2017
.L1931:
	cmp	r12d, 10
	je	.L2018
	cmp	r12d, 13
	jne	.L1918
	cmp	r12d, ebx
	jne	.L1918
	test	BYTE PTR 9[r15], 1
	jne	.L1929
	mov	r10d, 13
	jmp	.L1918
	.p2align 4,,10
	.p2align 3
.L1960:
	lea	r8, _ZNSt9__unicode9__v15_1_014__xpicto_edgesE[rip]
	mov	eax, 156
	mov	QWORD PTR 40[rsp], r8
	mov	r9, r8
	mov	r8d, edx
.L1905:
	test	rax, rax
	jle	.L2019
.L1906:
	mov	rcx, rax
	sar	rcx
	lea	rdx, [r9+rcx*4]
	cmp	r8d, DWORD PTR [rdx]
	jb	.L1961
	sub	rax, rcx
	lea	r9, 4[rdx]
	sub	rax, 1
	test	rax, rax
	jg	.L1906
.L2019:
	mov	r8, QWORD PTR 40[rsp]
	sub	r9, r8
	and	r9d, 4
	je	.L1908
.L1907:
	mov	BYTE PTR 8[r15], 1
	xor	eax, eax
	jmp	.L1902
.L1927:
	lea	eax, -11[rbx]
	cmp	eax, 1
	ja	.L1918
	jmp	.L1929
.L1962:
	lea	r8, _ZNSt9__unicode9__v15_1_014__xpicto_edgesE[rip]
	mov	eax, 156
	mov	rcx, r8
.L1913:
	test	rax, rax
	jle	.L2020
.L1914:
	mov	rdx, rax
	sar	rdx
	lea	r9, [rcx+rdx*4]
	cmp	esi, DWORD PTR [r9]
	jb	.L1964
	sub	rax, rdx
	lea	rcx, 4[r9]
	sub	rax, 1
	test	rax, rax
	jg	.L1914
.L2020:
	sub	rcx, r8
	and	ecx, 4
	je	.L1908
	mov	BYTE PTR 8[r15], 2
	xor	eax, eax
	jmp	.L1902
.L1964:
	mov	rax, rdx
	jmp	.L1913
.L1961:
	mov	rax, rcx
	jmp	.L1905
.L2018:
	cmp	BYTE PTR 8[r15], 2
	jne	.L1918
	jmp	.L1929
.L2017:
	mov	eax, DWORD PTR [r15]
	sal	eax, 2
	cmp	eax, 3073
	jbe	.L1931
	mov	BYTE PTR 56[rsp], dl
	or	eax, 3
	lea	r9, _ZNSt9__unicode9__v15_1_012__incb_edgesE[rip]
	vmovd	xmm1, r10d
	mov	DWORD PTR 48[rsp], 0
	mov	DWORD PTR 52[rsp], eax
	mov	eax, 389
.L1933:
	test	rax, rax
	jle	.L2021
.L1934:
	mov	rcx, rax
	mov	r10d, DWORD PTR 52[rsp]
	sar	rcx
	lea	rdx, [r9+rcx*4]
	mov	r8d, DWORD PTR [rdx]
	cmp	r8d, r10d
	jnb	.L1965
	sub	rax, rcx
	mov	DWORD PTR 48[rsp], r8d
	lea	r9, 4[rdx]
	sub	rax, 1
	test	rax, rax
	jg	.L1934
.L2021:
	mov	eax, DWORD PTR 48[rsp]
	movzx	edx, BYTE PTR 56[rsp]
	vmovd	r10d, xmm1
	and	eax, 3
	mov	BYTE PTR 52[rsp], dl
	cmp	eax, 1
	jne	.L1931
	vmovd	DWORD PTR 48[rsp], xmm1
	mov	ecx, esi
	vzeroupper
	call	_ZNSt9__unicode9__v15_1_015__incb_propertyEDi
	mov	r10d, DWORD PTR 48[rsp]
	movzx	edx, BYTE PTR 52[rsp]
	cmp	eax, 1
	lea	r11, _ZNSt9__unicode9__v15_1_011__gcb_edgesE[rip]
	jne	.L1931
	vmovdqu	ymm0, YMMWORD PTR 16[r15]
	mov	rax, QWORD PTR 48[r15]
	mov	DWORD PTR 48[rsp], ebx
	vmovd	xmm6, r10d
	mov	ebx, edx
	vmovdqu	YMMWORD PTR 112[rsp], ymm0
	mov	r8, QWORD PTR 128[rsp]
	movzx	r9d, BYTE PTR 136[rsp]
	mov	QWORD PTR 144[rsp], rax
	lea	rax, 112[rsp]
	vmovq	xmm7, rax
	mov	r10d, r9d
.L1935:
	movzx	eax, r10b
	movzx	ecx, BYTE PTR 137[rsp]
	add	eax, 1
	cmp	eax, ecx
	je	.L2022
	jge	.L1938
	add	r10d, 1
	mov	BYTE PTR 136[rsp], r10b
.L1938:
	cmp	r8, rbp
	sete	cl
	cmp	dil, r10b
	sete	al
	test	cl, al
	jne	.L1942
	movzx	eax, r10b
	mov	ecx, DWORD PTR 112[rsp+rax*4]
	mov	eax, ecx
	and	al, 127
	cmp	eax, 2381
	je	.L1969
	lea	eax, -2765[rcx]
	test	eax, -129
	je	.L1969
	mov	eax, ecx
	and	ah, -2
	cmp	eax, 3149
	je	.L1969
	mov	QWORD PTR 56[rsp], r8
	mov	BYTE PTR 52[rsp], r10b
	vzeroupper
	call	_ZNSt9__unicode9__v15_1_015__incb_propertyEDi
	movzx	r10d, BYTE PTR 52[rsp]
	mov	r8, QWORD PTR 56[rsp]
	cmp	eax, 1
	lea	r11, _ZNSt9__unicode9__v15_1_011__gcb_edgesE[rip]
	je	.L2023
	cmp	eax, 2
	je	.L1935
	mov	ebx, DWORD PTR 48[rsp]
	vmovd	r10d, xmm6
	jmp	.L1931
	.p2align 4,,10
	.p2align 3
.L1965:
	mov	rax, rcx
	jmp	.L1933
.L2022:
	mov	rax, QWORD PTR 144[rsp]
	cmp	r8, rax
	je	.L1938
	movzx	ecx, BYTE PTR 138[rsp]
	add	r8, rcx
	mov	QWORD PTR 128[rsp], r8
	cmp	r8, rax
	je	.L2024
	vmovq	rcx, xmm7
	vzeroupper
	call	_ZNSt9__unicode13_Utf_iteratorIcDiPKcS2_NS_5_ReplEE12_M_read_utf8Ev
	mov	r8, QWORD PTR 128[rsp]
	movzx	r10d, BYTE PTR 136[rsp]
	lea	r11, _ZNSt9__unicode9__v15_1_011__gcb_edgesE[rip]
	jmp	.L1938
.L1969:
	movzx	ebx, BYTE PTR 40[rsp]
	jmp	.L1935
.L1942:
	mov	edx, ebx
	vmovd	r10d, xmm6
	mov	ebx, DWORD PTR 48[rsp]
	test	dl, dl
	je	.L1931
	jmp	.L1929
	.p2align 4,,10
	.p2align 3
.L2024:
	mov	BYTE PTR 136[rsp], 0
	xor	r10d, r10d
	jmp	.L1938
.L2023:
	xor	ebx, ebx
	jmp	.L1935
	.seh_endproc
	.section	.text$_ZNKSt8__format15__formatter_strIcE6formatINS_10_Sink_iterIcEEEET_St17basic_string_viewIcSt11char_traitsIcEERSt20basic_format_contextIS5_cE,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNKSt8__format15__formatter_strIcE6formatINS_10_Sink_iterIcEEEET_St17basic_string_viewIcSt11char_traitsIcEERSt20basic_format_contextIS5_cE
	.def	_ZNKSt8__format15__formatter_strIcE6formatINS_10_Sink_iterIcEEEET_St17basic_string_viewIcSt11char_traitsIcEERSt20basic_format_contextIS5_cE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt8__format15__formatter_strIcE6formatINS_10_Sink_iterIcEEEET_St17basic_string_viewIcSt11char_traitsIcEERSt20basic_format_contextIS5_cE
_ZNKSt8__format15__formatter_strIcE6formatINS_10_Sink_iterIcEEEET_St17basic_string_viewIcSt11char_traitsIcEERSt20basic_format_contextIS5_cE:
.LFB9464:
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
	sub	rsp, 312
	.seh_stackalloc	312
	.seh_endprologue
	mov	rax, QWORD PTR 8[rdx]
	mov	rsi, QWORD PTR [rdx]
	mov	r14, rax
	mov	r12, rcx
	mov	r13, r8
	test	WORD PTR [rcx], 1920
	jne	.L2026
	mov	rbx, QWORD PTR 16[r8]
	test	rsi, rsi
	jne	.L2101
.L2027:
	mov	rax, rbx
.L2028:
	add	rsp, 312
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
.L2026:
	vmovq	xmm2, rax
	movzx	eax, BYTE PTR 1[rcx]
	vpunpcklqdq	xmm0, xmm2, xmm2
	and	eax, 6
	je	.L2029
	cmp	al, 2
	je	.L2102
	mov	rbp, -1
	cmp	al, 4
	je	.L2103
.L2031:
	test	rsi, rsi
	je	.L2100
	lea	rdi, [r14+rsi]
	cmp	r14, rdi
	je	.L2045
	xor	r10d, r10d
	mov	BYTE PTR 106[rsp], 0
	lea	rcx, 80[rsp]
	mov	WORD PTR 104[rsp], r10w
	mov	QWORD PTR 112[rsp], rdi
	vmovdqu	XMMWORD PTR 88[rsp], xmm0
	vzeroupper
	call	_ZNSt9__unicode13_Utf_iteratorIcDiPKcS2_NS_5_ReplEE12_M_read_utf8Ev
	mov	rdx, QWORD PTR 96[rsp]
	vmovq	xmm3, r14
	mov	QWORD PTR 112[rsp], rdi
	movzx	eax, WORD PTR 104[rsp]
	vpinsrq	xmm0, xmm3, rdx, 1
	mov	QWORD PTR 272[rsp], rdi
	vmovdqu	XMMWORD PTR 88[rsp], xmm0
	vmovdqu	ymm0, YMMWORD PTR 80[rsp]
	mov	QWORD PTR 224[rsp], rdi
	vmovdqu	YMMWORD PTR 240[rsp], ymm0
	vmovdqu	YMMWORD PTR 192[rsp], ymm0
	cmp	rdi, rdx
	je	.L2047
	movzx	eax, al
	xor	ebx, ebx
	lea	r9, _ZNSt9__unicode9__v15_1_011__gcb_edgesE[rip]
	mov	r15d, DWORD PTR 240[rsp+rax*4]
	mov	eax, 1700
	mov	r10d, r15d
	sal	r10d, 4
	or	r10d, 15
	.p2align 4
	.p2align 3
.L2050:
	test	rax, rax
	jle	.L2104
.L2051:
	mov	rdx, rax
	sar	rdx
	lea	r8, [r9+rdx*4]
	mov	ecx, DWORD PTR [r8]
	cmp	ecx, r10d
	jnb	.L2083
	sub	rax, rdx
	lea	r9, 4[r8]
	mov	ebx, ecx
	sub	rax, 1
	test	rax, rax
	jg	.L2051
.L2104:
	and	ebx, 15
	jmp	.L2047
	.p2align 4,,10
	.p2align 3
.L2101:
	lea	rdx, 64[rsp]
	mov	rcx, rbx
	mov	QWORD PTR 64[rsp], rsi
	mov	QWORD PTR 72[rsp], rax
	call	_ZNSt8__format5_SinkIcE8_M_writeESt17basic_string_viewIcSt11char_traitsIcEE
	jmp	.L2027
	.p2align 4,,10
	.p2align 3
.L2029:
	test	rsi, rsi
	je	.L2090
	lea	rdi, [r14+rsi]
	cmp	r14, rdi
	je	.L2064
	xor	ecx, ecx
	mov	DWORD PTR 60[rsp], r9d
	mov	WORD PTR 152[rsp], cx
	lea	rcx, 128[rsp]
	vmovdqu	XMMWORD PTR 136[rsp], xmm0
	mov	BYTE PTR 154[rsp], 0
	mov	QWORD PTR 160[rsp], rdi
	call	_ZNSt9__unicode13_Utf_iteratorIcDiPKcS2_NS_5_ReplEE12_M_read_utf8Ev
	vmovq	xmm5, r14
	mov	rdx, QWORD PTR 144[rsp]
	mov	QWORD PTR 160[rsp], rdi
	mov	QWORD PTR 272[rsp], rdi
	movzx	eax, WORD PTR 152[rsp]
	vpinsrq	xmm0, xmm5, rdx, 1
	cmp	rdi, rdx
	mov	r9d, DWORD PTR 60[rsp]
	mov	QWORD PTR 224[rsp], rdi
	vmovdqu	XMMWORD PTR 136[rsp], xmm0
	vmovdqu	ymm0, YMMWORD PTR 128[rsp]
	vmovdqu	YMMWORD PTR 240[rsp], ymm0
	vmovdqu	YMMWORD PTR 192[rsp], ymm0
	je	.L2066
	movzx	eax, al
	xor	r9d, r9d
	lea	r10, _ZNSt9__unicode9__v15_1_011__gcb_edgesE[rip]
	mov	ebp, DWORD PTR 240[rsp+rax*4]
	mov	eax, 1700
	mov	r11d, ebp
	sal	r11d, 4
	or	r11d, 15
	.p2align 4
	.p2align 3
.L2069:
	test	rax, rax
	jle	.L2105
.L2070:
	mov	rdx, rax
	sar	rdx
	lea	r8, [r10+rdx*4]
	mov	ecx, DWORD PTR [r8]
	cmp	ecx, r11d
	jnb	.L2091
	sub	rax, rdx
	lea	r10, 4[r8]
	mov	r9d, ecx
	sub	rax, 1
	test	rax, rax
	jg	.L2070
.L2105:
	and	r9d, 15
.L2066:
	xor	eax, eax
	mov	DWORD PTR 176[rsp], ebp
	lea	r8, _ZNSt9__unicode9__v15_1_013__width_edgesE[rip]
	mov	ebx, 1
	mov	WORD PTR 184[rsp], ax
	mov	rcx, r8
	mov	eax, 200
	mov	DWORD PTR 180[rsp], r9d
	mov	BYTE PTR 186[rsp], 0
	vmovdqu	ymm0, YMMWORD PTR 176[rsp]
	mov	QWORD PTR 224[rsp], rdi
	vmovdqu	YMMWORD PTR 240[rsp], ymm0
	vmovdqu	ymm0, YMMWORD PTR 200[rsp]
	vmovdqu	YMMWORD PTR 264[rsp], ymm0
	cmp	ebp, 4351
	ja	.L2073
.L2071:
	lea	r15, 240[rsp]
	vzeroupper
	jmp	.L2075
	.p2align 4,,10
	.p2align 3
.L2080:
	mov	edx, DWORD PTR 240[rsp]
	mov	eax, 1
	cmp	edx, 4351
	ja	.L2106
.L2076:
	add	rbx, rax
.L2075:
	mov	rcx, r15
	call	_ZNSt9__unicode9__v15_1_022_Grapheme_cluster_viewISt17basic_string_viewIcSt11char_traitsIcEEE9_IteratorppEv
	cmp	QWORD PTR 32[rax], rdi
	jne	.L2080
.L2062:
	lea	rcx, 64[rsp]
	mov	r9, r12
	mov	r8, r13
	mov	rdx, rbx
	mov	DWORD PTR 32[rsp], 1
	mov	QWORD PTR 64[rsp], rsi
	mov	QWORD PTR 72[rsp], r14
	call	_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEyRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE
	jmp	.L2028
	.p2align 4,,10
	.p2align 3
.L2045:
	vmovq	xmm4, r14
	xor	r9d, r9d
	mov	BYTE PTR 106[rsp], 0
	vpinsrq	xmm0, xmm4, r14, 1
	mov	DWORD PTR 80[rsp], 0
	mov	WORD PTR 104[rsp], r9w
	vmovdqu	XMMWORD PTR 88[rsp], xmm0
	vmovdqu	ymm0, YMMWORD PTR 80[rsp]
	mov	QWORD PTR 112[rsp], r14
	vmovdqu	YMMWORD PTR 192[rsp], ymm0
.L2047:
	xor	r8d, r8d
	mov	DWORD PTR 180[rsp], ebx
	mov	eax, 200
	mov	ebx, 1
	mov	WORD PTR 184[rsp], r8w
	lea	r8, _ZNSt9__unicode9__v15_1_013__width_edgesE[rip]
	mov	DWORD PTR 176[rsp], r15d
	mov	r9, r8
	mov	BYTE PTR 186[rsp], 0
	vmovdqu	ymm0, YMMWORD PTR 176[rsp]
	mov	QWORD PTR 224[rsp], rdi
	vmovdqu	YMMWORD PTR 240[rsp], ymm0
	vmovdqu	ymm0, YMMWORD PTR 200[rsp]
	vmovdqu	YMMWORD PTR 264[rsp], ymm0
	cmp	r15d, 4351
	ja	.L2054
.L2052:
	cmp	rbp, rbx
	jb	.L2086
	lea	r15, 240[rsp]
	vzeroupper
	jmp	.L2056
	.p2align 4,,10
	.p2align 3
.L2057:
	add	rax, rbx
	cmp	rbp, rax
	jb	.L2107
	mov	rbx, rax
.L2056:
	mov	rcx, r15
	call	_ZNSt9__unicode9__v15_1_022_Grapheme_cluster_viewISt17basic_string_viewIcSt11char_traitsIcEEE9_IteratorppEv
	cmp	QWORD PTR 32[rax], rdi
	je	.L2062
	mov	edx, DWORD PTR 240[rsp]
	mov	eax, 1
	cmp	edx, 4351
	jbe	.L2057
	lea	r8, _ZNSt9__unicode9__v15_1_013__width_edgesE[rip]
	mov	eax, 200
	mov	r10, r8
	.p2align 4
	.p2align 3
.L2059:
	test	rax, rax
	jle	.L2108
.L2060:
	mov	rcx, rax
	sar	rcx
	lea	r9, [r10+rcx*4]
	cmp	edx, DWORD PTR [r9]
	jb	.L2088
	sub	rax, rcx
	lea	r10, 4[r9]
	sub	rax, 1
	test	rax, rax
	jg	.L2060
.L2108:
	sub	r10, r8
	mov	rax, r10
	shr	r10, 63
	sar	rax, 2
	add	rax, r10
	and	eax, 1
	sub	rax, r10
	add	eax, 1
	jmp	.L2057
	.p2align 4,,10
	.p2align 3
.L2085:
	mov	rax, rdx
.L2054:
	test	rax, rax
	jle	.L2109
.L2055:
	mov	rdx, rax
	sar	rdx
	lea	rcx, [r9+rdx*4]
	cmp	r15d, DWORD PTR [rcx]
	jb	.L2085
	sub	rax, rdx
	lea	r9, 4[rcx]
	sub	rax, 1
	test	rax, rax
	jg	.L2055
.L2109:
	sub	r9, r8
	mov	rax, r9
	shr	r9, 63
	sar	rax, 2
	add	rax, r9
	and	eax, 1
	sub	rax, r9
	lea	ebx, 1[rax]
	jmp	.L2052
	.p2align 4,,10
	.p2align 3
.L2103:
	movzx	eax, BYTE PTR [r8]
	movzx	edx, WORD PTR 6[rcx]
	mov	ecx, eax
	and	eax, 15
	and	ecx, 15
	cmp	rdx, rax
	jnb	.L2032
	mov	rax, QWORD PTR [r8]
	lea	rcx, [rdx+rdx*4]
	sal	rdx, 4
	add	rdx, QWORD PTR 8[r8]
	vmovdqu	xmm5, XMMWORD PTR [rdx]
	shr	rax, 4
	vmovdqu	XMMWORD PTR 240[rsp], xmm5
	shr	rax, cl
	and	eax, 31
.L2033:
	mov	BYTE PTR 256[rsp], al
	lea	rdx, .L2037[rip]
	movzx	eax, al
	vmovdqu	ymm1, YMMWORD PTR 240[rsp]
	movsx	rax, DWORD PTR [rdx+rax*4]
	vmovdqu	YMMWORD PTR 176[rsp], ymm1
	add	rax, rdx
	jmp	rax
	.section .rdata,"dr"
	.align 4
.L2037:
	.long	.L2099-.L2037
	.long	.L2042-.L2037
	.long	.L2042-.L2037
	.long	.L2041-.L2037
	.long	.L2040-.L2037
	.long	.L2039-.L2037
	.long	.L2038-.L2037
	.long	.L2042-.L2037
	.long	.L2042-.L2037
	.long	.L2042-.L2037
	.long	.L2042-.L2037
	.long	.L2042-.L2037
	.long	.L2042-.L2037
	.long	.L2042-.L2037
	.long	.L2042-.L2037
	.long	.L2042-.L2037
	.section	.text$_ZNKSt8__format15__formatter_strIcE6formatINS_10_Sink_iterIcEEEET_St17basic_string_viewIcSt11char_traitsIcEERSt20basic_format_contextIS5_cE,"x"
	.linkonce discard
	.p2align 4,,10
	.p2align 3
.L2093:
	mov	rax, rdx
.L2073:
	test	rax, rax
	jle	.L2110
.L2074:
	mov	rdx, rax
	sar	rdx
	lea	r9, [rcx+rdx*4]
	cmp	ebp, DWORD PTR [r9]
	jb	.L2093
	sub	rax, rdx
	lea	rcx, 4[r9]
	sub	rax, 1
	test	rax, rax
	jg	.L2074
.L2110:
	sub	rcx, r8
	mov	rax, rcx
	shr	rcx, 63
	sar	rax, 2
	add	rax, rcx
	and	eax, 1
	sub	rax, rcx
	lea	ebx, 1[rax]
	jmp	.L2071
	.p2align 4,,10
	.p2align 3
.L2088:
	mov	rax, rcx
	jmp	.L2059
	.p2align 4,,10
	.p2align 3
.L2083:
	mov	rax, rdx
	jmp	.L2050
	.p2align 4,,10
	.p2align 3
.L2091:
	mov	rax, rdx
	jmp	.L2069
	.p2align 4,,10
	.p2align 3
.L2086:
	xor	r14d, r14d
	xor	esi, esi
.L2100:
	xor	ebx, ebx
	vzeroupper
	jmp	.L2062
	.p2align 4,,10
	.p2align 3
.L2106:
	lea	r8, _ZNSt9__unicode9__v15_1_013__width_edgesE[rip]
	mov	eax, 200
	mov	r10, r8
	.p2align 4
	.p2align 3
.L2078:
	test	rax, rax
	jle	.L2111
.L2079:
	mov	rcx, rax
	sar	rcx
	lea	r9, [r10+rcx*4]
	cmp	edx, DWORD PTR [r9]
	jb	.L2095
	sub	rax, rcx
	lea	r10, 4[r9]
	sub	rax, 1
	test	rax, rax
	jg	.L2079
.L2111:
	sub	r10, r8
	mov	rax, r10
	shr	r10, 63
	sar	rax, 2
	add	rax, r10
	and	eax, 1
	sub	rax, r10
	add	eax, 1
	jmp	.L2076
	.p2align 4,,10
	.p2align 3
.L2095:
	mov	rax, rcx
	jmp	.L2078
	.p2align 4,,10
	.p2align 3
.L2102:
	movzx	ebp, WORD PTR 6[rcx]
	jmp	.L2031
	.p2align 4,,10
	.p2align 3
.L2107:
	mov	rsi, QWORD PTR 272[rsp]
	sub	rsi, r14
	jmp	.L2062
	.p2align 4,,10
	.p2align 3
.L2064:
	vpinsrq	xmm0, xmm2, r14, 1
	xor	edx, edx
	mov	DWORD PTR 128[rsp], 0
	mov	WORD PTR 152[rsp], dx
	mov	BYTE PTR 154[rsp], 0
	vmovdqu	XMMWORD PTR 136[rsp], xmm0
	vmovdqu	ymm0, YMMWORD PTR 128[rsp]
	mov	QWORD PTR 160[rsp], r14
	vmovdqu	YMMWORD PTR 192[rsp], ymm0
	jmp	.L2066
	.p2align 4,,10
	.p2align 3
.L2032:
	test	cl, cl
	je	.L2112
.L2034:
	call	_ZNSt8__format33__invalid_arg_id_in_format_stringEv
	.p2align 4,,10
	.p2align 3
.L2039:
	mov	rbp, QWORD PTR 176[rsp]
	test	rbp, rbp
	jns	.L2031
.L2042:
	lea	rcx, .LC3[rip]
	vzeroupper
	call	_ZSt20__throw_format_errorPKc
	.p2align 4,,10
	.p2align 3
.L2040:
	mov	ebp, DWORD PTR 176[rsp]
	jmp	.L2031
.L2041:
	movsx	rbp, DWORD PTR 176[rsp]
	test	ebp, ebp
	jns	.L2031
	jmp	.L2042
	.p2align 4,,10
	.p2align 3
.L2038:
	mov	rbp, QWORD PTR 176[rsp]
	jmp	.L2031
.L2099:
	vzeroupper
	jmp	.L2034
.L2112:
	mov	rax, QWORD PTR [r8]
	shr	rax, 4
	cmp	rdx, rax
	jnb	.L2034
	sal	rdx, 5
	add	rdx, QWORD PTR 8[r8]
	vmovdqu	xmm5, XMMWORD PTR [rdx]
	movzx	eax, BYTE PTR 16[rdx]
	vmovdqu	XMMWORD PTR 240[rsp], xmm5
	jmp	.L2033
.L2090:
	xor	ebx, ebx
	jmp	.L2062
	.seh_endproc
	.section	.text$_ZSt14__add_groupingIcEPT_S1_S0_PKcyPKS0_S5_,"x"
	.linkonce discard
	.p2align 4
	.globl	_ZSt14__add_groupingIcEPT_S1_S0_PKcyPKS0_S5_
	.def	_ZSt14__add_groupingIcEPT_S1_S0_PKcyPKS0_S5_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt14__add_groupingIcEPT_S1_S0_PKcyPKS0_S5_
_ZSt14__add_groupingIcEPT_S1_S0_PKcyPKS0_S5_:
.LFB9674:
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
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	r10, QWORD PTR 128[rsp]
	mov	rax, QWORD PTR 136[rsp]
	mov	rbx, r8
	movsx	r8, BYTE PTR [r8]
	lea	r11d, -1[r8]
	cmp	r11b, 125
	ja	.L2114
	mov	r11, rax
	sub	r11, r10
	cmp	r11, r8
	jle	.L2114
	sub	r9, 1
	xor	r11d, r11d
.L2116:
	sub	rax, r8
	cmp	r11, r9
	jb	.L2292
	mov	rsi, rax
	mov	r9d, 1
	sub	rsi, r10
	cmp	rsi, r8
	jle	.L2291
.L2119:
	sub	rax, r8
	add	r9, 1
	mov	rsi, rax
	sub	rsi, r10
	cmp	r8, rsi
	jl	.L2119
.L2291:
	lea	r15, [rbx+r11]
.L2118:
	lea	rdi, -1[r9]
	lea	rsi, -1[r11]
	mov	QWORD PTR [rsp], rdi
	cmp	r10, rax
	je	.L2122
.L2120:
	mov	r13, rax
	sub	r13, r10
	lea	r8, -1[r13]
	cmp	r8, 14
	jbe	.L2157
	lea	r12, 1[r10]
	mov	rbp, rcx
	sub	rbp, r12
	cmp	rbp, 30
	jbe	.L2157
	cmp	r8, 30
	jbe	.L2158
	mov	rbp, r13
	mov	rdi, QWORD PTR [rsp]
	xor	r8d, r8d
	and	rbp, -32
	.p2align 5
	.p2align 4
	.p2align 3
.L2125:
	vmovdqu	ymm1, YMMWORD PTR [r10+r8]
	vmovdqu	YMMWORD PTR [rcx+r8], ymm1
	add	r8, 32
	cmp	r8, rbp
	jne	.L2125
	mov	QWORD PTR [rsp], rdi
	lea	r8, [r10+rbp]
	lea	r12, [rcx+rbp]
	cmp	rbp, r13
	je	.L2131
	mov	r14, r13
	sub	r14, rbp
	lea	rdi, -1[r14]
	cmp	rdi, 14
	jbe	.L2128
.L2124:
	vmovdqu	xmm1, XMMWORD PTR [r10+rbp]
	mov	r10, r14
	and	r10, -16
	add	r8, r10
	add	r12, r10
	and	r14d, 15
	vmovdqu	XMMWORD PTR [rcx+rbp], xmm1
	je	.L2131
.L2128:
	movzx	r10d, BYTE PTR [r8]
	mov	BYTE PTR [r12], r10b
	lea	r10, 1[r8]
	cmp	rax, r10
	je	.L2131
	movzx	r10d, BYTE PTR 1[r8]
	mov	BYTE PTR 1[r12], r10b
	lea	r10, 2[r8]
	cmp	rax, r10
	je	.L2131
	movzx	r10d, BYTE PTR 2[r8]
	mov	BYTE PTR 2[r12], r10b
	lea	r10, 3[r8]
	cmp	rax, r10
	je	.L2131
	movzx	r10d, BYTE PTR 3[r8]
	mov	BYTE PTR 3[r12], r10b
	lea	r10, 4[r8]
	cmp	rax, r10
	je	.L2131
	movzx	r10d, BYTE PTR 4[r8]
	mov	BYTE PTR 4[r12], r10b
	lea	r10, 5[r8]
	cmp	rax, r10
	je	.L2131
	movzx	r10d, BYTE PTR 5[r8]
	mov	BYTE PTR 5[r12], r10b
	lea	r10, 6[r8]
	cmp	rax, r10
	je	.L2131
	movzx	r10d, BYTE PTR 6[r8]
	mov	BYTE PTR 6[r12], r10b
	lea	r10, 7[r8]
	cmp	rax, r10
	je	.L2131
	movzx	r10d, BYTE PTR 7[r8]
	mov	BYTE PTR 7[r12], r10b
	lea	r10, 8[r8]
	cmp	rax, r10
	je	.L2131
	movzx	r10d, BYTE PTR 8[r8]
	mov	BYTE PTR 8[r12], r10b
	lea	r10, 9[r8]
	cmp	rax, r10
	je	.L2131
	movzx	r10d, BYTE PTR 9[r8]
	mov	BYTE PTR 9[r12], r10b
	lea	r10, 10[r8]
	cmp	rax, r10
	je	.L2131
	movzx	r10d, BYTE PTR 10[r8]
	mov	BYTE PTR 10[r12], r10b
	lea	r10, 11[r8]
	cmp	rax, r10
	je	.L2131
	movzx	r10d, BYTE PTR 11[r8]
	mov	BYTE PTR 11[r12], r10b
	lea	r10, 12[r8]
	cmp	rax, r10
	je	.L2131
	movzx	r10d, BYTE PTR 12[r8]
	mov	BYTE PTR 12[r12], r10b
	lea	r10, 13[r8]
	cmp	rax, r10
	je	.L2131
	movzx	r10d, BYTE PTR 13[r8]
	mov	BYTE PTR 13[r12], r10b
	lea	r10, 14[r8]
	cmp	rax, r10
	je	.L2131
	movzx	r8d, BYTE PTR 14[r8]
	mov	BYTE PTR 14[r12], r8b
	.p2align 4
	.p2align 3
.L2131:
	add	rcx, r13
.L2122:
	test	r9, r9
	je	.L2132
	mov	QWORD PTR 8[rsp], r11
	mov	rdi, QWORD PTR [rsp]
	mov	r11d, edx
	mov	rdx, r15
	jmp	.L2142
	.p2align 4,,10
	.p2align 3
.L2294:
	lea	r9d, -1[r8]
	cmp	r9b, 14
	jle	.L2134
	mov	r10, rcx
	sub	r10, rax
	cmp	r10, 30
	jbe	.L2134
	mov	r14d, r8d
	cmp	r9b, 30
	jle	.L2160
	vmovdqu	ymm1, YMMWORD PTR [rax]
	mov	r9d, r8d
	shr	r9b, 5
	vmovdqu	YMMWORD PTR 1[rcx], ymm1
	cmp	r9b, 1
	je	.L2136
	vmovdqu	ymm1, YMMWORD PTR 32[rax]
	vmovdqu	YMMWORD PTR 33[rcx], ymm1
	cmp	r9b, 3
	jne	.L2136
	vmovdqu	ymm1, YMMWORD PTR 64[rax]
	vmovdqu	YMMWORD PTR 65[rcx], ymm1
.L2136:
	mov	r9, r8
	mov	r13d, r8d
	mov	r10d, r8d
	and	r9d, 224
	and	r13d, -32
	and	r10d, 31
	lea	rbp, [rax+r9]
	add	r9, r12
	test	r8b, 31
	je	.L2141
	lea	r15d, -1[r10]
	mov	r14d, r10d
	cmp	r15b, 14
	jbe	.L2138
.L2135:
	movzx	r13d, r13b
	vmovdqu	xmm1, XMMWORD PTR [rax+r13]
	vmovdqu	XMMWORD PTR 1[rcx+r13], xmm1
	mov	ecx, r14d
	and	ecx, -16
	sub	r10d, ecx
	movzx	ecx, cl
	add	rbp, rcx
	add	r9, rcx
	and	r14d, 15
	je	.L2141
.L2138:
	movzx	ecx, BYTE PTR 0[rbp]
	mov	BYTE PTR [r9], cl
	cmp	r10b, 1
	je	.L2141
	movzx	ecx, BYTE PTR 1[rbp]
	mov	BYTE PTR 1[r9], cl
	cmp	r10b, 2
	je	.L2141
	movzx	ecx, BYTE PTR 2[rbp]
	mov	BYTE PTR 2[r9], cl
	cmp	r10b, 3
	je	.L2141
	movzx	ecx, BYTE PTR 3[rbp]
	mov	BYTE PTR 3[r9], cl
	cmp	r10b, 4
	je	.L2141
	movzx	ecx, BYTE PTR 4[rbp]
	mov	BYTE PTR 4[r9], cl
	cmp	r10b, 5
	je	.L2141
	movzx	ecx, BYTE PTR 5[rbp]
	mov	BYTE PTR 5[r9], cl
	cmp	r10b, 6
	je	.L2141
	movzx	ecx, BYTE PTR 6[rbp]
	mov	BYTE PTR 6[r9], cl
	cmp	r10b, 7
	je	.L2141
	movzx	ecx, BYTE PTR 7[rbp]
	mov	BYTE PTR 7[r9], cl
	cmp	r10b, 8
	je	.L2141
	movzx	ecx, BYTE PTR 8[rbp]
	mov	BYTE PTR 8[r9], cl
	cmp	r10b, 9
	je	.L2141
	movzx	ecx, BYTE PTR 9[rbp]
	mov	BYTE PTR 9[r9], cl
	cmp	r10b, 10
	je	.L2141
	movzx	ecx, BYTE PTR 10[rbp]
	mov	BYTE PTR 10[r9], cl
	cmp	r10b, 11
	je	.L2141
	movzx	ecx, BYTE PTR 11[rbp]
	mov	BYTE PTR 11[r9], cl
	cmp	r10b, 12
	je	.L2141
	movzx	ecx, BYTE PTR 12[rbp]
	mov	BYTE PTR 12[r9], cl
	cmp	r10b, 13
	je	.L2141
	movzx	ecx, BYTE PTR 13[rbp]
	mov	BYTE PTR 13[r9], cl
	cmp	r10b, 14
	je	.L2141
	movzx	ecx, BYTE PTR 14[rbp]
	mov	BYTE PTR 14[r9], cl
	.p2align 4
	.p2align 3
.L2141:
	lea	rcx, [r12+r8]
	add	rax, r8
	sub	rdi, 1
	jb	.L2293
.L2142:
	mov	BYTE PTR [rcx], r11b
	movsx	r8, BYTE PTR [rdx]
	lea	r12, 1[rcx]
	test	r8b, r8b
	jg	.L2294
	mov	rcx, r12
	sub	rdi, 1
	jnb	.L2142
	.p2align 4
	.p2align 3
.L2293:
	mov	edx, r11d
	mov	r11, QWORD PTR 8[rsp]
.L2132:
	test	r11, r11
	jne	.L2152
	jmp	.L2290
	.p2align 4,,10
	.p2align 3
.L2295:
	lea	edi, -1[r8]
	cmp	dil, 14
	jle	.L2144
	mov	r9, rcx
	sub	r9, rax
	cmp	r9, 30
	jbe	.L2144
	mov	r12d, r8d
	cmp	dil, 30
	jle	.L2162
	vmovdqu	ymm0, YMMWORD PTR [rax]
	mov	r9d, r8d
	shr	r9b, 5
	vmovdqu	YMMWORD PTR 1[rcx], ymm0
	cmp	r9b, 1
	je	.L2146
	vmovdqu	ymm0, YMMWORD PTR 32[rax]
	vmovdqu	YMMWORD PTR 33[rcx], ymm0
	cmp	r9b, 3
	jne	.L2146
	vmovdqu	ymm0, YMMWORD PTR 64[rax]
	vmovdqu	YMMWORD PTR 65[rcx], ymm0
.L2146:
	mov	r10d, r8d
	and	r10d, -32
	movzx	r9d, r10b
	sub	r8d, r10d
	lea	rbp, [rax+r9]
	add	r9, r11
	cmp	r10b, r12b
	je	.L2151
	sub	r12d, r10d
	lea	r13d, -1[r12]
	cmp	r13b, 14
	jbe	.L2148
.L2145:
	movzx	r10d, r10b
	vmovdqu	xmm0, XMMWORD PTR [rax+r10]
	vmovdqu	XMMWORD PTR 1[rcx+r10], xmm0
	mov	ecx, r12d
	and	ecx, -16
	sub	r8d, ecx
	movzx	ecx, cl
	add	rbp, rcx
	add	r9, rcx
	and	r12d, 15
	je	.L2151
.L2148:
	movzx	ecx, BYTE PTR 0[rbp]
	mov	BYTE PTR [r9], cl
	cmp	r8b, 1
	je	.L2151
	movzx	ecx, BYTE PTR 1[rbp]
	mov	BYTE PTR 1[r9], cl
	cmp	r8b, 2
	je	.L2151
	movzx	ecx, BYTE PTR 2[rbp]
	mov	BYTE PTR 2[r9], cl
	cmp	r8b, 3
	je	.L2151
	movzx	ecx, BYTE PTR 3[rbp]
	mov	BYTE PTR 3[r9], cl
	cmp	r8b, 4
	je	.L2151
	movzx	ecx, BYTE PTR 4[rbp]
	mov	BYTE PTR 4[r9], cl
	cmp	r8b, 5
	je	.L2151
	movzx	ecx, BYTE PTR 5[rbp]
	mov	BYTE PTR 5[r9], cl
	cmp	r8b, 6
	je	.L2151
	movzx	ecx, BYTE PTR 6[rbp]
	mov	BYTE PTR 6[r9], cl
	cmp	r8b, 7
	je	.L2151
	movzx	ecx, BYTE PTR 7[rbp]
	mov	BYTE PTR 7[r9], cl
	cmp	r8b, 8
	je	.L2151
	movzx	ecx, BYTE PTR 8[rbp]
	mov	BYTE PTR 8[r9], cl
	cmp	r8b, 9
	je	.L2151
	movzx	ecx, BYTE PTR 9[rbp]
	mov	BYTE PTR 9[r9], cl
	cmp	r8b, 10
	je	.L2151
	movzx	ecx, BYTE PTR 10[rbp]
	mov	BYTE PTR 10[r9], cl
	cmp	r8b, 11
	je	.L2151
	movzx	ecx, BYTE PTR 11[rbp]
	mov	BYTE PTR 11[r9], cl
	cmp	r8b, 12
	je	.L2151
	movzx	ecx, BYTE PTR 12[rbp]
	mov	BYTE PTR 12[r9], cl
	cmp	r8b, 13
	je	.L2151
	movzx	ecx, BYTE PTR 13[rbp]
	mov	BYTE PTR 13[r9], cl
	cmp	r8b, 14
	je	.L2151
	movzx	ecx, BYTE PTR 14[rbp]
	mov	BYTE PTR 14[r9], cl
	.p2align 4
	.p2align 3
.L2151:
	movsx	rdi, dil
	lea	rcx, 1[r11+rdi]
	lea	rax, 1[rax+rdi]
	sub	rsi, 1
	jb	.L2290
.L2152:
	mov	BYTE PTR [rcx], dl
	movzx	r8d, BYTE PTR [rbx+rsi]
	lea	r11, 1[rcx]
	test	r8b, r8b
	jg	.L2295
	mov	rcx, r11
	sub	rsi, 1
	jnb	.L2152
	.p2align 4
	.p2align 3
.L2290:
	vzeroupper
.L2113:
	mov	rax, rcx
	add	rsp, 24
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
.L2292:
	add	r11, 1
	lea	r15, [rbx+r11]
	movsx	r8, BYTE PTR [r15]
	lea	esi, -1[r8]
	cmp	sil, 125
	ja	.L2163
	mov	rsi, rax
	sub	rsi, r10
	cmp	rsi, r8
	jg	.L2116
.L2163:
	xor	r9d, r9d
	jmp	.L2118
	.p2align 4,,10
	.p2align 3
.L2134:
	movzx	ebp, r8b
	xor	r9d, r9d
	.p2align 5
	.p2align 4
	.p2align 3
.L2140:
	movzx	r10d, BYTE PTR [rax+r9]
	mov	BYTE PTR 1[rcx+r9], r10b
	add	r9, 1
	cmp	rbp, r9
	jne	.L2140
	jmp	.L2141
	.p2align 4,,10
	.p2align 3
.L2144:
	xor	r9d, r9d
	.p2align 5
	.p2align 4
	.p2align 3
.L2150:
	movzx	r10d, BYTE PTR [rax+r9]
	mov	BYTE PTR 1[rcx+r9], r10b
	add	r9, 1
	cmp	r8, r9
	jne	.L2150
	jmp	.L2151
.L2162:
	mov	rbp, rax
	mov	r9, r11
	xor	r10d, r10d
	jmp	.L2145
.L2160:
	mov	r10d, r8d
	mov	rbp, rax
	mov	r9, r12
	xor	r13d, r13d
	jmp	.L2135
.L2157:
	mov	rdi, QWORD PTR [rsp]
	xor	r8d, r8d
	.p2align 5
	.p2align 4
	.p2align 3
.L2130:
	movzx	ebp, BYTE PTR [r10+r8]
	mov	BYTE PTR [rcx+r8], bpl
	add	r8, 1
	cmp	r8, r13
	jne	.L2130
	mov	QWORD PTR [rsp], rdi
	jmp	.L2131
.L2114:
	cmp	rax, r10
	je	.L2113
	mov	r15, rbx
	mov	rsi, -1
	xor	r9d, r9d
	xor	r11d, r11d
	mov	QWORD PTR [rsp], -1
	jmp	.L2120
.L2158:
	mov	r14, r13
	mov	r8, r10
	mov	r12, rcx
	xor	ebp, ebp
	jmp	.L2124
	.seh_endproc
	.section	.text$_ZNKSt8__format15__formatter_intIcE13_M_format_intINS_10_Sink_iterIcEEEENSt20basic_format_contextIT_cE8iteratorESt17basic_string_viewIcSt11char_traitsIcEEyRS7_,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNKSt8__format15__formatter_intIcE13_M_format_intINS_10_Sink_iterIcEEEENSt20basic_format_contextIT_cE8iteratorESt17basic_string_viewIcSt11char_traitsIcEEyRS7_
	.def	_ZNKSt8__format15__formatter_intIcE13_M_format_intINS_10_Sink_iterIcEEEENSt20basic_format_contextIT_cE8iteratorESt17basic_string_viewIcSt11char_traitsIcEEyRS7_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt8__format15__formatter_intIcE13_M_format_intINS_10_Sink_iterIcEEEENSt20basic_format_contextIT_cE8iteratorESt17basic_string_viewIcSt11char_traitsIcEEyRS7_
_ZNKSt8__format15__formatter_intIcE13_M_format_intINS_10_Sink_iterIcEEEENSt20basic_format_contextIT_cE8iteratorESt17basic_string_viewIcSt11char_traitsIcEEyRS7_:
.LFB9560:
	push	rbp
	.seh_pushreg	rbp
	push	r15
	.seh_pushreg	r15
	push	r14
	.seh_pushreg	r14
	push	r13
	.seh_pushreg	r13
	push	r12
	.seh_pushreg	r12
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 184
	.seh_stackalloc	184
	lea	rbp, 176[rsp]
	.seh_setframe	rbp, 176
	.seh_endprologue
	movzx	eax, WORD PTR [rcx]
	mov	r13, QWORD PTR [rdx]
	mov	rdi, QWORD PTR 8[rdx]
	and	ax, 384
	mov	r14, r13
	mov	r12, rdi
	mov	rbx, rcx
	mov	rsi, r8
	mov	r15, r9
	cmp	ax, 128
	je	.L2362
	cmp	ax, 256
	je	.L2299
	test	BYTE PTR [rcx], 32
	jne	.L2363
.L2301:
	mov	rbx, QWORD PTR 16[r15]
	test	r14, r14
	jne	.L2364
.L2328:
	mov	rax, rbx
.L2358:
	lea	rsp, 8[rbp]
	pop	rbx
	pop	rsi
	pop	rdi
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L2362:
	movzx	eax, WORD PTR 4[rcx]
	mov	QWORD PTR -88[rbp], rax
.L2298:
	test	BYTE PTR [rbx], 32
	jne	.L2300
.L2314:
	mov	rax, QWORD PTR -88[rbp]
	cmp	r14, rax
	jnb	.L2301
	mov	r9, rax
	movzx	eax, BYTE PTR [rbx]
	mov	rcx, QWORD PTR 16[r15]
	sub	r9, r14
	mov	r8d, eax
	and	r8d, 3
	je	.L2330
	mov	eax, DWORD PTR 8[rbx]
	lea	rdx, -80[rbp]
.L2331:
	mov	QWORD PTR -80[rbp], r14
	mov	QWORD PTR -72[rbp], r12
	mov	DWORD PTR 32[rsp], eax
.LEHB142:
	call	_ZNSt8__format14__write_paddedINS_10_Sink_iterIcEEcEET_S3_St17basic_string_viewIT0_St11char_traitsIS5_EENS_6_AlignEyDi
.LEHE142:
	jmp	.L2358
	.p2align 4,,10
	.p2align 3
.L2363:
	mov	QWORD PTR -88[rbp], 0
.L2300:
	cmp	BYTE PTR 32[r15], 0
	lea	rdx, 24[r15]
	je	.L2365
.L2315:
	lea	rax, -64[rbp]
	mov	rcx, rax
	mov	QWORD PTR -96[rbp], rax
	call	_ZNSt6localeC1ERKS_
	lea	rax, -32[rbp]
	mov	rdx, QWORD PTR -96[rbp]
	mov	rcx, rax
	mov	QWORD PTR -104[rbp], rax
.LEHB143:
	call	_ZNKSt6locale4nameB5cxx11Ev
	cmp	QWORD PTR -24[rbp], 1
	mov	rcx, QWORD PTR -32[rbp]
	lea	rax, -16[rbp]
	je	.L2366
.L2317:
	cmp	rcx, rax
	je	.L2320
	mov	rax, QWORD PTR -16[rbp]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L2320:
	mov	rcx, QWORD PTR .refptr._ZNSt7__cxx118numpunctIcE2idE[rip]
	call	_ZNKSt6locale2id5_M_idEv
	mov	rdx, rax
	mov	rax, QWORD PTR -64[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	r9, QWORD PTR [rax+rdx*8]
	test	r9, r9
	je	.L2323
	mov	rax, QWORD PTR [r9]
	mov	rcx, QWORD PTR -104[rbp]
	mov	QWORD PTR -112[rbp], r9
	mov	rdx, r9
	call	[QWORD PTR 32[rax]]
.LEHE143:
	mov	r11, QWORD PTR -24[rbp]
	mov	r9, QWORD PTR -112[rbp]
	test	r11, r11
	je	.L2325
	mov	rax, r13
	sub	rax, rsi
	lea	rax, 63[rsi+rax*2]
	and	rax, -16
	call	___chkstk_ms
	sub	rsp, rax
	lea	r12, 111[rsp]
	and	r12, -64
	test	rsi, rsi
	je	.L2326
	mov	r8, rsi
	mov	rdx, rdi
	mov	rcx, r12
	mov	QWORD PTR -120[rbp], r9
	mov	QWORD PTR -112[rbp], r11
	call	memcpy
	mov	r9, QWORD PTR -120[rbp]
	mov	r11, QWORD PTR -112[rbp]
.L2326:
	mov	r8, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR [r9]
	mov	QWORD PTR -120[rbp], r11
	lea	r14, [rdi+rsi]
	add	r13, rdi
	mov	rcx, r9
	mov	QWORD PTR -112[rbp], r8
.LEHB144:
	call	[QWORD PTR 24[rax]]
.LEHE144:
	mov	QWORD PTR 32[rsp], r14
	movsx	edx, al
	lea	rcx, [r12+rsi]
	mov	QWORD PTR 40[rsp], r13
	mov	r9, QWORD PTR -120[rbp]
	mov	r8, QWORD PTR -112[rbp]
	call	_ZSt14__add_groupingIcEPT_S1_S0_PKcyPKS0_S5_
	sub	rax, r12
	mov	r14, rax
.L2325:
	mov	rcx, QWORD PTR -104[rbp]
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
.L2322:
	mov	rcx, QWORD PTR -96[rbp]
	call	_ZNSt6localeD1Ev
	jmp	.L2314
	.p2align 4,,10
	.p2align 3
.L2330:
	test	al, 64
	je	.L2336
	test	rsi, rsi
	je	.L2337
	cmp	r14, rsi
	mov	rax, rsi
	lea	rdx, -80[rbp]
	cmovbe	rax, r14
	test	rax, rax
	jne	.L2367
.L2332:
	add	r12, rsi
	sub	r14, rsi
	mov	r8d, 2
	mov	eax, 48
	jmp	.L2331
	.p2align 4,,10
	.p2align 3
.L2364:
	lea	rdx, -80[rbp]
	mov	rcx, rbx
	mov	QWORD PTR -80[rbp], r14
	mov	QWORD PTR -72[rbp], r12
.LEHB145:
	call	_ZNSt8__format5_SinkIcE8_M_writeESt17basic_string_viewIcSt11char_traitsIcEE
	jmp	.L2328
	.p2align 4,,10
	.p2align 3
.L2336:
	mov	r8d, 2
	mov	eax, 32
	lea	rdx, -80[rbp]
	jmp	.L2331
	.p2align 4,,10
	.p2align 3
.L2299:
	movzx	eax, BYTE PTR [r9]
	movzx	edx, WORD PTR 4[rcx]
	mov	ecx, eax
	and	eax, 15
	and	ecx, 15
	cmp	rdx, rax
	jnb	.L2302
	mov	rax, QWORD PTR [r9]
	lea	rcx, [rdx+rdx*4]
	sal	rdx, 4
	add	rdx, QWORD PTR 8[r9]
	vmovdqu	xmm1, XMMWORD PTR [rdx]
	shr	rax, 4
	shr	rax, cl
	vmovdqu	XMMWORD PTR -32[rbp], xmm1
	and	eax, 31
.L2303:
	mov	BYTE PTR -16[rbp], al
	lea	rdx, .L2307[rip]
	movzx	eax, al
	vmovdqu	ymm0, YMMWORD PTR -32[rbp]
	movsx	rax, DWORD PTR [rdx+rax*4]
	vmovdqu	YMMWORD PTR -64[rbp], ymm0
	add	rax, rdx
	jmp	rax
	.section .rdata,"dr"
	.align 4
.L2307:
	.long	.L2360-.L2307
	.long	.L2312-.L2307
	.long	.L2312-.L2307
	.long	.L2311-.L2307
	.long	.L2310-.L2307
	.long	.L2309-.L2307
	.long	.L2308-.L2307
	.long	.L2312-.L2307
	.long	.L2312-.L2307
	.long	.L2312-.L2307
	.long	.L2312-.L2307
	.long	.L2312-.L2307
	.long	.L2312-.L2307
	.long	.L2312-.L2307
	.long	.L2312-.L2307
	.long	.L2312-.L2307
	.section	.text$_ZNKSt8__format15__formatter_intIcE13_M_format_intINS_10_Sink_iterIcEEEENSt20basic_format_contextIT_cE8iteratorESt17basic_string_viewIcSt11char_traitsIcEEyRS7_,"x"
	.linkonce discard
	.p2align 4,,10
	.p2align 3
.L2366:
	cmp	BYTE PTR [rcx], 67
	jne	.L2317
	cmp	rcx, rax
	je	.L2322
	mov	rax, QWORD PTR -16[rbp]
	lea	rdx, 1[rax]
	call	_ZdlPvy
	jmp	.L2322
	.p2align 4,,10
	.p2align 3
.L2365:
	mov	rcx, rdx
	mov	QWORD PTR -96[rbp], rdx
	call	_ZNSt6localeC1Ev
	mov	BYTE PTR 32[r15], 1
	mov	rdx, QWORD PTR -96[rbp]
	jmp	.L2315
	.p2align 4,,10
	.p2align 3
.L2302:
	test	cl, cl
	jne	.L2304
	mov	rax, QWORD PTR [r9]
	shr	rax, 4
	cmp	rdx, rax
	jb	.L2368
.L2304:
	call	_ZNSt8__format33__invalid_arg_id_in_format_stringEv
	.p2align 4,,10
	.p2align 3
.L2337:
	mov	r8d, 2
	mov	eax, 48
	lea	rdx, -80[rbp]
	jmp	.L2331
	.p2align 4,,10
	.p2align 3
.L2367:
	mov	QWORD PTR -104[rbp], r9
	mov	QWORD PTR -96[rbp], rdx
	mov	QWORD PTR -88[rbp], rcx
	mov	QWORD PTR -80[rbp], rax
	mov	QWORD PTR -72[rbp], r12
	call	_ZNSt8__format5_SinkIcE8_M_writeESt17basic_string_viewIcSt11char_traitsIcEE
	mov	r9, QWORD PTR -104[rbp]
	mov	rdx, QWORD PTR -96[rbp]
	mov	rcx, QWORD PTR -88[rbp]
	jmp	.L2332
.L2308:
	mov	rax, QWORD PTR -64[rbp]
.L2361:
	mov	QWORD PTR -88[rbp], rax
	vzeroupper
	jmp	.L2298
.L2309:
	mov	rax, QWORD PTR -64[rbp]
	test	rax, rax
	jns	.L2361
.L2312:
	lea	rcx, .LC3[rip]
	vzeroupper
	call	_ZSt20__throw_format_errorPKc
	.p2align 4,,10
	.p2align 3
.L2310:
	mov	eax, DWORD PTR -64[rbp]
	mov	QWORD PTR -88[rbp], rax
	vzeroupper
	jmp	.L2298
.L2311:
	movsx	rax, DWORD PTR -64[rbp]
	test	eax, eax
	jns	.L2361
	jmp	.L2312
	.p2align 4,,10
	.p2align 3
.L2360:
	vzeroupper
	jmp	.L2304
	.p2align 4,,10
	.p2align 3
.L2368:
	sal	rdx, 5
	add	rdx, QWORD PTR 8[r9]
	vmovdqu	xmm2, XMMWORD PTR [rdx]
	vmovdqu	XMMWORD PTR -32[rbp], xmm2
	movzx	eax, BYTE PTR 16[rdx]
	mov	BYTE PTR -16[rbp], al
	movzx	eax, BYTE PTR 16[rdx]
	jmp	.L2303
.L2339:
	mov	rcx, QWORD PTR -104[rbp]
	mov	rbx, rax
	vzeroupper
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
.L2334:
	mov	rcx, QWORD PTR -96[rbp]
	call	_ZNSt6localeD1Ev
	mov	rcx, rbx
	call	_Unwind_Resume
.LEHE145:
.L2338:
	mov	rbx, rax
	vzeroupper
	jmp	.L2334
.L2323:
.LEHB146:
	call	_ZSt16__throw_bad_castv
	nop
.LEHE146:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA9560:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9560-.LLSDACSB9560
.LLSDACSB9560:
	.uleb128 .LEHB142-.LFB9560
	.uleb128 .LEHE142-.LEHB142
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB143-.LFB9560
	.uleb128 .LEHE143-.LEHB143
	.uleb128 .L2338-.LFB9560
	.uleb128 0
	.uleb128 .LEHB144-.LFB9560
	.uleb128 .LEHE144-.LEHB144
	.uleb128 .L2339-.LFB9560
	.uleb128 0
	.uleb128 .LEHB145-.LFB9560
	.uleb128 .LEHE145-.LEHB145
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB146-.LFB9560
	.uleb128 .LEHE146-.LEHB146
	.uleb128 .L2338-.LFB9560
	.uleb128 0
.LLSDACSE9560:
	.section	.text$_ZNKSt8__format15__formatter_intIcE13_M_format_intINS_10_Sink_iterIcEEEENSt20basic_format_contextIT_cE8iteratorESt17basic_string_viewIcSt11char_traitsIcEEyRS7_,"x"
	.linkonce discard
	.seh_endproc
	.section .rdata,"dr"
.LC41:
	.ascii "0b\0"
.LC42:
	.ascii "0B\0"
.LC43:
	.ascii "0X\0"
.LC44:
	.ascii "0x\0"
.LC45:
	.ascii "0\0"
	.align 8
.LC46:
	.ascii "format error: integer not representable as character\0"
	.section	.text$_ZNKSt8__format15__formatter_intIcE6formatIhNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNKSt8__format15__formatter_intIcE6formatIhNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
	.def	_ZNKSt8__format15__formatter_intIcE6formatIhNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt8__format15__formatter_intIcE6formatIhNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
_ZNKSt8__format15__formatter_intIcE6formatIhNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_:
.LFB9449:
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
	sub	rsp, 288
	.seh_stackalloc	288
	.seh_endprologue
	mov	rbx, rcx
	movzx	ecx, BYTE PTR 1[rcx]
	mov	eax, edx
	mov	r12, r8
	mov	esi, ecx
	and	esi, 120
	cmp	sil, 56
	je	.L2440
	shr	cl, 3
	and	ecx, 15
	cmp	cl, 4
	je	.L2373
	ja	.L2374
	cmp	cl, 1
	jbe	.L2375
	cmp	sil, 16
	lea	r8, .LC41[rip]
	lea	rdx, .LC42[rip]
	cmovne	r8, rdx
	test	al, al
	jne	.L2441
	lea	rdi, 72[rsp]
	lea	rbp, 71[rsp]
	mov	eax, 48
.L2380:
	mov	BYTE PTR 71[rsp], al
	movzx	eax, BYTE PTR [rbx]
	test	al, 16
	je	.L2438
.L2413:
	mov	r9, -2
	mov	edx, 2
.L2384:
	lea	rcx, 0[rbp+r9]
	mov	r10d, edx
	test	edx, edx
	je	.L2385
	xor	edx, edx
.L2402:
	mov	r9d, edx
	add	edx, 1
	movzx	r11d, BYTE PTR [r8+r9]
	mov	BYTE PTR [rcx+r9], r11b
	cmp	edx, r10d
	jb	.L2402
	jmp	.L2385
	.p2align 4,,10
	.p2align 3
.L2440:
	test	dl, dl
	js	.L2371
	mov	BYTE PTR 80[rsp], dl
	lea	rax, 80[rsp]
	lea	rcx, 48[rsp]
	mov	r8, rbx
	mov	rdx, r12
	mov	QWORD PTR 56[rsp], rax
	mov	QWORD PTR 48[rsp], 1
	call	_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEyRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE.constprop.0
	add	rsp, 288
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L2375:
	test	dl, dl
	je	.L2391
	movzx	ecx, dl
	cmp	dl, 9
	jbe	.L2409
	vmovdqu64	zmm0, ZMMWORD PTR .LC6[rip]
	movabs	rax, 4122263930388298034
	movabs	rdx, 16106987313379638
	mov	QWORD PTR 273[rsp], rdx
	vmovdqu64	ZMMWORD PTR 80[rsp], zmm0
	vmovdqu64	zmm0, ZMMWORD PTR .LC7[rip]
	vmovdqu64	ZMMWORD PTR 144[rsp], zmm0
	vmovdqu64	zmm0, ZMMWORD PTR .LC8[rip]
	vmovdqu64	ZMMWORD PTR 208[rsp], zmm0
	mov	QWORD PTR 265[rsp], rax
	cmp	ecx, 99
	jbe	.L2442
	mov	edx, ecx
	imul	rdx, rdx, 1374389535
	shr	rdx, 37
	imul	eax, edx, 100
	sub	ecx, eax
	lea	eax, 1[rcx+rcx]
	movzx	eax, WORD PTR 79[rsp+rax]
	mov	WORD PTR 72[rsp], ax
	mov	eax, 3
	vzeroupper
.L2388:
	add	edx, 48
.L2390:
	mov	BYTE PTR 71[rsp], dl
	lea	rbp, 71[rsp]
	lea	rdi, 0[rbp+rax]
.L2437:
	movzx	eax, BYTE PTR [rbx]
	mov	rcx, rbp
.L2385:
	shr	al, 2
	and	eax, 3
	cmp	eax, 1
	je	.L2443
.L2404:
	cmp	eax, 3
	je	.L2415
.L2405:
	mov	rax, rdi
	mov	r8, rbp
	mov	QWORD PTR 56[rsp], rcx
	lea	rdx, 48[rsp]
	sub	rax, rcx
	sub	r8, rcx
	mov	r9, r12
	mov	rcx, rbx
	mov	QWORD PTR 48[rsp], rax
	call	_ZNKSt8__format15__formatter_intIcE13_M_format_intINS_10_Sink_iterIcEEEENSt20basic_format_contextIT_cE8iteratorESt17basic_string_viewIcSt11char_traitsIcEEyRS7_
	add	rsp, 288
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L2373:
	test	dl, dl
	je	.L2391
	movzx	ecx, dl
	bsr	edx, ecx
	lea	edi, 3[rdx]
	mov	edx, 2863311531
	imul	rdi, rdx
	shr	rdi, 33
	cmp	ecx, 63
	jbe	.L2444
	and	eax, 7
	add	eax, 48
	mov	BYTE PTR 73[rsp], al
	mov	eax, ecx
	shr	ecx, 6
	shr	eax, 3
	and	eax, 7
	add	eax, 48
	mov	BYTE PTR 72[rsp], al
.L2394:
	add	ecx, 48
.L2395:
	mov	BYTE PTR 71[rsp], cl
	lea	rbp, 71[rsp]
	mov	edi, edi
	mov	edx, 1
	add	rdi, rbp
	mov	r9, -1
	lea	r8, .LC45[rip]
.L2396:
	movzx	eax, BYTE PTR [rbx]
	mov	rcx, rbp
	test	al, 16
	jne	.L2384
	shr	al, 2
	and	eax, 3
	cmp	eax, 1
	jne	.L2404
	.p2align 4
	.p2align 3
.L2443:
	mov	eax, 43
.L2406:
	mov	BYTE PTR -1[rcx], al
	sub	rcx, 1
	jmp	.L2405
	.p2align 4,,10
	.p2align 3
.L2391:
	mov	BYTE PTR 71[rsp], 48
	lea	rdi, 72[rsp]
	lea	rbp, 71[rsp]
	jmp	.L2437
	.p2align 4,,10
	.p2align 3
.L2374:
	cmp	sil, 40
	je	.L2445
	test	dl, dl
	jne	.L2399
	mov	BYTE PTR 71[rsp], 48
	cmp	sil, 48
	je	.L2410
	lea	r8, .LC43[rip]
	lea	rdi, 72[rsp]
	lea	rbp, 71[rsp]
.L2398:
	movzx	eax, BYTE PTR [rbx]
	test	al, 16
	jne	.L2413
.L2438:
	mov	rcx, rbp
	jmp	.L2385
	.p2align 4,,10
	.p2align 3
.L2415:
	mov	eax, 32
	jmp	.L2406
	.p2align 4,,10
	.p2align 3
.L2441:
	movzx	ecx, al
	mov	edi, 32
	mov	r9d, 31
	bsr	edx, ecx
	xor	edx, 31
	sub	edi, edx
	sub	r9d, edx
	je	.L2383
	and	eax, 1
	mov	r9d, r9d
	mov	r10d, 30
	add	eax, 48
	mov	BYTE PTR 71[rsp+r9], al
	mov	r9d, ecx
	shr	r9d
	sub	r10d, edx
	je	.L2383
	and	r9d, 1
	mov	r10d, r10d
	mov	eax, 29
	add	r9d, 48
	mov	BYTE PTR 71[rsp+r10], r9b
	mov	r10d, ecx
	shr	r10d, 2
	sub	eax, edx
	je	.L2383
	and	r10d, 1
	mov	eax, eax
	mov	r9d, 28
	add	r10d, 48
	mov	BYTE PTR 71[rsp+rax], r10b
	mov	r10d, ecx
	shr	r10d, 3
	sub	r9d, edx
	je	.L2383
	and	r10d, 1
	mov	r9d, r9d
	mov	eax, 27
	add	r10d, 48
	mov	BYTE PTR 71[rsp+r9], r10b
	mov	r10d, ecx
	shr	r10d, 4
	sub	eax, edx
	je	.L2383
	and	r10d, 1
	mov	eax, eax
	mov	r9d, 26
	add	r10d, 48
	mov	BYTE PTR 71[rsp+rax], r10b
	mov	eax, ecx
	shr	eax, 5
	sub	r9d, edx
	je	.L2383
	and	eax, 1
	mov	r9d, r9d
	shr	ecx, 6
	add	eax, 48
	mov	BYTE PTR 71[rsp+r9], al
	cmp	edx, 24
	jne	.L2383
	and	ecx, 1
	add	ecx, 48
	mov	BYTE PTR 72[rsp], cl
.L2383:
	lea	rbp, 71[rsp]
	movsx	rdi, edi
	mov	eax, 49
	add	rdi, rbp
	jmp	.L2380
	.p2align 4,,10
	.p2align 3
.L2445:
	test	dl, dl
	jne	.L2397
	mov	BYTE PTR 71[rsp], 48
	lea	rdi, 72[rsp]
	lea	rbp, 71[rsp]
	lea	r8, .LC44[rip]
	jmp	.L2398
	.p2align 4,,10
	.p2align 3
.L2399:
	lea	rbp, 71[rsp]
	movzx	r9d, dl
	lea	rcx, 32[rsp]
	lea	r8, 79[rsp]
	mov	rdx, rbp
	call	_ZNSt8__detail13__to_chars_16IjEESt15to_chars_resultPcS2_T_
	mov	rdi, QWORD PTR 32[rsp]
	cmp	sil, 48
	jne	.L2411
	cmp	rdi, rbp
	je	.L2412
.L2400:
	mov	rsi, rbp
	.p2align 4
	.p2align 3
.L2401:
	movsx	ecx, BYTE PTR [rsi]
	add	rsi, 1
	call	toupper
	mov	BYTE PTR -1[rsi], al
	cmp	rsi, rdi
	jne	.L2401
.L2412:
	mov	r9, -2
	lea	r8, .LC43[rip]
	mov	edx, 2
	jmp	.L2396
	.p2align 4,,10
	.p2align 3
.L2397:
	lea	rbp, 71[rsp]
	movzx	r9d, dl
	lea	r8, 79[rsp]
	lea	rcx, 32[rsp]
	mov	rdx, rbp
	call	_ZNSt8__detail13__to_chars_16IjEESt15to_chars_resultPcS2_T_
	mov	rdi, QWORD PTR 32[rsp]
	lea	r8, .LC44[rip]
	jmp	.L2398
	.p2align 4,,10
	.p2align 3
.L2410:
	lea	rdi, 72[rsp]
	lea	rbp, 71[rsp]
	jmp	.L2400
	.p2align 4,,10
	.p2align 3
.L2411:
	lea	r8, .LC43[rip]
	jmp	.L2398
.L2442:
	add	ecx, ecx
	lea	eax, 1[rcx]
	movzx	edx, BYTE PTR 80[rsp+rcx]
	movzx	eax, BYTE PTR 80[rsp+rax]
	mov	BYTE PTR 72[rsp], al
	mov	eax, 2
	vzeroupper
	jmp	.L2390
.L2409:
	mov	eax, 1
	jmp	.L2388
.L2444:
	cmp	ecx, 7
	jbe	.L2394
	and	eax, 7
	shr	ecx, 3
	add	eax, 48
	add	ecx, 48
	mov	BYTE PTR 72[rsp], al
	jmp	.L2395
.L2371:
	lea	rcx, .LC46[rip]
	call	_ZSt20__throw_format_errorPKc
	nop
	.seh_endproc
	.section	.text$_ZNKSt8__format15__formatter_intIcE6formatIxNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNKSt8__format15__formatter_intIcE6formatIxNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
	.def	_ZNKSt8__format15__formatter_intIcE6formatIxNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt8__format15__formatter_intIcE6formatIxNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
_ZNKSt8__format15__formatter_intIcE6formatIxNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_:
.LFB9452:
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
	sub	rsp, 152
	.seh_stackalloc	152
	.seh_endprologue
	movzx	eax, BYTE PTR 1[rcx]
	mov	rbx, rdx
	mov	edx, eax
	mov	rsi, rcx
	mov	r9, r8
	and	edx, 120
	mov	r10, rbx
	cmp	dl, 56
	je	.L2524
	shr	al, 3
	and	eax, 15
	test	rbx, rbx
	js	.L2525
	cmp	al, 4
	je	.L2456
	ja	.L2457
	cmp	al, 1
	jbe	.L2458
	cmp	dl, 16
	lea	r13, .LC41[rip]
	lea	rax, .LC42[rip]
	cmovne	r13, rax
	test	rbx, rbx
	jne	.L2454
	lea	r12, 68[rsp]
	lea	rbp, 67[rsp]
	mov	eax, 48
.L2463:
	mov	BYTE PTR 67[rsp], al
	test	BYTE PTR [rsi], 16
	je	.L2522
.L2508:
	mov	rax, -2
	mov	edx, 2
.L2467:
	add	rax, rbp
	mov	r8d, edx
	test	edx, edx
	je	.L2468
	xor	edx, edx
.L2490:
	mov	ecx, edx
	add	edx, 1
	movzx	r10d, BYTE PTR 0[r13+rcx]
	mov	BYTE PTR [rax+rcx], r10b
	cmp	edx, r8d
	jb	.L2490
	jmp	.L2468
	.p2align 4,,10
	.p2align 3
.L2525:
	neg	r10
	cmp	al, 4
	je	.L2451
	ja	.L2452
	cmp	al, 1
	jbe	.L2453
	cmp	dl, 16
	lea	r13, .LC42[rip]
	lea	rax, .LC41[rip]
	cmove	r13, rax
.L2454:
	bsr	r8, r10
	mov	ecx, 64
	mov	eax, 63
	xor	r8, 63
	sub	ecx, r8d
	sub	eax, r8d
	je	.L2466
	mov	edx, eax
	mov	r11d, 62
	lea	rax, 64[rsp+rdx]
	sub	r11d, r8d
	lea	rdx, 63[rsp+rdx]
	sub	rdx, r11
	.p2align 5
	.p2align 4
	.p2align 3
.L2465:
	mov	r11d, r10d
	sub	rax, 1
	shr	r10
	and	r11d, 1
	add	r11d, 48
	mov	BYTE PTR 4[rax], r11b
	cmp	rax, rdx
	jne	.L2465
.L2466:
	lea	rbp, 67[rsp]
	movsx	rcx, ecx
	mov	eax, 49
	lea	r12, 0[rbp+rcx]
	jmp	.L2463
	.p2align 4,,10
	.p2align 3
.L2524:
	lea	rax, 128[rbx]
	cmp	rax, 255
	ja	.L2448
	lea	rax, 64[rsp]
	lea	rcx, 32[rsp]
	mov	r8, rsi
	mov	rdx, r9
	mov	BYTE PTR 64[rsp], bl
	mov	QWORD PTR 32[rsp], 1
	mov	QWORD PTR 40[rsp], rax
	call	_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEyRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE.constprop.0
	add	rsp, 152
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.p2align 4,,10
	.p2align 3
.L2457:
	cmp	dl, 40
	je	.L2526
	test	rbx, rbx
	jne	.L2506
	mov	BYTE PTR 67[rsp], 48
	lea	r12, 68[rsp]
	lea	rbp, 67[rsp]
	lea	r13, .LC43[rip]
	cmp	dl, 48
	je	.L2483
.L2484:
	test	BYTE PTR [rsi], 16
	jne	.L2508
	.p2align 4
	.p2align 3
.L2522:
	mov	rax, rbp
.L2468:
	lea	rdx, -1[rax]
	test	rbx, rbx
	jns	.L2527
	mov	BYTE PTR -1[rax], 45
.L2495:
	mov	rax, rdx
.L2493:
	mov	rcx, r12
	mov	r8, rbp
	lea	rdx, 32[rsp]
	mov	QWORD PTR 40[rsp], rax
	sub	rcx, rax
	sub	r8, rax
	mov	QWORD PTR 32[rsp], rcx
	mov	rcx, rsi
	call	_ZNKSt8__format15__formatter_intIcE13_M_format_intINS_10_Sink_iterIcEEEENSt20basic_format_contextIT_cE8iteratorESt17basic_string_viewIcSt11char_traitsIcEEyRS7_
	add	rsp, 152
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.p2align 4,,10
	.p2align 3
.L2452:
	cmp	dl, 40
	lea	r13, .LC44[rip]
	lea	rax, .LC43[rip]
	cmovne	r13, rax
.L2455:
	movabs	rdi, 3978425819141910832
	bsr	rax, r10
	movabs	rbp, 7378413942531504440
	lea	ecx, 4[rax]
	mov	QWORD PTR 48[rsp], rdi
	shr	ecx, 2
	mov	QWORD PTR 56[rsp], rbp
	lea	eax, -1[rcx]
	cmp	r10, 255
	jbe	.L2485
	.p2align 6
	.p2align 4
	.p2align 3
.L2486:
	mov	r11, r10
	mov	r8d, eax
	and	r11d, 15
	movzx	r11d, BYTE PTR 48[rsp+r11]
	mov	BYTE PTR 67[rsp+r8], r11b
	mov	r11, r10
	lea	r8d, -1[rax]
	shr	r10, 8
	shr	r11, 4
	sub	eax, 2
	and	r11d, 15
	movzx	r11d, BYTE PTR 48[rsp+r11]
	mov	BYTE PTR 67[rsp+r8], r11b
	cmp	r10, 255
	ja	.L2486
.L2485:
	cmp	r10, 15
	ja	.L2528
	movzx	eax, BYTE PTR 48[rsp+r10]
.L2488:
	lea	rbp, 67[rsp]
	mov	BYTE PTR 67[rsp], al
	lea	r12, 0[rbp+rcx]
	cmp	dl, 48
	jne	.L2484
.L2483:
	mov	rdi, rbp
	.p2align 4
	.p2align 3
.L2489:
	movsx	ecx, BYTE PTR [rdi]
	mov	QWORD PTR 224[rsp], r9
	add	rdi, 1
	call	toupper
	mov	r9, QWORD PTR 224[rsp]
	mov	BYTE PTR -1[rdi], al
	cmp	rdi, r12
	jne	.L2489
	mov	edx, 2
	jmp	.L2481
	.p2align 4,,10
	.p2align 3
.L2527:
	movzx	ecx, BYTE PTR [rsi]
.L2492:
	shr	cl, 2
	and	ecx, 3
	cmp	ecx, 1
	je	.L2529
	cmp	ecx, 3
	jne	.L2493
	mov	BYTE PTR -1[rax], 32
	jmp	.L2495
	.p2align 4,,10
	.p2align 3
.L2529:
	mov	BYTE PTR -1[rax], 43
	jmp	.L2495
	.p2align 4,,10
	.p2align 3
.L2458:
	test	rbx, rbx
	jne	.L2453
.L2523:
	mov	BYTE PTR 67[rsp], 48
	movzx	ecx, BYTE PTR [rsi]
.L2469:
	lea	rbp, 67[rsp]
	lea	r12, 68[rsp]
	mov	rax, rbp
	lea	rdx, 66[rsp]
	jmp	.L2492
	.p2align 4,,10
	.p2align 3
.L2456:
	test	rbx, rbx
	je	.L2523
	.p2align 4
	.p2align 3
.L2451:
	bsr	rax, r10
	lea	ecx, 3[rax]
	mov	eax, 2863311531
	imul	rcx, rax
	shr	rcx, 33
	lea	r11d, -1[rcx]
	cmp	r10, 63
	jbe	.L2477
	.p2align 6
	.p2align 4
	.p2align 3
.L2478:
	mov	rax, r10
	mov	edx, r11d
	and	eax, 7
	add	eax, 48
	mov	BYTE PTR 67[rsp+rdx], al
	mov	rax, r10
	lea	edx, -1[r11]
	shr	r10, 6
	shr	rax, 3
	sub	r11d, 2
	and	eax, 7
	add	eax, 48
	mov	BYTE PTR 67[rsp+rdx], al
	cmp	r10, 63
	ja	.L2478
.L2477:
	lea	eax, 48[r10]
	cmp	r10, 7
	ja	.L2530
.L2480:
	mov	BYTE PTR 67[rsp], al
	lea	rbp, 67[rsp]
	mov	ecx, ecx
	mov	edx, 1
	lea	r12, 0[rbp+rcx]
	lea	r13, .LC45[rip]
.L2481:
	mov	rax, rbp
	test	BYTE PTR [rsi], 16
	je	.L2468
.L2482:
	mov	rax, rdx
	neg	rax
	jmp	.L2467
	.p2align 4,,10
	.p2align 3
.L2453:
	cmp	r10, 9
	jbe	.L2501
	mov	rcx, r10
	mov	r11d, 1
	movabs	r8, 3777893186295716171
	jmp	.L2475
	.p2align 4,,10
	.p2align 3
.L2471:
	cmp	rcx, 999
	jbe	.L2531
	cmp	rcx, 9999
	jbe	.L2532
	mov	rax, rcx
	add	r11d, 4
	mul	r8
	shr	rdx, 11
	cmp	rcx, 99999
	jbe	.L2472
	mov	rcx, rdx
.L2475:
	cmp	rcx, 99
	ja	.L2471
	add	r11d, 1
.L2472:
	mov	r12d, r11d
	cmp	r11d, 64
	ja	.L2533
.L2470:
	lea	rbp, 67[rsp]
	mov	r8, r10
	mov	edx, r11d
	mov	QWORD PTR 224[rsp], r9
	mov	rcx, rbp
	add	r12, rbp
	call	_ZNSt8__detail18__to_chars_10_implIyEEvPcjT_
	mov	r9, QWORD PTR 224[rsp]
	jmp	.L2522
	.p2align 4,,10
	.p2align 3
.L2530:
	mov	rax, r10
	and	eax, 7
	add	eax, 48
	mov	BYTE PTR 68[rsp], al
	mov	rax, r10
	shr	rax, 3
	add	eax, 48
	jmp	.L2480
	.p2align 4,,10
	.p2align 3
.L2528:
	mov	rax, r10
	shr	r10, 4
	and	eax, 15
	movzx	eax, BYTE PTR 48[rsp+rax]
	mov	BYTE PTR 68[rsp], al
	movzx	eax, BYTE PTR 48[rsp+r10]
	jmp	.L2488
	.p2align 4,,10
	.p2align 3
.L2526:
	test	rbx, rbx
	jne	.L2504
	movzx	ecx, BYTE PTR [rcx]
	mov	BYTE PTR 67[rsp], 48
	test	cl, 16
	je	.L2469
	lea	r12, 68[rsp]
	mov	edx, 2
	lea	rbp, 67[rsp]
	lea	r13, .LC44[rip]
	jmp	.L2482
	.p2align 4,,10
	.p2align 3
.L2531:
	add	r11d, 2
	jmp	.L2472
	.p2align 4,,10
	.p2align 3
.L2532:
	add	r11d, 3
	jmp	.L2472
.L2506:
	lea	r13, .LC43[rip]
	jmp	.L2455
.L2533:
	lea	r12, 131[rsp]
	lea	rbp, 67[rsp]
	jmp	.L2522
.L2504:
	lea	r13, .LC44[rip]
	jmp	.L2455
.L2501:
	mov	r12d, 1
	mov	r11d, 1
	jmp	.L2470
.L2448:
	lea	rcx, .LC46[rip]
	call	_ZSt20__throw_format_errorPKc
	nop
	.seh_endproc
	.section	.text$_ZNKSt8__format15__formatter_intIcE6formatInNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNKSt8__format15__formatter_intIcE6formatInNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
	.def	_ZNKSt8__format15__formatter_intIcE6formatInNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt8__format15__formatter_intIcE6formatInNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
_ZNKSt8__format15__formatter_intIcE6formatInNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_:
.LFB9466:
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
	sub	rsp, 504
	.seh_stackalloc	504
	vmovups	XMMWORD PTR 480[rsp], xmm6
	.seh_savexmm	xmm6, 480
	.seh_endprologue
	movzx	eax, BYTE PTR 1[rcx]
	vmovdqu	xmm2, XMMWORD PTR [rdx]
	mov	r10d, eax
	and	r10d, 120
	vmovdqu	XMMWORD PTR 32[rsp], xmm2
	mov	r9, r8
	cmp	r10b, 56
	je	.L2624
	vmovq	r11, xmm2
	vpextrq	r12, xmm2, 1
	shr	al, 3
	and	eax, 15
	mov	rsi, r11
	mov	rdi, r12
	test	r12, r12
	js	.L2625
	cmp	al, 4
	je	.L2544
	ja	.L2545
	cmp	al, 1
	jbe	.L2546
	cmp	r10b, 16
	lea	rax, .LC42[rip]
	lea	r12, .LC41[rip]
	cmovne	r12, rax
	mov	rax, r11
	or	rax, rdi
	jne	.L2542
	mov	eax, 48
	lea	r15, 132[rsp]
	lea	r8, 131[rsp]
.L2551:
	mov	BYTE PTR 131[rsp], al
	test	BYTE PTR [rcx], 16
	je	.L2622
.L2604:
	mov	rax, -2
	mov	edx, 2
.L2556:
	add	rax, r8
	mov	r11d, edx
	test	edx, edx
	je	.L2557
	xor	edx, edx
.L2585:
	mov	r10d, edx
	add	edx, 1
	movzx	ebx, BYTE PTR [r12+r10]
	mov	BYTE PTR [rax+r10], bl
	cmp	edx, r11d
	jb	.L2585
	.p2align 4
	.p2align 3
.L2557:
	cmp	QWORD PTR 40[rsp], 0
	lea	rdx, -1[rax]
	js	.L2621
.L2632:
	movzx	r10d, BYTE PTR [rcx]
.L2587:
	shr	r10b, 2
	and	r10d, 3
	cmp	r10d, 1
	je	.L2626
	cmp	r10d, 3
	je	.L2627
.L2588:
	sub	r15, rax
	lea	rdx, 112[rsp]
	sub	r8, rax
	mov	QWORD PTR 120[rsp], rax
	mov	QWORD PTR 112[rsp], r15
	call	_ZNKSt8__format15__formatter_intIcE13_M_format_intINS_10_Sink_iterIcEEEENSt20basic_format_contextIT_cE8iteratorESt17basic_string_viewIcSt11char_traitsIcEEyRS7_
	jmp	.L2537
	.p2align 4,,10
	.p2align 3
.L2625:
	neg	rsi
	adc	rdi, 0
	neg	rdi
	cmp	al, 4
	je	.L2539
	ja	.L2540
	cmp	al, 1
	jbe	.L2541
	cmp	r10b, 16
	lea	r12, .LC42[rip]
	lea	rax, .LC41[rip]
	cmove	r12, rax
.L2542:
	test	rdi, rdi
	jne	.L2628
	bsr	rax, rsi
	mov	r15d, 128
	mov	r8d, 127
	xor	rax, 63
	add	eax, 64
	sub	r15d, eax
	sub	r8d, eax
	je	.L2595
.L2553:
	mov	edx, r8d
	sub	r8d, 1
	lea	rax, 128[rsp+rdx]
	lea	rdx, 127[rsp+rdx]
	sub	rdx, r8
	.p2align 5
	.p2align 4
	.p2align 3
.L2555:
	mov	r8d, esi
	sub	rax, 1
	shrd	rsi, rdi, 1
	and	r8d, 1
	shr	rdi
	add	r8d, 48
	mov	BYTE PTR 4[rax], r8b
	cmp	rax, rdx
	jne	.L2555
.L2554:
	lea	r8, 131[rsp]
	movsx	r15, r15d
	mov	eax, 49
	add	r15, r8
	jmp	.L2551
	.p2align 4,,10
	.p2align 3
.L2624:
	mov	eax, 127
	vmovq	rbx, xmm2
	vpextrq	rsi, xmm2, 1
	cmp	rax, rbx
	mov	eax, 0
	sbb	rax, rsi
	jl	.L2536
	lea	rax, 272[rsp]
	mov	r8, rcx
	mov	rdx, r9
	mov	BYTE PTR 272[rsp], bl
	mov	QWORD PTR 120[rsp], rax
	lea	rax, 112[rsp]
	mov	QWORD PTR 112[rsp], 1
	mov	rcx, rax
	call	_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEyRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE.constprop.0
	nop
.L2537:
	vmovups	xmm6, XMMWORD PTR 480[rsp]
	add	rsp, 504
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
.L2545:
	cmp	r10b, 40
	je	.L2629
	mov	rax, r11
	or	rax, r12
	jne	.L2602
	mov	BYTE PTR 131[rsp], 48
	cmp	r10b, 48
	je	.L2603
	lea	r12, .LC43[rip]
	lea	r15, 132[rsp]
	lea	r8, 131[rsp]
	jmp	.L2577
	.p2align 4,,10
	.p2align 3
.L2540:
	cmp	r10b, 40
	lea	r12, .LC44[rip]
	lea	rax, .LC43[rip]
	cmovne	r12, rax
.L2543:
	test	rdi, rdi
	jne	.L2630
	bsr	rax, rsi
	lea	rbp, 272[rsp]
	movabs	rdx, 7378413942531504440
	lea	r15d, 4[rax]
	mov	QWORD PTR 280[rsp], rdx
	movabs	rax, 3978425819141910832
	mov	QWORD PTR 272[rsp], rax
	shr	r15d, 2
	mov	eax, 255
	lea	r11d, -1[r15]
	cmp	rax, rsi
	jnb	.L2580
.L2579:
	lea	rbp, 272[rsp]
	mov	ebx, 255
	xor	r13d, r13d
	.p2align 4
	.p2align 3
.L2581:
	mov	rax, rsi
	mov	r8d, r11d
	xor	edx, edx
	and	eax, 15
	mov	QWORD PTR 56[rsp], rdx
	lea	edx, -1[r11]
	sub	r11d, 2
	add	rax, rbp
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR 131[rsp+r8], al
	mov	rax, rsi
	shrd	rsi, rdi, 8
	shrd	rax, rdi, 4
	shr	rdi, 8
	and	eax, 15
	mov	QWORD PTR 48[rsp], rax
	mov	rax, QWORD PTR 48[rsp]
	add	rax, rbp
	cmp	rbx, rsi
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR 131[rsp+rdx], al
	mov	rax, r13
	sbb	rax, rdi
	jc	.L2581
.L2580:
	mov	eax, 15
	cmp	rax, rsi
	mov	eax, 0
	sbb	rax, rdi
	jc	.L2631
	add	rbp, rsi
	movzx	eax, BYTE PTR 0[rbp]
.L2583:
	lea	r8, 131[rsp]
	mov	BYTE PTR 131[rsp], al
	add	r15, r8
	cmp	r10b, 48
	je	.L2576
.L2577:
	test	BYTE PTR [rcx], 16
	jne	.L2604
	.p2align 4
	.p2align 3
.L2622:
	mov	rax, r8
	cmp	QWORD PTR 40[rsp], 0
	lea	rdx, -1[rax]
	jns	.L2632
.L2621:
	mov	BYTE PTR -1[rax], 45
.L2590:
	mov	rax, rdx
	jmp	.L2588
	.p2align 4,,10
	.p2align 3
.L2626:
	mov	BYTE PTR -1[rax], 43
	jmp	.L2590
	.p2align 4,,10
	.p2align 3
.L2546:
	mov	rax, r11
	or	rax, r12
	jne	.L2541
.L2623:
	mov	BYTE PTR 131[rsp], 48
	movzx	r10d, BYTE PTR [rcx]
.L2558:
	lea	r8, 131[rsp]
	lea	r15, 132[rsp]
	mov	rax, r8
	lea	rdx, 130[rsp]
	jmp	.L2587
	.p2align 4,,10
	.p2align 3
.L2544:
	mov	rax, r11
	or	rax, r12
	je	.L2623
	.p2align 4
	.p2align 3
.L2539:
	test	rdi, rdi
	jne	.L2633
	bsr	rax, rsi
	lea	r15d, 3[rax]
	mov	eax, 2863311531
	imul	r15, rax
	mov	eax, 63
	shr	r15, 33
	lea	r8d, -1[r15]
	cmp	rax, rsi
	jnb	.L2571
.L2570:
	mov	r10d, 63
	xor	ebx, ebx
	.p2align 4
	.p2align 3
.L2572:
	mov	rax, rsi
	mov	r11d, r8d
	lea	edx, -1[r8]
	sub	r8d, 2
	and	eax, 7
	add	eax, 48
	mov	BYTE PTR 131[rsp+r11], al
	mov	rax, rsi
	shrd	rsi, rdi, 6
	shrd	rax, rdi, 3
	shr	rdi, 6
	and	eax, 7
	cmp	r10, rsi
	lea	eax, 48[rax]
	mov	BYTE PTR 131[rsp+rdx], al
	mov	rax, rbx
	sbb	rax, rdi
	jc	.L2572
.L2571:
	mov	eax, 7
	cmp	rax, rsi
	mov	eax, 0
	sbb	rax, rdi
	jc	.L2634
	add	esi, 48
.L2574:
	mov	BYTE PTR 131[rsp], sil
	mov	r15d, r15d
	lea	r8, 131[rsp]
	lea	r12, .LC45[rip]
	add	r15, r8
	mov	edx, 1
.L2575:
	mov	rax, r8
	test	BYTE PTR [rcx], 16
	je	.L2557
	mov	rax, rdx
	neg	rax
	jmp	.L2556
	.p2align 4,,10
	.p2align 3
.L2627:
	mov	BYTE PTR -1[rax], 32
	jmp	.L2590
	.p2align 4,,10
	.p2align 3
.L2541:
	mov	eax, 9
	cmp	rax, rsi
	mov	eax, 0
	sbb	rax, rdi
	jnc	.L2597
	lea	rax, 96[rsp]
	lea	rdx, 80[rsp]
	mov	r14, rsi
	xor	r13d, r13d
	mov	QWORD PTR 64[rsp], rsi
	mov	ebx, 99
	mov	r15d, 1
	mov	ebp, 999
	mov	QWORD PTR 72[rsp], rdi
	vmovq	xmm6, rdx
	mov	r12, rax
	mov	QWORD PTR 576[rsp], rcx
	mov	QWORD PTR 592[rsp], r9
	jmp	.L2564
	.p2align 4,,10
	.p2align 3
.L2560:
	cmp	rbp, r14
	mov	rax, r13
	sbb	rax, rdi
	jnc	.L2635
	mov	eax, 9999
	cmp	rax, r14
	mov	rax, r13
	sbb	rax, rdi
	jnc	.L2636
	vmovq	rdx, xmm6
	mov	rcx, r12
	mov	QWORD PTR 96[rsp], r14
	add	r15d, 4
	mov	QWORD PTR 104[rsp], rdi
	mov	QWORD PTR 80[rsp], 10000
	mov	QWORD PTR 88[rsp], 0
	call	__udivti3
	mov	eax, 99999
	cmp	rax, r14
	mov	rax, r13
	vmovdqu	XMMWORD PTR 48[rsp], xmm0
	mov	rcx, QWORD PTR 48[rsp]
	sbb	rax, rdi
	mov	rdx, QWORD PTR 56[rsp]
	jnc	.L2637
	mov	r14, rcx
	mov	rdi, rdx
.L2564:
	cmp	rbx, r14
	mov	rax, r13
	sbb	rax, rdi
	jc	.L2560
	mov	rsi, QWORD PTR 64[rsp]
	mov	rdi, QWORD PTR 72[rsp]
	add	r15d, 1
	mov	rcx, QWORD PTR 576[rsp]
	mov	r9, QWORD PTR 592[rsp]
.L2561:
	cmp	r15d, 128
	ja	.L2599
	vmovdqu64	zmm0, ZMMWORD PTR .LC6[rip]
	lea	r14d, -1[r15]
	lea	rbp, 272[rsp]
	movabs	rax, 4122263930388298034
	movabs	rdx, 16106987313379638
	vmovdqu64	ZMMWORD PTR 272[rsp], zmm0
	vmovdqu64	zmm0, ZMMWORD PTR .LC7[rip]
	mov	QWORD PTR 465[rsp], rdx
	vmovdqu64	ZMMWORD PTR 336[rsp], zmm0
	vmovdqu64	zmm0, ZMMWORD PTR .LC8[rip]
	vmovdqu64	ZMMWORD PTR 400[rsp], zmm0
	mov	QWORD PTR 457[rsp], rax
	mov	eax, 99
	cmp	rax, rsi
	mov	eax, 0
	sbb	rax, rdi
	jnc	.L2566
	mov	DWORD PTR 64[rsp], r15d
	vpxor	xmm0, xmm0, xmm0
	movabs	rax, 2951479051793528258
	movabs	rbx, 1152921504606846975
	movabs	r8, -8116567392432202711
	vmovq	xmm1, rax
	vmovq	xmm3, rcx
	.p2align 4
	.p2align 3
.L2567:
	mov	rax, rsi
	mov	r10, rsi
	mov	r12, rsi
	xor	r11d, r11d
	shrd	rax, rdi, 60
	and	r10, rbx
	mov	r13, rdi
	mov	ecx, 25
	and	rax, rbx
	add	r10, rax
	mov	rax, rdi
	shr	rax, 56
	add	r10, rax
	movabs	rax, 5165088340638674453
	mul	r10
	mov	rax, r10
	sub	rax, rdx
	shr	rax
	add	rdx, rax
	shr	rdx, 4
	lea	rax, [rdx+rdx*4]
	lea	rax, [rax+rax*4]
	sub	r10, rax
	vmovq	rax, xmm1
	sub	r12, r10
	sbb	r13, r11
	imul	rax, r12
	mov	r11d, r14d
	mov	r15, r13
	imul	r15, r8
	add	r15, rax
	mov	rax, r12
	mul	r8
	mov	r12, rax
	and	eax, 3
	add	r15, rdx
	mul	rcx
	add	rax, r10
	xor	edx, edx
	mov	r10, rdi
	mov	rdi, r15
	add	rax, rax
	mov	QWORD PTR 48[rsp], rax
	mov	rax, QWORD PTR 48[rsp]
	adc	rdx, rdx
	shr	rdi, 2
	mov	QWORD PTR 56[rsp], rdx
	mov	rdx, rsi
	mov	rsi, r12
	lea	r12, 0[rbp+rax]
	add	rax, rbp
	shrd	rsi, r15, 2
	movzx	r12d, BYTE PTR 1[r12]
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR 131[rsp+r11], r12b
	lea	r11d, -1[r14]
	sub	r14d, 2
	mov	BYTE PTR 131[rsp+r11], al
	mov	eax, 9999
	cmp	rax, rdx
	vmovq	rax, xmm0
	sbb	rax, r10
	jc	.L2567
	mov	eax, 999
	mov	r15d, DWORD PTR 64[rsp]
	vmovq	rcx, xmm3
	cmp	rax, rdx
	vmovq	rax, xmm0
	sbb	rax, r10
	jc	.L2566
	vzeroupper
.L2559:
	add	esi, 48
.L2568:
	lea	r8, 131[rsp]
	mov	BYTE PTR 131[rsp], sil
	add	r15, r8
	jmp	.L2622
	.p2align 4,,10
	.p2align 3
.L2634:
	mov	rax, rsi
	shrd	rsi, rdi, 3
	and	eax, 7
	add	esi, 48
	add	eax, 48
	mov	BYTE PTR 132[rsp], al
	jmp	.L2574
	.p2align 4,,10
	.p2align 3
.L2631:
	mov	rax, rsi
	and	eax, 15
	add	rax, rbp
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR 132[rsp], al
	mov	rax, rsi
	shrd	rax, rdi, 4
	movzx	eax, BYTE PTR [rax+rbp]
	jmp	.L2583
	.p2align 4,,10
	.p2align 3
.L2603:
	lea	r15, 132[rsp]
	lea	r12, .LC43[rip]
	lea	r8, 131[rsp]
.L2576:
	mov	QWORD PTR 576[rsp], rcx
	mov	rbx, r8
	mov	rbp, r8
	mov	QWORD PTR 592[rsp], r9
	.p2align 4
	.p2align 3
.L2584:
	movsx	ecx, BYTE PTR [rbx]
	add	rbx, 1
	call	toupper
	mov	BYTE PTR -1[rbx], al
	cmp	rbx, r15
	jne	.L2584
	mov	rcx, QWORD PTR 576[rsp]
	mov	r9, QWORD PTR 592[rsp]
	mov	r8, rbp
	mov	edx, 2
	jmp	.L2575
	.p2align 4,,10
	.p2align 3
.L2630:
	movabs	rdx, 7378413942531504440
	bsr	rax, rdi
	lea	r15d, 68[rax]
	mov	QWORD PTR 280[rsp], rdx
	movabs	rax, 3978425819141910832
	shr	r15d, 2
	mov	QWORD PTR 272[rsp], rax
	lea	r11d, -1[r15]
	jmp	.L2579
	.p2align 4,,10
	.p2align 3
.L2628:
	bsr	rax, rdi
	mov	r15d, 128
	mov	r8d, 127
	xor	rax, 63
	sub	r15d, eax
	sub	r8d, eax
	jmp	.L2553
.L2595:
	mov	r15d, 1
	jmp	.L2554
	.p2align 4,,10
	.p2align 3
.L2566:
	add	rsi, rsi
	lea	rax, 0[rbp+rsi]
	add	rsi, rbp
	movzx	eax, BYTE PTR 1[rax]
	movzx	esi, BYTE PTR [rsi]
	mov	BYTE PTR 132[rsp], al
	vzeroupper
	jmp	.L2568
	.p2align 4,,10
	.p2align 3
.L2629:
	mov	rax, r11
	or	rax, r12
	jne	.L2600
	movzx	r10d, BYTE PTR [rcx]
	mov	BYTE PTR 131[rsp], 48
	test	r10b, 16
	je	.L2558
	mov	rax, -2
	lea	r15, 132[rsp]
	lea	r12, .LC44[rip]
	mov	edx, 2
	lea	r8, 131[rsp]
	jmp	.L2556
	.p2align 4,,10
	.p2align 3
.L2633:
	bsr	rax, rdi
	lea	r15d, 67[rax]
	mov	eax, 2863311531
	imul	r15, rax
	shr	r15, 33
	lea	r8d, -1[r15]
	jmp	.L2570
	.p2align 4,,10
	.p2align 3
.L2635:
	mov	rsi, QWORD PTR 64[rsp]
	mov	rdi, QWORD PTR 72[rsp]
	add	r15d, 2
	mov	rcx, QWORD PTR 576[rsp]
	mov	r9, QWORD PTR 592[rsp]
	jmp	.L2561
	.p2align 4,,10
	.p2align 3
.L2636:
	mov	rsi, QWORD PTR 64[rsp]
	mov	rdi, QWORD PTR 72[rsp]
	add	r15d, 3
	mov	rcx, QWORD PTR 576[rsp]
	mov	r9, QWORD PTR 592[rsp]
	jmp	.L2561
	.p2align 4,,10
	.p2align 3
.L2637:
	mov	rsi, QWORD PTR 64[rsp]
	mov	rdi, QWORD PTR 72[rsp]
	mov	rcx, QWORD PTR 576[rsp]
	mov	r9, QWORD PTR 592[rsp]
	jmp	.L2561
.L2602:
	lea	r12, .LC43[rip]
	jmp	.L2543
.L2599:
	lea	r15, 259[rsp]
	lea	r8, 131[rsp]
	jmp	.L2622
.L2600:
	lea	r12, .LC44[rip]
	jmp	.L2543
.L2597:
	mov	r15d, 1
	jmp	.L2559
.L2536:
	lea	rcx, .LC46[rip]
	call	_ZSt20__throw_format_errorPKc
	nop
	.seh_endproc
	.section	.text$_ZNKSt8__format15__formatter_intIcE6formatIoNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNKSt8__format15__formatter_intIcE6formatIoNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
	.def	_ZNKSt8__format15__formatter_intIcE6formatIoNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt8__format15__formatter_intIcE6formatIoNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
_ZNKSt8__format15__formatter_intIcE6formatIoNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_:
.LFB9467:
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
	sub	rsp, 488
	.seh_stackalloc	488
	vmovups	XMMWORD PTR 464[rsp], xmm6
	.seh_savexmm	xmm6, 464
	.seh_endprologue
	movzx	eax, BYTE PTR 1[rcx]
	mov	rsi, QWORD PTR [rdx]
	mov	rdi, QWORD PTR 8[rdx]
	mov	r10d, eax
	and	r10d, 120
	mov	r9, r8
	cmp	r10b, 56
	je	.L2718
	shr	al, 3
	and	eax, 15
	cmp	al, 4
	je	.L2642
	ja	.L2643
	cmp	al, 1
	ja	.L2719
	mov	rax, rsi
	or	rax, rdi
	jne	.L2656
	mov	BYTE PTR 115[rsp], 48
	lea	r13, 116[rsp]
	lea	r8, 115[rsp]
.L2657:
	movzx	eax, BYTE PTR [rcx]
	mov	r10, r8
.L2655:
	shr	al, 2
	and	eax, 3
	cmp	eax, 1
	je	.L2720
.L2688:
	cmp	eax, 3
	je	.L2702
.L2689:
	sub	r13, r10
	lea	rdx, 96[rsp]
	sub	r8, r10
	mov	QWORD PTR 104[rsp], r10
	mov	QWORD PTR 96[rsp], r13
	call	_ZNKSt8__format15__formatter_intIcE13_M_format_intINS_10_Sink_iterIcEEEENSt20basic_format_contextIT_cE8iteratorESt17basic_string_viewIcSt11char_traitsIcEEyRS7_
	jmp	.L2641
	.p2align 4,,10
	.p2align 3
.L2718:
	mov	eax, 127
	cmp	rax, rsi
	mov	eax, 0
	sbb	rax, rdi
	jc	.L2640
	lea	rax, 256[rsp]
	mov	r8, rcx
	mov	rdx, r9
	mov	BYTE PTR 256[rsp], sil
	mov	QWORD PTR 104[rsp], rax
	lea	rax, 96[rsp]
	mov	QWORD PTR 96[rsp], 1
	mov	rcx, rax
	call	_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEyRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE.constprop.0
	nop
.L2641:
	vmovups	xmm6, XMMWORD PTR 464[rsp]
	add	rsp, 488
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
.L2719:
	cmp	r10b, 16
	lea	rax, .LC42[rip]
	lea	rbp, .LC41[rip]
	cmovne	rbp, rax
	mov	rax, rsi
	or	rax, rdi
	je	.L2691
	test	rdi, rdi
	jne	.L2721
	bsr	rax, rsi
	mov	r13d, 128
	mov	r8d, 127
	xor	rax, 63
	add	eax, 64
	sub	r13d, eax
	sub	r8d, eax
	je	.L2692
.L2651:
	mov	edx, r8d
	sub	r8d, 1
	lea	rax, 112[rsp+rdx]
	lea	rdx, 111[rsp+rdx]
	sub	rdx, r8
	.p2align 5
	.p2align 4
	.p2align 3
.L2653:
	mov	r8d, esi
	sub	rax, 1
	shrd	rsi, rdi, 1
	and	r8d, 1
	shr	rdi
	add	r8d, 48
	mov	BYTE PTR 4[rax], r8b
	cmp	rdx, rax
	jne	.L2653
.L2652:
	lea	r8, 115[rsp]
	movsx	r13, r13d
	mov	eax, 49
	add	r13, r8
.L2649:
	mov	BYTE PTR 115[rsp], al
	movzx	eax, BYTE PTR [rcx]
	test	al, 16
	je	.L2716
.L2700:
	mov	r11, -2
	mov	edx, 2
.L2654:
	lea	r10, [r8+r11]
	mov	ebx, edx
	test	edx, edx
	je	.L2655
	xor	edx, edx
.L2686:
	mov	r11d, edx
	add	edx, 1
	movzx	esi, BYTE PTR 0[rbp+r11]
	mov	BYTE PTR [r10+r11], sil
	cmp	edx, ebx
	jb	.L2686
	jmp	.L2655
	.p2align 4,,10
	.p2align 3
.L2642:
	mov	rax, rsi
	or	rax, rdi
	je	.L2667
	test	rdi, rdi
	jne	.L2722
	bsr	rax, rsi
	lea	r13d, 3[rax]
	mov	eax, 2863311531
	imul	r13, rax
	mov	eax, 63
	shr	r13, 33
	lea	r8d, -1[r13]
	cmp	rax, rsi
	jnb	.L2671
.L2670:
	mov	r11d, 63
	xor	ebx, ebx
	.p2align 6
	.p2align 4
	.p2align 3
.L2672:
	mov	rax, rsi
	mov	r10d, r8d
	lea	edx, -1[r8]
	sub	r8d, 2
	and	eax, 7
	add	eax, 48
	mov	BYTE PTR 115[rsp+r10], al
	mov	rax, rsi
	shrd	rsi, rdi, 6
	shrd	rax, rdi, 3
	shr	rdi, 6
	and	eax, 7
	cmp	r11, rsi
	lea	eax, 48[rax]
	mov	BYTE PTR 115[rsp+rdx], al
	mov	rax, rbx
	sbb	rax, rdi
	jc	.L2672
.L2671:
	mov	eax, 7
	cmp	rax, rsi
	mov	eax, 0
	sbb	rax, rdi
	jc	.L2723
	add	esi, 48
.L2674:
	mov	BYTE PTR 115[rsp], sil
	lea	r8, 115[rsp]
	mov	r13d, r13d
	mov	r11, -1
	add	r13, r8
	lea	rbp, .LC45[rip]
	mov	edx, 1
.L2675:
	movzx	eax, BYTE PTR [rcx]
	mov	r10, r8
	test	al, 16
	jne	.L2654
	shr	al, 2
	and	eax, 3
	cmp	eax, 1
	jne	.L2688
	.p2align 4
	.p2align 3
.L2720:
	mov	eax, 43
.L2690:
	mov	BYTE PTR -1[r10], al
	sub	r10, 1
	jmp	.L2689
	.p2align 4,,10
	.p2align 3
.L2643:
	cmp	r10b, 40
	je	.L2724
	mov	rax, rsi
	or	rax, rdi
	jne	.L2698
	mov	BYTE PTR 115[rsp], 48
	cmp	r10b, 48
	je	.L2699
	lea	rbp, .LC43[rip]
	lea	r13, 116[rsp]
	lea	r8, 115[rsp]
	jmp	.L2677
	.p2align 4,,10
	.p2align 3
.L2702:
	mov	eax, 32
	jmp	.L2690
	.p2align 4,,10
	.p2align 3
.L2698:
	lea	rbp, .LC43[rip]
.L2676:
	test	rdi, rdi
	jne	.L2725
	bsr	rax, rsi
	lea	rbx, 256[rsp]
	movabs	rdx, 7378413942531504440
	lea	r13d, 4[rax]
	mov	QWORD PTR 264[rsp], rdx
	movabs	rax, 3978425819141910832
	mov	QWORD PTR 256[rsp], rax
	shr	r13d, 2
	mov	eax, 255
	lea	r8d, -1[r13]
	cmp	rax, rsi
	jnb	.L2681
.L2680:
	lea	rbx, 256[rsp]
	mov	r11d, 255
	xor	r12d, r12d
	.p2align 4
	.p2align 3
.L2682:
	mov	rax, rsi
	mov	r14d, r8d
	lea	edx, -1[r8]
	sub	r8d, 2
	and	eax, 15
	add	rax, rbx
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR 115[rsp+r14], al
	mov	rax, rsi
	shrd	rsi, rdi, 8
	shrd	rax, rdi, 4
	shr	rdi, 8
	and	eax, 15
	cmp	r11, rsi
	lea	rax, [rax+rbx]
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR 115[rsp+rdx], al
	mov	rax, r12
	sbb	rax, rdi
	jc	.L2682
.L2681:
	mov	eax, 15
	cmp	rax, rsi
	mov	eax, 0
	sbb	rax, rdi
	jc	.L2726
	add	rbx, rsi
	movzx	eax, BYTE PTR [rbx]
.L2684:
	lea	r8, 115[rsp]
	mov	BYTE PTR 115[rsp], al
	add	r13, r8
	cmp	r10b, 48
	je	.L2678
.L2677:
	movzx	eax, BYTE PTR [rcx]
	test	al, 16
	jne	.L2700
.L2716:
	mov	r10, r8
	jmp	.L2655
	.p2align 4,,10
	.p2align 3
.L2691:
	mov	eax, 48
	lea	r13, 116[rsp]
	lea	r8, 115[rsp]
	jmp	.L2649
	.p2align 4,,10
	.p2align 3
.L2667:
	lea	r8, 115[rsp]
	mov	BYTE PTR 115[rsp], 48
	movzx	eax, BYTE PTR [rcx]
	lea	r13, 116[rsp]
	mov	r10, r8
	jmp	.L2655
	.p2align 4,,10
	.p2align 3
.L2656:
	mov	eax, 9
	cmp	rax, rsi
	mov	eax, 0
	sbb	rax, rdi
	jnc	.L2694
	lea	rax, 80[rsp]
	lea	rdx, 64[rsp]
	mov	rbx, rsi
	xor	r15d, r15d
	mov	QWORD PTR 560[rsp], rcx
	mov	ebp, 99
	mov	r13d, 1
	mov	r12d, 999
	mov	QWORD PTR 48[rsp], rsi
	vmovq	xmm6, rdx
	mov	r14, rax
	mov	QWORD PTR 56[rsp], rdi
	mov	QWORD PTR 576[rsp], r8
	jmp	.L2663
	.p2align 4,,10
	.p2align 3
.L2659:
	cmp	r12, rbx
	mov	rax, r15
	sbb	rax, rdi
	jnc	.L2727
	mov	eax, 9999
	cmp	rax, rbx
	mov	rax, r15
	sbb	rax, rdi
	jnc	.L2728
	vmovq	rdx, xmm6
	mov	rcx, r14
	mov	QWORD PTR 80[rsp], rbx
	add	r13d, 4
	mov	QWORD PTR 88[rsp], rdi
	mov	QWORD PTR 64[rsp], 10000
	mov	QWORD PTR 72[rsp], 0
	call	__udivti3
	mov	eax, 99999
	cmp	rax, rbx
	mov	rax, r15
	vmovdqu	XMMWORD PTR 32[rsp], xmm0
	mov	rcx, QWORD PTR 32[rsp]
	sbb	rax, rdi
	mov	rdx, QWORD PTR 40[rsp]
	jnc	.L2729
	mov	rbx, rcx
	mov	rdi, rdx
.L2663:
	cmp	rbp, rbx
	mov	rax, r15
	sbb	rax, rdi
	jc	.L2659
	mov	rsi, QWORD PTR 48[rsp]
	mov	rcx, QWORD PTR 560[rsp]
	add	r13d, 1
	mov	rdi, QWORD PTR 56[rsp]
	mov	r9, QWORD PTR 576[rsp]
.L2660:
	cmp	r13d, 128
	ja	.L2696
	vmovdqu64	zmm0, ZMMWORD PTR .LC6[rip]
	lea	ebp, -1[r13]
	lea	rbx, 256[rsp]
	movabs	rax, 4122263930388298034
	movabs	rdx, 16106987313379638
	vmovdqu64	ZMMWORD PTR 256[rsp], zmm0
	vmovdqu64	zmm0, ZMMWORD PTR .LC7[rip]
	mov	QWORD PTR 449[rsp], rdx
	vmovdqu64	ZMMWORD PTR 320[rsp], zmm0
	vmovdqu64	zmm0, ZMMWORD PTR .LC8[rip]
	vmovdqu64	ZMMWORD PTR 384[rsp], zmm0
	mov	QWORD PTR 441[rsp], rax
	mov	eax, 99
	cmp	rax, rsi
	mov	eax, 0
	sbb	rax, rdi
	jnc	.L2664
	mov	DWORD PTR 48[rsp], r13d
	vpxor	xmm0, xmm0, xmm0
	movabs	rax, 2951479051793528258
	movabs	r15, 1152921504606846975
	movabs	r8, -8116567392432202711
	vmovq	xmm1, rax
	vmovq	xmm2, rcx
	.p2align 4
	.p2align 3
.L2665:
	mov	rax, rsi
	mov	r10, rsi
	mov	r12, rsi
	xor	r11d, r11d
	shrd	rax, rdi, 60
	and	r10, r15
	mov	r13, rdi
	mov	ecx, 25
	and	rax, r15
	add	r10, rax
	mov	rax, rdi
	shr	rax, 56
	add	r10, rax
	movabs	rax, 5165088340638674453
	mul	r10
	mov	rax, r10
	sub	rax, rdx
	shr	rax
	add	rdx, rax
	shr	rdx, 4
	lea	rax, [rdx+rdx*4]
	lea	rax, [rax+rax*4]
	sub	r10, rax
	vmovq	rax, xmm1
	sub	r12, r10
	sbb	r13, r11
	imul	rax, r12
	mov	r14, r13
	imul	r14, r8
	add	r14, rax
	mov	rax, r12
	mul	r8
	mov	r12, rax
	and	eax, 3
	add	r14, rdx
	mul	rcx
	mov	r13, r14
	mov	r14, rsi
	mov	rsi, r12
	add	rax, r10
	xor	edx, edx
	mov	r10d, ebp
	add	rax, rax
	mov	QWORD PTR 32[rsp], rax
	mov	rax, QWORD PTR 32[rsp]
	adc	rdx, rdx
	shrd	rsi, r13, 2
	mov	QWORD PTR 40[rsp], rdx
	mov	rdx, rdi
	mov	rdi, r13
	lea	r11, [rbx+rax]
	add	rax, rbx
	shr	rdi, 2
	movzx	r11d, BYTE PTR 1[r11]
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR 115[rsp+r10], r11b
	lea	r10d, -1[rbp]
	sub	ebp, 2
	mov	BYTE PTR 115[rsp+r10], al
	mov	eax, 9999
	cmp	rax, r14
	vmovq	rax, xmm0
	sbb	rax, rdx
	jc	.L2665
	mov	eax, 999
	mov	r13d, DWORD PTR 48[rsp]
	vmovq	rcx, xmm2
	cmp	rax, r14
	vmovq	rax, xmm0
	sbb	rax, rdx
	jc	.L2664
	vzeroupper
.L2658:
	add	esi, 48
.L2666:
	lea	r8, 115[rsp]
	mov	BYTE PTR 115[rsp], sil
	add	r13, r8
	jmp	.L2657
	.p2align 4,,10
	.p2align 3
.L2724:
	mov	rax, rsi
	or	rax, rdi
	jne	.L2697
	mov	BYTE PTR 115[rsp], 48
	lea	r13, 116[rsp]
	lea	r8, 115[rsp]
	lea	rbp, .LC44[rip]
	jmp	.L2677
	.p2align 4,,10
	.p2align 3
.L2726:
	mov	rax, rsi
	and	eax, 15
	add	rax, rbx
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR 116[rsp], al
	mov	rax, rsi
	shrd	rax, rdi, 4
	movzx	eax, BYTE PTR [rax+rbx]
	jmp	.L2684
	.p2align 4,,10
	.p2align 3
.L2723:
	mov	rax, rsi
	shrd	rsi, rdi, 3
	and	eax, 7
	add	esi, 48
	add	eax, 48
	mov	BYTE PTR 116[rsp], al
	jmp	.L2674
	.p2align 4,,10
	.p2align 3
.L2697:
	lea	rbp, .LC44[rip]
	jmp	.L2676
	.p2align 4,,10
	.p2align 3
.L2699:
	lea	r13, 116[rsp]
	lea	rbp, .LC43[rip]
	lea	r8, 115[rsp]
.L2678:
	mov	QWORD PTR 560[rsp], rcx
	mov	rbx, r8
	mov	r12, r8
	mov	QWORD PTR 576[rsp], r9
	.p2align 4
	.p2align 3
.L2685:
	movsx	ecx, BYTE PTR [rbx]
	add	rbx, 1
	call	toupper
	mov	BYTE PTR -1[rbx], al
	cmp	rbx, r13
	jne	.L2685
	mov	rcx, QWORD PTR 560[rsp]
	mov	r8, r12
	mov	r9, QWORD PTR 576[rsp]
	mov	r11, -2
	mov	edx, 2
	jmp	.L2675
	.p2align 4,,10
	.p2align 3
.L2725:
	movabs	rdx, 7378413942531504440
	bsr	rax, rdi
	lea	r13d, 68[rax]
	mov	QWORD PTR 264[rsp], rdx
	movabs	rax, 3978425819141910832
	shr	r13d, 2
	mov	QWORD PTR 256[rsp], rax
	lea	r8d, -1[r13]
	jmp	.L2680
	.p2align 4,,10
	.p2align 3
.L2721:
	bsr	rax, rdi
	mov	r13d, 128
	mov	r8d, 127
	xor	rax, 63
	sub	r13d, eax
	sub	r8d, eax
	jmp	.L2651
.L2692:
	mov	r13d, 1
	jmp	.L2652
	.p2align 4,,10
	.p2align 3
.L2664:
	add	rsi, rsi
	lea	rax, [rbx+rsi]
	add	rsi, rbx
	movzx	eax, BYTE PTR 1[rax]
	movzx	esi, BYTE PTR [rsi]
	mov	BYTE PTR 116[rsp], al
	vzeroupper
	jmp	.L2666
	.p2align 4,,10
	.p2align 3
.L2722:
	bsr	rax, rdi
	lea	r13d, 67[rax]
	mov	eax, 2863311531
	imul	r13, rax
	shr	r13, 33
	lea	r8d, -1[r13]
	jmp	.L2670
	.p2align 4,,10
	.p2align 3
.L2727:
	mov	rsi, QWORD PTR 48[rsp]
	mov	rcx, QWORD PTR 560[rsp]
	add	r13d, 2
	mov	rdi, QWORD PTR 56[rsp]
	mov	r9, QWORD PTR 576[rsp]
	jmp	.L2660
	.p2align 4,,10
	.p2align 3
.L2728:
	mov	rsi, QWORD PTR 48[rsp]
	mov	rcx, QWORD PTR 560[rsp]
	add	r13d, 3
	mov	rdi, QWORD PTR 56[rsp]
	mov	r9, QWORD PTR 576[rsp]
	jmp	.L2660
	.p2align 4,,10
	.p2align 3
.L2729:
	mov	rcx, QWORD PTR 560[rsp]
	mov	rsi, QWORD PTR 48[rsp]
	mov	rdi, QWORD PTR 56[rsp]
	mov	r9, QWORD PTR 576[rsp]
	jmp	.L2660
.L2696:
	lea	r13, 243[rsp]
	lea	r8, 115[rsp]
	jmp	.L2657
.L2694:
	mov	r13d, 1
	jmp	.L2658
.L2640:
	lea	rcx, .LC46[rip]
	call	_ZSt20__throw_format_errorPKc
	nop
	.seh_endproc
	.section .rdata,"dr"
.LC47:
	.ascii "basic_string_view::copy\0"
	.align 8
.LC48:
	.ascii "%s: __pos (which is %zu) > __size (which is %zu)\0"
	.text
	.align 2
	.p2align 4
	.def	_ZNKSt8__format14__formatter_fpIcE11_M_localizeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEcRKSt6locale.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZNKSt8__format14__formatter_fpIcE11_M_localizeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEcRKSt6locale.isra.0
_ZNKSt8__format14__formatter_fpIcE11_M_localizeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEcRKSt6locale.isra.0:
.LFB9917:
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
	sub	rsp, 136
	.seh_stackalloc	136
	.seh_endprologue
	mov	rbp, QWORD PTR [rdx]
	mov	r12, QWORD PTR 8[rdx]
	lea	rax, 16[rcx]
	mov	BYTE PTR 16[rcx], 0
	mov	rbx, rcx
	mov	edi, r8d
	mov	QWORD PTR [rcx], rax
	mov	rsi, r9
	mov	QWORD PTR 8[rcx], 0
.LEHB147:
	call	_ZNSt6locale7classicEv
	mov	rdx, rax
	mov	rcx, rsi
	call	_ZNKSt6localeeqERKS_
	test	al, al
	je	.L2777
.L2730:
	mov	rax, rbx
	add	rsp, 136
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
.L2777:
	mov	rcx, QWORD PTR .refptr._ZNSt7__cxx118numpunctIcE2idE[rip]
	call	_ZNKSt6locale2id5_M_idEv
	mov	rdx, rax
	mov	rax, QWORD PTR [rsi]
	mov	rax, QWORD PTR 8[rax]
	mov	r14, QWORD PTR [rax+rdx*8]
	test	r14, r14
	je	.L2732
	mov	rax, QWORD PTR [r14]
	mov	rcx, r14
	call	[QWORD PTR 16[rax]]
	mov	r13d, eax
	lea	rax, 96[rsp]
	mov	rdx, r14
	mov	QWORD PTR 88[rsp], rax
	mov	rcx, rax
	mov	rax, QWORD PTR [r14]
	call	[QWORD PTR 32[rax]]
.LEHE147:
	cmp	QWORD PTR 104[rsp], 0
	jne	.L2757
	cmp	r13b, 46
	jne	.L2757
	mov	rcx, QWORD PTR 96[rsp]
	lea	rax, 112[rsp]
	cmp	rcx, rax
	jne	.L2745
	jmp	.L2730
	.p2align 4,,10
	.p2align 3
.L2757:
	test	rbp, rbp
	je	.L2751
	mov	r8, rbp
	mov	edx, 46
	mov	rcx, r12
	call	memchr
	movsx	edx, dil
	mov	r8, rbp
	mov	rcx, r12
	mov	rsi, rax
	call	memchr
	test	rsi, rsi
	je	.L2737
	sub	rsi, r12
	mov	QWORD PTR 56[rsp], rsi
	test	rax, rax
	je	.L2738
.L2750:
	mov	rdi, QWORD PTR 56[rsp]
	sub	rax, r12
	cmp	rax, rdi
	cmova	rax, rdi
	mov	rsi, rax
.L2738:
	cmp	rsi, -1
	je	.L2736
	mov	r15, rbp
	sub	r15, rsi
.L2739:
	lea	rdx, [r15+rsi*2]
	mov	rcx, rbx
.LEHB148:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy
.LEHE148:
	mov	r9, QWORD PTR 104[rsp]
	mov	rax, QWORD PTR [r14]
	lea	r10, [r12+rsi]
	mov	rcx, r14
	mov	r8, QWORD PTR 96[rsp]
	mov	rdi, QWORD PTR [rbx]
	mov	QWORD PTR 80[rsp], r10
	mov	QWORD PTR 72[rsp], r9
	mov	QWORD PTR 64[rsp], r8
.LEHB149:
	call	[QWORD PTR 24[rax]]
	mov	r10, QWORD PTR 80[rsp]
	mov	QWORD PTR 32[rsp], r12
	mov	rcx, rdi
	movsx	edx, al
	mov	r9, QWORD PTR 72[rsp]
	mov	r8, QWORD PTR 64[rsp]
	mov	QWORD PTR 40[rsp], r10
	call	_ZSt14__add_groupingIcEPT_S1_S0_PKcyPKS0_S5_
	mov	rcx, rax
	test	r15, r15
	je	.L2740
	cmp	QWORD PTR 56[rsp], -1
	je	.L2741
	mov	BYTE PTR [rax], r13b
	add	rcx, 1
	add	rsi, 1
.L2741:
	cmp	r15, 1
	jne	.L2778
.L2740:
	mov	rax, QWORD PTR [rbx]
	sub	rcx, rdi
	mov	QWORD PTR 8[rbx], rcx
	mov	BYTE PTR [rax+rcx], 0
	mov	rcx, QWORD PTR 96[rsp]
	lea	rax, 112[rsp]
	cmp	rcx, rax
	je	.L2730
.L2745:
	mov	rax, QWORD PTR 112[rsp]
	lea	rdx, 1[rax]
	call	_ZdlPvy
	jmp	.L2730
	.p2align 4,,10
	.p2align 3
.L2751:
	mov	QWORD PTR 56[rsp], -1
.L2736:
	mov	rsi, rbp
	xor	r15d, r15d
	jmp	.L2739
	.p2align 4,,10
	.p2align 3
.L2778:
	cmp	rbp, rsi
	jb	.L2779
	sub	rbp, rsi
	jne	.L2780
.L2743:
	add	rcx, rbp
	jmp	.L2740
	.p2align 4,,10
	.p2align 3
.L2780:
	lea	rdx, [r12+rsi]
	mov	r8, rbp
	call	memcpy
	mov	rcx, rax
	jmp	.L2743
	.p2align 4,,10
	.p2align 3
.L2737:
	mov	QWORD PTR 56[rsp], -1
	test	rax, rax
	jne	.L2750
	jmp	.L2736
.L2755:
	mov	rsi, rax
.L2747:
	mov	rcx, QWORD PTR 88[rsp]
	vzeroupper
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	.L2749
.L2779:
	mov	r9, rbp
	mov	r8, rsi
	lea	rdx, .LC47[rip]
	lea	rcx, .LC48[rip]
	call	_ZSt24__throw_out_of_range_fmtPKcz
.LEHE149:
.L2754:
	mov	rsi, rax
	vzeroupper
.L2749:
	mov	rcx, rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	rcx, rsi
.LEHB150:
	call	_Unwind_Resume
.LEHE150:
.L2732:
.LEHB151:
	call	_ZSt16__throw_bad_castv
.LEHE151:
.L2756:
	mov	rdx, QWORD PTR [rbx]
	xor	ecx, ecx
	mov	rsi, rax
	mov	QWORD PTR 8[rbx], rcx
	mov	BYTE PTR [rdx], 0
	jmp	.L2747
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA9917:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9917-.LLSDACSB9917
.LLSDACSB9917:
	.uleb128 .LEHB147-.LFB9917
	.uleb128 .LEHE147-.LEHB147
	.uleb128 .L2754-.LFB9917
	.uleb128 0
	.uleb128 .LEHB148-.LFB9917
	.uleb128 .LEHE148-.LEHB148
	.uleb128 .L2755-.LFB9917
	.uleb128 0
	.uleb128 .LEHB149-.LFB9917
	.uleb128 .LEHE149-.LEHB149
	.uleb128 .L2756-.LFB9917
	.uleb128 0
	.uleb128 .LEHB150-.LFB9917
	.uleb128 .LEHE150-.LEHB150
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB151-.LFB9917
	.uleb128 .LEHE151-.LEHB151
	.uleb128 .L2754-.LFB9917
	.uleb128 0
.LLSDACSE9917:
	.text
	.seh_endproc
	.section .rdata,"dr"
.LC50:
	.ascii "basic_string_view::substr\0"
.LC51:
	.ascii "basic_string::insert\0"
	.align 8
.LC52:
	.ascii "%s: __pos (which is %zu) > this->size() (which is %zu)\0"
	.section	.text$_ZNKSt8__format14__formatter_fpIcE6formatIeNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNKSt8__format14__formatter_fpIcE6formatIeNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
	.def	_ZNKSt8__format14__formatter_fpIcE6formatIeNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt8__format14__formatter_fpIcE6formatIeNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
_ZNKSt8__format14__formatter_fpIcE6formatIeNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_:
.LFB9461:
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
	vmovups	XMMWORD PTR 400[rsp], xmm6
	.seh_savexmm	xmm6, 400
	.seh_endprologue
	fld	TBYTE PTR [rdx]
	movzx	eax, BYTE PTR 1[rcx]
	mov	edx, eax
	lea	r14, 192[rsp]
	fstp	TBYTE PTR 48[rsp]
	mov	r15, rcx
	mov	QWORD PTR 512[rsp], r8
	mov	QWORD PTR 176[rsp], r14
	mov	QWORD PTR 184[rsp], 0
	mov	BYTE PTR 192[rsp], 0
	and	edx, 6
	je	.L2782
	cmp	dl, 2
	je	.L3028
	mov	r13, -1
	cmp	dl, 4
	je	.L3029
.L2784:
	mov	edx, eax
	shr	dl, 3
	and	edx, 15
	cmp	dl, 8
	ja	.L2788
	lea	rcx, .L2809[rip]
	movzx	edx, dl
	movsx	rdx, DWORD PTR [rcx+rdx*4]
	add	rdx, rcx
	jmp	rdx
	.section .rdata,"dr"
	.align 4
.L2809:
	.long	.L2817-.L2809
	.long	.L2816-.L2809
	.long	.L2815-.L2809
	.long	.L2814-.L2809
	.long	.L2813-.L2809
	.long	.L2812-.L2809
	.long	.L2811-.L2809
	.long	.L2810-.L2809
	.long	.L2808-.L2809
	.section	.text$_ZNKSt8__format14__formatter_fpIcE6formatIeNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,"x"
	.linkonce discard
	.p2align 4,,10
	.p2align 3
.L2782:
	mov	edx, eax
	shr	dl, 3
	and	edx, 15
	cmp	dl, 8
	ja	.L2788
	lea	rcx, .L2823[rip]
	movzx	edx, dl
	movsx	rdx, DWORD PTR [rcx+rdx*4]
	add	rdx, rcx
	jmp	rdx
	.section .rdata,"dr"
	.align 4
.L2823:
	.long	.L2828-.L2823
	.long	.L2827-.L2823
	.long	.L2826-.L2823
	.long	.L2923-.L2823
	.long	.L2924-.L2823
	.long	.L2925-.L2823
	.long	.L2926-.L2823
	.long	.L2927-.L2823
	.long	.L2928-.L2823
	.section	.text$_ZNKSt8__format14__formatter_fpIcE6formatIeNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,"x"
	.linkonce discard
	.p2align 4,,10
	.p2align 3
.L2828:
	fld	TBYTE PTR 48[rsp]
	lea	r12, 144[rsp]
	lea	rbp, 128[rsp]
	lea	rbx, 273[rsp]
	mov	r9, rbp
	mov	rcx, r12
	lea	r8, 400[rsp]
	mov	rdx, rbx
	fstp	TBYTE PTR 128[rsp]
	call	_ZSt8to_charsPcS_e
	mov	rdi, QWORD PTR 144[rsp]
	cmp	DWORD PTR 152[rsp], 132
	je	.L3030
	lea	rax, 400[rsp]
	mov	BYTE PTR 72[rsp], 0
	mov	r13d, 6
	mov	BYTE PTR 64[rsp], 101
	mov	QWORD PTR 80[rsp], rax
.L2834:
	fldz
	movzx	r12d, BYTE PTR [r15]
	fld	TBYTE PTR 48[rsp]
	fcomip	st, st(1)
	fstp	st(0)
	jb	.L3024
.L2849:
	mov	eax, r12d
	and	eax, 12
	cmp	al, 4
	je	.L3031
	vpxor	xmm6, xmm6, xmm6
	cmp	al, 12
	je	.L3032
.L2850:
	mov	rsi, rdi
	sub	rsi, rbx
	test	r12b, 16
	je	.L2853
	test	rsi, rsi
	je	.L2852
	mov	r8, rsi
	mov	edx, 46
	mov	rcx, rbx
	call	memchr
	mov	r10, rax
	test	rax, rax
	je	.L2856
	sub	r10, rbx
	cmp	r10, -1
	je	.L2856
	lea	r11, 1[r10]
	cmp	r11, rsi
	jnb	.L3033
	movsx	edx, BYTE PTR 64[rsp]
	mov	r8, rsi
	lea	rcx, [rbx+r11]
	mov	QWORD PTR 88[rsp], r10
	sub	r8, r11
	mov	QWORD PTR 48[rsp], r11
	call	memchr
	mov	r11, QWORD PTR 48[rsp]
	mov	r10, QWORD PTR 88[rsp]
	test	rax, rax
	mov	rbp, rax
	je	.L2945
	sub	rbp, rbx
	cmp	rbp, -1
	cmove	rbp, rsi
.L2861:
	xor	r9d, r9d
	cmp	rbp, r10
	sete	r9b
	cmp	BYTE PTR 72[rsp], 0
	je	.L2947
	vmovq	rax, xmm6
	cmp	BYTE PTR [rbx+rax], 48
	je	.L2862
.L2859:
	mov	rax, rbp
	vmovq	rcx, xmm6
	sub	rax, rcx
	sub	rax, 1
.L2863:
	test	r13, r13
	jne	.L2867
	.p2align 4
	.p2align 3
.L2858:
	test	r9, r9
	je	.L2853
.L2866:
	cmp	QWORD PTR 184[rsp], 0
	jne	.L2868
	mov	rax, QWORD PTR 80[rsp]
	sub	rax, rdi
	cmp	rax, r9
	jnb	.L2869
.L2868:
	lea	rax, 176[rsp]
	lea	rdx, [rsi+r9]
	mov	QWORD PTR 72[rsp], r10
	mov	rcx, rax
	mov	QWORD PTR 48[rsp], r9
	mov	QWORD PTR 80[rsp], rax
.LEHB152:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy
	mov	rax, QWORD PTR 184[rsp]
	mov	r9, QWORD PTR 48[rsp]
	mov	r10, QWORD PTR 72[rsp]
	test	rax, rax
	jne	.L2872
	cmp	rsi, rbp
	mov	rax, rbp
	mov	rcx, QWORD PTR 80[rsp]
	mov	r9, rbx
	cmovbe	rax, rsi
	xor	r8d, r8d
	xor	edx, edx
	mov	QWORD PTR 48[rsp], r10
	mov	QWORD PTR 32[rsp], rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy.isra.0
.LEHE152:
	mov	r10, QWORD PTR 48[rsp]
	cmp	r10, rbp
	je	.L3034
.L2873:
	test	r13, r13
	jne	.L3035
.L2876:
	cmp	rsi, rbp
	jb	.L3036
	mov	rdx, QWORD PTR 184[rsp]
	sub	rsi, rbp
	lea	r9, [rbx+rbp]
	movabs	rax, 9223372036854775807
	sub	rax, rdx
	cmp	rax, rsi
	jb	.L3037
	mov	rax, QWORD PTR 176[rsp]
	lea	rdi, [rsi+rdx]
	cmp	rax, r14
	je	.L2951
	mov	rcx, QWORD PTR 192[rsp]
.L2879:
	cmp	rcx, rdi
	jb	.L2880
	test	rsi, rsi
	je	.L2881
	lea	rcx, [rax+rdx]
	cmp	rsi, 1
	je	.L3038
	mov	r8, rsi
	mov	rdx, r9
	call	memcpy
	mov	rax, QWORD PTR 176[rsp]
.L2881:
	mov	QWORD PTR 184[rsp], rdi
	mov	BYTE PTR [rax+rdi], 0
.L2883:
	mov	rsi, QWORD PTR 184[rsp]
	mov	rbx, QWORD PTR 176[rsp]
	movzx	r12d, BYTE PTR [r15]
	.p2align 4
	.p2align 3
.L2853:
	lea	rbp, 224[rsp]
	and	r12d, 32
	mov	QWORD PTR 216[rsp], 0
	mov	QWORD PTR 208[rsp], rbp
	mov	BYTE PTR 224[rsp], 0
	jne	.L3039
.L2885:
	movzx	eax, WORD PTR [r15]
	and	ax, 384
	cmp	ax, 128
	je	.L3040
	mov	r12, rbx
	cmp	ax, 256
	je	.L2903
.L2906:
	mov	rax, QWORD PTR 512[rsp]
	mov	rdi, QWORD PTR 16[rax]
	test	rsi, rsi
	jne	.L3041
.L2908:
	mov	rcx, QWORD PTR 208[rsp]
	cmp	rcx, rbp
	je	.L2911
	mov	rax, QWORD PTR 224[rsp]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L2911:
	mov	rcx, QWORD PTR 176[rsp]
	cmp	rcx, r14
	je	.L2973
	mov	rax, QWORD PTR 192[rsp]
	lea	rdx, 1[rax]
	call	_ZdlPvy
	nop
.L2973:
	vmovups	xmm6, XMMWORD PTR 400[rsp]
	mov	rax, rdi
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
.L3032:
	mov	BYTE PTR -1[rbx], 32
	movzx	r12d, BYTE PTR [r15]
	sub	rbx, 1
.L3024:
	mov	eax, 1
	vmovq	xmm6, rax
	jmp	.L2850
	.p2align 4,,10
	.p2align 3
.L3039:
	mov	rax, QWORD PTR 512[rsp]
	cmp	BYTE PTR 32[rax], 0
	lea	r12, 24[rax]
	je	.L3042
.L2886:
	lea	rdi, 168[rsp]
	mov	rdx, r12
	lea	r13, 96[rsp]
	mov	rcx, rdi
	lea	r12, 240[rsp]
	call	_ZNSt6localeC1ERKS_
	mov	r9, rdi
	mov	rdx, r13
	mov	rcx, r12
	movzx	r8d, BYTE PTR 64[rsp]
	mov	QWORD PTR 96[rsp], rsi
	mov	QWORD PTR 104[rsp], rbx
.LEHB153:
	call	_ZNKSt8__format14__formatter_fpIcE11_M_localizeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEcRKSt6locale.isra.0
.LEHE153:
	mov	rax, QWORD PTR 208[rsp]
	mov	r9, rax
	cmp	rax, rbp
	je	.L3043
	mov	rdx, QWORD PTR 248[rsp]
	mov	r8, QWORD PTR 240[rsp]
	lea	rcx, 256[rsp]
	mov	r10, rdx
	cmp	r8, rcx
	je	.L2918
	vmovq	xmm1, rdx
	mov	QWORD PTR 208[rsp], r8
	vpinsrq	xmm0, xmm1, QWORD PTR 256[rsp], 1
	mov	rdx, QWORD PTR 224[rsp]
	vmovdqu	XMMWORD PTR 216[rsp], xmm0
	test	rax, rax
	je	.L2890
	mov	QWORD PTR 240[rsp], rax
	mov	QWORD PTR 256[rsp], rdx
.L2899:
	mov	QWORD PTR 248[rsp], 0
	mov	rcx, r12
	mov	BYTE PTR [rax], 0
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	rcx, rdi
	call	_ZNSt6localeD1Ev
	mov	rax, QWORD PTR 216[rsp]
	test	rax, rax
	je	.L2885
	movzx	edx, WORD PTR [r15]
	mov	r12, QWORD PTR 208[rsp]
	and	dx, 384
	cmp	dx, 128
	je	.L3044
	cmp	dx, 256
	je	.L2953
.L3027:
	mov	rbx, QWORD PTR 512[rsp]
	mov	rsi, rax
	mov	rdi, QWORD PTR 16[rbx]
	mov	rbx, r12
.L2902:
	mov	rdx, r13
	mov	rcx, rdi
	mov	QWORD PTR 96[rsp], rsi
	mov	QWORD PTR 104[rsp], rbx
.LEHB154:
	call	_ZNSt8__format5_SinkIcE8_M_writeESt17basic_string_viewIcSt11char_traitsIcEE
	jmp	.L2908
	.p2align 4,,10
	.p2align 3
.L3040:
	movzx	r9d, WORD PTR 4[r15]
	mov	r12, rbx
.L2905:
	cmp	rsi, r9
	jb	.L2901
	mov	rbx, r12
	jmp	.L2906
	.p2align 4,,10
	.p2align 3
.L3044:
	movzx	r9d, WORD PTR 4[r15]
	cmp	rax, r9
	jnb	.L3027
	mov	rsi, rax
	.p2align 4
	.p2align 3
.L2901:
	mov	rax, QWORD PTR 512[rsp]
	mov	edx, DWORD PTR 8[r15]
	sub	r9, rsi
	mov	rcx, QWORD PTR 16[rax]
	movzx	eax, BYTE PTR [r15]
	mov	r8d, eax
	and	r8d, 3
	jne	.L2909
	test	al, 64
	je	.L2954
	movzx	eax, BYTE PTR [rbx]
	lea	rdx, _ZNSt8__detail31__from_chars_alnum_to_val_tableILb0EE5valueE[rip]
	cmp	BYTE PTR [rdx+rax], 15
	jbe	.L2955
	mov	rax, QWORD PTR 24[rcx]
	movzx	edx, BYTE PTR [r12]
	lea	r8, 1[rax]
	mov	QWORD PTR 24[rcx], r8
	mov	BYTE PTR [rax], dl
	mov	rax, QWORD PTR 24[rcx]
	sub	rax, QWORD PTR 8[rcx]
	cmp	rax, QWORD PTR 16[rcx]
	je	.L3045
.L2910:
	add	r12, 1
	sub	rsi, 1
	mov	r8d, 2
	mov	edx, 48
	.p2align 4
	.p2align 3
.L2909:
	mov	DWORD PTR 32[rsp], edx
	lea	rax, 96[rsp]
	mov	rdx, rax
	mov	QWORD PTR 96[rsp], rsi
	mov	QWORD PTR 104[rsp], r12
	call	_ZNSt8__format14__write_paddedINS_10_Sink_iterIcEEcEET_S3_St17basic_string_viewIT0_St11char_traitsIS5_EENS_6_AlignEyDi
	mov	rdi, rax
	jmp	.L2908
	.p2align 4,,10
	.p2align 3
.L3031:
	mov	eax, 1
	mov	BYTE PTR -1[rbx], 43
	sub	rbx, 1
	movzx	r12d, BYTE PTR [r15]
	vmovq	xmm6, rax
	jmp	.L2850
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L3046:
	add	r11, 1
	cmp	r11, rsi
	jnb	.L3025
.L2862:
	cmp	BYTE PTR [rbx+r11], 48
	je	.L3046
.L2860:
	mov	rax, rbp
	sub	rax, r11
	jmp	.L2863
	.p2align 4,,10
	.p2align 3
.L3028:
	movzx	r13d, WORD PTR 6[rcx]
	jmp	.L2784
	.p2align 4,,10
	.p2align 3
.L2856:
	movsx	edx, BYTE PTR 64[rsp]
	mov	r8, rsi
	mov	rcx, rbx
	call	memchr
	mov	rbp, rax
	test	rax, rax
	je	.L2852
	sub	rbp, rbx
	cmp	rbp, -1
	je	.L2852
.L2865:
	cmp	BYTE PTR 72[rsp], 0
	je	.L2948
	test	r13, r13
	je	.L2949
	mov	rax, rbp
	vmovq	rcx, xmm6
	mov	r10, rbp
	mov	r9d, 1
	sub	rax, rcx
.L2867:
	sub	r13, rax
	add	r9, r13
	jmp	.L2858
	.p2align 4,,10
	.p2align 3
.L2816:
	and	eax, 120
	mov	edx, 112
	cmp	al, 16
	mov	eax, 101
	cmovne	eax, edx
	xor	esi, esi
	mov	BYTE PTR 64[rsp], al
.L2818:
	fld	TBYTE PTR 48[rsp]
	mov	DWORD PTR 40[rsp], r13d
	lea	r12, 144[rsp]
	lea	rbp, 128[rsp]
	mov	DWORD PTR 32[rsp], 4
	mov	r9, rbp
	mov	rcx, r12
	lea	rbx, 273[rsp]
	lea	r8, 400[rsp]
	mov	rdx, rbx
	fstp	TBYTE PTR 128[rsp]
	call	_ZSt8to_charsPcS_eSt12chars_formati
	mov	rdi, QWORD PTR 144[rsp]
	cmp	DWORD PTR 152[rsp], 132
	jne	.L3023
	mov	BYTE PTR 72[rsp], 0
	lea	rdi, 8[r13]
	mov	eax, 1
	mov	ebx, 4
	jmp	.L2833
	.p2align 4,,10
	.p2align 3
.L2826:
	and	eax, 120
	mov	edx, 80
	mov	esi, 1
	cmp	al, 16
	mov	eax, 112
	cmove	eax, edx
	mov	BYTE PTR 64[rsp], al
.L2829:
	fld	TBYTE PTR 48[rsp]
	mov	DWORD PTR 32[rsp], 4
	lea	r12, 144[rsp]
	lea	rbp, 128[rsp]
	lea	rbx, 273[rsp]
	mov	r9, rbp
	mov	rcx, r12
	lea	r8, 400[rsp]
	mov	rdx, rbx
	mov	r13d, 6
	fstp	TBYTE PTR 128[rsp]
	call	_ZSt8to_charsPcS_eSt12chars_format
	mov	rdi, QWORD PTR 144[rsp]
	cmp	DWORD PTR 152[rsp], 132
	je	.L2932
.L3023:
	lea	rax, 400[rsp]
	mov	BYTE PTR 72[rsp], 0
	mov	QWORD PTR 80[rsp], rax
.L2832:
	test	sil, sil
	je	.L2834
	mov	rbp, QWORD PTR __imp_toupper[rip]
	mov	rsi, rbx
	cmp	rbx, rdi
	je	.L3047
	.p2align 4
	.p2align 3
.L2851:
	movsx	ecx, BYTE PTR [rsi]
	add	rsi, 1
	call	rbp
	mov	BYTE PTR -1[rsi], al
	cmp	rdi, rsi
	jne	.L2851
	jmp	.L2834
	.p2align 4,,10
	.p2align 3
.L2812:
	mov	eax, r13d
	xor	esi, esi
.L2820:
	mov	BYTE PTR 64[rsp], 101
	mov	ebx, 2
	mov	BYTE PTR 72[rsp], 0
.L2830:
	fld	TBYTE PTR 48[rsp]
	mov	DWORD PTR 40[rsp], eax
	lea	r12, 144[rsp]
	lea	rbp, 128[rsp]
	mov	DWORD PTR 32[rsp], ebx
	mov	r9, rbp
	mov	rcx, r12
	lea	rdx, 273[rsp]
	lea	r8, 400[rsp]
	fstp	TBYTE PTR 128[rsp]
	mov	QWORD PTR 88[rsp], rdx
	call	_ZSt8to_charsPcS_eSt12chars_formati
	mov	rdi, QWORD PTR 144[rsp]
	cmp	DWORD PTR 152[rsp], 132
	je	.L2920
	lea	rax, 400[rsp]
	mov	rbx, QWORD PTR 88[rsp]
	mov	QWORD PTR 80[rsp], rax
	jmp	.L2832
	.p2align 4,,10
	.p2align 3
.L2927:
	mov	BYTE PTR 64[rsp], 101
	mov	eax, 6
	mov	r13d, 6
	xor	esi, esi
.L2819:
	mov	BYTE PTR 72[rsp], 1
	mov	ebx, 3
	jmp	.L2830
	.p2align 4,,10
	.p2align 3
.L2827:
	and	eax, 120
	mov	edx, 101
	cmp	al, 16
	mov	eax, 112
	cmove	eax, edx
	xor	esi, esi
	mov	BYTE PTR 64[rsp], al
	jmp	.L2829
	.p2align 4,,10
	.p2align 3
.L2924:
	mov	eax, 6
	mov	r13d, 6
.L2825:
	mov	BYTE PTR 64[rsp], 69
	mov	esi, 1
.L2821:
	mov	BYTE PTR 72[rsp], 0
	mov	ebx, 1
	jmp	.L2830
	.p2align 4,,10
	.p2align 3
.L2925:
	mov	eax, 6
	mov	r13d, 6
	xor	esi, esi
	jmp	.L2820
	.p2align 4,,10
	.p2align 3
.L2923:
	mov	BYTE PTR 64[rsp], 101
	mov	eax, 6
	mov	r13d, 6
	xor	esi, esi
	jmp	.L2821
	.p2align 4,,10
	.p2align 3
.L2808:
	mov	eax, r13d
.L2822:
	mov	BYTE PTR 64[rsp], 69
	mov	esi, 1
	jmp	.L2819
	.p2align 4,,10
	.p2align 3
.L2817:
	mov	BYTE PTR 64[rsp], 101
	mov	eax, r13d
	mov	ebx, 3
	xor	esi, esi
	mov	BYTE PTR 72[rsp], 0
	jmp	.L2830
	.p2align 4,,10
	.p2align 3
.L2810:
	mov	BYTE PTR 64[rsp], 101
	mov	eax, r13d
	xor	esi, esi
	jmp	.L2819
	.p2align 4,,10
	.p2align 3
.L2811:
	mov	eax, r13d
.L2824:
	mov	esi, 1
	jmp	.L2820
	.p2align 4,,10
	.p2align 3
.L2814:
	mov	BYTE PTR 64[rsp], 101
	mov	eax, r13d
	xor	esi, esi
	jmp	.L2821
	.p2align 4,,10
	.p2align 3
.L2815:
	and	eax, 120
	mov	edx, 80
	mov	esi, 1
	cmp	al, 16
	mov	eax, 112
	cmove	eax, edx
	mov	BYTE PTR 64[rsp], al
	jmp	.L2818
	.p2align 4,,10
	.p2align 3
.L2813:
	mov	eax, r13d
	jmp	.L2825
	.p2align 4,,10
	.p2align 3
.L2928:
	mov	eax, 6
	mov	r13d, 6
	jmp	.L2822
	.p2align 4,,10
	.p2align 3
.L2926:
	mov	eax, 6
	mov	r13d, 6
	jmp	.L2824
	.p2align 4,,10
	.p2align 3
.L3043:
	mov	rdx, QWORD PTR 240[rsp]
	lea	rcx, 256[rsp]
	cmp	rdx, rcx
	je	.L3048
	vmovdqu	xmm0, XMMWORD PTR 248[rsp]
	mov	QWORD PTR 208[rsp], rdx
	vmovdqu	XMMWORD PTR 216[rsp], xmm0
.L2890:
	mov	QWORD PTR 240[rsp], rcx
	lea	rax, 256[rsp]
	jmp	.L2899
	.p2align 4,,10
	.p2align 3
.L3047:
	fldz
	movzx	r12d, BYTE PTR [r15]
	fld	TBYTE PTR 48[rsp]
	fcomip	st, st(1)
	fstp	st(0)
	jnb	.L2849
	xor	esi, esi
	test	r12b, 16
	je	.L2853
	mov	eax, 1
	xor	esi, esi
	vmovq	xmm6, rax
	.p2align 4
	.p2align 3
.L2852:
	mov	rbp, rsi
	jmp	.L2865
	.p2align 4,,10
	.p2align 3
.L2947:
	xor	r13d, r13d
	jmp	.L2858
	.p2align 4,,10
	.p2align 3
.L3041:
	lea	r13, 96[rsp]
	jmp	.L2902
.L2953:
	mov	rsi, rax
	.p2align 4
	.p2align 3
.L2903:
	movzx	ecx, WORD PTR 4[r15]
	mov	rdx, QWORD PTR 512[rsp]
	call	_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEyRT_.part.0.isra.0
.LEHE154:
	mov	r9, rax
	jmp	.L2905
	.p2align 4,,10
	.p2align 3
.L3033:
	xor	r9d, r9d
	cmp	rsi, r10
	mov	rbp, rsi
	sete	r9b
	cmp	BYTE PTR 72[rsp], 0
	je	.L2947
	vmovq	rax, xmm6
	cmp	BYTE PTR [rbx+rax], 48
	jne	.L2859
.L3025:
	mov	r11, -1
	jmp	.L2860
	.p2align 4,,10
	.p2align 3
.L3042:
	mov	rcx, r12
	call	_ZNSt6localeC1Ev
	mov	rax, QWORD PTR 512[rsp]
	mov	BYTE PTR 32[rax], 1
	jmp	.L2886
	.p2align 4,,10
	.p2align 3
.L3029:
	mov	rbx, r8
	movzx	r8d, WORD PTR 6[rcx]
	movzx	edx, BYTE PTR [rbx]
	mov	ecx, edx
	and	edx, 15
	and	ecx, 15
	cmp	r8, rdx
	jnb	.L2785
	mov	rbx, QWORD PTR [rbx]
	lea	rcx, [r8+r8*4]
	sal	r8, 4
	mov	rdx, rbx
	mov	QWORD PTR 64[rsp], rbx
	mov	rbx, QWORD PTR 512[rsp]
	shr	rdx, 4
	add	r8, QWORD PTR 8[rbx]
	shr	rdx, cl
	vmovdqu	xmm2, XMMWORD PTR [r8]
	and	edx, 31
	vmovdqu	XMMWORD PTR 240[rsp], xmm2
.L2786:
	mov	BYTE PTR 256[rsp], dl
	lea	rcx, .L2790[rip]
	movzx	edx, dl
	vmovdqu	ymm0, YMMWORD PTR 240[rsp]
	movsx	rdx, DWORD PTR [rcx+rdx*4]
	vmovdqu	YMMWORD PTR 208[rsp], ymm0
	add	rdx, rcx
	jmp	rdx
	.section .rdata,"dr"
	.align 4
.L2790:
	.long	.L3021-.L2790
	.long	.L2804-.L2790
	.long	.L2803-.L2790
	.long	.L2802-.L2790
	.long	.L2801-.L2790
	.long	.L2800-.L2790
	.long	.L2799-.L2790
	.long	.L2798-.L2790
	.long	.L2797-.L2790
	.long	.L2796-.L2790
	.long	.L2795-.L2790
	.long	.L2794-.L2790
	.long	.L2793-.L2790
	.long	.L2792-.L2790
	.long	.L2791-.L2790
	.long	.L2789-.L2790
	.section	.text$_ZNKSt8__format14__formatter_fpIcE6formatIeNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,"x"
	.linkonce discard
	.p2align 4,,10
	.p2align 3
.L2872:
	cmp	rax, rbp
	jb	.L3049
	mov	rcx, QWORD PTR 80[rsp]
	xor	r8d, r8d
	mov	rdx, rbp
	mov	QWORD PTR 48[rsp], r10
	mov	DWORD PTR 32[rsp], 48
.LEHB155:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEyyyc.isra.0
	mov	r10, QWORD PTR 48[rsp]
	cmp	r10, rbp
	jne	.L2883
	mov	rax, QWORD PTR 176[rsp]
	mov	BYTE PTR [rax+r10], 46
	jmp	.L2883
	.p2align 4,,10
	.p2align 3
.L2948:
	mov	r10, rbp
	mov	r9d, 1
	xor	r13d, r13d
	jmp	.L2866
	.p2align 4,,10
	.p2align 3
.L2954:
	mov	r8d, 2
	mov	edx, 32
	jmp	.L2909
.L3048:
	mov	rdx, QWORD PTR 248[rsp]
	mov	r10, rdx
	.p2align 4
	.p2align 3
.L2918:
	test	rdx, rdx
	je	.L2891
	cmp	rdx, 1
	je	.L3050
	mov	eax, edx
	cmp	edx, 8
	jnb	.L2893
	test	dl, 4
	jne	.L3051
	test	edx, edx
	je	.L2894
	movzx	r8d, BYTE PTR 256[rsp]
	and	edx, 2
	mov	BYTE PTR [r9], r8b
	jne	.L3013
.L3026:
	mov	r9, QWORD PTR 208[rsp]
	mov	rdx, QWORD PTR 248[rsp]
.L2894:
	mov	r10, rdx
	mov	rax, r9
.L2891:
	mov	QWORD PTR 216[rsp], r10
	mov	BYTE PTR [rax+r10], 0
	mov	rax, QWORD PTR 240[rsp]
	jmp	.L2899
	.p2align 4,,10
	.p2align 3
.L2869:
	lea	rcx, [r9+rbp]
	lea	rdi, [rbx+rbp]
	mov	r8, rsi
	mov	QWORD PTR 72[rsp], r10
	add	rcx, rbx
	sub	r8, rbp
	mov	rdx, rdi
	mov	QWORD PTR 48[rsp], r9
	call	memmove
	mov	r10, QWORD PTR 72[rsp]
	mov	r9, QWORD PTR 48[rsp]
	cmp	r10, rbp
	je	.L3052
.L2871:
	mov	r8, r13
	mov	edx, 48
	mov	rcx, rdi
	mov	QWORD PTR 48[rsp], r9
	call	memset
	mov	r9, QWORD PTR 48[rsp]
	movzx	r12d, BYTE PTR [r15]
	add	rsi, r9
	jmp	.L2853
	.p2align 4,,10
	.p2align 3
.L2785:
	test	cl, cl
	jne	.L2787
	mov	rbx, QWORD PTR [rbx]
	mov	rdx, rbx
	mov	QWORD PTR 64[rsp], rbx
	shr	rdx, 4
	cmp	r8, rdx
	jb	.L3053
.L2787:
	lea	rax, 176[rsp]
	mov	QWORD PTR 80[rsp], rax
	call	_ZNSt8__format33__invalid_arg_id_in_format_stringEv
	.p2align 4,,10
	.p2align 3
.L2949:
	mov	r10, rbp
	mov	r9d, 1
	jmp	.L2866
.L2945:
	mov	rbp, rsi
	jmp	.L2861
.L2955:
	mov	r8d, 2
	mov	edx, 48
	jmp	.L2909
.L3052:
	mov	BYTE PTR [rdi], 46
	lea	rdi, 1[rbx+r10]
	jmp	.L2871
.L2799:
	mov	r13, QWORD PTR 208[rsp]
	vzeroupper
	jmp	.L2784
.L2800:
	mov	r13, QWORD PTR 208[rsp]
	test	r13, r13
	js	.L3054
.L3022:
	vzeroupper
	jmp	.L2784
.L2801:
	mov	r13d, DWORD PTR 208[rsp]
	vzeroupper
	jmp	.L2784
.L2802:
	movsx	r13, DWORD PTR 208[rsp]
	test	r13d, r13d
	jns	.L3022
	lea	rax, 176[rsp]
	lea	rcx, .LC3[rip]
	mov	QWORD PTR 80[rsp], rax
	vzeroupper
	call	_ZSt20__throw_format_errorPKc
	.p2align 4,,10
	.p2align 3
.L3021:
	vzeroupper
	jmp	.L2787
.L3030:
	lea	rax, 176[rsp]
	mov	edx, 256
	mov	rcx, rax
	mov	QWORD PTR 80[rsp], rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy
	mov	rdx, QWORD PTR 176[rsp]
.L2835:
	cmp	rdx, r14
	je	.L2935
	mov	rax, QWORD PTR 192[rsp]
	lea	rbx, [rax+rax]
.L2840:
	mov	rcx, QWORD PTR 80[rsp]
	mov	rdx, rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy
	mov	r10, QWORD PTR 176[rsp]
	fld	TBYTE PTR 48[rsp]
	mov	rcx, r12
	mov	r9, rbp
	lea	rdx, 1[r10]
	lea	r8, -1[r10+rbx]
	mov	QWORD PTR 64[rsp], r10
	fstp	TBYTE PTR 128[rsp]
	call	_ZSt8to_charsPcS_e
	mov	rcx, QWORD PTR 152[rsp]
	mov	r10, QWORD PTR 64[rsp]
	mov	rax, QWORD PTR 144[rsp]
	test	ecx, ecx
	mov	rdi, rax
	je	.L2936
	mov	rax, QWORD PTR 176[rsp]
	mov	QWORD PTR 184[rsp], 0
	mov	BYTE PTR [rax], 0
	mov	rdx, QWORD PTR 176[rsp]
	cmp	ecx, 132
	je	.L2835
	mov	BYTE PTR 72[rsp], 0
	mov	r13d, 6
	xor	esi, esi
	mov	BYTE PTR 64[rsp], 101
.L2842:
	lea	rbx, 1[rdx]
	add	rdx, QWORD PTR 184[rsp]
	mov	QWORD PTR 80[rsp], rdx
	jmp	.L2832
.L2932:
	mov	BYTE PTR 72[rsp], 0
	xor	eax, eax
	mov	ebx, 4
.L2837:
	mov	BYTE PTR 88[rsp], al
	lea	rax, 176[rsp]
	mov	edx, 256
	mov	rcx, rax
	mov	QWORD PTR 80[rsp], rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy
	movzx	eax, BYTE PTR 88[rsp]
	mov	rdx, QWORD PTR 176[rsp]
	test	al, al
	jne	.L2847
.L2844:
	cmp	rdx, r14
	je	.L2937
	mov	rax, QWORD PTR 192[rsp]
	lea	rdi, [rax+rax]
.L2843:
	mov	rcx, QWORD PTR 80[rsp]
	mov	rdx, rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy
	fld	TBYTE PTR 48[rsp]
	mov	DWORD PTR 32[rsp], ebx
	mov	rcx, r12
	mov	r9, rbp
	mov	r10, QWORD PTR 176[rsp]
	lea	r8, -1[r10+rdi]
	lea	rdx, 1[r10]
	mov	QWORD PTR 88[rsp], r10
	fstp	TBYTE PTR 128[rsp]
	call	_ZSt8to_charsPcS_eSt12chars_format
	mov	rcx, QWORD PTR 152[rsp]
	mov	r10, QWORD PTR 88[rsp]
	mov	rax, QWORD PTR 144[rsp]
	test	ecx, ecx
	mov	rdi, rax
	je	.L2841
	mov	rax, QWORD PTR 176[rsp]
	mov	QWORD PTR 184[rsp], 0
	mov	BYTE PTR [rax], 0
	mov	rdx, QWORD PTR 176[rsp]
	cmp	ecx, 132
	jne	.L2842
	jmp	.L2844
.L2920:
	lea	rdi, 8[r13]
	mov	eax, 1
	cmp	ebx, 2
	je	.L3055
.L2833:
	cmp	rdi, 128
	jbe	.L2837
	lea	rax, 176[rsp]
	mov	rdx, rdi
	mov	rcx, rax
	mov	QWORD PTR 80[rsp], rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy
	mov	rdx, QWORD PTR 176[rsp]
.L2847:
	cmp	rdx, r14
	je	.L2938
	mov	rax, QWORD PTR 192[rsp]
	lea	rdi, [rax+rax]
.L2845:
	mov	rcx, QWORD PTR 80[rsp]
	mov	rdx, rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy
	fld	TBYTE PTR 48[rsp]
	mov	DWORD PTR 40[rsp], r13d
	mov	rcx, r12
	mov	r9, rbp
	mov	r10, QWORD PTR 176[rsp]
	mov	DWORD PTR 32[rsp], ebx
	lea	r8, -1[r10+rdi]
	lea	rdx, 1[r10]
	mov	QWORD PTR 88[rsp], r10
	fstp	TBYTE PTR 128[rsp]
	call	_ZSt8to_charsPcS_eSt12chars_formati
	mov	rax, QWORD PTR 144[rsp]
	mov	rcx, QWORD PTR 152[rsp]
	mov	rdi, rax
	test	ecx, ecx
	jne	.L2846
	mov	r10, QWORD PTR 88[rsp]
.L2841:
	mov	rdx, QWORD PTR 176[rsp]
	sub	rax, r10
	mov	QWORD PTR 184[rsp], rax
	mov	BYTE PTR [rdx+rax], 0
	mov	rax, QWORD PTR 176[rsp]
	lea	rbx, 1[rax]
	add	rax, QWORD PTR 184[rsp]
	mov	QWORD PTR 80[rsp], rax
	jmp	.L2832
.L2880:
	mov	QWORD PTR 32[rsp], rsi
	mov	rcx, QWORD PTR 80[rsp]
	xor	r8d, r8d
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEyyPKcy
	mov	rax, QWORD PTR 176[rsp]
	jmp	.L2881
.L3035:
	mov	DWORD PTR 32[rsp], 48
	mov	rcx, QWORD PTR 80[rsp]
	mov	r9, r13
	xor	r8d, r8d
	mov	rdx, QWORD PTR 184[rsp]
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEyyyc.isra.0
	jmp	.L2876
.L3055:
	fld	TBYTE PTR 48[rsp]
	lea	rdx, 112[rsp]
	lea	r8, 240[rsp]
	mov	rcx, rbp
	mov	DWORD PTR 240[rsp], 0
	fstp	TBYTE PTR 112[rsp]
	call	frexpl
	mov	eax, DWORD PTR 240[rsp]
	test	eax, eax
	jle	.L2836
	imul	edx, eax, 4004
	mov	rax, rdx
	imul	rdx, rdx, 995517945
	shr	rdx, 32
	sub	eax, edx
	shr	eax
	add	eax, edx
	shr	eax, 13
	add	eax, 1
	add	rdi, rax
.L2836:
	mov	eax, 1
	jmp	.L2833
.L3034:
	mov	rdi, QWORD PTR 184[rsp]
	mov	rax, QWORD PTR 176[rsp]
	lea	r12, 1[rdi]
	cmp	rax, r14
	je	.L2950
	mov	rdx, QWORD PTR 192[rsp]
.L2874:
	cmp	rdx, r12
	jb	.L3056
.L2875:
	mov	BYTE PTR [rax+rdi], 46
	mov	rax, QWORD PTR 176[rsp]
	mov	QWORD PTR 184[rsp], r12
	mov	BYTE PTR 1[rax+rdi], 0
	jmp	.L2873
.L2936:
	mov	BYTE PTR 72[rsp], 0
	mov	r13d, 6
	xor	esi, esi
	mov	BYTE PTR 64[rsp], 101
	jmp	.L2841
.L2846:
	mov	rax, QWORD PTR 176[rsp]
	mov	QWORD PTR 184[rsp], 0
	mov	BYTE PTR [rax], 0
	mov	rdx, QWORD PTR 176[rsp]
	cmp	ecx, 132
	jne	.L2842
	jmp	.L2847
.L2951:
	mov	ecx, 15
	jmp	.L2879
.L3053:
	mov	rbx, QWORD PTR 512[rsp]
	sal	r8, 5
	add	r8, QWORD PTR 8[rbx]
	vmovdqu	xmm3, XMMWORD PTR [r8]
	vmovdqu	XMMWORD PTR 240[rsp], xmm3
	movzx	edx, BYTE PTR 16[r8]
	mov	BYTE PTR 256[rsp], dl
	movzx	edx, BYTE PTR 16[r8]
	jmp	.L2786
.L3038:
	movzx	eax, BYTE PTR [r9]
	mov	BYTE PTR [rcx], al
	mov	rax, QWORD PTR 176[rsp]
	jmp	.L2881
.L2893:
	mov	rax, QWORD PTR 256[rsp]
	mov	QWORD PTR [r9], rax
	mov	eax, edx
	mov	r8, QWORD PTR -8[rcx+rax]
	mov	QWORD PTR -8[r9+rax], r8
	lea	r8, 8[r9]
	mov	rax, r9
	and	r8, -8
	sub	rax, r8
	sub	rcx, rax
	add	eax, edx
	and	eax, -8
	cmp	eax, 8
	jb	.L3026
	and	eax, -8
	xor	edx, edx
.L2897:
	mov	r9d, edx
	add	edx, 8
	mov	r10, QWORD PTR [rcx+r9]
	mov	QWORD PTR [r8+r9], r10
	cmp	edx, eax
	jb	.L2897
	jmp	.L3026
.L3050:
	movzx	eax, BYTE PTR 256[rsp]
	mov	BYTE PTR [r9], al
	mov	r10, QWORD PTR 248[rsp]
	mov	rax, QWORD PTR 208[rsp]
	jmp	.L2891
.L2937:
	mov	edi, 30
	jmp	.L2843
.L2935:
	mov	ebx, 30
	jmp	.L2840
.L2938:
	mov	edi, 30
	jmp	.L2845
.L3056:
	mov	rcx, QWORD PTR 80[rsp]
	xor	r9d, r9d
	xor	r8d, r8d
	mov	rdx, rdi
	mov	QWORD PTR 32[rsp], 1
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEyyPKcy
.LEHE155:
	mov	rax, QWORD PTR 176[rsp]
	jmp	.L2875
.L3045:
	mov	rax, QWORD PTR [rcx]
	mov	QWORD PTR 64[rsp], r9
	mov	QWORD PTR 48[rsp], rcx
.LEHB156:
	call	[QWORD PTR [rax]]
.LEHE156:
	mov	r9, QWORD PTR 64[rsp]
	mov	rcx, QWORD PTR 48[rsp]
	jmp	.L2910
.L2950:
	mov	edx, 15
	jmp	.L2874
.L3051:
	mov	edx, DWORD PTR 256[rsp]
	mov	DWORD PTR [r9], edx
	mov	edx, DWORD PTR -4[rcx+rax]
	mov	DWORD PTR -4[r9+rax], edx
	mov	r9, QWORD PTR 208[rsp]
	mov	rdx, QWORD PTR 248[rsp]
	jmp	.L2894
.L3013:
	movzx	edx, WORD PTR -2[rcx+rax]
	mov	WORD PTR -2[r9+rax], dx
	mov	r9, QWORD PTR 208[rsp]
	mov	rdx, QWORD PTR 248[rsp]
	jmp	.L2894
.L2956:
	mov	rbx, rax
	vzeroupper
.L2915:
	mov	rcx, QWORD PTR 80[rsp]
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	rcx, rbx
.LEHB157:
	call	_Unwind_Resume
.LEHE157:
.L2803:
	lea	rax, 176[rsp]
	lea	rcx, .LC3[rip]
	mov	QWORD PTR 80[rsp], rax
	vzeroupper
.LEHB158:
	call	_ZSt20__throw_format_errorPKc
.L2788:
.L2957:
	mov	rcx, rdi
	mov	rbx, rax
	vzeroupper
	call	_ZNSt6localeD1Ev
.L2914:
	lea	rcx, 208[rsp]
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	lea	rax, 176[rsp]
	mov	QWORD PTR 80[rsp], rax
	jmp	.L2915
.L3037:
	lea	rcx, .LC16[rip]
	call	_ZSt20__throw_length_errorPKc
.L2789:
	lea	rax, 176[rsp]
	lea	rcx, .LC3[rip]
	mov	QWORD PTR 80[rsp], rax
	vzeroupper
	call	_ZSt20__throw_format_errorPKc
.L3036:
	mov	r9, rsi
	mov	r8, rbp
	lea	rdx, .LC50[rip]
	lea	rcx, .LC48[rip]
	call	_ZSt24__throw_out_of_range_fmtPKcz
.L2958:
	mov	rbx, rax
	vzeroupper
	jmp	.L2914
.L2794:
	lea	rax, 176[rsp]
	lea	rcx, .LC3[rip]
	mov	QWORD PTR 80[rsp], rax
	vzeroupper
	call	_ZSt20__throw_format_errorPKc
.L2795:
	lea	rax, 176[rsp]
	lea	rcx, .LC3[rip]
	mov	QWORD PTR 80[rsp], rax
	vzeroupper
	call	_ZSt20__throw_format_errorPKc
.L2796:
	lea	rax, 176[rsp]
	lea	rcx, .LC3[rip]
	mov	QWORD PTR 80[rsp], rax
	vzeroupper
	call	_ZSt20__throw_format_errorPKc
.L2797:
	lea	rax, 176[rsp]
	lea	rcx, .LC3[rip]
	mov	QWORD PTR 80[rsp], rax
	vzeroupper
	call	_ZSt20__throw_format_errorPKc
.L3049:
	mov	r9, rax
	mov	r8, rbp
	lea	rdx, .LC51[rip]
	lea	rcx, .LC52[rip]
	call	_ZSt24__throw_out_of_range_fmtPKcz
.L2791:
	lea	rax, 176[rsp]
	lea	rcx, .LC3[rip]
	mov	QWORD PTR 80[rsp], rax
	vzeroupper
	call	_ZSt20__throw_format_errorPKc
.L2792:
	lea	rax, 176[rsp]
	lea	rcx, .LC3[rip]
	mov	QWORD PTR 80[rsp], rax
	vzeroupper
	call	_ZSt20__throw_format_errorPKc
.L2793:
	lea	rax, 176[rsp]
	lea	rcx, .LC3[rip]
	mov	QWORD PTR 80[rsp], rax
	vzeroupper
	call	_ZSt20__throw_format_errorPKc
.L2798:
	lea	rax, 176[rsp]
	lea	rcx, .LC3[rip]
	mov	QWORD PTR 80[rsp], rax
	vzeroupper
	call	_ZSt20__throw_format_errorPKc
.L3054:
	lea	rax, 176[rsp]
	lea	rcx, .LC3[rip]
	mov	QWORD PTR 80[rsp], rax
	vzeroupper
	call	_ZSt20__throw_format_errorPKc
.L2804:
	lea	rax, 176[rsp]
	lea	rcx, .LC3[rip]
	mov	QWORD PTR 80[rsp], rax
	vzeroupper
	call	_ZSt20__throw_format_errorPKc
	nop
.LEHE158:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA9461:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9461-.LLSDACSB9461
.LLSDACSB9461:
	.uleb128 .LEHB152-.LFB9461
	.uleb128 .LEHE152-.LEHB152
	.uleb128 .L2956-.LFB9461
	.uleb128 0
	.uleb128 .LEHB153-.LFB9461
	.uleb128 .LEHE153-.LEHB153
	.uleb128 .L2957-.LFB9461
	.uleb128 0
	.uleb128 .LEHB154-.LFB9461
	.uleb128 .LEHE154-.LEHB154
	.uleb128 .L2958-.LFB9461
	.uleb128 0
	.uleb128 .LEHB155-.LFB9461
	.uleb128 .LEHE155-.LEHB155
	.uleb128 .L2956-.LFB9461
	.uleb128 0
	.uleb128 .LEHB156-.LFB9461
	.uleb128 .LEHE156-.LEHB156
	.uleb128 .L2958-.LFB9461
	.uleb128 0
	.uleb128 .LEHB157-.LFB9461
	.uleb128 .LEHE157-.LEHB157
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB158-.LFB9461
	.uleb128 .LEHE158-.LEHB158
	.uleb128 .L2956-.LFB9461
	.uleb128 0
.LLSDACSE9461:
	.section	.text$_ZNKSt8__format14__formatter_fpIcE6formatIeNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNKSt8__format14__formatter_fpIcE6formatIdNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNKSt8__format14__formatter_fpIcE6formatIdNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
	.def	_ZNKSt8__format14__formatter_fpIcE6formatIdNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt8__format14__formatter_fpIcE6formatIdNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
_ZNKSt8__format14__formatter_fpIcE6formatIdNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_:
.LFB9458:
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
	sub	rsp, 392
	.seh_stackalloc	392
	vmovups	XMMWORD PTR 368[rsp], xmm6
	.seh_savexmm	xmm6, 368
	.seh_endprologue
	movzx	eax, BYTE PTR 1[rcx]
	mov	edx, eax
	lea	r14, 160[rsp]
	mov	QWORD PTR 480[rsp], r8
	mov	r15, rcx
	vmovsd	xmm6, xmm1, xmm1
	mov	QWORD PTR 144[rsp], r14
	mov	QWORD PTR 152[rsp], 0
	mov	BYTE PTR 160[rsp], 0
	and	edx, 6
	je	.L3058
	cmp	dl, 2
	je	.L3304
	mov	r13, -1
	cmp	dl, 4
	je	.L3305
.L3060:
	mov	edx, eax
	shr	dl, 3
	and	edx, 15
	cmp	dl, 8
	ja	.L3064
	lea	rcx, .L3085[rip]
	movzx	edx, dl
	movsx	rdx, DWORD PTR [rcx+rdx*4]
	add	rdx, rcx
	jmp	rdx
	.section .rdata,"dr"
	.align 4
.L3085:
	.long	.L3093-.L3085
	.long	.L3092-.L3085
	.long	.L3091-.L3085
	.long	.L3090-.L3085
	.long	.L3089-.L3085
	.long	.L3088-.L3085
	.long	.L3087-.L3085
	.long	.L3086-.L3085
	.long	.L3084-.L3085
	.section	.text$_ZNKSt8__format14__formatter_fpIcE6formatIdNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,"x"
	.linkonce discard
	.p2align 4,,10
	.p2align 3
.L3058:
	mov	edx, eax
	shr	dl, 3
	and	edx, 15
	cmp	dl, 8
	ja	.L3064
	lea	rcx, .L3099[rip]
	movzx	edx, dl
	movsx	rdx, DWORD PTR [rcx+rdx*4]
	add	rdx, rcx
	jmp	rdx
	.section .rdata,"dr"
	.align 4
.L3099:
	.long	.L3104-.L3099
	.long	.L3103-.L3099
	.long	.L3102-.L3099
	.long	.L3199-.L3099
	.long	.L3200-.L3099
	.long	.L3201-.L3099
	.long	.L3202-.L3099
	.long	.L3203-.L3099
	.long	.L3204-.L3099
	.section	.text$_ZNKSt8__format14__formatter_fpIcE6formatIdNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,"x"
	.linkonce discard
	.p2align 4,,10
	.p2align 3
.L3104:
	lea	rbp, 112[rsp]
	lea	rbx, 241[rsp]
	vmovsd	xmm3, xmm1, xmm1
	lea	r8, 368[rsp]
	mov	rdx, rbx
	mov	rcx, rbp
	call	_ZSt8to_charsPcS_d
	cmp	DWORD PTR 120[rsp], 132
	mov	rdi, QWORD PTR 112[rsp]
	je	.L3306
	lea	rax, 368[rsp]
	mov	BYTE PTR 64[rsp], 0
	mov	r13d, 6
	mov	BYTE PTR 56[rsp], 101
	mov	QWORD PTR 72[rsp], rax
.L3110:
	vxorpd	xmm0, xmm0, xmm0
	movzx	r12d, BYTE PTR [r15]
	vcomisd	xmm6, xmm0
	jb	.L3300
.L3125:
	mov	eax, r12d
	and	eax, 12
	cmp	al, 4
	je	.L3307
	vpxor	xmm6, xmm6, xmm6
	cmp	al, 12
	je	.L3308
.L3126:
	mov	rsi, rdi
	sub	rsi, rbx
	test	r12b, 16
	je	.L3129
	test	rsi, rsi
	je	.L3128
	mov	r8, rsi
	mov	edx, 46
	mov	rcx, rbx
	call	memchr
	mov	r10, rax
	test	rax, rax
	je	.L3132
	sub	r10, rbx
	cmp	r10, -1
	je	.L3132
	lea	r11, 1[r10]
	cmp	r11, rsi
	jnb	.L3309
	movsx	edx, BYTE PTR 56[rsp]
	mov	r8, rsi
	lea	rcx, [rbx+r11]
	mov	QWORD PTR 88[rsp], r10
	sub	r8, r11
	mov	QWORD PTR 80[rsp], r11
	call	memchr
	mov	r11, QWORD PTR 80[rsp]
	mov	r10, QWORD PTR 88[rsp]
	test	rax, rax
	mov	rbp, rax
	je	.L3221
	sub	rbp, rbx
	cmp	rbp, -1
	cmove	rbp, rsi
.L3137:
	xor	r9d, r9d
	cmp	rbp, r10
	sete	r9b
	cmp	BYTE PTR 64[rsp], 0
	je	.L3223
	vmovq	rax, xmm6
	cmp	BYTE PTR [rbx+rax], 48
	je	.L3138
.L3135:
	mov	rax, rbp
	vmovq	rcx, xmm6
	sub	rax, rcx
	sub	rax, 1
.L3139:
	test	r13, r13
	jne	.L3143
	.p2align 4
	.p2align 3
.L3134:
	test	r9, r9
	je	.L3129
.L3142:
	cmp	QWORD PTR 152[rsp], 0
	jne	.L3144
	mov	rax, QWORD PTR 72[rsp]
	sub	rax, rdi
	cmp	rax, r9
	jnb	.L3145
.L3144:
	lea	r12, 144[rsp]
	lea	rdx, [rsi+r9]
	mov	QWORD PTR 72[rsp], r10
	mov	rcx, r12
	mov	QWORD PTR 64[rsp], r9
.LEHB159:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy
	mov	rax, QWORD PTR 152[rsp]
	mov	r9, QWORD PTR 64[rsp]
	mov	r10, QWORD PTR 72[rsp]
	test	rax, rax
	jne	.L3148
	cmp	rsi, rbp
	mov	rax, rbp
	mov	r9, rbx
	mov	rcx, r12
	cmovbe	rax, rsi
	xor	r8d, r8d
	xor	edx, edx
	mov	QWORD PTR 64[rsp], r10
	mov	QWORD PTR 32[rsp], rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy.isra.0
.LEHE159:
	mov	r10, QWORD PTR 64[rsp]
	cmp	r10, rbp
	je	.L3310
.L3149:
	test	r13, r13
	jne	.L3311
.L3152:
	cmp	rsi, rbp
	jb	.L3312
	mov	rdx, QWORD PTR 152[rsp]
	sub	rsi, rbp
	lea	r9, [rbx+rbp]
	movabs	rax, 9223372036854775807
	sub	rax, rdx
	cmp	rax, rsi
	jb	.L3313
	mov	rax, QWORD PTR 144[rsp]
	lea	rdi, [rsi+rdx]
	cmp	rax, r14
	je	.L3227
	mov	rcx, QWORD PTR 160[rsp]
.L3155:
	cmp	rcx, rdi
	jb	.L3156
	test	rsi, rsi
	je	.L3157
	lea	rcx, [rax+rdx]
	cmp	rsi, 1
	je	.L3314
	mov	r8, rsi
	mov	rdx, r9
	call	memcpy
	mov	rax, QWORD PTR 144[rsp]
.L3157:
	mov	QWORD PTR 152[rsp], rdi
	mov	BYTE PTR [rax+rdi], 0
.L3159:
	mov	rsi, QWORD PTR 152[rsp]
	mov	rbx, QWORD PTR 144[rsp]
	movzx	r12d, BYTE PTR [r15]
	.p2align 4
	.p2align 3
.L3129:
	lea	rbp, 192[rsp]
	and	r12d, 32
	mov	QWORD PTR 184[rsp], 0
	mov	QWORD PTR 176[rsp], rbp
	mov	BYTE PTR 192[rsp], 0
	jne	.L3315
.L3161:
	movzx	eax, WORD PTR [r15]
	and	ax, 384
	cmp	ax, 128
	je	.L3316
	mov	r12, rbx
	cmp	ax, 256
	je	.L3179
.L3182:
	mov	rax, QWORD PTR 480[rsp]
	mov	rdi, QWORD PTR 16[rax]
	test	rsi, rsi
	jne	.L3317
.L3184:
	mov	rcx, QWORD PTR 176[rsp]
	cmp	rcx, rbp
	je	.L3187
	mov	rax, QWORD PTR 192[rsp]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L3187:
	mov	rcx, QWORD PTR 144[rsp]
	cmp	rcx, r14
	je	.L3249
	mov	rax, QWORD PTR 160[rsp]
	lea	rdx, 1[rax]
	call	_ZdlPvy
	nop
.L3249:
	vmovups	xmm6, XMMWORD PTR 368[rsp]
	mov	rax, rdi
	add	rsp, 392
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
.L3308:
	mov	BYTE PTR -1[rbx], 32
	movzx	r12d, BYTE PTR [r15]
	sub	rbx, 1
.L3300:
	mov	eax, 1
	vmovq	xmm6, rax
	jmp	.L3126
	.p2align 4,,10
	.p2align 3
.L3315:
	mov	rax, QWORD PTR 480[rsp]
	cmp	BYTE PTR 32[rax], 0
	lea	r12, 24[rax]
	je	.L3318
.L3162:
	lea	rdi, 136[rsp]
	mov	rdx, r12
	lea	r13, 96[rsp]
	mov	rcx, rdi
	lea	r12, 208[rsp]
	call	_ZNSt6localeC1ERKS_
	mov	r9, rdi
	mov	rdx, r13
	mov	rcx, r12
	movzx	r8d, BYTE PTR 56[rsp]
	mov	QWORD PTR 96[rsp], rsi
	mov	QWORD PTR 104[rsp], rbx
.LEHB160:
	call	_ZNKSt8__format14__formatter_fpIcE11_M_localizeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEcRKSt6locale.isra.0
.LEHE160:
	mov	rax, QWORD PTR 176[rsp]
	mov	r9, rax
	cmp	rax, rbp
	je	.L3319
	mov	rdx, QWORD PTR 216[rsp]
	mov	r8, QWORD PTR 208[rsp]
	lea	rcx, 224[rsp]
	mov	r10, rdx
	cmp	r8, rcx
	je	.L3194
	vmovq	xmm2, rdx
	mov	QWORD PTR 176[rsp], r8
	vpinsrq	xmm0, xmm2, QWORD PTR 224[rsp], 1
	mov	rdx, QWORD PTR 192[rsp]
	vmovdqu	XMMWORD PTR 184[rsp], xmm0
	test	rax, rax
	je	.L3166
	mov	QWORD PTR 208[rsp], rax
	mov	QWORD PTR 224[rsp], rdx
.L3175:
	mov	QWORD PTR 216[rsp], 0
	mov	rcx, r12
	mov	BYTE PTR [rax], 0
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	rcx, rdi
	call	_ZNSt6localeD1Ev
	mov	rax, QWORD PTR 184[rsp]
	test	rax, rax
	je	.L3161
	movzx	edx, WORD PTR [r15]
	mov	r12, QWORD PTR 176[rsp]
	and	dx, 384
	cmp	dx, 128
	je	.L3320
	cmp	dx, 256
	je	.L3229
.L3303:
	mov	rbx, QWORD PTR 480[rsp]
	mov	rsi, rax
	mov	rdi, QWORD PTR 16[rbx]
	mov	rbx, r12
.L3178:
	mov	rdx, r13
	mov	rcx, rdi
	mov	QWORD PTR 96[rsp], rsi
	mov	QWORD PTR 104[rsp], rbx
.LEHB161:
	call	_ZNSt8__format5_SinkIcE8_M_writeESt17basic_string_viewIcSt11char_traitsIcEE
	jmp	.L3184
	.p2align 4,,10
	.p2align 3
.L3316:
	movzx	r9d, WORD PTR 4[r15]
	mov	r12, rbx
.L3181:
	cmp	rsi, r9
	jb	.L3177
	mov	rbx, r12
	jmp	.L3182
	.p2align 4,,10
	.p2align 3
.L3320:
	movzx	r9d, WORD PTR 4[r15]
	cmp	rax, r9
	jnb	.L3303
	mov	rsi, rax
	.p2align 4
	.p2align 3
.L3177:
	mov	rax, QWORD PTR 480[rsp]
	mov	edx, DWORD PTR 8[r15]
	sub	r9, rsi
	mov	rcx, QWORD PTR 16[rax]
	movzx	eax, BYTE PTR [r15]
	mov	r8d, eax
	and	r8d, 3
	jne	.L3185
	test	al, 64
	je	.L3230
	movzx	eax, BYTE PTR [rbx]
	lea	rdx, _ZNSt8__detail31__from_chars_alnum_to_val_tableILb0EE5valueE[rip]
	cmp	BYTE PTR [rdx+rax], 15
	jbe	.L3231
	mov	rax, QWORD PTR 24[rcx]
	movzx	edx, BYTE PTR [r12]
	lea	r8, 1[rax]
	mov	QWORD PTR 24[rcx], r8
	mov	BYTE PTR [rax], dl
	mov	rax, QWORD PTR 24[rcx]
	sub	rax, QWORD PTR 8[rcx]
	cmp	rax, QWORD PTR 16[rcx]
	je	.L3321
.L3186:
	add	r12, 1
	sub	rsi, 1
	mov	r8d, 2
	mov	edx, 48
	.p2align 4
	.p2align 3
.L3185:
	mov	DWORD PTR 32[rsp], edx
	lea	rax, 96[rsp]
	mov	rdx, rax
	mov	QWORD PTR 96[rsp], rsi
	mov	QWORD PTR 104[rsp], r12
	call	_ZNSt8__format14__write_paddedINS_10_Sink_iterIcEEcEET_S3_St17basic_string_viewIT0_St11char_traitsIS5_EENS_6_AlignEyDi
	mov	rdi, rax
	jmp	.L3184
	.p2align 4,,10
	.p2align 3
.L3307:
	mov	eax, 1
	mov	BYTE PTR -1[rbx], 43
	sub	rbx, 1
	movzx	r12d, BYTE PTR [r15]
	vmovq	xmm6, rax
	jmp	.L3126
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L3322:
	add	r11, 1
	cmp	r11, rsi
	jnb	.L3301
.L3138:
	cmp	BYTE PTR [rbx+r11], 48
	je	.L3322
.L3136:
	mov	rax, rbp
	sub	rax, r11
	jmp	.L3139
	.p2align 4,,10
	.p2align 3
.L3304:
	movzx	r13d, WORD PTR 6[rcx]
	jmp	.L3060
	.p2align 4,,10
	.p2align 3
.L3132:
	movsx	edx, BYTE PTR 56[rsp]
	mov	r8, rsi
	mov	rcx, rbx
	call	memchr
	mov	rbp, rax
	test	rax, rax
	je	.L3128
	sub	rbp, rbx
	cmp	rbp, -1
	je	.L3128
.L3141:
	cmp	BYTE PTR 64[rsp], 0
	je	.L3224
	test	r13, r13
	je	.L3225
	mov	rax, rbp
	vmovq	rcx, xmm6
	mov	r10, rbp
	mov	r9d, 1
	sub	rax, rcx
.L3143:
	sub	r13, rax
	add	r9, r13
	jmp	.L3134
	.p2align 4,,10
	.p2align 3
.L3092:
	and	eax, 120
	mov	edx, 112
	cmp	al, 16
	mov	eax, 101
	cmovne	eax, edx
	xor	esi, esi
	mov	BYTE PTR 56[rsp], al
.L3094:
	mov	DWORD PTR 40[rsp], r13d
	lea	rbp, 112[rsp]
	lea	rbx, 241[rsp]
	vmovsd	xmm3, xmm6, xmm6
	mov	DWORD PTR 32[rsp], 4
	lea	r8, 368[rsp]
	mov	rdx, rbx
	mov	rcx, rbp
	call	_ZSt8to_charsPcS_dSt12chars_formati
	cmp	DWORD PTR 120[rsp], 132
	mov	rdi, QWORD PTR 112[rsp]
	jne	.L3299
	mov	BYTE PTR 64[rsp], 0
	lea	rax, 8[r13]
	mov	edi, 1
	mov	ebx, 4
	jmp	.L3109
	.p2align 4,,10
	.p2align 3
.L3102:
	and	eax, 120
	mov	edx, 80
	mov	esi, 1
	cmp	al, 16
	mov	eax, 112
	cmove	eax, edx
	mov	BYTE PTR 56[rsp], al
.L3105:
	mov	DWORD PTR 32[rsp], 4
	lea	rbp, 112[rsp]
	lea	rbx, 241[rsp]
	vmovsd	xmm3, xmm6, xmm6
	lea	r8, 368[rsp]
	mov	rdx, rbx
	mov	rcx, rbp
	mov	r13d, 6
	call	_ZSt8to_charsPcS_dSt12chars_format
	cmp	DWORD PTR 120[rsp], 132
	mov	rdi, QWORD PTR 112[rsp]
	je	.L3208
.L3299:
	lea	rax, 368[rsp]
	mov	BYTE PTR 64[rsp], 0
	mov	QWORD PTR 72[rsp], rax
.L3108:
	test	sil, sil
	je	.L3110
	mov	rbp, QWORD PTR __imp_toupper[rip]
	mov	rsi, rbx
	cmp	rbx, rdi
	je	.L3323
	.p2align 4
	.p2align 3
.L3127:
	movsx	ecx, BYTE PTR [rsi]
	add	rsi, 1
	call	rbp
	mov	BYTE PTR -1[rsi], al
	cmp	rdi, rsi
	jne	.L3127
	jmp	.L3110
	.p2align 4,,10
	.p2align 3
.L3088:
	mov	eax, r13d
	xor	esi, esi
.L3096:
	mov	BYTE PTR 56[rsp], 101
	mov	ebx, 2
	mov	BYTE PTR 64[rsp], 0
.L3106:
	mov	DWORD PTR 40[rsp], eax
	lea	rbp, 112[rsp]
	lea	r12, 241[rsp]
	vmovsd	xmm3, xmm6, xmm6
	mov	DWORD PTR 32[rsp], ebx
	lea	r8, 368[rsp]
	mov	rdx, r12
	mov	rcx, rbp
	call	_ZSt8to_charsPcS_dSt12chars_formati
	cmp	DWORD PTR 120[rsp], 132
	mov	rdi, QWORD PTR 112[rsp]
	je	.L3196
	lea	rax, 368[rsp]
	mov	rbx, r12
	mov	QWORD PTR 72[rsp], rax
	jmp	.L3108
	.p2align 4,,10
	.p2align 3
.L3203:
	mov	BYTE PTR 56[rsp], 101
	mov	eax, 6
	mov	r13d, 6
	xor	esi, esi
.L3095:
	mov	BYTE PTR 64[rsp], 1
	mov	ebx, 3
	jmp	.L3106
	.p2align 4,,10
	.p2align 3
.L3103:
	and	eax, 120
	mov	edx, 101
	cmp	al, 16
	mov	eax, 112
	cmove	eax, edx
	xor	esi, esi
	mov	BYTE PTR 56[rsp], al
	jmp	.L3105
	.p2align 4,,10
	.p2align 3
.L3200:
	mov	eax, 6
	mov	r13d, 6
.L3101:
	mov	BYTE PTR 56[rsp], 69
	mov	esi, 1
.L3097:
	mov	BYTE PTR 64[rsp], 0
	mov	ebx, 1
	jmp	.L3106
	.p2align 4,,10
	.p2align 3
.L3201:
	mov	eax, 6
	mov	r13d, 6
	xor	esi, esi
	jmp	.L3096
	.p2align 4,,10
	.p2align 3
.L3199:
	mov	BYTE PTR 56[rsp], 101
	mov	eax, 6
	mov	r13d, 6
	xor	esi, esi
	jmp	.L3097
	.p2align 4,,10
	.p2align 3
.L3084:
	mov	eax, r13d
.L3098:
	mov	BYTE PTR 56[rsp], 69
	mov	esi, 1
	jmp	.L3095
	.p2align 4,,10
	.p2align 3
.L3093:
	mov	BYTE PTR 56[rsp], 101
	mov	eax, r13d
	mov	ebx, 3
	xor	esi, esi
	mov	BYTE PTR 64[rsp], 0
	jmp	.L3106
	.p2align 4,,10
	.p2align 3
.L3086:
	mov	BYTE PTR 56[rsp], 101
	mov	eax, r13d
	xor	esi, esi
	jmp	.L3095
	.p2align 4,,10
	.p2align 3
.L3087:
	mov	eax, r13d
.L3100:
	mov	esi, 1
	jmp	.L3096
	.p2align 4,,10
	.p2align 3
.L3090:
	mov	BYTE PTR 56[rsp], 101
	mov	eax, r13d
	xor	esi, esi
	jmp	.L3097
	.p2align 4,,10
	.p2align 3
.L3091:
	and	eax, 120
	mov	edx, 80
	mov	esi, 1
	cmp	al, 16
	mov	eax, 112
	cmove	eax, edx
	mov	BYTE PTR 56[rsp], al
	jmp	.L3094
	.p2align 4,,10
	.p2align 3
.L3089:
	mov	eax, r13d
	jmp	.L3101
	.p2align 4,,10
	.p2align 3
.L3204:
	mov	eax, 6
	mov	r13d, 6
	jmp	.L3098
	.p2align 4,,10
	.p2align 3
.L3202:
	mov	eax, 6
	mov	r13d, 6
	jmp	.L3100
	.p2align 4,,10
	.p2align 3
.L3319:
	mov	rdx, QWORD PTR 208[rsp]
	lea	rcx, 224[rsp]
	cmp	rdx, rcx
	je	.L3324
	vmovdqu	xmm0, XMMWORD PTR 216[rsp]
	mov	QWORD PTR 176[rsp], rdx
	vmovdqu	XMMWORD PTR 184[rsp], xmm0
.L3166:
	mov	QWORD PTR 208[rsp], rcx
	lea	rax, 224[rsp]
	jmp	.L3175
	.p2align 4,,10
	.p2align 3
.L3323:
	vxorpd	xmm0, xmm0, xmm0
	movzx	r12d, BYTE PTR [r15]
	vcomisd	xmm6, xmm0
	jnb	.L3125
	xor	esi, esi
	test	r12b, 16
	je	.L3129
	mov	eax, 1
	xor	esi, esi
	vmovq	xmm6, rax
	.p2align 4
	.p2align 3
.L3128:
	mov	rbp, rsi
	jmp	.L3141
	.p2align 4,,10
	.p2align 3
.L3223:
	xor	r13d, r13d
	jmp	.L3134
	.p2align 4,,10
	.p2align 3
.L3317:
	lea	r13, 96[rsp]
	jmp	.L3178
.L3229:
	mov	rsi, rax
	.p2align 4
	.p2align 3
.L3179:
	movzx	ecx, WORD PTR 4[r15]
	mov	rdx, QWORD PTR 480[rsp]
	call	_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEyRT_.part.0.isra.0
.LEHE161:
	mov	r9, rax
	jmp	.L3181
	.p2align 4,,10
	.p2align 3
.L3309:
	xor	r9d, r9d
	cmp	rsi, r10
	mov	rbp, rsi
	sete	r9b
	cmp	BYTE PTR 64[rsp], 0
	je	.L3223
	vmovq	rax, xmm6
	cmp	BYTE PTR [rbx+rax], 48
	jne	.L3135
.L3301:
	mov	r11, -1
	jmp	.L3136
	.p2align 4,,10
	.p2align 3
.L3318:
	mov	rcx, r12
	call	_ZNSt6localeC1Ev
	mov	rax, QWORD PTR 480[rsp]
	mov	BYTE PTR 32[rax], 1
	jmp	.L3162
	.p2align 4,,10
	.p2align 3
.L3305:
	mov	rbx, r8
	movzx	r8d, WORD PTR 6[rcx]
	movzx	edx, BYTE PTR [rbx]
	mov	ecx, edx
	and	edx, 15
	and	ecx, 15
	cmp	r8, rdx
	jnb	.L3061
	mov	rbx, QWORD PTR [rbx]
	lea	rcx, [r8+r8*4]
	sal	r8, 4
	mov	rdx, rbx
	mov	QWORD PTR 56[rsp], rbx
	mov	rbx, QWORD PTR 480[rsp]
	shr	rdx, 4
	add	r8, QWORD PTR 8[rbx]
	shr	rdx, cl
	vmovdqu	xmm4, XMMWORD PTR [r8]
	and	edx, 31
	vmovdqu	XMMWORD PTR 208[rsp], xmm4
.L3062:
	mov	BYTE PTR 224[rsp], dl
	lea	rcx, .L3066[rip]
	movzx	edx, dl
	vmovdqu	ymm0, YMMWORD PTR 208[rsp]
	movsx	rdx, DWORD PTR [rcx+rdx*4]
	vmovdqu	YMMWORD PTR 176[rsp], ymm0
	add	rdx, rcx
	jmp	rdx
	.section .rdata,"dr"
	.align 4
.L3066:
	.long	.L3297-.L3066
	.long	.L3080-.L3066
	.long	.L3079-.L3066
	.long	.L3078-.L3066
	.long	.L3077-.L3066
	.long	.L3076-.L3066
	.long	.L3075-.L3066
	.long	.L3074-.L3066
	.long	.L3073-.L3066
	.long	.L3072-.L3066
	.long	.L3071-.L3066
	.long	.L3070-.L3066
	.long	.L3069-.L3066
	.long	.L3068-.L3066
	.long	.L3067-.L3066
	.long	.L3065-.L3066
	.section	.text$_ZNKSt8__format14__formatter_fpIcE6formatIdNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,"x"
	.linkonce discard
	.p2align 4,,10
	.p2align 3
.L3148:
	cmp	rax, rbp
	jb	.L3325
	xor	r8d, r8d
	mov	rdx, rbp
	mov	rcx, r12
	mov	QWORD PTR 64[rsp], r10
	mov	DWORD PTR 32[rsp], 48
.LEHB162:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEyyyc.isra.0
	mov	r10, QWORD PTR 64[rsp]
	cmp	r10, rbp
	jne	.L3159
	mov	rax, QWORD PTR 144[rsp]
	mov	BYTE PTR [rax+r10], 46
	jmp	.L3159
	.p2align 4,,10
	.p2align 3
.L3224:
	mov	r10, rbp
	mov	r9d, 1
	xor	r13d, r13d
	jmp	.L3142
	.p2align 4,,10
	.p2align 3
.L3230:
	mov	r8d, 2
	mov	edx, 32
	jmp	.L3185
.L3324:
	mov	rdx, QWORD PTR 216[rsp]
	mov	r10, rdx
	.p2align 4
	.p2align 3
.L3194:
	test	rdx, rdx
	je	.L3167
	cmp	rdx, 1
	je	.L3326
	mov	eax, edx
	cmp	edx, 8
	jnb	.L3169
	test	dl, 4
	jne	.L3327
	test	edx, edx
	je	.L3170
	movzx	r8d, BYTE PTR 224[rsp]
	and	edx, 2
	mov	BYTE PTR [r9], r8b
	jne	.L3289
.L3302:
	mov	r9, QWORD PTR 176[rsp]
	mov	rdx, QWORD PTR 216[rsp]
.L3170:
	mov	r10, rdx
	mov	rax, r9
.L3167:
	mov	QWORD PTR 184[rsp], r10
	mov	BYTE PTR [rax+r10], 0
	mov	rax, QWORD PTR 208[rsp]
	jmp	.L3175
	.p2align 4,,10
	.p2align 3
.L3145:
	lea	rcx, [r9+rbp]
	lea	rdi, [rbx+rbp]
	mov	r8, rsi
	mov	QWORD PTR 72[rsp], r10
	add	rcx, rbx
	sub	r8, rbp
	mov	rdx, rdi
	mov	QWORD PTR 64[rsp], r9
	call	memmove
	mov	r10, QWORD PTR 72[rsp]
	mov	r9, QWORD PTR 64[rsp]
	cmp	r10, rbp
	je	.L3328
.L3147:
	mov	r8, r13
	mov	edx, 48
	mov	rcx, rdi
	mov	QWORD PTR 64[rsp], r9
	call	memset
	mov	r9, QWORD PTR 64[rsp]
	movzx	r12d, BYTE PTR [r15]
	add	rsi, r9
	jmp	.L3129
	.p2align 4,,10
	.p2align 3
.L3061:
	test	cl, cl
	jne	.L3063
	mov	rbx, QWORD PTR [rbx]
	mov	rdx, rbx
	mov	QWORD PTR 56[rsp], rbx
	shr	rdx, 4
	cmp	r8, rdx
	jb	.L3329
.L3063:
	lea	r12, 144[rsp]
	call	_ZNSt8__format33__invalid_arg_id_in_format_stringEv
	.p2align 4,,10
	.p2align 3
.L3225:
	mov	r10, rbp
	mov	r9d, 1
	jmp	.L3142
.L3221:
	mov	rbp, rsi
	jmp	.L3137
.L3231:
	mov	r8d, 2
	mov	edx, 48
	jmp	.L3185
.L3328:
	mov	BYTE PTR [rdi], 46
	lea	rdi, 1[rbx+r10]
	jmp	.L3147
.L3075:
	mov	r13, QWORD PTR 176[rsp]
	vzeroupper
	jmp	.L3060
.L3076:
	mov	r13, QWORD PTR 176[rsp]
	test	r13, r13
	js	.L3330
.L3298:
	vzeroupper
	jmp	.L3060
.L3077:
	mov	r13d, DWORD PTR 176[rsp]
	vzeroupper
	jmp	.L3060
.L3078:
	movsx	r13, DWORD PTR 176[rsp]
	test	r13d, r13d
	jns	.L3298
	lea	rcx, .LC3[rip]
	lea	r12, 144[rsp]
	vzeroupper
	call	_ZSt20__throw_format_errorPKc
	.p2align 4,,10
	.p2align 3
.L3297:
	vzeroupper
	jmp	.L3063
.L3306:
	lea	r12, 144[rsp]
	mov	edx, 256
	mov	rcx, r12
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy
	mov	rax, QWORD PTR 144[rsp]
.L3111:
	cmp	rax, r14
	je	.L3211
	mov	rax, QWORD PTR 160[rsp]
	lea	rbx, [rax+rax]
.L3116:
	mov	rdx, rbx
	mov	rcx, r12
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy
	mov	r9, QWORD PTR 144[rsp]
	vmovsd	xmm3, xmm6, xmm6
	mov	rcx, rbp
	lea	rdx, 1[r9]
	lea	r8, -1[r9+rbx]
	mov	QWORD PTR 56[rsp], r9
	call	_ZSt8to_charsPcS_d
	mov	rdx, QWORD PTR 120[rsp]
	mov	rax, QWORD PTR 112[rsp]
	mov	r9, QWORD PTR 56[rsp]
	test	edx, edx
	mov	rdi, rax
	je	.L3212
	mov	rax, QWORD PTR 144[rsp]
	mov	QWORD PTR 152[rsp], 0
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR 144[rsp]
	cmp	edx, 132
	je	.L3111
	mov	BYTE PTR 64[rsp], 0
	mov	r13d, 6
	xor	esi, esi
	mov	BYTE PTR 56[rsp], 101
.L3118:
	lea	rbx, 1[rax]
	add	rax, QWORD PTR 152[rsp]
	mov	QWORD PTR 72[rsp], rax
	jmp	.L3108
.L3208:
	mov	BYTE PTR 64[rsp], 0
	xor	edi, edi
	mov	ebx, 4
.L3113:
	lea	r12, 144[rsp]
	mov	edx, 256
	mov	rcx, r12
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy
	mov	rax, QWORD PTR 144[rsp]
	test	dil, dil
	jne	.L3123
.L3120:
	cmp	rax, r14
	je	.L3213
	mov	rax, QWORD PTR 160[rsp]
	lea	rdi, [rax+rax]
.L3119:
	mov	rdx, rdi
	mov	rcx, r12
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy
	mov	r9, QWORD PTR 144[rsp]
	mov	DWORD PTR 32[rsp], ebx
	vmovsd	xmm3, xmm6, xmm6
	mov	rcx, rbp
	lea	rdx, 1[r9]
	lea	r8, -1[r9+rdi]
	mov	QWORD PTR 72[rsp], r9
	call	_ZSt8to_charsPcS_dSt12chars_format
	mov	rdx, QWORD PTR 120[rsp]
	mov	rax, QWORD PTR 112[rsp]
	mov	r9, QWORD PTR 72[rsp]
	test	edx, edx
	mov	rdi, rax
	je	.L3117
	mov	rax, QWORD PTR 144[rsp]
	mov	QWORD PTR 152[rsp], 0
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR 144[rsp]
	cmp	edx, 132
	jne	.L3118
	jmp	.L3120
.L3196:
	lea	rax, 8[r13]
	mov	edi, 1
	cmp	ebx, 2
	je	.L3331
.L3109:
	cmp	rax, 128
	jbe	.L3113
	lea	r12, 144[rsp]
	mov	rdx, rax
	mov	rcx, r12
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy
	mov	rax, QWORD PTR 144[rsp]
.L3123:
	cmp	rax, r14
	je	.L3214
	mov	rax, QWORD PTR 160[rsp]
	lea	rdi, [rax+rax]
.L3121:
	mov	rdx, rdi
	mov	rcx, r12
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy
	mov	r9, QWORD PTR 144[rsp]
	mov	DWORD PTR 40[rsp], r13d
	vmovsd	xmm3, xmm6, xmm6
	mov	rcx, rbp
	mov	DWORD PTR 32[rsp], ebx
	lea	rdx, 1[r9]
	lea	r8, -1[r9+rdi]
	mov	QWORD PTR 72[rsp], r9
	call	_ZSt8to_charsPcS_dSt12chars_formati
	mov	rax, QWORD PTR 112[rsp]
	mov	rdx, QWORD PTR 120[rsp]
	mov	rdi, rax
	test	edx, edx
	jne	.L3122
	mov	r9, QWORD PTR 72[rsp]
.L3117:
	mov	rdx, QWORD PTR 144[rsp]
	sub	rax, r9
	mov	QWORD PTR 152[rsp], rax
	mov	BYTE PTR [rdx+rax], 0
	mov	rax, QWORD PTR 144[rsp]
	lea	rbx, 1[rax]
	add	rax, QWORD PTR 152[rsp]
	mov	QWORD PTR 72[rsp], rax
	jmp	.L3108
.L3156:
	mov	QWORD PTR 32[rsp], rsi
	xor	r8d, r8d
	mov	rcx, r12
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEyyPKcy
	mov	rax, QWORD PTR 144[rsp]
	jmp	.L3157
.L3311:
	mov	DWORD PTR 32[rsp], 48
	mov	r9, r13
	xor	r8d, r8d
	mov	rcx, r12
	mov	rdx, QWORD PTR 152[rsp]
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEyyyc.isra.0
	jmp	.L3152
.L3331:
	lea	rdx, 208[rsp]
	mov	QWORD PTR 72[rsp], rax
	vmovsd	xmm0, xmm6, xmm6
	mov	DWORD PTR 208[rsp], 0
	call	frexp
	mov	edx, DWORD PTR 208[rsp]
	mov	rax, QWORD PTR 72[rsp]
	test	edx, edx
	jle	.L3112
	imul	ecx, edx, 4004
	mov	rdx, rcx
	imul	rcx, rcx, 995517945
	shr	rcx, 32
	sub	edx, ecx
	shr	edx
	add	edx, ecx
	shr	edx, 13
	add	edx, 1
	add	rax, rdx
.L3112:
	mov	edi, 1
	jmp	.L3109
.L3310:
	mov	rdi, QWORD PTR 152[rsp]
	mov	rax, QWORD PTR 144[rsp]
	lea	r10, 1[rdi]
	cmp	rax, r14
	je	.L3226
	mov	rdx, QWORD PTR 160[rsp]
.L3150:
	cmp	rdx, r10
	jb	.L3332
.L3151:
	mov	BYTE PTR [rax+rdi], 46
	mov	rax, QWORD PTR 144[rsp]
	mov	QWORD PTR 152[rsp], r10
	mov	BYTE PTR 1[rax+rdi], 0
	jmp	.L3149
.L3212:
	mov	BYTE PTR 64[rsp], 0
	mov	r13d, 6
	xor	esi, esi
	mov	BYTE PTR 56[rsp], 101
	jmp	.L3117
.L3122:
	mov	rax, QWORD PTR 144[rsp]
	mov	QWORD PTR 152[rsp], 0
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR 144[rsp]
	cmp	edx, 132
	jne	.L3118
	jmp	.L3123
.L3227:
	mov	ecx, 15
	jmp	.L3155
.L3329:
	mov	rbx, QWORD PTR 480[rsp]
	sal	r8, 5
	add	r8, QWORD PTR 8[rbx]
	vmovdqu	xmm5, XMMWORD PTR [r8]
	vmovdqu	XMMWORD PTR 208[rsp], xmm5
	movzx	edx, BYTE PTR 16[r8]
	mov	BYTE PTR 224[rsp], dl
	movzx	edx, BYTE PTR 16[r8]
	jmp	.L3062
.L3314:
	movzx	eax, BYTE PTR [r9]
	mov	BYTE PTR [rcx], al
	mov	rax, QWORD PTR 144[rsp]
	jmp	.L3157
.L3169:
	mov	rax, QWORD PTR 224[rsp]
	mov	QWORD PTR [r9], rax
	mov	eax, edx
	mov	r8, QWORD PTR -8[rcx+rax]
	mov	QWORD PTR -8[r9+rax], r8
	lea	r8, 8[r9]
	mov	rax, r9
	and	r8, -8
	sub	rax, r8
	sub	rcx, rax
	add	eax, edx
	and	eax, -8
	cmp	eax, 8
	jb	.L3302
	and	eax, -8
	xor	edx, edx
.L3173:
	mov	r9d, edx
	add	edx, 8
	mov	r10, QWORD PTR [rcx+r9]
	mov	QWORD PTR [r8+r9], r10
	cmp	edx, eax
	jb	.L3173
	jmp	.L3302
.L3326:
	movzx	eax, BYTE PTR 224[rsp]
	mov	BYTE PTR [r9], al
	mov	r10, QWORD PTR 216[rsp]
	mov	rax, QWORD PTR 176[rsp]
	jmp	.L3167
.L3213:
	mov	edi, 30
	jmp	.L3119
.L3211:
	mov	ebx, 30
	jmp	.L3116
.L3214:
	mov	edi, 30
	jmp	.L3121
.L3332:
	xor	r9d, r9d
	xor	r8d, r8d
	mov	rdx, rdi
	mov	rcx, r12
	mov	QWORD PTR 32[rsp], 1
	mov	QWORD PTR 64[rsp], r10
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEyyPKcy
.LEHE162:
	mov	rax, QWORD PTR 144[rsp]
	mov	r10, QWORD PTR 64[rsp]
	jmp	.L3151
.L3321:
	mov	rax, QWORD PTR [rcx]
	mov	QWORD PTR 64[rsp], r9
	mov	QWORD PTR 56[rsp], rcx
.LEHB163:
	call	[QWORD PTR [rax]]
.LEHE163:
	mov	r9, QWORD PTR 64[rsp]
	mov	rcx, QWORD PTR 56[rsp]
	jmp	.L3186
.L3226:
	mov	edx, 15
	jmp	.L3150
.L3327:
	mov	edx, DWORD PTR 224[rsp]
	mov	DWORD PTR [r9], edx
	mov	edx, DWORD PTR -4[rcx+rax]
	mov	DWORD PTR -4[r9+rax], edx
	mov	r9, QWORD PTR 176[rsp]
	mov	rdx, QWORD PTR 216[rsp]
	jmp	.L3170
.L3289:
	movzx	edx, WORD PTR -2[rcx+rax]
	mov	WORD PTR -2[r9+rax], dx
	mov	r9, QWORD PTR 176[rsp]
	mov	rdx, QWORD PTR 216[rsp]
	jmp	.L3170
.L3232:
	mov	rbx, rax
	vzeroupper
.L3191:
	mov	rcx, r12
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	rcx, rbx
.LEHB164:
	call	_Unwind_Resume
.LEHE164:
.L3079:
	lea	rcx, .LC3[rip]
	lea	r12, 144[rsp]
	vzeroupper
.LEHB165:
	call	_ZSt20__throw_format_errorPKc
.L3064:
.L3233:
	mov	rcx, rdi
	mov	rbx, rax
	vzeroupper
	call	_ZNSt6localeD1Ev
.L3190:
	lea	rcx, 176[rsp]
	lea	r12, 144[rsp]
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	.L3191
.L3313:
	lea	rcx, .LC16[rip]
	call	_ZSt20__throw_length_errorPKc
.L3065:
	lea	rcx, .LC3[rip]
	lea	r12, 144[rsp]
	vzeroupper
	call	_ZSt20__throw_format_errorPKc
.L3312:
	mov	r9, rsi
	mov	r8, rbp
	lea	rdx, .LC50[rip]
	lea	rcx, .LC48[rip]
	call	_ZSt24__throw_out_of_range_fmtPKcz
.L3234:
	mov	rbx, rax
	vzeroupper
	jmp	.L3190
.L3070:
	lea	rcx, .LC3[rip]
	lea	r12, 144[rsp]
	vzeroupper
	call	_ZSt20__throw_format_errorPKc
.L3071:
	lea	rcx, .LC3[rip]
	lea	r12, 144[rsp]
	vzeroupper
	call	_ZSt20__throw_format_errorPKc
.L3072:
	lea	rcx, .LC3[rip]
	lea	r12, 144[rsp]
	vzeroupper
	call	_ZSt20__throw_format_errorPKc
.L3073:
	lea	rcx, .LC3[rip]
	lea	r12, 144[rsp]
	vzeroupper
	call	_ZSt20__throw_format_errorPKc
.L3325:
	mov	r9, rax
	mov	r8, rbp
	lea	rdx, .LC51[rip]
	lea	rcx, .LC52[rip]
	call	_ZSt24__throw_out_of_range_fmtPKcz
.L3067:
	lea	rcx, .LC3[rip]
	lea	r12, 144[rsp]
	vzeroupper
	call	_ZSt20__throw_format_errorPKc
.L3068:
	lea	rcx, .LC3[rip]
	lea	r12, 144[rsp]
	vzeroupper
	call	_ZSt20__throw_format_errorPKc
.L3069:
	lea	rcx, .LC3[rip]
	lea	r12, 144[rsp]
	vzeroupper
	call	_ZSt20__throw_format_errorPKc
.L3074:
	lea	rcx, .LC3[rip]
	lea	r12, 144[rsp]
	vzeroupper
	call	_ZSt20__throw_format_errorPKc
.L3330:
	lea	rcx, .LC3[rip]
	lea	r12, 144[rsp]
	vzeroupper
	call	_ZSt20__throw_format_errorPKc
.L3080:
	lea	rcx, .LC3[rip]
	lea	r12, 144[rsp]
	vzeroupper
	call	_ZSt20__throw_format_errorPKc
	nop
.LEHE165:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA9458:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9458-.LLSDACSB9458
.LLSDACSB9458:
	.uleb128 .LEHB159-.LFB9458
	.uleb128 .LEHE159-.LEHB159
	.uleb128 .L3232-.LFB9458
	.uleb128 0
	.uleb128 .LEHB160-.LFB9458
	.uleb128 .LEHE160-.LEHB160
	.uleb128 .L3233-.LFB9458
	.uleb128 0
	.uleb128 .LEHB161-.LFB9458
	.uleb128 .LEHE161-.LEHB161
	.uleb128 .L3234-.LFB9458
	.uleb128 0
	.uleb128 .LEHB162-.LFB9458
	.uleb128 .LEHE162-.LEHB162
	.uleb128 .L3232-.LFB9458
	.uleb128 0
	.uleb128 .LEHB163-.LFB9458
	.uleb128 .LEHE163-.LEHB163
	.uleb128 .L3234-.LFB9458
	.uleb128 0
	.uleb128 .LEHB164-.LFB9458
	.uleb128 .LEHE164-.LEHB164
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB165-.LFB9458
	.uleb128 .LEHE165-.LEHB165
	.uleb128 .L3232-.LFB9458
	.uleb128 0
.LLSDACSE9458:
	.section	.text$_ZNKSt8__format14__formatter_fpIcE6formatIdNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNKSt8__format14__formatter_fpIcE6formatIfNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNKSt8__format14__formatter_fpIcE6formatIfNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
	.def	_ZNKSt8__format14__formatter_fpIcE6formatIfNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt8__format14__formatter_fpIcE6formatIfNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
_ZNKSt8__format14__formatter_fpIcE6formatIfNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_:
.LFB9454:
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
	sub	rsp, 392
	.seh_stackalloc	392
	vmovups	XMMWORD PTR 368[rsp], xmm6
	.seh_savexmm	xmm6, 368
	.seh_endprologue
	movzx	eax, BYTE PTR 1[rcx]
	mov	edx, eax
	lea	r14, 160[rsp]
	mov	QWORD PTR 480[rsp], r8
	mov	r15, rcx
	vmovss	xmm6, xmm1, xmm1
	mov	QWORD PTR 144[rsp], r14
	mov	QWORD PTR 152[rsp], 0
	mov	BYTE PTR 160[rsp], 0
	and	edx, 6
	je	.L3334
	cmp	dl, 2
	je	.L3580
	mov	r13, -1
	cmp	dl, 4
	je	.L3581
.L3336:
	mov	edx, eax
	shr	dl, 3
	and	edx, 15
	cmp	dl, 8
	ja	.L3340
	lea	rcx, .L3361[rip]
	movzx	edx, dl
	movsx	rdx, DWORD PTR [rcx+rdx*4]
	add	rdx, rcx
	jmp	rdx
	.section .rdata,"dr"
	.align 4
.L3361:
	.long	.L3369-.L3361
	.long	.L3368-.L3361
	.long	.L3367-.L3361
	.long	.L3366-.L3361
	.long	.L3365-.L3361
	.long	.L3364-.L3361
	.long	.L3363-.L3361
	.long	.L3362-.L3361
	.long	.L3360-.L3361
	.section	.text$_ZNKSt8__format14__formatter_fpIcE6formatIfNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,"x"
	.linkonce discard
	.p2align 4,,10
	.p2align 3
.L3334:
	mov	edx, eax
	shr	dl, 3
	and	edx, 15
	cmp	dl, 8
	ja	.L3340
	lea	rcx, .L3375[rip]
	movzx	edx, dl
	movsx	rdx, DWORD PTR [rcx+rdx*4]
	add	rdx, rcx
	jmp	rdx
	.section .rdata,"dr"
	.align 4
.L3375:
	.long	.L3380-.L3375
	.long	.L3379-.L3375
	.long	.L3378-.L3375
	.long	.L3475-.L3375
	.long	.L3476-.L3375
	.long	.L3477-.L3375
	.long	.L3478-.L3375
	.long	.L3479-.L3375
	.long	.L3480-.L3375
	.section	.text$_ZNKSt8__format14__formatter_fpIcE6formatIfNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,"x"
	.linkonce discard
	.p2align 4,,10
	.p2align 3
.L3380:
	lea	rbp, 112[rsp]
	lea	rbx, 241[rsp]
	vmovss	xmm3, xmm1, xmm1
	lea	r8, 368[rsp]
	mov	rdx, rbx
	mov	rcx, rbp
	call	_ZSt8to_charsPcS_f
	cmp	DWORD PTR 120[rsp], 132
	mov	rdi, QWORD PTR 112[rsp]
	je	.L3582
	lea	rax, 368[rsp]
	mov	BYTE PTR 64[rsp], 0
	mov	r13d, 6
	mov	BYTE PTR 56[rsp], 101
	mov	QWORD PTR 72[rsp], rax
.L3386:
	vxorps	xmm0, xmm0, xmm0
	movzx	r12d, BYTE PTR [r15]
	vcomiss	xmm6, xmm0
	jb	.L3576
.L3401:
	mov	eax, r12d
	and	eax, 12
	cmp	al, 4
	je	.L3583
	vpxor	xmm6, xmm6, xmm6
	cmp	al, 12
	je	.L3584
.L3402:
	mov	rsi, rdi
	sub	rsi, rbx
	test	r12b, 16
	je	.L3405
	test	rsi, rsi
	je	.L3404
	mov	r8, rsi
	mov	edx, 46
	mov	rcx, rbx
	call	memchr
	mov	r10, rax
	test	rax, rax
	je	.L3408
	sub	r10, rbx
	cmp	r10, -1
	je	.L3408
	lea	r11, 1[r10]
	cmp	r11, rsi
	jnb	.L3585
	movsx	edx, BYTE PTR 56[rsp]
	mov	r8, rsi
	lea	rcx, [rbx+r11]
	mov	QWORD PTR 88[rsp], r10
	sub	r8, r11
	mov	QWORD PTR 80[rsp], r11
	call	memchr
	mov	r11, QWORD PTR 80[rsp]
	mov	r10, QWORD PTR 88[rsp]
	test	rax, rax
	mov	rbp, rax
	je	.L3497
	sub	rbp, rbx
	cmp	rbp, -1
	cmove	rbp, rsi
.L3413:
	xor	r9d, r9d
	cmp	rbp, r10
	sete	r9b
	cmp	BYTE PTR 64[rsp], 0
	je	.L3499
	vmovq	rax, xmm6
	cmp	BYTE PTR [rbx+rax], 48
	je	.L3414
.L3411:
	mov	rax, rbp
	vmovq	rcx, xmm6
	sub	rax, rcx
	sub	rax, 1
.L3415:
	test	r13, r13
	jne	.L3419
	.p2align 4
	.p2align 3
.L3410:
	test	r9, r9
	je	.L3405
.L3418:
	cmp	QWORD PTR 152[rsp], 0
	jne	.L3420
	mov	rax, QWORD PTR 72[rsp]
	sub	rax, rdi
	cmp	rax, r9
	jnb	.L3421
.L3420:
	lea	r12, 144[rsp]
	lea	rdx, [rsi+r9]
	mov	QWORD PTR 72[rsp], r10
	mov	rcx, r12
	mov	QWORD PTR 64[rsp], r9
.LEHB166:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy
	mov	rax, QWORD PTR 152[rsp]
	mov	r9, QWORD PTR 64[rsp]
	mov	r10, QWORD PTR 72[rsp]
	test	rax, rax
	jne	.L3424
	cmp	rsi, rbp
	mov	rax, rbp
	mov	r9, rbx
	mov	rcx, r12
	cmovbe	rax, rsi
	xor	r8d, r8d
	xor	edx, edx
	mov	QWORD PTR 64[rsp], r10
	mov	QWORD PTR 32[rsp], rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy.isra.0
.LEHE166:
	mov	r10, QWORD PTR 64[rsp]
	cmp	r10, rbp
	je	.L3586
.L3425:
	test	r13, r13
	jne	.L3587
.L3428:
	cmp	rsi, rbp
	jb	.L3588
	mov	rdx, QWORD PTR 152[rsp]
	sub	rsi, rbp
	lea	r9, [rbx+rbp]
	movabs	rax, 9223372036854775807
	sub	rax, rdx
	cmp	rax, rsi
	jb	.L3589
	mov	rax, QWORD PTR 144[rsp]
	lea	rdi, [rsi+rdx]
	cmp	rax, r14
	je	.L3503
	mov	rcx, QWORD PTR 160[rsp]
.L3431:
	cmp	rcx, rdi
	jb	.L3432
	test	rsi, rsi
	je	.L3433
	lea	rcx, [rax+rdx]
	cmp	rsi, 1
	je	.L3590
	mov	r8, rsi
	mov	rdx, r9
	call	memcpy
	mov	rax, QWORD PTR 144[rsp]
.L3433:
	mov	QWORD PTR 152[rsp], rdi
	mov	BYTE PTR [rax+rdi], 0
.L3435:
	mov	rsi, QWORD PTR 152[rsp]
	mov	rbx, QWORD PTR 144[rsp]
	movzx	r12d, BYTE PTR [r15]
	.p2align 4
	.p2align 3
.L3405:
	lea	rbp, 192[rsp]
	and	r12d, 32
	mov	QWORD PTR 184[rsp], 0
	mov	QWORD PTR 176[rsp], rbp
	mov	BYTE PTR 192[rsp], 0
	jne	.L3591
.L3437:
	movzx	eax, WORD PTR [r15]
	and	ax, 384
	cmp	ax, 128
	je	.L3592
	mov	r12, rbx
	cmp	ax, 256
	je	.L3455
.L3458:
	mov	rax, QWORD PTR 480[rsp]
	mov	rdi, QWORD PTR 16[rax]
	test	rsi, rsi
	jne	.L3593
.L3460:
	mov	rcx, QWORD PTR 176[rsp]
	cmp	rcx, rbp
	je	.L3463
	mov	rax, QWORD PTR 192[rsp]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L3463:
	mov	rcx, QWORD PTR 144[rsp]
	cmp	rcx, r14
	je	.L3525
	mov	rax, QWORD PTR 160[rsp]
	lea	rdx, 1[rax]
	call	_ZdlPvy
	nop
.L3525:
	vmovups	xmm6, XMMWORD PTR 368[rsp]
	mov	rax, rdi
	add	rsp, 392
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
.L3584:
	mov	BYTE PTR -1[rbx], 32
	movzx	r12d, BYTE PTR [r15]
	sub	rbx, 1
.L3576:
	mov	eax, 1
	vmovq	xmm6, rax
	jmp	.L3402
	.p2align 4,,10
	.p2align 3
.L3591:
	mov	rax, QWORD PTR 480[rsp]
	cmp	BYTE PTR 32[rax], 0
	lea	r12, 24[rax]
	je	.L3594
.L3438:
	lea	rdi, 136[rsp]
	mov	rdx, r12
	lea	r13, 96[rsp]
	mov	rcx, rdi
	lea	r12, 208[rsp]
	call	_ZNSt6localeC1ERKS_
	mov	r9, rdi
	mov	rdx, r13
	mov	rcx, r12
	movzx	r8d, BYTE PTR 56[rsp]
	mov	QWORD PTR 96[rsp], rsi
	mov	QWORD PTR 104[rsp], rbx
.LEHB167:
	call	_ZNKSt8__format14__formatter_fpIcE11_M_localizeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEcRKSt6locale.isra.0
.LEHE167:
	mov	rax, QWORD PTR 176[rsp]
	mov	r9, rax
	cmp	rax, rbp
	je	.L3595
	mov	rdx, QWORD PTR 216[rsp]
	mov	r8, QWORD PTR 208[rsp]
	lea	rcx, 224[rsp]
	mov	r10, rdx
	cmp	r8, rcx
	je	.L3470
	vmovq	xmm2, rdx
	mov	QWORD PTR 176[rsp], r8
	vpinsrq	xmm0, xmm2, QWORD PTR 224[rsp], 1
	mov	rdx, QWORD PTR 192[rsp]
	vmovdqu	XMMWORD PTR 184[rsp], xmm0
	test	rax, rax
	je	.L3442
	mov	QWORD PTR 208[rsp], rax
	mov	QWORD PTR 224[rsp], rdx
.L3451:
	mov	QWORD PTR 216[rsp], 0
	mov	rcx, r12
	mov	BYTE PTR [rax], 0
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	rcx, rdi
	call	_ZNSt6localeD1Ev
	mov	rax, QWORD PTR 184[rsp]
	test	rax, rax
	je	.L3437
	movzx	edx, WORD PTR [r15]
	mov	r12, QWORD PTR 176[rsp]
	and	dx, 384
	cmp	dx, 128
	je	.L3596
	cmp	dx, 256
	je	.L3505
.L3579:
	mov	rbx, QWORD PTR 480[rsp]
	mov	rsi, rax
	mov	rdi, QWORD PTR 16[rbx]
	mov	rbx, r12
.L3454:
	mov	rdx, r13
	mov	rcx, rdi
	mov	QWORD PTR 96[rsp], rsi
	mov	QWORD PTR 104[rsp], rbx
.LEHB168:
	call	_ZNSt8__format5_SinkIcE8_M_writeESt17basic_string_viewIcSt11char_traitsIcEE
	jmp	.L3460
	.p2align 4,,10
	.p2align 3
.L3592:
	movzx	r9d, WORD PTR 4[r15]
	mov	r12, rbx
.L3457:
	cmp	rsi, r9
	jb	.L3453
	mov	rbx, r12
	jmp	.L3458
	.p2align 4,,10
	.p2align 3
.L3596:
	movzx	r9d, WORD PTR 4[r15]
	cmp	rax, r9
	jnb	.L3579
	mov	rsi, rax
	.p2align 4
	.p2align 3
.L3453:
	mov	rax, QWORD PTR 480[rsp]
	mov	edx, DWORD PTR 8[r15]
	sub	r9, rsi
	mov	rcx, QWORD PTR 16[rax]
	movzx	eax, BYTE PTR [r15]
	mov	r8d, eax
	and	r8d, 3
	jne	.L3461
	test	al, 64
	je	.L3506
	movzx	eax, BYTE PTR [rbx]
	lea	rdx, _ZNSt8__detail31__from_chars_alnum_to_val_tableILb0EE5valueE[rip]
	cmp	BYTE PTR [rdx+rax], 15
	jbe	.L3507
	mov	rax, QWORD PTR 24[rcx]
	movzx	edx, BYTE PTR [r12]
	lea	r8, 1[rax]
	mov	QWORD PTR 24[rcx], r8
	mov	BYTE PTR [rax], dl
	mov	rax, QWORD PTR 24[rcx]
	sub	rax, QWORD PTR 8[rcx]
	cmp	rax, QWORD PTR 16[rcx]
	je	.L3597
.L3462:
	add	r12, 1
	sub	rsi, 1
	mov	r8d, 2
	mov	edx, 48
	.p2align 4
	.p2align 3
.L3461:
	mov	DWORD PTR 32[rsp], edx
	lea	rax, 96[rsp]
	mov	rdx, rax
	mov	QWORD PTR 96[rsp], rsi
	mov	QWORD PTR 104[rsp], r12
	call	_ZNSt8__format14__write_paddedINS_10_Sink_iterIcEEcEET_S3_St17basic_string_viewIT0_St11char_traitsIS5_EENS_6_AlignEyDi
	mov	rdi, rax
	jmp	.L3460
	.p2align 4,,10
	.p2align 3
.L3583:
	mov	eax, 1
	mov	BYTE PTR -1[rbx], 43
	sub	rbx, 1
	movzx	r12d, BYTE PTR [r15]
	vmovq	xmm6, rax
	jmp	.L3402
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L3598:
	add	r11, 1
	cmp	r11, rsi
	jnb	.L3577
.L3414:
	cmp	BYTE PTR [rbx+r11], 48
	je	.L3598
.L3412:
	mov	rax, rbp
	sub	rax, r11
	jmp	.L3415
	.p2align 4,,10
	.p2align 3
.L3580:
	movzx	r13d, WORD PTR 6[rcx]
	jmp	.L3336
	.p2align 4,,10
	.p2align 3
.L3408:
	movsx	edx, BYTE PTR 56[rsp]
	mov	r8, rsi
	mov	rcx, rbx
	call	memchr
	mov	rbp, rax
	test	rax, rax
	je	.L3404
	sub	rbp, rbx
	cmp	rbp, -1
	je	.L3404
.L3417:
	cmp	BYTE PTR 64[rsp], 0
	je	.L3500
	test	r13, r13
	je	.L3501
	mov	rax, rbp
	vmovq	rcx, xmm6
	mov	r10, rbp
	mov	r9d, 1
	sub	rax, rcx
.L3419:
	sub	r13, rax
	add	r9, r13
	jmp	.L3410
	.p2align 4,,10
	.p2align 3
.L3368:
	and	eax, 120
	mov	edx, 112
	cmp	al, 16
	mov	eax, 101
	cmovne	eax, edx
	xor	esi, esi
	mov	BYTE PTR 56[rsp], al
.L3370:
	mov	DWORD PTR 40[rsp], r13d
	lea	rbp, 112[rsp]
	lea	rbx, 241[rsp]
	vmovss	xmm3, xmm6, xmm6
	mov	DWORD PTR 32[rsp], 4
	lea	r8, 368[rsp]
	mov	rdx, rbx
	mov	rcx, rbp
	call	_ZSt8to_charsPcS_fSt12chars_formati
	cmp	DWORD PTR 120[rsp], 132
	mov	rdi, QWORD PTR 112[rsp]
	jne	.L3575
	mov	BYTE PTR 64[rsp], 0
	lea	rax, 8[r13]
	mov	edi, 1
	mov	ebx, 4
	jmp	.L3385
	.p2align 4,,10
	.p2align 3
.L3378:
	and	eax, 120
	mov	edx, 80
	mov	esi, 1
	cmp	al, 16
	mov	eax, 112
	cmove	eax, edx
	mov	BYTE PTR 56[rsp], al
.L3381:
	mov	DWORD PTR 32[rsp], 4
	lea	rbp, 112[rsp]
	lea	rbx, 241[rsp]
	vmovss	xmm3, xmm6, xmm6
	lea	r8, 368[rsp]
	mov	rdx, rbx
	mov	rcx, rbp
	mov	r13d, 6
	call	_ZSt8to_charsPcS_fSt12chars_format
	cmp	DWORD PTR 120[rsp], 132
	mov	rdi, QWORD PTR 112[rsp]
	je	.L3484
.L3575:
	lea	rax, 368[rsp]
	mov	BYTE PTR 64[rsp], 0
	mov	QWORD PTR 72[rsp], rax
.L3384:
	test	sil, sil
	je	.L3386
	mov	rbp, QWORD PTR __imp_toupper[rip]
	mov	rsi, rbx
	cmp	rbx, rdi
	je	.L3599
	.p2align 4
	.p2align 3
.L3403:
	movsx	ecx, BYTE PTR [rsi]
	add	rsi, 1
	call	rbp
	mov	BYTE PTR -1[rsi], al
	cmp	rdi, rsi
	jne	.L3403
	jmp	.L3386
	.p2align 4,,10
	.p2align 3
.L3364:
	mov	eax, r13d
	xor	esi, esi
.L3372:
	mov	BYTE PTR 56[rsp], 101
	mov	ebx, 2
	mov	BYTE PTR 64[rsp], 0
.L3382:
	mov	DWORD PTR 40[rsp], eax
	lea	rbp, 112[rsp]
	lea	r12, 241[rsp]
	vmovss	xmm3, xmm6, xmm6
	mov	DWORD PTR 32[rsp], ebx
	lea	r8, 368[rsp]
	mov	rdx, r12
	mov	rcx, rbp
	call	_ZSt8to_charsPcS_fSt12chars_formati
	cmp	DWORD PTR 120[rsp], 132
	mov	rdi, QWORD PTR 112[rsp]
	je	.L3472
	lea	rax, 368[rsp]
	mov	rbx, r12
	mov	QWORD PTR 72[rsp], rax
	jmp	.L3384
	.p2align 4,,10
	.p2align 3
.L3479:
	mov	BYTE PTR 56[rsp], 101
	mov	eax, 6
	mov	r13d, 6
	xor	esi, esi
.L3371:
	mov	BYTE PTR 64[rsp], 1
	mov	ebx, 3
	jmp	.L3382
	.p2align 4,,10
	.p2align 3
.L3379:
	and	eax, 120
	mov	edx, 101
	cmp	al, 16
	mov	eax, 112
	cmove	eax, edx
	xor	esi, esi
	mov	BYTE PTR 56[rsp], al
	jmp	.L3381
	.p2align 4,,10
	.p2align 3
.L3476:
	mov	eax, 6
	mov	r13d, 6
.L3377:
	mov	BYTE PTR 56[rsp], 69
	mov	esi, 1
.L3373:
	mov	BYTE PTR 64[rsp], 0
	mov	ebx, 1
	jmp	.L3382
	.p2align 4,,10
	.p2align 3
.L3477:
	mov	eax, 6
	mov	r13d, 6
	xor	esi, esi
	jmp	.L3372
	.p2align 4,,10
	.p2align 3
.L3475:
	mov	BYTE PTR 56[rsp], 101
	mov	eax, 6
	mov	r13d, 6
	xor	esi, esi
	jmp	.L3373
	.p2align 4,,10
	.p2align 3
.L3360:
	mov	eax, r13d
.L3374:
	mov	BYTE PTR 56[rsp], 69
	mov	esi, 1
	jmp	.L3371
	.p2align 4,,10
	.p2align 3
.L3369:
	mov	BYTE PTR 56[rsp], 101
	mov	eax, r13d
	mov	ebx, 3
	xor	esi, esi
	mov	BYTE PTR 64[rsp], 0
	jmp	.L3382
	.p2align 4,,10
	.p2align 3
.L3362:
	mov	BYTE PTR 56[rsp], 101
	mov	eax, r13d
	xor	esi, esi
	jmp	.L3371
	.p2align 4,,10
	.p2align 3
.L3363:
	mov	eax, r13d
.L3376:
	mov	esi, 1
	jmp	.L3372
	.p2align 4,,10
	.p2align 3
.L3366:
	mov	BYTE PTR 56[rsp], 101
	mov	eax, r13d
	xor	esi, esi
	jmp	.L3373
	.p2align 4,,10
	.p2align 3
.L3367:
	and	eax, 120
	mov	edx, 80
	mov	esi, 1
	cmp	al, 16
	mov	eax, 112
	cmove	eax, edx
	mov	BYTE PTR 56[rsp], al
	jmp	.L3370
	.p2align 4,,10
	.p2align 3
.L3365:
	mov	eax, r13d
	jmp	.L3377
	.p2align 4,,10
	.p2align 3
.L3480:
	mov	eax, 6
	mov	r13d, 6
	jmp	.L3374
	.p2align 4,,10
	.p2align 3
.L3478:
	mov	eax, 6
	mov	r13d, 6
	jmp	.L3376
	.p2align 4,,10
	.p2align 3
.L3595:
	mov	rdx, QWORD PTR 208[rsp]
	lea	rcx, 224[rsp]
	cmp	rdx, rcx
	je	.L3600
	vmovdqu	xmm0, XMMWORD PTR 216[rsp]
	mov	QWORD PTR 176[rsp], rdx
	vmovdqu	XMMWORD PTR 184[rsp], xmm0
.L3442:
	mov	QWORD PTR 208[rsp], rcx
	lea	rax, 224[rsp]
	jmp	.L3451
	.p2align 4,,10
	.p2align 3
.L3599:
	vxorps	xmm0, xmm0, xmm0
	movzx	r12d, BYTE PTR [r15]
	vcomiss	xmm6, xmm0
	jnb	.L3401
	xor	esi, esi
	test	r12b, 16
	je	.L3405
	mov	eax, 1
	xor	esi, esi
	vmovq	xmm6, rax
	.p2align 4
	.p2align 3
.L3404:
	mov	rbp, rsi
	jmp	.L3417
	.p2align 4,,10
	.p2align 3
.L3499:
	xor	r13d, r13d
	jmp	.L3410
	.p2align 4,,10
	.p2align 3
.L3593:
	lea	r13, 96[rsp]
	jmp	.L3454
.L3505:
	mov	rsi, rax
	.p2align 4
	.p2align 3
.L3455:
	movzx	ecx, WORD PTR 4[r15]
	mov	rdx, QWORD PTR 480[rsp]
	call	_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEyRT_.part.0.isra.0
.LEHE168:
	mov	r9, rax
	jmp	.L3457
	.p2align 4,,10
	.p2align 3
.L3585:
	xor	r9d, r9d
	cmp	rsi, r10
	mov	rbp, rsi
	sete	r9b
	cmp	BYTE PTR 64[rsp], 0
	je	.L3499
	vmovq	rax, xmm6
	cmp	BYTE PTR [rbx+rax], 48
	jne	.L3411
.L3577:
	mov	r11, -1
	jmp	.L3412
	.p2align 4,,10
	.p2align 3
.L3594:
	mov	rcx, r12
	call	_ZNSt6localeC1Ev
	mov	rax, QWORD PTR 480[rsp]
	mov	BYTE PTR 32[rax], 1
	jmp	.L3438
	.p2align 4,,10
	.p2align 3
.L3581:
	mov	rbx, r8
	movzx	r8d, WORD PTR 6[rcx]
	movzx	edx, BYTE PTR [rbx]
	mov	ecx, edx
	and	edx, 15
	and	ecx, 15
	cmp	r8, rdx
	jnb	.L3337
	mov	rbx, QWORD PTR [rbx]
	lea	rcx, [r8+r8*4]
	sal	r8, 4
	mov	rdx, rbx
	mov	QWORD PTR 56[rsp], rbx
	mov	rbx, QWORD PTR 480[rsp]
	shr	rdx, 4
	add	r8, QWORD PTR 8[rbx]
	shr	rdx, cl
	vmovdqu	xmm4, XMMWORD PTR [r8]
	and	edx, 31
	vmovdqu	XMMWORD PTR 208[rsp], xmm4
.L3338:
	mov	BYTE PTR 224[rsp], dl
	lea	rcx, .L3342[rip]
	movzx	edx, dl
	vmovdqu	ymm0, YMMWORD PTR 208[rsp]
	movsx	rdx, DWORD PTR [rcx+rdx*4]
	vmovdqu	YMMWORD PTR 176[rsp], ymm0
	add	rdx, rcx
	jmp	rdx
	.section .rdata,"dr"
	.align 4
.L3342:
	.long	.L3573-.L3342
	.long	.L3356-.L3342
	.long	.L3355-.L3342
	.long	.L3354-.L3342
	.long	.L3353-.L3342
	.long	.L3352-.L3342
	.long	.L3351-.L3342
	.long	.L3350-.L3342
	.long	.L3349-.L3342
	.long	.L3348-.L3342
	.long	.L3347-.L3342
	.long	.L3346-.L3342
	.long	.L3345-.L3342
	.long	.L3344-.L3342
	.long	.L3343-.L3342
	.long	.L3341-.L3342
	.section	.text$_ZNKSt8__format14__formatter_fpIcE6formatIfNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,"x"
	.linkonce discard
	.p2align 4,,10
	.p2align 3
.L3424:
	cmp	rax, rbp
	jb	.L3601
	xor	r8d, r8d
	mov	rdx, rbp
	mov	rcx, r12
	mov	QWORD PTR 64[rsp], r10
	mov	DWORD PTR 32[rsp], 48
.LEHB169:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEyyyc.isra.0
	mov	r10, QWORD PTR 64[rsp]
	cmp	r10, rbp
	jne	.L3435
	mov	rax, QWORD PTR 144[rsp]
	mov	BYTE PTR [rax+r10], 46
	jmp	.L3435
	.p2align 4,,10
	.p2align 3
.L3500:
	mov	r10, rbp
	mov	r9d, 1
	xor	r13d, r13d
	jmp	.L3418
	.p2align 4,,10
	.p2align 3
.L3506:
	mov	r8d, 2
	mov	edx, 32
	jmp	.L3461
.L3600:
	mov	rdx, QWORD PTR 216[rsp]
	mov	r10, rdx
	.p2align 4
	.p2align 3
.L3470:
	test	rdx, rdx
	je	.L3443
	cmp	rdx, 1
	je	.L3602
	mov	eax, edx
	cmp	edx, 8
	jnb	.L3445
	test	dl, 4
	jne	.L3603
	test	edx, edx
	je	.L3446
	movzx	r8d, BYTE PTR 224[rsp]
	and	edx, 2
	mov	BYTE PTR [r9], r8b
	jne	.L3565
.L3578:
	mov	r9, QWORD PTR 176[rsp]
	mov	rdx, QWORD PTR 216[rsp]
.L3446:
	mov	r10, rdx
	mov	rax, r9
.L3443:
	mov	QWORD PTR 184[rsp], r10
	mov	BYTE PTR [rax+r10], 0
	mov	rax, QWORD PTR 208[rsp]
	jmp	.L3451
	.p2align 4,,10
	.p2align 3
.L3421:
	lea	rcx, [r9+rbp]
	lea	rdi, [rbx+rbp]
	mov	r8, rsi
	mov	QWORD PTR 72[rsp], r10
	add	rcx, rbx
	sub	r8, rbp
	mov	rdx, rdi
	mov	QWORD PTR 64[rsp], r9
	call	memmove
	mov	r10, QWORD PTR 72[rsp]
	mov	r9, QWORD PTR 64[rsp]
	cmp	r10, rbp
	je	.L3604
.L3423:
	mov	r8, r13
	mov	edx, 48
	mov	rcx, rdi
	mov	QWORD PTR 64[rsp], r9
	call	memset
	mov	r9, QWORD PTR 64[rsp]
	movzx	r12d, BYTE PTR [r15]
	add	rsi, r9
	jmp	.L3405
	.p2align 4,,10
	.p2align 3
.L3337:
	test	cl, cl
	jne	.L3339
	mov	rbx, QWORD PTR [rbx]
	mov	rdx, rbx
	mov	QWORD PTR 56[rsp], rbx
	shr	rdx, 4
	cmp	r8, rdx
	jb	.L3605
.L3339:
	lea	r12, 144[rsp]
	call	_ZNSt8__format33__invalid_arg_id_in_format_stringEv
	.p2align 4,,10
	.p2align 3
.L3501:
	mov	r10, rbp
	mov	r9d, 1
	jmp	.L3418
.L3497:
	mov	rbp, rsi
	jmp	.L3413
.L3507:
	mov	r8d, 2
	mov	edx, 48
	jmp	.L3461
.L3604:
	mov	BYTE PTR [rdi], 46
	lea	rdi, 1[rbx+r10]
	jmp	.L3423
.L3351:
	mov	r13, QWORD PTR 176[rsp]
	vzeroupper
	jmp	.L3336
.L3352:
	mov	r13, QWORD PTR 176[rsp]
	test	r13, r13
	js	.L3606
.L3574:
	vzeroupper
	jmp	.L3336
.L3353:
	mov	r13d, DWORD PTR 176[rsp]
	vzeroupper
	jmp	.L3336
.L3354:
	movsx	r13, DWORD PTR 176[rsp]
	test	r13d, r13d
	jns	.L3574
	lea	rcx, .LC3[rip]
	lea	r12, 144[rsp]
	vzeroupper
	call	_ZSt20__throw_format_errorPKc
	.p2align 4,,10
	.p2align 3
.L3573:
	vzeroupper
	jmp	.L3339
.L3582:
	lea	r12, 144[rsp]
	mov	edx, 256
	mov	rcx, r12
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy
	mov	rax, QWORD PTR 144[rsp]
.L3387:
	cmp	rax, r14
	je	.L3487
	mov	rax, QWORD PTR 160[rsp]
	lea	rbx, [rax+rax]
.L3392:
	mov	rdx, rbx
	mov	rcx, r12
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy
	mov	r9, QWORD PTR 144[rsp]
	vmovss	xmm3, xmm6, xmm6
	mov	rcx, rbp
	lea	rdx, 1[r9]
	lea	r8, -1[r9+rbx]
	mov	QWORD PTR 56[rsp], r9
	call	_ZSt8to_charsPcS_f
	mov	rdx, QWORD PTR 120[rsp]
	mov	rax, QWORD PTR 112[rsp]
	mov	r9, QWORD PTR 56[rsp]
	test	edx, edx
	mov	rdi, rax
	je	.L3488
	mov	rax, QWORD PTR 144[rsp]
	mov	QWORD PTR 152[rsp], 0
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR 144[rsp]
	cmp	edx, 132
	je	.L3387
	mov	BYTE PTR 64[rsp], 0
	mov	r13d, 6
	xor	esi, esi
	mov	BYTE PTR 56[rsp], 101
.L3394:
	lea	rbx, 1[rax]
	add	rax, QWORD PTR 152[rsp]
	mov	QWORD PTR 72[rsp], rax
	jmp	.L3384
.L3484:
	mov	BYTE PTR 64[rsp], 0
	xor	edi, edi
	mov	ebx, 4
.L3389:
	lea	r12, 144[rsp]
	mov	edx, 256
	mov	rcx, r12
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy
	mov	rax, QWORD PTR 144[rsp]
	test	dil, dil
	jne	.L3399
.L3396:
	cmp	rax, r14
	je	.L3489
	mov	rax, QWORD PTR 160[rsp]
	lea	rdi, [rax+rax]
.L3395:
	mov	rdx, rdi
	mov	rcx, r12
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy
	mov	r9, QWORD PTR 144[rsp]
	mov	DWORD PTR 32[rsp], ebx
	vmovss	xmm3, xmm6, xmm6
	mov	rcx, rbp
	lea	rdx, 1[r9]
	lea	r8, -1[r9+rdi]
	mov	QWORD PTR 72[rsp], r9
	call	_ZSt8to_charsPcS_fSt12chars_format
	mov	rdx, QWORD PTR 120[rsp]
	mov	rax, QWORD PTR 112[rsp]
	mov	r9, QWORD PTR 72[rsp]
	test	edx, edx
	mov	rdi, rax
	je	.L3393
	mov	rax, QWORD PTR 144[rsp]
	mov	QWORD PTR 152[rsp], 0
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR 144[rsp]
	cmp	edx, 132
	jne	.L3394
	jmp	.L3396
.L3472:
	lea	rax, 8[r13]
	mov	edi, 1
	cmp	ebx, 2
	je	.L3607
.L3385:
	cmp	rax, 128
	jbe	.L3389
	lea	r12, 144[rsp]
	mov	rdx, rax
	mov	rcx, r12
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy
	mov	rax, QWORD PTR 144[rsp]
.L3399:
	cmp	rax, r14
	je	.L3490
	mov	rax, QWORD PTR 160[rsp]
	lea	rdi, [rax+rax]
.L3397:
	mov	rdx, rdi
	mov	rcx, r12
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy
	mov	r9, QWORD PTR 144[rsp]
	mov	DWORD PTR 40[rsp], r13d
	vmovss	xmm3, xmm6, xmm6
	mov	rcx, rbp
	mov	DWORD PTR 32[rsp], ebx
	lea	rdx, 1[r9]
	lea	r8, -1[r9+rdi]
	mov	QWORD PTR 72[rsp], r9
	call	_ZSt8to_charsPcS_fSt12chars_formati
	mov	rax, QWORD PTR 112[rsp]
	mov	rdx, QWORD PTR 120[rsp]
	mov	rdi, rax
	test	edx, edx
	jne	.L3398
	mov	r9, QWORD PTR 72[rsp]
.L3393:
	mov	rdx, QWORD PTR 144[rsp]
	sub	rax, r9
	mov	QWORD PTR 152[rsp], rax
	mov	BYTE PTR [rdx+rax], 0
	mov	rax, QWORD PTR 144[rsp]
	lea	rbx, 1[rax]
	add	rax, QWORD PTR 152[rsp]
	mov	QWORD PTR 72[rsp], rax
	jmp	.L3384
.L3432:
	mov	QWORD PTR 32[rsp], rsi
	xor	r8d, r8d
	mov	rcx, r12
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEyyPKcy
	mov	rax, QWORD PTR 144[rsp]
	jmp	.L3433
.L3587:
	mov	DWORD PTR 32[rsp], 48
	mov	r9, r13
	xor	r8d, r8d
	mov	rcx, r12
	mov	rdx, QWORD PTR 152[rsp]
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEyyyc.isra.0
	jmp	.L3428
.L3607:
	lea	rdx, 208[rsp]
	mov	QWORD PTR 72[rsp], rax
	vmovss	xmm0, xmm6, xmm6
	mov	DWORD PTR 208[rsp], 0
	call	frexpf
	mov	edx, DWORD PTR 208[rsp]
	mov	rax, QWORD PTR 72[rsp]
	test	edx, edx
	jle	.L3388
	imul	ecx, edx, 4004
	mov	rdx, rcx
	imul	rcx, rcx, 995517945
	shr	rcx, 32
	sub	edx, ecx
	shr	edx
	add	edx, ecx
	shr	edx, 13
	add	edx, 1
	add	rax, rdx
.L3388:
	mov	edi, 1
	jmp	.L3385
.L3586:
	mov	rdi, QWORD PTR 152[rsp]
	mov	rax, QWORD PTR 144[rsp]
	lea	r10, 1[rdi]
	cmp	rax, r14
	je	.L3502
	mov	rdx, QWORD PTR 160[rsp]
.L3426:
	cmp	rdx, r10
	jb	.L3608
.L3427:
	mov	BYTE PTR [rax+rdi], 46
	mov	rax, QWORD PTR 144[rsp]
	mov	QWORD PTR 152[rsp], r10
	mov	BYTE PTR 1[rax+rdi], 0
	jmp	.L3425
.L3488:
	mov	BYTE PTR 64[rsp], 0
	mov	r13d, 6
	xor	esi, esi
	mov	BYTE PTR 56[rsp], 101
	jmp	.L3393
.L3398:
	mov	rax, QWORD PTR 144[rsp]
	mov	QWORD PTR 152[rsp], 0
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR 144[rsp]
	cmp	edx, 132
	jne	.L3394
	jmp	.L3399
.L3503:
	mov	ecx, 15
	jmp	.L3431
.L3605:
	mov	rbx, QWORD PTR 480[rsp]
	sal	r8, 5
	add	r8, QWORD PTR 8[rbx]
	vmovdqu	xmm5, XMMWORD PTR [r8]
	vmovdqu	XMMWORD PTR 208[rsp], xmm5
	movzx	edx, BYTE PTR 16[r8]
	mov	BYTE PTR 224[rsp], dl
	movzx	edx, BYTE PTR 16[r8]
	jmp	.L3338
.L3590:
	movzx	eax, BYTE PTR [r9]
	mov	BYTE PTR [rcx], al
	mov	rax, QWORD PTR 144[rsp]
	jmp	.L3433
.L3445:
	mov	rax, QWORD PTR 224[rsp]
	mov	QWORD PTR [r9], rax
	mov	eax, edx
	mov	r8, QWORD PTR -8[rcx+rax]
	mov	QWORD PTR -8[r9+rax], r8
	lea	r8, 8[r9]
	mov	rax, r9
	and	r8, -8
	sub	rax, r8
	sub	rcx, rax
	add	eax, edx
	and	eax, -8
	cmp	eax, 8
	jb	.L3578
	and	eax, -8
	xor	edx, edx
.L3449:
	mov	r9d, edx
	add	edx, 8
	mov	r10, QWORD PTR [rcx+r9]
	mov	QWORD PTR [r8+r9], r10
	cmp	edx, eax
	jb	.L3449
	jmp	.L3578
.L3602:
	movzx	eax, BYTE PTR 224[rsp]
	mov	BYTE PTR [r9], al
	mov	r10, QWORD PTR 216[rsp]
	mov	rax, QWORD PTR 176[rsp]
	jmp	.L3443
.L3489:
	mov	edi, 30
	jmp	.L3395
.L3487:
	mov	ebx, 30
	jmp	.L3392
.L3490:
	mov	edi, 30
	jmp	.L3397
.L3608:
	xor	r9d, r9d
	xor	r8d, r8d
	mov	rdx, rdi
	mov	rcx, r12
	mov	QWORD PTR 32[rsp], 1
	mov	QWORD PTR 64[rsp], r10
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEyyPKcy
.LEHE169:
	mov	rax, QWORD PTR 144[rsp]
	mov	r10, QWORD PTR 64[rsp]
	jmp	.L3427
.L3597:
	mov	rax, QWORD PTR [rcx]
	mov	QWORD PTR 64[rsp], r9
	mov	QWORD PTR 56[rsp], rcx
.LEHB170:
	call	[QWORD PTR [rax]]
.LEHE170:
	mov	r9, QWORD PTR 64[rsp]
	mov	rcx, QWORD PTR 56[rsp]
	jmp	.L3462
.L3502:
	mov	edx, 15
	jmp	.L3426
.L3603:
	mov	edx, DWORD PTR 224[rsp]
	mov	DWORD PTR [r9], edx
	mov	edx, DWORD PTR -4[rcx+rax]
	mov	DWORD PTR -4[r9+rax], edx
	mov	r9, QWORD PTR 176[rsp]
	mov	rdx, QWORD PTR 216[rsp]
	jmp	.L3446
.L3565:
	movzx	edx, WORD PTR -2[rcx+rax]
	mov	WORD PTR -2[r9+rax], dx
	mov	r9, QWORD PTR 176[rsp]
	mov	rdx, QWORD PTR 216[rsp]
	jmp	.L3446
.L3508:
	mov	rbx, rax
	vzeroupper
.L3467:
	mov	rcx, r12
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	rcx, rbx
.LEHB171:
	call	_Unwind_Resume
.LEHE171:
.L3355:
	lea	rcx, .LC3[rip]
	lea	r12, 144[rsp]
	vzeroupper
.LEHB172:
	call	_ZSt20__throw_format_errorPKc
.L3340:
.L3509:
	mov	rcx, rdi
	mov	rbx, rax
	vzeroupper
	call	_ZNSt6localeD1Ev
.L3466:
	lea	rcx, 176[rsp]
	lea	r12, 144[rsp]
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	.L3467
.L3589:
	lea	rcx, .LC16[rip]
	call	_ZSt20__throw_length_errorPKc
.L3341:
	lea	rcx, .LC3[rip]
	lea	r12, 144[rsp]
	vzeroupper
	call	_ZSt20__throw_format_errorPKc
.L3588:
	mov	r9, rsi
	mov	r8, rbp
	lea	rdx, .LC50[rip]
	lea	rcx, .LC48[rip]
	call	_ZSt24__throw_out_of_range_fmtPKcz
.L3510:
	mov	rbx, rax
	vzeroupper
	jmp	.L3466
.L3346:
	lea	rcx, .LC3[rip]
	lea	r12, 144[rsp]
	vzeroupper
	call	_ZSt20__throw_format_errorPKc
.L3347:
	lea	rcx, .LC3[rip]
	lea	r12, 144[rsp]
	vzeroupper
	call	_ZSt20__throw_format_errorPKc
.L3348:
	lea	rcx, .LC3[rip]
	lea	r12, 144[rsp]
	vzeroupper
	call	_ZSt20__throw_format_errorPKc
.L3349:
	lea	rcx, .LC3[rip]
	lea	r12, 144[rsp]
	vzeroupper
	call	_ZSt20__throw_format_errorPKc
.L3601:
	mov	r9, rax
	mov	r8, rbp
	lea	rdx, .LC51[rip]
	lea	rcx, .LC52[rip]
	call	_ZSt24__throw_out_of_range_fmtPKcz
.L3343:
	lea	rcx, .LC3[rip]
	lea	r12, 144[rsp]
	vzeroupper
	call	_ZSt20__throw_format_errorPKc
.L3344:
	lea	rcx, .LC3[rip]
	lea	r12, 144[rsp]
	vzeroupper
	call	_ZSt20__throw_format_errorPKc
.L3345:
	lea	rcx, .LC3[rip]
	lea	r12, 144[rsp]
	vzeroupper
	call	_ZSt20__throw_format_errorPKc
.L3350:
	lea	rcx, .LC3[rip]
	lea	r12, 144[rsp]
	vzeroupper
	call	_ZSt20__throw_format_errorPKc
.L3606:
	lea	rcx, .LC3[rip]
	lea	r12, 144[rsp]
	vzeroupper
	call	_ZSt20__throw_format_errorPKc
.L3356:
	lea	rcx, .LC3[rip]
	lea	r12, 144[rsp]
	vzeroupper
	call	_ZSt20__throw_format_errorPKc
	nop
.LEHE172:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA9454:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9454-.LLSDACSB9454
.LLSDACSB9454:
	.uleb128 .LEHB166-.LFB9454
	.uleb128 .LEHE166-.LEHB166
	.uleb128 .L3508-.LFB9454
	.uleb128 0
	.uleb128 .LEHB167-.LFB9454
	.uleb128 .LEHE167-.LEHB167
	.uleb128 .L3509-.LFB9454
	.uleb128 0
	.uleb128 .LEHB168-.LFB9454
	.uleb128 .LEHE168-.LEHB168
	.uleb128 .L3510-.LFB9454
	.uleb128 0
	.uleb128 .LEHB169-.LFB9454
	.uleb128 .LEHE169-.LEHB169
	.uleb128 .L3508-.LFB9454
	.uleb128 0
	.uleb128 .LEHB170-.LFB9454
	.uleb128 .LEHE170-.LEHB170
	.uleb128 .L3510-.LFB9454
	.uleb128 0
	.uleb128 .LEHB171-.LFB9454
	.uleb128 .LEHE171-.LEHB171
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB172-.LFB9454
	.uleb128 .LEHE172-.LEHB172
	.uleb128 .L3508-.LFB9454
	.uleb128 0
.LLSDACSE9454:
	.section	.text$_ZNKSt8__format14__formatter_fpIcE6formatIfNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,"x"
	.linkonce discard
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC56:
	.ascii "format error: format-spec contains invalid formatting options for 'bool'\0"
	.align 8
.LC57:
	.ascii "format error: format-spec contains invalid formatting options for 'charT'\0"
	.section	.text$_ZNSt16basic_format_argISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE8_M_visitIZNS1_19_Formatting_scannerIS3_cE13_M_format_argEyEUlRT_E_EEDcOS9_NS1_6_Arg_tE,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNSt16basic_format_argISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE8_M_visitIZNS1_19_Formatting_scannerIS3_cE13_M_format_argEyEUlRT_E_EEDcOS9_NS1_6_Arg_tE
	.def	_ZNSt16basic_format_argISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE8_M_visitIZNS1_19_Formatting_scannerIS3_cE13_M_format_argEyEUlRT_E_EEDcOS9_NS1_6_Arg_tE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16basic_format_argISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE8_M_visitIZNS1_19_Formatting_scannerIS3_cE13_M_format_argEyEUlRT_E_EEDcOS9_NS1_6_Arg_tE
_ZNSt16basic_format_argISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE8_M_visitIZNS1_19_Formatting_scannerIS3_cE13_M_format_argEyEUlRT_E_EEDcOS9_NS1_6_Arg_tE:
.LFB9227:
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
	sub	rsp, 416
	.seh_stackalloc	416
	.seh_endprologue
	mov	rbx, rdx
	movzx	r8d, r8b
	lea	rdx, .L3612[rip]
	mov	rsi, rcx
	movsx	rax, DWORD PTR [rdx+r8*4]
	add	rax, rdx
	jmp	rax
	.section .rdata,"dr"
	.align 4
.L3612:
	.long	.L3627-.L3612
	.long	.L3626-.L3612
	.long	.L3625-.L3612
	.long	.L3624-.L3612
	.long	.L3623-.L3612
	.long	.L3622-.L3612
	.long	.L3621-.L3612
	.long	.L3620-.L3612
	.long	.L3619-.L3612
	.long	.L3618-.L3612
	.long	.L3617-.L3612
	.long	.L3616-.L3612
	.long	.L3615-.L3612
	.long	.L3614-.L3612
	.long	.L3613-.L3612
	.long	.L3611-.L3612
	.section	.text$_ZNSt16basic_format_argISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE8_M_visitIZNS1_19_Formatting_scannerIS3_cE13_M_format_argEyEUlRT_E_EEDcOS9_NS1_6_Arg_tE,"x"
	.linkonce discard
	.p2align 4,,10
	.p2align 3
.L3613:
	mov	rbp, QWORD PTR [rbx]
	lea	rdi, 208[rsp]
	mov	r8d, 1
	mov	QWORD PTR 208[rsp], 0
	mov	DWORD PTR 216[rsp], 32
	mov	rcx, rdi
	lea	rdx, 8[rbp]
.LEHB173:
	call	_ZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeE
	vmovdqu	xmm3, XMMWORD PTR [rsi]
	lea	rdx, 64[rsp]
	mov	rcx, rdi
	mov	QWORD PTR 8[rbp], rax
	mov	rax, QWORD PTR [rbx]
	mov	r8, QWORD PTR 48[rax]
	vmovdqu	XMMWORD PTR 64[rsp], xmm3
	mov	QWORD PTR 56[rsp], r8
	call	_ZNKSt8__format15__formatter_intIcE6formatInNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
	mov	r8, QWORD PTR 56[rsp]
	mov	QWORD PTR 16[r8], rax
.L3868:
	add	rsp, 416
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
.L3611:
	mov	rbp, QWORD PTR [rbx]
	lea	rdi, 208[rsp]
	mov	r8d, 1
	mov	QWORD PTR 208[rsp], 0
	mov	DWORD PTR 216[rsp], 32
	mov	rcx, rdi
	lea	rdx, 8[rbp]
	call	_ZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeE
	vmovdqu	xmm4, XMMWORD PTR [rsi]
	lea	rdx, 64[rsp]
	mov	rcx, rdi
	mov	QWORD PTR 8[rbp], rax
	mov	rax, QWORD PTR [rbx]
	mov	r8, QWORD PTR 48[rax]
	vmovdqu	XMMWORD PTR 64[rsp], xmm4
	mov	QWORD PTR 56[rsp], r8
	call	_ZNKSt8__format15__formatter_intIcE6formatIoNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
	mov	r8, QWORD PTR 56[rsp]
	mov	QWORD PTR 16[r8], rax
	jmp	.L3868
	.p2align 4,,10
	.p2align 3
.L3626:
	mov	rdi, QWORD PTR [rbx]
	xor	r8d, r8d
	lea	r13, 148[rsp]
	mov	QWORD PTR 148[rsp], 0
	mov	DWORD PTR 156[rsp], 32
	mov	rcx, r13
	lea	rdx, 8[rdi]
	call	_ZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeE
.LEHE173:
	movzx	ecx, BYTE PTR 149[rsp]
	and	ecx, 120
	jne	.L3628
	movzx	edx, BYTE PTR 148[rsp]
	test	dl, 92
	jne	.L3876
	mov	QWORD PTR 8[rdi], rax
	mov	rax, QWORD PTR [rbx]
	and	edx, 32
	lea	rbx, 176[rsp]
	movzx	esi, BYTE PTR [rsi]
	mov	r12, QWORD PTR 48[rax]
	mov	QWORD PTR 160[rsp], rbx
	mov	QWORD PTR 168[rsp], 0
	mov	BYTE PTR 176[rsp], 0
	jne	.L3877
	mov	eax, 5
	lea	r9, .LC12[rip]
	test	sil, sil
	je	.L3646
	mov	eax, 4
	lea	r9, .LC13[rip]
.L3646:
	mov	QWORD PTR 32[rsp], rax
	lea	rdi, 160[rsp]
	xor	r8d, r8d
	xor	edx, edx
	mov	rcx, rdi
.LEHB174:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy.isra.0
	mov	rdx, QWORD PTR 168[rsp]
.L3645:
	lea	rcx, 112[rsp]
	mov	r9, r13
	mov	r8, r12
	mov	QWORD PTR 112[rsp], rdx
	mov	DWORD PTR 32[rsp], 1
	mov	rax, QWORD PTR 160[rsp]
	mov	QWORD PTR 120[rsp], rax
	call	_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEyRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE
.LEHE174:
	mov	rcx, rdi
	mov	rbx, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	.L3633
	.p2align 4,,10
	.p2align 3
.L3625:
	mov	rdi, QWORD PTR [rbx]
	lea	rbp, 208[rsp]
	mov	r8d, 7
	mov	QWORD PTR 208[rsp], 0
	mov	DWORD PTR 216[rsp], 32
	mov	rcx, rbp
	lea	rdx, 8[rdi]
.LEHB175:
	call	_ZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeE
	movzx	edx, BYTE PTR 209[rsp]
	mov	ecx, edx
	not	edx
	and	ecx, 120
	and	edx, 56
	jne	.L3650
	test	BYTE PTR 208[rsp], 92
	jne	.L3878
	mov	QWORD PTR 8[rdi], rax
	mov	rax, QWORD PTR [rbx]
	mov	rbx, QWORD PTR 48[rax]
	cmp	cl, 56
	je	.L3879
	mov	rax, QWORD PTR 16[rbx]
	jmp	.L3875
	.p2align 4,,10
	.p2align 3
.L3624:
	mov	rdi, QWORD PTR [rbx]
	lea	r12, 136[rsp]
	mov	r8d, 1
	mov	QWORD PTR 136[rsp], 0
	mov	DWORD PTR 144[rsp], 32
	mov	rcx, r12
	lea	rdx, 8[rdi]
	call	_ZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeE
	mov	QWORD PTR 8[rdi], rax
	mov	rax, QWORD PTR [rbx]
	mov	ebx, DWORD PTR [rsi]
	mov	rbp, QWORD PTR 48[rax]
	movzx	eax, BYTE PTR 137[rsp]
	mov	r9d, ebx
	mov	esi, eax
	and	esi, 120
	cmp	sil, 56
	je	.L3880
	shr	al, 3
	and	eax, 15
	test	ebx, ebx
	js	.L3881
	cmp	al, 3
	ja	.L3664
	cmp	al, 1
	ja	.L3882
	test	ebx, ebx
	jne	.L3660
.L3871:
	mov	BYTE PTR 163[rsp], 48
	movzx	ecx, BYTE PTR 136[rsp]
.L3677:
	lea	rdi, 163[rsp]
	lea	rdx, 162[rsp]
	mov	rax, rdi
	lea	r13, 164[rsp]
.L3695:
	shr	cl, 2
	and	ecx, 3
	cmp	ecx, 1
	je	.L3883
	cmp	ecx, 3
	je	.L3884
.L3698:
	mov	rdx, r13
	sub	rdi, rax
	mov	r9, rbp
	mov	rcx, r12
	sub	rdx, rax
	mov	r8, rdi
	mov	QWORD PTR 120[rsp], rax
	mov	QWORD PTR 112[rsp], rdx
	lea	rdx, 112[rsp]
	call	_ZNKSt8__format15__formatter_intIcE13_M_format_intINS_10_Sink_iterIcEEEENSt20basic_format_contextIT_cE8iteratorESt17basic_string_viewIcSt11char_traitsIcEEyRS7_
.L3729:
	mov	QWORD PTR 16[rbp], rax
	jmp	.L3868
	.p2align 4,,10
	.p2align 3
.L3623:
	mov	rbp, QWORD PTR [rbx]
	lea	rdi, 160[rsp]
	mov	r8d, 1
	mov	QWORD PTR 160[rsp], 0
	mov	DWORD PTR 168[rsp], 32
	mov	rcx, rdi
	lea	rdx, 8[rbp]
	call	_ZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeE
	mov	r9d, DWORD PTR [rsi]
	mov	QWORD PTR 8[rbp], rax
	mov	rax, QWORD PTR [rbx]
	mov	rbp, QWORD PTR 48[rax]
	movzx	eax, BYTE PTR 161[rsp]
	mov	esi, eax
	and	esi, 120
	cmp	sil, 56
	je	.L3885
	shr	al, 3
	and	eax, 15
	cmp	al, 4
	je	.L3702
	ja	.L3703
	cmp	al, 1
	jbe	.L3704
	cmp	sil, 16
	lea	rcx, .LC41[rip]
	lea	rax, .LC42[rip]
	cmovne	rcx, rax
	test	r9d, r9d
	jne	.L3886
	mov	eax, 48
	lea	r12, 212[rsp]
	lea	rbx, 211[rsp]
.L3709:
	mov	BYTE PTR 211[rsp], al
	movzx	eax, BYTE PTR 160[rsp]
	test	al, 16
	je	.L3873
.L3807:
	mov	rdx, -2
	mov	r8d, 2
.L3713:
	add	rdx, rbx
	mov	r10d, r8d
	test	r8d, r8d
	je	.L3714
	xor	r8d, r8d
.L3724:
	mov	r9d, r8d
	add	r8d, 1
	movzx	r11d, BYTE PTR [rcx+r9]
	mov	BYTE PTR [rdx+r9], r11b
	cmp	r8d, r10d
	jb	.L3724
	.p2align 4
	.p2align 3
.L3714:
	shr	al, 2
	and	eax, 3
	cmp	eax, 1
	je	.L3809
	cmp	eax, 3
	je	.L3887
.L3727:
	mov	rax, r12
	sub	rbx, rdx
	mov	QWORD PTR 120[rsp], rdx
	mov	r9, rbp
	sub	rax, rdx
	mov	r8, rbx
	mov	rcx, rdi
	mov	QWORD PTR 112[rsp], rax
	lea	rax, 112[rsp]
	mov	rdx, rax
	call	_ZNKSt8__format15__formatter_intIcE13_M_format_intINS_10_Sink_iterIcEEEENSt20basic_format_contextIT_cE8iteratorESt17basic_string_viewIcSt11char_traitsIcEEyRS7_
	jmp	.L3729
	.p2align 4,,10
	.p2align 3
.L3622:
	mov	rbp, QWORD PTR [rbx]
	lea	rdi, 208[rsp]
	mov	r8d, 1
	mov	QWORD PTR 208[rsp], 0
	mov	DWORD PTR 216[rsp], 32
	mov	rcx, rdi
	lea	rdx, 8[rbp]
	call	_ZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeE
	mov	rdx, QWORD PTR [rsi]
	mov	rcx, rdi
	mov	QWORD PTR 8[rbp], rax
	mov	rax, QWORD PTR [rbx]
	mov	r8, QWORD PTR 48[rax]
	mov	QWORD PTR 56[rsp], r8
	call	_ZNKSt8__format15__formatter_intIcE6formatIxNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
	mov	r8, QWORD PTR 56[rsp]
	mov	QWORD PTR 16[r8], rax
	jmp	.L3868
	.p2align 4,,10
	.p2align 3
.L3621:
	mov	rdi, QWORD PTR [rbx]
	lea	r13, 148[rsp]
	mov	r8d, 1
	mov	QWORD PTR 148[rsp], 0
	mov	DWORD PTR 156[rsp], 32
	mov	rcx, r13
	lea	rdx, 8[rdi]
	call	_ZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeE
	mov	r8, QWORD PTR [rsi]
	mov	QWORD PTR 8[rdi], rax
	mov	rax, QWORD PTR [rbx]
	mov	rbp, QWORD PTR 48[rax]
	movzx	eax, BYTE PTR 149[rsp]
	mov	r10d, eax
	and	r10d, 120
	cmp	r10b, 56
	je	.L3888
	shr	al, 3
	and	eax, 15
	cmp	al, 4
	je	.L3730
	ja	.L3731
	cmp	al, 1
	jbe	.L3732
	cmp	r10b, 16
	lea	r12, .LC41[rip]
	lea	rax, .LC42[rip]
	cmovne	r12, rax
	test	r8, r8
	jne	.L3889
	mov	eax, 48
	lea	rdi, 212[rsp]
	lea	rbx, 211[rsp]
.L3737:
	mov	BYTE PTR 211[rsp], al
	movzx	eax, BYTE PTR 148[rsp]
	test	al, 16
	je	.L3874
.L3818:
	mov	rdx, -2
	mov	ecx, 2
.L3741:
	add	rdx, rbx
	mov	r9d, ecx
	test	ecx, ecx
	je	.L3742
	xor	ecx, ecx
.L3765:
	mov	r8d, ecx
	add	ecx, 1
	movzx	r10d, BYTE PTR [r12+r8]
	mov	BYTE PTR [rdx+r8], r10b
	cmp	ecx, r9d
	jb	.L3765
	.p2align 4
	.p2align 3
.L3742:
	shr	al, 2
	and	eax, 3
	cmp	eax, 1
	je	.L3820
	cmp	eax, 3
	je	.L3890
.L3768:
	mov	rax, rdi
	sub	rbx, rdx
	mov	QWORD PTR 120[rsp], rdx
	mov	r9, rbp
	sub	rax, rdx
	mov	r8, rbx
	mov	rcx, r13
	mov	QWORD PTR 112[rsp], rax
	lea	rax, 112[rsp]
	mov	rdx, rax
	call	_ZNKSt8__format15__formatter_intIcE13_M_format_intINS_10_Sink_iterIcEEEENSt20basic_format_contextIT_cE8iteratorESt17basic_string_viewIcSt11char_traitsIcEEyRS7_
	jmp	.L3729
	.p2align 4,,10
	.p2align 3
.L3620:
	mov	rbp, QWORD PTR [rbx]
	lea	rdi, 208[rsp]
	mov	QWORD PTR 208[rsp], 0
	mov	DWORD PTR 216[rsp], 32
	mov	rcx, rdi
	lea	rdx, 8[rbp]
	call	_ZNSt8__format14__formatter_fpIcE5parseERSt26basic_format_parse_contextIcE
	vmovss	xmm1, DWORD PTR [rsi]
	mov	rcx, rdi
	mov	QWORD PTR 8[rbp], rax
	mov	rax, QWORD PTR [rbx]
	mov	r8, QWORD PTR 48[rax]
	mov	QWORD PTR 56[rsp], r8
	call	_ZNKSt8__format14__formatter_fpIcE6formatIfNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
	mov	r8, QWORD PTR 56[rsp]
	mov	QWORD PTR 16[r8], rax
	jmp	.L3868
	.p2align 4,,10
	.p2align 3
.L3619:
	mov	rbp, QWORD PTR [rbx]
	lea	rdi, 208[rsp]
	mov	QWORD PTR 208[rsp], 0
	mov	DWORD PTR 216[rsp], 32
	mov	rcx, rdi
	lea	rdx, 8[rbp]
	call	_ZNSt8__format14__formatter_fpIcE5parseERSt26basic_format_parse_contextIcE
	vmovsd	xmm1, QWORD PTR [rsi]
	mov	rcx, rdi
	mov	QWORD PTR 8[rbp], rax
	mov	rax, QWORD PTR [rbx]
	mov	r8, QWORD PTR 48[rax]
	mov	QWORD PTR 56[rsp], r8
	call	_ZNKSt8__format14__formatter_fpIcE6formatIdNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
	mov	r8, QWORD PTR 56[rsp]
	mov	QWORD PTR 16[r8], rax
	jmp	.L3868
	.p2align 4,,10
	.p2align 3
.L3618:
	mov	rbp, QWORD PTR [rbx]
	lea	rdi, 208[rsp]
	mov	QWORD PTR 208[rsp], 0
	mov	DWORD PTR 216[rsp], 32
	mov	rcx, rdi
	lea	rdx, 8[rbp]
	call	_ZNSt8__format14__formatter_fpIcE5parseERSt26basic_format_parse_contextIcE
	fld	TBYTE PTR [rsi]
	lea	rdx, 80[rsp]
	mov	rcx, rdi
	mov	QWORD PTR 8[rbp], rax
	mov	rax, QWORD PTR [rbx]
	mov	r8, QWORD PTR 48[rax]
	fstp	TBYTE PTR 80[rsp]
	mov	QWORD PTR 56[rsp], r8
	call	_ZNKSt8__format14__formatter_fpIcE6formatIeNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
	mov	r8, QWORD PTR 56[rsp]
	mov	QWORD PTR 16[r8], rax
	jmp	.L3868
	.p2align 4,,10
	.p2align 3
.L3617:
	mov	rbp, QWORD PTR [rbx]
	lea	rdi, 208[rsp]
	mov	QWORD PTR 208[rsp], 0
	mov	DWORD PTR 216[rsp], 32
	mov	rcx, rdi
	lea	rdx, 8[rbp]
	call	_ZNSt8__format15__formatter_strIcE5parseERSt26basic_format_parse_contextIcE
	mov	QWORD PTR 8[rbp], rax
	mov	rax, QWORD PTR [rbx]
	mov	rsi, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 48[rax]
	mov	rcx, rsi
	call	strlen
	lea	rdx, 112[rsp]
	mov	r8, rbx
	mov	rcx, rdi
	mov	QWORD PTR 112[rsp], rax
	mov	QWORD PTR 120[rsp], rsi
	call	_ZNKSt8__format15__formatter_strIcE6formatINS_10_Sink_iterIcEEEET_St17basic_string_viewIcSt11char_traitsIcEERSt20basic_format_contextIS5_cE
.L3875:
	mov	QWORD PTR 16[rbx], rax
	jmp	.L3868
	.p2align 4,,10
	.p2align 3
.L3616:
	mov	rbp, QWORD PTR [rbx]
	lea	rdi, 208[rsp]
	mov	QWORD PTR 208[rsp], 0
	mov	DWORD PTR 216[rsp], 32
	mov	rcx, rdi
	lea	rdx, 8[rbp]
	call	_ZNSt8__format15__formatter_strIcE5parseERSt26basic_format_parse_contextIcE
	vmovdqu	xmm2, XMMWORD PTR [rsi]
	lea	rdx, 112[rsp]
	mov	rcx, rdi
	mov	QWORD PTR 8[rbp], rax
	mov	rax, QWORD PTR [rbx]
	mov	r8, QWORD PTR 48[rax]
	vmovdqu	XMMWORD PTR 112[rsp], xmm2
	mov	QWORD PTR 56[rsp], r8
	call	_ZNKSt8__format15__formatter_strIcE6formatINS_10_Sink_iterIcEEEET_St17basic_string_viewIcSt11char_traitsIcEERSt20basic_format_contextIS5_cE
	mov	r8, QWORD PTR 56[rsp]
	mov	QWORD PTR 16[r8], rax
	jmp	.L3868
	.p2align 4,,10
	.p2align 3
.L3615:
	mov	QWORD PTR 148[rsp], 0
	mov	r12, QWORD PTR [rbx]
	mov	DWORD PTR 156[rsp], 32
	mov	rdi, QWORD PTR 16[r12]
	mov	rax, QWORD PTR 8[r12]
	mov	QWORD PTR 208[rsp], 0
	cmp	rdi, rax
	je	.L3769
	cmp	BYTE PTR [rax], 125
	je	.L3769
	lea	rbp, 208[rsp]
	mov	r8, rdi
	mov	rdx, rax
	mov	DWORD PTR 216[rsp], 32
	mov	rcx, rbp
	call	_ZNSt8__format5_SpecIcE23_M_parse_fill_and_alignEPKcS3_
	cmp	rdi, rax
	je	.L3770
	cmp	BYTE PTR [rax], 125
	je	.L3770
	lea	r9, 8[r12]
	mov	r8, rdi
	mov	rdx, rax
	mov	rcx, rbp
	call	_ZNSt8__format5_SpecIcE14_M_parse_widthEPKcS3_RSt26basic_format_parse_contextIcE
	cmp	rdi, rax
	je	.L3774
	movzx	edx, BYTE PTR [rax]
	cmp	dl, 112
	je	.L3891
.L3775:
	cmp	dl, 125
	jne	.L3892
.L3774:
	mov	rdx, QWORD PTR 208[rsp]
	mov	QWORD PTR 148[rsp], rdx
	mov	edx, DWORD PTR 216[rsp]
	mov	DWORD PTR 156[rsp], edx
	mov	rdx, QWORD PTR [rbx]
.L3772:
	mov	QWORD PTR 8[r12], rax
	mov	rax, QWORD PTR [rsi]
	mov	r8, QWORD PTR 48[rdx]
	test	rax, rax
	jne	.L3777
	mov	BYTE PTR 210[rsp], 48
	mov	edx, 3
.L3778:
	mov	eax, 30768
	mov	DWORD PTR 32[rsp], 2
	lea	rcx, 112[rsp]
	lea	r9, 148[rsp]
	mov	QWORD PTR 56[rsp], r8
	mov	WORD PTR 208[rsp], ax
	mov	QWORD PTR 112[rsp], rdx
	mov	QWORD PTR 120[rsp], rbp
	call	_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEyRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE
	mov	r8, QWORD PTR 56[rsp]
	mov	QWORD PTR 16[r8], rax
	jmp	.L3868
	.p2align 4,,10
	.p2align 3
.L3614:
	mov	rcx, QWORD PTR [rbx]
	mov	rax, QWORD PTR 8[rsi]
	mov	r8, QWORD PTR [rsi]
	mov	rdx, QWORD PTR 48[rcx]
	add	rcx, 8
	add	rsp, 416
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	rex.W jmp	rax
	.p2align 4,,10
	.p2align 3
.L3650:
	mov	QWORD PTR 8[rdi], rax
	mov	rax, QWORD PTR [rbx]
	movzx	edx, BYTE PTR [rsi]
	mov	rbx, QWORD PTR 48[rax]
	cmp	cl, 56
	je	.L3786
	test	cl, cl
	je	.L3786
	mov	r8, rbx
	mov	rcx, rbp
	call	_ZNKSt8__format15__formatter_intIcE6formatIhNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
	jmp	.L3875
	.p2align 4,,10
	.p2align 3
.L3628:
	mov	QWORD PTR 8[rdi], rax
	mov	rax, QWORD PTR [rbx]
	movzx	edx, BYTE PTR [rsi]
	mov	r12, QWORD PTR 48[rax]
	cmp	cl, 56
	je	.L3893
	mov	r8, r12
	mov	rcx, r13
	call	_ZNKSt8__format15__formatter_intIcE6formatIhNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
	mov	rbx, rax
.L3633:
	mov	QWORD PTR 16[r12], rbx
	jmp	.L3868
	.p2align 4,,10
	.p2align 3
.L3888:
	cmp	r8, 127
	ja	.L3655
	mov	BYTE PTR 208[rsp], r8b
	lea	rcx, 112[rsp]
	mov	r8, r13
	mov	rdx, rbp
	lea	rax, 208[rsp]
	mov	QWORD PTR 112[rsp], 1
	mov	QWORD PTR 120[rsp], rax
	call	_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEyRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE.constprop.0
	jmp	.L3729
	.p2align 4,,10
	.p2align 3
.L3880:
	lea	eax, 128[rbx]
	cmp	eax, 255
	ja	.L3655
	lea	rax, 208[rsp]
	lea	rcx, 112[rsp]
	mov	r8, r12
	mov	rdx, rbp
	mov	BYTE PTR 208[rsp], bl
	mov	QWORD PTR 112[rsp], 1
	mov	QWORD PTR 120[rsp], rax
	call	_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEyRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE.constprop.0
	jmp	.L3729
	.p2align 4,,10
	.p2align 3
.L3885:
	cmp	r9d, 127
	ja	.L3655
	lea	rax, 208[rsp]
	lea	rcx, 112[rsp]
	mov	r8, rdi
	mov	rdx, rbp
	mov	BYTE PTR 208[rsp], r9b
	mov	QWORD PTR 112[rsp], 1
	mov	QWORD PTR 120[rsp], rax
	call	_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEyRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE.constprop.0
	jmp	.L3729
	.p2align 4,,10
	.p2align 3
.L3769:
	mov	rdx, QWORD PTR 208[rsp]
	lea	rbp, 208[rsp]
	mov	DWORD PTR 216[rsp], 32
	mov	DWORD PTR 156[rsp], 32
	mov	QWORD PTR 148[rsp], rdx
	mov	rdx, r12
	jmp	.L3772
	.p2align 4,,10
	.p2align 3
.L3777:
	movabs	rsi, 3978425819141910832
	bsr	rdx, rax
	movabs	rdi, 7378413942531504440
	lea	r10d, 4[rdx]
	mov	QWORD PTR 160[rsp], rsi
	shr	r10d, 2
	mov	QWORD PTR 168[rsp], rdi
	lea	edx, -1[r10]
	cmp	rax, 255
	jbe	.L3779
	.p2align 4
	.p2align 3
.L3780:
	mov	r9, rax
	mov	ecx, edx
	and	r9d, 15
	movzx	r9d, BYTE PTR 160[rsp+r9]
	mov	BYTE PTR 210[rsp+rcx], r9b
	mov	rcx, rax
	lea	r9d, -1[rdx]
	shr	rax, 8
	shr	rcx, 4
	sub	edx, 2
	and	ecx, 15
	movzx	ecx, BYTE PTR 160[rsp+rcx]
	mov	BYTE PTR 210[rsp+r9], cl
	cmp	rax, 255
	ja	.L3780
.L3779:
	cmp	rax, 15
	jbe	.L3781
	mov	rdx, rax
	shr	rax, 4
	and	edx, 15
	movzx	edx, BYTE PTR 160[rsp+rdx]
	mov	BYTE PTR 211[rsp], dl
	movzx	eax, BYTE PTR 160[rsp+rax]
.L3782:
	lea	edx, 2[r10]
	mov	BYTE PTR 210[rsp], al
	movsx	rdx, edx
	jmp	.L3778
	.p2align 4,,10
	.p2align 3
.L3879:
	movzx	edx, BYTE PTR [rsi]
.L3786:
	mov	BYTE PTR 160[rsp], dl
	lea	rcx, 112[rsp]
	mov	r8, rbp
	mov	rdx, rbx
	lea	rax, 160[rsp]
	mov	QWORD PTR 112[rsp], 1
	mov	QWORD PTR 120[rsp], rax
	call	_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEyRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE.constprop.0
	jmp	.L3875
	.p2align 4,,10
	.p2align 3
.L3881:
	neg	r9d
	cmp	al, 4
	je	.L3658
	ja	.L3659
	cmp	al, 1
	jbe	.L3660
	cmp	sil, 16
	lea	r8, .LC41[rip]
	lea	rax, .LC42[rip]
	cmovne	r8, rax
.L3661:
	bsr	r11d, r9d
	mov	r10d, 32
	mov	eax, 31
	xor	r11d, 31
	sub	r10d, r11d
	sub	eax, r11d
	je	.L3674
	mov	edx, eax
	lea	rcx, 159[rsp+rdx]
	lea	rax, 160[rsp+rdx]
	mov	edx, 30
	sub	edx, r11d
	sub	rcx, rdx
	.p2align 5
	.p2align 4
	.p2align 3
.L3673:
	mov	edx, r9d
	sub	rax, 1
	shr	r9d
	and	edx, 1
	add	edx, 48
	mov	BYTE PTR 4[rax], dl
	cmp	rax, rcx
	jne	.L3673
.L3674:
	lea	rdi, 163[rsp]
	movsx	rdx, r10d
	mov	eax, 49
	lea	r13, [rdi+rdx]
.L3671:
	mov	BYTE PTR 163[rsp], al
	test	BYTE PTR 136[rsp], 16
	je	.L3870
.L3800:
	mov	rax, -2
	mov	edx, 2
.L3675:
	add	rax, rdi
	mov	r9d, edx
	test	edx, edx
	je	.L3676
	xor	edx, edx
.L3693:
	mov	ecx, edx
	add	edx, 1
	movzx	r10d, BYTE PTR [r8+rcx]
	mov	BYTE PTR [rax+rcx], r10b
	cmp	edx, r9d
	jb	.L3693
	.p2align 4
	.p2align 3
.L3676:
	lea	rdx, -1[rax]
	test	ebx, ebx
	js	.L3858
	movzx	ecx, BYTE PTR 136[rsp]
	jmp	.L3695
	.p2align 4,,10
	.p2align 3
.L3858:
	mov	BYTE PTR -1[rax], 45
	mov	rax, rdx
	jmp	.L3698
	.p2align 4,,10
	.p2align 3
.L3770:
	mov	rdx, QWORD PTR 208[rsp]
	mov	QWORD PTR 148[rsp], rdx
	mov	edx, DWORD PTR 216[rsp]
	mov	DWORD PTR 156[rsp], edx
	mov	rdx, r12
	jmp	.L3772
	.p2align 4,,10
	.p2align 3
.L3820:
	mov	eax, 43
.L3767:
	mov	BYTE PTR -1[rdx], al
	sub	rdx, 1
	jmp	.L3768
	.p2align 4,,10
	.p2align 3
.L3809:
	mov	eax, 43
.L3726:
	mov	BYTE PTR -1[rdx], al
	sub	rdx, 1
	jmp	.L3727
	.p2align 4,,10
	.p2align 3
.L3781:
	movzx	eax, BYTE PTR 160[rsp+rax]
	jmp	.L3782
.L3660:
	cmp	r9d, 9
	jbe	.L3793
	mov	eax, r9d
	mov	ecx, 1
	mov	r8d, 3518437209
	jmp	.L3683
	.p2align 4,,10
	.p2align 3
.L3679:
	cmp	eax, 999
	jbe	.L3894
	cmp	eax, 9999
	jbe	.L3895
	mov	edx, eax
	add	ecx, 4
	imul	rdx, r8
	shr	rdx, 45
	cmp	eax, 99999
	jbe	.L3680
	mov	eax, edx
.L3683:
	cmp	eax, 99
	ja	.L3679
	add	ecx, 1
.L3680:
	cmp	ecx, 32
	ja	.L3795
	vmovdqu64	zmm0, ZMMWORD PTR .LC6[rip]
	lea	r8d, -1[rcx]
	movabs	rax, 4122263930388298034
	movabs	rdx, 16106987313379638
	mov	QWORD PTR 401[rsp], rdx
	vmovdqu64	ZMMWORD PTR 208[rsp], zmm0
	vmovdqu64	zmm0, ZMMWORD PTR .LC7[rip]
	vmovdqu64	ZMMWORD PTR 272[rsp], zmm0
	vmovdqu64	zmm0, ZMMWORD PTR .LC8[rip]
	vmovdqu64	ZMMWORD PTR 336[rsp], zmm0
	mov	QWORD PTR 393[rsp], rax
	cmp	r9d, 99
	jbe	.L3685
	.p2align 4
	.p2align 3
.L3686:
	mov	edx, r9d
	mov	eax, r9d
	imul	rdx, rdx, 1374389535
	shr	rdx, 37
	imul	r10d, edx, 100
	sub	eax, r10d
	mov	r10d, r9d
	mov	r9d, edx
	mov	edx, r8d
	add	eax, eax
	lea	r11d, 1[rax]
	movzx	eax, BYTE PTR 208[rsp+rax]
	movzx	r11d, BYTE PTR 208[rsp+r11]
	mov	BYTE PTR 163[rsp+rdx], r11b
	lea	edx, -1[r8]
	sub	r8d, 2
	mov	BYTE PTR 163[rsp+rdx], al
	cmp	r10d, 9999
	ja	.L3686
	cmp	r10d, 999
	ja	.L3685
	vzeroupper
.L3678:
	add	r9d, 48
.L3687:
	mov	BYTE PTR 163[rsp], r9b
	lea	rdi, 163[rsp]
	lea	r13, [rdi+rcx]
.L3870:
	mov	rax, rdi
	jmp	.L3676
	.p2align 4,,10
	.p2align 3
.L3893:
	mov	BYTE PTR 208[rsp], dl
	lea	rcx, 112[rsp]
	mov	r8, r13
	mov	rdx, r12
	lea	rax, 208[rsp]
	mov	QWORD PTR 112[rsp], 1
	mov	QWORD PTR 120[rsp], rax
	call	_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEyRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE.constprop.0
.LEHE175:
	mov	rbx, rax
	jmp	.L3633
	.p2align 4,,10
	.p2align 3
.L3664:
	cmp	al, 4
	je	.L3667
	cmp	sil, 40
	je	.L3896
	test	ebx, ebx
	jne	.L3663
	mov	BYTE PTR 163[rsp], 48
	cmp	sil, 48
	je	.L3797
	lea	r8, .LC43[rip]
	lea	r13, 164[rsp]
	lea	rdi, 163[rsp]
.L3691:
	test	BYTE PTR 136[rsp], 16
	jne	.L3800
	jmp	.L3870
	.p2align 4,,10
	.p2align 3
.L3732:
	test	r8, r8
	jne	.L3743
	mov	BYTE PTR 211[rsp], 48
	lea	rdi, 212[rsp]
	lea	rbx, 211[rsp]
.L3744:
	movzx	eax, BYTE PTR 148[rsp]
	mov	rdx, rbx
	jmp	.L3742
	.p2align 4,,10
	.p2align 3
.L3731:
	cmp	r10b, 40
	je	.L3897
	test	r8, r8
	jne	.L3816
	mov	BYTE PTR 211[rsp], 48
	cmp	r10b, 48
	je	.L3817
	lea	r12, .LC43[rip]
	lea	rdi, 212[rsp]
	lea	rbx, 211[rsp]
.L3758:
	movzx	eax, BYTE PTR 148[rsp]
	test	al, 16
	jne	.L3818
.L3874:
	mov	rdx, rbx
	jmp	.L3742
	.p2align 4,,10
	.p2align 3
.L3730:
	test	r8, r8
	je	.L3751
	bsr	rax, r8
	lea	r9d, 3[rax]
	mov	eax, 2863311531
	imul	r9, rax
	shr	r9, 33
	lea	edx, -1[r9]
	cmp	r8, 63
	jbe	.L3753
	.p2align 6
	.p2align 4
	.p2align 3
.L3752:
	mov	rax, r8
	mov	ecx, edx
	and	eax, 7
	add	eax, 48
	mov	BYTE PTR 211[rsp+rcx], al
	mov	rax, r8
	lea	ecx, -1[rdx]
	shr	r8, 6
	shr	rax, 3
	sub	edx, 2
	and	eax, 7
	add	eax, 48
	mov	BYTE PTR 211[rsp+rcx], al
	cmp	r8, 63
	ja	.L3752
.L3753:
	lea	eax, 48[r8]
	cmp	r8, 7
	jbe	.L3755
	mov	rax, r8
	and	eax, 7
	add	eax, 48
	mov	BYTE PTR 212[rsp], al
	mov	rax, r8
	shr	rax, 3
	add	eax, 48
.L3755:
	mov	BYTE PTR 211[rsp], al
	lea	rbx, 211[rsp]
	mov	eax, r9d
	lea	r12, .LC45[rip]
	lea	rdi, [rbx+rax]
	mov	ecx, 1
.L3756:
	movzx	eax, BYTE PTR 148[rsp]
	mov	rdx, rbx
	test	al, 16
	je	.L3742
	mov	rdx, rcx
	neg	rdx
	jmp	.L3741
	.p2align 4,,10
	.p2align 3
.L3704:
	test	r9d, r9d
	je	.L3717
	lea	rbx, 211[rsp]
	lea	rcx, 96[rsp]
	lea	r8, 243[rsp]
	mov	rdx, rbx
	call	_ZNSt8__detail13__to_chars_10IjEESt15to_chars_resultPcS2_T_
	mov	r12, QWORD PTR 96[rsp]
.L3872:
	movzx	eax, BYTE PTR 160[rsp]
	mov	rdx, rbx
	jmp	.L3714
	.p2align 4,,10
	.p2align 3
.L3703:
	cmp	sil, 40
	je	.L3898
	test	r9d, r9d
	jne	.L3721
	mov	BYTE PTR 211[rsp], 48
	cmp	sil, 48
	je	.L3804
	lea	rcx, .LC43[rip]
	lea	r12, 212[rsp]
	lea	rbx, 211[rsp]
.L3720:
	movzx	eax, BYTE PTR 160[rsp]
	test	al, 16
	jne	.L3807
.L3873:
	mov	rdx, rbx
	jmp	.L3714
	.p2align 4,,10
	.p2align 3
.L3702:
	test	r9d, r9d
	je	.L3717
	lea	rbx, 211[rsp]
	lea	rcx, 96[rsp]
	lea	r8, 243[rsp]
	mov	rdx, rbx
	call	_ZNSt8__detail12__to_chars_8IjEESt15to_chars_resultPcS2_T_
	mov	r12, QWORD PTR 96[rsp]
	lea	rcx, .LC45[rip]
	mov	r8d, 1
.L3718:
	movzx	eax, BYTE PTR 160[rsp]
	mov	rdx, rbx
	test	al, 16
	je	.L3714
	mov	rdx, r8
	neg	rdx
	jmp	.L3713
	.p2align 4,,10
	.p2align 3
.L3717:
	mov	BYTE PTR 211[rsp], 48
	lea	r12, 212[rsp]
	lea	rbx, 211[rsp]
	jmp	.L3872
.L3890:
	mov	eax, 32
	jmp	.L3767
.L3887:
	mov	eax, 32
	jmp	.L3726
.L3883:
	mov	BYTE PTR -1[rax], 43
.L3699:
	mov	rax, rdx
	jmp	.L3698
.L3667:
	test	ebx, ebx
	je	.L3871
.L3658:
	lea	rdi, 163[rsp]
	lea	r8, 195[rsp]
	mov	rdx, rdi
	lea	rcx, 96[rsp]
	call	_ZNSt8__detail12__to_chars_8IjEESt15to_chars_resultPcS2_T_
	mov	r13, QWORD PTR 96[rsp]
	mov	edx, 1
	lea	r8, .LC45[rip]
.L3688:
	mov	rax, rdi
	test	BYTE PTR 136[rsp], 16
	je	.L3676
	mov	rax, rdx
	neg	rax
	jmp	.L3675
	.p2align 4,,10
	.p2align 3
.L3891:
	lea	rcx, 1[rax]
	cmp	rdi, rcx
	je	.L3821
	movzx	edx, BYTE PTR 1[rax]
	mov	rax, rcx
	jmp	.L3775
.L3882:
	cmp	sil, 16
	lea	r8, .LC42[rip]
	lea	rax, .LC41[rip]
	cmove	r8, rax
	test	ebx, ebx
	jne	.L3661
	mov	eax, 48
	lea	r13, 164[rsp]
	lea	rdi, 163[rsp]
	jmp	.L3671
.L3884:
	mov	BYTE PTR -1[rax], 32
	jmp	.L3699
.L3889:
	bsr	r9, r8
	mov	r10d, 64
	mov	eax, 63
	xor	r9, 63
	sub	r10d, r9d
	sub	eax, r9d
	je	.L3740
	mov	edx, eax
	lea	rcx, 207[rsp+rdx]
	lea	rax, 208[rsp+rdx]
	mov	edx, 62
	sub	edx, r9d
	sub	rcx, rdx
	.p2align 5
	.p2align 4
	.p2align 3
.L3739:
	mov	edx, r8d
	sub	rax, 1
	shr	r8
	and	edx, 1
	add	edx, 48
	mov	BYTE PTR 4[rax], dl
	cmp	rcx, rax
	jne	.L3739
.L3740:
	movsx	rax, r10d
	lea	rbx, 211[rsp]
	lea	rdi, [rbx+rax]
	mov	eax, 49
	jmp	.L3737
.L3743:
	cmp	r8, 9
	jbe	.L3812
	mov	rcx, r8
	mov	esi, 1
	movabs	r9, 3777893186295716171
	jmp	.L3750
	.p2align 4,,10
	.p2align 3
.L3746:
	cmp	rcx, 999
	jbe	.L3899
	cmp	rcx, 9999
	jbe	.L3900
	mov	rax, rcx
	add	esi, 4
	mul	r9
	shr	rdx, 11
	cmp	rcx, 99999
	jbe	.L3747
	mov	rcx, rdx
.L3750:
	cmp	rcx, 99
	ja	.L3746
	add	esi, 1
.L3747:
	cmp	esi, 64
	ja	.L3901
.L3745:
	lea	rbx, 211[rsp]
	mov	edx, esi
	mov	rcx, rbx
	call	_ZNSt8__detail18__to_chars_10_implIyEEvPcjT_
	mov	eax, esi
	lea	rdi, [rbx+rax]
	jmp	.L3744
.L3751:
	lea	rbx, 211[rsp]
	mov	BYTE PTR 211[rsp], 48
	movzx	eax, BYTE PTR 148[rsp]
	lea	rdi, 212[rsp]
	mov	rdx, rbx
	jmp	.L3742
.L3886:
	bsr	r10d, r9d
	mov	r11d, 32
	mov	eax, 31
	xor	r10d, 31
	sub	r11d, r10d
	sub	eax, r10d
	je	.L3712
	mov	edx, eax
	lea	r8, 207[rsp+rdx]
	lea	rax, 208[rsp+rdx]
	mov	edx, 30
	sub	edx, r10d
	sub	r8, rdx
	.p2align 5
	.p2align 4
	.p2align 3
.L3711:
	mov	edx, r9d
	sub	rax, 1
	shr	r9d
	and	edx, 1
	add	edx, 48
	mov	BYTE PTR 4[rax], dl
	cmp	r8, rax
	jne	.L3711
.L3712:
	movsx	rax, r11d
	lea	rbx, 211[rsp]
	lea	r12, [rbx+rax]
	mov	eax, 49
	jmp	.L3709
.L3659:
	cmp	sil, 40
	je	.L3902
.L3663:
	lea	rdi, 163[rsp]
	lea	rcx, 96[rsp]
	lea	r8, 195[rsp]
	mov	rdx, rdi
	call	_ZNSt8__detail13__to_chars_16IjEESt15to_chars_resultPcS2_T_
	mov	r13, QWORD PTR 96[rsp]
	cmp	sil, 48
	jne	.L3798
	cmp	r13, rdi
	je	.L3799
.L3690:
	mov	rsi, rdi
	.p2align 4
	.p2align 3
.L3692:
	movsx	ecx, BYTE PTR [rsi]
	add	rsi, 1
	call	toupper
	mov	BYTE PTR -1[rsi], al
	cmp	rsi, r13
	jne	.L3692
.L3799:
	lea	r8, .LC43[rip]
	mov	edx, 2
	jmp	.L3688
.L3898:
	test	r9d, r9d
	jne	.L3719
	mov	BYTE PTR 211[rsp], 48
	lea	rcx, .LC44[rip]
	lea	r12, 212[rsp]
	lea	rbx, 211[rsp]
	jmp	.L3720
.L3897:
	test	r8, r8
	jne	.L3815
	mov	BYTE PTR 211[rsp], 48
	lea	r12, .LC44[rip]
	lea	rdi, 212[rsp]
	lea	rbx, 211[rsp]
	jmp	.L3758
.L3721:
	lea	rbx, 211[rsp]
	lea	rcx, 96[rsp]
	lea	r8, 243[rsp]
	mov	rdx, rbx
	call	_ZNSt8__detail13__to_chars_16IjEESt15to_chars_resultPcS2_T_
	mov	r12, QWORD PTR 96[rsp]
	cmp	sil, 48
	jne	.L3805
	cmp	r12, rbx
	je	.L3806
.L3722:
	mov	rsi, rbx
	.p2align 4
	.p2align 3
.L3723:
	movsx	ecx, BYTE PTR [rsi]
	add	rsi, 1
	call	toupper
	mov	BYTE PTR -1[rsi], al
	cmp	rsi, r12
	jne	.L3723
.L3806:
	lea	rcx, .LC43[rip]
	mov	r8d, 2
	jmp	.L3718
.L3877:
	cmp	BYTE PTR 32[r12], 0
	lea	rdi, 24[r12]
	je	.L3903
.L3634:
	lea	rbp, 208[rsp]
	mov	rdx, rdi
	mov	rcx, rbp
	call	_ZNSt6localeC1ERKS_
	mov	rcx, QWORD PTR .refptr._ZNSt7__cxx118numpunctIcE2idE[rip]
	call	_ZNKSt6locale2id5_M_idEv
	mov	rdx, rax
	mov	rax, QWORD PTR 208[rsp]
	mov	rax, QWORD PTR 8[rax]
	mov	r14, QWORD PTR [rax+rdx*8]
	test	r14, r14
	je	.L3635
	mov	rcx, rbp
	call	_ZNSt6localeD1Ev
	mov	rax, QWORD PTR [r14]
	test	sil, sil
	je	.L3904
	lea	rdi, 160[rsp]
	mov	rdx, r14
	mov	rcx, rbp
.LEHB176:
	call	[QWORD PTR 40[rax]]
.L3638:
	mov	rax, QWORD PTR 160[rsp]
	mov	rdx, rax
	cmp	rax, rbx
	je	.L3905
	mov	rcx, QWORD PTR 208[rsp]
	lea	rsi, 224[rsp]
	cmp	rcx, rsi
	je	.L3783
	mov	rdx, QWORD PTR 176[rsp]
	mov	QWORD PTR 160[rsp], rcx
	vmovdqu	xmm0, XMMWORD PTR 216[rsp]
	vmovdqu	XMMWORD PTR 168[rsp], xmm0
	test	rax, rax
	je	.L3644
	mov	QWORD PTR 208[rsp], rax
	mov	QWORD PTR 224[rsp], rdx
.L3643:
	mov	QWORD PTR 216[rsp], 0
	mov	rcx, rbp
	lea	rdi, 160[rsp]
	mov	BYTE PTR [rax], 0
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	rdx, QWORD PTR 168[rsp]
	jmp	.L3645
.L3816:
	lea	r12, .LC43[rip]
.L3757:
	movabs	rdx, 7378413942531504440
	bsr	rax, r8
	add	eax, 4
	mov	QWORD PTR 168[rsp], rdx
	shr	eax, 2
	mov	edi, eax
	movabs	rax, 3978425819141910832
	mov	QWORD PTR 160[rsp], rax
	lea	eax, -1[rdi]
	cmp	r8, 255
	jbe	.L3760
	.p2align 4
	.p2align 3
.L3761:
	mov	rcx, r8
	mov	edx, eax
	and	ecx, 15
	movzx	ecx, BYTE PTR 160[rsp+rcx]
	mov	BYTE PTR 211[rsp+rdx], cl
	mov	rdx, r8
	lea	ecx, -1[rax]
	shr	r8, 8
	shr	rdx, 4
	sub	eax, 2
	and	edx, 15
	movzx	edx, BYTE PTR 160[rsp+rdx]
	mov	BYTE PTR 211[rsp+rcx], dl
	cmp	r8, 255
	ja	.L3761
.L3760:
	cmp	r8, 15
	jbe	.L3762
	mov	rax, r8
	shr	r8, 4
	and	eax, 15
	movzx	eax, BYTE PTR 160[rsp+rax]
	mov	BYTE PTR 212[rsp], al
	movzx	eax, BYTE PTR 160[rsp+r8]
.L3763:
	mov	BYTE PTR 211[rsp], al
	lea	rbx, 211[rsp]
	mov	eax, edi
	lea	rdi, [rbx+rax]
	cmp	r10b, 48
	jne	.L3758
.L3759:
	mov	rsi, rbx
	.p2align 4
	.p2align 3
.L3764:
	movsx	ecx, BYTE PTR [rsi]
	add	rsi, 1
	call	toupper
	mov	BYTE PTR -1[rsi], al
	cmp	rsi, rdi
	jne	.L3764
	mov	ecx, 2
	jmp	.L3756
.L3762:
	movzx	eax, BYTE PTR 160[rsp+r8]
	jmp	.L3763
.L3685:
	add	r9d, r9d
	lea	eax, 1[r9]
	movzx	r9d, BYTE PTR 208[rsp+r9]
	movzx	eax, BYTE PTR 208[rsp+rax]
	mov	BYTE PTR 164[rsp], al
	vzeroupper
	jmp	.L3687
.L3896:
	test	ebx, ebx
	jne	.L3689
	movzx	ecx, BYTE PTR 136[rsp]
	mov	BYTE PTR 163[rsp], 48
	test	cl, 16
	je	.L3677
	mov	rax, -2
	lea	r13, 164[rsp]
	lea	r8, .LC44[rip]
	mov	edx, 2
	lea	rdi, 163[rsp]
	jmp	.L3675
.L3815:
	lea	r12, .LC44[rip]
	jmp	.L3757
.L3719:
	lea	rbx, 211[rsp]
	lea	rcx, 96[rsp]
	lea	r8, 243[rsp]
	mov	rdx, rbx
	call	_ZNSt8__detail13__to_chars_16IjEESt15to_chars_resultPcS2_T_
	mov	r12, QWORD PTR 96[rsp]
	lea	rcx, .LC44[rip]
	jmp	.L3720
.L3904:
	lea	rdi, 160[rsp]
	mov	rdx, r14
	mov	rcx, rbp
	call	[QWORD PTR 48[rax]]
.LEHE176:
	jmp	.L3638
.L3902:
	lea	rcx, 96[rsp]
	lea	rdi, 163[rsp]
.L3869:
	lea	r8, 195[rsp]
	mov	rdx, rdi
	call	_ZNSt8__detail13__to_chars_16IjEESt15to_chars_resultPcS2_T_
	mov	r13, QWORD PTR 96[rsp]
	lea	r8, .LC44[rip]
	jmp	.L3691
.L3797:
	lea	r13, 164[rsp]
	lea	rdi, 163[rsp]
	jmp	.L3690
.L3804:
	lea	r12, 212[rsp]
	lea	rbx, 211[rsp]
	jmp	.L3722
.L3817:
	lea	rdi, 212[rsp]
	lea	r12, .LC43[rip]
	lea	rbx, 211[rsp]
	jmp	.L3759
.L3899:
	add	esi, 2
	jmp	.L3747
.L3798:
	lea	r8, .LC43[rip]
	jmp	.L3691
.L3805:
	lea	rcx, .LC43[rip]
	jmp	.L3720
.L3894:
	add	ecx, 2
	jmp	.L3680
.L3895:
	add	ecx, 3
	jmp	.L3680
.L3900:
	add	esi, 3
	jmp	.L3747
.L3903:
	mov	rcx, rdi
	call	_ZNSt6localeC1Ev
	mov	BYTE PTR 32[r12], 1
	jmp	.L3634
.L3905:
	mov	rax, QWORD PTR 208[rsp]
	lea	rsi, 224[rsp]
	cmp	rax, rsi
	je	.L3783
	vmovdqu	xmm0, XMMWORD PTR 216[rsp]
	mov	QWORD PTR 160[rsp], rax
	vmovdqu	XMMWORD PTR 168[rsp], xmm0
.L3644:
	mov	QWORD PTR 208[rsp], rsi
	lea	rax, 224[rsp]
	jmp	.L3643
.L3821:
	mov	rax, rdi
	jmp	.L3774
.L3783:
	mov	rcx, QWORD PTR 216[rsp]
	test	rcx, rcx
	je	.L3641
	cmp	rcx, 1
	je	.L3906
	mov	rdi, rdx
	mov	ecx, ecx
	rep movsb
	mov	rdx, QWORD PTR 160[rsp]
	mov	rcx, QWORD PTR 216[rsp]
.L3641:
	mov	QWORD PTR 168[rsp], rcx
	mov	BYTE PTR [rdx+rcx], 0
	mov	rax, QWORD PTR 208[rsp]
	jmp	.L3643
.L3901:
	lea	rdi, 275[rsp]
	lea	rbx, 211[rsp]
	jmp	.L3744
.L3795:
	lea	r13, 195[rsp]
	lea	rdi, 163[rsp]
	jmp	.L3870
.L3689:
	lea	rcx, 96[rsp]
	lea	rdi, 163[rsp]
	jmp	.L3869
.L3793:
	mov	ecx, 1
	jmp	.L3678
.L3812:
	mov	esi, 1
	jmp	.L3745
.L3906:
	movzx	eax, BYTE PTR 224[rsp]
	mov	BYTE PTR [rdx], al
	mov	rdx, QWORD PTR 160[rsp]
	mov	rcx, QWORD PTR 216[rsp]
	jmp	.L3641
.L3635:
.LEHB177:
	call	_ZSt16__throw_bad_castv
.LEHE177:
.L3878:
	lea	rcx, .LC57[rip]
.LEHB178:
	call	_ZSt20__throw_format_errorPKc
.L3876:
	lea	rcx, .LC56[rip]
	call	_ZSt20__throw_format_errorPKc
.L3823:
	mov	rcx, rbp
	mov	rbx, rax
	vzeroupper
	lea	rdi, 160[rsp]
	call	_ZNSt6localeD1Ev
	jmp	.L3649
.L3655:
	lea	rcx, .LC46[rip]
	call	_ZSt20__throw_format_errorPKc
.L3892:
	call	_ZNSt8__format29__failed_to_parse_format_specEv
.L3627:
	call	_ZNSt8__format33__invalid_arg_id_in_format_stringEv
.L3822:
	mov	rbx, rax
	vzeroupper
.L3649:
	mov	rcx, rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	rcx, rbx
	call	_Unwind_Resume
	nop
.LEHE178:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA9227:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9227-.LLSDACSB9227
.LLSDACSB9227:
	.uleb128 .LEHB173-.LFB9227
	.uleb128 .LEHE173-.LEHB173
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB174-.LFB9227
	.uleb128 .LEHE174-.LEHB174
	.uleb128 .L3822-.LFB9227
	.uleb128 0
	.uleb128 .LEHB175-.LFB9227
	.uleb128 .LEHE175-.LEHB175
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB176-.LFB9227
	.uleb128 .LEHE176-.LEHB176
	.uleb128 .L3822-.LFB9227
	.uleb128 0
	.uleb128 .LEHB177-.LFB9227
	.uleb128 .LEHE177-.LEHB177
	.uleb128 .L3823-.LFB9227
	.uleb128 0
	.uleb128 .LEHB178-.LFB9227
	.uleb128 .LEHE178-.LEHB178
	.uleb128 0
	.uleb128 0
.LLSDACSE9227:
	.section	.text$_ZNSt16basic_format_argISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE8_M_visitIZNS1_19_Formatting_scannerIS3_cE13_M_format_argEyEUlRT_E_EEDcOS9_NS1_6_Arg_tE,"x"
	.linkonce discard
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC59:
	.ascii "Render Time: {:.4f}, FPS: {:.1f}, Average: {:.4f}, Field Sum: {:.4f}, Frame Count: {}\0"
.LC60:
	.ascii "Failed to initialize GLFW\0"
.LC61:
	.ascii "\0"
.LC62:
	.ascii "Paused: \0"
	.align 8
.LC65:
	.ascii "format error: unmatched '}' in format string\0"
	.section	.text.startup,"x"
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB7281:
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
	sub	rsp, 1512
	.seh_stackalloc	1512
	vmovups	XMMWORD PTR 1344[rsp], xmm6
	.seh_savexmm	xmm6, 1344
	vmovups	XMMWORD PTR 1360[rsp], xmm7
	.seh_savexmm	xmm7, 1360
	vmovups	XMMWORD PTR 1376[rsp], xmm8
	.seh_savexmm	xmm8, 1376
	vmovups	XMMWORD PTR 1392[rsp], xmm9
	.seh_savexmm	xmm9, 1392
	vmovups	XMMWORD PTR 1408[rsp], xmm10
	.seh_savexmm	xmm10, 1408
	vmovups	XMMWORD PTR 1424[rsp], xmm11
	.seh_savexmm	xmm11, 1424
	vmovups	XMMWORD PTR 1440[rsp], xmm12
	.seh_savexmm	xmm12, 1440
	vmovups	XMMWORD PTR 1456[rsp], xmm13
	.seh_savexmm	xmm13, 1456
	vmovups	XMMWORD PTR 1472[rsp], xmm14
	.seh_savexmm	xmm14, 1472
	vmovups	XMMWORD PTR 1488[rsp], xmm15
	.seh_savexmm	xmm15, 1488
	.seh_endprologue
	call	__main
.LEHB179:
	call	glfwInit
	test	eax, eax
	je	.L4150
	xor	r9d, r9d
	mov	edx, 1024
	mov	ecx, 1024
	mov	QWORD PTR 32[rsp], 0
	lea	r8, .LC61[rip]
	call	glfwCreateWindow
	vmovq	xmm15, rax
	test	rax, rax
	je	.L4151
	mov	rcx, rax
	call	glfwMakeContextCurrent
	mov	rcx, QWORD PTR .refptr.glfwGetProcAddress[rip]
	call	gladLoadGLLoader
	mov	rbx, QWORD PTR .refptr.glad_glCreateProgram[rip]
	call	[QWORD PTR [rbx]]
	mov	DWORD PTR 96[rsp], eax
	mov	DWORD PTR 176[rsp], eax
	call	[QWORD PTR [rbx]]
	lea	r9, 188[rsp]
	lea	rcx, 176[rsp]
	mov	DWORD PTR 100[rsp], eax
	lea	rdx, 180[rsp]
	mov	DWORD PTR 180[rsp], eax
	lea	rax, 184[rsp]
	mov	r8, rax
	mov	QWORD PTR 136[rsp], r9
	mov	QWORD PTR 128[rsp], rax
	call	_ZN5Lenia7SetupGLEPjS0_S0_S0_
	mov	edx, 770
	mov	DWORD PTR 194[rsp], 131328
	mov	WORD PTR 198[rsp], dx
	call	_ZN5LeniaL18LoadAnimalsFromCSVEj.constprop.0
	lea	rax, 1040[rsp]
	mov	ecx, 19
	mov	QWORD PTR 1024[rsp], rax
	call	_Znwy
.LEHE179:
	mov	rbx, QWORD PTR _ZN5LeniaL7AnimalsE[rip+16]
	mov	ecx, 29557
	movabs	rdx, 8386094436448430446
	mov	rbp, rax
	mov	QWORD PTR 1024[rsp], rax
	movabs	rax, 8439866052738970191
	mov	QWORD PTR 0[rbp], rax
	lea	rax, _ZN5LeniaL7AnimalsE[rip+8]
	mov	QWORD PTR 1040[rsp], 18
	mov	rsi, rax
	mov	QWORD PTR 8[rbp], rdx
	mov	WORD PTR 16[rbp], cx
	mov	QWORD PTR 1032[rsp], 18
	mov	BYTE PTR 18[rbp], 0
	mov	QWORD PTR 80[rsp], rax
	test	rbx, rbx
	je	.L3913
	movabs	r14, -2147483649
	mov	r12d, 2147483648
	jmp	.L3918
	.p2align 4,,10
	.p2align 3
.L4153:
	mov	r8d, 18
	mov	rcx, QWORD PTR 32[rbx]
	mov	rdx, rbp
	cmp	rdi, r8
	cmovbe	r8, rdi
	call	memcmp
	test	eax, eax
	jne	.L3915
	lea	rax, -18[rdi]
	cmp	rax, r12
	jge	.L3916
	cmp	rax, r14
	jle	.L3914
.L3915:
	test	eax, eax
	js	.L3914
.L3916:
	mov	rsi, rbx
	mov	rbx, QWORD PTR 16[rbx]
	test	rbx, rbx
	je	.L4152
.L3918:
	mov	rdi, QWORD PTR 40[rbx]
	test	rdi, rdi
	jne	.L4153
.L3914:
	mov	rbx, QWORD PTR 24[rbx]
	test	rbx, rbx
	jne	.L3918
.L4152:
	mov	rax, QWORD PTR 80[rsp]
	cmp	rsi, rax
	je	.L3913
	mov	rbx, QWORD PTR 40[rsi]
	test	rbx, rbx
	je	.L3919
	mov	r8d, 18
	mov	rdx, QWORD PTR 32[rsi]
	mov	rcx, rbp
	cmp	rbx, r8
	cmovbe	r8, rbx
	call	memcmp
	test	eax, eax
	jne	.L3920
	mov	eax, 18
	sub	rax, rbx
	cmp	rax, 2147483647
	jg	.L3919
	cmp	rax, -2147483648
	jl	.L3913
.L3920:
	test	eax, eax
	jns	.L3919
.L3913:
	mov	ecx, 72
	mov	rdi, rsi
.LEHB180:
	call	_Znwy
	mov	rbx, QWORD PTR 1032[rsp]
	lea	rcx, 48[rax]
	mov	rbp, QWORD PTR 1024[rsp]
	mov	rsi, rax
	mov	QWORD PTR 32[rax], rcx
	cmp	rbx, 15
	ja	.L4154
	cmp	rbx, 1
	je	.L4155
	test	rbx, rbx
	jne	.L3924
.L3926:
	mov	rax, QWORD PTR 32[rsi]
	mov	QWORD PTR 40[rsi], rbx
	mov	r8, rdi
	lea	rcx, 160[rsp]
	lea	rdx, _ZN5LeniaL7AnimalsE[rip]
	mov	BYTE PTR [rax+rbx], 0
	mov	rbp, QWORD PTR 40[rsi]
	xor	eax, eax
	mov	r9, QWORD PTR 32[rsi]
	mov	QWORD PTR 64[rsi], rax
	mov	QWORD PTR 32[rsp], rbp
	mov	QWORD PTR 48[rsp], r9
	call	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5Lenia6AnimalEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISB_ERS7_.isra.0
	mov	rdi, QWORD PTR 168[rsp]
	mov	r9, QWORD PTR 48[rsp]
	mov	rbx, QWORD PTR 160[rsp]
	test	rdi, rdi
	je	.L4156
	mov	rax, QWORD PTR 80[rsp]
	test	rbx, rbx
	setne	bl
	cmp	rdi, rax
	sete	al
	or	bl, al
	je	.L4157
.L3932:
	movzx	ecx, bl
	lea	r9, _ZN5LeniaL7AnimalsE[rip+8]
	mov	r8, rdi
	mov	rdx, rsi
	call	_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_
	add	QWORD PTR _ZN5LeniaL7AnimalsE[rip+40], 1
.L3919:
	mov	rbx, QWORD PTR 64[rsi]
	mov	rcx, rbx
	mov	QWORD PTR 120[rsp], rbx
	call	_ZN5Lenia6Animal4BindEv
.LEHE180:
	lea	rax, 1024[rsp]
	lea	rdi, _ZN5LeniaL5MagmaE[rip]
	vxorps	xmm14, xmm14, xmm14
	mov	rcx, rax
	mov	QWORD PTR 72[rsp], rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	QWORD PTR 32[rsp], rdi
	mov	edx, 1024
	lea	rax, 496[rsp]
	mov	rsi, rax
	mov	rcx, rax
	mov	QWORD PTR 104[rsp], rax
	mov	r9d, 4
	mov	r8d, 1024
.LEHB181:
	call	_ZN5Lenia10SimulationC1EyyyRKNS_12ColorPaletteE
.LEHE181:
	mov	r9d, 200
	mov	rdx, rbx
	mov	rcx, rsi
	mov	r8d, 200
	call	_ZN5Lenia10Simulation11PlaceAnimalEPNS_6AnimalEjj
	mov	BYTE PTR 71[rsp], 0
	vxorpd	xmm7, xmm7, xmm7
	lea	rax, 224[rsp]
	mov	QWORD PTR 88[rsp], rax
	vmovq	xmm5, QWORD PTR .LC66[rip]
	vmovsd	xmm6, xmm7, xmm7
	mov	QWORD PTR 208[rsp], rax
	mov	rax, QWORD PTR 496[rsp]
	mov	QWORD PTR 216[rsp], 0
	vmovdqu	xmm13, XMMWORD PTR .LC64[rip]
	add	rax, 31
	mov	BYTE PTR 224[rsp], 0
	shr	rax, 5
	mov	DWORD PTR 64[rsp], 0
	mov	DWORD PTR 112[rsp], eax
	mov	rax, QWORD PTR 504[rsp]
	add	rax, 31
	shr	rax, 5
	mov	DWORD PTR 116[rsp], eax
	lea	rax, .LC59[rip]
	vpinsrq	xmm12, xmm5, rax, 1
	.p2align 4
	.p2align 3
.L3936:
	vmovq	rcx, xmm15
.LEHB182:
	call	glfwWindowShouldClose
	test	eax, eax
	jne	.L4158
	call	glfwGetTime
	mov	edx, 256
	vmovq	rcx, xmm15
	vmovsd	xmm8, xmm0, xmm0
	call	glfwGetKey
	cmp	eax, 1
	je	.L4159
.L3937:
	mov	edx, 80
	vmovq	rcx, xmm15
	call	glfwGetKey
	cmp	eax, 1
	je	.L4160
.L3938:
	lea	rax, 416[rsp]
	lea	rdi, 736[rsp]
	vmovq	xmm2, QWORD PTR .LC67[rip]
	mov	edx, 265
	vmovq	xmm9, rax
	lea	rax, _ZTVNSt8__format10_Iter_sinkIcNS_10_Sink_iterIcEEEE[rip+16]
	lea	rbp, 1056[rsp]
	vmovq	xmm10, rax
	vmovq	rcx, xmm15
	vpinsrq	xmm9, xmm9, QWORD PTR 72[rsp], 1
	vpinsrq	xmm10, xmm10, rdi, 1
	vpinsrq	xmm11, xmm2, rbp, 1
	call	glfwGetKey
	mov	edx, 264
	vmovq	rcx, xmm15
	call	glfwGetKey
	cmp	BYTE PTR 71[rsp], 0
	jne	.L3942
	mov	rax, QWORD PTR .refptr.glad_glClear[rip]
	mov	ecx, 16384
	call	[QWORD PTR [rax]]
	mov	r12, QWORD PTR .refptr.glad_glUseProgram[rip]
	mov	ecx, DWORD PTR 100[rsp]
	call	[QWORD PTR [r12]]
	mov	edx, DWORD PTR 116[rsp]
	mov	ecx, DWORD PTR 112[rsp]
	mov	r8d, 1
	mov	rax, QWORD PTR .refptr.glad_glDispatchCompute[rip]
	call	[QWORD PTR [rax]]
	mov	rax, QWORD PTR .refptr.glad_glMemoryBarrier[rip]
	mov	ecx, 8192
	call	[QWORD PTR [rax]]
	mov	rbx, QWORD PTR .refptr.glad_glUniform1ui[rip]
	mov	edx, DWORD PTR 496[rsp]
	xor	ecx, ecx
	call	[QWORD PTR [rbx]]
	mov	edx, DWORD PTR 504[rsp]
	mov	ecx, 1
	call	[QWORD PTR [rbx]]
	mov	r15, QWORD PTR 120[rsp]
	mov	ecx, 2
	mov	edx, DWORD PTR 176[r15]
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
	mov	ecx, DWORD PTR 96[rsp]
	call	[QWORD PTR [r12]]
	mov	edx, DWORD PTR 496[rsp]
	xor	ecx, ecx
	call	[QWORD PTR [rbx]]
	mov	edx, DWORD PTR 504[rsp]
	mov	ecx, 1
	call	[QWORD PTR [rbx]]
	mov	rax, QWORD PTR .refptr.glad_glUniform2ui[rip]
	mov	r8d, DWORD PTR 540[rsp]
	mov	ecx, 2
	mov	edx, DWORD PTR 536[rsp]
	call	[QWORD PTR [rax]]
	mov	rax, QWORD PTR .refptr.glad_glBindVertexArray[rip]
	mov	ecx, DWORD PTR 184[rsp]
	call	[QWORD PTR [rax]]
	mov	r8d, 5121
	mov	edx, 6
	mov	ecx, 4
	mov	rax, QWORD PTR .refptr.glad_glDrawElements[rip]
	lea	r9, 194[rsp]
	call	[QWORD PTR [rax]]
	vmovq	rcx, xmm15
	call	glfwSwapBuffers
	mov	rcx, QWORD PTR 104[rsp]
	call	_ZN5Lenia10Simulation6UpdateEv
.L3942:
	call	glfwPollEvents
.LEHE182:
	add	DWORD PTR 64[rsp], 1
	mov	eax, DWORD PTR 64[rsp]
	vsubsd	xmm0, xmm6, xmm7
	lea	r9, .LC59[rip+85]
	mov	QWORD PTR 728[rsp], rdi
	mov	r13, r9
	lea	rbx, -85[r9]
	mov	r15d, 85
	vcvtusi2sd	xmm1, xmm14, eax
	mov	esi, 18
	mov	DWORD PTR 480[rsp], eax
	lea	rax, 1328[rsp]
	mov	QWORD PTR 56[rsp], rax
	mov	edi, 13
	mov	QWORD PTR 1312[rsp], rax
	mov	rax, QWORD PTR 72[rsp]
	vmovdqu	XMMWORD PTR 1024[rsp], xmm11
	vdivsd	xmm0, xmm0, xmm1
	mov	QWORD PTR 992[rsp], rax
	lea	rax, 304[rsp]
	vmovdqu	XMMWORD PTR 704[rsp], xmm10
	vmovdqu	XMMWORD PTR 312[rsp], xmm9
	mov	QWORD PTR 1040[rsp], 256
	mov	QWORD PTR 1048[rsp], rbp
	mov	QWORD PTR 1320[rsp], 0
	mov	BYTE PTR 1328[rsp], 0
	mov	QWORD PTR 720[rsp], 256
	mov	QWORD PTR 1000[rsp], -1
	mov	QWORD PTR 1008[rsp], 0
	mov	QWORD PTR 304[rsp], 71438469
	mov	QWORD PTR 328[rsp], 0
	mov	BYTE PTR 336[rsp], 0
	mov	QWORD PTR 368[rsp], r9
	mov	DWORD PTR 376[rsp], 0
	vmovsd	QWORD PTR 416[rsp], xmm6
	vmovdqu	XMMWORD PTR 384[rsp], xmm13
	vmovdqu	XMMWORD PTR 352[rsp], xmm12
	vaddsd	xmm7, xmm7, xmm0
	vmovsd	xmm0, QWORD PTR .LC63[rip]
	vdivsd	xmm0, xmm0, xmm6
	vmovsd	QWORD PTR 448[rsp], xmm7
	vmovsd	QWORD PTR 432[rsp], xmm0
	vmovsd	xmm0, QWORD PTR 528[rsp]
	vmovsd	QWORD PTR 464[rsp], xmm0
	mov	QWORD PTR 400[rsp], rax
	lea	rax, 352[rsp]
	vmovq	xmm9, rax
	lea	rax, 200[rsp]
	vmovq	xmm11, rax
	lea	rax, 240[rsp]
	vmovq	xmm10, rax
.L4040:
	cmp	rdi, rsi
	jnb	.L3997
.L4044:
	lea	r12, 1[rdi]
	cmp	r12, r15
	je	.L4037
	movzx	eax, BYTE PTR 1[rbx+rdi]
	cmp	rsi, -1
	je	.L3946
	cmp	al, 123
	sete	r10b
	sete	bpl
	movzx	r10d, r10b
	add	r10, rdi
	mov	r12, r10
	jne	.L4161
	lea	r8, 1[rbx]
	mov	QWORD PTR 360[rsp], r8
.L3954:
	movsx	ax, BYTE PTR [r8]
	cmp	al, 125
	je	.L4162
	cmp	al, 58
	je	.L4163
	cmp	al, 48
	je	.L4164
	lea	edx, -49[rax]
	cmp	dl, 8
	jbe	.L4165
.L3968:
.LEHB183:
	call	_ZNSt8__format33__invalid_arg_id_in_format_stringEv
	.p2align 4,,10
	.p2align 3
.L4167:
	test	r15, r15
	je	.L3945
	mov	r8, r15
	mov	edx, 125
	mov	rcx, rbx
	call	memchr
	mov	rsi, rax
	test	rax, rax
	je	.L3998
	sub	rsi, rbx
	cmp	rsi, -1
	je	.L3998
.L3997:
	lea	r12, 1[rsi]
	cmp	r12, r15
	je	.L3990
	cmp	BYTE PTR 1[rbx+rsi], 125
	jne	.L3990
	mov	r15, QWORD PTR 400[rsp]
	mov	r14, QWORD PTR 16[r15]
	test	r12, r12
	jne	.L4166
.L3991:
	lea	rbx, 2[rbx+rsi]
	mov	QWORD PTR 16[r15], r14
	mov	r15, r13
	mov	QWORD PTR 360[rsp], rbx
	sub	r15, rbx
	cmp	rdi, -1
	je	.L4167
	test	r15, r15
	je	.L3945
	mov	r8, r15
	mov	edx, 125
	mov	rcx, rbx
	sub	rdi, 1
	call	memchr
	sub	rdi, r12
	mov	rsi, rax
	test	rax, rax
	je	.L3999
.L4149:
	sub	rsi, rbx
.L3960:
	cmp	rdi, rsi
	jne	.L4040
.L3998:
	mov	rsi, QWORD PTR 400[rsp]
	lea	rdx, 144[rsp]
	mov	rdi, QWORD PTR 16[rsi]
	mov	QWORD PTR 144[rsp], r15
	mov	QWORD PTR 152[rsp], rbx
	mov	rcx, rdi
	call	_ZNSt8__format5_SinkIcE8_M_writeESt17basic_string_viewIcSt11char_traitsIcEE
.LEHE183:
	mov	rax, QWORD PTR 368[rsp]
	mov	QWORD PTR 16[rsi], rdi
	mov	QWORD PTR 360[rsp], rax
	.p2align 4
	.p2align 3
.L3945:
	cmp	BYTE PTR 336[rsp], 0
	jne	.L4168
.L4000:
	mov	r10, QWORD PTR 1320[rsp]
	mov	r9, QWORD PTR 1032[rsp]
	mov	r8, QWORD PTR 1048[rsp]
	mov	rcx, r10
	sub	r8, r9
	jne	.L4169
	mov	rdx, QWORD PTR 1312[rsp]
	mov	rdi, QWORD PTR 56[rsp]
	lea	rax, 720[rsp]
	mov	QWORD PTR 704[rsp], rax
	cmp	rdx, rdi
	je	.L4148
.L4036:
	mov	rcx, QWORD PTR 1328[rsp]
	mov	r8, QWORD PTR 208[rsp]
	mov	QWORD PTR 704[rsp], rdx
	mov	rdi, QWORD PTR 88[rsp]
	mov	QWORD PTR 712[rsp], r10
	mov	QWORD PTR 720[rsp], rcx
	mov	rcx, r10
	cmp	r8, rdi
	je	.L4012
	cmp	rdx, rax
	je	.L4020
.L4021:
	vmovq	xmm3, rcx
	mov	r9, QWORD PTR 224[rsp]
	vpinsrq	xmm0, xmm3, QWORD PTR 720[rsp], 1
	mov	QWORD PTR 208[rsp], rdx
	vmovdqu	XMMWORD PTR 216[rsp], xmm0
	test	r8, r8
	je	.L4027
	mov	QWORD PTR 704[rsp], r8
	mov	QWORD PTR 720[rsp], r9
.L4026:
	mov	QWORD PTR 712[rsp], 0
	mov	BYTE PTR [r8], 0
	mov	rcx, QWORD PTR 704[rsp]
	cmp	rcx, rax
	je	.L4028
	mov	rax, QWORD PTR 720[rsp]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L4028:
.LEHB184:
	call	glfwGetTime
	mov	rdx, QWORD PTR 208[rsp]
	vmovq	rcx, xmm15
	vsubsd	xmm6, xmm0, xmm8
	call	glfwSetWindowTitle
.LEHE184:
	jmp	.L3936
	.p2align 4,,10
	.p2align 3
.L4162:
	cmp	DWORD PTR 376[rsp], 1
	je	.L4170
	mov	rax, QWORD PTR 384[rsp]
	mov	DWORD PTR 376[rsp], 2
	lea	rdx, 1[rax]
	mov	QWORD PTR 384[rsp], rdx
.L3963:
	mov	r9, QWORD PTR 400[rsp]
	movzx	edx, BYTE PTR [r9]
	mov	ecx, edx
	and	edx, 15
	and	ecx, 15
	cmp	rax, rdx
	jnb	.L3982
	mov	r8, QWORD PTR [r9]
	lea	rcx, [rax+rax*4]
	sal	rax, 4
	add	rax, QWORD PTR 8[r9]
	vmovdqu	xmm5, XMMWORD PTR [rax]
	shr	r8, 4
	vmovdqu	XMMWORD PTR 272[rsp], xmm5
	shr	r8, cl
	mov	edx, r8d
	and	r8d, 31
	and	edx, 31
.L3983:
	mov	BYTE PTR 288[rsp], dl
	vmovq	rcx, xmm10
	vmovdqu	ymm0, YMMWORD PTR 272[rsp]
	vmovq	rdx, xmm11
	vmovq	QWORD PTR 200[rsp], xmm9
	vmovdqu	YMMWORD PTR 240[rsp], ymm0
	vzeroupper
.LEHB185:
	call	_ZNSt16basic_format_argISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE8_M_visitIZNS1_19_Formatting_scannerIS3_cE13_M_format_argEyEUlRT_E_EEDcOS9_NS1_6_Arg_tE
	mov	rbx, QWORD PTR 360[rsp]
	mov	r13, QWORD PTR 368[rsp]
	cmp	rbx, r13
	je	.L3984
	cmp	BYTE PTR [rbx], 125
	jne	.L3984
	add	rbx, 1
	mov	r15, r13
	mov	QWORD PTR 360[rsp], rbx
	sub	r15, rbx
	je	.L3945
	mov	r8, r15
	mov	edx, 123
	mov	rcx, rbx
	call	memchr
	mov	rbp, rax
	test	rax, rax
	je	.L4171
	mov	r8, r15
	mov	edx, 125
	mov	rcx, rbx
	mov	rdi, rax
	call	memchr
	sub	rdi, rbx
	mov	rsi, rax
	test	rax, rax
	jne	.L4149
	cmp	rdi, -1
	je	.L3998
	lea	r12, 1[rdi]
	cmp	r12, r15
	je	.L4037
	movzx	eax, BYTE PTR 1[rbp]
	.p2align 4
	.p2align 3
.L3946:
	cmp	al, 123
	jne	.L4037
	lea	rax, [rbx+r12]
	mov	r15, QWORD PTR 400[rsp]
	mov	ebp, 1
	mov	rsi, -1
	mov	QWORD PTR 48[rsp], rax
	mov	r13, QWORD PTR 16[r15]
.L4041:
	mov	rcx, QWORD PTR 24[r13]
	mov	r14, QWORD PTR 16[r13]
	mov	rax, rcx
	sub	rax, QWORD PTR 8[r13]
	sub	r14, rax
	cmp	r12, r14
	jb	.L3950
	.p2align 4
	.p2align 3
.L3952:
	cmp	r12, r14
	mov	r8, r14
	cmovbe	r8, r12
	test	r8, r8
	je	.L3951
	mov	rdx, rbx
	call	memcpy
	mov	rcx, QWORD PTR 24[r13]
.L3951:
	mov	rax, QWORD PTR 0[r13]
	add	rcx, r14
	add	rbx, r14
	sub	r12, r14
	mov	QWORD PTR 24[r13], rcx
	mov	rcx, r13
	call	[QWORD PTR [rax]]
	mov	rcx, QWORD PTR 24[r13]
	mov	r14, QWORD PTR 16[r13]
	mov	rax, rcx
	sub	rax, QWORD PTR 8[r13]
	sub	r14, rax
	cmp	r12, r14
	jnb	.L3952
	test	r12, r12
	jne	.L3950
.L3953:
	mov	QWORD PTR 16[r15], r13
	mov	rax, QWORD PTR 48[rsp]
	mov	r13, QWORD PTR 368[rsp]
	lea	rbx, 1[rax]
	mov	r15, r13
	mov	QWORD PTR 360[rsp], rbx
	sub	r15, rbx
	test	bpl, bpl
	je	.L4050
	cmp	rsi, -1
	je	.L4172
	test	r15, r15
	je	.L3945
	mov	r8, r15
	mov	edx, 123
	mov	rcx, rbx
	sub	rsi, 2
	call	memchr
	sub	rsi, rdi
	mov	rdi, rax
	test	rax, rax
	je	.L3959
	sub	rdi, rbx
	jmp	.L3960
	.p2align 4,,10
	.p2align 3
.L4166:
	mov	rcx, QWORD PTR 24[r14]
	mov	r9, QWORD PTR 16[r14]
	mov	rbp, rbx
	mov	r13, r12
	mov	rax, rcx
	sub	rax, QWORD PTR 8[r14]
	sub	r9, rax
	cmp	r12, r9
	jb	.L3992
	.p2align 4
	.p2align 3
.L3994:
	cmp	r9, r13
	mov	r8, r13
	cmovbe	r8, r9
	test	r8, r8
	je	.L3993
	mov	rdx, rbp
	mov	QWORD PTR 48[rsp], r9
	call	memcpy
	mov	rcx, QWORD PTR 24[r14]
	mov	r9, QWORD PTR 48[rsp]
.L3993:
	mov	rax, QWORD PTR [r14]
	add	rcx, r9
	add	rbp, r9
	sub	r13, r9
	mov	QWORD PTR 24[r14], rcx
	mov	rcx, r14
	call	[QWORD PTR [rax]]
.LEHE185:
	mov	rcx, QWORD PTR 24[r14]
	mov	r9, QWORD PTR 16[r14]
	mov	rax, rcx
	sub	rax, QWORD PTR 8[r14]
	sub	r9, rax
	cmp	r13, r9
	jnb	.L3994
	test	r13, r13
	jne	.L3992
.L3995:
	mov	r13, QWORD PTR 368[rsp]
	jmp	.L3991
	.p2align 4,,10
	.p2align 3
.L3992:
	mov	r8, r13
	mov	rdx, rbp
	call	memcpy
	add	QWORD PTR 24[r14], r13
	jmp	.L3995
	.p2align 4,,10
	.p2align 3
.L4172:
	test	r15, r15
	je	.L3945
	mov	r8, r15
	mov	edx, 123
	mov	rcx, rbx
	call	memchr
	mov	rdi, rax
	test	rax, rax
	je	.L3998
	sub	rdi, rbx
	cmp	rdi, -1
	jne	.L4044
	jmp	.L3998
	.p2align 4,,10
	.p2align 3
.L3982:
	mov	edx, ecx
	test	cl, cl
	jne	.L4052
	mov	rcx, QWORD PTR [r9]
	xor	r8d, r8d
	shr	rcx, 4
	cmp	rax, rcx
	jnb	.L3983
	sal	rax, 5
	add	rax, QWORD PTR 8[r9]
	vmovdqu	xmm4, XMMWORD PTR [rax]
	movzx	r8d, BYTE PTR 16[rax]
	vmovdqu	XMMWORD PTR 272[rsp], xmm4
	mov	edx, r8d
	jmp	.L3983
	.p2align 4,,10
	.p2align 3
.L3999:
	mov	rsi, -1
	cmp	rdi, -1
	jne	.L4044
	jmp	.L3998
	.p2align 4,,10
	.p2align 3
.L4160:
	mov	rcx, QWORD PTR .refptr._ZSt4cout[rip]
	mov	r8d, 8
	xor	BYTE PTR 71[rsp], 1
	lea	rdx, .LC62[rip]
	movzx	edi, BYTE PTR 71[rsp]
.LEHB186:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	mov	rcx, QWORD PTR .refptr._ZSt4cout[rip]
	movzx	edx, dil
	call	_ZNSo9_M_insertIbEERSoT_
	mov	rbx, rax
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR -24[rax]
	mov	rsi, QWORD PTR 240[rbx+rax]
	test	rsi, rsi
	je	.L4173
	cmp	BYTE PTR 56[rsi], 0
	je	.L3940
	movsx	edx, BYTE PTR 67[rsi]
.L3941:
	mov	rcx, rbx
	call	_ZNSo3putEc
	mov	rcx, rax
	call	_ZNSo5flushEv
	jmp	.L3938
	.p2align 4,,10
	.p2align 3
.L4159:
	mov	edx, 1
	vmovq	rcx, xmm15
	call	glfwSetWindowShouldClose
	jmp	.L3937
	.p2align 4,,10
	.p2align 3
.L4052:
	xor	r8d, r8d
	xor	edx, edx
	jmp	.L3983
	.p2align 4,,10
	.p2align 3
.L4169:
	movabs	rax, 9223372036854775807
	sub	rax, r10
	cmp	rax, r8
	jb	.L4174
	mov	rax, QWORD PTR 1312[rsp]
	mov	rdi, QWORD PTR 56[rsp]
	lea	rsi, [r10+r8]
	cmp	rax, rdi
	je	.L4056
	mov	rcx, QWORD PTR 1328[rsp]
.L4007:
	cmp	rcx, rsi
	jb	.L4008
	lea	rcx, [rax+r10]
	cmp	r8, 1
	je	.L4175
	mov	rdx, r9
	call	memcpy
.L4010:
	mov	rax, QWORD PTR 1312[rsp]
	mov	QWORD PTR 1320[rsp], rsi
	mov	rdi, QWORD PTR 56[rsp]
	mov	BYTE PTR [rax+rsi], 0
	mov	rax, QWORD PTR 1032[rsp]
	mov	rdx, QWORD PTR 1312[rsp]
	mov	QWORD PTR 1048[rsp], rax
	lea	rax, 720[rsp]
	mov	QWORD PTR 704[rsp], rax
	cmp	rdx, rdi
	je	.L4011
	mov	r10, QWORD PTR 1320[rsp]
	jmp	.L4036
	.p2align 4,,10
	.p2align 3
.L4168:
	lea	rcx, 328[rsp]
	call	_ZNSt6localeD1Ev
	jmp	.L4000
	.p2align 4,,10
	.p2align 3
.L4163:
	cmp	DWORD PTR 376[rsp], 1
	je	.L4176
	mov	rax, QWORD PTR 384[rsp]
	add	rbx, 2
	mov	DWORD PTR 376[rsp], 2
	mov	QWORD PTR 360[rsp], rbx
	lea	rdx, 1[rax]
	mov	QWORD PTR 384[rsp], rdx
	jmp	.L3963
	.p2align 4,,10
	.p2align 3
.L3950:
	mov	r8, r12
	mov	rdx, rbx
	call	memcpy
	add	QWORD PTR 24[r13], r12
	jmp	.L3953
	.p2align 4,,10
	.p2align 3
.L4012:
	mov	rdx, QWORD PTR 704[rsp]
	cmp	rdx, rax
	je	.L4020
	vmovq	xmm4, rcx
	mov	QWORD PTR 208[rsp], rdx
	vpinsrq	xmm0, xmm4, QWORD PTR 720[rsp], 1
	vmovdqu	XMMWORD PTR 216[rsp], xmm0
.L4027:
	mov	QWORD PTR 704[rsp], rax
	lea	rax, 720[rsp]
	mov	r8, rax
	jmp	.L4026
	.p2align 4,,10
	.p2align 3
.L4164:
	add	rbx, 2
	xor	eax, eax
.L3967:
	movzx	edx, BYTE PTR [rbx]
	cmp	dl, 125
	je	.L4065
	cmp	dl, 58
	jne	.L3968
.L4065:
	cmp	DWORD PTR 376[rsp], 2
	movzx	eax, ax
	je	.L4177
	mov	DWORD PTR 376[rsp], 1
	xor	edx, edx
	cmp	BYTE PTR [rbx], 58
	sete	dl
	add	rbx, rdx
	mov	QWORD PTR 360[rsp], rbx
	jmp	.L3963
	.p2align 4,,10
	.p2align 3
.L4165:
	add	rbx, 2
	cmp	r13, rbx
	je	.L3969
	movzx	edi, BYTE PTR 1[r8]
	lea	edx, -48[rdi]
	cmp	dl, 9
	ja	.L3969
	mov	rbx, r8
	xor	eax, eax
	mov	r10d, 16
	jmp	.L3970
	.p2align 4,,10
	.p2align 3
.L4178:
	lea	eax, [rax+rax*4]
	movzx	ecx, cl
	lea	eax, [rcx+rax*2]
.L3973:
	add	rbx, 1
	cmp	r13, rbx
	je	.L3967
.L3970:
	movzx	edi, BYTE PTR [rbx]
	lea	ecx, -48[rdi]
	cmp	cl, 9
	ja	.L3971
	sub	r10d, 4
	jns	.L4178
	mov	edx, 10
	mul	dx
	jo	.L3968
	movzx	ecx, cl
	add	cx, ax
	jc	.L3968
	mov	eax, ecx
	jmp	.L3973
.L4011:
	mov	rcx, QWORD PTR 1320[rsp]
.L4148:
	lea	r8, 1[rcx]
	mov	rbx, rdi
	mov	r11, rax
	mov	r9, rdi
	cmp	r8d, 8
	jnb	.L4179
.L4014:
	xor	edx, edx
	test	r8b, 4
	je	.L4017
	mov	edx, DWORD PTR [r9]
	mov	DWORD PTR [r11], edx
	mov	edx, 4
.L4017:
	test	r8b, 2
	je	.L4018
	movzx	r10d, WORD PTR [r9+rdx]
	mov	WORD PTR [r11+rdx], r10w
	add	rdx, 2
.L4018:
	and	r8d, 1
	je	.L4019
	movzx	r8d, BYTE PTR [r9+rdx]
	mov	BYTE PTR [r11+rdx], r8b
.L4019:
	mov	r8, QWORD PTR 208[rsp]
	mov	rdi, QWORD PTR 88[rsp]
	mov	QWORD PTR 712[rsp], rcx
	cmp	r8, rdi
	je	.L4012
	mov	rdx, QWORD PTR 704[rsp]
	cmp	rdx, rax
	jne	.L4021
	.p2align 4
	.p2align 3
.L4020:
	test	rcx, rcx
	je	.L4024
	cmp	rcx, 1
	je	.L4180
	mov	rdi, r8
	mov	ecx, ecx
	mov	rsi, rax
	rep movsb
	mov	rcx, QWORD PTR 712[rsp]
	mov	r8, QWORD PTR 208[rsp]
.L4024:
	mov	QWORD PTR 216[rsp], rcx
	mov	BYTE PTR [r8+rcx], 0
	mov	r8, QWORD PTR 704[rsp]
	jmp	.L4026
	.p2align 4,,10
	.p2align 3
.L3940:
	mov	rcx, rsi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	mov	rax, QWORD PTR [rsi]
	mov	edx, 10
	mov	r8, QWORD PTR 48[rax]
	lea	rax, _ZNKSt5ctypeIcE8do_widenEc[rip]
	cmp	r8, rax
	je	.L3941
	mov	rcx, rsi
	call	r8
	movsx	edx, al
	jmp	.L3941
	.p2align 4,,10
	.p2align 3
.L4171:
	mov	r8, r15
	mov	edx, 125
	mov	rcx, rbx
	call	memchr
	mov	rsi, rax
	test	rax, rax
	je	.L3998
	mov	rdi, -1
	jmp	.L4149
.L3959:
	cmp	rsi, -1
	je	.L3998
	mov	rdi, -1
	jmp	.L3997
.L3969:
	sub	eax, 48
	jmp	.L3967
.L4158:
	mov	rax, QWORD PTR .refptr.glad_glDeleteVertexArrays[rip]
	mov	rdx, QWORD PTR 128[rsp]
	mov	ecx, 1
	call	[QWORD PTR [rax]]
	mov	rbx, QWORD PTR .refptr.glad_glDeleteProgram[rip]
	mov	ecx, DWORD PTR 96[rsp]
	call	[QWORD PTR [rbx]]
	mov	ecx, DWORD PTR 100[rsp]
	call	[QWORD PTR [rbx]]
	mov	rax, QWORD PTR .refptr.glad_glDeleteBuffers[rip]
	mov	rdx, QWORD PTR 136[rsp]
	mov	ecx, 1
	call	[QWORD PTR [rax]]
	vmovq	rcx, xmm15
	call	glfwDestroyWindow
	call	glfwTerminate
.LEHE186:
	mov	rbx, QWORD PTR _ZN5LeniaL7AnimalsE[rip+24]
	mov	rax, QWORD PTR 80[rsp]
	cmp	rbx, rax
	je	.L4033
	.p2align 4
	.p2align 3
.L4030:
	mov	rsi, QWORD PTR 64[rbx]
	test	rsi, rsi
	je	.L4031
	mov	rcx, rsi
	call	_ZN5Lenia6AnimalD1Ev
	mov	edx, 288
	mov	rcx, rsi
	call	_ZdlPvy
.L4031:
	mov	rcx, rbx
	call	_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base
	mov	rbx, rax
	mov	rax, QWORD PTR 80[rsp]
	cmp	rbx, rax
	jne	.L4030
.L4033:
	lea	rcx, 208[rsp]
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	rcx, QWORD PTR 104[rsp]
	call	_ZN5Lenia10SimulationD1Ev
	xor	eax, eax
	vmovups	xmm6, XMMWORD PTR 1344[rsp]
	vmovups	xmm7, XMMWORD PTR 1360[rsp]
	vmovups	xmm8, XMMWORD PTR 1376[rsp]
	vmovups	xmm9, XMMWORD PTR 1392[rsp]
	vmovups	xmm10, XMMWORD PTR 1408[rsp]
	vmovups	xmm11, XMMWORD PTR 1424[rsp]
	vmovups	xmm12, XMMWORD PTR 1440[rsp]
	vmovups	xmm13, XMMWORD PTR 1456[rsp]
	vmovups	xmm14, XMMWORD PTR 1472[rsp]
	vmovups	xmm15, XMMWORD PTR 1488[rsp]
	add	rsp, 1512
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
.L4008:
	mov	QWORD PTR 32[rsp], r8
	lea	rbx, 1312[rsp]
	xor	r8d, r8d
	mov	rdx, r10
	mov	rcx, rbx
.LEHB187:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEyyPKcy
.LEHE187:
	jmp	.L4010
.L4179:
	mov	r9d, r8d
	xor	edx, edx
	and	r9d, -8
.L4015:
	mov	r10d, edx
	add	edx, 8
	mov	r11, QWORD PTR [rbx+r10]
	mov	QWORD PTR [rax+r10], r11
	cmp	edx, r9d
	jb	.L4015
	mov	r9, QWORD PTR 56[rsp]
	lea	r11, [rax+rdx]
	add	r9, rdx
	jmp	.L4014
.L4056:
	mov	ecx, 15
	jmp	.L4007
.L4175:
	movzx	eax, BYTE PTR [r9]
	mov	BYTE PTR [rcx], al
	jmp	.L4010
.L4180:
	movzx	edx, BYTE PTR 720[rsp]
	mov	BYTE PTR [r8], dl
	mov	rcx, QWORD PTR 712[rsp]
	mov	r8, QWORD PTR 208[rsp]
	jmp	.L4024
.L4155:
	movzx	eax, BYTE PTR 0[rbp]
	mov	BYTE PTR 48[rsi], al
	jmp	.L3926
.L4154:
	test	rbx, rbx
	js	.L4181
	mov	rcx, rbx
	add	rcx, 1
	js	.L4182
.LEHB188:
	call	_Znwy
	mov	QWORD PTR 32[rsi], rax
	mov	rcx, rax
	mov	QWORD PTR 48[rsi], rbx
.L3924:
	mov	r8, rbx
	mov	rdx, rbp
	call	memcpy
	jmp	.L3926
.L4156:
	lea	rcx, 32[rsi]
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	rcx, rsi
	mov	edx, 72
	mov	rsi, rbx
	call	_ZdlPvy
	jmp	.L3919
.L3971:
	cmp	r8, rbx
	jne	.L3967
	jmp	.L3968
.L4157:
	mov	r12, QWORD PTR 40[rdi]
	cmp	rbp, r12
	mov	r8, r12
	cmovbe	r8, rbp
	test	r8, r8
	je	.L3933
	mov	rdx, QWORD PTR 32[rdi]
	mov	rcx, r9
	call	memcmp
	test	eax, eax
	jne	.L3934
.L3933:
	mov	rax, rbp
	sub	rax, r12
	cmp	rax, 2147483647
	jg	.L3932
	cmp	rax, -2147483648
	jl	.L4047
.L3934:
	shr	eax, 31
	mov	ebx, eax
	jmp	.L3932
.L4182:
	call	_ZSt17__throw_bad_allocv
.LEHE188:
.L4047:
	mov	ebx, 1
	jmp	.L3932
.L4150:
	mov	rsi, QWORD PTR .refptr._ZSt4cout[rip]
	mov	r8d, 25
	lea	rdx, .LC60[rip]
	mov	rcx, rsi
.LEHB189:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	mov	rax, QWORD PTR [rsi]
	mov	rax, QWORD PTR -24[rax]
	mov	rbx, QWORD PTR 240[rax+rsi]
	test	rbx, rbx
	je	.L4183
	cmp	BYTE PTR 56[rbx], 0
	je	.L3910
	movzx	eax, BYTE PTR 67[rbx]
.L3911:
	movsx	edx, al
	mov	rcx, rsi
	call	_ZNSo3putEc
	mov	rcx, rax
	call	_ZNSo5flushEv
	or	ecx, -1
	call	exit
.L4161:
	mov	r15, QWORD PTR 400[rsp]
	lea	rax, [rbx+r10]
	mov	QWORD PTR 48[rsp], rax
	mov	r13, QWORD PTR 16[r15]
	jmp	.L4041
.L3910:
	mov	rcx, rbx
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	mov	rax, QWORD PTR [rbx]
	lea	rdx, _ZNKSt5ctypeIcE8do_widenEc[rip]
	mov	r8, QWORD PTR 48[rax]
	mov	eax, 10
	cmp	r8, rdx
	je	.L3911
	mov	edx, 10
	mov	rcx, rbx
	call	r8
	jmp	.L3911
.L4050:
	mov	r8, rbx
	mov	rbx, QWORD PTR 48[rsp]
	jmp	.L3954
.L4151:
	call	glfwTerminate
	or	ecx, -1
	call	exit
.L4183:
	call	_ZSt16__throw_bad_castv
.LEHE189:
.L4181:
	lea	rcx, .LC15[rip]
.LEHB190:
	call	_ZSt20__throw_length_errorPKc
.LEHE190:
.L4061:
	mov	rcx, rax
	vzeroupper
	call	__cxa_begin_catch
	mov	edx, 72
	mov	rcx, rsi
	call	_ZdlPvy
.LEHB191:
	call	__cxa_rethrow
.LEHE191:
.L4177:
.LEHB192:
	call	_ZNSt8__format39__conflicting_indexing_in_format_stringEv
.LEHE192:
.L4174:
	lea	rcx, .LC16[rip]
	lea	rbx, 1312[rsp]
.LEHB193:
	call	_ZSt20__throw_length_errorPKc
.LEHE193:
.L4173:
.LEHB194:
	call	_ZSt16__throw_bad_castv
.LEHE194:
.L3984:
.LEHB195:
	call	_ZNSt8__format39__unmatched_left_brace_in_format_stringEv
.LEHE195:
.L4062:
	mov	rbx, rax
	vzeroupper
	call	__cxa_end_catch
.L3931:
	lea	rcx, 1024[rsp]
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	rcx, rbx
.LEHB196:
	call	_Unwind_Resume
.LEHE196:
.L4176:
.LEHB197:
	call	_ZNSt8__format39__conflicting_indexing_in_format_stringEv
.LEHE197:
.L4060:
	mov	rsi, rax
	vzeroupper
.L4022:
	lea	rcx, 208[rsp]
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	rcx, QWORD PTR 104[rsp]
	call	_ZN5Lenia10SimulationD1Ev
	mov	rcx, rsi
.LEHB198:
	call	_Unwind_Resume
.LEHE198:
.L4059:
	mov	rbx, rax
	vzeroupper
	jmp	.L3931
.L4037:
.LEHB199:
	call	_ZNSt8__format39__unmatched_left_brace_in_format_stringEv
.L4170:
	call	_ZNSt8__format39__conflicting_indexing_in_format_stringEv
.L3990:
	lea	rcx, .LC65[rip]
	call	_ZSt20__throw_format_errorPKc
.LEHE199:
.L4064:
	cmp	BYTE PTR 336[rsp], 0
	mov	rsi, rax
	jne	.L4184
	vzeroupper
.L4004:
	lea	rbx, 1312[rsp]
	jmp	.L4005
.L4063:
	mov	rsi, rax
	vzeroupper
.L4005:
	lea	rax, _ZTVNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE[rip+16]
	mov	rcx, rbx
	mov	QWORD PTR 1024[rsp], rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	.L4022
.L4184:
	lea	rcx, 328[rsp]
	vzeroupper
	call	_ZNSt6localeD1Ev
	jmp	.L4004
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
	.align 4
.LLSDA7281:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT7281-.LLSDATTD7281
.LLSDATTD7281:
	.byte	0x1
	.uleb128 .LLSDACSE7281-.LLSDACSB7281
.LLSDACSB7281:
	.uleb128 .LEHB179-.LFB7281
	.uleb128 .LEHE179-.LEHB179
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB180-.LFB7281
	.uleb128 .LEHE180-.LEHB180
	.uleb128 .L4059-.LFB7281
	.uleb128 0
	.uleb128 .LEHB181-.LFB7281
	.uleb128 .LEHE181-.LEHB181
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB182-.LFB7281
	.uleb128 .LEHE182-.LEHB182
	.uleb128 .L4060-.LFB7281
	.uleb128 0
	.uleb128 .LEHB183-.LFB7281
	.uleb128 .LEHE183-.LEHB183
	.uleb128 .L4064-.LFB7281
	.uleb128 0
	.uleb128 .LEHB184-.LFB7281
	.uleb128 .LEHE184-.LEHB184
	.uleb128 .L4060-.LFB7281
	.uleb128 0
	.uleb128 .LEHB185-.LFB7281
	.uleb128 .LEHE185-.LEHB185
	.uleb128 .L4064-.LFB7281
	.uleb128 0
	.uleb128 .LEHB186-.LFB7281
	.uleb128 .LEHE186-.LEHB186
	.uleb128 .L4060-.LFB7281
	.uleb128 0
	.uleb128 .LEHB187-.LFB7281
	.uleb128 .LEHE187-.LEHB187
	.uleb128 .L4063-.LFB7281
	.uleb128 0
	.uleb128 .LEHB188-.LFB7281
	.uleb128 .LEHE188-.LEHB188
	.uleb128 .L4061-.LFB7281
	.uleb128 0x1
	.uleb128 .LEHB189-.LFB7281
	.uleb128 .LEHE189-.LEHB189
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB190-.LFB7281
	.uleb128 .LEHE190-.LEHB190
	.uleb128 .L4061-.LFB7281
	.uleb128 0x1
	.uleb128 .LEHB191-.LFB7281
	.uleb128 .LEHE191-.LEHB191
	.uleb128 .L4062-.LFB7281
	.uleb128 0
	.uleb128 .LEHB192-.LFB7281
	.uleb128 .LEHE192-.LEHB192
	.uleb128 .L4064-.LFB7281
	.uleb128 0
	.uleb128 .LEHB193-.LFB7281
	.uleb128 .LEHE193-.LEHB193
	.uleb128 .L4063-.LFB7281
	.uleb128 0
	.uleb128 .LEHB194-.LFB7281
	.uleb128 .LEHE194-.LEHB194
	.uleb128 .L4060-.LFB7281
	.uleb128 0
	.uleb128 .LEHB195-.LFB7281
	.uleb128 .LEHE195-.LEHB195
	.uleb128 .L4064-.LFB7281
	.uleb128 0
	.uleb128 .LEHB196-.LFB7281
	.uleb128 .LEHE196-.LEHB196
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB197-.LFB7281
	.uleb128 .LEHE197-.LEHB197
	.uleb128 .L4064-.LFB7281
	.uleb128 0
	.uleb128 .LEHB198-.LFB7281
	.uleb128 .LEHE198-.LEHB198
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB199-.LFB7281
	.uleb128 .LEHE199-.LEHB199
	.uleb128 .L4064-.LFB7281
	.uleb128 0
.LLSDACSE7281:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT7281:
	.section	.text.startup,"x"
	.seh_endproc
	.section	.text$_ZNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcE13_M_format_argEy,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcE13_M_format_argEy
	.def	_ZNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcE13_M_format_argEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcE13_M_format_argEy
_ZNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcE13_M_format_argEy:
.LFB9224:
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
	sub	rsp, 488
	.seh_stackalloc	488
	.seh_endprologue
	mov	rsi, QWORD PTR 48[rcx]
	movzx	eax, BYTE PTR [rsi]
	mov	rbx, rcx
	mov	ecx, eax
	and	eax, 15
	and	ecx, 15
	cmp	rdx, rax
	jnb	.L4186
	mov	rax, QWORD PTR [rsi]
	lea	rcx, [rdx+rdx*4]
	sal	rdx, 4
	add	rdx, QWORD PTR 8[rsi]
	vmovdqu	xmm2, XMMWORD PTR [rdx]
	shr	rax, 4
	vmovdqu	XMMWORD PTR 160[rsp], xmm2
	shr	rax, cl
	and	eax, 31
.L4187:
	mov	BYTE PTR 176[rsp], al
	lea	rdx, .L4191[rip]
	movzx	eax, al
	vmovdqu	ymm0, YMMWORD PTR 160[rsp]
	movsx	rax, DWORD PTR [rdx+rax*4]
	vmovdqu	YMMWORD PTR 192[rsp], ymm0
	add	rax, rdx
	jmp	rax
	.section .rdata,"dr"
	.align 4
.L4191:
	.long	.L4448-.L4191
	.long	.L4205-.L4191
	.long	.L4204-.L4191
	.long	.L4203-.L4191
	.long	.L4202-.L4191
	.long	.L4201-.L4191
	.long	.L4200-.L4191
	.long	.L4199-.L4191
	.long	.L4198-.L4191
	.long	.L4197-.L4191
	.long	.L4196-.L4191
	.long	.L4195-.L4191
	.long	.L4194-.L4191
	.long	.L4193-.L4191
	.long	.L4192-.L4191
	.long	.L4190-.L4191
	.section	.text$_ZNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcE13_M_format_argEy,"x"
	.linkonce discard
	.p2align 4,,10
	.p2align 3
.L4186:
	test	cl, cl
	jne	.L4188
	mov	rax, QWORD PTR [rsi]
	shr	rax, 4
	cmp	rdx, rax
	jnb	.L4188
	sal	rdx, 5
	add	rdx, QWORD PTR 8[rsi]
	vmovdqu	xmm3, XMMWORD PTR [rdx]
	movzx	eax, BYTE PTR 16[rdx]
	vmovdqu	XMMWORD PTR 160[rsp], xmm3
	jmp	.L4187
	.p2align 4,,10
	.p2align 3
.L4190:
	mov	QWORD PTR 272[rsp], 0
	lea	rsi, 272[rsp]
	lea	rdx, 8[rbx]
	mov	r8d, 1
	mov	DWORD PTR 280[rsp], 32
	mov	rcx, rsi
	vzeroupper
.LEHB200:
	call	_ZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeE
	mov	r8, QWORD PTR 48[rbx]
	lea	rdx, 64[rsp]
	mov	QWORD PTR 8[rbx], rax
	mov	rcx, rsi
	vmovdqu	xmm1, XMMWORD PTR 192[rsp]
	mov	QWORD PTR 56[rsp], r8
	vmovdqu	XMMWORD PTR 64[rsp], xmm1
	call	_ZNKSt8__format15__formatter_intIcE6formatIoNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
	mov	r8, QWORD PTR 56[rsp]
	mov	QWORD PTR 16[r8], rax
.L4450:
	add	rsp, 488
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.p2align 4,,10
	.p2align 3
.L4205:
	lea	r13, 148[rsp]
	xor	r8d, r8d
	lea	rdx, 8[rbx]
	mov	QWORD PTR 148[rsp], 0
	mov	DWORD PTR 156[rsp], 32
	mov	rcx, r13
	vzeroupper
	call	_ZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeE
.LEHE200:
	movzx	ecx, BYTE PTR 149[rsp]
	and	ecx, 120
	jne	.L4206
	movzx	edx, BYTE PTR 148[rsp]
	test	dl, 92
	jne	.L4458
	mov	QWORD PTR 8[rbx], rax
	mov	r12, QWORD PTR 48[rbx]
	and	edx, 32
	lea	rbx, 240[rsp]
	mov	QWORD PTR 224[rsp], rbx
	movzx	esi, BYTE PTR 192[rsp]
	mov	QWORD PTR 232[rsp], 0
	mov	BYTE PTR 240[rsp], 0
	jne	.L4459
	mov	eax, 5
	lea	r9, .LC12[rip]
	test	sil, sil
	je	.L4224
	mov	eax, 4
	lea	r9, .LC13[rip]
.L4224:
	mov	QWORD PTR 32[rsp], rax
	lea	rsi, 224[rsp]
	xor	r8d, r8d
	xor	edx, edx
	mov	rcx, rsi
.LEHB201:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy.isra.0
	mov	rdx, QWORD PTR 232[rsp]
.L4223:
	lea	rcx, 112[rsp]
	mov	r9, r13
	mov	r8, r12
	mov	QWORD PTR 112[rsp], rdx
	mov	DWORD PTR 32[rsp], 1
	mov	rax, QWORD PTR 224[rsp]
	mov	QWORD PTR 120[rsp], rax
	call	_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEyRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE
.LEHE201:
	mov	rcx, rsi
	mov	rbx, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	.L4211
	.p2align 4,,10
	.p2align 3
.L4204:
	mov	QWORD PTR 272[rsp], 0
	lea	rbp, 272[rsp]
	lea	rdx, 8[rbx]
	mov	r8d, 7
	mov	DWORD PTR 280[rsp], 32
	mov	rcx, rbp
	vzeroupper
.LEHB202:
	call	_ZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeE
	movzx	edx, BYTE PTR 273[rsp]
	mov	ecx, edx
	not	edx
	and	ecx, 120
	and	edx, 56
	jne	.L4228
	test	BYTE PTR 272[rsp], 92
	jne	.L4460
	mov	QWORD PTR 8[rbx], rax
	mov	rbx, QWORD PTR 48[rbx]
	cmp	cl, 56
	je	.L4461
	mov	rax, QWORD PTR 16[rbx]
	jmp	.L4457
	.p2align 4,,10
	.p2align 3
.L4203:
	mov	QWORD PTR 136[rsp], 0
	lea	r12, 136[rsp]
	lea	rdx, 8[rbx]
	mov	r8d, 1
	mov	DWORD PTR 144[rsp], 32
	mov	rcx, r12
	vzeroupper
	call	_ZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeE
	mov	r13, QWORD PTR 48[rbx]
	mov	QWORD PTR 8[rbx], rax
	movzx	eax, BYTE PTR 137[rsp]
	mov	ebx, DWORD PTR 192[rsp]
	mov	esi, eax
	and	esi, 120
	mov	r9d, ebx
	cmp	sil, 56
	je	.L4462
	shr	al, 3
	and	eax, 15
	test	ebx, ebx
	js	.L4463
	cmp	al, 3
	ja	.L4244
	cmp	al, 1
	ja	.L4464
	test	ebx, ebx
	jne	.L4240
.L4453:
	mov	BYTE PTR 227[rsp], 48
	movzx	ecx, BYTE PTR 136[rsp]
.L4257:
	lea	rdi, 227[rsp]
	lea	rdx, 226[rsp]
	mov	rax, rdi
	lea	rbp, 228[rsp]
.L4275:
	shr	cl, 2
	and	ecx, 3
	cmp	ecx, 1
	je	.L4465
	cmp	ecx, 3
	je	.L4466
.L4278:
	mov	rdx, rbp
	sub	rdi, rax
	mov	r9, r13
	mov	rcx, r12
	sub	rdx, rax
	mov	r8, rdi
	mov	QWORD PTR 120[rsp], rax
	mov	QWORD PTR 112[rsp], rdx
	lea	rdx, 112[rsp]
	call	_ZNKSt8__format15__formatter_intIcE13_M_format_intINS_10_Sink_iterIcEEEENSt20basic_format_contextIT_cE8iteratorESt17basic_string_viewIcSt11char_traitsIcEEyRS7_
.L4236:
	mov	QWORD PTR 16[r13], rax
	jmp	.L4450
	.p2align 4,,10
	.p2align 3
.L4202:
	mov	QWORD PTR 224[rsp], 0
	lea	rsi, 224[rsp]
	lea	rdx, 8[rbx]
	mov	r8d, 1
	mov	DWORD PTR 232[rsp], 32
	mov	rcx, rsi
	vzeroupper
	call	_ZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeE
	mov	rdi, QWORD PTR 48[rbx]
	mov	r9d, DWORD PTR 192[rsp]
	mov	QWORD PTR 8[rbx], rax
	movzx	eax, BYTE PTR 225[rsp]
	mov	ebp, eax
	and	ebp, 120
	cmp	bpl, 56
	je	.L4467
	shr	al, 3
	and	eax, 15
	cmp	al, 4
	je	.L4282
	ja	.L4283
	cmp	al, 1
	jbe	.L4284
	cmp	bpl, 16
	lea	rcx, .LC41[rip]
	lea	rax, .LC42[rip]
	cmovne	rcx, rax
	test	r9d, r9d
	jne	.L4468
	mov	eax, 48
	lea	r12, 276[rsp]
	lea	rbx, 275[rsp]
.L4289:
	mov	BYTE PTR 275[rsp], al
	movzx	eax, BYTE PTR 224[rsp]
	test	al, 16
	je	.L4455
.L4385:
	mov	rdx, -2
	mov	r8d, 2
.L4293:
	add	rdx, rbx
	mov	r10d, r8d
	test	r8d, r8d
	je	.L4294
	xor	r8d, r8d
.L4304:
	mov	r9d, r8d
	add	r8d, 1
	movzx	r11d, BYTE PTR [rcx+r9]
	mov	BYTE PTR [rdx+r9], r11b
	cmp	r8d, r10d
	jb	.L4304
	.p2align 4
	.p2align 3
.L4294:
	shr	al, 2
	and	eax, 3
	cmp	eax, 1
	je	.L4387
	cmp	eax, 3
	je	.L4469
.L4307:
	mov	rax, r12
	sub	rbx, rdx
	mov	QWORD PTR 120[rsp], rdx
	mov	r9, rdi
	sub	rax, rdx
	mov	r8, rbx
	mov	rcx, rsi
	mov	QWORD PTR 112[rsp], rax
	lea	rax, 112[rsp]
	mov	rdx, rax
	call	_ZNKSt8__format15__formatter_intIcE13_M_format_intINS_10_Sink_iterIcEEEENSt20basic_format_contextIT_cE8iteratorESt17basic_string_viewIcSt11char_traitsIcEEyRS7_
	jmp	.L4281
	.p2align 4,,10
	.p2align 3
.L4201:
	mov	QWORD PTR 272[rsp], 0
	lea	rsi, 272[rsp]
	lea	rdx, 8[rbx]
	mov	r8d, 1
	mov	DWORD PTR 280[rsp], 32
	mov	rcx, rsi
	vzeroupper
	call	_ZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeE
	mov	r8, QWORD PTR 48[rbx]
	mov	rcx, rsi
	mov	QWORD PTR 8[rbx], rax
	mov	rdx, QWORD PTR 192[rsp]
	mov	QWORD PTR 56[rsp], r8
	call	_ZNKSt8__format15__formatter_intIcE6formatIxNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
	mov	r8, QWORD PTR 56[rsp]
	mov	QWORD PTR 16[r8], rax
	jmp	.L4450
	.p2align 4,,10
	.p2align 3
.L4200:
	mov	QWORD PTR 148[rsp], 0
	mov	r8d, 1
	lea	rdx, 8[rbx]
	lea	r13, 148[rsp]
	mov	DWORD PTR 156[rsp], 32
	mov	rcx, r13
	vzeroupper
	call	_ZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeE
	mov	r12, QWORD PTR 48[rbx]
	mov	r8, QWORD PTR 192[rsp]
	mov	QWORD PTR 8[rbx], rax
	movzx	eax, BYTE PTR 149[rsp]
	mov	r10d, eax
	and	r10d, 120
	cmp	r10b, 56
	je	.L4470
	shr	al, 3
	and	eax, 15
	cmp	al, 4
	je	.L4310
	ja	.L4311
	cmp	al, 1
	jbe	.L4312
	cmp	r10b, 16
	lea	rbp, .LC41[rip]
	lea	rax, .LC42[rip]
	cmovne	rbp, rax
	test	r8, r8
	jne	.L4471
	mov	eax, 48
	lea	rdi, 276[rsp]
	lea	rbx, 275[rsp]
.L4317:
	mov	BYTE PTR 275[rsp], al
	movzx	eax, BYTE PTR 148[rsp]
	test	al, 16
	je	.L4456
.L4396:
	mov	rdx, -2
	mov	ecx, 2
.L4321:
	add	rdx, rbx
	mov	r9d, ecx
	test	ecx, ecx
	je	.L4322
	xor	ecx, ecx
.L4345:
	mov	r8d, ecx
	add	ecx, 1
	movzx	r10d, BYTE PTR 0[rbp+r8]
	mov	BYTE PTR [rdx+r8], r10b
	cmp	ecx, r9d
	jb	.L4345
	.p2align 4
	.p2align 3
.L4322:
	shr	al, 2
	and	eax, 3
	cmp	eax, 1
	je	.L4398
	cmp	eax, 3
	je	.L4472
.L4348:
	mov	rax, rdi
	sub	rbx, rdx
	mov	QWORD PTR 120[rsp], rdx
	mov	r9, r12
	sub	rax, rdx
	mov	r8, rbx
	mov	rcx, r13
	mov	QWORD PTR 112[rsp], rax
	lea	rax, 112[rsp]
	mov	rdx, rax
	call	_ZNKSt8__format15__formatter_intIcE13_M_format_intINS_10_Sink_iterIcEEEENSt20basic_format_contextIT_cE8iteratorESt17basic_string_viewIcSt11char_traitsIcEEyRS7_
	jmp	.L4309
	.p2align 4,,10
	.p2align 3
.L4199:
	mov	QWORD PTR 272[rsp], 0
	lea	rsi, 272[rsp]
	lea	rdx, 8[rbx]
	mov	DWORD PTR 280[rsp], 32
	mov	rcx, rsi
	vzeroupper
	call	_ZNSt8__format14__formatter_fpIcE5parseERSt26basic_format_parse_contextIcE
	mov	r8, QWORD PTR 48[rbx]
	mov	rcx, rsi
	vmovss	xmm1, DWORD PTR 192[rsp]
	mov	QWORD PTR 8[rbx], rax
	mov	QWORD PTR 56[rsp], r8
	call	_ZNKSt8__format14__formatter_fpIcE6formatIfNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
	mov	r8, QWORD PTR 56[rsp]
	mov	QWORD PTR 16[r8], rax
	jmp	.L4450
	.p2align 4,,10
	.p2align 3
.L4198:
	mov	QWORD PTR 272[rsp], 0
	lea	rsi, 272[rsp]
	lea	rdx, 8[rbx]
	mov	DWORD PTR 280[rsp], 32
	mov	rcx, rsi
	vzeroupper
	call	_ZNSt8__format14__formatter_fpIcE5parseERSt26basic_format_parse_contextIcE
	mov	r8, QWORD PTR 48[rbx]
	mov	rcx, rsi
	vmovsd	xmm1, QWORD PTR 192[rsp]
	mov	QWORD PTR 8[rbx], rax
	mov	QWORD PTR 56[rsp], r8
	call	_ZNKSt8__format14__formatter_fpIcE6formatIdNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
	mov	r8, QWORD PTR 56[rsp]
	mov	QWORD PTR 16[r8], rax
	jmp	.L4450
	.p2align 4,,10
	.p2align 3
.L4197:
	mov	QWORD PTR 272[rsp], 0
	lea	rsi, 272[rsp]
	lea	rdx, 8[rbx]
	mov	DWORD PTR 280[rsp], 32
	mov	rcx, rsi
	vzeroupper
	call	_ZNSt8__format14__formatter_fpIcE5parseERSt26basic_format_parse_contextIcE
	mov	r8, QWORD PTR 48[rbx]
	lea	rdx, 80[rsp]
	mov	QWORD PTR 8[rbx], rax
	fld	TBYTE PTR 192[rsp]
	mov	rcx, rsi
	mov	QWORD PTR 56[rsp], r8
	fstp	TBYTE PTR 80[rsp]
	call	_ZNKSt8__format14__formatter_fpIcE6formatIeNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
	mov	r8, QWORD PTR 56[rsp]
	mov	QWORD PTR 16[r8], rax
	jmp	.L4450
	.p2align 4,,10
	.p2align 3
.L4196:
	mov	QWORD PTR 272[rsp], 0
	lea	rsi, 272[rsp]
	lea	rdx, 8[rbx]
	mov	DWORD PTR 280[rsp], 32
	mov	rcx, rsi
	vzeroupper
	call	_ZNSt8__format15__formatter_strIcE5parseERSt26basic_format_parse_contextIcE
	mov	rdi, QWORD PTR 192[rsp]
	mov	QWORD PTR 8[rbx], rax
	mov	rbx, QWORD PTR 48[rbx]
	mov	rcx, rdi
	call	strlen
	lea	rdx, 112[rsp]
	mov	r8, rbx
	mov	rcx, rsi
	mov	QWORD PTR 112[rsp], rax
	mov	QWORD PTR 120[rsp], rdi
	call	_ZNKSt8__format15__formatter_strIcE6formatINS_10_Sink_iterIcEEEET_St17basic_string_viewIcSt11char_traitsIcEERSt20basic_format_contextIS5_cE
.L4457:
	mov	QWORD PTR 16[rbx], rax
	add	rsp, 488
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.p2align 4,,10
	.p2align 3
.L4195:
	mov	QWORD PTR 272[rsp], 0
	lea	rsi, 272[rsp]
	lea	rdx, 8[rbx]
	mov	DWORD PTR 280[rsp], 32
	mov	rcx, rsi
	vzeroupper
	call	_ZNSt8__format15__formatter_strIcE5parseERSt26basic_format_parse_contextIcE
	mov	r8, QWORD PTR 48[rbx]
	lea	rdx, 112[rsp]
	mov	QWORD PTR 8[rbx], rax
	mov	rcx, rsi
	vmovdqu	xmm4, XMMWORD PTR 192[rsp]
	mov	QWORD PTR 56[rsp], r8
	vmovdqu	XMMWORD PTR 112[rsp], xmm4
	call	_ZNKSt8__format15__formatter_strIcE6formatINS_10_Sink_iterIcEEEET_St17basic_string_viewIcSt11char_traitsIcEERSt20basic_format_contextIS5_cE
	mov	r8, QWORD PTR 56[rsp]
	mov	QWORD PTR 16[r8], rax
	jmp	.L4450
	.p2align 4,,10
	.p2align 3
.L4194:
	mov	rdi, QWORD PTR 16[rbx]
	mov	rax, QWORD PTR 8[rbx]
	mov	QWORD PTR 148[rsp], 0
	mov	DWORD PTR 156[rsp], 32
	mov	QWORD PTR 272[rsp], 0
	cmp	rdi, rax
	je	.L4349
	cmp	BYTE PTR [rax], 125
	je	.L4349
	lea	rbp, 272[rsp]
	mov	r8, rdi
	mov	rdx, rax
	mov	DWORD PTR 280[rsp], 32
	mov	rcx, rbp
	vzeroupper
	call	_ZNSt8__format5_SpecIcE23_M_parse_fill_and_alignEPKcS3_
	cmp	rdi, rax
	je	.L4350
	cmp	BYTE PTR [rax], 125
	je	.L4350
	lea	r9, 8[rbx]
	mov	r8, rdi
	mov	rdx, rax
	mov	rcx, rbp
	call	_ZNSt8__format5_SpecIcE14_M_parse_widthEPKcS3_RSt26basic_format_parse_contextIcE
	cmp	rdi, rax
	je	.L4354
	movzx	edx, BYTE PTR [rax]
	cmp	dl, 112
	je	.L4473
.L4355:
	cmp	dl, 125
	jne	.L4474
.L4354:
	mov	rdx, QWORD PTR 272[rsp]
	mov	rsi, QWORD PTR 48[rbx]
	mov	QWORD PTR 148[rsp], rdx
	mov	edx, DWORD PTR 280[rsp]
	mov	DWORD PTR 156[rsp], edx
.L4352:
	mov	QWORD PTR 8[rbx], rax
	mov	rax, QWORD PTR 192[rsp]
	test	rax, rax
	jne	.L4357
	mov	BYTE PTR 274[rsp], 48
	mov	edx, 3
.L4358:
	mov	DWORD PTR 32[rsp], 2
	mov	eax, 30768
	lea	rcx, 112[rsp]
	lea	r9, 148[rsp]
	mov	r8, rsi
	mov	WORD PTR 272[rsp], ax
	mov	QWORD PTR 112[rsp], rdx
	mov	QWORD PTR 120[rsp], rbp
	call	_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEyRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE
	mov	QWORD PTR 16[rsi], rax
	jmp	.L4450
	.p2align 4,,10
	.p2align 3
.L4193:
	mov	r8, QWORD PTR 192[rsp]
	mov	rax, QWORD PTR 200[rsp]
	lea	rcx, 8[rbx]
	mov	rdx, rsi
	vzeroupper
	add	rsp, 488
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	rex.W jmp	rax
	.p2align 4,,10
	.p2align 3
.L4192:
	mov	QWORD PTR 272[rsp], 0
	lea	rsi, 272[rsp]
	lea	rdx, 8[rbx]
	mov	r8d, 1
	mov	DWORD PTR 280[rsp], 32
	mov	rcx, rsi
	vzeroupper
	call	_ZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeE
	mov	r8, QWORD PTR 48[rbx]
	lea	rdx, 64[rsp]
	mov	QWORD PTR 8[rbx], rax
	mov	rcx, rsi
	vmovdqu	xmm5, XMMWORD PTR 192[rsp]
	mov	QWORD PTR 56[rsp], r8
	vmovdqu	XMMWORD PTR 64[rsp], xmm5
	call	_ZNKSt8__format15__formatter_intIcE6formatInNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
	mov	r8, QWORD PTR 56[rsp]
	mov	QWORD PTR 16[r8], rax
	jmp	.L4450
	.p2align 4,,10
	.p2align 3
.L4448:
	vzeroupper
.L4188:
	call	_ZNSt8__format33__invalid_arg_id_in_format_stringEv
	.p2align 4,,10
	.p2align 3
.L4206:
	mov	r12, QWORD PTR 48[rbx]
	movzx	edx, BYTE PTR 192[rsp]
	mov	QWORD PTR 8[rbx], rax
	cmp	cl, 56
	je	.L4475
	mov	r8, r12
	mov	rcx, r13
	call	_ZNKSt8__format15__formatter_intIcE6formatIhNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
	mov	rbx, rax
.L4211:
	mov	QWORD PTR 16[r12], rbx
	jmp	.L4450
	.p2align 4,,10
	.p2align 3
.L4228:
	mov	QWORD PTR 8[rbx], rax
	movzx	edx, BYTE PTR 192[rsp]
	mov	rbx, QWORD PTR 48[rbx]
	test	cl, cl
	je	.L4230
	mov	r8, rbx
	mov	rcx, rbp
	call	_ZNKSt8__format15__formatter_intIcE6formatIhNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
	jmp	.L4457
	.p2align 4,,10
	.p2align 3
.L4462:
	lea	eax, 128[rbx]
	cmp	eax, 255
	ja	.L4235
	lea	rax, 272[rsp]
	lea	rcx, 112[rsp]
	mov	r8, r12
	mov	rdx, r13
	mov	BYTE PTR 272[rsp], bl
	mov	QWORD PTR 112[rsp], 1
	mov	QWORD PTR 120[rsp], rax
	call	_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEyRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE.constprop.0
	jmp	.L4236
	.p2align 4,,10
	.p2align 3
.L4470:
	cmp	r8, 127
	ja	.L4235
	mov	BYTE PTR 272[rsp], r8b
	lea	rcx, 112[rsp]
	mov	r8, r13
	mov	rdx, r12
	lea	rax, 272[rsp]
	mov	QWORD PTR 112[rsp], 1
	mov	QWORD PTR 120[rsp], rax
	call	_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEyRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE.constprop.0
.L4309:
	mov	QWORD PTR 16[r12], rax
	jmp	.L4450
	.p2align 4,,10
	.p2align 3
.L4467:
	cmp	r9d, 127
	ja	.L4235
	lea	rax, 272[rsp]
	lea	rcx, 112[rsp]
	mov	r8, rsi
	mov	rdx, rdi
	mov	BYTE PTR 272[rsp], r9b
	mov	QWORD PTR 112[rsp], 1
	mov	QWORD PTR 120[rsp], rax
	call	_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEyRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE.constprop.0
.L4281:
	mov	QWORD PTR 16[rdi], rax
	jmp	.L4450
	.p2align 4,,10
	.p2align 3
.L4349:
	mov	rdx, QWORD PTR 272[rsp]
	lea	rbp, 272[rsp]
	mov	DWORD PTR 280[rsp], 32
	mov	DWORD PTR 156[rsp], 32
	mov	QWORD PTR 148[rsp], rdx
	vzeroupper
	jmp	.L4352
	.p2align 4,,10
	.p2align 3
.L4357:
	movabs	rcx, 3978425819141910832
	bsr	rdx, rax
	movabs	rbx, 7378413942531504440
	lea	r9d, 4[rdx]
	mov	QWORD PTR 224[rsp], rcx
	shr	r9d, 2
	mov	QWORD PTR 232[rsp], rbx
	lea	edx, -1[r9]
	cmp	rax, 255
	jbe	.L4359
	.p2align 4
	.p2align 3
.L4360:
	mov	r8, rax
	mov	ecx, edx
	and	r8d, 15
	movzx	r8d, BYTE PTR 224[rsp+r8]
	mov	BYTE PTR 274[rsp+rcx], r8b
	mov	rcx, rax
	lea	r8d, -1[rdx]
	shr	rax, 8
	shr	rcx, 4
	sub	edx, 2
	and	ecx, 15
	movzx	ecx, BYTE PTR 224[rsp+rcx]
	mov	BYTE PTR 274[rsp+r8], cl
	cmp	rax, 255
	ja	.L4360
.L4359:
	cmp	rax, 15
	jbe	.L4361
	mov	rdx, rax
	shr	rax, 4
	and	edx, 15
	movzx	edx, BYTE PTR 224[rsp+rdx]
	mov	BYTE PTR 275[rsp], dl
	movzx	eax, BYTE PTR 224[rsp+rax]
.L4362:
	lea	edx, 2[r9]
	mov	BYTE PTR 274[rsp], al
	movsx	rdx, edx
	jmp	.L4358
	.p2align 4,,10
	.p2align 3
.L4461:
	movzx	edx, BYTE PTR 192[rsp]
.L4230:
	mov	BYTE PTR 224[rsp], dl
	lea	rcx, 112[rsp]
	mov	r8, rbp
	mov	rdx, rbx
	lea	rax, 224[rsp]
	mov	QWORD PTR 112[rsp], 1
	mov	QWORD PTR 120[rsp], rax
	call	_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEyRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE.constprop.0
	jmp	.L4457
	.p2align 4,,10
	.p2align 3
.L4463:
	neg	r9d
	cmp	al, 4
	je	.L4238
	ja	.L4239
	cmp	al, 1
	jbe	.L4240
	cmp	sil, 16
	lea	r8, .LC41[rip]
	lea	rax, .LC42[rip]
	cmovne	r8, rax
.L4241:
	bsr	r11d, r9d
	mov	r10d, 32
	mov	eax, 31
	xor	r11d, 31
	sub	r10d, r11d
	sub	eax, r11d
	je	.L4254
	mov	edx, eax
	lea	rcx, 223[rsp+rdx]
	lea	rax, 224[rsp+rdx]
	mov	edx, 30
	sub	edx, r11d
	sub	rcx, rdx
	.p2align 5
	.p2align 4
	.p2align 3
.L4253:
	mov	edx, r9d
	sub	rax, 1
	shr	r9d
	and	edx, 1
	add	edx, 48
	mov	BYTE PTR 4[rax], dl
	cmp	rax, rcx
	jne	.L4253
.L4254:
	lea	rdi, 227[rsp]
	movsx	rdx, r10d
	mov	eax, 49
	lea	rbp, [rdi+rdx]
.L4251:
	mov	BYTE PTR 227[rsp], al
	test	BYTE PTR 136[rsp], 16
	je	.L4452
.L4378:
	mov	rax, -2
	mov	edx, 2
.L4255:
	add	rax, rdi
	mov	r9d, edx
	test	edx, edx
	je	.L4256
	xor	edx, edx
.L4273:
	mov	ecx, edx
	add	edx, 1
	movzx	r10d, BYTE PTR [r8+rcx]
	mov	BYTE PTR [rax+rcx], r10b
	cmp	edx, r9d
	jb	.L4273
	.p2align 4
	.p2align 3
.L4256:
	lea	rdx, -1[rax]
	test	ebx, ebx
	js	.L4440
	movzx	ecx, BYTE PTR 136[rsp]
	jmp	.L4275
	.p2align 4,,10
	.p2align 3
.L4440:
	mov	BYTE PTR -1[rax], 45
	mov	rax, rdx
	jmp	.L4278
	.p2align 4,,10
	.p2align 3
.L4350:
	mov	rdx, QWORD PTR 272[rsp]
	mov	QWORD PTR 148[rsp], rdx
	mov	edx, DWORD PTR 280[rsp]
	mov	DWORD PTR 156[rsp], edx
	jmp	.L4352
	.p2align 4,,10
	.p2align 3
.L4387:
	mov	eax, 43
.L4306:
	mov	BYTE PTR -1[rdx], al
	sub	rdx, 1
	jmp	.L4307
	.p2align 4,,10
	.p2align 3
.L4398:
	mov	eax, 43
.L4347:
	mov	BYTE PTR -1[rdx], al
	sub	rdx, 1
	jmp	.L4348
	.p2align 4,,10
	.p2align 3
.L4361:
	movzx	eax, BYTE PTR 224[rsp+rax]
	jmp	.L4362
.L4240:
	cmp	r9d, 9
	jbe	.L4371
	mov	eax, r9d
	mov	ecx, 1
	mov	r8d, 3518437209
	jmp	.L4263
	.p2align 4,,10
	.p2align 3
.L4259:
	cmp	eax, 999
	jbe	.L4476
	cmp	eax, 9999
	jbe	.L4477
	mov	edx, eax
	add	ecx, 4
	imul	rdx, r8
	shr	rdx, 45
	cmp	eax, 99999
	jbe	.L4260
	mov	eax, edx
.L4263:
	cmp	eax, 99
	ja	.L4259
	add	ecx, 1
.L4260:
	cmp	ecx, 32
	ja	.L4373
	vmovdqu64	zmm0, ZMMWORD PTR .LC6[rip]
	lea	r8d, -1[rcx]
	movabs	rax, 4122263930388298034
	movabs	rdx, 16106987313379638
	mov	QWORD PTR 465[rsp], rdx
	vmovdqu64	ZMMWORD PTR 272[rsp], zmm0
	vmovdqu64	zmm0, ZMMWORD PTR .LC7[rip]
	vmovdqu64	ZMMWORD PTR 336[rsp], zmm0
	vmovdqu64	zmm0, ZMMWORD PTR .LC8[rip]
	vmovdqu64	ZMMWORD PTR 400[rsp], zmm0
	mov	QWORD PTR 457[rsp], rax
	cmp	r9d, 99
	jbe	.L4265
	.p2align 4
	.p2align 3
.L4266:
	mov	edx, r9d
	mov	eax, r9d
	imul	rdx, rdx, 1374389535
	shr	rdx, 37
	imul	r10d, edx, 100
	sub	eax, r10d
	mov	r10d, r9d
	mov	r9d, edx
	mov	edx, r8d
	add	eax, eax
	lea	r11d, 1[rax]
	movzx	eax, BYTE PTR 272[rsp+rax]
	movzx	r11d, BYTE PTR 272[rsp+r11]
	mov	BYTE PTR 227[rsp+rdx], r11b
	lea	edx, -1[r8]
	sub	r8d, 2
	mov	BYTE PTR 227[rsp+rdx], al
	cmp	r10d, 9999
	ja	.L4266
	cmp	r10d, 999
	ja	.L4265
	vzeroupper
.L4258:
	add	r9d, 48
.L4267:
	mov	BYTE PTR 227[rsp], r9b
	lea	rdi, 227[rsp]
	lea	rbp, [rdi+rcx]
.L4452:
	mov	rax, rdi
	jmp	.L4256
	.p2align 4,,10
	.p2align 3
.L4475:
	mov	BYTE PTR 272[rsp], dl
	lea	rcx, 112[rsp]
	mov	r8, r13
	mov	rdx, r12
	lea	rax, 272[rsp]
	mov	QWORD PTR 112[rsp], 1
	mov	QWORD PTR 120[rsp], rax
	call	_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEyRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE.constprop.0
.LEHE202:
	mov	rbx, rax
	jmp	.L4211
	.p2align 4,,10
	.p2align 3
.L4244:
	cmp	al, 4
	je	.L4247
	cmp	sil, 40
	je	.L4478
	test	ebx, ebx
	jne	.L4243
	mov	BYTE PTR 227[rsp], 48
	cmp	sil, 48
	je	.L4375
	lea	r8, .LC43[rip]
	lea	rbp, 228[rsp]
	lea	rdi, 227[rsp]
.L4271:
	test	BYTE PTR 136[rsp], 16
	jne	.L4378
	jmp	.L4452
	.p2align 4,,10
	.p2align 3
.L4284:
	test	r9d, r9d
	je	.L4297
	lea	rbx, 275[rsp]
	lea	rcx, 96[rsp]
	lea	r8, 307[rsp]
	mov	rdx, rbx
	call	_ZNSt8__detail13__to_chars_10IjEESt15to_chars_resultPcS2_T_
	mov	r12, QWORD PTR 96[rsp]
.L4454:
	movzx	eax, BYTE PTR 224[rsp]
	mov	rdx, rbx
	jmp	.L4294
	.p2align 4,,10
	.p2align 3
.L4283:
	cmp	bpl, 40
	je	.L4479
	test	r9d, r9d
	jne	.L4301
	mov	BYTE PTR 275[rsp], 48
	cmp	bpl, 48
	je	.L4382
	lea	rcx, .LC43[rip]
	lea	r12, 276[rsp]
	lea	rbx, 275[rsp]
.L4300:
	movzx	eax, BYTE PTR 224[rsp]
	test	al, 16
	jne	.L4385
.L4455:
	mov	rdx, rbx
	jmp	.L4294
	.p2align 4,,10
	.p2align 3
.L4312:
	test	r8, r8
	jne	.L4323
	mov	BYTE PTR 275[rsp], 48
	lea	rdi, 276[rsp]
	lea	rbx, 275[rsp]
.L4324:
	movzx	eax, BYTE PTR 148[rsp]
	mov	rdx, rbx
	jmp	.L4322
	.p2align 4,,10
	.p2align 3
.L4311:
	cmp	r10b, 40
	je	.L4480
	test	r8, r8
	jne	.L4394
	mov	BYTE PTR 275[rsp], 48
	cmp	r10b, 48
	je	.L4395
	lea	rbp, .LC43[rip]
	lea	rdi, 276[rsp]
	lea	rbx, 275[rsp]
.L4338:
	movzx	eax, BYTE PTR 148[rsp]
	test	al, 16
	jne	.L4396
.L4456:
	mov	rdx, rbx
	jmp	.L4322
	.p2align 4,,10
	.p2align 3
.L4282:
	test	r9d, r9d
	je	.L4297
	lea	rbx, 275[rsp]
	lea	rcx, 96[rsp]
	lea	r8, 307[rsp]
	mov	rdx, rbx
	call	_ZNSt8__detail12__to_chars_8IjEESt15to_chars_resultPcS2_T_
	mov	r12, QWORD PTR 96[rsp]
	lea	rcx, .LC45[rip]
	mov	r8d, 1
.L4298:
	movzx	eax, BYTE PTR 224[rsp]
	mov	rdx, rbx
	test	al, 16
	je	.L4294
	mov	rdx, r8
	neg	rdx
	jmp	.L4293
	.p2align 4,,10
	.p2align 3
.L4297:
	mov	BYTE PTR 275[rsp], 48
	lea	r12, 276[rsp]
	lea	rbx, 275[rsp]
	jmp	.L4454
	.p2align 4,,10
	.p2align 3
.L4310:
	test	r8, r8
	je	.L4331
	bsr	rax, r8
	lea	r10d, 3[rax]
	mov	eax, 2863311531
	imul	r10, rax
	shr	r10, 33
	lea	edx, -1[r10]
	cmp	r8, 63
	jbe	.L4333
	.p2align 6
	.p2align 4
	.p2align 3
.L4332:
	mov	rax, r8
	mov	ecx, edx
	and	eax, 7
	add	eax, 48
	mov	BYTE PTR 275[rsp+rcx], al
	mov	rax, r8
	lea	ecx, -1[rdx]
	shr	r8, 6
	shr	rax, 3
	sub	edx, 2
	and	eax, 7
	add	eax, 48
	mov	BYTE PTR 275[rsp+rcx], al
	cmp	r8, 63
	ja	.L4332
.L4333:
	lea	eax, 48[r8]
	cmp	r8, 7
	jbe	.L4335
	mov	rax, r8
	and	eax, 7
	add	eax, 48
	mov	BYTE PTR 276[rsp], al
	mov	rax, r8
	shr	rax, 3
	add	eax, 48
.L4335:
	mov	BYTE PTR 275[rsp], al
	lea	rbx, 275[rsp]
	mov	eax, r10d
	lea	rbp, .LC45[rip]
	lea	rdi, [rbx+rax]
	mov	ecx, 1
.L4336:
	movzx	eax, BYTE PTR 148[rsp]
	mov	rdx, rbx
	test	al, 16
	je	.L4322
	mov	rdx, rcx
	neg	rdx
	jmp	.L4321
	.p2align 4,,10
	.p2align 3
.L4469:
	mov	eax, 32
	jmp	.L4306
.L4472:
	mov	eax, 32
	jmp	.L4347
.L4465:
	mov	BYTE PTR -1[rax], 43
.L4279:
	mov	rax, rdx
	jmp	.L4278
.L4247:
	test	ebx, ebx
	je	.L4453
.L4238:
	lea	rdi, 227[rsp]
	lea	r8, 259[rsp]
	mov	rdx, rdi
	lea	rcx, 96[rsp]
	call	_ZNSt8__detail12__to_chars_8IjEESt15to_chars_resultPcS2_T_
	mov	rbp, QWORD PTR 96[rsp]
	mov	edx, 1
	lea	r8, .LC45[rip]
.L4268:
	mov	rax, rdi
	test	BYTE PTR 136[rsp], 16
	je	.L4256
	mov	rax, rdx
	neg	rax
	jmp	.L4255
	.p2align 4,,10
	.p2align 3
.L4473:
	lea	rcx, 1[rax]
	cmp	rdi, rcx
	je	.L4399
	movzx	edx, BYTE PTR 1[rax]
	mov	rax, rcx
	jmp	.L4355
.L4464:
	cmp	sil, 16
	lea	r8, .LC42[rip]
	lea	rax, .LC41[rip]
	cmove	r8, rax
	test	ebx, ebx
	jne	.L4241
	mov	eax, 48
	lea	rbp, 228[rsp]
	lea	rdi, 227[rsp]
	jmp	.L4251
.L4466:
	mov	BYTE PTR -1[rax], 32
	jmp	.L4279
.L4331:
	lea	rbx, 275[rsp]
	mov	BYTE PTR 275[rsp], 48
	movzx	eax, BYTE PTR 148[rsp]
	lea	rdi, 276[rsp]
	mov	rdx, rbx
	jmp	.L4322
.L4468:
	bsr	r10d, r9d
	mov	r11d, 32
	mov	eax, 31
	xor	r10d, 31
	sub	r11d, r10d
	sub	eax, r10d
	je	.L4292
	mov	edx, eax
	lea	r8, 271[rsp+rdx]
	lea	rax, 272[rsp+rdx]
	mov	edx, 30
	sub	edx, r10d
	sub	r8, rdx
	.p2align 5
	.p2align 4
	.p2align 3
.L4291:
	mov	edx, r9d
	sub	rax, 1
	shr	r9d
	and	edx, 1
	add	edx, 48
	mov	BYTE PTR 4[rax], dl
	cmp	rax, r8
	jne	.L4291
.L4292:
	movsx	rax, r11d
	lea	rbx, 275[rsp]
	lea	r12, [rbx+rax]
	mov	eax, 49
	jmp	.L4289
.L4323:
	cmp	r8, 9
	jbe	.L4390
	mov	rcx, r8
	mov	esi, 1
	movabs	r10, 3777893186295716171
	jmp	.L4330
	.p2align 4,,10
	.p2align 3
.L4326:
	cmp	rcx, 999
	jbe	.L4481
	cmp	rcx, 9999
	jbe	.L4482
	mov	rax, rcx
	add	esi, 4
	mul	r10
	shr	rdx, 11
	cmp	rcx, 99999
	jbe	.L4327
	mov	rcx, rdx
.L4330:
	cmp	rcx, 99
	ja	.L4326
	add	esi, 1
.L4327:
	cmp	esi, 64
	ja	.L4483
.L4325:
	lea	rbx, 275[rsp]
	mov	edx, esi
	mov	rcx, rbx
	call	_ZNSt8__detail18__to_chars_10_implIyEEvPcjT_
	mov	eax, esi
	lea	rdi, [rbx+rax]
	jmp	.L4324
.L4471:
	bsr	r9, r8
	mov	r10d, 64
	mov	eax, 63
	xor	r9, 63
	sub	r10d, r9d
	sub	eax, r9d
	je	.L4320
	mov	edx, eax
	lea	rcx, 271[rsp+rdx]
	lea	rax, 272[rsp+rdx]
	mov	edx, 62
	sub	edx, r9d
	sub	rcx, rdx
	.p2align 5
	.p2align 4
	.p2align 3
.L4319:
	mov	edx, r8d
	sub	rax, 1
	shr	r8
	and	edx, 1
	add	edx, 48
	mov	BYTE PTR 4[rax], dl
	cmp	rax, rcx
	jne	.L4319
.L4320:
	movsx	rax, r10d
	lea	rbx, 275[rsp]
	lea	rdi, [rbx+rax]
	mov	eax, 49
	jmp	.L4317
.L4239:
	cmp	sil, 40
	je	.L4484
.L4243:
	lea	rdi, 227[rsp]
	lea	rcx, 96[rsp]
	lea	r8, 259[rsp]
	mov	rdx, rdi
	call	_ZNSt8__detail13__to_chars_16IjEESt15to_chars_resultPcS2_T_
	mov	rbp, QWORD PTR 96[rsp]
	cmp	sil, 48
	jne	.L4376
	cmp	rbp, rdi
	je	.L4377
.L4270:
	mov	rsi, rdi
	.p2align 4
	.p2align 3
.L4272:
	movsx	ecx, BYTE PTR [rsi]
	add	rsi, 1
	call	toupper
	mov	BYTE PTR -1[rsi], al
	cmp	rsi, rbp
	jne	.L4272
.L4377:
	lea	r8, .LC43[rip]
	mov	edx, 2
	jmp	.L4268
.L4480:
	test	r8, r8
	jne	.L4393
	mov	BYTE PTR 275[rsp], 48
	lea	rbp, .LC44[rip]
	lea	rdi, 276[rsp]
	lea	rbx, 275[rsp]
	jmp	.L4338
.L4479:
	test	r9d, r9d
	jne	.L4299
	mov	BYTE PTR 275[rsp], 48
	lea	rcx, .LC44[rip]
	lea	r12, 276[rsp]
	lea	rbx, 275[rsp]
	jmp	.L4300
.L4394:
	lea	rbp, .LC43[rip]
.L4337:
	movabs	rdx, 7378413942531504440
	bsr	rax, r8
	add	eax, 4
	mov	QWORD PTR 232[rsp], rdx
	shr	eax, 2
	mov	edi, eax
	movabs	rax, 3978425819141910832
	mov	QWORD PTR 224[rsp], rax
	lea	eax, -1[rdi]
	cmp	r8, 255
	jbe	.L4340
	.p2align 4
	.p2align 3
.L4341:
	mov	rcx, r8
	mov	edx, eax
	and	ecx, 15
	movzx	ecx, BYTE PTR 224[rsp+rcx]
	mov	BYTE PTR 275[rsp+rdx], cl
	mov	rdx, r8
	lea	ecx, -1[rax]
	shr	r8, 8
	shr	rdx, 4
	sub	eax, 2
	and	edx, 15
	movzx	edx, BYTE PTR 224[rsp+rdx]
	mov	BYTE PTR 275[rsp+rcx], dl
	cmp	r8, 255
	ja	.L4341
.L4340:
	cmp	r8, 15
	jbe	.L4342
	mov	rax, r8
	shr	r8, 4
	and	eax, 15
	movzx	eax, BYTE PTR 224[rsp+rax]
	mov	BYTE PTR 276[rsp], al
	movzx	eax, BYTE PTR 224[rsp+r8]
.L4343:
	mov	BYTE PTR 275[rsp], al
	lea	rbx, 275[rsp]
	mov	eax, edi
	lea	rdi, [rbx+rax]
	cmp	r10b, 48
	jne	.L4338
.L4339:
	mov	rsi, rbx
	.p2align 4
	.p2align 3
.L4344:
	movsx	ecx, BYTE PTR [rsi]
	add	rsi, 1
	call	toupper
	mov	BYTE PTR -1[rsi], al
	cmp	rsi, rdi
	jne	.L4344
	mov	ecx, 2
	jmp	.L4336
.L4459:
	cmp	BYTE PTR 32[r12], 0
	lea	rdi, 24[r12]
	je	.L4485
.L4212:
	lea	rbp, 272[rsp]
	mov	rdx, rdi
	mov	rcx, rbp
	call	_ZNSt6localeC1ERKS_
	mov	rcx, QWORD PTR .refptr._ZNSt7__cxx118numpunctIcE2idE[rip]
	call	_ZNKSt6locale2id5_M_idEv
	mov	rdx, rax
	mov	rax, QWORD PTR 272[rsp]
	mov	rax, QWORD PTR 8[rax]
	mov	rdi, QWORD PTR [rax+rdx*8]
	test	rdi, rdi
	je	.L4213
	mov	rcx, rbp
	call	_ZNSt6localeD1Ev
	mov	rax, QWORD PTR [rdi]
	test	sil, sil
	je	.L4486
	lea	rsi, 224[rsp]
	mov	rdx, rdi
	mov	rcx, rbp
.LEHB203:
	call	[QWORD PTR 40[rax]]
.L4216:
	mov	rax, QWORD PTR 224[rsp]
	mov	rdx, rax
	cmp	rax, rbx
	je	.L4487
	mov	rcx, QWORD PTR 272[rsp]
	lea	rsi, 288[rsp]
	cmp	rcx, rsi
	je	.L4363
	mov	rdx, QWORD PTR 240[rsp]
	mov	QWORD PTR 224[rsp], rcx
	vmovdqu	xmm0, XMMWORD PTR 280[rsp]
	vmovdqu	XMMWORD PTR 232[rsp], xmm0
	test	rax, rax
	je	.L4222
	mov	QWORD PTR 272[rsp], rax
	mov	QWORD PTR 288[rsp], rdx
.L4221:
	mov	QWORD PTR 280[rsp], 0
	mov	rcx, rbp
	lea	rsi, 224[rsp]
	mov	BYTE PTR [rax], 0
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	rdx, QWORD PTR 232[rsp]
	jmp	.L4223
.L4301:
	lea	rbx, 275[rsp]
	lea	rcx, 96[rsp]
	lea	r8, 307[rsp]
	mov	rdx, rbx
	call	_ZNSt8__detail13__to_chars_16IjEESt15to_chars_resultPcS2_T_
	mov	r12, QWORD PTR 96[rsp]
	cmp	bpl, 48
	jne	.L4383
	cmp	r12, rbx
	je	.L4384
.L4302:
	mov	rbp, rbx
	.p2align 4
	.p2align 3
.L4303:
	movsx	ecx, BYTE PTR 0[rbp]
	add	rbp, 1
	call	toupper
	mov	BYTE PTR -1[rbp], al
	cmp	rbp, r12
	jne	.L4303
.L4384:
	lea	rcx, .LC43[rip]
	mov	r8d, 2
	jmp	.L4298
.L4342:
	movzx	eax, BYTE PTR 224[rsp+r8]
	jmp	.L4343
.L4265:
	add	r9d, r9d
	lea	eax, 1[r9]
	movzx	r9d, BYTE PTR 272[rsp+r9]
	movzx	eax, BYTE PTR 272[rsp+rax]
	mov	BYTE PTR 228[rsp], al
	vzeroupper
	jmp	.L4267
.L4478:
	test	ebx, ebx
	jne	.L4269
	movzx	ecx, BYTE PTR 136[rsp]
	mov	BYTE PTR 227[rsp], 48
	test	cl, 16
	je	.L4257
	mov	rax, -2
	lea	rbp, 228[rsp]
	lea	r8, .LC44[rip]
	mov	edx, 2
	lea	rdi, 227[rsp]
	jmp	.L4255
.L4393:
	lea	rbp, .LC44[rip]
	jmp	.L4337
.L4299:
	lea	rbx, 275[rsp]
	lea	rcx, 96[rsp]
	lea	r8, 307[rsp]
	mov	rdx, rbx
	call	_ZNSt8__detail13__to_chars_16IjEESt15to_chars_resultPcS2_T_
	mov	r12, QWORD PTR 96[rsp]
	lea	rcx, .LC44[rip]
	jmp	.L4300
.L4486:
	lea	rsi, 224[rsp]
	mov	rdx, rdi
	mov	rcx, rbp
	call	[QWORD PTR 48[rax]]
.LEHE203:
	jmp	.L4216
.L4484:
	lea	rcx, 96[rsp]
	lea	rdi, 227[rsp]
.L4451:
	lea	r8, 259[rsp]
	mov	rdx, rdi
	call	_ZNSt8__detail13__to_chars_16IjEESt15to_chars_resultPcS2_T_
	mov	rbp, QWORD PTR 96[rsp]
	lea	r8, .LC44[rip]
	jmp	.L4271
.L4375:
	lea	rbp, 228[rsp]
	lea	rdi, 227[rsp]
	jmp	.L4270
.L4382:
	lea	r12, 276[rsp]
	lea	rbx, 275[rsp]
	jmp	.L4302
.L4395:
	lea	rdi, 276[rsp]
	lea	rbp, .LC43[rip]
	lea	rbx, 275[rsp]
	jmp	.L4339
.L4383:
	lea	rcx, .LC43[rip]
	jmp	.L4300
.L4481:
	add	esi, 2
	jmp	.L4327
.L4476:
	add	ecx, 2
	jmp	.L4260
.L4376:
	lea	r8, .LC43[rip]
	jmp	.L4271
.L4477:
	add	ecx, 3
	jmp	.L4260
.L4482:
	add	esi, 3
	jmp	.L4327
.L4485:
	mov	rcx, rdi
	call	_ZNSt6localeC1Ev
	mov	BYTE PTR 32[r12], 1
	jmp	.L4212
.L4487:
	mov	rax, QWORD PTR 272[rsp]
	lea	rsi, 288[rsp]
	cmp	rax, rsi
	je	.L4363
	vmovdqu	xmm0, XMMWORD PTR 280[rsp]
	mov	QWORD PTR 224[rsp], rax
	vmovdqu	XMMWORD PTR 232[rsp], xmm0
.L4222:
	mov	QWORD PTR 272[rsp], rsi
	lea	rax, 288[rsp]
	jmp	.L4221
.L4399:
	mov	rax, rdi
	jmp	.L4354
.L4483:
	lea	rdi, 339[rsp]
	lea	rbx, 275[rsp]
	jmp	.L4324
.L4363:
	mov	rcx, QWORD PTR 280[rsp]
	test	rcx, rcx
	je	.L4219
	cmp	rcx, 1
	je	.L4488
	mov	rdi, rdx
	mov	ecx, ecx
	rep movsb
	mov	rdx, QWORD PTR 224[rsp]
	mov	rcx, QWORD PTR 280[rsp]
.L4219:
	mov	QWORD PTR 232[rsp], rcx
	mov	BYTE PTR [rdx+rcx], 0
	mov	rax, QWORD PTR 272[rsp]
	jmp	.L4221
.L4373:
	lea	rbp, 259[rsp]
	lea	rdi, 227[rsp]
	jmp	.L4452
.L4269:
	lea	rcx, 96[rsp]
	lea	rdi, 227[rsp]
	jmp	.L4451
.L4390:
	mov	esi, 1
	jmp	.L4325
.L4371:
	mov	ecx, 1
	jmp	.L4258
.L4488:
	movzx	eax, BYTE PTR 288[rsp]
	mov	BYTE PTR [rdx], al
	mov	rdx, QWORD PTR 224[rsp]
	mov	rcx, QWORD PTR 280[rsp]
	jmp	.L4219
.L4400:
	mov	rbx, rax
	vzeroupper
.L4227:
	mov	rcx, rsi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	rcx, rbx
.LEHB204:
	call	_Unwind_Resume
.L4458:
	lea	rcx, .LC56[rip]
	call	_ZSt20__throw_format_errorPKc
.L4235:
	lea	rcx, .LC46[rip]
	call	_ZSt20__throw_format_errorPKc
.LEHE204:
.L4213:
.LEHB205:
	call	_ZSt16__throw_bad_castv
.LEHE205:
.L4460:
	lea	rcx, .LC57[rip]
.LEHB206:
	call	_ZSt20__throw_format_errorPKc
.L4474:
	call	_ZNSt8__format29__failed_to_parse_format_specEv
.LEHE206:
.L4401:
	mov	rcx, rbp
	mov	rbx, rax
	vzeroupper
	lea	rsi, 224[rsp]
	call	_ZNSt6localeD1Ev
	jmp	.L4227
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA9224:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9224-.LLSDACSB9224
.LLSDACSB9224:
	.uleb128 .LEHB200-.LFB9224
	.uleb128 .LEHE200-.LEHB200
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB201-.LFB9224
	.uleb128 .LEHE201-.LEHB201
	.uleb128 .L4400-.LFB9224
	.uleb128 0
	.uleb128 .LEHB202-.LFB9224
	.uleb128 .LEHE202-.LEHB202
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB203-.LFB9224
	.uleb128 .LEHE203-.LEHB203
	.uleb128 .L4400-.LFB9224
	.uleb128 0
	.uleb128 .LEHB204-.LFB9224
	.uleb128 .LEHE204-.LEHB204
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB205-.LFB9224
	.uleb128 .LEHE205-.LEHB205
	.uleb128 .L4401-.LFB9224
	.uleb128 0
	.uleb128 .LEHB206-.LFB9224
	.uleb128 .LEHE206-.LEHB206
	.uleb128 0
	.uleb128 0
.LLSDACSE9224:
	.section	.text$_ZNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcE13_M_format_argEy,"x"
	.linkonce discard
	.seh_endproc
	.section	.text.startup,"x"
	.p2align 4
	.def	_GLOBAL__sub_I_main;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I_main
_GLOBAL__sub_I_main:
.LFB9815:
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
	.section .rdata,"dr"
	.align 32
CSWTCH.793:
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	0
	.long	2
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
	.globl	_ZTSSt12format_error
	.section	.rdata$_ZTSSt12format_error,"dr"
	.linkonce same_size
	.align 16
_ZTSSt12format_error:
	.ascii "St12format_error\0"
	.globl	_ZTISt12format_error
	.section	.rdata$_ZTISt12format_error,"dr"
	.linkonce same_size
	.align 8
_ZTISt12format_error:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSSt12format_error
	.quad	_ZTISt13runtime_error
	.globl	_ZTSNSt8__format5_SinkIcEE
	.section	.rdata$_ZTSNSt8__format5_SinkIcEE,"dr"
	.linkonce same_size
	.align 16
_ZTSNSt8__format5_SinkIcEE:
	.ascii "NSt8__format5_SinkIcEE\0"
	.globl	_ZTINSt8__format5_SinkIcEE
	.section	.rdata$_ZTINSt8__format5_SinkIcEE,"dr"
	.linkonce same_size
	.align 8
_ZTINSt8__format5_SinkIcEE:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSNSt8__format5_SinkIcEE
	.globl	_ZTSNSt8__format9_Buf_sinkIcEE
	.section	.rdata$_ZTSNSt8__format9_Buf_sinkIcEE,"dr"
	.linkonce same_size
	.align 16
_ZTSNSt8__format9_Buf_sinkIcEE:
	.ascii "NSt8__format9_Buf_sinkIcEE\0"
	.globl	_ZTINSt8__format9_Buf_sinkIcEE
	.section	.rdata$_ZTINSt8__format9_Buf_sinkIcEE,"dr"
	.linkonce same_size
	.align 8
_ZTINSt8__format9_Buf_sinkIcEE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSNSt8__format9_Buf_sinkIcEE
	.quad	_ZTINSt8__format5_SinkIcEE
	.globl	_ZTSNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE
	.section	.rdata$_ZTSNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE,"dr"
	.linkonce same_size
	.align 32
_ZTSNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE:
	.ascii "NSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE\0"
	.globl	_ZTINSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE
	.section	.rdata$_ZTINSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE,"dr"
	.linkonce same_size
	.align 8
_ZTINSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE
	.quad	_ZTINSt8__format9_Buf_sinkIcEE
	.globl	_ZTSNSt8__format8_ScannerIcEE
	.section	.rdata$_ZTSNSt8__format8_ScannerIcEE,"dr"
	.linkonce same_size
	.align 16
_ZTSNSt8__format8_ScannerIcEE:
	.ascii "NSt8__format8_ScannerIcEE\0"
	.globl	_ZTINSt8__format8_ScannerIcEE
	.section	.rdata$_ZTINSt8__format8_ScannerIcEE,"dr"
	.linkonce same_size
	.align 8
_ZTINSt8__format8_ScannerIcEE:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSNSt8__format8_ScannerIcEE
	.globl	_ZTSNSt8__format10_Iter_sinkIcNS_10_Sink_iterIcEEEE
	.section	.rdata$_ZTSNSt8__format10_Iter_sinkIcNS_10_Sink_iterIcEEEE,"dr"
	.linkonce same_size
	.align 32
_ZTSNSt8__format10_Iter_sinkIcNS_10_Sink_iterIcEEEE:
	.ascii "NSt8__format10_Iter_sinkIcNS_10_Sink_iterIcEEEE\0"
	.globl	_ZTINSt8__format10_Iter_sinkIcNS_10_Sink_iterIcEEEE
	.section	.rdata$_ZTINSt8__format10_Iter_sinkIcNS_10_Sink_iterIcEEEE,"dr"
	.linkonce same_size
	.align 8
_ZTINSt8__format10_Iter_sinkIcNS_10_Sink_iterIcEEEE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSNSt8__format10_Iter_sinkIcNS_10_Sink_iterIcEEEE
	.quad	_ZTINSt8__format9_Buf_sinkIcEE
	.globl	_ZTSNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcEE
	.section	.rdata$_ZTSNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcEE,"dr"
	.linkonce same_size
	.align 32
_ZTSNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcEE:
	.ascii "NSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcEE\0"
	.globl	_ZTINSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcEE
	.section	.rdata$_ZTINSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcEE,"dr"
	.linkonce same_size
	.align 8
_ZTINSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcEE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcEE
	.quad	_ZTINSt8__format8_ScannerIcEE
	.globl	_ZTVSt12format_error
	.section	.rdata$_ZTVSt12format_error,"dr"
	.linkonce same_size
	.align 8
_ZTVSt12format_error:
	.quad	0
	.quad	_ZTISt12format_error
	.quad	_ZNSt12format_errorD1Ev
	.quad	_ZNSt12format_errorD0Ev
	.quad	_ZNKSt13runtime_error4whatEv
	.globl	_ZTVNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE
	.section	.rdata$_ZTVNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE,"dr"
	.linkonce same_size
	.align 8
_ZTVNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE:
	.quad	0
	.quad	_ZTINSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE
	.quad	_ZNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11_M_overflowEv
	.quad	_ZNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10_M_reserveEy
	.quad	_ZNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_bumpEy
	.globl	_ZTVNSt8__format10_Iter_sinkIcNS_10_Sink_iterIcEEEE
	.section	.rdata$_ZTVNSt8__format10_Iter_sinkIcNS_10_Sink_iterIcEEEE,"dr"
	.linkonce same_size
	.align 8
_ZTVNSt8__format10_Iter_sinkIcNS_10_Sink_iterIcEEEE:
	.quad	0
	.quad	_ZTINSt8__format10_Iter_sinkIcNS_10_Sink_iterIcEEEE
	.quad	_ZNSt8__format10_Iter_sinkIcNS_10_Sink_iterIcEEE11_M_overflowEv
	.quad	_ZNSt8__format5_SinkIcE10_M_reserveEy
	.quad	_ZNSt8__format5_SinkIcE7_M_bumpEy
	.globl	_ZTVNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcEE
	.section	.rdata$_ZTVNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcEE,"dr"
	.linkonce same_size
	.align 8
_ZTVNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcEE:
	.quad	0
	.quad	_ZTINSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcEE
	.quad	_ZNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcE11_M_on_charsEPKc
	.quad	_ZNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcE13_M_format_argEy
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
	.globl	_ZNSt8__detail31__from_chars_alnum_to_val_tableILb0EE5valueE
	.section	.rdata$_ZNSt8__detail31__from_chars_alnum_to_val_tableILb0EE5valueE,"dr"
	.linkonce same_size
	.align 32
_ZNSt8__detail31__from_chars_alnum_to_val_tableILb0EE5valueE:
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.byte	16
	.byte	17
	.byte	18
	.byte	19
	.byte	20
	.byte	21
	.byte	22
	.byte	23
	.byte	24
	.byte	25
	.byte	26
	.byte	27
	.byte	28
	.byte	29
	.byte	30
	.byte	31
	.byte	32
	.byte	33
	.byte	34
	.byte	35
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.byte	16
	.byte	17
	.byte	18
	.byte	19
	.byte	20
	.byte	21
	.byte	22
	.byte	23
	.byte	24
	.byte	25
	.byte	26
	.byte	27
	.byte	28
	.byte	29
	.byte	30
	.byte	31
	.byte	32
	.byte	33
	.byte	34
	.byte	35
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.globl	_ZNSt9__unicode9__v15_1_014__xpicto_edgesE
	.section	.rdata$_ZNSt9__unicode9__v15_1_014__xpicto_edgesE,"dr"
	.linkonce same_size
	.align 32
_ZNSt9__unicode9__v15_1_014__xpicto_edgesE:
	.long	169
	.long	170
	.long	174
	.long	175
	.long	8252
	.long	8253
	.long	8265
	.long	8266
	.long	8482
	.long	8483
	.long	8505
	.long	8506
	.long	8596
	.long	8602
	.long	8617
	.long	8619
	.long	8986
	.long	8988
	.long	9000
	.long	9001
	.long	9096
	.long	9097
	.long	9167
	.long	9168
	.long	9193
	.long	9204
	.long	9208
	.long	9211
	.long	9410
	.long	9411
	.long	9642
	.long	9644
	.long	9654
	.long	9655
	.long	9664
	.long	9665
	.long	9723
	.long	9727
	.long	9728
	.long	9734
	.long	9735
	.long	9747
	.long	9748
	.long	9862
	.long	9872
	.long	9990
	.long	9992
	.long	10003
	.long	10004
	.long	10005
	.long	10006
	.long	10007
	.long	10013
	.long	10014
	.long	10017
	.long	10018
	.long	10024
	.long	10025
	.long	10035
	.long	10037
	.long	10052
	.long	10053
	.long	10055
	.long	10056
	.long	10060
	.long	10061
	.long	10062
	.long	10063
	.long	10067
	.long	10070
	.long	10071
	.long	10072
	.long	10083
	.long	10088
	.long	10133
	.long	10136
	.long	10145
	.long	10146
	.long	10160
	.long	10161
	.long	10175
	.long	10176
	.long	10548
	.long	10550
	.long	11013
	.long	11016
	.long	11035
	.long	11037
	.long	11088
	.long	11089
	.long	11093
	.long	11094
	.long	12336
	.long	12337
	.long	12349
	.long	12350
	.long	12951
	.long	12952
	.long	12953
	.long	12954
	.long	126976
	.long	127232
	.long	127245
	.long	127248
	.long	127279
	.long	127280
	.long	127340
	.long	127346
	.long	127358
	.long	127360
	.long	127374
	.long	127375
	.long	127377
	.long	127387
	.long	127405
	.long	127462
	.long	127489
	.long	127504
	.long	127514
	.long	127515
	.long	127535
	.long	127536
	.long	127538
	.long	127547
	.long	127548
	.long	127552
	.long	127561
	.long	127995
	.long	128000
	.long	128318
	.long	128326
	.long	128592
	.long	128640
	.long	128768
	.long	128884
	.long	128896
	.long	128981
	.long	129024
	.long	129036
	.long	129040
	.long	129096
	.long	129104
	.long	129114
	.long	129120
	.long	129160
	.long	129168
	.long	129198
	.long	129280
	.long	129292
	.long	129339
	.long	129340
	.long	129350
	.long	129351
	.long	129792
	.long	130048
	.long	131070
	.globl	_ZNSt9__unicode9__v15_1_012__incb_edgesE
	.section	.rdata$_ZNSt9__unicode9__v15_1_012__incb_edgesE,"dr"
	.linkonce same_size
	.align 32
_ZNSt9__unicode9__v15_1_012__incb_edgesE:
	.long	3074
	.long	3388
	.long	3394
	.long	3520
	.long	4622
	.long	4640
	.long	5702
	.long	5880
	.long	5886
	.long	5888
	.long	5894
	.long	5900
	.long	5906
	.long	5912
	.long	5918
	.long	5920
	.long	6210
	.long	6252
	.long	6446
	.long	6528
	.long	6594
	.long	6596
	.long	7002
	.long	7028
	.long	7038
	.long	7060
	.long	7070
	.long	7076
	.long	7082
	.long	7096
	.long	7238
	.long	7240
	.long	7362
	.long	7468
	.long	8110
	.long	8144
	.long	8182
	.long	8184
	.long	8282
	.long	8296
	.long	8302
	.long	8336
	.long	8342
	.long	8352
	.long	8358
	.long	8376
	.long	8550
	.long	8560
	.long	8802
	.long	8832
	.long	9002
	.long	9096
	.long	9102
	.long	9216
	.long	9301
	.long	9448
	.long	9458
	.long	9460
	.long	9542
	.long	9556
	.long	9569
	.long	9600
	.long	9697
	.long	9728
	.long	9813
	.long	9892
	.long	9897
	.long	9924
	.long	9929
	.long	9932
	.long	9945
	.long	9960
	.long	9970
	.long	9972
	.long	10097
	.long	10104
	.long	10109
	.long	10112
	.long	10177
	.long	10184
	.long	10234
	.long	10236
	.long	10482
	.long	10484
	.long	10837
	.long	10916
	.long	10921
	.long	10948
	.long	10953
	.long	10960
	.long	10965
	.long	10984
	.long	10994
	.long	10996
	.long	11237
	.long	11240
	.long	11349
	.long	11428
	.long	11433
	.long	11460
	.long	11465
	.long	11472
	.long	11477
	.long	11496
	.long	11506
	.long	11508
	.long	11633
	.long	11640
	.long	11645
	.long	11648
	.long	11717
	.long	11720
	.long	12373
	.long	12452
	.long	12457
	.long	12520
	.long	12530
	.long	12532
	.long	12630
	.long	12636
	.long	12641
	.long	12652
	.long	13042
	.long	13044
	.long	13397
	.long	13550
	.long	13556
	.long	14562
	.long	14572
	.long	14626
	.long	14640
	.long	15074
	.long	15084
	.long	15138
	.long	15152
	.long	15458
	.long	15464
	.long	15574
	.long	15576
	.long	15582
	.long	15584
	.long	15590
	.long	15592
	.long	15814
	.long	15820
	.long	15826
	.long	15828
	.long	15850
	.long	15864
	.long	15874
	.long	15876
	.long	15882
	.long	15892
	.long	15898
	.long	15904
	.long	16154
	.long	16156
	.long	16606
	.long	16608
	.long	16614
	.long	16620
	.long	16950
	.long	16952
	.long	19830
	.long	19840
	.long	23634
	.long	23636
	.long	24394
	.long	24396
	.long	24438
	.long	24440
	.long	25254
	.long	25256
	.long	25830
	.long	25840
	.long	26718
	.long	26724
	.long	27010
	.long	27012
	.long	27094
	.long	27124
	.long	27134
	.long	27136
	.long	27330
	.long	27384
	.long	27390
	.long	27452
	.long	27858
	.long	27860
	.long	28078
	.long	28112
	.long	28334
	.long	28336
	.long	28570
	.long	28572
	.long	28894
	.long	28896
	.long	29506
	.long	29516
	.long	29522
	.long	29572
	.long	29578
	.long	29604
	.long	29622
	.long	29624
	.long	29650
	.long	29652
	.long	29666
	.long	29672
	.long	30466
	.long	30720
	.long	32822
	.long	32824
	.long	33602
	.long	33652
	.long	33670
	.long	33672
	.long	33686
	.long	33732
	.long	46014
	.long	46024
	.long	46590
	.long	46592
	.long	46978
	.long	47104
	.long	49322
	.long	49344
	.long	49766
	.long	49772
	.long	170430
	.long	170432
	.long	170450
	.long	170488
	.long	170618
	.long	170624
	.long	170946
	.long	170952
	.long	172210
	.long	172212
	.long	172930
	.long	173000
	.long	173230
	.long	173240
	.long	173774
	.long	173776
	.long	174786
	.long	174788
	.long	174794
	.long	174804
	.long	174814
	.long	174820
	.long	174842
	.long	174848
	.long	174854
	.long	174856
	.long	175066
	.long	175068
	.long	176054
	.long	176056
	.long	257146
	.long	257148
	.long	260226
	.long	260288
	.long	264182
	.long	264184
	.long	265090
	.long	265092
	.long	265690
	.long	265708
	.long	272438
	.long	272440
	.long	272446
	.long	272448
	.long	272610
	.long	272620
	.long	272638
	.long	272640
	.long	273302
	.long	273308
	.long	275602
	.long	275616
	.long	277166
	.long	277172
	.long	277494
	.long	277504
	.long	277786
	.long	277828
	.long	278026
	.long	278040
	.long	278978
	.long	278980
	.long	279038
	.long	279040
	.long	279274
	.long	279276
	.long	279554
	.long	279564
	.long	279758
	.long	279764
	.long	280014
	.long	280016
	.long	280362
	.long	280364
	.long	280794
	.long	280796
	.long	281510
	.long	281516
	.long	281838
	.long	281844
	.long	282010
	.long	282036
	.long	282050
	.long	282068
	.long	282906
	.long	282908
	.long	283002
	.long	283004
	.long	283406
	.long	283408
	.long	284418
	.long	284420
	.long	285406
	.long	285408
	.long	285870
	.long	285872
	.long	286954
	.long	286956
	.long	287994
	.long	287996
	.long	288014
	.long	288016
	.long	288978
	.long	288980
	.long	289054
	.long	289056
	.long	289382
	.long	289384
	.long	292106
	.long	292108
	.long	292114
	.long	292120
	.long	292446
	.long	292448
	.long	294154
	.long	294156
	.long	371650
	.long	371668
	.long	371906
	.long	371932
	.long	455290
	.long	455292
	.long	476566
	.long	476568
	.long	476574
	.long	476584
	.long	476602
	.long	476620
	.long	476654
	.long	476684
	.long	476694
	.long	476720
	.long	476842
	.long	476856
	.long	477450
	.long	477460
	.long	491522
	.long	491548
	.long	491554
	.long	491620
	.long	491630
	.long	491656
	.long	491662
	.long	491668
	.long	491674
	.long	491692
	.long	492094
	.long	492096
	.long	492738
	.long	492764
	.long	494266
	.long	494268
	.long	494514
	.long	494528
	.long	496562
	.long	496576
	.long	500546
	.long	500572
	.long	501010
	.long	501036
	.globl	_ZNSt9__unicode9__v15_1_011__gcb_edgesE
	.section	.rdata$_ZNSt9__unicode9__v15_1_011__gcb_edgesE,"dr"
	.linkonce same_size
	.align 32
_ZNSt9__unicode9__v15_1_011__gcb_edgesE:
	.long	1
	.long	162
	.long	177
	.long	211
	.long	225
	.long	512
	.long	2033
	.long	2560
	.long	2769
	.long	2784
	.long	12292
	.long	14080
	.long	18484
	.long	18592
	.long	22804
	.long	23520
	.long	23540
	.long	23552
	.long	23572
	.long	23600
	.long	23620
	.long	23648
	.long	23668
	.long	23680
	.long	24581
	.long	24672
	.long	24836
	.long	25008
	.long	25025
	.long	25040
	.long	25780
	.long	26112
	.long	26372
	.long	26384
	.long	28004
	.long	28117
	.long	28128
	.long	28148
	.long	28240
	.long	28276
	.long	28304
	.long	28324
	.long	28384
	.long	28917
	.long	28928
	.long	28948
	.long	28960
	.long	29444
	.long	29872
	.long	31332
	.long	31504
	.long	32436
	.long	32576
	.long	32724
	.long	32736
	.long	33124
	.long	33184
	.long	33204
	.long	33344
	.long	33364
	.long	33408
	.long	33428
	.long	33504
	.long	34196
	.long	34240
	.long	35077
	.long	35104
	.long	35204
	.long	35328
	.long	36004
	.long	36389
	.long	36404
	.long	36918
	.long	36928
	.long	37796
	.long	37814
	.long	37828
	.long	37840
	.long	37862
	.long	37908
	.long	38038
	.long	38100
	.long	38118
	.long	38144
	.long	38164
	.long	38272
	.long	38436
	.long	38464
	.long	38932
	.long	38950
	.long	38976
	.long	39876
	.long	39888
	.long	39908
	.long	39926
	.long	39956
	.long	40016
	.long	40054
	.long	40080
	.long	40118
	.long	40148
	.long	40160
	.long	40308
	.long	40320
	.long	40484
	.long	40512
	.long	40932
	.long	40944
	.long	40980
	.long	41014
	.long	41024
	.long	41924
	.long	41936
	.long	41958
	.long	42004
	.long	42032
	.long	42100
	.long	42128
	.long	42164
	.long	42208
	.long	42260
	.long	42272
	.long	42756
	.long	42784
	.long	42836
	.long	42848
	.long	43028
	.long	43062
	.long	43072
	.long	43972
	.long	43984
	.long	44006
	.long	44052
	.long	44128
	.long	44148
	.long	44182
	.long	44192
	.long	44214
	.long	44244
	.long	44256
	.long	44580
	.long	44608
	.long	44964
	.long	45056
	.long	45076
	.long	45094
	.long	45120
	.long	46020
	.long	46032
	.long	46052
	.long	46086
	.long	46100
	.long	46160
	.long	46198
	.long	46224
	.long	46262
	.long	46292
	.long	46304
	.long	46420
	.long	46464
	.long	46628
	.long	46656
	.long	47140
	.long	47152
	.long	48100
	.long	48118
	.long	48132
	.long	48150
	.long	48176
	.long	48230
	.long	48272
	.long	48294
	.long	48340
	.long	48352
	.long	48500
	.long	48512
	.long	49156
	.long	49174
	.long	49220
	.long	49232
	.long	50116
	.long	50128
	.long	50148
	.long	50198
	.long	50256
	.long	50276
	.long	50320
	.long	50340
	.long	50400
	.long	50516
	.long	50544
	.long	50724
	.long	50752
	.long	51220
	.long	51238
	.long	51264
	.long	52164
	.long	52176
	.long	52198
	.long	52212
	.long	52230
	.long	52260
	.long	52278
	.long	52304
	.long	52324
	.long	52342
	.long	52368
	.long	52390
	.long	52420
	.long	52448
	.long	52564
	.long	52592
	.long	52772
	.long	52800
	.long	53046
	.long	53056
	.long	53252
	.long	53286
	.long	53312
	.long	54196
	.long	54224
	.long	54244
	.long	54262
	.long	54292
	.long	54352
	.long	54374
	.long	54416
	.long	54438
	.long	54484
	.long	54501
	.long	54512
	.long	54644
	.long	54656
	.long	54820
	.long	54848
	.long	55316
	.long	55334
	.long	55360
	.long	56484
	.long	56496
	.long	56564
	.long	56582
	.long	56612
	.long	56656
	.long	56676
	.long	56688
	.long	56710
	.long	56820
	.long	56832
	.long	57126
	.long	57152
	.long	58132
	.long	58144
	.long	58166
	.long	58180
	.long	58288
	.long	58484
	.long	58608
	.long	60180
	.long	60192
	.long	60214
	.long	60228
	.long	60368
	.long	60548
	.long	60656
	.long	61828
	.long	61856
	.long	62292
	.long	62304
	.long	62324
	.long	62336
	.long	62356
	.long	62368
	.long	62438
	.long	62464
	.long	63252
	.long	63478
	.long	63492
	.long	63568
	.long	63588
	.long	63616
	.long	63700
	.long	63872
	.long	63892
	.long	64464
	.long	64612
	.long	64624
	.long	66260
	.long	66326
	.long	66340
	.long	66432
	.long	66452
	.long	66486
	.long	66516
	.long	66544
	.long	66918
	.long	66948
	.long	66976
	.long	67044
	.long	67088
	.long	67348
	.long	67408
	.long	67620
	.long	67632
	.long	67654
	.long	67668
	.long	67696
	.long	67796
	.long	67808
	.long	68052
	.long	68064
	.long	69639
	.long	71176
	.long	72329
	.long	73728
	.long	79316
	.long	79360
	.long	94500
	.long	94550
	.long	94560
	.long	95012
	.long	95046
	.long	95056
	.long	95524
	.long	95552
	.long	96036
	.long	96064
	.long	97092
	.long	97126
	.long	97140
	.long	97254
	.long	97380
	.long	97398
	.long	97428
	.long	97600
	.long	97748
	.long	97760
	.long	98484
	.long	98529
	.long	98548
	.long	98560
	.long	100436
	.long	100464
	.long	101012
	.long	101024
	.long	102916
	.long	102966
	.long	103028
	.long	103062
	.long	103104
	.long	103174
	.long	103204
	.long	103222
	.long	103316
	.long	103360
	.long	106868
	.long	106902
	.long	106932
	.long	106944
	.long	107862
	.long	107876
	.long	107894
	.long	107908
	.long	108016
	.long	108036
	.long	108048
	.long	108068
	.long	108080
	.long	108116
	.long	108246
	.long	108340
	.long	108496
	.long	108532
	.long	108544
	.long	109316
	.long	109808
	.long	110596
	.long	110662
	.long	110672
	.long	111428
	.long	111542
	.long	111556
	.long	111574
	.long	111652
	.long	111670
	.long	111696
	.long	112308
	.long	112448
	.long	112644
	.long	112678
	.long	112688
	.long	113174
	.long	113188
	.long	113254
	.long	113284
	.long	113318
	.long	113332
	.long	113376
	.long	114276
	.long	114294
	.long	114308
	.long	114342
	.long	114388
	.long	114406
	.long	114420
	.long	114470
	.long	114496
	.long	115270
	.long	115396
	.long	115526
	.long	115556
	.long	115584
	.long	118020
	.long	118064
	.long	118084
	.long	118294
	.long	118308
	.long	118416
	.long	118484
	.long	118496
	.long	118596
	.long	118608
	.long	118646
	.long	118660
	.long	118688
	.long	121860
	.long	122880
	.long	131249
	.long	131268
	.long	131290
	.long	131297
	.long	131328
	.long	131713
	.long	131824
	.long	132609
	.long	132864
	.long	134404
	.long	134928
	.long	184052
	.long	184096
	.long	186356
	.long	186368
	.long	187908
	.long	188416
	.long	197284
	.long	197376
	.long	199060
	.long	199088
	.long	681716
	.long	681776
	.long	681796
	.long	681952
	.long	682468
	.long	682496
	.long	683780
	.long	683808
	.long	688164
	.long	688176
	.long	688228
	.long	688240
	.long	688308
	.long	688320
	.long	688694
	.long	688724
	.long	688758
	.long	688768
	.long	688836
	.long	688848
	.long	690182
	.long	690208
	.long	691014
	.long	691268
	.long	691296
	.long	691716
	.long	692000
	.long	692212
	.long	692224
	.long	692836
	.long	692960
	.long	693364
	.long	693542
	.long	693568
	.long	693767
	.long	694224
	.long	694276
	.long	694326
	.long	694336
	.long	695092
	.long	695110
	.long	695140
	.long	695206
	.long	695236
	.long	695270
	.long	695312
	.long	695892
	.long	695904
	.long	696980
	.long	697078
	.long	697108
	.long	697142
	.long	697172
	.long	697200
	.long	697396
	.long	697408
	.long	697540
	.long	697558
	.long	697568
	.long	698308
	.long	698320
	.long	699140
	.long	699152
	.long	699172
	.long	699216
	.long	699252
	.long	699280
	.long	699364
	.long	699392
	.long	699412
	.long	699424
	.long	700086
	.long	700100
	.long	700134
	.long	700160
	.long	700246
	.long	700260
	.long	700272
	.long	704054
	.long	704084
	.long	704102
	.long	704132
	.long	704150
	.long	704176
	.long	704198
	.long	704212
	.long	704224
	.long	704523
	.long	704540
	.long	704971
	.long	704988
	.long	705419
	.long	705436
	.long	705867
	.long	705884
	.long	706315
	.long	706332
	.long	706763
	.long	706780
	.long	707211
	.long	707228
	.long	707659
	.long	707676
	.long	708107
	.long	708124
	.long	708555
	.long	708572
	.long	709003
	.long	709020
	.long	709451
	.long	709468
	.long	709899
	.long	709916
	.long	710347
	.long	710364
	.long	710795
	.long	710812
	.long	711243
	.long	711260
	.long	711691
	.long	711708
	.long	712139
	.long	712156
	.long	712587
	.long	712604
	.long	713035
	.long	713052
	.long	713483
	.long	713500
	.long	713931
	.long	713948
	.long	714379
	.long	714396
	.long	714827
	.long	714844
	.long	715275
	.long	715292
	.long	715723
	.long	715740
	.long	716171
	.long	716188
	.long	716619
	.long	716636
	.long	717067
	.long	717084
	.long	717515
	.long	717532
	.long	717963
	.long	717980
	.long	718411
	.long	718428
	.long	718859
	.long	718876
	.long	719307
	.long	719324
	.long	719755
	.long	719772
	.long	720203
	.long	720220
	.long	720651
	.long	720668
	.long	721099
	.long	721116
	.long	721547
	.long	721564
	.long	721995
	.long	722012
	.long	722443
	.long	722460
	.long	722891
	.long	722908
	.long	723339
	.long	723356
	.long	723787
	.long	723804
	.long	724235
	.long	724252
	.long	724683
	.long	724700
	.long	725131
	.long	725148
	.long	725579
	.long	725596
	.long	726027
	.long	726044
	.long	726475
	.long	726492
	.long	726923
	.long	726940
	.long	727371
	.long	727388
	.long	727819
	.long	727836
	.long	728267
	.long	728284
	.long	728715
	.long	728732
	.long	729163
	.long	729180
	.long	729611
	.long	729628
	.long	730059
	.long	730076
	.long	730507
	.long	730524
	.long	730955
	.long	730972
	.long	731403
	.long	731420
	.long	731851
	.long	731868
	.long	732299
	.long	732316
	.long	732747
	.long	732764
	.long	733195
	.long	733212
	.long	733643
	.long	733660
	.long	734091
	.long	734108
	.long	734539
	.long	734556
	.long	734987
	.long	735004
	.long	735435
	.long	735452
	.long	735883
	.long	735900
	.long	736331
	.long	736348
	.long	736779
	.long	736796
	.long	737227
	.long	737244
	.long	737675
	.long	737692
	.long	738123
	.long	738140
	.long	738571
	.long	738588
	.long	739019
	.long	739036
	.long	739467
	.long	739484
	.long	739915
	.long	739932
	.long	740363
	.long	740380
	.long	740811
	.long	740828
	.long	741259
	.long	741276
	.long	741707
	.long	741724
	.long	742155
	.long	742172
	.long	742603
	.long	742620
	.long	743051
	.long	743068
	.long	743499
	.long	743516
	.long	743947
	.long	743964
	.long	744395
	.long	744412
	.long	744843
	.long	744860
	.long	745291
	.long	745308
	.long	745739
	.long	745756
	.long	746187
	.long	746204
	.long	746635
	.long	746652
	.long	747083
	.long	747100
	.long	747531
	.long	747548
	.long	747979
	.long	747996
	.long	748427
	.long	748444
	.long	748875
	.long	748892
	.long	749323
	.long	749340
	.long	749771
	.long	749788
	.long	750219
	.long	750236
	.long	750667
	.long	750684
	.long	751115
	.long	751132
	.long	751563
	.long	751580
	.long	752011
	.long	752028
	.long	752459
	.long	752476
	.long	752907
	.long	752924
	.long	753355
	.long	753372
	.long	753803
	.long	753820
	.long	754251
	.long	754268
	.long	754699
	.long	754716
	.long	755147
	.long	755164
	.long	755595
	.long	755612
	.long	756043
	.long	756060
	.long	756491
	.long	756508
	.long	756939
	.long	756956
	.long	757387
	.long	757404
	.long	757835
	.long	757852
	.long	758283
	.long	758300
	.long	758731
	.long	758748
	.long	759179
	.long	759196
	.long	759627
	.long	759644
	.long	760075
	.long	760092
	.long	760523
	.long	760540
	.long	760971
	.long	760988
	.long	761419
	.long	761436
	.long	761867
	.long	761884
	.long	762315
	.long	762332
	.long	762763
	.long	762780
	.long	763211
	.long	763228
	.long	763659
	.long	763676
	.long	764107
	.long	764124
	.long	764555
	.long	764572
	.long	765003
	.long	765020
	.long	765451
	.long	765468
	.long	765899
	.long	765916
	.long	766347
	.long	766364
	.long	766795
	.long	766812
	.long	767243
	.long	767260
	.long	767691
	.long	767708
	.long	768139
	.long	768156
	.long	768587
	.long	768604
	.long	769035
	.long	769052
	.long	769483
	.long	769500
	.long	769931
	.long	769948
	.long	770379
	.long	770396
	.long	770827
	.long	770844
	.long	771275
	.long	771292
	.long	771723
	.long	771740
	.long	772171
	.long	772188
	.long	772619
	.long	772636
	.long	773067
	.long	773084
	.long	773515
	.long	773532
	.long	773963
	.long	773980
	.long	774411
	.long	774428
	.long	774859
	.long	774876
	.long	775307
	.long	775324
	.long	775755
	.long	775772
	.long	776203
	.long	776220
	.long	776651
	.long	776668
	.long	777099
	.long	777116
	.long	777547
	.long	777564
	.long	777995
	.long	778012
	.long	778443
	.long	778460
	.long	778891
	.long	778908
	.long	779339
	.long	779356
	.long	779787
	.long	779804
	.long	780235
	.long	780252
	.long	780683
	.long	780700
	.long	781131
	.long	781148
	.long	781579
	.long	781596
	.long	782027
	.long	782044
	.long	782475
	.long	782492
	.long	782923
	.long	782940
	.long	783371
	.long	783388
	.long	783819
	.long	783836
	.long	784267
	.long	784284
	.long	784715
	.long	784732
	.long	785163
	.long	785180
	.long	785611
	.long	785628
	.long	786059
	.long	786076
	.long	786507
	.long	786524
	.long	786955
	.long	786972
	.long	787403
	.long	787420
	.long	787851
	.long	787868
	.long	788299
	.long	788316
	.long	788747
	.long	788764
	.long	789195
	.long	789212
	.long	789643
	.long	789660
	.long	790091
	.long	790108
	.long	790539
	.long	790556
	.long	790987
	.long	791004
	.long	791435
	.long	791452
	.long	791883
	.long	791900
	.long	792331
	.long	792348
	.long	792779
	.long	792796
	.long	793227
	.long	793244
	.long	793675
	.long	793692
	.long	794123
	.long	794140
	.long	794571
	.long	794588
	.long	795019
	.long	795036
	.long	795467
	.long	795484
	.long	795915
	.long	795932
	.long	796363
	.long	796380
	.long	796811
	.long	796828
	.long	797259
	.long	797276
	.long	797707
	.long	797724
	.long	798155
	.long	798172
	.long	798603
	.long	798620
	.long	799051
	.long	799068
	.long	799499
	.long	799516
	.long	799947
	.long	799964
	.long	800395
	.long	800412
	.long	800843
	.long	800860
	.long	801291
	.long	801308
	.long	801739
	.long	801756
	.long	802187
	.long	802204
	.long	802635
	.long	802652
	.long	803083
	.long	803100
	.long	803531
	.long	803548
	.long	803979
	.long	803996
	.long	804427
	.long	804444
	.long	804875
	.long	804892
	.long	805323
	.long	805340
	.long	805771
	.long	805788
	.long	806219
	.long	806236
	.long	806667
	.long	806684
	.long	807115
	.long	807132
	.long	807563
	.long	807580
	.long	808011
	.long	808028
	.long	808459
	.long	808476
	.long	808907
	.long	808924
	.long	809355
	.long	809372
	.long	809803
	.long	809820
	.long	810251
	.long	810268
	.long	810699
	.long	810716
	.long	811147
	.long	811164
	.long	811595
	.long	811612
	.long	812043
	.long	812060
	.long	812491
	.long	812508
	.long	812939
	.long	812956
	.long	813387
	.long	813404
	.long	813835
	.long	813852
	.long	814283
	.long	814300
	.long	814731
	.long	814748
	.long	815179
	.long	815196
	.long	815627
	.long	815644
	.long	816075
	.long	816092
	.long	816523
	.long	816540
	.long	816971
	.long	816988
	.long	817419
	.long	817436
	.long	817867
	.long	817884
	.long	818315
	.long	818332
	.long	818763
	.long	818780
	.long	819211
	.long	819228
	.long	819659
	.long	819676
	.long	820107
	.long	820124
	.long	820555
	.long	820572
	.long	821003
	.long	821020
	.long	821451
	.long	821468
	.long	821899
	.long	821916
	.long	822347
	.long	822364
	.long	822795
	.long	822812
	.long	823243
	.long	823260
	.long	823691
	.long	823708
	.long	824139
	.long	824156
	.long	824587
	.long	824604
	.long	825035
	.long	825052
	.long	825483
	.long	825500
	.long	825931
	.long	825948
	.long	826379
	.long	826396
	.long	826827
	.long	826844
	.long	827275
	.long	827292
	.long	827723
	.long	827740
	.long	828171
	.long	828188
	.long	828619
	.long	828636
	.long	829067
	.long	829084
	.long	829515
	.long	829532
	.long	829963
	.long	829980
	.long	830411
	.long	830428
	.long	830859
	.long	830876
	.long	831307
	.long	831324
	.long	831755
	.long	831772
	.long	832203
	.long	832220
	.long	832651
	.long	832668
	.long	833099
	.long	833116
	.long	833547
	.long	833564
	.long	833995
	.long	834012
	.long	834443
	.long	834460
	.long	834891
	.long	834908
	.long	835339
	.long	835356
	.long	835787
	.long	835804
	.long	836235
	.long	836252
	.long	836683
	.long	836700
	.long	837131
	.long	837148
	.long	837579
	.long	837596
	.long	838027
	.long	838044
	.long	838475
	.long	838492
	.long	838923
	.long	838940
	.long	839371
	.long	839388
	.long	839819
	.long	839836
	.long	840267
	.long	840284
	.long	840715
	.long	840732
	.long	841163
	.long	841180
	.long	841611
	.long	841628
	.long	842059
	.long	842076
	.long	842507
	.long	842524
	.long	842955
	.long	842972
	.long	843403
	.long	843420
	.long	843851
	.long	843868
	.long	844299
	.long	844316
	.long	844747
	.long	844764
	.long	845195
	.long	845212
	.long	845643
	.long	845660
	.long	846091
	.long	846108
	.long	846539
	.long	846556
	.long	846987
	.long	847004
	.long	847435
	.long	847452
	.long	847883
	.long	847900
	.long	848331
	.long	848348
	.long	848779
	.long	848796
	.long	849227
	.long	849244
	.long	849675
	.long	849692
	.long	850123
	.long	850140
	.long	850571
	.long	850588
	.long	851019
	.long	851036
	.long	851467
	.long	851484
	.long	851915
	.long	851932
	.long	852363
	.long	852380
	.long	852811
	.long	852828
	.long	853259
	.long	853276
	.long	853707
	.long	853724
	.long	854155
	.long	854172
	.long	854603
	.long	854620
	.long	855051
	.long	855068
	.long	855499
	.long	855516
	.long	855947
	.long	855964
	.long	856395
	.long	856412
	.long	856843
	.long	856860
	.long	857291
	.long	857308
	.long	857739
	.long	857756
	.long	858187
	.long	858204
	.long	858635
	.long	858652
	.long	859083
	.long	859100
	.long	859531
	.long	859548
	.long	859979
	.long	859996
	.long	860427
	.long	860444
	.long	860875
	.long	860892
	.long	861323
	.long	861340
	.long	861771
	.long	861788
	.long	862219
	.long	862236
	.long	862667
	.long	862684
	.long	863115
	.long	863132
	.long	863563
	.long	863580
	.long	864011
	.long	864028
	.long	864459
	.long	864476
	.long	864907
	.long	864924
	.long	865355
	.long	865372
	.long	865803
	.long	865820
	.long	866251
	.long	866268
	.long	866699
	.long	866716
	.long	867147
	.long	867164
	.long	867595
	.long	867612
	.long	868043
	.long	868060
	.long	868491
	.long	868508
	.long	868939
	.long	868956
	.long	869387
	.long	869404
	.long	869835
	.long	869852
	.long	870283
	.long	870300
	.long	870731
	.long	870748
	.long	871179
	.long	871196
	.long	871627
	.long	871644
	.long	872075
	.long	872092
	.long	872523
	.long	872540
	.long	872971
	.long	872988
	.long	873419
	.long	873436
	.long	873867
	.long	873884
	.long	874315
	.long	874332
	.long	874763
	.long	874780
	.long	875211
	.long	875228
	.long	875659
	.long	875676
	.long	876107
	.long	876124
	.long	876555
	.long	876572
	.long	877003
	.long	877020
	.long	877451
	.long	877468
	.long	877899
	.long	877916
	.long	878347
	.long	878364
	.long	878795
	.long	878812
	.long	879243
	.long	879260
	.long	879691
	.long	879708
	.long	880139
	.long	880156
	.long	880587
	.long	880604
	.long	881035
	.long	881052
	.long	881483
	.long	881500
	.long	881931
	.long	881948
	.long	882379
	.long	882396
	.long	882827
	.long	882844
	.long	883264
	.long	883464
	.long	883824
	.long	883897
	.long	884672
	.long	1028580
	.long	1028592
	.long	1040388
	.long	1040640
	.long	1040900
	.long	1041152
	.long	1044465
	.long	1044480
	.long	1047012
	.long	1047040
	.long	1048321
	.long	1048512
	.long	1056724
	.long	1056736
	.long	1060356
	.long	1060368
	.long	1062756
	.long	1062832
	.long	1089556
	.long	1089600
	.long	1089620
	.long	1089648
	.long	1089732
	.long	1089792
	.long	1090436
	.long	1090480
	.long	1090548
	.long	1090560
	.long	1093204
	.long	1093232
	.long	1102404
	.long	1102464
	.long	1108660
	.long	1108688
	.long	1109972
	.long	1110016
	.long	1111140
	.long	1111312
	.long	1112100
	.long	1112160
	.long	1114118
	.long	1114132
	.long	1114150
	.long	1114160
	.long	1115012
	.long	1115248
	.long	1115908
	.long	1115920
	.long	1115956
	.long	1115984
	.long	1116148
	.long	1116198
	.long	1116208
	.long	1116934
	.long	1116980
	.long	1117046
	.long	1117076
	.long	1117104
	.long	1117141
	.long	1117152
	.long	1117220
	.long	1117232
	.long	1117397
	.long	1117408
	.long	1118212
	.long	1118256
	.long	1118836
	.long	1118918
	.long	1118932
	.long	1119056
	.long	1119318
	.long	1119344
	.long	1120052
	.long	1120064
	.long	1120260
	.long	1120294
	.long	1120304
	.long	1121078
	.long	1121124
	.long	1121270
	.long	1121296
	.long	1121317
	.long	1121344
	.long	1121428
	.long	1121488
	.long	1121510
	.long	1121524
	.long	1121536
	.long	1123014
	.long	1123060
	.long	1123110
	.long	1123140
	.long	1123158
	.long	1123172
	.long	1123200
	.long	1123300
	.long	1123312
	.long	1123348
	.long	1123360
	.long	1125876
	.long	1125894
	.long	1125940
	.long	1126064
	.long	1126404
	.long	1126438
	.long	1126464
	.long	1127348
	.long	1127376
	.long	1127396
	.long	1127414
	.long	1127428
	.long	1127446
	.long	1127504
	.long	1127542
	.long	1127568
	.long	1127606
	.long	1127648
	.long	1127796
	.long	1127808
	.long	1127974
	.long	1128000
	.long	1128036
	.long	1128144
	.long	1128196
	.long	1128272
	.long	1131350
	.long	1131396
	.long	1131526
	.long	1131556
	.long	1131606
	.long	1131620
	.long	1131632
	.long	1132004
	.long	1132016
	.long	1133316
	.long	1133334
	.long	1133364
	.long	1133462
	.long	1133476
	.long	1133494
	.long	1133524
	.long	1133542
	.long	1133556
	.long	1133590
	.long	1133604
	.long	1133632
	.long	1137396
	.long	1137414
	.long	1137444
	.long	1137504
	.long	1137542
	.long	1137604
	.long	1137638
	.long	1137652
	.long	1137680
	.long	1138116
	.long	1138144
	.long	1139462
	.long	1139508
	.long	1139638
	.long	1139668
	.long	1139686
	.long	1139700
	.long	1139728
	.long	1141428
	.long	1141446
	.long	1141460
	.long	1141478
	.long	1141508
	.long	1141606
	.long	1141620
	.long	1141632
	.long	1143252
	.long	1143296
	.long	1143332
	.long	1143398
	.long	1143412
	.long	1143488
	.long	1147590
	.long	1147636
	.long	1147782
	.long	1147796
	.long	1147824
	.long	1151748
	.long	1151766
	.long	1151840
	.long	1151862
	.long	1151888
	.long	1151924
	.long	1151958
	.long	1151972
	.long	1151989
	.long	1152006
	.long	1152021
	.long	1152038
	.long	1152052
	.long	1152064
	.long	1154326
	.long	1154372
	.long	1154432
	.long	1154468
	.long	1154502
	.long	1154564
	.long	1154576
	.long	1154630
	.long	1154640
	.long	1155092
	.long	1155248
	.long	1155892
	.long	1155990
	.long	1156005
	.long	1156020
	.long	1156080
	.long	1156212
	.long	1156224
	.long	1156372
	.long	1156470
	.long	1156500
	.long	1156544
	.long	1157189
	.long	1157284
	.long	1157494
	.long	1157508
	.long	1157536
	.long	1164022
	.long	1164036
	.long	1164144
	.long	1164164
	.long	1164262
	.long	1164276
	.long	1164288
	.long	1165604
	.long	1165952
	.long	1165974
	.long	1165988
	.long	1166102
	.long	1166116
	.long	1166150
	.long	1166164
	.long	1166192
	.long	1168148
	.long	1168240
	.long	1168292
	.long	1168304
	.long	1168324
	.long	1168352
	.long	1168372
	.long	1168485
	.long	1168500
	.long	1168512
	.long	1169574
	.long	1169648
	.long	1169668
	.long	1169696
	.long	1169718
	.long	1169748
	.long	1169766
	.long	1169780
	.long	1169792
	.long	1175348
	.long	1175382
	.long	1175408
	.long	1175556
	.long	1175589
	.long	1175606
	.long	1175616
	.long	1176390
	.long	1176420
	.long	1176496
	.long	1176550
	.long	1176580
	.long	1176598
	.long	1176612
	.long	1176624
	.long	1262337
	.long	1262596
	.long	1262608
	.long	1262708
	.long	1262944
	.long	1486596
	.long	1486672
	.long	1487620
	.long	1487728
	.long	1504500
	.long	1504512
	.long	1504534
	.long	1505408
	.long	1505524
	.long	1505584
	.long	1506884
	.long	1506896
	.long	1507078
	.long	1507104
	.long	1821140
	.long	1821168
	.long	1821185
	.long	1821248
	.long	1896452
	.long	1897184
	.long	1897220
	.long	1897584
	.long	1906260
	.long	1906278
	.long	1906292
	.long	1906336
	.long	1906390
	.long	1906404
	.long	1906481
	.long	1906612
	.long	1906736
	.long	1906772
	.long	1906880
	.long	1907364
	.long	1907424
	.long	1909796
	.long	1909840
	.long	1941508
	.long	1942384
	.long	1942452
	.long	1943248
	.long	1943380
	.long	1943392
	.long	1943620
	.long	1943632
	.long	1943988
	.long	1944064
	.long	1944084
	.long	1944320
	.long	1966084
	.long	1966192
	.long	1966212
	.long	1966480
	.long	1966516
	.long	1966624
	.long	1966644
	.long	1966672
	.long	1966692
	.long	1966768
	.long	1968372
	.long	1968384
	.long	1970948
	.long	1971056
	.long	1977060
	.long	1977072
	.long	1978052
	.long	1978112
	.long	1986244
	.long	1986304
	.long	2002180
	.long	2002288
	.long	2004036
	.long	2004144
	.long	2039405
	.long	2039808
	.long	2047924
	.long	2048000
	.long	14680065
	.long	14680580
	.long	14682113
	.long	14684164
	.long	14688001
	.long	14745600
	.globl	_ZNSt9__unicode9__v15_1_013__width_edgesE
	.section	.rdata$_ZNSt9__unicode9__v15_1_013__width_edgesE,"dr"
	.linkonce same_size
	.align 32
_ZNSt9__unicode9__v15_1_013__width_edgesE:
	.long	4352
	.long	4448
	.long	8986
	.long	8988
	.long	9001
	.long	9003
	.long	9193
	.long	9197
	.long	9200
	.long	9201
	.long	9203
	.long	9204
	.long	9725
	.long	9727
	.long	9748
	.long	9750
	.long	9800
	.long	9812
	.long	9855
	.long	9856
	.long	9875
	.long	9876
	.long	9889
	.long	9890
	.long	9898
	.long	9900
	.long	9917
	.long	9919
	.long	9924
	.long	9926
	.long	9934
	.long	9935
	.long	9940
	.long	9941
	.long	9962
	.long	9963
	.long	9970
	.long	9972
	.long	9973
	.long	9974
	.long	9978
	.long	9979
	.long	9981
	.long	9982
	.long	9989
	.long	9990
	.long	9994
	.long	9996
	.long	10024
	.long	10025
	.long	10060
	.long	10061
	.long	10062
	.long	10063
	.long	10067
	.long	10070
	.long	10071
	.long	10072
	.long	10133
	.long	10136
	.long	10160
	.long	10161
	.long	10175
	.long	10176
	.long	11035
	.long	11037
	.long	11088
	.long	11089
	.long	11093
	.long	11094
	.long	11904
	.long	11930
	.long	11931
	.long	12020
	.long	12032
	.long	12246
	.long	12272
	.long	12351
	.long	12353
	.long	12439
	.long	12441
	.long	12544
	.long	12549
	.long	12592
	.long	12593
	.long	12687
	.long	12688
	.long	12772
	.long	12783
	.long	12831
	.long	12832
	.long	12872
	.long	12880
	.long	42125
	.long	42128
	.long	42183
	.long	43360
	.long	43389
	.long	44032
	.long	55204
	.long	63744
	.long	64256
	.long	65040
	.long	65050
	.long	65072
	.long	65107
	.long	65108
	.long	65127
	.long	65128
	.long	65132
	.long	65281
	.long	65377
	.long	65504
	.long	65511
	.long	94176
	.long	94181
	.long	94192
	.long	94194
	.long	94208
	.long	100344
	.long	100352
	.long	101590
	.long	101632
	.long	101641
	.long	110576
	.long	110580
	.long	110581
	.long	110588
	.long	110589
	.long	110591
	.long	110592
	.long	110883
	.long	110898
	.long	110899
	.long	110928
	.long	110931
	.long	110933
	.long	110934
	.long	110948
	.long	110952
	.long	110960
	.long	111356
	.long	126980
	.long	126981
	.long	127183
	.long	127184
	.long	127374
	.long	127375
	.long	127377
	.long	127387
	.long	127488
	.long	127491
	.long	127504
	.long	127548
	.long	127552
	.long	127561
	.long	127568
	.long	127570
	.long	127584
	.long	127590
	.long	127744
	.long	128592
	.long	128640
	.long	128710
	.long	128716
	.long	128717
	.long	128720
	.long	128723
	.long	128725
	.long	128728
	.long	128732
	.long	128736
	.long	128747
	.long	128749
	.long	128756
	.long	128765
	.long	128992
	.long	129004
	.long	129008
	.long	129009
	.long	129280
	.long	129536
	.long	129648
	.long	129661
	.long	129664
	.long	129673
	.long	129680
	.long	129726
	.long	129727
	.long	129734
	.long	129742
	.long	129756
	.long	129760
	.long	129769
	.long	129776
	.long	129785
	.long	131072
	.long	196606
	.long	196608
	.long	262142
	.section .rdata,"dr"
	.align 64
.LC6:
	.quad	3688503277381496880
	.quad	3976738051646829616
	.quad	3544667369688283184
	.quad	3832902143785906737
	.quad	4121136918051239473
	.quad	3689066235924983858
	.quad	3977301010190316594
	.quad	3545230328231770162
	.align 64
.LC7:
	.quad	3833465102329393715
	.quad	4121699876594726451
	.quad	3689629194468470836
	.quad	3977863968733803572
	.quad	3545793286775257140
	.quad	3834028060872880693
	.quad	4122262835138213429
	.quad	3690192153011957814
	.align 64
.LC8:
	.quad	3978426927277290550
	.quad	3546356245318744118
	.quad	3834591019416367671
	.quad	4122825793681700407
	.quad	3690755111555444792
	.quad	3978989885820777528
	.quad	3546919203862231096
	.quad	3835153977959854649
	.align 8
.LC14:
	.quad	.LC12
	.align 32
.LC18:
	.quad	8318823007731530307
	.quad	4913278112686498863
	.quad	8319395793567310703
	.quad	3414420421551408943
	.align 32
.LC19:
	.quad	3414420421551408943
	.quad	7526411497693406540
	.quad	7308268468202464353
	.quad	8101253776479971694
	.align 32
.LC20:
	.quad	3414420421551408943
	.quad	7526411497693406540
	.quad	7308268468202464353
	.quad	7449361041837877614
	.align 32
.LC21:
	.quad	3414420421551408943
	.quad	7526411497693406540
	.quad	7308268468202464353
	.quad	8390880614003337582
	.align 32
.LC22:
	.long	-1082130432
	.long	-1082130432
	.long	0
	.long	1065353216
	.long	-1082130432
	.long	0
	.long	1065353216
	.long	1065353216
	.align 16
.LC23:
	.long	0
	.long	-1082130432
	.long	1065353216
	.long	0
	.set	.LC32,.LC22+12
	.align 2
.LC40:
	.byte	3
	.byte	0
	.align 8
.LC63:
	.long	0
	.long	1072693248
	.align 16
.LC64:
	.quad	0
	.quad	-1
	.align 8
.LC66:
	.quad	_ZTVNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcEE+16
	.align 8
.LC67:
	.quad	_ZTVNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE+16
	.def	__main;	.scl	2;	.type	32;	.endef
	.def	__udivti3;	.scl	2;	.type	32;	.endef
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev2, Built by MSYS2 project) 14.2.0"
	.def	_ZNSt13runtime_errorD2Ev;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_ZNSo3putEc;	.scl	2;	.type	32;	.endef
	.def	_ZNSo5flushEv;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt5ctypeIcE13_M_widen_initEv;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__throw_bad_castv;	.scl	2;	.type	32;	.endef
	.def	memcmp;	.scl	2;	.type	32;	.endef
	.def	_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base;	.scl	2;	.type	32;	.endef
	.def	_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base;	.scl	2;	.type	32;	.endef
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.def	__cxa_allocate_exception;	.scl	2;	.type	32;	.endef
	.def	_ZNSt13runtime_errorC2EPKc;	.scl	2;	.type	32;	.endef
	.def	__cxa_throw;	.scl	2;	.type	32;	.endef
	.def	__cxa_free_exception;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	strlen;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_baseC2Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E;	.scl	2;	.type	32;	.endef
	.def	_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode;	.scl	2;	.type	32;	.endef
	.def	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt12__basic_fileIcE7is_openEv;	.scl	2;	.type	32;	.endef
	.def	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSt12__basic_fileIcED1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt6localeD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_baseD2Ev;	.scl	2;	.type	32;	.endef
	.def	_ZSt17__throw_bad_allocv;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZSt20__throw_length_errorPKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev;	.scl	2;	.type	32;	.endef
	.def	__cxa_begin_catch;	.scl	2;	.type	32;	.endef
	.def	__cxa_end_catch;	.scl	2;	.type	32;	.endef
	.def	glfwSwapInterval;	.scl	2;	.type	32;	.endef
	.def	_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_;	.scl	2;	.type	32;	.endef
	.def	__cxa_rethrow;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode;	.scl	2;	.type	32;	.endef
	.def	_ZNSt6localeC1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcyy;	.scl	2;	.type	32;	.endef
	.def	strtoul;	.scl	2;	.type	32;	.endef
	.def	__mingw_strtof;	.scl	2;	.type	32;	.endef
	.def	_Znay;	.scl	2;	.type	32;	.endef
	.def	strtol;	.scl	2;	.type	32;	.endef
	.def	_ZN5Lenia6AnimalC1ENS_8TaxonomyEjfPKfhffNS_10KernelCoreENS_14GrowthFunctionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE;	.scl	2;	.type	32;	.endef
	.def	__cxa_throw_bad_array_new_length;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZSt20__throw_out_of_rangePKc;	.scl	2;	.type	32;	.endef
	.def	_ZSt24__throw_invalid_argumentPKc;	.scl	2;	.type	32;	.endef
	.def	_ZSt19__throw_logic_errorPKc;	.scl	2;	.type	32;	.endef
	.def	memmove;	.scl	2;	.type	32;	.endef
	.def	memset;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcyPKcyy;	.scl	2;	.type	32;	.endef
	.def	_ZNSt6localeC1ERKS_;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt6locale4nameB5cxx11Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt6locale2id5_M_idEv;	.scl	2;	.type	32;	.endef
	.def	toupper;	.scl	2;	.type	32;	.endef
	.def	_ZNSt6locale7classicEv;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt6localeeqERKS_;	.scl	2;	.type	32;	.endef
	.def	memchr;	.scl	2;	.type	32;	.endef
	.def	_ZSt24__throw_out_of_range_fmtPKcz;	.scl	2;	.type	32;	.endef
	.def	_ZSt8to_charsPcS_e;	.scl	2;	.type	32;	.endef
	.def	_ZSt8to_charsPcS_eSt12chars_formati;	.scl	2;	.type	32;	.endef
	.def	_ZSt8to_charsPcS_eSt12chars_format;	.scl	2;	.type	32;	.endef
	.def	frexpl;	.scl	2;	.type	32;	.endef
	.def	_ZSt8to_charsPcS_d;	.scl	2;	.type	32;	.endef
	.def	_ZSt8to_charsPcS_dSt12chars_formati;	.scl	2;	.type	32;	.endef
	.def	_ZSt8to_charsPcS_dSt12chars_format;	.scl	2;	.type	32;	.endef
	.def	frexp;	.scl	2;	.type	32;	.endef
	.def	_ZSt8to_charsPcS_f;	.scl	2;	.type	32;	.endef
	.def	_ZSt8to_charsPcS_fSt12chars_formati;	.scl	2;	.type	32;	.endef
	.def	_ZSt8to_charsPcS_fSt12chars_format;	.scl	2;	.type	32;	.endef
	.def	frexpf;	.scl	2;	.type	32;	.endef
	.def	glfwInit;	.scl	2;	.type	32;	.endef
	.def	glfwCreateWindow;	.scl	2;	.type	32;	.endef
	.def	glfwMakeContextCurrent;	.scl	2;	.type	32;	.endef
	.def	gladLoadGLLoader;	.scl	2;	.type	32;	.endef
	.def	_ZN5Lenia6Animal4BindEv;	.scl	2;	.type	32;	.endef
	.def	_ZN5Lenia10SimulationC1EyyyRKNS_12ColorPaletteE;	.scl	2;	.type	32;	.endef
	.def	_ZN5Lenia10Simulation11PlaceAnimalEPNS_6AnimalEjj;	.scl	2;	.type	32;	.endef
	.def	glfwWindowShouldClose;	.scl	2;	.type	32;	.endef
	.def	glfwGetTime;	.scl	2;	.type	32;	.endef
	.def	glfwGetKey;	.scl	2;	.type	32;	.endef
	.def	glfwSwapBuffers;	.scl	2;	.type	32;	.endef
	.def	_ZN5Lenia10Simulation6UpdateEv;	.scl	2;	.type	32;	.endef
	.def	glfwPollEvents;	.scl	2;	.type	32;	.endef
	.def	glfwSetWindowTitle;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIbEERSoT_;	.scl	2;	.type	32;	.endef
	.def	glfwSetWindowShouldClose;	.scl	2;	.type	32;	.endef
	.def	glfwDestroyWindow;	.scl	2;	.type	32;	.endef
	.def	glfwTerminate;	.scl	2;	.type	32;	.endef
	.def	_ZN5Lenia6AnimalD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZN5Lenia10SimulationD1Ev;	.scl	2;	.type	32;	.endef
	.def	atexit;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt13runtime_error4whatEv;	.scl	2;	.type	32;	.endef
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
	.section	.rdata$.refptr._ZNSt7__cxx118numpunctIcE2idE, "dr"
	.globl	.refptr._ZNSt7__cxx118numpunctIcE2idE
	.linkonce	discard
.refptr._ZNSt7__cxx118numpunctIcE2idE:
	.quad	_ZNSt7__cxx118numpunctIcE2idE
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
