	.file	"animal.cpp"
	.intel_syntax noprefix
 # GNU C++23 (Rev2, Built by MSYS2 project) version 14.2.0 (x86_64-w64-mingw32)
 #	compiled by GNU C version 14.2.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.27-GMP

 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed: -masm=intel -mavx512f -mtune=generic -march=nocona -Ofast -std=c++23
	.text
	.section	.text$_ZN5Lenia8TaxonomyD1Ev,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZN5Lenia8TaxonomyD1Ev
	.def	_ZN5Lenia8TaxonomyD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Lenia8TaxonomyD1Ev
_ZN5Lenia8TaxonomyD1Ev:
.LFB6261:
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
	je	.L2	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	mov	rax, QWORD PTR 144[rbx]	 # tmp140, MEM[(struct basic_string *)this_6(D) + 128B].D.37839._M_allocated_capacity
	lea	rdx, 1[rax]	 # _42,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L2:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rcx, QWORD PTR 96[rbx]	 # _33, MEM[(const struct basic_string *)this_6(D) + 96B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:246: 	return std::pointer_traits<const_pointer>::pointer_to(*_M_local_buf);
	lea	rax, 112[rbx]	 # _34,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:269: 	if (_M_data() == _M_local_data())
	cmp	rcx, rax	 # _33, _34
	je	.L3	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	mov	rax, QWORD PTR 112[rbx]	 # tmp141, MEM[(struct basic_string *)this_6(D) + 96B].D.37839._M_allocated_capacity
	lea	rdx, 1[rax]	 # _37,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L3:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rcx, QWORD PTR 64[rbx]	 # _28, MEM[(const struct basic_string *)this_6(D) + 64B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:246: 	return std::pointer_traits<const_pointer>::pointer_to(*_M_local_buf);
	lea	rax, 80[rbx]	 # _29,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:269: 	if (_M_data() == _M_local_data())
	cmp	rcx, rax	 # _28, _29
	je	.L4	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	mov	rax, QWORD PTR 80[rbx]	 # tmp142, MEM[(struct basic_string *)this_6(D) + 64B].D.37839._M_allocated_capacity
	lea	rdx, 1[rax]	 # _32,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L4:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rcx, QWORD PTR 32[rbx]	 # _23, MEM[(const struct basic_string *)this_6(D) + 32B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:246: 	return std::pointer_traits<const_pointer>::pointer_to(*_M_local_buf);
	lea	rax, 48[rbx]	 # _24,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:269: 	if (_M_data() == _M_local_data())
	cmp	rcx, rax	 # _23, _24
	je	.L5	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	mov	rax, QWORD PTR 48[rbx]	 # tmp143, MEM[(struct basic_string *)this_6(D) + 32B].D.37839._M_allocated_capacity
	lea	rdx, 1[rax]	 # _27,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L5:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rcx, QWORD PTR [rbx]	 # _18, MEM[(const struct basic_string *)this_6(D)]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:246: 	return std::pointer_traits<const_pointer>::pointer_to(*_M_local_buf);
	lea	rax, 16[rbx]	 # _19,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:269: 	if (_M_data() == _M_local_data())
	cmp	rcx, rax	 # _18, _19
	je	.L7	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	mov	rdx, QWORD PTR 16[rbx]	 # MEM[(struct basic_string *)this_6(D)].D.37839._M_allocated_capacity, MEM[(struct basic_string *)this_6(D)].D.37839._M_allocated_capacity
	add	rdx, 1	 # _22,
 # include/animal.hpp:20: 	struct Taxonomy {
	add	rsp, 32	 #,
	pop	rbx	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	jmp	_ZdlPvy	 #
	.p2align 4,,10
	.p2align 3
.L7:
 # include/animal.hpp:20: 	struct Taxonomy {
	add	rsp, 32	 #,
	pop	rbx	 #
	ret	
	.seh_endproc
	.text
	.align 2
	.p2align 4
	.globl	_ZN5Lenia6AnimalD2Ev
	.def	_ZN5Lenia6AnimalD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Lenia6AnimalD2Ev
_ZN5Lenia6AnimalD2Ev:
.LFB6268:
	push	rbx	 #
	.seh_pushreg	rbx
	sub	rsp, 32	 #,
	.seh_stackalloc	32
	.seh_endprologue
 # source/animal.cpp:14: 		glDeleteBuffers(1, &m_kernelBuffer.m_ID);
	mov	rax, QWORD PTR .refptr.glad_glDeleteBuffers[rip]	 # tmp130,
 # source/animal.cpp:13: 	Animal::~Animal() {
	mov	rbx, rcx	 # this, tmp158
 # source/animal.cpp:14: 		glDeleteBuffers(1, &m_kernelBuffer.m_ID);
	lea	rdx, 256[rcx]	 # _2,
 # source/animal.cpp:14: 		glDeleteBuffers(1, &m_kernelBuffer.m_ID);
	mov	ecx, 1	 #,
	call	[QWORD PTR [rax]]	 # glad_glDeleteBuffers
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rcx, QWORD PTR 264[rbx]	 # _11, MEM[(struct _Vector_base *)this_6(D) + 264B]._M_impl.D.142166._M_start
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:388: 	if (__p)
	test	rcx, rcx	 # _11
	je	.L10	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rdx, QWORD PTR 280[rbx]	 # _12, MEM[(struct _Vector_base *)this_6(D) + 264B]._M_impl.D.142166._M_end_of_storage
	sub	rdx, rcx	 # _12, _11
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L10:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rcx, QWORD PTR 224[rbx]	 # _24, MEM[(const struct basic_string *)this_6(D) + 224B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:246: 	return std::pointer_traits<const_pointer>::pointer_to(*_M_local_buf);
	lea	rax, 240[rbx]	 # _25,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:269: 	if (_M_data() == _M_local_data())
	cmp	rcx, rax	 # _24, _25
	je	.L11	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	mov	rax, QWORD PTR 240[rbx]	 # tmp161, MEM[(struct basic_string *)this_6(D) + 224B].D.37839._M_allocated_capacity
	lea	rdx, 1[rax]	 # _28,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L11:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rcx, QWORD PTR 144[rbx]	 # _49, MEM[(const struct basic_string *)this_6(D) + 144B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:246: 	return std::pointer_traits<const_pointer>::pointer_to(*_M_local_buf);
	lea	rax, 160[rbx]	 # _50,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:269: 	if (_M_data() == _M_local_data())
	cmp	rcx, rax	 # _49, _50
	je	.L12	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	mov	rax, QWORD PTR 160[rbx]	 # tmp162, MEM[(struct basic_string *)this_6(D) + 144B].D.37839._M_allocated_capacity
	lea	rdx, 1[rax]	 # _53,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L12:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rcx, QWORD PTR 112[rbx]	 # _44, MEM[(const struct basic_string *)this_6(D) + 112B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:246: 	return std::pointer_traits<const_pointer>::pointer_to(*_M_local_buf);
	lea	rax, 128[rbx]	 # _45,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:269: 	if (_M_data() == _M_local_data())
	cmp	rcx, rax	 # _44, _45
	je	.L13	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	mov	rax, QWORD PTR 128[rbx]	 # tmp163, MEM[(struct basic_string *)this_6(D) + 112B].D.37839._M_allocated_capacity
	lea	rdx, 1[rax]	 # _48,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L13:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rcx, QWORD PTR 80[rbx]	 # _39, MEM[(const struct basic_string *)this_6(D) + 80B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:246: 	return std::pointer_traits<const_pointer>::pointer_to(*_M_local_buf);
	lea	rax, 96[rbx]	 # _40,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:269: 	if (_M_data() == _M_local_data())
	cmp	rcx, rax	 # _39, _40
	je	.L14	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	mov	rax, QWORD PTR 96[rbx]	 # tmp164, MEM[(struct basic_string *)this_6(D) + 80B].D.37839._M_allocated_capacity
	lea	rdx, 1[rax]	 # _43,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L14:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rcx, QWORD PTR 48[rbx]	 # _34, MEM[(const struct basic_string *)this_6(D) + 48B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:246: 	return std::pointer_traits<const_pointer>::pointer_to(*_M_local_buf);
	lea	rax, 64[rbx]	 # _35,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:269: 	if (_M_data() == _M_local_data())
	cmp	rcx, rax	 # _34, _35
	je	.L15	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	mov	rax, QWORD PTR 64[rbx]	 # tmp165, MEM[(struct basic_string *)this_6(D) + 48B].D.37839._M_allocated_capacity
	lea	rdx, 1[rax]	 # _38,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L15:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rcx, QWORD PTR 16[rbx]	 # _29, MEM[(const struct basic_string *)this_6(D) + 16B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:246: 	return std::pointer_traits<const_pointer>::pointer_to(*_M_local_buf);
	lea	rax, 32[rbx]	 # _30,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:269: 	if (_M_data() == _M_local_data())
	cmp	rcx, rax	 # _29, _30
	je	.L20	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	mov	rdx, QWORD PTR 32[rbx]	 # MEM[(struct basic_string *)this_6(D) + 16B].D.37839._M_allocated_capacity, MEM[(struct basic_string *)this_6(D) + 16B].D.37839._M_allocated_capacity
	add	rdx, 1	 # _33,
 # source/animal.cpp:15: 	}
	add	rsp, 32	 #,
	pop	rbx	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	jmp	_ZdlPvy	 #
	.p2align 4,,10
	.p2align 3
.L20:
 # source/animal.cpp:15: 	}
	add	rsp, 32	 #,
	pop	rbx	 #
	ret	
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6268:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6268-.LLSDACSB6268
.LLSDACSB6268:
.LLSDACSE6268:
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
.LFB6307:
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
	sub	rsp, 104	 #,
	.seh_stackalloc	104
	vmovups	XMMWORD PTR 48[rsp], xmm6	 #,
	.seh_savexmm	xmm6, 48
	vmovups	XMMWORD PTR 64[rsp], xmm7	 #,
	.seh_savexmm	xmm7, 64
	vmovups	XMMWORD PTR 80[rsp], xmm8	 #,
	.seh_savexmm	xmm8, 80
	.seh_endprologue
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rbx, QWORD PTR 224[rcx]	 # str, MEM[(const struct basic_string *)this_69(D) + 224B]._M_dataplus._M_p
 # source/animal.cpp:26: 	f32* Animal::GetCells() noexcept {
	mov	r13, rcx	 # this, tmp271
 # source/animal.cpp:29: 		f32* buffer = new f32[BUFFER_DEFAULT_SIZE];
	mov	ecx, 262140	 #,
	call	_Znay	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:952: 	*__first = __tmp;
	mov	r8d, 262140	 #,
	xor	edx, edx	 #
	mov	rcx, rax	 #, _72
 # source/animal.cpp:29: 		f32* buffer = new f32[BUFFER_DEFAULT_SIZE];
	mov	rsi, rax	 # _72, tmp272
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:952: 	*__first = __tmp;
	call	memset	 #
 # source/animal.cpp:32: 		while (*str && *str != '!') {
	movzx	eax, BYTE PTR [rbx]	 # _9, *_111
 # source/animal.cpp:32: 		while (*str && *str != '!') {
	test	al, al	 # _9
	je	.L22	 #,
	cmp	al, 33	 # _9,
	je	.L22	 #,
	vxorps	xmm2, xmm2, xmm2	 # tmp275
 # source/animal.cpp:31: 		u32 arr_len = 0, row_size = 0, last_len = 0, num_rows = 1;
	mov	r10d, 1	 # num_rows,
 # source/animal.cpp:31: 		u32 arr_len = 0, row_size = 0, last_len = 0, num_rows = 1;
	xor	edi, edi	 # row_size
 # source/animal.cpp:42: 			while (isdigit(*str))
	xor	ebp, ebp	 # count
 # source/animal.cpp:37: 				buffer[arr_len++] = END_OF_ROW;
	vmovss	xmm3, DWORD PTR .LC1[rip]	 # tmp265,
 # source/animal.cpp:31: 		u32 arr_len = 0, row_size = 0, last_len = 0, num_rows = 1;
	xor	r11d, r11d	 # last_len
 # source/animal.cpp:31: 		u32 arr_len = 0, row_size = 0, last_len = 0, num_rows = 1;
	xor	r9d, r9d	 #
 # source/animal.cpp:59: 				buffer[arr_len++] = num / 255.f;
	vmovss	xmm1, DWORD PTR .LC2[rip]	 # tmp268,
	.p2align 4
	.p2align 3
.L35:
 # source/animal.cpp:34: 			if (*str == '$') {
	cmp	al, 36	 # _9,
	jne	.L23	 #,
 # source/animal.cpp:35: 				if (arr_len - last_len > row_size)
	mov	edx, r9d	 # _2, arr_len
 # source/animal.cpp:32: 		while (*str && *str != '!') {
	movzx	eax, BYTE PTR 1[rbx]	 # _9, MEM[(char *)str_148 + 1B]
 # source/animal.cpp:37: 				buffer[arr_len++] = END_OF_ROW;
	vmovss	DWORD PTR [rsi+r9*4], xmm3	 # *_5, tmp265
 # source/animal.cpp:35: 				if (arr_len - last_len > row_size)
	sub	edx, r11d	 # _2, last_len
 # source/animal.cpp:37: 				buffer[arr_len++] = END_OF_ROW;
	lea	r11d, 1[r9]	 # last_len,
 # source/animal.cpp:35: 				if (arr_len - last_len > row_size)
	cmp	edi, edx	 # row_size, _2
 # source/animal.cpp:37: 				buffer[arr_len++] = END_OF_ROW;
	mov	r9d, r11d	 #, last_len
 # source/animal.cpp:35: 				if (arr_len - last_len > row_size)
	cmovb	edi, edx	 # row_size,, row_size, _2
 # source/animal.cpp:40: 				num_rows++;
	add	r10d, 1	 # num_rows,
 # source/animal.cpp:39: 				str++;
	add	rbx, 1	 # str,
.L23:
 # source/animal.cpp:42: 			while (isdigit(*str))
	movsx	r8d, al	 # _140, _9
	xor	edx, edx	 # count
	lea	ecx, -48[r8]	 # _141,
	cmp	ecx, 9	 # _141,
	ja	.L84	 #,
	.p2align 6
	.p2align 4
	.p2align 3
.L24:
	mov	r12, rbx	 # str, str
 # source/animal.cpp:42: 			while (isdigit(*str))
	movsx	ecx, BYTE PTR 1[rbx]	 #, MEM[(char *)str_101]
 # source/animal.cpp:43: 				count = count * 10 + (*str++ - '0');
	sub	eax, 48	 # _136,
 # source/animal.cpp:43: 				count = count * 10 + (*str++ - '0');
	lea	edx, [rdx+rdx*4]	 # _6,
 # source/animal.cpp:43: 				count = count * 10 + (*str++ - '0');
	movsx	eax, al	 # _8, _136
 # source/animal.cpp:43: 				count = count * 10 + (*str++ - '0');
	add	rbx, 1	 # str,
 # source/animal.cpp:42: 			while (isdigit(*str))
	lea	r8d, -48[rcx]	 # _11,
 # source/animal.cpp:43: 				count = count * 10 + (*str++ - '0');
	lea	edx, [rax+rdx*2]	 # count,
 # source/animal.cpp:42: 			while (isdigit(*str))
	mov	eax, ecx	 #,
 # source/animal.cpp:42: 			while (isdigit(*str))
	cmp	r8d, 9	 # _11,
	jbe	.L24	 #,
	mov	r8d, 255	 # num,
	cmp	cl, 111	 # _9,
	je	.L27	 #,
	jg	.L28	 #,
	sub	eax, 65	 # _296,
 # source/animal.cpp:55: 				num = *str - 'A' + 1;
	lea	r8d, -64[rcx]	 # tmp263,
	cmp	al, 24	 # _296,
	cmovnb	r8d, ebp	 # tmp263,, num, count
.L27:
 # source/animal.cpp:57: 			count = count ? count : 1;
	test	edx, edx	 # count
	je	.L30	 #,
 # source/animal.cpp:58: 			for (i32 i = 0; i < count; i++)
	mov	rax, rbx	 # str, str
	jle	.L33	 #,
 # source/animal.cpp:59: 				buffer[arr_len++] = num / 255.f;
	vcvtsi2ss	xmm0, xmm2, r8d	 # tmp277, tmp275, num
 # source/animal.cpp:58: 			for (i32 i = 0; i < count; i++)
	xor	eax, eax	 # i
 # source/animal.cpp:59: 				buffer[arr_len++] = num / 255.f;
	vmulss	xmm0, xmm0, xmm1	 # _280, _278, tmp268
	.p2align 5
	.p2align 4
	.p2align 3
.L34:
 # source/animal.cpp:59: 				buffer[arr_len++] = num / 255.f;
	lea	ecx, [rax+r9]	 # _23,
 # source/animal.cpp:58: 			for (i32 i = 0; i < count; i++)
	add	eax, 1	 # i,
 # source/animal.cpp:59: 				buffer[arr_len++] = num / 255.f;
	vmovss	DWORD PTR [rsi+rcx*4], xmm0	 # *_25, _280
 # source/animal.cpp:58: 			for (i32 i = 0; i < count; i++)
	cmp	eax, edx	 # i, count
	jl	.L34	 #,
	mov	rax, rbx	 # str, str
.L32:
	add	r9d, edx	 #, count
	mov	r9d, r9d	 #,
.L33:
 # source/animal.cpp:32: 		while (*str && *str != '!') {
	movzx	eax, BYTE PTR 1[rax]	 # _9, MEM[(char *)str_138 + 1B]
 # source/animal.cpp:60: 			str++;
	add	rbx, 1	 # str,
 # source/animal.cpp:32: 		while (*str && *str != '!') {
	test	al, al	 # _9
	je	.L37	 #,
	cmp	al, 33	 # _9,
	jne	.L35	 #,
.L37:
 # source/animal.cpp:62: 		size_t size = (size_t)num_rows * row_size;
	mov	eax, edi	 # _30, row_size
 # source/animal.cpp:62: 		size_t size = (size_t)num_rows * row_size;
	mov	r15d, r10d	 # _29, num_rows
	vmovq	xmm7, r15	 # _29, _29
 # source/animal.cpp:62: 		size_t size = (size_t)num_rows * row_size;
	imul	r15, rax	 # size, _30
 # source/animal.cpp:62: 		size_t size = (size_t)num_rows * row_size;
	vmovq	xmm8, rax	 # _30, _30
 # source/animal.cpp:63: 		f32* new_buffer = new f32[size];
	movabs	rax, 2305843009213693950	 # tmp235,
	cmp	rax, r15	 # tmp235, size
	jb	.L39	 #,
 # source/animal.cpp:63: 		f32* new_buffer = new f32[size];
	lea	r8, 0[0+r15*4]	 # iftmp.38_76,
 # source/animal.cpp:63: 		f32* new_buffer = new f32[size];
	mov	rcx, r8	 #, iftmp.38_76
	mov	QWORD PTR 40[rsp], r8	 # %sfp, iftmp.38_76
	call	_Znay	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:951:       for (; __first != __last; ++__first)
	mov	r8, QWORD PTR 40[rsp]	 # iftmp.38_76, %sfp
 # source/animal.cpp:63: 		f32* new_buffer = new f32[size];
	mov	r14, rax	 # <retval>, tmp274
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:951:       for (; __first != __last; ++__first)
	test	r8, r8	 # iftmp.38_76
	je	.L40	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:952: 	*__first = __tmp;
	xor	edx, edx	 #
	mov	rcx, rax	 #, <retval>
	call	memset	 #
.L40:
 # source/animal.cpp:65: 		for (size_t i = 0, j = 0, count = 0; j < size; i++, j++) {
	test	r15, r15	 # size
	je	.L38	 #,
	vmovss	xmm6, DWORD PTR .LC1[rip]	 # tmp262,
	mov	rbp, rsi	 # ivtmp.194, _72
 # source/animal.cpp:65: 		for (size_t i = 0, j = 0, count = 0; j < size; i++, j++) {
	xor	eax, eax	 # count
 # source/animal.cpp:65: 		for (size_t i = 0, j = 0, count = 0; j < size; i++, j++) {
	xor	ebx, ebx	 # j
	jmp	.L47	 #
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L85:
 # source/animal.cpp:67: 				new_buffer[j] = buffer[i];
	vmovss	DWORD PTR [r14+rbx*4], xmm0	 # *_36, _34
 # source/animal.cpp:65: 		for (size_t i = 0, j = 0, count = 0; j < size; i++, j++) {
	add	rbx, 1	 # j,
 # source/animal.cpp:68: 				count++;
	add	rax, 1	 # count,
 # source/animal.cpp:65: 		for (size_t i = 0, j = 0, count = 0; j < size; i++, j++) {
	add	rbp, 4	 # ivtmp.194,
	cmp	rbx, r15	 # j, size
	jnb	.L38	 #,
