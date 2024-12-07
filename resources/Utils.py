import os
import re

import matplotlib.pyplot as plt
import numpy as np

ORBIUM = "7.MD6.qL$6.pKqEqFURpApBRAqQ$5.VqTrSsBrOpXpWpTpWpUpCrQ$4.CQrQsTsWsApITNPpGqGvL$3.IpIpWrOsGsBqXpJ4.LsFrL$A.DpKpSpJpDqOqUqSqE5.ExD$qL.pBpTT2.qCrGrVrWqM5.sTpP$.pGpWpD3.qUsMtItQtJ6.tL$.uFqGH3.pXtOuR2vFsK5.sM$.tUqL4.GuNwAwVxBwNpC4.qXpA$2.uH5.vBxGyEyMyHtW4.qIpL$2.wV5.tIyG3yOxQqW2.FqHpJ$2.tUS4.rM2yOyJyOyHtVpPMpFqNV$2.HsR4.pUxAyOxLxDxEuVrMqBqGqKJ$3.sLpE3.pEuNxHwRwGvUuLsHrCqTpR$3.TrMS2.pFsLvDvPvEuPtNsGrGqIP$4.pRqRpNpFpTrNtGtVtStGsMrNqNpF$5.pMqKqLqRrIsCsLsIrTrFqJpHE$6.RpSqJqPqVqWqRqKpRXE$8.OpBpIpJpFTK!"
OTHER = "11.BGOVpA2pFpDpATOGB$9.JpApSqMrArLrS2rVrSrNrGqTqHpSpFQG$7.LpKqOrSsUtQuIuSuXvBuXuUuNuCtOtBsKrQqWqEpIQE$5.BpDqRsKuAvJwLxExRyByDyBxUxPxEwVwIvTvEuKtOsRrSqTpUpAJ$4.EpSrVuCwDxR12yOyDxPwVwDvGuKtJsHrGqCpDG$3.BpXsRvJxW17yOyIxPwSvTuStQsKrGpXVE$3.pPsWwF22yOyBxCwAuUtOsHqWpNO$2.QsHwI25yOyBxCvWuPtGrSqHpAE$2.qTvJ7yOyIyB3xW4yB2yDyIyL8yOxWwSvMuAsKqWpKG$.JtJyG6yOxJwIvTvRvWwDwI4wLwQwVxHxRyDyL7yOxMwFuPtBrIpSL$.qJvRyL5yOwSuKtGsWtBtJtTuC2uF2uCuIuSvJwAwVxMyByL6yOyDwSvGtLrSpXO$.sHxMxWyL3yOyBtGqWqCpXqHqTrLrVrXrS2rNrVsHtBtVuXvWwVxPyDyL6yOxEvOtVrXqCO$BtVwLxEyD3yOuUpN4.OpN2qCpSpIpFpIpXqRrSsUuAvBwDwXxRyG6yOxMvWuCsCqCO$pKuIvBwFxP3yOrV6.pApSpNT4.QpSrAsFtGuIvJwFxCxUyI5yOxRwAuCrXpXJ$qMsPtOvBwXyI2yOqEE3.BpDrDrSrGpUQE3.OpPqRrQsPtLuKvMwLxMyG5yOxUwAtVrQpNE$pUqRsCuAwDxWyOwIrQqC2pFpSqTtJuSuNtLrXrGqHpNpATpKpXqJqRrDrQsMtOuPvWxEyD5yOxRvTtOrDpD$.TqOsUvExCyGtVtDsMsFsKtGuPwAvTuStQtDtBsPsFrSrX2sHrVrAqJqEqOrLsRuCvOxCyD5yOxMvJsWqJL$2.pDrQuAvWvBtGtJtLtQuAuIvGuUtOsKrSsFsRtBtDtLuFuUuXuIsRqRpIVpNqRsFtVvRxHyI5yOxCuPrXpNB$3.qHsMuKrArSsHsP2sWtDsWrQqEpFpKqEqWrNrXsWuCvB2vRuPsFpN2.TqJsFuFwDxPyL5yOwItOqTQ$3.TqWpSVpPqEqMqOqHqMpK5.OpFpXrDsKtLuNvGvEtOqRL2.TqOsRuUwSyB5yOxWvEsFpNB$4.V17.pAqErIsPtQuIuAsFqCL2.pIrLtOvRxHyI5yOwQtOqOJ$24.pDqJrQsR2tDrXqEO.QqJsKuKwFxRyL4yOyDuXrQV$25.BpKqRrSsWtBsFqOpDpApUrItDuXwQyB5yOwDsPpN$27.OqErSsUtDsMrNqHpPqHrQtJvGxCyI4yOxHtOqEE$28.JqCrLsRtQtTrXpSpApXrNtOvTxR4yOyGuKqRG$29.BpPrLtVvGtLpU.EpSrVuIwVyL4yOuXrDL$31.qHtOvWuNpP3.qEtBwDyI4yOvJrIL$31.pItBvWuSqC3.TrXvRyL4yOvOrIL$31.LsMvGuIrDE3.rLwF5yOvJrDG$32.rS2uFsFpF3.sKyD5yOuUqMB$32.qRsMuAtDqWpAEpSwD6yOtVpP$32.pFrNtGtOsPrGqJvG6yOxHsKQ$33.qEsFtGtLtGvJ7yOvGqO$33.QqRsFtDtV3yOyI2yGyIxPsRL$34.pAqRrXwAxRxPxJxCwXxExRuKpS$35.VqWvOvTvRvJvEvJwAvJqT$36.rXtGtJtDsUtBtQuPrI$36.qHqRqO2qJrAsCrG$40.BpDqJ!"


