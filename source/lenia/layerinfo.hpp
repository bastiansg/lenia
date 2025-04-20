#include "core.hpp"
#include "boundingbox.hpp"
#include "glm/glm.hpp"
#include "glm/vec2.hpp"

namespace Lenia{
    struct alignas(16) LayerInfo {
        BoundingBox m_boundingBox;
        glm::vec2 m_centerOfMass;
        f32 m_mass;

        __host__ __device__ LayerInfo operator+(const LayerInfo& rhs);
    };
}