.L47:
 # source/animal.cpp:66: 			if (buffer[i] != END_OF_ROW) {
	vmovss	xmm0, DWORD PTR 0[rbp]	 # _34, MEM[(f32 *)_183]
 # source/animal.cpp:66: 			if (buffer[i] != END_OF_ROW) {
	vcomiss	xmm0, xmm6	 # _34, tmp262
	jne	.L85	 #,
 # source/animal.cpp:71: 				i32 diff = row_size - (u32)count;
	mov	r12d, edi	 # _38, row_size
	sub	r12d, eax	 # _38, count
 # source/animal.cpp:72: 				for (i32 k = 0; k < diff; k++)
	test	r12d, r12d	 # _38
	jle	.L46	 #,
 # source/animal.cpp:73: 					new_buffer[j + k] = 0;
	mov	eax, r12d	 # _269, _38
	lea	rcx, [r14+rbx*4]	 # _266,
	xor	edx, edx	 #
	lea	r8, 0[0+rax*4]	 #,
	call	memset	 #
.L46:
 # source/animal.cpp:75: 				j += diff - 1ll;
	movsx	r12, r12d	 # _43, _38
 # source/animal.cpp:74: 				count = 0;
	xor	eax, eax	 # count
 # source/animal.cpp:65: 		for (size_t i = 0, j = 0, count = 0; j < size; i++, j++) {
	add	rbp, 4	 # ivtmp.194,
 # source/animal.cpp:75: 				j += diff - 1ll;
	lea	rbx, -1[rbx+r12]	 # j,
 # source/animal.cpp:65: 		for (size_t i = 0, j = 0, count = 0; j < size; i++, j++) {
	add	rbx, 1	 # j,
 # source/animal.cpp:65: 		for (size_t i = 0, j = 0, count = 0; j < size; i++, j++) {
	cmp	rbx, r15	 # j, size
	jb	.L47	 #,
.L38:
 # source/animal.cpp:78: 		delete[] buffer;
	mov	rcx, rsi	 #, _72
	call	_ZdaPv	 #
 # source/animal.cpp:82: 	}
	mov	rax, r14	 #, <retval>
 # source/animal.cpp:79: 		m_w = row_size;
	vmovq	QWORD PTR 0[r13], xmm8	 # this_69(D)->m_w, _30
 # source/animal.cpp:80: 		m_h = num_rows;
	vmovq	QWORD PTR 8[r13], xmm7	 # this_69(D)->m_h, _29
 # source/animal.cpp:82: 	}
	vmovups	xmm6, XMMWORD PTR 48[rsp]	 #,
	vmovups	xmm7, XMMWORD PTR 64[rsp]	 #,
	vmovups	xmm8, XMMWORD PTR 80[rsp]	 #,
	add	rsp, 104	 #,
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
.L84:
	cmp	al, 111	 # _9,
	je	.L57	 #,
	jle	.L86	 #,
	sub	eax, 112	 # _171,
	cmp	al, 9	 # _171,
	ja	.L59	 #,
 # source/animal.cpp:45: 				num = (*str - 'p') * 24 + *(str + 1) - 'A' + 25;
	movsx	eax, BYTE PTR 1[rbx]	 # _185, MEM[(char *)str_103 + 1B]
 # source/animal.cpp:45: 				num = (*str - 'p') * 24 + *(str + 1) - 'A' + 25;
	lea	edx, -336[r8+r8*2]	 # _88,
 # source/animal.cpp:46: 				str++;
	add	rbx, 1	 # str,
 # source/animal.cpp:45: 				num = (*str - 'p') * 24 + *(str + 1) - 'A' + 25;
	lea	r8d, -40[rax+rdx*8]	 # num,
	.p2align 4
	.p2align 3
.L30:
 # source/animal.cpp:59: 				buffer[arr_len++] = num / 255.f;
	vcvtsi2ss	xmm0, xmm2, r8d	 # tmp276, tmp275, num
	mov	rax, rbx	 # str, str
	vmulss	xmm0, xmm0, xmm1	 # _276, _274, tmp268
.L50:
 # source/animal.cpp:59: 				buffer[arr_len++] = num / 255.f;
	mov	edx, r9d	 # _204, arr_len
 # source/animal.cpp:59: 				buffer[arr_len++] = num / 255.f;
	vmovss	DWORD PTR [rsi+rdx*4], xmm0	 # *_191, _276
 # source/animal.cpp:57: 			count = count ? count : 1;
	mov	edx, 1	 # count,
	jmp	.L32	 #
	.p2align 4,,10
	.p2align 3
.L28:
	sub	eax, 112	 # _293,
 # source/animal.cpp:42: 			while (isdigit(*str))
	xor	r8d, r8d	 # num
	cmp	al, 9	 # _293,
	ja	.L27	 #,
 # source/animal.cpp:45: 				num = (*str - 'p') * 24 + *(str + 1) - 'A' + 25;
	movsx	eax, BYTE PTR 1[rbx]	 # _18, MEM[(char *)str_101 + 1B]
 # source/animal.cpp:45: 				num = (*str - 'p') * 24 + *(str + 1) - 'A' + 25;
	lea	ecx, -336[rcx+rcx*2]	 # _16,
 # source/animal.cpp:46: 				str++;
	lea	rbx, 2[r12]	 # str,
 # source/animal.cpp:45: 				num = (*str - 'p') * 24 + *(str + 1) - 'A' + 25;
	lea	r8d, -40[rax+rcx*8]	 # num,
	jmp	.L27	 #
.L86:
	sub	eax, 65	 # _135,
 # source/animal.cpp:55: 				num = *str - 'A' + 1;
	sub	r8d, 64	 # num,
	cmp	al, 23	 # _135,
	jbe	.L30	 #,
.L59:
 # source/animal.cpp:42: 			while (isdigit(*str))
	mov	rax, rbx	 # str, str
	vxorps	xmm0, xmm0, xmm0	 # _276
	jmp	.L50	 #
.L57:
	mov	r8d, 255	 # num,
	jmp	.L30	 #
.L22:
 # source/animal.cpp:63: 		f32* new_buffer = new f32[size];
	xor	ecx, ecx	 #
	call	_Znay	 #
 # source/animal.cpp:62: 		size_t size = (size_t)num_rows * row_size;
	vpxor	xmm8, xmm8, xmm8	 # _30
 # source/animal.cpp:63: 		f32* new_buffer = new f32[size];
	mov	r14, rax	 # <retval>, tmp273
 # source/animal.cpp:62: 		size_t size = (size_t)num_rows * row_size;
	mov	eax, 1	 # _29,
	vmovq	xmm7, rax	 # _29, _29
	jmp	.L38	 #
.L39:
 # source/animal.cpp:63: 		f32* new_buffer = new f32[size];
	call	__cxa_throw_bad_array_new_length	 #
	nop	
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6307:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6307-.LLSDACSB6307
.LLSDACSB6307:
.LLSDACSE6307:
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
.LFB6309:
	push	rbx	 #
	.seh_pushreg	rbx
	sub	rsp, 80	 #,
	.seh_stackalloc	80
	vmovups	XMMWORD PTR 32[rsp], xmm6	 #,
	.seh_savexmm	xmm6, 32
	vmovups	XMMWORD PTR 48[rsp], xmm7	 #,
	.seh_savexmm	xmm7, 48
	vmovups	XMMWORD PTR 64[rsp], xmm8	 #,
	.seh_savexmm	xmm8, 64
	.seh_endprologue
 # source/animal.cpp:89: 		switch (m_kn) {
	mov	eax, DWORD PTR 212[rcx]	 # _1, this_41(D)->m_kn
 # source/animal.cpp:88: 	f32 Animal::ApplyKernelCore(const f32 r, const f32 q) const {
	vmovss	xmm7, xmm1, xmm1	 # r, tmp199
 # source/animal.cpp:89: 		switch (m_kn) {
	cmp	eax, 2	 # _1,
	je	.L88	 #,
	vxorps	xmm6, xmm6, xmm6	 # tmp205
	jg	.L89	 #,
	test	eax, eax	 # _1
	je	.L90	 #,
	cmp	eax, 1	 # _1,
	jne	.L92	 #,
 # source/animal.cpp:93: 				return (r > 0.f) * (r < 1.f) * (f32)exp(4.f - 1.f / (r * (1.f - r)));
	vmovss	xmm8, DWORD PTR .LC3[rip]	 # tmp156,
	vsubss	xmm0, xmm1, xmm8	 # _18, r, tmp156
 # source/animal.cpp:93: 				return (r > 0.f) * (r < 1.f) * (f32)exp(4.f - 1.f / (r * (1.f - r)));
	vmulss	xmm0, xmm0, xmm1	 # _19, _18, r
 # source/animal.cpp:93: 				return (r > 0.f) * (r < 1.f) * (f32)exp(4.f - 1.f / (r * (1.f - r)));
	vdivss	xmm0, xmm8, xmm0	 # _20, tmp156, _19
 # source/animal.cpp:93: 				return (r > 0.f) * (r < 1.f) * (f32)exp(4.f - 1.f / (r * (1.f - r)));
	vaddss	xmm0, xmm0, DWORD PTR .LC4[rip]	 # _21, _20,
 # source/animal.cpp:93: 				return (r > 0.f) * (r < 1.f) * (f32)exp(4.f - 1.f / (r * (1.f - r)));
	call	expf	 #
	vmovss	xmm1, xmm0, xmm0	 # tmp201,
 # source/animal.cpp:93: 				return (r > 0.f) * (r < 1.f) * (f32)exp(4.f - 1.f / (r * (1.f - r)));
	vxorps	xmm0, xmm0, xmm0	 # tmp164
	vcomiss	xmm7, xmm0	 # r, tmp164
	seta	dl	 #, _13
	vcomiss	xmm8, xmm7	 # tmp156, r
.L105:
 # source/animal.cpp:97: 				return (r > 0.f) * (r < 1.f) * (f32)exp(-(f32)pow(((r - .5f) / .15f), 2.f) / 2.f);
	seta	al	 #, _26
	movzx	eax, al	 # _26, _26
	and	eax, edx	 # _27, _24
 # source/animal.cpp:97: 				return (r > 0.f) * (r < 1.f) * (f32)exp(-(f32)pow(((r - .5f) / .15f), 2.f) / 2.f);
	vcvtsi2ss	xmm0, xmm6, eax	 # tmp208, tmp205, _27
 # source/animal.cpp:97: 				return (r > 0.f) * (r < 1.f) * (f32)exp(-(f32)pow(((r - .5f) / .15f), 2.f) / 2.f);
	vmulss	xmm0, xmm0, xmm1	 # <retval>, _28, tmp202
.L87:
 # source/animal.cpp:102: 	}
	vmovups	xmm6, XMMWORD PTR 32[rsp]	 #,
	vmovups	xmm7, XMMWORD PTR 48[rsp]	 #,
	vmovups	xmm8, XMMWORD PTR 64[rsp]	 #,
	add	rsp, 80	 #,
	pop	rbx	 #
	ret	
	.p2align 4,,10
	.p2align 3
.L89:
 # source/animal.cpp:89: 		switch (m_kn) {
	cmp	eax, 3	 # _1,
	jne	.L92	 #,
 # source/animal.cpp:97: 				return (r > 0.f) * (r < 1.f) * (f32)exp(-(f32)pow(((r - .5f) / .15f), 2.f) / 2.f);
	vsubss	xmm0, xmm1, DWORD PTR .LC5[rip]	 # _29, r,
 # source/animal.cpp:97: 				return (r > 0.f) * (r < 1.f) * (f32)exp(-(f32)pow(((r - .5f) / .15f), 2.f) / 2.f);
	vmulss	xmm0, xmm0, DWORD PTR .LC6[rip]	 # _30, _29,
 # source/animal.cpp:97: 				return (r > 0.f) * (r < 1.f) * (f32)exp(-(f32)pow(((r - .5f) / .15f), 2.f) / 2.f);
	vmulss	xmm0, xmm0, xmm0	 # _63, _30, _30
	vmulss	xmm0, xmm0, DWORD PTR .LC7[rip]	 # _35, _63,
	call	expf	 #
	vmovss	xmm1, xmm0, xmm0	 # tmp202,
 # source/animal.cpp:97: 				return (r > 0.f) * (r < 1.f) * (f32)exp(-(f32)pow(((r - .5f) / .15f), 2.f) / 2.f);
	vxorps	xmm0, xmm0, xmm0	 # tmp182
	vcomiss	xmm7, xmm0	 # r, tmp182
	vmovss	xmm0, DWORD PTR .LC3[rip]	 # tmp186,
	seta	dl	 #, _24
	vcomiss	xmm0, xmm7	 # tmp186, r
	jmp	.L105	 #
	.p2align 4,,10
	.p2align 3
.L88:
 # source/animal.cpp:95: 				return f32(r >= q) * (r <= 1.f - q);
	vcomiss	xmm1, xmm2	 # r, q
	jnb	.L106	 #,
	vmovss	xmm1, DWORD PTR .LC3[rip]	 # tmp195,
 # source/animal.cpp:95: 				return f32(r >= q) * (r <= 1.f - q);
	vxorps	xmm0, xmm0, xmm0	 # <retval>
.L95:
 # source/animal.cpp:95: 				return f32(r >= q) * (r <= 1.f - q);
	vsubss	xmm1, xmm1, xmm2	 # _23, tmp195, q
	vcmpless	xmm7, xmm7, xmm1	 #, tmp197, r, _23
	vxorps	xmm1, xmm1, xmm1	 # tmp196
	vblendvps	xmm0, xmm1, xmm0, xmm7	 # <retval>, tmp196, <retval>, tmp197
	jmp	.L87	 #
	.p2align 4,,10
	.p2align 3
.L90:
 # source/animal.cpp:91: 				return (r > 0.f) * (r < 1.f) * (f32)pow(4.f * r * (1.f - r), 4.f);
	vmovss	xmm0, DWORD PTR .LC3[rip]	 # tmp139,
 # source/animal.cpp:91: 				return (r > 0.f) * (r < 1.f) * (f32)pow(4.f * r * (1.f - r), 4.f);
	vmulss	xmm2, xmm7, DWORD PTR .LC4[rip]	 # _54, r,
 # source/animal.cpp:91: 				return (r > 0.f) * (r < 1.f) * (f32)pow(4.f * r * (1.f - r), 4.f);
	vsubss	xmm1, xmm0, xmm1	 # _7, tmp139, r
 # source/animal.cpp:91: 				return (r > 0.f) * (r < 1.f) * (f32)pow(4.f * r * (1.f - r), 4.f);
	vmulss	xmm1, xmm1, xmm2	 # _9, _7, _54
 # source/animal.cpp:91: 				return (r > 0.f) * (r < 1.f) * (f32)pow(4.f * r * (1.f - r), 4.f);
	vxorps	xmm2, xmm2, xmm2	 # tmp145
	vcomiss	xmm7, xmm2	 # r, tmp145
	seta	dl	 #, _2
	xor	eax, eax	 # _4
 # source/animal.cpp:91: 				return (r > 0.f) * (r < 1.f) * (f32)pow(4.f * r * (1.f - r), 4.f);
	vcvtss2sd	xmm1, xmm1, xmm1	 # _10, _9
	vmulsd	xmm1, xmm1, xmm1	 # powmult_8, _10, _10
 # source/animal.cpp:91: 				return (r > 0.f) * (r < 1.f) * (f32)pow(4.f * r * (1.f - r), 4.f);
	vcomiss	xmm0, xmm7	 # tmp139, r
	seta	al	 #, _4
	and	eax, edx	 # _5, _2
 # source/animal.cpp:91: 				return (r > 0.f) * (r < 1.f) * (f32)pow(4.f * r * (1.f - r), 4.f);
	vmulsd	xmm1, xmm1, xmm1	 # powmult_53, powmult_8, powmult_8
 # source/animal.cpp:91: 				return (r > 0.f) * (r < 1.f) * (f32)pow(4.f * r * (1.f - r), 4.f);
	vcvtsi2ss	xmm0, xmm6, eax	 # tmp206, tmp205, _5
 # source/animal.cpp:91: 				return (r > 0.f) * (r < 1.f) * (f32)pow(4.f * r * (1.f - r), 4.f);
	vcvtsd2ss	xmm1, xmm1, xmm1	 # _12, powmult_53
 # source/animal.cpp:91: 				return (r > 0.f) * (r < 1.f) * (f32)pow(4.f * r * (1.f - r), 4.f);
	vmulss	xmm0, xmm0, xmm1	 # <retval>, _6, _12
 # source/animal.cpp:91: 				return (r > 0.f) * (r < 1.f) * (f32)pow(4.f * r * (1.f - r), 4.f);
	jmp	.L87	 #
	.p2align 4,,10
	.p2align 3
.L106:
 # source/animal.cpp:95: 				return f32(r >= q) * (r <= 1.f - q);
	vmovss	xmm1, DWORD PTR .LC3[rip]	 # tmp195,
	vmovss	xmm0, xmm1, xmm1	 # <retval>, tmp195
	jmp	.L95	 #
.L92:
 # source/animal.cpp:99: 				throw std::runtime_error("Invalid KernelCore");
	mov	ecx, 16	 #,
	call	__cxa_allocate_exception	 #
 # source/animal.cpp:99: 				throw std::runtime_error("Invalid KernelCore");
	lea	rdx, .LC8[rip]	 # tmp191,
	mov	rcx, rax	 #, _49
 # source/animal.cpp:99: 				throw std::runtime_error("Invalid KernelCore");
	mov	rbx, rax	 # _49, tmp203
.LEHB0:
 # source/animal.cpp:99: 				throw std::runtime_error("Invalid KernelCore");
	call	_ZNSt13runtime_errorC1EPKc	 #
.LEHE0:
 # source/animal.cpp:99: 				throw std::runtime_error("Invalid KernelCore");
	lea	r8, _ZNSt13runtime_errorD1Ev[rip]	 #,
	lea	rdx, _ZTISt13runtime_error[rip]	 # tmp192,
	mov	rcx, rbx	 #, _49
.LEHB1:
	call	__cxa_throw	 #
.L102:
 # source/animal.cpp:99: 				throw std::runtime_error("Invalid KernelCore");
	mov	rcx, rbx	 #, _49
	vmovq	xmm6, rax	 # tmp194, tmp204
	vzeroupper
	call	__cxa_free_exception	 #
	vmovq	rcx, xmm6	 #, tmp194
	call	_Unwind_Resume	 #
	nop	
.LEHE1:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6309:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6309-.LLSDACSB6309
.LLSDACSB6309:
	.uleb128 .LEHB0-.LFB6309
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L102-.LFB6309
	.uleb128 0
	.uleb128 .LEHB1-.LFB6309
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE6309:
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
.LFB6310:
	push	rsi	 #
	.seh_pushreg	rsi
	push	rbx	 #
	.seh_pushreg	rbx
	sub	rsp, 40	 #,
	.seh_stackalloc	40
	.seh_endprologue
 # source/animal.cpp:105: 		switch (m_gn) {
	mov	eax, DWORD PTR 216[rcx]	 # _1, this_35(D)->m_gn
 # source/animal.cpp:105: 		switch (m_gn) {
	cmp	eax, 1	 # _1,
	je	.L108	 #,
	cmp	eax, 2	 # _1,
	jne	.L119	 #,
 # source/animal.cpp:111: 			return std::fabs(n - m_mu) * 2.f - 1.f;
	vsubss	xmm1, xmm1, DWORD PTR 204[rcx]	 # _30, n, this_35(D)->m_mu
 # source/animal.cpp:111: 			return std::fabs(n - m_mu) * 2.f - 1.f;
	vmovss	xmm4, DWORD PTR .LC1[rip]	 # tmp166,
 # C:/msys64/mingw64/include/c++/14.2.0/cmath:239:   { return __builtin_fabsf(__x); }
	vandps	xmm0, xmm1, XMMWORD PTR .LC11[rip]	 # _45, _30,
 # source/animal.cpp:111: 			return std::fabs(n - m_mu) * 2.f - 1.f;
	vfmadd132ss	xmm0, xmm4, DWORD PTR .LC10[rip]	 # <retval>, tmp166,
 # source/animal.cpp:115: 	}
	add	rsp, 40	 #,
	pop	rbx	 #
	pop	rsi	 #
	ret	
	.p2align 4,,10
	.p2align 3
