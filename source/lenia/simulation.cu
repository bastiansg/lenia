#include <thrust/execution_policy.h>
#include <thrust/transform.h>
#include <thrust/transform_reduce.h>
#include "simulation.hpp"
#include <cmath>
#include "cuda_runtime.h"
#include <execution>
#include <vector>
#include <future>



__device__ f32 growth(const f32 f, const f32 mu, const f32 sigma) {
    return 0.1f * (pow(max(0.0f, 1.0f - pow(f - mu, 2.0f) / (9.0f * sigma * sigma)), 4.0f) * 2.0f - 1.0f);
}

__device__ Lenia::c64 leniastep(Lenia::c64 resultField, Lenia::c64 inv, f32 norm, f32 mu, f32 sigma) {
    f32 val = min(max(resultField.x + growth(inv.x * norm, mu, sigma), 0.f), 1.f);
    return { val, 0.f };
}

__global__ static void fftshiftFast(
        Lenia::c64 * resultField, 
        Lenia::c64 * inv, 
        //Lenia::c64 * top_left_quadrant,
        //Lenia::c64 * top_right_quadrant,
        //Lenia::c64 * bottom_left_quadrant,
        //Lenia::c64 * bottom_right_quadrant,
        i32 N, 
        f32 norm, 
        f32 mu, 
        f32 sigma
    ) {

    i32 sEq1 = (N * N + N) / 2;
    i32 sEq2 = (N * N - N) / 2;
    
    i32 xIndex = blockIdx.x * blockDim.x + threadIdx.x;
    i32 yIndex = blockIdx.y * blockDim.y + threadIdx.y;
    
    i32 index = (yIndex * N) + xIndex;

    if (xIndex < N / 2) {
        if (yIndex < N / 2) {
            const Lenia::c64 top_left = leniastep(resultField[index], inv[index + sEq1], norm, mu, sigma);
            const Lenia::c64 bottom_right = leniastep(resultField[index + sEq1], inv[index], norm, mu, sigma);
            resultField[index] = top_left;
            resultField[index + sEq1] = bottom_right;
            /*top_left_quadrant[yIndex * (N / 2) + xIndex] = top_left;
            bottom_right_quadrant[yIndex * (N / 2) + xIndex] = bottom_right;*/
        }
    }
    else {
        if (yIndex < N / 2) {
            const Lenia::c64 bottom_left = leniastep(resultField[index], inv[index + sEq2], norm, mu, sigma);
            const Lenia::c64 top_right = leniastep(resultField[index + sEq2], inv[index], norm, mu, sigma);
            resultField[index] = bottom_left;
            resultField[index + sEq2] = top_right;/*
            bottom_left_quadrant[yIndex * (N / 2) + xIndex - (N / 2)] = bottom_left;
            top_right_quadrant[yIndex * (N / 2) + xIndex - (N / 2)] = top_right;*/
        }
    }
}

void Lenia::Simulation::loadFFT() noexcept {
    cudaMalloc(&m_fftField, m_size * m_hostLayerInfoBuffer.m_data.size() * sizeof(c64));
    cudaMalloc(&m_mulfftField, m_size * m_hostLayerInfoBuffer.m_data.size() * sizeof(c64));
    cudaMalloc(&m_invfftField, m_size * m_hostLayerInfoBuffer.m_data.size() * sizeof(c64));
    cudaMalloc(&m_resultfftField, m_size * m_hostLayerInfoBuffer.m_data.size() * sizeof(c64));

    f32 *buffer_gpu;
    cudaMalloc(&buffer_gpu, m_readBuffer.m_data.size() * sizeof(f32));
    cudaMemcpy(buffer_gpu, m_readBuffer.m_data.data(), m_readBuffer.m_data.size() * sizeof(f32), cudaMemcpyHostToDevice);
    thrust::transform(
        thrust::device,
        buffer_gpu,
        buffer_gpu,
        m_resultfftField,
        [] __device__(const f32 real)
        { return c64{real, 0}; }
    );
    cudaMemcpy(m_fragBuffer, m_resultfftField, m_numBytesField, cudaMemcpyDeviceToDevice);
}


