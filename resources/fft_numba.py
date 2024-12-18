import os
import shutil
from concurrent.futures import ProcessPoolExecutor
from typing import Any, Callable, Sequence, cast

import cv2
import matplotlib.pyplot as plt
import numpy as np
from matplotlib.axes import Axes
from matplotlib.figure import Figure
from numpy._typing import ArrayLike, NDArray
from Utils import ORBIUM, rle2arr, upscale_array_manually  # type: ignore

SCALE = 1
R = 13
B = np.array([1.0], dtype=np.float64)
MU = np.float64(0.15)
SIGMA = np.float64(0.015)
SIZE = R * SCALE


def calc_kernel_at(r: np.float64) -> np.float64:
    Br = len(B) * (r / SIZE)
    modded = min(np.fmod(Br, 1), 1)
    Kc: np.float64 = (modded > 0) * (modded < 1) * np.pow(4.0 * modded * (1.0 - modded), 4.0)
    return np.float64(r < SIZE) * Kc


def kernel_shell() -> NDArray[np.float64]:
    res = np.zeros((SIZE * SIZE * 4), dtype=np.float64)
    for i in range(0, SIZE):
        for j in range(0, SIZE):
            val = calc_kernel_at(np.sqrt(i * i + j * j))
            res[(SIZE + i) * SIZE * 2 + (SIZE + j)] = val
            res[(SIZE + i) * SIZE * 2 + (SIZE - j)] = val
            res[(SIZE - i) * SIZE * 2 + (SIZE + j)] = val
            res[(SIZE - i) * SIZE * 2 + (SIZE - j)] = val
    res = res / np.float64(res.sum())
    return res.reshape((SIZE * 2, SIZE * 2))


def make_subplots(*fields: ArrayLike, names: tuple[str] = ()) -> Figure:
    n_fields = len(fields)
    cols = 2
    rows = (n_fields + cols - 1) // cols

    axes: np.ndarray[Axes, Any]
    fig, axes = plt.subplots(rows, cols, figsize=(12, 8))
    for i, ax in enumerate(axes.flat):
        ax = cast(Axes, ax)
        if i < n_fields:
            if names:
                ax.title.set_text(names[i])
            im = ax.imshow(fields[i], cmap="magma")
            fig.colorbar(im)
        else:
            ax.axis("off")

    plt.tight_layout()
    return fig


def combine_arrays(*fields: NDArray[np.float64]) -> NDArray[np.float64]:
    fields = sorted(fields, key=lambda f: f.shape[0])
    cols = np.int32(np.sqrt(len(fields)))
    widths = sum(f.shape[0] for f in fields) // cols
    heights = sum(f.shape[1] for f in fields) // cols
    out = np.zeros((widths, heights))
    cols = np.int32(np.sqrt(len(fields)))
    x_start = 0
    y_start = 0
    for i, field in enumerate(fields):
        out[x_start : x_start + field.shape[0], y_start : y_start + field.shape[1]] = field
        x_start = field.shape[0]
        if i and i % cols == 0:
            y_start = fields[i - cols].shape[1]
    return out


def video_from_arrays(arrays: list[NDArray[np.float64]]) -> None:
    out = cv2.VideoWriter("output.mp4", -1, 24, arrays[0].shape)
    for array in arrays:
        array_normalized = cv2.normalize(array, None, 0, 255, cv2.NORM_MINMAX)
        array_uint8 = array_normalized.astype(np.uint8)
        array_colored = cv2.applyColorMap(array_uint8, cv2.COLORMAP_JET)
        out.write(array_colored)
    out.release()


def save_plot[*T](variable_plot: Callable[[*T], Figure], arg_tuple: tuple[*T], output_dir: str, i: int) -> None:
    fig = variable_plot(*arg_tuple)
    fig.savefig(fname=output_dir + f"{str(i).zfill(6)}.jpg", dpi=200)
    plt.close(fig)


def animate_fig[*T](variable_plot: Callable[[*T], Figure], arg_tuples: Sequence[tuple[*T]], out_dir: str, out_name: str) -> None:
    """Creates a gif from a plot function that takes one or more variables."""
    shutil.rmtree(out_dir, ignore_errors=True)
    os.mkdir(out_dir)
    with ProcessPoolExecutor(max_workers=os.cpu_count()) as executor:
        futures = [executor.submit(save_plot, variable_plot, arg_tuple, out_dir, i) for i, arg_tuple in enumerate(arg_tuples)]
        for future in futures:
            future.result()
    os.system(f"ffmpeg -hwaccel cuda -framerate 24 -i {out_dir[:-1]}/%06d.jpg -c:v hevc_nvenc -r 24 -pix_fmt yuv420p {out_name} -y")
    os.system(".\\" + out_name)