.L119:
 # source/animal.cpp:105: 		switch (m_gn) {
	test	eax, eax	 # _1
	jne	.L110	 #,
 # source/animal.cpp:107: 			return (f32)pow(std::max(0.f, 1.f - (f32)pow(n - m_mu, 2.f) / (9.f * m_sigma * m_sigma)), 4.f) * 2.f - 1.f;
	vsubss	xmm1, xmm1, DWORD PTR 204[rcx]	 # _3, n, this_35(D)->m_mu
 # source/animal.cpp:107: 			return (f32)pow(std::max(0.f, 1.f - (f32)pow(n - m_mu, 2.f) / (9.f * m_sigma * m_sigma)), 4.f) * 2.f - 1.f;
	vmovss	xmm0, DWORD PTR 208[rcx]	 # _8, this_35(D)->m_sigma
 # source/animal.cpp:107: 			return (f32)pow(std::max(0.f, 1.f - (f32)pow(n - m_mu, 2.f) / (9.f * m_sigma * m_sigma)), 4.f) * 2.f - 1.f;
	vmulss	xmm0, xmm0, xmm0	 # powmult_9, _8, _8
 # source/animal.cpp:107: 			return (f32)pow(std::max(0.f, 1.f - (f32)pow(n - m_mu, 2.f) / (9.f * m_sigma * m_sigma)), 4.f) * 2.f - 1.f;
	vmulss	xmm1, xmm1, xmm1	 # _54, _3, _3
	vmulss	xmm1, xmm1, DWORD PTR .LC9[rip]	 # _7, _54,
	vdivss	xmm1, xmm1, xmm0	 # _10, _7, powmult_9
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:262:       if (__a < __b)
	vmovss	xmm0, DWORD PTR .LC3[rip]	 # tmp131,
	vcomiss	xmm0, xmm1	 # tmp131, _10
	ja	.L120	 #,
	vmovss	xmm0, DWORD PTR .LC1[rip]	 # <retval>,
 # source/animal.cpp:115: 	}
	add	rsp, 40	 #,
	pop	rbx	 #
	pop	rsi	 #
	ret	
	.p2align 4,,10
	.p2align 3
.L108:
 # source/animal.cpp:109: 			return (f32)exp(-(f32)pow(n - m_mu, 2.f) / (2.f * m_sigma * m_sigma)) * 2.f - 1.f;
	vsubss	xmm1, xmm1, DWORD PTR 204[rcx]	 # _18, n, this_35(D)->m_mu
 # source/animal.cpp:109: 			return (f32)exp(-(f32)pow(n - m_mu, 2.f) / (2.f * m_sigma * m_sigma)) * 2.f - 1.f;
	vmovss	xmm2, DWORD PTR 208[rcx]	 # _24, this_35(D)->m_sigma
 # source/animal.cpp:109: 			return (f32)exp(-(f32)pow(n - m_mu, 2.f) / (2.f * m_sigma * m_sigma)) * 2.f - 1.f;
	vmulss	xmm2, xmm2, xmm2	 # powmult_49, _24, _24
 # source/animal.cpp:109: 			return (f32)exp(-(f32)pow(n - m_mu, 2.f) / (2.f * m_sigma * m_sigma)) * 2.f - 1.f;
	vmulss	xmm1, xmm1, xmm1	 # _12, _18, _18
	vmulss	xmm0, xmm1, DWORD PTR .LC7[rip]	 # _23, _12,
 # source/animal.cpp:109: 			return (f32)exp(-(f32)pow(n - m_mu, 2.f) / (2.f * m_sigma * m_sigma)) * 2.f - 1.f;
	vdivss	xmm0, xmm0, xmm2	 # _26, _23, powmult_49
	call	expf	 #
 # source/animal.cpp:109: 			return (f32)exp(-(f32)pow(n - m_mu, 2.f) / (2.f * m_sigma * m_sigma)) * 2.f - 1.f;
	vmovss	xmm3, DWORD PTR .LC1[rip]	 # tmp165,
	vfmadd132ss	xmm0, xmm3, DWORD PTR .LC10[rip]	 # <retval>, tmp165,
 # source/animal.cpp:115: 	}
	add	rsp, 40	 #,
	pop	rbx	 #
	pop	rsi	 #
	ret	
	.p2align 4,,10
	.p2align 3
.L120:
 # source/animal.cpp:107: 			return (f32)pow(std::max(0.f, 1.f - (f32)pow(n - m_mu, 2.f) / (9.f * m_sigma * m_sigma)), 4.f) * 2.f - 1.f;
	vmovss	xmm5, DWORD PTR .LC1[rip]	 # tmp164,
 # source/animal.cpp:107: 			return (f32)pow(std::max(0.f, 1.f - (f32)pow(n - m_mu, 2.f) / (9.f * m_sigma * m_sigma)), 4.f) * 2.f - 1.f;
	vsubss	xmm0, xmm0, xmm1	 # _11, tmp131, _10
 # source/animal.cpp:107: 			return (f32)pow(std::max(0.f, 1.f - (f32)pow(n - m_mu, 2.f) / (9.f * m_sigma * m_sigma)), 4.f) * 2.f - 1.f;
	vcvtss2sd	xmm0, xmm0, xmm0	 # _55, _11
	vmulsd	xmm0, xmm0, xmm0	 # _57, _55, _55
	vmulsd	xmm0, xmm0, xmm0	 # _59, _57, _57
 # source/animal.cpp:107: 			return (f32)pow(std::max(0.f, 1.f - (f32)pow(n - m_mu, 2.f) / (9.f * m_sigma * m_sigma)), 4.f) * 2.f - 1.f;
	vcvtsd2ss	xmm0, xmm0, xmm0	 # _61, _59
 # source/animal.cpp:107: 			return (f32)pow(std::max(0.f, 1.f - (f32)pow(n - m_mu, 2.f) / (9.f * m_sigma * m_sigma)), 4.f) * 2.f - 1.f;
	vfmadd132ss	xmm0, xmm5, DWORD PTR .LC10[rip]	 # <retval>, tmp164,
 # source/animal.cpp:115: 	}
	add	rsp, 40	 #,
	pop	rbx	 #
	pop	rsi	 #
	ret	
.L110:
 # source/animal.cpp:113: 			throw std::runtime_error("Invalid GrowthFunction");
	mov	ecx, 16	 #,
	call	__cxa_allocate_exception	 #
 # source/animal.cpp:113: 			throw std::runtime_error("Invalid GrowthFunction");
	lea	rdx, .LC12[rip]	 # tmp151,
	mov	rcx, rax	 #, _41
 # source/animal.cpp:113: 			throw std::runtime_error("Invalid GrowthFunction");
	mov	rbx, rax	 # _41, tmp158
.LEHB2:
 # source/animal.cpp:113: 			throw std::runtime_error("Invalid GrowthFunction");
	call	_ZNSt13runtime_errorC1EPKc	 #
.LEHE2:
 # source/animal.cpp:113: 			throw std::runtime_error("Invalid GrowthFunction");
	lea	r8, _ZNSt13runtime_errorD1Ev[rip]	 #,
	lea	rdx, _ZTISt13runtime_error[rip]	 # tmp152,
	mov	rcx, rbx	 #, _41
.LEHB3:
	call	__cxa_throw	 #
.L116:
 # source/animal.cpp:113: 			throw std::runtime_error("Invalid GrowthFunction");
	mov	rsi, rax	 # tmp154, tmp159
	mov	rcx, rbx	 #, _41
	vzeroupper
	call	__cxa_free_exception	 #
	mov	rcx, rsi	 #, tmp154
	call	_Unwind_Resume	 #
	nop	
.LEHE3:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6310:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6310-.LLSDACSB6310
.LLSDACSB6310:
	.uleb128 .LEHB2-.LFB6310
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L116-.LFB6310
	.uleb128 0
	.uleb128 .LEHB3-.LFB6310
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE6310:
	.text
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZNK5Lenia6Animal16ApplyKernelShellEf
	.def	_ZNK5Lenia6Animal16ApplyKernelShellEf;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK5Lenia6Animal16ApplyKernelShellEf
_ZNK5Lenia6Animal16ApplyKernelShellEf:
.LFB6311:
	push	rsi	 #
	.seh_pushreg	rsi
	push	rbx	 #
	.seh_pushreg	rbx
	sub	rsp, 136	 #,
	.seh_stackalloc	136
	vmovups	XMMWORD PTR 48[rsp], xmm6	 #,
	.seh_savexmm	xmm6, 48
	vmovups	XMMWORD PTR 64[rsp], xmm7	 #,
	.seh_savexmm	xmm7, 64
	vmovups	XMMWORD PTR 80[rsp], xmm8	 #,
	.seh_savexmm	xmm8, 80
	vmovups	XMMWORD PTR 96[rsp], xmm9	 #,
	.seh_savexmm	xmm9, 96
	vmovups	XMMWORD PTR 112[rsp], xmm10	 #,
	.seh_savexmm	xmm10, 112
	.seh_endprologue
	vxorps	xmm7, xmm7, xmm7	 # tmp246
 # source/animal.cpp:118: 		const f32 Br = m_b * (r / (f32)m_r);
	movzx	eax, BYTE PTR 200[rcx]	 # _2, this_20(D)->m_b
 # source/animal.cpp:118: 		const f32 Br = m_b * (r / (f32)m_r);
	vcvtsi2ss	xmm0, xmm7, eax	 # tmp248, tmp246, _2
 # source/animal.cpp:119: 		const i32 floored = std::min(static_cast<i32>(floor(Br)), m_b-1);
	sub	eax, 1	 # _7,
 # source/animal.cpp:118: 		const f32 Br = m_b * (r / (f32)m_r);
	vcvtusi2ss	xmm10, xmm7, QWORD PTR 176[rcx]	 # tmp247, tmp246, this_20(D)->m_r
 # source/animal.cpp:120: 		const f32 Kc = ApplyKernelCore(std::min(fmodf(Br, 1.0), 1.f));
	fld1	
 # source/animal.cpp:117: 	f32 Animal::ApplyKernelShell(const f32 r) const {
	vmovss	xmm8, xmm1, xmm1	 # r, tmp241
	mov	rsi, rcx	 # this, tmp240
 # source/animal.cpp:118: 		const f32 Br = m_b * (r / (f32)m_r);
	vdivss	xmm1, xmm1, xmm10	 # _6, r, _5
 # source/animal.cpp:118: 		const f32 Br = m_b * (r / (f32)m_r);
	vmulss	xmm2, xmm0, xmm1	 # Br, _3, _6
 # source/animal.cpp:119: 		const i32 floored = std::min(static_cast<i32>(floor(Br)), m_b-1);
	vrndscaless	xmm0, xmm2, xmm2, 9	 # tmp158,,
	vcvttss2si	edx, xmm0	 # _8, tmp158
 # source/animal.cpp:118: 		const f32 Br = m_b * (r / (f32)m_r);
	vmovss	DWORD PTR 44[rsp], xmm2	 # %sfp, Br
 # source/animal.cpp:120: 		const f32 Kc = ApplyKernelCore(std::min(fmodf(Br, 1.0), 1.f));
	fld	DWORD PTR 44[rsp]	 # %sfp
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:238:       if (__b < __a)
	cmp	eax, edx	 # _7, _8
	mov	ebx, edx	 # _8, _8
	cmovle	ebx, eax	 # _7,, _8
.L122:
 # source/animal.cpp:120: 		const f32 Kc = ApplyKernelCore(std::min(fmodf(Br, 1.0), 1.f));
	fprem	
	fnstsw	ax	 # tmp162
	test	ah, 4	 # tmp162,
	jne	.L122	 #,
	fstp	st(1)		 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:238:       if (__b < __a)
	vmovss	xmm9, DWORD PTR .LC3[rip]	 # iftmp.42_18,
 # source/animal.cpp:120: 		const f32 Kc = ApplyKernelCore(std::min(fmodf(Br, 1.0), 1.f));
	fstp	DWORD PTR 44[rsp]	 # %sfp
 # source/animal.cpp:89: 		switch (m_kn) {
	mov	eax, DWORD PTR 212[rsi]	 # _30, this_20(D)->m_kn
 # source/animal.cpp:120: 		const f32 Kc = ApplyKernelCore(std::min(fmodf(Br, 1.0), 1.f));
	vmovss	xmm6, DWORD PTR 44[rsp]	 # _9, %sfp
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:238:       if (__b < __a)
	vminss	xmm6, xmm6, xmm9	 # _23, _9, iftmp.42_18
 # source/animal.cpp:89: 		switch (m_kn) {
	cmp	eax, 2	 # _30,
	je	.L123	 #,
	jg	.L124	 #,
	test	eax, eax	 # _30
	je	.L125	 #,
	cmp	eax, 1	 # _30,
	jne	.L127	 #,
 # source/animal.cpp:93: 				return (r > 0.f) * (r < 1.f) * (f32)exp(4.f - 1.f / (r * (1.f - r)));
	vsubss	xmm0, xmm6, xmm9	 # _48, _23, iftmp.42_18
 # source/animal.cpp:93: 				return (r > 0.f) * (r < 1.f) * (f32)exp(4.f - 1.f / (r * (1.f - r)));
	vmulss	xmm0, xmm0, xmm6	 # _49, _48, _23
 # source/animal.cpp:93: 				return (r > 0.f) * (r < 1.f) * (f32)exp(4.f - 1.f / (r * (1.f - r)));
	vdivss	xmm0, xmm9, xmm0	 # _50, iftmp.42_18, _49
 # source/animal.cpp:93: 				return (r > 0.f) * (r < 1.f) * (f32)exp(4.f - 1.f / (r * (1.f - r)));
	vaddss	xmm0, xmm0, DWORD PTR .LC4[rip]	 # _51, _50,
.L144:
 # source/animal.cpp:97: 				return (r > 0.f) * (r < 1.f) * (f32)exp(-(f32)pow(((r - .5f) / .15f), 2.f) / 2.f);
	call	expf	 #
	vmovss	xmm1, xmm0, xmm0	 # tmp243,
 # source/animal.cpp:97: 				return (r > 0.f) * (r < 1.f) * (f32)exp(-(f32)pow(((r - .5f) / .15f), 2.f) / 2.f);
	vxorps	xmm0, xmm0, xmm0	 # tmp207
	vcomiss	xmm6, xmm0	 # _23, tmp207
	seta	dl	 #, _58
	xor	eax, eax	 # _60
	vcomiss	xmm9, xmm6	 # iftmp.42_18, _23
	seta	al	 #, _60
	and	eax, edx	 # _61, _58
 # source/animal.cpp:97: 				return (r > 0.f) * (r < 1.f) * (f32)exp(-(f32)pow(((r - .5f) / .15f), 2.f) / 2.f);
	vcvtsi2ss	xmm0, xmm7, eax	 # tmp251, tmp246, _61
 # source/animal.cpp:97: 				return (r > 0.f) * (r < 1.f) * (f32)exp(-(f32)pow(((r - .5f) / .15f), 2.f) / 2.f);
	vmulss	xmm0, xmm0, xmm1	 # _42, _62, tmp243
.L129:
 # source/animal.cpp:121: 		return (r < m_r) * m_beta[floored] * Kc;
	mov	rdx, QWORD PTR 192[rsi]	 # this_20(D)->m_beta, this_20(D)->m_beta
 # source/animal.cpp:121: 		return (r < m_r) * m_beta[floored] * Kc;
	movsx	rbx, ebx	 # _13, _24
 # source/animal.cpp:121: 		return (r < m_r) * m_beta[floored] * Kc;
	vcmpltss	xmm8, xmm8, xmm10	 #, tmp232, r, _5
	vxorps	xmm1, xmm1, xmm1	 # tmp231
 # source/animal.cpp:122: 	}
	vmovups	xmm6, XMMWORD PTR 48[rsp]	 #,
	vmovups	xmm7, XMMWORD PTR 64[rsp]	 #,
 # source/animal.cpp:121: 		return (r < m_r) * m_beta[floored] * Kc;
	vmulss	xmm0, xmm0, DWORD PTR [rdx+rbx*4]	 # _55, _42, *_15
 # source/animal.cpp:122: 	}
	vmovups	xmm10, XMMWORD PTR 112[rsp]	 #,
 # source/animal.cpp:121: 		return (r < m_r) * m_beta[floored] * Kc;
	vblendvps	xmm1, xmm1, xmm9, xmm8	 # iftmp.42_18, tmp231, iftmp.42_18, tmp232
 # source/animal.cpp:122: 	}
	vmovups	xmm8, XMMWORD PTR 80[rsp]	 #,
	vmovups	xmm9, XMMWORD PTR 96[rsp]	 #,
 # source/animal.cpp:121: 		return (r < m_r) * m_beta[floored] * Kc;
	vmulss	xmm0, xmm0, xmm1	 # _29, _55, iftmp.42_18
 # source/animal.cpp:122: 	}
	add	rsp, 136	 #,
	pop	rbx	 #
	pop	rsi	 #
	ret	
	.p2align 4,,10
	.p2align 3
.L124:
 # source/animal.cpp:89: 		switch (m_kn) {
	cmp	eax, 3	 # _30,
	jne	.L127	 #,
 # source/animal.cpp:97: 				return (r > 0.f) * (r < 1.f) * (f32)exp(-(f32)pow(((r - .5f) / .15f), 2.f) / 2.f);
	vsubss	xmm0, xmm6, DWORD PTR .LC5[rip]	 # _63, _23,
 # source/animal.cpp:97: 				return (r > 0.f) * (r < 1.f) * (f32)exp(-(f32)pow(((r - .5f) / .15f), 2.f) / 2.f);
	vmulss	xmm0, xmm0, DWORD PTR .LC6[rip]	 # _64, _63,
 # source/animal.cpp:97: 				return (r > 0.f) * (r < 1.f) * (f32)exp(-(f32)pow(((r - .5f) / .15f), 2.f) / 2.f);
	vmulss	xmm0, xmm0, xmm0	 # _84, _64, _64
	vmulss	xmm0, xmm0, DWORD PTR .LC7[rip]	 # _69, _84,
	jmp	.L144	 #
	.p2align 4,,10
	.p2align 3
.L123:
 # source/animal.cpp:95: 				return f32(r >= q) * (r <= 1.f - q);
	vcomiss	xmm6, DWORD PTR .LC14[rip]	 # _23,
	jb	.L142	 #,
 # source/animal.cpp:95: 				return f32(r >= q) * (r <= 1.f - q);
	vmovss	xmm0, DWORD PTR .LC15[rip]	 # tmp198,
	vcomiss	xmm0, xmm6	 # tmp198, _23
	jnb	.L136	 #,
.L142:
	vxorps	xmm0, xmm0, xmm0	 # _42
	jmp	.L129	 #
	.p2align 4,,10
	.p2align 3
