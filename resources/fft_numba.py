import matplotlib.pyplot as plt
import numpy as np
from Utils import ORBIUM, DisplayCells, rle2arr, upscale_array_manually  # type: ignore

SCALE = 3
R = 14
B = np.array([1.0], dtype=np.float32)
MU = 0.15
SIGMA = 0.015
SIZE = R * SCALE


def calc_kernel_at(r: np.float32) -> np.float32:
    Br = len(B) * (r / SIZE)
    modded = min(np.fmod(Br, 1), 1)
    Kc = (modded > 0) * (modded < 1) * np.pow(4.0 * modded * (1.0 - modded), 4.0)
    return (r < SIZE) * Kc


def kernel_shell() -> np.ndarray:
    res = np.zeros((SIZE * SIZE * 4), dtype=np.float32)
    for i in range(0, SIZE):
        for j in range(0, SIZE):
            val = calc_kernel_at(np.sqrt(i * i + j * j))
            res[(SIZE - 0 + i) * SIZE * 2 + (SIZE - 0 + j)] = val
            res[(SIZE - 0 + i) * SIZE * 2 + (SIZE - 1 - j)] = val
            res[(SIZE - 1 - i) * SIZE * 2 + (SIZE - 0 + j)] = val
            res[(SIZE - 1 - i) * SIZE * 2 + (SIZE - 1 - j)] = val
    res /= res.size * 0.005917159763313609
    return res.reshape((SIZE * 2, SIZE * 2))


def display_multiple(*fields) -> None:
    n_fields = len(fields)
    cols = 2
    rows = (n_fields + cols - 1) // cols

    fig, axes = plt.subplots(rows, cols, figsize=(10, 8))

    for i, ax in enumerate(axes.flat):
        if i < n_fields:
            im = ax.imshow(fields[i], cmap="magma")
            fig.colorbar(im)
        else:
            ax.axis("off")

    plt.tight_layout()
    plt.show()


def plot():

    xpoints = np.arange(0, 1, 0.01)
    ypoints = growth_func(xpoints)

    plt.plot(xpoints, ypoints)
    plt.show()


def growth_func(field: np.ndarray) -> np.ndarray:
    return np.maximum(0, 1 - ((field - MU) ** 2 / (9 * SIGMA**2))) ** 4 * 2 - 1


def main() -> None:
    kernel = kernel_shell()
    field = np.zeros((100, 100))
    cells = rle2arr(ORBIUM)
    field[20:40, 20:40] = cells
    padded = np.pad(kernel, pad_width=(field.shape[0] - kernel.shape[0]) // 2, mode="constant", constant_values=0)
    fft_kernel = np.fft.fft2(padded)

    for i in range(5):
        fft_field = np.fft.fft2(field)
        fft_field *= fft_kernel
        fft_field = np.fft.fftshift(np.real(np.fft.ifft2(fft_field)))
        field = np.clip(field + 0.1 * growth_func(fft_field), 0, 1)

    display_multiple(kernel, padded, field, np.real(fft_field))


if __name__ == "__main__":
    main()
