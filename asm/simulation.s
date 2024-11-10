	.file	"simulation.cpp"
	.intel_syntax noprefix
 # GNU C++23 (Rev2, Built by MSYS2 project) version 14.2.0 (x86_64-w64-mingw32)
 #	compiled by GNU C version 14.2.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.27-GMP

 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed: -masm=intel -mavx512f -mtune=generic -march=nocona -Ofast -std=c++23
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
.LFB7101:
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
	.seh_endprologue
 # include/gl_setup.hpp:48: 			glGenBuffers(1, &m_ID);
	mov	r13, QWORD PTR .refptr.glad_glGenBuffers[rip]	 # tmp594,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:99: 	: _M_start(), _M_finish(), _M_end_of_storage()
	vpxor	xmm0, xmm0, xmm0	 # tmp354
 # source/simulation.cpp:6: 	Simulation::Simulation(const size_t w, const size_t h, const size_t scale, const ColorPalette& colorPalette) {
	mov	rbp, QWORD PTR 464[rsp]	 # colorPalette, colorPalette
	mov	rsi, rdx	 # w, tmp603
 # include/gl_setup.hpp:48: 			glGenBuffers(1, &m_ID);
	lea	r15, 80[rsp]	 # tmp595,
 # source/simulation.cpp:7: 		m_w = w;
	mov	QWORD PTR [rcx], rdx	 # *this_5(D).m_w, w
 # source/simulation.cpp:6: 	Simulation::Simulation(const size_t w, const size_t h, const size_t scale, const ColorPalette& colorPalette) {
	mov	rbx, rcx	 # this, tmp602
 # source/simulation.cpp:10: 		m_size = w * h;
	imul	rsi, r8	 # _1, h
 # source/simulation.cpp:8: 		m_h = h;
	mov	QWORD PTR 8[rcx], r8	 # *this_5(D).m_h, h
 # include/gl_setup.hpp:48: 			glGenBuffers(1, &m_ID);
	mov	rdx, r15	 #, tmp595
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:99: 	: _M_start(), _M_finish(), _M_end_of_storage()
	mov	QWORD PTR 72[rcx], 0	 # MEM[(struct _Vector_impl_data *)this_5(D) + 56B]._M_end_of_storage,
	mov	QWORD PTR 104[rcx], 0	 # MEM[(struct _Vector_impl_data *)this_5(D) + 88B]._M_end_of_storage,
	mov	QWORD PTR 136[rcx], 0	 # MEM[(struct _Vector_impl_data *)this_5(D) + 120B]._M_end_of_storage,
	mov	QWORD PTR 168[rcx], 0	 # MEM[(struct _Vector_impl_data *)this_5(D) + 152B]._M_end_of_storage,
	mov	QWORD PTR 200[rcx], 0	 # MEM[(struct _Vector_impl_data *)this_5(D) + 184B]._M_end_of_storage,
 # source/simulation.cpp:9: 		m_scale = scale;
	mov	QWORD PTR 16[rcx], r9	 # *this_5(D).m_scale, tmp605
 # source/simulation.cpp:10: 		m_size = w * h;
	mov	QWORD PTR 24[rcx], rsi	 # *this_5(D).m_size, _1
 # source/simulation.cpp:11: 		m_mass = 0.f;
	mov	QWORD PTR 32[rcx], 0x000000000	 # *this_5(D).m_mass,
 # source/simulation.cpp:12: 		m_centerOfMass = Vec2<u32> { 0, 0 };
	mov	QWORD PTR 40[rcx], 0	 # MEM <vector(2) unsigned int> [(unsigned int *)this_5(D) + 40B],
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:99: 	: _M_start(), _M_finish(), _M_end_of_storage()
	vmovdqu	XMMWORD PTR 56[rcx], xmm0	 # MEM <vector(2) long long unsigned int> [(float * *)this_5(D) + 56B], tmp354
	vmovdqu	XMMWORD PTR 88[rcx], xmm0	 # MEM <vector(2) long long unsigned int> [(float * *)this_5(D) + 88B], tmp354
	vmovdqu	XMMWORD PTR 120[rcx], xmm0	 # MEM <vector(2) long long unsigned int> [(struct ShaderData * *)this_5(D) + 120B], tmp354
	vmovdqu	XMMWORD PTR 152[rcx], xmm0	 # MEM <vector(2) long long unsigned int> [(struct ColorPalette * *)this_5(D) + 152B], tmp354
	vmovdqu	XMMWORD PTR 184[rcx], xmm0	 # MEM <vector(2) long long unsigned int> [(struct BoundingBox * *)this_5(D) + 184B], tmp354
 # include/gl_setup.hpp:48: 			glGenBuffers(1, &m_ID);
	mov	ecx, 1	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:99: 	: _M_start(), _M_finish(), _M_end_of_storage()
	mov	QWORD PTR 104[rsp], 0	 # MEM[(struct _Vector_impl_data *)_1013 + 8B]._M_end_of_storage,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:99: 	: _M_start(), _M_finish(), _M_end_of_storage()
	vmovdqu	XMMWORD PTR 88[rsp], xmm0	 # MEM <vector(2) long long unsigned int> [(float * *)_1013 + 8B], tmp354
.LEHB0:
 # include/gl_setup.hpp:48: 			glGenBuffers(1, &m_ID);
	call	[QWORD PTR 0[r13]]	 # glad_glGenBuffers
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:114: 	  _M_start = __x._M_start;
	mov	rcx, QWORD PTR 88[rsp]	 # _230, MEM[(const struct _Vector_impl_data &)_1013 + 8]._M_start
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:114: 	  _M_start = __x._M_start;
	vpxor	xmm0, xmm0, xmm0	 # tmp365
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:116: 	  _M_end_of_storage = __x._M_end_of_storage;
	mov	rdx, QWORD PTR 104[rsp]	 # _231, MEM[(const struct _Vector_impl_data &)_1013 + 8]._M_end_of_storage
 # include/gl_setup.hpp:49: 			m_binding = binding;
	mov	DWORD PTR 84[rsp], 1	 # MEM[(struct Buffer *)_1013].m_binding,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:116: 	  _M_end_of_storage = __x._M_end_of_storage;
	mov	QWORD PTR 104[rsp], 0	 # MEM[(struct _Vector_impl_data *)_1013 + 8B]._M_end_of_storage,
	mov	eax, 1	 # prephitmp_289,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:114: 	  _M_start = __x._M_start;
	vmovdqu	XMMWORD PTR 88[rsp], xmm0	 # MEM <vector(2) long long unsigned int> [(float * *)_1013 + 8B], tmp365
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:388: 	if (__p)
	test	rcx, rcx	 # _230
	je	.L2	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	sub	rdx, rcx	 # _235, _230
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
 # include/gl_setup.hpp:51:             glBindBufferBase(GL_SHADER_STORAGE_BUFFER, (u8)m_binding, m_ID);
	movzx	eax, BYTE PTR 84[rsp]	 # prephitmp_289, MEM[(struct Buffer *)_1013].m_binding
.L2:
	mov	r12, QWORD PTR .refptr.glad_glBindBufferBase[rip]	 # tmp596,
	mov	r8d, DWORD PTR 80[rsp]	 #, MEM[(struct Buffer *)_1013].m_ID
	mov	edx, eax	 #, prephitmp_289
	mov	ecx, 37074	 #,
	call	[QWORD PTR [r12]]	 # glad_glBindBufferBase