def ParseBetaFloats() -> None:
    with open("animals.csv", "r") as f:
        for line in f.readlines():
            tokens = line.strip().split(",")
            beta = [str(round(eval(x), 5)) for x in tokens[7].split(";")]
            tokens[7] = ";".join(beta)
            tokens = ",".join(tokens)
            with open("animals_beta.csv", "a") as f2:
                f2.write(tokens + "\n")


def rle2arr(st: str) -> np.ndarray:
    rle_groups = re.findall("(\d*)([p-y]?[.boA-X$])", st.rstrip("!"))  # [(2 yO)(1 $)(1 yO)]
    code_list = sum([[c] * (1 if n == "" else int(n)) for n, c in rle_groups], [])  # [yO yO $ yO]
    code_arr = [l.split(",") for l in ",".join(code_list).split("$")]  # [[yO yO] [yO]]
    V = [
        [
            (
                0
                if c in [".", "b"]
                else 255 if c == "o" else ord(c) - ord("A") + 1 if len(c) == 1 else (ord(c[0]) - ord("p")) * 24 + (ord(c[1]) - ord("A") + 25)
            )
            for c in row
            if c != ""
        ]
        for row in code_arr
    ]  # [[255 255] [255]]
    # lines = st.rstrip('!').split('$')
    # rle = [re.findall('(\d*)([p-y]?[.boA-X])', row) for row in lines]
    # code = [ sum([[c] * (1 if n=='' else int(n)) for n,c in row], []) for row in rle]
    # V = [ [0 if c in ['.','b'] else 255 if c=='o' else ord(c)-ord('A')+1 if len(c)==1 else (ord(c[0])-ord('p'))*24+(ord(c[1])-ord('A')+25) for c in row ] for row in code]
    maxlen = len(max(V, key=len))
    A = np.array([row + [0] * (maxlen - len(row)) for row in V]) / 255  # [[1 1] [1 0]]
    # print(sum(sum(r) for r in V))
    return A


def upscale_array_manually(arr, factor):
    w, h = arr.shape
    new = np.ndarray((w * factor, h * factor), dtype=arr.dtype)
    for x in range(w):
        for y in range(h):
            for i in range(factor):
                for j in range(factor):
                    new[x * factor + i, y * factor + j] = arr[x, y]
    return new


# def print_specific_animal(animal: str) -> None:
#     with open("animals.csv", "r") as f:
#         for line in f.readlines():
#             if f",{animal}," not in line:
#                 continue
#             tokens: list[str] = line.split(",")
#             animal_name: str = tokens[4]
#             rle: str = tokens[-1]
#             arr: np.ndarray = rle2arr(rle)
#             shape: tuple[int, int] = str(arr.shape)[1:-1]
#             array_str = "\n".join(" ".join(f"{float(x):.3f}" for x in row) for row in arr)
#             with open("animal.txt", "w") as f:
#                 f.write(f"{animal_name}\n{shape}\n{array_str}")