.L125:
 # source/animal.cpp:91: 				return (r > 0.f) * (r < 1.f) * (f32)pow(4.f * r * (1.f - r), 4.f);
	vmulss	xmm0, xmm6, DWORD PTR .LC4[rip]	 # _80, _23,
 # source/animal.cpp:91: 				return (r > 0.f) * (r < 1.f) * (f32)pow(4.f * r * (1.f - r), 4.f);
	vsubss	xmm1, xmm9, xmm6	 # _36, iftmp.42_18, _23
 # source/animal.cpp:91: 				return (r > 0.f) * (r < 1.f) * (f32)pow(4.f * r * (1.f - r), 4.f);
	vmulss	xmm1, xmm1, xmm0	 # _38, _36, _80
 # source/animal.cpp:91: 				return (r > 0.f) * (r < 1.f) * (f32)pow(4.f * r * (1.f - r), 4.f);
	vxorps	xmm0, xmm0, xmm0	 # tmp171
	vcomiss	xmm6, xmm0	 # _23, tmp171
	seta	dl	 #, _31
	xor	eax, eax	 # _33
 # source/animal.cpp:91: 				return (r > 0.f) * (r < 1.f) * (f32)pow(4.f * r * (1.f - r), 4.f);
	vcvtss2sd	xmm1, xmm1, xmm1	 # _39, _38
	vmulsd	xmm1, xmm1, xmm1	 # powmult_37, _39, _39
 # source/animal.cpp:91: 				return (r > 0.f) * (r < 1.f) * (f32)pow(4.f * r * (1.f - r), 4.f);
	vcomiss	xmm9, xmm6	 # iftmp.42_18, _23
	seta	al	 #, _33
	and	eax, edx	 # _34, _31
 # source/animal.cpp:91: 				return (r > 0.f) * (r < 1.f) * (f32)pow(4.f * r * (1.f - r), 4.f);
	vmulsd	xmm1, xmm1, xmm1	 # powmult_79, powmult_37, powmult_37
 # source/animal.cpp:91: 				return (r > 0.f) * (r < 1.f) * (f32)pow(4.f * r * (1.f - r), 4.f);
	vcvtsi2ss	xmm0, xmm7, eax	 # tmp249, tmp246, _34
 # source/animal.cpp:91: 				return (r > 0.f) * (r < 1.f) * (f32)pow(4.f * r * (1.f - r), 4.f);
	vcvtsd2ss	xmm1, xmm1, xmm1	 # _41, powmult_79
 # source/animal.cpp:91: 				return (r > 0.f) * (r < 1.f) * (f32)pow(4.f * r * (1.f - r), 4.f);
	vmulss	xmm0, xmm0, xmm1	 # _42, _35, _41
 # source/animal.cpp:91: 				return (r > 0.f) * (r < 1.f) * (f32)pow(4.f * r * (1.f - r), 4.f);
	jmp	.L129	 #
.L136:
	vmovss	xmm0, xmm9, xmm9	 # _42, iftmp.42_18
 # source/animal.cpp:95: 				return f32(r >= q) * (r <= 1.f - q);
	jmp	.L129	 #
.L127:
 # source/animal.cpp:99: 				throw std::runtime_error("Invalid KernelCore");
	mov	ecx, 16	 #,
	call	__cxa_allocate_exception	 #
 # source/animal.cpp:99: 				throw std::runtime_error("Invalid KernelCore");
	lea	rdx, .LC8[rip]	 # tmp216,
	mov	rcx, rax	 #, _72
 # source/animal.cpp:99: 				throw std::runtime_error("Invalid KernelCore");
	mov	rbx, rax	 # _72, tmp244
.LEHB4:
 # source/animal.cpp:99: 				throw std::runtime_error("Invalid KernelCore");
	call	_ZNSt13runtime_errorC1EPKc	 #
.LEHE4:
 # source/animal.cpp:99: 				throw std::runtime_error("Invalid KernelCore");
	lea	r8, _ZNSt13runtime_errorD1Ev[rip]	 #,
	lea	rdx, _ZTISt13runtime_error[rip]	 # tmp217,
	mov	rcx, rbx	 #, _72
.LEHB5:
	call	__cxa_throw	 #
.L138:
 # source/animal.cpp:99: 				throw std::runtime_error("Invalid KernelCore");
	mov	rsi, rax	 # tmp218, tmp245
	mov	rcx, rbx	 #, _72
	vzeroupper
	call	__cxa_free_exception	 #
	mov	rcx, rsi	 #, tmp218
	call	_Unwind_Resume	 #
	nop	
.LEHE5:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6311:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6311-.LLSDACSB6311
.LLSDACSB6311:
	.uleb128 .LEHB4-.LFB6311
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L138-.LFB6311
	.uleb128 0
	.uleb128 .LEHB5-.LFB6311
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE6311:
	.text
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZNK5Lenia6Animal13NormalizationEv
	.def	_ZNK5Lenia6Animal13NormalizationEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK5Lenia6Animal13NormalizationEv
_ZNK5Lenia6Animal13NormalizationEv:
.LFB6312:
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
	sub	rsp, 144	 #,
	.seh_stackalloc	144
	vmovups	XMMWORD PTR 48[rsp], xmm6	 #,
	.seh_savexmm	xmm6, 48
	vmovups	XMMWORD PTR 64[rsp], xmm7	 #,
	.seh_savexmm	xmm7, 64
	vmovups	XMMWORD PTR 80[rsp], xmm8	 #,
	.seh_savexmm	xmm8, 80
	vmovups	XMMWORD PTR 96[rsp], xmm9	 #,
	.seh_savexmm	xmm9, 96
	vmovups	XMMWORD PTR 112[rsp], xmm10	 #,
	.seh_savexmm	xmm10, 112
	vmovups	XMMWORD PTR 128[rsp], xmm11	 #,
	.seh_savexmm	xmm11, 128
	.seh_endprologue
 # source/animal.cpp:125: 		f32 normalization = 0;
	vxorps	xmm7, xmm7, xmm7	 # normalization
 # source/animal.cpp:126: 		i16 iR = (i16)m_r;
	mov	rax, QWORD PTR 176[rcx]	 # _1, this_28(D)->m_r
 # source/animal.cpp:127: 		for (i16 i = -iR; i <= iR; i++)
	mov	esi, eax	 # i, _1
 # source/animal.cpp:126: 		i16 iR = (i16)m_r;
	mov	r12d, eax	 # iR, _1
 # source/animal.cpp:127: 		for (i16 i = -iR; i <= iR; i++)
	neg	esi	 # i
 # source/animal.cpp:124: 	f32 Animal::Normalization() const {
	mov	r14, rcx	 # this, tmp178
 # source/animal.cpp:127: 		for (i16 i = -iR; i <= iR; i++)
	mov	ebp, esi	 # i, i
 # source/animal.cpp:127: 		for (i16 i = -iR; i <= iR; i++)
	cmp	ax, si	 # _1, i
	jl	.L147	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:238:       if (__b < __a)
	vmovss	xmm8, DWORD PTR .LC3[rip]	 # tmp174,
	vxorps	xmm10, xmm10, xmm10	 # tmp180
 # source/animal.cpp:120: 		const f32 Kc = ApplyKernelCore(std::min(fmodf(Br, 1.0), 1.f));
	vmovss	xmm9, DWORD PTR .LC14[rip]	 # tmp175,
	.p2align 4
	.p2align 3
.L146:
	movsx	r13d, bp	 # _60, i
 # source/animal.cpp:128: 		for (i16 j = -iR; j <= iR; j++) {
	mov	ebx, esi	 # j, i
 # source/animal.cpp:121: 		return (r < m_r) * m_beta[floored] * Kc;
	vxorps	xmm11, xmm11, xmm11	 # tmp176
 # source/animal.cpp:130: 			f32 dist = (f32)sqrt(i * i + j * j);
	imul	r13d, r13d	 # _6, _60
	.p2align 4
	.p2align 3
.L153:
 # source/animal.cpp:129: 			if (!i && !j) continue;
	mov	eax, ebp	 # tmp185, i
	or	ax, bx	 # tmp185, j
	je	.L148	 #,
 # source/animal.cpp:130: 			f32 dist = (f32)sqrt(i * i + j * j);
	movsx	eax, bx	 # _7, j
 # source/animal.cpp:130: 			f32 dist = (f32)sqrt(i * i + j * j);
	imul	eax, eax	 # _8, _7
 # source/animal.cpp:130: 			f32 dist = (f32)sqrt(i * i + j * j);
	add	eax, r13d	 # _9, _6
 # source/animal.cpp:130: 			f32 dist = (f32)sqrt(i * i + j * j);
	vcvtsi2sd	xmm6, xmm10, eax	 # tmp181, tmp180, _9
	vsqrtsd	xmm6, xmm6, xmm6	 # _11, _10
 # source/animal.cpp:130: 			f32 dist = (f32)sqrt(i * i + j * j);
	vcvtsd2ss	xmm6, xmm6, xmm6	 # dist, _11
 # source/animal.cpp:85: 		return x > -1e-6 && x < 1e-6;
	vcvtss2sd	xmm0, xmm6, xmm6	 # _34, dist
 # source/animal.cpp:85: 		return x > -1e-6 && x < 1e-6;
	vcomisd	xmm0, QWORD PTR .LC17[rip]	 # _34,
 # source/animal.cpp:85: 		return x > -1e-6 && x < 1e-6;
	jbe	.L156	 #,
	vcomisd	xmm0, QWORD PTR .LC18[rip]	 # _34,
	jb	.L148	 #,
.L156:
 # source/animal.cpp:131: 			if (zero(dist) || dist > (f32)m_r) continue;
	vcvtusi2ss	xmm0, xmm10, QWORD PTR 176[r14]	 # tmp182, tmp180, this_28(D)->m_r
 # source/animal.cpp:131: 			if (zero(dist) || dist > (f32)m_r) continue;
	vcomiss	xmm6, xmm0	 # dist, _13
	ja	.L148	 #,
 # source/animal.cpp:118: 		const f32 Br = m_b * (r / (f32)m_r);
	vdivss	xmm0, xmm6, xmm0	 # _44, dist, _13
 # source/animal.cpp:118: 		const f32 Br = m_b * (r / (f32)m_r);
	movzx	edi, BYTE PTR 200[r14]	 # _40, this_28(D)->m_b
 # source/animal.cpp:120: 		const f32 Kc = ApplyKernelCore(std::min(fmodf(Br, 1.0), 1.f));
	fld1	
 # source/animal.cpp:118: 		const f32 Br = m_b * (r / (f32)m_r);
	vcvtsi2ss	xmm1, xmm10, edi	 # tmp183, tmp180, _40
 # source/animal.cpp:119: 		const i32 floored = std::min(static_cast<i32>(floor(Br)), m_b-1);
	sub	edi, 1	 # _46,
 # source/animal.cpp:118: 		const f32 Br = m_b * (r / (f32)m_r);
	vmulss	xmm3, xmm1, xmm0	 # Br, _41, _44
 # source/animal.cpp:119: 		const i32 floored = std::min(static_cast<i32>(floor(Br)), m_b-1);
	vrndscaless	xmm0, xmm3, xmm3, 9	 # tmp160,,
	vcvttss2si	eax, xmm0	 # _47, tmp160
 # source/animal.cpp:118: 		const f32 Br = m_b * (r / (f32)m_r);
	vmovss	DWORD PTR 44[rsp], xmm3	 # %sfp, Br
 # source/animal.cpp:120: 		const f32 Kc = ApplyKernelCore(std::min(fmodf(Br, 1.0), 1.f));
	fld	DWORD PTR 44[rsp]	 # %sfp
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:238:       if (__b < __a)
	cmp	edi, eax	 # _46, _47
	cmovg	edi, eax	 # _46,, _48, _47
.L150:
 # source/animal.cpp:120: 		const f32 Kc = ApplyKernelCore(std::min(fmodf(Br, 1.0), 1.f));
	fprem	
	fnstsw	ax	 # tmp164
	test	ah, 4	 # tmp164,
	jne	.L150	 #,
	fstp	st(1)		 #
	fstp	DWORD PTR 44[rsp]	 # %sfp
 # source/animal.cpp:120: 		const f32 Kc = ApplyKernelCore(std::min(fmodf(Br, 1.0), 1.f));
	vmovss	xmm2, xmm9, xmm9	 #, tmp175
	mov	rcx, r14	 #, this
 # source/animal.cpp:121: 		return (r < m_r) * m_beta[floored] * Kc;
	movsx	rdi, edi	 # _55, _48
 # source/animal.cpp:120: 		const f32 Kc = ApplyKernelCore(std::min(fmodf(Br, 1.0), 1.f));
	vmovss	xmm1, DWORD PTR 44[rsp]	 # _49, %sfp
 # source/animal.cpp:120: 		const f32 Kc = ApplyKernelCore(std::min(fmodf(Br, 1.0), 1.f));
	vminss	xmm1, xmm1, xmm8	 #, _49, tmp174
	call	_ZNK5Lenia6Animal15ApplyKernelCoreEff	 #
 # source/animal.cpp:121: 		return (r < m_r) * m_beta[floored] * Kc;
	mov	rax, QWORD PTR 192[r14]	 # this_28(D)->m_beta, this_28(D)->m_beta
 # source/animal.cpp:121: 		return (r < m_r) * m_beta[floored] * Kc;
	vcvtusi2ss	xmm1, xmm10, QWORD PTR 176[r14]	 # tmp184, tmp180, this_28(D)->m_r
 # source/animal.cpp:132: 			normalization += ApplyKernelShell(dist);
	vmulss	xmm0, xmm0, DWORD PTR [rax+rdi*4]	 # _69, tmp179, *_57
 # source/animal.cpp:121: 		return (r < m_r) * m_beta[floored] * Kc;
	vcmpltss	xmm6, xmm6, xmm1	 #, tmp173, dist, _53
	vblendvps	xmm6, xmm11, xmm8, xmm6	 # iftmp.42_59, tmp176, tmp174, tmp173
 # source/animal.cpp:132: 			normalization += ApplyKernelShell(dist);
	vfmadd231ss	xmm7, xmm6, xmm0	 # normalization, iftmp.42_59, _69
.L148:
 # source/animal.cpp:128: 		for (i16 j = -iR; j <= iR; j++) {
	add	ebx, 1	 # j,
 # source/animal.cpp:128: 		for (i16 j = -iR; j <= iR; j++) {
	cmp	r12w, bx	 # iR, j
	jge	.L153	 #,
 # source/animal.cpp:127: 		for (i16 i = -iR; i <= iR; i++)
	add	ebp, 1	 # i,
 # source/animal.cpp:127: 		for (i16 i = -iR; i <= iR; i++)
	cmp	r12w, bp	 # iR, i
	jge	.L146	 #,
.L147:
 # source/animal.cpp:135: 	}
	vmovups	xmm6, XMMWORD PTR 48[rsp]	 #,
	vmovups	xmm8, XMMWORD PTR 80[rsp]	 #,
	vmovups	xmm9, XMMWORD PTR 96[rsp]	 #,
 # source/animal.cpp:134: 		return normalization * m_dx2;
	vmulss	xmm0, xmm7, DWORD PTR 188[r14]	 # _31, normalization, this_28(D)->m_dx2
 # source/animal.cpp:135: 	}
	vmovups	xmm7, XMMWORD PTR 64[rsp]	 #,
	vmovups	xmm10, XMMWORD PTR 112[rsp]	 #,
	vmovups	xmm11, XMMWORD PTR 128[rsp]	 #,
	add	rsp, 144	 #,
	pop	rbx	 #
	pop	rsi	 #
	pop	rdi	 #
	pop	rbp	 #
	pop	r12	 #
	pop	r13	 #
	pop	r14	 #
	ret	
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN5Lenia6Animal13ComputeKernelEv
	.def	_ZN5Lenia6Animal13ComputeKernelEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Lenia6Animal13ComputeKernelEv
_ZN5Lenia6Animal13ComputeKernelEv:
.LFB6313:
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
	sub	rsp, 232	 #,
	.seh_stackalloc	232
	vmovups	XMMWORD PTR 64[rsp], xmm6	 #,
	.seh_savexmm	xmm6, 64
	vmovups	XMMWORD PTR 80[rsp], xmm7	 #,
	.seh_savexmm	xmm7, 80
	vmovups	XMMWORD PTR 96[rsp], xmm8	 #,
	.seh_savexmm	xmm8, 96
	vmovups	XMMWORD PTR 112[rsp], xmm9	 #,
	.seh_savexmm	xmm9, 112
	vmovups	XMMWORD PTR 128[rsp], xmm10	 #,
	.seh_savexmm	xmm10, 128
	vmovups	XMMWORD PTR 144[rsp], xmm11	 #,
	.seh_savexmm	xmm11, 144
	vmovups	XMMWORD PTR 160[rsp], xmm12	 #,
	.seh_savexmm	xmm12, 160
	vmovups	XMMWORD PTR 176[rsp], xmm13	 #,
	.seh_savexmm	xmm13, 176
	vmovups	XMMWORD PTR 192[rsp], xmm14	 #,
	.seh_savexmm	xmm14, 192
	vmovups	XMMWORD PTR 208[rsp], xmm15	 #,
	.seh_savexmm	xmm15, 208
	.seh_endprologue
 # source/animal.cpp:137: 	void Animal::ComputeKernel() {
	mov	rbp, rcx	 # this, tmp389
.LEHB6:
 # source/animal.cpp:138: 		f32 normalization_factor = Normalization();
	call	_ZNK5Lenia6Animal13NormalizationEv	 #
.LEHE6:
 # source/animal.cpp:139: 		for (size_t i = 0; i < m_r; i++)
	mov	r13, QWORD PTR 176[rbp]	 # _105, this_18(D)->m_r
 # source/animal.cpp:139: 		for (size_t i = 0; i < m_r; i++)
	test	r13, r13	 # _105
	je	.L214	 #,
	vxorps	xmm13, xmm13, xmm13	 # tmp395
 # source/animal.cpp:89: 		switch (m_kn) {
	mov	r14d, DWORD PTR 212[rbp]	 # _52, MEM[(const struct Animal *)this_18(D)].m_kn
	vmovss	xmm14, DWORD PTR .LC3[rip]	 # tmp353,
 # source/animal.cpp:118: 		const f32 Br = m_b * (r / (f32)m_r);
	vcvtusi2ss	xmm15, xmm13, r13	 # tmp396, tmp395, _105
	vdivss	xmm9, xmm14, xmm0	 # reciptmp_90, tmp353, _20
	vdivss	xmm11, xmm14, xmm15	 # reciptmp_59, tmp353, _33
	test	r14d, r14d	 # _52
	je	.L215	 #,
	cmp	r14d, 1	 # _52,
	je	.L171	 #,
 # source/animal.cpp:89: 		switch (m_kn) {
	vxorpd	xmm6, xmm6, xmm6	 # prephitmp_189
 # source/animal.cpp:139: 		for (size_t i = 0; i < m_r; i++)
	xor	r15d, r15d	 # i
 # source/animal.cpp:121: 		return (r < m_r) * m_beta[floored] * Kc;
	vxorps	xmm8, xmm8, xmm8	 # tmp375
 # source/animal.cpp:89: 		switch (m_kn) {
	mov	QWORD PTR 40[rsp], 0	 # %sfp,
 # source/animal.cpp:97: 				return (r > 0.f) * (r < 1.f) * (f32)exp(-(f32)pow(((r - .5f) / .15f), 2.f) / 2.f);
	vmovss	xmm10, DWORD PTR .LC5[rip]	 # tmp372,
	.p2align 4
	.p2align 3
.L184:
	mov	rax, QWORD PTR 40[rsp]	 # ivtmp.249, %sfp
 # source/animal.cpp:141: 			m_kernelBuffer.m_data[i * m_r + j] = ApplyKernelShell((f32)sqrt(i * i + j * j)) / normalization_factor;
	mov	rsi, r15	 # powmult_79, i
 # source/animal.cpp:140: 		for (size_t j = 0; j < m_r; j++)
	xor	edi, edi	 # j
 # source/animal.cpp:95: 				return f32(r >= q) * (r <= 1.f - q);
	vxorps	xmm7, xmm7, xmm7	 # _238
 # source/animal.cpp:141: 			m_kernelBuffer.m_data[i * m_r + j] = ApplyKernelShell((f32)sqrt(i * i + j * j)) / normalization_factor;
	imul	rsi, r15	 # powmult_79, i
	lea	r12, 0[0+rax*4]	 # ivtmp.241,
	jmp	.L182	 #
	.p2align 4,,10
	.p2align 3
.L173:
 # source/animal.cpp:95: 				return f32(r >= q) * (r <= 1.f - q);
	vcomiss	xmm12, DWORD PTR .LC14[rip]	 # _200,
	jb	.L212	 #,
 # source/animal.cpp:95: 				return f32(r >= q) * (r <= 1.f - q);
	vmovss	xmm5, DWORD PTR .LC15[rip]	 # tmp423,
	vcomiss	xmm5, xmm12	 # tmp423, _200
	jnb	.L200	 #,
