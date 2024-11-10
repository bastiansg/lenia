	.file	"main.cpp"
	.intel_syntax noprefix
 # GNU C++23 (Rev2, Built by MSYS2 project) version 14.2.0 (x86_64-w64-mingw32)
 #	compiled by GNU C version 14.2.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.27-GMP

 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed: -masm=intel -mavx512f -mtune=generic -march=nocona -Ofast -std=c++23
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
 # C:/msys64/mingw64/include/c++/14.2.0/bits/locale_facets.h:1092:       do_widen(char __c) const
	mov	eax, edx	 # __c, tmp103
 # C:/msys64/mingw64/include/c++/14.2.0/bits/locale_facets.h:1093:       { return __c; }
	ret	
	.seh_endproc
	.text
	.p2align 4
	.def	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0:
.LFB9769:
	push	rsi	 #
	.seh_pushreg	rsi
	push	rbx	 #
	.seh_pushreg	rbx
	sub	rsp, 40	 #,
	.seh_stackalloc	40
	.seh_endprologue
 # C:/msys64/mingw64/include/c++/14.2.0/ostream:742:     { return flush(__os.put(__os.widen('\n'))); }
	mov	rax, QWORD PTR [rcx]	 # __os_1(D)->_vptr.basic_ostream, __os_1(D)->_vptr.basic_ostream
	mov	rax, QWORD PTR -24[rax]	 # MEM[(long long int *)_2 + -24B], MEM[(long long int *)_2 + -24B]
	mov	rsi, QWORD PTR 240[rcx+rax]	 # _14, MEM[(const struct __ctype_type * *)_5 + 240B]
 # C:/msys64/mingw64/include/c++/14.2.0/ostream:741:     endl(basic_ostream<_CharT, _Traits>& __os)
	mov	rbx, rcx	 # __os, tmp117
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:49:       if (!__f)
	test	rsi, rsi	 # _14
	je	.L8	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/locale_facets.h:882: 	if (_M_widen_ok)
	cmp	BYTE PTR 56[rsi], 0	 # MEM[(const struct ctype *)_14]._M_widen_ok,
	je	.L5	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/ostream:742:     { return flush(__os.put(__os.widen('\n'))); }
	movsx	edx, BYTE PTR 67[rsi]	 # _9, MEM[(const struct ctype *)_14]._M_widen[10]
.L6:
	mov	rcx, rbx	 #, __os
	call	_ZNSo3putEc	 #
	mov	rcx, rax	 # _8, tmp119
 # C:/msys64/mingw64/include/c++/14.2.0/ostream:742:     { return flush(__os.put(__os.widen('\n'))); }
	add	rsp, 40	 #,
	pop	rbx	 #
	pop	rsi	 #
 # C:/msys64/mingw64/include/c++/14.2.0/ostream:764:     { return __os.flush(); }
	jmp	_ZNSo5flushEv	 #
	.p2align 4,,10
	.p2align 3
.L5:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/locale_facets.h:884: 	this->_M_widen_init();
	mov	rcx, rsi	 #, _14
	call	_ZNKSt5ctypeIcE13_M_widen_initEv	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/locale_facets.h:885: 	return this->do_widen(__c);
	mov	rax, QWORD PTR [rsi]	 # MEM[(const struct ctype *)_14].D.66525._vptr.facet, MEM[(const struct ctype *)_14].D.66525._vptr.facet
	mov	edx, 10	 # _9,
	lea	rcx, _ZNKSt5ctypeIcE8do_widenEc[rip]	 # tmp116,
	mov	rax, QWORD PTR 48[rax]	 # _25, MEM[(int (*) () *)_24 + 48B]
	cmp	rax, rcx	 # _25, tmp116
	je	.L6	 #,
	mov	rcx, rsi	 #, _14
	call	rax	 # _25
 # C:/msys64/mingw64/include/c++/14.2.0/ostream:742:     { return flush(__os.put(__os.widen('\n'))); }
	movsx	edx, al	 # _9, tmp118
	jmp	.L6	 #
.L8:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:50: 	__throw_bad_cast();
	call	_ZSt16__throw_bad_castv	 #
	nop	
	.seh_endproc
	.align 2
	.p2align 4
	.def	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5Lenia6AnimalEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE24_M_get_insert_unique_posERS7_.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5Lenia6AnimalEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE24_M_get_insert_unique_posERS7_.isra.0
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5Lenia6AnimalEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE24_M_get_insert_unique_posERS7_.isra.0:
.LFB9772:
	push	r15	 #
	.seh_pushreg	r15
	push	r14	 #
	.seh_pushreg	r14
	push	r13	 #
	.seh_pushreg	r13
	push	r12	 #
	.seh_pushreg	r12
	push	rbp	 #
	.seh_pushreg	rbp
	push	rdi	 #
	.seh_pushreg	rdi
	push	rsi	 #
	.seh_pushreg	rsi
	push	rbx	 #
	.seh_pushreg	rbx
	sub	rsp, 56	 #,
	.seh_stackalloc	56
	.seh_endprologue
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:497: 	if (__d > __gnu_cxx::__numeric_traits<int>::__max)
	mov	r13d, 2147483648	 # tmp127,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:499: 	else if (__d < __gnu_cxx::__numeric_traits<int>::__min)
	movabs	r15, -2147483649	 # tmp128,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:733:       { return static_cast<_Link_type>(this->_M_impl._M_header._M_parent); }
	mov	rbx, QWORD PTR 16[rdx]	 # __j$_M_node, MEM[(const struct _Rb_tree *)this_1(D)]._M_impl.D.166958._M_header._M_parent
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:2104:     _Rb_tree<_Key, _Val, _KeyOfValue, _Compare, _Alloc>::
	mov	QWORD PTR 136[rsp], rdx	 # this, tmp130
	mov	r14, rcx	 # .result_ptr, tmp129
	mov	r12, r8	 # ISRA.635, tmp131
	mov	rdi, r9	 # ISRA.636, tmp132
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:2111:       while (__x != 0)
	test	rbx, rbx	 # __j$_M_node
	jne	.L10	 #,
	jmp	.L34	 #
	.p2align 4,,10
	.p2align 3
.L14:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:786:       { return static_cast<_Link_type>(__x->_M_right); }
	mov	rax, QWORD PTR 24[rbx]	 # __x, MEM[(struct _Rb_tree_node_base *)__x_56]._M_right
	xor	ecx, ecx	 # __comp
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:2111:       while (__x != 0)
	test	rax, rax	 # __x
	je	.L35	 #,
.L24:
	mov	rbx, rax	 # __j$_M_node, __x
.L10:
	mov	rsi, QWORD PTR 40[rbx]	 # prephitmp_16, MEM[(long long unsigned int *)__x_56 + 40B]
	mov	rbp, QWORD PTR 32[rbx]	 # _31, MEM[(char * *)__x_56 + 32B]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:238:       if (__b < __a)
	cmp	rdi, rsi	 # ISRA.636, prephitmp_16
	mov	r8, rsi	 # _37, prephitmp_16
	cmovbe	r8, rdi	 # ISRA.636,, _37
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:368: 	if (__n == 0)
	test	r8, r8	 # _37
	je	.L12	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:381: 	return __builtin_memcmp(__s1, __s2, __n);
	mov	rdx, rbp	 #, _31
	mov	rcx, r12	 #, ISRA.635
	mov	QWORD PTR 40[rsp], r8	 # %sfp, _37
	call	memcmp	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:3235: 	if (!__r)
	mov	r8, QWORD PTR 40[rsp]	 # _37, %sfp
	test	eax, eax	 # __r
	jne	.L13	 #,
.L12:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:495: 	const difference_type __d = difference_type(__n1 - __n2);
	mov	rax, rdi	 # _41, ISRA.636
	sub	rax, rsi	 # _41, prephitmp_16
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:497: 	if (__d > __gnu_cxx::__numeric_traits<int>::__max)
	cmp	rax, r13	 # _41, tmp127
	jge	.L14	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:499: 	else if (__d < __gnu_cxx::__numeric_traits<int>::__min)
	cmp	rax, r15	 # _41, tmp128
	jle	.L15	 #,
.L13:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:2115: 	  __x = __comp ? _S_left(__x) : _S_right(__x);
	test	eax, eax	 # __r
	jns	.L14	 #,
.L15:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:778:       { return static_cast<_Link_type>(__x->_M_left); }
	mov	rax, QWORD PTR 16[rbx]	 # __x, MEM[(struct _Rb_tree_node_base *)__x_56]._M_left
	mov	ecx, 1	 # __comp,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:2111:       while (__x != 0)
	test	rax, rax	 # __x
	jne	.L24	 #,
.L35:
	mov	r13, rbx	 # __y, __j$_M_node
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:2118:       if (__comp)
	test	cl, cl	 # __comp
	jne	.L11	 #,
.L17:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:368: 	if (__n == 0)
	test	r8, r8	 # _37
	je	.L20	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:381: 	return __builtin_memcmp(__s1, __s2, __n);
	mov	rdx, r12	 #, ISRA.635
	mov	rcx, rbp	 #, _31
	call	memcmp	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:3235: 	if (!__r)
	test	eax, eax	 # __r
	jne	.L21	 #,
.L20:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:495: 	const difference_type __d = difference_type(__n1 - __n2);
	sub	rsi, rdi	 # _51, ISRA.636
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:497: 	if (__d > __gnu_cxx::__numeric_traits<int>::__max)
	cmp	rsi, 2147483647	 # _51,
	jg	.L22	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:499: 	else if (__d < __gnu_cxx::__numeric_traits<int>::__min)
	cmp	rsi, -2147483648	 # _51,
	jl	.L23	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:502: 	  return int(__d);
	mov	eax, esi	 # __r, _51
.L21:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:2125:       if (_M_impl._M_key_compare(_S_key(__j._M_node), __k))
	test	eax, eax	 # __r
	js	.L23	 #,
.L22:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_pair.h:431:       : first(__x), second(__y)
	mov	QWORD PTR [r14], rbx	 # <retval>.first, __j$_M_node
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_pair.h:431:       : first(__x), second(__y)
	mov	QWORD PTR 8[r14], 0	 # <retval>.second,
.L9:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:2128:     }
	mov	rax, r14	 #, .result_ptr
	add	rsp, 56	 #,
	pop	rbx	 #
	pop	rsi	 #
	pop	rdi	 #
	pop	rbp	 #
	pop	r12	 #
	pop	r13	 #
	pop	r14	 #
	pop	r15	 #
	ret	
	.p2align 4,,10
	.p2align 3
.L34:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:748:       { return &this->_M_impl._M_header; }
	lea	rbx, 8[rdx]	 # __j$_M_node,
.L11:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:2120: 	  if (__j == begin())
	mov	rax, QWORD PTR 136[rsp]	 # tmp141, this
	cmp	rbx, QWORD PTR 24[rax]	 # __j$_M_node, this_1(D)->_M_impl.D.166958._M_header._M_left
	je	.L36	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:298: 	_M_node = _Rb_tree_decrement(_M_node);
	mov	rcx, rbx	 #, __j$_M_node
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:299: 	return *this;
	mov	r13, rbx	 # __y, __j$_M_node
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:298: 	_M_node = _Rb_tree_decrement(_M_node);
	call	_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base	 #
	mov	rsi, QWORD PTR 40[rax]	 # prephitmp_16, MEM[(long long unsigned int *)_13 + 40B]
	mov	rbp, QWORD PTR 32[rax]	 # _31, MEM[(char * *)_13 + 32B]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:298: 	_M_node = _Rb_tree_decrement(_M_node);
	mov	rbx, rax	 # __j$_M_node, _13
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:238:       if (__b < __a)
	cmp	rdi, rsi	 # ISRA.636, prephitmp_16
	mov	r8, rsi	 # _37, prephitmp_16
	cmovbe	r8, rdi	 # ISRA.636,, _37
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:299: 	return *this;
	jmp	.L17	 #
	.p2align 4,,10
	.p2align 3
.L23:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_pair.h:444: 	: first(std::forward<_U1>(__x)), second(std::forward<_U2>(__y))
	mov	QWORD PTR [r14], 0	 # <retval>.first,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_pair.h:444: 	: first(std::forward<_U1>(__x)), second(std::forward<_U2>(__y))
	mov	QWORD PTR 8[r14], r13	 # <retval>.second, __y
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_pair.h:445: 	{ }
	jmp	.L9	 #
	.p2align 4,,10
	.p2align 3
.L36:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_pair.h:444: 	: first(std::forward<_U1>(__x)), second(std::forward<_U2>(__y))
	mov	QWORD PTR [r14], 0	 # <retval>.first,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_pair.h:444: 	: first(std::forward<_U1>(__x)), second(std::forward<_U2>(__y))
	mov	QWORD PTR 8[r14], rbx	 # <retval>.second, __j$_M_node
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_pair.h:445: 	{ }
	jmp	.L9	 #
	.seh_endproc
	.align 2
	.p2align 4
	.def	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5Lenia6AnimalEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISB_ERS7_.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5Lenia6AnimalEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISB_ERS7_.isra.0
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5Lenia6AnimalEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISB_ERS7_.isra.0:
.LFB9774:
	push	r14	 #
	.seh_pushreg	r14
	push	r13	 #
	.seh_pushreg	r13
	push	r12	 #
	.seh_pushreg	r12
	push	rbp	 #
	.seh_pushreg	rbp
	push	rdi	 #
	.seh_pushreg	rdi
	push	rsi	 #
	.seh_pushreg	rsi
	push	rbx	 #
	.seh_pushreg	rbx
	sub	rsp, 48	 #,
	.seh_stackalloc	48
	.seh_endprologue
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:2206:     _Rb_tree<_Key, _Val, _KeyOfValue, _Compare, _Alloc>::
	mov	rbp, QWORD PTR 144[rsp]	 # ISRA.646, ISRA.646
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:748:       { return &this->_M_impl._M_header; }
	lea	rax, 8[rdx]	 # _3,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:2206:     _Rb_tree<_Key, _Val, _KeyOfValue, _Compare, _Alloc>::
	mov	rsi, rcx	 # .result_ptr, tmp182
	mov	rdi, rdx	 # this, tmp183
	mov	rbx, r8	 # __position, tmp184
	mov	r12, r9	 # ISRA.645, tmp185
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:2214:       if (__pos._M_node == _M_end())
	cmp	r8, rax	 # __position, _3
	je	.L74	 #,
	mov	r13, QWORD PTR 40[r8]	 # _55, MEM[(long long unsigned int *)_1 + 40B]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:238:       if (__b < __a)
	cmp	rbp, r13	 # ISRA.646, _55
	mov	r8, r13	 # _74, _55
	cmovbe	r8, rbp	 # ISRA.646,, _74
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:368: 	if (__n == 0)
	test	r8, r8	 # _74
	je	.L44	 #,
	mov	r14, QWORD PTR 32[rbx]	 # _54, MEM[(char * *)_1 + 32B]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:381: 	return __builtin_memcmp(__s1, __s2, __n);
	mov	rcx, r9	 #, ISRA.645
	mov	QWORD PTR 40[rsp], r8	 # %sfp, _74
	mov	rdx, r14	 #, _54
	call	memcmp	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:3235: 	if (!__r)
	mov	r8, QWORD PTR 40[rsp]	 # _74, %sfp
	test	eax, eax	 # tmp187
	jne	.L72	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:495: 	const difference_type __d = difference_type(__n1 - __n2);
	mov	rax, rbp	 # _18, ISRA.646
	sub	rax, r13	 # _18, _55
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:497: 	if (__d > __gnu_cxx::__numeric_traits<int>::__max)
	cmp	rax, 2147483647	 # _18,
	jg	.L47	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:499: 	else if (__d < __gnu_cxx::__numeric_traits<int>::__min)
	cmp	rax, -2147483648	 # _18,
	jl	.L46	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:2222:       else if (_M_impl._M_key_compare(__k, _S_key(__pos._M_node)))
	test	eax, eax	 # _18
.L72:
	js	.L46	 #,
.L47:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:381: 	return __builtin_memcmp(__s1, __s2, __n);
	mov	rdx, r12	 #, ISRA.645
	mov	rcx, r14	 #, _54
	call	memcmp	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:3235: 	if (!__r)
	test	eax, eax	 # __r
	jne	.L54	 #,
.L48:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:495: 	const difference_type __d = difference_type(__n1 - __n2);
	mov	rax, r13	 # _55, _55
	sub	rax, rbp	 # _55, ISRA.646
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:497: 	if (__d > __gnu_cxx::__numeric_traits<int>::__max)
	cmp	rax, 2147483647	 # _98,
	jg	.L55	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:499: 	else if (__d < __gnu_cxx::__numeric_traits<int>::__min)
	cmp	rax, -2147483648	 # _98,
	jl	.L56	 #,
.L54:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:2238:       else if (_M_impl._M_key_compare(_S_key(__pos._M_node), __k))
	test	eax, eax	 # __r
	js	.L56	 #,
.L55:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_pair.h:431:       : first(__x), second(__y)
	mov	QWORD PTR [rsi], rbx	 # <retval>.first, __position
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_pair.h:431:       : first(__x), second(__y)
	mov	QWORD PTR 8[rsi], 0	 # <retval>.second,
.L37:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:2257:     }
	mov	rax, rsi	 #, .result_ptr
	add	rsp, 48	 #,
	pop	rbx	 #
	pop	rsi	 #
	pop	rdi	 #
	pop	rbp	 #
	pop	r12	 #
	pop	r13	 #
	pop	r14	 #
	ret	
	.p2align 4,,10
	.p2align 3
.L44:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:495: 	const difference_type __d = difference_type(__n1 - __n2);
	mov	rax, rbp	 # _114, ISRA.646
	sub	rax, r13	 # _114, _55
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:497: 	if (__d > __gnu_cxx::__numeric_traits<int>::__max)
	cmp	rax, 2147483647	 # _114,
	jg	.L48	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:499: 	else if (__d < __gnu_cxx::__numeric_traits<int>::__min)
	cmp	rax, -2147483648	 # _114,
	jl	.L46	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:2222:       else if (_M_impl._M_key_compare(__k, _S_key(__pos._M_node)))
	test	eax, eax	 # _114
	jns	.L48	 #,
.L46:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:2226: 	  if (__pos._M_node == _M_leftmost()) // begin()
	cmp	QWORD PTR 24[rdi], rbx	 # MEM[(struct _Rb_tree_node_base * &)this_2(D) + 24], __position
	je	.L75	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:298: 	_M_node = _Rb_tree_decrement(_M_node);
	mov	rcx, rbx	 #, __position
	call	_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base	 #
	mov	r13, QWORD PTR 40[rax]	 # _57, MEM[(long long unsigned int *)_11 + 40B]
	mov	r14, rax	 # _11, tmp188
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:238:       if (__b < __a)
	cmp	rbp, r13	 # ISRA.646, _57
	mov	r8, r13	 # _84, _57
	cmovbe	r8, rbp	 # ISRA.646,, _84
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:368: 	if (__n == 0)
	test	r8, r8	 # _84
	je	.L50	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:381: 	return __builtin_memcmp(__s1, __s2, __n);
	mov	rcx, QWORD PTR 32[rax]	 # MEM[(char * *)_11 + 32B], MEM[(char * *)_11 + 32B]
	mov	rdx, r12	 #, ISRA.645
	call	memcmp	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:3235: 	if (!__r)
	test	eax, eax	 # __r
	jne	.L51	 #,
.L50:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:495: 	const difference_type __d = difference_type(__n1 - __n2);
	sub	r13, rbp	 # _88, ISRA.646
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:497: 	if (__d > __gnu_cxx::__numeric_traits<int>::__max)
	cmp	r13, 2147483647	 # _88,
	jg	.L39	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:499: 	else if (__d < __gnu_cxx::__numeric_traits<int>::__min)
	cmp	r13, -2147483648	 # _88,
	jl	.L52	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:502: 	  return int(__d);
	mov	eax, r13d	 # __r, _88
.L51:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:2228: 	  else if (_M_impl._M_key_compare(_S_key((--__before)._M_node), __k))
	test	eax, eax	 # __r
	jns	.L39	 #,
.L52:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:2230: 	      if (_S_right(__before._M_node) == 0)
	cmp	QWORD PTR 24[r14], 0	 # _11->_M_right,
	je	.L76	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_pair.h:444: 	: first(std::forward<_U1>(__x)), second(std::forward<_U2>(__y))
	vmovq	xmm2, rbx	 # __position, __position
	vpunpcklqdq	xmm0, xmm2, xmm2	 # _38, __position
	vmovdqu	XMMWORD PTR [rsi], xmm0	 #* .result_ptr, _38
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_pair.h:445: 	{ }
	jmp	.L37	 #
	.p2align 4,,10
	.p2align 3
.L74:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:2217: 	      && _M_impl._M_key_compare(_S_key(_M_rightmost()), __k))
	cmp	QWORD PTR 40[rdx], 0	 # MEM[(const struct _Rb_tree *)this_2(D)]._M_impl.D.166958._M_node_count,
	je	.L39	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:2217: 	      && _M_impl._M_key_compare(_S_key(_M_rightmost()), __k))
	mov	r13, QWORD PTR 32[rdx]	 # _5, MEM[(struct _Rb_tree_node_base * &)this_2(D) + 32]
	mov	rbx, QWORD PTR 40[r13]	 # _53, MEM[(long long unsigned int *)_5 + 40B]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:238:       if (__b < __a)
	cmp	rbp, rbx	 # ISRA.646, _53
	mov	r8, rbx	 # _64, _53
	cmovbe	r8, rbp	 # ISRA.646,, _64
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:368: 	if (__n == 0)
	test	r8, r8	 # _64
	je	.L40	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:381: 	return __builtin_memcmp(__s1, __s2, __n);
	mov	rcx, QWORD PTR 32[r13]	 # MEM[(char * *)_5 + 32B], MEM[(char * *)_5 + 32B]
	mov	rdx, r9	 #, ISRA.645
	call	memcmp	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:3235: 	if (!__r)
	test	eax, eax	 # __r
	jne	.L41	 #,
.L40:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:495: 	const difference_type __d = difference_type(__n1 - __n2);
	sub	rbx, rbp	 # _68, ISRA.646
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:497: 	if (__d > __gnu_cxx::__numeric_traits<int>::__max)
	cmp	rbx, 2147483647	 # _68,
	jg	.L39	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:499: 	else if (__d < __gnu_cxx::__numeric_traits<int>::__min)
	cmp	rbx, -2147483648	 # _68,
	jl	.L42	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:502: 	  return int(__d);
	mov	eax, ebx	 # __r, _68
.L41:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:2217: 	      && _M_impl._M_key_compare(_S_key(_M_rightmost()), __k))
	test	eax, eax	 # __r
	jns	.L39	 #,
.L42:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_pair.h:431:       : first(__x), second(__y)
	mov	QWORD PTR [rsi], 0	 # <retval>.first,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_pair.h:431:       : first(__x), second(__y)
	mov	QWORD PTR 8[rsi], r13	 # <retval>.second, _5
	jmp	.L37	 #
	.p2align 4,,10
	.p2align 3
.L56:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:2242: 	  if (__pos._M_node == _M_rightmost())
	cmp	QWORD PTR 32[rdi], rbx	 # MEM[(struct _Rb_tree_node_base * &)this_2(D) + 32], __position
	je	.L73	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:283: 	_M_node = _Rb_tree_increment(_M_node);
	mov	rcx, rbx	 #, __position
	call	_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base	 #
	mov	r14, QWORD PTR 40[rax]	 # _61, MEM[(long long unsigned int *)_17 + 40B]
	mov	r13, rax	 # _17, tmp191
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:238:       if (__b < __a)
	cmp	rbp, r14	 # ISRA.646, _61
	mov	r8, r14	 # _104, _61
	cmovbe	r8, rbp	 # ISRA.646,, _104
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:368: 	if (__n == 0)
	test	r8, r8	 # _104
	je	.L58	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:381: 	return __builtin_memcmp(__s1, __s2, __n);
	mov	rdx, QWORD PTR 32[rax]	 # MEM[(char * *)_17 + 32B], MEM[(char * *)_17 + 32B]
	mov	rcx, r12	 #, ISRA.645
	call	memcmp	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:3235: 	if (!__r)
	test	eax, eax	 # __r
	jne	.L59	 #,
.L58:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:495: 	const difference_type __d = difference_type(__n1 - __n2);
	mov	rax, rbp	 # _108, ISRA.646
	sub	rax, r14	 # _108, _61
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:497: 	if (__d > __gnu_cxx::__numeric_traits<int>::__max)
	cmp	rax, 2147483647	 # _108,
	jg	.L39	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:499: 	else if (__d < __gnu_cxx::__numeric_traits<int>::__min)
	cmp	rax, -2147483648	 # _108,
	jl	.L60	 #,
.L59:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:2244: 	  else if (_M_impl._M_key_compare(__k, _S_key((++__after)._M_node)))
	test	eax, eax	 # __r
	js	.L60	 #,
	.p2align 4
	.p2align 3
.L39:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:2220: 	    return _M_get_insert_unique_pos(__k);
	mov	r9, rbp	 #, ISRA.646
	mov	r8, r12	 #, ISRA.645
	mov	rdx, rdi	 #, this
	mov	rcx, rsi	 #, .result_ptr
	call	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5Lenia6AnimalEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE24_M_get_insert_unique_posERS7_.isra.0	 #
	jmp	.L37	 #
	.p2align 4,,10
	.p2align 3
.L75:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_pair.h:444: 	: first(std::forward<_U1>(__x)), second(std::forward<_U2>(__y))
	vmovq	xmm1, rbx	 # __position, __position
	vpunpcklqdq	xmm0, xmm1, xmm1	 # _103, __position
	vmovdqu	XMMWORD PTR [rsi], xmm0	 #* .result_ptr, _103
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_pair.h:445: 	{ }
	jmp	.L37	 #
	.p2align 4,,10
	.p2align 3
.L73:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_pair.h:431:       : first(__x), second(__y)
	mov	QWORD PTR [rsi], 0	 #* .result_ptr,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_pair.h:431:       : first(__x), second(__y)
	mov	QWORD PTR 8[rsi], rbx	 #, __position
	jmp	.L37	 #
	.p2align 4,,10
	.p2align 3
.L60:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:2246: 	      if (_S_right(__pos._M_node) == 0)
	cmp	QWORD PTR 24[rbx], 0	 # MEM[(struct _Rb_tree_node_base *)_1]._M_right,
	je	.L73	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_pair.h:444: 	: first(std::forward<_U1>(__x)), second(std::forward<_U2>(__y))
	vmovq	xmm3, r13	 # _17, _17
	vpunpcklqdq	xmm0, xmm3, xmm3	 # _94, _17
	vmovdqu	XMMWORD PTR [rsi], xmm0	 #* .result_ptr, _94
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_pair.h:445: 	{ }
	jmp	.L37	 #
	.p2align 4,,10
	.p2align 3
.L76:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_pair.h:431:       : first(__x), second(__y)
	mov	QWORD PTR [rsi], 0	 # <retval>.first,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_pair.h:431:       : first(__x), second(__y)
	mov	QWORD PTR 8[rsi], r14	 # <retval>.second, _11
	jmp	.L37	 #
	.seh_endproc
	.align 2
	.p2align 4
	.def	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5Lenia6AnimalEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5Lenia6AnimalEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E.isra.0
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5Lenia6AnimalEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E.isra.0:
.LFB9775:
	push	r15	 #
	.seh_pushreg	r15
	push	r14	 #
	.seh_pushreg	r14
	push	r13	 #
	.seh_pushreg	r13
	push	r12	 #
	.seh_pushreg	r12
	push	rbp	 #
	.seh_pushreg	rbp
	push	rdi	 #
	.seh_pushreg	rdi
	push	rsi	 #
	.seh_pushreg	rsi
	push	rbx	 #
	.seh_pushreg	rbx
	sub	rsp, 72	 #,
	.seh_stackalloc	72
	vmovups	XMMWORD PTR 48[rsp], xmm6	 #,
	.seh_savexmm	xmm6, 48
	.seh_endprologue
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:1926:     _Rb_tree<_Key, _Val, _KeyOfValue, _Compare, _Alloc>::
	mov	r13, rcx	 # __x, tmp190
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:1930:       while (__x != 0)
	test	rcx, rcx	 # __x
	je	.L141	 #,
.L104:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:786:       { return static_cast<_Link_type>(__x->_M_right); }
	mov	r14, QWORD PTR 24[r13]	 # __x, MEM[(struct _Rb_tree_node_base *)__x_139]._M_right
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:1930:       while (__x != 0)
	test	r14, r14	 # __x
	je	.L79	 #,
.L102:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:786:       { return static_cast<_Link_type>(__x->_M_right); }
	mov	r15, QWORD PTR 24[r14]	 # __x, MEM[(struct _Rb_tree_node_base *)__x_142]._M_right
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:1930:       while (__x != 0)
	test	r15, r15	 # __x
	je	.L80	 #,
.L100:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:786:       { return static_cast<_Link_type>(__x->_M_right); }
	mov	rax, QWORD PTR 24[r15]	 # __x, MEM[(struct _Rb_tree_node_base *)__x_143]._M_right
	vmovq	xmm6, rax	 # __x, __x
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:1930:       while (__x != 0)
	test	rax, rax	 # __x
	je	.L81	 #,
.L98:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:786:       { return static_cast<_Link_type>(__x->_M_right); }
	vmovq	rax, xmm6	 # __x, __x
	mov	rbx, QWORD PTR 24[rax]	 # __x, MEM[(struct _Rb_tree_node_base *)__x_144]._M_right
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:1930:       while (__x != 0)
	test	rbx, rbx	 # __x
	je	.L82	 #,
.L96:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:786:       { return static_cast<_Link_type>(__x->_M_right); }
	mov	rdi, QWORD PTR 24[rbx]	 # __x, MEM[(struct _Rb_tree_node_base *)__x_145]._M_right
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:1930:       while (__x != 0)
	test	rdi, rdi	 # __x
	je	.L83	 #,
.L94:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:786:       { return static_cast<_Link_type>(__x->_M_right); }
	mov	rbp, QWORD PTR 24[rdi]	 # __x, MEM[(struct _Rb_tree_node_base *)__x_146]._M_right
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:1930:       while (__x != 0)
	test	rbp, rbp	 # __x
	je	.L84	 #,
.L92:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:786:       { return static_cast<_Link_type>(__x->_M_right); }
	mov	rsi, QWORD PTR 24[rbp]	 # __x, MEM[(struct _Rb_tree_node_base *)__x_147]._M_right
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:1930:       while (__x != 0)
	test	rsi, rsi	 # __x
	je	.L85	 #,
.L90:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:786:       { return static_cast<_Link_type>(__x->_M_right); }
	mov	r12, QWORD PTR 24[rsi]	 # _82, MEM[(struct _Rb_tree_node_base *)__x_148]._M_right
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:1930:       while (__x != 0)
	test	r12, r12	 # _82
	je	.L86	 #,
.L88:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:1932: 	  _M_erase(_S_right(__x));
	mov	rcx, QWORD PTR 24[r12]	 # MEM[(struct _Rb_tree_node_base *)__x_149]._M_right, MEM[(struct _Rb_tree_node_base *)__x_149]._M_right
	call	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5Lenia6AnimalEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E.isra.0	 #
	mov	rax, r12	 # __x, _82
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:778:       { return static_cast<_Link_type>(__x->_M_left); }
	mov	r12, QWORD PTR 16[r12]	 # _82, MEM[(struct _Rb_tree_node_base *)__x_149]._M_left
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rcx, QWORD PTR 32[rax]	 # _84, MEM[(const struct basic_string *)__x_86 + 32B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:246: 	return std::pointer_traits<const_pointer>::pointer_to(*_M_local_buf);
	lea	rdx, 48[rax]	 # _85,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:269: 	if (_M_data() == _M_local_data())
	cmp	rcx, rdx	 # _84, _85
	je	.L87	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	mov	rdx, QWORD PTR 48[rax]	 # tmp195, MEM[(struct basic_string *)__x_86 + 32B].D.45451._M_allocated_capacity
	mov	QWORD PTR 40[rsp], rax	 # %sfp, __x
	add	rdx, 1	 # _88,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
	mov	rax, QWORD PTR 40[rsp]	 # __x, %sfp
.L87:
	mov	edx, 72	 #,
	mov	rcx, rax	 #, __x
	call	_ZdlPvy	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:1930:       while (__x != 0)
	test	r12, r12	 # _82
	jne	.L88	 #,
.L86:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rcx, QWORD PTR 32[rsi]	 # _75, MEM[(const struct basic_string *)__x_148 + 32B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:246: 	return std::pointer_traits<const_pointer>::pointer_to(*_M_local_buf);
	lea	rax, 48[rsi]	 # _76,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:778:       { return static_cast<_Link_type>(__x->_M_left); }
	mov	r12, QWORD PTR 16[rsi]	 # _73, MEM[(struct _Rb_tree_node_base *)__x_148]._M_left
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:269: 	if (_M_data() == _M_local_data())
	cmp	rcx, rax	 # _75, _76
	je	.L89	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	mov	rax, QWORD PTR 48[rsi]	 # tmp196, MEM[(struct basic_string *)__x_148 + 32B].D.45451._M_allocated_capacity
	lea	rdx, 1[rax]	 # _79,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L89:
	mov	edx, 72	 #,
	mov	rcx, rsi	 #, __x
	call	_ZdlPvy	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:1930:       while (__x != 0)
	test	r12, r12	 # _73
	je	.L85	 #,
	mov	rsi, r12	 # __x, _73
	jmp	.L90	 #
.L83:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rcx, QWORD PTR 32[rbx]	 # _48, MEM[(const struct basic_string *)__x_145 + 32B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:246: 	return std::pointer_traits<const_pointer>::pointer_to(*_M_local_buf);
	lea	rax, 48[rbx]	 # _49,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:778:       { return static_cast<_Link_type>(__x->_M_left); }
	mov	rsi, QWORD PTR 16[rbx]	 # _46, MEM[(struct _Rb_tree_node_base *)__x_145]._M_left
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:269: 	if (_M_data() == _M_local_data())
	cmp	rcx, rax	 # _48, _49
	je	.L95	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	mov	rax, QWORD PTR 48[rbx]	 # tmp199, MEM[(struct basic_string *)__x_145 + 32B].D.45451._M_allocated_capacity
	lea	rdx, 1[rax]	 # _52,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L95:
	mov	edx, 72	 #,
	mov	rcx, rbx	 #, __x
	call	_ZdlPvy	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:1930:       while (__x != 0)
	test	rsi, rsi	 # _46
	je	.L82	 #,
	mov	rbx, rsi	 # __x, _46
	jmp	.L96	 #
	.p2align 4,,10
	.p2align 3
.L84:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rcx, QWORD PTR 32[rdi]	 # _57, MEM[(const struct basic_string *)__x_146 + 32B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:246: 	return std::pointer_traits<const_pointer>::pointer_to(*_M_local_buf);
	lea	rax, 48[rdi]	 # _58,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:778:       { return static_cast<_Link_type>(__x->_M_left); }
	mov	rsi, QWORD PTR 16[rdi]	 # _55, MEM[(struct _Rb_tree_node_base *)__x_146]._M_left
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:269: 	if (_M_data() == _M_local_data())
	cmp	rcx, rax	 # _57, _58
	je	.L93	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	mov	rax, QWORD PTR 48[rdi]	 # tmp198, MEM[(struct basic_string *)__x_146 + 32B].D.45451._M_allocated_capacity
	lea	rdx, 1[rax]	 # _61,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L93:
	mov	edx, 72	 #,
	mov	rcx, rdi	 #, __x
	call	_ZdlPvy	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:1930:       while (__x != 0)
	test	rsi, rsi	 # _55
	je	.L83	 #,
	mov	rdi, rsi	 # __x, _55
	jmp	.L94	 #
.L82:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:778:       { return static_cast<_Link_type>(__x->_M_left); }
	vmovq	rdi, xmm6	 # __x, __x
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rcx, QWORD PTR 32[rdi]	 # _39, MEM[(const struct basic_string *)__x_144 + 32B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:246: 	return std::pointer_traits<const_pointer>::pointer_to(*_M_local_buf);
	lea	rax, 48[rdi]	 # _40,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:778:       { return static_cast<_Link_type>(__x->_M_left); }
	mov	rbx, QWORD PTR 16[rdi]	 # _37, MEM[(struct _Rb_tree_node_base *)__x_144]._M_left
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:269: 	if (_M_data() == _M_local_data())
	cmp	rcx, rax	 # _39, _40
	je	.L97	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	mov	rax, QWORD PTR 48[rdi]	 # MEM[(struct basic_string *)__x_144 + 32B].D.45451._M_allocated_capacity, MEM[(struct basic_string *)__x_144 + 32B].D.45451._M_allocated_capacity
	lea	rdx, 1[rax]	 # _43,
	mov	QWORD PTR 40[rsp], rax	 # %sfp, MEM[(struct basic_string *)__x_144 + 32B].D.45451._M_allocated_capacity
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L97:
	mov	edx, 72	 #,
	vmovq	rcx, xmm6	 #, __x
	call	_ZdlPvy	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:1930:       while (__x != 0)
	test	rbx, rbx	 # _37
	je	.L81	 #,
	vmovq	xmm6, rbx	 # __x, _37
	jmp	.L98	 #
	.p2align 4,,10
	.p2align 3
.L85:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rcx, QWORD PTR 32[rbp]	 # _66, MEM[(const struct basic_string *)__x_147 + 32B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:246: 	return std::pointer_traits<const_pointer>::pointer_to(*_M_local_buf);
	lea	rax, 48[rbp]	 # _67,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:778:       { return static_cast<_Link_type>(__x->_M_left); }
	mov	rsi, QWORD PTR 16[rbp]	 # _64, MEM[(struct _Rb_tree_node_base *)__x_147]._M_left
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:269: 	if (_M_data() == _M_local_data())
	cmp	rcx, rax	 # _66, _67
	je	.L91	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	mov	rax, QWORD PTR 48[rbp]	 # tmp197, MEM[(struct basic_string *)__x_147 + 32B].D.45451._M_allocated_capacity
	lea	rdx, 1[rax]	 # _70,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L91:
	mov	edx, 72	 #,
	mov	rcx, rbp	 #, __x
	call	_ZdlPvy	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:1930:       while (__x != 0)
	test	rsi, rsi	 # _64
	je	.L84	 #,
	mov	rbp, rsi	 # __x, _64
	jmp	.L92	 #
.L81:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rcx, QWORD PTR 32[r15]	 # _30, MEM[(const struct basic_string *)__x_143 + 32B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:246: 	return std::pointer_traits<const_pointer>::pointer_to(*_M_local_buf);
	lea	rax, 48[r15]	 # _31,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:778:       { return static_cast<_Link_type>(__x->_M_left); }
	mov	rbx, QWORD PTR 16[r15]	 # _28, MEM[(struct _Rb_tree_node_base *)__x_143]._M_left
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:269: 	if (_M_data() == _M_local_data())
	cmp	rcx, rax	 # _30, _31
	je	.L99	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	mov	rax, QWORD PTR 48[r15]	 # tmp206, MEM[(struct basic_string *)__x_143 + 32B].D.45451._M_allocated_capacity
	lea	rdx, 1[rax]	 # _34,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L99:
	mov	edx, 72	 #,
	mov	rcx, r15	 #, __x
	call	_ZdlPvy	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:1930:       while (__x != 0)
	test	rbx, rbx	 # _28
	je	.L80	 #,
	mov	r15, rbx	 # __x, _28
	jmp	.L100	 #
.L80:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rcx, QWORD PTR 32[r14]	 # _21, MEM[(const struct basic_string *)__x_142 + 32B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:246: 	return std::pointer_traits<const_pointer>::pointer_to(*_M_local_buf);
	lea	rax, 48[r14]	 # _22,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:778:       { return static_cast<_Link_type>(__x->_M_left); }
	mov	rbx, QWORD PTR 16[r14]	 # _19, MEM[(struct _Rb_tree_node_base *)__x_142]._M_left
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:269: 	if (_M_data() == _M_local_data())
	cmp	rcx, rax	 # _21, _22
	je	.L101	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	mov	rax, QWORD PTR 48[r14]	 # tmp207, MEM[(struct basic_string *)__x_142 + 32B].D.45451._M_allocated_capacity
	lea	rdx, 1[rax]	 # _25,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L101:
	mov	edx, 72	 #,
	mov	rcx, r14	 #, __x
	call	_ZdlPvy	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:1930:       while (__x != 0)
	test	rbx, rbx	 # _19
	je	.L79	 #,
	mov	r14, rbx	 # __x, _19
	jmp	.L102	 #
.L79:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rcx, QWORD PTR 32[r13]	 # _12, MEM[(const struct basic_string *)__x_139 + 32B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:246: 	return std::pointer_traits<const_pointer>::pointer_to(*_M_local_buf);
	lea	rax, 48[r13]	 # _13,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:778:       { return static_cast<_Link_type>(__x->_M_left); }
	mov	rbx, QWORD PTR 16[r13]	 # _3, MEM[(struct _Rb_tree_node_base *)__x_139]._M_left
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:269: 	if (_M_data() == _M_local_data())
	cmp	rcx, rax	 # _12, _13
	je	.L103	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	mov	rax, QWORD PTR 48[r13]	 # tmp208, MEM[(struct basic_string *)__x_139 + 32B].D.45451._M_allocated_capacity
	lea	rdx, 1[rax]	 # _16,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L103:
	mov	edx, 72	 #,
	mov	rcx, r13	 #, __x
	call	_ZdlPvy	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:1930:       while (__x != 0)
	test	rbx, rbx	 # _3
	je	.L141	 #,
	mov	r13, rbx	 # __x, _3
	jmp	.L104	 #
.L141:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:1937:     }
	vmovups	xmm6, XMMWORD PTR 48[rsp]	 #,
	add	rsp, 72	 #,
	pop	rbx	 #
	pop	rsi	 #
	pop	rdi	 #
	pop	rbp	 #
	pop	r12	 #
	pop	r13	 #
	pop	r14	 #
	pop	r15	 #
	ret	
	.seh_endproc
	.p2align 4
	.def	__tcf_1;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_1
__tcf_1:
.LFB8960:
	push	rsi	 #
	.seh_pushreg	rsi
	push	rbx	 #
	.seh_pushreg	rbx
	sub	rsp, 40	 #,
	.seh_stackalloc	40
	.seh_endprologue
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:733:       { return static_cast<_Link_type>(this->_M_impl._M_header._M_parent); }
	mov	rbx, QWORD PTR _ZN5LeniaL7AnimalsE[rip+16]	 # _7, MEM[(const struct _Rb_tree *)&Animals]._M_impl.D.166958._M_header._M_parent
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:1930:       while (__x != 0)
	test	rbx, rbx	 # _7
	je	.L150	 #,
.L145:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:1932: 	  _M_erase(_S_right(__x));
	mov	rcx, QWORD PTR 24[rbx]	 # MEM[(struct _Rb_tree_node_base *)__x_20]._M_right, MEM[(struct _Rb_tree_node_base *)__x_20]._M_right
	mov	rsi, rbx	 # __x, _7
	call	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5Lenia6AnimalEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E.isra.0	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rcx, QWORD PTR 32[rsi]	 # _9, MEM[(const struct basic_string *)__x_11 + 32B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:246: 	return std::pointer_traits<const_pointer>::pointer_to(*_M_local_buf);
	lea	rax, 48[rsi]	 # _10,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:778:       { return static_cast<_Link_type>(__x->_M_left); }
	mov	rbx, QWORD PTR 16[rbx]	 # _7, MEM[(struct _Rb_tree_node_base *)__x_20]._M_left
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:269: 	if (_M_data() == _M_local_data())
	cmp	rcx, rax	 # _9, _10
	je	.L144	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	mov	rax, QWORD PTR 48[rsi]	 # tmp112, MEM[(struct basic_string *)__x_11 + 32B].D.45451._M_allocated_capacity
	lea	rdx, 1[rax]	 # _13,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L144:
	mov	edx, 72	 #,
	mov	rcx, rsi	 #, __x
	call	_ZdlPvy	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:1930:       while (__x != 0)
	test	rbx, rbx	 # _7
	jne	.L145	 #,
.L150:
 # source/main.cpp:13:     static std::map<std::string, Lenia::Animal*> Animals;
	add	rsp, 40	 #,
	pop	rbx	 #
	pop	rsi	 #
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
.LFB7262:
	push	rbx	 #
	.seh_pushreg	rbx
	sub	rsp, 32	 #,
	.seh_stackalloc	32
	.seh_endprologue
 # include/animal.hpp:20: 	struct Taxonomy {
	mov	rbx, rcx	 # this, tmp138
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rcx, QWORD PTR 128[rcx]	 # _38, MEM[(const struct basic_string *)this_6(D) + 128B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:246: 	return std::pointer_traits<const_pointer>::pointer_to(*_M_local_buf);
	lea	rax, 144[rbx]	 # _39,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:269: 	if (_M_data() == _M_local_data())
	cmp	rcx, rax	 # _38, _39
	je	.L152	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	mov	rax, QWORD PTR 144[rbx]	 # tmp140, MEM[(struct basic_string *)this_6(D) + 128B].D.45451._M_allocated_capacity
	lea	rdx, 1[rax]	 # _42,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L152:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rcx, QWORD PTR 96[rbx]	 # _33, MEM[(const struct basic_string *)this_6(D) + 96B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:246: 	return std::pointer_traits<const_pointer>::pointer_to(*_M_local_buf);
	lea	rax, 112[rbx]	 # _34,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:269: 	if (_M_data() == _M_local_data())
	cmp	rcx, rax	 # _33, _34
	je	.L153	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	mov	rax, QWORD PTR 112[rbx]	 # tmp141, MEM[(struct basic_string *)this_6(D) + 96B].D.45451._M_allocated_capacity
	lea	rdx, 1[rax]	 # _37,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L153:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rcx, QWORD PTR 64[rbx]	 # _28, MEM[(const struct basic_string *)this_6(D) + 64B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:246: 	return std::pointer_traits<const_pointer>::pointer_to(*_M_local_buf);
	lea	rax, 80[rbx]	 # _29,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:269: 	if (_M_data() == _M_local_data())
	cmp	rcx, rax	 # _28, _29
	je	.L154	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	mov	rax, QWORD PTR 80[rbx]	 # tmp142, MEM[(struct basic_string *)this_6(D) + 64B].D.45451._M_allocated_capacity
	lea	rdx, 1[rax]	 # _32,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L154:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rcx, QWORD PTR 32[rbx]	 # _23, MEM[(const struct basic_string *)this_6(D) + 32B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:246: 	return std::pointer_traits<const_pointer>::pointer_to(*_M_local_buf);
	lea	rax, 48[rbx]	 # _24,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:269: 	if (_M_data() == _M_local_data())
	cmp	rcx, rax	 # _23, _24
	je	.L155	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	mov	rax, QWORD PTR 48[rbx]	 # tmp143, MEM[(struct basic_string *)this_6(D) + 32B].D.45451._M_allocated_capacity
	lea	rdx, 1[rax]	 # _27,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L155:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rcx, QWORD PTR [rbx]	 # _18, MEM[(const struct basic_string *)this_6(D)]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:246: 	return std::pointer_traits<const_pointer>::pointer_to(*_M_local_buf);
	lea	rax, 16[rbx]	 # _19,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:269: 	if (_M_data() == _M_local_data())
	cmp	rcx, rax	 # _18, _19
	je	.L157	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	mov	rdx, QWORD PTR 16[rbx]	 # MEM[(struct basic_string *)this_6(D)].D.45451._M_allocated_capacity, MEM[(struct basic_string *)this_6(D)].D.45451._M_allocated_capacity
	add	rdx, 1	 # _22,
 # include/animal.hpp:20: 	struct Taxonomy {
	add	rsp, 32	 #,
	pop	rbx	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	jmp	_ZdlPvy	 #
	.p2align 4,,10
	.p2align 3
.L157:
 # include/animal.hpp:20: 	struct Taxonomy {
	add	rsp, 32	 #,
	pop	rbx	 #
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
.LFB7394:
	push	rsi	 #
	.seh_pushreg	rsi
	push	rbx	 #
	.seh_pushreg	rbx
	sub	rsp, 40	 #,
	.seh_stackalloc	40
	.seh_endprologue
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	mov	rsi, QWORD PTR __imp__errno[rip]	 # tmp103,
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	mov	rbx, rcx	 # this, tmp105
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	call	rsi	 # tmp103
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	mov	eax, DWORD PTR [rax]	 #, *_6
	test	eax, eax	 #
	je	.L161	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	add	rsp, 40	 #,
	pop	rbx	 #
	pop	rsi	 #
	ret	
	.p2align 4,,10
	.p2align 3
.L161:
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	mov	ebx, DWORD PTR [rbx]	 # _2, this_7(D)->_M_errno
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	call	rsi	 # tmp103
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	mov	DWORD PTR [rax], ebx	 # *_9, _2
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	add	rsp, 40	 #,
	pop	rbx	 #
	pop	rsi	 #
	ret	
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA7394:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7394-.LLSDACSB7394
.LLSDACSB7394:
.LLSDACSE7394:
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
.LFB7448:
	push	rsi	 #
	.seh_pushreg	rsi
	push	rbx	 #
	.seh_pushreg	rbx
	sub	rsp, 40	 #,
	.seh_stackalloc	40
	.seh_endprologue
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	mov	rsi, QWORD PTR __imp__errno[rip]	 # tmp103,
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	mov	rbx, rcx	 # this, tmp105
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	call	rsi	 # tmp103
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	mov	eax, DWORD PTR [rax]	 #, *_6
	test	eax, eax	 #
	je	.L165	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	add	rsp, 40	 #,
	pop	rbx	 #
	pop	rsi	 #
	ret	
	.p2align 4,,10
	.p2align 3
.L165:
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	mov	ebx, DWORD PTR [rbx]	 # _2, this_7(D)->_M_errno
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	call	rsi	 # tmp103
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	mov	DWORD PTR [rax], ebx	 # *_9, _2
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	add	rsp, 40	 #,
	pop	rbx	 #
	pop	rsi	 #
	ret	
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA7448:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7448-.LLSDACSB7448
.LLSDACSB7448:
.LLSDACSE7448:
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
.LFB8033:
	.seh_endprologue
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rax, QWORD PTR [rcx]	 # _5, MEM[(const struct basic_string *)this_4(D)]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:246: 	return std::pointer_traits<const_pointer>::pointer_to(*_M_local_buf);
	lea	rdx, 16[rcx]	 # _6,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:269: 	if (_M_data() == _M_local_data())
	cmp	rax, rdx	 # _5, _6
	je	.L168	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	mov	rdx, QWORD PTR 16[rcx]	 # this_4(D)->D.45451._M_allocated_capacity, this_4(D)->D.45451._M_allocated_capacity
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	rcx, rax	 #, _5
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	add	rdx, 1	 # _8,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:289:       }
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	jmp	_ZdlPvy	 #
	.p2align 4,,10
	.p2align 3
.L168:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:289:       }
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
.LFB6241:
	push	r15	 #
	.seh_pushreg	r15
	push	r14	 #
	.seh_pushreg	r14
	push	r13	 #
	.seh_pushreg	r13
	push	r12	 #
	.seh_pushreg	r12
	push	rbp	 #
	.seh_pushreg	rbp
	push	rdi	 #
	.seh_pushreg	rdi
	push	rsi	 #
	.seh_pushreg	rsi
	push	rbx	 #
	.seh_pushreg	rbx
	sub	rsp, 696	 #,
	.seh_stackalloc	696
	vmovups	XMMWORD PTR 656[rsp], xmm6	 #,
	.seh_savexmm	xmm6, 656
	vmovups	XMMWORD PTR 672[rsp], xmm7	 #,
	.seh_savexmm	xmm7, 672
	.seh_endprologue
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:466: 	_M_streambuf(0), _M_ctype(0), _M_num_put(0), _M_num_get(0)
	lea	rax, 384[rsp]	 # tmp437,
	lea	rdi, 176[rsp]	 # tmp442,
 # include/gl_setup.hpp:180:     inline std::string LoadShaderFile(const std::string& name) {
	mov	rsi, rcx	 # <retval>, tmp449
	mov	rbx, rdx	 # name, tmp450
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:466: 	_M_streambuf(0), _M_ctype(0), _M_num_put(0), _M_num_get(0)
	mov	rcx, rax	 #, tmp437
	mov	QWORD PTR 88[rsp], rax	 # %sfp, tmp437
	mov	rbp, rax	 # tmp437, tmp437
	mov	QWORD PTR 40[rsp], rdi	 # %sfp, tmp442
	call	_ZNSt8ios_baseC2Ev	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:466: 	_M_streambuf(0), _M_ctype(0), _M_num_put(0), _M_num_get(0)
	mov	rax, QWORD PTR .refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE[rip]	 # tmp473,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:465:       : ios_base(), _M_tie(0), _M_fill(char_type()), _M_fill_init(false), 
	xor	ecx, ecx	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:466: 	_M_streambuf(0), _M_ctype(0), _M_num_put(0), _M_num_get(0)
	vpxor	xmm0, xmm0, xmm0	 # tmp245
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:465:       : ios_base(), _M_tie(0), _M_fill(char_type()), _M_fill_init(false), 
	mov	WORD PTR 608[rsp], cx	 # MEM <unsigned short> [(void *)&file + 432B],
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:466: 	_M_streambuf(0), _M_ctype(0), _M_num_put(0), _M_num_get(0)
	vmovdqu	YMMWORD PTR 616[rsp], ymm0	 # MEM <vector(4) long long unsigned int> [(void *)&file + 440B], tmp245
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:466: 	_M_streambuf(0), _M_ctype(0), _M_num_put(0), _M_num_get(0)
	add	rax, 16	 # tmp244,
	mov	QWORD PTR 384[rsp], rax	 # MEM[(struct basic_ios *)&file + 208B].D.69971._vptr.ios_base, tmp244
 # C:/msys64/mingw64/include/c++/14.2.0/istream:697:       : _M_gcount(streamsize(0))
	mov	rax, QWORD PTR .refptr._ZTTSt14basic_ifstreamIcSt11char_traitsIcEE[rip]	 # tmp246,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:465:       : ios_base(), _M_tie(0), _M_fill(char_type()), _M_fill_init(false), 
	mov	QWORD PTR 600[rsp], 0	 # MEM[(struct basic_ios *)&file + 208B]._M_tie,
 # C:/msys64/mingw64/include/c++/14.2.0/istream:697:       : _M_gcount(streamsize(0))
	mov	r15, QWORD PTR 8[rax]	 # _59, MEM[(const void * *)&_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE + 8B]
	mov	rdx, QWORD PTR 16[rax]	 # _63, MEM[(const void * *)&_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE + 16B]
	mov	rax, QWORD PTR -24[r15]	 # MEM[(long long int *)_59 + -24B], MEM[(long long int *)_59 + -24B]
	mov	QWORD PTR 176[rsp], r15	 # MEM[(struct basic_istream *)&file]._vptr.basic_istream, _59
	mov	QWORD PTR 80[rsp], rdx	 # %sfp, _63
	mov	QWORD PTR 176[rsp+rax], rdx	 # MEM[(struct basic_ios *)_62].D.69971._vptr.ios_base, _63
 # C:/msys64/mingw64/include/c++/14.2.0/istream:698:       { this->init(0); }
	xor	edx, edx	 #
 # C:/msys64/mingw64/include/c++/14.2.0/istream:697:       : _M_gcount(streamsize(0))
	mov	QWORD PTR 184[rsp], 0	 # MEM[(struct basic_istream *)&file]._M_gcount,
 # C:/msys64/mingw64/include/c++/14.2.0/istream:698:       { this->init(0); }
	mov	rcx, QWORD PTR -24[r15]	 # _66, MEM[(long long int *)_59 + -24B]
	add	rcx, rdi	 # _66, tmp442
	vzeroupper
.LEHB0:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E	 #
.LEHE0:
 # C:/msys64/mingw64/include/c++/14.2.0/fstream:604:       : __istream_type(), _M_filebuf()
	mov	rax, QWORD PTR .refptr._ZTVSt14basic_ifstreamIcSt11char_traitsIcEE[rip]	 # tmp477,
	add	rax, 24	 # tmp253,
	mov	QWORD PTR 176[rsp], rax	 # MEM[(struct basic_ifstream *)&file].D.106189._vptr.basic_istream, tmp253
	mov	rax, QWORD PTR .refptr._ZTVSt14basic_ifstreamIcSt11char_traitsIcEE[rip]	 # tmp478,
	add	rax, 64	 # tmp255,
	mov	QWORD PTR 384[rsp], rax	 # MEM[(struct basic_ios *)&file + 208B].D.69971._vptr.ios_base, tmp255
 # C:/msys64/mingw64/include/c++/14.2.0/fstream:604:       : __istream_type(), _M_filebuf()
	lea	rax, 192[rsp]	 # tmp443,
	mov	rcx, rax	 #, tmp443
	mov	QWORD PTR 56[rsp], rax	 # %sfp, tmp443
	mov	r14, rax	 # tmp443, tmp443
.LEHB1:
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev	 #
.LEHE1:
 # C:/msys64/mingw64/include/c++/14.2.0/fstream:606: 	this->init(&_M_filebuf);
	mov	rdx, r14	 #, tmp443
	mov	rcx, rbp	 #, tmp437
.LEHB2:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E	 #
 # C:/msys64/mingw64/include/c++/14.2.0/fstream:342:       { return open(__s.c_str(), __mode); }
	mov	rdx, QWORD PTR [rbx]	 # MEM[(char * *)name_9(D)], MEM[(char * *)name_9(D)]
	mov	rcx, QWORD PTR 56[rsp]	 #, %sfp
	mov	r8d, 8	 #,
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode	 #
 # C:/msys64/mingw64/include/c++/14.2.0/fstream:740: 	  this->setstate(ios_base::failbit);
	mov	rdx, QWORD PTR 176[rsp]	 # file.D.106189._vptr.basic_istream, file.D.106189._vptr.basic_istream
	add	rdi, QWORD PTR -24[rdx]	 # _109, MEM[(long long int *)pretmp_95 + -24B]
	mov	rcx, rdi	 # _109, _109
 # C:/msys64/mingw64/include/c++/14.2.0/fstream:739: 	if (!_M_filebuf.open(__s, __mode | ios_base::in))
	test	rax, rax	 # tmp451
	je	.L300	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/fstream:744: 	  this->clear();
	xor	edx, edx	 #
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate	 #
.LEHE2:
.L171:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:235: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	lea	rax, 16[rsi]	 # _25,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:223:       { _M_string_length = __length; }
	mov	QWORD PTR 8[rsi], 0	 # MEM[(struct basic_string *)shader_code_11(D)]._M_string_length,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:198: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	mov	QWORD PTR [rsi], rax	 # MEM[(struct _Alloc_hider *)shader_code_11(D)]._M_p, _25
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR 16[rsi], 0	 # MEM[(char_type &)shader_code_11(D) + 16],
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:235: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	mov	QWORD PTR 32[rsp], rax	 # %sfp, _25
 # C:/msys64/mingw64/include/c++/14.2.0/fstream:276:       { return _M_file.is_open(); }
	lea	rax, 264[rsp]	 # tmp445,
	mov	rcx, rax	 #, tmp445
	mov	QWORD PTR 96[rsp], rax	 # %sfp, tmp445
	call	_ZNKSt12__basic_fileIcE7is_openEv	 #
 # include/gl_setup.hpp:183:         if (file.is_open()) {
	test	al, al	 # tmp452
	je	.L301	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:198: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	lea	rax, 128[rsp]	 # tmp439,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR 128[rsp], 0	 # MEM[(char_type &)&line + 16],
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:198: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	mov	QWORD PTR 112[rsp], rax	 # MEM[(struct _Alloc_hider *)&line]._M_p, tmp439
	vmovq	xmm7, rax	 # tmp439, tmp439
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:4119:     { return std::getline(__is, __str, __is.widen('\n')); }
	mov	rax, QWORD PTR 176[rsp]	 # file._vptr.basic_istream, file._vptr.basic_istream
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:223:       { _M_string_length = __length; }
	mov	QWORD PTR 120[rsp], 0	 # MEM[(struct basic_string *)&line]._M_string_length,
	mov	rax, QWORD PTR -24[rax]	 # MEM[(long long int *)_245 + -24B], MEM[(long long int *)_245 + -24B]
	mov	rbx, QWORD PTR 416[rsp+rax]	 # _153, MEM[(const struct __ctype_type * *)_517 + 240B]
	lea	rax, 112[rsp]	 # tmp436,
	mov	QWORD PTR 48[rsp], rax	 # %sfp, tmp436
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:49:       if (!__f)
	test	rbx, rbx	 # _153
	je	.L233	 #,
	lea	rax, _ZNKSt5ctypeIcE8do_widenEc[rip]	 # tmp446,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:404: 	if (this->max_size() - (this->size() - __n1) < __n2)
	movabs	r12, 9223372036854775807	 # tmp448,
	vmovq	xmm6, rax	 # tmp446, tmp446
.L177:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/locale_facets.h:882: 	if (_M_widen_ok)
	cmp	BYTE PTR 56[rbx], 0	 # MEM[(const struct ctype *)_153]._M_widen_ok,
	je	.L234	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:4119:     { return std::getline(__is, __str, __is.widen('\n')); }
	movsx	r8d, BYTE PTR 67[rbx]	 # _124, MEM[(const struct ctype *)_153]._M_widen[10]
.L235:
	mov	rdx, QWORD PTR 48[rsp]	 #, %sfp
	mov	rcx, QWORD PTR 40[rsp]	 #, %sfp
.LEHB3:
	call	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_	 #
.LEHE3:
 # include/gl_setup.hpp:185:             while (getline(file, line)) {
	mov	rdx, QWORD PTR [rax]	 # _293->_vptr.basic_istream, _293->_vptr.basic_istream
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:142:       { return _M_streambuf_state; }
	mov	rdx, QWORD PTR -24[rdx]	 # MEM[(long long int *)_1 + -24B], MEM[(long long int *)_1 + -24B]
 # include/gl_setup.hpp:185:             while (getline(file, line)) {
	test	BYTE PTR 32[rax+rdx], 5	 # MEM[(const struct basic_ios *)_4].D.69971._M_streambuf_state,
	jne	.L302	 #,
	mov	rbx, QWORD PTR 120[rsp]	 # _56, MEM[(long long unsigned int *)&line + 8B]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:194: 	: allocator_type(__a), _M_p(__dat) { }
	lea	rdi, 160[rsp]	 # tmp441,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:223:       { _M_string_length = __length; }
	mov	QWORD PTR 152[rsp], 0	 # D.141733._M_string_length,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:194: 	: allocator_type(__a), _M_p(__dat) { }
	mov	QWORD PTR 144[rsp], rdi	 # MEM[(struct _Alloc_hider *)&D.141733]._M_p, tmp441
	mov	r14, QWORD PTR 112[rsp]	 # _55, MEM[(char * *)&line]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:3582:       __str.reserve(__lhs_len + __rhs_len);
	lea	rbp, 1[rbx]	 # __res,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR 160[rsp], 0	 # MEM[(char_type &)&D.141733 + 16],
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:312:       if (__res <= __capacity)
	cmp	rbp, 15	 # __res,
	jbe	.L178	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:143:       if (__capacity > max_size())
	test	rbp, rbp	 # __res
	js	.L303	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:149:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	cmp	rbp, 29	 # __res,
	jbe	.L248	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:134: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	mov	rcx, rbx	 # _112, _56
	add	rcx, 2	 # _112,
	js	.L304	 #,
.L180:
.LEHB4:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwy	 #
.LEHE4:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:1084:       { return _M_string_length; }
	mov	r9, QWORD PTR 152[rsp]	 # prephitmp_5, D.141733._M_string_length
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	r13, QWORD PTR 144[rsp]	 # _104, D.141733._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	r11, rax	 # _117, tmp456
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:316:       this->_S_copy(__tmp, _M_data(), length() + 1);
	lea	r8, 1[r9]	 # _103,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:432: 	if (__n == 1)
	test	r9, r9	 # prephitmp_5
	je	.L305	 #,
	mov	QWORD PTR 64[rsp], r9	 # %sfp, prephitmp_5
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:421: 	if (__n == 0)
	test	r8, r8	 # _103
	je	.L183	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	rdx, r13	 #, _104
	mov	rcx, rax	 #, _117
	call	memcpy	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:269: 	if (_M_data() == _M_local_data())
	cmp	r13, rdi	 # _104, tmp441
	mov	r9, QWORD PTR 64[rsp]	 # prephitmp_5, %sfp
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	r11, rax	 # _117,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:269: 	if (_M_data() == _M_local_data())
	je	.L184	 #,
.L183:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	mov	rax, QWORD PTR 160[rsp]	 # tmp493, D.141733.D.45451._M_allocated_capacity
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	rcx, r13	 #, _104
	mov	QWORD PTR 64[rsp], r11	 # %sfp, _117
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	lea	rdx, 1[rax]	 # _122,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:1077:       { return _M_string_length; }
	mov	r9, QWORD PTR 152[rsp]	 # prephitmp_5, D.141733._M_string_length
	mov	r11, QWORD PTR 64[rsp]	 # _117, %sfp
.L184:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:404: 	if (this->max_size() - (this->size() - __n1) < __n2)
	mov	rax, r12	 # _169, tmp448
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:218:       { _M_dataplus._M_p = __p; }
	mov	QWORD PTR 144[rsp], r11	 # D.141733._M_dataplus._M_p, _117
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:404: 	if (this->max_size() - (this->size() - __n1) < __n2)
	sub	rax, r9	 # _169, prephitmp_5
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:255:       { _M_allocated_capacity = __capacity; }
	mov	QWORD PTR 160[rsp], rbp	 # D.141733.D.45451._M_allocated_capacity, __res
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:404: 	if (this->max_size() - (this->size() - __n1) < __n2)
	cmp	rax, rbx	 # _169, _56
	jb	.L245	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:416:       const size_type __len = __n + this->size();
	lea	r13, [r9+rbx]	 # __len,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:418:       if (__len <= this->capacity())
	cmp	rbp, r13	 # __res, __len
	jb	.L306	 #,
.L243:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:421: 	    this->_S_copy(this->_M_data() + this->size(), __s, __n);
	lea	rcx, [r11+r9]	 # _363,
.L187:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	r8, rbx	 #, _56
	mov	rdx, r14	 #, _55
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	rbx, r13	 # _56, __len
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	call	memcpy	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rbp, QWORD PTR 144[rsp]	 # _170, D.141733._M_dataplus._M_p
.L186:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:223:       { _M_string_length = __length; }
	mov	QWORD PTR 152[rsp], rbx	 # D.141733._M_string_length, _56
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR 0[rbp+rbx], 0	 # MEM[(char_type &)_135],
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:1077:       { return _M_string_length; }
	mov	rbp, QWORD PTR 152[rsp]	 # _176, D.141733._M_string_length
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:404: 	if (this->max_size() - (this->size() - __n1) < __n2)
	cmp	rbp, r12	 # _176, tmp448
	je	.L307	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rax, QWORD PTR 144[rsp]	 # _181, D.141733._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:416:       const size_type __len = __n + this->size();
	lea	r14, 1[rbp]	 # __len,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:269: 	if (_M_data() == _M_local_data())
	cmp	rax, rdi	 # _181, tmp441
	je	.L308	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:1182: 	return _M_is_local() ? size_type(_S_local_capacity)
	mov	rbx, QWORD PTR 160[rsp]	 # iftmp.61_183, D.141733.D.45451._M_allocated_capacity
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:418:       if (__len <= this->capacity())
	cmp	rbx, r14	 # iftmp.61_183, __len
	jb	.L201	 #,
.L199:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR [rax+rbp], 10	 # MEM[(char_type &)_185],
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	r13, QWORD PTR 144[rsp]	 # pretmp_179, D.141733._M_dataplus._M_p
.L202:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:223:       { _M_string_length = __length; }
	mov	QWORD PTR 152[rsp], r14	 # D.141733._M_string_length, __len
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:404: 	if (this->max_size() - (this->size() - __n1) < __n2)
	mov	rax, r12	 # _230, tmp448
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR 1[r13+rbp], 0	 # MEM[(char_type &)_188],
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:1077:       { return _M_string_length; }
	mov	r8, QWORD PTR 8[rsi]	 # _229, MEM[(const struct basic_string *)shader_code_11(D)]._M_string_length
	mov	r10, QWORD PTR 152[rsp]	 # _26, D.141733._M_string_length
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	r14, QWORD PTR 144[rsp]	 # _27, D.141733._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:404: 	if (this->max_size() - (this->size() - __n1) < __n2)
	sub	rax, r8	 # _230, _229
	cmp	rax, r10	 # _230, _26
	jb	.L309	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	r13, QWORD PTR [rsi]	 # prephitmp_137, MEM[(const struct basic_string *)shader_code_11(D)]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:416:       const size_type __len = __n + this->size();
	lea	rbp, [r10+r8]	 # __len,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:269: 	if (_M_data() == _M_local_data())
	cmp	QWORD PTR 32[rsp], r13	 # %sfp, prephitmp_137
	je	.L310	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:1182: 	return _M_is_local() ? size_type(_S_local_capacity)
	mov	rbx, QWORD PTR 16[rsi]	 # iftmp.61_433, MEM[(const struct basic_string *)shader_code_11(D)].D.45451._M_allocated_capacity
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:418:       if (__len <= this->capacity())
	cmp	rbx, rbp	 # iftmp.61_433, __len
	jb	.L218	 #,
.L216:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:420: 	  if (__n)
	test	r10, r10	 # _26
	je	.L219	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:421: 	    this->_S_copy(this->_M_data() + this->size(), __s, __n);
	lea	rcx, 0[r13+r8]	 # _238,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:432: 	if (__n == 1)
	cmp	r10, 1	 # _26,
	je	.L311	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	r8, r10	 #, _26
	mov	rdx, r14	 #, _27
	call	memcpy	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	r13, QWORD PTR [rsi]	 # prephitmp_137, MEM[(const struct basic_string *)shader_code_11(D)]._M_dataplus._M_p
.L219:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:223:       { _M_string_length = __length; }
	mov	QWORD PTR 8[rsi], rbp	 # MEM[(struct basic_string *)shader_code_11(D)]._M_string_length, __len
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR 0[r13+rbp], 0	 # MEM[(char_type &)_241],
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rcx, QWORD PTR 144[rsp]	 # _282, D.141733._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:269: 	if (_M_data() == _M_local_data())
	cmp	rcx, rdi	 # _282, tmp441
	je	.L232	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	mov	rax, QWORD PTR 160[rsp]	 # tmp509, D.141733.D.45451._M_allocated_capacity
	lea	rdx, 1[rax]	 # _286,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L232:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:4119:     { return std::getline(__is, __str, __is.widen('\n')); }
	mov	rax, QWORD PTR 176[rsp]	 # file._vptr.basic_istream, file._vptr.basic_istream
	mov	rax, QWORD PTR -24[rax]	 # MEM[(long long int *)_287 + -24B], MEM[(long long int *)_287 + -24B]
	mov	rbx, QWORD PTR 416[rsp+rax]	 # _153, MEM[(const struct __ctype_type * *)_290 + 240B]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:49:       if (!__f)
	test	rbx, rbx	 # _153
	jne	.L177	 #,
.L233:
.LEHB5:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:50: 	__throw_bad_cast();
	call	_ZSt16__throw_bad_castv	 #
	.p2align 4,,10
	.p2align 3
.L234:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/locale_facets.h:884: 	this->_M_widen_init();
	mov	rcx, rbx	 #, _153
	call	_ZNKSt5ctypeIcE13_M_widen_initEv	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/locale_facets.h:885: 	return this->do_widen(__c);
	mov	rax, QWORD PTR [rbx]	 # MEM[(const struct ctype *)_153].D.66525._vptr.facet, MEM[(const struct ctype *)_153].D.66525._vptr.facet
	vmovq	rdi, xmm6	 # tmp446, tmp446
	mov	r8d, 10	 # _124,
	mov	rax, QWORD PTR 48[rax]	 # _305, MEM[(int (*) () *)_304 + 48B]
	cmp	rax, rdi	 # _305, tmp446
	je	.L235	 #,
	mov	edx, 10	 #,
	mov	rcx, rbx	 #, _153
	call	rax	 # _305
.LEHE5:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:4119:     { return std::getline(__is, __str, __is.widen('\n')); }
	movsx	r8d, al	 # _124, tmp462
	jmp	.L235	 #
	.p2align 4,,10
	.p2align 3
.L178:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:404: 	if (this->max_size() - (this->size() - __n1) < __n2)
	cmp	rbx, -1	 # _56,
	je	.L245	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:420: 	  if (__n)
	test	rbx, rbx	 # _56
	jne	.L312	 #,
	mov	rbp, rdi	 # _170, tmp441
	jmp	.L186	 #
	.p2align 4,,10
	.p2align 3
.L201:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:143:       if (__capacity > max_size())
	test	r14, r14	 # __len
	js	.L313	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:149:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	add	rbx, rbx	 # __new_capacity
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:149:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	cmp	r14, rbx	 # __len, __new_capacity
	jb	.L314	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:134: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	mov	rcx, rbp	 # _218, _176
	add	rcx, 2	 # _218,
	js	.L205	 #,
	mov	rbx, r14	 # __new_capacity, __len
.L206:
.LEHB6:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwy	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	r10, QWORD PTR 144[rsp]	 # pretmp_139, D.141733._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	r13, rax	 # pretmp_179, tmp459
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:334:       if (__pos)
	test	rbp, rbp	 # _176
	jne	.L315	 #,
.L208:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR 0[r13+rbp], 10	 # MEM[(char_type &)_204],
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:269: 	if (_M_data() == _M_local_data())
	cmp	r10, rdi	 # pretmp_139, tmp441
	je	.L210	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	mov	rax, QWORD PTR 160[rsp]	 # tmp503, D.141733.D.45451._M_allocated_capacity
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	rcx, r10	 #, pretmp_139
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	lea	rdx, 1[rax]	 # _228,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L210:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:218:       { _M_dataplus._M_p = __p; }
	mov	QWORD PTR 144[rsp], r13	 # D.141733._M_dataplus._M_p, pretmp_179
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:255:       { _M_allocated_capacity = __capacity; }
	mov	QWORD PTR 160[rsp], rbx	 # D.141733.D.45451._M_allocated_capacity, __new_capacity
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:345:     }
	jmp	.L202	 #
	.p2align 4,,10
	.p2align 3
.L306:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:143:       if (__capacity > max_size())
	test	r13, r13	 # __len
	js	.L188	 #,
.L247:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:149:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	lea	rax, [rbp+rbp]	 # __new_capacity,
	mov	QWORD PTR 64[rsp], rax	 # %sfp, __new_capacity
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:149:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	cmp	r13, rax	 # __len, __new_capacity
	jb	.L189	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:134: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	mov	rcx, r13	 # _243, __len
	add	rcx, 1	 # _243,
	js	.L190	 #,
	mov	QWORD PTR 64[rsp], r13	 # %sfp, __len
.L191:
	mov	QWORD PTR 72[rsp], r9	 # %sfp, prephitmp_5
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwy	 #
.LEHE6:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:334:       if (__pos)
	mov	r9, QWORD PTR 72[rsp]	 # prephitmp_5, %sfp
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	r11, QWORD PTR 144[rsp]	 # pretmp_110, D.141733._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	rbp, rax	 # _170, tmp457
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:334:       if (__pos)
	test	r9, r9	 # prephitmp_5
	je	.L193	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:432: 	if (__n == 1)
	cmp	r9, 1	 # prephitmp_5,
	je	.L316	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	r8, r9	 #, prephitmp_5
	mov	rdx, r11	 #, pretmp_110
	mov	rcx, rax	 #, _170
	mov	QWORD PTR 104[rsp], r9	 # %sfp, prephitmp_5
	mov	QWORD PTR 72[rsp], r11	 # %sfp, pretmp_110
	call	memcpy	 #
	mov	r9, QWORD PTR 104[rsp]	 # prephitmp_5, %sfp
	mov	r11, QWORD PTR 72[rsp]	 # pretmp_110, %sfp
.L193:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:336:       if (__s && __len2)
	test	r14, r14	 # _55
	je	.L195	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:337: 	this->_S_copy(__r + __pos, __s, __len2);
	lea	rcx, 0[rbp+r9]	 # _352,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	r8, rbx	 #, _56
	mov	rdx, r14	 #, _55
	mov	QWORD PTR 72[rsp], r11	 # %sfp, pretmp_110
	call	memcpy	 #
	mov	r11, QWORD PTR 72[rsp]	 # pretmp_110, %sfp
.L195:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:269: 	if (_M_data() == _M_local_data())
	cmp	r11, rdi	 # pretmp_110, tmp441
	je	.L196	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	mov	rax, QWORD PTR 160[rsp]	 # tmp500, D.141733.D.45451._M_allocated_capacity
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	rcx, r11	 #, pretmp_110
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	lea	rdx, 1[rax]	 # _175,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L196:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:255:       { _M_allocated_capacity = __capacity; }
	mov	rax, QWORD PTR 64[rsp]	 # __new_capacity, %sfp
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:218:       { _M_dataplus._M_p = __p; }
	mov	QWORD PTR 144[rsp], rbp	 # D.141733._M_dataplus._M_p, _170
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:345:     }
	mov	rbx, r13	 # _56, __len
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:255:       { _M_allocated_capacity = __capacity; }
	mov	QWORD PTR 160[rsp], rax	 # D.141733.D.45451._M_allocated_capacity, __new_capacity
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:345:     }
	jmp	.L186	 #
	.p2align 4,,10
	.p2align 3
.L218:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:143:       if (__capacity > max_size())
	test	rbp, rbp	 # __len
	js	.L221	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:149:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	add	rbx, rbx	 # __new_capacity
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:149:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	cmp	rbp, rbx	 # __len, __new_capacity
	jb	.L317	 #,
.L223:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:134: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	mov	rcx, rbp	 # _271, __len
	add	rcx, 1	 # _271,
	js	.L225	 #,
	mov	rbx, rbp	 # __new_capacity, __len
.L226:
	mov	QWORD PTR 72[rsp], r8	 # %sfp, _229
	mov	QWORD PTR 64[rsp], r10	 # %sfp, _26
.LEHB7:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwy	 #
.LEHE7:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:334:       if (__pos)
	mov	r8, QWORD PTR 72[rsp]	 # _229, %sfp
	mov	r10, QWORD PTR 64[rsp]	 # _26, %sfp
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	r13, rax	 # prephitmp_137, tmp461
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:334:       if (__pos)
	test	r8, r8	 # _229
	je	.L227	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rdx, QWORD PTR [rsi]	 # _252, MEM[(const struct basic_string *)shader_code_11(D)]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:432: 	if (__n == 1)
	cmp	r8, 1	 # _229,
	je	.L318	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	rcx, rax	 #, prephitmp_137
	mov	QWORD PTR 72[rsp], r10	 # %sfp, _26
	mov	QWORD PTR 64[rsp], r8	 # %sfp, _229
	call	memcpy	 #
	mov	r10, QWORD PTR 72[rsp]	 # _26, %sfp
	mov	r8, QWORD PTR 64[rsp]	 # _229, %sfp
.L227:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:336:       if (__s && __len2)
	test	r14, r14	 # _27
	je	.L229	 #,
	test	r10, r10	 # _26
	je	.L229	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:337: 	this->_S_copy(__r + __pos, __s, __len2);
	lea	rcx, 0[r13+r8]	 # _257,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:432: 	if (__n == 1)
	cmp	r10, 1	 # _26,
	je	.L319	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	r8, r10	 #, _26
	mov	rdx, r14	 #, _27
	call	memcpy	 #
.L229:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rcx, QWORD PTR [rsi]	 # _277, MEM[(const struct basic_string *)shader_code_11(D)]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:269: 	if (_M_data() == _M_local_data())
	cmp	QWORD PTR 32[rsp], rcx	 # %sfp, _277
	je	.L231	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	mov	rax, QWORD PTR 16[rsi]	 # tmp508, MEM[(struct basic_string *)shader_code_11(D)].D.45451._M_allocated_capacity
	lea	rdx, 1[rax]	 # _281,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L231:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:218:       { _M_dataplus._M_p = __p; }
	mov	QWORD PTR [rsi], r13	 # MEM[(struct basic_string *)shader_code_11(D)]._M_dataplus._M_p, prephitmp_137
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:255:       { _M_allocated_capacity = __capacity; }
	mov	QWORD PTR 16[rsi], rbx	 # MEM[(struct basic_string *)shader_code_11(D)].D.45451._M_allocated_capacity, __new_capacity
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:345:     }
	jmp	.L219	 #
	.p2align 4,,10
	.p2align 3
.L308:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:418:       if (__len <= this->capacity())
	cmp	r14, 16	 # __len,
	jne	.L199	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	ecx, 31	 #,
.LEHB8:
	call	_Znwy	 #
.LEHE8:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	r10, QWORD PTR 144[rsp]	 # pretmp_139, D.141733._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	r13, rax	 # pretmp_179, tmp458
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:151: 	  __capacity = 2 * __old_capacity;
	mov	ebx, 30	 # __new_capacity,
	jmp	.L200	 #
	.p2align 4,,10
	.p2align 3
.L310:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:418:       if (__len <= this->capacity())
	cmp	rbp, 15	 # __len,
	jbe	.L216	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:143:       if (__capacity > max_size())
	test	rbp, rbp	 # __len
	js	.L221	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:149:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	cmp	rbp, 29	 # __len,
	ja	.L223	 #,
	mov	ecx, 31	 # _271,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:149:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	mov	ebx, 30	 # __new_capacity,
	jmp	.L226	 #
	.p2align 4,,10
	.p2align 3
.L305:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	movzx	eax, BYTE PTR 0[r13]	 # _105, MEM[(const char_type &)_104]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR [r11], al	 # MEM[(char_type &)_117], _105
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:269: 	if (_M_data() == _M_local_data())
	cmp	r13, rdi	 # _104, tmp441
	jne	.L183	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:218:       { _M_dataplus._M_p = __p; }
	mov	QWORD PTR 144[rsp], r11	 # D.141733._M_dataplus._M_p, _117
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:416:       const size_type __len = __n + this->size();
	mov	r13, rbx	 # __len, _56
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:1077:       { return _M_string_length; }
	xor	r9d, r9d	 # prephitmp_5
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:255:       { _M_allocated_capacity = __capacity; }
	mov	QWORD PTR 160[rsp], rbp	 # D.141733.D.45451._M_allocated_capacity, __res
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:418:       if (__len <= this->capacity())
	cmp	rbp, rbx	 # __res, _56
	jnb	.L243	 #,
	jmp	.L247	 #
	.p2align 4,,10
	.p2align 3
.L248:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:151: 	  __capacity = 2 * __old_capacity;
	mov	ebp, 30	 # __res,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:159:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	mov	ecx, 31	 # _112,
	jmp	.L180	 #
	.p2align 4,,10
	.p2align 3
.L315:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:432: 	if (__n == 1)
	cmp	rbp, 1	 # _176,
	je	.L320	 #,
.L200:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	rdx, r10	 #, pretmp_139
	mov	r8, rbp	 #, _176
	mov	rcx, r13	 #, pretmp_179
	mov	QWORD PTR 64[rsp], r10	 # %sfp, pretmp_139
	call	memcpy	 #
	mov	r10, QWORD PTR 64[rsp]	 # pretmp_139, %sfp
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	jmp	.L208	 #
	.p2align 4,,10
	.p2align 3
.L302:
 # C:/msys64/mingw64/include/c++/14.2.0/fstream:772: 	if (!_M_filebuf.close())
	mov	rcx, QWORD PTR 56[rsp]	 #, %sfp
.LEHB9:
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv	 #
.LEHE9:
 # C:/msys64/mingw64/include/c++/14.2.0/fstream:772: 	if (!_M_filebuf.close())
	test	rax, rax	 # tmp464
	je	.L321	 #,
.L237:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rcx, QWORD PTR 112[rsp]	 # _330, line._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:269: 	if (_M_data() == _M_local_data())
	vmovq	rax, xmm7	 # tmp439, tmp439
	cmp	rcx, rax	 # _330, tmp439
	je	.L238	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	mov	rax, QWORD PTR 128[rsp]	 # tmp514, line.D.45451._M_allocated_capacity
	lea	rdx, 1[rax]	 # _334,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L238:
 # C:/msys64/mingw64/include/c++/14.2.0/fstream:640:       { }
	mov	rax, QWORD PTR .refptr._ZTVSt14basic_ifstreamIcSt11char_traitsIcEE[rip]	 # tmp515,
 # C:/msys64/mingw64/include/c++/14.2.0/fstream:259: 	  { this->close(); }
	mov	rcx, QWORD PTR 56[rsp]	 #, %sfp
 # C:/msys64/mingw64/include/c++/14.2.0/fstream:640:       { }
	add	rax, 24	 # tmp403,
	mov	QWORD PTR 176[rsp], rax	 # file.D.106189._vptr.basic_istream, tmp403
	mov	rax, QWORD PTR .refptr._ZTVSt14basic_ifstreamIcSt11char_traitsIcEE[rip]	 # tmp516,
	add	rax, 64	 # tmp405,
	mov	QWORD PTR 384[rsp], rax	 # MEM[(struct basic_ios *)&file + 208B].D.69971._vptr.ios_base, tmp405
 # C:/msys64/mingw64/include/c++/14.2.0/fstream:262:       }
	mov	rax, QWORD PTR .refptr._ZTVSt13basic_filebufIcSt11char_traitsIcEE[rip]	 # tmp517,
	add	rax, 16	 # tmp407,
	mov	QWORD PTR 192[rsp], rax	 # MEM[(struct basic_filebuf *)&file + 16B].D.105975._vptr.basic_streambuf, tmp407
.LEHB10:
 # C:/msys64/mingw64/include/c++/14.2.0/fstream:259: 	  { this->close(); }
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv	 #
.LEHE10:
.L240:
 # C:/msys64/mingw64/include/c++/14.2.0/fstream:262:       }
	mov	rcx, QWORD PTR 96[rsp]	 #, %sfp
	call	_ZNSt12__basic_fileIcED1Ev	 #
 # C:/msys64/mingw64/include/c++/14.2.0/streambuf:205:       { }
	mov	rax, QWORD PTR .refptr._ZTVSt15basic_streambufIcSt11char_traitsIcEE[rip]	 # tmp518,
	lea	rcx, 248[rsp]	 # tmp415,
	add	rax, 16	 # tmp413,
	mov	QWORD PTR 192[rsp], rax	 # MEM[(struct basic_streambuf *)&file + 16B]._vptr.basic_streambuf, tmp413
	call	_ZNSt6localeD1Ev	 #
 # C:/msys64/mingw64/include/c++/14.2.0/istream:106:       { _M_gcount = streamsize(0); }
	mov	rax, QWORD PTR -24[r15]	 # MEM[(long long int *)_59 + -24B], MEM[(long long int *)_59 + -24B]
	mov	rdi, QWORD PTR 80[rsp]	 # _63, %sfp
	mov	QWORD PTR 176[rsp], r15	 # MEM[(struct basic_istream *)&file]._vptr.basic_istream, _59
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:286:       ~basic_ios() { }
	mov	rcx, QWORD PTR 88[rsp]	 #, %sfp
 # C:/msys64/mingw64/include/c++/14.2.0/istream:106:       { _M_gcount = streamsize(0); }
	mov	QWORD PTR 176[rsp+rax], rdi	 # MEM[(struct basic_ios *)_327].D.69971._vptr.ios_base, _63
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:286:       ~basic_ios() { }
	mov	rax, QWORD PTR .refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE[rip]	 # tmp520,
 # C:/msys64/mingw64/include/c++/14.2.0/istream:106:       { _M_gcount = streamsize(0); }
	mov	QWORD PTR 184[rsp], 0	 # MEM[(struct basic_istream *)&file]._M_gcount,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:286:       ~basic_ios() { }
	add	rax, 16	 # tmp418,
	mov	QWORD PTR 384[rsp], rax	 # MEM[(struct basic_ios *)&file + 208B].D.69971._vptr.ios_base, tmp418
	call	_ZNSt8ios_baseD2Ev	 #
 # include/gl_setup.hpp:195:     }
	mov	rax, rsi	 #, <retval>
	vmovups	xmm6, XMMWORD PTR 656[rsp]	 #,
	vmovups	xmm7, XMMWORD PTR 672[rsp]	 #,
	add	rsp, 696	 #,
	pop	rbx	 #
	pop	rsi	 #
	pop	rdi	 #
	pop	rbp	 #
	pop	r12	 #
	pop	r13	 #
	pop	r14	 #
	pop	r15	 #
	ret	
	.p2align 4,,10
	.p2align 3
.L311:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	movzx	eax, BYTE PTR [r14]	 # _239, MEM[(const char_type &)_27]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR [rcx], al	 # MEM[(char_type &)_238], _239
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	r13, QWORD PTR [rsi]	 # prephitmp_137, MEM[(const struct basic_string *)shader_code_11(D)]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:351:       }
	jmp	.L219	 #
	.p2align 4,,10
	.p2align 3
.L300:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/ios_base.h:187:   { return _Ios_Iostate(static_cast<int>(__a) | static_cast<int>(__b)); }
	mov	edx, DWORD PTR 32[rdi]	 # _87, MEM[(const struct basic_ios *)_109].D.69971._M_streambuf_state
	or	edx, 4	 # _87,
.LEHB11:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:162:       { this->clear(this->rdstate() | __state); }
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate	 #
.LEHE11:
	jmp	.L171	 #
	.p2align 4,,10
	.p2align 3
.L189:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:153: 	  if (__capacity > max_size())
	cmp	QWORD PTR 64[rsp], 0	 # %sfp,
	jns	.L192	 #,
.L190:
.LEHB12:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:140: 	    std::__throw_bad_alloc();
	call	_ZSt17__throw_bad_allocv	 #
	.p2align 4,,10
	.p2align 3
.L314:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:153: 	  if (__capacity > max_size())
	test	rbx, rbx	 # __new_capacity
	jns	.L322	 #,
.L205:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:140: 	    std::__throw_bad_alloc();
	call	_ZSt17__throw_bad_allocv	 #
.LEHE12:
	.p2align 4,,10
	.p2align 3
.L316:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	movzx	eax, BYTE PTR [r11]	 # _147, MEM[(const char_type &)pretmp_110]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR 0[rbp], al	 # MEM[(char_type &)_170], _147
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:351:       }
	jmp	.L193	 #
	.p2align 4,,10
	.p2align 3
.L317:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:153: 	  if (__capacity > max_size())
	test	rbx, rbx	 # __new_capacity
	jns	.L323	 #,
.L225:
.LEHB13:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:140: 	    std::__throw_bad_alloc();
	call	_ZSt17__throw_bad_allocv	 #
.LEHE13:
	.p2align 4,,10
	.p2align 3
.L319:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	movzx	eax, BYTE PTR [r14]	 # _258, MEM[(const char_type &)_27]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR [rcx], al	 # MEM[(char_type &)_257], _258
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:351:       }
	jmp	.L229	 #
	.p2align 4,,10
	.p2align 3
.L318:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	movzx	eax, BYTE PTR [rdx]	 # _253, MEM[(const char_type &)_252]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR 0[r13], al	 # MEM[(char_type &)_276], _253
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:351:       }
	jmp	.L227	 #
	.p2align 4,,10
	.p2align 3
.L304:
.LEHB14:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:140: 	    std::__throw_bad_alloc();
	call	_ZSt17__throw_bad_allocv	 #
.LEHE14:
	.p2align 4,,10
	.p2align 3
.L320:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	movzx	eax, BYTE PTR [r10]	 # _200, MEM[(const char_type &)pretmp_139]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR 0[r13], al	 # MEM[(char_type &)_223], _200
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:351:       }
	jmp	.L208	 #
	.p2align 4,,10
	.p2align 3
.L192:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:159:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	lea	rcx, 1[rax]	 # _243,
	jmp	.L191	 #
	.p2align 4,,10
	.p2align 3
.L321:
 # C:/msys64/mingw64/include/c++/14.2.0/fstream:740: 	  this->setstate(ios_base::failbit);
	mov	rax, QWORD PTR 176[rsp]	 # file.D.106189._vptr.basic_istream, file.D.106189._vptr.basic_istream
	mov	rcx, QWORD PTR 40[rsp]	 # _319, %sfp
	add	rcx, QWORD PTR -24[rax]	 # _319, MEM[(long long int *)_316 + -24B]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/ios_base.h:187:   { return _Ios_Iostate(static_cast<int>(__a) | static_cast<int>(__b)); }
	mov	edx, DWORD PTR 32[rcx]	 # _321, MEM[(const struct basic_ios *)_319].D.69971._M_streambuf_state
	or	edx, 4	 # _321,
.LEHB15:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:162:       { this->clear(this->rdstate() | __state); }
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate	 #
.LEHE15:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:162:       { this->clear(this->rdstate() | __state); }
	jmp	.L237	 #
	.p2align 4,,10
	.p2align 3
.L322:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:159:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	lea	rcx, 1[rbx]	 # _218,
	jmp	.L206	 #
	.p2align 4,,10
	.p2align 3
.L323:
	lea	rcx, 1[rbx]	 # _271,
	jmp	.L226	 #
.L301:
 # C:/msys64/mingw64/include/c++/14.2.0/ostream:673: 	__ostream_insert(__out, __s,
	mov	rdi, QWORD PTR .refptr._ZSt4cerr[rip]	 # tmp440,
	mov	r8d, 28	 #,
	lea	rdx, .LC2[rip]	 # tmp423,
	mov	rcx, rdi	 #, tmp440
.LEHB16:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:4082:       return __ostream_insert(__os, __str.data(), __str.size());
	mov	r8, QWORD PTR 8[rbx]	 #, MEM[(const struct basic_string *)name_9(D)]._M_string_length
	mov	rdx, QWORD PTR [rbx]	 #, MEM[(const struct basic_string *)name_9(D)]._M_dataplus._M_p
	mov	rcx, rdi	 #, tmp440
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x	 #
	mov	rcx, rax	 # _33, tmp466
 # C:/msys64/mingw64/include/c++/14.2.0/ostream:121: 	return __pf(*this);
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0	 #
.LEHE16:
 # include/gl_setup.hpp:192:             exit(-1);
	or	ecx, -1	 #,
	call	exit	 #
.L312:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:432: 	if (__n == 1)
	cmp	rbx, 1	 # _56,
	je	.L324	 #,
	mov	r13, rbx	 # __len, _56
	mov	rcx, rdi	 # _363, tmp441
	jmp	.L187	 #
	.p2align 4,,10
	.p2align 3
.L324:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	movzx	eax, BYTE PTR [r14]	 # _133, MEM[(const char_type &)_55]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rbp, rdi	 # _170, tmp441
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR 160[rsp], al	 # MEM[(char_type &)&D.141733 + 16], _133
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:351:       }
	jmp	.L186	 #
.L256:
.L299:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:809:       { _M_dispose(); }
	lea	rcx, 144[rsp]	 # tmp427,
	mov	rbx, rax	 # tmp428, tmp467
	vzeroupper
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv	 #
	jmp	.L214	 #
.L257:
	mov	rbx, rax	 # tmp348, tmp468
	vzeroupper
.L214:
	mov	rcx, QWORD PTR 48[rsp]	 #, %sfp
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv	 #
.L242:
	mov	rcx, rsi	 #, <retval>
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv	 #
 # include/gl_setup.hpp:195:     }
	mov	rcx, QWORD PTR 40[rsp]	 #, %sfp
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev	 #
	mov	rcx, rbx	 #, tmp431
.LEHB17:
	call	_Unwind_Resume	 #
.LEHE17:
.L221:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:144: 	std::__throw_length_error(__N("basic_string::_M_create"));
	lea	rcx, .LC0[rip]	 # tmp358,
.LEHB18:
	call	_ZSt20__throw_length_errorPKc	 #
.LEHE18:
.L303:
	lea	rcx, .LC0[rip]	 # tmp291,
.LEHB19:
	call	_ZSt20__throw_length_errorPKc	 #
.L263:
	jmp	.L299	 #
.L307:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:405: 	  __throw_length_error(__N(__s));
	lea	rcx, .LC1[rip]	 # tmp330,
	call	_ZSt20__throw_length_errorPKc	 #
.L245:
	lea	rcx, .LC1[rip]	 # tmp306,
	call	_ZSt20__throw_length_errorPKc	 #
.L188:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:144: 	std::__throw_length_error(__N("basic_string::_M_create"));
	lea	rcx, .LC0[rip]	 # tmp312,
	call	_ZSt20__throw_length_errorPKc	 #
.L313:
	lea	rcx, .LC0[rip]	 # tmp334,
	call	_ZSt20__throw_length_errorPKc	 #
.LEHE19:
.L309:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:405: 	  __throw_length_error(__N(__s));
	lea	rcx, .LC1[rip]	 # tmp352,
.LEHB20:
	call	_ZSt20__throw_length_errorPKc	 #
.LEHE20:
.L261:
 # C:/msys64/mingw64/include/c++/14.2.0/fstream:608:       }
	mov	rcx, QWORD PTR 56[rsp]	 #, %sfp
	mov	rbx, rax	 # tmp275, tmp453
	vzeroupper
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev	 #
	mov	rax, rbx	 # tmp274, tmp275
	jmp	.L175	 #
.L260:
	vzeroupper
.L175:
 # C:/msys64/mingw64/include/c++/14.2.0/istream:106:       { _M_gcount = streamsize(0); }
	mov	rdx, QWORD PTR -24[r15]	 # MEM[(long long int *)_59 + -24B], MEM[(long long int *)_59 + -24B]
	mov	rsi, QWORD PTR 80[rsp]	 # _63, %sfp
	mov	QWORD PTR 176[rsp], r15	 # MEM[(struct basic_istream *)&file]._vptr.basic_istream, _59
	mov	rbx, rax	 # tmp279, tmp274
	mov	QWORD PTR 176[rsp+rdx], rsi	 # MEM[(struct basic_ios *)_72].D.69971._vptr.ios_base, _63
 # C:/msys64/mingw64/include/c++/14.2.0/istream:106:       { _M_gcount = streamsize(0); }
	xor	edx, edx	 #
	mov	QWORD PTR 184[rsp], rdx	 # MEM[(struct basic_istream *)&file]._M_gcount,
	jmp	.L176	 #
.L262:
 # C:/msys64/mingw64/include/c++/14.2.0/fstream:260: 	__catch(...)
	mov	rcx, rax	 # tmp422, tmp465
	vzeroupper
	call	__cxa_begin_catch	 #
 # C:/msys64/mingw64/include/c++/14.2.0/fstream:260: 	__catch(...)
	call	__cxa_end_catch	 #
	jmp	.L240	 #
.L259:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:286:       ~basic_ios() { }
	mov	rbx, rax	 # tmp279, tmp455
	vzeroupper
.L176:
	mov	rax, QWORD PTR .refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE[rip]	 # tmp486,
	mov	rcx, QWORD PTR 88[rsp]	 #, %sfp
	lea	rdx, 16[rax]	 # tmp282,
	mov	QWORD PTR 384[rsp], rdx	 # MEM[(struct basic_ios *)&file + 208B].D.69971._vptr.ios_base, tmp282
	call	_ZNSt8ios_baseD2Ev	 #
	mov	rcx, rbx	 #, tmp279
.LEHB21:
	call	_Unwind_Resume	 #
.LEHE21:
.L258:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:809:       { _M_dispose(); }
	mov	rbx, rax	 # tmp431, tmp469
	vzeroupper
	jmp	.L242	 #
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
	.align 4
.LLSDA6241:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT6241-.LLSDATTD6241
.LLSDATTD6241:
	.byte	0x1
	.uleb128 .LLSDACSE6241-.LLSDACSB6241
.LLSDACSB6241:
	.uleb128 .LEHB0-.LFB6241
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L259-.LFB6241
	.uleb128 0
	.uleb128 .LEHB1-.LFB6241
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L260-.LFB6241
	.uleb128 0
	.uleb128 .LEHB2-.LFB6241
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L261-.LFB6241
	.uleb128 0
	.uleb128 .LEHB3-.LFB6241
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L257-.LFB6241
	.uleb128 0
	.uleb128 .LEHB4-.LFB6241
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L263-.LFB6241
	.uleb128 0
	.uleb128 .LEHB5-.LFB6241
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L257-.LFB6241
	.uleb128 0
	.uleb128 .LEHB6-.LFB6241
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L263-.LFB6241
	.uleb128 0
	.uleb128 .LEHB7-.LFB6241
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L256-.LFB6241
	.uleb128 0
	.uleb128 .LEHB8-.LFB6241
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L263-.LFB6241
	.uleb128 0
	.uleb128 .LEHB9-.LFB6241
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L257-.LFB6241
	.uleb128 0
	.uleb128 .LEHB10-.LFB6241
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L262-.LFB6241
	.uleb128 0x1
	.uleb128 .LEHB11-.LFB6241
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L261-.LFB6241
	.uleb128 0
	.uleb128 .LEHB12-.LFB6241
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L263-.LFB6241
	.uleb128 0
	.uleb128 .LEHB13-.LFB6241
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L256-.LFB6241
	.uleb128 0
	.uleb128 .LEHB14-.LFB6241
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L263-.LFB6241
	.uleb128 0
	.uleb128 .LEHB15-.LFB6241
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L257-.LFB6241
	.uleb128 0
	.uleb128 .LEHB16-.LFB6241
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L258-.LFB6241
	.uleb128 0
	.uleb128 .LEHB17-.LFB6241
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB18-.LFB6241
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L256-.LFB6241
	.uleb128 0
	.uleb128 .LEHB19-.LFB6241
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L263-.LFB6241
	.uleb128 0
	.uleb128 .LEHB20-.LFB6241
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L256-.LFB6241
	.uleb128 0
	.uleb128 .LEHB21-.LFB6241
	.uleb128 .LEHE21-.LEHB21
	.uleb128 0
	.uleb128 0
.LLSDACSE6241:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT6241:
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
.LFB6247:
	push	r15	 #
	.seh_pushreg	r15
	push	r14	 #
	.seh_pushreg	r14
	push	r13	 #
	.seh_pushreg	r13
	push	r12	 #
	.seh_pushreg	r12
	push	rbp	 #
	.seh_pushreg	rbp
	push	rdi	 #
	.seh_pushreg	rdi
	push	rsi	 #
	.seh_pushreg	rsi
	push	rbx	 #
	.seh_pushreg	rbx
	sub	rsp, 1816	 #,
	.seh_stackalloc	1816
	vmovups	XMMWORD PTR 1792[rsp], xmm6	 #,
	.seh_savexmm	xmm6, 1792
	.seh_endprologue
 # include/gl_setup.hpp:244:     inline void SetupGL(GLuint* shader_program, GLuint* compute_program, GLuint* VAO, GLuint* VBO) {
	mov	r15, rcx	 # shader_program, tmp424
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	ecx, 57	 #,
 # include/gl_setup.hpp:244:     inline void SetupGL(GLuint* shader_program, GLuint* compute_program, GLuint* VAO, GLuint* VBO) {
	mov	rbp, r8	 # VAO, tmp426
	mov	rdi, r9	 # VBO, tmp427
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:194: 	: allocator_type(__a), _M_p(__dat) { }
	lea	rsi, 1296[rsp]	 # tmp412,
 # include/gl_setup.hpp:244:     inline void SetupGL(GLuint* shader_program, GLuint* compute_program, GLuint* VAO, GLuint* VBO) {
	mov	QWORD PTR 1896[rsp], rdx	 # compute_program, tmp425
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:194: 	: allocator_type(__a), _M_p(__dat) { }
	lea	rbx, 1280[rsp]	 # tmp408,
	mov	QWORD PTR 1280[rsp], rsi	 # MEM[(struct _Alloc_hider *)_51]._M_p, tmp412
.LEHB22:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwy	 #
.LEHE22:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	vmovdqu	ymm1, YMMWORD PTR .LC3[rip]	 # tmp450,
	vmovdqu	ymm0, YMMWORD PTR .LC4[rip]	 # tmp220,
 # include/gl_setup.hpp:245:         std::string compute_shader_code = Lenia::LoadShaderFile("C:/Users/damix/Documents/GitHub/Lenia/shaders/lenia.comp");
	mov	rdx, rbx	 #, tmp408
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:218:       { _M_dataplus._M_p = __p; }
	mov	QWORD PTR 1280[rsp], rax	 # MEM[(struct basic_string *)_51]._M_dataplus._M_p, tmp218
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	vmovdqu	YMMWORD PTR [rax], ymm1	 # MEM <char[1:56]> [(void *)_134], tmp450
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR 56[rax], 0	 # MEM[(char_type &)_134 + 56],
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	vmovdqu	YMMWORD PTR 24[rax], ymm0	 # MEM <char[1:56]> [(void *)_134], tmp220
 # include/gl_setup.hpp:245:         std::string compute_shader_code = Lenia::LoadShaderFile("C:/Users/damix/Documents/GitHub/Lenia/shaders/lenia.comp");
	lea	rax, 112[rsp]	 # tmp416,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:255:       { _M_allocated_capacity = __capacity; }
	mov	QWORD PTR 1296[rsp], 56	 # MEM[(struct basic_string *)_51].D.45451._M_allocated_capacity,
 # include/gl_setup.hpp:245:         std::string compute_shader_code = Lenia::LoadShaderFile("C:/Users/damix/Documents/GitHub/Lenia/shaders/lenia.comp");
	mov	rcx, rax	 #, tmp416
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:223:       { _M_string_length = __length; }
	mov	QWORD PTR 1288[rsp], 56	 # MEM[(struct basic_string *)_51]._M_string_length,
 # include/gl_setup.hpp:245:         std::string compute_shader_code = Lenia::LoadShaderFile("C:/Users/damix/Documents/GitHub/Lenia/shaders/lenia.comp");
	mov	QWORD PTR 48[rsp], rax	 # %sfp, tmp416
	vzeroupper
.LEHB23:
	call	_ZN5Lenia14LoadShaderFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE	 #
.LEHE23:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rcx, QWORD PTR 1280[rsp]	 # _138, MEM[(struct basic_string *)_51]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:269: 	if (_M_data() == _M_local_data())
	cmp	rcx, rsi	 # _138, tmp412
	je	.L326	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	mov	rax, QWORD PTR 1296[rsp]	 # tmp452, MEM[(struct basic_string *)_51].D.45451._M_allocated_capacity
	lea	rdx, 1[rax]	 # _142,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L326:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	ecx, 57	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:194: 	: allocator_type(__a), _M_p(__dat) { }
	mov	QWORD PTR 1280[rsp], rsi	 # MEM[(struct _Alloc_hider *)_51]._M_p, tmp412
.LEHB24:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwy	 #
.LEHE24:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	vmovdqu	ymm2, YMMWORD PTR .LC3[rip]	 # tmp453,
	vmovdqu	ymm0, YMMWORD PTR .LC5[rip]	 # tmp231,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR 56[rax], 0	 # MEM[(char_type &)_162 + 56],
 # include/gl_setup.hpp:246:         std::string frag_shader_code = Lenia::LoadShaderFile("C:/Users/damix/Documents/GitHub/Lenia/shaders/lenia.frag");
	mov	rdx, rbx	 #, tmp408
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:218:       { _M_dataplus._M_p = __p; }
	mov	QWORD PTR 1280[rsp], rax	 # MEM[(struct basic_string *)_51]._M_dataplus._M_p, tmp229
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	vmovdqu	YMMWORD PTR [rax], ymm2	 # MEM <char[1:56]> [(void *)_162], tmp453
	vmovdqu	YMMWORD PTR 24[rax], ymm0	 # MEM <char[1:56]> [(void *)_162], tmp231
 # include/gl_setup.hpp:246:         std::string frag_shader_code = Lenia::LoadShaderFile("C:/Users/damix/Documents/GitHub/Lenia/shaders/lenia.frag");
	lea	rax, 144[rsp]	 # tmp418,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:255:       { _M_allocated_capacity = __capacity; }
	mov	QWORD PTR 1296[rsp], 56	 # MEM[(struct basic_string *)_51].D.45451._M_allocated_capacity,
 # include/gl_setup.hpp:246:         std::string frag_shader_code = Lenia::LoadShaderFile("C:/Users/damix/Documents/GitHub/Lenia/shaders/lenia.frag");
	mov	rcx, rax	 #, tmp418
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:223:       { _M_string_length = __length; }
	mov	QWORD PTR 1288[rsp], 56	 # MEM[(struct basic_string *)_51]._M_string_length,
 # include/gl_setup.hpp:246:         std::string frag_shader_code = Lenia::LoadShaderFile("C:/Users/damix/Documents/GitHub/Lenia/shaders/lenia.frag");
	mov	QWORD PTR 56[rsp], rax	 # %sfp, tmp418
	vzeroupper
.LEHB25:
	call	_ZN5Lenia14LoadShaderFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE	 #
.LEHE25:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rcx, QWORD PTR 1280[rsp]	 # _166, MEM[(struct basic_string *)_51]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:269: 	if (_M_data() == _M_local_data())
	cmp	rcx, rsi	 # _166, tmp412
	je	.L327	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	mov	rax, QWORD PTR 1296[rsp]	 # tmp455, MEM[(struct basic_string *)_51].D.45451._M_allocated_capacity
	lea	rdx, 1[rax]	 # _170,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L327:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	ecx, 57	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:194: 	: allocator_type(__a), _M_p(__dat) { }
	mov	QWORD PTR 1280[rsp], rsi	 # MEM[(struct _Alloc_hider *)_51]._M_p, tmp412
.LEHB26:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwy	 #
.LEHE26:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	vmovdqu	ymm3, YMMWORD PTR .LC3[rip]	 # tmp456,
	vmovdqu	ymm0, YMMWORD PTR .LC6[rip]	 # tmp242,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR 56[rax], 0	 # MEM[(char_type &)_190 + 56],
 # include/gl_setup.hpp:247:         std::string vertex_shader_code = Lenia::LoadShaderFile("C:/Users/damix/Documents/GitHub/Lenia/shaders/lenia.vert");
	mov	rdx, rbx	 #, tmp408
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:218:       { _M_dataplus._M_p = __p; }
	mov	QWORD PTR 1280[rsp], rax	 # MEM[(struct basic_string *)_51]._M_dataplus._M_p, tmp240
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	vmovdqu	YMMWORD PTR [rax], ymm3	 # MEM <char[1:56]> [(void *)_190], tmp456
	vmovdqu	YMMWORD PTR 24[rax], ymm0	 # MEM <char[1:56]> [(void *)_190], tmp242
 # include/gl_setup.hpp:247:         std::string vertex_shader_code = Lenia::LoadShaderFile("C:/Users/damix/Documents/GitHub/Lenia/shaders/lenia.vert");
	lea	rax, 176[rsp]	 # tmp419,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:255:       { _M_allocated_capacity = __capacity; }
	mov	QWORD PTR 1296[rsp], 56	 # MEM[(struct basic_string *)_51].D.45451._M_allocated_capacity,
 # include/gl_setup.hpp:247:         std::string vertex_shader_code = Lenia::LoadShaderFile("C:/Users/damix/Documents/GitHub/Lenia/shaders/lenia.vert");
	mov	rcx, rax	 #, tmp419
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:223:       { _M_string_length = __length; }
	mov	QWORD PTR 1288[rsp], 56	 # MEM[(struct basic_string *)_51]._M_string_length,
 # include/gl_setup.hpp:247:         std::string vertex_shader_code = Lenia::LoadShaderFile("C:/Users/damix/Documents/GitHub/Lenia/shaders/lenia.vert");
	mov	QWORD PTR 64[rsp], rax	 # %sfp, tmp419
	vzeroupper
.LEHB27:
	call	_ZN5Lenia14LoadShaderFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE	 #
.LEHE27:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rcx, QWORD PTR 1280[rsp]	 # _191, MEM[(struct basic_string *)_51]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:269: 	if (_M_data() == _M_local_data())
	cmp	rcx, rsi	 # _191, tmp412
	je	.L328	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	mov	rax, QWORD PTR 1296[rsp]	 # tmp458, MEM[(struct basic_string *)_51].D.45451._M_allocated_capacity
	lea	rdx, 1[rax]	 # _195,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L328:
 # include/gl_setup.hpp:256:         glGenVertexArrays(1, VAO);
	mov	rax, QWORD PTR .refptr.glad_glGenVertexArrays[rip]	 # tmp251,
	mov	rdx, rbp	 #, VAO
	mov	ecx, 1	 #,
 # include/gl_setup.hpp:249:         float vertices[] = {
	vmovups	ymm0, YMMWORD PTR .LC7[rip]	 # tmp249,
	vmovups	YMMWORD PTR 208[rsp], ymm0	 # MEM <vector(8) float> [(float *)&vertices], tmp249
	vmovups	xmm0, XMMWORD PTR .LC8[rip]	 # tmp250,
	vmovups	XMMWORD PTR 240[rsp], xmm0	 # MEM <vector(4) float> [(float *)&vertices + 32B], tmp250
 # include/gl_setup.hpp:256:         glGenVertexArrays(1, VAO);
	vzeroupper
.LEHB28:
	call	[QWORD PTR [rax]]	 # glad_glGenVertexArrays
 # include/gl_setup.hpp:257:         glGenBuffers(1, VBO);
	mov	rax, QWORD PTR .refptr.glad_glGenBuffers[rip]	 # tmp253,
	mov	rdx, rdi	 #, VBO
	mov	ecx, 1	 #,
	call	[QWORD PTR [rax]]	 # glad_glGenBuffers
 # include/gl_setup.hpp:258:         glfwSwapInterval(0);
	xor	ecx, ecx	 #
	call	glfwSwapInterval	 #
 # include/gl_setup.hpp:259:         glBindVertexArray(*VAO);
	mov	rax, QWORD PTR .refptr.glad_glBindVertexArray[rip]	 # tmp256,
	mov	ecx, DWORD PTR 0[rbp]	 # *VAO_54(D), *VAO_54(D)
	call	[QWORD PTR [rax]]	 # glad_glBindVertexArray
 # include/gl_setup.hpp:261:         glBindBuffer(GL_ARRAY_BUFFER, *VBO);
	mov	rax, QWORD PTR .refptr.glad_glBindBuffer[rip]	 # tmp259,
	mov	edx, DWORD PTR [rdi]	 # *VBO_56(D), *VBO_56(D)
	mov	ecx, 34962	 #,
	call	[QWORD PTR [rax]]	 # glad_glBindBuffer
 # include/gl_setup.hpp:262:         glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);
	mov	r9d, 35044	 #,
	mov	edx, 48	 #,
	mov	ecx, 34962	 #,
	mov	rax, QWORD PTR .refptr.glad_glBufferData[rip]	 # tmp262,
	lea	r8, 208[rsp]	 #,
	call	[QWORD PTR [rax]]	 # glad_glBufferData
 # include/gl_setup.hpp:264:         glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(f32), (void*)0);
	xor	r9d, r9d	 #
	mov	r8d, 5126	 #,
	mov	edx, 3	 #,
	xor	ecx, ecx	 #
	mov	rax, QWORD PTR .refptr.glad_glVertexAttribPointer[rip]	 # tmp264,
	mov	DWORD PTR 32[rsp], 12	 #,
	mov	QWORD PTR 40[rsp], 0	 #,
	call	[QWORD PTR [rax]]	 # glad_glVertexAttribPointer
 # include/gl_setup.hpp:265:         glEnableVertexAttribArray(0);
	mov	rax, QWORD PTR .refptr.glad_glEnableVertexAttribArray[rip]	 # tmp266,
	xor	ecx, ecx	 #
	call	[QWORD PTR [rax]]	 # glad_glEnableVertexAttribArray
	mov	rax, QWORD PTR 112[rsp]	 # compute_shader_code._M_dataplus._M_p, compute_shader_code._M_dataplus._M_p
 # include/gl_setup.hpp:237:         GLuint shader = glCreateShader(shaderType);
	mov	r12, QWORD PTR .refptr.glad_glCreateShader[rip]	 # tmp415,
	mov	ecx, 37305	 #,
	mov	QWORD PTR 88[rsp], rax	 # shaderCode, compute_shader_code._M_dataplus._M_p
	call	[QWORD PTR [r12]]	 # glad_glCreateShader
 # include/gl_setup.hpp:238:         glShaderSource(shader, 1, &shaderCode, NULL);
	mov	rbp, QWORD PTR .refptr.glad_glShaderSource[rip]	 # tmp422,
 # include/gl_setup.hpp:237:         GLuint shader = glCreateShader(shaderType);
	mov	r14d, eax	 # _197, tmp431
 # include/gl_setup.hpp:238:         glShaderSource(shader, 1, &shaderCode, NULL);
	xor	r9d, r9d	 #
	mov	ecx, eax	 #, _197
	lea	r8, 88[rsp]	 #,
	mov	edx, 1	 #,
	call	[QWORD PTR 0[rbp]]	 # glad_glShaderSource
 # include/gl_setup.hpp:239:         glCompileShader(shader);
	mov	rdi, QWORD PTR .refptr.glad_glCompileShader[rip]	 # tmp423,
	mov	ecx, r14d	 #, _197
	call	[QWORD PTR [rdi]]	 # glad_glCompileShader
 # include/gl_setup.hpp:217:         glGetShaderiv(shader, GL_COMPILE_STATUS, &success);
	mov	rax, QWORD PTR .refptr.glad_glGetShaderiv[rip]	 # tmp459,
	mov	r8, rbx	 #, tmp408
	mov	edx, 35713	 #,
	mov	ecx, r14d	 #, _197
	call	[QWORD PTR [rax]]	 # glad_glGetShaderiv
 # include/gl_setup.hpp:218:         if (!success) {
	mov	ecx, DWORD PTR 1280[rsp]	 #, MEM[(int *)_51]
	test	ecx, ecx	 #
	jne	.L329	 #,
 # include/gl_setup.hpp:220:             glGetShaderInfoLog(shader, 512, NULL, infoLog);
	mov	rax, QWORD PTR .refptr.glad_glGetShaderInfoLog[rip]	 # tmp280,
	xor	r8d, r8d	 #
	mov	edx, 512	 #,
	mov	ecx, r14d	 #, _197
	lea	r13, 256[rsp]	 # tmp411,
	mov	r9, r13	 #, tmp411
	call	[QWORD PTR [rax]]	 # glad_glGetShaderInfoLog
 # C:/msys64/mingw64/include/c++/14.2.0/ostream:673: 	__ostream_insert(__out, __s,
	mov	rsi, QWORD PTR .refptr._ZSt4cerr[rip]	 # tmp420,
	mov	r8d, 33	 #,
	lea	rdx, .LC9[rip]	 # tmp282,
	mov	rcx, rsi	 #, tmp420
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:391: 	return __builtin_strlen(__s);
	mov	rcx, r13	 #, tmp411
	call	strlen	 #
 # C:/msys64/mingw64/include/c++/14.2.0/ostream:673: 	__ostream_insert(__out, __s,
	mov	rdx, r13	 #, tmp411
	mov	rcx, rsi	 #, tmp420
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:391: 	return __builtin_strlen(__s);
	mov	r8, rax	 # tmp432,
 # C:/msys64/mingw64/include/c++/14.2.0/ostream:673: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x	 #
 # C:/msys64/mingw64/include/c++/14.2.0/ostream:742:     { return flush(__os.put(__os.widen('\n'))); }
	mov	rax, QWORD PTR [rsi]	 # cerr._vptr.basic_ostream, cerr._vptr.basic_ostream
	mov	rax, QWORD PTR -24[rax]	 # MEM[(long long int *)_205 + -24B], MEM[(long long int *)_205 + -24B]
	mov	r13, QWORD PTR 240[rax+rsi]	 # _213, MEM[(const struct __ctype_type * *)_208 + 240B]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:49:       if (!__f)
	test	r13, r13	 # _213
	je	.L360	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/locale_facets.h:882: 	if (_M_widen_ok)
	cmp	BYTE PTR 56[r13], 0	 # MEM[(const struct ctype *)_213]._M_widen_ok,
	je	.L331	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/ostream:742:     { return flush(__os.put(__os.widen('\n'))); }
	movsx	edx, BYTE PTR 67[r13]	 # _336, MEM[(const struct ctype *)_213]._M_widen[10]
.L332:
	mov	rcx, rsi	 #, tmp420
	call	_ZNSo3putEc	 #
	mov	rcx, rax	 # _211, tmp434
 # C:/msys64/mingw64/include/c++/14.2.0/ostream:764:     { return __os.flush(); }
	call	_ZNSo5flushEv	 #
.L329:
	mov	rax, QWORD PTR 144[rsp]	 # frag_shader_code._M_dataplus._M_p, frag_shader_code._M_dataplus._M_p
 # include/gl_setup.hpp:237:         GLuint shader = glCreateShader(shaderType);
	mov	ecx, 35632	 #,
	mov	QWORD PTR 96[rsp], rax	 # shaderCode, frag_shader_code._M_dataplus._M_p
	call	[QWORD PTR [r12]]	 # glad_glCreateShader
	mov	r13d, eax	 # _234, tmp435
 # include/gl_setup.hpp:238:         glShaderSource(shader, 1, &shaderCode, NULL);
	xor	r9d, r9d	 #
	lea	r8, 96[rsp]	 #,
	mov	edx, 1	 #,
	mov	ecx, eax	 #, _234
	call	[QWORD PTR 0[rbp]]	 # glad_glShaderSource
 # include/gl_setup.hpp:239:         glCompileShader(shader);
	mov	ecx, r13d	 #, _234
	call	[QWORD PTR [rdi]]	 # glad_glCompileShader
 # include/gl_setup.hpp:217:         glGetShaderiv(shader, GL_COMPILE_STATUS, &success);
	mov	rax, QWORD PTR .refptr.glad_glGetShaderiv[rip]	 # tmp460,
	mov	r8, rbx	 #, tmp408
	mov	edx, 35713	 #,
	mov	ecx, r13d	 #, _234
	call	[QWORD PTR [rax]]	 # glad_glGetShaderiv
 # include/gl_setup.hpp:218:         if (!success) {
	mov	edx, DWORD PTR 1280[rsp]	 #, MEM[(int *)_51]
	test	edx, edx	 #
	jne	.L333	 #,
 # include/gl_setup.hpp:220:             glGetShaderInfoLog(shader, 512, NULL, infoLog);
	lea	rax, 768[rsp]	 # tmp409,
	xor	r8d, r8d	 #
	mov	edx, 512	 #,
	mov	ecx, r13d	 #, _234
	vmovq	xmm6, rax	 # tmp409, tmp409
	mov	r9, rax	 #, tmp409
	mov	rax, QWORD PTR .refptr.glad_glGetShaderInfoLog[rip]	 # tmp310,
	call	[QWORD PTR [rax]]	 # glad_glGetShaderInfoLog
 # C:/msys64/mingw64/include/c++/14.2.0/ostream:673: 	__ostream_insert(__out, __s,
	mov	rsi, QWORD PTR .refptr._ZSt4cerr[rip]	 # tmp420,
	mov	r8d, 33	 #,
	lea	rdx, .LC9[rip]	 # tmp312,
	mov	rcx, rsi	 #, tmp420
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:391: 	return __builtin_strlen(__s);
	vmovq	rcx, xmm6	 #, tmp409
	call	strlen	 #
 # C:/msys64/mingw64/include/c++/14.2.0/ostream:673: 	__ostream_insert(__out, __s,
	mov	rcx, rsi	 #, tmp420
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:391: 	return __builtin_strlen(__s);
	mov	r8, rax	 # tmp436,
 # C:/msys64/mingw64/include/c++/14.2.0/ostream:673: 	__ostream_insert(__out, __s,
	vmovq	rdx, xmm6	 #, tmp409
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x	 #
 # C:/msys64/mingw64/include/c++/14.2.0/ostream:742:     { return flush(__os.put(__os.widen('\n'))); }
	mov	rax, QWORD PTR [rsi]	 # cerr._vptr.basic_ostream, cerr._vptr.basic_ostream
	mov	rax, QWORD PTR -24[rax]	 # MEM[(long long int *)_242 + -24B], MEM[(long long int *)_242 + -24B]
	mov	rcx, QWORD PTR 240[rax+rsi]	 # _250, MEM[(const struct __ctype_type * *)_245 + 240B]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:49:       if (!__f)
	test	rcx, rcx	 # _250
	je	.L361	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/locale_facets.h:882: 	if (_M_widen_ok)
	cmp	BYTE PTR 56[rcx], 0	 # MEM[(const struct ctype *)_250]._M_widen_ok,
	je	.L335	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/ostream:742:     { return flush(__os.put(__os.widen('\n'))); }
	movsx	edx, BYTE PTR 67[rcx]	 # _263, MEM[(const struct ctype *)_250]._M_widen[10]
.L336:
	mov	rcx, rsi	 #, tmp420
	call	_ZNSo3putEc	 #
	mov	rcx, rax	 # _248, tmp438
 # C:/msys64/mingw64/include/c++/14.2.0/ostream:764:     { return __os.flush(); }
	call	_ZNSo5flushEv	 #
.L333:
	mov	rax, QWORD PTR 176[rsp]	 # vertex_shader_code._M_dataplus._M_p, vertex_shader_code._M_dataplus._M_p
 # include/gl_setup.hpp:237:         GLuint shader = glCreateShader(shaderType);
	mov	ecx, 35633	 #,
	mov	QWORD PTR 104[rsp], rax	 # shaderCode, vertex_shader_code._M_dataplus._M_p
	call	[QWORD PTR [r12]]	 # glad_glCreateShader
	mov	r12d, eax	 # _271, tmp439
 # include/gl_setup.hpp:238:         glShaderSource(shader, 1, &shaderCode, NULL);
	xor	r9d, r9d	 #
	lea	r8, 104[rsp]	 #,
	mov	edx, 1	 #,
	mov	ecx, eax	 #, _271
	call	[QWORD PTR 0[rbp]]	 # glad_glShaderSource
 # include/gl_setup.hpp:239:         glCompileShader(shader);
	mov	ecx, r12d	 #, _271
	call	[QWORD PTR [rdi]]	 # glad_glCompileShader
 # include/gl_setup.hpp:217:         glGetShaderiv(shader, GL_COMPILE_STATUS, &success);
	mov	rax, QWORD PTR .refptr.glad_glGetShaderiv[rip]	 # tmp462,
	lea	r8, 768[rsp]	 #,
	mov	edx, 35713	 #,
	mov	ecx, r12d	 #, _271
	call	[QWORD PTR [rax]]	 # glad_glGetShaderiv
 # include/gl_setup.hpp:218:         if (!success) {
	mov	eax, DWORD PTR 768[rsp]	 #, MEM[(int *)_50]
	test	eax, eax	 #
	jne	.L337	 #,
 # include/gl_setup.hpp:220:             glGetShaderInfoLog(shader, 512, NULL, infoLog);
	mov	rax, QWORD PTR .refptr.glad_glGetShaderInfoLog[rip]	 # tmp340,
	mov	r9, rbx	 #, tmp408
	xor	r8d, r8d	 #
	mov	ecx, r12d	 #, _271
	mov	edx, 512	 #,
	call	[QWORD PTR [rax]]	 # glad_glGetShaderInfoLog
 # C:/msys64/mingw64/include/c++/14.2.0/ostream:673: 	__ostream_insert(__out, __s,
	mov	rsi, QWORD PTR .refptr._ZSt4cerr[rip]	 # tmp420,
	mov	r8d, 33	 #,
	lea	rdx, .LC9[rip]	 # tmp342,
	mov	rcx, rsi	 #, tmp420
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:391: 	return __builtin_strlen(__s);
	mov	rcx, rbx	 #, tmp408
	call	strlen	 #
 # C:/msys64/mingw64/include/c++/14.2.0/ostream:673: 	__ostream_insert(__out, __s,
	mov	rdx, rbx	 #, tmp408
	mov	rcx, rsi	 #, tmp420
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:391: 	return __builtin_strlen(__s);
	mov	r8, rax	 # tmp440,
 # C:/msys64/mingw64/include/c++/14.2.0/ostream:673: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x	 #
 # C:/msys64/mingw64/include/c++/14.2.0/ostream:742:     { return flush(__os.put(__os.widen('\n'))); }
	mov	rax, QWORD PTR [rsi]	 # cerr._vptr.basic_ostream, cerr._vptr.basic_ostream
	mov	rax, QWORD PTR -24[rax]	 # MEM[(long long int *)_279 + -24B], MEM[(long long int *)_279 + -24B]
	mov	rbx, QWORD PTR 240[rax+rsi]	 # _287, MEM[(const struct __ctype_type * *)_282 + 240B]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:49:       if (!__f)
	test	rbx, rbx	 # _287
	je	.L362	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/locale_facets.h:882: 	if (_M_widen_ok)
	cmp	BYTE PTR 56[rbx], 0	 # MEM[(const struct ctype *)_287]._M_widen_ok,
	je	.L339	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/ostream:742:     { return flush(__os.put(__os.widen('\n'))); }
	movsx	edx, BYTE PTR 67[rbx]	 # _119, MEM[(const struct ctype *)_287]._M_widen[10]
.L340:
	mov	rcx, rsi	 #, tmp420
	call	_ZNSo3putEc	 #
	mov	rcx, rax	 # _285, tmp442
 # C:/msys64/mingw64/include/c++/14.2.0/ostream:764:     { return __os.flush(); }
	call	_ZNSo5flushEv	 #
.L337:
 # include/gl_setup.hpp:271:         glAttachShader(*compute_program, compute_shader);
	mov	rax, QWORD PTR 1896[rsp]	 # tmp463, compute_program
	mov	rbx, QWORD PTR .refptr.glad_glAttachShader[rip]	 # tmp417,
	mov	edx, r14d	 #, _197
	mov	ecx, DWORD PTR [rax]	 # *compute_program_73(D), *compute_program_73(D)
	call	[QWORD PTR [rbx]]	 # glad_glAttachShader
 # include/gl_setup.hpp:272: 		glLinkProgram(*compute_program);
	mov	rax, QWORD PTR 1896[rsp]	 # tmp464, compute_program
	mov	rsi, QWORD PTR .refptr.glad_glLinkProgram[rip]	 # tmp410,
	mov	ecx, DWORD PTR [rax]	 # *compute_program_73(D), *compute_program_73(D)
	call	[QWORD PTR [rsi]]	 # glad_glLinkProgram
 # include/gl_setup.hpp:273:         glAttachShader(*shader_program, fragment_shader);
	mov	ecx, DWORD PTR [r15]	 # *shader_program_76(D), *shader_program_76(D)
	mov	edx, r13d	 #, _234
	call	[QWORD PTR [rbx]]	 # glad_glAttachShader
 # include/gl_setup.hpp:274:         glAttachShader(*shader_program, vertex_shader);
	mov	ecx, DWORD PTR [r15]	 # *shader_program_76(D), *shader_program_76(D)
	mov	edx, r12d	 #, _271
	call	[QWORD PTR [rbx]]	 # glad_glAttachShader
 # include/gl_setup.hpp:275:         glLinkProgram(*shader_program);
	mov	ecx, DWORD PTR [r15]	 # *shader_program_76(D), *shader_program_76(D)
	call	[QWORD PTR [rsi]]	 # glad_glLinkProgram
 # include/gl_setup.hpp:277:         glDeleteShader(compute_shader);
	mov	rbx, QWORD PTR .refptr.glad_glDeleteShader[rip]	 # tmp421,
	mov	ecx, r14d	 #, _197
	call	[QWORD PTR [rbx]]	 # glad_glDeleteShader
 # include/gl_setup.hpp:278:         glDeleteShader(fragment_shader);
	mov	ecx, r13d	 #, _234
	call	[QWORD PTR [rbx]]	 # glad_glDeleteShader
 # include/gl_setup.hpp:279:         glDeleteShader(vertex_shader);
	mov	ecx, r12d	 #, _271
	call	[QWORD PTR [rbx]]	 # glad_glDeleteShader
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rcx, QWORD PTR 176[rsp]	 # _317, vertex_shader_code._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:269: 	if (_M_data() == _M_local_data())
	lea	rax, 192[rsp]	 # tmp380,
	cmp	rcx, rax	 # _317, tmp380
	je	.L341	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	mov	rax, QWORD PTR 192[rsp]	 # tmp465, vertex_shader_code.D.45451._M_allocated_capacity
	lea	rdx, 1[rax]	 # _321,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L341:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rcx, QWORD PTR 144[rsp]	 # _312, frag_shader_code._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:269: 	if (_M_data() == _M_local_data())
	lea	rax, 160[rsp]	 # tmp384,
	cmp	rcx, rax	 # _312, tmp384
	je	.L342	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	mov	rax, QWORD PTR 160[rsp]	 # tmp466, frag_shader_code.D.45451._M_allocated_capacity
	lea	rdx, 1[rax]	 # _316,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L342:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rcx, QWORD PTR 112[rsp]	 # _307, compute_shader_code._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:269: 	if (_M_data() == _M_local_data())
	lea	rax, 128[rsp]	 # tmp388,
	cmp	rcx, rax	 # _307, tmp388
	je	.L359	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	mov	rax, QWORD PTR 128[rsp]	 # tmp467, compute_shader_code.D.45451._M_allocated_capacity
	lea	rdx, 1[rax]	 # _311,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
	nop	
.L359:
 # include/gl_setup.hpp:280:     }
	vmovups	xmm6, XMMWORD PTR 1792[rsp]	 #,
	add	rsp, 1816	 #,
	pop	rbx	 #
	pop	rsi	 #
	pop	rdi	 #
	pop	rbp	 #
	pop	r12	 #
	pop	r13	 #
	pop	r14	 #
	pop	r15	 #
	ret	
	.p2align 4,,10
	.p2align 3
.L331:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/locale_facets.h:884: 	this->_M_widen_init();
	mov	rcx, r13	 #, _213
	call	_ZNKSt5ctypeIcE13_M_widen_initEv	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/locale_facets.h:885: 	return this->do_widen(__c);
	mov	rax, QWORD PTR 0[r13]	 # MEM[(const struct ctype *)_213].D.66525._vptr.facet, MEM[(const struct ctype *)_213].D.66525._vptr.facet
	lea	r8, _ZNKSt5ctypeIcE8do_widenEc[rip]	 # tmp296,
	mov	edx, 10	 # _336,
	mov	rax, QWORD PTR 48[rax]	 # _224, MEM[(int (*) () *)_223 + 48B]
	cmp	rax, r8	 # _224, tmp296
	je	.L332	 #,
	mov	rcx, r13	 #, _213
	call	rax	 # _224
 # C:/msys64/mingw64/include/c++/14.2.0/ostream:742:     { return flush(__os.put(__os.widen('\n'))); }
	movsx	edx, al	 # _336, tmp433
	jmp	.L332	 #
	.p2align 4,,10
	.p2align 3
.L335:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/locale_facets.h:884: 	this->_M_widen_init();
	mov	QWORD PTR 72[rsp], rcx	 # %sfp, _250
	call	_ZNKSt5ctypeIcE13_M_widen_initEv	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/locale_facets.h:885: 	return this->do_widen(__c);
	mov	rcx, QWORD PTR 72[rsp]	 # _250, %sfp
	lea	r8, _ZNKSt5ctypeIcE8do_widenEc[rip]	 # tmp326,
	mov	edx, 10	 # _263,
	mov	rax, QWORD PTR [rcx]	 # MEM[(const struct ctype *)_250].D.66525._vptr.facet, MEM[(const struct ctype *)_250].D.66525._vptr.facet
	mov	rax, QWORD PTR 48[rax]	 # _261, MEM[(int (*) () *)_260 + 48B]
	cmp	rax, r8	 # _261, tmp326
	je	.L336	 #,
	call	rax	 # _261
 # C:/msys64/mingw64/include/c++/14.2.0/ostream:742:     { return flush(__os.put(__os.widen('\n'))); }
	movsx	edx, al	 # _263, tmp437
	jmp	.L336	 #
	.p2align 4,,10
	.p2align 3
.L339:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/locale_facets.h:884: 	this->_M_widen_init();
	mov	rcx, rbx	 #, _287
	call	_ZNKSt5ctypeIcE13_M_widen_initEv	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/locale_facets.h:885: 	return this->do_widen(__c);
	mov	rax, QWORD PTR [rbx]	 # MEM[(const struct ctype *)_287].D.66525._vptr.facet, MEM[(const struct ctype *)_287].D.66525._vptr.facet
	lea	rcx, _ZNKSt5ctypeIcE8do_widenEc[rip]	 # tmp356,
	mov	edx, 10	 # _119,
	mov	rax, QWORD PTR 48[rax]	 # _298, MEM[(int (*) () *)_297 + 48B]
	cmp	rax, rcx	 # _298, tmp356
	je	.L340	 #,
	mov	rcx, rbx	 #, _287
	call	rax	 # _298
.LEHE28:
 # C:/msys64/mingw64/include/c++/14.2.0/ostream:742:     { return flush(__os.put(__os.widen('\n'))); }
	movsx	edx, al	 # _119, tmp441
	jmp	.L340	 #
.L353:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:809:       { _M_dispose(); }
	mov	rsi, rax	 # tmp392, tmp443
	mov	rcx, rbx	 #, tmp408
	vzeroupper
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv	 #
	mov	rcx, rsi	 #, tmp392
.LEHB29:
	call	_Unwind_Resume	 #
.LEHE29:
.L361:
.LEHB30:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:50: 	__throw_bad_cast();
	call	_ZSt16__throw_bad_castv	 #
.L362:
	call	_ZSt16__throw_bad_castv	 #
.LEHE30:
.L356:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:809:       { _M_dispose(); }
	mov	rsi, rax	 # tmp400, tmp445
	mov	rcx, rbx	 #, tmp408
	vzeroupper
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv	 #
	mov	rbx, rsi	 # tmp399, tmp400
	jmp	.L348	 #
.L357:
	mov	rbx, rax	 # tmp399, tmp447
	vzeroupper
.L348:
	mov	rcx, QWORD PTR 56[rsp]	 #, %sfp
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv	 #
.L346:
	mov	rcx, QWORD PTR 48[rsp]	 #, %sfp
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv	 #
	mov	rcx, rbx	 #, tmp394
.LEHB31:
	call	_Unwind_Resume	 #
.LEHE31:
.L354:
	mov	rsi, rax	 # tmp395, tmp444
	mov	rcx, rbx	 #, tmp408
	vzeroupper
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv	 #
	mov	rbx, rsi	 # tmp394, tmp395
	jmp	.L346	 #
.L355:
	mov	rbx, rax	 # tmp394, tmp448
	vzeroupper
	jmp	.L346	 #
.L360:
.LEHB32:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:50: 	__throw_bad_cast();
	call	_ZSt16__throw_bad_castv	 #
.LEHE32:
.L358:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:809:       { _M_dispose(); }
	mov	rcx, QWORD PTR 64[rsp]	 #, %sfp
	mov	rbx, rax	 # tmp404, tmp446
	vzeroupper
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv	 #
	jmp	.L348	 #
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6247:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6247-.LLSDACSB6247
.LLSDACSB6247:
	.uleb128 .LEHB22-.LFB6247
	.uleb128 .LEHE22-.LEHB22
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB23-.LFB6247
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L353-.LFB6247
	.uleb128 0
	.uleb128 .LEHB24-.LFB6247
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L355-.LFB6247
	.uleb128 0
	.uleb128 .LEHB25-.LFB6247
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L354-.LFB6247
	.uleb128 0
	.uleb128 .LEHB26-.LFB6247
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L357-.LFB6247
	.uleb128 0
	.uleb128 .LEHB27-.LFB6247
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L356-.LFB6247
	.uleb128 0
	.uleb128 .LEHB28-.LFB6247
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L358-.LFB6247
	.uleb128 0
	.uleb128 .LEHB29-.LFB6247
	.uleb128 .LEHE29-.LEHB29
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB30-.LFB6247
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L358-.LFB6247
	.uleb128 0
	.uleb128 .LEHB31-.LFB6247
	.uleb128 .LEHE31-.LEHB31
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB32-.LFB6247
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L358-.LFB6247
	.uleb128 0
.LLSDACSE6247:
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
.LFB8652:
	push	r14	 #
	.seh_pushreg	r14
	push	r13	 #
	.seh_pushreg	r13
	push	r12	 #
	.seh_pushreg	r12
	push	rbp	 #
	.seh_pushreg	rbp
	push	rdi	 #
	.seh_pushreg	rdi
	push	rsi	 #
	.seh_pushreg	rsi
	push	rbx	 #
	.seh_pushreg	rbx
	sub	rsp, 80	 #,
	.seh_stackalloc	80
	.seh_endprologue
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:2454:       _Rb_tree<_Key, _Val, _KeyOfValue, _Compare, _Alloc>::
	mov	rsi, r8	 # __args#0, tmp167
	mov	rdi, rcx	 # this, tmp165
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	ecx, 72	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:2454:       _Rb_tree<_Key, _Val, _KeyOfValue, _Compare, _Alloc>::
	mov	r13, rdx	 # __pos, tmp166
	mov	rbp, r9	 # __args#1, tmp168
.LEHB33:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwy	 #
.LEHE33:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	r14, QWORD PTR [rsi]	 # _31, MEM[(const struct basic_string *)__args#0_4(D)]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:1084:       { return _M_string_length; }
	mov	rsi, QWORD PTR 8[rsi]	 # _32, MEM[(const struct basic_string *)__args#0_4(D)]._M_string_length
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:235: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	lea	r12, 48[rax]	 # _30,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	rbx, rax	 # _6, tmp169
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:198: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	mov	QWORD PTR 32[rax], r12	 # MEM[(struct _Alloc_hider *)_6 + 32B]._M_p, _30
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:227: 	if (__dnew > size_type(_S_local_capacity))
	cmp	rsi, 15	 # _32,
	ja	.L393	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:432: 	if (__n == 1)
	cmp	rsi, 1	 # _32,
	je	.L394	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:421: 	if (__n == 0)
	test	rsi, rsi	 # _32
	jne	.L395	 #,
.L370:
	mov	rax, r12	 # prephitmp_58, _30
.L369:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:223:       { _M_string_length = __length; }
	mov	QWORD PTR 40[rbx], rsi	 # MEM[(struct basic_string *)_6 + 32B]._M_string_length, _32
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:2459: 	auto __res = _M_get_insert_hint_unique_pos(__pos, __z._M_key());
	lea	rcx, 64[rsp]	 # tmp147,
	mov	r8, r13	 #, __pos
	mov	rdx, rdi	 #, this
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR [rax+rsi], 0	 # MEM[(char_type &)_44],
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_pair.h:444: 	: first(std::forward<_U1>(__x)), second(std::forward<_U2>(__y))
	mov	rax, QWORD PTR 0[rbp]	 # MEM[(struct Animal * &)__args#1_5(D)], MEM[(struct Animal * &)__args#1_5(D)]
	mov	r14, QWORD PTR 40[rbx]	 # _28, MEM[(long long unsigned int *)_6 + 40B]
	mov	rsi, QWORD PTR 32[rbx]	 # _27, MEM[(char * *)_6 + 32B]
	mov	QWORD PTR 64[rbx], rax	 # MEM[(struct pair *)_6 + 32B].second, MEM[(struct Animal * &)__args#1_5(D)]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:2459: 	auto __res = _M_get_insert_hint_unique_pos(__pos, __z._M_key());
	mov	QWORD PTR 32[rsp], r14	 #, _28
	mov	r9, rsi	 #, _27
	call	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5Lenia6AnimalEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISB_ERS7_.isra.0	 #
	mov	rbp, QWORD PTR 72[rsp]	 # __res,
	mov	rax, QWORD PTR 64[rsp]	 # __res,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:2460: 	if (__res.second)
	test	rbp, rbp	 # __res
	je	.L396	 #,
	mov	ecx, 1	 # prephitmp_36,
	lea	r9, 8[rdi]	 # _60,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:2378: 			    || _M_impl._M_key_compare(_S_key(__z),
	test	rax, rax	 # __res
	je	.L397	 #,
.L375:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:2381:       _Rb_tree_insert_and_rebalance(__insert_left, __z, __p,
	mov	r8, rbp	 #, __res
	mov	rdx, rbx	 #, _6
	call	_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:2383:       ++_M_impl._M_node_count;
	add	QWORD PTR 40[rdi], 1	 # this_3(D)->_M_impl.D.166958._M_node_count,
	mov	rdi, rbx	 # D.213317, _6
.L378:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:2463:       }
	mov	rax, rdi	 #, D.213317
	add	rsp, 80	 #,
	pop	rbx	 #
	pop	rsi	 #
	pop	rdi	 #
	pop	rbp	 #
	pop	r12	 #
	pop	r13	 #
	pop	r14	 #
	ret	
	.p2align 4,,10
	.p2align 3
.L394:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	movzx	eax, BYTE PTR [r14]	 # _41, MEM[(const char_type &)_31]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR 48[rbx], al	 # MEM[(char_type &)_6 + 48], _41
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:351:       }
	jmp	.L370	 #
	.p2align 4,,10
	.p2align 3
.L396:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:2462: 	return iterator(__res.first);
	mov	rdi, rax	 # D.213317, __res
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:269: 	if (_M_data() == _M_local_data())
	cmp	rsi, r12	 # _27, _30
	je	.L379	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	mov	rax, QWORD PTR 48[rbx]	 # tmp178, MEM[(struct basic_string *)_6 + 32B].D.45451._M_allocated_capacity
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	rcx, rsi	 #, _27
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	lea	rdx, 1[rax]	 # _85,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L379:
	mov	edx, 72	 #,
	mov	rcx, rbx	 #, _6
	call	_ZdlPvy	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:631:       }
	jmp	.L378	 #
	.p2align 4,,10
	.p2align 3
.L393:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:143:       if (__capacity > max_size())
	test	rsi, rsi	 # _32
	js	.L398	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:134: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	mov	rcx, rsi	 # _50, _32
	add	rcx, 1	 # _50,
	js	.L399	 #,
.LEHB34:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwy	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:218:       { _M_dataplus._M_p = __p; }
	mov	QWORD PTR 32[rbx], rax	 # MEM[(struct basic_string *)_6 + 32B]._M_dataplus._M_p, _17
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	rcx, rax	 # _17, tmp170
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:255:       { _M_allocated_capacity = __capacity; }
	mov	QWORD PTR 48[rbx], rsi	 # MEM[(struct basic_string *)_6 + 32B].D.45451._M_allocated_capacity, _32
.L367:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	r8, rsi	 #, _32
	mov	rdx, r14	 #, _31
	call	memcpy	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rax, QWORD PTR 32[rbx]	 # prephitmp_58, MEM[(const struct basic_string *)_6 + 32B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	jmp	.L369	 #
	.p2align 4,,10
	.p2align 3
.L397:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:2377:       bool __insert_left = (__x != 0 || __p == _M_end()
	cmp	rbp, r9	 # __res, _60
	je	.L375	 #,
	mov	r12, QWORD PTR 40[rbp]	 # _68, MEM[(long long unsigned int *)__res$second_7 + 40B]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:238:       if (__b < __a)
	cmp	r14, r12	 # _28, _68
	mov	r8, r12	 # _71, _68
	cmovbe	r8, r14	 # _28,, _71
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:368: 	if (__n == 0)
	test	r8, r8	 # _71
	je	.L376	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:381: 	return __builtin_memcmp(__s1, __s2, __n);
	mov	rdx, QWORD PTR 32[rbp]	 # MEM[(char * *)__res$second_7 + 32B], MEM[(char * *)__res$second_7 + 32B]
	mov	rcx, rsi	 #, _27
	mov	QWORD PTR 56[rsp], r9	 # %sfp, _60
	call	memcmp	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:3235: 	if (!__r)
	mov	r9, QWORD PTR 56[rsp]	 # _60, %sfp
	test	eax, eax	 # __r
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:381: 	return __builtin_memcmp(__s1, __s2, __n);
	mov	ecx, eax	 # __r, tmp173
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:3235: 	if (!__r)
	jne	.L377	 #,
.L376:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:495: 	const difference_type __d = difference_type(__n1 - __n2);
	mov	rdx, r14	 # _28, _28
	xor	ecx, ecx	 # prephitmp_36
	sub	rdx, r12	 # _28, _68
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:497: 	if (__d > __gnu_cxx::__numeric_traits<int>::__max)
	cmp	rdx, 2147483647	 # _75,
	jg	.L375	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:499: 	else if (__d < __gnu_cxx::__numeric_traits<int>::__min)
	cmp	rdx, -2147483648	 # _75,
	jl	.L383	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:502: 	  return int(__d);
	mov	ecx, edx	 # __r, _75
.L377:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:2381:       _Rb_tree_insert_and_rebalance(__insert_left, __z, __p,
	shr	ecx, 31	 # prephitmp_36,
	jmp	.L375	 #
	.p2align 4,,10
	.p2align 3
.L399:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:140: 	    std::__throw_bad_alloc();
	call	_ZSt17__throw_bad_allocv	 #
	.p2align 4,,10
	.p2align 3
.L395:
	mov	rcx, r12	 # _17, _30
	jmp	.L367	 #
.L383:
	mov	ecx, 1	 # prephitmp_36,
	jmp	.L375	 #
.L398:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:144: 	std::__throw_length_error(__N("basic_string::_M_create"));
	lea	rcx, .LC0[rip]	 # tmp139,
	call	_ZSt20__throw_length_errorPKc	 #
.LEHE34:
.L384:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:597: 	  __catch(...)
	mov	rcx, rax	 # tmp148, tmp171
	vzeroupper
	call	__cxa_begin_catch	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	edx, 72	 #,
	mov	rcx, rbx	 #, _6
	call	_ZdlPvy	 #
.LEHB35:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:601: 	      __throw_exception_again;
	call	__cxa_rethrow	 #
.LEHE35:
.L385:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:597: 	  __catch(...)
	mov	rbx, rax	 # tmp149, tmp172
	vzeroupper
	call	__cxa_end_catch	 #
	mov	rcx, rbx	 #, tmp149
.LEHB36:
	call	_Unwind_Resume	 #
	nop	
.LEHE36:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
	.align 4
.LLSDA8652:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT8652-.LLSDATTD8652
.LLSDATTD8652:
	.byte	0x1
	.uleb128 .LLSDACSE8652-.LLSDACSB8652
.LLSDACSB8652:
	.uleb128 .LEHB33-.LFB8652
	.uleb128 .LEHE33-.LEHB33
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB34-.LFB8652
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L384-.LFB8652
	.uleb128 0x1
	.uleb128 .LEHB35-.LFB8652
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L385-.LFB8652
	.uleb128 0
	.uleb128 .LEHB36-.LFB8652
	.uleb128 .LEHE36-.LEHB36
	.uleb128 0
	.uleb128 0
.LLSDACSE8652:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT8652:
	.section	.text$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5Lenia6AnimalEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE22_M_emplace_hint_uniqueIJRS5_RSA_EEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_,"x"
	.linkonce discard
	.seh_endproc
	.section .rdata,"dr"
.LC11:
	.ascii "Failed to initialize GLFW\0"
.LC12:
	.ascii "\0"
.LC13:
	.ascii "resources/animals.csv\0"
	.align 8
.LC14:
	.ascii "file resources/animals.csv couldn't be opened\0"
	.align 8
.LC15:
	.ascii "basic_string: construction from null is not valid\0"
.LC16:
	.ascii "vector::_M_realloc_append\0"
.LC17:
	.ascii "stoul\0"
.LC18:
	.ascii "stof\0"
.LC19:
	.ascii "stoi\0"
.LC21:
	.ascii "Paused: \0"
	.align 8
.LC23:
	.ascii "Render Time: %.4f, FPS: %.1f, Average: %.4f, Field Sum: %.4f, Frame Count: %i\0"
	.section	.text.startup,"x"
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB7284:
	push	r15	 #
	.seh_pushreg	r15
	push	r14	 #
	.seh_pushreg	r14
	push	r13	 #
	.seh_pushreg	r13
	push	r12	 #
	.seh_pushreg	r12
	push	rbp	 #
	.seh_pushreg	rbp
	push	rdi	 #
	.seh_pushreg	rdi
	push	rsi	 #
	.seh_pushreg	rsi
	push	rbx	 #
	.seh_pushreg	rbx
	sub	rsp, 2312	 #,
	.seh_stackalloc	2312
	vmovups	XMMWORD PTR 2144[rsp], xmm6	 #,
	.seh_savexmm	xmm6, 2144
	vmovups	XMMWORD PTR 2160[rsp], xmm7	 #,
	.seh_savexmm	xmm7, 2160
	vmovups	XMMWORD PTR 2176[rsp], xmm8	 #,
	.seh_savexmm	xmm8, 2176
	vmovups	XMMWORD PTR 2192[rsp], xmm9	 #,
	.seh_savexmm	xmm9, 2192
	vmovups	XMMWORD PTR 2208[rsp], xmm10	 #,
	.seh_savexmm	xmm10, 2208
	vmovups	XMMWORD PTR 2224[rsp], xmm11	 #,
	.seh_savexmm	xmm11, 2224
	vmovups	XMMWORD PTR 2240[rsp], xmm12	 #,
	.seh_savexmm	xmm12, 2240
	vmovups	XMMWORD PTR 2256[rsp], xmm13	 #,
	.seh_savexmm	xmm13, 2256
	vmovups	XMMWORD PTR 2272[rsp], xmm14	 #,
	.seh_savexmm	xmm14, 2272
	vmovups	XMMWORD PTR 2288[rsp], xmm15	 #,
	.seh_savexmm	xmm15, 2288
	.seh_endprologue
 # source/main.cpp:57: {
	call	__main	 #
.LEHB37:
 # include/gl_setup.hpp:200:         if (!glfwInit()) {
	call	glfwInit	 #
 # include/gl_setup.hpp:200:         if (!glfwInit()) {
	test	eax, eax	 # tmp1672
	je	.L858	 #,
 # include/gl_setup.hpp:204:         window = glfwCreateWindow(W, H, "", NULL, NULL);
	xor	r9d, r9d	 #
	mov	edx, 1024	 #,
	mov	ecx, 1024	 #,
	mov	QWORD PTR 32[rsp], 0	 #,
	lea	r8, .LC12[rip]	 #,
	call	glfwCreateWindow	 #
	vmovq	xmm12, rax	 # _261, tmp1675
 # include/gl_setup.hpp:205:         if (!window)
	test	rax, rax	 # _261
	je	.L859	 #,
 # include/gl_setup.hpp:210:         glfwMakeContextCurrent(window);
	mov	rcx, rax	 #, _261
	call	glfwMakeContextCurrent	 #
 # include/gl_setup.hpp:211:         gladLoadGLLoader((GLADloadproc)glfwGetProcAddress);
	mov	rcx, QWORD PTR .refptr.glfwGetProcAddress[rip]	 #,
	call	gladLoadGLLoader	 #
 # source/main.cpp:62:     GLuint shader_program = glCreateProgram();
	mov	rbx, QWORD PTR .refptr.glad_glCreateProgram[rip]	 # tmp760,
	call	[QWORD PTR [rbx]]	 # glad_glCreateProgram
	vmovd	xmm13, eax	 # _70, tmp1676
 # source/main.cpp:62:     GLuint shader_program = glCreateProgram();
	mov	DWORD PTR 384[rsp], eax	 # shader_program, _70
 # source/main.cpp:63:     GLuint compute_program = glCreateProgram();
	call	[QWORD PTR [rbx]]	 # glad_glCreateProgram
 # source/main.cpp:65:     Lenia::SetupGL(&shader_program, &compute_program, &VAO, &VBO);
	lea	r9, 396[rsp]	 # tmp1621,
	lea	rdx, 388[rsp]	 # tmp766,
 # source/main.cpp:63:     GLuint compute_program = glCreateProgram();
	vmovd	xmm14, eax	 # _73, tmp1677
 # source/main.cpp:63:     GLuint compute_program = glCreateProgram();
	mov	DWORD PTR 388[rsp], eax	 # compute_program, _73
 # source/main.cpp:65:     Lenia::SetupGL(&shader_program, &compute_program, &VAO, &VBO);
	lea	rax, 392[rsp]	 # tmp1620,
	lea	rcx, 384[rsp]	 # tmp767,
	mov	r8, rax	 #, tmp1620
	mov	QWORD PTR 352[rsp], r9	 # %sfp, tmp1621
	mov	QWORD PTR 344[rsp], rax	 # %sfp, tmp1620
	call	_ZN5Lenia7SetupGLEPjS0_S0_S0_	 #
 # source/main.cpp:16:         std::ifstream file("resources/animals.csv");
	lea	rax, 1632[rsp]	 # tmp1635,
 # source/main.cpp:67:     GLubyte indices[] = {
	mov	r8d, 770	 #,
 # source/main.cpp:16:         std::ifstream file("resources/animals.csv");
	lea	rdx, .LC13[rip]	 # tmp769,
	mov	rcx, rax	 #, tmp1635
 # source/main.cpp:67:     GLubyte indices[] = {
	mov	WORD PTR 406[rsp], r8w	 # indices,
 # source/main.cpp:16:         std::ifstream file("resources/animals.csv");
	mov	r8d, 8	 #,
	mov	QWORD PTR 136[rsp], rax	 # %sfp, tmp1635
 # source/main.cpp:67:     GLubyte indices[] = {
	mov	DWORD PTR 402[rsp], 131328	 # indices,
 # source/main.cpp:16:         std::ifstream file("resources/animals.csv");
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode	 #
.LEHE37:
 # C:/msys64/mingw64/include/c++/14.2.0/fstream:276:       { return _M_file.is_open(); }
	lea	rcx, 1720[rsp]	 # tmp771,
	call	_ZNKSt12__basic_fileIcE7is_openEv	 #
	mov	BYTE PTR 299[rsp], al	 # %sfp, tmp1678
 # source/main.cpp:17:         if (!file.is_open()) {
	test	al, al	 #
	je	.L860	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:198: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	lea	rax, 432[rsp]	 # tmp776,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR 432[rsp], 0	 # MEM[(char_type &)&line + 16],
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:198: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	mov	QWORD PTR 416[rsp], rax	 # MEM[(struct _Alloc_hider *)&line]._M_p, tmp776
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:4119:     { return std::getline(__is, __str, __is.widen('\n')); }
	mov	rax, QWORD PTR 1632[rsp]	 # MEM[(struct basic_istream *)_2325]._vptr.basic_istream, MEM[(struct basic_istream *)_2325]._vptr.basic_istream
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:223:       { _M_string_length = __length; }
	mov	QWORD PTR 424[rsp], 0	 # MEM[(struct basic_string *)&line]._M_string_length,
	mov	rax, QWORD PTR -24[rax]	 # MEM[(long long int *)_571 + -24B], MEM[(long long int *)_571 + -24B]
	mov	rbx, QWORD PTR 1872[rsp+rax]	 # _588, MEM[(const struct __ctype_type * *)_558 + 240B]
	lea	rax, 416[rsp]	 # tmp1622,
	mov	QWORD PTR 208[rsp], rax	 # %sfp, tmp1622
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:49:       if (!__f)
	test	rbx, rbx	 # _588
	je	.L628	 #,
	mov	rax, QWORD PTR .refptr._ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE[rip]	 # tmp1871,
	add	rax, 64	 # _1911,
	vmovq	xmm11, rax	 # _1911, _1911
	mov	rax, QWORD PTR .refptr._ZTVSt15basic_streambufIcSt11char_traitsIcEE[rip]	 # tmp1872,
	add	rax, 16	 # tmp1669,
	vpinsrq	xmm7, xmm11, rax, 1	 # _1906, _1911, tmp1669
.L407:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/locale_facets.h:882: 	if (_M_widen_ok)
	cmp	BYTE PTR 56[rbx], 0	 # MEM[(const struct ctype *)_774]._M_widen_ok,
	je	.L631	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:4119:     { return std::getline(__is, __str, __is.widen('\n')); }
	movsx	r8d, BYTE PTR 67[rbx]	 # prephitmp_1178, MEM[(const struct ctype *)_774]._M_widen[10]
.L632:
	mov	rdx, QWORD PTR 208[rsp]	 #, %sfp
	mov	rcx, QWORD PTR 136[rsp]	 #, %sfp
.LEHB38:
	call	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_	 #
.LEHE38:
 # source/main.cpp:22:         while (std::getline(file, line)) {
	mov	rdx, QWORD PTR [rax]	 # _1143->_vptr.basic_istream, _1143->_vptr.basic_istream
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:142:       { return _M_streambuf_state; }
	mov	rdx, QWORD PTR -24[rdx]	 # MEM[(long long int *)_246 + -24B], MEM[(long long int *)_246 + -24B]
 # source/main.cpp:22:         while (std::getline(file, line)) {
	test	BYTE PTR 32[rax+rdx], 5	 # MEM[(const struct basic_ios *)_249].D.69971._M_streambuf_state,
	jne	.L861	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:466: 	_M_streambuf(0), _M_ctype(0), _M_num_put(0), _M_num_get(0)
	lea	rax, 960[rsp]	 # tmp1607,
	lea	rsi, 832[rsp]	 # tmp1646,
	mov	rcx, rax	 #, tmp1607
	mov	QWORD PTR 120[rsp], rsi	 # %sfp, tmp1646
	mov	QWORD PTR 192[rsp], rax	 # %sfp, tmp1607
	call	_ZNSt8ios_baseC2Ev	 #
 # C:/msys64/mingw64/include/c++/14.2.0/istream:697:       : _M_gcount(streamsize(0))
	mov	rbx, QWORD PTR .refptr._ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE[rip]	 # tmp1630,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:465:       : ios_base(), _M_tie(0), _M_fill(char_type()), _M_fill_init(false), 
	xor	ecx, ecx	 #
 # C:/msys64/mingw64/include/c++/14.2.0/istream:698:       { this->init(0); }
	xor	edx, edx	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:466: 	_M_streambuf(0), _M_ctype(0), _M_num_put(0), _M_num_get(0)
	mov	rax, QWORD PTR .refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE[rip]	 # tmp1876,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:466: 	_M_streambuf(0), _M_ctype(0), _M_num_put(0), _M_num_get(0)
	vpxor	xmm0, xmm0, xmm0	 # tmp783
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:465:       : ios_base(), _M_tie(0), _M_fill(char_type()), _M_fill_init(false), 
	mov	WORD PTR 1184[rsp], cx	 # MEM <unsigned short> [(void *)&ss + 352B],
 # C:/msys64/mingw64/include/c++/14.2.0/istream:697:       : _M_gcount(streamsize(0))
	mov	rbp, QWORD PTR 16[rbx]	 # _315, MEM[(const void * *)&_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE + 16B]
	mov	rdi, QWORD PTR 24[rbx]	 # _319, MEM[(const void * *)&_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE + 24B]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:466: 	_M_streambuf(0), _M_ctype(0), _M_num_put(0), _M_num_get(0)
	vmovdqu	YMMWORD PTR 1192[rsp], ymm0	 # MEM <vector(4) long long unsigned int> [(void *)&ss + 360B], tmp783
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:465:       : ios_base(), _M_tie(0), _M_fill(char_type()), _M_fill_init(false), 
	mov	QWORD PTR 1176[rsp], 0	 # MEM[(struct basic_ios *)&ss + 128B]._M_tie,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:466: 	_M_streambuf(0), _M_ctype(0), _M_num_put(0), _M_num_get(0)
	add	rax, 16	 # tmp782,
	mov	QWORD PTR 960[rsp], rax	 # MEM[(struct basic_ios *)&ss + 128B].D.69971._vptr.ios_base, tmp782
 # C:/msys64/mingw64/include/c++/14.2.0/istream:697:       : _M_gcount(streamsize(0))
	mov	rax, QWORD PTR -24[rbp]	 # MEM[(long long int *)_315 + -24B], MEM[(long long int *)_315 + -24B]
	mov	QWORD PTR 832[rsp], rbp	 # MEM[(struct basic_istream *)&ss]._vptr.basic_istream, _315
	mov	QWORD PTR 152[rsp], rdi	 # %sfp, _319
	mov	QWORD PTR 832[rsp+rax], rdi	 # MEM[(struct basic_ios *)_318].D.69971._vptr.ios_base, _319
 # C:/msys64/mingw64/include/c++/14.2.0/istream:697:       : _M_gcount(streamsize(0))
	mov	QWORD PTR 840[rsp], 0	 # MEM[(struct basic_istream *)&ss]._M_gcount,
 # C:/msys64/mingw64/include/c++/14.2.0/istream:698:       { this->init(0); }
	add	rsi, QWORD PTR -24[rbp]	 # _322, MEM[(long long int *)_315 + -24B]
	mov	rcx, rsi	 # _322, _322
	vzeroupper
.LEHB39:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E	 #
.LEHE39:
 # C:/msys64/mingw64/include/c++/14.2.0/ostream:438:       { this->init(0); }
	mov	rax, QWORD PTR 32[rbx]	 # _324, MEM[(const void * *)&_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE + 32B]
 # C:/msys64/mingw64/include/c++/14.2.0/ostream:438:       { this->init(0); }
	xor	edx, edx	 #
 # C:/msys64/mingw64/include/c++/14.2.0/ostream:438:       { this->init(0); }
	mov	QWORD PTR 848[rsp], rax	 # MEM[(struct basic_ostream *)&ss + 16B]._vptr.basic_ostream, _324
	mov	QWORD PTR 160[rsp], rax	 # %sfp, _324
	mov	rax, QWORD PTR -24[rax]	 # MEM[(long long int *)_324 + -24B], MEM[(long long int *)_324 + -24B]
	lea	rcx, 848[rsp+rax]	 # _327,
	mov	rax, QWORD PTR 40[rbx]	 # _328, MEM[(const void * *)&_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE + 40B]
	mov	QWORD PTR [rcx], rax	 # MEM[(struct basic_ios *)_327].D.69971._vptr.ios_base, _328
	mov	QWORD PTR 168[rsp], rax	 # %sfp, _328
.LEHB40:
 # C:/msys64/mingw64/include/c++/14.2.0/ostream:438:       { this->init(0); }
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E	 #
.LEHE40:
 # C:/msys64/mingw64/include/c++/14.2.0/istream:1016:       : __istream_type(), __ostream_type() { }
	mov	rax, QWORD PTR 8[rbx]	 # _329, MEM[(const void * *)&_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE + 8B]
	mov	rsi, QWORD PTR 48[rbx]	 # _333, MEM[(const void * *)&_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE + 48B]
 # C:/msys64/mingw64/include/c++/14.2.0/streambuf:471:       : _M_in_beg(0), _M_in_cur(0), _M_in_end(0),
	vpxor	xmm0, xmm0, xmm0	 # tmp802
 # C:/msys64/mingw64/include/c++/14.2.0/istream:1016:       : __istream_type(), __ostream_type() { }
	mov	QWORD PTR 176[rsp], rax	 # %sfp, _329
	mov	rax, QWORD PTR -24[rax]	 # MEM[(long long int *)_329 + -24B], MEM[(long long int *)_329 + -24B]
	mov	QWORD PTR 184[rsp], rsi	 # %sfp, _333
	mov	QWORD PTR 832[rsp+rax], rsi	 # MEM[(struct basic_ios *)_332].D.69971._vptr.ios_base, _333
 # C:/msys64/mingw64/include/c++/14.2.0/sstream:1061:       : __iostream_type(), _M_stringbuf(__str, __m)
	mov	rax, QWORD PTR .refptr._ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE[rip]	 # tmp1889,
 # C:/msys64/mingw64/include/c++/14.2.0/streambuf:471:       : _M_in_beg(0), _M_in_cur(0), _M_in_end(0),
	vmovdqu	YMMWORD PTR 864[rsp], ymm0	 # MEM <vector(4) long long unsigned int> [(char_type * *)&ss + 32B], tmp802
 # C:/msys64/mingw64/include/c++/14.2.0/streambuf:472:       _M_out_beg(0), _M_out_cur(0), _M_out_end(0),
	vpxor	xmm0, xmm0, xmm0	 # tmp803
 # C:/msys64/mingw64/include/c++/14.2.0/sstream:1061:       : __iostream_type(), _M_stringbuf(__str, __m)
	vmovdqu	XMMWORD PTR 848[rsp], xmm7	 # MEM <vector(2) long long unsigned int> [(int (*) () * *)&ss + 16B], _1906
	add	rax, 24	 # tmp799,
	mov	QWORD PTR 832[rsp], rax	 # MEM[(struct basic_stringstream *)&ss].D.165183.D.103579._vptr.basic_istream, tmp799
	mov	rax, QWORD PTR .refptr._ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE[rip]	 # tmp1890,
 # C:/msys64/mingw64/include/c++/14.2.0/streambuf:472:       _M_out_beg(0), _M_out_cur(0), _M_out_end(0),
	vmovdqu	XMMWORD PTR 896[rsp], xmm0	 # MEM <vector(2) long long unsigned int> [(char_type * *)&ss + 64B], tmp803
 # C:/msys64/mingw64/include/c++/14.2.0/sstream:1061:       : __iostream_type(), _M_stringbuf(__str, __m)
	add	rax, 104	 # tmp801,
	mov	QWORD PTR 960[rsp], rax	 # MEM[(struct basic_ios *)&ss + 128B].D.69971._vptr.ios_base, tmp801
 # C:/msys64/mingw64/include/c++/14.2.0/streambuf:473:       _M_buf_locale(locale())
	lea	rax, 912[rsp]	 # tmp1605,
	mov	QWORD PTR 224[rsp], rax	 # %sfp, tmp1605
	mov	rcx, rax	 #, tmp1605
	vzeroupper
	call	_ZNSt6localeC1Ev	 #
 # C:/msys64/mingw64/include/c++/14.2.0/sstream:149: 	_M_string(__str.data(), __str.size(), __str.get_allocator())
	mov	rax, QWORD PTR .refptr._ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE[rip]	 # tmp1892,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rsi, QWORD PTR 416[rsp]	 # _343, MEM[(const struct basic_string *)&line]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/sstream:148:       : __streambuf_type(), _M_mode(),
	mov	DWORD PTR 920[rsp], 0	 # MEM[(struct basic_stringbuf *)&ss + 24B]._M_mode,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:1077:       { return _M_string_length; }
	mov	rbx, QWORD PTR 424[rsp]	 # _342, MEM[(const struct basic_string *)&line]._M_string_length
 # C:/msys64/mingw64/include/c++/14.2.0/sstream:149: 	_M_string(__str.data(), __str.size(), __str.get_allocator())
	add	rax, 16	 # tmp807,
	mov	QWORD PTR 856[rsp], rax	 # MEM[(struct basic_stringbuf *)&ss + 24B].D.164381._vptr.basic_streambuf, tmp807
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:194: 	: allocator_type(__a), _M_p(__dat) { }
	lea	rax, 944[rsp]	 # tmp1606,
	mov	QWORD PTR 232[rsp], rax	 # %sfp, tmp1606
	mov	QWORD PTR 928[rsp], rax	 # MEM[(struct _Alloc_hider *)&ss + 96B]._M_p, tmp1606
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:629: 	if (__s == 0 && __n > 0)
	test	rsi, rsi	 # _343
	jne	.L410	 #,
	test	rbx, rbx	 # _342
	jne	.L862	 #,
.L410:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:227: 	if (__dnew > size_type(_S_local_capacity))
	cmp	rbx, 15	 # _342,
	ja	.L863	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:432: 	if (__n == 1)
	cmp	rbx, 1	 # _342,
	jne	.L417	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	movzx	eax, BYTE PTR [rsi]	 # _358, MEM[(const char_type &)_343]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR 944[rsp], al	 # MEM[(char_type &)&ss + 112], _358
.L418:
	mov	rax, QWORD PTR 928[rsp]	 # MEM[(const struct basic_string *)&ss + 96B]._M_dataplus._M_p, MEM[(const struct basic_string *)&ss + 96B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:223:       { _M_string_length = __length; }
	mov	QWORD PTR 936[rsp], rbx	 # MEM[(struct basic_string *)&ss + 96B]._M_string_length, _342
 # C:/msys64/mingw64/include/c++/14.2.0/sstream:342: 	_M_sync(const_cast<char_type*>(_M_string.data()), 0, __len);
	xor	r9d, r9d	 #
	xor	r8d, r8d	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR [rax+rbx], 0	 # MEM[(char_type &)_361],
 # C:/msys64/mingw64/include/c++/14.2.0/sstream:342: 	_M_sync(const_cast<char_type*>(_M_string.data()), 0, __len);
	lea	rbx, 856[rsp]	 # tmp1647,
	mov	rdx, QWORD PTR 928[rsp]	 #, MEM[(const struct basic_string *)&ss + 96B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/sstream:338: 	_M_mode = __mode;
	mov	DWORD PTR 920[rsp], 24	 # MEM[(struct basic_stringbuf *)&ss + 24B]._M_mode,
 # C:/msys64/mingw64/include/c++/14.2.0/sstream:342: 	_M_sync(const_cast<char_type*>(_M_string.data()), 0, __len);
	mov	rcx, rbx	 #, tmp1647
.LEHB41:
	call	_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcyy	 #
.LEHE41:
 # C:/msys64/mingw64/include/c++/14.2.0/sstream:1062:       { this->init(&_M_stringbuf); }
	mov	rcx, QWORD PTR 192[rsp]	 #, %sfp
	mov	rdx, rbx	 #, tmp1647
.LEHB42:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E	 #
.LEHE42:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:198: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	lea	rax, 464[rsp]	 # tmp1627,
 # source/main.cpp:23:             std::vector<std::string> tokens;
	xor	ebx, ebx	 # __new_finish
	xor	esi, esi	 # tokens
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:223:       { _M_string_length = __length; }
	mov	QWORD PTR 456[rsp], 0	 # MEM[(struct basic_string *)&token]._M_string_length,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:198: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	mov	QWORD PTR 448[rsp], rax	 # MEM[(struct _Alloc_hider *)&token]._M_p, tmp1627
	vmovq	xmm15, rax	 # tmp1627, tmp1627
	lea	rax, 448[rsp]	 # tmp1625,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1908: 	if (max_size() - size() < __n)
	movabs	r15, 288230376151711743	 # tmp1665,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR 464[rsp], 0	 # MEM[(char_type &)&token + 16],
 # source/main.cpp:23:             std::vector<std::string> tokens;
	mov	QWORD PTR 104[rsp], 0	 # %sfp,
	mov	QWORD PTR 96[rsp], rax	 # %sfp, tmp1625
	.p2align 4
	.p2align 3
.L426:
 # source/main.cpp:27:             while (std::getline(ss, token, ','))
	mov	rdx, QWORD PTR 96[rsp]	 #, %sfp
	mov	rcx, QWORD PTR 120[rsp]	 #, %sfp
	mov	r8d, 44	 #,
.LEHB43:
	call	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_	 #
 # source/main.cpp:27:             while (std::getline(ss, token, ','))
	mov	rdx, QWORD PTR [rax]	 # _180->_vptr.basic_istream, _180->_vptr.basic_istream
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:142:       { return _M_streambuf_state; }
	mov	rdx, QWORD PTR -24[rdx]	 # MEM[(long long int *)_181 + -24B], MEM[(long long int *)_181 + -24B]
 # source/main.cpp:27:             while (std::getline(ss, token, ','))
	test	BYTE PTR 32[rax+rdx], 5	 # MEM[(const struct basic_ios *)_184].D.69971._M_streambuf_state,
	jne	.L864	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1285: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	cmp	QWORD PTR 104[rsp], rbx	 # %sfp, __new_finish
	je	.L427	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:1084:       { return _M_string_length; }
	mov	rdi, QWORD PTR 456[rsp]	 # _377, MEM[(const struct basic_string *)&token]._M_string_length
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:235: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	lea	rcx, 16[rbx]	 # _375,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	r12, QWORD PTR 448[rsp]	 # _376, MEM[(const struct basic_string *)&token]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:198: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	mov	QWORD PTR [rbx], rcx	 # MEM[(struct _Alloc_hider *)tokens$D169361$_M_impl$D168694$_M_finish_1199]._M_p, _375
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:227: 	if (__dnew > size_type(_S_local_capacity))
	cmp	rdi, 15	 # _377,
	ja	.L865	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:432: 	if (__n == 1)
	cmp	rdi, 1	 # _377,
	je	.L866	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:421: 	if (__n == 0)
	test	rdi, rdi	 # _377
	jne	.L431	 #,
.L433:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:223:       { _M_string_length = __length; }
	mov	QWORD PTR 8[rbx], rdi	 # tokens$D169361$_M_impl$D168694$_M_finish_1199->_M_string_length, _377
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1290: 	    ++this->_M_impl._M_finish;
	add	rbx, 32	 # __new_finish,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR [rcx+rdi], 0	 # MEM[(char_type &)_389],
	jmp	.L426	 #
	.p2align 4,,10
	.p2align 3
.L427:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	mov	r13, QWORD PTR 104[rsp]	 # _428, %sfp
	sub	r13, rsi	 # _428, tokens
	mov	rax, r13	 # _429, _428
	sar	rax, 5	 # _429,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1908: 	if (max_size() - size() < __n)
	cmp	rax, r15	 # _429, tmp1665
	je	.L867	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:262:       if (__a < __b)
	test	rax, rax	 # _429
	mov	edi, 1	 # tmp1817,
	cmovne	rdi, rax	 # _429,, _433
	add	rdi, rax	 # tmp879, _429
	jc	.L438	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1912: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	movabs	rax, 288230376151711743	 # tmp1816,
	cmp	rdi, rax	 # tmp879, tmp1816
	cmova	rdi, rax	 # tmp879,, _435, tmp1816
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	sal	rdi, 5	 # prephitmp_171,
.L439:
	mov	rcx, rdi	 #, prephitmp_171
	call	_Znwy	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:634: 	_Alloc_traits::construct(this->_M_impl,
	add	r13, rax	 # _408, _441
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:1084:       { return _M_string_length; }
	mov	r14, QWORD PTR 456[rsp]	 # _411, MEM[(const struct basic_string *)&token]._M_string_length
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rdx, QWORD PTR 448[rsp]	 # _410, MEM[(const struct basic_string *)&token]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	r12, rax	 # _441, tmp1686
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:235: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	lea	rcx, 16[r13]	 # _409,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:198: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	mov	QWORD PTR 0[r13], rcx	 # MEM[(struct _Alloc_hider *)_408]._M_p, _409
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:227: 	if (__dnew > size_type(_S_local_capacity))
	cmp	r14, 15	 # _411,
	ja	.L868	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:432: 	if (__n == 1)
	cmp	r14, 1	 # _411,
	je	.L869	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:421: 	if (__n == 0)
	test	r14, r14	 # _411
	jne	.L443	 #,
.L445:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:223:       { _M_string_length = __length; }
	mov	QWORD PTR 8[r13], r14	 # _408->_M_string_length, _411
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR [rcx+r14], 0	 # MEM[(char_type &)_450],
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_uninitialized.h:1102:       for (; __first != __last; ++__first, (void)++__cur)
	cmp	rsi, rbx	 # tokens, __new_finish
	je	.L687	 #,
.L940:
	lea	rax, 16[rsi]	 # ivtmp.775,
	lea	r9, 16[rbx]	 # _1678,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_uninitialized.h:1101:       _ForwardIterator __cur = __result;
	mov	rdx, r12	 # __cur, _441
	.p2align 6
	.p2align 4
	.p2align 3
.L457:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:235: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	lea	r8, 16[rdx]	 # _467,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:271: 	    if (_M_string_length > _S_local_capacity)
	mov	r10, QWORD PTR -8[rax]	 # MEM[(long long unsigned int *)_1599 + -8B], MEM[(long long unsigned int *)_1599 + -8B]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:198: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	mov	QWORD PTR [rdx], r8	 # MEM[(char * *)__cur_733], _467
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rcx, QWORD PTR -16[rax]	 # _468, MEM[(char * *)_1599 + -16B]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:269: 	if (_M_data() == _M_local_data())
	cmp	rcx, rax	 # _468, ivtmp.775
	je	.L870	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:218:       { _M_dataplus._M_p = __p; }
	mov	QWORD PTR [rdx], rcx	 # MEM[(char * *)__cur_733], _468
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:255:       { _M_allocated_capacity = __capacity; }
	mov	rcx, QWORD PTR [rax]	 # MEM <size_type> [(union ._anon_69 *)_1599], MEM <size_type> [(union ._anon_69 *)_1599]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_uninitialized.h:1102:       for (; __first != __last; ++__first, (void)++__cur)
	add	rax, 32	 # ivtmp.775,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_uninitialized.h:1102:       for (; __first != __last; ++__first, (void)++__cur)
	add	rdx, 32	 # __cur,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:223:       { _M_string_length = __length; }
	mov	QWORD PTR -24[rdx], r10	 # MEM[(long long unsigned int *)__cur_733 + 8B], MEM[(long long unsigned int *)_1599 + -8B]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:255:       { _M_allocated_capacity = __capacity; }
	mov	QWORD PTR -16[rdx], rcx	 # MEM <size_type> [(union ._anon_69 *)__cur_733 + 16B], MEM <size_type> [(union ._anon_69 *)_1599]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_uninitialized.h:1102:       for (; __first != __last; ++__first, (void)++__cur)
	cmp	rax, r9	 # ivtmp.775, _1678
	jne	.L457	 #,
.L456:
	sub	rbx, rsi	 # _1942, tokens
	add	rbx, r12	 # __cur, _441
.L447:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:649: 	    ++__new_finish;
	add	rbx, 32	 # __new_finish,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:614: 	  if (_M_storage)
	test	rsi, rsi	 # tokens
	je	.L458	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:687: 	__guard._M_len = this->_M_impl._M_end_of_storage - __old_start;
	mov	rdx, QWORD PTR 104[rsp]	 # tokens$D169361$_M_impl$D168694$_M_end_of_storage, %sfp
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	rcx, rsi	 #, tokens
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:687: 	__guard._M_len = this->_M_impl._M_end_of_storage - __old_start;
	sub	rdx, rsi	 # tokens$D169361$_M_impl$D168694$_M_end_of_storage, tokens
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L458:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:694:       this->_M_impl._M_end_of_storage = __new_start + __len;
	lea	rax, [r12+rdi]	 # tokens$D169361$_M_impl$D168694$_M_end_of_storage,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:692:       this->_M_impl._M_start = __new_start;
	mov	rsi, r12	 # tokens, _441
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:694:       this->_M_impl._M_end_of_storage = __new_start + __len;
	mov	QWORD PTR 104[rsp], rax	 # %sfp, tokens$D169361$_M_impl$D168694$_M_end_of_storage
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:695:     }
	jmp	.L426	 #
	.p2align 4,,10
	.p2align 3
.L870:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:688: 	    traits_type::copy(_M_local_buf, __str._M_local_buf,
	lea	rcx, 1[r10]	 # _472,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	cmp	ecx, 8	 # _472,
	jnb	.L449	 #,
	test	cl, 4	 # _472,
	jne	.L871	 #,
	test	ecx, ecx	 # _472
	je	.L450	 #,
	movzx	r10d, BYTE PTR [rax]	 # tmp902,* ivtmp.775
	mov	BYTE PTR [r8], r10b	 #* _467, tmp902
	test	cl, 2	 # _472,
	jne	.L835	 #,
.L854:
	mov	r10, QWORD PTR -8[rax]	 # MEM[(long long unsigned int *)_1599 + -8B], MEM[(long long unsigned int *)_1599 + -8B]
.L450:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_uninitialized.h:1102:       for (; __first != __last; ++__first, (void)++__cur)
	add	rax, 32	 # ivtmp.775,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:223:       { _M_string_length = __length; }
	mov	QWORD PTR 8[rdx], r10	 # MEM[(long long unsigned int *)__cur_733 + 8B], MEM[(long long unsigned int *)_1599 + -8B]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_uninitialized.h:1102:       for (; __first != __last; ++__first, (void)++__cur)
	add	rdx, 32	 # __cur,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_uninitialized.h:1102:       for (; __first != __last; ++__first, (void)++__cur)
	cmp	r9, rax	 # _1678, ivtmp.775
	jne	.L457	 #,
	jmp	.L456	 #
	.p2align 4,,10
	.p2align 3
.L865:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:143:       if (__capacity > max_size())
	test	rdi, rdi	 # _377
	js	.L872	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:134: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	mov	rcx, rdi	 # _395, _377
	add	rcx, 1	 # _395,
	js	.L873	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwy	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:218:       { _M_dataplus._M_p = __p; }
	mov	QWORD PTR [rbx], rax	 # tokens$D169361$_M_impl$D168694$_M_finish_1199->_M_dataplus._M_p, _375
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	rcx, rax	 # _375, tmp1685
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:255:       { _M_allocated_capacity = __capacity; }
	mov	QWORD PTR 16[rbx], rdi	 # tokens$D169361$_M_impl$D168694$_M_finish_1199->D.45451._M_allocated_capacity, _377
.L431:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	r8, rdi	 #, _377
	mov	rdx, r12	 #, _376
	call	memcpy	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rcx, QWORD PTR [rbx]	 # _375, MEM[(const struct basic_string *)tokens$D169361$_M_impl$D168694$_M_finish_1199]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	jmp	.L433	 #
	.p2align 4,,10
	.p2align 3
.L866:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	movzx	edx, BYTE PTR [r12]	 # _386, MEM[(const char_type &)_376]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR 16[rbx], dl	 # MEM[(char_type &)tokens$D169361$_M_impl$D168694$_M_finish_1199 + 16], _386
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:351:       }
	jmp	.L433	 #
	.p2align 4,,10
	.p2align 3
.L449:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	r10, QWORD PTR [rax]	 # tmp911,* ivtmp.775
	mov	QWORD PTR [r8], r10	 #* _467, tmp911
	mov	r10d, ecx	 # _472, _472
	mov	r11, QWORD PTR -8[rax+r10]	 # tmp918,
	mov	QWORD PTR -8[r8+r10], r11	 #, tmp918
	lea	r10, 24[rdx]	 # tmp919,
	mov	r11, rax	 # _1599, ivtmp.775
	and	r10, -8	 # tmp919,
	sub	r8, r10	 # tmp920, tmp919
	add	ecx, r8d	 # _472, tmp920
	sub	r11, r8	 # _1599, tmp920
	and	ecx, -8	 # _472,
	cmp	ecx, 8	 # _472,
	jb	.L854	 #,
	and	ecx, -8	 # tmp922,
	xor	r8d, r8d	 # tmp921
.L453:
	mov	r13d, r8d	 # tmp923, tmp921
	add	r8d, 8	 # tmp921,
	mov	r14, QWORD PTR [r11+r13]	 # tmp924,
	mov	QWORD PTR [r10+r13], r14	 #, tmp924
	cmp	r8d, ecx	 # tmp921, tmp922
	jb	.L453	 #,
	jmp	.L854	 #
	.p2align 4,,10
	.p2align 3
.L864:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	r13, QWORD PTR 160[rsi]	 # _188, MEM[(const struct basic_string *)tokens_64 + 160B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:65: 	_Save_errno() : _M_errno(errno) { errno = 0; }
	mov	r12, QWORD PTR __imp__errno[rip]	 # tmp1631,
	call	r12	 # tmp1631
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:65: 	_Save_errno() : _M_errno(errno) { errno = 0; }
	mov	edi, DWORD PTR [rax]	 # _482, *_481
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:65: 	_Save_errno() : _M_errno(errno) { errno = 0; }
	call	r12	 # tmp1631
.LEHE43:
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:65: 	_Save_errno() : _M_errno(errno) { errno = 0; }
	mov	DWORD PTR [rax], 0	 # *_483,
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:82:       const _TRet __tmp = __convf(__str, &__endptr, __base...);
	mov	r8d, 10	 #,
	mov	rcx, r13	 #, _188
	lea	rax, 1232[rsp]	 # tmp1612,
	mov	rdx, rax	 #, tmp1612
	mov	QWORD PTR 112[rsp], rax	 # %sfp, tmp1612
	call	strtoul	 #
	mov	DWORD PTR 276[rsp], eax	 # %sfp, tmp1692
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:84:       if (__endptr == __str)
	cmp	r13, QWORD PTR 1232[rsp]	 # _188, MEM[(char * *)_2310]
	je	.L874	 #,
.LEHB44:
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:86:       else if (errno == ERANGE
	call	r12	 # tmp1631
.LEHE44:
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:87: 	  || _Range_chk::_S_chk(__tmp, std::is_same<_Ret, int>{}))
	cmp	DWORD PTR [rax], 34	 # *_476,
	je	.L875	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	call	r12	 # tmp1631
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	mov	r15d, DWORD PTR [rax]	 #, *_484
	test	r15d, r15d	 #
	je	.L876	 #,
.L464:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rdi, QWORD PTR 192[rsi]	 # _191, MEM[(const struct basic_string *)tokens_64 + 192B]._M_dataplus._M_p
.LEHB45:
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:65: 	_Save_errno() : _M_errno(errno) { errno = 0; }
	call	r12	 # tmp1631
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:65: 	_Save_errno() : _M_errno(errno) { errno = 0; }
	mov	r13d, DWORD PTR [rax]	 # _500, *_499
	mov	DWORD PTR 672[rsp], r13d	 # MEM[(struct _Save_errno *)_916]._M_errno, _500
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:65: 	_Save_errno() : _M_errno(errno) { errno = 0; }
	call	r12	 # tmp1631
.LEHE45:
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:65: 	_Save_errno() : _M_errno(errno) { errno = 0; }
	mov	DWORD PTR [rax], 0	 # *_501,
 # C:/msys64/mingw64/include/stdlib.h:380:   return __mingw_strtof( _Str, _EndPtr);
	mov	rdx, QWORD PTR 112[rsp]	 #, %sfp
	mov	rcx, rdi	 #, _191
.LEHB46:
	call	__mingw_strtof	 #
.LEHE46:
	vmovss	xmm8, xmm0, xmm0	 # _502, tmp1701
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:84:       if (__endptr == __str)
	cmp	rdi, QWORD PTR 1232[rsp]	 # _191, MEM[(char * *)_2310]
	je	.L877	 #,
.LEHB47:
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:86:       else if (errno == ERANGE
	call	r12	 # tmp1631
.LEHE47:
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:87: 	  || _Range_chk::_S_chk(__tmp, std::is_same<_Ret, int>{}))
	cmp	DWORD PTR [rax], 34	 # *_494,
	je	.L878	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	call	r12	 # tmp1631
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	mov	r14d, DWORD PTR [rax]	 #, *_503
	test	r14d, r14d	 #
	je	.L879	 #,
.L470:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:466: 	_M_streambuf(0), _M_ctype(0), _M_num_put(0), _M_num_get(0)
	lea	rax, 1360[rsp]	 # tmp1618,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:465:       : ios_base(), _M_tie(0), _M_fill(char_type()), _M_fill_init(false), 
	xor	r13d, r13d	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:466: 	_M_streambuf(0), _M_ctype(0), _M_num_put(0), _M_num_get(0)
	mov	rcx, rax	 #, tmp1618
	mov	QWORD PTR 200[rsp], rax	 # %sfp, tmp1618
	call	_ZNSt8ios_baseC2Ev	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:466: 	_M_streambuf(0), _M_ctype(0), _M_num_put(0), _M_num_get(0)
	mov	rax, QWORD PTR .refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE[rip]	 # tmp1920,
 # C:/msys64/mingw64/include/c++/14.2.0/istream:698:       { this->init(0); }
	xor	edx, edx	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:466: 	_M_streambuf(0), _M_ctype(0), _M_num_put(0), _M_num_get(0)
	vpxor	xmm0, xmm0, xmm0	 # tmp964
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:465:       : ios_base(), _M_tie(0), _M_fill(char_type()), _M_fill_init(false), 
	mov	WORD PTR 1584[rsp], r13w	 # MEM <unsigned short> [(void *)_2310 + 352B],
 # C:/msys64/mingw64/include/c++/14.2.0/istream:697:       : _M_gcount(streamsize(0))
	mov	rdi, QWORD PTR 152[rsp]	 # _319, %sfp
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:466: 	_M_streambuf(0), _M_ctype(0), _M_num_put(0), _M_num_get(0)
	add	rax, 16	 # tmp963,
 # C:/msys64/mingw64/include/c++/14.2.0/istream:697:       : _M_gcount(streamsize(0))
	mov	QWORD PTR 1232[rsp], rbp	 # MEM[(struct basic_istream *)_2310]._vptr.basic_istream, _315
 # C:/msys64/mingw64/include/c++/14.2.0/istream:698:       { this->init(0); }
	mov	rcx, QWORD PTR 112[rsp]	 # _539, %sfp
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:466: 	_M_streambuf(0), _M_ctype(0), _M_num_put(0), _M_num_get(0)
	vmovdqu	YMMWORD PTR 1592[rsp], ymm0	 # MEM <vector(4) long long unsigned int> [(void *)_2310 + 360B], tmp964
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:466: 	_M_streambuf(0), _M_ctype(0), _M_num_put(0), _M_num_get(0)
	mov	QWORD PTR 1360[rsp], rax	 # MEM[(struct basic_ios *)_2310 + 128B].D.69971._vptr.ios_base, tmp963
 # C:/msys64/mingw64/include/c++/14.2.0/istream:697:       : _M_gcount(streamsize(0))
	mov	rax, QWORD PTR -24[rbp]	 # MEM[(long long int *)_315 + -24B], MEM[(long long int *)_315 + -24B]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:465:       : ios_base(), _M_tie(0), _M_fill(char_type()), _M_fill_init(false), 
	mov	QWORD PTR 1576[rsp], 0	 # MEM[(struct basic_ios *)_2310 + 128B]._M_tie,
 # C:/msys64/mingw64/include/c++/14.2.0/istream:697:       : _M_gcount(streamsize(0))
	mov	QWORD PTR 1232[rsp+rax], rdi	 # MEM[(struct basic_ios *)_535].D.69971._vptr.ios_base, _319
 # C:/msys64/mingw64/include/c++/14.2.0/istream:697:       : _M_gcount(streamsize(0))
	mov	QWORD PTR 1240[rsp], 0	 # MEM[(struct basic_istream *)_2310]._M_gcount,
 # C:/msys64/mingw64/include/c++/14.2.0/istream:698:       { this->init(0); }
	add	rcx, QWORD PTR -24[rbp]	 # _539, MEM[(long long int *)_315 + -24B]
	vzeroupper
.LEHB48:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E	 #
.LEHE48:
 # C:/msys64/mingw64/include/c++/14.2.0/ostream:438:       { this->init(0); }
	mov	rax, QWORD PTR 160[rsp]	 # _324, %sfp
 # C:/msys64/mingw64/include/c++/14.2.0/ostream:438:       { this->init(0); }
	xor	edx, edx	 #
 # C:/msys64/mingw64/include/c++/14.2.0/ostream:438:       { this->init(0); }
	mov	QWORD PTR 1248[rsp], rax	 # MEM[(struct basic_ostream *)_2310 + 16B]._vptr.basic_ostream, _324
	mov	rax, QWORD PTR -24[rax]	 # MEM[(long long int *)_324 + -24B], MEM[(long long int *)_324 + -24B]
	lea	rcx, 1248[rsp+rax]	 # _544,
	mov	rax, QWORD PTR 168[rsp]	 # _328, %sfp
	mov	QWORD PTR [rcx], rax	 # MEM[(struct basic_ios *)_544].D.69971._vptr.ios_base, _328
.LEHB49:
 # C:/msys64/mingw64/include/c++/14.2.0/ostream:438:       { this->init(0); }
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E	 #
.LEHE49:
 # C:/msys64/mingw64/include/c++/14.2.0/istream:1016:       : __istream_type(), __ostream_type() { }
	mov	rax, QWORD PTR 176[rsp]	 # _329, %sfp
	mov	rdi, QWORD PTR 184[rsp]	 # _333, %sfp
 # C:/msys64/mingw64/include/c++/14.2.0/streambuf:471:       : _M_in_beg(0), _M_in_cur(0), _M_in_end(0),
	vpxor	xmm0, xmm0, xmm0	 # tmp980
 # C:/msys64/mingw64/include/c++/14.2.0/istream:1016:       : __istream_type(), __ostream_type() { }
	mov	rax, QWORD PTR -24[rax]	 # MEM[(long long int *)_329 + -24B], MEM[(long long int *)_329 + -24B]
	mov	QWORD PTR 1232[rsp+rax], rdi	 # MEM[(struct basic_ios *)_549].D.69971._vptr.ios_base, _333
 # C:/msys64/mingw64/include/c++/14.2.0/sstream:1061:       : __iostream_type(), _M_stringbuf(__str, __m)
	mov	rax, QWORD PTR .refptr._ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE[rip]	 # tmp1928,
 # C:/msys64/mingw64/include/c++/14.2.0/streambuf:471:       : _M_in_beg(0), _M_in_cur(0), _M_in_end(0),
	vmovdqu	YMMWORD PTR 1264[rsp], ymm0	 # MEM <vector(4) long long unsigned int> [(char_type * *)_2310 + 32B], tmp980
 # C:/msys64/mingw64/include/c++/14.2.0/streambuf:472:       _M_out_beg(0), _M_out_cur(0), _M_out_end(0),
	vpxor	xmm0, xmm0, xmm0	 # tmp981
 # C:/msys64/mingw64/include/c++/14.2.0/sstream:1061:       : __iostream_type(), _M_stringbuf(__str, __m)
	vmovdqu	XMMWORD PTR 1248[rsp], xmm7	 # MEM <vector(2) long long unsigned int> [(int (*) () * *)_2310 + 16B], _1906
	add	rax, 24	 # tmp977,
	mov	QWORD PTR 1232[rsp], rax	 # MEM[(struct basic_stringstream *)_2310].D.165183.D.103579._vptr.basic_istream, tmp977
	mov	rax, QWORD PTR .refptr._ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE[rip]	 # tmp1929,
 # C:/msys64/mingw64/include/c++/14.2.0/streambuf:472:       _M_out_beg(0), _M_out_cur(0), _M_out_end(0),
	vmovdqu	XMMWORD PTR 1296[rsp], xmm0	 # MEM <vector(2) long long unsigned int> [(char_type * *)_2310 + 64B], tmp981
 # C:/msys64/mingw64/include/c++/14.2.0/sstream:1061:       : __iostream_type(), _M_stringbuf(__str, __m)
	add	rax, 104	 # tmp979,
	mov	QWORD PTR 1360[rsp], rax	 # MEM[(struct basic_ios *)_2310 + 128B].D.69971._vptr.ios_base, tmp979
 # C:/msys64/mingw64/include/c++/14.2.0/streambuf:473:       _M_buf_locale(locale())
	lea	rax, 1312[rsp]	 # tmp1615,
	mov	QWORD PTR 256[rsp], rax	 # %sfp, tmp1615
	mov	rcx, rax	 #, tmp1615
	vzeroupper
	call	_ZNSt6localeC1Ev	 #
 # C:/msys64/mingw64/include/c++/14.2.0/sstream:149: 	_M_string(__str.data(), __str.size(), __str.get_allocator())
	mov	rax, QWORD PTR .refptr._ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE[rip]	 # tmp1931,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	r13, QWORD PTR 224[rsi]	 # _560, MEM[(const struct basic_string *)tokens_64 + 224B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/sstream:148:       : __streambuf_type(), _M_mode(),
	mov	DWORD PTR 1320[rsp], 0	 # MEM[(struct basic_stringbuf *)_2310 + 24B]._M_mode,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:1077:       { return _M_string_length; }
	mov	rdi, QWORD PTR 232[rsi]	 # _559, MEM[(const struct basic_string *)tokens_64 + 224B]._M_string_length
 # C:/msys64/mingw64/include/c++/14.2.0/sstream:149: 	_M_string(__str.data(), __str.size(), __str.get_allocator())
	add	rax, 16	 # tmp985,
	mov	QWORD PTR 1256[rsp], rax	 # MEM[(struct basic_stringbuf *)_2310 + 24B].D.164381._vptr.basic_streambuf, tmp985
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:194: 	: allocator_type(__a), _M_p(__dat) { }
	lea	rax, 1344[rsp]	 # tmp1617,
	mov	QWORD PTR 240[rsp], rax	 # %sfp, tmp1617
	mov	QWORD PTR 1328[rsp], rax	 # MEM[(struct _Alloc_hider *)_2310 + 96B]._M_p, tmp1617
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:629: 	if (__s == 0 && __n > 0)
	test	r13, r13	 # _560
	jne	.L475	 #,
	test	rdi, rdi	 # _559
	jne	.L880	 #,
.L475:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:227: 	if (__dnew > size_type(_S_local_capacity))
	cmp	rdi, 15	 # _559,
	ja	.L881	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:432: 	if (__n == 1)
	cmp	rdi, 1	 # _559,
	je	.L882	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:421: 	if (__n == 0)
	test	rdi, rdi	 # _559
	jne	.L883	 #,
.L483:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	rax, QWORD PTR 1328[rsp]	 # MEM[(const struct basic_string *)_2310 + 96B]._M_dataplus._M_p, MEM[(const struct basic_string *)_2310 + 96B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:223:       { _M_string_length = __length; }
	mov	QWORD PTR 1336[rsp], rdi	 # MEM[(struct basic_string *)_2310 + 96B]._M_string_length, _559
 # C:/msys64/mingw64/include/c++/14.2.0/sstream:342: 	_M_sync(const_cast<char_type*>(_M_string.data()), 0, __len);
	xor	r9d, r9d	 #
	xor	r8d, r8d	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR [rax+rdi], 0	 # MEM[(char_type &)_578],
 # C:/msys64/mingw64/include/c++/14.2.0/sstream:342: 	_M_sync(const_cast<char_type*>(_M_string.data()), 0, __len);
	lea	rdi, 1256[rsp]	 # tmp1614,
	mov	rdx, QWORD PTR 1328[rsp]	 #, MEM[(const struct basic_string *)_2310 + 96B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/sstream:338: 	_M_mode = __mode;
	mov	DWORD PTR 1320[rsp], 24	 # MEM[(struct basic_stringbuf *)_2310 + 24B]._M_mode,
 # C:/msys64/mingw64/include/c++/14.2.0/sstream:342: 	_M_sync(const_cast<char_type*>(_M_string.data()), 0, __len);
	mov	rcx, rdi	 #, tmp1614
.LEHB50:
	call	_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcyy	 #
.LEHE50:
 # C:/msys64/mingw64/include/c++/14.2.0/sstream:1062:       { this->init(&_M_stringbuf); }
	mov	rcx, QWORD PTR 200[rsp]	 #, %sfp
	mov	rdx, rdi	 #, tmp1614
.LEHB51:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E	 #
.LEHE51:
 # C:/msys64/mingw64/include/stdlib.h:380:   return __mingw_strtof( _Str, _EndPtr);
	lea	rax, 672[rsp]	 # tmp1663,
 # source/main.cpp:33:             std::vector<f32> vBeta;
	xor	edi, edi	 # vBeta$D142930$_M_impl$D142228$_M_end_of_storage
	xor	r13d, r13d	 # vBeta$D142930$_M_impl$D142228$_M_finish
	mov	QWORD PTR 128[rsp], 0	 # %sfp,
 # C:/msys64/mingw64/include/stdlib.h:380:   return __mingw_strtof( _Str, _EndPtr);
	vmovq	xmm10, rax	 # tmp1663, tmp1663
	.p2align 4
	.p2align 3
.L488:
 # source/main.cpp:34:             while (std::getline(beta_stream, token, ';'))
	mov	rdx, QWORD PTR 96[rsp]	 #, %sfp
	mov	rcx, QWORD PTR 112[rsp]	 #, %sfp
	mov	r8d, 59	 #,
.LEHB52:
	call	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_	 #
 # source/main.cpp:34:             while (std::getline(beta_stream, token, ';'))
	mov	rdx, QWORD PTR [rax]	 # _197->_vptr.basic_istream, _197->_vptr.basic_istream
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:142:       { return _M_streambuf_state; }
	mov	rdx, QWORD PTR -24[rdx]	 # MEM[(long long int *)_198 + -24B], MEM[(long long int *)_198 + -24B]
 # source/main.cpp:34:             while (std::getline(beta_stream, token, ';'))
	test	BYTE PTR 32[rax+rdx], 5	 # MEM[(const struct basic_ios *)_201].D.69971._M_streambuf_state,
	jne	.L884	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	r14, QWORD PTR 448[rsp]	 # _195, token._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:65: 	_Save_errno() : _M_errno(errno) { errno = 0; }
	call	r12	 # tmp1631
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:65: 	_Save_errno() : _M_errno(errno) { errno = 0; }
	mov	r15d, DWORD PTR [rax]	 # _598, *_597
	mov	DWORD PTR 512[rsp], r15d	 # MEM[(struct _Save_errno *)_2267]._M_errno, _598
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:65: 	_Save_errno() : _M_errno(errno) { errno = 0; }
	call	r12	 # tmp1631
.LEHE52:
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:65: 	_Save_errno() : _M_errno(errno) { errno = 0; }
	mov	DWORD PTR [rax], 0	 # *_599,
 # C:/msys64/mingw64/include/stdlib.h:380:   return __mingw_strtof( _Str, _EndPtr);
	vmovq	rdx, xmm10	 #, tmp1663
	mov	rcx, r14	 #, _195
.LEHB53:
	call	__mingw_strtof	 #
.LEHE53:
	vmovss	xmm6, xmm0, xmm0	 # _600, tmp1714
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:84:       if (__endptr == __str)
	cmp	r14, QWORD PTR 672[rsp]	 # _195, MEM[(char * *)_916]
	je	.L885	 #,
.LEHB54:
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:86:       else if (errno == ERANGE
	call	r12	 # tmp1631
.LEHE54:
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:87: 	  || _Range_chk::_S_chk(__tmp, std::is_same<_Ret, int>{}))
	cmp	DWORD PTR [rax], 34	 # *_592,
	je	.L886	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	call	r12	 # tmp1631
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	mov	r10d, DWORD PTR [rax]	 #, *_601
	test	r10d, r10d	 #
	je	.L887	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:114: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	cmp	r13, rdi	 # vBeta$D142930$_M_impl$D142228$_M_finish, vBeta$D142930$_M_impl$D142228$_M_end_of_storage
	je	.L888	 #,
.L493:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_construct.h:97:     { return ::new((void*)__location) _Tp(std::forward<_Args>(__args)...); }
	vmovss	DWORD PTR 0[r13], xmm6	 # *vBeta$D142930$_M_impl$D142228$_M_finish_413, _600
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:119: 	    ++this->_M_impl._M_finish;
	add	r13, 4	 # vBeta$D142930$_M_impl$D142228$_M_finish,
	jmp	.L488	 #
	.p2align 4,,10
	.p2align 3
.L887:
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	call	r12	 # tmp1631
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	mov	DWORD PTR [rax], r15d	 # *_604, _598
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:114: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	cmp	r13, rdi	 # vBeta$D142930$_M_impl$D142228$_M_finish, vBeta$D142930$_M_impl$D142228$_M_end_of_storage
	jne	.L493	 #,
.L888:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	mov	rax, QWORD PTR 128[rsp]	 # vBeta$D142930$_M_impl$D142228$_M_start, %sfp
	mov	r8, rdi	 # _631, vBeta$D142930$_M_impl$D142228$_M_end_of_storage
	sub	r8, rax	 # _631, vBeta$D142930$_M_impl$D142228$_M_start
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1908: 	if (max_size() - size() < __n)
	movabs	rax, 2305843009213693951	 # tmp1949,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	mov	rdx, r8	 # _632, _631
	sar	rdx, 2	 # _632,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1908: 	if (max_size() - size() < __n)
	cmp	rdx, rax	 # _632, tmp1949
	je	.L889	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:262:       if (__a < __b)
	test	rdx, rdx	 # _632
	mov	eax, 1	 # tmp1815,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1912: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	movabs	r14, 2305843009213693951	 # _638,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:262:       if (__a < __b)
	cmovne	rax, rdx	 # _632,, _636
	add	rax, rdx	 # tmp1059, _632
	jc	.L501	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1912: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	cmp	rax, r14	 # tmp1059, tmp1814
	cmovbe	r14, rax	 # tmp1059,, _638
.L501:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	sal	r14, 2	 # _643,
	mov	QWORD PTR 144[rsp], r8	 # %sfp, _631
	mov	rcx, r14	 #, _643
.LEHB55:
	call	_Znwy	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_construct.h:97:     { return ::new((void*)__location) _Tp(std::forward<_Args>(__args)...); }
	mov	r8, QWORD PTR 144[rsp]	 # _631, %sfp
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	r15, rax	 # _644, tmp1719
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_construct.h:97:     { return ::new((void*)__location) _Tp(std::forward<_Args>(__args)...); }
	vmovss	DWORD PTR [rax+r8], xmm6	 # *_618, _600
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:649: 	    ++__new_finish;
	lea	r13, 4[rax+r8]	 # vBeta$D142930$_M_impl$D142228$_M_finish,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_uninitialized.h:1117:       if (__count > 0)
	test	r8, r8	 # _631
	jg	.L890	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:614: 	  if (_M_storage)
	cmp	QWORD PTR 128[rsp], 0	 # %sfp,
	jne	.L503	 #,
.L504:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:692:       this->_M_impl._M_start = __new_start;
	mov	QWORD PTR 128[rsp], r15	 # %sfp, _644
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:694:       this->_M_impl._M_end_of_storage = __new_start + __len;
	lea	rdi, [r15+r14]	 # vBeta$D142930$_M_impl$D142228$_M_end_of_storage,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:695:     }
	jmp	.L488	 #
	.p2align 4,,10
	.p2align 3
.L884:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	mov	rax, QWORD PTR 128[rsp]	 # vBeta$D142930$_M_impl$D142228$_M_start, %sfp
	sub	r13, rax	 # _206, vBeta$D142930$_M_impl$D142228$_M_start
 # source/main.cpp:36:             f32* beta = new f32[vBeta.size()];
	movabs	rax, 9223372036854775800	 # tmp1074,
	cmp	rax, r13	 # tmp1074, _206
	jb	.L506	 #,
 # source/main.cpp:36:             f32* beta = new f32[vBeta.size()];
	mov	rcx, r13	 #, _206
	call	_Znay	 #
	vmovq	xmm6, rax	 # _208, tmp1721
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:451: 	  if (__builtin_expect(_Num > 1, true))
	cmp	r13, 4	 # _206,
	jle	.L891	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:452: 	    __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
	mov	rdx, QWORD PTR 128[rsp]	 #, %sfp
	mov	r8, r13	 #, _206
	mov	rcx, rax	 #, _208
	call	memcpy	 #
.L509:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	mov	r15, r13	 # _206, _206
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	r13, QWORD PTR 256[rsi]	 # _211, MEM[(const struct basic_string *)tokens_64 + 256B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	sar	r15, 2	 # _206,
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:65: 	_Save_errno() : _M_errno(errno) { errno = 0; }
	call	r12	 # tmp1631
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:65: 	_Save_errno() : _M_errno(errno) { errno = 0; }
	mov	r14d, DWORD PTR [rax]	 # _663, *_662
	mov	DWORD PTR 512[rsp], r14d	 # MEM[(struct _Save_errno *)_2267]._M_errno, _663
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:65: 	_Save_errno() : _M_errno(errno) { errno = 0; }
	call	r12	 # tmp1631
.LEHE55:
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:65: 	_Save_errno() : _M_errno(errno) { errno = 0; }
	mov	DWORD PTR [rax], 0	 # *_664,
 # C:/msys64/mingw64/include/stdlib.h:380:   return __mingw_strtof( _Str, _EndPtr);
	lea	rax, 672[rsp]	 # tmp1640,
	mov	rcx, r13	 #, _211
	mov	rdx, rax	 #, tmp1640
	mov	QWORD PTR 144[rsp], rax	 # %sfp, tmp1640
.LEHB56:
	call	__mingw_strtof	 #
.LEHE56:
	vmovss	xmm10, xmm0, xmm0	 # _665, tmp1724
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:84:       if (__endptr == __str)
	cmp	r13, QWORD PTR 672[rsp]	 # _211, MEM[(char * *)_916]
	je	.L892	 #,
.LEHB57:
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:86:       else if (errno == ERANGE
	call	r12	 # tmp1631
.LEHE57:
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:87: 	  || _Range_chk::_S_chk(__tmp, std::is_same<_Ret, int>{}))
	cmp	DWORD PTR [rax], 34	 # *_647,
	je	.L893	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	call	r12	 # tmp1631
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	mov	r9d, DWORD PTR [rax]	 #, *_666
	test	r9d, r9d	 #
	je	.L894	 #,
.L512:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	r13, QWORD PTR 288[rsi]	 # _213, MEM[(const struct basic_string *)tokens_64 + 288B]._M_dataplus._M_p
.LEHB58:
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:65: 	_Save_errno() : _M_errno(errno) { errno = 0; }
	call	r12	 # tmp1631
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:65: 	_Save_errno() : _M_errno(errno) { errno = 0; }
	mov	r14d, DWORD PTR [rax]	 # _678, *_677
	mov	DWORD PTR 512[rsp], r14d	 # MEM[(struct _Save_errno *)_2267]._M_errno, _678
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:65: 	_Save_errno() : _M_errno(errno) { errno = 0; }
	call	r12	 # tmp1631
.LEHE58:
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:65: 	_Save_errno() : _M_errno(errno) { errno = 0; }
	mov	DWORD PTR [rax], 0	 # *_679,
 # C:/msys64/mingw64/include/stdlib.h:380:   return __mingw_strtof( _Str, _EndPtr);
	mov	rdx, QWORD PTR 144[rsp]	 #, %sfp
	mov	rcx, r13	 #, _213
.LEHB59:
	call	__mingw_strtof	 #
.LEHE59:
	vmovss	xmm9, xmm0, xmm0	 # _680, tmp1731
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:84:       if (__endptr == __str)
	cmp	r13, QWORD PTR 672[rsp]	 # _213, MEM[(char * *)_916]
	je	.L895	 #,
.LEHB60:
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:86:       else if (errno == ERANGE
	call	r12	 # tmp1631
.LEHE60:
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:87: 	  || _Range_chk::_S_chk(__tmp, std::is_same<_Ret, int>{}))
	cmp	DWORD PTR [rax], 34	 # *_672,
	je	.L896	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	call	r12	 # tmp1631
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	mov	r8d, DWORD PTR [rax]	 #, *_681
	test	r8d, r8d	 #
	je	.L897	 #,
.L517:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	r13, QWORD PTR 320[rsi]	 # _215, MEM[(const struct basic_string *)tokens_64 + 320B]._M_dataplus._M_p
.LEHB61:
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:65: 	_Save_errno() : _M_errno(errno) { errno = 0; }
	call	r12	 # tmp1631
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:65: 	_Save_errno() : _M_errno(errno) { errno = 0; }
	mov	r14d, DWORD PTR [rax]	 # _693, *_692
	mov	DWORD PTR 512[rsp], r14d	 # MEM[(struct _Save_errno *)_2267]._M_errno, _693
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:65: 	_Save_errno() : _M_errno(errno) { errno = 0; }
	call	r12	 # tmp1631
.LEHE61:
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:65: 	_Save_errno() : _M_errno(errno) { errno = 0; }
	mov	DWORD PTR [rax], 0	 # *_694,
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:82:       const _TRet __tmp = __convf(__str, &__endptr, __base...);
	mov	rdx, QWORD PTR 144[rsp]	 #, %sfp
	mov	r8d, 10	 #,
	mov	rcx, r13	 #, _215
	call	strtol	 #
	mov	DWORD PTR 300[rsp], eax	 # %sfp, tmp1738
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:84:       if (__endptr == __str)
	cmp	r13, QWORD PTR 672[rsp]	 # _215, MEM[(char * *)_916]
	je	.L898	 #,
.LEHB62:
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:86:       else if (errno == ERANGE
	call	r12	 # tmp1631
.LEHE62:
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:87: 	  || _Range_chk::_S_chk(__tmp, std::is_same<_Ret, int>{}))
	cmp	DWORD PTR [rax], 34	 # *_687,
	je	.L899	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	call	r12	 # tmp1631
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	mov	ecx, DWORD PTR [rax]	 #, *_695
	test	ecx, ecx	 #
	je	.L900	 #,
.L522:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	r13, QWORD PTR 352[rsi]	 # _218, MEM[(const struct basic_string *)tokens_64 + 352B]._M_dataplus._M_p
.LEHB63:
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:65: 	_Save_errno() : _M_errno(errno) { errno = 0; }
	call	r12	 # tmp1631
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:65: 	_Save_errno() : _M_errno(errno) { errno = 0; }
	mov	r14d, DWORD PTR [rax]	 # _707, *_706
	mov	DWORD PTR 512[rsp], r14d	 # MEM[(struct _Save_errno *)_2267]._M_errno, _707
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:65: 	_Save_errno() : _M_errno(errno) { errno = 0; }
	call	r12	 # tmp1631
.LEHE63:
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:65: 	_Save_errno() : _M_errno(errno) { errno = 0; }
	mov	DWORD PTR [rax], 0	 # *_708,
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:82:       const _TRet __tmp = __convf(__str, &__endptr, __base...);
	mov	rdx, QWORD PTR 144[rsp]	 #, %sfp
	mov	r8d, 10	 #,
	mov	rcx, r13	 #, _218
	call	strtol	 #
	mov	DWORD PTR 336[rsp], eax	 # %sfp, tmp1745
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:84:       if (__endptr == __str)
	cmp	r13, QWORD PTR 672[rsp]	 # _218, MEM[(char * *)_916]
	je	.L901	 #,
.LEHB64:
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:86:       else if (errno == ERANGE
	call	r12	 # tmp1631
.LEHE64:
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:87: 	  || _Range_chk::_S_chk(__tmp, std::is_same<_Ret, int>{}))
	cmp	DWORD PTR [rax], 34	 # *_701,
	je	.L902	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	call	r12	 # tmp1631
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	mov	edx, DWORD PTR [rax]	 #, *_709
	test	edx, edx	 #
	je	.L903	 #,
.L527:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:1084:       { return _M_string_length; }
	mov	r12, QWORD PTR 136[rsi]	 # _222, MEM[(const struct basic_string *)tokens_64 + 128B]._M_string_length
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:198: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	lea	rax, 528[rsp]	 # tmp1632,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	r13, QWORD PTR 128[rsi]	 # _221, MEM[(const struct basic_string *)tokens_64 + 128B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:198: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	mov	QWORD PTR 248[rsp], rax	 # %sfp, tmp1632
	mov	QWORD PTR 512[rsp], rax	 # MEM[(struct _Alloc_hider *)_2267]._M_p, tmp1632
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:227: 	if (__dnew > size_type(_S_local_capacity))
	cmp	r12, 15	 # _222,
	ja	.L904	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:432: 	if (__n == 1)
	cmp	r12, 1	 # _222,
	je	.L905	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:421: 	if (__n == 0)
	test	r12, r12	 # _222
	jne	.L906	 #,
.L535:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	rax, QWORD PTR 512[rsp]	 # MEM[(const struct basic_string *)_2267]._M_dataplus._M_p, MEM[(const struct basic_string *)_2267]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:223:       { _M_string_length = __length; }
	mov	QWORD PTR 520[rsp], r12	 # MEM[(struct basic_string *)_2267]._M_string_length, _222
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR [rax+r12], 0	 # MEM[(char_type &)_721],
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:198: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	lea	rax, 560[rsp]	 # tmp1633,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:1084:       { return _M_string_length; }
	mov	r12, QWORD PTR 8[rsi]	 # _225, MEM[(const struct basic_string *)tokens_64]._M_string_length
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:198: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	mov	QWORD PTR 264[rsp], rax	 # %sfp, tmp1633
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	r13, QWORD PTR [rsi]	 # _224, MEM[(const struct basic_string *)tokens_64]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:198: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	mov	QWORD PTR 544[rsp], rax	 # MEM[(struct _Alloc_hider *)_2267 + 32B]._M_p, tmp1633
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:227: 	if (__dnew > size_type(_S_local_capacity))
	cmp	r12, 15	 # _225,
	ja	.L907	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:432: 	if (__n == 1)
	cmp	r12, 1	 # _225,
	je	.L908	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:421: 	if (__n == 0)
	test	r12, r12	 # _225
	jne	.L909	 #,
.L541:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	rax, QWORD PTR 544[rsp]	 # MEM[(const struct basic_string *)_2267 + 32B]._M_dataplus._M_p, MEM[(const struct basic_string *)_2267 + 32B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:223:       { _M_string_length = __length; }
	mov	QWORD PTR 552[rsp], r12	 # MEM[(struct basic_string *)_2267 + 32B]._M_string_length, _225
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR [rax+r12], 0	 # MEM[(char_type &)_741],
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:1084:       { return _M_string_length; }
	mov	r12, QWORD PTR 40[rsi]	 # _228, MEM[(const struct basic_string *)tokens_64 + 32B]._M_string_length
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:198: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	lea	rax, 592[rsp]	 # tmp1637,
	mov	QWORD PTR 280[rsp], rax	 # %sfp, tmp1637
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	r13, QWORD PTR 32[rsi]	 # _227, MEM[(const struct basic_string *)tokens_64 + 32B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:198: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	mov	QWORD PTR 576[rsp], rax	 # MEM[(struct _Alloc_hider *)_2267 + 64B]._M_p, tmp1637
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:227: 	if (__dnew > size_type(_S_local_capacity))
	cmp	r12, 15	 # _228,
	ja	.L910	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:432: 	if (__n == 1)
	cmp	r12, 1	 # _228,
	je	.L911	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:421: 	if (__n == 0)
	test	r12, r12	 # _228
	jne	.L912	 #,
.L547:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	rax, QWORD PTR 576[rsp]	 # MEM[(const struct basic_string *)_2267 + 64B]._M_dataplus._M_p, MEM[(const struct basic_string *)_2267 + 64B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:223:       { _M_string_length = __length; }
	mov	QWORD PTR 584[rsp], r12	 # MEM[(struct basic_string *)_2267 + 64B]._M_string_length, _228
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR [rax+r12], 0	 # MEM[(char_type &)_761],
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:1084:       { return _M_string_length; }
	mov	r12, QWORD PTR 72[rsi]	 # _231, MEM[(const struct basic_string *)tokens_64 + 64B]._M_string_length
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:198: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	lea	rax, 624[rsp]	 # tmp1638,
	mov	QWORD PTR 288[rsp], rax	 # %sfp, tmp1638
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	r13, QWORD PTR 64[rsi]	 # _230, MEM[(const struct basic_string *)tokens_64 + 64B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:198: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	mov	QWORD PTR 608[rsp], rax	 # MEM[(struct _Alloc_hider *)_2267 + 96B]._M_p, tmp1638
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:227: 	if (__dnew > size_type(_S_local_capacity))
	cmp	r12, 15	 # _231,
	ja	.L913	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:432: 	if (__n == 1)
	cmp	r12, 1	 # _231,
	je	.L914	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:421: 	if (__n == 0)
	test	r12, r12	 # _231
	jne	.L915	 #,
.L553:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	rax, QWORD PTR 608[rsp]	 # MEM[(const struct basic_string *)_2267 + 96B]._M_dataplus._M_p, MEM[(const struct basic_string *)_2267 + 96B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:223:       { _M_string_length = __length; }
	mov	QWORD PTR 616[rsp], r12	 # MEM[(struct basic_string *)_2267 + 96B]._M_string_length, _231
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR [rax+r12], 0	 # MEM[(char_type &)_781],
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:1084:       { return _M_string_length; }
	mov	r12, QWORD PTR 104[rsi]	 # _234, MEM[(const struct basic_string *)tokens_64 + 96B]._M_string_length
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:198: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	lea	rax, 656[rsp]	 # tmp1639,
	mov	QWORD PTR 304[rsp], rax	 # %sfp, tmp1639
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	r13, QWORD PTR 96[rsi]	 # _233, MEM[(const struct basic_string *)tokens_64 + 96B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:198: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	mov	QWORD PTR 640[rsp], rax	 # MEM[(struct _Alloc_hider *)_2267 + 128B]._M_p, tmp1639
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:227: 	if (__dnew > size_type(_S_local_capacity))
	cmp	r12, 15	 # _234,
	ja	.L916	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:432: 	if (__n == 1)
	cmp	r12, 1	 # _234,
	je	.L917	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:421: 	if (__n == 0)
	test	r12, r12	 # _234
	jne	.L918	 #,
.L559:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	rax, QWORD PTR 640[rsp]	 # MEM[(const struct basic_string *)_2267 + 128B]._M_dataplus._M_p, MEM[(const struct basic_string *)_2267 + 128B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:223:       { _M_string_length = __length; }
	mov	QWORD PTR 648[rsp], r12	 # MEM[(struct basic_string *)_2267 + 128B]._M_string_length, _234
 # source/main.cpp:44:             Animal* animal = new Animal(tax, R, dt, const_cast<const f32*>(beta), B, mu, sigma, kn, gn, tokens[12]);
	mov	ecx, 288	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR [rax+r12], 0	 # MEM[(char_type &)_801],
.LEHB65:
 # source/main.cpp:44:             Animal* animal = new Animal(tax, R, dt, const_cast<const f32*>(beta), B, mu, sigma, kn, gn, tokens[12]);
	call	_Znwy	 #
.LEHE65:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:1084:       { return _M_string_length; }
	mov	r12, QWORD PTR 392[rsi]	 # _238, MEM[(const struct basic_string *)tokens_64 + 384B]._M_string_length
 # source/main.cpp:44:             Animal* animal = new Animal(tax, R, dt, const_cast<const f32*>(beta), B, mu, sigma, kn, gn, tokens[12]);
	mov	QWORD PTR 216[rsp], rax	 # %sfp, tmp1755
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:198: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	lea	rax, 496[rsp]	 # tmp1629,
	mov	QWORD PTR 312[rsp], rax	 # %sfp, tmp1629
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	r13, QWORD PTR 384[rsi]	 # _237, MEM[(const struct basic_string *)tokens_64 + 384B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:198: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	mov	QWORD PTR 480[rsp], rax	 # MEM[(struct _Alloc_hider *)&D.217012]._M_p, tmp1629
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:227: 	if (__dnew > size_type(_S_local_capacity))
	cmp	r12, 15	 # _238,
	ja	.L919	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:432: 	if (__n == 1)
	cmp	r12, 1	 # _238,
	je	.L920	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:421: 	if (__n == 0)
	test	r12, r12	 # _238
	jne	.L921	 #,
.L565:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	rax, QWORD PTR 480[rsp]	 # D.217012._M_dataplus._M_p, D.217012._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:223:       { _M_string_length = __length; }
	mov	QWORD PTR 488[rsp], r12	 # D.217012._M_string_length, _238
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR [rax+r12], 0	 # MEM[(char_type &)_821],
 # source/main.cpp:44:             Animal* animal = new Animal(tax, R, dt, const_cast<const f32*>(beta), B, mu, sigma, kn, gn, tokens[12]);
	movzx	eax, r15b	 # _240, _209
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:1084:       { return _M_string_length; }
	mov	r12, QWORD PTR 520[rsp]	 # _836, MEM[(const struct basic_string *)_2267]._M_string_length
 # source/main.cpp:44:             Animal* animal = new Animal(tax, R, dt, const_cast<const f32*>(beta), B, mu, sigma, kn, gn, tokens[12]);
	mov	DWORD PTR 340[rsp], eax	 # %sfp, _240
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:198: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	lea	rax, 688[rsp]	 # tmp1641,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	r13, QWORD PTR 512[rsp]	 # _835, MEM[(const struct basic_string *)_2267]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:198: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	mov	QWORD PTR 320[rsp], rax	 # %sfp, tmp1641
	mov	QWORD PTR 672[rsp], rax	 # MEM[(struct _Alloc_hider *)_916]._M_p, tmp1641
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:227: 	if (__dnew > size_type(_S_local_capacity))
	cmp	r12, 15	 # _836,
	ja	.L922	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:432: 	if (__n == 1)
	cmp	r12, 1	 # _836,
	je	.L923	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:421: 	if (__n == 0)
	test	r12, r12	 # _836
	jne	.L924	 #,
.L571:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	rax, QWORD PTR 672[rsp]	 # MEM[(const struct basic_string *)_916]._M_dataplus._M_p, MEM[(const struct basic_string *)_916]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:223:       { _M_string_length = __length; }
	mov	QWORD PTR 680[rsp], r12	 # MEM[(struct basic_string *)_916]._M_string_length, _836
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR [rax+r12], 0	 # MEM[(char_type &)_866],
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:1084:       { return _M_string_length; }
	mov	r12, QWORD PTR 552[rsp]	 # _841, MEM[(const struct basic_string *)_2267 + 32B]._M_string_length
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:198: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	lea	rax, 720[rsp]	 # tmp1642,
	mov	QWORD PTR 328[rsp], rax	 # %sfp, tmp1642
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	r13, QWORD PTR 544[rsp]	 # _840, MEM[(const struct basic_string *)_2267 + 32B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:198: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	mov	QWORD PTR 704[rsp], rax	 # MEM[(struct _Alloc_hider *)_916 + 32B]._M_p, tmp1642
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:227: 	if (__dnew > size_type(_S_local_capacity))
	cmp	r12, 15	 # _841,
	ja	.L925	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:432: 	if (__n == 1)
	cmp	r12, 1	 # _841,
	je	.L926	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:421: 	if (__n == 0)
	test	r12, r12	 # _841
	jne	.L927	 #,
.L577:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	rax, QWORD PTR 704[rsp]	 # MEM[(const struct basic_string *)_916 + 32B]._M_dataplus._M_p, MEM[(const struct basic_string *)_916 + 32B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:223:       { _M_string_length = __length; }
	mov	QWORD PTR 712[rsp], r12	 # MEM[(struct basic_string *)_916 + 32B]._M_string_length, _841
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR [rax+r12], 0	 # MEM[(char_type &)_886],
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:1084:       { return _M_string_length; }
	mov	r13, QWORD PTR 584[rsp]	 # _846, MEM[(const struct basic_string *)_2267 + 64B]._M_string_length
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:198: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	lea	r12, 752[rsp]	 # tmp1643,
	mov	QWORD PTR 736[rsp], r12	 # MEM[(struct _Alloc_hider *)_916 + 64B]._M_p, tmp1643
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	r14, QWORD PTR 576[rsp]	 # _845, MEM[(const struct basic_string *)_2267 + 64B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:227: 	if (__dnew > size_type(_S_local_capacity))
	cmp	r13, 15	 # _846,
	ja	.L928	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:432: 	if (__n == 1)
	cmp	r13, 1	 # _846,
	je	.L929	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:421: 	if (__n == 0)
	test	r13, r13	 # _846
	jne	.L930	 #,
.L583:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	rax, QWORD PTR 736[rsp]	 # MEM[(const struct basic_string *)_916 + 64B]._M_dataplus._M_p, MEM[(const struct basic_string *)_916 + 64B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:223:       { _M_string_length = __length; }
	mov	QWORD PTR 744[rsp], r13	 # MEM[(struct basic_string *)_916 + 64B]._M_string_length, _846
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR [rax+r13], 0	 # MEM[(char_type &)_906],
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:1084:       { return _M_string_length; }
	mov	r14, QWORD PTR 616[rsp]	 # _851, MEM[(const struct basic_string *)_2267 + 96B]._M_string_length
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:198: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	lea	r13, 784[rsp]	 # tmp1644,
	mov	QWORD PTR 768[rsp], r13	 # MEM[(struct _Alloc_hider *)_916 + 96B]._M_p, tmp1644
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	r15, QWORD PTR 608[rsp]	 # _850, MEM[(const struct basic_string *)_2267 + 96B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:227: 	if (__dnew > size_type(_S_local_capacity))
	cmp	r14, 15	 # _851,
	ja	.L931	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:432: 	if (__n == 1)
	cmp	r14, 1	 # _851,
	je	.L932	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:421: 	if (__n == 0)
	test	r14, r14	 # _851
	jne	.L933	 #,
.L589:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	rax, QWORD PTR 768[rsp]	 # MEM[(const struct basic_string *)_916 + 96B]._M_dataplus._M_p, MEM[(const struct basic_string *)_916 + 96B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:223:       { _M_string_length = __length; }
	mov	QWORD PTR 776[rsp], r14	 # MEM[(struct basic_string *)_916 + 96B]._M_string_length, _851
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR [rax+r14], 0	 # MEM[(char_type &)_926],
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:1084:       { return _M_string_length; }
	mov	r15, QWORD PTR 648[rsp]	 # _856, MEM[(const struct basic_string *)_2267 + 128B]._M_string_length
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:198: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	lea	r14, 816[rsp]	 # tmp1645,
	mov	QWORD PTR 800[rsp], r14	 # MEM[(struct _Alloc_hider *)_916 + 128B]._M_p, tmp1645
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rdx, QWORD PTR 640[rsp]	 # _855, MEM[(const struct basic_string *)_2267 + 128B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:227: 	if (__dnew > size_type(_S_local_capacity))
	cmp	r15, 15	 # _856,
	ja	.L934	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:432: 	if (__n == 1)
	cmp	r15, 1	 # _856,
	je	.L935	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:421: 	if (__n == 0)
	test	r15, r15	 # _856
	jne	.L936	 #,
.L595:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	rax, QWORD PTR 800[rsp]	 # MEM[(const struct basic_string *)_916 + 128B]._M_dataplus._M_p, MEM[(const struct basic_string *)_916 + 128B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:223:       { _M_string_length = __length; }
	mov	QWORD PTR 808[rsp], r15	 # MEM[(struct basic_string *)_916 + 128B]._M_string_length, _856
 # source/main.cpp:44:             Animal* animal = new Animal(tax, R, dt, const_cast<const f32*>(beta), B, mu, sigma, kn, gn, tokens[12]);
	vmovss	xmm3, DWORD PTR .LC20[rip]	 # tmp1240,
	mov	rcx, QWORD PTR 216[rsp]	 #, %sfp
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR [rax+r15], 0	 # MEM[(char_type &)_946],
 # source/main.cpp:30:             const u32 R = (u32)std::stoul(tokens[5]) * scale;
	mov	eax, DWORD PTR 276[rsp]	 # _474, %sfp
 # source/main.cpp:44:             Animal* animal = new Animal(tax, R, dt, const_cast<const f32*>(beta), B, mu, sigma, kn, gn, tokens[12]);
	lea	r15, 480[rsp]	 # tmp1628,
	vdivss	xmm3, xmm3, xmm8	 #, tmp1240, _502
	mov	QWORD PTR 80[rsp], r15	 #, tmp1628
 # source/main.cpp:30:             const u32 R = (u32)std::stoul(tokens[5]) * scale;
	lea	edx, [rax+rax*4]	 # R_190,
 # source/main.cpp:42:             const GrowthFunction gn = static_cast<GrowthFunction>(std::stoi(tokens[11]) - 1);
	mov	eax, DWORD PTR 336[rsp]	 # _699, %sfp
 # source/main.cpp:44:             Animal* animal = new Animal(tax, R, dt, const_cast<const f32*>(beta), B, mu, sigma, kn, gn, tokens[12]);
	vmovss	DWORD PTR 56[rsp], xmm9	 #, _680
	lea	r8d, [rdx+rdx]	 #,
	mov	rdx, QWORD PTR 144[rsp]	 #, %sfp
	vmovss	DWORD PTR 48[rsp], xmm10	 #, _665
 # source/main.cpp:42:             const GrowthFunction gn = static_cast<GrowthFunction>(std::stoi(tokens[11]) - 1);
	sub	eax, 1	 # _699,
 # source/main.cpp:44:             Animal* animal = new Animal(tax, R, dt, const_cast<const f32*>(beta), B, mu, sigma, kn, gn, tokens[12]);
	vmovq	QWORD PTR 32[rsp], xmm6	 #, _208
	mov	DWORD PTR 72[rsp], eax	 #, gn_220
 # source/main.cpp:41:             const KernelCore kn = static_cast<KernelCore>(std::stoi(tokens[10]) - 1);
	mov	eax, DWORD PTR 300[rsp]	 # _685, %sfp
	sub	eax, 1	 # _685,
 # source/main.cpp:44:             Animal* animal = new Animal(tax, R, dt, const_cast<const f32*>(beta), B, mu, sigma, kn, gn, tokens[12]);
	mov	DWORD PTR 64[rsp], eax	 #, kn_217
	mov	eax, DWORD PTR 340[rsp]	 # _240, %sfp
	mov	DWORD PTR 40[rsp], eax	 #, _240
.LEHB66:
	call	_ZN5Lenia6AnimalC1ENS_8TaxonomyEjfPKfhffNS_10KernelCoreENS_14GrowthFunctionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE	 #
.LEHE66:
 # source/main.cpp:44:             Animal* animal = new Animal(tax, R, dt, const_cast<const f32*>(beta), B, mu, sigma, kn, gn, tokens[12]);
	mov	rax, QWORD PTR 216[rsp]	 # _236, %sfp
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rcx, QWORD PTR 800[rsp]	 # _1000, MEM[(const struct basic_string *)_916 + 128B]._M_dataplus._M_p
 # source/main.cpp:44:             Animal* animal = new Animal(tax, R, dt, const_cast<const f32*>(beta), B, mu, sigma, kn, gn, tokens[12]);
	mov	QWORD PTR 408[rsp], rax	 # animal, _236
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:269: 	if (_M_data() == _M_local_data())
	cmp	rcx, r14	 # _1000, tmp1645
	je	.L602	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	mov	rax, QWORD PTR 816[rsp]	 # tmp1992, MEM[(struct basic_string *)_916 + 128B].D.45451._M_allocated_capacity
	lea	rdx, 1[rax]	 # _1004,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L602:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rcx, QWORD PTR 768[rsp]	 # _995, MEM[(const struct basic_string *)_916 + 96B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:269: 	if (_M_data() == _M_local_data())
	cmp	rcx, r13	 # _995, tmp1644
	je	.L603	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	mov	rax, QWORD PTR 784[rsp]	 # tmp1993, MEM[(struct basic_string *)_916 + 96B].D.45451._M_allocated_capacity
	lea	rdx, 1[rax]	 # _999,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L603:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rcx, QWORD PTR 736[rsp]	 # _990, MEM[(const struct basic_string *)_916 + 64B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:269: 	if (_M_data() == _M_local_data())
	cmp	rcx, r12	 # _990, tmp1643
	je	.L604	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	mov	rax, QWORD PTR 752[rsp]	 # tmp1994, MEM[(struct basic_string *)_916 + 64B].D.45451._M_allocated_capacity
	lea	rdx, 1[rax]	 # _994,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L604:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rcx, QWORD PTR 704[rsp]	 # _985, MEM[(const struct basic_string *)_916 + 32B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:269: 	if (_M_data() == _M_local_data())
	mov	rax, QWORD PTR 328[rsp]	 # tmp1642, %sfp
	cmp	rcx, rax	 # _985, tmp1642
	je	.L605	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	mov	rax, QWORD PTR 720[rsp]	 # tmp1996, MEM[(struct basic_string *)_916 + 32B].D.45451._M_allocated_capacity
	lea	rdx, 1[rax]	 # _989,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L605:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rcx, QWORD PTR 672[rsp]	 # _980, MEM[(const struct basic_string *)_916]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:269: 	if (_M_data() == _M_local_data())
	mov	rax, QWORD PTR 320[rsp]	 # tmp1641, %sfp
	cmp	rcx, rax	 # _980, tmp1641
	je	.L606	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	mov	rax, QWORD PTR 688[rsp]	 # tmp1998, MEM[(struct basic_string *)_916].D.45451._M_allocated_capacity
	lea	rdx, 1[rax]	 # _984,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L606:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rcx, QWORD PTR 480[rsp]	 # _970, D.217012._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:269: 	if (_M_data() == _M_local_data())
	mov	rax, QWORD PTR 312[rsp]	 # tmp1629, %sfp
	cmp	rcx, rax	 # _970, tmp1629
	je	.L607	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	mov	rax, QWORD PTR 496[rsp]	 # tmp2000, D.217012.D.45451._M_allocated_capacity
	lea	rdx, 1[rax]	 # _974,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L607:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:733:       { return static_cast<_Link_type>(this->_M_impl._M_header._M_parent); }
	mov	r12, QWORD PTR _ZN5LeniaL7AnimalsE[rip+16]	 # __x, MEM[(const struct _Rb_tree *)&Animals]._M_impl.D.166958._M_header._M_parent
	mov	r13, QWORD PTR 136[rsi]	 # _965, MEM[(long long unsigned int *)tokens_64 + 136B]
	vmovq	xmm6, QWORD PTR 128[rsi]	 # _964, MEM[(char * *)tokens_64 + 128B]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:1947:       while (__x != 0)
	test	r12, r12	 # __x
	je	.L690	 #,
	lea	rax, _ZN5LeniaL7AnimalsE[rip+8]	 # tmp1611,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:499: 	else if (__d < __gnu_cxx::__numeric_traits<int>::__min)
	mov	QWORD PTR 216[rsp], rbx	 # %sfp, __new_finish
	vmovq	rbx, xmm6	 # _964, _964
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:1947:       while (__x != 0)
	mov	QWORD PTR 144[rsp], rax	 # %sfp, tmp1611
	mov	r15, rax	 # __y, tmp1611
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:497: 	if (__d > __gnu_cxx::__numeric_traits<int>::__max)
	mov	eax, 2147483648	 # tmp1661,
	vmovq	xmm8, rax	 # tmp1661, tmp1661
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:499: 	else if (__d < __gnu_cxx::__numeric_traits<int>::__min)
	movabs	rax, -2147483649	 # tmp1662,
	vmovq	xmm9, rax	 # tmp1662, tmp1662
	jmp	.L614	 #
	.p2align 4,,10
	.p2align 3
.L611:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:1949: 	  __y = __x, __x = _S_left(__x);
	mov	r15, r12	 # __y, __x
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:1949: 	  __y = __x, __x = _S_left(__x);
	mov	r12, QWORD PTR 16[r12]	 # __x, MEM[(struct _Rb_tree_node_base *)__x_751]._M_left
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:1947:       while (__x != 0)
	test	r12, r12	 # __x
	je	.L937	 #,
.L614:
	mov	r14, QWORD PTR 40[r12]	 # _1016, MEM[(long long unsigned int *)__x_751 + 40B]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:238:       if (__b < __a)
	cmp	r13, r14	 # _965, _1016
	mov	r8, r14	 # _1019, _1016
	cmovbe	r8, r13	 # _965,, _1019
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:368: 	if (__n == 0)
	test	r8, r8	 # _1019
	je	.L609	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:381: 	return __builtin_memcmp(__s1, __s2, __n);
	mov	rcx, QWORD PTR 32[r12]	 # MEM[(char * *)__x_751 + 32B], MEM[(char * *)__x_751 + 32B]
	mov	rdx, rbx	 #, _964
	call	memcmp	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:3235: 	if (!__r)
	test	eax, eax	 # __r
	jne	.L610	 #,
.L609:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:495: 	const difference_type __d = difference_type(__n1 - __n2);
	sub	r14, r13	 # _1023, _965
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:497: 	if (__d > __gnu_cxx::__numeric_traits<int>::__max)
	vmovq	rax, xmm8	 # tmp1661, tmp1661
	cmp	r14, rax	 # _1023, tmp1661
	jge	.L611	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:499: 	else if (__d < __gnu_cxx::__numeric_traits<int>::__min)
	vmovq	rax, xmm9	 # tmp1662, tmp1662
	cmp	r14, rax	 # _1023, tmp1662
	jle	.L612	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:502: 	  return int(__d);
	mov	eax, r14d	 # __r, _1023
.L610:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:1948: 	if (!_M_impl._M_key_compare(_S_key(__x), __k))
	test	eax, eax	 # __r
	jns	.L611	 #,
.L612:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:786:       { return static_cast<_Link_type>(__x->_M_right); }
	mov	r12, QWORD PTR 24[r12]	 # __x, MEM[(struct _Rb_tree_node_base *)__x_751]._M_right
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:1947:       while (__x != 0)
	test	r12, r12	 # __x
	jne	.L614	 #,
.L937:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_map.h:599: 		    if (__i == end() || key_comp()(__k, (*__i).first))
	mov	rax, QWORD PTR 144[rsp]	 # tmp1611, %sfp
	vmovq	xmm6, rbx	 # _964, _964
	mov	rbx, QWORD PTR 216[rsp]	 # __new_finish, %sfp
	cmp	r15, rax	 # __y, tmp1611
	je	.L608	 #,
	mov	r12, QWORD PTR 40[r15]	 # _969, MEM[(long long unsigned int *)__y_283 + 40B]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:238:       if (__b < __a)
	cmp	r13, r12	 # _965, _969
	mov	r8, r12	 # _1029, _969
	cmovbe	r8, r13	 # _965,, _1029
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:368: 	if (__n == 0)
	test	r8, r8	 # _1029
	je	.L615	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:381: 	return __builtin_memcmp(__s1, __s2, __n);
	mov	rdx, QWORD PTR 32[r15]	 # MEM[(char * *)__y_283 + 32B], MEM[(char * *)__y_283 + 32B]
	vmovq	rcx, xmm6	 #, _964
	call	memcmp	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:3235: 	if (!__r)
	test	eax, eax	 # __r
	jne	.L616	 #,
.L615:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:495: 	const difference_type __d = difference_type(__n1 - __n2);
	mov	rax, r13	 # _965, _965
	sub	rax, r12	 # _965, _969
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:497: 	if (__d > __gnu_cxx::__numeric_traits<int>::__max)
	cmp	rax, 2147483647	 # _1033,
	jg	.L617	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:499: 	else if (__d < __gnu_cxx::__numeric_traits<int>::__min)
	cmp	rax, -2147483648	 # _1033,
	jl	.L608	 #,
.L616:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_map.h:599: 		    if (__i == end() || key_comp()(__k, (*__i).first))
	test	eax, eax	 # __r
	js	.L608	 #,
.L617:
	mov	rax, QWORD PTR .refptr._ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE[rip]	 # tmp2010,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rcx, QWORD PTR 640[rsp]	 # _1062, MEM[(const struct basic_string *)_2267 + 128B]._M_dataplus._M_p
	add	rax, 16	 # tmp1308,
	vpinsrq	xmm6, xmm11, rax, 1	 # _1545, _1911, tmp1308
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:269: 	if (_M_data() == _M_local_data())
	mov	rax, QWORD PTR 304[rsp]	 # tmp1639, %sfp
	cmp	rcx, rax	 # _1062, tmp1639
	je	.L618	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	mov	rax, QWORD PTR 656[rsp]	 # tmp2012, MEM[(struct basic_string *)_2267 + 128B].D.45451._M_allocated_capacity
	lea	rdx, 1[rax]	 # _1066,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L618:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rcx, QWORD PTR 608[rsp]	 # _1057, MEM[(const struct basic_string *)_2267 + 96B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:269: 	if (_M_data() == _M_local_data())
	mov	rax, QWORD PTR 288[rsp]	 # tmp1638, %sfp
	cmp	rcx, rax	 # _1057, tmp1638
	je	.L619	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	mov	rax, QWORD PTR 624[rsp]	 # tmp2014, MEM[(struct basic_string *)_2267 + 96B].D.45451._M_allocated_capacity
	lea	rdx, 1[rax]	 # _1061,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L619:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rcx, QWORD PTR 576[rsp]	 # _1052, MEM[(const struct basic_string *)_2267 + 64B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:269: 	if (_M_data() == _M_local_data())
	mov	rax, QWORD PTR 280[rsp]	 # tmp1637, %sfp
	cmp	rcx, rax	 # _1052, tmp1637
	je	.L620	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	mov	rax, QWORD PTR 592[rsp]	 # tmp2016, MEM[(struct basic_string *)_2267 + 64B].D.45451._M_allocated_capacity
	lea	rdx, 1[rax]	 # _1056,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L620:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rcx, QWORD PTR 544[rsp]	 # _1047, MEM[(const struct basic_string *)_2267 + 32B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:269: 	if (_M_data() == _M_local_data())
	mov	rax, QWORD PTR 264[rsp]	 # tmp1633, %sfp
	cmp	rcx, rax	 # _1047, tmp1633
	je	.L621	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	mov	rax, QWORD PTR 560[rsp]	 # tmp2018, MEM[(struct basic_string *)_2267 + 32B].D.45451._M_allocated_capacity
	lea	rdx, 1[rax]	 # _1051,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L621:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rcx, QWORD PTR 512[rsp]	 # _1042, MEM[(const struct basic_string *)_2267]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:269: 	if (_M_data() == _M_local_data())
	mov	rax, QWORD PTR 248[rsp]	 # tmp1632, %sfp
	cmp	rcx, rax	 # _1042, tmp1632
	je	.L622	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	mov	rax, QWORD PTR 528[rsp]	 # tmp2020, MEM[(struct basic_string *)_2267].D.45451._M_allocated_capacity
	lea	rdx, 1[rax]	 # _1046,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L622:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:388: 	if (__p)
	mov	rcx, QWORD PTR 128[rsp]	 # vBeta$D142930$_M_impl$D142228$_M_start, %sfp
	test	rcx, rcx	 # vBeta$D142930$_M_impl$D142228$_M_start
	je	.L623	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	sub	rdi, rcx	 # vBeta$D142930$_M_impl$D142228$_M_end_of_storage, vBeta$D142930$_M_impl$D142228$_M_start
	mov	rdx, rdi	 # _243, vBeta$D142930$_M_impl$D142228$_M_end_of_storage
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L623:
 # C:/msys64/mingw64/include/c++/14.2.0/sstream:1071:       { }
	mov	rax, QWORD PTR .refptr._ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE[rip]	 # tmp2024,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rcx, QWORD PTR 1328[rsp]	 # _1122, MEM[(const struct basic_string *)_2310 + 96B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/sstream:1071:       { }
	vmovdqu	XMMWORD PTR 1248[rsp], xmm6	 # MEM <vector(2) long long unsigned int> [(int (*) () * *)_2310 + 16B], _1545
	add	rax, 24	 # tmp1332,
	mov	QWORD PTR 1232[rsp], rax	 # MEM[(struct basic_stringstream *)_2310].D.165183.D.103579._vptr.basic_istream, tmp1332
	mov	rax, QWORD PTR .refptr._ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE[rip]	 # tmp2025,
	add	rax, 104	 # tmp1334,
	mov	QWORD PTR 1360[rsp], rax	 # MEM[(struct basic_ios *)_2310 + 128B].D.69971._vptr.ios_base, tmp1334
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:269: 	if (_M_data() == _M_local_data())
	mov	rax, QWORD PTR 240[rsp]	 # tmp1617, %sfp
	cmp	rcx, rax	 # _1122, tmp1617
	je	.L624	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	mov	rax, QWORD PTR 1344[rsp]	 # tmp2027, MEM[(struct basic_string *)_2310 + 96B].D.45451._M_allocated_capacity
	lea	rdx, 1[rax]	 # _1126,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L624:
 # C:/msys64/mingw64/include/c++/14.2.0/streambuf:205:       { }
	mov	rax, QWORD PTR .refptr._ZTVSt15basic_streambufIcSt11char_traitsIcEE[rip]	 # tmp2028,
	mov	rcx, QWORD PTR 256[rsp]	 #, %sfp
	add	rax, 16	 # tmp1340,
	mov	QWORD PTR 1256[rsp], rax	 # MEM[(struct basic_streambuf *)_2310 + 24B]._vptr.basic_streambuf, tmp1340
	call	_ZNSt6localeD1Ev	 #
 # C:/msys64/mingw64/include/c++/14.2.0/istream:1012:       ~basic_iostream() { }
	mov	rax, QWORD PTR 176[rsp]	 # _329, %sfp
	mov	rdi, QWORD PTR 184[rsp]	 # _333, %sfp
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:286:       ~basic_ios() { }
	mov	rcx, QWORD PTR 200[rsp]	 #, %sfp
 # C:/msys64/mingw64/include/c++/14.2.0/istream:1012:       ~basic_iostream() { }
	mov	rax, QWORD PTR -24[rax]	 # MEM[(long long int *)_329 + -24B], MEM[(long long int *)_329 + -24B]
	mov	QWORD PTR 1232[rsp+rax], rdi	 # MEM[(struct basic_ios *)_1107].D.69971._vptr.ios_base, _333
 # C:/msys64/mingw64/include/c++/14.2.0/ostream:101:       ~basic_ostream() { }
	mov	rax, QWORD PTR 160[rsp]	 # _324, %sfp
	mov	rdi, QWORD PTR 168[rsp]	 # _328, %sfp
	mov	QWORD PTR 1248[rsp], rax	 # MEM[(struct basic_ostream *)_2310 + 16B]._vptr.basic_ostream, _324
	mov	rax, QWORD PTR -24[rax]	 # MEM[(long long int *)_324 + -24B], MEM[(long long int *)_324 + -24B]
	mov	QWORD PTR 1248[rsp+rax], rdi	 # MEM[(struct basic_ios *)_1113].D.69971._vptr.ios_base, _328
 # C:/msys64/mingw64/include/c++/14.2.0/istream:106:       { _M_gcount = streamsize(0); }
	mov	rax, QWORD PTR -24[rbp]	 # MEM[(long long int *)_315 + -24B], MEM[(long long int *)_315 + -24B]
	mov	rdi, QWORD PTR 152[rsp]	 # _319, %sfp
	mov	QWORD PTR 1232[rsp], rbp	 # MEM[(struct basic_istream *)_2310]._vptr.basic_istream, _315
	mov	QWORD PTR 1232[rsp+rax], rdi	 # MEM[(struct basic_ios *)_1119].D.69971._vptr.ios_base, _319
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:286:       ~basic_ios() { }
	mov	rax, QWORD PTR .refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE[rip]	 # tmp2035,
 # C:/msys64/mingw64/include/c++/14.2.0/istream:106:       { _M_gcount = streamsize(0); }
	mov	QWORD PTR 1240[rsp], 0	 # MEM[(struct basic_istream *)_2310]._M_gcount,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:286:       ~basic_ios() { }
	add	rax, 16	 # tmp1347,
	mov	QWORD PTR 1360[rsp], rax	 # MEM[(struct basic_ios *)_2310 + 128B].D.69971._vptr.ios_base, tmp1347
	call	_ZNSt8ios_baseD2Ev	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rcx, QWORD PTR 448[rsp]	 # _1096, token._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:269: 	if (_M_data() == _M_local_data())
	vmovq	rax, xmm15	 # tmp1627, tmp1627
	cmp	rcx, rax	 # _1096, tmp1627
	je	.L625	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	mov	rax, QWORD PTR 464[rsp]	 # tmp2037, token.D.45451._M_allocated_capacity
	lea	rdx, 1[rax]	 # _1100,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L625:
 # C:/msys64/mingw64/include/c++/14.2.0/sstream:1071:       { }
	mov	rax, QWORD PTR .refptr._ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE[rip]	 # tmp2038,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rcx, QWORD PTR 928[rsp]	 # _1127, MEM[(const struct basic_string *)&ss + 96B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/sstream:1071:       { }
	vmovdqu	XMMWORD PTR 848[rsp], xmm6	 # MEM <vector(2) long long unsigned int> [(int (*) () * *)&ss + 16B], _1545
	add	rax, 24	 # tmp1355,
	mov	QWORD PTR 832[rsp], rax	 # ss.D.165183.D.103579._vptr.basic_istream, tmp1355
	mov	rax, QWORD PTR .refptr._ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE[rip]	 # tmp2039,
	add	rax, 104	 # tmp1357,
	mov	QWORD PTR 960[rsp], rax	 # MEM[(struct basic_ios *)&ss + 128B].D.69971._vptr.ios_base, tmp1357
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:269: 	if (_M_data() == _M_local_data())
	mov	rax, QWORD PTR 232[rsp]	 # tmp1606, %sfp
	cmp	rcx, rax	 # _1127, tmp1606
	je	.L626	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	mov	rax, QWORD PTR 944[rsp]	 # tmp2041, MEM[(struct basic_string *)&ss + 96B].D.45451._M_allocated_capacity
	lea	rdx, 1[rax]	 # _1131,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L626:
 # C:/msys64/mingw64/include/c++/14.2.0/streambuf:205:       { }
	mov	rax, QWORD PTR .refptr._ZTVSt15basic_streambufIcSt11char_traitsIcEE[rip]	 # tmp2042,
	mov	rcx, QWORD PTR 224[rsp]	 #, %sfp
	add	rax, 16	 # tmp1363,
	mov	QWORD PTR 856[rsp], rax	 # MEM[(struct basic_streambuf *)&ss + 24B]._vptr.basic_streambuf, tmp1363
	call	_ZNSt6localeD1Ev	 #
 # C:/msys64/mingw64/include/c++/14.2.0/istream:1012:       ~basic_iostream() { }
	mov	rax, QWORD PTR 176[rsp]	 # _329, %sfp
	mov	rdi, QWORD PTR 184[rsp]	 # _333, %sfp
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:286:       ~basic_ios() { }
	mov	rcx, QWORD PTR 192[rsp]	 #, %sfp
 # C:/msys64/mingw64/include/c++/14.2.0/istream:1012:       ~basic_iostream() { }
	mov	rax, QWORD PTR -24[rax]	 # MEM[(long long int *)_329 + -24B], MEM[(long long int *)_329 + -24B]
	mov	QWORD PTR 832[rsp+rax], rdi	 # MEM[(struct basic_ios *)_1081].D.69971._vptr.ios_base, _333
 # C:/msys64/mingw64/include/c++/14.2.0/ostream:101:       ~basic_ostream() { }
	mov	rax, QWORD PTR 160[rsp]	 # _324, %sfp
	mov	rdi, QWORD PTR 168[rsp]	 # _328, %sfp
	mov	QWORD PTR 848[rsp], rax	 # MEM[(struct basic_ostream *)&ss + 16B]._vptr.basic_ostream, _324
	mov	rax, QWORD PTR -24[rax]	 # MEM[(long long int *)_324 + -24B], MEM[(long long int *)_324 + -24B]
	mov	QWORD PTR 848[rsp+rax], rdi	 # MEM[(struct basic_ios *)_1087].D.69971._vptr.ios_base, _328
 # C:/msys64/mingw64/include/c++/14.2.0/istream:106:       { _M_gcount = streamsize(0); }
	mov	rax, QWORD PTR -24[rbp]	 # MEM[(long long int *)_315 + -24B], MEM[(long long int *)_315 + -24B]
	mov	rdi, QWORD PTR 152[rsp]	 # _319, %sfp
	mov	QWORD PTR 832[rsp], rbp	 # MEM[(struct basic_istream *)&ss]._vptr.basic_istream, _315
	mov	QWORD PTR 832[rsp+rax], rdi	 # MEM[(struct basic_ios *)_1093].D.69971._vptr.ios_base, _319
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:286:       ~basic_ios() { }
	mov	rax, QWORD PTR .refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE[rip]	 # tmp2049,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_construct.h:162: 	  for (; __first != __last; ++__first)
	mov	rdi, rsi	 # __first, tokens
 # C:/msys64/mingw64/include/c++/14.2.0/istream:106:       { _M_gcount = streamsize(0); }
	mov	QWORD PTR 840[rsp], 0	 # MEM[(struct basic_istream *)&ss]._M_gcount,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:286:       ~basic_ios() { }
	add	rax, 16	 # tmp1370,
	mov	QWORD PTR 960[rsp], rax	 # MEM[(struct basic_ios *)&ss + 128B].D.69971._vptr.ios_base, tmp1370
	call	_ZNSt8ios_baseD2Ev	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_construct.h:162: 	  for (; __first != __last; ++__first)
	cmp	rsi, rbx	 # tokens, __new_finish
	je	.L630	 #,
	.p2align 4
	.p2align 3
.L627:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rcx, QWORD PTR [rdi]	 # _1132, MEM[(char * *)__first_791]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:269: 	if (_M_data() == _M_local_data())
	lea	rax, 16[rdi]	 # _2079,
	cmp	rcx, rax	 # _1132, _2079
	je	.L629	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	mov	rax, QWORD PTR 16[rdi]	 # tmp2051, MEM <size_type> [(union ._anon_69 *)__first_791 + 16B]
	lea	rdx, 1[rax]	 # _1136,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L629:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_construct.h:162: 	  for (; __first != __last; ++__first)
	add	rdi, 32	 # __first,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_construct.h:162: 	  for (; __first != __last; ++__first)
	cmp	rdi, rbx	 # __first, __new_finish
	jne	.L627	 #,
.L630:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rdx, QWORD PTR 104[rsp]	 # tokens$D169361$_M_impl$D168694$_M_end_of_storage, %sfp
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	rcx, rsi	 #, tokens
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	sub	rdx, rsi	 # tokens$D169361$_M_impl$D168694$_M_end_of_storage, tokens
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:4119:     { return std::getline(__is, __str, __is.widen('\n')); }
	mov	rax, QWORD PTR 1632[rsp]	 # MEM[(struct basic_istream *)_2325]._vptr.basic_istream, MEM[(struct basic_istream *)_2325]._vptr.basic_istream
	mov	rax, QWORD PTR -24[rax]	 # MEM[(long long int *)_1137 + -24B], MEM[(long long int *)_1137 + -24B]
	mov	rbx, QWORD PTR 1872[rsp+rax]	 # _588, MEM[(const struct __ctype_type * *)_1140 + 240B]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:49:       if (!__f)
	test	rbx, rbx	 # _588
	jne	.L407	 #,
.L628:
.LEHB67:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:50: 	__throw_bad_cast();
	call	_ZSt16__throw_bad_castv	 #
.LEHE67:
	.p2align 4,,10
	.p2align 3
.L868:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:143:       if (__capacity > max_size())
	test	r14, r14	 # _411
	js	.L938	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:134: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	mov	rcx, r14	 # _456, _411
	add	rcx, 1	 # _456,
	js	.L939	 #,
	mov	QWORD PTR 112[rsp], rdx	 # %sfp, _410
.LEHB68:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwy	 #
.LEHE68:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:218:       { _M_dataplus._M_p = __p; }
	mov	QWORD PTR 0[r13], rax	 # _408->_M_dataplus._M_p, _409
	mov	rdx, QWORD PTR 112[rsp]	 # _410, %sfp
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	rcx, rax	 # _409, tmp1687
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:255:       { _M_allocated_capacity = __capacity; }
	mov	QWORD PTR 16[r13], r14	 # _408->D.45451._M_allocated_capacity, _411
.L443:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	r8, r14	 #, _411
	call	memcpy	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rcx, QWORD PTR 0[r13]	 # _409, MEM[(const struct basic_string *)_408]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:223:       { _M_string_length = __length; }
	mov	QWORD PTR 8[r13], r14	 # _408->_M_string_length, _411
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR [rcx+r14], 0	 # MEM[(char_type &)_450],
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_uninitialized.h:1102:       for (; __first != __last; ++__first, (void)++__cur)
	cmp	rsi, rbx	 # tokens, __new_finish
	jne	.L940	 #,
.L687:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_uninitialized.h:1101:       _ForwardIterator __cur = __result;
	mov	rbx, r12	 # __cur, _441
	jmp	.L447	 #
	.p2align 4,,10
	.p2align 3
.L869:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	movzx	edx, BYTE PTR [rdx]	 # _447, MEM[(const char_type &)_410]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR 16[r13], dl	 # MEM[(char_type &)_408 + 16], _447
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:351:       }
	jmp	.L445	 #
	.p2align 4,,10
	.p2align 3
.L890:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_uninitialized.h:1129: 	  __builtin_memcpy(__result, __first, __count * sizeof(_Tp));
	mov	rdx, QWORD PTR 128[rsp]	 #, %sfp
	mov	rcx, rax	 #, _644
	call	memcpy	 #
.L503:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:687: 	__guard._M_len = this->_M_impl._M_end_of_storage - __old_start;
	mov	rcx, QWORD PTR 128[rsp]	 # vBeta$D142930$_M_impl$D142228$_M_start, %sfp
	sub	rdi, rcx	 # vBeta$D142930$_M_impl$D142228$_M_end_of_storage, vBeta$D142930$_M_impl$D142228$_M_start
	mov	rdx, rdi	 # _1368, vBeta$D142930$_M_impl$D142228$_M_end_of_storage
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/alloc_traits.h:513:       { __a.deallocate(__p, __n); }
	jmp	.L504	 #
	.p2align 4,,10
	.p2align 3
.L631:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/locale_facets.h:884: 	this->_M_widen_init();
	mov	rcx, rbx	 #, _588
.LEHB69:
	call	_ZNKSt5ctypeIcE13_M_widen_initEv	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/locale_facets.h:885: 	return this->do_widen(__c);
	mov	rax, QWORD PTR [rbx]	 # MEM[(const struct ctype *)_774].D.66525._vptr.facet, MEM[(const struct ctype *)_774].D.66525._vptr.facet
	mov	r8d, 10	 # prephitmp_1178,
	mov	r9, QWORD PTR 48[rax]	 # _1155, MEM[(int (*) () *)_1154 + 48B]
	lea	rax, _ZNKSt5ctypeIcE8do_widenEc[rip]	 # tmp1381,
	cmp	r9, rax	 # _1155, tmp1381
	je	.L632	 #,
	mov	edx, 10	 #,
	mov	rcx, rbx	 #, _588
	call	r9	 # _1155
.LEHE69:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:4119:     { return std::getline(__is, __str, __is.widen('\n')); }
	movsx	r8d, al	 # prephitmp_1178, tmp1768
	jmp	.L632	 #
.L417:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:421: 	if (__n == 0)
	test	rbx, rbx	 # _342
	je	.L418	 #,
	mov	rcx, QWORD PTR 232[rsp]	 # _1739, %sfp
	jmp	.L416	 #
.L863:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:143:       if (__capacity > max_size())
	test	rbx, rbx	 # _342
	js	.L941	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:134: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	mov	rcx, rbx	 # _367, _342
	add	rcx, 1	 # _367,
	js	.L942	 #,
.LEHB70:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwy	 #
.LEHE70:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:218:       { _M_dataplus._M_p = __p; }
	mov	QWORD PTR 928[rsp], rax	 # MEM[(struct basic_string *)&ss + 96B]._M_dataplus._M_p, _1739
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	rcx, rax	 # _1739, tmp1680
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:255:       { _M_allocated_capacity = __capacity; }
	mov	QWORD PTR 944[rsp], rbx	 # MEM[(struct basic_string *)&ss + 96B].D.45451._M_allocated_capacity, _342
.L416:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	r8, rbx	 #, _342
	mov	rdx, rsi	 #, _343
	call	memcpy	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	jmp	.L418	 #
.L911:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	movzx	eax, BYTE PTR 0[r13]	 # _758, MEM[(const char_type &)_227]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR 592[rsp], al	 # MEM[(char_type &)_2267 + 80], _758
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:351:       }
	jmp	.L547	 #
.L690:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:1947:       while (__x != 0)
	lea	r15, _ZN5LeniaL7AnimalsE[rip+8]	 # __y,
.L608:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_map.h:640: 	  return _M_t._M_emplace_hint_unique(__pos,
	lea	r9, 408[rsp]	 #,
	lea	r8, 128[rsi]	 #,
	mov	rdx, r15	 #, __y
	lea	rcx, _ZN5LeniaL7AnimalsE[rip]	 # tmp1306,
.LEHB71:
	call	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5Lenia6AnimalEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE22_M_emplace_hint_uniqueIJRS5_RSA_EEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_	 #
.LEHE71:
	jmp	.L617	 #
.L876:
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	call	r12	 # tmp1631
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	mov	DWORD PTR [rax], edi	 # *_487, _482
	jmp	.L464	 #
.L881:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:143:       if (__capacity > max_size())
	test	rdi, rdi	 # _559
	js	.L943	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:134: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	mov	rcx, rdi	 # _584, _559
	add	rcx, 1	 # _584,
	js	.L944	 #,
.LEHB72:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwy	 #
.LEHE72:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:218:       { _M_dataplus._M_p = __p; }
	mov	QWORD PTR 1328[rsp], rax	 # MEM[(struct basic_string *)_2310 + 96B]._M_dataplus._M_p, _589
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	rcx, rax	 # _589, tmp1707
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:255:       { _M_allocated_capacity = __capacity; }
	mov	QWORD PTR 1344[rsp], rdi	 # MEM[(struct basic_string *)_2310 + 96B].D.45451._M_allocated_capacity, _559
.L481:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	r8, rdi	 #, _559
	mov	rdx, r13	 #, _560
	call	memcpy	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	jmp	.L483	 #
.L879:
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	call	r12	 # tmp1631
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	mov	DWORD PTR [rax], r13d	 # *_506, _500
	jmp	.L470	 #
.L882:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	movzx	eax, BYTE PTR 0[r13]	 # _575, MEM[(const char_type &)_560]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR 1344[rsp], al	 # MEM[(char_type &)_2310 + 112], _575
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:351:       }
	jmp	.L483	 #
.L904:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:143:       if (__capacity > max_size())
	test	r12, r12	 # _222
	js	.L945	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:134: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	mov	rcx, r12	 # _727, _222
	add	rcx, 1	 # _727,
	js	.L946	 #,
.LEHB73:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwy	 #
.LEHE73:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:218:       { _M_dataplus._M_p = __p; }
	mov	QWORD PTR 512[rsp], rax	 # MEM[(struct basic_string *)_2267]._M_dataplus._M_p, _628
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	rcx, rax	 # _628, tmp1750
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:255:       { _M_allocated_capacity = __capacity; }
	mov	QWORD PTR 528[rsp], r12	 # MEM[(struct basic_string *)_2267].D.45451._M_allocated_capacity, _222
.L533:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	r8, r12	 #, _222
	mov	rdx, r13	 #, _221
	call	memcpy	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	jmp	.L535	 #
.L903:
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	call	r12	 # tmp1631
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	mov	DWORD PTR [rax], r14d	 # *_712, _707
	jmp	.L527	 #
.L900:
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	call	r12	 # tmp1631
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	mov	DWORD PTR [rax], r14d	 # *_698, _693
	jmp	.L522	 #
.L897:
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	call	r12	 # tmp1631
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	mov	DWORD PTR [rax], r14d	 # *_684, _678
	jmp	.L517	 #
.L894:
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	call	r12	 # tmp1631
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	mov	DWORD PTR [rax], r14d	 # *_669, _663
	jmp	.L512	 #
.L905:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	movzx	eax, BYTE PTR 0[r13]	 # _718, MEM[(const char_type &)_221]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR 528[rsp], al	 # MEM[(char_type &)_2267 + 16], _718
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:351:       }
	jmp	.L535	 #
.L907:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:143:       if (__capacity > max_size())
	test	r12, r12	 # _225
	js	.L947	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:134: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	mov	rcx, r12	 # _747, _225
	add	rcx, 1	 # _747,
	js	.L948	 #,
.LEHB74:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwy	 #
.LEHE74:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:218:       { _M_dataplus._M_p = __p; }
	mov	QWORD PTR 544[rsp], rax	 # MEM[(struct basic_string *)_2267 + 32B]._M_dataplus._M_p, _613
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	rcx, rax	 # _613, tmp1751
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:255:       { _M_allocated_capacity = __capacity; }
	mov	QWORD PTR 560[rsp], r12	 # MEM[(struct basic_string *)_2267 + 32B].D.45451._M_allocated_capacity, _225
.L539:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	r8, r12	 #, _225
	mov	rdx, r13	 #, _224
	call	memcpy	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	jmp	.L541	 #
.L908:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	movzx	eax, BYTE PTR 0[r13]	 # _738, MEM[(const char_type &)_224]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR 560[rsp], al	 # MEM[(char_type &)_2267 + 48], _738
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:351:       }
	jmp	.L541	 #
.L910:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:143:       if (__capacity > max_size())
	test	r12, r12	 # _228
	js	.L949	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:134: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	mov	rcx, r12	 # _767, _228
	add	rcx, 1	 # _767,
	js	.L950	 #,
.LEHB75:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwy	 #
.LEHE75:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:218:       { _M_dataplus._M_p = __p; }
	mov	QWORD PTR 576[rsp], rax	 # MEM[(struct basic_string *)_2267 + 64B]._M_dataplus._M_p, _622
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	rcx, rax	 # _622, tmp1752
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:255:       { _M_allocated_capacity = __capacity; }
	mov	QWORD PTR 592[rsp], r12	 # MEM[(struct basic_string *)_2267 + 64B].D.45451._M_allocated_capacity, _228
.L545:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	r8, r12	 #, _228
	mov	rdx, r13	 #, _227
	call	memcpy	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	jmp	.L547	 #
.L913:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:143:       if (__capacity > max_size())
	test	r12, r12	 # _231
	js	.L951	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:134: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	mov	rcx, r12	 # _787, _231
	add	rcx, 1	 # _787,
	js	.L952	 #,
.LEHB76:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwy	 #
.LEHE76:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:218:       { _M_dataplus._M_p = __p; }
	mov	QWORD PTR 608[rsp], rax	 # MEM[(struct basic_string *)_2267 + 96B]._M_dataplus._M_p, _514
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	rcx, rax	 # _514, tmp1753
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:255:       { _M_allocated_capacity = __capacity; }
	mov	QWORD PTR 624[rsp], r12	 # MEM[(struct basic_string *)_2267 + 96B].D.45451._M_allocated_capacity, _231
.L551:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	r8, r12	 #, _231
	mov	rdx, r13	 #, _230
	call	memcpy	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	jmp	.L553	 #
.L914:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	movzx	eax, BYTE PTR 0[r13]	 # _778, MEM[(const char_type &)_230]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR 624[rsp], al	 # MEM[(char_type &)_2267 + 112], _778
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:351:       }
	jmp	.L553	 #
.L916:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:143:       if (__capacity > max_size())
	test	r12, r12	 # _234
	js	.L953	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:134: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	mov	rcx, r12	 # _807, _234
	add	rcx, 1	 # _807,
	js	.L954	 #,
.LEHB77:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwy	 #
.LEHE77:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:218:       { _M_dataplus._M_p = __p; }
	mov	QWORD PTR 640[rsp], rax	 # MEM[(struct basic_string *)_2267 + 128B]._M_dataplus._M_p, _520
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	rcx, rax	 # _520, tmp1754
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:255:       { _M_allocated_capacity = __capacity; }
	mov	QWORD PTR 656[rsp], r12	 # MEM[(struct basic_string *)_2267 + 128B].D.45451._M_allocated_capacity, _234
.L557:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	r8, r12	 #, _234
	mov	rdx, r13	 #, _233
	call	memcpy	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	jmp	.L559	 #
.L917:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	movzx	eax, BYTE PTR 0[r13]	 # _798, MEM[(const char_type &)_233]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR 656[rsp], al	 # MEM[(char_type &)_2267 + 144], _798
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:351:       }
	jmp	.L559	 #
.L920:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	movzx	eax, BYTE PTR 0[r13]	 # _818, MEM[(const char_type &)_237]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR 496[rsp], al	 # MEM[(char_type &)&D.217012 + 16], _818
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:351:       }
	jmp	.L565	 #
.L919:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:143:       if (__capacity > max_size())
	test	r12, r12	 # _238
	js	.L955	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:134: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	mov	rcx, r12	 # _827, _238
	add	rcx, 1	 # _827,
	js	.L956	 #,
.LEHB78:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwy	 #
.LEHE78:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:218:       { _M_dataplus._M_p = __p; }
	mov	QWORD PTR 480[rsp], rax	 # D.217012._M_dataplus._M_p, _526
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	rcx, rax	 # _526, tmp1756
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:255:       { _M_allocated_capacity = __capacity; }
	mov	QWORD PTR 496[rsp], r12	 # D.217012.D.45451._M_allocated_capacity, _238
.L563:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	r8, r12	 #, _238
	mov	rdx, r13	 #, _237
	call	memcpy	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	jmp	.L565	 #
.L923:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	movzx	eax, BYTE PTR 0[r13]	 # _863, MEM[(const char_type &)_835]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR 688[rsp], al	 # MEM[(char_type &)_916 + 16], _863
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:351:       }
	jmp	.L571	 #
.L922:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:143:       if (__capacity > max_size())
	test	r12, r12	 # _836
	js	.L957	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:134: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	mov	rcx, r12	 # _872, _836
	add	rcx, 1	 # _872,
	js	.L958	 #,
.LEHB79:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwy	 #
.LEHE79:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:218:       { _M_dataplus._M_p = __p; }
	mov	QWORD PTR 672[rsp], rax	 # MEM[(struct basic_string *)_916]._M_dataplus._M_p, _490
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	rcx, rax	 # _490, tmp1757
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:255:       { _M_allocated_capacity = __capacity; }
	mov	QWORD PTR 688[rsp], r12	 # MEM[(struct basic_string *)_916].D.45451._M_allocated_capacity, _836
.L569:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	r8, r12	 #, _836
	mov	rdx, r13	 #, _835
	call	memcpy	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	jmp	.L571	 #
.L925:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:143:       if (__capacity > max_size())
	test	r12, r12	 # _841
	js	.L959	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:134: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	mov	rcx, r12	 # _892, _841
	add	rcx, 1	 # _892,
	js	.L960	 #,
.LEHB80:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwy	 #
.LEHE80:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:218:       { _M_dataplus._M_p = __p; }
	mov	QWORD PTR 704[rsp], rax	 # MEM[(struct basic_string *)_916 + 32B]._M_dataplus._M_p, _402
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	rcx, rax	 # _402, tmp1758
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:255:       { _M_allocated_capacity = __capacity; }
	mov	QWORD PTR 720[rsp], r12	 # MEM[(struct basic_string *)_916 + 32B].D.45451._M_allocated_capacity, _841
.L575:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	r8, r12	 #, _841
	mov	rdx, r13	 #, _840
	call	memcpy	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	jmp	.L577	 #
.L926:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	movzx	eax, BYTE PTR 0[r13]	 # _883, MEM[(const char_type &)_840]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR 720[rsp], al	 # MEM[(char_type &)_916 + 48], _883
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:351:       }
	jmp	.L577	 #
.L929:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	movzx	eax, BYTE PTR [r14]	 # _903, MEM[(const char_type &)_845]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR 752[rsp], al	 # MEM[(char_type &)_916 + 80], _903
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:351:       }
	jmp	.L583	 #
.L928:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:143:       if (__capacity > max_size())
	test	r13, r13	 # _846
	js	.L961	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:134: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	mov	rcx, r13	 # _912, _846
	add	rcx, 1	 # _912,
	js	.L962	 #,
.LEHB81:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwy	 #
.LEHE81:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:218:       { _M_dataplus._M_p = __p; }
	mov	QWORD PTR 736[rsp], rax	 # MEM[(struct basic_string *)_916 + 64B]._M_dataplus._M_p, _404
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	rcx, rax	 # _404, tmp1759
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:255:       { _M_allocated_capacity = __capacity; }
	mov	QWORD PTR 752[rsp], r13	 # MEM[(struct basic_string *)_916 + 64B].D.45451._M_allocated_capacity, _846
.L581:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	r8, r13	 #, _846
	mov	rdx, r14	 #, _845
	call	memcpy	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	jmp	.L583	 #
.L932:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	movzx	eax, BYTE PTR [r15]	 # _923, MEM[(const char_type &)_850]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR 784[rsp], al	 # MEM[(char_type &)_916 + 112], _923
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:351:       }
	jmp	.L589	 #
.L931:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:143:       if (__capacity > max_size())
	test	r14, r14	 # _851
	js	.L963	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:134: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	mov	rcx, r14	 # _932, _851
	add	rcx, 1	 # _932,
	js	.L964	 #,
.LEHB82:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwy	 #
.LEHE82:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:218:       { _M_dataplus._M_p = __p; }
	mov	QWORD PTR 768[rsp], rax	 # MEM[(struct basic_string *)_916 + 96B]._M_dataplus._M_p, _418
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	rcx, rax	 # _418, tmp1760
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:255:       { _M_allocated_capacity = __capacity; }
	mov	QWORD PTR 784[rsp], r14	 # MEM[(struct basic_string *)_916 + 96B].D.45451._M_allocated_capacity, _851
.L587:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	r8, r14	 #, _851
	mov	rdx, r15	 #, _850
	call	memcpy	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	jmp	.L589	 #
.L935:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	movzx	eax, BYTE PTR [rdx]	 # _943, MEM[(const char_type &)_855]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR 816[rsp], al	 # MEM[(char_type &)_916 + 144], _943
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:351:       }
	jmp	.L595	 #
.L934:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:143:       if (__capacity > max_size())
	test	r15, r15	 # _856
	js	.L965	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:134: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	mov	rcx, r15	 # _952, _856
	add	rcx, 1	 # _952,
	js	.L966	 #,
	mov	QWORD PTR 360[rsp], rdx	 # %sfp, _855
.LEHB83:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwy	 #
.LEHE83:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:218:       { _M_dataplus._M_p = __p; }
	mov	QWORD PTR 800[rsp], rax	 # MEM[(struct basic_string *)_916 + 128B]._M_dataplus._M_p, _462
	mov	rdx, QWORD PTR 360[rsp]	 # _855, %sfp
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	rcx, rax	 # _462, tmp1761
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:255:       { _M_allocated_capacity = __capacity; }
	mov	QWORD PTR 816[rsp], r15	 # MEM[(struct basic_string *)_916 + 128B].D.45451._M_allocated_capacity, _856
.L593:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	r8, r15	 #, _856
	call	memcpy	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	jmp	.L595	 #
.L873:
.LEHB84:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:140: 	    std::__throw_bad_alloc();
	call	_ZSt17__throw_bad_allocv	 #
.LEHE84:
.L871:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	r10d, DWORD PTR [rax]	 # tmp894,* ivtmp.775
	mov	ecx, ecx	 # _472, _472
	mov	DWORD PTR [r8], r10d	 #* _467, tmp894
	mov	r10d, DWORD PTR -4[rax+rcx]	 # tmp901,
	mov	DWORD PTR -4[r8+rcx], r10d	 #, tmp901
	mov	r10, QWORD PTR -8[rax]	 # MEM[(long long unsigned int *)_1599 + -8B], MEM[(long long unsigned int *)_1599 + -8B]
	jmp	.L450	 #
.L861:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:809:       { _M_dispose(); }
	mov	rcx, QWORD PTR 208[rsp]	 #, %sfp
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:497: 	if (__d > __gnu_cxx::__numeric_traits<int>::__max)
	mov	r12d, 2147483648	 # tmp1659,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:499: 	else if (__d < __gnu_cxx::__numeric_traits<int>::__min)
	movabs	r14, -2147483649	 # tmp1660,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:809:       { _M_dispose(); }
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv	 #
 # source/main.cpp:47:     }
	mov	rcx, QWORD PTR 136[rsp]	 #, %sfp
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:194: 	: allocator_type(__a), _M_p(__dat) { }
	lea	rax, 1648[rsp]	 # tmp1395,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	ecx, 19	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:194: 	: allocator_type(__a), _M_p(__dat) { }
	mov	QWORD PTR 1632[rsp], rax	 # MEM[(struct _Alloc_hider *)_2325]._M_p, tmp1395
.LEHB85:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwy	 #
.LEHE85:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:733:       { return static_cast<_Link_type>(this->_M_impl._M_header._M_parent); }
	mov	rsi, QWORD PTR _ZN5LeniaL7AnimalsE[rip+16]	 # __x, MEM[(const struct _Rb_tree *)&Animals]._M_impl.D.166958._M_header._M_parent
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movabs	rdx, 8386094436448430446	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:255:       { _M_allocated_capacity = __capacity; }
	mov	QWORD PTR 1648[rsp], 18	 # MEM[(struct basic_string *)_2325].D.45451._M_allocated_capacity,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	rbp, rax	 # _1196, tmp1770
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:218:       { _M_dataplus._M_p = __p; }
	mov	QWORD PTR 1632[rsp], rax	 # MEM[(struct basic_string *)_2325]._M_dataplus._M_p, _1196
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movabs	rax, 8439866052738970191	 # tmp2052,
	mov	QWORD PTR 0[rbp], rax	 # MEM <char[1:18]> [(void *)_1196], tmp2052
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:1947:       while (__x != 0)
	lea	rax, _ZN5LeniaL7AnimalsE[rip+8]	 # tmp1611,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	QWORD PTR 8[rbp], rdx	 # MEM <char[1:18]> [(void *)_1196],
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:1947:       while (__x != 0)
	mov	rbx, rax	 # SR.729, tmp1611
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	WORD PTR 16[rbp], 29557	 # MEM <char[1:18]> [(void *)_1196],
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:223:       { _M_string_length = __length; }
	mov	QWORD PTR 1640[rsp], 18	 # MEM[(struct basic_string *)_2325]._M_string_length,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR 18[rbp], 0	 # MEM[(char_type &)_1196 + 18],
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:1947:       while (__x != 0)
	mov	QWORD PTR 144[rsp], rax	 # %sfp, tmp1611
	test	rsi, rsi	 # __x
	jne	.L634	 #,
.L635:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	ecx, 72	 #,
	mov	rbp, rbx	 # __pos, SR.729
.LEHB86:
	call	_Znwy	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:1084:       { return _M_string_length; }
	mov	rsi, QWORD PTR 1640[rsp]	 # _1241, MEM[(const struct basic_string *)_2325]._M_string_length
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:235: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	lea	rdi, 48[rax]	 # _1239,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	r12, QWORD PTR 1632[rsp]	 # _1240, MEM[(const struct basic_string *)_2325]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	rbx, rax	 # SR.729, tmp1785
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:198: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	mov	QWORD PTR 32[rax], rdi	 # MEM[(struct _Alloc_hider *)_1229 + 32B]._M_p, _1239
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:227: 	if (__dnew > size_type(_S_local_capacity))
	cmp	rsi, 15	 # _1241,
	ja	.L967	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:432: 	if (__n == 1)
	cmp	rsi, 1	 # _1241,
	je	.L968	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:421: 	if (__n == 0)
	test	rsi, rsi	 # _1241
	jne	.L969	 #,
.L661:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	rax, QWORD PTR 32[rbx]	 # MEM[(const struct basic_string *)_1229 + 32B]._M_dataplus._M_p, MEM[(const struct basic_string *)_1229 + 32B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:223:       { _M_string_length = __length; }
	mov	QWORD PTR 40[rbx], rsi	 # MEM[(struct basic_string *)_1229 + 32B]._M_string_length, _1241
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:2459: 	auto __res = _M_get_insert_hint_unique_pos(__pos, __z._M_key());
	mov	r8, rbp	 #, __pos
	lea	rcx, 368[rsp]	 # tmp1466,
	lea	rdx, _ZN5LeniaL7AnimalsE[rip]	 # tmp1467,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR [rax+rsi], 0	 # MEM[(char_type &)_1252],
	mov	r12, QWORD PTR 40[rbx]	 # _1236, MEM[(long long unsigned int *)_1229 + 40B]
 # C:/msys64/mingw64/include/c++/14.2.0/tuple:2888: 	second(std::forward<_Args2>(std::get<_Indexes2>(__tuple2))...)
	xor	eax, eax	 #
	mov	r14, QWORD PTR 32[rbx]	 # _1235, MEM[(char * *)_1229 + 32B]
	mov	QWORD PTR 64[rbx], rax	 # MEM[(struct pair *)_1229 + 32B].second,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:2459: 	auto __res = _M_get_insert_hint_unique_pos(__pos, __z._M_key());
	mov	QWORD PTR 32[rsp], r12	 #, _1236
	mov	r9, r14	 #, _1235
	call	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5Lenia6AnimalEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISB_ERS7_.isra.0	 #
	mov	rbp, QWORD PTR 376[rsp]	 # __res,
	mov	rsi, QWORD PTR 368[rsp]	 # __res,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:2460: 	if (__res.second)
	test	rbp, rbp	 # __res
	je	.L970	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:2377:       bool __insert_left = (__x != 0 || __p == _M_end()
	mov	rax, QWORD PTR 144[rsp]	 # tmp1611, %sfp
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:2378: 			    || _M_impl._M_key_compare(_S_key(__z),
	test	rsi, rsi	 # __res
	setne	sil	 #, _196
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:2377:       bool __insert_left = (__x != 0 || __p == _M_end()
	cmp	rbp, rax	 # __res, tmp1611
	sete	al	 #, _2389
	or	sil, al	 # iftmp.173_1269, _2389
	je	.L971	 #,
.L667:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:2381:       _Rb_tree_insert_and_rebalance(__insert_left, __z, __p,
	movzx	ecx, sil	 # _1270, iftmp.173_1269
	lea	r9, _ZN5LeniaL7AnimalsE[rip+8]	 #,
	mov	r8, rbp	 #, __res
	mov	rdx, rbx	 #, SR.729
	call	_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:2383:       ++_M_impl._M_node_count;
	add	QWORD PTR _ZN5LeniaL7AnimalsE[rip+40], 1	 # MEM[(struct _Rb_tree *)&Animals]._M_impl.D.166958._M_node_count,
.L654:
 # source/main.cpp:50: 		Animal* animal = Animals[name];
	mov	r15, QWORD PTR 64[rbx]	 # animal, MEM[(struct Animal * &)__i$_M_node_168 + 64]
 # source/main.cpp:51:         animal->Bind();
	mov	rcx, r15	 #, animal
	call	_ZN5Lenia6Animal4BindEv	 #
.LEHE86:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:809:       { _M_dispose(); }
	mov	rcx, QWORD PTR 136[rsp]	 #, %sfp
 # source/main.cpp:75:     Lenia::Simulation sim = Lenia::Simulation(Size, Size, scale);
	lea	rsi, _ZN5LeniaL5MagmaE[rip]	 # tmp2067,
	vxorps	xmm9, xmm9, xmm9	 # tmp1802
 # source/main.cpp:82:     bool paused = false;
	xor	ebp, ebp	 # paused
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:809:       { _M_dispose(); }
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv	 #
 # source/main.cpp:75:     Lenia::Simulation sim = Lenia::Simulation(Size, Size, scale);
	mov	QWORD PTR 32[rsp], rsi	 #, tmp2067
	mov	edx, 1024	 #,
 # source/main.cpp:81:     u32 frame_count = 0;
	xor	esi, esi	 # frame_count
 # source/main.cpp:75:     Lenia::Simulation sim = Lenia::Simulation(Size, Size, scale);
	lea	rax, 1232[rsp]	 # tmp1612,
	mov	r9d, 10	 #,
	mov	r8d, 1024	 #,
	mov	rbx, rax	 # tmp1612, tmp1612
	mov	rcx, rax	 #, tmp1612
	mov	QWORD PTR 112[rsp], rax	 # %sfp, tmp1612
.LEHB87:
	call	_ZN5Lenia10SimulationC1EyyyRKNS_12ColorPaletteE	 #
.LEHE87:
 # source/main.cpp:76:     sim.PlaceAnimal(current_animal, 200, 200);
	mov	r9d, 200	 #,
	mov	rdx, r15	 #, animal
	mov	rcx, rbx	 #, tmp1612
	mov	r8d, 200	 #,
	call	_ZN5Lenia10Simulation11PlaceAnimalEPNS_6AnimalEjj	 #
 # source/main.cpp:87: 	GLuint numGroupsX = (sim.m_w + 31) / 32;
	mov	rax, QWORD PTR 1232[rsp]	 # tmp2068, MEM[(struct Simulation *)_2310].m_w
 # source/main.cpp:80:     f64 average_render_time = 0.;
	vxorpd	xmm7, xmm7, xmm7	 # average_render_time
 # source/main.cpp:109:             glUseProgram(compute_program);
	mov	r12, QWORD PTR .refptr.glad_glUseProgram[rip]	 # tmp1657,
 # source/main.cpp:110:             glDispatchCompute(numGroupsX, numGroupsY, 1);
	mov	r14, QWORD PTR .refptr.glad_glDispatchCompute[rip]	 # tmp1658,
 # source/main.cpp:78:     f64 start_time = 0, render_time = 0;
	vmovsd	xmm6, xmm7, xmm7	 # render_time,
 # source/main.cpp:87: 	GLuint numGroupsX = (sim.m_w + 31) / 32;
	add	rax, 31	 # _4,
 # source/main.cpp:87: 	GLuint numGroupsX = (sim.m_w + 31) / 32;
	shr	rax, 5	 # _5,
 # source/main.cpp:87: 	GLuint numGroupsX = (sim.m_w + 31) / 32;
	vmovd	xmm11, eax	 # numGroupsX, _5
 # source/main.cpp:88:     GLuint numGroupsY = (sim.m_h + 31) / 32;
	mov	rax, QWORD PTR 1240[rsp]	 # tmp2069, MEM[(struct Simulation *)_2310].m_h
	add	rax, 31	 # _7,
 # source/main.cpp:88:     GLuint numGroupsY = (sim.m_h + 31) / 32;
	shr	rax, 5	 # _8,
 # source/main.cpp:88:     GLuint numGroupsY = (sim.m_h + 31) / 32;
	vmovd	xmm10, eax	 # numGroupsY, _8
 # source/main.cpp:91:     while (!glfwWindowShouldClose(window)) [[likely]]
	jmp	.L672	 #
	.p2align 4,,10
	.p2align 3
.L673:
 # source/main.cpp:97:         if (glfwGetKey(window, GLFW_KEY_P) == GLFW_PRESS) {
	mov	edx, 80	 #,
	vmovq	rcx, xmm12	 #, _261
.LEHB88:
	call	glfwGetKey	 #
 # source/main.cpp:97:         if (glfwGetKey(window, GLFW_KEY_P) == GLFW_PRESS) {
	cmp	eax, 1	 # tmp1792,
	je	.L972	 #,
.L674:
 # source/main.cpp:101:         if (glfwGetKey(window, GLFW_KEY_UP) == GLFW_PRESS) {
	mov	edx, 265	 #,
	vmovq	rcx, xmm12	 #, _261
	call	glfwGetKey	 #
 # source/main.cpp:104:         if (glfwGetKey(window, GLFW_KEY_DOWN) == GLFW_PRESS) {
	mov	edx, 264	 #,
	vmovq	rcx, xmm12	 #, _261
	call	glfwGetKey	 #
 # source/main.cpp:107:         if (!paused) {
	test	bpl, bpl	 # paused
	jne	.L678	 #,
 # source/main.cpp:108:             glClear(GL_COLOR_BUFFER_BIT);
	mov	rax, QWORD PTR .refptr.glad_glClear[rip]	 # tmp2070,
	mov	ecx, 16384	 #,
	call	[QWORD PTR [rax]]	 # glad_glClear
 # source/main.cpp:109:             glUseProgram(compute_program);
	vmovd	ecx, xmm14	 #, _73
	call	[QWORD PTR [r12]]	 # glad_glUseProgram
 # source/main.cpp:110:             glDispatchCompute(numGroupsX, numGroupsY, 1);
	mov	r8d, 1	 #,
	vmovd	edx, xmm10	 #, numGroupsY
	vmovd	ecx, xmm11	 #, numGroupsX
	call	[QWORD PTR [r14]]	 # glad_glDispatchCompute
 # source/main.cpp:111:             glMemoryBarrier(GL_SHADER_STORAGE_BARRIER_BIT);
	mov	rax, QWORD PTR .refptr.glad_glMemoryBarrier[rip]	 # tmp1520,
	mov	ecx, 8192	 #,
	call	[QWORD PTR [rax]]	 # glad_glMemoryBarrier
 # source/main.cpp:112:             glUniform1ui(0, sim.m_w);
	mov	rbx, QWORD PTR .refptr.glad_glUniform1ui[rip]	 # tmp1616,
	mov	edx, DWORD PTR 1232[rsp]	 #, MEM[(struct Simulation *)_2310].m_w
	xor	ecx, ecx	 #
	call	[QWORD PTR [rbx]]	 # glad_glUniform1ui
 # source/main.cpp:113:             glUniform1ui(1, sim.m_h);
	mov	edx, DWORD PTR 1240[rsp]	 #, MEM[(struct Simulation *)_2310].m_h
	mov	ecx, 1	 #,
	call	[QWORD PTR [rbx]]	 # glad_glUniform1ui
 # source/main.cpp:114:             glUniform1ui(2, current_animal->m_r);
	mov	edx, DWORD PTR 176[r15]	 # animal_95->m_r, animal_95->m_r
	mov	ecx, 2	 #,
	call	[QWORD PTR [rbx]]	 # glad_glUniform1ui
 # source/main.cpp:115:             glUniform1f(3, current_animal->m_dt);
	mov	rdi, QWORD PTR .refptr.glad_glUniform1f[rip]	 # tmp1624,
	mov	ecx, 3	 #,
	vmovss	xmm1, DWORD PTR 184[r15]	 #, animal_95->m_dt
	call	[QWORD PTR [rdi]]	 # glad_glUniform1f
 # source/main.cpp:116:             glUniform1f(4, current_animal->m_mu);
	vmovss	xmm1, DWORD PTR 204[r15]	 #, animal_95->m_mu
	mov	ecx, 4	 #,
	call	[QWORD PTR [rdi]]	 # glad_glUniform1f
 # source/main.cpp:117:             glUniform1f(5, current_animal->m_sigma);
	vmovss	xmm1, DWORD PTR 208[r15]	 #, animal_95->m_sigma
	mov	ecx, 5	 #,
	call	[QWORD PTR [rdi]]	 # glad_glUniform1f
 # source/main.cpp:118:             glUniform1f(6, current_animal->m_dx2);
	vmovss	xmm1, DWORD PTR 188[r15]	 #, animal_95->m_dx2
	mov	ecx, 6	 #,
	call	[QWORD PTR [rdi]]	 # glad_glUniform1f
 # source/main.cpp:119:             glUniform1ui(7, (GLuint)current_animal->m_gn);
	mov	edx, DWORD PTR 216[r15]	 # animal_95->m_gn, animal_95->m_gn
	mov	ecx, 7	 #,
	call	[QWORD PTR [rbx]]	 # glad_glUniform1ui
 # source/main.cpp:120:             glUseProgram(shader_program);
	vmovd	ecx, xmm13	 #, _70
	call	[QWORD PTR [r12]]	 # glad_glUseProgram
 # source/main.cpp:121:             glUniform1ui(0, sim.m_w);
	mov	edx, DWORD PTR 1232[rsp]	 #, MEM[(struct Simulation *)_2310].m_w
	xor	ecx, ecx	 #
	call	[QWORD PTR [rbx]]	 # glad_glUniform1ui
 # source/main.cpp:122:             glUniform1ui(1, sim.m_h);
	mov	edx, DWORD PTR 1240[rsp]	 #, MEM[(struct Simulation *)_2310].m_h
	mov	ecx, 1	 #,
	call	[QWORD PTR [rbx]]	 # glad_glUniform1ui
 # source/main.cpp:123:             glUniform2ui(2, sim.m_centerOfMass.x, sim.m_centerOfMass.y);
	mov	rax, QWORD PTR .refptr.glad_glUniform2ui[rip]	 # tmp1561,
	mov	r8d, DWORD PTR 1276[rsp]	 #, MEM[(struct Simulation *)_2310].m_centerOfMass.y
	mov	ecx, 2	 #,
	mov	edx, DWORD PTR 1272[rsp]	 #, MEM[(struct Simulation *)_2310].m_centerOfMass.x
	call	[QWORD PTR [rax]]	 # glad_glUniform2ui
 # source/main.cpp:124:             glBindVertexArray(VAO);
	mov	rax, QWORD PTR .refptr.glad_glBindVertexArray[rip]	 # tmp1564,
	mov	ecx, DWORD PTR 392[rsp]	 #, VAO
	call	[QWORD PTR [rax]]	 # glad_glBindVertexArray
 # source/main.cpp:125:             glDrawElements(GL_TRIANGLES, 6, GL_UNSIGNED_BYTE, indices);
	mov	r8d, 5121	 #,
	mov	edx, 6	 #,
	mov	ecx, 4	 #,
	mov	rax, QWORD PTR .refptr.glad_glDrawElements[rip]	 # tmp1567,
	lea	r9, 402[rsp]	 #,
	call	[QWORD PTR [rax]]	 # glad_glDrawElements
 # source/main.cpp:126:             glfwSwapBuffers(window);
	vmovq	rcx, xmm12	 #, _261
	call	glfwSwapBuffers	 #
 # source/main.cpp:127:             sim.Update();
	mov	rcx, QWORD PTR 112[rsp]	 #, %sfp
	call	_ZN5Lenia10Simulation6UpdateEv	 #
.L678:
 # source/main.cpp:130:         glfwPollEvents();
	call	glfwPollEvents	 #
 # source/main.cpp:131:         average_render_time += (render_time - average_render_time) / (++frame_count);
	add	esi, 1	 # frame_count,
 # source/main.cpp:131:         average_render_time += (render_time - average_render_time) / (++frame_count);
	vsubsd	xmm0, xmm6, xmm7	 # _46, render_time, average_render_time
 # source/main.cpp:132: 		sprintf(window_title, "Render Time: %.4f, FPS: %.1f, Average: %.4f, Field Sum: %.4f, Frame Count: %i", 
	vmovsd	xmm3, QWORD PTR .LC22[rip]	 # tmp1573,
	mov	rcx, QWORD PTR 136[rsp]	 #, %sfp
 # source/main.cpp:131:         average_render_time += (render_time - average_render_time) / (++frame_count);
	vcvtusi2sd	xmm1, xmm9, esi	 # tmp1803, tmp1802, frame_count
 # source/main.cpp:132: 		sprintf(window_title, "Render Time: %.4f, FPS: %.1f, Average: %.4f, Field Sum: %.4f, Frame Count: %i", 
	mov	DWORD PTR 48[rsp], esi	 #, frame_count
	vmovsd	xmm2, xmm6, xmm6	 #, render_time
	vmovq	r8, xmm6	 #, render_time
	vdivsd	xmm4, xmm3, xmm6	 # _49, tmp1573, render_time
	lea	rdx, .LC23[rip]	 # tmp1582,
 # source/main.cpp:131:         average_render_time += (render_time - average_render_time) / (++frame_count);
	vdivsd	xmm0, xmm0, xmm1	 # _139, _46, _47
 # source/main.cpp:132: 		sprintf(window_title, "Render Time: %.4f, FPS: %.1f, Average: %.4f, Field Sum: %.4f, Frame Count: %i", 
	vmovq	r9, xmm4	 # _49, _49
	vmovsd	xmm3, xmm4, xmm4	 #, _49
 # source/main.cpp:131:         average_render_time += (render_time - average_render_time) / (++frame_count);
	vaddsd	xmm7, xmm7, xmm0	 # average_render_time, average_render_time, _139
 # source/main.cpp:132: 		sprintf(window_title, "Render Time: %.4f, FPS: %.1f, Average: %.4f, Field Sum: %.4f, Frame Count: %i", 
	vmovsd	xmm0, QWORD PTR 1264[rsp]	 # MEM[(struct Simulation *)_2310].m_mass, MEM[(struct Simulation *)_2310].m_mass
	vmovsd	QWORD PTR 40[rsp], xmm0	 #, MEM[(struct Simulation *)_2310].m_mass
	vmovsd	QWORD PTR 32[rsp], xmm7	 #, average_render_time
	call	__mingw_sprintf	 #
 # source/main.cpp:134:         render_time = glfwGetTime() - start_time;
	call	glfwGetTime	 #
 # source/main.cpp:135:         glfwSetWindowTitle(window, window_title);
	mov	rdx, QWORD PTR 136[rsp]	 #, %sfp
	vmovq	rcx, xmm12	 #, _261
 # source/main.cpp:134:         render_time = glfwGetTime() - start_time;
	vsubsd	xmm6, xmm0, xmm8	 # render_time, tmp1796, _108
 # source/main.cpp:135:         glfwSetWindowTitle(window, window_title);
	call	glfwSetWindowTitle	 #
.L672:
 # source/main.cpp:91:     while (!glfwWindowShouldClose(window)) [[likely]]
	vmovq	rcx, xmm12	 #, _261
	call	glfwWindowShouldClose	 #
 # source/main.cpp:91:     while (!glfwWindowShouldClose(window)) [[likely]]
	test	eax, eax	 # tmp1797
	jne	.L973	 #,
 # source/main.cpp:93:         start_time = glfwGetTime();
	call	glfwGetTime	 #
 # source/main.cpp:94:         if (glfwGetKey(window, GLFW_KEY_ESCAPE) == GLFW_PRESS) {
	mov	edx, 256	 #,
	vmovq	rcx, xmm12	 #, _261
 # source/main.cpp:93:         start_time = glfwGetTime();
	vmovsd	xmm8, xmm0, xmm0	 # _108, tmp1790
 # source/main.cpp:94:         if (glfwGetKey(window, GLFW_KEY_ESCAPE) == GLFW_PRESS) {
	call	glfwGetKey	 #
 # source/main.cpp:94:         if (glfwGetKey(window, GLFW_KEY_ESCAPE) == GLFW_PRESS) {
	cmp	eax, 1	 # tmp1791,
	jne	.L673	 #,
 # source/main.cpp:95:             glfwSetWindowShouldClose(window, 1);
	mov	edx, 1	 #,
	vmovq	rcx, xmm12	 #, _261
	call	glfwSetWindowShouldClose	 #
.LEHE88:
	jmp	.L673	 #
	.p2align 4,,10
	.p2align 3
.L975:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:381: 	return __builtin_memcmp(__s1, __s2, __n);
	mov	r8d, 18	 # tmp1813,
	mov	rcx, QWORD PTR 32[rsi]	 # MEM[(char * *)__x_773 + 32B], MEM[(char * *)__x_773 + 32B]
	mov	rdx, rbp	 #, _1196
	cmp	rdi, r8	 # _1208, tmp1813
	cmovbe	r8, rdi	 # _1208,,
	call	memcmp	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:3235: 	if (!__r)
	test	eax, eax	 # __r
	jne	.L651	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:495: 	const difference_type __d = difference_type(__n1 - __n2);
	lea	rax, -18[rdi]	 # _1215,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:497: 	if (__d > __gnu_cxx::__numeric_traits<int>::__max)
	cmp	rax, r12	 # _1215, tmp1659
	jge	.L652	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:499: 	else if (__d < __gnu_cxx::__numeric_traits<int>::__min)
	cmp	rax, r14	 # _1215, tmp1660
	jle	.L650	 #,
.L651:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:1948: 	if (!_M_impl._M_key_compare(_S_key(__x), __k))
	test	eax, eax	 # __r
	js	.L650	 #,
.L652:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:1949: 	  __y = __x, __x = _S_left(__x);
	mov	rbx, rsi	 # SR.729, __x
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:1949: 	  __y = __x, __x = _S_left(__x);
	mov	rsi, QWORD PTR 16[rsi]	 # __x, MEM[(struct _Rb_tree_node_base *)__x_773]._M_left
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:1947:       while (__x != 0)
	test	rsi, rsi	 # __x
	je	.L974	 #,
.L634:
	mov	rdi, QWORD PTR 40[rsi]	 # _1208, MEM[(long long unsigned int *)__x_773 + 40B]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:368: 	if (__n == 0)
	test	rdi, rdi	 # _1208
	jne	.L975	 #,
.L650:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:786:       { return static_cast<_Link_type>(__x->_M_right); }
	mov	rsi, QWORD PTR 24[rsi]	 # __x, MEM[(struct _Rb_tree_node_base *)__x_773]._M_right
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:1947:       while (__x != 0)
	test	rsi, rsi	 # __x
	jne	.L634	 #,
.L974:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_map.h:511: 	if (__i == end() || key_comp()(__k, (*__i).first))
	mov	rax, QWORD PTR 144[rsp]	 # tmp1611, %sfp
	cmp	rbx, rax	 # SR.729, tmp1611
	je	.L635	 #,
	mov	rsi, QWORD PTR 40[rbx]	 # _175, MEM[(long long unsigned int *)__y_1014 + 40B]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:368: 	if (__n == 0)
	test	rsi, rsi	 # _175
	je	.L654	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:381: 	return __builtin_memcmp(__s1, __s2, __n);
	mov	r8d, 18	 # tmp1812,
	mov	rdx, QWORD PTR 32[rbx]	 # MEM[(char * *)__y_1014 + 32B], MEM[(char * *)__y_1014 + 32B]
	mov	rcx, rbp	 #, _1196
	cmp	rsi, r8	 # _175, tmp1812
	cmovbe	r8, rsi	 # _175,,
	call	memcmp	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:3235: 	if (!__r)
	test	eax, eax	 # __r
	jne	.L655	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:495: 	const difference_type __d = difference_type(__n1 - __n2);
	mov	eax, 18	 # tmp1453,
	sub	rax, rsi	 # _1225, _175
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:497: 	if (__d > __gnu_cxx::__numeric_traits<int>::__max)
	cmp	rax, 2147483647	 # _1225,
	jg	.L654	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:499: 	else if (__d < __gnu_cxx::__numeric_traits<int>::__min)
	cmp	rax, -2147483648	 # _1225,
	jl	.L635	 #,
.L655:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_map.h:511: 	if (__i == end() || key_comp()(__k, (*__i).first))
	test	eax, eax	 # __r
	js	.L635	 #,
	jmp	.L654	 #
.L883:
	mov	rcx, QWORD PTR 240[rsp]	 # _589, %sfp
	jmp	.L481	 #
.L906:
	mov	rcx, QWORD PTR 248[rsp]	 # _628, %sfp
	jmp	.L533	 #
.L909:
	mov	rcx, QWORD PTR 264[rsp]	 # _613, %sfp
	jmp	.L539	 #
.L942:
.LEHB89:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:140: 	    std::__throw_bad_alloc();
	call	_ZSt17__throw_bad_allocv	 #
.LEHE89:
.L972:
 # C:/msys64/mingw64/include/c++/14.2.0/ostream:673: 	__ostream_insert(__out, __s,
	mov	rbx, QWORD PTR .refptr._ZSt4cout[rip]	 # tmp1634,
	mov	r8d, 8	 #,
	lea	rdx, .LC21[rip]	 # tmp1504,
 # source/main.cpp:98:             paused = !paused;
	xor	ebp, 1	 # paused,
 # C:/msys64/mingw64/include/c++/14.2.0/ostream:673: 	__ostream_insert(__out, __s,
	mov	rcx, rbx	 #, tmp1634
.LEHB90:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x	 #
 # C:/msys64/mingw64/include/c++/14.2.0/ostream:183:       { return _M_insert(__n); }
	movzx	edx, bpl	 # _80, paused
	mov	rcx, rbx	 #, tmp1634
	call	_ZNSo9_M_insertIbEERSoT_	 #
 # C:/msys64/mingw64/include/c++/14.2.0/ostream:742:     { return flush(__os.put(__os.widen('\n'))); }
	mov	rdx, QWORD PTR [rax]	 # MEM[(struct basic_ostream *)_78]._vptr.basic_ostream, MEM[(struct basic_ostream *)_78]._vptr.basic_ostream
 # C:/msys64/mingw64/include/c++/14.2.0/ostream:183:       { return _M_insert(__n); }
	mov	rbx, rax	 # _78, tmp1793
	mov	rax, QWORD PTR -24[rdx]	 # MEM[(long long int *)_1294 + -24B], MEM[(long long int *)_1294 + -24B]
	mov	rdi, QWORD PTR 240[rbx+rax]	 # _1302, MEM[(const struct __ctype_type * *)_1297 + 240B]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:49:       if (!__f)
	test	rdi, rdi	 # _1302
	je	.L976	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/locale_facets.h:882: 	if (_M_widen_ok)
	cmp	BYTE PTR 56[rdi], 0	 # MEM[(const struct ctype *)_1302]._M_widen_ok,
	je	.L676	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/locale_facets.h:883: 	  return _M_widen[static_cast<unsigned char>(__c)];
	movsx	edx, BYTE PTR 67[rdi]	 #, MEM[(const struct ctype *)_1302]._M_widen[10]
.L677:
 # C:/msys64/mingw64/include/c++/14.2.0/ostream:742:     { return flush(__os.put(__os.widen('\n'))); }
	mov	rcx, rbx	 #, _78
	call	_ZNSo3putEc	 #
	mov	rcx, rax	 # _1300, tmp1795
 # C:/msys64/mingw64/include/c++/14.2.0/ostream:764:     { return __os.flush(); }
	call	_ZNSo5flushEv	 #
 # C:/msys64/mingw64/include/c++/14.2.0/ostream:742:     { return flush(__os.put(__os.widen('\n'))); }
	jmp	.L674	 #
.L676:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/locale_facets.h:884: 	this->_M_widen_init();
	mov	rcx, rdi	 #, _1302
	call	_ZNKSt5ctypeIcE13_M_widen_initEv	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/locale_facets.h:885: 	return this->do_widen(__c);
	mov	rdx, QWORD PTR [rdi]	 # MEM[(const struct ctype *)_1302].D.66525._vptr.facet, MEM[(const struct ctype *)_1302].D.66525._vptr.facet
	lea	rax, _ZNKSt5ctypeIcE8do_widenEc[rip]	 # tmp1512,
	mov	r9, QWORD PTR 48[rdx]	 # _1313, MEM[(int (*) () *)_1312 + 48B]
	mov	edx, 10	 #,
	cmp	r9, rax	 # _1313, tmp1512
	je	.L677	 #,
	mov	edx, 10	 #,
	mov	rcx, rdi	 #, _1302
	call	r9	 # _1313
	movsx	edx, al	 #, tmp1794
 # C:/msys64/mingw64/include/c++/14.2.0/bits/locale_facets.h:885: 	return this->do_widen(__c);
	jmp	.L677	 #
.L973:
 # source/main.cpp:137:     glDeleteVertexArrays(1, &VAO);
	mov	rax, QWORD PTR .refptr.glad_glDeleteVertexArrays[rip]	 # tmp1585,
	mov	rdx, QWORD PTR 344[rsp]	 #, %sfp
	mov	ecx, 1	 #,
	call	[QWORD PTR [rax]]	 # glad_glDeleteVertexArrays
 # source/main.cpp:138:     glDeleteProgram(shader_program);
	mov	rbx, QWORD PTR .refptr.glad_glDeleteProgram[rip]	 # tmp1613,
	vmovd	ecx, xmm13	 #, _70
	call	[QWORD PTR [rbx]]	 # glad_glDeleteProgram
 # source/main.cpp:139: 	glDeleteProgram(compute_program);
	vmovd	ecx, xmm14	 #, _73
	call	[QWORD PTR [rbx]]	 # glad_glDeleteProgram
 # source/main.cpp:140:     glDeleteBuffers(1, &VBO);
	mov	rax, QWORD PTR .refptr.glad_glDeleteBuffers[rip]	 # tmp1592,
	mov	rdx, QWORD PTR 352[rsp]	 #, %sfp
	mov	ecx, 1	 #,
	call	[QWORD PTR [rax]]	 # glad_glDeleteBuffers
 # source/main.cpp:141:     glfwDestroyWindow(window);
	vmovq	rcx, xmm12	 #, _261
	call	glfwDestroyWindow	 #
 # source/main.cpp:142:     glfwTerminate();
	call	glfwTerminate	 #
.LEHE90:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:994:       { return iterator(this->_M_impl._M_header._M_left); }
	mov	rbx, QWORD PTR _ZN5LeniaL7AnimalsE[rip+24]	 # SR.618, MEM[(struct _Rb_tree *)&Animals]._M_impl.D.166958._M_header._M_left
 # source/main.cpp:143:     for (auto const& [name, animal] : Lenia::Animals) {
	mov	rax, QWORD PTR 144[rsp]	 # tmp1611, %sfp
	cmp	rbx, rax	 # SR.618, tmp1611
	je	.L683	 #,
	.p2align 4
	.p2align 3
.L680:
 # source/main.cpp:144:         delete animal;
	mov	rsi, QWORD PTR 64[rbx]	 # _104, MEM[(struct Animal * const &)SR.618_734 + 64]
	test	rsi, rsi	 # _104
	je	.L681	 #,
 # source/main.cpp:144:         delete animal;
	mov	rcx, rsi	 #, _104
	call	_ZN5Lenia6AnimalD1Ev	 #
	mov	edx, 288	 #,
	mov	rcx, rsi	 #, _104
	call	_ZdlPvy	 #
.L681:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:283: 	_M_node = _Rb_tree_increment(_M_node);
	mov	rcx, rbx	 #, SR.618
	call	_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base	 #
	mov	rbx, rax	 # SR.618, tmp1799
 # source/main.cpp:143:     for (auto const& [name, animal] : Lenia::Animals) {
	mov	rax, QWORD PTR 144[rsp]	 # tmp1611, %sfp
	cmp	rbx, rax	 # SR.618, tmp1611
	jne	.L680	 #,
.L683:
 # source/main.cpp:147: }
	mov	rcx, QWORD PTR 112[rsp]	 #, %sfp
	call	_ZN5Lenia10SimulationD1Ev	 #
	xor	eax, eax	 #
	vmovups	xmm6, XMMWORD PTR 2144[rsp]	 #,
	vmovups	xmm7, XMMWORD PTR 2160[rsp]	 #,
	vmovups	xmm8, XMMWORD PTR 2176[rsp]	 #,
	vmovups	xmm9, XMMWORD PTR 2192[rsp]	 #,
	vmovups	xmm10, XMMWORD PTR 2208[rsp]	 #,
	vmovups	xmm11, XMMWORD PTR 2224[rsp]	 #,
	vmovups	xmm12, XMMWORD PTR 2240[rsp]	 #,
	vmovups	xmm13, XMMWORD PTR 2256[rsp]	 #,
	vmovups	xmm14, XMMWORD PTR 2272[rsp]	 #,
	vmovups	xmm15, XMMWORD PTR 2288[rsp]	 #,
	add	rsp, 2312	 #,
	pop	rbx	 #
	pop	rsi	 #
	pop	rdi	 #
	pop	rbp	 #
	pop	r12	 #
	pop	r13	 #
	pop	r14	 #
	pop	r15	 #
	ret	
.L912:
	mov	rcx, QWORD PTR 280[rsp]	 # _622, %sfp
	jmp	.L545	 #
.L915:
	mov	rcx, QWORD PTR 288[rsp]	 # _514, %sfp
	jmp	.L551	 #
.L918:
	mov	rcx, QWORD PTR 304[rsp]	 # _520, %sfp
	jmp	.L557	 #
.L891:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:453: 	  else if (_Num == 1)
	jne	.L509	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:413: 	{ *__to = *__from; }
	mov	rax, QWORD PTR 128[rsp]	 # vBeta$D142930$_M_impl$D142228$_M_start, %sfp
	vmovss	xmm0, DWORD PTR [rax]	 # *vBeta$D142930$_M_impl$D142228$_M_start_1007, *vBeta$D142930$_M_impl$D142228$_M_start_1007
	vmovq	rax, xmm6	 # _208, _208
	vmovss	DWORD PTR [rax], xmm0	 # MEM[(float *)_208], *vBeta$D142930$_M_impl$D142228$_M_start_1007
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:413: 	{ *__to = *__from; }
	jmp	.L509	 #
.L921:
	mov	rcx, QWORD PTR 312[rsp]	 # _526, %sfp
	jmp	.L563	 #
.L924:
	mov	rcx, QWORD PTR 320[rsp]	 # _490, %sfp
	jmp	.L569	 #
.L927:
	mov	rcx, QWORD PTR 328[rsp]	 # _402, %sfp
	jmp	.L575	 #
.L930:
	mov	rcx, r12	 # _404, tmp1643
	jmp	.L581	 #
.L933:
	mov	rcx, r13	 # _418, tmp1644
	jmp	.L587	 #
.L936:
	mov	rcx, r14	 # _462, tmp1645
	jmp	.L593	 #
.L939:
.LEHB91:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:140: 	    std::__throw_bad_alloc();
	call	_ZSt17__throw_bad_allocv	 #
.LEHE91:
.L835:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	ecx, ecx	 # _472, _472
	movzx	r10d, WORD PTR -2[rax+rcx]	 # tmp910,
	mov	WORD PTR -2[r8+rcx], r10w	 #, tmp910
	mov	r10, QWORD PTR -8[rax]	 # MEM[(long long unsigned int *)_1599 + -8B], MEM[(long long unsigned int *)_1599 + -8B]
	jmp	.L450	 #
.L968:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	movzx	eax, BYTE PTR [r12]	 # _1249, MEM[(const char_type &)_1240]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR 48[rbx], al	 # MEM[(char_type &)_1229 + 48], _1249
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:351:       }
	jmp	.L661	 #
.L970:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:269: 	if (_M_data() == _M_local_data())
	cmp	r14, rdi	 # _1235, _1239
	je	.L671	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	mov	rax, QWORD PTR 48[rbx]	 # tmp2065, MEM[(struct basic_string *)_1229 + 32B].D.45451._M_allocated_capacity
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	rcx, r14	 #, _1235
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	lea	rdx, 1[rax]	 # _1293,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L671:
	mov	rcx, rbx	 #, SR.729
	mov	edx, 72	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:2462: 	return iterator(__res.first);
	mov	rbx, rsi	 # SR.729, __res
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:631:       }
	jmp	.L654	 #
.L946:
.LEHB92:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:140: 	    std::__throw_bad_alloc();
	call	_ZSt17__throw_bad_allocv	 #
.LEHE92:
.L944:
.LEHB93:
	call	_ZSt17__throw_bad_allocv	 #
.LEHE93:
.L950:
.LEHB94:
	call	_ZSt17__throw_bad_allocv	 #
.LEHE94:
.L948:
.LEHB95:
	call	_ZSt17__throw_bad_allocv	 #
.LEHE95:
.L952:
.LEHB96:
	call	_ZSt17__throw_bad_allocv	 #
.LEHE96:
.L954:
.LEHB97:
	call	_ZSt17__throw_bad_allocv	 #
.LEHE97:
.L958:
.LEHB98:
	call	_ZSt17__throw_bad_allocv	 #
.LEHE98:
.L956:
.LEHB99:
	call	_ZSt17__throw_bad_allocv	 #
.LEHE99:
.L967:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:143:       if (__capacity > max_size())
	test	rsi, rsi	 # _1241
	js	.L977	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:134: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	mov	rcx, rsi	 # _1258, _1241
	add	rcx, 1	 # _1258,
	js	.L978	 #,
.LEHB100:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwy	 #
.LEHE100:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:218:       { _M_dataplus._M_p = __p; }
	mov	QWORD PTR 32[rbx], rax	 # MEM[(struct basic_string *)_1229 + 32B]._M_dataplus._M_p, _1263
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	rcx, rax	 # _1263, tmp1786
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:255:       { _M_allocated_capacity = __capacity; }
	mov	QWORD PTR 48[rbx], rsi	 # MEM[(struct basic_string *)_1229 + 32B].D.45451._M_allocated_capacity, _1241
.L659:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	r8, rsi	 #, _1241
	mov	rdx, r12	 #, _1240
	call	memcpy	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	jmp	.L661	 #
.L962:
.LEHB101:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:140: 	    std::__throw_bad_alloc();
	call	_ZSt17__throw_bad_allocv	 #
.LEHE101:
.L960:
.LEHB102:
	call	_ZSt17__throw_bad_allocv	 #
.LEHE102:
.L966:
.LEHB103:
	call	_ZSt17__throw_bad_allocv	 #
.LEHE103:
.L964:
.LEHB104:
	call	_ZSt17__throw_bad_allocv	 #
.LEHE104:
.L971:
	mov	rdi, QWORD PTR 40[rbp]	 # _1276, MEM[(long long unsigned int *)__res$second_1232 + 40B]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:238:       if (__b < __a)
	cmp	r12, rdi	 # _1236, _1276
	mov	r8, rdi	 # _1279, _1276
	cmovbe	r8, r12	 # _1236,, _1279
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:368: 	if (__n == 0)
	test	r8, r8	 # _1279
	je	.L668	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:381: 	return __builtin_memcmp(__s1, __s2, __n);
	mov	rdx, QWORD PTR 32[rbp]	 # MEM[(char * *)__res$second_1232 + 32B], MEM[(char * *)__res$second_1232 + 32B]
	mov	rcx, r14	 #, _1235
	call	memcmp	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:3235: 	if (!__r)
	test	eax, eax	 # __r
	jne	.L669	 #,
.L668:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:495: 	const difference_type __d = difference_type(__n1 - __n2);
	mov	rax, r12	 # _1236, _1236
	sub	rax, rdi	 # _1236, _1276
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:497: 	if (__d > __gnu_cxx::__numeric_traits<int>::__max)
	cmp	rax, 2147483647	 # _1283,
	jg	.L667	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:499: 	else if (__d < __gnu_cxx::__numeric_traits<int>::__min)
	cmp	rax, -2147483648	 # _1283,
	jl	.L694	 #,
.L669:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:2378: 			    || _M_impl._M_key_compare(_S_key(__z),
	shr	eax, 31	 # __r,
	mov	esi, eax	 # iftmp.173_1269, __r
	jmp	.L667	 #
.L969:
	mov	rcx, rdi	 # _1263, _1239
	jmp	.L659	 #
.L438:
	movabs	rdi, 9223372036854775776	 # prephitmp_171,
	jmp	.L439	 #
.L978:
.LEHB105:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:140: 	    std::__throw_bad_alloc();
	call	_ZSt17__throw_bad_allocv	 #
.LEHE105:
.L694:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:2378: 			    || _M_impl._M_key_compare(_S_key(__z),
	movzx	esi, BYTE PTR 299[rsp]	 # iftmp.173_1269, %sfp
	jmp	.L667	 #
.L859:
.LEHB106:
 # include/gl_setup.hpp:207:             glfwTerminate();
	call	glfwTerminate	 #
 # include/gl_setup.hpp:208:             exit(-1);
	or	ecx, -1	 #,
	call	exit	 #
.L858:
 # C:/msys64/mingw64/include/c++/14.2.0/ostream:673: 	__ostream_insert(__out, __s,
	mov	rbx, QWORD PTR .refptr._ZSt4cout[rip]	 # tmp1634,
	mov	r8d, 25	 #,
	lea	rdx, .LC11[rip]	 # tmp748,
	mov	rcx, rbx	 #, tmp1634
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x	 #
 # C:/msys64/mingw64/include/c++/14.2.0/ostream:742:     { return flush(__os.put(__os.widen('\n'))); }
	mov	rax, QWORD PTR [rbx]	 # cout._vptr.basic_ostream, cout._vptr.basic_ostream
	mov	rax, QWORD PTR -24[rax]	 # MEM[(long long int *)_262 + -24B], MEM[(long long int *)_262 + -24B]
	mov	rsi, QWORD PTR 240[rax+rbx]	 # _270, MEM[(const struct __ctype_type * *)_265 + 240B]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:49:       if (!__f)
	test	rsi, rsi	 # _270
	je	.L979	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/locale_facets.h:882: 	if (_M_widen_ok)
	cmp	BYTE PTR 56[rsi], 0	 # MEM[(const struct ctype *)_270]._M_widen_ok,
	je	.L403	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/locale_facets.h:883: 	  return _M_widen[static_cast<unsigned char>(__c)];
	movzx	eax, BYTE PTR 67[rsi]	 # _278, MEM[(const struct ctype *)_270]._M_widen[10]
.L404:
 # C:/msys64/mingw64/include/c++/14.2.0/ostream:742:     { return flush(__os.put(__os.widen('\n'))); }
	movsx	edx, al	 # _267, _278
	mov	rcx, rbx	 #, tmp1634
	call	_ZNSo3putEc	 #
	mov	rcx, rax	 # _268, tmp1674
 # C:/msys64/mingw64/include/c++/14.2.0/ostream:764:     { return __os.flush(); }
	call	_ZNSo5flushEv	 #
.LEHE106:
 # include/gl_setup.hpp:202:             exit(-1);
	or	ecx, -1	 #,
	call	exit	 #
.L860:
 # C:/msys64/mingw64/include/c++/14.2.0/ostream:673: 	__ostream_insert(__out, __s,
	mov	rbx, QWORD PTR .refptr._ZSt4cerr[rip]	 # tmp1626,
	mov	r8d, 45	 #,
	lea	rdx, .LC14[rip]	 # tmp772,
	mov	rcx, rbx	 #, tmp1626
.LEHB107:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x	 #
 # C:/msys64/mingw64/include/c++/14.2.0/ostream:121: 	return __pf(*this);
	mov	rcx, rbx	 #, tmp1626
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0	 #
.LEHE107:
 # source/main.cpp:19:             exit(-1);
	or	ecx, -1	 #,
	call	exit	 #
.L403:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/locale_facets.h:884: 	this->_M_widen_init();
	mov	rcx, rsi	 #, _270
.LEHB108:
	call	_ZNKSt5ctypeIcE13_M_widen_initEv	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/locale_facets.h:885: 	return this->do_widen(__c);
	mov	rax, QWORD PTR [rsi]	 # MEM[(const struct ctype *)_270].D.66525._vptr.facet, MEM[(const struct ctype *)_270].D.66525._vptr.facet
	lea	rdx, _ZNKSt5ctypeIcE8do_widenEc[rip]	 # tmp756,
	mov	r8, QWORD PTR 48[rax]	 # _281, MEM[(int (*) () *)_280 + 48B]
	mov	eax, 10	 # _278,
	cmp	r8, rdx	 # _281, tmp756
	je	.L404	 #,
	mov	edx, 10	 #,
	mov	rcx, rsi	 #, _270
	call	r8	 # _281
	jmp	.L404	 #
.L696:
	mov	rbx, rax	 # tmp1469, tmp1800
	vzeroupper
.L666:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:809:       { _M_dispose(); }
	mov	rcx, QWORD PTR 136[rsp]	 #, %sfp
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv	 #
	mov	rcx, rbx	 #, tmp1469
	call	_Unwind_Resume	 #
.L979:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:50: 	__throw_bad_cast();
	call	_ZSt16__throw_bad_castv	 #
.L698:
 # source/main.cpp:47:     }
	mov	rbp, rax	 # tmp1435, tmp1782
	vzeroupper
.L649:
	mov	rcx, QWORD PTR 136[rsp]	 #, %sfp
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev	 #
	mov	rcx, rbp	 #, tmp1435
	call	_Unwind_Resume	 #
.LEHE108:
.L711:
 # C:/msys64/mingw64/include/c++/14.2.0/sstream:79:     class basic_stringbuf : public basic_streambuf<_CharT, _Traits>
	mov	rbx, rax	 # tmp855, tmp1683
	mov	rax, QWORD PTR .refptr._ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE[rip]	 # tmp1898,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:809:       { _M_dispose(); }
	lea	rcx, 928[rsp]	 # tmp850,
 # C:/msys64/mingw64/include/c++/14.2.0/sstream:79:     class basic_stringbuf : public basic_streambuf<_CharT, _Traits>
	add	rax, 16	 # tmp848,
	mov	QWORD PTR 856[rsp], rax	 # MEM[(struct basic_stringbuf *)&ss + 24B].D.164381._vptr.basic_streambuf, tmp848
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:809:       { _M_dispose(); }
	vzeroupper
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv	 #
.L853:
 # C:/msys64/mingw64/include/c++/14.2.0/streambuf:205:       { }
	mov	rax, QWORD PTR .refptr._ZTVSt15basic_streambufIcSt11char_traitsIcEE[rip]	 # tmp1899,
	mov	rcx, QWORD PTR 224[rsp]	 #, %sfp
	add	rax, 16	 # tmp852,
	mov	QWORD PTR 856[rsp], rax	 #, tmp852
	call	_ZNSt6localeD1Ev	 #
 # C:/msys64/mingw64/include/c++/14.2.0/istream:1012:       ~basic_iostream() { }
	mov	rax, QWORD PTR 176[rsp]	 # _329, %sfp
	mov	rsi, QWORD PTR 184[rsp]	 # _333, %sfp
	mov	rax, QWORD PTR -24[rax]	 # MEM[(long long int *)_329 + -24B], MEM[(long long int *)_329 + -24B]
	mov	QWORD PTR 832[rsp+rax], rsi	 # MEM[(struct basic_ios *)_300].D.69971._vptr.ios_base, _333
 # C:/msys64/mingw64/include/c++/14.2.0/ostream:101:       ~basic_ostream() { }
	mov	rax, QWORD PTR 160[rsp]	 # _324, %sfp
	mov	rsi, QWORD PTR 168[rsp]	 # _328, %sfp
	mov	QWORD PTR 848[rsp], rax	 # MEM[(struct basic_ostream *)&ss + 16B]._vptr.basic_ostream, _324
	mov	rax, QWORD PTR -24[rax]	 # MEM[(long long int *)_324 + -24B], MEM[(long long int *)_324 + -24B]
	mov	QWORD PTR 848[rsp+rax], rsi	 # MEM[(struct basic_ios *)_306].D.69971._vptr.ios_base, _328
 # C:/msys64/mingw64/include/c++/14.2.0/istream:106:       { _M_gcount = streamsize(0); }
	mov	rax, QWORD PTR -24[rbp]	 # MEM[(long long int *)_315 + -24B], MEM[(long long int *)_315 + -24B]
	mov	rsi, QWORD PTR 152[rsp]	 # _319, %sfp
	mov	QWORD PTR 832[rsp], rbp	 # MEM[(struct basic_istream *)&ss]._vptr.basic_istream, _315
	mov	QWORD PTR 832[rsp+rax], rsi	 # MEM[(struct basic_ios *)_312].D.69971._vptr.ios_base, _319
 # C:/msys64/mingw64/include/c++/14.2.0/istream:106:       { _M_gcount = streamsize(0); }
	xor	eax, eax	 #
	mov	QWORD PTR 840[rsp], rax	 # MEM[(struct basic_istream *)&ss]._M_gcount,
.L412:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:286:       ~basic_ios() { }
	mov	rax, QWORD PTR .refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE[rip]	 # tmp1906,
	mov	rcx, QWORD PTR 192[rsp]	 #, %sfp
	mov	rbp, rbx	 # tmp864, tmp815
 # source/main.cpp:23:             std::vector<std::string> tokens;
	xor	esi, esi	 # tokens
	xor	ebx, ebx	 # __new_finish
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:286:       ~basic_ios() { }
	add	rax, 16	 # tmp861,
	mov	QWORD PTR 960[rsp], rax	 # MEM[(struct basic_ios *)&ss + 128B].D.69971._vptr.ios_base, tmp861
	call	_ZNSt8ios_baseD2Ev	 #
 # source/main.cpp:23:             std::vector<std::string> tokens;
	xor	eax, eax	 #
	mov	QWORD PTR 104[rsp], rax	 # %sfp,
.L425:
	mov	rdi, rsi	 # __first, tokens
.L644:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_construct.h:162: 	  for (; __first != __last; ++__first)
	cmp	rdi, rbx	 # __first, __new_finish
	je	.L980	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rcx, QWORD PTR [rdi]	 # _1172, MEM[(char * *)__first_1166]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:269: 	if (_M_data() == _M_local_data())
	lea	rax, 16[rdi]	 # _1316,
	cmp	rcx, rax	 # _1172, _1316
	je	.L645	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	mov	rax, QWORD PTR 16[rdi]	 # tmp2057, MEM <size_type> [(union ._anon_69 *)__first_1166 + 16B]
	lea	rdx, 1[rax]	 # _1176,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L645:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_construct.h:162: 	  for (; __first != __last; ++__first)
	add	rdi, 32	 # __first,
	jmp	.L644	 #
.L714:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:809:       { _M_dispose(); }
	lea	rcx, 928[rsp]	 # tmp832,
	mov	rbx, rax	 # tmp834, tmp1681
	vzeroupper
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv	 #
	jmp	.L853	 #
.L862:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:630: 	  std::__throw_logic_error(__N("basic_string: "
	lea	rcx, .LC15[rip]	 # tmp819,
.LEHB109:
	call	_ZSt19__throw_logic_errorPKc	 #
.LEHE109:
.L893:
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:88: 	std::__throw_out_of_range(__name);
	lea	rcx, .LC18[rip]	 # tmp1089,
.LEHB110:
	call	_ZSt20__throw_out_of_rangePKc	 #
.LEHE110:
.L977:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:144: 	std::__throw_length_error(__N("basic_string::_M_create"));
	lea	rcx, .LC0[rip]	 # tmp1458,
.LEHB111:
	call	_ZSt20__throw_length_errorPKc	 #
.LEHE111:
.L976:
.LEHB112:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:50: 	__throw_bad_cast();
	call	_ZSt16__throw_bad_castv	 #
.LEHE112:
.L697:
 # source/main.cpp:147: }
	mov	rcx, QWORD PTR 112[rsp]	 #, %sfp
	mov	rbx, rax	 # tmp1602, tmp1801
	vzeroupper
	call	_ZN5Lenia10SimulationD1Ev	 #
	mov	rcx, rbx	 #, tmp1602
.LEHB113:
	call	_Unwind_Resume	 #
.LEHE113:
.L732:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:597: 	  __catch(...)
	mov	rcx, rax	 # tmp1468, tmp1787
	vzeroupper
	call	__cxa_begin_catch	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	edx, 72	 #,
	mov	rcx, rbx	 #, SR.729
	call	_ZdlPvy	 #
.LEHB114:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:601: 	      __throw_exception_again;
	call	__cxa_rethrow	 #
.LEHE114:
.L733:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:597: 	  __catch(...)
	mov	rbx, rax	 # tmp1470, tmp1788
	vzeroupper
	call	__cxa_end_catch	 #
	jmp	.L666	 #
.L980:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rdx, QWORD PTR 104[rsp]	 # tokens$D169361$_M_impl$D168694$_M_end_of_storage, %sfp
	sub	rdx, rsi	 # tokens$D169361$_M_impl$D168694$_M_end_of_storage, tokens
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:388: 	if (__p)
	test	rsi, rsi	 # tokens
	je	.L648	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	rcx, rsi	 #, tokens
	call	_ZdlPvy	 #
.L648:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:809:       { _M_dispose(); }
	mov	rcx, QWORD PTR 208[rsp]	 #, %sfp
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv	 #
	jmp	.L649	 #
.L902:
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:88: 	std::__throw_out_of_range(__name);
	lea	rcx, .LC19[rip]	 # tmp1122,
.LEHB115:
	call	_ZSt20__throw_out_of_rangePKc	 #
.LEHE115:
.L878:
	lea	rcx, .LC18[rip]	 # tmp957,
.LEHB116:
	call	_ZSt20__throw_out_of_rangePKc	 #
.LEHE116:
.L717:
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:96:     }
	lea	rcx, 672[rsp]	 # tmp969,
	mov	rbp, rax	 # tmp970, tmp1705
	vzeroupper
	call	_ZZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_EN11_Save_errnoD1Ev	 #
.L460:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:809:       { _M_dispose(); }
	mov	rcx, QWORD PTR 96[rsp]	 #, %sfp
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv	 #
 # source/main.cpp:46:         }
	mov	rcx, QWORD PTR 120[rsp]	 #, %sfp
	call	_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev	 #
	jmp	.L425	 #
.L722:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:809:       { _M_dispose(); }
	lea	rcx, 1328[rsp]	 # tmp1010,
	mov	rdi, rax	 # tmp1012, tmp1708
	vzeroupper
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv	 #
.L855:
 # C:/msys64/mingw64/include/c++/14.2.0/streambuf:205:       { }
	mov	rax, QWORD PTR .refptr._ZTVSt15basic_streambufIcSt11char_traitsIcEE[rip]	 # tmp1938,
	mov	rcx, QWORD PTR 256[rsp]	 #, %sfp
	add	rax, 16	 # tmp1030,
	mov	QWORD PTR 1256[rsp], rax	 #, tmp1030
	call	_ZNSt6localeD1Ev	 #
 # C:/msys64/mingw64/include/c++/14.2.0/istream:1012:       ~basic_iostream() { }
	mov	rax, QWORD PTR 176[rsp]	 # _329, %sfp
	mov	rdx, QWORD PTR 184[rsp]	 # _333, %sfp
 # C:/msys64/mingw64/include/c++/14.2.0/istream:106:       { _M_gcount = streamsize(0); }
	xor	r11d, r11d	 #
 # C:/msys64/mingw64/include/c++/14.2.0/istream:1012:       ~basic_iostream() { }
	mov	rax, QWORD PTR -24[rax]	 # MEM[(long long int *)_329 + -24B], MEM[(long long int *)_329 + -24B]
	mov	QWORD PTR 1232[rsp+rax], rdx	 # MEM[(struct basic_ios *)_517].D.69971._vptr.ios_base, _333
 # C:/msys64/mingw64/include/c++/14.2.0/ostream:101:       ~basic_ostream() { }
	mov	rax, QWORD PTR 160[rsp]	 # _324, %sfp
	mov	rdx, QWORD PTR 168[rsp]	 # _328, %sfp
	mov	QWORD PTR 1248[rsp], rax	 # MEM[(struct basic_ostream *)_2310 + 16B]._vptr.basic_ostream, _324
	mov	rax, QWORD PTR -24[rax]	 # MEM[(long long int *)_324 + -24B], MEM[(long long int *)_324 + -24B]
	mov	QWORD PTR 1248[rsp+rax], rdx	 # MEM[(struct basic_ios *)_523].D.69971._vptr.ios_base, _328
 # C:/msys64/mingw64/include/c++/14.2.0/istream:106:       { _M_gcount = streamsize(0); }
	mov	rax, QWORD PTR -24[rbp]	 # MEM[(long long int *)_315 + -24B], MEM[(long long int *)_315 + -24B]
	mov	rdx, QWORD PTR 152[rsp]	 # _319, %sfp
	mov	QWORD PTR 1232[rsp], rbp	 # MEM[(struct basic_istream *)_2310]._vptr.basic_istream, _315
	mov	rbp, rdi	 # tmp993, tmp1019
	mov	QWORD PTR 1232[rsp+rax], rdx	 # MEM[(struct basic_ios *)_529].D.69971._vptr.ios_base, _319
 # C:/msys64/mingw64/include/c++/14.2.0/istream:106:       { _M_gcount = streamsize(0); }
	mov	QWORD PTR 1240[rsp], r11	 # MEM[(struct basic_istream *)_2310]._M_gcount,
.L477:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:286:       ~basic_ios() { }
	mov	rax, QWORD PTR .refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE[rip]	 # tmp1945,
	mov	rcx, QWORD PTR 200[rsp]	 #, %sfp
	add	rax, 16	 # tmp1039,
	mov	QWORD PTR 1360[rsp], rax	 # MEM[(struct basic_ios *)_2310 + 128B].D.69971._vptr.ios_base, tmp1039
	call	_ZNSt8ios_baseD2Ev	 #
	jmp	.L460	 #
.L941:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:144: 	std::__throw_length_error(__N("basic_string::_M_create"));
	lea	rcx, .LC0[rip]	 # tmp820,
.LEHB117:
	call	_ZSt20__throw_length_errorPKc	 #
.LEHE117:
.L716:
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	vzeroupper
	mov	rbp, rax	 # tmp951, tmp1697
	call	r12	 # tmp1631
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	cmp	DWORD PTR [rax], 0	 # *_488,
	jne	.L460	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	call	r12	 # tmp1631
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:66: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	mov	DWORD PTR [rax], edi	 # *_491, _482
	jmp	.L460	 #
.L699:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:809:       { _M_dispose(); }
	mov	rbp, rax	 # tmp1432, tmp1781
	vzeroupper
	jmp	.L648	 #
.L875:
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:88: 	std::__throw_out_of_range(__name);
	lea	rcx, .LC17[rip]	 # tmp945,
.LEHB118:
	call	_ZSt20__throw_out_of_rangePKc	 #
.LEHE118:
.L506:
.LEHB119:
 # source/main.cpp:36:             f32* beta = new f32[vBeta.size()];
	call	__cxa_throw_bad_array_new_length	 #
.LEHE119:
.L724:
.L856:
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:96:     }
	lea	rcx, 512[rsp]	 # tmp1104,
	mov	rbp, rax	 # tmp1105, tmp1736
	vzeroupper
	call	_ZZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_EN11_Save_errnoD1Ev	 #
.L496:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rax, QWORD PTR 128[rsp]	 # vBeta$D142930$_M_impl$D142228$_M_start, %sfp
	sub	rdi, rax	 # vBeta$D142930$_M_impl$D142228$_M_end_of_storage, vBeta$D142930$_M_impl$D142228$_M_start
	mov	rdx, rdi	 # _255, vBeta$D142930$_M_impl$D142228$_M_end_of_storage
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:388: 	if (__p)
	test	rax, rax	 # vBeta$D142930$_M_impl$D142228$_M_start
	je	.L643	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	rcx, rax	 #, vBeta$D142930$_M_impl$D142228$_M_start
	call	_ZdlPvy	 #
.L643:
 # source/main.cpp:46:         }
	mov	rcx, QWORD PTR 112[rsp]	 #, %sfp
	call	_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev	 #
	jmp	.L460	 #
.L892:
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:85: 	std::__throw_invalid_argument(__name);
	lea	rcx, .LC18[rip]	 # tmp1087,
.LEHB120:
	call	_ZSt24__throw_invalid_argumentPKc	 #
.LEHE120:
.L727:
.L857:
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:96:     }
	lea	rcx, 512[rsp]	 # tmp1127,
	mov	rbp, rax	 # tmp1128, tmp1749
	vzeroupper
	call	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PyS9_EN11_Save_errnoD1Ev	 #
	jmp	.L496	 #
.L945:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:144: 	std::__throw_length_error(__N("basic_string::_M_create"));
	lea	rcx, .LC0[rip]	 # tmp1130,
.LEHB121:
	call	_ZSt20__throw_length_errorPKc	 #
.LEHE121:
.L721:
 # C:/msys64/mingw64/include/c++/14.2.0/streambuf:205:       { }
	mov	rdi, rax	 # tmp1011, tmp1709
	vzeroupper
	jmp	.L855	 #
.L709:
 # source/main.cpp:44:             Animal* animal = new Animal(tax, R, dt, const_cast<const f32*>(beta), B, mu, sigma, kn, gn, tokens[12]);
	mov	rcx, QWORD PTR 144[rsp]	 #, %sfp
	mov	rbp, rax	 # tmp1414, tmp1775
	vzeroupper
	call	_ZN5Lenia8TaxonomyD1Ev	 #
.L601:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:809:       { _M_dispose(); }
	mov	rcx, r15	 #, tmp1628
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv	 #
.L641:
 # source/main.cpp:44:             Animal* animal = new Animal(tax, R, dt, const_cast<const f32*>(beta), B, mu, sigma, kn, gn, tokens[12]);
	mov	rcx, QWORD PTR 216[rsp]	 #, %sfp
	mov	edx, 288	 #,
	call	_ZdlPvy	 #
.L642:
 # source/main.cpp:46:         }
	lea	rcx, 512[rsp]	 # tmp1421,
	call	_ZN5Lenia8TaxonomyD1Ev	 #
	jmp	.L496	 #
.L706:
	mov	rbp, rax	 # tmp1419, tmp1778
	vzeroupper
	jmp	.L642	 #
.L719:
 # C:/msys64/mingw64/include/c++/14.2.0/sstream:79:     class basic_stringbuf : public basic_streambuf<_CharT, _Traits>
	mov	rdi, rax	 # tmp1033, tmp1710
	mov	rax, QWORD PTR .refptr._ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE[rip]	 # tmp1937,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:809:       { _M_dispose(); }
	lea	rcx, 1328[rsp]	 # tmp1028,
 # C:/msys64/mingw64/include/c++/14.2.0/sstream:79:     class basic_stringbuf : public basic_streambuf<_CharT, _Traits>
	add	rax, 16	 # tmp1026,
	mov	QWORD PTR 1256[rsp], rax	 # MEM[(struct basic_stringbuf *)_2310 + 24B].D.164381._vptr.basic_streambuf, tmp1026
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:809:       { _M_dispose(); }
	vzeroupper
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv	 #
	jmp	.L855	 #
.L874:
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:85: 	std::__throw_invalid_argument(__name);
	lea	rcx, .LC17[rip]	 # tmp943,
.LEHB122:
	call	_ZSt24__throw_invalid_argumentPKc	 #
.LEHE122:
.L715:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	rdx, rdi	 #, prephitmp_171
	mov	rcx, r12	 #, _441
	mov	rbp, rax	 # tmp931, tmp1688
	vzeroupper
	call	_ZdlPvy	 #
	jmp	.L460	 #
.L700:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:809:       { _M_dispose(); }
	mov	rbp, rax	 # tmp930, tmp1780
	vzeroupper
	jmp	.L460	 #
.L886:
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:88: 	std::__throw_out_of_range(__name);
	lea	rcx, .LC18[rip]	 # tmp1047,
.LEHB123:
	call	_ZSt20__throw_out_of_rangePKc	 #
.L723:
	jmp	.L856	 #
.L885:
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:85: 	std::__throw_invalid_argument(__name);
	lea	rcx, .LC18[rip]	 # tmp1045,
	call	_ZSt24__throw_invalid_argumentPKc	 #
.LEHE123:
.L938:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:144: 	std::__throw_length_error(__N("basic_string::_M_create"));
	lea	rcx, .LC0[rip]	 # tmp882,
.LEHB124:
	call	_ZSt20__throw_length_errorPKc	 #
.LEHE124:
.L889:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1909: 	  __throw_length_error(__N(__s));
	lea	rcx, .LC16[rip]	 # tmp1057,
.LEHB125:
	call	_ZSt20__throw_length_errorPKc	 #
.LEHE125:
.L867:
	lea	rcx, .LC16[rip]	 # tmp877,
.LEHB126:
	call	_ZSt20__throw_length_errorPKc	 #
.LEHE126:
.L720:
 # C:/msys64/mingw64/include/c++/14.2.0/istream:106:       { _M_gcount = streamsize(0); }
	mov	rdx, QWORD PTR -24[rbp]	 # MEM[(long long int *)_315 + -24B], MEM[(long long int *)_315 + -24B]
	mov	rdi, QWORD PTR 152[rsp]	 # _319, %sfp
	mov	QWORD PTR 1232[rsp], rbp	 # MEM[(struct basic_istream *)_2310]._vptr.basic_istream, _315
	mov	rbp, rax	 # tmp993, tmp1706
	mov	QWORD PTR 1232[rsp+rdx], rdi	 # MEM[(struct basic_ios *)_555].D.69971._vptr.ios_base, _319
 # C:/msys64/mingw64/include/c++/14.2.0/istream:106:       { _M_gcount = streamsize(0); }
	xor	edi, edi	 #
	mov	QWORD PTR 1240[rsp], rdi	 # MEM[(struct basic_istream *)_2310]._M_gcount,
	vzeroupper
	jmp	.L477	 #
.L877:
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:85: 	std::__throw_invalid_argument(__name);
	lea	rcx, .LC18[rip]	 # tmp955,
.LEHB127:
	call	_ZSt24__throw_invalid_argumentPKc	 #
.LEHE127:
.L880:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:630: 	  std::__throw_logic_error(__N("basic_string: "
	lea	rcx, .LC15[rip]	 # tmp997,
.LEHB128:
	call	_ZSt19__throw_logic_errorPKc	 #
.L943:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:144: 	std::__throw_length_error(__N("basic_string::_M_create"));
	lea	rcx, .LC0[rip]	 # tmp998,
	call	_ZSt20__throw_length_errorPKc	 #
.LEHE128:
.L713:
 # C:/msys64/mingw64/include/c++/14.2.0/streambuf:205:       { }
	mov	rbx, rax	 # tmp833, tmp1682
	vzeroupper
	jmp	.L853	 #
.L702:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:809:       { _M_dispose(); }
	mov	rbp, rax	 # tmp1410, tmp1774
	vzeroupper
.L639:
	lea	rcx, 512[rsp]	 # tmp1412,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv	 #
	jmp	.L496	 #
.L949:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:144: 	std::__throw_length_error(__N("basic_string::_M_create"));
	lea	rcx, .LC0[rip]	 # tmp1150,
.LEHB129:
	call	_ZSt20__throw_length_errorPKc	 #
.LEHE129:
.L703:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:809:       { _M_dispose(); }
	mov	rbp, rax	 # tmp1406, tmp1773
	vzeroupper
.L638:
	lea	rcx, 544[rsp]	 # tmp1409,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv	 #
	jmp	.L639	 #
.L947:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:144: 	std::__throw_length_error(__N("basic_string::_M_create"));
	lea	rcx, .LC0[rip]	 # tmp1140,
.LEHB130:
	call	_ZSt20__throw_length_errorPKc	 #
.LEHE130:
.L707:
 # source/main.cpp:44:             Animal* animal = new Animal(tax, R, dt, const_cast<const f32*>(beta), B, mu, sigma, kn, gn, tokens[12]);
	mov	rbp, rax	 # tmp1417, tmp1777
	vzeroupper
	jmp	.L641	 #
.L957:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:144: 	std::__throw_length_error(__N("basic_string::_M_create"));
	lea	rcx, .LC0[rip]	 # tmp1191,
.LEHB131:
	call	_ZSt20__throw_length_errorPKc	 #
.LEHE131:
.L708:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:809:       { _M_dispose(); }
	mov	rbp, rax	 # tmp1264, tmp1776
	lea	r15, 480[rsp]	 # tmp1628,
	vzeroupper
	jmp	.L601	 #
.L955:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:144: 	std::__throw_length_error(__N("basic_string::_M_create"));
	lea	rcx, .LC0[rip]	 # tmp1181,
.LEHB132:
	call	_ZSt20__throw_length_errorPKc	 #
.LEHE132:
.L704:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:809:       { _M_dispose(); }
	mov	rbp, rax	 # tmp1400, tmp1772
	vzeroupper
.L637:
	lea	rcx, 576[rsp]	 # tmp1405,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv	 #
	jmp	.L638	 #
.L953:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:144: 	std::__throw_length_error(__N("basic_string::_M_create"));
	lea	rcx, .LC0[rip]	 # tmp1170,
.LEHB133:
	call	_ZSt20__throw_length_errorPKc	 #
.LEHE133:
.L951:
	lea	rcx, .LC0[rip]	 # tmp1160,
.LEHB134:
	call	_ZSt20__throw_length_errorPKc	 #
.LEHE134:
.L705:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:809:       { _M_dispose(); }
	lea	rcx, 608[rsp]	 # tmp1399,
	mov	rbp, rax	 # tmp1401, tmp1771
	vzeroupper
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv	 #
	jmp	.L637	 #
.L901:
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:85: 	std::__throw_invalid_argument(__name);
	lea	rcx, .LC19[rip]	 # tmp1120,
.LEHB135:
	call	_ZSt24__throw_invalid_argumentPKc	 #
.LEHE135:
.L725:
	jmp	.L856	 #
.L895:
	lea	rcx, .LC18[rip]	 # tmp1098,
.LEHB136:
	call	_ZSt24__throw_invalid_argumentPKc	 #
.LEHE136:
.L899:
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:88: 	std::__throw_out_of_range(__name);
	lea	rcx, .LC19[rip]	 # tmp1111,
.LEHB137:
	call	_ZSt20__throw_out_of_rangePKc	 #
.LEHE137:
.L896:
	lea	rcx, .LC18[rip]	 # tmp1100,
.LEHB138:
	call	_ZSt20__throw_out_of_rangePKc	 #
.LEHE138:
.L726:
	jmp	.L857	 #
.L898:
 # C:/msys64/mingw64/include/c++/14.2.0/ext/string_conversions.h:85: 	std::__throw_invalid_argument(__name);
	lea	rcx, .LC19[rip]	 # tmp1109,
.LEHB139:
	call	_ZSt24__throw_invalid_argumentPKc	 #
.LEHE139:
.L718:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:286:       ~basic_ios() { }
	mov	rbp, rax	 # tmp993, tmp1711
	vzeroupper
	jmp	.L477	 #
.L729:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:809:       { _M_dispose(); }
	mov	rbp, rax	 # tmp1257, tmp1764
	vzeroupper
.L599:
	lea	rcx, 704[rsp]	 # tmp1260,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv	 #
.L600:
	mov	rcx, QWORD PTR 144[rsp]	 #, %sfp
	lea	r15, 480[rsp]	 # tmp1628,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv	 #
	jmp	.L601	 #
.L959:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:144: 	std::__throw_length_error(__N("basic_string::_M_create"));
	lea	rcx, .LC0[rip]	 # tmp1201,
.LEHB140:
	call	_ZSt20__throw_length_errorPKc	 #
.LEHE140:
.L728:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:809:       { _M_dispose(); }
	mov	rbp, rax	 # tmp1261, tmp1765
	vzeroupper
	jmp	.L600	 #
.L961:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:144: 	std::__throw_length_error(__N("basic_string::_M_create"));
	lea	rcx, .LC0[rip]	 # tmp1211,
.LEHB141:
	call	_ZSt20__throw_length_errorPKc	 #
.LEHE141:
.L730:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:809:       { _M_dispose(); }
	mov	rbp, rax	 # tmp1251, tmp1763
	vzeroupper
.L598:
	lea	rcx, 736[rsp]	 # tmp1256,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv	 #
	jmp	.L599	 #
.L965:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:144: 	std::__throw_length_error(__N("basic_string::_M_create"));
	lea	rcx, .LC0[rip]	 # tmp1231,
.LEHB142:
	call	_ZSt20__throw_length_errorPKc	 #
.LEHE142:
.L731:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:809:       { _M_dispose(); }
	lea	rcx, 768[rsp]	 # tmp1250,
	mov	rbp, rax	 # tmp1252, tmp1762
	vzeroupper
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv	 #
	jmp	.L598	 #
.L963:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:144: 	std::__throw_length_error(__N("basic_string::_M_create"));
	lea	rcx, .LC0[rip]	 # tmp1221,
.LEHB143:
	call	_ZSt20__throw_length_errorPKc	 #
.LEHE143:
.L872:
	lea	rcx, .LC0[rip]	 # tmp868,
.LEHB144:
	call	_ZSt20__throw_length_errorPKc	 #
.LEHE144:
.L712:
 # C:/msys64/mingw64/include/c++/14.2.0/istream:106:       { _M_gcount = streamsize(0); }
	mov	rdx, QWORD PTR -24[rbp]	 # MEM[(long long int *)_315 + -24B], MEM[(long long int *)_315 + -24B]
	mov	rsi, QWORD PTR 152[rsp]	 # _319, %sfp
	mov	QWORD PTR 832[rsp], rbp	 # MEM[(struct basic_istream *)&ss]._vptr.basic_istream, _315
	mov	rbx, rax	 # tmp815, tmp1679
	mov	QWORD PTR 832[rsp+rdx], rsi	 # MEM[(struct basic_ios *)_338].D.69971._vptr.ios_base, _319
 # C:/msys64/mingw64/include/c++/14.2.0/istream:106:       { _M_gcount = streamsize(0); }
	xor	edx, edx	 #
	mov	QWORD PTR 840[rsp], rdx	 # MEM[(struct basic_istream *)&ss]._M_gcount,
	vzeroupper
	jmp	.L412	 #
.L710:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_ios.h:286:       ~basic_ios() { }
	mov	rbx, rax	 # tmp815, tmp1684
	vzeroupper
	jmp	.L412	 #
.L701:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rbp, rax	 # tmp1051, tmp1779
	vzeroupper
	jmp	.L496	 #
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
	.align 4
.LLSDA7284:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT7284-.LLSDATTD7284
.LLSDATTD7284:
	.byte	0x1
	.uleb128 .LLSDACSE7284-.LLSDACSB7284
.LLSDACSB7284:
	.uleb128 .LEHB37-.LFB7284
	.uleb128 .LEHE37-.LEHB37
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB38-.LFB7284
	.uleb128 .LEHE38-.LEHB38
	.uleb128 .L699-.LFB7284
	.uleb128 0
	.uleb128 .LEHB39-.LFB7284
	.uleb128 .LEHE39-.LEHB39
	.uleb128 .L710-.LFB7284
	.uleb128 0
	.uleb128 .LEHB40-.LFB7284
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L712-.LFB7284
	.uleb128 0
	.uleb128 .LEHB41-.LFB7284
	.uleb128 .LEHE41-.LEHB41
	.uleb128 .L714-.LFB7284
	.uleb128 0
	.uleb128 .LEHB42-.LFB7284
	.uleb128 .LEHE42-.LEHB42
	.uleb128 .L711-.LFB7284
	.uleb128 0
	.uleb128 .LEHB43-.LFB7284
	.uleb128 .LEHE43-.LEHB43
	.uleb128 .L700-.LFB7284
	.uleb128 0
	.uleb128 .LEHB44-.LFB7284
	.uleb128 .LEHE44-.LEHB44
	.uleb128 .L716-.LFB7284
	.uleb128 0
	.uleb128 .LEHB45-.LFB7284
	.uleb128 .LEHE45-.LEHB45
	.uleb128 .L700-.LFB7284
	.uleb128 0
	.uleb128 .LEHB46-.LFB7284
	.uleb128 .LEHE46-.LEHB46
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB47-.LFB7284
	.uleb128 .LEHE47-.LEHB47
	.uleb128 .L717-.LFB7284
	.uleb128 0
	.uleb128 .LEHB48-.LFB7284
	.uleb128 .LEHE48-.LEHB48
	.uleb128 .L718-.LFB7284
	.uleb128 0
	.uleb128 .LEHB49-.LFB7284
	.uleb128 .LEHE49-.LEHB49
	.uleb128 .L720-.LFB7284
	.uleb128 0
	.uleb128 .LEHB50-.LFB7284
	.uleb128 .LEHE50-.LEHB50
	.uleb128 .L722-.LFB7284
	.uleb128 0
	.uleb128 .LEHB51-.LFB7284
	.uleb128 .LEHE51-.LEHB51
	.uleb128 .L719-.LFB7284
	.uleb128 0
	.uleb128 .LEHB52-.LFB7284
	.uleb128 .LEHE52-.LEHB52
	.uleb128 .L701-.LFB7284
	.uleb128 0
	.uleb128 .LEHB53-.LFB7284
	.uleb128 .LEHE53-.LEHB53
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB54-.LFB7284
	.uleb128 .LEHE54-.LEHB54
	.uleb128 .L723-.LFB7284
	.uleb128 0
	.uleb128 .LEHB55-.LFB7284
	.uleb128 .LEHE55-.LEHB55
	.uleb128 .L701-.LFB7284
	.uleb128 0
	.uleb128 .LEHB56-.LFB7284
	.uleb128 .LEHE56-.LEHB56
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB57-.LFB7284
	.uleb128 .LEHE57-.LEHB57
	.uleb128 .L724-.LFB7284
	.uleb128 0
	.uleb128 .LEHB58-.LFB7284
	.uleb128 .LEHE58-.LEHB58
	.uleb128 .L701-.LFB7284
	.uleb128 0
	.uleb128 .LEHB59-.LFB7284
	.uleb128 .LEHE59-.LEHB59
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB60-.LFB7284
	.uleb128 .LEHE60-.LEHB60
	.uleb128 .L725-.LFB7284
	.uleb128 0
	.uleb128 .LEHB61-.LFB7284
	.uleb128 .LEHE61-.LEHB61
	.uleb128 .L701-.LFB7284
	.uleb128 0
	.uleb128 .LEHB62-.LFB7284
	.uleb128 .LEHE62-.LEHB62
	.uleb128 .L726-.LFB7284
	.uleb128 0
	.uleb128 .LEHB63-.LFB7284
	.uleb128 .LEHE63-.LEHB63
	.uleb128 .L701-.LFB7284
	.uleb128 0
	.uleb128 .LEHB64-.LFB7284
	.uleb128 .LEHE64-.LEHB64
	.uleb128 .L727-.LFB7284
	.uleb128 0
	.uleb128 .LEHB65-.LFB7284
	.uleb128 .LEHE65-.LEHB65
	.uleb128 .L706-.LFB7284
	.uleb128 0
	.uleb128 .LEHB66-.LFB7284
	.uleb128 .LEHE66-.LEHB66
	.uleb128 .L709-.LFB7284
	.uleb128 0
	.uleb128 .LEHB67-.LFB7284
	.uleb128 .LEHE67-.LEHB67
	.uleb128 .L699-.LFB7284
	.uleb128 0
	.uleb128 .LEHB68-.LFB7284
	.uleb128 .LEHE68-.LEHB68
	.uleb128 .L715-.LFB7284
	.uleb128 0
	.uleb128 .LEHB69-.LFB7284
	.uleb128 .LEHE69-.LEHB69
	.uleb128 .L699-.LFB7284
	.uleb128 0
	.uleb128 .LEHB70-.LFB7284
	.uleb128 .LEHE70-.LEHB70
	.uleb128 .L713-.LFB7284
	.uleb128 0
	.uleb128 .LEHB71-.LFB7284
	.uleb128 .LEHE71-.LEHB71
	.uleb128 .L706-.LFB7284
	.uleb128 0
	.uleb128 .LEHB72-.LFB7284
	.uleb128 .LEHE72-.LEHB72
	.uleb128 .L721-.LFB7284
	.uleb128 0
	.uleb128 .LEHB73-.LFB7284
	.uleb128 .LEHE73-.LEHB73
	.uleb128 .L701-.LFB7284
	.uleb128 0
	.uleb128 .LEHB74-.LFB7284
	.uleb128 .LEHE74-.LEHB74
	.uleb128 .L702-.LFB7284
	.uleb128 0
	.uleb128 .LEHB75-.LFB7284
	.uleb128 .LEHE75-.LEHB75
	.uleb128 .L703-.LFB7284
	.uleb128 0
	.uleb128 .LEHB76-.LFB7284
	.uleb128 .LEHE76-.LEHB76
	.uleb128 .L704-.LFB7284
	.uleb128 0
	.uleb128 .LEHB77-.LFB7284
	.uleb128 .LEHE77-.LEHB77
	.uleb128 .L705-.LFB7284
	.uleb128 0
	.uleb128 .LEHB78-.LFB7284
	.uleb128 .LEHE78-.LEHB78
	.uleb128 .L707-.LFB7284
	.uleb128 0
	.uleb128 .LEHB79-.LFB7284
	.uleb128 .LEHE79-.LEHB79
	.uleb128 .L708-.LFB7284
	.uleb128 0
	.uleb128 .LEHB80-.LFB7284
	.uleb128 .LEHE80-.LEHB80
	.uleb128 .L728-.LFB7284
	.uleb128 0
	.uleb128 .LEHB81-.LFB7284
	.uleb128 .LEHE81-.LEHB81
	.uleb128 .L729-.LFB7284
	.uleb128 0
	.uleb128 .LEHB82-.LFB7284
	.uleb128 .LEHE82-.LEHB82
	.uleb128 .L730-.LFB7284
	.uleb128 0
	.uleb128 .LEHB83-.LFB7284
	.uleb128 .LEHE83-.LEHB83
	.uleb128 .L731-.LFB7284
	.uleb128 0
	.uleb128 .LEHB84-.LFB7284
	.uleb128 .LEHE84-.LEHB84
	.uleb128 .L700-.LFB7284
	.uleb128 0
	.uleb128 .LEHB85-.LFB7284
	.uleb128 .LEHE85-.LEHB85
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB86-.LFB7284
	.uleb128 .LEHE86-.LEHB86
	.uleb128 .L696-.LFB7284
	.uleb128 0
	.uleb128 .LEHB87-.LFB7284
	.uleb128 .LEHE87-.LEHB87
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB88-.LFB7284
	.uleb128 .LEHE88-.LEHB88
	.uleb128 .L697-.LFB7284
	.uleb128 0
	.uleb128 .LEHB89-.LFB7284
	.uleb128 .LEHE89-.LEHB89
	.uleb128 .L713-.LFB7284
	.uleb128 0
	.uleb128 .LEHB90-.LFB7284
	.uleb128 .LEHE90-.LEHB90
	.uleb128 .L697-.LFB7284
	.uleb128 0
	.uleb128 .LEHB91-.LFB7284
	.uleb128 .LEHE91-.LEHB91
	.uleb128 .L715-.LFB7284
	.uleb128 0
	.uleb128 .LEHB92-.LFB7284
	.uleb128 .LEHE92-.LEHB92
	.uleb128 .L701-.LFB7284
	.uleb128 0
	.uleb128 .LEHB93-.LFB7284
	.uleb128 .LEHE93-.LEHB93
	.uleb128 .L721-.LFB7284
	.uleb128 0
	.uleb128 .LEHB94-.LFB7284
	.uleb128 .LEHE94-.LEHB94
	.uleb128 .L703-.LFB7284
	.uleb128 0
	.uleb128 .LEHB95-.LFB7284
	.uleb128 .LEHE95-.LEHB95
	.uleb128 .L702-.LFB7284
	.uleb128 0
	.uleb128 .LEHB96-.LFB7284
	.uleb128 .LEHE96-.LEHB96
	.uleb128 .L704-.LFB7284
	.uleb128 0
	.uleb128 .LEHB97-.LFB7284
	.uleb128 .LEHE97-.LEHB97
	.uleb128 .L705-.LFB7284
	.uleb128 0
	.uleb128 .LEHB98-.LFB7284
	.uleb128 .LEHE98-.LEHB98
	.uleb128 .L708-.LFB7284
	.uleb128 0
	.uleb128 .LEHB99-.LFB7284
	.uleb128 .LEHE99-.LEHB99
	.uleb128 .L707-.LFB7284
	.uleb128 0
	.uleb128 .LEHB100-.LFB7284
	.uleb128 .LEHE100-.LEHB100
	.uleb128 .L732-.LFB7284
	.uleb128 0x1
	.uleb128 .LEHB101-.LFB7284
	.uleb128 .LEHE101-.LEHB101
	.uleb128 .L729-.LFB7284
	.uleb128 0
	.uleb128 .LEHB102-.LFB7284
	.uleb128 .LEHE102-.LEHB102
	.uleb128 .L728-.LFB7284
	.uleb128 0
	.uleb128 .LEHB103-.LFB7284
	.uleb128 .LEHE103-.LEHB103
	.uleb128 .L731-.LFB7284
	.uleb128 0
	.uleb128 .LEHB104-.LFB7284
	.uleb128 .LEHE104-.LEHB104
	.uleb128 .L730-.LFB7284
	.uleb128 0
	.uleb128 .LEHB105-.LFB7284
	.uleb128 .LEHE105-.LEHB105
	.uleb128 .L732-.LFB7284
	.uleb128 0x1
	.uleb128 .LEHB106-.LFB7284
	.uleb128 .LEHE106-.LEHB106
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB107-.LFB7284
	.uleb128 .LEHE107-.LEHB107
	.uleb128 .L698-.LFB7284
	.uleb128 0
	.uleb128 .LEHB108-.LFB7284
	.uleb128 .LEHE108-.LEHB108
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB109-.LFB7284
	.uleb128 .LEHE109-.LEHB109
	.uleb128 .L713-.LFB7284
	.uleb128 0
	.uleb128 .LEHB110-.LFB7284
	.uleb128 .LEHE110-.LEHB110
	.uleb128 .L724-.LFB7284
	.uleb128 0
	.uleb128 .LEHB111-.LFB7284
	.uleb128 .LEHE111-.LEHB111
	.uleb128 .L732-.LFB7284
	.uleb128 0x1
	.uleb128 .LEHB112-.LFB7284
	.uleb128 .LEHE112-.LEHB112
	.uleb128 .L697-.LFB7284
	.uleb128 0
	.uleb128 .LEHB113-.LFB7284
	.uleb128 .LEHE113-.LEHB113
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB114-.LFB7284
	.uleb128 .LEHE114-.LEHB114
	.uleb128 .L733-.LFB7284
	.uleb128 0
	.uleb128 .LEHB115-.LFB7284
	.uleb128 .LEHE115-.LEHB115
	.uleb128 .L727-.LFB7284
	.uleb128 0
	.uleb128 .LEHB116-.LFB7284
	.uleb128 .LEHE116-.LEHB116
	.uleb128 .L717-.LFB7284
	.uleb128 0
	.uleb128 .LEHB117-.LFB7284
	.uleb128 .LEHE117-.LEHB117
	.uleb128 .L713-.LFB7284
	.uleb128 0
	.uleb128 .LEHB118-.LFB7284
	.uleb128 .LEHE118-.LEHB118
	.uleb128 .L716-.LFB7284
	.uleb128 0
	.uleb128 .LEHB119-.LFB7284
	.uleb128 .LEHE119-.LEHB119
	.uleb128 .L701-.LFB7284
	.uleb128 0
	.uleb128 .LEHB120-.LFB7284
	.uleb128 .LEHE120-.LEHB120
	.uleb128 .L724-.LFB7284
	.uleb128 0
	.uleb128 .LEHB121-.LFB7284
	.uleb128 .LEHE121-.LEHB121
	.uleb128 .L701-.LFB7284
	.uleb128 0
	.uleb128 .LEHB122-.LFB7284
	.uleb128 .LEHE122-.LEHB122
	.uleb128 .L716-.LFB7284
	.uleb128 0
	.uleb128 .LEHB123-.LFB7284
	.uleb128 .LEHE123-.LEHB123
	.uleb128 .L723-.LFB7284
	.uleb128 0
	.uleb128 .LEHB124-.LFB7284
	.uleb128 .LEHE124-.LEHB124
	.uleb128 .L715-.LFB7284
	.uleb128 0
	.uleb128 .LEHB125-.LFB7284
	.uleb128 .LEHE125-.LEHB125
	.uleb128 .L701-.LFB7284
	.uleb128 0
	.uleb128 .LEHB126-.LFB7284
	.uleb128 .LEHE126-.LEHB126
	.uleb128 .L700-.LFB7284
	.uleb128 0
	.uleb128 .LEHB127-.LFB7284
	.uleb128 .LEHE127-.LEHB127
	.uleb128 .L717-.LFB7284
	.uleb128 0
	.uleb128 .LEHB128-.LFB7284
	.uleb128 .LEHE128-.LEHB128
	.uleb128 .L721-.LFB7284
	.uleb128 0
	.uleb128 .LEHB129-.LFB7284
	.uleb128 .LEHE129-.LEHB129
	.uleb128 .L703-.LFB7284
	.uleb128 0
	.uleb128 .LEHB130-.LFB7284
	.uleb128 .LEHE130-.LEHB130
	.uleb128 .L702-.LFB7284
	.uleb128 0
	.uleb128 .LEHB131-.LFB7284
	.uleb128 .LEHE131-.LEHB131
	.uleb128 .L708-.LFB7284
	.uleb128 0
	.uleb128 .LEHB132-.LFB7284
	.uleb128 .LEHE132-.LEHB132
	.uleb128 .L707-.LFB7284
	.uleb128 0
	.uleb128 .LEHB133-.LFB7284
	.uleb128 .LEHE133-.LEHB133
	.uleb128 .L705-.LFB7284
	.uleb128 0
	.uleb128 .LEHB134-.LFB7284
	.uleb128 .LEHE134-.LEHB134
	.uleb128 .L704-.LFB7284
	.uleb128 0
	.uleb128 .LEHB135-.LFB7284
	.uleb128 .LEHE135-.LEHB135
	.uleb128 .L727-.LFB7284
	.uleb128 0
	.uleb128 .LEHB136-.LFB7284
	.uleb128 .LEHE136-.LEHB136
	.uleb128 .L725-.LFB7284
	.uleb128 0
	.uleb128 .LEHB137-.LFB7284
	.uleb128 .LEHE137-.LEHB137
	.uleb128 .L726-.LFB7284
	.uleb128 0
	.uleb128 .LEHB138-.LFB7284
	.uleb128 .LEHE138-.LEHB138
	.uleb128 .L725-.LFB7284
	.uleb128 0
	.uleb128 .LEHB139-.LFB7284
	.uleb128 .LEHE139-.LEHB139
	.uleb128 .L726-.LFB7284
	.uleb128 0
	.uleb128 .LEHB140-.LFB7284
	.uleb128 .LEHE140-.LEHB140
	.uleb128 .L728-.LFB7284
	.uleb128 0
	.uleb128 .LEHB141-.LFB7284
	.uleb128 .LEHE141-.LEHB141
	.uleb128 .L729-.LFB7284
	.uleb128 0
	.uleb128 .LEHB142-.LFB7284
	.uleb128 .LEHE142-.LEHB142
	.uleb128 .L731-.LFB7284
	.uleb128 0
	.uleb128 .LEHB143-.LFB7284
	.uleb128 .LEHE143-.LEHB143
	.uleb128 .L730-.LFB7284
	.uleb128 0
	.uleb128 .LEHB144-.LFB7284
	.uleb128 .LEHE144-.LEHB144
	.uleb128 .L700-.LFB7284
	.uleb128 0
.LLSDACSE7284:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT7284:
	.section	.text.startup,"x"
	.seh_endproc
	.p2align 4
	.def	_GLOBAL__sub_I_main;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I_main
_GLOBAL__sub_I_main:
.LFB9760:
	.seh_endprologue
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:205:       _M_header._M_left = &_M_header;
	lea	rax, _ZN5LeniaL7AnimalsE[rip+8]	 # tmp101,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/atomic_wait.h:254: 	static __waiter_pool_base __w[__ct];
	lea	rcx, __tcf_1[rip]	 # tmp105,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:171:       _M_header._M_color = _S_red;
	mov	DWORD PTR _ZN5LeniaL7AnimalsE[rip+8], 0	 # MEM[(struct _Rb_tree_header *)&Animals + 8B]._M_header._M_color,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:204:       _M_header._M_parent = 0;
	mov	QWORD PTR _ZN5LeniaL7AnimalsE[rip+16], 0	 # MEM[(struct _Rb_tree_header *)&Animals + 8B]._M_header._M_parent,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:205:       _M_header._M_left = &_M_header;
	mov	QWORD PTR _ZN5LeniaL7AnimalsE[rip+24], rax	 # MEM[(struct _Rb_tree_header *)&Animals + 8B]._M_header._M_left, tmp101
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:206:       _M_header._M_right = &_M_header;
	mov	QWORD PTR _ZN5LeniaL7AnimalsE[rip+32], rax	 # MEM[(struct _Rb_tree_header *)&Animals + 8B]._M_header._M_right, tmp101
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_tree.h:207:       _M_node_count = 0;
	mov	QWORD PTR _ZN5LeniaL7AnimalsE[rip+40], 0	 # MEM[(struct _Rb_tree_header *)&Animals + 8B]._M_node_count,
 # source/main.cpp:147: }
 # C:/msys64/mingw64/include/c++/14.2.0/bits/atomic_wait.h:254: 	static __waiter_pool_base __w[__ct];
	jmp	atexit	 #
	.seh_endproc
	.section	.ctors,"w"
	.align 8
	.quad	_GLOBAL__sub_I_main
.lcomm _ZN5LeniaL7AnimalsE,48,32
	.section .rdata,"dr"
	.align 32
_ZN5LeniaL5MagmaE:
 # n:
	.long	6
 # colors:
	.space 12
 # R:
	.long	0
 # G:
	.long	0
 # B:
	.long	1036831949
	.space 4
 # R:
	.long	1051260355
 # G:
	.long	0
 # B:
	.long	1051260355
	.space 4
 # R:
	.long	0
 # G:
	.long	0
 # B:
	.long	1065353216
	.space 4
 # R:
	.long	0
 # G:
	.long	1065353216
 # B:
	.long	0
	.space 4
 # R:
	.long	1065353216
 # G:
	.long	1065353216
 # B:
	.long	0
	.space 4
 # R:
	.long	1065353216
 # G:
	.long	1059648963
 # B:
	.long	0
	.space 4
 # R:
	.long	1065353216
 # G:
	.long	0
 # B:
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
	.set	.LC20,.LC7+12
	.align 8
.LC22:
	.long	0
	.long	1072693248
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
	.def	glfwSetWindowTitle;	.scl	2;	.type	32;	.endef
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
