#include "core.hpp"
#include "boundingbox.hpp"
#include "glm/glm.hpp"
#include "glm/vec2.hpp"

namespace Lenia
{
    struct alignas(16) LayerInfo
    {
        BoundingBox m_boundingBox;
        glm::vec2 m_centerOfMass;
        f32 m_mass;
        u32 m_showDebugInfo;
        glm::vec2 m_toroidalCosineSum;
        glm::vec2 m_toroidalSineSum;

        __device__ LayerInfo operator+(const LayerInfo &rhs);
    };

    enum class LAYER_ID : u64
    {
        PLAYER = 1ull << 0,
        WORLD  = 1ull << 1
    };

    constexpr std::size_t layerIndex(const LAYER_ID id)
    {
        std::size_t idx = 0;
        u64 v = static_cast<u64>(id);
        while (v >>= 1) ++idx;
        return idx;
    }

    constexpr u64 operator|(const LAYER_ID a, const LAYER_ID b) { return static_cast<u64>(a) | static_cast<u64>(b); }
    constexpr u64 operator&(const u64 flags, const LAYER_ID id) { return flags & static_cast<u64>(id); }
    inline u64& operator|=(u64 &flags, const LAYER_ID id) { return flags |= static_cast<u64>(id); }
}
