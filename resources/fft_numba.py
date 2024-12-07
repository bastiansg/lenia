from math import floor, sqrt

import numpy as np
from numba import njit, prange
from Utils import ORBIUM, DisplayCells, rle2arr, upscale_array_manually  # type: ignore

SCALE = 10
R = 13
B = np.array([1.0], dtype=np.float32)
SIGMA = 0.15
MU = 0.017
SIZE = R * SCALE


def calc_kernel_at(r: np.float32) -> np.float32:
    Br = len(B) * (r / SIZE)
    modded = min(np.fmod(Br, 1), 1)
    Kc = (modded > 0) * (modded < 1) * np.pow(4.0 * modded * (1.0 - modded), 4.0)
    return (r < SIZE) * Kc


def kernel_shell() -> np.ndarray:
    res = np.zeros((SIZE * SIZE * 4), dtype=np.float32)
    for i in prange(0, SIZE):
        for j in prange(0, SIZE):
            val = calc_kernel_at(sqrt(i * i + j * j))
            res[(SIZE + i) * SIZE * 2 + (SIZE + j)] = val
            res[(SIZE + i) * SIZE * 2 + (SIZE - j)] = val
            res[(SIZE - i) * SIZE * 2 + (SIZE + j)] = val
            res[(SIZE - i) * SIZE * 2 + (SIZE - j)] = val
    return res.reshape((SIZE * 2, SIZE * 2))


def main() -> None:
    test = kernel_shell()
    print(test)
    DisplayCells(test)


if __name__ == "__main__":
    main()