.L212:
 # source/animal.cpp:95: 				return f32(r >= q) * (r <= 1.f - q);
	vxorps	xmm0, xmm0, xmm0	 # _238
.L178:
 # source/animal.cpp:121: 		return (r < m_r) * m_beta[floored] * Kc;
	vcmpltss	xmm6, xmm6, xmm15	 #, tmp362, _190, _33
 # source/animal.cpp:121: 		return (r < m_r) * m_beta[floored] * Kc;
	movsx	rbx, ebx	 # _242, _198
 # source/animal.cpp:140: 		for (size_t j = 0; j < m_r; j++)
	add	rdi, 1	 # j,
 # source/animal.cpp:121: 		return (r < m_r) * m_beta[floored] * Kc;
	mov	r8, QWORD PTR 192[rbp]	 # MEM[(const struct Animal *)this_18(D)].m_beta, MEM[(const struct Animal *)this_18(D)].m_beta
 # source/animal.cpp:141: 			m_kernelBuffer.m_data[i * m_r + j] = ApplyKernelShell((f32)sqrt(i * i + j * j)) / normalization_factor;
	mov	rcx, QWORD PTR 264[rbp]	 # MEM[(struct vector *)this_18(D) + 264B].D.142868._M_impl.D.142166._M_start, MEM[(struct vector *)this_18(D) + 264B].D.142868._M_impl.D.142166._M_start
 # source/animal.cpp:141: 			m_kernelBuffer.m_data[i * m_r + j] = ApplyKernelShell((f32)sqrt(i * i + j * j)) / normalization_factor;
	vmulss	xmm1, xmm9, DWORD PTR [r8+rbx*4]	 # _219, reciptmp_90, *_244
 # source/animal.cpp:121: 		return (r < m_r) * m_beta[floored] * Kc;
	vblendvps	xmm6, xmm8, xmm14, xmm6	 # iftmp.42_240, tmp375, tmp353, tmp362
 # source/animal.cpp:141: 			m_kernelBuffer.m_data[i * m_r + j] = ApplyKernelShell((f32)sqrt(i * i + j * j)) / normalization_factor;
	vmulss	xmm0, xmm0, xmm6	 # _218, _238, iftmp.42_240
	vmulss	xmm1, xmm1, xmm0	 # _248, _219, _218
 # source/animal.cpp:141: 			m_kernelBuffer.m_data[i * m_r + j] = ApplyKernelShell((f32)sqrt(i * i + j * j)) / normalization_factor;
	vmovss	DWORD PTR [rcx+r12], xmm1	 # *_252, _248
 # source/animal.cpp:140: 		for (size_t j = 0; j < m_r; j++)
	add	r12, 4	 # ivtmp.241,
	cmp	r13, rdi	 # _105, j
	je	.L181	 #,
 # source/animal.cpp:141: 			m_kernelBuffer.m_data[i * m_r + j] = ApplyKernelShell((f32)sqrt(i * i + j * j)) / normalization_factor;
	mov	rax, rdi	 # _255, j
	imul	rax, rdi	 # _255, j
 # source/animal.cpp:141: 			m_kernelBuffer.m_data[i * m_r + j] = ApplyKernelShell((f32)sqrt(i * i + j * j)) / normalization_factor;
	add	rax, rsi	 # _256, powmult_79
 # source/animal.cpp:141: 			m_kernelBuffer.m_data[i * m_r + j] = ApplyKernelShell((f32)sqrt(i * i + j * j)) / normalization_factor;
	vcvtusi2sd	xmm6, xmm13, rax	 # tmp399, tmp395, _256
	vsqrtsd	xmm6, xmm6, xmm6	 # prephitmp_189, _257
.L182:
 # source/animal.cpp:118: 		const f32 Br = m_b * (r / (f32)m_r);
	movzx	eax, BYTE PTR 200[rbp]	 # _192, MEM[(const struct Animal *)this_18(D)].m_b
 # source/animal.cpp:141: 			m_kernelBuffer.m_data[i * m_r + j] = ApplyKernelShell((f32)sqrt(i * i + j * j)) / normalization_factor;
	vcvtsd2ss	xmm6, xmm6, xmm6	 # _190, prephitmp_189
 # source/animal.cpp:120: 		const f32 Kc = ApplyKernelCore(std::min(fmodf(Br, 1.0), 1.f));
	fld1	
 # source/animal.cpp:118: 		const f32 Br = m_b * (r / (f32)m_r);
	vcvtsi2ss	xmm0, xmm13, eax	 # tmp397, tmp395, _192
 # source/animal.cpp:119: 		const i32 floored = std::min(static_cast<i32>(floor(Br)), m_b-1);
	sub	eax, 1	 # _196,
 # source/animal.cpp:118: 		const f32 Br = m_b * (r / (f32)m_r);
	vmulss	xmm0, xmm0, xmm11	 # _217, _193, reciptmp_59
	vmulss	xmm3, xmm0, xmm6	 # Br, _217, _190
 # source/animal.cpp:119: 		const i32 floored = std::min(static_cast<i32>(floor(Br)), m_b-1);
	vrndscaless	xmm0, xmm3, xmm3, 9	 # tmp243,,
	vcvttss2si	ecx, xmm0	 # _197, tmp243
 # source/animal.cpp:118: 		const f32 Br = m_b * (r / (f32)m_r);
	vmovss	DWORD PTR 36[rsp], xmm3	 # %sfp, Br
 # source/animal.cpp:120: 		const f32 Kc = ApplyKernelCore(std::min(fmodf(Br, 1.0), 1.f));
	fld	DWORD PTR 36[rsp]	 # %sfp
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:238:       if (__b < __a)
	cmp	eax, ecx	 # _196, _197
	mov	ebx, ecx	 # _197, _197
	cmovle	ebx, eax	 # _196,, _197
.L172:
 # source/animal.cpp:120: 		const f32 Kc = ApplyKernelCore(std::min(fmodf(Br, 1.0), 1.f));
	fprem	
	fnstsw	ax	 # tmp247
	test	ah, 4	 # tmp247,
	jne	.L172	 #,
	fstp	st(1)		 #
	fstp	DWORD PTR 36[rsp]	 # %sfp
	vmovss	xmm12, DWORD PTR 36[rsp]	 # _199, %sfp
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:238:       if (__b < __a)
	vminss	xmm12, xmm12, xmm14	 # _200, _199, tmp353
 # source/animal.cpp:89: 		switch (m_kn) {
	cmp	r14d, 2	 # _52,
	je	.L173	 #,
	cmp	r14d, 3	 # _52,
	jne	.L216	 #,
 # source/animal.cpp:97: 				return (r > 0.f) * (r < 1.f) * (f32)exp(-(f32)pow(((r - .5f) / .15f), 2.f) / 2.f);
	vsubss	xmm0, xmm12, xmm10	 # _231, _200, tmp372
 # source/animal.cpp:97: 				return (r > 0.f) * (r < 1.f) * (f32)exp(-(f32)pow(((r - .5f) / .15f), 2.f) / 2.f);
	vmulss	xmm0, xmm0, DWORD PTR .LC6[rip]	 # _232, _231,
 # source/animal.cpp:97: 				return (r > 0.f) * (r < 1.f) * (f32)exp(-(f32)pow(((r - .5f) / .15f), 2.f) / 2.f);
	vmulss	xmm0, xmm0, xmm0	 # _9, _232, _232
	vmulss	xmm0, xmm0, DWORD PTR .LC7[rip]	 # _236, _9,
	call	expf	 #
 # source/animal.cpp:97: 				return (r > 0.f) * (r < 1.f) * (f32)exp(-(f32)pow(((r - .5f) / .15f), 2.f) / 2.f);
	vcomiss	xmm12, xmm7	 # _200, _238
 # source/animal.cpp:97: 				return (r > 0.f) * (r < 1.f) * (f32)exp(-(f32)pow(((r - .5f) / .15f), 2.f) / 2.f);
	vmovss	xmm1, xmm0, xmm0	 # tmp391,
 # source/animal.cpp:97: 				return (r > 0.f) * (r < 1.f) * (f32)exp(-(f32)pow(((r - .5f) / .15f), 2.f) / 2.f);
	seta	cl	 #, _226
	xor	eax, eax	 # _228
	vcomiss	xmm14, xmm12	 # tmp353, _200
	seta	al	 #, _228
	and	eax, ecx	 # _229, _226
 # source/animal.cpp:97: 				return (r > 0.f) * (r < 1.f) * (f32)exp(-(f32)pow(((r - .5f) / .15f), 2.f) / 2.f);
	vcvtsi2ss	xmm0, xmm13, eax	 # tmp398, tmp395, _229
 # source/animal.cpp:97: 				return (r > 0.f) * (r < 1.f) * (f32)exp(-(f32)pow(((r - .5f) / .15f), 2.f) / 2.f);
	vmulss	xmm0, xmm0, xmm1	 # _238, _230, tmp391
	jmp	.L178	 #
	.p2align 4,,10
	.p2align 3
.L181:
 # source/animal.cpp:139: 		for (size_t i = 0; i < m_r; i++)
	add	r15, 1	 # i,
 # source/animal.cpp:139: 		for (size_t i = 0; i < m_r; i++)
	add	QWORD PTR 40[rsp], r13	 # %sfp, _105
	cmp	r13, r15	 # _105, i
	je	.L214	 #,
 # source/animal.cpp:141: 			m_kernelBuffer.m_data[i * m_r + j] = ApplyKernelShell((f32)sqrt(i * i + j * j)) / normalization_factor;
	mov	rax, r15	 # _261, i
	imul	rax, r15	 # _261, i
 # source/animal.cpp:141: 			m_kernelBuffer.m_data[i * m_r + j] = ApplyKernelShell((f32)sqrt(i * i + j * j)) / normalization_factor;
	vcvtusi2sd	xmm6, xmm13, rax	 # tmp400, tmp395, _261
	vsqrtsd	xmm6, xmm6, xmm6	 # prephitmp_189, _262
	jmp	.L184	 #
	.p2align 4,,10
	.p2align 3
.L214:
 # source/animal.cpp:142: 	}
	vmovups	xmm6, XMMWORD PTR 64[rsp]	 #,
	vmovups	xmm7, XMMWORD PTR 80[rsp]	 #,
	vmovups	xmm8, XMMWORD PTR 96[rsp]	 #,
	vmovups	xmm9, XMMWORD PTR 112[rsp]	 #,
	vmovups	xmm10, XMMWORD PTR 128[rsp]	 #,
	vmovups	xmm11, XMMWORD PTR 144[rsp]	 #,
	vmovups	xmm12, XMMWORD PTR 160[rsp]	 #,
	vmovups	xmm13, XMMWORD PTR 176[rsp]	 #,
	vmovups	xmm14, XMMWORD PTR 192[rsp]	 #,
	vmovups	xmm15, XMMWORD PTR 208[rsp]	 #,
	add	rsp, 232	 #,
	pop	rbx	 #
	pop	rsi	 #
	pop	rdi	 #
	pop	rbp	 #
	pop	r12	 #
	pop	r13	 #
	pop	r14	 #
	pop	r15	 #
	ret	
.L215:
 # source/animal.cpp:121: 		return (r < m_r) * m_beta[floored] * Kc;
	mov	rbx, QWORD PTR 192[rbp]	 # _44, MEM[(const struct Animal *)this_18(D)].m_beta
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1131: 	return *(this->_M_impl._M_start + __n);
	mov	r11, QWORD PTR 264[rbp]	 # _24, MEM[(struct vector *)this_18(D) + 264B].D.142868._M_impl.D.142166._M_start
	xor	r9d, r9d	 # ivtmp.285
 # source/animal.cpp:139: 		for (size_t i = 0; i < m_r; i++)
	xor	r8d, r8d	 # i
 # source/animal.cpp:91: 				return (r > 0.f) * (r < 1.f) * (f32)pow(4.f * r * (1.f - r), 4.f);
	vmovss	xmm5, DWORD PTR .LC4[rip]	 # tmp385,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1131: 	return *(this->_M_impl._M_start + __n);
	vxorpd	xmm0, xmm0, xmm0	 # _146
 # source/animal.cpp:91: 				return (r > 0.f) * (r < 1.f) * (f32)pow(4.f * r * (1.f - r), 4.f);
	vxorps	xmm4, xmm4, xmm4	 # tmp386
	.p2align 4
	.p2align 3
.L170:
 # source/animal.cpp:141: 			m_kernelBuffer.m_data[i * m_r + j] = ApplyKernelShell((f32)sqrt(i * i + j * j)) / normalization_factor;
	mov	rsi, r8	 # powmult_16, i
	lea	r10, 0[0+r9*4]	 # ivtmp.277,
 # source/animal.cpp:140: 		for (size_t j = 0; j < m_r; j++)
	xor	edx, edx	 # j
 # source/animal.cpp:141: 			m_kernelBuffer.m_data[i * m_r + j] = ApplyKernelShell((f32)sqrt(i * i + j * j)) / normalization_factor;
	imul	rsi, r8	 # powmult_16, i
	jmp	.L198	 #
	.p2align 4,,10
	.p2align 3
.L191:
 # source/animal.cpp:118: 		const f32 Br = m_b * (r / (f32)m_r);
	movzx	ecx, BYTE PTR 200[rbp]	 # _30, MEM[(const struct Animal *)this_18(D)].m_b
 # source/animal.cpp:120: 		const f32 Kc = ApplyKernelCore(std::min(fmodf(Br, 1.0), 1.f));
	fld1	
 # source/animal.cpp:118: 		const f32 Br = m_b * (r / (f32)m_r);
	vcvtsi2ss	xmm1, xmm13, ecx	 # tmp406, tmp395, _30
 # source/animal.cpp:118: 		const f32 Br = m_b * (r / (f32)m_r);
	vmulss	xmm1, xmm1, xmm11	 # _259, _31, reciptmp_59
	vmulss	xmm2, xmm1, xmm0	 # Br, _259, _6
	vmovss	DWORD PTR 36[rsp], xmm2	 # %sfp, Br
 # source/animal.cpp:120: 		const f32 Kc = ApplyKernelCore(std::min(fmodf(Br, 1.0), 1.f));
	fld	DWORD PTR 36[rsp]	 # %sfp
.L193:
	fprem	
	fnstsw	ax	 # tmp323
	test	ah, 4	 # tmp323,
	jne	.L193	 #,
	fstp	st(1)		 #
 # source/animal.cpp:119: 		const i32 floored = std::min(static_cast<i32>(floor(Br)), m_b-1);
	vrndscaless	xmm0, xmm0, DWORD PTR 36[rsp], 9	 # tmp325, %sfp,
 # source/animal.cpp:120: 		const f32 Kc = ApplyKernelCore(std::min(fmodf(Br, 1.0), 1.f));
	fstp	DWORD PTR 40[rsp]	 # %sfp
 # source/animal.cpp:119: 		const i32 floored = std::min(static_cast<i32>(floor(Br)), m_b-1);
	sub	ecx, 1	 # _36,
 # source/animal.cpp:120: 		const f32 Kc = ApplyKernelCore(std::min(fmodf(Br, 1.0), 1.f));
	vmovss	xmm1, DWORD PTR 40[rsp]	 # _39, %sfp
 # source/animal.cpp:119: 		const i32 floored = std::min(static_cast<i32>(floor(Br)), m_b-1);
	vcvttss2si	eax, xmm0	 # _37, tmp325
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:238:       if (__b < __a)
	vminss	xmm1, xmm1, xmm14	 # _40, _39, tmp353
 # source/animal.cpp:91: 				return (r > 0.f) * (r < 1.f) * (f32)pow(4.f * r * (1.f - r), 4.f);
	vmulss	xmm6, xmm1, xmm5	 # _76, _40, tmp385
 # source/animal.cpp:91: 				return (r > 0.f) * (r < 1.f) * (f32)pow(4.f * r * (1.f - r), 4.f);
	vsubss	xmm0, xmm14, xmm1	 # _58, tmp353, _40
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:238:       if (__b < __a)
	cmp	ecx, eax	 # _36, _37
	cmovg	ecx, eax	 # _36,, _38, _37
 # source/animal.cpp:91: 				return (r > 0.f) * (r < 1.f) * (f32)pow(4.f * r * (1.f - r), 4.f);
	vcomiss	xmm1, xmm4	 # _40, tmp386
 # source/animal.cpp:121: 		return (r < m_r) * m_beta[floored] * Kc;
	movsx	rcx, ecx	 # _131, _38
 # source/animal.cpp:91: 				return (r > 0.f) * (r < 1.f) * (f32)pow(4.f * r * (1.f - r), 4.f);
	seta	dil	 #, _53
	xor	eax, eax	 # _55
 # source/animal.cpp:91: 				return (r > 0.f) * (r < 1.f) * (f32)pow(4.f * r * (1.f - r), 4.f);
	vmulss	xmm0, xmm0, xmm6	 # _60, _58, _76
 # source/animal.cpp:91: 				return (r > 0.f) * (r < 1.f) * (f32)pow(4.f * r * (1.f - r), 4.f);
	vcomiss	xmm14, xmm1	 # tmp353, _40
	seta	al	 #, _55
 # source/animal.cpp:140: 		for (size_t j = 0; j < m_r; j++)
	add	rdx, 1	 # j,
 # source/animal.cpp:91: 				return (r > 0.f) * (r < 1.f) * (f32)pow(4.f * r * (1.f - r), 4.f);
	and	eax, edi	 # _56, _53
 # source/animal.cpp:91: 				return (r > 0.f) * (r < 1.f) * (f32)pow(4.f * r * (1.f - r), 4.f);
	vcvtss2sd	xmm0, xmm0, xmm0	 # _61, _60
	vmulsd	xmm0, xmm0, xmm0	 # powmult_2, _61, _61
 # source/animal.cpp:91: 				return (r > 0.f) * (r < 1.f) * (f32)pow(4.f * r * (1.f - r), 4.f);
	vcvtsi2ss	xmm1, xmm13, eax	 # tmp407, tmp395, _56
 # source/animal.cpp:141: 			m_kernelBuffer.m_data[i * m_r + j] = ApplyKernelShell((f32)sqrt(i * i + j * j)) / normalization_factor;
	vmulss	xmm1, xmm1, DWORD PTR [rbx+rcx*4]	 # _127, _57, *_129
 # source/animal.cpp:91: 				return (r > 0.f) * (r < 1.f) * (f32)pow(4.f * r * (1.f - r), 4.f);
	vmulsd	xmm0, xmm0, xmm0	 # powmult_1, powmult_2, powmult_2
 # source/animal.cpp:91: 				return (r > 0.f) * (r < 1.f) * (f32)pow(4.f * r * (1.f - r), 4.f);
	vcvtsd2ss	xmm0, xmm0, xmm0	 # _63, powmult_1
 # source/animal.cpp:141: 			m_kernelBuffer.m_data[i * m_r + j] = ApplyKernelShell((f32)sqrt(i * i + j * j)) / normalization_factor;
	vmulss	xmm0, xmm0, xmm9	 # _15, _63, reciptmp_90
	vmulss	xmm1, xmm1, xmm0	 # _125, _127, _15
 # source/animal.cpp:141: 			m_kernelBuffer.m_data[i * m_r + j] = ApplyKernelShell((f32)sqrt(i * i + j * j)) / normalization_factor;
	vmovss	DWORD PTR [r11+r10], xmm1	 # *_123, _125
 # source/animal.cpp:140: 		for (size_t j = 0; j < m_r; j++)
	add	r10, 4	 # ivtmp.277,
	cmp	r13, rdx	 # _105, j
	je	.L195	 #,
.L194:
 # source/animal.cpp:141: 			m_kernelBuffer.m_data[i * m_r + j] = ApplyKernelShell((f32)sqrt(i * i + j * j)) / normalization_factor;
	mov	rax, rdx	 # _143, j
	imul	rax, rdx	 # _143, j
 # source/animal.cpp:141: 			m_kernelBuffer.m_data[i * m_r + j] = ApplyKernelShell((f32)sqrt(i * i + j * j)) / normalization_factor;
	add	rax, rsi	 # _144, powmult_16
 # source/animal.cpp:141: 			m_kernelBuffer.m_data[i * m_r + j] = ApplyKernelShell((f32)sqrt(i * i + j * j)) / normalization_factor;
	vcvtusi2sd	xmm0, xmm13, rax	 # tmp405, tmp395, _144
	vsqrtsd	xmm0, xmm0, xmm0	 # _146, _145