.LEHE0:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	mov	rax, QWORD PTR 96[rsp]	 # _237, MEM[(const struct vector *)_1013 + 8B].D.142868._M_impl.D.142166._M_finish
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	mov	r14, QWORD PTR 88[rsp]	 # _238, MEM[(const struct vector *)_1013 + 8B].D.142868._M_impl.D.142166._M_start
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:811: 	  size_type __navail = size_type(this->_M_impl._M_end_of_storage
	mov	rdi, QWORD PTR 104[rsp]	 # pretmp_501, MEM[(struct vector *)_1013 + 8B].D.142868._M_impl.D.142166._M_end_of_storage
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	mov	r9, rax	 # _239, _237
	sub	r9, r14	 # _239, _238
	mov	rcx, r9	 # _240, _239
	sar	rcx, 2	 # _240,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1015: 	if (__new_size > size())
	cmp	rcx, rsi	 # _240, _1
	jb	.L177	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1018: 	  _M_erase_at_end(this->_M_impl._M_start + __new_size);
	lea	rdx, [r14+rsi*4]	 # tmp599,
	cmp	rsi, rcx	 # _1, _240
	cmovb	rax, rdx	 # tmp599,, _237
.L10:
 # include/gl_setup.hpp:40:     struct Buffer {
	mov	rdx, QWORD PTR 80[rsp]	 # MEM <unsigned long long> [(void *)_1013], MEM <unsigned long long> [(void *)_1013]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:114: 	  _M_start = __x._M_start;
	mov	rcx, QWORD PTR 56[rbx]	 # _302, MEM[(const struct _Vector_impl_data &)this_5(D) + 56]._M_start
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:114: 	  _M_start = __x._M_start;
	vpxor	xmm0, xmm0, xmm0	 # tmp414
	mov	QWORD PTR 56[rbx], r14	 # MEM[(struct _Vector_impl_data *)this_5(D) + 56B]._M_start, _238
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:115: 	  _M_finish = __x._M_finish;
	mov	QWORD PTR 64[rbx], rax	 # MEM[(struct _Vector_impl_data *)this_5(D) + 56B]._M_finish, _237
 # include/gl_setup.hpp:40:     struct Buffer {
	mov	QWORD PTR 48[rbx], rdx	 # MEM <unsigned long long> [(void *)this_5(D) + 48B], MEM <unsigned long long> [(void *)_1013]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:116: 	  _M_end_of_storage = __x._M_end_of_storage;
	mov	rdx, QWORD PTR 72[rbx]	 # _303, MEM[(const struct _Vector_impl_data &)this_5(D) + 56]._M_end_of_storage
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:116: 	  _M_end_of_storage = __x._M_end_of_storage;
	mov	QWORD PTR 104[rsp], 0	 # MEM[(struct _Vector_impl_data *)_1013 + 8B]._M_end_of_storage,
	mov	QWORD PTR 72[rbx], rdi	 # MEM[(struct _Vector_impl_data *)this_5(D) + 56B]._M_end_of_storage, pretmp_501
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:114: 	  _M_start = __x._M_start;
	vmovdqu	XMMWORD PTR 88[rsp], xmm0	 # MEM <vector(2) long long unsigned int> [(float * *)_1013 + 8B], tmp414
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:388: 	if (__p)
	test	rcx, rcx	 # _302
	je	.L19	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	sub	rdx, rcx	 # _307, _302
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rcx, QWORD PTR 88[rsp]	 # _55, MEM[(struct _Vector_base *)_1013 + 8B]._M_impl.D.142166._M_start
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rdx, QWORD PTR 104[rsp]	 # _41, MEM[(struct _Vector_base *)_1013 + 8B]._M_impl.D.142166._M_end_of_storage
	sub	rdx, rcx	 # _41, _55
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:388: 	if (__p)
	test	rcx, rcx	 # _55
	je	.L19	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L19:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:99: 	: _M_start(), _M_finish(), _M_end_of_storage()
	vpxor	xmm0, xmm0, xmm0	 # tmp420
 # source/simulation.cpp:14: 		m_writeBuffer = Buffer<f32>(BufferBinding::WRITE, m_size);
	mov	rdi, QWORD PTR 24[rbx]	 # _2, *this_5(D).m_size
 # include/gl_setup.hpp:48: 			glGenBuffers(1, &m_ID);
	mov	rdx, r15	 #, tmp595
	mov	ecx, 1	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:99: 	: _M_start(), _M_finish(), _M_end_of_storage()
	mov	QWORD PTR 104[rsp], 0	 # MEM[(struct _Vector_impl_data *)_1013 + 8B]._M_end_of_storage,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:99: 	: _M_start(), _M_finish(), _M_end_of_storage()
	vmovdqu	XMMWORD PTR 88[rsp], xmm0	 # MEM <vector(2) long long unsigned int> [(float * *)_1013 + 8B], tmp420
.LEHB1:
 # include/gl_setup.hpp:48: 			glGenBuffers(1, &m_ID);
	call	[QWORD PTR 0[r13]]	 # glad_glGenBuffers
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:114: 	  _M_start = __x._M_start;
	mov	rcx, QWORD PTR 88[rsp]	 # _330, MEM[(const struct _Vector_impl_data &)_1013 + 8]._M_start
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:114: 	  _M_start = __x._M_start;
	vpxor	xmm0, xmm0, xmm0	 # tmp424
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:116: 	  _M_end_of_storage = __x._M_end_of_storage;
	mov	rdx, QWORD PTR 104[rsp]	 # _331, MEM[(const struct _Vector_impl_data &)_1013 + 8]._M_end_of_storage
	xor	eax, eax	 # _608
 # include/gl_setup.hpp:49: 			m_binding = binding;
	mov	DWORD PTR 84[rsp], 0	 # MEM[(struct Buffer *)_1013].m_binding,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:116: 	  _M_end_of_storage = __x._M_end_of_storage;
	mov	QWORD PTR 104[rsp], 0	 # MEM[(struct _Vector_impl_data *)_1013 + 8B]._M_end_of_storage,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:114: 	  _M_start = __x._M_start;
	vmovdqu	XMMWORD PTR 88[rsp], xmm0	 # MEM <vector(2) long long unsigned int> [(float * *)_1013 + 8B], tmp424
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:388: 	if (__p)
	test	rcx, rcx	 # _330
	je	.L23	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	sub	rdx, rcx	 # _335, _330
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
 # include/gl_setup.hpp:51:             glBindBufferBase(GL_SHADER_STORAGE_BUFFER, (u8)m_binding, m_ID);
	movzx	eax, BYTE PTR 84[rsp]	 # _608, MEM[(struct Buffer *)_1013].m_binding
.L23:
	mov	r8d, DWORD PTR 80[rsp]	 #, MEM[(struct Buffer *)_1013].m_ID
	mov	edx, eax	 #, _608
	mov	ecx, 37074	 #,
	call	[QWORD PTR [r12]]	 # glad_glBindBufferBase
.LEHE1:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	mov	rax, QWORD PTR 96[rsp]	 # _337, MEM[(const struct vector *)_1013 + 8B].D.142868._M_impl.D.142166._M_finish
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	mov	r14, QWORD PTR 88[rsp]	 # _338, MEM[(const struct vector *)_1013 + 8B].D.142868._M_impl.D.142166._M_start
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:811: 	  size_type __navail = size_type(this->_M_impl._M_end_of_storage
	mov	rsi, QWORD PTR 104[rsp]	 # prephitmp_483, MEM[(struct vector *)_1013 + 8B].D.142868._M_impl.D.142166._M_end_of_storage
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	mov	r9, rax	 # _339, _337
	sub	r9, r14	 # _339, _338
	mov	rcx, r9	 # _340, _339
	sar	rcx, 2	 # _340,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1015: 	if (__new_size > size())
	cmp	rcx, rdi	 # _340, _2
	jb	.L178	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1018: 	  _M_erase_at_end(this->_M_impl._M_start + __new_size);
	lea	rdx, [r14+rdi*4]	 # tmp601,
	cmp	rdi, rcx	 # _2, _340
	cmovb	rax, rdx	 # tmp601,, _337
.L30:
 # include/gl_setup.hpp:40:     struct Buffer {
	mov	rdx, QWORD PTR 80[rsp]	 # MEM <unsigned long long> [(void *)_1013], MEM <unsigned long long> [(void *)_1013]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:114: 	  _M_start = __x._M_start;
	mov	rcx, QWORD PTR 88[rbx]	 # _402, MEM[(const struct _Vector_impl_data &)this_5(D) + 88]._M_start
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:114: 	  _M_start = __x._M_start;
	vpxor	xmm0, xmm0, xmm0	 # tmp471
	mov	QWORD PTR 88[rbx], r14	 # MEM[(struct _Vector_impl_data *)this_5(D) + 88B]._M_start, _338
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:115: 	  _M_finish = __x._M_finish;
	mov	QWORD PTR 96[rbx], rax	 # MEM[(struct _Vector_impl_data *)this_5(D) + 88B]._M_finish, _337
 # include/gl_setup.hpp:40:     struct Buffer {
	mov	QWORD PTR 80[rbx], rdx	 # MEM <unsigned long long> [(void *)this_5(D) + 80B], MEM <unsigned long long> [(void *)_1013]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:116: 	  _M_end_of_storage = __x._M_end_of_storage;
	mov	rdx, QWORD PTR 104[rbx]	 # _403, MEM[(const struct _Vector_impl_data &)this_5(D) + 88]._M_end_of_storage
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:116: 	  _M_end_of_storage = __x._M_end_of_storage;
	mov	QWORD PTR 104[rsp], 0	 # MEM[(struct _Vector_impl_data *)_1013 + 8B]._M_end_of_storage,
	mov	QWORD PTR 104[rbx], rsi	 # MEM[(struct _Vector_impl_data *)this_5(D) + 88B]._M_end_of_storage, prephitmp_483
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:114: 	  _M_start = __x._M_start;
	vmovdqu	XMMWORD PTR 88[rsp], xmm0	 # MEM <vector(2) long long unsigned int> [(float * *)_1013 + 8B], tmp471
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:388: 	if (__p)
	test	rcx, rcx	 # _402
	je	.L39	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	sub	rdx, rcx	 # _407, _402
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rcx, QWORD PTR 88[rsp]	 # _64, MEM[(struct _Vector_base *)_1013 + 8B]._M_impl.D.142166._M_start
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rdx, QWORD PTR 104[rsp]	 # _65, MEM[(struct _Vector_base *)_1013 + 8B]._M_impl.D.142166._M_end_of_storage
	sub	rdx, rcx	 # _65, _64
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:388: 	if (__p)
	test	rcx, rcx	 # _64
	je	.L39	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L39:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	ecx, 12	 #,
.LEHB2:
	call	_Znwy	 #
.LEHE2:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:413: 	{ *__to = *__from; }
	mov	QWORD PTR [rax], 0	 # MEM <vector(2) unsigned int> [(unsigned int *)_432],
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	rdi, rax	 # _432, tmp612
	mov	ecx, 12	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:99: 	: _M_start(), _M_finish(), _M_end_of_storage()
	vpxor	xmm0, xmm0, xmm0	 # tmp480
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:413: 	{ *__to = *__from; }
	mov	DWORD PTR 8[rax], 0	 # *_432.centerOfMassY,
 # include/gl_setup.hpp:58: 		Buffer(const BufferBinding binding, const std::vector<T>& data) {
	movabs	rax, 12884901888	 # tmp643,
	mov	QWORD PTR 80[rsp], rax	 # MEM <unsigned long long> [(void *)_1013], tmp643
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:99: 	: _M_start(), _M_finish(), _M_end_of_storage()
	mov	QWORD PTR 104[rsp], 0	 # MEM[(struct _Vector_impl_data *)_1013 + 8B]._M_end_of_storage,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:99: 	: _M_start(), _M_finish(), _M_end_of_storage()
	vmovdqu	XMMWORD PTR 88[rsp], xmm0	 # MEM <vector(2) long long unsigned int> [(struct ShaderData * *)_1013 + 8B], tmp480
.LEHB3:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwy	 #
	mov	rsi, rax	 # _499, tmp613
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:413: 	{ *__to = *__from; }
	mov	rax, QWORD PTR [rdi]	 # MEM[(const struct ShaderData &)_432], MEM[(const struct ShaderData &)_432]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:244: 			    - this->_M_impl._M_start);
	mov	rcx, QWORD PTR 88[rsp]	 # _462, MEM[(struct vector *)_1013 + 8B].D.156494._M_impl.D.155827._M_start
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:413: 	{ *__to = *__from; }
	mov	QWORD PTR [rsi], rax	 # *_499, MEM[(const struct ShaderData &)_432]
	mov	eax, DWORD PTR 8[rdi]	 # MEM[(const struct ShaderData &)_432], MEM[(const struct ShaderData &)_432]
	mov	DWORD PTR 8[rsi], eax	 # *_499, MEM[(const struct ShaderData &)_432]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:388: 	if (__p)
	test	rcx, rcx	 # _462
	je	.L43	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:244: 			    - this->_M_impl._M_start);
	mov	rdx, QWORD PTR 104[rsp]	 # _463, MEM[(struct vector *)_1013 + 8B].D.156494._M_impl.D.155827._M_end_of_storage
	sub	rdx, rcx	 # _463, _462
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L43:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:245: 	      this->_M_impl._M_start = __tmp;
	mov	QWORD PTR 88[rsp], rsi	 # MEM[(struct vector *)_1013 + 8B].D.156494._M_impl.D.155827._M_start, _499
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:246: 	      this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __xlen;
	add	rsi, 12	 # _465,
 # include/gl_setup.hpp:61:             glGenBuffers(1, &m_ID);
	mov	rdx, r15	 #, tmp595
	mov	ecx, 1	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:246: 	      this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __xlen;
	mov	QWORD PTR 104[rsp], rsi	 # MEM[(struct vector *)_1013 + 8B].D.156494._M_impl.D.155827._M_end_of_storage, _465
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:262: 	  this->_M_impl._M_finish = this->_M_impl._M_start + __xlen;
	mov	QWORD PTR 96[rsp], rsi	 # MEM[(struct vector *)_1013 + 8B].D.156494._M_impl.D.155827._M_finish, _465
 # include/gl_setup.hpp:61:             glGenBuffers(1, &m_ID);
	call	[QWORD PTR 0[r13]]	 # glad_glGenBuffers
 # include/gl_setup.hpp:62:             glBindBufferBase(GL_SHADER_STORAGE_BUFFER, (u8)m_binding, m_ID);
	movzx	edx, BYTE PTR 84[rsp]	 # _439, MEM[(struct Buffer *)_1013].m_binding
	mov	r8d, DWORD PTR 80[rsp]	 #, MEM[(struct Buffer *)_1013].m_ID
	mov	ecx, 37074	 #,
	call	[QWORD PTR [r12]]	 # glad_glBindBufferBase
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1131: 	return *(this->_M_impl._M_start + __n);
	mov	r8, QWORD PTR 88[rsp]	 # _442, MEM[(struct vector *)_1013 + 8B].D.156494._M_impl.D.155827._M_start
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	mov	rdx, QWORD PTR 96[rsp]	 # _444, MEM[(const struct vector *)_1013 + 8B].D.156494._M_impl.D.155827._M_finish
 # include/gl_setup.hpp:63:             glNamedBufferData(m_ID, m_data.size() * sizeof(T), &m_data[0], GL_DYNAMIC_COPY);
	mov	r9d, 35050	 #,
 # include/gl_setup.hpp:63:             glNamedBufferData(m_ID, m_data.size() * sizeof(T), &m_data[0], GL_DYNAMIC_COPY);
	mov	r14, QWORD PTR .refptr.glad_glNamedBufferData[rip]	 # tmp597,
 # include/gl_setup.hpp:63:             glNamedBufferData(m_ID, m_data.size() * sizeof(T), &m_data[0], GL_DYNAMIC_COPY);
	mov	ecx, DWORD PTR 80[rsp]	 #, MEM[(struct Buffer *)_1013].m_ID
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	sub	rdx, r8	 # _444, _442
 # include/gl_setup.hpp:63:             glNamedBufferData(m_ID, m_data.size() * sizeof(T), &m_data[0], GL_DYNAMIC_COPY);
	call	[QWORD PTR [r14]]	 # glad_glNamedBufferData
.LEHE3:
 # include/gl_setup.hpp:40:     struct Buffer {
	mov	rax, QWORD PTR 80[rsp]	 # MEM <unsigned long long> [(void *)_1013], MEM <unsigned long long> [(void *)_1013]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:114: 	  _M_start = __x._M_start;
	vmovdqu	xmm0, XMMWORD PTR 88[rsp]	 # MEM <vector(2) long long unsigned int> [(struct ShaderData * *)_1013 + 8B], MEM <vector(2) long long unsigned int> [(struct ShaderData * *)_1013 + 8B]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:114: 	  _M_start = __x._M_start;
	mov	rcx, QWORD PTR 120[rbx]	 # _510, MEM[(const struct _Vector_impl_data &)this_5(D) + 120]._M_start
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:116: 	  _M_end_of_storage = __x._M_end_of_storage;
	mov	rdx, QWORD PTR 136[rbx]	 # _511, MEM[(const struct _Vector_impl_data &)this_5(D) + 120]._M_end_of_storage
 # include/gl_setup.hpp:40:     struct Buffer {
	mov	QWORD PTR 112[rbx], rax	 # MEM <unsigned long long> [(void *)this_5(D) + 112B], MEM <unsigned long long> [(void *)_1013]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:116: 	  _M_end_of_storage = __x._M_end_of_storage;
	mov	rax, QWORD PTR 104[rsp]	 # _514, MEM[(const struct _Vector_impl_data &)_1013 + 8]._M_end_of_storage
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:114: 	  _M_start = __x._M_start;
	vmovdqu	XMMWORD PTR 120[rbx], xmm0	 # MEM <vector(2) long long unsigned int> [(struct ShaderData * *)this_5(D) + 120B], MEM <vector(2) long long unsigned int> [(struct ShaderData * *)_1013 + 8B]
	vpxor	xmm0, xmm0, xmm0	 # tmp506
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:116: 	  _M_end_of_storage = __x._M_end_of_storage;
	mov	QWORD PTR 136[rbx], rax	 # MEM[(struct _Vector_impl_data *)this_5(D) + 120B]._M_end_of_storage, _514
	mov	QWORD PTR 104[rsp], 0	 # MEM[(struct _Vector_impl_data *)_1013 + 8B]._M_end_of_storage,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:114: 	  _M_start = __x._M_start;
	vmovdqu	XMMWORD PTR 88[rsp], xmm0	 # MEM <vector(2) long long unsigned int> [(struct ShaderData * *)_1013 + 8B], tmp506
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:388: 	if (__p)
	test	rcx, rcx	 # _510
	je	.L48	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	sub	rdx, rcx	 # _515, _510
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rcx, QWORD PTR 88[rsp]	 # _75, MEM[(struct _Vector_base *)_1013 + 8B]._M_impl.D.155827._M_start
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rdx, QWORD PTR 104[rsp]	 # _76, MEM[(struct _Vector_base *)_1013 + 8B]._M_impl.D.155827._M_end_of_storage
	sub	rdx, rcx	 # _76, _75
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:388: 	if (__p)
	test	rcx, rcx	 # _75
	je	.L48	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L48:
	mov	rcx, rdi	 #, _432
	mov	edx, 12	 #,
	call	_ZdlPvy	 #
 # source/simulation.cpp:16: 		m_colorBuffer = Buffer<ColorPalette>(BufferBinding::COLOR, {colorPalette});
	vmovdqu64	zmm0, ZMMWORD PTR 0[rbp]	 # *colorPalette_34(D), *colorPalette_34(D)
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	ecx, 272	 #,
 # source/simulation.cpp:16: 		m_colorBuffer = Buffer<ColorPalette>(BufferBinding::COLOR, {colorPalette});
	vmovdqu	xmm1, XMMWORD PTR 256[rbp]	 # tmp648, *colorPalette_34(D)
	vmovdqu64	ZMMWORD PTR 80[rsp], zmm0	 # MEM[(struct ColorPalette[1] *)_1013][0], *colorPalette_34(D)
	vmovdqu64	zmm0, ZMMWORD PTR 64[rbp]	 # *colorPalette_34(D), *colorPalette_34(D)
	vmovdqu	XMMWORD PTR 336[rsp], xmm1	 # MEM[(struct ColorPalette[1] *)_1013][0], tmp648
	vmovdqu64	ZMMWORD PTR 144[rsp], zmm0	 # MEM[(struct ColorPalette[1] *)_1013][0], *colorPalette_34(D)
	vmovdqu64	zmm0, ZMMWORD PTR 128[rbp]	 # *colorPalette_34(D), *colorPalette_34(D)
	vmovdqu64	ZMMWORD PTR 208[rsp], zmm0	 # MEM[(struct ColorPalette[1] *)_1013][0], *colorPalette_34(D)
	vmovdqu64	zmm0, ZMMWORD PTR 192[rbp]	 # *colorPalette_34(D), *colorPalette_34(D)
	vmovdqu64	ZMMWORD PTR 272[rsp], zmm0	 # MEM[(struct ColorPalette[1] *)_1013][0], *colorPalette_34(D)
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	vzeroupper
.LEHB4:
	call	_Znwy	 #
.LEHE4:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:413: 	{ *__to = *__from; }
	vmovdqu64	zmm0, ZMMWORD PTR 80[rsp]	 # MEM[(const struct ColorPalette &)_1013], MEM[(const struct ColorPalette &)_1013]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	rsi, rax	 # _538, tmp615
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:413: 	{ *__to = *__from; }
	vmovdqu	xmm2, XMMWORD PTR 336[rsp]	 # tmp649, MEM[(const struct ColorPalette &)_1013]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:99: 	: _M_start(), _M_finish(), _M_end_of_storage()
	mov	QWORD PTR 72[rsp], 0	 # MEM[(struct _Vector_impl_data *)&D.162021 + 8B]._M_end_of_storage,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	ecx, 272	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:413: 	{ *__to = *__from; }
	vmovdqu64	ZMMWORD PTR [rax], zmm0	 # *_538, MEM[(const struct ColorPalette &)_1013]
	vmovdqu64	zmm0, ZMMWORD PTR 144[rsp]	 # MEM[(const struct ColorPalette &)_1013], MEM[(const struct ColorPalette &)_1013]
	vmovdqu	XMMWORD PTR 256[rax], xmm2	 # *_538, tmp649
	vmovdqu64	ZMMWORD PTR 64[rax], zmm0	 # *_538, MEM[(const struct ColorPalette &)_1013]
	vmovdqu64	zmm0, ZMMWORD PTR 208[rsp]	 # MEM[(const struct ColorPalette &)_1013], MEM[(const struct ColorPalette &)_1013]
	vmovdqu64	ZMMWORD PTR 128[rax], zmm0	 # *_538, MEM[(const struct ColorPalette &)_1013]
	vmovdqu64	zmm0, ZMMWORD PTR 272[rsp]	 # MEM[(const struct ColorPalette &)_1013], MEM[(const struct ColorPalette &)_1013]
	vmovdqu64	ZMMWORD PTR 192[rax], zmm0	 # *_538, MEM[(const struct ColorPalette &)_1013]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:99: 	: _M_start(), _M_finish(), _M_end_of_storage()
	vpxor	xmm0, xmm0, xmm0	 # tmp521
 # include/gl_setup.hpp:58: 		Buffer(const BufferBinding binding, const std::vector<T>& data) {
	movabs	rax, 17179869184	 # tmp650,
	mov	QWORD PTR 48[rsp], rax	 # MEM <unsigned long long> [(void *)&D.162021], tmp650
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:99: 	: _M_start(), _M_finish(), _M_end_of_storage()
	vmovdqu	XMMWORD PTR 56[rsp], xmm0	 # MEM <vector(2) long long unsigned int> [(struct ColorPalette * *)&D.162021 + 8B], tmp521
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	vzeroupper
.LEHB5:
	call	_Znwy	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:413: 	{ *__to = *__from; }
	vmovdqu64	zmm0, ZMMWORD PTR [rsi]	 # MEM[(const struct ColorPalette &)_538], MEM[(const struct ColorPalette &)_538]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:244: 			    - this->_M_impl._M_start);
	mov	rcx, QWORD PTR 56[rsp]	 # _575, MEM[(struct vector *)&D.162021 + 8B].D.157570._M_impl.D.156903._M_start
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	rdi, rax	 # _600, tmp616
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:413: 	{ *__to = *__from; }
	vmovdqu	xmm3, XMMWORD PTR 256[rsi]	 # tmp651, MEM[(const struct ColorPalette &)_538]
	vmovdqu64	ZMMWORD PTR [rax], zmm0	 # *_600, MEM[(const struct ColorPalette &)_538]
	vmovdqu64	zmm0, ZMMWORD PTR 64[rsi]	 # MEM[(const struct ColorPalette &)_538], MEM[(const struct ColorPalette &)_538]
	vmovdqu	XMMWORD PTR 256[rax], xmm3	 # *_600, tmp651
	vmovdqu64	ZMMWORD PTR 64[rax], zmm0	 # *_600, MEM[(const struct ColorPalette &)_538]
	vmovdqu64	zmm0, ZMMWORD PTR 128[rsi]	 # MEM[(const struct ColorPalette &)_538], MEM[(const struct ColorPalette &)_538]
	vmovdqu64	ZMMWORD PTR 128[rax], zmm0	 # *_600, MEM[(const struct ColorPalette &)_538]
	vmovdqu64	zmm0, ZMMWORD PTR 192[rsi]	 # MEM[(const struct ColorPalette &)_538], MEM[(const struct ColorPalette &)_538]
	vmovdqu64	ZMMWORD PTR 192[rax], zmm0	 # *_600, MEM[(const struct ColorPalette &)_538]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:388: 	if (__p)
	test	rcx, rcx	 # _575
	je	.L165	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:244: 			    - this->_M_impl._M_start);
	mov	rdx, QWORD PTR 72[rsp]	 # _576, MEM[(struct vector *)&D.162021 + 8B].D.157570._M_impl.D.156903._M_end_of_storage
	sub	rdx, rcx	 # _576, _575
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	vzeroupper
	call	_ZdlPvy	 #
.L49:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:245: 	      this->_M_impl._M_start = __tmp;
	mov	QWORD PTR 56[rsp], rdi	 # MEM[(struct vector *)&D.162021 + 8B].D.157570._M_impl.D.156903._M_start, _600
 # include/gl_setup.hpp:61:             glGenBuffers(1, &m_ID);
	lea	rdx, 48[rsp]	 # tmp530,
	mov	ecx, 1	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:246: 	      this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __xlen;
	add	rdi, 272	 # _578,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:246: 	      this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __xlen;
	mov	QWORD PTR 72[rsp], rdi	 # MEM[(struct vector *)&D.162021 + 8B].D.157570._M_impl.D.156903._M_end_of_storage, _578
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:262: 	  this->_M_impl._M_finish = this->_M_impl._M_start + __xlen;
	mov	QWORD PTR 64[rsp], rdi	 # MEM[(struct vector *)&D.162021 + 8B].D.157570._M_impl.D.156903._M_finish, _578
 # include/gl_setup.hpp:61:             glGenBuffers(1, &m_ID);
	call	[QWORD PTR 0[r13]]	 # glad_glGenBuffers
 # include/gl_setup.hpp:62:             glBindBufferBase(GL_SHADER_STORAGE_BUFFER, (u8)m_binding, m_ID);
	movzx	edx, BYTE PTR 52[rsp]	 # _552, D.162021.m_binding
	mov	r8d, DWORD PTR 48[rsp]	 #, D.162021.m_ID
	mov	ecx, 37074	 #,
	call	[QWORD PTR [r12]]	 # glad_glBindBufferBase
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1131: 	return *(this->_M_impl._M_start + __n);
	mov	r8, QWORD PTR 56[rsp]	 # _555, MEM[(struct vector *)&D.162021 + 8B].D.157570._M_impl.D.156903._M_start
 # include/gl_setup.hpp:63:             glNamedBufferData(m_ID, m_data.size() * sizeof(T), &m_data[0], GL_DYNAMIC_COPY);
	mov	ecx, DWORD PTR 48[rsp]	 #, D.162021.m_ID
	mov	r9d, 35050	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	mov	rdx, QWORD PTR 64[rsp]	 # _557, MEM[(const struct vector *)&D.162021 + 8B].D.157570._M_impl.D.156903._M_finish
	sub	rdx, r8	 # _557, _555
 # include/gl_setup.hpp:63:             glNamedBufferData(m_ID, m_data.size() * sizeof(T), &m_data[0], GL_DYNAMIC_COPY);
	call	[QWORD PTR [r14]]	 # glad_glNamedBufferData
