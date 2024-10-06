#pragma once
#include "gl_setup.h"
#include <string>
namespace Lenia {

	enum class KernelCore {
		QUAD4,
		BUMP4,
		STPZ,
		LEAK,
	};

	enum class GrowthFunction {
		QUAD4,
		GAUSS,
		STPZ,
	};


	class Animal {
	public:
		size_t W;
		size_t H;

		const std::string name;
		const std::string _class;
		const std::string order;
		const std::string family;
		const std::string subfamily;
		
		u32 R;
		f32 dt;
		const f32* beta;
		u8 B;
		f32 mu;
		f32 sigma;

		KernelCore kn;
		GrowthFunction gn;

		const std::string RLE;

		Animal();

		Animal(const std::string name, const std::string _class, const std::string order, const std::string family, const std::string subfamily, 
			const u32 R, const f32 dt, const f32* beta, const u8 B, const f32 mu, const f32 sigma, const KernelCore kn, const GrowthFunction gn, std::string RLE);

		std::unique_ptr<f32[]> GetCells() noexcept;

		f32 ApplyKernelCore(const f32 r, const f32 q = 0.25) const;
		f32 ApplyGrowthFunction(const f32 n) const;
		f32 ApplyKernelShell(const f32 r) const;
		f32 Normalization() const;
		f32* ComputeKernel() const;
		std::string ToString();
	};



}