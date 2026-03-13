#include <thrust/execution_policy.h>
#include <thrust/transform.h>
#include <thrust/transform_reduce.h>
#include "simulation.hpp"
#include "toroidal_math.hpp"
#include <cmath>
#include "cuda_runtime.h"
#include <execution>
#include <vector>
#include <future>

thrust::counting_iterator idx_first(0);

namespace
{
    __device__ f32 angleForCoordinate(const i32 coordinate, const std::size_t extent)
    {
        return Lenia::TAU * (static_cast<f32>(coordinate) / static_cast<f32>(extent));
    }
}

__device__ f32 growth(const f32 f, const f32 dt, const f32 mu, const f32 sigma)
{
    return dt * (pow(max(0.0f, 1.0f - pow(f - mu, 2.0f) / (9.0f * sigma * sigma)), 4.0f) * 2.0f - 1.0f);
}

__device__ Lenia::c64 leniastep(Lenia::c64 resultField, Lenia::c64 inv, f32 norm, f32 dt, f32 mu, f32 sigma)
{
    f32 val = min(max(resultField.x + growth(inv.x * norm, dt, mu, sigma), 0.f), 1.f);
    return {val, 0.f};
}

__global__ static void fftshiftFast(
    Lenia::c64 *resultField,
    Lenia::c64 *inv,
    Lenia::c64 *top_left_quadrant,
    Lenia::c64 *top_right_quadrant,
    Lenia::c64 *bottom_left_quadrant,
    Lenia::c64 *bottom_right_quadrant,
    i32 N,
    f32 norm,
    f32 dt,
    f32 mu,
    f32 sigma)
{

    i32 sEq1 = (N * N + N) / 2;
    i32 sEq2 = (N * N - N) / 2;

    i32 xIndex = blockIdx.x * blockDim.x + threadIdx.x;
    i32 yIndex = blockIdx.y * blockDim.y + threadIdx.y;

    i32 index = (yIndex * N) + xIndex;

    if (xIndex < N / 2)
    {
        if (yIndex < N / 2)
        {
            const Lenia::c64 top_left = leniastep(resultField[index], inv[index + sEq1], norm, dt, mu, sigma);
            const Lenia::c64 bottom_right = leniastep(resultField[index + sEq1], inv[index], norm, dt, mu, sigma);
            resultField[index] = top_left;
            resultField[index + sEq1] = bottom_right;
            top_left_quadrant[yIndex * (N / 2) + xIndex] = top_left;
            bottom_right_quadrant[yIndex * (N / 2) + xIndex] = bottom_right;
        }
    }
    else
    {
        if (yIndex < N / 2)
        {
            const Lenia::c64 top_right = leniastep(resultField[index], inv[index + sEq2], norm, dt, mu, sigma);
            const Lenia::c64 bottom_left = leniastep(resultField[index + sEq2], inv[index], norm, dt, mu, sigma);
            resultField[index] = top_right;
            resultField[index + sEq2] = bottom_left;
            top_right_quadrant[yIndex * (N / 2) + xIndex - (N / 2)] = top_right;
            bottom_left_quadrant[yIndex * (N / 2) + xIndex - (N / 2)] = bottom_left;
        }
    }
}

void Lenia::Simulation::loadFFT() noexcept
{
    f32 *buffer_gpu;
    const std::size_t cell_count = m_size * m_hostLayerInfoBuffer.m_data.size();
    cudaMalloc(&buffer_gpu, cell_count * sizeof(f32));
    cudaMemcpy(buffer_gpu, m_readBuffer.m_data.data(), cell_count * sizeof(f32), cudaMemcpyHostToDevice);
    thrust::transform(
        thrust::device,
        buffer_gpu,
        buffer_gpu + cell_count,
        m_resultfftField,
        [] __device__(const f32 real)
        { return c64{real, 0}; });
    cudaMemcpy(m_fragBuffer, m_resultfftField, m_numBytesField, cudaMemcpyDeviceToDevice);
    cudaFree(buffer_gpu);
}

void Lenia::Simulation::allocBuffers() noexcept
{
    cudaMalloc(&m_fftField, m_size * m_hostLayerInfoBuffer.m_data.size() * sizeof(c64));
    cudaMalloc(&m_mulfftField, m_size * m_hostLayerInfoBuffer.m_data.size() * sizeof(c64));
    cudaMalloc(&m_invfftField, m_size * m_hostLayerInfoBuffer.m_data.size() * sizeof(c64));
    cudaMalloc(&m_resultfftField, m_size * m_hostLayerInfoBuffer.m_data.size() * sizeof(c64));
}

void Lenia::Simulation::freeBuffers() noexcept
{
    cudaFree(m_fftField);
    cudaFree(m_mulfftField);
    cudaFree(m_invfftField);
    cudaFree(m_resultfftField);
}