__device__ Lenia::LayerInfo Lenia::LayerInfo::operator+(const LayerInfo &rhs)  {
    const f32 mass = m_mass + rhs.m_mass;
    const glm::vec2 centerOfMass = m_centerOfMass + rhs.m_centerOfMass;
    const Lenia::BoundingBox bb = Lenia::BoundingBox(
        thrust::min(m_boundingBox.m_x0, rhs.m_boundingBox.m_x0),
        thrust::min(m_boundingBox.m_y0, rhs.m_boundingBox.m_y0),
        thrust::max(m_boundingBox.m_x1, rhs.m_boundingBox.m_x1),
        thrust::max(m_boundingBox.m_y1, rhs.m_boundingBox.m_y1)
    );
    return LayerInfo{bb, centerOfMass, mass};
}

struct FieldTupleToLayerInfoFunctor {
    std::size_t w;
    Lenia::c64* resultField;
    const Lenia::BoundingBox invalid{i32(w) + 1, i32(w) + 1, -1, -1};
    
    __device__ Lenia::LayerInfo operator()(const thrust::tuple<i32, Lenia::c64>& c) {
        i32 yIndex = thrust::get<0>(c) / w;
        i32 xIndex = thrust::get<0>(c) % w;
        Lenia::BoundingBox bb;
        Lenia::c64 val = thrust::get<1>(c);
        if (val.x) {
            bb = Lenia::BoundingBox{ xIndex, yIndex, xIndex, yIndex };
        } else {
            bb = invalid;
        }
        return Lenia::LayerInfo{bb, glm::vec2{xIndex * val.x, yIndex * val.x }, val.x};
    }
};
//
//static Lenia::LayerInfo combineQuadrants(const Lenia::LayerInfo quadrant_infos[4], const std::size_t w, const std::size_t h) {
//    Lenia::LayerInfo out = quadrant_infos[0];
//    if (out.m_boundingBox.m_x0 == 0) {
//        out.m_boundingBox.m_x0 -= w - std::min(quadrant_infos[1].m_boundingBox.m_x1, quadrant_infos[3].m_boundingBox.m_x1);
//    }
//    if (out.m_boundingBox.m_y0 == 0) {
//        out.m_boundingBox.m_y0 -= h - std::min(quadrant_infos[2].m_boundingBox.m_y1, quadrant_infos[3].m_boundingBox.m_y1);
//    }
//    if (out.m_boundingBox.m_x1 == w / 2 - 1) {
//        if (quadrant_infos[1].m_boundingBox.m_x0 == 0 || quadrant_infos[3].m_boundingBox.m_x0 == 0) {
//            out.m_boundingBox.m_x1 += std::max(quadrant_infos[1].m_boundingBox.m_x0,  quadrant_infos[3].m_boundingBox.m_x0);
//        }
//    }
//    if (out.m_boundingBox.m_y1 == w / 2 - 1) {
//        if (quadrant_infos[2].m_boundingBox.m_y0 == 0 || quadrant_infos[3].m_boundingBox.m_y1 == 0) {
//            out.m_boundingBox.m_y1 += std::max(quadrant_infos[2].m_boundingBox.m_y1, quadrant_infos[3].m_boundingBox.m_y1);
//        }
//    }
//    return out;
//} 