.LEHE5:
 # include/gl_setup.hpp:40:     struct Buffer {
	mov	rax, QWORD PTR 48[rsp]	 # MEM <unsigned long long> [(void *)&D.162021], MEM <unsigned long long> [(void *)&D.162021]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:114: 	  _M_start = __x._M_start;
	vmovdqu	xmm0, XMMWORD PTR 56[rsp]	 # MEM <vector(2) long long unsigned int> [(struct ColorPalette * *)&D.162021 + 8B], MEM <vector(2) long long unsigned int> [(struct ColorPalette * *)&D.162021 + 8B]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:114: 	  _M_start = __x._M_start;
	mov	rcx, QWORD PTR 152[rbx]	 # _629, MEM[(const struct _Vector_impl_data &)this_5(D) + 152]._M_start
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:116: 	  _M_end_of_storage = __x._M_end_of_storage;
	mov	rdx, QWORD PTR 168[rbx]	 # _630, MEM[(const struct _Vector_impl_data &)this_5(D) + 152]._M_end_of_storage
 # include/gl_setup.hpp:40:     struct Buffer {
	mov	QWORD PTR 144[rbx], rax	 # MEM <unsigned long long> [(void *)this_5(D) + 144B], MEM <unsigned long long> [(void *)&D.162021]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:116: 	  _M_end_of_storage = __x._M_end_of_storage;
	mov	rax, QWORD PTR 72[rsp]	 # _633, MEM[(const struct _Vector_impl_data &)&D.162021 + 8]._M_end_of_storage
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:114: 	  _M_start = __x._M_start;
	vmovdqu	XMMWORD PTR 152[rbx], xmm0	 # MEM <vector(2) long long unsigned int> [(struct ColorPalette * *)this_5(D) + 152B], MEM <vector(2) long long unsigned int> [(struct ColorPalette * *)&D.162021 + 8B]
	vpxor	xmm0, xmm0, xmm0	 # tmp550
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:116: 	  _M_end_of_storage = __x._M_end_of_storage;
	mov	QWORD PTR 168[rbx], rax	 # MEM[(struct _Vector_impl_data *)this_5(D) + 152B]._M_end_of_storage, _633
	mov	QWORD PTR 72[rsp], 0	 # MEM[(struct _Vector_impl_data *)&D.162021 + 8B]._M_end_of_storage,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:114: 	  _M_start = __x._M_start;
	vmovdqu	XMMWORD PTR 56[rsp], xmm0	 # MEM <vector(2) long long unsigned int> [(struct ColorPalette * *)&D.162021 + 8B], tmp550
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:388: 	if (__p)
	test	rcx, rcx	 # _629
	je	.L54	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	sub	rdx, rcx	 # _634, _629
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rcx, QWORD PTR 56[rsp]	 # _86, MEM[(struct _Vector_base *)&D.162021 + 8B]._M_impl.D.156903._M_start
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rdx, QWORD PTR 72[rsp]	 # _87, MEM[(struct _Vector_base *)&D.162021 + 8B]._M_impl.D.156903._M_end_of_storage
	sub	rdx, rcx	 # _87, _86
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:388: 	if (__p)
	test	rcx, rcx	 # _86
	je	.L54	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L54:
	mov	edx, 272	 #,
	mov	rcx, rsi	 #, _538
	call	_ZdlPvy	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:99: 	: _M_start(), _M_finish(), _M_end_of_storage()
	vpxor	xmm0, xmm0, xmm0	 # tmp553
 # include/gl_setup.hpp:48: 			glGenBuffers(1, &m_ID);
	mov	rdx, r15	 #, tmp595
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:99: 	: _M_start(), _M_finish(), _M_end_of_storage()
	mov	QWORD PTR 104[rsp], 0	 # MEM[(struct _Vector_impl_data *)_1013 + 8B]._M_end_of_storage,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:99: 	: _M_start(), _M_finish(), _M_end_of_storage()
	vmovdqu	XMMWORD PTR 88[rsp], xmm0	 # MEM <vector(2) long long unsigned int> [(struct BoundingBox * *)_1013 + 8B], tmp553
 # include/gl_setup.hpp:48: 			glGenBuffers(1, &m_ID);
	mov	ecx, 1	 #,
.LEHB6:
	call	[QWORD PTR 0[r13]]	 # glad_glGenBuffers
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:114: 	  _M_start = __x._M_start;
	mov	rcx, QWORD PTR 88[rsp]	 # _652, MEM[(const struct _Vector_impl_data &)_1013 + 8]._M_start
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:114: 	  _M_start = __x._M_start;
	vpxor	xmm0, xmm0, xmm0	 # tmp557
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:116: 	  _M_end_of_storage = __x._M_end_of_storage;
	mov	rdx, QWORD PTR 104[rsp]	 # _653, MEM[(const struct _Vector_impl_data &)_1013 + 8]._M_end_of_storage
 # include/gl_setup.hpp:49: 			m_binding = binding;
	mov	DWORD PTR 84[rsp], 5	 # MEM[(struct Buffer *)_1013].m_binding,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:116: 	  _M_end_of_storage = __x._M_end_of_storage;
	mov	QWORD PTR 104[rsp], 0	 # MEM[(struct _Vector_impl_data *)_1013 + 8B]._M_end_of_storage,
	mov	eax, 5	 # _477,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:114: 	  _M_start = __x._M_start;
	vmovdqu	XMMWORD PTR 88[rsp], xmm0	 # MEM <vector(2) long long unsigned int> [(struct BoundingBox * *)_1013 + 8B], tmp557
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:388: 	if (__p)
	test	rcx, rcx	 # _652
	je	.L55	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	sub	rdx, rcx	 # _657, _652
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
 # include/gl_setup.hpp:51:             glBindBufferBase(GL_SHADER_STORAGE_BUFFER, (u8)m_binding, m_ID);
	movzx	eax, BYTE PTR 84[rsp]	 # _477, MEM[(struct Buffer *)_1013].m_binding
.L55:
	mov	r8d, DWORD PTR 80[rsp]	 #, MEM[(struct Buffer *)_1013].m_ID
	mov	edx, eax	 #, _477
	mov	ecx, 37074	 #,
	call	[QWORD PTR [r12]]	 # glad_glBindBufferBase
.LEHE6:
 # include/gl_setup.hpp:40:     struct Buffer {
	mov	rax, QWORD PTR 80[rsp]	 # MEM <unsigned long long> [(void *)_1013], MEM <unsigned long long> [(void *)_1013]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:114: 	  _M_start = __x._M_start;
	vmovdqu	xmm0, XMMWORD PTR 88[rsp]	 # MEM <vector(2) long long unsigned int> [(struct BoundingBox * *)_1013 + 8B], MEM <vector(2) long long unsigned int> [(struct BoundingBox * *)_1013 + 8B]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:114: 	  _M_start = __x._M_start;
	mov	rcx, QWORD PTR 184[rbx]	 # _659, MEM[(const struct _Vector_impl_data &)this_5(D) + 184]._M_start
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:116: 	  _M_end_of_storage = __x._M_end_of_storage;
	mov	rdx, QWORD PTR 200[rbx]	 # _660, MEM[(const struct _Vector_impl_data &)this_5(D) + 184]._M_end_of_storage
 # include/gl_setup.hpp:40:     struct Buffer {
	mov	QWORD PTR 176[rbx], rax	 # MEM <unsigned long long> [(void *)this_5(D) + 176B], MEM <unsigned long long> [(void *)_1013]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:116: 	  _M_end_of_storage = __x._M_end_of_storage;
	mov	rax, QWORD PTR 104[rsp]	 # _663, MEM[(const struct _Vector_impl_data &)_1013 + 8]._M_end_of_storage
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:114: 	  _M_start = __x._M_start;
	vmovdqu	XMMWORD PTR 184[rbx], xmm0	 # MEM <vector(2) long long unsigned int> [(struct BoundingBox * *)this_5(D) + 184B], MEM <vector(2) long long unsigned int> [(struct BoundingBox * *)_1013 + 8B]
	vpxor	xmm0, xmm0, xmm0	 # tmp568
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:116: 	  _M_end_of_storage = __x._M_end_of_storage;
	mov	QWORD PTR 200[rbx], rax	 # MEM[(struct _Vector_impl_data *)this_5(D) + 184B]._M_end_of_storage, _663
	mov	QWORD PTR 104[rsp], 0	 # MEM[(struct _Vector_impl_data *)_1013 + 8B]._M_end_of_storage,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:114: 	  _M_start = __x._M_start;
	vmovdqu	XMMWORD PTR 88[rsp], xmm0	 # MEM <vector(2) long long unsigned int> [(struct BoundingBox * *)_1013 + 8B], tmp568
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:388: 	if (__p)
	test	rcx, rcx	 # _659
	je	.L60	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	sub	rdx, rcx	 # _664, _659
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rcx, QWORD PTR 88[rsp]	 # _93, MEM[(struct _Vector_base *)_1013 + 8B]._M_impl.D.157979._M_start
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rdx, QWORD PTR 104[rsp]	 # _94, MEM[(struct _Vector_base *)_1013 + 8B]._M_impl.D.157979._M_end_of_storage
	sub	rdx, rcx	 # _94, _93
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:388: 	if (__p)
	test	rcx, rcx	 # _93
	je	.L60	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L60:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1131: 	return *(this->_M_impl._M_start + __n);
	mov	r8, QWORD PTR 152[rbx]	 # _666, MEM[(struct vector *)this_5(D) + 152B].D.157570._M_impl.D.156903._M_start
 # source/simulation.cpp:66: 		m_colorBuffer.m_data[0] = colorPalette;
	vmovdqu64	zmm0, ZMMWORD PTR 0[rbp]	 # *colorPalette_34(D), *colorPalette_34(D)
 # include/gl_setup.hpp:79:             glNamedBufferData(m_ID, m_data.size() * sizeof(T), &m_data[0], GL_DYNAMIC_COPY);
	mov	r9d, 35050	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	mov	rdx, QWORD PTR 160[rbx]	 # _669, MEM[(const struct vector *)this_5(D) + 152B].D.157570._M_impl.D.156903._M_finish
 # include/gl_setup.hpp:79:             glNamedBufferData(m_ID, m_data.size() * sizeof(T), &m_data[0], GL_DYNAMIC_COPY);
	mov	ecx, DWORD PTR 144[rbx]	 # MEM[(struct Buffer *)this_5(D) + 144B].m_ID, MEM[(struct Buffer *)this_5(D) + 144B].m_ID
 # source/simulation.cpp:66: 		m_colorBuffer.m_data[0] = colorPalette;
	vmovdqu64	ZMMWORD PTR [r8], zmm0	 # MEM[(struct value_type *)_666], *colorPalette_34(D)
	vmovdqu64	zmm0, ZMMWORD PTR 64[rbp]	 # *colorPalette_34(D), *colorPalette_34(D)
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	sub	rdx, r8	 # _669, _666
 # source/simulation.cpp:66: 		m_colorBuffer.m_data[0] = colorPalette;
	vmovdqu64	ZMMWORD PTR 64[r8], zmm0	 # MEM[(struct value_type *)_666], *colorPalette_34(D)
	vmovdqu64	zmm0, ZMMWORD PTR 128[rbp]	 # *colorPalette_34(D), *colorPalette_34(D)
	vmovdqu64	ZMMWORD PTR 128[r8], zmm0	 # MEM[(struct value_type *)_666], *colorPalette_34(D)
	vmovdqu64	zmm0, ZMMWORD PTR 192[rbp]	 # *colorPalette_34(D), *colorPalette_34(D)
	vmovdqu64	ZMMWORD PTR 192[r8], zmm0	 # MEM[(struct value_type *)_666], *colorPalette_34(D)
	vmovdqu	xmm4, XMMWORD PTR 256[rbp]	 # tmp658, *colorPalette_34(D)
	vmovdqu	XMMWORD PTR 256[r8], xmm4	 # MEM[(struct value_type *)_666], tmp658
 # include/gl_setup.hpp:79:             glNamedBufferData(m_ID, m_data.size() * sizeof(T), &m_data[0], GL_DYNAMIC_COPY);
	vzeroupper
	call	[QWORD PTR [r14]]	 # glad_glNamedBufferData
	nop	
 # source/simulation.cpp:19: 	}
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
	.p2align 4,,10
	.p2align 3
.L165:
	vzeroupper
	jmp	.L49	 #
	.p2align 4,,10
	.p2align 3
.L178:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:812: 					 - this->_M_impl._M_finish);
	mov	r8, rsi	 # _351, prephitmp_483
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1016: 	  _M_default_append(__new_size - size());
	mov	rdx, rdi	 # _342, _2
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:812: 					 - this->_M_impl._M_finish);
	sub	r8, rax	 # _351, _337
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1016: 	  _M_default_append(__new_size - size());
	sub	rdx, rcx	 # _342, _340
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:812: 					 - this->_M_impl._M_finish);
	sar	r8, 2	 # _352,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:817: 	  if (__navail >= __n)
	cmp	r8, rdx	 # _352, _342
	jnb	.L179	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:814: 	  if (__size > max_size() || __navail > max_size() - __size)
	movabs	rax, 2305843009213693951	 # tmp447,
	sub	rax, rcx	 # _355, _340
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1908: 	if (max_size() - size() < __n)
	cmp	rax, rdx	 # _355, _342
	jb	.L180	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:262:       if (__a < __b)
	cmp	rcx, rdx	 # _340, _342
	mov	rsi, rdx	 # _730, _342
	mov	QWORD PTR 40[rsp], r9	 # %sfp, _339
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1912: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	movabs	rax, 2305843009213693951	 # tmp620,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:262:       if (__a < __b)
	cmovnb	rsi, rcx	 # _340,, _730
	mov	QWORD PTR 32[rsp], rdx	 # %sfp, _342
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1911: 	const size_type __len = size() + (std::max)(size(), __n);
	add	rsi, rcx	 # __len_620, _340
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1912: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	cmp	rsi, rax	 # __len_620, tmp620
	cmova	rsi, rax	 # __len_620,, __len_620, tmp620
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	sal	rsi, 2	 # _393,
	mov	rcx, rsi	 #, _393
.LEHB7:
	call	_Znwy	 #
.LEHE7:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:863: 		std::__uninitialized_default_n_a(__new_start + __size, __n,
	mov	r9, QWORD PTR 40[rsp]	 # _339, %sfp
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:1146:       if (__n <= 0)
	mov	rdx, QWORD PTR 32[rsp]	 # _342, %sfp
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	r10, rax	 # _394, tmp610
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:863: 		std::__uninitialized_default_n_a(__new_start + __size, __n,
	lea	rax, [rax+r9]	 # _361,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_construct.h:119:       ::new((void*)__p) _Tp(std::forward<_Args>(__args)...);
	mov	DWORD PTR [rax], 0x00000000	 # *_361,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:1146:       if (__n <= 0)
	sub	rdx, 1	 # _396,
	je	.L35	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:952: 	*__first = __tmp;
	lea	r8, 0[0+rdx*4]	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:1151:       std::__fill_a(__first, __first + __n, __value);
	lea	rcx, 4[rax]	 # __first,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:952: 	*__first = __tmp;
	xor	edx, edx	 #
	mov	QWORD PTR 40[rsp], r10	 # %sfp, _394
	mov	QWORD PTR 32[rsp], r9	 # %sfp, _339
	call	memset	 #
	mov	r9, QWORD PTR 32[rsp]	 # _339, %sfp
	mov	r10, QWORD PTR 40[rsp]	 # _394, %sfp
.L35:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:903: 		__guard._M_len = this->_M_impl._M_end_of_storage - __old_start;
	mov	r11, QWORD PTR 104[rsp]	 # pretmp_507, MEM[(struct vector *)_1013 + 8B].D.142868._M_impl.D.142166._M_end_of_storage
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_uninitialized.h:1117:       if (__count > 0)
	test	r9, r9	 # _339
	jne	.L181	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:851: 		  if (_M_storage)
	test	r14, r14	 # _338
	jne	.L36	 #,
.L37:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:909: 	      this->_M_impl._M_finish = __new_start + __size + __n;
	lea	rax, [r10+rdi*4]	 # _337,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:910: 	      this->_M_impl._M_end_of_storage = __new_start + __len;
	add	rsi, r10	 # prephitmp_483, _394
	mov	r14, r10	 # _338, _394
	jmp	.L30	 #
	.p2align 4,,10
	.p2align 3
.L177:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:812: 					 - this->_M_impl._M_finish);
	mov	r8, rdi	 # _251, pretmp_501
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1016: 	  _M_default_append(__new_size - size());
	mov	rdx, rsi	 # _242, _1
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:812: 					 - this->_M_impl._M_finish);
	sub	r8, rax	 # _251, _237
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1016: 	  _M_default_append(__new_size - size());
	sub	rdx, rcx	 # _242, _240
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:812: 					 - this->_M_impl._M_finish);
	sar	r8, 2	 # _252,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:817: 	  if (__navail >= __n)
	cmp	r8, rdx	 # _252, _242
	jnb	.L182	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:814: 	  if (__size > max_size() || __navail > max_size() - __size)
	movabs	rax, 2305843009213693951	 # tmp390,
	sub	rax, rcx	 # _255, _240
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1908: 	if (max_size() - size() < __n)
	cmp	rax, rdx	 # _255, _242
	jb	.L183	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:262:       if (__a < __b)
	cmp	rcx, rdx	 # _240, _242
	mov	rdi, rdx	 # _681, _242
	mov	QWORD PTR 40[rsp], r9	 # %sfp, _239
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1912: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	movabs	rax, 2305843009213693951	 # tmp621,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:262:       if (__a < __b)
	cmovnb	rdi, rcx	 # _240,, _681
	mov	QWORD PTR 32[rsp], rdx	 # %sfp, _242
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1911: 	const size_type __len = size() + (std::max)(size(), __n);
	add	rdi, rcx	 # __len_697, _240
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1912: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	cmp	rdi, rax	 # __len_697, tmp621
	cmova	rdi, rax	 # __len_697,, __len_697, tmp621
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	sal	rdi, 2	 # _293,
	mov	rcx, rdi	 #, _293