def growth_func(field: NDArray[np.float64]) -> NDArray[np.float64]:
    return np.maximum(0, 1.0 - ((field - MU) ** 2.0 / (9.0 * SIGMA**2.0))) ** 4.0 * 2.0 - 1.0


def main() -> None:
    padded = r"C:\Users\damix\Documents\GitHub\Lenia\build\padded.txt"
    data = read_array_from_file(padded)
    data /= data.sum()
    kernel = kernel_shell()
    field = np.zeros((32, 32))
    padded = np.pad(kernel, pad_width=(field.shape[0] - kernel.shape[0]) // 2, mode="constant", constant_values=0)
    make_subplots(data, padded)
    plt.show()
    print(np.isclose(data, padded).all())
    # kernel_cuda = read_array_from_file(r"C:\Users\damix\source\repos\CudaTest\kernel.txt")
    # #     cells = read_array_from_file(r"C:\Users\damix\source\repos\CudaTest\cells.txt")
    # #     upscaled = read_array_from_file(r"C:\Users\damix\source\repos\CudaTest\upscaled.txt")
    # field_cuda = read_array_from_file(r"C:\Users\damix\source\repos\CudaTest\field.txt")
    # padded_cuda = read_array_from_file(r"C:\Users\damix\source\repos\CudaTest\padded.txt")
    # cuda_inv = read_array_from_file(r"C:\Users\damix\source\repos\CudaTest\cuda_inv.txt")
    # cuda_shifted = read_array_from_file(r"C:\Users\damix\source\repos\CudaTest\cuda_shifted.txt")

    # field = np.zeros((32 * SCALE, 32 * SCALE))
    # flat = field.flatten()
    # for i in range(field.size):
    #     flat[i] = i
    # field = flat.reshape((32 * SCALE, 32 * SCALE))
    # # cells = upscale_array_manually(rle2arr(ORBIUM), SCALE)
    # # start = (4, 4)
    # # field[start[0] : start[0] + cells.shape[0], start[1] : start[1] + cells.shape[0]] = cells
    # padded = np.pad(kernel, pad_width=(field.shape[0] - kernel.shape[0]) // 2, mode="constant", constant_values=0)
    # fft_kernel = np.fft.fft2(field)
    # outputs = []
    # for _ in range(1):
    #     fft = np.fft.fft2(field)
    #     mul = fft * fft_kernel
    #     # inv = np.fft.ifft2(mul)
    #     shifted_np = np.fft.fftshift(np.real(fft))
    #     shifted_own = shift(np.real(fft).flatten())
    #     # growth = 0.1 * growth_func(shifted)
    #     # field = np.clip(field + growth, 0, 1)

    #     # video_from_arrays(outputs)
    # make_subplots(
    #     np.abs(fft),
    #     np.abs(mul),
    #     np.abs(shifted_own),
    #     cuda_inv,
    #     cuda_shifted,
    #     names=("field", "inverse", "shifted", "cuda inverse", "cuda shifted"),
    # )
    # plt.show()
    # # print("start render")
    # # animate_fig(make_subplots, outputs, out_dir="resources/figs/", out_name="resources\\fft.mp4")


def read_array_from_file(path: str) -> NDArray:
    with open(path, "r") as F:
        lines = F.readlines()
    width, height = int(lines[0].split()[0]), int(lines[0].split()[1])
    out = np.zeros((width * height), dtype=np.float64)
    for i, num in enumerate(lines[1].split()):
        out[i] = np.float64(num)
    return out.reshape(width, height)


def shift(array: NDArray):
    N = np.int32(np.sqrt(array.size))
    offsetA = (N * N + N) // 2
    offsetB = (N * N - N) // 2
    for (y, x), _ in np.ndenumerate(array.reshape((N, N))):
        idx = y * N + x
        if x < N // 2:
            if y < N // 2:
                array[idx], array[idx + offsetA] = array[idx + offsetA], array[idx]
        else:
            if y < N // 2:
                array[idx], array[idx + offsetB] = array[idx + offsetB], array[idx]
    return array.reshape((N, N))


if __name__ == "__main__":
    main()
