	.file	"simulation.cpp"
	.intel_syntax noprefix
 # GNU C++23 (x86_64-posix-seh-rev0, Built by MinGW-Builds project) version 13.2.0 (x86_64-w64-mingw32)
 #	compiled by GNU C version 13.2.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.25-GMP

 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed: -masm=intel -mavx512f -mtune=core2 -march=nocona -O3 -std=c++23
	.text
	.section .rdata,"dr"
	.align 8
.LC0:
	.ascii "cannot create std::deque larger than max_size()\0"
	.text
	.align 2
	.p2align 4
	.def	_ZNSt5dequeIN5Lenia4Vec2IjEESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZNSt5dequeIN5Lenia4Vec2IjEESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.isra.0
_ZNSt5dequeIN5Lenia4Vec2IjEESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.isra.0:
.LFB7718:
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
	sub	rsp, 40	 #,
	.seh_stackalloc	40
	.seh_endprologue
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:168: 	    != this->_M_impl._M_finish._M_last - 1)
	mov	rdi, QWORD PTR 64[rcx]	 # tmp220, this_1(D)->D.136175._M_impl.D.135525._M_finish._M_last
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:167: 	if (this->_M_impl._M_finish._M_cur
	mov	rax, QWORD PTR 48[rcx]	 # _2, this_1(D)->D.136175._M_impl.D.135525._M_finish._M_cur
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:164:       deque<_Tp, _Alloc>::
	mov	rsi, rdx	 # __args#0, tmp216
	mov	rbx, rcx	 # this, tmp215
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:168: 	    != this->_M_impl._M_finish._M_last - 1)
	lea	rdx, -8[rdi]	 # tmp163,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:167: 	if (this->_M_impl._M_finish._M_cur
	cmp	rax, rdx	 # _2, tmp163
	je	.L2	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_construct.h:97:     { return ::new((void*)__location) _Tp(std::forward<_Args>(__args)...); }
	mov	rdx, QWORD PTR [rsi]	 # *__args#0_5(D), *__args#0_5(D)
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:173: 	    ++this->_M_impl._M_finish._M_cur;
	add	rax, 8	 # _6,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_construct.h:97:     { return ::new((void*)__location) _Tp(std::forward<_Args>(__args)...); }
	mov	QWORD PTR -8[rax], rdx	 # *_2, *__args#0_5(D)
.L3:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:173: 	    ++this->_M_impl._M_finish._M_cur;
	mov	QWORD PTR 48[rbx], rax	 # this_1(D)->D.136175._M_impl.D.135525._M_finish._M_cur, _6
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:180:       }
	add	rsp, 40	 #,
	pop	rbx	 #
	pop	rsi	 #
	pop	rdi	 #
	pop	rbp	 #
	pop	r12	 #
	pop	r13	 #
	ret	
	.p2align 4,,10
	.p2align 3
.L2:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:492: 	if (size() == max_size())
	movabs	r10, 2305843009213693951	 # tmp180,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:373: 	  * (__x._M_node - __y._M_node - bool(__x._M_node))
	mov	rdi, QWORD PTR 72[rcx]	 # _19, MEM[(const struct _Self &)this_1(D) + 48]._M_node
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:373: 	  * (__x._M_node - __y._M_node - bool(__x._M_node))
	mov	r9, QWORD PTR 40[rcx]	 # _20, MEM[(const struct _Self &)this_1(D) + 16]._M_node
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:373: 	  * (__x._M_node - __y._M_node - bool(__x._M_node))
	mov	rbp, rdi	 # _21, _19
	sub	rbp, r9	 # _21, _20
	mov	rcx, rbp	 # tmp166, _21
	sar	rcx, 3	 # tmp166,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:373: 	  * (__x._M_node - __y._M_node - bool(__x._M_node))
	cmp	rdi, 1	 # _19,
	mov	rdx, rcx	 # tmp169, tmp166
	adc	rdx, -1	 # tmp169,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:374: 	  + (__x._M_cur - __x._M_first)
	sub	rax, QWORD PTR 56[rbx]	 # tmp171, MEM[(const struct _Self &)this_1(D) + 48]._M_first
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:373: 	  * (__x._M_node - __y._M_node - bool(__x._M_node))
	sal	rdx, 6	 # tmp170,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:374: 	  + (__x._M_cur - __x._M_first)
	sar	rax, 3	 # tmp173,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:374: 	  + (__x._M_cur - __x._M_first)
	add	rax, rdx	 # tmp174, tmp170
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:375: 	  + (__y._M_last - __y._M_cur);
	mov	rdx, QWORD PTR 32[rbx]	 # MEM[(const struct _Self &)this_1(D) + 16]._M_last, MEM[(const struct _Self &)this_1(D) + 16]._M_last
	sub	rdx, QWORD PTR 16[rbx]	 # tmp175, MEM[(const struct _Self &)this_1(D) + 16]._M_cur
	sar	rdx, 3	 # tmp178,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:375: 	  + (__y._M_last - __y._M_cur);
	add	rax, rdx	 # tmp179, tmp178
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:492: 	if (size() == max_size())
	cmp	rax, r10	 # tmp179, tmp180
	je	.L20	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:2171: 	    - (this->_M_impl._M_finish._M_node - this->_M_impl._M_map))
	mov	r8, QWORD PTR [rbx]	 # _53, this_1(D)->D.136175._M_impl.D.135525._M_map
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:2171: 	    - (this->_M_impl._M_finish._M_node - this->_M_impl._M_map))
	mov	rax, rdi	 # tmp182, _19
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:2170: 	if (__nodes_to_add + 1 > this->_M_impl._M_map_size
	mov	rdx, QWORD PTR 8[rbx]	 # _51, this_1(D)->D.136175._M_impl.D.135525._M_map_size
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:2171: 	    - (this->_M_impl._M_finish._M_node - this->_M_impl._M_map))
	sub	rax, r8	 # tmp182, _53
	sar	rax, 3	 # tmp184,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:2171: 	    - (this->_M_impl._M_finish._M_node - this->_M_impl._M_map))
	mov	r11, rdx	 # tmp185, _51
	sub	r11, rax	 # tmp185, tmp184
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:2170: 	if (__nodes_to_add + 1 > this->_M_impl._M_map_size
	cmp	r11, 1	 # tmp185,
	jbe	.L21	 #,
.L5:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	ecx, 512	 #,
	call	_Znwy	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_construct.h:97:     { return ::new((void*)__location) _Tp(std::forward<_Args>(__args)...); }
	mov	rdx, QWORD PTR [rsi]	 # *__args#0_5(D), *__args#0_5(D)
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:497: 	*(this->_M_impl._M_finish._M_node + 1) = this->_M_allocate_node();
	mov	QWORD PTR 8[rdi], rax	 # MEM[(struct Vec2 * *)prephitmp_78 + 8B], tmp218
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_construct.h:97:     { return ::new((void*)__location) _Tp(std::forward<_Args>(__args)...); }
	mov	rax, QWORD PTR 48[rbx]	 # this_1(D)->D.136175._M_impl.D.135525._M_finish._M_cur, this_1(D)->D.136175._M_impl.D.135525._M_finish._M_cur
	mov	QWORD PTR [rax], rdx	 # *_40, *__args#0_5(D)
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:507: 	    this->_M_impl._M_finish._M_set_node(this->_M_impl._M_finish._M_node
	mov	rax, QWORD PTR 72[rbx]	 # _41, this_1(D)->D.136175._M_impl.D.135525._M_finish._M_node
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:507: 	    this->_M_impl._M_finish._M_set_node(this->_M_impl._M_finish._M_node
	lea	rdx, 8[rax]	 # tmp212,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	mov	rax, QWORD PTR 8[rax]	 # _6, MEM[(struct Vec2 * *)_41 + 8B]
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:507: 	    this->_M_impl._M_finish._M_set_node(this->_M_impl._M_finish._M_node
	mov	QWORD PTR 72[rbx], rdx	 # MEM[(struct _Deque_iterator *)this_1(D) + 48B]._M_node, tmp212
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:267: 	_M_last = _M_first + difference_type(_S_buffer_size());
	lea	rdx, 512[rax]	 # tmp214,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	vmovq	xmm1, rax	 # _6, _6
	vpinsrq	xmm0, xmm1, rdx, 1	 # tmp213, _6, tmp214
	vmovdqu	XMMWORD PTR 56[rbx], xmm0	 # MEM <vector(2) long long unsigned int> [(struct Vec2 * *)this_1(D) + 56B], tmp213
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:516:       }
	jmp	.L3	 #
	.p2align 4,,10
	.p2align 3
.L21:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:936:       const size_type __new_num_nodes = __old_num_nodes + __nodes_to_add;
	lea	r12, 2[rcx]	 # __new_num_nodes,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:939:       if (this->_M_impl._M_map_size > 2 * __new_num_nodes)
	lea	rax, [r12+r12]	 # tmp186,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:939:       if (this->_M_impl._M_map_size > 2 * __new_num_nodes)
	cmp	rax, rdx	 # tmp186, _51
	jb	.L22	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:262:       if (__a < __b)
	test	rdx, rdx	 # _51
	je	.L18	 #,
	lea	rcx, 1[rdx]	 # _140,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:130: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	movabs	rax, 1152921504606846975	 # tmp194,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:955: 	  size_type __new_map_size = this->_M_impl._M_map_size
	lea	rdi, [rcx+rcx]	 # __new_map_size,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:130: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	cmp	rax, rdi	 # tmp194, __new_map_size
	jb	.L14	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	sal	rcx, 4	 # _104,
.L13:
	call	_Znwy	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:962: 	  std::copy(this->_M_impl._M_start._M_node,
	mov	rdx, QWORD PTR 40[rbx]	 # _102, this_1(D)->D.136175._M_impl.D.135525._M_start._M_node
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	r13, rax	 # _133, tmp217
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:960: 	  __new_nstart = __new_map + (__new_map_size - __new_num_nodes) / 2
	mov	rax, rdi	 # tmp197, __new_map_size
	sub	rax, r12	 # tmp197, __new_num_nodes
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:960: 	  __new_nstart = __new_map + (__new_map_size - __new_num_nodes) / 2
	shr	rax	 # tmp198
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:960: 	  __new_nstart = __new_map + (__new_map_size - __new_num_nodes) / 2
	lea	r12, 0[r13+rax*8]	 # __new_nstart,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:962: 	  std::copy(this->_M_impl._M_start._M_node,
	mov	rax, QWORD PTR 72[rbx]	 # tmp227, this_1(D)->D.136175._M_impl.D.135525._M_finish._M_node
	lea	r8, 8[rax]	 # tmp200,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:435: 	  const ptrdiff_t _Num = __last - __first;
	sub	r8, rdx	 # _103, _102
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:436: 	  if (__builtin_expect(_Num > 1, true))
	cmp	r8, 8	 # _103,
	jle	.L16	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:437: 	    __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
	mov	rcx, r12	 #, __new_nstart
	call	memmove	 #
.L17:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	rax, QWORD PTR 8[rbx]	 # tmp228, this_1(D)->D.136175._M_impl.D.135525._M_map_size
	mov	rcx, QWORD PTR [rbx]	 # this_1(D)->D.136175._M_impl.D.135525._M_map, this_1(D)->D.136175._M_impl.D.135525._M_map
	lea	rdx, 0[0+rax*8]	 # tmp202,
	call	_ZdlPvy	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:967: 	  this->_M_impl._M_map = __new_map;
	mov	QWORD PTR [rbx], r13	 # this_1(D)->D.136175._M_impl.D.135525._M_map, _133
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:968: 	  this->_M_impl._M_map_size = __new_map_size;
	mov	QWORD PTR 8[rbx], rdi	 # this_1(D)->D.136175._M_impl.D.135525._M_map_size, __new_map_size
.L12:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	mov	rax, QWORD PTR [r12]	 # _112, *__new_nstart_111
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:972:       this->_M_impl._M_finish._M_set_node(__new_nstart + __old_num_nodes - 1);
	lea	rdi, [r12+rbp]	 # _19,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:265: 	_M_node = __new_node;
	mov	QWORD PTR 40[rbx], r12	 # MEM[(struct _Deque_iterator *)this_1(D) + 16B]._M_node, __new_nstart
	mov	QWORD PTR 72[rbx], rdi	 # MEM[(struct _Deque_iterator *)this_1(D) + 48B]._M_node, _19
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:267: 	_M_last = _M_first + difference_type(_S_buffer_size());
	lea	rdx, 512[rax]	 # tmp206,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	vmovq	xmm2, rax	 # _112, _112
	vpinsrq	xmm0, xmm2, rdx, 1	 # tmp205, _112, tmp206
	vmovdqu	XMMWORD PTR 24[rbx], xmm0	 # MEM <vector(2) long long unsigned int> [(struct Vec2 * *)this_1(D) + 24B], tmp205
	mov	rax, QWORD PTR [rdi]	 # _116, *_115
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:267: 	_M_last = _M_first + difference_type(_S_buffer_size());
	lea	rdx, 512[rax]	 # tmp208,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	vmovq	xmm3, rax	 # _116, _116
	vpinsrq	xmm0, xmm3, rdx, 1	 # tmp207, _116, tmp208
	vmovdqu	XMMWORD PTR 56[rbx], xmm0	 # MEM <vector(2) long long unsigned int> [(struct Vec2 * *)this_1(D) + 56B], tmp207
	jmp	.L5	 #
	.p2align 4,,10
	.p2align 3
.L22:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:942: 					 - __new_num_nodes) / 2
	sub	rdx, r12	 # tmp187, __new_num_nodes
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:942: 					 - __new_num_nodes) / 2
	shr	rdx	 # tmp188
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:941: 	  __new_nstart = this->_M_impl._M_map + (this->_M_impl._M_map_size
	lea	r12, [r8+rdx*8]	 # __new_nstart,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:945: 	    std::copy(this->_M_impl._M_start._M_node,
	lea	r8, 8[rdi]	 # tmp190,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:435: 	  const ptrdiff_t _Num = __last - __first;
	sub	r8, r9	 # _11, _20
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:944: 	  if (__new_nstart < this->_M_impl._M_start._M_node)
	cmp	r12, r9	 # __new_nstart, _20
	jnb	.L7	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:436: 	  if (__builtin_expect(_Num > 1, true))
	cmp	r8, 8	 # _11,
	jle	.L8	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:437: 	    __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
	mov	rdx, r9	 #, _20
	mov	rcx, r12	 #, __new_nstart
	call	memmove	 #
	jmp	.L12	 #
.L18:
	mov	ecx, 24	 # _104,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:955: 	  size_type __new_map_size = this->_M_impl._M_map_size
	mov	edi, 3	 # __new_map_size,
	jmp	.L13	 #
.L7:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:949: 	    std::copy_backward(this->_M_impl._M_start._M_node,
	lea	rcx, 8[r12+rbp]	 # _85,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:747: 	  if (__builtin_expect(_Num > 1, true))
	cmp	r8, 8	 # _11,
	jle	.L10	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:748: 	    __builtin_memmove(__result - _Num, __first, sizeof(_Tp) * _Num);
	sub	rcx, r8	 # tmp193, _11
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:748: 	    __builtin_memmove(__result - _Num, __first, sizeof(_Tp) * _Num);
	mov	rdx, r9	 #, _20
	call	memmove	 #
	jmp	.L12	 #
.L14:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:134: 	    if (__n > (std::size_t(-1) / sizeof(_Tp)))
	cmp	r10, rdi	 # tmp180, __new_map_size
	jnb	.L15	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:135: 	      std::__throw_bad_array_new_length();
	call	_ZSt28__throw_bad_array_new_lengthv	 #
.L16:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:438: 	  else if (_Num == 1)
	jne	.L17	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	mov	rax, QWORD PTR [rdx]	 # _108, *_102
	mov	QWORD PTR [r12], rax	 # *__new_nstart_99, _108
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	jmp	.L17	 #
.L8:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:438: 	  else if (_Num == 1)
	jne	.L12	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	mov	rax, QWORD PTR [r9]	 # _82, *_20
	mov	QWORD PTR [r12], rax	 # *__new_nstart_75, _82
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	jmp	.L12	 #
.L15:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:136: 	    std::__throw_bad_alloc();
	call	_ZSt17__throw_bad_allocv	 #
.L10:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:749: 	  else if (_Num == 1)
	jne	.L12	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	mov	rax, QWORD PTR [r9]	 # _125, *_20
	mov	QWORD PTR -8[rcx], rax	 # MEM[(struct Vec2 * *)_85 + -8B], _125
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	jmp	.L12	 #
.L20:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:493: 	  __throw_length_error(
	lea	rcx, .LC0[rip]	 # tmp181,
	call	_ZSt20__throw_length_errorPKc	 #
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
.LFB5883:
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
	sub	rsp, 376	 #,
	.seh_stackalloc	376
	.seh_endprologue
 # include/gl_setup.hpp:50: 			glGenBuffers(1, &m_ID);
	mov	rdi, QWORD PTR .refptr.glad_glGenBuffers[rip]	 # tmp561,
 # source/simulation.cpp:7: 	Simulation::Simulation(const size_t w, const size_t h, const size_t scale, const ColorPalette& colorPalette) {
	mov	rsi, QWORD PTR 480[rsp]	 # colorPalette, colorPalette
 # source/simulation.cpp:11: 		m_size = w * h;
	mov	rax, rdx	 # tmp331, w
 # source/simulation.cpp:8: 		m_w = w;
	vmovq	xmm3, rdx	 # w, w
 # source/simulation.cpp:7: 	Simulation::Simulation(const size_t w, const size_t h, const size_t scale, const ColorPalette& colorPalette) {
	mov	rbx, rcx	 # this, tmp571
 # source/simulation.cpp:7: 	Simulation::Simulation(const size_t w, const size_t h, const size_t scale, const ColorPalette& colorPalette) {
	mov	BYTE PTR 232[rcx], 2	 # *this_11(D).m_readWriteBinding,
 # source/simulation.cpp:11: 		m_size = w * h;
	imul	rax, r8	 # tmp331, h
 # source/simulation.cpp:8: 		m_w = w;
	vmovq	xmm2, r9	 # tmp574, tmp574
	vpinsrq	xmm0, xmm3, r8, 1	 # tmp333, w, h
 # source/simulation.cpp:12: 		m_mass = 0.f;
	mov	QWORD PTR 32[rcx], 0x000000000	 # *this_11(D).m_mass,
 # include/gl_setup.hpp:50: 			glGenBuffers(1, &m_ID);
	lea	r12, 96[rsp]	 # tmp559,
 # source/simulation.cpp:13: 		m_centerOfMass = Vec2<u32> { 0, 0 };
	mov	QWORD PTR 40[rcx], 0	 # MEM <vector(2) unsigned int> [(unsigned int *)this_11(D) + 40B],
 # include/gl_setup.hpp:44:             m_ID = 0;
	mov	QWORD PTR 48[rcx], 0	 # MEM <unsigned long long> [(void *)this_11(D) + 48B],
 # include/gl_setup.hpp:50: 			glGenBuffers(1, &m_ID);
	mov	rdx, r12	 #, tmp559
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:100: 	: _M_start(), _M_finish(), _M_end_of_storage()
	mov	QWORD PTR 72[rcx], 0	 # MEM[(struct _Vector_impl_data *)this_11(D) + 56B]._M_end_of_storage,
 # include/gl_setup.hpp:44:             m_ID = 0;
	mov	QWORD PTR 80[rcx], 0	 # MEM <unsigned long long> [(void *)this_11(D) + 80B],
 # source/simulation.cpp:8: 		m_w = w;
	vpinsrq	xmm1, xmm2, rax, 1	 # tmp332, tmp574, tmp331
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:100: 	: _M_start(), _M_finish(), _M_end_of_storage()
	mov	QWORD PTR 104[rcx], 0	 # MEM[(struct _Vector_impl_data *)this_11(D) + 88B]._M_end_of_storage,
 # source/simulation.cpp:8: 		m_w = w;
	vinserti128	ymm0, ymm0, xmm1, 0x1	 # tmp330, tmp333, tmp332
 # include/gl_setup.hpp:44:             m_ID = 0;
	mov	QWORD PTR 112[rcx], 0	 # MEM <unsigned long long> [(void *)this_11(D) + 112B],
 # source/simulation.cpp:8: 		m_w = w;
	vmovdqu	YMMWORD PTR [rcx], ymm0	 # MEM <vector(4) long long unsigned int> [(long long unsigned int *)this_11(D)], tmp330
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:100: 	: _M_start(), _M_finish(), _M_end_of_storage()
	vpxor	xmm0, xmm0, xmm0	 # tmp336
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:100: 	: _M_start(), _M_finish(), _M_end_of_storage()
	mov	QWORD PTR 136[rcx], 0	 # MEM[(struct _Vector_impl_data *)this_11(D) + 120B]._M_end_of_storage,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:100: 	: _M_start(), _M_finish(), _M_end_of_storage()
	vmovdqu	XMMWORD PTR 56[rcx], xmm0	 # MEM <vector(2) long long unsigned int> [(float * *)this_11(D) + 56B], tmp336
	vmovdqu	XMMWORD PTR 88[rcx], xmm0	 # MEM <vector(2) long long unsigned int> [(float * *)this_11(D) + 88B], tmp336
	vmovdqu	XMMWORD PTR 120[rcx], xmm0	 # MEM <vector(2) long long unsigned int> [(struct ShaderData * *)this_11(D) + 120B], tmp336
	vmovdqu	XMMWORD PTR 152[rcx], xmm0	 # MEM <vector(2) long long unsigned int> [(struct ColorPalette * *)this_11(D) + 152B], tmp336
	vmovdqu	XMMWORD PTR 184[rcx], xmm0	 # MEM <vector(2) long long unsigned int> [(struct BoundingBox * *)this_11(D) + 184B], tmp336
 # include/gl_setup.hpp:44:             m_ID = 0;
	mov	QWORD PTR 144[rcx], 0	 # MEM <unsigned long long> [(void *)this_11(D) + 144B],
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:100: 	: _M_start(), _M_finish(), _M_end_of_storage()
	mov	QWORD PTR 168[rcx], 0	 # MEM[(struct _Vector_impl_data *)this_11(D) + 152B]._M_end_of_storage,
 # include/gl_setup.hpp:44:             m_ID = 0;
	mov	QWORD PTR 176[rcx], 0	 # MEM <unsigned long long> [(void *)this_11(D) + 176B],
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:100: 	: _M_start(), _M_finish(), _M_end_of_storage()
	mov	QWORD PTR 200[rcx], 0	 # MEM[(struct _Vector_impl_data *)this_11(D) + 184B]._M_end_of_storage,
 # source/simulation.cpp:14: 		defaultShaderData = ShaderData { 0, 0, 0 };
	mov	QWORD PTR 208[rcx], 0	 # MEM <vector(2) unsigned int> [(unsigned int *)this_11(D) + 208B],
	mov	DWORD PTR 216[rcx], 0	 # *this_11(D).defaultShaderData.centerOfMassY,
 # source/simulation.cpp:15: 		m_shaderData = defaultShaderData;
	mov	QWORD PTR 220[rcx], 0	 # *this_11(D).m_shaderData,
	mov	DWORD PTR 228[rcx], 0	 # *this_11(D).m_shaderData,
 # include/gl_setup.hpp:50: 			glGenBuffers(1, &m_ID);
	mov	ecx, 1	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:100: 	: _M_start(), _M_finish(), _M_end_of_storage()
	vmovdqu	XMMWORD PTR 104[rsp], xmm0	 # MEM <vector(2) long long unsigned int> [(struct BoundingBox * *)_257], tmp336
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:100: 	: _M_start(), _M_finish(), _M_end_of_storage()
	mov	QWORD PTR 120[rsp], 0	 # MEM[(struct _Vector_impl_data *)_257]._M_end_of_storage,
 # include/gl_setup.hpp:50: 			glGenBuffers(1, &m_ID);
	vzeroupper
.LEHB0:
	call	[QWORD PTR [rdi]]	 # glad_glGenBuffers
.LEHE0:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:115: 	  _M_start = __x._M_start;
	mov	rcx, QWORD PTR 104[rsp]	 # _291, MEM[(const struct _Vector_impl_data &)_257]._M_start
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:115: 	  _M_start = __x._M_start;
	vpxor	xmm0, xmm0, xmm0	 # tmp348
 # include/gl_setup.hpp:51: 			m_binding = binding;
	mov	DWORD PTR 100[rsp], 6	 # MEM[(struct Buffer *)_257].m_binding,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:117: 	  _M_end_of_storage = __x._M_end_of_storage;
	mov	rdx, QWORD PTR 120[rsp]	 # _293, MEM[(const struct _Vector_impl_data &)_257]._M_end_of_storage
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:115: 	  _M_start = __x._M_start;
	vmovdqu	XMMWORD PTR 104[rsp], xmm0	 # MEM <vector(2) long long unsigned int> [(struct BoundingBox * *)_257], tmp348
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:117: 	  _M_end_of_storage = __x._M_end_of_storage;
	mov	QWORD PTR 120[rsp], 0	 # MEM[(struct _Vector_impl_data *)_257]._M_end_of_storage,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:386: 	if (__p)
	test	rcx, rcx	 # _291
	je	.L116	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	sub	rdx, rcx	 # tmp349, _291
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
 # include/gl_setup.hpp:38:     struct Buffer {
	mov	edx, DWORD PTR 100[rsp]	 # prephitmp_1054, MEM[(struct Buffer *)_257].m_binding
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:117: 	  _M_end_of_storage = __x._M_end_of_storage;
	mov	rcx, QWORD PTR 120[rsp]	 # _291, MEM[(const struct _Vector_impl_data &)_257]._M_end_of_storage
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:115: 	  _M_start = __x._M_start;
	vmovdqu	xmm0, XMMWORD PTR 104[rsp]	 # vect_pretmp_1055.935, MEM <vector(2) long long unsigned int> [(struct BoundingBox * *)_257]
.L24:
 # include/gl_setup.hpp:38:     struct Buffer {
	mov	eax, DWORD PTR 96[rsp]	 # MEM[(struct Buffer *)_257].m_ID, MEM[(struct Buffer *)_257].m_ID
	mov	DWORD PTR 180[rbx], edx	 # MEM[(struct Buffer *)this_11(D) + 176B].m_binding, prephitmp_1054
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:117: 	  _M_end_of_storage = __x._M_end_of_storage;
	mov	QWORD PTR 120[rsp], 0	 # MEM[(struct _Vector_impl_data *)_257]._M_end_of_storage,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:117: 	  _M_end_of_storage = __x._M_end_of_storage;
	mov	rdx, QWORD PTR 200[rbx]	 # _305, MEM[(const struct _Vector_impl_data &)this_11(D) + 184]._M_end_of_storage
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:117: 	  _M_end_of_storage = __x._M_end_of_storage;
	mov	QWORD PTR 200[rbx], rcx	 # MEM[(struct _Vector_impl_data *)this_11(D) + 184B]._M_end_of_storage, _291
 # include/gl_setup.hpp:38:     struct Buffer {
	mov	DWORD PTR 176[rbx], eax	 # MEM[(struct Buffer *)this_11(D) + 176B].m_ID, MEM[(struct Buffer *)_257].m_ID
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:115: 	  _M_start = __x._M_start;
	mov	rax, QWORD PTR 184[rbx]	 # _303, MEM[(const struct _Vector_impl_data &)this_11(D) + 184]._M_start
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:115: 	  _M_start = __x._M_start;
	vmovdqu	XMMWORD PTR 184[rbx], xmm0	 # MEM <vector(2) long long unsigned int> [(struct BoundingBox * *)this_11(D) + 184B], vect_pretmp_1055.935
	vpxor	xmm0, xmm0, xmm0	 # tmp352
	vmovdqu	XMMWORD PTR 104[rsp], xmm0	 # MEM <vector(2) long long unsigned int> [(struct BoundingBox * *)_257], tmp352
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:386: 	if (__p)
	test	rax, rax	 # _303
	je	.L26	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	sub	rdx, rax	 # tmp358, _303
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	rcx, rax	 #, _303
	call	_ZdlPvy	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rcx, QWORD PTR 104[rsp]	 # _48, MEM[(struct _Vector_base *)_257]._M_impl.D.118129._M_start
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rdx, QWORD PTR 120[rsp]	 # _45, MEM[(struct _Vector_base *)_257]._M_impl.D.118129._M_end_of_storage
	sub	rdx, rcx	 # _45, _48
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:386: 	if (__p)
	test	rcx, rcx	 # _48
	je	.L26	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L26:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:100: 	: _M_start(), _M_finish(), _M_end_of_storage()
	vpxor	xmm0, xmm0, xmm0	 # tmp360
 # include/gl_setup.hpp:50: 			glGenBuffers(1, &m_ID);
	mov	rdx, r12	 #, tmp559
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:100: 	: _M_start(), _M_finish(), _M_end_of_storage()
	vmovdqu	XMMWORD PTR 104[rsp], xmm0	 # MEM <vector(2) long long unsigned int> [(struct ShaderData * *)_257], tmp360
 # include/gl_setup.hpp:50: 			glGenBuffers(1, &m_ID);
	mov	ecx, 1	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:100: 	: _M_start(), _M_finish(), _M_end_of_storage()
	mov	QWORD PTR 120[rsp], 0	 # MEM[(struct _Vector_impl_data *)_257]._M_end_of_storage,
.LEHB1:
 # include/gl_setup.hpp:50: 			glGenBuffers(1, &m_ID);
	call	[QWORD PTR [rdi]]	 # glad_glGenBuffers
.LEHE1:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:115: 	  _M_start = __x._M_start;
	mov	rcx, QWORD PTR 104[rsp]	 # _335, MEM[(const struct _Vector_impl_data &)_257]._M_start
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:115: 	  _M_start = __x._M_start;
	vpxor	xmm0, xmm0, xmm0	 # tmp364
 # include/gl_setup.hpp:51: 			m_binding = binding;
	mov	DWORD PTR 100[rsp], 4	 # MEM[(struct Buffer *)_257].m_binding,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:117: 	  _M_end_of_storage = __x._M_end_of_storage;
	mov	rdx, QWORD PTR 120[rsp]	 # _337, MEM[(const struct _Vector_impl_data &)_257]._M_end_of_storage
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:115: 	  _M_start = __x._M_start;
	vmovdqu	XMMWORD PTR 104[rsp], xmm0	 # MEM <vector(2) long long unsigned int> [(struct ShaderData * *)_257], tmp364
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:117: 	  _M_end_of_storage = __x._M_end_of_storage;
	mov	QWORD PTR 120[rsp], 0	 # MEM[(struct _Vector_impl_data *)_257]._M_end_of_storage,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:386: 	if (__p)
	test	rcx, rcx	 # _335
	je	.L226	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	sub	rdx, rcx	 # tmp366, _335
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:990:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	mov	rax, QWORD PTR 112[rsp]	 # __first, MEM[(const struct vector *)_257].D.116668._M_impl.D.116007._M_finish
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:990:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	mov	rbp, QWORD PTR 104[rsp]	 # prephitmp_74, MEM[(const struct vector *)_257].D.116668._M_impl.D.116007._M_start
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:1012: 	if (__new_size > size())
	mov	rdx, rax	 # _349, __first
	sub	rdx, rbp	 # _349, prephitmp_74
	je	.L227	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:1014: 	else if (__new_size < size())
	cmp	rdx, 12	 # _349,
	jne	.L42	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:117: 	  _M_end_of_storage = __x._M_end_of_storage;
	mov	r8, QWORD PTR 120[rsp]	 # pretmp_418, MEM[(const struct _Vector_impl_data &)_257]._M_end_of_storage
.L38:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:115: 	  _M_start = __x._M_start;
	mov	rcx, QWORD PTR 120[rbx]	 # _417, MEM[(const struct _Vector_impl_data &)this_11(D) + 120]._M_start
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:115: 	  _M_start = __x._M_start;
	vmovq	xmm4, rbp	 # prephitmp_74, prephitmp_74
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:117: 	  _M_end_of_storage = __x._M_end_of_storage;
	mov	QWORD PTR 120[rsp], 0	 # MEM[(struct _Vector_impl_data *)_257]._M_end_of_storage,
 # include/gl_setup.hpp:38:     struct Buffer {
	mov	rdx, QWORD PTR 96[rsp]	 # MEM <unsigned long long> [(void *)_257], MEM <unsigned long long> [(void *)_257]
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:115: 	  _M_start = __x._M_start;
	vpinsrq	xmm0, xmm4, rax, 1	 # tmp376, prephitmp_74, __first
	vmovdqu	XMMWORD PTR 120[rbx], xmm0	 # MEM <vector(2) long long unsigned int> [(struct ShaderData * *)this_11(D) + 120B], tmp376
	vpxor	xmm0, xmm0, xmm0	 # tmp377
	vmovdqu	XMMWORD PTR 104[rsp], xmm0	 # MEM <vector(2) long long unsigned int> [(struct ShaderData * *)_257], tmp377
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:386: 	if (__p)
	test	rcx, rcx	 # _417
 # include/gl_setup.hpp:38:     struct Buffer {
	mov	QWORD PTR 112[rbx], rdx	 # MEM <unsigned long long> [(void *)this_11(D) + 112B], MEM <unsigned long long> [(void *)_257]
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:117: 	  _M_end_of_storage = __x._M_end_of_storage;
	mov	rdx, QWORD PTR 136[rbx]	 # _419, MEM[(const struct _Vector_impl_data &)this_11(D) + 120]._M_end_of_storage
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:117: 	  _M_end_of_storage = __x._M_end_of_storage;
	mov	QWORD PTR 136[rbx], r8	 # MEM[(struct _Vector_impl_data *)this_11(D) + 120B]._M_end_of_storage, pretmp_418
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:386: 	if (__p)
	je	.L45	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	sub	rdx, rcx	 # tmp381, _417
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rcx, QWORD PTR 104[rsp]	 # _68, MEM[(struct _Vector_base *)_257]._M_impl.D.116007._M_start
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rdx, QWORD PTR 120[rsp]	 # _69, MEM[(struct _Vector_base *)_257]._M_impl.D.116007._M_end_of_storage
	sub	rdx, rcx	 # _69, _68
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:386: 	if (__p)
	test	rcx, rcx	 # _68
	je	.L45	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L45:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:100: 	: _M_start(), _M_finish(), _M_end_of_storage()
	vpxor	xmm0, xmm0, xmm0	 # tmp383
 # source/simulation.cpp:18: 		m_readBuffer = Buffer<f32>(BufferBinding::READ, m_size);
	mov	r13, QWORD PTR 24[rbx]	 # _7, *this_11(D).m_size
 # include/gl_setup.hpp:50: 			glGenBuffers(1, &m_ID);
	mov	rdx, r12	 #, tmp559
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:100: 	: _M_start(), _M_finish(), _M_end_of_storage()
	vmovdqu	XMMWORD PTR 104[rsp], xmm0	 # MEM <vector(2) long long unsigned int> [(float * *)_257], tmp383
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:100: 	: _M_start(), _M_finish(), _M_end_of_storage()
	mov	QWORD PTR 120[rsp], 0	 # MEM[(struct _Vector_impl_data *)_257]._M_end_of_storage,
 # include/gl_setup.hpp:50: 			glGenBuffers(1, &m_ID);
	mov	ecx, 1	 #,
.LEHB2:
	call	[QWORD PTR [rdi]]	 # glad_glGenBuffers
.LEHE2:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:115: 	  _M_start = __x._M_start;
	mov	rbp, QWORD PTR 104[rsp]	 # _462, MEM[(const struct _Vector_impl_data &)_257]._M_start
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:117: 	  _M_end_of_storage = __x._M_end_of_storage;
	xor	eax, eax	 # pretmp_1200
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:115: 	  _M_start = __x._M_start;
	vpxor	xmm0, xmm0, xmm0	 # tmp387
 # include/gl_setup.hpp:51: 			m_binding = binding;
	mov	DWORD PTR 100[rsp], 2	 # MEM[(struct Buffer *)_257].m_binding,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:117: 	  _M_end_of_storage = __x._M_end_of_storage;
	mov	rdx, QWORD PTR 120[rsp]	 # _451, MEM[(const struct _Vector_impl_data &)_257]._M_end_of_storage
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:115: 	  _M_start = __x._M_start;
	vmovdqu	XMMWORD PTR 104[rsp], xmm0	 # MEM <vector(2) long long unsigned int> [(float * *)_257], tmp387
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:117: 	  _M_end_of_storage = __x._M_end_of_storage;
	mov	QWORD PTR 120[rsp], 0	 # MEM[(struct _Vector_impl_data *)_257]._M_end_of_storage,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:386: 	if (__p)
	test	rbp, rbp	 # _462
	je	.L49	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	sub	rdx, rbp	 # tmp388, _462
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	rcx, rbp	 #, _462
	call	_ZdlPvy	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:990:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	mov	rdx, QWORD PTR 112[rsp]	 # _461, MEM[(const struct vector *)_257].D.115405._M_impl.D.114711._M_finish
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:990:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	mov	rbp, QWORD PTR 104[rsp]	 # _462, MEM[(const struct vector *)_257].D.115405._M_impl.D.114711._M_start
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:990:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	mov	r14, rdx	 # _463, _461
	sub	r14, rbp	 # _463, _462
	mov	rax, r14	 # tmp389, _463
	sar	rax, 2	 # tmp389,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:1012: 	if (__new_size > size())
	cmp	rax, r13	 # tmp389, _7
	jb	.L228	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:1014: 	else if (__new_size < size())
	cmp	r13, rax	 # _7, tmp389
	jnb	.L229	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:117: 	  _M_end_of_storage = __x._M_end_of_storage;
	mov	r9, QWORD PTR 120[rsp]	 # prephitmp_433, MEM[(const struct _Vector_impl_data &)_257]._M_end_of_storage
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:1015: 	  _M_erase_at_end(this->_M_impl._M_start + __new_size);
	lea	rcx, 0[rbp+r13*4]	 # __first,
.L56:
 # include/gl_setup.hpp:38:     struct Buffer {
	mov	rax, QWORD PTR 96[rsp]	 # MEM <unsigned long long> [(void *)_257], MEM <unsigned long long> [(void *)_257]
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:115: 	  _M_start = __x._M_start;
	vmovq	xmm5, rbp	 # _462, _462
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:117: 	  _M_end_of_storage = __x._M_end_of_storage;
	mov	QWORD PTR 120[rsp], 0	 # MEM[(struct _Vector_impl_data *)_257]._M_end_of_storage,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:115: 	  _M_start = __x._M_start;
	vpinsrq	xmm0, xmm5, rcx, 1	 # tmp424, _462, __first
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:117: 	  _M_end_of_storage = __x._M_end_of_storage;
	mov	rdx, QWORD PTR 72[rbx]	 # _533, MEM[(const struct _Vector_impl_data &)this_11(D) + 56]._M_end_of_storage
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:117: 	  _M_end_of_storage = __x._M_end_of_storage;
	mov	QWORD PTR 72[rbx], r9	 # MEM[(struct _Vector_impl_data *)this_11(D) + 56B]._M_end_of_storage, prephitmp_433
 # include/gl_setup.hpp:38:     struct Buffer {
	mov	QWORD PTR 48[rbx], rax	 # MEM <unsigned long long> [(void *)this_11(D) + 48B], MEM <unsigned long long> [(void *)_257]
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:115: 	  _M_start = __x._M_start;
	mov	rax, QWORD PTR 56[rbx]	 # _531, MEM[(const struct _Vector_impl_data &)this_11(D) + 56]._M_start
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:115: 	  _M_start = __x._M_start;
	vmovdqu	XMMWORD PTR 56[rbx], xmm0	 # MEM <vector(2) long long unsigned int> [(float * *)this_11(D) + 56B], tmp424
	vpxor	xmm0, xmm0, xmm0	 # tmp425
	vmovdqu	XMMWORD PTR 104[rsp], xmm0	 # MEM <vector(2) long long unsigned int> [(float * *)_257], tmp425
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:386: 	if (__p)
	test	rax, rax	 # _531
	je	.L68	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	sub	rdx, rax	 # tmp429, _531
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	rcx, rax	 #, _531
	call	_ZdlPvy	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rcx, QWORD PTR 104[rsp]	 # _76, MEM[(struct _Vector_base *)_257]._M_impl.D.114711._M_start
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rdx, QWORD PTR 120[rsp]	 # _77, MEM[(struct _Vector_base *)_257]._M_impl.D.114711._M_end_of_storage
	sub	rdx, rcx	 # _77, _76
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:386: 	if (__p)
	test	rcx, rcx	 # _76
	je	.L68	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L68:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:100: 	: _M_start(), _M_finish(), _M_end_of_storage()
	vpxor	xmm0, xmm0, xmm0	 # tmp431
 # source/simulation.cpp:19: 		m_writeBuffer = Buffer<f32>(BufferBinding::WRITE, m_size);
	mov	r13, QWORD PTR 24[rbx]	 # _8, *this_11(D).m_size
 # include/gl_setup.hpp:50: 			glGenBuffers(1, &m_ID);
	mov	rdx, r12	 #, tmp559
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:100: 	: _M_start(), _M_finish(), _M_end_of_storage()
	vmovdqu	XMMWORD PTR 104[rsp], xmm0	 # MEM <vector(2) long long unsigned int> [(float * *)_257], tmp431
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:100: 	: _M_start(), _M_finish(), _M_end_of_storage()
	mov	QWORD PTR 120[rsp], 0	 # MEM[(struct _Vector_impl_data *)_257]._M_end_of_storage,
 # include/gl_setup.hpp:50: 			glGenBuffers(1, &m_ID);
	mov	ecx, 1	 #,
.LEHB3:
	call	[QWORD PTR [rdi]]	 # glad_glGenBuffers
.LEHE3:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:115: 	  _M_start = __x._M_start;
	mov	rbp, QWORD PTR 104[rsp]	 # _563, MEM[(const struct _Vector_impl_data &)_257]._M_start
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:117: 	  _M_end_of_storage = __x._M_end_of_storage;
	xor	eax, eax	 # pretmp_1200
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:115: 	  _M_start = __x._M_start;
	vpxor	xmm0, xmm0, xmm0	 # tmp435
 # include/gl_setup.hpp:51: 			m_binding = binding;
	mov	DWORD PTR 100[rsp], 1	 # MEM[(struct Buffer *)_257].m_binding,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:117: 	  _M_end_of_storage = __x._M_end_of_storage;
	mov	rdx, QWORD PTR 120[rsp]	 # _565, MEM[(const struct _Vector_impl_data &)_257]._M_end_of_storage
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:115: 	  _M_start = __x._M_start;
	vmovdqu	XMMWORD PTR 104[rsp], xmm0	 # MEM <vector(2) long long unsigned int> [(float * *)_257], tmp435
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:117: 	  _M_end_of_storage = __x._M_end_of_storage;
	mov	QWORD PTR 120[rsp], 0	 # MEM[(struct _Vector_impl_data *)_257]._M_end_of_storage,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:386: 	if (__p)
	test	rbp, rbp	 # _563
	je	.L72	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	sub	rdx, rbp	 # tmp436, _563
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	rcx, rbp	 #, _563
	call	_ZdlPvy	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:990:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	mov	rdx, QWORD PTR 112[rsp]	 # _575, MEM[(const struct vector *)_257].D.115405._M_impl.D.114711._M_finish
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:990:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	mov	rbp, QWORD PTR 104[rsp]	 # _563, MEM[(const struct vector *)_257].D.115405._M_impl.D.114711._M_start
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:990:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	mov	r12, rdx	 # _577, _575
	sub	r12, rbp	 # _577, _563
	mov	rax, r12	 # tmp437, _577
	sar	rax, 2	 # tmp437,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:1012: 	if (__new_size > size())
	cmp	rax, r13	 # tmp437, _8
	jb	.L230	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:1014: 	else if (__new_size < size())
	cmp	r13, rax	 # _8, tmp437
	jnb	.L231	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:117: 	  _M_end_of_storage = __x._M_end_of_storage;
	mov	r9, QWORD PTR 120[rsp]	 # pretmp_1200, MEM[(const struct _Vector_impl_data &)_257]._M_end_of_storage
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:1015: 	  _M_erase_at_end(this->_M_impl._M_start + __new_size);
	lea	rcx, 0[rbp+r13*4]	 # __first,
.L79:
 # include/gl_setup.hpp:38:     struct Buffer {
	mov	rax, QWORD PTR 96[rsp]	 # MEM <unsigned long long> [(void *)_257], MEM <unsigned long long> [(void *)_257]
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:115: 	  _M_start = __x._M_start;
	vmovq	xmm5, rbp	 # _563, _563
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:117: 	  _M_end_of_storage = __x._M_end_of_storage;
	mov	QWORD PTR 120[rsp], 0	 # MEM[(struct _Vector_impl_data *)_257]._M_end_of_storage,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:115: 	  _M_start = __x._M_start;
	vpinsrq	xmm0, xmm5, rcx, 1	 # tmp472, _563, __first
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:117: 	  _M_end_of_storage = __x._M_end_of_storage;
	mov	rdx, QWORD PTR 104[rbx]	 # _647, MEM[(const struct _Vector_impl_data &)this_11(D) + 88]._M_end_of_storage
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:117: 	  _M_end_of_storage = __x._M_end_of_storage;
	mov	QWORD PTR 104[rbx], r9	 # MEM[(struct _Vector_impl_data *)this_11(D) + 88B]._M_end_of_storage, pretmp_1200
 # include/gl_setup.hpp:38:     struct Buffer {
	mov	QWORD PTR 80[rbx], rax	 # MEM <unsigned long long> [(void *)this_11(D) + 80B], MEM <unsigned long long> [(void *)_257]
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:115: 	  _M_start = __x._M_start;
	mov	rax, QWORD PTR 88[rbx]	 # _645, MEM[(const struct _Vector_impl_data &)this_11(D) + 88]._M_start
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:115: 	  _M_start = __x._M_start;
	vmovdqu	XMMWORD PTR 88[rbx], xmm0	 # MEM <vector(2) long long unsigned int> [(float * *)this_11(D) + 88B], tmp472
	vpxor	xmm0, xmm0, xmm0	 # tmp473
	vmovdqu	XMMWORD PTR 104[rsp], xmm0	 # MEM <vector(2) long long unsigned int> [(float * *)_257], tmp473
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:386: 	if (__p)
	test	rax, rax	 # _645
	je	.L91	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	sub	rdx, rax	 # tmp477, _645
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	rcx, rax	 #, _645
	call	_ZdlPvy	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rcx, QWORD PTR 104[rsp]	 # _84, MEM[(struct _Vector_base *)_257]._M_impl.D.114711._M_start
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rdx, QWORD PTR 120[rsp]	 # _85, MEM[(struct _Vector_base *)_257]._M_impl.D.114711._M_end_of_storage
	sub	rdx, rcx	 # _85, _84
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:386: 	if (__p)
	test	rcx, rcx	 # _84
	je	.L91	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L91:
 # source/simulation.cpp:20: 		m_colorBuffer = Buffer<ColorPalette>(BufferBinding::COLOR, std::vector<ColorPalette> {colorPalette});
	vmovdqu64	zmm4, ZMMWORD PTR [rsi]	 # tmp631, *colorPalette_41(D)
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	ecx, 272	 #,
 # source/simulation.cpp:20: 		m_colorBuffer = Buffer<ColorPalette>(BufferBinding::COLOR, std::vector<ColorPalette> {colorPalette});
	vmovdqu64	zmm1, ZMMWORD PTR 64[rsi]	 # tmp632, *colorPalette_41(D)
	vmovdqu64	zmm2, ZMMWORD PTR 128[rsi]	 # tmp633, *colorPalette_41(D)
	vmovdqu64	ZMMWORD PTR 96[rsp], zmm4	 # MEM[(struct ColorPalette[1] *)_257][0], tmp631
	vmovdqu64	zmm3, ZMMWORD PTR 192[rsi]	 # tmp634, *colorPalette_41(D)
	vmovdqu64	ZMMWORD PTR 160[rsp], zmm1	 # MEM[(struct ColorPalette[1] *)_257][0], tmp632
	vmovdqa	xmm5, XMMWORD PTR 256[rsi]	 # tmp635, *colorPalette_41(D)
	vmovdqu64	ZMMWORD PTR 224[rsp], zmm2	 # MEM[(struct ColorPalette[1] *)_257][0], tmp633
	vmovdqu64	ZMMWORD PTR 288[rsp], zmm3	 # MEM[(struct ColorPalette[1] *)_257][0], tmp634
	vmovdqa	XMMWORD PTR 352[rsp], xmm5	 # MEM[(struct ColorPalette[1] *)_257][0], tmp635
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	vzeroupper
.LEHB4:
	call	_Znwy	 #
.LEHE4:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	vmovdqu64	zmm4, ZMMWORD PTR 96[rsp]	 # tmp636, MEM[(const struct ColorPalette &)_257]
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	rbp, rax	 # _679, tmp586
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:100: 	: _M_start(), _M_finish(), _M_end_of_storage()
	vpxor	xmm0, xmm0, xmm0	 # tmp490
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:100: 	: _M_start(), _M_finish(), _M_end_of_storage()
	mov	QWORD PTR 88[rsp], 0	 # MEM[(struct _Vector_impl_data *)&D.134683 + 8B]._M_end_of_storage,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	vmovdqu64	zmm1, ZMMWORD PTR 160[rsp]	 # tmp637, MEM[(const struct ColorPalette &)_257]
 # include/gl_setup.hpp:60:             glGenBuffers(1, &m_ID);
	lea	rdx, 64[rsp]	 # tmp491,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:100: 	: _M_start(), _M_finish(), _M_end_of_storage()
	vmovdqu	XMMWORD PTR 72[rsp], xmm0	 # MEM <vector(2) long long unsigned int> [(struct ColorPalette * *)&D.134683 + 8B], tmp490
 # include/gl_setup.hpp:60:             glGenBuffers(1, &m_ID);
	mov	ecx, 1	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	vmovdqu64	zmm2, ZMMWORD PTR 224[rsp]	 # tmp638, MEM[(const struct ColorPalette &)_257]
	vmovdqu64	ZMMWORD PTR [rax], zmm4	 # *_679, tmp636
	vmovdqu64	zmm3, ZMMWORD PTR 288[rsp]	 # tmp639, MEM[(const struct ColorPalette &)_257]
	vmovdqu64	ZMMWORD PTR 64[rax], zmm1	 # *_679, tmp637
	vmovdqa	xmm5, XMMWORD PTR 352[rsp]	 # tmp640, MEM[(const struct ColorPalette &)_257]
	vmovdqu64	ZMMWORD PTR 128[rax], zmm2	 # *_679, tmp638
	vmovdqu64	ZMMWORD PTR 192[rax], zmm3	 # *_679, tmp639
	vmovdqa	XMMWORD PTR 256[rax], xmm5	 # *_679, tmp640
 # include/gl_setup.hpp:60:             glGenBuffers(1, &m_ID);
	vzeroupper
.LEHB5:
	call	[QWORD PTR [rdi]]	 # glad_glGenBuffers
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:1077: 			 - this->_M_impl._M_start); }
	mov	rax, QWORD PTR 72[rsp]	 # _714, MEM[(const struct vector *)&D.134683 + 8B].D.117729._M_impl.D.117068._M_start
 # include/gl_setup.hpp:61:             m_binding = binding;
	mov	DWORD PTR 68[rsp], 5	 # D.134683.m_binding,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:1077: 			 - this->_M_impl._M_start); }
	mov	rdx, QWORD PTR 88[rsp]	 # tmp494, MEM[(const struct vector *)&D.134683 + 8B].D.117729._M_impl.D.117068._M_end_of_storage
	sub	rdx, rax	 # tmp494, _714
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:236: 	  if (__xlen > capacity())
	cmp	rdx, 271	 # tmp494,
	jbe	.L232	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:990:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	mov	rcx, QWORD PTR 80[rsp]	 # _726, MEM[(const struct vector *)&D.134683 + 8B].D.117729._M_impl.D.117068._M_finish
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:990:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	mov	rdx, rcx	 # _727, _726
	sub	rdx, rax	 # _727, _714
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:248: 	  else if (size() >= __xlen)
	cmp	rdx, 271	 # _727,
	jbe	.L98	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	vmovdqu64	zmm2, ZMMWORD PTR 0[rbp]	 # tmp649, MEM[(const struct ColorPalette &)_679]
	vmovdqu64	ZMMWORD PTR [rax], zmm2	 # *_714, tmp649
	vmovdqu64	zmm3, ZMMWORD PTR 64[rbp]	 # tmp650, MEM[(const struct ColorPalette &)_679]
	vmovdqu64	ZMMWORD PTR 64[rax], zmm3	 # *_714, tmp650
	vmovdqu64	zmm5, ZMMWORD PTR 128[rbp]	 # tmp651, MEM[(const struct ColorPalette &)_679]
	vmovdqu64	ZMMWORD PTR 128[rax], zmm5	 # *_714, tmp651
	vmovdqu64	zmm2, ZMMWORD PTR 192[rbp]	 # tmp652, MEM[(const struct ColorPalette &)_679]
	vmovdqu64	ZMMWORD PTR 192[rax], zmm2	 # *_714, tmp652
	vmovdqa	xmm3, XMMWORD PTR 256[rbp]	 # tmp653, MEM[(const struct ColorPalette &)_679]
	vmovdqa	XMMWORD PTR 256[rax], xmm3	 # *_714, tmp653
	vzeroupper
.L99:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:262: 	  this->_M_impl._M_finish = this->_M_impl._M_start + __xlen;
	add	rax, 272	 # prephitmp_546,
.L97:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:262: 	  this->_M_impl._M_finish = this->_M_impl._M_start + __xlen;
	mov	QWORD PTR 80[rsp], rax	 # MEM[(struct vector *)&D.134683 + 8B].D.117729._M_impl.D.117068._M_finish, prephitmp_546
 # include/gl_setup.hpp:63:             glBindBuffer(GL_SHADER_STORAGE_BUFFER, m_ID);
	mov	edx, DWORD PTR 64[rsp]	 #, D.134683.m_ID
	mov	ecx, 37074	 #,
	mov	rax, QWORD PTR .refptr.glad_glBindBuffer[rip]	 # tmp515,
	call	[QWORD PTR [rax]]	 # glad_glBindBuffer
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:1126: 	return *(this->_M_impl._M_start + __n);
	mov	r8, QWORD PTR 72[rsp]	 # _694, MEM[(struct vector *)&D.134683 + 8B].D.117729._M_impl.D.117068._M_start
 # include/gl_setup.hpp:64:             glBufferData(GL_SHADER_STORAGE_BUFFER, m_data.size(), &m_data[0], GL_DYNAMIC_COPY);
	mov	r9d, 35050	 #,
	mov	ecx, 37074	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:990:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	movabs	rax, -1085102592571150095	 # tmp522,
	mov	rdx, QWORD PTR 80[rsp]	 # tmp517, MEM[(const struct vector *)&D.134683 + 8B].D.117729._M_impl.D.117068._M_finish
	sub	rdx, r8	 # tmp517, _694
	sar	rdx, 4	 # tmp520,
	imul	rdx, rax	 # tmp521, tmp522
 # include/gl_setup.hpp:64:             glBufferData(GL_SHADER_STORAGE_BUFFER, m_data.size(), &m_data[0], GL_DYNAMIC_COPY);
	mov	rax, QWORD PTR .refptr.glad_glBufferData[rip]	 # tmp523,
	call	[QWORD PTR [rax]]	 # glad_glBufferData
 # include/gl_setup.hpp:65:             glBindBufferBase(GL_SHADER_STORAGE_BUFFER, (u8)binding, m_ID);
	mov	r8d, DWORD PTR 64[rsp]	 #, D.134683.m_ID
	mov	edx, 5	 #,
	mov	ecx, 37074	 #,
	mov	rax, QWORD PTR .refptr.glad_glBindBufferBase[rip]	 # tmp526,
	call	[QWORD PTR [rax]]	 # glad_glBindBufferBase
.LEHE5:
 # include/gl_setup.hpp:38:     struct Buffer {
	mov	rax, QWORD PTR 64[rsp]	 # MEM <unsigned long long> [(void *)&D.134683], MEM <unsigned long long> [(void *)&D.134683]
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:115: 	  _M_start = __x._M_start;
	vpxor	xmm0, xmm0, xmm0	 # tmp535
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:115: 	  _M_start = __x._M_start;
	mov	rcx, QWORD PTR 152[rbx]	 # _778, MEM[(const struct _Vector_impl_data &)this_11(D) + 152]._M_start
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:115: 	  _M_start = __x._M_start;
	vmovdqu	xmm4, XMMWORD PTR 72[rsp]	 # tmp661, MEM <vector(2) long long unsigned int> [(struct ColorPalette * *)&D.134683 + 8B]
	vmovdqu	XMMWORD PTR 72[rsp], xmm0	 # MEM <vector(2) long long unsigned int> [(struct ColorPalette * *)&D.134683 + 8B], tmp535
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:117: 	  _M_end_of_storage = __x._M_end_of_storage;
	mov	rdx, QWORD PTR 168[rbx]	 # _780, MEM[(const struct _Vector_impl_data &)this_11(D) + 152]._M_end_of_storage
 # include/gl_setup.hpp:38:     struct Buffer {
	mov	QWORD PTR 144[rbx], rax	 # MEM <unsigned long long> [(void *)this_11(D) + 144B], MEM <unsigned long long> [(void *)&D.134683]
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:117: 	  _M_end_of_storage = __x._M_end_of_storage;
	mov	rax, QWORD PTR 88[rsp]	 # _783, MEM[(const struct _Vector_impl_data &)&D.134683 + 8]._M_end_of_storage
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:115: 	  _M_start = __x._M_start;
	vmovdqu	XMMWORD PTR 152[rbx], xmm4	 # MEM <vector(2) long long unsigned int> [(struct ColorPalette * *)this_11(D) + 152B], tmp661
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:386: 	if (__p)
	test	rcx, rcx	 # _778
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:117: 	  _M_end_of_storage = __x._M_end_of_storage;
	mov	QWORD PTR 88[rsp], 0	 # MEM[(struct _Vector_impl_data *)&D.134683 + 8B]._M_end_of_storage,
	mov	QWORD PTR 168[rbx], rax	 # MEM[(struct _Vector_impl_data *)this_11(D) + 152B]._M_end_of_storage, _783
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:386: 	if (__p)
	je	.L104	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	sub	rdx, rcx	 # tmp536, _778
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rcx, QWORD PTR 72[rsp]	 # _97, MEM[(struct _Vector_base *)&D.134683 + 8B]._M_impl.D.117068._M_start
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rdx, QWORD PTR 88[rsp]	 # _98, MEM[(struct _Vector_base *)&D.134683 + 8B]._M_impl.D.117068._M_end_of_storage
	sub	rdx, rcx	 # _98, _97
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:386: 	if (__p)
	test	rcx, rcx	 # _97
	je	.L104	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L104:
	mov	edx, 272	 #,
	mov	rcx, rbp	 #, _679
	call	_ZdlPvy	 #
 # source/simulation.cpp:66: 		m_colorBuffer.m_data[0] = colorPalette;
	mov	rax, QWORD PTR 152[rbx]	 # MEM[(struct vector *)this_11(D) + 152B].D.117729._M_impl.D.117068._M_start, MEM[(struct vector *)this_11(D) + 152B].D.117729._M_impl.D.117068._M_start
	vmovdqu64	zmm1, ZMMWORD PTR [rsi]	 # tmp663, *colorPalette_41(D)
	vmovdqu64	ZMMWORD PTR [rax], zmm1	 # MEM[(struct value_type *)_104], tmp663
	vmovdqu64	zmm2, ZMMWORD PTR 64[rsi]	 # tmp664, *colorPalette_41(D)
	vmovdqu64	ZMMWORD PTR 64[rax], zmm2	 # MEM[(struct value_type *)_104], tmp664
	vmovdqu64	zmm3, ZMMWORD PTR 128[rsi]	 # tmp665, *colorPalette_41(D)
	vmovdqu64	ZMMWORD PTR 128[rax], zmm3	 # MEM[(struct value_type *)_104], tmp665
	vmovdqu64	zmm4, ZMMWORD PTR 192[rsi]	 # tmp666, *colorPalette_41(D)
	vmovdqu64	ZMMWORD PTR 192[rax], zmm4	 # MEM[(struct value_type *)_104], tmp666
	vmovdqa	xmm1, XMMWORD PTR 256[rsi]	 # tmp667, *colorPalette_41(D)
	vmovdqa	XMMWORD PTR 256[rax], xmm1	 # MEM[(struct value_type *)_104], tmp667
	vzeroupper
 # source/simulation.cpp:22: 	}
	add	rsp, 376	 #,
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
.L42:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:1015: 	  _M_erase_at_end(this->_M_impl._M_start + __new_size);
	lea	rdx, 12[rbp]	 # _354,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:117: 	  _M_end_of_storage = __x._M_end_of_storage;
	mov	r8, QWORD PTR 120[rsp]	 # pretmp_418, MEM[(const struct _Vector_impl_data &)_257]._M_end_of_storage
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:1932: 	if (size_type __n = this->_M_impl._M_finish - __pos)
	cmp	rax, rdx	 # __first, _354
	je	.L38	 #,
	mov	rax, rdx	 # __first, _354
	jmp	.L38	 #
	.p2align 4,,10
	.p2align 3
.L116:
	mov	edx, 6	 # prephitmp_1054,
	vpxor	xmm0, xmm0, xmm0	 # vect_pretmp_1055.935
	jmp	.L24	 #
	.p2align 4,,10
	.p2align 3
.L49:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:990:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	xor	ecx, ecx	 # __first
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:1012: 	if (__new_size > size())
	test	r13, r13	 # _7
	jne	.L233	 #,
.L113:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:117: 	  _M_end_of_storage = __x._M_end_of_storage;
	mov	r9, rax	 # prephitmp_433, pretmp_1200
	jmp	.L56	 #
	.p2align 4,,10
	.p2align 3
.L72:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:990:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	xor	ecx, ecx	 # __first
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:1012: 	if (__new_size > size())
	test	r13, r13	 # _8
	jne	.L234	 #,
.L111:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:117: 	  _M_end_of_storage = __x._M_end_of_storage;
	mov	r9, rax	 # pretmp_1200, pretmp_1200
	jmp	.L79	 #
	.p2align 4,,10
	.p2align 3
.L226:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	ecx, 12	 #,
.LEHB6:
	call	_Znwy	 #
.LEHE6:
	mov	rbp, rax	 # prephitmp_74, tmp576
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_construct.h:119:       ::new((void*)__p) _Tp(std::forward<_Args>(__args)...);
	mov	QWORD PTR [rax], 0	 # MEM <vector(2) unsigned int> [(unsigned int *)_945],
	mov	DWORD PTR 8[rax], 0	 # *_945.centerOfMassY,
.L39:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:706: 	      this->_M_impl._M_finish = __new_start + __size + __n;
	lea	rax, 12[rbp]	 # __first,
	mov	r8, rax	 # pretmp_418, __first
	jmp	.L38	 #
	.p2align 4,,10
	.p2align 3
.L98:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:438: 	  else if (_Num == 1)
	test	rdx, rdx	 # _727
	jne	.L99	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	vmovdqu64	zmm3, ZMMWORD PTR 0[rbp]	 # tmp654, MEM[(const struct ColorPalette &)_679]
	vmovdqu64	ZMMWORD PTR [rcx], zmm3	 # *_726, tmp654
	vmovdqu64	zmm3, ZMMWORD PTR 64[rbp]	 # tmp655, MEM[(const struct ColorPalette &)_679]
	vmovdqu64	ZMMWORD PTR 64[rcx], zmm3	 # *_726, tmp655
	vmovdqu64	zmm3, ZMMWORD PTR 128[rbp]	 # tmp656, MEM[(const struct ColorPalette &)_679]
	vmovdqu64	ZMMWORD PTR 128[rcx], zmm3	 # *_726, tmp656
	vmovdqu64	zmm3, ZMMWORD PTR 192[rbp]	 # tmp657, MEM[(const struct ColorPalette &)_679]
	vmovdqu64	ZMMWORD PTR 192[rcx], zmm3	 # *_726, tmp657
	vmovdqa	xmm3, XMMWORD PTR 256[rbp]	 # tmp658, MEM[(const struct ColorPalette &)_679]
	vmovdqa	XMMWORD PTR 256[rcx], xmm3	 # *_726, tmp658
	vzeroupper
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	jmp	.L99	 #
	.p2align 4,,10
	.p2align 3
.L232:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	ecx, 272	 #,
.LEHB7:
	call	_Znwy	 #
.LEHE7:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:244: 			    - this->_M_impl._M_start);
	mov	rcx, QWORD PTR 72[rsp]	 # _720, MEM[(struct vector *)&D.134683 + 8B].D.117729._M_impl.D.117068._M_start
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	rdi, rax	 # _747, tmp587
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	vmovdqu64	zmm5, ZMMWORD PTR 0[rbp]	 # tmp642, MEM[(const struct ColorPalette &)_679]
	vmovdqu64	zmm2, ZMMWORD PTR 64[rbp]	 # tmp643, MEM[(const struct ColorPalette &)_679]
	vmovdqu64	zmm3, ZMMWORD PTR 128[rbp]	 # tmp644, MEM[(const struct ColorPalette &)_679]
	vmovdqu64	ZMMWORD PTR [rax], zmm5	 # *_747, tmp642
	vmovdqu64	ZMMWORD PTR 64[rax], zmm2	 # *_747, tmp643
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:386: 	if (__p)
	test	rcx, rcx	 # _720
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	vmovdqu64	zmm5, ZMMWORD PTR 192[rbp]	 # tmp645, MEM[(const struct ColorPalette &)_679]
	vmovdqa	xmm2, XMMWORD PTR 256[rbp]	 # tmp646, MEM[(const struct ColorPalette &)_679]
	vmovdqu64	ZMMWORD PTR 128[rax], zmm3	 # *_747, tmp644
	vmovdqu64	ZMMWORD PTR 192[rax], zmm5	 # *_747, tmp645
	vmovdqa	XMMWORD PTR 256[rax], xmm2	 # *_747, tmp646
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:386: 	if (__p)
	je	.L214	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:244: 			    - this->_M_impl._M_start);
	mov	rdx, QWORD PTR 88[rsp]	 # tmp502, MEM[(struct vector *)&D.134683 + 8B].D.117729._M_impl.D.117068._M_end_of_storage
	sub	rdx, rcx	 # tmp502, _720
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	vzeroupper
	call	_ZdlPvy	 #
.L96:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:246: 	      this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __xlen;
	lea	rax, 272[rdi]	 # prephitmp_546,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:245: 	      this->_M_impl._M_start = __tmp;
	mov	QWORD PTR 72[rsp], rdi	 # MEM[(struct vector *)&D.134683 + 8B].D.117729._M_impl.D.117068._M_start, _747
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:246: 	      this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __xlen;
	mov	QWORD PTR 88[rsp], rax	 # MEM[(struct vector *)&D.134683 + 8B].D.117729._M_impl.D.117068._M_end_of_storage, prephitmp_546
	jmp	.L97	 #
	.p2align 4,,10
	.p2align 3
.L214:
	vzeroupper
	jmp	.L96	 #
	.p2align 4,,10
	.p2align 3
.L228:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:640: 	  size_type __navail = size_type(this->_M_impl._M_end_of_storage
	mov	r9, QWORD PTR 120[rsp]	 # prephitmp_433, MEM[(struct vector *)_257].D.115405._M_impl.D.114711._M_end_of_storage
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:1013: 	  _M_default_append(__new_size - size());
	mov	r15, r13	 # _289, _7
	mov	QWORD PTR 40[rsp], r14	 # %sfp, _463
	sub	r15, rax	 # _289, tmp389
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:641: 					 - this->_M_impl._M_finish);
	mov	rcx, r9	 # tmp393, prephitmp_433
	sub	rcx, rdx	 # tmp393, _461
	sar	rcx, 2	 # __navail,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:646: 	  if (__navail >= __n)
	cmp	rcx, r15	 # __navail, _289
	jb	.L54	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_construct.h:119:       ::new((void*)__p) _Tp(std::forward<_Args>(__args)...);
	mov	DWORD PTR [rdx], 0x00000000	 # *_461,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_uninitialized.h:667: 	      ++__first;
	lea	rcx, 4[rdx]	 # __first,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:1123:       if (__n <= 0)
	sub	r15, 1	 # _499,
	je	.L56	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:1128:       std::__fill_a(__first, __first + __n, __value);
	lea	rax, [rcx+r15*4]	 # tmp398,
	mov	QWORD PTR 40[rsp], r9	 # %sfp, prephitmp_433
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:931: 	*__first = __tmp;
	sub	rax, rdx	 # tmp399, _461
	xor	edx, edx	 #
	lea	r13, -4[rax]	 # _763,
	mov	r8, r13	 #, _763
	call	memset	 #
	mov	r9, QWORD PTR 40[rsp]	 # prephitmp_433, %sfp
	mov	rcx, rax	 # __first,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:1129:       return __first + __n;
	add	rcx, r13	 # __first, _763
	jmp	.L56	 #
	.p2align 4,,10
	.p2align 3
.L230:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:640: 	  size_type __navail = size_type(this->_M_impl._M_end_of_storage
	mov	r9, QWORD PTR 120[rsp]	 # pretmp_1200, MEM[(struct vector *)_257].D.115405._M_impl.D.114711._M_end_of_storage
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:1013: 	  _M_default_append(__new_size - size());
	mov	r14, r13	 # _1059, _8
	mov	r15, r12	 # _592, _577
	sub	r14, rax	 # _1059, tmp437
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:641: 					 - this->_M_impl._M_finish);
	mov	rcx, r9	 # tmp441, pretmp_1200
	sub	rcx, rdx	 # tmp441, _575
	sar	rcx, 2	 # __navail,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:646: 	  if (__navail >= __n)
	cmp	rcx, r14	 # __navail, _1059
	jb	.L77	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_construct.h:119:       ::new((void*)__p) _Tp(std::forward<_Args>(__args)...);
	mov	DWORD PTR [rdx], 0x00000000	 # *_575,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_uninitialized.h:667: 	      ++__first;
	lea	rcx, 4[rdx]	 # __first,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:1123:       if (__n <= 0)
	sub	r14, 1	 # _613,
	je	.L79	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:1128:       std::__fill_a(__first, __first + __n, __value);
	lea	rax, [rcx+r14*4]	 # tmp446,
	mov	QWORD PTR 40[rsp], r9	 # %sfp, pretmp_1200
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:931: 	*__first = __tmp;
	sub	rax, rdx	 # tmp447, _575
	xor	edx, edx	 #
	lea	r12, -4[rax]	 # _1283,
	mov	r8, r12	 #, _1283
	call	memset	 #
	mov	r9, QWORD PTR 40[rsp]	 # pretmp_1200, %sfp
	mov	rcx, rax	 # __first,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:1129:       return __first + __n;
	add	rcx, r12	 # __first, _1283
	jmp	.L79	 #
.L227:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:117: 	  _M_end_of_storage = __x._M_end_of_storage;
	mov	r8, QWORD PTR 120[rsp]	 # pretmp_418, MEM[(const struct _Vector_impl_data &)_257]._M_end_of_storage
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:646: 	  if (__navail >= __n)
	cmp	rax, r8	 # __first, pretmp_418
	je	.L37	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_construct.h:119:       ::new((void*)__p) _Tp(std::forward<_Args>(__args)...);
	mov	QWORD PTR [rax], 0	 # MEM <vector(2) unsigned int> [(unsigned int *)_347],
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_uninitialized.h:667: 	      ++__first;
	add	rax, 12	 # __first,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_construct.h:119:       ::new((void*)__p) _Tp(std::forward<_Args>(__args)...);
	mov	DWORD PTR -4[rax], 0	 # *_347.centerOfMassY,
	jmp	.L38	 #
	.p2align 4,,10
	.p2align 3
.L233:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:1895: 	if (max_size() - size() < __n)
	movabs	rax, 2305843009213693951	 # tmp558,
	cmp	rax, r13	 # tmp558, _7
	jb	.L115	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:1013: 	  _M_default_append(__new_size - size());
	mov	r15, r13	 # _289, _7
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:1898: 	const size_type __len = size() + (std::max)(size(), __n);
	mov	rax, r13	 # __len, _7
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:990:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	xor	r14d, r14d	 # _463
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:1895: 	if (max_size() - size() < __n)
	mov	QWORD PTR 40[rsp], 0	 # %sfp,
.L58:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:1899: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	movabs	rdx, 2305843009213693951	 # tmp595,
	cmp	rax, rdx	 # __len, tmp595
	cmova	rax, rdx	 # __len,, tmp408, tmp595
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	sal	rax, 2	 # _520,
	mov	rcx, rax	 #, _520
	mov	QWORD PTR 48[rsp], rax	 # %sfp, _520
.LEHB8:
	call	_Znwy	 #
.LEHE8:
	mov	r10, rax	 # _521, tmp581
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:668: 		      std::__uninitialized_default_n_a(__new_start + __size,
	mov	rax, QWORD PTR 40[rsp]	 # _478, %sfp
	add	rax, r10	 # _485, _521
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:1123:       if (__n <= 0)
	sub	r15, 1	 # _523,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_construct.h:119:       ::new((void*)__p) _Tp(std::forward<_Args>(__args)...);
	mov	DWORD PTR [rax], 0x00000000	 # *_485,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:1123:       if (__n <= 0)
	je	.L62	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:1128:       std::__fill_a(__first, __first + __n, __value);
	lea	rcx, 4[rax]	 # __first,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:931: 	*__first = __tmp;
	xor	edx, edx	 #
	mov	QWORD PTR 56[rsp], r10	 # %sfp, _521
	lea	r8, 0[0+r15*4]	 #,
	call	memset	 #
	mov	r10, QWORD PTR 56[rsp]	 # _521, %sfp
.L62:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_uninitialized.h:1120:       if (__count > 0)
	test	r14, r14	 # _463
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:704: 			    this->_M_impl._M_end_of_storage - __old_start);
	mov	r15, QWORD PTR 120[rsp]	 # pretmp_769, MEM[(struct vector *)_257].D.115405._M_impl.D.114711._M_end_of_storage
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_uninitialized.h:1120:       if (__count > 0)
	jne	.L235	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:386: 	if (__p)
	test	rbp, rbp	 # _462
	jne	.L63	 #,
.L64:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:707: 	      this->_M_impl._M_end_of_storage = __new_start + __len;
	mov	r9, QWORD PTR 48[rsp]	 # _520, %sfp
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:706: 	      this->_M_impl._M_finish = __new_start + __size + __n;
	lea	rcx, [r10+r13*4]	 # __first,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:707: 	      this->_M_impl._M_end_of_storage = __new_start + __len;
	mov	rbp, r10	 # _462, _521
	add	r9, r10	 # _520, _521
	jmp	.L56	 #
	.p2align 4,,10
	.p2align 3
.L234:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:1895: 	if (max_size() - size() < __n)
	movabs	rax, 2305843009213693951	 # tmp557,
	cmp	rax, r13	 # tmp557, _8
	jb	.L114	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:1013: 	  _M_default_append(__new_size - size());
	mov	r14, r13	 # _1059, _8
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:1898: 	const size_type __len = size() + (std::max)(size(), __n);
	mov	rax, r13	 # __len, _8
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:1895: 	if (max_size() - size() < __n)
	xor	r15d, r15d	 # _592
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:990:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	xor	r12d, r12d	 # _577
.L81:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:1899: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	movabs	rdx, 2305843009213693951	 # tmp594,
	cmp	rax, rdx	 # __len, tmp594
	cmova	rax, rdx	 # __len,, tmp456, tmp594
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	sal	rax, 2	 # _634,
	mov	rcx, rax	 #, _634
	mov	QWORD PTR 40[rsp], rax	 # %sfp, _634
.LEHB9:
	call	_Znwy	 #
	mov	r10, rax	 # _635, tmp584
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:1123:       if (__n <= 0)
	sub	r14, 1	 # _637,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:668: 		      std::__uninitialized_default_n_a(__new_start + __size,
	lea	rax, [rax+r15]	 # _599,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_construct.h:119:       ::new((void*)__p) _Tp(std::forward<_Args>(__args)...);
	mov	DWORD PTR [rax], 0x00000000	 # *_599,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:1123:       if (__n <= 0)
	je	.L85	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:1128:       std::__fill_a(__first, __first + __n, __value);
	lea	rcx, 4[rax]	 # __first,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:931: 	*__first = __tmp;
	xor	edx, edx	 #
	mov	QWORD PTR 48[rsp], r10	 # %sfp, _635
	lea	r8, 0[0+r14*4]	 #,
	call	memset	 #
	mov	r10, QWORD PTR 48[rsp]	 # _635, %sfp
.L85:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_uninitialized.h:1120:       if (__count > 0)
	test	r12, r12	 # _577
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:704: 			    this->_M_impl._M_end_of_storage - __old_start);
	mov	r14, QWORD PTR 120[rsp]	 # pretmp_765, MEM[(struct vector *)_257].D.115405._M_impl.D.114711._M_end_of_storage
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_uninitialized.h:1120:       if (__count > 0)
	jne	.L236	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:386: 	if (__p)
	test	rbp, rbp	 # _563
	jne	.L86	 #,
.L87:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:707: 	      this->_M_impl._M_end_of_storage = __new_start + __len;
	mov	r9, QWORD PTR 40[rsp]	 # _634, %sfp
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:706: 	      this->_M_impl._M_finish = __new_start + __size + __n;
	lea	rcx, [r10+r13*4]	 # __first,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:707: 	      this->_M_impl._M_end_of_storage = __new_start + __len;
	mov	rbp, r10	 # _563, _635
	add	r9, r10	 # _634, _635
	jmp	.L79	 #
	.p2align 4,,10
	.p2align 3
.L229:
	mov	rax, QWORD PTR 120[rsp]	 # pretmp_1200, MEM[(const struct _Vector_impl_data &)_257]._M_end_of_storage
	mov	rcx, rdx	 # __first, _461
	jmp	.L113	 #
	.p2align 4,,10
	.p2align 3
.L231:
	mov	rax, QWORD PTR 120[rsp]	 # pretmp_1200, MEM[(const struct _Vector_impl_data &)_257]._M_end_of_storage
	mov	rcx, rdx	 # __first, _575
	jmp	.L111	 #
	.p2align 4,,10
	.p2align 3
.L235:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_uninitialized.h:1132: 	  __builtin_memmove(__result, __first, __count * sizeof(_Tp));
	mov	r8, QWORD PTR 40[rsp]	 #, %sfp
	mov	rcx, r10	 #, _521
	mov	rdx, rbp	 #, _462
	call	memmove	 #
	mov	r10, rax	 # _521,
.L63:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:704: 			    this->_M_impl._M_end_of_storage - __old_start);
	mov	rdx, r15	 # pretmp_769, pretmp_769
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	rcx, rbp	 #, _462
	mov	QWORD PTR 40[rsp], r10	 # %sfp, _521
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:704: 			    this->_M_impl._M_end_of_storage - __old_start);
	sub	rdx, rbp	 # pretmp_769, _462
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
	mov	r10, QWORD PTR 40[rsp]	 # _521, %sfp
	jmp	.L64	 #
	.p2align 4,,10
	.p2align 3
.L236:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_uninitialized.h:1132: 	  __builtin_memmove(__result, __first, __count * sizeof(_Tp));
	mov	rcx, r10	 #, _635
	mov	r8, r15	 #, _592
	mov	rdx, rbp	 #, _563
	call	memmove	 #
	mov	r10, rax	 # _635,
.L86:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:704: 			    this->_M_impl._M_end_of_storage - __old_start);
	mov	rdx, r14	 # pretmp_765, pretmp_765
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	rcx, rbp	 #, _563
	mov	QWORD PTR 48[rsp], r10	 # %sfp, _635
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:704: 			    this->_M_impl._M_end_of_storage - __old_start);
	sub	rdx, rbp	 # pretmp_765, _563
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
	mov	r10, QWORD PTR 48[rsp]	 # _635, %sfp
	jmp	.L87	 #
.L114:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:1896: 	  __throw_length_error(__N(__s));
	lea	rcx, .LC3[rip]	 # tmp455,
	call	_ZSt20__throw_length_errorPKc	 #
.LEHE9:
.L115:
	lea	rcx, .LC3[rip]	 # tmp407,
.LEHB10:
	call	_ZSt20__throw_length_errorPKc	 #
.LEHE10:
.L37:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	ecx, 12	 #,
.LEHB11:
	call	_Znwy	 #
.LEHE11:
	mov	r13, rax	 # _407, tmp578
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_construct.h:119:       ::new((void*)__p) _Tp(std::forward<_Args>(__args)...);
	xor	edx, edx	 #
	xor	eax, eax	 #
	mov	DWORD PTR 8[r13], edx	 # *_407.centerOfMassY,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:704: 			    this->_M_impl._M_end_of_storage - __old_start);
	mov	rdx, QWORD PTR 120[rsp]	 # _373, MEM[(struct vector *)_257].D.116668._M_impl.D.116007._M_end_of_storage
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_construct.h:119:       ::new((void*)__p) _Tp(std::forward<_Args>(__args)...);
	mov	QWORD PTR 0[r13], rax	 # MEM <vector(2) unsigned int> [(unsigned int *)_407],
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:704: 			    this->_M_impl._M_end_of_storage - __old_start);
	sub	rdx, rbp	 # _373, prephitmp_74
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:386: 	if (__p)
	test	rbp, rbp	 # prephitmp_74
	je	.L41	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	rcx, rbp	 #, prephitmp_74
	call	_ZdlPvy	 #
.L41:
	mov	rbp, r13	 # prephitmp_74, _407
	jmp	.L39	 #
.L77:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:643: 	  if (__size > max_size() || __navail > max_size() - __size)
	movabs	rdx, 2305843009213693951	 # tmp454,
	sub	rdx, rax	 # tmp453, tmp437
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:1895: 	if (max_size() - size() < __n)
	cmp	rdx, r14	 # tmp453, _1059
	jb	.L114	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:262:       if (__a < __b)
	cmp	rax, r14	 # tmp437, _1059
	jb	.L118	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:1898: 	const size_type __len = size() + (std::max)(size(), __n);
	add	rax, rax	 # __len
	jmp	.L81	 #
.L54:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:643: 	  if (__size > max_size() || __navail > max_size() - __size)
	movabs	rdx, 2305843009213693951	 # tmp406,
	sub	rdx, rax	 # tmp405, tmp389
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:1895: 	if (max_size() - size() < __n)
	cmp	rdx, r15	 # tmp405, _289
	jb	.L115	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:262:       if (__a < __b)
	cmp	rax, r15	 # tmp389, _289
	jb	.L117	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:1898: 	const size_type __len = size() + (std::max)(size(), __n);
	add	rax, rax	 # __len
	jmp	.L58	 #
.L118:
	mov	rax, r13	 # __len, _8
	jmp	.L81	 #
.L117:
	mov	rax, r13	 # __len, _7
	jmp	.L58	 #
.L119:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rsi, rax	 # tmp354, tmp589
	vzeroupper
.L29:
	mov	rcx, QWORD PTR 184[rbx]	 # _111, MEM[(struct _Vector_base *)this_11(D) + 184B]._M_impl.D.118129._M_start
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rdx, QWORD PTR 200[rbx]	 # _112, MEM[(struct _Vector_base *)this_11(D) + 184B]._M_impl.D.118129._M_end_of_storage
	sub	rdx, rcx	 # _112, _111
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:386: 	if (__p)
	test	rcx, rcx	 # _111
	je	.L105	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L105:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rcx, QWORD PTR 152[rbx]	 # _117, MEM[(struct _Vector_base *)this_11(D) + 152B]._M_impl.D.117068._M_start
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rdx, QWORD PTR 168[rbx]	 # _118, MEM[(struct _Vector_base *)this_11(D) + 152B]._M_impl.D.117068._M_end_of_storage
	sub	rdx, rcx	 # _118, _117
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:386: 	if (__p)
	test	rcx, rcx	 # _117
	je	.L106	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L106:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rcx, QWORD PTR 120[rbx]	 # _123, MEM[(struct _Vector_base *)this_11(D) + 120B]._M_impl.D.116007._M_start
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rdx, QWORD PTR 136[rbx]	 # _124, MEM[(struct _Vector_base *)this_11(D) + 120B]._M_impl.D.116007._M_end_of_storage
	sub	rdx, rcx	 # _124, _123
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:386: 	if (__p)
	test	rcx, rcx	 # _123
	je	.L107	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L107:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rcx, QWORD PTR 88[rbx]	 # _129, MEM[(struct _Vector_base *)this_11(D) + 88B]._M_impl.D.114711._M_start
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rdx, QWORD PTR 104[rbx]	 # _130, MEM[(struct _Vector_base *)this_11(D) + 88B]._M_impl.D.114711._M_end_of_storage
	sub	rdx, rcx	 # _130, _129
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:386: 	if (__p)
	test	rcx, rcx	 # _129
	je	.L108	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L108:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rcx, QWORD PTR 56[rbx]	 # _135, MEM[(struct _Vector_base *)this_11(D) + 56B]._M_impl.D.114711._M_start
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rdx, QWORD PTR 72[rbx]	 # MEM[(struct _Vector_base *)this_11(D) + 56B]._M_impl.D.114711._M_end_of_storage, MEM[(struct _Vector_base *)this_11(D) + 56B]._M_impl.D.114711._M_end_of_storage
	sub	rdx, rcx	 # _136, _135
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:386: 	if (__p)
	test	rcx, rcx	 # _135
	je	.L109	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L109:
	mov	rcx, rsi	 #, tmp354
.LEHB12:
	call	_Unwind_Resume	 #
.LEHE12:
.L120:
.L220:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rcx, QWORD PTR 104[rsp]	 # _544,
	mov	rsi, rax	 # tmp475, tmp585
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rdx, QWORD PTR 120[rsp]	 # _545,
	sub	rdx, rcx	 # _545, _544
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:386: 	if (__p)
	test	rcx, rcx	 # _544
	je	.L213	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	vzeroupper
	call	_ZdlPvy	 #
	jmp	.L29	 #
.L124:
	jmp	.L220	 #
.L125:
	jmp	.L220	 #
.L123:
	jmp	.L220	 #
.L126:
	jmp	.L220	 #
.L122:
	jmp	.L220	 #
.L121:
	jmp	.L220	 #
.L127:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rcx, QWORD PTR 72[rsp]	 # _703, MEM[(struct _Vector_base *)&D.134683 + 8B]._M_impl.D.117068._M_start
	mov	rsi, rax	 # tmp530, tmp588
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rdx, QWORD PTR 88[rsp]	 # _704, MEM[(struct _Vector_base *)&D.134683 + 8B]._M_impl.D.117068._M_end_of_storage
	sub	rdx, rcx	 # _704, _703
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:386: 	if (__p)
	test	rcx, rcx	 # _703
	jne	.L237	 #,
	vzeroupper
.L102:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	edx, 272	 #,
	mov	rcx, rbp	 #, _679
	call	_ZdlPvy	 #
	jmp	.L29	 #
.L213:
	vzeroupper
	jmp	.L29	 #
.L237:
	vzeroupper
	call	_ZdlPvy	 #
	jmp	.L102	 #
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA5883:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5883-.LLSDACSB5883
.LLSDACSB5883:
	.uleb128 .LEHB0-.LFB5883
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L120-.LFB5883
	.uleb128 0
	.uleb128 .LEHB1-.LFB5883
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L122-.LFB5883
	.uleb128 0
	.uleb128 .LEHB2-.LFB5883
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L124-.LFB5883
	.uleb128 0
	.uleb128 .LEHB3-.LFB5883
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L126-.LFB5883
	.uleb128 0
	.uleb128 .LEHB4-.LFB5883
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L119-.LFB5883
	.uleb128 0
	.uleb128 .LEHB5-.LFB5883
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L127-.LFB5883
	.uleb128 0
	.uleb128 .LEHB6-.LFB5883
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L121-.LFB5883
	.uleb128 0
	.uleb128 .LEHB7-.LFB5883
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L127-.LFB5883
	.uleb128 0
	.uleb128 .LEHB8-.LFB5883
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L123-.LFB5883
	.uleb128 0
	.uleb128 .LEHB9-.LFB5883
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L125-.LFB5883
	.uleb128 0
	.uleb128 .LEHB10-.LFB5883
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L123-.LFB5883
	.uleb128 0
	.uleb128 .LEHB11-.LFB5883
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L121-.LFB5883
	.uleb128 0
	.uleb128 .LEHB12-.LFB5883
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
.LLSDACSE5883:
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
.LFB5886:
	push	rsi	 #
	.seh_pushreg	rsi
	push	rbx	 #
	.seh_pushreg	rbx
	sub	rsp, 40	 #,
	.seh_stackalloc	40
	.seh_endprologue
 # source/simulation.cpp:25: 		glDeleteBuffers(1, &m_readBuffer.m_ID);
	mov	rsi, QWORD PTR .refptr.glad_glDeleteBuffers[rip]	 # tmp108,
 # source/simulation.cpp:25: 		glDeleteBuffers(1, &m_readBuffer.m_ID);
	lea	rdx, 48[rcx]	 # tmp107,
 # source/simulation.cpp:24: 	Simulation::~Simulation() {
	mov	rbx, rcx	 # this, tmp123
 # source/simulation.cpp:25: 		glDeleteBuffers(1, &m_readBuffer.m_ID);
	mov	ecx, 1	 #,
	call	[QWORD PTR [rsi]]	 # glad_glDeleteBuffers
 # source/simulation.cpp:26: 		glDeleteBuffers(1, &m_writeBuffer.m_ID);
	lea	rdx, 80[rbx]	 # tmp110,
 # source/simulation.cpp:26: 		glDeleteBuffers(1, &m_writeBuffer.m_ID);
	mov	ecx, 1	 #,
	call	[QWORD PTR [rsi]]	 # glad_glDeleteBuffers
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rcx, QWORD PTR 184[rbx]	 # _35, MEM[(struct _Vector_base *)this_6(D) + 184B]._M_impl.D.118129._M_start
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:386: 	if (__p)
	test	rcx, rcx	 # _35
	je	.L239	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rdx, QWORD PTR 200[rbx]	 # tmp113, MEM[(struct _Vector_base *)this_6(D) + 184B]._M_impl.D.118129._M_end_of_storage
	sub	rdx, rcx	 # tmp113, _35
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L239:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rcx, QWORD PTR 152[rbx]	 # _29, MEM[(struct _Vector_base *)this_6(D) + 152B]._M_impl.D.117068._M_start
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:386: 	if (__p)
	test	rcx, rcx	 # _29
	je	.L240	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rdx, QWORD PTR 168[rbx]	 # tmp115, MEM[(struct _Vector_base *)this_6(D) + 152B]._M_impl.D.117068._M_end_of_storage
	sub	rdx, rcx	 # tmp115, _29
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L240:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rcx, QWORD PTR 120[rbx]	 # _23, MEM[(struct _Vector_base *)this_6(D) + 120B]._M_impl.D.116007._M_start
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:386: 	if (__p)
	test	rcx, rcx	 # _23
	je	.L241	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rdx, QWORD PTR 136[rbx]	 # tmp117, MEM[(struct _Vector_base *)this_6(D) + 120B]._M_impl.D.116007._M_end_of_storage
	sub	rdx, rcx	 # tmp117, _23
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L241:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rcx, QWORD PTR 88[rbx]	 # _17, MEM[(struct _Vector_base *)this_6(D) + 88B]._M_impl.D.114711._M_start
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:386: 	if (__p)
	test	rcx, rcx	 # _17
	je	.L242	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rdx, QWORD PTR 104[rbx]	 # tmp119, MEM[(struct _Vector_base *)this_6(D) + 88B]._M_impl.D.114711._M_end_of_storage
	sub	rdx, rcx	 # tmp119, _17
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L242:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rcx, QWORD PTR 56[rbx]	 # _11, MEM[(struct _Vector_base *)this_6(D) + 56B]._M_impl.D.114711._M_start
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:386: 	if (__p)
	test	rcx, rcx	 # _11
	je	.L256	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rdx, QWORD PTR 72[rbx]	 # MEM[(struct _Vector_base *)this_6(D) + 56B]._M_impl.D.114711._M_end_of_storage, MEM[(struct _Vector_base *)this_6(D) + 56B]._M_impl.D.114711._M_end_of_storage
	sub	rdx, rcx	 # tmp121, _11
 # source/simulation.cpp:27: 	}
	add	rsp, 40	 #,
	pop	rbx	 #
	pop	rsi	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	jmp	_ZdlPvy	 #
	.p2align 4,,10
	.p2align 3
.L256:
 # source/simulation.cpp:27: 	}
	add	rsp, 40	 #,
	pop	rbx	 #
	pop	rsi	 #
	ret	
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA5886:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5886-.LLSDACSB5886
.LLSDACSB5886:
.LLSDACSE5886:
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
.LFB5888:
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
	sub	rsp, 120	 #,
	.seh_stackalloc	120
	.seh_endprologue
 # source/simulation.cpp:29: 	void Simulation::PlaceAnimal(Animal *animal, const u32 x, const u32 y) noexcept {
	mov	rbx, rcx	 # this, tmp213
	mov	QWORD PTR 48[rsp], rcx	 # %sfp, this
 # source/simulation.cpp:30: 		f32* animal_cells = animal->GetCells();
	mov	rcx, rdx	 #, animal
 # source/simulation.cpp:29: 	void Simulation::PlaceAnimal(Animal *animal, const u32 x, const u32 y) noexcept {
	mov	rdi, rdx	 # animal, tmp214
	mov	DWORD PTR 40[rsp], r8d	 # %sfp, tmp215
	mov	DWORD PTR 72[rsp], r9d	 # %sfp, tmp216
 # source/simulation.cpp:30: 		f32* animal_cells = animal->GetCells();
	call	_ZN5Lenia6Animal8GetCellsEv	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:990:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	mov	rdx, QWORD PTR 64[rbx]	 # _53, MEM[(const struct vector *)this_40(D) + 56B].D.115405._M_impl.D.114711._M_finish
 # source/simulation.cpp:30: 		f32* animal_cells = animal->GetCells();
	mov	QWORD PTR 64[rsp], rax	 # %sfp, tmp217
 # source/simulation.cpp:31: 		m_readBuffer.m_data.resize(animal->m_w * animal->m_h);
	mov	rax, QWORD PTR 8[rdi]	 # _3, animal_37(D)->m_h
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:990:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	mov	rsi, QWORD PTR 56[rbx]	 # _54, MEM[(const struct vector *)this_40(D) + 56B].D.115405._M_impl.D.114711._M_start
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:990:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	mov	r12, rdx	 # _55, _53
 # source/simulation.cpp:31: 		m_readBuffer.m_data.resize(animal->m_w * animal->m_h);
	mov	QWORD PTR 56[rsp], rax	 # %sfp, _3
 # source/simulation.cpp:31: 		m_readBuffer.m_data.resize(animal->m_w * animal->m_h);
	imul	rax, QWORD PTR [rdi]	 # _4, animal_37(D)->m_w
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:990:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	sub	r12, rsi	 # _55, _54
 # source/simulation.cpp:31: 		m_readBuffer.m_data.resize(animal->m_w * animal->m_h);
	mov	rbp, rax	 # _4, _4
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:990:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	mov	rax, r12	 # tmp162, _55
	sar	rax, 2	 # tmp162,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:1012: 	if (__new_size > size())
	cmp	rax, rbp	 # tmp162, _4
	jb	.L307	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:1014: 	else if (__new_size < size())
	cmp	rbp, rax	 # _4, tmp162
	jb	.L308	 #,
.L273:
 # source/simulation.cpp:29: 	void Simulation::PlaceAnimal(Animal *animal, const u32 x, const u32 y) noexcept {
	mov	r14, rsi	 # _81, _54
.L272:
 # source/simulation.cpp:32: 		for (size_t i = 0; i < animal->m_h; i++)
	cmp	QWORD PTR 56[rsp], 0	 # %sfp,
	je	.L261	 #,
 # source/simulation.cpp:33: 		for (size_t j = 0; j < animal->m_w; j++)
	mov	r11, QWORD PTR [rdi]	 # _62, animal_37(D)->m_w
	test	r11, r11	 # _62
	je	.L261	 #,
 # source/simulation.cpp:34: 		for (size_t k = 0; k < m_scale; k++)
	mov	rax, QWORD PTR 48[rsp]	 # this, %sfp
	xor	ecx, ecx	 # ivtmp.1011
	xor	edx, edx	 # i
	mov	rbx, r11	 # _62, _62
	mov	r13d, DWORD PTR 72[rsp]	 # _142, %sfp
	mov	rbp, QWORD PTR 16[rax]	 # _1, this_40(D)->m_scale
	mov	QWORD PTR 88[rsp], r13	 # %sfp, _142
	lea	rax, 0[rbp+r13]	 # ivtmp.1004,
	mov	QWORD PTR 72[rsp], rax	 # %sfp, ivtmp.1004
	mov	eax, DWORD PTR 40[rsp]	 # x, %sfp
	mov	QWORD PTR 80[rsp], rax	 # %sfp, x
.L263:
 # source/simulation.cpp:36: 			m_readBuffer.m_data[(x + i * m_scale + k) % m_h * m_w + (y + j * m_scale + l) % m_w] = animal_cells[i * animal->m_w + j];
	mov	r13, rbp	 # tmp204, _1
 # source/simulation.cpp:36: 			m_readBuffer.m_data[(x + i * m_scale + k) % m_h * m_w + (y + j * m_scale + l) % m_w] = animal_cells[i * animal->m_w + j];
	mov	rax, QWORD PTR 80[rsp]	 # x, %sfp
 # source/simulation.cpp:36: 			m_readBuffer.m_data[(x + i * m_scale + k) % m_h * m_w + (y + j * m_scale + l) % m_w] = animal_cells[i * animal->m_w + j];
	imul	r13, rcx	 # tmp204, i
 # source/simulation.cpp:36: 			m_readBuffer.m_data[(x + i * m_scale + k) % m_h * m_w + (y + j * m_scale + l) % m_w] = animal_cells[i * animal->m_w + j];
	add	r13, rax	 # _12, x
	test	rbp, rbp	 # _1
	je	.L309	 #,
 # source/simulation.cpp:36: 			m_readBuffer.m_data[(x + i * m_scale + k) % m_h * m_w + (y + j * m_scale + l) % m_w] = animal_cells[i * animal->m_w + j];
	mov	rdi, QWORD PTR 48[rsp]	 # this, %sfp
	mov	QWORD PTR 96[rsp], rbx	 # %sfp, _62
	lea	r12, 0[rbp+r13]	 # _180,
	mov	rax, QWORD PTR 64[rsp]	 # animal_cells, %sfp
	mov	QWORD PTR 40[rsp], rbp	 # %sfp, _1
 # source/simulation.cpp:36: 			m_readBuffer.m_data[(x + i * m_scale + k) % m_h * m_w + (y + j * m_scale + l) % m_w] = animal_cells[i * animal->m_w + j];
	mov	r11, QWORD PTR 72[rsp]	 # ivtmp.1004, %sfp
 # source/simulation.cpp:36: 			m_readBuffer.m_data[(x + i * m_scale + k) % m_h * m_w + (y + j * m_scale + l) % m_w] = animal_cells[i * animal->m_w + j];
	mov	rsi, QWORD PTR 8[rdi]	 # _14, this_40(D)->m_h
 # source/simulation.cpp:36: 			m_readBuffer.m_data[(x + i * m_scale + k) % m_h * m_w + (y + j * m_scale + l) % m_w] = animal_cells[i * animal->m_w + j];
	mov	r8, QWORD PTR [rdi]	 # _16, this_40(D)->m_w
	lea	r10, [rax+rdx*4]	 # ivtmp.1003,
	add	rdx, rbx	 # ivtmp.1011, _62
	mov	rbx, rcx	 # i, i
	mov	rdi, QWORD PTR 88[rsp]	 # ivtmp.1002, %sfp
	lea	r15, [rax+rdx*4]	 # _41,
	mov	QWORD PTR 104[rsp], rdx	 # %sfp, ivtmp.1011
	.p2align 4,,10
	.p2align 3
.L278:
 # source/simulation.cpp:36: 			m_readBuffer.m_data[(x + i * m_scale + k) % m_h * m_w + (y + j * m_scale + l) % m_w] = animal_cells[i * animal->m_w + j];
	mov	r9, r13	 # ivtmp.998, _12
	.p2align 4,,10
	.p2align 3
.L277:
 # source/simulation.cpp:36: 			m_readBuffer.m_data[(x + i * m_scale + k) % m_h * m_w + (y + j * m_scale + l) % m_w] = animal_cells[i * animal->m_w + j];
	mov	rax, r9	 # tmp203, ivtmp.998
	xor	edx, edx	 # tmp202
 # source/simulation.cpp:36: 			m_readBuffer.m_data[(x + i * m_scale + k) % m_h * m_w + (y + j * m_scale + l) % m_w] = animal_cells[i * animal->m_w + j];
	mov	rcx, rdi	 # ivtmp.993, ivtmp.1002
 # source/simulation.cpp:36: 			m_readBuffer.m_data[(x + i * m_scale + k) % m_h * m_w + (y + j * m_scale + l) % m_w] = animal_cells[i * animal->m_w + j];
	div	rsi	 # _14
 # source/simulation.cpp:36: 			m_readBuffer.m_data[(x + i * m_scale + k) % m_h * m_w + (y + j * m_scale + l) % m_w] = animal_cells[i * animal->m_w + j];
	imul	rdx, r8	 # tmp202, _16
	mov	rbp, rdx	 # _17, tmp202
	.p2align 4,,10
	.p2align 3
.L274:
 # source/simulation.cpp:36: 			m_readBuffer.m_data[(x + i * m_scale + k) % m_h * m_w + (y + j * m_scale + l) % m_w] = animal_cells[i * animal->m_w + j];
	mov	rax, rcx	 # tmp199, ivtmp.993
	xor	edx, edx	 # tmp198
 # source/simulation.cpp:36: 			m_readBuffer.m_data[(x + i * m_scale + k) % m_h * m_w + (y + j * m_scale + l) % m_w] = animal_cells[i * animal->m_w + j];
	vmovss	xmm0, DWORD PTR [r10]	 # _9, MEM[(f32 *)_108]
 # source/simulation.cpp:35: 		for (size_t l = 0; l < m_scale; l++)
	add	rcx, 1	 # ivtmp.993,
 # source/simulation.cpp:36: 			m_readBuffer.m_data[(x + i * m_scale + k) % m_h * m_w + (y + j * m_scale + l) % m_w] = animal_cells[i * animal->m_w + j];
	div	r8	 # _16
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:1126: 	return *(this->_M_impl._M_start + __n);
	add	rdx, rbp	 # tmp200, _17
 # source/simulation.cpp:35: 		for (size_t l = 0; l < m_scale; l++)
	cmp	rcx, r11	 # ivtmp.993, ivtmp.1004
 # source/simulation.cpp:36: 			m_readBuffer.m_data[(x + i * m_scale + k) % m_h * m_w + (y + j * m_scale + l) % m_w] = animal_cells[i * animal->m_w + j];
	vmovss	DWORD PTR [r14+rdx*4], xmm0	 # *_52, _9
 # source/simulation.cpp:35: 		for (size_t l = 0; l < m_scale; l++)
	jne	.L274	 #,
 # source/simulation.cpp:34: 		for (size_t k = 0; k < m_scale; k++)
	add	r9, 1	 # ivtmp.998,
	cmp	r12, r9	 # _180, ivtmp.998
	jne	.L277	 #,
 # source/simulation.cpp:33: 		for (size_t j = 0; j < animal->m_w; j++)
	mov	rax, QWORD PTR 40[rsp]	 # _1, %sfp
	add	r10, 4	 # ivtmp.1003,
	add	rdi, rax	 # ivtmp.1002, _1
	add	r11, rax	 # ivtmp.1004, _1
	cmp	r15, r10	 # _41, ivtmp.1003
	jne	.L278	 #,
	mov	rcx, rbx	 # i, i
	mov	rdx, QWORD PTR 104[rsp]	 # ivtmp.1011, %sfp
	mov	rbp, rax	 # _1, _1
	mov	rbx, QWORD PTR 96[rsp]	 # _62, %sfp
.L276:
 # source/simulation.cpp:32: 		for (size_t i = 0; i < animal->m_h; i++)
	mov	rax, QWORD PTR 56[rsp]	 # _3, %sfp
 # source/simulation.cpp:32: 		for (size_t i = 0; i < animal->m_h; i++)
	add	rcx, 1	 # i,
 # source/simulation.cpp:32: 		for (size_t i = 0; i < animal->m_h; i++)
	cmp	rcx, rax	 # i, _3
	jne	.L263	 #,
.L261:
 # source/simulation.cpp:37: 		delete[] animal_cells;
	mov	rax, QWORD PTR 64[rsp]	 # animal_cells, %sfp
	test	rax, rax	 # animal_cells
	je	.L304	 #,
 # source/simulation.cpp:37: 		delete[] animal_cells;
	mov	rcx, rax	 #, animal_cells
 # source/simulation.cpp:38: 	}
	add	rsp, 120	 #,
	pop	rbx	 #
	pop	rsi	 #
	pop	rdi	 #
	pop	rbp	 #
	pop	r12	 #
	pop	r13	 #
	pop	r14	 #
	pop	r15	 #
 # source/simulation.cpp:37: 		delete[] animal_cells;
	jmp	_ZdaPv	 #
.L308:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:1015: 	  _M_erase_at_end(this->_M_impl._M_start + __new_size);
	lea	rax, [rsi+rbp*4]	 # _60,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:1932: 	if (size_type __n = this->_M_impl._M_finish - __pos)
	cmp	rdx, rax	 # _53, _60
	je	.L273	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:1936: 	    this->_M_impl._M_finish = __pos;
	mov	rbx, QWORD PTR 48[rsp]	 # this, %sfp
	mov	QWORD PTR 64[rbx], rax	 # MEM[(struct vector *)this_40(D) + 56B].D.115405._M_impl.D.114711._M_finish, _60
	jmp	.L273	 #
.L307:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:641: 					 - this->_M_impl._M_finish);
	mov	rbx, QWORD PTR 48[rsp]	 # this, %sfp
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:1013: 	  _M_default_append(__new_size - size());
	mov	r15, rbp	 # _61, _4
	sub	r15, rax	 # _61, tmp162
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:641: 					 - this->_M_impl._M_finish);
	mov	rbx, QWORD PTR 72[rbx]	 # MEM[(struct vector *)this_40(D) + 56B].D.115405._M_impl.D.114711._M_end_of_storage, MEM[(struct vector *)this_40(D) + 56B].D.115405._M_impl.D.114711._M_end_of_storage
	mov	rcx, rbx	 # MEM[(struct vector *)this_40(D) + 56B].D.115405._M_impl.D.114711._M_end_of_storage, MEM[(struct vector *)this_40(D) + 56B].D.115405._M_impl.D.114711._M_end_of_storage
	mov	QWORD PTR 80[rsp], rbx	 # %sfp, MEM[(struct vector *)this_40(D) + 56B].D.115405._M_impl.D.114711._M_end_of_storage
	sub	rcx, rdx	 # MEM[(struct vector *)this_40(D) + 56B].D.115405._M_impl.D.114711._M_end_of_storage, _53
	sar	rcx, 2	 # __navail,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:646: 	  if (__navail >= __n)
	cmp	rcx, r15	 # __navail, _61
	jb	.L259	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_construct.h:119:       ::new((void*)__p) _Tp(std::forward<_Args>(__args)...);
	mov	DWORD PTR [rdx], 0x00000000	 # *_53,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_uninitialized.h:667: 	      ++__first;
	lea	rcx, 4[rdx]	 # __first,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:1123:       if (__n <= 0)
	sub	r15, 1	 # _91,
	je	.L260	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:1128:       std::__fill_a(__first, __first + __n, __value);
	lea	rax, [rcx+r15*4]	 # tmp169,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:931: 	*__first = __tmp;
	sub	rax, rdx	 # tmp170, _53
	xor	edx, edx	 #
	lea	rbx, -4[rax]	 # _171,
	mov	r8, rbx	 #, _171
	call	memset	 #
	mov	rcx, rax	 # __first,
	add	rcx, rbx	 # __first, _171
.L260:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:649: 	      this->_M_impl._M_finish =
	mov	rax, QWORD PTR 48[rsp]	 # this, %sfp
	mov	QWORD PTR 64[rax], rcx	 # MEM[(struct vector *)this_40(D) + 56B].D.115405._M_impl.D.114711._M_finish, __first
	jmp	.L273	 #
.L309:
	add	rdx, rbx	 # ivtmp.1011, _62
	jmp	.L276	 #
.L304:
 # source/simulation.cpp:38: 	}
	add	rsp, 120	 #,
	pop	rbx	 #
	pop	rsi	 #
	pop	rdi	 #
	pop	rbp	 #
	pop	r12	 #
	pop	r13	 #
	pop	r14	 #
	pop	r15	 #
	ret	
.L259:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:643: 	  if (__size > max_size() || __navail > max_size() - __size)
	movabs	rdx, 2305843009213693951	 # tmp177,
	sub	rdx, rax	 # tmp176, tmp162
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:1895: 	if (max_size() - size() < __n)
	cmp	rdx, r15	 # tmp176, _61
	jb	.L310	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_uninitialized.h:668: 	      __first = std::fill_n(__first, __n - 1, *__val);
	lea	r13, -1[r15]	 # _184,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:262:       if (__a < __b)
	cmp	rax, r15	 # tmp162, _61
	jb	.L311	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:1899: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	movabs	rdx, 2305843009213693951	 # tmp221,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:1898: 	const size_type __len = size() + (std::max)(size(), __n);
	add	rax, rax	 # __len
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:1899: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	cmp	rax, rdx	 # __len, tmp221
	cmova	rax, rdx	 # __len,, __len, tmp221
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	lea	rbx, 0[0+rax*4]	 # _31,
	mov	rcx, rbx	 #, _31
	call	_Znwy	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:1123:       if (__n <= 0)
	cmp	r15, 1	 # _61,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:668: 		      std::__uninitialized_default_n_a(__new_start + __size,
	lea	rcx, [rax+r12]	 # _27,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	r14, rax	 # _81, tmp219
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_construct.h:119:       ::new((void*)__p) _Tp(std::forward<_Args>(__args)...);
	mov	DWORD PTR [rcx], 0x00000000	 # *_27,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:1123:       if (__n <= 0)
	je	.L268	 #,
.L305:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:931: 	*__first = __tmp;
	lea	r8, 0[0+r13*4]	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_uninitialized.h:667: 	      ++__first;
	add	rcx, 4	 # __first,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:931: 	*__first = __tmp;
	xor	edx, edx	 #
	call	memset	 #
.L266:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_uninitialized.h:1120:       if (__count > 0)
	test	r12, r12	 # _55
	jne	.L268	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:386: 	if (__p)
	test	rsi, rsi	 # _54
	jne	.L306	 #,
.L271:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:706: 	      this->_M_impl._M_finish = __new_start + __size + __n;
	lea	rax, [r14+rbp*4]	 # tmp194,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:705: 	      this->_M_impl._M_start = __new_start;
	vmovq	xmm1, r14	 # _81, _81
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:707: 	      this->_M_impl._M_end_of_storage = __new_start + __len;
	add	rbx, r14	 # tmp195, _81
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:705: 	      this->_M_impl._M_start = __new_start;
	vpinsrq	xmm0, xmm1, rax, 1	 # tmp192, _81, tmp194
	mov	rax, QWORD PTR 48[rsp]	 # this, %sfp
	vmovdqu	XMMWORD PTR 56[rax], xmm0	 # MEM <vector(2) long long unsigned int> [(float * *)this_40(D) + 56B], tmp192
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:707: 	      this->_M_impl._M_end_of_storage = __new_start + __len;
	mov	QWORD PTR 72[rax], rbx	 # MEM[(struct vector *)this_40(D) + 56B].D.115405._M_impl.D.114711._M_end_of_storage, tmp195
 # source/simulation.cpp:32: 		for (size_t i = 0; i < animal->m_h; i++)
	mov	rax, QWORD PTR 8[rdi]	 # _3, animal_37(D)->m_h
	mov	QWORD PTR 56[rsp], rax	 # %sfp, _3
	jmp	.L272	 #
.L310:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:1896: 	  __throw_length_error(__N(__s));
	lea	rcx, .LC3[rip]	 # tmp178,
	call	_ZSt20__throw_length_errorPKc	 #
	.p2align 4,,10
	.p2align 3
.L268:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_uninitialized.h:1132: 	  __builtin_memmove(__result, __first, __count * sizeof(_Tp));
	mov	r8, r12	 #, _55
	mov	rdx, rsi	 #, _54
	mov	rcx, r14	 #, _81
	call	memmove	 #
.L306:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:704: 			    this->_M_impl._M_end_of_storage - __old_start);
	mov	rax, QWORD PTR 48[rsp]	 # this, %sfp
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	rcx, rsi	 #, _54
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:704: 			    this->_M_impl._M_end_of_storage - __old_start);
	mov	rax, QWORD PTR 72[rax]	 # MEM[(struct vector *)this_40(D) + 56B].D.115405._M_impl.D.114711._M_end_of_storage, MEM[(struct vector *)this_40(D) + 56B].D.115405._M_impl.D.114711._M_end_of_storage
	mov	rdx, rax	 # MEM[(struct vector *)this_40(D) + 56B].D.115405._M_impl.D.114711._M_end_of_storage, MEM[(struct vector *)this_40(D) + 56B].D.115405._M_impl.D.114711._M_end_of_storage
	mov	QWORD PTR 56[rsp], rax	 # %sfp, MEM[(struct vector *)this_40(D) + 56B].D.115405._M_impl.D.114711._M_end_of_storage
	sub	rdx, rsi	 # MEM[(struct vector *)this_40(D) + 56B].D.115405._M_impl.D.114711._M_end_of_storage, _54
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
	jmp	.L271	 #
.L311:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:1899: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	movabs	rax, 2305843009213693951	 # tmp222,
	cmp	rbp, rax	 # _4, tmp222
	cmovbe	rax, rbp	 # _4,, tmp179
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	lea	rbx, 0[0+rax*4]	 # _31,
	mov	rcx, rbx	 #, _31
	call	_Znwy	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:1123:       if (__n <= 0)
	test	r13, r13	 # _184
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:668: 		      std::__uninitialized_default_n_a(__new_start + __size,
	lea	rcx, [rax+r12]	 # _77,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	r14, rax	 # _81, tmp218
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_construct.h:119:       ::new((void*)__p) _Tp(std::forward<_Args>(__args)...);
	mov	DWORD PTR [rcx], 0x00000000	 # *_77,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:1123:       if (__n <= 0)
	jne	.L305	 #,
	jmp	.L266	 #
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA5888:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5888-.LLSDACSB5888
.LLSDACSB5888:
.LLSDACSE5888:
	.text
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN5Lenia10Simulation20ReadShaderDataBufferEv
	.def	_ZN5Lenia10Simulation20ReadShaderDataBufferEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Lenia10Simulation20ReadShaderDataBufferEv
_ZN5Lenia10Simulation20ReadShaderDataBufferEv:
.LFB5889:
	push	rbx	 #
	.seh_pushreg	rbx
	sub	rsp, 48	 #,
	.seh_stackalloc	48
	vmovaps	XMMWORD PTR 32[rsp], xmm6	 #,
	.seh_savexmm	xmm6, 32
	.seh_endprologue
	vxorps	xmm6, xmm6, xmm6	 # tmp124
 # include/gl_setup.hpp:69: 			glGetNamedBufferSubData(m_ID, 0, m_data.size(), &m_data[0]);
	xor	edx, edx	 #
	movabs	rax, -6148914691236517205	 # tmp108,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:1126: 	return *(this->_M_impl._M_start + __n);
	mov	r9, QWORD PTR 120[rcx]	 # _20, MEM[(struct vector *)this_12(D) + 120B].D.116668._M_impl.D.116007._M_start
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:990:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	mov	r8, QWORD PTR 128[rcx]	 # tmp103, MEM[(const struct vector *)this_12(D) + 120B].D.116668._M_impl.D.116007._M_finish
 # source/simulation.cpp:40: 	void Simulation::ReadShaderDataBuffer() noexcept {
	mov	rbx, rcx	 # this, tmp123
 # include/gl_setup.hpp:69: 			glGetNamedBufferSubData(m_ID, 0, m_data.size(), &m_data[0]);
	mov	ecx, DWORD PTR 112[rcx]	 # MEM[(struct Buffer *)this_12(D) + 112B].m_ID, MEM[(struct Buffer *)this_12(D) + 112B].m_ID
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:990:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	sub	r8, r9	 # tmp103, _20
	sar	r8, 2	 # tmp106,
 # include/gl_setup.hpp:69: 			glGetNamedBufferSubData(m_ID, 0, m_data.size(), &m_data[0]);
	imul	r8, rax	 #, tmp108
	mov	rax, QWORD PTR .refptr.glad_glGetNamedBufferSubData[rip]	 # tmp110,
	call	[QWORD PTR [rax]]	 # glad_glGetNamedBufferSubData
 # source/simulation.cpp:43: 		m_mass = (f64)m_shaderData.sum / 10000.f;
	vcvtusi2sd	xmm0, xmm6, DWORD PTR 220[rbx]	 # tmp125, tmp124, this_12(D)->m_shaderData.sum
 # source/simulation.cpp:43: 		m_mass = (f64)m_shaderData.sum / 10000.f;
	vdivsd	xmm0, xmm0, QWORD PTR .LC5[rip]	 # _3, tmp112,
 # source/simulation.cpp:43: 		m_mass = (f64)m_shaderData.sum / 10000.f;
	vmovsd	QWORD PTR 32[rbx], xmm0	 # this_12(D)->m_mass, _3
 # source/simulation.cpp:45: 		f32 y = m_shaderData.centerOfMassY / f32(100.0 * m_mass);
	vmulsd	xmm0, xmm0, QWORD PTR .LC6[rip]	 # tmp114, _3,
 # source/simulation.cpp:46: 		f32 x = m_shaderData.centerOfMassX / f32(100.0 * m_mass);
	vcvtusi2ss	xmm1, xmm6, DWORD PTR 224[rbx]	 # tmp126, tmp124, this_12(D)->m_shaderData.centerOfMassX
 # source/simulation.cpp:45: 		f32 y = m_shaderData.centerOfMassY / f32(100.0 * m_mass);
	vcvtusi2ss	xmm6, xmm6, DWORD PTR 228[rbx]	 # tmp127, tmp124, this_12(D)->m_shaderData.centerOfMassY
 # source/simulation.cpp:45: 		f32 y = m_shaderData.centerOfMassY / f32(100.0 * m_mass);
	vcvtsd2ss	xmm0, xmm0, xmm0	 # _7, tmp114
 # source/simulation.cpp:46: 		f32 x = m_shaderData.centerOfMassX / f32(100.0 * m_mass);
	vdivss	xmm1, xmm1, xmm0	 # x, tmp117, _7
 # source/simulation.cpp:45: 		f32 y = m_shaderData.centerOfMassY / f32(100.0 * m_mass);
	vdivss	xmm6, xmm6, xmm0	 # y, tmp120, _7
 # source/simulation.cpp:48: 		m_centerOfMass = { u32(x), u32(y) };
	vcvttss2usi	eax, xmm1	 # tmp119, x
 # source/simulation.cpp:48: 		m_centerOfMass = { u32(x), u32(y) };
	vmovd	xmm2, eax	 # tmp119, tmp119
 # source/simulation.cpp:48: 		m_centerOfMass = { u32(x), u32(y) };
	vcvttss2usi	edx, xmm6	 # tmp122, y
 # source/simulation.cpp:48: 		m_centerOfMass = { u32(x), u32(y) };
	vpinsrd	xmm0, xmm2, edx, 1	 # tmp116, tmp119, tmp122
	vmovq	QWORD PTR 40[rbx], xmm0	 # MEM <vector(2) unsigned int> [(unsigned int *)this_12(D) + 40B], tmp116
 # source/simulation.cpp:49: 	}
	vmovaps	xmm6, XMMWORD PTR 32[rsp]	 #,
	add	rsp, 48	 #,
	pop	rbx	 #
	ret	
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA5889:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5889-.LLSDACSB5889
.LLSDACSB5889:
.LLSDACSE5889:
	.text
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN5Lenia10Simulation11SwapBuffersEv
	.def	_ZN5Lenia10Simulation11SwapBuffersEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Lenia10Simulation11SwapBuffersEv
_ZN5Lenia10Simulation11SwapBuffersEv:
.LFB5891:
	push	rsi	 #
	.seh_pushreg	rsi
	push	rbx	 #
	.seh_pushreg	rbx
	sub	rsp, 40	 #,
	.seh_stackalloc	40
	.seh_endprologue
 # source/simulation.cpp:60: 		glBindBufferBase(GL_SHADER_STORAGE_BUFFER, 1 - m_readWriteBinding, m_writeBuffer.m_ID);
	mov	rsi, QWORD PTR .refptr.glad_glBindBufferBase[rip]	 # tmp101,
 # source/simulation.cpp:60: 		glBindBufferBase(GL_SHADER_STORAGE_BUFFER, 1 - m_readWriteBinding, m_writeBuffer.m_ID);
	mov	edx, 1	 # tmp100,
 # source/simulation.cpp:60: 		glBindBufferBase(GL_SHADER_STORAGE_BUFFER, 1 - m_readWriteBinding, m_writeBuffer.m_ID);
	movsx	eax, BYTE PTR 232[rcx]	 # this_16(D)->m_readWriteBinding, this_16(D)->m_readWriteBinding
 # source/simulation.cpp:60: 		glBindBufferBase(GL_SHADER_STORAGE_BUFFER, 1 - m_readWriteBinding, m_writeBuffer.m_ID);
	mov	r8d, DWORD PTR 80[rcx]	 #, this_16(D)->m_writeBuffer.m_ID
 # source/simulation.cpp:59: 	void Simulation::SwapBuffers() noexcept {
	mov	rbx, rcx	 # this, tmp111
 # source/simulation.cpp:60: 		glBindBufferBase(GL_SHADER_STORAGE_BUFFER, 1 - m_readWriteBinding, m_writeBuffer.m_ID);
	sub	edx, eax	 # tmp99, this_16(D)->m_readWriteBinding
 # source/simulation.cpp:60: 		glBindBufferBase(GL_SHADER_STORAGE_BUFFER, 1 - m_readWriteBinding, m_writeBuffer.m_ID);
	mov	ecx, 37074	 #,
	call	[QWORD PTR [rsi]]	 # glad_glBindBufferBase
 # source/simulation.cpp:61: 		glBindBufferBase(GL_SHADER_STORAGE_BUFFER, m_readWriteBinding, m_readBuffer.m_ID);
	movsx	edx, BYTE PTR 232[rbx]	 # this_16(D)->m_readWriteBinding, this_16(D)->m_readWriteBinding
	mov	ecx, 37074	 #,
	mov	r8d, DWORD PTR 48[rbx]	 #, this_16(D)->m_readBuffer.m_ID
	call	[QWORD PTR [rsi]]	 # glad_glBindBufferBase
 # source/simulation.cpp:62: 		m_readWriteBinding = 1 - m_readWriteBinding;
	mov	eax, 1	 # tmp110,
	sub	al, BYTE PTR 232[rbx]	 # tmp109, this_16(D)->m_readWriteBinding
 # source/simulation.cpp:62: 		m_readWriteBinding = 1 - m_readWriteBinding;
	mov	BYTE PTR 232[rbx], al	 # this_16(D)->m_readWriteBinding, tmp109
 # source/simulation.cpp:63: 	}
	add	rsp, 40	 #,
	pop	rbx	 #
	pop	rsi	 #
	ret	
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA5891:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5891-.LLSDACSB5891
.LLSDACSB5891:
.LLSDACSE5891:
	.text
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN5Lenia10Simulation17ApplyColorPaletteERKNS_12ColorPaletteE
	.def	_ZN5Lenia10Simulation17ApplyColorPaletteERKNS_12ColorPaletteE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Lenia10Simulation17ApplyColorPaletteERKNS_12ColorPaletteE
_ZN5Lenia10Simulation17ApplyColorPaletteERKNS_12ColorPaletteE:
.LFB5892:
	.seh_endprologue
 # source/simulation.cpp:66: 		m_colorBuffer.m_data[0] = colorPalette;
	mov	rax, QWORD PTR 152[rcx]	 # MEM[(struct vector *)this_1(D) + 152B].D.117729._M_impl.D.117068._M_start, MEM[(struct vector *)this_1(D) + 152B].D.117729._M_impl.D.117068._M_start
	vmovdqu64	zmm0, ZMMWORD PTR [rdx]	 # tmp94, *colorPalette_4(D)
	vmovdqu64	ZMMWORD PTR [rax], zmm0	 # MEM[(struct value_type *)_3], tmp94
	vmovdqu64	zmm1, ZMMWORD PTR 64[rdx]	 # tmp95, *colorPalette_4(D)
	vmovdqu64	ZMMWORD PTR 64[rax], zmm1	 # MEM[(struct value_type *)_3], tmp95
	vmovdqu64	zmm2, ZMMWORD PTR 128[rdx]	 # tmp96, *colorPalette_4(D)
	vmovdqu64	ZMMWORD PTR 128[rax], zmm2	 # MEM[(struct value_type *)_3], tmp96
	vmovdqu64	zmm3, ZMMWORD PTR 192[rdx]	 # tmp97, *colorPalette_4(D)
	vmovdqu64	ZMMWORD PTR 192[rax], zmm3	 # MEM[(struct value_type *)_3], tmp97
	vmovdqa	xmm4, XMMWORD PTR 256[rdx]	 # tmp98, *colorPalette_4(D)
	vmovdqa	XMMWORD PTR 256[rax], xmm4	 # MEM[(struct value_type *)_3], tmp98
	vzeroupper
 # source/simulation.cpp:67: 	}
	ret	
	.seh_endproc
	.section	.text$_ZNSt11_Deque_baseIN5Lenia4Vec2IjEESaIS2_EE17_M_initialize_mapEy,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNSt11_Deque_baseIN5Lenia4Vec2IjEESaIS2_EE17_M_initialize_mapEy
	.def	_ZNSt11_Deque_baseIN5Lenia4Vec2IjEESaIS2_EE17_M_initialize_mapEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt11_Deque_baseIN5Lenia4Vec2IjEESaIS2_EE17_M_initialize_mapEy
_ZNSt11_Deque_baseIN5Lenia4Vec2IjEESaIS2_EE17_M_initialize_mapEy:
.LFB7054:
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
	sub	rsp, 32	 #,
	.seh_stackalloc	32
	.seh_endprologue
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:641:       const size_t __num_nodes = (__num_elements / __deque_buf_size(sizeof(_Tp))
	mov	rax, rdx	 # _1, __num_elements
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:638:     _Deque_base<_Tp, _Alloc>::
	mov	rdi, rcx	 # this, tmp149
	mov	rbp, rdx	 # __num_elements, tmp150
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:641:       const size_t __num_nodes = (__num_elements / __deque_buf_size(sizeof(_Tp))
	shr	rax, 6	 # _1,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:641:       const size_t __num_nodes = (__num_elements / __deque_buf_size(sizeof(_Tp))
	lea	rbx, 1[rax]	 # __num_nodes,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:645: 					   size_t(__num_nodes + 2));
	add	rax, 3	 # _2,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:262:       if (__a < __b)
	cmp	rax, 8	 # _2,
	ja	.L331	 #,
	mov	eax, 8	 # _2,
	mov	ecx, 64	 # prephitmp_21,
.L316:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:644:       this->_M_impl._M_map_size = std::max((size_t) _S_initial_map_size,
	mov	QWORD PTR 8[rdi], rax	 # this_22(D)->_M_impl.D.135525._M_map_size, _2
.LEHB13:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwy	 #
.LEHE13:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:654: 			       + (this->_M_impl._M_map_size - __num_nodes) / 2);
	mov	rdx, QWORD PTR 8[rdi]	 # tmp122, this_22(D)->_M_impl.D.135525._M_map_size
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:646:       this->_M_impl._M_map = _M_allocate_map(this->_M_impl._M_map_size);
	mov	QWORD PTR [rdi], rax	 # this_22(D)->_M_impl.D.135525._M_map, tmp121
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:654: 			       + (this->_M_impl._M_map_size - __num_nodes) / 2);
	sub	rdx, rbx	 # tmp122, __num_nodes
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:654: 			       + (this->_M_impl._M_map_size - __num_nodes) / 2);
	shr	rdx	 # tmp124
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:653:       _Map_pointer __nstart = (this->_M_impl._M_map
	lea	r12, [rax+rdx*8]	 # __n,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:655:       _Map_pointer __nfinish = __nstart + __num_nodes;
	lea	rsi, [r12+rbx*8]	 # __nfinish,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:683: 	  for (__cur = __nstart; __cur < __nfinish; ++__cur)
	cmp	r12, rsi	 # __n, __nfinish
	jnb	.L317	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:683: 	  for (__cur = __nstart; __cur < __nfinish; ++__cur)
	mov	rbx, r12	 # __cur, __n
	.p2align 4,,10
	.p2align 3
.L318:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	ecx, 512	 #,
.LEHB14:
	call	_Znwy	 #
.LEHE14:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:684: 	    *__cur = this->_M_allocate_node();
	mov	QWORD PTR [rbx], rax	 # MEM[(struct Vec2 * *)__cur_37], tmp152
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:683: 	  for (__cur = __nstart; __cur < __nfinish; ++__cur)
	add	rbx, 8	 # __cur,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:683: 	  for (__cur = __nstart; __cur < __nfinish; ++__cur)
	cmp	rbx, rsi	 # __cur, __nfinish
	jb	.L318	 #,
.L317:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	mov	rax, QWORD PTR [r12]	 # _40, *__nstart_27
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:672: 					% __deque_buf_size(sizeof(_Tp)));
	and	ebp, 63	 # tmp137,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:668:       this->_M_impl._M_finish._M_set_node(__nfinish - 1);
	sub	rsi, 8	 # tmp141,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	mov	rdx, QWORD PTR [rsi]	 # _38, MEM[(struct Vec2 * *)__nfinish_28 + -8B]
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:267: 	_M_last = _M_first + difference_type(_S_buffer_size());
	lea	rcx, 512[rax]	 # tmp136,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:669:       this->_M_impl._M_start._M_cur = _M_impl._M_start._M_first;
	vmovq	xmm3, rax	 # _40, _40
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:267: 	_M_last = _M_first + difference_type(_S_buffer_size());
	vmovq	xmm2, rcx	 # tmp136, tmp136
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:671: 					+ __num_elements
	lea	rcx, [rdx+rbp*8]	 # tmp139,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:669:       this->_M_impl._M_start._M_cur = _M_impl._M_start._M_first;
	vpinsrq	xmm2, xmm2, r12, 1	 # tmp146, tmp136, __n
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:671: 					+ __num_elements
	vmovq	xmm1, rcx	 # tmp139, tmp139
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:267: 	_M_last = _M_first + difference_type(_S_buffer_size());
	lea	rcx, 512[rdx]	 # tmp140,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:669:       this->_M_impl._M_start._M_cur = _M_impl._M_start._M_first;
	vpinsrq	xmm1, xmm1, rdx, 1	 # tmp144, tmp139, _38
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:267: 	_M_last = _M_first + difference_type(_S_buffer_size());
	vmovq	xmm0, rcx	 # tmp140, tmp140
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:669:       this->_M_impl._M_start._M_cur = _M_impl._M_start._M_first;
	vpinsrq	xmm0, xmm0, rsi, 1	 # tmp143, tmp140, tmp141
	vinserti128	ymm1, ymm1, xmm0, 0x1	 # tmp142, tmp144, tmp143
	vpunpcklqdq	xmm0, xmm3, xmm3	 # tmp147, _40
	vinserti128	ymm0, ymm0, xmm2, 0x1	 # tmp145, tmp147, tmp146
	vinserti64x4	zmm0, zmm0, ymm1, 0x1	 # tmp135, tmp145, tmp142
	vmovdqu64	ZMMWORD PTR 16[rdi], zmm0	 # MEM <vector(8) long long unsigned int> [(void *)this_22(D) + 16B], tmp135
	vzeroupper
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:673:     }
	add	rsp, 32	 #,
	pop	rbx	 #
	pop	rsi	 #
	pop	rdi	 #
	pop	rbp	 #
	pop	r12	 #
	ret	
	.p2align 4,,10
	.p2align 3
.L331:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	lea	rcx, 0[0+rax*8]	 # prephitmp_21,
	jmp	.L316	 #
.L326:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:686:       __catch(...)
	mov	rcx, rax	 # tmp128, tmp153
	vzeroupper
	call	__cxa_begin_catch	 #
.L320:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:699:       for (_Map_pointer __n = __nstart; __n < __nfinish; ++__n)
	cmp	r12, rbx	 # __n, __cur
	jnb	.L332	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	rcx, QWORD PTR [r12]	 #, MEM[(struct Vec2 * *)__n_56]
	mov	edx, 512	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:699:       for (_Map_pointer __n = __nstart; __n < __nfinish; ++__n)
	add	r12, 8	 # __n,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
	jmp	.L320	 #
.L332:
.LEHB15:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:689: 	  __throw_exception_again;
	call	__cxa_rethrow	 #
.LEHE15:
.L327:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:686:       __catch(...)
	mov	rbx, rax	 # tmp130, tmp154
	vzeroupper
	call	__cxa_end_catch	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:659:       __catch(...)
	mov	rcx, rbx	 #, tmp130
	call	__cxa_begin_catch	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	rax, QWORD PTR 8[rdi]	 # tmp159, this_22(D)->_M_impl.D.135525._M_map_size
	mov	rcx, QWORD PTR [rdi]	 #, this_22(D)->_M_impl.D.135525._M_map
	lea	rdx, 0[0+rax*8]	 # tmp133,
	call	_ZdlPvy	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:663: 	  this->_M_impl._M_map_size = 0;
	xor	eax, eax	 #
	mov	QWORD PTR [rdi], rax	 # this_22(D)->_M_impl.D.135525._M_map,
	mov	QWORD PTR 8[rdi], rax	 # this_22(D)->_M_impl.D.135525._M_map_size,
.LEHB16:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:664: 	  __throw_exception_again;
	call	__cxa_rethrow	 #
.LEHE16:
.L325:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:659:       __catch(...)
	mov	rbx, rax	 # tmp148, tmp155
	vzeroupper
	call	__cxa_end_catch	 #
	mov	rcx, rbx	 #, tmp148
.LEHB17:
	call	_Unwind_Resume	 #
	nop	
.LEHE17:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
	.align 4
.LLSDA7054:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT7054-.LLSDATTD7054
.LLSDATTD7054:
	.byte	0x1
	.uleb128 .LLSDACSE7054-.LLSDACSB7054
.LLSDACSB7054:
	.uleb128 .LEHB13-.LFB7054
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB14-.LFB7054
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L326-.LFB7054
	.uleb128 0x1
	.uleb128 .LEHB15-.LFB7054
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L327-.LFB7054
	.uleb128 0x3
	.uleb128 .LEHB16-.LFB7054
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L325-.LFB7054
	.uleb128 0
	.uleb128 .LEHB17-.LFB7054
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
.LLSDACSE7054:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align 4
	.long	0

.LLSDATT7054:
	.section	.text$_ZNSt11_Deque_baseIN5Lenia4Vec2IjEESaIS2_EE17_M_initialize_mapEy,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt10_HashtableIN5Lenia4Vec2IjEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_8Vec2HashIjEENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEyRKy,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNSt10_HashtableIN5Lenia4Vec2IjEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_8Vec2HashIjEENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEyRKy
	.def	_ZNSt10_HashtableIN5Lenia4Vec2IjEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_8Vec2HashIjEENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEyRKy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt10_HashtableIN5Lenia4Vec2IjEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_8Vec2HashIjEENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEyRKy
_ZNSt10_HashtableIN5Lenia4Vec2IjEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_8Vec2HashIjEENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEyRKy:
.LFB7641:
	push	rbp	 #
	.seh_pushreg	rbp
	push	rdi	 #
	.seh_pushreg	rdi
	push	rsi	 #
	.seh_pushreg	rsi
	push	rbx	 #
	.seh_pushreg	rbx
	sub	rsp, 40	 #,
	.seh_stackalloc	40
	.seh_endprologue
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:436: 	if (__builtin_expect(__bkt_count == 1, false))
	cmp	rdx, 1	 # __bkt_count,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2544:     _Hashtable<_Key, _Value, _Alloc, _ExtractKey, _Equal,
	mov	rsi, rcx	 # this, tmp128
	mov	rbx, rdx	 # __bkt_count, tmp129
	mov	rdi, r8	 # __state, tmp130
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:436: 	if (__builtin_expect(__bkt_count == 1, false))
	je	.L354	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:130: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	movabs	rax, 1152921504606846975	 # tmp109,
	cmp	rax, rdx	 # tmp109, __bkt_count
	jb	.L355	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	lea	rbp, 0[0+rdx*8]	 # _47,
	mov	rcx, rbp	 #, _47
.LEHB18:
	call	_Znwy	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable_policy.h:2055:       __builtin_memset(__p, 0, __bkt_count * sizeof(__node_base_ptr));
	mov	r8, rbp	 #, _47
	xor	edx, edx	 #
	mov	rcx, rax	 #, _23
	lea	rbp, 48[rsi]	 # tmp125,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	rdi, rax	 # _23, tmp131
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable_policy.h:2055:       __builtin_memset(__p, 0, __bkt_count * sizeof(__node_base_ptr));
	call	memset	 #
.L335:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:465:       { return static_cast<__node_ptr>(_M_before_begin._M_nxt); }
	mov	r8, QWORD PTR 16[rsi]	 # _39, MEM[(const struct _Hashtable *)this_4(D)]._M_before_begin._M_nxt
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2573:       _M_before_begin._M_nxt = nullptr;
	mov	QWORD PTR 16[rsi], 0	 # this_4(D)->_M_before_begin._M_nxt,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2575:       while (__p)
	test	r8, r8	 # _39
	je	.L338	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2584: 	      __new_buckets[__bkt] = &_M_before_begin;
	lea	r11, 16[rsi]	 # tmp127,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2574:       std::size_t __bbegin_bkt = 0;
	xor	r10d, r10d	 # __bbegin_bkt
	jmp	.L342	 #
	.p2align 4,,10
	.p2align 3
.L339:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2591: 	      __p->_M_nxt = __new_buckets[__bkt]->_M_nxt;
	mov	rdx, QWORD PTR [r9]	 # _12, _13->_M_nxt
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2575:       while (__p)
	test	r8, r8	 # _39
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2591: 	      __p->_M_nxt = __new_buckets[__bkt]->_M_nxt;
	mov	QWORD PTR [rcx], rdx	 # __p_37->D.150149._M_nxt, _12
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2592: 	      __new_buckets[__bkt]->_M_nxt = __p;
	mov	rax, QWORD PTR [rax]	 # _74, *_14
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2592: 	      __new_buckets[__bkt]->_M_nxt = __p;
	mov	QWORD PTR [rax], rcx	 # _74->_M_nxt, __p
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2575:       while (__p)
	je	.L338	 #,
.L342:
	mov	rcx, r8	 # __p, _39
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable_policy.h:524:     { return __num % __den; }
	xor	edx, edx	 # tmp117
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable_policy.h:377:       { return static_cast<_Hash_node*>(this->_M_nxt); }
	mov	r8, QWORD PTR [r8]	 # _39, MEM[(const struct _Hash_node *)__p_43].D.150149._M_nxt
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable_policy.h:524:     { return __num % __den; }
	mov	rax, QWORD PTR 16[rcx]	 # MEM[(const struct _Hash_node_value &)__p_37 + 8].D.145110._M_hash_code, MEM[(const struct _Hash_node_value &)__p_37 + 8].D.145110._M_hash_code
	div	rbx	 # __bkt_count
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2580: 	  if (!__new_buckets[__bkt])
	lea	rax, [rdi+rdx*8]	 # _14,
	mov	r9, QWORD PTR [rax]	 # _13, *_14
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2580: 	  if (!__new_buckets[__bkt])
	test	r9, r9	 # _13
	jne	.L339	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2582: 	      __p->_M_nxt = _M_before_begin._M_nxt;
	mov	r9, QWORD PTR 16[rsi]	 # _76, this_4(D)->_M_before_begin._M_nxt
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2582: 	      __p->_M_nxt = _M_before_begin._M_nxt;
	mov	QWORD PTR [rcx], r9	 # __p_37->D.150149._M_nxt, _76
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2583: 	      _M_before_begin._M_nxt = __p;
	mov	QWORD PTR 16[rsi], rcx	 # this_4(D)->_M_before_begin._M_nxt, __p
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2584: 	      __new_buckets[__bkt] = &_M_before_begin;
	mov	QWORD PTR [rax], r11	 # *_14, tmp127
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2585: 	      if (__p->_M_nxt)
	cmp	QWORD PTR [rcx], 0	 # __p_37->D.150149._M_nxt,
	je	.L340	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2586: 		__new_buckets[__bbegin_bkt] = __p;
	mov	QWORD PTR [rdi+r10*8], rcx	 # *_84, __p
.L340:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2575:       while (__p)
	test	r8, r8	 # _39
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2587: 	      __bbegin_bkt = __bkt;
	mov	r10, rdx	 # __bbegin_bkt, tmp117
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2575:       while (__p)
	jne	.L342	 #,
.L338:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:456:       { _M_deallocate_buckets(_M_buckets, _M_bucket_count); }
	mov	rcx, QWORD PTR [rsi]	 # _35, this_4(D)->_M_buckets
	mov	rdx, QWORD PTR 8[rsi]	 # _34, this_4(D)->_M_bucket_count
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:448: 	if (_M_uses_single_bucket(__bkts))
	cmp	rcx, rbp	 # _35, tmp125
	je	.L343	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	sal	rdx, 3	 # tmp122,
	call	_ZdlPvy	 #
.L343:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2599:       _M_bucket_count = __bkt_count;
	mov	QWORD PTR 8[rsi], rbx	 # this_4(D)->_M_bucket_count, __bkt_count
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2600:       _M_buckets = __new_buckets;
	mov	QWORD PTR [rsi], rdi	 # this_4(D)->_M_buckets, _23
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2559:     }
	add	rsp, 40	 #,
	pop	rbx	 #
	pop	rsi	 #
	pop	rdi	 #
	pop	rbp	 #
	ret	
	.p2align 4,,10
	.p2align 3
.L354:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:439: 	    return &_M_single_bucket;
	lea	rbp, 48[rcx]	 # tmp125,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:438: 	    _M_single_bucket = nullptr;
	mov	QWORD PTR 48[rcx], 0	 # this_4(D)->_M_single_bucket,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:439: 	    return &_M_single_bucket;
	mov	rdi, rbp	 # _23, tmp125
	jmp	.L335	 #
	.p2align 4,,10
	.p2align 3
.L355:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:134: 	    if (__n > (std::size_t(-1) / sizeof(_Tp)))
	movabs	rax, 2305843009213693951	 # tmp110,
	cmp	rax, rdx	 # tmp110, __bkt_count
	jnb	.L337	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:135: 	      std::__throw_bad_array_new_length();
	call	_ZSt28__throw_bad_array_new_lengthv	 #
.L337:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:136: 	    std::__throw_bad_alloc();
	call	_ZSt17__throw_bad_allocv	 #
.LEHE18:
.L346:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2552:       __catch(...)
	mov	rcx, rax	 # tmp123, tmp132
	vzeroupper
	call	__cxa_begin_catch	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2556: 	  _M_rehash_policy._M_reset(__state);
	mov	rax, QWORD PTR [rdi]	 # _2, *__state_8(D)
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable_policy.h:576:     { _M_next_resize = __state; }
	mov	QWORD PTR 40[rsi], rax	 # MEM[(struct _Prime_rehash_policy *)this_4(D) + 32B]._M_next_resize, _2
.LEHB19:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2557: 	  __throw_exception_again;
	call	__cxa_rethrow	 #
.LEHE19:
.L347:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2552:       __catch(...)
	mov	rbx, rax	 # tmp124, tmp133
	vzeroupper
	call	__cxa_end_catch	 #
	mov	rcx, rbx	 #, tmp124
.LEHB20:
	call	_Unwind_Resume	 #
	nop	
.LEHE20:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
	.align 4
.LLSDA7641:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT7641-.LLSDATTD7641
.LLSDATTD7641:
	.byte	0x1
	.uleb128 .LLSDACSE7641-.LLSDACSB7641
.LLSDACSB7641:
	.uleb128 .LEHB18-.LFB7641
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L346-.LFB7641
	.uleb128 0x1
	.uleb128 .LEHB19-.LFB7641
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L347-.LFB7641
	.uleb128 0
	.uleb128 .LEHB20-.LFB7641
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0
	.uleb128 0
.LLSDACSE7641:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT7641:
	.section	.text$_ZNSt10_HashtableIN5Lenia4Vec2IjEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_8Vec2HashIjEENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEyRKy,"x"
	.linkonce discard
	.seh_endproc
	.text
	.align 2
	.p2align 4
	.def	_ZNSt10_HashtableIN5Lenia4Vec2IjEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_8Vec2HashIjEENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS2_SI_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb1EEEEEEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb1EEEbEOT_OT0_RKT1_.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZNSt10_HashtableIN5Lenia4Vec2IjEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_8Vec2HashIjEENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS2_SI_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb1EEEEEEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb1EEEbEOT_OT0_RKT1_.isra.0
_ZNSt10_HashtableIN5Lenia4Vec2IjEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_8Vec2HashIjEENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS2_SI_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb1EEEEEEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb1EEEbEOT_OT0_RKT1_.isra.0:
.LFB7750:
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
	sub	rsp, 88	 #,
	.seh_stackalloc	88
	.seh_endprologue
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2244: 	if (size() <= __small_size_threshold())
	cmp	QWORD PTR 24[rcx], 0	 # MEM[(const struct _Hashtable *)this_1(D)]._M_element_count,
 # include/gl_setup.hpp:162:             std::size_t hy = std::hash<T>{}(v.y);
	mov	r12d, DWORD PTR 4[rdx]	 #, __k_4(D)->y
 # include/gl_setup.hpp:161:             std::size_t hx = std::hash<T>{}(v.x);
	mov	r10d, DWORD PTR [rdx]	 #, __k_4(D)->x
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2238:       _Hashtable<_Key, _Value, _Alloc, _ExtractKey, _Equal,
	mov	rbx, rcx	 # this, tmp172
	mov	rbp, rdx	 # __k, tmp173
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2244: 	if (size() <= __small_size_threshold())
	je	.L357	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:797:       { return __hash_code_base::_M_bucket_index(__c, _M_bucket_count); }
	mov	r9, QWORD PTR 8[rcx]	 # _10, MEM[(const struct _Hashtable *)this_1(D)]._M_bucket_count
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/functional_hash.h:166:   _Cxx_hashtable_define_trivial_hash(unsigned int)
	mov	esi, r12d	 # pretmp_31, pretmp_31
	mov	eax, r10d	 # pretmp_32, pretmp_32
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable_policy.h:524:     { return __num % __den; }
	xor	edx, edx	 # tmp140
 # include/gl_setup.hpp:163:             return hx ^ (hy << 1);
	add	rsi, rsi	 # tmp138
 # include/gl_setup.hpp:163:             return hx ^ (hy << 1);
	xor	rsi, rax	 # _98, pretmp_32
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable_policy.h:524:     { return __num % __den; }
	mov	rax, rsi	 # tmp141, _98
	div	r9	 # _10
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:1969: 	__node_base_ptr __prev_p = _M_buckets[__bkt];
	mov	rax, QWORD PTR [rcx]	 # MEM[(struct __node_base * * *)this_1(D)], MEM[(struct __node_base * * *)this_1(D)]
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable_policy.h:524:     { return __num % __den; }
	mov	r13, rdx	 # tmp140, tmp140
	mov	rdi, rdx	 # __bkt, tmp140
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:1969: 	__node_base_ptr __prev_p = _M_buckets[__bkt];
	mov	r11, QWORD PTR [rax+rdx*8]	 # __prev_p, *_45
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:1970: 	if (!__prev_p)
	test	r11, r11	 # __prev_p
	je	.L358	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:1973: 	for (__node_ptr __p = static_cast<__node_ptr>(__prev_p->_M_nxt);;
	mov	rdx, QWORD PTR [r11]	 # __p, __prev_p_46->_M_nxt
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable_policy.h:1702:       { return __c == __n._M_hash_code; }
	mov	rcx, QWORD PTR 16[rdx]	 # prephitmp_20, MEM[(const struct _Hash_node_code_cache &)__p_47 + 16]._M_hash_code
	jmp	.L368	 #
	.p2align 4,,10
	.p2align 3
.L364:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:1979: 	    if (!__p->_M_nxt || _M_bucket_index(*__p->_M_next()) != __bkt)
	mov	r8, QWORD PTR [rdx]	 # _52, __p_48->D.150149._M_nxt
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:1979: 	    if (!__p->_M_nxt || _M_bucket_index(*__p->_M_next()) != __bkt)
	test	r8, r8	 # _52
	je	.L358	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable_policy.h:1359:       { return _RangeHash{}(__n._M_hash_code, __bkt_count); }
	mov	rcx, QWORD PTR 16[r8]	 # prephitmp_20, MEM[(const struct _Hash_node_value &)_52 + 8].D.145110._M_hash_code
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:1981: 	    __prev_p = __p;
	mov	r11, rdx	 # __prev_p, __p
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable_policy.h:524:     { return __num % __den; }
	xor	edx, edx	 # tmp149
	mov	rax, rcx	 # tmp150, prephitmp_20
	div	r9	 # _10
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:1979: 	    if (!__p->_M_nxt || _M_bucket_index(*__p->_M_next()) != __bkt)
	cmp	r13, rdx	 # tmp140, tmp149
	jne	.L358	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:1974: 	     __p = __p->_M_next())
	mov	rdx, r8	 # __p, _52
.L368:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable_policy.h:1750: 	{ return _S_equals(__c, __n) && _M_key_equals_tr(__k, __n); }
	cmp	rcx, rsi	 # prephitmp_20, _98
	jne	.L364	 #,
 # include/gl_setup.hpp:135:             return x == other.x && y == other.y;
	cmp	r10d, DWORD PTR 8[rdx]	 # pretmp_32, MEM[(const struct Vec2 &)__p_48 + 8].x
	jne	.L364	 #,
 # include/gl_setup.hpp:135:             return x == other.x && y == other.y;
	cmp	r12d, DWORD PTR 12[rdx]	 # pretmp_31, MEM[(const struct Vec2 &)__p_48 + 8].y
	jne	.L364	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2253: 	  if (__node_ptr __node = _M_find_node_tr(__bkt, __k, __code))
	cmp	QWORD PTR [r11], 0	 # MEM[(struct _Hash_node_base *)__prev_p_59]._M_nxt,
	je	.L358	 #,
.L391:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2266:       }
	add	rsp, 88	 #,
	pop	rbx	 #
	pop	rsi	 #
	pop	rdi	 #
	pop	rbp	 #
	pop	r12	 #
	pop	r13	 #
	ret	
	.p2align 4,,10
	.p2align 3
.L357:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:465:       { return static_cast<__node_ptr>(_M_before_begin._M_nxt); }
	mov	rax, QWORD PTR 16[rcx]	 # __it$D139607$_M_cur, MEM[(const struct _Hashtable *)this_1(D)]._M_before_begin._M_nxt
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2245: 	  for (auto __it = begin(); __it != end(); ++__it)
	test	rax, rax	 # __it$D139607$_M_cur
	jne	.L363	 #,
	.p2align 4,,10
	.p2align 3
.L360:
 # include/gl_setup.hpp:163:             return hx ^ (hy << 1);
	add	r12, r12	 # tmp144
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable_policy.h:524:     { return __num % __den; }
	xor	edx, edx	 # __bkt
 # include/gl_setup.hpp:163:             return hx ^ (hy << 1);
	mov	rsi, r12	 # tmp144, tmp144
	xor	rsi, r10	 # tmp144, pretmp_32
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable_policy.h:524:     { return __num % __den; }
	mov	rax, rsi	 # tmp147, _98
	div	QWORD PTR 8[rbx]	 # MEM[(const struct _Hashtable *)this_1(D)]._M_bucket_count
	mov	rdi, rdx	 # __bkt, __bkt
.L358:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	ecx, 24	 #,
.LEHB21:
	call	_Znwy	 #
.LEHE21:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2159: 	= _M_rehash_policy._M_need_rehash(_M_bucket_count, _M_element_count,
	lea	rcx, 48[rsp]	 # tmp154,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable_policy.h:313:     _Hash_node_base() noexcept : _M_nxt() { }
	mov	QWORD PTR [rax], 0	 # MEM[(struct _Hash_node_base *)_78]._M_nxt,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2159: 	= _M_rehash_policy._M_need_rehash(_M_bucket_count, _M_element_count,
	lea	rdx, 32[rbx]	 # tmp157,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	r12, rax	 # _78, tmp174
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_construct.h:97:     { return ::new((void*)__location) _Tp(std::forward<_Args>(__args)...); }
	mov	rax, QWORD PTR 0[rbp]	 # vect_SR.1058_6.1063, MEM <vector(2) unsigned int> [(unsigned int *)__k_4(D)]
	mov	QWORD PTR 8[r12], rax	 # MEM <vector(2) unsigned int> [(unsigned int *)_78 + 8B], vect_SR.1058_6.1063
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2157:       const __rehash_state& __saved_state = _M_rehash_policy._M_state();
	mov	rax, QWORD PTR 40[rbx]	 # MEM[(const struct _Prime_rehash_policy *)this_1(D) + 32B]._M_next_resize, MEM[(const struct _Prime_rehash_policy *)this_1(D) + 32B]._M_next_resize
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2159: 	= _M_rehash_policy._M_need_rehash(_M_bucket_count, _M_element_count,
	mov	QWORD PTR 32[rsp], 1	 #,
	mov	r9, QWORD PTR 24[rbx]	 #, this_1(D)->_M_element_count
	mov	r8, QWORD PTR 8[rbx]	 #, this_1(D)->_M_bucket_count
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2157:       const __rehash_state& __saved_state = _M_rehash_policy._M_state();
	mov	QWORD PTR 72[rsp], rax	 # D.166045, MEM[(const struct _Prime_rehash_policy *)this_1(D) + 32B]._M_next_resize
.LEHB22:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2159: 	= _M_rehash_policy._M_need_rehash(_M_bucket_count, _M_element_count,
	call	_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEyyy	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2162:       if (__do_rehash.first)
	cmp	BYTE PTR 48[rsp], 0	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2159: 	= _M_rehash_policy._M_need_rehash(_M_bucket_count, _M_element_count,
	mov	rdx, QWORD PTR 56[rsp]	 # __do_rehash,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2162:       if (__do_rehash.first)
	jne	.L392	 #,
.L369:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:1996:       if (_M_buckets[__bkt])
	mov	r8, QWORD PTR [rbx]	 # _79, this_1(D)->_M_buckets
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable_policy.h:1372:       { __n._M_hash_code = __c; }
	mov	QWORD PTR 16[r12], rsi	 # MEM[(struct _Hash_node_code_cache &)_78 + 16]._M_hash_code, _98
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:1996:       if (_M_buckets[__bkt])
	lea	rcx, [r8+rdi*8]	 # _81,
	mov	rax, QWORD PTR [rcx]	 # _82, *_81
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:1996:       if (_M_buckets[__bkt])
	test	rax, rax	 # _82
	je	.L370	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2000: 	  __node->_M_nxt = _M_buckets[__bkt]->_M_nxt;
	mov	rax, QWORD PTR [rax]	 # _83, _82->_M_nxt
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2000: 	  __node->_M_nxt = _M_buckets[__bkt]->_M_nxt;
	mov	QWORD PTR [r12], rax	 # MEM[(struct __node_type *)_78].D.150149._M_nxt, _83
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2001: 	  _M_buckets[__bkt]->_M_nxt = __node;
	mov	rax, QWORD PTR [rcx]	 # _84, *_81
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2001: 	  _M_buckets[__bkt]->_M_nxt = __node;
	mov	QWORD PTR [rax], r12	 # _84->_M_nxt, _78
.L371:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2172:       ++_M_element_count;
	add	QWORD PTR 24[rbx], 1	 # this_1(D)->_M_element_count,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2266:       }
	add	rsp, 88	 #,
	pop	rbx	 #
	pop	rsi	 #
	pop	rdi	 #
	pop	rbp	 #
	pop	r12	 #
	pop	r13	 #
	ret	
	.p2align 4,,10
	.p2align 3
.L393:
 # include/gl_setup.hpp:135:             return x == other.x && y == other.y;
	cmp	DWORD PTR 12[rax], r12d	 # MEM[(const struct Vec2 &)__it$D139607$_M_cur_33 + 8].y, pretmp_31
	je	.L391	 #,
.L361:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable_policy.h:377:       { return static_cast<_Hash_node*>(this->_M_nxt); }
	mov	rax, QWORD PTR [rax]	 # __it$D139607$_M_cur, MEM[(const struct _Hash_node *)__it$D139607$_M_cur_33].D.150149._M_nxt
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2245: 	  for (auto __it = begin(); __it != end(); ++__it)
	test	rax, rax	 # __it$D139607$_M_cur
	je	.L360	 #,
.L363:
 # include/gl_setup.hpp:135:             return x == other.x && y == other.y;
	cmp	DWORD PTR 8[rax], r10d	 # MEM[(const struct Vec2 &)__it$D139607$_M_cur_33 + 8].x, pretmp_32
	jne	.L361	 #,
	jmp	.L393	 #
	.p2align 4,,10
	.p2align 3
.L392:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2164: 	  _M_rehash(__do_rehash.second, __saved_state);
	lea	r8, 72[rsp]	 #,
	mov	rcx, rbx	 #, this
	call	_ZNSt10_HashtableIN5Lenia4Vec2IjEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_8Vec2HashIjEENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEyRKy	 #
.LEHE22:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable_policy.h:524:     { return __num % __den; }
	mov	rax, rsi	 # tmp162, _98
	xor	edx, edx	 # __bkt
	div	QWORD PTR 8[rbx]	 # MEM[(const struct _Hashtable *)this_1(D)]._M_bucket_count
	mov	rdi, rdx	 # __bkt, __bkt
	jmp	.L369	 #
	.p2align 4,,10
	.p2align 3
.L370:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2008: 	  __node->_M_nxt = _M_before_begin._M_nxt;
	mov	rax, QWORD PTR 16[rbx]	 # _85, this_1(D)->_M_before_begin._M_nxt
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2009: 	  _M_before_begin._M_nxt = __node;
	mov	QWORD PTR 16[rbx], r12	 # this_1(D)->_M_before_begin._M_nxt, _78
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2011: 	  if (__node->_M_nxt)
	test	rax, rax	 # _85
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2008: 	  __node->_M_nxt = _M_before_begin._M_nxt;
	mov	QWORD PTR [r12], rax	 # MEM[(struct __node_type *)_78].D.150149._M_nxt, _85
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2011: 	  if (__node->_M_nxt)
	je	.L372	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable_policy.h:524:     { return __num % __den; }
	mov	rax, QWORD PTR 16[rax]	 # MEM[(const struct _Hash_node_value &)_85 + 8].D.145110._M_hash_code, MEM[(const struct _Hash_node_value &)_85 + 8].D.145110._M_hash_code
	xor	edx, edx	 # tmp166
	div	QWORD PTR 8[rbx]	 # MEM[(const struct _Hashtable *)this_1(D)]._M_bucket_count
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2014: 	    _M_buckets[_M_bucket_index(*__node->_M_next())] = __node;
	mov	QWORD PTR [r8+rdx*8], r12	 # *_91, _78
.L372:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2016: 	  _M_buckets[__bkt] = &_M_before_begin;
	lea	rax, 16[rbx]	 # tmp168,
	mov	QWORD PTR [rcx], rax	 # *_81, tmp168
	jmp	.L371	 #
.L375:
	mov	rbx, rax	 # tmp169, tmp175
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	rcx, r12	 #, _78
	mov	edx, 24	 #,
	vzeroupper
	call	_ZdlPvy	 #
	mov	rcx, rbx	 #, tmp169
.LEHB23:
	call	_Unwind_Resume	 #
	nop	
.LEHE23:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA7750:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7750-.LLSDACSB7750
.LLSDACSB7750:
	.uleb128 .LEHB21-.LFB7750
	.uleb128 .LEHE21-.LEHB21
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB22-.LFB7750
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L375-.LFB7750
	.uleb128 0
	.uleb128 .LEHB23-.LFB7750
	.uleb128 .LEHE23-.LEHB23
	.uleb128 0
	.uleb128 0
.LLSDACSE7750:
	.text
	.seh_endproc
	.section .rdata,"dr"
.LC9:
	.ascii "vector::_M_realloc_insert\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN5Lenia10Simulation22CalculateBoundingBoxesEv
	.def	_ZN5Lenia10Simulation22CalculateBoundingBoxesEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Lenia10Simulation22CalculateBoundingBoxesEv
_ZN5Lenia10Simulation22CalculateBoundingBoxesEv:
.LFB5929:
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
	sub	rsp, 360	 #,
	.seh_stackalloc	360
	vmovaps	XMMWORD PTR 288[rsp], xmm6	 #,
	.seh_savexmm	xmm6, 288
	vmovaps	XMMWORD PTR 304[rsp], xmm7	 #,
	.seh_savexmm	xmm7, 304
	vmovaps	XMMWORD PTR 320[rsp], xmm8	 #,
	.seh_savexmm	xmm8, 320
	vmovaps	XMMWORD PTR 336[rsp], xmm9	 #,
	.seh_savexmm	xmm9, 336
	.seh_endprologue
 # include/gl_setup.hpp:69: 			glGetNamedBufferSubData(m_ID, 0, m_data.size(), &m_data[0]);
	mov	rax, QWORD PTR .refptr.glad_glGetNamedBufferSubData[rip]	 # tmp475,
	xor	edx, edx	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:1126: 	return *(this->_M_impl._M_start + __n);
	mov	r9, QWORD PTR 56[rcx]	 # _21, MEM[(struct vector *)this_15(D) + 56B].D.115405._M_impl.D.114711._M_start
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:990:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	mov	r8, QWORD PTR 64[rcx]	 # tmp470, MEM[(const struct vector *)this_15(D) + 56B].D.115405._M_impl.D.114711._M_finish
 # source/simulation.cpp:108: 	void Simulation::CalculateBoundingBoxes() noexcept {
	mov	r13, rcx	 # this, tmp749
 # include/gl_setup.hpp:69: 			glGetNamedBufferSubData(m_ID, 0, m_data.size(), &m_data[0]);
	mov	ecx, DWORD PTR 48[rcx]	 # MEM[(struct Buffer *)this_15(D) + 48B].m_ID, MEM[(struct Buffer *)this_15(D) + 48B].m_ID
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:990:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	sub	r8, r9	 # tmp470, _21
 # include/gl_setup.hpp:69: 			glGetNamedBufferSubData(m_ID, 0, m_data.size(), &m_data[0]);
	sar	r8, 2	 #,
	call	[QWORD PTR [rax]]	 # glad_glGetNamedBufferSubData
 # source/simulation.cpp:111: 		for (size_t i = 0; i < m_h; i++) 
	cmp	QWORD PTR 8[r13], 0	 # this_15(D)->m_h,
	je	.L395	 #,
 # source/simulation.cpp:112: 		for (size_t j = 0; j < m_w; j++) {
	mov	rdx, QWORD PTR 0[r13]	 # _86, this_15(D)->m_w
	mov	QWORD PTR 48[rsp], r13	 # %sfp, this
 # source/simulation.cpp:80: 		BoundingBox box = BoundingBox(x - padding, y - padding, x + padding, y + padding);
	vmovdqa	xmm9, XMMWORD PTR .LC7[rip]	 # tmp746,
 # source/simulation.cpp:112: 		for (size_t j = 0; j < m_w; j++) {
	mov	QWORD PTR 64[rsp], 1	 # %sfp,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable_policy.h:541:     : _M_max_load_factor(__z), _M_next_resize(0) { }
	vmovss	xmm7, DWORD PTR .LC8[rip]	 # tmp748,
 # source/simulation.cpp:110: 		std::vector<BoundingBox> boxes = std::vector<BoundingBox>();	
	mov	QWORD PTR 104[rsp], 0	 # %sfp,
	mov	QWORD PTR 88[rsp], 0	 # %sfp,
	mov	QWORD PTR 96[rsp], 0	 # %sfp,
.L396:
	mov	rax, QWORD PTR 64[rsp]	 # ivtmp.1193, %sfp
	sub	rax, 1	 # i,
 # source/simulation.cpp:112: 		for (size_t j = 0; j < m_w; j++) {
	test	rdx, rdx	 # _86
	mov	QWORD PTR 56[rsp], rax	 # %sfp, i
	je	.L585	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:1554:       { emplace_back(std::move(__x)); }
	lea	r14, 128[rsp]	 # tmp744,
 # source/simulation.cpp:112: 		for (size_t j = 0; j < m_w; j++) {
	xor	r13d, r13d	 # j
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:1554:       { emplace_back(std::move(__x)); }
	mov	QWORD PTR 32[rsp], r13	 # %sfp, j
.L500:
 # source/simulation.cpp:118: 			if (m_readBuffer.m_data[i * m_w + j] > 0) {
	mov	rax, QWORD PTR 56[rsp]	 # tmp477, %sfp
 # source/simulation.cpp:118: 			if (m_readBuffer.m_data[i * m_w + j] > 0) {
	vxorps	xmm0, xmm0, xmm0	 # tmp481
 # source/simulation.cpp:118: 			if (m_readBuffer.m_data[i * m_w + j] > 0) {
	mov	rcx, QWORD PTR 48[rsp]	 # this, %sfp
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:1126: 	return *(this->_M_impl._M_start + __n);
	mov	rsi, QWORD PTR 32[rsp]	 # j, %sfp
 # source/simulation.cpp:118: 			if (m_readBuffer.m_data[i * m_w + j] > 0) {
	imul	rax, rdx	 # tmp477, _86
 # source/simulation.cpp:118: 			if (m_readBuffer.m_data[i * m_w + j] > 0) {
	mov	rcx, QWORD PTR 56[rcx]	 # MEM[(struct vector *)this_15(D) + 56B].D.115405._M_impl.D.114711._M_start, MEM[(struct vector *)this_15(D) + 56B].D.115405._M_impl.D.114711._M_start
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:1126: 	return *(this->_M_impl._M_start + __n);
	add	rax, rsi	 # tmp478, j
 # source/simulation.cpp:118: 			if (m_readBuffer.m_data[i * m_w + j] > 0) {
	vmovss	xmm1, DWORD PTR [rcx+rax*4]	 # *_32, *_32
	vcomiss	xmm1, xmm0	 # *_32, tmp481
	ja	.L586	 #,
.L397:
 # source/simulation.cpp:112: 		for (size_t j = 0; j < m_w; j++) {
	add	QWORD PTR 32[rsp], 1	 # %sfp,
	mov	rax, QWORD PTR 32[rsp]	 # j, %sfp
 # source/simulation.cpp:112: 		for (size_t j = 0; j < m_w; j++) {
	cmp	rax, rdx	 # j, _86
	jb	.L500	 #,
 # source/simulation.cpp:111: 		for (size_t i = 0; i < m_h; i++) 
	mov	rax, QWORD PTR 48[rsp]	 # this, %sfp
	mov	rsi, QWORD PTR 64[rsp]	 # ivtmp.1193, %sfp
	cmp	rsi, QWORD PTR 8[rax]	 # ivtmp.1193, this_15(D)->m_h
	jnb	.L587	 #,
	add	QWORD PTR 64[rsp], 1	 # %sfp,
	jmp	.L396	 #
	.p2align 4,,10
	.p2align 3
.L586:
	mov	eax, DWORD PTR 64[rsp]	 # tmp827, %sfp
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:460:       { _M_initialize_map(0); }
	lea	r13, 208[rsp]	 # tmp737,
	xor	edx, edx	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:152:       : _M_cur(), _M_first(), _M_last(), _M_node() { }
	vpxor	xmm0, xmm0, xmm0	 # tmp487
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:517: 	: _M_map(), _M_map_size(), _M_start(), _M_finish()
	mov	QWORD PTR 208[rsp], 0	 # MEM[(struct _Deque_impl_data *)&points]._M_map,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:460:       { _M_initialize_map(0); }
	mov	rcx, r13	 #, tmp737
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:152:       : _M_cur(), _M_first(), _M_last(), _M_node() { }
	vmovdqu64	ZMMWORD PTR 224[rsp], zmm0	 # MEM <vector(8) long long unsigned int> [(void *)&points + 16B], tmp487
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:517: 	: _M_map(), _M_map_size(), _M_start(), _M_finish()
	mov	QWORD PTR 216[rsp], 0	 # MEM[(struct _Deque_impl_data *)&points]._M_map_size,
	sub	eax, 1	 # _1518,
	vmovd	xmm6, eax	 # _1518, _1518
 # source/simulation.cpp:80: 		BoundingBox box = BoundingBox(x - padding, y - padding, x + padding, y + padding);
	vpinsrd	xmm6, xmm6, esi, 1	 # tmp483, _1518, j
	vpunpcklqdq	xmm8, xmm6, xmm6	 # tmp482, tmp483, tmp483
	vpaddd	xmm8, xmm8, xmm9	 # vect__61.1152, tmp482, tmp746
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:460:       { _M_initialize_map(0); }
	vzeroupper
	call	_ZNSt11_Deque_baseIN5Lenia4Vec2IjEESaIS2_EE17_M_initialize_mapEy	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:168: 	    != this->_M_impl._M_finish._M_last - 1)
	mov	rax, QWORD PTR 272[rsp]	 # tmp828, points.D.136175._M_impl.D.135525._M_finish._M_last
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:167: 	if (this->_M_impl._M_finish._M_cur
	mov	rbx, QWORD PTR 256[rsp]	 # _126, points.D.136175._M_impl.D.135525._M_finish._M_cur
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:168: 	    != this->_M_impl._M_finish._M_last - 1)
	lea	rdx, -8[rax]	 # _128,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:167: 	if (this->_M_impl._M_finish._M_cur
	cmp	rbx, rdx	 # _126, _128
	je	.L399	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:173: 	    ++this->_M_impl._M_finish._M_cur;
	lea	rdi, 8[rbx]	 # _129,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:374: 	  + (__x._M_cur - __x._M_first)
	mov	rax, QWORD PTR 264[rsp]	 # prephitmp_332, MEM[(const struct _Self &)&points + 48]._M_first
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_construct.h:97:     { return ::new((void*)__location) _Tp(std::forward<_Args>(__args)...); }
	vmovq	QWORD PTR [rbx], xmm6	 # MEM <vector(2) unsigned int> [(unsigned int *)_126], tmp483
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:167: 	if (this->_M_impl._M_finish._M_cur
	cmp	rdi, rdx	 # _129, _128
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:373: 	  * (__x._M_node - __y._M_node - bool(__x._M_node))
	mov	rbp, QWORD PTR 280[rsp]	 # prephitmp_308, MEM[(const struct _Self &)&points + 48]._M_node
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:173: 	    ++this->_M_impl._M_finish._M_cur;
	mov	QWORD PTR 256[rsp], rdi	 # points.D.136175._M_impl.D.135525._M_finish._M_cur, _129
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:375: 	  + (__y._M_last - __y._M_cur);
	mov	rsi, QWORD PTR 224[rsp]	 # prephitmp_314, MEM[(const struct _Self &)&points + 16]._M_cur
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:167: 	if (this->_M_impl._M_finish._M_cur
	je	.L415	 #,
.L590:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:173: 	    ++this->_M_impl._M_finish._M_cur;
	lea	rbx, 8[rdi]	 # _118,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_construct.h:97:     { return ::new((void*)__location) _Tp(std::forward<_Args>(__args)...); }
	vmovq	QWORD PTR [rdi], xmm6	 # MEM <vector(2) unsigned int> [(unsigned int *)prephitmp_198], tmp483
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:167: 	if (this->_M_impl._M_finish._M_cur
	cmp	rdx, rbx	 # _128, _118
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:173: 	    ++this->_M_impl._M_finish._M_cur;
	mov	QWORD PTR 256[rsp], rbx	 # points.D.136175._M_impl.D.135525._M_finish._M_cur, _118
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:167: 	if (this->_M_impl._M_finish._M_cur
	je	.L431	 #,
.L592:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:173: 	    ++this->_M_impl._M_finish._M_cur;
	lea	rdi, 8[rbx]	 # _107,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_construct.h:97:     { return ::new((void*)__location) _Tp(std::forward<_Args>(__args)...); }
	vmovq	QWORD PTR [rbx], xmm6	 # MEM <vector(2) unsigned int> [(unsigned int *)prephitmp_321], tmp483
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:167: 	if (this->_M_impl._M_finish._M_cur
	cmp	rdi, rdx	 # _107, _128
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:173: 	    ++this->_M_impl._M_finish._M_cur;
	mov	QWORD PTR 256[rsp], rdi	 # points.D.136175._M_impl.D.135525._M_finish._M_cur, _107
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:167: 	if (this->_M_impl._M_finish._M_cur
	je	.L445	 #,
.L594:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_construct.h:97:     { return ::new((void*)__location) _Tp(std::forward<_Args>(__args)...); }
	vmovq	QWORD PTR [rdi], xmm6	 # MEM <vector(2) unsigned int> [(unsigned int *)prephitmp_422], tmp483
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:173: 	    ++this->_M_impl._M_finish._M_cur;
	lea	rbx, 8[rdi]	 # _186,
.L446:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:530:       _Hashtable() = default;
	lea	rdi, 192[rsp]	 # tmp736,
 # source/simulation.cpp:83: 		while (!points.empty()) {
	cmp	rsi, rbx	 # prephitmp_314, _186
 # source/simulation.cpp:81: 		std::unordered_set<Vec2<u32>, Vec2Hash<u32>> checked = std::unordered_set<Vec2<u32>, Vec2Hash<u32>>();
	vpxor	xmm0, xmm0, xmm0	 # tmp653
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:173: 	    ++this->_M_impl._M_finish._M_cur;
	mov	QWORD PTR 256[rsp], rbx	 # points.D.136175._M_impl.D.135525._M_finish._M_cur, _186
 # source/simulation.cpp:81: 		std::unordered_set<Vec2<u32>, Vec2Hash<u32>> checked = std::unordered_set<Vec2<u32>, Vec2Hash<u32>>();
	vmovdqu	YMMWORD PTR 168[rsp], ymm0	 # MEM <char[32]> [(struct unordered_set *)&checked + 24B], tmp653
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:530:       _Hashtable() = default;
	mov	QWORD PTR 144[rsp], rdi	 # MEM[(struct _Hashtable *)&checked]._M_buckets, tmp736
	mov	QWORD PTR 152[rsp], 1	 # MEM[(struct _Hashtable *)&checked]._M_bucket_count,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable_policy.h:313:     _Hash_node_base() noexcept : _M_nxt() { }
	mov	QWORD PTR 160[rsp], 0	 # MEM[(struct _Hash_node_base *)&checked + 16B]._M_nxt,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable_policy.h:541:     : _M_max_load_factor(__z), _M_next_resize(0) { }
	vmovss	DWORD PTR 176[rsp], xmm7	 # MEM[(struct _Prime_rehash_policy *)&checked + 32B]._M_max_load_factor, tmp748
 # source/simulation.cpp:83: 		while (!points.empty()) {
	je	.L526	 #,
	vzeroupper
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:212: 	if (_M_cur == _M_first)
	cmp	rbx, rax	 # _186, prephitmp_332
	je	.L460	 #,
.L588:
 # source/simulation.cpp:84: 			Vec2<u32> current = points.top();
	mov	rax, QWORD PTR -8[rbx]	 # MEM[(const struct Vec2 &)_186 + 18446744073709551608], MEM[(const struct Vec2 &)_186 + 18446744073709551608]
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:1603: 	    --this->_M_impl._M_finish._M_cur;
	sub	rbx, 8	 # _186,
	mov	QWORD PTR 256[rsp], rbx	 # MEM[(struct deque *)&points].D.136175._M_impl.D.135525._M_finish._M_cur, _186
 # source/simulation.cpp:84: 			Vec2<u32> current = points.top();
	mov	QWORD PTR 136[rsp], rax	 # current, MEM[(const struct Vec2 &)_186 + 18446744073709551608]
.L461:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:1654:       if (size() <= __small_size_threshold())
	cmp	QWORD PTR 168[rsp], 0	 # MEM[(const struct _Hashtable *)&checked]._M_element_count,
	mov	ebp, DWORD PTR 136[rsp]	 # SR.1094, MEM[(unsigned int *)&current]
	mov	r12d, DWORD PTR 140[rsp]	 # _92, MEM[(unsigned int *)&current + 4B]
	jne	.L462	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:465:       { return static_cast<__node_ptr>(_M_before_begin._M_nxt); }
	mov	rax, QWORD PTR 160[rsp]	 # __it$D139607$_M_cur, MEM[(const struct _Hashtable *)&checked]._M_before_begin._M_nxt
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:1656: 	  for (auto __it = begin(); __it != end(); ++__it)
	test	rax, rax	 # __it$D139607$_M_cur
	jne	.L466	 #,
	jmp	.L463	 #
	.p2align 4,,10
	.p2align 3
.L464:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable_policy.h:377:       { return static_cast<_Hash_node*>(this->_M_nxt); }
	mov	rax, QWORD PTR [rax]	 # __it$D139607$_M_cur, MEM[(const struct _Hash_node *)__it$D139607$_M_cur_11].D.150149._M_nxt
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:1656: 	  for (auto __it = begin(); __it != end(); ++__it)
	test	rax, rax	 # __it$D139607$_M_cur
	je	.L463	 #,
.L466:
 # include/gl_setup.hpp:135:             return x == other.x && y == other.y;
	cmp	ebp, DWORD PTR 8[rax]	 # SR.1094, MEM[(const struct Vec2 &)__it$D139607$_M_cur_11 + 8].x
	jne	.L464	 #,
 # include/gl_setup.hpp:135:             return x == other.x && y == other.y;
	cmp	r12d, DWORD PTR 12[rax]	 # _92, MEM[(const struct Vec2 &)__it$D139607$_M_cur_11 + 8].y
	jne	.L464	 #,
.L465:
 # source/simulation.cpp:83: 		while (!points.empty()) {
	cmp	rbx, rsi	 # _186, prephitmp_314
	je	.L481	 #,
	.p2align 4,,10
	.p2align 3
.L597:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:169:        : _M_cur(__x._M_cur), _M_first(__x._M_first),
	mov	rax, QWORD PTR 264[rsp]	 # prephitmp_332, MEM[(const struct _Deque_iterator &)&points + 48]._M_first
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:170: 	 _M_last(__x._M_last), _M_node(__x._M_node) { }
	mov	rbp, QWORD PTR 280[rsp]	 # prephitmp_308, MEM[(const struct _Deque_iterator &)&points + 48]._M_node
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:212: 	if (_M_cur == _M_first)
	cmp	rbx, rax	 # _186, prephitmp_332
	jne	.L588	 #,
	.p2align 4,,10
	.p2align 3
.L460:
 # source/simulation.cpp:84: 			Vec2<u32> current = points.top();
	mov	rax, QWORD PTR -8[rbp]	 # MEM[(struct Vec2 * *)prephitmp_1184 + -8B], MEM[(struct Vec2 * *)prephitmp_1184 + -8B]
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	rcx, rbx	 #, _186
	mov	edx, 512	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:564:       this->_M_impl._M_finish._M_set_node(this->_M_impl._M_finish._M_node - 1);
	sub	rbp, 8	 # tmp662,
 # source/simulation.cpp:84: 			Vec2<u32> current = points.top();
	mov	rax, QWORD PTR 504[rax]	 # MEM[(const struct Vec2 &)_787 + 504], MEM[(const struct Vec2 &)_787 + 504]
	mov	QWORD PTR 136[rsp], rax	 # current, MEM[(const struct Vec2 &)_787 + 504]
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	mov	rax, QWORD PTR 0[rbp]	 # _605, MEM[(struct Vec2 * *)prephitmp_1184 + -8B]
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:565:       this->_M_impl._M_finish._M_cur = this->_M_impl._M_finish._M_last - 1;
	lea	rbx, 504[rax]	 # _186,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:267: 	_M_last = _M_first + difference_type(_S_buffer_size());
	lea	rcx, 512[rax]	 # tmp661,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:565:       this->_M_impl._M_finish._M_cur = this->_M_impl._M_finish._M_last - 1;
	vmovq	xmm5, rbx	 # _186, _186
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:267: 	_M_last = _M_first + difference_type(_S_buffer_size());
	vmovq	xmm1, rcx	 # tmp661, tmp661
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:565:       this->_M_impl._M_finish._M_cur = this->_M_impl._M_finish._M_last - 1;
	vpinsrq	xmm0, xmm5, rax, 1	 # tmp664, _186, _605
	vpinsrq	xmm1, xmm1, rbp, 1	 # tmp663, tmp661, tmp662
	vinserti128	ymm0, ymm0, xmm1, 0x1	 # tmp660, tmp664, tmp663
	vmovdqu	YMMWORD PTR 256[rsp], ymm0	 # MEM <vector(4) long long unsigned int> [(void *)&points + 48B], tmp660
	vzeroupper
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:568:     }
	jmp	.L461	 #
	.p2align 4,,10
	.p2align 3
.L399:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:373: 	  * (__x._M_node - __y._M_node - bool(__x._M_node))
	mov	r15, QWORD PTR 280[rsp]	 # _137, MEM[(const struct _Self &)&points + 48]._M_node
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:374: 	  + (__x._M_cur - __x._M_first)
	mov	rdx, rbx	 # tmp495, _126
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:492: 	if (size() == max_size())
	movabs	r11, 2305843009213693951	 # tmp504,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:373: 	  * (__x._M_node - __y._M_node - bool(__x._M_node))
	mov	r12, QWORD PTR 248[rsp]	 # _138, MEM[(const struct _Self &)&points + 16]._M_node
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:375: 	  + (__y._M_last - __y._M_cur);
	mov	rsi, QWORD PTR 224[rsp]	 # prephitmp_314, MEM[(const struct _Self &)&points + 16]._M_cur
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:373: 	  * (__x._M_node - __y._M_node - bool(__x._M_node))
	mov	rbp, r15	 # _139, _137
	sub	rbp, r12	 # _139, _138
	mov	r10, rbp	 # tmp490, _139
	sar	r10, 3	 # tmp490,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:373: 	  * (__x._M_node - __y._M_node - bool(__x._M_node))
	cmp	r15, 1	 # _137,
	mov	rax, r10	 # tmp493, tmp490
	adc	rax, -1	 # tmp493,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:374: 	  + (__x._M_cur - __x._M_first)
	sub	rdx, QWORD PTR 264[rsp]	 # tmp495, MEM[(const struct _Self &)&points + 48]._M_first
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:373: 	  * (__x._M_node - __y._M_node - bool(__x._M_node))
	sal	rax, 6	 # tmp494,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:374: 	  + (__x._M_cur - __x._M_first)
	sar	rdx, 3	 # tmp497,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:374: 	  + (__x._M_cur - __x._M_first)
	add	rax, rdx	 # tmp498, tmp497
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:375: 	  + (__y._M_last - __y._M_cur);
	mov	rdx, QWORD PTR 240[rsp]	 # tmp499, MEM[(const struct _Self &)&points + 16]._M_last
	sub	rdx, rsi	 # tmp499, prephitmp_314
	sar	rdx, 3	 # tmp502,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:375: 	  + (__y._M_last - __y._M_cur);
	add	rax, rdx	 # tmp503, tmp502
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:492: 	if (size() == max_size())
	cmp	rax, r11	 # tmp503, tmp504
	je	.L417	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:2171: 	    - (this->_M_impl._M_finish._M_node - this->_M_impl._M_map))
	mov	r9, QWORD PTR 208[rsp]	 # _171, points.D.136175._M_impl.D.135525._M_map
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:2171: 	    - (this->_M_impl._M_finish._M_node - this->_M_impl._M_map))
	mov	rax, r15	 # tmp506, _137
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:2170: 	if (__nodes_to_add + 1 > this->_M_impl._M_map_size
	mov	rdi, QWORD PTR 216[rsp]	 # _169, points.D.136175._M_impl.D.135525._M_map_size
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:2171: 	    - (this->_M_impl._M_finish._M_node - this->_M_impl._M_map))
	sub	rax, r9	 # tmp506, _171
	sar	rax, 3	 # tmp508,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:2171: 	    - (this->_M_impl._M_finish._M_node - this->_M_impl._M_map))
	mov	rdx, rdi	 # tmp509, _169
	sub	rdx, rax	 # tmp509, tmp508
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:2170: 	if (__nodes_to_add + 1 > this->_M_impl._M_map_size
	cmp	rdx, 1	 # tmp509,
	jbe	.L589	 #,
.L402:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:507: 	    this->_M_impl._M_finish._M_set_node(this->_M_impl._M_finish._M_node
	lea	rbp, 8[r15]	 # prephitmp_308,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	ecx, 512	 #,
	call	_Znwy	 #
	mov	rdi, rax	 # _129, tmp751
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:497: 	*(this->_M_impl._M_finish._M_node + 1) = this->_M_allocate_node();
	mov	QWORD PTR 8[r15], rax	 # MEM[(struct Vec2 * *)prephitmp_216 + 8B], _129
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:168: 	    != this->_M_impl._M_finish._M_last - 1)
	lea	rdx, 504[rdi]	 # _128,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:509: 	    this->_M_impl._M_finish._M_cur = this->_M_impl._M_finish._M_first;
	vmovq	xmm2, rdi	 # _129, _129
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_construct.h:97:     { return ::new((void*)__location) _Tp(std::forward<_Args>(__args)...); }
	vmovq	QWORD PTR [rbx], xmm6	 # MEM <vector(2) unsigned int> [(unsigned int *)_126], tmp483
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:267: 	_M_last = _M_first + difference_type(_S_buffer_size());
	lea	rax, 512[rax]	 # tmp530,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:167: 	if (this->_M_impl._M_finish._M_cur
	cmp	rdi, rdx	 # _129, _128
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:509: 	    this->_M_impl._M_finish._M_cur = this->_M_impl._M_finish._M_first;
	vpunpcklqdq	xmm0, xmm2, xmm2	 # tmp532, _129
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:267: 	_M_last = _M_first + difference_type(_S_buffer_size());
	vmovq	xmm1, rax	 # tmp530, tmp530
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:516:       }
	mov	rax, rdi	 # prephitmp_332, _129
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:509: 	    this->_M_impl._M_finish._M_cur = this->_M_impl._M_finish._M_first;
	vpinsrq	xmm1, xmm1, rbp, 1	 # tmp531, tmp530, prephitmp_308
	vinserti128	ymm0, ymm0, xmm1, 0x1	 # tmp529, tmp532, tmp531
	vmovdqu	YMMWORD PTR 256[rsp], ymm0	 # MEM <vector(4) long long unsigned int> [(void *)&points + 48B], tmp529
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:167: 	if (this->_M_impl._M_finish._M_cur
	jne	.L590	 #,
	.p2align 4,,10
	.p2align 3
.L415:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:373: 	  * (__x._M_node - __y._M_node - bool(__x._M_node))
	mov	r12, QWORD PTR 248[rsp]	 # _254, MEM[(const struct _Self &)&points + 16]._M_node
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:373: 	  * (__x._M_node - __y._M_node - bool(__x._M_node))
	mov	r15, rbp	 # _255, prephitmp_308
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:374: 	  + (__x._M_cur - __x._M_first)
	mov	rdx, rdi	 # tmp538, _129
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:492: 	if (size() == max_size())
	movabs	r11, 2305843009213693951	 # tmp547,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:373: 	  * (__x._M_node - __y._M_node - bool(__x._M_node))
	sub	r15, r12	 # _255, _254
	mov	r8, r15	 # tmp533, _255
	sar	r8, 3	 # tmp533,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:373: 	  * (__x._M_node - __y._M_node - bool(__x._M_node))
	cmp	rbp, 1	 # prephitmp_308,
	mov	rcx, r8	 # tmp536, tmp533
	adc	rcx, -1	 # tmp536,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:374: 	  + (__x._M_cur - __x._M_first)
	sub	rdx, rax	 # tmp538, prephitmp_332
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:375: 	  + (__y._M_last - __y._M_cur);
	mov	rax, QWORD PTR 240[rsp]	 # tmp542, MEM[(const struct _Self &)&points + 16]._M_last
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:373: 	  * (__x._M_node - __y._M_node - bool(__x._M_node))
	sal	rcx, 6	 # tmp537,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:374: 	  + (__x._M_cur - __x._M_first)
	sar	rdx, 3	 # tmp540,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:374: 	  + (__x._M_cur - __x._M_first)
	add	rdx, rcx	 # tmp541, tmp537
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:375: 	  + (__y._M_last - __y._M_cur);
	sub	rax, rsi	 # tmp542, prephitmp_314
	sar	rax, 3	 # tmp545,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:375: 	  + (__y._M_last - __y._M_cur);
	add	rdx, rax	 # tmp546, tmp545
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:492: 	if (size() == max_size())
	cmp	rdx, r11	 # tmp546, tmp547
	je	.L571	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:2171: 	    - (this->_M_impl._M_finish._M_node - this->_M_impl._M_map))
	mov	r9, QWORD PTR 208[rsp]	 # _287, points.D.136175._M_impl.D.135525._M_map
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:2171: 	    - (this->_M_impl._M_finish._M_node - this->_M_impl._M_map))
	mov	rax, rbp	 # tmp548, prephitmp_308
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:2170: 	if (__nodes_to_add + 1 > this->_M_impl._M_map_size
	mov	rbx, QWORD PTR 216[rsp]	 # _285, points.D.136175._M_impl.D.135525._M_map_size
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:2171: 	    - (this->_M_impl._M_finish._M_node - this->_M_impl._M_map))
	sub	rax, r9	 # tmp548, _287
	sar	rax, 3	 # tmp550,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:2171: 	    - (this->_M_impl._M_finish._M_node - this->_M_impl._M_map))
	mov	rdx, rbx	 # tmp551, _285
	sub	rdx, rax	 # tmp551, tmp550
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:2170: 	if (__nodes_to_add + 1 > this->_M_impl._M_map_size
	cmp	rdx, 1	 # tmp551,
	jbe	.L591	 #,
	vzeroupper
.L418:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	ecx, 512	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:507: 	    this->_M_impl._M_finish._M_set_node(this->_M_impl._M_finish._M_node
	add	rbp, 8	 # prephitmp_308,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwy	 #
	mov	rbx, rax	 # _118, tmp753
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:497: 	*(this->_M_impl._M_finish._M_node + 1) = this->_M_allocate_node();
	mov	QWORD PTR 0[rbp], rax	 # MEM[(struct Vec2 * *)prephitmp_166 + 8B], _118
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:168: 	    != this->_M_impl._M_finish._M_last - 1)
	lea	rdx, 504[rbx]	 # _128,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	vmovq	xmm3, rbx	 # _118, _118
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_construct.h:97:     { return ::new((void*)__location) _Tp(std::forward<_Args>(__args)...); }
	vmovq	QWORD PTR [rdi], xmm6	 # MEM <vector(2) unsigned int> [(unsigned int *)prephitmp_198], tmp483
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:267: 	_M_last = _M_first + difference_type(_S_buffer_size());
	lea	rax, 512[rax]	 # tmp572,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:167: 	if (this->_M_impl._M_finish._M_cur
	cmp	rdx, rbx	 # _128, _118
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:265: 	_M_node = __new_node;
	mov	QWORD PTR 280[rsp], rbp	 # MEM[(struct _Deque_iterator *)&points + 48B]._M_node, prephitmp_308
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	vpinsrq	xmm0, xmm3, rax, 1	 # tmp571, _118, tmp572
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:173: 	    ++this->_M_impl._M_finish._M_cur;
	mov	QWORD PTR 256[rsp], rbx	 # points.D.136175._M_impl.D.135525._M_finish._M_cur, _118
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:516:       }
	mov	rax, rbx	 # prephitmp_332, _118
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	vmovdqu	XMMWORD PTR 264[rsp], xmm0	 # MEM <vector(2) long long unsigned int> [(struct Vec2 * *)&points + 56B], tmp571
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:167: 	if (this->_M_impl._M_finish._M_cur
	jne	.L592	 #,
	.p2align 4,,10
	.p2align 3
.L431:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:373: 	  * (__x._M_node - __y._M_node - bool(__x._M_node))
	mov	r12, QWORD PTR 248[rsp]	 # _370, MEM[(const struct _Self &)&points + 16]._M_node
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:373: 	  * (__x._M_node - __y._M_node - bool(__x._M_node))
	mov	r15, rbp	 # _371, prephitmp_308
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:374: 	  + (__x._M_cur - __x._M_first)
	mov	rdx, rbx	 # tmp578, _118
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:492: 	if (size() == max_size())
	movabs	r11, 2305843009213693951	 # tmp587,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:373: 	  * (__x._M_node - __y._M_node - bool(__x._M_node))
	sub	r15, r12	 # _371, _370
	mov	r8, r15	 # tmp573, _371
	sar	r8, 3	 # tmp573,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:373: 	  * (__x._M_node - __y._M_node - bool(__x._M_node))
	cmp	rbp, 1	 # prephitmp_308,
	mov	rcx, r8	 # tmp576, tmp573
	adc	rcx, -1	 # tmp576,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:374: 	  + (__x._M_cur - __x._M_first)
	sub	rdx, rax	 # tmp578, prephitmp_332
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:375: 	  + (__y._M_last - __y._M_cur);
	mov	rax, QWORD PTR 240[rsp]	 # tmp582, MEM[(const struct _Self &)&points + 16]._M_last
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:373: 	  * (__x._M_node - __y._M_node - bool(__x._M_node))
	sal	rcx, 6	 # tmp577,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:374: 	  + (__x._M_cur - __x._M_first)
	sar	rdx, 3	 # tmp580,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:374: 	  + (__x._M_cur - __x._M_first)
	add	rdx, rcx	 # tmp581, tmp577
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:375: 	  + (__y._M_last - __y._M_cur);
	sub	rax, rsi	 # tmp582, prephitmp_314
	sar	rax, 3	 # tmp585,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:375: 	  + (__y._M_last - __y._M_cur);
	add	rdx, rax	 # tmp586, tmp585
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:492: 	if (size() == max_size())
	cmp	rdx, r11	 # tmp586, tmp587
	je	.L571	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:2171: 	    - (this->_M_impl._M_finish._M_node - this->_M_impl._M_map))
	mov	r9, QWORD PTR 208[rsp]	 # _403, points.D.136175._M_impl.D.135525._M_map
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:2171: 	    - (this->_M_impl._M_finish._M_node - this->_M_impl._M_map))
	mov	rax, rbp	 # tmp588, prephitmp_308
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:2170: 	if (__nodes_to_add + 1 > this->_M_impl._M_map_size
	mov	rdi, QWORD PTR 216[rsp]	 # _401, points.D.136175._M_impl.D.135525._M_map_size
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:2171: 	    - (this->_M_impl._M_finish._M_node - this->_M_impl._M_map))
	sub	rax, r9	 # tmp588, _403
	sar	rax, 3	 # tmp590,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:2171: 	    - (this->_M_impl._M_finish._M_node - this->_M_impl._M_map))
	mov	rdx, rdi	 # tmp591, _401
	sub	rdx, rax	 # tmp591, tmp590
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:2170: 	if (__nodes_to_add + 1 > this->_M_impl._M_map_size
	cmp	rdx, 1	 # tmp591,
	jbe	.L593	 #,
	vzeroupper
.L433:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	ecx, 512	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:507: 	    this->_M_impl._M_finish._M_set_node(this->_M_impl._M_finish._M_node
	add	rbp, 8	 # prephitmp_308,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwy	 #
	mov	rdi, rax	 # _107, tmp755
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:497: 	*(this->_M_impl._M_finish._M_node + 1) = this->_M_allocate_node();
	mov	QWORD PTR 0[rbp], rax	 # MEM[(struct Vec2 * *)prephitmp_191 + 8B], _107
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:168: 	    != this->_M_impl._M_finish._M_last - 1)
	lea	rdx, 504[rdi]	 # _128,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	vmovq	xmm4, rdi	 # _107, _107
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_construct.h:97:     { return ::new((void*)__location) _Tp(std::forward<_Args>(__args)...); }
	vmovq	QWORD PTR [rbx], xmm6	 # MEM <vector(2) unsigned int> [(unsigned int *)prephitmp_321], tmp483
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:267: 	_M_last = _M_first + difference_type(_S_buffer_size());
	lea	rax, 512[rax]	 # tmp612,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:167: 	if (this->_M_impl._M_finish._M_cur
	cmp	rdi, rdx	 # _107, _128
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:265: 	_M_node = __new_node;
	mov	QWORD PTR 280[rsp], rbp	 # MEM[(struct _Deque_iterator *)&points + 48B]._M_node, prephitmp_308
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	vpinsrq	xmm0, xmm4, rax, 1	 # tmp611, _107, tmp612
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:173: 	    ++this->_M_impl._M_finish._M_cur;
	mov	QWORD PTR 256[rsp], rdi	 # points.D.136175._M_impl.D.135525._M_finish._M_cur, _107
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:516:       }
	mov	rax, rdi	 # prephitmp_332, _107
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	vmovdqu	XMMWORD PTR 264[rsp], xmm0	 # MEM <vector(2) long long unsigned int> [(struct Vec2 * *)&points + 56B], tmp611
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:167: 	if (this->_M_impl._M_finish._M_cur
	jne	.L594	 #,
	.p2align 4,,10
	.p2align 3
.L445:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:373: 	  * (__x._M_node - __y._M_node - bool(__x._M_node))
	mov	r12, QWORD PTR 248[rsp]	 # _486, MEM[(const struct _Self &)&points + 16]._M_node
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:373: 	  * (__x._M_node - __y._M_node - bool(__x._M_node))
	mov	r15, rbp	 # _487, prephitmp_308
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:374: 	  + (__x._M_cur - __x._M_first)
	mov	rdx, rdi	 # tmp618, _107
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:492: 	if (size() == max_size())
	movabs	r11, 2305843009213693951	 # tmp627,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:373: 	  * (__x._M_node - __y._M_node - bool(__x._M_node))
	sub	r15, r12	 # _487, _486
	mov	r8, r15	 # tmp613, _487
	sar	r8, 3	 # tmp613,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:373: 	  * (__x._M_node - __y._M_node - bool(__x._M_node))
	cmp	rbp, 1	 # prephitmp_308,
	mov	rcx, r8	 # tmp616, tmp613
	adc	rcx, -1	 # tmp616,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:374: 	  + (__x._M_cur - __x._M_first)
	sub	rdx, rax	 # tmp618, prephitmp_332
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:375: 	  + (__y._M_last - __y._M_cur);
	mov	rax, QWORD PTR 240[rsp]	 # tmp622, MEM[(const struct _Self &)&points + 16]._M_last
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:373: 	  * (__x._M_node - __y._M_node - bool(__x._M_node))
	sal	rcx, 6	 # tmp617,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:374: 	  + (__x._M_cur - __x._M_first)
	sar	rdx, 3	 # tmp620,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:374: 	  + (__x._M_cur - __x._M_first)
	add	rdx, rcx	 # tmp621, tmp617
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:375: 	  + (__y._M_last - __y._M_cur);
	sub	rax, rsi	 # tmp622, prephitmp_314
	sar	rax, 3	 # tmp625,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:375: 	  + (__y._M_last - __y._M_cur);
	add	rdx, rax	 # tmp626, tmp625
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:492: 	if (size() == max_size())
	cmp	rdx, r11	 # tmp626, tmp627
	je	.L571	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:2171: 	    - (this->_M_impl._M_finish._M_node - this->_M_impl._M_map))
	mov	r9, QWORD PTR 208[rsp]	 # _519, points.D.136175._M_impl.D.135525._M_map
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:2171: 	    - (this->_M_impl._M_finish._M_node - this->_M_impl._M_map))
	mov	rax, rbp	 # tmp628, prephitmp_308
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:2170: 	if (__nodes_to_add + 1 > this->_M_impl._M_map_size
	mov	rbx, QWORD PTR 216[rsp]	 # _517, points.D.136175._M_impl.D.135525._M_map_size
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:2171: 	    - (this->_M_impl._M_finish._M_node - this->_M_impl._M_map))
	sub	rax, r9	 # tmp628, _519
	sar	rax, 3	 # tmp630,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:2171: 	    - (this->_M_impl._M_finish._M_node - this->_M_impl._M_map))
	mov	rdx, rbx	 # tmp631, _517
	sub	rdx, rax	 # tmp631, tmp630
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:2170: 	if (__nodes_to_add + 1 > this->_M_impl._M_map_size
	cmp	rdx, 1	 # tmp631,
	jbe	.L595	 #,
	vzeroupper
.L447:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	ecx, 512	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:507: 	    this->_M_impl._M_finish._M_set_node(this->_M_impl._M_finish._M_node
	add	rbp, 8	 # prephitmp_308,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwy	 #
	mov	rbx, rax	 # _186, tmp757
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:497: 	*(this->_M_impl._M_finish._M_node + 1) = this->_M_allocate_node();
	mov	QWORD PTR 0[rbp], rax	 # MEM[(struct Vec2 * *)prephitmp_1176 + 8B], _186
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	vmovq	xmm5, rbx	 # _186, _186
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_construct.h:97:     { return ::new((void*)__location) _Tp(std::forward<_Args>(__args)...); }
	vmovq	QWORD PTR [rdi], xmm6	 # MEM <vector(2) unsigned int> [(unsigned int *)prephitmp_422], tmp483
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:267: 	_M_last = _M_first + difference_type(_S_buffer_size());
	lea	rax, 512[rax]	 # tmp652,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:265: 	_M_node = __new_node;
	mov	QWORD PTR 280[rsp], rbp	 # MEM[(struct _Deque_iterator *)&points + 48B]._M_node, prephitmp_308
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	vpinsrq	xmm0, xmm5, rax, 1	 # tmp651, _186, tmp652
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:516:       }
	mov	rax, rbx	 # prephitmp_332, _186
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	vmovdqu	XMMWORD PTR 264[rsp], xmm0	 # MEM <vector(2) long long unsigned int> [(struct Vec2 * *)&points + 56B], tmp651
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:516:       }
	jmp	.L446	 #
	.p2align 4,,10
	.p2align 3
.L526:
 # source/simulation.cpp:83: 		while (!points.empty()) {
	mov	rcx, rdi	 # pretmp_1225, tmp736
	mov	r8d, 8	 # _1222,
	vzeroupper
.L459:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2510:       __builtin_memset(_M_buckets, 0,
	xor	edx, edx	 #
	call	memset	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:456:       { _M_deallocate_buckets(_M_buckets, _M_bucket_count); }
	mov	rcx, QWORD PTR 144[rsp]	 # _667, MEM[(struct _Hashtable *)&checked]._M_buckets
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2512:       _M_element_count = 0;
	mov	QWORD PTR 168[rsp], 0	 # MEM[(struct _Hashtable *)&checked]._M_element_count,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:456:       { _M_deallocate_buckets(_M_buckets, _M_bucket_count); }
	mov	rdx, QWORD PTR 152[rsp]	 # _666, MEM[(struct _Hashtable *)&checked]._M_bucket_count
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2513:       _M_before_begin._M_nxt = nullptr;
	mov	QWORD PTR 160[rsp], 0	 # MEM[(struct _Hashtable *)&checked]._M_before_begin._M_nxt,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:448: 	if (_M_uses_single_bucket(__bkts))
	cmp	rcx, rdi	 # _667, tmp736
	je	.L484	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	sal	rdx, 3	 # tmp702,
	call	_ZdlPvy	 #
.L484:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:620:       if (this->_M_impl._M_map)
	mov	rdi, QWORD PTR 208[rsp]	 # _656, points._M_impl.D.135525._M_map
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:620:       if (this->_M_impl._M_map)
	test	rdi, rdi	 # _656
	je	.L485	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:622: 	  _M_destroy_nodes(this->_M_impl._M_start._M_node,
	mov	rax, QWORD PTR 280[rsp]	 # tmp911, points._M_impl.D.135525._M_finish._M_node
	mov	rbx, QWORD PTR 248[rsp]	 # __n, points._M_impl.D.135525._M_start._M_node
	lea	rsi, 8[rax]	 # _658,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:699:       for (_Map_pointer __n = __nstart; __n < __nfinish; ++__n)
	cmp	rbx, rsi	 # __n, _658
	jnb	.L487	 #,
	.p2align 4,,10
	.p2align 3
.L486:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	rcx, QWORD PTR [rbx]	 # MEM[(struct Vec2 * *)__n_780], MEM[(struct Vec2 * *)__n_780]
	mov	edx, 512	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:699:       for (_Map_pointer __n = __nstart; __n < __nfinish; ++__n)
	add	rbx, 8	 # __n,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:699:       for (_Map_pointer __n = __nstart; __n < __nfinish; ++__n)
	cmp	rbx, rsi	 # __n, _658
	jb	.L486	 #,
.L487:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	rax, QWORD PTR 216[rsp]	 # tmp912, points._M_impl.D.135525._M_map_size
	mov	rcx, rdi	 #, _656
	lea	rdx, 0[0+rax*8]	 # tmp704,
	call	_ZdlPvy	 #
.L485:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:114: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	mov	rax, QWORD PTR 88[rsp]	 # boxes$D118790$_M_impl$D118129$_M_finish, %sfp
	cmp	QWORD PTR 104[rsp], rax	 # %sfp, boxes$D118790$_M_impl$D118129$_M_finish
	je	.L488	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_construct.h:97:     { return ::new((void*)__location) _Tp(std::forward<_Args>(__args)...); }
	vmovdqu	XMMWORD PTR [rax], xmm8	 # MEM <vector(4) unsigned int> [(unsigned int *)boxes$D118790$_M_impl$D118129$_M_finish_963], vect__61.1152
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:119: 	    ++this->_M_impl._M_finish;
	add	rax, 16	 # boxes$D118790$_M_impl$D118129$_M_finish,
	mov	QWORD PTR 88[rsp], rax	 # %sfp, boxes$D118790$_M_impl$D118129$_M_finish
.L489:
 # source/simulation.cpp:112: 		for (size_t j = 0; j < m_w; j++) {
	mov	rax, QWORD PTR 48[rsp]	 # this, %sfp
	mov	rdx, QWORD PTR [rax]	 # _86, this_15(D)->m_w
	jmp	.L397	 #
	.p2align 4,,10
	.p2align 3
.L462:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/functional_hash.h:166:   _Cxx_hashtable_define_trivial_hash(unsigned int)
	mov	eax, r12d	 # _623, _92
	mov	r9, QWORD PTR 152[rsp]	 # _618, MEM[(long long unsigned int *)&checked + 8B]
	mov	r8d, ebp	 # _621, SR.1094
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable_policy.h:524:     { return __num % __den; }
	xor	edx, edx	 # tmp666
 # include/gl_setup.hpp:163:             return hx ^ (hy << 1);
	lea	r10, [rax+rax]	 # tmp665,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/functional_hash.h:166:   _Cxx_hashtable_define_trivial_hash(unsigned int)
	mov	QWORD PTR 72[rsp], rax	 # %sfp, _623
 # include/gl_setup.hpp:163:             return hx ^ (hy << 1);
	xor	r10, r8	 # _625, _621
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable_policy.h:524:     { return __num % __den; }
	mov	rax, r10	 # tmp667, _625
	div	r9	 # _618
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:1939:       __node_base_ptr __prev_p = _M_buckets[__bkt];
	mov	rax, QWORD PTR 144[rsp]	 # MEM[(struct __node_base * * *)&checked], MEM[(struct __node_base * * *)&checked]
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable_policy.h:524:     { return __num % __den; }
	mov	r11, rdx	 # tmp666, tmp666
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:1939:       __node_base_ptr __prev_p = _M_buckets[__bkt];
	mov	r15, QWORD PTR [rax+rdx*8]	 # __prev_p, *_633
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:1940:       if (!__prev_p)
	test	r15, r15	 # __prev_p
	je	.L467	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:1943:       for (__node_ptr __p = static_cast<__node_ptr>(__prev_p->_M_nxt);;
	mov	rax, QWORD PTR [r15]	 # __p, __prev_p_634->_M_nxt
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable_policy.h:1702:       { return __c == __n._M_hash_code; }
	mov	QWORD PTR 80[rsp], rbx	 # %sfp, _186
	mov	rcx, QWORD PTR 16[rax]	 # _644, MEM[(const struct _Hash_node_code_cache &)__p_635 + 16]._M_hash_code
	jmp	.L472	 #
	.p2align 4,,10
	.p2align 3
.L468:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:1949: 	  if (!__p->_M_nxt || _M_bucket_index(*__p->_M_next()) != __bkt)
	mov	rbx, QWORD PTR [rax]	 # _640, __p_636->D.150149._M_nxt
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:1949: 	  if (!__p->_M_nxt || _M_bucket_index(*__p->_M_next()) != __bkt)
	test	rbx, rbx	 # _640
	je	.L561	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable_policy.h:1359:       { return _RangeHash{}(__n._M_hash_code, __bkt_count); }
	mov	rcx, QWORD PTR 16[rbx]	 # _644, MEM[(const struct _Hash_node_value &)_640 + 8].D.145110._M_hash_code
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable_policy.h:524:     { return __num % __den; }
	xor	edx, edx	 # tmp670
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:1951: 	  __prev_p = __p;
	mov	r15, rax	 # __prev_p, __p
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable_policy.h:524:     { return __num % __den; }
	mov	rax, rcx	 # tmp671, _644
	div	r9	 # _618
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:1949: 	  if (!__p->_M_nxt || _M_bucket_index(*__p->_M_next()) != __bkt)
	cmp	r11, rdx	 # tmp666, tmp670
	jne	.L561	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:1944: 	   __p = __p->_M_next())
	mov	rax, rbx	 # __p, _640
.L472:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable_policy.h:1743:       { return _S_equals(__c, __n) && _M_key_equals(__k, __n); }
	cmp	r10, rcx	 # _625, _644
	jne	.L468	 #,
 # include/gl_setup.hpp:135:             return x == other.x && y == other.y;
	cmp	ebp, DWORD PTR 8[rax]	 # SR.1094, MEM[(const struct Vec2 &)__p_636 + 8].x
	jne	.L468	 #,
 # include/gl_setup.hpp:135:             return x == other.x && y == other.y;
	cmp	r12d, DWORD PTR 12[rax]	 # _92, MEM[(const struct Vec2 &)__p_636 + 8].y
	jne	.L468	 #,
 # source/simulation.cpp:87: 			if (checked.find(current) != checked.end()) {
	cmp	QWORD PTR [r15], 0	 # __prev_p_647->_M_nxt,
	mov	rbx, QWORD PTR 80[rsp]	 # _186, %sfp
	jne	.L465	 #,
	.p2align 4,,10
	.p2align 3
.L467:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:904: 	  return _M_insert_unique(
	lea	rdx, 136[rsp]	 # tmp672,
	mov	QWORD PTR 80[rsp], r8	 # %sfp, _621
	lea	rcx, 144[rsp]	 # tmp673,
	call	_ZNSt10_HashtableIN5Lenia4Vec2IjEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_8Vec2HashIjEENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS2_SI_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb1EEEEEEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb1EEEbEOT_OT0_RKT1_.isra.0	 #
 # source/simulation.cpp:92: 			if (m_readBuffer.m_data[current.y * m_w + current.x] > 0) {
	mov	rax, QWORD PTR 48[rsp]	 # this, %sfp
 # source/simulation.cpp:92: 			if (m_readBuffer.m_data[current.y * m_w + current.x] > 0) {
	vxorps	xmm0, xmm0, xmm0	 # tmp678
 # source/simulation.cpp:92: 			if (m_readBuffer.m_data[current.y * m_w + current.x] > 0) {
	mov	r15, QWORD PTR 72[rsp]	 # _623, %sfp
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:1145: 	return *(this->_M_impl._M_start + __n);
	mov	r8, QWORD PTR 80[rsp]	 # _621, %sfp
 # source/simulation.cpp:92: 			if (m_readBuffer.m_data[current.y * m_w + current.x] > 0) {
	imul	r15, QWORD PTR [rax]	 # _623, MEM[(const struct Simulation *)this_15(D)].m_w
 # source/simulation.cpp:92: 			if (m_readBuffer.m_data[current.y * m_w + current.x] > 0) {
	mov	rax, QWORD PTR 56[rax]	 # MEM[(const struct vector *)this_15(D) + 56B].D.115405._M_impl.D.114711._M_start, MEM[(const struct vector *)this_15(D) + 56B].D.115405._M_impl.D.114711._M_start
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:1145: 	return *(this->_M_impl._M_start + __n);
	add	r15, r8	 # tmp675, _621
 # source/simulation.cpp:92: 			if (m_readBuffer.m_data[current.y * m_w + current.x] > 0) {
	vmovss	xmm1, DWORD PTR [rax+r15*4]	 # *_79, *_79
	vcomiss	xmm1, xmm0	 # *_79, tmp678
	jbe	.L465	 #,
	vmovd	eax, xmm8	 # SR.1092, vect__61.1152
	vpextrd	edx, xmm8, 3	 # _1435, vect__61.1152,
	vpextrd	r8d, xmm8, 2	 # _1434, vect__61.1152,
	vpextrd	ecx, xmm8, 1	 # cstore_1129, vect__61.1152,
 # include/gl_setup.hpp:88:             return m_x0 == 0 && m_y0 == 0 && m_x1 == 0 && m_y1 == 0;
	test	eax, eax	 # SR.1092
	jne	.L475	 #,
 # include/gl_setup.hpp:88:             return m_x0 == 0 && m_y0 == 0 && m_x1 == 0 && m_y1 == 0;
	test	ecx, ecx	 # cstore_1129
	je	.L596	 #,
.L476:
 # include/gl_setup.hpp:110:                 if (x > m_x1) m_x1 = x;
	cmp	ebp, r8d	 # SR.1094, _1434
	cmovb	ebp, r8d	 # SR.1094,, SR.1094, _1434
 # include/gl_setup.hpp:111:                 if (y < m_y0) m_y0 = y;
	cmp	ecx, r12d	 # cstore_1129, _92
	cmova	ecx, r12d	 # cstore_1129,, cstore_1129, _92
.L480:
 # include/gl_setup.hpp:112:                 if (y > m_y1) m_y1 = y;
	cmp	r12d, edx	 # _92, _1435
	vmovd	xmm3, ebp	 # SR.1094, SR.1094
	cmovnb	edx, r12d	 # _92,, tmp683
	vmovd	xmm5, eax	 # SR.1092, SR.1092
	vpinsrd	xmm8, xmm5, ecx, 1	 # tmp685, SR.1092, cstore_1129
	vpinsrd	xmm0, xmm3, edx, 1	 # tmp684, SR.1094, tmp683
	vpunpcklqdq	xmm8, xmm8, xmm0	 # vect__61.1152, tmp685, tmp684
.L479:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:1554:       { emplace_back(std::move(__x)); }
	mov	rdx, r14	 #, tmp744
	mov	rcx, r13	 #, tmp737
 # source/simulation.cpp:96: 					points.push({ x + i, y + j });
	vmovq	QWORD PTR 128[rsp], xmm6	 # MEM <vector(2) unsigned int> [(unsigned int *)_180], tmp483
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:1554:       { emplace_back(std::move(__x)); }
	call	_ZNSt5dequeIN5Lenia4Vec2IjEESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.isra.0	 #
	mov	rdx, r14	 #, tmp744
	mov	rcx, r13	 #, tmp737
 # source/simulation.cpp:97: 					points.push({ x - i, y - j });
	vmovq	QWORD PTR 128[rsp], xmm6	 # MEM <vector(2) unsigned int> [(unsigned int *)_180], tmp483
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:1554:       { emplace_back(std::move(__x)); }
	call	_ZNSt5dequeIN5Lenia4Vec2IjEESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.isra.0	 #
	mov	rdx, r14	 #, tmp744
	mov	rcx, r13	 #, tmp737
 # source/simulation.cpp:98: 					points.push({ x + i, y - j });
	vmovq	QWORD PTR 128[rsp], xmm6	 # MEM <vector(2) unsigned int> [(unsigned int *)_180], tmp483
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:1554:       { emplace_back(std::move(__x)); }
	call	_ZNSt5dequeIN5Lenia4Vec2IjEESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.isra.0	 #
	mov	rdx, r14	 #, tmp744
	mov	rcx, r13	 #, tmp737
 # source/simulation.cpp:99: 					points.push({ x - i, y + j });
	vmovq	QWORD PTR 128[rsp], xmm6	 # MEM <vector(2) unsigned int> [(unsigned int *)_180], tmp483
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:1554:       { emplace_back(std::move(__x)); }
	call	_ZNSt5dequeIN5Lenia4Vec2IjEESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.isra.0	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:273:       { return __x._M_cur == __y._M_cur; }
	mov	rbx, QWORD PTR 256[rsp]	 # _186, MEM[(const struct _Self &)&points + 48]._M_cur
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:273:       { return __x._M_cur == __y._M_cur; }
	mov	rsi, QWORD PTR 224[rsp]	 # prephitmp_314, MEM[(const struct _Self &)&points + 16]._M_cur
 # source/simulation.cpp:83: 		while (!points.empty()) {
	cmp	rbx, rsi	 # _186, prephitmp_314
	jne	.L597	 #,
.L481:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:465:       { return static_cast<__node_ptr>(_M_before_begin._M_nxt); }
	mov	rbx, QWORD PTR 160[rsp]	 # __n, MEM[(const struct _Hashtable *)&checked]._M_before_begin._M_nxt
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable_policy.h:2038:       while (__n)
	test	rbx, rbx	 # __n
	je	.L583	 #,
	.p2align 4,,10
	.p2align 3
.L483:
	mov	rcx, rbx	 # __n, __n
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable_policy.h:377:       { return static_cast<_Hash_node*>(this->_M_nxt); }
	mov	rbx, QWORD PTR [rbx]	 # __n, MEM[(const struct _Hash_node *)__n_65].D.150149._M_nxt
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	edx, 24	 #,
	call	_ZdlPvy	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable_policy.h:2038:       while (__n)
	test	rbx, rbx	 # __n
	jne	.L483	 #,
.L583:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2510:       __builtin_memset(_M_buckets, 0,
	mov	rax, QWORD PTR 152[rsp]	 # tmp910, MEM[(struct _Hashtable *)&checked]._M_bucket_count
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2510:       __builtin_memset(_M_buckets, 0,
	mov	rcx, QWORD PTR 144[rsp]	 # pretmp_1225, MEM[(struct _Hashtable *)&checked]._M_buckets
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2510:       __builtin_memset(_M_buckets, 0,
	lea	r8, 0[0+rax*8]	 # _1222,
	jmp	.L459	 #
	.p2align 4,,10
	.p2align 3
.L561:
	mov	rbx, QWORD PTR 80[rsp]	 # _186, %sfp
	jmp	.L467	 #
	.p2align 4,,10
	.p2align 3
.L589:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:936:       const size_type __new_num_nodes = __old_num_nodes + __nodes_to_add;
	add	r10, 2	 # __new_num_nodes,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:939:       if (this->_M_impl._M_map_size > 2 * __new_num_nodes)
	lea	rax, [r10+r10]	 # tmp510,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:939:       if (this->_M_impl._M_map_size > 2 * __new_num_nodes)
	cmp	rax, rdi	 # tmp510, _169
	jnb	.L403	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:945: 	    std::copy(this->_M_impl._M_start._M_node,
	lea	r8, 8[r15]	 # tmp514,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:942: 					 - __new_num_nodes) / 2
	sub	rdi, r10	 # tmp511, __new_num_nodes
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:942: 					 - __new_num_nodes) / 2
	shr	rdi	 # tmp512
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:435: 	  const ptrdiff_t _Num = __last - __first;
	sub	r8, r12	 # _1309, _138
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:941: 	  __new_nstart = this->_M_impl._M_map + (this->_M_impl._M_map_size
	lea	r10, [r9+rdi*8]	 # __new_nstart,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:944: 	  if (__new_nstart < this->_M_impl._M_start._M_node)
	cmp	r10, r12	 # __new_nstart, _138
	jnb	.L404	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:436: 	  if (__builtin_expect(_Num > 1, true))
	cmp	r8, 8	 # _1309,
	jle	.L405	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:437: 	    __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
	mov	rcx, r10	 #, __new_nstart
	mov	rdx, r12	 #, _138
	call	memmove	 #
	mov	r10, rax	 # __new_nstart,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	mov	rax, QWORD PTR [rax]	 # prephitmp_249,* __new_nstart
.L406:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:267: 	_M_last = _M_first + difference_type(_S_buffer_size());
	lea	rdx, 512[rax]	 # tmp527,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	vmovq	xmm4, rax	 # prephitmp_249, prephitmp_249
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:265: 	_M_node = __new_node;
	mov	QWORD PTR 248[rsp], r10	 # MEM[(struct _Deque_iterator *)&points + 16B]._M_node, __new_nstart
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	vpinsrq	xmm0, xmm4, rdx, 1	 # tmp526, prephitmp_249, tmp527
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:972:       this->_M_impl._M_finish._M_set_node(__new_nstart + __old_num_nodes - 1);
	lea	r15, [r10+rbp]	 # _137,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	vmovdqu	XMMWORD PTR 232[rsp], xmm0	 # MEM <vector(2) long long unsigned int> [(struct Vec2 * *)&points + 24B], tmp526
	jmp	.L402	 #
	.p2align 4,,10
	.p2align 3
.L591:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:936:       const size_type __new_num_nodes = __old_num_nodes + __nodes_to_add;
	add	r8, 2	 # __new_num_nodes,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:939:       if (this->_M_impl._M_map_size > 2 * __new_num_nodes)
	lea	rax, [r8+r8]	 # tmp552,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:939:       if (this->_M_impl._M_map_size > 2 * __new_num_nodes)
	cmp	rax, rbx	 # tmp552, _285
	jnb	.L419	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:942: 					 - __new_num_nodes) / 2
	sub	rbx, r8	 # tmp553, __new_num_nodes
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:945: 	    std::copy(this->_M_impl._M_start._M_node,
	lea	r8, 8[rbp]	 # tmp556,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:942: 					 - __new_num_nodes) / 2
	shr	rbx	 # tmp554
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:941: 	  __new_nstart = this->_M_impl._M_map + (this->_M_impl._M_map_size
	lea	r10, [r9+rbx*8]	 # __new_nstart,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:435: 	  const ptrdiff_t _Num = __last - __first;
	sub	r8, r12	 # _1304, _254
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:944: 	  if (__new_nstart < this->_M_impl._M_start._M_node)
	cmp	r10, r12	 # __new_nstart, _254
	jnb	.L420	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:436: 	  if (__builtin_expect(_Num > 1, true))
	cmp	r8, 8	 # _1304,
	jle	.L421	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:437: 	    __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
	mov	rcx, r10	 #, __new_nstart
	mov	rdx, r12	 #, _254
	vzeroupper
	call	memmove	 #
	mov	r10, rax	 # __new_nstart,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	mov	rax, QWORD PTR [rax]	 # prephitmp_165,* __new_nstart
.L422:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:267: 	_M_last = _M_first + difference_type(_S_buffer_size());
	lea	rdx, 512[rax]	 # tmp569,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	vmovq	xmm3, rax	 # prephitmp_165, prephitmp_165
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:265: 	_M_node = __new_node;
	mov	QWORD PTR 248[rsp], r10	 # MEM[(struct _Deque_iterator *)&points + 16B]._M_node, __new_nstart
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	vpinsrq	xmm0, xmm3, rdx, 1	 # tmp568, prephitmp_165, tmp569
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:972:       this->_M_impl._M_finish._M_set_node(__new_nstart + __old_num_nodes - 1);
	lea	rbp, [r10+r15]	 # prephitmp_308,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	vmovdqu	XMMWORD PTR 232[rsp], xmm0	 # MEM <vector(2) long long unsigned int> [(struct Vec2 * *)&points + 24B], tmp568
	jmp	.L418	 #
	.p2align 4,,10
	.p2align 3
.L593:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:936:       const size_type __new_num_nodes = __old_num_nodes + __nodes_to_add;
	add	r8, 2	 # __new_num_nodes,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:939:       if (this->_M_impl._M_map_size > 2 * __new_num_nodes)
	lea	rax, [r8+r8]	 # tmp592,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:939:       if (this->_M_impl._M_map_size > 2 * __new_num_nodes)
	cmp	rax, rdi	 # tmp592, _401
	jnb	.L434	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:942: 					 - __new_num_nodes) / 2
	sub	rdi, r8	 # tmp593, __new_num_nodes
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:945: 	    std::copy(this->_M_impl._M_start._M_node,
	lea	r8, 8[rbp]	 # tmp596,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:942: 					 - __new_num_nodes) / 2
	shr	rdi	 # tmp594
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:941: 	  __new_nstart = this->_M_impl._M_map + (this->_M_impl._M_map_size
	lea	r10, [r9+rdi*8]	 # __new_nstart,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:435: 	  const ptrdiff_t _Num = __last - __first;
	sub	r8, r12	 # _1299, _370
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:944: 	  if (__new_nstart < this->_M_impl._M_start._M_node)
	cmp	r10, r12	 # __new_nstart, _370
	jnb	.L435	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:436: 	  if (__builtin_expect(_Num > 1, true))
	cmp	r8, 8	 # _1299,
	jle	.L436	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:437: 	    __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
	mov	rcx, r10	 #, __new_nstart
	mov	rdx, r12	 #, _370
	vzeroupper
	call	memmove	 #
	mov	r10, rax	 # __new_nstart,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	mov	rax, QWORD PTR [rax]	 # prephitmp_307,* __new_nstart
	jmp	.L437	 #
	.p2align 4,,10
	.p2align 3
.L595:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:936:       const size_type __new_num_nodes = __old_num_nodes + __nodes_to_add;
	add	r8, 2	 # __new_num_nodes,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:939:       if (this->_M_impl._M_map_size > 2 * __new_num_nodes)
	lea	rax, [r8+r8]	 # tmp632,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:939:       if (this->_M_impl._M_map_size > 2 * __new_num_nodes)
	cmp	rax, rbx	 # tmp632, _517
	jnb	.L448	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:942: 					 - __new_num_nodes) / 2
	sub	rbx, r8	 # tmp633, __new_num_nodes
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:945: 	    std::copy(this->_M_impl._M_start._M_node,
	lea	r8, 8[rbp]	 # tmp636,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:942: 					 - __new_num_nodes) / 2
	shr	rbx	 # tmp634
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:941: 	  __new_nstart = this->_M_impl._M_map + (this->_M_impl._M_map_size
	lea	r10, [r9+rbx*8]	 # __new_nstart,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:435: 	  const ptrdiff_t _Num = __last - __first;
	sub	r8, r12	 # _1294, _486
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:944: 	  if (__new_nstart < this->_M_impl._M_start._M_node)
	cmp	r10, r12	 # __new_nstart, _486
	jnb	.L449	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:436: 	  if (__builtin_expect(_Num > 1, true))
	cmp	r8, 8	 # _1294,
	jle	.L450	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:437: 	    __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
	mov	rcx, r10	 #, __new_nstart
	mov	rdx, r12	 #, _486
	vzeroupper
	call	memmove	 #
	mov	r10, rax	 # __new_nstart,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	mov	rax, QWORD PTR [rax]	 # pretmp_1170,* __new_nstart
.L451:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:267: 	_M_last = _M_first + difference_type(_S_buffer_size());
	lea	rdx, 512[rax]	 # tmp649,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	vmovq	xmm4, rax	 # pretmp_1170, pretmp_1170
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:265: 	_M_node = __new_node;
	mov	QWORD PTR 248[rsp], r10	 # MEM[(struct _Deque_iterator *)&points + 16B]._M_node, __new_nstart
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	vpinsrq	xmm0, xmm4, rdx, 1	 # tmp648, pretmp_1170, tmp649
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:972:       this->_M_impl._M_finish._M_set_node(__new_nstart + __old_num_nodes - 1);
	lea	rbp, [r10+r15]	 # prephitmp_308,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	vmovdqu	XMMWORD PTR 232[rsp], xmm0	 # MEM <vector(2) long long unsigned int> [(struct Vec2 * *)&points + 24B], tmp648
	jmp	.L447	 #
	.p2align 4,,10
	.p2align 3
.L403:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:262:       if (__a < __b)
	test	rdi, rdi	 # _169
	je	.L522	 #,
	lea	rcx, 1[rdi]	 # _1015,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:955: 	  size_type __new_map_size = this->_M_impl._M_map_size
	lea	rax, [rcx+rcx]	 # __new_map_size,
	mov	rdx, rax	 # __new_map_size, __new_map_size
	mov	QWORD PTR 72[rsp], rax	 # %sfp, __new_map_size
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:130: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	movabs	rax, 1152921504606846975	 # tmp518,
	cmp	rax, rdx	 # tmp518, __new_map_size
	jb	.L411	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	sal	rcx, 4	 # prephitmp_55,
.L410:
	mov	QWORD PTR 120[rsp], r10	 # %sfp, __new_num_nodes
	mov	QWORD PTR 112[rsp], r9	 # %sfp, _171
	call	_Znwy	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:960: 	  __new_nstart = __new_map + (__new_map_size - __new_num_nodes) / 2
	mov	r10, QWORD PTR 120[rsp]	 # __new_num_nodes, %sfp
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:962: 	  std::copy(this->_M_impl._M_start._M_node,
	lea	r8, 8[r15]	 # tmp524,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	rcx, rax	 # _251, tmp750
	mov	QWORD PTR 80[rsp], rax	 # %sfp, _251
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:960: 	  __new_nstart = __new_map + (__new_map_size - __new_num_nodes) / 2
	mov	rax, QWORD PTR 72[rsp]	 # tmp521, %sfp
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:435: 	  const ptrdiff_t _Num = __last - __first;
	sub	r8, r12	 # _221, _138
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:436: 	  if (__builtin_expect(_Num > 1, true))
	mov	r9, QWORD PTR 112[rsp]	 # _171, %sfp
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:960: 	  __new_nstart = __new_map + (__new_map_size - __new_num_nodes) / 2
	sub	rax, r10	 # tmp521, __new_num_nodes
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:960: 	  __new_nstart = __new_map + (__new_map_size - __new_num_nodes) / 2
	shr	rax	 # tmp522
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:436: 	  if (__builtin_expect(_Num > 1, true))
	cmp	r8, 8	 # _221,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:960: 	  __new_nstart = __new_map + (__new_map_size - __new_num_nodes) / 2
	lea	r10, [rcx+rax*8]	 # __new_nstart,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:436: 	  if (__builtin_expect(_Num > 1, true))
	jle	.L413	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:437: 	    __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
	mov	rcx, r10	 #, __new_nstart
	mov	rdx, r12	 #, _138
	call	memmove	 #
	mov	r9, QWORD PTR 112[rsp]	 # _171, %sfp
	mov	r10, rax	 # __new_nstart,
.L414:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	lea	rdx, 0[0+rdi*8]	 # tmp525,
	mov	rcx, r9	 #, _171
	mov	QWORD PTR 112[rsp], r10	 # %sfp, __new_nstart
	call	_ZdlPvy	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:967: 	  this->_M_impl._M_map = __new_map;
	mov	rax, QWORD PTR 80[rsp]	 # _251, %sfp
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	mov	r10, QWORD PTR 112[rsp]	 # __new_nstart, %sfp
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:967: 	  this->_M_impl._M_map = __new_map;
	mov	QWORD PTR 208[rsp], rax	 # points.D.136175._M_impl.D.135525._M_map, _251
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:968: 	  this->_M_impl._M_map_size = __new_map_size;
	mov	rax, QWORD PTR 72[rsp]	 # __new_map_size, %sfp
	mov	QWORD PTR 216[rsp], rax	 # points.D.136175._M_impl.D.135525._M_map_size, __new_map_size
.L577:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	mov	rax, QWORD PTR [r10]	 # prephitmp_249,* __new_nstart
	jmp	.L406	 #
	.p2align 4,,10
	.p2align 3
.L419:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:262:       if (__a < __b)
	test	rbx, rbx	 # _285
	je	.L523	 #,
	lea	rcx, 1[rbx]	 # _1014,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:955: 	  size_type __new_map_size = this->_M_impl._M_map_size
	lea	rax, [rcx+rcx]	 # __new_map_size,
	mov	rdx, rax	 # __new_map_size, __new_map_size
	mov	QWORD PTR 72[rsp], rax	 # %sfp, __new_map_size
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:130: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	movabs	rax, 1152921504606846975	 # tmp560,
	cmp	rax, rdx	 # tmp560, __new_map_size
	jb	.L456	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	sal	rcx, 4	 # _643,
.L426:
	mov	QWORD PTR 120[rsp], r8	 # %sfp, __new_num_nodes
	mov	QWORD PTR 112[rsp], r9	 # %sfp, _287
	vzeroupper
	call	_Znwy	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:960: 	  __new_nstart = __new_map + (__new_map_size - __new_num_nodes) / 2
	mov	r8, QWORD PTR 120[rsp]	 # __new_num_nodes, %sfp
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	rcx, rax	 # _367, tmp752
	mov	QWORD PTR 80[rsp], rax	 # %sfp, _367
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:960: 	  __new_nstart = __new_map + (__new_map_size - __new_num_nodes) / 2
	mov	rax, QWORD PTR 72[rsp]	 # tmp563, %sfp
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:436: 	  if (__builtin_expect(_Num > 1, true))
	mov	r9, QWORD PTR 112[rsp]	 # _287, %sfp
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:960: 	  __new_nstart = __new_map + (__new_map_size - __new_num_nodes) / 2
	sub	rax, r8	 # tmp563, __new_num_nodes
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:962: 	  std::copy(this->_M_impl._M_start._M_node,
	lea	r8, 8[rbp]	 # tmp566,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:960: 	  __new_nstart = __new_map + (__new_map_size - __new_num_nodes) / 2
	shr	rax	 # tmp564
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:960: 	  __new_nstart = __new_map + (__new_map_size - __new_num_nodes) / 2
	lea	r10, [rcx+rax*8]	 # __new_nstart,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:435: 	  const ptrdiff_t _Num = __last - __first;
	sub	r8, r12	 # _337, _254
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:436: 	  if (__builtin_expect(_Num > 1, true))
	cmp	r8, 8	 # _337,
	jle	.L429	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:437: 	    __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
	mov	rcx, r10	 #, __new_nstart
	mov	rdx, r12	 #, _254
	call	memmove	 #
	mov	r9, QWORD PTR 112[rsp]	 # _287, %sfp
	mov	r10, rax	 # __new_nstart,
.L430:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	lea	rdx, 0[0+rbx*8]	 # tmp567,
	mov	rcx, r9	 #, _287
	mov	QWORD PTR 112[rsp], r10	 # %sfp, __new_nstart
	call	_ZdlPvy	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:967: 	  this->_M_impl._M_map = __new_map;
	mov	rax, QWORD PTR 80[rsp]	 # _367, %sfp
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	mov	r10, QWORD PTR 112[rsp]	 # __new_nstart, %sfp
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:967: 	  this->_M_impl._M_map = __new_map;
	mov	QWORD PTR 208[rsp], rax	 # points.D.136175._M_impl.D.135525._M_map, _367
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:968: 	  this->_M_impl._M_map_size = __new_map_size;
	mov	rax, QWORD PTR 72[rsp]	 # __new_map_size, %sfp
	mov	QWORD PTR 216[rsp], rax	 # points.D.136175._M_impl.D.135525._M_map_size, __new_map_size
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	mov	rax, QWORD PTR [r10]	 # prephitmp_165,* __new_nstart
	jmp	.L422	 #
	.p2align 4,,10
	.p2align 3
.L434:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:262:       if (__a < __b)
	test	rdi, rdi	 # _401
	je	.L524	 #,
	lea	rcx, 1[rdi]	 # _1013,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:955: 	  size_type __new_map_size = this->_M_impl._M_map_size
	lea	rax, [rcx+rcx]	 # __new_map_size,
	mov	rdx, rax	 # __new_map_size, __new_map_size
	mov	QWORD PTR 72[rsp], rax	 # %sfp, __new_map_size
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:130: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	movabs	rax, 1152921504606846975	 # tmp600,
	cmp	rax, rdx	 # tmp600, __new_map_size
	jb	.L456	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	sal	rcx, 4	 # prephitmp_954,
.L441:
	mov	QWORD PTR 120[rsp], r8	 # %sfp, __new_num_nodes
	mov	QWORD PTR 112[rsp], r9	 # %sfp, _403
	vzeroupper
	call	_Znwy	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:960: 	  __new_nstart = __new_map + (__new_map_size - __new_num_nodes) / 2
	mov	r8, QWORD PTR 120[rsp]	 # __new_num_nodes, %sfp
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	rcx, rax	 # _483, tmp754
	mov	QWORD PTR 80[rsp], rax	 # %sfp, _483
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:960: 	  __new_nstart = __new_map + (__new_map_size - __new_num_nodes) / 2
	mov	rax, QWORD PTR 72[rsp]	 # tmp603, %sfp
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:436: 	  if (__builtin_expect(_Num > 1, true))
	mov	r9, QWORD PTR 112[rsp]	 # _403, %sfp
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:960: 	  __new_nstart = __new_map + (__new_map_size - __new_num_nodes) / 2
	sub	rax, r8	 # tmp603, __new_num_nodes
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:962: 	  std::copy(this->_M_impl._M_start._M_node,
	lea	r8, 8[rbp]	 # tmp606,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:960: 	  __new_nstart = __new_map + (__new_map_size - __new_num_nodes) / 2
	shr	rax	 # tmp604
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:960: 	  __new_nstart = __new_map + (__new_map_size - __new_num_nodes) / 2
	lea	r10, [rcx+rax*8]	 # __new_nstart,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:435: 	  const ptrdiff_t _Num = __last - __first;
	sub	r8, r12	 # _453, _370
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:436: 	  if (__builtin_expect(_Num > 1, true))
	cmp	r8, 8	 # _453,
	jle	.L443	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:437: 	    __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
	mov	rcx, r10	 #, __new_nstart
	mov	rdx, r12	 #, _370
	call	memmove	 #
	mov	r9, QWORD PTR 112[rsp]	 # _403, %sfp
	mov	r10, rax	 # __new_nstart,
.L444:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	lea	rdx, 0[0+rdi*8]	 # tmp607,
	mov	rcx, r9	 #, _403
	mov	QWORD PTR 112[rsp], r10	 # %sfp, __new_nstart
	call	_ZdlPvy	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:967: 	  this->_M_impl._M_map = __new_map;
	mov	rax, QWORD PTR 80[rsp]	 # _483, %sfp
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	mov	r10, QWORD PTR 112[rsp]	 # __new_nstart, %sfp
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:967: 	  this->_M_impl._M_map = __new_map;
	mov	QWORD PTR 208[rsp], rax	 # points.D.136175._M_impl.D.135525._M_map, _483
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:968: 	  this->_M_impl._M_map_size = __new_map_size;
	mov	rax, QWORD PTR 72[rsp]	 # __new_map_size, %sfp
	mov	QWORD PTR 216[rsp], rax	 # points.D.136175._M_impl.D.135525._M_map_size, __new_map_size
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	mov	rax, QWORD PTR [r10]	 # prephitmp_307,* __new_nstart
.L437:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:267: 	_M_last = _M_first + difference_type(_S_buffer_size());
	lea	rdx, 512[rax]	 # tmp609,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	vmovq	xmm2, rax	 # prephitmp_307, prephitmp_307
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:265: 	_M_node = __new_node;
	mov	QWORD PTR 248[rsp], r10	 # MEM[(struct _Deque_iterator *)&points + 16B]._M_node, __new_nstart
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	vpinsrq	xmm0, xmm2, rdx, 1	 # tmp608, prephitmp_307, tmp609
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:972:       this->_M_impl._M_finish._M_set_node(__new_nstart + __old_num_nodes - 1);
	lea	rbp, [r10+r15]	 # prephitmp_308,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	vmovdqu	XMMWORD PTR 232[rsp], xmm0	 # MEM <vector(2) long long unsigned int> [(struct Vec2 * *)&points + 24B], tmp608
	jmp	.L433	 #
	.p2align 4,,10
	.p2align 3
.L448:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:262:       if (__a < __b)
	test	rbx, rbx	 # _517
	je	.L525	 #,
	lea	rcx, 1[rbx]	 # _1012,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:955: 	  size_type __new_map_size = this->_M_impl._M_map_size
	lea	rax, [rcx+rcx]	 # __new_map_size,
	mov	rdx, rax	 # __new_map_size, __new_map_size
	mov	QWORD PTR 72[rsp], rax	 # %sfp, __new_map_size
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:130: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	movabs	rax, 1152921504606846975	 # tmp640,
	cmp	rax, rdx	 # tmp640, __new_map_size
	jb	.L456	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	sal	rcx, 4	 # _1162,
.L455:
	mov	QWORD PTR 120[rsp], r8	 # %sfp, __new_num_nodes
	mov	QWORD PTR 112[rsp], r9	 # %sfp, _519
	vzeroupper
	call	_Znwy	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:960: 	  __new_nstart = __new_map + (__new_map_size - __new_num_nodes) / 2
	mov	r8, QWORD PTR 120[rsp]	 # __new_num_nodes, %sfp
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	rcx, rax	 # _599, tmp756
	mov	QWORD PTR 80[rsp], rax	 # %sfp, _599
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:960: 	  __new_nstart = __new_map + (__new_map_size - __new_num_nodes) / 2
	mov	rax, QWORD PTR 72[rsp]	 # tmp643, %sfp
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:436: 	  if (__builtin_expect(_Num > 1, true))
	mov	r9, QWORD PTR 112[rsp]	 # _519, %sfp
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:960: 	  __new_nstart = __new_map + (__new_map_size - __new_num_nodes) / 2
	sub	rax, r8	 # tmp643, __new_num_nodes
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:962: 	  std::copy(this->_M_impl._M_start._M_node,
	lea	r8, 8[rbp]	 # tmp646,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:960: 	  __new_nstart = __new_map + (__new_map_size - __new_num_nodes) / 2
	shr	rax	 # tmp644
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:960: 	  __new_nstart = __new_map + (__new_map_size - __new_num_nodes) / 2
	lea	r10, [rcx+rax*8]	 # __new_nstart,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:435: 	  const ptrdiff_t _Num = __last - __first;
	sub	r8, r12	 # _569, _486
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:436: 	  if (__builtin_expect(_Num > 1, true))
	cmp	r8, 8	 # _569,
	jle	.L457	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:437: 	    __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
	mov	rcx, r10	 #, __new_nstart
	mov	rdx, r12	 #, _486
	call	memmove	 #
	mov	r9, QWORD PTR 112[rsp]	 # _519, %sfp
	mov	r10, rax	 # __new_nstart,
.L458:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	lea	rdx, 0[0+rbx*8]	 # tmp647,
	mov	rcx, r9	 #, _519
	mov	QWORD PTR 112[rsp], r10	 # %sfp, __new_nstart
	call	_ZdlPvy	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:967: 	  this->_M_impl._M_map = __new_map;
	mov	rax, QWORD PTR 80[rsp]	 # _599, %sfp
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	mov	r10, QWORD PTR 112[rsp]	 # __new_nstart, %sfp
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:967: 	  this->_M_impl._M_map = __new_map;
	mov	QWORD PTR 208[rsp], rax	 # points.D.136175._M_impl.D.135525._M_map, _599
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:968: 	  this->_M_impl._M_map_size = __new_map_size;
	mov	rax, QWORD PTR 72[rsp]	 # __new_map_size, %sfp
	mov	QWORD PTR 216[rsp], rax	 # points.D.136175._M_impl.D.135525._M_map_size, __new_map_size
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	mov	rax, QWORD PTR [r10]	 # pretmp_1170,* __new_nstart
	jmp	.L451	 #
	.p2align 4,,10
	.p2align 3
.L463:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/functional_hash.h:166:   _Cxx_hashtable_define_trivial_hash(unsigned int)
	mov	eax, r12d	 # _623, _92
	mov	r8d, ebp	 # _621, SR.1094
	mov	QWORD PTR 72[rsp], rax	 # %sfp, _623
	jmp	.L467	 #
.L524:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:955: 	  size_type __new_map_size = this->_M_impl._M_map_size
	mov	QWORD PTR 72[rsp], 3	 # %sfp,
	mov	ecx, 24	 # prephitmp_954,
	jmp	.L441	 #
.L525:
	mov	QWORD PTR 72[rsp], 3	 # %sfp,
	mov	ecx, 24	 # _1162,
	jmp	.L455	 #
.L449:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:949: 	    std::copy_backward(this->_M_impl._M_start._M_node,
	lea	rcx, 8[r10+r15]	 # _551,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:747: 	  if (__builtin_expect(_Num > 1, true))
	cmp	r8, 8	 # _1294,
	jle	.L453	 #,
	mov	QWORD PTR 72[rsp], r10	 # %sfp, __new_nstart
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:748: 	    __builtin_memmove(__result - _Num, __first, sizeof(_Tp) * _Num);
	sub	rcx, r8	 # tmp639, _1294
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:748: 	    __builtin_memmove(__result - _Num, __first, sizeof(_Tp) * _Num);
	mov	rdx, r12	 #, _486
	vzeroupper
	call	memmove	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	mov	r10, QWORD PTR 72[rsp]	 # __new_nstart, %sfp
	mov	rax, QWORD PTR [r10]	 # pretmp_1170,* __new_nstart
	jmp	.L451	 #
	.p2align 4,,10
	.p2align 3
.L456:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:134: 	    if (__n > (std::size_t(-1) / sizeof(_Tp)))
	cmp	r11, rdx	 # tmp627, __new_map_size
	jnb	.L598	 #,
	vzeroupper
.L428:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:135: 	      std::__throw_bad_array_new_length();
	call	_ZSt28__throw_bad_array_new_lengthv	 #
.L585:
	mov	r13, QWORD PTR 48[rsp]	 # this, %sfp
.L502:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:990:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	mov	rax, QWORD PTR 96[rsp]	 # boxes, %sfp
	mov	rbx, QWORD PTR 88[rsp]	 # _732, %sfp
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:1077: 			 - this->_M_impl._M_start); }
	mov	rdx, QWORD PTR 200[r13]	 # tmp718, MEM[(const struct vector *)this_15(D) + 184B].D.118790._M_impl.D.118129._M_end_of_storage
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:990:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	sub	rbx, rax	 # _732, boxes
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:1077: 			 - this->_M_impl._M_start); }
	mov	rax, QWORD PTR 184[r13]	 # _736, MEM[(const struct vector *)this_15(D) + 184B].D.118790._M_impl.D.118129._M_start
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:1077: 			 - this->_M_impl._M_start); }
	sub	rdx, rax	 # tmp718, _736
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:236: 	  if (__xlen > capacity())
	cmp	rdx, rbx	 # tmp718, _732
	jnb	.L503	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:130: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	movabs	rax, 9223372036854775792	 # tmp720,
	cmp	rax, rbx	 # tmp720, _732
	jb	.L599	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	rcx, rbx	 #, _732
	call	_Znwy	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_uninitialized.h:119: 	  for (; __first != __last; ++__first, (void)++__cur)
	mov	rcx, QWORD PTR 88[rsp]	 # boxes$D118790$_M_impl$D118129$_M_finish, %sfp
	cmp	QWORD PTR 96[rsp], rcx	 # %sfp, boxes$D118790$_M_impl$D118129$_M_finish
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	rsi, rax	 # _777, tmp759
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_uninitialized.h:119: 	  for (; __first != __last; ++__first, (void)++__cur)
	je	.L508	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_construct.h:119:       ::new((void*)__p) _Tp(std::forward<_Args>(__args)...);
	mov	rdx, QWORD PTR 96[rsp]	 #, %sfp
	mov	r8, rbx	 #, _732
	mov	rcx, rax	 #, _777
	call	memcpy	 #
.L508:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:244: 			    - this->_M_impl._M_start);
	mov	rcx, QWORD PTR 184[r13]	 # _747, MEM[(struct vector *)this_15(D) + 184B].D.118790._M_impl.D.118129._M_start
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:386: 	if (__p)
	test	rcx, rcx	 # _747
	je	.L507	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:244: 			    - this->_M_impl._M_start);
	mov	rdx, QWORD PTR 200[r13]	 # tmp728, MEM[(struct vector *)this_15(D) + 184B].D.118790._M_impl.D.118129._M_end_of_storage
	sub	rdx, rcx	 # tmp728, _747
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L507:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rdi, QWORD PTR 104[rsp]	 # boxes$D118790$_M_impl$D118129$_M_end_of_storage, %sfp
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:245: 	      this->_M_impl._M_start = __tmp;
	mov	QWORD PTR 184[r13], rsi	 # MEM[(struct vector *)this_15(D) + 184B].D.118790._M_impl.D.118129._M_start, _777
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:246: 	      this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __xlen;
	add	rsi, rbx	 # prephitmp_1281, _732
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rax, QWORD PTR 96[rsp]	 # boxes, %sfp
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:246: 	      this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __xlen;
	mov	QWORD PTR 200[r13], rsi	 # MEM[(struct vector *)this_15(D) + 184B].D.118790._M_impl.D.118129._M_end_of_storage, prephitmp_1281
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	sub	rdi, rax	 # boxes$D118790$_M_impl$D118129$_M_end_of_storage, boxes
.L509:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:386: 	if (__p)
	cmp	QWORD PTR 96[rsp], 0	 # %sfp,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:262: 	  this->_M_impl._M_finish = this->_M_impl._M_start + __xlen;
	mov	QWORD PTR 192[r13], rsi	 # MEM[(struct vector *)this_15(D) + 184B].D.118790._M_impl.D.118129._M_finish, prephitmp_1281
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:386: 	if (__p)
	je	.L574	 #,
.L513:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	rcx, QWORD PTR 96[rsp]	 #, %sfp
	mov	rdx, rdi	 #, prephitmp_1275
 # source/simulation.cpp:123: 	}
	vmovaps	xmm6, XMMWORD PTR 288[rsp]	 #,
	vmovaps	xmm7, XMMWORD PTR 304[rsp]	 #,
	vmovaps	xmm8, XMMWORD PTR 320[rsp]	 #,
	vmovaps	xmm9, XMMWORD PTR 336[rsp]	 #,
	add	rsp, 360	 #,
	pop	rbx	 #
	pop	rsi	 #
	pop	rdi	 #
	pop	rbp	 #
	pop	r12	 #
	pop	r13	 #
	pop	r14	 #
	pop	r15	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	jmp	_ZdlPvy	 #
.L503:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:990:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	mov	r9, QWORD PTR 192[r13]	 # pretmp_1257, MEM[(const struct vector *)this_15(D) + 184B].D.118790._M_impl.D.118129._M_finish
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rdi, QWORD PTR 104[rsp]	 # boxes$D118790$_M_impl$D118129$_M_end_of_storage, %sfp
	mov	rsi, QWORD PTR 96[rsp]	 # boxes, %sfp
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:990:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	mov	r8, r9	 # _755, pretmp_1257
	sub	r8, rax	 # _755, _736
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	sub	rdi, rsi	 # boxes$D118790$_M_impl$D118129$_M_end_of_storage, boxes
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:248: 	  else if (size() >= __xlen)
	cmp	r8, rbx	 # _755, _732
	jnb	.L600	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:436: 	  if (__builtin_expect(_Num > 1, true))
	cmp	r8, 16	 # _755,
	jle	.L514	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:437: 	    __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
	mov	rdx, rsi	 #, boxes
	mov	rcx, rax	 #, _736
	mov	r15, rsi	 # boxes, boxes
	call	memmove	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:257: 	      std::__uninitialized_copy_a(__x._M_impl._M_start + size(),
	mov	r9, QWORD PTR 192[r13]	 # pretmp_1257, MEM[(struct vector *)this_15(D) + 184B].D.118790._M_impl.D.118129._M_finish
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:990:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	mov	rsi, QWORD PTR 184[r13]	 # pretmp_1259, MEM[(const struct vector *)this_15(D) + 184B].D.118790._M_impl.D.118129._M_start
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:990:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	mov	rcx, r9	 # tmp732, pretmp_1257
	sub	rcx, rsi	 # tmp732, pretmp_1259
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:262: 	  this->_M_impl._M_finish = this->_M_impl._M_start + __xlen;
	add	rsi, rbx	 # prephitmp_1281, _732
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:257: 	      std::__uninitialized_copy_a(__x._M_impl._M_start + size(),
	add	rcx, r15	 # _208, boxes
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_uninitialized.h:119: 	  for (; __first != __last; ++__first, (void)++__cur)
	cmp	QWORD PTR 88[rsp], rcx	 # %sfp, _208
	je	.L559	 #,
.L515:
	mov	rax, QWORD PTR 88[rsp]	 # boxes$D118790$_M_impl$D118129$_M_finish, %sfp
 # source/simulation.cpp:110: 		std::vector<BoundingBox> boxes = std::vector<BoundingBox>();	
	xor	edx, edx	 # ivtmp.1166
	sub	rax, rcx	 # boxes$D118790$_M_impl$D118129$_M_finish, _208
	.p2align 4,,10
	.p2align 3
.L519:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_construct.h:119:       ::new((void*)__p) _Tp(std::forward<_Args>(__args)...);
	vmovdqu	xmm2, XMMWORD PTR [rcx+rdx]	 # tmp966, MEM[(const struct BoundingBox &)_208 + ivtmp.1166_1504 * 1]
	vmovdqu	XMMWORD PTR [r9+rdx], xmm2	 # MEM[(struct BoundingBox *)prephitmp_1558 + ivtmp.1166_1504 * 1], tmp966
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_uninitialized.h:119: 	  for (; __first != __last; ++__first, (void)++__cur)
	add	rdx, 16	 # ivtmp.1166,
	cmp	rdx, rax	 # ivtmp.1166, _1509
	jne	.L519	 #,
	jmp	.L509	 #
.L395:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:262: 	  this->_M_impl._M_finish = this->_M_impl._M_start + __xlen;
	mov	rax, QWORD PTR 184[r13]	 # MEM[(struct vector *)this_15(D) + 184B].D.118790._M_impl.D.118129._M_start, MEM[(struct vector *)this_15(D) + 184B].D.118790._M_impl.D.118129._M_start
	mov	QWORD PTR 192[r13], rax	 # MEM[(struct vector *)this_15(D) + 184B].D.118790._M_impl.D.118129._M_finish, MEM[(struct vector *)this_15(D) + 184B].D.118790._M_impl.D.118129._M_start
.L574:
 # source/simulation.cpp:123: 	}
	vmovaps	xmm6, XMMWORD PTR 288[rsp]	 #,
	vmovaps	xmm7, XMMWORD PTR 304[rsp]	 #,
	vmovaps	xmm8, XMMWORD PTR 320[rsp]	 #,
	vmovaps	xmm9, XMMWORD PTR 336[rsp]	 #,
	add	rsp, 360	 #,
	pop	rbx	 #
	pop	rsi	 #
	pop	rdi	 #
	pop	rbp	 #
	pop	r12	 #
	pop	r13	 #
	pop	r14	 #
	pop	r15	 #
	ret	
.L522:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:955: 	  size_type __new_map_size = this->_M_impl._M_map_size
	mov	QWORD PTR 72[rsp], 3	 # %sfp,
	mov	ecx, 24	 # prephitmp_55,
	jmp	.L410	 #
.L523:
	mov	QWORD PTR 72[rsp], 3	 # %sfp,
	mov	ecx, 24	 # _643,
	jmp	.L426	 #
.L404:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:949: 	    std::copy_backward(this->_M_impl._M_start._M_node,
	lea	rcx, 8[r10+rbp]	 # _203,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:747: 	  if (__builtin_expect(_Num > 1, true))
	cmp	r8, 8	 # _1309,
	jle	.L408	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:748: 	    __builtin_memmove(__result - _Num, __first, sizeof(_Tp) * _Num);
	sub	rcx, r8	 # tmp517, _1309
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:748: 	    __builtin_memmove(__result - _Num, __first, sizeof(_Tp) * _Num);
	mov	rdx, r12	 #, _138
	mov	QWORD PTR 72[rsp], r10	 # %sfp, __new_nstart
	call	memmove	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	mov	r10, QWORD PTR 72[rsp]	 # __new_nstart, %sfp
	mov	rax, QWORD PTR [r10]	 # prephitmp_249,* __new_nstart
	jmp	.L406	 #
.L420:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:949: 	    std::copy_backward(this->_M_impl._M_start._M_node,
	lea	rcx, 8[r10+r15]	 # _319,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:747: 	  if (__builtin_expect(_Num > 1, true))
	cmp	r8, 8	 # _1304,
	jle	.L424	 #,
	mov	QWORD PTR 72[rsp], r10	 # %sfp, __new_nstart
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:748: 	    __builtin_memmove(__result - _Num, __first, sizeof(_Tp) * _Num);
	sub	rcx, r8	 # tmp559, _1304
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:748: 	    __builtin_memmove(__result - _Num, __first, sizeof(_Tp) * _Num);
	mov	rdx, r12	 #, _254
	vzeroupper
	call	memmove	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	mov	r10, QWORD PTR 72[rsp]	 # __new_nstart, %sfp
	mov	rax, QWORD PTR [r10]	 # prephitmp_165,* __new_nstart
	jmp	.L422	 #
.L435:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:949: 	    std::copy_backward(this->_M_impl._M_start._M_node,
	lea	rcx, 8[r10+r15]	 # _435,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:747: 	  if (__builtin_expect(_Num > 1, true))
	cmp	r8, 8	 # _1299,
	jle	.L439	 #,
	mov	QWORD PTR 72[rsp], r10	 # %sfp, __new_nstart
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:748: 	    __builtin_memmove(__result - _Num, __first, sizeof(_Tp) * _Num);
	sub	rcx, r8	 # tmp599, _1299
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:748: 	    __builtin_memmove(__result - _Num, __first, sizeof(_Tp) * _Num);
	mov	rdx, r12	 #, _370
	vzeroupper
	call	memmove	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	mov	r10, QWORD PTR 72[rsp]	 # __new_nstart, %sfp
	mov	rax, QWORD PTR [r10]	 # prephitmp_307,* __new_nstart
	jmp	.L437	 #
.L475:
 # include/gl_setup.hpp:109:                 if (x < m_x0) m_x0 = x;
	cmp	eax, ebp	 # SR.1092, SR.1094
	cmova	eax, ebp	 # SR.1092,, SR.1092, SR.1094
	jmp	.L476	 #
.L598:
	vzeroupper
.L412:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:136: 	    std::__throw_bad_alloc();
	call	_ZSt17__throw_bad_allocv	 #
.L411:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:134: 	    if (__n > (std::size_t(-1) / sizeof(_Tp)))
	cmp	r11, rdx	 # tmp504, __new_map_size
	jnb	.L412	 #,
	jmp	.L428	 #
.L596:
 # include/gl_setup.hpp:88:             return m_x0 == 0 && m_y0 == 0 && m_x1 == 0 && m_y1 == 0;
	test	r8d, r8d	 # _1434
	je	.L477	 #,
 # include/gl_setup.hpp:110:                 if (x > m_x1) m_x1 = x;
	cmp	ebp, r8d	 # SR.1094, _1434
	cmovb	ebp, r8d	 # SR.1094,, SR.1094, _1434
	jmp	.L480	 #
.L587:
	mov	r13, rax	 # this, this
	jmp	.L502	 #
.L600:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:436: 	  if (__builtin_expect(_Num > 1, true))
	cmp	rbx, 16	 # _732,
	jle	.L511	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:437: 	    __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
	mov	rdx, rsi	 #, boxes
	mov	r8, rbx	 #, _732
	mov	rcx, rax	 #, _736
	call	memmove	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:262: 	  this->_M_impl._M_finish = this->_M_impl._M_start + __xlen;
	mov	rsi, QWORD PTR 184[r13]	 # _732, MEM[(struct vector *)this_15(D) + 184B].D.118790._M_impl.D.118129._M_start
	add	rsi, rbx	 # _732, _732
.L559:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:262: 	  this->_M_impl._M_finish = this->_M_impl._M_start + __xlen;
	mov	QWORD PTR 192[r13], rsi	 # MEM[(struct vector *)this_15(D) + 184B].D.118790._M_impl.D.118129._M_finish, prephitmp_1281
	jmp	.L513	 #
.L405:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:438: 	  else if (_Num == 1)
	jne	.L577	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	mov	rax, QWORD PTR [r12]	 # prephitmp_249, *_138
	mov	QWORD PTR [r10], rax	 # *__new_nstart_193, prephitmp_249
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	jmp	.L406	 #
.L421:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:438: 	  else if (_Num == 1)
	je	.L423	 #,
.L578:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	mov	rax, QWORD PTR [r10]	 # prephitmp_165, *__new_nstart_309
	vzeroupper
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	jmp	.L422	 #
.L436:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:438: 	  else if (_Num == 1)
	je	.L438	 #,
.L579:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	mov	rax, QWORD PTR [r10]	 # prephitmp_307, *__new_nstart_425
	vzeroupper
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	jmp	.L437	 #
.L488:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:990:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	mov	rax, QWORD PTR 96[rsp]	 # boxes, %sfp
	mov	rsi, QWORD PTR 104[rsp]	 # _714, %sfp
	sub	rsi, rax	 # _714, boxes
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:1895: 	if (max_size() - size() < __n)
	movabs	rax, 576460752303423487	 # tmp708,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:990:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	mov	rdx, rsi	 # tmp707, _714
	sar	rdx, 4	 # tmp707,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:1895: 	if (max_size() - size() < __n)
	cmp	rdx, rax	 # tmp707, tmp708
	je	.L601	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:262:       if (__a < __b)
	mov	rcx, QWORD PTR 96[rsp]	 # boxes, %sfp
	cmp	QWORD PTR 104[rsp], rcx	 # %sfp, boxes
	je	.L602	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:1898: 	const size_type __len = size() + (std::max)(size(), __n);
	lea	rax, [rdx+rdx]	 # __len,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:1899: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	cmp	rax, rdx	 # __len, tmp707
	jb	.L530	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:378: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	test	rax, rax	 # __len
	jne	.L584	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_construct.h:97:     { return ::new((void*)__location) _Tp(std::forward<_Args>(__args)...); }
	vmovdqu	XMMWORD PTR [rsi], xmm8	 # MEM <vector(4) unsigned int> [(unsigned int *)_884], vect__61.1152
	xor	ebx, ebx	 # prephitmp_324
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:378: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	xor	esi, esi	 # iftmp.139_440
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_uninitialized.h:1104:       _ForwardIterator __cur = __result;
	xor	eax, eax	 # __cur
.L496:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_uninitialized.h:1105:       for (; __first != __last; ++__first, (void)++__cur)
	mov	rdx, QWORD PTR 96[rsp]	 # __first, %sfp
	mov	rcx, QWORD PTR 88[rsp]	 # boxes$D118790$_M_impl$D118129$_M_finish, %sfp
	.p2align 4,,10
	.p2align 3
.L498:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_construct.h:97:     { return ::new((void*)__location) _Tp(std::forward<_Args>(__args)...); }
	vmovdqu	xmm3, XMMWORD PTR [rdx]	 # tmp928, MEM[(struct BoundingBox &)__first_82]
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_uninitialized.h:1105:       for (; __first != __last; ++__first, (void)++__cur)
	add	rdx, 16	 # __first,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_uninitialized.h:1105:       for (; __first != __last; ++__first, (void)++__cur)
	add	rax, 16	 # __cur,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_construct.h:97:     { return ::new((void*)__location) _Tp(std::forward<_Args>(__args)...); }
	vmovdqu	XMMWORD PTR -16[rax], xmm3	 # MEM[(struct BoundingBox *)__cur_782], tmp928
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_uninitialized.h:1105:       for (; __first != __last; ++__first, (void)++__cur)
	cmp	rdx, rcx	 # __first, boxes$D118790$_M_impl$D118129$_M_finish
	jne	.L498	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:483: 	      ++__new_finish;
	mov	rax, QWORD PTR 88[rsp]	 # boxes$D118790$_M_impl$D118129$_M_finish, %sfp
	mov	rcx, QWORD PTR 96[rsp]	 # boxes, %sfp
	sub	rax, rcx	 # boxes$D118790$_M_impl$D118129$_M_finish, boxes
	lea	rax, 16[rsi+rax]	 # boxes$D118790$_M_impl$D118129$_M_finish,
	mov	QWORD PTR 88[rsp], rax	 # %sfp, boxes$D118790$_M_impl$D118129$_M_finish
.L497:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:386: 	if (__p)
	test	rcx, rcx	 # boxes
	je	.L499	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:520: 		    this->_M_impl._M_end_of_storage - __old_start);
	mov	rdx, QWORD PTR 104[rsp]	 # boxes$D118790$_M_impl$D118129$_M_end_of_storage, %sfp
	sub	rdx, rcx	 # boxes$D118790$_M_impl$D118129$_M_end_of_storage, boxes
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L499:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:523:       this->_M_impl._M_end_of_storage = __new_start + __len;
	mov	QWORD PTR 104[rsp], rbx	 # %sfp, prephitmp_324
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:521:       this->_M_impl._M_start = __new_start;
	mov	QWORD PTR 96[rsp], rsi	 # %sfp, iftmp.139_440
	jmp	.L489	 #
.L429:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:438: 	  else if (_Num == 1)
	jne	.L430	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	mov	rax, QWORD PTR [r12]	 # _342, *_254
	mov	QWORD PTR [r10], rax	 # *__new_nstart_333, _342
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	jmp	.L430	 #
.L413:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:438: 	  else if (_Num == 1)
	jne	.L414	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	mov	rax, QWORD PTR [r12]	 # _226, *_138
	mov	QWORD PTR [r10], rax	 # *__new_nstart_217, _226
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	jmp	.L414	 #
.L457:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:438: 	  else if (_Num == 1)
	jne	.L458	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	mov	rax, QWORD PTR [r12]	 # _574, *_486
	mov	QWORD PTR [r10], rax	 # *__new_nstart_565, _574
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	jmp	.L458	 #
.L443:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:438: 	  else if (_Num == 1)
	jne	.L444	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	mov	rax, QWORD PTR [r12]	 # _458, *_370
	mov	QWORD PTR [r10], rax	 # *__new_nstart_449, _458
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	jmp	.L444	 #
.L450:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:438: 	  else if (_Num == 1)
	je	.L452	 #,
.L582:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	mov	rax, QWORD PTR [r10]	 # pretmp_1170, *__new_nstart_541
	vzeroupper
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	jmp	.L451	 #
.L584:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:1899: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	movabs	rdx, 576460752303423487	 # tmp762,
	cmp	rax, rdx	 # __len, tmp762
	cmova	rax, rdx	 # __len,, tmp712, tmp762
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	sal	rax, 4	 # tmp712,
	mov	rbx, rax	 # _1230, tmp712
.L494:
	mov	rcx, rbx	 #, _1230
	call	_Znwy	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_uninitialized.h:1105:       for (; __first != __last; ++__first, (void)++__cur)
	mov	rdi, QWORD PTR 96[rsp]	 # boxes, %sfp
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:523:       this->_M_impl._M_end_of_storage = __new_start + __len;
	add	rbx, rax	 # prephitmp_324, __cur
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_uninitialized.h:1105:       for (; __first != __last; ++__first, (void)++__cur)
	cmp	QWORD PTR 88[rsp], rdi	 # %sfp, boxes
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_construct.h:97:     { return ::new((void*)__location) _Tp(std::forward<_Args>(__args)...); }
	vmovdqu	XMMWORD PTR [rax+rsi], xmm8	 # MEM <vector(4) unsigned int> [(unsigned int *)_691], vect__61.1152
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_uninitialized.h:1105:       for (; __first != __last; ++__first, (void)++__cur)
	mov	rsi, rax	 # iftmp.139_440, __cur
	jne	.L496	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:483: 	      ++__new_finish;
	lea	rax, 16[rax]	 # boxes$D118790$_M_impl$D118129$_M_finish,
	mov	rcx, rdi	 # boxes, boxes
	mov	QWORD PTR 88[rsp], rax	 # %sfp, boxes$D118790$_M_impl$D118129$_M_finish
	jmp	.L497	 #
.L477:
 # include/gl_setup.hpp:88:             return m_x0 == 0 && m_y0 == 0 && m_x1 == 0 && m_y1 == 0;
	test	edx, edx	 # _1435
	jne	.L480	 #,
	vmovd	xmm2, ebp	 # SR.1094, SR.1094
	vpinsrd	xmm8, xmm2, r12d, 1	 # tmp680, SR.1094, _92
	vpunpcklqdq	xmm8, xmm8, xmm8	 # vect__61.1152, tmp680, tmp680
	jmp	.L479	 #
.L602:
	mov	rax, rdx	 # tmp707, tmp707
	add	rax, 1	 # tmp707,
	jnc	.L584	 #,
.L530:
	movabs	rbx, 9223372036854775792	 # _1230,
	jmp	.L494	 #
.L424:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:749: 	  else if (_Num == 1)
	jne	.L578	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	mov	rax, QWORD PTR [r12]	 # _359, *_254
	mov	QWORD PTR -8[rcx], rax	 # MEM[(struct Vec2 * *)_319 + -8B], _359
	jmp	.L578	 #
.L408:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:749: 	  else if (_Num == 1)
	jne	.L577	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	mov	rax, QWORD PTR [r12]	 # _243, *_138
	mov	QWORD PTR -8[rcx], rax	 # MEM[(struct Vec2 * *)_203 + -8B], _243
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	mov	rax, QWORD PTR [r10]	 # prephitmp_249,* __new_nstart
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	jmp	.L406	 #
.L439:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:749: 	  else if (_Num == 1)
	jne	.L579	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	mov	rax, QWORD PTR [r12]	 # _475, *_370
	mov	QWORD PTR -8[rcx], rax	 # MEM[(struct Vec2 * *)_435 + -8B], _475
	jmp	.L579	 #
.L453:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:749: 	  else if (_Num == 1)
	jne	.L582	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	mov	rax, QWORD PTR [r12]	 # _591, *_486
	mov	QWORD PTR -8[rcx], rax	 # MEM[(struct Vec2 * *)_551 + -8B], _591
	jmp	.L582	 #
.L438:
	mov	rax, QWORD PTR [r12]	 # prephitmp_307, *_370
	mov	QWORD PTR [r10], rax	 # *__new_nstart_425, prephitmp_307
	vzeroupper
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	jmp	.L437	 #
.L423:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	mov	rax, QWORD PTR [r12]	 # prephitmp_165, *_254
	mov	QWORD PTR [r10], rax	 # *__new_nstart_309, prephitmp_165
	vzeroupper
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	jmp	.L422	 #
.L452:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	mov	rax, QWORD PTR [r12]	 # pretmp_1170, *_486
	mov	QWORD PTR [r10], rax	 # *__new_nstart_541, pretmp_1170
	vzeroupper
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	jmp	.L451	 #
.L514:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:438: 	  else if (_Num == 1)
	jne	.L518	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	vmovdqu	xmm5, XMMWORD PTR [rsi]	 # MEM[(const struct BoundingBox &)boxes_901], MEM[(const struct BoundingBox &)boxes_901]
	vmovdqa	XMMWORD PTR 32[rsp], xmm5	 # %sfp, MEM[(const struct BoundingBox &)boxes_901]
	vmovdqu	XMMWORD PTR [rax], xmm5	 # *_736, MEM[(const struct BoundingBox &)boxes_901]
.L518:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:257: 	      std::__uninitialized_copy_a(__x._M_impl._M_start + size(),
	mov	rsi, QWORD PTR 96[rsp]	 # boxes, %sfp
	lea	rcx, [rsi+r8]	 # _208,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:262: 	  this->_M_impl._M_finish = this->_M_impl._M_start + __xlen;
	lea	rsi, [rax+rbx]	 # prephitmp_1281,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_uninitialized.h:119: 	  for (; __first != __last; ++__first, (void)++__cur)
	mov	rax, QWORD PTR 88[rsp]	 # boxes$D118790$_M_impl$D118129$_M_finish, %sfp
	cmp	rcx, rax	 # _208, boxes$D118790$_M_impl$D118129$_M_finish
	jne	.L515	 #,
	jmp	.L509	 #
.L599:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:135: 	      std::__throw_bad_array_new_length();
	call	_ZSt28__throw_bad_array_new_lengthv	 #
.L571:
	vzeroupper
.L417:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:493: 	  __throw_length_error(
	lea	rcx, .LC0[rip]	 # tmp505,
	call	_ZSt20__throw_length_errorPKc	 #
.L511:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/vector.tcc:262: 	  this->_M_impl._M_finish = this->_M_impl._M_start + __xlen;
	lea	rsi, [rax+rbx]	 # prephitmp_1281,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:438: 	  else if (_Num == 1)
	jne	.L509	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	mov	rcx, QWORD PTR 96[rsp]	 # boxes, %sfp
	vmovdqu	xmm5, XMMWORD PTR [rcx]	 # MEM[(const struct BoundingBox &)boxes_901], MEM[(const struct BoundingBox &)boxes_901]
	vmovdqa	XMMWORD PTR 32[rsp], xmm5	 # %sfp, MEM[(const struct BoundingBox &)boxes_901]
	vmovdqu	XMMWORD PTR [rax], xmm5	 # *_736, MEM[(const struct BoundingBox &)boxes_901]
	jmp	.L559	 #
.L601:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:1896: 	  __throw_length_error(__N(__s));
	lea	rcx, .LC9[rip]	 # tmp709,
	call	_ZSt20__throw_length_errorPKc	 #
	nop	
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA5929:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5929-.LLSDACSB5929
.LLSDACSB5929:
.LLSDACSE5929:
	.text
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN5Lenia10Simulation6UpdateEv
	.def	_ZN5Lenia10Simulation6UpdateEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Lenia10Simulation6UpdateEv
_ZN5Lenia10Simulation6UpdateEv:
.LFB5890:
	push	rsi	 #
	.seh_pushreg	rsi
	push	rbx	 #
	.seh_pushreg	rbx
	sub	rsp, 56	 #,
	.seh_stackalloc	56
	vmovaps	XMMWORD PTR 32[rsp], xmm6	 #,
	.seh_savexmm	xmm6, 32
	.seh_endprologue
 # source/simulation.cpp:60: 		glBindBufferBase(GL_SHADER_STORAGE_BUFFER, 1 - m_readWriteBinding, m_writeBuffer.m_ID);
	mov	rsi, QWORD PTR .refptr.glad_glBindBufferBase[rip]	 # tmp128,
 # source/simulation.cpp:60: 		glBindBufferBase(GL_SHADER_STORAGE_BUFFER, 1 - m_readWriteBinding, m_writeBuffer.m_ID);
	mov	edx, 1	 # tmp127,
	vxorps	xmm6, xmm6, xmm6	 # tmp169
 # source/simulation.cpp:60: 		glBindBufferBase(GL_SHADER_STORAGE_BUFFER, 1 - m_readWriteBinding, m_writeBuffer.m_ID);
	movsx	eax, BYTE PTR 232[rcx]	 # this_2(D)->m_readWriteBinding, this_2(D)->m_readWriteBinding
 # source/simulation.cpp:60: 		glBindBufferBase(GL_SHADER_STORAGE_BUFFER, 1 - m_readWriteBinding, m_writeBuffer.m_ID);
	mov	r8d, DWORD PTR 80[rcx]	 #, this_2(D)->m_writeBuffer.m_ID
 # source/simulation.cpp:51: 	void Simulation::Update() noexcept {
	mov	rbx, rcx	 # this, tmp168
 # source/simulation.cpp:60: 		glBindBufferBase(GL_SHADER_STORAGE_BUFFER, 1 - m_readWriteBinding, m_writeBuffer.m_ID);
	sub	edx, eax	 # tmp126, this_2(D)->m_readWriteBinding
 # source/simulation.cpp:60: 		glBindBufferBase(GL_SHADER_STORAGE_BUFFER, 1 - m_readWriteBinding, m_writeBuffer.m_ID);
	mov	ecx, 37074	 #,
	call	[QWORD PTR [rsi]]	 # glad_glBindBufferBase
 # source/simulation.cpp:61: 		glBindBufferBase(GL_SHADER_STORAGE_BUFFER, m_readWriteBinding, m_readBuffer.m_ID);
	movsx	edx, BYTE PTR 232[rbx]	 # this_2(D)->m_readWriteBinding, this_2(D)->m_readWriteBinding
	mov	ecx, 37074	 #,
	mov	r8d, DWORD PTR 48[rbx]	 #, this_2(D)->m_readBuffer.m_ID
	call	[QWORD PTR [rsi]]	 # glad_glBindBufferBase
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:1126: 	return *(this->_M_impl._M_start + __n);
	mov	r9, QWORD PTR 120[rbx]	 # _16, MEM[(struct vector *)this_2(D) + 120B].D.116668._M_impl.D.116007._M_start
 # source/simulation.cpp:62: 		m_readWriteBinding = 1 - m_readWriteBinding;
	mov	eax, 1	 # tmp137,
 # include/gl_setup.hpp:69: 			glGetNamedBufferSubData(m_ID, 0, m_data.size(), &m_data[0]);
	xor	edx, edx	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:990:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	mov	r8, QWORD PTR 128[rbx]	 # tmp138, MEM[(const struct vector *)this_2(D) + 120B].D.116668._M_impl.D.116007._M_finish
 # source/simulation.cpp:62: 		m_readWriteBinding = 1 - m_readWriteBinding;
	sub	al, BYTE PTR 232[rbx]	 # tmp136, this_2(D)->m_readWriteBinding
 # include/gl_setup.hpp:69: 			glGetNamedBufferSubData(m_ID, 0, m_data.size(), &m_data[0]);
	mov	ecx, DWORD PTR 112[rbx]	 # MEM[(struct Buffer *)this_2(D) + 112B].m_ID, MEM[(struct Buffer *)this_2(D) + 112B].m_ID
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:990:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	sub	r8, r9	 # tmp138, _16
 # source/simulation.cpp:62: 		m_readWriteBinding = 1 - m_readWriteBinding;
	mov	BYTE PTR 232[rbx], al	 # this_2(D)->m_readWriteBinding, tmp136
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:990:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	sar	r8, 2	 # tmp141,
 # include/gl_setup.hpp:69: 			glGetNamedBufferSubData(m_ID, 0, m_data.size(), &m_data[0]);
	movabs	rax, -6148914691236517205	 # tmp143,
	imul	r8, rax	 #, tmp143
	mov	rax, QWORD PTR .refptr.glad_glGetNamedBufferSubData[rip]	 # tmp145,
	call	[QWORD PTR [rax]]	 # glad_glGetNamedBufferSubData
 # source/simulation.cpp:54: 		CalculateBoundingBoxes();
	mov	rcx, rbx	 #, this
 # source/simulation.cpp:43: 		m_mass = (f64)m_shaderData.sum / 10000.f;
	vcvtusi2sd	xmm0, xmm6, DWORD PTR 220[rbx]	 # tmp170, tmp169, this_2(D)->m_shaderData.sum
 # source/simulation.cpp:43: 		m_mass = (f64)m_shaderData.sum / 10000.f;
	vdivsd	xmm0, xmm0, QWORD PTR .LC5[rip]	 # _23, tmp147,
 # source/simulation.cpp:43: 		m_mass = (f64)m_shaderData.sum / 10000.f;
	vmovsd	QWORD PTR 32[rbx], xmm0	 # this_2(D)->m_mass, _23
 # source/simulation.cpp:45: 		f32 y = m_shaderData.centerOfMassY / f32(100.0 * m_mass);
	vmulsd	xmm0, xmm0, QWORD PTR .LC6[rip]	 # tmp149, _23,
 # source/simulation.cpp:46: 		f32 x = m_shaderData.centerOfMassX / f32(100.0 * m_mass);
	vcvtusi2ss	xmm1, xmm6, DWORD PTR 224[rbx]	 # tmp171, tmp169, this_2(D)->m_shaderData.centerOfMassX
 # source/simulation.cpp:45: 		f32 y = m_shaderData.centerOfMassY / f32(100.0 * m_mass);
	vcvtusi2ss	xmm6, xmm6, DWORD PTR 228[rbx]	 # tmp172, tmp169, this_2(D)->m_shaderData.centerOfMassY
 # source/simulation.cpp:45: 		f32 y = m_shaderData.centerOfMassY / f32(100.0 * m_mass);
	vcvtsd2ss	xmm0, xmm0, xmm0	 # _27, tmp149
 # source/simulation.cpp:46: 		f32 x = m_shaderData.centerOfMassX / f32(100.0 * m_mass);
	vdivss	xmm1, xmm1, xmm0	 # x, tmp152, _27
 # source/simulation.cpp:45: 		f32 y = m_shaderData.centerOfMassY / f32(100.0 * m_mass);
	vdivss	xmm6, xmm6, xmm0	 # y, tmp155, _27
 # source/simulation.cpp:48: 		m_centerOfMass = { u32(x), u32(y) };
	vcvttss2usi	eax, xmm1	 # tmp154, x
 # source/simulation.cpp:48: 		m_centerOfMass = { u32(x), u32(y) };
	vmovd	xmm2, eax	 # tmp154, tmp154
 # source/simulation.cpp:48: 		m_centerOfMass = { u32(x), u32(y) };
	vcvttss2usi	edx, xmm6	 # tmp157, y
 # source/simulation.cpp:48: 		m_centerOfMass = { u32(x), u32(y) };
	vpinsrd	xmm0, xmm2, edx, 1	 # tmp151, tmp154, tmp157
	vmovq	QWORD PTR 40[rbx], xmm0	 # MEM <vector(2) unsigned int> [(unsigned int *)this_2(D) + 40B], tmp151
 # source/simulation.cpp:54: 		CalculateBoundingBoxes();
	call	_ZN5Lenia10Simulation22CalculateBoundingBoxesEv	 #
 # source/simulation.cpp:55: 		m_dataBuffer.m_data[0] = defaultShaderData;
	mov	rax, QWORD PTR 120[rbx]	 # MEM[(struct vector *)this_2(D) + 120B].D.116668._M_impl.D.116007._M_start, MEM[(struct vector *)this_2(D) + 120B].D.116668._M_impl.D.116007._M_start
	mov	rdx, QWORD PTR 208[rbx]	 # this_2(D)->defaultShaderData, this_2(D)->defaultShaderData
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:1126: 	return *(this->_M_impl._M_start + __n);
	mov	r9, QWORD PTR 184[rbx]	 # _8, MEM[(struct vector *)this_2(D) + 184B].D.118790._M_impl.D.118129._M_start
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:990:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	mov	r8, QWORD PTR 192[rbx]	 # tmp161, MEM[(const struct vector *)this_2(D) + 184B].D.118790._M_impl.D.118129._M_finish
 # include/gl_setup.hpp:73:             glNamedBufferSubData(m_ID, 0, m_data.size(), &m_data[0]);
	mov	ecx, DWORD PTR 176[rbx]	 # MEM[(struct Buffer *)this_2(D) + 176B].m_ID, MEM[(struct Buffer *)this_2(D) + 176B].m_ID
 # source/simulation.cpp:55: 		m_dataBuffer.m_data[0] = defaultShaderData;
	mov	QWORD PTR [rax], rdx	 # MEM[(struct value_type *)_13], this_2(D)->defaultShaderData
	mov	edx, DWORD PTR 216[rbx]	 # this_2(D)->defaultShaderData, this_2(D)->defaultShaderData
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:990:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	sub	r8, r9	 # tmp161, _8
 # include/gl_setup.hpp:73:             glNamedBufferSubData(m_ID, 0, m_data.size(), &m_data[0]);
	sar	r8, 4	 #,
 # source/simulation.cpp:55: 		m_dataBuffer.m_data[0] = defaultShaderData;
	mov	DWORD PTR 8[rax], edx	 # MEM[(struct value_type *)_13], this_2(D)->defaultShaderData
 # include/gl_setup.hpp:73:             glNamedBufferSubData(m_ID, 0, m_data.size(), &m_data[0]);
	mov	rax, QWORD PTR .refptr.glad_glNamedBufferSubData[rip]	 # tmp166,
	xor	edx, edx	 #
	call	[QWORD PTR [rax]]	 # glad_glNamedBufferSubData
	nop	
 # source/simulation.cpp:57: 	}
	vmovaps	xmm6, XMMWORD PTR 32[rsp]	 #,
	add	rsp, 56	 #,
	pop	rbx	 #
	pop	rsi	 #
	ret	
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA5890:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5890-.LLSDACSB5890
.LLSDACSB5890:
.LLSDACSE5890:
	.text
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZNK5Lenia10Simulation15FillBoundingBoxEjjt
	.def	_ZNK5Lenia10Simulation15FillBoundingBoxEjjt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK5Lenia10Simulation15FillBoundingBoxEjjt
_ZNK5Lenia10Simulation15FillBoundingBoxEjjt:
.LFB5893:
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
	sub	rsp, 376	 #,
	.seh_stackalloc	376
	vmovaps	XMMWORD PTR 272[rsp], xmm6	 #,
	.seh_savexmm	xmm6, 272
	vmovaps	XMMWORD PTR 288[rsp], xmm7	 #,
	.seh_savexmm	xmm7, 288
	vmovaps	XMMWORD PTR 304[rsp], xmm8	 #,
	.seh_savexmm	xmm8, 304
	vmovaps	XMMWORD PTR 320[rsp], xmm9	 #,
	.seh_savexmm	xmm9, 320
	vmovaps	XMMWORD PTR 336[rsp], xmm10	 #,
	.seh_savexmm	xmm10, 336
	vmovaps	XMMWORD PTR 352[rsp], xmm11	 #,
	.seh_savexmm	xmm11, 352
	.seh_endprologue
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:152:       : _M_cur(), _M_first(), _M_last(), _M_node() { }
	vpxor	xmm0, xmm0, xmm0	 # tmp420
 # source/simulation.cpp:69: 	BoundingBox Simulation::FillBoundingBox(const u32 x, const u32 y, const u16 padding) const noexcept {
	mov	ebx, DWORD PTR 480[rsp]	 # padding, padding
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:460:       { _M_initialize_map(0); }
	lea	r12, 192[rsp]	 # tmp643,
	vmovd	xmm1, r8d	 # tmp739, tmp656
 # source/simulation.cpp:69: 	BoundingBox Simulation::FillBoundingBox(const u32 x, const u32 y, const u16 padding) const noexcept {
	mov	QWORD PTR 448[rsp], rcx	 # .result_ptr, tmp654
	mov	QWORD PTR 456[rsp], rdx	 # this, tmp655
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:460:       { _M_initialize_map(0); }
	mov	rcx, r12	 #, tmp643
	xor	edx, edx	 #
	vpinsrd	xmm6, xmm1, r9d, 1	 # tmp418, tmp739,
 # source/simulation.cpp:69: 	BoundingBox Simulation::FillBoundingBox(const u32 x, const u32 y, const u16 padding) const noexcept {
	mov	DWORD PTR 464[rsp], r8d	 # x, tmp656
	vpunpcklqdq	xmm6, xmm6, xmm6	 # vect_prephitmp_1025.1259, tmp418, tmp418
	mov	DWORD PTR 472[rsp], r9d	 # y, tmp657
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:152:       : _M_cur(), _M_first(), _M_last(), _M_node() { }
	vmovdqu64	ZMMWORD PTR 208[rsp], zmm0	 # MEM <vector(8) long long unsigned int> [(void *)&points + 16B], tmp420
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:517: 	: _M_map(), _M_map_size(), _M_start(), _M_finish()
	mov	QWORD PTR 192[rsp], 0	 # MEM[(struct _Deque_impl_data *)&points]._M_map,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:517: 	: _M_map(), _M_map_size(), _M_start(), _M_finish()
	mov	QWORD PTR 200[rsp], 0	 # MEM[(struct _Deque_impl_data *)&points]._M_map_size,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:460:       { _M_initialize_map(0); }
	vzeroupper
	call	_ZNSt11_Deque_baseIN5Lenia4Vec2IjEESaIS2_EE17_M_initialize_mapEy	 #
 # source/simulation.cpp:72: 		for (u32 i = 0; i < padding; i++) 
	mov	edx, ebx	 # padding, padding
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:273:       { return __x._M_cur == __y._M_cur; }
	mov	r13, QWORD PTR 208[rsp]	 # prephitmp_1034, MEM[(const struct _Self &)&points + 16]._M_cur
 # source/simulation.cpp:72: 		for (u32 i = 0; i < padding; i++) 
	and	edx, 65535	 # padding,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:273:       { return __x._M_cur == __y._M_cur; }
	mov	rbx, QWORD PTR 240[rsp]	 # _713, MEM[(const struct _Self &)&points + 48]._M_cur
 # source/simulation.cpp:72: 		for (u32 i = 0; i < padding; i++) 
	mov	DWORD PTR 60[rsp], edx	 # %sfp, _125
	je	.L668	 #,
	mov	r11d, DWORD PTR 464[rsp]	 # tmp744, x
	mov	QWORD PTR 64[rsp], r12	 # %sfp, tmp643
	mov	edi, DWORD PTR 464[rsp]	 # _977, x
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:373: 	  * (__x._M_node - __y._M_node - bool(__x._M_node))
	mov	rsi, QWORD PTR 264[rsp]	 # prephitmp_1016, MEM[(const struct _Self &)&points + 48]._M_node
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:168: 	    != this->_M_impl._M_finish._M_last - 1)
	mov	rcx, QWORD PTR 256[rsp]	 # prephitmp_1015, points.D.136175._M_impl.D.135525._M_finish._M_last
	add	r11d, r11d	 # _978
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:374: 	  + (__x._M_cur - __x._M_first)
	mov	rax, QWORD PTR 248[rsp]	 # prephitmp_1017, MEM[(const struct _Self &)&points + 48]._M_first
	mov	DWORD PTR 40[rsp], r11d	 # %sfp, _978
	sub	edi, edx	 # _977, _125
	mov	r11d, DWORD PTR 472[rsp]	 # tmp745, y
	vmovd	xmm7, DWORD PTR 464[rsp]	 # ivtmp.1297, x
	mov	DWORD PTR 48[rsp], edi	 # %sfp, _977
	mov	rdi, rsi	 # prephitmp_1016, prephitmp_1016
	lea	r15d, [r11+r11]	 # _972,
	lea	r14d, [r11+rdx]	 # _944,
.L606:
 # source/simulation.cpp:74: 			points.push({ x + i, y + j });
	mov	edx, DWORD PTR 40[rsp]	 # _434, %sfp
	vmovd	esi, xmm7	 # ivtmp.1297, ivtmp.1297
	mov	r12, rdi	 # prephitmp_1016, prephitmp_1016
	mov	ebp, DWORD PTR 472[rsp]	 # ivtmp.1292, y
	sub	edx, esi	 # _434, ivtmp.1297
	vmovd	xmm9, edx	 # _434, _434
	jmp	.L667	 #
	.p2align 4,,10
	.p2align 3
.L739:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_construct.h:97:     { return ::new((void*)__location) _Tp(std::forward<_Args>(__args)...); }
	vmovq	QWORD PTR [rbx], xmm8	 # MEM <vector(2) unsigned int> [(unsigned int *)prephitmp_1103], _891
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:173: 	    ++this->_M_impl._M_finish._M_cur;
	lea	rsi, 8[rbx]	 # _172,
.L608:
 # source/simulation.cpp:75: 			points.push({ x - i, y - j });
	mov	r9d, r15d	 # _4, _972
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:173: 	    ++this->_M_impl._M_finish._M_cur;
	mov	QWORD PTR 240[rsp], rsi	 # points.D.136175._M_impl.D.135525._M_finish._M_cur, _172
	vpinsrd	xmm11, xmm7, ebp, 1	 # _705, ivtmp.1297, ivtmp.1292
 # source/simulation.cpp:75: 			points.push({ x - i, y - j });
	sub	r9d, ebp	 # _4, ivtmp.1292
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:167: 	if (this->_M_impl._M_finish._M_cur
	cmp	rsi, rdx	 # _172, _171
	vpinsrd	xmm10, xmm9, r9d, 1	 # _757, _434, _4
	vpinsrd	xmm8, xmm7, r9d, 1	 # _825, ivtmp.1297, _4
	je	.L623	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:173: 	    ++this->_M_impl._M_finish._M_cur;
	lea	rbx, 8[rsi]	 # _161,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_construct.h:97:     { return ::new((void*)__location) _Tp(std::forward<_Args>(__args)...); }
	vmovq	QWORD PTR [rsi], xmm8	 # MEM <vector(2) unsigned int> [(unsigned int *)prephitmp_654], _825
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:167: 	if (this->_M_impl._M_finish._M_cur
	cmp	rbx, rdx	 # _161, _171
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:173: 	    ++this->_M_impl._M_finish._M_cur;
	mov	QWORD PTR 240[rsp], rbx	 # points.D.136175._M_impl.D.135525._M_finish._M_cur, _161
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:167: 	if (this->_M_impl._M_finish._M_cur
	je	.L639	 #,
.L742:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:173: 	    ++this->_M_impl._M_finish._M_cur;
	lea	rsi, 8[rbx]	 # _150,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_construct.h:97:     { return ::new((void*)__location) _Tp(std::forward<_Args>(__args)...); }
	vmovq	QWORD PTR [rbx], xmm10	 # MEM <vector(2) unsigned int> [(unsigned int *)prephitmp_490], _757
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:167: 	if (this->_M_impl._M_finish._M_cur
	cmp	rdx, rsi	 # _171, _150
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:173: 	    ++this->_M_impl._M_finish._M_cur;
	mov	QWORD PTR 240[rsp], rsi	 # points.D.136175._M_impl.D.135525._M_finish._M_cur, _150
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:167: 	if (this->_M_impl._M_finish._M_cur
	je	.L653	 #,
.L744:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:173: 	    ++this->_M_impl._M_finish._M_cur;
	lea	rbx, 8[rsi]	 # _713,
 # source/simulation.cpp:73: 		for (u32 j = 0; j < padding; j++) {
	add	ebp, 1	 # ivtmp.1292,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_construct.h:97:     { return ::new((void*)__location) _Tp(std::forward<_Args>(__args)...); }
	vmovq	QWORD PTR [rsi], xmm11	 # MEM <vector(2) unsigned int> [(unsigned int *)prephitmp_963], _705
 # source/simulation.cpp:73: 		for (u32 j = 0; j < padding; j++) {
	cmp	ebp, r14d	 # ivtmp.1292, _944
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:173: 	    ++this->_M_impl._M_finish._M_cur;
	mov	QWORD PTR 240[rsp], rbx	 # points.D.136175._M_impl.D.135525._M_finish._M_cur, _713
 # source/simulation.cpp:73: 		for (u32 j = 0; j < padding; j++) {
	je	.L738	 #,
.L667:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:168: 	    != this->_M_impl._M_finish._M_last - 1)
	lea	rdx, -8[rcx]	 # _171,
	vpinsrd	xmm8, xmm9, ebp, 1	 # _891, _434, ivtmp.1292
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:167: 	if (this->_M_impl._M_finish._M_cur
	cmp	rdx, rbx	 # _171, _713
	jne	.L739	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:373: 	  * (__x._M_node - __y._M_node - bool(__x._M_node))
	mov	rdx, QWORD PTR 232[rsp]	 # _181, MEM[(const struct _Self &)&points + 16]._M_node
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:373: 	  * (__x._M_node - __y._M_node - bool(__x._M_node))
	mov	rdi, r12	 # _182, prephitmp_1016
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:374: 	  + (__x._M_cur - __x._M_first)
	mov	rcx, rbx	 # tmp428, _713
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:373: 	  * (__x._M_node - __y._M_node - bool(__x._M_node))
	sub	rdi, rdx	 # _182, _181
	mov	r10, rdi	 # tmp423, _182
	sar	r10, 3	 # tmp423,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:373: 	  * (__x._M_node - __y._M_node - bool(__x._M_node))
	cmp	r12, 1	 # prephitmp_1016,
	mov	r9, r10	 # tmp426, tmp423
	adc	r9, -1	 # tmp426,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:374: 	  + (__x._M_cur - __x._M_first)
	sub	rcx, rax	 # tmp428, prephitmp_1017
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:375: 	  + (__y._M_last - __y._M_cur);
	mov	rax, QWORD PTR 224[rsp]	 # tmp432, MEM[(const struct _Self &)&points + 16]._M_last
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:373: 	  * (__x._M_node - __y._M_node - bool(__x._M_node))
	sal	r9, 6	 # tmp427,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:374: 	  + (__x._M_cur - __x._M_first)
	sar	rcx, 3	 # tmp430,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:374: 	  + (__x._M_cur - __x._M_first)
	add	rcx, r9	 # tmp431, tmp427
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:375: 	  + (__y._M_last - __y._M_cur);
	sub	rax, r13	 # tmp432, prephitmp_1034
	sar	rax, 3	 # tmp435,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:375: 	  + (__y._M_last - __y._M_cur);
	add	rcx, rax	 # tmp436, tmp435
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:492: 	if (size() == max_size())
	movabs	rax, 2305843009213693951	 # tmp753,
	cmp	rcx, rax	 # tmp436, tmp753
	je	.L625	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:2171: 	    - (this->_M_impl._M_finish._M_node - this->_M_impl._M_map))
	mov	r9, QWORD PTR 192[rsp]	 # _214, points.D.136175._M_impl.D.135525._M_map
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:2171: 	    - (this->_M_impl._M_finish._M_node - this->_M_impl._M_map))
	mov	rax, r12	 # tmp439, prephitmp_1016
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:2170: 	if (__nodes_to_add + 1 > this->_M_impl._M_map_size
	mov	rsi, QWORD PTR 200[rsp]	 # _212, points.D.136175._M_impl.D.135525._M_map_size
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:2171: 	    - (this->_M_impl._M_finish._M_node - this->_M_impl._M_map))
	sub	rax, r9	 # tmp439, _214
	sar	rax, 3	 # tmp441,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:2171: 	    - (this->_M_impl._M_finish._M_node - this->_M_impl._M_map))
	mov	rcx, rsi	 # tmp442, _212
	sub	rcx, rax	 # tmp442, tmp441
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:2170: 	if (__nodes_to_add + 1 > this->_M_impl._M_map_size
	cmp	rcx, 1	 # tmp442,
	jbe	.L740	 #,
.L610:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	ecx, 512	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:507: 	    this->_M_impl._M_finish._M_set_node(this->_M_impl._M_finish._M_node
	add	r12, 8	 # prephitmp_1016,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwy	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:267: 	_M_last = _M_first + difference_type(_S_buffer_size());
	lea	rcx, 512[rax]	 # prephitmp_1015,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	vmovq	xmm2, rax	 # _172, _172
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:497: 	*(this->_M_impl._M_finish._M_node + 1) = this->_M_allocate_node();
	mov	QWORD PTR [r12], rax	 # MEM[(struct Vec2 * *)prephitmp_691 + 8B], _172
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	rsi, rax	 # _172, tmp659
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	vpinsrq	xmm0, xmm2, rcx, 1	 # tmp462, _172, prephitmp_1015
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_construct.h:97:     { return ::new((void*)__location) _Tp(std::forward<_Args>(__args)...); }
	vmovq	QWORD PTR [rbx], xmm8	 # MEM <vector(2) unsigned int> [(unsigned int *)prephitmp_1103], _891
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:168: 	    != this->_M_impl._M_finish._M_last - 1)
	lea	rdx, 504[rax]	 # _171,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:265: 	_M_node = __new_node;
	mov	QWORD PTR 264[rsp], r12	 # MEM[(struct _Deque_iterator *)&points + 48B]._M_node, prephitmp_1016
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	vmovdqu	XMMWORD PTR 248[rsp], xmm0	 # MEM <vector(2) long long unsigned int> [(struct Vec2 * *)&points + 56B], tmp462
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:516:       }
	jmp	.L608	 #
	.p2align 4,,10
	.p2align 3
.L623:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:373: 	  * (__x._M_node - __y._M_node - bool(__x._M_node))
	mov	rdx, QWORD PTR 232[rsp]	 # _297, MEM[(const struct _Self &)&points + 16]._M_node
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:373: 	  * (__x._M_node - __y._M_node - bool(__x._M_node))
	mov	rdi, r12	 # _298, prephitmp_1016
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:374: 	  + (__x._M_cur - __x._M_first)
	mov	rcx, rsi	 # tmp471, _172
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:492: 	if (size() == max_size())
	movabs	rbx, 2305843009213693951	 # tmp773,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:373: 	  * (__x._M_node - __y._M_node - bool(__x._M_node))
	sub	rdi, rdx	 # _298, _297
	mov	r10, rdi	 # tmp466, _298
	sar	r10, 3	 # tmp466,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:373: 	  * (__x._M_node - __y._M_node - bool(__x._M_node))
	cmp	r12, 1	 # prephitmp_1016,
	mov	r9, r10	 # tmp469, tmp466
	adc	r9, -1	 # tmp469,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:374: 	  + (__x._M_cur - __x._M_first)
	sub	rcx, rax	 # tmp471, prephitmp_1017
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:375: 	  + (__y._M_last - __y._M_cur);
	mov	rax, QWORD PTR 224[rsp]	 # tmp475, MEM[(const struct _Self &)&points + 16]._M_last
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:373: 	  * (__x._M_node - __y._M_node - bool(__x._M_node))
	sal	r9, 6	 # tmp470,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:374: 	  + (__x._M_cur - __x._M_first)
	sar	rcx, 3	 # tmp473,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:374: 	  + (__x._M_cur - __x._M_first)
	add	rcx, r9	 # tmp474, tmp470
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:375: 	  + (__y._M_last - __y._M_cur);
	sub	rax, r13	 # tmp475, prephitmp_1034
	sar	rax, 3	 # tmp478,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:375: 	  + (__y._M_last - __y._M_cur);
	add	rax, rcx	 # tmp479, tmp474
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:492: 	if (size() == max_size())
	cmp	rax, rbx	 # tmp479, tmp773
	je	.L625	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:2171: 	    - (this->_M_impl._M_finish._M_node - this->_M_impl._M_map))
	mov	r9, QWORD PTR 192[rsp]	 # _330, points.D.136175._M_impl.D.135525._M_map
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:2171: 	    - (this->_M_impl._M_finish._M_node - this->_M_impl._M_map))
	mov	rax, r12	 # tmp481, prephitmp_1016
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:2170: 	if (__nodes_to_add + 1 > this->_M_impl._M_map_size
	mov	rbx, QWORD PTR 200[rsp]	 # _328, points.D.136175._M_impl.D.135525._M_map_size
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:2171: 	    - (this->_M_impl._M_finish._M_node - this->_M_impl._M_map))
	sub	rax, r9	 # tmp481, _330
	sar	rax, 3	 # tmp483,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:2171: 	    - (this->_M_impl._M_finish._M_node - this->_M_impl._M_map))
	mov	rcx, rbx	 # tmp484, _328
	sub	rcx, rax	 # tmp484, tmp483
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:2170: 	if (__nodes_to_add + 1 > this->_M_impl._M_map_size
	cmp	rcx, 1	 # tmp484,
	jbe	.L741	 #,
.L626:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	ecx, 512	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:507: 	    this->_M_impl._M_finish._M_set_node(this->_M_impl._M_finish._M_node
	add	r12, 8	 # prephitmp_1016,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwy	 #
	mov	rbx, rax	 # _161, tmp661
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:497: 	*(this->_M_impl._M_finish._M_node + 1) = this->_M_allocate_node();
	mov	QWORD PTR [r12], rax	 # MEM[(struct Vec2 * *)prephitmp_809 + 8B], _161
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	vmovq	xmm3, rax	 # _161, _161
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:168: 	    != this->_M_impl._M_finish._M_last - 1)
	lea	rdx, 504[rax]	 # _171,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_construct.h:97:     { return ::new((void*)__location) _Tp(std::forward<_Args>(__args)...); }
	vmovq	QWORD PTR [rsi], xmm8	 # MEM <vector(2) unsigned int> [(unsigned int *)prephitmp_654], _825
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:267: 	_M_last = _M_first + difference_type(_S_buffer_size());
	lea	rcx, 512[rax]	 # prephitmp_1015,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:167: 	if (this->_M_impl._M_finish._M_cur
	cmp	rbx, rdx	 # _161, _171
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:265: 	_M_node = __new_node;
	mov	QWORD PTR 264[rsp], r12	 # MEM[(struct _Deque_iterator *)&points + 48B]._M_node, prephitmp_1016
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	vpinsrq	xmm0, xmm3, rcx, 1	 # tmp504, _161, prephitmp_1015
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:173: 	    ++this->_M_impl._M_finish._M_cur;
	mov	QWORD PTR 240[rsp], rbx	 # points.D.136175._M_impl.D.135525._M_finish._M_cur, _161
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	vmovdqu	XMMWORD PTR 248[rsp], xmm0	 # MEM <vector(2) long long unsigned int> [(struct Vec2 * *)&points + 56B], tmp504
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:167: 	if (this->_M_impl._M_finish._M_cur
	jne	.L742	 #,
	.p2align 4,,10
	.p2align 3
.L639:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:373: 	  * (__x._M_node - __y._M_node - bool(__x._M_node))
	mov	rdx, QWORD PTR 232[rsp]	 # _413, MEM[(const struct _Self &)&points + 16]._M_node
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:373: 	  * (__x._M_node - __y._M_node - bool(__x._M_node))
	mov	rdi, r12	 # _414, prephitmp_1016
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:374: 	  + (__x._M_cur - __x._M_first)
	mov	rcx, rbx	 # tmp510, _161
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:492: 	if (size() == max_size())
	movabs	rsi, 2305843009213693951	 # tmp792,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:373: 	  * (__x._M_node - __y._M_node - bool(__x._M_node))
	sub	rdi, rdx	 # _414, _413
	mov	r10, rdi	 # tmp505, _414
	sar	r10, 3	 # tmp505,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:373: 	  * (__x._M_node - __y._M_node - bool(__x._M_node))
	cmp	r12, 1	 # prephitmp_1016,
	mov	r9, r10	 # tmp508, tmp505
	adc	r9, -1	 # tmp508,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:374: 	  + (__x._M_cur - __x._M_first)
	sub	rcx, rax	 # tmp510, prephitmp_1017
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:375: 	  + (__y._M_last - __y._M_cur);
	mov	rax, QWORD PTR 224[rsp]	 # tmp514, MEM[(const struct _Self &)&points + 16]._M_last
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:373: 	  * (__x._M_node - __y._M_node - bool(__x._M_node))
	sal	r9, 6	 # tmp509,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:374: 	  + (__x._M_cur - __x._M_first)
	sar	rcx, 3	 # tmp512,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:374: 	  + (__x._M_cur - __x._M_first)
	add	rcx, r9	 # tmp513, tmp509
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:375: 	  + (__y._M_last - __y._M_cur);
	sub	rax, r13	 # tmp514, prephitmp_1034
	sar	rax, 3	 # tmp517,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:375: 	  + (__y._M_last - __y._M_cur);
	add	rax, rcx	 # tmp518, tmp513
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:492: 	if (size() == max_size())
	cmp	rax, rsi	 # tmp518, tmp792
	je	.L625	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:2171: 	    - (this->_M_impl._M_finish._M_node - this->_M_impl._M_map))
	mov	r9, QWORD PTR 192[rsp]	 # _446, points.D.136175._M_impl.D.135525._M_map
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:2171: 	    - (this->_M_impl._M_finish._M_node - this->_M_impl._M_map))
	mov	rax, r12	 # tmp520, prephitmp_1016
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:2170: 	if (__nodes_to_add + 1 > this->_M_impl._M_map_size
	mov	rsi, QWORD PTR 200[rsp]	 # _444, points.D.136175._M_impl.D.135525._M_map_size
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:2171: 	    - (this->_M_impl._M_finish._M_node - this->_M_impl._M_map))
	sub	rax, r9	 # tmp520, _446
	sar	rax, 3	 # tmp522,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:2171: 	    - (this->_M_impl._M_finish._M_node - this->_M_impl._M_map))
	mov	rcx, rsi	 # tmp523, _444
	sub	rcx, rax	 # tmp523, tmp522
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:2170: 	if (__nodes_to_add + 1 > this->_M_impl._M_map_size
	cmp	rcx, 1	 # tmp523,
	jbe	.L743	 #,
.L641:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	ecx, 512	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:507: 	    this->_M_impl._M_finish._M_set_node(this->_M_impl._M_finish._M_node
	add	r12, 8	 # prephitmp_1016,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwy	 #
	mov	rsi, rax	 # _150, tmp663
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:497: 	*(this->_M_impl._M_finish._M_node + 1) = this->_M_allocate_node();
	mov	QWORD PTR [r12], rax	 # MEM[(struct Vec2 * *)prephitmp_959 + 8B], _150
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	vmovq	xmm4, rax	 # _150, _150
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:168: 	    != this->_M_impl._M_finish._M_last - 1)
	lea	rdx, 504[rax]	 # _171,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_construct.h:97:     { return ::new((void*)__location) _Tp(std::forward<_Args>(__args)...); }
	vmovq	QWORD PTR [rbx], xmm10	 # MEM <vector(2) unsigned int> [(unsigned int *)prephitmp_490], _757
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:267: 	_M_last = _M_first + difference_type(_S_buffer_size());
	lea	rcx, 512[rax]	 # prephitmp_1015,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:167: 	if (this->_M_impl._M_finish._M_cur
	cmp	rdx, rsi	 # _171, _150
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:265: 	_M_node = __new_node;
	mov	QWORD PTR 264[rsp], r12	 # MEM[(struct _Deque_iterator *)&points + 48B]._M_node, prephitmp_1016
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	vpinsrq	xmm0, xmm4, rcx, 1	 # tmp543, _150, prephitmp_1015
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:173: 	    ++this->_M_impl._M_finish._M_cur;
	mov	QWORD PTR 240[rsp], rsi	 # points.D.136175._M_impl.D.135525._M_finish._M_cur, _150
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	vmovdqu	XMMWORD PTR 248[rsp], xmm0	 # MEM <vector(2) long long unsigned int> [(struct Vec2 * *)&points + 56B], tmp543
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:167: 	if (this->_M_impl._M_finish._M_cur
	jne	.L744	 #,
	.p2align 4,,10
	.p2align 3
.L653:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:373: 	  * (__x._M_node - __y._M_node - bool(__x._M_node))
	mov	rdx, QWORD PTR 232[rsp]	 # _529, MEM[(const struct _Self &)&points + 16]._M_node
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:373: 	  * (__x._M_node - __y._M_node - bool(__x._M_node))
	mov	rdi, r12	 # _530, prephitmp_1016
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:374: 	  + (__x._M_cur - __x._M_first)
	mov	rcx, rsi	 # tmp549, _150
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:373: 	  * (__x._M_node - __y._M_node - bool(__x._M_node))
	sub	rdi, rdx	 # _530, _529
	mov	r10, rdi	 # tmp544, _530
	sar	r10, 3	 # tmp544,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:373: 	  * (__x._M_node - __y._M_node - bool(__x._M_node))
	cmp	r12, 1	 # prephitmp_1016,
	mov	r9, r10	 # tmp547, tmp544
	adc	r9, -1	 # tmp547,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:374: 	  + (__x._M_cur - __x._M_first)
	sub	rcx, rax	 # tmp549, prephitmp_1017
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:375: 	  + (__y._M_last - __y._M_cur);
	mov	rax, QWORD PTR 224[rsp]	 # tmp553, MEM[(const struct _Self &)&points + 16]._M_last
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:373: 	  * (__x._M_node - __y._M_node - bool(__x._M_node))
	sal	r9, 6	 # tmp548,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:374: 	  + (__x._M_cur - __x._M_first)
	sar	rcx, 3	 # tmp551,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:374: 	  + (__x._M_cur - __x._M_first)
	add	rcx, r9	 # tmp552, tmp548
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:375: 	  + (__y._M_last - __y._M_cur);
	sub	rax, r13	 # tmp553, prephitmp_1034
	sar	rax, 3	 # tmp556,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:375: 	  + (__y._M_last - __y._M_cur);
	add	rcx, rax	 # tmp557, tmp556
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:492: 	if (size() == max_size())
	movabs	rax, 2305843009213693951	 # tmp811,
	cmp	rcx, rax	 # tmp557, tmp811
	je	.L625	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:2171: 	    - (this->_M_impl._M_finish._M_node - this->_M_impl._M_map))
	mov	r9, QWORD PTR 192[rsp]	 # _562, points.D.136175._M_impl.D.135525._M_map
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:2171: 	    - (this->_M_impl._M_finish._M_node - this->_M_impl._M_map))
	mov	rax, r12	 # tmp559, prephitmp_1016
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:2170: 	if (__nodes_to_add + 1 > this->_M_impl._M_map_size
	mov	rbx, QWORD PTR 200[rsp]	 # _560, points.D.136175._M_impl.D.135525._M_map_size
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:2171: 	    - (this->_M_impl._M_finish._M_node - this->_M_impl._M_map))
	sub	rax, r9	 # tmp559, _562
	sar	rax, 3	 # tmp561,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:2171: 	    - (this->_M_impl._M_finish._M_node - this->_M_impl._M_map))
	mov	rcx, rbx	 # tmp562, _560
	sub	rcx, rax	 # tmp562, tmp561
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:2170: 	if (__nodes_to_add + 1 > this->_M_impl._M_map_size
	cmp	rcx, 1	 # tmp562,
	jbe	.L745	 #,
.L655:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	ecx, 512	 #,
 # source/simulation.cpp:73: 		for (u32 j = 0; j < padding; j++) {
	add	ebp, 1	 # ivtmp.1292,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:507: 	    this->_M_impl._M_finish._M_set_node(this->_M_impl._M_finish._M_node
	add	r12, 8	 # prephitmp_1016,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwy	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:497: 	*(this->_M_impl._M_finish._M_node + 1) = this->_M_allocate_node();
	mov	QWORD PTR [r12], rax	 # MEM[(struct Vec2 * *)prephitmp_1012 + 8B], _713
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	rbx, rax	 # _713, tmp665
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	vmovq	xmm5, rax	 # _713, _713
 # source/simulation.cpp:73: 		for (u32 j = 0; j < padding; j++) {
	cmp	ebp, r14d	 # ivtmp.1292, _944
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:267: 	_M_last = _M_first + difference_type(_S_buffer_size());
	lea	rcx, 512[rax]	 # prephitmp_1015,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_construct.h:97:     { return ::new((void*)__location) _Tp(std::forward<_Args>(__args)...); }
	vmovq	QWORD PTR [rsi], xmm11	 # MEM <vector(2) unsigned int> [(unsigned int *)prephitmp_963], _705
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	vpinsrq	xmm0, xmm5, rcx, 1	 # tmp582, _713, prephitmp_1015
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:265: 	_M_node = __new_node;
	mov	QWORD PTR 264[rsp], r12	 # MEM[(struct _Deque_iterator *)&points + 48B]._M_node, prephitmp_1016
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	vmovdqu	XMMWORD PTR 248[rsp], xmm0	 # MEM <vector(2) long long unsigned int> [(struct Vec2 * *)&points + 56B], tmp582
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:173: 	    ++this->_M_impl._M_finish._M_cur;
	mov	QWORD PTR 240[rsp], rbx	 # points.D.136175._M_impl.D.135525._M_finish._M_cur, _713
 # source/simulation.cpp:73: 		for (u32 j = 0; j < padding; j++) {
	jne	.L667	 #,
	.p2align 4,,10
	.p2align 3
.L738:
 # source/simulation.cpp:72: 		for (u32 i = 0; i < padding; i++) 
	mov	esi, DWORD PTR 48[rsp]	 # _977, %sfp
	vmovd	edx, xmm7	 # ivtmp.1297, ivtmp.1297
	mov	rdi, r12	 # prephitmp_1016, prephitmp_1016
	sub	edx, 1	 # ivtmp.1297,
	vmovd	xmm7, edx	 # ivtmp.1297, ivtmp.1297
	cmp	edx, esi	 # ivtmp.1297, _977
	jne	.L606	 #,
	vmovd	xmm3, DWORD PTR 60[rsp]	 # _125, %sfp
	mov	r12, QWORD PTR 64[rsp]	 # tmp643, %sfp
	vpshufd	xmm0, xmm3, 0	 # tmp583, _125
 # source/simulation.cpp:80: 		BoundingBox box = BoundingBox(x - padding, y - padding, x + padding, y + padding);
	vpsubd	xmm1, xmm6, xmm0	 # vect__1024.1257, vect_prephitmp_1025.1259, tmp583
	vpaddd	xmm0, xmm6, xmm0	 # vect__1018.1258, vect_prephitmp_1025.1259, tmp583
	vpblendd	xmm6, xmm1, xmm0, 12	 # vect_prephitmp_1025.1259, vect__1024.1257, vect__1018.1258,
.L668:
 # include/gl_setup.hpp:85:         BoundingBox(u32 l, u32 t, u32 r, u32 b) : m_x0(l), m_y0(t), m_x1(r), m_y1(b) {}
	mov	rax, QWORD PTR 448[rsp]	 # tmp831, .result_ptr
 # source/simulation.cpp:83: 		while (!points.empty()) {
	cmp	r13, rbx	 # prephitmp_1034, _713
 # source/simulation.cpp:81: 		std::unordered_set<Vec2<u32>, Vec2Hash<u32>> checked = std::unordered_set<Vec2<u32>, Vec2Hash<u32>>();
	vpxor	xmm0, xmm0, xmm0	 # tmp586
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:530:       _Hashtable() = default;
	mov	QWORD PTR 136[rsp], 1	 # MEM[(struct _Hashtable *)&checked]._M_bucket_count,
	lea	rsi, 176[rsp]	 # tmp642,
 # source/simulation.cpp:81: 		std::unordered_set<Vec2<u32>, Vec2Hash<u32>> checked = std::unordered_set<Vec2<u32>, Vec2Hash<u32>>();
	vmovdqu	YMMWORD PTR 152[rsp], ymm0	 # MEM <char[32]> [(struct unordered_set *)&checked + 24B], tmp586
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:530:       _Hashtable() = default;
	mov	QWORD PTR 128[rsp], rsi	 # MEM[(struct _Hashtable *)&checked]._M_buckets, tmp642
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable_policy.h:313:     _Hash_node_base() noexcept : _M_nxt() { }
	mov	QWORD PTR 144[rsp], 0	 # MEM[(struct _Hash_node_base *)&checked + 16B]._M_nxt,
 # include/gl_setup.hpp:85:         BoundingBox(u32 l, u32 t, u32 r, u32 b) : m_x0(l), m_y0(t), m_x1(r), m_y1(b) {}
	vmovdqu	XMMWORD PTR [rax], xmm6	 # MEM <vector(4) unsigned int> [(unsigned int *)&<retval>], vect_prephitmp_1025.1259
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable_policy.h:541:     : _M_max_load_factor(__z), _M_next_resize(0) { }
	mov	DWORD PTR 160[rsp], 0x3f800000	 # MEM[(struct _Prime_rehash_policy *)&checked + 32B]._M_max_load_factor,
 # source/simulation.cpp:83: 		while (!points.empty()) {
	je	.L707	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:904: 	  return _M_insert_unique(
	lea	rax, 120[rsp]	 # tmp650,
 # source/simulation.cpp:92: 			if (m_readBuffer.m_data[current.y * m_w + current.x] > 0) {
	mov	QWORD PTR 64[rsp], rsi	 # %sfp, tmp642
	vxorps	xmm10, xmm10, xmm10	 # tmp652
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:904: 	  return _M_insert_unique(
	mov	QWORD PTR 40[rsp], rax	 # %sfp, tmp650
	lea	rax, 128[rsp]	 # tmp651,
	mov	QWORD PTR 48[rsp], rax	 # %sfp, tmp651
	vzeroupper
	.p2align 4,,10
	.p2align 3
.L697:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:212: 	if (_M_cur == _M_first)
	cmp	QWORD PTR 248[rsp], rbx	 # MEM[(const struct _Deque_iterator &)&points + 48]._M_first, _713
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:170: 	 _M_last(__x._M_last), _M_node(__x._M_node) { }
	mov	rdi, QWORD PTR 264[rsp]	 # _78, MEM[(const struct _Deque_iterator &)&points + 48]._M_node
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:212: 	if (_M_cur == _M_first)
	je	.L670	 #,
 # source/simulation.cpp:84: 			Vec2<u32> current = points.top();
	mov	rax, QWORD PTR -8[rbx]	 # MEM[(const struct Vec2 &)_713 + 18446744073709551608], MEM[(const struct Vec2 &)_713 + 18446744073709551608]
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:1603: 	    --this->_M_impl._M_finish._M_cur;
	sub	rbx, 8	 # _713,
	mov	QWORD PTR 240[rsp], rbx	 # MEM[(struct deque *)&points].D.136175._M_impl.D.135525._M_finish._M_cur, _713
 # source/simulation.cpp:84: 			Vec2<u32> current = points.top();
	mov	QWORD PTR 120[rsp], rax	 # current, MEM[(const struct Vec2 &)_713 + 18446744073709551608]
.L671:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:1654:       if (size() <= __small_size_threshold())
	cmp	QWORD PTR 152[rsp], 0	 # MEM[(const struct _Hashtable *)&checked]._M_element_count,
	mov	edi, DWORD PTR 120[rsp]	 # _134, MEM[(unsigned int *)&current]
	mov	ebp, DWORD PTR 124[rsp]	 # _135, MEM[(unsigned int *)&current + 4B]
	jne	.L672	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:465:       { return static_cast<__node_ptr>(_M_before_begin._M_nxt); }
	mov	rax, QWORD PTR 144[rsp]	 # __it$D139607$_M_cur, MEM[(const struct _Hashtable *)&checked]._M_before_begin._M_nxt
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:1656: 	  for (auto __it = begin(); __it != end(); ++__it)
	test	rax, rax	 # __it$D139607$_M_cur
	jne	.L676	 #,
	jmp	.L673	 #
	.p2align 4,,10
	.p2align 3
.L674:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable_policy.h:377:       { return static_cast<_Hash_node*>(this->_M_nxt); }
	mov	rax, QWORD PTR [rax]	 # __it$D139607$_M_cur, MEM[(const struct _Hash_node *)__it$D139607$_M_cur_929].D.150149._M_nxt
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:1656: 	  for (auto __it = begin(); __it != end(); ++__it)
	test	rax, rax	 # __it$D139607$_M_cur
	je	.L673	 #,
.L676:
 # include/gl_setup.hpp:135:             return x == other.x && y == other.y;
	cmp	edi, DWORD PTR 8[rax]	 # _134, MEM[(const struct Vec2 &)__it$D139607$_M_cur_929 + 8].x
	jne	.L674	 #,
 # include/gl_setup.hpp:135:             return x == other.x && y == other.y;
	cmp	ebp, DWORD PTR 12[rax]	 # _135, MEM[(const struct Vec2 &)__it$D139607$_M_cur_929 + 8].y
	jne	.L674	 #,
.L675:
 # source/simulation.cpp:83: 		while (!points.empty()) {
	cmp	rbx, r13	 # _713, prephitmp_1034
	jne	.L697	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:465:       { return static_cast<__node_ptr>(_M_before_begin._M_nxt); }
	mov	rbx, QWORD PTR 144[rsp]	 # __n, MEM[(const struct _Hashtable *)&checked]._M_before_begin._M_nxt
	mov	rsi, QWORD PTR 64[rsp]	 # tmp642, %sfp
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable_policy.h:2038:       while (__n)
	test	rbx, rbx	 # __n
	je	.L737	 #,
	.p2align 4,,10
	.p2align 3
.L698:
	mov	rcx, rbx	 # __n, __n
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable_policy.h:377:       { return static_cast<_Hash_node*>(this->_M_nxt); }
	mov	rbx, QWORD PTR [rbx]	 # __n, MEM[(const struct _Hash_node *)__n_122].D.150149._M_nxt
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	edx, 24	 #,
	call	_ZdlPvy	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable_policy.h:2038:       while (__n)
	test	rbx, rbx	 # __n
	jne	.L698	 #,
.L737:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2510:       __builtin_memset(_M_buckets, 0,
	mov	rax, QWORD PTR 136[rsp]	 # tmp861, MEM[(struct _Hashtable *)&checked]._M_bucket_count
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2510:       __builtin_memset(_M_buckets, 0,
	mov	rcx, QWORD PTR 128[rsp]	 # pretmp_1089, MEM[(struct _Hashtable *)&checked]._M_buckets
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2510:       __builtin_memset(_M_buckets, 0,
	lea	r8, 0[0+rax*8]	 # _1086,
.L669:
	xor	edx, edx	 #
	call	memset	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:456:       { _M_deallocate_buckets(_M_buckets, _M_bucket_count); }
	mov	rcx, QWORD PTR 128[rsp]	 # _710, MEM[(struct _Hashtable *)&checked]._M_buckets
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2512:       _M_element_count = 0;
	mov	QWORD PTR 152[rsp], 0	 # MEM[(struct _Hashtable *)&checked]._M_element_count,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:456:       { _M_deallocate_buckets(_M_buckets, _M_bucket_count); }
	mov	rdx, QWORD PTR 136[rsp]	 # _709, MEM[(struct _Hashtable *)&checked]._M_bucket_count
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:2513:       _M_before_begin._M_nxt = nullptr;
	mov	QWORD PTR 144[rsp], 0	 # MEM[(struct _Hashtable *)&checked]._M_before_begin._M_nxt,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:448: 	if (_M_uses_single_bucket(__bkts))
	cmp	rcx, rsi	 # _710, tmp642
	je	.L699	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	sal	rdx, 3	 # tmp636,
	call	_ZdlPvy	 #
.L699:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:620:       if (this->_M_impl._M_map)
	mov	rdi, QWORD PTR 192[rsp]	 # _699, points._M_impl.D.135525._M_map
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:620:       if (this->_M_impl._M_map)
	test	rdi, rdi	 # _699
	je	.L604	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:622: 	  _M_destroy_nodes(this->_M_impl._M_start._M_node,
	mov	rax, QWORD PTR 264[rsp]	 # tmp862, points._M_impl.D.135525._M_finish._M_node
	mov	rbx, QWORD PTR 232[rsp]	 # __n, points._M_impl.D.135525._M_start._M_node
	lea	rsi, 8[rax]	 # _701,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:699:       for (_Map_pointer __n = __nstart; __n < __nfinish; ++__n)
	cmp	rbx, rsi	 # __n, _701
	jnb	.L702	 #,
	.p2align 4,,10
	.p2align 3
.L701:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	rcx, QWORD PTR [rbx]	 # MEM[(struct Vec2 * *)__n_933], MEM[(struct Vec2 * *)__n_933]
	mov	edx, 512	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:699:       for (_Map_pointer __n = __nstart; __n < __nfinish; ++__n)
	add	rbx, 8	 # __n,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:699:       for (_Map_pointer __n = __nstart; __n < __nfinish; ++__n)
	cmp	rbx, rsi	 # __n, _701
	jb	.L701	 #,
.L702:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	rax, QWORD PTR 200[rsp]	 # tmp863, points._M_impl.D.135525._M_map_size
	mov	rcx, rdi	 #, _699
	lea	rdx, 0[0+rax*8]	 # tmp638,
	call	_ZdlPvy	 #
.L604:
 # source/simulation.cpp:105: 	}
	mov	rax, QWORD PTR 448[rsp]	 #, .result_ptr
	vmovaps	xmm6, XMMWORD PTR 272[rsp]	 #,
	vmovaps	xmm7, XMMWORD PTR 288[rsp]	 #,
	vmovaps	xmm8, XMMWORD PTR 304[rsp]	 #,
	vmovaps	xmm9, XMMWORD PTR 320[rsp]	 #,
	vmovaps	xmm10, XMMWORD PTR 336[rsp]	 #,
	vmovaps	xmm11, XMMWORD PTR 352[rsp]	 #,
	add	rsp, 376	 #,
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
.L740:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:936:       const size_type __new_num_nodes = __old_num_nodes + __nodes_to_add;
	add	r10, 2	 # __new_num_nodes,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:939:       if (this->_M_impl._M_map_size > 2 * __new_num_nodes)
	lea	rax, [r10+r10]	 # tmp443,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:939:       if (this->_M_impl._M_map_size > 2 * __new_num_nodes)
	cmp	rax, rsi	 # tmp443, _212
	jnb	.L611	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:945: 	    std::copy(this->_M_impl._M_start._M_node,
	lea	r8, 8[r12]	 # tmp447,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:942: 					 - __new_num_nodes) / 2
	sub	rsi, r10	 # tmp444, __new_num_nodes
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:942: 					 - __new_num_nodes) / 2
	shr	rsi	 # tmp445
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:435: 	  const ptrdiff_t _Num = __last - __first;
	sub	r8, rdx	 # _1133, _181
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:941: 	  __new_nstart = this->_M_impl._M_map + (this->_M_impl._M_map_size
	lea	r10, [r9+rsi*8]	 # __new_nstart,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:944: 	  if (__new_nstart < this->_M_impl._M_start._M_node)
	cmp	r10, rdx	 # __new_nstart, _181
	jnb	.L612	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:436: 	  if (__builtin_expect(_Num > 1, true))
	cmp	r8, 8	 # _1133,
	jle	.L613	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:437: 	    __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
	mov	rcx, r10	 #, __new_nstart
	call	memmove	 #
	mov	r10, rax	 # __new_nstart,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	mov	rax, QWORD PTR [rax]	 # pretmp_663,* __new_nstart
.L614:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:267: 	_M_last = _M_first + difference_type(_S_buffer_size());
	lea	rdx, 512[rax]	 # tmp460,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	vmovq	xmm4, rax	 # pretmp_663, pretmp_663
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:265: 	_M_node = __new_node;
	mov	QWORD PTR 232[rsp], r10	 # MEM[(struct _Deque_iterator *)&points + 16B]._M_node, __new_nstart
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	vpinsrq	xmm0, xmm4, rdx, 1	 # tmp459, pretmp_663, tmp460
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:972:       this->_M_impl._M_finish._M_set_node(__new_nstart + __old_num_nodes - 1);
	lea	r12, [r10+rdi]	 # prephitmp_1016,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	vmovdqu	XMMWORD PTR 216[rsp], xmm0	 # MEM <vector(2) long long unsigned int> [(struct Vec2 * *)&points + 24B], tmp459
	jmp	.L610	 #
	.p2align 4,,10
	.p2align 3
.L741:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:936:       const size_type __new_num_nodes = __old_num_nodes + __nodes_to_add;
	add	r10, 2	 # __new_num_nodes,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:939:       if (this->_M_impl._M_map_size > 2 * __new_num_nodes)
	lea	rax, [r10+r10]	 # tmp485,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:939:       if (this->_M_impl._M_map_size > 2 * __new_num_nodes)
	cmp	rax, rbx	 # tmp485, _328
	jnb	.L627	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:945: 	    std::copy(this->_M_impl._M_start._M_node,
	lea	r8, 8[r12]	 # tmp489,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:942: 					 - __new_num_nodes) / 2
	sub	rbx, r10	 # tmp486, __new_num_nodes
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:942: 					 - __new_num_nodes) / 2
	shr	rbx	 # tmp487
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:435: 	  const ptrdiff_t _Num = __last - __first;
	sub	r8, rdx	 # _1128, _297
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:941: 	  __new_nstart = this->_M_impl._M_map + (this->_M_impl._M_map_size
	lea	r10, [r9+rbx*8]	 # __new_nstart,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:944: 	  if (__new_nstart < this->_M_impl._M_start._M_node)
	cmp	r10, rdx	 # __new_nstart, _297
	jnb	.L628	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:436: 	  if (__builtin_expect(_Num > 1, true))
	cmp	r8, 8	 # _1128,
	jle	.L629	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:437: 	    __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
	mov	rcx, r10	 #, __new_nstart
	call	memmove	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	mov	rdx, QWORD PTR [rax]	 # prephitmp_813,* __new_nstart
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:437: 	    __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
	mov	r10, rax	 # __new_nstart,
.L630:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:267: 	_M_last = _M_first + difference_type(_S_buffer_size());
	lea	rax, 512[rdx]	 # tmp502,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	vmovq	xmm3, rdx	 # prephitmp_813, prephitmp_813
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:265: 	_M_node = __new_node;
	mov	QWORD PTR 232[rsp], r10	 # MEM[(struct _Deque_iterator *)&points + 16B]._M_node, __new_nstart
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	vpinsrq	xmm0, xmm3, rax, 1	 # tmp501, prephitmp_813, tmp502
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:972:       this->_M_impl._M_finish._M_set_node(__new_nstart + __old_num_nodes - 1);
	lea	r12, [r10+rdi]	 # prephitmp_1016,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	vmovdqu	XMMWORD PTR 216[rsp], xmm0	 # MEM <vector(2) long long unsigned int> [(struct Vec2 * *)&points + 24B], tmp501
	jmp	.L626	 #
	.p2align 4,,10
	.p2align 3
.L743:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:936:       const size_type __new_num_nodes = __old_num_nodes + __nodes_to_add;
	add	r10, 2	 # __new_num_nodes,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:939:       if (this->_M_impl._M_map_size > 2 * __new_num_nodes)
	lea	rax, [r10+r10]	 # tmp524,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:939:       if (this->_M_impl._M_map_size > 2 * __new_num_nodes)
	cmp	rax, rsi	 # tmp524, _444
	jnb	.L642	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:945: 	    std::copy(this->_M_impl._M_start._M_node,
	lea	r8, 8[r12]	 # tmp528,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:942: 					 - __new_num_nodes) / 2
	sub	rsi, r10	 # tmp525, __new_num_nodes
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:942: 					 - __new_num_nodes) / 2
	shr	rsi	 # tmp526
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:435: 	  const ptrdiff_t _Num = __last - __first;
	sub	r8, rdx	 # _1123, _413
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:941: 	  __new_nstart = this->_M_impl._M_map + (this->_M_impl._M_map_size
	lea	r10, [r9+rsi*8]	 # __new_nstart,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:944: 	  if (__new_nstart < this->_M_impl._M_start._M_node)
	cmp	r10, rdx	 # __new_nstart, _413
	jnb	.L643	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:436: 	  if (__builtin_expect(_Num > 1, true))
	cmp	r8, 8	 # _1123,
	jle	.L644	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:437: 	    __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
	mov	rcx, r10	 #, __new_nstart
	call	memmove	 #
	mov	r10, rax	 # __new_nstart,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	mov	rax, QWORD PTR [rax]	 # pretmp_953,* __new_nstart
.L645:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:267: 	_M_last = _M_first + difference_type(_S_buffer_size());
	lea	rdx, 512[rax]	 # tmp541,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	vmovq	xmm2, rax	 # pretmp_953, pretmp_953
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:265: 	_M_node = __new_node;
	mov	QWORD PTR 232[rsp], r10	 # MEM[(struct _Deque_iterator *)&points + 16B]._M_node, __new_nstart
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	vpinsrq	xmm0, xmm2, rdx, 1	 # tmp540, pretmp_953, tmp541
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:972:       this->_M_impl._M_finish._M_set_node(__new_nstart + __old_num_nodes - 1);
	lea	r12, [r10+rdi]	 # prephitmp_1016,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	vmovdqu	XMMWORD PTR 216[rsp], xmm0	 # MEM <vector(2) long long unsigned int> [(struct Vec2 * *)&points + 24B], tmp540
	jmp	.L641	 #
	.p2align 4,,10
	.p2align 3
.L745:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:936:       const size_type __new_num_nodes = __old_num_nodes + __nodes_to_add;
	add	r10, 2	 # __new_num_nodes,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:939:       if (this->_M_impl._M_map_size > 2 * __new_num_nodes)
	lea	rax, [r10+r10]	 # tmp563,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:939:       if (this->_M_impl._M_map_size > 2 * __new_num_nodes)
	cmp	rax, rbx	 # tmp563, _560
	jnb	.L656	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:945: 	    std::copy(this->_M_impl._M_start._M_node,
	lea	r8, 8[r12]	 # tmp567,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:942: 					 - __new_num_nodes) / 2
	sub	rbx, r10	 # tmp564, __new_num_nodes
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:942: 					 - __new_num_nodes) / 2
	shr	rbx	 # tmp565
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:435: 	  const ptrdiff_t _Num = __last - __first;
	sub	r8, rdx	 # _1118, _529
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:941: 	  __new_nstart = this->_M_impl._M_map + (this->_M_impl._M_map_size
	lea	r10, [r9+rbx*8]	 # __new_nstart,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:944: 	  if (__new_nstart < this->_M_impl._M_start._M_node)
	cmp	r10, rdx	 # __new_nstart, _529
	jnb	.L657	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:436: 	  if (__builtin_expect(_Num > 1, true))
	cmp	r8, 8	 # _1118,
	jle	.L658	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:437: 	    __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
	mov	rcx, r10	 #, __new_nstart
	call	memmove	 #
	mov	r10, rax	 # __new_nstart,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	mov	rax, QWORD PTR [rax]	 # pretmp_1006,* __new_nstart
.L659:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:267: 	_M_last = _M_first + difference_type(_S_buffer_size());
	lea	rdx, 512[rax]	 # tmp580,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	vmovq	xmm4, rax	 # pretmp_1006, pretmp_1006
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:265: 	_M_node = __new_node;
	mov	QWORD PTR 232[rsp], r10	 # MEM[(struct _Deque_iterator *)&points + 16B]._M_node, __new_nstart
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	vpinsrq	xmm0, xmm4, rdx, 1	 # tmp579, pretmp_1006, tmp580
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:972:       this->_M_impl._M_finish._M_set_node(__new_nstart + __old_num_nodes - 1);
	lea	r12, [r10+rdi]	 # prephitmp_1016,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	vmovdqu	XMMWORD PTR 216[rsp], xmm0	 # MEM <vector(2) long long unsigned int> [(struct Vec2 * *)&points + 24B], tmp579
	jmp	.L655	 #
	.p2align 4,,10
	.p2align 3
.L611:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:262:       if (__a < __b)
	test	rsi, rsi	 # _212
	je	.L703	 #,
	lea	rax, 1[rsi]	 # _797,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:955: 	  size_type __new_map_size = this->_M_impl._M_map_size
	lea	rcx, [rax+rax]	 # __new_map_size,
	mov	r11, rcx	 # __new_map_size, __new_map_size
	mov	QWORD PTR 72[rsp], rcx	 # %sfp, __new_map_size
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:130: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	movabs	rcx, 1152921504606846975	 # tmp451,
	cmp	rcx, r11	 # tmp451, __new_map_size
	jb	.L619	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	sal	rax, 4	 # _797,
	mov	rcx, rax	 # prephitmp_607, _797
.L618:
	mov	QWORD PTR 104[rsp], r10	 # %sfp, __new_num_nodes
	mov	QWORD PTR 96[rsp], r9	 # %sfp, _214
	mov	QWORD PTR 88[rsp], rdx	 # %sfp, _181
	call	_Znwy	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:960: 	  __new_nstart = __new_map + (__new_map_size - __new_num_nodes) / 2
	mov	r10, QWORD PTR 104[rsp]	 # __new_num_nodes, %sfp
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:962: 	  std::copy(this->_M_impl._M_start._M_node,
	lea	r8, 8[r12]	 # tmp457,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	rdx, rax	 # _294, tmp658
	mov	QWORD PTR 80[rsp], rax	 # %sfp, _294
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:960: 	  __new_nstart = __new_map + (__new_map_size - __new_num_nodes) / 2
	mov	rax, QWORD PTR 72[rsp]	 # tmp454, %sfp
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:436: 	  if (__builtin_expect(_Num > 1, true))
	mov	r9, QWORD PTR 96[rsp]	 # _214, %sfp
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:960: 	  __new_nstart = __new_map + (__new_map_size - __new_num_nodes) / 2
	sub	rax, r10	 # tmp454, __new_num_nodes
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:960: 	  __new_nstart = __new_map + (__new_map_size - __new_num_nodes) / 2
	shr	rax	 # tmp455
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:960: 	  __new_nstart = __new_map + (__new_map_size - __new_num_nodes) / 2
	lea	r10, [rdx+rax*8]	 # __new_nstart,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:435: 	  const ptrdiff_t _Num = __last - __first;
	mov	rdx, QWORD PTR 88[rsp]	 # _181, %sfp
	sub	r8, rdx	 # _264, _181
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:436: 	  if (__builtin_expect(_Num > 1, true))
	cmp	r8, 8	 # _264,
	jle	.L621	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:437: 	    __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
	mov	rcx, r10	 #, __new_nstart
	mov	QWORD PTR 88[rsp], r9	 # %sfp, _214
	call	memmove	 #
	mov	r9, QWORD PTR 88[rsp]	 # _214, %sfp
	mov	r10, rax	 # __new_nstart,
.L622:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	lea	rdx, 0[0+rsi*8]	 # tmp458,
	mov	rcx, r9	 #, _214
	mov	QWORD PTR 88[rsp], r10	 # %sfp, __new_nstart
	call	_ZdlPvy	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:967: 	  this->_M_impl._M_map = __new_map;
	mov	rax, QWORD PTR 80[rsp]	 # _294, %sfp
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	mov	r10, QWORD PTR 88[rsp]	 # __new_nstart, %sfp
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:967: 	  this->_M_impl._M_map = __new_map;
	mov	QWORD PTR 192[rsp], rax	 # points.D.136175._M_impl.D.135525._M_map, _294
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:968: 	  this->_M_impl._M_map_size = __new_map_size;
	mov	rax, QWORD PTR 72[rsp]	 # __new_map_size, %sfp
	mov	QWORD PTR 200[rsp], rax	 # points.D.136175._M_impl.D.135525._M_map_size, __new_map_size
.L733:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	mov	rax, QWORD PTR [r10]	 # pretmp_663,* __new_nstart
	jmp	.L614	 #
	.p2align 4,,10
	.p2align 3
.L627:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:262:       if (__a < __b)
	test	rbx, rbx	 # _328
	je	.L704	 #,
	lea	rax, 1[rbx]	 # _827,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:955: 	  size_type __new_map_size = this->_M_impl._M_map_size
	lea	rcx, [rax+rax]	 # __new_map_size,
	mov	r11, rcx	 # __new_map_size, __new_map_size
	mov	QWORD PTR 72[rsp], rcx	 # %sfp, __new_map_size
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:130: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	movabs	rcx, 1152921504606846975	 # tmp493,
	cmp	rcx, r11	 # tmp493, __new_map_size
	jb	.L619	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	sal	rax, 4	 # _827,
	mov	rcx, rax	 # _547, _827
.L634:
	mov	QWORD PTR 104[rsp], r10	 # %sfp, __new_num_nodes
	mov	QWORD PTR 96[rsp], r9	 # %sfp, _330
	mov	QWORD PTR 88[rsp], rdx	 # %sfp, _297
	call	_Znwy	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:960: 	  __new_nstart = __new_map + (__new_map_size - __new_num_nodes) / 2
	mov	r10, QWORD PTR 104[rsp]	 # __new_num_nodes, %sfp
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:962: 	  std::copy(this->_M_impl._M_start._M_node,
	lea	r8, 8[r12]	 # tmp499,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	rdx, rax	 # _410, tmp660
	mov	QWORD PTR 80[rsp], rax	 # %sfp, _410
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:960: 	  __new_nstart = __new_map + (__new_map_size - __new_num_nodes) / 2
	mov	rax, QWORD PTR 72[rsp]	 # tmp496, %sfp
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:436: 	  if (__builtin_expect(_Num > 1, true))
	mov	r9, QWORD PTR 96[rsp]	 # _330, %sfp
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:960: 	  __new_nstart = __new_map + (__new_map_size - __new_num_nodes) / 2
	sub	rax, r10	 # tmp496, __new_num_nodes
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:960: 	  __new_nstart = __new_map + (__new_map_size - __new_num_nodes) / 2
	shr	rax	 # tmp497
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:960: 	  __new_nstart = __new_map + (__new_map_size - __new_num_nodes) / 2
	lea	r10, [rdx+rax*8]	 # __new_nstart,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:435: 	  const ptrdiff_t _Num = __last - __first;
	mov	rdx, QWORD PTR 88[rsp]	 # _297, %sfp
	sub	r8, rdx	 # _380, _297
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:436: 	  if (__builtin_expect(_Num > 1, true))
	cmp	r8, 8	 # _380,
	jle	.L637	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:437: 	    __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
	mov	rcx, r10	 #, __new_nstart
	mov	QWORD PTR 88[rsp], r9	 # %sfp, _330
	call	memmove	 #
	mov	r9, QWORD PTR 88[rsp]	 # _330, %sfp
	mov	r10, rax	 # __new_nstart,
.L638:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	lea	rdx, 0[0+rbx*8]	 # tmp500,
	mov	rcx, r9	 #, _330
	mov	QWORD PTR 88[rsp], r10	 # %sfp, __new_nstart
	call	_ZdlPvy	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:967: 	  this->_M_impl._M_map = __new_map;
	mov	rax, QWORD PTR 80[rsp]	 # _410, %sfp
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	mov	r10, QWORD PTR 88[rsp]	 # __new_nstart, %sfp
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:967: 	  this->_M_impl._M_map = __new_map;
	mov	QWORD PTR 192[rsp], rax	 # points.D.136175._M_impl.D.135525._M_map, _410
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:968: 	  this->_M_impl._M_map_size = __new_map_size;
	mov	rax, QWORD PTR 72[rsp]	 # __new_map_size, %sfp
	mov	QWORD PTR 200[rsp], rax	 # points.D.136175._M_impl.D.135525._M_map_size, __new_map_size
.L734:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	mov	rdx, QWORD PTR [r10]	 # prephitmp_813,* __new_nstart
	jmp	.L630	 #
	.p2align 4,,10
	.p2align 3
.L642:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:262:       if (__a < __b)
	test	rsi, rsi	 # _444
	je	.L705	 #,
	lea	rax, 1[rsi]	 # _712,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:955: 	  size_type __new_map_size = this->_M_impl._M_map_size
	lea	rcx, [rax+rax]	 # __new_map_size,
	mov	r11, rcx	 # __new_map_size, __new_map_size
	mov	QWORD PTR 72[rsp], rcx	 # %sfp, __new_map_size
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:130: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	movabs	rcx, 1152921504606846975	 # tmp532,
	cmp	rcx, r11	 # tmp532, __new_map_size
	jb	.L619	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	sal	rax, 4	 # _712,
	mov	rcx, rax	 # _945, _712
.L649:
	mov	QWORD PTR 104[rsp], r10	 # %sfp, __new_num_nodes
	mov	QWORD PTR 96[rsp], r9	 # %sfp, _446
	mov	QWORD PTR 88[rsp], rdx	 # %sfp, _413
	call	_Znwy	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:960: 	  __new_nstart = __new_map + (__new_map_size - __new_num_nodes) / 2
	mov	r10, QWORD PTR 104[rsp]	 # __new_num_nodes, %sfp
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:962: 	  std::copy(this->_M_impl._M_start._M_node,
	lea	r8, 8[r12]	 # tmp538,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	rdx, rax	 # _526, tmp662
	mov	QWORD PTR 80[rsp], rax	 # %sfp, _526
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:960: 	  __new_nstart = __new_map + (__new_map_size - __new_num_nodes) / 2
	mov	rax, QWORD PTR 72[rsp]	 # tmp535, %sfp
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:436: 	  if (__builtin_expect(_Num > 1, true))
	mov	r9, QWORD PTR 96[rsp]	 # _446, %sfp
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:960: 	  __new_nstart = __new_map + (__new_map_size - __new_num_nodes) / 2
	sub	rax, r10	 # tmp535, __new_num_nodes
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:960: 	  __new_nstart = __new_map + (__new_map_size - __new_num_nodes) / 2
	shr	rax	 # tmp536
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:960: 	  __new_nstart = __new_map + (__new_map_size - __new_num_nodes) / 2
	lea	r10, [rdx+rax*8]	 # __new_nstart,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:435: 	  const ptrdiff_t _Num = __last - __first;
	mov	rdx, QWORD PTR 88[rsp]	 # _413, %sfp
	sub	r8, rdx	 # _496, _413
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:436: 	  if (__builtin_expect(_Num > 1, true))
	cmp	r8, 8	 # _496,
	jle	.L651	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:437: 	    __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
	mov	rcx, r10	 #, __new_nstart
	mov	QWORD PTR 88[rsp], r9	 # %sfp, _446
	call	memmove	 #
	mov	r9, QWORD PTR 88[rsp]	 # _446, %sfp
	mov	r10, rax	 # __new_nstart,
.L652:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	lea	rdx, 0[0+rsi*8]	 # tmp539,
	mov	rcx, r9	 #, _446
	mov	QWORD PTR 88[rsp], r10	 # %sfp, __new_nstart
	call	_ZdlPvy	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:967: 	  this->_M_impl._M_map = __new_map;
	mov	rax, QWORD PTR 80[rsp]	 # _526, %sfp
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	mov	r10, QWORD PTR 88[rsp]	 # __new_nstart, %sfp
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:967: 	  this->_M_impl._M_map = __new_map;
	mov	QWORD PTR 192[rsp], rax	 # points.D.136175._M_impl.D.135525._M_map, _526
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:968: 	  this->_M_impl._M_map_size = __new_map_size;
	mov	rax, QWORD PTR 72[rsp]	 # __new_map_size, %sfp
	mov	QWORD PTR 200[rsp], rax	 # points.D.136175._M_impl.D.135525._M_map_size, __new_map_size
.L735:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	mov	rax, QWORD PTR [r10]	 # pretmp_953,* __new_nstart
	jmp	.L645	 #
	.p2align 4,,10
	.p2align 3
.L656:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:262:       if (__a < __b)
	test	rbx, rbx	 # _560
	je	.L706	 #,
	lea	rax, 1[rbx]	 # _673,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:955: 	  size_type __new_map_size = this->_M_impl._M_map_size
	lea	rcx, [rax+rax]	 # __new_map_size,
	mov	r11, rcx	 # __new_map_size, __new_map_size
	mov	QWORD PTR 72[rsp], rcx	 # %sfp, __new_map_size
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:130: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	movabs	rcx, 1152921504606846975	 # tmp571,
	cmp	rcx, r11	 # tmp571, __new_map_size
	jb	.L619	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	sal	rax, 4	 # _673,
	mov	rcx, rax	 # _998, _673
.L663:
	mov	QWORD PTR 104[rsp], r10	 # %sfp, __new_num_nodes
	mov	QWORD PTR 96[rsp], r9	 # %sfp, _562
	mov	QWORD PTR 88[rsp], rdx	 # %sfp, _529
	call	_Znwy	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:960: 	  __new_nstart = __new_map + (__new_map_size - __new_num_nodes) / 2
	mov	r10, QWORD PTR 104[rsp]	 # __new_num_nodes, %sfp
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:962: 	  std::copy(this->_M_impl._M_start._M_node,
	lea	r8, 8[r12]	 # tmp577,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	rdx, rax	 # _642, tmp664
	mov	QWORD PTR 80[rsp], rax	 # %sfp, _642
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:960: 	  __new_nstart = __new_map + (__new_map_size - __new_num_nodes) / 2
	mov	rax, QWORD PTR 72[rsp]	 # tmp574, %sfp
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:436: 	  if (__builtin_expect(_Num > 1, true))
	mov	r9, QWORD PTR 96[rsp]	 # _562, %sfp
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:960: 	  __new_nstart = __new_map + (__new_map_size - __new_num_nodes) / 2
	sub	rax, r10	 # tmp574, __new_num_nodes
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:960: 	  __new_nstart = __new_map + (__new_map_size - __new_num_nodes) / 2
	shr	rax	 # tmp575
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:960: 	  __new_nstart = __new_map + (__new_map_size - __new_num_nodes) / 2
	lea	r10, [rdx+rax*8]	 # __new_nstart,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:435: 	  const ptrdiff_t _Num = __last - __first;
	mov	rdx, QWORD PTR 88[rsp]	 # _529, %sfp
	sub	r8, rdx	 # _612, _529
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:436: 	  if (__builtin_expect(_Num > 1, true))
	cmp	r8, 8	 # _612,
	jle	.L665	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:437: 	    __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
	mov	rcx, r10	 #, __new_nstart
	mov	QWORD PTR 88[rsp], r9	 # %sfp, _562
	call	memmove	 #
	mov	r9, QWORD PTR 88[rsp]	 # _562, %sfp
	mov	r10, rax	 # __new_nstart,
.L666:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	lea	rdx, 0[0+rbx*8]	 # tmp578,
	mov	rcx, r9	 #, _562
	mov	QWORD PTR 88[rsp], r10	 # %sfp, __new_nstart
	call	_ZdlPvy	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:967: 	  this->_M_impl._M_map = __new_map;
	mov	rax, QWORD PTR 80[rsp]	 # _642, %sfp
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	mov	r10, QWORD PTR 88[rsp]	 # __new_nstart, %sfp
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:967: 	  this->_M_impl._M_map = __new_map;
	mov	QWORD PTR 192[rsp], rax	 # points.D.136175._M_impl.D.135525._M_map, _642
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:968: 	  this->_M_impl._M_map_size = __new_map_size;
	mov	rax, QWORD PTR 72[rsp]	 # __new_map_size, %sfp
	mov	QWORD PTR 200[rsp], rax	 # points.D.136175._M_impl.D.135525._M_map_size, __new_map_size
.L736:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	mov	rax, QWORD PTR [r10]	 # pretmp_1006,* __new_nstart
	jmp	.L659	 #
	.p2align 4,,10
	.p2align 3
.L672:
	mov	r9, QWORD PTR 136[rsp]	 # _661, MEM[(long long unsigned int *)&checked + 8B]
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/functional_hash.h:166:   _Cxx_hashtable_define_trivial_hash(unsigned int)
	mov	r14d, ebp	 # _666, _135
	mov	r15d, edi	 # _664, _134
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable_policy.h:524:     { return __num % __den; }
	xor	edx, edx	 # tmp599
 # include/gl_setup.hpp:163:             return hx ^ (hy << 1);
	lea	r10, [r14+r14]	 # tmp598,
 # include/gl_setup.hpp:163:             return hx ^ (hy << 1);
	xor	r10, r15	 # _668, _664
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable_policy.h:524:     { return __num % __den; }
	mov	rax, r10	 # tmp600, _668
	div	r9	 # _661
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:1939:       __node_base_ptr __prev_p = _M_buckets[__bkt];
	mov	rax, QWORD PTR 128[rsp]	 # MEM[(struct __node_base * * *)&checked], MEM[(struct __node_base * * *)&checked]
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable_policy.h:524:     { return __num % __den; }
	mov	r11, rdx	 # tmp599, tmp599
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:1939:       __node_base_ptr __prev_p = _M_buckets[__bkt];
	mov	rsi, QWORD PTR [rax+rdx*8]	 # __prev_p, *_676
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:1940:       if (!__prev_p)
	test	rsi, rsi	 # __prev_p
	je	.L677	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:1943:       for (__node_ptr __p = static_cast<__node_ptr>(__prev_p->_M_nxt);;
	mov	rax, QWORD PTR [rsi]	 # __p, __prev_p_677->_M_nxt
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable_policy.h:1702:       { return __c == __n._M_hash_code; }
	mov	rcx, QWORD PTR 16[rax]	 # _687, MEM[(const struct _Hash_node_code_cache &)__p_678 + 16]._M_hash_code
	jmp	.L682	 #
	.p2align 4,,10
	.p2align 3
.L678:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:1949: 	  if (!__p->_M_nxt || _M_bucket_index(*__p->_M_next()) != __bkt)
	mov	r8, QWORD PTR [rax]	 # _683, __p_679->D.150149._M_nxt
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:1949: 	  if (!__p->_M_nxt || _M_bucket_index(*__p->_M_next()) != __bkt)
	test	r8, r8	 # _683
	je	.L677	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable_policy.h:1359:       { return _RangeHash{}(__n._M_hash_code, __bkt_count); }
	mov	rcx, QWORD PTR 16[r8]	 # _687, MEM[(const struct _Hash_node_value &)_683 + 8].D.145110._M_hash_code
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable_policy.h:524:     { return __num % __den; }
	xor	edx, edx	 # tmp603
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:1951: 	  __prev_p = __p;
	mov	rsi, rax	 # __prev_p, __p
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable_policy.h:524:     { return __num % __den; }
	mov	rax, rcx	 # tmp604, _687
	div	r9	 # _661
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:1949: 	  if (!__p->_M_nxt || _M_bucket_index(*__p->_M_next()) != __bkt)
	cmp	r11, rdx	 # tmp599, tmp603
	jne	.L677	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:1944: 	   __p = __p->_M_next())
	mov	rax, r8	 # __p, _683
.L682:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable_policy.h:1743:       { return _S_equals(__c, __n) && _M_key_equals(__k, __n); }
	cmp	r10, rcx	 # _668, _687
	jne	.L678	 #,
 # include/gl_setup.hpp:135:             return x == other.x && y == other.y;
	cmp	edi, DWORD PTR 8[rax]	 # _134, MEM[(const struct Vec2 &)__p_679 + 8].x
	jne	.L678	 #,
 # include/gl_setup.hpp:135:             return x == other.x && y == other.y;
	cmp	ebp, DWORD PTR 12[rax]	 # _135, MEM[(const struct Vec2 &)__p_679 + 8].y
	jne	.L678	 #,
 # source/simulation.cpp:87: 			if (checked.find(current) != checked.end()) {
	cmp	QWORD PTR [rsi], 0	 # __prev_p_690->_M_nxt,
	jne	.L675	 #,
	.p2align 4,,10
	.p2align 3
.L677:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/hashtable.h:904: 	  return _M_insert_unique(
	mov	rdx, QWORD PTR 40[rsp]	 #, %sfp
	mov	rcx, QWORD PTR 48[rsp]	 #, %sfp
	call	_ZNSt10_HashtableIN5Lenia4Vec2IjEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_8Vec2HashIjEENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS2_SI_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb1EEEEEEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb1EEEbEOT_OT0_RKT1_.isra.0	 #
 # source/simulation.cpp:92: 			if (m_readBuffer.m_data[current.y * m_w + current.x] > 0) {
	mov	rax, QWORD PTR 456[rsp]	 # tmp839, this
	imul	r14, QWORD PTR [rax]	 # tmp607, this_43(D)->m_w
 # source/simulation.cpp:92: 			if (m_readBuffer.m_data[current.y * m_w + current.x] > 0) {
	mov	rax, QWORD PTR 56[rax]	 # MEM[(const struct vector *)this_43(D) + 56B].D.115405._M_impl.D.114711._M_start, MEM[(const struct vector *)this_43(D) + 56B].D.115405._M_impl.D.114711._M_start
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_vector.h:1145: 	return *(this->_M_impl._M_start + __n);
	add	r14, r15	 # tmp608, _664
 # source/simulation.cpp:92: 			if (m_readBuffer.m_data[current.y * m_w + current.x] > 0) {
	vmovss	xmm0, DWORD PTR [rax+r14*4]	 # *_84, *_84
	vcomiss	xmm0, xmm10	 # *_84, tmp652
	jbe	.L675	 #,
 # include/gl_setup.hpp:88:             return m_x0 == 0 && m_y0 == 0 && m_x1 == 0 && m_y1 == 0;
	mov	rax, QWORD PTR 448[rsp]	 # tmp841, .result_ptr
 # include/gl_setup.hpp:88:             return m_x0 == 0 && m_y0 == 0 && m_x1 == 0 && m_y1 == 0;
	mov	rsi, QWORD PTR 448[rsp]	 # tmp843, .result_ptr
 # include/gl_setup.hpp:88:             return m_x0 == 0 && m_y0 == 0 && m_x1 == 0 && m_y1 == 0;
	mov	rdx, QWORD PTR 448[rsp]	 # tmp842, .result_ptr
 # include/gl_setup.hpp:88:             return m_x0 == 0 && m_y0 == 0 && m_x1 == 0 && m_y1 == 0;
	mov	eax, DWORD PTR [rax]	 # _692, <retval>.m_x0
 # include/gl_setup.hpp:88:             return m_x0 == 0 && m_y0 == 0 && m_x1 == 0 && m_y1 == 0;
	mov	ecx, DWORD PTR 12[rsi]	 # pretmp_1112, <retval>.m_y1
 # include/gl_setup.hpp:88:             return m_x0 == 0 && m_y0 == 0 && m_x1 == 0 && m_y1 == 0;
	mov	edx, DWORD PTR 4[rdx]	 # pretmp_1111, <retval>.m_y0
 # include/gl_setup.hpp:88:             return m_x0 == 0 && m_y0 == 0 && m_x1 == 0 && m_y1 == 0;
	mov	r8d, DWORD PTR 8[rsi]	 # pretmp_1113, <retval>.m_x1
 # include/gl_setup.hpp:88:             return m_x0 == 0 && m_y0 == 0 && m_x1 == 0 && m_y1 == 0;
	test	eax, eax	 # _692
	jne	.L685	 #,
 # include/gl_setup.hpp:88:             return m_x0 == 0 && m_y0 == 0 && m_x1 == 0 && m_y1 == 0;
	test	edx, edx	 # pretmp_1111
	jne	.L686	 #,
 # include/gl_setup.hpp:88:             return m_x0 == 0 && m_y0 == 0 && m_x1 == 0 && m_y1 == 0;
	mov	eax, ecx	 # tmp671, pretmp_1112
	or	eax, r8d	 # tmp671, pretmp_1113
	jne	.L746	 #,
 # include/gl_setup.hpp:105:                 m_x0 = m_x1 = x;
	vmovd	xmm5, edi	 # _134, _134
	vpinsrd	xmm0, xmm5, ebp, 1	 # tmp614, _134, _135
	vpunpcklqdq	xmm0, xmm0, xmm0	 # tmp613, tmp614, tmp614
	vmovdqu	XMMWORD PTR [rsi], xmm0	 # MEM <vector(4) unsigned int> [(unsigned int *)&<retval>], tmp613
	jmp	.L693	 #
	.p2align 4,,10
	.p2align 3
.L670:
 # source/simulation.cpp:84: 			Vec2<u32> current = points.top();
	mov	rax, QWORD PTR -8[rdi]	 # MEM[(struct Vec2 * *)_78 + -8B], MEM[(struct Vec2 * *)_78 + -8B]
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	rcx, rbx	 #, _713
	mov	edx, 512	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:564:       this->_M_impl._M_finish._M_set_node(this->_M_impl._M_finish._M_node - 1);
	sub	rdi, 8	 # tmp595,
 # source/simulation.cpp:84: 			Vec2<u32> current = points.top();
	mov	rax, QWORD PTR 504[rax]	 # MEM[(const struct Vec2 &)_7 + 504], MEM[(const struct Vec2 &)_7 + 504]
	mov	QWORD PTR 120[rsp], rax	 # current, MEM[(const struct Vec2 &)_7 + 504]
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	mov	rax, QWORD PTR [rdi]	 # _648, MEM[(struct Vec2 * *)_78 + -8B]
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:565:       this->_M_impl._M_finish._M_cur = this->_M_impl._M_finish._M_last - 1;
	lea	rbx, 504[rax]	 # _713,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:267: 	_M_last = _M_first + difference_type(_S_buffer_size());
	lea	rdx, 512[rax]	 # tmp594,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:565:       this->_M_impl._M_finish._M_cur = this->_M_impl._M_finish._M_last - 1;
	vmovq	xmm5, rbx	 # _713, _713
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:267: 	_M_last = _M_first + difference_type(_S_buffer_size());
	vmovq	xmm1, rdx	 # tmp594, tmp594
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:565:       this->_M_impl._M_finish._M_cur = this->_M_impl._M_finish._M_last - 1;
	vpinsrq	xmm0, xmm5, rax, 1	 # tmp597, _713, _648
	vpinsrq	xmm1, xmm1, rdi, 1	 # tmp596, tmp594, tmp595
	vinserti128	ymm0, ymm0, xmm1, 0x1	 # tmp593, tmp597, tmp596
	vmovdqu	YMMWORD PTR 240[rsp], ymm0	 # MEM <vector(4) long long unsigned int> [(void *)&points + 48B], tmp593
	vzeroupper
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:568:     }
	jmp	.L671	 #
	.p2align 4,,10
	.p2align 3
.L673:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/functional_hash.h:166:   _Cxx_hashtable_define_trivial_hash(unsigned int)
	mov	r15d, edi	 # _664, _134
	mov	r14d, ebp	 # _666, _135
	jmp	.L677	 #
.L703:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:955: 	  size_type __new_map_size = this->_M_impl._M_map_size
	mov	QWORD PTR 72[rsp], 3	 # %sfp,
	mov	ecx, 24	 # prephitmp_607,
	jmp	.L618	 #
.L704:
	mov	QWORD PTR 72[rsp], 3	 # %sfp,
	mov	ecx, 24	 # _547,
	jmp	.L634	 #
.L612:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:949: 	    std::copy_backward(this->_M_impl._M_start._M_node,
	lea	rcx, 8[r10+rdi]	 # _246,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:747: 	  if (__builtin_expect(_Num > 1, true))
	cmp	r8, 8	 # _1133,
	jle	.L616	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:748: 	    __builtin_memmove(__result - _Num, __first, sizeof(_Tp) * _Num);
	sub	rcx, r8	 # tmp450, _1133
	mov	QWORD PTR 72[rsp], r10	 # %sfp, __new_nstart
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:748: 	    __builtin_memmove(__result - _Num, __first, sizeof(_Tp) * _Num);
	call	memmove	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	mov	r10, QWORD PTR 72[rsp]	 # __new_nstart, %sfp
	mov	rax, QWORD PTR [r10]	 # pretmp_663,* __new_nstart
	jmp	.L614	 #
.L705:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:955: 	  size_type __new_map_size = this->_M_impl._M_map_size
	mov	QWORD PTR 72[rsp], 3	 # %sfp,
	mov	ecx, 24	 # _945,
	jmp	.L649	 #
.L628:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:949: 	    std::copy_backward(this->_M_impl._M_start._M_node,
	lea	rcx, 8[r10+rdi]	 # _362,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:747: 	  if (__builtin_expect(_Num > 1, true))
	cmp	r8, 8	 # _1128,
	jle	.L632	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:748: 	    __builtin_memmove(__result - _Num, __first, sizeof(_Tp) * _Num);
	sub	rcx, r8	 # tmp492, _1128
	mov	QWORD PTR 72[rsp], r10	 # %sfp, __new_nstart
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:748: 	    __builtin_memmove(__result - _Num, __first, sizeof(_Tp) * _Num);
	call	memmove	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	mov	r10, QWORD PTR 72[rsp]	 # __new_nstart, %sfp
	mov	rdx, QWORD PTR [r10]	 # prephitmp_813,* __new_nstart
	jmp	.L630	 #
.L706:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:955: 	  size_type __new_map_size = this->_M_impl._M_map_size
	mov	QWORD PTR 72[rsp], 3	 # %sfp,
	mov	ecx, 24	 # _998,
	jmp	.L663	 #
.L643:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:949: 	    std::copy_backward(this->_M_impl._M_start._M_node,
	lea	rcx, 8[r10+rdi]	 # _478,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:747: 	  if (__builtin_expect(_Num > 1, true))
	cmp	r8, 8	 # _1123,
	jle	.L647	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:748: 	    __builtin_memmove(__result - _Num, __first, sizeof(_Tp) * _Num);
	sub	rcx, r8	 # tmp531, _1123
	mov	QWORD PTR 72[rsp], r10	 # %sfp, __new_nstart
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:748: 	    __builtin_memmove(__result - _Num, __first, sizeof(_Tp) * _Num);
	call	memmove	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	mov	r10, QWORD PTR 72[rsp]	 # __new_nstart, %sfp
	mov	rax, QWORD PTR [r10]	 # pretmp_953,* __new_nstart
	jmp	.L645	 #
.L657:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:949: 	    std::copy_backward(this->_M_impl._M_start._M_node,
	lea	rcx, 8[r10+rdi]	 # _594,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:747: 	  if (__builtin_expect(_Num > 1, true))
	cmp	r8, 8	 # _1118,
	jle	.L661	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:748: 	    __builtin_memmove(__result - _Num, __first, sizeof(_Tp) * _Num);
	sub	rcx, r8	 # tmp570, _1118
	mov	QWORD PTR 72[rsp], r10	 # %sfp, __new_nstart
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:748: 	    __builtin_memmove(__result - _Num, __first, sizeof(_Tp) * _Num);
	call	memmove	 #
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	mov	r10, QWORD PTR 72[rsp]	 # __new_nstart, %sfp
	mov	rax, QWORD PTR [r10]	 # pretmp_1006,* __new_nstart
	jmp	.L659	 #
.L685:
 # include/gl_setup.hpp:109:                 if (x < m_x0) m_x0 = x;
	cmp	edi, eax	 # _134, _692
	jnb	.L686	 #,
 # include/gl_setup.hpp:109:                 if (x < m_x0) m_x0 = x;
	mov	DWORD PTR [rsi], edi	 # <retval>.m_x0, _134
.L686:
 # include/gl_setup.hpp:110:                 if (x > m_x1) m_x1 = x;
	cmp	r8d, edi	 # pretmp_1113, _134
	jb	.L747	 #,
.L690:
 # include/gl_setup.hpp:111:                 if (y < m_y0) m_y0 = y;
	cmp	ebp, edx	 # _135, pretmp_1111
	jnb	.L692	 #,
 # include/gl_setup.hpp:111:                 if (y < m_y0) m_y0 = y;
	mov	rax, QWORD PTR 448[rsp]	 # tmp852, .result_ptr
	mov	DWORD PTR 4[rax], ebp	 # <retval>.m_y0, _135
.L692:
 # include/gl_setup.hpp:112:                 if (y > m_y1) m_y1 = y;
	cmp	ecx, ebp	 # pretmp_1112, _135
	jnb	.L693	 #,
 # include/gl_setup.hpp:112:                 if (y > m_y1) m_y1 = y;
	mov	rax, QWORD PTR 448[rsp]	 # tmp853, .result_ptr
	mov	DWORD PTR 12[rax], ebp	 # <retval>.m_y1, _135
.L693:
 # source/simulation.cpp:94: 				for (u32 i = 0; i < padding; i++)
	mov	eax, DWORD PTR 60[rsp]	 #, %sfp
	test	eax, eax	 #
	je	.L675	 #,
	mov	eax, DWORD PTR 472[rsp]	 # tmp855, y
	lea	rbx, 112[rsp]	 # tmp641,
	xor	r14d, r14d	 # i
	mov	r13d, DWORD PTR 464[rsp]	 # x, x
	mov	r15d, r14d	 # i, i
	lea	ebp, [rax+rax]	 # _941,
	mov	edi, eax	 # tmp856, tmp855
	mov	eax, DWORD PTR 60[rsp]	 # _125, %sfp
	add	edi, eax	 # _944, _125
	mov	r14d, eax	 # _125, _125
	.p2align 4,,10
	.p2align 3
.L695:
 # source/simulation.cpp:96: 					points.push({ x + i, y + j });
	lea	eax, 0[r13+r15]	 # _1074,
 # source/simulation.cpp:97: 					points.push({ x - i, y - j });
	mov	esi, DWORD PTR 472[rsp]	 # ivtmp.1282, y
 # source/simulation.cpp:96: 					points.push({ x + i, y + j });
	vmovd	xmm7, eax	 # _1074, _1074
 # source/simulation.cpp:97: 					points.push({ x - i, y - j });
	mov	eax, r13d	 # _1075, x
	sub	eax, r15d	 # _1075, i
	vmovd	xmm6, eax	 # _1075, _1075
	.p2align 4,,10
	.p2align 3
.L694:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:1554:       { emplace_back(std::move(__x)); }
	mov	rdx, rbx	 #, tmp641
	mov	rcx, r12	 #, tmp643
 # source/simulation.cpp:96: 					points.push({ x + i, y + j });
	vpinsrd	xmm0, xmm7, esi, 1	 # tmp617, _1074, ivtmp.1282
	vpinsrd	xmm8, xmm6, esi, 1	 # tmp616, _1075, ivtmp.1282
	vmovq	QWORD PTR 112[rsp], xmm0	 # MEM <vector(2) unsigned int> [(unsigned int *)_25], tmp617
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:1554:       { emplace_back(std::move(__x)); }
	call	_ZNSt5dequeIN5Lenia4Vec2IjEESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.isra.0	 #
 # source/simulation.cpp:97: 					points.push({ x - i, y - j });
	mov	eax, ebp	 # _23, _941
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:1554:       { emplace_back(std::move(__x)); }
	mov	rdx, rbx	 #, tmp641
	mov	rcx, r12	 #, tmp643
 # source/simulation.cpp:97: 					points.push({ x - i, y - j });
	sub	eax, esi	 # _23, ivtmp.1282
 # source/simulation.cpp:95: 				for (u32 j = 0; j < padding; j++) {
	add	esi, 1	 # ivtmp.1282,
	vpinsrd	xmm9, xmm7, eax, 1	 # tmp620, _1074, _23
 # source/simulation.cpp:97: 					points.push({ x - i, y - j });
	vpinsrd	xmm0, xmm6, eax, 1	 # tmp621, _1075, _23
	vmovq	QWORD PTR 112[rsp], xmm0	 # MEM <vector(2) unsigned int> [(unsigned int *)_25], tmp621
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:1554:       { emplace_back(std::move(__x)); }
	call	_ZNSt5dequeIN5Lenia4Vec2IjEESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.isra.0	 #
	mov	rdx, rbx	 #, tmp641
	mov	rcx, r12	 #, tmp643
 # source/simulation.cpp:98: 					points.push({ x + i, y - j });
	vmovq	QWORD PTR 112[rsp], xmm9	 # MEM <vector(2) unsigned int> [(unsigned int *)_25], tmp620
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:1554:       { emplace_back(std::move(__x)); }
	call	_ZNSt5dequeIN5Lenia4Vec2IjEESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.isra.0	 #
	mov	rdx, rbx	 #, tmp641
	mov	rcx, r12	 #, tmp643
 # source/simulation.cpp:99: 					points.push({ x - i, y + j });
	vmovq	QWORD PTR 112[rsp], xmm8	 # MEM <vector(2) unsigned int> [(unsigned int *)_25], tmp616
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:1554:       { emplace_back(std::move(__x)); }
	call	_ZNSt5dequeIN5Lenia4Vec2IjEESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.isra.0	 #
 # source/simulation.cpp:95: 				for (u32 j = 0; j < padding; j++) {
	cmp	esi, edi	 # ivtmp.1282, _944
	jne	.L694	 #,
 # source/simulation.cpp:94: 				for (u32 i = 0; i < padding; i++)
	add	r15d, 1	 # i,
 # source/simulation.cpp:94: 				for (u32 i = 0; i < padding; i++)
	cmp	r15d, r14d	 # i, _125
	jne	.L695	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:273:       { return __x._M_cur == __y._M_cur; }
	mov	rbx, QWORD PTR 240[rsp]	 # _713, MEM[(const struct _Self &)&points + 48]._M_cur
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:273:       { return __x._M_cur == __y._M_cur; }
	mov	r13, QWORD PTR 208[rsp]	 # prephitmp_1034, MEM[(const struct _Self &)&points + 16]._M_cur
	jmp	.L675	 #
	.p2align 4,,10
	.p2align 3
.L619:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:134: 	    if (__n > (std::size_t(-1) / sizeof(_Tp)))
	movabs	rax, 2305843009213693951	 # tmp759,
	cmp	rax, r11	 # tmp759, __new_map_size
	jnb	.L620	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:135: 	      std::__throw_bad_array_new_length();
	call	_ZSt28__throw_bad_array_new_lengthv	 #
.L620:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/new_allocator.h:136: 	    std::__throw_bad_alloc();
	call	_ZSt17__throw_bad_allocv	 #
.L747:
 # include/gl_setup.hpp:110:                 if (x > m_x1) m_x1 = x;
	mov	rax, QWORD PTR 448[rsp]	 # tmp851, .result_ptr
	mov	DWORD PTR 8[rax], edi	 # <retval>.m_x1, _134
	jmp	.L690	 #
.L707:
 # source/simulation.cpp:83: 		while (!points.empty()) {
	mov	rcx, rsi	 # pretmp_1089, tmp642
	mov	r8d, 8	 # _1086,
	vzeroupper
	jmp	.L669	 #
.L637:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:438: 	  else if (_Num == 1)
	jne	.L638	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	mov	rax, QWORD PTR [rdx]	 # _385, *_297
	mov	QWORD PTR [r10], rax	 # *__new_nstart_376, _385
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	jmp	.L638	 #
.L621:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:438: 	  else if (_Num == 1)
	jne	.L622	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	mov	rax, QWORD PTR [rdx]	 # _269, *_181
	mov	QWORD PTR [r10], rax	 # *__new_nstart_260, _269
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	jmp	.L622	 #
.L651:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:438: 	  else if (_Num == 1)
	jne	.L652	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	mov	rax, QWORD PTR [rdx]	 # _501, *_413
	mov	QWORD PTR [r10], rax	 # *__new_nstart_492, _501
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	jmp	.L652	 #
.L665:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:438: 	  else if (_Num == 1)
	jne	.L666	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	mov	rax, QWORD PTR [rdx]	 # _617, *_529
	mov	QWORD PTR [r10], rax	 # *__new_nstart_608, _617
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	jmp	.L666	 #
.L629:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:438: 	  else if (_Num == 1)
	jne	.L734	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	mov	rdx, QWORD PTR [rdx]	 # prephitmp_813, *_297
	mov	QWORD PTR [r10], rdx	 # *__new_nstart_352, prephitmp_813
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	jmp	.L630	 #
.L613:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:438: 	  else if (_Num == 1)
	jne	.L733	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	mov	rax, QWORD PTR [rdx]	 # pretmp_663, *_181
	mov	QWORD PTR [r10], rax	 # *__new_nstart_236, pretmp_663
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	jmp	.L614	 #
.L644:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:438: 	  else if (_Num == 1)
	jne	.L735	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	mov	rax, QWORD PTR [rdx]	 # pretmp_953, *_413
	mov	QWORD PTR [r10], rax	 # *__new_nstart_468, pretmp_953
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	jmp	.L645	 #
.L658:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:438: 	  else if (_Num == 1)
	jne	.L736	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	mov	rax, QWORD PTR [rdx]	 # pretmp_1006, *_529
	mov	QWORD PTR [r10], rax	 # *__new_nstart_584, pretmp_1006
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	jmp	.L659	 #
.L746:
 # include/gl_setup.hpp:110:                 if (x > m_x1) m_x1 = x;
	cmp	r8d, edi	 # pretmp_1113, _134
	jnb	.L692	 #,
 # include/gl_setup.hpp:110:                 if (x > m_x1) m_x1 = x;
	mov	DWORD PTR 8[rsi], edi	 # <retval>.m_x1, _134
	jmp	.L692	 #
.L661:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:749: 	  else if (_Num == 1)
	jne	.L736	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	mov	rax, QWORD PTR [rdx]	 # _634, *_529
	mov	QWORD PTR -8[rcx], rax	 # MEM[(struct Vec2 * *)_594 + -8B], _634
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	mov	rax, QWORD PTR [r10]	 # pretmp_1006,* __new_nstart
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	jmp	.L659	 #
.L647:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:749: 	  else if (_Num == 1)
	jne	.L735	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	mov	rax, QWORD PTR [rdx]	 # _518, *_413
	mov	QWORD PTR -8[rcx], rax	 # MEM[(struct Vec2 * *)_478 + -8B], _518
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	mov	rax, QWORD PTR [r10]	 # pretmp_953,* __new_nstart
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	jmp	.L645	 #
.L632:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:749: 	  else if (_Num == 1)
	jne	.L734	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	mov	rax, QWORD PTR [rdx]	 # _402, *_297
	mov	QWORD PTR -8[rcx], rax	 # MEM[(struct Vec2 * *)_362 + -8B], _402
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	mov	rdx, QWORD PTR [r10]	 # prephitmp_813,* __new_nstart
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	jmp	.L630	 #
.L616:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:749: 	  else if (_Num == 1)
	jne	.L733	 #,
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	mov	rax, QWORD PTR [rdx]	 # _286, *_181
	mov	QWORD PTR -8[rcx], rax	 # MEM[(struct Vec2 * *)_246 + -8B], _286
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_deque.h:266: 	_M_first = *__new_node;
	mov	rax, QWORD PTR [r10]	 # pretmp_663,* __new_nstart
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	jmp	.L614	 #
.L625:
 # C:/ProgramData/mingw64/mingw64/lib/gcc/x86_64-w64-mingw32/13.2.0/include/c++/bits/deque.tcc:493: 	  __throw_length_error(
	lea	rcx, .LC0[rip]	 # tmp438,
	call	_ZSt20__throw_length_errorPKc	 #
	nop	
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA5893:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5893-.LLSDACSB5893
.LLSDACSB5893:
.LLSDACSE5893:
	.text
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC5:
	.long	0
	.long	1086556160
	.align 8
.LC6:
	.long	0
	.long	1079574528
	.align 16
.LC7:
	.long	-1
	.long	-1
	.long	1
	.long	1
	.align 4
.LC8:
	.long	1065353216
	.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-Builds project) 13.2.0"
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	memmove;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_ZSt28__throw_bad_array_new_lengthv;	.scl	2;	.type	32;	.endef
	.def	_ZSt17__throw_bad_allocv;	.scl	2;	.type	32;	.endef
	.def	_ZSt20__throw_length_errorPKc;	.scl	2;	.type	32;	.endef
	.def	memset;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZN5Lenia6Animal8GetCellsEv;	.scl	2;	.type	32;	.endef
	.def	_ZdaPv;	.scl	2;	.type	32;	.endef
	.def	__cxa_begin_catch;	.scl	2;	.type	32;	.endef
	.def	__cxa_rethrow;	.scl	2;	.type	32;	.endef
	.def	__cxa_end_catch;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEyyy;	.scl	2;	.type	32;	.endef
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.glad_glNamedBufferSubData, "dr"
	.globl	.refptr.glad_glNamedBufferSubData
	.linkonce	discard
.refptr.glad_glNamedBufferSubData:
	.quad	glad_glNamedBufferSubData
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
	.section	.rdata$.refptr.glad_glBindBufferBase, "dr"
	.globl	.refptr.glad_glBindBufferBase
	.linkonce	discard
.refptr.glad_glBindBufferBase:
	.quad	glad_glBindBufferBase
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
	.section	.rdata$.refptr.glad_glGenBuffers, "dr"
	.globl	.refptr.glad_glGenBuffers
	.linkonce	discard
.refptr.glad_glGenBuffers:
	.quad	glad_glGenBuffers
