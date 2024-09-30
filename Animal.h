#pragma once
#include "gl_setup.h"
#include <string>
namespace Lenia {
	class Animal {
	public:
		u32 W;
		u32 H;
		const std::string name;
		const std::string _class;
		const std::string order;
		const std::string family;
		const std::string subfamily;
		
		f32 R;
		f32 dt;
		f32* beta;
		u8 B;
		f32 mu;
		f32 sigma;
		f32 kn;
		f32 gn;

		std::string RLE;

		Animal();

		Animal(const std::string name, const std::string _class, const std::string order, const std::string family, const std::string subfamily, 
			const f32 R, const f32 dt, f32* beta, const u8 B, const f32 mu, const f32 sigma, const f32 kn, const f32 gn);

		std::unique_ptr<f32[]> GetCells() noexcept;
	};

}