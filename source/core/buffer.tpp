template <class T>
Lenia::Core::Buffer<T>::Buffer() noexcept {};

template <class T>
Lenia::Core::Buffer<T>::Buffer(const BufferBinding binding) noexcept {
    glGenBuffers(1, &m_ID);
    m_binding = binding;
    m_data = std::vector<T>();
    glBindBufferBase(GL_SHADER_STORAGE_BUFFER, (u8)m_binding, m_ID);
}

template <class T>
Lenia::Core::Buffer<T>::Buffer(const BufferBinding binding, const size_t size) noexcept
: Lenia::Core::Buffer<T>::Buffer(binding)  {
    m_data.resize(size);
}

template <class T>
Lenia::Core::Buffer<T>::Buffer(const BufferBinding binding, const std::vector<T>& data) noexcept {
    m_binding = binding;
    m_data = data;
    glGenBuffers(1, &m_ID);
    glBindBufferBase(GL_SHADER_STORAGE_BUFFER, (u8)m_binding, m_ID);
    glNamedBufferData(m_ID, m_data.size() * sizeof(T), &m_data[0], GL_DYNAMIC_COPY);
}

template <class T>
T& Lenia::Core::Buffer<T>::operator[](size_t i) {
    return m_data[i];
}

template <class T>
void Lenia::Core::Buffer<T>::loadDataFromShader() noexcept {
    glGetNamedBufferSubData(m_ID, 0, m_data.size() * sizeof(T), &m_data[0]);
}

template <class T>
void Lenia::Core::Buffer<T>::storeDataInShader() const noexcept {
    glNamedBufferData(m_ID, m_data.size() * sizeof(T), &m_data[0], GL_DYNAMIC_COPY);
}