def CalculateCenterOfMass(cells: np.ndarray) -> tuple[int, int]:
    result = np.array((0, 0), dtype=np.float64)
    for coord, value in np.ndenumerate(cells):
        result += np.array(coord) * value
    return result / cells.sum()


def TestCOM():
    orbium_cells = rle2arr(OTHER)
    orbium_cells = upscale_array_manually(orbium_cells, 2)
    CoM = CalculateCenterOfMass(orbium_cells)
    x, y = np.ceil(CoM).astype(np.int32)
    orbium_cells[x - 5 : x + 5, y - 5 : y + 5] = 0
    DisplayCells(orbium_cells)


def PrintAllT():
    with open("animals.csv") as f:
        for line in f.readlines():
            print(line.split(",")[6])


def MakeCircleIn2DArray(radius: int) -> np.ndarray:
    size = 2 ** (radius + 1)
    arr = np.zeros((size, size), dtype=np.complex128)
    for x in range(size):
        for y in range(size):
            if (x - radius) ** 2 + (y - radius) ** 2 <= radius**2:
                arr[x, y] = 1
    return arr


def FourierTransform2D(arr: np.ndarray) -> np.ndarray:
    result = np.zeros_like(arr, dtype=np.complex128)
    for x, y in np.ndindex(arr.shape):
        result[x, y] = arr[x, y] * np.exp(-2j * np.pi * (x + y) / arr.size)
    return result