.LEHB8:
	call	_Znwy	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:863: 		std::__uninitialized_default_n_a(__new_start + __size, __n,
	mov	r9, QWORD PTR 40[rsp]	 # _239, %sfp
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:1146:       if (__n <= 0)
	mov	rdx, QWORD PTR 32[rsp]	 # _242, %sfp
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	r10, rax	 # _294, tmp607
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:863: 		std::__uninitialized_default_n_a(__new_start + __size, __n,
	lea	rax, [rax+r9]	 # _261,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_construct.h:119:       ::new((void*)__p) _Tp(std::forward<_Args>(__args)...);
	mov	DWORD PTR [rax], 0x00000000	 # *_261,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:1146:       if (__n <= 0)
	sub	rdx, 1	 # _296,
	je	.L15	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:952: 	*__first = __tmp;
	lea	r8, 0[0+rdx*4]	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:1151:       std::__fill_a(__first, __first + __n, __value);
	lea	rcx, 4[rax]	 # __first,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:952: 	*__first = __tmp;
	xor	edx, edx	 #
	mov	QWORD PTR 40[rsp], r10	 # %sfp, _294
	mov	QWORD PTR 32[rsp], r9	 # %sfp, _239
	call	memset	 #
	mov	r9, QWORD PTR 32[rsp]	 # _239, %sfp
	mov	r10, QWORD PTR 40[rsp]	 # _294, %sfp
.L15:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:903: 		__guard._M_len = this->_M_impl._M_end_of_storage - __old_start;
	mov	r11, QWORD PTR 104[rsp]	 # pretmp_877, MEM[(struct vector *)_1013 + 8B].D.142868._M_impl.D.142166._M_end_of_storage
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_uninitialized.h:1117:       if (__count > 0)
	test	r9, r9	 # _239
	jne	.L184	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:851: 		  if (_M_storage)
	test	r14, r14	 # _238
	jne	.L16	 #,
.L17:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:909: 	      this->_M_impl._M_finish = __new_start + __size + __n;
	lea	rax, [r10+rsi*4]	 # _237,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:910: 	      this->_M_impl._M_end_of_storage = __new_start + __len;
	add	rdi, r10	 # pretmp_501, _294
	mov	r14, r10	 # _238, _294
	jmp	.L10	 #
	.p2align 4,,10
	.p2align 3
.L182:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_construct.h:119:       ::new((void*)__p) _Tp(std::forward<_Args>(__args)...);
	mov	DWORD PTR [rax], 0x00000000	 # *_237,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_uninitialized.h:667: 	      ++__first;
	lea	rcx, 4[rax]	 # __first,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:1146:       if (__n <= 0)
	sub	rdx, 1	 # _273,
	je	.L68	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:1151:       std::__fill_a(__first, __first + __n, __value);
	lea	rsi, [rcx+rdx*4]	 # _275,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:952: 	*__first = __tmp;
	mov	rdx, rsi	 # _919, _275
	sub	rdx, rax	 # _919, _237
	lea	r8, -4[rdx]	 #,
	xor	edx, edx	 #
	call	memset	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:1152:       return __first + __n;
	mov	rax, rsi	 # _237, _275
	jmp	.L10	 #
	.p2align 4,,10
	.p2align 3
.L179:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_construct.h:119:       ::new((void*)__p) _Tp(std::forward<_Args>(__args)...);
	mov	DWORD PTR [rax], 0x00000000	 # *_337,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_uninitialized.h:667: 	      ++__first;
	lea	rcx, 4[rax]	 # __first,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:1146:       if (__n <= 0)
	sub	rdx, 1	 # _373,
	je	.L70	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:1151:       std::__fill_a(__first, __first + __n, __value);
	lea	rdi, [rcx+rdx*4]	 # _375,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:952: 	*__first = __tmp;
	mov	rdx, rdi	 # _949, _375
	sub	rdx, rax	 # _949, _337
	lea	r8, -4[rdx]	 #,
	xor	edx, edx	 #
	call	memset	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:1152:       return __first + __n;
	mov	rax, rdi	 # _337, _375
	jmp	.L30	 #
	.p2align 4,,10
	.p2align 3
.L184:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_uninitialized.h:1129: 	  __builtin_memcpy(__result, __first, __count * sizeof(_Tp));
	mov	rcx, r10	 #, _294
	mov	r8, r9	 #, _239
	mov	rdx, r14	 #, _238
	mov	QWORD PTR 32[rsp], r11	 # %sfp, pretmp_877
	call	memcpy	 #
	mov	r11, QWORD PTR 32[rsp]	 # pretmp_877, %sfp
	mov	r10, rax	 # _294,
.L16:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:903: 		__guard._M_len = this->_M_impl._M_end_of_storage - __old_start;
	mov	rdx, r11	 # pretmp_877, pretmp_877
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	rcx, r14	 #, _238
	mov	QWORD PTR 32[rsp], r10	 # %sfp, _294
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:903: 		__guard._M_len = this->_M_impl._M_end_of_storage - __old_start;
	sub	rdx, r14	 # pretmp_877, _238
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
	mov	r10, QWORD PTR 32[rsp]	 # _294, %sfp
 # C:/msys64/mingw64/include/c++/14.2.0/bits/alloc_traits.h:513:       { __a.deallocate(__p, __n); }
	jmp	.L17	 #
	.p2align 4,,10
	.p2align 3
.L181:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_uninitialized.h:1129: 	  __builtin_memcpy(__result, __first, __count * sizeof(_Tp));
	mov	rcx, r10	 #, _394
	mov	r8, r9	 #, _339
	mov	rdx, r14	 #, _338
	mov	QWORD PTR 32[rsp], r11	 # %sfp, pretmp_507
	call	memcpy	 #
	mov	r11, QWORD PTR 32[rsp]	 # pretmp_507, %sfp
	mov	r10, rax	 # _394,
.L36:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:903: 		__guard._M_len = this->_M_impl._M_end_of_storage - __old_start;
	mov	rdx, r11	 # pretmp_507, pretmp_507
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	rcx, r14	 #, _338
	mov	QWORD PTR 32[rsp], r10	 # %sfp, _394
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:903: 		__guard._M_len = this->_M_impl._M_end_of_storage - __old_start;
	sub	rdx, r14	 # pretmp_507, _338
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
	mov	r10, QWORD PTR 32[rsp]	 # _394, %sfp
 # C:/msys64/mingw64/include/c++/14.2.0/bits/alloc_traits.h:513:       { __a.deallocate(__p, __n); }
	jmp	.L37	 #
	.p2align 4,,10
	.p2align 3
.L70:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:1147: 	return __first;
	mov	rax, rcx	 # _337, __first
	jmp	.L30	 #
	.p2align 4,,10
	.p2align 3
.L68:
	mov	rax, rcx	 # _237, __first
	jmp	.L10	 #
.L183:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1909: 	  __throw_length_error(__N(__s));
	lea	rcx, .LC2[rip]	 # tmp391,
	call	_ZSt20__throw_length_errorPKc	 #
.LEHE8:
.L78:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rcx, QWORD PTR 56[rsp]	 # _560, MEM[(struct _Vector_base *)&D.162021 + 8B]._M_impl.D.156903._M_start
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rdx, QWORD PTR 72[rsp]	 # _561, MEM[(struct _Vector_base *)&D.162021 + 8B]._M_impl.D.156903._M_end_of_storage
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rdi, rax	 # tmp545, tmp617
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	sub	rdx, rcx	 # _561, _560
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:388: 	if (__p)
	test	rcx, rcx	 # _560
	jne	.L185	 #,
	vzeroupper
.L52:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	rcx, rsi	 #, _538
	mov	edx, 272	 #,
	mov	rsi, rdi	 # tmp372, tmp545
	call	_ZdlPvy	 #
	jmp	.L6	 #
.L77:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rcx, QWORD PTR 88[rsp]	 # _447, MEM[(struct _Vector_base *)_1013 + 8B]._M_impl.D.155827._M_start
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rdx, QWORD PTR 104[rsp]	 # _448, MEM[(struct _Vector_base *)_1013 + 8B]._M_impl.D.155827._M_end_of_storage
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rsi, rax	 # tmp501, tmp614
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	sub	rdx, rcx	 # _448, _447
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:388: 	if (__p)
	test	rcx, rcx	 # _447
	jne	.L186	 #,
	vzeroupper
.L46:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	edx, 12	 #,
	mov	rcx, rdi	 #, _432
	call	_ZdlPvy	 #
	jmp	.L6	 #
.L72:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rsi, rax	 # tmp372, tmp619
	vzeroupper
.L6:
	mov	rcx, QWORD PTR 184[rbx]	 # _108, MEM[(struct _Vector_base *)this_5(D) + 184B]._M_impl.D.157979._M_start
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rdx, QWORD PTR 200[rbx]	 # _109, MEM[(struct _Vector_base *)this_5(D) + 184B]._M_impl.D.157979._M_end_of_storage
	sub	rdx, rcx	 # _109, _108
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:388: 	if (__p)
	test	rcx, rcx	 # _108
	je	.L62	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L62:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rcx, QWORD PTR 152[rbx]	 # _112, MEM[(struct _Vector_base *)this_5(D) + 152B]._M_impl.D.156903._M_start
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rdx, QWORD PTR 168[rbx]	 # _113, MEM[(struct _Vector_base *)this_5(D) + 152B]._M_impl.D.156903._M_end_of_storage
	sub	rdx, rcx	 # _113, _112
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:388: 	if (__p)
	test	rcx, rcx	 # _112
	je	.L63	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L63:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rcx, QWORD PTR 120[rbx]	 # _116, MEM[(struct _Vector_base *)this_5(D) + 120B]._M_impl.D.155827._M_start
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rdx, QWORD PTR 136[rbx]	 # _117, MEM[(struct _Vector_base *)this_5(D) + 120B]._M_impl.D.155827._M_end_of_storage
	sub	rdx, rcx	 # _117, _116
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:388: 	if (__p)
	test	rcx, rcx	 # _116
	je	.L64	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L64:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rcx, QWORD PTR 88[rbx]	 # _120, MEM[(struct _Vector_base *)this_5(D) + 88B]._M_impl.D.142166._M_start
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rdx, QWORD PTR 104[rbx]	 # _121, MEM[(struct _Vector_base *)this_5(D) + 88B]._M_impl.D.142166._M_end_of_storage
	sub	rdx, rcx	 # _121, _120
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:388: 	if (__p)
	test	rcx, rcx	 # _120
	je	.L65	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L65:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rcx, QWORD PTR 56[rbx]	 # _124, MEM[(struct _Vector_base *)this_5(D) + 56B]._M_impl.D.142166._M_start
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rdx, QWORD PTR 72[rbx]	 # MEM[(struct _Vector_base *)this_5(D) + 56B]._M_impl.D.142166._M_end_of_storage, MEM[(struct _Vector_base *)this_5(D) + 56B]._M_impl.D.142166._M_end_of_storage
	sub	rdx, rcx	 # _125, _124
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:388: 	if (__p)
	test	rcx, rcx	 # _124
	je	.L66	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L66:
	mov	rcx, rsi	 #, tmp372
.LEHB9:
	call	_Unwind_Resume	 #
.LEHE9:
.L186:
	vzeroupper
	call	_ZdlPvy	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/alloc_traits.h:513:       { __a.deallocate(__p, __n); }
	jmp	.L46	 #
.L79:
.L172:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rcx, QWORD PTR 88[rsp]	 # _649,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rdx, QWORD PTR 104[rsp]	 # _650,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rsi, rax	 # tmp564, tmp618
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	sub	rdx, rcx	 # _650, _649
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:388: 	if (__p)
	test	rcx, rcx	 # _649
	je	.L167	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	vzeroupper
	call	_ZdlPvy	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/alloc_traits.h:513:       { __a.deallocate(__p, __n); }
	jmp	.L6	 #
.L75:
	jmp	.L172	 #
.L180:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1909: 	  __throw_length_error(__N(__s));
	lea	rcx, .LC2[rip]	 # tmp448,
.LEHB10:
	call	_ZSt20__throw_length_errorPKc	 #
.LEHE10:
.L73:
	jmp	.L172	 #
.L167:
	vzeroupper
	jmp	.L6	 #
.L76:
	jmp	.L172	 #
.L74:
	jmp	.L172	 #
.L185:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	vzeroupper
	call	_ZdlPvy	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/alloc_traits.h:513:       { __a.deallocate(__p, __n); }
	jmp	.L52	 #
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA7101:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7101-.LLSDACSB7101
.LLSDACSB7101:
	.uleb128 .LEHB0-.LFB7101
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L74-.LFB7101
	.uleb128 0
	.uleb128 .LEHB1-.LFB7101
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L76-.LFB7101
	.uleb128 0
	.uleb128 .LEHB2-.LFB7101
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L72-.LFB7101
	.uleb128 0
	.uleb128 .LEHB3-.LFB7101
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L77-.LFB7101
	.uleb128 0
	.uleb128 .LEHB4-.LFB7101
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L72-.LFB7101
	.uleb128 0
	.uleb128 .LEHB5-.LFB7101
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L78-.LFB7101
	.uleb128 0
	.uleb128 .LEHB6-.LFB7101
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L79-.LFB7101
	.uleb128 0
	.uleb128 .LEHB7-.LFB7101
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L75-.LFB7101
	.uleb128 0
	.uleb128 .LEHB8-.LFB7101
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L73-.LFB7101
	.uleb128 0
	.uleb128 .LEHB9-.LFB7101
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB10-.LFB7101
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L75-.LFB7101
	.uleb128 0
.LLSDACSE7101:
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
.LFB7104:
	push	rsi	 #
	.seh_pushreg	rsi
	push	rbx	 #
	.seh_pushreg	rbx
	sub	rsp, 40	 #,
	.seh_stackalloc	40
	.seh_endprologue
 # source/simulation.cpp:22: 		glDeleteBuffers(1, &m_readBuffer.m_ID);
	mov	rsi, QWORD PTR .refptr.glad_glDeleteBuffers[rip]	 # tmp124,
 # source/simulation.cpp:21: 	Simulation::~Simulation() {
	mov	rbx, rcx	 # this, tmp139
 # source/simulation.cpp:22: 		glDeleteBuffers(1, &m_readBuffer.m_ID);
	lea	rdx, 48[rcx]	 # _2,
 # source/simulation.cpp:22: 		glDeleteBuffers(1, &m_readBuffer.m_ID);
	mov	ecx, 1	 #,
	call	[QWORD PTR [rsi]]	 # glad_glDeleteBuffers
 # source/simulation.cpp:23: 		glDeleteBuffers(1, &m_writeBuffer.m_ID);
	mov	ecx, 1	 #,
 # source/simulation.cpp:23: 		glDeleteBuffers(1, &m_writeBuffer.m_ID);
	lea	rdx, 80[rbx]	 # _4,
 # source/simulation.cpp:23: 		glDeleteBuffers(1, &m_writeBuffer.m_ID);
	call	[QWORD PTR [rsi]]	 # glad_glDeleteBuffers
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rcx, QWORD PTR 184[rbx]	 # _27, MEM[(struct _Vector_base *)this_6(D) + 184B]._M_impl.D.157979._M_start
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:388: 	if (__p)
	test	rcx, rcx	 # _27
	je	.L188	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rdx, QWORD PTR 200[rbx]	 # _28, MEM[(struct _Vector_base *)this_6(D) + 184B]._M_impl.D.157979._M_end_of_storage
	sub	rdx, rcx	 # _28, _27
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L188:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rcx, QWORD PTR 152[rbx]	 # _23, MEM[(struct _Vector_base *)this_6(D) + 152B]._M_impl.D.156903._M_start
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:388: 	if (__p)
	test	rcx, rcx	 # _23
	je	.L189	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rdx, QWORD PTR 168[rbx]	 # _24, MEM[(struct _Vector_base *)this_6(D) + 152B]._M_impl.D.156903._M_end_of_storage
	sub	rdx, rcx	 # _24, _23
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L189:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rcx, QWORD PTR 120[rbx]	 # _19, MEM[(struct _Vector_base *)this_6(D) + 120B]._M_impl.D.155827._M_start
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:388: 	if (__p)
	test	rcx, rcx	 # _19
	je	.L190	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rdx, QWORD PTR 136[rbx]	 # _20, MEM[(struct _Vector_base *)this_6(D) + 120B]._M_impl.D.155827._M_end_of_storage
	sub	rdx, rcx	 # _20, _19
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L190:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rcx, QWORD PTR 88[rbx]	 # _15, MEM[(struct _Vector_base *)this_6(D) + 88B]._M_impl.D.142166._M_start
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:388: 	if (__p)
	test	rcx, rcx	 # _15
	je	.L191	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rdx, QWORD PTR 104[rbx]	 # _16, MEM[(struct _Vector_base *)this_6(D) + 88B]._M_impl.D.142166._M_end_of_storage
	sub	rdx, rcx	 # _16, _15
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L191:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rcx, QWORD PTR 56[rbx]	 # _11, MEM[(struct _Vector_base *)this_6(D) + 56B]._M_impl.D.142166._M_start
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:388: 	if (__p)
	test	rcx, rcx	 # _11
	je	.L205	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rdx, QWORD PTR 72[rbx]	 # MEM[(struct _Vector_base *)this_6(D) + 56B]._M_impl.D.142166._M_end_of_storage, MEM[(struct _Vector_base *)this_6(D) + 56B]._M_impl.D.142166._M_end_of_storage
	sub	rdx, rcx	 # _12, _11
 # source/simulation.cpp:24: 	}
	add	rsp, 40	 #,
	pop	rbx	 #
	pop	rsi	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	jmp	_ZdlPvy	 #
	.p2align 4,,10
	.p2align 3
.L205:
 # source/simulation.cpp:24: 	}
	add	rsp, 40	 #,
	pop	rbx	 #
	pop	rsi	 #
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
	.globl	_ZN5Lenia10SimulationD1Ev
	.def	_ZN5Lenia10SimulationD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN5Lenia10SimulationD1Ev,_ZN5Lenia10SimulationD2Ev
	.align 2
	.p2align 4
	.globl	_ZN5Lenia10Simulation11PlaceAnimalEPNS_6AnimalEjj
	.def	_ZN5Lenia10Simulation11PlaceAnimalEPNS_6AnimalEjj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Lenia10Simulation11PlaceAnimalEPNS_6AnimalEjj
_ZN5Lenia10Simulation11PlaceAnimalEPNS_6AnimalEjj:
.LFB7106:
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
	vmovups	XMMWORD PTR 80[rsp], xmm6	 #,
	.seh_savexmm	xmm6, 80
	.seh_endprologue
 # source/simulation.cpp:26: 	void Simulation::PlaceAnimal(Animal *animal, const u32 x, const u32 y) noexcept {
	mov	rdi, rcx	 # this, tmp175
	mov	rbp, rdx	 # animal, tmp176
 # source/simulation.cpp:27: 		f32* animal_cells = animal->GetCells();
	mov	rcx, rdx	 #, animal
 # source/simulation.cpp:26: 	void Simulation::PlaceAnimal(Animal *animal, const u32 x, const u32 y) noexcept {
	mov	esi, r8d	 #, tmp177
	mov	r12d, r9d	 # y, tmp178
 # source/simulation.cpp:27: 		f32* animal_cells = animal->GetCells();
	call	_ZN5Lenia6Animal8GetCellsEv	 #
 # source/simulation.cpp:28: 		for (size_t i = 0; i < animal->m_h; i++)
	mov	rbx, QWORD PTR 8[rbp]	 # _62, animal_33(D)->m_h
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1131: 	return *(this->_M_impl._M_start + __n);
	mov	r8, QWORD PTR 56[rdi]	 # pretmp_102, MEM[(struct vector *)this_36(D) + 56B].D.142868._M_impl.D.142166._M_start
 # source/simulation.cpp:27: 		f32* animal_cells = animal->GetCells();
	vmovq	xmm6, rax	 # animal_cells, tmp179
 # source/simulation.cpp:28: 		for (size_t i = 0; i < animal->m_h; i++)
	test	rbx, rbx	 # _62
	je	.L207	 #,
 # source/simulation.cpp:29: 		for (size_t j = 0; j < animal->m_w; j++)
	mov	rdx, QWORD PTR 0[rbp]	 # _65, animal_33(D)->m_w
	test	rdx, rdx	 # _65
	je	.L207	 #,
 # source/simulation.cpp:30: 		for (size_t k = 0; k < m_scale; k++)
	mov	r15, QWORD PTR 16[rdi]	 # _68, this_36(D)->m_scale
	mov	eax, r12d	 # _61, y
	xor	r14d, r14d	 # ivtmp.749
	lea	rcx, [rax+r15]	 # ivtmp.742,
	mov	QWORD PTR 40[rsp], rcx	 # %sfp, ivtmp.742
 # source/simulation.cpp:28: 		for (size_t i = 0; i < animal->m_h; i++)
	xor	ecx, ecx	 # i
	test	r15, r15	 # _68
	jne	.L231	 #,
.L215:
 # source/simulation.cpp:28: 		for (size_t i = 0; i < animal->m_h; i++)
	add	rcx, 1	 # i,
 # source/simulation.cpp:28: 		for (size_t i = 0; i < animal->m_h; i++)
	cmp	rcx, rbx	 # i, _62
	jne	.L215	 #,
.L207:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	mov	rdx, QWORD PTR 64[rdi]	 # _56, MEM[(const struct vector *)this_36(D) + 56B].D.142868._M_impl.D.142166._M_finish
 # include/gl_setup.hpp:79:             glNamedBufferData(m_ID, m_data.size() * sizeof(T), &m_data[0], GL_DYNAMIC_COPY);
	mov	ecx, DWORD PTR 48[rdi]	 # MEM[(struct Buffer *)this_36(D) + 48B].m_ID, MEM[(struct Buffer *)this_36(D) + 48B].m_ID
	mov	r9d, 35050	 #,
 # include/gl_setup.hpp:79:             glNamedBufferData(m_ID, m_data.size() * sizeof(T), &m_data[0], GL_DYNAMIC_COPY);
	mov	rbx, QWORD PTR .refptr.glad_glNamedBufferData[rip]	 # tmp163,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	sub	rdx, r8	 # _56, pretmp_102
 # include/gl_setup.hpp:79:             glNamedBufferData(m_ID, m_data.size() * sizeof(T), &m_data[0], GL_DYNAMIC_COPY);
	call	[QWORD PTR [rbx]]	 # glad_glNamedBufferData
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1131: 	return *(this->_M_impl._M_start + __n);
	mov	r8, QWORD PTR 88[rdi]	 # _49, MEM[(struct vector *)this_36(D) + 88B].D.142868._M_impl.D.142166._M_start
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	mov	rdx, QWORD PTR 96[rdi]	 # _51, MEM[(const struct vector *)this_36(D) + 88B].D.142868._M_impl.D.142166._M_finish
 # include/gl_setup.hpp:79:             glNamedBufferData(m_ID, m_data.size() * sizeof(T), &m_data[0], GL_DYNAMIC_COPY);
	mov	r9d, 35050	 #,
	mov	ecx, DWORD PTR 80[rdi]	 # MEM[(struct Buffer *)this_36(D) + 80B].m_ID, MEM[(struct Buffer *)this_36(D) + 80B].m_ID
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	sub	rdx, r8	 # _51, _49
 # include/gl_setup.hpp:79:             glNamedBufferData(m_ID, m_data.size() * sizeof(T), &m_data[0], GL_DYNAMIC_COPY);
	call	[QWORD PTR [rbx]]	 # glad_glNamedBufferData
 # source/simulation.cpp:35: 		delete[] animal_cells;
	vmovq	rax, xmm6	 # animal_cells, animal_cells
	test	rax, rax	 # animal_cells
	je	.L230	 #,
 # source/simulation.cpp:36: 	}
	vmovups	xmm6, XMMWORD PTR 80[rsp]	 #,
 # source/simulation.cpp:35: 		delete[] animal_cells;
	mov	rcx, rax	 #, animal_cells
 # source/simulation.cpp:36: 	}
	add	rsp, 104	 #,
	pop	rbx	 #
	pop	rsi	 #
	pop	rdi	 #
	pop	rbp	 #
	pop	r12	 #
	pop	r13	 #
	pop	r14	 #
	pop	r15	 #
 # source/simulation.cpp:35: 		delete[] animal_cells;
	jmp	_ZdaPv	 #
.L231:
 # source/simulation.cpp:32: 			m_readBuffer[(x + i * m_scale + k) % m_h * m_w + (y + j * m_scale + l) % m_w] = animal_cells[i * animal->m_w + j];
	mov	QWORD PTR 48[rsp], rsi	 # %sfp, _16
 # source/simulation.cpp:32: 			m_readBuffer[(x + i * m_scale + k) % m_h * m_w + (y + j * m_scale + l) % m_w] = animal_cells[i * animal->m_w + j];
	mov	r12, rsi	 # _17, _16
	mov	r9, QWORD PTR [rdi]	 # _12, this_36(D)->m_w
	mov	r10, r14	 # ivtmp.749, ivtmp.749
	mov	rsi, QWORD PTR 8[rdi]	 # _10, this_36(D)->m_h
	vmovq	xmm5, r8	 # pretmp_102, pretmp_102
	mov	r13, rcx	 # i, i
	mov	r8, rax	 # _61, _61
	vmovq	xmm17, rdx	 # _65, _65
	mov	rax, rbx	 # _62, _62
	vmovq	xmm16, rdi	 # this, this
.L214:
	vmovq	rbx, xmm6	 # animal_cells, animal_cells
	vmovq	rdi, xmm17	 # _65, _65
	lea	rcx, [r15+r12]	 # _87,
 # source/simulation.cpp:32: 			m_readBuffer[(x + i * m_scale + k) % m_h * m_w + (y + j * m_scale + l) % m_w] = animal_cells[i * animal->m_w + j];
	mov	r14, r8	 # ivtmp.740, _61
	mov	QWORD PTR 56[rsp], r8	 # %sfp, _61
	lea	r11, [rbx+r10*4]	 # ivtmp.741,
	mov	rbp, QWORD PTR 40[rsp]	 # ivtmp.742, %sfp
	add	r10, rdi	 # ivtmp.749, _65
	mov	QWORD PTR 64[rsp], rax	 # %sfp, _62
	lea	rbx, [rbx+r10*4]	 # _21,
	vmovq	xmm4, r15	 # _68, _68
	mov	rdi, r11	 # ivtmp.741, ivtmp.741
	mov	QWORD PTR 72[rsp], r10	 # %sfp, ivtmp.749
	mov	r10, rcx	 # _87, _87
	.p2align 4
	.p2align 3
.L216:
 # source/simulation.cpp:32: 			m_readBuffer[(x + i * m_scale + k) % m_h * m_w + (y + j * m_scale + l) % m_w] = animal_cells[i * animal->m_w + j];
	mov	r8, r12	 # ivtmp.736, _17
	vmovq	r15, xmm5	 # pretmp_102, pretmp_102
	.p2align 4
	.p2align 3
.L213:
 # source/simulation.cpp:32: 			m_readBuffer[(x + i * m_scale + k) % m_h * m_w + (y + j * m_scale + l) % m_w] = animal_cells[i * animal->m_w + j];
	mov	rax, r8	 # tmp152, ivtmp.736
	xor	edx, edx	 # _11
 # source/simulation.cpp:32: 			m_readBuffer[(x + i * m_scale + k) % m_h * m_w + (y + j * m_scale + l) % m_w] = animal_cells[i * animal->m_w + j];
	mov	rcx, r14	 # ivtmp.731, ivtmp.740
 # source/simulation.cpp:32: 			m_readBuffer[(x + i * m_scale + k) % m_h * m_w + (y + j * m_scale + l) % m_w] = animal_cells[i * animal->m_w + j];
	div	rsi	 # _10
	mov	r11, rdx	 # _11, _11
 # source/simulation.cpp:32: 			m_readBuffer[(x + i * m_scale + k) % m_h * m_w + (y + j * m_scale + l) % m_w] = animal_cells[i * animal->m_w + j];
	imul	r11, r9	 # _13, _12
	.p2align 6
	.p2align 4
	.p2align 3
.L210:
 # source/simulation.cpp:32: 			m_readBuffer[(x + i * m_scale + k) % m_h * m_w + (y + j * m_scale + l) % m_w] = animal_cells[i * animal->m_w + j];
	mov	rax, rcx	 # tmp148, ivtmp.731
	xor	edx, edx	 # _18
 # source/simulation.cpp:32: 			m_readBuffer[(x + i * m_scale + k) % m_h * m_w + (y + j * m_scale + l) % m_w] = animal_cells[i * animal->m_w + j];
	vmovss	xmm0, DWORD PTR [rdi]	 # _5, MEM[(f32 *)_27]
 # source/simulation.cpp:31: 		for (size_t l = 0; l < m_scale; l++)
	add	rcx, 1	 # ivtmp.731,
 # source/simulation.cpp:32: 			m_readBuffer[(x + i * m_scale + k) % m_h * m_w + (y + j * m_scale + l) % m_w] = animal_cells[i * animal->m_w + j];
	div	r9	 # _12
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1131: 	return *(this->_M_impl._M_start + __n);
	add	rdx, r11	 # tmp149, _13
 # source/simulation.cpp:32: 			m_readBuffer[(x + i * m_scale + k) % m_h * m_w + (y + j * m_scale + l) % m_w] = animal_cells[i * animal->m_w + j];
	vmovss	DWORD PTR [r15+rdx*4], xmm0	 # MEM[(float &)_47], _5
 # source/simulation.cpp:31: 		for (size_t l = 0; l < m_scale; l++)
	cmp	rbp, rcx	 # ivtmp.742, ivtmp.731
	jne	.L210	 #,
 # source/simulation.cpp:30: 		for (size_t k = 0; k < m_scale; k++)
	add	r8, 1	 # ivtmp.736,
	cmp	r10, r8	 # _87, ivtmp.736
	jne	.L213	 #,
 # source/simulation.cpp:29: 		for (size_t j = 0; j < animal->m_w; j++)
	vmovq	rax, xmm4	 # _68, _68
	add	rdi, 4	 # ivtmp.741,
	add	r14, rax	 # ivtmp.740, _68
	add	rbp, rax	 # ivtmp.742, _68
	cmp	rbx, rdi	 # _21, ivtmp.741
	jne	.L216	 #,
 # source/simulation.cpp:28: 		for (size_t i = 0; i < animal->m_h; i++)
	mov	rax, QWORD PTR 64[rsp]	 # _62, %sfp
	add	r13, 1	 # i,
	mov	r8, QWORD PTR 56[rsp]	 # _61, %sfp
	vmovq	r15, xmm4	 # _68, _68
	mov	r10, QWORD PTR 72[rsp]	 # ivtmp.749, %sfp
 # source/simulation.cpp:28: 		for (size_t i = 0; i < animal->m_h; i++)
	cmp	rax, r13	 # _62, i
	je	.L229	 #,
 # source/simulation.cpp:32: 			m_readBuffer[(x + i * m_scale + k) % m_h * m_w + (y + j * m_scale + l) % m_w] = animal_cells[i * animal->m_w + j];
	mov	r12, r15	 # _9, _68
 # source/simulation.cpp:32: 			m_readBuffer[(x + i * m_scale + k) % m_h * m_w + (y + j * m_scale + l) % m_w] = animal_cells[i * animal->m_w + j];
	mov	rbx, QWORD PTR 48[rsp]	 # _16, %sfp
 # source/simulation.cpp:32: 			m_readBuffer[(x + i * m_scale + k) % m_h * m_w + (y + j * m_scale + l) % m_w] = animal_cells[i * animal->m_w + j];
	imul	r12, r13	 # _9, i
 # source/simulation.cpp:32: 			m_readBuffer[(x + i * m_scale + k) % m_h * m_w + (y + j * m_scale + l) % m_w] = animal_cells[i * animal->m_w + j];
	add	r12, rbx	 # _17, _16
	jmp	.L214	 #
.L229:
	vmovq	r8, xmm5	 # pretmp_102, pretmp_102
	vmovq	rdi, xmm16	 # this, this
	jmp	.L207	 #
.L230:
 # source/simulation.cpp:36: 	}
	vmovups	xmm6, XMMWORD PTR 80[rsp]	 #,
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
	.globl	_ZN5Lenia10Simulation20ReadShaderDataBufferEv
	.def	_ZN5Lenia10Simulation20ReadShaderDataBufferEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Lenia10Simulation20ReadShaderDataBufferEv
_ZN5Lenia10Simulation20ReadShaderDataBufferEv:
.LFB7107:
	push	rbx	 #
	.seh_pushreg	rbx
	sub	rsp, 48	 #,
	.seh_stackalloc	48
	vmovups	XMMWORD PTR 32[rsp], xmm6	 #,
	.seh_savexmm	xmm6, 32
	.seh_endprologue
 # include/gl_setup.hpp:75: 			glGetNamedBufferSubData(m_ID, 0, m_data.size() * sizeof(T), &m_data[0]);
	mov	rax, QWORD PTR .refptr.glad_glGetNamedBufferSubData[rip]	 # tmp121,
	vxorps	xmm6, xmm6, xmm6	 # tmp134
	xor	edx, edx	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1131: 	return *(this->_M_impl._M_start + __n);
	mov	r9, QWORD PTR 120[rcx]	 # _23, MEM[(struct vector *)this_12(D) + 120B].D.156494._M_impl.D.155827._M_start
 # source/simulation.cpp:38: 	void Simulation::ReadShaderDataBuffer() noexcept {
	mov	rbx, rcx	 # this, tmp133
 # include/gl_setup.hpp:75: 			glGetNamedBufferSubData(m_ID, 0, m_data.size() * sizeof(T), &m_data[0]);
	mov	ecx, DWORD PTR 112[rcx]	 # MEM[(struct Buffer *)this_12(D) + 112B].m_ID, MEM[(struct Buffer *)this_12(D) + 112B].m_ID
	mov	r8, QWORD PTR 128[rbx]	 # tmp139, MEM[(const struct vector *)this_12(D) + 120B].D.156494._M_impl.D.155827._M_finish
	sub	r8, r9	 # tmp139, _23
	call	[QWORD PTR [rax]]	 # glad_glGetNamedBufferSubData
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1131: 	return *(this->_M_impl._M_start + __n);
	mov	rax, QWORD PTR 120[rbx]	 # _14, MEM[(struct vector *)this_12(D) + 120B].D.156494._M_impl.D.155827._M_start
 # source/simulation.cpp:41: 		m_mass = (f64)shaderData.sum / 10000.f;
	vcvtusi2sd	xmm0, xmm6, DWORD PTR [rax]	 # tmp135, tmp134, MEM[(const struct ShaderData &)_14].sum
 # source/simulation.cpp:40: 		ShaderData shaderData = m_dataBuffer.m_data[0];
	mov	ecx, DWORD PTR 4[rax]	 # shaderData$centerOfMassX, MEM[(const struct ShaderData &)_14].centerOfMassX
	mov	edx, DWORD PTR 8[rax]	 # shaderData$centerOfMassY, MEM[(const struct ShaderData &)_14].centerOfMassY
 # source/simulation.cpp:41: 		m_mass = (f64)shaderData.sum / 10000.f;
	vmulsd	xmm0, xmm0, QWORD PTR .LC4[rip]	 # _5, _4,
 # source/simulation.cpp:44: 		f32 x = shaderData.centerOfMassX / f32(100.0 * m_mass);
	vcvtusi2ss	xmm1, xmm6, ecx	 # tmp136, tmp134, shaderData$centerOfMassX
 # source/simulation.cpp:43: 		f32 y = shaderData.centerOfMassY / f32(100.0 * m_mass);
	vcvtusi2ss	xmm6, xmm6, edx	 # tmp137, tmp134, shaderData$centerOfMassY
 # source/simulation.cpp:41: 		m_mass = (f64)shaderData.sum / 10000.f;
	vmovsd	QWORD PTR 32[rbx], xmm0	 # this_12(D)->m_mass, _5
 # source/simulation.cpp:43: 		f32 y = shaderData.centerOfMassY / f32(100.0 * m_mass);
	vmulsd	xmm0, xmm0, QWORD PTR .LC5[rip]	 # _7, _5,
 # source/simulation.cpp:43: 		f32 y = shaderData.centerOfMassY / f32(100.0 * m_mass);
	vcvtsd2ss	xmm0, xmm0, xmm0	 # _8, _7
 # source/simulation.cpp:44: 		f32 x = shaderData.centerOfMassX / f32(100.0 * m_mass);
	vdivss	xmm1, xmm1, xmm0	 # x_17, _9, _8
 # source/simulation.cpp:43: 		f32 y = shaderData.centerOfMassY / f32(100.0 * m_mass);
	vdivss	xmm6, xmm6, xmm0	 # y_16, _6, _8
 # source/simulation.cpp:46: 		m_centerOfMass = { u32(x), u32(y) };
	vcvttss2usi	eax, xmm1	 # tmp129, x_17
	mov	DWORD PTR 40[rbx], eax	 # this_12(D)->m_centerOfMass.x, tmp129
 # source/simulation.cpp:46: 		m_centerOfMass = { u32(x), u32(y) };
	vcvttss2usi	eax, xmm6	 # tmp132, y_16
	mov	DWORD PTR 44[rbx], eax	 # this_12(D)->m_centerOfMass.y, tmp132
 # source/simulation.cpp:47: 	}
	vmovups	xmm6, XMMWORD PTR 32[rsp]	 #,
	add	rsp, 48	 #,
	pop	rbx	 #
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
	.align 2
	.p2align 4
	.globl	_ZN5Lenia10Simulation11SwapBuffersEv
	.def	_ZN5Lenia10Simulation11SwapBuffersEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Lenia10Simulation11SwapBuffersEv
_ZN5Lenia10Simulation11SwapBuffersEv:
.LFB7109:
	push	rsi	 #
	.seh_pushreg	rsi
	push	rbx	 #
	.seh_pushreg	rbx
	sub	rsp, 40	 #,
	.seh_stackalloc	40
	.seh_endprologue
 # source/simulation.cpp:59: 		m_readBuffer.m_binding = static_cast<BufferBinding>(1 - static_cast<i8>(m_readBuffer.m_binding));
	mov	eax, 1	 # tmp116,
 # source/simulation.cpp:61: 		glBindBufferBase(GL_SHADER_STORAGE_BUFFER, static_cast<GLuint>(m_readBuffer.m_binding), m_writeBuffer.m_ID);
	mov	rsi, QWORD PTR .refptr.glad_glBindBufferBase[rip]	 # tmp122,
 # source/simulation.cpp:59: 		m_readBuffer.m_binding = static_cast<BufferBinding>(1 - static_cast<i8>(m_readBuffer.m_binding));
	mov	edx, eax	 # _4, tmp116
 # source/simulation.cpp:58: 	void Simulation::SwapBuffers() noexcept {
	mov	rbx, rcx	 # this, tmp128
 # source/simulation.cpp:59: 		m_readBuffer.m_binding = static_cast<BufferBinding>(1 - static_cast<i8>(m_readBuffer.m_binding));
	movsx	ecx, BYTE PTR 52[rcx]	 # _3, this_17(D)->m_readBuffer.m_binding
 # source/simulation.cpp:61: 		glBindBufferBase(GL_SHADER_STORAGE_BUFFER, static_cast<GLuint>(m_readBuffer.m_binding), m_writeBuffer.m_ID);
	mov	r8d, DWORD PTR 80[rbx]	 #, this_17(D)->m_writeBuffer.m_ID
 # source/simulation.cpp:59: 		m_readBuffer.m_binding = static_cast<BufferBinding>(1 - static_cast<i8>(m_readBuffer.m_binding));
	sub	edx, ecx	 # _4, _3
 # source/simulation.cpp:60: 		m_writeBuffer.m_binding = static_cast<BufferBinding>(1 - static_cast<i8>(m_writeBuffer.m_binding));
	movsx	ecx, BYTE PTR 84[rbx]	 # _7, this_17(D)->m_writeBuffer.m_binding
 # source/simulation.cpp:59: 		m_readBuffer.m_binding = static_cast<BufferBinding>(1 - static_cast<i8>(m_readBuffer.m_binding));
	mov	DWORD PTR 52[rbx], edx	 # this_17(D)->m_readBuffer.m_binding, _4
 # source/simulation.cpp:60: 		m_writeBuffer.m_binding = static_cast<BufferBinding>(1 - static_cast<i8>(m_writeBuffer.m_binding));
	sub	eax, ecx	 # tmp120, _7
 # source/simulation.cpp:61: 		glBindBufferBase(GL_SHADER_STORAGE_BUFFER, static_cast<GLuint>(m_readBuffer.m_binding), m_writeBuffer.m_ID);
	mov	ecx, 37074	 #,
 # source/simulation.cpp:60: 		m_writeBuffer.m_binding = static_cast<BufferBinding>(1 - static_cast<i8>(m_writeBuffer.m_binding));
	mov	DWORD PTR 84[rbx], eax	 # this_17(D)->m_writeBuffer.m_binding, tmp120
 # source/simulation.cpp:61: 		glBindBufferBase(GL_SHADER_STORAGE_BUFFER, static_cast<GLuint>(m_readBuffer.m_binding), m_writeBuffer.m_ID);
	call	[QWORD PTR [rsi]]	 # glad_glBindBufferBase
 # source/simulation.cpp:62: 		glBindBufferBase(GL_SHADER_STORAGE_BUFFER, static_cast<GLuint>(m_writeBuffer.m_binding), m_readBuffer.m_ID);
	mov	edx, DWORD PTR 84[rbx]	 # this_17(D)->m_writeBuffer.m_binding, this_17(D)->m_writeBuffer.m_binding
	mov	r8d, DWORD PTR 48[rbx]	 #, this_17(D)->m_readBuffer.m_ID
	mov	ecx, 37074	 #,
	call	[QWORD PTR [rsi]]	 # glad_glBindBufferBase
	nop	
 # source/simulation.cpp:63: 	}
	add	rsp, 40	 #,
	pop	rbx	 #
	pop	rsi	 #
	ret	
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA7109:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7109-.LLSDACSB7109
.LLSDACSB7109:
.LLSDACSE7109:
	.text
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN5Lenia10Simulation17ApplyColorPaletteERKNS_12ColorPaletteE
	.def	_ZN5Lenia10Simulation17ApplyColorPaletteERKNS_12ColorPaletteE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Lenia10Simulation17ApplyColorPaletteERKNS_12ColorPaletteE
_ZN5Lenia10Simulation17ApplyColorPaletteERKNS_12ColorPaletteE:
.LFB7110:
	sub	rsp, 40	 #,
	.seh_stackalloc	40
	.seh_endprologue
 # include/gl_setup.hpp:79:             glNamedBufferData(m_ID, m_data.size() * sizeof(T), &m_data[0], GL_DYNAMIC_COPY);
	mov	rax, QWORD PTR .refptr.glad_glNamedBufferData[rip]	 # tmp113,
	mov	r9d, 35050	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1131: 	return *(this->_M_impl._M_start + __n);
	mov	r8, QWORD PTR 152[rcx]	 # _9, MEM[(struct vector *)this_1(D) + 152B].D.157570._M_impl.D.156903._M_start
 # source/simulation.cpp:66: 		m_colorBuffer.m_data[0] = colorPalette;
	vmovdqu64	zmm0, ZMMWORD PTR [rdx]	 # *colorPalette_4(D), *colorPalette_4(D)
	vmovdqu64	ZMMWORD PTR [r8], zmm0	 # MEM[(struct value_type *)_9], *colorPalette_4(D)
	vmovdqu64	zmm0, ZMMWORD PTR 64[rdx]	 # *colorPalette_4(D), *colorPalette_4(D)
	vmovdqu64	ZMMWORD PTR 64[r8], zmm0	 # MEM[(struct value_type *)_9], *colorPalette_4(D)
	vmovdqu64	zmm0, ZMMWORD PTR 128[rdx]	 # *colorPalette_4(D), *colorPalette_4(D)
	vmovdqu64	ZMMWORD PTR 128[r8], zmm0	 # MEM[(struct value_type *)_9], *colorPalette_4(D)
	vmovdqu64	zmm0, ZMMWORD PTR 192[rdx]	 # *colorPalette_4(D), *colorPalette_4(D)
	vmovdqu64	ZMMWORD PTR 192[r8], zmm0	 # MEM[(struct value_type *)_9], *colorPalette_4(D)
	vmovdqu	xmm1, XMMWORD PTR 256[rdx]	 # tmp118, *colorPalette_4(D)
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	mov	rdx, QWORD PTR 160[rcx]	 # _7, MEM[(const struct vector *)this_1(D) + 152B].D.157570._M_impl.D.156903._M_finish
 # include/gl_setup.hpp:79:             glNamedBufferData(m_ID, m_data.size() * sizeof(T), &m_data[0], GL_DYNAMIC_COPY);
	mov	ecx, DWORD PTR 144[rcx]	 # MEM[(struct Buffer *)this_1(D) + 144B].m_ID, MEM[(struct Buffer *)this_1(D) + 144B].m_ID
 # source/simulation.cpp:66: 		m_colorBuffer.m_data[0] = colorPalette;
	vmovdqu	XMMWORD PTR 256[r8], xmm1	 # MEM[(struct value_type *)_9], tmp118
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	sub	rdx, r8	 # _7, _9
 # include/gl_setup.hpp:79:             glNamedBufferData(m_ID, m_data.size() * sizeof(T), &m_data[0], GL_DYNAMIC_COPY);
	vzeroupper
	call	[QWORD PTR [rax]]	 # glad_glNamedBufferData
	nop	
 # source/simulation.cpp:68: 	}
	add	rsp, 40	 #,
	ret	
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA7110:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7110-.LLSDACSB7110
.LLSDACSB7110:
.LLSDACSE7110:
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
.LFB7111:
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
	vmovups	XMMWORD PTR 80[rsp], xmm6	 #,
	.seh_savexmm	xmm6, 80
	vmovups	XMMWORD PTR 96[rsp], xmm7	 #,
	.seh_savexmm	xmm7, 96
	.seh_endprologue
 # include/gl_setup.hpp:75: 			glGetNamedBufferSubData(m_ID, 0, m_data.size() * sizeof(T), &m_data[0]);
	mov	rax, QWORD PTR .refptr.glad_glGetNamedBufferSubData[rip]	 # tmp214,
	xor	edx, edx	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1131: 	return *(this->_M_impl._M_start + __n);
	mov	r9, QWORD PTR 56[rcx]	 # _32, MEM[(struct vector *)this_24(D) + 56B].D.142868._M_impl.D.142166._M_start
 # source/simulation.cpp:70: 	void Simulation::CalculateBoundingBoxes() noexcept {
	mov	r15, rcx	 # this, tmp289
 # include/gl_setup.hpp:75: 			glGetNamedBufferSubData(m_ID, 0, m_data.size() * sizeof(T), &m_data[0]);
	mov	ecx, DWORD PTR 48[rcx]	 # MEM[(struct Buffer *)this_24(D) + 48B].m_ID, MEM[(struct Buffer *)this_24(D) + 48B].m_ID
	mov	r8, QWORD PTR 64[r15]	 # tmp347, MEM[(const struct vector *)this_24(D) + 56B].D.142868._M_impl.D.142166._M_finish
	sub	r8, r9	 # tmp347, _32
	call	[QWORD PTR [rax]]	 # glad_glGetNamedBufferSubData
 # source/simulation.cpp:73: 		i32 h = static_cast<i32>(m_h);
	mov	rax, QWORD PTR 8[r15]	 # _2, this_24(D)->m_h
 # source/simulation.cpp:74: 		i32 w = static_cast<i32>(m_w);
	mov	r9, QWORD PTR [r15]	 # _249, this_24(D)->m_w
 # source/simulation.cpp:76: 		for (u32 i = 0; i < m_h; ++i) 
	test	rax, rax	 # _2
	je	.L319	 #,
 # source/simulation.cpp:72: 		std::vector<BoundingBox> boxes = std::vector<BoundingBox>();	
	xor	r14d, r14d	 # boxes$D158646$_M_impl$D157979$_M_end_of_storage
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1908: 	if (max_size() - size() < __n)
	mov	QWORD PTR 48[rsp], r9	 # %sfp, _249
 # source/simulation.cpp:76: 		for (u32 i = 0; i < m_h; ++i) 
	xor	ebp, ebp	 # i
 # source/simulation.cpp:76: 		for (u32 i = 0; i < m_h; ++i) 
	xor	r10d, r10d	 # _15
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1908: 	if (max_size() - size() < __n)
	mov	QWORD PTR 64[rsp], r14	 # %sfp, boxes$D158646$_M_impl$D157979$_M_end_of_storage
	mov	rbx, r10	 # _15, _15
	mov	r12d, ebp	 # i, i
 # source/simulation.cpp:72: 		std::vector<BoundingBox> boxes = std::vector<BoundingBox>();	
	xor	r13d, r13d	 # boxes
 # source/simulation.cpp:86: 				boxes.emplace_back(j - padding, i - padding, j + padding, i + padding);
	vmovdqu	xmm7, XMMWORD PTR .LC6[rip]	 # tmp286,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1908: 	if (max_size() - size() < __n)
	mov	ebp, eax	 # h, h
	mov	edi, r9d	 # w, w
	mov	r10, r15	 # this, this
	.p2align 4
	.p2align 3
.L236:
 # source/simulation.cpp:77: 		for (u32 j = 0; j < m_w; ++j) {
	cmp	QWORD PTR 48[rsp], 0	 # %sfp,
	je	.L318	 #,
 # source/simulation.cpp:77: 		for (u32 j = 0; j < m_w; ++j) {
	xor	esi, esi	 # j
 # source/simulation.cpp:77: 		for (u32 j = 0; j < m_w; ++j) {
	xor	r11d, r11d	 # _13
	mov	rdx, rbx	 # _15, _15
	mov	rax, r13	 # __new_finish, __new_finish
	mov	rbx, r11	 # _13, _13
	mov	r13d, r12d	 # i, i
	mov	r11, rdx	 # _15, _15
	mov	r12d, ebp	 # h, h
	mov	ebp, edi	 # w, w
	mov	edi, esi	 # j, j
	mov	rsi, r14	 # boxes, boxes
	mov	r14, rax	 # __new_finish, __new_finish
	.p2align 4
	.p2align 3
.L262:
 # source/simulation.cpp:79: 			for (auto& box : boxes) {
	cmp	rsi, r14	 # boxes, __new_finish
	je	.L238	 #,
	mov	QWORD PTR 56[rsp], rbx	 # %sfp, _13
	mov	rcx, rsi	 # ivtmp.807, boxes
	mov	QWORD PTR 40[rsp], rsi	 # %sfp, boxes
	jmp	.L252	 #
	.p2align 4,,10
	.p2align 3
.L321:
 # include/gl_setup.hpp:99:             b8 right = m_x1 < w ? x >= m_x0 : (x >= m_x0 || x <= (m_x1 % w));
	cmp	ebx, edi	 # _63, j
	setle	r8b	 #, iftmp.78_88
 # include/gl_setup.hpp:100:             b8 top = m_y0 > 0 ? y <= m_y1 : (y <= m_y1 || y >= (m_y0 % h + h) % h);
	test	r9d, r9d	 # _64
	jle	.L245	 #,
.L323:
 # include/gl_setup.hpp:100:             b8 top = m_y0 > 0 ? y <= m_y1 : (y <= m_y1 || y >= (m_y0 % h + h) % h);
	cmp	r13d, r15d	 # i, _66
	setle	bl	 #, iftmp.80_79
 # include/gl_setup.hpp:101:             b8 bottom = m_y1 < h ? y >= m_y0 : (y >= m_y0 || y <= (m_y1 % h));
	cmp	r12d, r15d	 # h, _66
	jle	.L248	 #,
.L322:
 # include/gl_setup.hpp:101:             b8 bottom = m_y1 < h ? y >= m_y0 : (y >= m_y0 || y <= (m_y1 % h));
	cmp	r9d, r13d	 # _64, i
	setle	al	 #, iftmp.82_85
.L249:
 # include/gl_setup.hpp:102:             return left && right && top && bottom;
	test	sil, sil	 # iftmp.76_69
	je	.L243	 #,
	test	r8b, r8b	 # iftmp.78_88
	je	.L243	 #,
 # source/simulation.cpp:80: 				if (box(j, i, w, h)) {
	test	bl, bl	 # iftmp.80_79
	je	.L243	 #,
	test	al, al	 # iftmp.82_85
	jne	.L316	 #,
	.p2align 4
	.p2align 3
.L243:
 # source/simulation.cpp:79: 			for (auto& box : boxes) {
	add	rcx, 16	 # ivtmp.807,
	cmp	r14, rcx	 # __new_finish, ivtmp.807
	je	.L320	 #,
.L252:
	mov	ebx, DWORD PTR [rcx]	 # _63, MEM[(int *)_190]
	mov	r9d, DWORD PTR 4[rcx]	 # _64, MEM[(int *)_190 + 4B]
	mov	r8d, DWORD PTR 8[rcx]	 # _65, MEM[(int *)_190 + 8B]
	mov	r15d, DWORD PTR 12[rcx]	 # _66, MEM[(int *)_190 + 12B]
 # include/gl_setup.hpp:98:             b8 left = m_x0 > 0 ? x <= m_x1 : (x <= m_x1 || x >= (m_x0 % w + w) % w);
	test	ebx, ebx	 # _63
	jle	.L239	 #,
 # include/gl_setup.hpp:98:             b8 left = m_x0 > 0 ? x <= m_x1 : (x <= m_x1 || x >= (m_x0 % w + w) % w);
	cmp	r8d, edi	 # _65, j
	setge	sil	 #, iftmp.76_69
.L240:
 # include/gl_setup.hpp:99:             b8 right = m_x1 < w ? x >= m_x0 : (x >= m_x0 || x <= (m_x1 % w));
	cmp	ebp, r8d	 # w, _65
	jg	.L321	 #,
 # include/gl_setup.hpp:99:             b8 right = m_x1 < w ? x >= m_x0 : (x >= m_x0 || x <= (m_x1 % w));
	cmp	ebx, edi	 # _63, j
	jle	.L287	 #,
 # include/gl_setup.hpp:99:             b8 right = m_x1 < w ? x >= m_x0 : (x >= m_x0 || x <= (m_x1 % w));
	mov	eax, r8d	 # _65, _65
	cdq
	idiv	ebp	 # w
 # include/gl_setup.hpp:99:             b8 right = m_x1 < w ? x >= m_x0 : (x >= m_x0 || x <= (m_x1 % w));
	cmp	edx, edi	 # _76, j
	jge	.L287	 #,
 # include/gl_setup.hpp:100:             b8 top = m_y0 > 0 ? y <= m_y1 : (y <= m_y1 || y >= (m_y0 % h + h) % h);
	test	r9d, r9d	 # _64
	jg	.L243	 #,
 # include/gl_setup.hpp:99:             b8 right = m_x1 < w ? x >= m_x0 : (x >= m_x0 || x <= (m_x1 % w));
	xor	r8d, r8d	 # iftmp.78_88
 # include/gl_setup.hpp:100:             b8 top = m_y0 > 0 ? y <= m_y1 : (y <= m_y1 || y >= (m_y0 % h + h) % h);
	cmp	r13d, r15d	 # i, _66
	jle	.L243	 #,
	.p2align 4
	.p2align 3
.L247:
 # include/gl_setup.hpp:100:             b8 top = m_y0 > 0 ? y <= m_y1 : (y <= m_y1 || y >= (m_y0 % h + h) % h);
	mov	eax, r9d	 # tmp232, _64
	cdq
	idiv	r12d	 # h
 # include/gl_setup.hpp:100:             b8 top = m_y0 > 0 ? y <= m_y1 : (y <= m_y1 || y >= (m_y0 % h + h) % h);
	lea	eax, [rdx+r12]	 # _82,
 # include/gl_setup.hpp:100:             b8 top = m_y0 > 0 ? y <= m_y1 : (y <= m_y1 || y >= (m_y0 % h + h) % h);
	cdq
	idiv	r12d	 # h
 # include/gl_setup.hpp:100:             b8 top = m_y0 > 0 ? y <= m_y1 : (y <= m_y1 || y >= (m_y0 % h + h) % h);
	cmp	edx, r13d	 # _83, i
	jg	.L243	 #,
.L288:
 # include/gl_setup.hpp:100:             b8 top = m_y0 > 0 ? y <= m_y1 : (y <= m_y1 || y >= (m_y0 % h + h) % h);
	mov	ebx, 1	 # iftmp.80_79,
 # include/gl_setup.hpp:101:             b8 bottom = m_y1 < h ? y >= m_y0 : (y >= m_y0 || y <= (m_y1 % h));
	cmp	r12d, r15d	 # h, _66
	jg	.L322	 #,
.L248:
 # include/gl_setup.hpp:101:             b8 bottom = m_y1 < h ? y >= m_y0 : (y >= m_y0 || y <= (m_y1 % h));
	cmp	r13d, r9d	 # i, _64
	jge	.L289	 #,
 # include/gl_setup.hpp:101:             b8 bottom = m_y1 < h ? y >= m_y0 : (y >= m_y0 || y <= (m_y1 % h));
	mov	eax, r15d	 # _66, _66
	cdq
	idiv	r12d	 # h
 # include/gl_setup.hpp:101:             b8 bottom = m_y1 < h ? y >= m_y0 : (y >= m_y0 || y <= (m_y1 % h));
	cmp	r13d, edx	 # i, _86
	jg	.L243	 #,
.L289:
 # include/gl_setup.hpp:101:             b8 bottom = m_y1 < h ? y >= m_y0 : (y >= m_y0 || y <= (m_y1 % h));
	mov	eax, 1	 # iftmp.82_85,
	jmp	.L249	 #
	.p2align 4,,10
	.p2align 3
.L239:
 # include/gl_setup.hpp:98:             b8 left = m_x0 > 0 ? x <= m_x1 : (x <= m_x1 || x >= (m_x0 % w + w) % w);
	mov	esi, 1	 # iftmp.76_69,
 # include/gl_setup.hpp:98:             b8 left = m_x0 > 0 ? x <= m_x1 : (x <= m_x1 || x >= (m_x0 % w + w) % w);
	cmp	r8d, edi	 # _65, j
	jge	.L240	 #,
 # include/gl_setup.hpp:98:             b8 left = m_x0 > 0 ? x <= m_x1 : (x <= m_x1 || x >= (m_x0 % w + w) % w);
	mov	eax, ebx	 # tmp219, _63
	cdq
	idiv	ebp	 # w
 # include/gl_setup.hpp:98:             b8 left = m_x0 > 0 ? x <= m_x1 : (x <= m_x1 || x >= (m_x0 % w + w) % w);
	lea	eax, [rdx+rbp]	 # _72,
 # include/gl_setup.hpp:98:             b8 left = m_x0 > 0 ? x <= m_x1 : (x <= m_x1 || x >= (m_x0 % w + w) % w);
	cdq
	idiv	ebp	 # w
 # include/gl_setup.hpp:98:             b8 left = m_x0 > 0 ? x <= m_x1 : (x <= m_x1 || x >= (m_x0 % w + w) % w);
	cmp	edx, edi	 # _73, j
	setle	sil	 #, iftmp.76_69
	jmp	.L240	 #
	.p2align 4,,10
	.p2align 3
.L287:
 # include/gl_setup.hpp:99:             b8 right = m_x1 < w ? x >= m_x0 : (x >= m_x0 || x <= (m_x1 % w));
	mov	r8d, 1	 # iftmp.78_88,
 # include/gl_setup.hpp:100:             b8 top = m_y0 > 0 ? y <= m_y1 : (y <= m_y1 || y >= (m_y0 % h + h) % h);
	test	r9d, r9d	 # _64
	jg	.L323	 #,
.L245:
 # include/gl_setup.hpp:100:             b8 top = m_y0 > 0 ? y <= m_y1 : (y <= m_y1 || y >= (m_y0 % h + h) % h);
	cmp	r15d, r13d	 # _66, i
	jge	.L288	 #,
	jmp	.L247	 #
	.p2align 4,,10
	.p2align 3
.L320:
	mov	rbx, QWORD PTR 56[rsp]	 # _13, %sfp
	mov	rsi, QWORD PTR 40[rsp]	 # boxes, %sfp
.L238:
 # source/simulation.cpp:85: 			if (new_point && m_readBuffer[i * m_w + j]) {
	mov	rax, QWORD PTR 48[rsp]	 # _6, %sfp
 # source/simulation.cpp:85: 			if (new_point && m_readBuffer[i * m_w + j]) {
	mov	rdx, QWORD PTR 56[r10]	 # MEM[(struct vector *)this_24(D) + 56B].D.142868._M_impl.D.142166._M_start, MEM[(struct vector *)this_24(D) + 56B].D.142868._M_impl.D.142166._M_start
 # source/simulation.cpp:85: 			if (new_point && m_readBuffer[i * m_w + j]) {
	vxorps	xmm0, xmm0, xmm0	 # tmp244
 # source/simulation.cpp:85: 			if (new_point && m_readBuffer[i * m_w + j]) {
	imul	rax, r11	 # _6, _15
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1131: 	return *(this->_M_impl._M_start + __n);
	add	rax, rbx	 # tmp242, _13
 # source/simulation.cpp:85: 			if (new_point && m_readBuffer[i * m_w + j]) {
	vcomiss	xmm0, DWORD PTR [rdx+rax*4]	 # tmp244, MEM[(float &)_54]
	jne	.L324	 #,
.L250:
 # source/simulation.cpp:77: 		for (u32 j = 0; j < m_w; ++j) {
	mov	rax, QWORD PTR 48[rsp]	 # _249, %sfp
 # source/simulation.cpp:77: 		for (u32 j = 0; j < m_w; ++j) {
	lea	ebx, 1[rdi]	 #,
	mov	rdi, rbx	 #,
 # source/simulation.cpp:77: 		for (u32 j = 0; j < m_w; ++j) {
	cmp	rbx, rax	 # _13, _249
	jb	.L262	 #,
 # source/simulation.cpp:76: 		for (u32 i = 0; i < m_h; ++i) 
	mov	edi, ebp	 # w, w
	mov	ebp, r12d	 # h, h
	mov	r12d, r13d	 # i, i
	mov	r13, r14	 # __new_finish, __new_finish
	lea	ebx, 1[r12]	 #,
	mov	r14, rsi	 # boxes, boxes
	mov	r12, rbx	 #,
 # source/simulation.cpp:76: 		for (u32 i = 0; i < m_h; ++i) 
	cmp	rbx, QWORD PTR 8[r10]	 # _15, this_24(D)->m_h
	jb	.L236	 #,
.L318:
	mov	r12, r13	 # __new_finish, __new_finish
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1081: 			   - this->_M_impl._M_start);
	mov	rcx, QWORD PTR 184[r10]	 # _157, MEM[(const struct vector *)this_24(D) + 184B].D.158646._M_impl.D.157979._M_start
	mov	r13, r14	 # boxes, boxes
	mov	r15, r10	 # this, this
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1081: 			   - this->_M_impl._M_start);
	mov	rax, QWORD PTR 200[r10]	 # _158, MEM[(const struct vector *)this_24(D) + 184B].D.158646._M_impl.D.157979._M_end_of_storage
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	mov	rbx, r12	 # _153, __new_finish
	mov	r14, QWORD PTR 64[rsp]	 # boxes$D158646$_M_impl$D157979$_M_end_of_storage, %sfp
	sub	rbx, r13	 # _153, boxes
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1081: 			   - this->_M_impl._M_start);
	sub	rax, rcx	 # _158, _157
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:236: 	  if (__xlen > capacity())
	cmp	rax, rbx	 # _158, _153
	jnb	.L264	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:134: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	movabs	rax, 9223372036854775792	 # tmp261,
	cmp	rax, rbx	 # tmp261, _153
	jb	.L325	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	rcx, rbx	 #, _153
	call	_Znwy	 #
	mov	rsi, rax	 # _196, tmp291
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_uninitialized.h:119: 	  for (; __first != __last; ++__first, (void)++__cur)
	cmp	r13, r12	 # boxes, __new_finish
	je	.L269	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_construct.h:119:       ::new((void*)__p) _Tp(std::forward<_Args>(__args)...);
	mov	r8, rbx	 #, _153
	mov	rdx, r13	 #, boxes
	mov	rcx, rax	 #, _196
	call	memcpy	 #
