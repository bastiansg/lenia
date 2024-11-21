#pragma once
#include "lenia/core.hpp"
#include "lenia/buffer.hpp"
#include <map>
#include <memory>

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

	struct Taxonomy {
		const std::string species;
		const std::string _class;
		const std::string order;
		const std::string family;
		const std::string subfamily;

		operator std::string() const noexcept;
	};

	class Animal {
	public:
		size_t m_w;
		size_t m_h;

		const Taxonomy m_taxonomy;
		
		size_t m_r;
		size_t m_scale;
		f32 m_dt;
		f32 m_dx2 = 1.f;
		std::vector<f32> m_beta;
		f32 m_mu;
		f32 m_sigma;
		f32 m_normalization;

		KernelCore m_kn;
		GrowthFunction m_gn;

		GLuint m_kernelTexture;

		const std::string m_rle;

		Animal() = delete;

		Animal(const Taxonomy taxonomy, const u32 R, const u32 scale, const f32 dt, const std::vector<f32> beta, const f32 mu, 
			const f32 sigma, const KernelCore kn, const GrowthFunction gn, const std::string RLE);

		~Animal();

		void bind();
		std::vector<f32> getCells() noexcept;

	private:
		Core::Buffer<f32> m_kernelBuffer;
		f32 applyKernelCore(const f32 r, const f32 q = 0.25) const noexcept;
		f32 applyGrowthFunction(const f32 n) const noexcept;
		f32 applyKernelShell(const f32 r) const noexcept;
		void computeNormalization() noexcept;
		void computeKernel() noexcept;
	};
}