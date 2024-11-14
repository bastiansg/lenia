#include "lenia/core.hpp"

Lenia::Core::BoundingBox::BoundingBox() noexcept : m_x0(0), m_y0(0), m_x1(0), m_y1(0) {};

Lenia::Core::BoundingBox::BoundingBox(i32 l, i32 t, i32 r, i32 b) noexcept : m_x0(l), m_y0(t), m_x1(r), m_y1(b) {};

b8 Lenia::Core::BoundingBox::is_empty() const noexcept {
    return m_x0 == 0 && m_y0 == 0 && m_x1 == 0 && m_y1 == 0;
}

b8 Lenia::Core::BoundingBox::contains(const i32 x, const i32 y, const i32 w, const i32 h) const noexcept {
    b8 left = m_x0 > 0 ? x <= m_x1 : (x <= m_x1 || x >= (m_x0 % w + w) % w);
    b8 right = m_x1 < w ? x >= m_x0 : (x >= m_x0 || x <= (m_x1 % w));
    b8 top = m_y0 > 0 ? y <= m_y1 : (y <= m_y1 || y >= (m_y0 % h + h) % h);
    b8 bottom = m_y1 < h ? y >= m_y0 : (y >= m_y0 || y <= (m_y1 % h));
    return left && right && top && bottom;
}

b8 Lenia::Core::BoundingBox::operator()(const i32 x, const i32 y, const i32 w, const i32 h) const noexcept {
    return contains(x, y, w, h);
}

b8 Lenia::Core::BoundingBox::on_border(const i32 x, const i32 y, const i32 w, const i32 h) const noexcept {
    return x == (m_x0 % w) || x == (m_x1 % w) || y == (m_y0 % h) || y == (m_y1 % h);
}

void Lenia::Core::BoundingBox::expand(const u32 x, const u32 y, const u32 padding) noexcept {
    m_x0 = std::min(static_cast<i32>(x - padding), m_x0);
    m_x1 = std::max(static_cast<i32>(x + padding), m_x1);
    m_y0 = std::min(static_cast<i32>(y - padding), m_y0);
    m_y1 = std::max(static_cast<i32>(y + padding), m_y1);
}

void Lenia::Core::BoundingBox::resize(const u32 size) {
    m_x0 -= size;
    m_x1 += size;
    m_y0 -= size;
    m_y1 += size;
}

b8 Lenia::Core::BoundingBox::operator==(const BoundingBox& other) const noexcept {
    return m_x0 == other.m_x0 && m_y0 == other.m_y0 && m_x1 == other.m_x1 && m_y1 == other.m_y1;     
}

b8 Lenia::Core::BoundingBox::operator!=(const BoundingBox& other) const noexcept {
    return !(*this == other);
}

std::string Lenia::Core::BoundingBox::to_string() const noexcept {
    return "BoundingBox: x0=" + std::to_string(m_x0) + ", y0=" + 
        std::to_string(m_y0) + ", x1=" + std::to_string(m_x1) + ", y1=" + std::to_string(m_y1);
}