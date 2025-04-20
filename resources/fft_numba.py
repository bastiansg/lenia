import datetime
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
from Utils import ORBIUM, OTHER, rle2arr, upscale_array_manually  # type: ignore

SCALE = 10
R = 13
B = np.array([1.0], dtype=np.float64)
MU = np.float64(0.15)
SIGMA = np.float64(0.017)
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


def make_subplots(*fields: ArrayLike, names: tuple[str, ...] | None = None) -> Figure:
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
    sorted_fields = sorted(fields, key=lambda f: f.shape[0])
    cols = np.int32(np.sqrt(len(sorted_fields)))
    widths = sum(f.shape[0] for f in sorted_fields) // cols
    heights = sum(f.shape[1] for f in sorted_fields) // cols
    out = np.zeros((widths, heights))
    cols = np.int32(np.sqrt(len(sorted_fields)))
    x_start = 0
    y_start = 0
    for i, field in enumerate(sorted_fields):
        out[x_start : x_start + field.shape[0], y_start : y_start + field.shape[1]] = field
        x_start = field.shape[0]
        if i and i % cols == 0:
            y_start = sorted_fields[i - cols].shape[1]
    return out


def video_from_arrays(arrays: list[NDArray[np.float64]]) -> None:
    time = datetime.datetime.now().timestamp()
    out = cv2.VideoWriter(f"resources\\videos\\{time}_fft.mp4", 0x7634706D, 24, arrays[0].shape)
    for array in arrays:
        array_normalized = cv2.normalize(array, None, 0, 255, cv2.NORM_MINMAX)
        array_uint8 = array_normalized.astype(np.uint8)
        array_colored = cv2.applyColorMap(array_uint8, cv2.COLORMAP_JET)
        out.write(array_colored)
    out.release()
    os.system(f".\\resources\\videos\\{time}_fft.mp4")


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
    os.system(out_name)


def growth_func[T](field: T) -> T:
    return np.maximum(0, 1.0 - ((field - MU) ** 2.0 / (9.0 * SIGMA**2.0))) ** 4.0 * 2.0 - 1.0


TRACTUS = "8.DPXUD$5.pFqMqRpTpW2qBqDpXB$4.HrHsLrVqFpTpJXpCpSqMsL$3.UpWrSrAqCpKQA3.SqPsV$2.pBqAqEqApSpIpN6.CsS$.EpWqApIQpBqVrNqL7.wO$.pIqCXB2.rP2sUqF6.U$.pXpR4.sEuBuKtW7.uJ$PqHpA4.rTuTvNvMtL6.qR$DqSO5.vDwLwUwI7.pN$.tHK5.uUxBxUxWtF6.qK$.vCO5.LxM2yOxT6.qG$2.pN6.uE3yOsN4.SpU$2.wU6.CxQ2yOvWqJ3.pSpK$2.H7.tU2xTwSuGrGpUqAqER$3.tL6.rLwDwPwBvAtGrQqUpQ$3.CqS5.qXuTvHuJtJsJrFpWR$4.pJqC3.IrJtNtJsFrEqKpOS$5.pCqGpNpMqErKrXrIqHpNpDPC$6.HpNqAqGqJqEpOpDPKA$8.EPSQNIC!"


def add_wall(field: NDArray, x_start: int, y_start: int, width: int, height: int, val: float = 0.1) -> None:
    field[y_start : y_start + height, x_start : x_start + width] = val


def manual_pad(field: NDArray, w: int) -> NDArray:
    old_w = int(np.sqrt(field.size))
    new_field = np.zeros(w * w, dtype=field.dtype)
    start_w = (w - old_w) // 2

    for i in range(old_w):
        for j in range(old_w):
            old_idx = i * old_w + j
            new_i = start_w + i
            new_j = start_w + j
            new_idx = new_i * w + new_j  # Fixed: use 'w' instead of 'start_w'
            new_field[new_idx] = field[old_idx]

    return new_field


def main() -> None:
    kernel = kernel_shell()
    width = 1024
    shape = (width, width)
    layer_names = ("main",)
    layers = {name: np.zeros(shape) for name in layer_names}
    cells = upscale_array_manually(rle2arr(ORBIUM), SCALE)
    layers["main"][70 : cells.shape[0] + 70, 70 : cells.shape[1] + 70] = cells

    # pad_horizotal = layers["main"].shape[0] * len(layers) - kernel.shape[1]
    # pad_left = pad_horizotal // 2
    # pad_right = pad_horizotal - pad_left

    # pad_vertical = layers["main"].shape[0] - kernel.shape[1]
    # pad_top = pad_vertical // 2
    # pad_bottom = pad_vertical - pad_top

    # padded = np.pad(kernel, pad_width=((pad_top, pad_bottom), (pad_left, pad_right)), mode="constant", constant_values=0)

    padded = manual_pad(kernel.flatten(), layers["main"].shape[0]).reshape((width, width))
    padded /= padded.sum()
    kernel = np.fft.fft2(padded)

    outputs = [[padded]]
    # for i in range(60):
    #     for name, layer in layers.items():
    #         fft = np.fft.fft2(layer)
    #         mul = fft * kernel
    #         inv = np.fft.ifft2(mul)
    #         shifted = np.fft.fftshift(np.real(inv))
    #         growth = 0.1 * growth_func(shifted)
    #         layers[name] = np.clip(layer + growth, 0, 1)
    #         outputs.append([layers[name]])
    print("start render")
    animate_fig(make_subplots, outputs, "resources/figs/", ".\\resources\\videos\\" + str(datetime.datetime.now().timestamp()) + ".mp4")


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
