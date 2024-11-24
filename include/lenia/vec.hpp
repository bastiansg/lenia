#pragma once

#include "core.hpp"

namespace Lenia {
    template <typename T>
    struct Vec2 {
        T m_x;
        T m_y;
        b8 operator==(const Vec2<T>& other) const noexcept;
        b8 operator!=(const Vec2<T>& other) const noexcept;
        Vec2<T> operator+(const Vec2<T>& other) const noexcept;
        Vec2<T> operator-(const Vec2<T>& other) const noexcept;
        Vec2<T> operator*(const Vec2<T>& other) const noexcept;
        Vec2<T> operator/(const Vec2<T>& other) const noexcept;
        void operator+=(const Vec2<T>& other) noexcept;
        void operator-=(const Vec2<T>& other) noexcept;
        void operator*=(const Vec2<T>& other) noexcept;
        void operator/=(const Vec2<T>& other) noexcept;
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