.L269:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:244: 			    - this->_M_impl._M_start);
	mov	rcx, QWORD PTR 184[r15]	 # _168, MEM[(struct vector *)this_24(D) + 184B].D.158646._M_impl.D.157979._M_start
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:388: 	if (__p)
	test	rcx, rcx	 # _168
	je	.L268	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:244: 			    - this->_M_impl._M_start);
	mov	rdx, QWORD PTR 200[r15]	 # _169, MEM[(struct vector *)this_24(D) + 184B].D.158646._M_impl.D.157979._M_end_of_storage
	sub	rdx, rcx	 # _169, _168
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L268:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:246: 	      this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __xlen;
	add	rbx, rsi	 # _10, _196
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:245: 	      this->_M_impl._M_start = __tmp;
	mov	QWORD PTR 184[r15], rsi	 # MEM[(struct vector *)this_24(D) + 184B].D.158646._M_impl.D.157979._M_start, _196
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	sub	r14, r13	 # _102, boxes
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:246: 	      this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __xlen;
	mov	QWORD PTR 200[r15], rbx	 # MEM[(struct vector *)this_24(D) + 184B].D.158646._M_impl.D.157979._M_end_of_storage, _10
.L270:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:262: 	  this->_M_impl._M_finish = this->_M_impl._M_start + __xlen;
	mov	QWORD PTR 192[r15], rbx	 # MEM[(struct vector *)this_24(D) + 184B].D.158646._M_impl.D.157979._M_finish, _10
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:388: 	if (__p)
	test	r13, r13	 # boxes
	jne	.L275	 #,
