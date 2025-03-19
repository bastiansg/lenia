#include <iostream>
#include <cuda_runtime.h>
#include <thrust/device_vector.h>

int main()
{
    thrust::device_vector<float> test(1);

    std::cout << "CUDA malloc success!" << std::endl;
    return 0;
}