void Lenia::Simulation::updateFFT(const Lenia::c64 *animalKernel, const f32 mu, const f32 sigma) noexcept {
    using namespace thrust::placeholders;

    m_previousStepInfo = m_hostLayerInfoBuffer[0];
    i32 batches = m_hostLayerInfoBuffer.m_data.size();
    /*std::size_t quadrant_offset = m_size / 4;
    LayerInfo quadrant_infos[4];*/
    for (std::size_t i = 0; i < batches; ++i) {
        const std::size_t offset = i * m_size;
        /*std::vector<c64*> quadrants = {
            m_fftField + offset + quadrant_offset * 0,
            m_fftField + offset + quadrant_offset * 1,
            m_fftField + offset + quadrant_offset * 2,
            m_fftField + offset + quadrant_offset * 3,
        };*/
        cufftExecC2C(m_plan, m_resultfftField + offset, m_fftField + offset, CUFFT_FORWARD);
        thrust::transform(
            thrust::device,
            animalKernel,
            animalKernel + m_size,
            m_fftField + offset,
            m_mulfftField + offset,
            _1 * _2
        );
        cufftExecC2C(m_plan, m_mulfftField + offset, m_invfftField + offset, CUFFT_INVERSE);
        fftshiftFast << <m_blocksInGrid, m_threadsPerBlock >> > (
            m_resultfftField + offset,
            m_invfftField + offset,
            //quadrants[0],
            //quadrants[1],
            //quadrants[2],
            //quadrants[3],
            m_w,
            m_norm,
            mu,
            sigma
        );
        if (i == 0) {
            cudaMemcpy(m_fragBuffer, m_resultfftField, m_size * sizeof(c64), cudaMemcpyDeviceToDevice);
        }
        else {
            thrust::transform(
                thrust::device,
                m_resultfftField + offset,
                m_resultfftField + offset + m_size,
                m_fragBuffer,
                m_fragBuffer,
                _1 + _2
            );
        }
        thrust::counting_iterator idx_first(0);
        auto zipped_begin = thrust::make_zip_iterator(thrust::make_tuple(idx_first, m_resultfftField + offset));
        auto zipped_end = thrust::make_zip_iterator(thrust::make_tuple(idx_first + m_size, m_resultfftField + offset + m_size));
        LayerInfo info = thrust::transform_reduce(
            thrust::device,
            zipped_begin,
            zipped_end,
            FieldTupleToLayerInfoFunctor{ m_w },
            Lenia::LayerInfo{ Lenia::BoundingBox{INT_MAX, INT_MAX, INT_MIN, INT_MIN}, glm::vec2{}, 0.f }, 
            _1 + _2
        );
        info.m_centerOfMass /= info.m_mass;
        m_hostLayerInfoBuffer[i] = info;
    }
    cudaMemcpy(m_gpuLayerInfoBuffer, m_hostLayerInfoBuffer.m_data.data(), m_numBytesLayerData, cudaMemcpyHostToDevice);
}

struct PlaceCircleFunctor {
    std::size_t w;
    u16 x, y, radius;
    f32 value;
    
    __device__ Lenia::c64 operator()(const thrust::tuple<i32, Lenia::c64>& pair) {
        i32 yIndex = thrust::get<0>(pair) / w;
        i32 xIndex = thrust::get<0>(pair) % w;
        i32 i = xIndex - x;
        i32 j = yIndex - y;
        f32 out = thrust::get<1>(pair).x;
        if ((i * i + j * j) < radius * radius) {
            out *= value * value * value;
        }
        return Lenia::c64{ out, 0 };
    }
};

struct PlaceCellsFunctor {
    std::size_t w, scale, c_w, c_h;
    u16 x, y;
    const std::vector<f32> &cells;
};

void Lenia::Simulation::clearCells() noexcept {
    cudaMemset(m_resultfftField, 0, m_size * sizeof(c64));
}

void Lenia::Simulation::placeCellsCircle(const u16 x, const u16 y, const u16 radius, const f32 value) noexcept {
    thrust::counting_iterator idx_first(0);

    auto zipped_start = thrust::make_zip_iterator(thrust::make_tuple(idx_first, m_resultfftField));
    auto zipped_end = thrust::make_zip_iterator(thrust::make_tuple(idx_first + m_size, m_resultfftField + m_size));
    thrust::transform(
        thrust::device,
        zipped_start,
        zipped_end,
        m_resultfftField,
        PlaceCircleFunctor{ m_w, x, y, radius, value }
    );
}