.L198:
 # source/animal.cpp:141: 			m_kernelBuffer.m_data[i * m_r + j] = ApplyKernelShell((f32)sqrt(i * i + j * j)) / normalization_factor;
	vcvtsd2ss	xmm0, xmm0, xmm0	 # _6, _146
 # source/animal.cpp:121: 		return (r < m_r) * m_beta[floored] * Kc;
	vcomiss	xmm15, xmm0	 # _33, _6
	ja	.L191	 #,
 # source/animal.cpp:140: 		for (size_t j = 0; j < m_r; j++)
	add	rdx, 1	 # j,
 # source/animal.cpp:141: 			m_kernelBuffer.m_data[i * m_r + j] = ApplyKernelShell((f32)sqrt(i * i + j * j)) / normalization_factor;
	mov	DWORD PTR [r11+r10], 0x00000000	 # *_28,
 # source/animal.cpp:140: 		for (size_t j = 0; j < m_r; j++)
	add	r10, 4	 # ivtmp.277,
	cmp	rdx, r13	 # j, _105
	jne	.L194	 #,
.L195:
 # source/animal.cpp:139: 		for (size_t i = 0; i < m_r; i++)
	add	r8, 1	 # i,
 # source/animal.cpp:139: 		for (size_t i = 0; i < m_r; i++)
	add	r9, r13	 # ivtmp.285, _105
	cmp	r8, r13	 # i, _105
	je	.L214	 #,
 # source/animal.cpp:141: 			m_kernelBuffer.m_data[i * m_r + j] = ApplyKernelShell((f32)sqrt(i * i + j * j)) / normalization_factor;
	mov	rax, r8	 # _133, i
	imul	rax, r8	 # _133, i
 # source/animal.cpp:141: 			m_kernelBuffer.m_data[i * m_r + j] = ApplyKernelShell((f32)sqrt(i * i + j * j)) / normalization_factor;
	vcvtusi2sd	xmm0, xmm13, rax	 # tmp408, tmp395, _133
	vsqrtsd	xmm0, xmm0, xmm0	 # _146, _134
	jmp	.L170	 #
.L171:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1131: 	return *(this->_M_impl._M_start + __n);
	mov	QWORD PTR 56[rsp], 0	 # %sfp,
	mov	rdi, QWORD PTR 264[rbp]	 # _107, MEM[(struct vector *)this_18(D) + 264B].D.142868._M_impl.D.142166._M_start
	vxorpd	xmm0, xmm0, xmm0	 # _22
 # source/animal.cpp:93: 				return (r > 0.f) * (r < 1.f) * (f32)exp(4.f - 1.f / (r * (1.f - r)));
	vxorps	xmm6, xmm6, xmm6	 # tmp382
 # source/animal.cpp:139: 		for (size_t i = 0; i < m_r; i++)
	mov	QWORD PTR 48[rsp], 0	 # %sfp,
 # source/animal.cpp:121: 		return (r < m_r) * m_beta[floored] * Kc;
	vmovq	xmm10, QWORD PTR 192[rbp]	 # _116, MEM[(const struct Animal *)this_18(D)].m_beta
 # source/animal.cpp:93: 				return (r > 0.f) * (r < 1.f) * (f32)exp(4.f - 1.f / (r * (1.f - r)));
	vmovss	xmm7, DWORD PTR .LC4[rip]	 # tmp381,
	.p2align 4
	.p2align 3
.L190:
 # source/animal.cpp:141: 			m_kernelBuffer.m_data[i * m_r + j] = ApplyKernelShell((f32)sqrt(i * i + j * j)) / normalization_factor;
	mov	rax, QWORD PTR 48[rsp]	 # i, %sfp
 # source/animal.cpp:140: 		for (size_t j = 0; j < m_r; j++)
	xor	r12d, r12d	 # j
 # source/animal.cpp:141: 			m_kernelBuffer.m_data[i * m_r + j] = ApplyKernelShell((f32)sqrt(i * i + j * j)) / normalization_factor;
	mov	rsi, rax	 # powmult_185, i
	imul	rsi, rax	 # powmult_185, i
	mov	rax, QWORD PTR 56[rsp]	 # ivtmp.267, %sfp
	lea	r15, 0[0+rax*4]	 # ivtmp.259,
	jmp	.L189	 #
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L217:
 # source/animal.cpp:140: 		for (size_t j = 0; j < m_r; j++)
	add	r12, 1	 # j,
 # source/animal.cpp:141: 			m_kernelBuffer.m_data[i * m_r + j] = ApplyKernelShell((f32)sqrt(i * i + j * j)) / normalization_factor;
	mov	DWORD PTR [rdi+r15], 0x00000000	 # *_12,
 # source/animal.cpp:140: 		for (size_t j = 0; j < m_r; j++)
	add	r15, 4	 # ivtmp.259,
	cmp	r13, r12	 # _105, j
	je	.L187	 #,
.L186:
 # source/animal.cpp:141: 			m_kernelBuffer.m_data[i * m_r + j] = ApplyKernelShell((f32)sqrt(i * i + j * j)) / normalization_factor;
	mov	rax, r12	 # _77, j
	imul	rax, r12	 # _77, j
 # source/animal.cpp:141: 			m_kernelBuffer.m_data[i * m_r + j] = ApplyKernelShell((f32)sqrt(i * i + j * j)) / normalization_factor;
	add	rax, rsi	 # _50, powmult_185
 # source/animal.cpp:141: 			m_kernelBuffer.m_data[i * m_r + j] = ApplyKernelShell((f32)sqrt(i * i + j * j)) / normalization_factor;
	vcvtusi2sd	xmm0, xmm13, rax	 # tmp403, tmp395, _50
	vsqrtsd	xmm0, xmm0, xmm0	 # _22, _32
.L189:
 # source/animal.cpp:141: 			m_kernelBuffer.m_data[i * m_r + j] = ApplyKernelShell((f32)sqrt(i * i + j * j)) / normalization_factor;
	vcvtsd2ss	xmm0, xmm0, xmm0	 # _179, _22
 # source/animal.cpp:121: 		return (r < m_r) * m_beta[floored] * Kc;
	vcomiss	xmm15, xmm0	 # _33, _179
	jbe	.L217	 #,
 # source/animal.cpp:118: 		const f32 Br = m_b * (r / (f32)m_r);
	movzx	r14d, BYTE PTR 200[rbp]	 # _177, MEM[(const struct Animal *)this_18(D)].m_b
 # source/animal.cpp:120: 		const f32 Kc = ApplyKernelCore(std::min(fmodf(Br, 1.0), 1.f));
	fld1	
 # source/animal.cpp:118: 		const f32 Br = m_b * (r / (f32)m_r);
	vcvtsi2ss	xmm1, xmm13, r14d	 # tmp401, tmp395, _177
 # source/animal.cpp:118: 		const f32 Br = m_b * (r / (f32)m_r);
	vmulss	xmm1, xmm1, xmm11	 # _249, _176, reciptmp_59
	vmulss	xmm4, xmm1, xmm0	 # Br, _249, _179
	vmovss	DWORD PTR 36[rsp], xmm4	 # %sfp, Br
 # source/animal.cpp:120: 		const f32 Kc = ApplyKernelCore(std::min(fmodf(Br, 1.0), 1.f));
	fld	DWORD PTR 36[rsp]	 # %sfp
.L188:
	fprem	
	fnstsw	ax	 # tmp282
	test	ah, 4	 # tmp282,
	jne	.L188	 #,
	fstp	st(1)		 #
	fstp	DWORD PTR 40[rsp]	 # %sfp
	vmovss	xmm8, DWORD PTR 40[rsp]	 # _170, %sfp
 # source/animal.cpp:119: 		const i32 floored = std::min(static_cast<i32>(floor(Br)), m_b-1);
	sub	r14d, 1	 # _173,
 # source/animal.cpp:119: 		const i32 floored = std::min(static_cast<i32>(floor(Br)), m_b-1);
	vrndscaless	xmm0, xmm0, DWORD PTR 36[rsp], 9	 # tmp284, %sfp,
	vcvttss2si	ebx, xmm0	 # _172, tmp284
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:238:       if (__b < __a)
	vminss	xmm8, xmm8, xmm14	 # _169, _170, tmp353
 # source/animal.cpp:93: 				return (r > 0.f) * (r < 1.f) * (f32)exp(4.f - 1.f / (r * (1.f - r)));
	vsubss	xmm0, xmm8, xmm14	 # _149, _169, tmp353
 # source/animal.cpp:93: 				return (r > 0.f) * (r < 1.f) * (f32)exp(4.f - 1.f / (r * (1.f - r)));
	vmulss	xmm0, xmm0, xmm8	 # _142, _149, _169
 # source/animal.cpp:93: 				return (r > 0.f) * (r < 1.f) * (f32)exp(4.f - 1.f / (r * (1.f - r)));
	vdivss	xmm0, xmm14, xmm0	 # _141, tmp353, _142
 # source/animal.cpp:93: 				return (r > 0.f) * (r < 1.f) * (f32)exp(4.f - 1.f / (r * (1.f - r)));
	vaddss	xmm0, xmm0, xmm7	 # _140, _141, tmp381
 # source/animal.cpp:93: 				return (r > 0.f) * (r < 1.f) * (f32)exp(4.f - 1.f / (r * (1.f - r)));
	call	expf	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:238:       if (__b < __a)
	cmp	r14d, ebx	 # _173, _172
	cmovg	r14d, ebx	 # _173,, _171, _172
 # source/animal.cpp:93: 				return (r > 0.f) * (r < 1.f) * (f32)exp(4.f - 1.f / (r * (1.f - r)));
	vcomiss	xmm14, xmm8	 # tmp353, _169
 # source/animal.cpp:93: 				return (r > 0.f) * (r < 1.f) * (f32)exp(4.f - 1.f / (r * (1.f - r)));
	vmovss	xmm1, xmm0, xmm0	 # tmp392,
 # source/animal.cpp:141: 			m_kernelBuffer.m_data[i * m_r + j] = ApplyKernelShell((f32)sqrt(i * i + j * j)) / normalization_factor;
	vmulss	xmm1, xmm9, xmm1	 # _43, reciptmp_90, tmp392
 # source/animal.cpp:121: 		return (r < m_r) * m_beta[floored] * Kc;
	movsx	r14, r14d	 # _115, _171
 # source/animal.cpp:93: 				return (r > 0.f) * (r < 1.f) * (f32)exp(4.f - 1.f / (r * (1.f - r)));
	seta	r8b	 #, _153
	xor	eax, eax	 # _152
	vcomiss	xmm8, xmm6	 # _169, tmp382
	seta	al	 #, _152
 # source/animal.cpp:140: 		for (size_t j = 0; j < m_r; j++)
	add	r12, 1	 # j,
 # source/animal.cpp:93: 				return (r > 0.f) * (r < 1.f) * (f32)exp(4.f - 1.f / (r * (1.f - r)));
	and	eax, r8d	 # _151, _153
 # source/animal.cpp:93: 				return (r > 0.f) * (r < 1.f) * (f32)exp(4.f - 1.f / (r * (1.f - r)));
	vcvtsi2ss	xmm0, xmm13, eax	 # tmp402, tmp395, _151
 # source/animal.cpp:141: 			m_kernelBuffer.m_data[i * m_r + j] = ApplyKernelShell((f32)sqrt(i * i + j * j)) / normalization_factor;
	vmovq	rax, xmm10	 # _116, _116
	vmulss	xmm0, xmm0, DWORD PTR [rax+r14*4]	 # _10, _150, *_113
	vmulss	xmm0, xmm0, xmm1	 # _109, _10, _43
 # source/animal.cpp:141: 			m_kernelBuffer.m_data[i * m_r + j] = ApplyKernelShell((f32)sqrt(i * i + j * j)) / normalization_factor;
	vmovss	DWORD PTR [rdi+r15], xmm0	 # *_104, _109
 # source/animal.cpp:140: 		for (size_t j = 0; j < m_r; j++)
	add	r15, 4	 # ivtmp.259,
	cmp	r12, r13	 # j, _105
	jne	.L186	 #,
.L187:
 # source/animal.cpp:139: 		for (size_t i = 0; i < m_r; i++)
	add	QWORD PTR 48[rsp], 1	 # %sfp,
	mov	rax, QWORD PTR 48[rsp]	 # i, %sfp
 # source/animal.cpp:139: 		for (size_t i = 0; i < m_r; i++)
	add	QWORD PTR 56[rsp], r13	 # %sfp, _105
	cmp	rax, r13	 # i, _105
	je	.L214	 #,
 # source/animal.cpp:141: 			m_kernelBuffer.m_data[i * m_r + j] = ApplyKernelShell((f32)sqrt(i * i + j * j)) / normalization_factor;
	imul	rax, rax	 # _13, i
 # source/animal.cpp:141: 			m_kernelBuffer.m_data[i * m_r + j] = ApplyKernelShell((f32)sqrt(i * i + j * j)) / normalization_factor;
	vcvtusi2sd	xmm0, xmm13, rax	 # tmp404, tmp395, _13
	vsqrtsd	xmm0, xmm0, xmm0	 # _22, _148
	jmp	.L190	 #
.L200:
 # source/animal.cpp:95: 				return f32(r >= q) * (r <= 1.f - q);
	vmovss	xmm0, xmm14, xmm14	 # _238, tmp353
	jmp	.L178	 #
.L216:
 # source/animal.cpp:99: 				throw std::runtime_error("Invalid KernelCore");
	mov	ecx, 16	 #,
	call	__cxa_allocate_exception	 #
 # source/animal.cpp:99: 				throw std::runtime_error("Invalid KernelCore");
	lea	rdx, .LC8[rip]	 # tmp317,
	mov	rcx, rax	 #, _94
 # source/animal.cpp:99: 				throw std::runtime_error("Invalid KernelCore");
	mov	rbx, rax	 # _94, tmp393
.LEHB7:
 # source/animal.cpp:99: 				throw std::runtime_error("Invalid KernelCore");
	call	_ZNSt13runtime_errorC1EPKc	 #
.LEHE7:
 # source/animal.cpp:99: 				throw std::runtime_error("Invalid KernelCore");
	lea	r8, _ZNSt13runtime_errorD1Ev[rip]	 #,
	lea	rdx, _ZTISt13runtime_error[rip]	 # tmp318,
	mov	rcx, rbx	 #, _94
.LEHB8:
	call	__cxa_throw	 #
.L202:
 # source/animal.cpp:99: 				throw std::runtime_error("Invalid KernelCore");
	mov	rsi, rax	 # tmp349, tmp394
	mov	rcx, rbx	 #, _94
	vzeroupper
	call	__cxa_free_exception	 #
	mov	rcx, rsi	 #, tmp349
	call	_Unwind_Resume	 #
	nop	
.LEHE8:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6313:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6313-.LLSDACSB6313
.LLSDACSB6313:
	.uleb128 .LEHB6-.LFB6313
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB6313
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L202-.LFB6313
	.uleb128 0
	.uleb128 .LEHB8-.LFB6313
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSE6313:
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
.LFB6270:
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
	sub	rsp, 64	 #,
	.seh_stackalloc	64
	.seh_endprologue
 # include/gl_setup.hpp:48: 			glGenBuffers(1, &m_ID);
	mov	rax, QWORD PTR .refptr.glad_glGenBuffers[rip]	 # tmp176,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:99: 	: _M_start(), _M_finish(), _M_end_of_storage()
	vpxor	xmm0, xmm0, xmm0	 # tmp174
 # source/animal.cpp:18: 		m_kernelBuffer = Buffer<f32>(BufferBinding::KERNEL, m_r * m_r);
	mov	rsi, QWORD PTR 176[rcx]	 # _1, this_4(D)->m_r
 # source/animal.cpp:18: 		m_kernelBuffer = Buffer<f32>(BufferBinding::KERNEL, m_r * m_r);
	imul	rsi, rsi	 # powmult_93, _1
 # source/animal.cpp:17: 	void Animal::Bind() {
	mov	rbx, rcx	 # this, tmp236
 # include/gl_setup.hpp:48: 			glGenBuffers(1, &m_ID);
	lea	rdx, 32[rsp]	 # tmp175,
	mov	ecx, 1	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:99: 	: _M_start(), _M_finish(), _M_end_of_storage()
	mov	QWORD PTR 56[rsp], 0	 # MEM[(struct _Vector_impl_data *)&D.143201 + 8B]._M_end_of_storage,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:99: 	: _M_start(), _M_finish(), _M_end_of_storage()
	vmovdqu	XMMWORD PTR 40[rsp], xmm0	 # MEM <vector(2) long long unsigned int> [(float * *)&D.143201 + 8B], tmp174
.LEHB9:
 # include/gl_setup.hpp:48: 			glGenBuffers(1, &m_ID);
	call	[QWORD PTR [rax]]	 # glad_glGenBuffers
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:114: 	  _M_start = __x._M_start;
	mov	rcx, QWORD PTR 40[rsp]	 # _63, MEM[(const struct _Vector_impl_data &)&D.143201 + 8]._M_start
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:114: 	  _M_start = __x._M_start;
	vpxor	xmm0, xmm0, xmm0	 # tmp178
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:116: 	  _M_end_of_storage = __x._M_end_of_storage;
	mov	rdx, QWORD PTR 56[rsp]	 # _64, MEM[(const struct _Vector_impl_data &)&D.143201 + 8]._M_end_of_storage
 # include/gl_setup.hpp:49: 			m_binding = binding;
	mov	DWORD PTR 36[rsp], 2	 # D.143201.m_binding,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:116: 	  _M_end_of_storage = __x._M_end_of_storage;
	mov	QWORD PTR 56[rsp], 0	 # MEM[(struct _Vector_impl_data *)&D.143201 + 8B]._M_end_of_storage,
	mov	eax, 2	 # _52,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:114: 	  _M_start = __x._M_start;
	vmovdqu	XMMWORD PTR 40[rsp], xmm0	 # MEM <vector(2) long long unsigned int> [(float * *)&D.143201 + 8B], tmp178
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:388: 	if (__p)
	test	rcx, rcx	 # _63
	je	.L219	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	sub	rdx, rcx	 # _68, _63
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
 # include/gl_setup.hpp:51:             glBindBufferBase(GL_SHADER_STORAGE_BUFFER, (u8)m_binding, m_ID);
	movzx	eax, BYTE PTR 36[rsp]	 # _52, D.143201.m_binding
.L219:
	mov	edx, eax	 #, _52
	mov	rax, QWORD PTR .refptr.glad_glBindBufferBase[rip]	 # tmp182,
	mov	r8d, DWORD PTR 32[rsp]	 #, D.143201.m_ID
	mov	ecx, 37074	 #,
	call	[QWORD PTR [rax]]	 # glad_glBindBufferBase
