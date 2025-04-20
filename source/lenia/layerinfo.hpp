#include "core.hpp"
#include "boundingbox.hpp"
#include "glm/glm.hpp"
#include "glm/vec2.hpp"

namespace Lenia{
    struct alignas(16) LayerInfo {
        f32 m_mass;
        glm::vec2 m_centerOfMass;
        BoundingBox m_boundingBox;

        __host__ __device__ LayerInfo operator+(const LayerInfo& rhs);
    };
}
