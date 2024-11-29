#pragma once
#include "core.hpp"
#include "buffer.hpp"
#include <array>
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

		std::string to_string() const noexcept;
	};

	struct AnimalInfo {
		const Taxonomy m_taxonomy;
		const size_t m_r;
		const size_t m_w;
		const size_t m_h;
		const u8 m_startingScale;
		const f32 m_dt;
		const f32 m_dx2;
		const f32 m_mu;
		const f32 m_sigma;
		const std::vector<f32> m_beta;
		const KernelCore m_kn;
		const GrowthFunction m_gn;
		const std::string m_rle;
	};

	// For Compile-Time Loading
	struct CAnimalInfo {
		const char* species;
		const char* _class;
		const char* order;
		const char* family;
		const char* subfamily;
		const size_t m_r;
		const size_t m_w;
		const size_t m_h;
		const u8 m_startingScale;
		const f32 m_dt;
		const f32 m_dx2;
		const f32 m_mu;
		const f32 m_sigma;
		const std::array<f32, 5> m_beta;
		const KernelCore m_kn;
		const GrowthFunction m_gn;
		const char* m_rle;
	};

	class Animal {
	public:
		const AnimalInfo m_info;

		size_t m_w;
		size_t m_h;
		u8 m_scale;
		f32 m_normalization;
		GLuint m_kernelTexture;

		Animal() = delete;
		Animal(Animal& other) = delete;
		Animal(const AnimalInfo& info, const u8 scale);
		~Animal() noexcept;
		void resize(const u8 scale);
		std::vector<f32> getCells() const noexcept;

	private:
		Buffer<f32> m_kernelBuffer;
		f32 applyKernelCore(const f32 r, const f32 q = 0.25) const noexcept;
		f32 applyGrowthFunction(const f32 n) const noexcept;
		f32 applyKernelShell(const f32 r) const noexcept;
		void computeNormalization() noexcept;
		void computeKernel() noexcept;
	};
}