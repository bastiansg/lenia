#pragma once 

#include "core.hpp"
#include "glm/vec2.hpp"

namespace Lenia {
    struct alignas(VECTOR4_ALIGNMENT) BoundingBox {
        i32 m_x0;
        i32 m_y0;
        i32 m_x1;
        i32 m_y1;
        __device__ __host__ explicit BoundingBox() noexcept {
            m_x0 = 0;
            m_y0 = 0;
            m_x1 = 0;
            m_y1 = 0;
        };
        __device__ __host__ explicit BoundingBox(i32 l, i32 t, i32 r, i32 b) noexcept {
            m_x0 = l;
            m_y0 = t;
            m_x1 = r;
            m_y1 = b;
        };;
        bool is_empty() const noexcept;
        bool contains(const i32 x, const i32 y, const i32 w, const i32 h) const noexcept;
        bool on_border(const i32 x, const i32 y, const i32 w, const i32 h) const noexcept;
        void expand(const u32 x, const u32 y, const u32 padding) noexcept;
        void resize(const u32 size) noexcept;
        f32 area() const noexcept;
        glm::vec2 center() const noexcept;
        f32 overlap(const BoundingBox& other) const noexcept;
        void fuse(const BoundingBox& other) noexcept;
        bool operator==(const BoundingBox& other) const noexcept;
        bool operator!=(const BoundingBox& other) const noexcept;
        std::string to_string() const noexcept;
    };
}