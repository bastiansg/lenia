#pragma once
#include "gl_setup.hpp"
#include <string>
#include <cmath>
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
	};


	class Animal {
	public:
		size_t m_w;
		size_t m_h;

		const Taxonomy m_taxonomy;
		
		size_t m_r;
		f32 m_dt;
		f32 m_dx2;
		const f32* m_beta;
		u8 m_b;
		f32 m_mu;
		f32 m_sigma;

		KernelCore m_kn;
		GrowthFunction m_gn;

		const std::string m_rle;

		Buffer<f32> m_kernelBuffer;

		Animal();


		~Animal();

		Animal(const Taxonomy taxonomy, const u32 R, const f32 dt, const f32* beta, const u8 B, const f32 mu, 
			const f32 sigma, const KernelCore kn, const GrowthFunction gn, const std::string RLE);


		/// <summary>
		/// This method needs to be called to bind the kernel to the GPU and make it available for use.
		/// </summary>
		void Bind();


		/// <summary>
		/// Returns a unique pointer to the cells of the animal.
		/// </summary>
		/// <returns></returns>
		f32* GetCells() noexcept;

		/// <summary>
		/// Calculate the core of the kernel, with a default value of q = 0.25.
		/// </summary>
		/// <param name="r">The radius at which to compute the kernel.</param>
		/// <param name="q">q value.</param>
		/// <returns>The calculated value.</returns>
		f32 ApplyKernelCore(const f32 r, const f32 q = 0.25) const;
		/// <summary>
		/// Apply the growth function to the given value.
		/// </summary>
		/// <param name="n">The value to compute.</param>
		/// <returns>The result.</returns>
		f32 ApplyGrowthFunction(const f32 n) const;
		/// <summary>
		/// Apply the kernel shell to the given value.
		/// </summary>
		/// <param name="r">The radius at which to compute the kernel shell.</param>
		/// <returns>The calculated value.</returns>
		f32 ApplyKernelShell(const f32 r) const;
		/// <summary>
		/// Calculates the normalization factor of the kernel, which is the sum of the kernel values.
		/// </summary>
		/// <returns>The normalization factor.</returns>
		f32 Normalization() const;
		/// <summary>
		/// Computes the entire kernel as an array of f32.
		/// </summary>
		void ComputeKernel();
		/// <summary>
		/// Returns a string representation of the animal with the format: {name}\n{width,height}\n{cells}, where cells is a string of space-seperated floats
		/// in w*h format.
		/// </summary>
		/// <returns>The string.</returns>
		std::string ToString();
	};



}