.L317:
 # source/simulation.cpp:90: 	}
	vmovups	xmm6, XMMWORD PTR 80[rsp]	 #,
	vmovups	xmm7, XMMWORD PTR 96[rsp]	 #,
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
	.p2align 4,,10
	.p2align 3
.L316:
	mov	rsi, QWORD PTR 40[rsp]	 # boxes, %sfp
	jmp	.L250	 #
	.p2align 4,,10
	.p2align 3
.L324:
 # source/simulation.cpp:86: 				boxes.emplace_back(j - padding, i - padding, j + padding, i + padding);
	vmovd	xmm1, edi	 # j, j
	vpinsrd	xmm0, xmm1, r13d, 1	 # tmp246, j, i
	vpunpcklqdq	xmm0, xmm0, xmm0	 # _298, tmp246, tmp246
	vpaddd	xmm6, xmm0, xmm7	 # vect__103.782, _298, tmp286
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:114: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	cmp	QWORD PTR 64[rsp], r14	 # %sfp, __new_finish
	je	.L254	 #,
 # include/gl_setup.hpp:91:         BoundingBox(i32 l, i32 t, i32 r, i32 b) : m_x0(l), m_y0(t), m_x1(r), m_y1(b) {}
	vmovdqu	XMMWORD PTR [r14], xmm6	 # MEM <vector(4) int> [(int *)boxes$8_211], vect__103.782
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:119: 	    ++this->_M_impl._M_finish;
	add	r14, 16	 # __new_finish,
	jmp	.L250	 #
