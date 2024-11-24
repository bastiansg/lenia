#include "core.hpp"
#include "boundingbox.hpp"

Lenia::BoundingBox::BoundingBox() noexcept : m_x0(0), m_y0(0), m_x1(0), m_y1(0) {};

Lenia::BoundingBox::BoundingBox(i32 l, i32 t, i32 r, i32 b) noexcept : m_x0(l), m_y0(t), m_x1(r), m_y1(b) {};

b8 Lenia::BoundingBox::is_empty() const noexcept {
    return m_x0 == 0 && m_y0 == 0 && m_x1 == 0 && m_y1 == 0;
}

b8 Lenia::BoundingBox::contains(const i32 x, const i32 y, const i32 w, const i32 h) const noexcept {
    const b8 left = x <= m_x1 || (m_x0 < 0 && x >= (m_x0 % w + w) % w);
    const b8 right = x >= m_x0 || (m_x1 >= w && x <= (m_x1 % w) );
    const b8 top = y <= m_y1 || (m_y0 < 0 && y >= (m_y0 % h + h) % h);
    const b8 bottom = y >= m_y0 || (m_y1 >= h && y <= (m_y1 % h));
    return left && right && top && bottom;
}

b8 Lenia::BoundingBox::on_border(const i32 x, const i32 y, const i32 w, const i32 h) const noexcept {
    return x == (m_x0 % w) || x == (m_x1 % w) || y == (m_y0 % h) || y == (m_y1 % h);
}

void Lenia::BoundingBox::expand(const u32 x, const u32 y, const u32 padding) noexcept {
    m_x0 = std::min(static_cast<i32>(x - padding), m_x0);
    m_x1 = std::max(static_cast<i32>(x + padding), m_x1);
    m_y0 = std::min(static_cast<i32>(y - padding), m_y0);
    m_y1 = std::max(static_cast<i32>(y + padding), m_y1);
}

void Lenia::BoundingBox::resize(const u32 size) noexcept {
    m_x0 -= size;
    m_x1 += size;
    m_y0 -= size;
    m_y1 += size;
}

f32 Lenia::BoundingBox::area() const noexcept {
    return (m_x1 - m_x0) * (m_y1 - m_y0);
}

f32 Lenia::BoundingBox::overlap(const BoundingBox& other) const noexcept {
    i32 left = std::max(m_x0, other.m_x0);
    i32 top = std::max(m_y0, other.m_y0);
    i32 right = std::min(m_x1, other.m_x1);
    i32 bottom = std::min(m_y1, other.m_y1);
    i32 width = right - left;
    i32 height = bottom - top;
    if (width < 1 || height < 1) {
        return 0;
    }
    f32 area_overlap = width * height;
    f32 area_A = area();
    return area_overlap / area_A * 100;
}

glm::vec2 Lenia::BoundingBox::center() const noexcept {
    return {(m_x1 + m_x0) / 2, (m_y1 + m_y0) / 2};
}

b8 Lenia::BoundingBox::operator==(const BoundingBox& other) const noexcept {
    return m_x0 == other.m_x0 && m_y0 == other.m_y0 && m_x1 == other.m_x1 && m_y1 == other.m_y1;     
}

b8 Lenia::BoundingBox::operator!=(const BoundingBox& other) const noexcept {
    return !(*this == other);
}

std::string Lenia::BoundingBox::to_string() const noexcept {
    return "BoundingBox: x0=" + std::to_string(m_x0) + ", y0=" + 
        std::to_string(m_y0) + ", x1=" + std::to_string(m_x1) + ", y1=" + std::to_string(m_y1);
}