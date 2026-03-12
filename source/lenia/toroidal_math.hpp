#pragma once

#include "core.hpp"
#include "glm/vec2.hpp"

#include <cmath>

namespace Lenia {
    inline constexpr f32 TAU = 6.28318530717958647692f;
    inline constexpr f32 TOROIDAL_MOMENT_EPSILON = 1e-5f;

    inline f32 wrapCoordinate(const f32 coordinate, const f32 extent) noexcept {
        const f32 wrapped = std::fmod(coordinate, extent);
        return wrapped < 0.f ? wrapped + extent : wrapped;
    }

    inline f32 shortestToroidalDelta(const f32 from, const f32 to, const f32 extent) noexcept {
        f32 delta = to - from;
        const f32 halfExtent = extent * 0.5f;
        if (delta > halfExtent) {
            delta -= extent;
        }
        else if (delta < -halfExtent) {
            delta += extent;
        }
        return delta;
    }

    inline glm::vec2 shortestToroidalDelta(const glm::vec2& from, const glm::vec2& to, const f32 width, const f32 height) noexcept {
        return glm::vec2{
            shortestToroidalDelta(from.x, to.x, width),
            shortestToroidalDelta(from.y, to.y, height)
        };
    }

    inline f32 centerOfMassFromToroidalMoments(const f32 sineSum, const f32 cosineSum, const f32 extent, const f32 fallbackCoordinate) noexcept {
        if (std::abs(sineSum) < TOROIDAL_MOMENT_EPSILON && std::abs(cosineSum) < TOROIDAL_MOMENT_EPSILON) {
            return wrapCoordinate(fallbackCoordinate, extent);
        }

        f32 angle = std::atan2(sineSum, cosineSum);
        if (angle < 0.f) {
            angle += TAU;
        }

        return wrapCoordinate((angle / TAU) * extent, extent);
    }
}