__device__ Lenia::LayerInfo Lenia::LayerInfo::operator+(const LayerInfo &rhs)
{
    const f32 mass = m_mass + rhs.m_mass;
    const glm::vec2 centerOfMass = m_centerOfMass + rhs.m_centerOfMass;
    const glm::vec2 toroidalCosineSum = m_toroidalCosineSum + rhs.m_toroidalCosineSum;
    const glm::vec2 toroidalSineSum = m_toroidalSineSum + rhs.m_toroidalSineSum;
    const Lenia::BoundingBox bb = Lenia::BoundingBox(
        min(m_boundingBox.m_x0, rhs.m_boundingBox.m_x0),
        min(m_boundingBox.m_y0, rhs.m_boundingBox.m_y0),
        max(m_boundingBox.m_x1, rhs.m_boundingBox.m_x1),
        max(m_boundingBox.m_y1, rhs.m_boundingBox.m_y1));
    return LayerInfo{bb, centerOfMass, mass, 0u, toroidalCosineSum, toroidalSineSum};
}

struct FieldTupleToLayerInfoFunctor
{
    std::size_t local_width;
    std::size_t world_width;
    std::size_t world_height;
    i32 x_offset;
    i32 y_offset;

    __device__ Lenia::LayerInfo operator()(const thrust::tuple<i32, Lenia::c64> &c)
    {
        i32 yIndex = i32(thrust::get<0>(c) / local_width) + y_offset;
        i32 xIndex = i32(thrust::get<0>(c) % local_width) + x_offset;
        Lenia::BoundingBox bb;
        Lenia::c64 val = thrust::get<1>(c);
        if (val.x)
        {
            bb = Lenia::BoundingBox{xIndex, yIndex, xIndex, yIndex};
        }
        else
        {
            bb = Lenia::BoundingBox{INT_MAX, INT_MAX, INT_MIN, INT_MIN};
        }

        const f32 xAngle = angleForCoordinate(xIndex, world_width);
        const f32 yAngle = angleForCoordinate(yIndex, world_height);
        f32 xSine = 0.f;
        f32 xCosine = 0.f;
        f32 ySine = 0.f;
        f32 yCosine = 0.f;
        sincosf(xAngle, &xSine, &xCosine);
        sincosf(yAngle, &ySine, &yCosine);

        return Lenia::LayerInfo{
            bb,
            glm::vec2{xIndex * val.x, yIndex * val.x},
            val.x,
            0u,
            glm::vec2{xCosine * val.x, yCosine * val.x},
            glm::vec2{xSine * val.x, ySine * val.x}};
    }
};

static Lenia::LayerInfo combineQuadrants(const Lenia::LayerInfo quadrant_infos[4], const std::size_t w, const std::size_t h)
{
    Lenia::LayerInfo out = Lenia::LayerInfo{
        Lenia::BoundingBox{INT_MAX, INT_MAX, INT_MIN, INT_MIN},
        glm::vec2{},
        0.f,
        0u,
        glm::vec2{},
        glm::vec2{}};
    for (u8 i = 0; i < 4; ++i)
    {
        const Lenia::LayerInfo &q = quadrant_infos[i];
        out.m_mass += q.m_mass;
        out.m_centerOfMass += q.m_centerOfMass;
        out.m_toroidalCosineSum += q.m_toroidalCosineSum;
        out.m_toroidalSineSum += q.m_toroidalSineSum;
        out.m_boundingBox.m_x0 = std::min(out.m_boundingBox.m_x0, q.m_boundingBox.m_x0);
        out.m_boundingBox.m_y0 = std::min(out.m_boundingBox.m_y0, q.m_boundingBox.m_y0);
        out.m_boundingBox.m_x1 = std::max(out.m_boundingBox.m_x1, q.m_boundingBox.m_x1);
        out.m_boundingBox.m_y1 = std::max(out.m_boundingBox.m_y1, q.m_boundingBox.m_y1);
    }
    if (out.m_mass > 0.f)
    {
        const glm::vec2 linearCenterOfMass = out.m_centerOfMass / out.m_mass;
        out.m_centerOfMass = glm::vec2{
            Lenia::centerOfMassFromToroidalMoments(out.m_toroidalSineSum.x, out.m_toroidalCosineSum.x, static_cast<f32>(w), linearCenterOfMass.x),
            Lenia::centerOfMassFromToroidalMoments(out.m_toroidalSineSum.y, out.m_toroidalCosineSum.y, static_cast<f32>(h), linearCenterOfMass.y)};
    }
    else
    {
        out.m_centerOfMass = glm::vec2{0.f, 0.f};
    }
    return out;
}

struct ResultToFragCopyFunctor
{
    __device__ Lenia::c64 operator()(const Lenia::c64 &result, const Lenia::c64 &frag)
    {
        bool is_zero = false;
        return result * !is_zero + (result + frag) * is_zero;
    }
};