def FastFourierTransform(arr: np.ndarray) -> np.ndarray:
    result = np.zeros_like(arr, dtype=np.complex128)
    N = arr.size
    if N <= 1:
        return arr
    E = FastFourierTransform(arr[::2])
    O = FastFourierTransform(arr[1::2])
    for k in range(N // 2):
        t: complex = np.exp(-2j * np.pi * k / N) * O[k]
        result[k] = E[k] + t
        result[k + N // 2] = E[k] - t
    return result


def IterativeFastFourierTransform(arr: np.ndarray) -> np.ndarray:
    N = arr.size
    rev = np.zeros_like(arr, dtype=np.complex128)

    num_bits = int(np.log2(N))
    for i in range(N):
        reversed_index = int(f"{i:0{num_bits}b}"[::-1], 2)  # Reverse the bits
        rev[reversed_index] = arr[i]

    n = 2
    while n <= N:
        for i in range(0, N, n):
            for k in range(n // 2):
                twiddle = np.exp(-2j * np.pi * k / n) * rev[i + k + n // 2]
                temp = rev[i + k]
                rev[i + k] = temp + twiddle
                rev[i + k + n // 2] = temp - twiddle
        n *= 2

    return rev


def IterativeInverseFastFourierTransform(arr: np.ndarray) -> np.ndarray:
    N = arr.size
    rev = np.zeros_like(arr, dtype=np.complex128)

    num_bits = int(np.log2(N))
    for i in range(N):
        reversed_index = int(f"{i:0{num_bits}b}"[::-1], 2)
        rev[reversed_index] = arr[i]

    n = 2
    while n <= N:
        for i in range(0, N, n):
            for k in range(n // 2):
                twiddle = np.exp(2j * np.pi * k / n) * rev[i + k + n // 2]
                temp = rev[i + k]
                rev[i + k] = temp + twiddle
                rev[i + k + n // 2] = temp - twiddle
        n *= 2

    return rev / N


def IterativeFastFourierTransform2D(arr: np.ndarray) -> np.ndarray:
    result = np.zeros_like(arr, dtype=np.complex128)
    rows, cols = arr.shape

    for x in range(rows):
        result[x] = IterativeFastFourierTransform(arr[x])

    for y in range(cols):
        result[:, y] = IterativeFastFourierTransform(result[:, y])

    return result


def IterativeInverseFastFourierTransform2D(arr: np.ndarray) -> np.ndarray:
    result = np.zeros_like(arr, dtype=np.complex128)
    N = arr.shape[0]
    M = arr.shape[1]

    for x in range(N):
        result[x] = IterativeInverseFastFourierTransform(arr[x])

    for y in range(M):
        result[:, y] = IterativeInverseFastFourierTransform(result[:, y])

    return result


# def CreateBoundingRanges(arr: np.ndarray, padding: int = 1) -> list[list[tuple[int, int]]]:
#     result: list[list[tuple[int, int]]] = []
#     current_range = None
#     back_wrap = None
#     l = len(arr)
#     for i, cell in enumerate(arr):
#         if cell > 0:
#             if current_range is None:
#                 current_range = [-1, -1]
#                 start = i - (padding + 1)
#                 stop = i + (padding + 1)
#                 if start < 0:
#                     result.append([start % l, l - 1])
#                     current_range[0] = 0
#                 else:
#                     current_range[0] = start
#                 if stop > l - 1:
#                     back_wrap = [0, stop % l]
#                     current_range[1] = l - 1
#                 else:
#                     current_range[1] = stop
#             else:
#                 stop = i + padding + 1
#                 if stop > l - 1:
#                     back_wrap = [0, stop % l]
#                 else:
#                     current_range[1] = stop
#         else:
#             if current_range is not None and i - current_range[1] == padding:
#                 result.append(current_range)
#                 current_range = None
#     if current_range is not None:
#         result.append(current_range)
#     if back_wrap is not None:
#         result.append(back_wrap)
#     return result


class BoundingBox:

    def __init__(self, x0: int, y0: int, x1: int, y1: int):
        self.x0 = x0
        self.y0 = y0
        self.x1 = x1
        self.y1 = y1

    def expand_bottom(self, x1: int, y1: int) -> None:
        self.x1 = x1
        self.y1 = y1

    def contains(self, x: int, y: int, l: int = 1) -> bool:
        left = x <= self.x1 if self.x0 > 0 else x <= self.x1 or x >= (self.x0 % l)
        right = x >= self.x0 if self.x1 < l else x <= (self.x1 % l) or x >= self.x0
        down = y <= self.y1 if self.y0 > 0 else y <= self.y1 or y >= (self.y0 % l)
        up = y >= self.y0 if self.y1 < l else y <= (self.y1 % l) or y >= self.y0
        return left and right and down and up

    def on_border(self, x: int, y: int, l: int = 1) -> bool:
        return x == (self.x0 % l) or x == (self.x1 % l) or y == (self.y0 % l) or y == (self.y1 % l)

    def expand(self, x: int, y: int, padding: int = 1) -> None:
        self.x0 = min(x - padding, self.x0)
        self.x1 = max(x + padding, self.x1)
        self.y0 = min(y - padding, self.y0)
        self.y1 = max(y + padding, self.y1)

    def is_empty(self) -> bool:
        return self == BoundingBox.empty()

    def __eq__(self, other):
        return self.x0 == other.x0 and self.y0 == other.y0 and self.x1 == other.x1 and self.y1 == other.y1

    def __repr__(self):
        return f"{self.x0},{self.y0},{self.x1},{self.y1}"

    @staticmethod
    def empty():
        return BoundingBox(-1, -1, -1, -1)


# def CreateBoundingBoxes(arr: np.ndarray, padding: int = 1) -> list[BoundingBox]:
#     result = []

#     active_boxes: list[BoundingBox] = []

#     current_box = BoundingBox.empty()
#     left_wrap   = BoundingBox.empty()
#     up_wrap     = BoundingBox.empty()
#     right_wrap  = BoundingBox.empty()
#     down_wrap   = BoundingBox.empty()

#     l = arr.shape[0]
#     for (x, y), val in np.ndenumerate(arr):
#         if val > 0:
#             if current_box.is_empty():
#                 start_x = x - padding + 1
#                 start_y = y - padding + 1
#                 stop_x = x + padding + 1
#                 stop_y = y + padding + 1
#                 current_box = BoundingBox(start_x, stop_x, start_y, stop_y)
#                 active_boxes.append(current_box)
#                 # if start_x < 0:
#                 #     left_wrap = BoundingBox(start_x % l, 0, l - 1, min(stop_y, l - 1))
#                 #     current_box.x0 = 0
#                 # else:
#                 #     current_box.x0 = start_x
#                 # if start_y < 0:
#                 #     up_wrap = BoundingBox(0, start_y % l, min(stop_x, l - 1), l - 1)
#                 #     current_box.y0 = 0
#                 # else:
#                 #     current_box.y0 = start_y
#                 # if stop_x > l - 1:
#                 #     right_wrap = BoundingBox(0, stop_x % l, start_y, stop_y)
#                 #     current_box.x1 = l - 1
#                 # else:
#                 #     current_box.x1 = stop_x
#                 # if stop_y > l - 1:
#                 #     down_wrap = BoundingBox(stop_x, stop_y, 0, stop_y % l)
#                 #     current_box.y1 = l - 1
#                 # else:
#                 #     current_box.y1 = stop_y
#             else:
#                 current_box.expand(x, y)
# start_x = x - padding + 1
# start_y = y - padding + 1
# stop_x = x + padding + 1
# stop_y = y + padding + 1
# if start_x < 0:
#     left_wrap.expand(start_x % l, stop_x)
# else:
#     current_box.x0 = start_x
# if start_y < 0:
#     up_wrap.x0 =
# if stop_x > l - 1:
#     right_wrap.x1 = stop_x % l
# else:
#     current_box.x1 = max(current_box.x1, stop_x)
# if stop_x > l - 1:
#     down_wrap.y1 = stop_y % l
# else:
#     current_box.y1 = max(current_box.y1, stop_y)
#     else:
#         if not current_box.is_empty() and x - current_box.x1 == padding:
#             active_boxes.append(current_box)
#             current_box = BoundingBox.empty()
# for box in (current_box, left_wrap, up_wrap, right_wrap, down_wrap):
#     if not box.is_empty():
#         result.append(box)
# return result


# def CreateBoundingBox(arr: np.ndarray, start_x: int, start_y: int, padding: int = 1) -> BoundingBox:

# we have a line like this:
# 0 0 0 0 0 1 1 0 0 0 0
# padding=1
# so bb: 0 0 0 X X X X X X 0 0
# start_x = 3
# stop_x = 8
# next line, we start at 3, go left until we reach padding
# start at 8 go right until reach padding
# next line
#     padded_x = start_x - padding
#     stop_x = 0
#     for x in range(len(arr)):
#         x += start_x
#         if arr[start_y, x] > 0:
#             stop_x = x + padding
#         else:
#             if x - stop_x == padding:
#                 break

#     stop_y = start_y + padding
#     down_buffer = stop_y
#     already_incremented = False
#     midpoint = (start_x + stop_x) // 2
#     while down_buffer > 0:
#         for i in range(midpoint, 0, -1):
#             if arr[stop_y, i] > 0:
#                 start_x = min(i - padding, start_x)
#                 down_buffer += 1
#                 stop_y += 1
#                 already_incremented = True
#             else:
#                 if i - start_x == padding:
#                     break

#         for i in range(midpoint, len(arr)):
#             if arr[stop_y, i] > 0:
#                 stop_x = max(i + padding, stop_x)
#                 if not already_incremented:
#                     down_buffer += 1
#                     stop_y += 1
#             else:
#                 if i - stop_x == padding:
#                     break

#         down_buffer -= 1

#     return BoundingBox(padded_x, start_y - padding, stop_x, stop_y)


# def CreateBoundingBoxes2(arr: np.ndarray, padding: int = 1) -> list[BoundingBox]:
#     boxes: list[BoundingBox] = []

#     for (y, x), val in np.ndenumerate(arr):
#         if val > 0:
#             box = CreateBoundingBox(arr, x, y, padding)
#             boxes.append(box)
#             return boxes

#     return boxes


def DisplayCells(
    cells: np.ndarray,
    animate: bool = False,
    check_points: list[tuple[int, int]] = None,
    current_point: tuple[int, int] = None,
    text: str = None,
    count: int = None,
    boxes: list[BoundingBox] = None,
) -> None:
    fig, ax = plt.subplots(layout="constrained")

    ax.imshow(cells, cmap="Greys")
    if check_points:
        check_x, check_y = zip(*check_points)
        ax.scatter(check_y, check_x, c="blue", marker="s", label="Check Points")

    if current_point:
        ax.scatter(current_point[1], current_point[0], c="red", marker="s", label="Current Point")

    if boxes:
        for box in boxes:
            for (y, x), _ in np.ndenumerate(cells):
                if box.contains(x, y, cells.shape[0]) and box.on_border(x, y, cells.shape[0]):
                    ax.scatter(y, x, c="yellow", marker="s")
            plt.plot([], [], " ", label=str(box))
    ax.legend(loc="upper right")
    fig.text(0.2, 0.1, text or "")
    if animate:
        fig.savefig(fname=f"resources/figs/{count:06d}.jpeg", dpi=100)
    else:
        plt.show()
    plt.close(fig)


def FillBox(arr, x: int, y: int, padding: int = 1) -> BoundingBox:
    p_range = range(-padding - 1, padding + 2)
    stack = set()
    checked = set()
    for i in p_range:
        stack.add((x + i, y))
        stack.add((x, y + i))
        stack.add((x + i, y - i))
        stack.add((x + i, y + i))

    box = BoundingBox(x - padding, y - padding, x + padding, y + padding)
    l = len(arr)
    count = 0
    text = "Start"
    while len(stack) > 0:
        p = stack.pop()
        DisplayCells(arr, stack, p, text, count, box)
        if p[0] < 0 or p[0] > l or p[1] < 0 or p[1] > l:
            text = f"Skipped point {p}, out of bounds"
            checked.add(p)
            continue
        if arr[p[1], p[0]] and p not in checked:
            text = f"Expanded box from {box} to \n"
            box.expand(*p, padding)
            for i in p_range:
                stack.add((p[0] + i, p[1]))
                stack.add((p[0], p[1] + i))
                stack.add((p[0] + i, p[1] - i))
                stack.add((p[0] + i, p[1] + i))
            text += str(box)
        else:
            text = f"{p} not an active cell"
        count += 1
        checked.add(p)
    DisplayCells(arr, [(0, 0)], (0, 0), "", count, box)
    os.system(f"ffmpeg -framerate 24 -i resources/figs/%06d.jpeg -c:v libx265 -pix_fmt yuv420p resources/out.mp4 -y")
    return box


def SimpleBox(arr, x, y, padding) -> BoundingBox:
    if arr[y, x] > 0:
        return BoundingBox(x - padding, y - padding, x + padding, y + padding)


def CreateBoundingBoxes4(arr: np.ndarray, padding: int = 1) -> list[BoundingBox]:
    boxes: list[BoundingBox] = []
    for (y, x), val in np.ndenumerate(arr):
        if val and not any(box.contains(x, y, len(arr)) for box in boxes):
            box = SimpleBox(arr, x, y, padding)
            boxes.append(box)
            # DisplayCells(arr, [(0, 0)], None, "", y * arr.shape[0] + x, box)
    return boxes


def CreateBoundingBoxes3(arr: np.ndarray, padding: int = 1) -> list[BoundingBox]:
    boxes: list[BoundingBox] = []
    for (y, x), val in np.ndenumerate(arr):
        if val and not any(box.contains(x, y, len(arr)) for box in boxes):
            boxes.append(FillBox(arr, x, y, padding))
    return boxes


def main() -> None:
    pass
    # test = [0, 1, 1, 0, 0, 1, 1, 1, 0]
    # result = CreateBoundingRanges(test, 1)
    # shutil.rmtree("resources/figs", ignore_errors=True)
    # os.mkdir("resources/figs/")
    # test = np.zeros((512, 512))
    # from time import perf_counter
    # x, y = 0, 20
    # orb = upscale_array_manually(rle2arr(ORBIUM), 7)

    # start = perf_counter()

    # for off in range(0, 120):
    #     test[off : orb.shape[0] + off, off : orb.shape[1] + off] = orb
    #     result = CreateBoundingBoxes4(test, 150)
    #     DisplayCells(test, animate=True, boxes=result, count=off)

    # print(test)
    # print(result)


if __name__ == "__main__":
    main()
