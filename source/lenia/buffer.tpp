#include <iostream>

template <class T>
Lenia::Buffer<T>::Buffer(const BufferBinding binding) noexcept {
    glGenBuffers(1, &m_ID);
    m_binding = binding;
    glBindBufferBase(GL_SHADER_STORAGE_BUFFER, (u8)m_binding, m_ID);
}

template <class T>
Lenia::Buffer<T>::Buffer(const BufferBinding binding, const std::size_t size) noexcept : Buffer<T>::Buffer(binding)  {
    m_data.resize(size);
    glBindBuffer(GL_SHADER_STORAGE_BUFFER, m_ID);
    glBufferData(GL_SHADER_STORAGE_BUFFER, size * sizeof(T), nullptr, GL_DYNAMIC_COPY);
    glBindBuffer(GL_SHADER_STORAGE_BUFFER, 0);
}

template <class T>
Lenia::Buffer<T>::Buffer(const BufferBinding binding, const std::vector<T>& data) noexcept {
    m_binding = binding;
    m_data = data;
    glGenBuffers(1, &m_ID);
    glBindBufferBase(GL_SHADER_STORAGE_BUFFER, (u8)m_binding, m_ID);
    glNamedBufferData(m_ID, m_data.size() * sizeof(T), &m_data[0], GL_DYNAMIC_COPY);
}

template <class T>
Lenia::Buffer<T>::~Buffer() noexcept {
	glDeleteBuffers(1, &m_ID);
}

template <class T>
T& Lenia::Buffer<T>::operator[](std::size_t i) {
    return m_data[i];
}

template <class T>
void Lenia::Buffer<T>::loadDataFromShader() noexcept {
    glGetNamedBufferSubData(m_ID, 0, m_data.size() * sizeof(T), &m_data[0]);
}

template <class T>
void Lenia::Buffer<T>::storeDataInShader() const noexcept {
    glNamedBufferData(m_ID, m_data.size() * sizeof(T), &m_data[0], GL_DYNAMIC_COPY);
}