void Lenia::Simulation::updateFFT(const Lenia::c64 *animalKernel, const f32 dt, const f32 mu, const f32 sigma) noexcept
{
    using namespace thrust::placeholders;

    m_previousStepInfo = m_hostLayerInfoBuffer[0];
    i32 batches = m_hostLayerInfoBuffer.m_data.size();
    std::size_t quadrant_offset = m_size / 4;
    LayerInfo quadrant_infos[4];
    for (std::size_t i = 0; i < batches; ++i)
    {
        const std::size_t offset = i * m_size;
        std::vector<c64 *> quadrants = {
            m_fftField + offset + quadrant_offset * 0,
            m_fftField + offset + quadrant_offset * 1,
            m_fftField + offset + quadrant_offset * 2,
            m_fftField + offset + quadrant_offset * 3,
        };
        cufftExecC2C(m_plan, m_resultfftField + offset, m_fftField + offset, CUFFT_FORWARD);
        thrust::transform(
            thrust::device,
            animalKernel,
            animalKernel + m_size,
            m_fftField + offset,
            m_mulfftField + offset,
            _1 * _2);
        cufftExecC2C(m_plan, m_mulfftField + offset, m_invfftField + offset, CUFFT_INVERSE);
        fftshiftFast<<<m_blocksInGrid, m_threadsPerBlock>>>(
            m_resultfftField + offset,
            m_invfftField + offset,
            quadrants[0],
            quadrants[1],
            quadrants[2],
            quadrants[3],
            m_w,
            m_norm,
            dt,
            mu,
            sigma);
        thrust::transform(
            thrust::device,
            m_resultfftField + offset,
            m_resultfftField + offset + m_size,
            m_fragBuffer,
            m_fragBuffer,
            ResultToFragCopyFunctor());
        for (u8 i = 0; i < 4; ++i)
        {
            const i32 quadrant_x_offset = (i == 1 || i == 3) ? i32(m_w / 2) : 0;
            const i32 quadrant_y_offset = (i >= 2) ? i32(m_h / 2) : 0;
            auto zipped_begin = thrust::make_zip_iterator(thrust::make_tuple(idx_first, quadrants[i]));
            quadrant_infos[i] = thrust::transform_reduce(
                thrust::device,
                zipped_begin,
                zipped_begin + quadrant_offset,
                FieldTupleToLayerInfoFunctor{m_w / 2, m_w, m_h, quadrant_x_offset, quadrant_y_offset},
                Lenia::LayerInfo{
                    Lenia::BoundingBox{INT_MAX, INT_MAX, INT_MIN, INT_MIN},
                    glm::vec2{},
                    0.f,
                    0u,
                    glm::vec2{},
                    glm::vec2{}},
                _1 + _2);
        }
        m_hostLayerInfoBuffer[i] = combineQuadrants(quadrant_infos, m_w, m_h);
        m_hostLayerInfoBuffer[i].m_showDebugInfo = m_showDebugInfo;
    }
    cudaMemcpy(m_gpuLayerInfoBuffer, m_hostLayerInfoBuffer.m_data.data(), m_numBytesLayerData, cudaMemcpyHostToDevice);
}

void Lenia::Simulation::setShowDebugInfo(const b8 showDebugInfo) noexcept
{
    m_showDebugInfo = showDebugInfo ? 1u : 0u;
    for (auto &layerInfo : m_hostLayerInfoBuffer.m_data)
    {
        layerInfo.m_showDebugInfo = m_showDebugInfo;
    }
    cudaMemcpy(m_gpuLayerInfoBuffer, m_hostLayerInfoBuffer.m_data.data(), m_numBytesLayerData, cudaMemcpyHostToDevice);
}

struct PlaceCircleFunctor
{
    std::size_t w;
    u16 x, y, radius;
    f32 value;

    __device__ Lenia::c64 operator()(const thrust::tuple<i32, Lenia::c64> &pair)
    {
        i32 yIndex = thrust::get<0>(pair) / w;
        i32 xIndex = thrust::get<0>(pair) % w;
        i32 i = xIndex - x;
        i32 j = yIndex - y;
        f32 out = thrust::get<1>(pair).x;
        if ((i * i + j * j) < radius * radius)
        {
            out *= value * value * value;
        }
        return Lenia::c64{out, 0};
    }
};

struct PlaceCellsFunctor
{
    std::size_t w, scale, c_w, c_h;
    u16 x, y;
    const std::vector<f32> &cells;
};

void Lenia::Simulation::clearCells() noexcept
{
    std::fill(m_readBuffer.m_data.begin(), m_readBuffer.m_data.end(), 0.f);
    std::fill(m_writeBuffer.m_data.begin(), m_writeBuffer.m_data.end(), 0.f);
    m_readBuffer.storeDataInShader();
    m_writeBuffer.storeDataInShader();
    cudaMemset(m_resultfftField, 0, m_size * m_hostLayerInfoBuffer.m_data.size() * sizeof(c64));
}

void Lenia::Simulation::placeCellsCircle(const u16 x, const u16 y, const u16 radius, const f32 value) noexcept
{
    thrust::counting_iterator idx_first(0);

    auto zipped_start = thrust::make_zip_iterator(thrust::make_tuple(idx_first, m_resultfftField));
    auto zipped_end = thrust::make_zip_iterator(thrust::make_tuple(idx_first + m_size, m_resultfftField + m_size));
    thrust::transform(
        thrust::device,
        zipped_start,
        zipped_end,
        m_resultfftField,
        PlaceCircleFunctor{m_w, x, y, radius, value});
}