.LEHE9:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	mov	rax, QWORD PTR 48[rsp]	 # _39, MEM[(const struct vector *)&D.143201 + 8B].D.142868._M_impl.D.142166._M_finish
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	mov	rdi, QWORD PTR 40[rsp]	 # _40, MEM[(const struct vector *)&D.143201 + 8B].D.142868._M_impl.D.142166._M_start
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:811: 	  size_type __navail = size_type(this->_M_impl._M_end_of_storage
	mov	rbp, QWORD PTR 56[rsp]	 # prephitmp_90, MEM[(struct vector *)&D.143201 + 8B].D.142868._M_impl.D.142166._M_end_of_storage
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	mov	r12, rax	 # _41, _39
	sub	r12, rdi	 # _41, _40
	mov	rdx, r12	 # _42, _41
	sar	rdx, 2	 # _42,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1015: 	if (__new_size > size())
	cmp	rdx, rsi	 # _42, powmult_93
	jb	.L263	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1018: 	  _M_erase_at_end(this->_M_impl._M_start + __new_size);
	lea	rcx, [rdi+rsi*4]	 # tmp235,
	cmp	rsi, rdx	 # powmult_93, _42
	cmovb	rax, rcx	 # tmp235,, _39
.L226:
 # include/gl_setup.hpp:40:     struct Buffer {
	mov	rdx, QWORD PTR 32[rsp]	 # MEM <unsigned long long> [(void *)&D.143201], MEM <unsigned long long> [(void *)&D.143201]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:114: 	  _M_start = __x._M_start;
	mov	rcx, QWORD PTR 264[rbx]	 # _27, MEM[(const struct _Vector_impl_data &)this_4(D) + 264]._M_start
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:114: 	  _M_start = __x._M_start;
	vpxor	xmm0, xmm0, xmm0	 # tmp224
	mov	QWORD PTR 264[rbx], rdi	 # MEM[(struct _Vector_impl_data *)this_4(D) + 264B]._M_start, _40
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:115: 	  _M_finish = __x._M_finish;
	mov	QWORD PTR 272[rbx], rax	 # MEM[(struct _Vector_impl_data *)this_4(D) + 264B]._M_finish, _39
 # include/gl_setup.hpp:40:     struct Buffer {
	mov	QWORD PTR 256[rbx], rdx	 # MEM <unsigned long long> [(void *)this_4(D) + 256B], MEM <unsigned long long> [(void *)&D.143201]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:116: 	  _M_end_of_storage = __x._M_end_of_storage;
	mov	rdx, QWORD PTR 280[rbx]	 # _28, MEM[(const struct _Vector_impl_data &)this_4(D) + 264]._M_end_of_storage
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:116: 	  _M_end_of_storage = __x._M_end_of_storage;
	mov	QWORD PTR 56[rsp], 0	 # MEM[(struct _Vector_impl_data *)&D.143201 + 8B]._M_end_of_storage,
	mov	QWORD PTR 280[rbx], rbp	 # MEM[(struct _Vector_impl_data *)this_4(D) + 264B]._M_end_of_storage, prephitmp_90
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:114: 	  _M_start = __x._M_start;
	vmovdqu	XMMWORD PTR 40[rsp], xmm0	 # MEM <vector(2) long long unsigned int> [(float * *)&D.143201 + 8B], tmp224
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:388: 	if (__p)
	test	rcx, rcx	 # _27
	je	.L235	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	sub	rdx, rcx	 # _32, _27
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rcx, QWORD PTR 40[rsp]	 # _14, MEM[(struct _Vector_base *)&D.143201 + 8B]._M_impl.D.142166._M_start
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rdx, QWORD PTR 56[rsp]	 # _15, MEM[(struct _Vector_base *)&D.143201 + 8B]._M_impl.D.142166._M_end_of_storage
	sub	rdx, rcx	 # _15, _14
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:388: 	if (__p)
	test	rcx, rcx	 # _14
	je	.L235	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L235:
 # source/animal.cpp:19: 		ComputeKernel();
	mov	rcx, rbx	 #, this
.LEHB10:
	call	_ZN5Lenia6Animal13ComputeKernelEv	 #
 # include/gl_setup.hpp:79:             glNamedBufferData(m_ID, m_data.size() * sizeof(T), &m_data[0], GL_DYNAMIC_COPY);
	mov	rax, QWORD PTR .refptr.glad_glNamedBufferData[rip]	 # tmp232,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1131: 	return *(this->_M_impl._M_start + __n);
	mov	r8, QWORD PTR 264[rbx]	 # _9, MEM[(struct vector *)this_4(D) + 264B].D.142868._M_impl.D.142166._M_start
 # include/gl_setup.hpp:79:             glNamedBufferData(m_ID, m_data.size() * sizeof(T), &m_data[0], GL_DYNAMIC_COPY);
	mov	r9d, 35050	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	mov	rdx, QWORD PTR 272[rbx]	 # _11, MEM[(const struct vector *)this_4(D) + 264B].D.142868._M_impl.D.142166._M_finish
 # include/gl_setup.hpp:79:             glNamedBufferData(m_ID, m_data.size() * sizeof(T), &m_data[0], GL_DYNAMIC_COPY);
	mov	ecx, DWORD PTR 256[rbx]	 # MEM[(struct Buffer *)this_4(D) + 256B].m_ID, MEM[(struct Buffer *)this_4(D) + 256B].m_ID
	mov	rax, QWORD PTR [rax]	 # glad_glNamedBufferData, glad_glNamedBufferData
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	sub	rdx, r8	 # _11, _9
 # source/animal.cpp:21: 	}
	add	rsp, 64	 #,
	pop	rbx	 #
	pop	rsi	 #
	pop	rdi	 #
	pop	rbp	 #
	pop	r12	 #
	pop	r13	 #
	pop	r14	 #
 # include/gl_setup.hpp:79:             glNamedBufferData(m_ID, m_data.size() * sizeof(T), &m_data[0], GL_DYNAMIC_COPY);
	rex.W jmp	rax	 # glad_glNamedBufferData
.LEHE10:
	.p2align 4,,10
	.p2align 3
.L263:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:812: 					 - this->_M_impl._M_finish);
	mov	rcx, rbp	 # _76, prephitmp_90
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1016: 	  _M_default_append(__new_size - size());
	mov	r13, rsi	 # _44, powmult_93
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:812: 					 - this->_M_impl._M_finish);
	sub	rcx, rax	 # _76, _39
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1016: 	  _M_default_append(__new_size - size());
	sub	r13, rdx	 # _44, _42
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:812: 					 - this->_M_impl._M_finish);
	sar	rcx, 2	 # _77,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:817: 	  if (__navail >= __n)
	cmp	rcx, r13	 # _77, _44
	jnb	.L264	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:814: 	  if (__size > max_size() || __navail > max_size() - __size)
	movabs	rax, 2305843009213693951	 # tmp200,
	sub	rax, rdx	 # _80, _42
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1908: 	if (max_size() - size() < __n)
	cmp	rax, r13	 # _80, _44
	jb	.L265	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1912: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	movabs	rax, 2305843009213693951	 # tmp240,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:262:       if (__a < __b)
	cmp	rdx, r13	 # _42, _44
	mov	rbp, r13	 # _138, _44
	cmovnb	rbp, rdx	 # _42,, _138
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1911: 	const size_type __len = size() + (std::max)(size(), __n);
	add	rbp, rdx	 # __len_131, _42
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1912: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	cmp	rbp, rax	 # __len_131, tmp240
	cmova	rbp, rax	 # __len_131,, __len_131, tmp240
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	sal	rbp, 2	 # _118,
	mov	rcx, rbp	 #, _118
.LEHB11:
	call	_Znwy	 #
	mov	r14, rax	 # _119, tmp238
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:863: 		std::__uninitialized_default_n_a(__new_start + __size, __n,
	lea	rax, [rax+r12]	 # _86,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_construct.h:119:       ::new((void*)__p) _Tp(std::forward<_Args>(__args)...);
	mov	DWORD PTR [rax], 0x00000000	 # *_86,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:1146:       if (__n <= 0)
	sub	r13, 1	 # _121,
	je	.L231	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:1151:       std::__fill_a(__first, __first + __n, __value);
	lea	rcx, 4[rax]	 # __first,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:952: 	*__first = __tmp;
	lea	r8, 0[0+r13*4]	 #,
	xor	edx, edx	 #
	call	memset	 #
.L231:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:903: 		__guard._M_len = this->_M_impl._M_end_of_storage - __old_start;
	mov	r13, QWORD PTR 56[rsp]	 # pretmp_82, MEM[(struct vector *)&D.143201 + 8B].D.142868._M_impl.D.142166._M_end_of_storage
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_uninitialized.h:1117:       if (__count > 0)
	test	r12, r12	 # _41
	jne	.L266	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:851: 		  if (_M_storage)
	test	rdi, rdi	 # _40
	jne	.L232	 #,
.L233:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:909: 	      this->_M_impl._M_finish = __new_start + __size + __n;
	lea	rax, [r14+rsi*4]	 # _39,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:910: 	      this->_M_impl._M_end_of_storage = __new_start + __len;
	add	rbp, r14	 # prephitmp_90, _119
	mov	rdi, r14	 # _40, _119
	jmp	.L226	 #
	.p2align 4,,10
	.p2align 3
.L264:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_construct.h:119:       ::new((void*)__p) _Tp(std::forward<_Args>(__args)...);
	mov	DWORD PTR [rax], 0x00000000	 # *_39,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_uninitialized.h:667: 	      ++__first;
	lea	rcx, 4[rax]	 # __first,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:1146:       if (__n <= 0)
	sub	r13, 1	 # _98,
	je	.L240	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:1151:       std::__fill_a(__first, __first + __n, __value);
	lea	rsi, [rcx+r13*4]	 # _100,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:952: 	*__first = __tmp;
	mov	rdx, rsi	 # _180, _100
	sub	rdx, rax	 # _180, _39
	lea	r8, -4[rdx]	 #,
	xor	edx, edx	 #
	call	memset	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:1152:       return __first + __n;
	mov	rax, rsi	 # _39, _100
	jmp	.L226	 #
	.p2align 4,,10
	.p2align 3
.L266:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_uninitialized.h:1129: 	  __builtin_memcpy(__result, __first, __count * sizeof(_Tp));
	mov	r8, r12	 #, _41
	mov	rdx, rdi	 #, _40
	mov	rcx, r14	 #, _119
	call	memcpy	 #
.L232:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:903: 		__guard._M_len = this->_M_impl._M_end_of_storage - __old_start;
	mov	rdx, r13	 # pretmp_82, pretmp_82
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	rcx, rdi	 #, _40
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:903: 		__guard._M_len = this->_M_impl._M_end_of_storage - __old_start;
	sub	rdx, rdi	 # pretmp_82, _40
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/alloc_traits.h:513:       { __a.deallocate(__p, __n); }
	jmp	.L233	 #
	.p2align 4,,10
	.p2align 3
.L240:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:1147: 	return __first;
	mov	rax, rcx	 # _39, __first
	jmp	.L226	 #
.L265:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1909: 	  __throw_length_error(__N(__s));
	lea	rcx, .LC20[rip]	 # tmp201,
	call	_ZSt20__throw_length_errorPKc	 #
.LEHE11:
.L242:
.L262:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rcx, QWORD PTR 40[rsp]	 # _36,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rdx, QWORD PTR 56[rsp]	 # _37,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rbx, rax	 # tmp226, tmp239
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	sub	rdx, rcx	 # _37, _36
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:388: 	if (__p)
	test	rcx, rcx	 # _36
	je	.L259	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	vzeroupper
	call	_ZdlPvy	 #
.L237:
	mov	rcx, rbx	 #, tmp226
.LEHB12:
	call	_Unwind_Resume	 #
.LEHE12:
.L241:
	jmp	.L262	 #
.L259:
	vzeroupper
	jmp	.L237	 #
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6270:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6270-.LLSDACSB6270
.LLSDACSB6270:
	.uleb128 .LEHB9-.LFB6270
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L242-.LFB6270
	.uleb128 0
	.uleb128 .LEHB10-.LFB6270
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB11-.LFB6270
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L241-.LFB6270
	.uleb128 0
	.uleb128 .LEHB12-.LFB6270
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
.LLSDACSE6270:
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
.LFB6953:
	.seh_endprologue
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rax, QWORD PTR [rcx]	 # _5, MEM[(const struct basic_string *)this_4(D)]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:246: 	return std::pointer_traits<const_pointer>::pointer_to(*_M_local_buf);
	lea	rdx, 16[rcx]	 # _6,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:269: 	if (_M_data() == _M_local_data())
	cmp	rax, rdx	 # _5, _6
	je	.L269	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	mov	rdx, QWORD PTR 16[rcx]	 # this_4(D)->D.37839._M_allocated_capacity, this_4(D)->D.37839._M_allocated_capacity
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	rcx, rax	 #, _5
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:294:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	add	rdx, 1	 # _8,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:289:       }
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	jmp	_ZdlPvy	 #
	.p2align 4,,10
	.p2align 3
.L269:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:289:       }
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
.LFB6265:
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
	vmovups	XMMWORD PTR 32[rsp], xmm6	 #,
	.seh_savexmm	xmm6, 32
	.seh_endprologue
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:1084:       { return _M_string_length; }
	mov	rdi, QWORD PTR 8[rdx]	 # _58, MEM[(const struct basic_string *)taxonomy_9(D)]._M_string_length
 # source/animal.cpp:5: 	Animal::Animal(const Taxonomy taxonomy, const u32 r, const f32 dt, const f32* beta, const u8 b, const f32 mu, const f32 sigma,
	mov	r13d, DWORD PTR 168[rsp]	 # b, b
	mov	r12, QWORD PTR 208[rsp]	 # rle, rle
	mov	rbx, rcx	 # this, tmp235
 # source/animal.cpp:7: 		m_taxonomy(taxonomy), m_r(r), m_dt(dt), m_beta(beta), m_b(b), m_mu(mu), m_sigma(sigma), m_kn(kn), m_gn(gn), m_rle(rle) {
	lea	r14, 16[rcx]	 # _1,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:235: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	lea	rcx, 32[rcx]	 # _56,
 # source/animal.cpp:5: 	Animal::Animal(const Taxonomy taxonomy, const u32 r, const f32 dt, const f32* beta, const u8 b, const f32 mu, const f32 sigma,
	mov	rsi, rdx	 # taxonomy, tmp236
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:198: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	mov	QWORD PTR 16[rbx], rcx	 # MEM[(struct _Alloc_hider *)this_7(D) + 16B]._M_p, _56
 # source/animal.cpp:5: 	Animal::Animal(const Taxonomy taxonomy, const u32 r, const f32 dt, const f32* beta, const u8 b, const f32 mu, const f32 sigma,
	mov	ebp, r8d	 # r, tmp237
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	r15, QWORD PTR [rdx]	 # _57, MEM[(const struct basic_string *)taxonomy_9(D)]._M_dataplus._M_p
 # source/animal.cpp:5: 	Animal::Animal(const Taxonomy taxonomy, const u32 r, const f32 dt, const f32* beta, const u8 b, const f32 mu, const f32 sigma,
	vmovss	xmm6, xmm3, xmm3	 # dt, tmp238
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:227: 	if (__dnew > size_type(_S_local_capacity))
	cmp	rdi, 15	 # _58,
	ja	.L345	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:432: 	if (__n == 1)
	cmp	rdi, 1	 # _58,
	je	.L346	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:421: 	if (__n == 0)
	test	rdi, rdi	 # _58
	jne	.L274	 #,
.L276:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:223:       { _M_string_length = __length; }
	mov	QWORD PTR 24[rbx], rdi	 # MEM[(struct basic_string *)this_7(D) + 16B]._M_string_length, _58
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR [rcx+rdi], 0	 # MEM[(char_type &)_97],
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:1084:       { return _M_string_length; }
	mov	rdi, QWORD PTR 40[rsi]	 # _63, MEM[(const struct basic_string *)taxonomy_9(D) + 32B]._M_string_length
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:235: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	lea	rcx, 64[rbx]	 # _61,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:198: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	mov	QWORD PTR 48[rbx], rcx	 # MEM[(struct _Alloc_hider *)this_7(D) + 48B]._M_p, _61
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	r15, QWORD PTR 32[rsi]	 # _62, MEM[(const struct basic_string *)taxonomy_9(D) + 32B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:227: 	if (__dnew > size_type(_S_local_capacity))
	cmp	rdi, 15	 # _63,
	ja	.L347	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:432: 	if (__n == 1)
	cmp	rdi, 1	 # _63,
	jne	.L282	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	movzx	edx, BYTE PTR [r15]	 # _85, MEM[(const char_type &)_62]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR 64[rbx], dl	 # MEM[(char_type &)this_7(D) + 64], _85
.L283:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:223:       { _M_string_length = __length; }
	mov	QWORD PTR 56[rbx], rdi	 # MEM[(struct basic_string *)this_7(D) + 48B]._M_string_length, _63
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR [rcx+rdi], 0	 # MEM[(char_type &)_88],
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:1084:       { return _M_string_length; }
	mov	rdi, QWORD PTR 72[rsi]	 # _68, MEM[(const struct basic_string *)taxonomy_9(D) + 64B]._M_string_length
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:235: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	lea	rcx, 96[rbx]	 # _66,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:198: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	mov	QWORD PTR 80[rbx], rcx	 # MEM[(struct _Alloc_hider *)this_7(D) + 80B]._M_p, _66
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	r15, QWORD PTR 64[rsi]	 # _67, MEM[(const struct basic_string *)taxonomy_9(D) + 64B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:227: 	if (__dnew > size_type(_S_local_capacity))
	cmp	rdi, 15	 # _68,
	ja	.L348	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:432: 	if (__n == 1)
	cmp	rdi, 1	 # _68,
	jne	.L289	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	movzx	edx, BYTE PTR [r15]	 # _125, MEM[(const char_type &)_67]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR 96[rbx], dl	 # MEM[(char_type &)this_7(D) + 96], _125
.L290:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:223:       { _M_string_length = __length; }
	mov	QWORD PTR 88[rbx], rdi	 # MEM[(struct basic_string *)this_7(D) + 80B]._M_string_length, _68
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR [rcx+rdi], 0	 # MEM[(char_type &)_128],
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:1084:       { return _M_string_length; }
	mov	rdi, QWORD PTR 104[rsi]	 # _73, MEM[(const struct basic_string *)taxonomy_9(D) + 96B]._M_string_length
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:235: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	lea	rcx, 128[rbx]	 # _71,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:198: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	mov	QWORD PTR 112[rbx], rcx	 # MEM[(struct _Alloc_hider *)this_7(D) + 112B]._M_p, _71
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	r15, QWORD PTR 96[rsi]	 # _72, MEM[(const struct basic_string *)taxonomy_9(D) + 96B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:227: 	if (__dnew > size_type(_S_local_capacity))
	cmp	rdi, 15	 # _73,
	ja	.L349	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:432: 	if (__n == 1)
	cmp	rdi, 1	 # _73,
	jne	.L296	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	movzx	edx, BYTE PTR [r15]	 # _145, MEM[(const char_type &)_72]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR 128[rbx], dl	 # MEM[(char_type &)this_7(D) + 128], _145
.L297:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:223:       { _M_string_length = __length; }
	mov	QWORD PTR 120[rbx], rdi	 # MEM[(struct basic_string *)this_7(D) + 112B]._M_string_length, _73
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR [rcx+rdi], 0	 # MEM[(char_type &)_148],
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:235: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	lea	rcx, 160[rbx]	 # _76,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:198: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	mov	QWORD PTR 144[rbx], rcx	 # MEM[(struct _Alloc_hider *)this_7(D) + 144B]._M_p, _76
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rdi, QWORD PTR 128[rsi]	 # _77, MEM[(const struct basic_string *)taxonomy_9(D) + 128B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:1084:       { return _M_string_length; }
	mov	rsi, QWORD PTR 136[rsi]	 # _78, MEM[(const struct basic_string *)taxonomy_9(D) + 128B]._M_string_length
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:227: 	if (__dnew > size_type(_S_local_capacity))
	cmp	rsi, 15	 # _78,
	ja	.L350	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:432: 	if (__n == 1)
	cmp	rsi, 1	 # _78,
	jne	.L303	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	movzx	edx, BYTE PTR [rdi]	 # _165, MEM[(const char_type &)_77]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR 160[rbx], dl	 # MEM[(char_type &)this_7(D) + 160], _165
