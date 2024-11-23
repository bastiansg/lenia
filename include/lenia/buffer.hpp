#pragma once

namespace Lenia::Core {
    template <class T>
    struct Buffer {
        GLuint m_ID;
        BufferBinding m_binding;
        std::vector<T> m_data;
        Buffer() = delete;
        ~Buffer() noexcept;
        Buffer(const BufferBinding binding) noexcept;
        Buffer(const BufferBinding binding, const size_t size) noexcept;
        Buffer(const BufferBinding binding, const std::vector<T>& data) noexcept;
        T& operator[](size_t i);
        void loadDataFromShader() noexcept;
        void storeDataInShader() const noexcept;
    };
}

#include "../source/core/buffer.tpp"