template <class T>
b8 Lenia::Core::Vec2<T>::operator==(const Vec2<T>& other) const noexcept {
    return m_x == other.m_x && m_y == other.m_y;
}

template <class T>
b8 Lenia::Core::Vec2<T>::operator!=(const Vec2<T>& other) const noexcept {
    return !(*this == other);
}

template <class T>
b8 Lenia::Core::Vec3<T>::operator==(const Vec3<T>& other) const noexcept {
    return m_x == other.m_x && m_y == other.m_y && m_z == other.m_z;
}

template <class T>
b8 Lenia::Core::Vec3<T>::operator!=(const Vec3<T>& other) const noexcept {
    return !(*this == other);
}