.L254:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1908: 	if (max_size() - size() < __n)
	movabs	rdx, 576460752303423487	 # tmp357,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	mov	rbx, QWORD PTR 64[rsp]	 # _137, %sfp
	sub	rbx, rsi	 # _137, boxes
	mov	rax, rbx	 # _138, _137
	sar	rax, 4	 # _138,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1908: 	if (max_size() - size() < __n)
	cmp	rax, rdx	 # _138, tmp357
	je	.L326	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:262:       if (__a < __b)
	test	rax, rax	 # _138
	mov	edx, 1	 # tmp295,
	cmovne	rdx, rax	 # _138,, _142
	add	rax, rdx	 # tmp254, _142
	jc	.L257	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1912: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	movabs	rdx, 576460752303423487	 # tmp294,
	cmp	rax, rdx	 # tmp254, tmp294
	cmovbe	rdx, rax	 # tmp254,, tmp294
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	r9, rdx	 # _144, tmp294
	sal	r9, 4	 # _144,
.L258:
	mov	rcx, r9	 #, _304
	mov	QWORD PTR 56[rsp], r10	 # %sfp, this
	mov	QWORD PTR 48[rsp], r11	 # %sfp, _15
	mov	QWORD PTR 40[rsp], r9	 # %sfp, _304
	call	_Znwy	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_uninitialized.h:1102:       for (; __first != __last; ++__first, (void)++__cur)
	cmp	rsi, r14	 # boxes, __new_finish
	mov	r9, QWORD PTR 40[rsp]	 # _304, %sfp
	mov	r11, QWORD PTR 48[rsp]	 # _15, %sfp
	mov	r10, QWORD PTR 56[rsp]	 # this, %sfp
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	r8, rax	 # _150, tmp290
 # include/gl_setup.hpp:91:         BoundingBox(i32 l, i32 t, i32 r, i32 b) : m_x0(l), m_y0(t), m_x1(r), m_y1(b) {}
	vmovdqu	XMMWORD PTR [rax+rbx], xmm6	 # MEM <vector(4) int> [(int *)_114], vect__103.782
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_uninitialized.h:1102:       for (; __first != __last; ++__first, (void)++__cur)
	je	.L259	 #,
	sub	r14, rsi	 # _234, boxes
	mov	rdx, rsi	 # __first, boxes
	lea	rcx, [rax+r14]	 # __cur,
	.p2align 5
	.p2align 4
	.p2align 3
.L260:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_construct.h:97:     { return ::new((void*)__location) _Tp(std::forward<_Args>(__args)...); }
	vmovdqu	xmm2, XMMWORD PTR [rdx]	 # tmp360, MEM[(struct BoundingBox &)__first_257]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_uninitialized.h:1102:       for (; __first != __last; ++__first, (void)++__cur)
	add	rax, 16	 # __cur,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_uninitialized.h:1102:       for (; __first != __last; ++__first, (void)++__cur)
	add	rdx, 16	 # __first,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_construct.h:97:     { return ::new((void*)__location) _Tp(std::forward<_Args>(__args)...); }
	vmovdqu	XMMWORD PTR -16[rax], xmm2	 # MEM[(struct BoundingBox *)__cur_199], tmp360
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_uninitialized.h:1102:       for (; __first != __last; ++__first, (void)++__cur)
	cmp	rax, rcx	 # __cur, __cur
	jne	.L260	 #,
.L259:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:649: 	    ++__new_finish;
	lea	r14, 16[rax]	 # __new_finish,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:614: 	  if (_M_storage)
	test	rsi, rsi	 # boxes
	je	.L261	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:687: 	__guard._M_len = this->_M_impl._M_end_of_storage - __old_start;
	mov	rdx, QWORD PTR 64[rsp]	 # boxes$D158646$_M_impl$D157979$_M_end_of_storage, %sfp
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	rcx, rsi	 #, boxes
	mov	QWORD PTR 72[rsp], r10	 # %sfp, this
	mov	QWORD PTR 56[rsp], r11	 # %sfp, _15
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:687: 	__guard._M_len = this->_M_impl._M_end_of_storage - __old_start;
	sub	rdx, rsi	 # boxes$D158646$_M_impl$D157979$_M_end_of_storage, boxes
	mov	QWORD PTR 48[rsp], r9	 # %sfp, _304
	mov	QWORD PTR 40[rsp], r8	 # %sfp, _150
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
	mov	r10, QWORD PTR 72[rsp]	 # this, %sfp
	mov	r11, QWORD PTR 56[rsp]	 # _15, %sfp
	mov	r9, QWORD PTR 48[rsp]	 # _304, %sfp
	mov	r8, QWORD PTR 40[rsp]	 # _150, %sfp
.L261:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:694:       this->_M_impl._M_end_of_storage = __new_start + __len;
	lea	rax, [r8+r9]	 # boxes$D158646$_M_impl$D157979$_M_end_of_storage,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:692:       this->_M_impl._M_start = __new_start;
	mov	rsi, r8	 # boxes, _150
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:694:       this->_M_impl._M_end_of_storage = __new_start + __len;
	mov	QWORD PTR 64[rsp], rax	 # %sfp, boxes$D158646$_M_impl$D157979$_M_end_of_storage
 # source/simulation.cpp:77: 		for (u32 j = 0; j < m_w; ++j) {
	mov	rax, QWORD PTR [r10]	 # _249, this_24(D)->m_w
	mov	QWORD PTR 48[rsp], rax	 # %sfp, _249
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:695:     }
	jmp	.L250	 #
.L327:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:451: 	  if (__builtin_expect(_Num > 1, true))
	cmp	rbx, 16	 # _153,
	jle	.L272	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:452: 	    __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
	mov	r8, rbx	 #, _153
	mov	rdx, r13	 #, boxes
	call	memmove	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:262: 	  this->_M_impl._M_finish = this->_M_impl._M_start + __xlen;
	add	rbx, QWORD PTR 184[r15]	 # _153, MEM[(struct vector *)this_24(D) + 184B].D.158646._M_impl.D.157979._M_start
	mov	rcx, rbx	 # _20, _153
.L273:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:262: 	  this->_M_impl._M_finish = this->_M_impl._M_start + __xlen;
	mov	QWORD PTR 192[r15], rcx	 # MEM[(struct vector *)this_24(D) + 184B].D.158646._M_impl.D.157979._M_finish, _20
.L275:
 # source/simulation.cpp:90: 	}
	vmovups	xmm6, XMMWORD PTR 80[rsp]	 #,
	vmovups	xmm7, XMMWORD PTR 96[rsp]	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	rdx, r14	 #, _102
	mov	rcx, r13	 #, boxes
 # source/simulation.cpp:90: 	}
	add	rsp, 120	 #,
	pop	rbx	 #
	pop	rsi	 #
	pop	rdi	 #
	pop	rbp	 #
	pop	r12	 #
	pop	r13	 #
	pop	r14	 #
	pop	r15	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	jmp	_ZdlPvy	 #