.L304:
 # source/animal.cpp:7: 		m_taxonomy(taxonomy), m_r(r), m_dt(dt), m_beta(beta), m_b(b), m_mu(mu), m_sigma(sigma), m_kn(kn), m_gn(gn), m_rle(rle) {
	mov	eax, ebp	 # tmp256, r
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:223:       { _M_string_length = __length; }
	mov	QWORD PTR 152[rbx], rsi	 # MEM[(struct basic_string *)this_7(D) + 144B]._M_string_length, _78
 # source/animal.cpp:7: 		m_taxonomy(taxonomy), m_r(r), m_dt(dt), m_beta(beta), m_b(b), m_mu(mu), m_sigma(sigma), m_kn(kn), m_gn(gn), m_rle(rle) {
	vmovss	xmm1, DWORD PTR 176[rsp]	 # tmp257, mu
	vinsertps	xmm0, xmm1, DWORD PTR 184[rsp], 0x10	 # _365, tmp257, sigma
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR [rcx+rsi], 0	 # MEM[(char_type &)_168],
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:235: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	lea	rcx, 240[rbx]	 # _32,
 # source/animal.cpp:7: 		m_taxonomy(taxonomy), m_r(r), m_dt(dt), m_beta(beta), m_b(b), m_mu(mu), m_sigma(sigma), m_kn(kn), m_gn(gn), m_rle(rle) {
	mov	QWORD PTR 176[rbx], rax	 # *this_7(D).m_r, tmp256
 # source/animal.cpp:7: 		m_taxonomy(taxonomy), m_r(r), m_dt(dt), m_beta(beta), m_b(b), m_mu(mu), m_sigma(sigma), m_kn(kn), m_gn(gn), m_rle(rle) {
	mov	rax, QWORD PTR 160[rsp]	 # beta, beta
 # source/animal.cpp:7: 		m_taxonomy(taxonomy), m_r(r), m_dt(dt), m_beta(beta), m_b(b), m_mu(mu), m_sigma(sigma), m_kn(kn), m_gn(gn), m_rle(rle) {
	mov	BYTE PTR 200[rbx], r13b	 # *this_7(D).m_b, b
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:1084:       { return _M_string_length; }
	mov	rsi, QWORD PTR 8[r12]	 # _34, MEM[(const struct basic_string *)rle_27(D)]._M_string_length
 # source/animal.cpp:7: 		m_taxonomy(taxonomy), m_r(r), m_dt(dt), m_beta(beta), m_b(b), m_mu(mu), m_sigma(sigma), m_kn(kn), m_gn(gn), m_rle(rle) {
	mov	QWORD PTR 192[rbx], rax	 # *this_7(D).m_beta, beta
 # source/animal.cpp:7: 		m_taxonomy(taxonomy), m_r(r), m_dt(dt), m_beta(beta), m_b(b), m_mu(mu), m_sigma(sigma), m_kn(kn), m_gn(gn), m_rle(rle) {
	mov	eax, DWORD PTR 192[rsp]	 # kn, kn
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:198: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	mov	QWORD PTR 224[rbx], rcx	 # MEM[(struct _Alloc_hider *)this_7(D) + 224B]._M_p, _32
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rdi, QWORD PTR [r12]	 # _33, MEM[(const struct basic_string *)rle_27(D)]._M_dataplus._M_p
 # source/animal.cpp:7: 		m_taxonomy(taxonomy), m_r(r), m_dt(dt), m_beta(beta), m_b(b), m_mu(mu), m_sigma(sigma), m_kn(kn), m_gn(gn), m_rle(rle) {
	mov	DWORD PTR 212[rbx], eax	 # *this_7(D).m_kn, kn
 # source/animal.cpp:7: 		m_taxonomy(taxonomy), m_r(r), m_dt(dt), m_beta(beta), m_b(b), m_mu(mu), m_sigma(sigma), m_kn(kn), m_gn(gn), m_rle(rle) {
	mov	eax, DWORD PTR 200[rsp]	 # gn, gn
 # source/animal.cpp:7: 		m_taxonomy(taxonomy), m_r(r), m_dt(dt), m_beta(beta), m_b(b), m_mu(mu), m_sigma(sigma), m_kn(kn), m_gn(gn), m_rle(rle) {
	vmovss	DWORD PTR 184[rbx], xmm6	 # *this_7(D).m_dt, dt
 # source/animal.cpp:7: 		m_taxonomy(taxonomy), m_r(r), m_dt(dt), m_beta(beta), m_b(b), m_mu(mu), m_sigma(sigma), m_kn(kn), m_gn(gn), m_rle(rle) {
	mov	DWORD PTR 216[rbx], eax	 # *this_7(D).m_gn, gn
 # source/animal.cpp:7: 		m_taxonomy(taxonomy), m_r(r), m_dt(dt), m_beta(beta), m_b(b), m_mu(mu), m_sigma(sigma), m_kn(kn), m_gn(gn), m_rle(rle) {
	vmovlps	QWORD PTR 204[rbx], xmm0	 # MEM <vector(2) float> [(float *)this_7(D) + 204B], _365
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:227: 	if (__dnew > size_type(_S_local_capacity))
	cmp	rsi, 15	 # _34,
	ja	.L351	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:432: 	if (__n == 1)
	cmp	rsi, 1	 # _34,
	jne	.L315	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	movzx	edx, BYTE PTR [rdi]	 # _51, MEM[(const char_type &)_33]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR 240[rbx], dl	 # MEM[(char_type &)this_7(D) + 240], _51
.L316:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:99: 	: _M_start(), _M_finish(), _M_end_of_storage()
	vpxor	xmm0, xmm0, xmm0	 # tmp231
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:223:       { _M_string_length = __length; }
	mov	QWORD PTR 232[rbx], rsi	 # MEM[(struct basic_string *)this_7(D) + 224B]._M_string_length, _34
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR [rcx+rsi], 0	 # MEM[(char_type &)_54],
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:99: 	: _M_start(), _M_finish(), _M_end_of_storage()
	mov	QWORD PTR 280[rbx], 0	 # MEM[(struct _Vector_impl_data *)this_7(D) + 264B]._M_end_of_storage,
 # source/animal.cpp:10: 			m_dx2 = 1.f;
	mov	DWORD PTR 188[rbx], 0x3f800000	 # *this_7(D).m_dx2,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:99: 	: _M_start(), _M_finish(), _M_end_of_storage()
	vmovdqu	XMMWORD PTR 264[rbx], xmm0	 # MEM <vector(2) long long unsigned int> [(float * *)this_7(D) + 264B], tmp231
 # source/animal.cpp:8: 			m_w = 0;
	vmovdqu	XMMWORD PTR [rbx], xmm0	 # MEM <vector(2) long long unsigned int> [(long long unsigned int *)this_7(D)], tmp231
 # source/animal.cpp:11: 		}
	vmovups	xmm6, XMMWORD PTR 32[rsp]	 #,
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
.L346:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	movzx	edx, BYTE PTR [r15]	 # _94, MEM[(const char_type &)_57]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:350: 	__c1 = __c2;
	mov	BYTE PTR 32[rbx], dl	 # MEM[(char_type &)this_7(D) + 32], _94
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:351:       }
	jmp	.L276	 #
	.p2align 4,,10
	.p2align 3
.L345:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:143:       if (__capacity > max_size())
	test	rdi, rdi	 # _58
	js	.L352	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:134: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	mov	rcx, rdi	 # _103, _58
	add	rcx, 1	 # _103,
	js	.L353	 #,
.LEHB13:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwy	 #
.LEHE13:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:255:       { _M_allocated_capacity = __capacity; }
	mov	QWORD PTR 32[rbx], rdi	 # MEM[(struct basic_string *)this_7(D) + 16B].D.37839._M_allocated_capacity, _58
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:218:       { _M_dataplus._M_p = __p; }
	mov	QWORD PTR 16[rbx], rax	 # MEM[(struct basic_string *)this_7(D) + 16B]._M_dataplus._M_p, _56
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	rcx, rax	 # _56, tmp239
.L274:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	r8, rdi	 #, _58
	mov	rdx, r15	 #, _57
	call	memcpy	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rcx, QWORD PTR 16[rbx]	 # _56, MEM[(const struct basic_string *)this_7(D) + 16B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	jmp	.L276	 #
	.p2align 4,,10
	.p2align 3
.L282:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:421: 	if (__n == 0)
	test	rdi, rdi	 # _63
	je	.L283	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	r8, rdi	 #, _63
	mov	rdx, r15	 #, _62
	call	memcpy	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rcx, QWORD PTR 48[rbx]	 # _61, MEM[(const struct basic_string *)this_7(D) + 48B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	jmp	.L283	 #
	.p2align 4,,10
	.p2align 3
.L347:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:143:       if (__capacity > max_size())
	test	rdi, rdi	 # _63
	js	.L354	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:134: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	mov	rcx, rdi	 # _114, _63
	add	rcx, 1	 # _114,
	js	.L355	 #,
.LEHB14:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwy	 #
.LEHE14:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:218:       { _M_dataplus._M_p = __p; }
	mov	QWORD PTR 48[rbx], rax	 # MEM[(struct basic_string *)this_7(D) + 48B]._M_dataplus._M_p, _61
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	rcx, rax	 # _61, tmp240
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	r8, rdi	 #, _63
	mov	rdx, r15	 #, _62
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:255:       { _M_allocated_capacity = __capacity; }
	mov	QWORD PTR 64[rbx], rdi	 # MEM[(struct basic_string *)this_7(D) + 48B].D.37839._M_allocated_capacity, _63
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	call	memcpy	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rcx, QWORD PTR 48[rbx]	 # _61, MEM[(const struct basic_string *)this_7(D) + 48B]._M_dataplus._M_p
	jmp	.L283	 #
	.p2align 4,,10
	.p2align 3
.L289:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:421: 	if (__n == 0)
	test	rdi, rdi	 # _68
	je	.L290	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	r8, rdi	 #, _68
	mov	rdx, r15	 #, _67
	call	memcpy	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rcx, QWORD PTR 80[rbx]	 # _66, MEM[(const struct basic_string *)this_7(D) + 80B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	jmp	.L290	 #
	.p2align 4,,10
	.p2align 3
.L348:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:143:       if (__capacity > max_size())
	test	rdi, rdi	 # _68
	js	.L356	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:134: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	mov	rcx, rdi	 # _134, _68
	add	rcx, 1	 # _134,
	js	.L357	 #,
.LEHB15:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwy	 #
.LEHE15:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:218:       { _M_dataplus._M_p = __p; }
	mov	QWORD PTR 80[rbx], rax	 # MEM[(struct basic_string *)this_7(D) + 80B]._M_dataplus._M_p, _66
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	rcx, rax	 # _66, tmp241
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	r8, rdi	 #, _68
	mov	rdx, r15	 #, _67
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:255:       { _M_allocated_capacity = __capacity; }
	mov	QWORD PTR 96[rbx], rdi	 # MEM[(struct basic_string *)this_7(D) + 80B].D.37839._M_allocated_capacity, _68
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	call	memcpy	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rcx, QWORD PTR 80[rbx]	 # _66, MEM[(const struct basic_string *)this_7(D) + 80B]._M_dataplus._M_p
	jmp	.L290	 #
	.p2align 4,,10
	.p2align 3
.L296:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:421: 	if (__n == 0)
	test	rdi, rdi	 # _73
	je	.L297	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	r8, rdi	 #, _73
	mov	rdx, r15	 #, _72
	call	memcpy	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rcx, QWORD PTR 112[rbx]	 # _71, MEM[(const struct basic_string *)this_7(D) + 112B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	jmp	.L297	 #
	.p2align 4,,10
	.p2align 3
.L349:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:143:       if (__capacity > max_size())
	test	rdi, rdi	 # _73
	js	.L358	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:134: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	mov	rcx, rdi	 # _154, _73
	add	rcx, 1	 # _154,
	js	.L359	 #,
.LEHB16:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwy	 #
.LEHE16:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:218:       { _M_dataplus._M_p = __p; }
	mov	QWORD PTR 112[rbx], rax	 # MEM[(struct basic_string *)this_7(D) + 112B]._M_dataplus._M_p, _71
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	rcx, rax	 # _71, tmp242
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	r8, rdi	 #, _73
	mov	rdx, r15	 #, _72
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:255:       { _M_allocated_capacity = __capacity; }
	mov	QWORD PTR 128[rbx], rdi	 # MEM[(struct basic_string *)this_7(D) + 112B].D.37839._M_allocated_capacity, _73
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	call	memcpy	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rcx, QWORD PTR 112[rbx]	 # _71, MEM[(const struct basic_string *)this_7(D) + 112B]._M_dataplus._M_p
	jmp	.L297	 #
	.p2align 4,,10
	.p2align 3
.L303:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:421: 	if (__n == 0)
	test	rsi, rsi	 # _78
	je	.L304	 #,
	.p2align 4
	.p2align 3
.L302:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	r8, rsi	 #, _78
	mov	rdx, rdi	 #, _77
	call	memcpy	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rcx, QWORD PTR 144[rbx]	 # _76, MEM[(const struct basic_string *)this_7(D) + 144B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	jmp	.L304	 #
	.p2align 4,,10
	.p2align 3
.L350:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:143:       if (__capacity > max_size())
	test	rsi, rsi	 # _78
	js	.L360	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:134: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	mov	rcx, rsi	 # _174, _78
	add	rcx, 1	 # _174,
	js	.L361	 #,
.LEHB17:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwy	 #
.LEHE17:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:218:       { _M_dataplus._M_p = __p; }
	mov	QWORD PTR 144[rbx], rax	 # MEM[(struct basic_string *)this_7(D) + 144B]._M_dataplus._M_p, _76
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	rcx, rax	 # _76, tmp243
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:255:       { _M_allocated_capacity = __capacity; }
	mov	QWORD PTR 160[rbx], rsi	 # MEM[(struct basic_string *)this_7(D) + 144B].D.37839._M_allocated_capacity, _78
	jmp	.L302	 #
	.p2align 4,,10
	.p2align 3
.L315:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:421: 	if (__n == 0)
	test	rsi, rsi	 # _34
	je	.L316	 #,
	.p2align 4
	.p2align 3
.L314:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	mov	r8, rsi	 #, _34
	mov	rdx, rdi	 #, _33
	call	memcpy	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:228:       { return _M_dataplus._M_p; }
	mov	rcx, QWORD PTR 224[rbx]	 # _32, MEM[(const struct basic_string *)this_7(D) + 224B]._M_dataplus._M_p
 # C:/msys64/mingw64/include/c++/14.2.0/bits/char_traits.h:427: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	jmp	.L316	 #
	.p2align 4,,10
	.p2align 3
.L351:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:143:       if (__capacity > max_size())
	test	rsi, rsi	 # _34
	js	.L362	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:134: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	mov	rcx, rsi	 # _185, _34
	add	rcx, 1	 # _185,
	js	.L363	 #,
.LEHB18:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwy	 #
.LEHE18:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:218:       { _M_dataplus._M_p = __p; }
	mov	QWORD PTR 224[rbx], rax	 # MEM[(struct basic_string *)this_7(D) + 224B]._M_dataplus._M_p, _32
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	rcx, rax	 # _32, tmp248
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:255:       { _M_allocated_capacity = __capacity; }
	mov	QWORD PTR 240[rbx], rsi	 # MEM[(struct basic_string *)this_7(D) + 224B].D.37839._M_allocated_capacity, _34
	jmp	.L314	 #
	.p2align 4,,10
	.p2align 3
.L353:
.LEHB19:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:140: 	    std::__throw_bad_alloc();
	call	_ZSt17__throw_bad_allocv	 #
.LEHE19:
	.p2align 4,,10
	.p2align 3
.L355:
.LEHB20:
	call	_ZSt17__throw_bad_allocv	 #
.LEHE20:
	.p2align 4,,10
	.p2align 3
.L357:
.LEHB21:
	call	_ZSt17__throw_bad_allocv	 #
.LEHE21:
	.p2align 4,,10
	.p2align 3
.L359:
.LEHB22:
	call	_ZSt17__throw_bad_allocv	 #
.LEHE22:
	.p2align 4,,10
	.p2align 3
.L361:
.LEHB23:
	call	_ZSt17__throw_bad_allocv	 #
.LEHE23:
	.p2align 4,,10
	.p2align 3
.L363:
.LEHB24:
	call	_ZSt17__throw_bad_allocv	 #
.L362:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:144: 	std::__throw_length_error(__N("basic_string::_M_create"));
	lea	rcx, .LC22[rip]	 # tmp224,
	call	_ZSt20__throw_length_errorPKc	 #
.LEHE24:
.L319:
 # source/animal.cpp:11: 		}
	mov	rbx, rax	 # tmp234, tmp249
	mov	rcx, r14	 #, _1
	vzeroupper
	call	_ZN5Lenia8TaxonomyD1Ev	 #
	mov	rcx, rbx	 #, tmp234
.LEHB25:
	call	_Unwind_Resume	 #
.L352:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:144: 	std::__throw_length_error(__N("basic_string::_M_create"));
	lea	rcx, .LC22[rip]	 # tmp169,
	call	_ZSt20__throw_length_errorPKc	 #
.L322:
 # include/animal.hpp:20: 	struct Taxonomy {
	mov	rsi, rax	 # tmp212, tmp245
	vzeroupper
.L309:
	lea	rcx, 80[rbx]	 # _65,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:809:       { _M_dispose(); }
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv	 #
.L310:
 # include/animal.hpp:20: 	struct Taxonomy {
	lea	rcx, 48[rbx]	 # _60,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:809:       { _M_dispose(); }
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv	 #
.L311:
	mov	rcx, r14	 #, _1
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv	 #
	mov	rcx, rsi	 #, tmp222
	call	_Unwind_Resume	 #
.LEHE25:
.L360:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:144: 	std::__throw_length_error(__N("basic_string::_M_create"));
	lea	rcx, .LC22[rip]	 # tmp201,
.LEHB26:
	call	_ZSt20__throw_length_errorPKc	 #
.LEHE26:
.L323:
 # include/animal.hpp:20: 	struct Taxonomy {
	lea	rcx, 112[rbx]	 # _70,
	mov	rsi, rax	 # tmp213, tmp244
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:809:       { _M_dispose(); }
	vzeroupper
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv	 #
	jmp	.L309	 #
.L358:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:144: 	std::__throw_length_error(__N("basic_string::_M_create"));
	lea	rcx, .LC22[rip]	 # tmp193,
.LEHB27:
	call	_ZSt20__throw_length_errorPKc	 #
.LEHE27:
.L321:
 # include/animal.hpp:20: 	struct Taxonomy {
	mov	rsi, rax	 # tmp218, tmp246
	vzeroupper
	jmp	.L310	 #
.L354:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:144: 	std::__throw_length_error(__N("basic_string::_M_create"));
	lea	rcx, .LC22[rip]	 # tmp177,
.LEHB28:
	call	_ZSt20__throw_length_errorPKc	 #
.LEHE28:
.L320:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.h:809:       { _M_dispose(); }
	mov	rsi, rax	 # tmp222, tmp247
	vzeroupper
	jmp	.L311	 #
.L356:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/basic_string.tcc:144: 	std::__throw_length_error(__N("basic_string::_M_create"));
	lea	rcx, .LC22[rip]	 # tmp185,
.LEHB29:
	call	_ZSt20__throw_length_errorPKc	 #
	nop	
.LEHE29:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6265:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6265-.LLSDACSB6265
.LLSDACSB6265:
	.uleb128 .LEHB13-.LFB6265
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB14-.LFB6265
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L320-.LFB6265
	.uleb128 0
	.uleb128 .LEHB15-.LFB6265
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L321-.LFB6265
	.uleb128 0
	.uleb128 .LEHB16-.LFB6265
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L322-.LFB6265
	.uleb128 0
	.uleb128 .LEHB17-.LFB6265
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L323-.LFB6265
	.uleb128 0
	.uleb128 .LEHB18-.LFB6265
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L319-.LFB6265
	.uleb128 0
	.uleb128 .LEHB19-.LFB6265
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB20-.LFB6265
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L320-.LFB6265
	.uleb128 0
	.uleb128 .LEHB21-.LFB6265
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L321-.LFB6265
	.uleb128 0
	.uleb128 .LEHB22-.LFB6265
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L322-.LFB6265
	.uleb128 0
	.uleb128 .LEHB23-.LFB6265
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L323-.LFB6265
	.uleb128 0
	.uleb128 .LEHB24-.LFB6265
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L319-.LFB6265
	.uleb128 0
	.uleb128 .LEHB25-.LFB6265
	.uleb128 .LEHE25-.LEHB25
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB26-.LFB6265
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L323-.LFB6265
	.uleb128 0
	.uleb128 .LEHB27-.LFB6265
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L322-.LFB6265
	.uleb128 0
	.uleb128 .LEHB28-.LFB6265
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L320-.LFB6265
	.uleb128 0
	.uleb128 .LEHB29-.LFB6265
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L321-.LFB6265
	.uleb128 0
.LLSDACSE6265:
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
 # <anonymous>:
 # <anonymous>:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
 # <anonymous>:
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
 # <anonymous>:
 # <anonymous>:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
 # <anonymous>:
	.quad	_ZTSSt13runtime_error
 # <anonymous>:
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
