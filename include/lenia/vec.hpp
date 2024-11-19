#pragma once

namespace Lenia::Core {
    template <typename T>
    struct Vec2 {
        T m_x;
        T m_y;
        b8 operator==(const Vec2<T>& other) const noexcept;
        b8 operator!=(const Vec2<T>& other) const noexcept;
    };

    template <typename T>
    struct Vec3 {
        T m_x;
        T m_y;
        T m_z;
        b8 operator==(const Vec3<T>& other) const noexcept;
        b8 operator!=(const Vec3<T>& other) const noexcept;
    };
}

#include "../source/core/vec.tpp"