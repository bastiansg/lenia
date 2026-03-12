#include <gtest/gtest.h>

#include "../source/lenia/toroidal_math.hpp"

namespace {
    glm::vec2 toroidalMoments(const std::initializer_list<f32> coordinates, const f32 extent) {
        glm::vec2 moments{0.f, 0.f};
        for (const f32 coordinate : coordinates) {
            const f32 angle = (coordinate / extent) * Lenia::c_tau;
            moments.x += std::cos(angle);
            moments.y += std::sin(angle);
        }

        return moments;
    }
}

TEST(ToroidalMath, ShortestDeltaWrapsAcrossXSeam) {
    const glm::vec2 delta = Lenia::shortestToroidalDelta(glm::vec2{99.f, 50.f}, glm::vec2{1.f, 50.f}, 100.f, 100.f);

    EXPECT_FLOAT_EQ(delta.x, 2.f);
    EXPECT_FLOAT_EQ(delta.y, 0.f);
}

TEST(ToroidalMath, ShortestDeltaWrapsAcrossYSeam) {
    const glm::vec2 delta = Lenia::shortestToroidalDelta(glm::vec2{25.f, 1.f}, glm::vec2{25.f, 99.f}, 100.f, 100.f);

    EXPECT_FLOAT_EQ(delta.x, 0.f);
    EXPECT_FLOAT_EQ(delta.y, -2.f);
}

TEST(ToroidalMath, CenterOfMassReconstructsAtXSeam) {
    const glm::vec2 moments = toroidalMoments({0.f, 99.f}, 100.f);
    const f32 center = Lenia::centerOfMassFromToroidalMoments(moments.y, moments.x, 100.f, 49.5f);

    EXPECT_NEAR(center, 99.5f, 0.05f);
}

TEST(ToroidalMath, CenterOfMassReconstructsAtYSeam) {
    const glm::vec2 moments = toroidalMoments({0.f, 99.f}, 100.f);
    const f32 center = Lenia::centerOfMassFromToroidalMoments(moments.y, moments.x, 100.f, 49.5f);

    EXPECT_NEAR(center, 99.5f, 0.05f);
}

TEST(ToroidalMath, AmbiguousMomentsUseWrappedFallback) {
    const f32 center = Lenia::centerOfMassFromToroidalMoments(0.f, 0.f, 100.f, 125.f);

    EXPECT_FLOAT_EQ(center, 25.f);
}