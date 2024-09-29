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
		f32 m;
		f32 s;
		f32 kn;
		f32 gn;

		std::unique_ptr<const f32[]> cells;

		Animal();

		Animal(const std::string& name, const std::string& _class, const std::string& order, const std::string& family, const std::string& subfamily);

		Animal(const std::string& name, const std::string& _class, const std::string& order, const std::string& family, const std::string& subfamily, const std::string& RLE);

		void SetCellsFromRLE(const std::string& rle) noexcept;
	};

}