.L264:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	mov	r9, QWORD PTR 192[r10]	 # prephitmp_23, MEM[(const struct vector *)this_24(D) + 184B].D.158646._M_impl.D.157979._M_finish
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:369: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	sub	r14, r13	 # _102, boxes
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	mov	r8, r9	 # _174, prephitmp_23
	sub	r8, rcx	 # _174, _157
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:248: 	  else if (size() >= __xlen)
	cmp	r8, rbx	 # _174, _153
	jnb	.L327	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:451: 	  if (__builtin_expect(_Num > 1, true))
	cmp	r8, 16	 # _174,
	jle	.L276	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:452: 	    __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
	mov	rdx, r13	 #, boxes
	call	memmove	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:257: 	      std::__uninitialized_copy_a(__x._M_impl._M_start + size(),
	mov	r9, QWORD PTR 192[r15]	 # prephitmp_23, MEM[(struct vector *)this_24(D) + 184B].D.158646._M_impl.D.157979._M_finish
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	mov	rax, QWORD PTR 184[r15]	 # pretmp_319, MEM[(const struct vector *)this_24(D) + 184B].D.158646._M_impl.D.157979._M_start
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	mov	rdx, r9	 # _321, prephitmp_23
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:262: 	  this->_M_impl._M_finish = this->_M_impl._M_start + __xlen;
	add	rbx, rax	 # _10, pretmp_319
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	sub	rdx, rax	 # _321, pretmp_319
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:257: 	      std::__uninitialized_copy_a(__x._M_impl._M_start + size(),
	add	rdx, r13	 # _9, boxes
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_uninitialized.h:119: 	  for (; __first != __last; ++__first, (void)++__cur)
	cmp	rdx, r12	 # _9, __new_finish
	je	.L315	 #,
.L277:
	sub	r12, rdx	 # _221, _9
 # source/simulation.cpp:76: 		for (u32 i = 0; i < m_h; ++i) 
	xor	eax, eax	 # ivtmp.788
.L282:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_construct.h:119:       ::new((void*)__p) _Tp(std::forward<_Args>(__args)...);
	vmovdqu	xmm3, XMMWORD PTR [rdx+rax]	 # tmp374, MEM[(const struct BoundingBox &)_337 + ivtmp.788_301 * 1]
	vmovdqu	XMMWORD PTR [r9+rax], xmm3	 # MEM[(struct BoundingBox *)prephitmp_23 + ivtmp.788_301 * 1], tmp374
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_uninitialized.h:119: 	  for (; __first != __last; ++__first, (void)++__cur)
	add	rax, 16	 # ivtmp.788,
	cmp	r12, rax	 # _221, ivtmp.788
	jne	.L282	 #,
	jmp	.L270	 #
.L319:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:262: 	  this->_M_impl._M_finish = this->_M_impl._M_start + __xlen;
	mov	rax, QWORD PTR 184[r15]	 # MEM[(struct vector *)this_24(D) + 184B].D.158646._M_impl.D.157979._M_start, MEM[(struct vector *)this_24(D) + 184B].D.158646._M_impl.D.157979._M_start
	mov	QWORD PTR 192[r15], rax	 # MEM[(struct vector *)this_24(D) + 184B].D.158646._M_impl.D.157979._M_finish, MEM[(struct vector *)this_24(D) + 184B].D.158646._M_impl.D.157979._M_start
	jmp	.L317	 #
.L279:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:413: 	{ *__to = *__from; }
	vmovdqu	xmm5, XMMWORD PTR 0[r13]	 # tmp373, MEM[(const struct BoundingBox &)boxes_1]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:257: 	      std::__uninitialized_copy_a(__x._M_impl._M_start + size(),
	lea	rdx, 16[r13]	 # _9,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:262: 	  this->_M_impl._M_finish = this->_M_impl._M_start + __xlen;
	add	rbx, rcx	 # _10, _157
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:413: 	{ *__to = *__from; }
	vmovdqu	XMMWORD PTR [rcx], xmm5	 # *_157, tmp373
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_uninitialized.h:119: 	  for (; __first != __last; ++__first, (void)++__cur)
	cmp	r12, rdx	 # __new_finish, _9
	jne	.L277	 #,
.L315:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:262: 	  this->_M_impl._M_finish = this->_M_impl._M_start + __xlen;
	mov	QWORD PTR 192[r15], rbx	 # MEM[(struct vector *)this_24(D) + 184B].D.158646._M_impl.D.157979._M_finish, _10
	jmp	.L275	 #
.L276:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:453: 	  else if (_Num == 1)
	je	.L279	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:257: 	      std::__uninitialized_copy_a(__x._M_impl._M_start + size(),
	lea	rdx, 0[r13+r8]	 # _9,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:262: 	  this->_M_impl._M_finish = this->_M_impl._M_start + __xlen;
	add	rbx, rcx	 # _10, _157
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_uninitialized.h:119: 	  for (; __first != __last; ++__first, (void)++__cur)
	cmp	r12, rdx	 # __new_finish, _9
	jne	.L277	 #,
	jmp	.L270	 #
.L272:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:453: 	  else if (_Num == 1)
	jne	.L328	 #,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:413: 	{ *__to = *__from; }
	vmovdqu	xmm4, XMMWORD PTR 0[r13]	 # tmp371, MEM[(const struct BoundingBox &)boxes_1]
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:262: 	  this->_M_impl._M_finish = this->_M_impl._M_start + __xlen;
	add	rcx, 16	 # _20,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_algobase.h:413: 	{ *__to = *__from; }
	vmovdqu	XMMWORD PTR -16[rcx], xmm4	 # *_157, tmp371
	jmp	.L273	 #
.L257:
	movabs	r9, 9223372036854775792	 # _304,
	jmp	.L258	 #
	.p2align 4,,10
	.p2align 3
.L325:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/new_allocator.h:139: 	      std::__throw_bad_array_new_length();
	call	_ZSt28__throw_bad_array_new_lengthv	 #
.L328:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/vector.tcc:262: 	  this->_M_impl._M_finish = this->_M_impl._M_start + __xlen;
	add	rbx, rcx	 # _10, _157
	jmp	.L270	 #
.L326:
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1909: 	  __throw_length_error(__N(__s));
	lea	rcx, .LC7[rip]	 # tmp252,
	call	_ZSt20__throw_length_errorPKc	 #
	nop	
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA7111:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7111-.LLSDACSB7111
.LLSDACSB7111:
.LLSDACSE7111:
	.text
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN5Lenia10Simulation6UpdateEv
	.def	_ZN5Lenia10Simulation6UpdateEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Lenia10Simulation6UpdateEv
_ZN5Lenia10Simulation6UpdateEv:
.LFB7108:
	push	rsi	 #
	.seh_pushreg	rsi
	push	rbx	 #
	.seh_pushreg	rbx
	sub	rsp, 56	 #,
	.seh_stackalloc	56
	vmovups	XMMWORD PTR 32[rsp], xmm6	 #,
	.seh_savexmm	xmm6, 32
	.seh_endprologue
 # source/simulation.cpp:59: 		m_readBuffer.m_binding = static_cast<BufferBinding>(1 - static_cast<i8>(m_readBuffer.m_binding));
	mov	eax, 1	 # tmp145,
 # source/simulation.cpp:61: 		glBindBufferBase(GL_SHADER_STORAGE_BUFFER, static_cast<GLuint>(m_readBuffer.m_binding), m_writeBuffer.m_ID);
	mov	rsi, QWORD PTR .refptr.glad_glBindBufferBase[rip]	 # tmp151,
	vxorps	xmm6, xmm6, xmm6	 # tmp184
 # source/simulation.cpp:59: 		m_readBuffer.m_binding = static_cast<BufferBinding>(1 - static_cast<i8>(m_readBuffer.m_binding));
	mov	edx, eax	 # _43, tmp145
 # source/simulation.cpp:49: 	void Simulation::Update() noexcept {
	mov	rbx, rcx	 # this, tmp183
 # source/simulation.cpp:59: 		m_readBuffer.m_binding = static_cast<BufferBinding>(1 - static_cast<i8>(m_readBuffer.m_binding));
	movsx	ecx, BYTE PTR 52[rcx]	 # _42, this_2(D)->m_readBuffer.m_binding
 # source/simulation.cpp:61: 		glBindBufferBase(GL_SHADER_STORAGE_BUFFER, static_cast<GLuint>(m_readBuffer.m_binding), m_writeBuffer.m_ID);
	mov	r8d, DWORD PTR 80[rbx]	 #, this_2(D)->m_writeBuffer.m_ID
 # source/simulation.cpp:59: 		m_readBuffer.m_binding = static_cast<BufferBinding>(1 - static_cast<i8>(m_readBuffer.m_binding));
	sub	edx, ecx	 # _43, _42
 # source/simulation.cpp:60: 		m_writeBuffer.m_binding = static_cast<BufferBinding>(1 - static_cast<i8>(m_writeBuffer.m_binding));
	movsx	ecx, BYTE PTR 84[rbx]	 # _46, this_2(D)->m_writeBuffer.m_binding
 # source/simulation.cpp:59: 		m_readBuffer.m_binding = static_cast<BufferBinding>(1 - static_cast<i8>(m_readBuffer.m_binding));
	mov	DWORD PTR 52[rbx], edx	 # this_2(D)->m_readBuffer.m_binding, _43
 # source/simulation.cpp:60: 		m_writeBuffer.m_binding = static_cast<BufferBinding>(1 - static_cast<i8>(m_writeBuffer.m_binding));
	sub	eax, ecx	 # tmp149, _46
 # source/simulation.cpp:61: 		glBindBufferBase(GL_SHADER_STORAGE_BUFFER, static_cast<GLuint>(m_readBuffer.m_binding), m_writeBuffer.m_ID);
	mov	ecx, 37074	 #,
 # source/simulation.cpp:60: 		m_writeBuffer.m_binding = static_cast<BufferBinding>(1 - static_cast<i8>(m_writeBuffer.m_binding));
	mov	DWORD PTR 84[rbx], eax	 # this_2(D)->m_writeBuffer.m_binding, tmp149
 # source/simulation.cpp:61: 		glBindBufferBase(GL_SHADER_STORAGE_BUFFER, static_cast<GLuint>(m_readBuffer.m_binding), m_writeBuffer.m_ID);
	call	[QWORD PTR [rsi]]	 # glad_glBindBufferBase
 # source/simulation.cpp:62: 		glBindBufferBase(GL_SHADER_STORAGE_BUFFER, static_cast<GLuint>(m_writeBuffer.m_binding), m_readBuffer.m_ID);
	mov	edx, DWORD PTR 84[rbx]	 # this_2(D)->m_writeBuffer.m_binding, this_2(D)->m_writeBuffer.m_binding
	mov	r8d, DWORD PTR 48[rbx]	 #, this_2(D)->m_readBuffer.m_ID
	mov	ecx, 37074	 #,
	call	[QWORD PTR [rsi]]	 # glad_glBindBufferBase
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1131: 	return *(this->_M_impl._M_start + __n);
	mov	r9, QWORD PTR 120[rbx]	 # _22, MEM[(struct vector *)this_2(D) + 120B].D.156494._M_impl.D.155827._M_start
 # include/gl_setup.hpp:75: 			glGetNamedBufferSubData(m_ID, 0, m_data.size() * sizeof(T), &m_data[0]);
	mov	r8, QWORD PTR 128[rbx]	 # tmp190, MEM[(const struct vector *)this_2(D) + 120B].D.156494._M_impl.D.155827._M_finish
	xor	edx, edx	 #
	mov	rax, QWORD PTR .refptr.glad_glGetNamedBufferSubData[rip]	 # tmp160,
	mov	ecx, DWORD PTR 112[rbx]	 # MEM[(struct Buffer *)this_2(D) + 112B].m_ID, MEM[(struct Buffer *)this_2(D) + 112B].m_ID
	sub	r8, r9	 # tmp190, _22
	call	[QWORD PTR [rax]]	 # glad_glGetNamedBufferSubData
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1131: 	return *(this->_M_impl._M_start + __n);
	mov	rax, QWORD PTR 120[rbx]	 # _26, MEM[(struct vector *)this_2(D) + 120B].D.156494._M_impl.D.155827._M_start
 # source/simulation.cpp:41: 		m_mass = (f64)shaderData.sum / 10000.f;
	vcvtusi2sd	xmm0, xmm6, DWORD PTR [rax]	 # tmp185, tmp184, MEM[(const struct ShaderData &)_26].sum
 # source/simulation.cpp:40: 		ShaderData shaderData = m_dataBuffer.m_data[0];
	mov	ecx, DWORD PTR 4[rax]	 # shaderData$centerOfMassX, MEM[(const struct ShaderData &)_26].centerOfMassX
	mov	edx, DWORD PTR 8[rax]	 # shaderData$centerOfMassY, MEM[(const struct ShaderData &)_26].centerOfMassY
 # source/simulation.cpp:41: 		m_mass = (f64)shaderData.sum / 10000.f;
	vmulsd	xmm0, xmm0, QWORD PTR .LC4[rip]	 # _31, _30,
 # source/simulation.cpp:44: 		f32 x = shaderData.centerOfMassX / f32(100.0 * m_mass);
	vcvtusi2ss	xmm1, xmm6, ecx	 # tmp186, tmp184, shaderData$centerOfMassX
 # source/simulation.cpp:52: 		CalculateBoundingBoxes();
	mov	rcx, rbx	 #, this
 # source/simulation.cpp:43: 		f32 y = shaderData.centerOfMassY / f32(100.0 * m_mass);
	vcvtusi2ss	xmm6, xmm6, edx	 # tmp187, tmp184, shaderData$centerOfMassY
 # source/simulation.cpp:41: 		m_mass = (f64)shaderData.sum / 10000.f;
	vmovsd	QWORD PTR 32[rbx], xmm0	 # this_2(D)->m_mass, _31
 # source/simulation.cpp:43: 		f32 y = shaderData.centerOfMassY / f32(100.0 * m_mass);
	vmulsd	xmm0, xmm0, QWORD PTR .LC5[rip]	 # _33, _31,
 # source/simulation.cpp:43: 		f32 y = shaderData.centerOfMassY / f32(100.0 * m_mass);
	vcvtsd2ss	xmm0, xmm0, xmm0	 # _34, _33
 # source/simulation.cpp:44: 		f32 x = shaderData.centerOfMassX / f32(100.0 * m_mass);
	vdivss	xmm1, xmm1, xmm0	 # x_37, _36, _34
 # source/simulation.cpp:43: 		f32 y = shaderData.centerOfMassY / f32(100.0 * m_mass);
	vdivss	xmm6, xmm6, xmm0	 # y_35, _32, _34
 # source/simulation.cpp:46: 		m_centerOfMass = { u32(x), u32(y) };
	vcvttss2usi	eax, xmm1	 # tmp168, x_37
	mov	DWORD PTR 40[rbx], eax	 # this_2(D)->m_centerOfMass.x, tmp168
 # source/simulation.cpp:46: 		m_centerOfMass = { u32(x), u32(y) };
	vcvttss2usi	eax, xmm6	 # tmp171, y_35
	mov	DWORD PTR 44[rbx], eax	 # this_2(D)->m_centerOfMass.y, tmp171
 # source/simulation.cpp:52: 		CalculateBoundingBoxes();
	call	_ZN5Lenia10Simulation22CalculateBoundingBoxesEv	 #
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1131: 	return *(this->_M_impl._M_start + __n);
	mov	r8, QWORD PTR 120[rbx]	 # _18, MEM[(struct vector *)this_2(D) + 120B].D.156494._M_impl.D.155827._M_start
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	mov	rdx, QWORD PTR 128[rbx]	 # _16, MEM[(const struct vector *)this_2(D) + 120B].D.156494._M_impl.D.155827._M_finish
 # include/gl_setup.hpp:79:             glNamedBufferData(m_ID, m_data.size() * sizeof(T), &m_data[0], GL_DYNAMIC_COPY);
	mov	r9d, 35050	 #,
 # include/gl_setup.hpp:79:             glNamedBufferData(m_ID, m_data.size() * sizeof(T), &m_data[0], GL_DYNAMIC_COPY);
	mov	rsi, QWORD PTR .refptr.glad_glNamedBufferData[rip]	 # tmp176,
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	sub	rdx, r8	 # _16, _18
 # source/simulation.cpp:53: 		m_dataBuffer.m_data[0] = ShaderData { 0, 0, 0 };
	mov	QWORD PTR [r8], 0	 # MEM <vector(2) unsigned int> [(unsigned int *)_18],
 # include/gl_setup.hpp:79:             glNamedBufferData(m_ID, m_data.size() * sizeof(T), &m_data[0], GL_DYNAMIC_COPY);
	mov	ecx, DWORD PTR 112[rbx]	 # MEM[(struct Buffer *)this_2(D) + 112B].m_ID, MEM[(struct Buffer *)this_2(D) + 112B].m_ID
 # source/simulation.cpp:53: 		m_dataBuffer.m_data[0] = ShaderData { 0, 0, 0 };
	mov	DWORD PTR 8[r8], 0	 # MEM[(struct value_type *)_18].centerOfMassY,
 # include/gl_setup.hpp:79:             glNamedBufferData(m_ID, m_data.size() * sizeof(T), &m_data[0], GL_DYNAMIC_COPY);
	call	[QWORD PTR [rsi]]	 # glad_glNamedBufferData
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:1131: 	return *(this->_M_impl._M_start + __n);
	mov	r8, QWORD PTR 184[rbx]	 # _10, MEM[(struct vector *)this_2(D) + 184B].D.158646._M_impl.D.157979._M_start
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	mov	rdx, QWORD PTR 192[rbx]	 # _12, MEM[(const struct vector *)this_2(D) + 184B].D.158646._M_impl.D.157979._M_finish
 # include/gl_setup.hpp:79:             glNamedBufferData(m_ID, m_data.size() * sizeof(T), &m_data[0], GL_DYNAMIC_COPY);
	mov	r9d, 35050	 #,
	mov	ecx, DWORD PTR 176[rbx]	 # MEM[(struct Buffer *)this_2(D) + 176B].m_ID, MEM[(struct Buffer *)this_2(D) + 176B].m_ID
 # C:/msys64/mingw64/include/c++/14.2.0/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	sub	rdx, r8	 # _12, _10
 # include/gl_setup.hpp:79:             glNamedBufferData(m_ID, m_data.size() * sizeof(T), &m_data[0], GL_DYNAMIC_COPY);
	call	[QWORD PTR [rsi]]	 # glad_glNamedBufferData
	nop	
 # source/simulation.cpp:56: 	}
	vmovups	xmm6, XMMWORD PTR 32[rsp]	 #,
	add	rsp, 56	 #,
	pop	rbx	 #
	pop	rsi	 #
	ret	
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
	.align 16
.LC6:
	.long	-50
	.long	-50
	.long	50
	.long	50
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
	.def	memmove;	.scl	2;	.type	32;	.endef
	.def	_ZSt28__throw_bad_array_new_lengthv;	.scl	2;	.type	32;	.endef
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
